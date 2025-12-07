uint64_t _s16SummarizationKit67Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_2280F7478(a1 + v14, v13, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280F7478(a2 + v14, &v13[v15], &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_2280F8A9C(v13, &qword_27D81E4B0, &qword_22813AB20);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_2280F7478(v13, v9, &qword_27D81E4B0, &qword_22813AB20);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
LABEL_6:
    v17 = &qword_27D81EAA0;
    v18 = &unk_22813D8E0;
LABEL_7:
    sub_2280F8A9C(v13, v17, v18);
LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  v19 = v26;
  sub_2280F72D0(&v13[v15], v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v20 = *v9 == *v19 && v9[1] == v19[1];
  if (!v20 && (sub_2281399BC() & 1) == 0)
  {
    sub_2280F73A0(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v17 = &qword_27D81E4B0;
    v18 = &qword_22813AB20;
    goto LABEL_7;
  }

  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_22813926C();
  sub_2280F73A0(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280F8A9C(v13, &qword_27D81E4B0, &qword_22813AB20);
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((sub_228036E20(*v27, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_22813926C();
  return v22 & 1;
}

uint64_t _s16SummarizationKit62Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC0, &qword_22813D900);
  MEMORY[0x28223BE20](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  sub_2280F7478(a1 + v19, v18, &qword_27D81E4A8, &unk_22813DE00);
  v21 = a2 + v19;
  v22 = a2;
  sub_2280F7478(v21, &v18[v20], &qword_27D81E4A8, &unk_22813DE00);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) != 1)
  {
    sub_2280F7478(v18, v14, &qword_27D81E4A8, &unk_22813DE00);
    if (v23(&v18[v20], 1, v9) != 1)
    {
      v27 = v43;
      sub_2280F72D0(&v18[v20], v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      if (*v14 == *v27 && v14[1] == v27[1] || (sub_2281399BC() & 1) != 0)
      {
        sub_228137D7C();
        sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = sub_22813926C();
        sub_2280F73A0(v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2280F8A9C(v18, &qword_27D81E4A8, &unk_22813DE00);
        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      sub_2280F73A0(v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v24 = &qword_27D81E4A8;
      v25 = &unk_22813DE00;
LABEL_7:
      v26 = v18;
LABEL_18:
      sub_2280F8A9C(v26, v24, v25);
      goto LABEL_19;
    }

    sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_6:
    v24 = &qword_27D81EAA8;
    v25 = &unk_2281425E0;
    goto LABEL_7;
  }

  if (v23(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_2280F8A9C(v18, &qword_27D81E4A8, &unk_22813DE00);
LABEL_12:
  v29 = *(v44 + 24);
  v30 = *(v45 + 48);
  v31 = v48;
  sub_2280F7478(v49 + v29, v48, &qword_27D81EAB8, &qword_2281416A0);
  sub_2280F7478(v22 + v29, v31 + v30, &qword_27D81EAB8, &qword_2281416A0);
  v32 = v47;
  v33 = *(v46 + 48);
  if (v33(v31, 1, v47) == 1)
  {
    if (v33(v31 + v30, 1, v32) == 1)
    {
      sub_2280F8A9C(v31, &qword_27D81EAB8, &qword_2281416A0);
LABEL_22:
      sub_228137D7C();
      sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = sub_22813926C();
      return v35 & 1;
    }

    goto LABEL_17;
  }

  v34 = v42;
  sub_2280F7478(v31, v42, &qword_27D81EAB8, &qword_2281416A0);
  if (v33(v31 + v30, 1, v32) == 1)
  {
    sub_2280F73A0(v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
LABEL_17:
    v24 = &qword_27D81EAC0;
    v25 = &qword_22813D900;
    v26 = v31;
    goto LABEL_18;
  }

  v37 = v31 + v30;
  v38 = v41;
  sub_2280F72D0(v37, v41, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  v39 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfigV2eeoiySbAC_ACtFZ_0(v34, v38);
  sub_2280F73A0(v38, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_2280F73A0(v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_2280F8A9C(v31, &qword_27D81EAB8, &qword_2281416A0);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_19:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23[0] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  v15 = *(v11 + 56);
  v23[1] = a1;
  sub_2280F7478(a1 + v14, v13, &qword_27D81E998, &unk_228141680);
  sub_2280F7478(a2 + v14, &v13[v15], &qword_27D81E998, &unk_228141680);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_2280F7478(v13, v9, &qword_27D81E998, &unk_228141680);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v23[0];
      sub_2280F72D0(&v13[v15], v23[0], type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      if ((sub_228037F4C(*v9, *v20) & 1) != 0 && v9[8] == *(v20 + 8) && *(v9 + 3) == *(v20 + 12))
      {
        sub_228137D7C();
        sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v21 = sub_22813926C();
        sub_2280F73A0(v20, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_2280F8A9C(v13, &qword_27D81E998, &unk_228141680);
        if (v21)
        {
          goto LABEL_4;
        }

LABEL_15:
        v17 = 0;
        return v17 & 1;
      }

      sub_2280F73A0(v20, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      v18 = &qword_27D81E998;
      v19 = &unk_228141680;
LABEL_14:
      sub_2280F8A9C(v13, v18, v19);
      goto LABEL_15;
    }

    sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
LABEL_7:
    v18 = &qword_27D81EAB0;
    v19 = &unk_22813D8F0;
    goto LABEL_14;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_2280F8A9C(v13, &qword_27D81E998, &unk_228141680);
LABEL_4:
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_22813926C();
  return v17 & 1;
}

uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F348, &qword_2281425F8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((sub_22803A234(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v23 = a2;
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_2280F7478(a1 + v14, v13, &qword_27D81F260, &unk_228141690);
  sub_2280F7478(v23 + v14, &v13[v15], &qword_27D81F260, &unk_228141690);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_2280F7478(v13, v10, &qword_27D81F260, &unk_228141690);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_2280F72D0(&v13[v15], v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
      if (sub_2280F5678(*v10, *v7))
      {
        sub_228137D7C();
        sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v21 = sub_22813926C();
        sub_2280F73A0(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
        sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
        sub_2280F8A9C(v13, &qword_27D81F260, &unk_228141690);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

      sub_2280F73A0(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
      sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
      v18 = &qword_27D81F260;
      v19 = &unk_228141690;
LABEL_9:
      sub_2280F8A9C(v13, v18, v19);
      goto LABEL_10;
    }

    sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
LABEL_8:
    v18 = &qword_27D81F348;
    v19 = &qword_2281425F8;
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_2280F8A9C(v13, &qword_27D81F260, &unk_228141690);
LABEL_5:
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_22813926C();
  return v17 & 1;
}

uint64_t _s16SummarizationKit55Com_Apple_Summarizationkit_Proto_SKClassificationConfigV2eeoiySbAC_ACtFZ_0(_DWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F340, &qword_2281425F0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v22 = v14;
  v23 = v16;
  sub_2280F7478(v16 + v15, v13, &qword_27D81F268, &qword_228142CB0);
  sub_2280F7478(a2 + v15, &v13[v17], &qword_27D81F268, &qword_228142CB0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_2280F8A9C(v13, &qword_27D81F268, &qword_228142CB0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_2280F7478(v13, v10, &qword_27D81F268, &qword_228142CB0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
LABEL_7:
    sub_2280F8A9C(v13, &qword_27D81F340, &qword_2281425F0);
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  sub_2280F72D0(&v13[v17], v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  v19 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfoV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_2280F73A0(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_2280F8A9C(v13, &qword_27D81F268, &qword_228142CB0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_22803A894(*(v23 + 1), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_22813926C();
  return v20 & 1;
}

uint64_t _s16SummarizationKit47Com_Apple_Summarizationkit_Proto_ConfidencePairV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD0, &qword_22813D910);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        if (v14 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v14 != 3)
      {
        goto LABEL_27;
      }
    }

    else if (v15)
    {
      if (v14 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (v14)
    {
      goto LABEL_27;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_27;
  }

  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  v17 = a1;
  v26[0] = v16;
  v26[1] = a1;
  v18 = *(v16 + 24);
  v19 = *(v11 + 48);
  sub_2280F7478(v17 + v18, v13, &qword_27D81EAC8, &qword_22813D908);
  sub_2280F7478(a2 + v18, &v13[v19], &qword_27D81EAC8, &qword_22813D908);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_2280F7478(v13, v10, &qword_27D81EAC8, &qword_22813D908);
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      goto LABEL_16;
    }

    sub_2280F72D0(&v13[v19], v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    if (*v10 != *v7 || v10[1] != v7[1])
    {
      sub_2280F73A0(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      v22 = &qword_27D81EAC8;
      v23 = &qword_22813D908;
      goto LABEL_26;
    }

    sub_228137D7C();
    sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v24 = sub_22813926C();
    sub_2280F73A0(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    sub_2280F73A0(v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    sub_2280F8A9C(v13, &qword_27D81EAC8, &qword_22813D908);
    if (v24)
    {
      goto LABEL_10;
    }

LABEL_27:
    v21 = 0;
    return v21 & 1;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
LABEL_16:
    v22 = &qword_27D81EAD0;
    v23 = &qword_22813D910;
LABEL_26:
    sub_2280F8A9C(v13, v22, v23);
    goto LABEL_27;
  }

  sub_2280F8A9C(v13, &qword_27D81EAC8, &qword_22813D908);
LABEL_10:
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_22813926C();
  return v21 & 1;
}

uint64_t sub_2280F72D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280F7338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280F73A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2280F7440(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280F7478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280F74E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2280F7528()
{
  result = qword_2813C5B10;
  if (!qword_2813C5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5B10);
  }

  return result;
}

unint64_t sub_2280F7580()
{
  result = qword_2813C5B08;
  if (!qword_2813C5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5B08);
  }

  return result;
}

unint64_t sub_2280F75D8()
{
  result = qword_2813C5AF8;
  if (!qword_2813C5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5AF8);
  }

  return result;
}

unint64_t sub_2280F7630()
{
  result = qword_27D81F2B0;
  if (!qword_27D81F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81F2B8, &qword_2281416F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81F2B0);
  }

  return result;
}

unint64_t sub_2280F7698()
{
  result = qword_2813C5B00;
  if (!qword_2813C5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5B00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_ConfidenceBucket(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_ConfidenceBucket(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2280F803C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2280F805C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2280F80A0(uint64_t a1)
{
  result = sub_228137D7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2280F8130(uint64_t a1)
{
  sub_2280F81B4();
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280F81B4()
{
  if (!qword_2813C4708)
  {
    v0 = sub_2281391CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4708);
    }
  }
}

void sub_2280F823C(uint64_t a1)
{
  sub_228137D7C();
  if (v1 <= 0x3F)
  {
    sub_2280F8350(319, qword_2813C5C60, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280F8350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2280F83DC(uint64_t a1)
{
  sub_2280F8350(319, &qword_2813C4690, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      sub_2280F8350(319, qword_2813C4E78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_228137D7C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_44Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = sub_228137D7C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_2280F87CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_2280F8350(319, a4, a5, MEMORY[0x277D83940]);
  if (v9 <= 0x3F)
  {
    sub_228137D7C();
    if (v10 <= 0x3F)
    {
      sub_2280F8350(319, a6, a7, MEMORY[0x277D83D88]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2280F88D8(uint64_t a1)
{
  sub_228137D7C();
  if (v1 <= 0x3F)
  {
    sub_2280F8350(319, qword_2813C5A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2280F8350(319, qword_2813C4DB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2280F89E8(uint64_t a1)
{
  sub_228137D7C();
  if (v1 <= 0x3F)
  {
    sub_2280F8350(319, qword_2813C5B90, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2280F8A9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280F8BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a5;
  v48 = a4;
  v49 = a2;
  v51 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for ModelBundleIdentifier(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v54 = objc_opt_self();

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

    v18 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v18 = &qword_2813C76F8;
  }

  v19 = *v18;
  sub_227FC8614(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227FC8720(v17);
      v21 = *(v19 + 1520);
      v44 = *(v19 + 1528);
      v22 = *(v19 + 1536);
      v23 = *(v19 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      v53 = byte_2813C4638;
      if (byte_2813C4638 == 1)
      {
        v22(&v55, v23);

        v44 = v56;
      }

      else
      {

        v55 = v21;
      }

      v32 = *(v19 + 1488);
      v33 = *(v19 + 2208);

      if (v53)
      {
        v32(&v55, v33);
      }

      v52 = *(v19 + 1568);
      v29 = *(v19 + 1576);
      v30 = *(v19 + 2208);

      v31 = [v54 processInfo];
      goto LABEL_29;
    }
  }

  else
  {
    sub_227FC8720(v17);
  }

  v24 = *(v19 + 1168);
  v44 = *(v19 + 1176);
  v25 = *(v19 + 1184);
  v26 = *(v19 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v53 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v25(&v55, v26);

    v44 = v56;
  }

  else
  {

    v55 = v24;
  }

  v27 = *(v19 + 1096);
  v28 = *(v19 + 2208);

  if (v53)
  {
    v27(&v55, v28);
  }

  v52 = *(v19 + 1216);
  v29 = *(v19 + 1224);
  v30 = *(v19 + 2208);

  v31 = [v54 processInfo];
LABEL_29:

  if (v53)
  {
    v29(&v55, v30);

    v52 = v55;
  }

  else
  {
  }

  sub_227FC8614(a1, v15);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v34 = 1;
  }

  else
  {
    sub_227FC8720(v15);
    if (v44)
    {
      sub_22813770C();
    }

    else
    {
      sub_2281376FC();
    }

    v34 = 0;
  }

  v35 = sub_22813771C();
  (*(*(v35 - 8) + 56))(v11, v34, 1, v35);
  v36 = *(v19 + 1272);
  v37 = *(v19 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v50 = a1;
  v43 = v11;
  if (v53)
  {
    v36(&v55, v37);
  }

  v38 = *(v19 + 1320);
  v39 = *(v19 + 2208);

  if (v53)
  {
    v38(&v55, v39);
  }

  v40 = v43;
  sub_2280A61CC(v43, v45);
  sub_2281377AC();
  sub_22813778C();
  sub_22813772C();
  sub_22813775C();

  sub_227FC8720(v50);
  return sub_2280F9448(v40);
}

uint64_t sub_2280F9448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2280F94B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v65 = a1;
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v52 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - v5;
  v63 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v63);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22813797C();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22813794C();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22813795C();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v52 - v14;
  v15 = sub_22813713C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v60 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  sub_22813790C();
  v30 = sub_22813716C();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v21, 1, v30) == 1)
  {
    sub_2280FB6F0(v21, &qword_27D81E6A8, &qword_22813F930);
    v32 = sub_22813701C();
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  }

  else
  {
    sub_22813715C();
    (*(v31 + 8))(v21, v30);
    sub_22813710C();
    (*(v16 + 8))(v18, v15);
  }

  v61 = v29;
  sub_22800C790(v29, v27);
  v33 = sub_22813701C();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v27, 1, v33);
  v37 = v68;
  v36 = v69;
  v38 = v67;
  v39 = v75;
  if (v35 == 1)
  {
    sub_2280FB6F0(v27, &qword_27D81E328, &qword_2281402C0);
    v40 = MEMORY[0x277D0E2D8];
  }

  else
  {
    (*(v34 + 32))(v75, v27, v33);
    v40 = MEMORY[0x277D0E2C0];
  }

  (*(v37 + 104))(v39, *v40, v36);
  (*(v37 + 16))(v59, v39, v36);

  sub_22813792C();
  sub_22813796C();
  v41 = v64;
  sub_227FC8614(v66, v64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v43 = v56;
      v44 = v57;
      v45 = v58;
      (*(v57 + 32))(v56, v41, v58);
      sub_22813746C();
      v46 = v45;
      v39 = v75;
      (*(v44 + 8))(v43, v46);
    }
  }

  else
  {
    v47 = v54;
    v48 = v53;
    v49 = v55;
    (*(v54 + 32))(v53, v41, v55);
    sub_22813746C();
    (*(v47 + 8))(v48, v49);
  }

  v50 = v61;
  sub_22800C790(v61, v60);
  sub_2281373CC();
  (*(v72 + 8))(v76, v73);
  (*(v70 + 8))(v38, v71);
  (*(v37 + 8))(v39, v36);
  return sub_2280FB6F0(v50, &qword_27D81E328, &qword_2281402C0);
}

unint64_t ModelBundleIdentifier.loggingDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ModelBundleIdentifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_227FC8614(v1, &v28 - v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = 0x63697665446E6F2ELL;
    v31 = 0xEA00000000002865;
    sub_227FC8614(v1, v15);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21)
    {
      if (v21 != 1)
      {
        v24 = 0x8000000228144A90;
        v22 = 0xD000000000000045;
        goto LABEL_16;
      }

      v20 = v29;
      (*(v29 + 32))(v4, v15, v2);
LABEL_9:
      v22 = sub_22813746C();
      v24 = v23;
      (*(v20 + 8))(v4, v2);
LABEL_16:
      MEMORY[0x22AAB1970](v22, v24);

      MEMORY[0x22AAB1970](41, 0xE100000000000000);
      v25 = v30;
      sub_227FC8720(v17);
      return v25;
    }

    (*(v6 + 32))(v8, v15, v5);
LABEL_13:
    v22 = sub_22813746C();
    v24 = v26;
    (*(v6 + 8))(v8, v5);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_22813988C();

    v30 = 0xD000000000000015;
    v31 = 0x8000000228148A60;
    sub_227FC8614(v1, v12);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19)
    {
      if (v19 != 1)
      {
        v24 = 0x8000000228144A90;
        v22 = 0xD000000000000045;
        goto LABEL_16;
      }

      v20 = v29;
      (*(v29 + 32))(v4, v12, v2);
      goto LABEL_9;
    }

    (*(v6 + 32))(v8, v12, v5);
    goto LABEL_13;
  }

  return 0xD000000000000015;
}

uint64_t sub_2280FA100(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for ModelBundleIdentifier(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280FA194, 0, 0);
}

uint64_t sub_2280FA194()
{
  sub_227FC8614(v0[9], v0[11]);
  if (swift_getEnumCaseMultiPayload() > 1)
  {

    v3 = v0[1];

    return v3(0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v1 = v0[8];
    sub_227FC8720(v0[11]);
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2280FA2A4;

    return MEMORY[0x2821D9808]();
  }
}

uint64_t sub_2280FA2A4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280FA3F4, 0, 0);
  }
}

uint64_t sub_2280FA3F4()
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    v1 = qword_27D81E2A0;
  }

  else
  {
    v1 = qword_2813C76F0;
  }

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[9];

  v4 = sub_22808EED0(v3);
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF30, &unk_2281426D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = v4;
  *(inited + 40) = v6 & 1;
  v8 = sub_2280FAC9C(v2, inited);
  swift_setDeallocating();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2280FA5A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280FA634;

  return sub_2280FA100(a1);
}

uint64_t sub_2280FA634(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280FA768, 0, 0);
  }
}

uint64_t sub_2280FA768()
{
  v13 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 != 1)
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
    goto LABEL_9;
  }

  if (qword_27D81E2A0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = &off_27D81EDB0;
LABEL_9:
    v3 = *(*v2 + 1728);
    v4 = *(*v2 + 1736);
    v5 = *(*v2 + 1744);
    v6 = *(*v2 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v1 = v5;
      v4(&v12, v6);

      v3 = v12;
    }

    else
    {
    }

    v7 = *(v0 + 24);
    v8 = __OFSUB__(v7, v3);
    v9 = v7 - v3;
    if (!v8)
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v10 = *(v0 + 8);

  return v10(v9 & ~(v9 >> 63));
}

uint64_t sub_2280FA9A8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v19 = sub_22813797C();
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22813795C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22813794C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22813A4B0;
  *(v12 + 32) = sub_228138CAC();
  *(v12 + 40) = v13;
  (*(v5 + 104))(v7, *MEMORY[0x277D0E2D8], v4);
  sub_22813793C();
  sub_22813796C();
  if (sub_228095094())
  {
    if (qword_2813C7040 != -1)
    {
      swift_once();
    }

    v14 = qword_27D81F368;
  }

  else
  {
    if (qword_27D81E2B0 != -1)
    {
      swift_once();
    }

    v14 = qword_27D81F350;
  }

  v15 = type metadata accessor for ModelBundleIdentifier(0);
  v16 = __swift_project_value_buffer(v15, v14);
  sub_227FC8614(v16, v18);
  (*(v1 + 8))(v3, v19);
  return (*(v9 + 8))(v11, v8);
}

int64_t sub_2280FAC9C(int64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    v5 = MEMORY[0x277D84F90];
    do
    {
      if ((*v4 & 1) == 0)
      {
        v6 = *(v4 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_228133CCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v8 = *(v5 + 2);
        v7 = *(v5 + 3);
        if (v8 >= v7 >> 1)
        {
          v5 = sub_228133CCC((v7 > 1), v8 + 1, 1, v5);
        }

        *(v5 + 2) = v8 + 1;
        *&v5[8 * v8 + 32] = v6;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v9 = *(v5 + 2);
  if (v9)
  {
    if (v9 > 3)
    {
      v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      v11 = vdupq_n_s64(a1);
      v12 = (v5 + 48);
      v13 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      v14 = v11;
      do
      {
        v11 = vbslq_s8(vcgtq_s64(v12[-1], v11), v11, v12[-1]);
        v14 = vbslq_s8(vcgtq_s64(*v12, v14), v14, *v12);
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      v15 = vbslq_s8(vcgtq_s64(v14, v11), v11, v14);
      v16 = vextq_s8(v15, v15, 8uLL).u64[0];
      a1 = vbsl_s8(vcgtd_s64(v16, v15.i64[0]), *v15.i8, v16);
      if (v9 == v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
    }

    v17 = v9 - v10;
    v18 = &v5[8 * v10 + 32];
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (a1 >= v20)
      {
        a1 = v19;
      }

      --v17;
    }

    while (v17);
  }

LABEL_21:

  return a1;
}

uint64_t ModelBundleIdentifier.hashValue.getter()
{
  sub_228139AAC();
  ModelBundleIdentifier.hash(into:)(v1);
  return sub_228139AEC();
}

uint64_t sub_2280FAE4C()
{
  sub_228139AAC();
  ModelBundleIdentifier.hash(into:)(v1);
  return sub_228139AEC();
}

uint64_t sub_2280FAE90(uint64_t a1)
{
  sub_228139AAC();
  ModelBundleIdentifier.hash(into:)(v2);
  return sub_228139AEC();
}

uint64_t sub_2280FAFAC(uint64_t a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  v6 = type metadata accessor for ModelBundleIdentifier(0);
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  a3();

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ModelBundleIdentifier(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED88, &unk_22813EC08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_227FC8614(a1, &v29 - v18);
  sub_227FC8614(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = v32;
    sub_227FC8614(v19, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v26 + 32))(v9, &v19[v20], v7);
      sub_22813742C();
      sub_2280FB6A8(&qword_2813C8748, MEMORY[0x277D29B48], MEMORY[0x277D29B40]);
      v24 = sub_22813745C();
      v27 = *(v26 + 8);
      v27(v9, v7);
      v27(v15, v7);
      goto LABEL_12;
    }

    (*(v26 + 8))(v15, v7);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_227FC8614(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v30;
      v22 = v31;
      (*(v30 + 32))(v6, &v19[v20], v31);
      sub_2281374CC();
      sub_2280FB6A8(&qword_2813C8728, MEMORY[0x277D29CE0], MEMORY[0x277D29CD8]);
      v24 = sub_22813745C();
      v25 = *(v23 + 8);
      v25(v6, v22);
      v25(v13, v22);
LABEL_12:
      sub_227FC8720(v19);
      return v24 & 1;
    }

    (*(v30 + 8))(v13, v31);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_2280FB6F0(v19, &qword_27D81ED88, &unk_22813EC08);
    v24 = 0;
    return v24 & 1;
  }

  sub_227FC8720(v19);
  v24 = 1;
  return v24 & 1;
}

void sub_2280FB50C(uint64_t a1)
{
  sub_2280FB580(319);
  if (v1 <= 0x3F)
  {
    sub_2280FB614(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2280FB580(uint64_t a1)
{
  if (!qword_2813C8738)
  {
    sub_22813742C();
    sub_2280FB6A8(&qword_2813C8748, MEMORY[0x277D29B48], MEMORY[0x277D29B40]);
    v1 = sub_22813747C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813C8738);
    }
  }
}

void sub_2280FB614(uint64_t a1)
{
  if (!qword_2813C8730)
  {
    sub_2281374CC();
    sub_2280FB6A8(&qword_2813C8728, MEMORY[0x277D29CE0], MEMORY[0x277D29CD8]);
    v1 = sub_22813747C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813C8730);
    }
  }
}

uint64_t sub_2280FB6A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2280FB6F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.hasClientID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(v0 + *(v4 + 28), v3, &qword_27D81E4B0, &qword_22813AB20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_2281001F0(v3, &qword_27D81E4B0, &qword_22813AB20);
  return v6;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clientID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(v1 + *(v6 + 28), v5, &qword_27D81E4B0, &qword_22813AB20);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280FBCA0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2281001F0(v5, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

BOOL Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.hasUseCaseID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(v0 + *(v4 + 24), v3, &qword_27D81E4A8, &unk_22813DE00);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_2281001F0(v3, &qword_27D81E4A8, &unk_22813DE00);
  return v6;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.useCaseID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(v1 + *(v6 + 24), v5, &qword_27D81E4A8, &unk_22813DE00);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280FBCA0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2281001F0(v5, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280FBC38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280FBCA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280FBD08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(a1 + *(v7 + 24), v6, &qword_27D81E4A8, &unk_22813DE00);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280FBCA0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2281001F0(v6, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280FBE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280FCC1C(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  sub_2281001F0(a2 + v8, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280FBCA0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.useCaseID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  sub_2281001F0(v1 + v3, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280FBCA0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.useCaseID.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  *(v5 + 12) = v15;
  sub_2280FBC38(v1 + v15, v8, &qword_27D81E4A8, &unk_22813DE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2281001F0(v8, &qword_27D81E4A8, &unk_22813DE00);
    }
  }

  else
  {
    sub_2280FBCA0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  return sub_2280FC270;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.clearUseCaseID()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  sub_2281001F0(v0 + v1, &qword_27D81E4A8, &unk_22813DE00);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_228137D6C();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_2280FC53C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(a1 + *(v7 + 28), v6, &qword_27D81E4B0, &qword_22813AB20);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280FBCA0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2281001F0(v6, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_2280FC6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280FCC1C(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  sub_2281001F0(a2 + v8, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280FBCA0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clientID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  sub_2281001F0(v1 + v3, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280FBCA0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clientID.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  *(v5 + 12) = v15;
  sub_2280FBC38(v1 + v15, v8, &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2281001F0(v8, &qword_27D81E4B0, &qword_22813AB20);
    }
  }

  else
  {
    sub_2280FBCA0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  return sub_2280FCAA4;
}

void sub_2280FCAE0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_2280FCC1C(v12, v11, a6);
    sub_2281001F0(v15 + v10, a3, a4);
    sub_2280FBCA0(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_2280FCC84(v12, a6);
  }

  else
  {
    sub_2281001F0(v15 + v10, a3, a4);
    sub_2280FBCA0(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t sub_2280FCC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280FCC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clearClientID()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  sub_2281001F0(v0 + v1, &qword_27D81E4B0, &qword_22813AB20);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.useCases.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_228137D6C();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2280FD100(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  return sub_228137D6C();
}

uint64_t sub_2280FD264()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5888);
  __swift_project_value_buffer(v0, qword_2813C5888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case_id";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_off";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_228137DCC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2280FD4E0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_228137E0C();
    }
  }

  return result;
}

uint64_t sub_2280FD4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  sub_2280FF69C(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280FD638(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_228137F1C();
    }

    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280FD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(a1 + *(v12 + 24), v7, &qword_27D81E4A8, &unk_22813DE00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2281001F0(v7, &qword_27D81E4A8, &unk_22813DE00);
  }

  sub_2280FBCA0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_2280FF69C(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228137F8C();
  return sub_2280FCC84(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
}

uint64_t sub_2280FD8A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  sub_228137D6C();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_2280FD940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280FD9B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2280FDA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280FF69C(&qword_27D81F3C8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280FDB20(uint64_t a1)
{
  v2 = sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280FDB8C(uint64_t a1, uint64_t a2)
{
  sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

  return sub_228137EDC();
}

uint64_t sub_2280FDC28()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5950);
  __swift_project_value_buffer(v0, qword_2813C5950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "client_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "all_stop";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "use_cases";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
          sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
          sub_228137E8C();
          break;
        case 2:
          sub_228137E0C();
          break;
        case 1:
          sub_2280FDF80(a1, v5, a2, a3);
          break;
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280FDF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  sub_2280FF69C(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280FE158(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_228137F1C();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
      sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      sub_228137F7C();
    }

    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280FE158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(a1 + *(v12 + 28), v7, &qword_27D81E4B0, &qword_22813AB20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2281001F0(v7, &qword_27D81E4B0, &qword_22813AB20);
  }

  sub_2280FBCA0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280FF69C(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228137F8C();
  return sub_2280FCC84(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
}

uint64_t sub_2280FE3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2280FE46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280FE4E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2280FE5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280FF69C(&qword_27D81F3C0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280FE64C(uint64_t a1)
{
  v2 = sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280FE6B8(uint64_t a1, uint64_t a2)
{
  sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);

  return sub_228137EDC();
}

uint64_t sub_2280FE754()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C51F0);
  __swift_project_value_buffer(v0, qword_2813C51F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_switches";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "block_unconfigured_client";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280FE98C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228137DCC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_228137E0C();
          break;
        case 2:
          type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
          sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
          sub_228137E8C();
          break;
        case 1:
          sub_228137E4C();
          break;
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_228137F4C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0), sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch), result = sub_228137F7C(), !v4))
    {
      if (*(v3 + 16) != 1 || (result = sub_228137F1C(), !v4))
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
        return sub_228137D5C();
      }
    }
  }

  return result;
}

uint64_t sub_2280FECC0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_228139AAC();
  a1(0);
  sub_2280FF69C(a2, a3, a4);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280FED48@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  return sub_228137D6C();
}

uint64_t sub_2280FED98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280FEE0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2280FEED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280FF69C(&qword_27D81F3B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280FEF78@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2280FF014(uint64_t a1)
{
  v2 = sub_2280FF69C(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280FF080(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280FF0D8(uint64_t a1, uint64_t a2)
{
  sub_2280FF69C(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return sub_228137EDC();
}

uint64_t sub_2280FF154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_228039B54(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  sub_228137D7C();
  sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t _s16SummarizationKit54Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitchV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_2280FBC38(&a1[v14], v13, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280FBC38(&a2[v14], &v13[v15], &qword_27D81E4A8, &unk_22813DE00);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_2280FBC38(v13, v9, &qword_27D81E4A8, &unk_22813DE00);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v26;
      sub_2280FBCA0(&v13[v15], v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v20 = *v9 == *v19 && v9[1] == v19[1];
      if (v20 || (sub_2281399BC() & 1) != 0)
      {
        sub_228137D7C();
        sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v21 = sub_22813926C();
        sub_2280FCC84(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2280FCC84(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2281001F0(v13, &qword_27D81E4A8, &unk_22813DE00);
        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      sub_2280FCC84(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_2280FCC84(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v17 = &qword_27D81E4A8;
      v18 = &unk_22813DE00;
LABEL_7:
      sub_2281001F0(v13, v17, v18);
      goto LABEL_15;
    }

    sub_2280FCC84(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_6:
    v17 = &qword_27D81EAA8;
    v18 = &unk_2281425E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2281001F0(v13, &qword_27D81E4A8, &unk_22813DE00);
LABEL_14:
  if (*v27 == *a2)
  {
    sub_228137D7C();
    sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = sub_22813926C();
    return v22 & 1;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_2280FF69C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16SummarizationKit53Com_Apple_Summarizationkit_Proto_SKSingleClientSwitchV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_2280FBC38(&a1[v14], v13, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280FBC38(&a2[v14], &v13[v15], &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_2280FBC38(v13, v9, &qword_27D81E4B0, &qword_22813AB20);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v26;
      sub_2280FBCA0(&v13[v15], v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v20 = *v9 == *v19 && v9[1] == v19[1];
      if (v20 || (sub_2281399BC() & 1) != 0)
      {
        sub_228137D7C();
        sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v21 = sub_22813926C();
        sub_2280FCC84(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        sub_2280FCC84(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        sub_2281001F0(v13, &qword_27D81E4B0, &qword_22813AB20);
        if (v21)
        {
          goto LABEL_14;
        }

LABEL_17:
        v22 = 0;
        return v22 & 1;
      }

      sub_2280FCC84(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_2280FCC84(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v17 = &qword_27D81E4B0;
      v18 = &qword_22813AB20;
LABEL_7:
      sub_2281001F0(v13, v17, v18);
      goto LABEL_17;
    }

    sub_2280FCC84(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
LABEL_6:
    v17 = &qword_27D81EAA0;
    v18 = &unk_22813D8E0;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2281001F0(v13, &qword_27D81E4B0, &qword_22813AB20);
LABEL_14:
  if (*v27 != *a2 || (sub_22803BD78(*(v27 + 1), *(a2 + 1)) & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_228137D7C();
  sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_22813926C();
  return v22 & 1;
}

void sub_2280FFEA0(uint64_t a1)
{
  sub_228137D7C();
  if (v1 <= 0x3F)
  {
    sub_228100098(319, qword_2813C5A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280FFF8C(uint64_t a1)
{
  sub_228100098(319, &qword_2813C46B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      sub_228100098(319, qword_2813C5EC0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_228100098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228100124(uint64_t a1)
{
  sub_228100098(319, &qword_2813C46C0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2281001F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228100294(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v41 - v13;
  v43 = v1;
  sub_22813710C();
  v15 = sub_22813701C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_228102DB0(v14, &qword_27D81E328, &qword_2281402C0);
LABEL_26:
    v28 = 0;
    return v28 & 1;
  }

  v41[0] = v8;
  v42 = v6;
  v18 = sub_228136FFC();
  v19 = a1;
  v21 = v20;
  v22 = *(v16 + 8);
  v22(v14, v15);
  v41[1] = v19;
  sub_22813710C();
  if (v17(v12, 1, v15) == 1)
  {

    sub_228102DB0(v12, &qword_27D81E328, &qword_2281402C0);
    goto LABEL_26;
  }

  v23 = sub_228136FFC();
  v25 = v24;
  v22(v12, v15);
  if (v18 == v23 && v21 == v25)
  {

    v29 = v42;
  }

  else
  {
    v27 = sub_2281399BC();

    v28 = 0;
    v29 = v42;
    if ((v27 & 1) == 0)
    {
      return v28 & 1;
    }
  }

  v30 = v41[0];
  sub_22813712C();
  v31 = sub_2281370BC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    sub_228102DB0(v30, &qword_27D81E320, &unk_22813A7D0);
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = sub_228136FFC();
    v35 = v36;
    (*(v32 + 8))(v30, v31);
  }

  sub_22813712C();
  if (v33(v29, 1, v31) == 1)
  {
    sub_228102DB0(v29, &qword_27D81E320, &unk_22813A7D0);
    if (!v35)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v37 = sub_228136FFC();
  v39 = v38;
  (*(v32 + 8))(v29, v31);
  if (!v35)
  {
    if (!v39)
    {
LABEL_28:
      v28 = 1;
      return v28 & 1;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (!v39)
  {
    goto LABEL_25;
  }

  if (v34 == v37 && v35 == v39)
  {

    v28 = 1;
  }

  else
  {
    v28 = sub_2281399BC();
  }

  return v28 & 1;
}

uint64_t sub_2281006F8(char *a1)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v18 = sub_22813713C();
  v67 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C86B0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v21 = off_2813C86B8;
  v66 = *(off_2813C86B8 + 2);
  if (v66)
  {
    v54 = v12;
    v55 = v10;
    v52 = v4;
    v53 = v6;
    v22 = 0;
    v64 = off_2813C86B8 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v62 = off_2813C86B8;
    v63 = v67 + 16;
    v65 = (v67 + 8);
    v57 = v18;
    v59 = v17;
    v60 = v20;
    while (1)
    {
      if (v22 >= v21[2])
      {
        __break(1u);
        goto LABEL_45;
      }

      (*(v67 + 16))(v20, &v64[*(v67 + 72) * v22], v18);
      v6 = v20;
      sub_22813710C();
      v12 = sub_22813701C();
      v10 = *(v12 - 8);
      v23 = *(v10 + 6);
      if (v23(v17, 1, v12) == 1)
      {
        v24 = v17;
        v25 = &qword_27D81E328;
        v26 = &qword_2281402C0;
        goto LABEL_7;
      }

      v27 = sub_228136FFC();
      v4 = v28;
      v29 = v17;
      v31 = *(v10 + 1);
      v10 += 8;
      v30 = v31;
      v31(v29, v12);
      v32 = v58;
      v6 = v61;
      sub_22813710C();
      if (v23(v32, 1, v12) == 1)
      {

        sub_228102DB0(v32, &qword_27D81E328, &qword_2281402C0);
        v18 = v57;
        goto LABEL_10;
      }

      v33 = sub_228136FFC();
      v6 = v34;
      v30(v32, v12);
      if (v27 == v33 && v4 == v6)
      {

        v18 = v57;
        v17 = v59;
      }

      else
      {
        v12 = sub_2281399BC();

        v18 = v57;
        v17 = v59;
        v20 = v60;
        if ((v12 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v35 = v54;
      sub_22813712C();
      v4 = sub_2281370BC();
      v36 = *(v4 - 8);
      v10 = (v36 + 48);
      v37 = *(v36 + 48);
      if (v37(v35, 1, v4) == 1)
      {
        sub_228102DB0(v35, &qword_27D81E320, &unk_22813A7D0);
        v56 = 0;
        v12 = 0;
      }

      else
      {
        v56 = sub_228136FFC();
        v38 = v35;
        v12 = v39;
        (*(v36 + 8))(v38, v4);
      }

      v40 = v55;
      v6 = v61;
      sub_22813712C();
      if (v37(v40, 1, v4) == 1)
      {
        sub_228102DB0(v40, &qword_27D81E320, &unk_22813A7D0);
        v20 = v60;
        if (v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v41 = sub_228136FFC();
        v6 = v42;
        (*(v36 + 8))(v40, v4);
        if (v12)
        {
          v20 = v60;
          if (!v6)
          {
            goto LABEL_28;
          }

          if (v56 == v41 && v12 == v6)
          {
          }

          else
          {
            v4 = sub_2281399BC();

            if ((v4 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v20 = v60;
          if (v6)
          {
LABEL_28:

            goto LABEL_29;
          }
        }
      }

      v12 = v53;
      v6 = v20;
      sub_22813711C();
      v4 = sub_22813708C();
      v10 = *(v4 - 8);
      v43 = *(v10 + 6);
      if (v43(v12, 1, v4) == 1)
      {
        break;
      }

      v56 = sub_228136FFC();
      v44 = v12;
      v12 = v45;
      v47 = *(v10 + 1);
      v10 += 8;
      v46 = v47;
      v47(v44, v4);
      v48 = v52;
      v6 = v61;
      sub_22813711C();
      if (v43(v48, 1, v4) == 1)
      {

        sub_228102DB0(v48, &qword_27D81E580, &unk_2281402B0);
LABEL_10:
        v17 = v59;
        v20 = v60;
        goto LABEL_29;
      }

      v49 = sub_228136FFC();
      v6 = v50;
      v46(v48, v4);
      v17 = v59;
      if (v56 == v49 && v12 == v6)
      {

        (*v65)(v60, v18);
        return 1;
      }

      v4 = sub_2281399BC();

      v20 = v60;
      (*v65)(v60, v18);
      if (v4)
      {
        return 1;
      }

LABEL_30:
      ++v22;
      v21 = v62;
      if (v66 == v22)
      {
        return 0;
      }
    }

    v24 = v12;
    v25 = &qword_27D81E580;
    v26 = &unk_2281402B0;
LABEL_7:
    sub_228102DB0(v24, v25, v26);
LABEL_29:
    (*v65)(v20, v18);
    goto LABEL_30;
  }

  return 0;
}

uint64_t sub_228100F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  if ((sub_228100294(a1) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_22813711C();
  v8 = sub_22813708C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = v7;
LABEL_6:
    sub_228102DB0(v11, &qword_27D81E580, &unk_2281402B0);
LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  v22 = sub_228136FFC();
  v13 = v12;
  v14 = *(v9 + 8);
  v14(v7, v8);
  sub_22813711C();
  if (v10(v5, 1, v8) == 1)
  {

    v11 = v5;
    goto LABEL_6;
  }

  v17 = sub_228136FFC();
  v19 = v18;
  v14(v5, v8);
  if (v22 == v17 && v13 == v19)
  {

    v15 = 1;
  }

  else
  {
    v15 = sub_2281399BC();
  }

  return v15 & 1;
}

uint64_t sub_228101134()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v47 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v9 = *(sub_22813713C() - 8);
  v55 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v50 = 8 * v55;
  v11 = swift_allocObject();
  v48 = v11;
  *(v11 + 16) = xmmword_22813BA30;
  v57 = v11 + v10;
  sub_22813700C();
  v56 = sub_22813701C();
  v12 = *(v56 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v8, 0, 1, v56);
  v60 = v14;
  v15 = v13;
  v49 = v13;
  v59 = sub_2281370BC();
  v16 = *(v59 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v5, 1, 1, v59);
  v54 = v17;
  sub_22813707C();
  v19 = sub_22813708C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v58 = v19;
  v21(v2, 0, 1, v19);
  v51 = v21;
  sub_2281370FC();
  sub_22813700C();
  v15(v8, 0, 1, v56);
  v23 = v59;
  v53 = v18;
  v17(v5, 1, 1, v59);
  sub_22813707C();
  v52 = v22;
  v21(v2, 0, 1, v19);
  v24 = v55;
  sub_2281370FC();
  v47 = 2 * v24;
  sub_22813700C();
  v25 = v56;
  v26 = v49;
  v49(v8, 0, 1, v56);
  v54(v5, 1, 1, v23);
  sub_22813707C();
  v27 = v51;
  v51(v2, 0, 1, v58);
  v28 = v47;
  sub_2281370FC();
  v47 = v28 + v55;
  sub_22813700C();
  v26(v8, 0, 1, v25);
  v29 = v59;
  v30 = v54;
  v54(v5, 1, 1, v59);
  sub_22813707C();
  v31 = v58;
  v27(v2, 0, 1, v58);
  sub_2281370FC();
  sub_22813700C();
  v32 = v56;
  v26(v8, 0, 1, v56);
  v30(v5, 1, 1, v29);
  sub_22813707C();
  v33 = v31;
  v34 = v51;
  v51(v2, 0, 1, v33);
  v35 = v57;
  sub_2281370FC();
  v36 = v55;
  sub_22813700C();
  v37 = v32;
  v38 = v49;
  v49(v8, 0, 1, v37);
  v54(v5, 1, 1, v59);
  sub_22813707C();
  v34(v2, 0, 1, v58);
  sub_2281370FC();
  v47 = v35 + 6 * v36;
  sub_22813700C();
  v39 = v56;
  v40 = v38;
  v38(v8, 0, 1, v56);
  v41 = v5;
  v42 = v59;
  v43 = v54;
  v54(v5, 1, 1, v59);
  sub_22813707C();
  v44 = v51;
  v51(v2, 0, 1, v58);
  sub_2281370FC();
  v55 = v50 - v55;
  sub_22813700C();
  v40(v8, 0, 1, v39);
  v43(v41, 1, 1, v42);
  sub_22813707C();
  v45 = v58;
  v44(v2, 0, 1, v58);
  sub_2281370FC();
  sub_22813700C();
  v40(v8, 0, 1, v56);
  v43(v41, 1, 1, v59);
  sub_22813707C();
  v44(v2, 0, 1, v45);
  result = sub_2281370FC();
  qword_2813C86C8 = v48;
  return result;
}

uint64_t sub_228101938()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v43 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v43 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v9 = *(sub_22813713C() - 8);
  v52 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v45 = v11;
  *(v11 + 16) = xmmword_228142C10;
  v54 = v11 + v10;
  sub_22813700C();
  v12 = sub_22813701C();
  v13 = *(v12 - 8);
  v47 = *(v13 + 56);
  v14 = v13 + 56;
  v49 = v12;
  v47(v8, 0, 1, v12);
  v46 = v14;
  v15 = sub_2281370BC();
  v16 = *(v15 - 8);
  v53 = *(v16 + 56);
  v17 = v16 + 56;
  v18 = v15;
  v48 = v15;
  v53(v5, 1, 1);
  v51 = v17;
  sub_22813707C();
  v19 = sub_22813708C();
  v20 = *(v19 - 8);
  v50 = *(v20 + 56);
  v21 = v20 + 56;
  v50(v2, 0, 1, v19);
  v55 = v21;
  sub_2281370FC();
  sub_22813700C();
  v22 = v12;
  v23 = v47;
  v47(v8, 0, 1, v22);
  v24 = v5;
  v25 = v18;
  v26 = v53;
  (v53)(v5, 1, 1, v25);
  sub_22813707C();
  v27 = v50;
  v50(v2, 0, 1, v19);
  sub_2281370FC();
  sub_22813700C();
  v28 = v49;
  v23(v8, 0, 1, v49);
  v26(v24, 1, 1, v48);
  sub_22813707C();
  v29 = v19;
  v27(v2, 0, 1, v19);
  sub_2281370FC();
  v30 = v52;
  sub_22813700C();
  v31 = v28;
  v32 = v47;
  v47(v8, 0, 1, v31);
  v33 = v24;
  v34 = v24;
  v35 = v48;
  (v53)(v34, 1, 1, v48);
  sub_22813707C();
  v44 = v29;
  v50(v2, 0, 1, v29);
  v36 = v33;
  sub_2281370FC();
  sub_22813700C();
  v37 = v32;
  v32(v8, 0, 1, v49);
  (v53)(v36, 1, 1, v35);
  sub_22813707C();
  v38 = v50;
  v50(v2, 0, 1, v29);
  sub_2281370FC();
  v43[1] = 4 * v30 + v52;
  sub_22813700C();
  v39 = v49;
  v37(v8, 0, 1, v49);
  v40 = v53;
  (v53)(v36, 1, 1, v35);
  sub_22813707C();
  v41 = v44;
  v38(v2, 0, 1, v44);
  sub_2281370FC();
  sub_22813700C();
  v47(v8, 0, 1, v39);
  v40(v36, 1, 1, v48);
  sub_22813707C();
  v38(v2, 0, 1, v41);
  result = sub_2281370FC();
  qword_2813C86E8 = v45;
  return result;
}

uint64_t sub_22810200C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v46 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v9 = *(sub_22813713C() - 8);
  v56 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v49 = 8 * v56;
  v11 = swift_allocObject();
  v47 = v11;
  *(v11 + 16) = xmmword_22813BA30;
  v53 = v11 + v10;
  sub_22813700C();
  v52 = sub_22813701C();
  v12 = *(v52 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v8, 0, 1, v52);
  v59 = v14;
  v15 = v13;
  v48 = v13;
  sub_2281370AC();
  v16 = sub_2281370BC();
  v17 = *(v16 - 8);
  v58 = *(v17 + 56);
  v55 = v17 + 56;
  v58(v5, 0, 1, v16);
  sub_22813707C();
  v18 = sub_22813708C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v57 = v18;
  v20(v2, 0, 1, v18);
  v50 = v20;
  sub_2281370FC();
  sub_22813700C();
  v22 = v52;
  v15(v8, 0, 1, v52);
  sub_2281370AC();
  v23 = v5;
  v54 = v16;
  v58(v5, 0, 1, v16);
  sub_22813707C();
  v51 = v21;
  v20(v2, 0, 1, v18);
  v24 = v56;
  sub_2281370FC();
  v46 = 2 * v24;
  sub_22813700C();
  v25 = v48;
  v48(v8, 0, 1, v22);
  v58(v5, 1, 1, v16);
  sub_22813707C();
  v26 = v50;
  v50(v2, 0, 1, v57);
  v27 = v46;
  sub_2281370FC();
  v46 = v27 + v56;
  sub_22813700C();
  v25(v8, 0, 1, v22);
  v28 = v54;
  v29 = v58;
  v58(v5, 1, 1, v54);
  sub_22813707C();
  v30 = v57;
  v26(v2, 0, 1, v57);
  sub_2281370FC();
  sub_22813700C();
  v31 = v52;
  v25(v8, 0, 1, v52);
  v29(v23, 1, 1, v28);
  sub_22813707C();
  v32 = v30;
  v33 = v50;
  v50(v2, 0, 1, v32);
  v34 = v53;
  sub_2281370FC();
  v35 = v56;
  sub_22813700C();
  v36 = v31;
  v37 = v48;
  v48(v8, 0, 1, v36);
  v58(v23, 1, 1, v54);
  sub_22813707C();
  v33(v2, 0, 1, v57);
  sub_2281370FC();
  v46 = v34 + 6 * v35;
  sub_22813700C();
  v38 = v52;
  v39 = v37;
  v37(v8, 0, 1, v52);
  v40 = v23;
  v41 = v54;
  v42 = v58;
  v58(v23, 1, 1, v54);
  sub_22813707C();
  v43 = v50;
  v50(v2, 0, 1, v57);
  sub_2281370FC();
  v56 = v49 - v56;
  sub_22813700C();
  v39(v8, 0, 1, v38);
  v42(v40, 1, 1, v41);
  sub_22813707C();
  v44 = v57;
  v43(v2, 0, 1, v57);
  sub_2281370FC();
  sub_22813700C();
  v39(v8, 0, 1, v52);
  v42(v40, 1, 1, v54);
  sub_22813707C();
  v43(v2, 0, 1, v44);
  result = sub_2281370FC();
  qword_2813C86D8 = v47;
  return result;
}

uint64_t sub_228102848()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v18 = *(*(sub_22813713C() - 8) + 72);
  v20 = 2 * v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22813B480;
  sub_22813700C();
  v9 = sub_22813701C();
  v17 = *(*(v9 - 8) + 56);
  v16[0] = v9;
  v17(v8, 0, 1, v9);
  sub_2281370AC();
  v10 = sub_2281370BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v16[1] = v11 + 56;
  v12(v5, 0, 1, v10);
  sub_22813707C();
  v21 = sub_22813708C();
  v22 = *(*(v21 - 8) + 56);
  v22(v2, 0, 1, v21);
  sub_2281370FC();
  sub_22813700C();
  v13 = v9;
  v14 = v17;
  v17(v8, 0, 1, v13);
  v12(v5, 1, 1, v10);
  sub_22813707C();
  v22(v2, 0, 1, v21);
  sub_2281370FC();
  sub_22813700C();
  v14(v8, 0, 1, v16[0]);
  v12(v5, 1, 1, v10);
  sub_22813707C();
  v22(v2, 0, 1, v21);
  result = sub_2281370FC();
  qword_2813C86F8 = v19;
  return result;
}

uint64_t sub_228102C60()
{
  if (qword_2813C86C0 != -1)
  {
    swift_once();
  }

  v0 = qword_2813C86C8;
  v1 = qword_2813C86E0;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_227FED2DC(v2);
  if (qword_2813C86F0 != -1)
  {
    swift_once();
  }

  sub_227FED2DC(v3);
  if (qword_2813C86D0 != -1)
  {
    swift_once();
  }

  result = sub_227FED2DC(v4);
  off_2813C86B8 = v0;
  return result;
}

uint64_t sub_228102DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228102E10()
{
  v0 = sub_22813716C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22813704C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3D8, &qword_228142C28);
  swift_allocObject();
  result = sub_228139B5C();
  qword_2813C8B90 = result;
  return result;
}

uint64_t sub_228102EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3D0, &qword_228142C20);
  swift_allocObject();
  result = sub_228139B5C();
  qword_2813C8AD0 = result;
  return result;
}

uint64_t sub_228102F0C()
{
  v0 = sub_22813713C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C6928 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  v4 = v12;
  if (!v12)
  {
    v5 = sub_22813703C();
    v6 = *(v5 + 16);
    if (v6)
    {
      v12 = MEMORY[0x277D84F90];
      sub_228043B14(0, v6, 0);
      v4 = v12;
      v7 = v5 + 40;
      do
      {

        sub_2281370DC();
        v12 = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_228043B14((v8 > 1), v9 + 1, 1);
          v4 = v12;
        }

        *(v4 + 16) = v9 + 1;
        (*(v1 + 32))(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v3, v0);
        v7 += 16;
        --v6;
      }

      while (v6);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v4;
}

uint64_t sub_228103100()
{
  result = sub_22810333C(&unk_283B5AFD0);
  qword_2813C8B50 = result;
  *algn_2813C8B58 = v1;
  return result;
}

uint64_t sub_22810312C(uint64_t a1)
{
  result = sub_2281033EC(a1);
  qword_2813C8788 = result;
  unk_2813C8790 = v2;
  return result;
}

uint64_t sub_228103150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_228136D2C();
  v11 = result;
  if (result)
  {
    result = sub_228136D4C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_228136D3C();
  sub_227FC8C94(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_228103208(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2281032C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_228136D5C();
  swift_allocObject();
  result = sub_228136D1C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_228136ECC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22810333C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3E8, &unk_228142C30);
  v10 = sub_228103664();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_227FC98AC(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_2281033EC(uint64_t a1)
{
  v1 = sub_2281393DC();
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_36:

    v17 = sub_22810333C(v5);

    return v17;
  }

  v3 = v1;
  v4 = v2;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == 2573 && v4 == 0xE200000000000000 || (result = sub_2281399BC(), (result & 1) != 0))
    {

      LOBYTE(v6) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_6;
    }

    v11 = (v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v3 & 0xFFFFFFFFFFFFLL;
    if (!v11)
    {
      break;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v16 = sub_22813933C();
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v13 = v3;
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v12 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_2281398AC();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    if (v16 >> 14 != 4 * v11)
    {
      goto LABEL_31;
    }

    result = sub_2280AAC4C(v3, v4);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_31:

      LOBYTE(v6) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      result = sub_2280AAC4C(v3, v4);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      v6 = result;

      if ((v6 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_32:
        v5 = sub_2281336C8(0, *(v5 + 2) + 1, 1, v5);
      }
    }

LABEL_6:
    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2281336C8((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v5[v8 + 32] = v6;
    v3 = sub_2281393DC();
    v4 = v9;
    if (!v9)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_228103664()
{
  result = qword_2813C4668;
  if (!qword_2813C4668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81F3E8, &unk_228142C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4668);
  }

  return result;
}

uint64_t sub_2281036C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_228139B2C();
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (v5 + 8);

  v10 = 0;
  v11 = 0;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_22813987C();
      v15 = v14;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24[0] = a1;
        v24[1] = v23;
        v13 = v24 + v11;
      }

      else
      {
        v12 = v22;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v12 = sub_2281398AC();
        }

        v13 = (v12 + v11);
      }

      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v19 = (__clz(*v13 ^ 0xFF) - 24);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          v15 = 3;
        }

        else
        {
          v15 = 4;
        }

        goto LABEL_16;
      }

      if (v19 == 1)
      {
LABEL_15:
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

LABEL_16:
    if ((v10 & 1) == 0 || (sub_228139B3C(), v16 = sub_228139B0C(), (*v9)(v7, v4), (v16 & 1) == 0))
    {
      v11 += v15;
      sub_228139B3C();
      v10 = sub_228139B1C();
      v17 = *v9;
      (*v9)(v7, v4);
      if ((v10 & 1) == 0)
      {
        continue;
      }

      sub_228139B3C();
      v18 = sub_228139AFC();
      v17(v7, v4);
      if ((v18 & 1) == 0)
      {
        continue;
      }
    }

    v20 = 1;
    goto LABEL_28;
  }

  while (v11 < v8);
  v20 = 0;
LABEL_28:

  return v20;
}

uint64_t objectdestroyTm_17()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ClassificationConfiguration.__allocating_init(assetManager:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = (v2 + qword_2813C68F8);
  *v3 = 0xD00000000000001BLL;
  v3[1] = 0x8000000228142C20;
  v4 = (v2 + qword_2813C6900);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v2 + qword_2813C68F0);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  *(v2 + qword_2813C68E8) = 0;
  return sub_227FDF5B4(a1, 0, 0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t sub_228103A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v61 = a3;
  v5 = sub_22813716C();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PriorityModelSession.Input(0);
  v8 = MEMORY[0x28223BE20](v7);
  v57 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v53 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_228136F8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228104D40(a2, v14, &qword_27D81EC50, &unk_228140BB0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_228104DA8(v14, &qword_27D81EC50, &unk_228140BB0);
    v20 = 3;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_228136EFC();
    v22 = v21;
    v23 = *(v7 + 24);
    sub_228136EFC();
    v25 = v22 - v24;
    if (qword_2813C49D8 != -1)
    {
      swift_once();
    }

    v26 = v25 / 3600.0;
    v27 = sub_22813882C();
    v28 = __swift_project_value_buffer(v27, qword_2813C8A08);
    sub_228104E08(a1, v11, type metadata accessor for PriorityModelSession.Input);
    v29 = sub_22813880C();
    v30 = sub_2281396BC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = v23;
      v32 = v31;
      v33 = swift_slowAlloc();
      v55 = a1;
      v53 = v28;
      v34 = v33;
      v62 = v33;
      *v32 = 134349314;
      *(v32 + 4) = v26;
      *(v32 + 12) = 2082;
      v56 = v15;
      v35 = v18;
      v36 = *v11;
      v37 = v11[1];

      sub_227FCDD44(v11, type metadata accessor for PriorityModelSession.Input);
      v38 = sub_227FCC340(v36, v37, &v62);
      v18 = v35;

      *(v32 + 14) = v38;
      v15 = v56;
      _os_log_impl(&dword_227FC3000, v29, v30, "Time interval between eventDate and dateReceived %{public}f hours for ID: %{public}s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      a1 = v55;
      MEMORY[0x22AAB28A0](v34, -1, -1);
      v39 = v32;
      v23 = v54;
      MEMORY[0x22AAB28A0](v39, -1, -1);
    }

    else
    {

      sub_227FCDD44(v11, type metadata accessor for PriorityModelSession.Input);
    }

    if (v26 <= 24.0)
    {
      v40 = v58;
      sub_2281370CC();
      v41 = sub_2280DC3FC((a1 + v23));
      (*(v59 + 8))(v40, v60);
      if ((v41 & 0x100000000) != 0)
      {
        result = (*(v16 + 8))(v18, v15);
        v20 = 0;
      }

      else
      {
        v42 = *&v41;
        v43 = v57;
        sub_228104E08(a1, v57, type metadata accessor for PriorityModelSession.Input);
        v44 = sub_22813880C();
        v45 = sub_2281396BC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v62 = v47;
          *v46 = 134349314;
          *(v46 + 4) = v42;
          *(v46 + 12) = 2082;
          v48 = v18;
          v49 = *v43;
          v50 = v43[1];

          sub_227FCDD44(v43, type metadata accessor for PriorityModelSession.Input);
          v51 = sub_227FCC340(v49, v50, &v62);

          *(v46 + 14) = v51;
          _os_log_impl(&dword_227FC3000, v44, v45, "Remaining hours of today %{public}f for ID: %{public}s", v46, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x22AAB28A0](v47, -1, -1);
          MEMORY[0x22AAB28A0](v46, -1, -1);

          result = (*(v16 + 8))(v48, v15);
        }

        else
        {

          sub_227FCDD44(v43, type metadata accessor for PriorityModelSession.Input);
          result = (*(v16 + 8))(v18, v15);
        }

        v20 = v26 >= v42;
      }
    }

    else
    {
      result = (*(v16 + 8))(v18, v15);
      v20 = 2;
    }
  }

  v52 = v61;
  *v61 = v20;
  *(v52 + 8) = 1;
  return result;
}

uint64_t sub_2281040F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v31 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v32 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  result = MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (*(a1 + 8))
  {
    goto LABEL_4;
  }

  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_4:
  v30 = *a1;
  v20 = *(*v1 + 96);
  swift_beginAccess();
  sub_228104E08(v1 + v20, v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  sub_228104D40(&v18[*(v15 + 28)], v10, &qword_27D81F268, &qword_228142CB0);
  v21 = *(v12 + 48);
  if (v21(v10, 1, v11) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    sub_228137D6C();
    sub_227FCDD44(v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    v22 = v31;
    (*(v6 + 56))(&v14[*(v11 + 24)], 1, 1, v31);
    if (v21(v10, 1, v11) != 1)
    {
      sub_228104DA8(v10, &qword_27D81F268, &qword_228142CB0);
    }
  }

  else
  {
    sub_227FCDD44(v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    sub_228104CD8(v10, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
    v22 = v31;
  }

  sub_228104D40(&v14[*(v11 + 24)], v5, &qword_27D81F260, &unk_228141690);
  v23 = *(v6 + 48);
  if (v23(v5, 1, v22) == 1)
  {
    v24 = sub_227FE4410(MEMORY[0x277D84F90]);
    v25 = v32;
    *v32 = v24;
    sub_228137D6C();
    sub_227FCDD44(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
    if (v23(v5, 1, v22) != 1)
    {
      sub_228104DA8(v5, &qword_27D81F260, &unk_228141690);
    }
  }

  else
  {
    sub_227FCDD44(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
    v25 = v32;
    sub_228104CD8(v5, v32, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  v26 = 0x54746E6576456F6ELL;
  v27 = *v25;
  if (*(*v25 + 16))
  {
    v28 = sub_22808C91C(v30);
    if (v29)
    {
      v26 = *(*(v27 + 56) + 16 * v28);
    }
  }

  sub_227FCDD44(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  return v26;
}

uint64_t ClassificationConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = (v0 + qword_2813C68F8);
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x8000000228142C20;
  v2 = (v0 + qword_2813C6900);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C68F0);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  *(v0 + qword_2813C68E8) = 0;
  return sub_227FDC5A4(0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t ClassificationConfiguration.init()()
{
  v1 = (v0 + qword_2813C68F8);
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x8000000228142C20;
  v2 = (v0 + qword_2813C6900);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C68F0);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  *(v0 + qword_2813C68E8) = 0;
  return sub_227FDC5A4(0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t ClassificationConfiguration.__allocating_init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = (v4 + qword_2813C68F8);
  *v5 = 0xD00000000000001BLL;
  v5[1] = 0x8000000228142C20;
  v6 = (v4 + qword_2813C6900);
  *v6 = 0x7478746270;
  v6[1] = 0xE500000000000000;
  v7 = (v4 + qword_2813C68F0);
  *v7 = 0xD000000000000010;
  v7[1] = 0x8000000228143AB0;
  *(v4 + qword_2813C68E8) = 0;
  return sub_227FDE650(a1, a2);
}

uint64_t ClassificationConfiguration.init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + qword_2813C68F8);
  *v3 = 0xD00000000000001BLL;
  v3[1] = 0x8000000228142C20;
  v4 = (v2 + qword_2813C6900);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v2 + qword_2813C68F0);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  *(v2 + qword_2813C68E8) = 0;
  return sub_227FDE650(a1, a2);
}

uint64_t ClassificationConfiguration.init(assetManager:)(void *a1)
{
  v2 = (v1 + qword_2813C68F8);
  *v2 = 0xD00000000000001BLL;
  v2[1] = 0x8000000228142C20;
  v3 = (v1 + qword_2813C6900);
  *v3 = 0x7478746270;
  v3[1] = 0xE500000000000000;
  v4 = (v1 + qword_2813C68F0);
  *v4 = 0xD000000000000010;
  v4[1] = 0x8000000228143AB0;
  *(v1 + qword_2813C68E8) = 0;
  return sub_227FDF5B4(a1, 0, 0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

BOOL sub_228104930(_DWORD *a1, _DWORD *a2)
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
    *(v7 + 4) = sub_227FCC340(0xD00000000000003CLL, 0x8000000228148CD0, &v10);
    _os_log_impl(&dword_227FC3000, v5, v6, "version comparison of %{public}s is implemented", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  return *a2 < *a1;
}

uint64_t sub_228104ACC()
{
}

uint64_t ClassificationConfiguration.deinit()
{
  sub_227FCDD44(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return v0;
}

uint64_t type metadata accessor for ClassificationConfiguration(uint64_t a1)
{
  result = qword_2813C68D8;
  if (!qword_2813C68D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228104CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228104D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228104DA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228104E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228104E70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = qword_2813C6AC0;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_2280EAEE0(a1, a2, v8);

  if ((v9 & 1) == 0)
  {
    v10 = v3 + *(*v3 + 96);
    swift_beginAccess();
    if (*(v10 + 16))
    {
      v11 = swift_allocObject();
      v12 = 19;
      *(v11 + 16) = 19;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      v13 = sub_22812D41C;
      v14 = 96;
LABEL_21:
      v35 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228143BF0, v14, v13, v11);
      sub_227FDB3CC();
      swift_allocError();
      *v36 = v12;
      *(v36 + 8) = v35;
      return swift_willThrow();
    }

    v15 = v3;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v16 = sub_22813882C();
    __swift_project_value_buffer(v16, qword_2813C89F0);

    v17 = sub_22813880C();
    v18 = sub_2281396BC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_227FCC340(a1, a2, v37);
      _os_log_impl(&dword_227FC3000, v17, v18, "clientID %{public}s is not configured in ClientSwitchConfiguration; assuming enabled by default", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v20);
      MEMORY[0x22AAB28A0](v20, -1, -1);
      MEMORY[0x22AAB28A0](v19, -1, -1);
    }

    v3 = v15;
  }

  v21 = qword_2813C6AB0;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (!*(v22 + 16))
  {
    return swift_endAccess();
  }

  v23 = sub_22808C964(a1, a2);
  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();
  v26 = *(v25 + 16);

  if (v26 && (sub_22808C964(0x5F4C4C415FLL, 0xE500000000000000), (v27 & 1) != 0) || (v28 = *(a3 + 16)) == 0)
  {

    v11 = swift_allocObject();
    v12 = 15;
    *(v11 + 16) = 15;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    v13 = sub_22812D418;
    v14 = 113;
    goto LABEL_21;
  }

  v29 = (a3 + 40);
  do
  {
    if (*(v25 + 16))
    {
      v30 = *(v29 - 1);
      v31 = *v29;

      sub_22808C964(v30, v31);
      v33 = v32;

      if (v33)
      {

        v11 = swift_allocObject();
        v12 = 15;
        *(v11 + 16) = 15;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        v13 = sub_22812D414;
        v14 = 118;
        goto LABEL_21;
      }
    }

    v29 += 2;
    --v28;
  }

  while (v28);
}

uint64_t sub_228105284(uint64_t a1)
{
  v2 = sub_228138C0C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v40 = &v33 - v6;
  v47 = MEMORY[0x277D84F90];
  sub_228043D60(0, v7, 0);
  v8 = v47;
  v9 = a1 + 56;
  result = sub_2281397FC();
  v11 = result;
  v12 = 0;
  v38 = v3 + 16;
  v39 = (v3 + 8);
  v33 = a1 + 64;
  v34 = v3;
  v13 = v3;
  v42 = a1;
  v35 = v2;
  v36 = v7;
  v37 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    v17 = v8;
    v18 = *(a1 + 36);
    v43 = v12;
    v44 = v18;
    v19 = *(a1 + 48) + *(v13 + 72) * v11;
    v20 = *(v13 + 16);
    v21 = v40;
    v20(v40, v19, v2);
    v8 = v41;
    v20(v41, v21, v2);
    v22 = v45;
    sub_227FE6B6C(v8, &v46);
    if (v22)
    {
      (*v39)(v21, v2);

      return v8;
    }

    v45 = 0;
    result = (*v39)(v21, v2);
    v23 = v46;
    v8 = v17;
    v47 = v17;
    v24 = *(v17 + 16);
    v25 = *(v8 + 24);
    if (v24 >= v25 >> 1)
    {
      result = sub_228043D60((v25 > 1), v24 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v24 + 1;
    *(v8 + v24 + 32) = v23;
    a1 = v42;
    v14 = 1 << *(v42 + 32);
    v9 = v37;
    if (v11 >= v14)
    {
      goto LABEL_26;
    }

    v26 = *(v37 + 8 * v16);
    if ((v26 & (1 << v11)) == 0)
    {
      goto LABEL_27;
    }

    if (v44 != *(v42 + 36))
    {
      goto LABEL_28;
    }

    v27 = v26 & (-2 << (v11 & 0x3F));
    if (v27)
    {
      v14 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v36;
    }

    else
    {
      v28 = v16 << 6;
      v29 = v16 + 1;
      v30 = (v33 + 8 * v16);
      v15 = v36;
      while (v29 < (v14 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_22812CAD8(v11, v44, 0);
          v14 = __clz(__rbit64(v31)) + v28;
          goto LABEL_20;
        }
      }

      result = sub_22812CAD8(v11, v44, 0);
LABEL_20:
      a1 = v42;
    }

    v12 = v43 + 1;
    v11 = v14;
    v13 = v34;
    v2 = v35;
    if (v43 + 1 == v15)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_228105610(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_227FC7F80(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22801D428();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  sub_22812D31C(v8 + *(*(v9 - 8) + 72) * v5, &qword_27D81E4A0, &unk_22813AB10);
  v10 = *(*(v7 + 56) + 24 * v5);
  sub_227FCD570(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_228105700(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_22808D108(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22801DE60();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  sub_22812D31C(v8 + *(*(v9 - 8) + 72) * v5, &qword_27D81E3D8, &unk_22813C640);
  v10 = *(*(v7 + 56) + 24 * v5);
  sub_228028514(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_2281057F0(void *a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F458, &qword_228142F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v77 - v8;
  v10 = sub_228136FCC();
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v82 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v84 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = (&v77 - v23);
  sub_22812CAE4(a2 + 16, &v97);
  v96[3] = &type metadata for PriorityModelSession.Configuration;
  v96[4] = &off_283B5F1E0;
  sub_228106B08(&v97, v96, &qword_27D81E4A0, &unk_22813AB10, v24);
  v85 = a1;
  v25 = *a1;
  if (*(*a1 + 16) && (v26 = sub_227FC7F80(v24), (v27 & 1) != 0))
  {
    v28 = (*(v25 + 56) + 24 * v26);
    v29 = v28[1];
    v30 = v28[2];
    v97 = *v28;
    v98 = v29;
    v99 = v30;
  }

  else
  {
    v97 = sub_22812AFB8(MEMORY[0x277D84F90]);
    v98 = v31;
    v99 = v32;
  }

  v33 = v95;
  *v95 = a2;

  sub_228136F6C();
  v34 = *(v15 + 40);
  sub_228136FBC();
  v35 = v90;
  v36 = *(v90 + 16);
  v81 = v34;
  v37 = (v33 + v34);
  v38 = v91;
  v80 = v90 + 16;
  v79 = v36;
  v36(v14, v37, v91);
  sub_227FCAFD4(v33, v9, &qword_27D81EBA0, &qword_22813DAF0);
  (*(v16 + 56))(v9, 0, 1, v15);
  sub_2281072A8(v9, v14);
  v39 = v99;
  v89 = *(v99 + 16);
  v40 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v87 = v14;
  v93 = v24;
  v100 = v39;
  if (byte_2813C4629 == 1)
  {
    v41 = v35;
    v42 = v38;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v43 = &off_27D81EDB0;
  }

  else
  {
    v41 = v35;
    v42 = v38;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v43 = &qword_2813C76F8;
  }

  v44 = *(*v43 + 2048);
  v45 = *(*v43 + 2056);
  v46 = *(*v43 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v45(v96, v46);

    v44 = v96[0];
  }

  else
  {
  }

  v48 = v42;
  if (v44 >= v89)
  {
    v50 = v41;
    v57 = v87;
    v58 = v100;
LABEL_26:
    v61 = v97;
    v62 = v98;
    v91 = v97;

    v90 = v62;

    v63 = v85;
    v100 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = *v63;
    v65 = v62;
    v66 = v93;
    sub_22801BA08(v61, v65, v58, v93, isUniquelyReferenced_nonNull_native);
    *v63 = v96[0];
    v67 = sub_22813959C();
    (*(*(v67 - 8) + 56))(v94, 1, 1, v67);
    v68 = swift_allocObject();
    swift_weakInit();
    v69 = v84;
    sub_227FCAFD4(v66, v84, &qword_27D81E4A0, &unk_22813AB10);
    v70 = v95;
    v79(v57, &v95[v81], v48);
    v71 = v48;
    v72 = (*(v82 + 80) + 40) & ~*(v82 + 80);
    v73 = v57;
    v74 = (v83 + *(v50 + 80) + v72) & ~*(v50 + 80);
    v75 = v50;
    v76 = swift_allocObject();
    *(v76 + 2) = 0;
    *(v76 + 3) = 0;
    *(v76 + 4) = v68;
    sub_227FCCD78(v69, &v76[v72], &qword_27D81E4A0, &unk_22813AB10);
    (*(v75 + 32))(&v76[v74], v73, v71);
    sub_228109FEC(0, 0, v94, &unk_228142F60, v76);

    sub_22812D31C(v70, &qword_27D81EBA0, &qword_22813DAF0);
    sub_22812D31C(v93, &qword_27D81E4A0, &unk_22813AB10);

    return 1;
  }

  v49 = *(v100 + 16);
  if (v49)
  {
    v50 = v41;
    v51 = v49 - 1;
    v52 = v97;
    if (v97)
    {
      v53 = v98;

      v54 = v53;
      v55 = v92;
      v56 = sub_22812B4F0(v52 + 16, v52 + 32, v54, v51);
      v92 = v55;
    }

    else
    {
      v56 = 0;
    }

    v57 = v87;
    v59 = v78;
    sub_227FCC760(v51, v56, v78);
    (*(v50 + 8))(v59, v48);
    v60 = v77;
    sub_227FCCA18(v51, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v77);
    sub_22812D31C(v60, &qword_27D81EBA0, &qword_22813DAF0);
    v58 = v99;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_22810615C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F440, &qword_228142F10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v78 - v8;
  v10 = sub_228136FCC();
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v79 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v83 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v85 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = (&v78 - v23);
  sub_22812CAE4(a2 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo, &v98);
  v97[3] = type metadata accessor for SummarizationSession.Configuration(0);
  v97[4] = &off_283B5FB28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
  sub_22812ABD8(a2 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, boxed_opaque_existential_1, type metadata accessor for SummarizationSession.Configuration);
  sub_228106B08(&v98, v97, &qword_27D81E3D8, &unk_22813C640, v24);
  v86 = a1;
  v26 = *a1;
  if (*(*a1 + 16) && (v27 = sub_22808D108(v24), (v28 & 1) != 0))
  {
    v29 = (*(v26 + 56) + 24 * v27);
    v30 = v29[1];
    v31 = v29[2];
    v98 = *v29;
    v99 = v30;
    v100 = v31;
  }

  else
  {
    v98 = sub_22812B698(MEMORY[0x277D84F90]);
    v99 = v32;
    v100 = v33;
  }

  v34 = v96;
  *v96 = a2;

  sub_228136F6C();
  v35 = *(v15 + 40);
  sub_228136FBC();
  v36 = v91;
  v37 = *(v91 + 16);
  v82 = v35;
  v38 = (v34 + v35);
  v39 = v92;
  v81 = v91 + 16;
  v80 = v37;
  v37(v14, v38, v92);
  sub_227FCAFD4(v34, v9, &qword_27D81EB40, &qword_228142EC0);
  (*(v16 + 56))(v9, 0, 1, v15);
  sub_228107968(v9, v14);
  v40 = v100;
  v90 = *(v100 + 16);
  v41 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v88 = v14;
  v94 = v24;
  v101 = v40;
  if (byte_2813C4629 == 1)
  {
    v42 = v36;
    v43 = v39;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v44 = &off_27D81EDB0;
  }

  else
  {
    v42 = v36;
    v43 = v39;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v44 = &qword_2813C76F8;
  }

  v45 = *(*v44 + 2048);
  v46 = *(*v44 + 2056);
  v47 = *(*v44 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v46(v97, v47);

    v45 = v97[0];
  }

  else
  {
  }

  v49 = v43;
  if (v45 >= v90)
  {
    v51 = v42;
    v58 = v88;
    v59 = v101;
LABEL_26:
    v62 = v98;
    v63 = v99;
    v92 = v98;

    v91 = v63;

    v64 = v86;
    v101 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = *v64;
    v66 = v63;
    v67 = v94;
    sub_22801C09C(v62, v66, v59, v94, isUniquelyReferenced_nonNull_native);
    *v64 = v97[0];
    v68 = sub_22813959C();
    (*(*(v68 - 8) + 56))(v95, 1, 1, v68);
    v69 = swift_allocObject();
    swift_weakInit();
    v70 = v85;
    sub_227FCAFD4(v67, v85, &qword_27D81E3D8, &unk_22813C640);
    v71 = v96;
    v80(v58, &v96[v82], v49);
    v72 = v49;
    v73 = (*(v83 + 80) + 40) & ~*(v83 + 80);
    v74 = v58;
    v75 = (v84 + *(v51 + 80) + v73) & ~*(v51 + 80);
    v76 = v51;
    v77 = swift_allocObject();
    *(v77 + 2) = 0;
    *(v77 + 3) = 0;
    *(v77 + 4) = v69;
    sub_227FCCD78(v70, &v77[v73], &qword_27D81E3D8, &unk_22813C640);
    (*(v76 + 32))(&v77[v75], v74, v72);
    sub_228109FEC(0, 0, v95, &unk_228142F20, v77);

    sub_22812D31C(v71, &qword_27D81EB40, &qword_228142EC0);
    sub_22812D31C(v94, &qword_27D81E3D8, &unk_22813C640);

    return 1;
  }

  v50 = *(v101 + 16);
  if (v50)
  {
    v51 = v42;
    v52 = v50 - 1;
    v53 = v98;
    if (v98)
    {
      v54 = v99;

      v55 = v54;
      v56 = v93;
      v57 = sub_22812B4F0(v53 + 16, v53 + 32, v55, v52);
      v93 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v88;
    v60 = v79;
    sub_227FCC760(v52, v57, v79);
    (*(v51 + 8))(v60, v49);
    v61 = v78;
    sub_227FCCA18(v52, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v78);
    sub_22812D31C(v61, &qword_27D81EB40, &qword_228142EC0);
    v59 = v100;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_228106B08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v47 = a3;
  v48 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v45 = v13;
  v16 = *(v13 + 52);
  v17 = type metadata accessor for ModelBundleIdentifier(0);
  v18 = *(*(v17 - 8) + 56);
  v44 = v16;
  v18(&v15[v16], 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  *v15 = (*(v19 + 8))(v20, v19);
  *(v15 + 1) = v21;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  *(v15 + 2) = (*(v23 + 16))(v22, v23);
  *(v15 + 3) = v24;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  *(v15 + 8) = (*(v26 + 24))(v25, v26);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  *(v15 + 5) = (*(v28 + 32))(v27, v28);
  *(v15 + 6) = v29;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  *(v15 + 14) = (*(v31 + 40))(v30, v31);
  sub_227FCAFD4(a2, v49, &qword_27D81F438, &qword_228142EC8);
  v32 = v50;
  if (v50)
  {
    v33 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v33 + 16))(v32, v33);
    v18(v11, 0, 1, v17);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v49);
  }

  else
  {
    sub_22812D31C(v49, &qword_27D81F438, &qword_228142EC8);
    v18(v11, 1, 1, v17);
  }

  sub_22812D2B4(v11, &v15[v44], &qword_27D81E570, &qword_22813B1F0);
  sub_227FCAFD4(a2, v49, &qword_27D81F438, &qword_228142EC8);
  v34 = v50;
  v35 = v45;
  if (v50)
  {
    v36 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v37 = (*(v36 + 32))(v34, v36) & 1;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v49);
  }

  else
  {
    sub_22812D31C(v49, &qword_27D81F438, &qword_228142EC8);
    v37 = 2;
  }

  v15[*(v35 + 56)] = v37;
  sub_227FCAFD4(a2, v49, &qword_27D81F438, &qword_228142EC8);
  v38 = v50;
  if (v50)
  {
    v39 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    LOBYTE(v39) = (*(v39 + 40))(v38, v39);
    sub_22812D31C(a2, &qword_27D81F438, &qword_228142EC8);
    v40 = v39 & 1;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v49);
  }

  else
  {
    sub_22812D31C(a2, &qword_27D81F438, &qword_228142EC8);
    sub_22812D31C(v49, &qword_27D81F438, &qword_228142EC8);
    v40 = 2;
  }

  v15[*(v35 + 60)] = v40;
  v41 = v47;
  v42 = v48;
  sub_227FCAFD4(v15, v46, v47, v48);
  __swift_destroy_boxed_opaque_existential_1Tm_13(a1);
  return sub_22812D31C(v15, v41, v42);
}

_OWORD *sub_228106F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = *(v7 + 16);
  if (*v3)
  {

    v10 = sub_22812A3BC(a2, a3, v7 + 32, v9, (v8 + 16), v8 + 32);
    v12 = v11;
    v14 = v13;

    sub_227FCAFD4(a1, &v29, &qword_27D81E830, &unk_22813C630);
    if (v12)
    {
      if (v30)
      {
LABEL_4:
        sub_227FE5EA8(&v29, v28);
        sub_228128810(a2, a3, v14);

        sub_228029260(v28, v27);
        v17 = v3[2];
        v15 = v3 + 2;
        v16 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v15 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043AB4(0, *(v16 + 16) + 1, 1);
          v16 = *v15;
        }

        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_228043AB4((v19 > 1), v20 + 1, 1);
        }

        sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
        __swift_destroy_boxed_opaque_existential_1Tm_13(v28);
        v21 = *v15;
        *(v21 + 16) = v20 + 1;
        result = sub_227FE5EA8(v27, (v21 + 32 * v20 + 32));
        *v15 = v21;
        return result;
      }

LABEL_18:
      sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
    }
  }

  else
  {
    if (!v9)
    {
LABEL_17:
      sub_227FCAFD4(a1, &v29, &qword_27D81E830, &unk_22813C630);
      v14 = 0;
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    v10 = 0;
    v23 = (v7 + 40);
    while (1)
    {
      v24 = *(v23 - 1) == a2 && *v23 == a3;
      if (v24 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      ++v10;
      v23 += 2;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    sub_227FCAFD4(a1, &v29, &qword_27D81E830, &unk_22813C630);
    v14 = 0;
  }

  if (v30)
  {
    sub_227FE5EA8(&v29, v28);
    v25 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_227FEA628(v25);
    }

    result = sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *(v25 + 2))
    {
      v26 = &v25[32 * v10];
      __swift_destroy_boxed_opaque_existential_1Tm_13(v26 + 4);
      result = sub_227FE5EA8(v28, v26 + 2);
      v3[2] = v25;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_228128BF8(v10, v14);

    sub_228128D74(v10, v28);
    sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
    return __swift_destroy_boxed_opaque_existential_1Tm_13(v28);
  }

  return result;
}

uint64_t sub_2281072A8(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  v59 = *(v57 - 8);
  v4 = MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v49 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v54 = &v49 - v10;
  v11 = sub_228136FCC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F460, &qword_228142F68);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v19 = *v2;
  v18 = v2[1];
  v20 = v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v21 = *(v18 + 16);
  v60 = a2;
  if (v19)
  {

    v22 = sub_22812A508(a2, v20, v21, (v19 + 16), v19 + 32);
    v24 = v23;
    v26 = v25;

    v27 = &v17[*(v15 + 48)];
    v28 = v58;
    sub_227FCAFD4(v58, v27, &qword_27D81F458, &qword_228142F50);
    if (v24)
    {
      v29 = v60;
      goto LABEL_9;
    }
  }

  else
  {
    v49 = v17;
    v50 = v15;
    v51 = v2;
    v52 = v12;
    if (!v21)
    {
LABEL_8:
      v27 = &v49[*(v50 + 48)];
      v28 = v58;
      sub_227FCAFD4(v58, v27, &qword_27D81F458, &qword_228142F50);
      v26 = 0;
      v29 = v60;
      v2 = v51;
      v12 = v52;
LABEL_9:
      if ((*(v59 + 48))(v27, 1, v57) == 1)
      {
        sub_22812D31C(v28, &qword_27D81F458, &qword_228142F50);
        return (*(v12 + 8))(v29, v11);
      }

      else
      {
        v35 = v28;
        v36 = v27;
        v37 = v55;
        sub_227FCCD78(v36, v55, &qword_27D81EBA0, &qword_22813DAF0);
        sub_22812899C(v29, v26);
        sub_227FCAFD4(v37, v56, &qword_27D81EBA0, &qword_22813DAF0);
        v40 = v2[2];
        v38 = v2 + 2;
        v39 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v38 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043B58(0, *(v39 + 16) + 1, 1);
          v39 = *v38;
        }

        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_228043B58((v42 > 1), v43 + 1, 1);
        }

        sub_22812D31C(v35, &qword_27D81F458, &qword_228142F50);
        sub_22812D31C(v55, &qword_27D81EBA0, &qword_22813DAF0);
        v44 = *v38;
        *(v44 + 16) = v43 + 1;
        sub_227FCCD78(v56, v44 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v43, &qword_27D81EBA0, &qword_22813DAF0);
        *v38 = v44;
        return (*(v12 + 8))(v29, v11);
      }
    }

    v22 = 0;
    v30 = *(v52 + 16);
    v31 = *(v52 + 72);
    v32 = (v52 + 8);
    while (1)
    {
      v30(v14, v20, v11);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v33 = sub_22813926C();
      (*v32)(v14, v11);
      if (v33)
      {
        break;
      }

      ++v22;
      v20 += v31;
      if (v21 == v22)
      {
        goto LABEL_8;
      }
    }

    v27 = &v49[*(v50 + 48)];
    v28 = v58;
    sub_227FCAFD4(v58, v27, &qword_27D81F458, &qword_228142F50);
    v26 = 0;
    v2 = v51;
    v12 = v52;
  }

  if ((*(v59 + 48))(v27, 1, v57) == 1)
  {
    sub_227FCC760(v22, v26, v14);
    v45 = *(v12 + 8);
    v45(v14, v11);
    v46 = v53;
    sub_227FCCA18(v22, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v53);
    sub_22812D31C(v28, &qword_27D81F458, &qword_228142F50);
    sub_22812D31C(v46, &qword_27D81EBA0, &qword_22813DAF0);
    return (v45)(v60, v11);
  }

  v47 = v54;
  sub_227FCCD78(v27, v54, &qword_27D81EBA0, &qword_22813DAF0);
  v48 = v2[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_227FCCD64(v48);
  }

  sub_22812D31C(v28, &qword_27D81F458, &qword_228142F50);
  result = (*(v12 + 8))(v60, v11);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 < v48[2])
  {
    result = sub_22812D2B4(v47, v48 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v22, &qword_27D81EBA0, &qword_22813DAF0);
    v2[2] = v48;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_228107968(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  v59 = *(v57 - 8);
  v4 = MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v49 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v54 = &v49 - v10;
  v11 = sub_228136FCC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F448, &qword_228142F30);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v19 = *v2;
  v18 = v2[1];
  v20 = v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v21 = *(v18 + 16);
  v60 = a2;
  if (v19)
  {

    v22 = sub_22812A508(a2, v20, v21, (v19 + 16), v19 + 32);
    v24 = v23;
    v26 = v25;

    v27 = &v17[*(v15 + 48)];
    v28 = v58;
    sub_227FCAFD4(v58, v27, &qword_27D81F440, &qword_228142F10);
    if (v24)
    {
      v29 = v60;
      goto LABEL_9;
    }
  }

  else
  {
    v49 = v17;
    v50 = v15;
    v51 = v2;
    v52 = v12;
    if (!v21)
    {
LABEL_8:
      v27 = &v49[*(v50 + 48)];
      v28 = v58;
      sub_227FCAFD4(v58, v27, &qword_27D81F440, &qword_228142F10);
      v26 = 0;
      v29 = v60;
      v2 = v51;
      v12 = v52;
LABEL_9:
      if ((*(v59 + 48))(v27, 1, v57) == 1)
      {
        sub_22812D31C(v28, &qword_27D81F440, &qword_228142F10);
        return (*(v12 + 8))(v29, v11);
      }

      else
      {
        v35 = v28;
        v36 = v27;
        v37 = v55;
        sub_227FCCD78(v36, v55, &qword_27D81EB40, &qword_228142EC0);
        sub_22812899C(v29, v26);
        sub_227FCAFD4(v37, v56, &qword_27D81EB40, &qword_228142EC0);
        v40 = v2[2];
        v38 = v2 + 2;
        v39 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v38 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043D20(0, *(v39 + 16) + 1, 1);
          v39 = *v38;
        }

        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_228043D20((v42 > 1), v43 + 1, 1);
        }

        sub_22812D31C(v35, &qword_27D81F440, &qword_228142F10);
        sub_22812D31C(v55, &qword_27D81EB40, &qword_228142EC0);
        v44 = *v38;
        *(v44 + 16) = v43 + 1;
        sub_227FCCD78(v56, v44 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v43, &qword_27D81EB40, &qword_228142EC0);
        *v38 = v44;
        return (*(v12 + 8))(v29, v11);
      }
    }

    v22 = 0;
    v30 = *(v52 + 16);
    v31 = *(v52 + 72);
    v32 = (v52 + 8);
    while (1)
    {
      v30(v14, v20, v11);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v33 = sub_22813926C();
      (*v32)(v14, v11);
      if (v33)
      {
        break;
      }

      ++v22;
      v20 += v31;
      if (v21 == v22)
      {
        goto LABEL_8;
      }
    }

    v27 = &v49[*(v50 + 48)];
    v28 = v58;
    sub_227FCAFD4(v58, v27, &qword_27D81F440, &qword_228142F10);
    v26 = 0;
    v2 = v51;
    v12 = v52;
  }

  if ((*(v59 + 48))(v27, 1, v57) == 1)
  {
    sub_227FCC760(v22, v26, v14);
    v45 = *(v12 + 8);
    v45(v14, v11);
    v46 = v53;
    sub_227FCCA18(v22, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v53);
    sub_22812D31C(v28, &qword_27D81F440, &qword_228142F10);
    sub_22812D31C(v46, &qword_27D81EB40, &qword_228142EC0);
    return (v45)(v60, v11);
  }

  v47 = v54;
  sub_227FCCD78(v27, v54, &qword_27D81EB40, &qword_228142EC0);
  v48 = v2[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_227FEA650(v48);
  }

  sub_22812D31C(v28, &qword_27D81F440, &qword_228142F10);
  result = (*(v12 + 8))(v60, v11);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 < v48[2])
  {
    result = sub_22812D2B4(v47, v48 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v22, &qword_27D81EB40, &qword_228142EC0);
    v2[2] = v48;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_228108028(void *a1, void *a2)
{
  v68 = sub_228136FCC();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v62[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62[-v9];
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  RequestInfo.sessionInfo.getter(v11, v12, v83);
  v81 = &type metadata for PriorityModelSession.Configuration;
  v82 = &off_283B5F1E0;
  sub_228106B08(v83, v80, &qword_27D81E4A0, &unk_22813AB10, v10);
  v70 = a1;
  v13 = *a1;
  if (!*(*a1 + 16) || (v14 = sub_227FC7F80(v10), (v15 & 1) == 0))
  {
    sub_22812D31C(v10, &qword_27D81E4A0, &unk_22813AB10);
    return 0;
  }

  v16 = (*(v13 + 56) + 24 * v14);
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  v78 = *v16;
  v79 = v17;
  v86 = v19;
  sub_22812CAE4(a2, v83);
  sub_22812CAE4(a2, v80);
  sub_22812CAE4(a2, v75);
  sub_22812CAE4(a2, v72);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v20 = sub_22813880C();
  v21 = sub_2281396BC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v71 = v64;
    *v22 = 136446978;
    v65 = v2;
    v24 = v84;
    v23 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v25 = *(v23 + 16);
    v63 = v21;
    v26 = v25(v24, v23);
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v83);
    v29 = sub_227FCC340(v26, v28, &v71);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2082;
    v31 = v81;
    v30 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v32 = (*(v30[1] + 1))(v31);
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v80);
    v35 = sub_227FCC340(v32, v34, &v71);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2082;
    v37 = v76;
    v36 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v38 = (*(*(v36 + 8) + 16))(v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v75);
    v41 = sub_227FCC340(v38, v40, &v71);

    *(v22 + 24) = v41;
    *(v22 + 32) = 1026;
    v43 = v73;
    v42 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    LODWORD(v42) = (*(*(v42 + 8) + 24))(v43);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v72);
    *(v22 + 34) = v42;
    _os_log_impl(&dword_227FC3000, v20, v63, "Returning session from cache for [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v22, 0x26u);
    v44 = v64;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v44, -1, -1);
    MEMORY[0x22AAB28A0](v22, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v72);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v83);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v80);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v75);
  }

  v46 = *(v19 + 16);

  if (!v46)
  {
    v48 = sub_228105610(v10);
    sub_227FCD584(v48, v49, v50);
    sub_22812D31C(v10, &qword_27D81E4A0, &unk_22813AB10);

    return 0;
  }

  if (*(v19 + 16))
  {
    if (v18)
    {

      v47 = sub_22812B4F0(v18 + 16, v18 + 32, v17, 0);
    }

    else
    {
      v47 = 0;
    }

    v51 = v66;
    sub_227FCC760(0, v47, v66);
    (*(v67 + 8))(v51, v68);
    v52 = v69;
    sub_227FCCA18(0, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v69);
    v53 = v86;
    if (*(v86 + 16))
    {
      v54 = v78;
      v55 = v79;

      v56 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = *v56;
      sub_22801BA08(v54, v55, v53, v10, isUniquelyReferenced_nonNull_native);
      *v56 = v83[0];
    }

    else
    {
      v58 = sub_228105610(v10);
      sub_227FCD584(v58, v59, v60);
    }

    sub_22812D31C(v10, &qword_27D81E4A0, &unk_22813AB10);

    v61 = *v52;

    sub_22812D31C(v52, &qword_27D81EBA0, &qword_22813DAF0);
    return v61;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22810876C(void *a1, void *a2, uint64_t a3)
{
  v69 = sub_228136FCC();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v64[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v64[-v10];
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  RequestInfo.sessionInfo.getter(v12, v13, v84);
  v82 = type metadata accessor for SummarizationSession.Configuration(0);
  v83 = &off_283B5FB28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
  sub_22812ABD8(a3, boxed_opaque_existential_1, type metadata accessor for SummarizationSession.Configuration);
  sub_228106B08(v84, v81, &qword_27D81E3D8, &unk_22813C640, v11);
  v71 = a1;
  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_22808D108(v11), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 24 * v16);
    v20 = *v18;
    v19 = v18[1];
    v21 = v18[2];
    v79 = *v18;
    v80 = v19;
    v87 = v21;
    sub_22812CAE4(a2, v84);
    sub_22812CAE4(a2, v81);
    sub_22812CAE4(a2, v76);
    sub_22812CAE4(a2, v73);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v22 = sub_22813880C();
    v23 = sub_2281396BC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v24 = 136446978;
      v25 = v85;
      v26 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v27 = *(v26 + 16);
      v65 = v23;
      v28 = v27(v25, v26);
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1Tm_13(v84);
      v31 = sub_227FCC340(v28, v30, &v72);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2082;
      v33 = v82;
      v32 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v34 = (*(v32[1] + 1))(v33);
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm_13(v81);
      v37 = sub_227FCC340(v34, v36, &v72);

      *(v24 + 14) = v37;
      *(v24 + 22) = 2082;
      v39 = v77;
      v38 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v40 = (*(*(v38 + 8) + 16))(v39);
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1Tm_13(v76);
      v43 = sub_227FCC340(v40, v42, &v72);

      *(v24 + 24) = v43;
      *(v24 + 32) = 1026;
      v45 = v74;
      v44 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      LODWORD(v44) = (*(*(v44 + 8) + 24))(v45);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v73);
      *(v24 + 34) = v44;
      _os_log_impl(&dword_227FC3000, v22, v65, "Returning session from cache for [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v24, 0x26u);
      v46 = v66;
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v46, -1, -1);
      MEMORY[0x22AAB28A0](v24, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm_13(v73);

      __swift_destroy_boxed_opaque_existential_1Tm_13(v84);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v81);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v76);
    }

    v48 = *(v21 + 16);

    if (v48)
    {
      if (*(v21 + 16))
      {
        if (v20)
        {

          v49 = sub_22812B4F0(v20 + 16, v20 + 32, v19, 0);
        }

        else
        {
          v49 = 0;
        }

        v53 = v67;
        sub_227FCC760(0, v49, v67);
        (*(v68 + 8))(v53, v69);
        v54 = v70;
        sub_227FCCA18(0, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v70);
        v55 = v87;
        if (*(v87 + 16))
        {
          v56 = v79;
          v57 = v80;

          v58 = v71;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84[0] = *v58;
          sub_22801C09C(v56, v57, v55, v11, isUniquelyReferenced_nonNull_native);
          *v58 = v84[0];
        }

        else
        {
          v60 = sub_228105700(v11);
          sub_227FCD584(v60, v61, v62);
        }

        sub_22812D31C(v11, &qword_27D81E3D8, &unk_22813C640);

        v63 = *v54;

        sub_22812D31C(v54, &qword_27D81EB40, &qword_228142EC0);
        return v63;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v50 = sub_228105700(v11);
      sub_227FCD584(v50, v51, v52);
      sub_22812D31C(v11, &qword_27D81E3D8, &unk_22813C640);

      return 0;
    }
  }

  else
  {
    sub_22812D31C(v11, &qword_27D81E3D8, &unk_22813C640);
    return 0;
  }

  return result;
}

uint64_t sub_228108EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_2281398CC();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228108FA0, 0, 0);
}

uint64_t sub_228108FA0()
{
  v11 = v0;
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_22813800C();
  swift_allocObject();
  *(v0 + 112) = sub_22813801C();
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

  v3 = *(*v2 + 2016);
  v4 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v3(&v10, v4);
  }

  else
  {
  }

  v5 = sub_228139B4C();
  v7 = v6;
  sub_228139A1C();
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_227FC77B8;

  return sub_228128514(v5, v7, 0, 0, 1);
}

uint64_t sub_2281092E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228109354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_2281398CC();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228109418, 0, 0);
}

uint64_t sub_228109418()
{
  v11 = v0;
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_22813800C();
  swift_allocObject();
  *(v0 + 112) = sub_22813801C();
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

  v3 = *(*v2 + 2016);
  v4 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v3(&v10, v4);
  }

  else
  {
  }

  v5 = sub_228139B4C();
  v7 = v6;
  sub_228139A1C();
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_228109760;

  return sub_228128514(v5, v7, 0, 0, 1);
}

uint64_t sub_228109760()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v3 = sub_22812D37C;
  }

  else
  {
    v3 = sub_2281098C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2281098C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[16];
    v5 = v0[9];
    v4 = v0[10];
    os_unfair_lock_lock(Strong + 4);
    sub_228109A7C(&v2[6], v5, v4);
    os_unfair_lock_unlock(v2 + 4);
    if (v3)
    {
      return;
    }
  }

  v6 = v0[1];

  v6();
}

uint64_t sub_2281099B8@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    os_unfair_lock_lock(Strong + 4);

    *&v4[6]._os_unfair_lock_opaque = MEMORY[0x277D84F98];
    os_unfair_lock_unlock(v4 + 4);
  }

  v5 = *MEMORY[0x277D41D50];
  v6 = sub_228137FFC();
  return (*(*(v6 - 8) + 104))(a2, v5, v6);
}

uint64_t sub_228109A7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v52 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F440, &qword_228142F10);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v21 = *a1;
  if (*(*a1 + 16))
  {
    v22 = sub_22808D108(a2);
    if (v23)
    {
      v55 = a1;
      v56 = a2;
      v57 = v3;
      v24 = (*(v21 + 56) + 24 * v22);
      v25 = v24[1];
      v27 = v24[2];
      v59 = *v24;
      v26 = v59;
      v60 = v25;
      v61 = v27;

      v54 = a3;
      sub_227FCACB8(a3, v26, v25, v27, &qword_27D81EB40, &qword_228142EC0, v20);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
      v29 = (*(*(v28 - 8) + 48))(v20, 1, v28);
      sub_22812D31C(v20, &qword_27D81F440, &qword_228142F10);
      if (v29 != 1)
      {
        if (qword_2813C49E0[0] != -1)
        {
          swift_once();
        }

        v30 = sub_22813882C();
        __swift_project_value_buffer(v30, qword_2813C8A20);
        v31 = v56;
        sub_227FCAFD4(v56, v15, &qword_27D81E3D8, &unk_22813C640);
        sub_227FCAFD4(v31, v13, &qword_27D81E3D8, &unk_22813C640);
        sub_227FCAFD4(v31, v10, &qword_27D81E3D8, &unk_22813C640);
        v32 = sub_22813880C();
        v33 = sub_2281396BC();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v62 = v53;
          *v34 = 136446722;
          v35 = *v15;
          v36 = v15[1];

          sub_22812D31C(v15, &qword_27D81E3D8, &unk_22813C640);
          v37 = sub_227FCC340(v35, v36, &v62);

          *(v34 + 4) = v37;
          *(v34 + 12) = 2082;
          v38 = *(v13 + 2);
          v39 = *(v13 + 3);

          sub_22812D31C(v13, &qword_27D81E3D8, &unk_22813C640);
          v40 = sub_227FCC340(v38, v39, &v62);

          *(v34 + 14) = v40;
          *(v34 + 22) = 1026;
          LODWORD(v40) = *(v10 + 8);
          v31 = v56;
          sub_22812D31C(v10, &qword_27D81E3D8, &unk_22813C640);
          *(v34 + 24) = v40;
          _os_log_impl(&dword_227FC3000, v32, v33, "Evicted session from cache for [useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v34, 0x1Cu);
          v41 = v53;
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v41, -1, -1);
          MEMORY[0x22AAB28A0](v34, -1, -1);
        }

        else
        {
          sub_22812D31C(v10, &qword_27D81E3D8, &unk_22813C640);

          sub_22812D31C(v13, &qword_27D81E3D8, &unk_22813C640);
          sub_22812D31C(v15, &qword_27D81E3D8, &unk_22813C640);
        }

        v42 = v58;
        sub_227FCC4B4(v54, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v58);
        sub_22812D31C(v42, &qword_27D81F440, &qword_228142F10);
        v43 = v61;
        v44 = v55;
        if (*(v61 + 16))
        {
          v46 = v59;
          v45 = v60;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = *v44;
          sub_22801C09C(v46, v45, v43, v31, isUniquelyReferenced_nonNull_native);
          *v44 = v62;
        }

        else
        {
          v48 = sub_228105700(v31);
          sub_227FCD584(v48, v49, v50);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_228109FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_227FCAFD4(a3, v22 - v9, &qword_27D81E788, &unk_22813BC90);
  v11 = sub_22813959C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22812D31C(v10, &qword_27D81E788, &unk_22813BC90);
  }

  else
  {
    sub_22813958C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22813957C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22813931C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22812D31C(a3, &qword_27D81E788, &unk_22813BC90);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22812D31C(a3, &qword_27D81E788, &unk_22813BC90);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22810A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[7] = v4;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_22810A2C0, 0, 0);
}

uint64_t sub_22810A2C0()
{
  v1 = *(v0 + 72);
  v2 = v1 & 1;
  if (v1)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
    v7 = v4[3];
    v6 = v4[4];
    v8 = __swift_project_boxed_opaque_existential_1(v4, v7);
    sub_2280DFFEC(v3 + v5, v8, v7, v6);
    v1 = *(v0 + 72);
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v17 = *(v0 + 80);
  v11 = sub_2280D5C74();
  *(v0 + 104) = v11;
  v12 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  sub_22812CAE4(v10, v0 + 16);
  v13 = swift_allocObject();
  *(v0 + 112) = v13;
  sub_227FFA05C((v0 + 16), v13 + 16);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *(v14 + 16) = v0 + 56;
  *(v14 + 24) = v10;
  *(v14 + 32) = v17;
  *(v14 + 48) = v11;
  *(v14 + 56) = v2;
  *(v14 + 57) = (v1 & 2) != 0;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_22810A498;

  return sub_22810B06C(v9 + v12, sub_22812D3B4, v13, &unk_228142EE8, v14);
}

uint64_t sub_22810A498(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    v5 = sub_22810A660;
  }

  else
  {
    *(v4 + 144) = a1 & 1;

    v5 = sub_22810A5F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22810A5F8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_22810A660()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22810A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  type metadata accessor for SignpostToken(0);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810A770, 0, 0);
}

uint64_t sub_22810A770()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  sub_2281324C4();
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_22810A8BC;

  return v7(v0 + 5);
}

uint64_t sub_22810A8BC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22810AA74;
  }

  else
  {
    v2 = sub_22810A9D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22810A9D0()
{
  v1 = v0[11];
  sub_2281324D4();
  sub_22812AB78(v1, type metadata accessor for SignpostToken);

  v2 = v0[5];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22810AA74()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  swift_beginAccess();
  *(v2 + 16) = sub_22812D470;
  *(v2 + 24) = v6;

  v7 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v3, type metadata accessor for SignpostToken);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22810AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  type metadata accessor for SignpostToken(0);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810AC34, 0, 0);
}

uint64_t sub_22810AC34()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  sub_2281324C4();
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_22810AD80;

  return v7(v0 + 5);
}

uint64_t sub_22810AD80()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22810AF44;
  }

  else
  {
    v2 = sub_22810AE94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22810AE94()
{
  v1 = v0[12];
  sub_2281324D4();
  sub_22812AB78(v1, type metadata accessor for SignpostToken);

  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_22810AF44()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  swift_beginAccess();
  *(v2 + 16) = sub_22812D474;
  *(v2 + 24) = v6;

  v7 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v3, type metadata accessor for SignpostToken);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22810B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  type metadata accessor for SignpostToken(0);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810B104, 0, 0);
}

uint64_t sub_22810B104()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  sub_2281324C4();
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_22810B250;

  return v7(v0 + 14);
}

uint64_t sub_22810B250()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22810B408;
  }

  else
  {
    v2 = sub_22810B364;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22810B364()
{
  v1 = *(v0 + 80);
  sub_2281324D4();
  sub_22812AB78(v1, type metadata accessor for SignpostToken);

  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22810B408()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  swift_beginAccess();
  *(v2 + 16) = sub_22812D468;
  *(v2 + 24) = v6;

  v7 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v3, type metadata accessor for SignpostToken);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_22810B564(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *, uint64_t, uint64_t))
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return a3(a1, v6, v4, v5);
}

uint64_t sub_22810B5D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);

  return sub_2280E0610(a1, v7, a3, v5, v6);
}

uint64_t sub_22810B630(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_228138CCC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;

  sub_22810D23C(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v16, v6, v7);
    v23 = *(v8 + 16);
    v23(v14, v16, v7);
    v24 = (*(v8 + 88))(v14, v7);
    if (v24 == *MEMORY[0x277D4B0D8])
    {
LABEL_8:
      v22 = 0;
LABEL_11:
      (*(v8 + 8))(v16, v7);
      return v22;
    }

    if (v24 != *MEMORY[0x277D4B110])
    {
      if (v24 == *MEMORY[0x277D4B0E0] || v24 == *MEMORY[0x277D4B0F0] || v24 == *MEMORY[0x277D4B0F8])
      {
        goto LABEL_8;
      }

      if (v24 != *MEMORY[0x277D4B120])
      {
        v22 = 0;
        if (v24 == *MEMORY[0x277D4B100])
        {
          goto LABEL_11;
        }

        if (v24 == *MEMORY[0x277D4B118])
        {
          goto LABEL_11;
        }

        v22 = 1;
        if (v24 == *MEMORY[0x277D4B0C0] || v24 == *MEMORY[0x277D4B0B8])
        {
          goto LABEL_11;
        }

        if (v24 != *MEMORY[0x277D4B0D0])
        {
          if (v24 == *MEMORY[0x277D4B108] || v24 == *MEMORY[0x277D4B0E8] || v24 == *MEMORY[0x277D4B128] || v24 == *MEMORY[0x277D4B0B0] || v24 == *MEMORY[0x277D4B0C8])
          {
            goto LABEL_11;
          }

          if (qword_2813C49E0[0] != -1)
          {
            swift_once();
          }

          v28 = sub_22813882C();
          __swift_project_value_buffer(v28, qword_2813C8A20);
          v23(v11, v16, v7);
          v29 = sub_22813880C();
          v30 = sub_2281396DC();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v40 = v31;
            v42 = swift_slowAlloc();
            v43 = v42;
            *v31 = 136446210;
            v41 = v30;
            v32 = sub_228138CAC();
            v34 = v33;
            v35 = *(v8 + 8);
            v35(v11, v7);
            v36 = sub_227FCC340(v32, v34, &v43);

            v37 = v40;
            *(v40 + 1) = v36;
            v38 = v37;
            _os_log_impl(&dword_227FC3000, v29, v41, "Unexpected use case identifier in isUserInitiatedUseCase: %{public}s", v37, 0xCu);
            v39 = v42;
            __swift_destroy_boxed_opaque_existential_1Tm_13(v42);
            MEMORY[0x22AAB28A0](v39, -1, -1);
            MEMORY[0x22AAB28A0](v38, -1, -1);
          }

          else
          {

            v35 = *(v8 + 8);
            v35(v11, v7);
          }

          v35(v14, v7);
        }

        goto LABEL_8;
      }
    }

    v22 = 1;
    goto LABEL_11;
  }

  sub_22812D31C(v6, qword_27D81F1D8, &unk_228142EA0);
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v17 = sub_22813882C();
  __swift_project_value_buffer(v17, qword_2813C8A20);

  v18 = sub_22813880C();
  v19 = sub_2281396DC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_227FCC340(a1, a2, &v43);
    _os_log_impl(&dword_227FC3000, v18, v19, "Could not convert requestInfo.useCaseIdentifer to UseCase: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v21);
    MEMORY[0x22AAB28A0](v21, -1, -1);
    MEMORY[0x22AAB28A0](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_22810BC50(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_228138CCC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;

  sub_22810D23C(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v16, v6, v7);
    v23 = *(v8 + 16);
    v23(v14, v16, v7);
    v24 = (*(v8 + 88))(v14, v7);
    if (v24 == *MEMORY[0x277D4B0D8])
    {
LABEL_8:
      v22 = 1;
LABEL_11:
      (*(v8 + 8))(v16, v7);
      return v22;
    }

    if (v24 != *MEMORY[0x277D4B110])
    {
      if (v24 == *MEMORY[0x277D4B0E0] || v24 == *MEMORY[0x277D4B0F0] || v24 == *MEMORY[0x277D4B0F8])
      {
        goto LABEL_8;
      }

      if (v24 != *MEMORY[0x277D4B120])
      {
        v22 = 1;
        if (v24 == *MEMORY[0x277D4B100])
        {
          goto LABEL_11;
        }

        if (v24 == *MEMORY[0x277D4B118])
        {
          goto LABEL_11;
        }

        v22 = 0;
        if (v24 == *MEMORY[0x277D4B0C0] || v24 == *MEMORY[0x277D4B0B8])
        {
          goto LABEL_11;
        }

        if (v24 == *MEMORY[0x277D4B0D0])
        {
          goto LABEL_8;
        }

        v22 = 0;
        if (v24 == *MEMORY[0x277D4B108] || v24 == *MEMORY[0x277D4B0E8] || v24 == *MEMORY[0x277D4B128] || v24 == *MEMORY[0x277D4B0B0] || v24 == *MEMORY[0x277D4B0C8])
        {
          goto LABEL_11;
        }

        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v28 = sub_22813882C();
        __swift_project_value_buffer(v28, qword_2813C8A20);
        v23(v11, v16, v7);
        v29 = sub_22813880C();
        v30 = sub_2281396DC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v40 = v31;
          v42 = swift_slowAlloc();
          v43 = v42;
          *v31 = 136446210;
          v41 = v30;
          v32 = sub_228138CAC();
          v34 = v33;
          v35 = *(v8 + 8);
          v35(v11, v7);
          v36 = sub_227FCC340(v32, v34, &v43);

          v37 = v40;
          *(v40 + 1) = v36;
          v38 = v37;
          _os_log_impl(&dword_227FC3000, v29, v41, "Unexpected use case identifier in isUserInitiatedUseCase: %{public}s", v37, 0xCu);
          v39 = v42;
          __swift_destroy_boxed_opaque_existential_1Tm_13(v42);
          MEMORY[0x22AAB28A0](v39, -1, -1);
          MEMORY[0x22AAB28A0](v38, -1, -1);
        }

        else
        {

          v35 = *(v8 + 8);
          v35(v11, v7);
        }

        v35(v14, v7);
      }
    }

    v22 = 0;
    goto LABEL_11;
  }

  sub_22812D31C(v6, qword_27D81F1D8, &unk_228142EA0);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v17 = sub_22813882C();
  __swift_project_value_buffer(v17, qword_2813C8A20);

  v18 = sub_22813880C();
  v19 = sub_2281396DC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_227FCC340(a1, a2, &v43);
    _os_log_impl(&dword_227FC3000, v18, v19, "Could not convert requestInfo.useCaseIdentifer to UseCase: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v21);
    MEMORY[0x22AAB28A0](v21, -1, -1);
    MEMORY[0x22AAB28A0](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_22810C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 186) = a7;
  *(v7 + 185) = a6;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 96) = a2;
  *(v7 + 104) = a3;
  *(v7 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  *(v7 + 128) = swift_task_alloc();
  v8 = sub_2281386FC();
  *(v7 + 136) = v8;
  *(v7 + 144) = *(v8 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810C388, 0, 0);
}

uint64_t sub_22810C388()
{
  v1 = v0[12];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(*(v3 + 8) + 16))(v2);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v9 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  *(inited + 32) = (*(*(v8 + 8) + 8))(v9);
  *(inited + 40) = v10;
  sub_228104E70(v4, v6, inited);
  v11 = v0[13];

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_22810C8C8;
  v13 = v0[15];

  return (v15)(v0 + 23, v13);
}

uint64_t sub_22810C8C8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_22810CDE0;
  }

  else
  {
    v2 = sub_22810C9DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22810C9DC(uint64_t a1)
{
  v2 = *(v1 + 176);
  sub_2281395DC();
  if (v2)
  {
    v3 = v2;
    if (*(v1 + 185) & 1) != 0 || (sub_22810D154(v2))
    {
      v5 = *(v1 + 88);
      v4 = *(v1 + 96);
      v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
      v7 = v4[3];
      v8 = v4[4];
      v9 = __swift_project_boxed_opaque_existential_1(v4, v7);
      sub_2280E0610(v5 + v6, v9, v3, v7, v8);
    }

    if (*(v1 + 186) == 1)
    {
      v10 = *(v1 + 120);
      v11 = *(v1 + 96);
      v12 = v3;
      sub_2280D4DD0(v11, v10, v3);
    }

    v13 = *(v1 + 144);
    *(v1 + 80) = v3;
    v14 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v15 = swift_dynamicCast();
    v16 = *(v13 + 56);
    if (v15)
    {
      v17 = *(v1 + 152);
      v18 = *(v1 + 160);
      v19 = *(v1 + 136);
      v20 = *(v1 + 144);
      v21 = *(v1 + 128);
      v16(v21, 0, 1, v19);
      (*(v20 + 32))(v18, v21, v19);
      v22 = *(v20 + 16);
      v22(v17, v18, v19);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v23 = swift_allocError();
      v22(v24, v17, v19);
      v25 = swift_allocObject();
      *(v25 + 16) = 7;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      v26 = sub_227FF96D4(v23, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D420, v25);

      v27 = *(v20 + 8);
      v27(v17, v19);
      *(v1 + 64) = 7;
      *(v1 + 72) = v26;
      sub_227FDB3CC();
      if (sub_22813999C())
      {
      }

      else
      {
        swift_allocError();
        *v38 = 7;
        *(v38 + 8) = v26;
      }

      v39 = *(v1 + 160);
      v40 = *(v1 + 136);
      swift_willThrow();

      v27(v39, v40);
    }

    else
    {
      v37 = *(v1 + 128);
      v16(v37, 1, 1, *(v1 + 136));
      sub_22812D31C(v37, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v35 = *(v1 + 8);
    v36 = 0;
  }

  else
  {
    if (*(v1 + 185))
    {
      v29 = *(v1 + 88);
      v28 = *(v1 + 96);
      v30 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
      v32 = v28[3];
      v31 = v28[4];
      v33 = __swift_project_boxed_opaque_existential_1(v28, v32);
      sub_2280E0308(v29 + v30, v33, v32, v31);
    }

    if (*(v1 + 186) == 1)
    {
      sub_2280D4DD0(*(v1 + 96), *(v1 + 120), 0);
    }

    v34 = *(v1 + 184);

    v35 = *(v1 + 8);
    v36 = v34;
  }

  return v35(v36);
}

uint64_t sub_22810CDE0()
{
  v1 = *(v0 + 176);
  if (*(v0 + 185) & 1) != 0 || (sub_22810D154(*(v0 + 176)))
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
    v5 = v2[3];
    v6 = v2[4];
    v7 = __swift_project_boxed_opaque_existential_1(v2, v5);
    sub_2280E0610(v3 + v4, v7, v1, v5, v6);
  }

  if (*(v0 + 186) == 1)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = v1;
    sub_2280D4DD0(v9, v8, v1);
  }

  v11 = *(v0 + 144);
  *(v0 + 80) = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v13 = swift_dynamicCast();
  v14 = *(v11 + 56);
  if (v13)
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    v14(v19, 0, 1, v17);
    (*(v18 + 32))(v16, v19, v17);
    v20 = *(v18 + 16);
    v20(v15, v16, v17);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v21 = swift_allocError();
    v20(v22, v15, v17);
    v23 = swift_allocObject();
    *(v23 + 16) = 7;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    v24 = sub_227FF96D4(v21, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D420, v23);

    v25 = *(v18 + 8);
    v25(v15, v17);
    *(v0 + 64) = 7;
    *(v0 + 72) = v24;
    sub_227FDB3CC();
    if (sub_22813999C())
    {
    }

    else
    {
      swift_allocError();
      *v27 = 7;
      *(v27 + 8) = v24;
    }

    v28 = *(v0 + 160);
    v29 = *(v0 + 136);
    swift_willThrow();

    v25(v28, v29);
  }

  else
  {
    v26 = *(v0 + 128);
    v14(v26, 1, 1, *(v0 + 136));
    sub_22812D31C(v26, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v30 = *(v0 + 8);

  return v30(0);
}

uint64_t sub_22810D154(void *a1)
{
  v6 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast() && (, v5 == 15) || (v6, v6 = a1, v3 = a1, swift_dynamicCast()) && (, v5 == 4))
  {

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22810D23C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  if (sub_22813941C())
  {
    if (sub_22813941C())
    {
      v9 = sub_22813936C();
      v10 = sub_22812BBD0(v9, a1, a2);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      MEMORY[0x22AAB18D0](v10, v12, v14, v16);
    }

    sub_228138CBC();
    v17 = sub_228138CCC();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v8, 1, v17))
    {
      (*(v18 + 32))(a3, v8, v17);
      return (*(v18 + 56))(a3, 0, 1, v17);
    }

    sub_22812D31C(v8, qword_27D81F1D8, &unk_228142EA0);
  }

  else
  {
  }

  v19 = sub_228138CCC();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

uint64_t SummarizationRequestHandler.RequestInfo.requestIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22810D4B0(uint64_t *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_228136FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];

  *a2 = v12;
  *(a2 + 1) = v11;
  sub_228136F9C();
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_228136FBC();
    if (v13(v6, 1, v7) != 1)
    {
      sub_22812D31C(v6, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v14 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  return (*(v8 + 40))(&a2[*(v14 + 20)], v10, v7);
}

uint64_t SummarizationRequestHandler.RequestInfo.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_228136FCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  *v2 = a1;
  *(v2 + 1) = a2;
  sub_228136F9C();
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    sub_228136FBC();
    if (v12(v7, 1, v8) != 1)
    {
      sub_22812D31C(v7, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  v13 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  return (*(v9 + 40))(&v2[*(v13 + 20)], v11, v8);
}

void (*SummarizationRequestHandler.RequestInfo.requestIdentifier.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = sub_228136FCC();
  v5[2] = v8;
  v9 = *(v8 - 8);
  v5[3] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[4] = v10;
  return sub_22810D99C;
}

void sub_22810D99C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[4];
    v4 = v2[1];
  }

  else
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    sub_228136F9C();
    v8 = *(v6 + 48);
    if (v8(v7, 1, v5) == 1)
    {
      v10 = v2[1];
      v9 = v2[2];
      sub_228136FBC();
      if (v8(v10, 1, v9) != 1)
      {
        sub_22812D31C(v2[1], &qword_27D81E588, &qword_22813B2D0);
      }
    }

    else
    {
      (*(v2[3] + 32))(v2[4], v2[1], v2[2]);
    }

    v11 = v2[3];
    v3 = v2[4];
    v4 = v2[1];
    v12 = v2[2];
    v13 = *v2;
    v14 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    (*(v11 + 40))(v13 + *(v14 + 20), v3, v12);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t SummarizationRequestHandler.RequestInfo.requestUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 20);
  v4 = sub_228136FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummarizationRequestHandler.RequestInfo.useCaseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 24));

  return v1;
}

uint64_t SummarizationRequestHandler.RequestInfo.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.clientApplicationIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 28));

  return v1;
}

uint64_t SummarizationRequestHandler.RequestInfo.clientApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.clientProcessIdentifier.setter(int a1)
{
  result = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.originatingApplicationIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 36));

  return v1;
}

uint64_t SummarizationRequestHandler.RequestInfo.originatingApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.originatingApplicationProcessIdentifier.setter(int a1)
{
  result = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.init(requestIdentifier:useCaseIdentifier:clientApplicationIdentifier:clientProcessIdentifier:originatingApplicationIdentifier:originatingApplicationProcessIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, int a11)
{
  v36 = a8;
  v34 = a11;
  v35 = a7;
  v32 = a10;
  v33 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - v18;
  v20 = sub_228136FCC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = a1;
  *(a9 + 1) = a2;

  sub_228136F9C();

  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    sub_228136FBC();
    if (v24(v19, 1, v20) != 1)
    {
      sub_22812D31C(v19, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
  }

  v25 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  result = (*(v21 + 32))(&a9[v25[5]], v23, v20);
  v27 = &a9[v25[6]];
  *v27 = a3;
  *(v27 + 1) = a4;
  v28 = &a9[v25[7]];
  v29 = v33;
  *v28 = a5;
  *(v28 + 1) = v29;
  *&a9[v25[8]] = v35;
  v30 = &a9[v25[9]];
  v31 = v32;
  *v30 = v36;
  *(v30 + 1) = v31;
  *&a9[v25[10]] = v34;
  return result;
}

double SummarizationRequestHandler.RequestInfo.init(requestIdentifier:useCaseIdentifier:clientApplicationIdentifier:clientProcessIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v28 = a3;
  v29 = a4;
  v30 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_228136FCC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v21 = a1;
  *(v21 + 1) = a2;

  sub_228136F9C();

  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    sub_228136FBC();
    if (v22(v14, 1, v15) != 1)
    {
      sub_22812D31C(v14, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  (*(v16 + 32))(&v21[v19[5]], v18, v15);
  v23 = &v21[v19[6]];
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v25 = &v21[v19[7]];
  *v25 = a5;
  *(v25 + 1) = a6;
  LODWORD(v24) = v31;
  *&v21[v19[8]] = v31;
  v26 = &v21[v19[9]];
  *v26 = a5;
  *(v26 + 1) = a6;
  *&v21[v19[10]] = v24;
  sub_22812CCFC(v21, v30, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  return result;
}

uint64_t sub_22810E408()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22810E438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228136FCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22810E4AC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_22810E4E4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_22810E528(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t SummarizationRequestHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  SummarizationRequestHandler.init()();
  return v0;
}

uint64_t SummarizationRequestHandler.init()()
{
  v1 = v0;
  v2 = sub_22813882C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2813C8A20);
  v8 = *(v3 + 16);
  v8(v0 + v6, v7, v2);
  v9 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  if (qword_2813C4968 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Signpost(0);
  v11 = __swift_project_value_buffer(v10, qword_2813C8990);
  sub_22812ABD8(v11, v1 + v9, type metadata accessor for Signpost);
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v12 = SKAssetManager.init()();
  type metadata accessor for ClientSwitchConfiguration(0);
  swift_allocObject();
  *(v1 + 16) = ClientSwitchConfiguration.init(assetManager:)(v12);
  v8(v5, v1 + v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3F0, &qword_228142CB8);
  v13 = swift_allocObject();
  v14 = sub_227FE5914(MEMORY[0x277D84F90]);
  *(v13 + 16) = 0;
  *(v13 + 24) = v14;
  (*(v3 + 32))(v13 + qword_2813C7C88, v5, v2);
  v15 = (v13 + qword_2813C7D90);
  *v15 = sub_22812A97C;
  v15[1] = 0;
  *(v1 + 24) = v13;
  return v1;
}

uint64_t SummarizationRequestHandler.prewarm(requestInfo:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22810E8C8;

  return sub_22810E9BC(a1, 0);
}

uint64_t sub_22810E8C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22810E9BC(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  type metadata accessor for SignpostToken(0);
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_228138CCC();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v5 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v3 + 168) = v5;
  v6 = *(v5 - 8);
  *(v3 + 176) = v6;
  *(v3 + 184) = *(v6 + 64);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810EC28, 0, 0);
}

uint64_t sub_22810EC28()
{
  v95 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 336);
  v6 = *(v0 + 72);
  if (*(v0 + 336))
  {
    v7 = 0xEB00000000206465;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  *(v0 + 288) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812ABD8(v6, v1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v6, v2, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v8 = v3;
  v9 = v7;
  sub_22812ABD8(v6, v8, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v6, v4, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  sub_22810A6C8();
  sub_22810A6D0();
  v10 = sub_22813880C();
  v11 = sub_2281396BC();

  if (os_log_type_enabled(v10, v11))
  {
    if (v5)
    {
      v12 = 0x7461636572706564;
    }

    else
    {
      v12 = 0;
    }

    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v89 = *(v0 + 264);
    v90 = *(v0 + 256);
    v15 = *(v0 + 168);
    v91 = v11;
    v16 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v94[0] = v92;
    *v16 = 136316418;
    *(v16 + 4) = sub_227FCC340(v12, v9, v94);
    *(v16 + 12) = 2082;
    v17 = *v13;
    v18 = v13[1];

    sub_22812AB78(v13, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v19 = sub_227FCC340(v17, v18, v94);

    *(v16 + 14) = v19;
    *(v16 + 22) = 2082;
    v20 = (v14 + v15[6]);
    v21 = *v20;
    v22 = v20[1];

    sub_22812AB78(v14, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v23 = sub_227FCC340(v21, v22, v94);

    *(v16 + 24) = v23;
    *(v16 + 32) = 2082;
    v24 = (v89 + v15[7]);
    v25 = *v24;
    v26 = v24[1];

    sub_22812AB78(v89, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v27 = sub_227FCC340(v25, v26, v94);

    *(v16 + 34) = v27;
    *(v16 + 42) = 1026;
    LODWORD(v15) = *(v90 + v15[8]);
    sub_22812AB78(v90, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    *(v16 + 44) = v15;
    *(v16 + 48) = 1026;
    *(v16 + 50) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v10, v91, "Received %sprewarm request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v16, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v92, -1, -1);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  else
  {
    v29 = *(v0 + 272);
    v28 = *(v0 + 280);
    v30 = *(v0 + 264);
    sub_22812AB78(*(v0 + 256), type metadata accessor for SummarizationRequestHandler.RequestInfo);

    sub_22812AB78(v30, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v29, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v28, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  v31 = *(v0 + 160);
  v32 = *(v0 + 168);
  v33 = *(v0 + 152);
  v34 = *(v0 + 96);
  v35 = *(v0 + 104);
  v36 = (*(v0 + 72) + *(v32 + 24));
  v37 = *v36;
  v38 = v36[1];

  sub_22810D23C(v37, v38, v31);
  sub_227FCAFD4(v31, v33, qword_27D81F1D8, &unk_228142EA0);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    v39 = *(v0 + 240);
    v40 = *(v0 + 144);
    v41 = *(v0 + 72);
    sub_22812D31C(*(v0 + 152), qword_27D81F1D8, &unk_228142EA0);
    sub_2280EA2E4(v40);
    sub_22812ABD8(v41, v39, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v42 = sub_22813880C();
    v43 = sub_2281396DC();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 240);
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v94[0] = v47;
      *v46 = 136446210;
      v48 = (v45 + *(v32 + 24));
      v49 = *v48;
      v50 = v48[1];

      sub_22812AB78(v45, type metadata accessor for SummarizationRequestHandler.RequestInfo);
      v51 = sub_227FCC340(v49, v50, v94);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_227FC3000, v42, v43, "Unknown request use case identifier in prewarm: %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v47);
      MEMORY[0x22AAB28A0](v47, -1, -1);
      MEMORY[0x22AAB28A0](v46, -1, -1);
    }

    else
    {

      sub_22812AB78(v45, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    }

    goto LABEL_17;
  }

  v52 = *(v0 + 112);
  v53 = *(v0 + 120);
  v54 = *(v0 + 96);
  v55 = *(v0 + 104);
  (*(v55 + 32))(v53, *(v0 + 152), v54);
  (*(v55 + 16))(v52, v53, v54);
  v56 = (*(v55 + 88))(v52, v54);
  if (v56 == *MEMORY[0x277D4B0D8])
  {
    goto LABEL_14;
  }

  if (v56 == *MEMORY[0x277D4B110])
  {
    goto LABEL_23;
  }

  if (v56 == *MEMORY[0x277D4B0E0] || v56 == *MEMORY[0x277D4B0F0] || v56 == *MEMORY[0x277D4B0F8])
  {
    goto LABEL_14;
  }

  if (v56 == *MEMORY[0x277D4B120])
  {
LABEL_23:
    sub_2280EA7F4(*(v0 + 120), *(v0 + 136));
    v86 = *(v0 + 136);
    v87 = *(v0 + 144);
LABEL_40:
    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
    sub_22812CCFC(v86, v87, type metadata accessor for SummarizationSession.Configuration);
    goto LABEL_17;
  }

  if (v56 == *MEMORY[0x277D4B100] || v56 == *MEMORY[0x277D4B118])
  {
    goto LABEL_14;
  }

  if (v56 == *MEMORY[0x277D4B0C0] || v56 == *MEMORY[0x277D4B0B8])
  {
    goto LABEL_41;
  }

  if (v56 == *MEMORY[0x277D4B0D0])
  {
LABEL_14:
    v57 = *(v0 + 120);
    v58 = *(v0 + 96);
    v59 = *(v0 + 104);
    sub_2280EA2E4(*(v0 + 144));
LABEL_15:
    (*(v59 + 8))(v57, v58);
    goto LABEL_17;
  }

  if (v56 == *MEMORY[0x277D4B108] || v56 == *MEMORY[0x277D4B0E8])
  {
LABEL_41:
    sub_2280EA7F4(*(v0 + 120), *(v0 + 128));
    v87 = *(v0 + 144);
    v86 = *(v0 + 128);
    goto LABEL_40;
  }

  if (v56 == *MEMORY[0x277D4B128] || v56 == *MEMORY[0x277D4B0B0] || v56 == *MEMORY[0x277D4B0C8])
  {
    v57 = *(v0 + 120);
    v58 = *(v0 + 96);
    v59 = *(v0 + 104);
    sub_2280EA2EC(*(v0 + 144));
    goto LABEL_15;
  }

  v72 = *(v0 + 248);
  v73 = *(v0 + 72);
  sub_2280EA2E4(*(v0 + 144));
  sub_22812ABD8(v73, v72, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v74 = sub_22813880C();
  v75 = sub_2281396DC();
  v76 = os_log_type_enabled(v74, v75);
  v77 = *(v0 + 248);
  v93 = *(v0 + 120);
  v78 = *(v0 + 96);
  v79 = *(v0 + 104);
  if (v76)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v94[0] = v81;
    *v80 = 136446210;
    v82 = (v77 + *(v32 + 24));
    v83 = *v82;
    v84 = v82[1];

    sub_22812AB78(v77, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v85 = sub_227FCC340(v83, v84, v94);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_227FC3000, v74, v75, "Unknown request use case identifier in prewarm: %{public}s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v81);
    MEMORY[0x22AAB28A0](v81, -1, -1);
    MEMORY[0x22AAB28A0](v80, -1, -1);
  }

  else
  {

    sub_22812AB78(v77, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  v88 = *(v79 + 8);
  v88(v93, v78);
  v88(*(v0 + 112), *(v0 + 96));
LABEL_17:
  if (qword_27D81E2B8 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 232);
  v61 = *(v0 + 176);
  v62 = *(v0 + 72);
  v63 = type metadata accessor for Signpost(0);
  *(v0 + 296) = __swift_project_value_buffer(v63, qword_27D823258);
  sub_22812ABD8(v62, v60, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = swift_allocObject();
  *(v0 + 304) = v65;
  sub_22812CCFC(v60, v65 + v64, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v66 = swift_allocObject();
  *(v0 + 312) = v66;
  *(v66 + 16) = sub_22812CC9C;
  *(v66 + 24) = v65;

  sub_2281324C4();
  v67 = swift_task_alloc();
  *(v0 + 320) = v67;
  *v67 = v0;
  v67[1] = sub_22810F818;
  v68 = *(v0 + 144);
  v70 = *(v0 + 72);
  v69 = *(v0 + 80);

  return sub_228110DB0(v67, v69, v70, v68);
}

uint64_t sub_22810F818()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_22810FCEC;
  }

  else
  {
    v2 = sub_22810F92C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22810F92C()
{
  v20 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_2281324D4();
  sub_22812AB78(v2, type metadata accessor for SignpostToken);

  sub_22812ABD8(v3, v1, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v4 = sub_22813880C();
  v5 = sub_2281396BC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 224);
  v8 = *(v0 + 160);
  if (v6)
  {
    if (*(v0 + 336))
    {
      v9 = 0xEB00000000206465;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    if (*(v0 + 336))
    {
      v10 = 0x7461636572706564;
    }

    else
    {
      v10 = 0;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    v13 = sub_227FCC340(v10, v9, &v19);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2082;
    v14 = *v7;
    v15 = v7[1];

    sub_22812AB78(v7, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v16 = sub_227FCC340(v14, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_227FC3000, v4, v5, "Successfully handled %sprewarm request [requestIdentifier: %{public}s]", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v12, -1, -1);
    MEMORY[0x22AAB28A0](v11, -1, -1);
  }

  else
  {

    sub_22812AB78(v7, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  sub_22812D31C(v8, qword_27D81F1D8, &unk_228142EA0);
  sub_22812AB78(*(v0 + 144), type metadata accessor for SummarizationSession.Configuration);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22810FCEC()
{
  v45 = v0;
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v37 = v0[27];
  v38 = v0[26];
  v39 = v0[25];
  v41 = v0[24];
  v4 = v0[11];
  v5 = v0[9];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = sub_22812CC9C;
  v6[4] = v2;
  swift_beginAccess();
  *(v3 + 16) = sub_22812D46C;
  *(v3 + 24) = v6;

  v7 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_22812AB78(v4, type metadata accessor for SignpostToken);

  sub_22812ABD8(v5, v37, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v5, v38, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v5, v39, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v5, v41, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v8 = v1;
  v9 = sub_22813880C();
  v10 = sub_2281396DC();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = v10;
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[25];
    v40 = v0[24];
    v14 = v0[21];
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44[0] = v42;
    *v15 = 136447234;
    v17 = *v11;
    v16 = v11[1];

    sub_22812AB78(v11, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v18 = sub_227FCC340(v17, v16, v44);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = (v12 + v14[6]);
    v20 = *v19;
    v21 = v19[1];

    sub_22812AB78(v12, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v22 = sub_227FCC340(v20, v21, v44);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2082;
    v23 = (v13 + v14[7]);
    v24 = *v23;
    v25 = v23[1];

    sub_22812AB78(v13, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v26 = sub_227FCC340(v24, v25, v44);

    *(v15 + 24) = v26;
    *(v15 + 32) = 1026;
    LODWORD(v26) = *(v40 + v14[8]);
    sub_22812AB78(v40, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    *(v15 + 34) = v26;
    *(v15 + 38) = 2082;
    swift_getErrorValue();
    v27 = Error.loggingDescription.getter(v0[6], v0[7]);
    v29 = sub_227FCC340(v27, v28, v44);

    *(v15 + 40) = v29;
    _os_log_impl(&dword_227FC3000, v9, v43, "Prewarm request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v15, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v42, -1, -1);
    MEMORY[0x22AAB28A0](v15, -1, -1);
  }

  else
  {
    v31 = v0[26];
    v30 = v0[27];
    v32 = v0[25];
    sub_22812AB78(v0[24], type metadata accessor for SummarizationRequestHandler.RequestInfo);

    sub_22812AB78(v32, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v30, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  v33 = v0[20];
  v34 = v0[18];
  swift_willThrow();
  sub_22812D31C(v33, qword_27D81F1D8, &unk_228142EA0);
  sub_22812AB78(v34, type metadata accessor for SummarizationSession.Configuration);

  v35 = v0[1];

  return v35();
}

uint64_t SummarizationRequestHandler.prewarm(for:clientApplicationIdentifier:clientProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v5 + 208) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  *(v5 + 80) = swift_task_alloc();
  v6 = sub_228136FCC();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v7 = sub_228138CCC();
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  v8 = sub_228138C1C();
  *(v5 + 168) = v8;
  *(v5 + 176) = *(v8 - 8);
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228110454, 0, 0);
}

uint64_t sub_228110454()
{
  (*(*(v0 + 176) + 104))(*(v0 + 184), *MEMORY[0x277D4B080], *(v0 + 168));
  sub_227FCAF8C(&qword_27D81F3F8, MEMORY[0x277D4B088], MEMORY[0x277D4B090]);
  sub_2281394CC();
  sub_2281394CC();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
  {
    (*(v2 + 8))(*(v0 + 184), *(v0 + 168));

    v4 = MEMORY[0x277D4B0C0];
  }

  else
  {
    v5 = sub_2281399BC();
    (*(v2 + 8))(v1, v3);

    v4 = MEMORY[0x277D4B0E0];
    if (v5)
    {
      v4 = MEMORY[0x277D4B0C0];
    }
  }

  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  (*(v7 + 104))(v6, *v4, v8);
  v34 = sub_228138CAC();
  v15 = v14;
  (*(v7 + 8))(v6, v8);
  sub_228136FBC();
  v16 = sub_228136FAC();
  v18 = v17;
  (*(v12 + 8))(v10, v11);
  *v9 = v16;
  v9[1] = v18;

  sub_228136F9C();

  v19 = *(v12 + 48);
  if (v19(v13, 1, v11) == 1)
  {
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    sub_228136FBC();
    if (v19(v21, 1, v20) != 1)
    {
      sub_22812D31C(*(v0 + 80), &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
  }

  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 120);
  v25 = *(v0 + 208);
  v27 = *(v0 + 56);
  v26 = *(v0 + 64);
  (*(*(v0 + 96) + 32))(v23 + v24[5], *(v0 + 104), *(v0 + 88));
  v28 = (v23 + v24[6]);
  *v28 = v34;
  v28[1] = v15;
  v29 = (v23 + v24[7]);
  *v29 = v27;
  v29[1] = v26;
  *(v23 + v24[8]) = v25;
  v30 = (v23 + v24[9]);
  *v30 = v27;
  v30[1] = v26;
  *(v23 + v24[10]) = v25;
  sub_22812CCFC(v23, v22, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  swift_bridgeObjectRetain_n();
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *v31 = v0;
  v31[1] = sub_22811081C;
  v32 = *(v0 + 136);

  return sub_22810E9BC(v32, 1);
}

uint64_t sub_22811081C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_228110A0C;
  }

  else
  {
    v2 = sub_228110930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228110930()
{
  sub_22812AB78(*(v0 + 136), type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228110A0C()
{
  sub_22812AB78(*(v0 + 136), type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SummarizationRequestHandler.deinit()
{

  v1 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  v2 = sub_22813882C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22812AB78(v0 + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost, type metadata accessor for Signpost);
  return v0;
}

uint64_t SummarizationRequestHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  v2 = sub_22813882C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22812AB78(v0 + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost, type metadata accessor for Signpost);

  return swift_deallocClassInstance();
}

uint64_t sub_228110C4C(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  MEMORY[0x22AAB1970](*a1, a1[1]);
  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v2 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  MEMORY[0x22AAB1970](*(a1 + v2[6]), *(a1 + v2[6] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  MEMORY[0x22AAB1970](*(a1 + v2[7]), *(a1 + v2[7] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v5 = *(a1 + v2[8]);
  v3 = sub_22813998C();
  MEMORY[0x22AAB1970](v3);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return HIDWORD(v5);
}

uint64_t sub_228110DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_228110DD4, 0, 0);
}

uint64_t sub_228110DD4()
{
  v21 = v0;
  v1 = v0[14];
  v2 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v3 = (v1 + *(v2 + 28));
  v5 = *v3;
  v4 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v7 = (v1 + *(v2 + 24));
  v8 = v7[1];
  *(inited + 32) = *v7;
  *(inited + 40) = v8;

  sub_228104E70(v5, v4, inited);
  v9 = v0[14];
  v10 = v0[15];
  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v0[11] = v2;
  v0[12] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_22812ABD8(v9, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008(v0 + 8, v10);
  v14 = v13;
  v15 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 8);
  v17 = *(v14 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24);
  v16 = *(v14 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 32);
  __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), v17);
  (*(*(v16 + 8) + 8))(v17);
  v18 = *(v15 + 24);
  v20 = v14;
  if ((*(v18 + qword_2813C7D90))(&v20))
  {
    os_unfair_lock_lock((v18 + 16));
    sub_22810615C((v18 + 24), v14, v18);
    os_unfair_lock_unlock((v18 + 16));
  }

  v19 = v0[1];

  return v19();
}

void sub_228111008(void *a1, uint64_t a2)
{
  v6 = type metadata accessor for SummarizationSession.Configuration(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = *(v2 + 24);
  os_unfair_lock_lock((v12 + 16));
  v13 = sub_22810876C((v12 + 24), a1, a2);
  if (v3)
  {
    os_unfair_lock_unlock((v12 + 16));
    __break(1u);
  }

  else
  {
    v14 = v13;
    os_unfair_lock_unlock((v12 + 16));
    if (!v14)
    {
      sub_22812ABD8(a2, v11, type metadata accessor for SummarizationSession.Configuration);
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      RequestInfo.sessionInfo.getter(v15, v16, v20);
      sub_22812ABD8(v11, v9, type metadata accessor for SummarizationSession.Configuration);
      sub_22812CAE4(v20, v19);
      type metadata accessor for SummarizationSession(0);
      memset(v17, 0, sizeof(v17));
      v18 = 0;
      swift_allocObject();
      sub_228060E7C(v9, v19, v17, 0, 0, 0);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v20);
      sub_22812AB78(v11, type metadata accessor for SummarizationSession.Configuration);
    }
  }
}

uint64_t SummarizationRequestHandler.isLanguageEligibleForSummarization(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a1;
  return MEMORY[0x2822009F8](sub_228111204, 0, 0);
}

uint64_t sub_228111204()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[5] = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_228111328;

  return sub_22810A298((v0 + 2), 3, &unk_228142CE8, v4);
}

uint64_t sub_228111328(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_228111490, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_13((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_228111490()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2281114F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = sub_22813797C();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_22813795C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_22813794C();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = sub_22813713C();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228111764, 0, 0);
}

uint64_t sub_228111764()
{
  v70 = v0;
  v1 = objc_opt_self();
  v2 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v3 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v3 = &qword_2813C76F8;
    }

    v4 = *(*v3 + 280);
    v6 = *(*v3 + 288);
    v5 = *(*v3 + 296);
    v7 = *(*v3 + 2208);

    v8 = v2[422];

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      break;
    }

    if (v4)
    {
      goto LABEL_15;
    }

LABEL_21:
    v1 = v0[17];
    v12 = v0;
    v15 = v0 + 13;
    v14 = v0[13];
    v13 = v15[1];
    v16 = v12[12];
    v64 = v12;
    type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    (*(v14 + 104))(v13, *MEMORY[0x277D0E2D8], v16);

    sub_22813792C();
    sub_22813796C();
    if (qword_2813C86B0 != -1)
    {
      swift_once();
    }

    v2 = off_2813C86B8;
    v68 = *(off_2813C86B8 + 2);
    if (!v68)
    {
      v50 = 0;
      v0 = v64;
LABEL_60:
      v58 = v0[17];
      v59 = v64[16];
      v60 = v64[15];
      (*(v64[10] + 8))(v64[11], v64[9]);
      (*(v59 + 8))(v58, v60);
      v0 = v64;
      goto LABEL_61;
    }

    v17 = 0;
    v0 = v64;
    v66 = v64[19];
    v67 = (v66 + 8);
    v63 = off_2813C86B8;
    while (v17 < v2[2])
    {
      v1 = v0[20];
      v18 = v0[8];
      (*(v66 + 16))(v1, v2 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v17, v0[18]);
      sub_22813710C();
      v19 = sub_22813701C();
      v20 = *(v19 - 8);
      v21 = *(v20 + 48);
      v22 = v21(v18, 1, v19);
      v23 = v64 + 8;
      if (v22 == 1)
      {
        goto LABEL_29;
      }

      v25 = v0[7];
      v24 = v0[8];
      v26 = v0[3];
      v27 = sub_228136FFC();
      v65 = v28;
      v29 = *(v20 + 8);
      v29(v24, v19);
      v1 = v26;
      sub_22813710C();
      if (v21(v25, 1, v19) == 1)
      {

        v23 = v64 + 7;
        v2 = v63;
        v0 = v64;
LABEL_29:
        sub_22812D31C(*v23, &qword_27D81E328, &qword_2281402C0);
        goto LABEL_30;
      }

      v30 = v64[7];
      v31 = sub_228136FFC();
      v1 = v32;
      v29(v30, v19);
      if (v27 == v31 && v65 == v1)
      {

        v0 = v64;
      }

      else
      {
        v33 = sub_2281399BC();

        v2 = v63;
        v0 = v64;
        if ((v33 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v34 = v0[6];
      sub_22813712C();
      v35 = sub_2281370BC();
      v36 = *(v35 - 8);
      v37 = *(v36 + 48);
      v38 = v37(v34, 1, v35);
      v39 = v0[6];
      if (v38 == 1)
      {
        sub_22812D31C(v0[6], &qword_27D81E320, &unk_22813A7D0);
        v40 = 0;
        v41 = 0;
      }

      else
      {
        v40 = sub_228136FFC();
        v41 = v42;
        (*(v36 + 8))(v39, v35);
      }

      v43 = v0[5];
      sub_22813712C();
      v44 = v37(v43, 1, v35);
      v1 = v0[5];
      if (v44 == 1)
      {
        sub_22812D31C(v0[5], &qword_27D81E320, &unk_22813A7D0);
        if (!v41)
        {
          goto LABEL_58;
        }

        goto LABEL_50;
      }

      v45 = sub_228136FFC();
      v47 = v46;
      (*(v36 + 8))(v1, v35);
      if (!v41)
      {
        if (!v47)
        {
          goto LABEL_58;
        }

LABEL_50:

        v2 = v63;
LABEL_30:
        (*v67)(v0[20], v0[18]);
        goto LABEL_31;
      }

      if (!v47)
      {
        goto LABEL_50;
      }

      if (v40 == v45 && v41 == v47)
      {

LABEL_58:
        (*v67)(v0[20], v0[18]);
LABEL_59:
        v50 = 1;
        goto LABEL_60;
      }

      v1 = v0[20];
      v48 = v0[18];
      v49 = sub_2281399BC();

      (*v67)(v1, v48);
      v2 = v63;
      if (v49)
      {
        goto LABEL_59;
      }

LABEL_31:
      if (v68 == ++v17)
      {
        v50 = 0;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v1 = v5;
  v6(&v69, v7);

  v4 = v69;
  if (!v69)
  {
    goto LABEL_21;
  }

LABEL_15:
  v2 = *(v4 + 16);
  if (!v2)
  {
LABEL_20:

    goto LABEL_21;
  }

  v9 = 0;
  v10 = (v0[19] + 8);
  v11 = v4 + 40;
  while (1)
  {
    if (v9 >= *(v4 + 16))
    {
      goto LABEL_65;
    }

    v1 = v0[21];

    sub_2281370DC();
    if (sub_2281370EC())
    {
      break;
    }

    v9 = (v9 + 1);
    (*v10)(v0[21], v0[18]);
    v11 += 16;
    if (v2 == v9)
    {
      goto LABEL_20;
    }
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v51 = sub_22813882C();
  __swift_project_value_buffer(v51, qword_2813C8A20);
  v52 = sub_22813880C();
  v53 = sub_2281396BC();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[21];
  v56 = v0[18];
  if (v54)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_227FC3000, v52, v53, "Returning true from isLanguageEligibleForSummarization for language in\nlanguagesEligibleForSummarizationOverride list.", v57, 2u);
    MEMORY[0x22AAB28A0](v57, -1, -1);
  }

  (*v10)(v55, v56);
  v50 = 1;
LABEL_61:
  *v0[2] = v50;

  v61 = v0[1];

  return v61();
}

uint64_t SummarizationRequestHandler.isTextEligibleForSummarization(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a1;
  v5[8] = a2;
  return MEMORY[0x2822009F8](sub_2281120D0, 0, 0);
}

uint64_t sub_2281120D0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[5] = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_2281121FC;

  return sub_22810A298((v0 + 2), 3, &unk_228142D08, v5);
}

uint64_t sub_2281121FC(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_228112364, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_13((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_228112364()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2281123CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_2281123F0, 0, 0);
}

uint64_t sub_2281123F0()
{
  v1 = *(v0 + 16);
  *v1 = SKText.isEligibleForSummarization.getter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SummarizationRequestHandler.summarize(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v6[30] = swift_task_alloc();
  v7 = sub_2281386FC();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281125A8, 0, 0);
}

{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v6[45] = swift_task_alloc();
  v7 = sub_2281386FC();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v8 = sub_228138C3C();
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  type metadata accessor for SummarizationSession.Configuration(0);
  v6[53] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281207CC, 0, 0);
}