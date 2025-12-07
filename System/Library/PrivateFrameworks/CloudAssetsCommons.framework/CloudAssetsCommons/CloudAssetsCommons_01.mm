void CloudAssets_AssetStreamHandle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_76();
  sub_2437C8E90();
  if (!v0)
  {
    OUTLINED_FUNCTION_34_0();
    sub_2437C8FB4();
    OUTLINED_FUNCTION_20_1();
    if (v1)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2437EB574();
    }

    OUTLINED_FUNCTION_20_1();
    if (v2)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2437EB574();
    }

    type metadata accessor for CloudAssets_AssetStreamHandle(0);
    OUTLINED_FUNCTION_27_0();
  }
}

void sub_2437C8E90()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_62(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_51();
  type metadata accessor for CloudAssets_Asset(v7);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = OUTLINED_FUNCTION_58();
  type metadata accessor for CloudAssets_AssetStreamHandle(v9);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_123();
  if (v10)
  {
    sub_2437B47C4(v0, &qword_27ED867E8, &qword_2437ED990);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    sub_2437C27F4();
    OUTLINED_FUNCTION_0_5();
    sub_2437C98AC(v11, v12, &protocol conformance descriptor for CloudAssets_Asset);
    v13 = OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_100(v13, 1, v14, v15);
    OUTLINED_FUNCTION_70();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void sub_2437C8FB4()
{
  OUTLINED_FUNCTION_14_3();
  v12[0] = v1;
  v12[1] = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_48(v4);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  v8 = type metadata accessor for CloudAssets_Credential(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v3(0);
  sub_2437C45F0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2437B47C4(v7, &qword_27ED867E0, &qword_2437ED988);
  }

  else
  {
    sub_2437C27F4();
    OUTLINED_FUNCTION_1_6();
    sub_2437C98AC(v10, v11, &protocol conformance descriptor for CloudAssets_Credential);
    sub_2437EB594();
    OUTLINED_FUNCTION_23_0();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_2437C965C()
{
  OUTLINED_FUNCTION_59();
  v2 = v1;
  sub_2437EBA94();
  v2(0);
  v3 = OUTLINED_FUNCTION_142();
  sub_2437C98AC(v3, v4, v0);
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437C9734(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_8_3();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_AssetStreamHandle);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v3);
}

uint64_t sub_2437C9798()
{
  OUTLINED_FUNCTION_8_3();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_AssetStreamHandle);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C97F4(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_8_3();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_AssetStreamHandle);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

uint64_t sub_2437C9854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2437EBA94();
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437C98AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437C98F4@<X0>(char *__s1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
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
      result = sub_2437C9B3C(v9, v10, a4 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        MEMORY[0x245D40480](v5);
        __break(1u);
        JUMPOUT(0x2437C9A60);
      }

      result = 1;
      break;
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
      break;
  }

  *a5 = result & 1;
  return result;
}

char *sub_2437C9A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2437EB244();
  v11 = result;
  if (result)
  {
    result = sub_2437EB264();
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

  sub_2437EB254();
  sub_2437C98F4(v11, a4, a5, &v13);
  sub_2437B7168(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return (v12 & 1);
}

char *sub_2437C9B3C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2437EB244();
  v8 = result;
  if (result)
  {
    result = sub_2437EB264();
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

  result = sub_2437EB254();
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

uint64_t sub_2437C9BF4(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CloudAssets_Asset.Protector(0);
  MEMORY[0x28223BE20](v4);
  v185 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v174 - v7;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F0, &qword_2437ED998);
  MEMORY[0x28223BE20](v183);
  v184 = &v174 - v9;
  v186 = type metadata accessor for CloudAssets_Asset.ID(0);
  MEMORY[0x28223BE20](v186);
  v189 = (&v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v174 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F8, &qword_2437ED9A0);
  MEMORY[0x28223BE20](v14);
  v187 = &v174 - v15;
  v190 = type metadata accessor for CloudAssets_Asset(0);
  v16 = MEMORY[0x28223BE20](v190);
  v18 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = (&v174 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_273;
  }

  if (!v22 || a1 == a2)
  {
    v170 = 1;
    return v170 & 1;
  }

  v177 = 0;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v188 = a2 + v23;
  v175 = *(v19 + 72);
  v179 = v8;
  v180 = v4;
  v25 = v184;
  v182 = v13;
  v176 = v14;
  v178 = v18;
  while (1)
  {
    v181 = v24;
    sub_2437C29BC();
    if (!v22)
    {
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
LABEL_299:
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
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
    }

    sub_2437C29BC();
    v26 = *(v14 + 48);
    v27 = v187;
    sub_2437C45F0();
    sub_2437C45F0();
    v28 = v186;
    if (__swift_getEnumTagSinglePayload(v27, 1, v186) == 1)
    {
      v34 = __swift_getEnumTagSinglePayload(v27 + v26, 1, v28) == 1;
      v29 = v178;
      v30 = v27;
      v31 = v180;
      if (!v34)
      {
        goto LABEL_268;
      }

      sub_2437B47C4(v30, &qword_27ED867C8, &qword_2437ED970);
      v32 = v22;
      goto LABEL_122;
    }

    sub_2437C45F0();
    if (__swift_getEnumTagSinglePayload(v27 + v26, 1, v28) == 1)
    {
      sub_2437C2A14();
      v30 = v27;
LABEL_268:
      v171 = &qword_27ED867F8;
      v172 = &qword_2437ED9A0;
      goto LABEL_271;
    }

    v33 = v189;
    sub_2437C27F4();
    v34 = *v13 == *v33 && v13[1] == v33[1];
    v29 = v178;
    v32 = v22;
    if (!v34 && (sub_2437EBA14() & 1) == 0)
    {
      break;
    }

    v35 = v13[2] == v189[2] && v13[3] == v189[3];
    if (!v35 && (sub_2437EBA14() & 1) == 0)
    {
      break;
    }

    v36 = v13[4];
    v37 = v13[5];
    v38 = v37 >> 62;
    v40 = v189[4];
    v39 = v189[5];
    v41 = v39 >> 62;
    if (v35)
    {
      v43 = 0;
      if (!v36)
      {
        if (v37 == 0xC000000000000000)
        {
          v42 = v39 >> 62 == 3;
          v35 = v41 == 3;
        }

        else
        {
          v42 = 0;
          v35 = 0;
        }

        if (v42)
        {
          v43 = 0;
          if (!v40)
          {
            v35 = v39 == 0xC000000000000000;
            if (v39 == 0xC000000000000000)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

    else
    {
      v43 = 0;
      switch(v38)
      {
        case 0uLL:
          v43 = BYTE6(v37);
          break;
        case 1uLL:
          v35 = HIDWORD(v36) == v36;
          if (__OFSUB__(HIDWORD(v36), v36))
          {
            goto LABEL_284;
          }

          v43 = HIDWORD(v36) - v36;
          break;
        case 2uLL:
          v45 = *(v36 + 16);
          v44 = *(v36 + 24);
          v46 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          v35 = v43 == 0;
          if (!v46)
          {
            break;
          }

          goto LABEL_285;
        case 3uLL:
          break;
        default:
LABEL_321:
          JUMPOUT(0);
      }
    }

    switch(v41)
    {
      case 1uLL:
        LODWORD(v47) = HIDWORD(v40) - v40;
        if (__OFSUB__(HIDWORD(v40), v40))
        {
          goto LABEL_276;
        }

        v47 = v47;
LABEL_46:
        if (v43 != v47)
        {
          goto LABEL_265;
        }

        v35 = v43 == 1;
        if (v43 < 1)
        {
          goto LABEL_75;
        }

        break;
      case 2uLL:
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        v46 = __OFSUB__(v48, v49);
        v47 = v48 - v49;
        if (!v46)
        {
          goto LABEL_46;
        }

        goto LABEL_277;
      case 3uLL:
        if (v43)
        {
          goto LABEL_265;
        }

        goto LABEL_75;
      default:
        v47 = BYTE6(v39);
        goto LABEL_46;
    }

    v50 = v40 >> 32;
    switch(v38)
    {
      case 1:
        if (v36 >> 32 < v36)
        {
          goto LABEL_292;
        }

        v55 = v36;
        sub_2437B6C6C(v40, v39);
        sub_2437B6C6C(v40, v39);
        sub_2437B6C6C(v40, v39);
        v53 = sub_2437EB244();
        if (!v53)
        {
          goto LABEL_66;
        }

        v56 = sub_2437EB264();
        if (__OFSUB__(v55, v56))
        {
          goto LABEL_300;
        }

        v53 += v55 - v56;
LABEL_66:
        sub_2437EB254();
        v57 = v53;
        v58 = v177;
        sub_2437C98F4(v57, v40, v39, __s1);
        v177 = v58;
        sub_2437B7168(v40, v39);
        sub_2437B7168(v40, v39);
        sub_2437B7168(v40, v39);
        v13 = v182;
        v29 = v178;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_265;
        }

        break;
      case 2:
        v51 = *(v36 + 16);
        v52 = *(v36 + 24);
        sub_2437B6C6C(v40, v39);
        sub_2437B6C6C(v40, v39);
        sub_2437B6C6C(v40, v39);
        v53 = sub_2437EB244();
        if (!v53)
        {
          goto LABEL_56;
        }

        v54 = sub_2437EB264();
        if (__OFSUB__(v51, v54))
        {
          goto LABEL_299;
        }

        v53 += v51 - v54;
LABEL_56:
        if (!__OFSUB__(v52, v51))
        {
          goto LABEL_66;
        }

        goto LABEL_293;
      case 3:
        memset(__s1, 0, 14);
        if (!v41)
        {
          goto LABEL_68;
        }

        if (v41 == 2)
        {
          goto LABEL_72;
        }

        if (v50 >= v40)
        {
          goto LABEL_71;
        }

        goto LABEL_306;
      default:
        LOWORD(__s1[0]) = v13[4];
        BYTE2(__s1[0]) = BYTE2(v36);
        BYTE3(__s1[0]) = BYTE3(v36);
        BYTE4(__s1[0]) = BYTE4(v36);
        BYTE5(__s1[0]) = BYTE5(v36);
        BYTE6(__s1[0]) = BYTE6(v36);
        HIBYTE(__s1[0]) = HIBYTE(v36);
        LOWORD(__s1[1]) = v37;
        BYTE2(__s1[1]) = BYTE2(v37);
        BYTE3(__s1[1]) = BYTE3(v37);
        BYTE4(__s1[1]) = BYTE4(v37);
        BYTE5(__s1[1]) = BYTE5(v37);
        if (v41)
        {
          if (v41 == 1)
          {
            if (v50 < v40)
            {
              goto LABEL_305;
            }

LABEL_71:
            sub_2437B6C6C(v40, v39);
            sub_2437B6C6C(v40, v39);
            v60 = v39 & 0x3FFFFFFFFFFFFFFFLL;
            v61 = v40;
            v62 = v40 >> 32;
          }

          else
          {
LABEL_72:
            v63 = *(v40 + 16);
            v64 = *(v40 + 24);
            sub_2437B6C6C(v40, v39);
            sub_2437B6C6C(v40, v39);
            v60 = v39 & 0x3FFFFFFFFFFFFFFFLL;
            v61 = v63;
            v62 = v64;
          }

          v65 = v177;
          v66 = sub_2437C9B3C(v61, v62, v60, __s1);
          sub_2437B7168(v40, v39);
          sub_2437B7168(v40, v39);
          v177 = v65;
          if (v65)
          {
            goto LABEL_320;
          }

          v13 = v182;
          if ((v66 & 1) == 0)
          {
            goto LABEL_265;
          }
        }

        else
        {
LABEL_68:
          __s2 = v40;
          v192 = v39;
          v193 = BYTE2(v39);
          v194 = BYTE3(v39);
          v195 = BYTE4(v39);
          v196 = BYTE5(v39);
          v59 = memcmp(__s1, &__s2, BYTE6(v39));
          v13 = v182;
          if (v59)
          {
            goto LABEL_265;
          }
        }

        break;
    }

LABEL_75:
    v67 = v13[6];
    v68 = v13[7];
    v69 = v68 >> 62;
    v71 = v189[6];
    v70 = v189[7];
    v72 = v70 >> 62;
    if (!v35)
    {
      v74 = 0;
      switch(v69)
      {
        case 0uLL:
          v74 = BYTE6(v68);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v67), v67))
          {
            goto LABEL_287;
          }

          v74 = HIDWORD(v67) - v67;
          break;
        case 2uLL:
          v76 = *(v67 + 16);
          v75 = *(v67 + 24);
          v46 = __OFSUB__(v75, v76);
          v74 = v75 - v76;
          if (!v46)
          {
            break;
          }

          goto LABEL_286;
        case 3uLL:
          break;
        default:
          goto LABEL_321;
      }

LABEL_91:
      switch(v72)
      {
        case 1uLL:
          LODWORD(v77) = HIDWORD(v71) - v71;
          if (__OFSUB__(HIDWORD(v71), v71))
          {
            goto LABEL_278;
          }

          v77 = v77;
LABEL_100:
          if (v74 != v77)
          {
            goto LABEL_265;
          }

          if (v74 < 1)
          {
            goto LABEL_121;
          }

          break;
        case 2uLL:
          v79 = *(v71 + 16);
          v78 = *(v71 + 24);
          v46 = __OFSUB__(v78, v79);
          v77 = v78 - v79;
          if (!v46)
          {
            goto LABEL_100;
          }

          goto LABEL_279;
        case 3uLL:
          if (v74)
          {
            goto LABEL_265;
          }

          goto LABEL_121;
        default:
          v77 = BYTE6(v70);
          goto LABEL_100;
      }

      v80 = v71;
      v81 = v71 >> 32;
      switch(v69)
      {
        case 1:
          v87 = v67 >> 32;
          if (v67 >> 32 < v67)
          {
            goto LABEL_294;
          }

          v88 = v67;
          sub_2437B6C6C(v71, v70);
          sub_2437B6C6C(v71, v70);
          sub_2437B6C6C(v71, v70);
          v84 = v68 & 0x3FFFFFFFFFFFFFFFLL;
          v85 = v88;
          v86 = v87;
LABEL_113:
          v89 = v177;
          v90 = sub_2437C9A70(v85, v86, v84, v71, v70);
          v177 = v89;
          sub_2437B7168(v71, v70);
          sub_2437B7168(v71, v70);
          goto LABEL_120;
        case 2:
          v82 = *(v67 + 16);
          v83 = *(v67 + 24);
          sub_2437B6C6C(v71, v70);
          sub_2437B6C6C(v71, v70);
          sub_2437B6C6C(v71, v70);
          v84 = v68 & 0x3FFFFFFFFFFFFFFFLL;
          v85 = v82;
          v86 = v83;
          goto LABEL_113;
        case 3:
          memset(__s1, 0, 14);
          if (!v72)
          {
            goto LABEL_114;
          }

          if (v72 == 2)
          {
            v80 = *(v71 + 16);
            v81 = *(v71 + 24);
          }

          else if (v81 < v71)
          {
            goto LABEL_308;
          }

          goto LABEL_119;
        default:
          __s1[0] = v67;
          LOWORD(__s1[1]) = v68;
          BYTE2(__s1[1]) = BYTE2(v68);
          BYTE3(__s1[1]) = BYTE3(v68);
          BYTE4(__s1[1]) = BYTE4(v68);
          BYTE5(__s1[1]) = BYTE5(v68);
          if (v72)
          {
            if (v72 == 1)
            {
              if (v81 < v71)
              {
                goto LABEL_307;
              }
            }

            else
            {
              v80 = *(v71 + 16);
              v81 = *(v71 + 24);
            }

LABEL_119:
            sub_2437B6C6C(v71, v70);
            sub_2437B6C6C(v71, v70);
            v91 = v80;
            v92 = v177;
            v90 = sub_2437C9B3C(v91, v81, v70 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            sub_2437B7168(v71, v70);
            sub_2437B7168(v71, v70);
            v177 = v92;
            if (v92)
            {
              goto LABEL_320;
            }

LABEL_120:
            if ((v90 & 1) == 0)
            {
              goto LABEL_265;
            }
          }

          else
          {
LABEL_114:
            __s2 = v71;
            v192 = v70;
            v193 = BYTE2(v70);
            v194 = BYTE3(v70);
            v195 = BYTE4(v70);
            v196 = BYTE5(v70);
            if (memcmp(__s1, &__s2, BYTE6(v70)))
            {
              goto LABEL_265;
            }
          }

          break;
      }

      goto LABEL_121;
    }

    v74 = 0;
    if (v67)
    {
      goto LABEL_91;
    }

    if (v68 != 0xC000000000000000 || v70 >> 62 != 3)
    {
      goto LABEL_91;
    }

    v74 = 0;
    if (v71 || v70 != 0xC000000000000000)
    {
      goto LABEL_91;
    }

LABEL_121:
    sub_2437EB424();
    sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v93 = sub_2437EB6E4();
    sub_2437C2A14();
    sub_2437C2A14();
    sub_2437B47C4(v187, &qword_27ED867C8, &qword_2437ED970);
    v25 = v184;
    v31 = v180;
    if ((v93 & 1) == 0)
    {
      goto LABEL_272;
    }

LABEL_122:
    v94 = *(v183 + 48);
    sub_2437C45F0();
    sub_2437C45F0();
    if (__swift_getEnumTagSinglePayload(v25, 1, v31) != 1)
    {
      v95 = v179;
      sub_2437C45F0();
      if (__swift_getEnumTagSinglePayload(v25 + v94, 1, v31) == 1)
      {
        sub_2437C2A14();
LABEL_270:
        v171 = &qword_27ED867F0;
        v172 = &qword_2437ED998;
        v30 = v25;
        goto LABEL_271;
      }

      v174 = v32;
      v96 = v185;
      sub_2437C27F4();
      v98 = *v95;
      v99 = v95[1];
      v100 = v99 >> 62;
      v102 = *v96;
      v101 = *(v96 + 1);
      v103 = HIDWORD(*v95);
      v104 = v101 >> 62;
      if (v97)
      {
        v106 = 0;
        if (!v98)
        {
          if (v99 == 0xC000000000000000)
          {
            v105 = v101 >> 62 == 3;
            v97 = v104 == 3;
          }

          else
          {
            v105 = 0;
            v97 = 0;
          }

          if (v105)
          {
            v106 = 0;
            if (!v102)
            {
              v97 = v101 == 0xC000000000000000;
              if (v101 == 0xC000000000000000)
              {
                goto LABEL_205;
              }
            }
          }
        }
      }

      else
      {
        v106 = 0;
        switch(v100)
        {
          case 0uLL:
            v106 = BYTE6(v99);
            break;
          case 1uLL:
            v97 = v103 == v98;
            if (__OFSUB__(v103, v98))
            {
              goto LABEL_288;
            }

            v106 = v103 - v98;
            break;
          case 2uLL:
            v108 = *(v98 + 16);
            v107 = *(v98 + 24);
            v46 = __OFSUB__(v107, v108);
            v106 = v107 - v108;
            v97 = v106 == 0;
            if (!v46)
            {
              break;
            }

            goto LABEL_289;
          case 3uLL:
            break;
          default:
            goto LABEL_321;
        }
      }

      switch(v104)
      {
        case 1uLL:
          LODWORD(v109) = HIDWORD(v102) - v102;
          if (__OFSUB__(HIDWORD(v102), v102))
          {
            goto LABEL_280;
          }

          v109 = v109;
LABEL_153:
          if (v106 != v109)
          {
            goto LABEL_266;
          }

          v97 = v106 == 1;
          if (v106 < 1)
          {
            goto LABEL_205;
          }

          break;
        case 2uLL:
          v111 = *(v102 + 16);
          v110 = *(v102 + 24);
          v46 = __OFSUB__(v110, v111);
          v109 = v110 - v111;
          if (!v46)
          {
            goto LABEL_153;
          }

          goto LABEL_281;
        case 3uLL:
          if (v106)
          {
            goto LABEL_266;
          }

          goto LABEL_205;
        default:
          v109 = BYTE6(v101);
          goto LABEL_153;
      }

      v112 = v102 >> 32;
      switch(v100)
      {
        case 1:
          if (v98 >> 32 < v98)
          {
            goto LABEL_295;
          }

          v129 = v98;
          sub_2437B6C6C(*v96, *(v96 + 1));
          sub_2437B6C6C(v102, v101);
          sub_2437B6C6C(v102, v101);
          v120 = sub_2437EB244();
          if (!v120)
          {
            goto LABEL_189;
          }

          v130 = sub_2437EB264();
          if (__OFSUB__(v129, v130))
          {
            goto LABEL_302;
          }

          v120 += v129 - v130;
LABEL_189:
          sub_2437EB254();
          v131 = v120;
          v132 = v177;
          sub_2437C98F4(v131, v102, v101, __s1);
          v177 = v132;
          sub_2437B7168(v102, v101);
          sub_2437B7168(v102, v101);
          sub_2437B7168(v102, v101);
          v29 = v178;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_266;
          }

          break;
        case 2:
          v118 = *(v98 + 16);
          v119 = *(v98 + 24);
          sub_2437B6C6C(*v96, *(v96 + 1));
          sub_2437B6C6C(v102, v101);
          sub_2437B6C6C(v102, v101);
          v120 = sub_2437EB244();
          if (!v120)
          {
            goto LABEL_171;
          }

          v121 = sub_2437EB264();
          if (__OFSUB__(v118, v121))
          {
            goto LABEL_301;
          }

          v120 += v118 - v121;
LABEL_171:
          if (!__OFSUB__(v119, v118))
          {
            goto LABEL_189;
          }

          goto LABEL_296;
        case 3:
          memset(__s1, 0, 14);
          if (!v104)
          {
            goto LABEL_191;
          }

          if (v104 == 2)
          {
            v122 = *(v102 + 16);
            v123 = *(v102 + 24);
            sub_2437B6C6C(v102, v101);
            v124 = sub_2437EB244();
            if (v124)
            {
              v125 = sub_2437EB264();
              if (__OFSUB__(v122, v125))
              {
                goto LABEL_314;
              }

              v124 += v122 - v125;
            }

            v46 = __OFSUB__(v123, v122);
            v126 = v123 - v122;
            if (v46)
            {
              goto LABEL_311;
            }

            v127 = sub_2437EB254();
            v29 = v178;
            if (!v124)
            {
              goto LABEL_318;
            }

            if (v127 >= v126)
            {
              v117 = v126;
            }

            else
            {
              v117 = v127;
            }

            v128 = v124;
          }

          else
          {
            if (v112 < v102)
            {
              goto LABEL_310;
            }

            sub_2437B6C6C(v102, v101);
            v113 = sub_2437EB244();
            if (v113)
            {
              v133 = sub_2437EB264();
              if (__OFSUB__(v102, v133))
              {
                goto LABEL_316;
              }

              v113 = (v113 + v102 - v133);
            }

            v134 = sub_2437EB254();
            if (!v113)
            {
              __break(1u);
LABEL_318:
              __break(1u);
LABEL_319:
              __break(1u);
LABEL_320:
              MEMORY[0x245D40480](v177);
              __break(1u);
              JUMPOUT(0x2437CB764);
            }

            if (v134 >= v112 - v102)
            {
              v117 = v112 - v102;
            }

            else
            {
              v117 = v134;
            }

LABEL_201:
            v128 = v113;
          }

          v135 = memcmp(__s1, v128, v117);
          sub_2437B7168(v102, v101);
          if (v135)
          {
            goto LABEL_266;
          }

          break;
        default:
          LOWORD(__s1[0]) = *v95;
          BYTE2(__s1[0]) = BYTE2(v98);
          BYTE3(__s1[0]) = BYTE3(v98);
          BYTE4(__s1[0]) = v103;
          BYTE5(__s1[0]) = BYTE5(v98);
          BYTE6(__s1[0]) = BYTE6(v98);
          HIBYTE(__s1[0]) = HIBYTE(v98);
          LOWORD(__s1[1]) = v99;
          BYTE2(__s1[1]) = BYTE2(v99);
          BYTE3(__s1[1]) = BYTE3(v99);
          BYTE4(__s1[1]) = BYTE4(v99);
          BYTE5(__s1[1]) = BYTE5(v99);
          if (!v104)
          {
LABEL_191:
            __s2 = v102;
            v192 = v101;
            v193 = BYTE2(v101);
            v194 = BYTE3(v101);
            v195 = BYTE4(v101);
            v196 = BYTE5(v101);
            if (memcmp(__s1, &__s2, BYTE6(v101)))
            {
              goto LABEL_266;
            }

            break;
          }

          if (v104 != 1)
          {
            v137 = *(v102 + 16);
            v136 = *(v102 + 24);
            sub_2437B6C6C(v102, v101);
            v138 = v137;
            v139 = v177;
            LOBYTE(v136) = sub_2437C9B3C(v138, v136, v101 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v177 = v139;
            sub_2437B7168(v102, v101);
            if ((v136 & 1) == 0)
            {
              goto LABEL_266;
            }

            break;
          }

          if (v112 < v102)
          {
            goto LABEL_309;
          }

          sub_2437B6C6C(v102, v101);
          v113 = sub_2437EB244();
          if (v113)
          {
            v114 = sub_2437EB264();
            if (__OFSUB__(v102, v114))
            {
              goto LABEL_315;
            }

            v113 = (v113 + v102 - v114);
          }

          v115 = v112 - v102;
          v116 = sub_2437EB254();
          if (v116 >= v115)
          {
            v117 = v115;
          }

          else
          {
            v117 = v116;
          }

          if (!v113)
          {
            goto LABEL_319;
          }

          if (__s1 == v113)
          {
            sub_2437B7168(v102, v101);
            break;
          }

          goto LABEL_201;
      }

LABEL_205:
      v140 = v179[2];
      v141 = v179[3];
      v142 = v141 >> 62;
      v144 = *(v185 + 2);
      v143 = *(v185 + 3);
      v145 = v143 >> 62;
      if (v97)
      {
        v147 = 0;
        if (!v140 && v141 == 0xC000000000000000 && v143 >> 62 == 3)
        {
          v147 = 0;
          if (!v144 && v143 == 0xC000000000000000)
          {
LABEL_259:
            sub_2437EB424();
            sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v169 = sub_2437EB6E4();
            sub_2437C2A14();
            sub_2437C2A14();
            v25 = v184;
            sub_2437B47C4(v184, &qword_27ED867D0, &qword_2437ED978);
            v32 = v174;
            if ((v169 & 1) == 0)
            {
              goto LABEL_272;
            }

            goto LABEL_260;
          }
        }
      }

      else
      {
        v147 = 0;
        switch(v142)
        {
          case 0uLL:
            v147 = BYTE6(v141);
            break;
          case 1uLL:
            if (__OFSUB__(HIDWORD(v140), v140))
            {
              goto LABEL_291;
            }

            v147 = HIDWORD(v140) - v140;
            break;
          case 2uLL:
            v149 = *(v140 + 16);
            v148 = *(v140 + 24);
            v46 = __OFSUB__(v148, v149);
            v147 = v148 - v149;
            if (!v46)
            {
              break;
            }

            goto LABEL_290;
          case 3uLL:
            break;
          default:
            goto LABEL_321;
        }
      }

      switch(v145)
      {
        case 1uLL:
          LODWORD(v150) = HIDWORD(v144) - v144;
          if (__OFSUB__(HIDWORD(v144), v144))
          {
            goto LABEL_283;
          }

          v150 = v150;
LABEL_230:
          if (v147 != v150)
          {
            goto LABEL_266;
          }

          if (v147 < 1)
          {
            goto LABEL_259;
          }

          break;
        case 2uLL:
          v152 = *(v144 + 16);
          v151 = *(v144 + 24);
          v46 = __OFSUB__(v151, v152);
          v150 = v151 - v152;
          if (!v46)
          {
            goto LABEL_230;
          }

          goto LABEL_282;
        case 3uLL:
          if (v147)
          {
            goto LABEL_266;
          }

          goto LABEL_259;
        default:
          v150 = BYTE6(v143);
          goto LABEL_230;
      }

      v153 = v144 >> 32;
      switch(v142)
      {
        case 1:
          if (v140 >> 32 < v140)
          {
            goto LABEL_297;
          }

          v158 = v140;
          sub_2437B6C6C(*(v185 + 2), *(v185 + 3));
          sub_2437B6C6C(v144, v143);
          sub_2437B6C6C(v144, v143);
          v156 = sub_2437EB244();
          if (!v156)
          {
            goto LABEL_250;
          }

          v159 = sub_2437EB264();
          if (__OFSUB__(v158, v159))
          {
            goto LABEL_304;
          }

          v156 += v158 - v159;
LABEL_250:
          sub_2437EB254();
          v160 = v156;
          v161 = v177;
          sub_2437C98F4(v160, v144, v143, __s1);
          v177 = v161;
          sub_2437B7168(v144, v143);
          sub_2437B7168(v144, v143);
          sub_2437B7168(v144, v143);
          v29 = v178;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_266;
          }

          goto LABEL_259;
        case 2:
          v154 = *(v140 + 16);
          v155 = *(v140 + 24);
          sub_2437B6C6C(*(v185 + 2), *(v185 + 3));
          sub_2437B6C6C(v144, v143);
          sub_2437B6C6C(v144, v143);
          v156 = sub_2437EB244();
          if (!v156)
          {
            goto LABEL_240;
          }

          v157 = sub_2437EB264();
          if (__OFSUB__(v154, v157))
          {
            goto LABEL_303;
          }

          v156 += v154 - v157;
LABEL_240:
          if (!__OFSUB__(v155, v154))
          {
            goto LABEL_250;
          }

          goto LABEL_298;
        case 3:
          memset(__s1, 0, 14);
          if (!v145)
          {
            goto LABEL_252;
          }

          if (v145 == 2)
          {
            goto LABEL_256;
          }

          if (v153 >= v144)
          {
            goto LABEL_255;
          }

          goto LABEL_312;
        default:
          LOWORD(__s1[0]) = v179[2];
          BYTE2(__s1[0]) = BYTE2(v140);
          BYTE3(__s1[0]) = BYTE3(v140);
          BYTE4(__s1[0]) = BYTE4(v140);
          BYTE5(__s1[0]) = BYTE5(v140);
          BYTE6(__s1[0]) = BYTE6(v140);
          HIBYTE(__s1[0]) = HIBYTE(v140);
          LOWORD(__s1[1]) = v141;
          BYTE2(__s1[1]) = BYTE2(v141);
          BYTE3(__s1[1]) = BYTE3(v141);
          BYTE4(__s1[1]) = BYTE4(v141);
          BYTE5(__s1[1]) = BYTE5(v141);
          if (v145)
          {
            if (v145 == 1)
            {
              if (v153 < v144)
              {
                goto LABEL_313;
              }

LABEL_255:
              sub_2437B6C6C(v144, v143);
              sub_2437B6C6C(v144, v143);
              v162 = v143 & 0x3FFFFFFFFFFFFFFFLL;
              v163 = v144;
              v164 = v144 >> 32;
            }

            else
            {
LABEL_256:
              v165 = *(v144 + 16);
              v166 = *(v144 + 24);
              sub_2437B6C6C(v144, v143);
              sub_2437B6C6C(v144, v143);
              v162 = v143 & 0x3FFFFFFFFFFFFFFFLL;
              v163 = v165;
              v164 = v166;
            }

            v167 = v177;
            v168 = sub_2437C9B3C(v163, v164, v162, __s1);
            sub_2437B7168(v144, v143);
            sub_2437B7168(v144, v143);
            v177 = v167;
            if (v167)
            {
              goto LABEL_320;
            }

            if ((v168 & 1) == 0)
            {
LABEL_266:
              sub_2437C2A14();
              sub_2437C2A14();
              v171 = &qword_27ED867D0;
              v172 = &qword_2437ED978;
              v30 = v184;
              goto LABEL_271;
            }
          }

          else
          {
LABEL_252:
            __s2 = v144;
            v192 = v143;
            v193 = BYTE2(v143);
            v194 = BYTE3(v143);
            v195 = BYTE4(v143);
            v196 = BYTE5(v143);
            if (memcmp(__s1, &__s2, BYTE6(v143)))
            {
              goto LABEL_266;
            }
          }

          break;
      }

      goto LABEL_259;
    }

    if (__swift_getEnumTagSinglePayload(v25 + v94, 1, v31) != 1)
    {
      goto LABEL_270;
    }

    sub_2437B47C4(v25, &qword_27ED867D0, &qword_2437ED978);
LABEL_260:
    if (*v21 != *v29)
    {
      goto LABEL_272;
    }

    sub_2437EB424();
    sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v170 = sub_2437EB6E4();
    sub_2437C2A14();
    sub_2437C2A14();
    if (v170)
    {
      v22 = v32 - 1;
      v188 += v175;
      v13 = v182;
      v24 = v181 + v175;
      v14 = v176;
      if (v32 != 1)
      {
        continue;
      }
    }

    return v170 & 1;
  }

LABEL_265:
  sub_2437C2A14();
  sub_2437C2A14();
  v171 = &qword_27ED867C8;
  v172 = &qword_2437ED970;
  v30 = v187;
LABEL_271:
  sub_2437B47C4(v30, v171, v172);
LABEL_272:
  sub_2437C2A14();
  sub_2437C2A14();
LABEL_273:
  v170 = 0;
  return v170 & 1;
}

uint64_t sub_2437CB824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2437C29BC();
      sub_2437C29BC();
      v16 = *v10;
      v17 = *v7;
      if (v10[8])
      {
        v16 = *v10 != 0;
      }

      if (v7[8] == 1)
      {
        if (v17)
        {
          if (v16 != 1)
          {
            break;
          }
        }

        else if (v16)
        {
          break;
        }
      }

      else if (v16 != v17)
      {
        break;
      }

      if (*(v10 + 2) != *(v7 + 2))
      {
        break;
      }

      sub_2437EB424();
      sub_2437C98AC(&qword_27ED86800, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_2437EB6E4();
      sub_2437C2A14();
      sub_2437C2A14();
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_2437C2A14();
    sub_2437C2A14();
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

unint64_t sub_2437CBAC0()
{
  result = qword_27ED86860;
  if (!qword_27ED86860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86860);
  }

  return result;
}

unint64_t sub_2437CBB18()
{
  result = qword_27ED86880;
  if (!qword_27ED86880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86880);
  }

  return result;
}

unint64_t sub_2437CBB70()
{
  result = qword_27ED86888;
  if (!qword_27ED86888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86888);
  }

  return result;
}

unint64_t sub_2437CBBC8()
{
  result = qword_27ED86890;
  if (!qword_27ED86890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86898, &qword_2437EDA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86890);
  }

  return result;
}

