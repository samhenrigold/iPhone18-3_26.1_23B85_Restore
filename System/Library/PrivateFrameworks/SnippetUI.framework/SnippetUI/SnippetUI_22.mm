uint64_t sub_26A6BE530()
{

  return v0;
}

uint64_t sub_26A6BE558()
{
  sub_26A6BE530();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26A6BE5B0(uint64_t a1, int a2)
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

uint64_t sub_26A6BE5F0(uint64_t result, int a2, int a3)
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

unint64_t sub_26A6BE644()
{
  result = qword_2803B3990;
  if (!qword_2803B3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3990);
  }

  return result;
}

void sub_26A6BE698(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545238(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v8[0] = v2 + 32;
  v8[1] = v7;
  sub_26A6BE704(v8);
  *a1 = v2;
}

void sub_26A6BE704(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26A6BE870(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A6BE7F8(0, v2, 1, a1);
  }
}

uint64_t sub_26A6BE7F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        if (v7 >= *(v9 + 16))
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

void sub_26A6BE870(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v87 = a4;
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
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
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
            return;
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
                if (v33 >= *(v35 + 16))
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

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A0DBC(0, v8[2] + 1, 1, v8);
        v8 = v85;
      }

      v42 = v8[2];
      v41 = v8[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_26A7A0DBC(v41 > 1, v42 + 1, 1, v8);
        v8 = v86;
      }

      v8[2] = v43;
      v44 = v8 + 4;
      v45 = &v8[2 * v42 + 4];
      *v45 = v7;
      v45[1] = v9;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = &v44[2 * v43 - 2];
          v48 = &v8[2 * v43];
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = v8[4];
            v50 = v8[5];
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

          v78 = &v44[2 * v46 - 2];
          v79 = *v78;
          v80 = &v44[2 * v46];
          v81 = v80[1];
          sub_26A6BEE8C((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v90);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v81 < v79)
          {
            goto LABEL_91;
          }

          v82 = v8;
          v83 = v8[2];
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
          memmove(&v44[2 * v46], v80 + 2, 16 * (v83 - 1 - v46));
          v82[2] = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_85;
          }
        }

        v53 = &v44[2 * v43];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_94;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
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
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_26A6BED60(&v92, *a1, a3);
LABEL_89:
}

uint64_t sub_26A6BED60(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_26A544B3C(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_26A6BEE8C((*a3 + 32 * *v12), (*a3 + 32 * *v14), (*a3 + 32 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26A6BEE8C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_26A7A37E0(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_26A7A37E0(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_15:
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v17 = v6 - 32;
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v18 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 32)
    {
      v16 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v16;
    }

    v10 -= 32;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

id sub_26A6BF06C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = [v1 text_1];
  if (v5)
  {
    v105 = v2;
    v58 = v5;
    RFTextProperty.asPartialText()(v103);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v101 + 1) = &type metadata for PartialText;
      v102 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v100[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v100[0] + 16);
    }

    else
    {
      v102 = 0;
      *v100 = 0u;
      v101 = 0u;
    }

    v10 = [v3 text_3];
    if (v10)
    {
      v11 = v10;
      *(&v98 + 1) = &type metadata for PartialText;
      v99 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v97[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v97[0] + 16);
    }

    else
    {
      v99 = 0;
      *v97 = 0u;
      v98 = 0u;
    }

    v12 = [v3 text_4];
    if (v12)
    {
      v13 = v12;
      *(&v95 + 1) = &type metadata for PartialText;
      v96 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v94[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v94[0] + 16);
    }

    else
    {
      v96 = 0;
      *v94 = 0u;
      v95 = 0u;
    }

    HIDWORD(v55) = [v3 add_tint];
    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v14 = type metadata accessor for ReferenceCenteredView(0);
    v15 = a1 + v14[5];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = v14[6];
    *(a1 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v17 = a1 + v14[7];
    if (qword_2803A8C60 != -1)
    {
      swift_once();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40, &qword_26A860220);
    v19 = __swift_project_value_buffer(v18, qword_2803D1E30);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48, &unk_26A867A90);
    v21 = &v17[*(v20 + 32)];
    sub_26A4EA070(v19, v21, &qword_2803ADE40, &qword_26A860220);
    sub_26A6AEE74(__src);
    memcpy(v17, __src, 0xBFuLL);
    sub_26A580C48(v21 + *(v18 + 36), &v17[*(v20 + 28)]);
    v22 = memcpy(__dst, v103, 0xFAuLL);
    OUTLINED_FUNCTION_1_72(v22, v23, v24, v25, v26, v27, v28, v29, v55, v58, v61[0], v61[1], v61[2], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]);
    sub_26A4EC458(__dst, v61);
    sub_26A4EC4B4();
    *(a1 + v14[8]) = sub_26A851248();
    sub_26A4EA070(v100, v91, &qword_2803A91B8, &qword_26A8575C0);
    if (v92)
    {
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v30 = OUTLINED_FUNCTION_0_71();
      v32 = v31(v30);
      __swift_destroy_boxed_opaque_existential_1(v91);
    }

    else
    {
      sub_26A537648(v91);
      v32 = 0;
    }

    *(a1 + v14[9]) = v32;
    sub_26A4EA070(v97, v91, &qword_2803A91B8, &qword_26A8575C0);
    if (v92)
    {
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v33 = OUTLINED_FUNCTION_0_71();
      v35 = v34(v33);
      __swift_destroy_boxed_opaque_existential_1(v91);
    }

    else
    {
      sub_26A537648(v91);
      v35 = 0;
    }

    *(a1 + v14[10]) = v35;
    v36 = sub_26A4EA070(v94, v61, &qword_2803A91B8, &qword_26A8575C0);
    if (v62)
    {
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v44 = OUTLINED_FUNCTION_0_71();
      v46 = v45(v44);

      OUTLINED_FUNCTION_1_72(v47, v48, v49, v50, v51, v52, v53, v54, v56, v59, v61[0], v61[1], v61[2], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]);
      sub_26A4EC508(v91);
      sub_26A537648(v94);
      sub_26A537648(v97);
      sub_26A537648(v100);
      result = __swift_destroy_boxed_opaque_existential_1(v61);
    }

    else
    {
      OUTLINED_FUNCTION_1_72(v36, v37, v38, v39, v40, v41, v42, v43, v56, v59, v61[0], v61[1], v61[2], 0, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]);
      sub_26A4EC508(v91);

      sub_26A537648(v94);
      sub_26A537648(v97);
      sub_26A537648(v100);
      result = sub_26A537648(v61);
      v46 = 0;
    }

    *(a1 + v14[11]) = v46;
    *(a1 + v14[12]) = v57;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B136E8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A6BF5FC()
{
  result = qword_2803B3998;
  if (!qword_2803B3998)
  {
    type metadata accessor for ReferenceCenteredView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3998);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x398], 0xFAuLL);
}

uint64_t sub_26A6BF688@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemRichSearchResultView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84EE68();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A6BF890()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6BF9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemRichSearchResultView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A6BFBEC()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SimpleItemRichSearchResultView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A6BFDD4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_26A6BFF2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 28);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v15[1];
  }

  if ((v8 - 1) >= 8)
  {
    v11 = sub_26A851E98();
    sub_26A7A6570(v11, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, 2);
    v10 = MEMORY[0x277D62A18];
  }

  else
  {
    v10 = qword_279CA29D0[v8 - 1];
  }

  v12 = *v10;
  v13 = sub_26A84B058();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

void SimpleItemRichSearchResultView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_28_0();
  v180 = v22;
  v187 = v21;
  v194 = v24;
  v201 = v23;
  v166 = v26;
  v173 = v25;
  v28 = v27;
  v30 = v29;
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11(&qword_2803A89D0);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
  __swift_project_value_buffer(v31, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v30, __src, 0xBFuLL);
  OUTLINED_FUNCTION_5_54(*(v31 + 36));
  sub_26A6C84C0();
  v32 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v33 = &v30[v32[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v213 = xmmword_281588758;
  v214 = unk_281588768;
  v215 = xmmword_281588778;
  v216 = xmmword_281588788;
  v217 = xmmword_281588758;
  v218 = unk_281588768;
  v219 = xmmword_281588778;
  v220 = xmmword_281588788;
  v134 = xmmword_281588788;
  v147 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v221);
  memcpy(v33, v221, 0xC0uLL);
  *(v33 + 12) = v147;
  *(v33 + 13) = v134;
  v34 = v218;
  *(v33 + 14) = v217;
  *(v33 + 15) = v34;
  v35 = v220;
  *(v33 + 16) = v219;
  *(v33 + 17) = v35;
  v36 = v32[6];
  *&v30[v36] = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  OUTLINED_FUNCTION_18_21(v37);
  v38 = &v30[v32[7]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v32[8];
  *&v30[v39] = swift_getKeyPath();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_18_21(v40);
  v41 = &v30[v32[9]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = v32[10];
  *&v30[v42] = swift_getKeyPath();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  OUTLINED_FUNCTION_18_21(v43);
  v44 = &v30[v32[11]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  sub_26A50429C(v28, &v208);
  OUTLINED_FUNCTION_80();
  v45 = swift_allocObject();
  sub_26A4C2314(&v208, v45 + 16);
  v46 = &v30[v32[12]];
  *v46 = sub_26A6C0750;
  v46[1] = v45;
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v47, v48, v49, v50, v51, v52, v53, v54, v55, v134, *(&v134 + 1), v147, *(&v147 + 1), a21, v166, v173, v180, v187, v194, v201, v56, v208, v209);
  OUTLINED_FUNCTION_14_31(v57, &v30[v32[13]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v58 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v58, v59, v60, v61, v62, v63, v64, v65, v66, v135, v141, v148, v154, v160, v167, v174, v181, v188, v195, v202, v67, v208, v209);
  OUTLINED_FUNCTION_14_31(v68, &v30[v32[14]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v69 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v69, v70, v71, v72, v73, v74, v75, v76, v77, v136, v142, v149, v155, v161, v168, v175, v182, v189, v196, v203, v78, v208, v209);
  OUTLINED_FUNCTION_14_31(v79, &v30[v32[15]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v80 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v80, v81, v82, v83, v84, v85, v86, v87, v88, v137, v143, v150, v156, v162, v169, v176, v183, v190, v197, v204, v89, v208, v209);
  OUTLINED_FUNCTION_14_31(v90, &v30[v32[16]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v91 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v91, v92, v93, v94, v95, v96, v97, v98, v99, v138, v144, v151, v157, v163, v170, v177, v184, v191, v198, v205, v100, v208, v209);
  OUTLINED_FUNCTION_14_31(v101, &v30[v32[17]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v102 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v102, v103, v104, v105, v106, v107, v108, v109, v110, v139, v145, v152, v158, v164, v171, v178, v185, v192, v199, v206, v111, v208, v209);
  OUTLINED_FUNCTION_14_31(v112, &v30[v32[18]]);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80();
  v113 = swift_allocObject();
  OUTLINED_FUNCTION_0_72(v113, v114, v115, v116, v117, v118, v119, v120, v121, v140, v146, v153, v159, v165, v172, v179, v186, v193, v200, v207, v122, v208, v209);
  v123 = &v30[v32[19]];
  *v123 = sub_26A6C8514;
  v123[1] = v124;
  sub_26A4D7E54();
  v125 = v210;
  if (v210)
  {
    v126 = v211;
    __swift_project_boxed_opaque_existential_1(&v208, v210);
    v127 = (v126[1])(v125, v126);
    __swift_destroy_boxed_opaque_existential_1(&v208);
    v128 = &protocol witness table for AnyView;
    v129 = MEMORY[0x277CE11C8];
  }

  else
  {
    sub_26A4D6FD8();
    v127 = 0;
    v129 = 0;
    v128 = 0;
    *(&v208 + 1) = 0;
    v209 = 0;
  }

  *&v208 = v127;
  v210 = v129;
  v211 = v128;
  v130 = sub_26A6A8134(&v208);
  v132 = v131;
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
  __swift_destroy_boxed_opaque_existential_1(v28);
  v133 = &v30[v32[20]];
  *v133 = v130;
  v133[8] = v132;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6C06F4(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  return (*(v3 + 8))(v2, v3);
}

void *sub_26A6C0774@<X0>(void *a1@<X8>)
{
  sub_26A4D7E54();
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v3 + 8))(__src, v2, v3);
    nullsub_1();
    memcpy(a1, __src, 0xFAuLL);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A504324(__src);
    return memcpy(a1, __src, 0xFAuLL);
  }
}

void sub_26A6C0858()
{
  OUTLINED_FUNCTION_28_0();
  v90 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v80 = &v78 - v5;
  v87 = sub_26A84DC28();
  OUTLINED_FUNCTION_15();
  v82 = v6;
  MEMORY[0x28223BE20](v7);
  v89 = v8;
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11(&qword_2803A89D0);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
  __swift_project_value_buffer(v10, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570);
  sub_26A4D7E54();
  sub_26A6AEE74(v93);
  memcpy(v2, v93, 0xBFuLL);
  OUTLINED_FUNCTION_5_54(*(v10 + 36));
  sub_26A6C84C0();
  v11 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v12 = &v2[v11[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v94 = xmmword_281588758;
  v95 = unk_281588768;
  v96 = xmmword_281588778;
  v97 = xmmword_281588788;
  v98 = xmmword_281588758;
  v99 = unk_281588768;
  v100 = xmmword_281588778;
  v101 = xmmword_281588788;
  v91 = xmmword_281588778;
  v88 = xmmword_281588788;
  sub_26A4D7E54();
  sub_26A6AEE74(v102);
  memcpy(v12, v102, 0xC0uLL);
  v13 = v88;
  *(v12 + 12) = v91;
  *(v12 + 13) = v13;
  v14 = v99;
  *(v12 + 14) = v98;
  *(v12 + 15) = v14;
  v15 = v101;
  *(v12 + 16) = v100;
  *(v12 + 17) = v15;
  v16 = v11[6];
  *&v2[v16] = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  OUTLINED_FUNCTION_186(v17);
  v18 = &v2[v11[7]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v11[8];
  *&v2[v19] = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_186(v20);
  v21 = &v2[v11[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v11[10];
  *&v2[v22] = swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  OUTLINED_FUNCTION_186(v23);
  v24 = &v2[v11[11]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v82;
  v26 = v82 + 16;
  *&v88 = *(v82 + 16);
  v27 = v87;
  (v88)(v9, v90, v87);
  v28 = v26;
  v83 = *(v25 + 80);
  *&v91 = v11;
  v29 = (v83 + 16) & ~v83;
  v30 = swift_allocObject();
  v84 = *(v25 + 32);
  v86 = v25 + 32;
  v84(v30 + v29, v9, v27);
  v31 = v90;
  v32 = OUTLINED_FUNCTION_13_30(&v2[*(v91 + 48)]);
  (v88)(v32, v31, v27);
  v85 = v28;
  v33 = swift_allocObject();
  v34 = OUTLINED_FUNCTION_3_61(v33);
  v35 = v84;
  (v84)(v34);
  v36 = OUTLINED_FUNCTION_13_30(&v2[*(v91 + 52)]);
  v37 = v31;
  v38 = v88;
  (v88)(v36, v37, v27);
  v39 = OUTLINED_FUNCTION_20_23(&unk_287B1F118);
  v40 = OUTLINED_FUNCTION_3_61(v39);
  v35(v40);
  v41 = v90;
  v42 = &v2[*(v91 + 56)];
  v81 = v2;
  v43 = OUTLINED_FUNCTION_13_30(v42);
  v38(v43, v41, v27);
  v44 = swift_allocObject();
  v45 = OUTLINED_FUNCTION_3_61(v44);
  (v84)(v45);
  v46 = OUTLINED_FUNCTION_13_30(&v2[*(v91 + 60)]);
  v47 = v88;
  (v88)(v46, v41, v27);
  v48 = swift_allocObject();
  v79 = v9;
  v49 = v84;
  v84(v48 + v29, v9, v27);
  v50 = v81;
  v51 = OUTLINED_FUNCTION_13_30(&v81[*(v91 + 64)]);
  v52 = v87;
  v47(v51);
  v53 = swift_allocObject();
  v54 = v79;
  v49(v53 + v29, v79, v52);
  v55 = &v50[*(v91 + 68)];
  *v55 = sub_26A6C7F80;
  v55[1] = v53;
  v56 = v54;
  v57 = v54;
  v58 = v90;
  v59 = v87;
  (v88)(v57, v90, v87);
  v60 = OUTLINED_FUNCTION_20_23(&unk_287B1F1B8);
  v61 = OUTLINED_FUNCTION_3_61(v60);
  (v49)(v61);
  v62 = v81;
  v63 = OUTLINED_FUNCTION_13_30(&v81[*(v91 + 72)]);
  (v88)(v63, v58, v59);
  v64 = OUTLINED_FUNCTION_20_23(&unk_287B1F1E0);
  v65 = v64 + v29;
  v66 = v91;
  v49(v65, v56, v59);
  v67 = v62;
  v68 = &v62[*(v66 + 76)];
  *v68 = sub_26A6C8058;
  v68[1] = v64;
  v69 = v80;
  sub_26A84DC18();
  v70 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v69, 1, v70) == 1)
  {
    sub_26A4D6FD8();
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v92[1] = 0;
    v92[2] = 0;
  }

  else
  {
    v71 = VisualProperty.asAnyView()();
    (*(*(v70 - 8) + 8))(v69, v70);
    v73 = &protocol witness table for AnyView;
    v72 = MEMORY[0x277CE11C8];
  }

  v92[0] = v71;
  v92[3] = v72;
  v92[4] = v73;
  v74 = sub_26A6A8134(v92);
  v76 = v75;
  (*(v82 + 8))(v90, v87);
  v77 = &v67[*(v66 + 80)];
  *v77 = v74;
  v77[8] = v76;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6C1010@<X0>(uint64_t x8_0@<X8>)
{
  v3 = sub_26A84B888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84DBF8();
  v7 = sub_26A6E3188(x8_0);
  return (*(v4 + 8))(v6, v3, v7);
}

void sub_26A6C10F4()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_23();
  v2();
  v14 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
  {
    sub_26A4D6FD8();
    sub_26A504324(v31);
    v15 = v4;
  }

  else
  {
    sub_26A84B858();
    v16 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
    v28 = v17;
    v29 = v16;
    v19 = v18;
    v21 = v20;
    (*(v7 + 8))(v11, v5);
    v30 = v4;
    v22 = v19 & 1;
    v23 = TextProperty.asAnyView()();
    v24 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v35 = 0;
    v26 = swift_getKeyPath();
    v34 = 0;
    v27 = swift_getKeyPath();
    v33 = 0;
    v32 = 1;
    (*(*(v14 - 8) + 8))(v0, v14);
    v31[0] = KeyPath;
    LOBYTE(v31[1]) = 0;
    v31[2] = v26;
    LOBYTE(v31[3]) = 0;
    v31[4] = v27;
    LOBYTE(v31[5]) = 0;
    v31[6] = v29;
    v31[7] = v28;
    v31[8] = v22;
    v31[9] = v21;
    v31[10] = v23;
    LOBYTE(v31[11]) = v24 & 1;
    memset(&v31[12], 0, 128);
    LOBYTE(v31[28]) = 1;
    memset(&v31[29], 0, 18);
    nullsub_1();
    v15 = v30;
  }

  memcpy(v15, v31, 0xFAuLL);
  OUTLINED_FUNCTION_27_0();
}

void *sub_26A6C1390@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14[-v9];
  a2(v8);
  v11 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_26A4D6FD8();
    sub_26A504324(v14);
  }

  else
  {
    v12 = sub_26A6E3398(v15, a1);
    (*(*(v11 - 8) + 8))(v10, v11, v12);
    memcpy(v14, v15, 0xFAuLL);
    nullsub_1();
  }

  return memcpy(a3, v14, 0xFAuLL);
}

uint64_t SimpleItemRichSearchResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_23();
  sub_26A6BFBEC();
  sub_26A6C1714(v18);
  sub_26A6BF890();
  sub_26A6BF9E4(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v17 = v1;
  sub_26A4CCA00();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CD04;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3B60, &unk_26A875C30) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3B68, &qword_26A875C40);
  *(a1 + *(result + 36)) = 64;
  return result;
}

int *sub_26A6C1714@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  result = type metadata accessor for SimpleItemRichSearchResultView(0);
  if (*(v1 + result[20]))
  {
    sub_26A6BFF2C(v10);
    (*(v5 + 104))(v7, *MEMORY[0x277D62A00], v4);
    sub_26A6C7910();
    sub_26A851A48();
    sub_26A851A48();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v12(v10, v4);
    if (v23[1] == v23[0] && (result = sub_26A6C1E4C(), (result & 1) != 0))
    {
      if (qword_2803A8BF8 != -1)
      {
        result = swift_once();
      }

      if (byte_2803B0441 == 1)
      {
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570) + 28);
        result = type metadata accessor for SimpleItemConstants(0);
        v14 = 0;
        __asm { FMOV            V0.2D, #6.0 }

        *(&_Q0 + 1) = *(v2 + result[13] + v13);
      }

      else
      {
        v14 = 0;
        _Q0 = xmmword_26A875B00;
      }

      v22 = _Q0;
    }

    else
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570) + 28);
      result = type metadata accessor for SimpleItemConstants(0);
      v21 = v2 + result[10] + v20;
      _Q0 = *v21;
      v22 = *(v21 + 16);
      v14 = *(v21 + 32);
    }
  }

  else
  {
    _Q0 = 0uLL;
    v14 = 1;
    v22 = 0uLL;
  }

  *a1 = _Q0;
  *(a1 + 16) = v22;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_26A6C19B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A68, &qword_26A855948);
  MEMORY[0x28223BE20](v24);
  v4 = &v20 - v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BC0, &unk_26A875D60);
  MEMORY[0x28223BE20](v23);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A58, &qword_26A855940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A48, &unk_26A875D70);
  MEMORY[0x28223BE20](v22);
  v21 = &v20 - v8;
  v9 = sub_26A84B058();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_26A6BFF2C(&v20 - v14);
  (*(v10 + 104))(v12, *MEMORY[0x277D62A00], v9);
  sub_26A6C7910();
  sub_26A851A48();
  sub_26A851A48();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v16(v15, v9);
  if (__src[0] == v26 && (sub_26A6C1E4C() & 1) != 0)
  {
    *v7 = sub_26A84FA78();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BC8, &qword_26A875D90);
    sub_26A6C3904(a1, &v7[*(v17 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    v18 = v21;
    sub_26A4AC604();
    memcpy(&v18[*(v22 + 36)], __src, 0x70uLL);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D4E04();
    sub_26A4D4EBC();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }

  else
  {
    sub_26A6C20F0(v4);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D4E04();
    sub_26A4D4EBC();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }
}

uint64_t sub_26A6C1E4C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v12[15];
  }

  v9 = 1;
  switch(v7)
  {
    case 1:
    case 2:
    case 3:
      v10 = sub_26A852598();

      if ((v10 & 1) == 0)
      {
        switch(sub_26A6BFDD4())
        {
          case 3u:
            goto LABEL_8;
          default:
            v9 = sub_26A852598();
            break;
        }

        goto LABEL_8;
      }

      break;
    default:
LABEL_8:

      break;
  }

  return v9 & 1;
}

