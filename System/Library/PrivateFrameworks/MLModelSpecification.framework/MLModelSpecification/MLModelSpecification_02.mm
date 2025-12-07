void sub_257478DB4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_426();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(v7);
  OUTLINED_FUNCTION_63();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_196();
  v65 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C70, &qword_257744588);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_196();
  v66 = v18;
  if (v2 != v6 && *(v2 + 16) == *(v6 + 16))
  {
    v19 = 0;
    v64 = v2;
    v20 = v2 + 64;
    OUTLINED_FUNCTION_27_0();
    v23 = v22 >> 6;
    v67 = v4;
    while (v21)
    {
      OUTLINED_FUNCTION_77();
      v68 = v24;
      v26 = v25 | (v19 << 6);
LABEL_10:
      v29 = (*(v64 + 48) + 16 * v26);
      v31 = *v29;
      v30 = v29[1];
      OUTLINED_FUNCTION_251();
      sub_257483824(v32);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C78, &unk_257744590);
      *v67 = v31;
      v67[1] = v30;
      v4 = v67;
      OUTLINED_FUNCTION_250();
      sub_2574792EC(v65);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);

LABEL_11:
      sub_257487240(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C78, &unk_257744590);
      OUTLINED_FUNCTION_42_0(v66);
      if (v61)
      {
        goto LABEL_44;
      }

      v37 = v11;
      v38 = *v66;
      v39 = v66[1];
      OUTLINED_FUNCTION_250();
      sub_2574792EC(v41 + v40);
      sub_25765368C(v38, v39);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_251();
      v11 = v37;
      sub_257483824(v44);
      v45 = *(v3 + 16);
      if (*(v37 + 16) == 255)
      {
        if (v45 != 255)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v45 == 255)
        {
          goto LABEL_42;
        }

        v49 = *v37;
        v50 = *v3;
        switch(*(v37 + 16))
        {
          case 1:
            if (v45 != 1)
            {
              goto LABEL_42;
            }

            v61 = *&v49 == *&v50 && *(v37 + 8) == *(v3 + 8);
            if (!v61 && (sub_257743994() & 1) == 0)
            {
              goto LABEL_42;
            }

            break;
          case 2:
            if (v45 != 2)
            {
              goto LABEL_42;
            }

            v59 = OUTLINED_FUNCTION_422();
            sub_257486714(v59, v60, 2);
            if (LODWORD(v49) != LODWORD(v50))
            {
              goto LABEL_42;
            }

            break;
          case 3:
            if (v45 != 3)
            {
              goto LABEL_42;
            }

            if (*&v49 != *&v50)
            {
              goto LABEL_41;
            }

            sub_257486714(*v37, *(v3 + 8), 3);
            break;
          case 4:
            if (v45 != 4)
            {
              goto LABEL_42;
            }

            v57 = OUTLINED_FUNCTION_422();
            sub_257486714(v57, v58, 4);
            if ((LODWORD(v50) ^ LODWORD(v49)))
            {
              goto LABEL_42;
            }

            break;
          default:
            if (*(v3 + 16))
            {
              goto LABEL_42;
            }

            v51 = OUTLINED_FUNCTION_422();
            sub_257486714(v51, v52, 0);
            if (v49 != v50)
            {
              goto LABEL_42;
            }

            break;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v46, MEMORY[0x277D216D0]);
      v47 = sub_257743644();
      sub_257479298(v37);
      v48 = OUTLINED_FUNCTION_412();
      sub_257479298(v48);
      v4 = v67;
      v21 = v68;
      if ((v47 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C78, &unk_257744590);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
        v68 = 0;
        goto LABEL_11;
      }

      ++v19;
      if (*(v20 + 8 * v27))
      {
        OUTLINED_FUNCTION_134();
        v68 = v28;
        OUTLINED_FUNCTION_400();
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_41:
    v62 = OUTLINED_FUNCTION_422();
    sub_257486714(v62, v63, 3);
LABEL_42:
    sub_257479298(v11);
LABEL_43:
    sub_257479298(v3);
  }

LABEL_44:
  OUTLINED_FUNCTION_427();
}

uint64_t sub_257479298(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_376();
  v3(v2);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_2574792EC(uint64_t a1)
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v1;
}

