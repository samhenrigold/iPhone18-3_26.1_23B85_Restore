char *assignWithTake for MLActivityClassifier(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = *(v6 + 20);
  v8 = v6;
  __dstb = type metadata accessor for Conv2D(0);
  __srcb = *(*(__dstb - 1) + 40);
  __srcb(&a1[v7], &a2[v7], __dstb);
  v9 = v8[6];
  v88 = type metadata accessor for ReLU(0);
  v89 = *(*(v88 - 8) + 40);
  v89(&a1[v9], &a2[v9], v88);
  v10 = v8;
  v11 = v8[7];
  v85 = type metadata accessor for Dropout(0);
  v83 = *(*(v85 - 8) + 40);
  v83(&a1[v11], &a2[v11], v85);
  v12 = v8[8];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];
  a1[v12 + 16] = a2[v12 + 16];
  a1[v12 + 17] = a2[v12 + 17];
  v15 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v16 = &v13[v15];
  v17 = &v14[v15];
  v18 = type metadata accessor for LSTM(0);
  (*(*(v18 - 8) + 40))(v16, v17, v18);
  __srcb(&a1[v10[9]], &a2[v10[9]], __dstb);
  v19 = v10[10];
  v20 = type metadata accessor for BatchNorm(0);
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  v89(&a1[v10[11]], &a2[v10[11]], v88);
  v83(&a1[v10[12]], &a2[v10[12]], v85);
  __srcb(&a1[v10[13]], &a2[v10[13]], __dstb);
  *&a1[v10[14]] = *&a2[v10[14]];
  v21 = v10[15];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];
  v22;
  v86 = v10;
  v23 = v10[16];
  v24 = &a1[v23];
  v25 = &a2[v23];
  *&a1[v23] = *&a2[v23];
  *&a1[v23 + 8] = *&a2[v23 + 8];
  a1[v23 + 16] = a2[v23 + 16];
  *&a1[v23 + 24] = *&a2[v23 + 24];
  v26 = *&a1[v23 + 40];
  *&a1[v23 + 40] = *&a2[v23 + 40];
  v26;
  *&a1[v23 + 48] = *&a2[v23 + 48];
  v27 = *&a1[v23 + 56];
  *&a1[v23 + 56] = *&a2[v23 + 56];
  v27;
  *&a1[v23 + 64] = *&a2[v23 + 64];
  v28 = *&a1[v23 + 72];
  v90 = a1;
  *&a1[v23 + 72] = *&a2[v23 + 72];
  v28;
  v84 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v29 = *(v84 + 44);
  v30 = &v24[v29];
  __src = v25;
  v31 = &v25[v29];
  v32 = type metadata accessor for DataFrame(0);
  LODWORD(v25) = __swift_getEnumTagSinglePayload(v30, 1, v32);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
  if (v25)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v32 - 8) + 32))(v30, v31, v32);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v34 = *(v32 - 8);
  if (EnumTagSinglePayload)
  {
    (*(v34 + 8))(v30, v32);
LABEL_6:
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v30, v31, *(*(v35 - 8) + 64));
    goto LABEL_7;
  }

  (*(v34 + 40))(v30, v31, v32);
LABEL_7:
  v36 = a2;
  v37 = v90;
  v38 = *(v84 + 48);
  v39 = &__src[v38];
  __dst = &v24[v38];
  v40 = __swift_getEnumTagSinglePayload(&v24[v38], 1, v32);
  v41 = __swift_getEnumTagSinglePayload(v39, 1, v32);
  v81 = v32;
  if (v40)
  {
    if (v41)
    {
      v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v43 = __dst;
LABEL_12:
      memcpy(v43, v39, v42);
      goto LABEL_16;
    }

    (*(*(v32 - 8) + 32))(__dst, v39, v32);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v32);
  }

  else
  {
    v44 = *(v32 - 8);
    if (v41)
    {
      (*(v44 + 8))(__dst, v32);
      v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v43 = __dst;
      goto LABEL_12;
    }

    (*(v44 + 40))(__dst, v39, v32);
  }

LABEL_16:
  v45 = v86[17];
  v46 = *&v90[v45];
  *&v90[v45] = *&a2[v45];

  v47 = v86[18];
  v48 = &v90[v47];
  v49 = &a2[v47];
  if (*&v90[v47])
  {
    v50 = *&a2[v47];
    if (v50)
    {
      *v48 = v50;

      *(v48 + 1) = *(v49 + 1);

      v51 = *(v48 + 2);
      *(v48 + 2) = *(v49 + 2);
      v51;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v48);
      *v48 = *v49;
      *(v48 + 2) = *(v49 + 2);
    }
  }

  else
  {
    *(v48 + 2) = *(v49 + 2);
    *v48 = *v49;
  }

  v52 = a3[5];
  v53 = *&v90[v52];
  *&v90[v52] = *&a2[v52];

  v54 = a3[6];
  v55 = &v90[v54];
  v56 = &a2[v54];
  v57 = v90[v54 + 8];
  if (v57 == -1)
  {
    *(v55 + 8) = v56[8];
    *v55 = *v56;
  }

  else
  {
    v58 = a2[v54 + 8];
    if (v58 == -1)
    {
      outlined destroy of MLDataTable(v55);
      *v55 = *v56;
      *(v55 + 8) = v56[8];
    }

    else
    {
      v59 = *v55;
      *v55 = *v56;
      *(v55 + 8) = v58 & 1;
      outlined consume of Result<_DataTable, Error>(v59, v57);
    }
  }

  v60 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  if (v90 != a2)
  {
    __dsta = v60;
    v61 = v60[5];
    v62 = (v55 + v61);
    v63 = &v56[v61];
    outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
    v64 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v63, v64) == 1)
    {
      __srca = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v63, __srca);
      v87 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        (*(*(v81 - 8) + 32))(v62, v63);
      }

      else if (EnumCaseMultiPayload == 1)
      {
        v66 = type metadata accessor for URL(0);
        (*(*(v66 - 8) + 32))(v62, v63, v66);
        v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *&v62[v67[12]] = *&v63[v67[12]];
        *&v62[v67[16]] = *&v63[v67[16]];
        *&v62[v67[20]] = *&v63[v67[20]];
        *&v62[v67[24]] = *&v63[v67[24]];
      }

      else
      {
        v68 = type metadata accessor for URL(0);
        (*(*(v68 - 8) + 32))(v62, v63, v68);
      }

      swift_storeEnumTagMultiPayload(v62, __srca, v87);
      swift_storeEnumTagMultiPayload(v62, v64, 1);
    }

    else
    {
      memcpy(v62, v63, *(*(v64 - 8) + 64));
    }

    v36 = a2;
    v37 = v90;
    v60 = __dsta;
  }

  v69 = v60[6];
  *(v55 + v69 + 8) = v56[v69 + 8];
  *(v55 + v69) = *&v56[v69];
  v70 = v60[7];
  *(v55 + v70) = *&v56[v70];
  *(v55 + v70 + 8) = v56[v70 + 8];
  v71 = v60[8];
  *(v55 + v71) = *&v56[v71];
  *(v55 + v71 + 8) = v56[v71 + 8];
  v72 = a3[7];
  *&v37[v72] = *&v36[v72];
  v73 = *&v37[v72 + 8];
  *&v37[v72 + 8] = *&v36[v72 + 8];
  v73;
  v74 = a3[8];
  *&v37[v74] = *&v36[v74];
  v75 = *&v37[v74 + 8];
  *&v37[v74 + 8] = *&v36[v74 + 8];
  v75;
  v76 = a3[9];
  v77 = *&v37[v76];
  *&v37[v76] = *&v36[v76];
  v77;
  v78 = a3[10];
  *&v37[v78] = *&v36[v78];
  v79 = *&v37[v78 + 8];
  *&v37[v78 + 8] = *&v36[v78 + 8];
  v79;
  return v37;
}

uint64_t sub_161C8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
    v4 = *(a3 + 24) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_16255(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = *(a4 + 20);
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
    v6 = *(a4 + 24) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLActivityClassifier(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    result = type metadata accessor for MLActivityClassifier.ModelParameters(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = &unk_33D568;
      v4[4] = &unk_33D568;
      v4[5] = &value witness table for Builtin.BridgeObject + 64;
      v4[6] = &unk_33D568;
      swift_initStructMetadata(a1, 256, 7, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of DataFrame?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 32))(a2, a1, v3);
  return a2;
}

uint64_t partial apply for specialized closure #1 in blockAwait<A>(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t *a1)
{
  result = *(a1[3] - 8);
  v2 = *(result + 80);
  if ((v2 & 0x20000) != 0)
  {
    return *a1, *(result + 64) + ((v2 + 16) & ~v2), v2 | 7;
  }

  return result;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t partial apply for specialized closure #1 in blockAwait<A>(_:)()
{
  v2 = *v0;
  *(*v0 + 16);
  return (*(v2 + 8))();
}

{
  return partial apply for specialized closure #1 in blockAwait<A>(_:)();
}

uint64_t outlined init with copy of MLTrainingSessionParameters(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t sub_16F0F()
{
  v1 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v17 + 16);
  v20 = *(v2 + 64);
  v19 = type metadata accessor for TrainingTablePrinter(0);
  v4 = *(v19 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = v3 + v0;
  *(v0 + v3 + 40);
  *(v0 + v3 + 56);
  v16 = v0;
  *(v0 + v3 + 72);
  v21 = v1;
  v7 = v3 + v0 + *(v1 + 44);
  v8 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  v9 = *(v21 + 48) + v6;
  if (!__swift_getEnumTagSinglePayload(v9, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v9, v8);
  }

  v10 = v5 | v17 | 7;
  v11 = (v5 + v20 + v3) & ~v5;
  v12 = v11 + v18;
  v13 = v16 + v11;
  v14 = type metadata accessor for Date(0);
  (*(*(v14 - 8) + 8))(v13, v14);

  *(*(v19 + 24) + v13);
  return swift_deallocObject(v16, v12, v10);
}

uint64_t outlined init with take of MLClassifierMetrics(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 32))(a2, a1, v3);
  return a2;
}

uint64_t partial apply for closure #1 in static MLActivityClassifier.train(with:)(uint64_t a1)
{
  v2 = *(type metadata accessor for MLActivityClassifier.Configuration(0) - 8);
  v3 = ~*(v2 + 80) & (*(v2 + 80) + 16);
  v4 = v3 + *(v2 + 64);
  v5 = *(*(type metadata accessor for TrainingTablePrinter(0) - 8) + 80);
  return closure #1 in static MLActivityClassifier.train(with:)(a1, v1 + v3, v1 + ((v5 + v4) & ~v5));
}

uint64_t lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric()
{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

uint64_t specialized closure #1 in _StringGuts.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  result = a3(a1, a2);
  if (!v4)
  {
    result = v7;
    *v5 = v7;
  }

  return result;
}

uint64_t outlined destroy of MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(void *a1)
{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease(*(v0 + 16));

  return swift_deallocObject(v0, 64, 7);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50125_s8CreateML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v12 = a1;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter(v12);
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    if (v2 > 0)
    {
      v3 = v2;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    if (v2 < 0)
    {
      BUG();
    }

    v4 = 0;
    for (i = 0; i != v2; v4 = i)
    {
      if (__OFADD__(1, i++))
      {
        BUG();
      }

      if ((a1 & 0xC000000000000003) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v4);
      }

      else
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v13 = [v7 integerValue];

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      _swiftEmptyArrayStorage[v9 + 4] = v13;
    }
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SaySfGs5NeverOTg5Tm(void (*a1)(void *), uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  v18 = a2;
  v19 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = _swiftEmptyArrayStorage;
  v20 = a4;
  a4(0, v4, 0);
  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 40);
  do
  {
    v17 = v4;
    v8 = *v7;
    v15[0] = *(v7 - 1);
    v15[1] = v8;

    v9 = v23;
    v19(v15);
    v23 = v9;
    if (v9)
    {

      v8;
      BUG();
    }

    v8;
    v10 = v16;
    v22 = v6;
    v11 = v6[2];
    v12 = v6[3];
    v13 = v11 + 1;
    if (v12 >> 1 <= v11)
    {
      v21 = v16;
      v20(v12 >= 2, v13, 1);
      v10 = v21;
      v6 = v22;
    }

    v6[2] = v13;
    v6[v11 + 4] = v10;
    v7 += 2;
    v4 = v17 - 1;
  }

  while (v17 != 1);
  return v6;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a2;
  v22 = a1;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = a3;
  v31 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v30 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v30;
  if (v30 < 0)
  {
    BUG();
  }

  result = v31;
  v9 = v29;
  v24 = v29 - 1;
  v10 = 0;
  v23 = a4;
  do
  {
    if (v10 >= v7)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    v12 = result;
    v21[0] = v9 + v10;
    v22(v21);
    if (v4)
    {

      BUG();
    }

    v13 = v19;
    v14 = v20;
    result = v12;
    v31 = v12;
    v15 = v12[2];
    v16 = result[3];
    v17 = v15 + 1;
    v7 = v30;
    if (v16 >> 1 <= v15)
    {
      v26 = v19;
      v25 = 0;
      v27 = v20;
      v28 = v15 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 >= 2, v17, 1);
      v17 = v28;
      v14 = v27;
      v13 = v26;
      v7 = v30;
      v4 = v25;
      result = v31;
    }

    v18 = 2 * v15;
    result[2] = v17;
    result[v18 + 4] = v13;
    result[v18 + 5] = v14;
    v9 = v29;
    if (v23 < v29)
    {
      BUG();
    }

    if ((v10 + v24 + 1) >= v23)
    {
      BUG();
    }

    ++v10;
  }

  while (v11 != v7);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData0E5FrameV4RowsV_8CreateML08WeightedE6SampleVsAE_pTg5(void (*a1)(void *, void *), uint64_t a2)
{
  v44 = v2;
  v32 = a2;
  v33 = a1;
  v34 = type metadata accessor for DataFrame.Row(0);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = v30;
  v36 = *(type metadata accessor for WeightedDataSample(0) - 8);
  v8 = *(v36 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v40 = v30;
  v11 = type metadata accessor for DataFrame.Rows(0);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows, &type metadata accessor for DataFrame.Rows, &protocol conformance descriptor for DataFrame.Rows);
  v45 = v11;
  v13 = v11;
  v14 = v12;
  v15 = dispatch thunk of Collection.count.getter(v13, v12);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v43 = _swiftEmptyArrayStorage;
  v16 = 0;
  if (v15 > 0)
  {
    v16 = v15;
  }

  v42 = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v46 = v43;
  dispatch thunk of Collection.startIndex.getter(v45, v14);
  if (v42 < 0)
  {
    BUG();
  }

  v41 = v14;
  v17 = 0;
  v18 = v45;
  v37 = v3;
  v38 = v4;
  while (1)
  {
    v19 = __OFADD__(1, v17);
    v20 = v17 + 1;
    if (v19)
    {
      BUG();
    }

    v31 = v20;
    v21 = dispatch thunk of Collection.subscript.read(v30, v39, v18, v41);
    v22 = v35;
    v23 = v34;
    (*(v4 + 16))(v35, v24, v34);
    v21(v30, 0);
    v25 = v44;
    v33(v22, v30);
    if (v25)
    {
      break;
    }

    v44 = 0;
    (*(v4 + 8))(v22, v23);
    v26 = v46;
    v43 = v46;
    v27 = v46[2];
    if (v46[3] >> 1 <= v27)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46[3] >= 2uLL, v27 + 1, 1);
      v26 = v43;
    }

    v26[2] = v27 + 1;
    v28 = *(v36 + 80);
    v46 = v26;
    outlined init with take of MLClassifierMetrics(v40, v26 + ((v28 + 32) & ~v28) + *(v36 + 72) * v27, type metadata accessor for WeightedDataSample);
    v18 = v45;
    dispatch thunk of Collection.formIndex(after:)(v39, v45, v41);
    v17 = v31;
    v4 = v38;
    if (v31 == v42)
    {
      return v46;
    }
  }

  (*(v4 + 8))(v22, v23);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSSgs5NeverOTg5(void (*a1)(void *), uint64_t a2)
{
  v4 = v2;
  v21[2] = a2;
  v22 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Collection.count.getter(v30, v5);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = _swiftEmptyArrayStorage;
  v7 = 0;
  if (v6 > 0)
  {
    v7 = v6;
  }

  v26 = v6;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  *&v27 = v28;
  v25 = v5;
  dispatch thunk of Collection.startIndex.getter(v30, v5);
  if (v26 < 0)
  {
    BUG();
  }

  v8 = 0;
  v23 = v3;
  do
  {
    if (__OFADD__(1, v8++))
    {
      BUG();
    }

    v29 = v4;
    v10 = dispatch thunk of Collection.subscript.read(v19, v24, v30, v25);
    v12 = v11[1];
    v21[0] = *v11;
    v21[1] = v12;

    v10(v19, 0);
    v13 = v29;
    v22(v21);
    v29 = v13;
    if (v13)
    {

      v12;
      BUG();
    }

    v12;
    v14 = v20;
    v15 = v27;
    v28 = v27;
    v16 = *(v27 + 16);
    v17 = *(v27 + 24);
    if (v17 >> 1 <= v16)
    {
      v27 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 >= 2, v16 + 1, 1);
      v14 = v27;
      v15 = v28;
    }

    v15[2] = v16 + 1;
    *&v27 = v15;
    *&v15[2 * v16 + 4] = v14;
    dispatch thunk of Collection.formIndex(after:)(v24, v30, v25);
    v4 = v29;
  }

  while (v8 != v26);
  return v27;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = v3;
  v25 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 40);
  do
  {
    v20 = v4;
    v8 = *v7;
    v19[0] = *(v7 - 1);
    v19[1] = v8;

    v9 = v26;
    v22(v19);
    v26 = v9;
    if (v9)
    {

      v8;
      BUG();
    }

    v8;
    v10 = v17;
    v11 = v18;
    v25 = v6;
    v12 = v6[2];
    v13 = v6[3];
    v14 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      v23 = v18;
      v24 = v17;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 >= 2, v14, 1);
      v11 = v23;
      v10 = v24;
      v6 = v25;
    }

    v6[2] = v14;
    v15 = 2 * v12;
    v6[v15 + 4] = v10;
    v6[v15 + 5] = v11;
    v7 += 2;
    v4 = v20 - 1;
  }

  while (v20 != 1);
  return v6;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sfs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  v18 = a1;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = a3;
  v27 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v26 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  result = v27;
  v9 = v23;
  v20 = v23 - 1;
  v10 = 0;
  v19 = a4;
  do
  {
    if (v10 >= v7)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    v12 = result;
    v17[0] = v9 + v10;
    v18(v17);
    if (v4)
    {

      BUG();
    }

    v13 = v24;
    result = v12;
    v27 = v12;
    v14 = v12[2];
    v15 = result[3];
    v16 = v14 + 1;
    v7 = v26;
    if (v15 >> 1 <= v14)
    {
      v21 = 0;
      v25 = v24;
      v22 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      v16 = v22;
      v13 = v25;
      v7 = v26;
      v4 = v21;
      result = v27;
    }

    result[2] = v16;
    *(result + v14 + 8) = v13;
    v9 = v23;
    if (v19 < v23)
    {
      BUG();
    }

    if ((v10 + v20 + 1) >= v19)
    {
      BUG();
    }

    ++v10;
  }

  while (v11 != v7);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = v3;
  v33 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v26 = v4;
    v8 = *i;
    v20[0] = *(i - 1);
    v20[1] = v8;

    v9 = v34;
    v28(v20, &v25);
    if (v9)
    {
      break;
    }

    v34 = 0;
    v8;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v33 = v6;
    v14 = v6[2];
    v15 = v6[3];
    v16 = v14 + 1;
    if (v15 >> 1 <= v14)
    {
      v30 = v23;
      v29 = v22;
      v31 = v21;
      v18 = v24;
      v32 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      v16 = v32;
      v13 = v18;
      v12 = v30;
      v11 = v29;
      v10 = v31;
      v6 = v33;
    }

    v6[2] = v16;
    v17 = 4 * v14;
    v6[v17 + 4] = v10;
    v6[v17 + 5] = v11;
    v6[v17 + 6] = v12;
    LOBYTE(v6[v17 + 7]) = v13;
    v4 = v26 - 1;
    if (v26 == 1)
    {
      return v6;
    }
  }

  v8;
  return v6;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a2;
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v27 = _swiftEmptyArrayStorage;
    v25 = v10;
    v26 = &v17;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v28 = v27;
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = v6;
    v24 = *(v6 + 72);
    v12 = v23 + a3;
    do
    {
      v20();
      v18 = v4;
      if (v4)
      {

        BUG();
      }

      v13 = v28;
      v27 = v28;
      v14 = v28[2];
      if (v28[3] >> 1 <= v14)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28[3] >= 2uLL, v14 + 1, 1);
        v13 = v27;
      }

      v13[2] = v14 + 1;
      v28 = v13;
      v15 = v24;
      (*(v22 + 32))(v13 + v23 + v24 * v14, v26, v21);
      v12 += v15;
      v16 = v25-- == 1;
      v4 = v18;
    }

    while (!v16);
    return v28;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5Tm(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v7 = v5;
  v21 = a2;
  v22 = a1;
  v23 = a4;
  v24 = *(a4(0) - 8);
  v9 = *(v24 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v26 = &v19;
  v12 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v27 = _swiftEmptyArrayStorage;
    v28 = a3;
    v14 = v12;
    v25 = a5;
    a5(0, v12, 0);
    v15 = v27;
    v16 = v28 + 32;
    while (1)
    {
      v28 = v16;
      v22(v16, &v19);
      if (v7)
      {
        break;
      }

      v20 = 0;
      v17 = v15;
      v27 = v15;
      v18 = v15[2];
      if (v15[3] >> 1 <= v18)
      {
        v25(v15[3] >= 2uLL, v18 + 1, 1);
        v17 = v27;
      }

      v17[2] = v18 + 1;
      v15 = v17;
      outlined init with take of MLClassifierMetrics(v26, v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, v23);
      v16 = v28 + 80;
      --v14;
      v7 = v20;
      if (!v14)
      {
        return v17;
      }
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSs5NeverOTg5(void (*a1)(void *), uint64_t a2)
{
  v36 = v2;
  v26[2] = a2;
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v35 = _swiftEmptyArrayStorage;
  v7 = 0;
  if (v6 > 0)
  {
    v7 = v6;
  }

  v34 = v6;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v4;
  v9 = v35;
  v32 = v8;
  v33 = v5;
  dispatch thunk of Collection.startIndex.getter(v8, v5);
  if (v34 < 0)
  {
    BUG();
  }

  v10 = 0;
  v28 = v3;
  do
  {
    if (__OFADD__(1, v10++))
    {
      BUG();
    }

    v12 = dispatch thunk of Collection.subscript.read(v23, v31, v32, v33);
    v14 = v13[1];
    v26[0] = *v13;
    v26[1] = v14;

    v12(v23, 0);
    v15 = v36;
    v27(v26);
    v36 = v15;
    if (v15)
    {

      v14;
      BUG();
    }

    v14;
    v16 = v24;
    v17 = v25;
    v35 = v9;
    v18 = v9[2];
    v19 = v9[3];
    v20 = v18 + 1;
    if (v19 >> 1 <= v18)
    {
      v29 = v25;
      v30 = v24;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v20, 1);
      v17 = v29;
      v16 = v30;
      v9 = v35;
    }

    v9[2] = v20;
    v21 = 2 * v18;
    v9[v21 + 4] = v16;
    v9[v21 + 5] = v17;
    dispatch thunk of Collection.formIndex(after:)(v31, v32, v33);
  }

  while (v10 != v34);
  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5(void (*a1)(uint64_t, uint64_t *), void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = _swiftEmptyArrayStorage;
  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>) - 8);
  v8 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + a3;
  v19 = *(v7 + 72);
  while (1)
  {
    v9 = v6;
    v6 = v17;
    v18(v8, &v16);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v6 = v9;
    v23 = v9;
    v11 = v9[2];
    v12 = v6[3];
    v13 = v11 + 1;
    if (v12 >> 1 <= v11)
    {
      v22 = v11 + 1;
      v21 = v15;
      v20 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, 1);
      v13 = v22;
      v10 = v21;
      v3 = v20;
      v6 = v23;
    }

    v6[2] = v13;
    v6[v11 + 4] = v10;
    v8 += v19;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_14NeuralNetworks6TensorVs5NeverOTg5Tm(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[1] = a2;
  v23 = a1;
  v24 = type metadata accessor for Tensor(0);
  v25 = *(v24 - 8);
  v6 = *(v25 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v28 = v22;
  v9 = a3 & 0xFFFFFFFFFFFFF8;
  if ((a3 & 0x4000000000000001) != 0)
  {
    if (a3)
    {
      v9 = a3;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter(v9);
  }

  else
  {
    v10 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFF8));
  }

  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = _swiftEmptyArrayStorage;
  v11 = 0;
  if (v10 > 0)
  {
    v11 = v10;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  if (v10 < 0)
  {
    BUG();
  }

  v27 = v10;
  v12 = v29;
  v13 = 0;
  v14 = 0;
  v26 = a3;
  do
  {
    if (__OFADD__(1, v14++))
    {
      BUG();
    }

    v30 = v12;
    if ((a3 & 0xC000000000000003) != 0)
    {
      v11 = a3;
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)(v13);
    }

    else
    {
      v16 = *(a3 + 8 * v13 + 32);
    }

    v17 = v16;
    v22[0] = v16;
    v23(v22, v11);
    if (v4)
    {

      BUG();
    }

    v4 = 0;

    v12 = v30;
    v29 = v30;
    v18 = v30[2];
    v19 = v30[3];
    v20 = (v18 + 1);
    if (v19 >> 1 <= v18)
    {
      v30 = (v18 + 1);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v18 + 1, 1);
      v20 = v30;
      v12 = v29;
    }

    v12[2] = v20;
    v11 = v28;
    (*(v25 + 32))(v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18, v28, v24);
    v13 = v14;
    a3 = v26;
  }

  while (v14 != v27);
  return v12;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV12SimilarItemsVs5NeverOTg5(void (*a1)(unint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a1;
  v28 = type metadata accessor for ItemSimilarityRecommenderConfiguration.SimilarItems(0);
  v29 = *(v28 - 8);
  v7 = *(v29 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v31 = &v22;
  v27 = a4;
  v10 = __OFSUB__(a4, a3);
  v11 = a4 - a3;
  if (v10)
  {
    BUG();
  }

  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v32 = a3;
  v35 = _swiftEmptyArrayStorage;
  v12 = 0;
  if (v11 > 0)
  {
    v12 = v11;
  }

  v33 = v11;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
  v13 = v33;
  if (v33 < 0)
  {
    BUG();
  }

  v14 = v35;
  v15 = v32;
  v30 = v32 - 1;
  v16 = 0;
  do
  {
    if (v16 >= v13)
    {
      BUG();
    }

    v17 = v16 + 1;
    if (__OFADD__(1, v16))
    {
      BUG();
    }

    v23 = v15 + v16;
    v26(&v23);
    v24 = v4;
    if (v4)
    {

      BUG();
    }

    v35 = v14;
    v18 = v14[2];
    v19 = v14[3];
    v20 = v18 + 1;
    if (v19 >> 1 <= v18)
    {
      v34 = v18 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v18 + 1, 1);
      v20 = v34;
      v14 = v35;
    }

    v14[2] = v20;
    (*(v29 + 32))(v14 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18, v31, v28);
    v15 = v32;
    if (v27 < v32)
    {
      BUG();
    }

    if ((v16 + v30 + 1) >= v27)
    {
      BUG();
    }

    ++v16;
    v13 = v33;
    v4 = v24;
  }

  while (v17 != v33);
  return v14;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a2;
  v22 = a1;
  v25 = a3;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v26 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  result = v28;
  v9 = 0;
  v23 = a4;
  while (1)
  {
    if (v9 >= v7)
    {
      BUG();
    }

    v10 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    v11 = result;
    v12 = v25 + v9;
    v21[0] = v12;
    v22(v21);
    if (v4)
    {

      BUG();
    }

    result = v11;
    v28 = v11;
    v13 = v11[2];
    v14 = result[3];
    v15 = v13 + 1;
    if (v14 >> 1 <= v13)
    {
      v27 = v13 + 1;
      v24 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v15, 1);
      v15 = v27;
      v4 = v24;
      result = v28;
    }

    v16 = v13 << 6;
    result[2] = v15;
    *(result + v16 + 80) = v20;
    *(result + v16 + 64) = v19;
    *(result + v16 + 48) = v18;
    *(result + v16 + 32) = v17;
    if (v23 < v25)
    {
      BUG();
    }

    if (v12 >= v23)
    {
      BUG();
    }

    v7 = v26;
    if (v10 == v26)
    {
      break;
    }

    v9 = v10;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML12MLIdentifier_ps5NeverOTg5(void (*a1)(unint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a1;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  v6 = v4;
  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v36 = a3;
  v37[0] = _swiftEmptyArrayStorage;
  v8 = 0;
  if (v5 > 0)
  {
    v8 = a4 - a3;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  if (v5 < 0)
  {
    BUG();
  }

  v33 = a4;
  v9 = v37[0];
  v10 = v36;
  v34 = v36 - 1;
  v11 = 0;
  v35 = v5;
  do
  {
    if (v11 >= v5)
    {
      BUG();
    }

    v12 = v11 + 1;
    if (__OFADD__(1, v11))
    {
      BUG();
    }

    v29 = v11;
    v26 = v10 + v11;
    v32(&v26);
    if (v6)
    {

      BUG();
    }

    v30 = 0;
    v37[0] = v9;
    v13 = v9[2];
    if (v9[3] >> 1 <= v13)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v13 + 1, 1);
    }

    v14 = v24;
    v27 = v25;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v28 = &v22;
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    v18 = alloca(v17);
    v19 = alloca(v17);
    (*(v16 + 16))(&v22, v15, v14);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13, &v22, v37, v14, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v10 = v36;
    if (v33 < v36)
    {
      BUG();
    }

    if ((v29 + v34 + 1) >= v33)
    {
      BUG();
    }

    v9 = v37[0];
    v11 = v12;
    v20 = v12 == v35;
    v5 = v35;
    v6 = v30;
  }

  while (!v20);
  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sis5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a2;
  v19 = a1;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = a3;
  v27 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v26 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  result = v27;
  v9 = v25;
  v21 = v25 - 1;
  v10 = 0;
  v20 = a4;
  do
  {
    if (v10 >= v7)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    v12 = result;
    v18[0] = v9 + v10;
    v19(v18);
    if (v4)
    {

      BUG();
    }

    v13 = v17;
    result = v12;
    v27 = v12;
    v14 = v12[2];
    v15 = result[3];
    v16 = v14 + 1;
    v7 = v26;
    if (v15 >> 1 <= v14)
    {
      v23 = v17;
      v22 = 0;
      v24 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      v16 = v24;
      v13 = v23;
      v7 = v26;
      v4 = v22;
      result = v27;
    }

    result[2] = v16;
    result[v14 + 4] = v13;
    v9 = v25;
    if (v20 < v25)
    {
      BUG();
    }

    if ((v10 + v21 + 1) >= v20)
    {
      BUG();
    }

    ++v10;
  }

  while (v11 != v7);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(BOOL, void *, uint64_t), uint64_t *a6)
{
  v26 = a2;
  v27 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledName(a4);
  v29 = *(v28 - 8);
  v10 = *(v29 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = &v26;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = v6;
  v33 = _swiftEmptyArrayStorage;
  v14 = a5;
  v15 = a6;
  v16 = v13;
  v31 = v14;
  v14(0, v13, 0);
  v35 = v33;
  v17 = *(__swift_instantiateConcreteTypeFromMangledName(v15) - 8);
  v18 = ((*(v17 + 80) + 32) & ~*(v17 + 80)) + a3;
  v30 = *(v17 + 72);
  do
  {
    v19 = v34;
    v27(v18);
    if (v19)
    {

      BUG();
    }

    v20 = v35;
    v33 = v35;
    v21 = v35[2];
    v22 = v35[3];
    v23 = (v21 + 1);
    v34 = 0;
    if (v22 >> 1 <= v21)
    {
      v35 = (v21 + 1);
      v31(v22 >= 2, v23, 1);
      v23 = v35;
      v20 = v33;
    }

    v20[2] = v23;
    v24 = *(v29 + 80);
    v35 = v20;
    (*(v29 + 32))(v20 + ((v24 + 32) & ~v24) + *(v29 + 72) * v21, v32, v28);
    v18 += v30;
    v16 = (v16 - 1);
  }

  while (v16);
  return v35;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SaySS5label_Sd10confidencetGsAE_pTg5Tm(void (*a1)(uint64_t, uint64_t *), void *a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  v18 = a2;
  v19 = a1;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = _swiftEmptyArrayStorage;
  v21 = a4;
  a4(0, v5, 0);
  v7 = _swiftEmptyArrayStorage;
  v8 = *(type metadata accessor for URL(0) - 8);
  v9 = ((*(v8 + 80) + 32) & ~*(v8 + 80)) + a3;
  v20 = *(v8 + 72);
  while (1)
  {
    v10 = v7;
    v7 = v18;
    v19(v9, &v17);
    if (v4)
    {
      break;
    }

    v11 = v16;
    v7 = v10;
    v25 = v10;
    v12 = v10[2];
    v13 = v7[3];
    v14 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      v24 = v12 + 1;
      v23 = v16;
      v22 = 0;
      v21(v13 >= 2, v14, 1);
      v14 = v24;
      v11 = v23;
      v4 = v22;
      v7 = v25;
    }

    v7[2] = v14;
    v7[v12 + 4] = v11;
    v9 += v20;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_14NeuralNetworks6TensorVs5NeverOTg5Tm(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, void *, uint64_t))
{
  v24[2] = a2;
  v25 = a1;
  v26 = a4(0);
  v27 = *(v26 - 8);
  v8 = *(v27 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v29 = &v23;
  v11 = *(a3 + 16);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v31 = v5;
  v30 = _swiftEmptyArrayStorage;
  v12 = a5;
  v13 = v11;
  v28 = v12;
  v12(0, v11, 0);
  v32 = v30;
  v14 = (a3 + 40);
  do
  {
    v15 = *v14;
    v24[0] = *(v14 - 1);
    v24[1] = v15;

    v16 = v31;
    v25(v24);
    v31 = v16;
    if (v16)
    {

      v15;
      BUG();
    }

    v15;
    v17 = v32;
    v30 = v32;
    v18 = v32[2];
    v19 = v32[3];
    v20 = (v18 + 1);
    if (v19 >> 1 <= v18)
    {
      v32 = (v18 + 1);
      v28(v19 >= 2, v20, 1);
      v20 = v32;
      v17 = v30;
    }

    v17[2] = v20;
    v21 = *(v27 + 80);
    v32 = v17;
    (*(v27 + 32))(v17 + ((v21 + 32) & ~v21) + *(v27 + 72) * v18, v29, v26);
    v14 += 2;
    v13 = (v13 - 1);
  }

  while (v13);
  return v32;
}

uint64_t static MLHandPoseClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLHandPoseClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t type metadata accessor for MLHandPoseClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandPoseClassifier;
  if (!type metadata singleton initialization cache for MLHandPoseClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandPoseClassifier);
  }

  return result;
}

void MLHandPoseClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLHandPoseClassifier(0) + 20);

  *(v1 + v2) = a1;
}

uint64_t MLHandPoseClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandPoseClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 24), v2, type metadata accessor for MLHandPoseClassifier.ModelParameters);
}