uint64_t sub_26A6C20F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = __src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A98, &qword_26A855960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __src - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A88, &unk_26A875D80);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = __src - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A78, &unk_26A855950);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = __src - v16;
  v18 = sub_26A84FA78();
  sub_26A6C23C4();
  v19 = *&v6[*(v4 + 28)];
  sub_26A6C812C(v6);
  *v9 = v18;
  *(v9 + 1) = v19;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C50, &qword_26A875E80);
  sub_26A6C252C(v1);
  sub_26A851458();
  sub_26A84F628();
  sub_26A4D7EA8();
  memcpy(&v13[*(v11 + 44)], __src, 0x70uLL);
  sub_26A4D7EA8();
  *&v17[*(v15 + 44)] = 256;
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A68, &qword_26A855948);
  v23 = a1 + *(result + 36);
  *v23 = KeyPath;
  *(v23 + 8) = 0;
  *(v23 + 16) = v21;
  *(v23 + 24) = 256;
  return result;
}

uint64_t sub_26A6C23C4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
  }

  return sub_26A5A02D4();
}

uint64_t sub_26A6C252C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C58, &qword_26A875ED8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_26A6C278C(v16 - v10);
  sub_26A6C23C4();
  v12 = *&v6[*(v4 + 28)];
  sub_26A6C812C(v6);
  KeyPath = swift_getKeyPath();
  v14 = &v11[*(v8 + 44)];
  *v14 = KeyPath;
  v14[8] = 0;
  *(v14 + 2) = v12;
  v16[593] = sub_26A84FA78();
  v16[594] = 0;
  v17 = 1;
  sub_26A6C2980(v2);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C68, &qword_26A875F10);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C278C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(type metadata accessor for SimpleItemRichSearchResultView(0) + 80));
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    sub_26A6C23C4();
    KeyPath = swift_getKeyPath();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C48, &qword_26A875E48);
    v11 = (a1 + *(v10 + 36));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    v13 = sub_26A84B1D8();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11 + v12, v5, v13);
    __swift_storeEnumTagSinglePayload(v11 + v12, 0, 1, v13);
    *v11 = KeyPath;
    *a1 = v7;
    *(a1 + 8) = v8 & 1;
    v15 = *(v14 + 8);

    v15(v5, v13);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C48, &qword_26A875E48);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }
}

uint64_t sub_26A6C2980(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v10[0] = sub_26A84FC08();
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  sub_26A6C2C04(v2);
  sub_26A851448();
  sub_26A84F628();
  memcpy(v9, v10, 0x8C8uLL);
  KeyPath = swift_getKeyPath();
  memcpy(v10, v9, 0x938uLL);
  v10[295] = KeyPath;
  v10[296] = 1;
  v11 = 0;
  v8[0] = sub_26A84FC18();
  v8[1] = 0;
  LOBYTE(v8[2]) = 1;
  sub_26A6C3368(v2);
  sub_26A851448();
  sub_26A84F628();
  memcpy(__dst, v8, 0x898uLL);
  memcpy(v8, __dst, sizeof(v8));
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  *(v4 + 2384) = 0;
  *(v4 + 2392) = 0;
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C2C04(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v19 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v9 = *(v2 + v8[18]);
  sub_26A6BFF2C(v7);
  v9(v39, v7);
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v44);
  memcpy(v41, v44, sizeof(v41));
  v42 = sub_26A80A810;
  v43 = 0;
  memcpy(v40, v39, sizeof(v40));
  v11 = *(v2 + v8[12]);
  sub_26A6BFF2C(v7);
  v11(v28, v7);
  v10(v7, v4);
  if (qword_2803A8D38 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v45);
  sub_26A4D6FD8();
  memcpy(v30, v45, sizeof(v30));
  v31 = sub_26A80A810;
  v32 = 0;
  memcpy(v29, v28, sizeof(v29));
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v33 = qword_28157FC80;
  v34 = sub_26A4D82F0;
  v35 = 0;
  v36 = sub_26A84FBD8();
  v37 = sub_26A4D82F0;
  v38 = 0;
  v12 = *(v2 + v8[13]);
  sub_26A6BFF2C(v7);
  v12(v25, v7);
  v10(v7, v4);
  v13 = sub_26A6BFDD4();
  v17 = v10;
  v18 = v4;
  switch(v13)
  {
    case 3:

      goto LABEL_12;
    default:
      v14 = sub_26A852598();

      if (v14)
      {
LABEL_12:
        if (qword_2803A8D40 == -1)
        {
          goto LABEL_13;
        }
      }

      else if (qword_28157E6A8 == -1)
      {
        goto LABEL_13;
      }

      swift_once();
LABEL_13:
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A6AEE74(v46);
      sub_26A4D6FD8();
      memcpy(&v26[32], v46, 0xBFuLL);
      v26[66] = sub_26A80A810;
      v26[67] = 0;
      memcpy(v26, v25, 0xFAuLL);
      memcpy(v27, v26, sizeof(v27));
      v15 = *(v2 + v8[14]);
      sub_26A6BFF2C(v7);
      v15(v20, v7);
      v17(v7, v18);
      sub_26A4D7E54();
      sub_26A6AEE74(v47);
      memcpy(v22, v47, sizeof(v22));
      v23 = sub_26A80A810;
      v24 = 0;
      memcpy(v21, v20, sizeof(v21));
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      sub_26A4D6FD8();
      return sub_26A4D6FD8();
  }
}

uint64_t sub_26A6C3368(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v15 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 2168;
  v8 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v9 = *(v2 + v8[19]);
  sub_26A6BFF2C(v7);
  v9(v31, v7);
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v36);
  memcpy(v33, v36, sizeof(v33));
  v34 = sub_26A80A810;
  v35 = 0;
  memcpy(v32, v31, sizeof(v32));
  v11 = *(v2 + v8[15]);
  sub_26A6BFF2C(v7);
  v11(v26, v7);
  v10(v7, v4);
  if (qword_2803A8D48 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v37);
  sub_26A4D6FD8();
  memcpy(v28, v37, sizeof(v28));
  v29 = sub_26A80A810;
  v30 = 0;
  memcpy(v27, v26, sizeof(v27));
  v12 = *(v2 + v8[17]);
  sub_26A6BFF2C(v7);
  v12(v21, v7);
  v10(v7, v4);
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v38);
  memcpy(v23, v38, sizeof(v23));
  v24 = sub_26A80A810;
  v25 = 0;
  memcpy(v22, v21, sizeof(v22));
  v13 = *(v2 + v8[16]);
  sub_26A6BFF2C(v7);
  v13(v16, v7);
  v10(v7, v4);
  sub_26A4D7E54();
  sub_26A6AEE74(v39);
  memcpy(v18, v39, sizeof(v18));
  v19 = sub_26A80A810;
  v20 = 0;
  memcpy(v17, v16, sizeof(v17));
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C3904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BD0, &qword_26A875D98);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BD8, &qword_26A875DA0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  sub_26A6C278C(v27 - v15);
  v17 = sub_26A850298();
  sub_26A84ED48();
  v18 = &v16[*(v13 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_26A6C23C4();
  v23 = *&v6[*(v4 + 32)];
  sub_26A6C812C(v6);
  *v11 = sub_26A84FA78();
  *(v11 + 1) = v23;
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BE0, &qword_26A875DA8);
  sub_26A6C3BE4(a1);
  KeyPath = swift_getKeyPath();
  v25 = &v11[*(v8 + 44)];
  *v25 = KeyPath;
  *(v25 + 1) = 1;
  v25[16] = 0;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BE8, &qword_26A875DE0);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C3BE4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BF0, &qword_26A875DE8);
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (v14 - v9);
  *v10 = sub_26A851458();
  v10[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3BF8, &qword_26A875DF0);
  sub_26A6C3E28(v2);
  sub_26A6C23C4();
  v12 = *&v6[*(v4 + 32)];
  sub_26A6C812C(v6);
  v14[435] = sub_26A84FA78();
  v14[436] = v12;
  v15 = 0;
  sub_26A6C5038(v2);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C08, &unk_26A875E00);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C3E28(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v55 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C10, &qword_26A875E18);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C18, &qword_26A875E20);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v10;
  v11 = sub_26A84EE68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A6C23C4();
  v22 = *&v21[*(v19 + 32)];
  sub_26A6C812C(v21);
  v58[0] = sub_26A84FA78();
  v58[1] = v22;
  LOBYTE(v58[2]) = 0;
  sub_26A6C43E4(v2);
  sub_26A6BF688(v17);
  v47 = *MEMORY[0x277CDF3C0];
  v23 = v12;
  v24 = *(v12 + 104);
  v45 = v14;
  v46 = v24;
  v24(v14);
  LOBYTE(v12) = sub_26A84EE58();
  v25 = v14;
  v26 = *(v23 + 8);
  v26(v25, v11);
  v26(v17, v11);
  v27 = 1.0;
  if (v12)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  memcpy(v59, v58, sizeof(v59));
  v60 = v28;
  sub_26A6C23C4();
  v29 = *&v21[*(v19 + 32)];
  sub_26A6C812C(v21);
  v56[0] = sub_26A84FA78();
  v56[1] = v29;
  LOBYTE(v56[2]) = 0;
  sub_26A6C43E4(v2);
  sub_26A6BF688(v17);
  v30 = v45;
  v46(v45, v47, v11);
  v31 = v30;
  LOBYTE(v30) = sub_26A84EE58();
  v26(v31, v11);
  v26(v17, v11);
  if ((v30 & 1) == 0)
  {
    v27 = 0.0;
  }

  memcpy(v57, v56, 0xC58uLL);
  *&v57[395] = v27;
  sub_26A8503C8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C20, &qword_26A875E28);
  v33 = sub_26A6C8364();
  v34 = v49;
  sub_26A850938();
  sub_26A4D6FD8();
  v57[0] = v32;
  v57[1] = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v48;
  v36 = v53;
  sub_26A850C38();
  (*(v54 + 8))(v34, v36);
  sub_26A4D7E54();
  v37 = v50;
  v38 = v51;
  v39 = *(v51 + 16);
  v40 = v52;
  v39(v50, v35, v52);
  v41 = v55;
  sub_26A4D7E54();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C40, &qword_26A875E38);
  v39((v41 + *(v42 + 48)), v37, v40);
  v43 = *(v38 + 8);
  v43(v35, v40);
  sub_26A4D6FD8();
  v43(v37, v40);
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C43E4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v32 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v8 = *(v2 + v35[18]);
  sub_26A6BFF2C(v7);
  v37 = v8;
  v8(v61, v7);
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  v11(v7, v4);
  if (qword_2803A8D50 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v66);
  sub_26A4D6FD8();
  memcpy(v63, v66, sizeof(v63));
  v64 = sub_26A80A810;
  v65 = 0;
  memcpy(v62, v61, sizeof(v62));
  sub_26A6BFF2C(v7);
  v37(v57, v7);
  v9(v7, v4);
  memcpy(v73, v57, sizeof(v73));
  memcpy(v74, v57, 0xFAuLL);
  v12 = sub_26A505008(v74);
  v33 = v2;
  v34 = v4;
  v37 = v10;
  v13 = v9;
  if (v12 == 1)
  {
    bzero(v60, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v15 = *(&xmmword_2803B00A0 + 1);
    v14 = xmmword_2803B00A0;
    v16 = byte_2803B00B0;
    v17 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v67);
    sub_26A4D6FD8();
    memcpy(&v57[4], v67, 0xBFuLL);
    v57[39] = 0;
    v57[0] = v14;
    v57[1] = v15;
    LOBYTE(v57[2]) = v16;
    v57[38] = sub_26A80A810;
    v57[3] = v17;
    memcpy(v60, v57, sizeof(v60));
    sub_26A4EF6C0(v14, v15, v16);

    v2 = v33;
    v4 = v34;
  }

  v18 = v35;
  v19 = *(v2 + v35[12]);
  sub_26A6BFF2C(v7);
  v19(v56, v7);
  v13(v7, v4);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v68);
  sub_26A4D6FD8();
  memcpy(&v57[32], v68, 0xBFuLL);
  v57[66] = sub_26A80A810;
  v57[67] = 0;
  memcpy(v57, v56, 0xFAuLL);
  v20 = v13;
  v21 = *(v2 + v18[19]);
  sub_26A6BFF2C(v7);
  v21(v52, v7);
  v36 = v20;
  v20(v7, v4);
  memcpy(v58, v52, sizeof(v58));
  memcpy(v59, v52, 0xFAuLL);
  if (sub_26A505008(v59) == 1)
  {
    bzero(v55, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v23 = *(&xmmword_2803B00A0 + 1);
    v22 = xmmword_2803B00A0;
    v24 = byte_2803B00B0;
    v25 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v69);
    sub_26A4D6FD8();
    memcpy(&v52[4], v69, 0xBFuLL);
    v52[39] = 0;
    v52[0] = v22;
    v52[1] = v23;
    LOBYTE(v52[2]) = v24;
    v52[38] = sub_26A80A810;
    v52[3] = v25;
    memcpy(v55, v52, sizeof(v55));
    sub_26A4EF6C0(v22, v23, v24);

    v2 = v33;
    v4 = v34;
  }

  sub_26A6BFF2C(v7);
  v21(v51, v7);
  v26 = v36;
  v36(v7, v4);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v70);
  sub_26A4D6FD8();
  memcpy(&v52[32], v70, 0xBFuLL);
  v52[66] = sub_26A80A810;
  v52[67] = 0;
  memcpy(v52, v51, 0xFAuLL);
  v27 = *(v2 + v35[15]);
  sub_26A6BFF2C(v7);
  v27(v47, v7);
  v26(v7, v4);
  memcpy(v53, v47, sizeof(v53));
  memcpy(v54, v47, 0xFAuLL);
  if (sub_26A505008(v54) == 1)
  {
    bzero(v50, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v28 = xmmword_2803B00A0;
    v29 = byte_2803B00B0;
    v30 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v71);
    sub_26A4D6FD8();
    memcpy(&v47[2], v71, 0xBFuLL);
    *(&v47[19] + 1) = 0;
    v47[0] = v28;
    LOBYTE(v47[1]) = v29;
    *&v47[19] = sub_26A80A810;
    *(&v47[1] + 1) = v30;
    memcpy(v50, v47, sizeof(v50));
    sub_26A4EF6C0(v28, *(&v28 + 1), v29);

    v4 = v34;
  }

  sub_26A6BFF2C(v7);
  v27(v46, v7);
  v36(v7, v4);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v72);
  sub_26A4D6FD8();
  memcpy(&v47[16], v72, 0xBFuLL);
  v48 = sub_26A80A810;
  v49 = 0;
  memcpy(v47, v46, 0xFAuLL);
  sub_26A4D7E54();
  v45[0] = &v44;
  sub_26A4D7E54();
  v45[1] = &v43;
  sub_26A4D7E54();
  v45[2] = &v42;
  sub_26A4D7E54();
  v45[3] = &v41;
  sub_26A4D7E54();
  v45[4] = &v40;
  sub_26A4D7E54();
  v45[5] = &v39;
  sub_26A4D7E54();
  v45[6] = &v38;
  sub_26A594614(v45);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A6C5038(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v53 = v3;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v9 = &v2[*(v8 + 52)];
  v10 = *v9;
  v11 = *(v9 + 1);
  sub_26A6BFF2C(v7);
  v10(v86, v7);
  v60 = *(v5 + 8);
  v60(v7, v4);
  memcpy(v100, v86, sizeof(v100));
  memcpy(v101, v86, 0xFAuLL);
  v12 = sub_26A505008(v101);
  v13 = 0x2803A8000;
  v57 = v4;
  v58 = v10;
  v55 = v5 + 8;
  v56 = v11;
  v59 = v8;
  if (v12 == 1)
  {
    v14 = *&v2[*(v8 + 68)];
    sub_26A6BFF2C(v7);
    v14(v71, v7);
    v60(v7, v4);
    memcpy(v74, v71, 0xFAuLL);
    memcpy(v81, v71, 0xFAuLL);
    if (sub_26A505008(v81) == 1)
    {
      v15 = *&v2[v59[14]];
      sub_26A6BFF2C(v7);
      v15(v63, v7);
      v60(v7, v4);
      memcpy(v65, v63, 0xFAuLL);
      memcpy(v67, v63, 0xFAuLL);
      if (sub_26A505008(v67) == 1)
      {
        v16 = *&v2[v59[16]];
        sub_26A6BFF2C(v7);
        v16(v91, v7);
        v17 = v60;
        v60(v7, v4);
        memcpy(v84, v91, 0xFAuLL);
        memcpy(v61, v91, 0xFAuLL);
        if (sub_26A505008(v61) == 1)
        {
          bzero(v91, 0x140uLL);
          goto LABEL_13;
        }
      }
    }

    sub_26A4D6FD8();
    v13 = 0x2803A8000uLL;
  }

  else
  {
    sub_26A4D6FD8();
  }

  if (qword_2803A8BC8 != -1)
  {
    swift_once();
  }

  v18 = xmmword_2803B0060;
  v19 = byte_2803B0070;
  v20 = qword_2803B0078;
  if (*(v13 + 3416) != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v92);
  sub_26A4D6FD8();
  memcpy(&v86[2], v92, 0xBFuLL);
  *(&v86[19] + 1) = 0;
  v86[0] = v18;
  LOBYTE(v86[1]) = v19;
  *&v86[19] = sub_26A80A810;
  *(&v86[1] + 1) = v20;
  memcpy(v91, v86, sizeof(v91));
  sub_26A4EF6C0(v18, *(&v18 + 1), v19);

  v4 = v57;
  v10 = v58;
  v17 = v60;
LABEL_13:
  sub_26A6BFF2C(v7);
  v10(v85, v7);
  v17(v7, v4);
  if (qword_2803A8D58 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v93);
  sub_26A4D6FD8();
  memcpy(&v86[16], v93, 0xBFuLL);
  v87 = sub_26A80A810;
  v88 = 0;
  memcpy(v86, v85, 0xFAuLL);
  sub_26A6BFF2C(v7);
  v58(v74, v7);
  v17(v7, v4);
  memcpy(v89, v74, sizeof(v89));
  memcpy(v90, v74, 0xFAuLL);
  if (sub_26A505008(v90) == 1 || (sub_26A4D6FD8(), v21 = *&v2[v59[17]], sub_26A6BFF2C(v7), v21(v81, v7), v17(v7, v4), memcpy(v67, v81, 0xFAuLL), memcpy(v71, v81, 0xFAuLL), sub_26A505008(v71) == 1))
  {
    v22 = v59;
    bzero(v84, 0x140uLL);
  }

  else
  {
    sub_26A4D6FD8();
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v24 = *(&xmmword_2803B00A0 + 1);
    v23 = xmmword_2803B00A0;
    v25 = byte_2803B00B0;
    v26 = qword_2803B00B8;
    sub_26A4D7E54();
    sub_26A4D7E54();
    sub_26A6AEE74(v94);
    sub_26A4D6FD8();
    memcpy(&v81[4], v94, 0xBFuLL);
    v81[39] = 0;
    v81[0] = v23;
    v81[1] = v24;
    LOBYTE(v81[2]) = v25;
    v81[38] = sub_26A80A810;
    v81[3] = v26;
    memcpy(v84, v81, sizeof(v84));
    sub_26A4EF6C0(v23, v24, v25);

    v22 = v59;
    v17 = v60;
  }

  v27 = &v2[v22[17]];
  v28 = *v27;
  v29 = *(v27 + 1);
  sub_26A6BFF2C(v7);
  v28(v80, v7);
  v30 = v57;
  v17(v7, v57);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v95);
  v31 = v60;
  sub_26A4D6FD8();
  memcpy(&v81[32], v95, 0xBFuLL);
  v81[66] = sub_26A80A810;
  v81[67] = 0;
  memcpy(v81, v80, 0xFAuLL);
  sub_26A6BFF2C(v7);
  v58(v74, v7);
  v31(v7, v30);
  memcpy(v82, v74, sizeof(v82));
  memcpy(v83, v74, 0xFAuLL);
  v32 = sub_26A505008(v83);
  v54 = v2;
  v51[1] = v29;
  v52 = v28;
  if (v32 == 1)
  {
    sub_26A6BFF2C(v7);
    v28(v65, v7);
    v31(v7, v30);
    memcpy(v67, v65, 0xFAuLL);
    memcpy(v71, v65, 0xFAuLL);
    v33 = sub_26A505008(v71);
    v34 = v59;
    if (v33 == 1)
    {
      v35 = v57;
LABEL_28:
      bzero(v79, 0x140uLL);
      goto LABEL_32;
    }

    sub_26A4D6FD8();
  }

  else
  {
    sub_26A4D6FD8();
    v34 = v59;
  }

  v36 = *&v54[v34[14]];
  sub_26A6BFF2C(v7);
  v36(v74, v7);
  v35 = v57;
  v60(v7, v57);
  memcpy(v67, v74, 0xFAuLL);
  memcpy(v71, v74, 0xFAuLL);
  if (sub_26A505008(v71) == 1)
  {
    v34 = v59;
    goto LABEL_28;
  }

  sub_26A4D6FD8();
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  v37 = xmmword_2803B00A0;
  v38 = byte_2803B00B0;
  v39 = qword_2803B00B8;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v96);
  sub_26A4D6FD8();
  memcpy(&v74[2], v96, 0xBFuLL);
  *(&v74[19] + 1) = 0;
  v74[0] = v37;
  LOBYTE(v74[1]) = v38;
  *&v74[19] = sub_26A80A810;
  *(&v74[1] + 1) = v39;
  memcpy(v79, v74, sizeof(v79));
  sub_26A4EF6C0(v37, *(&v37 + 1), v38);

  v35 = v57;
  v34 = v59;
