uint64_t destroy for MLClassifier(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      a1[1];
      v4 = a1[2];
      if (v4)
      {
        v4;
        a1[4];
      }

      v5 = type metadata accessor for AnyTreeClassifierModel(0);
      v6 = a1 + *(v5 + 24);
      v7 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v7 - 8) + 8))(v6, v7);
      *(a1 + *(v5 + 28));
      v8 = type metadata accessor for MLBoostedTreeClassifier(0);
      goto LABEL_11;
    case 1:
      a1[1];
      v25 = a1[2];
      if (v25)
      {
        v25;
        a1[4];
      }

      v26 = type metadata accessor for AnyTreeClassifierModel(0);
      v27 = a1 + *(v26 + 24);
      v28 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v28 - 8) + 8))(v27, v28);
      *(a1 + *(v26 + 28));
      v13 = type metadata accessor for MLDecisionTreeClassifier(0);
      goto LABEL_19;
    case 2:
      a1[1];
      v14 = a1[2];
      if (v14)
      {
        v14;
        a1[4];
      }

      v15 = type metadata accessor for AnyTreeClassifierModel(0);
      v16 = a1 + *(v15 + 24);
      v17 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v17 - 8) + 8))(v16, v17);
      *(a1 + *(v15 + 28));
      v8 = type metadata accessor for MLRandomForestClassifier(0);
LABEL_11:
      v18 = v8;

      *(a1 + v18[6] + 8);
      *(a1 + v18[7]);
      v19 = v18[8];
      if (!*(a1 + v19 + 24))
      {
        goto LABEL_22;
      }

      v20 = a1 + v19;
      goto LABEL_21;
    case 3:
      a1[1];
      v21 = a1[2];
      if (v21)
      {
        v21;
        a1[4];
      }

      v22 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      v23 = a1 + *(v22 + 24);
      v24 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
      (*(*(v24 - 8) + 8))(v23, v24);
      *(a1 + *(v22 + 28));
      v13 = type metadata accessor for MLLogisticRegressionClassifier(0);
      goto LABEL_19;
    case 4:
      a1[1];
      a1[2];
      a1[4];
      v9 = a1 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
      if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
      {
        v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
      }

      v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
      (*(*(v12 - 8) + 8))(v9, v12);
      v13 = type metadata accessor for MLSupportVectorClassifier(0);
LABEL_19:
      v18 = v13;

      *(a1 + v18[6] + 8);
      *(a1 + v18[7]);
      v29 = v18[8];
      if (!*(a1 + v29 + 32))
      {
        goto LABEL_22;
      }

      v20 = a1 + v29 + 8;
LABEL_21:
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_22:
      v30 = (a1 + v18[9]);
      v31 = type metadata accessor for MLClassifierMetrics.Contents(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v30, v31);
      switch(EnumCaseMultiPayload)
      {
        case 2:
          *v30;
          break;
        case 1:
          v50 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v35 = v30 + *(v50 + 20);
          v49 = v31;
          v36 = type metadata accessor for DataFrame(0);
          v37 = v35;
          v38 = *(*(v36 - 8) + 8);
          v38(v37, v36);
          v39 = v36;
          v31 = v49;
          v38(v30 + *(v50 + 24), v39);
          break;
        case 0:
          v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          if (swift_getEnumCaseMultiPayload(v30, v33) == 1)
          {
            v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          else
          {
            v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          }

          v40 = __swift_instantiateConcreteTypeFromMangledName(v34);
          (*(*(v40 - 8) + 8))(v30, v40);
          break;
      }

      v41 = (a1 + v18[10]);
      result = swift_getEnumCaseMultiPayload(v41, v31);
      switch(result)
      {
        case 2:
          return *v41;
        case 1:
          v44 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v45 = v41 + *(v44 + 20);
          v46 = type metadata accessor for DataFrame(0);
          v47 = *(*(v46 - 8) + 8);
          v47(v45, v46);
          return (v47)(v41 + *(v44 + 24), v46);
        case 0:
          v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          if (swift_getEnumCaseMultiPayload(v41, v42) == 1)
          {
            v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          else
          {
            v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          }

          v48 = __swift_instantiateConcreteTypeFromMangledName(v43);
          return (*(*(v48 - 8) + 8))(v41, v48);
      }

      return result;
    default:
      return result;
  }
}

void *initializeWithCopy for MLClassifier(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = a1 + 2;
  v6 = a2 + 2;
  v131 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      v7 = *v6;

      if (v7)
      {
        a1[2] = v7;
        v8 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v8 = a2;
      }

      v57 = type metadata accessor for AnyTreeClassifierModel(0);
      v58 = *(v57 + 24);
      v59 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v59 - 8) + 16))(a1 + v58, &v8[v58], v59);
      v60 = *(v57 + 28);
      v61 = v8[v60 + 8];
      *(a1 + v60) = *&v8[v60];
      *(a1 + v60 + 8) = v61;
      v62 = type metadata accessor for MLBoostedTreeClassifier(0);
      v63 = v62[5];
      v138 = *&v8[v63];
      *(a1 + v63) = v138;
      v64 = v62[6];
      *(a1 + v64) = *&v8[v64];
      *(a1 + v64 + 8) = *&v8[v64 + 8];
      *(a1 + v62[7]) = *&v8[v62[7]];
      v148 = v62;
      v65 = v62[8];
      v66 = a1 + v65;
      v67 = &v8[v65];
      v68 = *&v8[v65 + 24];

      v138;

      if (v68)
      {
        *(v66 + 3) = v68;
        (**(v68 - 8))(v66, v67, v68);
      }

      else
      {
        v81 = *v67;
        *(v66 + 1) = *(v67 + 1);
        *v66 = v81;
      }

      *(v66 + 2) = *(v67 + 2);
      *(v66 + 3) = *(v67 + 3);
      *(v66 + 4) = *(v67 + 4);
      *(v66 + 10) = *(v67 + 10);
      v66[88] = v67[88];
      *(v66 + 6) = *(v67 + 6);
      goto LABEL_34;
    case 1u:
      v27 = *v6;

      if (v27)
      {
        a1[2] = v27;
        v28 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v28 = a2;
      }

      v69 = type metadata accessor for AnyTreeClassifierModel(0);
      v70 = *(v69 + 24);
      v71 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v71 - 8) + 16))(a1 + v70, &v28[v70], v71);
      v72 = *(v69 + 28);
      v73 = v28[v72 + 8];
      *(a1 + v72) = *&v28[v72];
      *(a1 + v72 + 8) = v73;
      v74 = type metadata accessor for MLDecisionTreeClassifier(0);
      v75 = v74[5];
      v76 = *&v28[v75];
      *(a1 + v75) = v76;
      v77 = v74[6];
      *(a1 + v77) = *&v28[v77];
      *(a1 + v77 + 8) = *&v28[v77 + 8];
      *(a1 + v74[7]) = *&v28[v74[7]];
      v149 = v74;
      v78 = v74[8];
      v139 = a1 + v78;
      v145 = &v28[v78];
      v79 = &v28[v78 + 8];
      v134 = (a1 + v78 + 8);
      *(a1 + v78) = *(v79 - 8);
      v80 = *(v79 + 24);

      v76;

      if (v80)
      {
        *(v139 + 4) = v80;
        (**(v80 - 8))(v134, v79, v80);
      }

      else
      {
        v101 = *v79;
        v134[1] = *(v79 + 16);
        *v134 = v101;
      }

      *(v139 + 40) = *(v145 + 40);
      *(v139 + 7) = *(v145 + 7);
      goto LABEL_45;
    case 2u:
      v23 = *v6;

      if (v23)
      {
        a1[2] = v23;
        v24 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v24 = a2;
      }

      v30 = type metadata accessor for AnyTreeClassifierModel(0);
      v31 = *(v30 + 24);
      v32 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v32 - 8) + 16))(a1 + v31, &v24[v31], v32);
      v33 = *(v30 + 28);
      v34 = v24[v33 + 8];
      *(a1 + v33) = *&v24[v33];
      *(a1 + v33 + 8) = v34;
      v35 = type metadata accessor for MLRandomForestClassifier(0);
      v36 = v35[5];
      v37 = *&v24[v36];
      *(a1 + v36) = v37;
      v38 = v35[6];
      *(a1 + v38) = *&v24[v38];
      *(a1 + v38 + 8) = *&v24[v38 + 8];
      *(a1 + v35[7]) = *&v24[v35[7]];
      v148 = v35;
      v39 = v35[8];
      v40 = a1 + v39;
      v41 = &v24[v39];
      v42 = *&v24[v39 + 24];

      v37;

      if (v42)
      {
        *(v40 + 3) = v42;
        (**(v42 - 8))(v40, v41, v42);
      }

      else
      {
        v43 = *v41;
        *(v40 + 1) = *(v41 + 1);
        *v40 = v43;
      }

      *(v40 + 2) = *(v41 + 2);
      *(v40 + 3) = *(v41 + 3);
      *(v40 + 4) = *(v41 + 4);
      *(v40 + 10) = *(v41 + 10);
      goto LABEL_34;
    case 3u:
      v25 = *v6;

      if (v25)
      {
        a1[2] = v25;
        v26 = a2;
        a1[3] = a2[3];
        a1[4] = a2[4];
      }

      else
      {
        a1[4] = a2[4];
        *v5 = *v6;
        v26 = a2;
      }

      v44 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      v45 = *(v44 + 24);
      v46 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
      (*(*(v46 - 8) + 16))(a1 + v45, &v26[v45], v46);
      v47 = *(v44 + 28);
      v48 = v26[v47 + 8];
      *(a1 + v47) = *&v26[v47];
      *(a1 + v47 + 8) = v48;
      v49 = type metadata accessor for MLLogisticRegressionClassifier(0);
      v50 = v49[5];
      v137 = *&v26[v50];
      *(a1 + v50) = v137;
      v51 = v49[6];
      *(a1 + v51) = *&v26[v51];
      *(a1 + v51 + 8) = *&v26[v51 + 8];
      *(a1 + v49[7]) = *&v26[v49[7]];
      v149 = v49;
      v52 = v49[8];
      v53 = a1 + v52;
      v144 = &v26[v52];
      v54 = &v26[v52 + 8];
      v133 = (a1 + v52 + 8);
      *(a1 + v52) = *(v54 - 8);
      v55 = *(v54 + 24);

      v137;

      if (v55)
      {
        *(v53 + 4) = v55;
        (**(v55 - 8))(v133, v54, v55);
      }

      else
      {
        v56 = *v54;
        v133[1] = *(v54 + 16);
        *v133 = v56;
      }

      *(v53 + 40) = *(v144 + 40);
      *(v53 + 56) = *(v144 + 56);
      v53[72] = v144[72];
LABEL_45:
      v102 = v149[9];
      v83 = a1;
      v103 = (a1 + v102);
      v104 = (a2 + v102);
      v146 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v105 = swift_getEnumCaseMultiPayload(v104, v146);
      if (v105 == 2)
      {
        v111 = *v104;
        swift_errorRetain(*v104);
        *v103 = v111;
      }

      else if (v105 == 1)
      {
        *v103 = *v104;
        v141 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v156 = v103;
        v106 = v141[5];
        v136 = v156 + v106;
        v107 = type metadata accessor for DataFrame(0);
        v108 = *(*(v107 - 8) + 16);
        v109 = v104 + v106;
        v103 = v156;
        v108(v136, v109, v107);
        v110 = v107;
        v83 = a1;
        v108(v156 + v141[6], v104 + v141[6], v110);
      }

      else
      {
        v157 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v112 = swift_getEnumCaseMultiPayload(v104, v157);
        v113 = v112 == 1;
        v114 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v112 == 1)
        {
          v114 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v115 = __swift_instantiateConcreteTypeFromMangledName(v114);
        (*(*(v115 - 8) + 16))(v103, v104, v115);
        swift_storeEnumTagMultiPayload(v103, v157, v113);
      }

      v99 = v146;
      swift_storeEnumTagMultiPayload(v103, v146, v105);
      v100 = v149[10];
      goto LABEL_53;
    case 4u:
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];
      v9 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
      v142 = a1 + v9;
      v10 = a2 + v9;

      v147 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      v11 = swift_getEnumCaseMultiPayload(v10, v147);
      v12 = v11 == 1;
      v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
      if (v11 == 1)
      {
        v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v14 - 8) + 16))(v142, v10, v14);
      swift_storeEnumTagMultiPayload(v142, v147, v12);
      v15 = type metadata accessor for MLSupportVectorClassifier(0);
      v16 = v15[5];
      v17 = *(a2 + v16);
      *(a1 + v16) = v17;
      v18 = v15[6];
      *(a1 + v18) = *(a2 + v18);
      *(a1 + v18 + 8) = *(a2 + v18 + 8);
      *(a1 + v15[7]) = *(a2 + v15[7]);
      v148 = v15;
      v19 = v15[8];
      v153 = a1 + v19;
      v143 = a2 + v19;
      v20 = (a2 + v19 + 8);
      v21 = (a1 + v19 + 8);
      *(v21 - 1) = *(a2 + v19);
      v22 = *(a2 + v19 + 32);
      v17;

      if (v22)
      {
        *(v153 + 4) = v22;
        (**(v22 - 8))(v21, v20, v22);
      }

      else
      {
        v29 = *v20;
        v21[1] = v20[1];
        *v21 = v29;
      }

      *(v153 + 40) = *(v143 + 40);
      v153[56] = v143[56];
LABEL_34:
      v82 = v148[9];
      v83 = a1;
      v84 = (a1 + v82);
      v85 = (a2 + v82);
      v146 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v86 = swift_getEnumCaseMultiPayload(v85, v146);
      if (v86 == 2)
      {
        v97 = v84;
        v98 = *v85;
        swift_errorRetain(*v85);
        *v97 = v98;
        v84 = v97;
      }

      else
      {
        if (v86 == 1)
        {
          *v84 = *v85;
          v140 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v87 = v140[5];
          v135 = v84 + v87;
          v88 = type metadata accessor for DataFrame(0);
          v154 = v84;
          v89 = *(*(v88 - 8) + 16);
          v90 = v85 + v87;
          v91 = v148;
          v89(v135, v90, v88);
          v92 = v88;
          v83 = a1;
          v89(v154 + v140[6], v85 + v140[6], v92);
          v84 = v154;
          goto LABEL_42;
        }

        v155 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v93 = swift_getEnumCaseMultiPayload(v85, v155);
        v94 = v93 == 1;
        v95 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v93 == 1)
        {
          v95 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v96 = __swift_instantiateConcreteTypeFromMangledName(v95);
        (*(*(v96 - 8) + 16))(v84, v85, v96);
        swift_storeEnumTagMultiPayload(v84, v155, v94);
      }

      v91 = v148;
LABEL_42:
      v99 = v146;
      swift_storeEnumTagMultiPayload(v84, v146, v86);
      v100 = v91[10];
LABEL_53:
      v116 = (v83 + v100);
      v117 = (a2 + v100);
      v118 = swift_getEnumCaseMultiPayload(a2 + v100, v99);
      if (v118 == 2)
      {
        v128 = *v117;
        swift_errorRetain(v128);
        *v116 = v128;
      }

      else if (v118 == 1)
      {
        *v116 = *v117;
        v151 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v119 = *(v151 + 20);
        v158 = v116 + v119;
        v120 = type metadata accessor for DataFrame(0);
        v121 = *(*(v120 - 8) + 16);
        v122 = v117 + v119;
        v83 = a1;
        v121(v158, v122, v120);
        v121(v116 + *(v151 + 24), v117 + *(v151 + 24), v120);
        v118 = 1;
      }

      else
      {
        v123 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v124 = swift_getEnumCaseMultiPayload(v117, v123);
        v152 = v117;
        v125 = v124 == 1;
        v126 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v124 == 1)
        {
          v126 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v127 = __swift_instantiateConcreteTypeFromMangledName(v126);
        (*(*(v127 - 8) + 16))(v116, v152, v127);
        swift_storeEnumTagMultiPayload(v116, v123, v125);
      }

      swift_storeEnumTagMultiPayload(v116, v146, v118);
      swift_storeEnumTagMultiPayload(v83, a3, v131);
      return v83;
  }
}

void *assignWithCopy for MLClassifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifier);
    v135 = a3;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    a1[1] = a2[1];
    v6 = a1 + 2;
    v7 = a2 + 2;
    v136 = EnumCaseMultiPayload;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v8 = *v7;

        if (v8)
        {
          v9 = a1;
          a1[2] = v8;
          v10 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v9 = a1;
          v10 = a2;
        }

        v74 = type metadata accessor for AnyTreeClassifierModel(0);
        v75 = *(v74 + 24);
        v76 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v76 - 8) + 16))(&v9[v75], &v10[v75], v76);
        v77 = *(v74 + 28);
        v78 = v10[v77 + 8];
        *&v9[v77] = *&v10[v77];
        v9[v77 + 8] = v78;
        v79 = type metadata accessor for MLBoostedTreeClassifier(0);
        v80 = v79[5];
        v145 = *&v10[v80];
        *&v9[v80] = v145;
        v81 = v79[6];
        *&v9[v81] = *&v10[v81];
        *&v9[v81 + 8] = *&v10[v81 + 8];
        *&v9[v79[7]] = *&v10[v79[7]];
        v156 = v79;
        v82 = v79[8];
        v83 = &v9[v82];
        v84 = &v10[v82];
        v85 = *&v10[v82 + 24];

        v145;

        v37 = v10;
        if (v85)
        {
          *(v83 + 3) = v85;
          (**(v85 - 8))(v83, v84, v85);
        }

        else
        {
          v99 = *v84;
          *(v83 + 1) = *(v84 + 1);
          *v83 = v99;
        }

        *(v83 + 4) = *(v84 + 4);
        *(v83 + 5) = *(v84 + 5);
        *(v83 + 6) = *(v84 + 6);
        *(v83 + 7) = *(v84 + 7);
        *(v83 + 8) = *(v84 + 8);
        *(v83 + 9) = *(v84 + 9);
        *(v83 + 10) = *(v84 + 10);
        v83[88] = v84[88];
        *(v83 + 12) = *(v84 + 12);
        *(v83 + 13) = *(v84 + 13);
        v100 = v156[9];
        v36 = a1 + v100;
        v51 = (v37 + v100);
        v152 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v52 = swift_getEnumCaseMultiPayload(v51, v152);
        if (v52 == 2)
        {
          goto LABEL_40;
        }

        if (v52 != 1)
        {
          goto LABEL_46;
        }

        *v36 = *v51;
        v146 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v101 = v146[5];
        v140 = &v36[v101];
        v160 = v36;
        v102 = type metadata accessor for DataFrame(0);
        v103 = *(*(v102 - 8) + 16);
        v104 = v51 + v101;
        v57 = a1;
        v103(v140, v104, v102);
        v105 = v102;
        v36 = v160;
        v103(&v160[v146[6]], v51 + v146[6], v105);
        v37 = a2;
        goto LABEL_50;
      case 1u:
        v31 = *v7;

        if (v31)
        {
          v32 = a1;
          a1[2] = v31;
          v33 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v32 = a1;
          v33 = a2;
        }

        v86 = type metadata accessor for AnyTreeClassifierModel(0);
        v87 = *(v86 + 24);
        v88 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v88 - 8) + 16))(&v32[v87], &v33[v87], v88);
        v89 = *(v86 + 28);
        v90 = v33[v89 + 8];
        *&v32[v89] = *&v33[v89];
        v32[v89 + 8] = v90;
        v91 = type metadata accessor for MLDecisionTreeClassifier(0);
        v92 = v91[5];
        v139 = *&v33[v92];
        *&v32[v92] = v139;
        v93 = v91[6];
        *&v32[v93] = *&v33[v93];
        *&v32[v93 + 8] = *&v33[v93 + 8];
        *&v32[v91[7]] = *&v33[v91[7]];
        v156 = v91;
        v94 = v91[8];
        v95 = &v32[v94];
        v153 = &v33[v94];
        v96 = &v33[v94 + 8];
        v97 = &v32[v94 + 8];
        *(v97 - 1) = *&v33[v94];
        v98 = *&v33[v94 + 32];

        v139;

        if (v98)
        {
          *(v95 + 4) = v98;
          (**(v98 - 8))(v97, v96, v98);
        }

        else
        {
          v108 = *v96;
          *(v97 + 1) = *(v96 + 1);
          *v97 = v108;
        }

        *(v95 + 5) = *(v153 + 5);
        *(v95 + 6) = *(v153 + 6);
        *(v95 + 7) = *(v153 + 7);
        goto LABEL_43;
      case 2u:
        v25 = *v7;

        if (v25)
        {
          v26 = a1;
          a1[2] = v25;
          v27 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v26 = a1;
          v27 = a2;
        }

        v38 = type metadata accessor for AnyTreeClassifierModel(0);
        v39 = *(v38 + 24);
        v40 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v40 - 8) + 16))(&v26[v39], &v27[v39], v40);
        v41 = *(v38 + 28);
        v42 = v27[v41 + 8];
        *&v26[v41] = *&v27[v41];
        v26[v41 + 8] = v42;
        v43 = type metadata accessor for MLRandomForestClassifier(0);
        v44 = v43[5];
        v142 = *&v27[v44];
        *&v26[v44] = v142;
        v45 = v43[6];
        *&v26[v45] = *&v27[v45];
        *&v26[v45 + 8] = *&v27[v45 + 8];
        *&v26[v43[7]] = *&v27[v43[7]];
        v156 = v43;
        v46 = v43[8];
        v47 = &v26[v46];
        v48 = &v27[v46];
        v49 = *&v27[v46 + 24];

        v142;

        v37 = v27;
        if (v49)
        {
          *(v47 + 3) = v49;
          (**(v49 - 8))(v47, v48, v49);
        }

        else
        {
          v50 = *v48;
          *(v47 + 1) = *(v48 + 1);
          *v47 = v50;
        }

        *(v47 + 4) = *(v48 + 4);
        *(v47 + 5) = *(v48 + 5);
        *(v47 + 6) = *(v48 + 6);
        *(v47 + 7) = *(v48 + 7);
        *(v47 + 8) = *(v48 + 8);
        *(v47 + 9) = *(v48 + 9);
        *(v47 + 10) = *(v48 + 10);
        v35 = v156[9];
        v36 = a1 + v35;
        goto LABEL_22;
      case 3u:
        v28 = *v7;

        if (v28)
        {
          v29 = a1;
          a1[2] = v28;
          v30 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v29 = a1;
          v30 = a2;
        }

        v59 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
        v60 = *(v59 + 24);
        v61 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
        (*(*(v61 - 8) + 16))(&v29[v60], &v30[v60], v61);
        v62 = *(v59 + 28);
        v63 = v30[v62 + 8];
        *&v29[v62] = *&v30[v62];
        v29[v62 + 8] = v63;
        v64 = type metadata accessor for MLLogisticRegressionClassifier(0);
        v65 = v64[5];
        v144 = *&v30[v65];
        *&v29[v65] = v144;
        v66 = v64[6];
        *&v29[v66] = *&v30[v66];
        *&v29[v66 + 8] = *&v30[v66 + 8];
        *&v29[v64[7]] = *&v30[v64[7]];
        v156 = v64;
        v67 = v64[8];
        v68 = &v29[v67];
        v69 = &v30[v67];
        v70 = &v30[v67 + 8];
        v71 = &v29[v67 + 8];
        *(v71 - 1) = *&v30[v67];
        v72 = *&v30[v67 + 32];

        v144;

        if (v72)
        {
          *(v68 + 4) = v72;
          (**(v72 - 8))(v71, v70, v72);
        }

        else
        {
          v73 = *v70;
          *(v71 + 1) = *(v70 + 1);
          *v71 = v73;
        }

        *(v68 + 5) = *(v69 + 5);
        *(v68 + 6) = *(v69 + 6);
        *(v68 + 7) = *(v69 + 7);
        *(v68 + 8) = *(v69 + 8);
        v68[72] = v69[72];
