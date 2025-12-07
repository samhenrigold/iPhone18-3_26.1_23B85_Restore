uint64_t sub_1DD49785C(uint64_t a1)
{
  if (*(*a1 + 51) == 38)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*a1 + 54) ^ 1;
  }

  return v1 & 1;
}

BOOL sub_1DD497898(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 51) != 24)
  {
    return 0;
  }

  result = 0;
  if (!*(v1 + 48) && *(v1 + 24) == 0.0)
  {
    if (*(v1 + 16) == 5)
    {
      if (!*(v1 + 49))
      {

        return *(v1 + 50) == 1;
      }

      v3 = sub_1DD640CD8();

      if (v3)
      {
        return *(v1 + 50) == 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1DD497974()
{
  v1 = v0;
  LOBYTE(v2) = sub_1DD4937AC(0);
  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_60;
  }

LABEL_2:
  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1ECD0DDC0);
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&dword_1DD38D000, v4, v5, "temporalIntentSetByUserWithoutTemporality: %{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  if ((v2 & 1) == 0)
  {
    return;
  }

  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "Removing temporality constraints", v9, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  OUTLINED_FUNCTION_45_8(v1 + 40, v27);
  v10 = *(v1 + 40);
  v11 = sub_1DD3CC020();
  v2 = 0;
  while (1)
  {
    if (v11 == v2)
    {
LABEL_50:
      v2 = sub_1DD3CC020();
LABEL_51:
      v26 = sub_1DD3CC020();
      if (v26 < v2)
      {
        goto LABEL_66;
      }

      sub_1DD49C018(v2, v26);
      swift_endAccess();
      return;
    }

    if ((v10 & 0xC000000000000001) == 0)
    {
      if (v2 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        if (*(*(v10 + 8 * v2 + 32) + 50) == 4)
        {
          break;
        }

        goto LABEL_12;
      }

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
      OUTLINED_FUNCTION_0_6();
      swift_once();
      goto LABEL_2;
    }

    v13 = *(MEMORY[0x1E12B2C10](v2, v10) + 50);
    swift_unknownObjectRelease();
    if (v13 == 4)
    {
      break;
    }

LABEL_12:
    v12 = __OFADD__(v2++, 1);
    if (v12)
    {
      goto LABEL_55;
    }
  }

  if (__OFADD__(v2, 1))
  {
    goto LABEL_67;
  }

  if (v2 + 1 == sub_1DD3CC020())
  {
    goto LABEL_51;
  }

  v14 = v2 + 5;
  while (1)
  {
    v15 = v14 - 4;
    if ((v10 & 0xC000000000000001) == 0)
    {
      break;
    }

    v23 = OUTLINED_FUNCTION_62_5();
    v24 = *(MEMORY[0x1E12B2C10](v23) + 50);
    swift_unknownObjectRelease();
    if (v24 != 4)
    {
      if (v15 != v2)
      {
        v18 = MEMORY[0x1E12B2C10](v2, v10);
        v25 = OUTLINED_FUNCTION_62_5();
        v17 = MEMORY[0x1E12B2C10](v25);
        goto LABEL_27;
      }

LABEL_38:
      v12 = __OFADD__(v2++, 1);
      if (v12)
      {
        goto LABEL_59;
      }
    }

LABEL_39:
    v12 = __OFADD__(v15, 1);
    v21 = v14 - 3;
    if (v12)
    {
      goto LABEL_58;
    }

    if (v10 >> 62)
    {
      OUTLINED_FUNCTION_18_20();
      v22 = sub_1DD6407B8();
    }

    else
    {
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v14;
    if (v21 == v22)
    {
      goto LABEL_51;
    }
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 >= v16)
  {
    goto LABEL_57;
  }

  v17 = *(v10 + 8 * v14);
  if (*(v17 + 50) == 4)
  {
    goto LABEL_39;
  }

  if (v15 == v2)
  {
    goto LABEL_38;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 >= v16)
    {
      goto LABEL_63;
    }

    v18 = *(v10 + 32 + 8 * v2);

LABEL_27:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 40) = v10;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v10 = sub_1DD58716C();
      *(v1 + 40) = v10;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v20 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v17;

    *(v1 + 40) = v10;
    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v10 = sub_1DD58716C();
      *(v1 + 40) = v10;
      v20 = v10 & 0xFFFFFFFFFFFFFF8;
      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v15 >= *(v20 + 16))
    {
      goto LABEL_65;
    }

    *(v20 + 8 * v14) = v18;

    *(v1 + 40) = v10;
    goto LABEL_38;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_1DD497D50()
{

  return v0;
}

uint64_t sub_1DD497D88()
{
  sub_1DD497D50();

  return swift_deallocClassInstance();
}

void *sub_1DD497DE0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    OUTLINED_FUNCTION_35_10();
    swift_retain_n();
    v10 = a5(v9, a2, a3, a4);
    OUTLINED_FUNCTION_35_10();

    return v10;
  }

  return result;
}

unint64_t *sub_1DD497E80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD516ED0(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_1DD497F10(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_retain_n();
  result = sub_1DD640CA8();
  if (result >= v5)
  {
    goto LABEL_5;
  }

  v7 = result;
  v8 = sub_1DD4D32F8(v5 / 2);
  v10[0] = v9;
  v10[1] = (v5 / 2);

  result = sub_1DD498150(v10, v11, a1, v7, a2);
  if (!v2)
  {
    if (v5 < -1)
    {
      goto LABEL_13;
    }

LABEL_10:
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  if (v5 >= -1)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_5:
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {

      sub_1DD498040(0, v5, 1, a1, a2);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1DD498040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = a3;
    v7 = *a4;

    v8 = v7 + 8 * v5 - 8;
    v9 = a1 - v5;
    while (2)
    {
      v10 = *(v7 + 8 * v5);
      v11 = v9;
      v12 = v8;
      do
      {
        v13 = *v12;

        v14 = sub_1DD496070(v10, v13);

        if ((v14 & 1) == 0)
        {
          break;
        }

        if (!v7)
        {

          __break(1u);
          return result;
        }

        v15 = *v12;
        v10 = v12[1];
        *v12 = v10;
        v12[1] = v15;
        --v12;
      }

      while (!__CFADD__(v11++, 1));
      ++v5;
      v8 += 8;
      --v9;
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1DD498150(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  swift_retain_n();
  if (v6 < 1)
  {
    v109 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    swift_retain_n();
    v89 = v109;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v110 = v89;
      v92 = *(v89 + 2);
      v90 = (v89 + 16);
      for (i = v92; ; *v90 = i)
      {
        if (i < 2)
        {
        }

        v93 = *a3;
        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = &v110[16 * i];
        v95 = *v94;
        v96 = &v90[2 * i];
        v97 = *(v96 + 1);
        v98 = (v93 + 8 * *v94);
        v107 = (v93 + 8 * *v96);
        v99 = (v93 + 8 * v97);

        sub_1DD498844(v98, v107, v99, v104, a5);
        if (v112)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_120;
        }

        if (i - 2 >= *v90)
        {
          goto LABEL_121;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v100 = *v90 - i;
        if (*v90 < i)
        {
          goto LABEL_122;
        }

        i = *v90 - 1;
        sub_1DD4EC4E4(v96 + 16, v100, v96);
      }
    }

LABEL_129:
    v89 = sub_1DD4EC2B8();
    goto LABEL_94;
  }

  v102 = a4;
  v7 = 0;
  v109 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v7;
    if (++v7 >= v6)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8 * v7);
    v10 = v8;
    v11 = (*a3 + 8 * v8);
    v12 = 8 * v10;
    v14 = *v11;
    v13 = v11 + 2;

    v15 = sub_1DD496070(v9, v14);

    v104 = v10;
    v16 = v10 + 2;
    while (1)
    {
      v17 = v16;
      if (++v7 >= v6)
      {
        break;
      }

      v19 = *(v13 - 1);
      v18 = *v13;

      v20 = sub_1DD496070(v18, v19) & 1;

      ++v13;
      v16 = (v17 + 1);
      if ((v15 & 1) != v20)
      {
        if (v15)
        {
          goto LABEL_8;
        }

LABEL_21:
        v25 = v109;
        v8 = v104;
        goto LABEL_22;
      }
    }

    v7 = v6;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_8:
    v8 = v104;
    if (v7 < v104)
    {
      goto LABEL_126;
    }

    if (v104 >= v7)
    {
LABEL_19:
      v25 = v109;
    }

    else
    {
      v21 = v6 >= v17 ? v17 : v6;
      v22 = 8 * v21 - 8;
      v23 = v7;
      v24 = v104;
      v25 = v109;
      do
      {
        if (v24 != --v23)
        {
          v26 = *a3;
          if (!*a3)
          {
            goto LABEL_133;
          }

          v27 = *(v26 + v12);
          *(v26 + v12) = *(v26 + v22);
          *(v26 + v22) = v27;
        }

        ++v24;
        v22 -= 8;
        v12 += 8;
      }

      while (v24 < v23);
    }

LABEL_22:
    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v8))
      {
        goto LABEL_125;
      }

      if (v7 - v8 < v102)
      {
        break;
      }
    }

LABEL_38:
    if (v7 < v8)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v25 = v87;
    }

    v40 = *(v25 + 2);
    v41 = v40 + 1;
    if (v40 >= *(v25 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v25 = v88;
    }

    *(v25 + 2) = v41;
    v42 = v25 + 32;
    v43 = &v25[16 * v40 + 32];
    *v43 = v8;
    v43[1] = v7;
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v109 = v25;
    if (v40)
    {
      v104 = v7;
      while (1)
      {
        v44 = v41 - 1;
        v45 = &v42[2 * v41 - 2];
        v46 = &v25[16 * v41];
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v25 + 4);
          v48 = *(v25 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_59:
          if (v50)
          {
            goto LABEL_111;
          }

          v62 = *v46;
          v61 = *(v46 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_114;
          }

          v66 = v45[1];
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_119;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v41 < 2)
        {
          goto LABEL_113;
        }

        v69 = *v46;
        v68 = *(v46 + 1);
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_74:
        if (v65)
        {
          goto LABEL_116;
        }

        v71 = *v45;
        v70 = v45[1];
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v72 < v64)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v44 - 1 >= v41)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        v76 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v77 = &v42[2 * v44 - 2];
        v78 = *v77;
        v79 = v42;
        v80 = v44;
        v81 = &v42[2 * v44];
        v82 = *(v81 + 1);
        v83 = (v76 + 8 * *v77);
        v84 = (v76 + 8 * *v81);
        v85 = (v76 + 8 * v82);

        sub_1DD498844(v83, v84, v85, v106, a5);
        if (v112)
        {
        }

        v25 = v109;
        if (v82 < v78)
        {
          goto LABEL_106;
        }

        v86 = *(v109 + 2);
        if (v80 > v86)
        {
          goto LABEL_107;
        }

        *v77 = v78;
        v77[1] = v82;
        if (v80 >= v86)
        {
          goto LABEL_108;
        }

        v41 = v86 - 1;
        sub_1DD4EC4E4(v81 + 16, v86 - 1 - v80, v81);
        *(v109 + 2) = v86 - 1;
        v42 = v79;
        v7 = v104;
        if (v86 <= 2)
        {
          goto LABEL_88;
        }
      }

      v51 = &v42[2 * v41];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_109;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_110;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_112;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_115;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = v45[1];
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_123;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v29 = v8 + v102;
  if (__OFADD__(v8, v102))
  {
    goto LABEL_127;
  }

  if (v29 >= v28)
  {
    v29 = a3[1];
  }

  if (v29 < v8)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v7 == v29)
  {
    goto LABEL_38;
  }

  v30 = *a3;
  v31 = *a3 + 8 * v7 - 8;
  v104 = v8;
  v105 = v29;
  v32 = (v8 - v7);
LABEL_31:
  v33 = *(v30 + 8 * v7);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    v36 = *v35;

    v37 = sub_1DD496070(v33, v36);

    if ((v37 & 1) == 0)
    {
LABEL_36:
      ++v7;
      v31 += 8;
      --v32;
      if (v7 == v105)
      {
        v7 = v105;
        v25 = v109;
        v8 = v104;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v30)
    {
      break;
    }

    v38 = *v35;
    v33 = v35[1];
    *v35 = v33;
    v35[1] = v38;
    --v35;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_36;
    }
  }

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
  return result;
}

