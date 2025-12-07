uint64_t sub_1DC3331E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAF8, &qword_1DC5240D0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC333268(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DC3332AC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DC33336C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_1DC33336C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC2ACCD4(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DC3333D4(uint64_t a1, unint64_t a2)
{
  sub_1DC2A6784(a1, a2);
  sub_1DC33360C(a1, a2);
  v4 = sub_1DC5177FC();

  return v4;
}

uint64_t sub_1DC333440@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1DC5177FC();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1DC33347C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517F0C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1DC5182FC();

    sub_1DC51769C();
    result = sub_1DC51833C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1DC51825C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_1DC33360C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC510A3C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v9 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      v12 = sub_1DC291E08(v9, 0);
      v13 = sub_1DC5109CC();
      sub_1DC2AD740(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v13 != v9)
      {
        __break(1u);
LABEL_9:
        sub_1DC2AD740(a1, a2);
        return MEMORY[0x1E69E7CC0];
      }

      return v12;
  }
}

uint64_t sub_1DC333790(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1DC51074C() && __OFSUB__(v4, sub_1DC51076C()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1DC51075C();
      return sub_1DC5177FC();
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1DC51074C() && __OFSUB__(v2, sub_1DC51076C()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      return sub_1DC5177FC();
  }
}

uint64_t sub_1DC3339CC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC333A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CB80;
  if (!qword_1ECC7CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CB80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RedactedUtterance(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DC333B68()
{
  OUTLINED_FUNCTION_140_0();

  v1 = OUTLINED_FUNCTION_72();
  return v0(v1);
}

uint64_t sub_1DC333BAC()
{

  OUTLINED_FUNCTION_65_1();
  sub_1DC51586C();

  OUTLINED_FUNCTION_42_2();
  return sub_1DC51585C();
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC517E5C();
}

void OUTLINED_FUNCTION_132_0()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_167_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1DC327DC8(a1, &a13);
}

uint64_t sub_1DC333D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v55 = a2;
  v2 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v51 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for NLRouterTurnContext(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v19 = sub_1DC2BE518();
  v20 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.PromptRule", 25, 2, v19, v20 & 1, v18);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v21 = sub_1DC346164();
  v23 = v22;
  if (v21 == sub_1DC313520(1) && v23 == v24)
  {
  }

  else
  {
    v26 = sub_1DC51825C();

    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = type metadata accessor for NLRouterServiceRequest(0);
  v28 = v53;
  sub_1DC3342D0(v53 + *(v27 + 20), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v49 = v15;
    sub_1DC3343A8(v10, v13);
    v31 = type metadata accessor for HeuristicRoutingRequest(0);
    v33 = v51;
    v32 = v52;
    (*(v51 + 16))(v52, v28 + *(v31 + 20), v2);
    type metadata accessor for NLRouterBypassUtils();
    if (sub_1DC309808())
    {
      v30 = sub_1DC517B9C();
      v34 = sub_1DC2BE518();
      sub_1DC516F0C(v30, &dword_1DC287000, v34, "[PromptRule] prompt for value. return sirix", 43, 2, MEMORY[0x1E69E7CC0]);

      (*(v33 + 8))(v32, v2);
      sub_1DC33440C(v13);
      v35 = OUTLINED_FUNCTION_1_7();
      v36(v35);
      v29 = 0;
      v15 = v49;
      goto LABEL_22;
    }

    v37 = sub_1DC309474(v28);
    v15 = v49;
    if (v37)
    {
      sub_1DC32DBF4();
      if ((v38 & 1) == 0)
      {
        v30 = sub_1DC517B9C();
        v39 = sub_1DC2BE518();
        sub_1DC516F0C(v30, &dword_1DC287000, v39, "[PromptRule] confirmation prompt. Discard rewrites.", 51, 2, MEMORY[0x1E69E7CC0]);

        if (sub_1DC32DB10())
        {
          (*(v33 + 8))(v52, v2);
          sub_1DC33440C(v13);
          v40 = OUTLINED_FUNCTION_1_7();
          v41(v40);
          goto LABEL_21;
        }

        v42 = v50;
        sub_1DC32CDF4();
        v43 = v52;
        (*(v33 + 8))(v52, v2);
        (*(v33 + 32))(v43, v42, v2);
      }
    }

    v44 = v52;
    v45 = sub_1DC5157DC();
    sub_1DC33440C(v13);
    if (v45)
    {
      (*(v33 + 8))(v44, v2);
      goto LABEL_10;
    }

    v30 = v55;
    (*(v33 + 32))(v55, v44, v2);
LABEL_21:
    v29 = 0;
    goto LABEL_22;
  }

  sub_1DC334340(v10);
LABEL_10:
  v29 = 1;
  v30 = v55;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v30, v29, 1, v2);
  v46 = sub_1DC2BE518();
  sub_1DC2B8848(v18, "HeuristicRules.PromptRule", 25, 2, v46);

  return (*(v15 + 8))(v18, v54);
}

uint64_t sub_1DC3342D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC334340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC3343A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterTurnContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC33440C(uint64_t a1)
{
  v2 = type metadata accessor for NLRouterTurnContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC33456C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB98, &qword_1DC524530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DC33463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1DC51772C();
  v10 = v9;
  v11 = sub_1DC51772C();
  v13 = v12;
  v14 = sub_1DC51772C();
  v16 = v15;
  v17 = sub_1DC51772C();
  v19 = v18;
  swift_getObjCClassMetadata();
  v20 = a7(v8, v10, v11, v13, v14, v16, v17, v19);

  return v20;
}

uint64_t sub_1DC3347DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t (*a10)(void), uint64_t (*a11)(void), uint64_t (*a12)(void), uint64_t (*a13)(void), void (*a14)(void, unint64_t), uint64_t (*a15)(uint64_t))
{
  v82 = a7;
  v83 = a8;
  v80 = a5;
  v81 = a6;
  v84 = a1;
  v85 = a2;
  v77 = a15;
  v78 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB98, &qword_1DC524530);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v76 = v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBA0, &qword_1DC524538);
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  v72 = v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBA8, &qword_1DC524540);
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  v68 = v67 - v24;
  sub_1DC51464C();
  OUTLINED_FUNCTION_0();
  v70 = v26;
  v71 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v69 = v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBB0, &qword_1DC524548);
  OUTLINED_FUNCTION_10(v28);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v67 - v30;
  sub_1DC51468C();
  OUTLINED_FUNCTION_0();
  v74 = v33;
  v75 = v32;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v86 = v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v88 = v67 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v87 = v67 - v38;
  a10(0);
  swift_allocObject();
  v73 = a11();
  a12(0);
  swift_allocObject();
  v39 = a13();
  v79 = v39;
  a14(0, 0xE000000000000000);
  v67[2] = *MEMORY[0x1E69D2468];
  sub_1DC51772C();
  v40 = *MEMORY[0x1E69D1760];
  sub_1DC51465C();
  OUTLINED_FUNCTION_2();
  v42 = *(v41 + 104);
  v42(v31, v40, v39);
  OUTLINED_FUNCTION_1_8();

  v67[3] = a4;
  sub_1DC51466C();
  v67[1] = *MEMORY[0x1E69D2480];
  sub_1DC51772C();
  v42(v31, v40, v39);
  OUTLINED_FUNCTION_1_8();

  sub_1DC51466C();
  sub_1DC51772C();
  v43 = v40;
  v44 = v79;
  v42(v31, v43, v39);
  v45 = v77;
  OUTLINED_FUNCTION_1_8();

  v46 = v86;
  v47 = sub_1DC51466C();
  v48 = v45(v47);
  if (v48)
  {
    sub_1DC5145DC();
  }

  v49 = v45(v48);
  v50 = v88;
  if (v49)
  {
    sub_1DC5145DC();
  }

  v51 = v44;
  v52 = v45(v49);
  if (v52)
  {
    v51 = v52;
    sub_1DC5145DC();
  }

  if (a9)
  {
    v53 = *MEMORY[0x1E69D1738];
    sub_1DC51462C();
    OUTLINED_FUNCTION_2();
    v55 = v68;
    (*(v54 + 104))(v68, v53, v51);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v51);
    v56 = sub_1DC514F7C();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBB8, &qword_1DC524558);
    sub_1DC51461C();
    *(swift_allocObject() + 16) = xmmword_1DC522F00;
    sub_1DC51772C();

    OUTLINED_FUNCTION_0_11();
    sub_1DC51460C();
    sub_1DC51772C();

    OUTLINED_FUNCTION_0_11();
    sub_1DC51460C();
    sub_1DC51772C();

    OUTLINED_FUNCTION_0_11();
    sub_1DC51460C();

    v89 = 1;
    v57 = v69;
    v58 = sub_1DC51463C();
    if (v77(v58))
    {
      sub_1DC5145EC();
    }

    (*(v70 + 8))(v57, v71);
    v46 = v86;
    v50 = v88;
  }

  v59 = v73;
  sub_1DC514BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1C8, &qword_1DC524550);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1DC524520;
  *(v60 + 32) = v59;
  v61 = sub_1DC5146DC();
  v62 = v76;
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v61);

  MEMORY[0x1E1292F50](v60, v62);

  sub_1DC33456C(v62);
  v63 = sub_1DC51390C();

  v64 = v75;
  v65 = *(v74 + 8);
  v65(v46, v75);
  v65(v50, v64);
  v65(v87, v64);
  return v63;
}

id sub_1DC335124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char))
{
  v10 = sub_1DC51772C();
  v12 = v11;
  v13 = sub_1DC51772C();
  v15 = v14;
  v16 = sub_1DC51772C();
  v18 = v17;
  v19 = sub_1DC51772C();
  v23 = a7;
  v21 = a8(v10, v12, v13, v15, v16, v18, v19, v20, v23);

  return v21;
}

id CDMCATIUSOParseHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMCATIUSOParseHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMCATIUSOParseHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CDMCATIUSOParseHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMCATIUSOParseHelpers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC335378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v61 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v60 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v59 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (v57 - v18);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v62 = v21;
  v63 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v25 = sub_1DC2BE518();
  v26 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.MDMRSpansRule", 28, 2, v25, v26 & 1, v24);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC344988() & 1) == 0)
  {
    v33 = sub_1DC517B9C();
    v34 = sub_1DC2BE518();
    sub_1DC516F0C(v33, &dword_1DC287000, v34, "[MDMRSpansRule] rule is off", 27, 2, MEMORY[0x1E69E7CC0]);

    v35 = v64;
    v36 = 1;
    v37 = v9;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v35, v36, 1, v37);
    v40 = v62;
    v39 = v63;
    v41 = sub_1DC2BE518();
    sub_1DC2B8848(v24, "HeuristicRules.MDMRSpansRule", 28, 2, v41);

    return (*(v40 + 8))(v24, v39);
  }

  v27 = v64;
  v58 = v9;
  v28 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F3B8(a1 + *(v28 + 32), v16, &qword_1ECC7C158, &unk_1DC5234A0);
  v29 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v29) == 1)
  {
    v30 = &qword_1ECC7C158;
    v31 = &unk_1DC5234A0;
    v32 = v16;
    goto LABEL_7;
  }

  sub_1DC28F3B8(v16, v19, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v16, type metadata accessor for NLRouterTurnProbingResult);
  v38 = type metadata accessor for NLRouterNLParseResponse(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v38) == 1)
  {
    v30 = &qword_1ECC7C160;
    v31 = qword_1DC5233B0;
    v32 = v19;
LABEL_7:
    sub_1DC28EB30(v32, v30, v31);
    v35 = v27;
LABEL_8:
    v36 = 1;
    v37 = v58;
    goto LABEL_9;
  }

  v43 = *v19;

  sub_1DC2E5408(v19, type metadata accessor for NLRouterNLParseResponse);
  v44 = type metadata accessor for HeuristicRoutingRequest(0);
  v45 = v58;
  (*(v60 + 16))(v59, a1 + *(v44 + 20), v58);
  v46 = OUTLINED_FUNCTION_43();
  if (v47(v46) != *MEMORY[0x1E69D02C8])
  {

    v55 = OUTLINED_FUNCTION_43();
    v56(v55);
    v35 = v27;
    v36 = 1;
LABEL_17:
    v37 = v45;
    goto LABEL_9;
  }

  v48 = OUTLINED_FUNCTION_43();
  result = v49(v48);
  v50 = 0;
  v59 = *(v43 + 16);
  v57[1] = v4 + 8;
  v57[2] = v4 + 16;
  while (1)
  {
    if (v59 == v50)
    {

      v35 = v64;
      goto LABEL_8;
    }

    if (v50 >= *(v43 + 16))
    {
      break;
    }

    v51 = v61;
    (*(v4 + 16))(v8, v43 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v50++, v61);
    type metadata accessor for NLRouterBypassUtils();
    sub_1DC305AEC();
    v53 = v52;
    (*(v4 + 8))(v8, v51);

    if (v53)
    {

      v54 = v64;
      v45 = v58;
      (*(v60 + 104))(v64, *MEMORY[0x1E69D02D8], v58);
      v35 = v54;
      v36 = 0;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC335988()
{
  result = sub_1DC33347C(&unk_1F57F75B8);
  qword_1EDAC83A0 = result;
  return result;
}

uint64_t sub_1DC3359B0()
{
  sub_1DC514D0C();
  if (!v6)
  {
    return 0;
  }

  sub_1DC5145FC();

  v0 = sub_1DC514F8C();

  v1 = sub_1DC2E4CBC(1701667182, 0xE400000000000000, v0);

  if (!v1)
  {
    return 0;
  }

  result = sub_1DC2C20B8(v1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E1296800](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v5 = sub_1DC335AE8();

    if (v5)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DC335AE8()
{
  v0 = sub_1DC51468C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  result = sub_1DC514F2C();
  v8 = result;
  v21 = *(result + 16);
  if (v21)
  {
    v9 = 0;
    v22 = result + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v23 = (v2 + 8);
    v24 = v0;
    while (v9 < *(v8 + 16))
    {
      (*(v2 + 16))(v6, v22 + *(v2 + 72) * v9, v0);
      if (_MergedGlobals_6 != -1)
      {
        swift_once();
      }

      v10 = qword_1EDAC83A0;
      v11 = sub_1DC51467C();
      v13 = v12;
      if (*(v10 + 16))
      {
        v14 = v11;
        sub_1DC5182FC();
        sub_1DC51769C();
        v15 = sub_1DC51833C();
        v16 = ~(-1 << *(v10 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(v10 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v18 = (*(v10 + 48) + 16 * v17);
          if (*v18 != v14 || v18[1] != v13)
          {
            v20 = sub_1DC51825C();
            v15 = v17 + 1;
            if ((v20 & 1) == 0)
            {
              continue;
            }
          }

          (*v23)(v6, v24);

          return 1;
        }
      }

      ++v9;
      v0 = v24;
      (*v23)(v6, v24);

      if (v9 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    return 0;
  }

  return result;
}

uint64_t sub_1DC335D54()
{
  v0 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  result = sub_1DC5111AC();
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  while (1)
  {
    v11 = v9;
    if (v10 == v9)
    {
LABEL_5:

      return v10 != v11;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    (*(v2 + 16))(v6, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v0);
    v12 = sub_1DC335EA0();
    ++v9;
    result = (*(v2 + 8))(v6, v0);
    if (v12)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC335EA0()
{
  v0 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1DC51154C();
  v14 = sub_1DC51177C();
  v15 = *(v9 + 8);
  v15(v13, v7);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v15(v13, v7);
  v16 = sub_1DC307E5C(v6);
  (*(v2 + 8))(v6, v0);
  if (!v16)
  {
    goto LABEL_13;
  }

  sub_1DC51478C();

  sub_1DC28F358(v23, v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (v22)
  {
    v17 = sub_1DC514A8C();
    if (OUTLINED_FUNCTION_5_12(v17))
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1DC28EB30(v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  sub_1DC28F358(v23, v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v22)
  {

    sub_1DC28EB30(v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_12:
    sub_1DC28EB30(v23, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_13:
    v19 = 0;
    return v19 & 1;
  }

  v18 = sub_1DC514B5C();
  if ((OUTLINED_FUNCTION_5_12(v18) & 1) == 0)
  {

    goto LABEL_12;
  }

LABEL_9:
  v19 = sub_1DC3359B0();

  sub_1DC28EB30(v23, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v19 & 1;
}

uint64_t sub_1DC336174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v114 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v119 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v100 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = &v100 - v10;
  v124 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v118 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v100 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v100 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v100 - v21;
  v23 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v117 = (v26 - v25);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v121 = v28;
  v122 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v32 = sub_1DC2BE518();
  v33 = OUTLINED_FUNCTION_130();
  v120 = v31;
  sub_1DC2A2ED0("HeuristicRules.SettingRule", 26, 2, v32, v33 & 1, v31);

  v34 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v115 = a1;
  sub_1DC28F358(a1 + v34, v19, &qword_1ECC7C158, &unk_1DC5234A0);
  v35 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v35) != 1)
  {
    sub_1DC28F358(v19, v22, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC2E5408(v19, type metadata accessor for NLRouterTurnProbingResult);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      goto LABEL_4;
    }

    sub_1DC2E53A4(v22, v117);
    v39 = type metadata accessor for HeuristicRoutingRequest(0);
    v40 = *(v118 + 16);
    v106 = *(v39 + 20);
    v41 = v124;
    v105 = v118 + 16;
    v104 = v40;
    v40(v116, v115 + v106, v124);
    sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
    v42 = sub_1DC343964();
    v44 = v43;
    if (v42 == sub_1DC312FB4(0) && v44 == v45)
    {
    }

    else
    {
      v47 = sub_1DC51825C();

      if ((v47 & 1) == 0)
      {
        v48 = sub_1DC343964();
        v50 = sub_1DC312F68(v48, v49);
        if (v50 == 4)
        {
          v51 = v112;
          __swift_storeEnumTagSinglePayload(v112, 1, 1, v41);
        }

        else
        {
          v51 = v112;
          sub_1DC312E7C(v50, v112);
          if (__swift_getEnumTagSinglePayload(v51, 1, v41) != 1)
          {
            result = (*(v118 + 32))(v111, v51, v41);
            v60 = 0;
            v61 = *v117;
            v107 = *(*v117 + 16);
            v112 = v119 + 16;
            v62 = (v119 + 8);
            v102 = (v119 + 32);
            v103 = MEMORY[0x1E69E7CC0];
            v63 = v114;
            while (v107 != v60)
            {
              if (v60 >= *(v61 + 16))
              {
                __break(1u);
LABEL_41:
                __break(1u);
                return result;
              }

              v64 = (*(v119 + 80) + 32) & ~*(v119 + 80);
              v65 = *(v119 + 72);
              (*(v119 + 16))(v8, v61 + v64 + v65 * v60, v63);
              v66 = v63;
              sub_1DC5111CC();
              if (v67 > sub_1DC343A00())
              {
                v101 = *v102;
                v101(v110, v8, v63);
                v68 = v103;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v70 = v68;
                v125 = v68;
                if (isUniquelyReferenced_nonNull_native)
                {
                  v63 = v66;
                }

                else
                {
                  sub_1DC2EBBE8(0, *(v68 + 16) + 1, 1);
                  v63 = v114;
                  v70 = v125;
                }

                v72 = *(v70 + 16);
                v71 = *(v70 + 24);
                v73 = v72 + 1;
                if (v72 >= v71 >> 1)
                {
                  v103 = v72 + 1;
                  sub_1DC2EBBE8((v71 > 1), v72 + 1, 1);
                  v73 = v103;
                  v63 = v114;
                  v70 = v125;
                }

                ++v60;
                *(v70 + 16) = v73;
                v103 = v70;
                result = (v101)(v70 + v64 + v72 * v65, v110, v63);
              }

              else
              {
                result = (*v62)(v8, v63);
                ++v60;
              }
            }

            v74 = 0;
            v75 = *(v103 + 16);
            v41 = v124;
            v76 = v118;
            v77 = v113;
            do
            {
              if (v75 == v74)
              {
                (*(v76 + 8))(v111, v41);

                goto LABEL_15;
              }

              if (v74 >= *(v103 + 16))
              {
                goto LABEL_41;
              }

              v78 = v119;
              v79 = v114;
              (*(v119 + 16))(v77, v103 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v74++, v114);
              v80 = sub_1DC335D54();
              result = (*(v78 + 8))(v77, v79);
            }

            while ((v80 & 1) == 0);

            v81 = sub_1DC517B9C();
            v82 = sub_1DC2BE518();
            v83 = v108;
            OUTLINED_FUNCTION_4_10();
            v84();
            v85 = v41;
            if (os_log_type_enabled(v82, v81))
            {
              v86 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v125 = v119;
              *v86 = 136315394;
              v87 = v116;
              swift_beginAccess();
              LODWORD(v114) = v81;
              v88 = v83;
              v89 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
              v91 = sub_1DC291244(v89, v90, &v125);

              *(v86 + 4) = v91;
              *(v86 + 12) = 2080;
              v92 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
              v94 = v93;
              v95 = *(v118 + 8);
              v95(v88, v85);
              v96 = sub_1DC291244(v92, v94, &v125);
              v76 = v118;

              *(v86 + 14) = v96;
              _os_log_impl(&dword_1DC287000, v82, v114, "[SettingRule] Updating routing from %s to %s", v86, 0x16u);
              v97 = v119;
              swift_arrayDestroy();
              MEMORY[0x1E1298840](v97, -1, -1);
              MEMORY[0x1E1298840](v86, -1, -1);
            }

            else
            {

              v95 = *(v76 + 8);
              v95(v83, v85);
              v87 = v116;
            }

            swift_beginAccess();
            v98 = v109;
            v99 = v111;
            sub_1DC32DE40();
            v95(v99, v85);
            swift_beginAccess();
            (*(v76 + 40))(v87, v98, v85);
            v41 = v85;
            goto LABEL_15;
          }
        }

        sub_1DC28EB30(v51, &qword_1ECC7CA40, &unk_1DC5233A0);
      }
    }

LABEL_15:
    v52 = v116;
    swift_beginAccess();
    v53 = sub_1DC5157DC();
    sub_1DC2E5408(v117, type metadata accessor for NLRouterNLParseResponse);
    if (v53)
    {
      v54 = 1;
      v55 = v123;
    }

    else
    {
      v55 = v123;
      OUTLINED_FUNCTION_4_10();
      v56();
      v54 = 0;
    }

    v37 = v121;
    v36 = v122;
    v38 = v120;
    v57 = v118;
    __swift_storeEnumTagSinglePayload(v55, v54, 1, v41);
    (*(v57 + 8))(v52, v41);
    goto LABEL_19;
  }

  sub_1DC28EB30(v19, &qword_1ECC7C158, &unk_1DC5234A0);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
LABEL_4:
  sub_1DC28EB30(v22, &qword_1ECC7C160, qword_1DC5233B0);
  __swift_storeEnumTagSinglePayload(v123, 1, 1, v124);
  v37 = v121;
  v36 = v122;
  v38 = v120;
LABEL_19:
  v58 = sub_1DC2BE518();
  sub_1DC2B8848(v38, "HeuristicRules.SettingRule", 26, 2, v58);

  return (*(v37 + 8))(v38, v36);
}

void *sub_1DC336DEC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation18ServiceStoreHasher_storedHasher;
  swift_beginAccess();
  return memcpy(a1, (v1 + v3), 0x48uLL);
}

void *sub_1DC336E48(const void *a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation18ServiceStoreHasher_storedHasher;
  swift_beginAccess();
  return memcpy((v1 + v3), a1, 0x48uLL);
}

uint64_t (*sub_1DC336F74(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))();
  return sub_1DC337000;
}

void sub_1DC337000(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DC33704C(const void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v6);
  memcpy(v4, a1, 0x48uLL);
  return v3(v6, 0);
}

id sub_1DC3370E0(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR____TtC13CDMFoundation18ServiceStoreHasher_storedHasher], a1, 0x48uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1DC337210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC13CDMFoundation24GraphServiceKeyingFields_serviceTypeName];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = OBJC_IVAR____TtC13CDMFoundation24GraphServiceKeyingFields_locale;
  v7 = sub_1DC510C8C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a3, v7);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for GraphServiceKeyingFields(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a3, v7);
  return v9;
}

uint64_t type metadata accessor for GraphServiceKeyingFields(uint64_t a1)
{
  result = qword_1ECC86C50;
  if (!qword_1ECC86C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DC337398(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DC337458(uint64_t a1)
{
  result = sub_1DC510C8C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DC3374F4()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F738);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F738);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000011;
  v2[3] = 0x80000001DC53FC90;
  v2[4] = 0xD000000000000012;
  v2[5] = 0x80000001DC524630;
  *v1 = v2;
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 104);

  return v4(v1);
}

uint64_t sub_1DC3375CC(uint64_t a1)
{
  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  (*(v2 + 8))(a1);
  return 1;
}

uint64_t sub_1DC337624@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C60 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ECC86C60);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F738);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC3376B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3375CC(a1);
  *a2 = 1;
  return result;
}

id sub_1DC3376F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression;
  v3 = *(v0 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_templatePattern);
    v6 = *(v1 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_templatePattern + 8);
    objc_allocWithZone(MEMORY[0x1E696AE70]);

    v4 = sub_1DC333108(v5, v6, 0);
    v7 = *(v1 + v2);
    *(v1 + v2) = v4;
    v8 = v4;
    sub_1DC33A01C(v7);
  }

  sub_1DC33A658(v3);
  return v4;
}

id CDMCcqrAerCbROverridesProxy.init(useTrie:useMemory:templatePattern:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_defaultTemplatePattern);
  *v5 = 0x292B535C28245CLL;
  v5[1] = 0xE700000000000000;
  *(v4 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression) = 1;
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0x292B535C28245CLL;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = (v4 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_templatePattern);
  *v8 = v6;
  v8[1] = v7;
  return SiriNLUOverrideProxy.init(useTrie:useMemory:)();
}

uint64_t sub_1DC337998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBE8, &qword_1DC524670);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v153 - v11;
  v12 = sub_1DC5163EC();
  OUTLINED_FUNCTION_0();
  v169 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = (v16 - v15);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBF0, &qword_1DC524678);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  v168 = (&v153 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBF8, &qword_1DC524680);
  v21 = OUTLINED_FUNCTION_10(v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v178 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v153 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v153 - v28;
  v30 = sub_1DC5163CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  if (!a4)
  {
    goto LABEL_4;
  }

  v164 = v35;
  v165 = v32;
  sub_1DC33897C(a3, v29);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_1DC28EB30(v29, &qword_1ECC7CC00, &qword_1DC524688);
LABEL_4:
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v36 = sub_1DC456868();
    v37 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v37, v38, v39, v40, 50, 2);

    return OUTLINED_FUNCTION_43();
  }

  v175 = v25;
  v160 = a4;
  v176 = v12;
  v177 = v17;
  v41 = v165;
  v42 = *(v165 + 32);
  v183 = v4;
  v42(v164, v29, v30);
  v192 = a1;
  v193 = a2;

  v43 = sub_1DC517B9C();
  v44 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v45 = sub_1DC456868();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v46 = swift_allocObject();
  v155 = xmmword_1DC522F20;
  *(v46 + 16) = xmmword_1DC522F20;
  v47 = v30;
  v48 = v192;
  v49 = v193;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  v154 = sub_1DC2C0FA4(v46, v50, v51);
  *(v46 + 64) = v154;
  *(v46 + 32) = v48;
  *(v46 + 40) = v49;

  sub_1DC516F0C(v43, &dword_1DC287000, v45, "CCQR component override utterance %@", 36, 2, v46);

  type metadata accessor for _NSRange(0);
  v191 = sub_1DC51764C();
  v52 = sub_1DC3376F8();
  if (!v52)
  {
    sub_1DC517BAC();
    v130 = sub_1DC456868();
    v131 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v131, v132, v133, v134, 57, 2);

    (*(v41 + 8))(v164, v47);

    goto LABEL_58;
  }

  v174 = v44;
  v159 = v47;
  v53 = v52;

  v54 = sub_1DC5176FC();

  v190 = 15;
  aBlock = v192;
  v185 = v193;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAE8, &unk_1DC5240C0);
  v55 = sub_1DC339204();
  sub_1DC2A32B0(v55, v56, v57);
  v58 = sub_1DC517D5C();
  v60 = v59;
  v61 = swift_allocObject();
  *(v61 + 16) = &v192;
  *(v61 + 24) = &v191;
  v62 = swift_allocObject();
  *(v62 + 2) = sub_1DC339268;
  *(v62 + 3) = v61;
  v158 = v61;
  v188 = sub_1DC339444;
  v189 = v62;
  aBlock = MEMORY[0x1E69E9820];
  v185 = 1107296256;
  v186 = sub_1DC338A00;
  v187 = &block_descriptor_2;
  v63 = _Block_copy(&aBlock);

  v157 = v53;
  [v53 enumerateMatchesInString:v54 options:0 range:v58 usingBlock:{v60, v63}];

  _Block_release(v63);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  v64 = v177;
  if ((v54 & 1) == 0)
  {
    v166 = sub_1DC51764C();
    v65 = sub_1DC5163AC();
    v167 = v169 + 16;
    v172 = (v169 + 32);
    v171 = (v169 + 8);
    v66 = v176;
    OUTLINED_FUNCTION_9_8();
    *(v70 - 256) = v69;
    v170 = v67;
LABEL_8:
    if (v68 == v67)
    {
      v71 = 1;
      v181 = v67;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v53, v71, 1, v62);
      v77 = v175;
      sub_1DC33946C(v53, v175, &qword_1ECC7CBF8, &qword_1DC524680);
      if (__swift_getEnumTagSinglePayload(v77, 1, v62) != 1)
      {
        v173 = *v77;
        (*v172)(v64, &v77[v62[12]], v66);
        sub_1DC5163DC();
        v78 = sub_1DC51640C();
        if (__swift_getEnumTagSinglePayload(v63, 1, v78) == 1)
        {
          sub_1DC28EB30(v63, &qword_1ECC7CBE8, &qword_1DC524670);
          v79 = 0;
        }

        else
        {
          v79 = sub_1DC5163FC();
          (*(*(v78 - 8) + 8))(v63, v78);
        }

        v80 = v191 + 64;
        v81 = 1 << *(v191 + 32);
        if (v81 < 64)
        {
          v82 = ~(-1 << v81);
        }

        else
        {
          v82 = -1;
        }

        v83 = v82 & *(v191 + 64);
        v84 = (v81 + 63) >> 6;
        v182 = v191;

        v63 = 0;
        while (1)
        {
          do
          {
            if (!v83)
            {
              while (1)
              {
                v86 = v63 + 1;
                if (__OFADD__(v63, 1))
                {
                  break;
                }

                if (v86 >= v84)
                {
                  v66 = v176;
                  v64 = v177;
                  (*v171)(v177, v176);

                  OUTLINED_FUNCTION_9_8();
                  v65 = *(v111 - 256);
                  v67 = v170;
                  v68 = v181;
                  goto LABEL_8;
                }

                v85 = *(v80 + 8 * v86);
                ++v63;
                if (v85)
                {
                  v63 = v86;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_54:

              goto LABEL_55;
            }

            v85 = v83;
LABEL_26:
            v83 = (v85 - 1) & v85;
          }

          while (!v79);
          v183 = (v85 - 1) & v85;
          v87 = (*(v182 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v85)))));
          v53 = *v87;
          v88 = v87[1];

          v64 = v79;
          v89 = v79;
          v90 = sub_1DC5176FC();
          v62 = [v89 rangeWithName_];
          v92 = v91;

          if (v62 == sub_1DC51068C())
          {

            v79 = v64;
            goto LABEL_29;
          }

          v163 = v53;
          if (v166[2])
          {

            sub_1DC2AEB04(v163, v88);
            v94 = v93;

            if (v94)
            {

              sub_1DC517BAC();
              v146 = sub_1DC456868();
              v147 = swift_allocObject();
              *(v147 + 16) = v155;
              v148 = v154;
              *(v147 + 56) = MEMORY[0x1E69E6158];
              *(v147 + 64) = v148;
              *(v147 + 32) = v163;
              *(v147 + 40) = v88;
              v149 = OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C(v149, v150, v151, v152, 92, 2, v147);

              (*v171)(v177, v176);
              goto LABEL_57;
            }
          }

          if ((v173 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v173 >= *(v160 + 16))
          {
            goto LABEL_65;
          }

          sub_1DC51231C();
          sub_1DC51230C();
          v95 = sub_1DC5176FC();

          v96 = [v95 substringWithRange_];

          v162 = sub_1DC51772C();
          v98 = v97;

          v99 = v166;
          swift_isUniquelyReferenced_nonNull_native();
          aBlock = v99;
          v100 = sub_1DC2AEB04(v163, v88);
          if (__OFADD__(v99[2], (v101 & 1) == 0))
          {
            goto LABEL_66;
          }

          v102 = v100;
          v161 = v98;
          v53 = v101;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
          if (sub_1DC517FFC())
          {
            v62 = v163;
            v103 = sub_1DC2AEB04(v163, v88);
            if ((v53 & 1) != (v104 & 1))
            {
              goto LABEL_69;
            }

            v102 = v103;
            v79 = v64;
            if (v53)
            {
LABEL_41:

              v166 = aBlock;
              OUTLINED_FUNCTION_6_11((aBlock[7] + 16 * v102));

              goto LABEL_29;
            }
          }

          else
          {
            v79 = v64;
            v62 = v163;
            if (v53)
            {
              goto LABEL_41;
            }
          }

          v105 = aBlock;
          aBlock[(v102 >> 6) + 8] |= 1 << v102;
          v106 = (v105[6] + 16 * v102);
          *v106 = v62;
          v106[1] = v88;
          OUTLINED_FUNCTION_6_11((v105[7] + 16 * v102));
          v108 = v107[2];
          v109 = __OFADD__(v108, 1);
          v110 = v108 + 1;
          if (v109)
          {
            goto LABEL_68;
          }

          v166 = v107;
          v107[2] = v110;
LABEL_29:
          v83 = v183;
        }
      }

      if (v166[2] == *(v191 + 16))
      {

        aBlock = sub_1DC339534(v112);
        sub_1DC3394C8(&aBlock);

        v113 = 0;
        v114 = aBlock;
        v115 = aBlock[2];
        v64 = (aBlock + 7);
        while (v115 != v113)
        {
          if (v113 >= v114[2])
          {
            goto LABEL_63;
          }

          v116 = *(v64 - 3);
          v117 = *(v64 - 2);

          sub_1DC517B5C();
          v119 = v118;
          v120 = v166;

          if ((v119 & 1) != 0 || !v120[2])
          {
            goto LABEL_54;
          }

          v121 = sub_1DC2AEB04(v116, v117);
          v123 = v122;

          if ((v123 & 1) == 0)
          {
LABEL_55:

            sub_1DC517BAC();
            v135 = sub_1DC456868();
            v136 = OUTLINED_FUNCTION_40_1();
            v140 = 50;
            goto LABEL_56;
          }

          v127 = (v120[7] + 16 * v121);
          v129 = *v127;
          v128 = v127[1];
          aBlock = v129;
          v185 = v128;
          sub_1DC3395F0(v124, v125, v126);
          sub_1DC5177CC();
          v64 += 32;
          ++v113;
        }

        v144 = OUTLINED_FUNCTION_5_13();
        v145(v144);

        return OUTLINED_FUNCTION_43();
      }

      sub_1DC517BAC();
      v135 = sub_1DC456868();
      v136 = OUTLINED_FUNCTION_40_1();
      v140 = 139;
LABEL_56:
      sub_1DC516F0C(v136, v137, v138, v139, v140, 2);

LABEL_57:
      v141 = OUTLINED_FUNCTION_5_13();
      v142(v141);

LABEL_58:

      return OUTLINED_FUNCTION_43();
    }

    if (v68 < *(v65 + 16))
    {
      v72 = v68 + 1;
      v73 = v169;
      v74 = v65 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v68;
      v75 = v62[12];
      v76 = v168;
      *v168 = v68;
      (*(v73 + 16))(v76 + v75, v74, v66);
      sub_1DC33946C(v76, v53, &qword_1ECC7CBF0, &qword_1DC524678);
      v71 = 0;
      v181 = v72;
      goto LABEL_12;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  sub_1DC51829C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DC33897C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DC338A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_1DC338A74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC10, &qword_1DC524698);
  sub_1DC517BFC();
  return v3;
}