uint64_t MLHandPoseClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandPoseClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandPoseClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandPoseClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandPoseClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v70 = v4;
  v61 = a2;
  v68 = a1;
  v5 = v3;
  v52 = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8);
  v51 = *(v52 + 64);
  v6 = alloca(v51);
  v7 = alloca(v51);
  v60 = &v51;
  v8 = type metadata accessor for MLHandPoseClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v54 = &v51;
  v63 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v12 = *(*(v63 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v67 = &v51;
  v15 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v53 = &v51;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v58 = *(v59 - 8);
  v18 = *(v58 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v65 = v8;
  v21 = *(v8 + 20);
  v22 = objc_allocWithZone(MLModel);
  v23 = [v22 init];
  v55 = v5;
  v64 = v23;
  *(v5 + v21) = v23;
  v24 = *(v8 + 28);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v51);
  v69 = *(v58 + 8);
  v69(&v51, v59);
  v25 = v55;
  *(v55 + v24) = 0;
  v66 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v58 = v24 + v5;
  swift_storeEnumTagMultiPayload(v24 + v5, v66, 1);
  v26 = *(v65 + 32);
  v27 = v25 + v26;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  v28 = v61;
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v51);
  v69(&v51, v59);
  *(v55 + v26) = 0;
  v59 = v27;
  swift_storeEnumTagMultiPayload(v27, v66, 1);
  v29 = v70;
  MLHandPoseClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v71, &v56, a3);
  if (v29)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLHandPoseClassifier.DataSource);

LABEL_3:
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLClassifierMetrics);
  }

  v69 = 0;
  v31 = v71;
  v65 = v56;
  LOBYTE(v70) = v57;
  v32 = v72;
  if (v72 == 0xFF)
  {
    LODWORD(v66) = v72;
    v34 = v71;
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(a3);
    v35 = v71;
    v73 = v72;
  }

  else
  {
    type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
    v56 = v31;
    v57 = v32 & 1;
    outlined copy of Result<_DataTable, Error>(v31, v32);
    v33 = v69;
    static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(&v56, 0);
    if (v33)
    {
      outlined consume of MLDataTable?(v65, v70);
      outlined consume of MLDataTable?(v31, v32);
      outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLHandPoseClassifier.DataSource);
      outlined consume of MLDataTable?(v31, v32);

      goto LABEL_3;
    }

    LODWORD(v66) = v32;
    outlined consume of MLDataTable?(v31, v32);
    v35 = v71;
    v73 = v72;
    v28 = v61;
    v34 = v31;
  }

  v69 = v35;
  v36 = v67;
  v62 = v34;
  if (v70 == 0xFF)
  {
    outlined init with copy of MLTrainingSessionParameters(v28, v67, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v36, v63) != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v40 = empty;
      v63 = 0;
      v41 = type metadata accessor for CMLTable();
      v42 = swift_allocObject(v41, 24, 7);
      *(v42 + 16) = v40;
      v43 = type metadata accessor for _DataTable();
      swift_allocObject(v43, 40, 7);
      v67 = _DataTable.init(impl:)(v42);
      v28 = v61;
      goto LABEL_16;
    }

    v37 = v36;
    v38 = v53;
    outlined init with take of MLClassifierMetrics(v37, v53, type metadata accessor for MLHandPoseClassifier.DataSource);
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(a3);
    outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  else
  {
    type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
    v56 = v65;
    v57 = v70 & 1;
    static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(&v56, 0);
  }

  v44 = v71;
  v67 = v71;
  LOBYTE(v44) = v72;
  v63 = v44;
LABEL_16:
  outlined init with copy of MLTrainingSessionParameters(v28, v60, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v45 = *(v52 + 80);
  v46 = ~*(v52 + 80) & (v45 + 41);
  v47 = swift_allocObject(&unk_38F290, v46 + v51, v45 | 7);
  *(v47 + 16) = v69;
  v48 = v73;
  *(v47 + 24) = v73 & 1;
  *(v47 + 32) = v67;
  *(v47 + 40) = v63 & 1;
  outlined init with take of MLClassifierMetrics(v60, v47 + v46, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v49 = v48;
  v50 = v69;
  LODWORD(v60) = v49;
  outlined copy of Result<_DataTable, Error>(v69, v49);
  LOBYTE(v46) = v63;
  outlined copy of Result<_DataTable, Error>(v67, v63);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandPoseClassifier.init(trainingData:parameters:), v47);

  outlined consume of MLDataTable?(v65, v70);
  outlined consume of MLDataTable?(v62, v66);
  outlined consume of Result<_DataTable, Error>(v67, v46);
  outlined consume of Result<_DataTable, Error>(v50, v60);
  outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLHandPoseClassifier.DataSource);

  outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLClassifierMetrics);
  return outlined init with take of MLClassifierMetrics(v54, v55, type metadata accessor for MLHandPoseClassifier);
}

uint64_t closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a6;
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 25) = a3;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  v10 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  outlined copy of Result<_DataTable, Error>(a4, a5);
  return swift_task_switch(closure #1 in MLHandPoseClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)()
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
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v6 = swift_task_alloc(192);
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLHandPoseClassifier.init(trainingData:parameters:);
  return MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 48), v0 + 16, v0 + 32, *(v0 + 80));
}

{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLHandPoseClassifier.init(trainingData:parameters:), 0, 0);
  }

  *(v3 + 80);
  return (*(v3 + 8))();
}

{
  *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v6 = type metadata accessor for MLHandActionClassifier(0);
  *(v4 + 64) = v6;
  *(v4 + 72) = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v4 + 80) = v7;
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v4 + 88) = swift_task_alloc(v8);
  *(v4 + 96) = swift_task_alloc(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  *(v4 + 104) = v9;
  v10 = *(v9 - 8);
  *(v4 + 112) = v10;
  *(v4 + 120) = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 128) = *a2;
  *(v4 + 25) = *(a2 + 8);
  *(v4 + 136) = *a3;
  *(v4 + 26) = *(a3 + 8);
  return swift_task_switch(MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:), 0, 0);
}

uint64_t MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:)()
{
  v26 = *(v0 + 25);
  v25 = *(v0 + 26);
  v14 = *(v0 + 136);
  v16 = *(v0 + 128);
  v1 = *(v0 + 120);
  v23 = *(v0 + 112);
  v21 = *(v0 + 104);
  v18 = *(v0 + 96);
  v15 = *(v0 + 88);
  v17 = *(v0 + 80);
  v19 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = objc_allocWithZone(MLModel);
  *(v0 + 144) = [v3 init];
  v22 = type metadata accessor for MLHandPoseClassifier(0);
  *(v0 + 152) = v22;
  v4 = v22[7];
  *(v0 + 28) = v4;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  v24 = *(v23 + 8);
  v24(v1, v21);
  *(v2 + v4) = 0;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v4, v20, 1);
  v5 = v22[8];
  *(v0 + 44) = v5;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  v24(v1, v21);
  *(v2 + v5) = 0;
  swift_storeEnumTagMultiPayload(v5 + v2, v20, 1);
  v6 = v22[6];
  *(v0 + 176) = v6;
  outlined init with copy of MLTrainingSessionParameters(v19, v6 + v2, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v8 = *(v19 + v7[7]);
  v9 = *(v19 + v7[5]);
  v10 = *(v19 + v7[6]);
  *v18 = 0;
  *(v18 + 16) = 256;
  v11 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v18, v11, 0);
  *(v18 + v17[5]) = v9;
  *(v18 + v17[6]) = v10;
  *(v18 + v17[7]) = 1;
  *(v18 + v17[8]) = v8;
  *(v18 + v17[10]) = 0x403E000000000000;
  *(v0 + 16) = v16;
  *(v0 + 24) = v26;
  *(v0 + 32) = v14;
  *(v0 + 40) = v25;
  outlined init with copy of MLTrainingSessionParameters(v18, v15, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v12 = swift_task_alloc(144);
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:);
  return MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 72), v0 + 16, v0 + 32, *(v0 + 88));
}