LABEL_32:
  v40 = v54;
  v41 = *&v54[v34[14]];
  sub_26A6BFF2C(v7);
  v54 = v41;
  (v41)(v73, v7);
  v42 = v60;
  v60(v7, v35);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v97);
  sub_26A4D6FD8();
  memcpy(&v74[16], v97, 0xBFuLL);
  v75 = sub_26A80A810;
  v76 = 0;
  memcpy(v74, v73, 0xFAuLL);
  sub_26A6BFF2C(v7);
  v58(v71, v7);
  v42(v7, v35);
  memcpy(v77, v71, sizeof(v77));
  memcpy(v78, v71, 0xFAuLL);
  if (sub_26A505008(v78) == 1)
  {
    sub_26A6BFF2C(v7);
    v52(v63, v7);
    v42(v7, v35);
    memcpy(v65, v63, 0xFAuLL);
    memcpy(v67, v63, 0xFAuLL);
    if (sub_26A505008(v67) == 1)
    {
      sub_26A6BFF2C(v7);
      (v54)(v68, v7);
      v42(v7, v35);
      memcpy(v72, v68, 0xFAuLL);
      memcpy(v61, v68, 0xFAuLL);
      if (sub_26A505008(v61) == 1)
      {
        v43 = v59;
LABEL_37:
        bzero(v72, 0x140uLL);
        goto LABEL_41;
      }
    }
  }

  sub_26A4D6FD8();
  v43 = v59;
  v44 = *&v40[v59[16]];
  sub_26A6BFF2C(v7);
  v44(v71, v7);
  v60(v7, v35);
  memcpy(v65, v71, 0xFAuLL);
  memcpy(v67, v71, 0xFAuLL);
  if (sub_26A505008(v67) == 1)
  {
    goto LABEL_37;
  }

  sub_26A4D6FD8();
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  v46 = *(&xmmword_2803B00A0 + 1);
  v45 = xmmword_2803B00A0;
  v47 = byte_2803B00B0;
  v48 = qword_2803B00B8;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v98);
  sub_26A4D6FD8();
  memcpy(&v71[4], v98, 0xBFuLL);
  v71[39] = 0;
  v71[0] = v45;
  v71[1] = v46;
  LOBYTE(v71[2]) = v47;
  v71[38] = sub_26A80A810;
  v71[3] = v48;
  memcpy(v72, v71, sizeof(v72));
  sub_26A4EF6C0(v45, v46, v47);

  v35 = v57;
  v43 = v59;
LABEL_41:
  v49 = *&v40[v43[16]];
  sub_26A6BFF2C(v7);
  v49(v70, v7);
  v60(v7, v35);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AEE74(v99);
  sub_26A4D6FD8();
  memcpy(&v71[32], v99, 0xBFuLL);
  v71[66] = sub_26A80A810;
  v71[67] = 0;
  memcpy(v71, v70, 0xFAuLL);
  sub_26A4D7E54();
  v69[0] = v68;
  sub_26A4D7E54();
  v69[1] = v67;
  sub_26A4D7E54();
  v69[2] = &v66;
  sub_26A4D7E54();
  v69[3] = v65;
  sub_26A4D7E54();
  v69[4] = &v64;
  sub_26A4D7E54();
  v69[5] = v63;
  sub_26A4D7E54();
  v69[6] = &v62;
  sub_26A4D7E54();
  v69[7] = v61;
  sub_26A5946C8(v69);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

void sub_26A6C6464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v10)
  {
    *(inited + 40) = v10;
    *(inited + 56) = v11;
    *(inited + 72) = v12;
  }

  else
  {
    sub_26A4F20CC(v13, inited + 40);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4D7DCC();
  v9 = sub_26A8516A8();
  sub_26A850498();
  v13[0] = &type metadata for TextVibrancyShapeStyle;
  v13[1] = sub_26A573830();
  sub_26A80D690(v9);
}

uint64_t sub_26A6C6724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v8 = qword_281588998;
  *(v7 + 32) = qword_281588998;
  v9 = byte_2815889A0;
  *(v7 + 40) = byte_2815889A0;
  *(v7 + 48) = 1;
  *(v7 + 56) = 3;
  sub_26A4E324C(v8, v9);
  sub_26A621A9C(v7);
  *(inited + 32) = v10;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_26A8570D0;
  v12 = qword_281588998;
  *(v11 + 32) = qword_281588998;
  v13 = byte_2815889A0;
  *(v11 + 40) = byte_2815889A0;
  sub_26A4E324C(v12, v13);

  sub_26A58787C(v14);
  sub_26A5075B0();

  if (v17)
  {
    *(inited + 40) = v17;
    *(inited + 56) = v18;
    *(inited + 72) = v19;
  }

  else
  {
    sub_26A4F20CC(v20, inited + 40);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4D7DCC();
  v15 = sub_26A8516A8();
  v20[0] = 0u;
  sub_26A66DDEC(v15, a4);

  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

void sub_26A6C6A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A864670;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A8502F8();
  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04F8];
  v8 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A857110;
  v10 = qword_281588968;
  *(v9 + 32) = qword_281588968;
  v11 = byte_281588970;
  *(v9 + 40) = byte_281588970;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 64) = 1;
  *(v9 + 72) = 10;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A8502F8();
  sub_26A8503C8();
  v13 = sub_26A850428();

  v14 = sub_26A84FEA8();
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_26A857110;
  v16 = qword_281588968;
  *(v15 + 32) = qword_281588968;
  v17 = byte_281588970;
  *(v15 + 40) = byte_281588970;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 64) = 1;
  *(v15 + 72) = 4;
  sub_26A4E324C(v16, v17);
  sub_26A621A9C(v15);
  *(inited + 144) = v18;
  v19 = sub_26A850408();
  v20 = sub_26A84FEA8();
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 160) = v20;
  *(inited + 152) = v19;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26A8570F0;
  v22 = qword_281588968;
  *(v21 + 32) = qword_281588968;
  v23 = byte_281588970;
  *(v21 + 40) = byte_281588970;
  *(v21 + 48) = 3;
  *(v21 + 56) = 1;
  sub_26A4E324C(v22, v23);
  sub_26A621A9C(v21);
  *(inited + 200) = v24;
  sub_26A8502F8();
  sub_26A8503C8();
  v25 = sub_26A850428();

  v26 = sub_26A84FEA8();
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  *(inited + 216) = v26;
  *(inited + 208) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4D7DCC();
  v27 = sub_26A8516A8();
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_26A8570F0;
  v29 = qword_281588968;
  *(v28 + 32) = qword_281588968;
  v30 = byte_281588970;
  *(v28 + 40) = byte_281588970;
  *(v28 + 48) = 1;
  *(v28 + 56) = 3;
  sub_26A4E324C(v29, v30);

  sub_26A58787C(v31);
  sub_26A5075B0();

  if (v32)
  {
    v35[0] = v32;
    v35[1] = v33;
    v35[2] = v34;
  }

  else
  {
    sub_26A4F20CC(&v36, v35);
  }

  sub_26A4D6FD8();
  sub_26A80D690(v27);
}

void sub_26A6C6E14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850458();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v6 = sub_26A573830();
  *(inited + 80) = v6;
  *(inited + 48) = 1;
  *(inited + 40) = v5;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26A857110;
  v8 = qword_281588968;
  *(v7 + 32) = qword_281588968;
  v9 = byte_281588970;
  *(v7 + 40) = byte_281588970;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 64) = 1;
  *(v7 + 72) = 4;
  sub_26A4E324C(v8, v9);
  sub_26A621A9C(v7);
  *(inited + 88) = v10;
  v11 = sub_26A850418();
  v12 = sub_26A84FEC8();
  v13 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v13;
  *(inited + 104) = v12;
  *(inited + 96) = v11;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26A8570F0;
  v15 = qword_281588968;
  *(v14 + 32) = qword_281588968;
  v16 = byte_281588970;
  *(v14 + 40) = byte_281588970;
  *(v14 + 48) = 3;
  *(v14 + 56) = 1;
  sub_26A4E324C(v15, v16);
  sub_26A621A9C(v14);
  *(inited + 144) = v17;
  v18 = sub_26A8502D8();
  *(inited + 184) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 192) = v6;
  *(inited + 160) = 1;
  *(inited + 152) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4D7DCC();
  v19 = sub_26A8516A8();
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_26A8570F0;
  v21 = qword_281588968;
  *(v20 + 32) = qword_281588968;
  v22 = byte_281588970;
  *(v20 + 40) = byte_281588970;
  *(v20 + 48) = 1;
  *(v20 + 56) = 3;
  sub_26A4E324C(v21, v22);

  sub_26A58787C(v23);
  sub_26A5075B0();

  if (v24)
  {
    v27[0] = v24;
    v27[1] = v25;
    v27[2] = v26;
  }

  else
  {
    sub_26A4F20CC(&v28, v27);
  }

  sub_26A4D6FD8();
  sub_26A80D690(v19);
}

void SimpleItemRichSearchResult.view.getter()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v46 = v3;
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v45 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v11 = sub_26A84DC28();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for SimpleItemRichSearchResultView(0);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA900, &qword_26A8569E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA908, &qword_26A8569E8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  (*(v13 + 16))(v17, v1, v11, v30);
  v48 = v22;
  sub_26A6C0858();
  v51 = v1;
  v31 = v47;
  sub_26A84DC08();
  sub_26A4D7EA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v33 = &v26[*(v23 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v35 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v36 = v45;
    v37 = *(v46 + 32);
    v37(v45, v9, v31);
    v38 = swift_getKeyPath();
    v39 = &v26[*(v23 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v37(v39 + v40, v36, v31);
    v41 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
    *v39 = v38;
  }

  sub_26A6C760C(v48, v26);
  v42 = sub_26A84DBC8();
  sub_26A4DE2CC(v42, v43);

  sub_26A4D6FD8();
  sub_26A84DBD8();

  sub_26A4D7E54();
  sub_26A6C7670();
  sub_26A851248();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6C760C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemRichSearchResultView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6C7670()
{
  result = qword_2803B3B70;
  if (!qword_2803B3B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA908, &qword_26A8569E8);
    sub_26A6C7728();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3B70);
  }

  return result;
}

unint64_t sub_26A6C7728()
{
  result = qword_2803B3B78;
  if (!qword_2803B3B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8F8, &qword_26A8569D8);
    sub_26A6C77B4();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3B78);
  }

  return result;
}

unint64_t sub_26A6C77B4()
{
  result = qword_2803B3B80;
  if (!qword_2803B3B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA900, &qword_26A8569E0);
    sub_26A6C7910();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3B80);
  }

  return result;
}