uint64_t sub_1DC338AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  v53[0] = sub_1DC511BDC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1DC511BCC();
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x90))(v17);
  if (!v19)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v43 = sub_1DC456868();
    v44 = OUTLINED_FUNCTION_40_1();
    v48 = 25;
LABEL_7:
    sub_1DC516F0C(v44, v45, v46, v47, v48, 2);

    v42 = 0;
    v34 = v53[0];
    goto LABEL_8;
  }

  sub_1DC338F3C(v19, v10);

  v21 = (*((*v18 & *a1) + 0xA8))(v20);
  v22 = (*((*v18 & *a1) + 0x150))(a2, a3, v10, v21);
  v24 = v23;

  sub_1DC28EB30(v10, &qword_1ECC7CC00, &qword_1DC524688);
  if (!v24)
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v43 = sub_1DC456868();
    v44 = OUTLINED_FUNCTION_40_1();
    v48 = 40;
    goto LABEL_7;
  }

  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v25 = sub_1DC456868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DC522F20;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1DC2C0FA4(v26, v27, v28);
  *(v26 + 32) = v22;
  *(v26 + 40) = v24;

  v29 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v29, v30, v31, v32, 49, 2, v26);

  sub_1DC511BBC();
  sub_1DC511BAC();
  sub_1DC33A1CC();
  v34 = v53[0];
  v33 = v53[1];
  v35 = sub_1DC51678C();
  if (v33)
  {
    sub_1DC517BAC();
    v37 = sub_1DC456868();
    v38 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v38, v39, v40, v41, 65, 2);

    v42 = 0;
  }

  else
  {
    v50 = v35;
    v51 = v36;
    v52 = objc_allocWithZone(MEMORY[0x1E69D1368]);
    v42 = sub_1DC339190(v50, v51);
  }

LABEL_8:
  result = (*(v12 + 8))(v16, v34);
  *v54 = v42;
  return result;
}

uint64_t sub_1DC338F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC5163CC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1DC3390A0()
{

  v1 = *(v0 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression);

  sub_1DC33A01C(v1);
}

id CDMCcqrAerCbROverridesProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMCcqrAerCbROverridesProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DC339190(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1DC5109EC();
    sub_1DC301FE0(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

unint64_t sub_1DC339204()
{
  result = qword_1ECC7CAF0;
  if (!qword_1ECC7CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7CAE8, &unk_1DC5240C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CAF0);
  }

  return result;
}

void sub_1DC339268(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 24);
    v20 = a1;
    if ([v20 numberOfRanges] == 2)
    {
      v3 = [v20 rangeAtIndex_];
      v5 = v4;
      v6 = [v20 rangeAtIndex_];
      v8 = v7;

      v9 = sub_1DC5176FC();

      v10 = [v9 substringWithRange_];

      v11 = sub_1DC51772C();
      v13 = v12;

      if (sub_1DC51783C() > 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v2;
        sub_1DC33A224(v3, v5, v11, v13, isUniquelyReferenced_nonNull_native);
        *v2 = v21;

        return;
      }

      sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v15 = sub_1DC456868();
      v16 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v16, v17, v18, v19, 68, 2);
    }
  }
}

uint64_t sub_1DC33946C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC3394C8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DC33A514(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1DC3396C0(v5);
  *a1 = v2;
  return result;
}

void *sub_1DC339534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DC339644(*(a1 + 16), 0);
  v4 = sub_1DC33A3B0(&v6, (v3 + 4), v1, a1);

  sub_1DC30D8A4();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1DC3395F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CC08;
  if (!qword_1ECC7CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CC08);
  }

  return result;
}

void *sub_1DC339644(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC30, &qword_1DC524738);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

uint64_t sub_1DC3396C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DC51822C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC38, &unk_1DC524740);
        v6 = sub_1DC517A4C();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1DC33983C(v7, v8, a1, v4);
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
    return sub_1DC3397C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DC3397C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 + 16) >= v7)
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
        v12 = *(v9 + 56);
        v13 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v13;
        *v9 = v10;
        *(v9 + 8) = v11;
        *(v9 + 16) = v7;
        *(v9 + 24) = v12;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
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

uint64_t sub_1DC33983C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = result;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 16);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 80);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 16;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = *(v24 + 1);
                v29 = *v25;
                *v24 = *(v25 - 1);
                *(v24 + 1) = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
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
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 32;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 + 16) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                v38 = *(v35 + 56);
                v39 = *(v35 + 16);
                *(v35 + 32) = *v35;
                *(v35 + 48) = v39;
                *v35 = v36;
                *(v35 + 8) = v37;
                *(v35 + 16) = v33;
                *(v35 + 24) = v38;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
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

      result = swift_isUniquelyReferenced_nonNull_native();
      v87 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v42 = *(v8 + 16);
      v41 = *(v8 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        result = sub_1DC30B0C0((v41 > 1), v42 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v43;
      v44 = v8 + 32;
      v45 = (v8 + 32 + 16 * v42);
      *v45 = v7;
      v45[1] = v9;
      v88 = *v86;
      if (!*v86)
      {
        goto LABEL_114;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = (v44 + 16 * (v43 - 1));
          v48 = (v8 + 16 * v43);
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = *(v8 + 32);
            v50 = *(v8 + 40);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_56:
            if (v52)
            {
              goto LABEL_96;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_99;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_104;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v43 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v43 < 2)
          {
            goto LABEL_98;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_71:
          if (v67)
          {
            goto LABEL_101;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_103;
          }

          if (v74 < v66)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v46 - 1 >= v43)
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

          v78 = (v44 + 16 * (v46 - 1));
          v79 = *v78;
          v80 = (v44 + 16 * v46);
          v81 = v80[1];
          result = sub_1DC339E58((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v88);
          if (v5)
          {
          }

          if (v81 < v79)
          {
            goto LABEL_91;
          }

          v82 = v8;
          v83 = *(v8 + 16);
          if (v46 > v83)
          {
            goto LABEL_92;
          }

          *v78 = v79;
          v78[1] = v81;
          if (v46 >= v83)
          {
            goto LABEL_93;
          }

          v43 = v83 - 1;
          result = memmove((v44 + 16 * v46), v80 + 2, 16 * (v83 - 1 - v46));
          *(v82 + 16) = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_85;
          }
        }

        v53 = v44 + 16 * v43;
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_94;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_95;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_97;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_100;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_105;
          }

          if (v51 < v77)
          {
            v46 = v43 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*v86)
  {
    goto LABEL_115;
  }

  sub_1DC339D2C(&v90, *v86, a3);
}

uint64_t sub_1DC339D2C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DC30D6B0(v5);
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
    sub_1DC339E58((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
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

uint64_t sub_1DC339E58(char *__src, char *__dst, char *a3, char *a4)
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
        goto LABEL_38;
      }

      if (*(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 32;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 32;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 32;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_25:
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v6 - 2) < *(v11 - 2))
    {
      v19 = v6 - 32;
      v14 = v5 + 32 == v6;
      v6 -= 32;
      if (!v14)
      {
        v20 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 32)
    {
      v18 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v18;
    }

    v11 -= 32;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

void sub_1DC33A01C(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1DC33A180(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1DC33A1CC()
{
  result = qword_1ECC7CC28;
  if (!qword_1ECC7CC28)
  {
    sub_1DC511BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CC28);
  }

  return result;
}

uint64_t sub_1DC33A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1DC2AEB04(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC40, qword_1DC524750);
  result = sub_1DC517FFC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1DC2AEB04(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1DC33A364(v14, a3, a4, a1, a2, v18);
  }

  return result;
}

unint64_t sub_1DC33A364(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_1DC33A3B0(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = (v15 << 10) | (16 * v16);
      v18 = (*(a4 + 48) + v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + v17);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 32;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DC33A528(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC30, &qword_1DC524738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC38, &unk_1DC524740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1DC33A658(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DC33A678()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F750);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD00000000000001CLL;
  v4[5] = 0x80000001DC524790;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC33A74C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v62 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v62 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  v18 = sub_1DC5172FC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86C68 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1ECC86C68);
  }

  __swift_project_value_buffer(v18, qword_1ECC8F750);
  v22 = sub_1DC5172DC();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v23 = sub_1DC5171EC();
    sub_1DC30F668(0xD000000000000012, 0x80000001DC540100, v23, v17);

    v24 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v17);
    if (v25)
    {
      sub_1DC30F72C(v17);
      v26 = v65;
    }

    else
    {
      sub_1DC382AC0();
      v64 = v39;
      v41 = v40;
      OUTLINED_FUNCTION_1_10();
      (*(v42 + 8))(v17, v24);
      v26 = v65;
      v63 = v41;
      if (v41)
      {
LABEL_10:
        v43 = sub_1DC5171EC();
        sub_1DC30F668(0x446C617669727261, 0xEF656D6954657461, v43, v15);

        OUTLINED_FUNCTION_3_3(v15);
        if (v25)
        {
          sub_1DC30F72C(v15);
        }

        else
        {
          sub_1DC382AC0();
          v65 = v44;
          v46 = v45;
          OUTLINED_FUNCTION_1_10();
          (*(v47 + 8))(v15, v24);
          v62 = v46;
          if (v46)
          {
LABEL_15:
            v48 = sub_1DC5171EC();
            sub_1DC30F668(0xD000000000000014, 0x80000001DC540120, v48, v12);

            OUTLINED_FUNCTION_3_3(v12);
            if (v25)
            {
              sub_1DC30F72C(v12);
            }

            else
            {
              sub_1DC382AC0();
              v31 = v49;
              v32 = v50;
              OUTLINED_FUNCTION_1_10();
              (*(v51 + 8))(v12, v24);
              if (v32)
              {
LABEL_20:
                v52 = sub_1DC5171EC();
                sub_1DC30F668(0xD000000000000011, 0x80000001DC540140, v52, v9);

                OUTLINED_FUNCTION_3_3(v9);
                if (v25)
                {
                  sub_1DC30F72C(v9);
                }

                else
                {
                  sub_1DC382AC0();
                  v33 = v53;
                  v34 = v54;
                  OUTLINED_FUNCTION_1_10();
                  (*(v55 + 8))(v9, v24);
                  if (v34)
                  {
LABEL_25:
                    v56 = sub_1DC5171EC();
                    sub_1DC30F668(0x65676E6573736170, 0xEE0073656D614E72, v56, v26);

                    OUTLINED_FUNCTION_3_3(v26);
                    if (v25)
                    {
                      sub_1DC30F72C(v26);
                    }

                    else
                    {
                      sub_1DC382748();
                      v29 = v57;
                      v30 = v58;
                      OUTLINED_FUNCTION_1_10();
                      (*(v59 + 8))(v26, v24);
                      if (v30)
                      {
                        sub_1DC51721C();
                        OUTLINED_FUNCTION_7_1();
                        result = (*(v60 + 8))(a1);
LABEL_31:
                        v36 = v63;
                        v35 = v64;
                        v37 = v65;
                        v38 = v62;
                        goto LABEL_32;
                      }
                    }

                    sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1();
                    (*(v61 + 8))(a1);

                    v29 = 0;
                    v30 = 0xE000000000000000;
                    goto LABEL_31;
                  }
                }

                v33 = 0;
                v34 = 0xE000000000000000;
                goto LABEL_25;
              }
            }

            v31 = 0;
            v32 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v65 = 0;
        v62 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v63 = 0xE000000000000000;
    v64 = 0;
    goto LABEL_10;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v27 + 8))(a1);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
LABEL_32:
  *a2 = v29;
  a2[1] = v30;
  a2[2] = v31;
  a2[3] = v32;
  a2[4] = v33;
  a2[5] = v34;
  a2[6] = v35;
  a2[7] = v36;
  a2[8] = v37;
  a2[9] = v38;
  return result;
}

uint64_t sub_1DC33AD74()
{
  v1 = v0;
  sub_1DC517F4C();
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000010);
  MEMORY[0x1E1296160](*v1, v1[1]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[2], v1[3]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[4], v1[5]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[6], v1[7]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[8], v1[9]);
  return 0;
}

uint64_t sub_1DC33AE88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C68 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1ECC86C68);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F750);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC33AF68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC33AFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC33B00C()
{
  result = sub_1DC33C87C(&unk_1F57F78A8);
  qword_1ECC8F610 = result;
  return result;
}