{
  v3 = *(*v1 + 160);
  v2 = *v1;
  *(*v1 + 168) = v0;
  v3;
  if (v0)
  {
    v4 = MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  else
  {
    *(v2 + 180) = *(*(v2 + 152) + 20);
    v4 = MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v8 = *(v0 + 180);
  v10 = *(v0 + 144);
  v9 = *(v0 + 120);
  v1 = *(v0 + 96);
  v7 = *(v0 + 88);
  v2 = *(v0 + 72);
  v12 = *(v0 + 64);
  v3 = *(v0 + 48);
  v11 = v3 + *(v0 + 44);
  v4 = v3 + *(v0 + 28);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined init with take of MLClassifierMetrics(v2, v3, type metadata accessor for MLHandActionClassifier);
  outlined assign with copy of MLClassifierMetrics(v3 + *(v12 + 32), v4);
  outlined assign with copy of MLClassifierMetrics(v3 + *(v12 + 36), v11);
  v5 = *(v3 + 16);

  *(v3 + v8) = v5;
  v9;
  v1;
  v7;
  v2;
  return (*(v0 + 8))();
}

{
  v10 = *(v0 + 144);
  v9 = *(v0 + 120);
  v1 = *(v0 + 96);
  v8 = *(v0 + 88);
  v7 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = v2 + *(v0 + 176);
  v4 = v2 + *(v0 + 44);
  v5 = v2 + *(v0 + 28);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLHandActionClassifier.ModelParameters);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v9;
  v1;
  v8;
  v7;
  return (*(v0 + 8))();
}

uint64_t MLHandPoseClassifier.init(model:parameters:metricsAttributes:classLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v76 = a4;
  v74 = a3;
  v6 = v4;
  v75 = a2;
  v64 = v5;
  v78 = a1;
  v7 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v67 = v62;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v65 = v62;
  v71 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v12 = *(*(v71 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v70 = v62;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v73 = v62;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v82 = *(v81 - 8);
  v17 = *(v82 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = type metadata accessor for MLHandPoseClassifier(0);
  v21 = *(v20 + 20);
  v69 = v20;
  v22 = objc_allocWithZone(MLModel);
  *(v6 + v21) = [v22 init];
  v80 = *(v20 + 28);
  v23 = v6 + v80;
  v77 = v6;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v72[1] = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v62);
  v82 = *(v82 + 8);
  v24 = v81;
  (v82)(v62, v81);
  *(v6 + v80) = 0;
  v80 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v66 = v23;
  swift_storeEnumTagMultiPayload(v23, v80, 1);
  v79 = *(v69 + 32);
  v25 = v6 + v79;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v62);
  (v82)(v62, v24);
  *(v77 + v79) = 0;
  v68 = v25;
  swift_storeEnumTagMultiPayload(v25, v80, 1);
  v26 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v79 = *(v75 + v26[7]);
  v27 = *(v75 + v26[5]);
  v28 = *(v75 + v26[6]);
  v29 = v73;
  *v73 = 0;
  *(v29 + 16) = 256;
  v30 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v29, v30, 0);
  v31 = v71;
  *(v29 + *(v71 + 20)) = v27;
  *(v29 + v31[6]) = v28;
  *(v29 + v31[7]) = 1;
  *(v29 + v31[8]) = v79;
  *(v29 + v31[10]) = 0x403E000000000000;
  outlined init with copy of MLTrainingSessionParameters(v29, v70, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v32 = objc_allocWithZone(MLModel);

  v33 = [v32 init];
  v34 = v77;
  v77[2] = v33;
  v79 = type metadata accessor for MLHandActionClassifier(0);
  v35 = *(v79 + 32);
  v36 = v34 + v35;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v62);
  (v82)(v62, v81);
  v37 = v77;
  *(v77 + v35) = 0;
  swift_storeEnumTagMultiPayload(v36, v80, 1);
  v38 = *(v79 + 36);
  v39 = v37 + v38;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v62);
  (v82)(v62, v81);
  v40 = v77;
  *(v77 + v38) = 0;
  v41 = v76;
  swift_storeEnumTagMultiPayload(v39, v80, 1);
  *v40 = v41;
  v42 = v70;
  outlined init with copy of MLTrainingSessionParameters(v70, v40 + *(v79 + 28), type metadata accessor for MLHandActionClassifier.ModelParameters);
  v43 = *(v42 + *(v71 + 28));
  v44 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v44, *(v44 + 48), *(v44 + 52));

  MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v41, 0, 21, 3, v43);
  v45 = v42;
  v46 = v74;
  outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v47 = v78;

  v48 = v77;
  v77[1] = v47;
  outlined init with copy of MLTrainingSessionParameters(v75, v48 + *(v69 + 24), type metadata accessor for MLHandPoseClassifier.ModelParameters);
  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v46);
  if (!v63)
  {
    v41;
    v46;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
LABEL_7:
    v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
    *v54 = 0xD00000000000002CLL;
    *(v54 + 8) = "training_confusion" + 0x8000000000000000;
    *(v54 + 16) = 0;
    *(v54 + 32) = 0;
    *(v54 + 48) = 0;
    swift_willThrow();
    goto LABEL_8;
  }

  v49 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  if (!swift_dynamicCast(v72, v62, &type metadata for Any + 8, v49, 6))
  {
    v41;
    v74;
    goto LABEL_7;
  }

  v80 = v49;
  v50 = v72[0];
  v51 = v65;
  v52 = v64;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v72[0], v41, 0);
  v82 = v52;
  if (v52)
  {
    v41;

    v74;
LABEL_8:

    outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLHandActionClassifier.ModelParameters);
LABEL_9:
    v55 = type metadata accessor for MLHandPoseClassifier;
    v56 = v77;
    return outlined destroy of MLActivityClassifier.ModelParameters(v56, v55);
  }

  v81 = v50;
  outlined assign with take of MLClassifierMetrics(v51, v66);
  v58 = v74;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v74);
  v58;
  if (!v63)
  {
    v76;

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
LABEL_17:
    outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    v55 = type metadata accessor for MLHandActionClassifier.ModelParameters;
    v56 = v73;
    return outlined destroy of MLActivityClassifier.ModelParameters(v56, v55);
  }

  if (!swift_dynamicCast(v72, v62, &type metadata for Any + 8, v80, 6))
  {
    v76;

    goto LABEL_17;
  }

  v59 = v67;
  v60 = v76;
  v61 = v82;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(v72[0], v76, 0);
  v60;

  outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLHandActionClassifier.ModelParameters);
  if (v61)
  {
    goto LABEL_9;
  }

  return outlined assign with take of MLClassifierMetrics(v59, v68);
}

uint64_t MLHandPoseClassifier.init(checkpoint:)(uint64_t a1, __m128 a2)
{
  v122._object = v3;
  v120 = a1;
  v4 = v2;
  v108 = type metadata accessor for MLHandActionClassifier(0);
  v104 = *(v108 - 1);
  v5 = *(v104 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v102 = &v93;
  v103 = v5;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v110 = &v93;
  v106 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v10 = *(*(v106 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v105 = &v93;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v109 = &v93;
  v122._countAndFlagsBits = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v15 = *(*(v122._countAndFlagsBits - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v98 = &v93;
  v101 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v18 = *(*(v101 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v116 = &v93;
  v112 = type metadata accessor for URL(0);
  v111 = *(v112 - 8);
  v21 = *(v111 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v123 = &v93;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v115 = &v93;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v118 = *(v121 - 8);
  v26 = *(v118 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = objc_allocWithZone(MLModel);
  v113 = [v29 init];
  v117 = type metadata accessor for MLHandPoseClassifier(0);
  v119 = v117[7];
  v30 = v4 + v119;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v31 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v93);
  v118 = *(v118 + 8);
  (v118)(&v93, v121);
  *(v4 + v119) = 0;
  v119 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v97 = v30;
  swift_storeEnumTagMultiPayload(v30, v119, 1);
  v107 = v117[8];
  v32 = v4 + v107;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  v100 = v31;
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v93);
  v99 = &v93;
  (v118)(&v93, v121);
  v114 = v4;
  *(v4 + v107) = 0;
  v107 = v32;
  v33 = v32;
  v34 = v112;
  v35 = v120;
  swift_storeEnumTagMultiPayload(v33, v119, 1);
  v36 = v115;
  URL.deletingLastPathComponent()(v33);
  v37 = v123;
  v38 = v36;
  v39 = v34;
  v40 = v111;
  (*(v111 + 16))(v123, v38, v39);
  object = v122._object;
  MLHandPoseClassifier.PersistentParameters.init(sessionDirectory:)(v37);
  v122._object = object;
  if (object)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLCheckpoint);
    (*(v40 + 8))(v115, v39);
LABEL_3:

    goto LABEL_12;
  }

  v42 = v116;
  v43 = v98;
  outlined init with copy of MLTrainingSessionParameters(v116, v98, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v43, v122._countAndFlagsBits) == 3)
  {
    LODWORD(v123) = *(v43 + 8);
    v44 = *v43;
    v45 = *(v43 + 24);
    v122._countAndFlagsBits = *(v43 + 32);
    v46 = *(v43 + 40);
    v47 = *(v43 + 56);
    v45;
    v47;
    v48 = v123;
    outlined copy of Result<_DataTable, Error>(v44, v123);
    v49._countAndFlagsBits = v122._countAndFlagsBits;
    v49._object = v46;
    specialized MLDataTable.subscript.getter(v49, v44, v48);
    v46;
    outlined consume of Result<_DataTable, Error>(v44, v48);
    v50 = v95;
    LOBYTE(v47) = v96;
    specialized MLDataColumn.dropDuplicates()(v95, v96);
    outlined consume of Result<_DataTable, Error>(v50, v47);
    v122._countAndFlagsBits = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v93, v94, *a2.i64);
    v49._countAndFlagsBits = v44;
    v42 = v116;
    outlined consume of Result<_DataTable, Error>(v49._countAndFlagsBits, v123);
  }

  else
  {
    v51 = v122._object;
    v52 = static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(v42, a2);
    v122._object = v51;
    if (v51)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      (*(v111 + 8))(v115, v112);
      outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLHandPoseClassifier.DataSource);
      goto LABEL_3;
    }

    v55 = v52;
    v56 = v53;
    v54;
    v55;
    v122._countAndFlagsBits = specialized _copyCollectionToContiguousArray<A>(_:)(v56);
    v56;
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  v57 = v114 + v117[6];
  v58 = v101;
  outlined init with copy of MLTrainingSessionParameters(v42 + *(v101 + 20), v57, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v59 = v42;
  v60 = *(v42 + v58[6]);
  v61 = *(v59 + v58[7]);
  v62 = *(v59 + v58[8]);
  v63 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v63[5] + v57) = v60;
  *(v63[6] + v57) = v61;
  *(v63[7] + v57) = v62;
  v64 = v109;
  *v109 = 0;
  *(v64 + 16) = 256;
  v65 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v64, v65, 0);
  v66 = v106;
  *(v64 + *(v106 + 20)) = v60;
  *(v64 + v66[6]) = v61;
  *(v64 + v66[7]) = 1;
  *(v64 + v66[8]) = v62;
  *(v64 + v66[10]) = 0x403E000000000000;
  outlined init with copy of MLTrainingSessionParameters(v64, v105, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v67 = objc_allocWithZone(MLModel);
  v68 = [v67 init];
  v69 = v110;
  v110[2] = v68;
  v123 = v108[8];
  v70 = v123 + v69;
  v71 = v99;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v71);
  (v118)(v71, v121);
  *(v123 + v69) = 0;
  swift_storeEnumTagMultiPayload(v70, v119, 1);
  v123 = v108[9];
  v72 = v123 + v69;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v71);
  (v118)(v71, v121);
  *(v123 + v69) = 0;
  v73 = v72;
  v74 = v69;
  swift_storeEnumTagMultiPayload(v73, v119, 1);
  countAndFlagsBits = v122._countAndFlagsBits;
  *v69 = v122._countAndFlagsBits;
  v76 = v69 + v108[7];
  v77 = v105;
  outlined init with copy of MLTrainingSessionParameters(v105, v76, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v121 = *(v77 + *(v106 + 28));
  v78 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v78, *(v78 + 48), *(v78 + 52));

  v79 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(countAndFlagsBits, 0, 21, 3, v121);
  outlined destroy of MLActivityClassifier.ModelParameters(v77, type metadata accessor for MLHandActionClassifier.ModelParameters);
  *(v74 + 8) = v79;
  v80 = v120;
  v81 = v122._object;
  MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v120);
  if (!v81)
  {
    v83 = v102;
    outlined init with copy of MLTrainingSessionParameters(v74, v102, type metadata accessor for MLHandActionClassifier);
    v84 = *(v104 + 80);
    v85 = ~*(v104 + 80) & (v84 + 16);
    v86 = swift_allocObject(&unk_38F2B8, v85 + v103, v84 | 7);
    outlined init with take of MLClassifierMetrics(v83, v86 + v85, type metadata accessor for MLHandActionClassifier);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandPoseClassifier.init(checkpoint:), v86);
    v89 = v88;

    v90 = v117[5];
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
    (*(v111 + 8))(v115, v112);

    v91 = v114;
    *(v114 + v90) = v89;
    return outlined init with take of MLClassifierMetrics(v110, v91, type metadata accessor for MLHandActionClassifier);
  }

  v122._object = v81;
  v82 = v114;
  v87 = v117;
  outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  (*(v111 + 8))(v115, v112);
  outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLHandActionClassifier);

  outlined destroy of MLActivityClassifier.ModelParameters(v87[6] + v82, type metadata accessor for MLHandPoseClassifier.ModelParameters);
LABEL_12:
  outlined destroy of MLActivityClassifier.ModelParameters(v97, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLClassifierMetrics);
}

char specialized MLDataTable.subscript.getter(Swift::String a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    swift_willThrow();
    _StringGuts.grow(_:)(34);
    0;
    *&v16 = 0xD00000000000001FLL;
    *(&v16 + 1) = "Duplicate values for key: '" + 0x8000000000000000;
    String.append(_:)(a1);
    v6._countAndFlagsBits = 39;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v9 = v16;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 1;
  }

  else
  {
    v5 = *(a2 + 16);

    v11 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v5, a1._countAndFlagsBits, a1._object);

    v12 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v12, 24, 7);
    *(v8 + 16) = v11;
    *&v17 = v11;

    _UntypedColumn.type.getter();

    if (!v16)
    {

      result = 0;
      goto LABEL_5;
    }

    _StringGuts.grow(_:)(49);
    0;
    strcpy(&v16, "Column named '");
    HIBYTE(v16) = -18;
    String.append(_:)(a1);
    v13._object = "DataTable has no column named '" + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v13);
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v15 = v16;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    *(v15 + 48) = 1;
  }

  result = 1;
LABEL_5:
  *v4 = v8;
  *(v4 + 8) = result;
  return result;
}

{
  v4 = v3;
  if (a3)
  {
    swift_willThrow();
    _StringGuts.grow(_:)(34);
    0;
    *&v16 = 0xD00000000000001FLL;
    *(&v16 + 1) = "Duplicate values for key: '" + 0x8000000000000000;
    String.append(_:)(a1);
    v6._countAndFlagsBits = 39;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v9 = v16;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 1;
  }

  else
  {
    v5 = *(a2 + 16);

    v11 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v5, a1._countAndFlagsBits, a1._object);

    v12 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v12, 24, 7);
    *(v8 + 16) = v11;
    *&v17 = v11;

    _UntypedColumn.type.getter();

    if (v16 == 2)
    {

      result = 0;
      goto LABEL_5;
    }

    _StringGuts.grow(_:)(49);
    0;
    strcpy(&v16, "Column named '");
    HIBYTE(v16) = -18;
    String.append(_:)(a1);
    v13._object = "DataTable has no column named '" + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v13);
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v15 = v16;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    *(v15 + 48) = 1;
  }

  result = 1;
LABEL_5:
  *v4 = v8;
  *(v4 + 8) = result;
  return result;
}

uint64_t specialized MLDataColumn.dropDuplicates()(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v17[0] = a1;
    swift_errorRetain(a1);
    outlined copy of Result<_DataTable, Error>(a1, 1);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v17, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(a1, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = a1;
    }

    result = outlined consume of Result<_DataTable, Error>(a1, 1);
    v11 = 1;
  }

  else
  {
    v7 = *(*(a1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    v8 = specialized handling<A, B>(_:_:)(v7);
    v12 = v8;
    if (!v8)
    {
      BUG();
    }

    v11 = 0;
    v13 = type metadata accessor for CMLColumn();
    v14 = swift_allocObject(v13, 24, 7);
    *(v14 + 16) = v12;
    v15 = v14;
    v16 = type metadata accessor for _UntypedColumn();
    v6 = swift_allocObject(v16, 24, 7);
    *(v6 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(a1, 0);
  }

  *v3 = v6;
  *(v3 + 8) = v11;
  return result;
}

void *_sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(uint64_t a1, char a2, double a3)
{
  v3 = a1;
  v4 = _swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v5 = CMLColumn.size.getter();
    v14 = v5;
    if (v5 < 0)
    {
      BUG();
    }

    if (v5)
    {
      v4 = _swiftEmptyArrayStorage;
      v6 = 0;
      do
      {
        outlined copy of Result<_DataTable, Error>(v3, 0);
        _UntypedColumn.valueAtIndex(index:)(v6, a3);
        v7 = v11;
        if (v13 == 2)
        {
          v15 = v12;
        }

        else
        {
          outlined consume of MLDataValue(v11, v12, v13);
          v7 = 0;
          v15 = 0xE000000000000000;
        }

        outlined consume of Result<_DataTable, Error>(v3, 0);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v8 = v4[2];
        if (v4[3] >> 1 <= v8)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v8 + 1, 1, v4);
        }

        ++v6;
        v4[2] = v8 + 1;
        v9 = 2 * v8;
        v4[v9 + 4] = v7;
        v4[v9 + 5] = v15;
        v3 = a1;
      }

      while (v14 != v6);
    }
  }

  outlined consume of Result<_DataTable, Error>(v3, a2);
  return v4;
}

void *_sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(uint64_t a1, char a2, double a3)
{
  v3 = a1;
  v4 = _swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v5 = CMLColumn.size.getter();
    v13 = v5;
    if (v5 < 0)
    {
      BUG();
    }

    if (v5)
    {
      v4 = _swiftEmptyArrayStorage;
      v6 = 0;
      do
      {
        outlined copy of Result<_DataTable, Error>(v3, 0);
        _UntypedColumn.valueAtIndex(index:)(v6, a3);
        v7 = v10;
        if (v12)
        {
          outlined consume of MLDataValue(v10, v11, v12);
          outlined consume of Result<_DataTable, Error>(v3, 0);
          v7 = 0;
          if (!swift_isUniquelyReferenced_nonNull_native(v4))
          {
            goto LABEL_13;
          }

          v7 = 0;
        }

        else
        {
          outlined consume of Result<_DataTable, Error>(v3, 0);
          if (!swift_isUniquelyReferenced_nonNull_native(v4))
          {
LABEL_13:
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
          }
        }

        v8 = v4[2];
        if (v4[3] >> 1 <= v8)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v8 + 1, 1, v4);
        }

        ++v6;
        v4[2] = v8 + 1;
        v4[v8 + 4] = v7;
        v3 = a1;
      }

      while (v13 != v6);
    }
  }

  outlined consume of Result<_DataTable, Error>(v3, a2);
  return v4;
}

void *_sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5(uint64_t a1, char a2, double a3)
{
  v3 = _swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v4 = CMLColumn.size.getter();
    v11 = v4;
    if (v4 < 0)
    {
      BUG();
    }

    if (v4)
    {
      v3 = _swiftEmptyArrayStorage;
      v5 = 0;
      do
      {
        outlined copy of Result<_DataTable, Error>(a1, 0);
        _UntypedColumn.valueAtIndex(index:)(v5, a3);
        if (v10 == 1)
        {
          v12 = *&v8;
        }

        else
        {
          outlined consume of MLDataValue(v8, v9, v10);
          v12 = 0.0;
        }

        outlined consume of Result<_DataTable, Error>(a1, 0);
        if (!swift_isUniquelyReferenced_nonNull_native(v3))
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v6 = v3[2];
        if (v3[3] >> 1 <= v6)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v6 + 1, 1, v3);
        }

        ++v5;
        v3[2] = v6 + 1;
        a3 = v12;
        *&v3[v6 + 4] = v12;
      }

      while (v11 != v5);
    }
  }

  outlined consume of Result<_DataTable, Error>(a1, a2);
  return v3;
}

uint64_t closure #1 in MLHandPoseClassifier.init(checkpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return swift_task_switch(closure #1 in MLHandPoseClassifier.init(checkpoint:), 0, 0);
}

uint64_t closure #1 in MLHandPoseClassifier.init(checkpoint:)()
{
  v1 = swift_task_alloc(80);
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MLHandPoseClassifier.init(checkpoint:);
  return MLHandActionClassifier.GraphCNN.compile()();
}

{
  **(v0 + 16) = *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLHandPoseClassifier.init(checkpoint:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v5;
  if (v1)
  {
    return (*(v6 + 8))();
  }

  *(v4 + 40) = a1;
  return swift_task_switch(closure #1 in MLHandPoseClassifier.init(checkpoint:), 0, 0);
}

void *static MLHandPoseClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  result = static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3, a4);
  if (!v4)
  {
    v6 = result;
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandPoseClassifier>);
    v8 = swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
    return specialized MLJob.init(_:)(v8, v6);
  }

  return result;
}

uint64_t static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  v24 = v4;
  v27 = a2;
  v25 = a1;
  v6 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v26 = &v22;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = *(*(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  outlined init with copy of MLTrainingSessionParameters(v25, &v22, type metadata accessor for MLHandPoseClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v27, &v22, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v27 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v22, type metadata accessor for MLTrainingSessionParameters);
  v17 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  v18 = v24;
  result = HandPoseClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v22, &v22, &v22, a4);
  if (!v18)
  {
    v23[3] = v17;
    v23[4] = &protocol witness table for HandPoseClassifierTrainingSessionDelegate;
    v23[0] = result;
    v20 = v26;
    outlined init with copy of MLTrainingSessionParameters(v27, v26, type metadata accessor for MLTrainingSessionParameters);
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>);
    swift_allocObject(v21, *(v21 + 48), *(v21 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v23, v20, 23);
  }

  return result;
}

void *static MLHandPoseClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandPoseClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLHandPoseClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = HandPoseClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for HandPoseClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 23);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLHandPoseClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v54 = a5;
  v53 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLHandPoseClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v41;
  v48 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v11 = *(*(v48 - 1) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v50 = &v41;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v49 = &v41;
  v17 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = alloca(v18);
  v22 = alloca(v18);
  if (a2)
  {
    v41 = a1;
    swift_storeEnumTagMultiPayload(&v41, v6, 1);
    swift_errorRetain(a1);
    v53(&v41);
    v23 = &demangling cache variable for type metadata for Result<MLHandPoseClassifier, Error>;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
  }

  v51 = v17;
  v55 = &v41;
  v52 = &v41;
  outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v42);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
  v26 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  result = swift_dynamicCast(&v47, v42, v25, v26, 6);
  if (result)
  {
    v27 = *(v47 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
    if (v27)
    {
      v57 = v47;
      v28 = v47 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
      swift_beginAccess(v47 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v42, 0, 0);
      v29 = v28;
      v10 = v49;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v49, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
      v30 = v48;
      if (__swift_getEnumTagSinglePayload(v10, 1, v48))
      {

        v23 = &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
      }

      v31 = v50;
      outlined init with copy of MLTrainingSessionParameters(v10, v50, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      v56 = v27;

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
      outlined init with copy of MLTrainingSessionParameters(v31 + v30[5], &v41, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      v32 = *(v31 + v30[7]);
      v33 = *(v31 + v30[8]);
      v34 = v51;
      *&v42[*(v51 + 20) - 8] = *(v31 + v30[6]);
      *&v42[*(v34 + 24) - 8] = v32;
      *&v42[*(v34 + 28) - 8] = v33;
      outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      v35 = v55;
      outlined init with take of MLClassifierMetrics(&v41, v55, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      v36 = *(v57 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
      if (v36)
      {
        v37 = alloca(48);
        v38 = alloca(48);
        v43 = v56;
        v44 = v35;
        v45 = v57;
        v46 = v36;

        v39 = v52;
        _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML20MLHandPoseClassifierV_s5Error_pTt1g5(partial apply for closure #1 in closure #1 in closure #1 in static MLHandPoseClassifier.resume(_:), &v41);
        v36;
        v53(v39);

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for Result<MLHandPoseClassifier, Error>);
        v40 = v55;
      }

      else
      {

        v40 = v35;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    }

    else
    {
    }
  }

  return result;
}

void *closure #1 in closure #1 in closure #1 in static MLHandPoseClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v16 = a5;
  v14[0] = v6;
  v15 = a3;
  v14[1] = v5;
  v8 = *(*(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of MLTrainingSessionParameters(a2, v14, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v11 = *(v15 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  v12 = v14[0];
  result = MLHandPoseClassifier.init(model:parameters:metricsAttributes:classLabels:)(a1, v14, v11, a4);
  if (v12)
  {
    result = v16;
    *v16 = v12;
  }

  return result;
}

uint64_t static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  *(inited + 128) = 0x7461506567616D69;
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

uint64_t static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1, uint64_t a2, void *a3)
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
      specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:), 0, v38, v39);
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
        v38 = 21;
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

void closure #1 in static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = *a1;
    static MLHandPoseClassifier.convertSequenceToMultiArray(value:)(&v2);
  }

  else
  {
    *v1 = 0;
  }
}

void static MLHandPoseClassifier.convertSequenceToMultiArray(value:)(uint64_t *a1)
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
  [v7 initWithInteger:21];
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

        if (v27 != 21)
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

void *MLHandPoseClassifier.modelPrediction(on:using:)(uint64_t a1, void *a2)
{
  v4 = static _VideoUtilities.getHandKeyPointsFromImageUrl(url:)(a1);
  if (!v2)
  {
    v5 = v4;
    v15 = v4[2];
    if (v15)
    {
      specialized ContiguousArray.reserveCapacity(_:)(v15);
      v6 = 0;
      do
      {
        v7 = v5[v6++ + 4];
        v7;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v7);
        v8 = v5;
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
        v10 = v9;
        v5 = v8;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10);
        specialized ContiguousArray._endMutation()(v10);
      }

      while (v15 != v6);
      v8;
    }

    else
    {
      v4;
    }

    v12 = static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(_swiftEmptyArrayStorage, 1, 21, v11);
    _swiftEmptyArrayStorage;
    if (!*(v12 + 2))
    {
      BUG();
    }

    v13 = *(v12 + 4);
    v12;
    v3 = MLHandPoseClassifier.modelPrediction(on:using:)(v13, a2);
  }

  return v3;
}

void *closure #1 in MLHandPoseClassifier.predictions(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3;
  v6 = type metadata accessor for MLHandPoseClassifier(0);
  result = MLHandPoseClassifier.modelPrediction(on:using:)(a1, *(a2 + *(v6 + 20)));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *v8 = result;
  }

  return result;
}

