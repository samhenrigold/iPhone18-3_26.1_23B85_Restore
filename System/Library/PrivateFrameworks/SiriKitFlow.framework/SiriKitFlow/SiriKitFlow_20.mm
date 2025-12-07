void sub_1DCD11598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setExecutionDeviceAssistantId_];
}

void sub_1DCD115F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setSpeechPackageData_];
}

unint64_t sub_1DCD11648()
{
  result = qword_1ECCA4930;
  if (!qword_1ECCA4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4930);
  }

  return result;
}

uint64_t sub_1DCD1169C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Input(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCD116E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

unint64_t sub_1DCD11740()
{
  result = qword_1ECCA4948;
  if (!qword_1ECCA4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4948);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ExecuteOnRemotePayload(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_1DD0DC76C();
      (*(*(v12 - 8) + 16))(v9, v10, v12);
      goto LABEL_27;
    case 1u:
      v21 = sub_1DD0DC76C();
      (*(*(v21 - 8) + 16))(v9, v10, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v9[*(v22 + 48)] = *&v10[*(v22 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v15 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v15;
      *(v9 + 2) = *(v10 + 2);

      goto LABEL_27;
    case 3u:
      *v9 = *v10;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v13 = sub_1DD0DB1EC();
      (*(*(v13 - 8) + 16))(v9, v10, v13);
      goto LABEL_27;
    case 5u:
      v23 = *v10;
      *v9 = *v10;
      v24 = v23;
      goto LABEL_27;
    case 6u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 16))(v9, v10, v25);
      v26 = type metadata accessor for USOParse(0);
      v27 = v26[5];
      v28 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v28))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v27], &v10[v27], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(*(v28 - 8) + 16))(&v9[v27], &v10[v27], v28);
        __swift_storeEnumTagSinglePayload(&v9[v27], 0, 1, v28);
      }

      v60 = v26[6];
      v61 = &v9[v60];
      v62 = &v10[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v26[7];
      v65 = &v9[v64];
      v66 = &v10[v64];
      v65[4] = v66[4];
      *v65 = *v66;

      goto LABEL_27;
    case 7u:
      v16 = sub_1DD0DB4BC();
      (*(*(v16 - 8) + 16))(v9, v10, v16);
      v17 = type metadata accessor for USOParse(0);
      v18 = v17[5];
      v19 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v18], 1, v19))
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v18], &v10[v18], *(*(v20 - 8) + 64));
      }

      else
      {
        (*(*(v19 - 8) + 16))(&v9[v18], &v10[v18], v19);
        __swift_storeEnumTagSinglePayload(&v9[v18], 0, 1, v19);
      }

      v40 = v17[6];
      v41 = &v9[v40];
      v42 = &v10[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v17[7];
      v45 = &v9[v44];
      v46 = &v10[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse(0);
      v48 = v47[5];
      v49 = &v9[v48];
      v50 = &v10[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v47[6];
      v53 = &v9[v52];
      v54 = &v10[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      v56 = v47[7];
      v57 = &v9[v56];
      v58 = &v10[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;

      goto LABEL_27;
    case 8u:
      v30 = sub_1DD0DD12C();
      (*(*(v30 - 8) + 16))(v9, v10, v30);
      v31 = type metadata accessor for NLRouterParse(0);
      v32 = *(v31 + 20);
      v33 = &v9[v32];
      v34 = &v10[v32];
      v35 = *(v34 + 1);
      *v33 = *v34;
      *(v33 + 1) = v35;
      v36 = *(v31 + 24);
      v93 = v31;
      __dst = &v9[v36];
      v37 = &v10[v36];
      v38 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(__dst, v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v67 = sub_1DD0DB4BC();
        (*(*(v67 - 8) + 16))(__dst, v37, v67);
        v68 = v38[5];
        v92 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v37[v68], 1, v92))
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&__dst[v68], &v37[v68], *(*(v69 - 8) + 64));
        }

        else
        {
          (*(*(v92 - 8) + 16))(&__dst[v68], &v37[v68]);
          __swift_storeEnumTagSinglePayload(&__dst[v68], 0, 1, v92);
        }

        v70 = v38[6];
        v71 = &__dst[v70];
        v72 = &v37[v70];
        v73 = *(v72 + 1);
        *v71 = *v72;
        *(v71 + 1) = v73;
        v74 = v38[7];
        v75 = &__dst[v74];
        v76 = &v37[v74];
        v75[4] = v76[4];
        *v75 = *v76;

        __swift_storeEnumTagSinglePayload(__dst, 0, 1, v38);
      }

      v77 = *(v93 + 28);
      v78 = *&v10[v77];
      *&v9[v77] = v78;
      v79 = v78;
      goto LABEL_27;
    case 9u:
      v14 = sub_1DD0DD08C();
      (*(*(v14 - 8) + 16))(v9, v10, v14);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v9, v10, *(*(v11 - 8) + 64));
      break;
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v80 = v7[7];
  v81 = a1 + v80;
  v82 = a2 + v80;
  v83 = *(a2 + v80 + 24);

  if (v83)
  {
    v84 = *(v82 + 4);
    *(v81 + 3) = v83;
    *(v81 + 4) = v84;
    (**(v83 - 8))(v81, v82, v83);
  }

  else
  {
    v85 = *(v82 + 1);
    *v81 = *v82;
    *(v81 + 1) = v85;
    *(v81 + 4) = *(v82 + 4);
  }

  *(a1 + v7[8]) = *(a2 + v7[8]);
  v86 = *(a3 + 20);
  v87 = a1 + v86;
  v88 = a2 + v86;
  v89 = *(v88 + 1);
  if (v89 >> 60 == 15)
  {
    *v87 = *v88;
  }

  else
  {
    v90 = *v88;
    sub_1DCC91E80(*v88, *(v88 + 1));
    *v87 = v90;
    *(v87 + 1) = v89;
  }

  return a1;
}

void *destroy for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = type metadata accessor for Input(0);
  v6 = (a1 + *(v5 + 20));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v11 = sub_1DD0DC76C();
      (*(*(v11 - 8) + 8))(v6, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_15;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      v7 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v12 = *v6;
      goto LABEL_21;
    case 6u:
      v13 = sub_1DD0DB4BC();
      (*(*(v13 - 8) + 8))(v6, v13);
      v14 = *(type metadata accessor for USOParse(0) + 20);
      v15 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v6 + v14, 1, v15))
      {
        (*(*(v15 - 8) + 8))(v6 + v14, v15);
      }

      goto LABEL_15;
    case 7u:
      v8 = sub_1DD0DB4BC();
      (*(*(v8 - 8) + 8))(v6, v8);
      v9 = *(type metadata accessor for USOParse(0) + 20);
      v10 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v10))
      {
        (*(*(v10 - 8) + 8))(v6 + v9, v10);
      }

      type metadata accessor for LinkParse(0);

LABEL_15:

      break;
    case 8u:
      v16 = sub_1DD0DD12C();
      (*(*(v16 - 8) + 8))(v6, v16);
      v17 = type metadata accessor for NLRouterParse(0);

      v18 = v6 + *(v17 + 24);
      v19 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v18, 1, v19))
      {
        v20 = sub_1DD0DB4BC();
        (*(*(v20 - 8) + 8))(v18, v20);
        v21 = *(v19 + 20);
        v22 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v18 + v21, 1, v22))
        {
          (*(*(v22 - 8) + 8))(v18 + v21, v22);
        }
      }

      v12 = *(v6 + *(v17 + 28));
LABEL_21:

      break;
    case 9u:
      v7 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v7 - 8) + 8))(v6, v7);
      break;
    default:
      break;
  }

  result = (a1 + *(v5 + 28));
  if (result[3])
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  v24 = (a1 + *(a2 + 20));
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    v26 = *v24;

    return sub_1DCB21A14(v26, v25);
  }

  return result;
}

uint64_t initializeWithCopy for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_1DD0DC76C();
      (*(*(v12 - 8) + 16))(v9, v10, v12);
      goto LABEL_25;
    case 1u:
      v21 = sub_1DD0DC76C();
      (*(*(v21 - 8) + 16))(v9, v10, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v9[*(v22 + 48)] = *&v10[*(v22 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v15 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v15;
      *(v9 + 2) = *(v10 + 2);

      goto LABEL_25;
    case 3u:
      *v9 = *v10;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v13 = sub_1DD0DB1EC();
      (*(*(v13 - 8) + 16))(v9, v10, v13);
      goto LABEL_25;
    case 5u:
      v23 = *v10;
      *v9 = *v10;
      v24 = v23;
      goto LABEL_25;
    case 6u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 16))(v9, v10, v25);
      v26 = type metadata accessor for USOParse(0);
      v27 = v26[5];
      v28 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v28))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v27], &v10[v27], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(*(v28 - 8) + 16))(&v9[v27], &v10[v27], v28);
        __swift_storeEnumTagSinglePayload(&v9[v27], 0, 1, v28);
      }

      v60 = v26[6];
      v61 = &v9[v60];
      v62 = &v10[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v26[7];
      v65 = &v9[v64];
      v66 = &v10[v64];
      v65[4] = v66[4];
      *v65 = *v66;

      goto LABEL_25;
    case 7u:
      v16 = sub_1DD0DB4BC();
      (*(*(v16 - 8) + 16))(v9, v10, v16);
      v17 = type metadata accessor for USOParse(0);
      v18 = v17[5];
      v19 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v18], 1, v19))
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v18], &v10[v18], *(*(v20 - 8) + 64));
      }

      else
      {
        (*(*(v19 - 8) + 16))(&v9[v18], &v10[v18], v19);
        __swift_storeEnumTagSinglePayload(&v9[v18], 0, 1, v19);
      }

      v40 = v17[6];
      v41 = &v9[v40];
      v42 = &v10[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v17[7];
      v45 = &v9[v44];
      v46 = &v10[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse(0);
      v48 = v47[5];
      v49 = &v9[v48];
      v50 = &v10[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v47[6];
      v53 = &v9[v52];
      v54 = &v10[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      v56 = v47[7];
      v57 = &v9[v56];
      v58 = &v10[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;

      goto LABEL_25;
    case 8u:
      v30 = sub_1DD0DD12C();
      (*(*(v30 - 8) + 16))(v9, v10, v30);
      v31 = type metadata accessor for NLRouterParse(0);
      v32 = *(v31 + 20);
      v33 = &v9[v32];
      v34 = &v10[v32];
      v35 = *(v34 + 1);
      *v33 = *v34;
      *(v33 + 1) = v35;
      v36 = *(v31 + 24);
      v93 = v31;
      __dst = &v9[v36];
      v37 = &v10[v36];
      v38 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(__dst, v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v67 = sub_1DD0DB4BC();
        (*(*(v67 - 8) + 16))(__dst, v37, v67);
        v68 = v38[5];
        v92 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v37[v68], 1, v92))
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&__dst[v68], &v37[v68], *(*(v69 - 8) + 64));
        }

        else
        {
          (*(*(v92 - 8) + 16))(&__dst[v68], &v37[v68]);
          __swift_storeEnumTagSinglePayload(&__dst[v68], 0, 1, v92);
        }

        v70 = v38[6];
        v71 = &__dst[v70];
        v72 = &v37[v70];
        v73 = *(v72 + 1);
        *v71 = *v72;
        *(v71 + 1) = v73;
        v74 = v38[7];
        v75 = &__dst[v74];
        v76 = &v37[v74];
        v75[4] = v76[4];
        *v75 = *v76;

        __swift_storeEnumTagSinglePayload(__dst, 0, 1, v38);
      }

      v77 = *(v93 + 28);
      v78 = *&v10[v77];
      *&v9[v77] = v78;
      v79 = v78;
      goto LABEL_25;
    case 9u:
      v14 = sub_1DD0DD08C();
      (*(*(v14 - 8) + 16))(v9, v10, v14);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v9, v10, *(*(v11 - 8) + 64));
      break;
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v80 = v7[7];
  v81 = a1 + v80;
  v82 = a2 + v80;
  v83 = *(a2 + v80 + 24);

  if (v83)
  {
    v84 = *(v82 + 32);
    *(v81 + 24) = v83;
    *(v81 + 32) = v84;
    (**(v83 - 8))(v81, v82, v83);
  }

  else
  {
    v85 = *(v82 + 16);
    *v81 = *v82;
    *(v81 + 16) = v85;
    *(v81 + 32) = *(v82 + 32);
  }

  *(a1 + v7[8]) = *(a2 + v7[8]);
  v86 = *(a3 + 20);
  v87 = a1 + v86;
  v88 = (a2 + v86);
  v89 = v88[1];
  if (v89 >> 60 == 15)
  {
    *v87 = *v88;
  }

  else
  {
    v90 = *v88;
    sub_1DCC91E80(*v88, v88[1]);
    *v87 = v90;
    *(v87 + 8) = v89;
  }

  return a1;
}

uint64_t assignWithCopy for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7;
  if (a1 != a2)
  {
    v9 = *(v7 + 20);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    sub_1DCD136A8(a1 + v9, type metadata accessor for Parse);
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 16))(v10, v11, v13);
        goto LABEL_26;
      case 1u:
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 16))(v10, v11, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v22 + 48)] = *&v11[*(v22 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        *(v10 + 2) = *(v11 + 2);

        goto LABEL_26;
      case 3u:
        *v10 = *v11;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v14 = sub_1DD0DB1EC();
        (*(*(v14 - 8) + 16))(v10, v11, v14);
        goto LABEL_26;
      case 5u:
        v23 = *v11;
        *v10 = *v11;
        v24 = v23;
        goto LABEL_26;
      case 6u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 16))(v10, v11, v25);
        v26 = type metadata accessor for USOParse(0);
        v27 = v26[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v27], &v11[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 16))(&v10[v27], &v11[v27], v28);
          __swift_storeEnumTagSinglePayload(&v10[v27], 0, 1, v28);
        }

        v56 = v26[6];
        v57 = &v10[v56];
        v58 = &v11[v56];
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v59 = v26[7];
        v60 = &v10[v59];
        v61 = &v11[v59];
        v62 = *v61;
        v60[4] = v61[4];
        *v60 = v62;

        goto LABEL_26;
      case 7u:
        v16 = sub_1DD0DB4BC();
        (*(*(v16 - 8) + 16))(v10, v11, v16);
        v17 = type metadata accessor for USOParse(0);
        v18 = v17[5];
        v19 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v18], 1, v19))
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v18], &v11[v18], *(*(v20 - 8) + 64));
        }

        else
        {
          (*(*(v19 - 8) + 16))(&v10[v18], &v11[v18], v19);
          __swift_storeEnumTagSinglePayload(&v10[v18], 0, 1, v19);
        }

        v39 = v17[6];
        v40 = &v10[v39];
        v41 = &v11[v39];
        *v40 = *v41;
        *(v40 + 1) = *(v41 + 1);
        v42 = v17[7];
        v43 = &v10[v42];
        v44 = &v11[v42];
        v45 = *v44;
        v43[4] = v44[4];
        *v43 = v45;
        v46 = type metadata accessor for LinkParse(0);
        v47 = v46[5];
        v48 = &v10[v47];
        v49 = &v11[v47];
        *v48 = *v49;
        *(v48 + 1) = *(v49 + 1);
        v50 = v46[6];
        v51 = &v10[v50];
        v52 = &v11[v50];
        *v51 = *v52;
        *(v51 + 1) = *(v52 + 1);
        v53 = v46[7];
        v54 = &v10[v53];
        v55 = &v11[v53];
        *v54 = *v55;
        *(v54 + 1) = *(v55 + 1);

        goto LABEL_26;
      case 8u:
        v30 = sub_1DD0DD12C();
        (*(*(v30 - 8) + 16))(v10, v11, v30);
        v31 = type metadata accessor for NLRouterParse(0);
        v32 = *(v31 + 20);
        v33 = &v10[v32];
        v34 = &v11[v32];
        *v33 = *v34;
        *(v33 + 1) = *(v34 + 1);
        v35 = *(v31 + 24);
        v92 = v31;
        __dst = &v10[v35];
        v36 = &v11[v35];
        v37 = type metadata accessor for USOParse(0);

        if (__swift_getEnumTagSinglePayload(v36, 1, v37))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v36, *(*(v38 - 8) + 64));
        }

        else
        {
          v63 = sub_1DD0DB4BC();
          (*(*(v63 - 8) + 16))(__dst, v36, v63);
          v64 = v37[5];
          v91 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v36[v64], 1, v91))
          {
            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v64], &v36[v64], *(*(v65 - 8) + 64));
          }

          else
          {
            (*(*(v91 - 8) + 16))(&__dst[v64], &v36[v64]);
            __swift_storeEnumTagSinglePayload(&__dst[v64], 0, 1, v91);
          }

          v66 = v37[6];
          v67 = &__dst[v66];
          v68 = &v36[v66];
          *v67 = *v68;
          *(v67 + 1) = *(v68 + 1);
          v69 = v37[7];
          v70 = &__dst[v69];
          v71 = &v36[v69];
          v72 = *v71;
          v70[4] = v71[4];
          *v70 = v72;

          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v37);
        }

        v73 = *(v92 + 28);
        v74 = *&v11[v73];
        *&v10[v73] = v74;
        v75 = v74;
        goto LABEL_26;
      case 9u:
        v15 = sub_1DD0DD08C();
        (*(*(v15 - 8) + 16))(v10, v11, v15);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }
  }

  *(a1 + v8[6]) = *(a2 + v8[6]);

  v76 = v8[7];
  v77 = a1 + v76;
  v78 = (a2 + v76);
  v79 = *(a2 + v76 + 24);
  if (*(a1 + v76 + 24))
  {
    if (v79)
    {
      __swift_assign_boxed_opaque_existential_1(v77, v78);
      goto LABEL_34;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v77);
  }

  else if (v79)
  {
    *(v77 + 24) = v79;
    *(v77 + 32) = *(v78 + 4);
    (**(v79 - 8))(v77, v78);
    goto LABEL_34;
  }

  v80 = *v78;
  v81 = v78[1];
  *(v77 + 32) = *(v78 + 4);
  *v77 = v80;
  *(v77 + 16) = v81;
LABEL_34:
  *(a1 + v8[8]) = *(a2 + v8[8]);
  v82 = *(a3 + 20);
  v83 = (a1 + v82);
  v84 = (a2 + v82);
  v85 = *(a2 + v82 + 8);
  if (*(a1 + v82 + 8) >> 60 != 15)
  {
    if (v85 >> 60 != 15)
    {
      v87 = *v84;
      sub_1DCC91E80(v87, v85);
      v88 = *v83;
      v89 = v83[1];
      *v83 = v87;
      v83[1] = v85;
      sub_1DCB21A14(v88, v89);
      return a1;
    }

    sub_1DCCFBA6C(v83);
    goto LABEL_39;
  }

  if (v85 >> 60 == 15)
  {
LABEL_39:
    *v83 = *v84;
    return a1;
  }

  v86 = *v84;
  sub_1DCC91E80(v86, v85);
  *v83 = v86;
  v83[1] = v85;
  return a1;
}

uint64_t sub_1DCD136A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t initializeWithTake for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7[5];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_1DD0DC76C();
      (*(*(v12 - 8) + 32))(v9, v10, v12);
      goto LABEL_22;
    case 1u:
      v20 = sub_1DD0DC76C();
      (*(*(v20 - 8) + 32))(v9, v10, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v9[*(v21 + 48)] = *&v10[*(v21 + 48)];
      goto LABEL_22;
    case 4u:
      v23 = sub_1DD0DB1EC();
      (*(*(v23 - 8) + 32))(v9, v10, v23);
      goto LABEL_22;
    case 6u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 32))(v9, v10, v24);
      v25 = type metadata accessor for USOParse(0);
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v26], &v10[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 32))(&v9[v26], &v10[v26], v27);
        __swift_storeEnumTagSinglePayload(&v9[v26], 0, 1, v27);
      }

      *&v9[v25[6]] = *&v10[v25[6]];
      v41 = v25[7];
      v42 = &v9[v41];
      v43 = &v10[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      goto LABEL_22;
    case 7u:
      v29 = sub_1DD0DB4BC();
      (*(*(v29 - 8) + 32))(v9, v10, v29);
      v30 = type metadata accessor for USOParse(0);
      v31 = v30[5];
      v32 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v10[v31], 1, v32))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v9[v31], &v10[v31], *(*(v33 - 8) + 64));
      }

      else
      {
        (*(*(v32 - 8) + 32))(&v9[v31], &v10[v31], v32);
        __swift_storeEnumTagSinglePayload(&v9[v31], 0, 1, v32);
      }

      *&v9[v30[6]] = *&v10[v30[6]];
      v44 = v30[7];
      v45 = &v9[v44];
      v46 = &v10[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse(0);
      *&v9[v47[5]] = *&v10[v47[5]];
      *&v9[v47[6]] = *&v10[v47[6]];
      *&v9[v47[7]] = *&v10[v47[7]];
      goto LABEL_22;
    case 8u:
      v13 = sub_1DD0DD12C();
      (*(*(v13 - 8) + 32))(v9, v10, v13);
      v14 = type metadata accessor for NLRouterParse(0);
      *&v9[*(v14 + 20)] = *&v10[*(v14 + 20)];
      v59 = v14;
      v15 = *(v14 + 24);
      v16 = &v9[v15];
      v17 = &v10[v15];
      v18 = type metadata accessor for USOParse(0);
      if (__swift_getEnumTagSinglePayload(v17, 1, v18))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v16, v17, *(*(v19 - 8) + 64));
      }

      else
      {
        v34 = sub_1DD0DB4BC();
        v58 = v16;
        (*(*(v34 - 8) + 32))(v16, v17, v34);
        v35 = v18[5];
        v36 = sub_1DD0DB3EC();
        v57 = v35;
        v37 = &v17[v35];
        v38 = v36;
        if (__swift_getEnumTagSinglePayload(v37, 1, v36))
        {
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          v40 = v58;
          memcpy(&v58[v57], &v17[v57], *(*(v39 - 8) + 64));
        }

        else
        {
          v56 = v38;
          (*(*(v38 - 8) + 32))(&v58[v57], &v17[v57], v38);
          v40 = v58;
          __swift_storeEnumTagSinglePayload(&v58[v57], 0, 1, v56);
        }

        *(v40 + v18[6]) = *&v17[v18[6]];
        v48 = v18[7];
        v49 = v40 + v48;
        v50 = &v17[v48];
        *(v49 + 4) = v50[4];
        *v49 = *v50;
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v18);
      }

      *&v9[*(v59 + 28)] = *&v10[*(v59 + 28)];
      goto LABEL_22;
    case 9u:
      v22 = sub_1DD0DD08C();
      (*(*(v22 - 8) + 32))(v9, v10, v22);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v9, v10, *(*(v11 - 8) + 64));
      break;
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v51 = v7[7];
  v52 = a1 + v51;
  v53 = a2 + v51;
  v54 = *(v53 + 16);
  *v52 = *v53;
  *(v52 + 16) = v54;
  *(v52 + 32) = *(v53 + 32);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for ExecuteOnRemotePayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for Input(0);
  v8 = v7;
  if (a1 != a2)
  {
    v9 = *(v7 + 20);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    sub_1DCD136A8(a1 + v9, type metadata accessor for Parse);
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_23;
      case 1u:
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 32))(v10, v11, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v22 + 48)] = *&v11[*(v22 + 48)];
        goto LABEL_23;
      case 4u:
        v24 = sub_1DD0DB1EC();
        (*(*(v24 - 8) + 32))(v10, v11, v24);
        goto LABEL_23;
      case 6u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
        v26 = type metadata accessor for USOParse(0);
        v27 = v26[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v27], &v11[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&v10[v27], &v11[v27], v28);
          __swift_storeEnumTagSinglePayload(&v10[v27], 0, 1, v28);
        }

        *&v10[v26[6]] = *&v11[v26[6]];
        v42 = v26[7];
        v43 = &v10[v42];
        v44 = &v11[v42];
        v43[4] = v44[4];
        *v43 = *v44;
        goto LABEL_23;
      case 7u:
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v10, v11, v30);
        v31 = type metadata accessor for USOParse(0);
        v32 = v31[5];
        v33 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v32], 1, v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v32], &v11[v32], *(*(v34 - 8) + 64));
        }

        else
        {
          (*(*(v33 - 8) + 32))(&v10[v32], &v11[v32], v33);
          __swift_storeEnumTagSinglePayload(&v10[v32], 0, 1, v33);
        }

        *&v10[v31[6]] = *&v11[v31[6]];
        v45 = v31[7];
        v46 = &v10[v45];
        v47 = &v11[v45];
        v46[4] = v47[4];
        *v46 = *v47;
        v48 = type metadata accessor for LinkParse(0);
        *&v10[v48[5]] = *&v11[v48[5]];
        *&v10[v48[6]] = *&v11[v48[6]];
        *&v10[v48[7]] = *&v11[v48[7]];
        goto LABEL_23;
      case 8u:
        v14 = sub_1DD0DD12C();
        (*(*(v14 - 8) + 32))(v10, v11, v14);
        v15 = type metadata accessor for NLRouterParse(0);
        *&v10[*(v15 + 20)] = *&v11[*(v15 + 20)];
        v66 = v15;
        v16 = *(v15 + 24);
        v17 = &v10[v16];
        v18 = &v11[v16];
        v19 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v18, 1, v19))
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v17, v18, *(*(v20 - 8) + 64));
        }

        else
        {
          v35 = sub_1DD0DB4BC();
          v65 = v17;
          (*(*(v35 - 8) + 32))(v17, v18, v35);
          v36 = v19[5];
          v37 = sub_1DD0DB3EC();
          v64 = v36;
          v38 = &v18[v36];
          v39 = v37;
          if (__swift_getEnumTagSinglePayload(v38, 1, v37))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v41 = v65;
            memcpy(&v65[v64], &v18[v64], *(*(v40 - 8) + 64));
          }

          else
          {
            v63 = v39;
            (*(*(v39 - 8) + 32))(&v65[v64], &v18[v64], v39);
            v41 = v65;
            __swift_storeEnumTagSinglePayload(&v65[v64], 0, 1, v63);
          }

          *(v41 + v19[6]) = *&v18[v19[6]];
          v49 = v19[7];
          v50 = v41 + v49;
          v51 = &v18[v49];
          *(v50 + 4) = v51[4];
          *v50 = *v51;
          __swift_storeEnumTagSinglePayload(v41, 0, 1, v19);
        }

        *&v10[*(v66 + 28)] = *&v11[*(v66 + 28)];
        goto LABEL_23;
      case 9u:
        v23 = sub_1DD0DD08C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }
  }

  *(a1 + v8[6]) = *(a2 + v8[6]);

  v52 = v8[7];
  v53 = a1 + v52;
  v54 = a2 + v52;
  if (*(a1 + v52 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  v55 = *(v54 + 16);
  *v53 = *v54;
  *(v53 + 16) = v55;
  *(v53 + 32) = *(v54 + 32);
  *(a1 + v8[8]) = *(a2 + v8[8]);
  v56 = *(a3 + 20);
  v57 = (a1 + v56);
  v58 = (a2 + v56);
  v59 = *(a1 + v56 + 8);
  if (v59 >> 60 != 15)
  {
    v60 = v58[1];
    if (v60 >> 60 != 15)
    {
      v61 = *v57;
      *v57 = *v58;
      v57[1] = v60;
      sub_1DCB21A14(v61, v59);
      return a1;
    }

    sub_1DCCFBA6C(v57);
  }

  *v57 = *v58;
  return a1;
}

uint64_t sub_1DCD145F0(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExecuteOnRemotePayload.ExecuteOnRemotePayloadError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ExecuteOnRemotePayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD14810()
{
  result = qword_1ECCA4950;
  if (!qword_1ECCA4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4950);
  }

  return result;
}

unint64_t sub_1DCD14868()
{
  result = qword_1ECCA4958;
  if (!qword_1ECCA4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4958);
  }

  return result;
}