void sub_257479344()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_FeatureVectorizer.InputColumn(v5);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_43_0();
  if (v10 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_222();
      sub_257483824(v8);
      v9 = OUTLINED_FUNCTION_229();
      sub_257483824(v9);
      v10 = *v2 == *v1 && v2[1] == v1[1];
      if (!v10 && (sub_257743994() & 1) == 0 || v2[2] != v1[2])
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v12 = sub_257483ACC(&qword_27F879B68, v11, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_192(v12);
      sub_257479298(v1);
      v14 = OUTLINED_FUNCTION_252();
      sub_257479298(v14);
      if (v13)
      {
        OUTLINED_FUNCTION_67();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_257479298(v1);
    v15 = OUTLINED_FUNCTION_204();
    sub_257479298(v15);
  }

LABEL_18:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_257479510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_433();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = OUTLINED_FUNCTION_257();
  v24 = type metadata accessor for Proto_PrecisionRecallCurve(v23) - 8;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_62();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *(v18 + 16);
  if (v31 == *(v22 + 16) && v31 && v18 != v22)
  {
    OUTLINED_FUNCTION_61();
    v33 = v18 + v32;
    v34 = v22 + v32;
    v36 = *(v35 + 72);
    do
    {
      v37 = OUTLINED_FUNCTION_173();
      sub_257483824(v37);
      v38 = OUTLINED_FUNCTION_204();
      sub_257483824(v38);
      v39 = _s20MLModelSpecification20PrecisionRecallCurveV2eeoiySbAC_ACtFZ_0(v30, v27);
      sub_257479298(v27);
      v40 = OUTLINED_FUNCTION_373();
      sub_257479298(v40);
      if ((v39 & 1) == 0)
      {
        break;
      }

      v34 += v36;
      v33 += v36;
      --v31;
    }

    while (v31);
  }

  OUTLINED_FUNCTION_434();
}

void sub_2574796A0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_267();
  v5 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_363(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v54 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_62();
  v55 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_282();
  v18 = *(v1 + 16);
  if (v18 != *(v0 + 16) || !v18 || v1 == v0)
  {
    goto LABEL_21;
  }

  v43 = v2;
  v44 = v3;
  v46 = v4;
  v47 = v5;
  OUTLINED_FUNCTION_61();
  v20 = v1 + v19;
  v21 = v0 + v19;
  v23 = *(v22 + 72);
  v49 = v13;
  v50 = v23;
  v24 = v48;
  while (1)
  {
    sub_257483824(v20);
    v25 = v55;
    sub_257483824(v21);
    v26 = *(v54 + 20);
    v27 = *(v4 + v26);
    v28 = *(v25 + v26);
    if (v27 == v28)
    {
      goto LABEL_14;
    }

    v52 = v20;
    v25 = v24;
    v29 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
    OUTLINED_FUNCTION_296(v27 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v57);
    sub_257487308(v27 + v29);
    v30 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
    OUTLINED_FUNCTION_296(v28 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v56);
    v31 = *(v51 + 48);
    OUTLINED_FUNCTION_388(v13);
    OUTLINED_FUNCTION_388(v28 + v30);
    OUTLINED_FUNCTION_142(v25, 1);
    v53 = v27;
    if (v36)
    {

      sub_2574695E4(v13, &qword_27F879D40, &qword_257744660);
      OUTLINED_FUNCTION_65(v25 + v31);
      v4 = v46;
      v32 = v25;
      if (!v36)
      {
        goto LABEL_18;
      }

      v33 = OUTLINED_FUNCTION_368();
      sub_2574695E4(v33, v34, &qword_257744660);
      goto LABEL_13;
    }

    v35 = v44;
    OUTLINED_FUNCTION_388(v25);
    OUTLINED_FUNCTION_65(v25 + v31);
    if (v36)
    {
      break;
    }

    OUTLINED_FUNCTION_49();
    v37 = v43;
    sub_2574792EC(v25 + v31);

    OUTLINED_FUNCTION_365();
    sub_2574DDF3C();
    v45 = v38;
    OUTLINED_FUNCTION_245();
    v25 = v48;
    sub_257479298(v37);
    sub_2574695E4(v49, &qword_27F879D40, &qword_257744660);
    v39 = OUTLINED_FUNCTION_228();
    sub_257479298(v39);
    sub_2574695E4(v25, &qword_27F879D40, &qword_257744660);
    v4 = v46;
    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:

    v13 = v49;
    v20 = v52;
LABEL_14:
    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    sub_257483ACC(&qword_27F879B68, v40, MEMORY[0x277D216D0]);
    if ((sub_257743644() & 1) == 0)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_243();
    sub_257479298(v55);
    v41 = OUTLINED_FUNCTION_165();
    v24 = v25;
    sub_257479298(v41);
    v21 += v50;
    v20 += v50;
    if (!--v18)
    {
      goto LABEL_21;
    }
  }

  sub_2574695E4(v49, &qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_48();
  sub_257479298(v35);
  v32 = v25;
LABEL_18:
  sub_2574695E4(v32, &qword_27F879D38, &qword_25774F300);
LABEL_19:

LABEL_20:
  OUTLINED_FUNCTION_244();
  sub_257479298(v55);
  v42 = OUTLINED_FUNCTION_165();
  sub_257479298(v42);
LABEL_21:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257479B60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257479BB4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257479C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_257479C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_257479D04(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_257479D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = OUTLINED_FUNCTION_376();
  v136 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = v120 - v31;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB0, &unk_25774F360);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_31_0();
  v130 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_198();
  v129 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v42 = OUTLINED_FUNCTION_13(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_196();
  v133 = v44;
  v45 = OUTLINED_FUNCTION_153();
  v139 = type metadata accessor for Proto_MILSpec_ValueType(v45);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_1();
  v137 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v48);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_198();
  v134 = v50;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_198();
  v141 = v52;
  v53 = OUTLINED_FUNCTION_153();
  v142 = type metadata accessor for Proto_MILSpec_Value(v53);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_62();
  v57 = (v55 - v56);
  MEMORY[0x28223BE20](v58);
  v60 = (v120 - v59);
  v61 = *(v20 + 16);
  if (v61 == *(v26 + 16) && v61 && v20 != v26)
  {
    v120[1] = v38;
    v126 = v32;
    v122 = v21;
    OUTLINED_FUNCTION_61();
    v63 = v20 + v62;
    v64 = v26 + v62;
    v127 = *(v65 + 72);
    v131 = v22;
    v132 = v60;
    while (1)
    {
      v66 = OUTLINED_FUNCTION_176();
      sub_257483824(v66);
      if (!v61)
      {
        break;
      }

      v140 = v63;
      OUTLINED_FUNCTION_107();
      sub_257483824(v64);
      v67 = *v60 == *v57 && v60[1] == v57[1];
      if (!v67 && (sub_257743994() & 1) == 0)
      {
        goto LABEL_46;
      }

      v68 = v22;
      v69 = v61;
      v70 = v141;
      v71 = *(v142 + 28);
      v72 = *(v138 + 48);
      sub_257487308(v60 + v71);
      OUTLINED_FUNCTION_388(v57 + v71);
      v73 = OUTLINED_FUNCTION_177();
      v74 = v139;
      OUTLINED_FUNCTION_72(v73, v75);
      if (v67)
      {
        OUTLINED_FUNCTION_28_0(v70 + v72);
        if (!v67)
        {
          goto LABEL_39;
        }

        sub_2574695E4(v141, &qword_27F879E10, &qword_257744730);
        v60 = v132;
        v22 = v68;
      }

      else
      {
        v68 = v134;
        OUTLINED_FUNCTION_388(v70);
        OUTLINED_FUNCTION_28_0(v70 + v72);
        if (v76)
        {
          OUTLINED_FUNCTION_94();
          sub_257479298(v68);
LABEL_39:
          sub_2574695E4(v141, &qword_27F879E18, &qword_257744738);
LABEL_46:
          sub_257479298(v57);
          v119 = OUTLINED_FUNCTION_292();
          sub_257479298(v119);
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_89();
        v77 = v141 + v72;
        v78 = v137;
        sub_2574792EC(v77);
        v79 = *(v74 + 20);
        v80 = *(v68 + v79);
        v81 = *(v78 + v79);
        v60 = v132;
        if (v80 != v81)
        {
          v121 = v69;
          v82 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
          OUTLINED_FUNCTION_296(v80 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v144);
          v83 = v133;
          sub_257487308(v80 + v82);
          v84 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
          OUTLINED_FUNCTION_296(v81 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v143);
          v85 = *(v128 + 48);
          v86 = v83;
          v87 = v81;
          v88 = v129;
          sub_257487308(v86);
          v123 = v85;
          sub_257487308(v87 + v84);
          v78 = v130;
          OUTLINED_FUNCTION_80(v88, 1);
          v125 = v87;
          v124 = v80;
          if (v67)
          {

            sub_2574695E4(v133, &qword_27F879D40, &qword_257744660);
            OUTLINED_FUNCTION_42_0(v88 + v123);
            if (!v67)
            {
              goto LABEL_43;
            }

            v89 = OUTLINED_FUNCTION_228();
            sub_2574695E4(v89, v90, &qword_257744660);
            v68 = v134;
            OUTLINED_FUNCTION_318();
          }

          else
          {
            OUTLINED_FUNCTION_261();
            sub_257487308(v91);
            v92 = v123;
            OUTLINED_FUNCTION_42_0(v88 + v123);
            if (v93)
            {

              sub_2574695E4(v133, &qword_27F879D40, &qword_257744660);
              OUTLINED_FUNCTION_48();
              sub_257479298(v85);
LABEL_43:
              sub_2574695E4(v88, &qword_27F879D38, &qword_25774F300);
              OUTLINED_FUNCTION_318();
LABEL_44:

              OUTLINED_FUNCTION_244();
              sub_257479298(v137);
              v118 = OUTLINED_FUNCTION_262();
              sub_257479298(v118);
              v115 = &qword_27F879E10;
              v116 = &qword_257744730;
              v117 = v141;
LABEL_45:
              sub_2574695E4(v117, v115, v116);
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_49();
            OUTLINED_FUNCTION_301(v88 + v92);

            OUTLINED_FUNCTION_318();

            sub_2574DDF3C();
            OUTLINED_FUNCTION_256(v94, &a13);
            sub_257479298(v78);
            v78 = &qword_257744660;
            sub_2574695E4(v133, &qword_27F879D40, &qword_257744660);
            v95 = OUTLINED_FUNCTION_222();
            sub_257479298(v95);
            sub_2574695E4(v88, &qword_27F879D40, &qword_257744660);
            v68 = v134;
            if ((v123 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v69 = v121;
        }

        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v96, MEMORY[0x277D216D0]);
        v97 = v137;
        sub_257743644();
        OUTLINED_FUNCTION_239();
        sub_257479298(v97);
        v98 = OUTLINED_FUNCTION_211();
        sub_257479298(v98);
        sub_2574695E4(v141, &qword_27F879E10, &qword_257744730);
        v22 = v131;
        if ((v78 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v99 = *(v142 + 20);
      v100 = *(v135 + 48);
      sub_257487308(v60 + v99);
      sub_257487308(v57 + v99);
      v101 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_155(v101, v102, v136);
      if (v67)
      {
        OUTLINED_FUNCTION_35_0(v22 + v100);
        if (!v67)
        {
          goto LABEL_41;
        }

        v103 = OUTLINED_FUNCTION_309();
        sub_2574695E4(v103, v104, &unk_2577447D0);
      }

      else
      {
        OUTLINED_FUNCTION_261();
        sub_257487308(v105);
        OUTLINED_FUNCTION_35_0(v22 + v100);
        if (v106)
        {
          sub_257479298(v68);
LABEL_41:
          v115 = &qword_27F879EB0;
          v116 = &unk_25774F360;
          v117 = v22;
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_392();
        sub_2574792EC(v107);
        OUTLINED_FUNCTION_211();
        sub_2574DEF88();
        LOBYTE(v100) = v108;
        v109 = v22;
        v22 = v131;
        sub_257479298(v109);
        v110 = OUTLINED_FUNCTION_222();
        sub_257479298(v110);
        v111 = OUTLINED_FUNCTION_309();
        sub_2574695E4(v111, v112, &unk_2577447D0);
        if ((v100 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v113, MEMORY[0x277D216D0]);
      sub_257743644();
      OUTLINED_FUNCTION_92();
      sub_257479298(v57);
      v114 = OUTLINED_FUNCTION_263();
      sub_257479298(v114);
      if (v100)
      {
        v61 = v69 - 1;
        v64 += v127;
        v63 = v140 + v127;
        if (v69 != 1)
        {
          continue;
        }
      }

      goto LABEL_47;
    }

    __break(1u);
  }

  else
  {
LABEL_47:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25747A74C()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_287();
  v4 = type metadata accessor for Proto_MILSpec_Value(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v64 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_0();
  v66 = v9;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EC0, &qword_25774F340);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v65 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_290();
  v69 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_62();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v63 = &v59 - v21;
  v22 = *(v1 + 16);
  if (v22 == *(v0 + 16) && v22 && v1 != v0)
  {
    v59 = v12;
    OUTLINED_FUNCTION_61();
    v24 = v1 + v23;
    v25 = v0 + v23;
    v61 = *(v26 + 72);
    v62 = v4;
    v27 = v63;
    while (1)
    {
      v28 = OUTLINED_FUNCTION_415();
      sub_257483824(v28);
      if (!v22)
      {
        break;
      }

      v68 = v22;
      OUTLINED_FUNCTION_389();
      v29 = *(v69 + 20);
      v30 = *(v70 + 48);
      sub_257487308(&v27[v29]);
      sub_257487308(v19 + v29);
      v31 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_155(v31, v32, v4);
      v67 = v25;
      if (v34)
      {
        OUTLINED_FUNCTION_155(v2 + v30, 1, v4);
        if (!v34)
        {
          goto LABEL_28;
        }

        sub_2574695E4(v2, &qword_27F879EB8, &unk_2577447E0);
        v22 = v68;
      }

      else
      {
        v33 = v59;
        sub_257487308(v2);
        OUTLINED_FUNCTION_155(v2 + v30, 1, v4);
        if (v34)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_21_0();
        v35 = v64;
        sub_2574792EC(v2 + v30);
        OUTLINED_FUNCTION_228();
        _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
        OUTLINED_FUNCTION_92();
        v36 = v35;
        v4 = v62;
        sub_257479298(v36);
        sub_257479298(v33);
        v37 = OUTLINED_FUNCTION_309();
        sub_2574695E4(v37, v38, &unk_2577447E0);
        v27 = v63;
        v22 = v68;
        if ((v30 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v39 = *(v69 + 24);
      v40 = *(v70 + 48);
      v41 = v65;
      sub_257487308(&v27[v39]);
      sub_257487308(v19 + v39);
      v42 = OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_155(v42, v43, v4);
      if (v34)
      {
        v44 = OUTLINED_FUNCTION_304();
        OUTLINED_FUNCTION_155(v44, v45, v4);
        if (!v34)
        {
          v2 = v41;
          goto LABEL_28;
        }

        sub_2574695E4(v41, &qword_27F879EB8, &unk_2577447E0);
      }

      else
      {
        sub_257487308(v41);
        v46 = OUTLINED_FUNCTION_304();
        OUTLINED_FUNCTION_155(v46, v47, v4);
        if (v48)
        {
          v2 = v41;
LABEL_27:
          OUTLINED_FUNCTION_248();
          sub_257479298(v57);
LABEL_28:
          sub_2574695E4(v2, &qword_27F879EC0, &qword_25774F340);
LABEL_29:
          sub_257479298(v19);
          v58 = OUTLINED_FUNCTION_204();
          sub_257479298(v58);
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_21_0();
        v49 = v64;
        sub_2574792EC(v41 + v40);
        v50 = v66;
        OUTLINED_FUNCTION_361();
        _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
        v60 = v51;
        v52 = v49;
        v4 = v62;
        sub_257479298(v52);
        v53 = v50;
        v22 = v68;
        sub_257479298(v53);
        sub_2574695E4(v41, &qword_27F879EB8, &unk_2577447E0);
        if ((v60 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v54, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_362();
      v55 = sub_257743644();
      sub_257479298(v19);
      v56 = OUTLINED_FUNCTION_277();
      sub_257479298(v56);
      if (v55)
      {
        v25 = v67 + v61;
        v24 += v61;
        OUTLINED_FUNCTION_377();
        if (!v34)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25747ACA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v157 = a1;
  v158 = a2;
  while (2)
  {
    v4 = a1 + v3;
    v5 = a2 + v3;
    if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
    {
      return 0;
    }

    v7 = *(v4 + 40);
    v6 = *(v4 + 48);
    v8 = *(v4 + 56);
    v10 = *(v4 + 64);
    v9 = *(v4 + 72);
    v12 = *(v5 + 40);
    v11 = *(v5 + 48);
    v13 = *(v5 + 56);
    v14 = *(v5 + 64);
    v161 = *(v5 + 72);
    HIDWORD(v160) = v13;
    v159 = v8;
    switch(v8)
    {
      case 1:
        if (v13 != 1)
        {
          goto LABEL_64;
        }

        v54 = OUTLINED_FUNCTION_173();
        sub_257466F40(v54, v55, 1);

        v56 = OUTLINED_FUNCTION_194();
        sub_257466F40(v56, v57, 1);

        v58 = OUTLINED_FUNCTION_173();
        sub_257467018(v58, v59, 1);
        v60 = OUTLINED_FUNCTION_194();
        sub_257467018(v60, v61, 1);
        if (v7 != v12)
        {
          v134 = 1;
          v135 = OUTLINED_FUNCTION_194();
          sub_257467018(v135, v136, 1);
          goto LABEL_66;
        }

        v8 = v9;
        v9 = v161;
        if (v6 == v11)
        {
          goto LABEL_52;
        }

        v134 = 1;
        OUTLINED_FUNCTION_310();
        goto LABEL_65;
      case 2:
        if (v13 != 2)
        {
          v129 = OUTLINED_FUNCTION_137();
          sub_257466F40(v129, v130, v131);

          goto LABEL_64;
        }

        if (v7 == v12 && v6 == v11)
        {
          OUTLINED_FUNCTION_312(v7, v6, 2);
          v62 = OUTLINED_FUNCTION_137();
          sub_257466F40(v62, v63, v64);
          v9 = v161;

          v65 = OUTLINED_FUNCTION_137();
          sub_257466F40(v65, v66, v67);
          v68 = OUTLINED_FUNCTION_137();
          sub_257466F40(v68, v69, v70);
          v71 = OUTLINED_FUNCTION_137();
          sub_257467018(v71, v72, v73);
          v53 = OUTLINED_FUNCTION_137();
          goto LABEL_51;
        }

        HIDWORD(v156) = sub_257743994();
        v24 = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_312(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_194();
        sub_257466F40(v27, v28, 2);
        v9 = v161;

        v29 = OUTLINED_FUNCTION_194();
        sub_257466F40(v29, v30, 2);
        v31 = OUTLINED_FUNCTION_137();
        sub_257466F40(v31, v32, v33);
        v34 = OUTLINED_FUNCTION_137();
        sub_257467018(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_194();
        sub_257467018(v37, v38, 2);
        if ((v156 & 0x100000000) == 0)
        {
          v134 = 2;
          v151 = OUTLINED_FUNCTION_194();
          v153 = 2;
LABEL_65:
          sub_257467018(v151, v152, v153);
          goto LABEL_66;
        }

        goto LABEL_52;
      case 3:
        switch(v7)
        {
          case 1:
            if (v13 != 3)
            {
              goto LABEL_64;
            }

            if (v12 != 1 || v11 != 0)
            {
              goto LABEL_63;
            }

            v105 = OUTLINED_FUNCTION_148();
            OUTLINED_FUNCTION_312(v105, v106, v107);
            OUTLINED_FUNCTION_286(1, v108, v109, v110, v111, v112, v113, v114, v156, v157, v158, v8, v160, v161);
            v115 = OUTLINED_FUNCTION_148();
            sub_257467018(v115, v116, v117);
            v53 = 1;
            goto LABEL_50;
          case 2:
            if (v13 != 3)
            {
              goto LABEL_64;
            }

            if (v12 != 2 || v11 != 0)
            {
              goto LABEL_63;
            }

            v77 = OUTLINED_FUNCTION_148();
            OUTLINED_FUNCTION_312(v77, v78, v79);
            OUTLINED_FUNCTION_286(2, v80, v81, v82, v83, v84, v85, v86, v156, v157, v158, v8, v160, v161);
            v87 = OUTLINED_FUNCTION_148();
            sub_257467018(v87, v88, v89);
            v53 = 2;
            goto LABEL_50;
          case 3:
            if (v13 != 3)
            {
              goto LABEL_64;
            }

            if (v12 == 3 && v11 == 0)
            {
              v91 = OUTLINED_FUNCTION_148();
              OUTLINED_FUNCTION_312(v91, v92, v93);
              OUTLINED_FUNCTION_286(3, v94, v95, v96, v97, v98, v99, v100, v156, v157, v158, v8, v160, v161);
              v101 = OUTLINED_FUNCTION_148();
              sub_257467018(v101, v102, v103);
              v53 = 3;
LABEL_50:
              v74 = 0;
              v75 = 3;
LABEL_51:
              sub_257467018(v53, v74, v75);
LABEL_52:
              if (v10 == v14 && v8 == v9)
              {
                v124 = OUTLINED_FUNCTION_194();
                sub_257467018(v124, v125, SBYTE4(v160));

                v126 = OUTLINED_FUNCTION_173();
                sub_257467018(v126, v127, v159);
              }

              else
              {
                v119 = sub_257743994();
                v120 = OUTLINED_FUNCTION_194();
                sub_257467018(v120, v121, SBYTE4(v160));

                v122 = OUTLINED_FUNCTION_173();
                sub_257467018(v122, v123, v159);

                if ((v119 & 1) == 0)
                {
                  return 0;
                }
              }

              v3 += 48;
              --v2;
              a1 = v157;
              a2 = v158;
              if (!v2)
              {
                return 1;
              }

              continue;
            }

LABEL_63:
            BYTE4(v160) = 3;
LABEL_64:
            v137 = OUTLINED_FUNCTION_173();
            v134 = v8;
            sub_257466F40(v137, v138, v8);

            v139 = OUTLINED_FUNCTION_194();
            sub_257466F40(v139, v140, SBYTE4(v160));

            v141 = OUTLINED_FUNCTION_194();
            sub_257466F40(v141, v142, SBYTE4(v160));
            v143 = OUTLINED_FUNCTION_173();
            sub_257467018(v143, v144, v8);
            v145 = OUTLINED_FUNCTION_194();
            sub_257467018(v145, v146, SBYTE4(v160));
            v147 = OUTLINED_FUNCTION_173();
            sub_257467018(v147, v148, v8);
            v149 = OUTLINED_FUNCTION_194();
            sub_257467018(v149, v150, SBYTE4(v160));
LABEL_66:

            v154 = OUTLINED_FUNCTION_173();
            sub_257467018(v154, v155, v134);

            return 0;
          default:
            if (v13 != 3 || (v11 | v12) != 0)
            {
              goto LABEL_64;
            }

            v40 = OUTLINED_FUNCTION_148();
            OUTLINED_FUNCTION_312(v40, v41, v42);
            OUTLINED_FUNCTION_286(0, v43, v44, v45, v46, v47, v48, v49, v156, v157, v158, v8, v160, v161);
            v50 = OUTLINED_FUNCTION_148();
            sub_257467018(v50, v51, v52);
            v53 = 0;
            goto LABEL_50;
        }

      default:
        if (*(v5 + 56))
        {
          goto LABEL_64;
        }

        v15 = OUTLINED_FUNCTION_173();
        OUTLINED_FUNCTION_312(v15, v16, 0);
        v17 = OUTLINED_FUNCTION_194();
        sub_257466F40(v17, v18, 0);
        v9 = v161;

        v19 = OUTLINED_FUNCTION_173();
        sub_257467018(v19, v20, 0);
        v21 = OUTLINED_FUNCTION_194();
        sub_257467018(v21, v22, 0);
        if (v7 == v12)
        {
          goto LABEL_52;
        }

        v132 = OUTLINED_FUNCTION_194();
        sub_257467018(v132, v133, 0);
        v134 = 0;
        goto LABEL_66;
    }
  }
}

uint64_t sub_25747B178(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_25747B1CC()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_SparseVector(v4);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_0();
  if (v7 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_40_0();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_222();
      sub_257483824(v8);
      v9 = OUTLINED_FUNCTION_229();
      sub_257483824(v9);
      sub_25747B3B8();
      if ((v10 & 1) == 0)
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v12 = sub_257483ACC(&qword_27F879B68, v11, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_192(v12);
      sub_257479298(v1);
      v14 = OUTLINED_FUNCTION_252();
      sub_257479298(v14);
      if (v13)
      {
        OUTLINED_FUNCTION_67();
        if (!v7)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_257479298(v1);
    v15 = OUTLINED_FUNCTION_204();
    sub_257479298(v15);
  }

LABEL_13:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747B3B8()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_SparseNode(v5);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_43_0();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_222();
      sub_257483824(v9);
      v10 = OUTLINED_FUNCTION_229();
      sub_257483824(v10);
      OUTLINED_FUNCTION_346();
      if (!v8 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v12 = sub_257483ACC(&qword_27F879B68, v11, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_192(v12);
      sub_257479298(v1);
      v14 = OUTLINED_FUNCTION_252();
      sub_257479298(v14);
      if (v13)
      {
        OUTLINED_FUNCTION_67();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    sub_257479298(v1);
    v15 = OUTLINED_FUNCTION_204();
    sub_257479298(v15);
  }

LABEL_15:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747B56C()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v34 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_198();
  v37 = v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DA0, &qword_2577446C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v36 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(v13);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_326();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_345();
  v16 = *(v6 + 16);
  if (v16 == *(v4 + 16) && v16 && v6 != v4)
  {
    OUTLINED_FUNCTION_61();
    v18 = v6 + v17;
    v19 = v4 + v17;
    v33 = *(v20 + 72);
    v32 = v1;
    while (1)
    {
      v21 = OUTLINED_FUNCTION_405();
      sub_257483824(v21);
      v22 = OUTLINED_FUNCTION_367();
      sub_257483824(v22);
      if (*v2 != *v1)
      {
        break;
      }

      v23 = *(v36 + 24);
      v24 = *(v35 + 48);
      sub_257487308(v2 + v23);
      sub_257487308(v1 + v23);
      OUTLINED_FUNCTION_26_0(v0);
      if (v25)
      {
        OUTLINED_FUNCTION_26_0(v0 + v24);
        if (!v25)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_257487308(v0);
        OUTLINED_FUNCTION_26_0(v0 + v24);
        if (v25)
        {
          OUTLINED_FUNCTION_22_0();
          sub_257479298(v37);
LABEL_22:
          sub_2574695E4(v0, &qword_27F879DA0, &qword_2577446C0);
          break;
        }

        sub_2574792EC(v0 + v24);
        if (*v37 != *v34 || v37[1] != v34[1])
        {
          OUTLINED_FUNCTION_22_0();
          sub_257479298(v34);
LABEL_20:
          OUTLINED_FUNCTION_22_0();
          sub_257479298(v37);
          sub_2574695E4(v0, &qword_27F879D98, &unk_257746440);
          v1 = v32;
          break;
        }

        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v26, MEMORY[0x277D216D0]);
        v27 = sub_257743644();
        OUTLINED_FUNCTION_22_0();
        sub_257479298(v34);
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_22_0();
        sub_257479298(v37);
        v1 = v32;
      }

      sub_2574695E4(v0, &qword_27F879D98, &unk_257746440);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v28, MEMORY[0x277D216D0]);
      v29 = sub_257743644();
      sub_257479298(v1);
      v30 = OUTLINED_FUNCTION_365();
      sub_257479298(v30);
      if (v29)
      {
        v19 += v33;
        v18 += v33;
        if (--v16)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_257479298(v1);
    v31 = OUTLINED_FUNCTION_228();
    sub_257479298(v31);
  }

LABEL_24:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747B9DC()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(v5);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_43_0();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_222();
      sub_257483824(v9);
      v10 = OUTLINED_FUNCTION_229();
      sub_257483824(v10);
      if (*v2 != *v1)
      {
        break;
      }

      sub_257481FE8();
      if ((v11 & 1) == 0 || *(v2 + 16) != *(v1 + 16))
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v13 = sub_257483ACC(&qword_27F879B68, v12, MEMORY[0x277D216D0]);
      v14 = OUTLINED_FUNCTION_192(v13);
      sub_257479298(v1);
      v15 = OUTLINED_FUNCTION_252();
      sub_257479298(v15);
      if (v14)
      {
        OUTLINED_FUNCTION_67();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    sub_257479298(v1);
    v16 = OUTLINED_FUNCTION_204();
    sub_257479298(v16);
  }

LABEL_15:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747BC64()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(v4);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_0();
  if (v7 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_40_0();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_222();
      sub_257483824(v8);
      v9 = OUTLINED_FUNCTION_229();
      sub_257483824(v9);
      OUTLINED_FUNCTION_346();
      if (!v7)
      {
        break;
      }

      sub_25747B56C();
      if ((v10 & 1) == 0)
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v12 = sub_257483ACC(&qword_27F879B68, v11, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_192(v12);
      sub_257479298(v1);
      v14 = OUTLINED_FUNCTION_252();
      sub_257479298(v14);
      if (v13)
      {
        OUTLINED_FUNCTION_67();
        if (!v7)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    sub_257479298(v1);
    v15 = OUTLINED_FUNCTION_204();
    sub_257479298(v15);
  }

LABEL_15:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747BE18()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_FloatVector(v4);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_279();
  if (v10 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_340();
    while (1)
    {
      OUTLINED_FUNCTION_385();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_213();
      if (!v10)
      {
LABEL_21:
        sub_257479298(v1);
        v18 = OUTLINED_FUNCTION_204();
        sub_257479298(v18);
        goto LABEL_22;
      }

      v10 = !v7 || v8 == v9;
      if (!v10)
      {
        break;
      }

LABEL_16:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v15 = sub_257483ACC(&qword_27F879B68, v14, MEMORY[0x277D216D0]);
      v16 = OUTLINED_FUNCTION_260(v15);
      sub_257479298(v1);
      v17 = OUTLINED_FUNCTION_264();
      sub_257479298(v17);
      if (v16)
      {
        OUTLINED_FUNCTION_411();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_364();
    while (v11)
    {
      if (*v12 != *v13)
      {
        goto LABEL_21;
      }

      ++v12;
      ++v13;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25747C000()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  v46 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v41 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_190(v12, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D30, &unk_257744650);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_MILSpec_Dimension(v14);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_62();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_282();
  v20 = *(v0 + 16);
  if (v20 != *(v6 + 16) || !v20 || v0 == v6)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_337();
  v43 = v21;
  v22 = v45;
  while (1)
  {
    sub_257483824(v4);
    v23 = OUTLINED_FUNCTION_280();
    sub_257483824(v23);
    v24 = *(v44 + 48);
    sub_257487308(v3);
    sub_257487308(v18);
    v25 = OUTLINED_FUNCTION_197();
    OUTLINED_FUNCTION_155(v25, v26, v46);
    if (!v34)
    {
      break;
    }

    v27 = OUTLINED_FUNCTION_304();
    OUTLINED_FUNCTION_155(v27, v28, v46);
    if (!v34)
    {
      goto LABEL_17;
    }

    v29 = OUTLINED_FUNCTION_222();
    sub_2574695E4(v29, v30, &qword_257744648);
LABEL_12:
    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    sub_257483ACC(&qword_27F879B68, v37, MEMORY[0x277D216D0]);
    v38 = sub_257743644();
    sub_257479298(v18);
    v39 = OUTLINED_FUNCTION_415();
    sub_257479298(v39);
    if (v38)
    {
      v2 += v43;
      v4 += v43;
      if (--v20)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v31 = OUTLINED_FUNCTION_262();
  sub_257487308(v31);
  v32 = OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_155(v32, v33, v46);
  if (!v34)
  {
    sub_2574792EC(v1 + v24);
    sub_2574DEBB4();
    v36 = v35;
    v22 = v45;
    sub_257479298(v42);
    sub_257479298(v45);
    sub_2574695E4(v1, &qword_27F879D28, &qword_257744648);
    if ((v36 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  sub_257479298(v22);
LABEL_17:
  sub_2574695E4(v1, &qword_27F879D30, &unk_257744650);
LABEL_18:
  sub_257479298(v18);
  v40 = OUTLINED_FUNCTION_165();
  sub_257479298(v40);
LABEL_19:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747C3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31();
  a20 = v25;
  a21 = v26;
  v28 = v27;
  v29 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v29);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_1();
  v83 = v31;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_363(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v35 = OUTLINED_FUNCTION_13(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_196();
  v88 = v37;
  v38 = OUTLINED_FUNCTION_153();
  v92 = type metadata accessor for Proto_MILSpec_ValueType(v38);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_1();
  v89 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v41);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_198();
  v90 = v43;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  v45 = OUTLINED_FUNCTION_135();
  v46 = type metadata accessor for Proto_MILSpec_NamedValueType(v45);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_82();
  v49 = *(v21 + 16);
  if (v49 == *(v28 + 16) && v49 && v21 != v28)
  {
    OUTLINED_FUNCTION_61();
    v51 = v21 + v50;
    v52 = v28 + v50;
    v86 = *(v53 + 72);
    v87 = v46;
    v81 = v23;
    v82 = v24;
    v80 = v22;
    while (1)
    {
      sub_257483824(v51);
      v54 = OUTLINED_FUNCTION_408();
      sub_257483824(v54);
      v55 = *v22 == *v23 && v22[1] == v23[1];
      if (!v55 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v56 = *(v46 + 24);
      v57 = *(v91 + 48);
      sub_257487308(v22 + v56);
      sub_257487308(v23 + v56);
      OUTLINED_FUNCTION_72(v24, 1);
      if (v55)
      {
        OUTLINED_FUNCTION_28_0(v57 + v24);
        if (!v55)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_257487308(v24);
        OUTLINED_FUNCTION_28_0(v57 + v24);
        if (v58)
        {
          OUTLINED_FUNCTION_94();
          sub_257479298(v90);
LABEL_32:
          v74 = &qword_27F879E18;
          v75 = &qword_257744738;
          v76 = v24;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_89();
        sub_2574792EC(v57 + v24);
        v59 = *(v92 + 20);
        v60 = v89;
        v61 = *(v90 + v59);
        v62 = *(v89 + v59);
        if (v61 != v62)
        {
          v63 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
          OUTLINED_FUNCTION_296(v61 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v94);
          sub_257487308(v61 + v63);
          v64 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
          OUTLINED_FUNCTION_296(v62 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v93);
          v65 = *(v84 + 48);
          OUTLINED_FUNCTION_441(v88);
          OUTLINED_FUNCTION_441(v62 + v64);
          OUTLINED_FUNCTION_72(v85, 1);
          if (v55)
          {

            sub_2574695E4(v88, &qword_27F879D40, &qword_257744660);
            OUTLINED_FUNCTION_28_0(v85 + v65);
            v66 = v85;
            v22 = v80;
            if (!v55)
            {
              goto LABEL_34;
            }

            sub_2574695E4(v85, &qword_27F879D40, &qword_257744660);
            v60 = v89;
          }

          else
          {
            OUTLINED_FUNCTION_359();
            sub_257487308(v67);
            OUTLINED_FUNCTION_28_0(v85 + v65);
            if (v68)
            {

              sub_2574695E4(v88, &qword_27F879D40, &qword_257744660);
              OUTLINED_FUNCTION_48();
              sub_257479298(v61);
              v66 = v85;
LABEL_34:
              sub_2574695E4(v66, &qword_27F879D38, &qword_25774F300);
              v60 = v89;
LABEL_35:

              v23 = v81;
LABEL_36:
              sub_257479298(v60);
              v77 = OUTLINED_FUNCTION_230();
              sub_257479298(v77);
              v74 = &qword_27F879E10;
              v75 = &qword_257744730;
              v76 = v82;
LABEL_37:
              sub_2574695E4(v76, v74, v75);
              break;
            }

            OUTLINED_FUNCTION_49();
            sub_2574792EC(v85 + v65);

            OUTLINED_FUNCTION_307();
            sub_2574DDF3C();
            OUTLINED_FUNCTION_256(v69, &a19);
            sub_257479298(v83);
            sub_2574695E4(v88, &qword_27F879D40, &qword_257744660);
            sub_257479298(v61);
            sub_2574695E4(v85, &qword_27F879D40, &qword_257744660);
            v60 = v89;
            v22 = v80;
            if ((v79 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v70, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_280();
        v23 = v81;
        if ((sub_257743644() & 1) == 0)
        {
          goto LABEL_36;
        }

        v57 = type metadata accessor for Proto_MILSpec_ValueType;
        sub_257479298(v60);
        v71 = OUTLINED_FUNCTION_366();
        sub_257479298(v71);
        v24 = v82;
      }

      sub_2574695E4(v24, &qword_27F879E10, &qword_257744730);
      v46 = v87;
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v72, MEMORY[0x277D216D0]);
      sub_257743644();
      OUTLINED_FUNCTION_238();
      sub_257479298(v23);
      v73 = OUTLINED_FUNCTION_264();
      sub_257479298(v73);
      if (v57)
      {
        v52 += v86;
        v51 += v86;
        OUTLINED_FUNCTION_377();
        if (!v55)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    sub_257479298(v23);
    v78 = OUTLINED_FUNCTION_204();
    sub_257479298(v78);
  }

LABEL_39:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747CD74()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  v8 = type metadata accessor for Proto_MILSpec_Value(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E68, &qword_257744790);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_198();
  v75 = v11;
  v12 = OUTLINED_FUNCTION_153();
  v13 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v69 = v15;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_196();
  v76 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_198();
  v77 = v21;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E78, &qword_2577447A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_71();
  v74 = type metadata accessor for Proto_MILSpec_Argument.Binding(v23);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_270();
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  OUTLINED_FUNCTION_333();
  if (!v38 || !v0 || v1 == v6)
  {
    goto LABEL_36;
  }

  v67 = v2;
  v68 = v3;
  OUTLINED_FUNCTION_61();
  v29 = v1 + v28;
  v30 = v6 + v28;
  v71 = *(v31 + 72);
  v72 = v13;
  v73 = v27;
  v32 = v79;
  while (1)
  {
    v33 = OUTLINED_FUNCTION_226();
    sub_257483824(v33);
    v34 = OUTLINED_FUNCTION_321();
    sub_257483824(v34);
    v35 = *(v78 + 48);
    v36 = OUTLINED_FUNCTION_405();
    sub_257487308(v36);
    OUTLINED_FUNCTION_441(v32);
    OUTLINED_FUNCTION_65(v4);
    if (!v38)
    {
      break;
    }

    OUTLINED_FUNCTION_65(v4 + v35);
    if (!v38)
    {
      goto LABEL_29;
    }

LABEL_24:
    sub_2574695E4(v4, &qword_27F879E70, &qword_257744798);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    sub_257483ACC(&qword_27F879B68, v58, MEMORY[0x277D216D0]);
    v59 = v79;
    v60 = sub_257743644();
    sub_257479298(v59);
    v61 = OUTLINED_FUNCTION_406();
    sub_257479298(v61);
    if (v60)
    {
      v30 += v71;
      v29 += v71;
      if (--v0)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  v37 = v77;
  OUTLINED_FUNCTION_441(v4);
  OUTLINED_FUNCTION_65(v4 + v35);
  if (v38)
  {
    OUTLINED_FUNCTION_249();
    sub_257479298(v37);
LABEL_29:
    v62 = &qword_27F879E78;
    v63 = &qword_2577447A0;
    goto LABEL_35;
  }

  v39 = v76;
  sub_2574792EC(v4 + v35);
  v40 = v75 + *(v70 + 48);
  v41 = v37;
  v42 = v75;
  sub_257483824(v41);
  sub_257483824(v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = OUTLINED_FUNCTION_225();
    v44 = v42;
    v45 = v69;
    sub_257483824(v43);
    OUTLINED_FUNCTION_373();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_248();
      sub_257479298(v45);
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_21_0();
    v46 = v67;
    sub_2574792EC(v40);
    _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
    OUTLINED_FUNCTION_92();
    sub_257479298(v46);
    v47 = OUTLINED_FUNCTION_406();
    sub_257479298(v47);
    v48 = v77;
    if ((v40 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  v49 = OUTLINED_FUNCTION_225();
  v50 = v68;
  sub_257483824(v49);
  v52 = *v50;
  v51 = v50[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v53 = *v40;
    v54 = *(v40 + 8);
    v55 = v52 == v53 && v51 == v54;
    v56 = v77;
    if (v55)
    {

      v48 = v56;
    }

    else
    {
      OUTLINED_FUNCTION_322();
      v57 = sub_257743994();

      v48 = v56;
      if ((v57 & 1) == 0)
      {
LABEL_30:
        OUTLINED_FUNCTION_249();
        sub_257479298(v75);
        goto LABEL_34;
      }
    }

LABEL_23:
    sub_257479298(v75);
    sub_257479298(v76);
    sub_257479298(v48);
    goto LABEL_24;
  }

  v44 = v75;
LABEL_33:
  sub_2574695E4(v44, &qword_27F879E68, &qword_257744790);
LABEL_34:
  sub_257479298(v76);
  v64 = OUTLINED_FUNCTION_204();
  sub_257479298(v64);
  v62 = &qword_27F879E70;
  v63 = &qword_257744798;
LABEL_35:
  sub_2574695E4(v4, v62, v63);
  sub_257479298(v79);
  v65 = OUTLINED_FUNCTION_361();
  sub_257479298(v65);
LABEL_36:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747D424()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  v8 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v32 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_190(v13, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A050, &qword_257744988);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  v33 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v15);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_270();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_333();
  if (v22 && v0 && v1 != v6)
  {
    v34 = v8;
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_337();
    v18 = v33;
    while (1)
    {
      sub_257483824(v4);
      v19 = OUTLINED_FUNCTION_343();
      sub_257483824(v19);
      OUTLINED_FUNCTION_402();
      v22 = v22 && v20 == v21;
      if (!v22 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v23 = OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_353(v23);
      OUTLINED_FUNCTION_353(v36 + v8);
      OUTLINED_FUNCTION_155(v3, 1, v34);
      if (v22)
      {
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (!v22)
        {
          goto LABEL_24;
        }

        sub_2574695E4(v3, &qword_27F87A048, v2);
      }

      else
      {
        OUTLINED_FUNCTION_353(v3);
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (v24)
        {
          sub_257479298(v35);
LABEL_24:
          sub_2574695E4(v3, &qword_27F87A050, &qword_257744988);
          break;
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_321();
        sub_257526F48();
        v26 = v25;
        v27 = v18;
        v18 = v33;
        sub_257479298(&qword_27F87A048);
        sub_257479298(v27);
        sub_2574695E4(v3, &qword_27F87A048, v2);
        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v29 = sub_257483ACC(&qword_27F879B68, v28, MEMORY[0x277D216D0]);
      v6 = OUTLINED_FUNCTION_382(v29);
      v8 = type metadata accessor for Proto_NeuralNetworkPreprocessing;
      sub_257479298(v2);
      v30 = OUTLINED_FUNCTION_415();
      sub_257479298(v30);
      if (v6)
      {
        OUTLINED_FUNCTION_323();
        if (!v22)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    sub_257479298(v36);
    v31 = OUTLINED_FUNCTION_165();
    sub_257479298(v31);
  }

LABEL_26:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v28;
  a20 = v29;
  v30 = OUTLINED_FUNCTION_216();
  type metadata accessor for Proto_FeatureType.OneOf_Type(v30);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_23_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v33 = OUTLINED_FUNCTION_13(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_167();
  v206 = v35;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_196();
  v208 = v37;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C30, &qword_257744548);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_167();
  v214 = v40;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_196();
  v209 = v42;
  v43 = OUTLINED_FUNCTION_153();
  v222 = type metadata accessor for Proto_FeatureType(v43);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_0();
  v207 = v45;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_167();
  v210 = v47;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_218();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v50 = OUTLINED_FUNCTION_13(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  v205 = v51;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_167();
  v211 = v53;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_196();
  v215 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C40, &qword_257750390);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  v212 = v57;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_281();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_196();
  v217 = v60;
  v61 = OUTLINED_FUNCTION_153();
  v223 = type metadata accessor for Proto_FeatureDescription(v61);
  OUTLINED_FUNCTION_63();
  v220 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_25_0();
  v213 = v64;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_207();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_167();
  v221 = v67;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_167();
  v218 = v69;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_167();
  v219 = v71;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v72);
  v73 = OUTLINED_FUNCTION_425();
  type metadata accessor for Proto_FunctionDescription(v73);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_82();
  v76 = *(v24 + 16);
  if (v76 == *(v21 + 16) && v76 && v24 != v21)
  {
    OUTLINED_FUNCTION_61();
    v79 = *(v78 + 72);
    v201 = v27;
    v203 = v22;
    v202 = v23;
    v193 = v80;
    v189 = v79;
    while (1)
    {
      v194 = v77;
      v81 = v79 * v77;
      OUTLINED_FUNCTION_93();
      sub_257483824(v82 + v81);
      if (v194 == v193)
      {
        break;
      }

      v83 = OUTLINED_FUNCTION_302(&v220);
      sub_257483824(v83);
      v84 = *v23 == *v22 && v23[1] == v22[1];
      v85 = v214;
      if (!v84 && (sub_257743994() & 1) == 0)
      {
        goto LABEL_148;
      }

      OUTLINED_FUNCTION_306();
      v87 = *(v86 + 16);
      OUTLINED_FUNCTION_272();
      v200 = *(v87 + 16);
      if (v200 != *(*(v88 + 16) + 16))
      {
        goto LABEL_148;
      }

      if (v200)
      {
        OUTLINED_FUNCTION_305();
        if (v87 != v89)
        {
          v90 = 0;
          OUTLINED_FUNCTION_193();
          v198 = v20;
          v190 = v87;
          while (v90 < *(v87 + 16))
          {
            v91 = *(v220 + 72) * v90;
            OUTLINED_FUNCTION_8_0();
            v92 = OUTLINED_FUNCTION_302(&a10);
            sub_257483824(v92);
            OUTLINED_FUNCTION_305();
            if (v90 >= *(v93 + 16))
            {
              goto LABEL_151;
            }

            OUTLINED_FUNCTION_8_0();
            v94 = OUTLINED_FUNCTION_302(&a9);
            v95 = v219;
            sub_257483824(v94);
            v96 = *v25 == *v219 && v25[1] == *(v219 + 8);
            if (!v96 && (sub_257743994() & 1) == 0)
            {
              goto LABEL_147;
            }

            v97 = v25[2] == *(v219 + 16) && v25[3] == *(v219 + 24);
            if (!v97 && (sub_257743994() & 1) == 0)
            {
              goto LABEL_147;
            }

            OUTLINED_FUNCTION_268();
            sub_257487308(v25 + v219);
            OUTLINED_FUNCTION_444(2 * v219);
            OUTLINED_FUNCTION_72(v217, 1);
            if (v84)
            {
              OUTLINED_FUNCTION_28_0(v217 + v91);
              v27 = v201;
              if (!v84)
              {
                goto LABEL_127;
              }

              sub_2574695E4(v217, &qword_27F879C38, &qword_257744550);
            }

            else
            {
              v25 = v85;
              OUTLINED_FUNCTION_444(v217);
              OUTLINED_FUNCTION_28_0(v217 + v91);
              v27 = v201;
              if (v98)
              {
                OUTLINED_FUNCTION_45_0();
                sub_257479298(v215);
                OUTLINED_FUNCTION_398();
LABEL_127:
                sub_2574695E4(v217, &qword_27F879C40, &qword_257750390);
LABEL_128:
                v95 = v219;
LABEL_147:
                sub_257479298(v95);
                sub_257479298(v25);
                goto LABEL_148;
              }

              OUTLINED_FUNCTION_11_0();
              OUTLINED_FUNCTION_392();
              sub_2574792EC(v99);
              v91 = *(v216 + 48);
              v100 = v209;
              v101 = &qword_27F879C28;
              sub_257487308(v215);
              sub_257487308(v87);
              OUTLINED_FUNCTION_28_0(v209);
              if (v84)
              {
                OUTLINED_FUNCTION_28_0(v209 + v91);
                if (!v84)
                {
                  goto LABEL_133;
                }

                v102 = OUTLINED_FUNCTION_368();
                sub_2574695E4(v102, v103, &qword_257744540);
                OUTLINED_FUNCTION_397();
              }

              else
              {
                sub_257487308(v209);
                OUTLINED_FUNCTION_28_0(v209 + v91);
                if (v105)
                {
                  OUTLINED_FUNCTION_46_0();
                  sub_257479298(v208);
LABEL_133:
                  sub_2574695E4(v209, &qword_27F879C30, &qword_257744548);
                  OUTLINED_FUNCTION_397();
LABEL_134:
                  OUTLINED_FUNCTION_241();
                  sub_257479298(v101);
                  v183 = OUTLINED_FUNCTION_366();
                  sub_257479298(v183);
                  sub_2574695E4(v100, &qword_27F879C38, &qword_257744550);
                  v95 = v219;
                  OUTLINED_FUNCTION_398();
                  goto LABEL_147;
                }

                OUTLINED_FUNCTION_47_0();
                OUTLINED_FUNCTION_359();
                sub_2574792EC(v106);
                sub_2574BA824();
                OUTLINED_FUNCTION_85();
                v85 = v214;
                v87 = v215;
                sub_257479298(&qword_257744540);
                v27 = v201;
                v101 = v26;
                sub_257479298(v208);
                sub_2574695E4(v209, &qword_27F879C28, &qword_257744540);
                v104 = v222;
                v100 = v217;
                if ((v91 & 1) == 0)
                {
                  goto LABEL_134;
                }
              }

              if (*(v87 + *(v104 + 20)) != *(v101 + *(v104 + 20)))
              {
                goto LABEL_134;
              }

              sub_2577431B4();
              OUTLINED_FUNCTION_0_1();
              sub_257483ACC(&qword_27F879B68, v107, MEMORY[0x277D216D0]);
              OUTLINED_FUNCTION_317();
              sub_257743644();
              OUTLINED_FUNCTION_84();
              sub_257479298(v101);
              v108 = OUTLINED_FUNCTION_280();
              sub_257479298(v108);
              sub_2574695E4(v100, &qword_27F879C38, &qword_257744550);
              OUTLINED_FUNCTION_398();
              v87 = v190;
              if ((v91 & 1) == 0)
              {
                goto LABEL_128;
              }
            }

            OUTLINED_FUNCTION_381();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v109, MEMORY[0x277D216D0]);
            sub_257743644();
            OUTLINED_FUNCTION_44_0();
            sub_257479298(v219);
            sub_257479298(v25);
            v20 = v198;
            if ((v91 & 1) == 0)
            {
              goto LABEL_148;
            }

            if (v200 == ++v90)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          break;
        }
      }

LABEL_44:
      OUTLINED_FUNCTION_306();
      v111 = *(v110 + 24);
      OUTLINED_FUNCTION_272();
      v113 = *(v112 + 24);
      OUTLINED_FUNCTION_393();
      if (!v84)
      {
        goto LABEL_148;
      }

      OUTLINED_FUNCTION_305();
      if (v114 && v111 != v113)
      {
        v115 = 0;
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_355(v116);
        v199 = v20;
        v196 = v111;
        v191 = v113;
        do
        {
          if (v115 >= *(v111 + 16))
          {
            goto LABEL_152;
          }

          OUTLINED_FUNCTION_8_0();
          v117 = OUTLINED_FUNCTION_302(&a13);
          sub_257483824(v117);
          if (v115 >= *(v113 + 16))
          {
            goto LABEL_153;
          }

          OUTLINED_FUNCTION_8_0();
          v118 = OUTLINED_FUNCTION_302(&a10);
          v119 = v221;
          sub_257483824(v118);
          OUTLINED_FUNCTION_402();
          v122 = v84 && v120 == v121;
          if (!v122 && (sub_257743994() & 1) == 0)
          {
            v95 = v221;
            v25 = v218;
            goto LABEL_147;
          }

          v123 = v218[2] == *(v221 + 16) && v218[3] == *(v221 + 24);
          if (!v123 && (sub_257743994() & 1) == 0)
          {
            goto LABEL_141;
          }

          OUTLINED_FUNCTION_268();
          sub_257487308(v218 + v113);
          OUTLINED_FUNCTION_444(v221 + v113);
          OUTLINED_FUNCTION_72(v20, 1);
          if (v84)
          {
            OUTLINED_FUNCTION_28_0(v20 + v119);
            if (!v84)
            {
              goto LABEL_131;
            }

            sub_2574695E4(v20, &qword_27F879C38, &qword_257744550);
          }

          else
          {
            OUTLINED_FUNCTION_444(v20);
            OUTLINED_FUNCTION_28_0(v20 + v119);
            if (v124)
            {
              OUTLINED_FUNCTION_45_0();
              sub_257479298(v211);
LABEL_131:
              v180 = &qword_27F879C40;
              v181 = &qword_257750390;
              v182 = v20;
LABEL_140:
              sub_2574695E4(v182, v180, v181);
LABEL_141:
              v95 = v221;
              v25 = v218;
              goto LABEL_147;
            }

            OUTLINED_FUNCTION_11_0();
            sub_2574792EC(v20 + v119);
            v119 = *(v216 + 48);
            sub_257487308(v211);
            OUTLINED_FUNCTION_353(v210);
            OUTLINED_FUNCTION_28_0(v85);
            if (v84)
            {
              OUTLINED_FUNCTION_28_0(v85 + v119);
              v125 = v211;
              v20 = v199;
              if (!v84)
              {
                goto LABEL_138;
              }

              sub_2574695E4(v85, &qword_27F879C28, &qword_257744540);
              v126 = v210;
              v127 = v222;
            }

            else
            {
              OUTLINED_FUNCTION_353(v85);
              OUTLINED_FUNCTION_28_0(v85 + v119);
              if (v128)
              {
                OUTLINED_FUNCTION_46_0();
                sub_257479298(v206);
                v20 = v199;
LABEL_138:
                sub_2574695E4(v85, &qword_27F879C30, &qword_257744548);
                v126 = v210;
LABEL_139:
                sub_257479298(v126);
                v187 = OUTLINED_FUNCTION_361();
                sub_257479298(v187);
                v180 = &qword_27F879C38;
                v181 = &qword_257744550;
                v182 = v20;
                goto LABEL_140;
              }

              OUTLINED_FUNCTION_47_0();
              OUTLINED_FUNCTION_359();
              sub_2574792EC(v129);
              OUTLINED_FUNCTION_321();
              sub_2574BA824();
              OUTLINED_FUNCTION_85();
              v85 = v214;
              sub_257479298(&qword_27F879C28);
              v130 = OUTLINED_FUNCTION_307();
              sub_257479298(v130);
              sub_2574695E4(v214, &qword_27F879C28, &qword_257744540);
              v126 = v210;
              v125 = v211;
              v127 = v222;
              v20 = v199;
              if ((v119 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            if (*(v125 + *(v127 + 20)) != *(v126 + *(v127 + 20)))
            {
              goto LABEL_139;
            }

            v131 = v126;
            sub_2577431B4();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v132, MEMORY[0x277D216D0]);
            sub_257743644();
            OUTLINED_FUNCTION_84();
            sub_257479298(v131);
            v133 = OUTLINED_FUNCTION_307();
            sub_257479298(v133);
            sub_2574695E4(v20, &qword_27F879C38, &qword_257744550);
            v27 = v201;
            if ((v119 & 1) == 0)
            {
              goto LABEL_141;
            }
          }

          OUTLINED_FUNCTION_381();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v134, MEMORY[0x277D216D0]);
          v135 = v221;
          sub_257743644();
          OUTLINED_FUNCTION_44_0();
          sub_257479298(v135);
          v136 = OUTLINED_FUNCTION_280();
          sub_257479298(v136);
          v111 = v196;
          v113 = v191;
          if ((v119 & 1) == 0)
          {
            goto LABEL_148;
          }

          ++v115;
          OUTLINED_FUNCTION_305();
        }

        while (v137 != v115);
      }

      OUTLINED_FUNCTION_306();
      v139 = *(v138 + 32);
      OUTLINED_FUNCTION_272();
      v141 = *(v140 + 32);
      OUTLINED_FUNCTION_393();
      if (!v84)
      {
        goto LABEL_148;
      }

      OUTLINED_FUNCTION_305();
      if (v142 && v139 != v141)
      {
        v143 = 0;
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_355(v144);
        v195 = v25;
        v197 = v139;
        v192 = v141;
        do
        {
          if (v143 >= *(v139 + 16))
          {
            goto LABEL_155;
          }

          v145 = *(v220 + 72) * v143;
          OUTLINED_FUNCTION_8_0();
          v146 = OUTLINED_FUNCTION_302(&a13);
          sub_257483824(v146);
          v147 = v212;
          if (v143 >= *(v141 + 16))
          {
            goto LABEL_156;
          }

          OUTLINED_FUNCTION_8_0();
          v148 = OUTLINED_FUNCTION_302(&a10);
          v149 = v213;
          sub_257483824(v148);
          v150 = *v27 == *v213 && v27[1] == v213[1];
          if (!v150 && (sub_257743994() & 1) == 0)
          {
            goto LABEL_146;
          }

          v151 = v27[2] == v213[2] && v27[3] == v213[3];
          if (!v151 && (sub_257743994() & 1) == 0)
          {
            goto LABEL_146;
          }

          OUTLINED_FUNCTION_268();
          v25 = &qword_257744550;
          sub_257487308(v27 + v141);
          OUTLINED_FUNCTION_445(v213 + v141);
          v152 = OUTLINED_FUNCTION_177();
          OUTLINED_FUNCTION_69(v152, v153);
          if (v84)
          {
            OUTLINED_FUNCTION_26_0(v212 + v145);
            if (!v84)
            {
              goto LABEL_136;
            }

            sub_2574695E4(v212, &qword_27F879C38, &qword_257744550);
            OUTLINED_FUNCTION_398();
          }

          else
          {
            OUTLINED_FUNCTION_445(v212);
            OUTLINED_FUNCTION_26_0(v212 + v145);
            if (v154)
            {
              OUTLINED_FUNCTION_45_0();
              sub_257479298(v205);
              v147 = v212;
              v149 = v213;
LABEL_136:
              v184 = &qword_27F879C40;
              v185 = &qword_257750390;
              v186 = v147;
LABEL_145:
              sub_2574695E4(v186, v184, v185);
LABEL_146:
              v95 = v149;
              v25 = v27;
              goto LABEL_147;
            }

            OUTLINED_FUNCTION_11_0();
            sub_2574792EC(v212 + v145);
            v145 = *(v216 + 48);
            v155 = OUTLINED_FUNCTION_211();
            sub_257487308(v155);
            OUTLINED_FUNCTION_445(v207);
            OUTLINED_FUNCTION_28_0(v204);
            if (v84)
            {
              v156 = v205;
              OUTLINED_FUNCTION_28_0(v204 + v145);
              v149 = v213;
              v25 = v195;
              if (!v84)
              {
                goto LABEL_143;
              }

              sub_2574695E4(v204, &qword_27F879C28, &qword_257744540);
              v157 = v222;
              v158 = v207;
            }

            else
            {
              OUTLINED_FUNCTION_180();
              OUTLINED_FUNCTION_445(v159);
              OUTLINED_FUNCTION_28_0(v204 + v145);
              v149 = v213;
              v25 = v195;
              if (v160)
              {
                OUTLINED_FUNCTION_46_0();
                sub_257479298(v207);
LABEL_143:
                sub_2574695E4(v204, &qword_27F879C30, &qword_257744548);
                v158 = v207;
LABEL_144:
                OUTLINED_FUNCTION_242();
                sub_257479298(v158);
                v188 = OUTLINED_FUNCTION_292();
                sub_257479298(v188);
                v184 = &qword_27F879C38;
                v185 = &qword_257744550;
                v186 = v212;
                goto LABEL_145;
              }

              OUTLINED_FUNCTION_47_0();
              OUTLINED_FUNCTION_359();
              sub_2574792EC(v161);
              OUTLINED_FUNCTION_321();
              sub_2574BA824();
              OUTLINED_FUNCTION_85();
              sub_257479298(&qword_27F879C28);
              v162 = OUTLINED_FUNCTION_409();
              sub_257479298(v162);
              sub_2574695E4(v204, &qword_27F879C28, &qword_257744540);
              v157 = v222;
              v156 = v205;
              v158 = v207;
              if ((v145 & 1) == 0)
              {
                goto LABEL_144;
              }
            }

            if (*(v156 + *(v157 + 20)) != *(v158 + *(v157 + 20)))
            {
              goto LABEL_144;
            }

            sub_2577431B4();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v163, MEMORY[0x277D216D0]);
            sub_257743644();
            OUTLINED_FUNCTION_84();
            sub_257479298(v158);
            v164 = OUTLINED_FUNCTION_409();
            sub_257479298(v164);
            sub_2574695E4(v212, &qword_27F879C38, &qword_257744550);
            if ((v145 & 1) == 0)
            {
              goto LABEL_146;
            }
          }

          OUTLINED_FUNCTION_381();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v165, MEMORY[0x277D216D0]);
          sub_257743644();
          OUTLINED_FUNCTION_44_0();
          sub_257479298(v149);
          v166 = OUTLINED_FUNCTION_405();
          sub_257479298(v166);
          v139 = v197;
          v141 = v192;
          if ((v145 & 1) == 0)
          {
            goto LABEL_148;
          }

          ++v143;
          OUTLINED_FUNCTION_305();
        }

        while (v167 != v143);
      }

      OUTLINED_FUNCTION_306();
      OUTLINED_FUNCTION_272();
      v171 = v170 == *(v169 + 40) && v168 == *(v169 + 48);
      if (!v171 && (sub_257743994() & 1) == 0 || ((OUTLINED_FUNCTION_306(), OUTLINED_FUNCTION_272(), v174 == *(v173 + 56)) ? (v175 = v172 == *(v173 + 64)) : (v175 = 0), !v175 && (sub_257743994() & 1) == 0))
      {
LABEL_148:
        sub_257479298(v203);
        sub_257479298(v202);
        goto LABEL_149;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v176, MEMORY[0x277D216D0]);
      v23 = v202;
      OUTLINED_FUNCTION_272();
      v22 = v177;
      v178 = sub_257743644();
      sub_257479298(v22);
      v179 = OUTLINED_FUNCTION_412();
      sub_257479298(v179);
      if (v178)
      {
        v77 = v194 + 1;
        v79 = v189;
        if (v194 + 1 != v193)
        {
          continue;
        }
      }

      goto LABEL_149;
    }

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
  }

  else
  {
LABEL_149:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25747EBD4()
{
  OUTLINED_FUNCTION_31();
  v7 = OUTLINED_FUNCTION_287();
  v69 = type metadata accessor for Proto_FeatureType.OneOf_Type(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_198();
  v68 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C30, &qword_257744548);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_198();
  v75 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v76 = type metadata accessor for Proto_FeatureType(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v71 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_13(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C40, &qword_257750390);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_335();
  v77 = type metadata accessor for Proto_FeatureDescription(v23);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_326();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_324();
  if (v32 && v5 && v3 != v1)
  {
    v65 = v6;
    v66 = v12;
    v64 = v0;
    OUTLINED_FUNCTION_61();
    v27 = v3 + v26;
    v28 = v1 + v26;
    v67 = *(v29 + 72);
    v70 = v21;
    while (1)
    {
      v30 = OUTLINED_FUNCTION_176();
      sub_257483824(v30);
      v31 = OUTLINED_FUNCTION_194();
      sub_257483824(v31);
      v32 = *v2 == *v4 && v2[1] == v4[1];
      if (!v32 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v33 = v2[2] == v4[2] && v2[3] == v4[3];
      if (!v33 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v73 = v28;
      v74 = v27;
      v34 = v21;
      v35 = *(v77 + 28);
      v36 = *(v72 + 48);
      sub_257487308(v2 + v35);
      v37 = v4 + v35;
      v38 = &qword_27F879C38;
      sub_257487308(v37);
      OUTLINED_FUNCTION_72(v6, 1);
      if (v32)
      {
        OUTLINED_FUNCTION_28_0(v6 + v36);
        if (!v32)
        {
          goto LABEL_36;
        }

        sub_2574695E4(v6, &qword_27F879C38, &qword_257744550);
        v40 = v73;
        v39 = v74;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_406();
        sub_257487308(v41);
        OUTLINED_FUNCTION_28_0(v6 + v36);
        if (v42)
        {
          OUTLINED_FUNCTION_45_0();
          sub_257479298(v21);
LABEL_36:
          v60 = &qword_27F879C40;
          v61 = &qword_257750390;
          v62 = v6;
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_11_0();
        v43 = v71;
        sub_2574792EC(v6 + v36);
        v44 = *(v66 + 48);
        v45 = v75;
        sub_257487308(v34);
        sub_257487308(v43);
        OUTLINED_FUNCTION_42_0(v45);
        if (v32)
        {
          OUTLINED_FUNCTION_42_0(v75 + v44);
          if (!v32)
          {
            goto LABEL_38;
          }

          sub_2574695E4(v75, &qword_27F879C28, &qword_257744540);
          v38 = v70;
          v46 = v71;
          v47 = v76;
        }

        else
        {
          v48 = v75;
          sub_257487308(v75);
          OUTLINED_FUNCTION_42_0(v48 + v44);
          if (v49)
          {
            OUTLINED_FUNCTION_46_0();
            sub_257479298(v68);
LABEL_38:
            sub_2574695E4(v75, &qword_27F879C30, &qword_257744548);
            v38 = v70;
            v46 = v71;
LABEL_39:
            OUTLINED_FUNCTION_242();
            sub_257479298(v46);
            sub_257479298(v38);
            v60 = &qword_27F879C38;
            v61 = &qword_257744550;
            v62 = v65;
LABEL_40:
            sub_2574695E4(v62, v60, v61);
            break;
          }

          OUTLINED_FUNCTION_47_0();
          v50 = v75;
          v51 = v68;
          v52 = v64;
          sub_2574792EC(v75 + v44);
          sub_2574BA824();
          v54 = v53;
          sub_257479298(v52);
          sub_257479298(v51);
          sub_2574695E4(v50, &qword_27F879C28, &qword_257744540);
          v38 = v70;
          v46 = v71;
          v47 = v76;
          if ((v54 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if (*(v38 + *(v47 + 20)) != *(v46 + *(v47 + 20)))
        {
          goto LABEL_39;
        }

        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v55, MEMORY[0x277D216D0]);
        v56 = sub_257743644();
        OUTLINED_FUNCTION_241();
        v57 = v46;
        v21 = v70;
        sub_257479298(v57);
        sub_257479298(v21);
        v6 = v65;
        sub_2574695E4(v65, &qword_27F879C38, &qword_257744550);
        v40 = v73;
        v39 = v74;
        if ((v56 & 1) == 0)
        {
          break;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v58, MEMORY[0x277D216D0]);
      sub_257743644();
      OUTLINED_FUNCTION_44_0();
      sub_257479298(v4);
      v59 = OUTLINED_FUNCTION_292();
      sub_257479298(v59);
      if (v38)
      {
        v28 = v40 + v67;
        v27 = v39 + v67;
        if (--v5)
        {
          continue;
        }
      }

      goto LABEL_42;
    }

    sub_257479298(v4);
    v63 = OUTLINED_FUNCTION_292();
    sub_257479298(v63);
  }

LABEL_42:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  v29 = OUTLINED_FUNCTION_216();
  v180 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_198();
  v186 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v34 = OUTLINED_FUNCTION_13(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39();
  v188 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v37);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_363(v39);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_332();
  v190 = type metadata accessor for Proto_MILSpec_NamedValueType(v41);
  OUTLINED_FUNCTION_63();
  v176 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_0();
  v181 = v44;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_196();
  v191 = v46;
  v47 = OUTLINED_FUNCTION_153();
  type metadata accessor for Proto_MILSpec_Block(v47);
  OUTLINED_FUNCTION_63();
  v177 = v48;
  v178 = v49;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_207();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_196();
  v189 = v51;
  v52 = OUTLINED_FUNCTION_153();
  type metadata accessor for Proto_MILSpec_Operation(v52);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_62();
  v185 = v54 - v55;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v155 - v58;
  v60 = *(v26 + 16);
  if (v60 == *(v21 + 16) && v60 && v26 != v21)
  {
    v163 = v57;
    v158 = v20;
    OUTLINED_FUNCTION_61();
    v63 = v26 + v62;
    v169 = v21 + v62;
    v65 = *(v64 + 72);
    v66 = v189;
    v174 = v59;
    v172 = v67;
    v161 = v63;
    v160 = v65;
    while (1)
    {
      v68 = v61;
      v69 = v65 * v61;
      sub_257483824(v63 + v65 * v61);
      v170 = v68;
      if (v68 == v172)
      {
        break;
      }

      v70 = v185;
      sub_257483824(v169 + v69);
      OUTLINED_FUNCTION_402();
      v73 = v73 && v71 == v72;
      if (!v73 && (sub_257743994() & 1) == 0)
      {
        goto LABEL_72;
      }

      sub_257477114();
      if ((v80 & 1) == 0)
      {
        goto LABEL_72;
      }

      sub_25747C3F4(*(v59 + 3), *(v70 + 24), v74, v75, v76, v77, v78, v79, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, SHIDWORD(v164), v165, v166);
      if ((v81 & 1) == 0)
      {
        goto LABEL_72;
      }

      v82 = *(v59 + 4);
      v83 = *(v70 + 32);
      v84 = *(v82 + 16);
      if (v84 != *(v83 + 16))
      {
        goto LABEL_72;
      }

      if (v84 && v82 != v83)
      {
        OUTLINED_FUNCTION_193();
        v165 = v85 + v87;
        v164 = v88 + v87;
        v168 = v22;
        v162 = v25;
        v179 = v27;
        v171 = v23;
        v175 = v28;
        v157 = v85;
        v166 = v88;
        v156 = v89;
        while (1)
        {
          if (v86 >= *(v85 + 16))
          {
            goto LABEL_75;
          }

          v90 = v86;
          v91 = *(v178 + 72) * v86;
          OUTLINED_FUNCTION_20_0();
          sub_257483824(v165 + v91);
          v92 = *(v166 + 16);
          v167 = v90;
          if (v90 >= v92)
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_20_0();
          sub_257483824(v164 + v91);
          v93 = *v66;
          v94 = *v28;
          v95 = *(*v66 + 16);
          v96 = v181;
          v97 = v191;
          if (v95 != *(*v28 + 16))
          {
            goto LABEL_71;
          }

          if (v95 && v93 != v94)
          {
            break;
          }

LABEL_46:
          OUTLINED_FUNCTION_272();
          v132 = *(v131 + 8);
          v133 = *(v130 + 16);
          if (v133 != *(v132 + 16))
          {
            goto LABEL_71;
          }

          if (v133 && v130 != v132)
          {
            v134 = (v130 + 40);
            v135 = (v132 + 40);
            while (1)
            {
              v136 = *(v134 - 1) == *(v135 - 1) && *v134 == *v135;
              if (!v136 && (sub_257743994() & 1) == 0)
              {
                break;
              }

              v134 += 2;
              v135 += 2;
              if (!--v133)
              {
                goto LABEL_56;
              }
            }

LABEL_71:
            OUTLINED_FUNCTION_234();
            sub_257479298(v175);
            sub_257479298(v189);
            v70 = v185;
            goto LABEL_72;
          }

LABEL_56:
          OUTLINED_FUNCTION_272();
          sub_25747F2A8(v138, *(v137 + 16), v139, v140, v141, v142, v143, v144, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
          if ((v145 & 1) == 0)
          {
            goto LABEL_71;
          }

          OUTLINED_FUNCTION_272();
          sub_257476DC8();
          if ((v146 & 1) == 0)
          {
            goto LABEL_71;
          }

          sub_2577431B4();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v147, MEMORY[0x277D216D0]);
          v66 = v189;
          v28 = v175;
          v148 = sub_257743644();
          sub_257479298(v28);
          sub_257479298(v66);
          v22 = v168;
          v25 = v162;
          v27 = v179;
          v23 = v171;
          v70 = v185;
          v85 = v157;
          if ((v148 & 1) == 0)
          {
            goto LABEL_72;
          }

          v86 = v167 + 1;
          if (v167 + 1 == v156)
          {
            goto LABEL_60;
          }
        }

        v98 = (*(v176 + 80) + 32) & ~*(v176 + 80);
        v99 = v93 + v98;
        v100 = v94 + v98;
        v173 = *(v176 + 72);
        v159 = v24;
        while (1)
        {
          sub_257483824(v99);
          v182 = v100;
          v183 = v99;
          v101 = OUTLINED_FUNCTION_156();
          sub_257483824(v101);
          v102 = *v97 == *v96 && v97[1] == v96[1];
          if (!v102 && (sub_257743994() & 1) == 0)
          {
            break;
          }

          v103 = *(v190 + 24);
          v104 = *(v187 + 48);
          v105 = v97 + v103;
          v106 = v179;
          sub_257487308(v105);
          sub_257487308(v96 + v103);
          v107 = v188;
          OUTLINED_FUNCTION_80(v106, 1);
          if (v73)
          {
            OUTLINED_FUNCTION_42_0(v106 + v104);
            if (!v73)
            {
              goto LABEL_66;
            }

            sub_2574695E4(v106, &qword_27F879E10, &qword_257744730);
          }

          else
          {
            v108 = v184;
            sub_257487308(v106);
            OUTLINED_FUNCTION_42_0(v106 + v104);
            if (v109)
            {
              OUTLINED_FUNCTION_94();
              sub_257479298(v108);
LABEL_66:
              sub_2574695E4(v106, &qword_27F879E18, &qword_257744738);
              break;
            }

            OUTLINED_FUNCTION_89();
            sub_2574792EC(v106 + v104);
            v110 = *(v107 + 20);
            v107 = *(v108 + v110);
            v111 = *(v24 + v110);
            if (v107 != v111)
            {
              OUTLINED_FUNCTION_296(v107 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v193);
              OUTLINED_FUNCTION_185();
              sub_257487308(v112);
              v113 = v186;
              v114 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
              OUTLINED_FUNCTION_296(v111 + OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type, &v192);
              v108 = *(v168 + 48);
              v115 = OUTLINED_FUNCTION_362();
              sub_257487308(v115);
              v24 = v180;
              sub_257487308(v111 + v114);
              OUTLINED_FUNCTION_34_0(v113);
              if (v73)
              {

                v116 = OUTLINED_FUNCTION_412();
                sub_2574695E4(v116, v117, &qword_257744660);
                OUTLINED_FUNCTION_155(v186 + v108, 1, v180);
                v96 = v181;
                v59 = v174;
                if (!v73)
                {
                  goto LABEL_68;
                }

                sub_2574695E4(v186, &qword_27F879D40, &qword_257744660);
                OUTLINED_FUNCTION_344();
              }

              else
              {
                v118 = v186;
                OUTLINED_FUNCTION_392();
                sub_257487308(v119);
                OUTLINED_FUNCTION_155(v118 + v108, 1, v180);
                if (v120)
                {

                  sub_2574695E4(v171, &qword_27F879D40, &qword_257744660);
                  OUTLINED_FUNCTION_48();
                  sub_257479298(v114);
                  v96 = v181;
                  v59 = v174;
LABEL_68:
                  sub_2574695E4(v186, &qword_27F879D38, &qword_25774F300);
                  OUTLINED_FUNCTION_344();
LABEL_69:

                  OUTLINED_FUNCTION_243();
                  sub_257479298(v24);
                  sub_257479298(v107);
                  sub_2574695E4(v179, &qword_27F879E10, &qword_257744730);
                  break;
                }

                OUTLINED_FUNCTION_49();
                OUTLINED_FUNCTION_261();
                sub_2574792EC(v121);

                OUTLINED_FUNCTION_294();
                sub_2574DDF3C();
                v123 = v122;
                OUTLINED_FUNCTION_245();
                sub_257479298(v24);
                sub_2574695E4(v171, &qword_27F879D40, &qword_257744660);
                v124 = OUTLINED_FUNCTION_230();
                sub_257479298(v124);
                v125 = OUTLINED_FUNCTION_362();
                sub_2574695E4(v125, v126, &qword_257744660);
                OUTLINED_FUNCTION_344();
                v96 = v181;
                v59 = v174;
                if ((v123 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }
            }

            sub_2577431B4();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v127, MEMORY[0x277D216D0]);
            OUTLINED_FUNCTION_399();
            sub_257743644();
            OUTLINED_FUNCTION_239();
            sub_257479298(v24);
            sub_257479298(v108);
            sub_2574695E4(v179, &qword_27F879E10, &qword_257744730);
            if ((v107 & 1) == 0)
            {
              break;
            }
          }

          sub_2577431B4();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v128, MEMORY[0x277D216D0]);
          sub_257743644();
          OUTLINED_FUNCTION_238();
          sub_257479298(v96);
          v97 = v191;
          sub_257479298(v191);
          if ((v107 & 1) == 0)
          {
            goto LABEL_71;
          }

          OUTLINED_FUNCTION_305();
          v100 = v182 + v129;
          v99 = v183 + v129;
          if (!--v95)
          {
            goto LABEL_46;
          }
        }

        sub_257479298(v96);
        v154 = OUTLINED_FUNCTION_165();
        sub_257479298(v154);
        goto LABEL_71;
      }

LABEL_60:
      sub_257476DC8();
      if ((v149 & 1) == 0)
      {
LABEL_72:
        OUTLINED_FUNCTION_255();
        sub_257479298(v70);
        sub_257479298(v59);
        goto LABEL_73;
      }

      sub_2577431B4();
      v150 = v70;
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v151, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_306();
      v152 = sub_257743644();
      OUTLINED_FUNCTION_255();
      v153 = v150;
      v59 = v174;
      sub_257479298(v153);
      sub_257479298(v59);
      if (v152)
      {
        v61 = v170 + 1;
        v63 = v161;
        v65 = v160;
        if (v170 + 1 != v172)
        {
          continue;
        }
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  else
  {
LABEL_73:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_257480040()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_216();
  v3(v2);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_326();
  v6 = *(v1 + 16);
  if (v6 == *(v0 + 16) && v6 && v1 != v0)
  {
    v7 = 0;
    OUTLINED_FUNCTION_61();
    v24 = v0 + v8;
    v25 = v1 + v8;
    v10 = *(v9 + 72);
    while (1)
    {
      sub_257483824(v25 + v10 * v7);
      if (v7 == v6)
      {
        break;
      }

      sub_257483824(v24 + v10 * v7);
      OUTLINED_FUNCTION_213();
      if (!v14)
      {
LABEL_21:
        v22 = OUTLINED_FUNCTION_262();
        sub_257479298(v22);
        v23 = OUTLINED_FUNCTION_230();
        sub_257479298(v23);
        goto LABEL_22;
      }

      if (v11)
      {
        v14 = v12 == v13;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        OUTLINED_FUNCTION_364();
        while (v15)
        {
          if (*v16 != *v17)
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_347();
          if (v14)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_17:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v18, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_317();
      v19 = sub_257743644();
      v20 = OUTLINED_FUNCTION_262();
      sub_257479298(v20);
      v21 = OUTLINED_FUNCTION_230();
      sub_257479298(v21);
      if ((v19 & 1) != 0 && ++v7 != v6)
      {
        continue;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_257480228()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_287();
  v40 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v35 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_190(v9, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC8, &qword_2577445E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_271();
  type metadata accessor for Proto_ActivationParams(0);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_62();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_345();
  v16 = *(v2 + 16);
  if (v16 == *(v0 + 16) && v16 && v2 != v0)
  {
    OUTLINED_FUNCTION_61();
    v18 = v2 + v17;
    v19 = v0 + v17;
    v37 = *(v20 + 72);
    v21 = v39;
    while (1)
    {
      v22 = OUTLINED_FUNCTION_405();
      sub_257483824(v22);
      sub_257483824(v19);
      v23 = *(v38 + 48);
      v24 = OUTLINED_FUNCTION_365();
      sub_257487308(v24);
      sub_257487308(v14);
      OUTLINED_FUNCTION_155(v1, 1, v40);
      if (v28)
      {
        OUTLINED_FUNCTION_155(v1 + v23, 1, v40);
        if (!v28)
        {
          OUTLINED_FUNCTION_254();
          sub_257479298(v14);
          v33 = OUTLINED_FUNCTION_228();
LABEL_17:
          sub_257479298(v33);
          sub_2574695E4(v1, &qword_27F879CC8, &qword_2577445E0);
          break;
        }

        v25 = OUTLINED_FUNCTION_408();
        sub_2574695E4(v25, v26, &unk_257752A20);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_292();
        sub_257487308(v27);
        OUTLINED_FUNCTION_155(v1 + v23, 1, v40);
        if (v28)
        {
          sub_257479298(v14);
          sub_257479298(v3);
          v33 = v21;
          goto LABEL_17;
        }

        sub_2574792EC(v1 + v23);
        sub_2575273F8();
        v30 = v29;
        v21 = v39;
        sub_257479298(v36);
        sub_257479298(v39);
        sub_2574695E4(v1, &qword_27F879CC0, &unk_257752A20);
        if ((v30 & 1) == 0)
        {
          OUTLINED_FUNCTION_254();
          sub_257479298(v14);
          v34 = OUTLINED_FUNCTION_228();
          sub_257479298(v34);
          break;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v31, MEMORY[0x277D216D0]);
      v32 = sub_257743644();
      sub_257479298(v14);
      sub_257479298(v3);
      if (v32)
      {
        v19 += v37;
        v18 += v37;
        if (--v16)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_2574806C0()
{
  OUTLINED_FUNCTION_31();
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v24 = v7(0);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_326();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_345();
  v10 = *(v6 + 16);
  if (v10 == *(v4 + 16) && v10 && v6 != v4)
  {
    OUTLINED_FUNCTION_61();
    v12 = v6 + v11;
    v13 = v4 + v11;
    v15 = *(v14 + 72);
    while (1)
    {
      sub_257483824(v12);
      sub_257483824(v13);
      v16 = *(v24 + 20);
      v17 = *(v1 + v16);
      v18 = *(v0 + v16);
      if (v17 != v18)
      {

        v19 = v23(v17, v18);

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v20, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_194();
      if ((sub_257743644() & 1) == 0)
      {
        break;
      }

      v21 = OUTLINED_FUNCTION_343();
      sub_257479298(v21);
      sub_257479298(v1);
      v13 += v15;
      v12 += v15;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    sub_257479298(v0);
    v22 = OUTLINED_FUNCTION_228();
    sub_257479298(v22);
  }

LABEL_11:
  OUTLINED_FUNCTION_35();
}

void sub_2574808B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_267();
  v374 = *MEMORY[0x277D85DE8];
  type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_13(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v354 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C88, &unk_2577445A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_135();
  v372 = type metadata accessor for Proto_QuantizationParams(v33);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_1();
  v369 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  OUTLINED_FUNCTION_13(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_198();
  v370 = v38;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C98, &qword_2577445B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  v40 = OUTLINED_FUNCTION_71();
  type metadata accessor for Proto_WeightParams(v40);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_62();
  v44 = v42 - v43;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v354 - v47;
  v49 = *(v21 + 16);
  if (v49 != *(v20 + 16) || !v49 || v21 == v20)
  {
    goto LABEL_251;
  }

  v367 = v46;
  v359 = v31;
  v360 = v25;
  v357 = v30;
  v356 = v23;
  v361 = v22;
  v50 = 0;
  OUTLINED_FUNCTION_61();
  v52 = v21 + v51;
  v364 = 0;
  v365 = v20 + v51;
  v54 = *(v53 + 72);
  v55 = 0xC000000000000000;
  v56 = v372;
  v368 = v57;
  v362 = v54;
  v363 = v52;
  while (1)
  {
    OUTLINED_FUNCTION_253();
    sub_257483824(v52 + v54 * v50);
    if (v50 == v368)
    {
      goto LABEL_253;
    }

    v366 = v50;
    OUTLINED_FUNCTION_253();
    sub_257483824(v365 + v54 * v50);
    OUTLINED_FUNCTION_213();
    if (!v61)
    {
      goto LABEL_250;
    }

    if (v58)
    {
      v61 = v59 == v60;
    }

    else
    {
      v61 = 1;
    }

    if (!v61)
    {
      OUTLINED_FUNCTION_364();
      while (v62)
      {
        if (*v63 != *v64)
        {
          goto LABEL_250;
        }

        ++v63;
        ++v64;
        if (!--v62)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
    }

LABEL_16:
    v65 = *(v48 + 2);
    v67 = *(v44 + 8);
    v66 = *(v44 + 16);
    OUTLINED_FUNCTION_342();
    if (!v61)
    {
      switch(v71)
      {
        case 1:
          if (!__OFSUB__(v70, v69))
          {
            goto LABEL_31;
          }

          goto LABEL_260;
        case 2:
          if (!__OFSUB__(*(v69 + 24), *(v69 + 16)))
          {
            goto LABEL_31;
          }

          goto LABEL_261;
        default:
          goto LABEL_31;
      }
    }

    if (v69)
    {
      break;
    }

    v72 = v65 == v55 && v68 >= 3;
    if (!v72 || v67 || v66 != v55)
    {
      break;
    }

LABEL_87:
    v149 = *(v48 + 4);
    v151 = *(v44 + 24);
    v150 = *(v44 + 32);
    OUTLINED_FUNCTION_342();
    if (!v61)
    {
      switch(v155)
      {
        case 1:
          if (!__OFSUB__(v154, v153))
          {
            goto LABEL_102;
          }

          goto LABEL_262;
        case 2:
          if (!__OFSUB__(*(v153 + 24), *(v153 + 16)))
          {
            goto LABEL_102;
          }

          goto LABEL_263;
        default:
          goto LABEL_102;
      }
    }

    if (v153 || (v149 == v55 ? (v156 = v152 >= 3) : (v156 = 0), !v156 || v151 || v150 != v55))
    {
LABEL_102:
      OUTLINED_FUNCTION_339();
      switch(v164)
      {
        case 1:
          LODWORD(v165) = v161 - v151;
          if (__OFSUB__(v161, v151))
          {
            goto LABEL_257;
          }

          v165 = v165;
LABEL_111:
          if (v163 != v165)
          {
            goto LABEL_250;
          }

          if (v163 < 1)
          {
            goto LABEL_158;
          }

          break;
        case 2:
          v167 = *(v151 + 16);
          v166 = *(v151 + 24);
          v84 = __OFSUB__(v166, v167);
          v165 = v166 - v167;
          if (!v84)
          {
            goto LABEL_111;
          }

          goto LABEL_256;
        case 3:
          if (v163)
          {
            goto LABEL_250;
          }

          goto LABEL_158;
        default:
          v165 = v157;
          goto LABEL_111;
      }

      v168 = v151 >> 8;
      v169 = v151 >> 16;
      v170 = v151 >> 24;
      v171 = v151 >> 40;
      v172 = HIWORD(v151);
      v173 = HIBYTE(v151);
      v174 = v150 >> 8;
      switch(v162)
      {
        case 1:
          v198 = v159 >> 32;
          if (v159 >> 32 < v159)
          {
            goto LABEL_268;
          }

          v55 = v159;
          v199 = OUTLINED_FUNCTION_165();
          sub_257486740(v199, v200);
          v201 = OUTLINED_FUNCTION_165();
          sub_257486740(v201, v202);
          v203 = OUTLINED_FUNCTION_165();
          sub_257486740(v203, v204);
          v189 = sub_257742F64();
          if (!v189)
          {
            goto LABEL_140;
          }

          v205 = sub_257742F84();
          if (__OFSUB__(v55, v205))
          {
            goto LABEL_275;
          }

          v189 += v55 - v205;
LABEL_140:
          v56 = v198 - v55;
LABEL_141:
          v206 = sub_257742F74();
          OUTLINED_FUNCTION_154(v206);
          v364 = v189;
          v207 = OUTLINED_FUNCTION_165();
          sub_257486798(v207, v208);
          v209 = OUTLINED_FUNCTION_165();
          sub_257486798(v209, v210);
          v211 = OUTLINED_FUNCTION_165();
          sub_257486798(v211, v212);
          OUTLINED_FUNCTION_336();
          if ((v213 & 1) == 0)
          {
            goto LABEL_250;
          }

          break;
        case 2:
          v182 = *(v159 + 16);
          v55 = *(v159 + 24);
          v183 = OUTLINED_FUNCTION_165();
          sub_257486740(v183, v184);
          v185 = OUTLINED_FUNCTION_165();
          sub_257486740(v185, v186);
          v187 = OUTLINED_FUNCTION_165();
          sub_257486740(v187, v188);
          v189 = sub_257742F64();
          if (!v189)
          {
            goto LABEL_125;
          }

          v190 = sub_257742F84();
          if (__OFSUB__(v182, v190))
          {
            goto LABEL_274;
          }

          v189 += v182 - v190;
LABEL_125:
          v84 = __OFSUB__(v55, v182);
          v56 = v55 - v182;
          if (!v84)
          {
            goto LABEL_141;
          }

          goto LABEL_269;
        case 3:
          memset(v373, 0, 14);
          if (!v158)
          {
            goto LABEL_143;
          }

          if (v158 == 2)
          {
            v191 = *(v151 + 16);
            v192 = *(v151 + 24);
            v193 = OUTLINED_FUNCTION_165();
            sub_257486740(v193, v194);
            v195 = sub_257742F64();
            if (v195)
            {
              v196 = sub_257742F84();
              if (__OFSUB__(v191, v196))
              {
                goto LABEL_294;
              }

              v195 += v191 - v196;
            }

            if (__OFSUB__(v192, v191))
            {
              goto LABEL_284;
            }

            v197 = sub_257742F74();
            v55 = 0xC000000000000000;
            if (!v195)
            {
              goto LABEL_304;
            }

            goto LABEL_157;
          }

          OUTLINED_FUNCTION_410();
          if (v95 != v84)
          {
            goto LABEL_283;
          }

          v214 = OUTLINED_FUNCTION_165();
          sub_257486740(v214, v215);
          v180 = sub_257742F64();
          if (v180)
          {
            sub_257742F84();
            OUTLINED_FUNCTION_357();
            if (v84)
            {
              goto LABEL_296;
            }

            v180 += v216;
          }

          sub_257742F74();
          if (!v180)
          {
            goto LABEL_303;
          }

          goto LABEL_150;
        default:
          v373[0] = v159;
          LOBYTE(v373[1]) = BYTE2(v159);
          HIBYTE(v373[1]) = BYTE3(v159);
          LOBYTE(v373[2]) = v160;
          HIBYTE(v373[2]) = BYTE5(v159);
          OUTLINED_FUNCTION_200();
          LOBYTE(v373[5]) = v176;
          HIBYTE(v373[5]) = v177;
          LOBYTE(v373[6]) = BYTE4(v149);
          HIBYTE(v373[6]) = BYTE5(v149);
          if (v175)
          {
            if (v175 == 1)
            {
              OUTLINED_FUNCTION_410();
              if (v95 != v84)
              {
                goto LABEL_282;
              }

              v178 = OUTLINED_FUNCTION_165();
              sub_257486740(v178, v179);
              v180 = sub_257742F64();
              if (v180)
              {
                sub_257742F84();
                OUTLINED_FUNCTION_357();
                if (v84)
                {
                  goto LABEL_295;
                }

                v180 += v181;
              }

              sub_257742F74();
              if (!v180)
              {
                goto LABEL_306;
              }

LABEL_150:
              v217 = OUTLINED_FUNCTION_208();
              v219 = memcmp(v217, v180, v218);
              v220 = OUTLINED_FUNCTION_165();
              sub_257486798(v220, v221);
              if (v219)
              {
                goto LABEL_250;
              }
            }

            else
            {
              v222 = *(v151 + 16);
              v223 = *(v151 + 24);
              v224 = OUTLINED_FUNCTION_165();
              sub_257486740(v224, v225);
              v226 = sub_257742F64();
              if (v226)
              {
                v227 = sub_257742F84();
                if (__OFSUB__(v222, v227))
                {
                  goto LABEL_293;
                }

                v226 += v222 - v227;
              }

              if (__OFSUB__(v223, v222))
              {
                goto LABEL_285;
              }

              v197 = sub_257742F74();
              v55 = 0xC000000000000000;
              if (!v226)
              {
                goto LABEL_305;
              }

LABEL_157:
              v228 = OUTLINED_FUNCTION_315(v197);
              v229 = OUTLINED_FUNCTION_165();
              sub_257486798(v229, v230);
              v56 = v372;
              if (v228)
              {
                goto LABEL_250;
              }
            }
          }

          else
          {
LABEL_143:
            if (OUTLINED_FUNCTION_88(v174, v173, v157, v172, v171, v170, v169, v168))
            {
              goto LABEL_250;
            }
          }

          break;
      }
    }

LABEL_158:
    v231 = *(v48 + 6);
    v233 = *(v44 + 40);
    v232 = *(v44 + 48);
    OUTLINED_FUNCTION_342();
    if (!v61)
    {
      switch(v237)
      {
        case 1:
          if (!__OFSUB__(v236, v235))
          {
            goto LABEL_173;
          }

          goto LABEL_264;
        case 2:
          if (!__OFSUB__(*(v235 + 24), *(v235 + 16)))
          {
            goto LABEL_173;
          }

          goto LABEL_265;
        default:
          goto LABEL_173;
      }
    }

    if (v235 || (v231 == v55 ? (v238 = v234 >= 3) : (v238 = 0), !v238 || v233 || v232 != v55))
    {
LABEL_173:
      OUTLINED_FUNCTION_339();
      switch(v246)
      {
        case 1:
          LODWORD(v247) = v243 - v233;
          if (__OFSUB__(v243, v233))
          {
            goto LABEL_258;
          }

          v247 = v247;
LABEL_182:
          if (v245 != v247)
          {
            goto LABEL_250;
          }

          if (v245 < 1)
          {
            goto LABEL_224;
          }

          break;
        case 2:
          v249 = *(v233 + 16);
          v248 = *(v233 + 24);
          v84 = __OFSUB__(v248, v249);
          v247 = v248 - v249;
          if (!v84)
          {
            goto LABEL_182;
          }

          goto LABEL_259;
        case 3:
          if (v245)
          {
            goto LABEL_250;
          }

          goto LABEL_224;
        default:
          v247 = v239;
          goto LABEL_182;
      }

      v250 = v233 >> 32;
      v251 = v233 >> 8;
      v252 = v233 >> 16;
      v253 = v233 >> 24;
      v254 = v233 >> 40;
      v255 = HIWORD(v233);
      v256 = HIBYTE(v233);
      v257 = v232 >> 8;
      switch(v244)
      {
        case 1:
          v287 = v241 >> 32;
          if (v241 >> 32 < v241)
          {
            goto LABEL_270;
          }

          v55 = v241;
          v288 = OUTLINED_FUNCTION_165();
          sub_257486740(v288, v289);
          v290 = OUTLINED_FUNCTION_165();
          sub_257486740(v290, v291);
          v292 = OUTLINED_FUNCTION_165();
          sub_257486740(v292, v293);
          v275 = sub_257742F64();
          if (!v275)
          {
            goto LABEL_208;
          }

          v294 = sub_257742F84();
          if (__OFSUB__(v55, v294))
          {
            goto LABEL_277;
          }

          v275 += v55 - v294;
LABEL_208:
          v56 = v287 - v55;
LABEL_209:
          v295 = sub_257742F74();
          OUTLINED_FUNCTION_154(v295);
          v364 = v275;
          v296 = OUTLINED_FUNCTION_165();
          sub_257486798(v296, v297);
          v298 = OUTLINED_FUNCTION_165();
          sub_257486798(v298, v299);
          v300 = OUTLINED_FUNCTION_165();
          sub_257486798(v300, v301);
          OUTLINED_FUNCTION_336();
          if ((v302 & 1) == 0)
          {
            goto LABEL_250;
          }

          break;
        case 2:
          v268 = *(v241 + 16);
          v55 = *(v241 + 24);
          v269 = OUTLINED_FUNCTION_165();
          sub_257486740(v269, v270);
          v271 = OUTLINED_FUNCTION_165();
          sub_257486740(v271, v272);
          v273 = OUTLINED_FUNCTION_165();
          sub_257486740(v273, v274);
          v275 = sub_257742F64();
          if (!v275)
          {
            goto LABEL_192;
          }

          v276 = sub_257742F84();
          if (__OFSUB__(v268, v276))
          {
            goto LABEL_276;
          }

          v275 += v268 - v276;
LABEL_192:
          v84 = __OFSUB__(v55, v268);
          v56 = v55 - v268;
          if (!v84)
          {
            goto LABEL_209;
          }

          goto LABEL_271;
        case 3:
          memset(v373, 0, 14);
          if (!v240)
          {
            goto LABEL_211;
          }

          if (v240 == 2)
          {
            v277 = *(v233 + 16);
            v278 = *(v233 + 24);
            v279 = OUTLINED_FUNCTION_165();
            sub_257486740(v279, v280);
            v281 = sub_257742F64();
            if (v281)
            {
              v282 = sub_257742F84();
              if (__OFSUB__(v277, v282))
              {
                goto LABEL_297;
              }

              v281 += v277 - v282;
            }

            if (__OFSUB__(v278, v277))
            {
              goto LABEL_288;
            }

            v283 = sub_257742F74();
            v55 = 0xC000000000000000;
            if (!v281)
            {
              goto LABEL_308;
            }

            v284 = OUTLINED_FUNCTION_315(v283);
            v285 = OUTLINED_FUNCTION_165();
            sub_257486798(v285, v286);
            v56 = v372;
            if (v284)
            {
              goto LABEL_250;
            }
          }

          else
          {
            v358 = v233;
            if (v250 < v233)
            {
              goto LABEL_286;
            }

            v303 = OUTLINED_FUNCTION_165();
            sub_257486740(v303, v304);
            v305 = sub_257742F64();
            if (v305)
            {
              v306 = v305;
              sub_257742F84();
              OUTLINED_FUNCTION_357();
              if (v84)
              {
                goto LABEL_298;
              }

              v355 = v307 + v306;
            }

            else
            {
              v355 = 0;
            }

            sub_257742F74();
            if (!v355)
            {
              goto LABEL_307;
            }

            v320 = OUTLINED_FUNCTION_208();
            v323 = memcmp(v320, v321, v322);
            v324 = OUTLINED_FUNCTION_165();
            sub_257486798(v324, v325);
            if (v323)
            {
              goto LABEL_250;
            }
          }

          break;
        default:
          v373[0] = v241;
          LOBYTE(v373[1]) = BYTE2(v241);
          HIBYTE(v373[1]) = BYTE3(v241);
          LOBYTE(v373[2]) = v242;
          HIBYTE(v373[2]) = BYTE5(v241);
          OUTLINED_FUNCTION_200();
          LOBYTE(v373[5]) = v259;
          HIBYTE(v373[5]) = v260;
          LOBYTE(v373[6]) = BYTE4(v231);
          HIBYTE(v373[6]) = BYTE5(v231);
          if (v258)
          {
            if (v258 == 1)
            {
              if (v250 < v233)
              {
                goto LABEL_287;
              }

              v261 = OUTLINED_FUNCTION_165();
              sub_257486740(v261, v262);
              v263 = OUTLINED_FUNCTION_165();
              sub_257486740(v263, v264);
              v265 = v232 & 0x3FFFFFFFFFFFFFFFLL;
              v266 = v233;
              v267 = v233 >> 32;
            }

            else
            {
              v308 = *(v233 + 16);
              v309 = *(v233 + 24);
              v310 = OUTLINED_FUNCTION_165();
              sub_257486740(v310, v311);
              v312 = OUTLINED_FUNCTION_165();
              sub_257486740(v312, v313);
              v265 = v232 & 0x3FFFFFFFFFFFFFFFLL;
              v266 = v308;
              v267 = v309;
            }

            v314 = v364;
            v315 = sub_257483200(v266, v267, v265, v373);
            v316 = OUTLINED_FUNCTION_165();
            sub_257486798(v316, v317);
            v318 = OUTLINED_FUNCTION_165();
            sub_257486798(v318, v319);
            v364 = v314;
            if (v314)
            {
              goto LABEL_309;
            }

            if ((v315 & 1) == 0)
            {
              goto LABEL_250;
            }
          }

          else
          {
LABEL_211:
            if (OUTLINED_FUNCTION_88(v257, v256, v239, v255, v254, v253, v252, v251))
            {
              goto LABEL_250;
            }
          }

          break;
      }
    }

LABEL_224:
    v326 = *(v367 + 40);
    v327 = *(v371 + 48);
    sub_257487308(&v48[v326]);
    sub_257487308(v44 + v326);
    OUTLINED_FUNCTION_65(v24);
    if (!v61)
    {
      v330 = v370;
      sub_257487308(v24);
      OUTLINED_FUNCTION_65(v24 + v327);
      if (v331)
      {
        v349 = OUTLINED_FUNCTION_308();
        sub_257479298(v349);
LABEL_245:
        v350 = &qword_27F879C98;
        v351 = &qword_2577445B0;
      }

      else
      {
        v332 = v369;
        sub_2574792EC(v24 + v327);
        if (*v330 != *v332)
        {
          goto LABEL_248;
        }

        v358 = v24;
        v333 = *(v56 + 20);
        v334 = v360;
        v335 = *(v359 + 48);
        sub_257487308(v330 + v333);
        sub_257487308(v332 + v333);
        OUTLINED_FUNCTION_80(v334, 1);
        if (v61)
        {
          OUTLINED_FUNCTION_42_0(v334 + v335);
          if (!v61)
          {
            goto LABEL_247;
          }

          sub_2574695E4(v334, &qword_27F879C80, &qword_25776D180);
          v24 = v358;
          goto LABEL_238;
        }

        OUTLINED_FUNCTION_392();
        sub_257487308(v336);
        OUTLINED_FUNCTION_42_0(v334 + v335);
        if (!v337)
        {
          OUTLINED_FUNCTION_180();
          sub_2574792EC(v338);
          OUTLINED_FUNCTION_229();
          sub_257530D2C();
          v340 = v339;
          sub_257479298(&qword_27F879C80);
          v341 = OUTLINED_FUNCTION_366();
          sub_257479298(v341);
          sub_2574695E4(v334, &qword_27F879C80, &qword_25776D180);
          v56 = v372;
          v24 = v358;
          if ((v340 & 1) == 0)
          {
            goto LABEL_248;
          }

LABEL_238:
          sub_2577431B4();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v342, MEMORY[0x277D216D0]);
          v343 = sub_257743644();
          sub_257479298(v332);
          sub_257479298(v330);
          v344 = OUTLINED_FUNCTION_365();
          sub_2574695E4(v344, v345, &unk_2577530D0);
          v55 = 0xC000000000000000;
          if ((v343 & 1) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_239;
        }

        sub_257479298(v56);
LABEL_247:
        sub_2574695E4(v334, &qword_27F879C88, &unk_2577445A0);
        v24 = v358;
LABEL_248:
        sub_257479298(v332);
        v352 = OUTLINED_FUNCTION_361();
        sub_257479298(v352);
        v350 = &qword_27F879C90;
        v351 = &unk_2577530D0;
      }

      sub_2574695E4(v24, v350, v351);
LABEL_250:
      sub_257479298(v44);
      v353 = OUTLINED_FUNCTION_262();
      sub_257479298(v353);
LABEL_251:
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_65(v24 + v327);
    if (!v61)
    {
      goto LABEL_245;
    }

    v328 = OUTLINED_FUNCTION_365();
    sub_2574695E4(v328, v329, &unk_2577530D0);
LABEL_239:
    if (v48[56] != *(v44 + 56))
    {
      goto LABEL_250;
    }

    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    v347 = sub_257483ACC(&qword_27F879B68, v346, MEMORY[0x277D216D0]);
    v348 = OUTLINED_FUNCTION_143(v347);
    sub_257479298(v44);
    sub_257479298(v48);
    if (v348)
    {
      v50 = v366 + 1;
      v54 = v362;
      v52 = v363;
      if (v366 + 1 != v368)
      {
        continue;
      }
    }

    goto LABEL_251;
  }

LABEL_31:
  OUTLINED_FUNCTION_339();
  switch(v80)
  {
    case 1:
      LODWORD(v81) = v77 - v67;
      if (__OFSUB__(v77, v67))
      {
        goto LABEL_254;
      }

      v81 = v81;
LABEL_40:
      if (v79 != v81)
      {
        goto LABEL_250;
      }

      if (v79 < 1)
      {
        goto LABEL_87;
      }

      break;
    case 2:
      v83 = *(v67 + 16);
      v82 = *(v67 + 24);
      v84 = __OFSUB__(v82, v83);
      v81 = v82 - v83;
      if (!v84)
      {
        goto LABEL_40;
      }

      goto LABEL_255;
    case 3:
      if (v79)
      {
        goto LABEL_250;
      }

      goto LABEL_87;
    default:
      v81 = v73;
      goto LABEL_40;
  }

  v85 = v67 >> 8;
  v86 = v67 >> 16;
  v87 = v67 >> 24;
  v88 = v67 >> 40;
  v89 = HIWORD(v67);
  v90 = HIBYTE(v67);
  v91 = v66 >> 8;
  switch(v78)
  {
    case 1:
      v116 = v75 >> 32;
      if (v75 >> 32 < v75)
      {
        goto LABEL_266;
      }

      v55 = v75;
      v117 = OUTLINED_FUNCTION_165();
      sub_257486740(v117, v118);
      v119 = OUTLINED_FUNCTION_165();
      sub_257486740(v119, v120);
      v121 = OUTLINED_FUNCTION_165();
      sub_257486740(v121, v122);
      v107 = sub_257742F64();
      if (!v107)
      {
        goto LABEL_69;
      }

      v123 = sub_257742F84();
      if (__OFSUB__(v55, v123))
      {
        goto LABEL_273;
      }

      v107 += v55 - v123;
LABEL_69:
      v56 = v116 - v55;
LABEL_70:
      v124 = sub_257742F74();
      OUTLINED_FUNCTION_154(v124);
      v364 = v107;
      v125 = OUTLINED_FUNCTION_165();
      sub_257486798(v125, v126);
      v127 = OUTLINED_FUNCTION_165();
      sub_257486798(v127, v128);
      v129 = OUTLINED_FUNCTION_165();
      sub_257486798(v129, v130);
      OUTLINED_FUNCTION_336();
      if ((v131 & 1) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_87;
    case 2:
      v100 = *(v75 + 16);
      v55 = *(v75 + 24);
      v101 = OUTLINED_FUNCTION_165();
      sub_257486740(v101, v102);
      v103 = OUTLINED_FUNCTION_165();
      sub_257486740(v103, v104);
      v105 = OUTLINED_FUNCTION_165();
      sub_257486740(v105, v106);
      v107 = sub_257742F64();
      if (!v107)
      {
        goto LABEL_54;
      }

      v108 = sub_257742F84();
      if (__OFSUB__(v100, v108))
      {
        goto LABEL_272;
      }

      v107 += v100 - v108;
LABEL_54:
      v84 = __OFSUB__(v55, v100);
      v56 = v55 - v100;
      if (!v84)
      {
        goto LABEL_70;
      }

      goto LABEL_267;
    case 3:
      memset(v373, 0, 14);
      if (!v74)
      {
        goto LABEL_72;
      }

      if (v74 == 2)
      {
        v109 = *(v67 + 16);
        v110 = *(v67 + 24);
        v111 = OUTLINED_FUNCTION_165();
        sub_257486740(v111, v112);
        v113 = sub_257742F64();
        if (v113)
        {
          v114 = sub_257742F84();
          if (__OFSUB__(v109, v114))
          {
            goto LABEL_289;
          }

          v113 += v109 - v114;
        }

        if (__OFSUB__(v110, v109))
        {
          goto LABEL_280;
        }

        v115 = sub_257742F74();
        v55 = 0xC000000000000000;
        if (!v113)
        {
          goto LABEL_300;
        }

LABEL_86:
        v146 = OUTLINED_FUNCTION_315(v115);
        v147 = OUTLINED_FUNCTION_165();
        sub_257486798(v147, v148);
        v56 = v372;
        if (v146)
        {
          goto LABEL_250;
        }

        goto LABEL_87;
      }

      OUTLINED_FUNCTION_410();
      if (v95 != v84)
      {
        goto LABEL_278;
      }

      v132 = OUTLINED_FUNCTION_165();
      sub_257486740(v132, v133);
      v98 = sub_257742F64();
      if (v98)
      {
        sub_257742F84();
        OUTLINED_FUNCTION_357();
        if (v84)
        {
          goto LABEL_292;
        }

        v98 += v134;
      }

      sub_257742F74();
      if (v98)
      {
LABEL_79:
        v135 = OUTLINED_FUNCTION_208();
        v137 = memcmp(v135, v98, v136);
        v138 = OUTLINED_FUNCTION_165();
        sub_257486798(v138, v139);
        if (v137)
        {
          goto LABEL_250;
        }

        goto LABEL_87;
      }

      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      MEMORY[0x259C65580](v364);
      __break(1u);
      return;
    default:
      v373[0] = v75;
      LOBYTE(v373[1]) = BYTE2(v75);
      HIBYTE(v373[1]) = BYTE3(v75);
      LOBYTE(v373[2]) = v76;
      HIBYTE(v373[2]) = BYTE5(v75);
      OUTLINED_FUNCTION_200();
      LOBYTE(v373[5]) = v93;
      HIBYTE(v373[5]) = v94;
      LOBYTE(v373[6]) = BYTE4(v65);
      HIBYTE(v373[6]) = BYTE5(v65);
      if (!v92)
      {
LABEL_72:
        if (OUTLINED_FUNCTION_88(v91, v90, v73, v89, v88, v87, v86, v85))
        {
          goto LABEL_250;
        }

        goto LABEL_87;
      }

      if (v92 == 1)
      {
        OUTLINED_FUNCTION_410();
        if (v95 != v84)
        {
          goto LABEL_279;
        }

        v96 = OUTLINED_FUNCTION_165();
        sub_257486740(v96, v97);
        v98 = sub_257742F64();
        if (v98)
        {
          sub_257742F84();
          OUTLINED_FUNCTION_357();
          if (v84)
          {
            goto LABEL_291;
          }

          v98 += v99;
        }

        sub_257742F74();
        if (!v98)
        {
          goto LABEL_302;
        }

        goto LABEL_79;
      }

      v140 = *(v67 + 16);
      v141 = *(v67 + 24);
      v142 = OUTLINED_FUNCTION_165();
      sub_257486740(v142, v143);
      v144 = sub_257742F64();
      if (v144)
      {
        v145 = sub_257742F84();
        if (__OFSUB__(v140, v145))
        {
          goto LABEL_290;
        }

        v144 += v140 - v145;
      }

      if (__OFSUB__(v141, v140))
      {
        goto LABEL_281;
      }

      v115 = sub_257742F74();
      v55 = 0xC000000000000000;
      if (!v144)
      {
        goto LABEL_301;
      }

      goto LABEL_86;
  }
}

void sub_257481CB8()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(v5);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_43_0();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_222();
      sub_257483824(v9);
      v10 = OUTLINED_FUNCTION_229();
      sub_257483824(v10);
      if (*v2 != *v1 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      v11 = *(v2 + 16);
      v12 = *(v1 + 16);
      if (*(v1 + 24) == 1)
      {
        switch(v12)
        {
          case 1:
            if (v11 != 1)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 2:
            if (v11 != 2)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 3:
            if (v11 != 3)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 4:
            if (v11 != 4)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 5:
            if (v11 != 5)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 6:
            if (v11 != 6)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          default:
            if (v11)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
        }
      }

      if (v11 != v12)
      {
        break;
      }

LABEL_13:
      if (*(v2 + 32) != *(v1 + 32))
      {
        break;
      }

      if (*(v2 + 40) != *(v1 + 40))
      {
        break;
      }

      if (*(v2 + 48) != *(v1 + 48))
      {
        break;
      }

      if (*(v2 + 56) != *(v1 + 56))
      {
        break;
      }

      if (*(v2 + 64) != *(v1 + 64))
      {
        break;
      }

      sub_257481FE8();
      if ((v13 & 1) == 0 || *(v2 + 80) != *(v1 + 80))
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v15 = sub_257483ACC(&qword_27F879B68, v14, MEMORY[0x277D216D0]);
      v16 = OUTLINED_FUNCTION_192(v15);
      sub_257479298(v1);
      v17 = OUTLINED_FUNCTION_252();
      sub_257479298(v17);
      if (v16)
      {
        OUTLINED_FUNCTION_67();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

LABEL_35:
    sub_257479298(v1);
    v18 = OUTLINED_FUNCTION_204();
    sub_257479298(v18);
  }

LABEL_36:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_257481FE8()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_216();
  v6(v5);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_325();
  if (v9 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_61();
    v11 = v3 + v10;
    v12 = v0 + v10;
    v14 = *(v13 + 72);
    while (1)
    {
      v15 = OUTLINED_FUNCTION_194();
      sub_257483824(v15);
      sub_257483824(v12);
      if (*v2 != *v1 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v17 = sub_257483ACC(&qword_27F879B68, v16, MEMORY[0x277D216D0]);
      v18 = OUTLINED_FUNCTION_430(v17);
      v19 = OUTLINED_FUNCTION_262();
      sub_257479298(v19);
      v20 = OUTLINED_FUNCTION_230();
      sub_257479298(v20);
      if (v18)
      {
        v12 += v14;
        v11 += v14;
        OUTLINED_FUNCTION_377();
        if (!v9)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v21 = OUTLINED_FUNCTION_262();
    sub_257479298(v21);
    v22 = OUTLINED_FUNCTION_230();
    sub_257479298(v22);
  }

LABEL_14:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257482390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 == v2)
        {
          return result;
        }

        if (v7 >= v2)
        {
          __break(1u);
          return result;
        }

        v4 = *(v3 + 8 * v7);
        v5 = *(a2 + 32 + 8 * v7++);
        v6 = *(v4 + 16);
        if (v6 != *(v5 + 16))
        {
          return result;
        }
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return OUTLINED_FUNCTION_298();
  }

  return 1;
}

void sub_25748244C()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_287();
  v5 = type metadata accessor for SizeRange(v4) - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_324();
  if (v10 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_61();
    v12 = v2 + v11;
    v13 = v0 + v11;
    v15 = *(v14 + 72);
    while (1)
    {
      v16 = OUTLINED_FUNCTION_176();
      sub_257483824(v16);
      v17 = OUTLINED_FUNCTION_262();
      sub_257483824(v17);
      if (*v1 != *v8 || v1[1] != v8[1])
      {
        break;
      }

      type metadata accessor for Proto_SizeRange(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v18, MEMORY[0x277D216D0]);
      v19 = sub_257743644();
      sub_257479298(v8);
      v20 = OUTLINED_FUNCTION_409();
      sub_257479298(v20);
      if (v19)
      {
        v13 += v15;
        v12 += v15;
        if (--v3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_257479298(v8);
    v21 = OUTLINED_FUNCTION_173();
    sub_257479298(v21);
  }

LABEL_13:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25748264C()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_ArrayFeatureType.Shape(v4);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_279();
  if (v10 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_340();
    while (1)
    {
      OUTLINED_FUNCTION_385();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_213();
      if (!v10)
      {
LABEL_22:
        sub_257479298(v1);
        v18 = OUTLINED_FUNCTION_204();
        sub_257479298(v18);
        goto LABEL_23;
      }

      v10 = !v7 || v8 == v9;
      if (!v10)
      {
        break;
      }

LABEL_17:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v15 = sub_257483ACC(&qword_27F879B68, v14, MEMORY[0x277D216D0]);
      v16 = OUTLINED_FUNCTION_260(v15);
      sub_257479298(v1);
      v17 = OUTLINED_FUNCTION_264();
      sub_257479298(v17);
      if (v16)
      {
        OUTLINED_FUNCTION_411();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_364();
    while (v11)
    {
      if (*v12 != *v13)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_347();
      if (v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25748286C()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_216();
  v6(v5);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_325();
  if (v9 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_61();
    v11 = v3 + v10;
    v12 = v0 + v10;
    v14 = *(v13 + 72);
    while (1)
    {
      v15 = OUTLINED_FUNCTION_194();
      sub_257483824(v15);
      sub_257483824(v12);
      if (*v2 != *v1 || v2[1] != v1[1])
      {
        break;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v17 = sub_257483ACC(&qword_27F879B68, v16, MEMORY[0x277D216D0]);
      v18 = OUTLINED_FUNCTION_430(v17);
      v19 = OUTLINED_FUNCTION_262();
      sub_257479298(v19);
      v20 = OUTLINED_FUNCTION_230();
      sub_257479298(v20);
      if (v18)
      {
        v12 += v14;
        v11 += v14;
        OUTLINED_FUNCTION_377();
        if (!v9)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v21 = OUTLINED_FUNCTION_262();
    sub_257479298(v21);
    v22 = OUTLINED_FUNCTION_230();
    sub_257479298(v22);
  }

LABEL_14:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257482A08(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 == a2[1].i64[0])
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 2;
      v4 = a2 + 2;
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *v6.i8 = vmovn_s64(vceqq_s64(v6, v7));
        v8 = v6.i8[0] & v6.i8[4];
        if ((v6.i8[0] & v6.i8[4] & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_257482A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      if (*v3 == 1)
      {
        result = 0;
        if (!*v4 || ((v6 ^ v5) & 1) != 0)
        {
          return result;
        }
      }

      else
      {
        if (v5 == v6)
        {
          v8 = *v4;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_289();
}

void sub_257482AFC()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_133();
  type metadata accessor for Proto_Tensor(v4);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_279();
  if (v10 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_340();
    while (1)
    {
      OUTLINED_FUNCTION_385();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_346();
      if (!v10 || (OUTLINED_FUNCTION_213(), !v10))
      {
LABEL_24:
        sub_257479298(v1);
        v18 = OUTLINED_FUNCTION_204();
        sub_257479298(v18);
        goto LABEL_25;
      }

      v10 = !v7 || v8 == v9;
      if (!v10)
      {
        break;
      }

LABEL_19:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v15 = sub_257483ACC(&qword_27F879B68, v14, MEMORY[0x277D216D0]);
      v16 = OUTLINED_FUNCTION_260(v15);
      sub_257479298(v1);
      v17 = OUTLINED_FUNCTION_264();
      sub_257479298(v17);
      if (v16)
      {
        OUTLINED_FUNCTION_411();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_364();
    while (v11)
    {
      if (*v12 != *v13)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_347();
      if (v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_257482CE4()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  v8 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v32 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_190(v13, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C50, &qword_257744568);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  v33 = type metadata accessor for Proto_LossLayer(v15);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_270();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_333();
  if (v22 && v0 && v1 != v6)
  {
    v34 = v8;
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_337();
    v18 = v33;
    while (1)
    {
      sub_257483824(v4);
      v19 = OUTLINED_FUNCTION_343();
      sub_257483824(v19);
      OUTLINED_FUNCTION_402();
      v22 = v22 && v20 == v21;
      if (!v22 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v23 = OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_353(v23);
      OUTLINED_FUNCTION_353(v36 + v8);
      OUTLINED_FUNCTION_155(v3, 1, v34);
      if (v22)
      {
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (!v22)
        {
          goto LABEL_24;
        }

        sub_2574695E4(v3, &qword_27F879C48, v2);
      }

      else
      {
        OUTLINED_FUNCTION_353(v3);
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (v24)
        {
          sub_257479298(v35);
LABEL_24:
          sub_2574695E4(v3, &qword_27F879C50, &qword_257744568);
          break;
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_321();
        sub_257533840();
        v26 = v25;
        v27 = v18;
        v18 = v33;
        sub_257479298(&qword_27F879C48);
        sub_257479298(v27);
        sub_2574695E4(v3, &qword_27F879C48, v2);
        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      v29 = sub_257483ACC(&qword_27F879B68, v28, MEMORY[0x277D216D0]);
      v6 = OUTLINED_FUNCTION_382(v29);
      v8 = type metadata accessor for Proto_LossLayer;
      sub_257479298(v2);
      v30 = OUTLINED_FUNCTION_415();
      sub_257479298(v30);
      if (v6)
      {
        OUTLINED_FUNCTION_323();
        if (!v22)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    sub_257479298(v36);
    v31 = OUTLINED_FUNCTION_165();
    sub_257479298(v31);
  }

LABEL_26:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257483094@<X0>(char *__s1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a4 >> 62)
  {
    case 1uLL:
      v10 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v9 = a3;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
LABEL_9:
      result = sub_257483200(v9, v10, a4 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a5 = result & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        result = MEMORY[0x259C65580](v5);
        __break(1u);
      }

      return result;
    default:
      __s2 = a3;
      v12 = a4;
      v13 = BYTE2(a4);
      v14 = BYTE3(a4);
      v15 = BYTE4(a4);
      v16 = BYTE5(a4);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a4)) == 0;
      goto LABEL_10;
  }
}

char *sub_257483200(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_257742F64();
  v8 = result;
  if (result)
  {
    result = sub_257742F84();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_257742F74();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

void sub_2574832B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_4(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_173();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_173();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_257483384(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_2574833A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_2574833F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_257483444(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_25748346C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_2574834A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

void sub_257483584(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_267();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_222(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_4(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_173();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_173();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_257483754(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257485548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_257483824(uint64_t a1)
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v1;
}

_OWORD *sub_25748396C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25748397C()
{
  result = qword_27F879C10;
  if (!qword_27F879C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F879C08, &qword_2577709D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F879C10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_257483A28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
    }

    else if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_257483ACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257483B84(uint64_t a1)
{
  result = type metadata accessor for Proto_Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257483BF4(uint64_t a1)
{
  result = type metadata accessor for PipelineClassifierConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PipelineRegressorConfiguration(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PipelineConfiguration(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for IdentityModelConfiguration(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for CustomModelConfiguration(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for LinkedModelConfiguration(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for SerializedModelConfiguration(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for FeatureVectorizerConfiguration(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for DictionaryVectorizerConfiguration(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ImputerConfiguration(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for CategoricalMappingConfiguration(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for OneHotEncoderConfiguration(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for NormalizerConfiguration(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for ScalerConfiguration(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for NonMaximumSuppressorConfiguration(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for LinearClassifierConfiguration(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for LinearRegressorConfiguration(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for TreeEnsembleClassifierConfiguration(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for TreeEnsembleRegressorConfiguration(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for ArrayFeatureExtractorConfiguration(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for AudioFeaturePrintKind(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for VisionFeaturePrintKind(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for SoundAnalysisPreprocessorKind(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for WordTaggerConfiguration(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for WordEmbeddingConfiguration(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TextClassifierConfiguration(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for GazetteerConfiguration(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for ItemSimilarityRecommenderConfiguration(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for NeuralNetwork(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for NeuralNetworkClassifier(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for NeuralNetworkRegressor(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for MLProgram(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for ODIELibrary(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for ClassConfidenceThresholding(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for SupportVectorClassifierConfiguration(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for SupportVectorRegressorConfiguration(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for BayesianProbitRegressorConfiguration(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for NearestNeighborsConfiguration(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                              return 0;
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

char *sub_257484040(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257485650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257484540(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257485BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257484A20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257485EF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257484BE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257486000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257484DE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257486100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257484F80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2574863C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257485548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257485650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B40, &unk_257744100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_257485788(uint64_t a1)
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_186();
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_20();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v9 = v4;
  }

  v12 = v1[2];
  if (v9 <= v12)
  {
    v13 = v1[2];
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_379(v3, v4, v5, v6, v7, v8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v2)
  {
    if (v14 != v1 || &v1[5 * v12 + 4] <= v14 + 4)
    {
      v17 = OUTLINED_FUNCTION_201();
      memmove(v17, v18, v19);
    }

    v1[2] = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_201();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_434();
}

void sub_257485894()
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_9();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FF0, &qword_257744928);
    v8 = OUTLINED_FUNCTION_431(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_12_0(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[24 * v2 + 32] <= v8 + 32)
    {
      v11 = OUTLINED_FUNCTION_211();
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FF8, &unk_257744930);
    OUTLINED_FUNCTION_211();
    swift_arrayInitWithCopy();
  }
}

void sub_2574859AC()
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_9();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A008, &qword_257744940);
    v8 = OUTLINED_FUNCTION_431(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_12_0(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[24 * v2 + 32] <= v8 + 32)
    {
      v11 = OUTLINED_FUNCTION_211();
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A010, &qword_257744948);
    OUTLINED_FUNCTION_211();
    swift_arrayInitWithCopy();
  }
}

void sub_257485AC4()
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_9();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A030, &qword_257744968);
    v8 = OUTLINED_FUNCTION_46(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_418();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[4 * v2 + 4] <= v8 + 4)
    {
      v11 = OUTLINED_FUNCTION_211();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A028, &qword_257744960);
    OUTLINED_FUNCTION_211();
    swift_arrayInitWithCopy();
  }
}

char *sub_257485BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E58, &qword_257744780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_257485CBC()
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_379(v2, v3, v4, v5, v6, v7);
    v14 = OUTLINED_FUNCTION_46(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_418();
    *(v14 + 2) = v11;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[8 * v11] <= v16)
    {
      memmove(v16, v17, 8 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v11);
  }
}

void sub_257485D88()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_186();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v5 ^ v6 | v22)
  {
    v14 = v2;
  }

  else
  {
    v14 = v13;
  }

  if (!v14)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_379(v7, v8, v9, v10, v11, v12);
  v15 = OUTLINED_FUNCTION_173();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_24(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_352();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21 - v3 == 0x8000000000000000 && v19 == -1;
  if (v22)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_349(v21 - v3);
LABEL_17:
  v23 = OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_193();
  if (v1)
  {
    sub_257483584(v0 + v25, v2, v20 + v25);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_429();
  }

  OUTLINED_FUNCTION_35();
}

char *sub_257485EF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D10, &unk_257744630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257486000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F28, &qword_257744850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_257486100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B08, &qword_2577440C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_257486218()
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_379(v2, v3, v4, v5, v6, v7);
    v14 = OUTLINED_FUNCTION_46(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_418();
    *(v14 + 2) = v11;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v11] <= v16)
    {
      memmove(v16, v17, 16 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v11);
  }
}

void sub_2574862E4(uint64_t a1)
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_186();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v5 ^ v6 | v14)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_379(v7, v8, v9, v10, v11, v12);
    v17 = OUTLINED_FUNCTION_46(v16);
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_418();
    v17[2] = v3;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (v2)
  {
    if (v17 != v1 || &v1[v3 + 4] <= v17 + 4)
    {
      v20 = OUTLINED_FUNCTION_201();
      memmove(v20, v21, v22);
    }

    v1[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_201();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_434();
}

char *sub_2574863C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E40, &qword_257744760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2574864C8(uint64_t a1)
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_186();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v5 ^ v6 | v14)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    OUTLINED_FUNCTION_379(v7, v8, v9, v10, v11, v12);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    OUTLINED_FUNCTION_349(v17 - 32);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v2)
  {
    if (v16 != v1 || &v1[24 * v3 + 32] <= v16 + 32)
    {
      v19 = OUTLINED_FUNCTION_201();
      memmove(v19, v20, v21);
    }

    *(v1 + 2) = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_201();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_434();
}

void sub_2574865B8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v10)
  {
    OUTLINED_FUNCTION_8();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_20();
      if (v11)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v11 ^ v12 | v26)
  {
    v20 = v0;
  }

  else
  {
    v20 = v19;
  }

  if (!v20)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_379(v13, v14, v15, v16, v17, v18);
  v21 = v5(0);
  OUTLINED_FUNCTION_24(v21);
  v23 = *(v22 + 72);
  v24 = OUTLINED_FUNCTION_352();
  v25 = _swift_stdlib_malloc_size(v24);
  if (!v23)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25 - v1 == 0x8000000000000000 && v23 == -1;
  if (v26)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_349(v25 - v1);
LABEL_17:
  v5(0);
  OUTLINED_FUNCTION_193();
  if (v9)
  {
    sub_2574832B8(v7 + v27, v0, v24 + v27, v3);
    *(v7 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_429();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_257486714(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_257486728(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_257486728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_257486740(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_257486798(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2574867F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC28C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25748685C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25748685C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A028, &qword_257744960);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_257486A28(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_257486960(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257486960(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_257743994();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v10 = *(v12 + 40);
        v14 = *(v12 + 48);
        v15 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_257486A28(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_257743994();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_257743994()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v92 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v92;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v91 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469A28();
        v8 = v87;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v91;
      v93 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_25748707C((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v93);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v91;
      if (v91 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_257486F50(&v95, *result, a3);
LABEL_102:
}

uint64_t sub_257486F50(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25748707C((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25748707C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_257743994() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *(v14 + 1);
    *v7 = *v14;
    *(v7 + 1) = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_29:
  v17 = v6 - 32;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v19 = *(v11 - 4) == *(v6 - 4) && *(v11 - 3) == *(v6 - 3);
    if (!v19 && (sub_257743994() & 1) != 0)
    {
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v21 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 32)
    {
      v20 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v20;
    }

    v11 -= 32;
  }

LABEL_46:
  v22 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v22])
  {
    memmove(v6, v4, 32 * v22);
  }

  return 1;
}

uint64_t sub_257487240(uint64_t a1)
{
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return v1;
}

uint64_t sub_257487298(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2574872AC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2574872AC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 5)
  {
    return sub_257486740(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_2574872D0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2574872E4(result, a2, a3);
  }

  return result;
}

uint64_t sub_2574872E4(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 5)
  {
    return sub_257486798(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_257487308(uint64_t a1)
{
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return v1;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_257479298(v0);
}

void OUTLINED_FUNCTION_56()
{
  *v1 = v0;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = v0;
  v1[4] = v0;
  v1[5] = v0;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = v0;
}

__n128 OUTLINED_FUNCTION_57()
{
  *(v2 + 16) = v1;
  v4 = v2 + 48 * v0;
  result = *(v3 - 192);
  v6 = *(v3 - 160);
  *(v4 + 48) = *(v3 - 176);
  *(v4 + 64) = v6;
  *(v4 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_59@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 192);
  v3 = *(v1 - 160);
  *(a1 + 48) = *(v1 - 176);
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  v2[3] = a2;
  v2[4] = a2;
  v2[5] = a2;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = a2;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_75@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v2;
  *(v4 - 120) = v1;
  *(v4 - 104) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_81()
{

  return sub_2574792EC(v0);
}

void OUTLINED_FUNCTION_83()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1)
{
  *v2 = v1;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  v2[3] = v1;
  v2[4] = v1;
  v2[5] = v1;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = v1;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_87@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  v2[3] = a2;
  v2[4] = a2;
  v2[5] = a2;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = a2;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_88(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v15 - 134) = v14;
  *(v15 - 133) = a8;
  *(v15 - 132) = a7;
  *(v15 - 131) = a6;
  *(v15 - 130) = v8;
  *(v15 - 129) = a5;
  *(v15 - 128) = a4;
  *(v15 - 127) = a2;
  *(v15 - 126) = v13;
  *(v15 - 125) = a1;
  *(v15 - 124) = v12;
  *(v15 - 123) = v11;
  *(v15 - 122) = v10;
  *(v15 - 121) = v9;

  return memcmp((v15 - 120), (v15 - 134), a3);
}

uint64_t OUTLINED_FUNCTION_140()
{

  return sub_2574792EC(v0);
}

uint64_t OUTLINED_FUNCTION_141()
{

  return sub_2574792EC(v0);
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1)
{

  return sub_257743644();
}

void OUTLINED_FUNCTION_149()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_154(uint64_t a1)
{

  return sub_257483094(v2, v3, v1, (v4 - 120));
}

uint64_t OUTLINED_FUNCTION_164()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_168@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  v2[3] = a2;
  v2[4] = a2;
  v2[5] = a2;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = a2;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  v2[3] = a2;
  v2[4] = a2;
  v2[5] = a2;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = a2;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_170@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  v2[3] = a2;
  v2[4] = a2;
  v2[5] = a2;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = a2;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_171()
{

  sub_257469BAC();
}

uint64_t OUTLINED_FUNCTION_175()
{

  return sub_257487308(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 256);
  *(a1 + 32) = 1701869908;
  *(a1 + 40) = 0xE400000000000000;

  return type metadata accessor for Proto_FeatureDescription(0);
}

uint64_t OUTLINED_FUNCTION_192(uint64_t a1)
{

  return sub_257743644();
}

void OUTLINED_FUNCTION_199()
{
  *(v0 + 448) = 34;
  *(v0 + 456) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_200()
{
  *(v3 - 114) = v1;
  *(v3 - 113) = HIBYTE(v0);
  *(v3 - 112) = v2;
}

uint64_t OUTLINED_FUNCTION_203(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  *(v15 - 150) = v14;
  *(v15 - 149) = a6;
  *(v15 - 148) = a5;
  *(v15 - 147) = a7;
  *(v15 - 146) = v7;
  *(v15 - 145) = a3;
  *(v15 - 144) = a2;
  *(v15 - 143) = a1;
  *(v15 - 142) = a4;
  *(v15 - 141) = v12;
  *(v15 - 140) = v11;
  *(v15 - 139) = v10;
  *(v15 - 138) = v9;
  *(v15 - 137) = v8;
  return v13;
}

uint64_t OUTLINED_FUNCTION_214(uint64_t a1)
{

  return sub_257487308(a1);
}

uint64_t OUTLINED_FUNCTION_215()
{

  return sub_257487308(v0 + v1);
}

void OUTLINED_FUNCTION_221()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_260(uint64_t a1)
{

  return sub_257743644();
}

void OUTLINED_FUNCTION_285(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = 2;
}

uint64_t OUTLINED_FUNCTION_286(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_257466F40(a1, 0, 3);
}

uint64_t OUTLINED_FUNCTION_296(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_297(uint64_t a1)
{

  return sub_2574792EC(a1);
}

uint64_t OUTLINED_FUNCTION_299(uint64_t a1)
{
  *v1 = v2;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v1[3] = v2;
  v1[4] = v2;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = v2;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_300(uint64_t a1)
{
  *(v1 + 64) = a1;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_301(uint64_t a1)
{

  return sub_2574792EC(a1);
}

uint64_t OUTLINED_FUNCTION_312(uint64_t a1, uint64_t a2, char a3)
{
  sub_257466F40(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_314()
{

  return sub_257487308(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_315(int64_t a1)
{
  if (a1 >= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = a1;
  }

  return memcmp((v3 - 120), v1, v5);
}

void OUTLINED_FUNCTION_316()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_319(uint64_t a1)
{

  return sub_2574792EC(a1);
}

uint64_t OUTLINED_FUNCTION_320(uint64_t a1)
{
  *(v1 + 64) = a1;

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_327()
{

  sub_257505F58();
}

uint64_t OUTLINED_FUNCTION_330(uint64_t result)
{
  *v1 = result;
  *(result + 40) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_341@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 120) = a3;
  *(v3 - 144) = result;
  *(v3 - 136) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_352()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_353(uint64_t a1)
{

  return sub_257487308(a1);
}

__n128 *OUTLINED_FUNCTION_356(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684957515;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_378()
{

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_380()
{
}

uint64_t OUTLINED_FUNCTION_381()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_382(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_383(uint64_t a1)
{
  *(v1 + 48) = a1;

  return type metadata accessor for Proto_ModelDescription(0);
}

uint64_t OUTLINED_FUNCTION_384@<X0>(char *a1@<X0>, _BYTE *a3@<X8>)
{
  v6 = *(v4 - 264);

  return sub_257483094(a1, v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_385()
{

  return sub_257483824(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_386()
{

  return sub_2574792EC(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_387(uint64_t a1)
{
  *(v1 + 56) = a1;

  return type metadata accessor for Proto_Model(0);
}

uint64_t OUTLINED_FUNCTION_388(uint64_t a1)
{

  return sub_257487308(a1);
}

uint64_t OUTLINED_FUNCTION_389()
{

  return sub_257483824(v0);
}

uint64_t OUTLINED_FUNCTION_390@<X0>(uint64_t a1@<X8>)
{

  return sub_257487308(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_391()
{

  return sub_2577431B4();
}

void OUTLINED_FUNCTION_407()
{
  v3 = *(v2 - 104);
  *v3 = v1;
  v3[1] = v0;
}

uint64_t OUTLINED_FUNCTION_413(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return sub_2574FE460(v4);
}

void OUTLINED_FUNCTION_420(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = 0;
}

uint64_t OUTLINED_FUNCTION_428(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_429()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_430(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_431(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_432(uint64_t a1)
{
  *(v2 - 264) = v1;

  return sub_257742F84();
}

uint64_t OUTLINED_FUNCTION_435()
{

  return type metadata accessor for Proto_Metadata(0);
}

uint64_t OUTLINED_FUNCTION_436(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_437()
{

  return sub_257487308(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_438()
{

  return type metadata accessor for Proto_Metadata(0);
}

uint64_t OUTLINED_FUNCTION_439()
{

  return sub_2574792EC(v0);
}

uint64_t OUTLINED_FUNCTION_440()
{

  return type metadata accessor for Proto_Metadata(0);
}

uint64_t OUTLINED_FUNCTION_441(uint64_t a1)
{

  return sub_257487308(a1);
}

uint64_t OUTLINED_FUNCTION_442()
{

  return sub_257487308(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_443()
{

  return sub_257483824(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_444(uint64_t a1)
{

  return sub_257487308(a1);
}