uint64_t sub_1DC33B034(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (qword_1ECC82DB0 != -1)
    {
      OUTLINED_FUNCTION_1_11(&qword_1ECC82DB0);
    }

    v3 = qword_1ECC8F610;
    swift_bridgeObjectRetain_n();

    while (1)
    {
      v4 = sub_1DC5178DC();
      if (!v5)
      {
        break;
      }

      v6 = v4;
      v7 = v5;
      if (*(v3 + 16))
      {
        sub_1DC5182FC();
        sub_1DC51769C();
        v8 = sub_1DC51833C();
        v9 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v10 = v8 & v9;
          if (((*(v3 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
          {
            break;
          }

          v11 = (*(v3 + 48) + 16 * v10);
          if (*v11 != v6 || v7 != v11[1])
          {
            v13 = sub_1DC51825C();
            v8 = v10 + 1;
            if ((v13 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_16;
        }
      }

      MEMORY[0x1E1296150](v6, v7);
LABEL_16:
    }

    return 0;
  }

  return a1;
}

void AFSpeechRecognition.toNLXAsrHypotheses()()
{
  v1 = v0;
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v135 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v123 - v9;
  v11 = sub_1DC510F3C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v134 = v16 - v15;
  v139 = sub_1DC51141C();
  OUTLINED_FUNCTION_0();
  v137 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  v150 = v123 - v20;
  v153 = sub_1DC511D2C();
  OUTLINED_FUNCTION_0();
  v147 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v123 - v24;
  v26 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  v160 = v123 - v35;
  v36 = sub_1DC33CA00(v1, &selRef_utterances, &qword_1ECC7B990, 0x1E698D250);
  if (!v36)
  {
    goto LABEL_115;
  }

  v145 = v36;
  v170 = sub_1DC33CA00(v1, &selRef_phrases, &qword_1ECC7B9B8, 0x1E698D230);
  if (!v170)
  {

LABEL_115:
    v119 = sub_1DC28D414();
    (*(v28 + 16))(v32, v119, v26);
    v120 = sub_1DC516F6C();
    v121 = sub_1DC517B9C();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_1DC287000, v120, v121, "AFSpeechRecognition utterances/phrases is nil", v122, 2u);
      MEMORY[0x1E1298840](v122, -1, -1);
    }

    (*(v28 + 8))(v32, v26);
    return;
  }

  v37 = v145;
  v149 = sub_1DC2C20B8(v145);
  if (!v149)
  {
    goto LABEL_111;
  }

  v148 = v37 & 0xC000000000000001;
  v133 = v37 & 0xFFFFFFFFFFFFFF8;
  v132 = v37 + 32;
  v38 = v170 & 0xFFFFFFFFFFFFFF8;
  v169 = v170 & 0xFFFFFFFFFFFFFF8;
  if (v170 < 0)
  {
    v38 = v170;
  }

  v123[1] = v38;
  v165 = v170 & 0xC000000000000001;
  v156 = (v28 + 8);
  v157 = (v28 + 16);
  v144 = v147 + 16;
  v143 = v147 + 8;
  v142 = v147 + 32;
  v129 = v4 + 8;
  v125 = v13 + 32;
  v39 = 0;
  v128 = v137 + 16;
  v127 = v137 + 8;
  v126 = v137 + 32;
  v146 = MEMORY[0x1E69E7CC0];
  v151 = v26;
  v40 = v136;
  v131 = v10;
  v130 = v11;
LABEL_7:
  if (v148)
  {
    v41 = MEMORY[0x1E1296800](v39, v145);
  }

  else
  {
    if (v39 >= *(v133 + 16))
    {
      goto LABEL_135;
    }

    v41 = *(v132 + 8 * v39);
  }

  v42 = __OFADD__(v39, 1);
  v43 = v39 + 1;
  if (v42)
  {
    goto LABEL_124;
  }

  v159 = v41;
  v44 = sub_1DC33CA00(v41, &selRef_interpretationIndices, &qword_1ECC7B920, 0x1E696AD98);
  v155 = v43;
  if (!v44)
  {
    goto LABEL_97;
  }

  v45 = v44;
  v168 = v44 >> 62;
  if (v44 >> 62)
  {
    v46 = sub_1DC51802C();
  }

  else
  {
    v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v170 >> 62)
  {
    v47 = sub_1DC51802C();
  }

  else
  {
    v47 = *(v169 + 16);
  }

  if (v46 != v47)
  {

LABEL_97:
    v102 = sub_1DC28D414();
    (*v157)(v40, v102, v26);
    v103 = sub_1DC516F6C();
    v104 = sub_1DC517B9C();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_1DC287000, v103, v104, "Phrase length is not the same as interpretationIndices.", v105, 2u);
      MEMORY[0x1E1298840](v105, -1, -1);
    }

    (*v156)(v40, v26);
    goto LABEL_110;
  }

  v171 = 0;
  v172 = 0xE000000000000000;
  v48 = sub_1DC2C20B8(v170);
  v158 = 0;
  v49 = 0;
  v50 = v45 & 0xFFFFFFFFFFFFFF8;
  if (v45 < 0)
  {
    v51 = v45;
  }

  else
  {
    v51 = v45 & 0xFFFFFFFFFFFFFF8;
  }

  v161 = v51;
  v166 = v45 & 0xC000000000000001;
  v167 = -v48;
  v162 = MEMORY[0x1E69E7CC0];
  v163 = v45 & 0xFFFFFFFFFFFFFF8;
  v164 = v45;
LABEL_22:
  for (i = v49 + 4; ; ++i)
  {
    if (v167 + i == 4)
    {
      goto LABEL_101;
    }

    v53 = i - 4;
    if (v165)
    {
      v54 = MEMORY[0x1E1296800](i - 4, v170);
    }

    else
    {
      if (v53 >= *(v169 + 16))
      {
        goto LABEL_120;
      }

      v54 = *(v170 + 8 * i);
    }

    v55 = v54;
    v49 = i - 3;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v168)
    {
      v56 = sub_1DC51802C();
    }

    else
    {
      v56 = *(v50 + 16);
    }

    if (v53 == v56)
    {

LABEL_101:

      sub_1DC51140C();
      sub_1DC33C444(v171, v172);
      sub_1DC5113FC();
      [v159 confidenceScore];
      sub_1DC5113BC();
      sub_1DC51100C();
      v106 = v135;
      sub_1DC510B5C();
      v107 = v131;
      sub_1DC5138EC();
      OUTLINED_FUNCTION_37();
      v108(v106, v2);
      v109 = v130;
      if (__swift_getEnumTagSinglePayload(v107, 1, v130) == 1)
      {
        sub_1DC510F2C();
        if (__swift_getEnumTagSinglePayload(v107, 1, v109) != 1)
        {
          sub_1DC33CAD4(v107);
        }
      }

      else
      {
        OUTLINED_FUNCTION_37();
        v110(v134, v107, v109);
      }

      v111 = v150;
      sub_1DC5113CC();
      OUTLINED_FUNCTION_37();
      v112(v138, v111, v139);
      v113 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_1DC33C5A8(0, v113[2] + 1, 1, v113, &qword_1ECC7CC48, &unk_1DC5283C0, MEMORY[0x1E69D0A28], MEMORY[0x1E69D0A28]);
      }

      v146 = v113;
      v115 = v113[2];
      v114 = v113[3];
      if (v115 >= v114 >> 1)
      {
        v146 = sub_1DC33C5A8((v114 > 1), v115 + 1, 1, v146, &qword_1ECC7CC48, &unk_1DC5283C0, MEMORY[0x1E69D0A28], MEMORY[0x1E69D0A28]);
      }

      v116 = v137;
      v117 = v139;
      (*(v137 + 8))(v150, v139);
      v118 = v146;
      v146[2] = v115 + 1;
      (*(v116 + 32))(v118 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v115, v138, v117);
      v40 = v136;
LABEL_110:
      v39 = v155;
      if (v155 == v149)
      {
LABEL_111:

        return;
      }

      goto LABEL_7;
    }

    if (v166)
    {
      v57 = MEMORY[0x1E1296800](i - 4, v45);
    }

    else
    {
      if (v53 >= *(v50 + 16))
      {
        goto LABEL_121;
      }

      v57 = *(v45 + 8 * i);
    }

    v58 = v57;
    v59 = sub_1DC33CA00(v55, &selRef_interpretations, &qword_1ECC7B950, 0x1E698D220);
    if (!v59)
    {

      continue;
    }

    v60 = v59;
    v61 = [v58 integerValue];
    if (v60 >> 62)
    {
      v62 = sub_1DC51802C();
    }

    else
    {
      v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v61 < v62)
    {
      v63 = [v58 integerValue];
      if ((v60 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1E1296800](v63, v60);
      }

      else
      {
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        if (v63 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_123;
        }

        v64 = *(v60 + 8 * v63 + 32);
      }

      v65 = v64;

      v66 = sub_1DC33CA00(v65, &selRef_tokens, &qword_1ECC7B9C0, 0x1E698D248);
      v67 = v65;
      v50 = v163;
      v45 = v164;
      if (!v66)
      {

        goto LABEL_53;
      }

      v68 = v66;
      v154 = v67;
      if (!(v66 >> 62))
      {
        v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v69)
        {
          goto LABEL_60;
        }

LABEL_46:

LABEL_53:
        v26 = v151;
        continue;
      }

      v69 = sub_1DC51802C();
      if (!v69)
      {
        goto LABEL_46;
      }

LABEL_60:
      v124 = v2;
      if (v69 < 1)
      {
        goto LABEL_137;
      }

      v75 = 0;
      v141 = v68 & 0xC000000000000001;
      v140 = v69;
      while (2)
      {
        if (v141)
        {
          v76 = MEMORY[0x1E1296800](v75, v68);
        }

        else
        {
          v76 = *(v68 + 8 * v75 + 32);
        }

        v77 = v76;
        sub_1DC511D1C();
        [v77 removeSpaceBefore];
        sub_1DC511CDC();
        if (sub_1DC511CCC())
        {
          v78 = sub_1DC33C35C(v171, v172);
          if (v79)
          {
            v80 = v78 == 32 && v79 == 0xE100000000000000;
            if (v80)
            {
            }

            else
            {
              v81 = sub_1DC51825C();

              if ((v81 & 1) == 0)
              {
                goto LABEL_76;
              }
            }

            if (!v158)
            {
              goto LABEL_136;
            }

            --v158;
            sub_1DC33C3DC(v82);
          }
        }

LABEL_76:
        v83 = sub_1DC33CA74(v77, &selRef_text);
        sub_1DC33B034(v83, v84);

        sub_1DC511C3C();
        v85 = sub_1DC511C2C();
        MEMORY[0x1E1296160](v85);

        sub_1DC33CA74(v77, &selRef_phoneSequence);
        sub_1DC511C6C();
        sub_1DC33CA74(v77, &selRef_ipaPhoneSequence);
        sub_1DC511C9C();
        [v77 removeSpaceAfter];
        sub_1DC511CBC();
        sub_1DC511CAC();
        sub_1DC511C5C();
        [v77 confidenceScore];
        sub_1DC511C7C();
        sub_1DC511C1C();
        v86 = sub_1DC511C0C();
        v87 = sub_1DC511C2C();
        v88 = MEMORY[0x1E12961D0](v87);

        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_125;
        }

        if (HIDWORD(v88))
        {
          goto LABEL_126;
        }

        if (__CFADD__(v86, v88))
        {
          goto LABEL_127;
        }

        sub_1DC511D0C();
        v89 = sub_1DC511CFC();
        if (sub_1DC511C4C())
        {
          if (__CFADD__(v89++, 1))
          {
            goto LABEL_134;
          }

          MEMORY[0x1E1296160](32, 0xE100000000000000);
        }

        [v77 startTime];
        v92 = OUTLINED_FUNCTION_6_12(v91);
        if (!(v93 ^ v42 | v80))
        {
          goto LABEL_128;
        }

        if (v92 <= -2147483650.0)
        {
          goto LABEL_129;
        }

        if (v92 >= 2147483650.0)
        {
          goto LABEL_130;
        }

        sub_1DC511CEC();
        [v77 endTime];
        v95 = OUTLINED_FUNCTION_6_12(v94);
        if (!(v93 ^ v42 | v80))
        {
          goto LABEL_131;
        }

        if (v95 <= -2147483650.0)
        {
          goto LABEL_132;
        }

        if (v95 >= 2147483650.0)
        {
          goto LABEL_133;
        }

        sub_1DC511C8C();
        OUTLINED_FUNCTION_37();
        v96(v152, v25, v153);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_1DC33C5A8(0, v162[2] + 1, 1, v162, &qword_1ECC7CC50, &qword_1DC5247E0, MEMORY[0x1E69D0BA0], MEMORY[0x1E69D0BA0]);
        }

        v98 = v162[2];
        v97 = v162[3];
        v158 = v89;
        if (v98 >= v97 >> 1)
        {
          v162 = sub_1DC33C5A8((v97 > 1), v98 + 1, 1, v162, &qword_1ECC7CC50, &qword_1DC5247E0, MEMORY[0x1E69D0BA0], MEMORY[0x1E69D0BA0]);
        }

        ++v75;

        v99 = v147;
        v100 = v153;
        (*(v147 + 8))(v25, v153);
        v101 = v162;
        v162[2] = v98 + 1;
        (*(v99 + 32))(v101 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v98, v152, v100);
        if (v140 == v75)
        {

          v2 = v124;
          v26 = v151;
          v50 = v163;
          v45 = v164;
          goto LABEL_22;
        }

        continue;
      }
    }

    v70 = sub_1DC28D414();
    v71 = v160;
    (*v157)(v160, v70, v26);
    v72 = sub_1DC516F6C();
    v73 = sub_1DC517B9C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1DC287000, v72, v73, "Invalid interpretation index.", v74, 2u);
      MEMORY[0x1E1298840](v74, -1, -1);

      (*v156)(v160, v26);
    }

    else
    {

      (*v156)(v71, v26);
    }

    v50 = v163;
    v45 = v164;
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
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
}

uint64_t sub_1DC33C35C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1DC51784C();
  return sub_1DC51797C();
}

uint64_t sub_1DC33C3DC(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1DC51784C();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1DC33C444(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  sub_1DC2A32B0(v9, v10, v11);
  sub_1DC517E1C();
  sub_1DC51070C();
  v12 = sub_1DC517E0C();
  (*(v4 + 8))(v8, v2);

  return v12;
}

void *sub_1DC33C5A8(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1DC33C6B8(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_1DC33C7B4(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1DC33C6B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC33C7B4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC33C87C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC58, qword_1DC5247E8);
  result = sub_1DC517F0C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_18:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1DC5182FC();
    sub_1DC51769C();
    result = sub_1DC51833C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      result = *v15;
      if (*v15 == v9 && v15[1] == v8)
      {
        goto LABEL_15;
      }

      result = sub_1DC51825C();
      if (result)
      {
        goto LABEL_15;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_20;
    }

    *(v3 + 16) = v20;

LABEL_15:
    if (v5 == v4)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DC33CA00(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1DC298C74(0, a3, a4);
  v8 = sub_1DC517A1C();

  return v8;
}

uint64_t sub_1DC33CA74(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DC51772C();

  return v4;
}

uint64_t sub_1DC33CAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC33CB3C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F768);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F768);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000019;
  v2[3] = 0x80000001DC540230;
  v2[4] = 0x746E457465737341;
  v2[5] = 0xEB00000000797469;
  *v1 = v2;
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 104);

  return v4(v1);
}

BOOL sub_1DC33CC1C(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86C70 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_1ECC86C70);
  }

  __swift_project_value_buffer(v2, qword_1ECC8F768);
  v6 = sub_1DC5172DC();
  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  (*(v7 + 8))(a1);
  (*(v3 + 8))(v5, v2);
  return (v6 & 1) == 0;
}

uint64_t sub_1DC33CD64@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C70 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_1ECC86C70);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F768);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

BOOL sub_1DC33CDF8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC33CC1C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC33CE38()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F780);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F780);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000011;
  v2[3] = 0x80000001DC540250;
  v2[4] = 0xD000000000000010;
  v2[5] = 0x80000001DC524800;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC33CF14(uint64_t a1)
{
  v2 = sub_1DC51721C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return 1;
}

uint64_t sub_1DC33CF70@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C78 != -1)
  {
    OUTLINED_FUNCTION_0_15(&qword_1ECC86C78);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F780);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC33CFFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC33CF14(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1DC33D038()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F798);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000012;
  v4[3] = 0x80000001DC540290;
  v4[4] = 0xD000000000000011;
  v4[5] = 0x80000001DC524860;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC33D10C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = sub_1DC51721C();
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - v17;
  v19 = sub_1DC5172FC();
  OUTLINED_FUNCTION_2_3();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86C80 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1ECC86C80);
  }

  __swift_project_value_buffer(v19, qword_1ECC8F798);
  v25 = sub_1DC5172DC();
  (*(v21 + 8))(v24, v19);
  if ((v25 & 1) == 0)
  {
    result = (*(v5 + 8))(a1, v61);
    v36 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_28;
  }

  v26 = sub_1DC5171EC();
  sub_1DC30F668(0x746E61686372656DLL, 0xEC000000656D614ELL, v26, v18);

  v27 = sub_1DC5172AC();
  OUTLINED_FUNCTION_3_0(v18);
  if (v28)
  {
    sub_1DC30F72C(v18);
LABEL_9:

    v36 = 0;
    v58 = 0xE000000000000000;
    goto LABEL_10;
  }

  sub_1DC382AC0();
  v36 = v35;
  v38 = v37;
  OUTLINED_FUNCTION_7_1();
  (*(v39 + 8))(v18, v27);
  v58 = v38;
  if (!v38)
  {
    goto LABEL_9;
  }