unint64_t sub_1DCD148C0()
{
  result = qword_1ECCA4960;
  if (!qword_1ECCA4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4960);
  }

  return result;
}

uint64_t sub_1DCD14914(char a1)
{
  sub_1DD0B3E1C();
  OUTLINED_FUNCTION_1_50();
  return OUTLINED_FUNCTION_3_53();
}

uint64_t sub_1DCD149A8(char a1)
{
  sub_1DD0B3E1C();
  OUTLINED_FUNCTION_1_50();
  return OUTLINED_FUNCTION_3_53();
}

uint64_t sub_1DCD14A38(char a1)
{
  sub_1DD0B3E1C();
  v2 = v1;

  return v2;
}

uint64_t sub_1DCD14AE4(char a1)
{
  sub_1DD0B3E1C();
  OUTLINED_FUNCTION_1_50();
  return OUTLINED_FUNCTION_3_53();
}

id sub_1DCD14BB4(void *a1)
{
  v3 = sub_1DCC69D70();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_1DCD15A7C();
    OUTLINED_FUNCTION_33_4();

    v7 = OUTLINED_FUNCTION_17_1();
    if (!sub_1DCD15968(v7, v8))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v9 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v9, qword_1EDE57E00);
      OUTLINED_FUNCTION_33_4();

      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v39 = v13;
        *v12 = 136315138;
        v14 = OUTLINED_FUNCTION_17_1();
        *(v12 + 4) = sub_1DCB10E9C(v14, v15, v16);
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v17, v18, "Could not load bundle by identifier: '%s'");
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v1 = 2;
LABEL_21:
      sub_1DCD15AC0();
      swift_allocError();
      *v38 = v5;
      *(v38 + 8) = v6;
      *(v38 + 16) = v1;
      swift_willThrow();
      return v1;
    }

    goto LABEL_10;
  }

  v19 = sub_1DCC69D70();
  if (v20)
  {
    v5 = v19;
    v6 = v20;
    sub_1DCD15A7C();
    OUTLINED_FUNCTION_33_4();

    v21 = OUTLINED_FUNCTION_17_1();
    if (!sub_1DCD158F4(v21, v22))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v28 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v28, qword_1EDE57E00);
      OUTLINED_FUNCTION_33_4();

      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136315138;
        v33 = OUTLINED_FUNCTION_17_1();
        *(v31 + 4) = sub_1DCB10E9C(v33, v34, v35);
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v36, v37, "Could not load bundle by libraryPath: '%s'");
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v1 = 1;
      goto LABEL_21;
    }

LABEL_10:
    OUTLINED_FUNCTION_33_4();

    return v1;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v23 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v23, qword_1EDE57E00);
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_1DCB10E9C(0xD000000000000010, 0x80000001DD1142D0, &v39);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1DCB10E9C(0x507972617262696CLL, 0xEB00000000687461, &v39);
    _os_log_impl(&dword_1DCAFC000, v24, v25, "Neither %s nor %s are specified. Using default Bundle.", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return a1;
}

uint64_t sub_1DCD14F98(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD14FBC, 0, 0);
}

uint64_t sub_1DCD14FBC()
{
  v1 = *(v0 + 128);
  type metadata accessor for ParameterWrapper();
  *(swift_initStackObject() + 16) = v1;

  sub_1DCD1510C();
  v2 = *(v0 + 120);
  swift_setDeallocating();

  v8 = *(v0 + 40);
  v3 = *(v0 + 40);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 80) = v8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 56));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v3);
  sub_1DCB17CA0(v0 + 56, v2);
  *(v2 + 40) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

void sub_1DCD1510C()
{
  v2 = sub_1DCD14A38(0);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    sub_1DCD14A38(1);
    v6 = sub_1DCD14BB4(*(v0 + 32));
    if (![v6 load])
    {

      sub_1DD0DEC1C();

      *&v36 = 0xD000000000000014;
      *(&v36 + 1) = 0x80000001DD11A070;
      v13 = [v6 description];
LABEL_22:
      v24 = v13;
      v25 = v6;
LABEL_23:
      v26 = v24;
      v27 = sub_1DD0DDFBC();
      v29 = v28;

      MEMORY[0x1E12A6780](v27, v29);

      v30 = v36;
      sub_1DCD158A0();
      swift_allocError();
      *v31 = v30;
      swift_willThrow();

      return;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);

    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();

    v40 = v6;
    if (os_log_type_enabled(v9, v10))
    {
      v35 = v9;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v36 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DCB10E9C(v4, v5, &v36);
      _os_log_impl(&dword_1DCAFC000, v35, v10, "Attempting to load %s using Bundle", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v6 = v40;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    if (sub_1DCD159CC(v6))
    {
      sub_1DCB90D40();

      if (*(&v37 + 1))
      {
        if (swift_dynamicCast())
        {
          v34 = v39;
          v36 = v39;

          MEMORY[0x1E12A6780](46, 0xE100000000000000);
          MEMORY[0x1E12A6780](v4, v5);
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_33_4();

          v14 = NSClassFromString(&v36);

          if (v14)
          {
            ObjCClassMetadata = swift_getObjCClassMetadata();
            v16 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for AuthoredValueProvidingFlowBuilder);
            if (v16)
            {
              v18 = v16;
              v19 = v17;

              v20 = *(v19 + 8);
              *(&v37 + 1) = v18;
              v38 = v19;
              __swift_allocate_boxed_opaque_existential_1Tm(&v36);
              v20(v18, v19);
              v21 = sub_1DCC6A48C(0xD000000000000011, 0x80000001DD11A100, MEMORY[0x1E69E7CC8]);
              sub_1DCDAC354(v21);
            }
          }

          *&v36 = 0;
          *(&v36 + 1) = 0xE000000000000000;
          sub_1DD0DEC1C();

          OUTLINED_FUNCTION_1_0();
          *&v36 = v33;
          *(&v36 + 1) = v32;
          MEMORY[0x1E12A6780](v34, *(&v34 + 1));

          MEMORY[0x1E12A6780](46, 0xE100000000000000);
          MEMORY[0x1E12A6780](v4, v5);

          MEMORY[0x1E12A6780](0x7562206D6F726620, 0xED000020656C646ELL);
          v25 = v40;
          v24 = [v40 description];
          goto LABEL_23;
        }

        v6 = v40;
        goto LABEL_21;
      }
    }

    else
    {

      v36 = 0u;
      v37 = 0u;
    }

    v6 = v40;
    sub_1DCC8BC14(&v36);
LABEL_21:
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_1_0();
    *&v36 = v23 + 25;
    *(&v36 + 1) = v22;
    v13 = [v6 description];
    goto LABEL_22;
  }
}

unint64_t sub_1DCD156DC(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1DCD15774()
{

  return v0;
}

uint64_t sub_1DCD1579C()
{
  sub_1DCD15774();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD157F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCD14F98(a1, a2);
}

unint64_t sub_1DCD158A0()
{
  result = qword_1ECCA4968;
  if (!qword_1ECCA4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4968);
  }

  return result;
}

id sub_1DCD158F4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD0DDF8C();

  v4 = [v2 initWithPath_];

  return v4;
}

id sub_1DCD15968(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DDF8C();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

uint64_t sub_1DCD159CC(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DCD15A7C()
{
  result = qword_1EDE460A8;
  if (!qword_1EDE460A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460A8);
  }

  return result;
}

unint64_t sub_1DCD15AC0()
{
  result = qword_1ECCA4970;
  if (!qword_1ECCA4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlagDefinitions.PersonalDomains(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FeatureFlagDefinitions.Core(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCD15E3C()
{
  result = qword_1ECCA4978;
  if (!qword_1ECCA4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4978);
  }

  return result;
}

unint64_t sub_1DCD15E94()
{
  result = qword_1ECCA4980;
  if (!qword_1ECCA4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4980);
  }

  return result;
}

uint64_t sub_1DCD15EF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1DD0DB0FC();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  if (AFIsInternalInstall())
  {
    v33[3] = &type metadata for FeatureFlagDefinitions.PersonalDomains;
    v33[4] = sub_1DCBF3A2C();
    LOBYTE(v33[0]) = 1;
    v11 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (v11)
    {
      v12 = [objc_opt_self() mainBundle];
      v13 = sub_1DCD1674C(v12);
      if (!v14 || (v33[0] = v13, v33[1] = v14, sub_1DCB1C4D8(), v15 = sub_1DD0DEA0C(), , a4 = sub_1DCB1D5C0(v15), v17 = v16, , !v17))
      {

        a4 = 0;
        v17 = 0xE000000000000000;
      }

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = a4 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        sub_1DD0DCA6C();
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v29 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v29, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_5(v30))
      {
        goto LABEL_24;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "no domain name found. Skipping AutoBugCapture";
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_5(v26))
      {
        goto LABEL_24;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "AutoBugCapture is disabled";
    }

    _os_log_impl(&dword_1DCAFC000, v25, a4, v28, v27, 2u);
    OUTLINED_FUNCTION_80();
LABEL_24:

    return 0;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57E00);

  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = a1;
    v23 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_1DCB10E9C(v22, a2, v33);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1DCB10E9C(a3, a4, v33);
    _os_log_impl(&dword_1DCAFC000, v20, v21, "not an internal build. Skipping AutoBugCapture for %s/%s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v31 = *(v10 + 16);

  return v31;
}

uint64_t sub_1DCD16708(char a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(a2 + 16) = a1;
  return result;
}

uint64_t sub_1DCD1674C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

void Flow.deferToExecuteAsync(_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v39 = v2;
  v40 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v36 - v16;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v18 = sub_1DD0DE02C();
  v20 = v19;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v21 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v21, qword_1EDE57E00);

  v22 = sub_1DD0DD8EC();
  v23 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36 = v1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v37 = v7;
    v27 = v26;
    DynamicType = v26;
    *v25 = 136315138;
    v28 = sub_1DCB10E9C(v18, v20, &DynamicType);

    *(v25 + 4) = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v7 = v37;
    OUTLINED_FUNCTION_80();
    v1 = v36;
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v29 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v17, v30, v31, v29);
  (*(v9 + 16))(v38, v1, v5);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v33 = v39;
  v34 = v40;
  v32[4] = v5;
  v32[5] = v34;
  v32[6] = v33;
  v32[7] = v7;
  OUTLINED_FUNCTION_152_0();
  v35();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD16AB8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_47(v1);

  return Flow.onAsync(input:)(v3, v4, v5);
}

void Flow.flexibleExecutionSupport.getter(uint64_t a1@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Default implemenation returning nil for flexibleExecutionSupport", v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
}

uint64_t sub_1DCD16C18()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2510);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD16CAC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E21F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD16D3C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E1F50);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

double static ExecuteResponse.unhandled(reason:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ExecuteResponse(0);
  v7 = *(v6 + 36);
  v8 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_7_5(a2 + v7, v9, v10, v8);
  *a2 = 3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  OUTLINED_FUNCTION_26_15((a2 + *(v6 + 40)));

  return sub_1DCD1B9B8(v3, v4, v5);
}

uint64_t sub_1DCD16E6C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_116();

  return Flow.execute()(v3, v4, v5);
}