LABEL_43:
        v109 = v156[9];
        v57 = a1;
        v36 = a1 + v109;
        v37 = a2;
        v51 = (a2 + v109);
        v152 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v52 = swift_getEnumCaseMultiPayload(v51, v152);
        if (v52 == 2)
        {
          v133 = v36;
          v134 = *v51;
          swift_errorRetain(*v51);
          *v133 = v134;
          v36 = v133;
          v52 = 2;
        }

        else
        {
          if (v52 != 1)
          {
            goto LABEL_46;
          }

          *v36 = *v51;
          v141 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v110 = v141[5];
          v138 = &v36[v110];
          v161 = v36;
          v111 = type metadata accessor for DataFrame(0);
          v147 = *(*(v111 - 8) + 16);
          v112 = v51 + v110;
          v57 = a1;
          v147(v138, v112, v111);
          v113 = v111;
          v36 = v161;
          v147(&v161[v141[6]], v51 + v141[6], v113);
        }

        goto LABEL_50;
      case 4u:
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        v11 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
        v150 = a1 + v11;
        v12 = a2 + v11;

        v155 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
        v13 = swift_getEnumCaseMultiPayload(v12, v155);
        v14 = v13 == 1;
        v15 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
        if (v13 == 1)
        {
          v15 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
        }

        v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
        (*(*(v16 - 8) + 16))(v150, v12, v16);
        swift_storeEnumTagMultiPayload(v150, v155, v14);
        v17 = type metadata accessor for MLSupportVectorClassifier(0);
        v18 = v17[5];
        v19 = *(a2 + v18);
        *(a1 + v18) = v19;
        v20 = v17[6];
        *(a1 + v20) = *(a2 + v20);
        *(a1 + v20 + 8) = *(a2 + v20 + 8);
        *(a1 + v17[7]) = *(a2 + v17[7]);
        v156 = v17;
        v21 = v17[8];
        v158 = a1 + v21;
        v151 = a2 + v21;
        v22 = (a2 + v21 + 8);
        v23 = (a1 + v21 + 8);
        *(a1 + v21) = *(a2 + v21);
        v24 = *(a2 + v21 + 32);
        v19;

        if (v24)
        {
          *(v158 + 4) = v24;
          (**(v24 - 8))(v23, v22, v24);
        }

        else
        {
          v34 = *v22;
          v23[1] = v22[1];
          *v23 = v34;
        }

        *(v158 + 5) = *(v151 + 5);
        *(v158 + 6) = *(v151 + 6);
        v158[56] = v151[56];
        v35 = v156[9];
        v36 = a1 + v35;
        v37 = a2;
LABEL_22:
        v51 = (v37 + v35);
        v152 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v52 = swift_getEnumCaseMultiPayload(v51, v152);
        if (v52 == 2)
        {
LABEL_40:
          v106 = v36;
          v107 = *v51;
          swift_errorRetain(*v51);
          *v106 = v107;
          v36 = v106;
        }

        else
        {
          if (v52 == 1)
          {
            *v36 = *v51;
            v143 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
            v53 = v143[5];
            v137 = &v36[v53];
            v159 = v36;
            v54 = type metadata accessor for DataFrame(0);
            v55 = *(*(v54 - 8) + 16);
            v56 = v51 + v53;
            v57 = a1;
            v55(v137, v56, v54);
            v58 = v54;
            v36 = v159;
            v55(&v159[v143[6]], v51 + v143[6], v58);
            v52 = 1;
            goto LABEL_50;
          }

LABEL_46:
          v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v114 = swift_getEnumCaseMultiPayload(v51, v162);
          v115 = v114 == 1;
          v116 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v114 == 1)
          {
            v116 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v117 = __swift_instantiateConcreteTypeFromMangledName(v116);
          (*(*(v117 - 8) + 16))(v36, v51, v117);
          swift_storeEnumTagMultiPayload(v36, v162, v115);
        }

        v57 = a1;
LABEL_50:
        swift_storeEnumTagMultiPayload(v36, v152, v52);
        v118 = v156[10];
        v119 = (v57 + v118);
        v120 = (v37 + v118);
        v121 = swift_getEnumCaseMultiPayload(v120, v152);
        if (v121 == 2)
        {
          v126 = *v120;
          swift_errorRetain(*v120);
          *v119 = v126;
        }

        else if (v121 == 1)
        {
          *v119 = *v120;
          v149 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v122 = *(v149 + 20);
          v157 = v119 + v122;
          v123 = type metadata accessor for DataFrame(0);
          v124 = v120 + v122;
          v125 = *(*(v123 - 8) + 16);
          v125(v157, v124, v123);
          v125(v119 + *(v149 + 24), v120 + *(v149 + 24), v123);
        }

        else
        {
          v127 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v128 = swift_getEnumCaseMultiPayload(v120, v127);
          v129 = v128 == 1;
          v130 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v128 == 1)
          {
            v130 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v131 = __swift_instantiateConcreteTypeFromMangledName(v130);
          (*(*(v131 - 8) + 16))(v119, v120, v131);
          swift_storeEnumTagMultiPayload(v119, v127, v129);
        }

        swift_storeEnumTagMultiPayload(v119, v152, v121);
        v3 = a1;
        swift_storeEnumTagMultiPayload(a1, v135, v136);
        break;
      case 5u:
        JUMPOUT(0x6B0ECLL);
    }
  }

  return v3;
}

uint64_t initializeWithTake for MLClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  v97 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      v6 = type metadata accessor for AnyTreeClassifierModel(0);
      v7 = *(v6 + 24);
      v8 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      v9 = *(v6 + 28);
      *(a1 + v9 + 8) = *(a2 + v9 + 8);
      *(a1 + v9) = *(a2 + v9);
      v10 = type metadata accessor for MLBoostedTreeClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      v11 = v10[8];
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      v86 = 14;
      goto LABEL_11;
    case 1u:
      v46 = type metadata accessor for AnyTreeClassifierModel(0);
      v47 = *(v46 + 24);
      v48 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v48 - 8) + 32))(a1 + v47, a2 + v47, v48);
      v49 = *(v46 + 28);
      *(a1 + v49 + 8) = *(a2 + v49 + 8);
      *(a1 + v49) = *(a2 + v49);
      v10 = type metadata accessor for MLDecisionTreeClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      v50 = v10[8];
      v51 = *(a2 + v50);
      v52 = *(a2 + v50 + 16);
      v53 = *(a2 + v50 + 32);
      *(a1 + v50 + 48) = *(a2 + v50 + 48);
      *(a1 + v50 + 32) = v53;
      *(a1 + v50 + 16) = v52;
      *(a1 + v50) = v51;
      goto LABEL_14;
    case 2u:
      v37 = type metadata accessor for AnyTreeClassifierModel(0);
      v38 = *(v37 + 24);
      v39 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v39 - 8) + 32))(a1 + v38, a2 + v38, v39);
      v40 = *(v37 + 28);
      *(a1 + v40 + 8) = *(a2 + v40 + 8);
      *(a1 + v40) = *(a2 + v40);
      v10 = type metadata accessor for MLRandomForestClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      v41 = v10[8];
      v12 = (a1 + v41);
      v13 = (a2 + v41);
      v86 = 11;
LABEL_11:
      qmemcpy(v12, v13, 8 * v86);
      goto LABEL_14;
    case 3u:
      v42 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      v43 = *(v42 + 24);
      v44 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
      (*(*(v44 - 8) + 32))(a1 + v43, a2 + v43, v44);
      v45 = *(v42 + 28);
      *(a1 + v45 + 8) = *(a2 + v45 + 8);
      *(a1 + v45) = *(a2 + v45);
      v10 = type metadata accessor for MLLogisticRegressionClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      qmemcpy((a1 + v10[8]), (a2 + v10[8]), 0x49uLL);
LABEL_14:
      v54 = v10[9];
      __dsta = (v4 + v54);
      v55 = (a2 + v54);
      v106 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v56 = swift_getEnumCaseMultiPayload(v55, v106);
      if (v56 == 1)
      {
        *__dsta = *v55;
        v94 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v63 = *(v94 + 20);
        v88 = type metadata accessor for DataFrame(0);
        v103 = *(*(v88 - 8) + 32);
        v103(&__dsta[v63], &v55[v63], v88);
        v103(&__dsta[*(v94 + 24)], &v55[*(v94 + 24)], v88);
        v62 = 1;
        v60 = __dsta;
        v61 = v106;
LABEL_20:
        swift_storeEnumTagMultiPayload(v60, v61, v62);
        goto LABEL_22;
      }

      if (!v56)
      {
        v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v57 = swift_getEnumCaseMultiPayload(v55, v102);
        v93 = v57 == 1;
        v58 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v57 == 1)
        {
          v58 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v59 = __swift_instantiateConcreteTypeFromMangledName(v58);
        (*(*(v59 - 8) + 32))(__dsta, v55, v59);
        swift_storeEnumTagMultiPayload(__dsta, v102, v93);
        v60 = __dsta;
        v61 = v106;
        v62 = 0;
        goto LABEL_20;
      }

      memcpy(__dsta, v55, *(*(v106 - 8) + 64));
LABEL_22:
      v64 = v10[10];
      v65 = (v4 + v64);
      v66 = (v64 + a2);
      v67 = swift_getEnumCaseMultiPayload(v66, v106);
      if (v67 != 1)
      {
        goto LABEL_28;
      }

      *v65 = *v66;
      __dstb = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v68 = __dstb[5];
      v104 = &v65[v68];
      v69 = type metadata accessor for DataFrame(0);
      v70 = &v66[v68];
      v71 = *(*(v69 - 8) + 32);
      v71(v104, v70, v69);
      v72 = __dstb;
      goto LABEL_34;
    case 4u:
      v14 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      v18 = swift_getEnumCaseMultiPayload(v16, v17);
      v19 = v18 == 1;
      v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
      if (v18 == 1)
      {
        v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
      (*(*(v21 - 8) + 32))(v15, v16, v21);
      v22 = v15;
      v4 = a1;
      swift_storeEnumTagMultiPayload(v22, v17, v19);
      v23 = type metadata accessor for MLSupportVectorClassifier(0);
      *(a1 + v23[5]) = *(a2 + v23[5]);
      *(a1 + v23[6]) = *(a2 + v23[6]);
      *(a1 + v23[7]) = *(a2 + v23[7]);
      v24 = v23[8];
      v25 = *(a2 + v24);
      v26 = *(a2 + v24 + 16);
      v27 = *(a2 + v24 + 32);
      *(a1 + v24 + 41) = *(a2 + v24 + 41);
      *(a1 + v24 + 32) = v27;
      *(a1 + v24 + 16) = v26;
      *(a1 + v24) = v25;
      v28 = v23[9];
      v101 = (a1 + v28);
      v29 = (a2 + v28);
      v106 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v30 = swift_getEnumCaseMultiPayload(v29, v106);
      if (v30 == 1)
      {
        *v101 = *v29;
        v90 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v73 = *(v90 + 20);
        v87 = type metadata accessor for DataFrame(0);
        v95 = *(*(v87 - 8) + 32);
        v95(&v101[v73], &v29[v73], v87);
        v95(&v101[*(v90 + 24)], &v29[*(v90 + 24)], v87);
        v36 = 1;
        v34 = v101;
        v35 = v106;
LABEL_25:
        swift_storeEnumTagMultiPayload(v34, v35, v36);
        goto LABEL_27;
      }

      if (!v30)
      {
        v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v31 = swift_getEnumCaseMultiPayload(v29, v92);
        v89 = v31 == 1;
        v32 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v31 == 1)
        {
          v32 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v33 = __swift_instantiateConcreteTypeFromMangledName(v32);
        (*(*(v33 - 8) + 32))(v101, v29, v33);
        swift_storeEnumTagMultiPayload(v101, v92, v89);
        v34 = v101;
        v35 = v106;
        v36 = 0;
        goto LABEL_25;
      }

      memcpy(v101, v29, *(*(v106 - 8) + 64));
LABEL_27:
      v74 = v23[10];
      v65 = (a1 + v74);
      v66 = (v74 + a2);
      v67 = swift_getEnumCaseMultiPayload(v66, v106);
      if (v67 == 1)
      {
        *v65 = *v66;
        v105 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v83 = v105[5];
        v96 = &v65[v83];
        v69 = type metadata accessor for DataFrame(0);
        v84 = &v66[v83];
        v71 = *(*(v69 - 8) + 32);
        v71(v96, v84, v69);
        v72 = v105;
LABEL_34:
        v71(&v65[v72[6]], &v66[v72[6]], v69);
        v82 = 1;
        v80 = v65;
        v81 = v106;
      }

      else
      {
LABEL_28:
        if (v67)
        {
          memcpy(v65, v66, *(*(v106 - 8) + 64));
          goto LABEL_36;
        }

        v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v76 = swift_getEnumCaseMultiPayload(v66, v75);
        v77 = v76 == 1;
        v78 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v76 == 1)
        {
          v78 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v79 = __swift_instantiateConcreteTypeFromMangledName(v78);
        (*(*(v79 - 8) + 32))(v65, v66, v79);
        swift_storeEnumTagMultiPayload(v65, v75, v77);
        v80 = v65;
        v81 = v106;
        v82 = 0;
      }

      swift_storeEnumTagMultiPayload(v80, v81, v82);
LABEL_36:
      swift_storeEnumTagMultiPayload(v4, a3, v97);
      return v4;
  }
}

uint64_t assignWithTake for MLClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifier);
    v74 = a3;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    v78 = EnumCaseMultiPayload;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v7 = type metadata accessor for AnyTreeClassifierModel(0);
        v8 = *(v7 + 24);
        v9 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
        v10 = *(v7 + 28);
        *(a1 + v10 + 8) = *(a2 + v10 + 8);
        *(a1 + v10) = *(a2 + v10);
        v11 = type metadata accessor for MLBoostedTreeClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v12 = v11[8];
        v13 = (a1 + v12);
        v14 = (a2 + v12);
        v70 = 14;
        goto LABEL_8;
      case 1u:
        v35 = type metadata accessor for AnyTreeClassifierModel(0);
        v36 = *(v35 + 24);
        v37 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v37 - 8) + 32))(a1 + v36, a2 + v36, v37);
        v38 = *(v35 + 28);
        *(a1 + v38 + 8) = *(a2 + v38 + 8);
        *(a1 + v38) = *(a2 + v38);
        v11 = type metadata accessor for MLDecisionTreeClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v22 = v11[8];
        v23 = *(a2 + v22);
        v24 = *(a2 + v22 + 16);
        v25 = *(a2 + v22 + 32);
        *(a1 + v22 + 48) = *(a2 + v22 + 48);
        goto LABEL_11;
      case 2u:
        v26 = type metadata accessor for AnyTreeClassifierModel(0);
        v27 = *(v26 + 24);
        v28 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v28 - 8) + 32))(a1 + v27, a2 + v27, v28);
        v29 = *(v26 + 28);
        *(a1 + v29 + 8) = *(a2 + v29 + 8);
        *(a1 + v29) = *(a2 + v29);
        v11 = type metadata accessor for MLRandomForestClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v30 = v11[8];
        v13 = (a1 + v30);
        v14 = (a2 + v30);
        v70 = 11;
LABEL_8:
        qmemcpy(v13, v14, 8 * v70);
        break;
      case 3u:
        v31 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
        v32 = *(v31 + 24);
        v33 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
        (*(*(v33 - 8) + 32))(a1 + v32, a2 + v32, v33);
        v34 = *(v31 + 28);
        *(a1 + v34 + 8) = *(a2 + v34 + 8);
        *(a1 + v34) = *(a2 + v34);
        v11 = type metadata accessor for MLLogisticRegressionClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        qmemcpy((a1 + v11[8]), (a2 + v11[8]), 0x49uLL);
        break;
      case 4u:
        v15 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
        v16 = a1 + v15;
        v17 = a2 + v15;
        v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
        v18 = swift_getEnumCaseMultiPayload(v17, v79);
        v19 = v18 == 1;
        v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
        if (v18 == 1)
        {
          v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
        }

        v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        swift_storeEnumTagMultiPayload(v16, v79, v19);
        v11 = type metadata accessor for MLSupportVectorClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v22 = v11[8];
        v23 = *(a2 + v22);
        v24 = *(a2 + v22 + 16);
        v25 = *(a2 + v22 + 32);
        *(a1 + v22 + 41) = *(a2 + v22 + 41);
LABEL_11:
        *(a1 + v22 + 32) = v25;
        *(a1 + v22 + 16) = v24;
        *(a1 + v22) = v23;
        break;
      case 5u:
        JUMPOUT(0x6BE1CLL);
    }

    v39 = v11[9];
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    v80 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v42 = swift_getEnumCaseMultiPayload(v41, v80);
    if (v42 == 1)
    {
      *v40 = *v41;
      v76 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v50 = v40;
      v71 = v40;
      v51 = *(v76 + 20);
      v72 = v50 + v51;
      v73 = type metadata accessor for DataFrame(0);
      v82 = *(*(v73 - 8) + 32);
      v82(v72, &v41[v51], v73);
      v82(&v71[*(v76 + 24)], &v41[*(v76 + 24)], v73);
      v49 = 1;
      v46 = v71;
      v47 = v80;
      v48 = v80;
    }

    else
    {
      if (v42)
      {
        v52 = v41;
        v47 = v80;
        memcpy(v40, v52, *(*(v80 - 8) + 64));
LABEL_20:
        v53 = v11[10];
        v54 = (a1 + v53);
        v55 = (v53 + a2);
        v56 = swift_getEnumCaseMultiPayload(v55, v47);
        if (v56 == 1)
        {
          *v54 = *v55;
          v83 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v65 = *(v83 + 20);
          v77 = &v54[v65];
          v66 = type metadata accessor for DataFrame(0);
          v67 = &v55[v65];
          v68 = *(*(v66 - 8) + 32);
          v68(v77, v67, v66);
          v68(&v54[*(v83 + 24)], &v55[*(v83 + 24)], v66);
          v64 = 1;
          v62 = v54;
          v63 = v80;
        }

        else
        {
          if (v56)
          {
            memcpy(v54, v55, *(*(v47 - 8) + 64));
            goto LABEL_28;
          }

          v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v58 = swift_getEnumCaseMultiPayload(v55, v57);
          v59 = v58 == 1;
          v60 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v58 == 1)
          {
            v60 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v61 = __swift_instantiateConcreteTypeFromMangledName(v60);
          (*(*(v61 - 8) + 32))(v54, v55, v61);
          swift_storeEnumTagMultiPayload(v54, v57, v59);
          v62 = v54;
          v63 = v80;
          v64 = 0;
        }

        swift_storeEnumTagMultiPayload(v62, v63, v64);
LABEL_28:
        swift_storeEnumTagMultiPayload(a1, v74, v78);
        return a1;
      }

      v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v43 = swift_getEnumCaseMultiPayload(v41, v81);
      v75 = v43 == 1;
      v44 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v43 == 1)
      {
        v44 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
      (*(*(v45 - 8) + 32))(v40, v41, v45);
      swift_storeEnumTagMultiPayload(v40, v81, v75);
      v46 = v40;
      v47 = v80;
      v48 = v80;
      v49 = 0;
    }

    swift_storeEnumTagMultiPayload(v46, v48, v49);
    goto LABEL_20;
  }

  return a1;
}

