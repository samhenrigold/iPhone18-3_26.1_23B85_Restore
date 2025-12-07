uint64_t sub_2576F9B7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t MLProgram.ValueType.StateParameters.wrappedType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.StateParameters.wrappedType.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576F9C30(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t *))
{
  if (a2)
  {
    v5 = *a1;

    a3(&v5);
  }

  else
  {
    v5 = *a1;
    return a3(&v5);
  }
}

void MLProgram.ValueType.StateParameters.init(wrappedType:)()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for Proto_MILSpec_ValueType(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  v10 = *v2;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = *(type metadata accessor for Proto_MILSpec_StateType(0) + 20);
  if (qword_27F879030 != -1)
  {
    swift_once();
  }

  *(v4 + v11) = qword_27F87B050;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = *(v8 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  *(v0 + v12) = qword_27F87B038;
  v19 = v10;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
  }

  else
  {
    v17 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v17);
    OUTLINED_FUNCTION_118_2();

    sub_2574E503C(v18);
    OUTLINED_FUNCTION_118_2();

    *(v0 + v12) = &v19;
  }

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  sub_2574DEA80();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_2576F9F0C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(0);
  v6 = OUTLINED_FUNCTION_176();
  sub_2576FA2D0(v6, v7, a5);
  OUTLINED_FUNCTION_85_5();

  return sub_2577435F4();
}

uint64_t sub_2576F9FC4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743A14();
  a1(0);
  v6 = OUTLINED_FUNCTION_176();
  sub_2576FA2D0(v6, v7, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576FA098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_257743A14();
  a4(0);
  v9 = OUTLINED_FUNCTION_176();
  sub_2576FA2D0(v9, v10, a7);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t MLProgram.ValueType.StateParameters.debugDescription.getter()
{
  v0 = sub_2576F4F60();
  sub_2576A66C8(0, v0, v1, 2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, 2);
  return v3;
}

uint64_t sub_2576FA1C0()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2576FA218(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2576FA2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2576FA318(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC274();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2576FA3CC(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_2576FA3CC(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2576FA780(v8, v9, a1, v4);
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
    return sub_2576FA514(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2576FA514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  result = MEMORY[0x28223BE20](v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v22;
      v31 = v21;
      while (1)
      {
        sub_257487308(v22);
        sub_257487308(v19);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_257743994();
        sub_2574695E4(v12, &qword_27F879D18, &unk_257775F30);
        result = sub_2574695E4(v16, &qword_27F879D18, &unk_257775F30);
        if (v24)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v25 = v35;
          sub_25765C4AC(v22, v35);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_25765C4AC(v25, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2574695E4(v12, &qword_27F879D18, &unk_257775F30);
      result = sub_2574695E4(v16, &qword_27F879D18, &unk_257775F30);
LABEL_14:
      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2576FA780(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v126 = *(v134 - 8);
  v6 = MEMORY[0x28223BE20](v134);
  v122 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v133 = &v114 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v135 = (&v114 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v114 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v130 = (&v114 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v129 = (&v114 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v118 = (&v114 - v20);
  MEMORY[0x28223BE20](v19);
  v117 = (&v114 - v21);
  v128 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_112:
    v25 = *v119;
    if (!*v119)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v106 = (v24 + 16);
      for (i = *(v24 + 2); i >= 2; *v106 = i)
      {
        if (!*v128)
        {
          goto LABEL_149;
        }

        v108 = &v24[16 * i];
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = v110[1];
        v112 = v132;
        sub_2576FB128(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, v25);
        v132 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_138;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v113 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_139;
        }

        i = *v106 - 1;
        memmove(v110, v110 + 2, 16 * v113);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v24 = sub_2576FB678();
    goto LABEL_114;
  }

  v114 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v25 = &unk_257775F30;
  v123 = v14;
  while (1)
  {
    v26 = v23;
    v27 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v124 = v22;
      v28 = *v128;
      v29 = *(v126 + 72);
      v131 = v23 + 1;
      v30 = v117;
      sub_257487308(v28 + v29 * v27);
      v127 = v29;
      v31 = v118;
      sub_257487308(v28 + v29 * v26);
      if (*v30 == *v31 && v30[1] == v31[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_257743994();
      }

      v115 = v24;
      v25 = &unk_257775F30;
      sub_2574695E4(v118, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v117, &qword_27F879D18, &unk_257775F30);
      v116 = v26;
      v33 = v26 + 2;
      v34 = v127 * (v26 + 2);
      v35 = v28 + v34;
      v36 = v131;
      v37 = v127 * v131;
      v38 = v28 + v127 * v131;
      do
      {
        v27 = v33;
        v39 = v36;
        v40 = v37;
        v41 = v34;
        if (v33 >= v124)
        {
          break;
        }

        v131 = v33;
        v42 = v129;
        sub_257487308(v35);
        v43 = v130;
        sub_257487308(v38);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_257743994();
        v27 = v131;
        sub_2574695E4(v130, &qword_27F879D18, &unk_257775F30);
        v25 = &unk_257775F30;
        sub_2574695E4(v129, &qword_27F879D18, &unk_257775F30);
        v33 = v27 + 1;
        v35 += v127;
        v38 += v127;
        v36 = v39 + 1;
        v37 = v40 + v127;
        v34 = v41 + v127;
        v14 = v123;
      }

      while (((v125 ^ v45) & 1) == 0);
      if (v125)
      {
        v46 = v116;
        if (v27 < v116)
        {
          goto LABEL_143;
        }

        if (v116 >= v27)
        {
          v24 = v115;
          v26 = v116;
          goto LABEL_37;
        }

        v47 = v116 * v127;
        do
        {
          if (v46 != v39)
          {
            v48 = *v128;
            if (!*v128)
            {
              goto LABEL_150;
            }

            v25 = v48 + v47;
            sub_25765C4AC(v48 + v47, v122);
            v49 = v47 < v40 || v25 >= v48 + v41;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_25765C4AC(v122, v48 + v40);
          }

          ++v46;
          v40 -= v127;
          v41 -= v127;
          v47 += v127;
        }

        while (v46 < v39--);
      }

      v24 = v115;
      v26 = v116;
    }

LABEL_37:
    v51 = v128[1];
    if (v27 < v51)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_142;
      }

      if (v27 - v26 < v114)
      {
        break;
      }
    }

LABEL_59:
    if (v27 < v26)
    {
      goto LABEL_141;
    }

    v131 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_257469A28();
      v24 = v104;
    }

    v62 = *(v24 + 2);
    v63 = v62 + 1;
    v23 = v131;
    if (v62 >= *(v24 + 3) >> 1)
    {
      sub_257469A28();
      v23 = v131;
      v24 = v105;
    }

    *(v24 + 2) = v63;
    v64 = v24 + 32;
    v65 = &v24[16 * v62 + 32];
    *v65 = v26;
    *(v65 + 1) = v23;
    v127 = *v119;
    if (!v127)
    {
      goto LABEL_151;
    }

    if (v62)
    {
      while (1)
      {
        v25 = v63 - 1;
        v66 = &v64[16 * v63 - 16];
        v67 = &v24[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v24 + 4);
          v69 = *(v24 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_79:
          if (v71)
          {
            goto LABEL_128;
          }

          v83 = *v67;
          v82 = *(v67 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_131;
          }

          v87 = *(v66 + 1);
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_136;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v25 = v63 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v63 < 2)
        {
          goto LABEL_130;
        }

        v90 = *v67;
        v89 = *(v67 + 1);
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_94:
        if (v86)
        {
          goto LABEL_133;
        }

        v92 = *v66;
        v91 = *(v66 + 1);
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_135;
        }

        if (v93 < v85)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v25 - 1 >= v63)
        {
          __break(1u);
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v128)
        {
          goto LABEL_148;
        }

        v97 = v24;
        v98 = &v64[16 * v25 - 16];
        v99 = *v98;
        v100 = &v64[16 * v25];
        v101 = *(v100 + 1);
        v102 = v132;
        sub_2576FB128(*v128 + *(v126 + 72) * *v98, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v101, v127);
        v132 = v102;
        if (v102)
        {
          goto LABEL_110;
        }

        if (v101 < v99)
        {
          goto LABEL_123;
        }

        v103 = *(v97 + 2);
        if (v25 > v103)
        {
          goto LABEL_124;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        if (v25 >= v103)
        {
          goto LABEL_125;
        }

        v63 = v103 - 1;
        memmove(&v64[16 * v25], v100 + 16, 16 * (v103 - 1 - v25));
        v24 = v97;
        *(v97 + 2) = v103 - 1;
        v23 = v131;
        if (v103 <= 2)
        {
          goto LABEL_108;
        }
      }

      v72 = &v64[16 * v63];
      v73 = *(v72 - 8);
      v74 = *(v72 - 7);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_126;
      }

      v77 = *(v72 - 6);
      v76 = *(v72 - 5);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_127;
      }

      v79 = *(v67 + 1);
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_129;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_132;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = *(v66 + 1);
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_140;
        }

        if (v70 < v96)
        {
          v25 = v63 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v22 = v128[1];
    v25 = &unk_257775F30;
    if (v23 >= v22)
    {
      goto LABEL_112;
    }
  }

  v52 = v26 + v114;
  if (__OFADD__(v26, v114))
  {
    goto LABEL_144;
  }

  if (v52 >= v51)
  {
    v52 = v128[1];
  }

  if (v52 < v26)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v27 == v52)
  {
    goto LABEL_59;
  }

  v115 = v24;
  v116 = v26;
  v53 = *v128;
  v54 = *(v126 + 72);
  v55 = *v128 + v54 * (v27 - 1);
  v25 = -v54;
  v56 = v26 - v27;
  v120 = v54;
  v121 = v52;
  v57 = v53 + v27 * v54;
LABEL_46:
  v131 = v27;
  v124 = v57;
  v125 = v56;
  v127 = v55;
  while (1)
  {
    sub_257487308(v57);
    v58 = v135;
    sub_257487308(v55);
    if (*v14 == *v58 && v14[1] == v58[1])
    {
      sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
LABEL_57:
      v27 = v131 + 1;
      v55 = v127 + v120;
      v56 = v125 - 1;
      v57 = v124 + v120;
      if (v131 + 1 == v121)
      {
        v27 = v121;
        v24 = v115;
        v26 = v116;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v60 = sub_257743994();
    sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
    if ((v60 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v53)
    {
      break;
    }

    v61 = v133;
    sub_25765C4AC(v57, v133);
    swift_arrayInitWithTakeFrontToBack();
    sub_25765C4AC(v61, v55);
    v55 += v25;
    v57 += v25;
    v49 = __CFADD__(v56++, 1);
    if (v49)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_2576FB128(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = (&v56 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v56 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v56 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a2;
  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v25 = v20 / v19;
  v68 = a1;
  v67 = a4;
  v26 = v23 / v19;
  if (v20 / v19 < v23 / v19)
  {
    v27 = v22;
    sub_257483500(a1, v20 / v19, a4);
    v28 = v27;
    v64 = a4 + v25 * v19;
    v66 = v64;
    v62 = a3;
    while (1)
    {
      if (a4 >= v64 || v28 >= a3)
      {
        goto LABEL_70;
      }

      v30 = v28;
      sub_257487308(v28);
      sub_257487308(a4);
      if (*v17 == *v14 && v17[1] == v14[1])
      {
        sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
      }

      else
      {
        v32 = sub_257743994();
        sub_2574695E4(v14, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
        if (v32)
        {
          v33 = v30;
          v34 = v30 + v19;
          if (a1 < v30 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v30 + v19;
            a3 = v62;
          }

          else
          {
            a3 = v62;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v28 = v34;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v67 = a4 + v19;
      a4 += v19;
      v28 = v30;
      a3 = v62;
LABEL_37:
      a1 += v19;
      v68 = a1;
    }
  }

  v37 = v22;
  sub_257483500(v22, v23 / v19, a4);
  v38 = v37;
  v39 = a4 + v26 * v19;
  v40 = -v19;
  v41 = v39;
  v61 = -v19;
  v58 = a4;
LABEL_42:
  v42 = v38 + v40;
  v43 = a3;
  v44 = v41;
  v62 = v38;
  v59 = v41;
  v60 = v42;
  while (1)
  {
    if (v39 <= a4)
    {
      v68 = v38;
      v66 = v44;
      goto LABEL_70;
    }

    if (v38 <= a1)
    {
      break;
    }

    v57 = v44;
    v45 = v61;
    v46 = v39 + v61;
    v47 = v63;
    sub_257487308(v39 + v61);
    v48 = v42;
    v49 = v64;
    sub_257487308(v48);
    if (*v47 == *v49 && v47[1] == v49[1])
    {
      v51 = 0;
    }

    else
    {
      v51 = sub_257743994();
    }

    a3 = v43 + v45;
    sub_2574695E4(v64, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v63, &qword_27F879D18, &unk_257775F30);
    if (v51)
    {
      v53 = v43 < v62 || a3 >= v62;
      a4 = v58;
      if (v53)
      {
        v54 = v60;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v54;
        v41 = v57;
        v40 = v61;
      }

      else
      {
        v41 = v57;
        v55 = v60;
        v40 = v61;
        v38 = v60;
        if (v43 != v62)
        {
          v41 = v57;
          swift_arrayInitWithTakeBackToFront();
          v38 = v55;
        }
      }

      goto LABEL_42;
    }

    v52 = v43 < v39 || a3 >= v39;
    a4 = v58;
    if (v52)
    {
      swift_arrayInitWithTakeFrontToBack();
      v43 = a3;
      v39 = v46;
      v44 = v46;
      v38 = v62;
      v41 = v59;
      v42 = v60;
    }

    else
    {
      v44 = v46;
      v21 = v39 == v43;
      v43 = a3;
      v39 = v46;
      v38 = v62;
      v41 = v59;
      v42 = v60;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v38 = v62;
        v43 = a3;
        v39 = v46;
        v44 = v46;
      }
    }
  }

  v68 = v38;
  v66 = v41;
LABEL_70:
  sub_2576FB6B8(&v68, &v67, &v66, &qword_27F879D18, &unk_257775F30);
  return 1;
}

void sub_2576FB6B8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  v11 = v6 + (v7 - v6) / v9 * v9;
  if (v5 < v6 || v5 >= v11)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_2576FB794(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2576FB7C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B18, &qword_257775B90);
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

uint64_t sub_2576FB8C0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Value(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLProgram.Value(0);
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880630, &qword_25776D4A0);
  result = sub_2577438E4();
  v7 = result;
  v8 = 0;
  v35 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v29 = result + 64;
  v30 = result;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v35 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = v31;
      sub_2576FA1C0();
      sub_2576FA1C0();

      sub_2576FA218(v23, type metadata accessor for MLProgram.Value);
      v7 = v30;
      *(v29 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (*(v7 + 48) + 16 * v19);
      *v24 = v21;
      v24[1] = v22;
      result = sub_2576FBBA0();
      v25 = *(v7 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v7 + 16) = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576FBBA0()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

unint64_t sub_2576FBBFC()
{
  result = qword_27F8815A8;
  if (!qword_27F8815A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8815A8);
  }

  return result;
}

uint64_t sub_2576FBF74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2576FBFC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2576FC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_15_25(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x2064657070617257;
  return result;
}

__n128 *OUTLINED_FUNCTION_45_11(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701869908;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return sub_257743AA4();
}

uint64_t OUTLINED_FUNCTION_57_3()
{
  __swift_getEnumTagSinglePayload(v1, 1, *(v0 + 640));

  return sub_2574695E4(v1, v2, v3);
}

void OUTLINED_FUNCTION_80_2()
{
  *(v0 - 232) = 0x3C726F736E6554;
  *(v0 - 224) = 0xE700000000000000;

  sub_25773A738((v0 - 96));
}

__n128 *OUTLINED_FUNCTION_83_4(__n128 *result, __n128 a2)
{
  result[3] = a2;
  result[4].n128_u8[0] = 0;
  return result;
}

void OUTLINED_FUNCTION_87_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_2576A66C8(0, a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t a1)
{

  return sub_257487308(a1);
}

uint64_t OUTLINED_FUNCTION_93_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_101_4()
{

  return sub_2576FA1C0();
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_2576FBBA0();
}

uint64_t OUTLINED_FUNCTION_111_2(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_113_1()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_120_1()
{
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);

  return swift_allocBox();
}

uint64_t OUTLINED_FUNCTION_123_1()
{
  *(v0 + 528) = v1 & 0x1FFFFFFFFFFFFFFFLL;

  return swift_projectBox();
}

void *OUTLINED_FUNCTION_125_1()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_126_1()
{

  return sub_2576FA1C0();
}

uint64_t OUTLINED_FUNCTION_127_0(uint64_t a1)
{

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576FC990()
{
  v1 = v0;
  v27 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 0x676E697070614DLL;
  *(inited + 40) = 0xE700000000000000;
  v3 = CategoricalMappingConfiguration.mappingDictionary.getter(&v23);
  v25 = v23;
  v26 = v24;
  v11 = sub_2576FD53C(v3, v4, v5, v6, v7, v8, v9, v10);
  v13 = v12;

  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 64) = 2;
  v14 = v1 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  v15 = *(v14 + 16);
  if (v15 != 255)
  {
    v16 = *v14;
    if (v15)
    {
      v23 = *v14;
      v17 = sub_257743674();
      v19 = v18;
    }

    else
    {
      v20 = *(v14 + 8);
      v23 = 34;
      v24 = 0xE100000000000000;
      sub_2574670D4(v16, v20, v15);
      MEMORY[0x259C64E90](v16, v20);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      sub_25746706C(v16, v20, v15);
      v17 = v23;
      v19 = v24;
    }

    sub_257469AE0();
    inited = v21;
    *(v21 + 16) = 2;
    strcpy((v21 + 72), "Default Value");
    *(v21 + 86) = -4864;
    *(v21 + 88) = v17;
    *(v21 + 96) = v19;
    *(v21 + 104) = 0;
  }

  return sub_2576AACFC(inited);
}

uint64_t CategoricalMappingConfiguration.mappingDictionary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Proto_Int64ToStringMap(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for Proto_StringToInt64Map(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  OUTLINED_FUNCTION_4();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v24);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = &v38 - v26;
  sub_2576FCE44(v2, &v38 - v26);
  if (__swift_getEnumTagSinglePayload(v27, 1, v14) == 1)
  {
    result = sub_2577435D4();
    v29 = result;
    v30 = 0;
  }

  else
  {
    sub_2576FDC1C(v27, v23);
    sub_2576FDD30(v23, v21);
    sub_2576FDD30(v21, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2576FDC1C(v18, v8);
      sub_25772EE64();
      v29 = v32;
      OUTLINED_FUNCTION_0_94();
      sub_2574AD524(v21, v33);
      v35 = v8;
      v36 = type metadata accessor for Proto_Int64ToStringMap;
    }

    else
    {
      sub_2576FDC1C(v18, v13);
      v29 = sub_25772ED48();
      OUTLINED_FUNCTION_0_94();
      sub_2574AD524(v21, v34);
      v35 = v13;
      v36 = type metadata accessor for Proto_StringToInt64Map;
    }

    sub_2574AD524(v35, v36);
    OUTLINED_FUNCTION_0_94();
    result = sub_2574AD524(v23, v37);
  }

  *a1 = v29;
  *(a1 + 8) = v30;
  return result;
}

uint64_t sub_2576FCE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576FCEB4@<X0>(uint64_t a1@<X8>)
{
  result = CategoricalMappingConfiguration.mappingDictionary.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_2576FCEF8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return CategoricalMappingConfiguration.mappingDictionary.setter(&v3);
}

uint64_t CategoricalMappingConfiguration.mappingDictionary.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = (&v14 - v4);
  LOBYTE(a1) = *(a1 + 8);

  if (a1)
  {
    sub_25772EA84(v6, v5);
  }

  else
  {
    sub_25772E910(v6, v5);
  }

  v7 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = OUTLINED_FUNCTION_205();
  return sub_2576FDC74(v11, v12);
}

void (*CategoricalMappingConfiguration.mappingDictionary.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CategoricalMappingConfiguration.mappingDictionary.getter(v3);
  return sub_2576FD0C8;
}

void sub_2576FD0C8(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 8);

  if (a2)
  {
    v6 = v3[3];
    if (v5)
    {
      sub_25772EA84(v4, v6);
    }

    else
    {
      sub_25772E910(v4, v6);
    }

    v9 = v3[3];
    v8 = v3[4];
    v10 = v3[2];
    v11 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    sub_2576FDC74(v9, v10);
  }

  else
  {
    v7 = v3[4];
    if (v5)
    {
      sub_25772EA84(v4, v7);
    }

    else
    {
      sub_25772E910(v4, v7);
    }

    v9 = v3[3];
    v8 = v3[4];
    v15 = v3[2];
    v16 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    sub_2576FDC74(v8, v15);
  }

  free(v8);
  free(v9);

  free(v3);
}

uint64_t CategoricalMappingConfiguration.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Proto_CategoricalMapping(0);
  v4 = v1 + *(result + 20);
  v5 = *(v4 + 16);
  if (v5 == 255)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v8 = -1;
  }

  else
  {
    v6 = *v4;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v4 + 8);
      result = sub_25745B0A8(*v4, v7, 0);
    }

    *a1 = v6;
    *(a1 + 8) = v7;
    v8 = v5 & 1;
  }

  *(a1 + 16) = v8;
  return result;
}

double sub_2576FD290@<D0>(uint64_t a1@<X8>)
{
  CategoricalMappingConfiguration.defaultValue.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2576FD2D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_2574670D4(v4[0], v1, v2);
  return CategoricalMappingConfiguration.defaultValue.setter(v4);
}

uint64_t CategoricalMappingConfiguration.defaultValue.setter(uint64_t *a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[1];
  }

  if (v2 == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v2 == 255)
  {
    v5 = -1;
  }

  else
  {
    v5 = v2 & 1;
  }

  v6 = v1 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  result = sub_25746706C(*v6, *(v6 + 8), *(v6 + 16));
  *v6 = v4;
  *(v6 + 8) = v3;
  *(v6 + 16) = v5;
  return result;
}

void (*CategoricalMappingConfiguration.defaultValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  *(v3 + 5) = v4;
  v5 = (v1 + v4);
  v6 = *v5;
  v3[4] = *v5;
  v7 = v5[1];
  v3[5] = v7;
  v8 = *(v5 + 16);
  *(v3 + 17) = v8;
  if (v8 == 255)
  {
    *v3 = 0;
    v3[1] = 0;
    v9 = -1;
  }

  else
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_263();
      sub_25745B0A8(v10, v11, 0);
    }

    *v3 = v6;
    v3[1] = v7;
    v9 = v8 & 1;
  }

  *(v3 + 16) = v9;
  return sub_2576FD448;
}

void sub_2576FD448(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 16);
  if (a2)
  {
    if (v5 == 255)
    {
      v4 = 0;
      v3 = 0;
    }

    else if (v5)
    {
      v3 = 0;
      LOBYTE(v5) = 1;
    }

    else
    {

      LOBYTE(v5) = 0;
    }

    v12 = v2[3] + *(v2 + 5);
    sub_25746706C(v2[4], v2[5], *(v2 + 17));
    *v12 = v4;
    *(v12 + 8) = v3;
    *(v12 + 16) = v5;
    sub_25746706C(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    v6 = *(v2 + 17);
    v7 = v2[4];
    v8 = v2[5];
    if (v5 == 255)
    {
      sub_25746706C(v7, v8, v6);
      v4 = 0;
      v10 = 0;
      v9 = -1;
    }

    else
    {
      sub_25746706C(v7, v8, v6);
      v9 = v5 & 1;
      if (v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = v3;
      }
    }

    v11 = v2[3] + *(v2 + 5);
    *v11 = v4;
    *(v11 + 8) = v10;
    *(v11 + 16) = v9;
  }

  free(v2);
}

uint64_t sub_2576FD53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {
    sub_2576A8B7C(v9, a2, a3, a4, a5, a6, a7, a8, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, vars0, vars8);
    v40 = v25;
    sub_2576FE2E8(&v40);
    v26 = v40;
    v27 = *(v40 + 16);
    if (v27)
    {
      v40 = MEMORY[0x277D84F90];
      sub_257484060(0, v27, 0);
      v13 = v40;
      v28 = (v26 + 48);
      do
      {
        v29 = *(v28 - 2);
        v30 = *(v28 - 1);
        v42 = *v28;

        v31 = sub_257743674();
        v33 = v32;
        v40 = v13;
        v35 = *(v13 + 16);
        v34 = *(v13 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_257484060(v34 > 1, v35 + 1, 1);
          v13 = v40;
        }

        v28 += 3;
        *(v13 + 16) = v35 + 1;
        v36 = v13 + 40 * v35;
        *(v36 + 32) = v29;
        *(v36 + 40) = v30;
        *(v36 + 48) = v31;
        *(v36 + 56) = v33;
        *(v36 + 64) = 0;
        --v27;
      }

      while (v27);
      goto LABEL_13;
    }

LABEL_14:

    v13 = MEMORY[0x277D84F90];
    return sub_2576AACFC(v13);
  }

  sub_2576A8B50(v9, a2, a3, a4, a5, a6, a7, a8, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, vars0, vars8);
  v40 = v10;
  sub_2576FE244(&v40);
  v11 = v40;
  v12 = *(v40 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

  v42 = MEMORY[0x277D84F90];
  sub_257484060(0, v12, 0);
  v13 = v42;
  v14 = (v11 + 48);
  do
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v40 = *(v14 - 2);

    v17 = sub_257743974();
    v19 = v18;
    v40 = 34;
    v41 = 0xE100000000000000;
    MEMORY[0x259C64E90](v15, v16);
    MEMORY[0x259C64E90](34, 0xE100000000000000);

    v21 = v40;
    v20 = v41;
    v42 = v13;
    v23 = *(v13 + 16);
    v22 = *(v13 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_257484060(v22 > 1, v23 + 1, 1);
      v13 = v42;
    }

    *(v13 + 16) = v23 + 1;
    v24 = v13 + 40 * v23;
    *(v24 + 32) = v17;
    *(v24 + 40) = v19;
    *(v24 + 48) = v21;
    *(v24 + 56) = v20;
    *(v24 + 64) = 0;
    v14 += 3;
    --v12;
  }

  while (v12);
LABEL_13:

  return sub_2576AACFC(v13);
}

uint64_t CategoricalMappingConfiguration.init(mapping:defaultValue:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  v10 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(v9);
  v11 = a3 + *(OUTLINED_FUNCTION_11_40() + 20);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = -1;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  sub_25772E910(v12, v3);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
  result = sub_2576FDC74(v3, a3);
  if ((a2 & 1) == 0)
  {
    *v11 = a1;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
  }

  return result;
}

uint64_t CategoricalMappingConfiguration.init(mapping:defaultValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  v10 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(v9);
  v11 = a3 + *(OUTLINED_FUNCTION_11_40() + 20);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = -1;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  sub_25772EA84(v12, v3);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
  result = sub_2576FDC74(v3, a3);
  if (a2)
  {
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 0;
  }

  return result;
}

uint64_t CategoricalMappingConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for CategoricalMappingConfiguration(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_2576FDD30(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  *(v13 + 32) = 0xD000000000000011;
  *(v13 + 40) = 0x8000000257781A30;
  *(v13 + 72) = &type metadata for CategoricalMappingConfiguration.MappingDictionary;
  CategoricalMappingConfiguration.mappingDictionary.getter(v13 + 48);
  strcpy((v13 + 80), "defaultValue");
  *(v13 + 93) = 0;
  *(v13 + 94) = -5120;
  *(v13 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881628, &qword_257775BD8);
  CategoricalMappingConfiguration.defaultValue.getter(v13 + 96);
  v14 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_2576FDC1C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t sub_2576FDC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CategoricalMappingConfiguration(uint64_t a1)
{
  result = qword_281537630;
  if (!qword_281537630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576FDD30(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return a2;
}

uint64_t static CategoricalMappingConfiguration.MappingDictionary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {

      sub_257476B20(v3, v2);
LABEL_7:
      v5 = v4;

      return v5 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {

    v4 = sub_257487370();
    goto LABEL_7;
  }

  v5 = 0;
  return v5 & 1;
}

BOOL static CategoricalMappingConfiguration.DefaultValue.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v7 = OUTLINED_FUNCTION_205();
      sub_257466FC8(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_263();
      sub_257466FC8(v9, v10, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {

LABEL_6:
    v12 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v12, v13, v6);
    v14 = OUTLINED_FUNCTION_205();
    sub_257466FC8(v14, v15, v4);
    v16 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v16, v17, v6);
    return 0;
  }

  v18 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_25745B0A8(v18, v3, 0);
    v31 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v37, v38, v39);
    return 1;
  }

  else
  {
    v20 = sub_257743994();
    v21 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v21, v22, 0);
    v23 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v29, v30, 0);
    return v20 & 1;
  }
}

uint64_t CategoricalMappingConfiguration.DefaultValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (v1[2])
  {
    MEMORY[0x259C651F0](1);
    return MEMORY[0x259C651F0](v2);
  }

  else
  {
    MEMORY[0x259C651F0](0);

    return sub_257743694();
  }
}

uint64_t CategoricalMappingConfiguration.DefaultValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_257743A14();
  if (v2)
  {
    MEMORY[0x259C651F0](1);
    MEMORY[0x259C651F0](v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257743694();
  }

  return sub_257743A64();
}

uint64_t sub_2576FE04C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_257743A14();
  if (v3)
  {
    MEMORY[0x259C651F0](1);
    MEMORY[0x259C651F0](v2);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257743694();
  }

  return sub_257743A64();
}

unint64_t sub_2576FE0D0()
{
  result = qword_27F87A510;
  if (!qword_27F87A510)
  {
    type metadata accessor for Proto_CategoricalMapping(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A510);
  }

  return result;
}

unint64_t sub_2576FE12C()
{
  result = qword_27F881630;
  if (!qword_27F881630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881630);
  }

  return result;
}