uint64_t sub_1DCD16F18()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 24) = swift_task_alloc();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  type metadata accessor for ExecuteResponse(0);
  *v1 = v0;
  v1[1] = sub_1DCBD4958;
  OUTLINED_FUNCTION_30_18();

  return MEMORY[0x1EEE6DDE0](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t Flow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD16FF0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  type metadata accessor for ExecuteResponse(0);
  *v3 = v0;
  v3[1] = sub_1DCB410E0;
  OUTLINED_FUNCTION_30_18();

  return MEMORY[0x1EEE6DDE0](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DCD170C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB47430;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_1DCD1716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return Flow.execute()(a1, a2, a3);
}

void sub_1DCD1721C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v26 - v6;
  v27 = &type metadata for SentinalFlow;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F78, &qword_1DD0E2C08);
  v8 = sub_1DD0DE02C();
  v10 = v9;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  v12 = __swift_project_value_buffer(v11, qword_1EDE57E00);

  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    v17 = sub_1DCB10E9C(v8, v10, &v27);

    *(v15 + 4) = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A8390](v16, -1, -1);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  else
  {
  }

  v18 = *(v11 - 8);
  (*(v18 + 16))(v7, v12, v11);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  sub_1DCB099BC(v7, v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    sub_1DCB0E9D8(v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315650;
      v23 = sub_1DD0DEC3C();
      v25 = sub_1DCB10E9C(v23, v24, &v27);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      *(v21 + 14) = 191;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD11A420, &v27);
      _os_log_impl(&dword_1DCAFC000, v19, v20, "FatalError at %s:%lu - %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v22, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    (*(v18 + 8))(v4, v11);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000022, 0x80000001DD11A420);
}

SiriKitFlow::FlexibleExecutionSupportOptions sub_1DCD1768C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = FlexibleExecutionSupportOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCD176CC@<X0>(uint64_t *a1@<X8>)
{
  result = FlexibleExecutionSupportOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Input.init(parse:alternatives:continuationState:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_9();
  v7 = *v6;
  v8 = v3 + *(OUTLINED_FUNCTION_92_4() + 28);
  *(v8 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v8);
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(v2, v3 + v9);
  *(v3 + *(v4 + 24)) = a2;
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_5_42();
  result = sub_1DCB28538();
  *(v3 + *(v4 + 32)) = v7;
  return result;
}

double Input.alternatives.getter()
{
  type metadata accessor for Input(0);

  return result;
}

uint64_t Input.appResolutionState.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for Input(v0);
  v2 = OUTLINED_FUNCTION_59_2(*(v1 + 28));
  return sub_1DCB099BC(v2, v3, v4, v5);
}

uint64_t Input.appResolutionState.setter()
{
  v2 = OUTLINED_FUNCTION_70();
  v3 = v1 + *(type metadata accessor for Input(v2) + 28);

  return sub_1DCD1B9F4(v0, v3);
}

void (*Input.appResolutionState.modify())()
{
  v0 = OUTLINED_FUNCTION_70();
  type metadata accessor for Input(v0);
  return nullsub_1;
}

double Input.withReformedParse(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(a1, a2 + v6);
  v7 = *(v2 + v3[6]);
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_2();
  (*(v8 + 16))(a2, v2);
  v9 = a2 + v3[7];
  *(v9 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v9);
  *(a2 + v3[6]) = v7;
  *(a2 + v3[8]) = 0;

  return result;
}

uint64_t Input.continuationState.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  result = type metadata accessor for Input(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t Input.continuationState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Input(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void (*Input.continuationState.modify())()
{
  v0 = OUTLINED_FUNCTION_70();
  type metadata accessor for Input(v0);
  return nullsub_1;
}

unint64_t sub_1DCD179C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DCD17A38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCD179C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DCD17A68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DCB2BD38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DCD17A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD179C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD17AC8(uint64_t a1)
{
  v2 = sub_1DCB34278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17B04(uint64_t a1)
{
  v2 = sub_1DCB34278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LoadedFlowInfo.parse.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  type metadata accessor for LoadedFlowInfo(v0);
  OUTLINED_FUNCTION_1_51();
  v2 = OUTLINED_FUNCTION_59_2(v1);
  return sub_1DCB246E8(v2, v3);
}

double LoadedFlowInfo.activeTasks.getter()
{
  type metadata accessor for LoadedFlowInfo(0);

  return result;
}

uint64_t LoadedFlowInfo.fromBundle.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for LoadedFlowInfo(v0);
  v2 = OUTLINED_FUNCTION_59_2(*(v1 + 32));
  return sub_1DCB17D04(v2, v3);
}

void LoadedFlowInfo.init(flow:parse:activeTasks:fromBundle:)(uint64_t a1@<X0>, void *a5@<X8>)
{
  *a5 = a1;
  a5[4] = type metadata accessor for FlowToActingFlowAdapter(0);
  a5[5] = &off_1EECFDA20;
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t LoadedFlowInfo.init<A>(actingFlow:parse:activeTasks:fromBundle:)()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for AnyFlow();
  swift_allocObject();
  *v9 = sub_1DCBD23E0();
  v9[4] = v3;
  v9[5] = v1;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v9 + 1);
  OUTLINED_FUNCTION_112();
  (*(v10 + 32))();
  v11 = type metadata accessor for LoadedFlowInfo(0);
  sub_1DCB541FC(v7, v9 + *(v11 + 24));
  *(v9 + *(v11 + 28)) = v5;
  OUTLINED_FUNCTION_15_5();

  return sub_1DCAFF9E8(v12, v13);
}

uint64_t sub_1DCD17D98(uint64_t a1)
{
  v2 = sub_1DCB347BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17DD4(uint64_t a1)
{
  v2 = sub_1DCB347BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD17E10(uint64_t a1)
{
  v2 = sub_1DCD1BA84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17E4C(uint64_t a1)
{
  v2 = sub_1DCD1BA84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD17E88(uint64_t a1)
{
  v2 = sub_1DCB34810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD17EC4(uint64_t a1)
{
  v2 = sub_1DCB34810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InputContinuationState.hashValue.getter()
{
  OUTLINED_FUNCTION_85_4();
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_91_2();
  return sub_1DD0DF20C();
}

uint64_t ExecuteResponseType.hashValue.getter()
{
  OUTLINED_FUNCTION_85_4();
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_91_2();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD1800C()
{
  OUTLINED_FUNCTION_85_4();
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_91_2();
  return sub_1DD0DF20C();
}

double SiriXRedirectContext.reason.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1DCD1B9D0(v2, v3, v4);
}

void SiriXRedirectContext.init(_:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_61_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  swift_getKeyPath();
  sub_1DD0DCFEC();
}

BOOL static SiriXRedirectContext.RedirectReason.NoMatchingTool.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_1DCD1845C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7553686372616573 && a2 == 0xEF64656465656363)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD18504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD1845C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD18530(uint64_t a1)
{
  v2 = sub_1DCD1BAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD1856C(uint64_t a1)
{
  v2 = sub_1DCD1BAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49E0, &qword_1DD0EDE98);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_57_1(v1, v1[3]);
  sub_1DCD1BAD8();
  OUTLINED_FUNCTION_79_5();
  sub_1DD0DF24C();
  sub_1DD0DEF9C();
  v4 = OUTLINED_FUNCTION_55_0();
  v5(v4);
  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.RedirectReason.NoMatchingTool.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49F0, &qword_1DD0EDEA0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_15_3();
  v7 = OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_57_1(v7, v8);
  v9 = sub_1DCD1BAD8();
  OUTLINED_FUNCTION_65_4(&type metadata for SiriXRedirectContext.RedirectReason.NoMatchingTool.CodingKeys, v10, v9);
  if (!v0)
  {
    v11 = sub_1DD0DEEEC();
    v12 = OUTLINED_FUNCTION_84_5();
    v13(v12);
    *v4 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_19_19();
}

uint64_t static SiriXRedirectContext.RedirectReason.UnableToHandleRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1DD0DF0AC() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DCD188D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DD11A3E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD18970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD188D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD1899C(uint64_t a1)
{
  v2 = sub_1DCD1BB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD189D8(uint64_t a1)
{
  v2 = sub_1DCD1BB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49F8, &qword_1DD0EDEC8);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCD1BB2C();
  OUTLINED_FUNCTION_79_5();
  sub_1DD0DF24C();
  OUTLINED_FUNCTION_81_3();
  sub_1DD0DEF8C();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.RedirectReason.UnableToHandleRequest.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A08, &qword_1DD0EDED0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_40_3();
  v7 = OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_57_1(v7, v8);
  sub_1DCD1BB2C();
  OUTLINED_FUNCTION_79_5();
  sub_1DD0DF23C();
  if (!v0)
  {
    v9 = sub_1DD0DEEDC();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_55_0();
    v13(v12);
    *v4 = v9;
    v4[1] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_19_19();
}

BOOL static SiriXRedirectContext.RedirectReason.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        if (v3)
        {
          if (v6)
          {
            if (v2 != v5 || v3 != v6)
            {
              OUTLINED_FUNCTION_20();
              v9 = sub_1DD0DF0AC();
              v10 = 1;
              v11 = OUTLINED_FUNCTION_39_14();
              sub_1DCD1B9D0(v11, v12, v13);
              v14 = OUTLINED_FUNCTION_20_16();
              sub_1DCD1B9D0(v14, v15, v16);
              v17 = OUTLINED_FUNCTION_20_16();
              sub_1DCD1BB80(v17, v18, v19);
              v20 = OUTLINED_FUNCTION_39_14();
              sub_1DCD1BB80(v20, v21, v22);
              if (v9)
              {
                return v10;
              }

              return 0;
            }

            v10 = 1;
            v53 = OUTLINED_FUNCTION_20_16();
            sub_1DCD1B9D0(v53, v54, v55);
            v56 = OUTLINED_FUNCTION_20_16();
            sub_1DCD1B9D0(v56, v57, v58);
            v59 = OUTLINED_FUNCTION_20_16();
            sub_1DCD1BB80(v59, v60, v61);
            v29 = OUTLINED_FUNCTION_20();
            goto LABEL_44;
          }
        }

        else if (!v6)
        {
          v10 = 1;
          sub_1DCD1B9D0(*a2, 0, 1);
          sub_1DCD1B9D0(v2, 0, 1);
          sub_1DCD1BB80(v2, 0, 1);
          v29 = v5;
          v30 = 0;
LABEL_44:
          v31 = 1;
          goto LABEL_45;
        }

        v42 = OUTLINED_FUNCTION_39_14();
        sub_1DCD1B9D0(v42, v43, v44);
        v45 = OUTLINED_FUNCTION_20_16();
        sub_1DCD1B9D0(v45, v46, v47);
        v48 = OUTLINED_FUNCTION_20_16();
        sub_1DCD1BB80(v48, v49, v50);
        v38 = OUTLINED_FUNCTION_39_14();
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && v6 == 0)
      {
        v27 = OUTLINED_FUNCTION_20();
        sub_1DCD1BB80(v27, v28, 2);
        v10 = 1;
        v29 = 1;
        v30 = 0;
        v31 = 2;
LABEL_45:
        sub_1DCD1BB80(v29, v30, v31);
        return v10;
      }

      goto LABEL_31;
    }

    if (v7 != 2 || (v6 | v5) != 0)
    {
LABEL_31:
      OUTLINED_FUNCTION_46_2();
      sub_1DCD1B9D0(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_20();
      sub_1DCD1BB80(v36, v37, v4);
      OUTLINED_FUNCTION_46_2();
LABEL_32:
      sub_1DCD1BB80(v38, v39, v40);
      return 0;
    }

    v51 = OUTLINED_FUNCTION_20();
    sub_1DCD1BB80(v51, v52, 2);
    sub_1DCD1BB80(0, 0, 2);
    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_31;
  }

  v23 = OUTLINED_FUNCTION_20();
  sub_1DCD1BB80(v23, v24, 0);
  sub_1DCD1BB80(v5, v6, 0);
  if (v2 != 2)
  {
    return v5 != 2 && ((v5 ^ v2) & 1) == 0;
  }

  return v5 == 2;
}

uint64_t sub_1DCD18EB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F54656C62616E75 && a2 == 0xEE00656C646E6148;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7245776F6C466669 && a2 == 0xEB00000000726F72;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001DD11A400 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DCD19028(char a1)
{
  result = 0x69686374614D6F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F54656C62616E75;
      break;
    case 2:
      result = 0x7245776F6C466669;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCD190DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD19154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD18EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD1917C(uint64_t a1)
{
  v2 = sub_1DCD1BB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD191B8(uint64_t a1)
{
  v2 = sub_1DCD1BB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD191F4(uint64_t a1)
{
  v2 = sub_1DCD1BC40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD19230(uint64_t a1)
{
  v2 = sub_1DCD1BC40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD19270(uint64_t a1)
{
  v2 = sub_1DCD1BD3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD192AC(uint64_t a1)
{
  v2 = sub_1DCD1BD3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD192E8(uint64_t a1)
{
  v2 = sub_1DCD1BC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD19324(uint64_t a1)
{
  v2 = sub_1DCD1BC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD19360(uint64_t a1)
{
  v2 = sub_1DCD1BBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD1939C(uint64_t a1)
{
  v2 = sub_1DCD1BBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.RedirectReason.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A10, &qword_1DD0EDED8);
  OUTLINED_FUNCTION_9();
  v43 = v5;
  v44 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_34_0();
  v42 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A18, &qword_1DD0EDEE0);
  OUTLINED_FUNCTION_9();
  v40 = v10;
  v41 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_34_0();
  v39 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A20, &qword_1DD0EDEE8);
  OUTLINED_FUNCTION_9();
  v46 = v15;
  v47 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A28, &qword_1DD0EDEF0);
  OUTLINED_FUNCTION_9();
  v45 = v21;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A30, &qword_1DD0EDEF8);
  OUTLINED_FUNCTION_9();
  v49 = v25;
  v50 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v38 - v28;
  v30 = *v0;
  *&v48 = v0[1];
  *(&v48 + 1) = v30;
  v31 = *(v0 + 16);
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCD1BB98();
  sub_1DD0DF24C();
  if (v31)
  {
    if (v31 == 1)
    {
      LOBYTE(v51[0]) = 1;
      sub_1DCD1BC94();
      OUTLINED_FUNCTION_49_8(&type metadata for SiriXRedirectContext.RedirectReason.UnableToHandleCodingKeys, v51);
      v51[0] = *(&v48 + 1);
      v51[1] = v48;
      sub_1DCD1BCE8();
      v32 = v47;
      sub_1DD0DEFFC();
      (*(v46 + 8))(v19, v32);
      (*(v49 + 8))(v29, v31);
    }

    else
    {
      v34 = (v49 + 8);
      if (v48 == 0)
      {
        LOBYTE(v51[0]) = 2;
        sub_1DCD1BC40();
        v35 = v39;
        OUTLINED_FUNCTION_49_8(&type metadata for SiriXRedirectContext.RedirectReason.IfFlowErrorCodingKeys, v51);
        v37 = v40;
        v36 = v41;
      }

      else
      {
        LOBYTE(v51[0]) = 3;
        sub_1DCD1BBEC();
        v35 = v42;
        OUTLINED_FUNCTION_49_8(&type metadata for SiriXRedirectContext.RedirectReason.ValueSelectionRequiredCodingKeys, v51);
        v37 = v43;
        v36 = v44;
      }

      (*(v37 + 8))(v35, v36);
      (*v34)(v29, v31);
    }
  }

  else
  {
    LOBYTE(v51[0]) = 0;
    sub_1DCD1BD3C();
    v33 = v50;
    sub_1DD0DEF7C();
    LOBYTE(v51[0]) = BYTE8(v48);
    sub_1DCD1BD90();
    sub_1DD0DEFFC();
    (*(v45 + 8))(v1, v20);
    (*(v49 + 8))(v29, v33);
  }

  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.RedirectReason.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v4 = v3;
  v79 = v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A70, &qword_1DD0EDF00);
  OUTLINED_FUNCTION_9();
  v76 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_34_0();
  v78 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A78, &qword_1DD0EDF08);
  OUTLINED_FUNCTION_9();
  v73 = v11;
  v74 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_34_0();
  v77 = v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A80, &qword_1DD0EDF10);
  OUTLINED_FUNCTION_9();
  v80 = v15;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_15_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A88, &qword_1DD0EDF18);
  OUTLINED_FUNCTION_9();
  v71 = v19;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_72();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4A90, &qword_1DD0EDF20);
  OUTLINED_FUNCTION_9();
  v24 = v23;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v67 - v27;
  v29 = v4[3];
  v81 = v4;
  OUTLINED_FUNCTION_57_1(v4, v29);
  sub_1DCD1BB98();
  sub_1DD0DF23C();
  if (v0)
  {
    goto LABEL_9;
  }

  v69 = v1;
  v70 = v2;
  v67[1] = v18;
  v30 = v28;
  v31 = sub_1DD0DEF5C();
  sub_1DCB547F8(v31, 0);
  if (v34 == v35 >> 1)
  {
LABEL_8:
    sub_1DD0DECAC();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v44 = &type metadata for SiriXRedirectContext.RedirectReason;
    v45 = sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0(v45);
    OUTLINED_FUNCTION_112();
    (*(v46 + 104))(v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v24 + 8))(v30, v22);
LABEL_9:
    v47 = v81;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_19_19();
    return;
  }

  v68 = v22;
  v67[0] = 0;
  if (v34 < (v35 >> 1))
  {
    v36 = *(v33 + v34);
    sub_1DCB54800(v34 + 1, v35 >> 1, v32, v33, v34, v35);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    v41 = v80;
    if (v38 == v40 >> 1)
    {
      v42 = v79;
      switch(v36)
      {
        case 1:
          LOBYTE(v82[0]) = 1;
          sub_1DCD1BC94();
          v56 = v70;
          OUTLINED_FUNCTION_34_18(&type metadata for SiriXRedirectContext.RedirectReason.UnableToHandleCodingKeys, v82);
          sub_1DCD1BDE4();
          v57 = v75;
          sub_1DD0DEF4C();
          swift_unknownObjectRelease();
          (*(v41 + 8))(v56, v57);
          v65 = OUTLINED_FUNCTION_21_16();
          v66(v65, v68);
          v64 = v82[0];
          v62 = v82[1];
          v63 = 1;
          v47 = v81;
          v42 = v79;
          goto LABEL_15;
        case 2:
          LOBYTE(v82[0]) = 2;
          sub_1DCD1BC40();
          v48 = v77;
          v49 = v68;
          OUTLINED_FUNCTION_34_18(&type metadata for SiriXRedirectContext.RedirectReason.IfFlowErrorCodingKeys, v82);
          swift_unknownObjectRelease();
          (*(v73 + 8))(v48, v74);
          v50 = OUTLINED_FUNCTION_21_16();
          v51(v50, v49);
          v64 = 0;
          v62 = 0;
          v63 = 2;
          goto LABEL_14;
        case 3:
          LOBYTE(v82[0]) = 3;
          sub_1DCD1BBEC();
          v52 = v78;
          v53 = v68;
          OUTLINED_FUNCTION_34_18(&type metadata for SiriXRedirectContext.RedirectReason.ValueSelectionRequiredCodingKeys, v82);
          swift_unknownObjectRelease();
          (*(v76 + 8))(v52, v72);
          v54 = OUTLINED_FUNCTION_21_16();
          v55(v54, v53);
          v62 = 0;
          v63 = 2;
          v64 = 1;
          goto LABEL_14;
        default:
          LOBYTE(v82[0]) = 0;
          sub_1DCD1BD3C();
          OUTLINED_FUNCTION_34_18(&type metadata for SiriXRedirectContext.RedirectReason.NoMatchingToolCodingKeys, v82);
          sub_1DCD1BE38();
          sub_1DD0DEF4C();
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_80_1();
          v59(v58);
          v60 = OUTLINED_FUNCTION_21_16();
          v61(v60, v68);
          v62 = 0;
          v63 = 0;
          v64 = LOBYTE(v82[0]);
LABEL_14:
          v47 = v81;
LABEL_15:
          *v42 = v64;
          *(v42 + 8) = v62;
          *(v42 + 16) = v63;
          break;
      }

      goto LABEL_10;
    }

    v22 = v68;
    goto LABEL_8;
  }

  __break(1u);
}

BOOL static SiriXRedirectContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v15[0] = *a1;
  v15[1] = v2;
  v16 = v5;
  v13[0] = v3;
  v13[1] = v4;
  v14 = v6;
  v7 = OUTLINED_FUNCTION_33_1();
  sub_1DCD1B9D0(v7, v8, v5);
  sub_1DCD1B9D0(v3, v4, v6);
  v9 = static SiriXRedirectContext.RedirectReason.== infix(_:_:)(v15, v13);
  sub_1DCD1BB80(v3, v4, v6);
  v10 = OUTLINED_FUNCTION_33_1();
  sub_1DCD1BB80(v10, v11, v5);
  return v9;
}

uint64_t sub_1DCD1A018(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD1A0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD1A018(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD1A0D0(uint64_t a1)
{
  v2 = sub_1DCD1BE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD1A10C(uint64_t a1)
{
  v2 = sub_1DCD1BE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXRedirectContext.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AA8, &qword_1DD0EDF28);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  v11 = *(v0 + 16);
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCD1B9D0(v9, v10, v11);
  sub_1DCD1BE8C();
  sub_1DD0DF24C();
  v14 = v9;
  v15 = v10;
  v16 = v11;
  sub_1DCD1BEE0();
  v12 = v13;
  sub_1DD0DEFFC();
  sub_1DCD1BB80(v14, v15, v16);
  (*(v4 + 8))(v8, v12);
  OUTLINED_FUNCTION_19_19();
}

void SiriXRedirectContext.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AC0, &qword_1DD0EDF30);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_15_3();
  v7 = OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_57_1(v7, v8);
  v9 = sub_1DCD1BE8C();
  OUTLINED_FUNCTION_65_4(&type metadata for SiriXRedirectContext.CodingKeys, v10, v9);
  if (!v0)
  {
    sub_1DCD1BF34();
    sub_1DD0DEF4C();
    v11 = OUTLINED_FUNCTION_84_5();
    v12(v11);
    *v4 = v13;
    *(v4 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_19_19();
}

uint64_t AnyChildCompletion.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_88_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_88_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  *(v2 + 16) = sub_1DCD1BF88;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t AnyChildCompletion.init(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_88_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  *(v1 + 16) = sub_1DCD2736C;
  *(v1 + 24) = v3;
  return v1;
}

double static ExecuteResponse.ongoing(retrigger:as:)()
{
  OUTLINED_FUNCTION_20_10();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_46_8();
  v7 = v6;
  v8 = type metadata accessor for ExecuteResponse(0);
  v9 = *(v8 + 36);
  v10 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_7_5(v7 + v9, v11, v12, v10);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v7 + 48) = -4;
  v13 = (v7 + *(v8 + 40));
  *v13 = v1;
  v13[1] = v0;
  v13[2] = v5;
  v13[3] = v3;

  OUTLINED_FUNCTION_15_5();

  return result;
}

void static ExecuteResponse.complete<A>(next:childCompletion:)()
{
  sub_1DCB3DF34();
}

{
  sub_1DCB817D8();
}

void sub_1DCD1A5F0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 32);
  v8 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_7_5(a3 + v4, v9, v10, v8);
  *a3 = a2;
  *(a3 + 8) = v7;
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_26_15((a3 + *(v3 + 40)));

  sub_1DD0DCF8C();
}

void sub_1DCD1A690()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  type metadata accessor for AnyChildCompletion();
  OUTLINED_FUNCTION_88_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_88_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v7;
  *(v14 + 16) = v3;
  *(v14 + 24) = v15;
  v16 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_7_5(v13 + v5, v17, v18, v16);
  *v13 = v1;
  *(v13 + 8) = v11;
  *(v13 + 16) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 24) = v14;
  *(v13 + 48) = -4;
  OUTLINED_FUNCTION_26_15((v13 + *(v3 + 40)));
  sub_1DD0DCF8C();
}

void static ExecuteResponse.replan<A>(next:childCompletion:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for AnyChildCompletion();
  OUTLINED_FUNCTION_88_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v6 + 16) = sub_1DCD2736C;
  *(v6 + 24) = v7;
  v8 = *(type metadata accessor for ExecuteResponse(0) + 36);
  v9 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_7_5(a3 + v8, v10, v11, v9);
  *a3 = 2;
  OUTLINED_FUNCTION_53_7();
  *(a3 + 24) = v6;
  OUTLINED_FUNCTION_10_32();
  sub_1DD0DCF8C();
}

double static ExecuteResponse.unhandled(reason:isComplete:)()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = type metadata accessor for ExecuteResponse(0);
  v9 = *(v8 + 36);
  v10 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_7_5(v3 + v9, v11, v12, v10);
  if (v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  *v3 = v13;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  OUTLINED_FUNCTION_26_15((v3 + *(v8 + 40)));
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_15_5();

  return sub_1DCD1B9B8(v14, v15, v16);
}

double static ExecuteResponse.redirect(nextPluginAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(v4 + 36);
  sub_1DCB246E8(a1, a2 + v5);
  v6 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(a2 + v5, 0, 1, v6);
  *a2 = 1;
  *(a2 + 8) = 0;
  OUTLINED_FUNCTION_63_6();
  return OUTLINED_FUNCTION_26_15((a2 + *(v4 + 40)));
}

uint64_t sub_1DCD1A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for ExecuteResponse(0);
  v11 = swift_task_alloc();
  v8[4] = v11;
  v14 = (*(a8 + 40) + **(a8 + 40));
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_1DCD1AB00;

  return v14(v11, a7, a8);
}

uint64_t sub_1DCD1AB00()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCD1ABEC, 0, 0);
}

uint64_t sub_1DCD1ABEC()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 16))(*(v0 + 32));
  sub_1DCB28538();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD1ACE4()
{
  v1 = sub_1DCB0DF6C(v0 + 32, v11);
  v9 = OUTLINED_FUNCTION_66_3(v1, v2, v3, v4, v5, v6, v7, v8, v11[0]);
  return OUTLINED_FUNCTION_87_4(v9);
}

uint64_t sub_1DCD1AEA0(uint64_t *a1, char a2)
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }

  return sub_1DCB4D4A0(*a1);
}

uint64_t sub_1DCD1AF20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_6(v1);

  return sub_1DCB71FBC(v3);
}

uint64_t sub_1DCD1AFC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCB4DF50(v3);
}

uint64_t sub_1DCD1B0C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD1B0D8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_76_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_75_4(v1);

  return sub_1DCB71FBC(v3);
}

void sub_1DCD1B160()
{
  OUTLINED_FUNCTION_60();
  type metadata accessor for AnyValueFlow(0, *(*v0 + 80), v1, v2);
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD1B2E4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }

  return a3(*a1);
}

void sub_1DCD1B354(uint64_t **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1DCD1B284(v2);
}

uint64_t sub_1DCD1B3DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB47430;

  return sub_1DCD1B0C4(a1);
}

uint64_t sub_1DCD1B4BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2508);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  v2[1] = sub_1DCB47430;
  v4 = OUTLINED_FUNCTION_57_2();

  return v6(v4);
}

uint64_t sub_1DCD1B550()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  OUTLINED_FUNCTION_32_2(&unk_1DD0EF910);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;

  return v7(v1);
}

uint64_t sub_1DCD1B5E8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_47(v1);

  return Flow.onAsync(input:)(v3, v4, v5);
}

uint64_t sub_1DCD1B674()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E2500);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD1B704()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E24F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD1B794()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E24F0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

uint64_t sub_1DCD1B824(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  OUTLINED_FUNCTION_77_3();
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v12[1] = sub_1DCB4AE1C;

  return sub_1DCD1A9A0(a1, v7, v8, v9, v10, v1 + v6, v3, v4);
}

uint64_t sub_1DCD1B928()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_12();
  OUTLINED_FUNCTION_32_2(&unk_1DD0E1F08);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_34(v1);

  return v4(v3);
}

double sub_1DCD1B9B8(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
    return sub_1DCD1B9D0(result, a2, a3 & 0x3F);
  }

  return v3;
}

double sub_1DCD1B9D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1DCD1B9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4988, &qword_1DD100F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCD1BA84()
{
  result = qword_1ECCA49C0;
  if (!qword_1ECCA49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA49C0);
  }

  return result;
}

unint64_t sub_1DCD1BAD8()
{
  result = qword_1ECCA49E8;
  if (!qword_1ECCA49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA49E8);
  }

  return result;
}

unint64_t sub_1DCD1BB2C()
{
  result = qword_1ECCA4A00;
  if (!qword_1ECCA4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A00);
  }

  return result;
}

uint64_t sub_1DCD1BB80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_1DCD1BB98()
{
  result = qword_1ECCA4A38;
  if (!qword_1ECCA4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A38);
  }

  return result;
}

unint64_t sub_1DCD1BBEC()
{
  result = qword_1ECCA4A40;
  if (!qword_1ECCA4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A40);
  }

  return result;
}

unint64_t sub_1DCD1BC40()
{
  result = qword_1ECCA4A48;
  if (!qword_1ECCA4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A48);
  }

  return result;
}

unint64_t sub_1DCD1BC94()
{
  result = qword_1ECCA4A50;
  if (!qword_1ECCA4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A50);
  }

  return result;
}

unint64_t sub_1DCD1BCE8()
{
  result = qword_1ECCA4A58;
  if (!qword_1ECCA4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A58);
  }

  return result;
}

unint64_t sub_1DCD1BD3C()
{
  result = qword_1ECCA4A60;
  if (!qword_1ECCA4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A60);
  }

  return result;
}

unint64_t sub_1DCD1BD90()
{
  result = qword_1ECCA4A68;
  if (!qword_1ECCA4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A68);
  }

  return result;
}

unint64_t sub_1DCD1BDE4()
{
  result = qword_1ECCA4A98;
  if (!qword_1ECCA4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4A98);
  }

  return result;
}

unint64_t sub_1DCD1BE38()
{
  result = qword_1ECCA4AA0;
  if (!qword_1ECCA4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AA0);
  }

  return result;
}

unint64_t sub_1DCD1BE8C()
{
  result = qword_1ECCA4AB0;
  if (!qword_1ECCA4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AB0);
  }

  return result;
}

unint64_t sub_1DCD1BEE0()
{
  result = qword_1ECCA4AB8;
  if (!qword_1ECCA4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AB8);
  }

  return result;
}

unint64_t sub_1DCD1BF34()
{
  result = qword_1ECCA4AC8;
  if (!qword_1ECCA4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AC8);
  }

  return result;
}

unint64_t sub_1DCD1C018()
{
  result = qword_1ECCA4AE8;
  if (!qword_1ECCA4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AE8);
  }

  return result;
}

unint64_t sub_1DCD1C070()
{
  result = qword_1ECCA4AF0;
  if (!qword_1ECCA4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AF0);
  }

  return result;
}

unint64_t sub_1DCD1C0C8()
{
  result = qword_1EDE4D9A8;
  if (!qword_1EDE4D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D9A8);
  }

  return result;
}

unint64_t sub_1DCD1C120()
{
  result = qword_1EDE4D9A0;
  if (!qword_1EDE4D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D9A0);
  }

  return result;
}

unint64_t sub_1DCD1C178()
{
  result = qword_1ECCA4AF8;
  if (!qword_1ECCA4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4AF8);
  }

  return result;
}

unint64_t sub_1DCD1C1D0()
{
  result = qword_1ECCA4B00;
  if (!qword_1ECCA4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B00);
  }

  return result;
}

