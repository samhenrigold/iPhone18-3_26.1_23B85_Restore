uint64_t OUTLINED_FUNCTION_64_7()
{
}

uint64_t OUTLINED_FUNCTION_66_10()
{
}

void sub_237BA3350(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_237BA35D8(a1, &v25 - v18);
  if (!v2)
  {
    v25 = v9;
    v26 = v4;
    v27 = v10;
    v28 = v12;
    sub_237BA3C3C(a1, v16);
    sub_237C07EBC();
    sub_237C07E9C();
    sub_237C07F0C();
    sub_237C07E8C();
    sub_237C07E9C();
    sub_237C07EBC();
    sub_237C07ECC();
    sub_237C07DDC();
    sub_237C07DEC();
    sub_237C07E1C();
    sub_237C07E2C();
    v20 = sub_237C07DAC();
    v21 = sub_237C07DAC();
    v31 = v20;
    sub_237A969F0(v21);
    v22 = v25;
    sub_237C07D3C();
    (*(v29 + 104))(v22, *MEMORY[0x277D25368], v26);
    sub_237C07E4C();
    v23 = v27;
    v24 = *(v28 + 8);
    v24(v16, v27);
    v24(v19, v23);
  }
}

void sub_237BA35D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v73 = a2;
  v76 = sub_237C06CCC();
  OUTLINED_FUNCTION_0();
  v84 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v85 = v6 - v5;
  OUTLINED_FUNCTION_41_0();
  v71 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v75 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v74 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v70 = v68 - v12;
  OUTLINED_FUNCTION_41_0();
  sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v81 = v14;
  v82 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v80 = v16 - v15;
  OUTLINED_FUNCTION_41_0();
  sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v77 = v18;
  v78 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v88 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v79 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v68 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v68 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v68 - v34;
  v36 = objc_opt_self();
  v37 = [v36 defaultManager];
  sub_2379F364C();

  if (!v2)
  {
    v68[1] = v26;
    v69 = 0;
    v38 = [v36 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v39 = sub_237C05C0C();
    v41 = v40;
    (*(v77 + 8))(v21, v78);
    v87[0] = v39;
    v87[1] = v41;
    v43 = v80;
    v42 = v81;
    v44 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x277CC91D8], v82);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v42 + 8))(v43, v44);

    v45 = *(v79 + 8);
    v46 = v88;
    v45(v29, v88);
    OUTLINED_FUNCTION_13_12();
    v47 = v35;
    sub_237C05A3C();
    v45(v32, v46);
    v48 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    sub_237A7B7A0(v83 + *(v48 + 28), v87, &qword_27DE9A998, &unk_237C0C100);
    if (v87[3])
    {
      v49 = swift_dynamicCast();
      v50 = v84;
      v51 = v75;
      if ((v49 & 1) != 0 && (v86 & 1) == 0)
      {
        v52 = v70;
        v53 = v69;
        sub_237A672B4(0x7365727574616566, 0xE800000000000000, v70);
        if (!v53)
        {
          sub_237C07EEC();
          OUTLINED_FUNCTION_1_82();
          sub_237BA4648(v65, v66, v67, v72);
          v45(v47, v88);
          (*(v51 + 32))(v73, v52, v71);
          return;
        }

        v54 = v88;
        goto LABEL_11;
      }
    }

    else
    {
      sub_237A286E0(v87);
      v50 = v84;
    }

    MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    v55 = v85;
    sub_237C06CBC();
    sub_237BA46BC();
    v56 = v76;
    v57 = v69;
    sub_237C06ECC();
    if (!v57)
    {
      v58 = OUTLINED_FUNCTION_166();
      v59(v58);
      v60 = v74;
      sub_237C07D8C();
      sub_237C07EEC();
      OUTLINED_FUNCTION_1_82();
      sub_237BA4648(v61, v62, v63, v72);
      (*(v75 + 32))(v73, v60, v71);
      sub_237A64C34();
      (*(v50 + 8))(v85, v56);
      v64 = v47;
      v54 = v88;
LABEL_12:
      v45(v64, v54);
      return;
    }

    (*(v50 + 8))(v55, v56);
    v54 = v88;
LABEL_11:
    v64 = v47;
    goto LABEL_12;
  }
}

void sub_237BA3C3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v70 = a2;
  v69 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v86 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v71 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v76 = v8;
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v66 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v73 = v11;
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v72 = &v66 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  MEMORY[0x28223BE20](v83);
  v84 = &v66 - v13;
  OUTLINED_FUNCTION_41_0();
  sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v81 = v15;
  v82 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v78 = v20;
  v79 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v91 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v88 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_0();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v66 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v66 - v33;
  MEMORY[0x28223BE20](v35);
  v80 = &v66 - v36;
  v37 = objc_opt_self();
  v38 = [v37 defaultManager];
  sub_2379F364C();

  if (!v2)
  {
    v67 = v28;
    v68 = 0;
    v39 = [v37 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v40 = sub_237C05C0C();
    v42 = v41;
    (*(v78 + 8))(v23, v79);
    v89 = v40;
    v90 = v42;
    v44 = v81;
    v43 = v82;
    (*(v81 + 104))(v18, *MEMORY[0x277CC91D8], v82);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v44 + 8))(v18, v43);

    v45 = *(v88 + 8);
    v46 = v91;
    v45(v31, v91);
    OUTLINED_FUNCTION_13_12();
    v47 = v80;
    sub_237C05A3C();
    v45(v34, v46);
    v48 = _s5ModelVMa_0(0);
    v49 = v84;
    sub_237A7B7A0(v85 + *(v48 + 20), v84, &qword_27DE9A790, &qword_237C0A710);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = v75;
      v51 = v76;
      v52 = v47;
      v53 = v77;
      (*(v76 + 32))(v75, v49, v77);
      sub_2379D9224(&qword_27DE9BB78, &qword_27DE9A780, &unk_237C0A700, MEMORY[0x277CC5168]);
      OUTLINED_FUNCTION_166();
      v54 = v68;
      sub_237C06B2C();
      v56 = v86;
      v55 = v87;
      if (v54)
      {
        (*(v51 + 8))(v50, v53);
        v47 = v52;
LABEL_7:
        v61 = v91;
LABEL_11:
        v45(v47, v61);
        return;
      }

      (*(v51 + 8))(v50, v53);
      v47 = v52;
    }

    else
    {
      v57 = v72;
      v58 = v73;
      v59 = v74;
      (*(v73 + 32))(v72, v49, v74);
      sub_2379D9224(&qword_27DE9BB80, &qword_27DE9A788, &unk_237C13D50, MEMORY[0x277CC5158]);
      v60 = v68;
      sub_237C06B2C();
      v56 = v86;
      v55 = v87;
      if (v60)
      {
        (*(v58 + 8))(v57, v59);
        goto LABEL_7;
      }

      (*(v58 + 8))(v57, v59);
    }

    v61 = v91;
    (*(v88 + 16))(v67, v47, v91);
    v62 = v71;
    sub_237C07D8C();
    sub_237C07EEC();
    OUTLINED_FUNCTION_1_82();
    sub_237BA4648(v63, v64, v65, v55);
    (*(v56 + 32))(v70, v62, v69);
    sub_237A64C34();
    goto LABEL_11;
  }
}