uint64_t sub_1DD498844(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = (a3 - a2) / 8;

  if (v9 < v10)
  {
    sub_1DD3C2520(v8, v9, a4);
    v11 = &a4[8 * v9];
    while (1)
    {
      if (a4 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v13 = v6;
      v14 = *v7;
      v15 = *a4;

      v16 = sub_1DD496070(v14, v15);

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v7;
      v18 = v8 == v7;
      v7 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 8;
      v6 = v13;
    }

    v17 = a4;
    v18 = v8 == a4;
    a4 += 8;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  sub_1DD3C2520(v7, v10, a4);
  v11 = &a4[8 * v10];
  v29 = a4;
LABEL_15:
  v19 = (v7 - 8);
  v6 -= 8;
  while (v11 > a4 && v7 > v8)
  {
    v21 = *(v11 - 1);
    v22 = v19;
    v23 = *v19;

    v24 = sub_1DD496070(v21, v23);

    v25 = v6 + 8;
    if (v24)
    {
      v18 = v25 == v7;
      v7 = v22;
      a4 = v29;
      if (!v18)
      {
        *v6 = *v22;
        v7 = v22;
      }

      goto LABEL_15;
    }

    if (v11 != v25)
    {
      *v6 = *(v11 - 1);
    }

    v6 -= 8;
    v11 -= 8;
    v19 = v22;
    a4 = v29;
  }

LABEL_28:
  v26 = (v11 - a4) / 8;
  if (v7 != a4 || v7 >= &a4[8 * v26])
  {
    memmove(v7, a4, 8 * v26);
  }

  return 1;
}

void *sub_1DD498A58(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v37 = v2;
    v5 = 0x746573746F6ELL;
    v6 = 0x7472617473;
    v7 = MEMORY[0x1E69E7CD0];
    v42 = MEMORY[0x1E69E7CD0];

    v38 = sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v8 = sub_1DD6407F8();
        if (!v8)
        {

          return v7;
        }

        v39[0] = v8;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v9 = v40;
        if (*(v40 + 16) == *(a2 + 16))
        {
          break;
        }

LABEL_41:
      }

      v10 = *(v40 + 49);
      v11 = *(a2 + 49);
      if (v10 == 1)
      {
        v12 = 6581861;
      }

      else
      {
        v12 = v5;
      }

      if (v10 == 1)
      {
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (*(v40 + 49))
      {
        v14 = v12;
      }

      else
      {
        v14 = v6;
      }

      if (*(v40 + 49))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      v16 = v5;
      if (v11 == 1)
      {
        v17 = 6581861;
      }

      else
      {
        v17 = v5;
      }

      if (v11 == 1)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      if (*(a2 + 49))
      {
        v19 = v17;
      }

      else
      {
        v19 = v6;
      }

      if (*(a2 + 49))
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v21 = v6;
      if (v14 == v19 && v15 == v20)
      {
      }

      else
      {
        v23 = sub_1DD640CD8();

        if ((v23 & 1) == 0)
        {
          v5 = v16;
LABEL_40:
          v6 = v21;
          goto LABEL_41;
        }
      }

      v31 = *(v9 + 51);
      v32 = v40;
      v5 = v16;
      if (v31 != 38)
      {
        goto LABEL_40;
      }

      v33 = v7[2];
      v6 = v21;
      if (v7[3] <= v33)
      {
        sub_1DD57162C(v33 + 1, v24, v25, v26, v27, v28, v29, v30, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, vars0, vars8);
      }

      v7 = v42;
      sub_1DD640E28();
      sub_1DD48E664(v39);
      sub_1DD640E78();
      v34 = sub_1DD640758();
      *(v7 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v34;
      *(v7[6] + 8 * v34) = v32;
      ++v7[2];
    }
  }

  v36 = sub_1DD499D84(a1, a2);

  return v36;
}

void *sub_1DD498D04(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v37 = v2;
    v5 = 0x746573746F6ELL;
    v6 = 0x7472617473;
    v7 = MEMORY[0x1E69E7CD0];
    v42 = MEMORY[0x1E69E7CD0];

    v38 = sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v8 = sub_1DD6407F8();
        if (!v8)
        {

          return v7;
        }

        v39[0] = v8;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v9 = v40;
        if (*(v40 + 16) == *(a2 + 16))
        {
          break;
        }

LABEL_38:
      }

      v10 = *(v40 + 49);
      v11 = *(a2 + 49);
      if (v10 == 1)
      {
        v12 = 6581861;
      }

      else
      {
        v12 = v5;
      }

      if (v10 == 1)
      {
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (*(v40 + 49))
      {
        v14 = v12;
      }

      else
      {
        v14 = v6;
      }

      if (*(v40 + 49))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      v16 = v5;
      if (v11 == 1)
      {
        v17 = 6581861;
      }

      else
      {
        v17 = v5;
      }

      if (v11 == 1)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      if (*(a2 + 49))
      {
        v19 = v17;
      }

      else
      {
        v19 = v6;
      }

      if (*(a2 + 49))
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v21 = v6;
      if (v14 == v19 && v15 == v20)
      {
      }

      else
      {
        v23 = sub_1DD640CD8();

        if ((v23 & 1) == 0)
        {
          v5 = v16;
LABEL_37:
          v6 = v21;
          goto LABEL_38;
        }
      }

      v31 = *(v9 + 51);
      v32 = v40;
      v5 = v16;
      if (v31 == 39)
      {
        goto LABEL_37;
      }

      v33 = v7[2];
      v6 = v21;
      if (v7[3] <= v33)
      {
        sub_1DD57162C(v33 + 1, v24, v25, v26, v27, v28, v29, v30, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, vars0, vars8);
      }

      v7 = v42;
      sub_1DD640E28();
      sub_1DD48E664(v39);
      sub_1DD640E78();
      v34 = sub_1DD640758();
      *(v7 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v34;
      *(v7[6] + 8 * v34) = v32;
      ++v7[2];
    }
  }

  v36 = sub_1DD4999E8(a1, a2);

  return v36;
}

void *sub_1DD498FB0(uint64_t a1, uint64_t a2)
{
  v34 = sub_1DD63D168();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {

    v8 = sub_1DD49A120(a1, a2);

    return v8;
  }

  v31 = v2;
  v8 = MEMORY[0x1E69E7CD0];
  v38 = MEMORY[0x1E69E7CD0];
  v35 = a2;

  sub_1DD640778();
  v33 = (v5 + 16);
  v32 = (v5 + 8);
  while (1)
  {
    v9 = sub_1DD6407F8();
    if (!v9)
    {
      break;
    }

    v36[0] = v9;
    type metadata accessor for DateTimeConstraint();
    swift_dynamicCast();
    v17 = v37;
    v18 = *(v37 + 16);
    if (v18 == 12 || v18 == 3)
    {
      if (*(v37 + 53))
      {
        if (v18 != 4)
        {
          goto LABEL_29;
        }

        v20 = 1;
        goto LABEL_23;
      }

      if (v18 == 3)
      {
        v21 = v34;
        v22 = (*v33)(v7, *(v35 + 24) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v34);
        v23 = sub_1DD4F9988(v22);
        (*v32)(v7, v21);
        if ((v23 & 1) != 0 && *(v17 + 51) == 39)
        {
          goto LABEL_29;
        }
      }
    }

    v24 = 0;
    while (v24 != 4)
    {
      v25 = &unk_1F58ADBE8 + v24++;
      if (v25[32] == v18)
      {
        if (*(v17 + 50) == 1)
        {
          v20 = *(v17 + 53);
          if (v18 == 4)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }

        break;
      }
    }

    if (v18 != 4)
    {
      goto LABEL_28;
    }

    v20 = 0;
LABEL_23:
    if (*(v17 + 24) > 12.0 && *(v17 + 48) == 0)
    {
LABEL_29:
      v27 = v37;
      v28 = v8[2];
      if (v8[3] <= v28)
      {
        sub_1DD57162C(v28 + 1, v10, v11, v12, v13, v14, v15, v16, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      }

      v8 = v38;
      sub_1DD640E28();
      sub_1DD48E664(v36);
      sub_1DD640E78();
      v29 = sub_1DD640758();
      *(v8 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v29;
      *(v8[6] + 8 * v29) = v27;
      ++v8[2];
    }

    else
    {
LABEL_27:
      if (v20)
      {
        goto LABEL_29;
      }

LABEL_28:
    }
  }

  return v8;
}

void *sub_1DD4994E0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = v2;
    v5 = 0x746573746F6ELL;
    v6 = MEMORY[0x1E69E7CD0];
    v39 = MEMORY[0x1E69E7CD0];

    v35 = sub_1DD640778();
    while (1)
    {
      v7 = sub_1DD6407F8();
      if (!v7)
      {

        return v6;
      }

      v36[0] = v7;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v8 = *(v37 + 49);
      v9 = *(a2 + 49);
      if (v8 == 1)
      {
        v10 = 6581861;
      }

      else
      {
        v10 = v5;
      }

      if (v8 == 1)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (*(v37 + 49))
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x7472617473;
      }

      if (*(v37 + 49))
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = a2;
      v15 = v5;
      if (v9 == 1)
      {
        v16 = 6581861;
      }

      else
      {
        v16 = v5;
      }

      if (v9 == 1)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0xE600000000000000;
      }

      if (v9)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x7472617473;
      }

      if (v9)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v12 == v18 && v13 == v19)
      {
      }

      else
      {
        v21 = sub_1DD640CD8();

        if ((v21 & 1) == 0)
        {

          goto LABEL_38;
        }
      }

      v29 = v37;
      v30 = v6[2];
      if (v6[3] <= v30)
      {
        sub_1DD57162C(v30 + 1, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, vars0, vars8);
      }

      v6 = v39;
      sub_1DD640E28();
      sub_1DD48E664(v36);
      sub_1DD640E78();
      v31 = sub_1DD640758();
      *(v6 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v31;
      *(v6[6] + 8 * v31) = v29;
      ++v6[2];
LABEL_38:
      v5 = v15;
      a2 = v14;
    }
  }

  v33 = sub_1DD49A5A8(a1, a2);

  return v33;
}

void *sub_1DD499750(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = v2;
    v5 = MEMORY[0x1E69E7CD0];
    v32 = MEMORY[0x1E69E7CD0];

    sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v6 = sub_1DD6407F8();
        if (!v6)
        {

          return v5;
        }

        v29[0] = v6;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v7 = v30;
        if (*(v30 + 49))
        {
          if (*(v30 + 49) == 1)
          {
            v8 = 0xE300000000000000;
            v9 = 6581861;
          }

          else
          {
            v8 = 0xE600000000000000;
            v9 = 0x746573746F6ELL;
          }
        }

        else
        {
          v8 = 0xE500000000000000;
          v9 = 0x7472617473;
        }

        v10 = (0x20001u >> (8 * *(a2 + 49)));
        if ((0x20001u >> (8 * *(a2 + 49))))
        {
          v11 = v10 == 1 ? 6581861 : 0x746573746F6ELL;
          v12 = v10 == 1 ? 0xE300000000000000 : 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
          v11 = 0x7472617473;
        }

        if (v9 != v11 || v8 != v12)
        {
          break;
        }

LABEL_24:
        if ((*(v7 + 55) & 1) == 0)
        {
          goto LABEL_28;
        }

        v22 = v30;
        v23 = v5[2];
        if (v5[3] <= v23)
        {
          sub_1DD57162C(v23 + 1, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
        }

        v5 = v32;
        sub_1DD640E28();
        sub_1DD48E664(v29);
        sub_1DD640E78();
        v24 = sub_1DD640758();
        *(v5 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v24;
        *(v5[6] + 8 * v24) = v22;
        ++v5[2];
      }

      v14 = sub_1DD640CD8();

      if (v14)
      {
        goto LABEL_24;
      }

LABEL_28:
    }
  }

  v26 = sub_1DD49ABAC(a1, a2);

  return v26;
}