uint64_t sub_2576FE1AC(uint64_t a1)
{
  result = type metadata accessor for Proto_CategoricalMapping(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576FE244(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC244();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576FE38C(v6, &qword_27F87A020, &unk_257775E10, sub_2576FE604, sub_2576FE4A8);
  *a1 = v2;
  return result;
}

uint64_t sub_2576FE2E8(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC25C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576FE38C(v6, &qword_27F87A010, &qword_257744948, sub_2576FEB14, sub_2576FE52C);
  *a1 = v2;
  return result;
}

uint64_t sub_2576FE38C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_257743964();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_257743764();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_2576FE4A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2576FE52C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
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

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
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

void sub_2576FE604(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469A28();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2576FF19C((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_2576FF064(&v89, *result, a3);
LABEL_89:
}

void sub_2576FEB14(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_257743994();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_257743994()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469A28();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
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
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_257683374((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_2576830B8(&v96, *result, a3);
LABEL_103:
}

uint64_t sub_2576FF064(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2576FF19C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2576FF19C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2574834A8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_2574834A8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_11_40()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);

  return type metadata accessor for Proto_CategoricalMapping(0);
}

BOOL sub_2576FF394(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

BOOL sub_2576FF418(uint64_t (*a1)(uint64_t))
{
  (a1)();

  v3 = *(a1(v2) + 16);

  return v3 == 0;
}

uint64_t sub_2576FF45C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  sub_257701E14();
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
    v15 = OUTLINED_FUNCTION_26_18(v14);
    *(v15 + 16) = xmmword_2577442B0;
    *(v15 + 32) = v13;
LABEL_18:
    result = sub_257701E6C(a1, type metadata accessor for Proto_WeightParams);
    *a2 = v15;
    return result;
  }

  if (!sub_2576FF394(*(a1 + 8), *(a1 + 16)))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
    v15 = OUTLINED_FUNCTION_26_18(v16);
    *(v15 + 16) = xmmword_2577442B0;
    v17 = MEMORY[0x259C648F0](*(a1 + 8), *(a1 + 16)) / 2;
LABEL_17:
    *(v15 + 32) = v17;
    goto LABEL_18;
  }

  if (sub_2576FF394(*(a1 + 24), *(a1 + 32)))
  {
    if (sub_2576FF394(*(a1 + 40), *(a1 + 48)))
    {
      v15 = MEMORY[0x277D84F90];
    }

    else
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
      v15 = OUTLINED_FUNCTION_26_18(v31);
      *(v15 + 16) = xmmword_2577442B0;
      *(v15 + 32) = MEMORY[0x259C648F0](*(a1 + 40), *(a1 + 48));
    }

    goto LABEL_18;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v15 = OUTLINED_FUNCTION_26_18(v18);
  *(v15 + 16) = xmmword_2577442B0;
  result = MEMORY[0x259C648F0](*(a1 + 24), *(a1 + 32));
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = result;
  v21 = type metadata accessor for Proto_WeightParams(0);
  sub_257487308(a1 + *(v21 + 40));
  v22 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v22, v23, v8);
  if (v24)
  {
    *v12 = 0;
    type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v29 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v29, v30, v8);
    if (!v24)
    {
      sub_2574695E4(v7, &qword_27F879C90, &unk_2577530D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_95();
    sub_257701C64();
  }

  v32 = *v12;
  result = sub_257701E6C(v12, type metadata accessor for Proto_QuantizationParams);
  if (v32 < 0)
  {
    goto LABEL_20;
  }

  if (v32)
  {
    v17 = 8 * v20 / v32;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t NeuralNetwork.WeightParameters.shape.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.shape.modify(void *a1)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return OUTLINED_FUNCTION_44_1();
}

void NeuralNetwork.WeightParameters.data.getter()
{
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_12_42();
  v1 = *(*v0 + 16);
  if (!v1)
  {
    v3 = v0[1];
    v4 = v0[2];
    switch(v4 >> 62)
    {
      case 1uLL:
        v6 = v3;
        v7 = v3 >> 32;
        goto LABEL_13;
      case 2uLL:
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
LABEL_13:
        if (v6 == v7)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      case 3uLL:
        goto LABEL_14;
      default:
        if ((v4 & 0xFF000000000000) != 0)
        {
LABEL_16:
          v10 = OUTLINED_FUNCTION_205();
          sub_257486740(v10, v11);
        }

        else
        {
LABEL_14:
          v8 = v0[3];
          v9 = v0[4];
          switch(v9 >> 62)
          {
            case 1uLL:
              v12 = v8;
              v13 = v8 >> 32;
              goto LABEL_20;
            case 2uLL:
              v12 = *(v8 + 16);
              v13 = *(v8 + 24);
LABEL_20:
              if (v12 == v13)
              {
                goto LABEL_21;
              }

              goto LABEL_16;
            case 3uLL:
              goto LABEL_21;
            default:
              if ((v9 & 0xFF000000000000) != 0)
              {
                goto LABEL_16;
              }

LABEL_21:
              v14 = v0[5];
              v15 = v0[6];
              switch(v15 >> 62)
              {
                case 1uLL:
                  v18 = v14;
                  v19 = v14 >> 32;
                  goto LABEL_26;
                case 2uLL:
                  v18 = *(v14 + 16);
                  v19 = *(v14 + 24);
LABEL_26:
                  if (v18 == v19)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_23;
                case 3uLL:
                  goto LABEL_17;
                default:
                  if ((v15 & 0xFF000000000000) != 0)
                  {
LABEL_23:
                    v16 = OUTLINED_FUNCTION_263();
                    sub_257486740(v16, v17);
                  }

                  break;
              }

              break;
          }
        }

        break;
    }

    goto LABEL_17;
  }

  if (!(v1 >> 61))
  {
    v2 = 4 * v1;
    if ((4 * v1) < 15)
    {
      sub_2577430A4();
    }

    else
    {
      sub_257742F94();
      swift_allocObject();
      sub_257742F54();
      if (v2 >= 0x7FFFFFFF)
      {
        sub_2577430E4();
        v5 = swift_allocObject();
        *(v5 + 16) = 0;
        *(v5 + 24) = v2;
      }
    }

LABEL_17:
    OUTLINED_FUNCTION_205();
    return;
  }

  __break(1u);
}

uint64_t NeuralNetwork.WeightParameters.floatValues.getter()
{
  type metadata accessor for NeuralNetwork.WeightParameters(0);
}

uint64_t NeuralNetwork.WeightParameters.float16Data.getter()
{
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_12_42();
  v0 = OUTLINED_FUNCTION_205();
  sub_257486740(v0, v1);
  return OUTLINED_FUNCTION_205();
}

uint64_t NeuralNetwork.WeightParameters.quantizedData.getter()
{
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_12_42();
  v0 = OUTLINED_FUNCTION_205();
  sub_257486740(v0, v1);
  return OUTLINED_FUNCTION_205();
}

uint64_t NeuralNetwork.WeightParameters.int8QuantizedData.getter()
{
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_12_42();
  v0 = OUTLINED_FUNCTION_205();
  sub_257486740(v0, v1);
  return OUTLINED_FUNCTION_205();
}

uint64_t NeuralNetwork.WeightParameters.floatValues.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NeuralNetwork.WeightParameters(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.floatValues.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NeuralNetwork.WeightParameters(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;

  return OUTLINED_FUNCTION_44_1();
}

uint64_t NeuralNetwork.WeightParameters.float16Data.setter()
{
  OUTLINED_FUNCTION_23_28();
  OUTLINED_FUNCTION_18_39();
  result = sub_257486798(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.float16Data.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_25(a1);
  OUTLINED_FUNCTION_17_28(v2);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *v1 = v4;
  v1[1] = v5;
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576FFC6C()
{
  OUTLINED_FUNCTION_5_52();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v4, v5);
    v6 = OUTLINED_FUNCTION_263();
    sub_257486798(v6, v7);
    *(v2 + 8) = v1;
    *(v2 + 16) = v0;
    v8 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v8, v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_263();
    result = sub_257486798(v11, v12);
    *(v2 + 8) = v1;
    *(v2 + 16) = v0;
  }

  return result;
}

char *NeuralNetwork.WeightParameters.float16Values.getter()
{
  v14 = *MEMORY[0x277D85DE8];
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_12_42();
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  switch(v1 >> 62)
  {
    case 1uLL:
      v5 = v2 >> 32;
      if (v2 >> 32 < v2)
      {
        __break(1u);
      }

      v6 = v2;
      goto LABEL_7;
    case 2uLL:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_7:
      v3 = sub_257701BC8(v6, v5);
      break;
    case 3uLL:
      return v3;
    default:
      __src = v2;
      v9 = v1;
      v10 = BYTE2(v1);
      v11 = BYTE3(v1);
      v12 = BYTE4(v1);
      v4 = (v1 >> 49) & 0x7F;
      v13 = BYTE5(v1);
      if (v4)
      {
        v3 = sub_257701B00((v1 >> 49) & 0x7F, 0);
        memcpy(v3 + 32, &__src, 2 * v4);
      }

      break;
  }

  return v3;
}

uint64_t NeuralNetwork.WeightParameters.float16Values.setter(uint64_t result)
{
  v2 = *(result + 16);
  if (v2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_2576FFFC4(result + 32, result + 32 + 2 * v2);
    v5 = v4;

    v6 = v1 + *(type metadata accessor for NeuralNetwork.WeightParameters(0) + 20);
    result = sub_257486798(*(v6 + 8), *(v6 + 16));
    *(v6 + 8) = v3;
    *(v6 + 16) = v5;
  }

  return result;
}

void *sub_2576FFEF4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (v4 = result, v5 = a2 - result, (a2 - result + 1) >= 3))
  {
    v7 = v5 / 2;
    if (v5 <= 1)
    {
      v8 = 2 * v7;
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881660, &unk_257775F20);
      v8 = 2 * v7;
      v6 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v6);
      v6[2] = v7;
      v6[3] = 2 * ((v9 - 32) / 2);
    }

    result = memcpy(v6 + 4, v4, v8);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2576FFFC4(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2577430A4();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x259C64880]();
    }

    else
    {
      v6 = MEMORY[0x259C648A0]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t NeuralNetwork.WeightParameters.float16Values.modify(char **a1)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.WeightParameters.float16Values.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2577000C4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.WeightParameters.float16Values.setter(*a1);
  }

  NeuralNetwork.WeightParameters.float16Values.setter(v2);
}

uint64_t NeuralNetwork.WeightParameters.quantizedData.setter()
{
  OUTLINED_FUNCTION_23_28();
  OUTLINED_FUNCTION_18_39();
  result = sub_257486798(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.quantizedData.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_25(a1);
  OUTLINED_FUNCTION_17_28(v2);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *v1 = v4;
  v1[1] = v5;
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2577001E0()
{
  OUTLINED_FUNCTION_5_52();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v4, v5);
    v6 = OUTLINED_FUNCTION_263();
    sub_257486798(v6, v7);
    *(v2 + 24) = v1;
    *(v2 + 32) = v0;
    v8 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v8, v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_263();
    result = sub_257486798(v11, v12);
    *(v2 + 24) = v1;
    *(v2 + 32) = v0;
  }

  return result;
}

uint64_t NeuralNetwork.WeightParameters.int8QuantizedData.setter()
{
  OUTLINED_FUNCTION_23_28();
  OUTLINED_FUNCTION_18_39();
  result = sub_257486798(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.int8QuantizedData.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_25(a1);
  OUTLINED_FUNCTION_17_28(v2);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *v1 = v4;
  v1[1] = v5;
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257700324()
{
  OUTLINED_FUNCTION_5_52();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v4, v5);
    v6 = OUTLINED_FUNCTION_263();
    sub_257486798(v6, v7);
    *(v2 + 40) = v1;
    *(v2 + 48) = v0;
    v8 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v8, v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_263();
    result = sub_257486798(v11, v12);
    *(v2 + 40) = v1;
    *(v2 + 48) = v0;
  }

  return result;
}

uint64_t NeuralNetwork.WeightParameters.quantization.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = v1 + *(type metadata accessor for NeuralNetwork.WeightParameters(0) + 20);
  v15 = *(type metadata accessor for Proto_WeightParams(0) + 40);
  sub_257487308(v14 + v15);
  v16 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v2);
  sub_2574695E4(v13, &qword_27F879C90, &unk_2577530D0);
  v18 = EnumTagSinglePayload == 1;
  v19 = v31;
  if (!v18)
  {
    sub_257487308(v14 + v15);
    v20 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v20, v21, v2);
    if (v18)
    {
      *v6 = 0;
      type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v26 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v26, v27, v2);
      if (!v18)
      {
        sub_2574695E4(v11, &qword_27F879C90, &unk_2577530D0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_95();
      sub_257701C64();
    }

    OUTLINED_FUNCTION_0_95();
    sub_257701C64();
    v16 = 0;
  }

  v28 = type metadata accessor for NeuralNetwork.Quantization(0);
  return __swift_storeEnumTagSinglePayload(v19, v16, 1, v28);
}