uint64_t sub_237BA4394(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  sub_237AC1704(v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v45 = v50[5];
  v46 = v50[0];
  v9 = (v50[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v49[0] = v14;
      v49[1] = v15;
      v49[2] = v17;
      v49[3] = v18;

      v45(v48, v49);

      v19 = v48[0];
      v20 = v48[1];
      v21 = v48[2];
      v22 = v48[3];
      v23 = *v51;
      v24 = OUTLINED_FUNCTION_166();
      v27 = sub_237ACAC78(v24, v25);
      v28 = v23[2];
      v29 = (v26 & 1) == 0;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v30 = v26;
      if (v23[3] >= v28 + v29)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
          sub_237C090BC();
        }
      }

      else
      {
        sub_237AC03B4();
        v31 = OUTLINED_FUNCTION_166();
        v33 = sub_237ACAC78(v31, v32);
        if ((v30 & 1) != (v34 & 1))
        {
          goto LABEL_24;
        }

        v27 = v33;
      }

      v8 &= v8 - 1;
      v35 = *v51;
      if (v30)
      {

        v36 = (v35[7] + 16 * v27);
        *v36 = v21;
        v36[1] = v22;
      }

      else
      {
        v35[(v27 >> 6) + 8] |= 1 << v27;
        v37 = (v35[6] + 16 * v27);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v35[7] + 16 * v27);
        *v38 = v21;
        v38[1] = v22;
        v39 = v35[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v35[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2379E925C(v46);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237BA4648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_237BA4394(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

unint64_t sub_237BA46BC()
{
  result = qword_27DE9DA80;
  if (!qword_27DE9DA80)
  {
    sub_237C06CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA80);
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  sub_237A074CC(a1, v15 - v14);
  v19[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_237BA52B8(v16, boxed_opaque_existential_0);
  sub_237BA531C(a1);
  return sub_2379DAE54(v19, a4 + 8);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v1 + 8, &v3, &qword_27DE9A998, &unk_237C0C100);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v9);
}

uint64_t sub_237BA48F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA88, &qword_237C15A30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  *(a3 + 8) = 0u;
  v21 = a3 + 8;
  *(a3 + 24) = 0u;
  *a3 = sub_237C070EC();
  sub_237C0718C();
  *(a3 + 40) = v22;
  sub_237C0716C();
  *(a3 + 48) = v23;
  *(a3 + 56) = sub_237C070AC();
  v24 = a2;
  sub_2379D8FF4(a2, v12, &qword_27DE9A9A0, &qword_237C0BF60);
  v25 = 1;
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) != 1)
  {
    v26 = v31;
    (*(v31 + 32))(v9, v12, v6);
    (*(v26 + 16))(v15, v9, v6);
    swift_storeEnumTagMultiPayload();
    (*(v26 + 8))(v9, v6);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v15, v25, 1, v16);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_2379D9054(v15, &qword_27DE9DA88, &qword_237C15A30);
    }
  }

  else
  {
    sub_237BA52B8(v15, v20);
  }

  v32[3] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  sub_237BA52B8(v20, boxed_opaque_existential_0);
  sub_2379D9054(v24, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237C071DC();
  OUTLINED_FUNCTION_4();
  (*(v28 + 8))(a1);
  return sub_2379DAE54(v32, v21);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.description.getter()
{
  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  sub_237C08EDC();
  v1 = MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  OUTLINED_FUNCTION_3_10(v1, v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();
  v3 = MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C16E40);
  OUTLINED_FUNCTION_3_10(v3, v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();

  strcpy(v7, "Random Seed: ");
  HIWORD(v7[1]) = -4864;
  v5 = sub_237C0924C();
  MEMORY[0x2383DC360](v5);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v7[0], v7[1]);

  return 0x747065442078614DLL;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379D8FF4(v1 + 8, &v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_237A07268(a1);
    return sub_237BA531C(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BA4F64@<X0>(uint64_t a1@<X8>)
{
  result = MLDecisionTreeClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237BA4FA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v13[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  if (v9 == 255)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v7 = v8;
    *(v7 + 8) = v9 & 1;
  }

  else
  {
    sub_2379DBC84(v8, v9);
  }

  swift_storeEnumTagMultiPayload();
  sub_237BA52B8(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2 + 8);
}

void (*MLDecisionTreeClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLDecisionTreeClassifier.ModelParameters.validationData.getter(a1);
  return sub_237BA5148;
}

void sub_237BA5148(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_237BA51DC(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A074CC(a1, v4);
  return MLDecisionTreeClassifier.ModelParameters.validation.setter(v4);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237BA52B8(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1 + 8);
}

uint64_t sub_237BA52B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BA531C(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*MLDecisionTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v3;
  v3[16] = v1;
  v3[17] = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v3[18] = __swift_coroFrameAllocStub(v5);
  v3[19] = __swift_coroFrameAllocStub(v5);
  result = sub_2379D8FF4(v1 + 8, (v3 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v3[7])
  {
    sub_2379DAD24(v3 + 2, v3);
    swift_dynamicCast();
    return sub_237BA5474;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237BA5474(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A074CC((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237BA52B8(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5 + 8);
    sub_237BA531C(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237BA52B8(v4, v8);
    sub_2379DAE54((v2 + 12), v5 + 8);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLDecisionTreeClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237BA5638(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_237BA568C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_237BA5700()
{
  sub_237BA575C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_237BA575C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA0, &unk_237C0B820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_237BA57C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D84F90];
  *(inited + 32) = MEMORY[0x277D84F90];
  *(inited + 40) = v9;
  *(inited + 48) = v9;
  *(inited + 56) = v9;
  *(inited + 16) = v6;
  *(inited + 24) = v7;
  result = sub_2379DBCF4(v6, v7);
  if (!v3)
  {
    sub_237BA59CC(a2, a3);
  }

  return result;
}

uint64_t sub_237BA586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237B8CDFC(a1, v9);
  result = sub_237BA5934(v9);
  if (!v3)
  {
    sub_237BA59CC(a2, a3);
  }

  return result;
}

uint64_t sub_237BA59CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v113 = a1;
  v107 = a2;
  v115 = sub_237C05ADC();
  v126 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v127 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_237C05BFC();
  v124 = *(v5 - 8);
  v125 = v5;
  MEMORY[0x28223BE20](v5);
  v123 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _TablePrinter(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v134 = v11;
  LOBYTE(v135) = v12;
  sub_2379DBCF4(v11, v12);
  MLDataTable.size.getter();
  v13 = sub_237A018D0();
  sub_2379DBC9C(v11, v12);
  v134 = 0;
  v135 = 0xE000000000000000;
  sub_237C08EDC();

  v134 = 0x69737365636F7250;
  v135 = 0xEB0000000020676ELL;
  v131 = v13;
  v14 = sub_237C0924C();
  MEMORY[0x2383DC360](v14);

  MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1E250);
  v15 = v134;
  v16 = v135;
  v17 = sub_237C08C1C();
  sub_237BABE74(v15, v16, v17);

  v18 = v10 + v8[7];
  sub_237C05BEC();
  v112 = v13;
  *v10 = v13;
  sub_2379F5634();
  v19 = sub_237C08D0C();
  v20 = v8[8];
  v108 = v19;
  *(v10 + v20) = v19;
  v21 = (v10 + v8[9]);
  *v21 = 0xD000000000000010;
  v21[1] = 0x8000000237C1E2A0;
  v22 = v123;
  sub_237C05BEC();
  v23 = *(v124 + 40);
  v111 = v18;
  v23(v18, v22, v125);
  sub_237BABFB8();
  v118 = v10;
  sub_237BAC25C(0);
  v24 = *(v3 + 16);
  v117 = v3;
  v25 = *(v3 + 24);
  v134 = v24;
  LOBYTE(v135) = v25;
  v136 = 0;
  v137 = 0;
  v120 = v24;
  v119 = v25;
  sub_2379DBCF4(v24, v25);
  v26 = 0;
  v27 = 0;
  v109 = "Extracted features from ";
  v110 = "Image does not exist at ";
  v114 = (v126 + 8);
  v116 = xmmword_237C0B660;
  while (1)
  {
    v131 = v120;
    LOBYTE(v132) = v119;
    if (v27 == MLDataTable.size.getter())
    {
      sub_2379DBC9C(v134, v135);
      sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v72 = swift_allocObject();
      *(v72 + 16) = v116;
      v73 = MEMORY[0x277D83C10];
      *(v72 + 56) = MEMORY[0x277D83B88];
      *(v72 + 64) = v73;
      *(v72 + 32) = 3;
      sub_237C0826C("event: %lu", v106);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0BC00;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v75 = v117;
      v76 = swift_beginAccess();
      v131 = v75[5];
      MEMORY[0x28223BE20](v76);
      *(&v106 - 2) = &v131;

      v77 = sub_237BBDC94(sub_2379F5678);
      v79 = v78;

      *(inited + 48) = v77;
      *(inited + 56) = v79 & 1;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v131 = v75[6];
      MEMORY[0x28223BE20](v80);
      *(&v106 - 2) = &v131;

      v81 = sub_237BBDC94(sub_2379F5698);
      v83 = v82;

      *(inited + 80) = v81;
      *(inited + 88) = v83 & 1;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v84 = swift_beginAccess();
      v130 = v75[4];
      MEMORY[0x28223BE20](v84);
      *(&v106 - 2) = &v130;

      v85 = sub_237BBDC94(sub_2379F56B8);
      v87 = v86;

      *(inited + 112) = v85;
      *(inited + 120) = v87 & 1;
      *(inited + 128) = 0x7461506567616D69;
      *(inited + 136) = 0xE900000000000068;
      v88 = swift_beginAccess();
      v128 = v75[7];
      MEMORY[0x28223BE20](v88);
      *(&v106 - 2) = &v128;

      v89 = sub_237BBDC94(sub_2379F57A0);
      v91 = v90;

      *(inited + 144) = v89;
      *(inited + 152) = v91 & 1;
      v92 = sub_237C085AC();
      v93 = v138;
      sub_237B6CB9C(v92, &v128);
      v138 = v93;
      if (!v93)
      {
        v94 = v129;
        v95 = v107;
        *v107 = v128;
        *(v95 + 8) = v94;
      }

      return sub_237BA6818(v118, type metadata accessor for _TablePrinter);
    }

    MLDataTable.Rows.subscript.getter(v27, &v131);
    v28 = v131;
    v29 = v132;
    v30 = v133;
    v31 = sub_237B6A8E8(v27);
    if (__OFADD__(v26, 1))
    {
      break;
    }

    v32 = v31;
    if (!*(v29 + 16) || (v33 = sub_237ACAC78(0x7461506567616D69, 0xE900000000000068), (v34 & 1) == 0))
    {
      v136 = v32;
      v137 = v26 + 1;
      goto LABEL_21;
    }

    v125 = v26 + 1;
    v126 = v32;
    v124 = v26;
    v35 = v138;
    v36 = sub_237A2E9C8(*(*(v29 + 56) + 8 * v33));
    if (v35)
    {
      goto LABEL_27;
    }

    sub_237AFC548(v36, &v131);
    v38 = v131;
    v37 = v132;
    v39 = v133;
    if (v133 != 2)
    {
      v70 = v131;
      v71 = v132;
LABEL_19:
      sub_2379E8CE8(v70, v71, v39);
      v136 = v126;
      v137 = v125;
      v26 = v124;
LABEL_21:
      v131 = 0;
      v132 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C1E2C0);
      v130 = v26;
      v96 = sub_237C0924C();
      MEMORY[0x2383DC360](v96);

      MEMORY[0x2383DC360](0x6C626174206E6920, 0xE900000000000065);
      v97 = v131;
      v98 = v132;
      sub_2379E8AF0();
      v99 = swift_allocError();
      *v100 = v97;
      *(v100 + 8) = v98;
      *(v100 + 16) = 0u;
      *(v100 + 32) = 0u;
      *(v100 + 48) = 0;
      v138 = v99;
      swift_willThrow();

LABEL_22:

      sub_2379DBC9C(v134, v135);
      return sub_237BA6818(v118, type metadata accessor for _TablePrinter);
    }

    if (!*(v29 + 16) || (v40 = sub_237ACAC78(0x6C6562616CLL, 0xE500000000000000), (v41 & 1) == 0))
    {
      v70 = v38;
      v71 = v37;
      v39 = 2;
      goto LABEL_19;
    }

    v42 = *(*(v29 + 56) + 8 * v40);
    v123 = v30;
    v43 = sub_237A2E9C8(v42);
    sub_237AFC548(v43, &v131);
    v44 = v131;
    v45 = v132;
    v46 = v133;
    if (v133 != 2)
    {
      sub_2379E8CE8(v38, v37, 2);
      v136 = v126;
      v137 = v125;
      sub_2379E8CE8(v44, v45, v46);
      v26 = v124;
      goto LABEL_21;
    }

    v121 = v29;
    v122 = v28;
    v47 = [objc_opt_self() defaultManager];
    v48 = sub_237C086BC();
    v49 = [v47 fileExistsAtPath_];

    if ((v49 & 1) == 0)
    {
      sub_2379E8CE8(v44, v45, 2);
      v131 = 0;
      v132 = 0xE000000000000000;
      sub_237C08EDC();

      v131 = 0xD000000000000018;
      v132 = 0x8000000237C1E2F0;
      MEMORY[0x2383DC360](v38, v37);
      sub_2379E8CE8(v38, v37, 2);
      v102 = v131;
      v103 = v132;
      sub_2379E8AF0();
      v104 = swift_allocError();
      *v105 = v102;
      *(v105 + 8) = v103;
      *(v105 + 16) = 0u;
      *(v105 + 32) = 0u;
      *(v105 + 48) = 0;
      v138 = v104;
      swift_willThrow();

      goto LABEL_22;
    }

    sub_237C059BC();
    sub_2379E8CE8(v38, v37, 2);
    v50 = sub_237C059DC();
    v52 = v51;
    sub_237AB0A6C();
    v138 = 0;
    v54 = v53;
    v55 = v124;
    if (__OFADD__(v124, v113))
    {
      goto LABEL_26;
    }

    v56 = *(v53 + 16);
    v57 = sub_237AC7A20(v124 + v113, v56);
    v58 = sub_237AC7988(v44, v45, v56);
    v59 = sub_237AC7988(v50, v52, v56);
    swift_beginAccess();
    sub_237A967C4(v54);
    swift_endAccess();
    sub_237A96880(v57);
    swift_beginAccess();
    sub_237A96708(v58);
    swift_endAccess();
    swift_beginAccess();
    sub_237A96708(v59);
    swift_endAccess();
    sub_237BAC25C(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v60 = swift_allocObject();
    *(v60 + 16) = v116;
    sub_237C05BCC();
    *(v60 + 56) = MEMORY[0x277D839F8];
    *(v60 + 64) = MEMORY[0x277D83A80];
    *(v60 + 32) = -v61;
    v62 = sub_237C0871C();
    v64 = v63;
    v131 = 0;
    v132 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000018, v110 | 0x8000000000000000);
    v130 = v125;
    v65 = sub_237C0924C();
    MEMORY[0x2383DC360](v65);

    MEMORY[0x2383DC360](0x20666F2074756F20, 0xE800000000000000);
    v130 = v112;
    v66 = sub_237C0924C();
    MEMORY[0x2383DC360](v66);

    MEMORY[0x2383DC360](0xD000000000000021, v109 | 0x8000000000000000);
    MEMORY[0x2383DC360](v62, v64);

    v67 = v131;
    v68 = v132;
    v69 = sub_237C08C4C();
    sub_237BABE74(v67, v68, v69);

    (*v114)(v127, v115);
    v26 = v55 + 1;
    v27 = v126;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237BA6818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237BA6878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v56 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  i = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F0, &unk_237C14A80);
  MEMORY[0x28223BE20](v51);
  v9 = &v50 - v8;
  sub_237BA74D8(&qword_27DE9D438, MEMORY[0x277CE1900]);
  v10 = sub_237C0887C();
  v11 = sub_237C0887C();
  if (v11 < v10)
  {
    v10 = v11;
  }

  v59 = MEMORY[0x277D84F90];
  sub_237AC8EB4(0, v10 & ~(v10 >> 63), 0);
  v57 = v59;
  v12 = a1;
  v13 = v7;
  sub_237BA7468(v12, v7);
  v14 = *(v56 + 32);
  v14(v4, v13, v2);
  sub_237C0885C();
  v14(v4, &v13[*(i + 60)], v2);
  v15 = v2;
  v16 = &v9[*(v51 + 52)];
  sub_237C0885C();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v52 = v9;
    v53 = v15;
    v54 = v16;
    if (!v10)
    {
LABEL_19:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
      v31 = *(v56 + 36);
      sub_237BA74D8(&qword_27DE9BD68, MEMORY[0x277CE1908]);
      for (i = v31; ; v31 = i)
      {
        sub_237C08B5C();
        if (*&v9[v31] == v58[0])
        {
          break;
        }

        v32 = sub_237C08B9C();
        v35 = *v33;
        v34 = v33[1];

        v32(v58, 0);
        sub_237C08B6C();
        v36 = *(v56 + 36);
        v37 = v54;
        sub_237C08B5C();
        if (*&v37[v36] == v58[0])
        {

          break;
        }

        v38 = sub_237C08B9C();
        v41 = *v39;
        v40 = v39[1];

        v38(v58, 0);
        sub_237C08B6C();
        if (v34)
        {
          v42 = v35;
        }

        else
        {
          v42 = 0;
        }

        if (v34)
        {
          v43 = v34;
        }

        else
        {
          v43 = 0xE000000000000000;
        }

        if (v40)
        {
          v44 = v41;
        }

        else
        {
          v44 = 0;
        }

        if (!v40)
        {
          v40 = 0xE000000000000000;
        }

        v45 = v57;
        v59 = v57;
        v47 = *(v57 + 16);
        v46 = *(v57 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_237AC8EB4(v46 > 1, v47 + 1, 1);
          v45 = v59;
        }

        *(v45 + 16) = v47 + 1;
        v57 = v45;
        v48 = (v45 + 32 * v47);
        v48[4] = v42;
        v48[5] = v43;
        v48[6] = v44;
        v48[7] = v40;
        v9 = v52;
      }

      v9[*(v51 + 56)] = 1;
      sub_2379F6DD8(v9, &qword_27DE9D4F0, &unk_237C14A80);
      return v57;
    }

    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
    sub_237BA74D8(&qword_27DE9BD68, MEMORY[0x277CE1908]);
    while (1)
    {
      sub_237C08B5C();
      if (*&v9[v17] == v58[0])
      {
        break;
      }

      v56 = v10;
      v18 = sub_237C08B9C();
      v21 = *v19;
      v20 = v19[1];

      v18(v58, 0);
      sub_237C08B6C();
      sub_237C08B5C();
      if (*&v16[v17] == v58[0])
      {
        goto LABEL_40;
      }

      v22 = sub_237C08B9C();
      v24 = v23[1];
      i = *v23;

      v22(v58, 0);
      sub_237C08B6C();
      if (v20)
      {
        v25 = v20;
      }

      else
      {
        v21 = 0;
        v25 = 0xE000000000000000;
      }

      if (v24)
      {
        v26 = i;
      }

      else
      {
        v26 = 0;
      }

      if (!v24)
      {
        v24 = 0xE000000000000000;
      }

      v27 = v57;
      v59 = v57;
      v29 = *(v57 + 16);
      v28 = *(v57 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_237AC8EB4(v28 > 1, v29 + 1, 1);
        v27 = v59;
      }

      *(v27 + 16) = v29 + 1;
      v57 = v27;
      v30 = (v27 + 32 * v29);
      v30[4] = v21;
      v30[5] = v25;
      v30[6] = v26;
      v30[7] = v24;
      v10 = v56 - 1;
      v9 = v52;
      v16 = v54;
      if (v56 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:

  __break(1u);
  return result;
}

uint64_t MLTextClassifier.evaluation(on:)(uint64_t a1)
{
  v1 = sub_237A8E3B4(a1);
  sub_237B45F18(v1);

  sub_237B45AB8();
}

{
  sub_237B45F18(a1);
  sub_237B45AB8();
}

uint64_t MLTextClassifier.evaluation(on:textColumn:labelColumn:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  MEMORY[0x28223BE20](v30);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v29 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
  v17 = swift_allocObject();
  v31 = xmmword_237C0B660;
  *(v17 + 16) = xmmword_237C0B660;
  *(v17 + 32) = MEMORY[0x277D837D0];
  sub_2379F30EC();

  v26[1] = a1;
  v26[2] = a2;
  v27 = v8;
  v28 = v9;
  v18 = swift_allocObject();
  *(v18 + 16) = v31;
  *(v18 + 32) = MEMORY[0x277D837D0];
  sub_2379F30EC();

  sub_237C05DEC();
  v19 = v13;
  sub_237C05DEC();
  v21 = v28;
  v20 = v29;
  v22 = *(v29 + 16);
  v23 = v27;
  v22(v27, v16, v28);
  v22((v23 + *(v30 + 52)), v19, v21);
  sub_237BA6878(v23);
  sub_2379F6DD8(v23, &qword_27DE9D478, &qword_237C13BC0);
  sub_237B45AB8();

  v24 = *(v20 + 8);
  v24(v19, v21);
  return (v24)(v16, v21);
}

uint64_t MLTextClassifier.evaluation(on:textColumn:labelColumn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 8);
  v20 = *a1;
  v21 = v18;
  sub_2379DBCF4(v20, v18);
  sub_237A70ED4(&v20, v17);
  MLTextClassifier.evaluation(on:textColumn:labelColumn:)(a2, a3, a4, a5, a6);
  return (*(v14 + 8))(v17, v12);
}

uint64_t sub_237BA7468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BA74D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9ACA0, &unk_237C0E0E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237BA7528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_7();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v30 = MEMORY[0x2383DD1C0](v13);
  v16 = sub_237BA9FA0();
  if (v3)
  {
    v18 = MEMORY[0x277D84F98];
    objc_autoreleasePoolPop(v30);
  }

  else
  {
    v19 = v16;
    v28 = v11;
    OUTLINED_FUNCTION_20_34(MEMORY[0x277D839F8], v17);
    v20 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v34 = v20;
    sub_237B40B6C(v31, 0x676E696E69617274, 0xED000073736F6C5FLL);
    v21 = v34;
    v27 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    v33 = v27;
    *&v32 = v19;
    sub_2379DAD24(&v32, v31);

    swift_isUniquelyReferenced_nonNull_native();
    v34 = v21;
    sub_237B40B6C(v31, 0xD000000000000012, 0x8000000237C170A0);
    v18 = v34;
    sub_237BAA754(a3);
    sub_237BAB1DC(v29, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {

      sub_2379D9054(v8, &qword_27DE9C080, &qword_237C0F360);
    }

    else
    {
      v22 = v28;
      (*(v28 + 32))(v15, v8, v9);
      v23 = sub_237BA94EC(v15);
      OUTLINED_FUNCTION_20_34(MEMORY[0x277D839F8], v24);
      swift_isUniquelyReferenced_nonNull_native();
      v34 = v18;
      sub_237B40B6C(v31, 0x69746164696C6176, 0xEF73736F6C5F6E6FLL);
      v25 = v34;
      v33 = v27;
      *&v32 = v23;
      sub_2379DAD24(&v32, v31);
      swift_isUniquelyReferenced_nonNull_native();
      v34 = v25;
      sub_237B40B6C(v31, 0xD000000000000014, 0x8000000237C170F0);

      v18 = v34;
      (*(v22 + 8))(v15, v9);
    }

    objc_autoreleasePoolPop(v30);
  }

  return v18;
}

uint64_t sub_237BA78B4(uint64_t *a1, uint64_t a2)
{
  *(v3 + 120) = v2;
  v6 = sub_237C074BC();
  *(v3 + 128) = v6;
  OUTLINED_FUNCTION_1(v6);
  *(v3 + 136) = v7;
  *(v3 + 144) = OUTLINED_FUNCTION_19();
  v8 = sub_237C05DBC();
  *(v3 + 152) = v8;
  OUTLINED_FUNCTION_1(v8);
  *(v3 + 160) = v9;
  *(v3 + 168) = OUTLINED_FUNCTION_134_0();
  *(v3 + 176) = swift_task_alloc();
  v10 = sub_237C0683C();
  *(v3 + 184) = v10;
  OUTLINED_FUNCTION_1(v10);
  *(v3 + 192) = v11;
  *(v3 + 200) = OUTLINED_FUNCTION_134_0();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v12 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v12);
  *(v3 + 224) = OUTLINED_FUNCTION_134_0();
  *(v3 + 232) = swift_task_alloc();
  v13 = type metadata accessor for TrainingTablePrinter(0);
  *(v3 + 240) = v13;
  OUTLINED_FUNCTION_20(v13);
  *(v3 + 248) = OUTLINED_FUNCTION_19();
  v14 = sub_237C06A4C();
  *(v3 + 256) = v14;
  OUTLINED_FUNCTION_1(v14);
  *(v3 + 264) = v15;
  *(v3 + 272) = OUTLINED_FUNCTION_134_0();
  *(v3 + 280) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  *(v3 + 288) = v16;
  OUTLINED_FUNCTION_1(v16);
  *(v3 + 296) = v17;
  *(v3 + 304) = OUTLINED_FUNCTION_19();
  v18 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v3 + 312) = v18;
  OUTLINED_FUNCTION_1(v18);
  *(v3 + 320) = v19;
  *(v3 + 328) = *(v20 + 64);
  *(v3 + 336) = OUTLINED_FUNCTION_19();
  v21 = sub_237C0617C();
  *(v3 + 344) = v21;
  OUTLINED_FUNCTION_1(v21);
  *(v3 + 352) = v22;
  *(v3 + 360) = *(v23 + 64);
  *(v3 + 368) = OUTLINED_FUNCTION_134_0();
  *(v3 + 376) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v24);
  *(v3 + 384) = OUTLINED_FUNCTION_19();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  *(v3 + 392) = v25;
  OUTLINED_FUNCTION_1(v25);
  *(v3 + 400) = v26;
  *(v3 + 408) = OUTLINED_FUNCTION_134_0();
  v27 = swift_task_alloc();
  v28 = *a1;
  *(v3 + 416) = v27;
  *(v3 + 424) = v28;
  *(v3 + 464) = *(a1 + 8);
  *(v3 + 432) = *a2;
  *(v3 + 465) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_237BA7C90);
}

uint64_t sub_237BA7C90()
{
  v166 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 424);
  v3 = *(v0 + 120);
  v4 = *v3;
  v5 = type metadata accessor for MLHandActionClassifier(0);
  v6 = *(v5 + 28);
  *&v163 = v2;
  BYTE8(v163) = v1;
  sub_2379EA98C(&v163, v4);
  v8 = v7;
  v156 = v5;
  v9 = v3 + v6;
  v153 = *(v0 + 465);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 352);
  v13 = *(v0 + 336);
  v14 = *(v0 + 344);
  v15 = v4;
  v133 = *(v0 + 328);
  v136 = *(v0 + 360);
  v131 = *(v0 + 320);
  v16 = *(v0 + 296);
  v139 = *(v0 + 304);
  v157 = v15;
  v158 = *(v15 + 16);
  v149 = v10;
  v128 = *(v12 + 104);
  v128(v10, *MEMORY[0x277D2CD40], v14);
  *(v0 + 80) = v8;
  v17 = *(v12 + 16);
  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  v127 = v17;
  v17(v11, v10, v14);
  OUTLINED_FUNCTION_5_69();
  v129 = v9;
  v18 = v13;
  sub_237BAB28C(v9, v13, v19);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v136 + *(v131 + 80) + v20) & ~*(v131 + 80);
  v22 = swift_allocObject();
  v132 = v20;
  v124 = *(v12 + 32);
  v124(v22 + v20, v11, v14);
  v137 = v21;
  sub_237BAB2F0(v18, v22 + v21);
  v134 = (v133 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v22 + v134) = v158;
  v122 = *MEMORY[0x277D2CEC0];
  v120 = *(v16 + 104);
  v120(v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  sub_237A7B85C(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380);
  sub_237A252E0();
  sub_237A7B85C(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8);
  v119 = v23;
  v118 = v23;
  sub_237C0686C();
  v24 = *(v12 + 8);
  v24(v149, v14);
  if (v153 == 255)
  {
    goto LABEL_5;
  }

  v25 = *(v0 + 465);
  *&v163 = *(v0 + 432);
  v26 = v25 & 1;
  BYTE8(v163) = v25 & 1;
  sub_2379DBCF4(v163, v25 & 1);
  if (!MLDataTable.size.getter())
  {
    sub_2379DBC84(*(v0 + 432), *(v0 + 465));
LABEL_5:
    v104 = 1;
    goto LABEL_6;
  }

  *&v163 = *(v0 + 432);
  BYTE8(v163) = v26;
  sub_2379EA98C(&v163, v157);
  v27 = *(v0 + 432);
  v97 = v96;
  v98 = *(v0 + 376);
  v99 = *(v0 + 368);
  v160 = *(v0 + 465);
  v101 = *(v0 + 336);
  v100 = *(v0 + 344);
  v141 = *(v0 + 304);
  v145 = *(v0 + 288);
  v128(v98, *MEMORY[0x277D2CD48], v100);
  *(v0 + 112) = v97;
  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  v127(v99, v98, v100);
  OUTLINED_FUNCTION_5_69();
  sub_237BAB28C(v129, v101, v102);
  v103 = swift_allocObject();
  v124(v103 + v132, v99, v100);
  sub_237BAB2F0(v101, v103 + v137);
  *(v103 + v134) = v158;
  (v120)(v141, v122, v145);
  v118 = v119;
  sub_237C0686C();
  sub_2379DBC84(v27, v160);
  v24(v98, v100);
  v104 = 0;
LABEL_6:
  v28 = *(v0 + 392);
  v29 = *(v0 + 384);
  (*(*(v0 + 400) + 32))(*(v0 + 416), *(v0 + 408), v28);
  __swift_storeEnumTagSinglePayload(v29, v104, 1, v28);
  sub_237BB0D90();
  v33 = *(v0 + 384);
  v32 = *(v0 + 392);
  sub_237BA9BC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D580, &unk_237C16990);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D588, &unk_237C13EA0) - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_237C0B660;
  v37 = (v36 + v35);
  *v37 = 0xD000000000000011;
  v37[1] = 0x8000000237C1D330;
  sub_237C06A1C();
  v38 = sub_237C085AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v32);
  if (EnumTagSinglePayload != 1)
  {
    v41 = *(v0 + 272);
    v40 = *(v0 + 280);
    v42 = *(v0 + 256);
    v43 = *(v0 + 264);
    sub_237C06A2C();
    (*(v43 + 32))(v41, v40, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v163 = v38;
    sub_237B40F18(v41, 0xD000000000000013, 0x8000000237C1D350, isUniquelyReferenced_nonNull_native);
    v38 = v163;
  }

  v45 = v157;
  v46 = *(v0 + 312);
  v48 = *(v0 + 240);
  v47 = *(v0 + 248);
  *(v47 + *(v48 + 24)) = v38;
  sub_2379F5634();
  *(v47 + *(v48 + 20)) = sub_237C08D0C();
  sub_237C05BEC();
  result = sub_237BAC5E0();
  v135 = *(v129 + *(v46 + 24));
  if (v135 < 0)
  {
LABEL_30:
    __break(1u);
  }

  else
  {
    v49 = 0;
    v142 = (*(v0 + 192) + 8);
    v138 = (*(v0 + 160) + 32);
    v126 = (*(v0 + 136) + 8);
    while (v135 != v49)
    {
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v50 = sub_237BA7528(*(v0 + 416), *(v0 + 384), v49);
      sub_237AC9A74(v50, (v0 + 16), 0xD000000000000012, 0x8000000237C170A0);
      if (!*(v0 + 40))
      {
        v108 = v49;

        sub_2379D9054(v0 + 16, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_28;
      }

      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v108 = v49;

LABEL_28:
        v109 = *(v0 + 416);
        v110 = *(v0 + 392);
        v111 = *(v0 + 400);
        v112 = *(v0 + 384);
        v113 = *(v0 + 248);
        *&v163 = 0;
        *(&v163 + 1) = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000003ALL, 0x8000000237C1E410);
        *(v0 + 88) = v108;
        v114 = sub_237C0924C();
        MEMORY[0x2383DC360](v114);

        v115 = v163;
        sub_2379E8AF0();
        swift_allocError();
        *v116 = v115;
        *(v116 + 16) = 0u;
        *(v116 + 32) = 0u;
        *(v116 + 48) = 0;
        swift_willThrow();
        OUTLINED_FUNCTION_0_84();
        sub_237BAB354(v113, v117);
        (*(v111 + 8))(v109, v110);
        sub_2379D9054(v112, &qword_27DE9C080, &qword_237C0F360);

        v30 = *(v0 + 8);

        return v30();
      }

      v51 = *(v0 + 216);
      sub_237A347A4();
      sub_237A34D48(v51, *(v45 + 16));
      v53 = v52;
      sub_237A33B40(v45, &v161);
      v154 = v50;
      sub_237A34FA0(*(v0 + 216), v45, 0, &v163);
      v159 = v49;
      v54 = *(v0 + 232);
      v56 = *(v0 + 176);
      v55 = *(v0 + 184);
      v143 = *(v0 + 216);
      v146 = v55;
      v57 = *(v0 + 168);
      v58 = *(v0 + 152);
      v147 = *(v0 + 120);
      v150 = *(v0 + 208);
      v59 = v163;
      v60 = BYTE8(v163);
      v61 = v161;
      v62 = v162;
      *&v163 = v161;
      BYTE8(v163) = v162;
      sub_2379DBCF4(v161, v162);
      sub_237A70ED4(&v163, v56);
      *&v163 = v59;
      BYTE8(v163) = v60;
      sub_237A70ED4(&v163, v57);
      sub_2379DBC9C(v61, v62);
      v63 = *v142;
      (*v142)(v143, v55);
      *v54 = 1.0 - v53;
      v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v65 = *v138;
      v66 = v56;
      v45 = v157;
      (*v138)(v54 + *(v64 + 20), v66, v58);
      v130 = v64;
      v144 = v65;
      v65(v54 + *(v64 + 24), v57, v58);
      type metadata accessor for MLClassifierMetrics.Contents(0);
      OUTLINED_FUNCTION_125();
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v54, v147 + *(v156 + 32));
      v67 = v150;
      sub_237A347A4();
      sub_237A34D48(v150, *(v157 + 16));
      v69 = v68;
      v151 = v63;
      v63(v67, v146);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAB0, &qword_237C15AB0);
      v70 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAB8, &qword_237C15AB8) - 8);
      v71 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_237C0B660;
      v73 = v72 + v71;
      v74 = v70[14];
      sub_237C06A1C();
      *(v73 + v74) = v69;
      sub_237BAB3AC(&qword_27DE9B8C8, MEMORY[0x277CC4F88]);
      v75 = sub_237C085AC();
      sub_237AC9A74(v154, (v0 + 48), 0xD000000000000014, 0x8000000237C170F0);

      if (*(v0 + 72))
      {
        v76 = v159;
        if (swift_dynamicCast())
        {
          v77 = *(v0 + 200);
          sub_237A347A4();
          sub_237A34D48(v77, *(v157 + 16));
          v79 = v78;
          sub_237A33B40(v157, &v161);
          sub_237A34FA0(*(v0 + 200), v157, 0, &v163);
          v80 = *(v0 + 200);
          v148 = *(v0 + 280);
          v81 = *(v0 + 224);
          v152 = *(v0 + 208);
          v155 = *(v0 + 256);
          v121 = *(v0 + 184);
          v125 = v75;
          v82 = *(v0 + 168);
          v83 = *(v0 + 176);
          v123 = *(v0 + 152);
          v140 = *(v0 + 120);
          v84 = v163;
          v85 = BYTE8(v163);
          v86 = v161;
          v87 = v162;
          *&v163 = v161;
          BYTE8(v163) = v162;
          sub_2379DBCF4(v161, v162);
          sub_237A70ED4(&v163, v83);
          *&v163 = v84;
          BYTE8(v163) = v85;
          sub_237A70ED4(&v163, v82);
          sub_2379DBC9C(v86, v87);
          v151(v80, v121);
          *v81 = 1.0 - v79;
          v88 = v83;
          v45 = v157;
          v144(v81 + *(v130 + 20), v88, v123);
          v144(v81 + *(v130 + 24), v82, v123);
          swift_storeEnumTagMultiPayload();
          v89 = v81;
          v76 = v159;
          sub_2379DC1F8(v89, v140 + *(v156 + 36));
          sub_237C06A2C();
          sub_237A347A4();
          sub_237A34D48(v152, *(v157 + 16));
          v91 = v90;
          v151(v152, v121);
          swift_isUniquelyReferenced_nonNull_native();
          *&v163 = v125;
          sub_237B40DA8(v148, v91);

          v92 = OUTLINED_FUNCTION_50_5();
          v93(v92, v155);
          v75 = v163;
        }
      }

      else
      {
        sub_2379D9054(v0 + 48, &qword_27DE9A998, &unk_237C0C100);
        v76 = v159;
      }

      v94 = *(v0 + 144);
      v95 = *(v0 + 128);
      sub_237A8212C(v75);

      sub_237C0748C();
      sub_237BAC96C(v94);

      result = (*v126)(v94, v95);
      v49 = v76 + 1;
    }

    sub_237C08C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_237C0B660;
    v106 = MEMORY[0x277D83C10];
    *(v105 + 56) = MEMORY[0x277D83B88];
    *(v105 + 64) = v106;
    *(v105 + 32) = 3;
    sub_237C0826C("event: %lu", v118);

    v107 = swift_task_alloc();
    *(v0 + 440) = v107;
    *v107 = v0;
    v107[1] = sub_237BA9084;

    return sub_237BAF670();
  }

  return result;
}