unint64_t sub_26A6C78B8(uint64_t a1)
{
  result = sub_26A6C7910();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A6C7910()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A6C797C(uint64_t a1)
{
  sub_26A6C7C30(319, &qword_2803AE500, type metadata accessor for SimpleItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A6C7C94(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A6C7C30(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A6C7C30(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A6C7C30(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A6C7C30(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_26A4D27F4(319);
              if (v7 <= 0x3F)
              {
                sub_26A6C7C94(319, &qword_2803AFE60, &_s7ProcessON, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_26A5046B4();
                  if (v9 <= 0x3F)
                  {
                    sub_26A6C7C94(319, &qword_2803AB750, &type metadata for AnyPrivacySensitiveView, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26A6C7C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A6C7C94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A6C7CE4()
{
  result = qword_2803B3BA8;
  if (!qword_2803B3BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3B68, &qword_26A875C40);
    sub_26A6C7D70();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3BA8);
  }

  return result;
}

unint64_t sub_26A6C7D70()
{
  result = qword_2803B3BB0;
  if (!qword_2803B3BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3B60, &unk_26A875C30);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3BB0);
  }

  return result;
}

uint64_t sub_26A6C7E54@<X0>(uint64_t x8_0@<X8>)
{
  v3 = sub_26A84DC28();
  OUTLINED_FUNCTION_79(v3);

  return sub_26A6C1010(x8_0);
}

uint64_t objectdestroy_48Tm()
{
  sub_26A84DC28();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A6C8084(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = sub_26A84DC28();
  OUTLINED_FUNCTION_79(v7);
  return a3(a1, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a2);
}

uint64_t sub_26A6C812C(uint64_t a1)
{
  v2 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A6C81A8(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for SimpleItemRichSearchResultView.Constants(0);
  __swift_allocate_value_buffer(v5, a3);
  v6 = __swift_project_value_buffer(v5, a3);
  v7 = *MEMORY[0x277D62B20];
  sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  result = (*(v8 + 104))(v6, v7);
  *(v6 + *(v5 + 20)) = 0x4024000000000000;
  *(v6 + *(v5 + 24)) = a1;
  return result;
}

double sub_26A6C8254(uint64_t a1)
{
  if (qword_2803A8D60 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803B3B30);
  sub_26A6C84C0();
  return result;
}

double sub_26A6C82D4(uint64_t a1)
{
  if (qword_2803A8D68 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803B3B48);
  sub_26A6C84C0();
  return result;
}

unint64_t sub_26A6C8364()
{
  result = qword_2803B3C28;
  if (!qword_2803B3C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3C20, &qword_26A875E28);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3C28);
  }

  return result;
}

uint64_t sub_26A6C8444(uint64_t a1)
{
  result = sub_26A84B1D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A6C84C0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

__n128 OUTLINED_FUNCTION_0_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a20, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __n128 a21, __int128 a22, uint64_t a23)
{
  result = a21;
  *(a1 + 16) = a21;
  *(a1 + 32) = a22;
  *(a1 + 48) = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_30@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_14_31@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_20_23(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t DisambiguationTitle.init(text1:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  sub_26A4EA070(a2, v14, &qword_2803A91B8, &qword_26A8575C0);
  v10 = v15;
  if (v15)
  {
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12 = (*(v11 + 8))(v10, v11);
    sub_26A4E2544(a2, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_26A4E2544(a2, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(v14, &qword_2803A91B8, &qword_26A8575C0);
    v12 = 0;
  }

  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
  *(a3 + 24) = v12;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A6C8718@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a5;
  v42 = sub_26A84B1D8();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98, &unk_26A857930);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v41 - v13);
  MEMORY[0x28223BE20](v15);
  v43 = &v41 - v16;
  v17 = sub_26A84F988();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      v21 = v47;
      if (qword_2803A9068 != -1)
      {
        swift_once();
      }

      v22 = &unk_2803D29E0;
      goto LABEL_10;
    }
  }

  else
  {

    sub_26A851EA8();
    v23 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(a1, 0);
    (*(v18 + 8))(v20, v17);
    if (v49[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v21 = v47;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  v22 = &unk_281588848;
LABEL_10:
  v24 = v46;
  sub_26A4EA070(v22, v49, &qword_2803AA880, &unk_26A8567F0);
  sub_26A4EA070(v49, &v48[25], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v50);
  sub_26A4E2544(v49, &qword_2803AA880, &unk_26A8567F0);
  memcpy(&v48[1], v50, 0xBFuLL);
  v48[35] = sub_26A80A810;
  v48[36] = 0;
  v48[0] = v24;
  memcpy(v49, v48, sizeof(v49));
  if (v21)
  {
    v25 = v7;
    v26 = *(v7 + 104);
    v27 = v42;
    v26(v9, *MEMORY[0x277D62B30], v42);
    KeyPath = swift_getKeyPath();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
    v30 = (v14 + *(v29 + 36));
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v25 + 32))(v30 + v31, v9, v27);
    v32 = v47;
    __swift_storeEnumTagSinglePayload(v30 + v31, 0, 1, v27);
    *v30 = KeyPath;
    *v14 = v32;
    v33 = v14;
    v34 = 0;
    v35 = v29;
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
    v33 = v14;
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  v36 = v43;
  sub_26A6C8DAC(v14, v43);
  sub_26A4EA070(v49, v48, &qword_2803A99A0, &unk_26A856800);
  v37 = v44;
  sub_26A4EA070(v36, v44, &qword_2803AAF98, &unk_26A857930);
  v38 = v45;
  sub_26A4EA070(v48, v45, &qword_2803A99A0, &unk_26A856800);
  *(v38 + 296) = 0;
  *(v38 + 304) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CB0, &qword_26A876080);
  sub_26A4EA070(v37, v38 + *(v39 + 64), &qword_2803AAF98, &unk_26A857930);

  sub_26A4E2544(v36, &qword_2803AAF98, &unk_26A857930);
  sub_26A4E2544(v49, &qword_2803A99A0, &unk_26A856800);
  sub_26A4E2544(v37, &qword_2803AAF98, &unk_26A857930);
  return sub_26A4E2544(v48, &qword_2803A99A0, &unk_26A856800);
}

uint64_t DisambiguationTitle.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3C98, &qword_26A875F80);
  return sub_26A6C8718(v4, v5, v7, v6, a2 + *(v8 + 44));
}

unint64_t sub_26A6C8D48()
{
  result = qword_2803B3CA0;
  if (!qword_2803B3CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CA8, &qword_26A876078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CA0);
  }

  return result;
}

uint64_t sub_26A6C8DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98, &unk_26A857930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6C8E1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A8524B8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26A6C8E68(char a1)
{
  if (!a1)
  {
    return 0x6E6F74747542;
  }

  if (a1 == 1)
  {
    return 1954047316;
  }

  return 0x6567616D49;
}

unint64_t sub_26A6C8ED4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26A6C8E1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26A6C8F04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6C8E68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_26A6C8F30(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v7 = sub_26A84F988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = 1954047316;
    }

    else
    {
      v12 = 0x6567616D49;
    }

    if (a2 == 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v12 = 0x6E6F74747542;
  }

  MEMORY[0x26D663B00](v12, v13, v9);

  MEMORY[0x26D663B00](95, 0xE100000000000000);
  if ((a4 & 1) == 0)
  {

    sub_26A851EA8();
    v14 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a3, 0);
    (*(v8 + 8))(v11, v7);
    a3 = v18;
  }

  v18 = a3;
  v15 = sub_26A852568();
  MEMORY[0x26D663B00](v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CC0, &qword_26A8761E8);
  sub_26A6C9320();
  sub_26A850A68();

  return result;
}

uint64_t sub_26A6C9194()
{
  sub_26A6C920C();
  sub_26A84F998();
  return v1;
}

unint64_t sub_26A6C920C()
{
  result = qword_2803B3CB8;
  if (!qword_2803B3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CB8);
  }

  return result;
}

uint64_t sub_26A6C9270(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_26A6C92B0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_26A6C9320()
{
  result = qword_2803B3CC8;
  if (!qword_2803B3CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CC0, &qword_26A8761E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ElementAccessibilityIdModifier.ElementType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A6C9460()
{
  result = qword_2803B3CD0;
  if (!qword_2803B3CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CD8, qword_26A876200);
    sub_26A6C9320();
    sub_26A6C94EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CD0);
  }

  return result;
}

unint64_t sub_26A6C94EC()
{
  result = qword_2803ABCA0;
  if (!qword_2803ABCA0)
  {
    sub_26A850128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABCA0);
  }

  return result;
}

unint64_t sub_26A6C9548()
{
  result = qword_2803B3CE0;
  if (!qword_2803B3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3CE0);
  }

  return result;
}

double TableRowWatchView.init(row:header:columns:)@<D0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758, &qword_26A8762B0);
  OUTLINED_FUNCTION_2_5(v5);
  v28 = v6;
  v27 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v26[1] = v9;
  OUTLINED_FUNCTION_25_2();
  v10 = sub_26A84E4B8();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  v17 = type metadata accessor for TableRowWatchView(0);
  v18 = v17[6];
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v19 = (a3 + v17[10]);
  v30 = sub_26A8516A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05A8, &qword_26A8694A8);
  sub_26A851048();
  v20 = v32;
  *v19 = v31;
  v19[1] = v20;
  (*(v12 + 16))(a3 + v17[8], a1, v10);
  sub_26A4D7E54();
  *(a3 + v17[9]) = v29;
  v21 = *(v12 + 32);
  v21(v16, a1, v10);
  sub_26A4D7EA8();
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = (v27 + ((v14 + *(v28 + 80) + v22) & ~*(v28 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v21((v24 + v22), v16, v10);
  sub_26A4D7EA8();
  *(v24 + v23) = v29;
  *a3 = sub_26A5FF548;
  *(a3 + 8) = v24;
  *(a3 + 16) = 0;

  return result;
}

uint64_t type metadata accessor for TableRowWatchView(uint64_t a1)
{
  result = qword_2803B3D08;
  if (!qword_2803B3D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6C98F8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A6C9A28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for TableRowWatchView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A6C9C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758, &qword_26A8762B0);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_26A84E4B8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, a1);
  sub_26A4D7E54();
  type metadata accessor for TableRowWatchState(0);
  swift_allocObject();

  return sub_26A5CBFB8(v12, v8, a3);
}

uint64_t TableRowWatchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v93 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v92 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v91 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160, &unk_26A85D4C0);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v95 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v96 = v90 - v11;
  v12 = OUTLINED_FUNCTION_25_2();
  v13 = type metadata accessor for VisualElementView(v12);
  v14 = OUTLINED_FUNCTION_79(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v99 = v16 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CE8, &qword_26A876318);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_82();
  v98 = v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CF0, &unk_26A876320);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82();
  v100 = v20;
  OUTLINED_FUNCTION_25_2();
  v21 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v90[0] = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v90[3] = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = v90 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  v35 = OUTLINED_FUNCTION_79(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  v38 = v90 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v40 = OUTLINED_FUNCTION_79(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v90 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9A10, &unk_26A876330);
  OUTLINED_FUNCTION_79(v47);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_82();
  v102 = v49;
  v50 = OUTLINED_FUNCTION_25_2();
  v90[2] = *(type metadata accessor for TableRowWatchView(v50) + 32);
  sub_26A84E478();
  v104 = 0u;
  v105 = 0u;
  v106 = 1;
  v90[1] = sub_26A6C98F8();
  sub_26A6C9A28(v38);
  v51 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v51);
  v103 = v1;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v43, 1, v21) == 1)
  {
    sub_26A4DBD10(v43, &qword_2803B3800, &unk_26A856760);
    v52 = type metadata accessor for ActionType(0);
    v53 = v33;
    v54 = 1;
  }

  else
  {
    v55 = *(v90[0] + 32);
    v55(v26, v43, v21);
    v55(v33, v26, v21);
    v56 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    v53 = v33;
    v54 = 0;
    v52 = v56;
  }

  __swift_storeEnumTagSinglePayload(v53, v54, 1, v52);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4CCA70();
  sub_26A4DBD10(v33, &qword_2803A91C8, &unk_26A856820);
  sub_26A4DBD10(v38, &qword_2803A91C0, &unk_26A854CB0);
  sub_26A4DBD10(v46, &qword_2803B3800, &unk_26A856760);
  sub_26A84E438();
  v57 = sub_26A6C98F8();
  v58 = v91;
  VRXIdiom.idiom.getter(v57, v91);
  v59 = v95;
  sub_26A851AB8();

  (*(v92 + 8))(v58, v93);
  v60 = sub_26A84BA88();
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
    OUTLINED_FUNCTION_4_11();
    v62 = v96;
    (*(v61 + 104))(v96);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60) != 1)
    {
      sub_26A4DBD10(v59, &qword_2803AD160, &unk_26A85D4C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    v62 = v96;
    (*(v63 + 32))(v96, v59, v60);
  }

  __swift_storeEnumTagSinglePayload(v62, 0, 1, v60);
  sub_26A4D7EA8();
  v64 = (v98 + *(v94 + 36));
  v65 = *(sub_26A84F5F8() + 20);
  v66 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v67 + 104))(&v64[v65], v66);
  __asm { FMOV            V0.2D, #15.0 }

  *v64 = _Q0;
  *&v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
  sub_26A6CC1C0();
  LOBYTE(v66) = sub_26A850238();
  sub_26A84ED48();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v100;
  sub_26A4D7EA8();
  v82 = v81 + *(v97 + 36);
  *v82 = v66;
  *(v82 + 8) = v74;
  *(v82 + 16) = v76;
  *(v82 + 24) = v78;
  *(v82 + 32) = v80;
  *(v82 + 40) = 0;
  v83 = sub_26A851448();
  v85 = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3CF8, &qword_26A876340);
  v87 = v101 + *(v86 + 36);
  sub_26A4D7EA8();
  v88 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D00, &qword_26A876348) + 36));
  *v88 = v83;
  v88[1] = v85;
  return sub_26A4D7EA8();
}

uint64_t sub_26A6CA660@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D40, &qword_26A8763C8);
  return sub_26A6CA6DC(a2 + *(v3 + 44));
}

uint64_t sub_26A6CA6DC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D48, &qword_26A8763D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  *v8 = sub_26A84FBF8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D50, &qword_26A8763D8);
  sub_26A6CA82C(&v8[*(v9 + 44)]);
  sub_26A4D7E54();
  sub_26A4D7E54();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D58, &qword_26A8763E0) + 48);
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_26A4DBD10(v8, &qword_2803B3D48, &qword_26A8763D0);
  return sub_26A4DBD10(v5, &qword_2803B3D48, &qword_26A8763D0);
}

uint64_t sub_26A6CA82C@<X0>(uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D60, &qword_26A8763E8);
  MEMORY[0x28223BE20](v39);
  v3 = &v27 - v2;
  v4 = type metadata accessor for TableRowWatchCellViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TableRowWatchView(0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D68, &qword_26A8763F0);
  MEMORY[0x28223BE20](v33);
  v31 = (&v27 - v8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D70, &qword_26A8763F8);
  MEMORY[0x28223BE20](v35);
  v37 = &v27 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D78, &qword_26A876400);
  MEMORY[0x28223BE20](v32);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D80, &qword_26A876408);
  MEMORY[0x28223BE20](v36);
  v34 = &v27 - v10;
  v11 = type metadata accessor for TableRowWatchState.Layout(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
  sub_26A84EEF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v13;
      v16 = sub_26A84FBF8();
      v17 = v31;
      *v31 = v16;
      v17[1] = 0x4020000000000000;
      *(v17 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DA8, &qword_26A876468);
      v40 = v15;
      sub_26A6CC618();
      swift_allocObject();
      sub_26A6CC1C0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF718, &qword_26A876470);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DB0, &qword_26A876478);
      sub_26A4DBCC8(&qword_2803B3DB8, &qword_2803AF718, &qword_26A876470, MEMORY[0x277D83980]);
      sub_26A6CC218();
      sub_26A6CC3B4();
      sub_26A851308();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A4DBCC8(&qword_2803B3D98, &qword_2803B3D68, &qword_26A8763F0, MEMORY[0x277CE1198]);
      v18 = v34;
      sub_26A84FDF8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A6CC0AC();
      sub_26A4DBCC8(&qword_2803B3DA0, &qword_2803B3D60, &qword_26A8763E8, MEMORY[0x277CE1138]);
      sub_26A84FDF8();
      sub_26A4DBD10(v18, &qword_2803B3D80, &qword_26A876408);
      v19 = v17;
      v20 = &qword_2803B3D68;
      v21 = &qword_26A8763F0;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_26A4DBCC8(&qword_2803B3D98, &qword_2803B3D68, &qword_26A8763F0, MEMORY[0x277CE1198]);
      v26 = v34;
      sub_26A84FDF8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A6CC0AC();
      sub_26A4DBCC8(&qword_2803B3DA0, &qword_2803B3D60, &qword_26A8763E8, MEMORY[0x277CE1138]);
      sub_26A84FDF8();
      v19 = v26;
      v20 = &qword_2803B3D80;
      v21 = &qword_26A876408;
    }

    return sub_26A4DBD10(v19, v20, v21);
  }

  else
  {
    v22 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF740, &qword_26A865310) + 48));
    v23 = v30;
    sub_26A6CC1C0();
    *v3 = sub_26A84FA58();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D88, &qword_26A876460);
    sub_26A6CB08C(v22, &v3[*(v24 + 44)]);

    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A6CC0AC();
    sub_26A4DBCC8(&qword_2803B3DA0, &qword_2803B3D60, &qword_26A8763E8, MEMORY[0x277CE1138]);
    sub_26A84FDF8();
    sub_26A4DBD10(v3, &qword_2803B3D60, &qword_26A8763E8);
    return sub_26A6CC164(v23);
  }
}

uint64_t sub_26A6CB08C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v30 = a4;
  v4 = type metadata accessor for TableRowWatchView(0);
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3D68, &qword_26A8763F0);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E08, &qword_26A8764A8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_26A6CC618();
  v16 = type metadata accessor for TableRowCellWatchView(0);
  v17 = &v15[v16[5]];
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
  *v17 = sub_26A84F678();
  v17[1] = v18;
  v19 = v16[6];
  *&v15[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  *&v15[v16[7]] = 0x4020000000000000;
  v20 = sub_26A84EEF8();
  v21 = sub_26A84EB78();
  v22 = &v15[*(v11 + 44)];
  *v22 = v21;
  v22[1] = v20;
  *v9 = sub_26A84FBF8();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DA8, &qword_26A876468);
  v31 = v27;
  sub_26A6CC618();
  swift_allocObject();
  sub_26A6CC1C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF718, &qword_26A876470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DB0, &qword_26A876478);
  sub_26A4DBCC8(&qword_2803B3DB8, &qword_2803AF718, &qword_26A876470, MEMORY[0x277D83980]);
  sub_26A6CC218();
  sub_26A6CC3B4();
  sub_26A851308();
  v23 = v28;
  sub_26A4D7E54();
  v24 = v29;
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E48, &unk_26A8764C0);
  sub_26A4D7E54();
  sub_26A4DBD10(v9, &qword_2803B3D68, &qword_26A8763F0);
  sub_26A4DBD10(v15, &qword_2803B3E08, &qword_26A8764A8);
  sub_26A4DBD10(v24, &qword_2803B3D68, &qword_26A8763F0);
  return sub_26A4DBD10(v23, &qword_2803B3E08, &qword_26A8764A8);
}

uint64_t sub_26A6CB55C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for TableRowWatchView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = a1[1];
  *a3 = sub_26A84FA58();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DF0, &qword_26A876490);
  sub_26A6CB74C(v6, (a3 + *(v7 + 44)));
  sub_26A6CC618();
  v8 = swift_allocObject();
  sub_26A6CC1C0();
  v9 = sub_26A851448();
  v11 = v10;
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DD0, &qword_26A876480) + 36));
  *v12 = sub_26A8027E0;
  v12[1] = 0;
  v12[2] = v9;
  v12[3] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26A6CC408;
  *(v13 + 24) = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DB0, &qword_26A876478);
  v15 = (a3 + *(result + 36));
  *v15 = sub_26A52E998;
  v15[1] = v13;
  return result;
}

uint64_t sub_26A6CB74C@<X0>(uint64_t a1@<X1>, char *a3@<X8>)
{
  v5 = type metadata accessor for TableRowWatchView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3DF8, &qword_26A876498);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  v17[1] = a1;
  sub_26A6CC618();
  swift_allocObject();
  sub_26A6CC1C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E00, &qword_26A8764A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E08, &qword_26A8764A8);
  sub_26A4DBCC8(&qword_2803B3E10, &qword_2803B3E00, &qword_26A8764A0, MEMORY[0x277D83980]);
  sub_26A6CC4E8();
  sub_26A6CC5D0(&qword_2803B3E38, type metadata accessor for TableRowWatchCellViewModel, &unk_26A869FFC);
  sub_26A851308();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v13(a3, v9, v6);
  v14 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E40, &qword_26A8764B8) + 48)];
  *v14 = 0;
  v14[8] = 0;
  v15 = *(v7 + 8);
  v15(v12, v6);
  return (v15)(v9, v6);
}

uint64_t sub_26A6CBA8C@<X0>(uint64_t a3@<X8>)
{
  sub_26A6CC618();
  v4 = type metadata accessor for TableRowCellWatchView(0);
  v5 = (a3 + v4[5]);
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
  *v5 = sub_26A84F678();
  v5[1] = v6;
  v7 = v4[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  *(a3 + v4[7]) = 0x4020000000000000;
  v8 = sub_26A84EEF8();
  v9 = sub_26A84EB78();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3E08, &qword_26A8764A8);
  v11 = (a3 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

uint64_t sub_26A6CBBD4(uint64_t *a1, double a2)
{
  type metadata accessor for TableRowWatchState(0);
  sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
  *(sub_26A84EEF8() + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_gridWidth) = a2;
}

void sub_26A6CBCB0(uint64_t a1)
{
  sub_26A6CBE6C(319);
  if (v1 <= 0x3F)
  {
    sub_26A6CBF00(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A6CBF00(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A6CBF00(319, &qword_2803AF6F8, MEMORY[0x277D628A0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26A84E4B8();
          if (v5 <= 0x3F)
          {
            sub_26A6CBF00(319, &qword_2803B0528, MEMORY[0x277D63680], MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_26A6CBF64(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A6CBE6C(uint64_t a1)
{
  if (!qword_2803B3D18)
  {
    type metadata accessor for TableRowWatchState(255);
    sub_26A6CC5D0(&qword_2803B30B0, type metadata accessor for TableRowWatchState, &unk_26A8652D0);
    v1 = sub_26A84EF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B3D18);
    }
  }
}

void sub_26A6CBF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A6CBF64(uint64_t a1)
{
  if (!qword_2803B3D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B05A8, &qword_26A8694A8);
    v1 = sub_26A851088();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B3D20);
    }
  }
}

unint64_t sub_26A6CBFC8()
{
  result = qword_2803B3D28;
  if (!qword_2803B3D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3CF8, &qword_26A876340);
    sub_26A4DBCC8(&qword_2803B3D30, &qword_2803A9A10, &unk_26A876330, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(&qword_2803B3D38, &qword_2803B3D00, &qword_26A876348, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3D28);
  }

  return result;
}

unint64_t sub_26A6CC0AC()
{
  result = qword_2803B3D90;
  if (!qword_2803B3D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3D80, &qword_26A876408);
    sub_26A4DBCC8(&qword_2803B3D98, &qword_2803B3D68, &qword_26A8763F0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3D90);
  }

  return result;
}

uint64_t sub_26A6CC164(uint64_t a1)
{
  v2 = type metadata accessor for TableRowWatchCellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A6CC1C0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A6CC218()
{
  result = qword_2803B3DC0;
  if (!qword_2803B3DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3DB0, &qword_26A876478);
    sub_26A6CC2D0();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28, &qword_26A8640E0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3DC0);
  }

  return result;
}

unint64_t sub_26A6CC2D0()
{
  result = qword_2803B3DC8;
  if (!qword_2803B3DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3DD0, &qword_26A876480);
    sub_26A4DBCC8(&qword_2803B3DD8, &qword_2803B3DE0, &qword_26A876488, MEMORY[0x277CE1138]);
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18, &unk_26A855A50, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3DC8);
  }

  return result;
}

unint64_t sub_26A6CC3B4()
{
  result = qword_2803B3DE8;
  if (!qword_2803B3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3DE8);
  }

  return result;
}

uint64_t sub_26A6CC408(double a1)
{
  v3 = type metadata accessor for TableRowWatchView(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_26A6CBBD4(v5, a1);
}

uint64_t sub_26A6CC47C()
{
  v0 = type metadata accessor for TableRowWatchView(0);
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_9_43();

  return sub_26A6CBA8C(v1);
}

unint64_t sub_26A6CC4E8()
{
  result = qword_2803B3E18;
  if (!qword_2803B3E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E08, &qword_26A8764A8);
    sub_26A6CC5D0(&qword_2803B3E20, type metadata accessor for TableRowCellWatchView, &unk_26A872E98);
    sub_26A4DBCC8(&qword_2803B3E28, &qword_2803B3E30, &qword_26A8764B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3E18);
  }

  return result;
}

uint64_t sub_26A6CC5D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A6CC618()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for TableRowWatchView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A492280(*v2, *(v2 + 8));
  sub_26A4D82E8(*(v2 + 24), *(v2 + 32));
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[7];
  v6 = sub_26A84AEB8();
  if (!__swift_getEnumTagSinglePayload(v2 + v5, 1, v6))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v7 + 8))(v2 + v5, v6);
  }

  v8 = v1[8];
  sub_26A84E4B8();
  OUTLINED_FUNCTION_46();
  (*(v9 + 8))(v2 + v8);

  return swift_deallocObject();
}

uint64_t sub_26A6CC844()
{
  v0 = type metadata accessor for TableRowWatchView(0);
  OUTLINED_FUNCTION_79(v0);
  v1 = OUTLINED_FUNCTION_9_43();

  return sub_26A6CB55C(v1, v2);
}

double sub_26A6CC8CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A6CC940()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t sub_26A6CC9B8()
{
  v1 = OBJC_IVAR____TtC9SnippetUI24TableRowScaleToFitHeight__maxHeight;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for TableRowScaleToFitHeight(uint64_t a1)
{
  result = qword_2803B3E58;
  if (!qword_2803B3E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6CCAB4(uint64_t a1)
{
  sub_26A532FDC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26A6CCB44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtC9SnippetUI24TableRowScaleToFitHeight__maxHeight;
  v7[1] = 0x4059000000000000;
  sub_26A84EBD8();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_26A6CCC3C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TableRowScaleToFitHeight(0);
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

void View.buttonRole(_:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v13[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E68, &unk_26A87B210);
  v5 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  v11 = *v3;
  swift_getKeyPath();
  v14 = v11;
  sub_26A8509A8();

  v14 = v11;
  OUTLINED_FUNCTION_3_11();
  v12 = sub_26A549F4C();
  v13[1] = v1;
  v13[2] = v12;
  swift_getWitnessTable();
  sub_26A6D0F18();
  sub_26A850BE8();
  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6CCE2C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6CCE0C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A6CCE90@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1;
  *(a2 + 33) = a1;
  *(a2 + 34) = 0;
  OUTLINED_FUNCTION_4_56();
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  v5 = type metadata accessor for RFButtonStyle(0);
  v6 = v5[9];
  *(a2 + v6) = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  OUTLINED_FUNCTION_28_9(v7);
  OUTLINED_FUNCTION_18_22();
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v8);
  v9 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v9);
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v10);
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_5_55(v11);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_13_31(v12);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v13);
  v14 = v5[18];
  *(a2 + v14) = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_27_13(v15);
  v16 = swift_getKeyPath();
  v17 = OUTLINED_FUNCTION_15_5(v16);
  v25 = v5[20];
  if (qword_2803A8AE8 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
  }

  OUTLINED_FUNCTION_25_20(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], v57[12], v57[13], v57[14], v57[15], v57[16], v57[17], v57[18], v57[19], v57[20], v57[21], v57[22], v57[23], v57[24], v57[25]);
  OUTLINED_FUNCTION_24_21();
  sub_26A4EF6D0();
  v26 = sub_26A6AEE74(v57);
  OUTLINED_FUNCTION_23_18(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  memcpy(__dst, (a2 + v25 + 400), sizeof(__dst));
  OUTLINED_FUNCTION_22_26();
  return sub_26A54DFFC(__dst, &v35);
}