uint64_t type metadata completion function for MLClassifier(uint64_t a1)
{
  result = type metadata accessor for MLBoostedTreeClassifier(319);
  if (v2 <= 0x3F)
  {
    v9[0] = *(result - 8) + 64;
    result = type metadata accessor for MLDecisionTreeClassifier(319);
    if (v3 <= 0x3F)
    {
      v9[1] = *(result - 8) + 64;
      result = type metadata accessor for MLRandomForestClassifier(319);
      if (v4 <= 0x3F)
      {
        v9[2] = *(result - 8) + 64;
        result = type metadata accessor for MLLogisticRegressionClassifier(319);
        if (v5 <= 0x3F)
        {
          v9[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSupportVectorClassifier(319);
          if (v8 <= 0x3F)
          {
            v9[4] = *(result - 8) + 64;
            swift_initEnumMetadataMultiPayload(a1, 256, 5, v9, v6, v7);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t destroy for AnnotatedFeatureStore(uint64_t *a1)
{
  outlined consume of Data._Representation(*a1, a1[1]);
  a1[10];
  return a1[11];
}

uint64_t initializeWithCopy for AnnotatedFeatureStore(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t *assignWithCopy for AnnotatedFeatureStore(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v5);
  v6 = *a1;
  v7 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  outlined consume of Data._Representation(v6, v7);
  *(a1 + 4) = *(a2 + 16);
  *(a1 + 5) = *(a2 + 20);
  a1[3] = *(a2 + 24);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  a1[6] = *(a2 + 48);
  a1[7] = *(a2 + 56);
  a1[8] = *(a2 + 64);
  a1[9] = *(a2 + 72);
  v8 = a1[10];
  a1[10] = *(a2 + 80);

  v8;
  v9 = *(a2 + 88);
  v10 = a1[11];
  a1[11] = v9;

  v10;
  return a1;
}

void *__swift_memcpy96_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x60uLL);
  return result;
}

uint64_t *assignWithTake for AnnotatedFeatureStore(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *a1 = *a2;
  outlined consume of Data._Representation(v4, v5);
  a1[2] = *(a2 + 16);
  *(a1 + 3) = *(a2 + 24);
  *(a1 + 5) = *(a2 + 40);
  *(a1 + 7) = *(a2 + 56);
  a1[9] = *(a2 + 72);
  a1[10];
  v6 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnnotatedFeatureStore(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 80) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 80) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for AnnotatedFeatureStore(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 96) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 96) = 0;
    }

    if (a2)
    {
      *(a1 + 80) = 2 * (a2 - 1);
    }
  }
}

uint64_t *AnnotatedFeatureStore.init(contentsOf:)(uint64_t a1, double a2, __m128 a3, __m128 a4, __m128 a5)
{
  log = v6;
  v93 = a1;
  v74 = v5;
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v76 = *(v75 - 8);
  v7 = *(v76 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v82 = v69;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v84 = *(v83 - 8);
  v10 = *(v84 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v77 = v69;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v85 = v69;
  v95 = type metadata accessor for UTType(0);
  v90 = *(v95 - 8);
  v15 = *(v90 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v94 = type metadata accessor for URL(0);
  *type = *(v94 - 8);
  v18 = *(*type + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v88 = v69;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v23 = alloca(v18);
  v24 = alloca(v18);
  BlobsFile.init()();
  v92 = _swiftEmptyArrayStorage;
  v72[11] = _swiftEmptyArrayStorage;
  URL.appendingPathComponent(_:)(0x617461646174656DLL, 0xED00006E6F736A2ELL);
  URL.appendingPathComponent(_:)(0x7365727574616566, 0xEC0000006E69622ELL);
  static UTType.json.getter(a2, *a3.i64, *a4.i64, *a5.i64);
  v91 = v69;
  v25 = static _FileUtilities.isReadableFile(at:of:)(v69, v69);
  v26 = *(v90 + 8);
  v26(v69, v95);
  v89 = v69;
  if (!v25 || (static UTType.data.getter(), v27 = static _FileUtilities.isReadableFile(at:of:)(v69, v69), v26(v69, v95), !v27))
  {
    v34 = *(*type + 8);
    v35 = v94;
    v34(v93, v94);
    goto LABEL_6;
  }

  v28 = v91;
  v29 = log;
  v30 = Data.init(contentsOf:options:)(v91, 0);
  if (!v29)
  {
    v95 = v31;
    v38 = v30;
    v39 = type metadata accessor for JSONDecoder(0);
    swift_allocObject(v39, *(v39 + 48), *(v39 + 52));
    v40 = JSONDecoder.init()();
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Metadata]);
    v42 = lazy protocol witness table accessor for type [Metadata] and conformance <A> [A](&lazy protocol witness table cache variable for type [Metadata] and conformance <A> [A], lazy protocol witness table accessor for type Metadata and conformance Metadata, &protocol conformance descriptor for <A> [A]);
    v90 = v38;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)(v41, v38, v95, v41, v42);
    v87 = v40;
    v43 = v73[0];
    v44 = v88;
    v45 = v94;
    (*(*type + 16))(v88, v89, v94);
    v46 = Data.init(contentsOf:options:)(v44, 0);
    v86 = v43;
    BlobsFile.init(data:)(v46, v47, a2, a3, a4, a5);
    v34 = *(*type + 8);
    v34(v88, v45);
    outlined assign with take of BlobsFile(v71, v72);
    LOBYTE(log) = static os_log_type_t.debug.getter();
    type metadata accessor for OS_os_log();

    v48 = static OS_os_log.default.getter(v43, v72);
    *type = log;
    if (os_log_type_enabled(v48, log))
    {
      v49 = swift_slowAlloc(12, -1);
      log = v48;
      v50 = v49;
      *v49 = 134217984;
      *(v49 + 4) = *(v43 + 16);
      v43;
      _os_log_impl(&dword_0, log, type[0], "Reading AnnotatedFeatureStore with %ld elements", v50, 0xCu);
      v51 = v50;
      v48 = log;
      v51, -1, -1;
    }

    else
    {
      v43;
    }

    log = 0;

    v81 = *(v43 + 16);
    if (v81)
    {
      qmemcpy(v70, v72, sizeof(v70));
      v52 = (v43 + 48);
      v53 = 0;
      v54 = v95;
      while (1)
      {
        v55 = *(v52 - 2);
        v79 = *(v52 - 1);
        v88 = v52;
        v56 = *v52;
        *type = v55;

        v78 = v53;
        v57 = log;
        v58 = BlobsFile.floatBlob(at:)(v53);
        log = v57;
        if (v57)
        {
          break;
        }

        v73[0] = v58;
        v59 = *type;

        v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
        v60 = lazy protocol witness table accessor for type [Float] and conformance [A]();
        v61 = v85;
        MLShapedArray.init<A>(scalars:shape:)(v73, v59, &type metadata for Float, v80, &protocol witness table for Float, v60);
        v62 = v77;
        v63 = v61;
        v64 = v83;
        (*(v84 + 16))(v77, v63, v83);
        v73[0] = v79;
        v73[1] = v56;

        AnnotatedFeature.init(feature:annotation:)(v62, v73, v64, &type metadata for String);
        v56;
        type[0];
        if (!swift_isUniquelyReferenced_nonNull_native(v92))
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
        }

        v65 = *(v92 + 2);
        if (*(v92 + 3) >> 1 <= v65)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v92 + 3) >= 2uLL, v65 + 1, 1, v92);
        }

        v66 = v78 + 1;
        v67 = v92;
        *(v92 + 2) = v65 + 1;
        v53 = v66;
        (*(v76 + 32))(&v67[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v65], v82, v75);
        v72[11] = v67;
        (*(v84 + 8))(v85, v83);
        v52 = v88 + 3;
        v54 = v95;
        if (v81 == v53)
        {
          goto LABEL_22;
        }
      }

      outlined consume of Data._Representation(v90, v54);
      v56;
      type[0];
      v68 = v94;
      v34(v93, v94);
      v86;
      v34(v89, v68);
      v34(v91, v68);
      goto LABEL_8;
    }

    v54 = v95;
LABEL_22:

    outlined consume of Data._Representation(v90, v54);
    v35 = v94;
    v34(v93, v94);
    v86;
LABEL_6:
    v36 = v91;
    v34(v89, v35);
    v34(v36, v35);
    qmemcpy(v69, v72, sizeof(v69));
    qmemcpy(v73, v72, sizeof(v73));
    outlined retain of AnnotatedFeatureStore(v69);
    result = outlined release of AnnotatedFeatureStore(v73);
    qmemcpy(v74, v69, 0x60uLL);
    return result;
  }

  v32 = *(*type + 8);
  v33 = v94;
  v32(v93, v94);
  v32(v89, v33);
  v32(v28, v33);
LABEL_8:
  qmemcpy(v73, v72, sizeof(v73));
  return outlined release of AnnotatedFeatureStore(v73);
}

NSURL *AnnotatedFeatureStore.write(to:)(uint64_t a1)
{
  v3 = v1;
  v4 = v2;
  v6 = type metadata accessor for URL(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  result = *(v4 + 88);
  baseURL = result->_baseURL;
  if (baseURL)
  {
    v31 = &v24;
    v27 = v7;
    v25 = a1;
    v26 = &v24;
    v29 = v6;
    type[0] = static os_log_type_t.debug.getter();
    type metadata accessor for OS_os_log();
    outlined retain of AnnotatedFeatureStore(v4);
    outlined retain of AnnotatedFeatureStore(v4);
    v15 = static OS_os_log.default.getter(v4, &v24);
    *type = type[0];
    if (os_log_type_enabled(v15, type[0]))
    {
      v16 = swift_slowAlloc(22, -1);
      v28 = v1;
      v17 = v16;
      *v16 = 134218240;
      *(v16 + 4) = baseURL;
      outlined release of AnnotatedFeatureStore(v4);
      *(v17 + 12) = 2048;
      *(v17 + 14) = *(v4 + 16);
      outlined release of AnnotatedFeatureStore(v4);
      _os_log_impl(&dword_0, v15, type[0], "Writing AnnotatedFeatureStore with %ld elements and %ld blobs", v17, 0x16u);
      v18 = v17;
      v3 = v28;
      v18, -1, -1;
    }

    else
    {

      outlined release of AnnotatedFeatureStore(v4);
      outlined release of AnnotatedFeatureStore(v4);
    }

    result = static _FileUtilities.prepareForWriting(to:isDirectory:)(v25, 1);
    if (!v3)
    {
      *type = v4;
      v19 = v31;
      URL.appendingPathComponent(_:)(0x617461646174656DLL, 0xED00006E6F736A2ELL);
      AnnotatedFeatureStore.writeMetadata(to:)(v19);
      v20 = v31;
      v31 = *(v27 + 8);
      (v31)(v20, v29);
      v28 = 0;
      v21 = **type;
      v22 = *(*type + 8);
      v23 = v26;
      URL.appendingPathComponent(_:)(0x7365727574616566, 0xEC0000006E69622ELL);
      Data.write(to:options:)(v23, 1, v21, v22);
      return (v31)(v23, v29);
    }
  }

  return result;
}

uint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    v1 = objc_opt_self(OS_os_log);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for OS_os_log = result;
  }

  return result;
}

uint64_t *outlined retain of AnnotatedFeatureStore(uint64_t *a1)
{
  outlined copy of Data._Representation(*a1, a1[1]);

  return a1;
}

uint64_t *outlined release of AnnotatedFeatureStore(uint64_t *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  outlined consume of Data._Representation(*a1, a1[1]);
  v2;
  v1;
  return a1;
}

uint64_t AnnotatedFeatureStore.writeMetadata(to:)(uint64_t a1)
{
  v45 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v39 = *(v38 - 8);
  v3 = *(v39 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v40 = &v34;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = &v34;
  v10 = *(v2 + 88);
  v34 = v10;
  v11 = *(v10 + 16);
  v46 = a1;
  if (v11)
  {
    v47 = _swiftEmptyArrayStorage;
    v48 = v10;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v47;
    v13 = v48 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v43 = *(v6 + 16);
    v42 = v6;
    v44 = *(v6 + 72);
    do
    {
      v49 = v12;
      v48 = v11;
      v36 = v13;
      v14 = v41;
      v43(v50, v13, v41);
      v15 = v40;
      AnnotatedFeature.feature.getter(v14);
      v16 = v38;
      v37 = MLShapedArray.shape.getter(v38);
      (*(v39 + 8))(v15, v16);
      v17 = v50;
      AnnotatedFeature.annotation.getter(v14);
      v18 = v35[0];
      v19 = v35[1];
      (*(v42 + 8))(v17, v14);
      v47 = v49;
      v20 = v49[2];
      v21 = v49[3];
      v22 = v49;
      if (v21 >> 1 <= v20)
      {
        v49 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v20 + 1, 1);
        v19 = v49;
        v22 = v47;
      }

      v22[2] = v20 + 1;
      v23 = 3 * v20;
      v22[v23 + 4] = v37;
      v22[v23 + 5] = v18;
      v22[v23 + 6] = v19;
      v11 = v48 - 1;
      v12 = v22;
      v13 = v44 + v36;
    }

    while (v48 != 1);
    outlined release of [Int?](&v34);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v24 = type metadata accessor for JSONEncoder(0);
  swift_allocObject(v24, *(v24 + 48), *(v24 + 52));
  v25 = JSONEncoder.init()(v24);
  v35[0] = v12;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Metadata]);
  v27 = lazy protocol witness table accessor for type [Metadata] and conformance <A> [A](&lazy protocol witness table cache variable for type [Metadata] and conformance <A> [A], lazy protocol witness table accessor for type Metadata and conformance Metadata, &protocol conformance descriptor for <A> [A]);
  v50 = v25;
  v28 = v45;
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)(v35, v26, v27);
  if (v28)
  {
    v12;
  }

  else
  {
    v32 = v29;
    v33 = v30;
    v12;
    Data.write(to:options:)(v46, 0, v32, v33);
    outlined consume of Data._Representation(v32, v33);
  }
}

char Metadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x5365727574616566 | a2 ^ 0xEC00000065706168 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x5365727574616566, 0xEC00000065706168, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x697461746F6E6E61 | a2 ^ 0xEA00000000006E6FLL)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x697461746F6E6E61, 0xEA00000000006E6FLL, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

uint64_t Metadata.CodingKeys.stringValue.getter(char a1)
{
  result = 0x5365727574616566;
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  return result;
}

uint64_t Metadata.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = v4;
  v20 = a4;
  v21 = a3;
  v19 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<Metadata.CodingKeys>);
  v22 = *(v18 - 8);
  v5 = *(v22 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v10 = lazy protocol witness table accessor for type Metadata.CodingKeys and conformance Metadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38FFB8, &unk_38FFB8, v10, v8, v9);
  v16 = v19;
  v23 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v12 = lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  v13 = v18;
  v14 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v16, &v23, v18, v11, v12);
  if (!v14)
  {
    v24[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)(v21, v20, v24, v13);
  }

  return (*(v22 + 8))(&v16, v13);
}

uint64_t *Metadata.init(from:)(void *a1)
{
  v19 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<Metadata.CodingKeys>);
  v17 = *(v16 - 8);
  v2 = *(v17 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = v15;
  v6 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type Metadata.CodingKeys and conformance Metadata.CodingKeys();
  v20 = v15;
  v8 = v19;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38FFB8, &unk_38FFB8, v7, v6, v18);
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v19 = a1;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    v21 = 0;
    v10 = lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    v11 = v16;
    KeyedDecodingContainer.decode<A>(_:forKey:)(v9, &v21, v16, v9, v10);
    v22[0] = 1;
    v18 = v15[1];

    KeyedDecodingContainer.decode(_:forKey:)(v22, v11);
    v14 = v13;
    (*(v17 + 8))(v20, v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v14;
    v5 = v18;
    v18;
  }

  return v5;
}

char protocol witness for CodingKey.init(stringValue:) in conformance Metadata.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = Metadata.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t *protocol witness for Decodable.init(from:) in conformance Metadata(void *a1)
{
  v3 = v1;
  result = Metadata.init(from:)(a1);
  if (!v2)
  {
    *v3 = result;
    v3[1] = v5;
    v3[2] = v6;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Metadata and conformance Metadata()
{
  result = lazy protocol witness table cache variable for type Metadata and conformance Metadata;
  if (!lazy protocol witness table cache variable for type Metadata and conformance Metadata)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata, &type metadata for Metadata);
    lazy protocol witness table cache variable for type Metadata and conformance Metadata = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata and conformance Metadata;
  if (!lazy protocol witness table cache variable for type Metadata and conformance Metadata)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata, &type metadata for Metadata);
    lazy protocol witness table cache variable for type Metadata and conformance Metadata = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Metadata] and conformance <A> [A](uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Metadata]);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Float] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Float]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [Float] and conformance [A] = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Metadata(uint64_t *a1, uint64_t *a2)
{
  return initializeBufferWithCopyOfBuffer for Metadata(a1, a2);
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for Metadata(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v2;
  a1[1] = a2[1];
  v3 = a1[2];
  a1[2] = a2[2];

  v3;
  return a1;
}

uint64_t *assignWithTake for Metadata(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  a1[1] = a2[1];
  v4 = a1[2];
  a1[2] = a2[2];
  v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for Metadata(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for Metadata(uint64_t a1, int a2, int a3)
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
      *a1 = 2 * (a2 - 1);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Metadata.CodingKeys and conformance Metadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Int]);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Metadata.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 1;
        }

        break;
      case 5:
        JUMPOUT(0x6D770);
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySSG6tokens_AF6labelstG_AFs5NeverOTg5212_s8CreateML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 32);
    do
    {
      v5 = v1;
      v3 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v8 = v3 + 1;
      v6 = *v2;

      if (v7 >> 1 <= v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7 >= 2, v8, 1);
      }

      _swiftEmptyArrayStorage[2] = v8;
      _swiftEmptyArrayStorage[v3 + 4] = v6;
      v2 += 2;
      v1 = v5 - 1;
    }

    while (v5 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    for (i = (a1 + 48); ; i += 24)
    {
      v6 = v4;
      v7 = *(i - 2);
      v8 = *(i - 1);
      v20 = v7;
      v21 = v8;
      if (*i != 2)
      {
        break;
      }

      outlined copy of MLDataValue(v7, v8, 2u);
      v4 = v6;
      v19 = v6;
      v9 = v6[2];
      v10 = v9 + 1;
      if (v4[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v10, 1);
        v10 = v9 + 1;
        v4 = v19;
      }

      v4[2] = v10;
      v11 = 2 * v9;
      v4[v11 + 4] = v20;
      v4[v11 + 5] = v21;
      if (!--v3)
      {
        v15 = v4;
        a3;
        return v15;
      }
    }

    v23 = *i;
    outlined copy of MLDataValue(v7, v8, *i);
    _StringGuts.grow(_:)(43);

    0;
    *&v17 = a2;
    *(&v17 + 1) = a3;
    v12._object = " in the data frame." + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v12);
    v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
    *v14 = v17;
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    *(v14 + 48) = 1;
    swift_willThrow();
    outlined consume of MLDataValue(v20, v21, v23);
    a3;
  }

  else
  {
    a3;
    return _swiftEmptyArrayStorage;
  }
}

BOOL specialized Collection.isEmpty.getter()
{
  v0 = type metadata accessor for DataFrame.Rows(0);
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows, &type metadata accessor for DataFrame.Rows, &protocol conformance descriptor for DataFrame.Rows);
  dispatch thunk of Collection.startIndex.getter(v0, v1);
  dispatch thunk of Collection.endIndex.getter(v0, v1);
  return v3 == v4;
}

BOOL specialized Collection.isEmpty.getter(uint64_t a1)
{
  return specialized Collection.isEmpty.getter(a1);
}

{
  return CMLSequence.size.getter() == 0;
}

{

  v1 = CMLSequence.size.getter();
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1);

  return v2 == 0;
}

{
  return CMLSequence.size.getter() == 0;
}

{
  return CMLDictionary.size.getter() == 0;
}

{
  return specialized Collection.isEmpty.getter(a1);
}