LABEL_10:
  v40 = sub_1DC5171EC();
  sub_1DC30F668(1702125924, 0xE400000000000000, v40, v16);

  OUTLINED_FUNCTION_3_0(v16);
  if (v28)
  {
    sub_1DC30F72C(v16);
  }

  else
  {
    sub_1DC382AC0();
    v31 = v41;
    v32 = v42;
    OUTLINED_FUNCTION_7_1();
    (*(v43 + 8))(v16, v27);
    if (v32)
    {
      goto LABEL_15;
    }
  }

  v31 = 0;
  v32 = 0xE000000000000000;
LABEL_15:
  v44 = sub_1DC5171EC();
  sub_1DC30F668(1936941424, 0xE400000000000000, v44, v13);

  OUTLINED_FUNCTION_3_0(v13);
  if (v28)
  {
    sub_1DC30F72C(v13);
  }

  else
  {
    v57 = v36;
    OUTLINED_FUNCTION_2_3();
    v47 = v46;
    if ((*(v45 + 88))(v13, v27) == *MEMORY[0x1E69DAE58])
    {
      (*(v47 + 96))(v13, v27);
      v48 = swift_projectBox();
      v49 = v61;
      (*(v5 + 16))(v60, v48, v61);

      v50 = sub_1DC5171EC();
      v51 = v59;
      sub_1DC30F668(0x6570795473736170, 0xE800000000000000, v50, v59);

      OUTLINED_FUNCTION_3_0(v51);
      if (v28)
      {
        sub_1DC30F72C(v51);
      }

      else
      {
        v33 = sub_1DC38389C();
        v52 = v51;
        v34 = v53;
        (*(v47 + 8))(v52, v27);
        if (v34)
        {
          v54 = *(v5 + 8);
          v54(a1, v49);
          result = (v54)(v60, v49);
LABEL_27:
          v36 = v57;
          v30 = v58;
          goto LABEL_28;
        }
      }

      v55 = *(v5 + 8);
      v55(a1, v49);
      v55(v60, v49);

      v33 = 0;
      v34 = 0xE000000000000000;
      goto LABEL_27;
    }

    (*(v47 + 8))(v13, v27);
    v36 = v57;
  }

  result = (*(v5 + 8))(a1, v61);
  v33 = 0;
  v34 = 0xE000000000000000;
  v30 = v58;
LABEL_28:
  *a2 = v36;
  a2[1] = v30;
  a2[2] = v31;
  a2[3] = v32;
  a2[4] = v33;
  a2[5] = v34;
  return result;
}

uint64_t sub_1DC33D718()
{
  v1 = v0;
  sub_1DC517F4C();

  strcpy(v3, "MerchantName: ");
  HIBYTE(v3[1]) = -18;
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x3A65746144207C20, 0xE900000000000020);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000012, 0x80000001DC540270);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  return v3[0];
}

uint64_t sub_1DC33D7E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C80 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1ECC86C80);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F798);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC33D87C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC33D10C(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1DC33D8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v53 - v6;
  v60 = sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v54 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v58 = v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v53 - v21;
  v23 = sub_1DC28D414();
  v24 = *(v15 + 16);
  v56 = v23;
  v57 = v24;
  (v24)(v22);
  v25 = sub_1DC516F6C();
  v26 = sub_1DC517B9C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53[1] = v15 + 16;
    v28 = v2;
    v29 = v7;
    v30 = v15;
    v31 = v13;
    v32 = v27;
    *v27 = 0;
    _os_log_impl(&dword_1DC287000, v25, v26, "nluResponse.parses is empty, falling back on nlv3 server", v27, 2u);
    v33 = v32;
    v13 = v31;
    v15 = v30;
    v7 = v29;
    v2 = v28;
    MEMORY[0x1E1298840](v33, -1, -1);
  }

  v34 = *(v15 + 8);
  v34(v22, v13);
  type metadata accessor for CDMNluResponse(0);
  (*(v9 + 16))(v12, v2, v60);
  v35 = CDMNluResponse.__allocating_init(swiftProto:)(v12);
  v36 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x60))();
  if (!v36)
  {
    v43 = v54;
    v57(v54, v56, v13);
    v44 = sub_1DC516F6C();
    v45 = sub_1DC517B9C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v13;
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1DC287000, v44, v45, "Unable to convert NLU response to Obj-C proto", v47, 2u);
      v48 = v47;
      v13 = v46;
      MEMORY[0x1E1298840](v48, -1, -1);
    }

    v34(v43, v13);
    v52 = sub_1DC511EEC();
    v50 = v59;
    v51 = 1;
    return __swift_storeEnumTagSinglePayload(v50, v51, 1, v52);
  }

  v37 = v36;
  v54 = v34;
  v38 = v7;
  v60 = v13;
  v39 = [objc_opt_self() serverDelegatedUserDialogActFromNLUResponse_];
  result = sub_1DC30EB38(v39);
  if (v41 >> 60 != 15)
  {
    v42 = sub_1DC511EEC();
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    sub_1DC5166FC();
    sub_1DC33DEEC();
    sub_1DC51677C();

    __swift_storeEnumTagSinglePayload(v38, 0, 1, v42);
    v49 = v59;
    (*(*(v42 - 8) + 32))(v59, v38, v42);
    v50 = v49;
    v51 = 0;
    v52 = v42;
    return __swift_storeEnumTagSinglePayload(v50, v51, 1, v52);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC33DEEC()
{
  result = qword_1ECC7BDD0;
  if (!qword_1ECC7BDD0)
  {
    sub_1DC511EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BDD0);
  }

  return result;
}

uint64_t sub_1DC33DF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC33DFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  v1 = sub_1DC3EAB30();
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  v4 = sub_1DC3EAB3C();
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;
  qword_1ECC8F7B0 = v0;
}

uint64_t sub_1DC33E02C()
{
  v0 = sub_1DC33F23C(&qword_1ECC7CC60, &qword_1DC524898, &qword_1ECC7CC78, &qword_1DC5248F0);
  v1 = OUTLINED_FUNCTION_9_9(v0);
  *(v1 + 16) = xmmword_1DC522F10;
  *(v1 + 32) = sub_1DC514CCC();
  result = sub_1DC514CAC();
  *(v1 + 40) = result;
  qword_1ECC8F7B8 = v1;
  return result;
}

uint64_t *sub_1DC33E0A0()
{
  if (qword_1EDAC83B0 != -1)
  {
    OUTLINED_FUNCTION_4_11();
    swift_once();
  }

  return &qword_1ECC8F7B8;
}

uint64_t sub_1DC33E0E4()
{
  v0 = sub_1DC33F23C(&qword_1ECC7C1B8, &unk_1DC522F90, &qword_1ECC7C1C0, &unk_1DC5248E0);
  v1 = OUTLINED_FUNCTION_9_9(v0);
  *(v1 + 16) = xmmword_1DC522F10;
  *(v1 + 32) = sub_1DC5147CC();
  result = sub_1DC5147DC();
  *(v1 + 40) = result;
  qword_1ECC8F7C0 = v1;
  return result;
}

uint64_t *sub_1DC33E158()
{
  if (qword_1EDAC83B8 != -1)
  {
    OUTLINED_FUNCTION_3_11();
    swift_once();
  }

  return &qword_1ECC8F7C0;
}

void sub_1DC33E19C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a1;
  v196 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v180 = v4;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v181 = v6;
  OUTLINED_FUNCTION_12();
  v195 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v179 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v177 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v178 = v11;
  OUTLINED_FUNCTION_12();
  v187 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v190 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v189 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v186 = v16;
  OUTLINED_FUNCTION_12();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v184 = v18;
  v185 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v182 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v183 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v163 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v163 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v30);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v163 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v163 - v36;
  v38 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v39);
  v188 = (&v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_12();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v192 = v42;
  v193 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v163 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v46 = sub_1DC2BE518();
  v47 = OUTLINED_FUNCTION_130();
  v191 = v44;
  sub_1DC2A2ED0("HeuristicRules.PlannerPhotoRule", 31, 2, v46, v47 & 1, v44);

  v48 = v194;
  v49 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v48 + *(v49 + 32), v33, &qword_1ECC7C158, &unk_1DC5234A0);
  v50 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v33, 1, v50) == 1)
  {
    sub_1DC28EB30(v33, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v38);
LABEL_4:
    sub_1DC28EB30(v37, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    goto LABEL_11;
  }

  sub_1DC28F358(v33, v37, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC33F1E0(v33, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    goto LABEL_4;
  }

  v176 = v45;
  v58 = v188;
  sub_1DC2E53A4(v37, v188);
  sub_1DC3EAD64(v25);
  v59 = type metadata accessor for QDContextState(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v59);
  v61 = v196;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v58, v62);
    v63 = &qword_1ECC7BEB8;
    v64 = &unk_1DC527150;
    v65 = v25;
LABEL_9:
    sub_1DC28EB30(v65, v63, v64);
    OUTLINED_FUNCTION_19();
    goto LABEL_10;
  }

  sub_1DC28F358(&v25[*(v59 + 24)], v29, &qword_1ECC7BEC0, &unk_1DC5221E0);
  sub_1DC33F1E0(v25, type metadata accessor for QDContextState);
  v66 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v29, 1, v66) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v58, v67);
    v63 = &qword_1ECC7BEC0;
    v64 = &unk_1DC5221E0;
    v65 = v29;
    goto LABEL_9;
  }

  v74 = sub_1DC51723C();
  v76 = v75;
  v77 = (*(*(v66 - 8) + 8))(v29, v66);
  if (_MergedGlobals_7 != -1)
  {
LABEL_85:
    v77 = OUTLINED_FUNCTION_5_15(&_MergedGlobals_7);
  }

  v199[0] = v74;
  v199[1] = v76;
  MEMORY[0x1EEE9AC00](v77);
  *(&v163 - 2) = v199;
  v79 = sub_1DC2CF098(sub_1DC2CF174, (&v163 - 4), v78);

  v80 = v186;
  if (!v79)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v58, v108);
    OUTLINED_FUNCTION_19();
    v71 = v195;
    goto LABEL_10;
  }

  v170 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v81 = sub_1DC3458D0();
  v83 = v82;
  v84 = sub_1DC312FB4(0);
  if (v81 == v84 && v83 == v85)
  {

    goto LABEL_41;
  }

  v87 = OUTLINED_FUNCTION_13(v84);

  if (v87)
  {
    goto LABEL_41;
  }

  v165 = *(*v58 + 16);
  if (!v165)
  {
    goto LABEL_41;
  }

  v88 = 0;
  OUTLINED_FUNCTION_18_10();
  v168 = v89 + v90;
  v167 = v91 + 16;
  v173 = v190 + 16;
  v172 = v190 + 8;
  v166 = v91 + 8;
  v76 = &unk_1DC5248A0;
  v164 = v89;
  while (1)
  {
    if (v88 >= *(v89 + 16))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      return;
    }

    v92 = *(v184 + 72);
    v169 = v88;
    v93 = v168 + v92 * v88;
    v74 = v183;
    (*(v184 + 16))(v183, v93, v185);
    v94 = sub_1DC5111AC();
    v95 = v187;
    v175 = *(v94 + 16);
    if (v175)
    {
      break;
    }

LABEL_37:
    v88 = v169 + 1;
    v106 = OUTLINED_FUNCTION_11_11();
    v107(v106);
    v89 = v164;
    if (v88 == v165)
    {
      goto LABEL_41;
    }
  }

  OUTLINED_FUNCTION_10_12();
  v174 = (v94 + v96);
  v171 = v94;
  while (1)
  {
    if (v48 >= *(v94 + 16))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    (*(v190 + 16))(v80, &v174[*(v190 + 72) * v48], v95);
    if (qword_1EDAC83B0 != -1)
    {
      OUTLINED_FUNCTION_4_11();
      swift_once();
    }

    v97 = qword_1ECC8F7B8;
    v58 = *(qword_1ECC8F7B8 + 16);
    if (v58)
    {
      v199[0] = MEMORY[0x1E69E7CC0];
      sub_1DC33F29C(0, v58, 0);
      v98 = v199[0];
      v99 = (v97 + 32);
      do
      {
        v197 = *v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC60, &qword_1DC524898);
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
        OUTLINED_FUNCTION_13_9(v100);
        v101 = v198;
        v199[0] = v98;
        v103 = *(v98 + 16);
        v102 = *(v98 + 24);
        if (v103 >= v102 >> 1)
        {
          sub_1DC33F29C((v102 > 1), v103 + 1, 1);
          v98 = v199[0];
        }

        *(v98 + 16) = v103 + 1;
        *(v98 + 8 * v103 + 32) = v101;
        ++v99;
        v58 = (v58 - 1);
      }

      while (v58);
      v61 = v196;
      v80 = v186;
      v94 = v171;
    }

    sub_1DC30AD70();
    v74 = v104;

    OUTLINED_FUNCTION_8_7();
    v95 = v187;
    v105(v80, v187);
    if (v74)
    {
      break;
    }

    if (++v48 == v175)
    {

      v58 = v188;
      goto LABEL_37;
    }
  }

  v135 = OUTLINED_FUNCTION_11_11();
  v136(v135);

  v137 = sub_1DC3458D0();
  v139 = sub_1DC312F68(v137, v138);
  v58 = v188;
  if (v139 == 4)
  {
    v140 = v181;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v195);
    goto LABEL_76;
  }

  v140 = v181;
  sub_1DC312E7C(v139, v181);
  v153 = v195;
  v154 = __swift_getEnumTagSinglePayload(v140, 1, v195);
  v155 = v179;
  if (v154 == 1)
  {
LABEL_76:
    sub_1DC28EB30(v140, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_41;
  }

  v157 = *(v179 + 32);
  v158 = v178;
  v157(v178, v140, v153);
  type metadata accessor for HeuristicRoutingRequest(0);
  sub_1DC32FD38();
  if ((v159 & 1) == 0)
  {
    (*(v155 + 8))(v158, v153);
LABEL_41:
    v109 = sub_1DC345484();
    v111 = v110;
    v112 = sub_1DC312FB4(0);
    if (v109 == v112 && v111 == v113)
    {
    }

    else
    {
      v115 = OUTLINED_FUNCTION_13(v112);

      if ((v115 & 1) == 0)
      {
        v76 = *v58;
        v48 = *(*v58 + 16);
        v116 = v187;
        if (v48)
        {
          OUTLINED_FUNCTION_18_10();
          v174 = v76 + v118;
          v173 = v119 + 16;
          v183 = v190 + 16;
          v181 = (v190 + 8);
          v172 = v119 + 8;
          v171 = v76;
          v169 = v48;
          while (1)
          {
            if (v117 >= v76[2])
            {
              goto LABEL_87;
            }

            v120 = *(v184 + 72);
            v175 = v117;
            v74 = v182;
            (*(v184 + 16))(v182, &v174[v120 * v117], v185);
            v121 = sub_1DC5111AC();
            v194 = *(v121 + 16);
            if (v194)
            {
              break;
            }

LABEL_65:
            v131 = v175 + 1;
            OUTLINED_FUNCTION_8_7();
            v132(v182, v185);
            v117 = v131;
            if (v131 == v48)
            {
              goto LABEL_68;
            }
          }

          OUTLINED_FUNCTION_10_12();
          v186 = v121 + v122;
          v178 = v121;
          while (1)
          {
            if (v48 >= *(v121 + 16))
            {
              goto LABEL_84;
            }

            (*(v190 + 16))(v189, v186 + *(v190 + 72) * v48, v116);
            if (qword_1EDAC83B8 != -1)
            {
              OUTLINED_FUNCTION_3_11();
              swift_once();
            }

            v123 = qword_1ECC8F7C0;
            v124 = *(qword_1ECC8F7C0 + 16);
            if (v124)
            {
              v199[0] = MEMORY[0x1E69E7CC0];
              sub_1DC33F29C(0, v124, 0);
              v58 = v199[0];
              v125 = (v123 + 32);
              do
              {
                v197 = *v125;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
                v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
                OUTLINED_FUNCTION_13_9(v126);
                v127 = v198;
                v199[0] = v58;
                v129 = v58[2];
                v128 = v58[3];
                if (v129 >= v128 >> 1)
                {
                  sub_1DC33F29C((v128 > 1), v129 + 1, 1);
                  v58 = v199[0];
                }

                v58[2] = v129 + 1;
                v58[v129 + 4] = v127;
                ++v125;
                --v124;
              }

              while (v124);
              v61 = v196;
              v116 = v187;
              v121 = v178;
            }

            else
            {
              v58 = MEMORY[0x1E69E7CC0];
            }

            v76 = v189;
            sub_1DC30AD70();
            v74 = v130;

            (*v181)(v76, v116);
            if (v74)
            {
              break;
            }

            if (++v48 == v194)
            {

              v58 = v188;
              v76 = v171;
              v48 = v169;
              goto LABEL_65;
            }
          }

          OUTLINED_FUNCTION_8_7();
          v144(v182, v185);

          v145 = sub_1DC345484();
          v147 = sub_1DC312F68(v145, v146);
          if (v147 == 4)
          {
            OUTLINED_FUNCTION_0_17();
            sub_1DC33F1E0(v188, v148);
            v149 = v180;
            OUTLINED_FUNCTION_19();
            v134 = v195;
            __swift_storeEnumTagSinglePayload(v150, v151, v152, v195);
LABEL_78:
            sub_1DC28EB30(v149, &qword_1ECC7CA40, &unk_1DC5233A0);
            goto LABEL_69;
          }

          v149 = v180;
          sub_1DC312E7C(v147, v180);
          OUTLINED_FUNCTION_0_17();
          sub_1DC33F1E0(v188, v156);
          v134 = v195;
          if (__swift_getEnumTagSinglePayload(v149, 1, v195) == 1)
          {
            goto LABEL_78;
          }

          v161 = *(v179 + 32);
          v162 = v177;
          v161(v177, v149, v134);
          v161(v61, v162, v134);
          v68 = v61;
          v69 = 0;
LABEL_70:
          v70 = 1;
          v71 = v134;
          goto LABEL_10;
        }
      }
    }

LABEL_68:
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v58, v133);
    v134 = v195;
LABEL_69:
    v68 = v61;
    v69 = 1;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_0_17();
  sub_1DC33F1E0(v58, v160);
  v157(v61, v158, v153);
  v68 = v61;
  v69 = 0;
  v70 = 1;
  v71 = v153;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
LABEL_11:
  v72 = sub_1DC2BE518();
  v73 = v191;
  sub_1DC2B8848(v191, "HeuristicRules.PlannerPhotoRule", 31, 2, v72);

  (*(v192 + 8))(v73, v193);
}