void *MLHandPoseClassifier.modelPrediction(on:using:)(id a1, void *a2)
{
  v3 = [a1 shape];
  v4 = v3;
  v5 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v4, v5);

  v9 = specialized Array._getCount()(v6, v5, v7, v8);
  v6;
  if (v9 == 3 && (v10 = [a1 shape], v11 = v10, v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v11, v5), v11, ML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50125_s8CreateML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n(v12), v12, LOBYTE(v14) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(ML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n, &outlined read-only object #0 of MLHandPoseClassifier.modelPrediction(on:using:)), v9 = v14, ML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n, (v9 & 1) != 0))
  {
    v64 = v5;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v15, v84);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 0x7365736F70;
    inited[5] = 0xE500000000000000;
    v17 = objc_opt_self(MLFeatureValue);
    v18 = [v17 featureValueWithMultiArray:a1];
    v19 = v18;
    inited[9] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
    inited[6] = v19;
    v20 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v9 = objc_allocWithZone(MLDictionaryFeatureProvider);
    v21 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(v20);
    if (!v2)
    {
      v9 = v21;
      v83[0] = 0;
      v22 = [a2 predictionFromFeatures:v21 error:v83];
      v23 = v22;
      v24 = v83[0];
      if (v23)
      {
        v65 = v9;
        v9 = 0xD000000000000012;
        v25 = v23;
        v83[0];
        v26 = String._bridgeToObjectiveC()();
        v66 = v25;
        v27 = [v25 featureValueForName:v26];
        v28 = v27;

        if (v28)
        {
          v29 = [v28 dictionaryValue];
          v30 = v29;

          v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v30, &type metadata for AnyHashable, v64, &protocol witness table for AnyHashable);
          v32 = v31;
          v33 = *(v31 + 16);
          if (v33)
          {
            v69 = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
            v9 = _swiftEmptyArrayStorage;
            v34 = specialized Dictionary.startIndex.getter(v31);
            v36 = v31 + 64;
            v37 = v33 - 1;
            v61 = v32 + 64;
            for (i = v32; ; v35 = *(i + 36))
            {
              if (v34 < 0 || v34 >= 1 << *(v32 + 32))
              {
                BUG();
              }

              v57 = v37;
              v38 = v34 >> 6;
              v39 = *(v36 + 8 * (v34 >> 6));
              if (!_bittest64(&v39, v34))
              {
                BUG();
              }

              if (v35 != *(v32 + 36))
              {
                BUG();
              }

              v58 = 1 << v34;
              v59 = v35;
              v40 = v34;
              outlined init with copy of AnyHashable(*(v32 + 48) + 40 * v34, v83);
              v63 = v40;
              v41 = *(*(v32 + 56) + 8 * v40);
              v83[5] = v41;
              outlined init with copy of AnyHashable(v83, v80);
              v82 = v41;
              v78 = v81;
              v79 = v41;
              v77[1] = v80[1];
              v77[0] = v80[0];
              v42 = v41;
              v42;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, v72, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));

              v76 = v73;
              v43 = *&v72[0];
              v75[1] = v72[1];
              v75[0] = v72[0];
              swift_dynamicCast(&v67, v75, &type metadata for AnyHashable, &type metadata for String, 7);
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, v70, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v44 = v71;
              [v71 doubleValue];

              outlined destroy of AnyHashable(v70);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v45 = v67;
              v46 = v68;
              v69 = v9;
              v47 = *(v9 + 16);
              v48 = v47 + 1;
              if (*(v9 + 24) >> 1 <= v47)
              {
                v62 = v68;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v9 + 24) >= 2uLL, v48, 1);
                v48 = v47 + 1;
                v46 = v62;
                v9 = v69;
              }

              *(v9 + 16) = v48;
              v49 = 24 * v47;
              *(v9 + v49 + 32) = v45;
              *(v9 + v49 + 40) = v46;
              *(v9 + v49 + 48) = v43;
              v32 = i;
              v50 = -1 << *(i + 32);
              if (v63 >= -v50)
              {
                BUG();
              }

              v36 = v61;
              if ((v58 & *(v61 + 8 * v38)) == 0)
              {
                BUG();
              }

              if (v59 != *(i + 36))
              {
                BUG();
              }

              v34 = _HashTable.occupiedBucket(after:)(v63, v61, ~v50);
              v37 = v57 - 1;
              if (!v57)
              {
                break;
              }
            }

            i;
            swift_unknownObjectRelease(v66);
          }

          else
          {
            v31;
            swift_unknownObjectRelease(v66);

            return _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
          *v56 = 0xD000000000000028;
          *(v56 + 8) = "labelProbabilities" + 0x8000000000000000;
          *(v56 + 16) = 0;
          *(v56 + 32) = 0;
          *(v56 + 48) = 0;
          swift_willThrow();

          swift_unknownObjectRelease(v25);
        }
      }

      else
      {
        v54 = v83[0];
        _convertNSErrorToError(_:)(v24);

        swift_willThrow();
      }
    }
  }

  else
  {
    v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
    *v52 = 0xD000000000000025;
    *(v52 + 8) = "rt requested type" + 0x8000000000000000;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t MLHandPoseClassifier.evaluation(on:)(uint64_t a1)
{
  v18 = v2;
  v15 = a1;
  v17 = v1;
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(type metadata accessor for MLHandPoseClassifier(0) + 24);
  v16 = v3;
  v9 = *(*(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 20) + v3 + v8);
  v14 = 0;
  LOWORD(v15) = 256;
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(&v14, v10, 0);
  *(&v14 + v4[5]) = v9;
  *(&v14 + v4[6]) = 80;
  *(&v14 + v4[7]) = 1;
  *(&v14 + v4[8]) = 0;
  *(&v14 + v4[10]) = 0x403E000000000000;
  v11 = v18;
  MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(0);
  if (v11)
  {
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  v13 = v14;
  LODWORD(v18) = BYTE8(v14);
  MLHandActionClassifier.evaluation(on:parameters:)(&v14, &v14, 0.0);
  outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLHandActionClassifier.ModelParameters);
  return outlined consume of Result<_DataTable, Error>(v13, v18);
}

NSURL *MLHandPoseClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v23 = v2;
  v25 = v3;
  v26 = a2;
  v27 = type metadata accessor for URL(0);
  v28 = *(v27 - 8);
  v4 = *(v28 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v22 = &v19;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v21 = &v19;
  v24 = a1;
  v9 = URL.pathExtension.getter();
  v11 = v10;
  if (!(v9 ^ 0x67616B6361706C6DLL | v10 ^ 0xE900000000000065))
  {
    v10;
LABEL_4:
    v13 = v21;
    v14 = v23;
    result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v24, 0xD000000000000014, ("HandPoseClassifier" + 0x8000000000000000), 0x67616B6361706C6DLL, 0xE900000000000065);
    if (v14)
    {
      return result;
    }

    qmemcpy(v20, v26, sizeof(v20));
    MLHandActionClassifier.GraphCNN.writeMLPackage(to:metadata:)(v13, v20);
    v16 = v13;
    return (*(v28 + 8))(v16, v27);
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x67616B6361706C6DLL, 0xE900000000000065, 0);
  v11;
  if (v12)
  {
    goto LABEL_4;
  }

  v17 = v22;
  v18 = v23;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v24, 0xD000000000000012, (" is empty on row " + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (v18)
  {
    return result;
  }

  qmemcpy(v20, v26, sizeof(v20));
  MLHandActionClassifier.write(to:metadata:)(v17, v20);
  v16 = v17;
  return (*(v28 + 8))(v16, v27);
}

uint64_t MLHandPoseClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = v3;
  v21 = a3;
  v19 = a2;
  v18 = a1;
  v22 = type metadata accessor for URL.DirectoryHint(0);
  v20 = *(v22 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v16;
  v10 = type metadata accessor for URL(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v16, v21, sizeof(v16));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
  (*(v20 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
  v14 = v19;

  URL.init(filePath:directoryHint:relativeTo:)(v18, v14, v16, v23);
  MLHandPoseClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLHandPoseClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandPoseClassifier(0);
  v25._countAndFlagsBits = MLHandPoseClassifier.ModelParameters.description.getter();
  v7 = v6;
  v22._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v22._object = v8;
  v9 = *(v5 + 32);
  v10 = v7;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v20, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v7) = swift_getEnumCaseMultiPayload(&v20, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v20, type metadata accessor for MLClassifierMetrics.Contents);
  v25._object = MLClassifierMetrics.accuracyDescription.getter();
  v12 = v11;
  v23 = 0xD00000000000001FLL;
  v24 = "HandActionClassifier" + 0x8000000000000000;
  v13._countAndFlagsBits = v25._countAndFlagsBits;
  v25._countAndFlagsBits = v10;
  v13._object = v10;
  String.append(_:)(v13);
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v22._object;
  String.append(_:)(v22);
  v15 = v21._object;
  String.append(_:)(v21);
  v15;
  if (v7 > 1)
  {
    v18 = object;
  }

  else
  {
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v16._countAndFlagsBits = v25._object;
    v16._object = v12;
    String.append(_:)(v16);
    v17 = v21._object;
    String.append(_:)(v21);
    object;
    v18 = v12;
    LOBYTE(v12) = v17;
  }

  v18;
  v12;
  v25._countAndFlagsBits;
  return v23;
}

NSAttributedString MLHandPoseClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLHandPoseClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

NSAttributedString __swiftcall NSAttributedString.__allocating_init(string:)(Swift::String string)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_allocWithZone(ObjCClassFromMetadata);
  v3 = String._bridgeToObjectiveC()();
  string._object;
  v4 = [v2 initWithString:v3];

  return v4;
}

uint64_t specialized Collection<>.mostFrequent()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v7 = a4 >> 1;
  if (v7 != a3)
  {
    swift_unknownObjectRetain(a1);
    v8 = (a2 + 16 * a3 + 8);
    v33 = v7;
    do
    {
      if (a3 >= v7)
      {
        BUG();
      }

      v34 = a3;
      v9 = *(v8 - 1);
      v32 = v8;
      v10 = *v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v6);
      v35 = v9;
      v36 = v10;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v6[2], v14);
      v16 = v6[2] + v14;
      if (v15)
      {
        BUG();
      }

      v17 = v12;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
        LOBYTE(v19) = v19 & 1;
        v20 = v34;
        if ((v17 & 1) != v19)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v36, v19, v18);
          BUG();
        }
      }

      else
      {
        v20 = v34;
      }

      v7 = v33;
      if ((v17 & 1) == 0)
      {
        v6[(v13 >> 6) + 8] |= 1 << v13;
        v21 = v6[6];
        v22 = 16 * v13;
        *(v21 + v22) = v35;
        *(v21 + v22 + 8) = v36;
        *(v6[7] + 8 * v13) = 0;
        v23 = v6[2];
        v15 = __OFADD__(1, v23);
        v24 = v23 + 1;
        if (v15)
        {
          BUG();
        }

        v6[2] = v24;
      }

      v25 = v6[7];
      v26 = *(v25 + 8 * v13);
      v15 = __OFADD__(1, v26);
      v27 = v26 + 1;
      if (v15)
      {
        BUG();
      }

      a3 = v20 + 1;
      *(v25 + 8 * v13) = v27;
      v36;
      v8 = v32 + 2;
    }

    while (v33 != a3);
    swift_unknownObjectRelease(a1);
  }

  v28 = specialized Sequence.max(by:)(v6);
  v30 = v29;
  v6;
  if (!v30)
  {
    return 0;
  }

  return v28;
}

uint64_t specialized Collection<>.mostFrequent()()
{
  v56 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<String>);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v57 = v48;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<ColumnSlice<String>>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v11 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  v53 = v10;
  v55 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v10, &type metadata for Int, v11);
  (*(v2 + 16))(v57, v56, v1);
  v12 = v1;
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<String> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<String>, &protocol conformance descriptor for ColumnSlice<A>);
  dispatch thunk of Sequence.makeIterator()(v1, v13);
  v14 = v48;
  v15 = &v48[*(v6 + 36)];
  v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<String> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<String>, &protocol conformance descriptor for ColumnSlice<A>);
  v54 = v12;
  v50 = v48;
  v51 = v15;
  for (i = v16; ; v16 = i)
  {
    dispatch thunk of Collection.endIndex.getter(v12, v16);
    if (*v15 == v49[0])
    {
      break;
    }

    v57 = dispatch thunk of Collection.subscript.read(v49, v15, v12, v16);
    v56 = *v17;
    v18 = v17[1];

    (v57)(v49, 0);
    dispatch thunk of Collection.formIndex(after:)(v15, v54, v16);
    v19 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v55);
    v49[0] = v19;
    v57 = v18;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v18);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(*(v19 + 16), v23);
    v25 = *(v19 + 16) + v23;
    if (v24)
    {
      BUG();
    }

    v26 = v21;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String?, Int>);
    v27 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
    v28 = v49[0];
    v55 = v49[0];
    if (v27)
    {
      v29 = v57;
      v30 = v57;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v57);
      LOBYTE(v32) = v32 & 1;
      v33 = v54;
      if ((v26 & 1) != v32)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v53, v30, v32, v31);
        BUG();
      }

      v28 = v55;
    }

    else
    {
      v33 = v54;
      v29 = v57;
    }

    v34 = (v26 & 1) == 0;
    v14 = v50;
    v35 = v51;
    if (v34)
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v36 = v28[6];
      v37 = 16 * v22;
      *(v36 + v37) = v56;
      *(v36 + v37 + 8) = v29;
      *(v28[7] + 8 * v22) = 0;
      v38 = v28[2];
      v24 = __OFADD__(1, v38);
      v39 = v38 + 1;
      if (v24)
      {
        BUG();
      }

      v28[2] = v39;

      v28 = v55;
    }

    v40 = v28[7];
    v41 = *(v40 + 8 * v22);
    v24 = __OFADD__(1, v41);
    v42 = v41 + 1;
    if (v24)
    {
      BUG();
    }

    *(v40 + 8 * v22) = v42;
    v29;
    v12 = v33;
    v15 = v35;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &demangling cache variable for type metadata for IndexingIterator<ColumnSlice<String>>);
  v43 = v55;
  v44 = specialized Sequence.max(by:)(v55);
  v46 = v45;
  v43;
  result = 0;
  if (v46 != 2)
  {
    return v44;
  }

  return result;
}

id specialized Collection<>.mostFrequent()(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for NLLanguage(0);
  v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage, type metadata accessor for NLLanguage, &protocol conformance descriptor for NLLanguage);
  v4 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v2, &type metadata for Int, v3);
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = v2;

    v5 = 0;
    do
    {
      v24 = v5;
      v6 = *(v1 + 8 * v5 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
      v27 = v6;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      v10 = (v8 & 1) == 0;
      v11 = __OFADD__(v4[2], v10);
      v12 = v4[2] + v10;
      if (v11)
      {
        BUG();
      }

      v13 = v8;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<NLLanguage, Int>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12))
      {
        v14 = v27;
        v9 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
        LOBYTE(v16) = v16 & 1;
        if ((v13 & 1) != v16)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v26, v12, v16, v15);
          BUG();
        }
      }

      else
      {
        v14 = v27;
      }

      if ((v13 & 1) == 0)
      {
        v4[(v9 >> 6) + 8] |= 1 << v9;
        *(v4[6] + 8 * v9) = v14;
        *(v4[7] + 8 * v9) = 0;
        v17 = v4[2];
        v11 = __OFADD__(1, v17);
        v18 = v17 + 1;
        if (v11)
        {
          BUG();
        }

        v4[2] = v18;
        v14;
      }

      v19 = v4[7];
      v20 = *(v19 + 8 * v9);
      v11 = __OFADD__(1, v20);
      v21 = v20 + 1;
      if (v11)
      {
        BUG();
      }

      v5 = v24 + 1;
      *(v19 + 8 * v9) = v21;

      v1 = a1;
    }

    while (v25 != v24 + 1);
    a1;
  }

  v22 = specialized Sequence.max(by:)(v4);
  v4;
  return v22;
}