uint64_t sub_237BA9084(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v5 = sub_237BA9358;
  }

  else
  {
    *(v4 + 456) = a1;
    v5 = sub_237BA91AC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237BA91AC(uint64_t a1)
{
  v2 = v1[57];
  v3 = v1[52];
  v5 = v1[49];
  v4 = v1[50];
  v6 = v1[48];
  v7 = v1[31];
  v8 = v1[15];
  OUTLINED_FUNCTION_0_84();
  sub_237BAB354(v7, v9);
  (*(v4 + 8))(v3, v5);
  sub_2379D9054(v6, &qword_27DE9C080, &qword_237C0F360);

  *(v8 + 16) = v2;

  v10 = v1[1];

  return v10();
}

uint64_t sub_237BA9358()
{
  v1 = *(v0 + 384);
  OUTLINED_FUNCTION_0_84();
  sub_237BAB354(v2, v3);
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  sub_2379D9054(v1, &qword_27DE9C080, &qword_237C0F360);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_237BA94EC(uint64_t a1)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D318, &qword_237C13808);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v60 - v4;
  v78 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v69 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v65 = v8 - v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  v64 = &v60 - v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  v61 = &v60 - v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  v63 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  OUTLINED_FUNCTION_0();
  v68 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_23();
  v62 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B428, &qword_237C0CCE0);
  OUTLINED_FUNCTION_20(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA90, &qword_237C15A98);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  v27 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  (*(v29 + 104))(v32 - v31, *MEMORY[0x277D2CD48], v27);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  v79 = _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_2_78();
  sub_237BAB3AC(v34, v35);
  sub_237C0644C();
  swift_endAccess();
  (*(v29 + 8))(v33, v27);
  type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  swift_allocObject();
  v36 = OUTLINED_FUNCTION_125();
  v37 = v80;
  result = sub_237A3367C(v36);
  if (!v37)
  {
    v76 = result;
    v60 = 0;
    v77 = v23;
    v72 = v5;
    v73 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
    sub_237C0685C();
    v39 = &v26[*(v71 + 44)];
    v40 = *v39;
    v66 = *(v39 + 1);
    v67 = v40;
    v75 = OUTLINED_FUNCTION_8_49(&qword_27DE9DAA0, &qword_27DE9DA98, &qword_237C15AA0);
    v80 = 0;
    v71 = v68 + 32;
    v70 = *MEMORY[0x277D2CD58];
    v68 += 8;
    ++v69;
    v41 = 0.0;
    v42 = v64;
    v43 = v65;
    v44 = v61;
    v45 = v63;
    v74 = v26;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA98, &qword_237C15AA0);
      sub_237C08D7C();
      if (v82[0])
      {
        v81 = v82[0];
        v46 = v77;
        v67(&v81);

        v47 = v46;
        v48 = 0;
      }

      else
      {
        v46 = v77;
        v47 = v77;
        v48 = 1;
      }

      __swift_storeEnumTagSinglePayload(v47, v48, 1, v16);
      if (__swift_getEnumTagSinglePayload(v46, 1, v16) == 1)
      {
        sub_2379D9054(v74, &qword_27DE9DA90, &qword_237C15A98);
        return v76;
      }

      v49 = OUTLINED_FUNCTION_50_5();
      v51 = v50(v49, v46, v16);
      v79 = MEMORY[0x2383DD1C0](v51);
      sub_237C0608C();
      sub_237C0606C();
      sub_237AEEE60();
      v52 = sub_237C0618C();
      OUTLINED_FUNCTION_4();
      v54 = v72;
      (*(v53 + 104))(v72, v70, v52);
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v52);
      sub_237C061DC();
      v55 = v78;
      sub_2379D9054(v54, &qword_27DE9D318, &qword_237C13808);
      sub_237A32EE0();
      sub_237C067DC();
      v56 = *v69;
      (*v69)(v43, v55);
      v56(v42, v55);
      v56(v44, v55);
      result = (v56)(v45, v55);
      v57 = v80;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      v41 = v41 + *v82;
      objc_autoreleasePoolPop(v79);
      v58 = OUTLINED_FUNCTION_50_5();
      v59(v58, v16);
      v80 = v57 + 1;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237BA9BC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = sub_237C0616C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  sub_237C0615C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_237C0614C();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_2379D9054(v5, &qword_27DE9ACC8, &qword_237C10CF0);
    }
  }

  else
  {
    (*(v8 + 32))(v15, v5, v6);
  }

  if (qword_27DE9A608 != -1)
  {
    swift_once();
  }

  v16 = sub_237C0829C();
  __swift_project_value_buffer(v16, qword_27DEACD98);
  (*(v8 + 16))(v12, v15, v6);
  v17 = sub_237C0827C();
  v18 = sub_237C08C1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v1;
    v20 = v19;
    v32 = swift_slowAlloc();
    v33 = v15;
    v35[0] = v32;
    *v20 = 136315138;
    sub_237BAB3AC(&qword_27DE9DAA8, MEMORY[0x277D2CD30]);
    v21 = sub_237C0924C();
    v22 = v6;
    v24 = v23;
    v25 = *(v8 + 8);
    v25(v12, v22);
    v26 = sub_237BAAC6C(v21, v24, v35);
    v6 = v22;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_2379D3000, v17, v18, "Using %s to create model", v20, 0xCu);
    v27 = v32;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v15 = v33;
    MEMORY[0x2383DD950](v27, -1, -1);
    MEMORY[0x2383DD950](v20, -1, -1);

    v28 = v25;
  }

  else
  {

    v28 = *(v8 + 8);
    v28(v12, v6);
  }

  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_2_78();
  sub_237BAB3AC(v29, v30);
  sub_237C0642C();
  swift_endAccess();
  return (v28)(v15, v6);
}

