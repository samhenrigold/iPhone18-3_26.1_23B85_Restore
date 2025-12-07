uint64_t sub_1976C00EC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_project_boxed_opaque_existential_0Tm(a2, a2[3]);
  sub_197649C2C();
  sub_197649C34();
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;

  v16 = v8;
  v17 = v10;
  __swift_destroy_boxed_opaque_existential_0(v13);
  MEMORY[0x19A8E4C40](46, 0xE100000000000000);
  result = MEMORY[0x19A8E4C40](v4, v5);
  v12 = v17;
  *a3 = v16;
  a3[1] = v12;
  return result;
}

uint64_t sub_1976C01E4(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(v10, __src, sizeof(v10));
  type metadata accessor for ScalarQuery(0, a2, v7, v8);
  sub_1976BEDB4();
  sub_1976C3090();

  if (v4)
  {
  }

  sub_1976B5B0C(v10, a2, a3);
  return sub_19764CB44(v10, &unk_1EAF3FEB0);
}

void sub_1976C02D0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_59_3();
  v5 = sub_19774F420();
  OUTLINED_FUNCTION_61();
  v18 = v6;
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_61();
  v19 = v8;
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_4();
  memcpy(v20, v0, sizeof(v20));
  v10 = sub_19774F420();
  type metadata accessor for ScalarQuery(0, v10, v11, v12);
  sub_1976BEDB4();
  sub_1976C3090();
  if (v1)
  {
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v2, 0, 1, AssociatedTypeWitness);
      v13 = OUTLINED_FUNCTION_29_5();
      v14(v13);
      v15 = OUTLINED_FUNCTION_45_5();
      v16(v15);
      (*(v19 + 8))(v3, AssociatedTypeWitness);
    }

    else
    {
      OUTLINED_FUNCTION_56_4();
      (*(v18 + 8))(v2, v5);
    }

    v17 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_72_3(v17);
  }

  OUTLINED_FUNCTION_9();
}

uint64_t sub_1976C059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  type metadata accessor for Select(0, a4, a3, a4);
  sub_19764EEC8();
  sub_1976C3090();

  if (v6)
  {
  }

  sub_1976B5B0C(v10, a4, a5);
  return sub_19764CB44(v10, &unk_1EAF3FEB0);
}

void sub_1976C0680()
{
  OUTLINED_FUNCTION_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_59_3();
  v4 = sub_19774F420();
  OUTLINED_FUNCTION_61();
  v17 = v5;
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_61();
  v18 = v7;
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42_4();
  v9 = sub_19774F420();
  type metadata accessor for Select(0, v9, v10, v11);
  sub_19764EEC8();
  sub_1976C3090();
  if (v0)
  {
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v1, 0, 1, AssociatedTypeWitness);
      v12 = OUTLINED_FUNCTION_29_5();
      v13(v12);
      v14 = OUTLINED_FUNCTION_45_5();
      v15(v14);
      (*(v18 + 8))(v2, AssociatedTypeWitness);
    }

    else
    {
      OUTLINED_FUNCTION_56_4();
      (*(v17 + 8))(v1, v4);
    }

    v16 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_72_3(v16);
  }

  OUTLINED_FUNCTION_9();
}

uint64_t sub_1976C0920(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 16))(v14, v5, v6);
  sub_19764AB24(v14);
  if (v16)
  {
    v7 = 0;
  }

  else
  {
    v7 = v14[19];
  }

  v8 = v16 | v15;
  v13[3] = v3;
  v13[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_1976BB844(1, 0, v7, v8 & 1, v3, v4, boxed_opaque_existential_1);
  OUTLINED_FUNCTION_49_4();
  sub_19764C978(v10);
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v1)
  {
    sub_19764EA8C();
    if (v11)
    {
    }
  }

  return OUTLINED_FUNCTION_37_4();
}

sqlite3_int64 sub_1976C0AAC@<X0>(sqlite3_int64 *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  OUTLINED_FUNCTION_50_4(a2, a3);
  result = sub_1976C30AC();
  if (!v3)
  {

    v8 = sub_197646D50(v6, v7);
    result = sqlite3_last_insert_rowid(v8);
    *a1 = result;
  }

  return result;
}

uint64_t sub_1976C0B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_19_6();

  return a4(v4, v4, v7, v6, v5);
}

uint64_t sub_1976C0B8C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  OUTLINED_FUNCTION_50_4(a2, a3);
  result = sub_1976C30AC();
  if (!v3)
  {

    v8 = sub_197646D50(v6, v7);
    result = sqlite3_changes(v8);
    *a1 = result;
  }

  return result;
}

uint64_t sub_1976C0BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_108();
  v10 = sub_1976497AC(v6, v7, v8, v9);
  v12 = sub_19764ECD4(v10, v11, a3);
  v14 = v13;

  if (v14)
  {
    return 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(a4 + 16))
  {
    sub_197650334();
    v16 = v19 != 0;
    OUTLINED_FUNCTION_12_7();
    sub_19764CB44(v17, v18);
    return v16;
  }

  __break(1u);
  return result;
}

char *sub_1976C0CB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_19764ED2C(*(a1 + 16), 0);
  v6 = OUTLINED_FUNCTION_52_4(v3, v4, v5);

  sub_197651EE4();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:
    v1 = MEMORY[0x1E69E7CC0];
  }

  v8 = v1;
  sub_1976C0F2C(&v8);
  return v8;
}

unint64_t sub_1976C0D80(uint64_t a1, uint64_t a2)
{
  v2 = sub_19774F780();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1976C0DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1976C0D80(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1976C0E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976BBDF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1976C0E4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_19774F780();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1976C0EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1976C0E4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1976C0EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976BD854(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1976C0F2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1976C0F18(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1976C0F98(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1976C0F98(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19774F7B0();
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
        v6 = sub_19774F160();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1976C1154(v7, v8, a1, v4);
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
    return sub_1976C108C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1976C108C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_19774F7E0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
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

void sub_1976C1154(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_19774F7E0();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_19774F7E0()))
          {
            break;
          }

          ++v10;
          v16 += 2;
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
          v18 = 16 * v10;
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

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
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

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
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

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_19774F7E0() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1976B349C();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1976B349C();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
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
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
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

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1976C1788((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1976C165C(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1976C165C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1976C192C(v5);
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
    sub_1976C1788((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1976C1788(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_19764B5A8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_19774F7E0() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_19764B5A8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_19774F7E0() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1976C1940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40020, &qword_19775E5E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1976C1A40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1976C1B74()
{
  result = qword_1EAF40078;
  if (!qword_1EAF40078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40078);
  }

  return result;
}

unint64_t sub_1976C1BC8(uint64_t a1)
{
  result = sub_1976C1BF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1976C1BF0()
{
  result = qword_1EAF40080;
  if (!qword_1EAF40080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40080);
  }

  return result;
}

unint64_t sub_1976C1C48()
{
  result = qword_1EAF40088;
  if (!qword_1EAF40088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40088);
  }

  return result;
}

unint64_t sub_1976C1CA0()
{
  result = qword_1EAF40090[0];
  if (!qword_1EAF40090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF40090);
  }

  return result;
}

uint64_t sub_1976C1D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1976C1D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1976C1DB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_55_4(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return OUTLINED_FUNCTION_55_4(v2);
}

uint64_t sub_1976C1DEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_54_4(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_54_4(result, a2);
    }
  }

  return result;
}

uint64_t sub_1976C1E3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_55_4(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_55_4(v2);
}

uint64_t sub_1976C1E84(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1976C1F0C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1976C1FD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1976C20B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_55_4(-1);
  }

  if (a2 < 0 && *(a1 + 176))
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

  return OUTLINED_FUNCTION_55_4(v2);
}

uint64_t sub_1976C20EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

      return OUTLINED_FUNCTION_54_4(result, a2);
    }

    *(result + 176) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_54_4(result, a2);
    }
  }

  return result;
}

uint64_t sub_1976C2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_17_7();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v17 = &off_1F0BBB748;
  v13 = v7;
  v14 = v6;
  v15 = v5;

  MEMORY[0x19A8E4C40](40, 0xE100000000000000);
  __swift_project_boxed_opaque_existential_0Tm(&v13, v16);
  v10 = v13;
  v11 = v14;

  MEMORY[0x19A8E4C40](v10, v11);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);

  __swift_destroy_boxed_opaque_existential_0(&v13);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1976C22B8(unint64_t *a1, uint64_t x1_0)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_50_4(0, x1_0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1976C231C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1976C1A40(a2, a3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_3(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, v1);

  return sub_1976B5D38();
}

uint64_t OUTLINED_FUNCTION_32_5()
{

  return sub_197650334();
}

void *OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_197651EEC(va, (a1 + 32), v3, v4);
}

void OUTLINED_FUNCTION_61_3(uint64_t a1@<X8>)
{
  v1[8] = a1;
  v1[4] = 42;
  v1[5] = 0xE100000000000000;
}

uint64_t OUTLINED_FUNCTION_72_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t sub_1976C2500(unsigned __int8 a1, char a2)
{
  v2 = 0x53534F5243;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x53534F5243;
  switch(v4)
  {
    case 1:
      v5 = 0x52454E4E49;
      break;
    case 2:
      v5 = 0x54554F205446454CLL;
      v3 = 0xEA00000000005245;
      break;
    case 3:
      v5 = 0;
      v3 = 0xE000000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x52454E4E49;
      break;
    case 2:
      v2 = 0x54554F205446454CLL;
      v6 = 0xEA00000000005245;
      break;
    case 3:
      v2 = 0;
      v6 = 0xE000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19774F7E0();
  }

  return v8 & 1;
}

uint64_t sub_1976C2628(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000004ELL;
  v3 = 0x4F49544341204F4ELL;
  v4 = a1;
  v5 = 0x4F49544341204F4ELL;
  v6 = 0xE90000000000004ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x5443495254534552;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x4C4C554E20544553;
      break;
    case 3:
      v5 = 0x4146454420544553;
      v6 = 0xEB00000000544C55;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x45444143534143;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x5443495254534552;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x4C4C554E20544553;
      break;
    case 3:
      v3 = 0x4146454420544553;
      v2 = 0xEB00000000544C55;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x45444143534143;
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
    v8 = sub_19774F7E0();
  }

  return v8 & 1;
}

uint64_t sub_1976C27BC(unsigned __int8 a1, char a2)
{
  v2 = 0x4543414C504552;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x4543414C504552;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x4B4341424C4C4F52;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x54524F4241;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1279869254;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x45524F4E4749;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x4B4341424C4C4F52;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x54524F4241;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1279869254;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x45524F4E4749;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19774F7E0();
  }

  return v8 & 1;
}

uint64_t sub_1976C2918(char a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x4445525245464544;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_19774F7E0();
  }

  return v7 & 1;
}

uint64_t sub_1976C2A24(uint64_t a1)
{
  v1 = a1;
  sub_19774F930();
  sub_1976C2AE8(v3, v1);
  return sub_19774F950();
}

uint64_t sub_1976C2A84(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_19774F930();
  v4 = a2(a1);
  OUTLINED_FUNCTION_17_8(v4, v5, v6);

  return sub_19774F950();
}

uint64_t sub_1976C2AE8(uint64_t a1, char a2)
{
  sub_19774EFF0();
}

uint64_t sub_1976C2B8C(uint64_t a1, char a2)
{
  sub_19774EFF0();
}

uint64_t sub_1976C2C68(uint64_t a1, char a2)
{
  sub_19774EFF0();
}

uint64_t sub_1976C2D28(uint64_t a1, char a2)
{
  sub_19774EFF0();
}

uint64_t sub_1976C2DBC(uint64_t a1, char a2)
{
  sub_19774F930();
  sub_19774EFF0();

  return sub_19774F950();
}

uint64_t sub_1976C2E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_19774F930();
  v5 = a3(a2);
  OUTLINED_FUNCTION_17_8(v5, v6, v7);

  return sub_19774F950();
}

uint64_t sub_1976C2EE8(uint64_t a1, char a2)
{
  sub_19774F930();
  sub_1976C2AE8(v4, a2);
  return sub_19774F950();
}

_OWORD *sub_1976C2F48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_19766A150(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_1976C6188(v11, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
  }

  else
  {
    sub_19764CAE4(a1, &unk_1EAF3F8C0, &qword_19775AA48);
    v6 = sub_1976C601C(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401E8, &qword_19775F040);
      sub_19774F6F0();
      sub_19766A150((*(v10 + 56) + 32 * v8), v11);
      sub_19774F700();
      *v2 = v10;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    return sub_19764CAE4(v11, &unk_1EAF3F8C0, &qword_19775AA48);
  }

  return result;
}

sqlite3_int64 sub_1976C30C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_197646D50(a1, a2);

  return sqlite3_last_insert_rowid(v2);
}

id sub_1976C30F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_19764665C();
  if (qword_1ED6972C0 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_1ED6972C0);
  }

  sub_19774F360();
  v8 = sub_197646CE8();
  if ((v15 & 1) != 0 || v14 != v8)
  {
    insert_rowid = *(a1 + 104);
    sub_19774F390();

    if (!v5)
    {
      insert_rowid = v16;
    }
  }

  else
  {
    insert_rowid = a2;
    sub_1976C30AC();
    if (!v5)
    {

      v12 = sub_197646D50(v10, v11);
      insert_rowid = sqlite3_last_insert_rowid(v12);
    }
  }

  return insert_rowid;
}

id sub_1976C32A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_19764665C();
  if (qword_1ED6972C0 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_1ED6972C0);
  }

  sub_19774F360();
  v9 = sub_197646CE8();
  if ((v16 & 1) != 0 || v15 != v9)
  {
    v10 = *(a1 + 104);
    sub_19774F390();

    if (!v6)
    {
      v10 = v17;
    }
  }

  else
  {
    v10 = a2;
    sub_1976C30AC();
    if (v6)
    {
    }

    else
    {

      v13 = sub_197646D50(v11, v12);
      LODWORD(v10) = sqlite3_changes(v13);

      v10 = v10;
    }
  }

  return v10;
}

uint64_t sub_1976C341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19764665C();
  if (qword_1ED6972C0 != -1)
  {
    swift_once();
  }

  sub_19774F360();
  v6 = sub_197646CE8();
  if ((v13 & 1) != 0 || v12 != v6)
  {
    v10 = *(a1 + 104);
    sub_19774F390();
    if (v4)
    {

      return v10;
    }

    v10 = v14;
LABEL_11:

    return v10;
  }

  v8 = sub_197646D50(v6, v7);
  v9 = sub_19774EFD0();
  v10 = sqlite3_exec(v8, (v9 + 32), 0, 0, 0);

  sub_1976469C4(v10, 0);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v10;
}

uint64_t sub_1976C35F4(int a1)
{
  switch(a1)
  {
    case 9:
      return 2;
    case 18:
      return 0;
    case 23:
      return 1;
  }

  sub_19774F5B0();

  v2 = sub_19774F7C0();
  MEMORY[0x19A8E4C40](v2);

  result = sub_19774F710();
  __break(1u);
  return result;
}

uint64_t sub_1976C3714(unsigned __int8 a1)
{
  sub_19774F930();
  MEMORY[0x19A8E5570](a1);
  return sub_19774F950();
}

uint64_t sub_1976C3778(uint64_t a1)
{
  v2 = *v1;
  sub_19774F930();
  sub_1976C36EC(v4, v2);
  return sub_19774F950();
}

uint64_t sub_1976C37BC()
{
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_15_8();
  return v0;
}

uint64_t sub_1976C37F4()
{
  OUTLINED_FUNCTION_14_8();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_197659758(v0, v1);
  return v4;
}