uint64_t sub_26A6CD0B8()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A6CD098();
  *v0 = result;
  return result;
}

uint64_t sub_26A6CD0E0()
{

  OUTLINED_FUNCTION_16_22();
  return sub_26A6CD1E0(v0, v1, v2);
}

uint64_t sub_26A6CD138(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

uint64_t sub_26A6CD180()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A6CD118();
  *v0 = result;
  return result;
}

uint64_t sub_26A6CD1A8()
{

  OUTLINED_FUNCTION_15_26();
  return sub_26A6CD1E0(v0, v1, v2);
}

uint64_t static PrimitiveButtonStyle<>.rfButton(margin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 33) = 512;
  OUTLINED_FUNCTION_4_56();
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  v6 = type metadata accessor for RFButtonStyle(0);
  v7 = v6[9];
  *(a2 + v7) = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  OUTLINED_FUNCTION_28_9(v8);
  OUTLINED_FUNCTION_18_22();
  v9 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v9);
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v10);
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v11);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_5_55(v12);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_13_31(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v14);
  v15 = v6[18];
  *(a2 + v15) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_27_13(v16);
  v17 = swift_getKeyPath();
  v18 = OUTLINED_FUNCTION_15_5(v17);
  v26 = v6[20];
  if (qword_2803A8AE8 != -1)
  {
    v18 = OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
  }

  OUTLINED_FUNCTION_25_20(v18, v19, v20, v21, v22, v23, v24, v25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], v58[17], v58[18], v58[19], v58[20], v58[21], v58[22], v58[23], v58[24], v58[25]);
  OUTLINED_FUNCTION_24_21();
  sub_26A4EF6D0();
  v27 = sub_26A6AEE74(v58);
  OUTLINED_FUNCTION_23_18(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  memcpy(__dst, (a2 + v26 + 400), sizeof(__dst));
  OUTLINED_FUNCTION_22_26();
  return sub_26A54DFFC(__dst, &v36);
}

uint64_t static PrimitiveButtonStyle<>.rfButton(margin:hideIcon:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  swift_getKeyPath();
  v8 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v8;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 34) = a2;
  OUTLINED_FUNCTION_4_56();
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 0;
  v9 = type metadata accessor for RFButtonStyle(0);
  v10 = v9[9];
  *(a3 + v10) = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  OUTLINED_FUNCTION_28_9(v11);
  v12 = a3 + v9[10];
  *v12 = v7;
  *(v12 + 8) = 0;
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v14);
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_5_55(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_13_31(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v18);
  v19 = v9[18];
  *(a3 + v19) = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_27_13(v20);
  v21 = swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_15_5(v21);
  v30 = v9[20];
  if (qword_2803A8AE8 != -1)
  {
    v22 = OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
  }

  OUTLINED_FUNCTION_25_20(v22, v23, v24, v25, v26, v27, v28, v29, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v62[21], v62[22], v62[23], v62[24], v62[25]);
  OUTLINED_FUNCTION_24_21();
  sub_26A4EF6D0();
  v31 = sub_26A6AEE74(v62);
  OUTLINED_FUNCTION_23_18(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  memcpy(__dst, (a3 + v30 + 400), sizeof(__dst));
  OUTLINED_FUNCTION_22_26();
  return sub_26A54DFFC(__dst, &v40);
}

uint64_t type metadata accessor for RFButtonStyle(uint64_t a1)
{
  result = qword_2803B3E80;
  if (!qword_2803B3E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6CD6AC()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v9, &dword_26A48D000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v14;
  }

  return v8 & 1;
}

uint64_t sub_26A6CD7D0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for RFButtonStyle(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26A6CD924()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for RFButtonStyle(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26A6CDA78()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RFButtonStyle(0) + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A6CDBD0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for RFButtonStyle(0) + 60));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v11, &dword_26A48D000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v13, v14, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v16;
  }

  return v9;
}

uint64_t sub_26A6CDCFC()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RFButtonStyle(0) + 68);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6CDE50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for RFButtonStyle(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t RFButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RFButtonStyle(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_26A6CE194(v2, a1, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  sub_26A6D0F6C(v2, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  result = sub_26A6D0FD0(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  *(a2 + 16) = sub_26A6D1034;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 23;
  return result;
}

uint64_t sub_26A6CE194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 33))
  {
    if (*(a1 + 33) != 1)
    {
      sub_26A6CF2D4(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
      sub_26A6D1B70();
      result = sub_26A84FDF8();
      goto LABEL_7;
    }

    sub_26A6CEC24(a2);
  }

  else
  {
    sub_26A6CE300(a2);
  }

  sub_26A84FDF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
  sub_26A6D1B70();
  sub_26A84FDF8();

LABEL_7:
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 9) = v7;
  return result;
}

uint64_t sub_26A6CE300(uint64_t a1)
{
  v2 = v1;
  v91 = a1;
  v90 = sub_26A8501E8();
  v3 = *(v90 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RFButtonStyle(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84F988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F00, &qword_26A8768D0);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v75 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDA0, &qword_26A860068);
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v83 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDA8, &qword_26A860070);
  MEMORY[0x28223BE20](v16 - 8);
  v84 = &v75 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F08, &qword_26A8768D8);
  MEMORY[0x28223BE20](v82);
  v88 = &v75 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F10, &qword_26A8768E0);
  MEMORY[0x28223BE20](v85);
  v92 = &v75 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F18, &qword_26A8768E8);
  MEMORY[0x28223BE20](v95);
  v94 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v93 = &v75 - v22;
  v23 = v2 + *(v6 + 52);
  v24 = *v23;
  v80 = v23;
  v25 = *(v23 + 8) == 1;
  v78 = v9;
  v77 = v10;
  v76 = v12;
  if (v25)
  {
    v98 = v24;
  }

  else
  {

    sub_26A851EA8();
    v26 = sub_26A8501F8();
    v79 = v3;
    v27 = v26;
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v24, 0);
    v3 = v79;
    (*(v10 + 8))(v12, v9);
  }

  v28 = sub_26A84ED38();
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v28);
  v29 = v81;
  sub_26A6D0F6C(v2, v81);
  v30 = v87;
  v31 = v2;
  v32 = v29;
  v33 = v90;
  v34 = v91;
  (*(v3 + 16))(v87, v91, v90);
  v35 = *(v7 + 80);
  v36 = (v35 + 16) & ~v35;
  v79 = v35 | 7;
  v37 = (v36 + v8 + *(v3 + 80)) & ~*(v3 + 80);
  v38 = swift_allocObject();
  sub_26A6D0FD0(v32, v38 + v36);
  v39 = (*(v3 + 32))(v38 + v37, v30, v33);
  MEMORY[0x28223BE20](v39);
  *(&v75 - 2) = v34;
  *(&v75 - 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F20, &qword_26A8768F0);
  sub_26A6D1D58();
  v40 = v83;
  sub_26A8510C8();
  sub_26A6D0F6C(v31, v32);
  v41 = swift_allocObject();
  v42 = v32;
  v43 = v31;
  sub_26A6D0FD0(v42, v41 + v36);
  sub_26A57A0E0(sub_26A6D2488, v41, v84);

  (*(v86 + 8))(v40, v89);
  LOBYTE(v41) = sub_26A850278();
  sub_26A6D0158();
  sub_26A84ED48();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v88;
  sub_26A4EF020();
  v53 = &v52[*(v82 + 36)];
  *v53 = v41;
  *(v53 + 1) = v45;
  *(v53 + 2) = v47;
  *(v53 + 3) = v49;
  *(v53 + 4) = v51;
  v53[40] = 0;
  LOBYTE(v41) = sub_26A850298();
  sub_26A6D0158();
  sub_26A84ED48();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v92;
  sub_26A4EF020();
  v63 = &v62[*(v85 + 36)];
  *v63 = v41;
  *(v63 + 1) = v55;
  *(v63 + 2) = v57;
  *(v63 + 3) = v59;
  *(v63 + 4) = v61;
  v63[40] = 0;
  v64 = *v80;
  if (*(v80 + 8) == 1)
  {
    v97 = *v80;
  }

  else
  {

    sub_26A851EA8();
    v65 = sub_26A8501F8();
    sub_26A84EA78();

    v66 = v76;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v64, 0);
    (*(v77 + 8))(v66, v78);
    LOBYTE(v64) = v97;
  }

  v67 = sub_26A6CD7D0();
  v68 = sub_26A6CD924();
  v69 = *(v43 + 34);
  KeyPath = swift_getKeyPath();
  v71 = v93;
  sub_26A4EF020();
  v72 = &v71[*(v95 + 36)];
  *v72 = v64;
  *(v72 + 1) = v67;
  *(v72 + 2) = v68;
  v72[24] = v69;
  *(v72 + 4) = KeyPath;
  v72[40] = 0;
  sub_26A4EF6D0();
  sub_26A6D24F4();
  v73 = sub_26A851248();
  sub_26A54A088();
  return v73;
}

uint64_t sub_26A6CEC24(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v54 = sub_26A8501E8();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v54);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RFButtonStyle(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84F988();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F00, &qword_26A8768D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FD0, &qword_26A876968);
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v16 = &v42 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FD8, &qword_26A876970);
  v55 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v52 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v42 - v19;
  v20 = v2 + *(v6 + 52);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    LOBYTE(v56) = *v20;
  }

  else
  {

    sub_26A851EA8();
    v43 = v10;
    v22 = sub_26A8501F8();
    v44 = v4;
    v23 = v22;
    v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_26A84EA78();

    v24 = v45;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v21, 0);
    (*(v46 + 8))(v24, v43);
  }

  v25 = sub_26A84ED38();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
  sub_26A6D0F6C(v2, v9);
  v26 = v49;
  v27 = v51;
  v28 = v54;
  (*(v3 + 16))(v49, v51, v54);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = (v8 + *(v3 + 80) + v29) & ~*(v3 + 80);
  v31 = swift_allocObject();
  sub_26A6D0FD0(v9, v31 + v29);
  v32 = (*(v3 + 32))(v31 + v30, v26, v28);
  MEMORY[0x28223BE20](v32);
  *(&v42 - 2) = v27;
  sub_26A8501B8();
  sub_26A6D2FE4();
  sub_26A8510C8();
  KeyPath = swift_getKeyPath();
  LOWORD(v56) = 0;
  v57 = KeyPath;
  LOBYTE(v58) = 0;
  v34 = sub_26A549F4C();
  v35 = sub_26A5B72D8();
  v36 = v50;
  v37 = v48;
  sub_26A850988();
  sub_26A49035C(v57, v58);
  (*(v53 + 8))(v16, v37);
  v38 = v55;
  v39 = v47;
  (*(v55 + 16))(v52, v36, v47);
  v56 = v37;
  v57 = &type metadata for CircularSiriButtonStyle;
  v58 = v34;
  v59 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = sub_26A851248();
  (*(v38 + 8))(v36, v39);
  return v40;
}

uint64_t sub_26A6CF2D4(uint64_t a1)
{
  v50 = a1;
  v47 = sub_26A8501E8();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v3;
  v4 = type metadata accessor for RFButtonStyle(0);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84F988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F00, &qword_26A8768D0);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = &v38 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FD0, &qword_26A876968);
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v38 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FE8, &qword_26A876978);
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v38 - v17;
  v51 = v4;
  v18 = v1 + *(v4 + 44);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    LOBYTE(v52) = *v18;
  }

  else
  {

    sub_26A851EA8();
    v38 = v7;
    v20 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v19, 0);
    (*(v8 + 8))(v10, v38);
  }

  v21 = sub_26A84ED38();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v21);
  sub_26A6D0F6C(v1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v42;
  v23 = v50;
  v24 = v47;
  (*(v2 + 16))(v42, v50, v47);
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v26 = (v5 + *(v2 + 80) + v25) & ~*(v2 + 80);
  v27 = swift_allocObject();
  sub_26A6D0FD0(v6, v27 + v25);
  v28 = (*(v2 + 32))(v27 + v26, v22, v24);
  MEMORY[0x28223BE20](v28);
  *(&v38 - 2) = v23;
  sub_26A8501B8();
  sub_26A6D2FE4();
  sub_26A8510C8();
  static PrimitiveButtonStyle<>.rfButtonCircularIconAndTitle.getter(v6);
  v29 = sub_26A549F4C();
  v30 = sub_26A6D2FE4();
  v31 = v41;
  v32 = v49;
  v33 = v51;
  sub_26A850978();
  sub_26A6D3024();
  (*(v46 + 8))(v14, v32);
  v34 = v44;
  v35 = v48;
  (*(v44 + 16))(v45, v31, v48);
  v52 = v32;
  v53 = v33;
  v54 = v29;
  v55 = v30;
  swift_getOpaqueTypeConformance2();
  v36 = sub_26A851248();
  (*(v34 + 8))(v31, v35);
  return v36;
}

uint64_t sub_26A6CF980()
{
  sub_26A6CDBD0();
  sub_26A84EB98();
}

uint64_t sub_26A6CF9C8@<X0>(uint64_t a2@<X8>)
{
  v54 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3FC8, &unk_26A876928);
  MEMORY[0x28223BE20](v51);
  v53 = &v50 - v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F38, &qword_26A8768F8);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - v3;
  v4 = sub_26A84F3A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F58, &qword_26A876908);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F48, &qword_26A876900);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  sub_26A8501C8();
  v17 = sub_26A6CDA78();
  v18 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F88, &qword_26A876920) + 36)];
  *v18 = v17 & 1;
  v18[1] = 0;
  if (qword_2803A90A8 != -1)
  {
    swift_once();
  }

  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F78, &qword_26A876918) + 36)];
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  memcpy(v19, __src, 0xBFuLL);
  *(v19 + 34) = sub_26A80A810;
  *(v19 + 35) = 0;
  LOBYTE(v19) = sub_26A850278();
  type metadata accessor for RFButtonStyle(0);
  sub_26A84ED48();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3F68, &qword_26A876910) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v19) = sub_26A850298();
  sub_26A84ED48();
  v29 = &v13[*(v11 + 36)];
  *v29 = v19;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_26A6CDE50(v10);
  LOBYTE(v19) = sub_26A84F388();
  v34 = *(v5 + 8);
  v34(v10, v4);
  if (v19)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  KeyPath = swift_getKeyPath();
  sub_26A4EF020();
  v37 = &v16[*(v14 + 36)];
  *v37 = KeyPath;
  *(v37 + 1) = v35;
  v37[16] = 0;
  sub_26A6CDE50(v7);
  LOBYTE(KeyPath) = sub_26A84F388();
  v34(v7, v4);
  if (KeyPath)
  {
    v38 = sub_26A8502A8();
    sub_26A84ED48();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = v50;
    sub_26A4EF6D0();
    v48 = &v47[*(v52 + 36)];
    *v48 = v38;
    *(v48 + 1) = v40;
    *(v48 + 2) = v42;
    *(v48 + 3) = v44;
    *(v48 + 4) = v46;
    v48[40] = 0;
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A6D1DE4();
    sub_26A6D1E70();
    sub_26A84FDF8();
    sub_26A54A088();
  }

  else
  {
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A6D1DE4();
    sub_26A6D1E70();
    sub_26A84FDF8();
  }

  return sub_26A54A088();
}

uint64_t sub_26A6CFFA4(__int16 *a1)
{
  v1 = *(a1 + 1);
  *v3 = *a1;
  v4 = v1;
  return sub_26A6CFFE8(v3) & 1;
}

uint64_t sub_26A6CFFE8(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 != 74)
  {
    if (sub_26A6300C8(*a1) == 0x6E6F74747562 && v4 == 0xE600000000000000)
    {
    }

    else
    {
      v6 = sub_26A852598();

      if ((v6 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    type metadata accessor for RFButtonStyle(0);
    goto LABEL_13;
  }

LABEL_2:
  v3 = sub_26A6CD6AC();
  if (v1 != 74 || (v3 & 1) == 0)
  {
    sub_26A6D040C();
  }

LABEL_13:
  if (v2 != 74)
  {
    if (sub_26A6300C8(v2) == 0x6E6F74747562 && v8 == 0xE600000000000000)
    {
    }

    else
    {
      v10 = sub_26A852598();

      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    type metadata accessor for RFButtonStyle(0);
    return 1;
  }

LABEL_14:
  v7 = sub_26A6CD6AC();
  if (v2 != 74 || (v7 & 1) == 0)
  {
    sub_26A6D040C();
  }

  return 1;
}

double sub_26A6D0158()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    v6 = 0.0;
    if (v5)
    {
      return v6;
    }
  }

  else
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = 0.0;
    if (v17)
    {
      return v6;
    }
  }

  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 8);
  }

  v8 = v0 + *(type metadata accessor for RFButtonStyle(0) + 64);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (*(v8 + 17) == 1)
  {
    v17 = *v8;
    v18 = v10;
    v19 = v11;
  }

  else
  {

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4C23D0(v9, v10, v11, 0);
    (*(v2 + 8))(v4, v1);
    v9 = v17;
    LODWORD(v11) = v19;
  }

  switch(v11)
  {
    case 1:
      sub_26A6D040C();
      v6 = v14;
      break;
    case 2:
      v6 = *&v9;
      break;
    case 3:
      sub_26A6D040C();
      v6 = v13;
      goto LABEL_14;
    default:
      v6 = *&v9;
LABEL_14:
      sub_26A6D040C();
      break;
  }

  return v6;
}

uint64_t sub_26A6D040C()
{
  v1 = v0;
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for RFButtonStyle(0);
  v7 = result;
  v8 = v1 + *(result + 40);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    result = (*(v3 + 8))(v5, v2);
    v9 = v17[1];
  }

  if (v9 == 6)
  {
    v11 = *(v1 + *(v7 + 80) + 280);
    v12 = sub_26A6CDCFC();
    return v11(v12);
  }

  else if (*(v1 + 32))
  {
    v13 = v1 + *(v7 + 80);
    if (*(v13 + 272))
    {
      v14 = *(v13 + 280);
      v15 = sub_26A6CDCFC();
      v14(v15);
      v16 = sub_26A6CDCFC();
      return (v14)(v16);
    }
  }

  return result;
}