uint64_t sub_2577005C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881638, &qword_257775E68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_257487308(a1);
  return NeuralNetwork.WeightParameters.quantization.setter(v4);
}

uint64_t NeuralNetwork.WeightParameters.quantization.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  type metadata accessor for NeuralNetwork.Quantization(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v6, v7, v8);
  if (v9)
  {
    sub_2574695E4(a1, &qword_27F881638, &qword_257775E68);
    type metadata accessor for NeuralNetwork.WeightParameters(0);
    OUTLINED_FUNCTION_18_39();
    v10 = type metadata accessor for Proto_WeightParams(0);
    sub_2574695E4(v1 + *(v10 + 40), &qword_27F879C90, &unk_2577530D0);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  else
  {
    OUTLINED_FUNCTION_4_58();
    sub_257701C64();
    sub_257701C64();
    type metadata accessor for NeuralNetwork.WeightParameters(0);
    OUTLINED_FUNCTION_18_39();
    v14 = *(type metadata accessor for Proto_WeightParams(0) + 40);
    sub_2574695E4(v1 + v14, &qword_27F879C90, &unk_2577530D0);
    sub_257701C64();
    return __swift_storeEnumTagSinglePayload(v1 + v14, 0, 1, v3);
  }
}

void (*NeuralNetwork.WeightParameters.quantization.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for NeuralNetwork.Quantization(0);
  v3[1] = v4;
  v27 = v4;
  OUTLINED_FUNCTION_4();
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for Proto_QuantizationParams(0);
  v3[3] = v6;
  OUTLINED_FUNCTION_4();
  v3[4] = OUTLINED_FUNCTION_32_13();
  v26 = OUTLINED_FUNCTION_32_13();
  v3[5] = v26;
  v7 = OUTLINED_FUNCTION_19_29();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v10 = OUTLINED_FUNCTION_32_13();
  v3[6] = v10;
  v11 = OUTLINED_FUNCTION_32_13();
  v3[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881638, &qword_257775E68);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  v3[8] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v3[9] = v15;
  v16 = *(type metadata accessor for NeuralNetwork.WeightParameters(0) + 20);
  *(v3 + 20) = v16;
  v17 = v1 + v16;
  v18 = *(type metadata accessor for Proto_WeightParams(0) + 40);
  *(v3 + 21) = v18;
  sub_257487308(v17 + v18);
  v19 = 1;
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v11, 1, v6);
  sub_2574695E4(v11, &qword_27F879C90, &unk_2577530D0);
  if (v3 != 1)
  {
    sub_257487308(v17 + v18);
    OUTLINED_FUNCTION_155(v10, 1, v6);
    if (v20)
    {
      *v26 = 0;
      type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v10, 1, v6);
      if (!v20)
      {
        sub_2574695E4(v10, &qword_27F879C90, &unk_2577530D0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_95();
      sub_257701C64();
    }

    OUTLINED_FUNCTION_0_95();
    sub_257701C64();
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v15, v19, 1, v27);
  return sub_257700AC8;
}

void sub_257700AC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (a2)
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v9 = v2[2];
    v10 = OUTLINED_FUNCTION_263();
    sub_257487308(v10);
    NeuralNetwork.WeightParameters.quantization.setter(v4);
    sub_2574695E4(v3, &qword_27F881638, &qword_257775E68);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(*(*a1 + 72), 1, v2[1]);
    v12 = *(v2 + 20);
    v13 = *(v2 + 21);
    if (EnumTagSinglePayload == 1)
    {
      v14 = *v2 + v12;
      sub_2574695E4(v3, &qword_27F881638, &qword_257775E68);
      sub_2574695E4(v14 + v13, &qword_27F879C90, &unk_2577530D0);
      v15 = 1;
    }

    else
    {
      v16 = *v2 + v12;
      OUTLINED_FUNCTION_4_58();
      OUTLINED_FUNCTION_263();
      sub_257701C64();
      sub_257701C64();
      sub_2574695E4(v16 + v13, &qword_27F879C90, &unk_2577530D0);
      sub_257701C64();
      v15 = 0;
    }

    v4 = v2[8];
    v3 = v2[9];
    v6 = v2[6];
    v5 = v2[7];
    v8 = v2[4];
    v7 = v2[5];
    v9 = v2[2];
    __swift_storeEnumTagSinglePayload(*v2 + *(v2 + 20) + *(v2 + 21), v15, 1, v2[3]);
  }

  free(v3);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);

  free(v2);
}

uint64_t NeuralNetwork.WeightParameters.isUpdatable.getter()
{
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_12_42();
  return *(v0 + 56);
}

void NeuralNetwork.WeightParameters.isUpdatable.setter(char a1)
{
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_12_42();
  *(v2 + 56) = a1;
}

uint64_t (*NeuralNetwork.WeightParameters.isUpdatable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NeuralNetwork.WeightParameters(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3 + 56);
  return sub_257700D4C;
}

double NeuralNetwork.WeightParameters.init(_:updatable:)()
{
  v3 = v0 + *(OUTLINED_FUNCTION_31_17() + 20);
  *(v3 + 8) = xmmword_257745740;
  *(v3 + 24) = xmmword_257745740;
  *(v3 + 40) = xmmword_257745740;
  type metadata accessor for Proto_WeightParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *v3 = v1;
  v3[56] = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v9 = OUTLINED_FUNCTION_26_18(v8);
  *&result = 1;
  *(v9 + 16) = xmmword_2577442B0;
  *(v9 + 32) = *(v1 + 16);
  *v0 = v9;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.init(_:updatable:)()
{
  v3 = v0 + *(OUTLINED_FUNCTION_31_17() + 20);
  *v3 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_30_17(xmmword_257745740);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_44();
  result = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v9 = *(v1 + 16);
  if (v9 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_2576FFFC4(v1 + 32, v1 + 32 + 2 * v9);
    v12 = v11;
    sub_257486798(*(v3 + 1), *(v3 + 2));
    *(v3 + 1) = v10;
    *(v3 + 2) = v12;
    v3[56] = v2 & 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
    v14 = OUTLINED_FUNCTION_26_18(v13);
    *(v14 + 16) = xmmword_2577442B0;
    v15 = *(v1 + 16);

    *(v14 + 32) = v15;
    *v0 = v14;
  }

  return result;
}

uint64_t NeuralNetwork.WeightParameters.init(quantizedData:updatable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for NeuralNetwork.WeightParameters(0) + 20);
  v9 = MEMORY[0x277D84F90];
  *v8 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_30_17(xmmword_257745740);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  result = sub_257486798(*(v8 + 3), *(v8 + 4));
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;
  v8[56] = a3;
  *a4 = v9;
  return result;
}

void static NeuralNetwork.WeightParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  if (sub_257487374())
  {
    type metadata accessor for NeuralNetwork.WeightParameters(0);

    sub_257598490();
  }
}

uint64_t NeuralNetwork.WeightParameters.customMirror.getter()
{
  v2 = sub_257743A84();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v52 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B48, &qword_257744390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2577442B0;
  *(v9 + 32) = xmmword_257775E20;
  v10 = (v1 + *(v7 + 20));
  v11 = *v10;
  *(v9 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v9 + 48) = v11;

  v12 = NeuralNetwork.WeightParameters.float16Values.getter();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881640, &unk_257775E80);
  *&v56 = v12;
  v13 = OUTLINED_FUNCTION_29_18(xmmword_257775E30);
  sub_25748396C(v13, &v54);
  sub_257469BAC();
  v15 = v14;
  *(v14 + 16) = 2;
  v16 = v54;
  *(v14 + 80) = v53;
  *(v14 + 96) = v16;
  *(v14 + 112) = v55;
  v17 = v10[3];
  v18 = v10[4];
  v19 = OUTLINED_FUNCTION_19_29();
  v21 = sub_2576FF394(v19, v20);
  v22 = MEMORY[0x277CC9318];
  if (!v21)
  {
    v57 = MEMORY[0x277CC9318];
    *&v56 = v17;
    *(&v56 + 1) = v18;
    v23 = OUTLINED_FUNCTION_29_18(xmmword_257775E40);
    sub_25748396C(v23, &v54);
    v24 = OUTLINED_FUNCTION_19_29();
    sub_257486740(v24, v25);
    if (*(v15 + 24) <= 5uLL)
    {
      sub_257469BAC();
      v15 = v48;
    }

    *(v15 + 16) = 3;
    v26 = v54;
    *(v15 + 128) = v53;
    *(v15 + 144) = v26;
    *(v15 + 160) = v55;
  }

  v27 = v10[5];
  v28 = v10[6];
  v29 = OUTLINED_FUNCTION_19_29();
  if (!sub_2576FF394(v29, v30))
  {
    v57 = v22;
    *&v56 = v27;
    *(&v56 + 1) = v28;
    sub_25748396C(&v56, &v54);
    v31 = OUTLINED_FUNCTION_19_29();
    sub_257486740(v31, v32);
    v33 = *(v15 + 16);
    if (v33 >= *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_24_27();
      v15 = v49;
    }

    *(v15 + 16) = v33 + 1;
    OUTLINED_FUNCTION_7_42(v15 + 48 * v33);
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881638, &qword_257775E68);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v56);
  NeuralNetwork.WeightParameters.quantization.getter(boxed_opaque_existential_0);
  v35 = OUTLINED_FUNCTION_29_18(xmmword_257775E50);
  sub_25748396C(v35, &v54);
  v36 = *(v15 + 16);
  v37 = v36 + 1;
  if (v36 >= *(v15 + 24) >> 1)
  {
    OUTLINED_FUNCTION_24_27();
    v15 = v46;
  }

  *(v15 + 16) = v37;
  OUTLINED_FUNCTION_7_42(v15 + 48 * v36);
  v38 = *(v10 + 56);
  v57 = MEMORY[0x277D839B0];
  LOBYTE(v56) = v38;
  v39 = OUTLINED_FUNCTION_29_18(xmmword_257744350);
  sub_25748396C(v39, &v54);
  v40 = v36 + 2;
  if (v40 > *(v15 + 24) >> 1)
  {
    sub_257469BAC();
    v15 = v47;
  }

  *(v15 + 16) = v40;
  OUTLINED_FUNCTION_7_42(v15 + 48 * v37);
  sub_257701E14();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  (*(v50 + 104))(v52, *MEMORY[0x277D84C38], v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t sub_2577014A8()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B20, &unk_2577440E0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_9_38(v2 / 8);
  return v0;
}