uint64_t sub_1DC33F1E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC33F23C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (dynamic_cast_existential_0_class_conditional(v6, v6))
  {
    v7 = &qword_1ECC7C1C8;
    v8 = &qword_1DC524550;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
}

char *sub_1DC33F29C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC33F2BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC33F2BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC70, &qword_1DC52F250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

id sub_1DC33F3CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector;
  OUTLINED_FUNCTION_9_10(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1DC33F410(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector;
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC33F464(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC33F498(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  OUTLINED_FUNCTION_5_16();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC33F564()
{
  v1 = (v0 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1DC33F62C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name);
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC33F688@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC33F6E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);

  return v4(v2, v3);
}

unint64_t sub_1DC33F7BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DC33F80C(char a1)
{
  result = 0x6F74636556746962;
  switch(a1)
  {
    case 1:
    case 2:
    case 6:
      result = 0x664F7265626D756ELL;
      break;
    case 3:
      result = 1684366707;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC33F8FC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6F74636556746962;
  v4 = a1;
  v5 = 0x6F74636556746962;
  v6 = 0xE900000000000072;
  switch(v4)
  {
    case 1:
      v5 = 0x664F7265626D756ELL;
      v6 = 0xEC00000073746942;
      break;
    case 2:
      v5 = 0x664F7265626D756ELL;
      v6 = 0xEE00736568736148;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1684366707;
      break;
    case 4:
      v6 = 0x80000001DC540300;
      v5 = 0xD000000000000015;
      break;
    case 5:
      v5 = 0xD000000000000011;
      v6 = 0x80000001DC540320;
      break;
    case 6:
      v5 = 0x664F7265626D756ELL;
      v6 = 0xED0000736D657449;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x664F7265626D756ELL;
      v2 = 0xEC00000073746942;
      break;
    case 2:
      v3 = 0x664F7265626D756ELL;
      v2 = 0xEE00736568736148;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1684366707;
      break;
    case 4:
      v2 = 0x80000001DC540300;
      v3 = 0xD000000000000015;
      break;
    case 5:
      v3 = 0xD000000000000011;
      v2 = 0x80000001DC540320;
      break;
    case 6:
      v3 = 0x664F7265626D756ELL;
      v2 = 0xED0000736D657449;
      break;
    case 7:
      v2 = 0xE400000000000000;
      v3 = 1701667182;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC33FB40(char a1)
{
  sub_1DC5182FC();
  sub_1DC33F80C(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC33FBAC(uint64_t a1, char a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC33FCCC(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC33F80C(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

unint64_t sub_1DC33FD2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC33F7BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DC33FD5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DC33F80C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC33FDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC33F808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC33FDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC340438(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1DC33FE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC340438(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void BloomFilter.init(with:expectedNumberOfItems:falsePositiveRate:seed:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, long double a5)
{
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems] = 0;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedItemsBuffer] = 1234;
  v6 = &v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = a3 + 1234;
  if (a3 >= 0xFFFFFFFFFFFFFB2ELL)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedNumberOfItems] = v7;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_falsePositiveRate] = a5;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed] = a4;
  v9 = ceil(log(a5) * v7 / -0.480453014);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  *&v8[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits] = v9;
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = ceil((v10 / v7) * 0.693147181);
  if (v11 == INFINITY)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1.84467441e19)
  {
    *&v8[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes] = v11;
    type metadata accessor for BitVector();
    *&v8[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector] = sub_1DC3A7854(v10);
    v12.receiver = v8;
    v12.super_class = type metadata accessor for BloomFilter();
    objc_msgSendSuper2(&v12, sel_init);
    return;
  }

LABEL_17:
  __break(1u);
}

char *BloomFilter.init(from:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCA0, &qword_1DC524908);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems] = 0;
  v10 = v1;
  *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedItemsBuffer] = 1234;
  v11 = a1[3];
  v29 = a1;
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DC340438(v12, v13, v14);
  sub_1DC51834C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    type metadata accessor for BloomFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v9;
    v15 = v5;
    type metadata accessor for BitVector();
    v32 = 0;
    sub_1DC340C10(&qword_1ECC7CCB0, &unk_1DC526F58);
    v16 = v28;
    sub_1DC51814C();
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector] = v31;
    OUTLINED_FUNCTION_0_18(1);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits] = sub_1DC51813C();
    OUTLINED_FUNCTION_0_18(2);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes] = sub_1DC51813C();
    OUTLINED_FUNCTION_0_18(3);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed] = sub_1DC51815C();
    OUTLINED_FUNCTION_0_18(4);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedNumberOfItems] = sub_1DC51813C();
    OUTLINED_FUNCTION_0_18(5);
    sub_1DC51811C();
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_falsePositiveRate] = v18;
    OUTLINED_FUNCTION_0_18(6);
    v19 = sub_1DC51813C();
    v20 = v27;
    OUTLINED_FUNCTION_5_16();
    swift_beginAccess();
    *&v10[v20] = v19;
    v32 = 7;
    v21 = sub_1DC5180FC();
    v22 = v8;
    v24 = v23;
    (*(v15 + 8))(v22, v16);
    v25 = &v10[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name];
    *v25 = v21;
    v25[1] = v24;
    v26 = type metadata accessor for BloomFilter();
    v30.receiver = v10;
    v30.super_class = v26;
    v10 = objc_msgSendSuper2(&v30, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return v10;
}

unint64_t sub_1DC340438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CCA8;
  if (!qword_1ECC7CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCA8);
  }

  return result;
}

void sub_1DC34048C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DC2A6784(a1, a2);
  v4 = OUTLINED_FUNCTION_62_2();
  v6 = sub_1DC33360C(v4, v5);
  v7 = OUTLINED_FUNCTION_62_2();
  v8 = MEMORY[0x1E128F2D0](v7);
  v9 = sub_1DC2CF194(v6, v8, *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed));
  v11 = v10;

  v13 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits;
  v14 = *(v3 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes) + 1;
  v15 = MEMORY[0x1E69E7D40];
  do
  {
    if (!--v14)
    {
      break;
    }

    v16 = *(v3 + v13);
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v9 % v16;
    (*((*v15 & *v3) + 0x98))(v12);
    OUTLINED_FUNCTION_4_12();
    LOBYTE(v17) = (*(v18 + 184))(v17);

    v9 += v11;
  }

  while ((v17 & 1) != 0);
}

uint64_t sub_1DC340624(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DC2A6784(a1, a2);
  v4 = OUTLINED_FUNCTION_62_2();
  v6 = sub_1DC33360C(v4, v5);
  v7 = OUTLINED_FUNCTION_62_2();
  v8 = MEMORY[0x1E128F2D0](v7);
  v9 = sub_1DC2CF194(v6, v8, *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed));
  v11 = v10;

  v13 = *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes);
  if (v13)
  {
    v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
    v15 = *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits);
    if (!v15)
    {
      goto LABEL_7;
    }

    do
    {
      v14(result);
      OUTLINED_FUNCTION_4_12();
      (*(v16 + 168))(v9 % v15);

      v9 += v11;
      --v13;
    }

    while (v13);
  }

  v17 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  OUTLINED_FUNCTION_5_16();
  result = swift_beginAccess();
  v18 = *(v3 + v17);
  v19 = __CFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v3 + v17) = v20;
    return result;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

id BloomFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BloomFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloomFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC340870(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCB8, &qword_1DC524910);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC340438(v9, v10, v11);
  sub_1DC51835C();
  OUTLINED_FUNCTION_3_12();
  v13 = (*(v12 + 152))();
  v18 = v13;
  v17[7] = 0;
  type metadata accessor for BitVector();
  sub_1DC340C10(&qword_1ECC7CCC0, &unk_1DC526F80);
  sub_1DC51820C();

  if (v1)
  {
    return (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_1_13(1);
  sub_1DC5181FC();
  OUTLINED_FUNCTION_1_13(2);
  sub_1DC5181FC();
  OUTLINED_FUNCTION_1_13(3);
  sub_1DC51821C();
  OUTLINED_FUNCTION_1_13(4);
  sub_1DC5181FC();
  LOBYTE(v18) = 5;
  sub_1DC5181DC();
  OUTLINED_FUNCTION_3_12();
  (*(v14 + 176))();
  OUTLINED_FUNCTION_1_13(6);
  sub_1DC5181FC();
  OUTLINED_FUNCTION_3_12();
  (*(v16 + 200))();
  LOBYTE(v18) = 7;
  sub_1DC5181BC();
  (*(v5 + 8))(v8, v3);
}

uint64_t sub_1DC340B78@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DC340C10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BitVector();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC340C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CCC8;
  if (!qword_1ECC7CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCC8);
  }

  return result;
}

unint64_t sub_1DC340CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CCD0;
  if (!qword_1ECC7CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCD0);
  }

  return result;
}