uint64_t sub_1976C383C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_8(v2 + 24, a2);
  v3 = *(v2 + 24);
  sub_197645CF4(v3, *(v2 + 32));
  return v3;
}

uint64_t sub_1976C3880()
{
  OUTLINED_FUNCTION_65();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return sub_19764781C(v3);
}

uint64_t (*sub_1976C38D0())(uint64_t a1)
{
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1976C3964()
{
  sub_1976C3090();
  if (!v5)
  {
    sub_19764CAE4(v4, &unk_1EAF3FEB0, &unk_19775A8C0);
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_2:
    v0 = 0;
    v1 = 1;
LABEL_3:
    v4[0] = v1;
    return v0 | (v1 << 32);
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v1 = 0;
    v0 = v3;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976C3A74()
{
  sub_19774F5B0();

  v0 = sub_19774F7C0();
  MEMORY[0x19A8E4C40](v0);

  sub_1976C30AC();
}

uint64_t (*sub_1976C3B78(uint64_t a1))()
{
  *a1 = v1;
  v3 = sub_1976C3964();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1976C3BC8;
}

uint64_t sub_1976C3C00(uint64_t a1, uint64_t a2)
{

  return sub_1976C341C(v2, v2, a1, a2);
}

const char *sub_1976C3C48@<X0>(uint64_t a1@<X1>, _DWORD *a3@<X8>, uint64_t x0_0@<X0>)
{
  v6 = sub_197646D50(x0_0, a1);
  v7 = sub_19774EFD0();
  v8 = sqlite3_exec(v6, (v7 + 32), 0, 0, 0);

  result = sub_1976469C4(v8, 0);
  if (!v4)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1976C3CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1976505D8(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    v8 = a4(a3);

    return v8;
  }

  return result;
}

uint64_t sub_1976C3D78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1976505D8(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v5)
  {
    a4(a3);
    v4 = sub_1976C8784(MEMORY[0x1E69E7CC0]);
  }

  return v4;
}

uint64_t sub_1976C3E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  result = sub_1976505D8(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v5)
  {
    a4(a3);
    sub_1976C897C(MEMORY[0x1E69E7CC0], a5);
  }

  return result;
}

unint64_t sub_1976C3EEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_19774F780();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1976C3F38(char a1)
{
  if (!a1)
  {
    return 0x4445525245464544;
  }

  if (a1 == 1)
  {
    return 0x54414944454D4D49;
  }

  return 0x564953554C435845;
}

unint64_t sub_1976C3FBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1976C3EEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1976C3FEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976C3F38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1976C4018(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  sub_19774F5B0();

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x54414944454D4D49;
    }

    else
    {
      v6 = 0x564953554C435845;
    }

    v7 = 0xE900000000000045;
  }

  else
  {
    v7 = 0xE800000000000000;
    v6 = 0x4445525245464544;
  }

  MEMORY[0x19A8E4C40](v6, v7);

  MEMORY[0x19A8E4C40](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1976C4184(0x204E49474542, 0xE600000000000000, a2, a3, 0xD000000000000012, 0x8000000197761D50, 0xD000000000000014, 0x8000000197761D70);
}

uint64_t sub_1976C4184(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_19764665C();
  v10 = qword_1ED6972C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_19774F360();
  v11 = sub_197646CE8();
  if ((v17 & 1) != 0 || v16 != v11)
  {
    v13 = *(v8 + 104);
    sub_19774F390();
  }

  else
  {
    sub_1976C30AC();
    if (v15)
    {
    }

    else
    {

      a3(v12);
      sub_1976C30AC();
    }
  }
}

uint64_t sub_1976C43D0(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = sub_1976497AC(39, 0xE100000000000000, a1, a2);
  MEMORY[0x19A8E4C40](v6);

  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_24_7();
  sub_1976C4184(0x4E494F5045564153, 0xEA00000000002054, a3, a4, 0x4E494F5045564153, 0xEA00000000002054, 0x4E494F5045564153, 0xEA00000000002054);
}

uint64_t sub_1976C44F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = sub_1976C30AC();
  if (!v4)
  {

    a4(v7);
    sub_1976C30AC();
  }

  return result;
}

void sub_1976C45EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_197646D50(a1, a2);

  sqlite3_interrupt(v2);
}

uint64_t (*sub_1976C463C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  return sub_1976C468C;
}

uint64_t sub_1976C468C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_197646D80(result, v4);
  }

  return result;
}

void sub_1976C46C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_8_8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_5();
    v19[2] = sub_1976C47BC;
    v19[3] = &block_descriptor_13;
    _Block_copy(v19);
    OUTLINED_FUNCTION_4_9();

    sub_197646D50(v7, v8);
    OUTLINED_FUNCTION_21_6();
    sqlite3_busy_handler(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_7_10();
    sub_19764781C(v12);
    v13 = *(v3 + 48);
    *(v3 + 48) = v5;
    _Block_release(v13);
    OUTLINED_FUNCTION_26_6();
  }

  else
  {
    sub_197646D50(0, a2);
    OUTLINED_FUNCTION_41_1();
    sqlite3_busy_handler(v14, v15, v16);
    *(v3 + 48) = 0;
    OUTLINED_FUNCTION_26_6();

    _Block_release(v17);
  }
}

uint64_t sub_1976C47BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void sub_1976C4820(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v13[4] = sub_1976C6C98;
    v13[5] = v5;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1976C4978;
    v13[3] = &block_descriptor_47;
    v6 = _Block_copy(v13);
    sub_197645CF4(a1, a2);

    v9 = sub_197646D50(v7, v8);
    sqlite3_trace_v2(v9, 1u, sub_1976C4A74, v6);
    sub_19764781C(a1);
    v10 = *(v2 + 56);
    *(v2 + 56) = v6;
    _Block_release(v10);
  }

  else
  {
    v11 = sub_197646D50(0, a2);
    sqlite3_trace_v2(v11, 0, 0, 0);
    v12 = *(v2 + 56);
    *(v2 + 56) = 0;

    _Block_release(v12);
  }
}

uint64_t sub_1976C4978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1976C49CC(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_19774F030();
  a2(v3);
}

uint64_t sub_1976C4A1C(int a1, uint64_t a2, sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v4 = sqlite3_expanded_sql(pStmt);
    if (v4)
    {
      v5 = v4;
      (*(a2 + 16))(a2, v4);
      sqlite3_free(v5);
    }
  }

  return 0;
}

void sub_1976C4A78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_8_8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_5();
    v19[2] = sub_1976C4C1C;
    v19[3] = &block_descriptor_6_0;
    _Block_copy(v19);
    OUTLINED_FUNCTION_4_9();

    sub_197646D50(v7, v8);
    OUTLINED_FUNCTION_21_6();
    sqlite3_update_hook(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_7_10();
    sub_19764781C(v12);
    v13 = *(v3 + 64);
    *(v3 + 64) = v5;
    _Block_release(v13);
    OUTLINED_FUNCTION_26_6();
  }

  else
  {
    sub_197646D50(0, a2);
    OUTLINED_FUNCTION_41_1();
    sqlite3_update_hook(v14, v15, v16);
    *(v3 + 64) = 0;
    OUTLINED_FUNCTION_26_6();

    _Block_release(v17);
  }
}

uint64_t sub_1976C4B74(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_1976C35F4(a1);
  v8 = sub_19774F020();
  v10 = v9;
  v11 = sub_19774F020();
  a5(v7, v8, v10, v11, v12, a4);
}

uint64_t sub_1976C4C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_1976C4C94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      return (*(result + 16))(result, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1976C4CB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_8_8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_5();
    v19[2] = sub_1976C4E04;
    v19[3] = &block_descriptor_12;
    _Block_copy(v19);
    OUTLINED_FUNCTION_4_9();

    sub_197646D50(v7, v8);
    OUTLINED_FUNCTION_21_6();
    sqlite3_commit_hook(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_7_10();
    sub_19764781C(v12);
    v13 = *(v3 + 72);
    *(v3 + 72) = v5;
    _Block_release(v13);
    OUTLINED_FUNCTION_26_6();
  }

  else
  {
    sub_197646D50(0, a2);
    OUTLINED_FUNCTION_41_1();
    sqlite3_commit_hook(v14, v15, v16);
    *(v3 + 72) = 0;
    OUTLINED_FUNCTION_26_6();

    _Block_release(v17);
  }
}

uint64_t sub_1976C4E04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_1976C4E54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_8_8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_5();
    v19[2] = sub_1976C4F50;
    v19[3] = &block_descriptor_18_3;
    _Block_copy(v19);
    OUTLINED_FUNCTION_4_9();

    sub_197646D50(v7, v8);
    OUTLINED_FUNCTION_21_6();
    sqlite3_rollback_hook(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_7_10();
    sub_19764781C(v12);
    v13 = *(v3 + 80);
    *(v3 + 80) = v5;
    _Block_release(v13);
    OUTLINED_FUNCTION_26_6();
  }

  else
  {
    sub_197646D50(0, a2);
    OUTLINED_FUNCTION_41_1();
    sqlite3_rollback_hook(v14, v15, v16);
    *(v3 + 80) = 0;
    OUTLINED_FUNCTION_26_6();

    _Block_release(v17);
  }
}