BOOL specialized Collection.isEmpty.getter(uint64_t a1, char a2)
{
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  return v2 == 0;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  v1 = Set.init(minimumCapacity:)(*(a1 + 16), &type metadata for String, &protocol witness table for String);
  v11 = v1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v10 = a1;
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      specialized Set._Variant.insert(_:)(v8, v4, v5);
      v9;
      v3 += 2;
      --v2;
    }

    while (v2);
    v10;
    return v11;
  }

  else
  {
    v6 = v1;
    a1;
  }

  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  v1 = *(*(v0 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v19 = Set.init(minimumCapacity:)(v6, &type metadata for String, &protocol witness table for String);
  v20 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v7 = *(v0 + 36);
  v22 = v14;
  v21 = &v14[v7];
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v18 = v8;
  v9 = v20;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v20, v8);
    if (*v21 == v15)
    {
      break;
    }

    v10 = dispatch thunk of Collection.subscript.read(&v15, v21, v9, v8);
    v17 = *v11;
    v12 = v11[1];

    v10(&v15, 0);
    v8 = v18;
    dispatch thunk of Collection.formIndex(after:)(v21, v9, v18);
    specialized Set._Variant.insert(_:)(&v15, v17, v12);
    v16;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v22, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  return v19;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(uint64_t a1)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v1 = *(*(v25 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v27 = &v21;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &demangling cache variable for type metadata for String?);
  v9 = v7;
  v10 = v4;
  v24 = Set.init(minimumCapacity:)(v6, v9, v8);
  v11 = v27;
  dispatch thunk of Sequence.makeIterator()(v10, v5);
  v12 = (v11 + *(v25 + 36));
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v26 = v13;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v10, v13);
    if (*v12 == v22)
    {
      break;
    }

    v14 = dispatch thunk of Collection.subscript.read(&v22, v12, v10, v13);
    v15 = v12;
    v16 = v10;
    v17 = v14;
    v25 = *v18;
    v19 = v18[1];

    v17(&v22, 0);
    v10 = v16;
    v12 = v15;
    v13 = v26;
    dispatch thunk of Collection.formIndex(after:)(v12, v10, v26);
    specialized Set._Variant.insert(_:)(&v22, v25, v19);
    v23;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  return v24;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData24DiscontiguousColumnSliceVySiGTt0g5(uint64_t a1)
{
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Int>>);
  v1 = *(*(v23 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v21 = v16;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Int> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &demangling cache variable for type metadata for Int?);
  v18 = Set.init(minimumCapacity:)(v6, v7, v8);
  v9 = v21;
  v22 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v23 = v9 + *(v23 + 36);
  v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Int> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
  v10 = v23;
  v11 = v22;
  v12 = v19;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v22, v19);
    if (*v23 == v16[0])
    {
      break;
    }

    v13 = dispatch thunk of Collection.subscript.read(v16, v10, v11, v12);
    v17 = *v14;
    v20 = *(v14 + 8);
    v13(v16, 0);
    dispatch thunk of Collection.formIndex(after:)(v10, v11, v12);
    specialized Set._Variant.insert(_:)(v16, v17, v20);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Int>>);
  return v18;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<Int>>>);
  v1 = *(*(v0 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v17 = Set.init(minimumCapacity:)(v6, &type metadata for Int, &protocol witness table for Int);
  v18 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v7 = *(v0 + 36);
  v21 = v14;
  v19 = &v14[v7];
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v8 = v19;
  v9 = v18;
  v10 = v20;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v18, v20);
    if (*v19 == v15[0])
    {
      break;
    }

    v11 = dispatch thunk of Collection.subscript.read(v15, v8, v9, v10);
    v16 = *v12;
    v11(v15, 0);
    dispatch thunk of Collection.formIndex(after:)(v8, v9, v10);
    specialized Set._Variant.insert(_:)(v15, v16);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<Int>>>);
  return v17;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  v18 = &v17;
  v7 = *(a1 + 16);
  v8 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v9 = Set.init(minimumCapacity:)(v7, v1, v8);
  v24 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v23 = a1;
    v12 = a1 + v11;
    v19 = *(v25 + 16);
    v20 = *(v25 + 72);
    v21 = v1;
    v22 = &v17;
    v13 = v1;
    v14 = v18;
    do
    {
      v17 = v10;
      v19(&v17, v12, v13);
      specialized Set._Variant.insert(_:)(v14, &v17);
      (*(v25 + 8))(v14, v13);
      v12 += v20;
      v10 = v17 - 1;
    }

    while (v17 != 1);
    v23;
    return v24;
  }

  else
  {
    v15 = v9;
    a1;
  }

  return v15;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(uint64_t a1)
{
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<Int>>);
  v1 = *(*(v23 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v21 = v16;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &demangling cache variable for type metadata for Int?);
  v18 = Set.init(minimumCapacity:)(v6, v7, v8);
  v9 = v21;
  v22 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v23 = v9 + *(v23 + 36);
  v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v10 = v23;
  v11 = v22;
  v12 = v19;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v22, v19);
    if (*v23 == v16[0])
    {
      break;
    }

    v13 = dispatch thunk of Collection.subscript.read(v16, v10, v11, v12);
    v17 = *v14;
    v20 = *(v14 + 8);
    v13(v16, 0);
    dispatch thunk of Collection.formIndex(after:)(v10, v11, v12);
    specialized Set._Variant.insert(_:)(v16, v17, v20);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for IndexingIterator<Column<Int>>);
  return v18;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  v6 = Set.init(minimumCapacity:)(v4, &type metadata for MLRecommender.Identifier, v5);
  v32 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v31 = a1;
    v30 = a2;
    v8 = (a1 + 80);
    v33 = a3;
    do
    {
      v26 = v7;
      v29 = *(v8 - 6);
      v9 = *(v8 - 5);
      v10 = *(v8 - 3);
      v27 = v10;
      v11 = *(v8 - 2);
      v12 = *v8;
      v13 = *(v8 - 32);
      v34 = *(v8 - 8);
      v16 = v29;
      v17 = v9;
      LOBYTE(v18) = v13;
      v19 = v10;
      v20 = v11;
      v28 = v11;
      v21 = v34;
      v22 = v12;
      outlined copy of MLRecommender.Identifier(v29, v9, v13);
      v14 = v11;
      LOBYTE(v11) = v34;
      outlined copy of MLRecommender.Identifier(v10, v14, v34);
      v30(&v16);
      outlined consume of MLRecommender.Identifier(v29, v9, v13);
      outlined consume of MLRecommender.Identifier(v27, v28, v11);
      specialized Set._Variant.insert(_:)(&v16, v23, v24, v25);
      outlined consume of MLRecommender.Identifier(v16, v17, v18);
      v8 += 7;
      v7 = v26 - 1;
    }

    while (v26 != 1);

    v31;
    return v32;
  }

  else
  {

    a1;
  }

  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(uint64_t a1)
{
  v1 = Set.init(minimumCapacity:)(*(a1 + 16), &type metadata for Int, &protocol witness table for Int);
  v8 = v1;
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(a1 + 8 * i + 32);
      specialized Set._Variant.insert(_:)(v7, v4);
    }

    a1;
    return v8;
  }

  else
  {
    v5 = v1;
    a1;
  }

  return v5;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  v3 = Set.init(minimumCapacity:)(v1, &type metadata for MLRecommender.Identifier, v2);
  v14 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = a1;
    v5 = (a1 + 48);
    do
    {
      v12 = v4;
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      outlined copy of MLRecommender.Identifier(v6, v7, *v5);
      specialized Set._Variant.insert(_:)(v10, v6, v7, v8);
      outlined consume of MLRecommender.Identifier(v10[0], v10[1], v11);
      v5 += 24;
      v4 = v12 - 1;
    }

    while (v12 != 1);
    v13;
    return v14;
  }

  else
  {
    a1;
  }

  return v3;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSay10Foundation3URLVG_GTt0g5(uint64_t a1)
{
  v19 = Set.init(minimumCapacity:)(*(a1 + 16), &type metadata for String, &protocol witness table for String);
  specialized _NativeDictionary.makeIterator()(a1);
  v21 = v12;
  v23 = v13;
  v1 = v15;
  v2 = v16;
  v20 = v14;
  v22 = (v14 + 64) >> 6;
  while (1)
  {
    if (v2)
    {
      v3 = v1;
      goto LABEL_24;
    }

    v4 = v1 + 1;
    if (__OFADD__(1, v1))
    {
      BUG();
    }

    if (v4 >= v22)
    {
      goto LABEL_25;
    }

    v2 = *(v23 + 8 * v4);
    if (v2)
    {
      v3 = v1 + 1;
      goto LABEL_24;
    }

    v3 = v1 + 2;
    if (v1 + 2 >= v22)
    {
      goto LABEL_25;
    }

    v2 = *(v23 + 8 * v4 + 8);
    if (!v2)
    {
      v3 = v1 + 3;
      if (v1 + 3 >= v22)
      {
        goto LABEL_25;
      }

      v2 = *(v23 + 8 * v4 + 16);
      if (!v2)
      {
        v3 = v1 + 4;
        if (v1 + 4 >= v22)
        {
          goto LABEL_25;
        }

        v2 = *(v23 + 8 * v4 + 24);
        if (!v2)
        {
          v3 = v1 + 5;
          if (v1 + 5 >= v22)
          {
            goto LABEL_25;
          }

          v2 = *(v23 + 8 * v4 + 32);
          if (!v2)
          {
            v3 = v1 + 6;
            if (v1 + 6 >= v22)
            {
              goto LABEL_25;
            }

            v2 = *(v23 + 8 * v4 + 40);
            if (!v2)
            {
              v3 = v1 + 7;
              if (v1 + 7 >= v22)
              {
                goto LABEL_25;
              }

              v2 = *(v23 + 8 * v4 + 48);
              if (!v2)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    _BitScanForward64(&v6, v2);
    v2 &= v2 - 1;
    v7 = *(v21 + 48);
    v8 = (v3 << 10) | (16 * v6);
    v9 = *(v7 + v8);
    v10 = *(v7 + v8 + 8);

    specialized Set._Variant.insert(_:)(v17, v9, v10);
    v18;
    v1 = v3;
  }

  v5 = v1 + 8;
  while (v5 < v22)
  {
    v2 = *(v23 + 8 * v5++);
    if (v2)
    {
      v3 = v5 - 1;
      goto LABEL_24;
    }
  }

LABEL_25:
  outlined consume of [String : [Double]].Iterator._Variant(v21);
  return v19;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_s15FlattenSequenceVySaySaySSGGGTt0g5(uint64_t a1)
{
  v13 = a1;
  v1 = 0;
  v11 = Set.init(minimumCapacity:)(0, &type metadata for String, &protocol witness table for String);
  v14 = 0;
  while (1)
  {
    if (v1)
    {
      v2 = (v1 + 40);
      v3 = 0;
      while (v3 != *(v1 + 16))
      {
        if (v3 >= *(v1 + 16))
        {
          BUG();
        }

        v12 = v3 + 1;
        v4 = *(v2 - 1);
        v5 = *v2;

        specialized Set._Variant.insert(_:)(&v9, v4, v5);
        v10;
        v3 = v12;
        v2 += 2;
      }
    }

    v6 = v13;
    if (v14 == *(v13 + 16))
    {
      break;
    }

    if (v14 >= *(v13 + 16))
    {
      BUG();
    }

    v7 = *(v13 + 8 * v14++ + 32);

    v1;
    v1 = v7;
  }

  v1;
  v6;
  return v11;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    swift_arrayInitWithCopy(&v3[2 * v7 + 4], a1 + 32, v2, &type metadata for String);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    memcpy(v3 + 4 * v7 + 32, (a1 + 32), 4 * v2);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    memcpy(&v3[v7 + 4], (a1 + 32), 8 * v2);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    memcpy(&v3[v7 + 4], (a1 + 32), 8 * v2);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || *(v3 + 3) >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = *(v3 + 2);
    if ((*(v3 + 3) >> 1) - v7 < v2)
    {
      BUG();
    }

    swift_arrayInitWithCopy(&v3[8 * v7 + 32], a1 + 32, v2, &type metadata for MLDataValue.MultiArrayType);
    if (v2)
    {
      v8 = __OFADD__(*(v3 + 2), v2);
      v9 = *(v3 + 2) + v2;
      if (v8)
      {
        BUG();
      }

      *(v3 + 2) = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for Model);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!isUniquelyReferenced_nonNull_native || *(v3 + 3) >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = *(v3 + 2);
    if ((*(v3 + 3) >> 1) - v7 < v2)
    {
      BUG();
    }

    v8 = &v3[64 * v7 + 32];
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>);
    swift_arrayInitWithCopy(v8, a1 + 32, v2, v9);
    if (v2)
    {
      v10 = __OFADD__(*(v3 + 2), v2);
      v11 = *(v3 + 2) + v2;
      if (v10)
      {
        BUG();
      }

      *(v3 + 2) = v11;
    }
  }

  else if (v2)
  {
    BUG();
  }

  a1;
  result = v1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    swift_arrayInitWithCopy(v3 + *(v9 + 72) * v7 + v10, a1 + v10, v2, v8);
    if (v2)
    {
      v11 = __OFADD__(v3[2], v2);
      v12 = v3[2] + v2;
      if (v11)
      {
        BUG();
      }

      v3[2] = v12;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for NeuralNetwork.Layer);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for FeatureDescription);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = v5 - a3;
  if (__OFSUB__(v5, a3))
  {
    BUG();
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    BUG();
  }

  v17 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
  if (!isUniquelyReferenced_nonNull_native || (v11 = v7[3] >> 1, v11 < v9))
  {
    if (v8 > v9)
    {
      v9 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v7);
    v11 = v7[3] >> 1;
  }

  if (v17 == a3)
  {
    if (v6 > 0)
    {
      BUG();
    }
  }

  else
  {
    v12 = v7[2];
    if (v11 - v12 < v6)
    {
      BUG();
    }

    memcpy(v7 + 4 * v12 + 32, (a2 + 4 * a3), 4 * v6);
    if (v6 > 0)
    {
      v13 = __OFADD__(v7[2], v6);
      v14 = v7[2] + v6;
      if (v13)
      {
        BUG();
      }

      v7[2] = v14;
    }
  }

  result = swift_unknownObjectRelease(a1);
  *v4 = v7;
  return result;
}

{
  v5 = a4 >> 1;
  v6 = v5 - a3;
  if (__OFSUB__(v5, a3))
  {
    BUG();
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    BUG();
  }

  v17 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
  if (!isUniquelyReferenced_nonNull_native || (v11 = v7[3] >> 1, v11 < v9))
  {
    if (v8 > v9)
    {
      v9 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v7);
    v11 = v7[3] >> 1;
  }

  if (v17 == a3)
  {
    if (v6 > 0)
    {
      BUG();
    }
  }

  else
  {
    v12 = v7[2];
    if (v11 - v12 < v6)
    {
      BUG();
    }

    memcpy(&v7[v12 + 4], (a2 + 8 * a3), 8 * v6);
    if (v6 > 0)
    {
      v13 = __OFADD__(v7[2], v6);
      v14 = v7[2] + v6;
      if (v13)
      {
        BUG();
      }

      v7[2] = v14;
    }
  }

  result = swift_unknownObjectRelease(a1);
  *v4 = v7;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
  if (!isUniquelyReferenced_nonNull_native || *(v5 + 24) >> 1 < v7)
  {
    if (v6 > v7)
    {
      v7 = v6;
    }

    v5 = a2(isUniquelyReferenced_nonNull_native, v7, 1, v5);
  }

  v9 = a1;
  if (*(a1 + 16))
  {
    v10 = *(v5 + 16);
    v11 = (*(v5 + 24) >> 1) - v10;
    v12 = a3(0);
    if (v11 < v4)
    {
      BUG();
    }

    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v9 = a1;
    swift_arrayInitWithCopy(v14 + v5 + *(v13 + 72) * v10, a1 + v14, v4, v12);
    if (v4)
    {
      v15 = __OFADD__(*(v5 + 16), v4);
      v16 = *(v5 + 16) + v4;
      if (v15)
      {
        BUG();
      }

      *(v5 + 16) = v16;
    }
  }

  else if (v4)
  {
    BUG();
  }

  result = v9;
  *v3 = v5;
  return result;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySaySSGGAIG_AH6tokens_AH6labelsts5NeverOTg5046_sSaySSGA3AIgggoo_AA_AAtAA6tokens_AA6labelsts5h93OIegnrzr_TR082_s8CreateML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v18 = v4;
  v19 = *(a2 + 16);
  if (v19 < v4)
  {
    v4 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v22 = v4;
  if (v4)
  {

    v5 = 0;
    do
    {
      if (v18 == v5)
      {
        BUG();
      }

      if (v19 == v5)
      {
        BUG();
      }

      v6 = *(v3 + 8 * v5 + 32);
      v7 = *(v2 + 8 * v5 + 32);
      v8 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v21 = v8 + 1;

      if (v17 >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 >= 2, v21, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v21;
      v9 = 2 * v8;
      _swiftEmptyArrayStorage[v9 + 4] = v6;
      _swiftEmptyArrayStorage[v9 + 5] = v7;
      v3 = a1;
      v2 = a2;
    }

    while (v22 != v5);
  }

  else
  {
  }

  v10 = v22;
  while (v18 != v10)
  {
    if (v18 <= v10)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v19 == v10)
    {
      break;
    }

    if (v19 <= v10)
    {
      BUG();
    }

    v12 = *(v3 + 8 * v10 + 32);
    v13 = *(a2 + 8 * v10 + 32);
    v14 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];

    if (v23 >> 1 <= v14)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = 2 * v14;
    _swiftEmptyArrayStorage[v15 + 4] = v12;
    _swiftEmptyArrayStorage[v15 + 5] = v13;
    v10 = v11;
    v3 = a1;
  }

  a2;
  v3;
  return _swiftEmptyArrayStorage;
}

uint64_t static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v67 = v5;
  v61 = a5;
  v55 = a4;
  v66 = a3;
  v62._countAndFlagsBits = a2;
  v56 = type metadata accessor for DataFrame.Rows(0);
  v58 = *(v56 - 8);
  v6 = *(v58 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = &v55;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v65 = &v55;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v64 = a1;
  v16 = v67;
  result = static MLWordTagger.createTextColumn(_:name:context:)(a1, v62._countAndFlagsBits, v66, 0x6E656B6F54, 0xE500000000000000);
  if (v16)
  {
    return result;
  }

  v63 = v10;
  v66 = &v55;
  v67 = v9;
  v18 = v64;
  v19 = v55;
  static MLWordTagger.createTextColumn(_:name:context:)(v64, v55, v61, 0x6C6562614CLL, 0xE500000000000000);
  v61 = 0;
  v20 = v57;
  DataFrame.rows.getter(v18, v19, v21, v22);
  v23 = v20;
  v24 = specialized Collection.isEmpty.getter();
  v25 = *(v58 + 8);
  v26 = v20;
  v27 = v56;
  v28 = v56;
  v25(v26, v56);
  if (v24)
  {
    v31 = static os_log_type_t.default.getter(v26);
    v32._countAndFlagsBits = 0xD000000000000015;
    v32._object = "f tokens and labels at index " + 0x8000000000000000;
    log(_:type:)(v32, v31);
    v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
    *v34 = 0xD000000000000015;
    *(v34 + 8) = "f tokens and labels at index " + 0x8000000000000000;
    goto LABEL_18;
  }

  v35 = v23;
  DataFrame.rows.getter(v26, v28, v29, v30);
  v36 = DataFrame.Rows.count.getter();
  v25(v35, v27);
  v62._countAndFlagsBits = v36;
  v37 = v36 == 0;
  if (v36 < 0)
  {
    BUG();
  }

  v38 = v67;
  v39 = v66;
  if (v37)
  {
LABEL_16:
    v44 = *(v63 + 8);
    v44(v65, v38);
    return (v44)(v39, v38);
  }

  v40 = 0;
  while (1)
  {
    Column.subscript.getter(v40, v38);
    countAndFlagsBits = v60._countAndFlagsBits;
    if (v60._countAndFlagsBits)
    {
      v42 = *(v60._countAndFlagsBits + 16);
      v60._countAndFlagsBits;
    }

    else
    {
      v42 = 0;
    }

    Column.subscript.getter(v40, v67);
    if (v60._countAndFlagsBits)
    {
      break;
    }

    if (countAndFlagsBits)
    {
      goto LABEL_17;
    }

LABEL_15:
    ++v40;
    v38 = v67;
    v39 = v66;
    if (v62._countAndFlagsBits == v40)
    {
      goto LABEL_16;
    }
  }

  v43 = *(v60._countAndFlagsBits + 16);
  v60._countAndFlagsBits;
  if (countAndFlagsBits && v42 == v43)
  {
    goto LABEL_15;
  }

LABEL_17:
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v60._object;
  v62._countAndFlagsBits = (" contain string elements." + 0x8000000000000000);
  v64 = 0xD00000000000002DLL;
  v60._countAndFlagsBits = 0xD00000000000002DLL;
  v60._object = " contain string elements." + 0x8000000000000000;
  v59 = v40;
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v45._object;
  String.append(_:)(v45);
  object;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v48 = v60;
  v49 = static os_log_type_t.default.getter(46);
  log(_:type:)(v48, v49);
  v48._object;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v60._object;
  v60._countAndFlagsBits = v64;
  v60._object = v62._countAndFlagsBits;
  v59 = v40;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v51 = v50._object;
  String.append(_:)(v50);
  v51;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v62 = v60;
  v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
  *v34 = v62;
LABEL_18:
  *(v34 + 16) = 0;
  *(v34 + 32) = 0;
  *(v34 + 48) = 1;
  swift_willThrow();
  v53 = *(v63 + 8);
  v54 = v67;
  v53(v65, v67);
  return (v53)(v66, v54);
}

uint64_t static MLWordTagger.createTextColumn(_:name:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v58._object = v6;
  v57 = a5;
  v58._countAndFlagsBits = a4;
  v60._countAndFlagsBits = a3;
  v62 = a1;
  v59 = v5;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v52 = *(v53 - 8);
  v7 = *(v52 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v61._object = &v48;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[MLDataValue]>);
  v49 = *(v50 - 1);
  v10 = *(v49 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v51 = &v48;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v54 = *(v55 - 8);
  v13 = *(v54 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v56 = &v48;
  v16 = type metadata accessor for AnyColumn(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v61._countAndFlagsBits = a2;
  v21._countAndFlagsBits = a2;
  v21._object = v60._countAndFlagsBits;
  v22 = DataFrame.indexOfColumn(_:)(v21);
  if (v22.is_nil)
  {
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v23._countAndFlagsBits = v58._countAndFlagsBits;
    v23._object = v57;
    String.append(_:)(v23);
    v23._countAndFlagsBits = 0x206E6D756C6F6320;
    v23._object = 0xEE002720656D616ELL;
    String.append(_:)(v23);
    v23._countAndFlagsBits = v61._countAndFlagsBits;
    v23._object = v60._countAndFlagsBits;
    String.append(_:)(v23);
    v23._object = " a word tagger model." + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v23);
    v24 = v48;
    v25 = static os_log_type_t.error.getter();
    log(_:type:)(v24, v25);
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = v24;
LABEL_3:
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 1;
    return swift_willThrow();
  }

  value = v22.value;
  DataFrame.subscript.getter(v22.value);
  v30 = AnyColumn.wrappedElementType.getter(value);
  (*(v17 + 8))(&v48, v16);
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (swift_dynamicCastMetatype(v30, v31))
  {
    return DataFrame.subscript.getter(v61._countAndFlagsBits, v60._countAndFlagsBits, v31);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
  v33 = swift_dynamicCastMetatype(v30, v32);
  countAndFlagsBits = v60._countAndFlagsBits;
  if (v33)
  {
    v61._object = v31;
    v35 = v51;
    DataFrame.subscript.getter(v61._countAndFlagsBits, v60._countAndFlagsBits, v32);
    v60._countAndFlagsBits = &v48;
    v36 = alloca(32);
    v37 = alloca(32);
    v49 = v58._countAndFlagsBits;
    v50 = v57;
    v38 = v57;
    object = v58._object;
    Column.map<A>(_:)(partial apply for closure #1 in static MLWordTagger.createTextColumn(_:name:context:), &v48, v57, v61._object);
    result = (*(v49 + 8))(v35, v38);
    if (!object)
    {
      return (*(v54 + 32))(v59, v56, v55);
    }
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
    if (!swift_dynamicCastMetatype(v30, v40))
    {
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      v44 = v57;
      _StringGuts.grow(_:)(43);
      v45 = v48._object;

      v45;
      v48._countAndFlagsBits = v58._countAndFlagsBits;
      v48._object = v44;
      v46._object = " in the data frame." + 0x8000000000000000;
      v46._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v46);
      v60 = v48;
      v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
      *v27 = v60;
      goto LABEL_3;
    }

    DataFrame.subscript.getter(v61._countAndFlagsBits, countAndFlagsBits, v40);
    v41 = v31;
    v42 = v53;
    v43 = v61._object;
    Column.map<A>(_:)(closure #2 in static MLWordTagger.createTextColumn(_:name:context:), 0, v53, v41);
    return (*(v52 + 8))(v43, v42);
  }

  return result;
}

void *static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v30 = a4;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v28 = a1;
  DataFrame.subscript.getter(a2, v35, v32);
  v31 = &v25;
  v29 = v5;
  v33 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v9 = dispatch thunk of Sequence._copyToContiguousArray()(v5, v33);
  v10 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v35 = *(v9 + 16);
  if (v35)
  {

    v11 = _swiftEmptyArrayStorage;
    v12 = 0;
    v34 = v9;
    do
    {
      v13 = *(v9 + 8 * v12 + 32);
      if (v13)
      {

        if (!swift_isUniquelyReferenced_nonNull_native(v11))
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
        }

        v14 = v11[2];
        v15 = v11;
        if (v11[3] >> 1 <= v14)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v14 + 1, 1, v11);
        }

        v15[2] = v14 + 1;
        v11 = v15;
        v15[v14 + 4] = v13;
        v9 = v34;
      }

      ++v12;
    }

    while (v35 != v12);

    v10 = _swiftEmptyArrayStorage;
  }

  v26 = v11;

  DataFrame.subscript.getter(v30, v27, v32);
  v16 = dispatch thunk of Sequence._copyToContiguousArray()(v29, v33);
  v35 = *(v16 + 16);
  if (v35)
  {

    v10 = _swiftEmptyArrayStorage;
    v17 = 0;
    v34 = v16;
    do
    {
      v18 = *(v16 + 8 * v17 + 32);
      if (v18)
      {

        if (!swift_isUniquelyReferenced_nonNull_native(v10))
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
        }

        v19 = v10[2];
        v20 = v10;
        if (v10[3] >> 1 <= v19)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10[3] >= 2uLL, v19 + 1, 1, v10);
        }

        v20[2] = v19 + 1;
        v10 = v20;
        v20[v19 + 4] = v18;
        v16 = v34;
      }

      ++v17;
    }

    while (v35 != v17);
  }

  v21 = v26;
  v22 = v10;
  ML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySaySSGGAIG_AH6tokens_AH6labelsts5NeverOTg5046_sSaySSGA3AIgggoo_AA_AAtAA6tokens_AA6labelsts5h93OIegnrzr_TR082_s8CreateML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n(v26, v10);
  v22;
  v21;
  return ML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n;
}

void (*MLWordTagger.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

void MLWordTagger.model.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;

    *(v3 + 16) = v5;
  }

  else
  {

    *(v3 + 16) = v2;
  }
}

uint64_t MLWordTagger.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLWordTagger(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLWordTaggerMetrics);
}