uint64_t sub_1DCD1C224(uint64_t a1, uint64_t a2)
{
  result = sub_1DCB2C054(&qword_1ECCA4B08, a2, type metadata accessor for AnyFlow, &protocol conformance descriptor for AnyFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCD1C27C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of Flow.onAsync(input:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v6 = (*(v0 + 24) + **(v0 + 24));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_47(v2);

  return v6(v4);
}

uint64_t dispatch thunk of Flow.execute()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v5 = (*(v0 + 40) + **(v0 + 40));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_116();

  return v5();
}

void *initializeBufferWithCopyOfBuffer for Input(void *a1, void *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = sub_1DD0DC76C();
      (*(*(v11 - 8) + 16))(v8, v9, v11);
      goto LABEL_27;
    case 1u:
      v20 = sub_1DD0DC76C();
      (*(*(v20 - 8) + 16))(v8, v9, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v8[*(v21 + 48)] = *&v9[*(v21 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v14 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v14;
      *(v8 + 2) = *(v9 + 2);

      goto LABEL_27;
    case 3u:
      *v8 = *v9;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v12 = sub_1DD0DB1EC();
      (*(*(v12 - 8) + 16))(v8, v9, v12);
      goto LABEL_27;
    case 5u:
      v22 = *v9;
      *v8 = *v9;
      v23 = v22;
      goto LABEL_27;
    case 6u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 16))(v8, v9, v24);
      v25 = type metadata accessor for USOParse(0);
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v26], &v9[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 16))(&v8[v26], &v9[v26], v27);
        __swift_storeEnumTagSinglePayload(&v8[v26], 0, 1, v27);
      }

      v60 = v25[6];
      v61 = &v8[v60];
      v62 = &v9[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v25[7];
      v65 = &v8[v64];
      v66 = &v9[v64];
      v65[4] = v66[4];
      *v65 = *v66;

      goto LABEL_27;
    case 7u:
      v15 = sub_1DD0DB4BC();
      (*(*(v15 - 8) + 16))(v8, v9, v15);
      v16 = type metadata accessor for USOParse(0);
      v17 = v16[5];
      v18 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v18))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v17], &v9[v17], *(*(v19 - 8) + 64));
      }

      else
      {
        (*(*(v18 - 8) + 16))(&v8[v17], &v9[v17], v18);
        __swift_storeEnumTagSinglePayload(&v8[v17], 0, 1, v18);
      }

      v40 = v16[6];
      v41 = &v8[v40];
      v42 = &v9[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v16[7];
      v45 = &v8[v44];
      v46 = &v9[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse(0);
      v48 = v47[5];
      v49 = &v8[v48];
      v50 = &v9[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v47[6];
      v53 = &v8[v52];
      v54 = &v9[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      v56 = v47[7];
      v57 = &v8[v56];
      v58 = &v9[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;

      goto LABEL_27;
    case 8u:
      v29 = sub_1DD0DD12C();
      (*(*(v29 - 8) + 16))(v8, v9, v29);
      v30 = type metadata accessor for NLRouterParse(0);
      v31 = *(v30 + 20);
      v32 = &v8[v31];
      v33 = &v9[v31];
      v34 = *(v33 + 1);
      *v32 = *v33;
      *(v32 + 1) = v34;
      v88 = v30;
      v35 = *(v30 + 24);
      v36 = &v8[v35];
      v37 = &v9[v35];
      v38 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v36, v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v67 = sub_1DD0DB4BC();
        (*(*(v67 - 8) + 16))(v36, v37, v67);
        v68 = v38[5];
        v87 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v37[v68], 1, v87))
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v36[v68], &v37[v68], *(*(v69 - 8) + 64));
        }

        else
        {
          (*(*(v87 - 8) + 16))(&v36[v68], &v37[v68]);
          __swift_storeEnumTagSinglePayload(&v36[v68], 0, 1, v87);
        }

        v70 = v38[6];
        v71 = &v36[v70];
        v72 = &v37[v70];
        v73 = *(v72 + 1);
        *v71 = *v72;
        *(v71 + 1) = v73;
        v74 = v38[7];
        v75 = &v36[v74];
        v76 = &v37[v74];
        v75[4] = v76[4];
        *v75 = *v76;

        __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
      }

      v77 = *(v88 + 28);
      v78 = *&v9[v77];
      *&v8[v77] = v78;
      v79 = v78;
      goto LABEL_27;
    case 9u:
      v13 = sub_1DD0DD08C();
      (*(*(v13 - 8) + 16))(v8, v9, v13);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
      break;
  }

  v80 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v81 = a1 + v80;
  v82 = a2 + v80;
  v83 = *(a2 + v80 + 24);

  if (v83)
  {
    v84 = *(v82 + 4);
    *(v81 + 3) = v83;
    *(v81 + 4) = v84;
    (**(v83 - 8))(v81, v82, v83);
  }

  else
  {
    v85 = *(v82 + 1);
    *v81 = *v82;
    *(v81 + 1) = v85;
    *(v81 + 4) = *(v82 + 4);
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t assignWithCopy for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  if (a1 != a2)
  {
    v7 = a3[5];
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    sub_1DCB28538();
    v10 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DC76C();
        (*(*(v11 - 8) + 16))(v8, v9, v11);
        goto LABEL_26;
      case 1u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 16))(v8, v9, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v8[*(v20 + 48)] = *&v9[*(v20 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v8 = *v9;
        *(v8 + 1) = *(v9 + 1);
        *(v8 + 2) = *(v9 + 2);

        goto LABEL_26;
      case 3u:
        *v8 = *v9;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v12 = sub_1DD0DB1EC();
        (*(*(v12 - 8) + 16))(v8, v9, v12);
        goto LABEL_26;
      case 5u:
        v21 = *v9;
        *v8 = *v9;
        v22 = v21;
        goto LABEL_26;
      case 6u:
        v23 = sub_1DD0DB4BC();
        (*(*(v23 - 8) + 16))(v8, v9, v23);
        v24 = type metadata accessor for USOParse(0);
        v25 = v24[5];
        v26 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v25], 1, v26))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v25], &v9[v25], *(*(v27 - 8) + 64));
        }

        else
        {
          (*(*(v26 - 8) + 16))(&v8[v25], &v9[v25], v26);
          __swift_storeEnumTagSinglePayload(&v8[v25], 0, 1, v26);
        }

        v55 = v24[6];
        v56 = &v8[v55];
        v57 = &v9[v55];
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = v24[7];
        v59 = &v8[v58];
        v60 = &v9[v58];
        v61 = *v60;
        v59[4] = v60[4];
        *v59 = v61;

        goto LABEL_26;
      case 7u:
        v14 = sub_1DD0DB4BC();
        (*(*(v14 - 8) + 16))(v8, v9, v14);
        v15 = type metadata accessor for USOParse(0);
        v16 = v15[5];
        v17 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v16], 1, v17))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v16], &v9[v16], *(*(v18 - 8) + 64));
        }

        else
        {
          (*(*(v17 - 8) + 16))(&v8[v16], &v9[v16], v17);
          __swift_storeEnumTagSinglePayload(&v8[v16], 0, 1, v17);
        }

        v38 = v15[6];
        v39 = &v8[v38];
        v40 = &v9[v38];
        *v39 = *v40;
        *(v39 + 1) = *(v40 + 1);
        v41 = v15[7];
        v42 = &v8[v41];
        v43 = &v9[v41];
        v44 = *v43;
        v42[4] = v43[4];
        *v42 = v44;
        v45 = type metadata accessor for LinkParse(0);
        v46 = v45[5];
        v47 = &v8[v46];
        v48 = &v9[v46];
        *v47 = *v48;
        *(v47 + 1) = *(v48 + 1);
        v49 = v45[6];
        v50 = &v8[v49];
        v51 = &v9[v49];
        *v50 = *v51;
        *(v50 + 1) = *(v51 + 1);
        v52 = v45[7];
        v53 = &v8[v52];
        v54 = &v9[v52];
        *v53 = *v54;
        *(v53 + 1) = *(v54 + 1);

        goto LABEL_26;
      case 8u:
        v28 = sub_1DD0DD12C();
        (*(*(v28 - 8) + 16))(v8, v9, v28);
        v29 = type metadata accessor for NLRouterParse(0);
        v30 = *(v29 + 20);
        v31 = &v8[v30];
        v32 = &v9[v30];
        *v31 = *v32;
        *(v31 + 1) = *(v32 + 1);
        v83 = v29;
        v33 = *(v29 + 24);
        v34 = &v8[v33];
        v35 = &v9[v33];
        v36 = type metadata accessor for USOParse(0);

        if (__swift_getEnumTagSinglePayload(v35, 1, v36))
        {
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v34, v35, *(*(v37 - 8) + 64));
        }

        else
        {
          v62 = sub_1DD0DB4BC();
          (*(*(v62 - 8) + 16))(v34, v35, v62);
          v63 = v36[5];
          v82 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v35[v63], 1, v82))
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v34[v63], &v35[v63], *(*(v64 - 8) + 64));
          }

          else
          {
            (*(*(v82 - 8) + 16))(&v34[v63], &v35[v63]);
            __swift_storeEnumTagSinglePayload(&v34[v63], 0, 1, v82);
          }

          v65 = v36[6];
          v66 = &v34[v65];
          v67 = &v35[v65];
          *v66 = *v67;
          *(v66 + 1) = *(v67 + 1);
          v68 = v36[7];
          v69 = &v34[v68];
          v70 = &v35[v68];
          v71 = *v70;
          v69[4] = v70[4];
          *v69 = v71;

          __swift_storeEnumTagSinglePayload(v34, 0, 1, v36);
        }

        v72 = *(v83 + 28);
        v73 = *&v9[v72];
        *&v8[v72] = v73;
        v74 = v73;
        goto LABEL_26;
      case 9u:
        v13 = sub_1DD0DD08C();
        (*(*(v13 - 8) + 16))(v8, v9, v13);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v8, v9, *(*(v10 - 8) + 64));
        break;
    }
  }

  *(a1 + a3[6]) = *(a2 + a3[6]);

  v75 = a3[7];
  v76 = a1 + v75;
  v77 = (a2 + v75);
  v78 = *(a2 + v75 + 24);
  if (!*(a1 + v75 + 24))
  {
    if (v78)
    {
      *(v76 + 24) = v78;
      *(v76 + 32) = *(v77 + 4);
      (**(v78 - 8))(v76, v77);
      goto LABEL_34;
    }

LABEL_33:
    v79 = *v77;
    v80 = v77[1];
    *(v76 + 32) = *(v77 + 4);
    *v76 = v79;
    *(v76 + 16) = v80;
    goto LABEL_34;
  }

  if (!v78)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    goto LABEL_33;
  }

  __swift_assign_boxed_opaque_existential_1(v76, v77);
LABEL_34:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t initializeWithTake for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = sub_1DD0DC76C();
      (*(*(v11 - 8) + 32))(v8, v9, v11);
      goto LABEL_22;
    case 1u:
      v19 = sub_1DD0DC76C();
      (*(*(v19 - 8) + 32))(v8, v9, v19);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v8[*(v20 + 48)] = *&v9[*(v20 + 48)];
      goto LABEL_22;
    case 4u:
      v22 = sub_1DD0DB1EC();
      (*(*(v22 - 8) + 32))(v8, v9, v22);
      goto LABEL_22;
    case 6u:
      v23 = sub_1DD0DB4BC();
      (*(*(v23 - 8) + 32))(v8, v9, v23);
      v24 = type metadata accessor for USOParse(0);
      v25 = v24[5];
      v26 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v25], 1, v26))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v25], &v9[v25], *(*(v27 - 8) + 64));
      }

      else
      {
        (*(*(v26 - 8) + 32))(&v8[v25], &v9[v25], v26);
        __swift_storeEnumTagSinglePayload(&v8[v25], 0, 1, v26);
      }

      *&v8[v24[6]] = *&v9[v24[6]];
      v39 = v24[7];
      v40 = &v8[v39];
      v41 = &v9[v39];
      v40[4] = v41[4];
      *v40 = *v41;
      goto LABEL_22;
    case 7u:
      v28 = sub_1DD0DB4BC();
      (*(*(v28 - 8) + 32))(v8, v9, v28);
      v29 = type metadata accessor for USOParse(0);
      v30 = v29[5];
      v31 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31))
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v30], &v9[v30], *(*(v32 - 8) + 64));
      }

      else
      {
        (*(*(v31 - 8) + 32))(&v8[v30], &v9[v30], v31);
        __swift_storeEnumTagSinglePayload(&v8[v30], 0, 1, v31);
      }

      *&v8[v29[6]] = *&v9[v29[6]];
      v42 = v29[7];
      v43 = &v8[v42];
      v44 = &v9[v42];
      v43[4] = v44[4];
      *v43 = *v44;
      v45 = type metadata accessor for LinkParse(0);
      *&v8[v45[5]] = *&v9[v45[5]];
      *&v8[v45[6]] = *&v9[v45[6]];
      *&v8[v45[7]] = *&v9[v45[7]];
      goto LABEL_22;
    case 8u:
      v12 = sub_1DD0DD12C();
      (*(*(v12 - 8) + 32))(v8, v9, v12);
      v13 = type metadata accessor for NLRouterParse(0);
      *&v8[v13[5]] = *&v9[v13[5]];
      v14 = v13[6];
      v15 = &v8[v14];
      v16 = &v9[v14];
      v17 = type metadata accessor for USOParse(0);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v15, v16, *(*(v18 - 8) + 64));
      }

      else
      {
        v54 = v13;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v15, v16, v33);
        v34 = v17[5];
        v35 = sub_1DD0DB3EC();
        v55 = v34;
        v36 = &v16[v34];
        v37 = v35;
        if (__swift_getEnumTagSinglePayload(v36, 1, v35))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v15[v55], &v16[v55], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v37 - 8) + 32))(&v15[v55], &v16[v55], v37);
          __swift_storeEnumTagSinglePayload(&v15[v55], 0, 1, v37);
        }

        *&v15[v17[6]] = *&v16[v17[6]];
        v46 = v17[7];
        v47 = &v15[v46];
        v48 = &v16[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
        v13 = v54;
      }

      *&v8[v13[7]] = *&v9[v13[7]];
      goto LABEL_22;
    case 9u:
      v21 = sub_1DD0DD08C();
      (*(*(v21 - 8) + 32))(v8, v9, v21);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
      break;
  }

  v49 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v50 = a1 + v49;
  v51 = a2 + v49;
  v52 = *(v51 + 16);
  *v50 = *v51;
  *(v50 + 16) = v52;
  *(v50 + 32) = *(v51 + 32);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t assignWithTake for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  if (a1 != a2)
  {
    v7 = a3[5];
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    sub_1DCB28538();
    v10 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DC76C();
        (*(*(v11 - 8) + 32))(v8, v9, v11);
        goto LABEL_23;
      case 1u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 32))(v8, v9, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v8[*(v20 + 48)] = *&v9[*(v20 + 48)];
        goto LABEL_23;
      case 4u:
        v22 = sub_1DD0DB1EC();
        (*(*(v22 - 8) + 32))(v8, v9, v22);
        goto LABEL_23;
      case 6u:
        v23 = sub_1DD0DB4BC();
        (*(*(v23 - 8) + 32))(v8, v9, v23);
        v24 = type metadata accessor for USOParse(0);
        v25 = v24[5];
        v26 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v25], 1, v26))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v25], &v9[v25], *(*(v27 - 8) + 64));
        }

        else
        {
          (*(*(v26 - 8) + 32))(&v8[v25], &v9[v25], v26);
          __swift_storeEnumTagSinglePayload(&v8[v25], 0, 1, v26);
        }

        *&v8[v24[6]] = *&v9[v24[6]];
        v39 = v24[7];
        v40 = &v8[v39];
        v41 = &v9[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        goto LABEL_23;
      case 7u:
        v28 = sub_1DD0DB4BC();
        (*(*(v28 - 8) + 32))(v8, v9, v28);
        v29 = type metadata accessor for USOParse(0);
        v30 = v29[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v8[v30], &v9[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 32))(&v8[v30], &v9[v30], v31);
          __swift_storeEnumTagSinglePayload(&v8[v30], 0, 1, v31);
        }

        *&v8[v29[6]] = *&v9[v29[6]];
        v42 = v29[7];
        v43 = &v8[v42];
        v44 = &v9[v42];
        v43[4] = v44[4];
        *v43 = *v44;
        v45 = type metadata accessor for LinkParse(0);
        *&v8[v45[5]] = *&v9[v45[5]];
        *&v8[v45[6]] = *&v9[v45[6]];
        *&v8[v45[7]] = *&v9[v45[7]];
        goto LABEL_23;
      case 8u:
        v12 = sub_1DD0DD12C();
        (*(*(v12 - 8) + 32))(v8, v9, v12);
        v13 = type metadata accessor for NLRouterParse(0);
        *&v8[v13[5]] = *&v9[v13[5]];
        v14 = v13[6];
        v15 = &v8[v14];
        v16 = &v9[v14];
        v17 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v16, 1, v17))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v15, v16, *(*(v18 - 8) + 64));
        }

        else
        {
          v53 = v13;
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(v15, v16, v33);
          v34 = v17[5];
          v35 = sub_1DD0DB3EC();
          v54 = v34;
          v36 = &v16[v34];
          v37 = v35;
          if (__swift_getEnumTagSinglePayload(v36, 1, v35))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v15[v54], &v16[v54], *(*(v38 - 8) + 64));
          }

          else
          {
            (*(*(v37 - 8) + 32))(&v15[v54], &v16[v54], v37);
            __swift_storeEnumTagSinglePayload(&v15[v54], 0, 1, v37);
          }

          *&v15[v17[6]] = *&v16[v17[6]];
          v46 = v17[7];
          v47 = &v15[v46];
          v48 = &v16[v46];
          v47[4] = v48[4];
          *v47 = *v48;
          __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
          v13 = v53;
        }

        *&v8[v13[7]] = *&v9[v13[7]];
        goto LABEL_23;
      case 9u:
        v21 = sub_1DD0DD08C();
        (*(*(v21 - 8) + 32))(v8, v9, v21);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v8, v9, *(*(v10 - 8) + 64));
        break;
    }
  }

  *(a1 + a3[6]) = *(a2 + a3[6]);

  v49 = a3[7];
  v50 = a1 + v49;
  if (*(a1 + v49 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v49));
  }

  v51 = *(a2 + v49 + 16);
  *v50 = *(a2 + v49);
  *(v50 + 16) = v51;
  *(v50 + 32) = *(a2 + v49 + 32);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1DCD1E494(uint64_t a1)
{
  result = sub_1DD0DB04C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Parse(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void initializeBufferWithCopyOfBuffer for LoadedFlowInfo(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    *(a1 + 32) = *(a2 + 2);
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t destroy for LoadedFlowInfo(void *a1, uint64_t a2)
{
  v4 = a1 + 1;

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  v5 = (a1 + *(a2 + 24));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v10 = sub_1DD0DC76C();
      (*(*(v10 - 8) + 8))(v5, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_15;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      v6 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v11 = *v5;
      goto LABEL_21;
    case 6u:
      v12 = sub_1DD0DB4BC();
      (*(*(v12 - 8) + 8))(v5, v12);
      v13 = *(type metadata accessor for USOParse(0) + 20);
      v14 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v14))
      {
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
      }

      goto LABEL_15;
    case 7u:
      v7 = sub_1DD0DB4BC();
      (*(*(v7 - 8) + 8))(v5, v7);
      v8 = *(type metadata accessor for USOParse(0) + 20);
      v9 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v9))
      {
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
      }

      type metadata accessor for LinkParse(0);

LABEL_15:

      break;
    case 8u:
      v15 = sub_1DD0DD12C();
      (*(*(v15 - 8) + 8))(v5, v15);
      v16 = type metadata accessor for NLRouterParse(0);

      v17 = v5 + *(v16 + 24);
      v18 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
      {
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 8))(v17, v19);
        v20 = *(v18 + 20);
        v21 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v17 + v20, 1, v21))
        {
          (*(*(v21 - 8) + 8))(v17 + v20, v21);
        }
      }

      v11 = *(v5 + *(v16 + 28));
LABEL_21:

      break;
    case 9u:
      v6 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v6 - 8) + 8))(v5, v6);
      break;
    default:
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(a2 + 32)));
}

void initializeWithCopy for LoadedFlowInfo(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 32) = *(a2 + 32);
  sub_1DD0DCF8C();
}

uint64_t initializeWithTake for LoadedFlowInfo(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = a3[6];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = sub_1DD0DC76C();
      (*(*(v10 - 8) + 32))(v7, v8, v10);
      goto LABEL_22;
    case 1u:
      v18 = sub_1DD0DC76C();
      (*(*(v18 - 8) + 32))(v7, v8, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v7[*(v19 + 48)] = *&v8[*(v19 + 48)];
      goto LABEL_22;
    case 4u:
      v21 = sub_1DD0DB1EC();
      (*(*(v21 - 8) + 32))(v7, v8, v21);
      goto LABEL_22;
    case 6u:
      v22 = sub_1DD0DB4BC();
      (*(*(v22 - 8) + 32))(v7, v8, v22);
      v23 = type metadata accessor for USOParse(0);
      v24 = v23[5];
      v25 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v8[v24], 1, v25))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v7[v24], &v8[v24], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(*(v25 - 8) + 32))(&v7[v24], &v8[v24], v25);
        __swift_storeEnumTagSinglePayload(&v7[v24], 0, 1, v25);
      }

      *&v7[v23[6]] = *&v8[v23[6]];
      v38 = v23[7];
      v39 = &v7[v38];
      v40 = &v8[v38];
      v39[4] = v40[4];
      *v39 = *v40;
      goto LABEL_22;
    case 7u:
      v27 = sub_1DD0DB4BC();
      (*(*(v27 - 8) + 32))(v7, v8, v27);
      v28 = type metadata accessor for USOParse(0);
      v29 = v28[5];
      v30 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v30))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v7[v29], &v8[v29], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(*(v30 - 8) + 32))(&v7[v29], &v8[v29], v30);
        __swift_storeEnumTagSinglePayload(&v7[v29], 0, 1, v30);
      }

      *&v7[v28[6]] = *&v8[v28[6]];
      v41 = v28[7];
      v42 = &v7[v41];
      v43 = &v8[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      v44 = type metadata accessor for LinkParse(0);
      *&v7[v44[5]] = *&v8[v44[5]];
      *&v7[v44[6]] = *&v8[v44[6]];
      *&v7[v44[7]] = *&v8[v44[7]];
      goto LABEL_22;
    case 8u:
      v11 = sub_1DD0DD12C();
      (*(*(v11 - 8) + 32))(v7, v8, v11);
      v12 = type metadata accessor for NLRouterParse(0);
      *&v7[v12[5]] = *&v8[v12[5]];
      v13 = v12[6];
      v14 = &v7[v13];
      v15 = &v8[v13];
      v16 = type metadata accessor for USOParse(0);
      if (__swift_getEnumTagSinglePayload(v15, 1, v16))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v14, v15, *(*(v17 - 8) + 64));
      }

      else
      {
        v53 = v12;
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 32))(v14, v15, v32);
        v33 = v16[5];
        v34 = sub_1DD0DB3EC();
        v54 = v33;
        v35 = &v15[v33];
        v36 = v34;
        if (__swift_getEnumTagSinglePayload(v35, 1, v34))
        {
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v14[v54], &v15[v54], *(*(v37 - 8) + 64));
        }

        else
        {
          (*(*(v36 - 8) + 32))(&v14[v54], &v15[v54], v36);
          __swift_storeEnumTagSinglePayload(&v14[v54], 0, 1, v36);
        }

        *&v14[v16[6]] = *&v15[v16[6]];
        v45 = v16[7];
        v46 = &v14[v45];
        v47 = &v15[v45];
        v46[4] = v47[4];
        *v46 = *v47;
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
        v12 = v53;
      }

      *&v7[v12[7]] = *&v8[v12[7]];
      goto LABEL_22;
    case 9u:
      v20 = sub_1DD0DD08C();
      (*(*(v20 - 8) + 32))(v7, v8, v20);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v7, v8, *(*(v9 - 8) + 64));
      break;
  }

  v48 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v49 = a1 + v48;
  v50 = a2 + v48;
  v51 = *(v50 + 16);
  *v49 = *v50;
  *(v49 + 16) = v51;
  *(v49 + 32) = *(v50 + 32);
  return a1;
}

uint64_t *assignWithTake for LoadedFlowInfo(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  if (a1 != a2)
  {
    v6 = a3[6];
    v7 = a1 + v6;
    v8 = a2 + v6;
    sub_1DCB28538();
    v9 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v10 = sub_1DD0DC76C();
        (*(*(v10 - 8) + 32))(v7, v8, v10);
        goto LABEL_23;
      case 1u:
        v18 = sub_1DD0DC76C();
        (*(*(v18 - 8) + 32))(v7, v8, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v7[*(v19 + 48)] = *&v8[*(v19 + 48)];
        goto LABEL_23;
      case 4u:
        v21 = sub_1DD0DB1EC();
        (*(*(v21 - 8) + 32))(v7, v8, v21);
        goto LABEL_23;
      case 6u:
        v22 = sub_1DD0DB4BC();
        (*(*(v22 - 8) + 32))(v7, v8, v22);
        v23 = type metadata accessor for USOParse(0);
        v24 = v23[5];
        v25 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v8[v24], 1, v25))
        {
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v7[v24], &v8[v24], *(*(v26 - 8) + 64));
        }

        else
        {
          (*(*(v25 - 8) + 32))(&v7[v24], &v8[v24], v25);
          __swift_storeEnumTagSinglePayload(&v7[v24], 0, 1, v25);
        }

        *&v7[v23[6]] = *&v8[v23[6]];
        v38 = v23[7];
        v39 = &v7[v38];
        v40 = &v8[v38];
        v39[4] = v40[4];
        *v39 = *v40;
        goto LABEL_23;
      case 7u:
        v27 = sub_1DD0DB4BC();
        (*(*(v27 - 8) + 32))(v7, v8, v27);
        v28 = type metadata accessor for USOParse(0);
        v29 = v28[5];
        v30 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v7[v29], &v8[v29], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(*(v30 - 8) + 32))(&v7[v29], &v8[v29], v30);
          __swift_storeEnumTagSinglePayload(&v7[v29], 0, 1, v30);
        }

        *&v7[v28[6]] = *&v8[v28[6]];
        v41 = v28[7];
        v42 = &v7[v41];
        v43 = &v8[v41];
        v42[4] = v43[4];
        *v42 = *v43;
        v44 = type metadata accessor for LinkParse(0);
        *&v7[v44[5]] = *&v8[v44[5]];
        *&v7[v44[6]] = *&v8[v44[6]];
        *&v7[v44[7]] = *&v8[v44[7]];
        goto LABEL_23;
      case 8u:
        v11 = sub_1DD0DD12C();
        (*(*(v11 - 8) + 32))(v7, v8, v11);
        v12 = type metadata accessor for NLRouterParse(0);
        *&v7[v12[5]] = *&v8[v12[5]];
        v13 = v12[6];
        v14 = &v7[v13];
        v15 = &v8[v13];
        v16 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v15, 1, v16))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v14, v15, *(*(v17 - 8) + 64));
        }

        else
        {
          v53 = v12;
          v32 = sub_1DD0DB4BC();
          (*(*(v32 - 8) + 32))(v14, v15, v32);
          v33 = v16[5];
          v34 = sub_1DD0DB3EC();
          v54 = v33;
          v35 = &v15[v33];
          v36 = v34;
          if (__swift_getEnumTagSinglePayload(v35, 1, v34))
          {
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v14[v54], &v15[v54], *(*(v37 - 8) + 64));
          }

          else
          {
            (*(*(v36 - 8) + 32))(&v14[v54], &v15[v54], v36);
            __swift_storeEnumTagSinglePayload(&v14[v54], 0, 1, v36);
          }

          *&v14[v16[6]] = *&v15[v16[6]];
          v45 = v16[7];
          v46 = &v14[v45];
          v47 = &v15[v45];
          v46[4] = v47[4];
          *v46 = *v47;
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
          v12 = v53;
        }

        *&v7[v12[7]] = *&v8[v12[7]];
        goto LABEL_23;
      case 9u:
        v20 = sub_1DD0DD08C();
        (*(*(v20 - 8) + 32))(v7, v8, v20);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v7, v8, *(*(v9 - 8) + 64));
        break;
    }
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);

  v48 = a3[8];
  v49 = a1 + v48;
  v50 = a2 + v48;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v48));
  v51 = *(v50 + 1);
  *v49 = *v50;
  *(v49 + 1) = v51;
  *(v49 + 4) = *(v50 + 4);
  return a1;
}