uint64_t sub_237BA9FA0()
{
  v1 = v0;
  v2 = _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v74 = v5 - v4;
  v6 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v65 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v73 = v9 - v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v14);
  v79 = &v60 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  OUTLINED_FUNCTION_0();
  v64 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  v61 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B428, &qword_237C0CCE0);
  OUTLINED_FUNCTION_20(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23();
  v76 = v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA90, &qword_237C15A98);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_23();
  v78 = v23;
  v24 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  (*(v26 + 104))(v29 - v28, *MEMORY[0x277D2CD40], v24);
  v31 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_2_78();
  v71 = sub_237BAB3AC(v32, v33);
  v72 = v31;
  v75 = v2;
  sub_237C0644C();
  swift_endAccess();
  (*(v26 + 8))(v30, v24);
  if (sub_237BAA7EC())
  {
    sub_2379E8AF0();
    swift_allocError();
    *v34 = 0xD000000000000036;
    *(v34 + 8) = 0x8000000237C1E3A0;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 1;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    swift_allocObject();
    v36 = OUTLINED_FUNCTION_125();
    v37 = v80;
    result = sub_237A3367C(v36);
    if (!v37)
    {
      v70 = result;
      v60 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
      v38 = v78;
      sub_237C0685C();
      v39 = (v38 + *(v69 + 44));
      v41 = *v39;
      v40 = v39[1];
      v63 = v41;
      v62 = v40;
      v67 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
      v69 = OUTLINED_FUNCTION_8_49(&qword_27DE9DAA0, &qword_27DE9DA98, &qword_237C15AA0);
      v80 = 0;
      v66 = (v64 + 4);
      ++v65;
      ++v64;
      v42 = 0.0;
      v43 = v79;
      v44 = v77;
      v45 = v61;
      v68 = v1;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA98, &qword_237C15AA0);
        sub_237C08D7C();
        v46 = v76;
        if (v82[0])
        {
          v81[0] = v82[0];
          v63(v81);

          v47 = v46;
          v48 = 0;
        }

        else
        {
          v47 = v76;
          v48 = 1;
        }

        __swift_storeEnumTagSinglePayload(v47, v48, 1, v44);
        if (__swift_getEnumTagSinglePayload(v46, 1, v44) == 1)
        {
          sub_2379D9054(v78, &qword_27DE9DA90, &qword_237C15A98);
          return v70;
        }

        v49 = (*v66)(v45, v46, v44);
        v79 = MEMORY[0x2383DD1C0](v49);
        sub_237C0608C();
        sub_237C0606C();
        v50 = v1 + v72;
        v51 = v6;
        v52 = v74;
        v53 = sub_237BAB28C(v50, v74, _s13GraphCNNModelVMa);
        MEMORY[0x28223BE20](v53);
        *(&v60 - 4) = v43;
        *(&v60 - 3) = v13;
        *(&v60 - 2) = v70;
        v54 = v13;
        v55 = v73;
        sub_237C061AC();
        v56 = v52;
        v6 = v51;
        v1 = v68;
        sub_237BAB354(v56, _s13GraphCNNModelVMa);
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
        sub_237C0629C();
        swift_endAccess();
        swift_endAccess();

        sub_237C067DC();
        v57 = *v65;
        result = (*v65)(v55, v6);
        v58 = v80;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        v42 = v42 + *v82;
        v57(v54, v6);
        v57(v43, v6);
        objc_autoreleasePoolPop(v79);
        v59 = v77;
        (*v64)(v45, v77);
        v80 = v58 + 1;
        v13 = v54;
        v44 = v59;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237BAA754(uint64_t a1)
{
  v2 = 0;
  v3 = 0.01;
  v4 = 0.01;
  do
  {
    if (*(&unk_284ABFBA8 + v2 + 32) <= a1)
    {
      v3 = v4 * 0.1;
      v4 = v4 * 0.1;
    }

    v2 += 8;
  }

  while (v2 != 24);
  v5 = (v1 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer);
  result = swift_beginAccess();
  *v5 = v3;
  return result;
}

BOOL sub_237BAA7EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B428, &qword_237C0CCE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA90, &qword_237C15A98);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  sub_237C0685C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA98, &qword_237C15AA0);
  sub_237A7B85C(&qword_27DE9DAA0, &qword_27DE9DA98, &qword_237C15AA0);
  sub_237C08D7C();
  if (v14)
  {
    v6 = *&v5[*(v3 + 44)];
    v13 = v14;
    v6(&v13);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
    v8 = v2;
    v9 = 0;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
    v8 = v2;
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
  sub_2379D9054(v5, &qword_27DE9DA90, &qword_237C15A98);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v10);
  if (EnumTagSinglePayload != 1)
  {
    sub_2379D9054(v2, &qword_27DE9B428, &qword_237C0CCE0);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t sub_237BAAA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D318, &qword_237C13808);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v9 = sub_237C0683C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s13GraphCNNModelVMa(0);
  sub_237BAB3AC(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
  sub_237C063CC();
  v13 = *MEMORY[0x277D2CD58];
  v14 = sub_237C0618C();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_237C061DC();
  sub_2379D9054(v8, &qword_27DE9D318, &qword_237C13808);
  v17 = a4;
  v18 = v12;
  v19 = a3;
  sub_237C0619C();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_237BAAC6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_237BAAD30(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2379FED88(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_237BAAD30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_237BAAE30(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_237C08F7C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_237BAAE30(uint64_t a1, unint64_t a2)
{
  v3 = sub_237BAAE7C(a1, a2);
  sub_237BAAF94(&unk_284ABEC20);
  return v3;
}

uint64_t sub_237BAAE7C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_237C087FC())
  {
    result = sub_237BAB078(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_237C08EBC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_237C08F7C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_237BAAF94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_237BAB0E8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_237BAB078(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B280, &qword_237C0CB38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_237BAB0E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B280, &qword_237C0CB38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_237BAB1DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BAB28C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237BAB2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BAB354(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237BAB3AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = v0 + v9;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        v14 = *(v13 + 8);
        v14(v0 + v9, v12);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v14(v10 + v15[12], v12);
        OUTLINED_FUNCTION_105(v15[16]);

        OUTLINED_FUNCTION_105(v15[20]);

        OUTLINED_FUNCTION_105(v15[24]);

        v16 = v15[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        (*(v11 + 8))(v0 + v9);
        break;
      case 3u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 5u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v17 + 8))(v0 + v9);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v18[12]);

        OUTLINED_FUNCTION_105(v18[16]);

        v16 = v18[20];
        goto LABEL_9;
      case 6u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v19 + 8))(v0 + v9);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v20[12]);

        OUTLINED_FUNCTION_105(v20[16]);

        OUTLINED_FUNCTION_105(v20[20]);

        v16 = v20[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v16);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t OUTLINED_FUNCTION_8_49(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_237A7B85C(a1, a2, a3);
}

_OWORD *OUTLINED_FUNCTION_20_34@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = a2;

  return sub_2379DAD24((v2 - 112), (v2 - 144));
}

uint64_t sub_237BAB824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237C05BFC();
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_79(*(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_237BAB8D0()
{
  OUTLINED_FUNCTION_4_71();
  OUTLINED_FUNCTION_135();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

void sub_237BAB980(uint64_t a1)
{
  sub_237C05BFC();
  if (v1 <= 0x3F)
  {
    sub_2379F5634();
    if (v2 <= 0x3F)
    {
      sub_237BABA1C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237BABA1C(uint64_t a1)
{
  if (!qword_27DE9DAD0)
  {
    sub_237C06A4C();
    v1 = sub_237C085DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9DAD0);
    }
  }
}

uint64_t sub_237BABA84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

void sub_237BABAC0(uint64_t a1@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE0, &unk_237C15AE0);
  MEMORY[0x28223BE20](v31);
  v30 = (&v29 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE8, &unk_237C15AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_237C06A4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v32 = a1;
  if (v16)
  {
    v17 = v15;
LABEL_7:
    v18 = (v16 - 1) & v16;
    (*(v8 + 16))(v6, *(v12 + 56) + *(v8 + 72) * (__clz(__rbit64(v16)) | (v17 << 6)), v7, v9);
    v19 = 0;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v6, v19, 1, v7);
    *v1 = v12;
    v1[1] = v13;
    v1[2] = v14;
    v1[3] = v15;
    v1[4] = v18;
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_237BACE68(v6);
      v21 = v31;
      v20 = v32;
      v22 = 1;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v20, v22, 1, v21);
      return;
    }

    v23 = *(v8 + 32);
    v23(v11, v6, v7);
    v25 = v30;
    v24 = v31;
    v26 = *(v31 + 48);
    v27 = v1[5];
    *v30 = v27;
    v23((v25 + v26), v11, v7);
    v28 = v32;
    if (!__OFADD__(v27, 1))
    {
      v1[5] = v27 + 1;
      sub_237BACED0(v25, v28, &qword_27DE9DAE0, &unk_237C15AE0);
      v20 = v28;
      v22 = 0;
      v21 = v24;
      goto LABEL_12;
    }
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v14 + 64) >> 6))
      {
        v18 = 0;
        v19 = 1;
        goto LABEL_8;
      }

      v16 = *(v13 + 8 * v17);
      ++v15;
      if (v16)
      {
        v15 = v17;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237BABD8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_237A2E9F4();
  v4 = *(v1 + 8);
  if (v4 == result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = -1;
    return result;
  }

  v5 = sub_237A2E9C8(*(v1 + 8));
  sub_237AFC548(v5, v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v11;
  result = sub_237A2E9F4();
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v1 + 8) = v4 + 1;
  v9 = *(v1 + 16);
  if (__OFADD__(v9, 1))
  {
LABEL_9:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  *(v1 + 16) = v9 + 1;
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_237BABE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_237C0B660;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  sub_237C0939C();

  sub_2379F5634();
  v8 = sub_237C08CFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237C0B660;
  *(v9 + 56) = v7;
  *(v9 + 64) = sub_237A8E8E4();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  sub_237C0826C("%@\n", 3, 2, &dword_2379D3000, v8, a3, v9);
}

uint64_t sub_237BABFB8()
{
  v1 = type metadata accessor for _TablePrinter(0);
  sub_237C08C1C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_237C0B660;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = 0;
  sub_237C0826C("event: %lu", v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  OUTLINED_FUNCTION_7_53();
  *(v6 + 32) = v7;
  *(v6 + 40) = 0xEC000000656D6954;
  v8 = (v6 + 40);
  v9 = (v0 + *(v1 + 28));
  v10 = *v9;
  v11 = v9[1];
  v22 = *v9;

  MEMORY[0x2383DC360](0x737365636F725020, 0xEA00000000006465);
  *(inited + 48) = v22;
  *(inited + 56) = v11;
  sub_237C08EDC();

  MEMORY[0x2383DC360](v10, v11);
  v12 = 0;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000237C1E4D0;
  v13 = MEMORY[0x277D84D90];
  v14 = MEMORY[0x277D837D0];
  while (v12 != 3)
  {
    v16 = *(v8 - 1);
    v15 = *v8;

    sub_237C08C1C();
    v17 = OUTLINED_FUNCTION_1_83(v21);
    *(v17 + 16) = xmmword_237C0B680;
    *(v17 + 56) = MEMORY[0x277D83B88];
    *(v17 + 64) = MEMORY[0x277D83C10];
    *(v17 + 32) = 1;
    *(v17 + 96) = MEMORY[0x277D84D38];
    *(v17 + 104) = v13;
    *(v17 + 72) = v12;
    *(v17 + 136) = v14;
    *(v17 + 144) = sub_237A8E8E4();
    *(v17 + 112) = v16;
    *(v17 + 120) = v15;

    OUTLINED_FUNCTION_8_50("event: %lu, column: %lu, value: %{public}s");
    sub_237C0826C(v18);

    v8 += 2;
    ++v12;
  }

  swift_setDeallocating();
  return sub_237B9082C();
}

uint64_t sub_237BAC25C(uint64_t a1)
{
  type metadata accessor for _TablePrinter(0);
  sub_237C08C1C();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v4 = OUTLINED_FUNCTION_1_83(v3);
  *(v4 + 16) = xmmword_237C0B680;
  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v6;
  *(v4 + 32) = 2;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = 0;
  sub_237C05BCC();
  v7 = MEMORY[0x277D83A80];
  *(v4 + 136) = MEMORY[0x277D839F8];
  *(v4 + 144) = v7;
  *(v4 + 112) = -v8;
  OUTLINED_FUNCTION_0_85("event: %lu, column: %lu, value: %f");
  sub_237C0826C(v9, 3, 6);

  sub_237C08C1C();
  v10 = OUTLINED_FUNCTION_1_83(v3);
  OUTLINED_FUNCTION_3_83(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v20[9] = 1;
  v20[17] = v5;
  v20[18] = v6;
  v20[14] = a1;
  OUTLINED_FUNCTION_0_85("event: %lu, column: %lu, value: %d");
  sub_237C0826C(v21);

  sub_237C08C1C();
  v22 = OUTLINED_FUNCTION_1_83(v3);
  OUTLINED_FUNCTION_3_83(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v32[9] = 2;
  v33 = *v1;
  v32[17] = v5;
  v32[18] = v6;
  v32[14] = v33;
  OUTLINED_FUNCTION_0_85("event: %lu, column: %lu, value: %d");
  sub_237C0826C(v34);
}

uint64_t sub_237BAC418()
{
  v0 = objc_opt_self();
  v1 = [v0 processInfo];
  [v1 operatingSystemVersion];
  v2 = v19;

  v19 = v2;
  v19 = OUTLINED_FUNCTION_5_70();
  v20 = v3;

  MEMORY[0x2383DC360](46, 0xE100000000000000);

  v5 = v19;
  v4 = v20;
  v6 = [v0 processInfo];
  [v6 operatingSystemVersion];
  v7 = v20;

  v19 = v7;
  v8 = OUTLINED_FUNCTION_5_70();
  v10 = v9;
  v19 = v5;
  v20 = v4;

  MEMORY[0x2383DC360](v8, v10);

  MEMORY[0x2383DC360](46, 0xE100000000000000);

  v12 = v19;
  v11 = v20;
  v13 = [v0 processInfo];
  [v13 operatingSystemVersion];
  v14 = v21;

  v19 = v14;
  v15 = OUTLINED_FUNCTION_5_70();
  v17 = v16;
  v19 = v12;
  v20 = v11;

  MEMORY[0x2383DC360](v15, v17);

  return v19;
}

uint64_t sub_237BAC5E0()
{
  v27 = type metadata accessor for TrainingTablePrinter(0);
  sub_237C08C1C();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D83B88];
  *(v1 + 16) = xmmword_237C0B660;
  v3 = MEMORY[0x277D83C10];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 32) = 0;
  sub_237C0826C("event: %lu", v25);

  sub_237C08C1C();
  v4 = OUTLINED_FUNCTION_1_83(v0);
  *(v4 + 16) = xmmword_237C0B680;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 1;
  *(v4 + 96) = v2;
  *(v4 + 104) = v3;
  *(v4 + 72) = 0;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 136) = MEMORY[0x277D837D0];
  v6 = sub_237A8E8E4();
  *(v4 + 144) = v6;
  *(v4 + 112) = 0x6F69746172657449;
  *(v4 + 120) = 0xE90000000000006ELL;
  OUTLINED_FUNCTION_8_50("event: %lu, column: %lu, value: %{public}s");
  sub_237C0826C(v7);

  sub_237C08C1C();
  v8 = OUTLINED_FUNCTION_1_83(v0);
  *(v8 + 16) = xmmword_237C0B680;
  *(v8 + 56) = v2;
  *(v8 + 64) = v3;
  *(v8 + 32) = 1;
  *(v8 + 96) = v2;
  *(v8 + 104) = v3;
  *(v8 + 72) = 1;
  *(v8 + 136) = v5;
  *(v8 + 144) = v6;
  v26 = v6;
  OUTLINED_FUNCTION_7_53();
  *(v9 + 112) = v10;
  *(v9 + 120) = 0xEC000000656D6954;
  OUTLINED_FUNCTION_8_50("event: %lu, column: %lu, value: %{public}s");
  sub_237C0826C(v11);

  sub_237BABA84(*(v28 + *(v27 + 24)), v30);
  v12 = v30[1];
  v29 = v30[0];
  v13 = v30[3];
  v14 = v30[4];
  v15 = v30[5];
  v16 = (v30[2] + 64) >> 6;
  result = swift_bridgeObjectRetain_n();
  v18 = v15;
  if (v14)
  {
    while (1)
    {
      v19 = v13;
LABEL_7:
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = (*(v29 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
      v23 = *v21;
      v22 = v21[1];

      sub_237C08C1C();
      result = OUTLINED_FUNCTION_1_83(v0);
      *(result + 16) = xmmword_237C0B680;
      *(result + 56) = MEMORY[0x277D83B88];
      *(result + 64) = MEMORY[0x277D83C10];
      *(result + 32) = 1;
      if (v15 < 0)
      {
        goto LABEL_16;
      }

      v14 &= v14 - 1;
      *(result + 96) = MEMORY[0x277D84D38];
      *(result + 104) = MEMORY[0x277D84D90];
      *(result + 72) = v18 + 2;
      *(result + 136) = MEMORY[0x277D837D0];
      *(result + 144) = v26;
      *(result + 112) = v23;
      *(result + 120) = v22;
      OUTLINED_FUNCTION_8_50("event: %lu, column: %lu, value: %{public}s");
      sub_237C0826C(v24);

      ++v18;
      v13 = v19;
      if (!v14)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_3:
    v20 = v13;
    while (1)
    {
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v12 + 8 * v19);
      ++v20;
      if (v14)
      {
        goto LABEL_7;
      }
    }

    sub_2379E925C(v29);
  }

  return result;
}

uint64_t sub_237BAC96C(uint64_t a1)
{
  v39 = a1;
  v2 = sub_237C06A4C();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAD8, &qword_237C15AD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v35 = type metadata accessor for TrainingTablePrinter(0);
  v33 = *(v1 + *(v35 + 20));
  LODWORD(v37) = sub_237C08C1C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v12 = OUTLINED_FUNCTION_1_83(v11);
  v38 = xmmword_237C0B680;
  *(v12 + 16) = xmmword_237C0B680;
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  OUTLINED_FUNCTION_9_52(v12)[9] = 0;
  v15 = sub_237C074AC();
  *(v12 + 136) = v13;
  *(v12 + 144) = v14;
  *(v12 + 112) = v15;
  sub_237C0826C("event: %lu, column: %lu, value: %d", v32, v33, LODWORD(v34));

  sub_237C08C1C();
  v37 = v11;
  v16 = OUTLINED_FUNCTION_1_83(v11);
  *(v16 + 16) = v38;
  OUTLINED_FUNCTION_9_52(v16)[9] = 1;
  v17 = v34;
  sub_237C05BCC();
  v18 = MEMORY[0x277D83A80];
  *(v16 + 136) = MEMORY[0x277D839F8];
  *(v16 + 144) = v18;
  *(v16 + 112) = -v19;
  sub_237C0826C("event: %lu, column: %lu, value: %f", v32, v33, v34);

  sub_237BABA84(*(*&v17 + *(v35 + 24)), &v42);
  v20 = (v36 + 32);
  v21 = (v36 + 8);

  while (1)
  {
    sub_237BABAC0(v7);
    sub_237BACED0(v7, v10, &qword_27DE9DAD8, &qword_237C15AD8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE0, &unk_237C15AE0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
    {
      return sub_2379E925C(v42);
    }

    v23 = *v10;
    (*v20)(v4, &v10[*(v22 + 48)], v2);
    v24 = sub_237C0749C();
    if (!*(v24 + 16))
    {
      break;
    }

    v25 = sub_237ACB254();
    if ((v26 & 1) == 0)
    {
      break;
    }

    sub_2379FED88(*(v24 + 56) + 32 * v25, v41);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v27 = v40;
    sub_237C08C1C();
    v28 = OUTLINED_FUNCTION_1_83(v37);
    *(v28 + 16) = v38;
    v29 = MEMORY[0x277D83B88];
    *(v28 + 56) = MEMORY[0x277D83B88];
    v30 = MEMORY[0x277D83C10];
    *(v28 + 64) = MEMORY[0x277D83C10];
    *(v28 + 32) = 2;
    if (__OFADD__(v23, 2))
    {
      __break(1u);
      break;
    }

    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v23 + 2;
    *(v28 + 136) = MEMORY[0x277D839F8];
    *(v28 + 144) = MEMORY[0x277D83A80];
    *(v28 + 112) = v27;
    sub_237C0826C("event: %lu, column: %lu, value: %f", v32, v33, v34);

    (*v21)(v4, v2);
  }

LABEL_11:
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1E550);
  sub_237C0907C();
  MEMORY[0x2383DC360](46, 0xE100000000000000);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237BACE68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE8, &unk_237C15AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237BACED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_237BACF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237C05BFC();
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_79(*(a3 + 24));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_237BACFFC()
{
  OUTLINED_FUNCTION_4_71();
  OUTLINED_FUNCTION_135();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 20);

    __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

unint64_t sub_237BAD090(uint64_t a1)
{
  result = sub_237C05BFC();
  if (v2 <= 0x3F)
  {
    result = sub_2379F5634();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_83(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_79@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 OUTLINED_FUNCTION_3_83(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[3].n128_u64[1] = v10;
  a1[4].n128_u64[0] = v11;
  a1[2].n128_u64[0] = v12;
  a1[6].n128_u64[0] = v10;
  a1[6].n128_u64[1] = v11;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_71()
{

  return sub_237C05BFC();
}

uint64_t OUTLINED_FUNCTION_5_70()
{

  return sub_237C0924C();
}

void *OUTLINED_FUNCTION_9_52(void *result)
{
  result[7] = v2;
  result[8] = v1;
  result[4] = 2;
  result[12] = v2;
  result[13] = v1;
  return result;
}

uint64_t type metadata accessor for MLTextClassifier.ModelParameters(uint64_t a1)
{
  result = qword_27DE9DB08;
  if (!qword_27DE9DB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.init(validation:algorithm:language:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v14 = v13[5];
  v15 = (a4 + v13[6]);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = (a4 + v13[7]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a4 + v13[8]);
  *v17 = 0;
  v17[1] = 0;
  v18 = a4 + v13[9];
  *v18 = 0;
  *(v18 + 8) = 1;
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(a2, a4);
  *(a4 + v14) = a3;
  sub_237BAF46C(a1, v12);
  *v16 = 0;
  v16[1] = 0;
  v21[3] = v8;
  __swift_allocate_boxed_opaque_existential_0(v21);
  OUTLINED_FUNCTION_1_84();
  sub_237BAF414(v12, v19);
  OUTLINED_FUNCTION_3_84();
  sub_237BAF4C4();
  OUTLINED_FUNCTION_0_86();
  sub_237BAF4C4();
  return sub_2379DAE54(v21, v15);
}

uint64_t MLTextClassifier.ModelParameters.validation.getter()
{
  v1 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v2 = OUTLINED_FUNCTION_14_36(v1);
  result = sub_2379F6D68(v2, &v4);
  if (v5)
  {
    sub_2379DAD24(&v4, &v6);
    type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:textColumnValidationData:labelColumnValidationData:)@<X0>(uint64_t *a1@<X0>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 8);
  v15 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4_72(v15, v15[6]);
  if (v14 != 255)
  {
    if (a5)
    {
      if (a7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_237C0B660;
      *(v21 + 56) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_11_47(v21, 0x8000000237C1E580);

      if (a7)
      {
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_237C0B660;
    *(v22 + 56) = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_11_47(v22, 0x8000000237C1E5E0);
  }

LABEL_4:
  v16 = v15[5];
  OUTLINED_FUNCTION_2_80();
  v17 = OUTLINED_FUNCTION_37_0();
  sub_237BAF46C(v17, v18);
  *(a8 + v16) = a3;
  v19 = a3;
  MLTextClassifier.ModelParameters.validationData.setter();
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(a4, a5);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(a6, a7);

  OUTLINED_FUNCTION_3_84();
  return sub_237BAF4C4();
}

unint64_t MLTextClassifier.ModelParameters.description.getter()
{
  v1 = MLTextClassifier.ModelAlgorithmType.description.getter();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](0x676175676E614C0ALL, 0xEB00000000203A65);

  v2 = *(v0 + *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB00, &qword_237C15B10);
  v5 = sub_237C0874C();
  v6 = v3;
  MEMORY[0x2383DC360](10, 0xE100000000000000);

  MEMORY[0x2383DC360](v5, v6);

  return 0xD000000000000010;
}

void *MLTextClassifier.ModelParameters.language.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 20));
  v2 = v1;
  return v1;
}

void MLTextClassifier.ModelParameters.language.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLTextClassifier.ModelParameters(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLTextClassifier.ModelParameters.language.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLTextClassifier.ModelParameters(v0);
  return nullsub_1;
}

uint64_t sub_237BAD828(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_237BAF46C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MLTextClassifier.ModelParameters.validation.setter();
}

uint64_t MLTextClassifier.ModelParameters.validation.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for MLTextClassifier.ModelParameters(v2);
  v4 = (v1 + *(v3 + 28));

  *v4 = 0;
  v4[1] = 0;
  v7[3] = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_boxed_opaque_existential_0(v7);
  OUTLINED_FUNCTION_1_84();
  sub_237BAF414(v0, v5);
  return sub_2379DAE54(v7, v1 + *(v3 + 24));
}

void (*MLTextClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xB0uLL);
  *a1 = v3;
  v3[16] = v1;
  v3[17] = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v3[18] = __swift_coroFrameAllocStub(v5);
  v3[19] = __swift_coroFrameAllocStub(v5);
  v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v3[20] = v6;
  v7 = *(v6 + 24);
  *(v3 + 42) = v7;
  result = sub_2379F6D68(v1 + v7, (v3 + 4));
  if (v3[7])
  {
    sub_2379DAD24(v3 + 2, v3);
    swift_dynamicCast();
    return sub_237BADA44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237BADA44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 42);
  v4 = (*a1)[19];
  v5 = (*a1)[20];
  v7 = (*a1)[17];
  v6 = (*a1)[18];
  v8 = (*a1)[16];
  if (a2)
  {
    sub_237BAF46C((*a1)[19], v6);
    v9 = (v8 + *(v5 + 28));

    *v9 = 0;
    v9[1] = 0;
    v2[11] = v7;
    __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    OUTLINED_FUNCTION_1_84();
    sub_237BAF414(v6, v10);
    sub_2379DAE54((v2 + 8), v8 + v3);
    OUTLINED_FUNCTION_0_86();
    sub_237BAF4C4();
  }

  else
  {
    v11 = (v8 + *(v5 + 28));

    *v11 = 0;
    v11[1] = 0;
    v2[15] = v7;
    __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    OUTLINED_FUNCTION_1_84();
    sub_237BAF414(v4, v12);
    sub_2379DAE54((v2 + 12), v8 + v3);
  }

  free(v4);
  free(v6);

  free(v2);
}

uint64_t MLTextClassifier.ModelParameters.maxIterations.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.maxIterations.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_53_5(a1);
  v3 = *(type metadata accessor for MLTextClassifier.ModelParameters(0) + 36);
  *(v1 + 12) = v3;
  v4 = (v2 + v3);
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v1 = v5;
  *(v1 + 8) = v4;
  return OUTLINED_FUNCTION_12_49();
}

uint64_t sub_237BADC30(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_237BADC50()
{
  type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(v0, v1);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if ((*(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC58, &qword_237C12218) + 48) + 8) & 1) == 0 && (NLPClassifierModelIsRevisionSupported() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_35();

      OUTLINED_FUNCTION_7_54();
      v7 = sub_237C0924C();
      MEMORY[0x2383DC360](v7);

      OUTLINED_FUNCTION_19_32();
      sub_2379E8AF0();
      v8 = swift_allocError();
      *v9 = v10;
      v9[1] = v11;
      OUTLINED_FUNCTION_52(v8, v9);
    }

    return sub_237BAF4C4();
  }

  else if ((*(v1 + 8) & 1) == 0)
  {
    result = NLPClassifierModelIsRevisionSupported();
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_20_35();

      OUTLINED_FUNCTION_7_54();
      v4 = sub_237C0924C();
      MEMORY[0x2383DC360](v4);

      OUTLINED_FUNCTION_19_32();
      sub_2379E8AF0();
      v5 = swift_allocError();
      *v6 = v10;
      v6[1] = v11;
      return OUTLINED_FUNCTION_52(v5, v6);
    }
  }

  return result;
}

uint64_t sub_237BADE40()
{
  v2 = v0;
  v3 = sub_237C05ADC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(v2, v8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_237BAF414(v8, v15);
    sub_237BAF46C(v15, v12);
    if (__swift_getEnumTagSinglePayload(v12, 4, v3))
    {
      sub_237BAF4C4();
      return sub_237BAF4C4();
    }

    (*(v4 + 32))(v1, v12, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B680;
    *(inited + 32) = 0x6C65646F6D6C6DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 0x636C65646F6D6C6DLL;
    *(inited + 56) = 0xE800000000000000;
    *(inited + 64) = 7627108;
    *(inited + 72) = 0xE300000000000000;
    if (sub_237C0594C())
    {
      v17 = sub_237C0597C();
      v28 = &v26;
      v26 = v17;
      v27 = v18;
      MEMORY[0x28223BE20](v17);
      *(&v26 - 2) = &v26;
      v19 = sub_237AC1CCC(sub_237A06CFC, (&v26 - 4), inited);
      swift_setDeallocating();
      sub_237B9082C();

      if (v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_setDeallocating();
      sub_237B9082C();
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C1E660);
    sub_237A21670();
    v20 = sub_237C0924C();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1E680);
    v21 = v26;
    v22 = v27;
    sub_2379E8AF0();
    v23 = swift_allocError();
    *v24 = v21;
    v24[1] = v22;
    OUTLINED_FUNCTION_52(v23, v24);
LABEL_10:
    (*(v4 + 8))(v1, v3);
  }

  return sub_237BAF4C4();
}

id MLTextClassifier.ModelParameters.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v3 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v4 = OUTLINED_FUNCTION_14_36(v3);
  result = sub_2379F6D68(v4, &v6);
  if (v7)
  {
    sub_2379DAD24(&v6, &v8);
    swift_dynamicCast();
    sub_237B694C4(a1);
    OUTLINED_FUNCTION_0_86();
    return sub_237BAF4C4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BAE37C@<X0>(uint64_t a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.validationData.setter()
{
  v2 = OUTLINED_FUNCTION_87();
  type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v4 = *v0;
  v5 = *(v0 + 8);
  v10[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  if (v5 == 255)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v1 = v4;
    *(v1 + 8) = v5 & 1;
    *(v1 + 16) = 1954047348;
    *(v1 + 24) = 0xE400000000000000;
    *(v1 + 32) = 0x6C6562616CLL;
    *(v1 + 40) = 0xE500000000000000;
  }

  else
  {
    sub_2379DBC84(v4, v5);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_84();
  sub_237BAF414(v1, boxed_opaque_existential_0);
  v8 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  return sub_2379DAE54(v10, v0 + *(v8 + 24));
}

uint64_t MLTextClassifier.ModelParameters.validationData.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_53_5(a1);
  MLTextClassifier.ModelParameters.validationData.getter(v1);
  return OUTLINED_FUNCTION_12_49();
}

void sub_237BAE584(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_2379DBCDC(v2, v3);
    MLTextClassifier.ModelParameters.validationData.setter();

    sub_2379DBC84(v2, v3);
  }

  else
  {
    MLTextClassifier.ModelParameters.validationData.setter();
  }
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.getter()
{
  type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v6 = OUTLINED_FUNCTION_14_36(v5);
  result = sub_2379F6D68(v6, &v11);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    OUTLINED_FUNCTION_18_37();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *v4;
      v9 = *(v4 + 8);
      v10 = *(v4 + 16);

      sub_2379DBC9C(v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v10 = *(v0 + *(v5 + 28));
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.setter(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v14 = *(v13 + 24);
  result = sub_2379F6D68(v2 + v14, &v26);
  if (v27)
  {
    sub_2379DAD24(&v26, &v28);
    swift_dynamicCast();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v12;
      v17 = v12[8];
      v25 = *(v12 + 4);
      v18 = *(v12 + 5);

      v19 = (v2 + *(v13 + 28));

      v20 = 1954047348;
      if (a2)
      {
        v20 = a1;
      }

      *v19 = 0;
      v19[1] = 0;
      v21 = 0xE400000000000000;
      if (a2)
      {
        v21 = a2;
      }

      *v9 = v16;
      *(v9 + 8) = v17;
      *(v9 + 16) = v20;
      *(v9 + 24) = v21;
      *(v9 + 32) = v25;
      *(v9 + 40) = v18;
      swift_storeEnumTagMultiPayload();
      *v19 = 0;
      v19[1] = 0;
      v29 = v5;
      __swift_allocate_boxed_opaque_existential_0(&v28);
      OUTLINED_FUNCTION_1_84();
      sub_237BAF414(v9, v22);
      return sub_2379DAE54(&v28, v2 + v14);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v23 = (v2 + *(v13 + 28));

      *v23 = a1;
      v23[1] = a2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_53_5(a1);
  *v1 = MLTextClassifier.ModelParameters.textColumnValidationData.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_12_49();
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v9 = v8[5];
  OUTLINED_FUNCTION_4_72(v8, v8[6]);
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(a2, a4);
  *(a4 + v9) = a3;
  v10 = a3;
  v11 = sub_237A8E3B4(a1);
  sub_237B078E8(1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, &v13, v11);

  MLTextClassifier.ModelParameters.validationData.setter();
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(0x6C6562616CLL, 0xE500000000000000);

  OUTLINED_FUNCTION_3_84();
  sub_237BAF4C4();
  return sub_237BAF4C4();
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.setter(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v14 = v13[6];
  result = sub_2379F6D68(v2 + v14, &v28);
  if (v29)
  {
    sub_2379DAD24(&v28, &v30);
    swift_dynamicCast();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v12;
      v17 = v12[8];
      v27 = v14;
      v18 = *(v12 + 2);
      v26 = *(v12 + 3);

      v19 = (v2 + v13[8]);

      v20 = 0x6C6562616CLL;
      if (a2)
      {
        v20 = a1;
      }

      *v19 = 0;
      v19[1] = 0;
      v21 = 0xE500000000000000;
      if (a2)
      {
        v21 = a2;
      }

      *v9 = v16;
      *(v9 + 8) = v17;
      v22 = v26;
      *(v9 + 16) = v18;
      *(v9 + 24) = v22;
      *(v9 + 32) = v20;
      *(v9 + 40) = v21;
      swift_storeEnumTagMultiPayload();
      v23 = (v2 + v13[7]);
      sub_2379DBCF4(v16, v17);

      *v23 = 0;
      v23[1] = 0;
      v31 = v5;
      __swift_allocate_boxed_opaque_existential_0(&v30);
      OUTLINED_FUNCTION_1_84();
      sub_237BAF414(v9, v24);
      sub_2379DBC9C(v16, v17);
      return sub_2379DAE54(&v30, v2 + v27);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v25 = (v2 + v13[8]);

      *v25 = a1;
      v25[1] = a2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BAEC90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:)@<X0>(void *a2@<X2>, uint64_t a3@<X8>, uint64_t x0_0@<X0>)
{
  v7 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v8 = v7[5];
  OUTLINED_FUNCTION_4_72(v7, v7[6]);
  OUTLINED_FUNCTION_2_80();
  v9 = OUTLINED_FUNCTION_37_0();
  sub_237BAF46C(v9, v10);
  *(a3 + v8) = a2;
  v11 = a2;
  sub_237B078E8(1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, &v13, x0_0);

  MLTextClassifier.ModelParameters.validationData.setter();
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(0x6C6562616CLL, 0xE500000000000000);

  OUTLINED_FUNCTION_3_84();
  return sub_237BAF4C4();
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.getter()
{
  type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v6 = OUTLINED_FUNCTION_14_36(v5);
  result = sub_2379F6D68(v6, &v11);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    OUTLINED_FUNCTION_18_37();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *v4;
      v9 = *(v4 + 8);
      v10 = *(v4 + 32);

      sub_2379DBC9C(v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v10 = *(v0 + *(v5 + 32));
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BAEF04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_53_5(a1);
  *v1 = MLTextClassifier.ModelParameters.labelColumnValidationData.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_12_49();
}

uint64_t sub_237BAEFA4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t sub_237BAF04C@<X0>(uint64_t a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.maxIterations.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_237BAF08C@<X0>(uint64_t *a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.textColumnValidationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237BAF0E4@<X0>(uint64_t *a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.labelColumnValidationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237BAF150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_237BAF218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_87();
  result = type metadata accessor for MLTextClassifier.ModelAlgorithmType(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_237BAF2BC(uint64_t a1)
{
  type metadata accessor for MLTextClassifier.ModelAlgorithmType(319);
  if (v1 <= 0x3F)
  {
    sub_237BAF3BC(319);
    if (v2 <= 0x3F)
    {
      sub_2379F1F74(319, &qword_27DE9B5B0, MEMORY[0x277D84F70] + 8);
      if (v3 <= 0x3F)
      {
        sub_2379F1F74(319, &qword_27DE9AD30, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_2379F1F74(319, &qword_27DE9AD18, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237BAF3BC(uint64_t a1)
{
  if (!qword_27DE9DB18)
  {
    type metadata accessor for NLLanguage(255);
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9DB18);
    }
  }
}

uint64_t sub_237BAF414(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_237BAF46C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_237BAF4C4()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

double OUTLINED_FUNCTION_4_72@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + a2);
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  v5 = (v2 + a1[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + a1[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2 + a1[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_47@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = a2;

  return sub_237C0939C();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_19_32()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_20_35()
{
  *(v0 - 48) = 0;
  *(v0 - 40) = 0xE000000000000000;

  return sub_237C08EDC();
}

uint64_t sub_237BAF670()
{
  v1[2] = v0;
  v2 = sub_237C07F1C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BAF730);
}

uint64_t sub_237BAF730()
{
  v6 = v0;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_237BB0228(v4);
  sub_2379F1FC0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_237BAF7F8;
  v2 = *(v0 + 40);

  return sub_237A4288C(v2);
}

uint64_t sub_237BAF7F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_237BAF998;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_237BAF920;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237BAF920()
{
  v1 = OUTLINED_FUNCTION_174();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3(v4);
}

uint64_t sub_237BAF998()
{
  v1 = OUTLINED_FUNCTION_174();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

void sub_237BAFA0C()
{
  OUTLINED_FUNCTION_153();
  v33 = sub_237C060BC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_22();
  v32 = v4;
  v5 = OUTLINED_FUNCTION_41_0();
  _s13GraphCNNModelVMa(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v31 = v10;
  sub_237AC1560(v0 + v10, v9);
  OUTLINED_FUNCTION_3_85();
  sub_237BB9B38(v11, v12, &unk_237C120A8);
  v13 = sub_237C063EC();
  v30 = v9;
  sub_237AC15C4(v9);
  v29 = sub_237A254D8(v13);
  if (v29)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F98];
    v28 = (v2 + 8);
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2383DCAF0](v14, v13);
      }

      else
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v16 = *(v13 + 8 * v14 + 32);
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_237AC1560(v0 + v31, v30);

      swift_getAtKeyPath();

      sub_237AC15C4(v30);
      v18 = sub_237C0609C();
      (*v28)(v32, v33);

      swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_237ACB20C(v18);
      if (__OFADD__(v15[2], (v20 & 1) == 0))
      {
        goto LABEL_19;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB40, &qword_237C15C10);
      if (sub_237C090AC())
      {
        v23 = sub_237ACB20C(v18);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_22;
        }

        v21 = v23;
      }

      if (v22)
      {
        *(v15[7] + 8 * v21) = v16;
      }

      else
      {
        v15[(v21 >> 6) + 8] |= 1 << v21;
        *(v15[6] + 4 * v21) = v18;
        *(v15[7] + 8 * v21) = v16;

        v25 = v15[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_20;
        }

        v15[2] = v27;
      }

      ++v14;
      if (v17 == v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_237C0932C();
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_150();
  }
}

void sub_237BAFD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  v21 = v20;
  v22 = sub_237C0697C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v24);
  v25 = sub_237C0638C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v30 = sub_237C065CC();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_22();
  v35 = OUTLINED_FUNCTION_21_3(v34);
  _s13GraphCNNModelVMa(v35);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_0();
  v39 = v38 - v37;
  v40 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v41 = v21 + v40;
  v42 = v22;
  sub_237AC1560(v41, v39);
  OUTLINED_FUNCTION_3_85();
  sub_237BB9B38(v43, v44, &unk_237C120A8);
  sub_237C0645C();
  sub_237AC15C4(v39);
  v45 = sub_237C0906C();
  OUTLINED_FUNCTION_160_0();
  v46 = (v32 + 8);
  v47 = MEMORY[0x277D84F90];
  v58 = v42;
  v56 = v30;
  while (1)
  {
    sub_237C0913C();
    if (!v67)
    {
      break;
    }

    sub_237AC1720(&v66, v65);
    sub_2379E8624(v65, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_186();
      (*v46)(v59, v30);
    }

    else if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_9_29();
      v48(v29, v25);
    }

    else
    {
      v49 = v45;
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_9_29();
        v50(v57, v42);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v65, v65[3]);
        v51 = *(sub_237C063AC() + 16);

        if (v51)
        {
          OUTLINED_FUNCTION_186();
        }

        else
        {
          v63 = 0;
          v62 = 0u;
          v61 = 0u;
        }

        v42 = v58;
      }

      v45 = v49;
      v30 = v56;
    }

    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v65);
    if (*(&v62 + 1))
    {
      sub_237AC1720(&v61, v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC114C();
        v47 = v54;
      }

      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_23_34(v52);
        sub_237BC114C();
        v47 = v55;
      }

      *(v47 + 16) = v53 + 1;
      sub_237AC1720(v64, v47 + 40 * v53 + 32);
      v42 = v58;
    }

    else
    {
      sub_2379D9054(&v61, &qword_27DE9CC50, &unk_237C12140);
    }
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237BB0228(uint64_t *a1)
{
  sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v69 = v5;
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_22();
  v68 = v6;
  OUTLINED_FUNCTION_41_0();
  sub_237C07BEC();
  OUTLINED_FUNCTION_0();
  v66 = v8;
  v67 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_22();
  v65 = v9;
  OUTLINED_FUNCTION_41_0();
  sub_237C0761C();
  OUTLINED_FUNCTION_0();
  v60 = v11;
  v61 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v12);
  sub_237C07C5C();
  OUTLINED_FUNCTION_0();
  v63 = v14;
  v64 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_22();
  v62 = v15;
  OUTLINED_FUNCTION_41_0();
  v16 = sub_237C0757C();
  v17 = OUTLINED_FUNCTION_0_26(v16, &v76);
  v19 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = sub_237C075DC();
  v24 = OUTLINED_FUNCTION_0_26(v23, &v77);
  v58 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_41_0();
  v28 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v34 = v33 - v32;
  v57 = a1[1];
  v56 = a1[8];
  v35 = v2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  v36 = _s13GraphCNNModelVMa(0);
  *(v35 + *(v36 + 36)) = 1;
  (*(v30 + 104))(v34, *MEMORY[0x277D2CD48], v28);
  OUTLINED_FUNCTION_3_85();
  sub_237BB9B38(v37, v38, &unk_237C120A8);
  sub_237C0644C();
  swift_endAccess();
  (*(v30 + 8))(v34, v28);
  sub_237BB7DB8();
  sub_237C07F0C();
  sub_237C07E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  sub_237C07B9C();
  *(swift_allocObject() + 16) = xmmword_237C0B660;
  (*(v19 + 104))(v22, *MEMORY[0x277D25100]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  *(swift_allocObject() + 16) = xmmword_237C0B680;
  OUTLINED_FUNCTION_166_0();
  *(v39 + 32) = v40;
  *(v39 + 40) = xmmword_237C0BA40;
  sub_237C0750C();

  (*(v19 + 8))(v22);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](8257, 0xE200000000000000);
  OUTLINED_FUNCTION_166_0();
  if (v41 <= 1)
  {
    v42 = 0x736F7020646E6168;
  }

  else
  {
    v42 = 0xD000000000000016;
  }

  if (v41 <= 1)
  {
    v43 = 0xE900000000000065;
  }

  else
  {
    v43 = 0x8000000237C1EBB0;
  }

  MEMORY[0x2383DC360](v42, v43);

  MEMORY[0x2383DC360](0xD000000000000052, 0x8000000237C1E990);
  OUTLINED_FUNCTION_166_0();
  v73 = v44;
  v45 = sub_237C0924C();
  MEMORY[0x2383DC360](v45);

  MEMORY[0x2383DC360](0x656D61726620, 0xE600000000000000);
  OUTLINED_FUNCTION_166_0();
  if (v46 <= 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = 115;
  }

  if (v46 <= 1)
  {
    v48 = 0xE000000000000000;
  }

  else
  {
    v48 = 0xE100000000000000;
  }

  MEMORY[0x2383DC360](v47, v48);

  MEMORY[0x2383DC360](0xD00000000000015ELL, 0x8000000237C1E9F0);
  sub_237C07B3C();
  sub_237C07E9C();
  *(swift_allocObject() + 16) = xmmword_237C0B670;
  OUTLINED_FUNCTION_24_25();
  sub_237C075CC();
  sub_237C07B3C();
  OUTLINED_FUNCTION_15_33();
  sub_237C0756C();
  (*(v58 + 104))(0xD000000000000012, *MEMORY[0x277D25130]);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_237C08EDC();

  v73 = 0xD000000000000011;
  v74 = 0x8000000237C1EB90;
  v49 = *(v35 + *(v36 + 40));
  if (v49 <= 1)
  {
    v50 = 1702063984;
  }

  else
  {
    v50 = 0x6E6F69746361;
  }

  if (v49 <= 1)
  {
    v51 = 0xE400000000000000;
  }

  else
  {
    v51 = 0xE600000000000000;
  }

  MEMORY[0x2383DC360](v50, v51);

  MEMORY[0x2383DC360](0x726F676574616320, 0xEA00000000002E79);
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07DEC();
  sub_237C07E2C();
  if (v57)
  {
    OUTLINED_FUNCTION_176_0(&v74);

    sub_237C07DCC();
    OUTLINED_FUNCTION_30_6();
    sub_237C07DBC();
    sub_237C07E6C();
    sub_237C07EAC();
    if (!v56)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
  }

  v71 = *(v35 + *(v36 + 40));
  sub_237C0924C();
  v52 = sub_237C07EDC();
  v54 = v53;
  swift_isUniquelyReferenced_nonNull_native();
  v75 = *v54;
  sub_237B40C78();
  *v54 = v75;
  v52(&v71, 0);
  sub_237C07C3C();
  (*(v60 + 104))(v59, *MEMORY[0x277D25168], v61);
  sub_237C07C1C();
  sub_237C07C2C();
  *v65 = *(v2 + 16);
  (*(v66 + 104))(v65, *MEMORY[0x277D251E8], v67);

  sub_237C07BFC();
  (*(v63 + 16))(v68, v62, v64);
  (*(v69 + 104))(v68, *MEMORY[0x277D25398], v70);
  OUTLINED_FUNCTION_151_1();
  sub_237C07E4C();
  result = (*(v63 + 8))(v62, v64);
  *(v35 + *(v36 + 36)) = 0;
  return result;
}

uint64_t sub_237BB0D90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  OUTLINED_FUNCTION_20(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB20, &qword_237C15BF0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v5);
  v6 = sub_237C0638C();
  v7 = OUTLINED_FUNCTION_0_26(v6, v575);
  v536 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v9);
  v10 = sub_237C0790C();
  v11 = OUTLINED_FUNCTION_0_26(v10, &v582);
  v531[0] = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v13);
  v14 = sub_237C060BC();
  v15 = OUTLINED_FUNCTION_0_26(v14, &v555);
  v544 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB28, &qword_237C15BF8);
  OUTLINED_FUNCTION_20(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v21);
  v22 = sub_237C0697C();
  v23 = OUTLINED_FUNCTION_0_26(v22, v561);
  v530 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v25);
  v26 = sub_237C0796C();
  v27 = OUTLINED_FUNCTION_0_26(v26, &v570);
  v529 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v31 = OUTLINED_FUNCTION_20(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v35);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  v39 = OUTLINED_FUNCTION_0_26(v38, &v568);
  v528 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v42);
  v43 = sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v527 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v50);
  v51 = sub_237C0683C();
  v52 = OUTLINED_FUNCTION_0_26(v51, &v581);
  v526 = v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v57);
  v58 = sub_237C069CC();
  v59 = OUTLINED_FUNCTION_0_26(v58, v579);
  v525 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB30, &qword_237C15C00);
  OUTLINED_FUNCTION_20(v65);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v67);
  v68 = sub_237C065CC();
  v69 = OUTLINED_FUNCTION_0_26(v68, v574);
  v524 = v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v71);
  v72 = sub_237C0788C();
  v73 = OUTLINED_FUNCTION_0_26(v72, v576);
  v523 = v74;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v75);
  v76 = sub_237C0798C();
  v77 = OUTLINED_FUNCTION_0_26(v76, &v578);
  v537 = v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v79);
  v80 = sub_237C07A8C();
  v81 = OUTLINED_FUNCTION_0_26(v80, v579 + 8);
  v568 = v82;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_2_0();
  v85 = (v84 - v83);
  v86 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v88 = v87;
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v90);
  v92 = &v488 - v91;
  MEMORY[0x28223BE20](v93);
  v95 = &v488 - v94;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v97 = [objc_opt_self() bundleForClass_];
  v98 = sub_237BB9AA4(0xD00000000000001ELL, 0x8000000237C1E6A0, 0x73746867696577, 0xE700000000000000, v97);

  if (!v98)
  {
    goto LABEL_113;
  }

  sub_237C05A7C();

  if (qword_27DE9A608 != -1)
  {
LABEL_82:
    swift_once();
  }

  v99 = sub_237C0829C();
  v100 = __swift_project_value_buffer(v99, qword_27DEACD98);
  v101 = *(v88 + 16);
  v570 = v95;
  v560 = v101;
  (v101)(v92, v95, v86);
  v543 = v100;
  v102 = sub_237C0827C();
  v103 = sub_237C08C1C();
  v104 = os_log_type_enabled(v102, v103);
  v581 = v85;
  v535 = v43;
  if (v104)
  {
    v105 = swift_slowAlloc();
    v551 = swift_slowAlloc();
    OUTLINED_FUNCTION_179_0(v551);
    *v105 = 136315138;
    sub_237BB9B38(&qword_27DE9B3B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v106 = sub_237C0924C();
    v108 = v107;
    v109 = v92;
    v110 = *(v88 + 8);
    v110(v109, v86);
    v111 = sub_237BAAC6C(v106, v108, &v571);

    *(v105 + 4) = v111;
    _os_log_impl(&dword_2379D3000, v102, v103, "Loading pre-trained model at %s", v105, 0xCu);
    v112 = v551;
    __swift_destroy_boxed_opaque_existential_1(v551);
    MEMORY[0x2383DD950](v112, -1, -1);
    MEMORY[0x2383DD950](v105, -1, -1);

    v113 = v110;
  }

  else
  {

    v113 = *(v88 + 8);
    v113(v92, v86);
  }

  v114 = v86;
  v115 = v561[0];
  v116 = v570;
  (v560)(v561[0], v570, v114);
  v117 = v569;
  v118 = sub_237C05B1C();
  if (v117)
  {
    v113(v115, v114);
    return (v113)(v116, v114);
  }

  sub_237A2BF3C(v118, v119, v573);
  v521 = 0;
  v495 = v113;
  v494 = v88 + 8;
  v113(v115, v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB38, &qword_237C15C08);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_237C15BC0;
  *(v121 + 32) = 3485304;
  *(v121 + 40) = 0xE300000000000000;
  v92 = MEMORY[0x277D83B88];
  *(v121 + 48) = OUTLINED_FUNCTION_75_5(&unk_284ABEF40);
  *(v121 + 56) = 3616376;
  *(v121 + 64) = 0xE300000000000000;
  *(v121 + 72) = OUTLINED_FUNCTION_75_5(&unk_284ABEFC0);
  *(v121 + 80) = 120;
  *(v121 + 88) = 0xE100000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABEFF8);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 96) = v123;
  *(v121 + 104) = v122 & 0xFFFFFFFFFFFFLL | 0x33000000000000;
  *(v121 + 112) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF048);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 120) = v125;
  *(v121 + 128) = v124 & 0xFFFFFFFFFFFFLL | 0x35000000000000;
  *(v121 + 136) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF0C8);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 144) = v127;
  *(v121 + 152) = v126 & 0xFFFFFFFFFFFFLL | 0x37000000000000;
  *(v121 + 160) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF100);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 168) = v129;
  *(v121 + 176) = v128 & 0xFFFFFFFFFFFFLL | 0x38000000000000;
  *(v121 + 184) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF138);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 192) = v131;
  *(v121 + 200) = v130 & 0xFFFFFFFFFFFFLL | 0x39000000000000;
  *(v121 + 208) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF1B8);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 216) = v133;
  *(v121 + 224) = v132 & 0xFFFFFFFFFFFFLL | 0x3231000000000000;
  *(v121 + 232) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF1F0);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 240) = v135;
  *(v121 + 248) = v134 & 0xFFFFFFFFFFFFLL | 0x3431000000000000;
  *(v121 + 256) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF228);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 264) = v137;
  *(v121 + 272) = v136 & 0xFFFFFFFFFFFFLL | 0x3531000000000000;
  *(v121 + 280) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF260);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 288) = v139;
  *(v121 + 296) = v138 & 0xFFFFFFFFFFFFLL | 0x3631000000000000;
  *(v121 + 304) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF2E0);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 312) = v141;
  *(v121 + 320) = v140 & 0xFFFFFFFFFFFFLL | 0x3931000000000000;
  *(v121 + 328) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF318);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 336) = v143;
  *(v121 + 344) = v142 & 0xFFFFFFFFFFFFLL | 0x3132000000000000;
  *(v121 + 352) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF350);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 360) = v145;
  *(v121 + 368) = v144 & 0xFFFFFFFFFFFFLL | 0x3232000000000000;
  *(v121 + 376) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF388);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 384) = v147;
  *(v121 + 392) = v146 & 0xFFFFFFFFFFFFLL | 0x3332000000000000;
  *(v121 + 400) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF408);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 408) = v149;
  *(v121 + 416) = v148 & 0xFFFFFFFFFFFFLL | 0x3632000000000000;
  *(v121 + 424) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF440);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 432) = v151;
  *(v121 + 440) = v150 & 0xFFFFFFFFFFFFLL | 0x3832000000000000;
  *(v121 + 448) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF478);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 456) = v153;
  *(v121 + 464) = v152 & 0xFFFFFFFFFFFFLL | 0x3932000000000000;
  *(v121 + 472) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF4B0);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 480) = v155;
  *(v121 + 488) = v154 & 0xFFFFFFFFFFFFLL | 0x3033000000000000;
  *(v121 + 496) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5(&unk_284ABF530);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 504) = v157;
  *(v121 + 512) = v156 & 0xFFFFFFFFFFFFLL | 0x3333000000000000;
  *(v121 + 520) = 0xE800000000000000;
  *(v121 + 528) = OUTLINED_FUNCTION_75_5(&unk_284ABF568);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 536) = v158 & 0xFFFFFFFFFFFFLL | 0x3533000000000000;
  *(v121 + 544) = 0xE800000000000000;
  *(v121 + 552) = OUTLINED_FUNCTION_75_5(&unk_284ABF5A0);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 560) = v159 & 0xFFFFFFFFFFFFLL | 0x3633000000000000;
  *(v121 + 568) = 0xE800000000000000;
  *(v121 + 576) = OUTLINED_FUNCTION_75_5(&unk_284ABF5D8);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 584) = v160 & 0xFFFFFFFFFFFFLL | 0x3933000000000000;
  *(v121 + 592) = 0xE800000000000000;
  *(v121 + 600) = OUTLINED_FUNCTION_75_5(&unk_284ABF658);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 608) = v161 & 0xFFFFFFFFFFFFLL | 0x3134000000000000;
  *(v121 + 616) = 0xE800000000000000;
  *(v121 + 624) = OUTLINED_FUNCTION_75_5(&unk_284ABF690);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 632) = v162 & 0xFFFFFFFFFFFFLL | 0x3234000000000000;
  *(v121 + 640) = 0xE800000000000000;
  *(v121 + 648) = OUTLINED_FUNCTION_75_5(&unk_284ABF6C8);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 656) = v163 & 0xFFFFFFFFFFFFLL | 0x3334000000000000;
  *(v121 + 664) = 0xE800000000000000;
  *(v121 + 672) = OUTLINED_FUNCTION_75_5(&unk_284ABF748);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 680) = v164 & 0xFFFFFFFFFFFFLL | 0x3634000000000000;
  *(v121 + 688) = 0xE800000000000000;
  *(v121 + 696) = OUTLINED_FUNCTION_75_5(&unk_284ABF780);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 704) = v165 & 0xFFFFFFFFFFFFLL | 0x3834000000000000;
  *(v121 + 712) = 0xE800000000000000;
  *(v121 + 720) = OUTLINED_FUNCTION_75_5(&unk_284ABF7B8);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 728) = v166 & 0xFFFFFFFFFFFFLL | 0x3934000000000000;
  *(v121 + 736) = 0xE800000000000000;
  *(v121 + 744) = OUTLINED_FUNCTION_75_5(&unk_284ABF7F0);
  OUTLINED_FUNCTION_20_36();
  *(v121 + 752) = v167 & 0xFFFFFFFFFFFFLL | 0x3035000000000000;
  *(v121 + 760) = 0xE800000000000000;
  *(v121 + 768) = OUTLINED_FUNCTION_75_5(&unk_284ABF870);
  *(v121 + 776) = 0x6C61756469736572;
  v86 = v114;
  v85 = 0xEA0000000000312ELL;
  *(v121 + 784) = 0xEA0000000000312ELL;
  *(v121 + 792) = OUTLINED_FUNCTION_75_5(&unk_284ABF8A8);
  *(v121 + 800) = 0x6C61756469736572;
  *(v121 + 808) = 0xEA0000000000322ELL;
  *(v121 + 816) = OUTLINED_FUNCTION_75_5(&unk_284ABF928);
  *(v121 + 824) = 0x6C61756469736572;
  *(v121 + 832) = 0xEA0000000000332ELL;
  *(v121 + 840) = OUTLINED_FUNCTION_75_5(&unk_284ABF9A8);
  *(v121 + 848) = 0x6C61756469736572;
  *(v121 + 856) = 0xEA0000000000342ELL;
  *(v121 + 864) = OUTLINED_FUNCTION_75_5(&unk_284ABFA28);
  *(v121 + 872) = 0x6C61756469736572;
  *(v121 + 880) = 0xEA0000000000352ELL;
  *(v121 + 888) = OUTLINED_FUNCTION_75_5(&unk_284ABFAA8);
  *(v121 + 896) = 0x6C61756469736572;
  *(v121 + 904) = 0xE800000000000000;
  *(v121 + 912) = OUTLINED_FUNCTION_75_5(&unk_284ABFB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
  v533 = sub_237C085AC();
  v168 = v550;
  sub_237BB43A0(3, 21, v169, v170, v171, v172, v173, v174, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499);
  v95 = v175;
  sub_237BB4078();
  v522 = v176;
  v560 = sub_237BB7C18(v176);
  sub_237BAFD70(v560, v177, v178, v179, v180, v181, v182, v183, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499);
  v185 = v184;
  v43 = sub_237ABDDA4(v186);
  sub_237BAFA0C();
  v513 = v187;
  v188 = *(v95 + 2);
  v534[0] = v185;
  v551 = v188;
  v496 = v86;
  if (!v188)
  {
    OUTLINED_FUNCTION_118_1();
LABEL_75:
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_121_2();

    OUTLINED_FUNCTION_145_0();

    OUTLINED_FUNCTION_147_1();
    sub_237A2C4F4(v573);
    OUTLINED_FUNCTION_92_4();

LABEL_80:
    OUTLINED_FUNCTION_134_1();
    return v451();
  }

  v545 = &v168[OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model];
  v550 = &v95[(*(v568 + 80) + 32) & ~*(v568 + 80)];
  v549 = v568 + 16;
  v548 = v537 + 88;
  v546 = v568 + 8;
  v493 = v537 + 8;
  v547 = *MEMORY[0x277D251A0];
  v537 += 96;
  v492 = v529 + 32;
  v520 = *MEMORY[0x277D25198];
  v491 = v530 + 32;
  OUTLINED_FUNCTION_160_0();
  v525 = v189;
  v512 = *v190;
  OUTLINED_FUNCTION_129_1();
  v488 = (v191 + 8);
  v518 = (v527 + 16);
  OUTLINED_FUNCTION_160_0();
  v544 = v192;
  v497 = v193 + 8;
  v489 = v194 + 8;
  v490 = v195 + 8;
  v511 = v523 + 32;
  v509 = v524 + 32;
  OUTLINED_FUNCTION_160_0();
  v508 = v196;
  v503 = v197 + 8;
  v504 = v198 + 8;
  v530 = v531[0] + 32;
  v507 = v536 + 32;
  v510 = v536 + 8;
  v529 = v531[0] + 8;
  v506 = xmmword_237C0B670;
  v502 = xmmword_237C0B660;
  v505 = xmmword_237C0BC00;
  v531[0] = v185 + 32;
  v199 = v581;
  OUTLINED_FUNCTION_177_0();
  v200 = v570;
  v201 = v559;
  v88 = v521;
  OUTLINED_FUNCTION_109_0();
  v536 = v95;
  v561[0] = v43;
  while (1)
  {
    if (v202 >= *(v95 + 2))
    {
      __break(1u);
      goto LABEL_82;
    }

    v203 = *(v568 + 72);
    v569 = v202;
    (*(v568 + 16))(v199, &v550[v203 * v202], v201);
    sub_237C0799C();
    v204 = OUTLINED_FUNCTION_62_10();
    v206 = v205(v204);
    if (v206 == v547)
    {
      break;
    }

    if (v206 != v520)
    {
      v199 = v581;
      if (v206 != v512)
      {
        OUTLINED_FUNCTION_54_6();
        v428(v199, v201);
        v429 = OUTLINED_FUNCTION_62_10();
        v430(v429);
        goto LABEL_71;
      }

      v272 = OUTLINED_FUNCTION_62_10();
      v273(v272);
      OUTLINED_FUNCTION_9_29();
      v274(v553, v86, v542);
      v275 = sub_237C079CC();
      v277 = sub_237AC9968(v275, v276, v560);
      v279 = v278;

      if (v279)
      {
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v479 + 25, v480 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_2_81();
        v454 = 641;
        goto LABEL_112;
      }

      v280 = v534[7];
      if ((v277 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

      if (v277 >= *(v534[0] + 16))
      {
        goto LABEL_90;
      }

      sub_2379E8624(v531[0] + 40 * v277, &v571);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
      v281 = v539;
      if (!swift_dynamicCast())
      {
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v481, v482, v483, v281);
        sub_2379D9054(v280, &qword_27DE9DB28, &qword_237C15BF8);
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v484 + 46, v485 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_2_81();
        v454 = 644;
        goto LABEL_112;
      }

      v282 = v88;
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v283, v284, v285, v281);
      OUTLINED_FUNCTION_9_29();
      v286(v552, v280, v281);
      sub_237C079CC();
      v287 = sub_237ACDA88();

      if (!v287)
      {
        goto LABEL_96;
      }

      v288 = sub_237AC9968(1851876717, 0xE400000000000000, v287);
      if (v289 & 1) != 0 || (v290 = v288, v291 = sub_237AC9968(0x65636E6169726176, 0xE800000000000000, v287), (v292) || (v293 = v291, v294 = sub_237AC9968(1635018082, 0xE400000000000000, v287), (v295) || (v296 = v294, v297 = sub_237AC9968(0x616D6D6167, 0xE500000000000000, v287), (v298))
      {

LABEL_96:
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v455 + 3, v456 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_130_1();
        OUTLINED_FUNCTION_2_81();
        v454 = 653;
        goto LABEL_112;
      }

      v299 = v297;
      v527 = v287;
      v300 = sub_237C0791C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v301 = swift_allocObject();
      OUTLINED_FUNCTION_168_0(v301, v531);
      *(v302 + 32) = v300;
      sub_237C0611C();
      v303 = sub_237A2B584(v290);
      if (v282)
      {
        OUTLINED_FUNCTION_145_0();

        OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_146_0();
        OUTLINED_FUNCTION_121_2();

        sub_237A2C4F4(v573);
        OUTLINED_FUNCTION_92_4();
        OUTLINED_FUNCTION_163();
        OUTLINED_FUNCTION_9_29();
        OUTLINED_FUNCTION_152_1();
        v441();
        OUTLINED_FUNCTION_9_29();
        v442 = OUTLINED_FUNCTION_165_0();
        v443(v442);
        OUTLINED_FUNCTION_9_29();
        v444 = OUTLINED_FUNCTION_141_1();
        v446(v444, *(v445 - 256));
        OUTLINED_FUNCTION_54_6();
        v447 = OUTLINED_FUNCTION_142_0();
        v448(v447);
        goto LABEL_80;
      }

      v304 = v303;
      v305 = sub_237A2B584(v293);
      v306 = sub_237A2B584(v296);
      v307 = sub_237A2B584(v299);
      v526 = v304;
      v498 = v305;
      v499 = v306;
      v500 = v307;
      v528 = v300;
      OUTLINED_FUNCTION_116_2();
      sub_237C0693C();
      sub_237C0699C();
      v308 = *v525;
      v309 = v558;
      (*v525)(v305, v558);
      if (!sub_237ACDA80())
      {
        goto LABEL_107;
      }

      v521 = 0;
      OUTLINED_FUNCTION_116_2();
      sub_237C0691C();
      sub_237C0699C();
      v308(v305, v309);
      v310 = sub_237ACDA80();
      v311 = v534[6];
      v501 = v310;
      if (!v310)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_178();
      sub_237C068CC();
      sub_237C0609C();
      v312 = *v488;
      (*v488)(0, v311);
      v313 = sub_237ACDA80();
      v314 = v528;
      v516 = v313;
      if (!v313)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_178();
      sub_237C068EC();
      sub_237C0609C();
      v312(0, v311);
      v315 = sub_237ACDA80();
      if (!v315)
      {

LABEL_105:

LABEL_106:

LABEL_107:
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v477 + 32, v478 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_2_81();
        v454 = 670;
        goto LABEL_112;
      }

      v515 = v315;

      v316 = v538;
      v317 = v557;
      v318 = v535;
      v527 = *v518;
      (v527)(v538, v557);
      if ((v314 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      v319 = v526;
      sub_237A59760();
      v321 = v320;
      v323 = v322;

      OUTLINED_FUNCTION_157();
      *(v324 - 256) = v321;
      v572 = v323;
      v519 = sub_237C0616C();
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v325, v326, v327, v328);
      v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C718, &unk_237C10D00);
      v524 = sub_2379D9224(&qword_27DE9C720, &qword_27DE9C718, &unk_237C10D00, MEMORY[0x277D83FC0]);
      OUTLINED_FUNCTION_15_33();
      sub_237C0678C();
      swift_beginAccess();
      OUTLINED_FUNCTION_3_85();
      v523 = sub_237BB9B38(&qword_27DE9C7E8, v329, &unk_237C120A8);
      OUTLINED_FUNCTION_58_7();
      sub_237C063BC();
      swift_endAccess();
      OUTLINED_FUNCTION_129_1();
      v514 = *v330;
      (v514)(v319, v566);
      sub_2379D9054(&unk_237C10D00, &qword_27DE9B410, &qword_237C0CCC8);
      (v527)(v316, v317, v318);
      sub_237A59760();
      v332 = v331;
      v334 = v333;

      OUTLINED_FUNCTION_157();
      *(v335 - 256) = v332;
      v572 = v334;
      OUTLINED_FUNCTION_176_0(&v580);
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_159_0(v336, v337, v338);
      OUTLINED_FUNCTION_104_2(v316, v339, v334);
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_180_0();
      sub_237C063BC();
      swift_endAccess();
      v340 = v514;
      OUTLINED_FUNCTION_129_1();
      v340();
      sub_2379D9054(v334, &qword_27DE9B410, &qword_237C0CCC8);
      OUTLINED_FUNCTION_182_0();
      v341();
      v85 = v318;
      v342 = sub_237A59760();
      v344 = v343;
      v346 = v345;

      OUTLINED_FUNCTION_158_0();
      *(v347 - 256) = v344;
      v572 = v346;
      v92 = v564;
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_159_0(v348, v349, v350);
      v351 = v538;
      OUTLINED_FUNCTION_104_2(v538, v352, v92);
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_180_0();
      sub_237C063BC();
      swift_endAccess();
      OUTLINED_FUNCTION_119_2();
      v340();
      sub_2379D9054(v342, &qword_27DE9B410, &qword_237C0CCC8);
      v88 = v351;
      OUTLINED_FUNCTION_182_0();
      v353();
      v86 = v500;
      sub_237A59760();
      v199 = v354;
      v356 = v355;
      v201 = v357;

      OUTLINED_FUNCTION_158_0();
      *(v358 - 256) = v356;
      v572 = v201;
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_159_0(v359, v360, v361);
      OUTLINED_FUNCTION_104_2(v88, v362, v92);
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_96_1();
      v200 = v501;
      sub_237C063BC();
      swift_endAccess();

      OUTLINED_FUNCTION_119_2();
      v514();
      sub_2379D9054(v356, &qword_27DE9B410, &qword_237C0CCC8);
      OUTLINED_FUNCTION_9_29();
      v363(v557, v85);
      OUTLINED_FUNCTION_9_29();
      v364 = OUTLINED_FUNCTION_165_0();
      v365(v364);
      OUTLINED_FUNCTION_9_29();
      v366 = OUTLINED_FUNCTION_141_1();
      v368(v366, *(v367 - 256));
      v369 = OUTLINED_FUNCTION_27_21();
      v370(v369);
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_118_1();
      goto LABEL_69;
    }

    v223 = OUTLINED_FUNCTION_62_10();
    v224(v223);
    OUTLINED_FUNCTION_9_29();
    v225(v562, v86, v556);
    v226 = v581;
    sub_237C079CC();
    OUTLINED_FUNCTION_175_0();
    if (!v228 || (v229 = sub_237ACAC78(v227, v200), (v230 & 1) == 0))
    {

      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v461 + 25, v462 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_15_42();
      OUTLINED_FUNCTION_2_81();
      v454 = 619;
LABEL_112:
      v488 = v454;
      goto LABEL_113;
    }

    v231 = *(v226[7] + 8 * v229);

    v232 = v533;
    v233 = v525;
    if ((v231 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }

    if (v231 >= *(v534[0] + 16))
    {
      goto LABEL_86;
    }

    sub_2379E8624(v531[0] + 40 * v231, &v571);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    v234 = v540;
    v235 = v554;
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v467, v468, v469, v235);
      sub_2379D9054(v234, &qword_27DE9DB30, &qword_237C15C00);
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v470 + 38, v471 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_15_42();
      OUTLINED_FUNCTION_2_81();
      v454 = 622;
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v236, v237, v238, v235);
    OUTLINED_FUNCTION_9_29();
    v239(v561[1], v234, v235);
    v240 = sub_237C079CC();
    if (!*(v232 + 16) || (v242 = sub_237ACAC78(v240, v241), (v243 & 1) == 0) || (v244 = *(*(v232 + 56) + 8 * v242), , , !*(v244 + 16)) || (v245 = OUTLINED_FUNCTION_169_0(), v247 = sub_237ACAC78(v245, v246), (v248 & 1) == 0))
    {

      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v457 + 5, v458 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_2_81();
      v454 = 628;
      goto LABEL_112;
    }

    v86 = v88;
    v249 = *(*(v244 + 56) + 8 * v247);
    OUTLINED_FUNCTION_53_2();
    MEMORY[0x2383DA130]();
    v250 = sub_237C0699C();
    (*v233)(v92, v558);
    if (!*(v43 + 16) || (v251 = sub_237ACB20C(v250), (v252 & 1) == 0))
    {
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v459 + 36, v460 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      OUTLINED_FUNCTION_2_81();
      v454 = 631;
      goto LABEL_112;
    }

    v528 = *(*(v43 + 56) + 8 * v251);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v253 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v253, &v532);
    v85 = v562;
    v253[2].n128_u64[0] = sub_237C0781C();
    v253[2].n128_u64[1] = sub_237C077FC();
    OUTLINED_FUNCTION_15_33();
    sub_237C077AC();
    v254 = v541;
    sub_237C07ADC();
    v92 = *v508;
    (*v508)(v43, v254);
    OUTLINED_FUNCTION_15_33();
    sub_237C077AC();
    sub_237C07ABC();
    (v92)(v43, v254);
    OUTLINED_FUNCTION_53_2();
    sub_237C0611C();
    if ((v249 & 0x8000000000000000) != 0)
    {
      goto LABEL_87;
    }

    if (v249 >= *(v577 + 16))
    {
      goto LABEL_88;
    }

    v255 = (v577 + (v249 << 6));
    v256 = v255[3];
    v578 = v255[2];
    v579[0] = v256;
    v257 = v255[5];
    v579[1] = v255[4];
    v579[2] = v257;
    if (sub_237A2B2C8() != 1)
    {
      sub_237A01064();
      swift_allocError();
      *v437 = 2;
      swift_willThrow();
      OUTLINED_FUNCTION_145_0();
      OUTLINED_FUNCTION_30_6();

      OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_121_2();

      sub_237A2C4F4(v573);
      OUTLINED_FUNCTION_92_4();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_9_29();
      OUTLINED_FUNCTION_152_1();
      v438();
      OUTLINED_FUNCTION_9_29();
      v439 = OUTLINED_FUNCTION_171_0();
      v440(v439);
      OUTLINED_FUNCTION_9_29();
      v435 = v562;
      v436 = v576;
      goto LABEL_79;
    }

    v258 = sub_237A2B7A0(v573[0], v573[1], &v578);
    v88 = v86;
    OUTLINED_FUNCTION_179_0(v258);
    sub_237C0616C();
    v259 = v564;
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v260, v261, v262, v263);
    v201 = &unk_237C0C200;
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    OUTLINED_FUNCTION_99_2();
    sub_2379D9224(&qword_27DE9C728, &qword_27DE9AEA8, &unk_237C0C200, v264);
    OUTLINED_FUNCTION_58_7();
    sub_237C0678C();
    OUTLINED_FUNCTION_42_16();
    OUTLINED_FUNCTION_3_85();
    sub_237BB9B38(&qword_27DE9C7E8, v265, &unk_237C120A8);
    OUTLINED_FUNCTION_96_1();
    sub_237C063BC();
    swift_endAccess();

    sub_2379D9054(v259, &qword_27DE9B410, &qword_237C0CCC8);
    OUTLINED_FUNCTION_9_29();
    v266(&unk_237C0C200, v566);
    OUTLINED_FUNCTION_9_29();
    v267 = OUTLINED_FUNCTION_171_0();
    v268(v267);
    OUTLINED_FUNCTION_9_29();
    v269(v562, v556);
    v270 = OUTLINED_FUNCTION_27_21();
    v271(v270);
    OUTLINED_FUNCTION_177_0();
LABEL_68:
    v200 = v570;
LABEL_69:
    OUTLINED_FUNCTION_109_0();
    v95 = v536;
LABEL_70:
    v43 = v561[0];
LABEL_71:
    v202 = v569 + 1;
    if (v551 == (v569 + 1))
    {
      goto LABEL_75;
    }
  }

  v207 = OUTLINED_FUNCTION_62_10();
  v208(v207);
  OUTLINED_FUNCTION_9_29();
  v209(v92, v86, v567);
  sub_237C079CC();
  OUTLINED_FUNCTION_175_0();
  if (!v211)
  {

LABEL_94:
    OUTLINED_FUNCTION_1_85();
    sub_237C08EDC();
    OUTLINED_FUNCTION_0_87();
    OUTLINED_FUNCTION_35_20();
    MEMORY[0x2383DC360](v452 + 25, v453 | 0x8000000000000000);
    sub_237C079CC();
    OUTLINED_FUNCTION_131_1();

    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_2_81();
    v454 = 690;
    goto LABEL_112;
  }

  v212 = sub_237ACAC78(v210, v200);
  v214 = v213;

  if ((v214 & 1) == 0)
  {
    goto LABEL_94;
  }

  v215 = *(v199[7] + 8 * v212);
  if (v215 == *(v522 + 16) - 1)
  {
    v216 = sub_237C0827C();
    v217 = sub_237C08C1C();
    v218 = os_log_type_enabled(v216, v217);
    v43 = v561[0];
    if (v218)
    {
      v219 = swift_slowAlloc();
      *v219 = 0;
      _os_log_impl(&dword_2379D3000, v216, v217, "Skipping last innerProduct layer when loading the pretrained-model.", v219, 2u);
      MEMORY[0x2383DD950](v219, -1, -1);
    }

    OUTLINED_FUNCTION_9_29();
    v220 = OUTLINED_FUNCTION_106_3();
    v221(v220);
    OUTLINED_FUNCTION_54_6();
    v199 = v581;
    v222(v581, v201);
    v200 = v570;
    v95 = v536;
    goto LABEL_71;
  }

  v371 = v561[0];
  if ((v215 & 0x8000000000000000) == 0)
  {
    if (v215 >= *(v534[0] + 16))
    {
      goto LABEL_85;
    }

    sub_2379E8624(v531[0] + 40 * v215, &v571);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    OUTLINED_FUNCTION_176_0(&v569);
    v372 = v555;
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v472, v473, v474, v372);
      sub_2379D9054(v200, &qword_27DE9DB20, &qword_237C15BF0);
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v475 + 39, v476 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_15_42();
      OUTLINED_FUNCTION_2_81();
      v454 = 698;
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_69_9();
    __swift_storeEnumTagSinglePayload(v373, v374, v375, v376);
    OUTLINED_FUNCTION_9_29();
    v377(v563, v200, v372);
    v378 = sub_237C079CC();
    v380 = v379;
    v381 = v533;
    v382 = v525;
    if (!*(v533 + 16) || (v383 = sub_237ACAC78(v378, v379), (v384 & 1) == 0) || (v385 = *(*(v381 + 56) + 8 * v383), , , !v385[2]) || (v386 = OUTLINED_FUNCTION_169_0(), v388 = sub_237ACAC78(v386, v387), (v389 & 1) == 0))
    {

      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v463 + 6, v464 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_2_81();
      v454 = 704;
      goto LABEL_112;
    }

    v390 = *(v385[7] + 8 * v388);
    OUTLINED_FUNCTION_96_1();
    sub_237C0635C();
    v391 = sub_237C0699C();
    v392 = *v382;
    (*v382)(v380, v558);
    if (!*(v371 + 16) || (sub_237ACB20C(v391), (v393 & 1) == 0))
    {
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v465 + 36, v466 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      OUTLINED_FUNCTION_2_81();
      v454 = 707;
      goto LABEL_112;
    }

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    OUTLINED_FUNCTION_29_4();
    v394 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v394, v534);

    v394[2].n128_u64[0] = sub_237C078CC();
    v394[2].n128_u64[1] = sub_237C078BC();
    OUTLINED_FUNCTION_96_1();
    sub_237C0611C();
    v395 = sub_237A2B584(v390);
    if (v88)
    {
      OUTLINED_FUNCTION_145_0();
      OUTLINED_FUNCTION_30_6();

      OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_121_2();

      sub_237A2C4F4(v573);
      OUTLINED_FUNCTION_92_4();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_9_29();
      OUTLINED_FUNCTION_152_1();
      v431();
      v432 = OUTLINED_FUNCTION_34_21();
      v433(v432);
      OUTLINED_FUNCTION_9_29();
      v435 = v565;
      v436 = &v582;
LABEL_79:
      v434(v435, *(v436 - 32));
      OUTLINED_FUNCTION_54_6();
      v449 = OUTLINED_FUNCTION_142_0();
      v450(v449);
      goto LABEL_80;
    }

    v528 = v392;
    OUTLINED_FUNCTION_179_0(v395);
    sub_237C0616C();
    v199 = v564;
    OUTLINED_FUNCTION_64();
    v527 = v396;
    __swift_storeEnumTagSinglePayload(v397, v398, v399, v396);
    v201 = &qword_27DE9AEA8;
    v85 = &unk_237C0C200;
    v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    OUTLINED_FUNCTION_99_2();
    sub_2379D9224(&qword_27DE9C728, &qword_27DE9AEA8, &unk_237C0C200, v401);
    OUTLINED_FUNCTION_58_7();
    v526 = v400;
    v524 = v402;
    sub_237C0678C();
    OUTLINED_FUNCTION_42_16();
    OUTLINED_FUNCTION_3_85();
    v86 = sub_237BB9B38(&qword_27DE9C7E8, v403, &unk_237C120A8);
    OUTLINED_FUNCTION_116_2();
    sub_237C063BC();
    swift_endAccess();
    OUTLINED_FUNCTION_129_1();
    v405 = *v404;
    (*v404)(&qword_27DE9AEA8, v566);
    sub_2379D9054(&unk_237C0C200, &qword_27DE9B410, &qword_237C0CCC8);
    if (v385[2])
    {
      v199 = v385;
      v406 = sub_237ACAC78(1935763810, 0xE400000000000000);
      if (v407)
      {
        v519 = v86;
        v523 = v405;
        v201 = 0;
        v85 = *(v385[7] + 8 * v406);
        OUTLINED_FUNCTION_178();
        sub_237C0632C();
        v408 = v558;
        if (__swift_getEnumTagSinglePayload(0, 1, v558) == 1)
        {
          sub_2379D9054(0, &qword_27DE9C810, &qword_237C12130);
LABEL_111:
          OUTLINED_FUNCTION_1_85();
          sub_237C08EDC();
          OUTLINED_FUNCTION_0_87();
          OUTLINED_FUNCTION_35_20();
          MEMORY[0x2383DC360](v486 + 34, v487 | 0x8000000000000000);
          sub_237C079CC();
          OUTLINED_FUNCTION_131_1();

          MEMORY[0x2383DC360](46, 0xE100000000000000);
          OUTLINED_FUNCTION_2_81();
          v454 = 721;
          goto LABEL_112;
        }

        sub_237C0699C();
        v528(0, v408);
        v409 = sub_237ACDA80();
        if (!v409)
        {
          goto LABEL_111;
        }

        v86 = v409;

        v410 = swift_allocObject();
        OUTLINED_FUNCTION_168_0(v410, v531);
        OUTLINED_FUNCTION_177_0();
        v410[2].n128_u64[0] = sub_237C078CC();
        OUTLINED_FUNCTION_178();
        sub_237C0611C();
        v199 = v573;
        v411 = sub_237A2B584(v85);
        v521 = v88;
        OUTLINED_FUNCTION_179_0(v411);
        OUTLINED_FUNCTION_176_0(&v580);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v412, v413, v414, v527);
        OUTLINED_FUNCTION_96_1();
        OUTLINED_FUNCTION_104_2(0, v415, v410);
        OUTLINED_FUNCTION_42_16();
        v200 = v531[2];
        sub_237C063BC();
        swift_endAccess();

        v95 = v536;
        OUTLINED_FUNCTION_119_2();
        v523();
        sub_2379D9054(v200, &qword_27DE9B410, &qword_237C0CCC8);
        v416 = OUTLINED_FUNCTION_34_21();
        v417(v416);
        OUTLINED_FUNCTION_9_29();
        v418 = OUTLINED_FUNCTION_106_3();
        v419(v418);
        v420 = OUTLINED_FUNCTION_27_21();
        v421(v420);
        OUTLINED_FUNCTION_118_1();
        OUTLINED_FUNCTION_109_0();
        goto LABEL_70;
      }
    }

    v422 = OUTLINED_FUNCTION_34_21();
    v423(v422);
    OUTLINED_FUNCTION_9_29();
    v92 = v565;
    v424 = OUTLINED_FUNCTION_106_3();
    v425(v424);
    v426 = OUTLINED_FUNCTION_27_21();
    v427(v426);
    goto LABEL_68;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_113:
  OUTLINED_FUNCTION_108_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