void sub_26A6D0610()
{
  OUTLINED_FUNCTION_28_0();
  v12 = v0;
  v2 = v1;
  v3 = sub_26A8501E8();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  type metadata accessor for ActionTapThrottler();
  sub_26A6D2FE4();
  sub_26A84EEF8();
  (*(v5 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v3);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_26A80B4C4(v12, v10);

  OUTLINED_FUNCTION_27_0();
}

void sub_26A6D07FC()
{
  OUTLINED_FUNCTION_28_0();
  v29[1] = v1;
  v2 = type metadata accessor for ButtonItemButtonStyle(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4018, &qword_26A876C28);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = *v0;
  v13 = *(v0 + 1);
  v12 = *(v0 + 2);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *v6 = v11;
  *(v6 + 8) = v13;
  *(v6 + 16) = v12;
  v32[0] = 0;

  sub_26A851048();
  v16 = v33[1];
  *(v6 + 24) = v33[0];
  *(v6 + 32) = v16;
  *(v6 + 40) = swift_getKeyPath();
  *(v6 + 48) = 0;
  *(v6 + 56) = swift_getKeyPath();
  *(v6 + 64) = 0;
  v17 = v2[10];
  *(v6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v18 = v6 + v2[11];
  *v18 = KeyPath;
  *(v18 + 8) = 0;
  v19 = v6 + v2[12];
  *v19 = v15;
  *(v19 + 8) = 0;
  v20 = v6 + v2[13];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v2[14];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
  }

  v22 = v6 + v21;
  memcpy(v33, qword_2803D1B00, sizeof(v33));
  memcpy((v22 + 368), qword_2803D1B00, 0xD0uLL);
  sub_26A4EF6D0();
  sub_26A6AEE74(v32);
  memcpy(v22, v32, 0xBFuLL);
  memcpy(v34, (v22 + 400), 0xB0uLL);
  memcpy((v22 + 192), (v22 + 400), 0xB0uLL);
  v23 = v2[15];
  *(v6 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A54DFFC(v34, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4020, &unk_26A876CB8);
  sub_26A549F4C();
  sub_26A6D2FE4();
  sub_26A850988();
  sub_26A6D3024();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26A68D064;
  *(v24 + 24) = 0;
  v25 = &v10[*(v30 + 36)];
  *(v25 + 2) = swift_getKeyPath();
  v25[24] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v27 = *(v26 + 40);
  *&v25[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v28 = &v25[*(v26 + 44)];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  *v25 = sub_26A4D1F7C;
  *(v25 + 1) = v24;
  sub_26A4AD2E4();
  sub_26A6D3074();
  sub_26A851248();
  sub_26A4AD344();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6D0C8C()
{
  sub_26A6D2E0C();

  return sub_26A84F998();
}

uint64_t sub_26A6D0CD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A6D0C8C();
  *a1 = v3;
  return result;
}

uint64_t sub_26A6D0DA8(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

uint64_t sub_26A6D0DF0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6D0D88();
  return OUTLINED_FUNCTION_5_7(v0);
}

double sub_26A6D0E94@<D0>(uint64_t a1@<X8>)
{
  sub_26A5DA898();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_26A6D0ED8(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return sub_26A5DA8D8(&v3);
}

unint64_t sub_26A6D0F18()
{
  result = qword_2803B3E78;
  if (!qword_2803B3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3E78);
  }

  return result;
}

uint64_t sub_26A6D0F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RFButtonStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D0FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RFButtonStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D1034()
{
  v0 = type metadata accessor for RFButtonStyle(0);
  OUTLINED_FUNCTION_79(v0);

  return sub_26A6CF980();
}

uint64_t sub_26A6D1094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A63869C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A6D1100@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6D10F8();
  *a1 = result;
  return result;
}

void View.buttonRole(_:foreground:background:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v34 = v2;
  v35 = v3;
  v28 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3E68, &unk_26A87B210);
  v7 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v30 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEBA0, &qword_26A876780);
  v12 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v32 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v31 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v33 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  v21 = *v6;
  v29 = *v6;
  swift_getKeyPath();
  LOBYTE(v42) = v21;
  sub_26A8509A8();

  swift_getKeyPath();
  v42 = v28;
  v22 = sub_26A549F4C();
  v40 = v1;
  v41 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_26A8509A8();

  (*(v30 + 8))(v11, v7);
  swift_getKeyPath();
  v42 = v34;
  v24 = sub_26A549F4C();
  v38 = WitnessTable;
  v39 = v24;
  v25 = swift_getWitnessTable();
  sub_26A8509A8();

  (*(v32 + 8))(v16, v12);
  LOBYTE(v42) = v29;
  v36 = v25;
  v37 = v24;
  v26 = v31;
  swift_getWitnessTable();
  sub_26A6D0F18();
  sub_26A850BE8();
  (*(v33 + 8))(v20, v26);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6D1520(uint64_t a1)
{
  sub_26A6D18F8(319, &qword_2803AADC0, MEMORY[0x277CDF310], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A6D18F8(319, &qword_2803B0190, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A6260E8(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26A6D18F8(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_26A6D18A8(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_26A6D18A8(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
          if (v12 > 0x3F)
          {
            return v10;
          }

          sub_26A6D18F8(319, &qword_2803B3E90, &type metadata for ButtonItemButtonStyle.Role, MEMORY[0x277CDF468]);
          if (v13 > 0x3F)
          {
            return v10;
          }

          sub_26A5F7324(319, &qword_2803B3880, &qword_2803B3888, &qword_26A875670);
          if (v14 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_26A5F7324(319, &qword_2803B3E98, &qword_2803AFA68, &qword_26A86B340);
            v2 = v15;
            if (v16 <= 0x3F)
            {
              sub_26A6D18F8(319, &qword_2803B3EA0, &type metadata for CustomHorizontalComponentPadding, MEMORY[0x277CDF468]);
              v2 = v17;
              if (v18 <= 0x3F)
              {
                sub_26A6D18A8(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation);
                v2 = v19;
                if (v20 <= 0x3F)
                {
                  sub_26A6D18A8(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
                  v2 = v21;
                  if (v22 <= 0x3F)
                  {
                    sub_26A5F7324(319, &qword_2803ADBE8, &qword_2803ADBF0, &unk_26A86C6A0);
                    v2 = v23;
                    if (v24 <= 0x3F)
                    {
                      sub_26A6D18F8(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
                      v2 = v25;
                      if (v26 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

  return v2;
}

void sub_26A6D18A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A6D18F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A6D1948()
{
  result = qword_2803B3EA8;
  if (!qword_2803B3EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EB0, &qword_26A8767E8);
    sub_26A6D19D4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EA8);
  }

  return result;
}

unint64_t sub_26A6D19D4()
{
  result = qword_2803B3EB8;
  if (!qword_2803B3EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EC0, &qword_26A8767F0);
    sub_26A6D1A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EB8);
  }

  return result;
}

unint64_t sub_26A6D1A60()
{
  result = qword_2803B3EC8;
  if (!qword_2803B3EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3ED0, &qword_26A8767F8);
    sub_26A6D1AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EC8);
  }

  return result;
}

unint64_t sub_26A6D1AE4()
{
  result = qword_28157FC30;
  if (!qword_28157FC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3ED8, &unk_26A876800);
    sub_26A6D1B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC30);
  }

  return result;
}

unint64_t sub_26A6D1B70()
{
  result = qword_28157FC40;
  if (!qword_28157FC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3EE0, &qword_26A87EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFButtonStyle.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A6D1CDC()
{
  result = qword_2803B3EF8;
  if (!qword_2803B3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3EF8);
  }

  return result;
}

unint64_t sub_26A6D1D58()
{
  result = qword_2803B3F28;
  if (!qword_2803B3F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F20, &qword_26A8768F0);
    sub_26A6D1DE4();
    sub_26A6D1E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F28);
  }

  return result;
}

unint64_t sub_26A6D1DE4()
{
  result = qword_2803B3F30;
  if (!qword_2803B3F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F38, &qword_26A8768F8);
    sub_26A6D1E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F30);
  }

  return result;
}

unint64_t sub_26A6D1E70()
{
  result = qword_2803B3F40;
  if (!qword_2803B3F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F48, &qword_26A876900);
    sub_26A6D1F28();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F40);
  }

  return result;
}

unint64_t sub_26A6D1F28()
{
  result = qword_2803B3F50;
  if (!qword_2803B3F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F58, &qword_26A876908);
    sub_26A6D1FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F50);
  }

  return result;
}

unint64_t sub_26A6D1FB4()
{
  result = qword_2803B3F60;
  if (!qword_2803B3F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F68, &qword_26A876910);
    sub_26A6D2040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F60);
  }

  return result;
}

unint64_t sub_26A6D2040()
{
  result = qword_2803B3F70;
  if (!qword_2803B3F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F78, &qword_26A876918);
    sub_26A6D20F8();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F70);
  }

  return result;
}

unint64_t sub_26A6D20F8()
{
  result = qword_2803B3F80;
  if (!qword_2803B3F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F88, &qword_26A876920);
    sub_26A6D2FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F80);
  }

  return result;
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for RFButtonStyle(0);
  OUTLINED_FUNCTION_33_10();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A492280(*(v3 + 40), *(v3 + 48));
  sub_26A49035C(*(v3 + 64), *(v3 + 72));
  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_6_47(v1[10]);
  sub_26A49035C(v6, v7);
  v8 = OUTLINED_FUNCTION_6_47(v1[11]);
  sub_26A49035C(v8, v9);
  OUTLINED_FUNCTION_6_47(v1[12]);
  j__swift_release();
  OUTLINED_FUNCTION_6_47(v1[13]);
  j__swift_release();
  v10 = OUTLINED_FUNCTION_6_47(v1[14]);
  sub_26A49035C(v10, v11);

  sub_26A4C23D0(*(v3 + v1[16]), *(v3 + v1[16] + 8), *(v3 + v1[16] + 16), *(v3 + v1[16] + 17));
  v12 = OUTLINED_FUNCTION_6_47(v1[17]);
  sub_26A49035C(v12, v13);
  v14 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v15 + 8))(v3 + v14);
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_6_47(v1[19]);
  sub_26A49035C(v16, v17);
  v18 = v3 + v1[20];
  sub_26A49035C(*v18, *(v18 + 8));
  sub_26A49035C(*(v18 + 16), *(v18 + 24));
  sub_26A49035C(*(v18 + 32), *(v18 + 40));
  sub_26A49035C(*(v18 + 48), *(v18 + 56));
  sub_26A49035C(*(v18 + 64), *(v18 + 72));
  sub_26A49035C(*(v18 + 80), *(v18 + 88));
  sub_26A49035C(*(v18 + 96), *(v18 + 104));
  sub_26A49035C(*(v18 + 112), *(v18 + 120));
  sub_26A49035C(*(v18 + 128), *(v18 + 136));
  sub_26A49035C(*(v18 + 144), *(v18 + 152));

  return swift_deallocObject();
}

uint64_t sub_26A6D2488(__int16 *a1)
{
  v2 = type metadata accessor for RFButtonStyle(0);
  OUTLINED_FUNCTION_79(v2);

  return sub_26A6CFFA4(a1);
}

unint64_t sub_26A6D24F4()
{
  result = qword_2803B3F98;
  if (!qword_2803B3F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F18, &qword_26A8768E8);
    sub_26A6D2580();
    sub_26A6D2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3F98);
  }

  return result;
}

unint64_t sub_26A6D2580()
{
  result = qword_2803B3FA0;
  if (!qword_2803B3FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F10, &qword_26A8768E0);
    sub_26A6D260C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FA0);
  }

  return result;
}

unint64_t sub_26A6D260C()
{
  result = qword_2803B3FA8;
  if (!qword_2803B3FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3F08, &qword_26A8768D8);
    sub_26A6D2698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FA8);
  }

  return result;
}

unint64_t sub_26A6D2698()
{
  result = qword_2803B3FB0;
  if (!qword_2803B3FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADDA8, &qword_26A860070);
    sub_26A549F4C();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FB0);
  }

  return result;
}

unint64_t sub_26A6D2750()
{
  result = qword_2803B3FC0;
  if (!qword_2803B3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FC0);
  }

  return result;
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for RFButtonStyle(0);
  OUTLINED_FUNCTION_33_10();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_26A8501E8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v0 + v3;
  sub_26A492280(*(v0 + v3 + 40), *(v0 + v3 + 48));
  sub_26A49035C(*(v10 + 64), *(v10 + 72));
  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v10 + v11);
  }

  else
  {
  }

  v13 = OUTLINED_FUNCTION_7_52(v1[10]);
  sub_26A49035C(v13, v14);
  v15 = OUTLINED_FUNCTION_7_52(v1[11]);
  sub_26A49035C(v15, v16);
  OUTLINED_FUNCTION_7_52(v1[12]);
  j__swift_release();
  OUTLINED_FUNCTION_7_52(v1[13]);
  j__swift_release();
  v17 = OUTLINED_FUNCTION_7_52(v1[14]);
  sub_26A49035C(v17, v18);

  sub_26A4C23D0(*(v10 + v1[16]), *(v10 + v1[16] + 8), *(v10 + v1[16] + 16), *(v10 + v1[16] + 17));
  v19 = OUTLINED_FUNCTION_7_52(v1[17]);
  sub_26A49035C(v19, v20);
  v21 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v22 + 8))(v10 + v21);
  }

  else
  {
  }

  v23 = OUTLINED_FUNCTION_7_52(v1[19]);
  sub_26A49035C(v23, v24);
  v25 = v10 + v1[20];
  sub_26A49035C(*v25, *(v25 + 8));
  sub_26A49035C(*(v25 + 16), *(v25 + 24));
  sub_26A49035C(*(v25 + 32), *(v25 + 40));
  sub_26A49035C(*(v25 + 48), *(v25 + 56));
  sub_26A49035C(*(v25 + 64), *(v25 + 72));
  sub_26A49035C(*(v25 + 80), *(v25 + 88));
  sub_26A49035C(*(v25 + 96), *(v25 + 104));
  sub_26A49035C(*(v25 + 112), *(v25 + 120));
  sub_26A49035C(*(v25 + 128), *(v25 + 136));
  sub_26A49035C(*(v25 + 144), *(v25 + 152));

  (*(v8 + 8))(v0 + ((v3 + v5 + v9) & ~v9), v6);

  return swift_deallocObject();
}

void sub_26A6D2B68()
{
  type metadata accessor for RFButtonStyle(0);
  v0 = sub_26A8501E8();
  OUTLINED_FUNCTION_79(v0);
  sub_26A6D0610();
}

uint64_t objectdestroy_64Tm()
{
  sub_26A8501E8();
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A6D2CB8()
{
  v0 = sub_26A8501E8();
  OUTLINED_FUNCTION_79(v0);
  return sub_26A8501D8();
}

unint64_t sub_26A6D2D10()
{
  result = qword_2803B3FF0;
  if (!qword_2803B3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FF0);
  }

  return result;
}

unint64_t sub_26A6D2D64()
{
  result = qword_2803B3FF8;
  if (!qword_2803B3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3FF8);
  }

  return result;
}

unint64_t sub_26A6D2DB8()
{
  result = qword_2803B4000;
  if (!qword_2803B4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4000);
  }

  return result;
}

unint64_t sub_26A6D2E0C()
{
  result = qword_2803B4008;
  if (!qword_2803B4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4008);
  }

  return result;
}

unint64_t sub_26A6D2E60()
{
  result = qword_2803B4010;
  if (!qword_2803B4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4010);
  }

  return result;
}

uint64_t sub_26A6D2F04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_26A6D2F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26A6D2FE4()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A6D3024()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A6D3074()
{
  result = qword_2803B4030;
  if (!qword_2803B4030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4018, &qword_26A876C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4020, &unk_26A876CB8);
    type metadata accessor for ButtonItemButtonStyle(255);
    sub_26A549F4C();
    sub_26A6D2FE4();
    swift_getOpaqueTypeConformance2();
    sub_26A549F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4030);
  }

  return result;
}

void OUTLINED_FUNCTION_4_56()
{
  *(v0 + 40) = sub_26A626198;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t result)
{
  *v4 = result;
  *(v4 + 8) = 0;
  v5 = v1 + *(v2 + 60);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_31(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

void OUTLINED_FUNCTION_18_22()
{
  v3 = v0 + *(v1 + 40);
  *v3 = v2;
  *(v3 + 8) = 0;
}

void *OUTLINED_FUNCTION_22_26()
{

  return memcpy((v0 + 192), (v0 + 400), 0xB0uLL);
}

void *OUTLINED_FUNCTION_23_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va1, a30);
  va_start(__srca, a30);
  __src = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);
  v54 = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);

  return memcpy(v30, __srca, 0xBFuLL);
}

void *OUTLINED_FUNCTION_24_21()
{

  return memcpy((v0 + 368), v1, 0xD0uLL);
}

void *OUTLINED_FUNCTION_25_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);

  return memcpy(va, v56, 0xD0uLL);
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return sub_26A84F4F8();
}

uint64_t OUTLINED_FUNCTION_27_13(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t SwitchView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84E228();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  v5 = type metadata accessor for SwitchView(0);
  v6 = a2 + v5[5];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  ActionHandler.init()(a2 + v5[7]);
  v8 = a2 + v5[8];
  sub_26A851048();
  sub_26A576F4C(a2, &qword_2803AAD90, &qword_26A8570A0);
  v9 = *(v4 - 8);
  (*(v9 + 16))(a2, a1, v4);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  sub_26A84E1F8();
  sub_26A851048();
  (*(v9 + 8))(a1, v4);

  *v8 = v11;
  *(v8 + 8) = v12;
  return result;
}

uint64_t type metadata accessor for SwitchView(uint64_t a1)
{
  result = qword_2803B4070;
  if (!qword_2803B4070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SwitchView.init(isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_26A84E228();
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  v9 = type metadata accessor for SwitchView(0);
  v10 = a4 + v9[5];
  v11 = a4 + v9[6];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  ActionHandler.init()(a4 + v9[7]);
  v12 = a4 + v9[8];
  result = sub_26A851048();
  *v12 = v14;
  *(v12 + 8) = v15;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  return result;
}

uint64_t sub_26A6D3688@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.containsComponentsWithActionSubject.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A6D36E0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + *(type metadata accessor for SwitchView(0) + 24));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v1);
    return v12[1];
  }

  return v8;
}

void SwitchView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v47 = v0;
  v43 = v1;
  v2 = type metadata accessor for SwitchView(0);
  v46 = *(v2 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84FAB8();
  OUTLINED_FUNCTION_15();
  v41 = v4;
  v42 = v5;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4038, &qword_26A876D18);
  OUTLINED_FUNCTION_15();
  v36 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4040, &qword_26A876D20);
  OUTLINED_FUNCTION_15();
  v38 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4048, &qword_26A876D28);
  OUTLINED_FUNCTION_15();
  v39 = v17;
  v40 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  sub_26A84FB68();
  sub_26A6D3CFC();
  sub_26A851218();
  v21 = sub_26A6D3ECC();
  sub_26A850A28();
  (*(v36 + 8))(v11, v7);
  v22 = v37;
  sub_26A84FAA8();
  v48 = v7;
  v49 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_26A6D3F30(v24);
  v26 = v41;
  sub_26A8509D8();
  (*(v42 + 8))(v22, v26);
  (*(v38 + 8))(v16, v12);
  v48 = v12;
  v49 = v26;
  v50 = OpaqueTypeConformance2;
  v51 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v43;
  v28 = v39;
  sub_26A850A38();
  (*(v40 + 8))(v20, v28);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v31 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4060, &qword_26A876D80) + 36);
  *v31 = KeyPath;
  *(v31 + 8) = 0;
  *(v31 + 16) = v30;
  *(v31 + 24) = 0;
  v32 = v44;
  sub_26A4F2068(v47, v44);
  v33 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v34 = swift_allocObject();
  sub_26A6D3FD0(v32, v34 + v33);
  v35 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4068, &qword_26A876D88) + 36));
  *v35 = sub_26A6D4034;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A6D3CFC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = type metadata accessor for SwitchView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (v0 + *(v4 + 28));
  v6 = *v5;
  v7 = v5[1];
  if (!v7)
  {
    v15[0] = *v5;
    sub_26A4F2068(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_26A851BD8();
    v8 = sub_26A851BC8();
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v8;
    *(v10 + 24) = v11;
    v12 = v11;
    sub_26A6D3FD0(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    sub_26A4F2068(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = sub_26A851BC8();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    sub_26A6D3FD0(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
    sub_26A851278();
    v6 = v15[0];
  }

  sub_26A67F998(v6, v7);
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A6D3ECC()
{
  result = qword_2803B4050;
  if (!qword_2803B4050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4038, &qword_26A876D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4050);
  }

  return result;
}

unint64_t sub_26A6D3F30(__n128 a1)
{
  result = qword_2803B4058;
  if (!qword_2803B4058)
  {
    sub_26A84FAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4058);
  }

  return result;
}

uint64_t sub_26A6D3F88()
{
  sub_26A6D36E0();
  sub_26A84EB98();
}

uint64_t sub_26A6D3FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwitchView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D4034()
{
  type metadata accessor for SwitchView(0);

  return sub_26A6D3F88();
}

void *sub_26A6D40B0@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for SwitchView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  result = sub_26A851058();
  *a2 = v4;
  return result;
}

uint64_t sub_26A6D412C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD90, &qword_26A8570A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v40[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v40[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v40[-v22];
  v24 = *a1;
  v25 = type metadata accessor for SwitchView(0);
  v26 = a4 + *(v25 + 32);
  v27 = *v26;
  v28 = *(v26 + 8);
  v41 = v27;
  v42 = v28;
  v40[15] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851068();
  v29 = a4 + *(v25 + 28);
  v30 = v29 + *(type metadata accessor for ActionHandler(0) + 44);
  if (v24 == 1)
  {
    sub_26A576FA8(v30, v23, &qword_2803B3910, &qword_26A855580);
    v31 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v23, 1, v31) == 1)
    {
      v32 = v23;
      return sub_26A576F4C(v32, &qword_2803B3910, &qword_26A855580);
    }

    sub_26A576FA8(a4, v11, &qword_2803AAD90, &qword_26A8570A0);
    v35 = sub_26A84E228();
    if (__swift_getEnumTagSinglePayload(v11, 1, v35) == 1)
    {
      sub_26A576F4C(v11, &qword_2803AAD90, &qword_26A8570A0);
      v36 = sub_26A84BAB8();
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v36);
    }

    else
    {
      sub_26A84E208();
      (*(*(v35 - 8) + 8))(v11, v35);
    }

    v41 = 4;
    StandardActionHandler.perform(_:interactionType:)();
    sub_26A576F4C(v17, &qword_2803B3800, &unk_26A856760);
    v39 = v23;
  }

  else
  {
    sub_26A576FA8(v30, v20, &qword_2803B3910, &qword_26A855580);
    v33 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v33) == 1)
    {
      v32 = v20;
      return sub_26A576F4C(v32, &qword_2803B3910, &qword_26A855580);
    }

    sub_26A576FA8(a4, v8, &qword_2803AAD90, &qword_26A8570A0);
    v37 = sub_26A84E228();
    if (__swift_getEnumTagSinglePayload(v8, 1, v37) == 1)
    {
      sub_26A576F4C(v8, &qword_2803AAD90, &qword_26A8570A0);
      v38 = sub_26A84BAB8();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v38);
    }

    else
    {
      sub_26A84E218();
      (*(*(v37 - 8) + 8))(v8, v37);
    }

    v41 = 5;
    StandardActionHandler.perform(_:interactionType:)();
    sub_26A576F4C(v14, &qword_2803B3800, &unk_26A856760);
    v39 = v20;
  }

  return sub_26A592630(v39);
}