uint64_t sub_1DCD21010(uint64_t a1)
{
  result = type metadata accessor for Parse(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD21100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_64_5(-1);
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_64_5(*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_64_5(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_64_5(-1);
  }
}

uint64_t getEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.NoMatchingTool(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.UnableToHandleRequest(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriXRedirectContext.RedirectReason.UnableToHandleRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DCD21390(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
    return sub_1DCD1BB80(result, a2, a3 & 0x3F);
  }

  return result;
}

uint64_t sub_1DCD213A8(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCD21424(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  OUTLINED_FUNCTION_46_2();
  v10();
  v11 = *a1;
  v12 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v11, v12, v13);
  return a1;
}

uint64_t *sub_1DCD214A4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t storeEnumTagSinglePayload for FlowUnhandledReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCD21544(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DCD21574(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

void initializeBufferWithCopyOfBuffer for ExecuteResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) == 0)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = a2[3];
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

void assignWithCopy for ExecuteResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_1DD0DCF8C();
}

uint64_t initializeWithTake for ExecuteResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a3 + 36);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *(a1 + 32) = v6;
  v10 = type metadata accessor for PluginAction(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    memcpy(v8, v9, *(*(v11 - 8) + 64));
  }

  else
  {
    v91 = v3;
    *v8 = *v9;
    v12 = v10[5];
    v13 = v8 + v12;
    v14 = v9 + v12;
    v90 = sub_1DD0DB04C();
    v87 = *(*(v90 - 8) + 32);
    v87(v13, v14);
    v15 = type metadata accessor for Input(0);
    v16 = v15[5];
    v17 = &v13[v16];
    v18 = &v14[v16];
    v88 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 32))(v17, v18, v19);
        goto LABEL_25;
      case 1u:
        v29 = sub_1DD0DC76C();
        (*(*(v29 - 8) + 32))(v17, v18, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v17[*(v30 + 48)] = *&v18[*(v30 + 48)];
        goto LABEL_25;
      case 4u:
        v32 = sub_1DD0DB1EC();
        (*(*(v32 - 8) + 32))(v17, v18, v32);
        goto LABEL_25;
      case 6u:
        v85 = v15;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v17, v18, v33);
        v83 = type metadata accessor for USOParse(0);
        v34 = v83[5];
        v80 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v18[v34], 1, v80))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v17[v34], &v18[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v80 - 8) + 32))(&v17[v34], &v18[v34]);
          __swift_storeEnumTagSinglePayload(&v17[v34], 0, 1, v80);
        }

        *&v17[v83[6]] = *&v18[v83[6]];
        v43 = v83[7];
        v44 = &v17[v43];
        v45 = &v18[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_21;
      case 7u:
        v85 = v15;
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v17, v18, v36);
        v84 = type metadata accessor for USOParse(0);
        v37 = v84[5];
        v81 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v18[v37], 1, v81))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v17[v37], &v18[v37], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v81 - 8) + 32))(&v17[v37], &v18[v37]);
          __swift_storeEnumTagSinglePayload(&v17[v37], 0, 1, v81);
        }

        *&v17[v84[6]] = *&v18[v84[6]];
        v46 = v84[7];
        v47 = &v17[v46];
        v48 = &v18[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v17[v49[5]] = *&v18[v49[5]];
        *&v17[v49[6]] = *&v18[v49[6]];
        *&v17[v49[7]] = *&v18[v49[7]];
LABEL_21:
        swift_storeEnumTagMultiPayload();
        v15 = v85;
        break;
      case 8u:
        v20 = sub_1DD0DD12C();
        (*(*(v20 - 8) + 32))(v17, v18, v20);
        v21 = type metadata accessor for NLRouterParse(0);
        *&v17[*(v21 + 20)] = *&v18[*(v21 + 20)];
        v77 = v17;
        v78 = v21;
        v22 = *(v21 + 24);
        v82 = &v17[v22];
        v23 = &v18[v22];
        v24 = type metadata accessor for USOParse(0);
        v79 = v23;
        v25 = v23;
        v26 = v24;
        if (__swift_getEnumTagSinglePayload(v25, 1, v24))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v82, v79, *(*(v27 - 8) + 64));
          v28 = v77;
        }

        else
        {
          v86 = v15;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v82, v79, v39);
          v76 = v26;
          v40 = *(v26 + 20);
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v79[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v82[v40], &v79[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&v82[v40], &v79[v40], v41);
            __swift_storeEnumTagSinglePayload(&v82[v40], 0, 1, v41);
          }

          v28 = v77;
          *&v82[*(v76 + 24)] = *&v79[*(v76 + 24)];
          v50 = *(v76 + 28);
          v51 = &v82[v50];
          v52 = &v79[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v82, 0, 1, v76);
          v15 = v86;
        }

        *&v28[*(v78 + 28)] = *&v18[*(v78 + 28)];
        goto LABEL_25;
      case 9u:
        v31 = sub_1DD0DD08C();
        (*(*(v31 - 8) + 32))(v17, v18, v31);
LABEL_25:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v17, v18, *(*(v88 - 8) + 64));
        break;
    }

    *&v13[v15[6]] = *&v14[v15[6]];
    v53 = v15[7];
    v54 = &v13[v53];
    v55 = &v14[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    v13[v15[8]] = v14[v15[8]];
    *(v8 + v10[6]) = *(v9 + v10[6]);
    *(v8 + v10[7]) = *(v9 + v10[7]);
    *(v8 + v10[8]) = *(v9 + v10[8]);
    v57 = v10[9];
    v58 = (v8 + v57);
    v59 = (v9 + v57);
    v60 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60))
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v58, v59, *(*(v61 - 8) + 64));
    }

    else
    {
      *v58 = *v59;
      v62 = *(v60 + 20);
      v63 = (v58 + v62);
      v64 = (v59 + v62);
      v65 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v64, 1, v65))
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v63, v64, *(*(v66 - 8) + 64));
      }

      else
      {
        v67 = v64[1];
        *v63 = *v64;
        v63[1] = v67;
        v89 = *(v65 + 24);
        v68 = sub_1DD0DB66C();
        (*(*(v68 - 8) + 32))(v63 + v89, v64 + v89, v68);
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
      }

      __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
    }

    v69 = v10[10];
    v3 = v91;
    if (__swift_getEnumTagSinglePayload(v9 + v69, 1, v90))
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(v8 + v69, v9 + v69, *(*(v70 - 8) + 64));
    }

    else
    {
      (v87)(v8 + v69, v9 + v69, v90);
      __swift_storeEnumTagSinglePayload(v8 + v69, 0, 1, v90);
    }

    *(v8 + v10[11]) = *(v9 + v10[11]);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  }

  v71 = *(v3 + 40);
  v72 = (a1 + v71);
  v73 = (a2 + v71);
  v74 = v73[1];
  *v72 = *v73;
  v72[1] = v74;
  return a1;
}

uint64_t assignWithTake for ExecuteResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a1 + 48);
  if (v6 > 0xFB)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 48);
  if (v7 > 0xFB)
  {
    sub_1DCD23DFC((a1 + 32));
LABEL_4:
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_6;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  sub_1DCD21390(v8, v9, v6);
LABEL_6:
  v10 = *(a3 + 36);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for PluginAction(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v13);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (!EnumTagSinglePayload)
  {
    if (v15)
    {
      sub_1DCB28538();
      goto LABEL_12;
    }

    v219 = a3;
    v25 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 1) = v25;

    v26 = v13[5];
    v27 = &v11[v26];
    v28 = &v12[v26];
    v29 = sub_1DD0DB04C();
    v214 = *(v29 - 8);
    v217 = v29;
    v206 = *(v214 + 40);
    v206(v27, v28);
    v30 = type metadata accessor for Input(0);
    v31 = v30;
    if (a1 != a2)
    {
      v32 = *(v30 + 20);
      v33 = &v27[v32];
      v34 = &v28[v32];
      sub_1DCB28538();
      v211 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v35 = sub_1DD0DC76C();
          (*(*(v35 - 8) + 32))(v33, v34, v35);
          goto LABEL_65;
        case 1u:
          v73 = sub_1DD0DC76C();
          (*(*(v73 - 8) + 32))(v33, v34, v73);
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v33[*(v74 + 48)] = *&v34[*(v74 + 48)];
          goto LABEL_65;
        case 4u:
          v76 = sub_1DD0DB1EC();
          (*(*(v76 - 8) + 32))(v33, v34, v76);
          goto LABEL_65;
        case 6u:
          v77 = sub_1DD0DB4BC();
          (*(*(v77 - 8) + 32))(v33, v34, v77);
          v198 = type metadata accessor for USOParse(0);
          v204 = v33;
          v78 = v198[5];
          v79 = sub_1DD0DB3EC();
          v192 = v78;
          v80 = &v34[v78];
          v81 = v79;
          if (__swift_getEnumTagSinglePayload(v80, 1, v79))
          {
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v204[v192], &v34[v192], *(*(v82 - 8) + 64));
          }

          else
          {
            (*(*(v81 - 8) + 32))(&v204[v192], &v34[v192], v81);
            __swift_storeEnumTagSinglePayload(&v204[v192], 0, 1, v81);
          }

          *&v204[v198[6]] = *&v34[v198[6]];
          v121 = v198[7];
          v122 = &v204[v121];
          v123 = &v34[v121];
          v122[4] = v123[4];
          *v122 = *v123;
          goto LABEL_65;
        case 7u:
          v86 = sub_1DD0DB4BC();
          (*(*(v86 - 8) + 32))(v33, v34, v86);
          v199 = type metadata accessor for USOParse(0);
          v205 = v33;
          v87 = v199[5];
          v88 = sub_1DD0DB3EC();
          v193 = v87;
          v89 = &v34[v87];
          v90 = v88;
          if (__swift_getEnumTagSinglePayload(v89, 1, v88))
          {
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v92 = v205;
            memcpy(&v205[v193], &v34[v193], *(*(v91 - 8) + 64));
          }

          else
          {
            (*(*(v90 - 8) + 32))(&v205[v193], &v34[v193], v90);
            __swift_storeEnumTagSinglePayload(&v205[v193], 0, 1, v90);
            v92 = v205;
          }

          *&v92[v199[6]] = *&v34[v199[6]];
          v124 = v199[7];
          v125 = &v92[v124];
          v126 = &v34[v124];
          v125[4] = v126[4];
          *v125 = *v126;
          v127 = type metadata accessor for LinkParse(0);
          *&v92[v127[5]] = *&v34[v127[5]];
          *&v92[v127[6]] = *&v34[v127[6]];
          *&v92[v127[7]] = *&v34[v127[7]];
          goto LABEL_65;
        case 8u:
          v61 = sub_1DD0DD12C();
          (*(*(v61 - 8) + 32))(v33, v34, v61);
          v62 = type metadata accessor for NLRouterParse(0);
          *&v33[*(v62 + 20)] = *&v34[*(v62 + 20)];
          v63 = *(v62 + 24);
          v191 = v62;
          v197 = &v33[v63];
          v188 = v34;
          v64 = &v34[v63];
          v65 = type metadata accessor for USOParse(0);
          v203 = v64;
          v66 = v64;
          v67 = v65;
          if (__swift_getEnumTagSinglePayload(v66, 1, v65))
          {
            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v197, v203, *(*(v68 - 8) + 64));
            v69 = v188;
          }

          else
          {
            v97 = sub_1DD0DB4BC();
            (*(*(v97 - 8) + 32))(v197, v203, v97);
            v187 = v67;
            v98 = *(v67 + 20);
            v185 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v203[v98], 1, v185))
            {
              v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v197[v98], &v203[v98], *(*(v99 - 8) + 64));
            }

            else
            {
              (*(*(v185 - 8) + 32))(&v197[v98], &v203[v98]);
              __swift_storeEnumTagSinglePayload(&v197[v98], 0, 1, v185);
            }

            v69 = v188;
            *&v197[*(v187 + 24)] = *&v203[*(v187 + 24)];
            v128 = *(v187 + 28);
            v129 = &v197[v128];
            v130 = &v203[v128];
            v129[4] = v130[4];
            *v129 = *v130;
            __swift_storeEnumTagSinglePayload(v197, 0, 1, v187);
          }

          *&v33[*(v191 + 28)] = *&v69[*(v191 + 28)];
          goto LABEL_65;
        case 9u:
          v75 = sub_1DD0DD08C();
          (*(*(v75 - 8) + 32))(v33, v34, v75);
LABEL_65:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v33, v34, *(*(v211 - 8) + 64));
          break;
      }
    }

    *&v27[v31[6]] = *&v28[v31[6]];

    v131 = v31[7];
    v132 = &v27[v131];
    v133 = &v28[v131];
    if (*&v27[v131 + 24])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
    }

    v134 = *(v133 + 1);
    *v132 = *v133;
    *(v132 + 1) = v134;
    *(v132 + 4) = *(v133 + 4);
    v27[v31[8]] = v28[v31[8]];
    *&v11[v13[6]] = *&v12[v13[6]];

    v135 = v13[7];
    v136 = *&v11[v135];
    *&v11[v135] = *&v12[v135];

    v137 = v13[8];
    v138 = &v11[v137];
    v139 = &v12[v137];
    v141 = *v139;
    v140 = *(v139 + 1);
    *v138 = v141;
    *(v138 + 1) = v140;

    v142 = v13[9];
    v143 = &v11[v142];
    v144 = &v12[v142];
    v145 = type metadata accessor for ActionParaphrase(0);
    v146 = __swift_getEnumTagSinglePayload(v143, 1, v145);
    v147 = __swift_getEnumTagSinglePayload(v144, 1, v145);
    if (v146)
    {
      if (!v147)
      {
        *v143 = *v144;
        v148 = *(v145 + 20);
        v149 = (v143 + v148);
        v150 = (v144 + v148);
        v151 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (__swift_getEnumTagSinglePayload(v150, 1, v151))
        {
          v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v149, v150, *(*(v152 - 8) + 64));
        }

        else
        {
          v168 = v150[1];
          *v149 = *v150;
          v149[1] = v168;
          v212 = *(v151 + 24);
          v169 = sub_1DD0DB66C();
          (*(*(v169 - 8) + 32))(v149 + v212, v150 + v212, v169);
          __swift_storeEnumTagSinglePayload(v149, 0, 1, v151);
        }

        v166 = v143;
        v167 = v145;
        goto LABEL_81;
      }
    }

    else
    {
      if (!v147)
      {
        v156 = *(v144 + 8);
        *v143 = *v144;
        *(v143 + 8) = v156;

        v157 = *(v145 + 20);
        v158 = v143 + v157;
        v159 = v144 + v157;
        v160 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        v161 = __swift_getEnumTagSinglePayload(v158, 1, v160);
        v162 = __swift_getEnumTagSinglePayload(v159, 1, v160);
        if (v161)
        {
          if (!v162)
          {
            v163 = *(v159 + 16);
            *v158 = *v159;
            *(v158 + 16) = v163;
            v164 = *(v160 + 24);
            v165 = sub_1DD0DB66C();
            (*(*(v165 - 8) + 32))(v158 + v164, v159 + v164, v165);
            v166 = v158;
            v167 = v160;
LABEL_81:
            __swift_storeEnumTagSinglePayload(v166, 0, 1, v167);
            goto LABEL_82;
          }
        }

        else
        {
          if (!v162)
          {
            v181 = *(v159 + 8);
            *v158 = *v159;
            *(v158 + 8) = v181;

            v182 = *(v159 + 24);
            *(v158 + 16) = *(v159 + 16);
            *(v158 + 24) = v182;

            v183 = *(v160 + 24);
            v184 = sub_1DD0DB66C();
            (*(*(v184 - 8) + 40))(v158 + v183, v159 + v183, v184);
LABEL_82:
            v170 = v13[10];
            v171 = __swift_getEnumTagSinglePayload(&v11[v170], 1, v217);
            v172 = __swift_getEnumTagSinglePayload(&v12[v170], 1, v217);
            if (v171)
            {
              if (!v172)
              {
                (*(v214 + 32))(&v11[v170], &v12[v170], v217);
                __swift_storeEnumTagSinglePayload(&v11[v170], 0, 1, v217);
LABEL_88:
                v11[v13[11]] = v12[v13[11]];
                a3 = v219;
                goto LABEL_89;
              }
            }

            else
            {
              if (!v172)
              {
                (v206)(&v11[v170], &v12[v170], v217);
                goto LABEL_88;
              }

              (*(v214 + 8))(&v11[v170], v217);
            }

            v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
            memcpy(&v11[v170], &v12[v170], *(*(v173 - 8) + 64));
            goto LABEL_88;
          }

          sub_1DCB28538();
        }

        v153 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
        v154 = v158;
        v155 = v159;
LABEL_75:
        memcpy(v154, v155, v153);
        goto LABEL_82;
      }

      sub_1DCB28538();
    }

    v153 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960) - 8) + 64);
    v154 = v143;
    v155 = v144;
    goto LABEL_75;
  }

  if (v15)
  {
LABEL_12:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    memcpy(v11, v12, *(*(v24 - 8) + 64));
    goto LABEL_89;
  }

  v218 = a3;
  *v11 = *v12;
  v16 = v13[5];
  v17 = &v11[v16];
  v18 = &v12[v16];
  v216 = sub_1DD0DB04C();
  v210 = *(*(v216 - 8) + 32);
  v210(v17, v18);
  v19 = type metadata accessor for Input(0);
  v20 = v19[5];
  v21 = &v17[v20];
  v22 = &v18[v20];
  v213 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v23 = sub_1DD0DC76C();
      (*(*(v23 - 8) + 32))(v21, v22, v23);
      goto LABEL_47;
    case 1u:
      v44 = sub_1DD0DC76C();
      (*(*(v44 - 8) + 32))(v21, v22, v44);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v21[*(v45 + 48)] = *&v22[*(v45 + 48)];
      goto LABEL_47;
    case 4u:
      v47 = sub_1DD0DB1EC();
      (*(*(v47 - 8) + 32))(v21, v22, v47);
      goto LABEL_47;
    case 6u:
      v48 = sub_1DD0DB4BC();
      (*(*(v48 - 8) + 32))(v21, v22, v48);
      v201 = type metadata accessor for USOParse(0);
      v208 = v21;
      v49 = v201[5];
      v50 = sub_1DD0DB3EC();
      v195 = v49;
      v51 = &v22[v49];
      v52 = v50;
      if (__swift_getEnumTagSinglePayload(v51, 1, v50))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v208[v195], &v22[v195], *(*(v53 - 8) + 64));
      }

      else
      {
        (*(*(v52 - 8) + 32))(&v208[v195], &v22[v195], v52);
        __swift_storeEnumTagSinglePayload(&v208[v195], 0, 1, v52);
      }

      *&v208[v201[6]] = *&v22[v201[6]];
      v83 = v201[7];
      v84 = &v208[v83];
      v85 = &v22[v83];
      v84[4] = v85[4];
      *v84 = *v85;
      goto LABEL_47;
    case 7u:
      v54 = sub_1DD0DB4BC();
      (*(*(v54 - 8) + 32))(v21, v22, v54);
      v202 = type metadata accessor for USOParse(0);
      v209 = v21;
      v55 = v202[5];
      v56 = sub_1DD0DB3EC();
      v196 = v55;
      v57 = &v22[v55];
      v58 = v56;
      if (__swift_getEnumTagSinglePayload(v57, 1, v56))
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        v60 = v209;
        memcpy(&v209[v196], &v22[v196], *(*(v59 - 8) + 64));
      }

      else
      {
        (*(*(v58 - 8) + 32))(&v209[v196], &v22[v196], v58);
        __swift_storeEnumTagSinglePayload(&v209[v196], 0, 1, v58);
        v60 = v209;
      }

      *&v60[v202[6]] = *&v22[v202[6]];
      v93 = v202[7];
      v94 = &v60[v93];
      v95 = &v22[v93];
      v94[4] = v95[4];
      *v94 = *v95;
      v96 = type metadata accessor for LinkParse(0);
      *&v60[v96[5]] = *&v22[v96[5]];
      *&v60[v96[6]] = *&v22[v96[6]];
      *&v60[v96[7]] = *&v22[v96[7]];
      goto LABEL_47;
    case 8u:
      v190 = v19;
      v36 = sub_1DD0DD12C();
      (*(*(v36 - 8) + 32))(v21, v22, v36);
      v37 = type metadata accessor for NLRouterParse(0);
      *&v21[*(v37 + 20)] = *&v22[*(v37 + 20)];
      v38 = *(v37 + 24);
      v194 = v37;
      v200 = &v21[v38];
      v39 = &v22[v38];
      v40 = type metadata accessor for USOParse(0);
      v207 = v39;
      v41 = v39;
      v42 = v40;
      if (__swift_getEnumTagSinglePayload(v41, 1, v40))
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v200, v207, *(*(v43 - 8) + 64));
        v19 = v190;
      }

      else
      {
        v70 = sub_1DD0DB4BC();
        (*(*(v70 - 8) + 32))(v200, v207, v70);
        v189 = v42;
        v71 = *(v42 + 20);
        v186 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v207[v71], 1, v186))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v200[v71], &v207[v71], *(*(v72 - 8) + 64));
        }

        else
        {
          (*(*(v186 - 8) + 32))(&v200[v71], &v207[v71]);
          __swift_storeEnumTagSinglePayload(&v200[v71], 0, 1, v186);
        }

        v19 = v190;
        *&v200[*(v189 + 24)] = *&v207[*(v189 + 24)];
        v100 = *(v189 + 28);
        v101 = &v200[v100];
        v102 = &v207[v100];
        v101[4] = v102[4];
        *v101 = *v102;
        __swift_storeEnumTagSinglePayload(v200, 0, 1, v189);
      }

      *&v21[*(v194 + 28)] = *&v22[*(v194 + 28)];
      goto LABEL_47;
    case 9u:
      v46 = sub_1DD0DD08C();
      (*(*(v46 - 8) + 32))(v21, v22, v46);
LABEL_47:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v21, v22, *(*(v213 - 8) + 64));
      break;
  }

  *&v17[v19[6]] = *&v18[v19[6]];
  v103 = v19[7];
  v104 = &v17[v103];
  v105 = &v18[v103];
  v106 = *(v105 + 1);
  *v104 = *v105;
  *(v104 + 1) = v106;
  *(v104 + 4) = *(v105 + 4);
  v17[v19[8]] = v18[v19[8]];
  *&v11[v13[6]] = *&v12[v13[6]];
  *&v11[v13[7]] = *&v12[v13[7]];
  *&v11[v13[8]] = *&v12[v13[8]];
  v107 = v13[9];
  v108 = &v11[v107];
  v109 = &v12[v107];
  v110 = type metadata accessor for ActionParaphrase(0);
  if (__swift_getEnumTagSinglePayload(v109, 1, v110))
  {
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v108, v109, *(*(v111 - 8) + 64));
  }

  else
  {
    *v108 = *v109;
    v112 = *(v110 + 20);
    v113 = &v108[v112];
    v114 = &v109[v112];
    v115 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v114, 1, v115))
    {
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v113, v114, *(*(v116 - 8) + 64));
    }

    else
    {
      v117 = *(v114 + 1);
      *v113 = *v114;
      *(v113 + 1) = v117;
      v215 = *(v115 + 24);
      v118 = sub_1DD0DB66C();
      (*(*(v118 - 8) + 32))(&v113[v215], &v114[v215], v118);
      __swift_storeEnumTagSinglePayload(v113, 0, 1, v115);
    }

    __swift_storeEnumTagSinglePayload(v108, 0, 1, v110);
  }

  v119 = v13[10];
  a3 = v218;
  if (__swift_getEnumTagSinglePayload(&v12[v119], 1, v216))
  {
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&v11[v119], &v12[v119], *(*(v120 - 8) + 64));
  }

  else
  {
    (v210)(&v11[v119], &v12[v119], v216);
    __swift_storeEnumTagSinglePayload(&v11[v119], 0, 1, v216);
  }

  v11[v13[11]] = v12[v13[11]];
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
LABEL_89:
  v174 = *(a3 + 40);
  v175 = a1 + v174;
  v176 = a2 + v174;
  if (!*(a1 + v174 + 8))
  {
LABEL_93:
    v179 = *(v176 + 16);
    *v175 = *v176;
    *(v175 + 16) = v179;
    return a1;
  }

  v177 = *(v176 + 8);
  if (!v177)
  {
    sub_1DCB0E9D8(v175, &qword_1ECCA4B30, &qword_1DD0EE970);
    goto LABEL_93;
  }

  *v175 = *v176;
  *(v175 + 8) = v177;

  v178 = *(v176 + 24);
  *(v175 + 16) = *(v176 + 16);
  *(v175 + 24) = v178;

  return a1;
}