uint64_t type metadata accessor for MLWordTagger(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLWordTagger;
  if (!type metadata singleton initialization cache for MLWordTagger)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLWordTagger);
  }

  return result;
}

uint64_t MLWordTagger.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLWordTagger(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLWordTaggerMetrics);
}

uint64_t MLWordTagger.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v15 = v2;
  v14 = type metadata accessor for DataFrame(0);
  v17 = *(v14 - 8);
  v4 = *(v17 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v16 = &v12;
  v7 = alloca(v4);
  v8 = alloca(v4);
  static MLWordTagger.generateTextDataFrame(_:tokenColumn:labelColumn:)(a1, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  if (v3)
  {
    outlined destroy of MLWordTagger.ModelParameters(v18);
    return a1;
  }

  else
  {
    a1;
    v10 = v16;
    v11 = v14;
    (*(v17 + 16))(v16, &v12, v14);
    outlined init with copy of MLWordTagger.ModelParameters(v18, v13);
    MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(v10, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000, v13);
    outlined destroy of MLWordTagger.ModelParameters(v18);
    return (*(v17 + 8))(&v12, v11);
  }
}

uint64_t static MLWordTagger.generateTextDataFrame(_:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v36 = a4;
  v31 = a2;
  v29[2] = v5;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v30 = *(v33 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v37 = v29;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v34 = a1;
  v12 = *(a1 + 16);

  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v32 = v29;
  Column.init(name:capacity:)(v31, a3, v12, v13);
  v14 = v38;

  v15 = v36;
  v38 = v13;
  Column.init(name:capacity:)(v36, v14, v12, v13);
  if (v12)
  {
    v16 = v34;

    v17 = (v16 + 40);
    do
    {
      v36 = v12;
      v18 = *v17;
      v35 = *(v17 - 1);

      v19 = v33;
      Column.append(_:)(&v35, v33);
      v35 = v18;
      v20 = v19;
      v21 = v36;
      Column.append(_:)(&v35, v20);
      v18;
      v17 += 2;
      v12 = v21 - 1;
    }

    while (v12);
    v15 = v34;
    v34;
  }

  DataFrame.init()(v15);
  v22 = v32;
  v23 = v38;
  DataFrame.append<A>(column:)(v32, v38);
  v24 = v37;
  DataFrame.append<A>(column:)(v37, v23);
  v25 = *(v30 + 8);
  v26 = v24;
  v27 = v33;
  v25(v26, v33);
  return (v25)(v22, v27);
}

uint64_t MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, __int128 *a6)
{
  v261 = a4;
  v273 = a3;
  v8 = v6;
  v257 = a2;
  v262 = v7;
  v265 = a6;
  v275 = a5;
  v268 = a1;
  v245 = type metadata accessor for DataFrame.Rows(0);
  v238 = *(v245 - 8);
  v9 = *(v238 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v246 = &v233;
  v12 = *(*(type metadata accessor for MLWordTaggerMetrics(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v247 = &v233;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v237 = &v233;
  v236 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v17 = *(*(v236 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v258 = &v233;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v241 = &v233;
  v252 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v23 = *(*(v252 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v254 = &v233;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v242 = &v233;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v274 = &v233;
  v272 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v260 = *(v272 - 8);
  v30 = v260[8];
  v31 = alloca(v30);
  v32 = alloca(v30);
  v244 = &v233;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v243 = &v233;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v253 = &v233;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v267 = &v233;
  v39 = alloca(v30);
  v40 = alloca(v30);
  v271 = &v233;
  v41 = alloca(v30);
  v42 = alloca(v30);
  v269 = &v233;
  v43 = type metadata accessor for DataFrame(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = alloca(v45);
  v47 = alloca(v45);
  v259 = &v233;
  v48 = alloca(v45);
  v49 = alloca(v45);
  v263 = v8;
  v8 += 24;
  outlined init with copy of MLWordTagger.ModelParameters(v265, v8);
  v251 = v8;
  MLWordTagger.ModelParameters.validateRevision()();
  v50 = v268;
  if (v51)
  {
    goto LABEL_2;
  }

  v266 = v44;
  v270 = &v233;
  v264 = v43;
  if (!*(v263 + 128) && *(v263 + 120) <= 0)
  {
    v59 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v59, 0, 0);
    *v60 = 0xD000000000000036;
    *(v60 + 8) = "bset of the training labels." + 0x8000000000000000;
    *(v60 + 16) = 0;
    *(v60 + 32) = 0;
    *(v60 + 48) = 0;
    swift_willThrow();
    v50 = v268;
    v43 = v264;
    v44 = v266;
LABEL_2:
    v52 = 0;
    (*(v44 + 8))(v50, v43);
    v273;
    v275;
    outlined destroy of MLWordTagger.ModelParameters(v265);
    goto LABEL_6;
  }

  v53 = v268;
  v54 = v257;
  v55 = v273;
  static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(v268, v257, v273, v261, v275);
  DataFrame.init()(v53);
  v58 = v268;
  static MLWordTagger.createTextColumn(_:name:context:)(v268, v54, v55, 0x6E656B6F54, 0xE500000000000000);
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v62 = v269;
  v255 = v61;
  DataFrame.append<A>(column:)(v269, v61);
  v256 = v260[1];
  v256(v62, v272);
  v63 = v271;
  static MLWordTagger.createTextColumn(_:name:context:)(v58, v261, v275, 0x6C6562614CLL, 0xE500000000000000);
  isa = 0;
  v250 = v254;
  v64 = v255;
  DataFrame.append<A>(column:)(v63, v255);
  v65 = v63;
  v66 = v272;
  (v256)(v65);
  v67 = v267;
  DataFrame.subscript.getter(v261, v275, v64);
  v68 = v66;
  v248 = v260[2];
  v248(v253, v67, v66);
  v69 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v70 = v274;
  v249 = v69;
  dispatch thunk of Sequence.makeIterator()(v68, v69);
  v269 = (v70 + *(v252 + 36));
  v262 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v271 = _swiftEmptyArrayStorage;
  v71 = v68;
LABEL_10:
  v72 = v274;
  v73 = v269;
  while (1)
  {
    v74 = v262;
    dispatch thunk of Collection.endIndex.getter(v71, v262);
    if (*v73 == v239)
    {
      break;
    }

    v75 = dispatch thunk of Collection.subscript.read(&v239, v73, v272, v74);
    v77 = *v76;

    v75(&v239, 0);
    v73 = v269;
    dispatch thunk of Collection.formIndex(after:)(v269, v272, v262);
    v71 = v272;
    if (v77)
    {
      v78 = v77;
      v79 = v271;
      if (!swift_isUniquelyReferenced_nonNull_native(v271))
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
      }

      v80 = v79[2];
      if (v79[3] >> 1 <= v80)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v79[3] >= 2, v80 + 1, 1, v79);
      }

      v79[2] = v80 + 1;
      v271 = v79;
      v79[v80 + 4] = v78;
      v71 = v272;
      goto LABEL_10;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v256(v267, v272);
  v81 = v271;
  v274 = v271[2];
  if (v274)
  {

    v82 = _swiftEmptyArrayStorage;
    v83 = 0;
    do
    {
      v84 = *(v81 + 8 * v83 + 32);
      v85 = *(v84 + 16);
      v86 = v82[2];
      v87 = v85 + v86;
      if (__OFADD__(v85, v86))
      {
        BUG();
      }

      v260 = v83;
      v269 = v84;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v82);
      if (!isUniquelyReferenced_nonNull_native || v82[3] >> 1 < v87)
      {
        if (v86 > v87)
        {
          v87 = v86;
        }

        v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v87, 1, v82);
      }

      v81 = v271;
      v89 = v269;
      if (v269[2])
      {
        v90 = v82[2];
        if ((v82[3] >> 1) - v90 < v85)
        {
          BUG();
        }

        swift_arrayInitWithCopy(&v82[2 * v90 + 4], (v269 + 4), v85, &type metadata for String);
        v89 = v269;
        if (v85)
        {
          v91 = __OFADD__(v82[2], v85);
          v92 = v82[2] + v85;
          if (v91)
          {
            BUG();
          }

          v82[2] = v92;
        }
      }

      else if (v85)
      {
        BUG();
      }

      v89;
      v83 = (v260 + 1);
    }

    while (v274 != (v260 + 1));
    v81;
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
  }

  v81;
  v93 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v82);
  *(v263 + 8) = v93;
  outlined init with copy of Any?((v265 + 2), &v234);
  v94 = v270;
  v95 = v258;
  if (!v235)
  {
    BUG();
  }

  outlined init with take of Any(&v234, &v239);

  swift_dynamicCast(v95, &v239, &type metadata for Any + 8, v236, 7);
  v96 = v273;
  v97 = v275;
  v98 = isa;
  MLWordTagger.ModelParameters.ValidationData.createValidationData(trainingData:tokenColumnName:labelColumnName:)(v94, v257, v273, v261, v275);
  isa = v98;
  v99 = v272;
  if (v98)
  {
    v100 = v93;
    v93;
    v96;
    v97;
    v101 = *(v266 + 8);
    v102 = v264;
    v101(v268, v264);
    outlined destroy of MLActivityClassifier.ModelParameters(v258, type metadata accessor for MLWordTagger.ModelParameters.ValidationData);
LABEL_38:
    v103 = v102;
    v52 = 0;
    v101(v270, v103);
    outlined destroy of MLWordTagger.ModelParameters(v265);
    v104 = v100;
LABEL_39:
    v104;
    goto LABEL_6;
  }

  v267 = v93;
  outlined destroy of MLActivityClassifier.ModelParameters(v258, type metadata accessor for MLWordTagger.ModelParameters.ValidationData);
  v105 = v241;
  v106 = v264;
  if (__swift_getEnumTagSinglePayload(v241, 1, v264) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for DataFrame?);
    v274 = _swiftEmptyArrayStorage;
    v107 = v261;
  }

  else
  {
    (*(v266 + 32))(v259, v105, v106);
    v117 = v243;
    DataFrame.subscript.getter(v261, v275, v255);
    v248(v253, v117, v99);
    v118 = v242;
    dispatch thunk of Sequence.makeIterator()(v99, v249);
    v269 = (v118 + *(v252 + 36));
    v274 = _swiftEmptyArrayStorage;
LABEL_45:
    v119 = v242;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter(v272, v262);
      if (*v269 == v239)
      {
        break;
      }

      v120 = v272;
      v121 = dispatch thunk of Collection.subscript.read(&v239, v269, v272, v262);
      v123 = *v122;

      v121(&v239, 0);
      dispatch thunk of Collection.formIndex(after:)(v269, v120, v262);
      if (v123)
      {
        v124 = v274;
        if (!swift_isUniquelyReferenced_nonNull_native(v274))
        {
          v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124[2] + 1, 1, v124);
        }

        v125 = v124[2];
        if (v124[3] >> 1 <= v125)
        {
          v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v124[3] >= 2, v125 + 1, 1, v124);
        }

        v124[2] = v125 + 1;
        v274 = v124;
        v124[v125 + 4] = v123;
        goto LABEL_45;
      }
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v119, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
    v256(v243, v272);
    v126 = v274;
    v271 = v274[2];
    if (v271)
    {

      v127 = _swiftEmptyArrayStorage;
      v128 = 0;
      do
      {
        v260 = v128;
        v129 = *(v126 + 8 * v128 + 32);
        v130 = *(v129 + 16);
        v131 = v127[2];
        v132 = v130 + v131;
        if (__OFADD__(v130, v131))
        {
          BUG();
        }

        v269 = v129;

        v133 = swift_isUniquelyReferenced_nonNull_native(v127);
        if (!v133 || v127[3] >> 1 < v132)
        {
          if (v131 > v132)
          {
            v132 = v131;
          }

          v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v133, v132, 1, v127);
        }

        v126 = v274;
        v134 = v269;
        if (v269[2])
        {
          v135 = v127[2];
          if ((v127[3] >> 1) - v135 < v130)
          {
            BUG();
          }

          swift_arrayInitWithCopy(&v127[2 * v135 + 4], (v269 + 4), v130, &type metadata for String);
          v134 = v269;
          if (v130)
          {
            v91 = __OFADD__(v127[2], v130);
            v136 = v127[2] + v130;
            if (v91)
            {
              BUG();
            }

            v127[2] = v136;
          }
        }

        else if (v130)
        {
          BUG();
        }

        v134;
        v128 = (v260 + 1);
      }

      while (v271 != (v260 + 1));
      v126;
    }

    else
    {
      v127 = _swiftEmptyArrayStorage;
    }

    v126;
    v150 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v127);
    v151 = v150;
    v100 = v267;
    v152 = specialized Set.isSubset(of:)(v267, v150);
    v151;
    v107 = v261;
    if ((v152 & 1) == 0)
    {
      v100;
      v273;
      v275;
      v157 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v157, 0, 0);
      *v158 = 0xD00000000000003CLL;
      *(v158 + 8) = "No validation data provided." + 0x8000000000000000;
      *(v158 + 16) = 0;
      *(v158 + 32) = 0;
      *(v158 + 48) = 2;
      swift_willThrow();
      v159 = *(v266 + 8);
      v160 = v264;
      v159(v268, v264);
      v159(v259, v160);
      v161 = v160;
      v52 = 0;
      v159(v270, v161);
      outlined destroy of MLWordTagger.ModelParameters(v265);
      v100;
LABEL_6:
      result = outlined destroy of MLWordTagger.ModelParameters(v251);
      if (v52)
      {
        v57 = type metadata accessor for MLWordTagger(0);
        return outlined destroy of MLActivityClassifier.ModelParameters(*(v57 + 32) + v263, type metadata accessor for MLWordTaggerMetrics);
      }

      return result;
    }

    v153 = v273;
    v154 = v275;
    v155 = isa;
    v156 = static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(v259, v257, v273, v261, v275);
    isa = v155;
    if (v155)
    {
      v100;
      v153;
      v154;
      v101 = *(v266 + 8);
      v102 = v264;
      v101(v268, v264);
      v101(v259, v102);
      goto LABEL_38;
    }

    v274 = v156;
    v106 = v264;
    (*(v266 + 8))(v259, v264);
  }

  v108 = v273;
  v109 = v107;
  v110 = v275;
  v111 = isa;
  v112 = static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(v270, v257, v273, v109, v275);
  isa = v111;
  if (v111)
  {
    v274;
    v113 = v267;
    v267;
    v108;
    v110;
    v114 = v106;
    v115 = *(v266 + 8);
    v115(v268, v114);
    v116 = v114;
    v52 = 0;
    v115(v270, v116);
    outlined destroy of MLWordTagger.ModelParameters(v265);
    v104 = v113;
    goto LABEL_39;
  }

  v271 = v112;
  v110;
  if (*(v263 + 40) == 1)
  {
    v258 = *v251;
    v137 = isa;
    ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySSG6tokens_AF6labelstG_AFs5NeverOTg5212_s8CreateML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n(v271);
    isa = v137;
    v269 = ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n[2];
    if (v269)
    {

      v139 = _swiftEmptyArrayStorage;
      v140 = 0;
      v260 = ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n;
      do
      {
        v261 = v140;
        v141 = ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n[v140 + 4];
        v142 = v141[2];
        v143 = v139[2];
        v144 = v142 + v143;
        if (__OFADD__(v142, v143))
        {
          BUG();
        }

        v275 = v141;

        v145 = swift_isUniquelyReferenced_nonNull_native(v139);
        v146 = v139;
        if (!v145 || v139[3] >> 1 < v144)
        {
          if (v143 > v144)
          {
            v144 = v143;
          }

          v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v145, v144, 1, v139);
        }

        v147 = v275;
        if (*(v275 + 2))
        {
          v148 = v146[2];
          if ((v146[3] >> 1) - v148 < v142)
          {
            BUG();
          }

          v139 = v146;
          swift_arrayInitWithCopy(&v146[2 * v148 + 4], v275 + 32, v142, &type metadata for String);
          v147 = v275;
          if (v142)
          {
            v91 = __OFADD__(v139[2], v142);
            v149 = v139[2] + v142;
            if (v91)
            {
              BUG();
            }

            v139[2] = v149;
          }
        }

        else
        {
          v139 = v146;
          if (v142)
          {
            BUG();
          }
        }

        v147;
        v140 = v261 + 1;
        ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n = v260;
      }

      while (v269 != (v261 + 1));
      v260;
    }

    else
    {
      v139 = _swiftEmptyArrayStorage;
    }

    ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n;
    v162 = *(v263 + 48);
    if (v162)
    {
      v163 = v162;
    }

    else
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLLanguageRecognizer, NLLanguageRecognizer_ptr);
      v171 = isa;
      v163 = static NLLanguageRecognizer.dominantLanguage(for:)(v139, &lazy cache variable for type metadata for NLLanguageRecognizer);
      isa = v171;
      if (v171)
      {
        v274;
        v100 = v267;
        v267;
        v273;
        v271;
        v139;
        v101 = *(v266 + 8);
        v102 = v264;
        v101(v268, v264);
        goto LABEL_38;
      }
    }

    v275 = v163;
    v139;
    if (v258 == 2)
    {
      v164 = &NLModelEmbeddingTypeContextual;
    }

    else
    {
      v164 = &NLModelEmbeddingTypeDynamic;
    }

    v165 = *v164;
    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)(*v164);
    v168 = v167;
    if (v166 ^ 0x6D6F74737543 | v167 ^ 0xE600000000000000)
    {
      v169 = _stringCompareWithSmolCheck(_:_:expecting:)(v166, v167, 0x6D6F74737543, 0xE600000000000000, 0);
      v170 = v165;
      v168;
      if (v169)
      {
      }

      else
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLEmbedding, NLEmbedding_ptr);
        v172 = v275;
        v173 = isa;
        static NLEmbedding.requestIfNotPresent(embeddingType:language:)(v170, v275);
        isa = v173;
        if (v173)
        {
          v274;
          v174 = v267;
          v267;
          v273;

          v271;
          v175 = *(v266 + 8);
          v176 = v264;
          v175(v268, v264);
          v175(v270, v176);
          outlined destroy of MLWordTagger.ModelParameters(v265);
          v104 = v174;
          v52 = 0;
          goto LABEL_39;
        }
      }
    }

    else
    {

      v168;
    }
  }

  v177 = v267;
  v178 = v274;

  v179 = isa;
  ML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5 = _s8CreateML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5(v271, v178, v251);
  isa = v179;
  v181 = v273;
  if (v179)
  {
    v178;
    v177;
    v181;
    v182 = *(v266 + 8);
    v183 = v264;
    v182(v268, v264);
    v178;
    v184 = v183;
    v52 = 0;
    v182(v270, v184);
    outlined destroy of MLWordTagger.ModelParameters(v265);
    v177;
    v104 = v271;
    goto LABEL_39;
  }

  v185 = ML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5;
  v178;
  *v263 = v185;
  v186 = v185;
  v187.super.isa = NLModel.asCoreML()().super.isa;
  if (v188.super.isa)
  {
    v272 = 0;
    v178;
    v267;

    v273;
    isa = v188.super.isa;
    v189 = v188.super.isa;
LABEL_116:
    v271;
    v191 = *(v266 + 8);
    v192 = v264;
    v191(v268, v264);
    v191(v270, v192);
    outlined destroy of MLWordTagger.ModelParameters(v265);

    v267;
    if (!v189)
    {
    }

    v52 = v272;
    goto LABEL_6;
  }

  *(v263 + 16) = v187;
  v190 = v237;
  v275 = 0;
  static MLWordTagger.evaluate(on:using:)(v271, v186);
  isa = 0;
  v271;
  v193 = type metadata accessor for MLWordTagger(0);
  outlined init with take of MLWordTaggerMetrics(v190, v263 + *(v193 + 32));
  if (v274[2])
  {
    v194 = isa;
    static MLWordTagger.evaluate(on:using:)(v274, v186);
    isa = v194;
    if (v194)
    {
      v267;

      v195 = v274;
      LOBYTE(v195) = 1;
      v272 = v195;
      v271 = v273;
      v189 = v275;
      goto LABEL_116;
    }

    v274;

    outlined init with take of MLWordTaggerMetrics(v247, *(v193 + 36) + v263);
  }

  else
  {

    v274;
    v196 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v197 = swift_allocError(&type metadata for MLCreateError, v196, 0, 0);
    *v198 = 0xD00000000000001CLL;
    *(v198 + 8) = "CreateML/MLClassifier.swift" + 0x8000000000000000;
    *(v198 + 16) = 0;
    *(v198 + 32) = 0;
    *(v198 + 48) = 2;
    v199 = (v263 + *(v193 + 36));
    *v199 = v197;
    v200 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v199, v200, 2);
  }

  v201 = v244;
  v202 = v273;
  DataFrame.subscript.getter(v257, v273, v255);
  v202;
  v203 = v272;
  v248(v253, v201, v272);
  dispatch thunk of Sequence.makeIterator()(v203, v249);
  v254 = (v254 + *(v252 + 36));
  v273 = _swiftEmptyArrayStorage;
  v204 = v272;
LABEL_128:
  v205 = v254;
  v206 = v250;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v204, v262);
    if (*v205 == v239)
    {
      break;
    }

    v263 = dispatch thunk of Collection.subscript.read(&v239, v205, v204, v262);
    v275 = *v207;

    (v263)(&v239, 0);
    dispatch thunk of Collection.formIndex(after:)(v205, v204, v262);
    if (v275)
    {
      v208 = *(v275 + 2);
      v275;
      if (!swift_isUniquelyReferenced_nonNull_native(v273))
      {
        v273 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v273[2] + 1, 1, v273);
      }

      v209 = v273[2];
      if (v273[3] >> 1 <= v209)
      {
        v273 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v273[3] >= 2, v209 + 1, 1, v273);
      }

      v210 = v273;
      v273[2] = v209 + 1;
      v210[v209 + 4] = v208;
      goto LABEL_128;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v206, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v211 = v204;
  v256(v244, v204);
  v212 = v273[2];
  if (v212)
  {
    v213 = 0;
    v214 = 0;
    v215 = v273;
    do
    {
      v91 = __OFADD__(v273[v213 + 4], v214);
      v214 += v273[v213 + 4];
      if (v91)
      {
        BUG();
      }

      ++v213;
    }

    while (v212 != v213);
    v273;
    v218 = v214;
  }

  else
  {
    v215 = v273;
    v273;
    v218 = 0.0;
  }

  *&v275 = v218;
  v219 = v246;
  DataFrame.rows.getter(v215, v211, v216, v217);
  v220 = specialized Collection.isEmpty.getter();
  v221 = *(v238 + 8);
  v222 = v219;
  v223 = v245;
  v221(v219, v245);
  LODWORD(v272) = 0;
  if (!v220)
  {
    v226 = v246;
    DataFrame.rows.getter(v222, v223, v224, v225);
    v227 = DataFrame.Rows.count.getter();
    v221(v226, v245);
    *&v272 = *&v275 / v227;
  }

  v228 = v267[2];
  v267;
  v229 = v265;
  v230 = *(v265 + 16);
  v239 = *v265;
  v240 = v230;
  static MLWordTagger.reportAnalytics(averageTokenCount:labelCount:algorithm:language:)(v228, &v239, *(v265 + 3), *&v272);
  v231 = *(v266 + 8);
  v232 = v264;
  v231(v268, v264);
  v231(v270, v232);
  return outlined destroy of MLWordTagger.ModelParameters(v229);
}