uint64_t sub_1976C4F50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1976C4F98(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  if (a4)
  {
    v12 = -1;
  }

  else
  {
    v12 = a3;
    if (a3 < 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_8_8();
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;
  v35 = sub_1976C600C;
  v36 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1976C567C;
  v34 = &block_descriptor_24_2;
  v14 = _Block_copy(&aBlock);

  a1 = sub_197646D50(v15, v16);
  if (v12 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = a1;
  if (a5)
  {
    v18 = 2049;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_19774EFD0();
  function_v2 = sqlite3_create_function_v2(v17, (v19 + 32), v12, v18, v14, sub_1976C5744, 0, 0, 0);

  a1 = sub_1976CF6C4(function_v2);
  if (!a2)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401C8, &qword_19775EDE8);
    aBlock = v14;
    _Block_copy(v14);
    sub_1976C5748(v11, a2, v12, &aBlock);
    _Block_release(v14);
    return __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

LABEL_12:
  v22 = a1;
  v23 = a3;
  aBlock = 0;
  v32 = 0xE000000000000000;
  v24 = a4;
  v25 = a2;
  sub_19774F5B0();

  OUTLINED_FUNCTION_22_8();
  aBlock = v27;
  v32 = v26;
  v28 = sub_1976CF798(v22, v25, v23, v24);
  MEMORY[0x19A8E4C40](v28);

  result = OUTLINED_FUNCTION_25_7("Fatal error", v29, v30, aBlock, v32, "AppIntents_SQLite/Connection.swift");
  __break(1u);
  return result;
}

uint64_t sub_1976C51F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  sub_1976C5270(a2, a3);
  a4(v6);

  sub_1976C5370();
  return sub_19764CAE4(v6, &unk_1EAF3FEB0, &unk_19775A8C0);
}

void sub_1976C5270(uint64_t result, uint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (result)
  {
    v3 = result;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1976A5958(0, result, 0);
    v4 = 0;
    v5 = v14;
    while (v3 != v4)
    {
      v11 = v4;
      sub_1976C5D90(&v11, a2, v12);
      v14 = v5;
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1976A5958((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      ++v4;
      *(v5 + 16) = v7 + 1;
      v8 = v5 + 40 * v7;
      v9 = v12[0];
      v10 = v12[1];
      *(v8 + 64) = v13;
      *(v8 + 32) = v9;
      *(v8 + 48) = v10;
      if (v3 == v4)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_1976C5370()
{
  OUTLINED_FUNCTION_65();
  sub_19774EF90();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_0();
  sub_19765079C(v1, v31);
  if (!v32)
  {
    sqlite3_result_null(v0);
    return sub_19764CAE4(v31, &unk_1EAF3FEB0, &unk_19775A8C0);
  }

  sub_19765079C(v31, v30);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
  v6 = OUTLINED_FUNCTION_5_11(v3, v4, v5, &type metadata for Blob);
  if (v6)
  {
    LODWORD(v9) = LODWORD(v27);
    v10 = *(*&v27 + 16);
    if (!(v10 >> 31))
    {
      sqlite3_result_blob(v0, (*&v27 + 32), v10, 0);

LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v30);
      return sub_19764CAE4(v31, &unk_1EAF3FEB0, &unk_19775A8C0);
    }

    __break(1u);
    goto LABEL_18;
  }

  v11 = OUTLINED_FUNCTION_5_11(v6, v7, v8, MEMORY[0x1E69E63B0]);
  if (v11)
  {
    sqlite3_result_double(v0, v27);
    goto LABEL_15;
  }

  v14 = OUTLINED_FUNCTION_5_11(v11, v12, v13, MEMORY[0x1E69E7360]);
  if (v14)
  {
    sqlite3_result_int64(v0, *&v27);
    goto LABEL_15;
  }

  if (OUTLINED_FUNCTION_5_11(v14, v15, v16, MEMORY[0x1E69E6158]))
  {
    sub_19774EF80();
    sub_19765D5E8();
    v9 = sub_19774F440();
    v17 = OUTLINED_FUNCTION_23_6();
    v18(v17);
    if (v9 >= 0xFFFFFFFF80000000)
    {
      if (v9 <= 0x7FFFFFFF)
      {
        if (qword_1ED697060 == -1)
        {
LABEL_14:
          v19 = qword_1ED697428;
          v20 = sub_19774EFD0();

          sqlite3_result_text(v0, (v20 + 32), v9, v19);

          goto LABEL_15;
        }

LABEL_20:
        swift_once();
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_19774F5B0();

  OUTLINED_FUNCTION_22_8();
  v28 = v23;
  v29 = v22;
  sub_19765079C(v1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  v24 = sub_19774EFB0();
  MEMORY[0x19A8E4C40](v24);

  result = OUTLINED_FUNCTION_25_7("Fatal error", v25, v26, v28, v29, "AppIntents_SQLite/Connection.swift");
  __break(1u);
  return result;
}

uint64_t sub_1976C567C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_1976C56EC(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

uint64_t sub_1976C5748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = sub_197692EA4(a1, a2, *(v4 + 88));
  swift_endAccess();
  if (v10)
  {
  }

  else
  {
    v11 = sub_19774EE40();
    OUTLINED_FUNCTION_11_7();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *(v5 + 88);
    sub_1976C62B8(v11, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v5 + 88) = v16[0];
    swift_endAccess();
  }

  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  v13 = sub_1976C58B8(v17, a1, a2);
  if (*v14)
  {
    sub_197677CC0(a4, v16);
    sub_1976C2F48(v16, a3);
  }

  (v13)(v17, 0);
  return swift_endAccess();
}

uint64_t (*sub_1976C58B8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1976C6950(v6, a2, a3);
  return sub_1976C592C;
}

void sub_1976C592C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1976C5978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  OUTLINED_FUNCTION_8_8();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_13_5();
  v19[2] = sub_1976C5B9C;
  v19[3] = &block_descriptor_30_1;
  v12 = _Block_copy(v19);

  v15 = sub_197646D50(v13, v14);
  OUTLINED_FUNCTION_23_6();
  v16 = sub_19774EFD0();
  collation_v2 = sqlite3_create_collation_v2(v15, (v16 + 32), 1, v12, sub_1976C5C7C, 0);

  sub_1976469C4(collation_v2, 0);
  if (!v5)
  {
    OUTLINED_FUNCTION_11_7();
    swift_beginAccess();
    _Block_copy(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + 96);
    sub_1976C63F4(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v6 + 96) = v20;
    swift_endAccess();
  }

  _Block_release(v12);
}

uint64_t sub_1976C5AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_19774F030();
  v6 = v5;
  v7 = sub_19774F030();
  v9 = a3(v4, v6, v7, v8);

  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976C5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_1976C5BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5)
  {
    v6 = *(a1 + 16);

    return v6();
  }

  else
  {
    result = sub_19774F710();
    __break(1u);
  }

  return result;
}

void *sub_1976C5C80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for Backup();
  swift_allocObject();
  sub_197659758(a1, a2);
  v11 = OUTLINED_FUNCTION_23_6();
  sub_197659758(v11, v12);

  return sub_1976CBA64(v5, a1, a2, a3, a4, a5);
}

const char *sub_1976C5D2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_197646D50(a1, a2);
  result = sqlite3_db_filename(v2, 0);
  if (result)
  {

    return sub_19774F020();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1976C5D90(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *(a2 + 8 * *a1);
    switch(sqlite3_value_type(v4))
    {
      case 1:
        v5 = sqlite3_value_int64(v4);
        v6 = MEMORY[0x1E69E7360];
        v7 = &off_1F0BBA840;
        goto LABEL_9;
      case 2:
        v13 = sqlite3_value_double(v4);
        *(a3 + 24) = MEMORY[0x1E69E63B0];
        *(a3 + 32) = &off_1F0BBA818;
        *a3 = v13;
        return;
      case 3:
        if (!sqlite3_value_text(v4))
        {
          goto LABEL_13;
        }

        v8 = sub_19774F030();
        *(a3 + 24) = MEMORY[0x1E69E6158];
        *(a3 + 32) = &off_1F0BBA858;
        *a3 = v8;
        *(a3 + 8) = v9;
        return;
      case 4:
        v10 = sqlite3_value_blob(v4);
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = v10;
        v12 = sqlite3_value_bytes(v4);
        v5 = sub_19764AFD4(v11, v12);
        v6 = &type metadata for Blob;
        v7 = &off_1F0BBA870;
LABEL_9:
        *(a3 + 24) = v6;
        *(a3 + 32) = v7;
        *a3 = v5;
        break;
      case 5:
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_19774F5B0();

    v14 = sub_19774F7C0();
    MEMORY[0x19A8E4C40](v14);

    sub_19774F710();
    __break(1u);
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1976C601C(uint64_t a1)
{
  v2 = sub_19774F920();

  return sub_1976C68F0(a1, v2);
}

unint64_t sub_1976C6060(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_19764EA74(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401B0, &unk_19775EDB0);
  result = sub_19774F6F0();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_19764EA74(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_19774F8A0();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1976C6840(v12, a2, a3, a1, v16);
  }

  return result;
}

_OWORD *sub_1976C6188(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1976C601C(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401E8, &qword_19775F040);
  if ((sub_19774F6F0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1976C601C(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_19774F8A0();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_0(v15);

    return sub_19766A150(a1, v15);
  }

  else
  {

    return sub_1976C6888(v10, a2, a1, v14);
  }
}

uint64_t sub_1976C62B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_19764EA74(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401F0, &qword_19775F048);
  if ((sub_19774F6F0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_19764EA74(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_19774F8A0();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1976C6840(v12, a2, a3, a1, v16);
  }
}

void sub_1976C63F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_19764EA74(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401E0, &unk_19775F030);
  if ((sub_19774F6F0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_19764EA74(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_19774F8A0();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;

    _Block_release(v18);
  }

  else
  {
    sub_1976C6840(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1976C6534()
{
  result = qword_1EAF401D0;
  if (!qword_1EAF401D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF401D0);
  }

  return result;
}

unint64_t sub_1976C658C()
{
  result = qword_1EAF401D8;
  if (!qword_1EAF401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF401D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17AppIntents_SQLite10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1976C65F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1976C664C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1976C66A8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1976C66E0(unsigned __int8 *a1, unsigned int a2)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1976C6768(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1976C6840(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1976C6888(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_19766A150(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1976C68F0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void (*sub_1976C6950(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1976C6C64(v6);
  v6[9] = sub_1976C6A48(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1976C69E8;
}

void sub_1976C69E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1976C6A48(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_19764EA74(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401F0, &qword_19775F048);
  if (sub_19774F6F0())
  {
    v15 = sub_19764EA74(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_19774F8A0();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_1976C6B88;
}

void sub_1976C6B88(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1976C6840(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1976A7960(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401F8, &qword_19775F050);
    sub_19774F700();
  }

  free(v1);
}

uint64_t (*sub_1976C6C64(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1976C6C8C;
}

unint64_t sub_1976C6CF4()
{
  result = qword_1EAF40208;
  if (!qword_1EAF40208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40208);
  }

  return result;
}

uint64_t sub_1976C6DD0(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19775A780;
  *(v2 + 56) = MEMORY[0x1E69E63B0];
  *(v2 + 64) = &off_1F0BBA818;
  *(v2 + 32) = a1;
  return 63;
}

uint64_t sub_1976C6E40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19775A780;
  *(v2 + 56) = &type metadata for Blob;
  *(v2 + 64) = &off_1F0BBA870;
  *(v2 + 32) = a1;

  return 63;
}

uint64_t sub_1976C6EBC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19775A780;
  *(v2 + 56) = MEMORY[0x1E69E7360];
  *(v2 + 64) = &off_1F0BBA840;
  *(v2 + 32) = a1 & 1;
  return 63;
}

uint64_t sub_1976C6F30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19775A780;
  *(v2 + 56) = MEMORY[0x1E69E7360];
  *(v2 + 64) = &off_1F0BBA840;
  *(v2 + 32) = a1;
  return 63;
}

uint64_t sub_1976C6FA0(uint64_t a1, unint64_t a2)
{
  sub_197677C68(a1, a2);

  return sub_1976C7A28(a1, a2);
}

uint64_t sub_1976C6FE0()
{
  v1 = v0;
  v2 = sub_19774EB80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 16) = xmmword_19775A780;
  *(v6 + 56) = v7;
  *(v6 + 64) = &off_1F0BBA858;
  if (qword_1EAF3FFB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_1EAF44038;
  v9 = sub_19774EB30();
  v10 = [v8 stringFromDate_];

  v11 = sub_19774EF50();
  v13 = v12;

  *(v6 + 32) = v11;
  *(v6 + 40) = v13;
  (*(v3 + 8))(v5, v2);
  return 63;
}

uint64_t sub_1976C71C0()
{
  v1 = sub_19774EBF0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, v0);
  return sub_1976C7AC0(v3);
}

uint64_t sub_1976C7278()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Expression(0, v2, v8, v9);
  (*(v4 + 16))(v7, v1, v2);
  WitnessTable = swift_getWitnessTable();
  sub_1976C7B70(v7, v10, WitnessTable, v0);
  v14[0] = v14[3];
  v14[1] = v14[4];
  v14[2] = v14[5];
  v12 = sub_19764EEC8();

  return v12;
}

uint64_t sub_1976C73F8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v4 = v3;
  v6 = HIBYTE(v5) & 0xF;
  v20 = v2;
  v21 = v5;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v22 = 0;
  v23 = v6;
  v7 = v3 + 32;

  v8 = 0;
  v9 = 0;
  for (i = 0xE000000000000000; ; i = v19)
  {
    result = sub_19774F040();
    if (!v12)
    {

      return v8;
    }

    v13 = result;
    v14 = v12;
    if (result != 63 || v12 != 0xE100000000000000)
    {
      result = sub_19774F7E0();
      if ((result & 1) == 0)
      {

        v17 = v14;
        goto LABEL_14;
      }
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v4 + 16))
    {
      goto LABEL_17;
    }

    sub_19765079C(v7 + 40 * v9, &v18);
    v13 = sub_1976B57AC(&v18);
    v17 = v16;
    sub_1976B5CD0(&v18);
    ++v9;
LABEL_14:
    v18 = v8;
    v19 = i;

    MEMORY[0x19A8E4C40](v13, v17);

    v8 = v18;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1976C7578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a3;
  v26[1] = a6;
  v27 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_19774F420();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19775A780;
  v22 = *(v11 + 16);
  v29 = a1;
  v22(v14, a1, v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v9);
    *(v21 + 64) = 0;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
  }

  else
  {
    (*(a5 + 56))(AssociatedTypeWitness, a5);
    OUTLINED_FUNCTION_46();
    (*(v23 + 8))(v14, AssociatedTypeWitness);
    *(v21 + 56) = v15;
    *(v21 + 64) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
    (*(v17 + 32))(boxed_opaque_existential_1, v20, v15);
  }

  (*(v28 + 40))(63, 0xE100000000000000, v21, v27);
  return (*(v11 + 8))(v29, v9);
}

uint64_t sub_1976C7918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  *(inited + 56) = a1;
  *(inited + 64) = *(a2 + 8);
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_46();
  (*(v11 + 16))();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v12;
  sub_197649FEC(inited, a5);
  swift_setDeallocating();
  return sub_19764F1B0();
}

uint64_t sub_1976C7A28(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19775A780;
  *(v4 + 56) = &type metadata for Blob;
  *(v4 + 64) = &off_1F0BBA870;
  *(v4 + 32) = sub_1976CBED0(a1, a2);
  sub_197652DCC(a1, a2);
  return 63;
}

uint64_t sub_1976C7AC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19775A780;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = &off_1F0BBA858;
  *(v2 + 32) = sub_19774EBA0();
  *(v2 + 40) = v3;
  v4 = sub_19774EBF0();
  (*(*(v4 - 8) + 8))(a1, v4);
  return 63;
}

uint64_t sub_1976C7B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19775A780;
  v9 = *(a4 + 56);
  swift_getAssociatedTypeWitness();
  *(v8 + 56) = swift_getAssociatedTypeWitness();
  *(v8 + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  v10 = swift_checkMetadataState();
  v9(v10, a4);
  (*(a3 + 40))(63, 0xE100000000000000, v8, a2, a3);
  OUTLINED_FUNCTION_46();
  v12 = *(v11 + 8);

  return v12(a1, v10);
}

uint64_t sub_1976C7D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_19774F420();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  __swift_storeEnumTagSinglePayload(&v14 - v11, 1, 1, AssociatedTypeWitness);
  return sub_1976C7578(v12, a1, a2, a4, a5);
}

uint64_t sub_1976C7DFC()
{
  result = sub_1976497AC(34, 0xE100000000000000, 0x4449574F52, 0xE500000000000000);
  qword_1EAF44020 = result;
  *algn_1EAF44028 = v1;
  qword_1EAF44030 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t *sub_1976C7E44()
{
  if (qword_1EAF3FFB0 != -1)
  {
    swift_once();
  }

  return &qword_1EAF44020;
}

uint64_t sub_1976C7E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_4_10();
  v9 = (*(a7 + 40))(a5, a7);
  MEMORY[0x19A8E4C40](v9);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);

  return v11;
}

uint64_t sub_1976C7F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_4_10();
  v9 = (*(a7 + 40))(a5, a7);
  MEMORY[0x19A8E4C40](v9);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  sub_19774F420();

  return v11;
}

unint64_t sub_1976C7FD0()
{
  OUTLINED_FUNCTION_65();
  sub_19774F5B0();

  MEMORY[0x19A8E4C40](v1, v0);
  MEMORY[0x19A8E4C40](10535, 0xE200000000000000);
  return 0xD000000000000021;
}

uint64_t sub_1976C80C8(uint64_t a1, uint64_t a2)
{
  sub_19764EA8C();
  if (!v3)
  {
    return 0;
  }

  return a2;
}

uint64_t sub_1976C8188()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {

    return v2;
  }

  result = sub_197651DF8();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
LABEL_13:
    *(v1 + 48) = v2;

    return v2;
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_19764AD60(0, result, 0);
  v2 = v12;
  OUTLINED_FUNCTION_1_24();
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    result = sqlite3_column_name(*(v1 + 16), v5);
    if (!result)
    {
      break;
    }

    result = sub_19774F020();
    v6 = result;
    v8 = v7;
    v10 = *(v12 + 16);
    v9 = *(v12 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_19764AD60((v9 > 1), v10 + 1, 1);
    }

    *(v12 + 16) = v10 + 1;
    v11 = v12 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    if (v4 == v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v4 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1976C82E4(uint64_t a1)
{
  sub_19764D820(1);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);

  OUTLINED_FUNCTION_1_24();
  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v10 = v8;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v3 = *v12;
      v2 = v12[1];
      sub_19765079C(*(a1 + 56) + 40 * v11, &v22);
      v20 = v22;
      v21 = v23;
      v13 = v24;

      if (!v2)
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      v24 = v13;
      v14 = *(v1 + 16);
      v15 = sub_19774EFD0();
      v16 = sqlite3_bind_parameter_index(v14, (v15 + 32));

      if (v16 < 1)
      {
        goto LABEL_14;
      }

      v7 &= v7 - 1;

      sub_19764D870(&v22, v16);
      sub_19764CAE4(&v22, &unk_1EAF3FEB0, &unk_19775A8C0);
      v8 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++v8;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    sub_19774F5B0();

    MEMORY[0x19A8E4C40](v3, v2);
    result = OUTLINED_FUNCTION_2_17("Fatal error", v18, v19, 0xD000000000000015, 0x8000000197761FF0, "AppIntents_SQLite/Statement.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_1976C84EC(uint64_t a1)
{
  sub_19764D694(a1);
  v1 = sub_1976C8784(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_5_12();
  return v1;
}

uint64_t sub_1976C8530(uint64_t a1)
{
  sub_1976C82E4(a1);
  v1 = sub_1976C8784(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_5_12();
  return v1;
}

uint64_t sub_1976C8574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_19764D694(a1);
  sub_1976C897C(MEMORY[0x1E69E7CC0], a2);
}

uint64_t sub_1976C85C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1976C82E4(a1);
  sub_1976C897C(MEMORY[0x1E69E7CC0], a2);
}

uint64_t sub_1976C860C(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*sub_1976C8618(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_197651DF8();
  return sub_1976C8660;
}

void *sub_1976C8660(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*sub_1976C8680(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1976C8188();
  return sub_1976C86C8;
}

uint64_t sub_1976C86C8(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1976C8670(*a1);
  }

  sub_1976C8670(v2);
}

uint64_t sub_1976C8720(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  return result;
}

uint64_t (*sub_1976C8728(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = sub_197651D9C();
  a1[1] = v3;
  return sub_1976C8770;
}

void *sub_1976C8770(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1976C8784(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (*(a1 + 16))
  {
    sub_19764D694(a1);
    v5 = sub_1976C8784(MEMORY[0x1E69E7CC0]);

    if (!v2)
    {
      return v5;
    }
  }

  else
  {
    sub_19764D820(0);
    sub_19764665C();
    v6 = *(v1 + 24);
    OUTLINED_FUNCTION_1_24();
    swift_beginAccess();
    do
    {
      while (1)
      {
        v7 = qword_1ED6972C0;

        if (v7 != -1)
        {
          swift_once();
        }

        sub_19774F360();
        v8 = sub_197646CE8();
        if ((v14 & 1) != 0 || v13 != v8)
        {
          break;
        }

        v9 = sqlite3_step(*(v4 + 16));
        v10 = sub_1976469C4(v9, 0);

        if (v3)
        {
          return v4;
        }

        if (v10 != 100)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v6 + 104);
      sub_19774F390();

      if (v3)
      {
        return v4;
      }
    }

    while ((v15 & 1) != 0);
LABEL_16:
  }

  return v4;
}

BOOL sub_1976C8944()
{
  v1 = *(v0 + 24);

  return sub_197651C3C(v1, v0);
}

void sub_1976C897C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    sub_19764D694(a1);
    sub_1976C897C(MEMORY[0x1E69E7CC0], a2);
    OUTLINED_FUNCTION_5_12();
  }

  else
  {
    sub_19764D820(0);
    v6 = *(v2 + 24);

    sub_197651C3C(v6, v2);
    if (!v4)
    {
      v7 = sub_197651D9C();
      sub_19764ADEC(0, v7, a2);
    }
  }
}

uint64_t sub_1976C8A18()
{
  sub_19764D820(0);
}

uint64_t sub_1976C8A48@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1976C8A18();

  *a1 = v3;
  return result;
}

void *sub_1976C8ACC()
{
  v1 = sub_1976C925C(v0);

  return v1;
}

uint64_t sub_1976C8B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a3;
  v7 = sub_19774F420();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v30 = sub_19774EE10();
  v27 = a4;
  v25 = *(a4 + 16);
  v26 = a4 + 16;
  while (1)
  {
    v25(v29, v27);
    if (v4)
    {
      v17 = OUTLINED_FUNCTION_4_11();
      (*(v18 + 8))(v17);
    }

    if (__swift_getEnumTagSinglePayload(v10, 1, a2) == 1)
    {
      break;
    }

    (*(v11 + 32))(v16, v10, a2);
    (*(v11 + 16))(v14, v16, a2);
    sub_19774F190();
    sub_19774F180();
    (*(v11 + 8))(v16, a2);
  }

  v20 = OUTLINED_FUNCTION_4_11();
  (*(v21 + 8))(v20);
  (*(v23 + 8))(v10, v24);
  return v30;
}

void sub_1976C8DE4(uint64_t *a1@<X8>)
{
  sub_19764EA8C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1976C8E70()
{
  result = sub_1976C8188();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v3 == v2)
    {

      return v5;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v7 = *(v4 - 1);
    v6 = *v4;

    v8 = sub_1976497AC(34, 0xE100000000000000, v7, v6);
    v10 = v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1976C6060(v2, v8, v10, isUniquelyReferenced_nonNull_native);

    v4 += 2;
    ++v2;
  }

  __break(1u);
  return result;
}

const char *sub_1976C8F64()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  result = sqlite3_sql(*(v0 + 16));
  if (result)
  {
    return sub_19774F020();
  }

  __break(1u);
  return result;
}

double sub_1976C8FC4(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(a2, iCol);
  }

  __break(1u);
  return result;
}

uint64_t sub_1976C8FF4(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  iCol = sqlite3_column_text(a2, iCol);
  if (!iCol)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  return sub_19774F030();
}

BOOL sub_1976C9050(_BOOL8 iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(a2, iCol) != 0;
  }

  __break(1u);
  return iCol;
}

sqlite3_int64 sub_1976C90A0(sqlite3_int64 iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(a2, iCol);
  }

  __break(1u);
  return iCol;
}

uint64_t sub_1976C90D0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40210, qword_19775F138);
  result = swift_allocObject();
  *(result + 16) = sub_1976C93E8;
  *(result + 24) = v5;
  return result;
}

double sub_1976C916C@<D0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8 >= a3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_19775F120;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v8 + 1;
    sub_19764ADEC(v8, a2, a4);
  }

  return result;
}

uint64_t sub_1976C9218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976C90D0(*v1, v1[1]);
  *a1 = result;
  return result;
}

void *sub_1976C925C(uint64_t a1)
{
  sub_19764D820(0);

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    sub_19764EA8C();
    v5 = v4;
    if (!v4)
    {

      v16 = v2[3];
      if (v16 >= 2)
      {
        v17 = v16 >> 1;
        v15 = __OFSUB__(v17, v1);
        v18 = v17 - v1;
        if (v15)
        {
          goto LABEL_25;
        }

        v2[2] = v18;
      }

      return v2;
    }

    if (!v1)
    {
      v6 = v2[3];
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40238, &unk_19775F310);
      v9 = swift_allocObject();
      v10 = (_swift_stdlib_malloc_size(v9) - 32) / 8;
      v9[2] = v8;
      v9[3] = 2 * v10;
      v11 = (v9 + 4);
      v12 = v2[3];
      v13 = v12 >> 1;
      if (v2[2])
      {
        if (v9 != v2 || v11 >= &v2[v13 + 4])
        {
          memmove(v9 + 4, v2 + 4, 8 * v13);
        }

        v2[2] = 0;
      }

      i = (v11 + 8 * v13);
      v1 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - (v12 >> 1);

      v2 = v9;
    }

    v15 = __OFSUB__(v1--, 1);
    if (v15)
    {
      break;
    }

    *i = v5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1976C93F8()
{
  result = qword_1EAF40218;
  if (!qword_1EAF40218)
  {
    type metadata accessor for Statement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40218);
  }

  return result;
}

unint64_t sub_1976C944C(uint64_t a1)
{
  result = sub_1976C93F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1976C9478()
{
  result = qword_1EAF40220;
  if (!qword_1EAF40220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF40228, qword_19775F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40220);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_1976C9564(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40210, qword_19775F138);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1976C9774;
  *(v12 + 24) = v11;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_1976C93E8(&v17);
        if (*(&v18 + 1) == 1)
        {
          sub_19764CAE4(&v17, &qword_1EAF40230, &qword_19775F308);
          goto LABEL_10;
        }

        v15 = v18;
        v20 = v17;
        v21 = v18;
        v16 = v19;
        v22 = v19;
        *a2 = v17;
        *(a2 + 16) = v15;
        *(a2 + 32) = v16;
        a2 += 40;
        ++v13;
        if (v14 == a3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a1 = v12;
  }
}

uint64_t sub_1976C96B4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_19764D820(0);
  v7 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_19764EA8C();
        if (!v9)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v7++) = v9;
        if (v8 == a3)
        {
          v7 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_9:
    *a1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1976C977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = &off_1F0BBB748;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  v20[3] = MEMORY[0x1E69E6530];
  v20[4] = &off_1F0BBA8B8;
  v20[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  sub_19764E1F4(v21, inited + 32);
  sub_19764E1F4(v20, inited + 72);
  v17[0] = 32;
  v17[1] = 0xE100000000000000;

  MEMORY[0x19A8E4C40](a5, 0xE100000000000000);
  MEMORY[0x19A8E4C40](32, 0xE100000000000000);
  sub_197649FEC(inited, v17);

  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_0Tm(v17, v18);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_0(v17);
  v15 = sub_1976C215C(v10, v12, v14, 0, 0xE000000000000000);

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v15;
}

uint64_t sub_1976C994C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  sub_19764E1F4(v0, inited + 32);
  sub_19764E1F4(v0 + 40, inited + 72);
  sub_197649FEC(inited, v6);
  swift_setDeallocating();
  sub_19764F1B0();
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_0Tm(v6, v7);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t sub_1976C9A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = type metadata accessor for Expression(0, a7, a3, a4);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = result;
  a8[8] = result;
  a8[9] = &off_1F0BBB748;
  a8[4] = &off_1F0BBB748;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t sub_1976C9AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[3] = type metadata accessor for Expression(0, a5, a3, a4);
  a7[4] = &off_1F0BBB748;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v14 = *(a6 + 8);
  a7[8] = a5;
  a7[9] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 5);
  v16 = *(*(a5 - 8) + 32);

  return v16(boxed_opaque_existential_1, a4, a5);
}

uint64_t sub_1976C9B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = sub_19774F420();
  a8[3] = type metadata accessor for Expression(0, v16, v17, v18);
  a8[4] = &off_1F0BBB748;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  result = type metadata accessor for Expression(0, a7, v19, v20);
  a8[8] = result;
  a8[9] = &off_1F0BBB748;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t sub_1976C9C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a8@<X8>)
{
  v15 = sub_19774F420();
  result = type metadata accessor for Expression(0, v15, v16, v17);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = result;
  a8[8] = result;
  a8[9] = &off_1F0BBB748;
  a8[4] = &off_1F0BBB748;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t sub_1976C9C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v22 = a6;
  v12 = sub_19774F420();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v18 = type metadata accessor for Expression(0, v12, v16, v17);
  a7[3] = v18;
  a7[4] = &off_1F0BBB748;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  (*(v13 + 16))(v15, a4, v12);
  a7[8] = v18;
  a7[9] = &off_1F0BBB748;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1976C7578(v15, v18, WitnessTable, v22, (a7 + 5));
  return (*(v13 + 8))(a4, v12);
}

uint64_t sub_1976C9E54()
{
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_7_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10, v11);
  sub_1976C9AAC(v4, v3, v2, v8, v1, v0, v5);
}

uint64_t sub_1976C9FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  OUTLINED_FUNCTION_17_9();
  a9();
}