void sub_1DCD25EF8(uint64_t a1)
{
  sub_1DCD25FB8(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCD25FB8(uint64_t a1)
{
  if (!qword_1EDE49E20)
  {
    type metadata accessor for PluginAction(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE49E20);
    }
  }
}

uint64_t dispatch thunk of AnyValueFlow.onAsync(input:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_6(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AnyValueFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return v6(v4);
}

_BYTE *sub_1DCD26594(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD26684()
{
  result = qword_1ECCA4B38;
  if (!qword_1ECCA4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B38);
  }

  return result;
}

unint64_t sub_1DCD266DC()
{
  result = qword_1ECCA4B40;
  if (!qword_1ECCA4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B40);
  }

  return result;
}

unint64_t sub_1DCD26734()
{
  result = qword_1ECCA4B48;
  if (!qword_1ECCA4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B48);
  }

  return result;
}

unint64_t sub_1DCD2678C()
{
  result = qword_1ECCA4B50;
  if (!qword_1ECCA4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B50);
  }

  return result;
}

unint64_t sub_1DCD267E4()
{
  result = qword_1ECCA4B58;
  if (!qword_1ECCA4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B58);
  }

  return result;
}

unint64_t sub_1DCD2683C()
{
  result = qword_1ECCA4B60;
  if (!qword_1ECCA4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B60);
  }

  return result;
}

unint64_t sub_1DCD26894()
{
  result = qword_1ECCA4B68;
  if (!qword_1ECCA4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B68);
  }

  return result;
}

unint64_t sub_1DCD268EC()
{
  result = qword_1ECCA4B70;
  if (!qword_1ECCA4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B70);
  }

  return result;
}

unint64_t sub_1DCD26944()
{
  result = qword_1ECCA4B78;
  if (!qword_1ECCA4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B78);
  }

  return result;
}

unint64_t sub_1DCD2699C()
{
  result = qword_1ECCA4B80;
  if (!qword_1ECCA4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B80);
  }

  return result;
}

unint64_t sub_1DCD269F4()
{
  result = qword_1ECCA4B88;
  if (!qword_1ECCA4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B88);
  }

  return result;
}

unint64_t sub_1DCD26A4C()
{
  result = qword_1ECCA4B90;
  if (!qword_1ECCA4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B90);
  }

  return result;
}

unint64_t sub_1DCD26AA4()
{
  result = qword_1ECCA4B98;
  if (!qword_1ECCA4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4B98);
  }

  return result;
}

unint64_t sub_1DCD26AFC()
{
  result = qword_1ECCA4BA0;
  if (!qword_1ECCA4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BA0);
  }

  return result;
}

unint64_t sub_1DCD26B54()
{
  result = qword_1ECCA4BA8;
  if (!qword_1ECCA4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BA8);
  }

  return result;
}

unint64_t sub_1DCD26BAC()
{
  result = qword_1ECCA4BB0;
  if (!qword_1ECCA4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BB0);
  }

  return result;
}

unint64_t sub_1DCD26C04()
{
  result = qword_1ECCA4BB8;
  if (!qword_1ECCA4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BB8);
  }

  return result;
}

unint64_t sub_1DCD26C5C()
{
  result = qword_1ECCA4BC0;
  if (!qword_1ECCA4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BC0);
  }

  return result;
}

unint64_t sub_1DCD26CB4()
{
  result = qword_1ECCA4BC8;
  if (!qword_1ECCA4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BC8);
  }

  return result;
}

unint64_t sub_1DCD26D0C()
{
  result = qword_1ECCA4BD0;
  if (!qword_1ECCA4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BD0);
  }

  return result;
}

unint64_t sub_1DCD26D64()
{
  result = qword_1ECCA4BD8;
  if (!qword_1ECCA4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BD8);
  }

  return result;
}

unint64_t sub_1DCD26DBC()
{
  result = qword_1ECCA4BE0;
  if (!qword_1ECCA4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BE0);
  }

  return result;
}

unint64_t sub_1DCD26E14()
{
  result = qword_1ECCA4BE8;
  if (!qword_1ECCA4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BE8);
  }

  return result;
}

unint64_t sub_1DCD26E6C()
{
  result = qword_1ECCA4BF0;
  if (!qword_1ECCA4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BF0);
  }

  return result;
}

unint64_t sub_1DCD26EC4()
{
  result = qword_1ECCA4BF8;
  if (!qword_1ECCA4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4BF8);
  }

  return result;
}

unint64_t sub_1DCD26F1C()
{
  result = qword_1EDE4DD38;
  if (!qword_1EDE4DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD38);
  }

  return result;
}

unint64_t sub_1DCD26F74()
{
  result = qword_1EDE4DD40;
  if (!qword_1EDE4DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD40);
  }

  return result;
}

unint64_t sub_1DCD26FCC()
{
  result = qword_1EDE4DD28;
  if (!qword_1EDE4DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD28);
  }

  return result;
}

unint64_t sub_1DCD27024()
{
  result = qword_1EDE4DD30;
  if (!qword_1EDE4DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD30);
  }

  return result;
}

unint64_t sub_1DCD2707C()
{
  result = qword_1EDE4DD10;
  if (!qword_1EDE4DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD10);
  }

  return result;
}

unint64_t sub_1DCD270D4()
{
  result = qword_1EDE4DD18;
  if (!qword_1EDE4DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD18);
  }

  return result;
}

unint64_t sub_1DCD2712C()
{
  result = qword_1EDE4D980;
  if (!qword_1EDE4D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D980);
  }

  return result;
}

unint64_t sub_1DCD27184()
{
  result = qword_1EDE4D988;
  if (!qword_1EDE4D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D988);
  }

  return result;
}

uint64_t objectdestroy_234Tm()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_68_8(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

uint64_t Abort.init(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DCBD0994();
  v6 = swift_allocError();
  *v7 = a1;
  v7[1] = a2;
  *a3 = v6;
  type metadata accessor for FlowActionType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Abort.init(reason:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_35_19();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Yield.init()@<X0>(void (**a1)()@<X8>)
{
  *a1 = nullsub_1;
  a1[1] = 0;
  OUTLINED_FUNCTION_35_19();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Delegate.init(to:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCAFF9E8(a1, a2);
  OUTLINED_FUNCTION_35_19();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Conclude.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, a1, a2);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_1DCD2768C(v12, v14, 0, a2, a3);
  return (*(v7 + 8))(a1, a2);
}

uint64_t Conclude.init<A>()@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
  v3 = *(v2 + 32);
  sub_1DCBD0C2C(v5, a1 + v3);
  *(a1 + *(v2 + 36)) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1DCBD0C9C(v5);
  sub_1DCBD0C2C(a1 + v3, a1 + 32);
  *(a1 + 72) = 0;
  OUTLINED_FUNCTION_35_19();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCD2768C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a3;
  v9 = type metadata accessor for Conclude(0, a4, a3, a4);
  v10 = v9[7];
  v11 = *(a4 - 8);
  v12 = *(v11 + 16);
  v12(a5 + v10, a1, a4);
  v13 = v9[8];
  sub_1DCBD0C2C(a2, a5 + v13);
  *(a5 + v9[9]) = v16;
  *(a5 + 24) = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
  v12(boxed_opaque_existential_1Tm, a5 + v10, a4);
  sub_1DCBD0C9C(a2);
  (*(v11 + 8))(a1, a4);
  sub_1DCBD0C2C(a5 + v13, a5 + 32);
  *(a5 + 72) = v16;
  type metadata accessor for FlowActionType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Conclude.followedBy(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  (*(v14 + 16))(v11 - v10, v3 + *(v13 + 28), v7);
  sub_1DCB17CA0(a1, v16);
  return sub_1DCD2768C(v12, v16, *(v3 + *(a2 + 36)), v7, a3);
}

uint64_t sub_1DCD278D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  (*(v12 + 16))(v9 - v8, v2 + *(v11 + 28), v5);
  sub_1DCBD0C2C(v2 + *(a1 + 32), v14);
  return sub_1DCD2768C(v10, v14, 1, v5, a2);
}

uint64_t sub_1DCD279D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowActionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Yield.onYield(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for FlowActionType(0);
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

char *initializeBufferWithCopyOfBuffer for FlowActionType(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = a2[3];
      *(a1 + 3) = v12;
      (**(v12 - 1))(a1, a2);
      v13 = a2[7];
      if (v13)
      {
        v14 = a2[8];
        *(a1 + 7) = v13;
        *(a1 + 8) = v14;
        (**(v13 - 1))(a1 + 32, a2 + 4);
      }

      else
      {
        v34 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v34;
        *(a1 + 8) = a2[8];
      }

      a1[72] = *(a2 + 72);
      break;
    case 2u:
      v9 = *a2;
      v10 = v9;
      *a1 = v9;
      break;
    case 3u:
      v11 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v11;
      sub_1DD0DCF8C();
    case 4u:
      v6 = *a2;
      v7 = a2[1];
      v8 = *(a2 + 16);
      sub_1DCD1B9B8(v6, v7, v8);
      *a1 = v6;
      *(a1 + 1) = v7;
      a1[16] = v8;
      break;
    case 5u:
      v15 = a2[3];
      *(a1 + 3) = v15;
      (**(v15 - 1))(a1, a2);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
      v17 = &a1[v16];
      v18 = a2 + v16;
      v19 = *(v18 + 1);
      *v17 = *v18;
      *(v17 + 1) = v19;
      v143 = type metadata accessor for PluginAction(0);
      v20 = v143[5];
      v21 = &v17[v20];
      v22 = &v18[v20];
      v23 = sub_1DD0DB04C();
      v24 = *(*(v23 - 8) + 16);

      v141 = v24;
      v142 = v23;
      v24(v21, v22, v23);
      v25 = type metadata accessor for Input(0);
      v26 = v25[5];
      v27 = &v21[v26];
      v28 = &v22[v26];
      v29 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 16))(v27, v28, v30);
          goto LABEL_37;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(v27, v28, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v27[*(v42 + 48)] = *&v28[*(v42 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v37 = *(v28 + 1);
          *v27 = *v28;
          *(v27 + 1) = v37;
          *(v27 + 2) = *(v28 + 2);

          goto LABEL_37;
        case 3u:
          *v27 = *v28;
          swift_unknownObjectRetain();
          goto LABEL_37;
        case 4u:
          v35 = sub_1DD0DB1EC();
          (*(*(v35 - 8) + 16))(v27, v28, v35);
          goto LABEL_37;
        case 5u:
          v43 = *v28;
          *v27 = *v28;
          v44 = v43;
          goto LABEL_37;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(v27, v28, v45);
          v137 = type metadata accessor for USOParse(0);
          v46 = v137[5];
          v133 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v46], 1, v133))
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v46], &v28[v46], *(*(v47 - 8) + 64));
          }

          else
          {
            (*(*(v133 - 8) + 16))(&v27[v46], &v28[v46]);
            __swift_storeEnumTagSinglePayload(&v27[v46], 0, 1, v133);
          }

          v76 = v137[6];
          v77 = &v27[v76];
          v78 = &v28[v76];
          v79 = *(v78 + 1);
          *v77 = *v78;
          *(v77 + 1) = v79;
          v80 = v137[7];
          v81 = &v27[v80];
          v82 = &v28[v80];
          v81[4] = v82[4];
          *v81 = *v82;

          goto LABEL_37;
        case 7u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v27, v28, v38);
          v136 = type metadata accessor for USOParse(0);
          v39 = v136[5];
          v132 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v39], 1, v132))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v39], &v28[v39], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v132 - 8) + 16))(&v27[v39], &v28[v39]);
            __swift_storeEnumTagSinglePayload(&v27[v39], 0, 1, v132);
          }

          v58 = v136[6];
          v59 = &v27[v58];
          v60 = &v28[v58];
          v135 = *(v60 + 1);
          *v59 = *v60;
          *(v59 + 1) = v135;
          v61 = v136[7];
          v62 = &v27[v61];
          v63 = &v28[v61];
          v62[4] = v63[4];
          *v62 = *v63;
          v64 = type metadata accessor for LinkParse(0);
          v65 = v64[5];
          v66 = &v27[v65];
          v67 = &v28[v65];
          v139 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v139;
          v68 = v64[6];
          v69 = &v27[v68];
          v70 = &v28[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;
          v72 = v64[7];
          v73 = &v27[v72];
          v74 = &v28[v72];
          v75 = *(v74 + 1);
          *v73 = *v74;
          *(v73 + 1) = v75;

          goto LABEL_37;
        case 8u:
          v129 = v25;
          v48 = sub_1DD0DD12C();
          (*(*(v48 - 8) + 16))(v27, v28, v48);
          v49 = type metadata accessor for NLRouterParse(0);
          v50 = *(v49 + 20);
          v51 = &v27[v50];
          v52 = &v28[v50];
          v53 = *(v52 + 1);
          *v51 = *v52;
          *(v51 + 1) = v53;
          v130 = v49;
          v54 = *(v49 + 24);
          v138 = &v27[v54];
          v55 = &v28[v54];
          v56 = type metadata accessor for USOParse(0);

          v134 = v55;
          if (__swift_getEnumTagSinglePayload(v55, 1, v56))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v138, v55, *(*(v57 - 8) + 64));
            v25 = v129;
          }

          else
          {
            v83 = sub_1DD0DB4BC();
            (*(*(v83 - 8) + 16))(v138, v55, v83);
            v128 = v56;
            v84 = *(v56 + 20);
            v85 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v134[v84], 1, v85))
            {
              v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v138[v84], &v134[v84], *(*(v86 - 8) + 64));
            }

            else
            {
              (*(*(v85 - 8) + 16))(&v138[v84], &v134[v84], v85);
              __swift_storeEnumTagSinglePayload(&v138[v84], 0, 1, v85);
            }

            v25 = v129;
            v87 = *(v128 + 24);
            v88 = &v138[v87];
            v89 = &v134[v87];
            v90 = *(v89 + 1);
            *v88 = *v89;
            *(v88 + 1) = v90;
            v91 = *(v128 + 28);
            v92 = &v138[v91];
            v93 = &v134[v91];
            v92[4] = v93[4];
            *v92 = *v93;

            __swift_storeEnumTagSinglePayload(v138, 0, 1, v128);
          }

          v94 = *(v130 + 28);
          v95 = *&v28[v94];
          *&v27[v94] = v95;
          v96 = v95;
          goto LABEL_37;
        case 9u:
          v36 = sub_1DD0DD08C();
          (*(*(v36 - 8) + 16))(v27, v28, v36);
LABEL_37:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v27, v28, *(*(v29 - 8) + 64));
          break;
      }

      *&v21[v25[6]] = *&v22[v25[6]];
      v97 = v25[7];
      v98 = &v21[v97];
      v99 = &v22[v97];
      v100 = *&v22[v97 + 24];

      if (v100)
      {
        v101 = *(v99 + 4);
        *(v98 + 3) = v100;
        *(v98 + 4) = v101;
        (**(v100 - 8))(v98, v99, v100);
      }

      else
      {
        v102 = *(v99 + 1);
        *v98 = *v99;
        *(v98 + 1) = v102;
        *(v98 + 4) = *(v99 + 4);
      }

      v21[v25[8]] = v22[v25[8]];
      *&v17[v143[6]] = *&v18[v143[6]];
      v103 = v143[7];
      v104 = *&v18[v103];
      *&v17[v103] = v104;
      v105 = v143[8];
      v106 = &v17[v105];
      v107 = &v18[v105];
      v108 = *(v107 + 1);
      *v106 = *v107;
      *(v106 + 1) = v108;
      v109 = v143[9];
      v110 = &v17[v109];
      v111 = &v18[v109];
      v112 = type metadata accessor for ActionParaphrase(0);

      v113 = v104;

      if (__swift_getEnumTagSinglePayload(v111, 1, v112))
      {
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v110, v111, *(*(v114 - 8) + 64));
        v115 = v142;
      }

      else
      {
        v116 = *(v111 + 1);
        *v110 = *v111;
        *(v110 + 1) = v116;
        v117 = *(v112 + 20);
        v118 = &v110[v117];
        v119 = &v111[v117];
        v120 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v119, 1, v120))
        {
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v118, v119, *(*(v121 - 8) + 64));
        }

        else
        {
          v122 = *(v119 + 1);
          *v118 = *v119;
          *(v118 + 1) = v122;
          v123 = *(v119 + 3);
          *(v118 + 2) = *(v119 + 2);
          *(v118 + 3) = v123;
          v140 = *(v120 + 24);
          v124 = sub_1DD0DB66C();
          v131 = *(*(v124 - 8) + 16);

          v131(&v118[v140], &v119[v140], v124);
          __swift_storeEnumTagSinglePayload(v118, 0, 1, v120);
        }

        v115 = v142;
        __swift_storeEnumTagSinglePayload(v110, 0, 1, v112);
      }

      v125 = v143[10];
      if (__swift_getEnumTagSinglePayload(&v18[v125], 1, v115))
      {
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&v17[v125], &v18[v125], *(*(v126 - 8) + 64));
      }

      else
      {
        v141(&v17[v125], &v18[v125], v115);
        __swift_storeEnumTagSinglePayload(&v17[v125], 0, 1, v115);
      }

      v17[v143[11]] = v18[v143[11]];
      break;
    case 6u:
      v31 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v31;
      v32 = a2[2];
      v33 = a2[3];
      *(a1 + 2) = v32;
      *(a1 + 3) = v33;

      break;
    default:
      v5 = *(a2 + 3);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for FlowActionType(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = a1;
      goto LABEL_14;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      if (*(a1 + 56))
      {
        v3 = (a1 + 32);
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1Tm(v3);
      }

      break;
    case 2u:
      v7 = *a1;

      break;
    case 3u:

      break;
    case 4u:
      v4 = *a1;
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);

      sub_1DCD21390(v4, v5, v6);
      break;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);

      v9 = type metadata accessor for PluginAction(0);
      v10 = v8 + v9[5];
      v11 = sub_1DD0DB04C();
      v41 = *(*(v11 - 8) + 8);
      v41(v10, v11);
      v12 = type metadata accessor for Input(0);
      v13 = (v10 + *(v12 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v14 = sub_1DD0DC76C();
          goto LABEL_22;
        case 1u:
          v18 = sub_1DD0DC76C();
          (*(*(v18 - 8) + 8))(v13, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_32;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v14 = sub_1DD0DB1EC();
          goto LABEL_22;
        case 5u:
          v19 = *v13;
          goto LABEL_38;
        case 6u:
          v20 = sub_1DD0DB4BC();
          (*(*(v20 - 8) + 8))(v13, v20);
          v21 = *(type metadata accessor for USOParse(0) + 20);
          v22 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v13 + v21, 1, v22))
          {
            (*(*(v22 - 8) + 8))(v13 + v21, v22);
          }

          goto LABEL_32;
        case 7u:
          v15 = sub_1DD0DB4BC();
          (*(*(v15 - 8) + 8))(v13, v15);
          v16 = *(type metadata accessor for USOParse(0) + 20);
          v17 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v13 + v16, 1, v17))
          {
            (*(*(v17 - 8) + 8))(v13 + v16, v17);
          }

          type metadata accessor for LinkParse(0);

LABEL_32:

          break;
        case 8u:
          v23 = sub_1DD0DD12C();
          (*(*(v23 - 8) + 8))(v13, v23);
          v24 = type metadata accessor for NLRouterParse(0);

          v25 = v13 + *(v24 + 24);
          v26 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v25, 1, v26))
          {
            v27 = sub_1DD0DB4BC();
            (*(*(v27 - 8) + 8))(v25, v27);
            v28 = *(v26 + 20);
            v29 = sub_1DD0DB3EC();
            v40 = v28;
            v30 = v25 + v28;
            v31 = v29;
            if (!__swift_getEnumTagSinglePayload(v30, 1, v29))
            {
              (*(*(v31 - 8) + 8))(v25 + v40, v31);
            }
          }

          v19 = *(v13 + *(v24 + 28));
LABEL_38:

          break;
        case 9u:
          v14 = sub_1DD0DD08C();