uint64_t specialized Sequence.max(by:)(uint64_t a1)
{
  specialized _NativeDictionary.makeIterator()(a1);
  v1 = v28;
  v31 = v26;
  if (!v29)
  {
    v19 = v28 + 1;
    if (__OFADD__(1, v28))
    {
      BUG();
    }

    v20 = (v27 + 64) >> 6;
    if (v19 < v20)
    {
      v21 = *(v26 + 8 * v19);
      if (v21)
      {
        v22 = v28 + 1;
LABEL_32:
        v32 = (v27 + 64) >> 6;
        v34 = v27;
        _BitScanForward64(&v23, v21);
        v3 = v21 & (v21 - 1);
        v4 = v23 | (v22 << 6);
        v1 = v22;
        goto LABEL_3;
      }

      v22 = v28 + 2;
      if (v28 + 2 < v20)
      {
        v21 = *(v26 + 8 * v19 + 8);
        if (v21)
        {
          goto LABEL_32;
        }

        v22 = v28 + 3;
        if (v28 + 3 < v20)
        {
          v21 = *(v26 + 8 * v19 + 16);
          if (v21)
          {
            goto LABEL_32;
          }

          v22 = v28 + 4;
          if (v28 + 4 < v20)
          {
            v21 = *(v26 + 8 * v19 + 24);
            if (v21)
            {
              goto LABEL_32;
            }

            v22 = v28 + 5;
            if (v28 + 5 < v20)
            {
              v21 = *(v26 + 8 * v19 + 32);
              if (v21)
              {
                goto LABEL_32;
              }

              v22 = v28 + 6;
              if (v28 + 6 < v20)
              {
                v21 = *(v26 + 8 * v19 + 40);
                if (v21)
                {
                  goto LABEL_32;
                }

                v22 = v28 + 7;
                if (v28 + 7 < v20)
                {
                  v21 = *(v26 + 8 * v19 + 48);
                  if (!v21)
                  {
                    v24 = v28 + 8;
                    do
                    {
                      if (v24 >= v20)
                      {
                        goto LABEL_49;
                      }

                      v21 = *(v31 + 8 * v24++);
                    }

                    while (!v21);
                    v22 = v24 - 1;
                  }

                  goto LABEL_32;
                }
              }
            }
          }
        }
      }
    }

LABEL_49:

    outlined release of _NativeDictionary<String?, Int>.Iterator(&v25);
    return 0;
  }

  _BitScanForward64(&v2, v29);
  v3 = v29 & (v29 - 1);
  v4 = v2 | (v28 << 6);
  v34 = v27;
  v32 = (v27 + 64) >> 6;
LABEL_3:
  v5 = *(v25 + 48);
  v30 = v25;
  v6 = *(v25 + 56);
  v33 = *(v5 + 16 * v4);
  v7 = *(v5 + 16 * v4 + 8);
  v8 = *(v6 + 8 * v4);

  v35 = v7;

  while (1)
  {
    v9 = v1;
    if (!v3)
    {
      v10 = v1 + 1;
      if (__OFADD__(1, v1))
      {
        BUG();
      }

      if (v10 >= v32)
      {
        goto LABEL_27;
      }

      v3 = *(v31 + 8 * v10);
      if (v3)
      {
        ++v1;
        goto LABEL_25;
      }

      v1 += 2;
      if (v9 + 2 >= v32)
      {
        goto LABEL_27;
      }

      v3 = *(v31 + 8 * v10 + 8);
      if (!v3)
      {
        v1 = v9 + 3;
        if (v9 + 3 >= v32)
        {
          goto LABEL_27;
        }

        v3 = *(v31 + 8 * v10 + 16);
        if (!v3)
        {
          v1 = v9 + 4;
          if (v9 + 4 >= v32)
          {
            goto LABEL_27;
          }

          v3 = *(v31 + 8 * v10 + 24);
          if (!v3)
          {
            v1 = v9 + 5;
            if (v9 + 5 >= v32)
            {
              goto LABEL_27;
            }

            v3 = *(v31 + 8 * v10 + 32);
            if (!v3)
            {
              v1 = v9 + 6;
              if (v9 + 6 >= v32)
              {
                goto LABEL_27;
              }

              v3 = *(v31 + 8 * v10 + 40);
              if (!v3)
              {
                v1 = v9 + 7;
                if (v9 + 7 >= v32)
                {
                  goto LABEL_27;
                }

                v3 = *(v31 + 8 * v10 + 48);
                if (!v3)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v12, v3);
    v3 &= v3 - 1;
    v13 = v12 | (v1 << 6);
    v14 = *(*(v30 + 56) + 8 * v13);
    if (v8 < v14)
    {
      v15 = *(v30 + 48);
      v16 = 16 * v13;
      v33 = *(v15 + v16);
      v17 = *(v15 + v16 + 8);

      v35;
      v35 = v17;
      v8 = v14;
    }
  }

  v11 = v9 + 8;
  while (v11 < v32)
  {
    v3 = *(v31 + 8 * v11++);
    if (v3)
    {
      v1 = v11 - 1;
      goto LABEL_25;
    }
  }

LABEL_27:
  outlined consume of [String : [Double]].Iterator._Variant(v30);
  return v33;
}

{
  v2 = v1;
  specialized _NativeDictionary.makeIterator()(a1);
  v3 = v28;
  v30 = v26;
  if (v29)
  {
    v32 = a1;
    v34 = v1;
    _BitScanForward64(&v4, v29);
    v5 = v29 & (v29 - 1);
    v6 = v4 | (v28 << 6);
    v35 = v27;
    v31 = (v27 + 64) >> 6;
    goto LABEL_3;
  }

  v19 = v28 + 1;
  if (__OFADD__(1, v28))
  {
    BUG();
  }

  v20 = (v27 + 64) >> 6;
  if (v19 >= v20)
  {
    goto LABEL_50;
  }

  v21 = *(v26 + 8 * v19);
  if (!v21)
  {
    v22 = v28 + 2;
    if (v28 + 2 < v20)
    {
      v21 = *(v26 + 8 * v19 + 8);
      if (v21)
      {
        goto LABEL_33;
      }

      v22 = v28 + 3;
      if (v28 + 3 < v20)
      {
        v21 = *(v26 + 8 * v19 + 16);
        if (v21)
        {
          goto LABEL_33;
        }

        v22 = v28 + 4;
        if (v28 + 4 < v20)
        {
          v21 = *(v26 + 8 * v19 + 24);
          if (v21)
          {
            goto LABEL_33;
          }

          v22 = v28 + 5;
          if (v28 + 5 < v20)
          {
            v21 = *(v26 + 8 * v19 + 32);
            if (v21)
            {
              goto LABEL_33;
            }

            v22 = v28 + 6;
            if (v28 + 6 < v20)
            {
              v21 = *(v26 + 8 * v19 + 40);
              if (v21)
              {
                goto LABEL_33;
              }

              v22 = v28 + 7;
              if (v28 + 7 < v20)
              {
                v21 = *(v26 + 8 * v19 + 48);
                if (!v21)
                {
                  v24 = v28 + 8;
                  do
                  {
                    if (v24 >= v20)
                    {
                      goto LABEL_50;
                    }

                    v21 = *(v30 + 8 * v24++);
                  }

                  while (!v21);
                  v22 = v24 - 1;
                  v2 = v1;
                }

                goto LABEL_33;
              }
            }
          }
        }
      }
    }

LABEL_50:

    outlined release of _NativeDictionary<String?, Int>.Iterator(&v25);
    return 0;
  }

  v22 = v28 + 1;
LABEL_33:
  v32 = a1;
  v31 = (v27 + 64) >> 6;
  v35 = v27;
  v34 = v2;
  _BitScanForward64(&v23, v21);
  v5 = v21 & (v21 - 1);
  v6 = v23 | (v22 << 6);
  v3 = v22;
LABEL_3:
  v7 = *(v25 + 48);
  v8 = *(v25 + 56);
  v33 = *(v7 + 16 * v6);
  v9 = *(v8 + 8 * v6);
  v36 = *(v7 + 16 * v6 + 8);

LABEL_4:
  v10 = v9;
  while (1)
  {
    v11 = v3;
    if (!v5)
    {
      break;
    }

LABEL_26:
    _BitScanForward64(&v14, v5);
    v5 &= v5 - 1;
    v15 = v14 | (v3 << 6);
    v9 = *(*(v25 + 56) + 8 * v15);
    if (v10 < v9)
    {
      v16 = *(v25 + 48);
      v17 = 16 * v15;
      v33 = *(v16 + v17);
      v32 = *(v16 + v17 + 8);

      v36;
      v36 = v32;
      goto LABEL_4;
    }
  }

  v12 = v3 + 1;
  if (__OFADD__(1, v3))
  {
    BUG();
  }

  if (v12 >= v31)
  {
    goto LABEL_28;
  }

  v5 = *(v30 + 8 * v12);
  if (v5)
  {
    ++v3;
    goto LABEL_26;
  }

  v3 += 2;
  if (v11 + 2 >= v31)
  {
    goto LABEL_28;
  }

  v5 = *(v30 + 8 * v12 + 8);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 3;
  if (v11 + 3 >= v31)
  {
    goto LABEL_28;
  }

  v5 = *(v30 + 8 * v12 + 16);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 4;
  if (v11 + 4 >= v31)
  {
    goto LABEL_28;
  }

  v5 = *(v30 + 8 * v12 + 24);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 5;
  if (v11 + 5 >= v31)
  {
    goto LABEL_28;
  }

  v5 = *(v30 + 8 * v12 + 32);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 6;
  if (v11 + 6 >= v31)
  {
    goto LABEL_28;
  }

  v5 = *(v30 + 8 * v12 + 40);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 7;
  if (v11 + 7 >= v31)
  {
    goto LABEL_28;
  }

  v5 = *(v30 + 8 * v12 + 48);
  if (v5)
  {
    goto LABEL_26;
  }

  v13 = v11 + 8;
  while (v13 < v31)
  {
    v5 = *(v30 + 8 * v13++);
    if (v5)
    {
      v3 = v13 - 1;
      goto LABEL_26;
    }
  }

LABEL_28:
  outlined consume of [String : [Double]].Iterator._Variant(v25);
  return v33;
}

{
  specialized _NativeDictionary.makeIterator()(a1);
  v1 = v28;
  v31 = v26;
  if (!v29)
  {
    v19 = v28 + 1;
    if (__OFADD__(1, v28))
    {
      BUG();
    }

    v20 = (v27 + 64) >> 6;
    if (v19 < v20)
    {
      v21 = *(v26 + 8 * v19);
      if (v21)
      {
        v22 = v28 + 1;
LABEL_32:
        v32 = (v27 + 64) >> 6;
        v34 = v27;
        _BitScanForward64(&v23, v21);
        v3 = v21 & (v21 - 1);
        v4 = v23 | (v22 << 6);
        v1 = v22;
        goto LABEL_3;
      }

      v22 = v28 + 2;
      if (v28 + 2 < v20)
      {
        v21 = *(v26 + 8 * v19 + 8);
        if (v21)
        {
          goto LABEL_32;
        }

        v22 = v28 + 3;
        if (v28 + 3 < v20)
        {
          v21 = *(v26 + 8 * v19 + 16);
          if (v21)
          {
            goto LABEL_32;
          }

          v22 = v28 + 4;
          if (v28 + 4 < v20)
          {
            v21 = *(v26 + 8 * v19 + 24);
            if (v21)
            {
              goto LABEL_32;
            }

            v22 = v28 + 5;
            if (v28 + 5 < v20)
            {
              v21 = *(v26 + 8 * v19 + 32);
              if (v21)
              {
                goto LABEL_32;
              }

              v22 = v28 + 6;
              if (v28 + 6 < v20)
              {
                v21 = *(v26 + 8 * v19 + 40);
                if (v21)
                {
                  goto LABEL_32;
                }

                v22 = v28 + 7;
                if (v28 + 7 < v20)
                {
                  v21 = *(v26 + 8 * v19 + 48);
                  if (!v21)
                  {
                    v24 = v28 + 8;
                    do
                    {
                      if (v24 >= v20)
                      {
                        goto LABEL_49;
                      }

                      v21 = *(v31 + 8 * v24++);
                    }

                    while (!v21);
                    v22 = v24 - 1;
                  }

                  goto LABEL_32;
                }
              }
            }
          }
        }
      }
    }

LABEL_49:

    outlined release of _NativeDictionary<String?, Int>.Iterator(&v25);
    return 0;
  }

  _BitScanForward64(&v2, v29);
  v3 = v29 & (v29 - 1);
  v4 = v2 | (v28 << 6);
  v34 = v27;
  v32 = (v27 + 64) >> 6;
LABEL_3:
  v5 = *(v25 + 48);
  v30 = v25;
  v6 = *(v25 + 56);
  v33 = *(v5 + 16 * v4);
  v7 = *(v5 + 16 * v4 + 8);
  v8 = *(v6 + 8 * v4);

  v35 = v7;

  while (1)
  {
    v9 = v1;
    if (!v3)
    {
      v10 = v1 + 1;
      if (__OFADD__(1, v1))
      {
        BUG();
      }

      if (v10 >= v32)
      {
        goto LABEL_27;
      }

      v3 = *(v31 + 8 * v10);
      if (v3)
      {
        ++v1;
        goto LABEL_25;
      }

      v1 += 2;
      if (v9 + 2 >= v32)
      {
        goto LABEL_27;
      }

      v3 = *(v31 + 8 * v10 + 8);
      if (!v3)
      {
        v1 = v9 + 3;
        if (v9 + 3 >= v32)
        {
          goto LABEL_27;
        }

        v3 = *(v31 + 8 * v10 + 16);
        if (!v3)
        {
          v1 = v9 + 4;
          if (v9 + 4 >= v32)
          {
            goto LABEL_27;
          }

          v3 = *(v31 + 8 * v10 + 24);
          if (!v3)
          {
            v1 = v9 + 5;
            if (v9 + 5 >= v32)
            {
              goto LABEL_27;
            }

            v3 = *(v31 + 8 * v10 + 32);
            if (!v3)
            {
              v1 = v9 + 6;
              if (v9 + 6 >= v32)
              {
                goto LABEL_27;
              }

              v3 = *(v31 + 8 * v10 + 40);
              if (!v3)
              {
                v1 = v9 + 7;
                if (v9 + 7 >= v32)
                {
                  goto LABEL_27;
                }

                v3 = *(v31 + 8 * v10 + 48);
                if (!v3)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v12, v3);
    v3 &= v3 - 1;
    v13 = v12 | (v1 << 6);
    v14 = *(*(v30 + 56) + 8 * v13);
    if (v8 < v14)
    {
      v15 = *(v30 + 48);
      v16 = 16 * v13;
      v33 = *(v15 + v16);
      v17 = *(v15 + v16 + 8);

      v35;
      v35 = v17;
      v8 = v14;
    }
  }

  v11 = v9 + 8;
  while (v11 < v32)
  {
    v3 = *(v31 + 8 * v11++);
    if (v3)
    {
      v1 = v11 - 1;
      goto LABEL_25;
    }
  }

LABEL_27:
  outlined consume of [String : [Double]].Iterator._Variant(v30);
  return v33;
}

id specialized Sequence.max(by:)(uint64_t a1)
{
  v2 = v1;
  specialized _NativeDictionary.makeIterator()(a1);
  v3 = v28;
  v31 = v26;
  if (v29)
  {
    v33 = v1;
    _BitScanForward64(&v4, v29);
    v5 = v29 & (v29 - 1);
    v6 = v4 | (v28 << 6);
    v34 = v27;
    v32 = (v27 + 64) >> 6;
    goto LABEL_3;
  }

  v19 = v28 + 1;
  if (__OFADD__(1, v28))
  {
    BUG();
  }

  v20 = (v27 + 64) >> 6;
  if (v19 >= v20)
  {
    goto LABEL_50;
  }

  v21 = *(v26 + 8 * v19);
  if (!v21)
  {
    v22 = v28 + 2;
    if (v28 + 2 < v20)
    {
      v21 = *(v26 + 8 * v19 + 8);
      if (v21)
      {
        goto LABEL_33;
      }

      v22 = v28 + 3;
      if (v28 + 3 < v20)
      {
        v21 = *(v26 + 8 * v19 + 16);
        if (v21)
        {
          goto LABEL_33;
        }

        v22 = v28 + 4;
        if (v28 + 4 < v20)
        {
          v21 = *(v26 + 8 * v19 + 24);
          if (v21)
          {
            goto LABEL_33;
          }

          v22 = v28 + 5;
          if (v28 + 5 < v20)
          {
            v21 = *(v26 + 8 * v19 + 32);
            if (v21)
            {
              goto LABEL_33;
            }

            v22 = v28 + 6;
            if (v28 + 6 < v20)
            {
              v21 = *(v26 + 8 * v19 + 40);
              if (v21)
              {
                goto LABEL_33;
              }

              v22 = v28 + 7;
              if (v28 + 7 < v20)
              {
                v21 = *(v26 + 8 * v19 + 48);
                if (!v21)
                {
                  v24 = v28 + 8;
                  do
                  {
                    if (v24 >= v20)
                    {
                      goto LABEL_50;
                    }

                    v21 = *(v31 + 8 * v24++);
                  }

                  while (!v21);
                  v22 = v24 - 1;
                  v2 = v1;
                }

                goto LABEL_33;
              }
            }
          }
        }
      }
    }

LABEL_50:

    outlined release of _NativeDictionary<String?, Int>.Iterator(&v25);
    return 0;
  }

  v22 = v28 + 1;
LABEL_33:
  v32 = (v27 + 64) >> 6;
  v34 = v27;
  v33 = v2;
  _BitScanForward64(&v23, v21);
  v5 = v21 & (v21 - 1);
  v6 = v23 | (v22 << 6);
  v3 = v22;
LABEL_3:
  v7 = *(v25 + 56);
  v35 = *(*(v25 + 48) + 8 * v6);
  v8 = *(v7 + 8 * v6);

  v9 = v35;
LABEL_4:
  v10 = v8;
  while (1)
  {
    v11 = v3;
    if (!v5)
    {
      break;
    }

LABEL_26:
    _BitScanForward64(&v14, v5);
    v5 &= v5 - 1;
    v15 = v14 | (v3 << 6);
    v8 = *(*(v25 + 56) + 8 * v15);
    if (v10 < v8)
    {
      v16 = *(v25 + 48);
      v35 = v9;
      v30 = *(v16 + 8 * v15);

      v9 = v30;
      goto LABEL_4;
    }
  }

  v12 = v3 + 1;
  if (__OFADD__(1, v3))
  {
    BUG();
  }

  if (v12 >= v32)
  {
    goto LABEL_28;
  }

  v5 = *(v31 + 8 * v12);
  if (v5)
  {
    ++v3;
    goto LABEL_26;
  }

  v3 += 2;
  if (v11 + 2 >= v32)
  {
    goto LABEL_28;
  }

  v5 = *(v31 + 8 * v12 + 8);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 3;
  if (v11 + 3 >= v32)
  {
    goto LABEL_28;
  }

  v5 = *(v31 + 8 * v12 + 16);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 4;
  if (v11 + 4 >= v32)
  {
    goto LABEL_28;
  }

  v5 = *(v31 + 8 * v12 + 24);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 5;
  if (v11 + 5 >= v32)
  {
    goto LABEL_28;
  }

  v5 = *(v31 + 8 * v12 + 32);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 6;
  if (v11 + 6 >= v32)
  {
    goto LABEL_28;
  }

  v5 = *(v31 + 8 * v12 + 40);
  if (v5)
  {
    goto LABEL_26;
  }

  v3 = v11 + 7;
  if (v11 + 7 >= v32)
  {
    goto LABEL_28;
  }

  v5 = *(v31 + 8 * v12 + 48);
  if (v5)
  {
    goto LABEL_26;
  }

  v13 = v11 + 8;
  while (v13 < v32)
  {
    v5 = *(v31 + 8 * v13++);
    if (v5)
    {
      v3 = v13 - 1;
      goto LABEL_26;
    }
  }

LABEL_28:
  v17 = v9;
  outlined consume of [String : [Double]].Iterator._Variant(v25);
  return v17;
}

void *specialized OptionSet<>.init()()
{
  *result = 0;
  return result;
}

{
  return specialized OptionSet<>.init()();
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D2LL10startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v201 = v4;
  v218 = a3;
  v216 = a2;
  v207 = a1;
  v180 = v3;
  v182 = type metadata accessor for DataFrame(0);
  v181 = *(v182 - 8);
  v6 = *(v181 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v212 = v168;
  v190 = type metadata accessor for DataFrame.Row(0);
  v191 = *(v190 - 8);
  v9 = *(v191 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v213 = v168;
  v186 = type metadata accessor for DataFrame.Rows(0);
  v175 = *(v186 - 8);
  v12 = *(v175 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v203 = v168;
  v219 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v215 = *(v219 - 8);
  v15 = *(v215 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v174 = v168;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v223 = v168;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v214 = v168;
  v202 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v192 = *(v202 - 8);
  v22 = *(v192 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v199 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v25 = v199[6];
  v200 = v5;
  v26 = *(v5 + v25);
  v27 = *(v5 + v25 + 8);

  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v209 = v168;
  v187 = v28;
  Column.init(name:capacity:)(v26, v27, v216, v28);
  v176 = v26;
  v193 = v26;
  v194 = v27;
  v177 = v27;

  v29._countAndFlagsBits = 0x7468676965775FLL;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30 = v193;
  v31 = v194;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v29._countAndFlagsBits = v30;
  v33 = v200;
  Column.init(name:capacity:)(v29._countAndFlagsBits, v31, v216, v32);
  v34 = *(v33 + v199[7]);
  v35 = *(v34 + 16);
  v189 = v34;
  v196 = v32;
  if (v35)
  {
    v193 = _swiftEmptyArrayStorage;

    v221 = v35;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = v193;
    v37 = (v34 + 40);
    do
    {
      v222 = v37;
      v38 = *(v37 - 1);
      v39 = *v37;

      Column.init(name:capacity:)(v38, v39, v216, v196);
      v193 = v36;
      v40 = v36[2];
      if (v36[3] >> 1 <= v40)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2uLL, v40 + 1, 1);
        v36 = v193;
      }

      v36[2] = v40 + 1;
      (*(v215 + 32))(v36 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v40, v223, v219);
      v37 = v222 + 2;
      --v221;
    }

    while (v221);
    v189;
    v33 = v200;
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  v41 = *(v33 + v199[9]);
  v179 = *(v33 + v199[10]);
  v208 = v179 * v41;
  if (!is_mul_ok(v179, v41))
  {
    BUG();
  }

  v42 = v219;
  if (v218 < 0)
  {
    BUG();
  }

  v188 = v41;
  v217 = v36;
  v43 = v218;
  v44 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v44, 136, 7);
  v45 = v43;
  v46 = MersenneTwisterGenerator.init(seed:)(v43);
  v193 = v46;
  if (v216 < 0)
  {
    BUG();
  }

  v204 = v46;
  if (v216)
  {
    v45 = v217;
    if (swift_isUniquelyReferenced_nonNull_native(v217))
    {
      v47 = v216;
      v48 = v217;
    }

    else
    {
      v45 = v217;
      v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v217);
      v47 = v216;
    }

    v49 = v203;
    v50 = 0;
    v217 = v48;
    while (1)
    {
      if (v50 >= v47)
      {
        BUG();
      }

      v51 = __OFADD__(1, v50);
      v52 = v50 + 1;
      if (v51)
      {
        BUG();
      }

      v178 = v52;
      v53 = v200;
      v54 = v49;
      DataFrame.rows.getter(v45, v52, v49, v47);
      v222 = DataFrame.Rows.count.getter();
      v55 = *(v175 + 8);
      v45 = v54;
      v55(v54, v186);
      if (v207 >= v222)
      {
        v42 = v219;
        goto LABEL_112;
      }

      v205 = _swiftEmptyArrayStorage;
      v195 = _swiftEmptyArrayStorage;
      v56 = v217[2];
      v222 = _sSa9repeating5countSayxGx_SitcfCSaySfG_Tt1g5(_swiftEmptyArrayStorage, v56);
      DataFrame.rows.getter(_swiftEmptyArrayStorage, v56, v57, v58);
      DataFrame.Rows.subscript.getter(v207);
      v55(v54, v186);
      DataFrame.Row.subscript.getter(v176, v177, v187);
      v59 = v220;
      if (!v220)
      {
        BUG();
      }

      v60 = v188;
      v61 = v208;
      if (*(v53 + v199[11]) || (v62 = v220[2], v208 >= v62))
      {
        v65 = 0;
      }

      else
      {
        v51 = __OFSUB__(v62, v208);
        v63 = v62 - v208;
        if (v51)
        {
          BUG();
        }

        if (v63 < 0)
        {
          BUG();
        }

        v64 = specialized RandomNumberGenerator.next<A>(upperBound:)(v63);
        v61 = v208;
        v60 = v188;
        v65 = v64;
        if (v64 < 0)
        {
          BUG();
        }
      }

      v66 = &v65[v61];
      if (__OFADD__(v61, v65))
      {
        BUG();
      }

      v67 = *(v59 + 16);
      if (v67 < v66)
      {
        v66 = *(v59 + 16);
      }

      if (v66 < v65)
      {
        BUG();
      }

      if (v67 < v65)
      {
        BUG();
      }

      if (v60 <= 0)
      {
        BUG();
      }

      v198 = v66;
      __src = v65;
      _s10Algorithms23ChunksOfCountCollectionV5_base06_chunkD0ACyxGx_SitcfCs10ArraySliceVySSG_Tt2g5(v59, v59 + 32, v65, 2 * v66 + 1, v60);
      v68 = specialized ChunksOfCountCollection.count.getter();
      if (v68)
      {
        break;
      }

      outlined release of ChunksOfCountCollection<ArraySlice<String>>(v168);
      v90 = _swiftEmptyArrayStorage;
LABEL_57:

      specialized Array.append<A>(contentsOf:)(v90);
      v91 = v90[2];
      v90;
      v92 = _mm_cvtsi32_si128(0x3F800000u);
      v93 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v91, *v92.i32);
      specialized Array.append<A>(contentsOf:)(v93);
      v94 = alloca(24);
      v95 = alloca(32);
      v169 = v213;
      v96 = v189;

      v97 = v201;
      v98 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SaySfGs5NeverOTg5Tm(partial apply for specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:), v168, v96, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
      v201 = v97;
      v96;
      v221 = v98;
      v218 = v98[2];
      if (v218)
      {
        v99 = v222;
        if (!swift_isUniquelyReferenced_nonNull_native(v222))
        {
          v99 = specialized _ArrayBuffer._consumeAndCreateNew()(v99);
        }

        v222 = v99;
        v100 = v99 + 4;
        v101 = 0;
        v102 = __src;
        do
        {
          v103 = *(v221 + 8 * v101 + 32);
          v104 = *(v103 + 16);
          v105 = v198;
          if (v104 < v198)
          {
            v105 = *(v103 + 16);
          }

          if (v105 < v102)
          {
            BUG();
          }

          if (v104 < v102)
          {
            BUG();
          }

          v223 = v222[2];
          swift_bridgeObjectRetain_n(v103, 2);
          if (v101 >= v223)
          {
            BUG();
          }

          ++v101;
          v106 = 2 * v105 + 1;
          v107 = __src;
          specialized Array.append<A>(contentsOf:)(v103, v103 + 32, __src, v106);
          v103;
          v102 = v107;
          ++v100;
        }

        while (v218 != v101);
      }

      v108 = v219;
      v109 = v208;
      v221;
      v110 = v222;
      v111 = v222[2];
      if (!v111)
      {
        BUG();
      }

      v112 = v222[4];
      v113 = v109 <= *(v112 + 16);
      v210 = v109 - *(v112 + 16);
      if (!v113)
      {
        v211 = v111;
        v114 = _sSf7exactlySfSgx_tcSzRzlufCSi_Tt0g5(0, v92);
        if (!swift_isUniquelyReferenced_nonNull_native(v110))
        {
          v222 = specialized _ArrayBuffer._consumeAndCreateNew()(v110);
        }

        v115 = v211;
        v116 = v210;
        v117 = (v210 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v118 = 0;
        v183 = _mm_xor_si128(_mm_shuffle_epi32((v210 - 1), 68), xmmword_33D700);
        do
        {
          if (v118 == v115)
          {
            BUG();
          }

          if ((v114 & 0x100000000) != 0)
          {
            BUG();
          }

          v119 = v222;
          if (v116 < 0)
          {
            BUG();
          }

          v223 = v118;
          v197 = (v118 + 1);
          v120 = static Array._allocateBufferUninitialized(minimumCapacity:)(v116, &type metadata for Float);
          v121 = _mm_load_si128(&v183);
          si128 = _mm_load_si128(&xmmword_33D700);
          v123 = v116;
          v124 = v120;
          *(v120 + 16) = v123;
          v125 = (v120 + 32);
          v126 = 0;
          v127 = _mm_cvtepi8_epi64(770);
          v128 = _mm_cvtepi8_epi64(256);
          do
          {
            v129 = _mm_shuffle_epi32(v126, 68);
            v130 = _mm_xor_si128(_mm_or_si128(v129, v128), si128);
            v131 = _mm_cmpgt_epi32(v130, v121);
            v132 = _mm_or_si128(_mm_shuffle_epi32(v131, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v130, v121), 245), v131));
            if (~_mm_cvtsi128_si32(v132))
            {
              *(v124 + 4 * v126 + 32) = v114;
            }

            if (_mm_extract_epi8(_mm_xor_si128(v132, -1), 8))
            {
              *(v124 + 4 * v126 + 36) = v114;
            }

            v133 = _mm_xor_si128(_mm_or_si128(v129, v127), si128);
            v134 = _mm_cmpgt_epi32(v133, v121);
            v135 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v134, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v133, v121), 245), v134)), -1);
            if (_mm_extract_epi8(v135, 0))
            {
              *(v124 + 4 * v126 + 40) = v114;
            }

            if (_mm_extract_epi8(v135, 8))
            {
              *(v124 + 4 * v126 + 44) = v114;
            }

            v126 += 4;
          }

          while (v117 != v126);
          if (v223 >= v119[2])
          {
            BUG();
          }

          v136 = *(v124 + 16);
          v137 = v119[v223 + 4];
          v138 = v119;
          v139 = *(v137 + 16);
          v51 = __OFADD__(v136, v139);
          v140 = v136 + v139;
          if (v51)
          {
            BUG();
          }

          v198 = *(v137 + 16);
          v221 = v136;
          __src = v125;
          v218 = v137;
          v222 = v138;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v137);
          v142 = v218;
          v222[v223 + 4] = v218;
          if (!isUniquelyReferenced_nonNull_native || v142[3] >> 1 < v140)
          {
            if (v198 > v140)
            {
              v140 = v198;
            }

            v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v140, 1, v142);
            v222[v223 + 4] = v142;
          }

          if (*(v124 + 16))
          {
            v143 = v142[2];
            if ((v142[3] >> 1) - v143 < v221)
            {
              BUG();
            }

            v144 = v142;
            memcpy(v142 + 4 * v143 + 32, __src, 4 * v221);
            if (v221)
            {
              if (__OFADD__(v144[2], v221))
              {
                BUG();
              }

              v144[2] += v221;
            }
          }

          else
          {
            v144 = v142;
            if (v221)
            {
              BUG();
            }
          }

          v124;
          v222[v223 + 4] = v144;
          v115 = v211;
          v118 = v197;
          v116 = v210;
        }

        while (v197 != v211);
        v108 = v219;
      }

      v145 = v108;
      v146 = v205;
      v147 = v179 - v205[2];
      if (v179 > v205[2])
      {
        v148 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(0, 0xE000000000000000, v179 - v205[2]);
        specialized Array.append<A>(contentsOf:)(v148);
        v149 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v147, 0.0);
        specialized Array.append<A>(contentsOf:)(v149);
        v146 = v205;
      }

      v221 = v146;
      v220 = v146;
      Column.append(_:)(&v220, v202);
      v150 = v195;
      v220 = v195;
      v151 = v145;
      Column.append(_:)(&v220, v145);
      v152 = v222;
      v223 = v222[2];
      if (v223)
      {
        v218 = v150;

        v153 = 0;
        v154 = v217;
        do
        {
          v155 = v152[v153 + 4];
          v220 = v155;
          v156 = *(v154 + 16);

          if (v153 >= v156)
          {
            BUG();
          }

          Column.append(_:)(&v220, v219);
          v155;
          ++v153;
          v152 = v222;
        }

        while (v223 != v153);
        v218;
        v152;
        v42 = v219;
      }

      else
      {
        v150;
        v42 = v151;
      }

      v207 = (v207 + 1);
      (*(v191 + 8))(v213, v190);
      v221;
      v45 = v152;
      v152;
      v47 = v216;
      v50 = v178;
      v49 = v203;
      if (v178 == v216)
      {
        goto LABEL_112;
      }
    }

    v69 = v68;
    v220 = _swiftEmptyArrayStorage;
    v70 = 0;
    if (v68 > 0)
    {
      v70 = v68;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
    if (v69 < 0 || (v71 = v169, v72 = v172, v172 < v169))
    {
      BUG();
    }

    v210 = v168[0];
    v211 = v168[1];
    v73 = v220;
    v74 = v170 >> 1;
    v183.i64[0] = v170 & 1;
    v75 = 0;
    v76 = v169;
    v184 = v69;
    v173 = v169;
    v185 = v170 >> 1;
    while (1)
    {
      v51 = __OFADD__(1, v75);
      v77 = (v75 + 1);
      if (v51)
      {
        BUG();
      }

      if (v76 == v74)
      {
        BUG();
      }

      if (v76 > v74)
      {
        BUG();
      }

      if (v76 < v71)
      {
        BUG();
      }

      v78 = v74 - v72;
      if (v74 < v72)
      {
        BUG();
      }

      if (v72 < v71)
      {
        BUG();
      }

      if (v72 < 0)
      {
        BUG();
      }

      v197 = v77;
      v223 = v73;
      v218 = v72;
      v221 = v183.i64[0] + 2 * v72;
      v79 = v210;
      swift_unknownObjectRetain(v210);
      v80 = specialized Collection<>.mostFrequent()(v79, v211, v76, v221);
      if (!v81)
      {
        break;
      }

      v82 = v80;
      v83 = v81;
      outlined release of ChunksOfCountCollection<ArraySlice<String>>(v168);
      v73 = v223;
      v220 = v223;
      v84 = v223[2];
      v85 = v223[3];
      v86 = (v84 + 1);
      if (v85 >> 1 <= v84)
      {
        v223 = (v84 + 1);
        v221 = v82;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v85 >= 2, v84 + 1, 1);
        v86 = v223;
        v82 = v221;
        v73 = v220;
      }

      v73[2] = v86;
      v87 = 2 * v84;
      v73[v87 + 4] = v82;
      v73[v87 + 5] = v83;
      if (v171 <= 0)
      {
        v88 = v78 <= 0;
        v89 = v171 < v78;
      }

      else
      {
        v88 = v78 >= 0;
        v89 = v78 < v171;
      }

      v74 = v185;
      v72 = v185;
      v76 = v218;
      if (!v89 || !v88)
      {
        v72 = v218 + v171;
        if (__OFADD__(v218, v171))
        {
          BUG();
        }
      }

      if (v72 < v218)
      {
        BUG();
      }

      v75 = v197;
      v71 = v173;
      if (v197 == v184)
      {
        v90 = v73;
        outlined release of ChunksOfCountCollection<ArraySlice<String>>(v168);
        goto LABEL_57;
      }
    }

    v157 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v157, 0, 0);
    *v158 = 0xD000000000000038;
    *(v158 + 8) = "Unknown feature type: " + 0x8000000000000000;
    *(v158 + 16) = 0;
    *(v158 + 32) = 0;
    *(v158 + 48) = 0;
    swift_willThrow();
    outlined release of ChunksOfCountCollection<ArraySlice<String>>(v168);

    outlined release of ChunksOfCountCollection<ArraySlice<String>>(v168);

    (*(v215 + 8))(v214, v219);
    (*(v192 + 8))(v209, v202);
    (*(v191 + 8))(v213, v190);
    v217;
    return v222;
  }

  else
  {
LABEL_112:
    DataFrame.init()(v45);
    DataFrame.append<A>(column:)(v209, v187);
    DataFrame.append<A>(column:)(v214, v196);
    v160 = v217[2];
    if (v160)
    {
      v161 = v217 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
      v223 = *(v215 + 16);
      v221 = *(v215 + 72);

      v162 = v219;
      do
      {
        v222 = v160;
        v163 = v174;
        (v223)(v174, v161, v162);
        DataFrame.append<A>(column:)(v163, v196);
        v164 = *(v215 + 8);
        v165 = v163;
        v166 = v222;
        v164(v165, v162);
        v161 += v221;
        v160 = (v166 - 1);
      }

      while (v160);

      v167 = v217;
      v217;
      v42 = v219;
    }

    else
    {
      v167 = v217;

      v164 = *(v215 + 8);
    }

    v164(v214, v42);
    (*(v192 + 8))(v209, v202);
    (*(v181 + 32))(v180, v212, v182);
    return v167;
  }
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D2LL10startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(int64_t a1, uint64_t a2, uint64_t a3)
{
  v206 = v4;
  v224 = a3;
  v221 = a2;
  v213 = a1;
  v180 = v3;
  v182 = type metadata accessor for DataFrame(0);
  v181 = *(v182 - 8);
  v6 = *(v181 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v207 = &v167;
  v191 = type metadata accessor for DataFrame.Row(0);
  v192 = *(v191 - 8);
  v9 = *(v192 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v218 = &v167;
  v186 = type metadata accessor for DataFrame.Rows(0);
  v175 = *(v186 - 8);
  v12 = *(v175 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v190 = &v167;
  v198 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v220 = *(v198 - 8);
  v15 = *(v220 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v174 = &v167;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v223 = &v167;
  v208 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v193 = *(v208 - 8);
  v20 = *(v193 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v219 = &v167;
  v209 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v194 = *(v209 - 8);
  v23 = *(v194 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v204 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v26 = v204[6];
  v205 = v5;
  v27 = *(v5 + v26);
  v28 = *(v5 + v26 + 8);

  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v215 = &v167;
  v187 = v29;
  Column.init(name:capacity:)(v27, v28, v221, v29);
  v176 = v27;
  v195 = v27;
  v196 = v28;
  v177 = v28;

  v30._countAndFlagsBits = 0x7468676965775FLL;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31 = v195;
  v32 = v196;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v30._countAndFlagsBits = v31;
  v34 = v205;
  v183 = v33;
  Column.init(name:capacity:)(v30._countAndFlagsBits, v32, v221, v33);
  v35 = *(v34 + v204[7]);
  v36 = *(v35 + 16);
  v189 = v35;
  if (v36)
  {
    v195 = _swiftEmptyArrayStorage;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = v35;
    v38 = v195;
    v39 = (v37 + 40);
    do
    {
      v225 = v39;
      v226 = v36;
      v40 = *(v39 - 1);
      v41 = *v39;

      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      Column.init(name:capacity:)(v40, v41, v221, v42);
      v195 = v38;
      v43 = v38[2];
      if (v38[3] >> 1 <= v43)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38[3] >= 2uLL, v43 + 1, 1);
        v38 = v195;
      }

      v38[2] = v43 + 1;
      (*(v220 + 32))(v38 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v43, v223, v198);
      v39 = v225 + 2;
      v36 = v226 - 1;
    }

    while (v226 != 1);
    v189;
    v34 = v205;
    v44 = v38;
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = *(v34 + v204[9]);
  v179 = *(v34 + v204[10]);
  v46 = v207;
  v47 = v224;
  if (!is_mul_ok(v179, v45))
  {
    BUG();
  }

  v48 = v220;
  if (v224 < 0)
  {
    BUG();
  }

  v214 = v179 * v45;
  v188 = v45;
  v223 = v44;
  v49 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v49, 136, 7);
  v50 = v47;
  v51 = MersenneTwisterGenerator.init(seed:)(v47);
  v195 = v51;
  if (v221 < 0)
  {
    BUG();
  }

  v210 = v51;
  if (v221)
  {
    v50 = v223;
    if (swift_isUniquelyReferenced_nonNull_native(v223))
    {
      v52 = v221;
      v53 = v223;
    }

    else
    {
      v50 = v223;
      v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v223);
      v52 = v221;
    }

    v54 = 0;
    v55 = v190;
    v223 = v53;
    while (1)
    {
      if (v54 >= v52)
      {
        BUG();
      }

      v56 = __OFADD__(1, v54);
      v57 = v54 + 1;
      if (v56)
      {
        BUG();
      }

      v178 = v57;
      v58 = v205;
      v59 = v55;
      DataFrame.rows.getter(v50, v57, v55, v52);
      v226 = DataFrame.Rows.count.getter();
      v60 = *(v175 + 8);
      v50 = v59;
      v60(v59, v186);
      if (v213 >= v226)
      {
        v46 = v207;
        v48 = v220;
        goto LABEL_109;
      }

      v211 = _swiftEmptyArrayStorage;
      v197 = _swiftEmptyArrayStorage;
      v61 = v223[2];
      v225 = _sSa9repeating5countSayxGx_SitcfCSaySdG_Tt1g5(_swiftEmptyArrayStorage, v61);
      DataFrame.rows.getter(_swiftEmptyArrayStorage, v61, v62, v63);
      DataFrame.Rows.subscript.getter(v213);
      v60(v59, v186);
      DataFrame.Row.subscript.getter(v176, v177, v187);
      v64 = v222;
      if (!v222)
      {
        BUG();
      }

      v65 = v188;
      v66 = v214;
      if (*(v58 + v204[11]) || (v67 = v222[2], v214 >= v67))
      {
        v70 = 0;
      }

      else
      {
        v56 = __OFSUB__(v67, v214);
        v68 = v67 - v214;
        if (v56)
        {
          BUG();
        }

        if (v68 < 0)
        {
          BUG();
        }

        v69 = specialized RandomNumberGenerator.next<A>(upperBound:)(v68);
        v66 = v214;
        v65 = v188;
        v70 = v69;
        if (v69 < 0)
        {
          BUG();
        }
      }

      v71 = v66 + v70;
      if (__OFADD__(v66, v70))
      {
        BUG();
      }

      v72 = *(v64 + 16);
      if (v72 < v71)
      {
        v71 = *(v64 + 16);
      }

      if (v71 < v70)
      {
        BUG();
      }

      if (v72 < v70)
      {
        BUG();
      }

      if (v65 <= 0)
      {
        BUG();
      }

      __src = v71;
      v212 = v70;
      _s10Algorithms23ChunksOfCountCollectionV5_base06_chunkD0ACyxGx_SitcfCs10ArraySliceVySSG_Tt2g5(v64, v64 + 32, v70, 2 * v71 + 1, v65);
      v73 = specialized ChunksOfCountCollection.count.getter();
      if (v73)
      {
        break;
      }

      outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v168);
      v96 = _swiftEmptyArrayStorage;
LABEL_57:

      specialized Array.append<A>(contentsOf:)(v96);
      v97 = v96[2];
      v96;
      v98 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v97, 1.0);
      specialized Array.append<A>(contentsOf:)(v98);
      v99 = alloca(24);
      v100 = alloca(32);
      v169 = v218;
      v101 = v189;

      v102 = v206;
      v103 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SaySfGs5NeverOTg5Tm(partial apply for specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:), &v167, v101, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
      v206 = v102;
      v101;
      v224 = v103;
      v216 = v103[2];
      if (v216)
      {
        v104 = v225;
        if (!swift_isUniquelyReferenced_nonNull_native(v225))
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v104);
        }

        v225 = v104;
        v105 = v104 + 4;
        v106 = 0;
        v107 = v212;
        do
        {
          v108 = *(v224 + 8 * v106 + 32);
          v109 = *(v108 + 16);
          v110 = __src;
          if (v109 < __src)
          {
            v110 = *(v108 + 16);
          }

          if (v110 < v107)
          {
            BUG();
          }

          if (v109 < v107)
          {
            BUG();
          }

          v226 = v225[2];
          swift_bridgeObjectRetain_n(v108, 2);
          if (v106 >= v226)
          {
            BUG();
          }

          ++v106;
          v111 = 2 * v110 + 1;
          v112 = v212;
          specialized Array.append<A>(contentsOf:)(v108, v108 + 32, v212, v111);
          v108;
          v107 = v112;
          ++v105;
        }

        while (v216 != v106);
      }

      v113 = v214;
      v114 = v225;
      v224;
      v115 = v114[2];
      if (!v115)
      {
        BUG();
      }

      v116 = v114[4];
      v117 = v113 <= *(v116 + 16);
      v118 = v113 - *(v116 + 16);
      if (!v117)
      {
        v202 = _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(0);
        LOBYTE(v201) = v119;
        if (swift_isUniquelyReferenced_nonNull_native(v114))
        {
          v225 = v114;
        }

        else
        {
          v225 = specialized _ArrayBuffer._consumeAndCreateNew()(v114);
        }

        v120 = (v118 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v121 = 0;
        v203 = v115;
        v217 = v118;
        v185 = _mm_xor_si128(_mm_shuffle_epi32((v118 - 1), 68), xmmword_33D700);
        do
        {
          if (v121 == v115)
          {
            BUG();
          }

          if (v201)
          {
            BUG();
          }

          v122 = v225;
          if (v118 < 0)
          {
            BUG();
          }

          v226 = v121;
          v212 = v121 + 1;
          v123 = static Array._allocateBufferUninitialized(minimumCapacity:)(v118, &type metadata for Double);
          v124 = _mm_load_si128(&v185);
          si128 = _mm_load_si128(&xmmword_33D700);
          v126 = v123;
          *(v123 + 16) = v118;
          v127 = (v123 + 32);
          v128 = 0;
          v129 = _mm_cvtepi8_epi64(256);
          v130 = v202;
          do
          {
            v131 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v128, 68), v129), si128);
            v132 = _mm_cmpgt_epi32(v131, v124);
            v133 = _mm_or_si128(_mm_shuffle_epi32(v132, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v131, v124), 245), v132));
            if (~_mm_cvtsi128_si32(v133))
            {
              *(v126 + 8 * v128 + 32) = v130;
            }

            if (_mm_extract_epi8(_mm_xor_si128(v133, -1), 8))
            {
              *(v126 + 8 * v128 + 40) = v130;
            }

            v128 += 2;
          }

          while (v120 != v128);
          if (v226 >= v122[2])
          {
            BUG();
          }

          v134 = *(v126 + 16);
          v135 = v122[v226 + 4];
          v136 = v122;
          v137 = *(v135 + 16);
          v56 = __OFADD__(v134, v137);
          v138 = v134 + v137;
          if (v56)
          {
            BUG();
          }

          v200 = *(v135 + 16);
          v224 = v134;
          __src = v127;
          v216 = v135;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v135);
          v140 = v216;
          v136[v226 + 4] = v216;
          if (!isUniquelyReferenced_nonNull_native || v140[3] >> 1 < v138)
          {
            if (v200 > v138)
            {
              v138 = v200;
            }

            v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v138, 1, v140);
            v225[v226 + 4] = v140;
          }

          v141 = v217;
          if (*(v126 + 16))
          {
            v142 = v140[2];
            if ((v140[3] >> 1) - v142 < v224)
            {
              BUG();
            }

            v143 = v140;
            memcpy(&v140[v142 + 4], __src, 8 * v224);
            if (v224)
            {
              if (__OFADD__(v143[2], v224))
              {
                BUG();
              }

              v143[2] += v224;
            }
          }

          else
          {
            v143 = v140;
            if (v224)
            {
              BUG();
            }
          }

          v126;
          v225[v226 + 4] = v143;
          v115 = v203;
          v121 = v212;
          v118 = v141;
        }

        while (v212 != v203);
        v114 = v225;
      }

      v144 = v211;
      v145 = v179 - v211[2];
      if (v179 > v211[2])
      {
        v146 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(0, 0xE000000000000000, v179 - v211[2]);
        specialized Array.append<A>(contentsOf:)(v146);
        v147 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v145, 0.0);
        specialized Array.append<A>(contentsOf:)(v147);
        v144 = v211;
      }

      v225 = v144;
      v222 = v144;
      Column.append(_:)(&v222, v209);
      v148 = v197;
      v222 = v197;
      Column.append(_:)(&v222, v208);
      v226 = v114[2];
      if (v226)
      {
        v224 = v148;

        v149 = 0;
        do
        {
          v150 = v114;
          v151 = v114[v149 + 4];
          v222 = v151;
          v152 = v223[2];

          if (v149 >= v152)
          {
            BUG();
          }

          Column.append(_:)(&v222, v198);
          v151;
          ++v149;
          v114 = v150;
        }

        while (v226 != v149);
        v224;
        v153 = v150;
      }

      else
      {
        v153 = v148;
      }

      v153;
      ++v213;
      (*(v192 + 8))(v218, v191);
      v225;
      v50 = v114;
      v114;
      v52 = v221;
      v54 = v178;
      v46 = v207;
      v48 = v220;
      v55 = v190;
      if (v178 == v221)
      {
        goto LABEL_109;
      }
    }

    v74 = v73;
    v222 = _swiftEmptyArrayStorage;
    v75 = 0;
    if (v73 > 0)
    {
      v75 = v73;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75, 0);
    if (v74 < 0 || (v76 = v170, v77 = v173, v173 < v170))
    {
      BUG();
    }

    v200 = v168;
    v201 = v169;
    v78 = v222;
    v79 = v171 >> 1;
    v202 = v171 & 1;
    v80 = 0;
    v81 = v170;
    v185.i64[0] = v74;
    v203 = v170;
    v217 = v171 >> 1;
    while (1)
    {
      v56 = __OFADD__(1, v80);
      v82 = (v80 + 1);
      if (v56)
      {
        BUG();
      }

      if (v81 == v79)
      {
        BUG();
      }

      if (v81 > v79)
      {
        BUG();
      }

      if (v81 < v76)
      {
        BUG();
      }

      v83 = v79 - v77;
      if (v79 < v77)
      {
        BUG();
      }

      if (v77 < v76)
      {
        BUG();
      }

      if (v77 < 0)
      {
        BUG();
      }

      v216 = v82;
      v226 = v78;
      v224 = v77;
      v84 = v202 + 2 * v77;
      v85 = v200;
      swift_unknownObjectRetain(v200);
      v86 = specialized Collection<>.mostFrequent()(v85, v201, v81, v84);
      if (!v87)
      {
        break;
      }

      v88 = v86;
      v89 = v87;
      outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v168);
      v78 = v226;
      v222 = v226;
      v90 = *(v226 + 16);
      v91 = *(v226 + 24);
      v92 = v90 + 1;
      if (v91 >> 1 <= v90)
      {
        v226 = v90 + 1;
        v184 = v88;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v91 >= 2, v90 + 1, 1);
        v92 = v226;
        v88 = v184;
        v78 = v222;
      }

      v78[2] = v92;
      v93 = 2 * v90;
      v78[v93 + 4] = v88;
      v78[v93 + 5] = v89;
      if (v172 <= 0)
      {
        v94 = v83 <= 0;
        v95 = v172 < v83;
      }

      else
      {
        v94 = v83 >= 0;
        v95 = v83 < v172;
      }

      v79 = v217;
      v77 = v217;
      v81 = v224;
      if (!v95 || !v94)
      {
        v77 = v224 + v172;
        if (__OFADD__(v224, v172))
        {
          BUG();
        }
      }

      if (v77 < v224)
      {
        BUG();
      }

      v80 = v216;
      v76 = v203;
      if (v216 == v185.i64[0])
      {
        v96 = v78;
        outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v168);
        goto LABEL_57;
      }
    }

    v154 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v154, 0, 0);
    *v155 = 0xD000000000000038;
    *(v155 + 8) = "Unknown feature type: " + 0x8000000000000000;
    *(v155 + 16) = 0;
    *(v155 + 32) = 0;
    *(v155 + 48) = 0;
    swift_willThrow();
    outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v168);

    outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v168);

    (*(v193 + 8))(v219, v208);
    (*(v194 + 8))(v215, v209);
    (*(v192 + 8))(v218, v191);
    v223;
    return v225;
  }

  else
  {
LABEL_109:
    DataFrame.init()(v50);
    DataFrame.append<A>(column:)(v215, v187);
    DataFrame.append<A>(column:)(v219, v183);
    v157 = v223[2];
    if (v157)
    {
      v158 = v48;
      v159 = v223 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v225 = *(v158 + 16);
      v160 = v46;
      v224 = *(v158 + 72);

      v161 = v198;
      do
      {
        v226 = v157;
        v162 = v174;
        (v225)(v174, v159, v161);
        v163 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        DataFrame.append<A>(column:)(v162, v163);
        v164 = v162;
        v165 = v226;
        (*(v220 + 8))(v164, v161);
        v159 += v224;
        v157 = v165 - 1;
      }

      while (v157);

      v166 = v223;
      v223;
      v46 = v160;
    }

    else
    {
      v166 = v223;
    }

    (*(v193 + 8))(v219, v208);
    (*(v194 + 8))(v215, v209);
    (*(v181 + 32))(v180, v46, v182);
    return v166;
  }
}