void sub_237BB4078()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = sub_237C0798C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v49 = sub_237C07A8C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = *(v1 + 16);
  if (v15)
  {
    v17 = *(v10 + 16);
    v16 = v10 + 16;
    v18 = v1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v47 = *(v16 + 56);
    v48 = v17;
    v46 = (v4 + 88);
    v45 = *MEMORY[0x277D251A0];
    v43 = *MEMORY[0x277D25198];
    v41 = *MEMORY[0x277D251A8];
    v19 = (v4 + 8);
    v20 = MEMORY[0x277D84F90];
    v44 = v2;
    do
    {
      v48(v14, v18, v49);
      sub_237C0799C();
      v21 = (*v46)(v8, v2);
      if (v21 == v45)
      {
        v22 = sub_237C079CC();
        v24 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v20 = v37;
        }

        v25 = *(v20 + 16);
        if (v25 >= *(v20 + 24) >> 1)
        {
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v20 = v38;
        }

        v26 = OUTLINED_FUNCTION_120_1();
        v27(v26);
        *(v20 + 16) = v25 + 1;
        v28 = v20 + 16 * v25;
        *(v28 + 32) = v22;
        *(v28 + 40) = v24;
        v2 = v44;
      }

      else if (v21 == v43 || v21 == v41)
      {
        v42 = sub_237C079CC();
        v30 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v20 = v39;
        }

        v31 = *(v20 + 16);
        if (v31 >= *(v20 + 24) >> 1)
        {
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v20 = v40;
        }

        v32 = OUTLINED_FUNCTION_120_1();
        v33(v32);
        *(v20 + 16) = v31 + 1;
        v34 = v20 + 16 * v31;
        *(v34 + 32) = v42;
        *(v34 + 40) = v30;
      }

      else
      {
        v35 = OUTLINED_FUNCTION_120_1();
        v36(v35);
      }

      (*v19)(v8, v2);
      v18 += v47;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_150();
}