uint64_t sub_257701514()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B08, &qword_2577440C8);
  v2 = OUTLINED_FUNCTION_22_25(v1);
  OUTLINED_FUNCTION_14_28(v2);
  OUTLINED_FUNCTION_6_54(v3);
  return v0;
}

uint64_t sub_2577015A0()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = OUTLINED_FUNCTION_16_26(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_22_25(v5);
  OUTLINED_FUNCTION_14_28(v6);
  OUTLINED_FUNCTION_6_54(v7);
  return v0;
}

uint64_t sub_2577015F0()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A000, &qword_257775F80);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_9_38(v2 / 16);
  return v0;
}

uint64_t sub_257701698()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = OUTLINED_FUNCTION_16_26(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_22_25(v5);
  OUTLINED_FUNCTION_14_28(v6);
  OUTLINED_FUNCTION_6_54(v7);
  return v0;
}

uint64_t sub_25770170C()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A030, &qword_257744968);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_9_38(v2 / 32);
  return v0;
}

size_t sub_2577017C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_26(a1, a2, a3, a4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      OUTLINED_FUNCTION_6_54(result - v11);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_257701A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_26(a1, a2, a3, a4);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_9_38((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_257701B00(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881660, &unk_257775F20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 2);
  return v4;
}

uint64_t type metadata accessor for NeuralNetwork.WeightParameters(uint64_t a1)
{
  result = qword_27F881648;
  if (!qword_27F881648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_257701BC8(uint64_t a1, uint64_t a2)
{
  result = sub_257742F64();
  v6 = result;
  if (result)
  {
    result = sub_257742F84();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_257742F74();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_2576FFEF4(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

uint64_t sub_257701C64()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

unint64_t sub_257701CC0()
{
  result = qword_27F87E2D0;
  if (!qword_27F87E2D0)
  {
    type metadata accessor for Proto_WeightParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E2D0);
  }

  return result;
}

void sub_257701D40(uint64_t a1)
{
  sub_257701DC4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Proto_WeightParams(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257701DC4()
{
  if (!qword_27F881658)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F881658);
    }
  }
}

uint64_t sub_257701E14()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_257701E6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 OUTLINED_FUNCTION_7_42@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 160);
  v3 = *(v1 - 128);
  *(a1 + 48) = *(v1 - 144);
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_26(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_22_25(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_28()
{

  return type metadata accessor for NeuralNetwork.WeightParameters(0);
}

void OUTLINED_FUNCTION_24_27()
{

  sub_257469BAC();
}

uint64_t OUTLINED_FUNCTION_25_25(uint64_t a1)
{
  *(a1 + 16) = v1;

  return type metadata accessor for NeuralNetwork.WeightParameters(0);
}

uint64_t OUTLINED_FUNCTION_26_18(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_17(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;

  return type metadata accessor for Proto_WeightParams(0);
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return type metadata accessor for NeuralNetwork.WeightParameters(0);
}

void *OUTLINED_FUNCTION_32_13()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t sub_2577020B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  OUTLINED_FUNCTION_4();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  sub_257702678(a1, v12);
  sub_2577027B0(a1, type metadata accessor for Proto_MILSpec_Dimension);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_2577026E8(v12);
    v21 = 0;
LABEL_5:
    v22 = 1;
LABEL_8:
    *a2 = v21;
    *(a2 + 8) = v22;
    return result;
  }

  sub_257702750(v12, v19, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
  sub_257702750(v19, v17, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_257702750(v17, v6, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension);
    v21 = *v6;
    result = sub_2577027B0(v6, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension);
    goto LABEL_5;
  }

  sub_257702750(v17, v9, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension);
  v21 = *v9;
  result = sub_2577027B0(v9, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t MLProgram.ShapeDimension.debugDescription.getter()
{
  if (*(v0 + 8) != 1)
  {
    return sub_257743974();
  }

  if (*v0)
  {
    return 3026478;
  }

  return 63;
}

uint64_t static MLProgram.ShapeDimension.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t MLProgram.ShapeDimension.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    MEMORY[0x259C651F0](1);
    return sub_257743A34();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    return MEMORY[0x259C651F0](v1);
  }
}

uint64_t MLProgram.ShapeDimension.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2 == 1)
  {
    MEMORY[0x259C651F0](1);
    sub_257743A34();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    MEMORY[0x259C651F0](v1);
  }

  return sub_257743A64();
}

uint64_t sub_2577024EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_257743A14();
  if (v3 == 1)
  {
    MEMORY[0x259C651F0](1);
    sub_257743A34();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    MEMORY[0x259C651F0](v2);
  }

  return sub_257743A64();
}

uint64_t MLProgram.ShapeDimension.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t MLProgram.ShapeDimension.value.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t MLProgram.ShapeDimension.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  *a3 = v3;
  *(a3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_2577025AC()
{
  result = qword_27F881668;
  if (!qword_27F881668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881668);
  }

  return result;
}

unint64_t sub_257702610()
{
  result = qword_27F87B5C0;
  if (!qword_27F87B5C0)
  {
    type metadata accessor for Proto_MILSpec_Dimension(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B5C0);
  }

  return result;
}

uint64_t sub_257702678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577026E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257702750(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2577027B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_257702808()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v34 - v16;
  v18 = v0 + *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20);
  v19 = type metadata accessor for Proto_ArrayFeatureType(0);
  sub_2576A6098(v18 + *(v19 + 24), v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v7) == 1)
  {
    v20 = 0;
  }

  else
  {
    if (v2)
    {
      v21 = v2 <= 2;
    }

    else
    {
      v21 = 0;
    }

    v20 = !v21;
    sub_25770439C(v17, v14);
    sub_257704420(v14, v11, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
    sub_2576A48B8();
    sub_257704480(v14, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
  }

  v22 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  v23 = MEMORY[0x277D84F90];
  if (!v22 && (v20 & 1) == 0)
  {
    v34[0] = v4;
    v24 = OUTLINED_FUNCTION_288();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_0_96();
    sub_25767A50C(v26, &qword_27F87A1F8, &qword_257770B90, v27);
    OUTLINED_FUNCTION_3_46();
    v28 = sub_257743604();
    v30 = v29;
    *v6 = v23;
    sub_25767A064();
    v31 = *(*v6 + 16);
    sub_25767A0B0(v31);
    v23 = *v6;
    *(v23 + 16) = v31 + 1;
    v32 = v23 + 48 * v31;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0xD000000000000032;
    *(v32 + 48) = 0x8000000257781D60;
    OUTLINED_FUNCTION_8_26(v32);
    *(v33 + 64) = v28;
    *(v33 + 72) = v30;
  }

  *v6 = v23;
  OUTLINED_FUNCTION_35();
}

void sub_257702A64()
{
  OUTLINED_FUNCTION_31();
  v67 = v1;
  v68 = v0;
  v3 = v2;
  v64 = v4;
  v5 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - v14;
  v16 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  if (!v3 || v3 >= 3)
  {
    v17 = v68 + *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20);
    v18 = type metadata accessor for Proto_ArrayFeatureType(0);
    sub_2576A6098(v17 + *(v18 + 24), v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
    {
      v71 = v16;
    }

    else
    {
      sub_25770439C(v15, v12);
      sub_257704420(v12, v9, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
      sub_2576A48B8();
      v19 = OUTLINED_FUNCTION_288();
      sub_257704480(v19, v20);
      if (v72)
      {
        sub_257703908();
      }

      else
      {
        sub_257703594();
      }
    }

    sub_25763D14C(v71);
  }

  v63 = v3;
  v21 = v68;
  v22 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (v22)
  {
    v23 = 0;
    v24 = *(v68 + *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20));
    v69 = (v24 + 32);
    v65 = v22;
    v66 = "cation version 7 and later.";
    v25 = *(v24 + 16);
    while (1)
    {
      if (v25)
      {
        v71 = v16;
        v21 = &v71;
        sub_257483724(0, v25, 0);
        v26 = v71;
        v27 = *(v71 + 16);
        v28 = v69;
        v29 = v25;
        do
        {
          v30 = *v28++;
          v5 = v30;
          v71 = v26;
          v31 = *(v26 + 24);
          v32 = v27 + 1;
          if (v27 >= v31 >> 1)
          {
            v33 = OUTLINED_FUNCTION_174(v31);
            v21 = &v71;
            sub_257483724(v33, v27 + 1, 1);
            v26 = v71;
          }

          *(v26 + 16) = v32;
          *(v26 + 8 * v27++ + 32) = v5;
          --v29;
        }

        while (v29);
      }

      else
      {
        v32 = *(v16 + 16);
        v26 = v16;
      }

      if (v23 >= v32)
      {
        break;
      }

      v21 = *(v26 + 8 * v23 + 32);

      if (v21 < 0)
      {
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_257743834();
        MEMORY[0x259C64E90](0xD000000000000033, v66 | 0x8000000000000000);
        v21 = v68;
        v34 = FeatureType.ShapedArrayParameters.shape.getter();
        if (v23 >= *(v34 + 16))
        {
          goto LABEL_36;
        }

        v35 = v16;
        v36 = *(v34 + 8 * v23 + 32);

        v70 = v36;
        v37 = sub_257743974();
        MEMORY[0x259C64E90](v37);

        MEMORY[0x259C64E90](0x646E692074612029, 0xEB00000000207865);
        v70 = v23;
        v38 = sub_257743974();
        MEMORY[0x259C64E90](v38);

        v39 = OUTLINED_FUNCTION_3_46();
        MEMORY[0x259C64E90](v39);
        v40 = v71;
        v41 = v72;
        v71 = v67;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
        OUTLINED_FUNCTION_0_96();
        sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90, v42);
        OUTLINED_FUNCTION_3_46();
        v21 = sub_257743604();
        v44 = v43;
        v45 = v73;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_66();
          sub_25746996C();
          v45 = v49;
        }

        v5 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v5 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_174(v46);
          OUTLINED_FUNCTION_11_41();
          v45 = v50;
        }

        *(v45 + 16) = v5 + 1;
        v47 = v45 + 48 * v5;
        *(v47 + 32) = 0;
        *(v47 + 40) = v40;
        *(v47 + 48) = v41;
        OUTLINED_FUNCTION_8_26(v47);
        *(v48 + 64) = v21;
        *(v48 + 72) = v44;

        v73 = v45;
        v16 = v35;
        v22 = v65;
      }

      if (++v23 == v22)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_0_66();
    sub_25746996C();
    v55 = v60;
    goto LABEL_31;
  }

LABEL_28:
  v51 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  sub_2576A44B8(*(v68 + *(v51 + 20) + 8), *(v68 + *(v51 + 20) + 16), &v71);
  if (v71 || v63 > 6)
  {
    goto LABEL_34;
  }

  v5 = 0x8000000257781A70;
  v71 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v52, &qword_27F87A1F8, &qword_257770B90, v53);
  OUTLINED_FUNCTION_3_46();
  v23 = sub_257743604();
  v21 = v54;
  v55 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_31:
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  if (v57 >= v56 >> 1)
  {
    OUTLINED_FUNCTION_174(v56);
    OUTLINED_FUNCTION_11_41();
    v55 = v61;
  }

  *(v55 + 16) = v57 + 1;
  v58 = v55 + 48 * v57;
  *(v58 + 32) = 0;
  *(v58 + 40) = 0xD00000000000006BLL;
  *(v58 + 48) = v5;
  OUTLINED_FUNCTION_8_26(v58);
  *(v59 + 64) = v23;
  *(v59 + 72) = v21;
  v73 = v55;
LABEL_34:
  sub_2577032F8(v67, &v71);
  sub_25763D14C(v71);
  *v64 = v73;
  OUTLINED_FUNCTION_35();
}

BOOL sub_257703054(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

BOOL sub_257703164(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *((a4)(0, a2) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

BOOL sub_257703248(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2577032F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2 + *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  sub_2576A44B8(v6, v7, v32);
  v8 = LOBYTE(v32[0]);
  if (LOBYTE(v32[0]) == 5)
  {
    v9 = 2;
  }

  else
  {
    v9 = LOBYTE(v32[0]);
  }

  result = type metadata accessor for Proto_ArrayFeatureType(0);
  v11 = *(v5 + *(result + 28) + 8);
  if (!*(v5 + *(result + 28) + 8))
  {
    if (v9 != 3)
    {
      OUTLINED_FUNCTION_9_39();
      sub_257743834();
      v14 = 0x8000000257781C70;
      v13 = 0xD00000000000004BLL;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v11 == 1)
  {
    if (v8 >= 2)
    {
      OUTLINED_FUNCTION_9_39();
      sub_257743834();
      v12 = "es not match the data type ";
      v13 = 0xD00000000000004DLL;
      goto LABEL_11;
    }

LABEL_13:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (v11 != 2 || v9 == 2)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_9_39();
  sub_257743834();
  v12 = "does not match the data type ";
  v13 = 0xD00000000000004ELL;
LABEL_11:
  v14 = v12 | 0x8000000000000000;
LABEL_15:
  MEMORY[0x259C64E90](v13, v14);
  sub_2576A44B8(v6, v7, &v31);
  v16 = v31;
  if (v31 == 5)
  {
    v16 = 2;
  }

  v31 = v16;
  sub_257743884();
  v17 = OUTLINED_FUNCTION_3_46();
  MEMORY[0x259C64E90](v17);
  v19 = v32[0];
  v18 = v32[1];
  v32[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v20, &qword_27F87A1F8, &qword_257770B90, v21);
  OUTLINED_FUNCTION_3_46();
  v22 = sub_257743604();
  v24 = v23;

  sub_25746996C();
  v15 = v25;
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  if (v27 >= v26 >> 1)
  {
    OUTLINED_FUNCTION_174(v26);
    sub_25746996C();
    v15 = v30;
  }

  *(v15 + 16) = v27 + 1;
  v28 = v15 + 48 * v27;
  *(v28 + 32) = 0;
  *(v28 + 40) = v19;
  *(v28 + 48) = v18;
  OUTLINED_FUNCTION_8_26(v28);
  *(v29 + 64) = v22;
  *(v29 + 72) = v24;

LABEL_20:
  *a2 = v15;
  return result;
}

void sub_257703594()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = v1;
  v6 = v5;
  v7 = v2;
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v52 = v2;
    v54 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_0_96();
    sub_25767A50C(v10, &qword_27F87A1F8, &qword_257770B90, v11);
    OUTLINED_FUNCTION_3_46();
    v12 = sub_257743604();
    v14 = v13;
    sub_25746996C();
    v9 = v15;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      OUTLINED_FUNCTION_174(v16);
      OUTLINED_FUNCTION_11_41();
      v9 = v48;
    }

    *(v9 + 16) = v17 + 1;
    OUTLINED_FUNCTION_3_68();
    *(v18 + 40) = v19;
    *(v18 + 48) = 0x8000000257781BB0;
    OUTLINED_FUNCTION_8_26(v18);
    *(v20 + 64) = v12;
    *(v20 + 72) = v14;
    v7 = v52;
  }

  swift_getKeyPath();
  v21 = 32;
  do
  {
    if (!v8)
    {

      goto LABEL_15;
    }

    v54 = *(v6 + v21);

    swift_getAtKeyPath();

    v21 += 8;
    --v8;
  }

  while ((v53 & 1) == 0);

  v54 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v22, &qword_27F87A1F8, &qword_257770B90, v23);
  OUTLINED_FUNCTION_3_46();
  v24 = sub_257743604();
  v26 = v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_66();
    sub_25746996C();
    v9 = v46;
  }

  v28 = *(v9 + 16);
  v27 = *(v9 + 24);
  if (v28 >= v27 >> 1)
  {
    OUTLINED_FUNCTION_174(v27);
    OUTLINED_FUNCTION_11_41();
    v9 = v47;
  }

  *(v9 + 16) = v28 + 1;
  OUTLINED_FUNCTION_3_68();
  *(v30 + 40) = v29 + 6;
  *(v30 + 48) = 0x8000000257781B20;
  OUTLINED_FUNCTION_8_26(v30);
  *(v31 + 64) = v24;
  *(v31 + 72) = v26;
LABEL_15:
  v32 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (v32)
  {
    MEMORY[0x28223BE20](v33);
    v51[2] = v3;
    if (!sub_257703054(sub_257704400, v51, v6))
    {
      v54 = v4;
      v34 = OUTLINED_FUNCTION_288();
      __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
      OUTLINED_FUNCTION_0_96();
      sub_25767A50C(v36, &qword_27F87A1F8, &qword_257770B90, v37);
      OUTLINED_FUNCTION_3_46();
      v38 = sub_257743604();
      v40 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_66();
        sub_25746996C();
        v9 = v49;
      }

      v42 = *(v9 + 16);
      v41 = *(v9 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_174(v41);
        OUTLINED_FUNCTION_11_41();
        v9 = v50;
      }

      *(v9 + 16) = v42 + 1;
      OUTLINED_FUNCTION_3_68();
      *(v44 + 40) = v43 + 27;
      *(v44 + 48) = 0x8000000257781B60;
      OUTLINED_FUNCTION_8_26(v44);
      *(v45 + 64) = v38;
      *(v45 + 72) = v40;
    }
  }

  *v7 = v9;
  OUTLINED_FUNCTION_35();
}