void *sub_1DD4999E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v36 = v3;
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v10);
    v35 = v8;
    v37 = (&v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v37);
    v38 = 0;
    v39 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v9 = (v12 + 63) >> 6;
    v40 = a2;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v3 = v15 | (v11 << 6);
      v18 = *(*(v5 + 48) + 8 * v3);
      if (v18[16] == *(a2 + 16))
      {
        if (v18[49])
        {
          if (v18[49] == 1)
          {
            v19 = 0xE300000000000000;
            v20 = 6581861;
          }

          else
          {
            v19 = 0xE600000000000000;
            v20 = 0x746573746F6ELL;
          }
        }

        else
        {
          v19 = 0xE500000000000000;
          v20 = 0x7472617473;
        }

        v21 = *(a2 + 49);
        v22 = 0x746573746F6ELL;
        if (v21 == 1)
        {
          v22 = 6581861;
        }

        v23 = 0xE300000000000000;
        if (v21 != 1)
        {
          v23 = 0xE600000000000000;
        }

        if (*(a2 + 49))
        {
          v24 = v22;
        }

        else
        {
          v24 = 0x7472617473;
        }

        if (*(a2 + 49))
        {
          v25 = v23;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        if (v20 == v24 && v19 == v25)
        {

LABEL_35:
          v28 = v18[51];

          v5 = v39;
          a2 = v40;
          if (v28 != 39)
          {
            *(v37 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
            if (__OFADD__(v38++, 1))
            {
              __break(1u);
LABEL_39:
              sub_1DD51607C(v37, v35, v38, v5);
              v31 = v30;

              return v31;
            }
          }
        }

        else
        {
          v27 = sub_1DD640CD8();

          if (v27)
          {
            goto LABEL_35;
          }

          v5 = v39;
          a2 = v40;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_39;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_42:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();

  v31 = sub_1DD497DE0(v33, v8, v5, a2, sub_1DD49AF48);

  MEMORY[0x1E12B3DA0](v33, -1, -1);

  return v31;
}

void *sub_1DD499D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v36 = v3;
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v10);
    v35 = v8;
    v37 = (&v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v37);
    v38 = 0;
    v39 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v9 = (v12 + 63) >> 6;
    v40 = a2;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v3 = v15 | (v11 << 6);
      v18 = *(*(v5 + 48) + 8 * v3);
      if (v18[16] == *(a2 + 16))
      {
        if (v18[49])
        {
          if (v18[49] == 1)
          {
            v19 = 0xE300000000000000;
            v20 = 6581861;
          }

          else
          {
            v19 = 0xE600000000000000;
            v20 = 0x746573746F6ELL;
          }
        }

        else
        {
          v19 = 0xE500000000000000;
          v20 = 0x7472617473;
        }

        v21 = *(a2 + 49);
        v22 = 0x746573746F6ELL;
        if (v21 == 1)
        {
          v22 = 6581861;
        }

        v23 = 0xE300000000000000;
        if (v21 != 1)
        {
          v23 = 0xE600000000000000;
        }

        if (*(a2 + 49))
        {
          v24 = v22;
        }

        else
        {
          v24 = 0x7472617473;
        }

        if (*(a2 + 49))
        {
          v25 = v23;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        if (v20 == v24 && v19 == v25)
        {

LABEL_35:
          v28 = v18[51];

          v5 = v39;
          a2 = v40;
          if (v28 == 38)
          {
            *(v37 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
            if (__OFADD__(v38++, 1))
            {
              __break(1u);
LABEL_39:
              sub_1DD51607C(v37, v35, v38, v5);
              v31 = v30;

              return v31;
            }
          }
        }

        else
        {
          v27 = sub_1DD640CD8();

          if (v27)
          {
            goto LABEL_35;
          }

          v5 = v39;
          a2 = v40;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_39;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_42:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();

  v31 = sub_1DD497DE0(v33, v8, v5, a2, sub_1DD49B1B0);

  MEMORY[0x1E12B3DA0](v33, -1, -1);

  return v31;
}

void *sub_1DD49A120(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v51 = *MEMORY[0x1E69E9840];
  v43 = sub_1DD63D168();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v7) = a1[32];
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v48 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v46 = v3;
    v44 = v37;
    MEMORY[0x1EEE9AC00](v11);
    v45 = v9;
    v47 = &v37[-((v10 + 15) & 0x3FFFFFFFFFFFFFF0)];
    sub_1DD57634C(0, v9, v47);
    v9 = 0;
    v12 = 0;
    v50 = a1;
    v13 = a1 + 56;
    v14 = 1 << a1[32];
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v10 = v15 & *(a1 + 7);
    v16 = (v14 + 63) >> 6;
    v40 = (v6 + 8);
    v41 = (v6 + 16);
    a1 = &unk_1F58ADBE8;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v6 = *(*(v50 + 6) + 8 * (v17 | (v12 << 6)));
      v3 = *(v6 + 16);
      v20 = v3 == 12 || v3 == 3;
      v49 = v17 | (v12 << 6);
      if (!v20)
      {
        goto LABEL_24;
      }

      if (*(v6 + 53))
      {

        if (v3 == 4)
        {
          v21 = 1;
LABEL_33:
          if (*(v6 + 48))
          {
LABEL_34:

            if (v21)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v30 = *(v6 + 24);

            if ((v30 > 12.0) | v21 & 1)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_23:

LABEL_38:
          *(v47 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
          if (__OFADD__(v9++, 1))
          {
            __break(1u);
LABEL_41:
            sub_1DD51607C(v47, v45, v9, v50);
            v33 = v32;

            return v33;
          }
        }
      }

      else
      {
        if (v3 == 3)
        {
          v22 = *v41;
          v23 = *(v48 + 24) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
          v39 = v9;
          v25 = v42;
          v24 = v43;
          v22(v42, v23, v43);

          v38 = sub_1DD4F9988(v26);
          v27 = v25;
          v9 = v39;
          (*v40)(v27, v24);
          if ((v38 & 1) == 0 || *(v6 + 51) != 39)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }

LABEL_24:

LABEL_25:
        v28 = 0;
        while (v28 != 4)
        {
          v29 = &unk_1F58ADBE8 + v28++;
          if (v29[32] == v3)
          {
            if (*(v6 + 50) == 1)
            {
              v21 = *(v6 + 53);
              if (v3 == 4)
              {
                goto LABEL_33;
              }

              goto LABEL_34;
            }

            break;
          }
        }

        if (v3 == 4)
        {
          v21 = 0;
          goto LABEL_33;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        goto LABEL_41;
      }

      v19 = *&v13[8 * v12];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v35 = swift_slowAlloc();
  v36 = v48;

  v33 = sub_1DD497DE0(v35, v9, a1, v36, sub_1DD49B418);

  MEMORY[0x1E12B3DA0](v35, -1, -1);

  return v33;
}

void *sub_1DD49A5A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v36 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_40;
  }

  while (2)
  {
    v33 = v3;
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v9);
    v32 = v7;
    v34 = (v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v7, v34);
    v35 = 0;
    v7 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v8 = v11 & *(a1 + 56);
    v12 = (v10 + 63) >> 6;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v3 = v13 | (v7 << 6);
      if (*(*(*(a1 + 48) + 8 * v3) + 49))
      {
        if (*(*(*(a1 + 48) + 8 * v3) + 49) == 1)
        {
          v16 = 0xE300000000000000;
          v17 = 6581861;
        }

        else
        {
          v16 = 0xE600000000000000;
          v17 = 0x746573746F6ELL;
        }
      }

      else
      {
        v16 = 0xE500000000000000;
        v17 = 0x7472617473;
      }

      v18 = *(v36 + 49);
      v19 = 0x746573746F6ELL;
      if (v18 == 1)
      {
        v19 = 6581861;
      }

      v20 = 0xE300000000000000;
      if (v18 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (*(v36 + 49))
      {
        v21 = v19;
      }

      else
      {
        v21 = 0x7472617473;
      }

      if (*(v36 + 49))
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (v17 == v21 && v16 == v22)
      {

LABEL_34:
        *(v34 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_37:
          sub_1DD51607C(v34, v32, v35, a1);
          v27 = v26;

          return v27;
        }
      }

      else
      {
        v24 = sub_1DD640CD8();

        if (v24)
        {
          goto LABEL_34;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_37;
      }

      v15 = *(a1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_40:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = swift_slowAlloc();
  v30 = v36;

  v27 = sub_1DD497DE0(v29, v7, a1, v30, sub_1DD49B75C);

  MEMORY[0x1E12B3DA0](v29, -1, -1);

  return v27;
}

void *sub_1DD49A904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v28 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v26[1] = v26;
    v26[2] = v3;
    MEMORY[0x1EEE9AC00](v9);
    v10 = (v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v7, v10);
    v27 = 0;
    v3 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v3 << 6);
      v8 = *(*(a1 + 48) + 8 * v18);
      if (sub_1DD48FCF0())
      {
        v19 = *(v8 + 16);
        if ((v19 == 11 || *(v28 + 16) < v19) && (*(v8 + 54) & 1) == 0)
        {
          *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          if (__OFADD__(v27++, 1))
          {
            __break(1u);
LABEL_19:
            sub_1DD51607C(v10, v7, v27, a1);
            v22 = v21;

            return v22;
          }
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 56 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v28;

  v22 = sub_1DD497DE0(v24, v7, a1, v25, sub_1DD49B970);

  MEMORY[0x1E12B3DA0](v24, -1, -1);

  return v22;
}

void *sub_1DD49ABAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v38 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_39;
  }

  while (2)
  {
    v34 = v3;
    v32 = &v32;
    MEMORY[0x1EEE9AC00](v9);
    v33 = v7;
    v35 = (&v32 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v7, v35);
    v36 = 0;
    v37 = v4;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v3 = v12 & *(v4 + 56);
    v8 = (v11 + 63) >> 6;
    while (v3)
    {
      v13 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      if (*(v17 + 49))
      {
        if (*(v17 + 49) == 1)
        {
          v18 = 0xE300000000000000;
          v19 = 6581861;
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x746573746F6ELL;
        }
      }

      else
      {
        v18 = 0xE500000000000000;
        v19 = 0x7472617473;
      }

      v20 = (0x20001u >> (8 * *(v38 + 49)));
      if ((0x20001u >> (8 * *(v38 + 49))))
      {
        if (v20 == 1)
        {
          v21 = 6581861;
        }

        else
        {
          v21 = 0x746573746F6ELL;
        }

        if (v20 == 1)
        {
          v22 = 0xE300000000000000;
        }

        else
        {
          v22 = 0xE600000000000000;
        }
      }

      else
      {
        v22 = 0xE500000000000000;
        v21 = 0x7472617473;
      }

      if (v19 == v21 && v18 == v22)
      {

LABEL_32:
        v25 = *(v17 + 55);

        v4 = v37;
        if (v25)
        {
          *(v35 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          if (__OFADD__(v36++, 1))
          {
            __break(1u);
LABEL_36:
            sub_1DD51607C(v35, v33, v36, v4);
            v28 = v27;

            return v28;
          }
        }
      }

      else
      {
        v24 = sub_1DD640CD8();

        if (v24)
        {
          goto LABEL_32;
        }

        v4 = v37;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        goto LABEL_36;
      }

      v15 = *(v10 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v3 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_39:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();
  v31 = v38;

  v28 = sub_1DD497DE0(v30, v7, v4, v31, sub_1DD49BAD4);

  MEMORY[0x1E12B3DA0](v30, -1, -1);

  return v28;
}

unint64_t *sub_1DD49AF48(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v31 = result;
  v32 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v5 + 48) + 8 * v15);
    if (v16[16] == *(v4 + 16))
    {
      if (v16[49])
      {
        if (v16[49] == 1)
        {
          v17 = 0xE300000000000000;
          v18 = 6581861;
        }

        else
        {
          v17 = 0xE600000000000000;
          v18 = 0x746573746F6ELL;
        }
      }

      else
      {
        v17 = 0xE500000000000000;
        v18 = 0x7472617473;
      }

      v19 = *(v4 + 49);
      v20 = 0x746573746F6ELL;
      if (v19 == 1)
      {
        v20 = 6581861;
      }

      v21 = 0xE300000000000000;
      if (v19 != 1)
      {
        v21 = 0xE600000000000000;
      }

      if (*(v4 + 49))
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x7472617473;
      }

      if (*(v4 + 49))
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      v24 = v18 == v22 && v17 == v23;
      if (v24)
      {

LABEL_34:
        v26 = v16[51];

        v24 = v26 == 39;
        v4 = a4;
        v5 = a3;
        if (!v24)
        {
          *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_38:

            sub_1DD51607C(v31, a2, v32, v5);
            v29 = v28;

            return v29;
          }
        }
      }

      else
      {
        v25 = sub_1DD640CD8();

        if (v25)
        {
          goto LABEL_34;
        }

        v4 = a4;
        v5 = a3;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_38;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DD49B1B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v31 = result;
  v32 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v5 + 48) + 8 * v15);
    if (v16[16] == *(v4 + 16))
    {
      if (v16[49])
      {
        if (v16[49] == 1)
        {
          v17 = 0xE300000000000000;
          v18 = 6581861;
        }

        else
        {
          v17 = 0xE600000000000000;
          v18 = 0x746573746F6ELL;
        }
      }

      else
      {
        v17 = 0xE500000000000000;
        v18 = 0x7472617473;
      }

      v19 = *(v4 + 49);
      v20 = 0x746573746F6ELL;
      if (v19 == 1)
      {
        v20 = 6581861;
      }

      v21 = 0xE300000000000000;
      if (v19 != 1)
      {
        v21 = 0xE600000000000000;
      }

      if (*(v4 + 49))
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x7472617473;
      }

      if (*(v4 + 49))
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      v24 = v18 == v22 && v17 == v23;
      if (v24)
      {

LABEL_34:
        v26 = v16[51];

        v24 = v26 == 38;
        v4 = a4;
        v5 = a3;
        if (v24)
        {
          *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_39:

            sub_1DD51607C(v31, a2, v32, v5);
            v29 = v28;

            return v29;
          }
        }
      }

      else
      {
        v25 = sub_1DD640CD8();

        if (v25)
        {
          goto LABEL_34;
        }

        v4 = a4;
        v5 = a3;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_39;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD49B418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v40 = a4;
  v38 = a1;
  v36 = sub_1DD63D168();
  v6 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v8 = 0;
  v42 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v33 = (v5 + 8);
  v34 = (v5 + 16);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = *(*(v42 + 48) + 8 * (v16 | (v8 << 6)));
    v20 = *(v19 + 16);
    v21 = v20 == 12 || v20 == 3;
    v41 = v16 | (v8 << 6);
    if (!v21)
    {
      goto LABEL_23;
    }

    if (*(v19 + 53))
    {

      if (v20 == 4)
      {
        v22 = 1;
LABEL_32:
        if (*(v19 + 48))
        {
LABEL_33:

          if (v22)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v28 = *(v19 + 24);

          if ((v28 > 12.0) | v22 & 1)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_22:

LABEL_37:
        *(v38 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_40:
          v30 = v42;

          sub_1DD51607C(v38, v37, v39, v30);

          return;
        }
      }
    }

    else
    {
      if (v20 == 3)
      {
        v23 = v35;
        v24 = v36;
        (*v34)(v35, *(v40 + 24) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v36, v6);

        v32 = sub_1DD4F9988(v25);
        (*v33)(v23, v24);
        if ((v32 & 1) == 0 || *(v19 + 51) != 39)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

LABEL_23:

LABEL_24:
      v26 = 0;
      while (v26 != 4)
      {
        v27 = &unk_1F58ADBE8 + v26++;
        if (v27[32] == v20)
        {
          if (*(v19 + 50) == 1)
          {
            v22 = *(v19 + 53);
            if (v20 == 4)
            {
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          break;
        }
      }

      if (v20 == 4)
      {
        v22 = 0;
        goto LABEL_32;
      }
    }
  }

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
      goto LABEL_40;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1DD49B75C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(*(a3 + 48) + 8 * v14) + 49))
    {
      if (*(*(*(a3 + 48) + 8 * v14) + 49) == 1)
      {
        v15 = 0xE300000000000000;
        v16 = 6581861;
      }

      else
      {
        v15 = 0xE600000000000000;
        v16 = 0x746573746F6ELL;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      v16 = 0x7472617473;
    }

    v17 = *(a4 + 49);
    v18 = 0x746573746F6ELL;
    if (v17 == 1)
    {
      v18 = 6581861;
    }

    v19 = 0xE300000000000000;
    if (v17 != 1)
    {
      v19 = 0xE600000000000000;
    }

    if (*(a4 + 49))
    {
      v20 = v18;
    }

    else
    {
      v20 = 0x7472617473;
    }

    if (*(a4 + 49))
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    if (v16 == v20 && v15 == v21)
    {

LABEL_33:
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_36:

        sub_1DD51607C(v28, a2, v29, a3);
        v26 = v25;

        return v26;
      }
    }

    else
    {
      v23 = sub_1DD640CD8();

      if (v23)
      {
        goto LABEL_33;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_36;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DD49B970(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(a3 + 48) + 8 * v16);
    result = sub_1DD48FCF0();
    if (result)
    {
      v18 = *(v17 + 16);
      if ((v18 == 11 || *(a4 + 16) < v18) && (*(v17 + 54) & 1) == 0)
      {
        *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_18:

          sub_1DD51607C(v23, a2, v6, a3);
          v21 = v20;

          return v21;
        }
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_18;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DD49BAD4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v28 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    if (*(v14 + 49))
    {
      if (*(v14 + 49) == 1)
      {
        v15 = 0xE300000000000000;
        v16 = 6581861;
      }

      else
      {
        v15 = 0xE600000000000000;
        v16 = 0x746573746F6ELL;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      v16 = 0x7472617473;
    }

    v17 = (0x20001u >> (8 * *(a4 + 49)));
    if ((0x20001u >> (8 * *(a4 + 49))))
    {
      if (v17 == 1)
      {
        v18 = 6581861;
      }

      else
      {
        v18 = 0x746573746F6ELL;
      }

      if (v17 == 1)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }
    }

    else
    {
      v19 = 0xE500000000000000;
      v18 = 0x7472617473;
    }

    if (v16 == v18 && v15 == v19)
    {

LABEL_31:
      v22 = *(v14 + 55);

      if (v22)
      {
        *(v27 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_35:

          sub_1DD51607C(v27, a2, v28, a3);
          v25 = v24;

          return v25;
        }
      }
    }

    else
    {
      v21 = sub_1DD640CD8();

      if (v21)
      {
        goto LABEL_31;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_35;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DD49BD28(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = sub_1DD6407B8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    result = sub_1DD6402A8();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_1DD3AA5A4(a1);
    }

    while (1)
    {
      sub_1DD581DE0(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1DD6407F8())
      {
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_1DD3AA5A4(a1);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_1DD3AA5A4(a1);
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD49BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DateTimeConstraint();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1DD6407B8();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1DD3C2520(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_1DD6407B8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD49C018(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = sub_1DD3CBDE8(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_1DD3CC020();
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1DD6223A8(result, 1);

  return sub_1DD49BF30(v4, a2, 0);
}

uint64_t sub_1DD49C0BC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DD6223AC(result, 1);
  v8 = *v2;
  v9 = *(sub_1DD63D0F8() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1DD3C1BFC(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1DD49C1EC()
{
  result = qword_1ECCDC188;
  if (!qword_1ECCDC188)
  {
    type metadata accessor for DateTimeConstraint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC188);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_15(uint64_t a1)
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DD57634C(0, v9, &a9 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_37_13()
{
}

uint64_t OUTLINED_FUNCTION_39_8(uint64_t a1)
{
  *(v1 - 296) = a1;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_41_8(uint64_t a1)
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_42_7()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_45_8(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t result)
{
  *(*(v1 + 48) + 8 * result) = v2;
  ++*(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return swift_endAccess();
}

void OUTLINED_FUNCTION_53_6(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_1DD57162C(a1 + 1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t OUTLINED_FUNCTION_65_4(uint64_t a1)
{

  return sub_1DD640CD8();
}

unint64_t *OUTLINED_FUNCTION_66_3(unint64_t *a1)
{

  return sub_1DD497E80(a1, v2, v3, v1, v4 - 144);
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_68_2()
{
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_1DD581DE0(v0);
}

void OUTLINED_FUNCTION_70_1(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_1DD57162C(a1 + 1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t OUTLINED_FUNCTION_71_1(uint64_t a1)
{
  *(v1 - 232) = a1;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t sub_1DD49C75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD49C7E0@<X0>(void (*a1)(void)@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1DD63DFC8();
  v9 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_1DD49C75C(v8);
    *a3 = a2;
  }

  else
  {
    a1();
    return (*(*(v9 - 8) + 8))(v8, v9);
  }

  return result;
}

uint64_t TerminalElement.DateTimePeriod.toDefinedDateTimeRange(qualifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1DD63DFC8();
  v7 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1DD49C75C(v6);
    *a2 = 38;
  }

  else
  {
    sub_1DD547E68(a1, 0, a2);
    return (*(*(v7 - 8) + 8))(v6, v7);
  }

  return result;
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:endDateTime:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v1;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.__allocating_init(at:start:end:duration:interval:definedValue:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7)
{
  OUTLINED_FUNCTION_4_35();
  result = swift_allocObject();
  v15 = *a6;
  v16 = *a7;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = v15;
  *(result + 57) = v16;
  return result;
}

uint64_t DateTime.DateTimeRange.__allocating_init(withDateTime:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withDateTime:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = a1;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = a1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = a1;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = a2;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:endDateTime:interval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_35();
  v6 = swift_allocObject();
  v6[5] = 0;
  v6[6] = a3;
  v6[2] = 0;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_22_16(v6);
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:endDateTime:interval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = a3;
  v3[2] = 0;
  v3[3] = a1;
  v3[4] = a2;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:duration:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v1;
  v2[4] = 0;
  v2[5] = v0;
  v2[6] = 0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:duration:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = a1;
  v2[4] = 0;
  v2[5] = a2;
  v2[6] = 0;
  return OUTLINED_FUNCTION_1_51();
}

double DateTime.DateTimeRange.__allocating_init(withDefinedValue:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  *(v2 + 56) = *a1;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 57) = 20;
  return result;
}

uint64_t DateTime.DateTimeRange.init(withDefinedValue:)(_BYTE *a1)
{
  *(v1 + 56) = *a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 57) = 20;
  return OUTLINED_FUNCTION_14_4();
}

double DateTime.DateTimeRange.__allocating_init(withDefinedValue:qualifier:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v3 = *v0;
  *(v2 + 56) = *v1;
  *(v2 + 57) = v3;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t DateTime.DateTimeRange.init(withDefinedValue:qualifier:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 56) = *a1;
  *(v2 + 57) = v3;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withInterval:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  *(v2 + 48) = a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withInterval:)(uint64_t a1)
{
  *(v1 + 48) = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withDuration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[5] = a1;
  v2[6] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withDuration:)(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7)
{
  v8 = *a6;
  v9 = *a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = v8;
  *(v7 + 57) = v9;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t sub_1DD49CDC8()
{
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_64();
    v1 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_64();
    v2 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v2);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_64();
    v3 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v3);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD4E0DF8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD4E0DF8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  v4 = *(v0 + 56);
  if (v4 == 38)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v4);
  }

  v5 = *(v0 + 57);
  if (v5 == 20)
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  return MEMORY[0x1E12B3140](v5);
}

BOOL static DateTime.DateTimeRange.== infix(_:_:)()
{
  OUTLINED_FUNCTION_14_1();
  v4 = *(v3 + 16);
  if (*(v2 + 16))
  {
    if (!v4)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v5 = OUTLINED_FUNCTION_38_10();

    if (!v5)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(v0 + 32);
  if (*(v1 + 32))
  {
    if (!v6)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v7 = OUTLINED_FUNCTION_38_10();

    if (!v7)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!v8)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v9 = OUTLINED_FUNCTION_38_10();

    if (!v9)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v0 + 40);
  if (*(v1 + 40))
  {
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for DateTime.Interval();
    if (!OUTLINED_FUNCTION_45_9())
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(v0 + 48);
  if (!*(v1 + 48))
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  type metadata accessor for DateTime.Interval();
  if (!OUTLINED_FUNCTION_45_9())
  {
    return 0;
  }

LABEL_26:
  v12 = *(v1 + 56);
  v13 = *(v0 + 56);
  if (v12 == 38)
  {
    if (v13 != 38)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v15 = *(v1 + 57);
  v16 = *(v0 + 57);
  v17 = v16 == 20;
  v18 = v15 == v16;
  if (v15 == 20)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

uint64_t sub_1DD49D060(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (*(a1 + 24) && *(a2 + 24))
  {
    type metadata accessor for DateTime();

    v6 = OUTLINED_FUNCTION_63_0();
    v8 = static DateTime.< infix(_:_:)(v6, v7);

    if (v8)
    {
      return 1;
    }

    v10 = OUTLINED_FUNCTION_63_0();
    if (static DateTime.== infix(_:_:)(v10, v11) && (v12 = *(a1 + 32)) != 0 && (v13 = *(a2 + 32)) != 0)
    {

      v14 = a3(v12, v13);

      if (v14)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1DD49D1BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (*(a1 + 24) && *(a2 + 24))
  {
    type metadata accessor for DateTime();

    v6 = OUTLINED_FUNCTION_63_0();
    v7 = static DateTime.<= infix(_:_:)(v6);

    if (!v7)
    {
      return 1;
    }

    v8 = OUTLINED_FUNCTION_63_0();
    if (static DateTime.== infix(_:_:)(v8, v9) && (v10 = *(a1 + 32)) != 0 && (v11 = *(a2 + 32)) != 0)
    {

      v12 = a3(v10, v11);

      if ((v12 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1DD49D2E4()
{
  if (*(v0 + 24) && *(v0 + 32))
  {

    v5 = sub_1DD48A1FC();
    MEMORY[0x1E12B2260](2108704, 0xE300000000000000);
    v1 = sub_1DD48A1FC();
    MEMORY[0x1E12B2260](v1);
  }

  else
  {
    if (*(v0 + 56) != 38)
    {
      v5 = 0;
      MEMORY[0x1E12B2260](0x5664656E69666564, 0xED00003D65756C61);
      sub_1DD6409F8();
      return v5;
    }

    if (*(v0 + 16))
    {
      v5 = 4027489;

      v2 = sub_1DD48A1FC();
      MEMORY[0x1E12B2260](v2);

      MEMORY[0x1E12B2260](39, 0xE100000000000000);

      return v5;
    }

    if (!*(v0 + 40))
    {
      return 0;
    }

    v5 = 0x6E6F697461727564;

    v4 = sub_1DD4E0F18();
    MEMORY[0x1E12B2260](v4);
  }

  return v5;
}

uint64_t sub_1DD49D49C(uint64_t a1, uint64_t a2)
{
  v225 = a2;
  v230 = a1;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4E8, &qword_1DD650788);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_3();
  v192 = v4;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v7);
  v216 = sub_1DD63D228();
  OUTLINED_FUNCTION_0();
  v240 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v10);
  v215 = sub_1DD63D1D8();
  OUTLINED_FUNCTION_0();
  v237 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v13);
  v250 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v235 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v19);
  v226 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v233 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v181 - v28;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v181 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  v39 = (v181 - v38);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v41);
  v42 = sub_1DD63D218();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_16_3();
  v247 = v46;
  v254 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC178, &qword_1DD645278);
  v47 = v43;
  v48 = v39;
  v49 = *(v47 + 72);
  v50 = *(v44 + 80);
  v231 = v44;
  v51 = (v50 + 32) & ~v50;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1DD643F80;
  v181[1] = v52;
  v53 = v52 + v51;
  v54 = v226;
  v55 = v29;
  v57 = v44 + 104;
  v56 = *(v44 + 104);
  v205 = *MEMORY[0x1E6969998];
  v56(v53);
  v58 = *MEMORY[0x1E69699A0];
  v229 = v49;
  v228 = v53;
  v248 = v42;
  v204 = v57;
  v203 = v56;
  v59 = (v56)(v53 + v49, v58, v42);
  v60 = 0;
  v61 = 0;
  v244 = *(v246 + 24);
  v243 = *(v246 + 32);
  v227 = *(v231 + 16);
  v236 = (v235 + 16);
  v238 = v233 + 32;
  v234 = (v235 + 32);
  v214 = v237 + 13;
  v213 = v240 + 104;
  v202 = *MEMORY[0x1E6969A48];
  v201 = *MEMORY[0x1E6969A78];
  v200 = *MEMORY[0x1E6969A68];
  v199 = *MEMORY[0x1E6969AB0];
  v212 = v240 + 8;
  v211 = v237 + 1;
  v237 = (v233 + 8);
  v232 = (v235 + 8);
  v185 = (v233 + 16);
  v231 += 16;
  v240 = v231 - 8;
  v198 = *MEMORY[0x1E6969A58];
  v197 = *MEMORY[0x1E6969A88];
  v196 = *MEMORY[0x1E6969A98];
  v59.n128_u64[0] = 136315138;
  v188 = v59;
  v59.n128_u64[1] = 14;
  v195 = xmmword_1DD6504B0;
  v210 = *MEMORY[0x1E69698D0];
  v59.n128_u64[0] = 136315650;
  v182 = v59;
  v209 = *MEMORY[0x1E69699C8];
  v239 = v55;
  v233 = v33;
  v245 = v48;
  while (1)
  {
    LODWORD(v246) = v60;
    v227(v247, v228 + v61 * v229, v248);
    v62 = *v236;
    v63 = v33;
    v64 = v249;
    v65 = v54;
    v66 = v230;
    v67 = v55;
    v68 = v250;
    (*v236)(v249, v230, v250);
    v69 = v64;
    v33 = v63;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v68);
    v70 = v66;
    v54 = v65;
    v235 = v62;
    (v62)(v48, v70, v68);
    v71 = v68;
    v55 = v67;
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v71);
    if (v244)
    {
      v72 = v244;
      sub_1DD489774();
      OUTLINED_FUNCTION_16_0();
      v73 = OUTLINED_FUNCTION_42_8();
      v74(v73);
      OUTLINED_FUNCTION_25_11();
      swift_beginAccess();
      v48 = v220;
      sub_1DD3DD9B4(v72, v220, &qword_1ECCDEBC0, &qword_1DD6445A0);
      OUTLINED_FUNCTION_31_14(v48);
      if (v75)
      {
        OUTLINED_FUNCTION_16_0();
        v76(v67, v65);
        OUTLINED_FUNCTION_36_11();
      }

      else
      {
        OUTLINED_FUNCTION_16_0();
        v55 = v208;
        v77 = OUTLINED_FUNCTION_42_8();
        v78(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
        sub_1DD63D2B8();
        OUTLINED_FUNCTION_0();
        v80 = v79;
        v65 = *(v81 + 72);
        *(swift_allocObject() + 16) = v195;
        v82 = *(v80 + 104);
        v67 = v80 + 104;
        OUTLINED_FUNCTION_21_17();
        v82();
        OUTLINED_FUNCTION_21_17();
        v82();
        OUTLINED_FUNCTION_21_17();
        v82();
        OUTLINED_FUNCTION_21_17();
        v82();
        OUTLINED_FUNCTION_21_17();
        v82();
        OUTLINED_FUNCTION_21_17();
        v82();
        OUTLINED_FUNCTION_21_17();
        v82();
        v33 = v239;
        v48 = sub_1DD418734();
        v63 = v219;
        sub_1DD63D1F8();

        sub_1DD483F74(v33);
        if (v83)
        {
          if (qword_1ECCDB0C0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v84 = sub_1DD63F9F8();
          __swift_project_value_buffer(v84, qword_1ECD0DDC0);
          v48 = *v185;
          v65 = v186;
          v62 = v226;
          (*v185)(v186, v33, v226);
          v67 = v187;
          (v48)(v187, v63, v62);
          v85 = sub_1DD63F9D8();
          v86 = sub_1DD640368();
          if (os_log_type_enabled(v85, v86))
          {
            v63 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            v251 = v184;
            *v63 = v182.n128_u32[0];
            sub_1DD49FFE4(&qword_1ECCDD4F8, 255, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
            v87 = v67;
            v183 = v86;
            v88 = sub_1DD640CB8();
            v89 = v65;
            v91 = v90;
            v92 = *v237;
            (*v237)(v89, v62);
            v93 = sub_1DD39565C(v88, v91, &v251);

            *(v63 + 4) = v93;
            v65 = 2080;
            *(v63 + 12) = 2080;
            v94 = sub_1DD640CB8();
            v96 = v95;
            v92(v87, v62);
            v97 = sub_1DD39565C(v94, v96, &v251);

            *(v63 + 14) = v97;
            *(v63 + 22) = 2080;
            v48 = &qword_1ECCDEBC0;
            sub_1DD3DD9B4(v249, v241, &qword_1ECCDEBC0, &qword_1DD6445A0);
            v98 = sub_1DD63FE38();
            v67 = sub_1DD39565C(v98, v99, &v251);

            *(v63 + 24) = v67;
            _os_log_impl(&dword_1DD38D000, v85, v183, "%s == %s so setting keeping startDate as %s", v63, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();

            v92(v219, v62);
            OUTLINED_FUNCTION_10_31();
            OUTLINED_FUNCTION_23_19();
            v100();
            v92(v33, v62);
          }

          else
          {

            v116 = *v237;
            (*v237)(v67, v62);
            v116(v65, v62);
            v116(v63, v62);
            OUTLINED_FUNCTION_10_31();
            OUTLINED_FUNCTION_23_19();
            v117();
            v116(v33, v62);
          }

          v55 = v33;
          OUTLINED_FUNCTION_29_14();
          v54 = v62;
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          v101 = OUTLINED_FUNCTION_19_20();
          v102(v101);
          OUTLINED_FUNCTION_16_0();
          v103 = OUTLINED_FUNCTION_18_21();
          v104(v103);
          v105 = v241;
          sub_1DD63D298();
          OUTLINED_FUNCTION_16_0();
          v106(v67, v48);
          OUTLINED_FUNCTION_16_0();
          v107(v65, v63);
          sub_1DD49FF04(v105, v249);
          if (qword_1ECCDB0C0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v108 = sub_1DD63F9F8();
          __swift_project_value_buffer(v108, qword_1ECD0DDC0);
          v109 = sub_1DD63F9D8();
          v63 = sub_1DD640368();
          if (os_log_type_enabled(v109, v63))
          {
            v48 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            OUTLINED_FUNCTION_41_9(v110);
            sub_1DD3DD9B4(v249, v241, &qword_1ECCDEBC0, &qword_1DD6445A0);
            v111 = sub_1DD63FE38();
            v65 = v112;
            v67 = sub_1DD39565C(v111, v112, &v251);

            *(v48 + 4) = v67;
            _os_log_impl(&dword_1DD38D000, v109, v63, "startDate is %s after using nextDate", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v110);
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          v113 = OUTLINED_FUNCTION_20_19();
          (v109)(v113);
          OUTLINED_FUNCTION_10_31();
          OUTLINED_FUNCTION_23_19();
          v114();
          OUTLINED_FUNCTION_24_14();
          v115 = OUTLINED_FUNCTION_42_8();
          (v109)(v115);
          v54 = v48;
          OUTLINED_FUNCTION_29_14();
        }
      }
    }

    if (!v243)
    {
      goto LABEL_22;
    }

    v118 = v222;
    v119 = v243;
    sub_1DD489774();
    OUTLINED_FUNCTION_16_0();
    v120(v242, v118, v54);
    v121 = OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_26_0(v121, v122);
    v48 = v221;
    sub_1DD3DD9B4(v119, v221, &qword_1ECCDEBC0, &qword_1DD6445A0);
    OUTLINED_FUNCTION_31_14(v48);
    if (v75)
    {
      OUTLINED_FUNCTION_16_0();
      v123 = OUTLINED_FUNCTION_26_18();
      v124(v123);
      OUTLINED_FUNCTION_36_11();
LABEL_22:
      v125 = OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_26_0(v125, v126);
      OUTLINED_FUNCTION_39_9();
      sub_1DD3DD9B4(v127, v128, v129, &qword_1DD6445A0);
      OUTLINED_FUNCTION_28_9();
      swift_beginAccess();
      sub_1DD49FF04(v62, v48);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_16_0();
    v130(v223, v48, v250);
    OUTLINED_FUNCTION_16_0();
    v131 = OUTLINED_FUNCTION_19_20();
    v132(v131);
    OUTLINED_FUNCTION_16_0();
    v133 = OUTLINED_FUNCTION_18_21();
    v134(v133);
    v33 = v206;
    v135 = v248;
    (v203)(v206, v205, v248);
    v136 = v241;
    sub_1DD63D298();
    OUTLINED_FUNCTION_16_0();
    v137(v33, v135);
    OUTLINED_FUNCTION_16_0();
    v138(v67, v48);
    OUTLINED_FUNCTION_16_0();
    v139(v65, v63);
    OUTLINED_FUNCTION_28_9();
    swift_beginAccess();
    sub_1DD49FF04(v136, v48);
    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v140 = sub_1DD63F9F8();
    __swift_project_value_buffer(v140, qword_1ECD0DDC0);
    v141 = sub_1DD63F9D8();
    v142 = sub_1DD640368();
    v143 = os_log_type_enabled(v141, v142);
    v54 = v226;
    if (v143)
    {
      v48 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      OUTLINED_FUNCTION_41_9(v144);
      OUTLINED_FUNCTION_39_9();
      v55 = &qword_1DD6445A0;
      sub_1DD3DD9B4(v145, v146, v147, &qword_1DD6445A0);
      v148 = sub_1DD63FE38();
      v150 = sub_1DD39565C(v148, v149, &v251);

      *(v48 + 4) = v150;
      _os_log_impl(&dword_1DD38D000, v141, v142, "endDate is %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v144);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_28_9();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_10_31();
    OUTLINED_FUNCTION_23_19();
    v151();
    OUTLINED_FUNCTION_16_0();
    v152 = OUTLINED_FUNCTION_26_18();
    v153(v152);
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_29_14();
LABEL_28:
    v154 = v249;
    OUTLINED_FUNCTION_26_0(v249, v253);
    sub_1DD3DD9B4(v154, v33, &qword_1ECCDEBC0, &qword_1DD6445A0);
    OUTLINED_FUNCTION_31_14(v33);
    if (!v75)
    {
      break;
    }

    v155 = OUTLINED_FUNCTION_9_29();
    v156(v155);
    sub_1DD390754(v33, &qword_1ECCDEBC0, &qword_1DD6445A0);
LABEL_35:
    OUTLINED_FUNCTION_36_11();
    sub_1DD390754(v249, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v60 = 1;
    v61 = 1;
    if (v246)
    {
      swift_setDeallocating();
      sub_1DD46CB60();
      return v254;
    }
  }

  v157 = v54;
  v158 = v48;
  v159 = v234;
  v48 = *v234;
  v160 = v224;
  v161 = v33;
  v33 = v250;
  (*v234)(v224, v161, v250);
  OUTLINED_FUNCTION_26_0(v158, v252);
  v162 = v218;
  sub_1DD3DD9B4(v158, v218, &qword_1ECCDEBC0, &qword_1DD6445A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v162, 1, v33);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_10_31();
    OUTLINED_FUNCTION_23_19();
    v164();
    v165 = OUTLINED_FUNCTION_9_29();
    v166(v165);
    sub_1DD390754(v162, &qword_1ECCDEBC0, &qword_1DD6445A0);
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_28_9();
    v54 = v157;
    OUTLINED_FUNCTION_24_14();
    goto LABEL_35;
  }

  v167 = v217;
  (v48)(v217, v162, v250);
  sub_1DD49FFE4(&qword_1EE166638, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1DD63FD88();
  if (result)
  {
    v33 = v159;
    v169 = v192;
    v170 = v160;
    v55 = v250;
    v171 = v235;
    (v235)(v192, v170, v250);
    v172 = v194;
    v171(v169 + *(v194 + 48), v167, v55);
    v173 = v193;
    sub_1DD3DD9B4(v169, v193, &qword_1ECCDD4E8, &qword_1DD650788);
    v174 = *(v172 + 48);
    v175 = v190;
    (v48)(v190, v173, v55);
    v176 = *v232;
    (*v232)(v173 + v174, v55);
    sub_1DD49FF74(v169, v173);
    (v48)(v175 + *(v191 + 36), v173 + *(v172 + 48), v55);
    v176(v173, v55);
    v177 = v189;
    sub_1DD56E62C();
    v178 = v177;
    v54 = v226;
    sub_1DD390754(v178, &qword_1ECCDD4F0, &unk_1DD651E10);
    v176(v217, v55);
    v176(v224, v55);
    OUTLINED_FUNCTION_24_14();
    v179 = OUTLINED_FUNCTION_9_29();
    v180(v179);
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_28_9();
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD49ED48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6581861 && a2 == 0xE300000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656966696C617571 && a2 == 0xE900000000000072)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD49EF80(char a1)
{
  result = 29793;
  switch(a1)
  {
    case 1:
      result = 0x7472617473;
      break;
    case 2:
      result = 6581861;
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    case 4:
      result = 0x6C61767265746E69;
      break;
    case 5:
      result = 0x5664656E69666564;
      break;
    case 6:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD49F048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD49ED48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD49F070(uint64_t a1)
{
  v2 = sub_1DD49F9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD49F0AC(uint64_t a1)
{
  v2 = sub_1DD49F9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.DateTimeRange.deinit()
{

  return v0;
}

uint64_t DateTime.DateTimeRange.__deallocating_deinit()
{
  DateTime.DateTimeRange.deinit();
  OUTLINED_FUNCTION_4_35();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD49F154(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD470, &qword_1DD6504C0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD49F9AC();
  sub_1DD640EF8();
  v23 = *(v3 + 16);
  HIBYTE(v22) = 0;
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_16_25();
  sub_1DD49FFE4(v11, 255, v12, &protocol conformance descriptor for DateTime);
  OUTLINED_FUNCTION_5_43();
  if (!v2)
  {
    v23 = *(v3 + 24);
    HIBYTE(v22) = 1;
    OUTLINED_FUNCTION_5_43();
    v23 = *(v3 + 32);
    HIBYTE(v22) = 2;
    OUTLINED_FUNCTION_5_43();
    v23 = *(v3 + 40);
    HIBYTE(v22) = 3;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_15_22();
    sub_1DD49FFE4(v13, 255, v14, &protocol conformance descriptor for DateTime.Interval);
    OUTLINED_FUNCTION_5_43();
    v23 = *(v3 + 48);
    HIBYTE(v22) = 4;
    OUTLINED_FUNCTION_5_43();
    LOBYTE(v23) = *(v3 + 56);
    HIBYTE(v22) = 5;
    v15 = sub_1DD49FA00();
    OUTLINED_FUNCTION_35_11(v15, v16, v17, &type metadata for DateTime.DateTimeRange.DefinedDateTimeRange, v15);
    LOBYTE(v23) = *(v3 + 57);
    HIBYTE(v22) = 6;
    v18 = sub_1DD49FA54();
    OUTLINED_FUNCTION_35_11(v18, v19, v20, &type metadata for DateTime.Qualifier, v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD49F3B0()
{
  sub_1DD640E28();
  sub_1DD49CDC8();
  return sub_1DD640E78();
}

uint64_t DateTime.DateTimeRange.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  DateTime.DateTimeRange.init(from:)(a1);
  return v2;
}

uint64_t DateTime.DateTimeRange.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4A0, &qword_1DD6504C8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD49F9AC();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.DateTimeRange();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DateTime();
    OUTLINED_FUNCTION_16_25();
    sub_1DD49FFE4(v5, 255, v6, &protocol conformance descriptor for DateTime);
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 16) = v12;
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 24) = v12;
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 32) = v12;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_15_22();
    sub_1DD49FFE4(v7, 255, v8, &protocol conformance descriptor for DateTime.Interval);
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 40) = v12;
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 48) = v12;
    sub_1DD49FACC();
    OUTLINED_FUNCTION_27_17(&type metadata for DateTime.DateTimeRange.DefinedDateTimeRange);
    *(v1 + 56) = v12;
    sub_1DD49FB20();
    OUTLINED_FUNCTION_27_17(&type metadata for DateTime.Qualifier);
    v10 = OUTLINED_FUNCTION_8_31();
    v11(v10);
    *(v1 + 57) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD49F844(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD49CDC8();
  return sub_1DD640E78();
}

uint64_t sub_1DD49F938@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.DateTimeRange.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD49F9AC()
{
  result = qword_1ECCDD478;
  if (!qword_1ECCDD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD478);
  }

  return result;
}

unint64_t sub_1DD49FA00()
{
  result = qword_1ECCDD490;
  if (!qword_1ECCDD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD490);
  }

  return result;
}

unint64_t sub_1DD49FA54()
{
  result = qword_1ECCDD498;
  if (!qword_1ECCDD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD498);
  }

  return result;
}

unint64_t sub_1DD49FACC()
{
  result = qword_1ECCDD4B8;
  if (!qword_1ECCDD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4B8);
  }

  return result;
}

unint64_t sub_1DD49FB20()
{
  result = qword_1ECCDD4C0;
  if (!qword_1ECCDD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4C0);
  }

  return result;
}

_BYTE *_s13DateTimeRangeC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD49FE00()
{
  result = qword_1ECCDD4D0;
  if (!qword_1ECCDD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4D0);
  }

  return result;
}

unint64_t sub_1DD49FE58()
{
  result = qword_1ECCDD4D8;
  if (!qword_1ECCDD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4D8);
  }

  return result;
}

unint64_t sub_1DD49FEB0()
{
  result = qword_1ECCDD4E0;
  if (!qword_1ECCDD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4E0);
  }

  return result;
}

uint64_t sub_1DD49FF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD49FF74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4E8, &qword_1DD650788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD49FFE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_17(uint64_t a1)
{

  return sub_1DD640B18();
}

uint64_t OUTLINED_FUNCTION_35_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD640C08();
}

uint64_t OUTLINED_FUNCTION_36_11()
{

  return sub_1DD390754(v1, v2, v0);
}

BOOL OUTLINED_FUNCTION_38_10()
{

  return static DateTime.== infix(_:_:)(v0, v1);
}

__n128 OUTLINED_FUNCTION_41_9(uint64_t a1)
{
  *(v2 - 248) = a1;
  result = *(v2 - 784);
  *v1 = result.n128_u32[0];
  return result;
}

BOOL OUTLINED_FUNCTION_45_9()
{

  return static DateTime.Interval.== infix(_:_:)(v1, v0);
}

uint64_t sub_1DD4A01A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v69 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  OUTLINED_FUNCTION_0();
  v79 = v13;
  v80 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v69 - v21;
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;
  v78 = (v6 + 16);
  v76 = v6 + 8;
  v81 = a2;

  v27 = 0;
  *&v28 = 136315394;
  v71 = v28;
  v75 = a1;
  if (v25)
  {
    while (1)
    {
      v29 = v27;
LABEL_8:
      v30 = v77;
      sub_1DD4A0930(*(v81 + 48) + *(v79 + 72) * (__clz(__rbit64(v25)) | (v29 << 6)), v77);
      sub_1DD4A09A0(v30, v82);
      sub_1DD4A0A78(&qword_1EE166638, MEMORY[0x1E6969548]);
      if (sub_1DD63FD78() & 1) != 0 && (sub_1DD63FD88())
      {
        break;
      }

      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v25 &= v25 - 1;
      v31 = sub_1DD63F9F8();
      __swift_project_value_buffer(v31, qword_1ECD0DDC0);
      sub_1DD4A0930(v82, v15);
      v32 = v9;
      (*v78)(v9, a1, v4);
      v33 = sub_1DD63F9D8();
      v34 = sub_1DD640368();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v74 = v36;
        *v35 = v71;
        v83 = 0;
        v84 = 0xE000000000000000;
        v85 = v36;
        v73 = v34;
        sub_1DD6409F8();
        v72 = v33;
        OUTLINED_FUNCTION_4_36();
        sub_1DD6409F8();
        v37 = v4;
        v38 = v83;
        v39 = v84;
        sub_1DD4A0A10(v15);
        v40 = sub_1DD39565C(v38, v39, &v85);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        OUTLINED_FUNCTION_0_67();
        sub_1DD4A0A78(&qword_1EE1663F8, v41);
        v42 = sub_1DD640CB8();
        v44 = v43;
        OUTLINED_FUNCTION_3_40();
        v45(v32, v37);
        v46 = sub_1DD39565C(v42, v44, &v85);
        v4 = v37;

        *(v35 + 14) = v46;
        v47 = v72;
        _os_log_impl(&dword_1DD38D000, v72, v73, "range %s doesn't contain %s", v35, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        OUTLINED_FUNCTION_3_40();
        v48(v9, v4);
        sub_1DD4A0A10(v15);
      }

      sub_1DD4A0A10(v82);
      v27 = v29;
      a1 = v75;
      v9 = v32;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    if (qword_1ECCDB0C0 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        return 0;
      }

      v25 = *(v22 + 8 * v29);
      ++v27;
      if (v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_19:
  v50 = sub_1DD63F9F8();
  __swift_project_value_buffer(v50, qword_1ECD0DDC0);
  v51 = v69;
  sub_1DD4A0930(v82, v69);
  v52 = v70;
  (*v78)(v70, a1, v4);
  v53 = sub_1DD63F9D8();
  v54 = sub_1DD640368();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = v4;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = v71;
    v83 = 0;
    v84 = 0xE000000000000000;
    v85 = v57;
    sub_1DD6409F8();
    OUTLINED_FUNCTION_4_36();
    sub_1DD6409F8();
    v59 = v83;
    v58 = v84;
    sub_1DD4A0A10(v51);
    v60 = sub_1DD39565C(v59, v58, &v85);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    OUTLINED_FUNCTION_0_67();
    sub_1DD4A0A78(v61, v62);
    v63 = sub_1DD640CB8();
    v65 = v64;
    OUTLINED_FUNCTION_3_40();
    v66(v52, v55);
    v67 = sub_1DD39565C(v63, v65, &v85);

    *(v56 + 14) = v67;
    _os_log_impl(&dword_1DD38D000, v53, v54, "range: %s contains %s returning true", v56, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_3_40();
    v68(v52, v4);
    sub_1DD4A0A10(v51);
  }

  sub_1DD4A0A10(v82);
  return 1;
}

uint64_t sub_1DD4A0930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4A09A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4A0A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4A0A78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DD4A0AC8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v32 = *a1;
  switch(*a1)
  {
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      v34 = OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34(v34);
      OUTLINED_FUNCTION_0_58();
      v39 = OUTLINED_FUNCTION_5_44(5, v35, v36, v37, v38);
      OUTLINED_FUNCTION_1_52(v39);
      OUTLINED_FUNCTION_0_58();
      v42 = 4;
      goto LABEL_13;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      v62 = OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34(v62);
      OUTLINED_FUNCTION_0_58();
      v60 = 9;
      goto LABEL_12;
    case 0xA:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      v55 = OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34(v55);
      OUTLINED_FUNCTION_0_58();
      v60 = 8;
      goto LABEL_12;
    case 0xB:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      v61 = OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34(v61);
      OUTLINED_FUNCTION_0_58();
      v60 = 11;
LABEL_12:
      v63 = OUTLINED_FUNCTION_5_44(v60, v56, v57, v58, v59);
      OUTLINED_FUNCTION_1_52(v63);
      OUTLINED_FUNCTION_0_58();
      v42 = 5;
      goto LABEL_13;
    default:
      if (v32 == 31)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
        v49 = OUTLINED_FUNCTION_8_32();
        OUTLINED_FUNCTION_6_34(v49);
        OUTLINED_FUNCTION_0_58();
        v54 = OUTLINED_FUNCTION_5_44(4, v50, v51, v52, v53);
        OUTLINED_FUNCTION_1_52(v54);
        OUTLINED_FUNCTION_0_58();
        v42 = 2;
        goto LABEL_13;
      }

      if (v32 == 32)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
        v43 = OUTLINED_FUNCTION_8_32();
        OUTLINED_FUNCTION_6_34(v43);
        OUTLINED_FUNCTION_0_58();
        v48 = OUTLINED_FUNCTION_5_44(2, v44, v45, v46, v47);
        OUTLINED_FUNCTION_1_52(v48);
        OUTLINED_FUNCTION_0_58();
        v42 = 1;
LABEL_13:
        inited[2].n128_u64[1] = sub_1DD48DFB4(v42, v40, 0, 1, v41, 1, 1, 0);
        sub_1DD418B8C(inited);
        return;
      }

      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DD6407B8())
      {
        v71 = MEMORY[0x1E69E7CC0];

        sub_1DD56C450(v71, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
      }

      return;
  }
}

uint64_t sub_1DD4A0DA0(_BYTE *a1)
{
  v1 = *a1;
  switch(*a1)
  {
    case 8:
      OUTLINED_FUNCTION_4_37();
      v2 = OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6(v2);
      OUTLINED_FUNCTION_2_43();
      v6 = 5;
      return sub_1DD48DFB4(v6, v3, 0, 1, v4, 1, v5, 0);
    case 9:
      OUTLINED_FUNCTION_4_37();
      v12 = OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6(v12);
      OUTLINED_FUNCTION_2_43();
      v6 = 9;
      return sub_1DD48DFB4(v6, v3, 0, 1, v4, 1, v5, 0);
    case 0xA:
      OUTLINED_FUNCTION_4_37();
      v9 = OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6(v9);
      OUTLINED_FUNCTION_2_43();
      v6 = 8;
      return sub_1DD48DFB4(v6, v3, 0, 1, v4, 1, v5, 0);
    case 0xB:
      OUTLINED_FUNCTION_4_37();
      v11 = OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6(v11);
      OUTLINED_FUNCTION_2_43();
      v6 = 11;
      return sub_1DD48DFB4(v6, v3, 0, 1, v4, 1, v5, 0);
    default:
      if (v1 == 31)
      {
        OUTLINED_FUNCTION_4_37();
        v8 = OUTLINED_FUNCTION_9_30();
        OUTLINED_FUNCTION_6(v8);
        OUTLINED_FUNCTION_2_43();
        v6 = 4;
      }

      else
      {
        if (v1 != 32)
        {
          return 0;
        }

        OUTLINED_FUNCTION_4_37();
        v7 = OUTLINED_FUNCTION_9_30();
        OUTLINED_FUNCTION_6(v7);
        OUTLINED_FUNCTION_2_43();
        v6 = 2;
      }

      return sub_1DD48DFB4(v6, v3, 0, 1, v4, 1, v5, 0);
  }
}

SiriInference::DateTimeResolutionContext::Hemisphere_optional __swiftcall DateTimeResolutionContext.Hemisphere.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD4A0F10@<X0>(uint64_t *a1@<X8>)
{
  result = DateTimeResolutionContext.Hemisphere.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t DateTimeResolutionContext.__allocating_init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = sub_1DD63D328();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v28 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v29 = v15;
  LOBYTE(a5) = *a5;
  v16 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
  v17 = sub_1DD63D168();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(v8 + v16, a1, v17);
  v19(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, a2, v17);
  v19(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, a3, v17);
  v27 = *(v13 + 16);
  v27(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, a4, v34);
  *(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere) = a5;
  v20 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  v21 = sub_1DD63D2D8();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v8 + v20, a6, v21);
  v27(v29, a4, v34);
  swift_beginAccess();
  sub_1DD63D2A8();
  swift_endAccess();
  (*(v22 + 8))(a6, v21);
  (*(v28 + 8))(a4, v34);
  v23 = *(v18 + 8);
  v23(a3, v17);
  v23(a2, v17);
  v23(a1, v17);
  v24 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date;
  sub_1DD63D078();
  OUTLINED_FUNCTION_7();
  (*(v25 + 32))(v8 + v24, a7);
  return v8;
}

uint64_t sub_1DD4A1370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F466E6F69676572 && a2 == 0xEC00000074616D72;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001DD66D670 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65687073696D6568 && a2 == 0xEA00000000006572;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1702125924 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4A15B4(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
      result = 0x6F466E6F69676572;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    case 4:
      result = 0x65687073696D6568;
      break;
    case 5:
      result = 0x7261646E656C6163;
      break;
    case 6:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4A1688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A1370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A16B0(uint64_t a1)
{
  v2 = sub_1DD4A205C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A16EC(uint64_t a1)
{
  v2 = sub_1DD4A205C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeResolutionContext.deinit()
{
  v1 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
  v2 = sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v2);
  v4(v0 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, v2);
  v5 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone;
  sub_1DD63D328();
  OUTLINED_FUNCTION_7();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  sub_1DD63D2D8();
  OUTLINED_FUNCTION_7();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date;
  sub_1DD63D078();
  OUTLINED_FUNCTION_7();
  (*(v10 + 8))(v0 + v9);
  return v0;
}

uint64_t DateTimeResolutionContext.__deallocating_deinit()
{
  DateTimeResolutionContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4A18CC(void *a1)
{
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v56 = v3;
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v55 = v4;
  OUTLINED_FUNCTION_6_2();
  v60 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v58 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v59 = v7;
  OUTLINED_FUNCTION_6_2();
  v63 = sub_1DD63D328();
  OUTLINED_FUNCTION_0();
  v61 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v62 = v10;
  OUTLINED_FUNCTION_6_2();
  v11 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD500, &qword_1DD650790);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4A205C();
  sub_1DD640EF8();
  v65 = *(v13 + 16);
  v65(v20, v68 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v11);
  v69 = 0;
  OUTLINED_FUNCTION_4_38();
  sub_1DD4A29E0(v27, v28, MEMORY[0x1E6969778]);
  v29 = v26;
  v30 = v67;
  sub_1DD640C68();
  if (v30)
  {
    (*(v13 + 8))(v20, v11);
    return (*(v23 + 8))(v26, v21);
  }

  else
  {
    v67 = v23;
    v32 = v20;
    v33 = *(v13 + 8);
    v33(v32, v11);
    v65(v66, v68 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v11);
    v69 = 1;
    v34 = v21;
    sub_1DD640C68();
    v33(v66, v11);
    v35 = v64;
    v65(v64, v68 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, v11);
    v69 = 2;
    sub_1DD640C68();
    v33(v35, v11);
    v36 = v61;
    v37 = v62;
    v38 = v63;
    (*(v61 + 16))(v62, v68 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, v63);
    v69 = 3;
    OUTLINED_FUNCTION_6_35();
    sub_1DD4A29E0(v39, v40, MEMORY[0x1E6969BC8]);
    sub_1DD640C68();
    v41 = v67;
    (*(v36 + 8))(v37, v38);
    v69 = *(v68 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
    v70 = 4;
    sub_1DD4A20B0();
    sub_1DD640C68();
    v42 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v43 = v58;
    v44 = v68 + v42;
    v45 = v59;
    v46 = v60;
    (*(v58 + 16))(v59, v44, v60);
    v70 = 5;
    OUTLINED_FUNCTION_7_32();
    sub_1DD4A29E0(v47, v48, MEMORY[0x1E6969AF0]);
    sub_1DD640C68();
    (*(v43 + 8))(v45, v46);
    v50 = v55;
    v49 = v56;
    v51 = v57;
    (*(v56 + 16))(v55, v68 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v57);
    v70 = 6;
    OUTLINED_FUNCTION_5_45();
    sub_1DD4A29E0(v52, v53, MEMORY[0x1E6969538]);
    sub_1DD640C68();
    (*(v49 + 8))(v50, v51);
    return (*(v41 + 8))(v29, v34);
  }
}

unint64_t sub_1DD4A205C()
{
  result = qword_1ECCDD508;
  if (!qword_1ECCDD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD508);
  }

  return result;
}

unint64_t sub_1DD4A20B0()
{
  result = qword_1ECCDD518;
  if (!qword_1ECCDD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD518);
  }

  return result;
}

uint64_t DateTimeResolutionContext.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DateTimeResolutionContext.init(from:)(a1);
  return v2;
}

uint64_t DateTimeResolutionContext.init(from:)(void *a1)
{
  v63 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v61 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v62 = v4;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v65 = v6;
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v64 = v7;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D328();
  OUTLINED_FUNCTION_0();
  v67 = v9;
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v69 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v70 = v57 - v21;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD528, &qword_1DD650798);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - v25;
  v27 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1DD4A205C();
  v72 = v26;
  v28 = v73;
  sub_1DD640ED8();
  if (v28)
  {
    v56 = v74;
    type metadata accessor for DateTimeResolutionContext(0);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    v73 = v19;
    v58 = v11;
    v59 = v16;
    v60 = v23;
    v77[6] = 0;
    OUTLINED_FUNCTION_4_38();
    sub_1DD4A29E0(v29, v30, MEMORY[0x1E6969790]);
    v31 = v70;
    OUTLINED_FUNCTION_8_33();
    sub_1DD640B78();
    v33 = *(v69 + 32);
    v34 = v74;
    v57[1] = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
    v35 = v31;
    v36 = v33;
    v33(v74 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v35, v12);
    v77[5] = 1;
    v37 = v73;
    OUTLINED_FUNCTION_8_33();
    sub_1DD640B78();
    v36(v34 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v37, v12);
    v77[4] = 2;
    v38 = v59;
    OUTLINED_FUNCTION_8_33();
    v73 = 0;
    sub_1DD640B78();
    v36(v34 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, v38, v12);
    v77[3] = 3;
    OUTLINED_FUNCTION_6_35();
    sub_1DD4A29E0(v39, v40, MEMORY[0x1E6969BE0]);
    v41 = v58;
    v42 = v68;
    sub_1DD640B78();
    (*(v67 + 32))(v34 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, v41, v42);
    v77[1] = 4;
    sub_1DD4A298C();
    sub_1DD640B78();
    *(v34 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere) = v77[2];
    v77[0] = 5;
    OUTLINED_FUNCTION_7_32();
    v45 = sub_1DD4A29E0(v43, v44, MEMORY[0x1E6969B08]);
    v46 = v64;
    v47 = v34;
    v48 = v66;
    OUTLINED_FUNCTION_11_29(v45, v77);
    (*(v65 + 32))(v47 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar, v46, v48);
    v76 = 6;
    OUTLINED_FUNCTION_5_45();
    v51 = sub_1DD4A29E0(v49, v50, MEMORY[0x1E6969558]);
    v53 = v62;
    v52 = v63;
    OUTLINED_FUNCTION_11_29(v51, &v76);
    v54 = OUTLINED_FUNCTION_2_44();
    v55(v54);
    (*(v61 + 32))(v47 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v53, v52);
    __swift_destroy_boxed_opaque_existential_1(v75);
    return v47;
  }

  return v56;
}

uint64_t type metadata accessor for DateTimeResolutionContext(uint64_t a1)
{
  result = qword_1ECCDD550;
  if (!qword_1ECCDD550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD4A298C()
{
  result = qword_1ECCDD538;
  if (!qword_1ECCDD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD538);
  }

  return result;
}

uint64_t sub_1DD4A29E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD4A2A2C()
{
  result = qword_1ECCDD548;
  if (!qword_1ECCDD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD548);
  }

  return result;
}

uint64_t sub_1DD4A2A80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTimeResolutionContext.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD4A2AD8(uint64_t a1)
{
  result = sub_1DD63D168();
  if (v2 <= 0x3F)
  {
    result = sub_1DD63D328();
    if (v3 <= 0x3F)
    {
      result = sub_1DD63D2D8();
      if (v4 <= 0x3F)
      {
        result = sub_1DD63D078();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionContext.Hemisphere(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4A2E74()
{
  result = qword_1ECCDD560;
  if (!qword_1ECCDD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD560);
  }

  return result;
}

unint64_t sub_1DD4A2ECC()
{
  result = qword_1ECCDD568;
  if (!qword_1ECCDD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD568);
  }

  return result;
}

unint64_t sub_1DD4A2F24()
{
  result = qword_1ECCDD570;
  if (!qword_1ECCDD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD570);
  }

  return result;
}

unint64_t sub_1DD4A2F78()
{
  result = qword_1ECCDD578;
  if (!qword_1ECCDD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_29(uint64_t a1, uint64_t a2)
{

  return sub_1DD640B78();
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionInfo(_BYTE *result, int a2, int a3)
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

SiriInference::DateTimeResolutionSpec::ExpandToType_optional __swiftcall DateTimeResolutionSpec.ExpandToType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD4A30BC@<X0>(uint64_t *a1@<X8>)
{
  result = DateTimeResolutionSpec.ExpandToType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD4A31BC@<X0>(uint64_t *a1@<X8>)
{
  result = DateTimeResolutionSpec.DateTimeConvergenceStrategy.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:witchingHourRoundOffEnabled:convergeToOperatingHours:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 17) = a5;
  *(a6 + 18) = 1;
  return result;
}

_BYTE *DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = *result;
  *(a7 + 1) = v7;
  *(a7 + 8) = a3;
  *(a7 + 16) = a5;
  *(a7 + 17) = a6;
  *(a7 + 18) = a4;
  return result;
}

uint64_t sub_1DD4A3310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54646E61707865 && a2 == 0xEC00000065707954;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD66D6B0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x80000001DD66D6D0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001DD66D700 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001DD66D720 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000017 && 0x80000001DD66D740 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD640CD8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4A3500(char a1)
{
  result = 0x6F54646E61707865;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4A35DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A3310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A3604(uint64_t a1)
{
  v2 = sub_1DD4A38D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A3640(uint64_t a1)
{
  v2 = sub_1DD4A38D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeResolutionSpec.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD580, &qword_1DD650A80);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = *v1;
  v20 = v1[1];
  v18 = *(v1 + 1);
  v10 = v1[16];
  v17[2] = v1[17];
  v17[3] = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1DD4A38D4();
  sub_1DD640EF8();
  LOBYTE(v19) = v9;
  v21 = 0;
  sub_1DD4A3928();
  OUTLINED_FUNCTION_0_69();
  sub_1DD640C68();
  if (!v2)
  {
    v15 = v18;
    LOBYTE(v19) = v20;
    v21 = 1;
    sub_1DD4A397C();
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C68();
    v19 = v15;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD5A0, &qword_1DD650A88);
    sub_1DD4A39D0();
    sub_1DD640C68();
    LOBYTE(v19) = 3;
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C28();
    LOBYTE(v19) = 4;
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C28();
    LOBYTE(v19) = 5;
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C28();
  }

  return (*(v5 + 8))(v8, v14);
}

unint64_t sub_1DD4A38D4()
{
  result = qword_1ECCDD588;
  if (!qword_1ECCDD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD588);
  }

  return result;
}

unint64_t sub_1DD4A3928()
{
  result = qword_1ECCDD590;
  if (!qword_1ECCDD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD590);
  }

  return result;
}

unint64_t sub_1DD4A397C()
{
  result = qword_1ECCDD598;
  if (!qword_1ECCDD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD598);
  }

  return result;
}

unint64_t sub_1DD4A39D0()
{
  result = qword_1ECCDD5A8;
  if (!qword_1ECCDD5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD5A0, &qword_1DD650A88);
    sub_1DD49FA00();
    sub_1DD4A3E78(&qword_1ECCDD480, &protocol conformance descriptor for DateTime);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5A8);
  }

  return result;
}

uint64_t DateTimeResolutionSpec.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD5B0, &qword_1DD650A90);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4A38D4();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DD4A3D28();
  OUTLINED_FUNCTION_2_45(&type metadata for DateTimeResolutionSpec.ExpandToType);
  sub_1DD4A3D7C();
  OUTLINED_FUNCTION_2_45(&type metadata for DateTimeResolutionSpec.DateTimeConvergenceStrategy);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD5A0, &qword_1DD650A88);
  sub_1DD4A3DD0();
  sub_1DD640B78();
  v11 = OUTLINED_FUNCTION_1_53(3);
  v10 = OUTLINED_FUNCTION_1_53(4);
  v7 = OUTLINED_FUNCTION_1_53(5);
  v8 = OUTLINED_FUNCTION_6_36();
  v9(v8);
  *a2 = v12;
  *(a2 + 1) = v12;
  *(a2 + 8) = v12;
  *(a2 + 16) = v11 & 1;
  *(a2 + 17) = v10 & 1;
  *(a2 + 18) = v7 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD4A3D28()
{
  result = qword_1ECCDD5B8;
  if (!qword_1ECCDD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5B8);
  }

  return result;
}

unint64_t sub_1DD4A3D7C()
{
  result = qword_1ECCDD5C0;
  if (!qword_1ECCDD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5C0);
  }

  return result;
}

unint64_t sub_1DD4A3DD0()
{
  result = qword_1ECCDD5C8;
  if (!qword_1ECCDD5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD5A0, &qword_1DD650A88);
    sub_1DD49FACC();
    sub_1DD4A3E78(&qword_1ECCDD4A8, &protocol conformance descriptor for DateTime);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5C8);
  }

  return result;
}

uint64_t sub_1DD4A3E78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DateTime();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4A3EC0()
{
  result = qword_1ECCDD5D0;
  if (!qword_1ECCDD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5D0);
  }

  return result;
}

unint64_t sub_1DD4A3F18()
{
  result = qword_1ECCDD5D8;
  if (!qword_1ECCDD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5D8);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1DD4A3FB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1DD4A3FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionSpec.ExpandToType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionSpec.DateTimeConvergenceStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionSpec.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4A42D0()
{
  result = qword_1ECCDD5E0;
  if (!qword_1ECCDD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5E0);
  }

  return result;
}

unint64_t sub_1DD4A4328()
{
  result = qword_1ECCDD5E8;
  if (!qword_1ECCDD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5E8);
  }

  return result;
}

unint64_t sub_1DD4A4380()
{
  result = qword_1ECCDD5F0;
  if (!qword_1ECCDD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5F0);
  }

  return result;
}

unint64_t sub_1DD4A43D4()
{
  result = qword_1ECCDD5F8;
  if (!qword_1ECCDD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5F8);
  }

  return result;
}

unint64_t sub_1DD4A4428()
{
  result = qword_1ECCDD600;
  if (!qword_1ECCDD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD600);
  }

  return result;
}

void static DateTimeResolver.name.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  *&xmmword_1ECCDD608 = a1;
  *(&xmmword_1ECCDD608 + 1) = a2;
  byte_1ECCDD618 = a3;
}

double sub_1DD4A4578@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1ECCDD618;
  result = *&xmmword_1ECCDD608;
  *a1 = xmmword_1ECCDD608;
  *(a1 + 16) = v2;
  return result;
}

void sub_1DD4A45CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_beginAccess();
  *&xmmword_1ECCDD608 = v1;
  *(&xmmword_1ECCDD608 + 1) = v2;
  byte_1ECCDD618 = v3;
}

uint64_t DateTimeResolver.findMatches(value:context:spec:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a3 + 1);
  v7 = a3[16];
  v8 = a3[17];
  v9 = a3[18];
  v30 = &type metadata for DefinedTimeStore;
  v31 = &off_1F58B7818;
  v10 = type metadata accessor for HolidaysDBHolidayResolver();
  swift_allocObject();

  v33 = v10;
  v34 = &off_1F58B90A8;
  v32 = sub_1DD4CFF04(1, 0);
  v29 = a2;
  v24[0] = v4;
  v24[1] = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;

  v11 = sub_1DD4A8B3C(a1);
  if (!v23)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1ECD0DDC0);

    v13 = sub_1DD63F9D8();
    v14 = sub_1DD640368();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315138;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
      v18 = MEMORY[0x1E12B2430](v11, v17);
      v20 = sub_1DD39565C(v18, v19, &v35);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DD38D000, v13, v14, "DateTime matches: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  sub_1DD4A55D8(v24);
  return v11;
}

uint64_t DateTimeResolver.makeRecommendation(value:context:spec:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v71 = a2;
  v70 = a1;
  v54 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCB8, &unk_1DD64AEF0);
  v6 = OUTLINED_FUNCTION_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v52 - v10;
  v55 = sub_1DD63F728();
  OUTLINED_FUNCTION_0();
  v53 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v52 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880);
  v16 = OUTLINED_FUNCTION_3(v15);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v52 - v17;
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v68 = v19;
  v69 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v59 = v21 - v20;
  sub_1DD640478();
  OUTLINED_FUNCTION_0();
  v57 = v23;
  v58 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  v27 = sub_1DD640438();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v28 = sub_1DD63FBD8();
  v29 = OUTLINED_FUNCTION_3(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v30 = type metadata accessor for SELFLoggingService(0);
  v31 = v30 - 8;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  LODWORD(v33) = *a3;
  v35 = a3[1];
  v65 = *(a3 + 1);
  v63 = a3[16];
  v64 = v33;
  LODWORD(v32) = a3[17];
  v60 = v35;
  v61 = v32;
  v62 = a3[18];
  sub_1DD63F178();
  v56 = sub_1DD406E2C();
  sub_1DD63FB98();
  v73 = MEMORY[0x1E69E7CC0];
  sub_1DD4A5794(&qword_1EE166488, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  (*(v57 + 104))(v26, *MEMORY[0x1E69E8090], v58);
  v36 = v59;
  *(v34 + *(v31 + 28)) = sub_1DD6404A8();
  sub_1DD63D0E8();
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    sub_1DD63F738();
  }

  v37 = sub_1DD63F468();
  v38 = v66;
  if (v37)
  {
    sub_1DD63F448();

    sub_1DD63F758();

    v39 = v55;
    if (__swift_getEnumTagSinglePayload(v38, 1, v55))
    {
      sub_1DD3ADFD0(v38, &qword_1ECCDCD68, &qword_1DD64B880);
    }

    else
    {
      v41 = v52;
      v40 = v53;
      (*(v53 + 16))(v52, v38, v39);
      sub_1DD3ADFD0(v38, &qword_1ECCDCD68, &qword_1DD64B880);
      sub_1DD63F718();
      (*(v40 + 8))(v41, v39);
    }
  }

  v42 = v75;
  sub_1DD5AC168();

  LOBYTE(v73) = 1;
  v43 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v44 = v67;
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v43);
  sub_1DD5ACB80();
  sub_1DD3ADFD0(v44, &qword_1ECCDCCB8, &unk_1DD64AEF0);
  if (v60)
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  if (v61)
  {
    v46 = 256;
  }

  else
  {
    v46 = 0;
  }

  if (v62)
  {
    v47 = 0x10000;
  }

  else
  {
    v47 = 0;
  }

  v48 = v72;
  sub_1DD4A4F50(v70, v71, v45 | v64, v65, v46 | v63 | v47, &v73);
  if (v48)
  {
    sub_1DD5AD0AC(v42, v36);
    OUTLINED_FUNCTION_6_37();

    swift_willThrow();
    sub_1DD3ADFD0(v42, &qword_1ECCDBAC8, &qword_1DD643E60);
    (*(v68 + 8))(v36, v69);
    return sub_1DD4A562C(v34);
  }

  else
  {
    sub_1DD5AD088(v42, v36);
    OUTLINED_FUNCTION_6_37();

    sub_1DD3ADFD0(v42, &qword_1ECCDBAC8, &qword_1DD643E60);
    (*(v68 + 8))(v36, v69);
    result = sub_1DD4A562C(v34);
    v50 = v74;
    v51 = v54;
    *v54 = v73;
    *(v51 + 8) = v50;
  }

  return result;
}

void sub_1DD4A4F50(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LOWORD(v26) = a3;
  v27 = a4;
  v28 = a5;
  v29 = BYTE2(a5);
  v12 = DateTimeResolver.findMatches(value:context:spec:)(a1, a2, &v26);
  if (!v6)
  {
    LOWORD(v26) = a3 & 0x1FF;
    v27 = a4;
    v28 = a5 & 0x101;
    v29 = BYTE2(a5) & 1;
    sub_1DD4A5190(v12, a2, &v26, &v24);

    v13 = v24;
    v14 = v25;
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1ECD0DDC0);
    sub_1DD4A59E8(v13, v14);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    sub_1DD4A5A0C(v13, v14);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v26 = v30;
      *v18 = 136315138;
      sub_1DD4A59E8(v13, v14);
      v19 = sub_1DD4A81F8(v13);
      v21 = v20;
      sub_1DD4A5A0C(v13, v14);
      v22 = sub_1DD39565C(v19, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DD38D000, v16, v17, "DateTime recommendation: %s", v18, 0xCu);
      v23 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    *a6 = v13;
    *(a6 + 8) = v14;
  }
}

void sub_1DD4A5190(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 1);
  v10 = a3[16];
  v11 = a3[17];
  v12 = a3[18];
  type metadata accessor for DateTimeSuggestionResolver();
  LOBYTE(v31[0]) = v7;
  BYTE1(v31[0]) = v8;
  v31[1] = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  sub_1DD4A9BA0(a2, v31);
  v13 = sub_1DD4A9CDC(a1);
  if (v4)
  {

    return;
  }

  v14 = v13;
  v15 = v35;
  v16 = *(v13 + 16);
  if (v16 != 1)
  {
    if (!v16)
    {

      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
      }

      v17 = sub_1DD63F9F8();
      __swift_project_value_buffer(v17, qword_1ECD0DDC0);
      v18 = sub_1DD63F9D8();
      v19 = sub_1DD640368();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DD38D000, v18, v19, "recommendation is of type .none, resultset size from resolver: 0", v20, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      *v15 = 0;
      v21 = 3;
      goto LABEL_27;
    }

    if (qword_1ECCDB0C0 == -1)
    {
LABEL_21:
      v26 = sub_1DD63F9F8();
      __swift_project_value_buffer(v26, qword_1ECD0DDC0);

      v27 = sub_1DD63F9D8();
      v28 = sub_1DD640368();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349056;
        *(v29 + 4) = *(v14 + 16);

        _os_log_impl(&dword_1DD38D000, v27, v28, "recommendation is of type .needsDisambiguation, resultset size from resolver: %{public}ld", v29, 0xCu);
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      v31[0] = MEMORY[0x1E69E7CC0];
      sub_1DD640988();
      v30 = 32;
      do
      {

        sub_1DD640958();
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        v30 += 80;
        --v16;
      }

      while (v16);

      *v15 = v31[0];
      v21 = 2;
LABEL_27:
      *(v15 + 8) = v21;
      return;
    }

LABEL_29:
    OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
    goto LABEL_21;
  }

  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1ECD0DDC0);
  v23 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  if (os_log_type_enabled(v23, v16))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DD38D000, v23, v16, "recommendation is of type .confident, resultset size from resolver: 1", v24, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v25 = *(v14 + 32);
  if (*(v25 + 16))
  {

    sub_1DD48236C();

    v25 = *(v14 + 32);
  }

  if (*(v25 + 24))
  {

    sub_1DD5FC0A4();

    v25 = *(v14 + 32);
  }

  *v15 = v25;
  *(v15 + 8) = 0;
}

uint64_t sub_1DD4A562C(uint64_t a1)
{
  v2 = type metadata accessor for SELFLoggingService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD4A5688(uint64_t a1)
{
  result = sub_1DD4A56B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD4A56B0()
{
  result = qword_1ECCDD620;
  if (!qword_1ECCDD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD620);
  }

  return result;
}

uint64_t sub_1DD4A5794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD4A57E0()
{
  result = qword_1ECCDD638;
  if (!qword_1ECCDD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD638);
  }

  return result;
}

unint64_t sub_1DD4A5838()
{
  result = qword_1ECCDD640;
  if (!qword_1ECCDD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD640);
  }

  return result;
}

unint64_t sub_1DD4A5890()
{
  result = qword_1ECCDD648;
  if (!qword_1ECCDD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD648);
  }

  return result;
}

