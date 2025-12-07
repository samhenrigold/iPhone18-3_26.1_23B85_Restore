uint64_t sub_227257CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a6;
  v60 = a5;
  v61 = a4;
  v12 = sub_227665440();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_227666B60();
  MEMORY[0x28223BE20](v16);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v53 - v22;
  if (!*(a2 + 16))
  {
    goto LABEL_16;
  }

  v55 = v20;
  v56 = v21;
  v53[1] = a1;
  sub_226F3A6FC(a1);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

  v53[2] = v7;
  v54 = a7;

  v25 = sub_227667380();
  v27 = v26;

  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v28 = sub_226E92000(v25, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_12:
    v50 = 1;
    a7 = v54;
    goto LABEL_17;
  }

  v31 = *(a3 + 56);
  v32 = v56;
  v33 = v31 + *(v56 + 72) * v28;
  v34 = v55;
  (*(v56 + 16))(v18, v33, v55);
  (*(v32 + 32))(v23, v18, v34);
  v35 = sub_227666A90();
  v37 = v61;
  if (!*(v61 + 16))
  {

LABEL_14:
    a7 = v54;
    goto LABEL_15;
  }

  v38 = sub_226E92000(v35, v36);
  v40 = v39;

  a7 = v54;
  if ((v40 & 1) == 0)
  {
LABEL_15:
    (*(v56 + 8))(v23, v55);
LABEL_16:
    v50 = 1;
    goto LABEL_17;
  }

  v41 = *(v37 + 56) + 24 * v38;
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  sub_226EB396C(*v41, v43, *(v41 + 16));
  v45 = sub_227666AA0();
  if (!v45[2])
  {
    (*(v56 + 8))(v23, v55);
    sub_226EB2DFC(v42, v43, v44);

    goto LABEL_16;
  }

  v53[0] = v43;
  LODWORD(v61) = v44;
  v47 = v45[4];
  v46 = v45[5];

  if (!*(v60 + 16))
  {
    sub_226EB2DFC(v42, v53[0], v61);

    goto LABEL_15;
  }

  sub_226E92000(v47, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    sub_226EB2DFC(v42, v53[0], v61);
    goto LABEL_14;
  }

  sub_227666A50();
  sub_227665F00();
  sub_227663830();
  (*(v57 + 8))(v14, v58);
  sub_227666B40();
  a7 = v54;
  sub_2276688D0();
  (*(v56 + 8))(v23, v55);
  v50 = 0;
LABEL_17:
  v51 = sub_2276688F0();
  return (*(*(v51 - 8) + 56))(a7, v50, 1, v51);
}

id sub_2272581A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v59 = sub_227662750();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_227667730();
  MEMORY[0x28223BE20](v57);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v55 = &v48 - v10;
    v56 = v15;
    v49 = (v4 + 8);
    v50 = (v4 + 32);
    v54 = v7;
    do
    {
      v16 = MEMORY[0x277D52F50];
      sub_2272838E4(v14, v11, MEMORY[0x277D52F50]);
      sub_2272838E4(v11, v7, v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        swift_getKeyPath();
        v17 = sub_227664ED0();
        v63 = MEMORY[0x277D83B88];
        v62[0] = v17;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v18 = sub_22766C820();
        sub_226E93170(v62, v60, &unk_27D7BC990, &qword_227670A30);
        v19 = v61;
        if (v61)
        {
          v20 = __swift_project_boxed_opaque_existential_0(v60, v61);
          v21 = *(v19 - 8);
          v22 = MEMORY[0x28223BE20](v20);
          v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v21 + 16))(v24, v22);
          v25 = sub_22766D170();
          (*(v21 + 8))(v24, v19);
          v7 = v54;
          v11 = v55;
          __swift_destroy_boxed_opaque_existential_0(v60);
        }

        else
        {
          v25 = 0;
        }

        v40 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230, qword_22767D000));
        [v41 initWithLeftExpression:v18 rightExpression:v40 modifier:0 type:v52 options:0];
      }

      else
      {
        (*v50)(v58, v7, v59);
        swift_getKeyPath();
        v26 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v27 = sub_2276626A0();
        v28 = [v26 stringFromDate_];

        v29 = sub_22766C000();
        v31 = v30;

        v63 = MEMORY[0x277D837D0];
        v62[0] = v29;
        v62[1] = v31;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v32 = sub_22766C820();
        sub_226E93170(v62, v60, &unk_27D7BC990, &qword_227670A30);
        v33 = v61;
        if (v61)
        {
          v34 = __swift_project_boxed_opaque_existential_0(v60, v61);
          v53 = &v48;
          v35 = *(v33 - 8);
          v36 = MEMORY[0x28223BE20](v34);
          v38 = &v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v35 + 16))(v38, v36);
          v39 = sub_22766D170();
          (*(v35 + 8))(v38, v33);
          v7 = v54;
          __swift_destroy_boxed_opaque_existential_0(v60);
        }

        else
        {
          v39 = 0;
        }

        v42 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v43 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230, qword_22767D000));
        [v43 initWithLeftExpression:v32 rightExpression:v42 modifier:0 type:v51 options:0];

        (*v49)(v58, v59);
        v11 = v55;
      }

      sub_22728394C(v11);
      v44 = sub_226E97D1C(v62, &unk_27D7BC990, &qword_227670A30);
      MEMORY[0x22AA985C0](v44);
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v14 += v56;
      --v13;
    }

    while (v13);
    v12 = v64;
  }

  if (v12 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_18;
    }