void sub_257703908()
{
  OUTLINED_FUNCTION_31();
  v94 = v0;
  v4 = v3;
  v6 = v5;
  v86 = v7;
  v8 = type metadata accessor for SizeRange(0);
  v95 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_11();
  v93 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = (&v85 - v12);
  v102 = MEMORY[0x277D84F90];
  v92 = v6;
  v13 = *(v6 + 16);
  v98 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = v92 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v1 = *(v95 + 72);
    v97 = xmmword_2577442B0;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
      inited = swift_initStackObject();
      *(inited + 16) = v97;
      v99 = v14;
      v100 = 0x5B65676E6172;
      v101 = 0xE600000000000000;
      v17 = sub_257743974();
      MEMORY[0x259C64E90](v17);
      v13 = v98;

      MEMORY[0x259C64E90](93, 0xE100000000000000);
      v18 = v101;
      *(inited + 32) = v100;
      *(inited + 40) = v18;
      v100 = v4;

      sub_25763D200(inited);
      v2 = v100;
      sub_25773ADC0(&v100);

      sub_25763D14C(v100);
      v15 += v1;
      ++v14;
    }

    while (v13 != v14);
  }

  v19 = v94;
  v20 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (!v20)
  {
    goto LABEL_42;
  }

  v21 = v19;
  v22 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (v22 == v13)
  {
    v91 = v4;
    if (v13)
    {
      v23 = 0;
      v24 = *(v94 + *(type metadata accessor for FeatureType.ShapedArrayParameters(0) + 20));
      v92 += (*(v95 + 80) + 32) & ~*(v95 + 80);
      *&v97 = v24 + 32;
      v25 = *(v24 + 16);
      v89 = v24;
      v90 = " the allowed ranges' rank (";
      v88 = "n the allowed maximum (";
      v87 = "default height (";
      while (1)
      {
        if (v25)
        {
          v100 = MEMORY[0x277D84F90];
          v21 = &v100;
          sub_257483724(0, v25, 0);
          v26 = v100;
          v27 = *(v100 + 16);
          v1 = v97;
          v19 = v25;
          do
          {
            v28 = *v1;
            v1 += 8;
            v2 = v28;
            v100 = v26;
            v29 = *(v26 + 24);
            v30 = v27 + 1;
            if (v27 >= v29 >> 1)
            {
              v31 = OUTLINED_FUNCTION_174(v29);
              v21 = &v100;
              sub_257483724(v31, v27 + 1, 1);
              v26 = v100;
            }

            *(v26 + 16) = v30;
            *(v26 + 8 * v27++ + 32) = v2;
            --v19;
          }

          while (v19);
        }

        else
        {
          v26 = MEMORY[0x277D84F90];
          v30 = *(MEMORY[0x277D84F90] + 16);
        }

        if (v23 >= v30)
        {
          break;
        }

        v1 = *(v26 + 8 * v23 + 32);

        v32 = v96;
        v30 = v92 + *(v95 + 72) * v23;
        OUTLINED_FUNCTION_1_77();
        sub_257704420(v30, v32, v33);
        v19 = *v32;
        sub_257704480(v32, v21);
        if (v19 < 0)
        {
          goto LABEL_49;
        }

        if (v1 < v19)
        {
          OUTLINED_FUNCTION_10_46();
          sub_257743834();
          OUTLINED_FUNCTION_12_43();
          v99 = v23;
          v2 = MEMORY[0x277D83BF8];
          v34 = sub_257743974();
          v19 = v35;
          MEMORY[0x259C64E90](v34);

          MEMORY[0x259C64E90](10272, 0xE200000000000000);
          v36 = FeatureType.ShapedArrayParameters.shape.getter();
          if (v23 >= *(v36 + 16))
          {
            goto LABEL_51;
          }

          v37 = *(v36 + 8 * v23 + 32);

          v99 = v37;
          v38 = sub_257743974();
          MEMORY[0x259C64E90](v38);

          MEMORY[0x259C64E90](0xD000000000000024, v88 | 0x8000000000000000);
          OUTLINED_FUNCTION_1_77();
          v19 = v96;
          sub_257704420(v30, v96, v39);
          v1 = *v19;
          sub_257704480(v19, &v100);
          if (v1 < 0)
          {
            goto LABEL_52;
          }

          v99 = v1;
          v40 = sub_257743974();
          MEMORY[0x259C64E90](v40);

          MEMORY[0x259C64E90](11817, 0xE200000000000000);
          v1 = v100;
          v19 = v101;
          v100 = v91;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
          OUTLINED_FUNCTION_0_96();
          sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90, v41);
          OUTLINED_FUNCTION_3_46();
          v21 = sub_257743604();
          v43 = v42;
          v44 = v102;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_66();
            sub_25746996C();
            v44 = v67;
          }

          v2 = *(v44 + 16);
          v45 = *(v44 + 24);
          if (v2 >= v45 >> 1)
          {
            OUTLINED_FUNCTION_174(v45);
            sub_25746996C();
            v44 = v68;
          }

          *(v44 + 16) = v2 + 1;
          v46 = v44 + 48 * v2;
          *(v46 + 32) = 0;
          *(v46 + 40) = v1;
          *(v46 + 48) = v19;
          OUTLINED_FUNCTION_8_26(v46);
          *(v47 + 64) = v21;
          *(v47 + 72) = v43;

          v102 = v44;
          v13 = v98;
        }

        OUTLINED_FUNCTION_1_77();
        v48 = v30;
        v49 = v93;
        sub_257704420(v48, v93, v50);
        v51 = *(v49 + 8);
        sub_257704480(v49, v21);
        if ((v51 & 0x8000000000000000) == 0)
        {
          v30 = *(v89 + 16);
          if (v30)
          {
            v100 = MEMORY[0x277D84F90];
            v21 = &v100;
            sub_257483724(0, v30, 0);
            v52 = v100;
            v53 = *(v100 + 16);
            v1 = v97;
            do
            {
              v54 = *v1;
              v1 += 8;
              v2 = v54;
              v100 = v52;
              v55 = *(v52 + 24);
              v19 = v53 + 1;
              if (v53 >= v55 >> 1)
              {
                v56 = OUTLINED_FUNCTION_174(v55);
                v21 = &v100;
                sub_257483724(v56, v53 + 1, 1);
                v52 = v100;
              }

              *(v52 + 16) = v19;
              *(v52 + 8 * v53++ + 32) = v2;
              --v30;
            }

            while (v30);
          }

          else
          {
            v52 = MEMORY[0x277D84F90];
            v19 = *(MEMORY[0x277D84F90] + 16);
          }

          if (v23 >= v19)
          {
            goto LABEL_50;
          }

          v30 = *(v52 + 8 * v23 + 32);

          if (v51 < v30)
          {
            OUTLINED_FUNCTION_10_46();
            sub_257743834();
            OUTLINED_FUNCTION_12_43();
            v99 = v23;
            v1 = MEMORY[0x277D83B88];
            v19 = MEMORY[0x277D83BF8];
            sub_257743974();
            OUTLINED_FUNCTION_16_27();

            MEMORY[0x259C64E90](10272, 0xE200000000000000);
            v57 = FeatureType.ShapedArrayParameters.shape.getter();
            if (v23 >= *(v57 + 16))
            {
              goto LABEL_53;
            }

            v58 = *(v57 + 8 * v23 + 32);

            v99 = v58;
            sub_257743974();
            OUTLINED_FUNCTION_16_27();

            MEMORY[0x259C64E90](0xD000000000000027, v87 | 0x8000000000000000);
            v99 = v51;
            sub_257743974();
            OUTLINED_FUNCTION_16_27();

            MEMORY[0x259C64E90](11817, 0xE200000000000000);
            v1 = v100;
            v59 = v101;
            v100 = v91;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
            OUTLINED_FUNCTION_0_96();
            sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90, v60);
            OUTLINED_FUNCTION_3_46();
            v21 = sub_257743604();
            v19 = v61;
            v62 = v102;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_0_66();
              sub_25746996C();
              v62 = v69;
            }

            v64 = *(v62 + 16);
            v63 = *(v62 + 24);
            if (v64 >= v63 >> 1)
            {
              OUTLINED_FUNCTION_174(v63);
              sub_25746996C();
              v62 = v70;
            }

            *(v62 + 16) = v64 + 1;
            v65 = v62 + 48 * v64;
            *(v65 + 32) = 0;
            *(v65 + 40) = v1;
            *(v65 + 48) = v59;
            OUTLINED_FUNCTION_8_26(v65);
            *(v66 + 64) = v21;
            *(v66 + 72) = v19;

            v102 = v62;
            v13 = v98;
          }
        }

        if (++v23 == v13)
        {
          goto LABEL_42;
        }
      }

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
      goto LABEL_54;
    }

LABEL_42:
    v71 = v102;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_10_46();
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000025, 0x8000000257781BE0);
  v72 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  v99 = v72;
  v73 = sub_257743974();
  MEMORY[0x259C64E90](v73);

  MEMORY[0x259C64E90](0xD00000000000002BLL, 0x8000000257781C10);
  v99 = v13;
  sub_257743974();
  OUTLINED_FUNCTION_16_27();

  MEMORY[0x259C64E90](11817, 0xE200000000000000);
  v2 = v100;
  v30 = v101;
  v100 = v4;

  v74 = OUTLINED_FUNCTION_288();
  __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v76, &qword_27F87A1F8, &qword_257770B90, v77);
  OUTLINED_FUNCTION_3_46();
  v1 = sub_257743604();
  v19 = v78;
  v71 = v102;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_54:
    OUTLINED_FUNCTION_0_66();
    sub_25746996C();
    v71 = v83;
  }

  v80 = *(v71 + 16);
  v79 = *(v71 + 24);
  if (v80 >= v79 >> 1)
  {
    OUTLINED_FUNCTION_174(v79);
    sub_25746996C();
    v71 = v84;
  }

  *(v71 + 16) = v80 + 1;
  v81 = v71 + 48 * v80;
  *(v81 + 32) = 0;
  *(v81 + 40) = v2;
  *(v81 + 48) = v30;
  OUTLINED_FUNCTION_8_26(v81);
  *(v82 + 64) = v1;
  *(v82 + 72) = v19;

LABEL_47:
  *v86 = v71;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257704344()
{
  FeatureType.ShapedArrayParameters.shape.getter();
  v0 = sub_257487374();

  return v0 & 1;
}

uint64_t sub_25770439C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257704420(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_257704480(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_11_41()
{

  sub_25746996C();
}

void OUTLINED_FUNCTION_12_43()
{
  v2 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v2;

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_16_27()
{

  JUMPOUT(0x259C64E90);
}

uint64_t Model.init(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2577430C4();
  if (!v2)
  {
    Model.init(serializedData:)(v5, v6, a2);
  }

  v7 = sub_257743094();
  return (*(*(v7 - 8) + 8))(a1, v7);
}

uint64_t Model.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2577431D4();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3();
  v8 = type metadata accessor for Proto_Model(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  sub_257486740(a1, a2);
  sub_2577431C4();
  sub_257704770();
  sub_257743404();
  result = sub_257486798(a1, a2);
  if (!v3)
  {
    return sub_2577047C8(v11, a3);
  }

  return result;
}

unint64_t sub_257704770()
{
  result = qword_281537FF0;
  if (!qword_281537FF0)
  {
    type metadata accessor for Proto_Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537FF0);
  }

  return result;
}

uint64_t sub_2577047C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Model.write(to:)(uint64_t a1)
{
  sub_257743094();
  OUTLINED_FUNCTION_2_66();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(v8 - v7, a1, v1);
  if (sub_257742FF4() == 0x6C65646F6D6C6DLL && v9 == 0xE700000000000000)
  {
  }

  else
  {
    v11 = sub_257743994();

    if ((v11 & 1) == 0)
    {
      sub_257743014();
    }
  }

  type metadata accessor for Proto_Model(0);
  sub_257704770();
  v12 = sub_2577433F4();
  if (v2)
  {
    v14 = OUTLINED_FUNCTION_1_78();
    return v15(v14);
  }

  else
  {
    v17 = v12;
    v18 = v13;
    sub_257743134();
    v19 = OUTLINED_FUNCTION_1_78();
    v20(v19);
    return sub_257486798(v17, v18);
  }
}

uint64_t Model.serialized()()
{
  type metadata accessor for Proto_Model(0);
  sub_257704770();
  return sub_2577433F4();
}

void Model.writeAsPackage(to:)(uint64_t a1)
{
  sub_257743094();
  OUTLINED_FUNCTION_2_66();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Package(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  (*(v5 + 16))(v9, a1, v1);
  Package.init(url:)();
  if (!v2)
  {
    Package.setRootModel(_:)();
    v14 = OUTLINED_FUNCTION_1_78();
    v15(v14);
    sub_257704B98(v13);
  }
}

uint64_t sub_257704B98(uint64_t a1)
{
  v2 = type metadata accessor for Package(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  strcpy((v1 + 32), "Input Channels");
  *(v1 + 47) = -18;
  v2 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  result = OUTLINED_FUNCTION_296(v2 + 16, v7);
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6[0] = *(v2 + 16);
    *(v1 + 48) = sub_257743974();
    *(v1 + 56) = v4;
    *(v1 + 64) = 0x432074757074754FLL;
    *(v1 + 72) = 0xEF736C656E6E6168;
    result = OUTLINED_FUNCTION_296(v2 + 24, v6);
    if ((*(v2 + 24) & 0x8000000000000000) == 0)
    {
      *(v1 + 80) = sub_257743974();
      *(v1 + 88) = v5;
      return v1;
    }
  }

  __break(1u);
  return result;
}

void NeuralNetwork.Layer.InnerProductParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v2 = *(v1 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = (&v25 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v15 = *(v2 + 72);
  v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2577442B0;
  v18 = (v17 + v16);
  v19 = *(v1 + 48);
  *v18 = 0x73746867696557;
  v18[1] = 0xE700000000000000;
  NeuralNetwork.Layer.InnerProductParameters.weights.getter((v17 + v16 + v19));
  v20 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  OUTLINED_FUNCTION_296(v20 + 32, &v26);
  if (*(v20 + 32) == 1)
  {
    NeuralNetwork.Layer.InnerProductParameters.bias.getter();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2574695E4(v9, &qword_27F880938, &unk_25776E510);
    }

    else
    {
      OUTLINED_FUNCTION_4_26();
      sub_2576A16F4(v9, v14);
      v21 = *(v1 + 48);
      *v5 = 1935763778;
      v5[1] = 0xE400000000000000;
      sub_257706B80(v14, v5 + v21);
      sub_257469D34();
      v23 = v22;
      OUTLINED_FUNCTION_0_97();
      sub_257706ADC(v14, v24);
      *(v23 + 16) = 2;
      sub_25749E9A8(v5, v23 + v16 + v15);
    }
  }

  OUTLINED_FUNCTION_35();
}

void static NeuralNetwork.Layer.innerProduct(name:inputName:outputName:inputChannelCount:outputChannelCount:)()
{
  OUTLINED_FUNCTION_31();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = v10;
  v31 = v11;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v23 = OUTLINED_FUNCTION_13_6(v22);
  v27 = xmmword_2577442B0;
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = v9;
  *(v23 + 40) = v7;
  v24 = OUTLINED_FUNCTION_13_6(v22);
  *(v24 + 16) = v27;
  *(v24 + 32) = v5;
  *(v24 + 40) = v3;

  NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)(v28, v29, v21);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v13 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v17);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  sub_25752846C();
  sub_257706ADC(v21, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.innerProduct(inputChannelCount:outputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)(a1, a2, a3);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  if (qword_27F879380 != -1)
  {
    OUTLINED_FUNCTION_8_40(&qword_27F879380);
  }

  result = qword_27F87BF00;
  *(a3 + v6) = qword_27F87BF00;
  if (a1 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_4_59();
    v9 = v11;
    *(a3 + v6) = v11;
  }

  result = OUTLINED_FUNCTION_447(v9 + 16, v17);
  *(v9 + 16) = a1;
  if (a2 < 0)
  {
    goto LABEL_11;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a3 + v6);
  if ((v12 & 1) == 0)
  {
    v14 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v14);
    OUTLINED_FUNCTION_4_59();
    v13 = v15;
    *(a3 + v6) = v15;
  }

  result = OUTLINED_FUNCTION_447(v13 + 24, &v16);
  *(v13 + 24) = a2;
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.getter()
{
  type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 16, v2);
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter()
{
  type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 24, v2);
  result = *(v0 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weights.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_19_30();
  v7 = type metadata accessor for Proto_WeightParams(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v1 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  v13 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296(v12 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, v25);
  sub_2574A172C(v12 + v13, v2, &qword_27F87A1A0, &qword_257745750);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 8) = xmmword_257745740;
    *(v11 + 24) = xmmword_257745740;
    *(v11 + 40) = xmmword_257745740;
    *(v11 + 56) = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
    {
      sub_2574695E4(v2, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    sub_2576A16F4(v2, v11);
  }

  sub_2576FF45C(v11, a1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v19 = OUTLINED_FUNCTION_13_6(v18);
  *(v19 + 16) = xmmword_257743FF0;
  result = OUTLINED_FUNCTION_296(v12 + 24, v24);
  v21 = *(v12 + 24);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 32) = v21;
    result = OUTLINED_FUNCTION_296(v12 + 16, v23);
    v22 = *(v12 + 16);
    if ((v22 & 0x8000000000000000) == 0)
    {
      *(v19 + 40) = v22;

      *a1 = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.hasBias.getter()
{
  type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 32, v2);
  return *(v0 + 32);
}

void NeuralNetwork.Layer.InnerProductParameters.bias.getter()
{
  OUTLINED_FUNCTION_31();
  v25 = v1;
  v2 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v8 = OUTLINED_FUNCTION_13(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  v15 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  OUTLINED_FUNCTION_296(v14 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, &v26);
  sub_2574A172C(v14 + v15, v13, &qword_27F87A1A0, &qword_257745750);
  v16 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v2);
  sub_2574695E4(v13, &qword_27F87A1A0, &qword_257745750);
  v18 = EnumTagSinglePayload == 1;
  v19 = v25;
  if (!v18)
  {
    sub_2574A172C(v14 + v15, v11, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
    {
      *v6 = MEMORY[0x277D84F90];
      *(v6 + 8) = xmmword_257745740;
      *(v6 + 24) = xmmword_257745740;
      *(v6 + 40) = xmmword_257745740;
      *(v6 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      if (__swift_getEnumTagSinglePayload(v11, 1, v2) != 1)
      {
        sub_2574695E4(v11, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_2576A16F4(v11, v6);
    }

    sub_2576FF45C(v6, v19);
    v16 = 0;
  }

  v24 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v19, v16, 1, v24);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v7 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v8 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v8);
      OUTLINED_FUNCTION_4_59();
      OUTLINED_FUNCTION_355_0(v9);
    }

    result = OUTLINED_FUNCTION_237_0(v7 + 16, v6);
    *(v7 + 16) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 80) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_296(v4 + 16, v1);
  v6 = *(v4 + 16);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_257705950;
  }

  return result;
}

void sub_257705950(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if ((a2 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v2 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v2 + 24;
LABEL_6:
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v10);
  }

  OUTLINED_FUNCTION_447(v8 + 16, v4);
  *(v8 + 16) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v7 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v8 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v8);
      OUTLINED_FUNCTION_4_59();
      OUTLINED_FUNCTION_355_0(v9);
    }

    result = OUTLINED_FUNCTION_237_0(v7 + 24, v6);
    *(v7 + 24) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 80) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_296(v4 + 24, v1);
  v6 = *(v4 + 24);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_257705AF8;
  }

  return result;
}