unint64_t sub_1DC340D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CCD8;
  if (!qword_1ECC7CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLRouterModelFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BloomFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_1DC341068()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v115 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v107 = v5;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v101 - v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v101 - v9;
  v116 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v108 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v103 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v101 - v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v101 - v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v110 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v21 = OUTLINED_FUNCTION_10(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v101 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v25 = OUTLINED_FUNCTION_10(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - v26;
  v28 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v111 = v31 - v30;
  OUTLINED_FUNCTION_12();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v113 = v33;
  v114 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v37 = sub_1DC2BE518();
  v38 = OUTLINED_FUNCTION_130();
  v112 = v36;
  sub_1DC2A2ED0("HeuristicRules.ReminderRule", 27, 2, v37, v38 & 1, v36);

  v39 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v109 = v1;
  sub_1DC28F414(v1 + v39, v23, &qword_1ECC7C158, &unk_1DC5234A0);
  v40 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v40) == 1)
  {
    sub_1DC28EB30(v23, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v28);
LABEL_4:
    sub_1DC28EB30(v27, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    goto LABEL_39;
  }

  sub_1DC28F414(v23, v27, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC3427F4(v23, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC34279C(v27, v111);
  v48 = type metadata accessor for HeuristicRoutingRequest(0);
  v49 = v108;
  v50 = v110;
  v51 = v116;
  (*(v108 + 16))(v110, v109 + *(v48 + 20), v116);
  sub_1DC3419A0();
  OUTLINED_FUNCTION_19_11(v10);
  if (v56)
  {
    sub_1DC28EB30(v10, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

  else
  {
    (*(v49 + 8))(v50, v51);
    (*(v49 + 32))(v50, v10, v51);
  }

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v52 = sub_1DC345114();
  v54 = v53;
  v56 = v52 == sub_1DC312FB4(0) && v54 == v55;
  if (v56)
  {

    goto LABEL_24;
  }

  v57 = OUTLINED_FUNCTION_12_10();

  if (v57)
  {
    goto LABEL_24;
  }

  v58 = sub_1DC345114();
  v60 = sub_1DC312F68(v58, v59);
  if (v60 == 4)
  {
    v61 = v106;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v51);
LABEL_18:
    sub_1DC28EB30(v61, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_24;
  }

  v61 = v106;
  sub_1DC312E7C(v60, v106);
  OUTLINED_FUNCTION_19_11(v61);
  if (v56)
  {
    goto LABEL_18;
  }

  v65 = *(v49 + 32);
  v66 = v104;
  v106 = v49 + 32;
  v102 = v65;
  v65(v104, v61, v51);
  v67 = v105;
  (*(v49 + 104))(v105, *MEMORY[0x1E69D02F8], v51);
  v68 = sub_1DC5157DC();
  v69 = *(v49 + 8);
  v69(v67, v51);
  if (v68)
  {
    sub_1DC342154();
    if ((v70 & 1) != 0 && (OUTLINED_FUNCTION_5_17(), sub_1DC342154(), (v71 & 1) == 0))
    {
      v96 = v104;
      v97 = v105;
      v98 = v110;
      sub_1DC32DE40();
      v99 = v96;
      v100 = v116;
      v69(v99, v116);
      v69(v98, v100);
      v51 = v100;
      v102(v98, v97, v100);
    }

    else
    {
      v72 = v116;
      v69(v104, v116);
      v51 = v72;
    }
  }

  else
  {
    v69(v66, v51);
  }

LABEL_24:
  v73 = sub_1DC3451F0();
  v75 = v74;
  if (v73 == sub_1DC312FB4(0) && v75 == v76)
  {

    v79 = v110;
  }

  else
  {
    v78 = OUTLINED_FUNCTION_12_10();

    v79 = v110;
    if ((v78 & 1) == 0)
    {
      v80 = sub_1DC3451F0();
      v82 = sub_1DC312F68(v80, v81);
      if (v82 == 4)
      {
        v83 = v107;
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v51);
LABEL_34:
        sub_1DC28EB30(v83, &qword_1ECC7CA40, &unk_1DC5233A0);
        goto LABEL_35;
      }

      v83 = v107;
      sub_1DC312E7C(v82, v107);
      OUTLINED_FUNCTION_19_11(v83);
      if (v56)
      {
        goto LABEL_34;
      }

      v91 = *(v49 + 32);
      v92 = v103;
      v91(v103, v83, v51);
      OUTLINED_FUNCTION_5_17();
      sub_1DC342154();
      if (v93)
      {
        sub_1DC32DE40();
        v94 = v92;
        v95 = *(v49 + 8);
        v95(v94, v51);
        v95(v79, v51);
        v91(v79, v105, v51);
      }

      else
      {
        (*(v49 + 8))(v92, v51);
      }
    }
  }

LABEL_35:
  if (sub_1DC5157DC())
  {
    (*(v49 + 8))(v79, v51);
    v87 = 1;
    v88 = v115;
  }

  else
  {
    v88 = v115;
    (*(v49 + 32))(v115, v79, v51);
    v87 = 0;
  }

  __swift_storeEnumTagSinglePayload(v88, v87, 1, v51);
  sub_1DC3427F4(v111, type metadata accessor for NLRouterNLParseResponse);
LABEL_39:
  v89 = sub_1DC2BE518();
  v90 = v112;
  sub_1DC2B8848(v112, "HeuristicRules.ReminderRule", 27, 2, v89);

  (*(v113 + 8))(v90, v114);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3419A0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v77 = v9 - v8;
  OUTLINED_FUNCTION_12();
  v78 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v84 = v14 - v13;
  OUTLINED_FUNCTION_12();
  sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v90 = v16;
  v92 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v93 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v89 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = type metadata accessor for NLRouterSiriXUSOParse(0);
  v26 = OUTLINED_FUNCTION_10(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  type metadata accessor for NLRouterSiriXParse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v72 = v32 - v31;
  v33 = OUTLINED_FUNCTION_12();
  type metadata accessor for NLRouterActionCandidate(v33);
  OUTLINED_FUNCTION_0();
  v85 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v83 = v37 - v36;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC34503C() & 1) == 0 || (v38 = *(v1 + *(type metadata accessor for NLRouterServiceRequest(0) + 28))) == 0)
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_34();

    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    return;
  }

  v70 = v3;
  v76 = v4;
  v39 = v78;
  v40 = v72;
  v82 = *(v38 + 16);
  if (!v82)
  {
LABEL_22:
    OUTLINED_FUNCTION_19();
    v69 = v76;
LABEL_26:
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    OUTLINED_FUNCTION_34();
    return;
  }

  v41 = 0;
  OUTLINED_FUNCTION_24();
  v80 = v42 + v43;
  v81 = v44;
  v45 = v11;
  v46 = (v90 + 8);
  v86 = (v45 + 8);
  v75 = *MEMORY[0x1E69D02F8];
  v74 = (v6 + 104);
  v71 = (v6 + 8);
  v47 = (v89 + 8);
  v79 = v42;
  while (1)
  {
    if (v41 >= *(v42 + 16))
    {
      goto LABEL_28;
    }

    sub_1DC342744(v80 + *(v85 + 72) * v41, v83);
    sub_1DC342744(v83 + v81, v40);
    sub_1DC3427F4(v83, type metadata accessor for NLRouterActionCandidate);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1DC3427F4(v40, type metadata accessor for NLRouterSiriXParse);
LABEL_21:
    ++v41;
    v42 = v79;
    if (v41 == v82)
    {
      goto LABEL_22;
    }
  }

  v73 = v41;
  sub_1DC34279C(v40, v29);
  v91 = sub_1DC5111AC();
  v48 = v84;
  v88 = *(v91 + 16);
  if (!v88)
  {
LABEL_20:

    OUTLINED_FUNCTION_4_13();
    v29 = *(v57 - 256);
    sub_1DC3427F4(v29, v58);
    v40 = v72;
    v41 = v73;
    goto LABEL_21;
  }

  v49 = 0;
  OUTLINED_FUNCTION_24();
  v87 = v91 + v50;
  while (v49 < *(v91 + 16))
  {
    (*(v89 + 16))(v24, v87 + *(v89 + 72) * v49, v93);
    sub_1DC51154C();
    v51 = sub_1DC51177C();
    v52 = *v46;
    (*v46)(v19, v92);
    if ((v51 & 1) == 0)
    {
      goto LABEL_18;
    }

    type metadata accessor for NLRouterBypassUtils();
    sub_1DC51154C();
    sub_1DC51178C();
    v52(v19, v92);
    v53 = sub_1DC307E5C(v48);
    (*v86)(v48, v39);
    if (!v53)
    {
      goto LABEL_18;
    }

    sub_1DC51478C();

    if (!v94[3])
    {
      sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_18:
      (*v47)(v24, v93);
      goto LABEL_19;
    }

    sub_1DC514B4C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    type metadata accessor for HeuristicRoutingRequest(0);
    v54 = *v74;
    (*v74)(v77, v75, v76);
    sub_1DC32FD38();
    v56 = v55;
    v48 = v84;
    v39 = v78;
    (*v71)(v77, v76);
    (*v47)(v24, v93);
    if (v56)
    {
      OUTLINED_FUNCTION_4_13();
      sub_1DC3427F4(*(v64 - 256), v65);

      v54(v70, v75, v76);
      v66 = v70;
      v67 = 0;
      v68 = 1;
      v69 = v76;
      goto LABEL_26;
    }

LABEL_19:
    if (v88 == ++v49)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1DC342154()
{
  OUTLINED_FUNCTION_33();
  v75 = v1;
  OUTLINED_FUNCTION_38_2();
  v78 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v77 = v6 - v5;
  OUTLINED_FUNCTION_12();
  v68 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v67 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C170, &qword_1DC522F38);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v70 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v69 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  v18 = OUTLINED_FUNCTION_10(v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v83 = v22;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v74 = v25;
  OUTLINED_FUNCTION_22();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v64 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v72 = v0;
  v73 = v30;
  v64[0] = v8 + 16;
  v64[1] = v8;
  v65 = (v8 + 8);
  v66 = (v8 + 32);
  v80 = v31 + 16;
  v81 = v31;
  v82 = (v31 + 32);
  v32 = (v3 + 8);
  v79 = (v31 + 8);
  swift_bridgeObjectRetain_n();
  v33 = 0;
  v71 = 0;
  v76 = v23;
  while (1)
  {
    v34 = 0;
    if (v33)
    {
      while (1)
      {
        v35 = *(v33 + 16);
        if (v34 == v35)
        {
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v47, v48, v49, v23);
          sub_1DC28EB30(v21, &qword_1ECC7C178, qword_1DC523CB0);
          goto LABEL_13;
        }

        if (v34 >= v35)
        {
          break;
        }

        OUTLINED_FUNCTION_24();
        (*(v37 + 16))(v21, v33 + v36 + *(v37 + 72) * v34, v23);
        __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
        v38 = v83;
        sub_1DC342AB0(v21, v83, &qword_1ECC7C178, qword_1DC523CB0);
        if (__swift_getEnumTagSinglePayload(v38, 1, v23) == 1)
        {
          goto LABEL_20;
        }

        v39 = *v82;
        (*v82)(v29, v83, v23);
        if (sub_1DC5114CC() & 1) != 0 && (v40 = v29, v41 = v77, sub_1DC51154C(), v42 = sub_1DC51177C(), v43 = v41, v29 = v40, v23 = v76, (*v32)(v43, v78), (v42))
        {
          v44 = v73;
          v39(v73, v40, v23);
          v45 = v74;
          v39(v74, v44, v23);
          LOBYTE(v44) = v75(v45);
          v46 = v45;
          v29 = v40;
          (*v79)(v46, v23);
          if (v44)
          {

            goto LABEL_21;
          }
        }

        else
        {
          (*v79)(v29, v23);
        }

        ++v34;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

LABEL_13:
    v50 = *(v72 + 16);
    if (v71 == v50)
    {
      v51 = 1;
      v52 = v68;
    }

    else
    {
      v52 = v68;
      if (v71 >= v50)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_24();
      v53 = v71;
      (*(v55 + 16))(v69, v72 + v54 + *(v55 + 72) * v71, v52);
      v51 = 0;
      v71 = v53 + 1;
    }

    v56 = v69;
    __swift_storeEnumTagSinglePayload(v69, v51, 1, v52);
    v57 = v56;
    v58 = v70;
    sub_1DC342AB0(v57, v70, &qword_1ECC7C170, &qword_1DC522F38);
    if (__swift_getEnumTagSinglePayload(v58, 1, v52) == 1)
    {
      break;
    }

    v59 = v67;
    (*v66)(v67, v70, v52);
    v60 = sub_1DC5111AC();
    (*v65)(v59, v52);

    v33 = v60;
  }

  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v23);
LABEL_20:
  sub_1DC28EB30(v83, &qword_1ECC7C178, qword_1DC523CB0);

LABEL_21:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC342744(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC34279C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC3427F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC34284C()
{
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v9 + 8))(v13, v7);
  v14 = sub_1DC307E5C(v6);
  (*(v2 + 8))(v6, v0);
  if (v14)
  {

    sub_1DC51478C();

    if (v18)
    {
      sub_1DC2BAD90(&v17, v19);
      sub_1DC291F78(v19, &v17);
      sub_1DC5149FC();
      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        return 1;
      }

      sub_1DC291F78(v19, &v17);
      v15 = sub_1DC342AFC(&v17);

      sub_1DC28EB30(&v17, &qword_1ECC7D3F0, &qword_1DC5238B0);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      if (v15)
      {

        return 1;
      }
    }

    else
    {

      sub_1DC28EB30(&v17, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }

  return 0;
}

uint64_t sub_1DC342AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v4;
}

uint64_t sub_1DC342AFC(uint64_t a1)
{
  sub_1DC28F414(a1, v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v22)
  {
    goto LABEL_11;
  }

  sub_1DC28F414(v21, v20, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v1 = sub_1DC514C0C();
  if (!OUTLINED_FUNCTION_21(v1, v2, v3, v1, v4))
  {
    v5 = sub_1DC514CEC();
    if (OUTLINED_FUNCTION_21(v5, v6, v7, v5, v8) || (v9 = sub_1DC514DDC(), OUTLINED_FUNCTION_21(v9, v10, v11, v9, v12)))
    {

      sub_1DC5148BC();
      goto LABEL_7;
    }

    v14 = sub_1DC514B7C();
    if (OUTLINED_FUNCTION_21(v14, v15, v16, v14, v17))
    {

      sub_1DC51392C();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  sub_1DC514C8C();
LABEL_7:

  v13 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_12:
  sub_1DC28EB30(v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v13;
}

void sub_1DC342C3C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v9 + 8))(v13, v7);
  v14 = sub_1DC307E5C(v6);
  (*(v2 + 8))(v6, v0);
  if (v14)
  {

    sub_1DC51478C();

    if (v23)
    {
      sub_1DC2BAD90(&v22, v24);
      sub_1DC291F78(v24, &v22);
      sub_1DC5149FC();
      if (swift_dynamicCast())
      {
        goto LABEL_4;
      }

      sub_1DC291F78(v24, &v22);
      v15 = sub_1DC342AFC(&v22);
      sub_1DC28EB30(&v22, &qword_1ECC7D3F0, &qword_1DC5238B0);
      if (!v15)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        goto LABEL_10;
      }

      sub_1DC5145FC();

      v16 = sub_1DC514F8C();

      v17 = sub_1DC2E5024(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DC5221A0;
      strcpy((inited + 32), "usoQuantifier");
      *(inited + 46) = -4864;
      *(inited + 48) = 0xD000000000000012;
      *(inited + 56) = 0x80000001DC53D420;
      *(inited + 64) = 0x507473694C6F7375;
      *(inited + 72) = 0xEF6E6F697469736FLL;
      *(inited + 80) = 0xD000000000000012;
      *(inited + 88) = 0x80000001DC53D440;
      *(inited + 96) = 0x72656767697274;
      *(inited + 104) = 0xE700000000000000;
      sub_1DC2E5CA4(inited, v17);
      swift_setDeallocating();
      sub_1DC2A180C();

      if (!sub_1DC5147BC())
      {
LABEL_4:
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      else
      {
        sub_1DC5145FC();
        v19 = sub_1DC514F8C();

        v20 = sub_1DC2E5024(v19);
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1DC524AE0;
        strcpy((v21 + 32), "usoQuantifier");
        *(v21 + 46) = -4864;
        *(v21 + 48) = 0xD000000000000012;
        *(v21 + 56) = 0x80000001DC53D420;
        *(v21 + 64) = 0x507473694C6F7375;
        *(v21 + 72) = 0xEF6E6F697469736FLL;
        *(v21 + 80) = 0x656D695465746164;
        *(v21 + 88) = 0xEF72656767697254;
        *(v21 + 96) = 0xD000000000000014;
        *(v21 + 104) = 0x80000001DC540430;
        *(v21 + 112) = 0xD000000000000018;
        *(v21 + 120) = 0x80000001DC540450;
        sub_1DC2E5CA4(v21, v20);

        swift_setDeallocating();
        sub_1DC2A180C();
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

LABEL_10:

      goto LABEL_11;
    }

    sub_1DC28EB30(&v22, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

LABEL_11:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC343144()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1DC346A1C(0xD000000000000012, 0x80000001DC53E160);
  if (!result)
  {
    result = sub_1DC51801C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3431F0()
{
  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_69_4(&_MergedGlobals_8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC34328C()
{
  if (qword_1EDAC83C8 != -1)
  {
    OUTLINED_FUNCTION_46_7(&qword_1EDAC83C8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3432FC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(28, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343364()
{
  if (qword_1EDAC83D0 != -1)
  {
    OUTLINED_FUNCTION_24_5(&qword_1EDAC83D0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3433D4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343440()
{
  if (qword_1EDAC83D8 != -1)
  {
    OUTLINED_FUNCTION_21_9(&qword_1EDAC83D8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3434B0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34351C()
{
  if (qword_1EDAC83E0 != -1)
  {
    OUTLINED_FUNCTION_19_12(&qword_1EDAC83E0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34358C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(47, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3435F8()
{
  if (qword_1EDAC83E8 != -1)
  {
    OUTLINED_FUNCTION_18_11(&qword_1EDAC83E8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343668()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(53, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3436D4()
{
  if (qword_1EDAC83F0 != -1)
  {
    OUTLINED_FUNCTION_85_2(&qword_1EDAC83F0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC343744()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3437AC()
{
  if (qword_1EDAC83F8 != -1)
  {
    OUTLINED_FUNCTION_83_1(&qword_1EDAC83F8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34381C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343888()
{
  if (qword_1EDAC8400 != -1)
  {
    OUTLINED_FUNCTION_81_1(&qword_1EDAC8400);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3438F8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343964()
{
  if (qword_1EDAC8408 != -1)
  {
    OUTLINED_FUNCTION_79_3(&qword_1EDAC8408);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

float sub_1DC343A00()
{
  if (qword_1EDAC8410 != -1)
  {
    OUTLINED_FUNCTION_11_12(&qword_1EDAC8410);
  }

  OUTLINED_FUNCTION_22_1();
  v3 = qword_1EDAC8668;
  v4 = unk_1EDAC8670;
  v5 = dword_1EDAC8678;
  v6 = qword_1EDAC8680;
  v7 = unk_1EDAC8688;
  v8 = unk_1EDAC8690;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE8, &unk_1DC524B20);
  sub_1DC3137AC(v0, &v2);
  return v2;
}

void sub_1DC343A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_166();
  a18 = v19;
  a19 = v20;
  a11 = 1061158912;
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  v21 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_8_8(35, 0x80000001DC540B40, &a11, v21, &qword_1EDAC8668);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343B08()
{
  if (qword_1EDAC8418 != -1)
  {
    OUTLINED_FUNCTION_64_1(&qword_1EDAC8418);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343B78()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(39, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343BE4()
{
  if (qword_1EDAC8420 != -1)
  {
    OUTLINED_FUNCTION_63_4(&qword_1EDAC8420);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343C54()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(18, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343CC0()
{
  if (qword_1EDAC8428 != -1)
  {
    OUTLINED_FUNCTION_62_8(&qword_1EDAC8428);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343D30()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(39, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343D9C()
{
  if (qword_1EDAC8430 != -1)
  {
    OUTLINED_FUNCTION_61_4(&qword_1EDAC8430);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343E0C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(41, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343E78()
{
  if (qword_1EDAC8438 != -1)
  {
    OUTLINED_FUNCTION_60_5(&qword_1EDAC8438);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343EE8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343F54()
{
  if (qword_1EDAC8440 != -1)
  {
    OUTLINED_FUNCTION_59_4(&qword_1EDAC8440);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343FC4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(31, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

double sub_1DC344030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EDAC8440 != -1)
  {
    a1 = OUTLINED_FUNCTION_59_4(&qword_1EDAC8440);
  }

  OUTLINED_FUNCTION_12_11(a1, a2, a3, a4, a5, a6, a7, a8, v10);
  OUTLINED_FUNCTION_5_18();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_100_2(v8);
  *&result = OUTLINED_FUNCTION_4_14().n128_u64[0];
  return result;
}

uint64_t sub_1DC3440A4()
{
  if (qword_1EDAC8448 != -1)
  {
    OUTLINED_FUNCTION_58_6(&qword_1EDAC8448);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC344140()
{
  if (qword_1EDAC8450 != -1)
  {
    OUTLINED_FUNCTION_53_8(&qword_1EDAC8450);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3441B0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(29, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344218()
{
  if (qword_1EDAC8458 != -1)
  {
    OUTLINED_FUNCTION_51_7(&qword_1EDAC8458);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344288()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(23, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3442F0()
{
  if (qword_1EDAC8470 != -1)
  {
    OUTLINED_FUNCTION_45_7(&qword_1EDAC8470);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344360()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3443C8()
{
  if (qword_1EDAC8478 != -1)
  {
    OUTLINED_FUNCTION_44_7(&qword_1EDAC8478);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC344464()
{
  if (qword_1EDAC8480 != -1)
  {
    OUTLINED_FUNCTION_41_7(&qword_1EDAC8480);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3444D4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344540()
{
  if (qword_1EDAC8498 != -1)
  {
    OUTLINED_FUNCTION_36_10(&qword_1EDAC8498);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3445B0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34461C()
{
  if (qword_1EDAC84A0 != -1)
  {
    OUTLINED_FUNCTION_34_8(&qword_1EDAC84A0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34468C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3446F8()
{
  if (qword_1EDAC84A8 != -1)
  {
    OUTLINED_FUNCTION_32_8(&qword_1EDAC84A8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344768()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(47, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3447D4()
{
  if (qword_1EDAC84B0 != -1)
  {
    OUTLINED_FUNCTION_30_7(&qword_1EDAC84B0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344844()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(50, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3448B0()
{
  if (qword_1EDAC84C0 != -1)
  {
    OUTLINED_FUNCTION_26_6(&qword_1EDAC84C0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344920()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(24, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344988()
{
  if (qword_1EDAC84C8 != -1)
  {
    OUTLINED_FUNCTION_25_7(&qword_1EDAC84C8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t sub_1DC344A0C()
{
  if (qword_1EDAC84D0 != -1)
  {
    OUTLINED_FUNCTION_23_11(&qword_1EDAC84D0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344A7C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344AE4()
{
  if (qword_1EDAC84D8 != -1)
  {
    OUTLINED_FUNCTION_22_7(&qword_1EDAC84D8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344B54()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344BC0()
{
  if (qword_1EDAC84E0 != -1)
  {
    OUTLINED_FUNCTION_20_10(&qword_1EDAC84E0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC344C58()
{
  if (qword_1EDAC84E8 != -1)
  {
    OUTLINED_FUNCTION_17_8(&qword_1EDAC84E8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344CC8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(23, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344D34()
{
  if (qword_1EDAC84F0 != -1)
  {
    OUTLINED_FUNCTION_86_2(&qword_1EDAC84F0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344DA4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(23, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344E10()
{
  if (qword_1EDAC84F8 != -1)
  {
    OUTLINED_FUNCTION_84_1(&qword_1EDAC84F8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344E80()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(25, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

double sub_1DC344EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EDAC84F8 != -1)
  {
    a1 = OUTLINED_FUNCTION_84_1(&qword_1EDAC84F8);
  }

  OUTLINED_FUNCTION_12_11(a1, a2, a3, a4, a5, a6, a7, a8, v10);
  OUTLINED_FUNCTION_5_18();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_100_2(v8);
  *&result = OUTLINED_FUNCTION_4_14().n128_u64[0];
  return result;
}

uint64_t sub_1DC344F60()
{
  if (qword_1EDAC8500 != -1)
  {
    OUTLINED_FUNCTION_82_1(&qword_1EDAC8500);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344FD0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34503C()
{
  if (qword_1EDAC8508 != -1)
  {
    OUTLINED_FUNCTION_80_3(&qword_1EDAC8508);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3450AC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(21, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345114()
{
  if (qword_1EDAC8510 != -1)
  {
    OUTLINED_FUNCTION_78_3(&qword_1EDAC8510);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345184()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3451F0()
{
  if (qword_1EDAC8518 != -1)
  {
    OUTLINED_FUNCTION_77_2(&qword_1EDAC8518);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345260()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3452CC()
{
  if (qword_1EDAC8520 != -1)
  {
    OUTLINED_FUNCTION_76_2(&qword_1EDAC8520);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34533C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(26, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3453A8()
{
  if (qword_1EDAC8528 != -1)
  {
    OUTLINED_FUNCTION_75_2(&qword_1EDAC8528);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345418()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345484()
{
  if (qword_1EDAC8530 != -1)
  {
    OUTLINED_FUNCTION_74_3(&qword_1EDAC8530);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3454F4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(18, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345560()
{
  if (qword_1EDAC8538 != -1)
  {
    OUTLINED_FUNCTION_73_2(&qword_1EDAC8538);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3455D0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(29, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34563C()
{
  if (qword_1EDAC8540 != -1)
  {
    OUTLINED_FUNCTION_72_4(&qword_1EDAC8540);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3456AC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(28, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345718()
{
  if (qword_1EDAC8548 != -1)
  {
    OUTLINED_FUNCTION_71_4(&qword_1EDAC8548);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345788()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(40, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3457F4()
{
  if (qword_1EDAC8550 != -1)
  {
    OUTLINED_FUNCTION_70_3(&qword_1EDAC8550);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345864()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(31, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3458D0()
{
  if (qword_1EDAC8558 != -1)
  {
    OUTLINED_FUNCTION_68_2(&qword_1EDAC8558);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC34596C()
{
  if (qword_1EDAC8560 != -1)
  {
    OUTLINED_FUNCTION_67_2(&qword_1EDAC8560);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3459DC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345A48()
{
  if (qword_1EDAC8568 != -1)
  {
    OUTLINED_FUNCTION_66_5(&qword_1EDAC8568);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345AB8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345B24()
{
  if (qword_1EDAC8570 != -1)
  {
    OUTLINED_FUNCTION_65_2(&qword_1EDAC8570);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC345BC0(uint64_t a1, char a2)
{
  v9[0] = sub_1DC312FB4(a2);
  v9[1] = v2;
  sub_1DC313634();
  sub_1DC313670();
  v3 = OUTLINED_FUNCTION_112_0();
  return OUTLINED_FUNCTION_94_0(v3, v4, v9, v5, v6, v7, v3);
}

uint64_t sub_1DC345C40()
{
  if (qword_1EDAC8578 != -1)
  {
    OUTLINED_FUNCTION_57_8(&qword_1EDAC8578);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC345CB0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(28, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345D18()
{
  if (qword_1EDAC8580 != -1)
  {
    OUTLINED_FUNCTION_56_10(&qword_1EDAC8580);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345D88()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345DF4()
{
  if (qword_1EDAC8588 != -1)
  {
    OUTLINED_FUNCTION_55_9(&qword_1EDAC8588);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345E64()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(37, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345ED0()
{
  if (qword_1EDAC8590 != -1)
  {
    OUTLINED_FUNCTION_54_10(&qword_1EDAC8590);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345F40()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(25, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345FAC()
{
  if (qword_1EDAC8598 != -1)
  {
    OUTLINED_FUNCTION_52_7(&qword_1EDAC8598);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34601C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(26, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346088()
{
  if (qword_1EDAC85A0 != -1)
  {
    OUTLINED_FUNCTION_50_8(&qword_1EDAC85A0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3460F8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(26, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346164()
{
  if (qword_1EDAC85A8 != -1)
  {
    OUTLINED_FUNCTION_48_6(&qword_1EDAC85A8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC346200()
{
  v7[0] = sub_1DC313520(1);
  v7[1] = v0;
  sub_1DC313634();
  sub_1DC313670();
  v1 = OUTLINED_FUNCTION_112_0();
  return OUTLINED_FUNCTION_94_0(v1, v2, v7, v3, v4, v5, v1);
}

uint64_t sub_1DC346280()
{
  if (qword_1EDAC85B0 != -1)
  {
    OUTLINED_FUNCTION_43_10(&qword_1EDAC85B0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3462F0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34635C()
{
  if (qword_1EDAC85B8 != -1)
  {
    OUTLINED_FUNCTION_42_9(&qword_1EDAC85B8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC3463F4()
{
  if (qword_1EDAC85C0 != -1)
  {
    OUTLINED_FUNCTION_39_7(&qword_1EDAC85C0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC346464()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(21, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3464CC()
{
  if (qword_1EDAC85C8 != -1)
  {
    OUTLINED_FUNCTION_38_8(&qword_1EDAC85C8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34653C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3465A8()
{
  if (qword_1EDAC85D0 != -1)
  {
    OUTLINED_FUNCTION_35_10(&qword_1EDAC85D0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC346618()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(31, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346680()
{
  if (qword_1EDAC85D8 != -1)
  {
    OUTLINED_FUNCTION_33_9(&qword_1EDAC85D8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3466F0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346758()
{
  if (qword_1EDAC85E0 != -1)
  {
    OUTLINED_FUNCTION_31_10(&qword_1EDAC85E0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3467C8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(37, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346830()
{
  if (qword_1EDAC85E8 != -1)
  {
    OUTLINED_FUNCTION_29_4(&qword_1EDAC85E8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3468A0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346908()
{
  if (qword_1EDAC85F0 != -1)
  {
    OUTLINED_FUNCTION_27_10(&qword_1EDAC85F0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t sub_1DC3469A0()
{
  v6 = 1;
  sub_1DC313634();
  sub_1DC313670();
  v0 = OUTLINED_FUNCTION_112_0();
  return OUTLINED_FUNCTION_94_0(v0, v1, &v6, v2, v3, v4, v0);
}

id sub_1DC346A1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DC5176FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t OUTLINED_FUNCTION_73_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1DC3137AC(a1, &a13);
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return sub_1DC312FB4(2);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_1DC313520(1);
}

uint64_t sub_1DC346B48()
{
  type metadata accessor for NLBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  v0[2] = [objc_opt_self() sharedStream];
  sub_1DC516A4C();
  swift_allocObject();
  v0[3] = sub_1DC516A3C();
  v1 = type metadata accessor for FeatureChecker();
  result = sub_1DC2BA4FC();
  v0[7] = v1;
  v0[8] = &off_1F57FB688;
  v0[4] = result;
  qword_1ECC8F410 = v0;
  return result;
}

uint64_t sub_1DC346BE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DC28F9B0(a3, v6 + 32);
  return v6;
}

void sub_1DC346C3C()
{
  OUTLINED_FUNCTION_33();
  v87 = v0;
  v2 = v1;
  v80 = v3;
  v81 = v4;
  v6 = v5;
  v8 = v7;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v83 = v10;
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_15();
  v76 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  v79 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  v21 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v85 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v75 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  v82 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  v88 = [objc_allocWithZone(MEMORY[0x1E69CF300]) init];
  if (v88)
  {
    [v88 setExists_];
  }

  v30 = *(v87 + 24);
  v77 = v8;
  v78 = v6;
  v86 = v30;
  v31 = sub_1DC516A2C();
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(MEMORY[0x1E69CF2E8]) init];
    if (!v33)
    {
      sub_1DC28D414();
      v39 = v83;
      v38 = v84;
      OUTLINED_FUNCTION_19_1();
      v40(v13);
      v41 = sub_1DC516F6C();
      v42 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v42))
      {
        v43 = OUTLINED_FUNCTION_35_8();
        *v43 = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DC287000, v44, v45, "Failed to create CDM bridge context message");
        MEMORY[0x1E1298840](v43, -1, -1);
      }

      else
      {
      }

      (*(v39 + 8))(v13, v38);
      goto LABEL_28;
    }

    v34 = v33;
    if (v2)
    {
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v20, 1, v21);
      if (v35)
      {
        sub_1DC348714(v20);
      }

      else
      {
        v46 = v21;
        v47 = v85;
        OUTLINED_FUNCTION_128();
        v48(v29, v20, v46);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v49 = v82;
        v50(v82, v29, v46);
        v51 = sub_1DC299428(v49);
        [v34 setTrpId_];

        v52 = v47;
        v21 = v46;
        (*(v52 + 8))(v29, v46);
      }
    }

    v53 = v34;
    [v34 setStartedOrChanged_];
    v54 = *(v87 + 56);
    v55 = *(v87 + 64);
    __swift_project_boxed_opaque_existential_1((v87 + 32), v54);
    v56 = v32;
    if ((*(v55 + 8))(v54, v55))
    {
      v57 = v79;
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v57, 1, v21);
      if (v35)
      {
        sub_1DC348714(v57);
      }

      else
      {
        v58 = v21;
        v59 = v85;
        OUTLINED_FUNCTION_128();
        v60 = v75;
        v61(v75, v57, v58);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v62 = v82;
        v63(v82, v60, v58);
        v64 = sub_1DC299428(v62);
        [v53 setSubRequestId_];

        v65 = v59;
        v21 = v58;
        (*(v65 + 8))(v60, v58);
      }
    }

    [v56 setCdmBridgeContext_];
    [*(v87 + 16) emitMessage_];
    v66 = sub_1DC516A1C();
    if (!v66 || (v67 = v66, v68 = [v66 captureSnapshot], v67, !v68))
    {
LABEL_27:

LABEL_28:
      OUTLINED_FUNCTION_34();
      return;
    }

    v69 = v21;
    v70 = [objc_opt_self() context];
    if (v70)
    {
      v71 = v70;
      v72 = v76;
      sub_1DC510B0C();
      v73 = OUTLINED_FUNCTION_39(v72, 1, v69);
      if (v35)
      {
        v74 = 0;
      }

      else
      {
        v74 = sub_1DC510B2C();
        v73 = (*(v85 + 8))(v72, v69);
      }

      OUTLINED_FUNCTION_13_10(v73, sel_logWithEventContext_requestIdentifier_);

      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC347240()
{
  OUTLINED_FUNCTION_33();
  v105 = v0;
  v2 = v1;
  v97 = v3;
  v98 = v4;
  v6 = v5;
  LODWORD(v104) = v7;
  LODWORD(v103) = v8;
  v9 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_15();
  v95 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  v96 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v91 - v23;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v101 = v26;
  v102 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v94 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  v99 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v91 - v31;
  v33 = [objc_allocWithZone(MEMORY[0x1E69CF2F0]) init];
  if (!v33)
  {
    sub_1DC28D414();
    v45 = OUTLINED_FUNCTION_9_12();
    v46(v45);
    v47 = sub_1DC516F6C();
    v48 = sub_1DC517BAC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v49);
      OUTLINED_FUNCTION_16_6(&dword_1DC287000, v50, v48, "Failed to create CDM finished event");
      OUTLINED_FUNCTION_40_0();
    }

    (*(v11 + 8))(v15, v9);
    goto LABEL_33;
  }

  v92 = v11;
  v93 = v9;
  v106 = v33;
  [v33 setDelegatedUserDialogAct_];
  if (v104)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  [v106 setStatus_];
  v35 = v105;
  v36 = v2;
  v104 = v105[3];
  v37 = sub_1DC516A2C();
  if (v37)
  {
    v38 = v37;
    v39 = v6;
    v40 = v35;
    v41 = [objc_allocWithZone(MEMORY[0x1E69CF2E8]) init];
    if (!v41)
    {
      v53 = v38;
      sub_1DC28D414();
      v55 = v92;
      v54 = v93;
      OUTLINED_FUNCTION_19_1();
      v56 = v100;
      v57(v100);
      v58 = sub_1DC516F6C();
      v59 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v59))
      {
        v60 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v60);
        OUTLINED_FUNCTION_16_6(&dword_1DC287000, v61, v56, "Failed to create CDM bridge context message");
        OUTLINED_FUNCTION_40_0();
      }

      else
      {
      }

      (*(v55 + 8))(v56, v54);
      goto LABEL_33;
    }

    v42 = v41;
    v103 = v38;
    v100 = v39;
    v43 = v102;
    if (v36)
    {
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v24, 1, v43);
      if (v44)
      {
        sub_1DC348714(v24);
      }

      else
      {
        v62 = v101;
        OUTLINED_FUNCTION_128();
        v63(v32, v24, v43);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v64 = v99;
        v65(v99, v32, v43);
        v66 = sub_1DC299428(v64);
        [v42 setTrpId_];

        (*(v62 + 8))(v32, v43);
      }
    }

    v67 = v42;
    [v42 setEnded_];
    v68 = v40[7];
    v69 = v40[8];
    v70 = v40;
    __swift_project_boxed_opaque_existential_1(v40 + 4, v68);
    v71 = *(v69 + 8);
    v72 = v69;
    v73 = v102;
    if (v71(v68, v72))
    {
      v74 = v96;
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v74, 1, v73);
      if (v44)
      {
        sub_1DC348714(v74);
      }

      else
      {
        v75 = v101;
        OUTLINED_FUNCTION_128();
        v76 = v94;
        v77(v94, v74, v73);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v78 = v99;
        v79(v99, v76, v73);
        v80 = sub_1DC299428(v78);
        [v67 setSubRequestId_];

        (*(v75 + 8))(v76, v73);
      }
    }

    v81 = v103;
    [v103 setCdmBridgeContext_];
    [v70[2] emitMessage_];
    v82 = sub_1DC516A1C();
    if (!v82 || (v83 = v82, v84 = [v82 captureSnapshot], v83, !v84))
    {
LABEL_32:

LABEL_33:
      OUTLINED_FUNCTION_34();
      return;
    }

    v85 = [objc_opt_self() context];
    if (v85)
    {
      v86 = v85;
      v87 = v95;
      sub_1DC510B0C();
      v88 = v102;
      v89 = OUTLINED_FUNCTION_39(v87, 1, v102);
      if (v44)
      {
        v90 = 0;
      }

      else
      {
        v90 = sub_1DC510B2C();
        v89 = (*(v101 + 8))(v87, v88);
      }

      OUTLINED_FUNCTION_13_10(v89, sel_logWithEventContext_requestIdentifier_);

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}