uint64_t sub_1976CA01C()
{
  OUTLINED_FUNCTION_17_9();
  v2 = v1;
  OUTLINED_FUNCTION_16_7();
  v3 = sub_19774F420();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  (*(v6 + 16))(&v12 - v4, v2);

  v7 = OUTLINED_FUNCTION_15_9();
  return sub_1976C9C8C(v7, v8, v9, v5, v0, v10);
}

uint64_t sub_1976CA214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_42();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31();
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, a21);
  *v30 = v28;
  v30[1] = v26;
  v30[2] = v24;
  v30[3] = v37;
  v30[8] = v37;
  v30[9] = &off_1F0BBB748;
  v30[4] = &off_1F0BBB748;
  v30[5] = v32;
  v30[6] = v34;
  v30[7] = v36;

  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976CA2D8()
{
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_7_11();
  v9 = v8();
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  v3[3] = v14;
  v3[8] = v14;
  v3[9] = &off_1F0BBB748;
  v3[4] = &off_1F0BBB748;
  v3[5] = v9;
  v3[6] = v11;
  v3[7] = v13;

  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976CA410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  OUTLINED_FUNCTION_7_11();
  a10(v11);
  v12 = OUTLINED_FUNCTION_6_11();
  a11(v12);
}

uint64_t sub_1976CA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_7_11();
  v21();
  v22 = OUTLINED_FUNCTION_6_11();
  a21(v22);

  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976CA958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), void (*a22)(uint64_t))
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_7_11();
  a21();
  v22 = OUTLINED_FUNCTION_6_11();
  a22(v22);

  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976CAA28()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  OUTLINED_FUNCTION_16_7();
  v2();
  v3 = OUTLINED_FUNCTION_15_9();
  v1(v3);

  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976CAFC8()
{
  OUTLINED_FUNCTION_10_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  type metadata accessor for Expression(0, v0, v4, v5);
  sub_1976CB11C();

  v6 = OUTLINED_FUNCTION_8_9();
  v14 = OUTLINED_FUNCTION_11_8(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  v22 = OUTLINED_FUNCTION_9_9(v14, v15, v16, v17, v18, v19, v20, v21, v26, v2, v1, v27, v28, v29);
  return OUTLINED_FUNCTION_12_9(v22, v23, v24, &off_1F0BBB748);
}

uint64_t sub_1976CB070()
{
  OUTLINED_FUNCTION_10_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F758, &qword_19775A800);
  v3 = sub_19774F420();
  type metadata accessor for Expression(0, v3, v4, v5);
  sub_1976CB11C();

  v6 = OUTLINED_FUNCTION_8_9();
  v14 = OUTLINED_FUNCTION_11_8(v6, v7, v8, v9, v10, v11, v12, v13, v2);
  v22 = OUTLINED_FUNCTION_9_9(v14, v15, v16, v17, v18, v19, v20, v21, v26, v1, v0, v27, v28, v29);
  return OUTLINED_FUNCTION_12_9(v22, v23, v24, &off_1F0BBB748);
}

unint64_t sub_1976CB11C()
{
  result = qword_1EAF3F418;
  if (!qword_1EAF3F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF3F758, &qword_19775A800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3F418);
  }

  return result;
}

uint64_t sub_1976CB188(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1976CB1C8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_8_9()
{

  return swift_getWitnessTable();
}

uint64_t sub_1976CB26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  if (v8)
  {
    sub_1976CB6C8(63, 0xE100000000000000, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
    sub_1976A7CC8();
    v9 = sub_19774EEB0();
    v11 = v10;

    MEMORY[0x19A8E4C40](539770664, 0xE400000000000000);
    MEMORY[0x19A8E4C40](v9, v11);

    MEMORY[0x19A8E4C40](41, 0xE100000000000000);
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A780;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    v17 = inited;

    sub_1976B5DF8(v14);
    sub_197660AF0(v17);
  }

  else
  {

    MEMORY[0x19A8E4C40](2703144, 0xE300000000000000);
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19775A780;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &off_1F0BBA858;
    *(v15 + 32) = a3;
    *(v15 + 40) = a4;
  }

  return v12;
}

uint64_t sub_1976CB4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  if (v9)
  {
    sub_1976CB6C8(63, 0xE100000000000000, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
    sub_1976A7CC8();
    v10 = sub_19774EEB0();
    v12 = v11;

    sub_19774F5B0();

    MEMORY[0x19A8E4C40](v10, v12);

    MEMORY[0x19A8E4C40](41, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    v18 = inited;

    sub_1976B5DF8(v14);
    sub_197660AF0(v18);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19775A850;
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = &off_1F0BBA858;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    *(v15 + 96) = v16;
    *(v15 + 104) = &off_1F0BBA858;
    *(v15 + 72) = a3;
    *(v15 + 80) = a4;
  }

  return 0x656D697466727473;
}

uint64_t sub_1976CB6C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_19774F160();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v6;
  }

  return result;
}

uint64_t sub_1976CB7E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateFunctions();
  if (qword_1EAF3FFB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1EAF44038;
  v5 = sub_19774EB30();
  v6 = [v4 stringFromDate_];

  v7 = sub_19774EF50();
  v9 = v8;

  v10 = sub_1976CB26C(a1, a2, v7, v9, MEMORY[0x1E69E7CC0]);

  return v10;
}

uint64_t sub_1976CB958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x19A8E4C40](a1, a2);
  MEMORY[0x19A8E4C40](41, 0xE100000000000000);

  return a4;
}

uint64_t sub_1976CB9BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = swift_allocObject();
  sub_1976CBA64(a1, a2, a3, a4, a5, a6);
  return v12;
}

sqlite3_backup *sub_1976CBA44()
{
  result = *(v0 + 32);
  if (result)
  {
    return sqlite3_backup_pagecount(result);
  }

  return result;
}

sqlite3_backup *sub_1976CBA54()
{
  result = *(v0 + 32);
  if (result)
  {
    return sqlite3_backup_remaining(result);
  }

  return result;
}

void *sub_1976CBA64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v6[3] = a1;
  v6[4] = 0;
  v6[2] = a4;
  pDest = sub_197646D50(a1, a2);
  v9 = sub_197646D50(pDest, v8);
  v10 = sub_19774EFD0();

  v11 = sub_19774EFD0();

  v12 = sqlite3_backup_init(pDest, (v10 + 32), v9, (v11 + 32));

  v7[4] = v12;
  if (v12 || (v15 = sub_197646D50(v13, v14), v16 = sqlite3_errcode(v15), , v17 = sub_1976CF6C4(v16), !v18))
  {
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    sub_1976C6CF4();
    swift_allocError();
    *v25 = v21;
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    swift_willThrow();
  }

  return v7;
}

sqlite3_backup *sub_1976CBC54(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1;
  }

  v3 = sqlite3_backup_step(*(v1 + 32), v2);
  if (v3 == 101)
  {
    return sub_1976CBD14();
  }

  v5 = v3;

  result = sub_1976CF6C4(v5);
  if (v6)
  {
    v9 = result;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    sub_1976C6CF4();
    swift_allocError();
    *v13 = v9;
    *(v13 + 8) = v10;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    return swift_willThrow();
  }

  return result;
}