uint64_t specialized Set.isSubset(of:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    LODWORD(v2) = 0;
    return v2;
  }

  v3 = a2;
  v32 = a1;
  v4 = -1 << *(a2 + 32);
  v30 = ~v4;
  v5 = ~(-1 << -v4);
  if (-v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a2 + 56) & v5;
  v33 = a2 + 56;
  v34 = (63 - v4) >> 6;

  v7 = 0;
  v31 = v3;
  while (1)
  {
    v8 = v7;
    v9 = v6;
    if (v6)
    {
      goto LABEL_25;
    }

    v10 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    LOBYTE(v2) = 1;
    if (v10 >= v34)
    {
      goto LABEL_36;
    }

    v9 = *(v33 + 8 * v10);
    if (v9)
    {
      ++v7;
      goto LABEL_25;
    }

    v7 += 2;
    if (v8 + 2 >= v34)
    {
      goto LABEL_36;
    }

    v9 = *(v33 + 8 * v10 + 8);
    if (!v9)
    {
      v7 = v8 + 3;
      if (v8 + 3 >= v34)
      {
        goto LABEL_36;
      }

      v9 = *(v33 + 8 * v10 + 16);
      if (!v9)
      {
        v7 = v8 + 4;
        if (v8 + 4 >= v34)
        {
          goto LABEL_36;
        }

        v9 = *(v33 + 8 * v10 + 24);
        if (!v9)
        {
          v7 = v8 + 5;
          if (v8 + 5 >= v34)
          {
            goto LABEL_36;
          }

          v9 = *(v33 + 8 * v10 + 32);
          if (!v9)
          {
            v7 = v8 + 6;
            if (v8 + 6 >= v34)
            {
              goto LABEL_36;
            }

            v9 = *(v33 + 8 * v10 + 40);
            if (!v9)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    if (!*(v32 + 16))
    {
      LODWORD(v2) = 0;
      goto LABEL_36;
    }

    v29 = v8;
    v28 = v6;
    v27 = v9;
    _BitScanForward64(&v12, v9);
    v13 = *(v3 + 48);
    v26 = v7;
    v14 = (v7 << 10) | (16 * v12);
    v15 = *(v13 + v14);
    v2 = *(v13 + v14 + 8);
    Hasher.init(_seed:)(*(v32 + 40));

    String.hash(into:)(v25, v15);
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(v32 + 32));
    v18 = v17 & v16;
    v19 = *(v32 + 8 * ((v17 & v16) >> 6) + 56);
    if (!_bittest64(&v19, v18))
    {
LABEL_34:
      v2;
      LODWORD(v2) = 0;
      v3 = v31;
      goto LABEL_36;
    }

    v20 = *(v32 + 48);
    while (1)
    {
      v21 = *(v20 + 16 * v18);
      v22 = *(v20 + 16 * v18 + 8);
      if (v21 == v15 && v22 == v2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)(v21, v22, v15, v2, 0))
      {
        break;
      }

      v18 = v17 & (v18 + 1);
      v23 = *(v32 + 8 * (v18 >> 6) + 56);
      if (!_bittest64(&v23, v18))
      {
        goto LABEL_34;
      }
    }

    v6 = v27 & (v27 - 1);
    v2;
    v3 = v31;
    v7 = v26;
  }

  v11 = v8 + 7;
  while (v11 < v34)
  {
    v9 = *(v3 + 8 * v11++ + 56);
    if (v9)
    {
      v7 = v11 - 1;
      goto LABEL_25;
    }
  }

LABEL_36:
  outlined consume of [String : [Double]].Iterator._Variant(v3);
  return v2;
}

char *_s8CreateML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5(uint64_t a1, char *a2, uint64_t a3)
{
  TrainedModelWithData = a2;
  v5 = static MLWordTagger.buildOptions(_:)(a3);
  if (!v3)
  {
    v37 = v5;
    v6 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v33 = *(a1 + 16);
    if (v33)
    {
      aBlock = _swiftEmptyArrayStorage;
      v7 = v33;
      specialized ContiguousArray.reserveCapacity(_:)(v33);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v8 = (a1 + 40);
      do
      {
        v38 = *(v8 - 1);
        v9 = *v8;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v11 = swift_allocObject(v10, 160, 7);
        v11[2] = 2;
        v11[3] = 4;
        v11[7] = &type metadata for String;
        v11[4] = 0x7272416C6562614CLL;
        v11[5] = 0xEA00000000007961;
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v11[11] = v12;
        v11[8] = v9;
        v11[15] = &type metadata for String;
        v11[12] = 0x7272416E656B6F54;
        v11[13] = 0xEA00000000007961;
        v11[19] = v12;
        v11[16] = v38;

        NSDictionary.init(dictionaryLiteral:)(v11);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v11);
        v13 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v13);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13);
        specialized ContiguousArray._endMutation()(v13);
        v8 += 2;
        --v7;
      }

      while (v7);
      v35 = aBlock;
      v6 = _swiftEmptyArrayStorage;
      TrainedModelWithData = a2;
    }

    v34 = *(TrainedModelWithData + 2);
    if (v34)
    {
      aBlock = _swiftEmptyArrayStorage;
      v14 = v34;
      specialized ContiguousArray.reserveCapacity(_:)(v34);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v15 = TrainedModelWithData + 40;
      do
      {
        v40 = v15;
        v39 = *(v15 - 1);
        v16 = *v15;
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v18 = swift_allocObject(v17, 160, 7);
        v18[2] = 2;
        v18[3] = 4;
        v18[7] = &type metadata for String;
        v18[4] = 0x7272416C6562614CLL;
        v18[5] = 0xEA00000000007961;
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v18[11] = v19;
        v18[8] = v16;
        v18[15] = &type metadata for String;
        v18[12] = 0x7272416E656B6F54;
        v18[13] = 0xEA00000000007961;
        v18[19] = v19;
        v18[16] = v39;

        NSDictionary.init(dictionaryLiteral:)(v18);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v18);
        v20 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v20);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20);
        specialized ContiguousArray._endMutation()(v20);
        v15 = v40 + 2;
        --v14;
      }

      while (v14);
      v6 = aBlock;
    }

    v47 = 0;
    v21 = v35;
    if ((((v35 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v35)) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
    }

    v36 = v21;
    v22 = v21 & 0xFFFFFFFFFFFFF8;
    if ((((v6 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v6)) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    v45 = implicit closure #1 in closure #1 in closure #3 in static MLWordTagger.createWordTaggerModel<A, B>(trainingExamples:validatingExamples:modelParameters:);
    v46 = 0;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Unmanaged<CFDictionaryRef>?);
    v44 = &block_descriptor_0;
    v23 = _Block_copy(&aBlock);
    v45 = MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
    v46 = 0;
    v24 = v23;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @unowned UnsafeMutablePointer<Bool>?) -> ();
    v44 = &block_descriptor_4;
    v32 = _Block_copy(&aBlock);
    TrainedModelWithData = NLPSequenceModelCreateTrainedModelWithData(v37, v33, v34, v22 + 32, (v6 & 0xFFFFFFFFFFFFF8) + 32);
    _Block_release(v32);
    _Block_release(v24);
    v36;
    v25 = v47;
    if (v47)
    {
      v26 = type metadata accessor for CFErrorRef(0);
      v27 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, &protocol conformance descriptor for CFErrorRef);
      TrainedModelWithData = swift_allocError(v26, v27, 0, 0);
      *v28 = v25;
      swift_willThrow();
      v6;
    }

    else
    {
      if (!TrainedModelWithData)
      {
        TrainedModelWithData = "v24@?0r^{__CFString=}8^B16" + 0x8000000000000000;
        v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
        *v31 = 0xD000000000000025;
        *(v31 + 8) = "v24@?0r^{__CFString=}8^B16" + 0x8000000000000000;
        *(v31 + 16) = 0;
        *(v31 + 32) = 0;
        *(v31 + 48) = 0;
        swift_willThrow();
      }

      v6;
    }
  }

  return TrainedModelWithData;
}

char static MLWordTagger.reportAnalytics(averageTokenCount:labelCount:algorithm:language:)(uint64_t a1, uint64_t *a2, uint64_t a3, Swift::Float a4)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordTagger, __PAIR128__(("WordTagger\n\nParameters\n" + 0x8000000000000000), 0xD00000000000001BLL), a4);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordTagger, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), a1);
    if (v6)
    {
      v8 = a3;
      if (v5)
      {
        if (v5 == 1)
        {
          v9 = 0xD000000000000027;
          v10 = "Unspecified Language";
        }

        else
        {
          v9 = 0xD000000000000046;
          v10 = "Average Tokens per Sequence";
        }
      }

      else
      {
        v9 = 0xD000000000000016;
        v10 = "ge Model Text Embedding";
      }

      v17 = v9;

      v13._countAndFlagsBits = 0x6C65646F4D20;
      v13._object = 0xE600000000000000;
      String.append(_:)(v13);
      v10;
      v12 = v17;
      v11 = (v10 | 0x8000000000000000);
    }

    else
    {
      v11 = "Dynamic Text Embedding" + 0x8000000000000000;
      v12 = 0xD00000000000001ELL;
      v8 = a3;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_wordTagger, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v11, v12));
    v11;
    if (v8)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(v8);
      v16 = v15;
    }

    else
    {
      v16 = "formers Text Embedding" + 0x8000000000000000;
      v14 = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_wordTagger, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), __PAIR128__(v16, v14));
    return v16;
  }

  return result;
}

uint64_t MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a5;
  v7 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  *&v13[0] = *a1;
  BYTE8(v13[0]) = v10;
  DataFrame.init(_:)(v13);
  outlined init with copy of MLWordTagger.ModelParameters(a6, v13);
  MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(&v12, v16, v15, v14, v17, v13);
  return outlined destroy of MLWordTagger.ModelParameters(a6);
}

void *closure #1 in static MLWordTagger.createTextColumn(_:name:context:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v8 = result;

    ML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n(v5, a2, a3);
    result = v5;
    if (v4)
    {
      return result;
    }

    result = v8;
  }

  else
  {
    ML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n = 0;
  }

  *result = ML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n;
  return result;
}

void *closure #2 in static MLWordTagger.createTextColumn(_:name:context:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (v3)
  {
    result = specialized _arrayConditionalCast<A, B>(_:)(v3);
  }

  else
  {
    result = 0;
  }

  *v2 = result;
  return result;
}

uint64_t static MLWordTagger.generateTextTable(_:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v36 = a3;
  v39 = v5;
  v38 = a2;
  v35 = a5;
  v7 = *(a1 + 16);
  if (v7)
  {

    v40 = a1;
    v8 = (a1 + 40);
    v9 = _swiftEmptyArrayStorage;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v8;
      v34 = *(v8 - 1);

      v43 = v10;

      v44 = v7;
      if (!swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v11 = v9[2];
      v45 = v9;
      v12 = ML14_UntypedColumnC_s5Error_pTt1g5;
      if (v9[3] >> 1 <= v11)
      {
        v12 = ML14_UntypedColumnC_s5Error_pTt1g5;
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v11 + 1, 1, v45);
      }

      v13 = v45;
      v45[2] = v11 + 1;
      *(v13 + 8 * v11 + 32) = v34;
      if (swift_isUniquelyReferenced_nonNull_native(v12))
      {
        v14 = ML14_UntypedColumnC_s5Error_pTt1g5;
      }

      else
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ML14_UntypedColumnC_s5Error_pTt1g5[2] + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
      }

      v15 = v14[2];
      if (v14[3] >> 1 <= v15)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14[3] >= 2uLL, v15 + 1, 1, v14);
      }

      v14[2] = v15 + 1;
      ML14_UntypedColumnC_s5Error_pTt1g5 = v14;
      v14[v15 + 4] = v43;
      v8 += 2;
      v7 = v44 - 1;
      v9 = v45;
    }

    while (v44 != 1);
    v40;
    v16 = ML14_UntypedColumnC_s5Error_pTt1g5;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
  }

  v41 = v9;
  v17 = alloca(24);
  v18 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  LOBYTE(v43) = v19;
  v41;
  v41 = v16;
  v20 = alloca(24);
  v21 = alloca(32);
  v33 = &v41;
  v45 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  LOBYTE(v44) = v22;
  v41;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v23, v32);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *(inited + 32) = v38;
  *(inited + 40) = v36;
  v25 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(inited + 48) = ML14_UntypedColumnC_s5Error_pTt1g5;
  v26 = v43;
  *(inited + 56) = v43 & 1;
  *(inited + 64) = v37;
  *(inited + 72) = v35;
  *(inited + 80) = v45;
  *(inited + 88) = v44 & 1;

  outlined copy of Result<_DataTable, Error>(v25, v26);

  LOBYTE(v25) = v44;
  v27 = v45;
  outlined copy of Result<_DataTable, Error>(v45, v44);
  v28 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v28);
  outlined consume of Result<_DataTable, Error>(v27, v25);
  result = outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v26);
  if (!v6)
  {
    result = v41;
    v30 = v42;
    v31 = v39;
    *v39 = v41;
    *(v31 + 8) = v30;
  }

  return result;
}

void *MLWordTagger.debugDescription.getter()
{
  v1 = v0;
  v23._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v23._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v23._countAndFlagsBits = MLWordTagger.ModelParameters.description.getter();
  v6 = v5;
  v7 = type metadata accessor for MLWordTagger(0);
  v20._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v20._object = v8;
  v9 = *(v7 + 36);
  v10 = v6;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v19, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v23._object) = swift_getEnumCaseMultiPayload(&v19, v23._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v19, type metadata accessor for MLClassifierMetrics.Contents);
  v21._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v12 = v11;
  v21._object = 0xD000000000000017;
  v22 = "er than or equal to 1." + 0x8000000000000000;
  v13._countAndFlagsBits = v23._countAndFlagsBits;
  v23._countAndFlagsBits = v10;
  v13._object = v10;
  String.append(_:)(v13);
  v19._countAndFlagsBits = 0xD00000000000001ELL;
  v19._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v20._object;
  String.append(_:)(v20);
  LOBYTE(v1) = v19._object;
  String.append(_:)(v19);
  v1;
  if (LODWORD(v23._object) > 1)
  {
    v17 = object;
  }

  else
  {
    v19._countAndFlagsBits = 0xD000000000000020;
    v19._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v15._countAndFlagsBits = v21._countAndFlagsBits;
    v15._object = v12;
    String.append(_:)(v15);
    v16 = v19._object;
    String.append(_:)(v19);
    object;
    v17 = v12;
    LOBYTE(v12) = v16;
  }

  v17;
  v12;
  v23._countAndFlagsBits;
  return v21._object;
}

NSAttributedString MLWordTagger.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLWordTagger.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t outlined init with take of MLWordTaggerMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLWordTaggerMetrics(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

id sub_72F74()
{
  v1 = v0;
  result = MLWordTagger.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLWordTagger(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) == 0)
  {
    *(a1 + 1) = a2[1];
    v48 = a2[2];
    *(a1 + 2) = v48;
    *(a1 + 24) = *(a2 + 3);
    a1[40] = *(a2 + 40);
    v7 = a2[6];
    *(a1 + 6) = v7;
    v54 = a1 + 56;
    v56 = a2 + 7;
    v8 = a2[10];
    v5;

    v48;
    v7;
    if (v8)
    {
      *(a1 + 10) = v8;
      (**(v8 - 1))(v54, v56, v8);
    }

    else
    {
      v9 = *v56;
      *(a1 + 72) = *(a2 + 9);
      *v54 = v9;
    }

    *(a1 + 11) = a2[11];
    *(a1 + 12) = a2[12];
    *(a1 + 13) = a2[13];
    *(a1 + 14) = a2[14];
    *(a1 + 15) = a2[15];
    a1[128] = *(a2 + 128);
    v10 = *(a3 + 32);
    v57 = &a1[v10];
    v11 = (a2 + v10);
    v12 = type metadata accessor for MLClassifierMetrics.Contents(0);

    v55 = v12;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v12);
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v11;
      swift_errorRetain(v20);
      *v57 = v20;
      v19 = v57;
    }

    else
    {
      v49 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload != 1)
      {
        v51 = v11;
        v21 = a3;
        v19 = v57;
        v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v22 = swift_getEnumCaseMultiPayload(v51, v47);
        v23 = v22 == 1;
        v24 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v22 == 1)
        {
          v24 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v25 = __swift_instantiateConcreteTypeFromMangledName(v24);
        (*(*(v25 - 8) + 16))(v57, v51, v25);
        swift_storeEnumTagMultiPayload(v57, v47, v23);
        EnumCaseMultiPayload = v49;
LABEL_14:
        swift_storeEnumTagMultiPayload(v19, v55, EnumCaseMultiPayload);
        v26 = *(v21 + 36);
        v27 = &a1[v26];
        v28 = (a2 + v26);
        v29 = swift_getEnumCaseMultiPayload(v28, v55);
        if (v29 == 2)
        {
          v34 = *v28;
          swift_errorRetain(v34);
          *v27 = v34;
          v44 = 2;
        }

        else
        {
          if (v29 != 1)
          {
            v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
            v39 = swift_getEnumCaseMultiPayload(v28, v38);
            v40 = v39 == 1;
            v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
            if (v39 == 1)
            {
              v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
            }

            v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
            (*(*(v42 - 8) + 16))(v27, v28, v42);
            swift_storeEnumTagMultiPayload(v27, v38, v40);
            v36 = v27;
            v37 = v55;
            v35 = 0;
            goto LABEL_22;
          }

          *v27 = *v28;
          v53 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v30 = *(v53 + 20);
          v58 = &v27[v30];
          v31 = type metadata accessor for DataFrame(0);
          v32 = v28 + v30;
          v33 = *(*(v31 - 8) + 16);
          v33(v58, v32, v31);
          v33(&v27[*(v53 + 24)], v28 + *(v53 + 24), v31);
          v44 = 1;
        }

        v35 = v44;
        v36 = v27;
        v37 = v55;
LABEL_22:
        swift_storeEnumTagMultiPayload(v36, v37, v35);
        return a1;
      }

      *v57 = *v11;
      v46 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = *(v46 + 20);
      v45 = &v57[v14];
      v15 = type metadata accessor for DataFrame(0);
      v50 = *(*(v15 - 8) + 16);
      v16 = v11 + v14;
      EnumCaseMultiPayload = 1;
      v50(v45, v16, v15);
      v17 = *(v46 + 24);
      v18 = v11 + v17;
      v19 = v57;
      v50(&v57[v17], v18, v15);
    }

    v21 = a3;
    goto LABEL_14;
  }

  a1 = &v5[(v4 + 16) & ~v4];

  return a1;
}

uint64_t destroy for MLWordTagger(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  *(a1 + 8);
  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  *(a1 + 96);
  *(a1 + 112);
  v4 = (a1 + *(a2 + 32));
  v5 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4, v5);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v4;
      break;
    case 1:
      v25 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v9 = v4 + *(v25 + 20);
      v10 = type metadata accessor for DataFrame(0);
      v11 = v9;
      v12 = *(*(v10 - 8) + 8);
      v12(v11, v10);
      v13 = v10;
      v2 = a2;
      v12(v4 + *(v25 + 24), v13);
      break;
    case 0:
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v4, v7) == 1)
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledName(v8);
      (*(*(v14 - 8) + 8))(v4, v14);
      break;
  }

  v15 = (*(v2 + 36) + a1);
  result = swift_getEnumCaseMultiPayload(v15, v5);
  switch(result)
  {
    case 2:
      return *v15;
    case 1:
      v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v20 = v15 + *(v19 + 20);
      v21 = type metadata accessor for DataFrame(0);
      v22 = *(*(v21 - 8) + 8);
      v22(v20, v21);
      return (v22)(v15 + *(v19 + 24), v21);
    case 0:
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v15, v17) == 1)
      {
        v18 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v18 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledName(v18);
      return (*(*(v23 - 8) + 8))(v15, v23);
  }

  return result;
}

uint64_t initializeWithCopy for MLWordTagger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v48 = *(a2 + 16);
  *(a1 + 16) = v48;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  v50 = (a1 + 56);
  v52 = (a2 + 56);
  v7 = *(a2 + 80);
  v5;

  v48;
  v6;
  if (v7)
  {
    *(a1 + 80) = v7;
    (**(v7 - 8))(v50, v52, v7);
  }

  else
  {
    v8 = *v52;
    *(a1 + 72) = *(a2 + 72);
    *v50 = v8;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v9 = *(a3 + 32);
  v53 = (a1 + v9);
  v10 = (a2 + v9);
  v11 = type metadata accessor for MLClassifierMetrics.Contents(0);

  v51 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v10, v11);
  v43 = a1;
  if (EnumCaseMultiPayload == 2)
  {
    v22 = *v10;
    swift_errorRetain(v22);
    v13 = v53;
    *v53 = v22;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v13 = v53;
    *v53 = *v10;
    v44 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v14 = v10;
    v15 = *(v44 + 20);
    v42 = v53 + v15;
    v16 = type metadata accessor for DataFrame(0);
    v17 = v14 + v15;
    v18 = *(*(v16 - 8) + 16);
    v18(v42, v17, v16);
    v19 = *(v44 + 24);
    v20 = v14 + v19;
    v21 = v16;
    EnumCaseMultiPayload = 1;
    a1 = v43;
    v18(v53 + v19, v20, v21);
  }

  else
  {
    v13 = v53;
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v23 = swift_getEnumCaseMultiPayload(v10, v49);
    v45 = v10;
    v24 = v23 == 1;
    v25 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v23 == 1)
    {
      v25 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledName(v25);
    (*(*(v26 - 8) + 16))(v53, v45, v26);
    swift_storeEnumTagMultiPayload(v53, v49, v24);
  }

  swift_storeEnumTagMultiPayload(v13, v51, EnumCaseMultiPayload);
  v27 = *(a3 + 36);
  v28 = (v27 + a1);
  v29 = (v27 + a2);
  v30 = swift_getEnumCaseMultiPayload(v29, v51);
  if (v30 == 2)
  {
    v35 = *v29;
    swift_errorRetain(*v29);
    *v28 = v35;
  }

  else if (v30 == 1)
  {
    *v28 = *v29;
    v47 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v31 = *(v47 + 20);
    v54 = v28 + v31;
    v32 = type metadata accessor for DataFrame(0);
    v33 = v29 + v31;
    v34 = *(*(v32 - 8) + 16);
    v34(v54, v33, v32);
    v34(v28 + *(v47 + 24), v29 + *(v47 + 24), v32);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v37 = swift_getEnumCaseMultiPayload(v29, v36);
    v38 = v37 == 1;
    v39 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v37 == 1)
    {
      v39 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledName(v39);
    (*(*(v40 - 8) + 16))(v28, v29, v40);
    swift_storeEnumTagMultiPayload(v28, v36, v38);
  }

  swift_storeEnumTagMultiPayload(v28, v51, v30);
  return v43;
}