uint64_t specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledName(a4);
  DataFrame.Row.subscript.getter(a1, a2, v4);
  result = v6;
  if (!v6)
  {
    BUG();
  }

  return result;
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV17generateNextBatch33_B38BBA08EC64E268F7AB3D1A029502D2LL8rowCount4seed_07TabularE00E5FrameVSi_SixmtKSjRzlFSd_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a3;
  v5 = v4;
  v16[2] = v3;
  v17 = type metadata accessor for DataFrame.Rows(0);
  v18 = *(v17 - 8);
  v6 = *(v18 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 48);
  v11 = *(v4 + v9);
  v12 = a1 + v11;
  if (__OFADD__(a1, v11))
  {
    BUG();
  }

  v21 = v9;
  v19 = a1;
  v20 = v11;
  DataFrame.rows.getter(0, a2, v10, v11);
  v13 = DataFrame.Rows.count.getter();
  (*(v18 + 8))(v16, v17);
  if (v13 < v12)
  {
    v12 = v13;
  }

  *(v5 + v21) = v12;
  v14 = timestampSeed()();
  return (v16[0])(v20, v19, v14);
}

uint64_t sub_22140()
{
  v1 = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 41);
  v4 = *(v1 + 64);
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  outlined consume of Result<_DataTable, Error>(*(v0 + 32), *(v0 + 40));
  v5 = v3 + v0;
  v6 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v6) == 1)
  {
    v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v7))
    {
      case 0u:
        v15 = type metadata accessor for URL(0);
        v17 = *(*(v15 - 8) + 8);
        v17(v3 + v0, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v17(v5 + *(v16 + 48), v15);
        *(v5 + *(v16 + 64) + 8);
        v10 = v16;
        goto LABEL_8;
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
        goto LABEL_11;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        v9 = *(v5 + 40);
        goto LABEL_11;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(v3 + v0, v11);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v5 + *(v18 + 48) + 8);
        *(v5 + *(v18 + 64) + 8);
        v10 = v18;
LABEL_8:
        v12 = *(v10 + 80);
        goto LABEL_10;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v3 + v0, v13);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(v5 + *(v19 + 48) + 8);
        v12 = *(v19 + 64);