unint64_t sub_1DD4A58E8()
{
  result = qword_1ECCDD650;
  if (!qword_1ECCDD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolver(_BYTE *result, int a2, int a3)
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

void sub_1DD4A59E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_1DD4A5A0C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

SiriInference::BoundsOfRangeSignal __swiftcall BoundsOfRangeSignal.init()()
{
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  return result;
}

SiriInference::BoundsOfRangeSignal __swiftcall BoundsOfRangeSignal.init(startBoundIsSet:endBoundIsSet:)(Swift::Bool startBoundIsSet, Swift::Bool endBoundIsSet)
{
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v2 + 16) = startBoundIsSet;
  *(v2 + 17) = endBoundIsSet;
  LOBYTE(result.version) = endBoundIsSet;
  result.isError = startBoundIsSet;
  return result;
}

uint64_t sub_1DD4A5AE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756F427472617473 && a2 == 0xEF7465537349646ELL;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x646E756F42646E65 && a2 == 0xED00007465537349)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

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

uint64_t sub_1DD4A5C58(char a1)
{
  result = 0x726F7272457369;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x756F427472617473;
      break;
    case 3:
      result = 0x646E756F42646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4A5CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A5AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A5D20(uint64_t a1)
{
  v2 = sub_1DD4A5F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A5D5C(uint64_t a1)
{
  v2 = sub_1DD4A5F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BoundsOfRangeSignal.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD658, &qword_1DD650F10);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DD4A5F28();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v0)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A5F28()
{
  result = qword_1ECCDD660;
  if (!qword_1ECCDD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD660);
  }

  return result;
}