void sub_26A6D45D0(uint64_t a1)
{
  sub_26A6D46F4(319);
  if (v1 <= 0x3F)
  {
    sub_26A6D474C(319, &qword_2803B4088, &unk_2803AC170, &unk_26A87C420, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A6D474C(319, &qword_2803B3E98, &qword_2803AFA68, &qword_26A86B340, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ActionHandler(319);
        if (v4 <= 0x3F)
        {
          sub_26A6B4AF8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A6D46F4(uint64_t a1)
{
  if (!qword_2803B4080)
  {
    sub_26A84E228();
    v1 = sub_26A852068();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B4080);
    }
  }
}

void sub_26A6D474C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_26A6D47B0()
{
  result = qword_2803B4090;
  if (!qword_2803B4090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4068, &qword_26A876D88);
    sub_26A6D483C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4090);
  }

  return result;
}

unint64_t sub_26A6D483C()
{
  result = qword_2803B4098;
  if (!qword_2803B4098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4060, &qword_26A876D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4048, &qword_26A876D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4040, &qword_26A876D20);
    sub_26A84FAB8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4038, &qword_26A876D18);
    sub_26A6D3ECC();
    swift_getOpaqueTypeConformance2();
    sub_26A6D3F30(v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4098);
  }

  return result;
}

void *sub_26A6D49A4@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SwitchView(0);

  return sub_26A6D40B0(a1);
}

uint64_t objectdestroy_15Tm()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for SwitchView(0);
  OUTLINED_FUNCTION_37_0();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_26A84E228();
  if (!OUTLINED_FUNCTION_25_6(v7))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v8 + 8))(v1 + v6, v2);
  }

  if (*(v1 + v6 + *(v0 + 20) + 8))
  {
  }

  v9 = OUTLINED_FUNCTION_4_57();
  v10 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_8_50(v11))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v12 + 8))(v4 + v10, v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_73();
  if (v13)
  {
    if ((*(v3 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v3);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v3 + 16);
  v14 = v4 + *(v9 + 44);
  v15 = type metadata accessor for StandardActionHandler(0);
  if (!OUTLINED_FUNCTION_9_44(v15))
  {
    MEMORY[0x26D665710](v14);
    v16 = *(v3 + 24);
    v17 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_5_56(v17))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v18 + 8))(v14 + v16, v4);
    }

    OUTLINED_FUNCTION_11_38();

    OUTLINED_FUNCTION_11_38();
  }

  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A6D4C54(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for SwitchView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26A6D412C(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_1_73()
{
  sub_26A556DF4(*(v1 + v0[7]), *(v1 + v0[7] + 8), *(v1 + v0[7] + 16));
  sub_26A49035C(*(v1 + v0[8]), *(v1 + v0[8] + 8));
  return sub_26A49035C(*(v1 + v0[9]), *(v1 + v0[9] + 8));
}

uint64_t OUTLINED_FUNCTION_4_57()
{
  v2 = v1 + *(v0 + 28);
  sub_26A556DF4(*v2, *(v2 + 8), *(v2 + 16));
  sub_26A49035C(*(v2 + 24), *(v2 + 32));

  return type metadata accessor for ActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_5_56(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_8_50(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_44(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

double OUTLINED_FUNCTION_11_38()
{

  return result;
}

uint64_t Color.swiftValue.getter()
{
  v0 = sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  sub_26A84DF78();
  v7 = _ProtoColor.swiftValue.getter();
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t Color.init(color:)(uint64_t a1)
{
  v2 = sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-v9];

  v11 = sub_26A850DD8();
  OUTLINED_FUNCTION_3_62(v11);
  OUTLINED_FUNCTION_2_71();

  if ((v1 & 1) == 0)
  {

    v12 = sub_26A850D78();
    OUTLINED_FUNCTION_3_62(v12);
    OUTLINED_FUNCTION_2_71();

    v13 = sub_26A850DE8();
    OUTLINED_FUNCTION_3_62(v13);
    OUTLINED_FUNCTION_2_71();

    v14 = sub_26A850DF8();
    OUTLINED_FUNCTION_3_62(v14);
    OUTLINED_FUNCTION_2_71();

    v15 = sub_26A850D88();
    OUTLINED_FUNCTION_3_62(v15);
    OUTLINED_FUNCTION_2_71();

    v16 = sub_26A850D98();
    OUTLINED_FUNCTION_3_62(v16);
    OUTLINED_FUNCTION_2_71();

    v17 = sub_26A850E08();
    OUTLINED_FUNCTION_3_62(v17);
    OUTLINED_FUNCTION_2_71();

    v18 = sub_26A850E28();
    OUTLINED_FUNCTION_3_62(v18);
    OUTLINED_FUNCTION_2_71();

    v19 = sub_26A850DA8();
    OUTLINED_FUNCTION_3_62(v19);
    OUTLINED_FUNCTION_2_71();

    v20 = sub_26A850E38();
    OUTLINED_FUNCTION_3_62(v20);
    OUTLINED_FUNCTION_2_71();

    v21 = sub_26A850DB8();
    OUTLINED_FUNCTION_3_62(v21);
    OUTLINED_FUNCTION_2_71();

    v22 = sub_26A850E78();
    OUTLINED_FUNCTION_3_62(v22);
    OUTLINED_FUNCTION_2_71();

    v23 = sub_26A850E48();
    OUTLINED_FUNCTION_3_62(v23);
    OUTLINED_FUNCTION_2_71();

    v24 = sub_26A850D68();
    OUTLINED_FUNCTION_3_62(v24);
    OUTLINED_FUNCTION_2_71();

    v25 = sub_26A850E88();
    OUTLINED_FUNCTION_3_62(v25);
    OUTLINED_FUNCTION_2_71();

    v26 = sub_26A850DC8();
    OUTLINED_FUNCTION_3_62(v26);
    OUTLINED_FUNCTION_2_71();

    v27 = sub_26A850E18();
    OUTLINED_FUNCTION_3_62(v27);
    OUTLINED_FUNCTION_2_71();

    v28 = sub_26A850E58();
    OUTLINED_FUNCTION_3_62(v28);
    OUTLINED_FUNCTION_2_71();
  }

  sub_26A6D61E8();
  sub_26A84E9F8();
  (*(v4 + 16))(v7, v10, v2);
  sub_26A84DF88();

  return (*(v4 + 8))(v10, v2);
}

uint64_t Color.init(hex:)(uint64_t a1, unint64_t a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26A850D48();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  if ((sub_26A851908() & 1) == 0 || (v11 = sub_26A851888(), v12 = sub_26A6D58C4(v11, a1, a2), v14 = v13, v16 = v15, v18 = v17, , v19 = MEMORY[0x26D663A90](v12, v14, v16, v18), v21 = v20, , sub_26A851858() != 8))
  {

    return 0;
  }

  sub_26A4EC5B0(0, &qword_2803B40A0, 0x277CCAC80);
  v23 = sub_26A6D5910(v19, v21, v22);
  v26[0] = 0;
  if (![v23 scanHexLongLong_])
  {

    return 0;
  }

  (*(v6 + 104))(v10, *MEMORY[0x277CE0EE0], v4);
  v24 = sub_26A850E98();

  return v24;
}

uint64_t Color.rgbaString.getter()
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_26A4EC5B0(0, &qword_28157D7E8, 0x277D75348);

  v0 = sub_26A851FB8();
  v12 = 0.0;
  v13[0] = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  [v0 getRed:v13 green:&v12 blue:&v11 alpha:&v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B13D8, &qword_26A86C6C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26A864670;
  v2 = v13[0] * 255.0;
  if (COERCE__INT64(fabs(v13[0] * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = MEMORY[0x277D83B88];
  v4 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = v12 * 255.0;
  if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 72) = v5;
  v6 = v11 * 255.0;
  if (COERCE__INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 112) = v6;
  v7 = v10 * 255.0;
  if (COERCE_UNSIGNED_INT64(fabs(v10 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v7 >= 9.22337204e18)
  {
    goto LABEL_25;
  }

  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  *(v1 + 152) = v7;
  v8 = sub_26A8517C8();

  return v8;
}

unint64_t sub_26A6D58C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_26A851978();
  }

  __break(1u);
  return result;
}

id sub_26A6D5910(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata(a3));
  v4 = sub_26A851788();

  v5 = [v3 initWithString_];

  return v5;
}

uint64_t sub_26A6D5BC4(uint64_t a1, unsigned int *a2)
{
  sub_26A84AFC8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  (*(v6 + 104))(v5 - v4, *a2);
  return sub_26A84AFE8();
}

uint64_t sub_26A6D5C80()
{
  Color.rgbaString.getter();
  v0 = sub_26A84B038();
  sub_26A84B018();
  return v0(&v2, 0);
}

uint64_t _ProtoColor.swiftValue.getter()
{
  v0 = sub_26A84B028();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B40A8, &qword_26A876E00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  sub_26A84AFF8();
  v13 = sub_26A84AFB8();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    sub_26A6D62A8(v12, v9);
    v15 = OUTLINED_FUNCTION_4_58();
    v17 = v16(v15);
    if (v17 == *MEMORY[0x277D62928])
    {
      v18 = OUTLINED_FUNCTION_4_58();
      v19(v18);
      (*(v2 + 32))(v6, v9, v0);
      v20 = sub_26A84B008();
      v14 = Color.init(hex:)(v20, v21);
      (*(v2 + 8))(v6, v0);
      goto LABEL_44;
    }

    if (v17 == *MEMORY[0x277D62930])
    {
      v22 = OUTLINED_FUNCTION_4_58();
      v23(v22);
      v24 = sub_26A84AFC8();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 88))(v9, v24);
      if (v26 == *MEMORY[0x277D62988])
      {
        v27 = sub_26A850DF8();
LABEL_43:
        v14 = v27;
        goto LABEL_44;
      }

      if (v26 == *MEMORY[0x277D62978])
      {
        v27 = sub_26A850DD8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62998])
      {
        v27 = sub_26A850E18();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62958])
      {
        v27 = sub_26A850D98();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62940])
      {
        v27 = sub_26A850D68();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62990])
      {
        v27 = sub_26A850E08();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62948])
      {
        v27 = sub_26A850D78();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629A8])
      {
        v27 = sub_26A850E38();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629B8])
      {
        v27 = sub_26A850E58();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62968])
      {
        v27 = sub_26A850DB8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629B0])
      {
        v27 = sub_26A850E48();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629C0])
      {
        v27 = sub_26A850E78();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629C8])
      {
        v27 = sub_26A850E88();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62980])
      {
        v27 = sub_26A850DE8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62950])
      {
        v27 = sub_26A850D88();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D629A0])
      {
        v27 = sub_26A850E28();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62960])
      {
        v27 = sub_26A850DA8();
        goto LABEL_43;
      }

      if (v26 == *MEMORY[0x277D62970])
      {
        v27 = sub_26A850DC8();
        goto LABEL_43;
      }

      (*(v25 + 8))(v9, v24);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_4_58();
      v29(v28);
    }

    v14 = 0;
  }

LABEL_44:
  sub_26A6D6240(v12);
  return v14;
}

unint64_t sub_26A6D61E8()
{
  result = qword_281580000;
  if (!qword_281580000)
  {
    sub_26A84B048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281580000);
  }

  return result;
}

uint64_t sub_26A6D6240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B40A8, &qword_26A876E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A6D62A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B40A8, &qword_26A876E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Color.asColor()()
{

  return Color.init(color:)(v0);
}

uint64_t OUTLINED_FUNCTION_2_71()
{
}

uint64_t OUTLINED_FUNCTION_3_62(uint64_t a1)
{

  return sub_26A850D58();
}

double sub_26A6D63B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
  sub_26A851058();
  return v1;
}

uint64_t HorizontalListView.body.getter(void *a1)
{
  v2 = *(v1 + 16);
  v23[6] = *v1;
  v23[7] = v2;
  v24 = *(v1 + 32);
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110, &unk_26A872FA0);
  type metadata accessor for CGRect(255, v8, v9, v10);
  __src[0] = v4;
  __src[1] = v3;
  __src[2] = v6;
  __src[3] = v5;
  v11 = type metadata accessor for HorizontalListView.HorizontalListHeightPreferences(255, __src);
  OUTLINED_FUNCTION_6_48(v11);
  sub_26A84FEE8();
  v12 = sub_26A84F4F8();
  v13 = sub_26A4EEF40();
  __src[0] = v7;
  __src[1] = MEMORY[0x277D83B88];
  __src[2] = v12;
  __src[3] = v13;
  __src[4] = MEMORY[0x277D83B98];
  sub_26A851328();
  OUTLINED_FUNCTION_3_63();
  v21 = v6;
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84EDC8();
  OUTLINED_FUNCTION_1_74();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84EDE8();
  sub_26A504FB4();
  sub_26A850028();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_73();
  v18 = swift_getWitnessTable();
  v19 = OUTLINED_FUNCTION_7_53();
  swift_getWitnessTable();
  sub_26A84F208();
  OUTLINED_FUNCTION_4_59();
  swift_getWitnessTable();
  sub_26A84FA78();
  sub_26A851118();
  v23[0] = *v25;
  LOBYTE(v23[1]) = v25[16];
  *(&v23[1] + 1) = *&v25[24];
  *&v23[2] = *&v25[32];
  sub_26A6D63B0();
  sub_26A851128();
  OUTLINED_FUNCTION_5_57();
  swift_getWitnessTable();
  sub_26A851448();
  sub_26A850BC8();

  memcpy(__dst, __src, sizeof(__dst));
  v14 = sub_26A84F4F8();
  swift_getWitnessTable();
  sub_26A80757C();
  memcpy(v25, __dst, sizeof(v25));
  v15 = *(*(v14 - 8) + 8);
  v15(v25, v14);
  memcpy(__dst, v23, sizeof(__dst));
  sub_26A80757C();
  memcpy(__src, __dst, sizeof(__src));
  return (v15)(__src, v14);
}

uint64_t sub_26A6D680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 32);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v12 = type metadata accessor for HorizontalListView(0, &v20);
  (*(*(v12 - 8) + 16))(&v20, a1, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110, &unk_26A872FA0);
  type metadata accessor for CGRect(255, v14, v15, v16);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences(255, &v20);
  swift_getWitnessTable();
  sub_26A84FEE8();
  v17 = sub_26A84F4F8();
  v18 = sub_26A4EEF40();
  v20 = v13;
  v21 = MEMORY[0x277D83B88];
  v22 = v17;
  v23 = v18;
  v24 = MEMORY[0x277D83B98];
  sub_26A851328();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A84EDC8();
  swift_getWitnessTable();
  sub_26A84EDE8();
  sub_26A504FB4();
  sub_26A850028();
  sub_26A84F4F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A84F1F8();
  sub_26A84F208();
  swift_getWitnessTable();
  sub_26A80757C();

  sub_26A80757C();
}

uint64_t sub_26A6D6BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v48 = a4;
  v52 = a2;
  v53 = a1;
  v55 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110, &unk_26A872FA0);
  type metadata accessor for CGRect(255, v12, v13, v14);
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v43 = type metadata accessor for HorizontalListView.HorizontalListHeightPreferences(255, &v68);
  WitnessTable = swift_getWitnessTable();
  sub_26A84FEE8();
  v15 = sub_26A84F4F8();
  v16 = sub_26A4EEF40();
  v68 = v11;
  v69 = MEMORY[0x277D83B88];
  v70 = v15;
  v71 = v16;
  v72 = MEMORY[0x277D83B98];
  sub_26A851328();
  v66 = a5;
  v67 = swift_getWitnessTable();
  v17 = a5;
  v54 = MEMORY[0x277CDFAD8];
  v65 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_26A84EDC8();
  v42 = swift_getWitnessTable();
  v19 = sub_26A84EDE8();
  v50 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v41 = &v40 - v20;
  v44 = sub_26A504FB4();
  v47 = sub_26A850028();
  v21 = sub_26A84F4F8();
  v49 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v46 = &v40 - v25;
  v26 = sub_26A850208();
  v27 = a3;
  v28 = v48;
  v57 = a3;
  v58 = v48;
  v59 = a5;
  v29 = v51;
  v30 = v52;
  v60 = v51;
  v61 = v52;
  v62 = v53;
  sub_26A6D6394(v26, sub_26A6D80B0, v56, v18, v42);
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  *(v31 + 24) = v28;
  *(v31 + 32) = v17;
  *(v31 + 40) = v29;
  v32 = *(v30 + 16);
  *(v31 + 48) = *v30;
  *(v31 + 64) = v32;
  *(v31 + 80) = *(v30 + 32);
  v68 = v27;
  v69 = v28;
  v70 = v17;
  v71 = v29;
  v33 = type metadata accessor for HorizontalListView(0, &v68);
  (*(*(v33 - 8) + 16))(&v68, v30, v33);
  v34 = swift_getWitnessTable();
  v35 = v41;
  sub_26A850B38();

  (*(v50 + 8))(v35, v19);
  v36 = swift_getWitnessTable();
  v63 = v34;
  v64 = v36;
  swift_getWitnessTable();
  v37 = v46;
  sub_26A80757C();
  v38 = *(v49 + 8);
  v38(v23, v21);
  sub_26A80757C();
  return (v38)(v37, v21);
}

uint64_t sub_26A6D7118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a6;
  v28 = a4;
  v30 = a1;
  v31 = a2;
  v32 = a7;
  v11 = sub_26A84FE58();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110, &unk_26A872FA0);
  type metadata accessor for CGRect(255, v13, v14, v15);
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences(255, &v42);
  swift_getWitnessTable();
  sub_26A84FEE8();
  v16 = sub_26A84F4F8();
  v17 = sub_26A4EEF40();
  v42 = v12;
  v43 = MEMORY[0x277D83B88];
  v44 = v16;
  v45 = v17;
  v46 = MEMORY[0x277D83B98];
  sub_26A851328();
  v40 = a5;
  WitnessTable = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_26A84EDC8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v27 - v23;
  sub_26A84FA58();
  v33 = a3;
  v34 = v28;
  v35 = a5;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  sub_26A6D7DB4();
  sub_26A84EDB8();
  swift_getWitnessTable();
  sub_26A80757C();
  v25 = *(v19 + 8);
  v25(v21, v18);
  sub_26A80757C();
  return (v25)(v24, v18);
}

uint64_t sub_26A6D7460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a2;
  v53 = a7;
  v50 = sub_26A84F088();
  v48 = *(v50 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110, &unk_26A872FA0);
  type metadata accessor for CGRect(255, v14, v15, v16);
  v61 = a3;
  v62 = a4;
  v54 = a6;
  v55 = a5;
  v63 = a5;
  v64 = a6;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences(255, &v61);
  swift_getWitnessTable();
  v17 = a3;
  v46 = sub_26A84FEE8();
  v18 = sub_26A84F4F8();
  v19 = sub_26A4EEF40();
  v61 = v13;
  v62 = MEMORY[0x277D83B88];
  v63 = v18;
  v64 = v19;
  v51 = v19;
  v65 = MEMORY[0x277D83B98];
  v20 = sub_26A851328();
  v49 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v52 = v42 - v24;
  v25 = a1;
  result = sub_26A851B38();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v59 = 0;
    v60 = result;
    KeyPath = swift_getKeyPath();
    v45 = v20;
    v43 = v22;
    v27 = v48;
    v28 = v50;
    (*(v48 + 16))(v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v50);
    v29 = (*(v27 + 80) + 88) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v17;
    *(v30 + 24) = a4;
    v47 = v13;
    v31 = v55;
    v42[1] = v18;
    v32 = a4;
    v33 = v54;
    *(v30 + 32) = v55;
    *(v30 + 40) = v33;
    v34 = *(v25 + 16);
    *(v30 + 48) = *v25;
    *(v30 + 64) = v34;
    *(v30 + 80) = *(v25 + 32);
    (*(v27 + 32))(v30 + v29, v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v61 = v17;
    v62 = v32;
    v63 = v31;
    v64 = v33;
    v35 = type metadata accessor for HorizontalListView(0, &v61);
    (*(*(v35 - 8) + 16))(&v61, v25, v35);
    WitnessTable = swift_getWitnessTable();
    v57 = v31;
    v58 = WitnessTable;
    v41 = swift_getWitnessTable();
    v37 = v43;
    sub_26A8512F8();
    v56 = v41;
    v38 = v45;
    swift_getWitnessTable();
    v39 = v52;
    sub_26A80757C();
    v40 = *(v49 + 8);
    v40(v37, v38);
    sub_26A80757C();
    return (v40)(v39, v38);
  }

  return result;
}