LABEL_20:

    return 0;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_18:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v45 = sub_22766C2B0();

  v46 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v46;
}

uint64_t sub_227258904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC568, &unk_22767DF80);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSyncZoneChangeWindow();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283434, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227258AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC570, &qword_22767DF90);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedDirtySyncZone();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272834C0, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227258CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC558, &qword_22767DF08);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSyncOperation();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272833A8, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227258EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B0, &qword_22767DB48);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedRecentSearchTerm();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22727DB24, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272590B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC428, &unk_22767DAC0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277894, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272592A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestKeyMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728455C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272844FC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetEntry();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728452C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundle();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272845BC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetResumableLoad();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728418C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetEntry();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277808, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlan();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728446C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4D8, &unk_22767DD40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedArchivedWorkoutPlanSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22727DC6C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedArchivedSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272845EC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D8, &qword_22767E0A8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCompletedMarketingVideo();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283C14, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B8, &qword_22767DB50);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22727DBB0, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E0, &qword_22767E0B0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEngagementBadge();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283CA0, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC480, &qword_22767DB18);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogModalityReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277D44, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC470, &qword_22767DB08);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedMusicGenre();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277C68, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC460, &qword_22767DAF8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedTrainerReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277B50, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC468, &qword_22767DB00);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTheme();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277BDC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C0, &qword_22767E088);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSessionScores();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283A70, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F8, &unk_22767DE20);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedUpNextQueueItem();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227282DE0, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC508, &qword_22767DE40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTipJournal();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227282EBC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC488, &qword_22767DB20);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEquipment();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277DD0, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC498, &qword_22767DB30);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogMetadataJournal();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277E5C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC478, &qword_22767DB10);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogModalityMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277CF4, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC458, &qword_22767DAF0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedTrainerMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277AC4, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725BED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC450, &qword_22767DAE8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedBodyFocus();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277A38, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC448, &qword_22767DAE0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSkillLevel();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272779AC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC440, &qword_22767DAD8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogWorkoutMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227277920, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogWorkoutReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272844CC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC608, &qword_22767E0E8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogProgramReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283ED0, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E8, &qword_22767E0B8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogThemeCategory();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283D2C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F0, &unk_22767E0C0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTipCategoryReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283DB8, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedArchivedSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227284330, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC500, &qword_22767DE38);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAchievementEnvironmentCache();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227282E30, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC418, &unk_22767DAB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAudioLanguagePreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22727777C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC600, &unk_22767E0D8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSampleContentArchivedSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283E44, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC598, &qword_22767DFB8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728377C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC588, &qword_22767DFA8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283664, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC590, &qword_22767DFB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitWorkout();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272836F0, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5A0, &unk_22767DFC0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitMindfulSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283808, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227284074, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestKeyMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227284100, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC520, qword_22767DE58);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedOnboardingSurveyResult();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283060, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C8, &qword_22767E090);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedRecommendation();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283AFC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D0, &qword_22767E098);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogSyncAnchor();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283B88, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEstimatedCalories();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272835D8, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC578, &qword_22767DF98);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitActivityType();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728354C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEstimatedCalories();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728449C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725EB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlan();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283894, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F0, &qword_22767DE18);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227282D54, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC530, &qword_22767DED8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlanTemplate();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272830EC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC540, &qword_22767DEE8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedBurnBarDisplayPreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283204, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC538, &qword_22767DEE0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedMetricsDisplayPreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283178, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC510, &qword_22767DE48);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedProgressDisplayPreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227282F48, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetResumableLoad();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728458C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC550, &qword_22767DEF8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedBookmark();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728331C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC548, &qword_22767DEF0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedPlaylist();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283290, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC518, &qword_22767DE50);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedPrivacyAcknowledgement();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227282FD4, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725FE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogWorkoutReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283FE8, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22726002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC610, &unk_22767E0F0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTipReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283F5C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227260218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A0, &qword_22767DB38);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAchievementNotificationRecord();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22727DA98, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227260404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC628, &qword_22767E158);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetLoadFailure();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227284218, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272605F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundle();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272842A4, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272607DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundleLoadFailure();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_22728461C, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272609C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundleLoadFailure();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_2272843BC, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227260BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t (*a9)(void), uint64_t *a10, uint64_t *a11)
{
  v19 = a2 * a3;
  v20 = (a2 * a3) >> 64;
  if (v20 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_35;
  }

  v17 = v19 + a3;
  if (__OFADD__(v19, a3))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = a8;
  v14 = a7;
  v16 = a4;
  v15 = a1;
  v35 = a5;
  v20 = a4 & 0xFFFFFFFFFFFFFF8;
  v13 = a4 >> 62;
  if (!(a4 >> 62))
  {
    v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v21)
    {
      v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17 < v19)
    {
      goto LABEL_44;
    }

    if (v21 >= v19)
    {
      goto LABEL_8;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  if (v16 < 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v20;
  }

  v33 = sub_22766CD20();
  if (v17 >= v33)
  {
    v17 = v33;
  }

  if (v17 < v19)
  {
    goto LABEL_44;
  }

  if (sub_22766CD20() < v19)
  {
    goto LABEL_43;
  }

LABEL_8:
  if (v19 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v13)
  {
    v22 = sub_22766CD20();
  }

  else
  {
    v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 < v17)
  {
    goto LABEL_46;
  }

  if (v17 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v34 = v14;
  if ((v16 & 0xC000000000000001) != 0 && v19 != v17)
  {
    if (v19 < v17)
    {
      v18(0);

      v23 = v19;
      do
      {
        v24 = v23 + 1;
        sub_22766CE60();
        v23 = v24;
      }

      while (v17 != v24);
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v13)
  {
LABEL_20:
    v16 &= 0xFFFFFFFFFFFFFF8uLL;
    v18 = (v16 + 32);
    v11 = (2 * v17) | 1;
    goto LABEL_23;
  }

LABEL_22:

  v23 = sub_22766CFE0();
  v16 = v23;
  v18 = v25;
  v19 = v26;
  v11 = v27;
LABEL_23:
  v17 = MEMORY[0x22AA99A00](v23);
  if ((v11 & 1) == 0)
  {
LABEL_24:
    sub_22726CF90(v16, v18, v19, v11, a9);
    v29 = v28;
    goto LABEL_31;
  }

  sub_22766D1D0();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v11 >> 1, v19))
  {
    goto LABEL_49;
  }

  if (v31 != (v11 >> 1) - v19)
  {
LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x277D84F90];
  }

LABEL_31:
  v35(v15, v29);

  objc_autoreleasePoolPop(v17);
  if (!v12)
  {
    [*(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a10 a11) + 32))];
  }

  return swift_unknownObjectRelease();
}