void BoundsOfRangeSignal.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD668, &qword_1DD650F18);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_1();
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v8 = sub_1DD4A5F28();
  OUTLINED_FUNCTION_17_1(&type metadata for BoundsOfRangeSignal.CodingKeys, v9, v8);
  if (!v0)
  {
    OUTLINED_FUNCTION_5_46();
    v10 = sub_1DD640B38();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_5_46();
    sub_1DD640B68();
    OUTLINED_FUNCTION_20_20();
    OUTLINED_FUNCTION_5_46();
    v14 = sub_1DD640B38();
    OUTLINED_FUNCTION_5_46();
    v11 = sub_1DD640B38();
    v12 = OUTLINED_FUNCTION_19_21();
    v13(v12, v5);
    *v4 = v10 & 1;
    *(v4 + 8) = v7;
    *(v4 + 16) = v14 & 1;
    *(v4 + 17) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD4A617C(uint64_t a1)
{
  v2 = sub_1DD4A6228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A61B8(uint64_t a1)
{
  v2 = sub_1DD4A6228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD4A6228()
{
  result = qword_1ECCDD678;
  if (!qword_1ECCDD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD678);
  }

  return result;
}

SiriInference::MeridiemSignal __swiftcall MeridiemSignal.init()()
{
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  return result;
}

SiriInference::MeridiemSignal __swiftcall MeridiemSignal.init(setByUser:)(Swift::Bool setByUser)
{
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = setByUser;
  result.isError = setByUser;
  return result;
}

uint64_t sub_1DD4A633C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v3 = a2[16] ^ a1[16] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1DD4A6378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_27(0x726F7272457369, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_27(0x6E6F6973726576, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6573557942746573 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_27(0x6573557942746573, 0xE900000000000072);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD4A6474(uint64_t a1)
{
  v2 = sub_1DD4A668C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A64B0(uint64_t a1)
{
  v2 = sub_1DD4A668C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD4A6520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v34 = v25;
  v27 = v26;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_0();
  v32 = v31;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v34();
  sub_1DD640EF8();
  sub_1DD640C28();
  if (!v23)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  (*(v32 + 8))(v24, v30);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A668C()
{
  result = qword_1ECCDD690;
  if (!qword_1ECCDD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD690);
  }

  return result;
}

void sub_1DD4A6714()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v15 = v6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66_1();
  v12 = v5[3];
  __swift_project_boxed_opaque_existential_1(v5, v12);
  v3();
  sub_1DD640ED8();
  if (!v0)
  {
    OUTLINED_FUNCTION_5_46();
    v13 = sub_1DD640B38();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_5_46();
    sub_1DD640B68();
    OUTLINED_FUNCTION_20_20();
    OUTLINED_FUNCTION_5_46();
    v14 = sub_1DD640B38();
    (*(v10 + 8))(v1, v16);
    *v15 = v13 & 1;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_86();
}

void DateTimeSignalSet.boundsOfRange.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void __swiftcall DateTimeSignalSet.init()(SiriInference::DateTimeSignalSet *__return_ptr retstr)
{
  retstr->temporalIntent.isError = 0;
  retstr->temporalIntent.version = 1;
  retstr->temporalIntent.setByUser = 0;
  retstr->boundsOfRange.gap1[5] = 0;
  *(&retstr->boundsOfRange.version + 6) = 1;
  *&retstr->meridiem.gap1[3] = 0;
  BYTE4(retstr->meridiem.version) = 0;
  OUTLINED_FUNCTION_15_23(retstr);
}

void __swiftcall DateTimeSignalSet.init(withTemporalIntent:boundsOfRange:)(SiriInference::DateTimeSignalSet *__return_ptr retstr, SiriInference::TemporalIntentSignal withTemporalIntent, SiriInference::BoundsOfRangeSignal boundsOfRange)
{
  v3 = *(*&withTemporalIntent.isError + 8);
  v4 = *(*&withTemporalIntent.isError + 16);
  v5 = *withTemporalIntent.version;
  v6 = *(withTemporalIntent.version + 8);
  v7 = *(withTemporalIntent.version + 16);
  v8 = *(withTemporalIntent.version + 17);
  retstr->temporalIntent.isError = **&withTemporalIntent.isError;
  retstr->temporalIntent.version = v3;
  retstr->temporalIntent.setByUser = v4;
  retstr->boundsOfRange.gap1[5] = v5;
  *(&retstr->boundsOfRange.version + 6) = v6;
  retstr->meridiem.gap1[3] = v7;
  retstr->meridiem.gap1[4] = v8;
  BYTE4(retstr->meridiem.version) = 0;
  OUTLINED_FUNCTION_15_23(retstr);
}

void __swiftcall DateTimeSignalSet.init(withTemporalIntent:boundsOfRange:meridiem:)(SiriInference::DateTimeSignalSet *__return_ptr retstr, SiriInference::TemporalIntentSignal withTemporalIntent, SiriInference::BoundsOfRangeSignal boundsOfRange, SiriInference::MeridiemSignal meridiem)
{
  v4 = **&withTemporalIntent.isError;
  v5 = *(*&withTemporalIntent.isError + 8);
  v6 = *(*&withTemporalIntent.isError + 16);
  v7 = *withTemporalIntent.version;
  v8 = *(withTemporalIntent.version + 8);
  v9 = *(withTemporalIntent.version + 16);
  v10 = *(withTemporalIntent.version + 17);
  v11 = **&withTemporalIntent.setByUser;
  v12 = *(*&withTemporalIntent.setByUser + 8);
  v13 = *(*&withTemporalIntent.setByUser + 16);
  retstr->temporalIntent.isError = v4;
  retstr->temporalIntent.version = v5;
  retstr->temporalIntent.setByUser = v6;
  retstr->boundsOfRange.gap1[5] = v7;
  *(&retstr->boundsOfRange.version + 6) = v8;
  retstr->meridiem.gap1[3] = v9;
  retstr->meridiem.gap1[4] = v10;
  BYTE4(retstr->meridiem.version) = v11;
  *&retstr[1].temporalIntent.gap1[1] = v12;
  BYTE2(retstr[1].temporalIntent.version) = v13;
}

uint64_t sub_1DD4A69E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61726F706D6574 && a2 == 0xEE00746E65746E49;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x664F73646E756F62 && a2 == 0xED000065676E6152;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D6569646972656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD4A6B00(char a1)
{
  if (!a1)
  {
    return 0x6C61726F706D6574;
  }

  if (a1 == 1)
  {
    return 0x664F73646E756F62;
  }

  return 0x6D6569646972656DLL;
}

uint64_t sub_1DD4A6B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A69E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A6BA0(uint64_t a1)
{
  v2 = sub_1DD4A6E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A6BDC(uint64_t a1)
{
  v2 = sub_1DD4A6E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DateTimeSignalSet.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD6A0, &qword_1DD650F40);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_5();
  v7 = v3[3];
  v8 = v3;
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(v8, v7);
  sub_1DD4A6E10();
  sub_1DD640EF8();
  sub_1DD4A6E64();
  OUTLINED_FUNCTION_7_33();
  sub_1DD640C68();
  if (!v0)
  {
    sub_1DD4A6EB8();
    OUTLINED_FUNCTION_7_33();
    sub_1DD640C68();
    sub_1DD4A6F0C();
    OUTLINED_FUNCTION_7_33();
    sub_1DD640C68();
  }

  (*(v5 + 8))(v1, v10);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A6E10()
{
  result = qword_1ECCDD6A8;
  if (!qword_1ECCDD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6A8);
  }

  return result;
}

unint64_t sub_1DD4A6E64()
{
  result = qword_1ECCDD6B0;
  if (!qword_1ECCDD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6B0);
  }

  return result;
}

unint64_t sub_1DD4A6EB8()
{
  result = qword_1ECCDD6B8;
  if (!qword_1ECCDD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6B8);
  }

  return result;
}

unint64_t sub_1DD4A6F0C()
{
  result = qword_1ECCDD6C0;
  if (!qword_1ECCDD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6C0);
  }

  return result;
}

void DateTimeSignalSet.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD6C8, qword_1DD650F48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_1();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = sub_1DD4A6E10();
  OUTLINED_FUNCTION_17_1(&type metadata for DateTimeSignalSet.CodingKeys, v8, v7);
  if (!v0)
  {
    sub_1DD4A714C();
    OUTLINED_FUNCTION_2_47(&type metadata for TemporalIntentSignal);
    sub_1DD4A71A0();
    OUTLINED_FUNCTION_2_47(&type metadata for BoundsOfRangeSignal);
    sub_1DD4A71F4();
    OUTLINED_FUNCTION_2_47(&type metadata for MeridiemSignal);
    v9 = OUTLINED_FUNCTION_19_21();
    v10(v9, v5);
    *v4 = v11;
    *(v4 + 8) = v12;
    *(v4 + 16) = v13;
    *(v4 + 24) = v11;
    *(v4 + 32) = v12;
    *(v4 + 40) = v13;
    *(v4 + 41) = v14;
    *(v4 + 48) = v11;
    *(v4 + 56) = v12;
    *(v4 + 64) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A714C()
{
  result = qword_1ECCDD6D0;
  if (!qword_1ECCDD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6D0);
  }

  return result;
}

unint64_t sub_1DD4A71A0()
{
  result = qword_1ECCDD6D8;
  if (!qword_1ECCDD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6D8);
  }

  return result;
}

unint64_t sub_1DD4A71F4()
{
  result = qword_1ECCDD6E0;
  if (!qword_1ECCDD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6E0);
  }

  return result;
}