LABEL_22:
          (*(*(v14 - 8) + 8))(v13, v14);
          break;
        default:
          break;
      }

      v32 = (v10 + *(v12 + 28));
      if (v32[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }

      v33 = v8 + v9[9];
      v34 = type metadata accessor for ActionParaphrase(0);
      if (!__swift_getEnumTagSinglePayload(v33, 1, v34))
      {

        v35 = v33 + *(v34 + 20);
        v36 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v35, 1, v36))
        {

          v37 = *(v36 + 24);
          v38 = sub_1DD0DB66C();
          (*(*(v38 - 8) + 8))(v35 + v37, v38);
        }
      }

      v39 = v9[10];
      if (!__swift_getEnumTagSinglePayload(v8 + v39, 1, v11))
      {

        v41(v8 + v39, v11);
      }

      break;
    case 6u:

      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for FlowActionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *(a2 + 24);
      *(a1 + 24) = v12;
      (**(v12 - 8))(a1, a2);
      v13 = *(a2 + 56);
      if (v13)
      {
        v14 = *(a2 + 64);
        *(a1 + 56) = v13;
        *(a1 + 64) = v14;
        (**(v13 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v34 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v34;
        *(a1 + 64) = *(a2 + 64);
      }

      *(a1 + 72) = *(a2 + 72);
      break;
    case 2u:
      v9 = *a2;
      v10 = v9;
      *a1 = v9;
      break;
    case 3u:
      v11 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v11;
      sub_1DD0DCF8C();
    case 4u:
      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = *(a2 + 16);
      sub_1DCD1B9B8(v6, v7, v8);
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = v8;
      break;
    case 5u:
      v15 = *(a2 + 24);
      *(a1 + 24) = v15;
      (**(v15 - 8))(a1, a2);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
      v17 = (a1 + v16);
      v18 = (a2 + v16);
      v19 = *(v18 + 1);
      *v17 = *v18;
      *(v17 + 1) = v19;
      v144 = type metadata accessor for PluginAction(0);
      v20 = v144[5];
      v21 = &v17[v20];
      v22 = &v18[v20];
      v23 = sub_1DD0DB04C();
      v24 = *(*(v23 - 8) + 16);

      v142 = v24;
      v143 = v23;
      v24(v21, v22, v23);
      v25 = type metadata accessor for Input(0);
      v26 = v25[5];
      v27 = &v21[v26];
      v28 = &v22[v26];
      v29 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 16))(v27, v28, v30);
          goto LABEL_35;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 16))(v27, v28, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v27[*(v42 + 48)] = *&v28[*(v42 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v37 = *(v28 + 1);
          *v27 = *v28;
          *(v27 + 1) = v37;
          *(v27 + 2) = *(v28 + 2);

          goto LABEL_35;
        case 3u:
          *v27 = *v28;
          swift_unknownObjectRetain();
          goto LABEL_35;
        case 4u:
          v35 = sub_1DD0DB1EC();
          (*(*(v35 - 8) + 16))(v27, v28, v35);
          goto LABEL_35;
        case 5u:
          v43 = *v28;
          *v27 = *v28;
          v44 = v43;
          goto LABEL_35;
        case 6u:
          v45 = sub_1DD0DB4BC();
          (*(*(v45 - 8) + 16))(v27, v28, v45);
          v138 = type metadata accessor for USOParse(0);
          v46 = v138[5];
          v134 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v46], 1, v134))
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v46], &v28[v46], *(*(v47 - 8) + 64));
          }

          else
          {
            (*(*(v134 - 8) + 16))(&v27[v46], &v28[v46]);
            __swift_storeEnumTagSinglePayload(&v27[v46], 0, 1, v134);
          }

          v76 = v138[6];
          v77 = &v27[v76];
          v78 = &v28[v76];
          v79 = *(v78 + 1);
          *v77 = *v78;
          *(v77 + 1) = v79;
          v80 = v138[7];
          v81 = &v27[v80];
          v82 = &v28[v80];
          v81[4] = v82[4];
          *v81 = *v82;

          goto LABEL_35;
        case 7u:
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 16))(v27, v28, v38);
          v137 = type metadata accessor for USOParse(0);
          v39 = v137[5];
          v133 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v39], 1, v133))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v39], &v28[v39], *(*(v40 - 8) + 64));
          }

          else
          {
            (*(*(v133 - 8) + 16))(&v27[v39], &v28[v39]);
            __swift_storeEnumTagSinglePayload(&v27[v39], 0, 1, v133);
          }

          v58 = v137[6];
          v59 = &v27[v58];
          v60 = &v28[v58];
          v136 = *(v60 + 1);
          *v59 = *v60;
          *(v59 + 1) = v136;
          v61 = v137[7];
          v62 = &v27[v61];
          v63 = &v28[v61];
          v62[4] = v63[4];
          *v62 = *v63;
          v64 = type metadata accessor for LinkParse(0);
          v65 = v64[5];
          v66 = &v27[v65];
          v67 = &v28[v65];
          v140 = *(v67 + 1);
          *v66 = *v67;
          *(v66 + 1) = v140;
          v68 = v64[6];
          v69 = &v27[v68];
          v70 = &v28[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;
          v72 = v64[7];
          v73 = &v27[v72];
          v74 = &v28[v72];
          v75 = *(v74 + 1);
          *v73 = *v74;
          *(v73 + 1) = v75;

          goto LABEL_35;
        case 8u:
          v130 = v25;
          v48 = sub_1DD0DD12C();
          (*(*(v48 - 8) + 16))(v27, v28, v48);
          v49 = type metadata accessor for NLRouterParse(0);
          v50 = *(v49 + 20);
          v51 = &v27[v50];
          v52 = &v28[v50];
          v53 = *(v52 + 1);
          *v51 = *v52;
          *(v51 + 1) = v53;
          v131 = v49;
          v54 = *(v49 + 24);
          v139 = &v27[v54];
          v55 = &v28[v54];
          v56 = type metadata accessor for USOParse(0);

          v135 = v55;
          if (__swift_getEnumTagSinglePayload(v55, 1, v56))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v139, v55, *(*(v57 - 8) + 64));
            v25 = v130;
          }

          else
          {
            v83 = sub_1DD0DB4BC();
            (*(*(v83 - 8) + 16))(v139, v55, v83);
            v129 = v56;
            v84 = *(v56 + 20);
            v85 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v135[v84], 1, v85))
            {
              v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v139[v84], &v135[v84], *(*(v86 - 8) + 64));
            }

            else
            {
              (*(*(v85 - 8) + 16))(&v139[v84], &v135[v84], v85);
              __swift_storeEnumTagSinglePayload(&v139[v84], 0, 1, v85);
            }

            v25 = v130;
            v87 = *(v129 + 24);
            v88 = &v139[v87];
            v89 = &v135[v87];
            v90 = *(v89 + 1);
            *v88 = *v89;
            *(v88 + 1) = v90;
            v91 = *(v129 + 28);
            v92 = &v139[v91];
            v93 = &v135[v91];
            v92[4] = v93[4];
            *v92 = *v93;

            __swift_storeEnumTagSinglePayload(v139, 0, 1, v129);
          }

          v94 = *(v131 + 28);
          v95 = *&v28[v94];
          *&v27[v94] = v95;
          v96 = v95;
          goto LABEL_35;
        case 9u:
          v36 = sub_1DD0DD08C();
          (*(*(v36 - 8) + 16))(v27, v28, v36);
LABEL_35:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v27, v28, *(*(v29 - 8) + 64));
          break;
      }

      *&v21[v25[6]] = *&v22[v25[6]];
      v97 = v25[7];
      v98 = &v21[v97];
      v99 = &v22[v97];
      v100 = *&v22[v97 + 24];

      if (v100)
      {
        v101 = *(v99 + 4);
        *(v98 + 3) = v100;
        *(v98 + 4) = v101;
        (**(v100 - 8))(v98, v99, v100);
      }

      else
      {
        v102 = *(v99 + 1);
        *v98 = *v99;
        *(v98 + 1) = v102;
        *(v98 + 4) = *(v99 + 4);
      }

      v21[v25[8]] = v22[v25[8]];
      *&v17[v144[6]] = *&v18[v144[6]];
      v103 = v144[7];
      v104 = *&v18[v103];
      *&v17[v103] = v104;
      v105 = v144[8];
      v106 = &v17[v105];
      v107 = &v18[v105];
      v108 = *(v107 + 1);
      *v106 = *v107;
      *(v106 + 1) = v108;
      v109 = v144[9];
      v110 = &v17[v109];
      v111 = &v18[v109];
      v112 = type metadata accessor for ActionParaphrase(0);

      v113 = v104;

      if (__swift_getEnumTagSinglePayload(v111, 1, v112))
      {
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
        memcpy(v110, v111, *(*(v114 - 8) + 64));
        v116 = v143;
        v115 = v144;
      }

      else
      {
        v117 = *(v111 + 1);
        *v110 = *v111;
        *(v110 + 1) = v117;
        v118 = *(v112 + 20);
        v119 = &v110[v118];
        v120 = &v111[v118];
        v121 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

        if (__swift_getEnumTagSinglePayload(v120, 1, v121))
        {
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
          memcpy(v119, v120, *(*(v122 - 8) + 64));
        }

        else
        {
          v123 = *(v120 + 1);
          *v119 = *v120;
          *(v119 + 1) = v123;
          v124 = *(v120 + 3);
          *(v119 + 2) = *(v120 + 2);
          *(v119 + 3) = v124;
          v141 = *(v121 + 24);
          v125 = sub_1DD0DB66C();
          v132 = *(*(v125 - 8) + 16);

          v132(&v119[v141], &v120[v141], v125);
          __swift_storeEnumTagSinglePayload(v119, 0, 1, v121);
        }

        v116 = v143;
        __swift_storeEnumTagSinglePayload(v110, 0, 1, v112);
        v115 = v144;
      }

      v126 = v115[10];
      if (__swift_getEnumTagSinglePayload(&v18[v126], 1, v116))
      {
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        memcpy(&v17[v126], &v18[v126], *(*(v127 - 8) + 64));
      }

      else
      {
        v142(&v17[v126], &v18[v126], v116);
        __swift_storeEnumTagSinglePayload(&v17[v126], 0, 1, v116);
      }

      v17[v115[11]] = v18[v115[11]];
      break;
    case 6u:
      v31 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v31;
      v32 = *(a2 + 16);
      v33 = *(a2 + 24);
      *(a1 + 16) = v32;
      *(a1 + 24) = v33;

      break;
    default:
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FlowActionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCD2A9D8(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v12 = *(a2 + 24);
        *(a1 + 24) = v12;
        (**(v12 - 8))(a1, a2);
        v13 = *(a2 + 56);
        if (v13)
        {
          *(a1 + 56) = v13;
          *(a1 + 64) = *(a2 + 64);
          (**(v13 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v29 = *(a2 + 32);
          v30 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v29;
          *(a1 + 48) = v30;
        }

        *(a1 + 72) = *(a2 + 72);
        break;
      case 2u:
        v9 = *a2;
        v10 = v9;
        *a1 = v9;
        break;
      case 3u:
        v11 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v11;
        sub_1DD0DCF8C();
      case 4u:
        v6 = *a2;
        v7 = *(a2 + 8);
        v8 = *(a2 + 16);
        sub_1DCD1B9B8(v6, v7, v8);
        *a1 = v6;
        *(a1 + 8) = v7;
        *(a1 + 16) = v8;
        break;
      case 5u:
        v14 = *(a2 + 24);
        *(a1 + 24) = v14;
        (**(v14 - 8))(a1, a2);
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
        v16 = (a1 + v15);
        v17 = (a2 + v15);
        *v16 = *v17;
        *(v16 + 1) = *(v17 + 1);
        v129 = type metadata accessor for PluginAction(0);
        v18 = v129[5];
        v19 = &v16[v18];
        v20 = &v17[v18];
        v21 = sub_1DD0DB04C();
        v22 = *(*(v21 - 8) + 16);

        v127 = v22;
        v128 = v21;
        v22(v19, v20, v21);
        v23 = type metadata accessor for Input(0);
        v24 = v23[5];
        v25 = &v19[v24];
        v26 = &v20[v24];
        v27 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v28 = sub_1DD0DC76C();
            (*(*(v28 - 8) + 16))(v25, v26, v28);
            goto LABEL_36;
          case 1u:
            v36 = sub_1DD0DC76C();
            (*(*(v36 - 8) + 16))(v25, v26, v36);
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v25[*(v37 + 48)] = *&v26[*(v37 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v25 = *v26;
            *(v25 + 1) = *(v26 + 1);
            *(v25 + 2) = *(v26 + 2);

            goto LABEL_36;
          case 3u:
            *v25 = *v26;
            swift_unknownObjectRetain();
            goto LABEL_36;
          case 4u:
            v31 = sub_1DD0DB1EC();
            (*(*(v31 - 8) + 16))(v25, v26, v31);
            goto LABEL_36;
          case 5u:
            v38 = *v26;
            *v25 = *v26;
            v39 = v38;
            goto LABEL_36;
          case 6u:
            v40 = sub_1DD0DB4BC();
            (*(*(v40 - 8) + 16))(v25, v26, v40);
            v124 = type metadata accessor for USOParse(0);
            v41 = v124[5];
            v121 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v41], 1, v121))
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v41], &v26[v41], *(*(v42 - 8) + 64));
            }

            else
            {
              (*(*(v121 - 8) + 16))(&v25[v41], &v26[v41]);
              __swift_storeEnumTagSinglePayload(&v25[v41], 0, 1, v121);
            }

            v69 = v124[6];
            v70 = &v25[v69];
            v71 = &v26[v69];
            *v70 = *v71;
            *(v70 + 1) = *(v71 + 1);
            v72 = v124[7];
            v73 = &v25[v72];
            v74 = &v26[v72];
            v75 = *v74;
            v73[4] = v74[4];
            *v73 = v75;

            goto LABEL_36;
          case 7u:
            v33 = sub_1DD0DB4BC();
            (*(*(v33 - 8) + 16))(v25, v26, v33);
            v123 = type metadata accessor for USOParse(0);
            v34 = v123[5];
            v120 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v34], 1, v120))
            {
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v34], &v26[v34], *(*(v35 - 8) + 64));
            }

            else
            {
              (*(*(v120 - 8) + 16))(&v25[v34], &v26[v34]);
              __swift_storeEnumTagSinglePayload(&v25[v34], 0, 1, v120);
            }

            v52 = v123[6];
            v53 = &v25[v52];
            v54 = &v26[v52];
            *v53 = *v54;
            *(v53 + 1) = *(v54 + 1);
            v55 = v123[7];
            v56 = &v25[v55];
            v57 = &v26[v55];
            v58 = *v57;
            v56[4] = v57[4];
            *v56 = v58;
            v59 = type metadata accessor for LinkParse(0);
            v60 = v59[5];
            v61 = &v25[v60];
            v62 = &v26[v60];
            *v61 = *v62;
            *(v61 + 1) = *(v62 + 1);
            v63 = v59[6];
            v64 = &v25[v63];
            v65 = &v26[v63];
            *v64 = *v65;
            *(v64 + 1) = *(v65 + 1);
            v66 = v59[7];
            v67 = &v25[v66];
            v68 = &v26[v66];
            *v67 = *v68;
            *(v67 + 1) = *(v68 + 1);

            goto LABEL_36;
          case 8u:
            v117 = v23;
            v43 = sub_1DD0DD12C();
            (*(*(v43 - 8) + 16))(v25, v26, v43);
            v44 = type metadata accessor for NLRouterParse(0);
            v45 = *(v44 + 20);
            v46 = &v25[v45];
            v47 = &v26[v45];
            *v46 = *v47;
            *(v46 + 1) = *(v47 + 1);
            v118 = v44;
            v48 = *(v44 + 24);
            v125 = &v25[v48];
            v49 = &v26[v48];
            v50 = type metadata accessor for USOParse(0);

            v122 = v49;
            if (__swift_getEnumTagSinglePayload(v49, 1, v50))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v125, v49, *(*(v51 - 8) + 64));
              v23 = v117;
            }

            else
            {
              v76 = sub_1DD0DB4BC();
              (*(*(v76 - 8) + 16))(v125, v49, v76);
              v116 = v50;
              v77 = *(v50 + 20);
              v78 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v122[v77], 1, v78))
              {
                v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v125[v77], &v122[v77], *(*(v79 - 8) + 64));
              }

              else
              {
                (*(*(v78 - 8) + 16))(&v125[v77], &v122[v77], v78);
                __swift_storeEnumTagSinglePayload(&v125[v77], 0, 1, v78);
              }

              v23 = v117;
              v80 = *(v116 + 24);
              v81 = &v125[v80];
              v82 = &v122[v80];
              *v81 = *v82;
              *(v81 + 1) = *(v82 + 1);
              v83 = *(v116 + 28);
              v84 = &v125[v83];
              v85 = &v122[v83];
              v86 = *v85;
              v84[4] = v85[4];
              *v84 = v86;

              __swift_storeEnumTagSinglePayload(v125, 0, 1, v116);
            }

            v87 = *(v118 + 28);
            v88 = *&v26[v87];
            *&v25[v87] = v88;
            v89 = v88;
            goto LABEL_36;
          case 9u:
            v32 = sub_1DD0DD08C();
            (*(*(v32 - 8) + 16))(v25, v26, v32);
LABEL_36:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v25, v26, *(*(v27 - 8) + 64));
            break;
        }

        *&v19[v23[6]] = *&v20[v23[6]];
        v90 = v23[7];
        v91 = &v19[v90];
        v92 = &v20[v90];
        v93 = *&v20[v90 + 24];

        if (v93)
        {
          *(v91 + 3) = v93;
          *(v91 + 4) = *(v92 + 4);
          (**(v93 - 8))(v91, v92, v93);
        }

        else
        {
          v94 = *v92;
          v95 = *(v92 + 1);
          *(v91 + 4) = *(v92 + 4);
          *v91 = v94;
          *(v91 + 1) = v95;
        }

        v19[v23[8]] = v20[v23[8]];
        *&v16[v129[6]] = *&v17[v129[6]];
        v96 = v129[7];
        v97 = *&v17[v96];
        *&v16[v96] = v97;
        v98 = v129[8];
        v99 = &v16[v98];
        v100 = &v17[v98];
        *v99 = *v100;
        *(v99 + 1) = *(v100 + 1);
        v101 = v129[9];
        v102 = &v16[v101];
        v103 = &v17[v101];
        v104 = type metadata accessor for ActionParaphrase(0);

        v105 = v97;

        if (__swift_getEnumTagSinglePayload(v103, 1, v104))
        {
          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
          memcpy(v102, v103, *(*(v106 - 8) + 64));
        }

        else
        {
          *v102 = *v103;
          *(v102 + 1) = *(v103 + 1);
          v107 = *(v104 + 20);
          v108 = &v102[v107];
          v109 = &v103[v107];
          v110 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

          if (__swift_getEnumTagSinglePayload(v109, 1, v110))
          {
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
            memcpy(v108, v109, *(*(v111 - 8) + 64));
          }

          else
          {
            *v108 = *v109;
            *(v108 + 1) = *(v109 + 1);
            *(v108 + 2) = *(v109 + 2);
            *(v108 + 3) = *(v109 + 3);
            v126 = *(v110 + 24);
            v112 = sub_1DD0DB66C();
            v119 = *(*(v112 - 8) + 16);

            v119(&v108[v126], &v109[v126], v112);
            __swift_storeEnumTagSinglePayload(v108, 0, 1, v110);
          }

          __swift_storeEnumTagSinglePayload(v102, 0, 1, v104);
        }

        v113 = v129[10];
        if (__swift_getEnumTagSinglePayload(&v17[v113], 1, v128))
        {
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
          memcpy(&v16[v113], &v17[v113], *(*(v114 - 8) + 64));
        }

        else
        {
          v127(&v16[v113], &v17[v113], v128);
          __swift_storeEnumTagSinglePayload(&v16[v113], 0, 1, v128);
        }

        v16[v129[11]] = v17[v129[11]];
        break;
      case 6u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);

        break;
      default:
        v5 = *(a2 + 24);
        *(a1 + 24) = v5;
        *(a1 + 32) = *(a2 + 32);
        (**(v5 - 8))(a1, a2);
        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCD2A9D8(uint64_t a1)
{
  v2 = type metadata accessor for FlowActionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *initializeWithTake for FlowActionType(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v10 = type metadata accessor for PluginAction(0);
    v11 = v10[5];
    v12 = &v8[v11];
    v13 = &v9[v11];
    v86 = sub_1DD0DB04C();
    v84 = *(*(v86 - 8) + 32);
    v84(v12, v13);
    v14 = type metadata accessor for Input(0);
    v15 = v14[5];
    v16 = &v12[v15];
    v17 = &v13[v15];
    v85 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = sub_1DD0DC76C();
        (*(*(v18 - 8) + 32))(v16, v17, v18);
        goto LABEL_27;
      case 1u:
        v29 = sub_1DD0DC76C();
        (*(*(v29 - 8) + 32))(v16, v17, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v16[*(v30 + 48)] = *&v17[*(v30 + 48)];
        goto LABEL_27;
      case 4u:
        v32 = sub_1DD0DB1EC();
        (*(*(v32 - 8) + 32))(v16, v17, v32);
        goto LABEL_27;
      case 6u:
        v81 = a1;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v16, v17, v33);
        v79 = type metadata accessor for USOParse(0);
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v34], &v17[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v16[v34], &v17[v34]);
          __swift_storeEnumTagSinglePayload(&v16[v34], 0, 1, v76);
        }

        *&v16[v79[6]] = *&v17[v79[6]];
        v43 = v79[7];
        v44 = &v16[v43];
        v45 = &v17[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_23;
      case 7u:
        v81 = a1;
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v16, v17, v36);
        v80 = type metadata accessor for USOParse(0);
        v37 = v80[5];
        v77 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v37], 1, v77))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v37], &v17[v37], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v77 - 8) + 32))(&v16[v37], &v17[v37]);
          __swift_storeEnumTagSinglePayload(&v16[v37], 0, 1, v77);
        }

        *&v16[v80[6]] = *&v17[v80[6]];
        v46 = v80[7];
        v47 = &v16[v46];
        v48 = &v17[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v16[v49[5]] = *&v17[v49[5]];
        *&v16[v49[6]] = *&v17[v49[6]];
        *&v16[v49[7]] = *&v17[v49[7]];
LABEL_23:
        swift_storeEnumTagMultiPayload();
        a1 = v81;
        break;
      case 8u:
        v73 = v14;
        v21 = sub_1DD0DD12C();
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        v22 = type metadata accessor for NLRouterParse(0);
        *&v16[*(v22 + 20)] = *&v17[*(v22 + 20)];
        v74 = v22;
        v23 = *(v22 + 24);
        v78 = &v16[v23];
        v24 = &v17[v23];
        v25 = type metadata accessor for USOParse(0);
        v75 = v24;
        v26 = v24;
        v27 = v25;
        if (__swift_getEnumTagSinglePayload(v26, 1, v25))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v78, v75, *(*(v28 - 8) + 64));
          v14 = v73;
        }

        else
        {
          v82 = a1;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v78, v75, v39);
          v72 = v27;
          v40 = *(v27 + 20);
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v75[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v78[v40], &v75[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&v78[v40], &v75[v40], v41);
            __swift_storeEnumTagSinglePayload(&v78[v40], 0, 1, v41);
          }

          v14 = v73;
          *&v78[*(v72 + 24)] = *&v75[*(v72 + 24)];
          v50 = *(v72 + 28);
          v51 = &v78[v50];
          v52 = &v75[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v78, 0, 1, v72);
          a1 = v82;
        }

        *&v16[*(v74 + 28)] = *&v17[*(v74 + 28)];
        goto LABEL_27;
      case 9u:
        v31 = sub_1DD0DD08C();
        (*(*(v31 - 8) + 32))(v16, v17, v31);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v16, v17, *(*(v85 - 8) + 64));
        break;
    }

    *&v12[v14[6]] = *&v13[v14[6]];
    v53 = v14[7];
    v54 = &v12[v53];
    v55 = &v13[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    v12[v14[8]] = v13[v14[8]];
    *&v8[v10[6]] = *&v9[v10[6]];
    *&v8[v10[7]] = *&v9[v10[7]];
    *&v8[v10[8]] = *&v9[v10[8]];
    v57 = v10[9];
    v58 = &v8[v57];
    v59 = &v9[v57];
    v60 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60))
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v58, v59, *(*(v61 - 8) + 64));
    }

    else
    {
      v83 = a1;
      *v58 = *v59;
      v62 = *(v60 + 20);
      v63 = &v58[v62];
      v64 = &v59[v62];
      v65 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v64, 1, v65))
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v63, v64, *(*(v66 - 8) + 64));
      }

      else
      {
        v67 = *(v64 + 1);
        *v63 = *v64;
        *(v63 + 1) = v67;
        v68 = *(v65 + 24);
        v69 = sub_1DD0DB66C();
        (*(*(v69 - 8) + 32))(&v63[v68], &v64[v68], v69);
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
      }

      __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
      a1 = v83;
    }

    v70 = v10[10];
    if (__swift_getEnumTagSinglePayload(&v9[v70], 1, v86))
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&v8[v70], &v9[v70], *(*(v71 - 8) + 64));
    }

    else
    {
      (v84)(&v8[v70], &v9[v70], v86);
      __swift_storeEnumTagSinglePayload(&v8[v70], 0, 1, v86);
    }

    v8[v10[11]] = v9[v10[11]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v19 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v19);
  }
}

_OWORD *assignWithTake for FlowActionType(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCD2A9D8(a1);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
    v8 = a1 + v7;
    v9 = (a2 + v7);
    *(a1 + v7) = *v9;
    v10 = type metadata accessor for PluginAction(0);
    v11 = v10[5];
    v12 = &v8[v11];
    v13 = v9 + v11;
    v86 = sub_1DD0DB04C();
    v84 = *(*(v86 - 8) + 32);
    v84(v12, v13);
    v14 = type metadata accessor for Input(0);
    v15 = v14[5];
    v16 = &v12[v15];
    v17 = &v13[v15];
    v85 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = sub_1DD0DC76C();
        (*(*(v18 - 8) + 32))(v16, v17, v18);
        goto LABEL_28;
      case 1u:
        v29 = sub_1DD0DC76C();
        (*(*(v29 - 8) + 32))(v16, v17, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v16[*(v30 + 48)] = *&v17[*(v30 + 48)];
        goto LABEL_28;
      case 4u:
        v32 = sub_1DD0DB1EC();
        (*(*(v32 - 8) + 32))(v16, v17, v32);
        goto LABEL_28;
      case 6u:
        v81 = v10;
        v33 = sub_1DD0DB4BC();
        (*(*(v33 - 8) + 32))(v16, v17, v33);
        v79 = type metadata accessor for USOParse(0);
        v34 = v79[5];
        v76 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v34], 1, v76))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v34], &v17[v34], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v76 - 8) + 32))(&v16[v34], &v17[v34]);
          __swift_storeEnumTagSinglePayload(&v16[v34], 0, 1, v76);
        }

        *&v16[v79[6]] = *&v17[v79[6]];
        v43 = v79[7];
        v44 = &v16[v43];
        v45 = &v17[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_24;
      case 7u:
        v81 = v10;
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v16, v17, v36);
        v80 = type metadata accessor for USOParse(0);
        v37 = v80[5];
        v77 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v37], 1, v77))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v37], &v17[v37], *(*(v38 - 8) + 64));
        }

        else
        {
          (*(*(v77 - 8) + 32))(&v16[v37], &v17[v37]);
          __swift_storeEnumTagSinglePayload(&v16[v37], 0, 1, v77);
        }

        *&v16[v80[6]] = *&v17[v80[6]];
        v46 = v80[7];
        v47 = &v16[v46];
        v48 = &v17[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v16[v49[5]] = *&v17[v49[5]];
        *&v16[v49[6]] = *&v17[v49[6]];
        *&v16[v49[7]] = *&v17[v49[7]];
LABEL_24:
        swift_storeEnumTagMultiPayload();
        v10 = v81;
        break;
      case 8u:
        v73 = v14;
        v21 = sub_1DD0DD12C();
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        v22 = type metadata accessor for NLRouterParse(0);
        *&v16[*(v22 + 20)] = *&v17[*(v22 + 20)];
        v74 = v22;
        v23 = *(v22 + 24);
        v78 = &v16[v23];
        v24 = &v17[v23];
        v25 = type metadata accessor for USOParse(0);
        v75 = v24;
        v26 = v24;
        v27 = v25;
        if (__swift_getEnumTagSinglePayload(v26, 1, v25))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v78, v75, *(*(v28 - 8) + 64));
          v14 = v73;
        }

        else
        {
          v82 = v10;
          v39 = sub_1DD0DB4BC();
          (*(*(v39 - 8) + 32))(v78, v75, v39);
          v72 = v27;
          v40 = *(v27 + 20);
          v41 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v75[v40], 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v78[v40], &v75[v40], *(*(v42 - 8) + 64));
          }

          else
          {
            (*(*(v41 - 8) + 32))(&v78[v40], &v75[v40], v41);
            __swift_storeEnumTagSinglePayload(&v78[v40], 0, 1, v41);
          }

          v14 = v73;
          *&v78[*(v72 + 24)] = *&v75[*(v72 + 24)];
          v50 = *(v72 + 28);
          v51 = &v78[v50];
          v52 = &v75[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v78, 0, 1, v72);
          v10 = v82;
        }

        *&v16[*(v74 + 28)] = *&v17[*(v74 + 28)];
        goto LABEL_28;
      case 9u:
        v31 = sub_1DD0DD08C();
        (*(*(v31 - 8) + 32))(v16, v17, v31);