void sub_257705AF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if ((a2 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v2 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v2 + 24;
LABEL_6:
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v10);
  }

  OUTLINED_FUNCTION_447(v8 + 24, v4);
  *(v8 + 24) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weightsShape.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v2 = OUTLINED_FUNCTION_13_6(v1);
  *(v2 + 16) = xmmword_257743FF0;
  v3 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  result = OUTLINED_FUNCTION_296(v3 + 24, v8);
  v5 = *(v3 + 24);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = v5;
    result = OUTLINED_FUNCTION_296(v3 + 16, &v7);
    v6 = *(v3 + 16);
    if ((v6 & 0x8000000000000000) == 0)
    {
      *(v2 + 40) = v6;
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257705C40(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257706B80(a1, v4);
  return NeuralNetwork.Layer.InnerProductParameters.weights.setter(v4);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weights.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_5_53();
  sub_257706B80(a1 + v13, v12);
  v14 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(a1, v15);
    v16 = *(v1 + v14);
  }

  else
  {
    v17 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v17);

    sub_2575A1C58();
    v16 = v18;
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(a1, v19);

    *(v2 + v14) = v16;
  }

  OUTLINED_FUNCTION_1_5();
  sub_2576A16F4(v12, v7);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  swift_beginAccess();
  sub_25763A1E4(v7, v16 + v20);
  return swift_endAccess();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weights.modify(void *a1)
{
  *a1 = v1;
  v3 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  NeuralNetwork.Layer.InnerProductParameters.weights.getter(v6);
  return OUTLINED_FUNCTION_15_10();
}

void sub_257705F00(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_257706B80(*(a1 + 16), v2);
    NeuralNetwork.Layer.InnerProductParameters.weights.setter(v2);
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(v3, v4);
  }

  else
  {
    NeuralNetwork.Layer.InnerProductParameters.weights.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

void sub_257705F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2574A172C(a1, &v4 - v3, &qword_27F880938, &unk_25776E510);
  NeuralNetwork.Layer.InnerProductParameters.bias.setter();
}

void NeuralNetwork.Layer.InnerProductParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_19_30();
  v17 = type metadata accessor for NeuralNetwork.WeightParameters(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  sub_2574A172C(v4, v1, &qword_27F880938, &unk_25776E510);
  if (__swift_getEnumTagSinglePayload(v1, 1, v17) == 1)
  {
    sub_2574695E4(v1, &qword_27F880938, &unk_25776E510);
    v22 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
      v23 = *(v2 + v22);
    }

    else
    {
      v26 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v26);

      sub_2575A1C58();
      v23 = v27;
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);

      *(v2 + v22) = v23;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v9);
    v31 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    swift_beginAccess();
    sub_25763A1E4(v8, v23 + v31);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v1, v21);
    OUTLINED_FUNCTION_5_53();
    sub_257706B80(v21 + v24, v13);
    sub_25753171C(v13);
    sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(v21, v25);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.bias.modify(void *a1)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.InnerProductParameters.bias.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25770635C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_2574A172C(*(a1 + 16), v2, &qword_27F880938, &unk_25776E510);
    NeuralNetwork.Layer.InnerProductParameters.bias.setter();
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    NeuralNetwork.Layer.InnerProductParameters.bias.setter();
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.hasBias.setter(char a1)
{
  v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
  v5 = OUTLINED_FUNCTION_376_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v8 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_355_0(v9);
  }

  result = OUTLINED_FUNCTION_237_0(v7 + 32, v6);
  *(v7 + 32) = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.hasBias.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 72) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296(v4 + 32, v1);
  *(v1 + 84) = *(v4 + 32);
  return OUTLINED_FUNCTION_15_10();
}

void sub_2577064E0(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_447(v7 + 32, v1 + v10);
  *(v7 + 32) = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.isDynamicallyQuantized.getter()
{
  type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328();
  v1 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_296(OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize + v0, v3);
  return v1[v0];
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.isDynamicallyQuantized.setter(char a1)
{
  v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
  v5 = OUTLINED_FUNCTION_376_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v8 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_355_0(v9);
  }

  v10 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  result = OUTLINED_FUNCTION_237_0(OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize + v7, v6);
  v10[v7] = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.isDynamicallyQuantized.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 72) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_296(OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize + v4, v1);
  *(v1 + 84) = v5[v4];
  return OUTLINED_FUNCTION_15_10();
}

void sub_2577066A8(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  v11 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_447(OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize + v7, v1 + v10);
  v11[v7] = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.init()@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  if (qword_27F879380 != -1)
  {
    OUTLINED_FUNCTION_8_40(&qword_27F879380);
  }

  *(a2 + v3) = qword_27F87BF00;
}

void NeuralNetwork.Layer.InnerProductParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  sub_257706B80(v0, v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257745520;
  *(v11 + 32) = 0xD000000000000011;
  *(v11 + 40) = 0x8000000257780C20;
  type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(0xD000000000000021, &v29);
  if ((MEMORY[0xD000000000000021] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v25 = v1;
    v12 = MEMORY[0x277D83B88];
    *(v11 + 48) = MEMORY[0xD000000000000021];
    OUTLINED_FUNCTION_20_25();
    *(v11 + 72) = v12;
    *(v11 + 80) = v13 + 1;
    *(v11 + 88) = v14;
    OUTLINED_FUNCTION_296(0xD000000000000029, &v28);
    if ((MEMORY[0xD000000000000029] & 0x8000000000000000) == 0)
    {
      *(v11 + 96) = MEMORY[0xD000000000000029];
      *(v11 + 120) = v12;
      *(v11 + 128) = 0x73746867696577;
      *(v11 + 136) = 0xE700000000000000;
      *(v11 + 168) = type metadata accessor for NeuralNetwork.WeightParameters(0);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 144));
      NeuralNetwork.Layer.InnerProductParameters.weights.getter(boxed_opaque_existential_0);
      *(v11 + 176) = 1935763810;
      *(v11 + 184) = 0xE400000000000000;
      *(v11 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
      __swift_allocate_boxed_opaque_existential_0((v11 + 192));
      NeuralNetwork.Layer.InnerProductParameters.bias.getter();
      *(v11 + 224) = 0x73616942736168;
      *(v11 + 232) = 0xE700000000000000;
      OUTLINED_FUNCTION_296(0xD000000000000031, &v27);
      v16 = MEMORY[0x277D839B0];
      *(v11 + 240) = MEMORY[0xD000000000000031];
      OUTLINED_FUNCTION_20_25();
      *(v11 + 264) = v16;
      *(v11 + 272) = v17 + 5;
      *(v11 + 280) = v18;
      v19 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
      OUTLINED_FUNCTION_296(OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize - 0x2FFFFFFFFFFFFFEFLL, &v26);
      v20 = *(v19 - 0x2FFFFFFFFFFFFFEFLL);
      *(v11 + 312) = v16;
      *(v11 + 288) = v20;
      sub_257743A74();
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v25);
      sub_257743AA4();
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_257706ADC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(uint64_t a1)
{
  result = qword_27F881678;
  if (!qword_27F881678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257706B80(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_257706BE0()
{
  result = qword_27F87E240;
  if (!qword_27F87E240)
  {
    type metadata accessor for Proto_InnerProductLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E240);
  }

  return result;
}

uint64_t sub_257706C60(uint64_t a1)
{
  result = type metadata accessor for Proto_InnerProductLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_4_59()
{

  sub_2575A1C58();
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1)
{

  return swift_once();
}

uint64_t NeuralNetwork.Layer.PermuteParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 0x746174756D726550;
  *(v0 + 40) = 0xEB000000006E6F69;
  NeuralNetwork.Layer.PermuteParameters.permutation.getter();
  v1 = MEMORY[0x259C64F20]();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v0;
}

uint64_t static NeuralNetwork.Layer.permute(name:inputName:outputName:permutation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a5;
  v25 = a1;
  v26 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v17 = swift_allocObject();
  v23 = xmmword_2577442B0;
  *(v17 + 16) = xmmword_2577442B0;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 32) = v24;
  *(v18 + 40) = a6;
  *v16 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_PermuteLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.PermuteParameters.permutation.setter(v19);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v20) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v18);
  sub_2574897E0(v13);
  v21 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v21);
  sub_25752846C();
  return sub_257634BB4(v16);
}

uint64_t static NeuralNetwork.Layer.Kind.permute(permutation:)@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_PermuteLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.PermuteParameters.permutation.setter(v1);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.PermuteParameters.init(permutation:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_PermuteLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  NeuralNetwork.Layer.PermuteParameters.permutation.setter(a1);
}

uint64_t NeuralNetwork.Layer.PermuteParameters.permutation.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257483724(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257483724(v7 > 1, v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void NeuralNetwork.Layer.PermuteParameters.permutation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257484698(0, v4, 0);
    v5 = 32;
    v6 = v10;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257484698(v8 > 1, v9 + 1, 1);
      }

      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:

    *v2 = v6;
  }
}

void (*NeuralNetwork.Layer.PermuteParameters.permutation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.PermuteParameters.permutation.getter();
  return sub_25770735C;
}

void sub_25770735C(uint64_t *a1, char a2)
{
  if (a2)
  {

    NeuralNetwork.Layer.PermuteParameters.permutation.setter(v2);
  }

  else
  {
    NeuralNetwork.Layer.PermuteParameters.permutation.setter(*a1);
  }
}