sqlite3_backup *sub_1976CBD14()
{
  result = *(v0 + 32);
  if (result)
  {
    result = sqlite3_backup_finish(result);
    *(v0 + 32) = 0;
  }

  return result;
}

uint64_t sub_1976CBD38()
{
  sub_1976CBD14();

  return v0;
}

uint64_t sub_1976CBD64()
{
  sub_1976CBD38();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t get_enum_tag_for_layout_string_17AppIntents_SQLite6BackupC12DatabaseNameO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Backup.Pages(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Backup.Pages(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1976CBE44(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1976CBE60(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t *sub_1976CBE90()
{
  if (qword_1EAF3FFB8 != -1)
  {
    OUTLINED_FUNCTION_0_28(&qword_1EAF3FFB8);
  }

  return &qword_1EAF44038;
}

uint64_t sub_1976CBED0(uint64_t result, unint64_t a2)
{
  v3 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        sub_197677C68(result, a2);
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v3;
        v9 = v3 >> 32;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v5 = *(result + 16);
      v6 = *(result + 24);
      sub_197677C68(result, a2);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v5;
      v9 = v6;
LABEL_8:
      result = sub_1976CC67C(v8, v9, v7, v3, a2);
      break;
    case 3uLL:
      result = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1976CC5D4(result, v4, v3, a2);
      break;
  }

  return result;
}

void *sub_1976CBFBC@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (result)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v5 = result;
    switch(a3 >> 62)
    {
      case 1uLL:
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v7 = HIDWORD(a2) - a2;
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_11;
      case 2uLL:
        v9 = *(a2 + 16);
        v8 = *(a2 + 24);
        v7 = v8 - v9;
        if (!__OFSUB__(v8, v9))
        {
          goto LABEL_7;
        }

LABEL_11:
        __break(1u);
        break;
      case 3uLL:
        goto LABEL_9;
      default:
        v7 = BYTE6(a3);
LABEL_7:
        if (v7)
        {
          v4 = sub_19768F144(v7, 0);
          result = memcpy(v4 + 4, v5, v7);
        }

LABEL_9:
        *a4 = v4;
        return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1976CC084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976CBED0(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

void sub_1976CC0B4(uint64_t a1, uint64_t a2)
{
  if (qword_1EAF3FFB8 != -1)
  {
    OUTLINED_FUNCTION_0_28(&qword_1EAF3FFB8);
  }

  swift_beginAccess();
  v2 = qword_1EAF44038;
  v3 = sub_19774EF20();
  v4 = [v2 dateFromString_];

  if (v4)
  {
    sub_19774EB50();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1976CC184()
{
  if (qword_1EAF3FFB8 != -1)
  {
    OUTLINED_FUNCTION_0_28(&qword_1EAF3FFB8);
  }

  swift_beginAccess();
  v0 = qword_1EAF44038;
  v1 = sub_19774EB30();
  v2 = [v0 stringFromDate_];

  v3 = sub_19774EF50();
  return v3;
}

uint64_t sub_1976CC250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976CC184();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1976CC278()
{
  result = sub_1976CC298();
  qword_1EAF44038 = result;
  return result;
}

id sub_1976CC298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40248, &qword_19775F498);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_19774EC20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1976CC75C(0xD000000000000019, 0x8000000197762170, v7);
  sub_19774EC00();
  v8 = sub_19774EC10();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_19774EC30();
  v9 = sub_19774EC50();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    v10 = sub_19774EC40();
    (*(*(v9 - 8) + 8))(v2, v9);
  }

  [v7 setTimeZone_];

  return v7;
}

uint64_t sub_1976CC4B0@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F8, &qword_19775AA70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_19774EB90();
  v7 = sub_19774EBF0();
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result != 1)
  {
    return (*(*(v7 - 8) + 32))(a3, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1976CC5AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976CC59C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1976CC5D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  sub_1976CBFBC(&v9, a3, a4, &v8);
  result = sub_197652DCC(a3, a4);
  if (!v4)
  {
    return v8;
  }

  return result;
}

char *sub_1976CC67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_19774E900();
  v11 = result;
  if (result)
  {
    result = sub_19774E920();
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

  sub_19774E910();
  sub_1976CBFBC(v11, a4, a5, &v12);
  result = sub_197652DCC(a4, a5);
  if (!v5)
  {
    return v12;
  }

  return result;
}

void sub_1976CC75C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_19774EF20();

  [a3 setDateFormat_];
}

unint64_t sub_1976CC7C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_1_27();
      sub_19774F5B0();

      OUTLINED_FUNCTION_2_20();
      v15 = v11;
      v12 = OUTLINED_FUNCTION_0_29();
      MEMORY[0x19A8E4C40](v12);
      MEMORY[0x19A8E4C40](0x6C6F63206E692060, 0xED000020736E6D75);
      v13 = MEMORY[0x19A8E4D60](a3, MEMORY[0x1E69E6158]);
      MEMORY[0x19A8E4C40](v13);

      return v15;
    case 2:
      OUTLINED_FUNCTION_1_27();
      sub_19774F5B0();

      v15 = 0xD000000000000012;
      v7 = OUTLINED_FUNCTION_0_29();
      MEMORY[0x19A8E4C40](v7);
      MEMORY[0x19A8E4C40](0xD000000000000018, 0x80000001977621E0);
      v8 = MEMORY[0x19A8E4D60](a3, MEMORY[0x1E69E6158]);
      MEMORY[0x19A8E4C40](v8);

      v5 = 41;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_1_27();
      sub_19774F5B0();

      OUTLINED_FUNCTION_2_20();
      v15 = v9 + 18;
      v10 = OUTLINED_FUNCTION_0_29();
      MEMORY[0x19A8E4C40](v10);
      v5 = 96;
LABEL_5:
      v6 = 0xE100000000000000;
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_1_27();
      sub_19774F5B0();

      v15 = 0x2068637573206F4ELL;
      v5 = OUTLINED_FUNCTION_0_29();
LABEL_6:
      MEMORY[0x19A8E4C40](v5, v6);
      return v15;
  }
}

uint64_t sub_1976CC9D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1976CCA14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1976CCA6C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_19774F230();
  if (!v19)
  {
    return sub_19774F150();
  }

  v41 = v19;
  v45 = sub_19774F6C0();
  v32 = sub_19774F6D0();
  sub_19774F670();
  result = sub_19774F220();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_19774F250();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_19774F6B0();
      result = sub_19774F240();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1976CCE88(void *a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x19A8E4C40](40, 0xE100000000000000);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  v6 = *(v5 + 8);
  v7 = v6(v4, v5);
  v9 = v8;

  MEMORY[0x19A8E4C40](v7, v9);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  v6(v4, v5);

  return a2;
}

unint64_t sub_1976CCF84(char a1)
{
  result = 7561825;
  switch(a1)
  {
    case 1:
      result = 0x646E756F72;
      break;
    case 2:
      result = 0x6D6F646E6172;
      break;
    case 3:
      result = 0x6C626D6F646E6172;
      break;
    case 4:
      result = 0x626F6C626F72657ALL;
      break;
    case 5:
      result = 0x6874676E656CLL;
      break;
    case 6:
      v3 = 1702326124;
      goto LABEL_17;
    case 7:
      v3 = 1701867637;
LABEL_17:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 8:
      result = 0x6D6972746CLL;
      break;
    case 9:
      result = 0x6D69727472;
      break;
    case 10:
      result = 1835627124;
      break;
    case 11:
      result = 0x6563616C706572;
      break;
    case 12:
      result = 0x727473627573;
      break;
    case 13:
      result = 1162561868;
      break;
    case 14:
      result = 20041;
      break;
    case 15:
      result = 1112493127;
      break;
    case 16:
      result = 0x484354414DLL;
      break;
    case 17:
      result = 0x505845474552;
      break;
    case 18:
      result = 0x4554414C4C4F43;
      break;
    case 19:
      result = 0x6C6C756E6669;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1976CD134(void *a1, char a2)
{
  v3 = sub_1976CCF84(a2);
  sub_1976B53EC(a1, v3, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_1976CD1A4(uint64_t a1, char a2)
{
  v3 = sub_1976CCF84(a2);
  v5 = v4;
  sub_197649FEC(a1, v9);
  sub_1976B53EC(v9, v3, v5);
  v7 = v6;

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v7;
}

uint64_t sub_1976CD238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_35_6(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11[0], v11[1], v11[2], v11[3], v11[4]);
  OUTLINED_FUNCTION_46();
  (*(v8 + 16))();
  swift_getAssociatedTypeWitness();
  sub_1976CD134(v11, 0);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v11);
  return OUTLINED_FUNCTION_1_21();
}

uint64_t sub_1976CD2D4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_39_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  if (a2)
  {
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_14_9(inited, xmmword_19775A780);
    OUTLINED_FUNCTION_42_5();
    v5();
    OUTLINED_FUNCTION_51(inited, v9);
  }

  else
  {
    v6 = swift_initStackObject();
    OUTLINED_FUNCTION_14_9(v6, xmmword_19775A850);
    OUTLINED_FUNCTION_42_5();
    v7();
    v6[6].n128_u64[0] = MEMORY[0x1E69E6530];
    v6[6].n128_u64[1] = &off_1F0BBA8B8;
    v6[4].n128_u64[1] = v2;
    OUTLINED_FUNCTION_51(v6, v9);
  }

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_project_boxed_opaque_existential_0Tm(v9, v9[3]);
  OUTLINED_FUNCTION_24_8();
  sub_1976B5D38();
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return OUTLINED_FUNCTION_1_21();
}

void sub_1976CD43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_61();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_0();
  v10 = v9 - v8;
  if (v11)
  {
    OUTLINED_FUNCTION_42_5();
    v12();
    OUTLINED_FUNCTION_24_8();
    sub_1976B5D38();
    OUTLINED_FUNCTION_13_6();
    (*(v6 + 8))(v10, a3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_14_9(inited, xmmword_19775A850);
    OUTLINED_FUNCTION_42_5();
    v14();
    inited[6].n128_u64[0] = MEMORY[0x1E69E6530];
    inited[6].n128_u64[1] = &off_1F0BBA8B8;
    inited[4].n128_u64[1] = v3;
    OUTLINED_FUNCTION_51(inited, v15);
    swift_setDeallocating();
    sub_19764F1B0();
    __swift_project_boxed_opaque_existential_0Tm(v15, v15[3]);
    OUTLINED_FUNCTION_24_8();
    sub_1976B5D38();
    OUTLINED_FUNCTION_13_6();
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1976CD5D8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v2 = MEMORY[0x1E69E7CC0];

  return sub_1976CD1A4(v2, 2);
}

uint64_t sub_1976CD65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_51(MEMORY[0x1E69E7CC0], v8);
  sub_1976CCE88(v8, a4, a5);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return OUTLINED_FUNCTION_1_21();
}

void sub_1976CD7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  OUTLINED_FUNCTION_61();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_0();
  v19 = (v18 - v17);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    *(inited + 56) = a2;
    v22 = OUTLINED_FUNCTION_26_7(inited, *(a3 + 8));
    (*(v15 + 16))(v22, v10, a2);
    v30[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40250, &unk_19775F5D0);
    OUTLINED_FUNCTION_9_10();
    sub_19764B5C8(v23, &qword_1EAF40250, &unk_19775F5D0, v24);
    v25 = sub_19774F0A0();
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &off_1F0BBA860;
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    OUTLINED_FUNCTION_51(inited, v30);
    swift_setDeallocating();
    sub_19764F1B0();
    v27 = v31;
    v28 = v32;
    v29 = __swift_project_boxed_opaque_existential_0Tm(v30, v31);
    a6(v29, a4, a5, v27, v28);
    OUTLINED_FUNCTION_13_6();
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    (*(v15 + 16))(v19, v10, a2);
    a6(v19, a4, a5, a2, *(a3 + 8));
    OUTLINED_FUNCTION_13_6();
    (*(v15 + 8))(v19, a2);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1976CDA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    *(inited + 56) = a2;
    OUTLINED_FUNCTION_26_7(inited, *(a3 + 8));
    OUTLINED_FUNCTION_46();
    (*(v7 + 16))();
    v14[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40250, &unk_19775F5D0);
    OUTLINED_FUNCTION_9_10();
    sub_19764B5C8(v8, &qword_1EAF40250, &unk_19775F5D0, v9);
    v10 = sub_19774F0A0();
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &off_1F0BBA860;
    *(inited + 72) = v10;
    *(inited + 80) = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A780;
    *(inited + 56) = a2;
    OUTLINED_FUNCTION_26_7(inited, *(a3 + 8));
    OUTLINED_FUNCTION_46();
    (*(v12 + 16))();
  }

  OUTLINED_FUNCTION_51(inited, v14);
  swift_setDeallocating();
  sub_19764F1B0();
  __swift_project_boxed_opaque_existential_0Tm(v14, v14[3]);
  sub_1976B5D38();
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v14);
  return OUTLINED_FUNCTION_1_21();
}

uint64_t sub_1976CDC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  OUTLINED_FUNCTION_61();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_0();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, v5, a1);
  a5(v16, a3, a4, a1, *(a2 + 8));
  OUTLINED_FUNCTION_6();
  (*(v12 + 8))(v16, a1);
  return OUTLINED_FUNCTION_1_21();
}