uint64_t assignWithCopy for MLWordTagger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7;
  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  v8;

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  v10 = *(a1 + 48);
  v11 = *(a2 + 48);
  *(a1 + 48) = v11;
  v11;

  v12 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v12)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 56), (a2 + 56));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  else if (v12)
  {
    *(a1 + 80) = v12;
    (**(v12 - 8))(a1 + 56, a2 + 56);
    goto LABEL_8;
  }

  v13 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v13;
LABEL_8:
  *(a1 + 88) = *(a2 + 88);
  v14 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v14;
  *(a1 + 104) = *(a2 + 104);
  v15 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  v15;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  if (a1 != a2)
  {
    v16 = *(a3 + 32);
    v17 = (a1 + v16);
    v18 = (a2 + v16);
    outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLClassifierMetrics.Contents);
    v44 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v18, v44);
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *v18;
      swift_errorRetain(*v18);
      *v17 = v22;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v17 = *v18;
      v45 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v20 = *(v45 + 20);
      v42 = v17 + v20;
      v43 = type metadata accessor for DataFrame(0);
      v49 = *(*(v43 - 8) + 16);
      v21 = v18 + v20;
      EnumCaseMultiPayload = 1;
      v49(v42, v21, v43);
      v49(v17 + *(v45 + 24), v18 + *(v45 + 24), v43);
    }

    else
    {
      v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v23 = swift_getEnumCaseMultiPayload(v18, v52);
      v50 = v23 == 1;
      v24 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v23 == 1)
      {
        v24 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v25 = __swift_instantiateConcreteTypeFromMangledName(v24);
      (*(*(v25 - 8) + 16))(v17, v18, v25);
      swift_storeEnumTagMultiPayload(v17, v52, v50);
    }

    v26 = v17;
    v27 = v44;
    swift_storeEnumTagMultiPayload(v26, v44, EnumCaseMultiPayload);
    v28 = *(a3 + 36);
    v29 = (a1 + v28);
    v30 = (v28 + a2);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v28, type metadata accessor for MLClassifierMetrics.Contents);
    v31 = swift_getEnumCaseMultiPayload(v30, v44);
    if (v31 == 2)
    {
      v36 = *v30;
      swift_errorRetain(v36);
      *v29 = v36;
    }

    else
    {
      v48 = v31;
      if (v31 == 1)
      {
        *v29 = *v30;
        v51 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v32 = *(v51 + 20);
        v46 = v29 + v32;
        v33 = type metadata accessor for DataFrame(0);
        v53 = *(*(v33 - 8) + 16);
        v34 = v30 + v32;
        v31 = 1;
        v53(v46, v34, v33);
        v35 = v33;
        v27 = v44;
        v53(v29 + *(v51 + 24), v30 + *(v51 + 24), v35);
      }

      else
      {
        v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v37 = swift_getEnumCaseMultiPayload(v30, v54);
        v38 = v37 == 1;
        v39 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v37 == 1)
        {
          v39 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v40 = __swift_instantiateConcreteTypeFromMangledName(v39);
        (*(*(v40 - 8) + 16))(v29, v30, v40);
        swift_storeEnumTagMultiPayload(v29, v54, v38);
        v31 = v48;
      }
    }

    swift_storeEnumTagMultiPayload(v29, v27, v31);
  }

  return a1;
}

void *initializeWithTake for MLWordTagger(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  qmemcpy(a1 + 3, a2 + 3, 0x69uLL);
  v6 = *(a3 + 32);
  __dst = a1 + v6;
  v7 = a2 + v6;
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
  v40 = v8;
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *v7;
    v42 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v45 = v3;
    v18 = *(v42 + 20);
    v39 = &__dst[v18];
    v19 = type metadata accessor for DataFrame(0);
    v43 = *(*(v19 - 8) + 32);
    v20 = &v7[v18];
    v3 = v45;
    v43(v39, v20, v19);
    v21 = v19;
    v8 = v40;
    v43(&__dst[*(v42 + 24)], &v7[*(v42 + 24)], v21);
    v17 = 1;
    v15 = __dst;
    v16 = v40;
LABEL_7:
    swift_storeEnumTagMultiPayload(v15, v16, v17);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v10 = swift_getEnumCaseMultiPayload(v7, v41);
    v44 = v3;
    v11 = v10 == 1;
    v12 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v10 == 1)
    {
      v12 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledName(v12);
    (*(*(v13 - 8) + 32))(__dst, v7, v13);
    v14 = v11;
    v3 = v44;
    swift_storeEnumTagMultiPayload(__dst, v41, v14);
    v15 = __dst;
    v16 = v8;
    v17 = 0;
    goto LABEL_7;
  }

  memcpy(__dst, v7, *(*(v8 - 8) + 64));
LABEL_9:
  v22 = *(v3 + 36);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = swift_getEnumCaseMultiPayload(v24, v8);
  if (v25 == 1)
  {
    *v23 = *v24;
    __dsta = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v34 = __dsta[5];
    v46 = &v23[v34];
    v35 = type metadata accessor for DataFrame(0);
    v36 = &v24[v34];
    v37 = *(*(v35 - 8) + 32);
    v37(v46, v36, v35);
    v37(&v23[__dsta[6]], &v24[__dsta[6]], v35);
    v33 = 1;
    v31 = v23;
    v32 = v40;
  }

  else
  {
    if (v25)
    {
      memcpy(v23, v24, *(*(v8 - 8) + 64));
      return a1;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v24, v26);
    v28 = v27 == 1;
    v29 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v29 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(v29);
    (*(*(v30 - 8) + 32))(v23, v24, v30);
    swift_storeEnumTagMultiPayload(v23, v26, v28);
    v31 = v23;
    v32 = v40;
    v33 = 0;
  }

  swift_storeEnumTagMultiPayload(v31, v32, v33);
  return a1;
}

uint64_t assignWithTake for MLWordTagger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  v10 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v10;
  *(a1 + 88) = *(a2 + 88);
  v11 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  v11;
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  v12;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  if (a1 == a2)
  {
    return a1;
  }

  v48 = a3;
  v13 = *(a3 + 32);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics.Contents);
  v16 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
  v50 = v16;
  if (EnumCaseMultiPayload == 1)
  {
    *v14 = *v15;
    v45 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v26 = *(v45 + 20);
    v46 = &v14[v26];
    v47 = type metadata accessor for DataFrame(0);
    v52 = *(*(v47 - 8) + 32);
    v27 = &v15[v26];
    v16 = v50;
    v52(v46, v27, v47);
    v52(&v14[*(v45 + 24)], &v15[*(v45 + 24)], v47);
    v25 = 1;
    v23 = v14;
    v24 = v50;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v14, v15, *(*(v16 - 8) + 64));
      goto LABEL_12;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v18 = swift_getEnumCaseMultiPayload(v15, v51);
    v19 = v18 == 1;
    v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v18 == 1)
    {
      v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
    (*(*(v21 - 8) + 32))(v14, v15, v21);
    v22 = v19;
    v16 = v50;
    swift_storeEnumTagMultiPayload(v14, v51, v22);
    v23 = v14;
    v24 = v50;
    v25 = 0;
  }

  swift_storeEnumTagMultiPayload(v23, v24, v25);
LABEL_12:
  v28 = *(v48 + 36);
  v29 = (a1 + v28);
  v30 = (v28 + a2);
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v28, type metadata accessor for MLClassifierMetrics.Contents);
  v31 = swift_getEnumCaseMultiPayload(v30, v16);
  if (v31 == 1)
  {
    *v29 = *v30;
    v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v40 = *(v49 + 20);
    v53 = &v29[v40];
    v41 = type metadata accessor for DataFrame(0);
    v42 = &v30[v40];
    v43 = *(*(v41 - 8) + 32);
    v43(v53, v42, v41);
    v43(&v29[*(v49 + 24)], &v30[*(v49 + 24)], v41);
    v39 = 1;
    v37 = v29;
    v38 = v50;
  }

  else
  {
    if (v31)
    {
      memcpy(v29, v30, *(*(v16 - 8) + 64));
      return a1;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v30, v32);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 32))(v29, v30, v36);
    swift_storeEnumTagMultiPayload(v29, v32, v34);
    v37 = v29;
    v38 = v50;
    v39 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v38, v39);
  return a1;
}

uint64_t sub_7420E(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLWordTaggerMetrics(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 32), a2, v5);
  }

  return result;
}

uint64_t sub_74286(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLWordTaggerMetrics(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 32), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLWordTagger(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.UnknownObject + 64;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &value witness table for Builtin.UnknownObject + 64;
  v3[3] = "i";
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    v5 = v4;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3);
    *a1 = result;
  }

  return result;
}

void outlined consume of MLDataValue(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 2:
      LOBYTE(a1) = a2;
      goto LABEL_3;
    case 3:

      break;
    case 4:
LABEL_3:
      a1;
      break;
    case 5:

      break;
    default:
      return;
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  return block_copy_helper_0(a1, a2);
}

{
  *(a1 + 32) = *(a2 + 32);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 != a1)
  {
    v4 = 0;
    if (v3 > 0)
    {
      v4 = v3;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    if (v3 < 0)
    {
      BUG();
    }

    v5 = a1;
    v19 = a1 - 1;
    v6 = 0;
    v20 = v3;
    while (1)
    {
      if (v6 >= v3)
      {
        BUG();
      }

      v7 = v6 + 1;
      if (__OFADD__(1, v6))
      {
        BUG();
      }

      CMLSequence.value(at:)(v5 + v6);
      if (v2)
      {
        break;
      }

      v17 = CMLFeatureValue.stringValue()();
      if (v8)
      {

        v13 = "CreateML/MLDataTable.ColumnNames.swift";
        v14 = 38;
        v15 = 59;
        v16 = v8;
LABEL_25:
        swift_unexpectedError(v16, v13, v14, 1, v15);
        BUG();
      }

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      *&_swiftEmptyArrayStorage[2 * v9 + 4] = v17;
      v5 = a1;
      if (a2 < a1)
      {
        BUG();
      }

      if ((v6 + v19 + 1) >= a2)
      {
        BUG();
      }

      ++v6;
      v11 = v7 == v20;
      v3 = v20;
      v2 = 0;
      if (v11)
      {
        goto LABEL_16;
      }
    }

    v13 = "CreateML/SequenceType.swift";
    v14 = 27;
    v15 = 76;
    v16 = v2;
    goto LABEL_25;
  }

LABEL_16:

  return _swiftEmptyArrayStorage;
}

uint64_t MLDataTable.columnNames.getter()
{
  v2 = v0;
  if (*(v1 + 8))
  {
    v3 = tc_v1_flex_list_create(0);
    if (!v3)
    {
      BUG();
    }

    v4 = v3;
    v5 = type metadata accessor for CMLSequence();
    result = swift_allocObject(v5, 25, 7);
    *(result + 16) = v4;
    *(result + 24) = 1;
    *v2 = result;
  }

  else
  {
    v7 = *v1;

    _DataTable.columnNames.getter();
    return outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  return result;
}

uint64_t MLDataTable.ColumnNames.endIndex.getter()
{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);

  return v1;
}

uint64_t MLDataTable.ColumnNames.subscript.getter(uint64_t a1)
{
  CMLSequence.value(at:)(a1);
  countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
  if (v2)
  {
    v2;

    _StringGuts.grow(_:)(37);
    0;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v5._object;
    String.append(_:)(v5);
    object;
    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, ("able.ColumnNames.swift" + 0x8000000000000000), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
    BUG();
  }

  v3 = countAndFlagsBits;

  return v3;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v1 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    BUG();
  }

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v1 < 0 || v1 >= v3)
  {
    BUG();
  }

  *a1 = v1;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataTable.ColumnNames(uint64_t a1)
{
  v2 = v1;
  result = MLDataTable.ColumnNames.endIndex.getter();
  *v2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v2 = MLDataTable.ColumnNames.subscript.getter(*a2);
  a1[2] = v3;
  *a1 = v2;
  a1[1] = v3;
  return protocol witness for Collection.subscript.read in conformance MLDataTable.ColumnNames;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataTable.ColumnNames()
{
  v1 = v0;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance MLDataTable.ColumnNames()
{
  *result = 0;
  *(result + 8) = 256;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v4 = result;
  *(v4 + 8) = v6 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.ColumnNames(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t *a2)
{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

void specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < a2 || a3 < a1)
  {
    BUG();
  }
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3);
}

{
  if (a1 < a2 || a1 >= a3)
  {
    BUG();
  }
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3);
}

void specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    BUG();
  }

  if (*(a4 + 8) != a2)
  {
    BUG();
  }

  if (*a4 > a1)
  {
    BUG();
  }

  if (*(a4 + 40))
  {
    BUG();
  }

  if (*(a4 + 32) != a2)
  {
    BUG();
  }

  if (*(a4 + 24) < a1)
  {
    BUG();
  }
}

{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    BUG();
  }

  if (*(a4 + 8) != a2)
  {
    BUG();
  }

  if (*a4 > a1)
  {
    BUG();
  }

  if (*(a4 + 40))
  {
    BUG();
  }

  if (*(a4 + 32) != a2)
  {
    BUG();
  }

  if (*(a4 + 24) <= a1)
  {
    BUG();
  }
}

uint64_t protocol witness for Collection.index(after:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v1 = *a1;

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v1 < 0 || v1 >= v3)
  {
    BUG();
  }

  *a1 = v1 + 1;
  return result;
}

void *protocol witness for Sequence.makeIterator() in conformance MLDataTable.ColumnNames()
{
  *result = *v1;
  result[1] = 0;
  return result;
}

char specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1, uint64_t a2)
{
  v23 = 0;

  for (i = 0; ; i = v24)
  {

    v3 = CMLSequence.size.getter();
    v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

    if (i == v4)
    {
      v22 = 0;
    }

    else
    {
      CMLSequence.value(at:)(i);
      v22 = CMLFeatureValue.stringValue()();
      if (v5)
      {
        goto LABEL_28;
      }

      v6 = CMLSequence.size.getter();
      v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

      if (i < 0 || i >= v7)
      {
        BUG();
      }

      ++i;
    }

    v8 = CMLSequence.size.getter();
    v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);

    if (v23 == v9)
    {
      break;
    }

    v24 = i;
    CMLSequence.value(at:)(v23);
    v10 = CMLFeatureValue.stringValue()();
    if (v5)
    {
LABEL_28:
      v5;

      _StringGuts.grow(_:)(37);
      0;
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v19._object;
      String.append(_:)(v19);
      object;
      v21._countAndFlagsBits = 46;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, ("able.ColumnNames.swift" + 0x8000000000000000), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
      BUG();
    }

    countAndFlagsBits = v10._countAndFlagsBits;
    v12 = v10._object;

    v13 = CMLSequence.size.getter();
    v14 = specialized RandomAccessCollection<>.distance(from:to:)(0, v13);

    if (v23 >= v14)
    {
      BUG();
    }

    v15 = v22._object;
    if (!v22._object)
    {
      goto LABEL_21;
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    if (v22 == __PAIR128__(v12, countAndFlagsBits))
    {
      v22._object;
      v12;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)(v22._countAndFlagsBits, v22._object, countAndFlagsBits, v12, 0);
      v22._object;
      v12;
      if ((v16 & 1) == 0)
      {

        return 0;
      }
    }

    ++v23;
  }

  v15 = v22._object;
  if (v22._object)
  {
LABEL_18:

    v17 = v15;
LABEL_23:
    v17;
    return 0;
  }

  v12 = 0;
LABEL_21:

  if (v12)
  {
    v17 = v12;
    goto LABEL_23;
  }

  return 1;
}

BOOL specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  v4 = 0;
  v5 = 0;
  do
  {
    if (v5 == v2)
    {
      v6 = 0;
      v7 = *(a2 + 16);
    }

    else
    {
      if (v5 >= v2)
      {
        BUG();
      }

      v7 = v5 + 1;
      if (__OFADD__(1, v5))
      {
        BUG();
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    result = v4 == v3;
    if (v4 == v3)
    {
      v9 = 0;
      v10 = *(a1 + 16);
    }

    else
    {
      if (v4 >= v3)
      {
        BUG();
      }

      v10 = v4 + 1;
      if (__OFADD__(1, v4))
      {
        BUG();
      }

      v9 = *(a1 + 8 * v4 + 32);
    }

    if (v5 == v2)
    {
      break;
    }

    result = 0;
    if (v4 == v3)
    {
      break;
    }

    v4 = v10;
    v5 = v7;
  }

  while (v6 == v9);
  return result;
}

uint64_t MLDataTable.ColumnNames.description.getter()
{
  v1 = *v0;

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v5 < 0)
  {
    BUG();
  }

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);
  v1;
  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v3);
  v9 = ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
  v10 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);
  v9;
  return v10;
}

uint64_t MLDataTable.ColumnNames.debugDescription.getter()
{
  v1 = *v0;
  swift_retain_n(v1, 2);
  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v5 < 0)
  {
    BUG();
  }

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);
  v1;
  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v3);
  v9 = ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
  v10 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);

  v9;
  return v10;
}

uint64_t MLDataTable.ColumnNames.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *v1;
  swift_retain_n(v3, 2);
  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 < 0)
  {
    BUG();
  }

  v8 = CMLSequence.size.getter();
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);
  v3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v5);
  v11 = ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
  v12 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);
  v14 = v13;

  v11;
  objc_allocWithZone(NSAttributedString);
  v15 = @nonobjc NSAttributedString.init(string:attributes:)(v12, v14, 0);
  result = type metadata accessor for NSAttributedString();
  v2[3] = result;
  *v2 = v15;
  return result;
}

id @nonobjc NSAttributedString.init(string:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  a2;
  if (a3)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a3;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6.super.isa];

  return v7;
}

uint64_t lazy protocol witness table accessor for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames()
{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<MLDataTable.ColumnNames> and conformance <> Slice<A>(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<MLDataTable.ColumnNames>);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Range<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    v1 = type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSAttributedStringKey, v1);
    lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey = result;
  }

  return result;
}

unint64_t MLWordTagger.ModelAlgorithmType.description.getter()
{
  v1 = 0xD000000000000016;
  if (v0[16] != 1)
  {
    return 0xD00000000000001ELL;
  }

  if (*v0)
  {
    if (*v0 == 1)
    {
      v1 = 0xD000000000000027;
      v2 = "Unspecified Language";
    }

    else
    {
      v1 = 0xD000000000000046;
      v2 = "Average Tokens per Sequence";
    }
  }

  else
  {
    v2 = "ge Model Text Embedding";
  }

  v5 = v1;

  v4._countAndFlagsBits = 0x6C65646F4D20;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  v2;
  return v5;
}