BOOL static NeuralNetwork.Layer.PermuteParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_257487374())
  {
    type metadata accessor for Proto_PermuteLayerParams(0);
    sub_2577431B4();
    sub_2577074B0(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2577074B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NeuralNetwork.Layer.PermuteParameters(uint64_t a1)
{
  result = qword_27F881688;
  if (!qword_27F881688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770756C(uint64_t a1)
{
  result = type metadata accessor for Proto_PermuteLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2577075D8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v38 = a1;
  v37 = sub_257743094();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v45 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v56 = MEMORY[0x277D84F90];
    v41 = v7;
    sub_257485338(0, v9, 0);
    v46 = v56;
    v12 = sub_25770BCC0(v41);
    v14 = v13;
    v15 = v41;
    v16 = 0;
    v44 = v41 + 64;
    v36[1] = v6 + 32;
    v36[0] = v41 + 72;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v15 + 32))
      {
        v17 = v12 >> 6;
        if ((*(v44 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v15 + 36) != v14)
        {
          goto LABEL_26;
        }

        v40 = v11;
        v42 = v16;
        v18 = (*(v15 + 56) + (v12 << 6));
        v19 = v18[3];
        v21 = *v18;
        v20 = v18[1];
        v55[2] = v18[2];
        v55[3] = v19;
        v55[0] = v21;
        v55[1] = v20;
        v22 = v18[1];
        v51 = *v18;
        v52 = v22;
        v23 = v18[3];
        v53 = v18[2];
        v54 = v23;
        sub_25765DBE8(v55, &v47);
        v38(&v51);
        v43 = v4;
        if (v4)
        {
          goto LABEL_30;
        }

        v47 = v51;
        v48 = v52;
        v49 = v53;
        v50 = v54;
        sub_25765DC20(&v47);
        v24 = v46;
        v56 = v46;
        v26 = *(v46 + 16);
        v25 = *(v46 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_257485338(v25 > 1, v26 + 1, 1);
          v24 = v56;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v46 = v24;
        (*(v6 + 32))(v24 + v27 + *(v6 + 72) * v26, v45, v37);
        v15 = v41;
        v28 = 1 << *(v41 + 32);
        if (v12 >= v28)
        {
          goto LABEL_27;
        }

        v29 = *(v44 + 8 * v17);
        if ((v29 & (1 << v12)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v41 + 36) != v14)
        {
          goto LABEL_29;
        }

        v30 = v29 & (-2 << (v12 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v17 << 6;
          v32 = v17 + 1;
          v33 = (v36[0] + 8 * v17);
          while (v32 < (v28 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_257653FC0(v12, v14, v40 & 1);
              v15 = v41;
              v28 = __clz(__rbit64(v34)) + v31;
              goto LABEL_19;
            }
          }

          sub_257653FC0(v12, v14, v40 & 1);
          v15 = v41;
        }

LABEL_19:
        v16 = v42 + 1;
        v4 = v43;
        if (v42 + 1 == v9)
        {
          return v46;
        }

        v11 = 0;
        v14 = *(v15 + 36);
        v12 = v28;
        if (v28 < 0)
        {
          break;
        }
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
LABEL_29:
    __break(1u);
LABEL_30:
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    sub_25765DC20(&v47);

    __break(1u);
  }

  return result;
}

void Package.init(url:)()
{
  OUTLINED_FUNCTION_165_0();
  v87 = v0;
  v2 = v1;
  v92 = v3;
  sub_257743164();
  OUTLINED_FUNCTION_63();
  v85 = v5;
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v84 = v7 - v6;
  v82 = sub_257742F04();
  OUTLINED_FUNCTION_63();
  v79 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v81 = v11 - v10;
  v95 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v99 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v83 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v77 - v24;
  v93 = v19;
  v26 = *(v19 + 16);
  (v26)(v77 - v24, v2, v17);
  v94 = v25;
  if (sub_257742FF4() == 0x67616B6361706C6DLL && v27 == 0xE900000000000065)
  {
    v29 = v17;
  }

  else
  {
    v29 = v17;
    v30 = sub_257743994();

    if ((v30 & 1) == 0)
    {
      sub_257743014();
    }
  }

  v31 = v92;
  v80 = v29;
  v26();
  v32 = *MEMORY[0x277CC91C0];
  v91 = *(v99 + 104);
  v33 = v95;
  v91(v16, v32, v95);
  v34 = type metadata accessor for Package(0);
  v78 = v34;
  v90 = sub_2576E782C();
  sub_257743064();
  v89 = *(v99 + 8);
  v89(v16, v33);
  v35 = sub_257742F44();
  OUTLINED_FUNCTION_448(v35);
  *(v31 + *(v34 + 28)) = sub_257742F34();
  v36 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881698, &qword_2577761B0);
  v88 = v2;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2577442C0;

  sub_257742EE4();
  sub_257742ED4();
  sub_257742EF4();
  *&v96 = v37;
  OUTLINED_FUNCTION_16_28();
  sub_25770B8CC(v38, v39, MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816A8, &qword_2577761B8);
  sub_2577082AC();
  sub_2577437E4();
  sub_257742F14();

  v40 = v84;
  sub_257743154();
  v41 = sub_257743144();
  v43 = v42;
  (*(v85 + 8))(v40, v86);
  v44 = sub_2577435D4();
  v45 = (v36 + *(v78 + 24));
  *v45 = 0x302E302E31;
  v45[1] = 0xE500000000000000;
  v45[2] = v41;
  v45[3] = v43;
  v85 = v43;
  v45[4] = v44;
  OUTLINED_FUNCTION_12_44();
  *&v96 = v46;
  OUTLINED_FUNCTION_11_42();
  *(&v96 + 1) = v47;
  v48 = *MEMORY[0x277CC91D8];
  v49 = *MEMORY[0x277CC91D8];
  v50 = v95;
  v86 = v99 + 104;
  v91(v16, v49, v95);
  v51 = v83;
  v52 = v89;
  sub_257743084();
  v53 = v50;
  v54 = v51;
  v52(v16, v53);
  v55 = v87;
  v56 = sub_257743034();
  if (v55)
  {
    MEMORY[0x259C65580](v55);
    v57 = *(v93 + 8);
    v58 = v80;
    v57(v54, v80);
    v57(v88, v58);
    v57(v94, v58);
  }

  else
  {
    v59 = v56;
    LODWORD(v87) = v48;
    v84 = v44;
    v60 = v93 + 8;
    v61 = *(v93 + 8);
    v62 = v80;
    (v61)(v51, v80);
    if (v59)
    {
      v83 = v61;
      v93 = v60;
      OUTLINED_FUNCTION_12_44();
      *&v96 = v63;
      OUTLINED_FUNCTION_11_42();
      *(&v96 + 1) = v64;
      v65 = v16;
      v66 = v95;
      v91(v16, v87, v95);
      v67 = v77[1];
      sub_257743084();
      v89(v65, v66);
      sub_2577430C4();
      v70 = v83;
      (v83)(v67, v62);
      v71 = sub_257742EC4();
      OUTLINED_FUNCTION_448(v71);
      sub_257742EB4();
      sub_257708310();
      sub_257742EA4();

      v72 = OUTLINED_FUNCTION_39_14();
      sub_257486798(v72, v73);
      v74 = OUTLINED_FUNCTION_34_16();
      v70(v74);
      v75 = OUTLINED_FUNCTION_33_14();
      v70(v75);

      v76 = v97;
      *v45 = v96;
      v45[2] = v76;
      *(v45 + 3) = v98;
    }

    else
    {
      v68 = OUTLINED_FUNCTION_34_16();
      v61(v68);
      v69 = OUTLINED_FUNCTION_33_14();
      v61(v69);
    }
  }

  OUTLINED_FUNCTION_166_0();
}

uint64_t type metadata accessor for Package(uint64_t a1)
{
  result = qword_27F8816F0;
  if (!qword_27F8816F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2577082AC()
{
  result = qword_27F8816B0;
  if (!qword_27F8816B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8816A8, &qword_2577761B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816B0);
  }

  return result;
}

unint64_t sub_257708310()
{
  result = qword_27F8816B8;
  if (!qword_27F8816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8816B8);
  }

  return result;
}

uint64_t Package.rootModelURL.getter()
{
  v1 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_14();
  type metadata accessor for Package(v12);
  OUTLINED_FUNCTION_19_31();
  if (v14 && (sub_25765368C(*(v13 + 16), *(v13 + 24)), (v15 & 1) != 0))
  {
    v18 = *(v3 + 104);
    v18(v7, *MEMORY[0x277CC91C0], v1);
    sub_2576E782C();

    sub_257743084();
    v16 = *(v3 + 8);
    v16(v7, v1);
    v18(v7, *MEMORY[0x277CC91D8], v1);
    sub_257743074();
    v16(v7, v1);

    return (*(v10 + 8))(v0, v8);
  }

  else
  {
    (*(v3 + 104))(v7, *MEMORY[0x277CC91D8], v1);
    sub_2576E782C();
    sub_257743084();
    (*(v3 + 8))(v7, v1);
    sub_257743024();
    return (*(v10 + 8))(v0, v8);
  }
}

void Package.setRootModel(_:)()
{
  OUTLINED_FUNCTION_165_0();
  v186 = v1;
  isUniquelyReferenced_nonNull_native = v4;
  v175 = v6;
  v219 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_14();
  v181 = sub_257742F04();
  OUTLINED_FUNCTION_63();
  v179 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v180 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38_0(&v174 - v13);
  v198 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_38_0(v18 - v17);
  v202 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v26);
  v28 = OUTLINED_FUNCTION_38_0(&v174 - v27);
  v191 = type metadata accessor for ModelKind(v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v30);
  v32 = OUTLINED_FUNCTION_38_0(&v174 - v31);
  v33 = type metadata accessor for MLProgram(v32);
  v34 = OUTLINED_FUNCTION_13(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v37 = OUTLINED_FUNCTION_38_0(v36 - v35);
  v38 = type metadata accessor for Model(v37);
  v39 = OUTLINED_FUNCTION_13(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v40);
  v42 = &v174 - v41;
  v204 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_15_27();
  v194 = v42;
  sub_25770B9BC(isUniquelyReferenced_nonNull_native, v42, v43);
  v193 = type metadata accessor for Package(0);
  v44 = *(v193 + 24);
  v199 = v0;
  v182 = (v0 + v44);
  v45 = *(v0 + v44 + 32);
  v46 = v45 + 64;
  OUTLINED_FUNCTION_41_0();
  v49 = v48 & v47;
  v51 = (v50 + 63) >> 6;
  v206 = 0x8000000257781DE0;
  v189 = *MEMORY[0x277CC91D8];
  v188 = (v15 + 104);
  v196 = (v15 + 8);
  v185 = v20;
  v201 = (v20 + 8);

  v52 = 0;
  v207 = v45;
  v205 = v51;
LABEL_2:
  v53 = v52;
  if (!v49)
  {
    goto LABEL_4;
  }

  do
  {
    v52 = v53;
LABEL_7:
    v54 = (*(v207 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v49)))));
    v3 = *v54;
    isUniquelyReferenced_nonNull_native = v54[1];
    v55 = *(v45 + 16);

    if (!v55 || (v56 = OUTLINED_FUNCTION_39_14(), v58 = sub_25765368C(v56, v57), (v59 & 1) == 0) || (v60 = (*(v45 + 56) + (v58 << 6)), v61 = v60[2], v62 = v60[3], v63 = v60[1], v215 = *v60, v216 = v63, v217 = v61, v218 = v62, v210 = v63, v211 = v215, v209 = v62, v208 = v61, sub_25765DBE8(&v215, v213), (v64 = *(&v211 + 1)) == 0))
    {
      __break(1u);
    }

    v49 &= v49 - 1;
    v215 = v211;
    v216 = v210;
    v217 = v208;
    v218 = v209;

    sub_25765DC20(&v215);
    v2 = v211;
    if (sub_2577436F4() & 1) != 0 || (OUTLINED_FUNCTION_32_14(), (sub_2577436F4()) || (sub_2577436F4())
    {
      *&v213[0] = 1635017028;
      *(&v213[0] + 1) = 0xE400000000000000;
      *&v211 = *v188;
      OUTLINED_FUNCTION_24_28();
      (v211)();
      *&v209 = sub_2576E782C();
      sub_257743084();
      *&v210 = *v196;
      OUTLINED_FUNCTION_38_11();
      v65();
      *&v213[0] = v2;
      *(&v213[0] + 1) = v64;
      OUTLINED_FUNCTION_24_28();
      (v211)();
      v66 = v187;
      sub_257743074();
      OUTLINED_FUNCTION_38_11();
      v67();
      *&v211 = *v201;
      (v211)(v66, v202);

      v68 = sub_257743004();
      *&v213[0] = 0;
      v69 = [v204 removeItemAtURL:v68 error:v213];

      if (!v69)
      {
        v161 = *&v213[0];

        sub_257742FD4();

        swift_willThrow();
        OUTLINED_FUNCTION_22_26();

        v163 = OUTLINED_FUNCTION_7_43();
        v164(v163);
        goto LABEL_47;
      }

      v70 = *&v213[0];
      v71 = OUTLINED_FUNCTION_39_14();
      v73 = sub_25765368C(v71, v72);
      v2 = v74;

      if (v2)
      {
        v2 = v182;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v212 = *(v2 + 32);
        v3 = *(v212 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880748, &unk_25776D470);
        sub_257743894();
        v45 = v212;

        v75 = (*(v45 + 56) + (v73 << 6));
        v77 = v75[2];
        v76 = v75[3];
        v78 = v75[1];
        v213[0] = *v75;
        v213[1] = v78;
        v213[2] = v77;
        v213[3] = v76;
        sub_25765DC20(v213);
        sub_2577438B4();
        v79 = OUTLINED_FUNCTION_7_43();
        v80(v79);
        *(v2 + 32) = v45;
      }

      else
      {
        v81 = OUTLINED_FUNCTION_7_43();
        v82(v81);
      }

      OUTLINED_FUNCTION_40_14();
      v51 = v205;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_40_14();
    v51 = v205;
  }

  while (v49);
  while (1)
  {
LABEL_4:
    v52 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v52 >= v51)
    {
      break;
    }

    v49 = *(v46 + 8 * v52);
    ++v53;
    if (v49)
    {
      goto LABEL_7;
    }
  }

  v83 = v190;
  v84 = v194;
  Model.kind.getter();
  if (swift_getEnumCaseMultiPayload() == 31)
  {
    v85 = v83;
    v86 = v183;
    sub_25770BB54(v85, v183, type metadata accessor for MLProgram);
    v87 = v199;
    sub_257659818();
    v88 = v184;
    sub_25770B9BC(v86, v184, type metadata accessor for MLProgram);
    OUTLINED_FUNCTION_44_1();
    v89 = swift_storeEnumTagMultiPayload();
    v90 = v192;
    sub_25746EEC4(v89, v91, v92, v93, v94, v95, v96, v97, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);
    v98 = type metadata accessor for Proto_Model.OneOf_Type(0);
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v98);
    v99 = *(type metadata accessor for Proto_Model(0) + 20);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v202;
    if (v100)
    {
      OUTLINED_FUNCTION_3_69();
      sub_25770BAFC(v88, v102);
      OUTLINED_FUNCTION_17_29();
      sub_25770BAFC(v86, v103);
      v104 = *(v84 + v99);
    }

    else
    {
      v3 = v86;
      v107 = type metadata accessor for Proto_Model._StorageClass(0);
      OUTLINED_FUNCTION_448(v107);

      sub_257505F58();
      v104 = v108;
      OUTLINED_FUNCTION_3_69();
      sub_25770BAFC(v88, v109);
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_40_14();
      sub_25770BAFC(v110, v111);

      *(v84 + v99) = v104;
    }

    v106 = v204;
    v112 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
    swift_beginAccess();
    sub_25770BA18(v192, v104 + v112);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_3_69();
    sub_25770BAFC(v83, v105);
    v87 = v199;
    v101 = v202;
    v106 = v204;
  }

  v113 = v203;
  v114 = (v87 + *(v193 + 20));
  sub_257743044();
  sub_257743654();
  OUTLINED_FUNCTION_29_19();

  v115 = [v106 fileExistsAtPath_];

  if (v115)
  {
    goto LABEL_29;
  }

  v116 = sub_257743004();
  *&v215 = 0;
  v117 = [v106 createDirectoryAtURL:v116 withIntermediateDirectories:1 attributes:0 error:&v215];

  if (!v117)
  {
    v128 = v215;
    OUTLINED_FUNCTION_29_19();
    sub_257742FD4();

    swift_willThrow();
    goto LABEL_40;
  }

  v118 = v215;
LABEL_29:
  v119 = v200;
  Package.rootModelURL.getter();
  (*(v185 + 16))(v113, v119, v101);
  if (sub_257742FF4() == 0x6C65646F6D6C6DLL && v120 == 0xE700000000000000)
  {
  }

  else
  {
    v122 = sub_257743994();

    if ((v122 & 1) == 0)
    {
      sub_257743014();
    }
  }

  type metadata accessor for Proto_Model(0);
  sub_25770B8CC(&qword_281537FF0, type metadata accessor for Proto_Model, &unk_2577500FC);
  v123 = v186;
  sub_2577433F4();
  if (v123)
  {
    OUTLINED_FUNCTION_22_26();

    v127 = *v201;
    (*v201)(v203, v101);
    v127(v200, v101);
LABEL_40:
    OUTLINED_FUNCTION_0_98();
    v130 = v84;
    goto LABEL_41;
  }

  v125 = v203;
  sub_257743134();
  v52 = 0;
  OUTLINED_FUNCTION_22_26();
  v126 = v201;
  v131 = OUTLINED_FUNCTION_44_1();
  sub_257486798(v131, v132);
  v133 = *v126;
  v133(v125, v101);
  v133(v200, v101);
  v134 = v182;
  v135 = v182[2];
  v136 = v182[3];

  *&v210 = "MLModelCreatorDefinedKey";
  *&v211 = v3 - 8;
  sub_25765C928(0x6C6D2E6C65646F6DLL, 0xED00006C65646F6DLL, v3 - 8, 0x8000000257779720, v3 + 2, 0x8000000257781E00, v214);
  swift_isUniquelyReferenced_nonNull_native();
  *&v215 = *(v134 + 32);
  sub_25765C03C(v214, v135, v136);

  *(v134 + 32) = v215;
  v137 = sub_257742F44();
  OUTLINED_FUNCTION_448(v137);
  v138 = sub_257742F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881698, &qword_2577761B0);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_2577442C0;
  sub_257742EE4();
  sub_257742ED4();
  sub_257742EF4();
  *&v215 = v139;
  OUTLINED_FUNCTION_16_28();
  sub_25770B8CC(v140, v141, MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816A8, &qword_2577761B8);
  sub_2577082AC();
  sub_2577437E4();
  sub_257742F14();
  OUTLINED_FUNCTION_15_27();
  v142 = v178;
  sub_25770B9BC(v84, v178, v143);
  *&v215 = sub_25773648C(v142);
  *(&v215 + 1) = v144;
  *&v216 = v145;
  sub_25770B914();
  v146 = sub_257742F24();
  v207 = v138;
  *&v208 = v133;
  isUniquelyReferenced_nonNull_native = v146;
  *&v209 = v147;

  *&v215 = 0xD000000000000018;
  *(&v215 + 1) = v206;
  v49 = *v188;
  v148 = v197;
  v149 = v198;
  (*v188)(v197, v189, v198);
  v46 = sub_2576E782C();
  sub_257743084();
  v2 = *v196;
  (*v196)(v148, v149);
  sub_257743134();
LABEL_43:
  v195 = v2;
  v200 = v46;
  v203 = v49;
  v205 = isUniquelyReferenced_nonNull_native;
  OUTLINED_FUNCTION_8_41();
  v150();
  v151 = v182;
  sub_25765C9C0(0xD000000000000018, v206, v211, v210 | 0x8000000000000000, 0xD000000000000023, 0x8000000257781E20);
  v152 = v151[1];
  v153 = v151[2];
  v154 = v151[3];
  v155 = v151[4];
  *&v215 = *v151;
  *(&v215 + 1) = v152;
  *&v216 = v153;
  *(&v216 + 1) = v154;
  *&v217 = v155;
  sub_25770B968();

  v156 = sub_257742F24();
  if (v52)
  {
    OUTLINED_FUNCTION_22_26();
  }

  else
  {
    v165 = v156;
    v166 = v157;

    OUTLINED_FUNCTION_12_44();
    *&v215 = v167;
    OUTLINED_FUNCTION_11_42();
    *(&v215 + 1) = v168;
    v169 = v197;
    OUTLINED_FUNCTION_24_28();
    v171 = *(v170 - 256);
    v203();
    sub_257743084();
    v195(v169, v171);
    sub_257743134();
    OUTLINED_FUNCTION_8_41();
    v172();
    sub_257486798(v165, v166);
    Package.rootModelURL.getter();
    OUTLINED_FUNCTION_22_26();
  }

  v159 = OUTLINED_FUNCTION_35_17();
  sub_257486798(v159, v160);

LABEL_47:
  OUTLINED_FUNCTION_0_98();
  v130 = v194;
LABEL_41:
  sub_25770BAFC(v130, v129);
  OUTLINED_FUNCTION_166_0();
}