uint64_t sub_1976CDD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (a4)
  {

    sub_19774F5B0();

    v30[0] = 40;
    v30[1] = 0xE100000000000000;
    v13 = (*(a6 + 24))(a5, a6);
    MEMORY[0x19A8E4C40](v13);

    MEMORY[0x19A8E4C40](0xD000000000000011, 0x8000000197762220);
    v14 = 40;
    (*(a6 + 32))(a5, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    inited = swift_initStackObject();
    v16 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_19775A850;
    *(inited + 56) = v16;
    *(inited + 64) = &off_1F0BBA858;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 96) = v16;
    *(inited + 104) = &off_1F0BBA858;
    *(inited + 72) = a3;
    *(inited + 80) = a4;

    sub_1976B5D3C(inited);
  }

  else
  {
    v18 = *(a6 + 8);
    v30[3] = a5;
    v30[4] = v18;
    __swift_allocate_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_46();
    (*(v19 + 16))();
    v29[3] = MEMORY[0x1E69E6158];
    v29[4] = &off_1F0BBA860;
    v29[0] = a1;
    v29[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_19775A850;
    sub_19764E1F4(v30, v20 + 32);
    sub_19764E1F4(v29, v20 + 72);
    OUTLINED_FUNCTION_35_4();
    v26[0] = v21;
    v26[1] = v22;

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_71_2();
    sub_197649FEC(v20, v26);

    v23 = v27;
    v24 = v28;
    __swift_project_boxed_opaque_existential_0Tm(v26, v27);
    (*(v24 + 8))(v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_33();
    v14 = a7();

    swift_setDeallocating();
    sub_19764F1B0();
    __swift_destroy_boxed_opaque_existential_0(v29);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  return v14;
}

uint64_t sub_1976CE060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  if (a5)
  {
    v13 = *(a7 + 8);
    v74 = a6;
    v75 = v13;
    __swift_allocate_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_46();
    (*(v14 + 16))();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v72 = &off_1F0BBB748;
    v68 = a1;
    v69 = a2;
    v70 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    sub_19764E1F4(v73, inited + 32);
    sub_19764E1F4(&v68, inited + 72);

    OUTLINED_FUNCTION_40_4();
    sub_197649FEC(inited, v16);
    swift_setDeallocating();
    sub_19764F1B0();
    __swift_project_boxed_opaque_existential_0Tm(&v64, v66);
    v17 = OUTLINED_FUNCTION_2_21();
    v18(v17);
    OUTLINED_FUNCTION_38_6();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0(&v64);
    __swift_destroy_boxed_opaque_existential_0(&v68);
    __swift_destroy_boxed_opaque_existential_0(v73);
    v73[0] = 40;
    v73[1] = 0xE100000000000000;
    v21 = OUTLINED_FUNCTION_110();
    MEMORY[0x19A8E4C40](v21);

    OUTLINED_FUNCTION_27_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v22 = swift_initStackObject();
    v23 = MEMORY[0x1E69E6158];
    *(v22 + 16) = xmmword_19775A780;
    *(v22 + 56) = v23;
    *(v22 + 64) = &off_1F0BBA858;
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;
    v73[0] = v20;
    sub_1976B5D3C(v22);
  }

  else
  {
    v25 = *(a7 + 8);
    v74 = a6;
    v75 = v25;
    __swift_allocate_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_46();
    (*(v26 + 16))();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v72 = &off_1F0BBB748;
    v68 = a1;
    v69 = a2;
    v70 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_19775A850;
    sub_19764E1F4(v73, v27 + 32);
    sub_19764E1F4(&v68, v27 + 72);
    OUTLINED_FUNCTION_35_4();
    v64 = v28;
    v65 = v29;

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_48_4(v30, v31, v32, v33, v34, v35, v36, v37, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);

    v38 = v66;
    v39 = v67;
    __swift_project_boxed_opaque_existential_0Tm(&v64, v66);
    (*(v39 + 8))(v38, v39);
    OUTLINED_FUNCTION_19_7();
    __swift_destroy_boxed_opaque_existential_0(&v64);
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_33();
    a8();
    OUTLINED_FUNCTION_38_6();

    swift_setDeallocating();
    sub_19764F1B0();
    __swift_destroy_boxed_opaque_existential_0(&v68);
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  return OUTLINED_FUNCTION_110();
}

void sub_1976CE400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12 = *(a4 + 8);
  v33[3] = a3;
  v33[4] = v12;
  __swift_allocate_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_46();
  (*(v13 + 16))();
  v32[3] = MEMORY[0x1E69E6158];
  v32[4] = &off_1F0BBA860;
  v32[0] = a1;
  v32[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v15 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v15, &inited[2]);
  sub_19764E1F4(v32, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_35_4();
  v29 = v16;
  v30 = v17;

  MEMORY[0x19A8E4C40](a5, a6);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_50_5(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30);

  __swift_project_boxed_opaque_existential_0Tm(&v29, v31);
  v26 = OUTLINED_FUNCTION_2_21();
  v27(v26);
  __swift_destroy_boxed_opaque_existential_0(&v29);
  OUTLINED_FUNCTION_33();
  a7();
  OUTLINED_FUNCTION_19_7();

  swift_setDeallocating();
  sub_19764F1B0();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_20_6();
}

void sub_1976CE5B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *(a4 + 8);
  v29[3] = a3;
  v29[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_46();
  (*(v9 + 16))();
  v28[3] = &type metadata for Collation;
  v28[4] = &off_1F0BBBBC0;
  v28[0] = a1;
  v28[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v11 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v11, &inited[2]);
  sub_19764E1F4(v28, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_35_4();
  v25 = v12;
  v26 = v13;
  sub_1976B35AC(a1, a2);
  MEMORY[0x19A8E4C40](0x4554414C4C4F43, 0xE700000000000000);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_50_5(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26);

  __swift_project_boxed_opaque_existential_0Tm(&v25, v27);
  v22 = OUTLINED_FUNCTION_2_21();
  v23(v22);
  __swift_destroy_boxed_opaque_existential_0(&v25);
  OUTLINED_FUNCTION_33();
  a5();
  OUTLINED_FUNCTION_19_7();

  swift_setDeallocating();
  sub_19764F1B0();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_20_6();
}

uint64_t sub_1976CE784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, unint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_12_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  *(inited + 56) = a5;
  OUTLINED_FUNCTION_26_7(inited, *(a6 + 8));
  OUTLINED_FUNCTION_46();
  (*(v15 + 16))();
  v16 = MEMORY[0x1E69E6158];
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 104) = &off_1F0BBA860;
  *(inited + 72) = v9;
  *(inited + 80) = v8;
  *(inited + 136) = v16;
  *(inited + 144) = &off_1F0BBA860;
  *(inited + 112) = v7;
  *(inited + 120) = a4;

  OUTLINED_FUNCTION_51(inited, v21);
  swift_setDeallocating();
  sub_19764F1B0();
  v17 = v22;
  v18 = v23;
  v19 = __swift_project_boxed_opaque_existential_0Tm(v21, v22);
  a7(v19, 0x6563616C706572, 0xE700000000000000, v17, v18);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return OUTLINED_FUNCTION_1_21();
}

void sub_1976CE8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_163();
  a57 = v59;
  a58 = v60;
  v62 = v61;
  v63 = v58;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  if (v69)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    *(inited + 56) = v67;
    v75 = OUTLINED_FUNCTION_26_7(inited, *(v65 + 8));
    (*(*(v67 - 8) + 16))(v75, v63, v67);
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 104) = &off_1F0BBA8B8;
    *(inited + 72) = v73;
    OUTLINED_FUNCTION_51(inited, &a28);
  }

  else
  {
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_19775A7E0;
    *(v76 + 56) = v67;
    v77 = OUTLINED_FUNCTION_26_7(v76, *(v65 + 8));
    (*(*(v67 - 8) + 16))(v77, v63, v67);
    v78 = MEMORY[0x1E69E6530];
    *(v76 + 96) = MEMORY[0x1E69E6530];
    *(v76 + 104) = &off_1F0BBA8B8;
    *(v76 + 72) = v73;
    *(v76 + 136) = v78;
    *(v76 + 144) = &off_1F0BBA8B8;
    *(v76 + 112) = v71;
    OUTLINED_FUNCTION_51(v76, &a28);
  }

  swift_setDeallocating();
  sub_19764F1B0();
  v79 = a31;
  v80 = a32;
  v81 = __swift_project_boxed_opaque_existential_0Tm(&a28, a31);
  v62(v81, 0x727473627573, 0xE600000000000000, v79, v80);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&a28);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_162();
}

uint64_t sub_1976CEA8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v5 = __OFSUB__(a2, result);
  v6 = a2 - result;
  if (!v5)
  {
    return a5(result, v6, 0, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1976CEF5C@<X0>(uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 56);
  swift_getAssociatedTypeWitness();
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = swift_checkMetadataState();
  return v6(v7, a3);
}

uint64_t sub_1976CF048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a5)
  {
    v12 = MEMORY[0x1E69E6158];
    v75 = MEMORY[0x1E69E6158];
    v76 = &off_1F0BBA860;
    v73 = a6;
    v74 = a7;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v72 = &off_1F0BBB748;
    v68 = a1;
    v69 = a2;
    v70 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    v14 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
    sub_19764E1F4(v14, &inited[2]);
    sub_19764E1F4(&v68, &inited[4].n128_i64[1]);

    OUTLINED_FUNCTION_40_4();
    sub_197649FEC(inited, v15);
    swift_setDeallocating();
    sub_19764F1B0();
    __swift_project_boxed_opaque_existential_0Tm(&v65, v67);
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    OUTLINED_FUNCTION_38_6();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0(&v65);
    OUTLINED_FUNCTION_44_5();
    v73 = 40;
    v74 = 0xE100000000000000;
    v20 = OUTLINED_FUNCTION_110();
    MEMORY[0x19A8E4C40](v20);

    OUTLINED_FUNCTION_27_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_19775A780;
    *(v21 + 56) = v12;
    *(v21 + 64) = &off_1F0BBA858;
    *(v21 + 32) = a4;
    *(v21 + 40) = a5;
    v73 = v19;
    sub_1976B5D3C(v21);
  }

  else
  {
    v75 = MEMORY[0x1E69E6158];
    v76 = &off_1F0BBA860;
    v73 = a6;
    v74 = a7;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v72 = &off_1F0BBB748;
    v68 = a1;
    v69 = a2;
    v70 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v22 = swift_initStackObject();
    v23 = OUTLINED_FUNCTION_93(v22, xmmword_19775A850);
    sub_19764E1F4(v23, &v22[2]);
    sub_19764E1F4(&v68, &v22[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v65 = v24;
    v66 = v25;

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_48_4(v26, v27, v28, v29, v30, v31, v32, v33, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);

    __swift_project_boxed_opaque_existential_0Tm(&v65, v67);
    v34 = OUTLINED_FUNCTION_5_14();
    v35(v34);
    OUTLINED_FUNCTION_19_7();
    __swift_destroy_boxed_opaque_existential_0(&v65);
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_33();
    sub_1976BA5E0(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_38_6();

    swift_setDeallocating();
    sub_19764F1B0();
    OUTLINED_FUNCTION_44_5();
  }

  return OUTLINED_FUNCTION_110();
}

uint64_t sub_1976CF334(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v12 = OUTLINED_FUNCTION_36_4(inited, xmmword_19775A850);
  inited[3].n128_u64[1] = OUTLINED_FUNCTION_92_0(v12, v13, v14, v15);
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = a5;
  inited[6].n128_u64[1] = *(a6 + 8);
  __swift_allocate_boxed_opaque_existential_1(&inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_46();
  (*(v16 + 16))();

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_18_8();
  sub_19764F1B0();
  return OUTLINED_FUNCTION_16();
}

uint64_t sub_1976CF430(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v15 = OUTLINED_FUNCTION_36_4(inited, xmmword_19775A850);
  inited[3].n128_u64[1] = OUTLINED_FUNCTION_92_0(v15, v16, v17, v18);
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, a7, v19, v20);
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_18_8();
  sub_19764F1B0();
  return OUTLINED_FUNCTION_16();
}

uint64_t sub_1976CF520(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  OUTLINED_FUNCTION_12_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v13 = OUTLINED_FUNCTION_36_4(inited, xmmword_19775A850);
  v17 = OUTLINED_FUNCTION_92_0(v13, v14, v15, v16);
  inited[2].n128_u64[0] = v8;
  inited[2].n128_u64[1] = v7;
  inited[3].n128_u64[0] = v6;
  inited[3].n128_u64[1] = v17;
  inited[6].n128_u64[0] = v17;
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_18_8();
  sub_19764F1B0();
  return OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1976CCA6C(v10, va, v12, a4, a5, v11, a7, a8);
}

void OUTLINED_FUNCTION_32_6()
{

  JUMPOUT(0x19A8E4C40);
}

void OUTLINED_FUNCTION_50_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_197649FEC(v11, &a10);
}

const char *sub_1976CF6C4(unsigned int a1)
{
  if (qword_1ED697128 != -1)
  {
    swift_once();
  }

  v2 = sub_197646C0C(a1, qword_1ED6971E8);
  if (v2)
  {

    return 0;
  }

  v5 = sub_197646D50(v2, v3);
  result = sqlite3_errmsg(v5);
  if (result)
  {
    v4 = sub_19774F020();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976CF798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_19774F5B0();

    v9 = a1;
    MEMORY[0x19A8E4C40](10272, 0xE200000000000000);
    v5 = sub_1976C8F64();
    MEMORY[0x19A8E4C40](v5);

    MEMORY[0x19A8E4C40](0x3A65646F63282029, 0xE900000000000020);
    v6 = sub_19774F7C0();
    MEMORY[0x19A8E4C40](v6);

    MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  }

  else
  {
    v9 = a1;

    MEMORY[0x19A8E4C40](0x203A65646F632820, 0xE800000000000000);
    v7 = sub_19774F7C0();
    MEMORY[0x19A8E4C40](v7);

    MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  }

  return v9;
}

uint64_t sub_1976CF928(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1976CF968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1976CF9B8(uint64_t a1, unint64_t a2)
{
  switch(a2)
  {
    case 0uLL:
      return 0x5952414E4942;
    case 1uLL:
      return 0x455341434F4ELL;
    case 2uLL:
      return 0x4D49525452;
  }

  return sub_1976497AC(34, 0xE100000000000000, a1, a2);
}

uint64_t sub_1976CFA3C(uint64_t a1, unint64_t a2)
{
  switch(a2)
  {
    case 0uLL:
      return 0x5952414E4942;
    case 1uLL:
      return 0x455341434F4ELL;
    case 2uLL:
      return 0x4D49525452;
  }

  return sub_1976497AC(34, 0xE100000000000000, a1, a2);
}

uint64_t get_enum_tag_for_layout_string_17AppIntents_SQLite9CollationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1976CFAFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1976CFB58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1976CFBB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19775A780;
  if (a2)
  {
    v5 = &off_1F0BBA858;
    v6 = MEMORY[0x1E69E6158];
  }

  else
  {
    a1 = 0;
    v6 = 0;
    v5 = 0;
    *(v4 + 48) = 0;
  }

  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;
  return 63;
}

uint64_t sub_1976CFC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_1976D010C(a1, a2, a3, a4, a5);
  if (v5 || (LOBYTE(a4) = v11, v11 != 2))
  {
  }

  else
  {
    sub_1976C1B74();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return a4 & 1;
}

uint64_t sub_1976CFD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1976D03C8();
  v10 = v9;
  if (v5 || (v8 & 1) == 0)
  {
  }

  else
  {
    sub_1976C1B74();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 3;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_1976CFDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1976D03C8();
  if (v5 || (v8 & 1) == 0)
  {
  }

  sub_1976C1B74();
  swift_allocError();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = 0;
  *(v9 + 24) = 3;
  return swift_willThrow();
}

uint64_t sub_1976CFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_1976D0674(a1, a2, a3, a4, a5);
  if (v5)
  {
  }

  else if (v12)
  {
    a4 = v11;
  }

  else
  {
    sub_1976C1B74();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    swift_willThrow();
  }

  return a4;
}

uint64_t sub_1976CFF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;

  sub_1976D0930(a1, a2, a4, a5, v14);
  if (v6)
  {
  }

  v16 = sub_19774EB80();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    sub_19764CAE4(v14, &qword_1EAF3F8F0, &qword_19775DA60);
    sub_1976C1B74();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0;
    *(v17 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(*(v16 - 8) + 32))(a6, v14, v16);
  }
}

uint64_t sub_1976D010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();
  v42 = a1;
  v9 = sub_19764ECD4(a1, a2, a4);
  if ((v10 & 1) == 0)
  {
    v25 = v9;
    swift_bridgeObjectRelease_n();
    v26 = v25;
    v27 = a4;
    v28 = a5;
    return sub_1976D0ED0(v26, v27, v28);
  }

  v38 = a5;

  v40 = a4;
  result = sub_19764ED9C(v11);
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v16 = result + 40;
  v41 = MEMORY[0x1E69E7CC0];
  v39 = result + 40;