void sub_237BB43A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  a19 = v21;
  a20 = v22;
  v767 = v20;
  v780 = v24;
  v781 = v23;
  v25 = sub_237C0798C();
  v26 = OUTLINED_FUNCTION_0_26(v25, &v770);
  v761 = v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v28);
  v29 = sub_237C0773C();
  v30 = OUTLINED_FUNCTION_0_26(v29, &a9);
  v763[0] = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB48, &qword_237C15C18);
  OUTLINED_FUNCTION_20(v33);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_23();
  v778 = v35;
  OUTLINED_FUNCTION_41_0();
  sub_237C076FC();
  OUTLINED_FUNCTION_0();
  v775 = v37;
  v776 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_22();
  v777 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D818, &qword_237C14CF0);
  OUTLINED_FUNCTION_20(v39);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  OUTLINED_FUNCTION_0();
  v784 = v42;
  v785 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v45);
  v786 = sub_237C07A8C();
  OUTLINED_FUNCTION_0();
  v790 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_138();
  v779 = v107;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_138();
  v783 = v109;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_138();
  v782 = v111;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v117);
  v119 = &v749 - v118;
  MEMORY[0x28223BE20](v120);
  v122 = &v749 - v121;
  MEMORY[0x28223BE20](v123);
  MEMORY[0x28223BE20](v124);
  v126 = &v749 - v125;
  sub_237C0777C();
  sub_237BC108C();
  v128 = v127;
  v130 = *(v127 + 16);
  v129 = *(v127 + 24);
  if (v130 >= v129 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v129);
    sub_237BC108C();
    v128 = v680;
  }

  *(v128 + 16) = v130 + 1;
  v131 = *(v790 + 32);
  v787 = (*(v790 + 80) + 32) & ~*(v790 + 80);
  v788 = v131;
  v789 = *(v790 + 72);
  v790 += 32;
  (v131)(v128 + v787 + v789 * v130, v126, v786);
  OUTLINED_FUNCTION_153_1();
  sub_237C07A7C();
  OUTLINED_FUNCTION_80_6();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v681;
  }

  *(v128 + 16) = v126;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_53_14();
  v133();
  v764 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_237C0B680;
  *(v134 + 32) = 1;
  v135 = v767 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v768 = _s13GraphCNNModelVMa(0);
  v136 = v135;
  *(v134 + 40) = *(v135 + *(v768 + 40));
  *(v134 + 48) = -1;
  sub_237C076CC();

  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v682;
  }

  *(v128 + 16) = v134;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_76_7();
  v137();
  OUTLINED_FUNCTION_153_1();
  sub_237C0777C();
  OUTLINED_FUNCTION_113_2();
  if (v132)
  {
    OUTLINED_FUNCTION_61_10();
    v128 = v683;
  }

  OUTLINED_FUNCTION_112_0();
  v138 = v134 & 0xFFFFFFFFFFFFLL | 0x31000000000000;
  *(v128 + 16) = v122;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_76_7();
  v140 = v139();
  OUTLINED_FUNCTION_161_0(v140, v141, 3419768, v142, v143, v144, &unk_284ABECD8);
  OUTLINED_FUNCTION_113_2();
  if (v132)
  {
    OUTLINED_FUNCTION_61_10();
    v128 = v684;
  }

  *(v128 + 16) = v122;
  v145 = v787;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v146();
  v147 = v781 * v780;
  if ((v781 * v780) >> 64 == (v781 * v780) >> 63)
  {
    v119 = 3485304;
    sub_237C0774C();
    OUTLINED_FUNCTION_45_18();
    if (!v132)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_19_33();
  v128 = v685;
LABEL_13:
  *(v128 + 16) = v138;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v148();
  OUTLINED_FUNCTION_15_33();
  OUTLINED_FUNCTION_153_1();
  sub_237C07A7C();
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v686;
  }

  *(v128 + 16) = v138;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v149();
  OUTLINED_FUNCTION_153_1();
  sub_237C07A3C();
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v687;
  }

  *(v128 + 16) = v138;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v150();
  v151 = v772;
  OUTLINED_FUNCTION_153_1();
  sub_237C0768C();
  OUTLINED_FUNCTION_110_1();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v688;
  }

  v152 = v768;
  *(v128 + 16) = v138;
  OUTLINED_FUNCTION_76_7();
  v153();
  OUTLINED_FUNCTION_30_6();
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_237C0BC00;
  *(v154 + 32) = 1;
  *(v154 + 40) = *(v136 + *(v152 + 40));
  *(v154 + 48) = xmmword_237C15BD0;
  sub_237C076CC();

  OUTLINED_FUNCTION_113_2();
  if (v132)
  {
    OUTLINED_FUNCTION_61_10();
    v128 = v689;
  }

  OUTLINED_FUNCTION_112_0();
  *(v128 + 16) = v147;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v156 = v155();
  OUTLINED_FUNCTION_161_0(v156, v157, v119 + 1465, v158, v159, v160, &unk_284ABED80);
  OUTLINED_FUNCTION_80_6();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v690;
  }

  OUTLINED_FUNCTION_67_9();
  *(v128 + 16) = v151;
  OUTLINED_FUNCTION_101_1(v128 + v145);
  OUTLINED_FUNCTION_53_14();
  v161();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  v162 = v769;
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v691;
  }

  *(v128 + 16) = v151;
  OUTLINED_FUNCTION_76_7();
  v163();
  sub_237C079EC();
  v164 = *(v128 + 16);
  v165 = (v164 + 1);
  if (v164 >= *(v128 + 24) >> 1)
  {
    OUTLINED_FUNCTION_61_10();
    v128 = v692;
  }

  v166 = v162;
  *(v128 + 16) = v165;
  OUTLINED_FUNCTION_148_1(v128 + v145);
  OUTLINED_FUNCTION_76_7();
  v165();
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v167 = *MEMORY[0x277D25190];
  v168 = sub_237C077DC();
  OUTLINED_FUNCTION_4();
  v170 = *(v169 + 104);
  LODWORD(v781) = v167;
  v779 = v169 + 104;
  v780 = v170;
  v170(v166, v167, v168);
  v171 = OUTLINED_FUNCTION_30_24();
  v782 = v168;
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v168);
  v791 = v164;
  v792 = v164;
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_53_2();
  sub_237C07ACC();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_140_1();
  sub_237C0765C();
  v174 = v785 + 8;
  v175 = *(v785 + 8);
  v175(v168, v784);
  sub_2379D9054(v166, &qword_27DE9D818, &qword_237C14CF0);
  v176 = OUTLINED_FUNCTION_88_3();
  v785 = v174;
  v783 = v175;
  (v175)(v176);
  v177 = v168;
  if (*(v128 + 16) >= *(v128 + 24) >> 1)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v693;
  }

  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v178);
  OUTLINED_FUNCTION_76_7();
  v165();
  v179 = v775;
  v180 = *(v775 + 104);
  v181 = v777;
  LODWORD(v771) = *MEMORY[0x277D25170];
  v182 = v776;
  v772 = v775 + 104;
  v770 = v180;
  v180(v777);
  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_15_33();
  OUTLINED_FUNCTION_137_1(v183, v184);
  OUTLINED_FUNCTION_43_14();
  sub_237C0772C();
  v185 = OUTLINED_FUNCTION_50_15();
  *(v187 - 256) = v186;
  v190 = OUTLINED_FUNCTION_16_32(v185, v188, v189, v186);
  OUTLINED_FUNCTION_137_1(v190, v191);
  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_140_1();
  sub_237C079DC();
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_12();
  (v168)(v192, v193);
  sub_2379D9054(v168, &qword_27DE9DB48, &qword_237C15C18);
  v194 = OUTLINED_FUNCTION_150_1();
  (v168)(v194);
  v195 = *(v179 + 8);
  v775 = v179 + 8;
  v768 = v195;
  v195(v181, v182);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v694;
  }

  OUTLINED_FUNCTION_94_2();
  v196 = v168 & 0xFFFFFFFFFFFFLL | 0x37000000000000;
  OUTLINED_FUNCTION_59_13();
  v198 = OUTLINED_FUNCTION_148_1(v197);
  (v182)(v198, v177);
  OUTLINED_FUNCTION_72_10();
  v199 = MEMORY[0x277D83BA8];
  v200 = OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_125_1(v200, v201);
  v202 = v769;
  OUTLINED_FUNCTION_63_9();
  v203 = OUTLINED_FUNCTION_30_24();
  v206 = OUTLINED_FUNCTION_16_32(v203, v204, v205, v782);
  v207 = v774;
  OUTLINED_FUNCTION_91_3(v206, v208);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_21_35();
  sub_237C0765C();
  v209 = OUTLINED_FUNCTION_14_37();
  v210 = v783;
  v783(v209);
  sub_2379D9054(v202, &qword_27DE9D818, &qword_237C14CF0);
  v211 = OUTLINED_FUNCTION_88_3();
  v210(v211);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v695;
  }

  *(v128 + 16) = v199;
  OUTLINED_FUNCTION_70_8(v787);
  OUTLINED_FUNCTION_40_18();
  (v182)(v212, v213);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_140_1();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v696;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v214);
  OUTLINED_FUNCTION_40_18();
  (v182)(v215, v216);
  OUTLINED_FUNCTION_128_0();
  v217 = MEMORY[0x277D83B88];
  v218 = OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1(v218, v219);
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v222(v220, v221);
  v223 = OUTLINED_FUNCTION_30_24();
  v226 = OUTLINED_FUNCTION_16_32(v223, v224, v225, v196);
  OUTLINED_FUNCTION_91_3(v226, v227);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_21_35();
  sub_237C0765C();
  v228 = OUTLINED_FUNCTION_14_37();
  v229 = v783;
  v783(v228);
  sub_2379D9054(v202, &qword_27DE9D818, &qword_237C14CF0);
  v230 = OUTLINED_FUNCTION_88_3();
  v229(v230);
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v697;
  }

  v231 = v751;
  *(v128 + 16) = v217;
  OUTLINED_FUNCTION_155_1();
  (v182)(v232, v233);
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v698;
  }

  OUTLINED_FUNCTION_71_10();
  *(v128 + 16) = v217;
  OUTLINED_FUNCTION_53_14();
  v236 = (v182)(v234, v235);
  OUTLINED_FUNCTION_64_8(v236, v237, &unk_284ABEDC0);
  OUTLINED_FUNCTION_107_3();
  if (v132)
  {
    OUTLINED_FUNCTION_23_34(v238);
    sub_237BC108C();
    v128 = v699;
  }

  OUTLINED_FUNCTION_48_17();
  *(v128 + 16) = v231;
  OUTLINED_FUNCTION_70_8(v787);
  OUTLINED_FUNCTION_40_18();
  (v182)(v239, v240);
  OUTLINED_FUNCTION_85_6();
  OUTLINED_FUNCTION_52_17();
  sub_237C079EC();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v700;
  }

  OUTLINED_FUNCTION_67_9();
  v241 = (v182 & 0xFFFFFFFFFFFFLL | 0x3231000000000000);
  OUTLINED_FUNCTION_46_18();
  v243 = OUTLINED_FUNCTION_8_51(v242);
  v244(v243);
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v245 = v782;
  v780(v202, v781, v782);
  v246 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v246, v247, v248, v245);
  v791 = v217;
  v792 = v217;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_6_63();
  sub_237C0765C();
  v249 = OUTLINED_FUNCTION_14_37();
  v250 = v783;
  v783(v249);
  sub_2379D9054(v202, &qword_27DE9D818, &qword_237C14CF0);
  v251 = OUTLINED_FUNCTION_88_3();
  v250(v251);
  if (*(v128 + 16) >= *(v128 + 24) >> 1)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v701;
  }

  OUTLINED_FUNCTION_143_1();
  v252 = v207 & 0xFFFFFFFFFFFFLL | 0x3331000000000000;
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_76_7();
  v255(v253, v254);
  v256 = OUTLINED_FUNCTION_9_53();
  v257(v256);
  OUTLINED_FUNCTION_73_6();
  v258 = MEMORY[0x277D83B88];
  v259 = OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_137_1(v259, v260);
  OUTLINED_FUNCTION_43_14();
  v261 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v261, v263, v264, *(v262 - 256));
  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_137_1(v265, v266);
  OUTLINED_FUNCTION_6_63();
  sub_237C079DC();
  OUTLINED_FUNCTION_55_12();
  MEMORY[0x6C61756469736572](v267, v268);
  sub_2379D9054(v250, &qword_27DE9DB48, &qword_237C15C18);
  v269 = OUTLINED_FUNCTION_150_1();
  MEMORY[0x6C61756469736572](v269);
  v270 = OUTLINED_FUNCTION_37_16();
  v271(v270);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v702;
  }

  v272 = v752;
  OUTLINED_FUNCTION_48_17();
  *(v128 + 16) = v258;
  OUTLINED_FUNCTION_47_19(v787);
  OUTLINED_FUNCTION_155_1();
  v275(v273, v274);
  OUTLINED_FUNCTION_72_10();
  v276 = MEMORY[0x277D83BA8];
  v277 = OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_125_1(v277, v278);
  OUTLINED_FUNCTION_58_7();
  OUTLINED_FUNCTION_71();
  sub_237C077CC();
  OUTLINED_FUNCTION_80_0();
  v282 = OUTLINED_FUNCTION_16_32(v279, v280, v281, v782);
  OUTLINED_FUNCTION_125_1(v282, v283);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  OUTLINED_FUNCTION_49_12();
  v241(v284, v285);
  sub_2379D9054(v252, &qword_27DE9D818, &qword_237C14CF0);
  v286 = OUTLINED_FUNCTION_150_1();
  (v241)(v286);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v703;
  }

  v287 = v753;
  OUTLINED_FUNCTION_93_3();
  v289 = OUTLINED_FUNCTION_8_51(v288);
  v290(v289);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v704;
  }

  *(v128 + 16) = v276;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_76_7();
  v293(v291, v292);
  OUTLINED_FUNCTION_128_0();
  v294 = MEMORY[0x277D83B88];
  v295 = OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_125_1(v295, v296);
  OUTLINED_FUNCTION_58_7();
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v299(v297, v298);
  OUTLINED_FUNCTION_80_0();
  v303 = OUTLINED_FUNCTION_16_32(v300, v301, v302, v272);
  OUTLINED_FUNCTION_125_1(v303, v304);
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  OUTLINED_FUNCTION_49_12();
  v287(v305, v306);
  sub_2379D9054(v252, &qword_27DE9D818, &qword_237C14CF0);
  v307 = OUTLINED_FUNCTION_150_1();
  (v287)(v307);
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v705;
  }

  v308 = v756;
  v309 = v755;
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_126_0();
  v312(v310, v311);
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v706;
  }

  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_53_14();
  v316 = v315(v313, v314);
  OUTLINED_FUNCTION_64_8(v316, v317, &unk_284ABEE00);
  OUTLINED_FUNCTION_107_3();
  if (v132)
  {
    OUTLINED_FUNCTION_23_34(v318);
    sub_237BC108C();
    v128 = v707;
  }

  OUTLINED_FUNCTION_67_9();
  *(v128 + 16) = v309;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_40_18();
  v321(v319, v320);
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v708;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_76_7();
  v324(v322, v323);
  OUTLINED_FUNCTION_133_1();
  v325 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_74_9();
  sub_237C07ACC();
  OUTLINED_FUNCTION_58_7();
  sub_237C0762C();
  v326 = v782;
  v780(v308, v781, v782);
  OUTLINED_FUNCTION_69_9();
  __swift_storeEnumTagSinglePayload(v327, v328, v329, v330);
  v791 = v294;
  v792 = v294;
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  OUTLINED_FUNCTION_49_12();
  v326(v331, v332);
  sub_2379D9054(v308, &qword_27DE9D818, &qword_237C14CF0);
  v333 = OUTLINED_FUNCTION_150_1();
  (v326)(v333);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v709;
  }

  OUTLINED_FUNCTION_46_18();
  v335 = OUTLINED_FUNCTION_8_51(v334);
  v336(v335);
  v337 = OUTLINED_FUNCTION_9_53();
  v338(v337);
  OUTLINED_FUNCTION_73_6();
  v339 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v340 = OUTLINED_FUNCTION_50_15();
  v344 = OUTLINED_FUNCTION_16_32(v340, v342, v343, *(v341 - 256));
  v345 = v774;
  OUTLINED_FUNCTION_137_1(v344, v346);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_187(v347);
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_12();
  v345(v348, v349, v350, v351);
  sub_2379D9054(v325, &qword_27DE9DB48, &qword_237C15C18);
  v352 = OUTLINED_FUNCTION_88_3();
  (v345)(v352);
  v353 = OUTLINED_FUNCTION_37_16();
  v354(v353);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v710;
  }

  v355 = v757;
  v356 = v769;
  OUTLINED_FUNCTION_48_17();
  *(v128 + 16) = v339;
  OUTLINED_FUNCTION_47_19(v787);
  OUTLINED_FUNCTION_155_1();
  v361(v357, v358, v359, v360);
  OUTLINED_FUNCTION_72_10();
  v362 = MEMORY[0x277D83BA8];
  v363 = OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1(v363, v364);
  OUTLINED_FUNCTION_63_9();
  v365 = OUTLINED_FUNCTION_30_24();
  v368 = OUTLINED_FUNCTION_16_32(v365, v366, v367, v782);
  OUTLINED_FUNCTION_91_3(v368, v369);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v370 = OUTLINED_FUNCTION_14_37();
  v371 = v783;
  v783(v370);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v372 = OUTLINED_FUNCTION_88_3();
  v371(v372);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v711;
  }

  OUTLINED_FUNCTION_93_3();
  v374 = OUTLINED_FUNCTION_8_51(v373);
  v375(v374);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v712;
  }

  *(v128 + 16) = v362;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_76_7();
  v380(v376, v377, v378, v379);
  OUTLINED_FUNCTION_128_0();
  v381 = MEMORY[0x277D83B88];
  v382 = OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1(v382, v383);
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v388(v384, v385, v386, v387);
  v389 = OUTLINED_FUNCTION_30_24();
  v392 = OUTLINED_FUNCTION_16_32(v389, v390, v391, v355);
  OUTLINED_FUNCTION_91_3(v392, v393);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  v394 = OUTLINED_FUNCTION_14_37();
  v395 = v783;
  v783(v394);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v396 = OUTLINED_FUNCTION_88_3();
  (v395)(v396);
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v713;
  }

  v397 = v758;
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_126_0();
  v402(v398, v399, v400, v401);
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v714;
  }

  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_53_14();
  v408 = v407(v403, v404, v405, v406);
  OUTLINED_FUNCTION_64_8(v408, v409, &unk_284ABEE40);
  OUTLINED_FUNCTION_107_3();
  if (v132)
  {
    OUTLINED_FUNCTION_23_34(v410);
    sub_237BC108C();
    v128 = v715;
  }

  OUTLINED_FUNCTION_67_9();
  v411 = v395 & 0xFFFFFFFFFFFFLL | 0x3532000000000000;
  *(v128 + 16) = v397;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_40_18();
  v416(v412, v413, v414, v415);
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v716;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_46_18();
  v418 = OUTLINED_FUNCTION_8_51(v417);
  v419(v418);
  OUTLINED_FUNCTION_133_1();
  v420 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v421 = OUTLINED_FUNCTION_57_12();
  v422(v421);
  v423 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v423, v424, v425, v411);
  v791 = v381;
  v792 = v381;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v426 = OUTLINED_FUNCTION_14_37();
  v427 = v783;
  v783(v426);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v428 = OUTLINED_FUNCTION_88_3();
  v427(v428);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v717;
  }

  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_46_18();
  v430 = OUTLINED_FUNCTION_8_51(v429);
  v431(v430);
  v432 = OUTLINED_FUNCTION_9_53();
  v433(v432);
  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v434 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v434, v436, v437, *(v435 - 256));
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_137_1(v438, v439);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_187(v440);
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_12();
  (v345)(v441, v442, v443, v444, v445, v446);
  sub_2379D9054(v420, &qword_27DE9DB48, &qword_237C15C18);
  v447 = OUTLINED_FUNCTION_88_3();
  (v345)(v447);
  v448 = OUTLINED_FUNCTION_37_16();
  v449(v448);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v718;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_148_1(v450);
  OUTLINED_FUNCTION_155_1();
  (v427)(v451, v452, v453, v454, v455, v456);
  OUTLINED_FUNCTION_72_10();
  v457 = MEMORY[0x277D83BA8];
  v458 = OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1(v458, v459);
  v791 = 2;
  v792 = 2;
  v460 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_125_1(v460, v461);
  OUTLINED_FUNCTION_63_9();
  v462 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v462, v463, v464, v782);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v465 = OUTLINED_FUNCTION_31_23();
  v466 = v783;
  v783(v465);
  v467 = OUTLINED_FUNCTION_88_3();
  v466(v467);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v719;
  }

  *(v128 + 16) = v457;
  OUTLINED_FUNCTION_70_8(v787);
  OUTLINED_FUNCTION_38_20();
  (v427)(v468, v469);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v720;
  }

  OUTLINED_FUNCTION_94_2();
  *(v128 + 16) = v457;
  OUTLINED_FUNCTION_102_0(v128 + v787);
  OUTLINED_FUNCTION_40_18();
  (v427)(v470, v471);
  OUTLINED_FUNCTION_128_0();
  v472 = MEMORY[0x277D83B88];
  v473 = MEMORY[0x277D83BA8];
  v474 = OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1(v474, v475);
  v791 = 2;
  v792 = 2;
  v476 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_125_1(v476, v477);
  sub_237C0762C();
  v478 = OUTLINED_FUNCTION_149_1();
  v479(v478);
  v480 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v480, v481, v482, v472);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_115_1();
  sub_237C0765C();
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v483 = OUTLINED_FUNCTION_31_23();
  v484 = v783;
  v783(v483);
  v485 = OUTLINED_FUNCTION_88_3();
  v484(v485);
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v721;
  }

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_126_0();
  (v427)();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v722;
  }

  OUTLINED_FUNCTION_71_10();
  v486 = v473 & 0xFFFFFFFFFFFFLL | 0x3133000000000000;
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_126_0();
  v487 = (v427)();
  OUTLINED_FUNCTION_64_8(v487, v488, &unk_284ABEE80);
  v490 = *(v128 + 16);
  v489 = *(v128 + 24);
  v491 = v490 + 1;
  if (v490 >= v489 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v489);
    sub_237BC108C();
    v128 = v723;
  }

  OUTLINED_FUNCTION_67_9();
  *(v128 + 16) = v491;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_126_0();
  v492();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_80_6();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v724;
  }

  OUTLINED_FUNCTION_112_0();
  *(v128 + 16) = v486;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_126_0();
  v493();
  OUTLINED_FUNCTION_128_0();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v494();
  v495 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v495, v496, v497, v490 + 1);
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_53_2();
  sub_237C0765C();
  v498 = OUTLINED_FUNCTION_14_37();
  v499 = v783;
  v783(v498);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v500 = OUTLINED_FUNCTION_88_3();
  v499(v500);
  OUTLINED_FUNCTION_80_6();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v725;
  }

  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_59_13();
  v502 = OUTLINED_FUNCTION_101_1(v501);
  v503(v502, v491);
  v504 = v776;
  v505 = v777;
  OUTLINED_FUNCTION_33_25();
  v506();
  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  v507 = v778;
  sub_237C0771C();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_16_32(v508, v509, v510, v773);
  OUTLINED_FUNCTION_96_1();
  sub_237C07ACC();
  v749 = v499;
  v750 = v507;
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_173_0();
  sub_237C079DC();
  v511 = OUTLINED_FUNCTION_164();
  v512 = v784;
  v513 = v785;
  v514 = v783;
  (v783)(v511, v784);
  sub_2379D9054(v507, &qword_27DE9DB48, &qword_237C15C18);
  v514(v177, v512);
  (v768)(v505, v504);
  OUTLINED_FUNCTION_80_6();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v726;
  }

  OUTLINED_FUNCTION_94_2();
  v515 = v505 & 0xFFFFFFFFFFFFLL | 0x3533000000000000;
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_101_1(v516);
  OUTLINED_FUNCTION_155_1();
  v517();
  OUTLINED_FUNCTION_72_10();
  v518 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_63_9();
  v519 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v519, v520, v521, v782);
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_115_1();
  sub_237C0765C();
  v522 = OUTLINED_FUNCTION_14_37();
  v523 = v783;
  v783(v522);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v524 = OUTLINED_FUNCTION_88_3();
  (v523)(v524);
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v727;
  }

  *(v128 + 16) = v507;
  v525 = v787;
  (v788)(v128 + v787 + v518 * v789, v513, v786);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_39_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v728;
  }

  OUTLINED_FUNCTION_71_10();
  v526 = v518 & 0xFFFFFFFFFFFFLL | 0x3733000000000000;
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_53_14();
  v528 = v527();
  OUTLINED_FUNCTION_64_8(v528, v529, &unk_284ABEEC0);
  OUTLINED_FUNCTION_107_3();
  if (v132)
  {
    OUTLINED_FUNCTION_23_34(v530);
    sub_237BC108C();
    v128 = v729;
  }

  OUTLINED_FUNCTION_67_9();
  v531 = v523 & 0xFFFFFFFFFFFFLL | 0x3833000000000000;
  *(v128 + 16) = v515;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_40_18();
  v532();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v730;
  }

  *(v128 + 16) = v526;
  v533 = OUTLINED_FUNCTION_8_51(v128 + v525);
  v534(v533);
  OUTLINED_FUNCTION_133_1();
  v535 = MEMORY[0x277D83B88];
  v536 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v537 = OUTLINED_FUNCTION_57_12();
  v538(v537);
  v539 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v539, v540, v541, v531);
  v791 = v507;
  v792 = v507;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  v749 = v507;
  v750 = v177;
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  v542 = OUTLINED_FUNCTION_14_37();
  v543 = v783;
  v783(v542);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v544 = OUTLINED_FUNCTION_88_3();
  (v543)(v544);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v731;
  }

  *(v128 + 16) = v535;
  v545 = OUTLINED_FUNCTION_8_51(v128 + v525);
  v546(v545);
  v547 = OUTLINED_FUNCTION_9_53();
  v548(v547);
  OUTLINED_FUNCTION_73_6();
  v549 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v550 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v550, v552, v553, *(v551 - 256));
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_187(v554);
  v555 = OUTLINED_FUNCTION_31_23();
  v556 = v783;
  v783(v555);
  sub_2379D9054(v536, &qword_27DE9DB48, &qword_237C15C18);
  v557 = OUTLINED_FUNCTION_88_3();
  v556(v557);
  v558 = OUTLINED_FUNCTION_37_16();
  v559(v558);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v732;
  }

  OUTLINED_FUNCTION_48_17();
  *(v128 + 16) = v549;
  v560 = OUTLINED_FUNCTION_47_19(v787);
  v561(v560, v513);
  OUTLINED_FUNCTION_72_10();
  v562 = MEMORY[0x277D83BA8];
  v563 = OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_125_1(v563, v564);
  v791 = 2;
  v792 = 2;
  v565 = OUTLINED_FUNCTION_74_9();
  v566 = v774;
  OUTLINED_FUNCTION_91_3(v565, v567);
  OUTLINED_FUNCTION_63_9();
  v568 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v568, v569, v570, v782);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v571 = OUTLINED_FUNCTION_26_26();
  (v543)(v571);
  v572 = OUTLINED_FUNCTION_88_3();
  (v543)(v572);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v733;
  }

  OUTLINED_FUNCTION_93_3();
  OUTLINED_FUNCTION_148_1(v573);
  OUTLINED_FUNCTION_38_20();
  v543();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v734;
  }

  OUTLINED_FUNCTION_94_2();
  *(v128 + 16) = v562;
  v574 = v787;
  OUTLINED_FUNCTION_102_0(v128 + v787);
  OUTLINED_FUNCTION_40_18();
  v543();
  OUTLINED_FUNCTION_128_0();
  v575 = MEMORY[0x277D83B88];
  v576 = MEMORY[0x277D83BA8];
  v577 = OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1(v577, v578);
  v791 = 2;
  v792 = 2;
  v579 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_125_1(v579, v580);
  sub_237C0762C();
  v581 = OUTLINED_FUNCTION_149_1();
  v582(v581);
  v583 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v583, v584, v585, v575);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_115_1();
  sub_237C0765C();
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v586 = OUTLINED_FUNCTION_26_26();
  (v543)(v586);
  v587 = OUTLINED_FUNCTION_88_3();
  (v543)(v587);
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v735;
  }

  OUTLINED_FUNCTION_100();
  v588 = v788;
  OUTLINED_FUNCTION_126_0();
  v588();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v736;
  }

  OUTLINED_FUNCTION_71_10();
  v589 = v576 & 0xFFFFFFFFFFFFLL | 0x3434000000000000;
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_53_14();
  v590 = (v588)();
  OUTLINED_FUNCTION_64_8(v590, v591, &unk_284ABEF00);
  v593 = *(v128 + 16);
  v592 = *(v128 + 24);
  if (v593 >= v592 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v592);
    sub_237BC108C();
    v128 = v737;
  }

  OUTLINED_FUNCTION_48_17();
  *(v128 + 16) = v593 + 1;
  OUTLINED_FUNCTION_102_0(v128 + v574);
  OUTLINED_FUNCTION_40_18();
  v588();
  OUTLINED_FUNCTION_85_6();
  OUTLINED_FUNCTION_52_17();
  sub_237C079EC();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v738;
  }

  *(v128 + 16) = v589;
  OUTLINED_FUNCTION_102_0(v128 + v574);
  OUTLINED_FUNCTION_38_20();
  v588();
  OUTLINED_FUNCTION_133_1();
  v594 = MEMORY[0x277D83B88];
  v595 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_56_10();
  sub_237C07ACC();
  sub_237C0762C();
  v596 = OUTLINED_FUNCTION_57_12();
  v597(v596);
  v598 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v598, v599, v600, v588);
  v791 = v593;
  v792 = v593;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  v755 = v593;
  v756 = v574;
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  v601 = OUTLINED_FUNCTION_14_37();
  v602 = v783;
  v783(v601);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v603 = OUTLINED_FUNCTION_88_3();
  v602(v603);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v739;
  }

  *(v128 + 16) = v594;
  v604 = OUTLINED_FUNCTION_8_51(v128 + v574);
  v605(v604);
  v606 = OUTLINED_FUNCTION_9_53();
  v607(v606);
  OUTLINED_FUNCTION_73_6();
  v608 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v609 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v609, v611, v612, *(v610 - 256));
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  v753 = v566;
  v754 = v595;
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_187(v613);
  v614 = OUTLINED_FUNCTION_31_23();
  v615 = v783;
  v783(v614);
  sub_2379D9054(v595, &qword_27DE9DB48, &qword_237C15C18);
  v615(v574, v608);
  v616 = OUTLINED_FUNCTION_37_16();
  v617(v616);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v740;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_59_13();
  v619 = OUTLINED_FUNCTION_148_1(v618);
  (v602)(v619, v513);
  OUTLINED_FUNCTION_72_10();
  v620 = OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_125_1(v620, v621);
  OUTLINED_FUNCTION_63_9();
  v622 = OUTLINED_FUNCTION_30_24();
  v625 = OUTLINED_FUNCTION_16_32(v622, v623, v624, v782);
  v626 = v774;
  OUTLINED_FUNCTION_91_3(v625, v627);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v628 = OUTLINED_FUNCTION_14_37();
  v629 = v783;
  v783(v628);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v630 = OUTLINED_FUNCTION_88_3();
  (v629)(v630);
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v741;
  }

  OUTLINED_FUNCTION_94_2();
  v631 = v629 & 0xFFFFFFFFFFFFLL | 0x3934000000000000;
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v632);
  OUTLINED_FUNCTION_53_14();
  (v602)();
  OUTLINED_FUNCTION_115_1();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v742;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v633);
  OUTLINED_FUNCTION_40_18();
  (v602)();
  OUTLINED_FUNCTION_128_0();
  v634 = OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1(v634, v635);
  sub_237C0762C();
  v636 = OUTLINED_FUNCTION_57_12();
  v637(v636);
  v638 = OUTLINED_FUNCTION_30_24();
  v641 = OUTLINED_FUNCTION_16_32(v638, v639, v640, v602);
  OUTLINED_FUNCTION_91_3(v641, v642);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v643 = v784;
  v644 = v783;
  (v783)(v626, v784);
  sub_2379D9054(v356, &qword_27DE9D818, &qword_237C14CF0);
  v645 = OUTLINED_FUNCTION_88_3();
  v644(v645);
  OUTLINED_FUNCTION_110_1();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v743;
  }

  *(v128 + 16) = v643;
  OUTLINED_FUNCTION_76_7();
  v646();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_45_18();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
    v128 = v744;
  }

  v647 = v759;
  OUTLINED_FUNCTION_67_9();
  *(v128 + 16) = v643;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_40_18();
  v648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v649 = swift_allocObject();
  v650 = sub_237B90CB4(v649, 2);
  *v651 = v631;
  v651[1] = 0xE800000000000000;
  v651[2] = 0x6C61756469736572;
  v651[3] = 0xE800000000000000;
  sub_237C0797C();

  v653 = *(v128 + 16);
  v652 = *(v128 + 24);
  if (v653 >= v652 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v652);
    sub_237BC108C();
    v128 = v745;
  }

  OUTLINED_FUNCTION_71_10();
  v654 = v650 & 0xFFFFFFFFFFFFLL | 0x3235000000000000;
  *(v128 + 16) = v653 + 1;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_40_18();
  v655();
  sub_237C079EC();
  v656 = *(v128 + 16);
  if (v656 >= *(v128 + 24) >> 1)
  {
    OUTLINED_FUNCTION_61_10();
    v128 = v746;
  }

  *(v128 + 16) = v656 + 1;
  v657 = OUTLINED_FUNCTION_101_1(v128 + v787);
  v658(v657, v647);
  OUTLINED_FUNCTION_33_25();
  v659();
  v791 = 0;
  v792 = 0;
  v660 = MEMORY[0x277D83B88];
  v661 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_24_33();
  sub_237C07ACC();
  v791 = 0;
  v792 = 0;
  OUTLINED_FUNCTION_29_20();
  sub_237C07ACC();
  v662 = v778;
  sub_237C0762C();
  OUTLINED_FUNCTION_24_25();
  (*(*(v663 - 8) + 104))(v662);
  OUTLINED_FUNCTION_69_9();
  __swift_storeEnumTagSinglePayload(v664, v665, v666, v667);
  OUTLINED_FUNCTION_24_25();
  sub_237C0770C();
  sub_237C076EC();
  sub_237C076DC();
  OUTLINED_FUNCTION_29_4();
  v668 = swift_allocObject();
  sub_237B90CB4(v668, 1);
  *v669 = v654;
  v669[1] = 0xE800000000000000;
  OUTLINED_FUNCTION_29_4();
  v670 = swift_allocObject();
  sub_237B90CB4(v670, 1);
  *v671 = 3681912;
  v671[1] = 0xE300000000000000;
  OUTLINED_FUNCTION_53_2();
  v673 = v760;
  (*(v672 + 16))(v760, v660, v766);
  (*(v761 + 104))(v673, *MEMORY[0x277D251B8], v762);
  OUTLINED_FUNCTION_24_25();
  sub_237C079BC();
  OUTLINED_FUNCTION_80_6();
  if (v132)
  {
    OUTLINED_FUNCTION_12_50();
    v128 = v747;
  }

  OUTLINED_FUNCTION_112_0();
  *(v128 + 16) = v673;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_53_14();
  v674();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_29_4();
  v675 = swift_allocObject();
  sub_237B90CB4(v675, 2);
  *v676 = xmmword_237C15BE0;
  sub_237C076CC();

  OUTLINED_FUNCTION_113_2();
  if (v132)
  {
    OUTLINED_FUNCTION_61_10();
    v128 = v748;
  }

  *(v128 + 16) = v660;
  OUTLINED_FUNCTION_76_7();
  v677();
  sub_237A906D4(*(v767 + 16));
  sub_237C0768C();
  OUTLINED_FUNCTION_110_1();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
  }

  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_76_7();
  v678();
  sub_237C07A6C();
  OUTLINED_FUNCTION_110_1();
  if (v132)
  {
    OUTLINED_FUNCTION_19_33();
  }

  (*(v661 + 8))(v765, v766);
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_76_7();
  v679();
  OUTLINED_FUNCTION_150();
}