LABEL_10:
        v9 = *(v5 + v12 + 8);
LABEL_11:
        v9;
        break;
      default:
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
    }
  }

  return swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t partial apply for closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v9 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 40);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 41));
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)(a1, v4, v9, v5, v10, v6);
}

uint64_t _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 9.223372036854776e18)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = a1;
    if ((~*&v1 & 0x7FF0000000000000) == 0)
    {
      BUG();
    }

    if (v1 <= -9.223372036854778e18)
    {
      BUG();
    }

    if (v1 != a1)
    {
      *&result = 0.0;
    }
  }

  return result;
}

unint64_t _sSf7exactlySfSgx_tcSzRzlufCSi_Tt0g5(uint64_t a1, __m128i a2)
{
  *a2.i32 = a1;
  if (a1 >= 9.223372e18)
  {
    v4 = 1;
    v3 = 0;
  }

  else
  {
    v2 = _mm_cvtsi128_si32(a2);
    if ((~v2 & 0x7F800000) == 0)
    {
      BUG();
    }

    if (*a2.i32 <= -9.2233731e18)
    {
      BUG();
    }

    v3 = 0;
    v4 = *a2.i32 != a1;
    if (*a2.i32 == a1)
    {
      v3 = v2;
    }
  }

  return v3 | (v4 << 32);
}

void *specialized _NativeDictionary.makeIterator()(uint64_t a1)
{
  return specialized _NativeDictionary.makeIterator()(a1);
}

{
  v2 = -(-1 << *(a1 + 32));
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = *(a1 + 64) & v3;
  v5 = ~(-1 << *(a1 + 32));
  *result = a1;
  result[1] = a1 + 64;
  result[2] = v5;
  result[3] = 0;
  result[4] = v4;
  return result;
}

{
  return specialized _NativeDictionary.makeIterator()(a1);
}

{
  return specialized _NativeDictionary.makeIterator()(a1);
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v3 = swift_allocObject(v2, 8 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 8);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v3 = swift_allocObject(v2, 16 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 16);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(key: MLDataValue, value: MLDataValue)>);
  v3 = swift_allocObject(v2, 48 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 48);

  v11 = specialized Sequence._copySequenceContents(initializing:)(v9, (v3 + 4), v1, a1);
  v5 = v9[1];
  v6 = v9[2];
  v7 = v10;
  v9[0];
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v5, v6, v7);
  if (v11 != v1)
  {
    BUG();
  }

  return v3;
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1);
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v3 = swift_allocObject(v2, 16 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 16);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>);
  v3 = swift_allocObject(v2, 24 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 24);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, (v3 + 4), v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<[String]>);
  v3 = swift_allocObject(v2, 8 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 8);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1);
}

uint64_t *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = CMLDictionary.size.getter();
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  if (v2 <= 0)
  {
    v5 = _swiftEmptyArrayStorage;
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(CMLFeatureValue, CMLFeatureValue)>);
    v5 = swift_allocObject(v4, 16 * v3 + 32, 7);
    v6 = (_swift_stdlib_malloc_size(v5) - 32);
    v5[2] = v3;
    v5[3] = 2 * (v6 / 16);
  }

  v7 = specialized Sequence._copySequenceContents(initializing:)(v9, v5 + 4, v3);

  if (v7 != v3)
  {
    BUG();
  }

  return v5;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  if (v4 <= 0)
  {
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>);
    v7 = swift_allocObject(v6, 24 * v5 + 32, 7);
    v8 = (_swift_stdlib_malloc_size(v7) - 32);
    v7[2] = v5;
    v7[3] = 2 * (v8 / 24);
  }

  v9 = specialized Sequence._copySequenceContents(initializing:)(v11, (v7 + 4), v5, a1, a3);

  if (v9 != v5)
  {
    BUG();
  }

  return v7;
}

{

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

  if (v6 < 0)
  {
    BUG();
  }

  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);

  if (v4 < 0 || v8 < v4)
  {
    BUG();
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>);
  v10 = swift_allocObject(v9, 24 * v4 + 32, 7);
  v11 = (_swift_stdlib_malloc_size(v10) - 32);
  v10[2] = v4;
  v10[3] = 2 * (v11 / 24);

  v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v10 + 4), v4, a1, a3);

  if (v12 != v4)
  {
    BUG();
  }

  return v10;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, char a2)
{
  v10 = a1;
  v11 = a2 & 1;
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2, a1, a2 & 1);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v12 = a2 & 1;
  if (v3 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataTable.Row>);
    v6 = swift_allocObject(v5, 24 * v4 + 32, 7);
    v7 = (_swift_stdlib_malloc_size(v6) - 32);
    v6[2] = v4;
    v6[3] = 2 * (v7 / 24);
  }

  outlined copy of Result<_DataTable, Error>(a1, a2);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v6 + 4), v4, a1, v12);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  if (v8 != v4)
  {
    BUG();
  }

  return v6;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

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
  a3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValue)>);
  v11 = swift_allocObject(v10, 40 * v5 + 32, 7);
  v12 = (_swift_stdlib_malloc_size(v11) - 32);
  v11[2] = v5;
  v11[3] = 2 * (v12 / 40);
  v16 = (v11 + 4);

  v16 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v5, a1, a2, a3);
  v13 = v15[1];

  v13;

  if (v16 != v5)
  {
    BUG();
  }

  return v11;
}

uint64_t *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{

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

  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v9 = swift_allocObject(v8, 16 * v3 + 32, 7);
  v10 = (_swift_stdlib_malloc_size(v9) - 32);
  v9[2] = v3;
  v9[3] = 2 * (v10 / 16);

  v11 = specialized Sequence._copySequenceContents(initializing:)(v13, v9 + 4, v3, a1);

  if (v11 != v3)
  {
    BUG();
  }

  return v9;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  if (v3 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    v6 = swift_allocObject(v5, 8 * v4 + 32, 7);
    v7 = (_swift_stdlib_malloc_size(v6) - 32);
    v6[2] = v4;
    v6[3] = 2 * (v7 / 8) + 1;
  }

  v8 = specialized Sequence._copySequenceContents(initializing:)(v10, (v6 + 4), v4);

  if (v8 != v4)
  {
    BUG();
  }

  return v6;
}

{
  v2 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v2 <= 0)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v4 = swift_allocObject(v3, 8 * v2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = v2;
    v4[3] = 2 * (v5 / 8);
  }

  if (specialized Sequence._copySequenceContents(initializing:)(v7, v4 + 4, v2, a1, a2) != v2)
  {
    BUG();
  }

  return v4;
}

uint64_t sub_23046()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandActionClassifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~*(v3 + 80) & (v4 + 16);
  v42 = *(v3 + 64);
  *(v1 + v5);

  v45 = v2;
  v44 = v1 + v5;
  v6 = v1 + v5 + *(v2 + 28);
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v6, v8))
    {
      case 0u:
        v51 = type metadata accessor for URL(0);
        v48 = v5;
        v11 = *(*(v51 - 8) + 8);
        v11(v6, v51);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v11(v6 + v12[12], v51);
        v5 = v48;
        *(v6 + v12[16] + 8);
        *(v6 + v12[20] + 8);
        *(v6 + v12[24] + 8);
        v13 = v12[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 8))(v6, v9);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        *(v6 + 40);
        v10 = *(v6 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        *(v6 + 40);
        *(v6 + 56);
        v10 = *(v6 + 72);
        goto LABEL_10;
      case 5u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v6, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v6 + v15[12] + 8);
        *(v6 + v15[16] + 8);
        v13 = v15[20];
        goto LABEL_9;
      case 6u:
        v16 = type metadata accessor for DataFrame(0);
        (*(*(v16 - 8) + 8))(v6, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v6 + v17[12] + 8);
        *(v6 + v17[16] + 8);
        *(v6 + v17[20] + 8);
        v13 = v17[24];
LABEL_9:
        v10 = *(v6 + v13 + 8);
LABEL_10:
        v10;
        break;
      default:
        break;
    }
  }

  v18 = (v44 + *(v45 + 32));
  v19 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v18, v19);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v18;
      break;
    case 1:
      v43 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v49 = v5;
      v23 = v18 + *(v43 + 20);
      v46 = v4;
      v24 = type metadata accessor for DataFrame(0);
      v52 = v1;
      v25 = *(*(v24 - 8) + 8);
      v26 = v23;
      v5 = v49;
      v25(v26, v24);
      v27 = v24;
      v4 = v46;
      v25(v18 + *(v43 + 24), v27);
      v1 = v52;
      break;
    case 0:
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v18, v21) == 1)
      {
        v22 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v22 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v22);
      (*(*(v28 - 8) + 8))(v18, v28);
      break;
  }

  v29 = (*(v45 + 36) + v44);
  v30 = swift_getEnumCaseMultiPayload(v29, v19);
  switch(v30)
  {
    case 2:
      *v29;
      break;
    case 1:
      v33 = v29;
      v34 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v50 = v5;
      v35 = v33 + *(v34 + 20);
      v47 = v4;
      v36 = type metadata accessor for DataFrame(0);
      v53 = v1;
      v37 = *(*(v36 - 8) + 8);
      v38 = v35;
      v5 = v50;
      v37(v38, v36);
      v39 = v36;
      v4 = v47;
      v37(v33 + *(v34 + 24), v39);
      v1 = v53;
      break;
    case 0:
      v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v29, v31) == 1)
      {
        v32 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v32 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v40 = __swift_instantiateConcreteTypeFromMangledName(v32);
      (*(*(v40 - 8) + 8))(v29, v40);
      break;
  }

  return swift_deallocObject(v1, v42 + v5, v4 | 7);
}

uint64_t partial apply for closure #1 in MLHandPoseClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLHandActionClassifier(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandPoseClassifier.init(checkpoint:)(a1, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v12 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    a1[1] = a2[1];
    v5 = a2[2];
    a1[2] = v5;
    v125 = type metadata accessor for MLHandActionClassifier(0);
    v6 = v125[7];
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);

    v5;
    if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
    {
      v10 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v10);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v132 = v10;
          v15 = type metadata accessor for URL(0);
          v138 = v9;
          v16 = *(*(v15 - 8) + 16);
          v16(v7, v8, v15);
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v16(&v7[v17[12]], &v8[v17[12]], v15);
          v18 = v17[16];
          *&v7[v18] = *&v8[v18];
          *&v7[v18 + 8] = *&v8[v18 + 8];
          v19 = v17[20];
          *&v7[v19] = *&v8[v19];
          *&v7[v19 + 8] = *&v8[v19 + 8];
          v20 = v17[24];
          *&v7[v20] = *&v8[v20];
          *&v7[v20 + 8] = *&v8[v20 + 8];
          v21 = v17[28];
          *&v7[v21] = *&v8[v21];
          *&v7[v21 + 8] = *&v8[v21 + 8];

          v10 = v132;

          v9 = v138;
          goto LABEL_12;
        case 1u:
        case 2u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 16))(v7, v8, v11);
          goto LABEL_16;
        case 3u:
          v133 = v10;
          v22 = *v8;
          v23 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v23);
          *v7 = v22;
          v7[8] = v23;
          *(v7 + 2) = *(v8 + 2);
          *(v7 + 3) = *(v8 + 3);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 5) = *(v8 + 5);
          *(v7 + 6) = *(v8 + 6);
          *(v7 + 7) = *(v8 + 7);
          goto LABEL_11;
        case 4u:
          v131 = v10;
          v13 = *v8;
          v14 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v14);
          *v7 = v13;
          v7[8] = v14;
          *(v7 + 2) = *(v8 + 2);
          *(v7 + 3) = *(v8 + 3);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 5) = *(v8 + 5);
          *(v7 + 6) = *(v8 + 6);
          *(v7 + 7) = *(v8 + 7);
          *(v7 + 8) = *(v8 + 8);
          v137 = v9;
          *(v7 + 9) = *(v8 + 9);
          goto LABEL_14;
        case 5u:
          v24 = type metadata accessor for DataFrame(0);
          (*(*(v24 - 8) + 16))(v7, v8, v24);
          v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v26 = v25[12];
          *&v7[v26] = *&v8[v26];
          *&v7[v26 + 8] = *&v8[v26 + 8];
          v27 = v25[16];
          *&v7[v27] = *&v8[v27];
          v133 = v10;
          *&v7[v27 + 8] = *&v8[v27 + 8];
          v28 = v25[20];
          *&v7[v28] = *&v8[v28];
          *&v7[v28 + 8] = *&v8[v28 + 8];
LABEL_11:

          v10 = v133;
LABEL_12:

          break;
        case 6u:
          v29 = type metadata accessor for DataFrame(0);
          (*(*(v29 - 8) + 16))(v7, v8, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v31 = v30[12];
          *&v7[v31] = *&v8[v31];
          *&v7[v31 + 8] = *&v8[v31 + 8];
          v32 = v30[16];
          *&v7[v32] = *&v8[v32];
          v131 = v10;
          *&v7[v32 + 8] = *&v8[v32 + 8];
          v33 = v30[20];
          *&v7[v33] = *&v8[v33];
          *&v7[v33 + 8] = *&v8[v33 + 8];
          v34 = v30[24];
          *&v7[v34] = *&v8[v34];
          v137 = v9;
          *&v7[v34 + 8] = *&v8[v34 + 8];
LABEL_14:

          v10 = v131;

          v9 = v137;
          break;
      }

LABEL_16:
      v12 = a1;
      swift_storeEnumTagMultiPayload(v7, v10, EnumCaseMultiPayload);
      swift_storeEnumTagMultiPayload(v7, v9, 1);
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
      v12 = a1;
    }

    v35 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    *&v7[v35[5]] = *&v8[v35[5]];
    *&v7[v35[6]] = *&v8[v35[6]];
    *&v7[v35[7]] = *&v8[v35[7]];
    *&v7[v35[8]] = *&v8[v35[8]];
    *&v7[v35[10]] = *&v8[v35[10]];
    v36 = v125[8];
    v37 = (v12 + v36);
    v38 = (a2 + v36);
    v130 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v39 = swift_getEnumCaseMultiPayload(v38, v130);
    if (v39 == 2)
    {
      v44 = *v38;
      swift_errorRetain(*v38);
      *v37 = v44;
    }

    else if (v39 == 1)
    {
      *v37 = *v38;
      v139 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v40 = *(v139 + 20);
      v120 = v37 + v40;
      v41 = type metadata accessor for DataFrame(0);
      v134 = v37;
      v42 = *(*(v41 - 8) + 16);
      v43 = v38 + v40;
      v12 = a1;
      v42(v120, v43, v41);
      v42(v134 + *(v139 + 24), v38 + *(v139 + 24), v41);
      v37 = v134;
    }

    else
    {
      v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v46 = swift_getEnumCaseMultiPayload(v38, v45);
      v47 = v46 == 1;
      v48 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v46 == 1)
      {
        v48 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v49 = __swift_instantiateConcreteTypeFromMangledName(v48);
      (*(*(v49 - 8) + 16))(v37, v38, v49);
      swift_storeEnumTagMultiPayload(v37, v45, v47);
      v12 = a1;
    }

    swift_storeEnumTagMultiPayload(v37, v130, v39);
    v50 = v125[9];
    v51 = (v12 + v50);
    v52 = (a2 + v50);
    v53 = swift_getEnumCaseMultiPayload(v52, v130);
    if (v53 == 2)
    {
      v58 = *v52;
      swift_errorRetain(*v52);
      *v51 = v58;
    }

    else if (v53 == 1)
    {
      *v51 = *v52;
      v126 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v54 = *(v126 + 20);
      v140 = v51 + v54;
      v55 = type metadata accessor for DataFrame(0);
      v56 = *(*(v55 - 8) + 16);
      v57 = v52 + v54;
      v12 = a1;
      v56(v140, v57, v55);
      v56(v51 + *(v126 + 24), v52 + *(v126 + 24), v55);
      v53 = 1;
    }

    else
    {
      v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v60 = swift_getEnumCaseMultiPayload(v52, v59);
      v61 = v60 == 1;
      v62 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v60 == 1)
      {
        v62 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v63 = __swift_instantiateConcreteTypeFromMangledName(v62);
      (*(*(v63 - 8) + 16))(v51, v52, v63);
      swift_storeEnumTagMultiPayload(v51, v59, v61);
      v12 = a1;
    }

    swift_storeEnumTagMultiPayload(v51, v130, v53);
    v64 = a3;
    v65 = a3[5];
    v66 = *(a2 + v65);
    *(v12 + v65) = v66;
    v67 = a3[6];
    v68 = v12 + v67;
    v69 = a2 + v67;
    v70 = v66;
    v71 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v70;
    if (swift_getEnumCaseMultiPayload(v69, v71) == 1)
    {
      v127 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      v135 = swift_getEnumCaseMultiPayload(v69, v127);
      switch(v135)
      {
        case 0u:
          v141 = v71;
          v75 = type metadata accessor for URL(0);
          v76 = *(*(v75 - 8) + 16);
          v76(v68, v69, v75);
          v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v76(&v68[v77[12]], &v69[v77[12]], v75);
          v64 = a3;
          v78 = v77[16];
          *&v68[v78] = *&v69[v78];
          *&v68[v78 + 8] = *&v69[v78 + 8];
          v79 = v77[20];
          v12 = a1;
          *&v68[v79] = *&v69[v79];
          goto LABEL_41;
        case 1u:
        case 2u:
          v72 = type metadata accessor for URL(0);
          (*(*(v72 - 8) + 16))(v68, v69, v72);
          goto LABEL_44;
        case 3u:
          v142 = v71;
          v80 = *v69;
          v81 = v69[8];
          outlined copy of Result<_DataTable, Error>(*v69, v81);
          *v68 = v80;
          v68[8] = v81;
          *(v68 + 2) = *(v69 + 2);
          *(v68 + 3) = *(v69 + 3);
          *(v68 + 4) = *(v69 + 4);
          *(v68 + 5) = *(v69 + 5);
          *(v68 + 6) = *(v69 + 6);
          *(v68 + 7) = *(v69 + 7);
          goto LABEL_39;
        case 4u:
          v141 = v71;
          v73 = *v69;
          v74 = v69[8];
          outlined copy of Result<_DataTable, Error>(*v69, v74);
          *v68 = v73;
          v68[8] = v74;
          v12 = a1;
          *(v68 + 2) = *(v69 + 2);
          *(v68 + 3) = *(v69 + 3);
          *(v68 + 4) = *(v69 + 4);
          *(v68 + 5) = *(v69 + 5);
          goto LABEL_42;
        case 5u:
          v82 = type metadata accessor for DataFrame(0);
          (*(*(v82 - 8) + 16))(v68, v69, v82);
          v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v84 = v83[12];
          *&v68[v84] = *&v69[v84];
          *&v68[v84 + 8] = *&v69[v84 + 8];
          v85 = v83[16];
          *&v68[v85] = *&v69[v85];
          v142 = v71;
          *&v68[v85 + 8] = *&v69[v85 + 8];
          v86 = v83[20];
          *&v68[v86] = *&v69[v86];
          *&v68[v86 + 8] = *&v69[v86 + 8];
LABEL_39:

          v71 = v142;

          v12 = a1;
          break;
        case 6u:
          v87 = type metadata accessor for DataFrame(0);
          (*(*(v87 - 8) + 16))(v68, v69, v87);
          v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v89 = *(v88 + 48);
          *&v68[v89] = *&v69[v89];
          *&v68[v89 + 8] = *&v69[v89 + 8];
          v79 = *(v88 + 64);
          *&v68[v79] = *&v69[v79];
          v141 = v71;
LABEL_41:
          *&v68[v79 + 8] = *&v69[v79 + 8];
LABEL_42:

          v71 = v141;
          break;
      }

LABEL_44:
      swift_storeEnumTagMultiPayload(v68, v127, v135);
      swift_storeEnumTagMultiPayload(v68, v71, 1);
    }

    else
    {
      memcpy(v68, v69, *(*(v71 - 8) + 64));
    }

    v90 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    *&v68[v90[5]] = *&v69[v90[5]];
    *&v68[v90[6]] = *&v69[v90[6]];
    *&v68[v90[7]] = *&v69[v90[7]];
    v91 = v64[7];
    v92 = (v12 + v91);
    v93 = (a2 + v91);
    v94 = swift_getEnumCaseMultiPayload(v93, v130);
    if (v94 == 2)
    {
      v99 = *v93;
      swift_errorRetain(*v93);
      *v92 = v99;
    }

    else if (v94 == 1)
    {
      *v92 = *v93;
      v128 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v95 = *(v128 + 20);
      v143 = v92 + v95;
      v96 = type metadata accessor for DataFrame(0);
      v97 = *(*(v96 - 8) + 16);
      v98 = v93 + v95;
      v12 = a1;
      v97(v143, v98, v96);
      v97(v92 + *(v128 + 24), v93 + *(v128 + 24), v96);
      v94 = 1;
    }

    else
    {
      v100 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v101 = swift_getEnumCaseMultiPayload(v93, v100);
      v102 = v101 == 1;
      v103 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v101 == 1)
      {
        v103 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v104 = __swift_instantiateConcreteTypeFromMangledName(v103);
      (*(*(v104 - 8) + 16))(v92, v93, v104);
      swift_storeEnumTagMultiPayload(v92, v100, v102);
      v12 = a1;
    }

    swift_storeEnumTagMultiPayload(v92, v130, v94);
    v105 = a3[8];
    v106 = (v12 + v105);
    v107 = (a2 + v105);
    v108 = swift_getEnumCaseMultiPayload(a2 + v105, v130);
    if (v108 == 2)
    {
      v113 = *v107;
      swift_errorRetain(*v107);
      *v106 = v113;
      swift_storeEnumTagMultiPayload(v106, v130, 2);
    }

    else if (v108 == 1)
    {
      *v106 = *v107;
      v124 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v109 = *(v124 + 20);
      v122 = v106 + v109;
      v110 = type metadata accessor for DataFrame(0);
      v111 = *(*(v110 - 8) + 16);
      v112 = v107 + v109;
      v12 = a1;
      v111(v122, v112, v110);
      v111(v106 + *(v124 + 24), v107 + *(v124 + 24), v110);
      swift_storeEnumTagMultiPayload(v106, v130, 1);
    }

    else
    {
      v114 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v115 = swift_getEnumCaseMultiPayload(v107, v114);
      v116 = v115 == 1;
      v117 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v115 == 1)
      {
        v117 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v118 = __swift_instantiateConcreteTypeFromMangledName(v117);
      (*(*(v118 - 8) + 16))(v106, v107, v118);
      swift_storeEnumTagMultiPayload(v106, v114, v116);
      swift_storeEnumTagMultiPayload(v106, v130, 0);
      return a1;
    }
  }

  return v12;
}