LABEL_3:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = *(v17 - 1);
    v19 = *v17;

    MEMORY[0x19A8E4C40](v42, a2);
    v20 = sub_19774F060();

    if (v20)
    {
      v21 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19764AD60(0, *(v41 + 2) + 1, 1);
        v21 = v41;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_19764AD60((v22 > 1), v23 + 1, 1);
        v21 = v41;
      }

      ++v14;
      *(v21 + 2) = v23 + 1;
      v41 = v21;
      v24 = &v21[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v19;
      v16 = v39;
      goto LABEL_3;
    }

    v17 += 2;
    ++v14;
  }

  v29 = v41;
  v30 = *(v41 + 2);

  if (!v30)
  {

    v29 = sub_1976C0CB0(v40);
    v36 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v37 = v42;
    *(v37 + 8) = a2;
    *(v37 + 16) = v29;
    *(v37 + 24) = v36;
    return swift_willThrow();
  }

  if (v30 != 1)
  {
    v36 = 2;
    goto LABEL_22;
  }

  if (!*(v41 + 2))
  {
    goto LABEL_24;
  }

  v32 = *(v41 + 4);
  v31 = *(v41 + 5);

  v33 = sub_19764ECD4(v32, v31, v40);
  v35 = v34;

  if ((v35 & 1) == 0)
  {

    v26 = v33;
    v27 = v40;
    v28 = v38;
    return sub_1976D0ED0(v26, v27, v28);
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1976D03C8()
{
  OUTLINED_FUNCTION_40();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_bridgeObjectRetain_n();
  v39 = v9;
  v10 = sub_19764ECD4(v9, v7, v5);
  if ((v11 & 1) == 0)
  {
    v26 = v10;
    swift_bridgeObjectRelease_n();
LABEL_19:
    sub_1976D0F60(v26, v5, v3, v1);
LABEL_23:
    OUTLINED_FUNCTION_39();
    return;
  }

  v35 = v3;
  v36 = v1;

  v37 = v5;
  v13 = sub_19764ED9C(v12);
  v14 = 0;
  v15 = *(v13 + 16);
  v16 = v13 + 40;
  v38 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = *(v17 - 1);
    v18 = *v17;

    MEMORY[0x19A8E4C40](v39, v7);
    v20 = sub_19774F060();

    if (v20)
    {
      v21 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764AD60(0, *(v38 + 2) + 1, 1);
        v21 = v38;
      }

      v22 = v21;
      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_19764AD60((v23 > 1), v24 + 1, 1);
        v22 = v38;
      }

      ++v14;
      *(v22 + 2) = v24 + 1;
      v38 = v22;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v19;
      *(v25 + 5) = v18;
      v16 = v13 + 40;
      goto LABEL_3;
    }

    v17 += 2;
    ++v14;
  }

  v27 = v38;
  v28 = *(v38 + 2);

  if (!v28)
  {

    v27 = sub_1976C0CB0(v37);
    v33 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v34 = v39;
    *(v34 + 8) = v7;
    *(v34 + 16) = v27;
    *(v34 + 24) = v33;
    swift_willThrow();
    goto LABEL_23;
  }

  v5 = v37;
  if (v28 != 1)
  {
    v33 = 2;
    goto LABEL_22;
  }

  if (!*(v38 + 2))
  {
    goto LABEL_25;
  }

  v30 = *(v38 + 4);
  v29 = *(v38 + 5);

  v26 = sub_19764ECD4(v30, v29, v37);
  v32 = v31;

  v1 = v36;
  v3 = v35;
  if ((v32 & 1) == 0)
  {

    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1976D0674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();
  v42 = a1;
  v9 = sub_19764ECD4(a1, a2, a4);
  if ((v10 & 1) == 0)
  {
    v25 = v9;
    swift_bridgeObjectRelease_n();
    v26 = v25;
    v27 = a4;
    v28 = a5;
    return sub_1976D0FF4(v26, v27, v28);
  }

  v38 = a5;

  v40 = a4;
  result = sub_19764ED9C(v11);
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v16 = result + 40;
  v41 = MEMORY[0x1E69E7CC0];
  v39 = result + 40;
LABEL_3:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = *(v17 - 1);
    v19 = *v17;

    MEMORY[0x19A8E4C40](v42, a2);
    v20 = sub_19774F060();

    if (v20)
    {
      v21 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19764AD60(0, *(v41 + 2) + 1, 1);
        v21 = v41;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_19764AD60((v22 > 1), v23 + 1, 1);
        v21 = v41;
      }

      ++v14;
      *(v21 + 2) = v23 + 1;
      v41 = v21;
      v24 = &v21[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v19;
      v16 = v39;
      goto LABEL_3;
    }

    v17 += 2;
    ++v14;
  }

  v29 = v41;
  v30 = *(v41 + 2);

  if (!v30)
  {

    v29 = sub_1976C0CB0(v40);
    v36 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v37 = v42;
    *(v37 + 8) = a2;
    *(v37 + 16) = v29;
    *(v37 + 24) = v36;
    return swift_willThrow();
  }

  if (v30 != 1)
  {
    v36 = 2;
    goto LABEL_22;
  }

  if (!*(v41 + 2))
  {
    goto LABEL_24;
  }

  v32 = *(v41 + 4);
  v31 = *(v41 + 5);

  v33 = sub_19764ECD4(v32, v31, v40);
  v35 = v34;

  if ((v35 & 1) == 0)
  {

    v26 = v33;
    v27 = v40;
    v28 = v38;
    return sub_1976D0FF4(v26, v27, v28);
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1976D0930(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  swift_bridgeObjectRetain_n();
  v43 = a1;
  v11 = sub_19764ECD4(a1, a2, a4);
  if ((v12 & 1) == 0)
  {
    v26 = v11;
    swift_bridgeObjectRelease_n();
    v27 = x8_0;
    v28 = v26;
    v29 = a5;
LABEL_19:
    sub_1976D107C(v28, v29, v27);
    return;
  }

  v39 = x8_0;
  v40 = a5;

  v41 = a4;
  v14 = sub_19764ED9C(v13);
  v15 = 0;
  v16 = *(v14 + 16);
  v17 = v14 + 40;
  v42 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v18 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = *(v18 - 1);
    v19 = *v18;

    MEMORY[0x19A8E4C40](v43, a2);
    v21 = sub_19774F060();

    if (v21)
    {
      v22 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764AD60(0, *(v42 + 2) + 1, 1);
        v22 = v42;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_19764AD60((v23 > 1), v24 + 1, 1);
        v22 = v42;
      }

      ++v15;
      *(v22 + 2) = v24 + 1;
      v42 = v22;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v19;
      v17 = v14 + 40;
      goto LABEL_3;
    }

    v18 += 2;
    ++v15;
  }

  v30 = v42;
  v31 = *(v42 + 2);

  if (!v31)
  {

    v30 = sub_1976C0CB0(v41);
    v37 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v38 = v43;
    *(v38 + 8) = a2;
    *(v38 + 16) = v30;
    *(v38 + 24) = v37;
    swift_willThrow();
    return;
  }

  if (v31 != 1)
  {
    v37 = 2;
    goto LABEL_22;
  }

  if (!*(v42 + 2))
  {
    goto LABEL_24;
  }

  v33 = *(v42 + 4);
  v32 = *(v42 + 5);

  v34 = sub_19764ECD4(v33, v32, v41);
  v36 = v35;

  if ((v36 & 1) == 0)
  {

    v27 = v39;
    v28 = v34;
    v29 = v40;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1976D0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *x8_0@<X8>)
{
  swift_bridgeObjectRetain_n();
  v45 = a1;
  v11 = sub_19764ECD4(a1, a2, a4);
  if ((v12 & 1) == 0)
  {
    v27 = v11;
    swift_bridgeObjectRelease_n();
    v28 = x8_0;
    v29 = v27;
    v30 = a5;
    return sub_1976D11F0(v29, v30, v28);
  }

  v40 = x8_0;
  v41 = a5;

  v43 = a4;
  result = sub_19764ED9C(v13);
  v15 = result;
  v16 = 0;
  v17 = *(result + 16);
  v18 = result + 40;
  v44 = MEMORY[0x1E69E7CC0];
  v42 = result + 40;
LABEL_3:
  v19 = (v18 + 16 * v16);
  while (v17 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v21 = *(v19 - 1);
    v20 = *v19;

    MEMORY[0x19A8E4C40](v45, a2);
    v22 = sub_19774F060();

    if (v22)
    {
      v23 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19764AD60(0, *(v44 + 2) + 1, 1);
        v23 = v44;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        result = sub_19764AD60((v24 > 1), v25 + 1, 1);
        v23 = v44;
      }

      ++v16;
      *(v23 + 2) = v25 + 1;
      v44 = v23;
      v26 = &v23[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v20;
      v18 = v42;
      goto LABEL_3;
    }

    v19 += 2;
    ++v16;
  }

  v31 = v44;
  v32 = *(v44 + 2);

  if (!v32)
  {

    v31 = sub_1976C0CB0(v43);
    v38 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v39 = v45;
    *(v39 + 8) = a2;
    *(v39 + 16) = v31;
    *(v39 + 24) = v38;
    return swift_willThrow();
  }

  if (v32 != 1)
  {
    v38 = 2;
    goto LABEL_22;
  }

  if (!*(v44 + 2))
  {
    goto LABEL_24;
  }

  v34 = *(v44 + 4);
  v33 = *(v44 + 5);

  v35 = sub_19764ECD4(v34, v33, v43);
  v37 = v36;

  if ((v37 & 1) == 0)
  {

    v28 = v40;
    v29 = v35;
    v30 = v41;
    return sub_1976D11F0(v29, v30, v28);
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1976D0ED0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_19765079C(a3 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (swift_dynamicCast())
  {
    return v5 != 0;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1976D0F60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = v4;
  v11 = v5;
  sub_19765079C(a3 + 40 * result + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  v6 = swift_dynamicCast();
  v7 = v8;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

unint64_t sub_1976D0FF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_19765079C(a3 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_1976D107C(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  sub_19765079C(a2 + 40 * a1 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (!swift_dynamicCast())
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (qword_1EAF3FFB8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  swift_beginAccess();
  v4 = qword_1EAF44038;
  v5 = sub_19774EF20();
  v6 = [v4 dateFromString_];

  if (v6)
  {
    sub_19774EB50();

    v7 = 0;
LABEL_8:
    v8 = sub_19774EB80();
    __swift_storeEnumTagSinglePayload(v3, v7, 1, v8);
    return;
  }

  __break(1u);
}

unint64_t sub_1976D11F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_19765079C(a2 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (swift_dynamicCast())
  {
    result = sub_197652D20(v5);
  }

  else
  {
    result = 0;
    v4 = 0xF000000000000000;
  }

  *a3 = result;
  a3[1] = v4;
  return result;
}

void sub_1976D12E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_40();
  a29 = v31;
  a30 = v32;
  v53 = v33;
  v52 = v34;
  v51 = v35;
  v36 = type metadata accessor for SQLiteEncoder();
  v37 = OUTLINED_FUNCTION_14_10(v36);
  OUTLINED_FUNCTION_2_22(v37, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_29();
  sub_1976D6334(v38, v39, &unk_19775FB90);
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_5_15(v40, v41, v42, v43, v44);
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_0(&a14);
  }

  else
  {
    v45 = __swift_destroy_boxed_opaque_existential_0(&a14);
    OUTLINED_FUNCTION_7_13(v45, v46, v47, v48, v49);
    a20 = v37[2];

    sub_1976B5E98(v50);
    sub_1976BCFF8(v51, a20, v52, v53);
    OUTLINED_FUNCTION_8_11();
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_39();
}

void sub_1976D13E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v25 = a4;
    v26 = a5;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1976B4CE0(0, v6, 0);
    v10 = v32;
    v11 = a1 + 32;
    while (1)
    {
      v29 = v6;
      v28 = v11;
      sub_19764E1F4(v11, v31);
      v12 = type metadata accessor for SQLiteEncoder();
      v13 = swift_allocObject();
      v13[2] = v7;
      v13[3] = v7;
      v13[4] = a2;
      __swift_project_boxed_opaque_existential_0Tm(v31, v31[3]);
      v30[3] = v12;
      OUTLINED_FUNCTION_1_29();
      v30[4] = sub_1976D6334(&qword_1EAF40268, v14, &unk_19775FB90);
      v30[0] = v13;

      sub_19774EE70();
      if (v5)
      {

        __swift_destroy_boxed_opaque_existential_0(v30);
        __swift_destroy_boxed_opaque_existential_0(v31);

        return;
      }

      __swift_destroy_boxed_opaque_existential_0(v30);
      swift_beginAccess();
      v15 = v13[2];
      v16 = *(a3 + 16);
      v17 = *(v15 + 16);
      if (__OFADD__(v17, v16))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v15 + 24) >> 1, v18 < v17 + v16))
      {
        sub_1976B33B0();
        v15 = v19;
        v18 = *(v19 + 24) >> 1;
      }

      if (v16)
      {
        if (v18 - *(v15 + 16) < v16)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        v20 = *(v15 + 16);
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_22;
        }

        *(v15 + 16) = v22;
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1976B4CE0(v23 > 1, v24 + 1, 1);
        v10 = v32;
      }

      *(v10 + 16) = v24 + 1;
      *(v10 + 8 * v24 + 32) = v15;
      v11 = v28 + 40;
      v6 = v29 - 1;
      v7 = MEMORY[0x1E69E7CC0];
      if (v29 == 1)
      {
        a5 = v26;
        a4 = v25;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1976BCFFC(v10, a4, a5);
  }
}

void sub_1976D16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_40();
  a29 = v31;
  a30 = v32;
  v33 = OUTLINED_FUNCTION_15_10();
  v34 = OUTLINED_FUNCTION_14_10(v33);
  OUTLINED_FUNCTION_2_22(v34, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_29();
  sub_1976D6334(v35, v36, &unk_19775FB90);
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_5_15(v37, v38, v39, v40, v41);
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_0(&a14);
  }

  else
  {
    v42 = __swift_destroy_boxed_opaque_existential_0(&a14);
    OUTLINED_FUNCTION_7_13(v42, v43, v44, v45, v46);
    a20 = v34[2];

    sub_1976B5E98(v47);
    sub_1976BDB38();
    OUTLINED_FUNCTION_8_11();
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_39();
}

void sub_1976D17EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_40();
  a29 = v31;
  a30 = v32;
  v49 = v33;
  v34 = OUTLINED_FUNCTION_15_10();
  v35 = OUTLINED_FUNCTION_14_10(v34);
  OUTLINED_FUNCTION_2_22(v35, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_29();
  sub_1976D6334(v36, v37, &unk_19775FB90);
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_5_15(v38, v39, v40, v41, v42);
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_0(&a14);
  }

  else
  {
    v43 = __swift_destroy_boxed_opaque_existential_0(&a14);
    OUTLINED_FUNCTION_7_13(v43, v44, v45, v46, v47);
    a20 = v35[2];

    sub_1976B5E98(v48);
    v49(a20, a10, a11);
    OUTLINED_FUNCTION_8_11();
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_1976D18D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SQLiteDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v9;
  v8[5] = a1;
  OUTLINED_FUNCTION_3_15();
  sub_1976D6334(v10, v11, &unk_19775FB48);

  return sub_19774F1D0();
}

uint64_t sub_1976D19C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SQLiteDecoder();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v10;
  v9[5] = a1;
  a4[3] = v8;
  OUTLINED_FUNCTION_3_15();
  a4[4] = sub_1976D6334(v11, v12, &unk_19775FB48);
  *a4 = v9;
}

uint64_t sub_1976D1A80(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_1976D1B74()
{
  v1 = *(v0 + 16);
  v2 = sub_19774F960();
  v4 = sub_1976497AC(34, 0xE100000000000000, v2, v3);
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19775A780;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  swift_beginAccess();
  sub_1976B32C8();
  v9 = *(*(v1 + 16) + 16);
  sub_1976B3374(v9);
  v10 = *(v1 + 16);
  *(v10 + 16) = v9 + 1;
  v11 = (v10 + 80 * v9);
  v11[4] = v4;
  v11[5] = v6;
  v11[6] = MEMORY[0x1E69E7CC0];
  v11[7] = v7;
  v11[8] = &off_1F0BBB748;
  v11[9] = 63;
  v11[10] = 0xE100000000000000;
  v11[11] = v8;
  v11[12] = v7;
  v11[13] = &off_1F0BBB748;
  *(v1 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1976D1D2C(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_19774F960();
  v6 = sub_1976497AC(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
  swift_beginAccess();
  sub_1976B32C8();
  v10 = *(*(v3 + 16) + 16);
  sub_1976B3374(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = v9;
  *(v12 + 64) = &off_1F0BBB748;
  v13 = MEMORY[0x1E69E6370];
  *(v12 + 72) = a1;
  *(v12 + 96) = v13;
  *(v12 + 104) = &off_1F0BBA890;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1976D1E74(float a1)
{
  v3 = *(v1 + 16);
  v4 = sub_19774F960();
  v6 = sub_1976497AC(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF403A0, &qword_19775FC10);
  swift_beginAccess();
  sub_1976B32C8();
  v10 = *(*(v3 + 16) + 16);
  sub_1976B3374(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = v9;
  *(v12 + 64) = &off_1F0BBB748;
  v13 = MEMORY[0x1E69E63B0];
  *(v12 + 72) = a1;
  *(v12 + 96) = v13;
  *(v12 + 104) = &off_1F0BBA820;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1976D1FC8(double a1)
{
  v3 = *(v1 + 16);
  v4 = sub_19774F960();
  v6 = sub_1976497AC(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF403A0, &qword_19775FC10);
  swift_beginAccess();
  sub_1976B32C8();
  v10 = *(*(v3 + 16) + 16);
  sub_1976B3374(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = v9;
  *(v12 + 64) = &off_1F0BBB748;
  v13 = MEMORY[0x1E69E63B0];
  *(v12 + 72) = a1;
  *(v12 + 96) = v13;
  *(v12 + 104) = &off_1F0BBA820;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1976D2118(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = sub_19774F960();
  v8 = sub_1976497AC(34, 0xE100000000000000, v6, v7);
  v10 = v9;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  swift_beginAccess();

  sub_1976B32C8();
  v12 = *(*(v5 + 16) + 16);
  sub_1976B3374(v12);
  v13 = *(v5 + 16);
  *(v13 + 16) = v12 + 1;
  v14 = (v13 + 80 * v12);
  v14[4] = v8;
  v14[5] = v10;
  v14[6] = MEMORY[0x1E69E7CC0];
  v14[7] = v11;
  v14[8] = &off_1F0BBB748;
  v14[9] = a1;
  v15 = MEMORY[0x1E69E6158];
  v14[10] = a2;
  v14[12] = v15;
  v14[13] = &off_1F0BBA860;
  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t sub_1976D2270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a2;
  v99 = a4;
  v110 = a1;
  v105 = *v4;
  v6 = sub_19774EF90();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v97[1] = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F8, &qword_19775AA70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = v97 - v9;
  v104 = sub_19774EBF0();
  v100 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v98 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v97 - v12;
  v14 = sub_19774EB80();
  v103 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v102 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v97 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(v17 + 16);
  v24(v97 - v25, v110, a3);
  if (swift_dynamicCast())
  {
    v26 = v108;
    v27 = v109;
    v28 = v4[2];
    v29 = sub_19774F960();
    v31 = sub_1976497AC(34, 0xE100000000000000, v29, v30);
    v33 = v32;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F960, &unk_19775FC00);
    swift_beginAccess();
    sub_1976B32C8();
    v35 = *(*(v28 + 16) + 16);
    sub_1976B3374(v35);
    v36 = *(v28 + 16);
    *(v36 + 16) = v35 + 1;
    v37 = (v36 + 80 * v35);
    v37[4] = v31;
    v37[5] = v33;
    v37[6] = MEMORY[0x1E69E7CC0];
    v37[7] = v34;
    v37[8] = &off_1F0BBB748;
    v37[9] = v26;
    v37[10] = v27;
    v37[12] = MEMORY[0x1E6969080];
    v37[13] = &off_1F0BBBA70;
    *(v28 + 16) = v36;
    return swift_endAccess();
  }

  else
  {
    v39 = v4;
    v24(v23, v110, a3);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
      v41 = v102;
      v40 = v103;
      (*(v103 + 32))(v102, v13, v14);
      v42 = v4[2];
      v110 = v14;
      v43 = sub_19774F960();
      v45 = sub_1976497AC(34, 0xE100000000000000, v43, v44);
      v106 = v46;

      if (qword_1EAF3FFB8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v47 = qword_1EAF44038;
      v48 = sub_19774EB30();
      v49 = [v47 stringFromDate_];

      v50 = sub_19774EF50();
      v52 = v51;

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
      swift_beginAccess();
      sub_1976B32C8();
      v54 = *(*(v42 + 16) + 16);
      sub_1976B3374(v54);
      v55 = *(v42 + 16);
      *(v55 + 16) = v54 + 1;
      v56 = (v55 + 80 * v54);
      v57 = v106;
      v56[4] = v45;
      v56[5] = v57;
      v56[6] = MEMORY[0x1E69E7CC0];
      v56[7] = v53;
      v56[8] = &off_1F0BBB748;
      v56[9] = v50;
      v58 = MEMORY[0x1E69E6158];
      v56[10] = v52;
      v56[12] = v58;
      v56[13] = &off_1F0BBA860;
      *(v42 + 16) = v55;
      swift_endAccess();
      return (*(v40 + 8))(v41, v110);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
      sub_19764CAE4(v13, &qword_1EAF3F8F0, &qword_19775DA60);
      v24(v20, v110, a3);
      v59 = v101;
      v60 = v104;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
        v61 = v100;
        v62 = v98;
        (*(v100 + 32))(v98, v59, v60);
        v63 = v39[2];
        v64 = sub_19774F960();
        v110 = sub_1976497AC(34, 0xE100000000000000, v64, v65);
        v67 = v66;

        v68 = sub_19774EBA0();
        v70 = v69;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
        swift_beginAccess();
        sub_1976B32C8();
        v72 = *(*(v63 + 16) + 16);
        sub_1976B3374(v72);
        v73 = *(v63 + 16);
        *(v73 + 16) = v72 + 1;
        v74 = (v73 + 80 * v72);
        v74[4] = v110;
        v74[5] = v67;
        v74[6] = MEMORY[0x1E69E7CC0];
        v74[7] = v71;
        v74[8] = &off_1F0BBB748;
        v74[9] = v68;
        v75 = MEMORY[0x1E69E6158];
        v74[10] = v70;
        v74[12] = v75;
        v74[13] = &off_1F0BBA860;
        *(v63 + 16) = v73;
        swift_endAccess();
        return (*(v61 + 8))(v62, v104);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
        sub_19764CAE4(v59, &qword_1EAF3F8F8, &qword_19775AA70);
        sub_19774E8C0();
        swift_allocObject();
        sub_19774E8B0();
        v76 = v107;
        v77 = sub_19774E8A0();
        v79 = v78;

        if (!v76)
        {
          sub_19774EF80();
          v80 = sub_19774EF70();
          v82 = v81;
          v83 = v39[2];
          v84 = sub_19774F960();
          v110 = sub_1976497AC(34, 0xE100000000000000, v84, v85);
          v107 = v86;

          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
          v106 = sub_1976CFBB8(v80, v82);
          v89 = v88;
          v91 = v90;
          swift_beginAccess();
          sub_1976B32C8();
          v92 = *(*(v83 + 16) + 16);
          sub_1976B3374(v92);
          v93 = *(v83 + 16);
          *(v93 + 16) = v92 + 1;
          v94 = (v93 + 80 * v92);
          v95 = MEMORY[0x1E69E7CC0];
          v94[4] = v110;
          v94[5] = v107;
          v94[6] = v95;
          v94[7] = v87;
          v96 = v106;
          v94[8] = &off_1F0BBB748;
          v94[9] = v96;
          v94[10] = v89;
          v94[11] = v91;
          v94[12] = v87;
          v94[13] = &off_1F0BBB748;
          *(v83 + 16) = v93;
          swift_endAccess();
          return sub_197652DCC(v77, v79);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1976D2BE0(char a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  *(v4 + 24) = MEMORY[0x1E69E7230];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D2CCC(__int16 a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  *(v4 + 24) = MEMORY[0x1E69E7290];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D2DB8(int a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  *(v4 + 24) = MEMORY[0x1E69E72F0];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D2EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 16);
  v13 = sub_19774F960();
  v15 = OUTLINED_FUNCTION_12_11(v13, v14);
  v17 = v16;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_beginAccess();
  sub_1976B32C8();
  v19 = *(*(v12 + 16) + 16);
  sub_1976B3374(v19);
  v20 = *(v12 + 16);
  *(v20 + 16) = v19 + 1;
  v21 = (v20 + 80 * v19);
  v21[4] = v15;
  v21[5] = v17;
  v21[6] = MEMORY[0x1E69E7CC0];
  v21[7] = v18;
  v21[8] = &off_1F0BBB748;
  v21[9] = a1;
  v21[12] = a5;
  v21[13] = a6;
  *(v12 + 16) = v20;
  return swift_endAccess();
}

uint64_t sub_1976D3004(uint64_t a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  v4[3] = MEMORY[0x1E69E6810];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D30F0(char a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  *(v4 + 24) = MEMORY[0x1E69E7508];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D31DC(__int16 a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  *(v4 + 24) = MEMORY[0x1E69E75F8];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D32C8(int a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  *(v4 + 24) = MEMORY[0x1E69E7668];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D33B4(uint64_t a1)
{
  v2 = sub_19774F630();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8);
  v4[3] = MEMORY[0x1E69E76D8];
  *v4 = a1;

  sub_19774F600();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
  return swift_willThrow();
}

uint64_t sub_1976D3558()
{

  return v0;
}

uint64_t sub_1976D3580()
{
  v0 = sub_1976D3558();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1976D3824()
{
  OUTLINED_FUNCTION_16_8();
  v4 = v3;
  v6 = v5;
  v8 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, *(v7 + 80), *(v7 + 88), v7);
  return v0(v6, v4, v2, v8, v1);
}

uint64_t sub_1976D3B94()
{
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_17_11(v1, v2, v3, v4);
  OUTLINED_FUNCTION_9_11();
  return v0();
}

uint64_t sub_1976D3C08()
{
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_17_11(v1, v2, v3, v4);
  OUTLINED_FUNCTION_9_11();
  return v0();
}

uint64_t sub_1976D3C7C()
{
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_17_11(v1, v2, v3, v4);
  OUTLINED_FUNCTION_9_11();
  return v0();
}

uint64_t sub_1976D3CF8()
{
  OUTLINED_FUNCTION_16_8();
  v4 = v3;
  v6 = v5;
  v8 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, *(v7 + 80), *(v7 + 88), v7);
  return v0(v6, v4 & 1, v2, v8, v1);
}

uint64_t sub_1976D3FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, a2, a3, a4);

  sub_1976D1A80(v4);
  swift_getWitnessTable();
  return sub_19774F7A0();
}

uint64_t sub_1976D4058()
{

  return v0;
}

uint64_t sub_1976D4088()
{
  v0 = sub_1976D4058();

  return MEMORY[0x1EEE6BDC0](v0);
}

void *sub_1976D4124(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = a1;
  result[4] = a2;
  return result;
}

uint64_t sub_1976D4170()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40380, &qword_19775FBE0);
  sub_1976D6438();
  v0 = sub_19774F0D0();

  return v0;
}

uint64_t sub_1976D42A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_19774F960();
  LOBYTE(v1) = sub_1976C0BE4(v3, v4, v1, v2);

  return v1 & 1;
}

uint64_t sub_1976D4350()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_1976CFC44(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8 & 1;
}

uint64_t sub_1976D441C()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E7230];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D4500()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E7290];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D45E4()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E72F0];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D46C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_19774F960();
  v5 = OUTLINED_FUNCTION_12_11(v3, v4);
  v7 = v6;

  v8 = sub_1976CFD14(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8;
}

uint64_t sub_1976D4780()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E6810];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D4864()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E7508];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D4948()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E75F8];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D4A2C()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E7668];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D4B10()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
  *v2 = MEMORY[0x1E69E76D8];

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

uint64_t sub_1976D4BF4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  sub_1976CFDD8(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);
}

double sub_1976D4CD8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  sub_1976CFDD8(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);
  v9 = v8;

  return v9;
}

uint64_t sub_1976D4DAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_1976CFEA8(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8;
}

uint64_t sub_1976D4E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47[3] = a3;
  v8 = sub_19774EF90();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19774EB80();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v47 - v15;
  if (a1 == MEMORY[0x1E6969080])
  {
    v34 = *(v4 + 24);
    v35 = *(v4 + 32);
    v36 = sub_19774F960();
    v38 = sub_1976497AC(34, 0xE100000000000000, v36, v37);
    v40 = v39;

    v41 = v54;
    sub_1976D0C00(v38, v40, v34, v35, &v52);
    if (v41)
    {
      return swift_bridgeObjectRelease_n();
    }

    v44 = v53;
    if (v53 >> 60 == 15)
    {
      sub_19764EEB4(v52, v53);
      sub_1976C1B74();
      swift_allocError();
      *v45 = v38;
      *(v45 + 8) = v40;
      *(v45 + 16) = 0;
      *(v45 + 24) = 3;
      return swift_willThrow();
    }

    v53 = v44;
    return swift_dynamicCast();
  }

  v47[0] = v14;
  v47[1] = a4;
  v47[2] = a2;
  v17 = *(v4 + 32);
  v51 = *(v4 + 24);
  v18 = sub_19774F960();
  v20 = sub_1976497AC(34, 0xE100000000000000, v18, v19);
  v22 = v21;

  if (v10 == a1)
  {
    v43 = v54;
    sub_1976CFF78(v20, v22, v51, v17, v16);
    if (v43)
    {
    }

    (*(v47[0] + 32))(v13, v16, v10);
    return swift_dynamicCast();
  }

  v23 = v54;
  sub_1976D0674(v20, v22, MEMORY[0x1E69E7CC0], v51, v17);
  if (v23)
  {
  }

  v25 = v24;

  if (!v25)
  {
    v30 = sub_19774F610();
    swift_allocError();
    v32 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8);
    *v32 = a1;

    sub_19774F600();
    v33 = MEMORY[0x1E69E6AF8];
    goto LABEL_17;
  }

  v26 = v48;
  sub_19774EF80();
  v27 = sub_19774EF60();
  v29 = v28;

  (*(v49 + 8))(v26, v50);
  if (v29 >> 60 == 15)
  {
    v30 = sub_19774F610();
    swift_allocError();
    v32 = v31;

    sub_19774F600();
    v33 = MEMORY[0x1E69E6B00];
LABEL_17:
    (*(*(v30 - 8) + 104))(v32, *v33, v30);
    return swift_willThrow();
  }

  sub_19774E890();
  swift_allocObject();
  sub_19774E880();
  sub_19774E870();

  return sub_19764EEB4(v27, v29);
}

uint64_t sub_1976D53E4()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1976D54A4()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1976D5564()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1976D5624()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1976D56E4()
{

  return v0;
}

uint64_t sub_1976D571C()
{
  v0 = sub_1976D56E4();

  return MEMORY[0x1EEE6BDC0](v0);
}

unint64_t sub_1976D5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_0_31(a1, a2, a3, a4);
  v6 = v4(v5);
  return v6 | ((HIDWORD(v6) & 1) << 32);
}

uint64_t sub_1976D5DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_0_31(a1, a2, a3, a4);
  result = v4(v6);
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1976D5E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_0_31(a1, a2, a3, a4);
  result = v4(v6);
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1976D5F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, a2, a3, a4);
  sub_1976D4124(*(v4 + 16), *(v4 + 24));

  swift_getWitnessTable();
  return sub_19774F790();
}

uint64_t sub_1976D6048()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}

uint64_t sub_1976D6108()
{
  v0 = sub_19774F610();
  swift_allocError();
  v2 = v1;

  sub_19774F600();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6B00], v0);
  return swift_willThrow();
}