void *sub_237BB7C18(uint64_t a1)
{
  v2 = sub_237C085AC();
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {
      return v2;
    }

    v7 = *(i - 1);
    v6 = *i;

    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_237ACAC78(v7, v6);
    if (__OFADD__(v2[2], (v9 & 1) == 0))
    {
      break;
    }

    v10 = v8;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
    if (sub_237C090AC())
    {
      v12 = sub_237ACAC78(v7, v6);
      if ((v11 & 1) != (v13 & 1))
      {
        goto LABEL_15;
      }

      v10 = v12;
    }

    if (v11)
    {

      *(v2[7] + 8 * v10) = v3;
    }

    else
    {
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v14 = (v2[6] + 16 * v10);
      *v14 = v7;
      v14[1] = v6;
      *(v2[7] + 8 * v10) = v3;
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_14;
      }

      v2[2] = v17;
    }

    ++v3;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237BB7DB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB20, &qword_237C15BF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v117 - v1;
  v3 = sub_237C0638C();
  v171 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_237C0790C();
  v170 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB28, &qword_237C15BF8);
  MEMORY[0x28223BE20](v9 - 8);
  v124 = &v117 - v10;
  v130 = sub_237C0697C();
  v169 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v131 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_237C0796C();
  v168 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v132 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB30, &qword_237C15C00);
  MEMORY[0x28223BE20](v13 - 8);
  v134 = &v117 - v14;
  v133 = sub_237C065CC();
  v142 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v147 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_237C0788C();
  v141 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_237C0798C();
  v17 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v155 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v167 = &v117 - v20;
  v174 = sub_237C07A8C();
  v165 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v163 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v164 = &v117 - v23;
  sub_237BB43A0(3, 21, v24, v25, v26, v27, v28, v29, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  v31 = v30;

  sub_237BB4078();
  v33 = v32;
  v157 = sub_237BB7C18(v32);
  sub_237BAFD70(v157, v34, v35, v36, v37, v38, v39, v40, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  v42 = v41;
  v43 = *(v31 + 16);
  v173 = v31;

  v162 = v43;
  if (!v43)
  {
LABEL_47:

    return v173;
  }

  v150 = v33;
  v161 = v165 + 8;
  v160 = (v17 + 88);
  v123 = (v17 + 8);
  v166 = *MEMORY[0x277D251A0];
  v154 = (v17 + 96);
  v122 = (v168 + 32);
  v151 = *MEMORY[0x277D25198];
  v156 = v42;
  v153 = v42 + 32;
  v121 = (v169 + 32);
  v137 = *MEMORY[0x277D251A8];
  v120 = (v168 + 16);
  v152 = (v17 + 104);
  v44 = 0;
  v119 = (v169 + 8);
  v118 = (v168 + 8);
  v129 = (v141 + 4);
  v128 = (v142 + 4);
  v127 = (v141 + 2);
  v126 = (v142 + 1);
  v125 = (v141 + 1);
  v142 = (v170 + 32);
  v141 = (v171 + 32);
  v140 = (v170 + 16);
  v139 = (v171 + 8);
  v138 = (v170 + 8);
  v45 = v174;
  v46 = v165;
  v146 = v6;
  v159 = v8;
  v145 = v5;
  v144 = v3;
  v158 = v165 + 16;
  v143 = v2;
  while (1)
  {
    v47 = v173;
    if (v44 >= *(v173 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v175 = 0;
      v176 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000003FLL, 0x8000000237C1EBD0);
      MEMORY[0x2383DC360](v169, v47);
      MEMORY[0x2383DC360](0x65726F63206E6920, 0xEF63657073206C6DLL);
      goto LABEL_69;
    }

    v168 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = v173 + v168;
    v49 = *(v46 + 72) * v44;
    v50 = *(v46 + 16);
    v51 = v164;
    v52 = v46;
    v50(v164, v173 + v168 + v49, v45);
    v53 = sub_237C079CC();
    v54 = v174;
    v169 = v53;
    v171 = v55;
    v56 = *(v52 + 8);
    v56(v51, v174);
    v57 = *(v47 + 16);
    v170 = v44;
    if (v44 >= v57)
    {
      goto LABEL_49;
    }

    v58 = v163;
    v50(v163, v48 + v49, v54);
    v59 = v167;
    sub_237C0799C();
    v45 = v174;
    v56(v58, v174);
    v60 = v172;
    v61 = (*v160)(v59, v172);
    if (v61 != v166)
    {
      break;
    }

    (*v154)(v59, v60);
    v62 = v146;
    (*v142)(v159, v59, v146);
    v63 = v157;
    v64 = v143;
    v65 = v144;
    v47 = v171;
    if (!v157[2])
    {
      goto LABEL_63;
    }

    v66 = sub_237ACAC78(v169, v171);
    if ((v67 & 1) == 0)
    {
      goto LABEL_63;
    }

    v68 = *(v63[7] + 8 * v66);
    v69 = v145;
    v70 = v173;
    v71 = v150;
    if ((v68 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    if (v68 >= *(v156 + 16))
    {
      goto LABEL_51;
    }

    sub_2379E8624(v153 + 40 * v68, &v175);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v65);
      sub_2379D9054(v64, &qword_27DE9DB20, &qword_237C15BF0);
      v175 = 0;
      v176 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000040, 0x8000000237C1E770);
      MEMORY[0x2383DC360](v169, v47);
      MEMORY[0x2383DC360](0x65726F63206E6920, 0xEF63657073206C6DLL);
      goto LABEL_69;
    }

    __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
    (*v141)(v69, v64, v65);
    v72 = *(v71 + 16) - 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v159;
    if (v68 == v72)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237B05F34(v70, v74, v75, v76);
        v70 = v112;
      }

      v47 = v170;
      if (v170 >= *(v70 + 16))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237B05F34(v70, v74, v75, v76);
        v70 = v114;
      }

      v47 = v170;
      if (v170 >= *(v70 + 16))
      {
        goto LABEL_56;
      }
    }

    sub_237BB9744();
    v110 = v155;
    (*v140)(v155, v77, v62);
    (*v152)(v110, v166, v172);
    if (v47 >= *(v70 + 16))
    {
      goto LABEL_52;
    }

    v111 = v47;
    v173 = v70;
    sub_237C079AC();
    (*v139)(v69, v65);
    (*v138)(v77, v62);
    v45 = v174;