uint64_t destroy for MLHandPoseClassifier(uint64_t a1, int *a2)
{
  v3 = a1;
  *a1;

  v4 = type metadata accessor for MLHandActionClassifier(0);
  v5 = a1 + v4[7];
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v5, v6) == 1)
  {
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v5, v7))
    {
      case 0u:
        v10 = type metadata accessor for URL(0);
        v86 = a2;
        v11 = *(*(v10 - 8) + 8);
        v11(v5);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        (v11)(v5 + v12[12], v10);
        a2 = v86;
        *(v5 + v12[16] + 8);
        *(v5 + v12[20] + 8);
        *(v5 + v12[24] + 8);
        v13 = v12[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v5, v8);
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
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v5, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v5 + v15[12] + 8);
        *(v5 + v15[16] + 8);
        v13 = v15[20];
        goto LABEL_9;
      case 6u:
        v16 = type metadata accessor for DataFrame(0);
        (*(*(v16 - 8) + 8))(v5, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v5 + v17[12] + 8);
        *(v5 + v17[16] + 8);
        *(v5 + v17[20] + 8);
        v13 = v17[24];
LABEL_9:
        v9 = *(v5 + v13 + 8);
LABEL_10:
        v9;
        break;
      default:
        break;
    }
  }

  v18 = (v3 + v4[8]);
  v19 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v18, v19);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v18;
      break;
    case 1:
      v87 = a2;
      v23 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v79 = v19;
      v24 = v18 + *(v23 + 20);
      v78 = v4;
      v25 = type metadata accessor for DataFrame(0);
      v82 = v3;
      v26 = *(*(v25 - 8) + 8);
      v27 = v24;
      v19 = v79;
      v26(v27, v25);
      v28 = *(v23 + 24);
      a2 = v87;
      v29 = v25;
      v4 = v78;
      v26(v18 + v28, v29);
      v3 = v82;
      break;
    case 0:
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v18, v21) == 1)
      {
        v22 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v22 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledName(v22);
      (*(*(v30 - 8) + 8))(v18, v30);
      break;
  }

  v31 = (v3 + v4[9]);
  v32 = swift_getEnumCaseMultiPayload(v31, v19);
  switch(v32)
  {
    case 2:
      *v31;
      break;
    case 1:
      v88 = a2;
      v35 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v80 = v19;
      v36 = v31 + *(v35 + 20);
      v37 = type metadata accessor for DataFrame(0);
      v83 = v3;
      v38 = *(*(v37 - 8) + 8);
      v39 = v36;
      v19 = v80;
      v38(v39, v37);
      v40 = *(v35 + 24);
      a2 = v88;
      v38(v31 + v40, v37);
      v3 = v83;
      break;
    case 0:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v31, v33) == 1)
      {
        v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledName(v34);
      (*(*(v41 - 8) + 8))(v31, v41);
      break;
  }

  v42 = v3 + a2[6];
  v43 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v42, v43) == 1)
  {
    v44 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v42, v44))
    {
      case 0u:
        v89 = a2;
        v47 = type metadata accessor for URL(0);
        v84 = v3;
        v48 = *(*(v47 - 8) + 8);
        v48(v42, v47);
        v49 = v19;
        v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v51 = v47;
        a2 = v89;
        v48(v42 + v50[12], v51);
        v3 = v84;
        *(v42 + v50[16] + 8);
        v52 = v50[20];
        goto LABEL_38;
      case 1u:
      case 2u:
        v45 = type metadata accessor for URL(0);
        (*(*(v45 - 8) + 8))(v42, v45);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v42, *(v42 + 8));
        *(v42 + 24);
        *(v42 + 40);
        v46 = *(v42 + 56);
        goto LABEL_39;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v42, *(v42 + 8));
        *(v42 + 24);
        v46 = *(v42 + 40);
        goto LABEL_39;
      case 5u:
        v53 = type metadata accessor for DataFrame(0);
        (*(*(v53 - 8) + 8))(v42, v53);
        v49 = v19;
        v54 = a2;
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v42 + v55[12] + 8);
        *(v42 + v55[16] + 8);
        v52 = v55[20];
        goto LABEL_37;
      case 6u:
        v56 = type metadata accessor for DataFrame(0);
        (*(*(v56 - 8) + 8))(v42, v56);
        v49 = v19;
        v54 = a2;
        v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(v42 + *(v57 + 48) + 8);
        v52 = *(v57 + 64);
LABEL_37:
        a2 = v54;
LABEL_38:
        v19 = v49;
        v46 = *(v42 + v52 + 8);
LABEL_39:
        v46;
        break;
      default:
        break;
    }
  }

  v58 = (v3 + a2[7]);
  v59 = swift_getEnumCaseMultiPayload(v58, v19);
  switch(v59)
  {
    case 2:
      *v58;
      break;
    case 1:
      v90 = a2;
      v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v81 = v19;
      v63 = v58 + *(v62 + 20);
      v64 = type metadata accessor for DataFrame(0);
      v85 = v3;
      v65 = *(*(v64 - 8) + 8);
      v66 = v63;
      v19 = v81;
      v65(v66, v64);
      v67 = *(v62 + 24);
      a2 = v90;
      v65(v58 + v67, v64);
      v3 = v85;
      break;
    case 0:
      v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v58, v60) == 1)
      {
        v61 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v61 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v68 = __swift_instantiateConcreteTypeFromMangledName(v61);
      (*(*(v68 - 8) + 8))(v58, v68);
      break;
  }

  v69 = (a2[8] + v3);
  result = swift_getEnumCaseMultiPayload(v69, v19);
  switch(result)
  {
    case 2:
      return *v69;
    case 1:
      v73 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v74 = v69 + *(v73 + 20);
      v75 = type metadata accessor for DataFrame(0);
      v76 = *(*(v75 - 8) + 8);
      v76(v74, v75);
      return (v76)(v69 + *(v73 + 24), v75);
    case 0:
      v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v69, v71) == 1)
      {
        v72 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v72 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v77 = __swift_instantiateConcreteTypeFromMangledName(v72);
      return (*(*(v77 - 8) + 8))(v69, v77);
  }

  return result;
}

void *initializeWithCopy for MLHandPoseClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];
  a1[2] = v3;
  v132 = type metadata accessor for MLHandActionClassifier(0);
  v4 = v132[7];
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);

  v3;
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v8);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v137 = v8;
        v13 = type metadata accessor for URL(0);
        v144 = v7;
        v14 = *(*(v13 - 8) + 16);
        v14(v5, v6, v13);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v14(&v5[v15[12]], &v6[v15[12]], v13);
        v16 = v15[16];
        *&v5[v16] = *&v6[v16];
        *&v5[v16 + 8] = *&v6[v16 + 8];
        v17 = v15[20];
        *&v5[v17] = *&v6[v17];
        *&v5[v17 + 8] = *&v6[v17 + 8];
        v18 = v15[24];
        *&v5[v18] = *&v6[v18];
        *&v5[v18 + 8] = *&v6[v18 + 8];
        v19 = v15[28];
        *&v5[v19] = *&v6[v19];
        *&v5[v19 + 8] = *&v6[v19 + 8];

        v8 = v137;

        v7 = v144;
        goto LABEL_10;
      case 1u:
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(v5, v6, v9);
        goto LABEL_14;
      case 3u:
        v138 = v8;
        v20 = *v6;
        v21 = v6[8];
        outlined copy of Result<_DataTable, Error>(*v6, v21);
        *v5 = v20;
        v5[8] = v21;
        *(v5 + 2) = *(v6 + 2);
        *(v5 + 3) = *(v6 + 3);
        *(v5 + 4) = *(v6 + 4);
        *(v5 + 5) = *(v6 + 5);
        *(v5 + 6) = *(v6 + 6);
        *(v5 + 7) = *(v6 + 7);
        goto LABEL_9;
      case 4u:
        v136 = v8;
        v11 = *v6;
        v12 = v6[8];
        outlined copy of Result<_DataTable, Error>(*v6, v12);
        *v5 = v11;
        v5[8] = v12;
        *(v5 + 2) = *(v6 + 2);
        *(v5 + 3) = *(v6 + 3);
        *(v5 + 4) = *(v6 + 4);
        *(v5 + 5) = *(v6 + 5);
        *(v5 + 6) = *(v6 + 6);
        *(v5 + 7) = *(v6 + 7);
        *(v5 + 8) = *(v6 + 8);
        v143 = v7;
        *(v5 + 9) = *(v6 + 9);
        goto LABEL_12;
      case 5u:
        v22 = type metadata accessor for DataFrame(0);
        (*(*(v22 - 8) + 16))(v5, v6, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v24 = v23[12];
        *&v5[v24] = *&v6[v24];
        *&v5[v24 + 8] = *&v6[v24 + 8];
        v25 = v23[16];
        *&v5[v25] = *&v6[v25];
        v138 = v8;
        *&v5[v25 + 8] = *&v6[v25 + 8];
        v26 = v23[20];
        *&v5[v26] = *&v6[v26];
        *&v5[v26 + 8] = *&v6[v26 + 8];
LABEL_9:

        v8 = v138;
LABEL_10:

        break;
      case 6u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 16))(v5, v6, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v29 = v28[12];
        *&v5[v29] = *&v6[v29];
        *&v5[v29 + 8] = *&v6[v29 + 8];
        v30 = v28[16];
        *&v5[v30] = *&v6[v30];
        v136 = v8;
        *&v5[v30 + 8] = *&v6[v30 + 8];
        v31 = v28[20];
        *&v5[v31] = *&v6[v31];
        *&v5[v31 + 8] = *&v6[v31 + 8];
        v32 = v28[24];
        *&v5[v32] = *&v6[v32];
        v143 = v7;
        *&v5[v32 + 8] = *&v6[v32 + 8];
LABEL_12:

        v8 = v136;

        v7 = v143;
        break;
    }

LABEL_14:
    v10 = a2;
    swift_storeEnumTagMultiPayload(v5, v8, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(v5, v7, 1);
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
    v10 = a2;
  }

  v33 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v5[v33[5]] = *&v6[v33[5]];
  *&v5[v33[6]] = *&v6[v33[6]];
  *&v5[v33[7]] = *&v6[v33[7]];
  *&v5[v33[8]] = *&v6[v33[8]];
  *&v5[v33[10]] = *&v6[v33[10]];
  v34 = v132[8];
  v35 = a1;
  v36 = (a1 + v34);
  v37 = (v10 + v34);
  v131 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v38 = swift_getEnumCaseMultiPayload(v37, v131);
  if (v38 == 2)
  {
    v45 = *v37;
    swift_errorRetain(v45);
    *v36 = v45;
  }

  else if (v38 == 1)
  {
    *v36 = *v37;
    v139 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v39 = v36;
    v40 = *(v139 + 20);
    v126 = v39 + v40;
    v41 = type metadata accessor for DataFrame(0);
    v42 = *(*(v41 - 8) + 16);
    v43 = v37 + v40;
    v36 = v39;
    v35 = a1;
    v42(v126, v43, v41);
    v44 = v41;
    v10 = a2;
    v42(v36 + *(v139 + 24), v37 + *(v139 + 24), v44);
    v38 = 1;
  }

  else
  {
    v46 = v36;
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v48 = swift_getEnumCaseMultiPayload(v37, v47);
    v49 = v48 == 1;
    v50 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v48 == 1)
    {
      v50 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(v50);
    (*(*(v51 - 8) + 16))(v46, v37, v51);
    v52 = v47;
    v36 = v46;
    swift_storeEnumTagMultiPayload(v46, v52, v49);
    v35 = a1;
    v10 = a2;
  }

  swift_storeEnumTagMultiPayload(v36, v131, v38);
  v53 = v132[9];
  v54 = (v35 + v53);
  v55 = (v10 + v53);
  v56 = swift_getEnumCaseMultiPayload(v55, v131);
  v133 = v56;
  if (v56 == 2)
  {
    v63 = *v55;
    swift_errorRetain(v63);
    *v54 = v63;
  }

  else if (v56 == 1)
  {
    *v54 = *v55;
    v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v58 = *(v57 + 20);
    v140 = v54 + v58;
    v59 = type metadata accessor for DataFrame(0);
    v60 = v55 + v58;
    v61 = *(*(v59 - 8) + 16);
    v61(v140, v60, v59);
    v62 = v59;
    v10 = a2;
    v61(v54 + *(v57 + 24), v55 + *(v57 + 24), v62);
  }

  else
  {
    v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v65 = swift_getEnumCaseMultiPayload(v55, v64);
    v66 = v65 == 1;
    v67 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v65 == 1)
    {
      v67 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v68 = __swift_instantiateConcreteTypeFromMangledName(v67);
    (*(*(v68 - 8) + 16))(v54, v55, v68);
    swift_storeEnumTagMultiPayload(v54, v64, v66);
    v10 = a2;
  }

  swift_storeEnumTagMultiPayload(v54, v131, v133);
  v69 = a3[5];
  v70 = *(v10 + v69);
  *(a1 + v69) = v70;
  v71 = a3[6];
  v72 = a1 + v71;
  v73 = v10 + v71;
  v74 = v70;
  v75 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v74;
  if (swift_getEnumCaseMultiPayload(v73, v75) == 1)
  {
    v134 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    v141 = swift_getEnumCaseMultiPayload(v73, v134);
    switch(v141)
    {
      case 0u:
        v145 = v75;
        v79 = type metadata accessor for URL(0);
        v80 = *(*(v79 - 8) + 16);
        v80(v72, v73, v79);
        v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v80(&v72[v81[12]], v73 + v81[12], v79);
        v82 = v81[16];
        *&v72[v82] = *(v73 + v82);
        *&v72[v82 + 8] = *(v73 + v82 + 8);
        v83 = v81[20];
        v10 = a2;
        *&v72[v83] = *(v73 + v83);
        goto LABEL_39;
      case 1u:
      case 2u:
        v76 = type metadata accessor for URL(0);
        (*(*(v76 - 8) + 16))(v72, v73, v76);
        goto LABEL_42;
      case 3u:
        v146 = v75;
        v84 = *v73;
        v85 = *(v73 + 8);
        outlined copy of Result<_DataTable, Error>(*v73, v85);
        *v72 = v84;
        v72[8] = v85;
        *(v72 + 2) = *(v73 + 16);
        *(v72 + 3) = *(v73 + 24);
        *(v72 + 4) = *(v73 + 32);
        *(v72 + 5) = *(v73 + 40);
        *(v72 + 6) = *(v73 + 48);
        *(v72 + 7) = *(v73 + 56);
        goto LABEL_37;
      case 4u:
        v145 = v75;
        v77 = *v73;
        v78 = *(v73 + 8);
        outlined copy of Result<_DataTable, Error>(*v73, v78);
        *v72 = v77;
        v72[8] = v78;
        v10 = a2;
        *(v72 + 2) = *(v73 + 16);
        *(v72 + 3) = *(v73 + 24);
        *(v72 + 4) = *(v73 + 32);
        *(v72 + 5) = *(v73 + 40);
        goto LABEL_40;
      case 5u:
        v86 = type metadata accessor for DataFrame(0);
        (*(*(v86 - 8) + 16))(v72, v73, v86);
        v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v88 = v87[12];
        *&v72[v88] = *(v73 + v88);
        *&v72[v88 + 8] = *(v73 + v88 + 8);
        v89 = v87[16];
        *&v72[v89] = *(v73 + v89);
        v146 = v75;
        *&v72[v89 + 8] = *(v73 + v89 + 8);
        v90 = v87[20];
        *&v72[v90] = *(v73 + v90);
        *&v72[v90 + 8] = *(v73 + v90 + 8);
LABEL_37:

        v75 = v146;

        v10 = a2;
        break;
      case 6u:
        v91 = type metadata accessor for DataFrame(0);
        (*(*(v91 - 8) + 16))(v72, v73, v91);
        v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v93 = *(v92 + 48);
        *&v72[v93] = *(v73 + v93);
        *&v72[v93 + 8] = *(v73 + v93 + 8);
        v83 = *(v92 + 64);
        *&v72[v83] = *(v73 + v83);
        v145 = v75;
LABEL_39:
        *&v72[v83 + 8] = *(v73 + v83 + 8);
LABEL_40:

        v75 = v145;
        break;
    }

LABEL_42:
    swift_storeEnumTagMultiPayload(v72, v134, v141);
    swift_storeEnumTagMultiPayload(v72, v75, 1);
  }

  else
  {
    memcpy(v72, v73, *(*(v75 - 8) + 64));
  }

  v94 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v72[v94[5]] = *(v73 + v94[5]);
  *&v72[v94[6]] = *(v73 + v94[6]);
  *&v72[v94[7]] = *(v73 + v94[7]);
  v95 = a3[7];
  v96 = (a1 + v95);
  v97 = (v10 + v95);
  v98 = swift_getEnumCaseMultiPayload(v97, v131);
  if (v98 == 2)
  {
    v104 = *v97;
    swift_errorRetain(v104);
    *v96 = v104;
  }

  else if (v98 == 1)
  {
    *v96 = *v97;
    v135 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v99 = *(v135 + 20);
    v142 = v96 + v99;
    v100 = type metadata accessor for DataFrame(0);
    v101 = v97 + v99;
    v102 = *(*(v100 - 8) + 16);
    v102(v142, v101, v100);
    v103 = v100;
    v10 = a2;
    v102(v96 + *(v135 + 24), v97 + *(v135 + 24), v103);
  }

  else
  {
    v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v106 = swift_getEnumCaseMultiPayload(v97, v105);
    v107 = v106 == 1;
    v108 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v106 == 1)
    {
      v108 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v109 = __swift_instantiateConcreteTypeFromMangledName(v108);
    (*(*(v109 - 8) + 16))(v96, v97, v109);
    swift_storeEnumTagMultiPayload(v96, v105, v107);
    v10 = a2;
  }

  swift_storeEnumTagMultiPayload(v96, v131, v98);
  v110 = a3[8];
  v111 = (a1 + v110);
  v112 = (v10 + v110);
  v113 = swift_getEnumCaseMultiPayload(v112, v131);
  if (v113 == 2)
  {
    v119 = *v112;
    swift_errorRetain(*v112);
    *v111 = v119;
  }

  else if (v113 == 1)
  {
    *v111 = *v112;
    v148 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v114 = v112;
    v115 = *(v148 + 20);
    v128 = v111 + v115;
    v116 = type metadata accessor for DataFrame(0);
    v117 = v114 + v115;
    v118 = *(*(v116 - 8) + 16);
    v118(v128, v117, v116);
    v118(v111 + *(v148 + 24), v114 + *(v148 + 24), v116);
  }

  else
  {
    v120 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v121 = swift_getEnumCaseMultiPayload(v112, v120);
    v149 = v112;
    v122 = v121 == 1;
    v123 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v121 == 1)
    {
      v123 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v124 = __swift_instantiateConcreteTypeFromMangledName(v123);
    (*(*(v124 - 8) + 16))(v111, v149, v124);
    swift_storeEnumTagMultiPayload(v111, v120, v122);
  }

  swift_storeEnumTagMultiPayload(v111, v131, v113);
  return a1;
}