void sub_227260E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC568, &unk_22767DF80);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC568, &unk_22767DF80, type metadata accessor for ManagedSyncZoneChangeWindow);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272833F8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726107C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC570, &qword_22767DF90);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC570, &qword_22767DF90, type metadata accessor for ManagedDirtySyncZone);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283484, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC558, &qword_22767DF08);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC558, &qword_22767DF08, type metadata accessor for ManagedSyncOperation);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22728336C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B0, &qword_22767DB48);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4B0, &qword_22767DB48, type metadata accessor for ManagedRecentSearchTerm);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DAE8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC428, &unk_22767DAC0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC428, &unk_22767DAC0, type metadata accessor for ManagedAssetRequestMediaStreamMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277858, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726180C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC430, &unk_22767FFB0, type metadata accessor for ManagedAssetRequestKeyMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284544, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272619F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC438, &qword_22767DAD0, type metadata accessor for ManagedAssetRequestReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272844E4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC420, qword_22767FED0, type metadata accessor for ManagedAssetEntry);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284514, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5F8, &qword_22767E0D0, type metadata accessor for ManagedAssetBundle);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272845A4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC620, &unk_22767E148, type metadata accessor for ManagedAssetResumableLoad);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284150, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC420, qword_22767FED0, type metadata accessor for ManagedAssetEntry);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272777CC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC410, &unk_22767DAA0, type metadata accessor for ManagedWorkoutPlan);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284454, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4D8, &unk_22767DD40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4D8, &unk_22767DD40, type metadata accessor for ManagedArchivedWorkoutPlanSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DC30, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4A8, &qword_22767DB40, type metadata accessor for ManagedArchivedSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272845D4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D8, &qword_22767E0A8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5D8, &qword_22767E0A8, type metadata accessor for ManagedCompletedMarketingVideo);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283BD8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B8, &qword_22767DB50);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4B8, &qword_22767DB50, type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DB74, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E0, &qword_22767E0B0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5E0, &qword_22767E0B0, type metadata accessor for ManagedEngagementBadge);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283C64, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC480, &qword_22767DB18);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC480, &qword_22767DB18, type metadata accessor for ManagedCatalogModalityReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_226EB540C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272630A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC470, &qword_22767DB08);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC470, &qword_22767DB08, type metadata accessor for ManagedMusicGenre);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277C2C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC460, &qword_22767DAF8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC460, &qword_22767DAF8, type metadata accessor for ManagedTrainerReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277B14, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC468, &qword_22767DB00);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC468, &qword_22767DB00, type metadata accessor for ManagedCatalogTheme);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277BA0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726364C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C0, &qword_22767E088);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5C0, &qword_22767E088, type metadata accessor for ManagedSessionScores);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283A34, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F8, &unk_22767DE20);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4F8, &unk_22767DE20, type metadata accessor for ManagedUpNextQueueItem);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282DA4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC508, &qword_22767DE40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC508, &qword_22767DE40, type metadata accessor for ManagedCatalogTipJournal);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282E80, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC488, &qword_22767DB20);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC488, &qword_22767DB20, type metadata accessor for ManagedEquipment);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277D94, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC498, &qword_22767DB30);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC498, &qword_22767DB30, type metadata accessor for ManagedCatalogMetadataJournal);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277E20, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC478, &qword_22767DB10);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC478, &qword_22767DB10, type metadata accessor for ManagedCatalogModalityMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277CB8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272641A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC458, &qword_22767DAF0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC458, &qword_22767DAF0, type metadata accessor for ManagedTrainerMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277A88, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC450, &qword_22767DAE8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC450, &qword_22767DAE8, type metadata accessor for ManagedBodyFocus);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272779FC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC448, &qword_22767DAE0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC448, &qword_22767DAE0, type metadata accessor for ManagedSkillLevel);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277970, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC440, &qword_22767DAD8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC440, &qword_22767DAD8, type metadata accessor for ManagedCatalogWorkoutMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272778E4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC490, &qword_22767DB28, type metadata accessor for ManagedCatalogWorkoutReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272844B4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC608, &qword_22767E0E8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC608, &qword_22767E0E8, type metadata accessor for ManagedCatalogProgramReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283E94, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E8, &qword_22767E0B8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5E8, &qword_22767E0B8, type metadata accessor for ManagedCatalogThemeCategory);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283CF0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F0, &unk_22767E0C0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5F0, &unk_22767E0C0, type metadata accessor for ManagedCatalogTipCategoryReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283D7C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272650C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4A8, &qword_22767DB40, type metadata accessor for ManagedArchivedSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272842F4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272652A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC500, &qword_22767DE38);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC500, &qword_22767DE38, type metadata accessor for ManagedAchievementEnvironmentCache);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_226ECC7F4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC418, &unk_22767DAB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC418, &unk_22767DAB0, type metadata accessor for ManagedAudioLanguagePreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277740, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC600, &unk_22767E0D8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC600, &unk_22767E0D8, type metadata accessor for ManagedSampleContentArchivedSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283E08, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}