LABEL_28:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v16, v17, *(*(v85 - 8) + 64));
        break;
    }

    *&v12[v14[6]] = *&v13[v14[6]];
    v53 = v14[7];
    v54 = &v12[v53];
    v55 = &v13[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    v12[v14[8]] = v13[v14[8]];
    *&v8[v10[6]] = *(v9 + v10[6]);
    *&v8[v10[7]] = *(v9 + v10[7]);
    *&v8[v10[8]] = *(v9 + v10[8]);
    v57 = v10[9];
    v58 = &v8[v57];
    v59 = (v9 + v57);
    v60 = type metadata accessor for ActionParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60))
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      memcpy(v58, v59, *(*(v61 - 8) + 64));
    }

    else
    {
      v83 = v10;
      *v58 = *v59;
      v62 = *(v60 + 20);
      v63 = &v58[v62];
      v64 = (v59 + v62);
      v65 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v64, 1, v65))
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v63, v64, *(*(v66 - 8) + 64));
      }

      else
      {
        v67 = v64[1];
        *v63 = *v64;
        *(v63 + 1) = v67;
        v68 = *(v65 + 24);
        v69 = sub_1DD0DB66C();
        (*(*(v69 - 8) + 32))(&v63[v68], v64 + v68, v69);
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
      }

      __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
      v10 = v83;
    }

    v70 = v10[10];
    if (__swift_getEnumTagSinglePayload(v9 + v70, 1, v86))
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy(&v8[v70], v9 + v70, *(*(v71 - 8) + 64));
    }

    else
    {
      (v84)(&v8[v70], v9 + v70, v86);
      __swift_storeEnumTagSinglePayload(&v8[v70], 0, 1, v86);
    }

    v8[v10[11]] = *(v9 + v10[11]);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v19 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v19);
}

uint64_t sub_1DCD2BE4C(uint64_t a1)
{
  v4 = "(";
  v5 = &unk_1DD0EFA58;
  v6 = &unk_1DD0EFA70;
  v7 = MEMORY[0x1E69E7CB8] + 64;
  v8 = &unk_1DD0EFA88;
  result = type metadata accessor for PluginAction(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v9 = &v3;
    v10 = &unk_1DD0EFAA0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD2BF88(uint64_t a1)
{
  result = type metadata accessor for FlowActionType(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *sub_1DCD2C068(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v213 = sub_1DD0DB04C();
  v246 = *(v213 - 8);
  v239 = *(v246 + 80);
  v206 = sub_1DD0DC76C();
  v205 = *(v206 - 8);
  v3 = *(v205 + 80);
  v204 = sub_1DD0DB1EC();
  v232 = *(v204 - 8);
  v203 = v232;
  v4 = *(v232 + 80) | v3;
  v209 = sub_1DD0DB4BC();
  v228 = *(v209 - 8);
  v244 = v228;
  v220 = *(v228 + 80);
  v208 = sub_1DD0DB3EC();
  v224 = *(v208 - 8);
  v243 = v224;
  v5 = *(v224 + 80);
  v6 = v220 & 0xF8 | v5 | 7;
  v248 = v6;
  v202 = sub_1DD0DD12C();
  v226 = *(v202 - 8);
  v201 = v226;
  v7 = *(v226 + 80);
  v200 = sub_1DD0DD08C();
  v230 = *(v200 - 8);
  v199 = v230;
  v218 = v7;
  __n = *(v230 + 80);
  v222 = v4;
  v8 = (v4 | (v7 | __n)) & 0xF8 | v6;
  v9 = v8 | v239;
  v10 = sub_1DD0DB66C();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = v13;
  v15 = ((v9 | v14) + 32) & ~(v9 | v14);
  v210 = v10;
  v211 = v9 + 16;
  v214 = v9;
  v16 = (v9 + 16) & ~v9;
  v17 = *(v246 + 64);
  v18 = *(v205 + 64);
  v198 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v232 + 64))
  {
    v18 = *(v232 + 64);
  }

  v234 = *(v228 + 64) + v5;
  v19 = *(v224 + 84);
  v194 = *(v224 + 64);
  if (v19)
  {
    v20 = *(v224 + 64);
  }

  else
  {
    v20 = *(v224 + 64) + 1;
  }

  v229 = v20;
  v233 = v20 + 7;
  v225 = v234 & ~v5;
  v21 = (v20 + 7 + v225) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v18 <= v22)
  {
    v18 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v21 + 31;
  v24 = ((((((v21 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 <= v24)
  {
    v18 = v24;
  }

  v197 = *(v226 + 64) + 7;
  v25 = *(v244 + 84);
  v195 = *(v243 + 84);
  if (v19)
  {
    v26 = v19 - 1;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= v25)
  {
    v27 = *(v244 + 84);
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  v227 = v27;
  v196 = v248 + 16;
  v28 = v9 | v13;
  v235 = v17 + v8;
  v29 = v8;
  if (v18 <= ((v23 + ((v248 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v248)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v18 = ((v23 + ((v248 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v248)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v230 + 64))
  {
    v18 = *(v230 + 64);
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v238 = v18;
  v30 = (((v18 + ((v17 + v8) & ~v8) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (((((v30 + v16 + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = v13 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v33 = 0x7FFFFFFF;
  }

  else
  {
    v33 = *(v11 + 84);
  }

  v34 = *(v11 + 64) + ((v13 + 32) & ~v13);
  v35 = v34 + ((v13 + 16) & v32) + v239;
  v36 = v239;
  if (*(v246 + 84))
  {
    v37 = *(v246 + 64);
  }

  else
  {
    v37 = v17 + 1;
  }

  v38 = v15 + v37 + ((v35 + ((v13 + 16 + v31) & v32)) & ~v239);
  if (v38 + 1 > 0x49)
  {
    v39 = v38 + 1;
  }

  else
  {
    v39 = 73;
  }

  v40 = *(*(a3 + 16) - 8);
  v41 = *(v40 + 80);
  v42 = v41;
  if ((v28 | v41) != 7 || ((v222 | v239 | v220 | v5 | v218 | __n | v13 | v41) & 0x100000) != 0 || (v43 = v39 + v41 + 1, ((*(v40 + 64) + 7 + (v43 & ~v42)) & 0xFFFFFFFFFFFFFFF8) + 41 > 0x18))
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v223 = v33;
  v219 = v34 + ((v13 + 16) & v32);
  v44 = a2;
  v45 = a2[v39];
  v46 = v45 - 7;
  v231 = v43;
  if (v45 < 7)
  {
    v48 = v5;
    v49 = v214;
  }

  else
  {
    if (v39 <= 3)
    {
      v47 = v39;
    }

    else
    {
      v47 = 4;
    }

    v48 = v5;
    v49 = v214;
    switch(v47)
    {
      case 1:
        v50 = *a2;
        goto LABEL_49;
      case 2:
        v50 = *a2;
        goto LABEL_49;
      case 3:
        v50 = *a2 | (a2[2] << 16);
        goto LABEL_49;
      case 4:
        v50 = *a2;
LABEL_49:
        if (v39 < 4)
        {
          v50 |= v46 << (8 * v39);
        }

        v45 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v237 = v32;
  v221 = *(v12 + 84);
  v240 = *(v40 + 64) + 7;
  v242 = *(a3 + 16);
  v51 = ~v28;
  v52 = ~v49;
  v53 = ~v29;
  v54 = ~v48;
  v55 = ~v248;
  v249 = ~v42;
  v250 = v40;
  switch(v45)
  {
    case 1u:
      v67 = v39;
      v68 = *(a2 + 3);
      v57 = a1;
      *(a1 + 3) = v68;
      (**(v68 - 8))(a1, a2);
      v69 = *(a2 + 7);
      if (v69)
      {
        v70 = *(a2 + 8);
        *(a1 + 7) = v69;
        *(a1 + 8) = v70;
        (**(v69 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v99 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v99;
        *(a1 + 8) = *(a2 + 8);
      }

      v86 = v240;
      v87 = v242;
      v89 = v249;
      v88 = v250;
      v90 = v231;
      a1[72] = a2[72];
      a1[v67] = 1;
      goto LABEL_68;
    case 2u:
      v63 = *a2;
      v64 = v39;
      v65 = *a2;
      v57 = a1;
      *a1 = v63;
      a1[v64] = 2;
      goto LABEL_66;
    case 3u:
      v66 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v66;
      a1[v39] = 3;
      sub_1DD0DCF8C();
    case 4u:
      v59 = *a2;
      v60 = *(a2 + 1);
      v61 = a2[16];
      v62 = v39;
      sub_1DCD1B9B8(*a2, v60, v61);
      v57 = a1;
      *a1 = v59;
      *(a1 + 1) = v60;
      a1[16] = v61;
      a1[v62] = 4;
      goto LABEL_66;
    case 5u:
      v185 = v55;
      v187 = ~v14;
      v188 = v30 + 41;
      v215 = v14 + 16;
      __na = v238 + 1;
      v189 = ~v36;
      v190 = v35;
      v191 = v37;
      v192 = v39;
      v186 = v12;
      v71 = *(a2 + 3);
      *(a1 + 3) = v71;
      (**(v71 - 8))(a1, a2);
      v72 = (&a1[v28 + 32] & v51);
      v73 = (&a2[v28 + 32] & v51);
      *v72 = *v73;
      v72[1] = v73[1];
      v74 = (v72 + v211) & v52;
      v75 = (v73 + v211) & v52;
      v76 = *(v246 + 16);

      v76(v74, v75, v213);
      v212 = v74;
      v77 = ((v235 + v74) & v53);
      v193 = v75;
      v78 = ((v235 + v75) & v53);
      v79 = v78[v238];
      v80 = v79 - 10;
      if (v79 < 0xA)
      {
        v82 = v238 + 1;
      }

      else
      {
        if (v238 <= 3)
        {
          v81 = v238;
        }

        else
        {
          v81 = 4;
        }

        v82 = v238 + 1;
        switch(v81)
        {
          case 1:
            v83 = *v78;
            goto LABEL_78;
          case 2:
            v83 = *v78;
            goto LABEL_78;
          case 3:
            v83 = *v78 | (v78[2] << 16);
            goto LABEL_78;
          case 4:
            v83 = *v78;
LABEL_78:
            if (v238 < 4)
            {
              v79 = (v83 | (v80 << (8 * v238))) + 10;
            }

            else
            {
              v79 = v83 + 10;
            }

            break;
          default:
            goto LABEL_81;
        }
      }

      break;
    case 6u:
      v84 = *(a2 + 1);
      v57 = a1;
      *a1 = *a2;
      *(a1 + 1) = v84;
      v85 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v85;
      a1[v39] = 6;

      goto LABEL_66;
    default:
      v56 = *(a2 + 24);
      v57 = a1;
      *(a1 + 24) = v56;
      v58 = v39;
      (**(v56 - 8))(a1, a2);
      a1[v58] = 0;
LABEL_66:
      v86 = v240;
      v87 = v242;
      v89 = v249;
      v88 = v250;
      goto LABEL_67;
  }

LABEL_81:
  switch(v79)
  {
    case 0u:
      v100 = v76;
      (*(v205 + 16))((v235 + v74) & v53, v78, v206);
      *(v77 + v238) = 0;
      goto LABEL_95;
    case 1u:
      (*(v205 + 16))((v235 + v74) & v53, v78, v206);
      *((v77 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v78[v198] & 0xFFFFFFFFFFFFFFF8);
      *(v77 + v238) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v100 = v76;
      *v77 = *v78;
      *(((v235 + v74) & v53) + 8) = *(v78 + 1);
      *(((v235 + v74) & v53) + 0x10) = *(v78 + 2);
      *(v77 + v238) = 2;

      goto LABEL_95;
    case 3u:
      v100 = v76;
      *v77 = *v78;
      *(v77 + v238) = 3;
      swift_unknownObjectRetain();
      goto LABEL_95;
    case 4u:
      v100 = v76;
      v101 = v238;
      (*(v203 + 16))((v235 + v74) & v53, v78, v204);
      v102 = 4;
      goto LABEL_85;
    case 5u:
      v100 = v76;
      v106 = *v78;
      *v77 = *v78;
      *(v77 + v238) = 5;
      v107 = v106;
      goto LABEL_95;
    case 6u:
      (*(v244 + 16))((v235 + v74) & v53, v78, v209);
      v108 = ((v77 + v234) & v54);
      v109 = (&v78[v234] & v54);
      v100 = v76;
      if (__swift_getEnumTagSinglePayload(v109, 1, v208))
      {
        memcpy(v108, v109, v229);
      }

      else
      {
        (*(v243 + 16))(v108, v109, v208);
        __swift_storeEnumTagSinglePayload(v108, 0, 1, v208);
      }

      v57 = a1;
      v89 = v249;
      v110 = v193;
      v163 = ((v108 + v233) & 0xFFFFFFFFFFFFFFF8);
      v164 = ((v109 + v233) & 0xFFFFFFFFFFFFFFF8);
      *v163 = *v164;
      v163[1] = v164[1];
      v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
      v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
      v167 = *v166;
      *(v165 + 4) = *(v166 + 4);
      *v165 = v167;
      v77 = ((v235 + v74) & v53);
      *(v77 + v238) = 6;

      goto LABEL_96;
    case 7u:
      (*(v244 + 16))((v235 + v74) & v53, v78, v209);
      v103 = (v235 + v74) & v53;
      v104 = ((v77 + v234) & v54);
      v105 = (&v78[v234] & v54);
      v100 = v76;
      if (__swift_getEnumTagSinglePayload(v105, 1, v208))
      {
        memcpy(v104, v105, v229);
      }

      else
      {
        (*(v243 + 16))(v104, v105, v208);
        __swift_storeEnumTagSinglePayload(v104, 0, 1, v208);
      }

      v57 = a1;
      v110 = v193;
      v152 = ((v104 + v233) & 0xFFFFFFFFFFFFFFF8);
      v153 = ((v105 + v233) & 0xFFFFFFFFFFFFFFF8);
      *v152 = *v153;
      v152[1] = v153[1];
      v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
      v156 = *v155;
      *(v154 + 4) = *(v155 + 4);
      *v154 = v156;
      v157 = ((v22 + v103 + 7) & 0xFFFFFFFFFFFFFFF8);
      v158 = (&v78[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      v159 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v159 = *v160;
      v159[1] = v160[1];
      v161 = ((v159 + 23) & 0xFFFFFFFFFFFFFFF8);
      v162 = ((v160 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v161[1] = v162[1];
      *(v103 + v238) = 7;

      v77 = ((v235 + v74) & v53);

      v89 = v249;
      goto LABEL_96;
    case 8u:
      (*(v201 + 16))((v235 + v74) & v53, v78, v202);
      v207 = ((v235 + v74) & v53);
      v143 = ((v77 + v197) & 0xFFFFFFFFFFFFFFF8);
      v144 = (&v78[v197] & 0xFFFFFFFFFFFFFFF8);
      *v143 = *v144;
      v143[1] = v144[1];
      v236 = ((v143 + v196) & v185);
      v145 = ((v144 + v196) & v185);

      v183 = v76;
      v184 = v78;
      if (v25 != v227)
      {
        v146 = v234;
        v147 = ((v145 + v234) & v54);
        if (v26 == v227)
        {
          v148 = v54;
          v149 = v195;
          v57 = a1;
          v150 = v208;
          if (v195 < 2)
          {
            v151 = v244;
            goto LABEL_134;
          }

          if (__swift_getEnumTagSinglePayload(v147, v195, v208) < 2)
          {
            v150 = v208;
            v151 = v244;
            goto LABEL_133;
          }
        }

        else
        {
          v168 = *(((v147 + v233) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v168 >= 0xFFFFFFFF)
          {
            LODWORD(v168) = -1;
          }

          v57 = a1;
          if ((v168 + 1) < 2)
          {
            goto LABEL_132;
          }
        }

LABEL_141:
        v100 = v183;
        v178 = v236;
        memcpy(v236, v145, v22);
        v89 = v249;
        v170 = v229;
        v171 = v225;
LABEL_142:
        v177 = v170;
        goto LABEL_143;
      }

      v57 = a1;
      v146 = v234;
      if (__swift_getEnumTagSinglePayload(v145, v25, v209))
      {
        goto LABEL_141;
      }

      v147 = ((v145 + v234) & v54);
LABEL_132:
      v150 = v208;
      v151 = v244;
      v148 = v54;
LABEL_133:
      v149 = v195;
LABEL_134:
      (*(v151 + 16))(v236, v145, v209);
      v169 = ((v236 + v146) & v148);
      v89 = v249;
      v100 = v183;
      if (__swift_getEnumTagSinglePayload(v147, 1, v150))
      {
        v170 = v229;
        memcpy(v169, v147, v229);
      }

      else
      {
        (*(v243 + 16))(v169, v147, v150);
        __swift_storeEnumTagSinglePayload(v169, 0, 1, v150);
        v170 = v229;
      }

      v171 = v225;
      v172 = ((v169 + v233) & 0xFFFFFFFFFFFFFFF8);
      v173 = ((v147 + v233) & 0xFFFFFFFFFFFFFFF8);
      *v172 = *v173;
      v172[1] = v173[1];
      v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
      v175 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
      v176 = *v175;
      *(v174 + 4) = *(v175 + 4);
      *v174 = v176;

      v177 = v194;
      v178 = v236;
      if (!v149)
      {
        goto LABEL_142;
      }

LABEL_143:
      v179 = (((v171 + v177 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v180 = ((v178 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
      v181 = *((v145 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v180 = v181;
      v77 = v207;
      *(v207 + v238) = 8;
      v182 = v181;
      v74 = v212;
      v110 = v193;
      v78 = v184;
LABEL_96:
      v111 = (&v78[__na + 7] & 0xFFFFFFFFFFFFFFF8);
      v112 = ((v77 + __na + 7) & 0xFFFFFFFFFFFFFFF8);
      *v112 = *v111;
      v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
      v114 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
      v115 = *(v114 + 24);

      if (v115 < 0xFFFFFFFF)
      {
        v116 = *v114;
        v117 = *(v114 + 16);
        *(v113 + 32) = *(v114 + 32);
        *v113 = v116;
        *(v113 + 16) = v117;
      }

      else
      {
        *(v113 + 24) = v115;
        *(v113 + 32) = *(v114 + 32);
        (**(v115 - 8))(v113, v114, v115);
      }

      *(v113 + 40) = *(v114 + 40);
      *(v188 + v74 + 7) = *(v188 + v110 + 7);
      v118 = ((v188 + v74 + 22) & 0xFFFFFFFFFFFFFFF8);
      v119 = ((v188 + v110 + 22) & 0xFFFFFFFFFFFFFFF8);
      v120 = *v119;
      *v118 = *v119;
      v121 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
      v122 = ((v119 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v121[1] = v122[1];
      v123 = ((v121 + v215) & v237);
      v124 = ((v122 + v215) & v237);

      v125 = v120;

      if (v223 < 1)
      {
        v127 = ((v124 + v215) & v237);
        v44 = a2;
        if (__swift_getEnumTagSinglePayload((v215 + ((v127 + 23) & 0xFFFFFFFFFFFFFFF8)) & v187, v221, v210) <= 1)
        {
          goto LABEL_105;
        }

LABEL_109:
        v131 = v123;
        v132 = v124;
        v133 = v219;
        goto LABEL_113;
      }

      v126 = v124[1];
      if (v126 >= 0xFFFFFFFF)
      {
        LODWORD(v126) = -1;
      }

      v44 = a2;
      if ((v126 + 1) > 1)
      {
        goto LABEL_109;
      }

      v127 = ((v124 + v215) & v237);
LABEL_105:
      *v123 = *v124;
      v123[1] = v124[1];
      v128 = ((v123 + v215) & v237);

      if ((v221 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v215 + ((v127 + 23) & 0xFFFFFFFFFFFFFFF8)) & v187, v221, v210);
      }

      else
      {
        v129 = v127[1];
        if (v129 >= 0xFFFFFFFF)
        {
          LODWORD(v129) = -1;
        }

        EnumTagSinglePayload = v129 + 1;
      }

      v133 = v34;
      if (!EnumTagSinglePayload)
      {
        *v128 = *v127;
        *(((v123 + v215) & v237) + 8) = v127[1];
        v137 = ((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
        v138 = ((v127 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v137 = *v138;
        v137[1] = v138[1];
        v139 = v137 + v215;
        v140 = v138 + v215;
        v141 = *(v186 + 16);

        v142 = v140 & v187;
        v44 = a2;
        v141(v139 & v187, v142, v210);
        goto LABEL_114;
      }

      v131 = ((v123 + v215) & v237);
      v132 = v127;
LABEL_113:
      memcpy(v131, v132, v133);
LABEL_114:
      v87 = v242;
      v134 = ((v123 + v190) & v189);
      v135 = ((v124 + v190) & v189);
      if (__swift_getEnumTagSinglePayload(v135, 1, v213))
      {
        v136 = v191;
        memcpy(v134, v135, v191);
        v86 = v240;
      }

      else
      {
        v100(v134, v135, v213);
        __swift_storeEnumTagSinglePayload(v134, 0, 1, v213);
        v86 = v240;
        v136 = v191;
      }

      *(v134 + v136) = *(v135 + v136);
      v57[v192] = 5;
      v88 = v250;
LABEL_67:
      v90 = v231;
LABEL_68:
      v91 = &v57[v90] & v89;
      v92 = &v44[v90] & v89;
      (*(v88 + 16))(v91, v92, v87);
      v93 = (v86 + v91) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v86 + v92) & 0xFFFFFFFFFFFFFFF8;
      v95 = *(v94 + 24);
      if (v95 < 0xFFFFFFFF)
      {
        v96 = *v94;
        v97 = *(v94 + 16);
        *(v93 + 32) = *(v94 + 32);
        *v93 = v96;
        *(v93 + 16) = v97;
      }

      else
      {
        *(v93 + 24) = v95;
        *(v93 + 32) = *(v94 + 32);
        (**(v95 - 8))(v93, v94);
      }

      *(v93 + 40) = *(v94 + 40);
      return v57;
    case 9u:
      v100 = v76;
      v101 = v238;
      (*(v199 + 16))((v235 + v74) & v53, v78, v200);
      v102 = 9;
LABEL_85:
      *(v77 + v101) = v102;
      goto LABEL_95;
    default:
      v100 = v76;
      memcpy(((v235 + v74) & v53), v78, v82);
LABEL_95:
      v57 = a1;
      v89 = v249;
      v110 = v193;
      goto LABEL_96;
  }
}