unint64_t sub_2437CBC30()
{
  result = qword_27ED868A0;
  if (!qword_27ED868A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED868A0);
  }

  return result;
}

uint64_t sub_2437CC398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_84();
  sub_2437EB424();
  OUTLINED_FUNCTION_21();
  if (*(v5 + 84) == v3)
  {
    v6 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
    OUTLINED_FUNCTION_21();
    if (*(v7 + 84) == v3)
    {
      v6 = *(a3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
      OUTLINED_FUNCTION_135();
    }
  }

  v8 = OUTLINED_FUNCTION_63(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_2437CC490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_84();
  sub_2437EB424();
  OUTLINED_FUNCTION_21();
  if (*(v6 + 84) == a3)
  {
    v7 = *(a4 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
    OUTLINED_FUNCTION_21();
    if (*(v8 + 84) == a3)
    {
      v7 = *(a4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
      OUTLINED_FUNCTION_139();
    }
  }

  v9 = OUTLINED_FUNCTION_46(v7);

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_2437CC578()
{
  sub_2437EB424();
  if (v0 <= 0x3F)
  {
    sub_2437CC678(319, &qword_27ED86950, type metadata accessor for CloudAssets_Asset.ID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2437CC678(319, &qword_27ED86958, type metadata accessor for CloudAssets_Asset.Protector, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_36_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_98();
      }
    }
  }
}

void sub_2437CC678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2437CC6F0()
{
  OUTLINED_FUNCTION_57();
  if (v1)
  {
    return OUTLINED_FUNCTION_30_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_136();
  v4 = OUTLINED_FUNCTION_63(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2437CC764()
{
  OUTLINED_FUNCTION_32_0();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_2437EB424();
    OUTLINED_FUNCTION_140();
    v4 = OUTLINED_FUNCTION_46(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2437CC7CC()
{
  result = sub_2437EB424();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_36_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_98();
  }

  return result;
}

uint64_t sub_2437CC858(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v3 = *(a1 + 8) >> 60;
    if (((4 * v3) & 0xC) != 0)
    {
      return 16 - ((4 * v3) & 0xC | (v3 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v5 = OUTLINED_FUNCTION_63(*(v2 + 24));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *sub_2437CC8F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2437EB424();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2437CC99C()
{
  OUTLINED_FUNCTION_57();
  if (v2)
  {
    return OUTLINED_FUNCTION_30_0(*(v1 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_21();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D8, &qword_2437ED980);
    OUTLINED_FUNCTION_136();
  }

  v6 = OUTLINED_FUNCTION_63(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2437CCA58()
{
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_21();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_139();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D8, &qword_2437ED980);
      OUTLINED_FUNCTION_140();
    }

    v6 = OUTLINED_FUNCTION_46(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_2437CCB00()
{
  sub_2437EB424();
  if (v0 <= 0x3F)
  {
    sub_2437CC678(319, &qword_27ED86960, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_137();
      OUTLINED_FUNCTION_36_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_98();
    }
  }
}

uint64_t sub_2437CCBD0()
{
  OUTLINED_FUNCTION_57();
  if (v2)
  {
    return OUTLINED_FUNCTION_30_0(*v1);
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_21();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_135();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
    OUTLINED_FUNCTION_136();
  }

  v6 = OUTLINED_FUNCTION_63(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2437CCC8C()
{
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_21();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_139();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
      OUTLINED_FUNCTION_140();
    }

    v6 = OUTLINED_FUNCTION_46(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_2437CCD34()
{
  OUTLINED_FUNCTION_72();
  sub_2437CC678(319, v0, v1, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    sub_2437EB424();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_71();
      sub_2437CC678(319, v4, v5, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_36_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_98();
      }
    }
  }
}

uint64_t sub_2437CCE24()
{
  OUTLINED_FUNCTION_57();
  if (v2)
  {
    return OUTLINED_FUNCTION_30_0(*v0);
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_63(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2437CCE9C()
{
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2437EB424();
    v5 = OUTLINED_FUNCTION_46(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_2437CCF08()
{
  sub_2437CC678(319, &qword_27ED86978, type metadata accessor for CloudAssets_Signal.Event, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2437EB424();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_36_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_98();
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudAssets_Signal.EventType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437CCFC8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437CD000(uint64_t a1)
{
  OUTLINED_FUNCTION_84();
  v4 = *(v3 + 24);
  v5 = sub_2437EB424();

  return __swift_getEnumTagSinglePayload(v2 + v4, v1, v5);
}

uint64_t sub_2437CD064(uint64_t a1)
{
  OUTLINED_FUNCTION_84();
  v4 = *(v3 + 24);
  v5 = sub_2437EB424();

  return __swift_storeEnumTagSinglePayload(v2 + v4, v1, v1, v5);
}

uint64_t sub_2437CD0CC()
{
  result = sub_2437EB424();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_36_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_98();
  }

  return result;
}

uint64_t sub_2437CD148()
{
  OUTLINED_FUNCTION_57();
  if (v3)
  {
    return OUTLINED_FUNCTION_30_0(*(v1 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_21();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
    OUTLINED_FUNCTION_21();
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_135();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
      OUTLINED_FUNCTION_136();
    }
  }

  v8 = OUTLINED_FUNCTION_63(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_2437CD250()
{
  OUTLINED_FUNCTION_32_0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_21();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E8, &qword_2437ED990);
      OUTLINED_FUNCTION_21();
      if (*(v7 + 84) == v3)
      {
        OUTLINED_FUNCTION_139();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
        OUTLINED_FUNCTION_140();
      }
    }

    v8 = OUTLINED_FUNCTION_46(v6);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_2437CD344()
{
  sub_2437EB424();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_72();
    sub_2437CC678(319, v1, v2, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_71();
      sub_2437CC678(319, v4, v5, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_36_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_98();
      }
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  result = v2 + v1 + *(v0 + 56);
  *(v2 + v1) = v3;
  return result;
}

char *OUTLINED_FUNCTION_22_1()
{
  v3 = (v2 + 2 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return MEMORY[0x28217E158](v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1)
{

  return sub_2437EB6E4();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_allocObject();
}

__n128 *OUTLINED_FUNCTION_41(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(result->n128_u64 + v2) = 1;
  return result;
}

char *OUTLINED_FUNCTION_42()
{
  v3 = (v2 + 3 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 4;
  return result;
}

void *OUTLINED_FUNCTION_44(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_77()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_80@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_82@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_86()
{

  return sub_2437EB424();
}

void OUTLINED_FUNCTION_87()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_2437EB484();
}

uint64_t OUTLINED_FUNCTION_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2437EB594();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_102@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_108()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_2437EB5B4();
}

uint64_t OUTLINED_FUNCTION_128@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_129()
{

  return sub_2437EB424();
}

uint64_t OUTLINED_FUNCTION_145()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_146()
{

  return sub_2437C45F0();
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_2437C27F4();
}

uint64_t OUTLINED_FUNCTION_148()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t static UploadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_2();
  v42 = v7;
  type metadata accessor for UploadResponseMessage(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_2();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v41 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E8, &qword_2437EE7C8);
  OUTLINED_FUNCTION_3();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v20 = *(v17 + 56);
  sub_2437D0B68(a1, &v41 - v18, type metadata accessor for UploadResponseMessage);
  sub_2437D0B68(a2, &v19[v20], type metadata accessor for UploadResponseMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v19, v13, v31);
      if (OUTLINED_FUNCTION_24_0() == 1)
      {
        v32 = &v19[v20];
        v33 = v42;
        sub_2437CE3C4(v32, v42);
        v34 = type metadata accessor for Asset(0);
        v35 = sub_2437D0BC8(&qword_27ED86658, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
        v36 = sub_2437D0BC8(&qword_27ED86628, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
        v37 = sub_2437D0BC8(&qword_27ED86648, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
        v23 = static XPCResult<>.== infix(_:_:)(v13, v33, v34, v35, v36, v37);
        v38 = OUTLINED_FUNCTION_18_2();
        sub_2437B47C4(v38, v39, &qword_2437EE7C0);
        sub_2437B47C4(v13, &qword_27ED869E0, &qword_2437EE7C0);
        goto LABEL_13;
      }

      sub_2437B47C4(v13, &qword_27ED869E0, &qword_2437EE7C0);
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v19, v3, v24);
      if (OUTLINED_FUNCTION_24_0() != 2)
      {
        goto LABEL_10;
      }

      v25 = OUTLINED_FUNCTION_21_1();
      v27 = static Signal.== infix(_:_:)(v25, v26);
      goto LABEL_8;
    case 3u:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v19, v2, v28);
      if (OUTLINED_FUNCTION_24_0() != 3)
      {
        goto LABEL_10;
      }

      v29 = OUTLINED_FUNCTION_21_1();
      v27 = static SimultaneousTransferError.== infix(_:_:)(v29, v30);
LABEL_8:
      v23 = v27;

      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_0_6();
      sub_2437D0B68(v19, v15, v21);
      v22 = *v15;
      if (OUTLINED_FUNCTION_24_0())
      {
LABEL_10:

LABEL_15:
        sub_2437B47C4(v19, &qword_27ED869E8, &qword_2437EE7C8);
        v23 = 0;
      }

      else
      {
        v23 = sub_2437CE434(v22, *&v19[v20]);

LABEL_9:

LABEL_13:
        sub_2437D0C10(v19, type metadata accessor for UploadResponseMessage);
      }

      return v23 & 1;
  }
}

uint64_t type metadata accessor for UploadResponseMessage(uint64_t a1)
{
  result = qword_27ED8C1A0;
  if (!qword_27ED8C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437CE3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437CE434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetSkeleton(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2437D0B68(v13, v10, type metadata accessor for AssetSkeleton);
        sub_2437D0B68(v14, v7, type metadata accessor for AssetSkeleton);
        sub_2437D0BC8(&qword_27ED86AB8, type metadata accessor for AssetSkeleton, &protocol conformance descriptor for AssetSkeleton);
        v16 = sub_2437EB6E4();
        sub_2437D0C10(v7, type metadata accessor for AssetSkeleton);
        sub_2437D0C10(v10, type metadata accessor for AssetSkeleton);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2437CE62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172656D65687065 && a2 == 0xEE0074657373416CLL;
  if (v4 || (OUTLINED_FUNCTION_5(0x6172656D65687065, 0xEE0074657373416CLL) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574736973726570 && a2 == 0xEE00746573734164;
    if (v6 || (OUTLINED_FUNCTION_5(0x6574736973726570, 0xEE00746573734164) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5(0x6C616E676973, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x80000002437F2F20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_5(0xD000000000000019, 0x80000002437F2F20);

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

unint64_t sub_2437CE76C(char a1)
{
  result = 0x6172656D65687065;
  switch(a1)
  {
    case 1:
      result = 0x6574736973726570;
      break;
    case 2:
      result = 0x6C616E676973;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437CE818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437CE62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437CE840()
{
  sub_2437CF10C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CE878()
{
  sub_2437CF10C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CE8B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437CE924()
{
  sub_2437CF2B0();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CE95C()
{
  sub_2437CF2B0();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CE994()
{
  sub_2437CF25C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CE9CC()
{
  sub_2437CF25C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CEA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437CE8B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437CEA4C()
{
  sub_2437CF1B4();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CEA84()
{
  sub_2437CF1B4();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437CEABC()
{
  sub_2437CF160();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437CEAF4()
{
  sub_2437CF160();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t UploadResponseMessage.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869F0, &qword_2437EE7D0);
  OUTLINED_FUNCTION_0();
  v51 = v4;
  v52 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_2();
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869F8, &qword_2437EE7D8);
  OUTLINED_FUNCTION_0();
  v48 = v8;
  v49 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_2();
  v47 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A00, &qword_2437EE7E0);
  OUTLINED_FUNCTION_0();
  v45 = v12;
  v46 = v11;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_2();
  v44 = v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A08, &qword_2437EE7E8);
  OUTLINED_FUNCTION_0();
  v41 = v18;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v20);
  v22 = (&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A10, &qword_2437EE7F0);
  OUTLINED_FUNCTION_0();
  v54 = v23;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437CF10C();
  sub_2437EBB04();
  OUTLINED_FUNCTION_0_6();
  sub_2437D0B68(v53, v22, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2437CE3C4(v22, v17);
      LOBYTE(v55) = 1;
      sub_2437CF25C();
      v36 = v44;
      OUTLINED_FUNCTION_12_2(&type metadata for UploadResponseMessage.PersistedAssetCodingKeys);
      sub_2437D0150(&qword_27ED86A20, &protocol conformance descriptor for XPCResult<A>);
      v37 = v46;
      sub_2437EB9D4();
      (*(v45 + 8))(v36, v37);
      sub_2437B47C4(v17, &qword_27ED869E0, &qword_2437EE7C0);
      v38 = OUTLINED_FUNCTION_19_3();
      return v39(v38);
    case 2u:
      v28 = *v22;
      LOBYTE(v55) = 2;
      sub_2437CF1B4();
      v29 = v47;
      OUTLINED_FUNCTION_12_2(&type metadata for UploadResponseMessage.SignalCodingKeys);
      v55 = v28;
      sub_2437CF208();
      v30 = v49;
      sub_2437EB9D4();
      v31 = v48;
      goto LABEL_5;
    case 3u:
      v32 = *v22;
      LOBYTE(v55) = 3;
      sub_2437CF160();
      v29 = v50;
      OUTLINED_FUNCTION_12_2(&type metadata for UploadResponseMessage.SimultaneousTransferErrorCodingKeys);
      v55 = v32;
      sub_2437B53D8();
      v30 = v52;
      sub_2437EB9D4();
      v31 = v51;
LABEL_5:
      (*(v31 + 8))(v29, v30);
      goto LABEL_6;
    default:
      v26 = *v22;
      LOBYTE(v55) = 0;
      sub_2437CF2B0();
      sub_2437EB994();
      v55 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
      sub_2437D01A0(&qword_27ED86A30, &qword_27ED86A38, &protocol conformance descriptor for AssetSkeleton);
      v27 = v43;
      sub_2437EB9D4();
      (*(v41 + 8))(v1, v27);
LABEL_6:
      v33 = OUTLINED_FUNCTION_19_3();
      v34(v33);
  }
}

unint64_t sub_2437CF10C()
{
  result = qword_27ED8BF70;
  if (!qword_27ED8BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF70);
  }

  return result;
}

unint64_t sub_2437CF160()
{
  result = qword_27ED8BF78;
  if (!qword_27ED8BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF78);
  }

  return result;
}

unint64_t sub_2437CF1B4()
{
  result = qword_27ED8BF80;
  if (!qword_27ED8BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF80);
  }

  return result;
}

unint64_t sub_2437CF208()
{
  result = qword_27ED86A18;
  if (!qword_27ED86A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A18);
  }

  return result;
}

unint64_t sub_2437CF25C()
{
  result = qword_27ED8BF88;
  if (!qword_27ED8BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8BF88);
  }

  return result;
}

unint64_t sub_2437CF2B0()
{
  result = qword_27ED8BF90[0];
  if (!qword_27ED8BF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8BF90);
  }

  return result;
}

uint64_t UploadResponseMessage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  type metadata accessor for UploadResponseMessage(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_0_6();
  sub_2437D0B68(v2, v9, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2437CE3C4(v9, v6);
      MEMORY[0x245D40160](1);
      sub_2437CF53C();
      sub_2437EB6D4();
      return sub_2437B47C4(v6, &qword_27ED869E0, &qword_2437EE7C0);
    case 2u:
      v12 = *v9;
      MEMORY[0x245D40160](2);
      v16 = v12;
      sub_2437CF4E8();
      goto LABEL_5;
    case 3u:
      v13 = *v9;
      MEMORY[0x245D40160](3);
      v16 = v13;
      sub_2437B5668();
LABEL_5:
      sub_2437EB6D4();

    default:
      v11 = *v9;
      MEMORY[0x245D40160](0);
      sub_2437CFF9C(a1, v11);
  }
}

unint64_t sub_2437CF4E8()
{
  result = qword_27ED86A40;
  if (!qword_27ED86A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A40);
  }

  return result;
}

unint64_t sub_2437CF53C()
{
  result = qword_27ED86A48;
  if (!qword_27ED86A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED869E0, &qword_2437EE7C0);
    sub_2437D0BC8(&qword_27ED86648, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A48);
  }

  return result;
}

uint64_t UploadResponseMessage.hashValue.getter()
{
  sub_2437EBA94();
  UploadResponseMessage.hash(into:)(v1);
  return sub_2437EBAD4();
}

uint64_t UploadResponseMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A50, &qword_2437EE800);
  OUTLINED_FUNCTION_0();
  v94 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_2();
  v98 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A58, &qword_2437EE808);
  OUTLINED_FUNCTION_0();
  v92 = v10;
  v93 = v9;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_2();
  v97 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A60, &qword_2437EE810);
  OUTLINED_FUNCTION_0();
  v90 = v14;
  v91 = v13;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_2();
  v96 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A68, &qword_2437EE818);
  OUTLINED_FUNCTION_0();
  v88 = v18;
  v89 = v17;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_2();
  v95 = v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A70, &unk_2437EE820);
  OUTLINED_FUNCTION_0();
  v101 = v21;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v22);
  v102 = OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_20_2();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v83 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v83 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  v104 = a1;
  v34 = OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_2437CF10C();
  v36 = v105;
  sub_2437EBAF4();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v84 = v3;
  v86 = v2;
  v87 = v28;
  v85 = v31;
  v105 = v33;
  v38 = v102;
  v37 = v103;
  v39 = sub_2437EB974();
  v43 = sub_2437B5F3C(v39, 0);
  if (v41 == v42 >> 1)
  {
    goto LABEL_7;
  }

  v83 = 0;
  if (v41 >= (v42 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2437CFF14);
  }

  v44 = *(v40 + v41);
  sub_2437B5F84(v41 + 1, v42 >> 1, v43, v40, v41, v42);
  v46 = v45;
  v48 = v47;
  swift_unknownObjectRelease();
  if (v46 != v48 >> 1)
  {
LABEL_7:
    v49 = v37;
    v50 = sub_2437EB8C4();
    swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v52 = v38;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v101 + 8))(v4, v49);
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  switch(v44)
  {
    case 1:
      LOBYTE(v106) = 1;
      sub_2437CF25C();
      OUTLINED_FUNCTION_7_4(&type metadata for UploadResponseMessage.PersistedAssetCodingKeys);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869E0, &qword_2437EE7C0);
      sub_2437D0150(&qword_27ED86A80, &protocol conformance descriptor for XPCResult<A>);
      v62 = v87;
      sub_2437EB954();
      swift_unknownObjectRelease();
      v76 = OUTLINED_FUNCTION_5_2();
      v77(v76);
      v78 = OUTLINED_FUNCTION_4_5();
      v79(v78);
      swift_storeEnumTagMultiPayload();
      sub_2437D0098(v62, v105);
      v80 = v104;
      goto LABEL_13;
    case 2:
      LOBYTE(v106) = 2;
      sub_2437CF1B4();
      OUTLINED_FUNCTION_7_4(&type metadata for UploadResponseMessage.SignalCodingKeys);
      v54 = sub_2437D00FC();
      OUTLINED_FUNCTION_23_1(&type metadata for Signal, v55, v56, v57, v54);
      swift_unknownObjectRelease();
      v63 = OUTLINED_FUNCTION_5_2();
      v64(v63);
      v65 = OUTLINED_FUNCTION_17_4();
      v66(v65);
      v75 = v84;
      OUTLINED_FUNCTION_16_4(v106);
      goto LABEL_12;
    case 3:
      LOBYTE(v106) = 3;
      sub_2437CF160();
      OUTLINED_FUNCTION_7_4(&type metadata for UploadResponseMessage.SimultaneousTransferErrorCodingKeys);
      v58 = sub_2437B6000();
      OUTLINED_FUNCTION_23_1(&type metadata for SimultaneousTransferError, v59, v60, v61, v58);
      swift_unknownObjectRelease();
      v67 = OUTLINED_FUNCTION_5_2();
      v68(v67);
      v69 = OUTLINED_FUNCTION_17_4();
      v70(v69);
      v75 = v86;
      OUTLINED_FUNCTION_16_4(v106);
      goto LABEL_12;
    default:
      LOBYTE(v106) = 0;
      sub_2437CF2B0();
      OUTLINED_FUNCTION_7_4(&type metadata for UploadResponseMessage.EphemeralAssetCodingKeys);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86A28, &qword_2437EE7F8);
      sub_2437D01A0(&qword_27ED86A88, &qword_27ED86A90, &protocol conformance descriptor for AssetSkeleton);
      sub_2437EB954();
      swift_unknownObjectRelease();
      v71 = OUTLINED_FUNCTION_5_2();
      v72(v71);
      v73 = OUTLINED_FUNCTION_4_5();
      v74(v73);
      v75 = v85;
      OUTLINED_FUNCTION_16_4(v106);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_2437D0098(v75, v105);
      v80 = v104;
LABEL_13:
      v81 = OUTLINED_FUNCTION_18_2();
      sub_2437D0098(v81, v82);
      result = __swift_destroy_boxed_opaque_existential_1(v80);
      break;
  }

  return result;
}

uint64_t sub_2437CFF2C(uint64_t a1)
{
  sub_2437EBA94();
  UploadResponseMessage.hash(into:)(v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437CFF9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AssetSkeleton(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_2437D0BC8(&qword_27ED86AB0, type metadata accessor for AssetSkeleton, &protocol conformance descriptor for AssetSkeleton);
    do
    {
      result = sub_2437EB6D4();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2437D0098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadResponseMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2437D00FC()
{
  result = qword_27ED86A78;
  if (!qword_27ED86A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86A78);
  }

  return result;
}

uint64_t sub_2437D0150(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED869E0, &qword_2437EE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437D01A0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86A28, &qword_2437EE7F8);
    sub_2437D0BC8(a2, type metadata accessor for AssetSkeleton, a3);
    OUTLINED_FUNCTION_18_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2437D0280(uint64_t a1)
{
  sub_2437D0310(319);
  if (v1 <= 0x3F)
  {
    sub_2437D0368(319);
    if (v2 <= 0x3F)
    {
      sub_2437B62E0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2437D0310(uint64_t a1)
{
  if (!qword_27ED86AA0)
  {
    type metadata accessor for AssetSkeleton(255);
    v1 = sub_2437EB754();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED86AA0);
    }
  }
}

void sub_2437D0368(uint64_t a1)
{
  if (!qword_27ED86AA8)
  {
    v2 = type metadata accessor for Asset(255);
    v3 = sub_2437D0BC8(&qword_27ED86658, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
    v4 = sub_2437D0BC8(&qword_27ED86628, type metadata accessor for Asset, &protocol conformance descriptor for Asset);
    v5 = type metadata accessor for XPCResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27ED86AA8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for UploadResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2437D0500);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s18CloudAssetsCommons21UploadResponseMessageO16SignalCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437D0608);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437D0644()
{
  result = qword_27ED8C2B0[0];
  if (!qword_27ED8C2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C2B0);
  }

  return result;
}

unint64_t sub_2437D069C()
{
  result = qword_27ED8C4C0[0];
  if (!qword_27ED8C4C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C4C0);
  }

  return result;
}

unint64_t sub_2437D06F4()
{
  result = qword_27ED8C6D0[0];
  if (!qword_27ED8C6D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C6D0);
  }

  return result;
}

unint64_t sub_2437D074C()
{
  result = qword_27ED8C8E0[0];
  if (!qword_27ED8C8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8C8E0);
  }

  return result;
}

unint64_t sub_2437D07A4()
{
  result = qword_27ED8CAF0;
  if (!qword_27ED8CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CAF0);
  }

  return result;
}

unint64_t sub_2437D07FC()
{
  result = qword_27ED8CC00;
  if (!qword_27ED8CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CC00);
  }

  return result;
}

unint64_t sub_2437D0854()
{
  result = qword_27ED8CC08[0];
  if (!qword_27ED8CC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CC08);
  }

  return result;
}

unint64_t sub_2437D08AC()
{
  result = qword_27ED8CC90;
  if (!qword_27ED8CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CC90);
  }

  return result;
}

unint64_t sub_2437D0904()
{
  result = qword_27ED8CC98[0];
  if (!qword_27ED8CC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CC98);
  }

  return result;
}

unint64_t sub_2437D095C()
{
  result = qword_27ED8CD20;
  if (!qword_27ED8CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CD20);
  }

  return result;
}

unint64_t sub_2437D09B4()
{
  result = qword_27ED8CD28[0];
  if (!qword_27ED8CD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CD28);
  }

  return result;
}

unint64_t sub_2437D0A0C()
{
  result = qword_27ED8CDB0;
  if (!qword_27ED8CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CDB0);
  }

  return result;
}

unint64_t sub_2437D0A64()
{
  result = qword_27ED8CDB8[0];
  if (!qword_27ED8CDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CDB8);
  }

  return result;
}

unint64_t sub_2437D0ABC()
{
  result = qword_27ED8CE40;
  if (!qword_27ED8CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8CE40);
  }

  return result;
}

unint64_t sub_2437D0B14()
{
  result = qword_27ED8CE48[0];
  if (!qword_27ED8CE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CE48);
  }

  return result;
}

uint64_t sub_2437D0B68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2437D0BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437D0C10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{

  return sub_2437EB904();
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{

  return sub_2437EB994();
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  *(v3 - 96) = *(v0 + v1);
  *(v3 - 88) = v2;
  return v3 - 88;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return type metadata accessor for UploadResponseMessage(0);
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2437EB954();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t XPCAsyncSequenceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t XPCAsyncSequenceRequest.data.getter()
{
  v1 = v0 + *(type metadata accessor for XPCAsyncSequenceRequest(0) + 20);
  v2 = *v1;
  sub_2437B6C6C(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for XPCAsyncSequenceRequest(uint64_t a1)
{
  result = qword_27ED8D060;
  if (!qword_27ED8D060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437D0ECC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2437EBA14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2437EBA14();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437D0F8C(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2437D0FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437D0ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437D0FE8(uint64_t a1)
{
  sub_2437D1220();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437D1024(uint64_t a1)
{
  sub_2437D1220();

  return MEMORY[0x2821FE720](a1);
}

uint64_t XPCAsyncSequenceRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AC0, &qword_2437EEEE0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437D1220();
  sub_2437EBB04();
  LOBYTE(v15) = 0;
  sub_2437EB3B4();
  sub_2437D16EC(&qword_27ED86590, MEMORY[0x277CC95F8]);
  sub_2437EB9D4();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for XPCAsyncSequenceRequest(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_2437B6C6C(v15, v12);
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v15, v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2437D1220()
{
  result = qword_27ED8CED0[0];
  if (!qword_27ED8CED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8CED0);
  }

  return result;
}

uint64_t XPCAsyncSequenceRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v28 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AC8, &qword_2437EEEE8);
  OUTLINED_FUNCTION_0();
  v26 = v8;
  v27 = v9;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for XPCAsyncSequenceRequest(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437D1220();
  sub_2437EBAF4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v10;
  v14 = v25;
  LOBYTE(v29) = 0;
  sub_2437D16EC(&qword_27ED865D8, MEMORY[0x277CC9618]);
  v15 = v28;
  sub_2437EB954();
  v16 = *(v14 + 32);
  v22 = v13;
  v16(v13, v7, v15);
  v30 = 1;
  sub_2437BAD3C();
  sub_2437EB954();
  v17 = OUTLINED_FUNCTION_1_7();
  v18(v17);
  v19 = v22;
  *&v22[*(v23 + 20)] = v29;
  sub_2437D157C(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2437D15E0(v19);
}

uint64_t sub_2437D157C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437D15E0(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437D163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for XPCAsyncSequenceRequest(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_2437D16EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2437EB3B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437D1778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2437EB3B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v8) & 0xC) != 0)
    {
      return 16 - ((4 * v8) & 0xC | (v8 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2437D184C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2437EB3B4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2437D1904(uint64_t a1)
{
  result = sub_2437EB3B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437D1A44);
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

unint64_t sub_2437D1A80()
{
  result = qword_27ED8D170[0];
  if (!qword_27ED8D170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8D170);
  }

  return result;
}

unint64_t sub_2437D1AD8()
{
  result = qword_27ED8D280;
  if (!qword_27ED8D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8D280);
  }

  return result;
}

unint64_t sub_2437D1B30()
{
  result = qword_27ED8D288[0];
  if (!qword_27ED8D288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8D288);
  }

  return result;
}

uint64_t sub_2437D1B98()
{
  sub_2437D250C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437D1BD0()
{
  sub_2437D250C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Asset.ID.partition.getter()
{
  OUTLINED_FUNCTION_13();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v0 = OUTLINED_FUNCTION_22();

  return v1(v0);
}

uint64_t Asset.ID.storageLocation.getter()
{
  v1 = sub_2437EB2B4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_48_0();
  (*(v3 + 104))(v0, *MEMORY[0x277CC91D8], v1);
  sub_2437BBEF4();

  sub_2437EB324();
  (*(v3 + 8))(v0, v1);
}

uint64_t Asset.ID.ownerID.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_48_0();

  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.ID.signature.getter()
{
  type metadata accessor for Asset.ID(0);
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.ID.referenceSignature.getter()
{
  type metadata accessor for Asset.ID(0);
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.ID.init(protobufRepresentation:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866A0, &unk_2437EC990);
  OUTLINED_FUNCTION_48(v6);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v8 = sub_2437EB334();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_0();
  sub_2437EB304();
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_2437D2050(v2);
    sub_2437BF6BC();
    swift_allocError();
    *v12 = 0xD000000000000027;
    v12[1] = 0x80000002437F3290;
    swift_willThrow();
    OUTLINED_FUNCTION_3_5();
    return sub_2437D3848();
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v3, v2, v8);
    v14(a2, v3, v8);
    v16 = a1[2];
    v15 = a1[3];
    v17 = type metadata accessor for Asset.ID(0);
    v18 = (a2 + v17[5]);
    *v18 = v16;
    v18[1] = v15;
    v19 = a1[4];
    v20 = a1[5];
    v21 = (a2 + v17[6]);
    *v21 = v19;
    v21[1] = v20;
    v22 = a1[6];
    v23 = a1[7];

    sub_2437B6C6C(v19, v20);
    v24 = OUTLINED_FUNCTION_25_0();
    sub_2437B6C6C(v24, v25);
    OUTLINED_FUNCTION_3_5();
    result = sub_2437D3848();
    v26 = (a2 + v17[7]);
    *v26 = v22;
    v26[1] = v23;
  }

  return result;
}

uint64_t sub_2437D2050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866A0, &unk_2437EC990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Asset.ID.init(storageLocation:signature:referenceSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2437EB2E4();
  v12 = sub_2437EB2D4();
  v14 = v13;
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  (*(v15 + 8))(a1);
  result = OUTLINED_FUNCTION_48_0();
  v18 = (a6 + v17);
  *v18 = v12;
  v18[1] = v14;
  v19 = (a6 + *(result + 24));
  *v19 = a2;
  v19[1] = a3;
  v20 = (a6 + *(result + 28));
  *v20 = a4;
  v20[1] = a5;
  return result;
}

uint64_t Asset.ID.init(partitionURL:ownerID:signature:referenceSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  (*(v16 + 32))(a8, a1);
  result = OUTLINED_FUNCTION_48_0();
  v19 = (a8 + v18);
  *v19 = a2;
  v19[1] = a3;
  v20 = (a8 + *(result + 24));
  *v20 = a4;
  v20[1] = a5;
  v21 = (a8 + *(result + 28));
  *v21 = a6;
  v21[1] = a7;
  return result;
}

void Asset.ID.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v33 = v0;
  v3 = v2;
  v30 = v4;
  v5 = type metadata accessor for Asset.ID(0);
  v6 = OUTLINED_FUNCTION_48(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v31 = v8 - v7;
  OUTLINED_FUNCTION_35();
  v9 = sub_2437EB444();
  v10 = OUTLINED_FUNCTION_48(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  type metadata accessor for CloudAssets_Asset.ID(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AD0, &qword_2437EF0C8);
  OUTLINED_FUNCTION_0();
  v32 = v19;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_38_0();
  v34 = v3;
  OUTLINED_FUNCTION_46_0();
  sub_2437D250C();
  v21 = v33;
  sub_2437EBAF4();
  if (!v21)
  {
    v33 = v14;
    v22 = v32;
    sub_2437BAD3C();
    sub_2437EB954();
    v29 = v1;
    OUTLINED_FUNCTION_15_4();
    sub_2437EB434();
    OUTLINED_FUNCTION_22_3();
    sub_2437D29DC(v23, v24, &protocol conformance descriptor for CloudAssets_Asset.ID);
    sub_2437EB514();
    OUTLINED_FUNCTION_21_2();
    v25 = v17;
    v26 = v33;
    sub_2437D35C8(v25, v33);
    v27 = v31;
    Asset.ID.init(protobufRepresentation:)(v26, v31);
    OUTLINED_FUNCTION_3_5();
    sub_2437D3848();
    (*(v22 + 8))(v29, v18);
    OUTLINED_FUNCTION_5_3();
    sub_2437D3D74(v27, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437D250C()
{
  result = qword_27ED86AD8;
  if (!qword_27ED86AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86AD8);
  }

  return result;
}

uint64_t Asset.ID.protobufRepresentation()@<X0>(uint64_t *a2@<X8>)
{
  CloudAssets_Asset.ID.init()(a2);
  v4 = sub_2437EB2C4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  OUTLINED_FUNCTION_14_4();
  v8 = (v2 + v7);
  v10 = *v8;
  v9 = v8[1];

  a2[2] = v10;
  a2[3] = v9;
  v11 = (v2 + *(v4 + 24));
  v12 = *v11;
  v13 = v11[1];
  sub_2437B6C6C(*v11, v13);
  v14 = OUTLINED_FUNCTION_24_1();
  sub_2437B7168(v14, v15);
  a2[4] = v12;
  a2[5] = v13;
  v16 = (v2 + *(v4 + 28));
  v17 = *v16;
  v18 = v16[1];
  v19 = a2[6];
  v20 = a2[7];
  sub_2437B6C6C(*v16, v18);
  result = sub_2437B7168(v19, v20);
  a2[6] = v17;
  a2[7] = v18;
  return result;
}

void Asset.ID.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v4 = v0;
  v5 = OUTLINED_FUNCTION_34();
  type metadata accessor for CloudAssets_Asset.ID(v5);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AE0, &qword_2437EF0D0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_46_0();
  sub_2437D250C();
  sub_2437EBB04();
  CloudAssets_Asset.ID.init()(v2);
  v8 = sub_2437EB2C4();
  v10 = v9;

  *v2 = v8;
  v2[1] = v10;
  v11 = type metadata accessor for Asset.ID(0);
  v12 = (v4 + v11[5]);
  v13 = *v12;
  v14 = v12[1];

  v2[2] = v13;
  v2[3] = v14;
  v15 = (v4 + v11[6]);
  v16 = *v15;
  v17 = v15[1];
  v19 = v2[4];
  v18 = v2[5];
  sub_2437B6C6C(*v15, v17);
  sub_2437B7168(v19, v18);
  v2[4] = v16;
  v2[5] = v17;
  v20 = (v4 + v11[7]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v2[6];
  v24 = v2[7];
  v25 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v25, v26);
  sub_2437B7168(v23, v24);
  v2[6] = v21;
  v2[7] = v22;
  OUTLINED_FUNCTION_22_3();
  sub_2437D29DC(v27, v28, &protocol conformance descriptor for CloudAssets_Asset.ID);
  v29 = sub_2437EB504();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    v31(v3, v35);
    OUTLINED_FUNCTION_3_5();
    sub_2437D3848();
  }

  else
  {
    v32 = v29;
    v33 = v30;
    OUTLINED_FUNCTION_3_5();
    sub_2437D3848();
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v32, v33);
    OUTLINED_FUNCTION_45();
    v34(v3, v35);
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

uint64_t static Asset.ID.== infix(_:_:)(uint64_t a1)
{
  if (sub_2437EB2F4())
  {
    OUTLINED_FUNCTION_14_4();
    v3 = OUTLINED_FUNCTION_17_0(v2);
    v7 = v3 == v6 && v4 == v5;
    if (v7 || (sub_2437EBA14() & 1) != 0)
    {
      v8 = OUTLINED_FUNCTION_17_0(*(v1 + 24));
      if (MEMORY[0x245D3FA00](v8))
      {
        OUTLINED_FUNCTION_17_0(*(v1 + 28));

        JUMPOUT(0x245D3FA00);
      }
    }
  }

  return 0;
}

uint64_t Asset.ID.hash(into:)()
{
  OUTLINED_FUNCTION_55();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  sub_2437D29DC(v0, v1, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_33_1();
  sub_2437EB6D4();
  type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_12_3();
  sub_2437EB724();
  OUTLINED_FUNCTION_13_4();
  sub_2437EB354();
  OUTLINED_FUNCTION_13_4();

  return sub_2437EB354();
}

uint64_t sub_2437D29DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Asset.ID.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_0(a1);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v3 = sub_2437D29DC(v1, v2, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_43_0(v3, v4, v5, v6, v7, v8, v9, v10, v36, v40);
  sub_2437EB6D4();
  v11 = type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_9_5(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41);
  v19 = sub_2437EB724();
  OUTLINED_FUNCTION_9_5(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  v27 = sub_2437EB354();
  OUTLINED_FUNCTION_9_5(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43);
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D2AC8(uint64_t a1)
{
  sub_2437EBA94();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v3 = sub_2437D29DC(v1, v2, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_43_0(v3, v4, v5, v6, v7, v8, v9, v10, v36, v40);
  v11 = sub_2437EB6D4();
  OUTLINED_FUNCTION_9_5(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41);
  v19 = sub_2437EB724();
  OUTLINED_FUNCTION_9_5(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  v27 = sub_2437EB354();
  OUTLINED_FUNCTION_9_5(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43);
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D2B9C()
{
  sub_2437D2F50();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437D2BD4()
{
  sub_2437D2F50();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Asset.Protector.securityKey.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.Protector.privacyKey.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t Asset.Protector.init(protobufRepresentation:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  *a2 = v4;
  a2[1] = v5;
  v7 = a1[3];
  sub_2437B6C6C(v4, v5);
  v8 = OUTLINED_FUNCTION_29_1();
  sub_2437B6C6C(v8, v9);
  OUTLINED_FUNCTION_0_7();
  result = sub_2437D3848();
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t Asset.Protector.init(securityKey:privacyKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void Asset.Protector.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v17 = v4;
  v5 = sub_2437EB444();
  v6 = OUTLINED_FUNCTION_48(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  type metadata accessor for CloudAssets_Asset.Protector(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AE8, &qword_2437EF0D8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  v18 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2437D2F50();
  sub_2437EBAF4();
  if (!v0)
  {
    sub_2437BAD3C();
    sub_2437EB954();
    OUTLINED_FUNCTION_15_4();
    sub_2437EB434();
    OUTLINED_FUNCTION_20_3();
    sub_2437D29DC(v9, v10, &protocol conformance descriptor for CloudAssets_Asset.Protector);
    sub_2437EB514();
    v11 = OUTLINED_FUNCTION_28();
    v12(v11);
    v13 = *v1;
    v14 = v1[1];
    v15 = v1[2];
    v16 = v1[3];
    sub_2437B6C6C(v13, v14);
    sub_2437B6C6C(v15, v16);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    *v17 = v13;
    v17[1] = v14;
    v17[2] = v15;
    v17[3] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437D2F50()
{
  result = qword_27ED86AF0;
  if (!qword_27ED86AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86AF0);
  }

  return result;
}

uint64_t Asset.Protector.protobufRepresentation()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = OUTLINED_FUNCTION_29_1();
  sub_2437B6C6C(v7, v8);
  sub_2437B6C6C(v6, v5);
  CloudAssets_Asset.Protector.init()(a1);
  sub_2437B7168(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;
  result = sub_2437B7168(*(a1 + 16), *(a1 + 24));
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  return result;
}

void Asset.Protector.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v4 = v3;
  v24[1] = type metadata accessor for CloudAssets_Asset.Protector(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86AF8, &qword_2437EF0E0);
  OUTLINED_FUNCTION_0();
  v24[3] = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v8 = *v0;
  v9 = v0[1];
  v11 = v0[2];
  v10 = v0[3];
  v12 = v4[3];
  v13 = v4;
  v15 = v24 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_2437D2F50();
  sub_2437EBB04();
  sub_2437B6C6C(v8, v9);
  sub_2437B6C6C(v11, v10);
  CloudAssets_Asset.Protector.init()(v2);
  sub_2437B7168(*v2, *(v2 + 8));
  *v2 = v8;
  *(v2 + 8) = v9;
  sub_2437B7168(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = v11;
  *(v2 + 24) = v10;
  OUTLINED_FUNCTION_20_3();
  sub_2437D29DC(v16, v17, &protocol conformance descriptor for CloudAssets_Asset.Protector);
  v18 = sub_2437EB504();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    v20(v15, v27);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
  }

  else
  {
    v21 = v18;
    v22 = v19;
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    v25 = v21;
    v26 = v22;
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v25, v26);
    OUTLINED_FUNCTION_45();
    v23(v15, v27);
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

uint64_t static Asset.Protector.== infix(_:_:)(void *a1, void *a2)
{
  if (MEMORY[0x245D3FA00](*a1, a1[1], *a2, a2[1]))
  {
    OUTLINED_FUNCTION_22();

    JUMPOUT(0x245D3FA00);
  }

  return 0;
}

uint64_t Asset.Protector.hash(into:)(uint64_t a1)
{
  sub_2437EB354();

  return sub_2437EB354();
}

uint64_t Asset.Protector.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_0(a1);
  sub_2437EB354();
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D3368(uint64_t a1)
{
  sub_2437EBA94();
  sub_2437EB354();
  sub_2437EB354();
  return sub_2437EBAD4();
}

uint64_t sub_2437D3400(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6675626F746F7270 && a2 == 0xEC00000061746144)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437D34A0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_0(a1);
  MEMORY[0x245D40160](0);
  return sub_2437EBAD4();
}

uint64_t sub_2437D34F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437D3400(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437D3524()
{
  sub_2437D3D20();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437D355C()
{
  sub_2437D3D20();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437D35C8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v4(v3);
  OUTLINED_FUNCTION_1_0();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

void Asset.protector.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = (v1 + *(type metadata accessor for Asset(v2) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  sub_2437B6C6C(v4, v5);

  sub_2437B6C6C(v6, v7);
}

uint64_t Asset.init(protobufRepresentation:)(uint64_t *a1)
{
  v6 = OUTLINED_FUNCTION_13();
  v7 = type metadata accessor for CloudAssets_Asset.Protector(v6);
  v8 = OUTLINED_FUNCTION_48(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_1();
  v9 = type metadata accessor for CloudAssets_Asset.ID(0);
  v10 = OUTLINED_FUNCTION_48(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_0();
  v11 = type metadata accessor for Asset.ID(0);
  v12 = OUTLINED_FUNCTION_48(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  CloudAssets_Asset.id.getter(v4);
  Asset.ID.init(protobufRepresentation:)(v4, v15);
  if (v2)
  {
    OUTLINED_FUNCTION_2_5();
    return sub_2437D3848();
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    sub_2437D3D74(v15, v1);
    CloudAssets_Asset.protector.getter(v3);
    v17 = *v3;
    v18 = v3[1];
    v19 = v3[2];
    v20 = v3[3];
    v21 = OUTLINED_FUNCTION_24_1();
    sub_2437B6C6C(v21, v22);
    v23 = OUTLINED_FUNCTION_25_0();
    sub_2437B6C6C(v23, v24);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    v25 = type metadata accessor for Asset(0);
    v26 = (v1 + *(v25 + 20));
    *v26 = v17;
    v26[1] = v18;
    v26[2] = v19;
    v26[3] = v20;
    v27 = *a1;
    OUTLINED_FUNCTION_2_5();
    result = sub_2437D3848();
    *(v1 + *(v25 + 24)) = v27;
  }

  return result;
}

uint64_t sub_2437D3848()
{
  v1 = OUTLINED_FUNCTION_55();
  v2(v1);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(v0);
  return v0;
}

__n128 Asset.init(id:protector:size:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_5_3();
  sub_2437D3D74(v7, v8);
  v9 = type metadata accessor for Asset(0);
  v10 = (a4 + *(v9 + 20));
  result = *a2;
  v12 = *(a2 + 16);
  *v10 = *a2;
  v10[1] = v12;
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

void Asset.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v4 = v3;
  v41 = v5;
  v6 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v7 = OUTLINED_FUNCTION_48(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v40 = (v9 - v8);
  v10 = OUTLINED_FUNCTION_35();
  v11 = type metadata accessor for CloudAssets_Asset.ID(v10);
  v12 = OUTLINED_FUNCTION_48(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v43 = (v14 - v13);
  v15 = OUTLINED_FUNCTION_35();
  v16 = type metadata accessor for Asset.ID(v15);
  v17 = OUTLINED_FUNCTION_48(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v42 = v19 - v18;
  OUTLINED_FUNCTION_35();
  v20 = sub_2437EB444();
  v21 = OUTLINED_FUNCTION_48(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v22 = OUTLINED_FUNCTION_35();
  type metadata accessor for CloudAssets_Asset(v22);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_39_0();
  v24 = type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B00, &qword_2437EF0E8);
  OUTLINED_FUNCTION_0();
  v45 = v30;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_27_1();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2437D3D20();
  sub_2437EBAF4();
  if (!v0)
  {
    v46 = v28;
    sub_2437BAD3C();
    sub_2437EB954();
    v39 = v1;
    OUTLINED_FUNCTION_15_4();
    sub_2437EB434();
    OUTLINED_FUNCTION_19_4();
    sub_2437D29DC(v32, v33, &protocol conformance descriptor for CloudAssets_Asset);
    sub_2437EB514();
    CloudAssets_Asset.id.getter(v43);
    Asset.ID.init(protobufRepresentation:)(v43, v42);
    OUTLINED_FUNCTION_5_3();
    sub_2437D3D74(v42, v28);
    CloudAssets_Asset.protector.getter(v40);
    v34 = *v40;
    v44 = v40[1];
    v35 = v40[2];
    v36 = v40[3];
    sub_2437B6C6C(*v40, v44);
    sub_2437B6C6C(v35, v36);
    OUTLINED_FUNCTION_0_7();
    sub_2437D3848();
    v37 = (v46 + *(v24 + 20));
    *v37 = v34;
    v37[1] = v44;
    v37[2] = v35;
    v37[3] = v36;
    v38 = *v2;
    OUTLINED_FUNCTION_2_5();
    sub_2437D3848();
    *(v46 + *(v24 + 24)) = v38;
    (*(v45 + 8))(v39, v29);
    sub_2437D3D74(v46, v41);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437D3D20()
{
  result = qword_27ED86B08;
  if (!qword_27ED86B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B08);
  }

  return result;
}

uint64_t sub_2437D3D74(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v4(v3);
  OUTLINED_FUNCTION_1_0();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t Asset.protobufRepresentation()()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_13();
  v4 = type metadata accessor for CloudAssets_Asset.Protector(v3);
  v5 = OUTLINED_FUNCTION_48(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_1();
  v45 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for CloudAssets_Asset.ID(0);
  v12 = OUTLINED_FUNCTION_48(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x28223BE20](v13);
  v15 = (&v44 - v14);
  CloudAssets_Asset.ID.init()(&v44 - v14);
  v16 = sub_2437EB2C4();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  v19 = type metadata accessor for Asset.ID(0);
  v20 = (v2 + v19[5]);
  v21 = *v20;
  v22 = v20[1];

  v15[2] = v21;
  v15[3] = v22;
  v23 = (v2 + v19[6]);
  v24 = *v23;
  v25 = v23[1];
  v26 = OUTLINED_FUNCTION_25_0();
  sub_2437B6C6C(v26, v27);
  v28 = OUTLINED_FUNCTION_28();
  sub_2437B7168(v28, v29);
  v15[4] = v24;
  v15[5] = v25;
  v30 = (v2 + v19[7]);
  v31 = *v30;
  v32 = v30[1];
  sub_2437B6C6C(*v30, v32);
  v33 = OUTLINED_FUNCTION_25_0();
  sub_2437B7168(v33, v34);
  v15[6] = v31;
  v15[7] = v32;
  v35 = type metadata accessor for Asset(0);
  v36 = (v2 + *(v35 + 20));
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  sub_2437B6C6C(*v36, v38);
  sub_2437B6C6C(v39, v40);
  CloudAssets_Asset.Protector.init()(v10);
  sub_2437B7168(*v10, *(v10 + 1));
  *v10 = v37;
  *(v10 + 1) = v38;
  sub_2437B7168(*(v10 + 2), *(v10 + 3));
  *(v10 + 2) = v39;
  *(v10 + 3) = v40;
  CloudAssets_Asset.init()(v0);
  OUTLINED_FUNCTION_21_2();
  v41 = OUTLINED_FUNCTION_24_1();
  sub_2437D35C8(v41, v42);
  CloudAssets_Asset.id.setter();
  sub_2437D35C8(v10, v45);
  CloudAssets_Asset.protector.setter();
  OUTLINED_FUNCTION_0_7();
  sub_2437D3848();
  OUTLINED_FUNCTION_3_5();
  result = sub_2437D3848();
  *v0 = *(v2 + *(v35 + 24));
  return result;
}

void Asset.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v2 = OUTLINED_FUNCTION_34();
  type metadata accessor for CloudAssets_Asset(v2);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_39_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B10, &qword_2437EF0F0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_46_0();
  sub_2437D3D20();
  sub_2437EBB04();
  Asset.protobufRepresentation()();
  OUTLINED_FUNCTION_19_4();
  sub_2437D29DC(v8, v9, &protocol conformance descriptor for CloudAssets_Asset);
  v10 = sub_2437EB504();
  if (v0)
  {
    OUTLINED_FUNCTION_2_5();
    sub_2437D3848();
  }

  else
  {
    v12 = v10;
    v13 = v11;
    OUTLINED_FUNCTION_2_5();
    sub_2437D3848();
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v12, v13);
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_15_1();
}

BOOL static Asset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_2437EB2F4())
  {
    OUTLINED_FUNCTION_14_4();
    v6 = OUTLINED_FUNCTION_17_0(v5);
    v10 = v6 == v9 && v7 == v8;
    if (v10 || (sub_2437EBA14() & 1) != 0)
    {
      v11 = OUTLINED_FUNCTION_17_0(*(v2 + 24));
      if (MEMORY[0x245D3FA00](v11))
      {
        v12 = OUTLINED_FUNCTION_17_0(*(v2 + 28));
        if (MEMORY[0x245D3FA00](v12))
        {
          v41 = type metadata accessor for Asset(0);
          v13 = OUTLINED_FUNCTION_24_1();
          sub_2437B6C6C(v13, v14);
          v15 = OUTLINED_FUNCTION_29_1();
          sub_2437B6C6C(v15, v16);
          v17 = OUTLINED_FUNCTION_28();
          sub_2437B6C6C(v17, v18);
          v19 = OUTLINED_FUNCTION_25_0();
          sub_2437B6C6C(v19, v20);
          v21 = OUTLINED_FUNCTION_24_1();
          if (MEMORY[0x245D3FA00](v21))
          {
            v22 = OUTLINED_FUNCTION_29_1();
            v40 = MEMORY[0x245D3FA00](v22);
            v23 = OUTLINED_FUNCTION_28();
            sub_2437B7168(v23, v24);
            v25 = OUTLINED_FUNCTION_25_0();
            sub_2437B7168(v25, v26);
            v27 = OUTLINED_FUNCTION_24_1();
            sub_2437B7168(v27, v28);
            v29 = OUTLINED_FUNCTION_29_1();
            sub_2437B7168(v29, v30);
            if (v40)
            {
              return *(a1 + *(v41 + 24)) == *(a2 + *(v41 + 24));
            }
          }

          else
          {
            v32 = OUTLINED_FUNCTION_28();
            sub_2437B7168(v32, v33);
            v34 = OUTLINED_FUNCTION_25_0();
            sub_2437B7168(v34, v35);
            v36 = OUTLINED_FUNCTION_24_1();
            sub_2437B7168(v36, v37);
            v38 = OUTLINED_FUNCTION_29_1();
            sub_2437B7168(v38, v39);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t Asset.hash(into:)()
{
  OUTLINED_FUNCTION_55();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  sub_2437D29DC(v1, v2, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_33_1();
  sub_2437EB6D4();
  type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_12_3();
  sub_2437EB724();
  OUTLINED_FUNCTION_13_4();
  sub_2437EB354();
  OUTLINED_FUNCTION_13_4();
  sub_2437EB354();
  v3 = type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_12_3();
  sub_2437EB354();
  sub_2437EB354();
  return MEMORY[0x245D40160](*(v0 + *(v3 + 24)));
}

uint64_t Asset.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_0(a1);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v4 = sub_2437D29DC(v2, v3, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_43_0(v4, v5, v6, v7, v8, v9, v10, v11, v38, v42);
  sub_2437EB6D4();
  v12 = type metadata accessor for Asset.ID(0);
  OUTLINED_FUNCTION_9_5(v12, v13, v14, v15, v16, v17, v18, v19, v39, v43);
  v20 = sub_2437EB724();
  OUTLINED_FUNCTION_9_5(v20, v21, v22, v23, v24, v25, v26, v27, v40, v44);
  v28 = sub_2437EB354();
  OUTLINED_FUNCTION_9_5(v28, v29, v30, v31, v32, v33, v34, v35, v41, v45);
  sub_2437EB354();
  v36 = type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_12_3();
  sub_2437EB354();
  sub_2437EB354();
  MEMORY[0x245D40160](*(v1 + *(v36 + 24)));
  return sub_2437EBAD4();
}

uint64_t sub_2437D4520(uint64_t a1, uint64_t a2)
{
  sub_2437EBA94();
  sub_2437EB334();
  OUTLINED_FUNCTION_1_8();
  v6 = sub_2437D29DC(v4, v5, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_43_0(v6, v7, v8, v9, v10, v11, v12, v13, v39, v43);
  sub_2437EB6D4();
  v14 = OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_9_5(v14, v15, v16, v17, v18, v19, v20, v21, v40, v44);
  v22 = sub_2437EB724();
  OUTLINED_FUNCTION_9_5(v22, v23, v24, v25, v26, v27, v28, v29, v41, v45);
  v30 = sub_2437EB354();
  OUTLINED_FUNCTION_9_5(v30, v31, v32, v33, v34, v35, v36, v37, v42, v46);
  sub_2437EB354();
  sub_2437EB354();
  sub_2437EB354();
  MEMORY[0x245D40160](*(v2 + *(a2 + 24)));
  return sub_2437EBAD4();
}

unint64_t sub_2437D45FC()
{
  result = qword_27ED86B18;
  if (!qword_27ED86B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B18);
  }

  return result;
}

unint64_t sub_2437D4654()
{
  result = qword_27ED86B20;
  if (!qword_27ED86B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B20);
  }

  return result;
}

unint64_t sub_2437D46AC()
{
  result = qword_27ED86B28;
  if (!qword_27ED86B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B28);
  }

  return result;
}

unint64_t sub_2437D474C()
{
  result = qword_27ED86B38;
  if (!qword_27ED86B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B38);
  }

  return result;
}

unint64_t sub_2437D47A4()
{
  result = qword_27ED86B40;
  if (!qword_27ED86B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B40);
  }

  return result;
}

unint64_t sub_2437D47FC()
{
  result = qword_27ED86B48;
  if (!qword_27ED86B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B48);
  }

  return result;
}

unint64_t sub_2437D4854()
{
  result = qword_27ED86B50;
  if (!qword_27ED86B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B50);
  }

  return result;
}

unint64_t sub_2437D48AC()
{
  result = qword_27ED86B58;
  if (!qword_27ED86B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B58);
  }

  return result;
}

unint64_t sub_2437D4904()
{
  result = qword_27ED86B60;
  if (!qword_27ED86B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B60);
  }

  return result;
}

unint64_t sub_2437D495C()
{
  result = qword_27ED86B68;
  if (!qword_27ED86B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86B68);
  }

  return result;
}

uint64_t sub_2437D4A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_55();
  type metadata accessor for Asset.ID(v6);
  OUTLINED_FUNCTION_21();
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_33_1();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 8) >> 60;
    if (((4 * v11) & 0xC) != 0)
    {
      return 16 - ((4 * v11) & 0xC | (v11 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

void sub_2437D4B08(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_34();
  type metadata accessor for Asset.ID(v8);
  OUTLINED_FUNCTION_21();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_40_0();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    v14 = (v4 + *(a4 + 20));
    *v14 = 0;
    v14[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }
}

uint64_t sub_2437D4BAC(uint64_t a1)
{
  result = type metadata accessor for Asset.ID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2437D4C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55();
  sub_2437EB334();
  OUTLINED_FUNCTION_21();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_33_1();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2437D4CFC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_34();
  sub_2437EB334();
  OUTLINED_FUNCTION_21();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_40_0();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_2437D4D94(uint64_t a1)
{
  result = sub_2437EB334();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2437D4E4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_2437D4E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *sub_2437D4F0C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437D4FA8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

double OUTLINED_FUNCTION_15_4()
{
  *(v0 - 112) = *(v0 - 96);
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_2437D5220()
{
  v0 = type metadata accessor for ServiceIdentifier(0);
  __swift_allocate_value_buffer(v0, qword_27ED8E0D0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D52A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437D5304()
{
  v0 = type metadata accessor for ServiceIdentifier(0);
  __swift_allocate_value_buffer(v0, qword_27ED8E0E8);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D5384()
{
  v0 = type metadata accessor for ServiceIdentifier(0);
  __swift_allocate_value_buffer(v0, qword_27ED8E100);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D5404()
{
  v0 = type metadata accessor for ServiceIdentifier(0);
  __swift_allocate_value_buffer(v0, qword_27ED8E118);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_8(v1, v2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2437D5484@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ServiceIdentifier(0);
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_2437D52A0(v6, a3);
}

_BYTE *storeEnumTagSinglePayload for XPCServices(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437D5580);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t *OUTLINED_FUNCTION_0_8@<X0>(unint64_t *result@<X0>, unint64_t a2@<X8>)
{
  *result = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t sub_2437D5650()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2437EB3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B78, &qword_2437EF7F0);
  OUTLINED_FUNCTION_0_9();
  sub_2437DC1CC(v1, v2, MEMORY[0x277CC9600]);
  *(v0 + 112) = sub_2437EB6B4();
  return v0;
}

void sub_2437D56F4()
{
  OUTLINED_FUNCTION_130();
  v1 = v0;
  v32 = v2;
  v33 = v3;
  v30 = v5;
  v31 = v4;
  v6 = v2;
  v7 = sub_2437EB3B4();
  v29 = v7;
  OUTLINED_FUNCTION_4_7();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v14 = sub_2437EB814();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  (*(v16 + 16))(&v28 - v20, v31, v14);
  (*(v9 + 16))(v13, v6, v7);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v9 + 80) + v23 + 8) & ~*(v9 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v30;
  *(v25 + 24) = v26;
  (*(v16 + 32))(v25 + v22, v21, v14);
  *(v25 + v23) = v1;
  (*(v9 + 32))(v25 + v24, v13, v29);
  OUTLINED_FUNCTION_20_4();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v1 + 112);
  sub_2437DB10C(sub_2437D5E38, v25, v32, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v34;
  swift_endAccess();
  OUTLINED_FUNCTION_131();
}

void sub_2437D5960()
{
  OUTLINED_FUNCTION_130();
  v27[2] = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_15_5();
  v6 = sub_2437EB7D4();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = (v5 + *(type metadata accessor for XPCAsyncSequenceResponse(0) + 20));
  v13 = v12[1];
  if (v13 >> 60 == 11)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_2437EB8A4();

    v29 = 0xD000000000000022;
    v30 = 0x80000002437F3420;
    sub_2437EB3B4();
    OUTLINED_FUNCTION_0_9();
    sub_2437DC1CC(v15, v16, MEMORY[0x277CC9628]);
    v17 = v28;
    v18 = sub_2437EBA04();
    MEMORY[0x245D3FDF0](v18);

    v19 = v29;
    v20 = v30;
    v21 = sub_2437DBB6C();
    v22 = OUTLINED_FUNCTION_35_0(&type metadata for XPCError, v21);
    *v23 = v19;
    v23[1] = v20;
    v29 = v22;
    OUTLINED_FUNCTION_15_5();
    sub_2437EB814();
    sub_2437EB804();
    OUTLINED_FUNCTION_20_4();
    v14 = v17;
  }

  else
  {
    if (v13 >> 60 != 15)
    {
      v27[1] = v3;
      v26 = *v12;
      sub_2437EB204();
      swift_allocObject();
      sub_2437B6C6C(v26, v13);
      sub_2437EB1F4();
      sub_2437EB1E4();

      OUTLINED_FUNCTION_15_5();
      sub_2437EB814();
      sub_2437EB7F4();
      sub_2437DC2E4(v26, v13);
      (*(v8 + 8))(v11, v6);
      goto LABEL_7;
    }

    v29 = 0;
    OUTLINED_FUNCTION_15_5();
    sub_2437EB814();
    sub_2437EB804();
    OUTLINED_FUNCTION_20_4();
    v14 = v28;
  }

  sub_2437DAFAC(v14);
  OUTLINED_FUNCTION_56_0();
  swift_endAccess();
  v24 = OUTLINED_FUNCTION_22();
  sub_2437DC2D4(v24, v25);
LABEL_7:
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437D5CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v13 = sub_2437EB814();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = (*(v17 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v22 = (v18 + *(v20 + 80) + 8) & ~*(v20 + 80);
  (*(v15 + 8))(v12 + v16, v13);

  (*(v21 + 8))(v12 + v22, v19);
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821FE8E8](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

void sub_2437D5E38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v0 = sub_2437EB814();
  OUTLINED_FUNCTION_7_5(v0);
  v1 = sub_2437EB3B4();
  OUTLINED_FUNCTION_48(v1);

  sub_2437D5960();
}

uint64_t sub_2437D5F48(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16))
  {

    v5 = sub_2437DAD58(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 16 * v5);

      v7(a1);
    }

    else
    {
    }
  }

  return result;
}

void sub_2437D5FEC()
{
  OUTLINED_FUNCTION_130();
  v1 = type metadata accessor for XPCAsyncSequenceResponse(0);
  v2 = OUTLINED_FUNCTION_48(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  v29 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  swift_beginAccess();
  v15 = v0[14];
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v27 = v7 + 32;
  v28 = v7 + 16;
  v30 = v15;

  v21 = 0;
  v26 = xmmword_2437EF7C0;
  while (v19)
  {
    v22 = v21;
LABEL_9:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v7 + 16))(v14, *(v30 + 48) + *(v7 + 72) * (v23 | (v22 << 6)), v29);
    v24 = OUTLINED_FUNCTION_30_1();
    v25(v24);
    v31 = v26;
    XPCAsyncSequenceResponse.init(id:event:)(v11, &v31, v5);
    (*(*v0 + 136))(v5);
    sub_2437DB7C0(v5, type metadata accessor for XPCAsyncSequenceResponse);
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      OUTLINED_FUNCTION_131();
      return;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2437D6240()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2437D62A0()
{
  v0 = sub_2437EB5F4();
  __swift_allocate_value_buffer(v0, qword_27ED8E1B8);
  v1 = OUTLINED_FUNCTION_22();
  __swift_project_value_buffer(v1, v2);
  sub_2437E6E54();
  type metadata accessor for XPCMessageSender();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BB8, &qword_2437EF8E8);
  sub_2437EB704();
  return sub_2437EB5E4();
}

uint64_t XPCMessageSender.__allocating_init(serviceIdentifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  XPCMessageSender.init(serviceIdentifier:)(a1);
  return v2;
}

uint64_t XPCMessageSender.init(serviceIdentifier:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServiceIdentifier(0);
  v5 = OUTLINED_FUNCTION_48(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  type metadata accessor for XPCMessageSender.AsyncSequenceDispatcher();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2437EB3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B78, &qword_2437EF7F0);
  OUTLINED_FUNCTION_0_9();
  sub_2437DC1CC(v10, v11, MEMORY[0x277CC9600]);
  *(v9 + 112) = sub_2437EB6B4();
  *(v2 + 56) = v9;
  v12 = type metadata accessor for XPCSessionCacheImplementation(0);
  sub_2437DBF30(a1, v8, type metadata accessor for ServiceIdentifier);
  swift_retain_n();
  v13 = sub_2437E888C();
  v16 = v12;
  v17 = &off_28568DDF0;

  *&v15 = v13;
  sub_2437DB7C0(a1, type metadata accessor for ServiceIdentifier);
  sub_2437DB30C(&v15, v2 + 16);
  return v2;
}

double sub_2437D6520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCAsyncSequenceResponse(0);
  v7 = OUTLINED_FUNCTION_7_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v12);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_2437DBF30(a1, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for XPCAsyncSequenceResponse);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a2;
  sub_2437DC098(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);

  v22 = OUTLINED_FUNCTION_14_5();
  sub_2437D674C(v22, v23, v15, v24, v21);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_2437D66B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 136) & 0xFFFFFFFFFFFFLL | 0x9A65000000000000;
  v5[4] = *(*a4 + 136);
  v5[5] = v6;
  return OUTLINED_FUNCTION_5_5(sub_2437D66F0);
}

uint64_t sub_2437D66F0()
{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 32))(*(v0 + 24));
  OUTLINED_FUNCTION_12_4();

  return v1();
}

uint64_t sub_2437D674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2437DB750(a3, v24 - v10);
  v12 = sub_2437EB7B4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2437DBD44(v11, &qword_27ED86B88, &qword_2437EF800);
  }

  else
  {
    sub_2437EB7A4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2437EB764();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2437EB714() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);

      return v22;
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

  sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t XPCMessageSender.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_2437DB324(v0 + 16, v15);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_2437DB30C(v15, v9 + 32);
  v10 = OUTLINED_FUNCTION_14_5();
  sub_2437D674C(v10, v11, v4, v12, v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_2437D6B30()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_11_2(*(v0 + 16));
  OUTLINED_FUNCTION_13_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_4(v2);

  return v5(v3);
}

uint64_t sub_2437D6C34()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;

  OUTLINED_FUNCTION_12_4();

  return v3();
}

uint64_t XPCMessageSender.__deallocating_deinit()
{
  XPCMessageSender.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t XPCMessageSender.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  return OUTLINED_FUNCTION_5_5(sub_2437D6D98);
}

uint64_t sub_2437D6D98()
{
  OUTLINED_FUNCTION_44_0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  *(v4 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2437D6E90;
  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822008A0](v7);
}

uint64_t sub_2437D6E90()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_48_1();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_12_4();

    return v8();
  }
}

uint64_t sub_2437D6FB0()
{
  OUTLINED_FUNCTION_10_5();

  OUTLINED_FUNCTION_12_4();

  return v0();
}

void sub_2437D700C()
{
  OUTLINED_FUNCTION_130();
  v45 = v1;
  v46 = v0;
  v3 = v2;
  v5 = v4;
  v47 = v6;
  v42 = v8;
  v43 = v7;
  v44 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v10 = sub_2437EB794();
  v40 = v10;
  OUTLINED_FUNCTION_4_7();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v41 = &v40 - v16;
  OUTLINED_FUNCTION_4_7();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v23 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v24);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v25);
  v27 = &v40 - v26;
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  (*(v19 + 16))(v23, v42, v5);
  (*(v12 + 16))(v17, v43, v10);
  v32 = (*(v19 + 80) + 72) & ~*(v19 + 80);
  v33 = (v21 + v32 + *(v12 + 80)) & ~*(v12 + 80);
  v34 = (v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = v5;
  *(v35 + 5) = v3;
  v36 = v45;
  *(v35 + 6) = v46;
  *(v35 + 7) = v36;
  *(v35 + 8) = v44;
  (*(v19 + 32))(&v35[v32], v23, v5);
  (*(v12 + 32))(&v35[v33], v41, v40);
  *&v35[v34] = v47;

  v37 = OUTLINED_FUNCTION_14_5();
  sub_2437D674C(v37, v38, v27, v39, v35);

  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437D72B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_10_5();
  v11[23] = a10;
  v11[24] = a11;
  v11[21] = v12;
  v11[22] = a9;
  v11[19] = v13;
  v11[20] = v14;
  v11[17] = v15;
  v11[18] = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v17 = sub_2437EB794();
  v11[25] = v17;
  OUTLINED_FUNCTION_7_5(v17);
  v11[26] = v18;
  v11[27] = *(v19 + 64);
  v11[28] = OUTLINED_FUNCTION_46_1();
  v20 = OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_58_0(v20);
}

uint64_t sub_2437D7390()
{
  OUTLINED_FUNCTION_41_0();
  sub_2437DB324(v0[17] + 16, (v0 + 2));
  OUTLINED_FUNCTION_11_2(v0 + 2);
  OUTLINED_FUNCTION_13_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_4(v2);

  return v5(v3);
}

uint64_t sub_2437D74A4()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v4;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2437D75A8()
{
  v24 = *(v0 + 248);
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v21 = *(v0 + 200);
  v22 = *(v0 + 224);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v23 = *(v0 + 160);
  (*(v2 + 16))();
  sub_2437DB324(v0 + 16, v0 + 56);
  v7 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 2) = v6;
  *(v9 + 3) = v5;
  *(v9 + 4) = v4;
  *(v9 + 5) = v3;
  (*(v2 + 32))(&v9[v7], v22, v21);
  sub_2437DB30C((v0 + 56), &v9[v8]);
  *&v9[(v8 + 47) & 0xFFFFFFFFFFFFFFF8] = v23;
  sub_2437EB634();
  if (v24)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    swift_getErrorValue();
    sub_2437EBA44();
    v10 = sub_2437DBB6C();
    v11 = OUTLINED_FUNCTION_35_0(&type metadata for XPCError, v10);
    OUTLINED_FUNCTION_51_0(v11, v12);
    sub_2437EB774();
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
    }

    v13 = sub_2437EB5F4();
    __swift_project_value_buffer(v13, qword_27ED8E1B8);
    MEMORY[0x245D40490](v24);
    v14 = sub_2437EB5D4();
    v15 = sub_2437EB844();
    MEMORY[0x245D40480](v24);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_59_0();
      v17 = OUTLINED_FUNCTION_45_0();
      *v16 = 138412290;
      MEMORY[0x245D40490](v24);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_2437B3000, v14, v15, "received %@ in sending message", v16, 0xCu);
      sub_2437DBD44(v17, &qword_27ED86B98, &qword_2437EF8D8);
      OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_22_4();
    }

    MEMORY[0x245D40480](v24);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  OUTLINED_FUNCTION_12_4();

  return v19();
}

uint64_t sub_2437D787C()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_getErrorValue();
  sub_2437EBA44();
  v2 = sub_2437DBB6C();
  v3 = OUTLINED_FUNCTION_35_0(&type metadata for XPCError, v2);
  OUTLINED_FUNCTION_51_0(v3, v4);
  sub_2437EB774();
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
  }

  v5 = sub_2437EB5F4();
  __swift_project_value_buffer(v5, qword_27ED8E1B8);
  MEMORY[0x245D40490](v1);
  v6 = sub_2437EB5D4();
  v7 = sub_2437EB844();
  MEMORY[0x245D40480](v1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_59_0();
    v9 = OUTLINED_FUNCTION_45_0();
    *v8 = 138412290;
    MEMORY[0x245D40490](v1);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_2437B3000, v6, v7, "received %@ in sending message", v8, 0xCu);
    sub_2437DBD44(v9, &qword_27ED86B98, &qword_2437EF8D8);
    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_22_4();
  }

  MEMORY[0x245D40480](v1);

  OUTLINED_FUNCTION_12_4();

  return v11();
}

void sub_2437D7A2C()
{
  OUTLINED_FUNCTION_130();
  v1 = v0;
  v88 = v2;
  v91 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v6);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  v89 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BC8, &qword_2437EF900);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v83 - v11;
  v13 = sub_2437EB6A4();
  OUTLINED_FUNCTION_0();
  v87 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_1();
  v86 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v90 = &v83 - v19;
  OUTLINED_FUNCTION_4_7();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_32_1();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v83 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v30 = sub_2437EBAE4();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v31);
  v33 = (&v83 - v32);
  (*(v34 + 16))(&v83 - v32, v5, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v85 = v1;
    v35 = *v33;
    *&v92[0] = v35;
    MEMORY[0x245D40490](v35);
    v36 = v13;
    if (swift_dynamicCast())
    {
      v83 = v29;
      v84 = v35;
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
      v37 = v87;
      v38 = v90;
      (*(v87 + 32))(v90, v12, v13);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
      }

      v39 = sub_2437EB5F4();
      __swift_project_value_buffer(v39, qword_27ED8E1B8);
      v40 = *(v37 + 16);
      v41 = v86;
      v40(v86, v38, v36);
      v42 = sub_2437EB5D4();
      v43 = sub_2437EB844();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v37;
        v45 = OUTLINED_FUNCTION_59_0();
        v46 = OUTLINED_FUNCTION_45_0();
        *v45 = 138412290;
        OUTLINED_FUNCTION_1_10();
        v49 = sub_2437DC1CC(v47, v48, MEMORY[0x277D855F0]);
        v50 = OUTLINED_FUNCTION_35_0(v36, v49);
        v51 = v36;
        v53 = OUTLINED_FUNCTION_38_1(v50, v52);
        (v40)(v53);
        v54 = _swift_stdlib_bridgeErrorToNSError();
        v55 = *(v44 + 8);
        v56 = OUTLINED_FUNCTION_30_1();
        v55(v56);
        v57 = v55;
        *(v45 + 4) = v54;
        *v46 = v54;
        v36 = v51;
        _os_log_impl(&dword_2437B3000, v42, v43, "received xpc error %@ from xpc session", v45, 0xCu);
        sub_2437DBD44(v46, &qword_27ED86B98, &qword_2437EF8D8);
        v38 = v90;
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_26_1();
      }

      else
      {

        v57 = *(v37 + 8);
        v57(v41, v36);
      }

      sub_2437EB7B4();
      v69 = v89;
      OUTLINED_FUNCTION_54();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
      sub_2437DB324(v88, v92);
      v74 = swift_allocObject();
      *(v74 + 16) = 0;
      *(v74 + 24) = 0;
      sub_2437DB30C(v92, v74 + 32);
      v75 = OUTLINED_FUNCTION_14_5();
      sub_2437D82B4(v75, v76, v69, v77, v74);

      OUTLINED_FUNCTION_1_10();
      sub_2437DC1CC(v78, v79, MEMORY[0x277D855F0]);
      sub_2437EBA44();
      OUTLINED_FUNCTION_56_0();
      v80 = sub_2437DBB6C();
      v81 = OUTLINED_FUNCTION_35_0(&type metadata for XPCError, v80);
      *v82 = v74;
      v82[1] = v38;
      *&v92[0] = v81;
      OUTLINED_FUNCTION_55_0();
      sub_2437EB794();
      sub_2437EB774();
      MEMORY[0x245D40480](v84);
      v57(v38, v36);
    }

    else
    {
      OUTLINED_FUNCTION_54();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v13);
      sub_2437DBD44(v12, &qword_27ED86BC8, &qword_2437EF900);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
      }

      v61 = sub_2437EB5F4();
      __swift_project_value_buffer(v61, qword_27ED8E1B8);
      v62 = sub_2437EB5D4();
      v63 = sub_2437EB844();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_2437B3000, v62, v63, "error received from xpc session is not XPC error type.", v64, 2u);
        OUTLINED_FUNCTION_26_1();
      }

      swift_getErrorValue();
      v65 = v93;
      sub_2437EBA44();
      OUTLINED_FUNCTION_56_0();
      v66 = sub_2437DBB6C();
      v67 = OUTLINED_FUNCTION_35_0(&type metadata for XPCError, v66);
      *v68 = v62;
      v68[1] = v65;
      *&v92[0] = v67;
      sub_2437EB794();
      sub_2437EB774();
      MEMORY[0x245D40480](v35);
    }
  }

  else
  {
    (*(v21 + 32))(v28, v33, v1);
    (*(v21 + 16))(v25, v28, v1);
    sub_2437EB794();
    sub_2437EB784();
    (*(v21 + 8))(v28, v1);
  }

  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437D81B0()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_11_2(*(v0 + 16));
  OUTLINED_FUNCTION_13_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_4(v2);

  return v5(v3);
}

uint64_t sub_2437D82B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2437DB750(a3, v21 - v9);
  v11 = sub_2437EB7B4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2437DBD44(v10, &qword_27ED86B88, &qword_2437EF800);
  }

  else
  {
    sub_2437EB7A4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2437EB764();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2437EB714() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2437DBD44(a3, &qword_27ED86B88, &qword_2437EF800);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t XPCMessageSender.send<A, B>(_:)()
{
  OUTLINED_FUNCTION_44_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = *v0;
  v8 = *(v6 - 8);
  v1[10] = v8;
  v1[11] = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_46_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  OUTLINED_FUNCTION_48(v9);
  v1[13] = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_54_0();
  v10 = sub_2437EB7E4();
  v1[14] = v10;
  OUTLINED_FUNCTION_7_5(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_54_0();
  v12 = sub_2437EB814();
  v1[17] = v12;
  OUTLINED_FUNCTION_7_5(v12);
  v1[18] = v13;
  v1[19] = *(v14 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2437D8718()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v22 = *(v0 + 136);
  v23 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v25 = *(v0 + 152);
  v26 = *(v0 + 104);
  v32 = *(v0 + 96);
  v6 = *(v0 + 80);
  v24 = *(v0 + 88);
  v29 = *(v0 + 64);
  v30 = *(v0 + 72);
  v28 = *(v0 + 56);
  v31 = *(v0 + 32);
  v27 = *(v0 + 40);
  v21 = *(v0 + 24);
  sub_2437D89A8(v3);
  sub_2437EB7C4();
  (*(v4 + 8))(v3, v5);
  sub_2437EB7B4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  (*(v2 + 16))(v23, v1, v22);
  v11 = v6;
  (*(v6 + 16))(v32, v21, v31);
  v12 = v2;
  v13 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v14 = (v25 + *(v11 + 80) + v13) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v31;
  *(v15 + 40) = v27;
  *(v15 + 56) = v28;
  *(v15 + 64) = v29;
  (*(v12 + 32))(v15 + v13, v23, v22);
  (*(v11 + 32))(v15 + v14, v32, v31);
  *(v15 + ((v24 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

  v16 = OUTLINED_FUNCTION_14_5();
  sub_2437D82B4(v16, v17, v26, v18, v15);

  (*(v12 + 8))(v1, v22);

  OUTLINED_FUNCTION_12_4();

  return v19();
}

uint64_t sub_2437D89A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v3 = sub_2437EB7E4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2437D8A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_5();
  *(v10 + 88) = a10;
  *(v10 + 72) = a9;
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 40) = v13;
  *(v10 + 48) = v14;
  v15 = sub_2437EB6A4();
  *(v10 + 96) = v15;
  OUTLINED_FUNCTION_7_5(v15);
  *(v10 + 104) = v16;
  *(v10 + 112) = swift_task_alloc();
  *(v10 + 120) = swift_task_alloc();
  *(v10 + 128) = swift_task_alloc();
  v17 = type metadata accessor for XPCAsyncSequenceRequest(0);
  *(v10 + 136) = v17;
  OUTLINED_FUNCTION_48(v17);
  *(v10 + 144) = OUTLINED_FUNCTION_46_1();
  v18 = sub_2437EB3B4();
  *(v10 + 152) = v18;
  OUTLINED_FUNCTION_7_5(v18);
  *(v10 + 160) = v19;
  *(v10 + 168) = swift_task_alloc();
  *(v10 + 176) = swift_task_alloc();
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();
  *(v10 + 200) = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_58_0(v20);
}

uint64_t sub_2437D8BC0()
{
  OUTLINED_FUNCTION_10_5();
  v1 = v0[5];
  sub_2437EB3A4();
  v2 = *(v1 + 56);
  v0[26] = v2;
  v3 = (*v2 + 128) & 0xFFFFFFFFFFFFLL | 0xDCB2000000000000;
  v0[27] = *(*v2 + 128);
  v0[28] = v3;

  return MEMORY[0x2822009F8](sub_2437D8C48);
}

uint64_t sub_2437D8C48()
{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 216))(*(v0 + 48), *(v0 + 200), *(v0 + 72), *(v0 + 88));
  v1 = OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2437D8CB4()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_11_2((*(v0 + 40) + 16));
  OUTLINED_FUNCTION_13_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_4(v2);

  return v5(v3);
}

uint64_t sub_2437D8DBC()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v4;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822009F8](v5);
}

void sub_2437D8EC0()
{
  v1 = v0[31];
  (*(v0[20] + 16))(v0[24], v0[25], v0[19]);
  sub_2437EB234();
  swift_allocObject();
  sub_2437EB224();
  sub_2437EB214();
  if (v1)
  {
    (*(v0[20] + 8))(v0[24], v0[19]);

    v0[2] = v1;
    MEMORY[0x245D40490](v1);
    v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B80, &qword_2437EF7F8);
    if (swift_dynamicCast())
    {
      MEMORY[0x245D40480](v1);
      v7 = OUTLINED_FUNCTION_22();
      v8(v7);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
      }

      v9 = v0[20];
      v11 = v0[14];
      v10 = v0[15];
      v12 = v0[12];
      v13 = v0[13];
      v14 = sub_2437EB5F4();
      v0[33] = __swift_project_value_buffer(v14, qword_27ED8E1B8);
      v0[34] = *(v9 + 16);
      v0[35] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15 = OUTLINED_FUNCTION_22();
      v16(v15);
      v17 = *(v13 + 16);
      v0[36] = v17;
      v0[37] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v17(v11, v10, v12);
      v18 = sub_2437EB5D4();
      v19 = sub_2437EB854();
      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[23];
      v23 = v0[19];
      v22 = v0[20];
      v24 = v0[13];
      v25 = v0[14];
      v106 = v0[12];
      if (v20)
      {
        v101 = v18;
        v26 = OUTLINED_FUNCTION_60_0();
        v100 = OUTLINED_FUNCTION_45_0();
        v103 = OUTLINED_FUNCTION_47();
        v108[0] = v103;
        *v26 = 136315394;
        OUTLINED_FUNCTION_0_9();
        sub_2437DC1CC(v27, v28, MEMORY[0x277CC9628]);
        LODWORD(v98) = v19;
        v29 = sub_2437EBA04();
        v97 = v25;
        v31 = v30;
        v32 = v23;
        v33 = *(v22 + 8);
        v33(v21, v32);
        v34 = sub_2437DA7E8(v29, v31, v108);

        *(v26 + 4) = v34;
        *(v26 + 12) = 2112;
        OUTLINED_FUNCTION_1_10();
        v37 = sub_2437DC1CC(v35, v36, MEMORY[0x277D855F0]);
        v38 = OUTLINED_FUNCTION_35_0(v106, v37);
        v40 = OUTLINED_FUNCTION_53_0(v38, v39);
        (v17)(v40);
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = *(v24 + 8);
        v42(v29, v106);
        *(v26 + 14) = v41;
        *v100 = v41;
        OUTLINED_FUNCTION_52_0();
        _os_log_impl(v43, v44, v45, v46, v26, 0x16u);
        sub_2437DBD44(v100, &qword_27ED86B98, &qword_2437EF8D8);
        OUTLINED_FUNCTION_22_4();
        __swift_destroy_boxed_opaque_existential_1(v103);
        OUTLINED_FUNCTION_22_4();
        v47 = v33;
        OUTLINED_FUNCTION_26_1();
      }

      else
      {

        v42 = *(v24 + 8);
        v42(v25, v106);
        v47 = *(v22 + 8);
        v64 = OUTLINED_FUNCTION_57_0();
        v47(v64);
      }

      v0[38] = v47;
      v0[39] = v42;
      if ((sub_2437EB694() & 1) == 0)
      {
        OUTLINED_FUNCTION_11_2((v0[5] + 16));
        OUTLINED_FUNCTION_13_5();
        v86 = swift_task_alloc();
        v0[40] = v86;
        *v86 = v0;
        OUTLINED_FUNCTION_6_4(v86);
        OUTLINED_FUNCTION_40_1();

        __asm { BRAA            X2, X16 }
      }

      v105 = v0[39];
      v65 = v0[36];
      OUTLINED_FUNCTION_50_0();
      v66 = v0[12];
      OUTLINED_FUNCTION_1_10();
      v69 = sub_2437DC1CC(v67, v68, MEMORY[0x277D855F0]);
      v70 = OUTLINED_FUNCTION_35_0(v66, v69);
      v72 = OUTLINED_FUNCTION_38_1(v70, v71);
      v65(v72);
      v0[4] = v70;
      sub_2437EB814();
      sub_2437EB804();
      v73 = OUTLINED_FUNCTION_30_1();
      v74 = v105(v73);
      v82 = OUTLINED_FUNCTION_49_0(v74, v75, v76, v77, v78, v79, v80, v81, v96, v97, v98, v100, v101);
      v83(v82);
      MEMORY[0x245D40480](v0[2]);
    }

    else
    {
      MEMORY[0x245D40480](v0[2]);
      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
      }

      v48 = v0[25];
      v50 = v0[20];
      v49 = v0[21];
      v51 = v0[19];
      v52 = sub_2437EB5F4();
      __swift_project_value_buffer(v52, qword_27ED8E1B8);
      (*(v50 + 16))(v49, v48, v51);
      MEMORY[0x245D40490](v1);
      v53 = sub_2437EB5D4();
      v54 = sub_2437EB854();
      MEMORY[0x245D40480](v1);
      if (os_log_type_enabled(v53, v54))
      {
        v104 = v54;
        v55 = OUTLINED_FUNCTION_60_0();
        v102 = OUTLINED_FUNCTION_45_0();
        v107 = OUTLINED_FUNCTION_47();
        v108[0] = v107;
        *v55 = 136315394;
        OUTLINED_FUNCTION_0_9();
        sub_2437DC1CC(v56, v57, MEMORY[0x277CC9628]);
        v99 = sub_2437EBA04();
        v59 = v58;
        v60 = OUTLINED_FUNCTION_43_1();
        v53(v60);
        v61 = v53;
        v62 = sub_2437DA7E8(v99, v59, v108);

        *(v55 + 4) = v62;
        *(v55 + 12) = 2112;
        MEMORY[0x245D40490](v1);
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 14) = v63;
        *v102 = v63;
        _os_log_impl(&dword_2437B3000, v53, v104, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v55, 0x16u);
        sub_2437DBD44(v102, &qword_27ED86B98, &qword_2437EF8D8);
        OUTLINED_FUNCTION_26_1();
        __swift_destroy_boxed_opaque_existential_1(v107);
        OUTLINED_FUNCTION_26_1();
        OUTLINED_FUNCTION_23_2();
      }

      else
      {

        v84 = OUTLINED_FUNCTION_43_1();
        v53(v84);
        v61 = v53;
      }

      v0[3] = v1;
      sub_2437EB814();
      sub_2437EB804();
      v85 = OUTLINED_FUNCTION_30_1();
      v61(v85);
    }
  }

  else
  {
    v3 = v2;

    v4 = OUTLINED_FUNCTION_30_1();
    sub_2437D163C(v4, v5, v3, v6);
    sub_2437DC1CC(&qword_27ED86BA8, type metadata accessor for XPCAsyncSequenceRequest, &protocol conformance descriptor for XPCAsyncSequenceRequest);
    sub_2437EB644();
    v89 = v0[25];
    v90 = v0[19];
    v91 = v0[20];
    v92 = v0[18];

    OUTLINED_FUNCTION_18_3();
    sub_2437DB7C0(v92, v93);
    (*(v91 + 8))(v89, v90);
  }

  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_40_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2437D9778()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_4();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_48_1();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2437D9874()
{
  v32 = v0;
  (*(v0 + 272))(*(v0 + 176), *(v0 + 200), *(v0 + 152));
  v1 = sub_2437EB5D4();
  v2 = sub_2437EB854();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 304);
  if (v3)
  {
    v29 = *(v0 + 304);
    v5 = OUTLINED_FUNCTION_59_0();
    v6 = OUTLINED_FUNCTION_47();
    v31 = v6;
    *v5 = 136315138;
    OUTLINED_FUNCTION_0_9();
    sub_2437DC1CC(v7, v8, MEMORY[0x277CC9628]);
    v9 = sub_2437EBA04();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_57_0();
    v29(v12);
    v13 = sub_2437DA7E8(v9, v11, &v31);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_2437B3000, v1, v2, "[message id = %s] evict xpc session from cache as it is no longer usable", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_22_4();
  }

  else
  {

    v14 = OUTLINED_FUNCTION_57_0();
    v4(v14);
  }

  v28 = *(v0 + 312);
  v30 = *(v0 + 304);
  v15 = *(v0 + 288);
  v26 = *(v0 + 152);
  v27 = *(v0 + 200);
  v16 = *(v0 + 96);
  OUTLINED_FUNCTION_1_10();
  v19 = sub_2437DC1CC(v17, v18, MEMORY[0x277D855F0]);
  v20 = OUTLINED_FUNCTION_35_0(v16, v19);
  v22 = OUTLINED_FUNCTION_38_1(v20, v21);
  v15(v22);
  *(v0 + 32) = v20;
  sub_2437EB814();
  sub_2437EB804();
  v23 = OUTLINED_FUNCTION_30_1();
  v28(v23);
  v30(v27, v26);
  MEMORY[0x245D40480](*(v0 + 16));
  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_12_4();

  return v24();
}

void sub_2437D9B30()
{
  v1 = v0[31];
  v0[2] = v1;
  MEMORY[0x245D40490](v1);
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B80, &qword_2437EF7F8);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    v2 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    MEMORY[0x245D40480](v1);
    (*(v4 + 32))(v3, v2, v5);
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
    }

    v6 = v0[25];
    v7 = v0[23];
    v8 = v0[19];
    v9 = v0[20];
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v14 = sub_2437EB5F4();
    v0[33] = __swift_project_value_buffer(v14, qword_27ED8E1B8);
    v15 = *(v9 + 16);
    v0[34] = v15;
    v0[35] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v7, v6, v8);
    v16 = *(v12 + 16);
    v0[36] = v16;
    v0[37] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v11, v10, v13);
    v17 = sub_2437EB5D4();
    v18 = sub_2437EB854();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[23];
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[13];
    v24 = v0[14];
    v98 = v0[12];
    if (v19)
    {
      v93 = v17;
      v25 = OUTLINED_FUNCTION_60_0();
      v92 = OUTLINED_FUNCTION_45_0();
      v95 = OUTLINED_FUNCTION_47();
      v100 = v95;
      *v25 = 136315394;
      OUTLINED_FUNCTION_0_9();
      sub_2437DC1CC(v26, v27, MEMORY[0x277CC9628]);
      v89 = v24;
      v28 = sub_2437EBA04();
      LODWORD(v90) = v18;
      v30 = v29;
      v31 = *(v21 + 8);
      v31(v20, v22);
      v32 = sub_2437DA7E8(v28, v30, &v100);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2112;
      OUTLINED_FUNCTION_1_10();
      v35 = sub_2437DC1CC(v33, v34, MEMORY[0x277D855F0]);
      v36 = OUTLINED_FUNCTION_35_0(v98, v35);
      v38 = OUTLINED_FUNCTION_53_0(v36, v37);
      (v16)(v38);
      v39 = v31;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      v41 = *(v23 + 8);
      v41(v21 + 8, v98);
      *(v25 + 14) = v40;
      *v92 = v40;
      OUTLINED_FUNCTION_52_0();
      _os_log_impl(v42, v43, v44, v45, v25, 0x16u);
      sub_2437DBD44(v92, &qword_27ED86B98, &qword_2437EF8D8);
      OUTLINED_FUNCTION_23_2();
      __swift_destroy_boxed_opaque_existential_1(v95);
      OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_22_4();
    }

    else
    {

      v41 = *(v23 + 8);
      v41(v24, v98);
      v39 = *(v21 + 8);
      v39(v20, v22);
    }

    v0[38] = v39;
    v0[39] = v41;
    if ((sub_2437EB694() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2((v0[5] + 16));
      OUTLINED_FUNCTION_13_5();
      v85 = swift_task_alloc();
      v0[40] = v85;
      *v85 = v0;
      OUTLINED_FUNCTION_6_4(v85);
      OUTLINED_FUNCTION_40_1();

      __asm { BRAA            X2, X16 }
    }

    v97 = v0[39];
    v62 = v0[36];
    OUTLINED_FUNCTION_50_0();
    v63 = v0[15];
    v64 = v0[12];
    OUTLINED_FUNCTION_1_10();
    v67 = sub_2437DC1CC(v65, v66, MEMORY[0x277D855F0]);
    v68 = OUTLINED_FUNCTION_35_0(v64, v67);
    v62(v69, v63, v64);
    v0[4] = v68;
    sub_2437EB814();
    sub_2437EB804();
    v70 = v97(v63, v64);
    v78 = OUTLINED_FUNCTION_49_0(v70, v71, v72, v73, v74, v75, v76, v77, v88, v89, v90, v92, v93);
    v79(v78);
    MEMORY[0x245D40480](v0[2]);
  }

  else
  {
    MEMORY[0x245D40480](v0[2]);
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_2_7(&_MergedGlobals_1);
    }

    v46 = v0[25];
    v47 = v0[20];
    v48 = v0[21];
    v49 = v0[19];
    v50 = sub_2437EB5F4();
    __swift_project_value_buffer(v50, qword_27ED8E1B8);
    (*(v47 + 16))(v48, v46, v49);
    MEMORY[0x245D40490](v1);
    v51 = sub_2437EB5D4();
    v52 = sub_2437EB854();
    MEMORY[0x245D40480](v1);
    if (os_log_type_enabled(v51, v52))
    {
      v96 = v52;
      v53 = OUTLINED_FUNCTION_60_0();
      v94 = OUTLINED_FUNCTION_45_0();
      v99 = OUTLINED_FUNCTION_47();
      v100 = v99;
      *v53 = 136315394;
      OUTLINED_FUNCTION_0_9();
      sub_2437DC1CC(v54, v55, MEMORY[0x277CC9628]);
      v91 = sub_2437EBA04();
      v57 = v56;
      v58 = OUTLINED_FUNCTION_42_1();
      v51(v58);
      v59 = v51;
      v60 = sub_2437DA7E8(v91, v57, &v100);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2112;
      MEMORY[0x245D40490](v1);
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v61;
      *v94 = v61;
      _os_log_impl(&dword_2437B3000, v51, v96, "[message id = %s] failed to send message over XPC due to non-XPC error %@", v53, 0x16u);
      sub_2437DBD44(v94, &qword_27ED86B98, &qword_2437EF8D8);
      OUTLINED_FUNCTION_26_1();
      __swift_destroy_boxed_opaque_existential_1(v99);
      OUTLINED_FUNCTION_26_1();
      OUTLINED_FUNCTION_26_1();
    }

    else
    {

      v80 = OUTLINED_FUNCTION_42_1();
      v51(v80);
      v59 = v51;
    }

    v81 = v0[25];
    v82 = v0[19];
    v0[3] = v1;
    sub_2437EB814();
    sub_2437EB804();
    (v59)(v81, v82);
  }

  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_40_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2437DA2D4()
{
  v1 = *(v0 + 304);
  (*(v0 + 312))(*(v0 + 120), *(v0 + 96));
  v2 = OUTLINED_FUNCTION_57_0();
  v1(v2);
  MEMORY[0x245D40480](*(v0 + 16));

  OUTLINED_FUNCTION_12_4();

  return v3();
}

uint64_t sub_2437DA3EC()
{
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_1(v1);

  return XPCMessageSender.send<A, B>(_:)(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2437DA48C()
{
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_25_1(v1);

  return XPCMessageSender.send<A, B>(_:)();
}

uint64_t sub_2437DA52C()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;

  OUTLINED_FUNCTION_12_4();

  return v3();
}

uint64_t sub_2437DA60C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2437DA704;

  return v6(a1);
}

uint64_t sub_2437DA704()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_21_3();
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;

  OUTLINED_FUNCTION_12_4();

  return v3();
}

unint64_t sub_2437DA7E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2437DA8AC(v11, 0, 0, 1, a1, a2);
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
    sub_2437DB814(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2437DA8AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2437DA9AC(a5, a6);
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
    result = sub_2437EB8D4();
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

uint64_t sub_2437DA9AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2437DA9F8(a1, a2);
  sub_2437DAB10(&unk_28568CF50);
  return v3;
}

uint64_t sub_2437DA9F8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2437EB744())
  {
    result = sub_2437DABF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2437EB894();
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
          result = sub_2437EB8D4();
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

uint64_t sub_2437DAB10(uint64_t result)
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

    result = sub_2437DAC64(result, v7, 1, v3);
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

void *sub_2437DABF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BB0, &qword_2437EF8E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2437DAC64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BB0, &qword_2437EF8E0);
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

unint64_t sub_2437DAD58(uint64_t a1)
{
  sub_2437EB3B4();
  sub_2437DC1CC(&qword_27ED865B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2437EB6C4();

  return sub_2437DADF0(a1, v2);
}

unint64_t sub_2437DADF0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_2437EB3B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2437DC1CC(&qword_27ED86BD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v9 = sub_2437EB6E4();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2437DAFAC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2437DAD58(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BD8, qword_2437EF940);
  sub_2437EB8E4();
  v6 = *(v10 + 48);
  v7 = sub_2437EB3B4();
  (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
  v8 = *(*(v10 + 56) + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B78, &qword_2437EF7F0);
  sub_2437DC1CC(&qword_27ED865B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2437EB8F4();
  *v2 = v10;
  return v8;
}

uint64_t sub_2437DB10C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v24 = a2;
  v8 = sub_2437EB3B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = sub_2437DAD58(a3);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BD8, qword_2437EF940);
  if ((sub_2437EB8E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_2437DAD58(a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_2437EBA34();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v5;
  if (v16)
  {
    v20 = (v19[7] + 16 * v15);
    v21 = v24;
    *v20 = a1;
    v20[1] = v21;
  }

  else
  {
    (*(v9 + 16))(v11, a3, v8);
    return sub_2437DC214(v15, v11, a1, v24, v19);
  }
}

uint64_t sub_2437DB30C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2437DB324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2437DB38C()
{
  OUTLINED_FUNCTION_10_5();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2437DC2FC;

  return sub_2437D6B14(v2, v3, v4, v0 + 32);
}

uint64_t sub_2437DB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_130();
  v13 = *(v12 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_55_0();
  v14 = sub_2437EB814();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v17 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v19 = *(v13 - 8);
  v20 = (v17 + *(v18 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  swift_unknownObjectRelease();

  (*(v16 + 8))(v12 + v17, v14);
  (*(v19 + 8))(v12 + v20, v13);
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821FE8E8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_2437DB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v12 = *(v10 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v13 = sub_2437EB814();
  OUTLINED_FUNCTION_7_5(v13);
  v16 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v17 = (v16 + *(v15 + 64) + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80);
  v18 = *(v10 + 64);
  v19 = swift_task_alloc();
  *(v11 + 16) = v19;
  *v19 = v11;
  v19[1] = sub_2437DA52C;

  return sub_2437D8A4C(v19, v20, v21, v18, v10 + v16, v10 + v17, v22, v12, a9, a10);
}

uint64_t sub_2437DB750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86B88, &qword_2437EF800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437DB7C0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2437DB814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2437DB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_130();
  v13 = *(v12 + 32);
  OUTLINED_FUNCTION_4_7();
  v15 = v14;
  v16 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v18 = v16 + *(v17 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_55_0();
  v19 = sub_2437EB794();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v22 = (v18 + *(v20 + 80)) & ~*(v20 + 80);
  swift_unknownObjectRelease();

  (*(v15 + 8))(v12 + v16, v13);
  (*(v21 + 8))(v12 + v22, v19);
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821FE8E8](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2437DB9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 32);
  OUTLINED_FUNCTION_4_7();
  v15 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v17 = v15 + *(v16 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  v18 = sub_2437EB794();
  OUTLINED_FUNCTION_7_5(v18);
  v20 = (v17 + *(v19 + 80)) & ~*(v19 + 80);
  v22 = *(v11 + 64);
  v23 = *(v11 + ((*(v21 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = swift_task_alloc();
  *(v12 + 16) = v24;
  *v24 = v12;
  v24[1] = sub_2437DC2FC;

  return sub_2437D72B8(v24, v25, v26, v22, v11 + v15, v11 + v20, v23, v13, a9, a10, a11);
}

unint64_t sub_2437DBB6C()
{
  result = qword_27ED86BC0;
  if (!qword_27ED86BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86BC0);
  }

  return result;
}

uint64_t sub_2437DBBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  sub_2437EB794();
  OUTLINED_FUNCTION_9_6();
  v14 = *(v13 + 80);
  v15 = (v14 + 48) & ~v14;
  v16 = (*(v13 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v13 + 8))(v12 + v15);
  __swift_destroy_boxed_opaque_existential_1((v12 + v16));

  return MEMORY[0x2821FE8E8](v12, ((v16 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v14 | 7, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

void sub_2437DBC80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86B80, &qword_2437EF7F8);
  OUTLINED_FUNCTION_55_0();
  v0 = sub_2437EB794();
  OUTLINED_FUNCTION_7_5(v0);

  sub_2437D7A2C();
}

uint64_t sub_2437DBD44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_2Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v12 + 32));

  return MEMORY[0x2821FE8E8](v12, 72, 7, v13, v14, v15, v16, v17, a9, a10, a11, a12);
}

uint64_t sub_2437DBDD8()
{
  OUTLINED_FUNCTION_10_5();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2437DC2FC;

  return sub_2437D8194(v2, v3, v4, v0 + 32);
}

uint64_t sub_2437DBE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return MEMORY[0x2821FE8E8](v12, 32, 7, v13, v14, v15, v16, v17, a9, a10, a11, a12);
}

uint64_t sub_2437DBE9C()
{
  OUTLINED_FUNCTION_44_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_2(v1);

  return v4(v3);
}

uint64_t sub_2437DBF30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

uint64_t sub_2437DBF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = (type metadata accessor for XPCAsyncSequenceResponse(0) - 8);
  v14 = *(*v13 + 80);
  v15 = (v14 + 40) & ~v14;
  v16 = *(*v13 + 64);
  swift_unknownObjectRelease();

  sub_2437EB3B4();
  OUTLINED_FUNCTION_9_6();
  (*(v17 + 8))(v12 + v15);
  v23 = (v12 + v15 + v13[7]);
  v24 = v23[1];
  if (((v24 >> 60) | 4) != 0xF)
  {
    sub_2437B7168(*v23, v24);
  }

  return MEMORY[0x2821FE8E8](v12, v15 + v16, v14 | 7, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2437DC098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437DC0FC()
{
  OUTLINED_FUNCTION_44_0();
  v2 = type metadata accessor for XPCAsyncSequenceResponse(0);
  OUTLINED_FUNCTION_48(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2437DA52C;

  return sub_2437D66B8(v6, v7, v8, v5, v0 + v4);
}

uint64_t sub_2437DC1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437DC214(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2437EB3B4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_2437DC2D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2437DC2E4(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_2437B7168(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_5()
{
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_22_4()
{

  JUMPOUT(0x245D405B0);
}

void OUTLINED_FUNCTION_23_2()
{

  JUMPOUT(0x245D405B0);
}

void OUTLINED_FUNCTION_26_1()
{

  JUMPOUT(0x245D405B0);
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v4;
  *(v3 + 128) = a1;
  return v3 + 128;
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{

  return MEMORY[0x2822009F8](a1);
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return swift_slowAlloc();
}

uint64_t dispatch thunk of MessageSender.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_11(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = swift_task_alloc();
  *(v8 + 16) = v9;
  *v9 = v8;
  v10 = OUTLINED_FUNCTION_0_10(v9);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_1_11(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = swift_task_alloc();
  *(v8 + 16) = v9;
  *v9 = v8;
  v10 = OUTLINED_FUNCTION_0_10(v9);

  return v11(v10);
}

uint64_t sub_2437DC96C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Credential.Builder.__allocating_init(tenantName:requestorID:accessToken:)()
{
  OUTLINED_FUNCTION_7_6();
  v0 = swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  return v0;
}

void *Credential.Builder.init(tenantName:requestorID:accessToken:)()
{
  OUTLINED_FUNCTION_7_6();
  v7 = sub_2437EB384();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v1[2] = v6;
  v1[3] = v5;
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v4;
  v1[5] = v3;
  sub_2437EB364();
  (*(v9 + 32))(v1 + OBJC_IVAR____TtCV18CloudAssetsCommons10Credential7Builder_expirationDate, v13, v7);
  return v1;
}

uint64_t Credential.Builder.setExpirationDate(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1);
  sub_2437EB384();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_141();
  v2(v1);
  swift_endAccess();
}

uint64_t Credential.Builder.build()@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 3);
  *a1 = *(v1 + 2);
  *(a1 + 1) = v3;
  v4 = *(v1 + 5);
  *(a1 + 2) = *(v1 + 4);
  *(a1 + 3) = v4;
  v5 = *(v1 + 7);
  *(a1 + 4) = *(v1 + 6);
  *(a1 + 5) = v5;
  v6 = OBJC_IVAR____TtCV18CloudAssetsCommons10Credential7Builder_expirationDate;
  swift_beginAccess();
  v7 = *(type metadata accessor for Credential(0) + 28);
  sub_2437EB384();
  OUTLINED_FUNCTION_1_0();
  (*(v8 + 16))(&a1[v7], &v1[v6]);
}

char *Credential.Builder.deinit()
{

  v1 = OBJC_IVAR____TtCV18CloudAssetsCommons10Credential7Builder_expirationDate;
  sub_2437EB384();
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t Credential.Builder.__deallocating_deinit()
{
  Credential.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2437DCE3C(uint64_t a1)
{
  sub_2437DD4FC();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437DCE78(uint64_t a1)
{
  sub_2437DD4FC();

  return MEMORY[0x2821FE720](a1);
}

uint64_t Credential.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_1_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t Credential.init(accessToken:expiryDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x616C506572616853;
  a3[1] = 0xE900000000000079;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  a3[4] = a1;
  a3[5] = a2;
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_1_0();
  v3 = OUTLINED_FUNCTION_141();

  return v4(v3);
}

uint64_t Credential.init(protobufRepresentation:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2437EB3F4();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = a1[1];
  *a2 = *a1;
  a2[1] = v11;
  v12 = a1[3];
  a2[2] = a1[2];
  a2[3] = v12;
  v13 = a1[5];
  a2[4] = a1[4];
  a2[5] = v13;

  CloudAssets_Credential.expirationDate.getter(v10);
  type metadata accessor for Credential(0);
  sub_2437EB3C4();
  sub_2437DD13C(a1);
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_2437DD13C(uint64_t a1)
{
  v2 = type metadata accessor for CloudAssets_Credential(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Credential.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  sub_2437EB3F4();
  OUTLINED_FUNCTION_0();
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v29 = v6 - v5;
  v7 = sub_2437EB444();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_15();
  type metadata accessor for CloudAssets_Credential(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BE0, &qword_2437EF980);
  OUTLINED_FUNCTION_0();
  v32 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437DD4FC();
  v17 = v39;
  sub_2437EBAF4();
  if (v17)
  {
    v27 = a1;
  }

  else
  {
    v39 = a1;
    v18 = v32;
    v19 = v33;
    sub_2437BAD3C();
    sub_2437EB954();
    v37 = v38;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_2437EB434();
    OUTLINED_FUNCTION_5_6();
    sub_2437DDB60(v20, v21, &protocol conformance descriptor for CloudAssets_Credential);
    sub_2437EB514();
    v23 = v11[1];
    *v19 = *v11;
    v19[1] = v23;
    v24 = v11[3];
    v19[2] = v11[2];
    v19[3] = v24;
    v25 = v11[5];
    v19[4] = v11[4];
    v19[5] = v25;

    v26 = v29;
    CloudAssets_Credential.expirationDate.getter(v29);
    type metadata accessor for Credential(0);
    sub_2437EB3C4();
    (*(v31 + 8))(v26, v30);
    sub_2437DD13C(v11);
    (*(v18 + 8))(v16, v12);
    v27 = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_2437DD4FC()
{
  result = qword_27ED86BE8;
  if (!qword_27ED86BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86BE8);
  }

  return result;
}

uint64_t Credential.protobufRepresentation()@<X0>(void *a1@<X8>)
{
  v3 = sub_2437EB384();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = sub_2437EB3F4();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_15();
  CloudAssets_Credential.init()(a1);
  v12 = *v1;
  v11 = *(v1 + 1);

  *a1 = v12;
  a1[1] = v11;
  v14 = *(v1 + 2);
  v13 = *(v1 + 3);

  a1[2] = v14;
  a1[3] = v13;
  v16 = *(v1 + 4);
  v15 = *(v1 + 5);

  a1[4] = v16;
  a1[5] = v15;
  v17 = type metadata accessor for Credential(0);
  (*(v5 + 16))(v9, &v1[*(v17 + 28)], v3);
  sub_2437EB3D4();
  return CloudAssets_Credential.expirationDate.setter();
}

uint64_t Credential.encode(to:)(void *a1)
{
  v2 = v1;
  v36 = sub_2437EB384();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = sub_2437EB3F4();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_15();
  v35 = type metadata accessor for CloudAssets_Credential(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = (v13 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86BF0, &qword_2437EF988);
  OUTLINED_FUNCTION_0();
  v37 = v16;
  v38 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437DD4FC();
  sub_2437EBB04();
  CloudAssets_Credential.init()(v14);
  v20 = *v2;
  v19 = *(v2 + 1);

  *v14 = v20;
  v14[1] = v19;
  v22 = *(v2 + 2);
  v21 = *(v2 + 3);

  v14[2] = v22;
  v14[3] = v21;
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);

  v14[4] = v24;
  v14[5] = v23;
  v25 = type metadata accessor for Credential(0);
  (*(v5 + 16))(v9, &v2[*(v25 + 28)], v36);
  sub_2437EB3D4();
  CloudAssets_Credential.expirationDate.setter();
  OUTLINED_FUNCTION_5_6();
  sub_2437DDB60(v26, v27, &protocol conformance descriptor for CloudAssets_Credential);
  v28 = v41;
  v29 = sub_2437EB504();
  if (v28)
  {
    (*(v37 + 8))(v18, v38);
    return sub_2437DD13C(v14);
  }

  else
  {
    v32 = v29;
    v33 = v30;
    sub_2437DD13C(v14);
    v39 = v32;
    v40 = v33;
    sub_2437BA058();
    v34 = v38;
    sub_2437EB9D4();
    sub_2437B7168(v39, v40);
    return (*(v37 + 8))(v18, v34);
  }
}

uint64_t static Credential.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Credential(0) + 28);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t Credential.hash(into:)(uint64_t a1)
{
  sub_2437EB724();
  sub_2437EB724();
  sub_2437EB724();
  type metadata accessor for Credential(0);
  sub_2437EB384();
  OUTLINED_FUNCTION_1_12();
  sub_2437DDB60(v1, v2, MEMORY[0x277CC9588]);
  return sub_2437EB6D4();
}

uint64_t sub_2437DDB60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Credential.hashValue.getter()
{
  sub_2437EBA94();
  sub_2437EB724();
  sub_2437EB724();
  sub_2437EB724();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_1_12();
  v2 = sub_2437DDB60(v0, v1, MEMORY[0x277CC9588]);
  OUTLINED_FUNCTION_12_5(v2, v3);
  return sub_2437EBAD4();
}

uint64_t sub_2437DDC44(uint64_t a1)
{
  sub_2437EBA94();
  sub_2437EB724();
  sub_2437EB724();
  sub_2437EB724();
  sub_2437EB384();
  OUTLINED_FUNCTION_1_12();
  v3 = sub_2437DDB60(v1, v2, MEMORY[0x277CC9588]);
  OUTLINED_FUNCTION_12_5(v3, v4);
  return sub_2437EBAD4();
}

unint64_t sub_2437DDCE4()
{
  result = qword_27ED86C00;
  if (!qword_27ED86C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C00);
  }

  return result;
}

unint64_t sub_2437DDD3C()
{
  result = qword_27ED86C08;
  if (!qword_27ED86C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C08);
  }

  return result;
}

unint64_t sub_2437DDD94()
{
  result = qword_27ED86C10;
  if (!qword_27ED86C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86C10);
  }

  return result;
}

uint64_t sub_2437DDE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2437EB384();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2437DDF14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2437EB384();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2437DDF94(uint64_t a1)
{
  result = sub_2437EB384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2437DE040(uint64_t a1)
{
  result = sub_2437EB384();
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

_BYTE *storeEnumTagSinglePayload for Credential.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437DE1A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  type metadata accessor for Credential(0);

  return sub_2437EB384();
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_2437EB6D4();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_2437DE29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_17_6(0x73736563637573) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_17_6(0x6572756C696166);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437DE34C(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_2437DE378(uint64_t a1)
{
  sub_2437EBA94();
  sub_2437B4AE8(v3, *v1);
  return sub_2437EBAD4();
}

uint64_t sub_2437DE3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437DE29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437DE400(uint64_t a1)
{
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v1);
}

uint64_t sub_2437DE440(uint64_t a1)
{
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v1);
}

uint64_t sub_2437DE480(uint64_t a1)
{
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v1);
}

uint64_t sub_2437DE4C0(uint64_t a1)
{
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v1);
}

uint64_t sub_2437DE500(uint64_t a1)
{
  sub_2437EBA94();
  sub_2437B4C04();
  return sub_2437EBAD4();
}

uint64_t sub_2437DE53C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v1);
}

uint64_t sub_2437DE57C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v1);
}

uint64_t XPCResult.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v61 = a2;
  v5 = OUTLINED_FUNCTION_10_7();
  v8 = type metadata accessor for XPCResult.FailureCodingKeys(v5, v6, v7, v4);
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v58 = v9;
  v59 = v8;
  sub_2437EB9F4();
  OUTLINED_FUNCTION_0();
  v56 = v11;
  v57 = v10;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_2();
  v52 = v13;
  v14 = OUTLINED_FUNCTION_10_7();
  v17 = type metadata accessor for XPCResult.SuccessCodingKeys(v14, v15, v16, v4);
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v51 = v17;
  v49[1] = v18;
  sub_2437EB9F4();
  OUTLINED_FUNCTION_0();
  v54 = v20;
  v55 = v19;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_2();
  v50 = v22;
  OUTLINED_FUNCTION_4_7();
  v53 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v49[0] = v26 - v25;
  OUTLINED_FUNCTION_4_7();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15();
  v32 = v31 - v30;
  v33 = OUTLINED_FUNCTION_10_7();
  v60 = v4;
  type metadata accessor for XPCResult.CodingKeys(v33, v34, v35, v4);
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  sub_2437EB9F4();
  OUTLINED_FUNCTION_0();
  v62 = v37;
  v63 = v36;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v38);
  v40 = v49 - v39;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437EBB04();
  (*(v28 + 16))(v32, v64, v61);
  if (__swift_getEnumTagSinglePayload(v32, 1, v3) == 1)
  {
    v66 = 1;
    v41 = v52;
    v42 = v63;
    sub_2437EB994();
    (*(v56 + 8))(v41, v57);
    return (*(v62 + 8))(v40, v42);
  }

  else
  {
    v44 = v53;
    v45 = v49[0];
    (*(v53 + 32))(v49[0], v32, v3);
    v65 = 0;
    v46 = v50;
    v47 = v63;
    sub_2437EB994();
    v48 = v55;
    sub_2437EB9D4();
    (*(v54 + 8))(v46, v48);
    (*(v44 + 8))(v45, v3);
    return (*(v62 + 8))(v40, v47);
  }
}

uint64_t XPCResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v82 = a5;
  v9 = type metadata accessor for XPCResult.FailureCodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v80 = v10;
  v81 = v9;
  v74 = sub_2437EB984();
  OUTLINED_FUNCTION_0();
  v73 = v11;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_2();
  v79 = v13;
  v14 = OUTLINED_FUNCTION_12_6();
  v18 = type metadata accessor for XPCResult.SuccessCodingKeys(v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_6();
  v76 = v19;
  v77 = v18;
  v72 = sub_2437EB984();
  OUTLINED_FUNCTION_0();
  v71 = v20;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_2();
  v78 = v22;
  v23 = OUTLINED_FUNCTION_12_6();
  type metadata accessor for XPCResult.CodingKeys(v23, v24, v25, v26);
  OUTLINED_FUNCTION_2_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_7();
  v85 = sub_2437EB984();
  OUTLINED_FUNCTION_0();
  v87 = v27;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v28);
  v30 = &v67 - v29;
  v86 = a2;
  v75 = a3;
  type metadata accessor for XPCResult(0, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  v83 = v32;
  v84 = v31;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v92;
  sub_2437EBAF4();
  v39 = a1;
  if (!v38)
  {
    v68 = v35;
    v69 = v37;
    v41 = v84;
    v40 = v85;
    v42 = v86;
    v92 = v39;
    v70 = v30;
    *&v88 = sub_2437EB974();
    OUTLINED_FUNCTION_13_7();
    sub_2437EB754();
    swift_getWitnessTable();
    *&v90 = sub_2437EB884();
    *(&v90 + 1) = v43;
    *&v91 = v44;
    *(&v91 + 1) = v45;
    OUTLINED_FUNCTION_13_7();
    sub_2437EB874();
    swift_getWitnessTable();
    sub_2437EB824();
    v46 = v88;
    if (v88 == 2 || (v67 = v90, v88 = v90, v89 = v91, (sub_2437EB834() & 1) == 0))
    {
      v54 = sub_2437EB8C4();
      swift_allocError();
      v56 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
      *v56 = v41;
      v57 = v70;
      sub_2437EB914();
      sub_2437EB8B4();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
      swift_willThrow();
      (*(v87 + 8))(v57, v40);
      swift_unknownObjectRelease();
    }

    else if (v46)
    {
      LOBYTE(v88) = 1;
      v47 = v79;
      OUTLINED_FUNCTION_18_4(v81);
      v48 = v42;
      v49 = v82;
      v50 = v83;
      (*(v73 + 8))(v47, v74);
      v51 = OUTLINED_FUNCTION_8_5();
      v52(v51);
      OUTLINED_FUNCTION_11_3();
      swift_unknownObjectRelease();
      v53 = v69;
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v48);
      (*(v50 + 32))(v49, v53, v41);
    }

    else
    {
      LOBYTE(v88) = 0;
      OUTLINED_FUNCTION_18_4(v77);
      v59 = v83;
      sub_2437EB954();
      v60 = OUTLINED_FUNCTION_16_6();
      v61(v60);
      v62 = OUTLINED_FUNCTION_8_5();
      v63(v62);
      OUTLINED_FUNCTION_11_3();
      swift_unknownObjectRelease();
      v64 = v68;
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v42);
      v65 = *(v59 + 32);
      v66 = v69;
      v65(v69, v64, v41);
      v65(v82, v66, v41);
    }

    v39 = v92;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t static XPCResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  OUTLINED_FUNCTION_4_7();
  v42 = v9;
  v43 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v39 = v12 - v11;
  v16 = type metadata accessor for XPCResult(0, v13, v14, v15);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  OUTLINED_FUNCTION_13_7();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  OUTLINED_FUNCTION_3();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v38 - v27;
  v29 = *(v26 + 48);
  v41 = v18;
  v30 = *(v18 + 16);
  v30(&v38 - v27, a1, v16);
  v30(&v28[v29], v43, v16);
  OUTLINED_FUNCTION_19_5(v28);
  if (v32)
  {
    v31 = 1;
    OUTLINED_FUNCTION_19_5(&v28[v29]);
    if (v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30(v21, v28, v16);
    OUTLINED_FUNCTION_19_5(&v28[v29]);
    if (!v32)
    {
      v33 = v42;
      v34 = &v28[v29];
      v35 = v39;
      (*(v42 + 32))(v39, v34, a3);
      v31 = sub_2437EB6E4();
      v36 = *(v33 + 8);
      v36(v35, a3);
      v36(v21, a3);
LABEL_10:
      v24 = v41;
      goto LABEL_11;
    }

    (*(v42 + 8))(v21, a3);
  }

  v31 = 0;
  v16 = TupleTypeMetadata2;
LABEL_11:
  (*(v24 + 8))(v28, v16);
  return v31 & 1;
}