uint64_t sub_26A6D78CC@<X0>(void *a1@<X0>, void (**a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a6;
  v47 = a1;
  v53 = a3;
  v54 = a8;
  v51 = sub_26A84F088();
  v13 = *(v51 - 8);
  v50 = *(v13 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a4 - 8);
  MEMORY[0x28223BE20](v18);
  v41[0] = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CGRect(255, v20, v21, v22);
  v42 = a4;
  v43 = v23;
  v57[0] = a4;
  v57[1] = a5;
  v57[2] = a6;
  v57[3] = a7;
  type metadata accessor for HorizontalListView.HorizontalListHeightPreferences(255, v57);
  v41[1] = swift_getWitnessTable();
  v45 = sub_26A84FEE8();
  v24 = sub_26A84F4F8();
  v49 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v41 - v28;
  v30 = *a2;
  sub_26A851B68();
  v30(v17);
  (*(v44 + 8))(v17, a5);
  sub_26A851098();
  v31 = v48;
  v32 = v51;
  (*(v13 + 16))(v48, v53, v51);
  v33 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v33, v31, v32);
  v35 = v42;
  v36 = v46;
  v37 = v41[0];
  sub_26A850AC8();

  (*(v52 + 8))(v37, v35);
  WitnessTable = swift_getWitnessTable();
  v55 = v36;
  v56 = WitnessTable;
  swift_getWitnessTable();
  sub_26A80757C();
  v39 = *(v49 + 8);
  v39(v26, v24);
  sub_26A80757C();
  return (v39)(v29, v24);
}

double sub_26A6D7D5C@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  type metadata accessor for CGRect(0, a2, a3, a4);
  sub_26A84F098();
  result = v7;
  *a5 = v7;
  return result;
}

uint64_t sub_26A6D7DB4()
{
  sub_26A84FE58();
  sub_26A6D8150();
  return sub_26A852768();
}

uint64_t sub_26A6D7E04(double *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v20 = *(a2 + 4);
  v9 = a2[1];
  v15 = *a2;
  v16 = v9;
  v17 = *(a2 + 4);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v10 = type metadata accessor for HorizontalListView(0, v14);
  (*(*(v10 - 8) + 16))(v14, a2, v10);
  v11.n128_f64[0] = sub_26A6D63B0();
  v12 = sub_26A6D7F10(v11, v7);
  sub_26A6D6408(v12);
}

double sub_26A6D7F10(__n128 a1, double a2)
{
  v2 = a1.n128_f64[0];
  if (vabdd_f64(a1.n128_f64[0], a2) < 0.01)
  {
    return a1.n128_f64[0];
  }

  if (a1.n128_f64[0] > a2)
  {
    v3 = a1.n128_f64[0];
  }

  else
  {
    v3 = a2;
  }

  if (v3 != a1.n128_f64[0])
  {
    v4 = sub_26A851E88();
    sub_26A7C30BC(v4, v2, v3);
  }

  return v3;
}

uint64_t sub_26A6D7FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t objectdestroyTm_22()
{

  return swift_deallocObject();
}

unint64_t sub_26A6D8150()
{
  result = qword_2803B0540;
  if (!qword_2803B0540)
  {
    sub_26A84FE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0540);
  }

  return result;
}

uint64_t sub_26A6D81A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(sub_26A84F088() - 8);
  v10 = v2 + ((*(v9 + 80) + 88) & ~*(v9 + 80));

  return sub_26A6D78CC(a1, (v2 + 48), v10, v5, v6, v7, v8, a2);
}

double sub_26A6D8254@<D0>(double *a2@<X8>)
{
  v6 = *(sub_26A84F088() - 8);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_26A6D7D5C(v7, v4, v5, a2);
}

uint64_t OUTLINED_FUNCTION_6_48(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_53()
{

  return swift_getWitnessTable();
}

uint64_t sub_26A6D83B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataPasteboardItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3_15();
  v69 = v5;
  OUTLINED_FUNCTION_25_2();
  v72 = sub_26A84EA68();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_15();
  v71 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41D8, &qword_26A8770D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v65 - v11);
  v75 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v77 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v76 = &v65 - v17;
  OUTLINED_FUNCTION_25_2();
  v18 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = *(a2 - 8);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  (*(v20 + 16))(v23, a1, v18, v30);
  if (__swift_getEnumTagSinglePayload(v23, 1, a2) == 1)
  {
    v33 = OUTLINED_FUNCTION_112();
    v34(v33);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v24 + 32))(v32, v23, a2);
    v36 = *(v24 + 16);
    v36(v28, v32, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41E0, &unk_26A8770E0);
    if (swift_dynamicCast())
    {
      v37 = v78[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41E8, &qword_26A886440);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_26A8570D0;
      *(v38 + 56) = a2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v38 + 32));
      v36(boxed_opaque_existential_1, v32, a2);
      v37 = v38;
    }

    v40 = v75;
    v66 = v32;
    v67 = v24;
    v68 = a2;
    v41 = *(v37 + 16);
    if (v41)
    {
      v65 = v37;
      v42 = v37 + 32;
      v35 = MEMORY[0x277D84F90];
      v70 = v7 + 8;
      v73 = xmmword_26A8570D0;
      v74 = v12;
      do
      {
        sub_26A5136A0(v42, v78);
        sub_26A6D9EC0(v78, v12);
        if (__swift_getEnumTagSinglePayload(v12, 1, v40) == 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v78);
          sub_26A4DBD10(v12, &qword_2803B41D8, &qword_26A8770D8);
        }

        else
        {
          v43 = v76;
          sub_26A6DA5B4(v12, v76, type metadata accessor for PasteboardUtility.PasteboardItem);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41F0, &qword_26A8770F0);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41F8, &qword_26A8770F8);
          v45 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
          v46 = swift_allocObject();
          *(v46 + 16) = v73;
          v47 = (v46 + v45);
          sub_26A6D9C04(v43, v77);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA38();
              goto LABEL_17;
            case 2u:
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA48();
LABEL_17:
              sub_26A84EA08();
              v54 = OUTLINED_FUNCTION_6_49();
              v55(v54);
              OUTLINED_FUNCTION_4_60();
              v50 = v77;
              goto LABEL_18;
            case 3u:
              sub_26A6D9C68(v77, type metadata accessor for PasteboardUtility.PasteboardItem);
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA28();
              goto LABEL_15;
            case 4u:
              v48 = v69;
              sub_26A6DA5B4(v77, v69, type metadata accessor for DataPasteboardItem);
              v12 = sub_26A84EA08();
              v40 = v49;
              v50 = v48;
              v51 = type metadata accessor for DataPasteboardItem;
LABEL_18:
              sub_26A6D9C68(v50, v51);
              break;
            default:
              sub_26A6D9C68(v77, type metadata accessor for PasteboardUtility.PasteboardItem);
              OUTLINED_FUNCTION_9_45();
              sub_26A84EA58();
LABEL_15:
              sub_26A84EA08();
              v52 = OUTLINED_FUNCTION_6_49();
              v53(v52);
              break;
          }

          v56 = *(v44 + 48);
          *v47 = v12;
          v47[1] = v40;
          v57 = v76;
          sub_26A6D9C04(v76, v47 + v56);
          v40 = v75;
          v58 = sub_26A8516A8();
          OUTLINED_FUNCTION_4_60();
          sub_26A6D9C68(v57, v59);
          __swift_destroy_boxed_opaque_existential_1(v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A7A2148(0, *(v35 + 16) + 1, 1, v35);
            v35 = v62;
          }

          v12 = v74;
          v61 = *(v35 + 16);
          v60 = *(v35 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_26A7A2148(v60 > 1, v61 + 1, 1, v35);
            v35 = v63;
          }

          *(v35 + 16) = v61 + 1;
          *(v35 + 8 * v61 + 32) = v58;
        }

        v42 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    (*(v67 + 8))(v66, v68);
  }

  return v35;
}

uint64_t static PasteboardUtility.copy(items:)(uint64_t a1)
{
  v3[3] = &type metadata for SystemPasteboard;
  v3[4] = &off_287B1F9F8;
  __swift_project_boxed_opaque_existential_1(v3, &type metadata for SystemPasteboard);
  sub_26A6D8B1C(a1);
  return sub_26A5B4408(v3);
}

void sub_26A6D8B1C(uint64_t a1)
{
  v131 = *MEMORY[0x277D85DE8];
  v118 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v109 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v117 = &v97 - v8;
  v9 = OUTLINED_FUNCTION_25_2();
  v108 = type metadata accessor for DataPasteboardItem(v9);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_15();
  v107 = v11;
  v12 = OUTLINED_FUNCTION_25_2();
  v13 = type metadata accessor for PasteboardUtility.PasteboardItem(v12);
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v121 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  v126 = &v97 - v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v128 = MEMORY[0x277D84F90];
    sub_26A7DD1BC(0, v21, 0);
    v22 = v128;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4210, &qword_26A877118);
    v23 = 0;
    v98 = 0;
    v111 = a1 + 32;
    v106 = (v3 + 32);
    v105 = (v3 + 16);
    v104 = *MEMORY[0x277D74090];
    v103 = *MEMORY[0x277D74128];
    v102 = v3 + 8;
    v100 = xmmword_26A8570D0;
    v99 = xmmword_26A876FB0;
    v116 = v13;
    v115 = v15;
    v110 = v21;
    do
    {
      v120 = v22;
      v24 = *(v111 + 8 * v23);
      v119 = v23 + 1;
      v25 = sub_26A852468();
      v26 = v25;
      v27 = v24 + 64;
      v28 = 1 << *(v24 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & *(v24 + 64);
      v31 = (v28 + 63) >> 6;
      v122 = v25 + 64;
      v124 = v24;

      v32 = 0;
      v33 = v121;
      v123 = v26;
      if (v30)
      {
        while (2)
        {
          v34 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
LABEL_13:
          v37 = v34 | (v32 << 6);
          v38 = *(v124 + 56);
          v39 = (*(v124 + 48) + 16 * v37);
          v41 = *v39;
          v40 = v39[1];
          v125 = v41;
          v127 = v40;
          v42 = v126;
          sub_26A6D9C04(v38 + *(v15 + 72) * v37, v126);
          sub_26A6D9C04(v42, v33);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v76 = sub_26A84AB98();
              v130 = v76;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v129);
              (*(*(v76 - 8) + 32))(boxed_opaque_existential_1, v33, v76);
              goto LABEL_20;
            case 2u:
              v52 = v117;
              v53 = v118;
              (*v106)(v117, v33, v118);
              sub_26A4EC5B0(0, &qword_2803B1C40, 0x277CCA898);
              (*v105)(v109, v52, v53);

              v113 = sub_26A851F68();
              v114 = [v113 length];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C48, &qword_26A877120);
              inited = swift_initStackObject();
              *(inited + 16) = v100;
              v55 = v104;
              *(inited + 32) = v104;
              type metadata accessor for DocumentType(0, v56, v57, v58);
              *(inited + 64) = v59;
              v60 = v103;
              *(inited + 40) = v103;
              type metadata accessor for DocumentAttributeKey(0, v61, v62, v63);
              sub_26A6DA614(&qword_2803AA538, type metadata accessor for DocumentAttributeKey, &unk_26A85657C);
              v64 = v55;
              v65 = v60;
              v66 = v113;
              sub_26A8516A8();
              v67 = sub_26A851688();

              *&v129 = 0;
              v68 = [v66 dataFromRange:0 documentAttributes:v114 error:{v67, &v129}];

              v69 = v129;
              if (v68)
              {
                v70 = sub_26A84ABF8();
                v72 = v71;

                v130 = MEMORY[0x277CC9318];
                *&v129 = v70;
                *(&v129 + 1) = v72;
                v73 = OUTLINED_FUNCTION_5_58();
                v74(v73);
              }

              else
              {
                v82 = v69;
                v83 = sub_26A84AAE8();

                swift_willThrow();
                v84 = sub_26A851E98();
                LOBYTE(v95) = 2;
                sub_26A7B7ED8(v84, 1, "SnippetUI/PasteboardUtility.swift", 33, 2, 167, "pasteboardItem", 14, v95, v96, v97, v98, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, v102, v103, v104, v105, v106);
                v130 = MEMORY[0x277CC9318];
                v129 = v99;
                v85 = OUTLINED_FUNCTION_5_58();
                v86(v85);
                v98 = 0;
              }

              v15 = v115;
              v33 = v121;
              v26 = v123;
              v49 = v127;
              goto LABEL_22;
            case 3u:
              v75 = *v33;
              v130 = sub_26A4EC5B0(0, &qword_28157D7E0, 0x277D755B8);
              *&v129 = v75;
              goto LABEL_20;
            case 4u:
              v45 = v107;
              sub_26A6DA5B4(v33, v107, type metadata accessor for DataPasteboardItem);
              v46 = (v45 + *(v108 + 20));
              v47 = *v46;
              v48 = v46[1];
              v130 = MEMORY[0x277CC9318];
              *&v129 = v47;
              *(&v129 + 1) = v48;
              v49 = v127;

              v50 = v47;
              v33 = v121;
              v51 = v48;
              v15 = v115;
              sub_26A54D260(v50, v51);
              sub_26A6D9C68(v45, type metadata accessor for DataPasteboardItem);
              goto LABEL_21;
            default:
              v43 = *v33;
              v44 = v33[1];
              v130 = MEMORY[0x277D837D0];
              *&v129 = v43;
              *(&v129 + 1) = v44;
LABEL_20:
              v49 = v127;

LABEL_21:
              v26 = v123;
LABEL_22:
              sub_26A6D9C68(v126, type metadata accessor for PasteboardUtility.PasteboardItem);
              *(v122 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
              v78 = (v26[6] + 16 * v37);
              *v78 = v125;
              v78[1] = v49;
              sub_26A576F3C(&v129, (v26[7] + 32 * v37));
              v79 = v26[2];
              v80 = __OFADD__(v79, 1);
              v81 = v79 + 1;
              if (v80)
              {
                goto LABEL_32;
              }

              v26[2] = v81;
              if (!v30)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      v35 = v32;
      while (1)
      {
        v32 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
        }

        if (v32 >= v31)
        {
          break;
        }

        v36 = *(v27 + 8 * v32);
        ++v35;
        if (v36)
        {
          v34 = __clz(__rbit64(v36));
          v30 = (v36 - 1) & v36;
          goto LABEL_13;
        }
      }

      v22 = v120;
      v128 = v120;
      v88 = *(v120 + 16);
      v87 = *(v120 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_26A7DD1BC((v87 > 1), v88 + 1, 1);
        v26 = v123;
        v22 = v128;
      }

      *(v22 + 16) = v88 + 1;
      *(v22 + 8 * v88 + 32) = v26;
      v23 = v119;
    }

    while (v119 != v110);
  }

  v89 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4218, qword_26A877128);
  v90 = sub_26A851A88();

  type metadata accessor for OptionsKey(0, v91, v92, v93);
  sub_26A6DA614(&qword_2803AA518, type metadata accessor for OptionsKey, &unk_26A856538);
  sub_26A8516A8();
  v94 = sub_26A851688();

  [v89 setItems:v90 options:v94];
}

uint64_t DataPasteboardItem.init(type:data:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_26A84EA68();
  OUTLINED_FUNCTION_46();
  v6 = OUTLINED_FUNCTION_112();
  v7(v6);
  result = type metadata accessor for DataPasteboardItem(0);
  v9 = (a3 + *(result + 20));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t static DataPasteboardItem.== infix(_:_:)()
{
  if (sub_26A84EA18())
  {
    type metadata accessor for DataPasteboardItem(0);

    JUMPOUT(0x26D65CE50);
  }

  return 0;
}

uint64_t static PasteboardUtility.PasteboardItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v50 = type metadata accessor for DataPasteboardItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_15();
  v52 = v3;
  OUTLINED_FUNCTION_25_2();
  sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v54 = v5;
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_15();
  v51 = v6;
  OUTLINED_FUNCTION_25_2();
  v7 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v53 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PasteboardUtility.PasteboardItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v50 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = (&v50 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B41B0, &qword_26A876FC0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v50 - v29;
  v32 = (&v50 + *(v31 + 56) - v29);
  sub_26A6D9C04(v56, &v50 - v29);
  sub_26A6D9C04(v57, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A6D9C04(v30, v24);
      if (OUTLINED_FUNCTION_8_51() == 1)
      {
        v43 = v53;
        (*(v53 + 32))(v11, v32, v7);
        OUTLINED_FUNCTION_112();
        v39 = sub_26A84AB68();
        v44 = *(v43 + 8);
        v44(v11, v7);
        v44(v24, v7);
        goto LABEL_14;
      }

      (*(v53 + 8))(v24, v7);
      goto LABEL_19;
    case 2u:
      sub_26A6D9C04(v30, v21);
      if (OUTLINED_FUNCTION_8_51() == 2)
      {
        v37 = v54;
        v36 = v55;
        v38 = v51;
        (*(v54 + 32))(v51, v32, v55);
        v39 = sub_26A84A938();
        v40 = *(v37 + 8);
        v40(v38, v36);
        v40(v21, v36);
        goto LABEL_14;
      }

      (*(v54 + 8))(v21, v55);
      goto LABEL_19;
    case 3u:
      sub_26A6D9C04(v30, v18);
      v41 = *v18;
      if (OUTLINED_FUNCTION_8_51() != 3)
      {

        goto LABEL_19;
      }

      v42 = *v32;
      sub_26A4EC5B0(0, &qword_2803AC8F0, 0x277D82BB8);
      v39 = sub_26A851FF8();

LABEL_14:
      sub_26A6D9C68(v30, type metadata accessor for PasteboardUtility.PasteboardItem);
      return v39 & 1;
    case 4u:
      sub_26A6D9C04(v30, v15);
      if (OUTLINED_FUNCTION_8_51() != 4)
      {
        sub_26A6D9C68(v15, type metadata accessor for DataPasteboardItem);
        goto LABEL_19;
      }

      v35 = v52;
      sub_26A6DA5B4(v32, v52, type metadata accessor for DataPasteboardItem);
      if (sub_26A84EA18() & 1) != 0 && (MEMORY[0x26D65CE50](*(v15 + *(v50 + 20)), *(v15 + *(v50 + 20) + 8), *(v35 + *(v50 + 20)), *(v35 + *(v50 + 20) + 8)))
      {
        sub_26A6D9C68(v35, type metadata accessor for DataPasteboardItem);
        sub_26A6D9C68(v15, type metadata accessor for DataPasteboardItem);
        goto LABEL_31;
      }

      sub_26A6D9C68(v35, type metadata accessor for DataPasteboardItem);
      sub_26A6D9C68(v15, type metadata accessor for DataPasteboardItem);
      goto LABEL_23;
    default:
      sub_26A6D9C04(v30, v27);
      v34 = *v27;
      v33 = v27[1];
      if (OUTLINED_FUNCTION_8_51())
      {

LABEL_19:
        sub_26A4DBD10(v30, &qword_2803B41B0, &qword_26A876FC0);
        goto LABEL_20;
      }

      v46 = *v32;
      v47 = v32[1];
      if (v34 == v46 && v33 == v47)
      {
      }

      else
      {
        OUTLINED_FUNCTION_112();
        v49 = sub_26A852598();

        if ((v49 & 1) == 0)
        {
LABEL_23:
          sub_26A6D9C68(v30, type metadata accessor for PasteboardUtility.PasteboardItem);
LABEL_20:
          v39 = 0;
          return v39 & 1;
        }
      }

LABEL_31:
      sub_26A6D9C68(v30, type metadata accessor for PasteboardUtility.PasteboardItem);
      v39 = 1;
      return v39 & 1;
  }
}