unint64_t sub_1DD4A7260()
{
  result = qword_1ECCDD6E8;
  if (!qword_1ECCDD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6E8);
  }

  return result;
}

unint64_t sub_1DD4A730C()
{
  result = qword_1ECCDD6F0;
  if (!qword_1ECCDD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6F0);
  }

  return result;
}

unint64_t sub_1DD4A73B8()
{
  result = qword_1ECCDD6F8;
  if (!qword_1ECCDD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6F8);
  }

  return result;
}

uint64_t sub_1DD4A744C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = (a4)(a1, a2, a3);
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BoundsOfRangeSignal(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[18])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for BoundsOfRangeSignal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DD4A7578(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DD4A75C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DD4A7614(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[65])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DD4A7660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1DD4A76E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BoundsOfRangeSignal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4A78A0()
{
  result = qword_1ECCDD700;
  if (!qword_1ECCDD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD700);
  }

  return result;
}

unint64_t sub_1DD4A78F8()
{
  result = qword_1ECCDD708;
  if (!qword_1ECCDD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD708);
  }

  return result;
}

unint64_t sub_1DD4A7950()
{
  result = qword_1ECCDD710;
  if (!qword_1ECCDD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD710);
  }

  return result;
}

unint64_t sub_1DD4A79A8()
{
  result = qword_1ECCDD718;
  if (!qword_1ECCDD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD718);
  }

  return result;
}

unint64_t sub_1DD4A7A00()
{
  result = qword_1ECCDD720;
  if (!qword_1ECCDD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD720);
  }

  return result;
}

unint64_t sub_1DD4A7A58()
{
  result = qword_1ECCDD728;
  if (!qword_1ECCDD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD728);
  }

  return result;
}

unint64_t sub_1DD4A7AB0()
{
  result = qword_1ECCDD730;
  if (!qword_1ECCDD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD730);
  }

  return result;
}