unint64_t MLWordTagger.ModelAlgorithmType.playgroundDescription.getter()
{
  v2 = v0;
  v3 = 0xD000000000000016;
  if (v1[16] == 1)
  {
    if (*v1)
    {
      if (*v1 == 1)
      {
        v3 = 0xD000000000000027;
        v4 = "Unspecified Language";
      }

      else
      {
        v3 = 0xD000000000000046;
        v4 = "Average Tokens per Sequence";
      }
    }

    else
    {
      v4 = "ge Model Text Embedding";
    }

    v8 = v3;

    v7._countAndFlagsBits = 0x6C65646F4D20;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    v4;
    result = v8;
    v5 = (v4 | 0x8000000000000000);
  }

  else
  {
    v5 = "Dynamic Text Embedding" + 0x8000000000000000;
    result = 0xD00000000000001ELL;
  }

  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.PersistentParameters(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *v4 = *a2;
    v4 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a3;
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    v68 = v6;
    v73 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        v9 = *(*(v8 - 8) + 16);
        v9(a1, a2, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v9((a1 + v10[12]), a2 + v10[12], v8);
        v11 = v10[16];
        *(a1 + v11) = *(a2 + v11);
        *(a1 + v11 + 8) = *(a2 + v11 + 8);
        v12 = v10[20];
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);
        v13 = v10[24];
        *(a1 + v13) = *(a2 + v13);
        *(a1 + v13 + 8) = *(a2 + v13 + 8);
        v14 = v10[28];
        *(a1 + v14) = *(a2 + v14);
        *(a1 + v14 + 8) = *(a2 + v14 + 8);

        v6 = v68;

        v15 = v73;
        v16 = 0;
        goto LABEL_13;
      case 1u:
        v24 = type metadata accessor for URL(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v65 = 1;
        goto LABEL_9;
      case 2u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v65 = 2;
LABEL_9:
        v16 = v65;
        v15 = v7;
        goto LABEL_13;
      case 3u:
        v21 = *a2;
        v22 = v6;
        v23 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v23);
        *a1 = v21;
        *(a1 + 8) = v23;
        a1[2] = *(a2 + 16);
        a1[3] = *(a2 + 24);
        a1[4] = *(a2 + 32);
        a1[5] = *(a2 + 40);
        a1[6] = *(a2 + 48);
        a1[7] = *(a2 + 56);

        v6 = v22;

        v64 = 3;
        goto LABEL_12;
      case 4u:
        v18 = *a2;
        v19 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v19);
        *a1 = v18;
        *(a1 + 8) = v19;
        a1[2] = *(a2 + 16);
        a1[3] = *(a2 + 24);
        a1[4] = *(a2 + 32);
        a1[5] = *(a2 + 40);
        a1[6] = *(a2 + 48);
        a1[7] = *(a2 + 56);
        a1[8] = *(a2 + 64);
        a1[9] = *(a2 + 72);

        v6 = v68;

        v64 = 4;
        goto LABEL_12;
      case 5u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v27 = v26[12];
        *(a1 + v27) = *(a2 + v27);
        *(a1 + v27 + 8) = *(a2 + v27 + 8);
        v28 = v26[16];
        *(a1 + v28) = *(a2 + v28);
        *(a1 + v28 + 8) = *(a2 + v28 + 8);
        v29 = v26[20];
        *(a1 + v29) = *(a2 + v29);
        *(a1 + v29 + 8) = *(a2 + v29 + 8);

        v64 = 5;
        goto LABEL_12;
      case 6u:
        v30 = type metadata accessor for DataFrame(0);
        (*(*(v30 - 8) + 16))(a1, a2, v30);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v32 = v31[12];
        *(a1 + v32) = *(a2 + v32);
        *(a1 + v32 + 8) = *(a2 + v32 + 8);
        v33 = v31[16];
        *(a1 + v33) = *(a2 + v33);
        *(a1 + v33 + 8) = *(a2 + v33 + 8);
        v34 = v31[20];
        *(a1 + v34) = *(a2 + v34);
        *(a1 + v34 + 8) = *(a2 + v34 + 8);
        v35 = v31[24];
        *(a1 + v35) = *(a2 + v35);
        *(a1 + v35 + 8) = *(a2 + v35 + 8);

        v64 = 6;
LABEL_12:
        v16 = v64;
        v15 = v73;
LABEL_13:
        swift_storeEnumTagMultiPayload(a1, v15, v16);
        v36 = v6[5];
        v37 = a1 + v36;
        v38 = a2 + v36;
        v39 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
        if (swift_getEnumCaseMultiPayload(v38, v39) == 1)
        {
          v69 = v39;
          switch(swift_getEnumCaseMultiPayload(v38, v73))
          {
            case 0u:
              v70 = type metadata accessor for URL(0);
              v67 = *(*(v70 - 8) + 16);
              v67(v37, v38, v70);
              v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
              v67(&v37[v40[12]], v38 + v40[12], v70);
              v41 = v40[16];
              *&v37[v41] = *(v38 + v41);
              *&v37[v41 + 8] = *(v38 + v41 + 8);
              v42 = v40[20];
              *&v37[v42] = *(v38 + v42);
              *&v37[v42 + 8] = *(v38 + v42 + 8);
              v43 = v40[24];
              *&v37[v43] = *(v38 + v43);
              *&v37[v43 + 8] = *(v38 + v43 + 8);
              v44 = v40[28];
              *&v37[v44] = *(v38 + v44);
              *&v37[v44 + 8] = *(v38 + v44 + 8);

              v45 = v37;
              v46 = v73;
              v47 = 0;
              goto LABEL_24;
            case 1u:
              v51 = type metadata accessor for URL(0);
              (*(*(v51 - 8) + 16))(v37, v38, v51);
              v66 = 1;
              goto LABEL_23;
            case 2u:
              v49 = type metadata accessor for URL(0);
              (*(*(v49 - 8) + 16))(v37, v38, v49);
              v66 = 2;
              goto LABEL_23;
            case 3u:
              v72 = *v38;
              v50 = *(v38 + 8);
              outlined copy of Result<_DataTable, Error>(*v38, v50);
              *v37 = v72;
              v37[8] = v50;
              *(v37 + 2) = *(v38 + 16);
              *(v37 + 3) = *(v38 + 24);
              *(v37 + 4) = *(v38 + 32);
              *(v37 + 5) = *(v38 + 40);
              *(v37 + 6) = *(v38 + 48);
              *(v37 + 7) = *(v38 + 56);

              v66 = 3;
              goto LABEL_23;
            case 4u:
              v71 = *v38;
              v48 = *(v38 + 8);
              outlined copy of Result<_DataTable, Error>(*v38, v48);
              *v37 = v71;
              v37[8] = v48;
              *(v37 + 2) = *(v38 + 16);
              *(v37 + 3) = *(v38 + 24);
              *(v37 + 4) = *(v38 + 32);
              *(v37 + 5) = *(v38 + 40);
              *(v37 + 6) = *(v38 + 48);
              *(v37 + 7) = *(v38 + 56);
              *(v37 + 8) = *(v38 + 64);
              *(v37 + 9) = *(v38 + 72);

              v66 = 4;
              goto LABEL_23;
            case 5u:
              v52 = type metadata accessor for DataFrame(0);
              (*(*(v52 - 8) + 16))(v37, v38, v52);
              v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
              v54 = v53[12];
              *&v37[v54] = *(v38 + v54);
              *&v37[v54 + 8] = *(v38 + v54 + 8);
              v55 = v53[16];
              *&v37[v55] = *(v38 + v55);
              *&v37[v55 + 8] = *(v38 + v55 + 8);
              v56 = v53[20];
              *&v37[v56] = *(v38 + v56);
              *&v37[v56 + 8] = *(v38 + v56 + 8);

              v66 = 5;
              goto LABEL_23;
            case 6u:
              v57 = type metadata accessor for DataFrame(0);
              (*(*(v57 - 8) + 16))(v37, v38, v57);
              v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
              v59 = v58[12];
              *&v37[v59] = *(v38 + v59);
              *&v37[v59 + 8] = *(v38 + v59 + 8);
              v60 = v58[16];
              *&v37[v60] = *(v38 + v60);
              *&v37[v60 + 8] = *(v38 + v60 + 8);
              v61 = v58[20];
              *&v37[v61] = *(v38 + v61);
              *&v37[v61 + 8] = *(v38 + v61 + 8);
              v62 = v58[24];
              *&v37[v62] = *(v38 + v62);
              *&v37[v62 + 8] = *(v38 + v62 + 8);

              v66 = 6;
LABEL_23:
              v47 = v66;
              v45 = v37;
              v46 = v73;
LABEL_24:
              swift_storeEnumTagMultiPayload(v45, v46, v47);
              swift_storeEnumTagMultiPayload(v37, v69, 1);
              break;
            case 7u:
              JUMPOUT(0x75F30);
          }
        }

        else
        {
          memcpy(v37, v38, *(*(v39 - 8) + 64));
        }

        *(v4 + v68[6]) = *(a2 + v68[6]);
        *(v4 + v68[7]) = *(a2 + v68[7]);
        *(v4 + v68[8]) = *(a2 + v68[8]);
        *(v4 + v68[9]) = *(a2 + v68[9]);
        *(v4 + v68[10]) = *(a2 + v68[10]);
        break;
    }
  }

  return v4;
}

uint64_t destroy for MLHandActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
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
  v16 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
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

uint64_t initializeWithCopy for MLHandActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
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
  v35 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
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

        JUMPOUT(0x767B7);
      case 1u:
        type metadata accessor for URL(0);
        JUMPOUT(0x768FCLL);
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

        JUMPOUT(0x76848);
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

uint64_t assignWithCopy for MLHandActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandActionClassifier.DataSource);
    v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v33 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
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

          JUMPOUT(0x77003);
        case 1u:
        case 2u:
          v35 = type metadata accessor for URL(0);
          (*(*(v35 - 8) + 16))(v31, v32, v35);
          JUMPOUT(0x76EB0);
        case 3u:
          v63 = *v32;
          v66 = *(v32 + 8);
          outlined copy of Result<_DataTable, Error>(*v32, v66);
          *v31 = v63;
          v31[8] = v66;
          *(v31 + 2) = *(v32 + 16);
          *(v31 + 3) = *(v32 + 24);
          *(v31 + 4) = *(v32 + 32);
          JUMPOUT(0x77061);
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
          JUMPOUT(0x76F32);
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
          JUMPOUT(0x7722CLL);
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

char *initializeWithTake for MLHandActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
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
  v20 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
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

char *assignWithTake for MLHandActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLHandActionClassifier.DataSource);
    v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v20 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
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

uint64_t sub_77BAD(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_77C14(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLHandActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandActionClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLHandActionClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandActionClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(319);
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

NSURL *MLHandActionClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v141 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v136 = &v121;
  v134 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v134 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v124 = &v121;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v135 = &v121;
  v131 = type metadata accessor for MLHandActionClassifier.DataSource(0);
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
    outlined destroy of AnyColumn?(v157, &demangling cache variable for type metadata for Any?);
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
    outlined destroy of AnyColumn?(v157, &demangling cache variable for type metadata for Any?);
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
    outlined destroy of AnyColumn?(v157, &demangling cache variable for type metadata for Any?);
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

  v47 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
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
    outlined destroy of AnyColumn?(v172, &demangling cache variable for type metadata for Any?);
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
  MLHandActionClassifier.DataSource.init(dictionary:tableFile:)(v54, v55);
  if (__swift_getEnumTagSinglePayload(v56, 1, v131) == 1)
  {
    v151;
    outlined destroy of AnyColumn?(v56, &demangling cache variable for type metadata for MLHandActionClassifier.DataSource?);
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
  outlined init with take of MLClassifierMetrics(v101, v137, type metadata accessor for MLHandActionClassifier.DataSource);
  outlined init with take of MLClassifierMetrics(v102, v51, type metadata accessor for MLHandActionClassifier.DataSource);
LABEL_47:
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v151);
  if (!v158)
  {
    outlined destroy of AnyColumn?(v157, &demangling cache variable for type metadata for Any?);
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
        v112 = MLHandActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(*&__src[0]);
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
      v112 = outlined destroy of AnyColumn?(v157, &demangling cache variable for type metadata for Any?);
    }

    LOBYTE(v112) = 1;
    LODWORD(v149) = v112;
    v107 = "is missing training parameters.";
    v108 = v152;
    v106 = 0xD00000000000002DLL;
    goto LABEL_59;
  }

  v103 = *&__src[0];
  v104 = v133;
  (*(v149 + 16))(v133, v152, v153);
  v105 = v136;
  MLHandActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v103, v104);
  if (__swift_getEnumTagSinglePayload(v105, 1, v134) != 1)
  {
    v120 = v124;
    outlined init with take of MLClassifierMetrics(v136, v124, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v109 = v140;
    v52 = v141;
    outlined init with take of MLClassifierMetrics(v120, v141 + v140[5], type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    goto LABEL_53;
  }

  v151;
  outlined destroy of AnyColumn?(v136, &demangling cache variable for type metadata for MLHandActionClassifier.ModelParameters.ValidationData?);
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
  outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for MLHandActionClassifier.DataSource);
  if (v149)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v140[5] + v119, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  }

  return __stack_chk_guard;
}

uint64_t MLHandActionClassifier.DataSource.init(dictionary:tableFile:)(uint64_t *a1, uint64_t a2)
{
  v95 = a2;
  v3 = v2;
  v94 = type metadata accessor for URL(0);
  v4 = *(v94 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v88 = &v57;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!a1[2])
  {
    a1;
LABEL_21:
    v21 = v95;
    v22 = v94;
LABEL_22:
    (*(v4 + 8))(v21, v22);
    goto LABEL_23;
  }

  v86 = &v57;
  v96 = v4;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {
    a1;
LABEL_20:
    v4 = v96;
    goto LABEL_21;
  }

  v92 = v10;
  outlined init with copy of Any(a1[7] + 32 * v14, v59);
  v91 = &type metadata for Any + 8;
  if (!swift_dynamicCast(__src, v59, &type metadata for Any + 8, &type metadata for String, 6))
  {
    a1;
    v10 = v92;
    goto LABEL_20;
  }

  v93 = v3;
  v16 = __src[0];
  if (*&__src[0] ^ 0x726F746365726964 | *(&__src[0] + 1) ^ 0xE900000000000079 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x726F746365726964, 0xE900000000000079, *&__src[0], *(&__src[0] + 1), 0) & 1) == 0)
  {
    if (!(v16 ^ 0xD000000000000013 | *(&v16 + 1) ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      SBYTE8(v16);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      if (v62)
      {
        v25 = swift_dynamicCast(__src, v59, v91, &type metadata for String, 6);
        v3 = v93;
        v10 = v92;
        v4 = v96;
        if (v25)
        {
          v26 = BYTE8(__src[0]);
          v27 = v86;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v26;
          (*(v4 + 8))(v95, v94);
          swift_storeEnumTagMultiPayload(v27, v10, 1);
LABEL_31:
          outlined init with take of MLClassifierMetrics(v27, v3, type metadata accessor for MLHandActionClassifier.DataSource);
          v23 = 0;
          return __swift_storeEnumTagSinglePayload(v3, v23, 1, v10);
        }

        goto LABEL_39;
      }

      outlined destroy of AnyColumn?(v59, &demangling cache variable for type metadata for Any?);
      v3 = v93;
      v10 = v92;
LABEL_38:
      v4 = v96;
LABEL_39:
      v22 = v94;
      v21 = v95;
      goto LABEL_22;
    }

    if (!(v16 ^ 0x5F64656C6562616CLL | *(&v16 + 1) ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      SBYTE8(v16);
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v3 = v93;
      v10 = v92;
      if (v62)
      {
        v31 = swift_dynamicCast(__src, v59, v91, &type metadata for String, 6);
        v4 = v96;
        if (v31)
        {
          v32 = BYTE8(__src[0]);
          v27 = v86;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v32;
          (*(v4 + 8))(v95, v94);
          swift_storeEnumTagMultiPayload(v27, v10, 2);
          goto LABEL_31;
        }

        goto LABEL_39;
      }

      outlined destroy of AnyColumn?(v59, &demangling cache variable for type metadata for Any?);
      goto LABEL_38;
    }

    if (!(v16 ^ 0xD000000000000016 | *(&v16 + 1) ^ (&aLabeledKeypoin[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aLabeledKeypoin[-32] | 0x8000000000000000, v16, *(&v16 + 1), 0) & 1) != 0)
    {
      SBYTE8(v16);
      (*(v96 + 16))(&v57, v95, v94);
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
      v59[0] = 1;
      v60 = 44;
      v61 = 0xE100000000000000;
      v62 = 0;
      v63 = 0xE000000000000000;
      v64 = 92;
      v65 = 0xE100000000000000;
      v66 = 1;
      v67 = 34;
      v68 = 0xE100000000000000;
      v69 = 1;
      v70 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v71 = 10;
      v72 = 0xE100000000000000;
      v73 = 0;
      v74 = 1;
      v75 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(v59);
      memcpy(__dst, __src, sizeof(__dst));
      MLDataTable.init(contentsOf:options:)(&v57, __dst);
      v84 = v89;
      LOBYTE(v85) = BYTE8(v89);
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v84, 0x746E696F7079656BLL, 0xE900000000000073);
      v10 = v92;
      specialized Dictionary.subscript.getter(0xD000000000000011, ("labeled_keypoints_data" + 0x8000000000000000), a1);
      v34 = v96;
      if (__dst[3])
      {
        if (swift_dynamicCast(&v89, __dst, v91, &type metadata for String, 6))
        {
          v35 = *(&v89 + 1);
          v36 = v89;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v89, __dst, v91, &type metadata for String, 6))
            {
              v37 = *(&v89 + 1);
              v88 = v89;
              specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
              a1;
              (*(v96 + 8))(v95, v94);
              if (__dst[3])
              {
                if (swift_dynamicCast(&v89, __dst, v91, &type metadata for String, 6))
                {
                  v38 = v89;
                  v90 = v85;
                  v27 = v86;
                  *v86 = v84;
                  *(v27 + 8) = v90;
                  *(v27 + 16) = v36;
                  *(v27 + 24) = v35;
                  *(v27 + 32) = v88;
                  *(v27 + 40) = v37;
                  *(v27 + 48) = v38;
                  v56 = 3;
LABEL_111:
                  v49 = v56;
                  v47 = v27;
                  v10 = v92;
                  v48 = v92;
LABEL_77:
                  swift_storeEnumTagMultiPayload(v47, v48, v49);
                  v3 = v93;
                  goto LABEL_31;
                }

                v37;
                v35;
              }

              else
              {
                v37;
                v35;
                outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
              }

              v3 = v93;
              v10 = v92;
LABEL_98:
              outlined consume of Result<_DataTable, Error>(v84, v85);
              goto LABEL_23;
            }

            a1;
            v35;
          }

          else
          {
            a1;
            v35;
            outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
          }

          v3 = v93;
          (*(v96 + 8))(v95, v94);
          goto LABEL_98;
        }

        a1;
      }

      else
      {
        a1;
        outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
      }

      v3 = v93;
      (*(v34 + 8))(v95, v94);
      goto LABEL_98;
    }

    v39 = &aLabeledVideoDa[-32] | 0x8000000000000000;
    v40 = v96;
    if (v16 ^ 0xD000000000000012 | v39 ^ *(&v16 + 1))
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, v39, v16, *(&v16 + 1), 0);
      SBYTE8(v16);
      if ((v50 & 1) == 0)
      {
        (*(v40 + 8))(v95, v94);
        a1;
        goto LABEL_52;
      }
    }

    else
    {
      SBYTE8(v16);
    }

    v51 = v88;
    (*(v40 + 16))(v88, v95, v94);
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
    v59[0] = 1;
    v60 = 44;
    v61 = 0xE100000000000000;
    v62 = 0;
    v63 = 0xE000000000000000;
    v64 = 92;
    v65 = 0xE100000000000000;
    v66 = 1;
    v67 = 34;
    v68 = 0xE100000000000000;
    v69 = 1;
    v70 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v71 = 10;
    v72 = 0xE100000000000000;
    v73 = 0;
    v74 = 1;
    v75 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v59);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(v51, __dst);
    v52 = v89;
    v53 = BYTE8(v89);
    specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
    if (__dst[3])
    {
      if (!swift_dynamicCast(&v89, __dst, v91, &type metadata for String, 6))
      {
        outlined consume of Result<_DataTable, Error>(v52, v53);
LABEL_102:
        a1;
        goto LABEL_51;
      }

      v88 = *(&v89 + 1);
      v81 = v89;
      specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
      if (__dst[3])
      {
        if (swift_dynamicCast(&v89, __dst, v91, &type metadata for String, 6))
        {
          v82 = v89;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v89, __dst, v91, &type metadata for String, 6))
            {
              v87 = v89;
              goto LABEL_105;
            }
          }

          else
          {
            outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
          }

          v87 = 0uLL;
LABEL_105:
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          a1;
          (*(v96 + 8))(v95, v94);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v89, __dst, v91, &type metadata for String, 6))
            {
              v55 = *(&v89 + 1);
              v54 = v89;
LABEL_110:
              LOBYTE(v89) = v53 & 1;
              v27 = v86;
              *v86 = v52;
              *(v27 + 8) = v89;
              *(v27 + 16) = v81;
              *(v27 + 24) = v88;
              *(v27 + 32) = v82;
              *(v27 + 48) = v87;
              *(v27 + 64) = v54;
              *(v27 + 72) = v55;
              v56 = 4;
              goto LABEL_111;
            }
          }

          else
          {
            outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
          }

          v54 = 0;
          v55 = 0;
          goto LABEL_110;
        }

        outlined consume of Result<_DataTable, Error>(v52, v53);
        a1;
        LOBYTE(a1) = v88;
        goto LABEL_102;
      }

      outlined consume of Result<_DataTable, Error>(v52, v53);
      a1;
      LOBYTE(a1) = v88;
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v52, v53);
    }

    a1;
    outlined destroy of AnyColumn?(__dst, &demangling cache variable for type metadata for Any?);
LABEL_51:
    (*(v96 + 8))(v95, v94);
LABEL_52:
    v23 = 1;
    v3 = v93;
    v10 = v92;
    return __swift_storeEnumTagSinglePayload(v3, v23, 1, v10);
  }

  SBYTE8(v16);
  v3 = v93;
  specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
  v10 = v92;
  if (v62)
  {
    if (swift_dynamicCast(__src, v59, v91, &type metadata for String, 6))
    {
      v18 = *(&__src[0] + 1);
      v17 = *&__src[0];
      specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, a1);
      if (v62)
      {
        if (swift_dynamicCast(__src, v59, v91, &type metadata for String, 6))
        {
          v19 = *(&__src[0] + 1);
          v81 = *&__src[0];
          specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
          if (v62)
          {
            v88 = v19;
            if (!swift_dynamicCast(__src, v59, v91, &type metadata for String, 6))
            {
LABEL_56:
              a1;
              v88;
              v18;
              goto LABEL_57;
            }

            v20 = *(&__src[0] + 1);
            *&v82 = *&__src[0];
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            if (v62)
            {
              if (swift_dynamicCast(__src, v59, v91, &type metadata for String, 6))
              {
                v87 = __src[0];
                specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                if (v62)
                {
                  if (swift_dynamicCast(__src, v59, v91, &type metadata for String, 6))
                  {
                    v83 = __src[0];
LABEL_70:
                    specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                    a1;
                    *(&v82 + 1) = v20;
                    if (v62)
                    {
                      if (swift_dynamicCast(__src, v59, v91, &type metadata for String, 6))
                      {
                        v42 = *(&__src[0] + 1);
                        v41 = *&__src[0];
                      }

                      else
                      {
                        v41 = 0;
                        v42 = 0;
                      }

                      v80 = v42;
                      v91 = v41;
                    }

                    else
                    {
                      outlined destroy of AnyColumn?(v59, &demangling cache variable for type metadata for Any?);
                      v91 = 0;
                      v80 = 0;
                    }

                    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
                    v27 = v86;
                    v44 = v43[16];
                    v79 = v43[20];
                    v78 = v43[24];
                    v77 = v43[28];
                    URL.init(fileURLWithPath:)(v17, v18);
                    v18;
                    v45 = v88;
                    URL.init(fileURLWithPath:)(v81, v88);
                    v45;
                    (*(v96 + 8))(v95, v94);
                    *(v27 + v44) = v82;
                    *(v27 + v79) = v87;
                    *(v27 + v78) = v83;
                    v46 = v77;
                    *(v27 + v77) = v91;
                    *(v27 + v46 + 8) = v80;
                    v47 = v27;
                    v10 = v92;
                    v48 = v92;
                    v49 = 0;
                    goto LABEL_77;
                  }
                }

                else
                {
                  outlined destroy of AnyColumn?(v59, &demangling cache variable for type metadata for Any?);
                }

                v83 = 0uLL;
                goto LABEL_70;
              }

              a1;
              LOBYTE(a1) = v20;
              goto LABEL_56;
            }

            a1;
            v20;
            v33 = v88;
          }

          else
          {
            a1;
            v33 = v19;
          }

          v33;
          v18;
          outlined destroy of AnyColumn?(v59, &demangling cache variable for type metadata for Any?);
LABEL_57:
          v10 = v92;
          v29 = v95;
          v30 = v94;
          v28 = v96;
          goto LABEL_58;
        }

        a1;
        v18;
      }

      else
      {
        a1;
        v18;
        outlined destroy of AnyColumn?(v59, &demangling cache variable for type metadata for Any?);
      }

      v28 = v96;
      v29 = v95;
      v30 = v94;
LABEL_58:
      (*(v28 + 8))(v29, v30);
      v23 = 1;
      v3 = v93;
      return __swift_storeEnumTagSinglePayload(v3, v23, 1, v10);
    }

    a1;
  }

  else
  {
    a1;
    outlined destroy of AnyColumn?(v59, &demangling cache variable for type metadata for Any?);
  }

  (*(v96 + 8))(v95, v94);
LABEL_23:
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v23, 1, v10);
}