LABEL_46:
    v44 = v111 + 1;
    v46 = v165;
    if (v162 == v44)
    {
      goto LABEL_47;
    }
  }

  v47 = v171;
  if (v61 == v151)
  {
    v78 = v167;
    (*v154)(v167, v172);
    (*v129)(v148, v78, v149);
    v79 = v157;
    if (!v157[2] || (v80 = sub_237ACAC78(v169, v47), (v81 & 1) == 0))
    {
      v175 = 0;
      v176 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000003ELL, 0x8000000237C1EC90);
      MEMORY[0x2383DC360](v169, v47);
      MEMORY[0x2383DC360](0x65726F63206E6920, 0xEF63657073206C6DLL);
      goto LABEL_69;
    }

    v82 = *(v79[7] + 8 * v80);
    v83 = v134;
    v47 = v133;
    v84 = v173;
    v85 = v170;
    if ((v82 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    if (v82 >= *(v156 + 16))
    {
      goto LABEL_54;
    }

    sub_2379E8624(v153 + 40 * v82, &v175);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v83, 1, 1, v47);
      sub_2379D9054(v83, &qword_27DE9DB30, &qword_237C15C00);
      v175 = 0;
      v176 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000003FLL, 0x8000000237C1E930);
      MEMORY[0x2383DC360](v169, v171);
      MEMORY[0x2383DC360](0x65726F63206E6920, 0xEF63657073206C6DLL);
      goto LABEL_69;
    }

    __swift_storeEnumTagSinglePayload(v83, 0, 1, v47);
    (*v128)(v147, v83, v47);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v149;
    if ((v86 & 1) == 0)
    {
      sub_237B05F34(v84, v87, v88, v89);
      v84 = v113;
    }

    v91 = v155;
    v92 = v85 >= *(v84 + 16);
    v93 = v85;
    v94 = v147;
    v95 = v148;
    if (v92)
    {
      goto LABEL_55;
    }

    sub_237BB91B4();
    (*v127)(v91, v95, v90);
    (*v152)(v91, v151, v172);
    if (v93 >= *(v84 + 16))
    {
      goto LABEL_58;
    }

    v173 = v84;
    sub_237C079AC();
    (*v126)(v94, v47);
    (*v125)(v95, v90);
    goto LABEL_39;
  }

  v136 = v49;
  v96 = v135;
  if (v61 != v137)
  {

    (*v123)(v167, v172);
LABEL_45:
    v111 = v170;
    goto LABEL_46;
  }

  v97 = v167;
  (*v154)(v167, v172);
  (*v122)(v132, v97, v96);
  v98 = v157;
  if (!v157[2] || (v99 = sub_237ACAC78(v169, v47), (v100 & 1) == 0))
  {
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003CLL, 0x8000000237C1EC10);
    MEMORY[0x2383DC360](v169, v47);
    MEMORY[0x2383DC360](0x65726F63206E6920, 0xEF63657073206C6DLL);
    goto LABEL_69;
  }

  v101 = *(v98[7] + 8 * v99);
  v102 = v124;
  v103 = v173;
  if ((v101 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (v101 >= *(v156 + 16))
  {
    goto LABEL_60;
  }

  sub_2379E8624(v153 + 40 * v101, &v175);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
  v47 = v130;
  if (swift_dynamicCast())
  {

    __swift_storeEnumTagSinglePayload(v102, 0, 1, v47);
    (*v121)(v131, v102, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237B05F34(v103, v104, v105, v106);
      v103 = v115;
    }

    v107 = v155;
    v108 = v170;
    v109 = v132;
    if (v170 >= *(v103 + 16))
    {
      goto LABEL_61;
    }

    v47 = v131;
    sub_237BB9534();
    (*v120)(v107, v109, v96);
    (*v152)(v107, v137, v172);
    if (v108 >= *(v103 + 16))
    {
      goto LABEL_62;
    }

    v173 = v103;
    sub_237C079AC();
    (*v119)(v47, v130);
    (*v118)(v109, v96);
LABEL_39:
    v45 = v174;
    goto LABEL_45;
  }

  __swift_storeEnumTagSinglePayload(v102, 1, 1, v47);
  sub_2379D9054(v102, &qword_27DE9DB28, &qword_237C15BF8);
  v175 = 0;
  v176 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000003DLL, 0x8000000237C1EC50);
  MEMORY[0x2383DC360](v169, v171);
  MEMORY[0x2383DC360](0x65726F63206E6920, 0xEF63657073206C6DLL);
LABEL_69:
  result = sub_237C090DC();
  __break(1u);
  return result;
}

void sub_237BB91B4()
{
  OUTLINED_FUNCTION_153();
  v24 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  v23 = OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v13 = sub_237C0781C();
  if (v13 == MEMORY[0x2383DA0D0]())
  {
    sub_237C0658C();
    sub_237C067EC();
    v14 = OUTLINED_FUNCTION_156_0();
    v1(v14);
    OUTLINED_FUNCTION_85();
    sub_237C0760C();
    OUTLINED_FUNCTION_151_1();
    sub_237C0786C();
    if (v24)
    {
      sub_237C0654C();
      if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
      {
        sub_2379D9054(v0, &qword_27DE9B410, &qword_237C0CCC8);
      }

      else
      {
        v15 = OUTLINED_FUNCTION_154_0();
        v16(v15);
        sub_237C067EC();
        sub_237C0760C();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v23);
        OUTLINED_FUNCTION_151_1();
        sub_237C0783C();
        (v1)(v4, v9);
      }
    }

    OUTLINED_FUNCTION_150();
  }

  else
  {
    sub_237C08EDC();
    v20 = MEMORY[0x2383DC360](0xD00000000000003BLL, 0x8000000237C1ECD0);
    MEMORY[0x2383DA0D0](v20);
    v21 = OUTLINED_FUNCTION_132_1();
    MEMORY[0x2383DC360](v21);

    MEMORY[0x2383DC360](0xD00000000000001ALL, 0x8000000237C1ED10);
    sub_237C0781C();
    v22 = OUTLINED_FUNCTION_132_1();
    MEMORY[0x2383DC360](v22);

    MEMORY[0x2383DC360](0x6C656E6E61686320, 0xEA00000000002E73);
    OUTLINED_FUNCTION_108_2();
    sub_237C090DC();
    __break(1u);
  }
}

void sub_237BB9534()
{
  OUTLINED_FUNCTION_153();
  v0 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  sub_237C0690C();
  OUTLINED_FUNCTION_183_0();
  sub_237C067EC();
  v9 = *(v2 + 8);
  v9(v6, v0);
  OUTLINED_FUNCTION_85();
  sub_237C0760C();
  sub_237C075FC();
  v10 = OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_135_0(v10, v11, v12);
  sub_237C0793C();
  OUTLINED_FUNCTION_167();
  sub_237C0692C();
  OUTLINED_FUNCTION_183_0();
  sub_237C067EC();
  v13 = OUTLINED_FUNCTION_144_1();
  (v9)(v13);
  OUTLINED_FUNCTION_85();
  sub_237C0760C();
  v14 = OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_135_0(v14, v15, v16);
  sub_237C0794C();
  OUTLINED_FUNCTION_167();
  sub_237C068BC();
  OUTLINED_FUNCTION_183_0();
  sub_237C067EC();
  v17 = OUTLINED_FUNCTION_144_1();
  (v9)(v17);
  OUTLINED_FUNCTION_85();
  sub_237C0760C();
  v18 = OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_135_0(v18, v19, v20);
  sub_237C0792C();
  OUTLINED_FUNCTION_167();
  sub_237C068DC();
  OUTLINED_FUNCTION_183_0();
  sub_237C067EC();
  v21 = OUTLINED_FUNCTION_144_1();
  (v9)(v21);
  OUTLINED_FUNCTION_85();
  sub_237C0760C();
  v22 = OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_135_0(v22, v23, v24);
  sub_237C0795C();
  OUTLINED_FUNCTION_150();
}

void sub_237BB9744()
{
  OUTLINED_FUNCTION_153();
  v23 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  v22 = OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v13 = sub_237C078CC();
  if (v13 == sub_237C0637C())
  {
    sub_237C0634C();
    sub_237C067EC();
    v14 = OUTLINED_FUNCTION_156_0();
    v1(v14);
    OUTLINED_FUNCTION_85();
    sub_237C0760C();
    OUTLINED_FUNCTION_151_1();
    sub_237C078FC();
    if (v23)
    {
      sub_237C0631C();
      if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
      {
        sub_2379D9054(v0, &qword_27DE9B410, &qword_237C0CCC8);
      }

      else
      {
        v15 = OUTLINED_FUNCTION_154_0();
        v16(v15);
        sub_237C067EC();
        sub_237C0760C();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v22);
        OUTLINED_FUNCTION_151_1();
        sub_237C078DC();
        (v1)(v4, v9);
      }
    }

    OUTLINED_FUNCTION_150();
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000041, 0x8000000237C1ED30);
    sub_237C0637C();
    v20 = OUTLINED_FUNCTION_132_1();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1ED80);
    sub_237C078CC();
    v21 = OUTLINED_FUNCTION_132_1();
    MEMORY[0x2383DC360](v21);

    OUTLINED_FUNCTION_108_2();
    sub_237C090DC();
    __break(1u);
  }
}

id sub_237BB9AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_237C086BC();

  v7 = sub_237C086BC();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_237BB9B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_0_87()
{
  v1 = *(v0 - 280);
  *(v0 - 288) = *(v0 - 288);
  *(v0 - 280) = v1;
}

void OUTLINED_FUNCTION_12_50()
{

  sub_237BC108C();
}

void OUTLINED_FUNCTION_15_42()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_16_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  *(v5 - 128) = v4;
  *(v5 - 120) = v4;
  return v5 - 120;
}

void OUTLINED_FUNCTION_19_33()
{

  sub_237BC108C();
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_43_14()
{

  return sub_237C0771C();
}

void OUTLINED_FUNCTION_61_10()
{

  sub_237BC108C();
}

uint64_t OUTLINED_FUNCTION_63_9()
{

  return sub_237C077CC();
}

uint64_t OUTLINED_FUNCTION_64_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237C0797C();
}

uint64_t OUTLINED_FUNCTION_75_5(uint64_t a1)
{

  return sub_237C085AC();
}

uint64_t OUTLINED_FUNCTION_78_6()
{

  return sub_237C079EC();
}

uint64_t OUTLINED_FUNCTION_91_3(uint64_t a1, uint64_t a2)
{

  return sub_237C07ACC();
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237C0678C();
}

uint64_t OUTLINED_FUNCTION_125_1(uint64_t a1, uint64_t a2)
{

  return sub_237C07ACC();
}

void OUTLINED_FUNCTION_130_1()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_131_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_132_1()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_137_1(uint64_t a1, uint64_t a2)
{

  return sub_237C07ACC();
}

uint64_t OUTLINED_FUNCTION_145_0()
{
}

uint64_t OUTLINED_FUNCTION_146_0()
{
}

uint64_t OUTLINED_FUNCTION_147_1()
{
}

uint64_t OUTLINED_FUNCTION_161_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_237C07A7C();
}