uint64_t Package.url.getter()
{
  sub_257743094();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_205();

  return v1(v0);
}

uint64_t Package.url.setter()
{
  sub_257743094();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_44_1();

  return v1(v0);
}

uint64_t Package.contents.getter()
{
  v1 = *(v0 + *(type metadata accessor for Package(0) + 24) + 32);
  v4 = v0;

  sub_2577075D8(sub_25770BA88, &v3, v1);
  OUTLINED_FUNCTION_29_19();

  return v0;
}

uint64_t sub_257709B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_257742FE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257743094();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v17 = v10;
  v12 = *MEMORY[0x277CC91C0];
  v16 = *(v4 + 104);
  v16(v6, v12, v3);
  sub_2576E782C();

  sub_257743064();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v21 = v17;
  v22 = v11;
  v16(v6, *MEMORY[0x277CC91D8], v3);
  sub_257743074();
  v13(v6, v3);

  return (*(v18 + 8))(v9, v19);
}

uint64_t Package.hasRootModel.getter()
{
  type metadata accessor for Package(0);
  OUTLINED_FUNCTION_19_31();
  if (v1)
  {
    sub_25765368C(*(v0 + 16), *(v0 + 24));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t Package.rootModel.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_14();
  type metadata accessor for Package(v8);
  OUTLINED_FUNCTION_19_31();
  if (v10 && (sub_25765368C(*(v9 + 16), *(v9 + 24)), (v11 & 1) != 0))
  {
    Package.rootModelURL.getter();
    v12 = sub_2577430C4();
    if (v1)
    {
      return (*(v6 + 8))(v2, v4);
    }

    Model.init(serializedData:)(v12, v13, a1);
    (*(v6 + 8))(v2, v4);
    v15 = type metadata accessor for Model(0);
    v16 = a1;
    v17 = 0;
  }

  else
  {
    v15 = type metadata accessor for Model(0);
    v16 = a1;
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

void Package.readMetadata()()
{
  OUTLINED_FUNCTION_165_0();
  v1 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  type metadata accessor for Package(0);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_21_29();
  (*(v3 + 104))(v7, *MEMORY[0x277CC91D8], v1);
  sub_2576E782C();
  sub_257743084();
  (*(v3 + 8))(v7, v1);
  v15 = sub_2577430C4();
  if (v0)
  {
    (*(v10 + 8))(v14, v8);
  }

  else
  {
    v17 = v15;
    v18 = v16;
    (*(v10 + 8))(v14, v8);
    v19 = sub_257742EC4();
    OUTLINED_FUNCTION_448(v19);
    sub_257742EB4();
    sub_25770BAA8();
    sub_257742EA4();

    sub_257486798(v17, v18);
  }

  OUTLINED_FUNCTION_166_0();
}

void Package.readCombinedMetadata()()
{
  OUTLINED_FUNCTION_165_0();
  v160 = v1;
  v156 = v2;
  v157 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v155 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_38_0(v6 - v5);
  v158 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v159 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v9);
  v153 = &v140 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_38_0(&v140 - v13);
  v152 = type metadata accessor for Proto_ModelDescription(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  v20 = OUTLINED_FUNCTION_13(v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v140 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816D8, &qword_2577761C0);
  v27 = OUTLINED_FUNCTION_13(v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v140 - v28;
  v30 = type metadata accessor for Model(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = sub_2577435D4();
  v36 = v160;
  Package.rootModel.getter(v29);
  if (v36)
  {
    OUTLINED_FUNCTION_28_28();
    v162[8] = v35;
    sub_25749AD6C(v162);
LABEL_18:
    OUTLINED_FUNCTION_166_0();
    return;
  }

  v148 = v23;
  v149 = v18;
  v142 = v34;
  v143 = v0;
  v37 = v157;
  v160 = v35;
  v150 = 0;
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_2574695E4(v29, &qword_27F8816D8, &qword_2577761C0);
    OUTLINED_FUNCTION_14_29();
    v38 = v37;
    v39 = v155;
  }

  else
  {
    v40 = v142;
    sub_25770BB54(v29, v142, type metadata accessor for Model);
    v41 = *(v40 + *(type metadata accessor for Proto_Model(0) + 20));
    v42 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
    swift_beginAccess();
    sub_2574AD5D8(v41 + v42, v25, &qword_27F879BD8, &qword_257750240);
    v43 = v152;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v152);
    sub_2574695E4(v25, &qword_27F879BD8, &qword_257750240);
    v38 = v37;
    v39 = v155;
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_11;
    }

    v45 = v148;
    sub_2574AD5D8(v41 + v42, v148, &qword_27F879BD8, &qword_257750240);
    if (__swift_getEnumTagSinglePayload(v45, 1, v43) == 1)
    {
      v46 = v149;
      v47 = MEMORY[0x277D84F90];
      *v149 = MEMORY[0x277D84F90];
      v46[1] = 0;
      v46[2] = 0xE000000000000000;
      v46[3] = v47;
      v46[4] = v47;
      v46[5] = v47;
      v46[6] = 0;
      v46[7] = 0xE000000000000000;
      v46[8] = 0;
      v46[9] = 0xE000000000000000;
      v46[10] = v47;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v48 = *(v43 + 52);
      v49 = type metadata accessor for Proto_Metadata(0);
      __swift_storeEnumTagSinglePayload(v46 + v48, 1, 1, v49);
      v50 = __swift_getEnumTagSinglePayload(v45, 1, v43);
      v51 = v151;
      if (v50 != 1)
      {
        sub_2574695E4(v45, &qword_27F879BD8, &qword_257750240);
      }
    }

    else
    {
      v46 = v149;
      sub_25770BB54(v45, v149, type metadata accessor for Proto_ModelDescription);
      v51 = v151;
    }

    sub_2574AD5D8(v46 + *(v43 + 52), v51, &qword_27F879BD0, &unk_257744360);
    sub_25770BAFC(v46, type metadata accessor for Proto_ModelDescription);
    v52 = type metadata accessor for Proto_Metadata(0);
    v53 = __swift_getEnumTagSinglePayload(v51, 1, v52);
    sub_2574695E4(v51, &qword_27F879BD0, &unk_257744360);
    v40 = v142;
    if (v53 == 1)
    {
LABEL_11:
      OUTLINED_FUNCTION_0_98();
      sub_25770BAFC(v40, v54);
      OUTLINED_FUNCTION_14_29();
    }

    else
    {
      sub_2577435D4();
      Model.modelDescription.getter();
      v147 = v55;
      v152 = v56;
      Model.versionString.getter();
      v146 = v57;
      v151 = v58;
      Model.author.getter();
      v145 = v59;
      v149 = v60;
      Model.license.getter();
      v144 = v61;
      v148 = v62;
      Model.metadata.getter();
      v64 = v63;

      OUTLINED_FUNCTION_0_98();
      sub_25770BAFC(v40, v65);
      OUTLINED_FUNCTION_28_28();
      v162[8] = v160;
      sub_25749AD6C(v162);
      v160 = v64;
    }
  }

  v66 = [objc_opt_self() defaultManager];
  v67 = *(type metadata accessor for Package(0) + 20);
  strcpy(v162, "Metadata.json");
  HIWORD(v162[1]) = -4864;
  v68 = *(v39 + 104);
  v69 = v154;
  v141 = *MEMORY[0x277CC91D8];
  v140 = v68;
  v68(v154);
  v70 = sub_2576E782C();
  v155 = v67;
  v71 = v153;
  v142 = v70;
  sub_257743084();
  v72 = *(v39 + 8);
  v72(v69, v38);
  sub_257743054();
  v73 = *(v159 + 8);
  v74 = v71;
  v159 += 8;
  v75 = v73;
  (v73)(v74, v158);
  v76 = sub_257743654();

  v77 = [v66 fileExistsAtPath_];

  if (!v77)
  {
    v85 = v156;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_18_40();
  v161[0] = v78;
  OUTLINED_FUNCTION_11_42();
  v161[1] = v79;
  v80 = v157;
  v140(v69, v141, v157);
  sub_257743084();
  v72(v69, v80);
  v81 = v150;
  v82 = sub_2577430C4();
  if (v81)
  {
    MEMORY[0x259C65580](v81);
    v84 = OUTLINED_FUNCTION_25_27();
    v75(v84);
    v85 = v156;
LABEL_17:
    v86 = v152;
    *v85 = v147;
    v85[1] = v86;
    v87 = v151;
    v85[2] = v146;
    v85[3] = v87;
    v88 = v149;
    v85[4] = v145;
    v85[5] = v88;
    v89 = v148;
    v85[6] = v144;
    v85[7] = v89;
    v85[8] = v160;
    goto LABEL_18;
  }

  v90 = v82;
  v91 = v83;
  v92 = OUTLINED_FUNCTION_25_27();
  v75(v92);
  v93 = sub_257742EC4();
  OUTLINED_FUNCTION_448(v93);
  sub_257742EB4();
  sub_25770BAA8();
  sub_257742EA4();

  sub_257486798(v90, v91);
  memcpy(v161, v162, sizeof(v161));
  v95 = v161[0];
  v94 = v161[1];
  OUTLINED_FUNCTION_13_29();
  if (v96)
  {

    v147 = v95;
    v152 = v94;
  }

  v97 = v160;
  v99 = v161[2];
  v98 = v161[3];
  OUTLINED_FUNCTION_13_29();
  if (v100)
  {

    v146 = v99;
    v151 = v98;
  }

  v102 = v161[4];
  v101 = v161[5];
  OUTLINED_FUNCTION_13_29();
  if (v103)
  {

    v145 = v102;
    v149 = v101;
  }

  v105 = v161[6];
  v104 = v161[7];
  OUTLINED_FUNCTION_13_29();
  v150 = 0;
  if (v106)
  {

    v144 = v105;
    v148 = v104;
  }

  v107 = v161[8];

  sub_25749AD6C(v161);
  v108 = 0;
  v158 = v107;
  OUTLINED_FUNCTION_41_0();
  v112 = v111 & v110;
  v114 = (v113 + 63) >> 6;
  v157 = v109;
  v155 = v114;
  if ((v111 & v110) != 0)
  {
LABEL_32:
    while (1)
    {
      v116 = (v108 << 10) | (16 * __clz(__rbit64(v112)));
      v117 = (*(v158 + 48) + v116);
      v118 = *v117;
      v119 = v117[1];
      v120 = (*(v158 + 56) + v116);
      v121 = v120[1];
      v160 = *v120;

      swift_isUniquelyReferenced_nonNull_native();
      v159 = v118;
      v122 = sub_25765368C(v118, v119);
      if (__OFADD__(v97[2], (v123 & 1) == 0))
      {
        break;
      }

      v124 = v122;
      v125 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816E0, &qword_2577761C8);
      if (sub_257743894())
      {
        v126 = sub_25765368C(v159, v119);
        if ((v125 & 1) != (v127 & 1))
        {
          goto LABEL_46;
        }

        v124 = v126;
      }

      v128 = v160;
      if (v125)
      {

        v129 = (v97[7] + 16 * v124);
        *v129 = v128;
        v129[1] = v121;
      }

      else
      {
        v97[(v124 >> 6) + 8] |= 1 << v124;
        v130 = (v97[6] + 16 * v124);
        *v130 = v159;
        v130[1] = v119;
        v131 = (v97[7] + 16 * v124);
        *v131 = v128;
        v131[1] = v121;
        v132 = v97[2];
        v133 = __OFADD__(v132, 1);
        v134 = v132 + 1;
        if (v133)
        {
          goto LABEL_45;
        }

        v97[2] = v134;
      }

      v109 = v157;
      v114 = v155;
      v112 &= v112 - 1;
      if (!v112)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    while (1)
    {
      v115 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        break;
      }

      if (v115 >= v114)
      {

        v135 = v156;
        v136 = v152;
        *v156 = v147;
        v135[1] = v136;
        v137 = v151;
        v135[2] = v146;
        v135[3] = v137;
        v138 = v149;
        v135[4] = v145;
        v135[5] = v138;
        v139 = v148;
        v135[6] = v144;
        v135[7] = v139;
        v135[8] = v97;
        goto LABEL_18;
      }

      v112 = *(v109 + 8 * v115);
      ++v108;
      if (v112)
      {
        v108 = v115;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_2577439B4();
  __break(1u);
}

void Package.writeMetadata(_:)()
{
  OUTLINED_FUNCTION_165_0();
  v3 = v2;
  v4 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  v15 = sub_257742F44();
  OUTLINED_FUNCTION_448(v15);
  sub_257742F34();
  memcpy(v21, v3, sizeof(v21));
  sub_25770BBB0();
  v20 = sub_257742F24();
  v17 = v16;

  if (!v0)
  {
    type metadata accessor for Package(0);
    OUTLINED_FUNCTION_18_40();
    OUTLINED_FUNCTION_21_29();
    v21[0] = v18;
    v21[1] = v19;
    (*(v6 + 104))(v10, *MEMORY[0x277CC91D8], v4);
    sub_2576E782C();
    sub_257743084();
    (*(v6 + 8))(v10, v4);
    sub_257743134();
    (*(v13 + 8))(v1, v11);
    sub_257486798(v20, v17);
  }

  OUTLINED_FUNCTION_166_0();
}

uint64_t Package.hasWeights.getter()
{
  v1 = *(v0 + *(type metadata accessor for Package(0) + 24) + 32);
  OUTLINED_FUNCTION_41_0();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v4)
  {
LABEL_7:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = (*(v1 + 56) + ((v8 << 12) | (v10 << 6)));
    v12 = v11[2];
    v13 = v11[3];
    if (v11[4] != 0xD000000000000010 || 0x8000000257779720 != v11[5])
    {
      result = sub_257743994();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v12 != 0x73746867696577 || v13 != 0xE700000000000000)
    {
      result = sub_257743994();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return 0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25770B284(uint64_t a1, uint64_t a2)
{
  v3 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_14();
  type metadata accessor for Package(v7);
  (*(v5 + 104))(v2, *MEMORY[0x277CC91D8], v3);
  sub_2576E782C();
  sub_257743084();
  return (*(v5 + 8))(v2, v3);
}

void Package.addWeights()()
{
  OUTLINED_FUNCTION_165_0();
  v58 = v1;
  v55 = v2;
  v64 = *MEMORY[0x277D85DE8];
  v3 = sub_257742FE4();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = sub_257743094();
  OUTLINED_FUNCTION_63();
  v56 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v53 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for Package(0);
  v59 = 0x73746867696577;
  v60 = 0xE700000000000000;
  v18 = *(v5 + 104);
  v52 = *MEMORY[0x277CC91D8];
  v51 = v18;
  v18(v9);
  v50 = sub_2576E782C();
  sub_257743084();
  v49 = *(v5 + 8);
  v49(v9, v3);
  v54 = v0;
  v19 = Package.hasWeights.getter();
  v57 = v16;
  if (v19)
  {
    v20 = v56;
  }

  else
  {
    v21 = [objc_opt_self() defaultManager];
    v22 = v16;
    sub_257743044();
    sub_257743654();
    OUTLINED_FUNCTION_29_19();

    v23 = [v21 fileExistsAtPath_];

    if ((v23 & 1) == 0)
    {
      v24 = sub_257743004();
      v59 = 0;
      v25 = [v21 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v59];

      if (!v25)
      {
        v44 = v59;
        OUTLINED_FUNCTION_29_19();
        v45 = sub_257742FD4();

        v58 = v45;
        swift_willThrow();

        (*(v56 + 8))(v57, v10);
        goto LABEL_12;
      }

      v26 = v59;
    }

    v47 = v21;
    v48 = v10;
    v27 = (v54 + *(v17 + 24));
    sub_25765C9C0(0x73746867696577, 0xE700000000000000, 0xD000000000000010, 0x8000000257779720, 0xD000000000000014, 0x8000000257781E50);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[4];
    v59 = *v27;
    v60 = v28;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    sub_25770B968();

    v32 = v58;
    v33 = sub_257742F24();
    v58 = v32;
    if (v32)
    {

      (*(v56 + 8))(v57, v48);

      goto LABEL_12;
    }

    v35 = v33;
    v36 = v34;

    OUTLINED_FUNCTION_12_44();
    OUTLINED_FUNCTION_21_29();
    v59 = v37;
    v60 = v38;
    v51(v9, v52, v3);
    v39 = v53;
    sub_257743084();
    v49(v9, v3);
    v40 = v58;
    sub_257743134();
    v58 = v40;
    v41 = v47;
    if (v40)
    {
      sub_257486798(v35, v36);

      v42 = *(v56 + 8);
      v43 = v48;
      v42(v39, v48);
      v42(v57, v43);
      goto LABEL_12;
    }

    sub_257486798(v35, v36);

    v20 = v56;
    v46 = v39;
    v10 = v48;
    (*(v56 + 8))(v46, v48);
  }

  (*(v20 + 32))(v55, v57, v10);
LABEL_12:
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_25770B8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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