unint64_t sub_221F929C0(uint64_t a1)
{
  result = sub_221F929E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221F929E8()
{
  result = qword_27CFECA70;
  if (!qword_27CFECA70)
  {
    type metadata accessor for AchievementAnchorStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECA70);
  }

  return result;
}

uint64_t sub_221F92A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221F92A60, v3, 0);
}

uint64_t sub_221F92A60()
{
  v1 = sub_221ECB638(v0[2], v0[3]);
  if (!v1)
  {
    v1 = sub_221ED82D4(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  if (*(v1 + 16) && (v3 = sub_221ED4C68(v0[4]), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_221F92B14(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_221F9343C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_221FB6AF8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_221FB6468();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_221F92C48(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_221F92C48(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_221F93414(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_221F93194((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221EF3710(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_221EF3710((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_221F93194((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_221F93194(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_221F93388(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_221F93414(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_221F93450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECA80, &unk_221FBF4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221F934B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 56) + v14);
    v36[0] = *(*(a1 + 48) + v14);
    v36[1] = v15;

    a2(v35, v36);

    v17 = v35[0];
    v16 = v35[1];
    v18 = *v37;
    v20 = sub_221ED4C68(v35[0]);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_25;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v34 & 1) == 0)
      {
        sub_221ED72C4();
      }
    }

    else
    {
      sub_221ED5E64(v23, v34 & 1);
      v25 = sub_221ED4C68(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v37;
    if (v24)
    {
      *(v27[7] + 8 * v20) = v16;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 8 * v20) = v16;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_26;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_221E96470(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v34 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

uint64_t sub_221F93730()
{
  v1 = v0[317];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221F94BE4(v1, (v0 + 2));
  v4 = swift_allocObject();
  v0[318] = v4;
  memcpy((v4 + 16), v0 + 2, 0x168uLL);
  v5 = swift_task_alloc();
  v0[319] = v5;
  v6 = sub_221FB5F28();
  *v5 = v0;
  v5[1] = sub_221F93860;
  v7 = MEMORY[0x277CE93E8];

  return MEMORY[0x28213ACC0](1103, &unk_221FBF500, v4, v2, v6, v3, v7);
}

uint64_t sub_221F93860()
{

  return MEMORY[0x2822009F8](sub_221F93978, 0, 0);
}

uint64_t sub_221F93978()
{
  v1 = v0[317];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221F94BE4(v1, (v0 + 47));
  v4 = swift_allocObject();
  v0[320] = v4;
  memcpy((v4 + 16), v0 + 47, 0x168uLL);
  v5 = swift_task_alloc();
  v0[321] = v5;
  v6 = sub_221FB5FF8();
  *v5 = v0;
  v5[1] = sub_221F93AA8;
  v7 = MEMORY[0x277CE9408];

  return MEMORY[0x28213ACC0](1104, &unk_221FBF510, v4, v2, v6, v3, v7);
}

uint64_t sub_221F93AA8()
{

  return MEMORY[0x2822009F8](sub_221F93BC0, 0, 0);
}

uint64_t sub_221F93BC0()
{
  v1 = v0[317];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221F94BE4(v1, (v0 + 92));
  v4 = swift_allocObject();
  v0[322] = v4;
  memcpy((v4 + 16), v0 + 92, 0x168uLL);
  v5 = swift_task_alloc();
  v0[323] = v5;
  v6 = sub_221FB6108();
  *v5 = v0;
  v5[1] = sub_221F93CF0;
  v7 = MEMORY[0x277CE9428];

  return MEMORY[0x28213ACC0](1106, &unk_221FBF520, v4, v2, v6, v3, v7);
}

uint64_t sub_221F93CF0()
{

  return MEMORY[0x2822009F8](sub_221F93E08, 0, 0);
}

uint64_t sub_221F93E08()
{
  v1 = v0[317];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221F94BE4(v1, (v0 + 137));
  v4 = swift_allocObject();
  v0[324] = v4;
  memcpy((v4 + 16), v0 + 137, 0x168uLL);
  v5 = swift_task_alloc();
  v0[325] = v5;
  v6 = sub_221FB60A8();
  v0[326] = v6;
  *v5 = v0;
  v5[1] = sub_221F93F3C;
  v7 = MEMORY[0x277CE9420];

  return MEMORY[0x28213ACC0](1108, &unk_221FBF530, v4, v2, v6, v3, v7);
}

uint64_t sub_221F93F3C()
{

  return MEMORY[0x2822009F8](sub_221F94054, 0, 0);
}

uint64_t sub_221F94054()
{
  v1 = v0[317];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221F94BE4(v1, (v0 + 182));
  v4 = swift_allocObject();
  v0[327] = v4;
  memcpy((v4 + 16), v0 + 182, 0x168uLL);
  v5 = swift_task_alloc();
  v0[328] = v5;
  *v5 = v0;
  v5[1] = sub_221F94170;
  v6 = v0[326];
  v7 = MEMORY[0x277CE9420];

  return MEMORY[0x28213ACC0](1109, &unk_221FBF540, v4, v2, v6, v3, v7);
}

uint64_t sub_221F94170()
{

  return MEMORY[0x2822009F8](sub_221F94288, 0, 0);
}

uint64_t sub_221F94288()
{
  v1 = v0[317];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221F94BE4(v1, (v0 + 227));
  v4 = swift_allocObject();
  v0[329] = v4;
  memcpy((v4 + 16), v0 + 227, 0x168uLL);
  v5 = swift_task_alloc();
  v0[330] = v5;
  v6 = sub_221FB5F78();
  v0[331] = v6;
  *v5 = v0;
  v5[1] = sub_221F943BC;
  v7 = MEMORY[0x277CE93F8];

  return MEMORY[0x28213ACC0](1154, &unk_221FBF550, v4, v2, v6, v3, v7);
}

uint64_t sub_221F943BC()
{

  return MEMORY[0x2822009F8](sub_221F944D4, 0, 0);
}

uint64_t sub_221F944D4()
{
  v1 = v0[317];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221F94BE4(v1, (v0 + 272));
  v4 = swift_allocObject();
  v0[332] = v4;
  memcpy((v4 + 16), v0 + 272, 0x168uLL);
  v5 = swift_task_alloc();
  v0[333] = v5;
  *v5 = v0;
  v5[1] = sub_221F945F0;
  v6 = v0[331];
  v7 = MEMORY[0x277CE93F8];

  return MEMORY[0x28213ACC0](1155, &unk_221FBF560, v4, v2, v6, v3, v7);
}

uint64_t sub_221F945F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221F94700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_221FB5D78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F947C4, 0, 0);
}

uint64_t sub_221F947C4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4 == *MEMORY[0x277CE9388])
  {
    (*(v5 + 96))(v0[7], v7);
    v8 = *v6;
    v0[8] = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = qword_281307080;
      v12 = v8;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = v0[4];
      v14 = sub_221FB61D8();
      __swift_project_value_buffer(v14, qword_281307DF0);
      sub_221E9DCE8(0xD000000000000088, 0x8000000221FC2CA0, 0xD000000000000030, 0x8000000221FC3E50);
      __swift_project_boxed_opaque_existential_0Tm(v13, v13[3]);
      v15 = swift_task_alloc();
      v0[9] = v15;
      *v15 = v0;
      v15[1] = sub_221F949F0;
      v16 = v0[2];

      return sub_221F6C1CC(v16, v10);
    }
  }

  else
  {
    (*(v5 + 8))(v0[7], v7);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F949F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_221F94B74;
  }

  else
  {
    v2 = sub_221F94B04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F94B04()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F94B74()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F94C1C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E9544C;

  return sub_221F94700(a1, a2, v2 + 16);
}

uint64_t sub_221F94CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_221FB5D78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F94D88, 0, 0);
}

uint64_t sub_221F94D88()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4 == *MEMORY[0x277CE9388])
  {
    (*(v5 + 96))(v0[7], v7);
    v8 = *v6;
    v0[8] = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = qword_281307080;
      v12 = v8;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = v0[4];
      v14 = sub_221FB61D8();
      __swift_project_value_buffer(v14, qword_281307DF0);
      sub_221E9DCE8(0xD000000000000088, 0x8000000221FC2CA0, 0xD00000000000002ELL, 0x8000000221FC0EE0);
      __swift_project_boxed_opaque_existential_0Tm(v13, v13[3]);
      v15 = swift_task_alloc();
      v0[9] = v15;
      *v15 = v0;
      v15[1] = sub_221F94FB4;
      v16 = v0[2];

      return sub_221F6D318(v16, v10);
    }
  }

  else
  {
    (*(v5 + 8))(v0[7], v7);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F94FB4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_221F9612C;
  }

  else
  {
    v2 = sub_221F96130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F950C8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E963B4;

  return sub_221F94CC4(a1, a2, v2 + 16);
}

uint64_t sub_221F95170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_221FB5D78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F95234, 0, 0);
}

uint64_t sub_221F95234()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4 == *MEMORY[0x277CE9388])
  {
    (*(v5 + 96))(v0[7], v7);
    v8 = *v6;
    v0[8] = *v6;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v0[4];
      v12 = v11[3];
      v13 = v8;
      v14 = __swift_project_boxed_opaque_existential_0Tm(v11, v12);
      __swift_project_boxed_opaque_existential_0Tm(v14 + 41, v14[44]);
      v15 = swift_task_alloc();
      v0[9] = v15;
      *v15 = v0;
      v15[1] = sub_221F94FB4;
      v16 = v0[2];

      return sub_221F5B8EC(v16, v10);
    }
  }

  else
  {
    (*(v5 + 8))(v0[7], v7);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_221F953F4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E963B4;

  return sub_221F95170(a1, a2, v2 + 16);
}

uint64_t sub_221F9549C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_221FB5D78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F95560, 0, 0);
}

uint64_t sub_221F95560()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4 == *MEMORY[0x277CE9388])
  {
    (*(v5 + 96))(v0[7], v7);
    v8 = *v6;
    v0[8] = *v6;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v0[4];
      v12 = *(v11 + 304);
      v13 = v8;
      __swift_project_boxed_opaque_existential_0Tm((v11 + 280), v12);
      v14 = swift_task_alloc();
      v0[9] = v14;
      *v14 = v0;
      v14[1] = sub_221F94FB4;
      v15 = v0[2];

      return sub_221F49CCC(v15, v10);
    }
  }

  else
  {
    (*(v5 + 8))(v0[7], v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F95714(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E963B4;

  return sub_221F9549C(a1, a2, v2 + 16);
}

uint64_t sub_221F957BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_221FB5D78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F95880, 0, 0);
}

uint64_t sub_221F95880()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4 == *MEMORY[0x277CE9388])
  {
    (*(v5 + 96))(v0[7], v7);
    v8 = *v6;
    v0[8] = *v6;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v0[4];
      v12 = *(v11 + 304);
      v13 = v8;
      __swift_project_boxed_opaque_existential_0Tm((v11 + 280), v12);
      v14 = swift_task_alloc();
      v0[9] = v14;
      *v14 = v0;
      v14[1] = sub_221F94FB4;
      v15 = v0[2];

      return sub_221F503C8(v15, v10);
    }
  }

  else
  {
    (*(v5 + 8))(v0[7], v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F95A34(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E963B4;

  return sub_221F957BC(a1, a2, v2 + 16);
}

uint64_t sub_221F95ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_221FB5D78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F95BA0, 0, 0);
}

uint64_t sub_221F95BA0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4 == *MEMORY[0x277CE9388])
  {
    (*(v5 + 96))(v0[7], v7);
    v8 = *v6;
    v0[8] = *v6;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v0[4];
      v12 = *(v11 + 264);
      v13 = v8;
      __swift_project_boxed_opaque_existential_0Tm((v11 + 240), v12);
      v14 = swift_task_alloc();
      v0[9] = v14;
      *v14 = v0;
      v14[1] = sub_221F94FB4;
      v15 = v0[2];

      return sub_221F0BFF4(v15, v10);
    }
  }

  else
  {
    (*(v5 + 8))(v0[7], v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F95D54(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E963B4;

  return sub_221F95ADC(a1, a2, v2 + 16);
}

uint64_t sub_221F95DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_221FB5D78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F95EC0, 0, 0);
}

uint64_t sub_221F95EC0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  if (v4 == *MEMORY[0x277CE9388])
  {
    (*(v5 + 96))(v0[7], v7);
    v8 = *v6;
    v0[8] = *v6;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v0[4];
      v12 = *(v11 + 264);
      v13 = v8;
      __swift_project_boxed_opaque_existential_0Tm((v11 + 240), v12);
      v14 = swift_task_alloc();
      v0[9] = v14;
      *v14 = v0;
      v14[1] = sub_221F94FB4;
      v15 = v0[2];

      return sub_221F0EB38(v15, v10);
    }
  }

  else
  {
    (*(v5 + 8))(v0[7], v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F96074(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E963B4;

  return sub_221F95DFC(a1, a2, v2 + 16);
}

unint64_t sub_221F96134()
{
  v1 = [v0 scope];
  if (v1 == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Requesting subscription prefix for public database";
    goto LABEL_14;
  }

  if (v1 == 3)
  {
    return 0xD00000000000002CLL;
  }

  if (v1 == 2)
  {
    return 0xD00000000000002DLL;
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Requesting subscription prefix for unknown database";
LABEL_14:
    _os_log_impl(&dword_221E93000, v4, v5, v7, v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

LABEL_15:

  return 0;
}

id sub_221F96338()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerPushListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221F963EC()
{
  v1[3] = v0;
  v2 = sub_221FB6218();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F964AC, 0, 0);
}

uint64_t sub_221F964AC()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_protectedState;
  v0[7] = OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_protectedState;
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[8] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));

  if (v4)
  {

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *__swift_project_boxed_opaque_existential_0Tm((v0[3] + OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_container), *(v0[3] + OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_container + 24));
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_221F965EC;

    return sub_221F96DAC(v8);
  }
}

uint64_t sub_221F965EC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_221F966EC, 0, 0);
}

uint64_t sub_221F966EC()
{
  v28 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_221EF4114(v5, v4, &v27);
    _os_log_impl(&dword_221E93000, v2, v3, "Environment: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  sub_221E9D138(0, &qword_281306EB8, 0x277D85C78);
  (*(v9 + 104))(v8, *MEMORY[0x277D851C8], v10);
  v11 = sub_221FB6658();
  (*(v9 + 8))(v8, v10);
  v12 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v13 = sub_221FB62E8();

  v14 = sub_221FB62E8();
  v15 = [v12 initWithEnvironmentName:v13 namedDelegatePort:v14 queue:v11];

  if (v15)
  {
    v16 = v0[7];
    v17 = v0[3];
    v18 = sub_221FB6428();
    [v15 _setEnabledTopics_];

    [v15 setDelegate_];
    v19 = *(v17 + v16);
    v0[2] = v15;
    *(swift_task_alloc() + 16) = v0 + 2;

    v20 = v15;
    os_unfair_lock_lock((v19 + 24));
    sub_221F416F0((v19 + 16));
    os_unfair_lock_unlock((v19 + 24));

    v25 = v0[1];
  }

  else
  {
    if (qword_281307070 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_281307DC0);
    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_221E93000, v21, v22, "Could not create APS Connection.", v23, 2u);
      MEMORY[0x223DADA80](v23, -1, -1);
    }

    v24 = v0[8];

    sub_221F98258();
    swift_allocError();
    swift_willThrow();

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_221F96DAC(uint64_t a1)
{
  v1[21] = type metadata accessor for SecureCloudContainer();
  v1[22] = &off_28355F5C8;
  v1[18] = a1;

  return MEMORY[0x2822009F8](sub_221F96E34, 0, 0);
}

uint64_t sub_221F96E34()
{
  v1 = xpc_copy_entitlement_for_self();
  v0[29] = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (!xpc_string_get_string_ptr(v1))
  {
    swift_unknownObjectRelease();
LABEL_6:
    v2 = sub_221FB6318();
    v4 = v7;
    goto LABEL_7;
  }

  v2 = sub_221FB6388();
  v4 = v3;
  v0[10] = v2;
  v0[11] = v3;
  v0[26] = sub_221FB6318();
  v0[27] = v5;
  sub_221E9E194();
  v6 = sub_221FB67A8();

  if (v6)
  {
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
    v8 = v0[1];

    return v8(v2, v4);
  }

  __swift_project_boxed_opaque_existential_0Tm(v0 + 18, v0[21]);
  v10 = sub_221F9ACE4();
  v0[30] = v10;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_221F97070;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB50, qword_221FBF6A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221F995A0;
  v0[13] = &block_descriptor_34;
  v0[14] = v11;
  [v10 serverPreferredPushEnvironmentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F97070()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_221F97204;
  }

  else
  {
    v2 = sub_221F97180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F97180()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_221F97204(uint64_t a1)
{
  v20 = v1;
  v2 = v1[30];
  swift_willThrow();

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v3 = v1[31];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = v3;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_221E9E150(v1[24]);
    v12 = sub_221EF4114(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_221E93000, v6, v7, "Error querying container for push environment: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v13 = v1[31];
  v14 = sub_221FB6318();
  v16 = v15;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v1 + 18);
  v17 = v1[1];

  return v17(v14, v16);
}

void sub_221F973F8(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    oslog = sub_221FB61B8();
    v4 = sub_221FB65A8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_221E93000, oslog, v4, "Public APS Token was nil.", v5, 2u);
      MEMORY[0x223DADA80](v5, -1, -1);
    }

    goto LABEL_13;
  }

  sub_221EBEF90(a2, a3);
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v9 = sub_221FB61D8();
  __swift_project_value_buffer(v9, qword_281307DC0);
  sub_221EBF0C0(a2, a3);
  oslog = a1;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65C8();
  sub_221EBEFE4(a2, a3);
  if (!os_log_type_enabled(v10, v11))
  {

    sub_221EBEFE4(a2, a3);
LABEL_13:

    return;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v24 = v13;
  *v12 = 136315394;
  sub_221EBEF90(a2, a3);
  v14 = sub_221FB5AF8();
  v16 = v15;
  sub_221EBEFE4(a2, a3);
  v17 = sub_221EF4114(v14, v16, &v24);

  *(v12 + 4) = v17;
  *(v12 + 12) = 2080;
  if (a1)
  {

    v18 = [oslog enabledTopics];
    if (v18)
    {
      v19 = v18;
      sub_221FB6438();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB30, &qword_221FBB1A8);
      sub_221FB6A08();

      v20 = 0;
      v21 = 0xE000000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
      v20 = 7104878;
    }

    v22 = sub_221EF4114(v20, v21, &v24);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_221E93000, v10, v11, "Received public token %s on connection with topics: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
    sub_221EBEFE4(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_221F9778C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);

    oslog = sub_221FB61B8();
    v8 = sub_221FB65A8();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      if (a4)
      {
        sub_221FB6A08();
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      else
      {
        v11 = 7104878;
        v12 = 0xE300000000000000;
      }

      v27 = sub_221EF4114(v11, v12, &v33);

      *(v9 + 4) = v27;
      _os_log_impl(&dword_221E93000, oslog, v8, "Topic APS Token was nil for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_221EBEF90(a1, a2);
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v16 = sub_221FB61D8();
    __swift_project_value_buffer(v16, qword_281307DF0);
    sub_221EBF0C0(a1, a2);

    v17 = sub_221FB61B8();
    v18 = sub_221FB65C8();
    sub_221EBEFE4(a1, a2);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315650;
      sub_221EBEF90(a1, a2);
      v21 = sub_221FB5AF8();
      v23 = v22;
      sub_221EBEFE4(a1, a2);
      v24 = sub_221EF4114(v21, v23, &v33);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      if (a4)
      {
        sub_221FB6A08();
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      else
      {
        v26 = 0xE300000000000000;
        v25 = 7104878;
      }

      v28 = sub_221EF4114(v25, v26, &v33);

      *(v19 + 14) = v28;
      *(v19 + 22) = 2080;
      if (a6)
      {
        sub_221FB6A08();
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      else
      {
        v30 = 0xE300000000000000;
        v29 = 7104878;
      }

      v31 = sub_221EF4114(v29, v30, &v33);

      *(v19 + 24) = v31;
      _os_log_impl(&dword_221E93000, v17, v18, "Received per-topic push token %s for topic %s identifier %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v20, -1, -1);
      MEMORY[0x223DADA80](v19, -1, -1);
      sub_221EBEFE4(a1, a2);
    }

    else
    {

      sub_221EBEFE4(a1, a2);
    }
  }
}

void sub_221F97C34(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = [a1 userInfo];
    if (v4 && (v5 = v4, sub_221FB6288(), v5, v6 = sub_221FB6278(), , v7 = [objc_opt_self() notificationFromRemoteNotificationDictionary_], v6, v7))
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v8 = sub_221FB61D8();
      __swift_project_value_buffer(v8, qword_281307DF0);
      v9 = a1;
      v10 = v7;
      v11 = sub_221FB61B8();
      v12 = sub_221FB65C8();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40[0] = v39;
        *v13 = 136315394;
        v15 = [v9 topic];
        if (v15)
        {
          v16 = v15;
          sub_221FB6318();

          sub_221FB6A08();

          v17 = 0;
          v18 = 0xE000000000000000;
        }

        else
        {
          v17 = 7104878;
          v18 = 0xE300000000000000;
        }

        v31 = sub_221EF4114(v17, v18, v40);

        *(v13 + 4) = v31;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v10;
        *v14 = v7;
        v32 = v10;
        _os_log_impl(&dword_221E93000, v11, v12, "APS Push received: %s, notification %@", v13, 0x16u);
        sub_221E9CFE8(v14, &qword_27CFEB900, &unk_221FB8C10);
        MEMORY[0x223DADA80](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x223DADA80](v39, -1, -1);
        MEMORY[0x223DADA80](v13, -1, -1);
      }

      v33 = *(v2 + OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_notificationCenter);
      if (qword_27CFEB798 != -1)
      {
        swift_once();
      }

      v34 = qword_27CFEF990;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECB10, &unk_221FBF680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_221FB81A0;
      sub_221FB6318();
      sub_221FB6908();
      *(inited + 96) = sub_221E9D138(0, &qword_27CFECB18, 0x277CBC4C0);
      *(inited + 72) = v10;
      v36 = v10;
      sub_221ED8054(inited);
      swift_setDeallocating();
      sub_221E9CFE8(inited + 32, &unk_27CFECB20, &unk_221FBA170);
      v37 = sub_221FB6278();

      [v33 postNotificationName:v34 object:0 userInfo:v37];
    }

    else
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v19 = sub_221FB61D8();
      __swift_project_value_buffer(v19, qword_281307DF0);
      v20 = a1;
      v21 = sub_221FB61B8();
      v22 = sub_221FB65C8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v40[0] = v24;
        *v23 = 136315138;
        v25 = [v20 topic];
        if (v25)
        {
          v26 = v25;
          sub_221FB6318();

          sub_221FB6A08();

          v27 = 0;
          v28 = 0xE000000000000000;
        }

        else
        {
          v27 = 7104878;
          v28 = 0xE300000000000000;
        }

        v29 = sub_221EF4114(v27, v28, v40);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_221E93000, v21, v22, "APS Push received without payload for topic: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x223DADA80](v24, -1, -1);
        MEMORY[0x223DADA80](v23, -1, -1);
      }

      v30 = *(v2 + OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_notificationCenter);
      if (qword_27CFEB798 != -1)
      {
        v38 = *(v2 + OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_notificationCenter);
        swift_once();
        v30 = v38;
      }

      [v30 postNotificationName:qword_27CFEF990 object:0];
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_221F98258()
{
  result = qword_27CFECB40;
  if (!qword_27CFECB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECB40);
  }

  return result;
}

unint64_t sub_221F982C0()
{
  result = qword_27CFECB60;
  if (!qword_27CFECB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECB60);
  }

  return result;
}

uint64_t sub_221F9832C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_221F98314(*a1);
  v5 = v4;
  if (v3 == sub_221F98314(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_221FB6B58();
  }

  return v8 & 1;
}

uint64_t sub_221F983B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221F98538(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_221F983E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_221F98314(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_221F98410()
{
  v1 = *v0;
  sub_221FB6C38();
  sub_221F98314(v1);
  sub_221FB6358();

  return sub_221FB6C58();
}

uint64_t sub_221F98474(uint64_t a1)
{
  sub_221F98314(*v1);
  sub_221FB6358();
}

uint64_t sub_221F984C8()
{
  v1 = *v0;
  sub_221FB6C38();
  sub_221F98314(v1);
  sub_221FB6358();

  return sub_221FB6C58();
}

uint64_t sub_221F98538(uint64_t a1, uint64_t a2)
{
  if (sub_221FB6318() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_221FB6B58();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_221FB6318() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = sub_221FB6B58();

  if (v10)
  {
    goto LABEL_16;
  }

  if (sub_221FB6318() == a1 && v11 == a2)
  {

LABEL_24:

    return 2;
  }

  v13 = sub_221FB6B58();

  if (v13)
  {
    goto LABEL_24;
  }

  if (sub_221FB6318() == a1 && v14 == a2)
  {

LABEL_29:

    return 3;
  }

  v15 = sub_221FB6B58();

  if (v15)
  {
    goto LABEL_29;
  }

  if (sub_221FB6318() == a1 && v16 == a2)
  {

LABEL_34:

    return 4;
  }

  v17 = sub_221FB6B58();

  if (v17)
  {
    goto LABEL_34;
  }

  if (sub_221FB6318() == a1 && v18 == a2)
  {

LABEL_39:

    return 5;
  }

  v19 = sub_221FB6B58();

  if (v19)
  {
    goto LABEL_39;
  }

  if (sub_221FB6318() == a1 && v20 == a2)
  {

    return 6;
  }

  else
  {
    v21 = sub_221FB6B58();

    if (v21)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_221F98838(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F98950(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F98A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F98BD0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E96070;

  return v7(a1, a2);
}

uint64_t sub_221F98CE8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221EBD108;

  return v7(a1, a2);
}

uint64_t sub_221F98E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E96070;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F98F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F990A8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F9921C()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221F99338;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB50, qword_221FBF6A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221F995A0;
  v0[13] = &block_descriptor_29_0;
  v0[14] = v2;
  [v1 fetchCloudKitAddressWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F99338()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_221F99464;
  }

  else
  {
    v2 = sub_221F99448;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F99464(uint64_t a1)
{
  swift_willThrow();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_221E93000, v3, v4, "Failed to fetch legacy cloud kit address", v7, 2u);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v8 = *(v1 + 8);

  return v8(0, 0);
}

uint64_t sub_221F995A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_221FB6318();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221F99674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  return MEMORY[0x2822009F8](sub_221F99698, 0, 0);
}

uint64_t sub_221F99698()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = sub_221FB62E8();
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221E9F868;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB48, &unk_221FBF820);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EBCB58;
  v0[13] = &block_descriptor_25;
  v0[14] = v4;
  [v2 fetchShareParticipantForIdentifier:v3 group:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F997D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_221F997F8, 0, 0);
}

uint64_t sub_221F997F8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  sub_221F99B34();
  v4 = sub_221FB6428();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_221F99950;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_35;
  v0[14] = v5;
  [v2 addParticipant:v3 toShares:v4 group:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F99950()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_221F99AC4;
  }

  else
  {
    v2 = sub_221F99A60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F99A60()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F99AC4(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_221F99B34()
{
  result = qword_27CFEB908;
  if (!qword_27CFEB908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEB908);
  }

  return result;
}

uint64_t sub_221F99BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_221F99C04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_221F99C58(void *a1, char a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_221ED8700(MEMORY[0x277D84F90]);
  v6 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277D83B88];
  if (a2)
  {
    *&v19 = 2;
  }

  else
  {
    *&v19 = 1;
  }

  sub_221EC45F0(&v19, v18);
  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_221F78894(v18, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v9 = objc_opt_self();
  *&v18[0] = 0;
  v10 = [v9 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v18];
  v11 = *&v18[0];
  if (v10)
  {
    v12 = sub_221FB5B18();
    v14 = v13;

    v20 = MEMORY[0x277CC9318];
    *&v19 = v12;
    *(&v19 + 1) = v14;
    sub_221EC45F0(&v19, v18);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_221F78894(v18, 0x6974617469766E69, 0xEA00000000006E6FLL, v15);

    v20 = v6;
    *&v19 = a3;
    sub_221EC45F0(&v19, v18);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_221F78894(v18, 0x756F437972746572, 0xEA0000000000746ELL, v16);
  }

  else
  {
    v17 = v11;

    sub_221FB5AA8();

    swift_willThrow();
  }
}

uint64_t sub_221F99EE8()
{
  v1 = sub_221FB5C38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_221FB6C38();
  v6 = [v5 uniqueID];
  sub_221FB5C18();

  sub_221F9A294();
  sub_221FB62B8();
  (*(v2 + 8))(v4, v1);
  return sub_221FB6C58();
}

uint64_t sub_221F99FFC(uint64_t a1)
{
  v2 = sub_221FB5C38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v1 uniqueID];
  sub_221FB5C18();

  sub_221F9A294();
  sub_221FB62B8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_221F9A100()
{
  v1 = sub_221FB5C38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_221FB6C38();
  v6 = [v5 uniqueID];
  sub_221FB5C18();

  sub_221F9A294();
  sub_221FB62B8();
  (*(v2 + 8))(v4, v1);
  return sub_221FB6C58();
}

unint64_t sub_221F9A240()
{
  result = qword_27CFECB68;
  if (!qword_27CFECB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECB68);
  }

  return result;
}

unint64_t sub_221F9A294()
{
  result = qword_27CFEC2C8;
  if (!qword_27CFEC2C8)
  {
    sub_221FB5C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC2C8);
  }

  return result;
}

uint64_t sub_221F9A2EC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_221FB5C38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = [a1 uniqueID];
  sub_221FB5C18();

  v13 = [a3 uniqueID];
  sub_221FB5C18();

  LOBYTE(v13) = sub_221FB5C08();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  return v13 & 1;
}

uint64_t sub_221F9A450(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_221ED4B5C(0x756F437972746572, 0xEA0000000000746ELL);
    if (v5)
    {
      sub_221E951A4(*(a1 + 56) + 32 * v4, v39);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v6 = sub_221ED4B5C(0x6974617469766E69, 0xEA00000000006E6FLL);
          if (v7)
          {
            sub_221E951A4(*(a1 + 56) + 32 * v6, v39);
            if (swift_dynamicCast())
            {
              if (*(a1 + 16))
              {
                v8 = sub_221ED4B5C(1701869940, 0xE400000000000000);
                if (v9)
                {
                  sub_221E951A4(*(a1 + 56) + 32 * v8, v39);
                  if (swift_dynamicCast())
                  {
                    if (v37 == 1)
                    {
                      sub_221E9D138(0, &qword_27CFECB70, 0x277CCAAC8);
                      sub_221E9D138(0, qword_27CFEC620, 0x277D18768);
                      v21 = sub_221FB65F8();
                      if (!v1)
                      {
                        v2 = v21;
                        if (v21)
                        {
LABEL_27:
                          sub_221EBEF30(v37, v38);

                          return v2;
                        }

                        if (qword_281307080 != -1)
                        {
                          swift_once();
                        }

                        v31 = sub_221FB61D8();
                        __swift_project_value_buffer(v31, qword_281307DF0);

                        v23 = sub_221FB61B8();
                        v24 = sub_221FB65A8();

                        if (os_log_type_enabled(v23, v24))
                        {
                          v2 = swift_slowAlloc();
                          v25 = swift_slowAlloc();
                          v39[0] = v25;
                          *v2 = 136315138;
                          v32 = sub_221FB6298();
                          v34 = v33;

                          v35 = sub_221EF4114(v32, v34, v39);

                          *(v2 + 4) = v35;
                          v30 = "Invalid sent invitation in message dictionary %s";
                          goto LABEL_36;
                        }

LABEL_37:

                        goto LABEL_38;
                      }

LABEL_24:

LABEL_25:
                      sub_221EBEF30(v37, v38);
                      return v2;
                    }

                    if (v37 == 2)
                    {
                      sub_221E9D138(0, &qword_27CFECB70, 0x277CCAAC8);
                      sub_221E9D138(0, &qword_27CFECB78, 0x277D18760);
                      v10 = sub_221FB65F8();
                      if (!v1)
                      {
                        v2 = v10;
                        if (v10)
                        {
                          goto LABEL_27;
                        }

                        if (qword_281307080 != -1)
                        {
                          swift_once();
                        }

                        v22 = sub_221FB61D8();
                        __swift_project_value_buffer(v22, qword_281307DF0);

                        v23 = sub_221FB61B8();
                        v24 = sub_221FB65A8();

                        if (os_log_type_enabled(v23, v24))
                        {
                          v2 = swift_slowAlloc();
                          v25 = swift_slowAlloc();
                          v39[0] = v25;
                          *v2 = 136315138;
                          v26 = sub_221FB6298();
                          v28 = v27;

                          v29 = sub_221EF4114(v26, v28, v39);

                          *(v2 + 4) = v29;
                          v30 = "Invalid received invitation in message dictionary %s";
LABEL_36:
                          _os_log_impl(&dword_221E93000, v23, v24, v30, v2, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v25);
                          MEMORY[0x223DADA80](v25, -1, -1);
                          MEMORY[0x223DADA80](v2, -1, -1);
LABEL_38:

                          sub_221EC459C();
                          swift_allocError();
                          *v36 = 5;
                          swift_willThrow();
                          goto LABEL_25;
                        }

                        goto LABEL_37;
                      }

                      goto LABEL_24;
                    }
                  }
                }
              }

              sub_221EBEF30(v37, v38);
            }
          }
        }
      }
    }
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v11 = sub_221FB61D8();
  __swift_project_value_buffer(v11, qword_281307DF0);

  v12 = sub_221FB61B8();
  v13 = sub_221FB65A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39[0] = v15;
    *v14 = 136315138;
    v2 = sub_221FB6298();
    v17 = v16;

    v18 = sub_221EF4114(v2, v17, v39);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_221E93000, v12, v13, "Invalid invitation message dictionary %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DADA80](v15, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
  }

  sub_221EC459C();
  swift_allocError();
  *v19 = 5;
  swift_willThrow();
  return v2;
}

uint64_t sub_221F9AAE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_221F9AB30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_221F9ABCC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221EBD108;

  return v7(a1, a2);
}

id sub_221F9ACE4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_221F9AD3C();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_221F9AD3C()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 48);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v3 = UserDefaultsKeys.rawValue.getter();
    v4 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v2, v3);

    if (v4 == 2)
    {
      v5 = v1;
    }

    else
    {
      v5 = v4;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 2;
    goto LABEL_9;
  }

  if (v1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 1;
LABEL_9:
  v7 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v8 = sub_221FB62E8();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v6];

  v10 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  v11 = [v10 options];
  swift_beginAccess();
  v12 = sub_221FB62E8();

  [v11 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

  v13 = [v10 options];
  [v13 setUseZoneWidePCS_];

  return v10;
}

uint64_t sub_221F9AF18()
{

  return swift_deallocClassInstance();
}

uint64_t sub_221F9AF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 3384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F9AFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 3384) = 1;
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

    *(result + 3384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F9B3A4@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v654 = a2;
  v5 = sub_221FB6618();
  v634 = *(v5 - 8);
  v635 = v5;
  MEMORY[0x28223BE20](v5);
  v633 = (&v623 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v631 = sub_221FB6608();
  MEMORY[0x28223BE20](v631);
  v632 = (&v623 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_221FB6238();
  MEMORY[0x28223BE20](v8 - 8);
  v630 = (&v623 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *MEMORY[0x277CE91F8];
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v655 = v10;
  v12 = [v11 initWithSuiteName_];
  if (!v12)
  {
    v12 = [objc_opt_self() standardUserDefaults];
  }

  a3[392] = v12;
  v13 = a1[1];
  v14 = a1[2];
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1[5];
  v19 = a1[9];
  v18 = a1[10];
  v21 = a1[11];
  v20 = a1[12];
  v645 = a1[6];
  v646 = v21;
  v647 = v18;
  v648 = v20;
  v653 = a1[13];
  v22 = a1[8];
  v644 = a1[7];
  v649 = a1;
  a3[119] = v22;
  v23 = v12;
  v656 = sub_221FB5F98();
  v24 = v23;
  v25 = v19;
  v26 = v22;
  v27 = v24;
  v640 = v26;
  v28 = v25;
  v652 = v13;
  v636 = v14;
  v650 = v15;
  v638 = v16;
  v651 = v17;
  v639 = v645;
  v627 = v644;
  v641 = v646;
  v646 = v647;
  v648 = v648;
  v642 = v653;
  v644 = sub_221FB5F88();
  v29 = type metadata accessor for IDSListener();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC23ActivitySharingServices11IDSListener_messageCenter] = v28;
  v31 = v28;
  *&v30[OBJC_IVAR____TtC23ActivitySharingServices11IDSListener_transportDispatchService] = sub_221FB5F88();
  v730.receiver = v30;
  v730.super_class = v29;
  v32 = objc_msgSendSuper2(&v730, sel_init);
  v33 = *(v32 + OBJC_IVAR____TtC23ActivitySharingServices11IDSListener_messageCenter);
  v647 = v32;
  [v33 setSecureCloudDelegate_];

  v34 = type metadata accessor for InvitationStore();
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = MEMORY[0x277D84F90];
  v35[14] = 0xD000000000000019;
  v35[15] = 0x8000000221FC48D0;
  v35[16] = v27;
  v35[17] = v36;
  a3[172] = v34;
  a3[173] = &off_28355CA20;
  a3[169] = v35;
  v37 = swift_allocObject();
  v38 = v27;
  swift_defaultActor_initialize();
  v37[14] = 0xD000000000000017;
  v37[15] = 0x8000000221FC48F0;
  v37[16] = v38;
  v37[17] = v36;
  v629 = v38;
  a3[177] = v34;
  a3[178] = &off_28355CA20;
  a3[174] = v37;
  sub_221EA4AB4((a3 + 169), v727);
  sub_221EA4AB4((a3 + 174), v724);
  v653 = type metadata accessor for AsyncLock();
  v39 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v39 + 112) = 0;
  a3[162] = v39;
  sub_221EA4AB4(v727, (a3 + 151));
  sub_221EA4AB4(v724, (a3 + 156));
  v40 = sub_221FB5F88();
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  a3[161] = v40;
  v728 = &type metadata for InvitationListener;
  v656 = sub_221FA6860();
  v729 = v656;
  v727[0] = swift_allocObject();
  sub_221F41394((a3 + 151), v727[0] + 16);
  v41 = type metadata accessor for InvitationService();
  v42 = objc_allocWithZone(v41);
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  MEMORY[0x28223BE20](v43);
  v45 = (&v623 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = sub_221FA48D4(v45, v42);
  __swift_destroy_boxed_opaque_existential_0(v727);
  a3[166] = v41;
  a3[167] = &off_28355B948;
  a3[163] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB80, &unk_221FBFEC0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_221FBB1B0;
  *(v48 + 32) = sub_221FB6318();
  *(v48 + 40) = v49;
  *(v48 + 48) = v31;
  v643 = v31;
  *(v48 + 56) = sub_221FB6318();
  *(v48 + 64) = v50;
  v51 = v646;
  *(v48 + 72) = v646;
  v646 = v51;
  v52 = sub_221ED82AC(v48);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB88, &unk_221FBFEC8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  a3[144] = &type metadata for IDSFirewallService;
  a3[145] = &off_28355C480;
  v53 = v650;
  a3[141] = v650;
  a3[142] = v52;
  v54 = sub_221FB5CD8();
  v55 = MEMORY[0x277CE9370];
  a3[53] = v54;
  a3[54] = v55;
  __swift_allocate_boxed_opaque_existential_1(a3 + 50);
  v628 = v53;
  v56 = v654;
  sub_221FB5CC8();
  a3[48] = &type metadata for ActivityDataQuery;
  a3[49] = &off_283558B40;
  a3[45] = v56;
  a3[43] = &type metadata for ActivityDataCoordinator;
  a3[44] = &off_283557C78;
  v57 = v652;
  a3[40] = v652;
  v58 = type metadata accessor for DatabaseCoordinator();
  v59 = objc_allocWithZone(v58);
  v60 = v651;
  *&v59[OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_databaseClient] = v651;
  v637 = v57;
  v645 = v60;
  v61 = v56;
  v62 = sub_221ED8190(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB90, &unk_221FBFED0);
  v63 = swift_allocObject();
  *(v63 + 24) = 0;
  *(v63 + 16) = v62;
  *&v59[OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers] = v63;
  v723.receiver = v59;
  v723.super_class = v58;
  v64 = objc_msgSendSuper2(&v723, sel_init);
  a3[117] = v58;
  a3[118] = &off_28355BE38;
  a3[114] = v64;
  sub_221EA4AB4((a3 + 114), v727);
  v625 = 0x8000000221FC4910;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v626 = &v623;
  MEMORY[0x28223BE20](v65);
  v67 = (&v623 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v725 = v58;
  v726 = &off_28355BE38;
  v724[0] = v69;
  v70 = type metadata accessor for ActivitySnapshotSummaryStore();
  v71 = swift_allocObject();
  v72 = __swift_mutable_project_boxed_opaque_existential_1(v724, v58);
  v652 = *(*(v58 - 1) + 64);
  MEMORY[0x28223BE20](v72);
  v650 = ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = (&v623 - v650);
  v76 = *(v75 + 16);
  v654 = (v75 + 16);
  v76(&v623 - v650);
  v651 = v76;
  v77 = *v74;
  v721 = v58;
  v722 = &off_28355BE38;
  *&v720 = v77;
  v78 = v61;
  swift_defaultActor_initialize();
  sub_221E977F0(&v720, (v71 + 14));
  v71[19] = v78;
  v71[20] = 0xD000000000000017;
  v71[21] = v625;
  v71[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  a3[63] = v70;
  a3[64] = &off_28355CF00;
  a3[60] = v71;
  sub_221EA4AB4((a3 + 114), v727);
  v623 = 0x8000000221FC4930;
  v79 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v625 = &v623;
  MEMORY[0x28223BE20](v79);
  v81 = (&v623 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v82 + 16))(v81);
  v83 = *v81;
  v725 = v58;
  v726 = &off_28355BE38;
  v724[0] = v83;
  v84 = type metadata accessor for GoalCompletionAnchorStore();
  v85 = swift_allocObject();
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v724, v58);
  MEMORY[0x28223BE20](v86);
  v87 = (&v623 - v650);
  v76(&v623 - v650);
  v88 = *v87;
  v721 = v58;
  v722 = &off_28355BE38;
  *&v720 = v88;
  v89 = v78;
  v626 = v89;
  swift_defaultActor_initialize();
  sub_221E977F0(&v720, (v85 + 14));
  v85[19] = v89;
  v85[20] = 0xD000000000000014;
  v85[21] = v623;
  v85[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  a3[128] = v84;
  a3[129] = &off_28355D0F0;
  a3[125] = v85;
  a3[390] = &type metadata for TodaySnapshotUpdateProvider;
  a3[391] = &off_283558CB8;
  v90 = swift_allocObject();
  a3[387] = v90;
  sub_221EA4AB4((a3 + 40), v90 + 16);
  sub_221EA4AB4((a3 + 125), v90 + 56);
  sub_221EA4AB4((a3 + 60), v90 + 96);
  a3[421] = &type metadata for YesterdaySnapshotUpdateProvider;
  a3[422] = &off_28355C2E8;
  v91 = swift_allocObject();
  a3[418] = v91;
  sub_221EA4AB4((a3 + 40), v91 + 16);
  sub_221EA4AB4((a3 + 60), v91 + 56);
  a3[13] = &type metadata for AchievementQuery;
  a3[14] = &off_28355CFF8;
  sub_221EA4AB4((a3 + 114), v727);
  v623 = 0x8000000221FC4950;
  v92 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v625 = &v623;
  MEMORY[0x28223BE20](v92);
  v94 = (&v623 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v95 + 16))(v94);
  v96 = *v94;
  v725 = v58;
  v726 = &off_28355BE38;
  v724[0] = v96;
  v97 = type metadata accessor for AchievementAnchorStore();
  v98 = swift_allocObject();
  v99 = __swift_mutable_project_boxed_opaque_existential_1(v724, v58);
  MEMORY[0x28223BE20](v99);
  v100 = (&v623 - v650);
  v101 = v650;
  v651(&v623 - v650);
  v102 = *v100;
  v721 = v58;
  v722 = &off_28355BE38;
  *&v720 = v102;
  v103 = v626;
  v626 = v103;
  swift_defaultActor_initialize();
  sub_221E977F0(&v720, (v98 + 14));
  v98[19] = v103;
  v98[20] = 0xD000000000000012;
  v98[21] = v623;
  v98[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  v104 = a3;
  a3[15] = v98;
  v105 = a3 + 15;
  v105[3] = v97;
  v105[4] = &off_28355F028;
  v106 = v104;
  v624 = v104;
  sub_221EA4AB4((v104 + 40), (v105 + 5));
  sub_221EA4AB4(v105, (v105 + 10));
  v107 = [objc_allocWithZone(MEMORY[0x277D09CD8]) init];
  v105[18] = &type metadata for NotificationSuppressionProvider;
  v105[19] = &off_283559EE0;
  v105[15] = v107;
  sub_221EA4AB4((v106 + 114), v727);
  v623 = 0x8000000221FC4970;
  v108 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v625 = &v623;
  MEMORY[0x28223BE20](v108);
  v110 = (&v623 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v111 + 16))(v110);
  v112 = *v110;
  v725 = v58;
  v726 = &off_28355BE38;
  v724[0] = v112;
  v113 = type metadata accessor for WorkoutCompletionAnchorStore();
  v114 = swift_allocObject();
  v115 = __swift_mutable_project_boxed_opaque_existential_1(v724, v58);
  MEMORY[0x28223BE20](v115);
  v651(&v623 - v101);
  v116 = *(&v623 - v101);
  v721 = v58;
  v722 = &off_28355BE38;
  *&v720 = v116;
  v117 = v626;
  swift_defaultActor_initialize();
  sub_221E977F0(&v720, (v114 + 14));
  v114[19] = v117;
  v114[20] = 0xD000000000000018;
  v114[21] = v623;
  v114[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  v118 = v624;
  v105[381] = v113;
  v105[382] = &off_2835592A0;
  v105[378] = v114;
  sub_221EA4AB4((v118 + 114), v727);
  v623 = 0x8000000221FC4990;
  v119 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v625 = &v623;
  MEMORY[0x28223BE20](v119);
  v121 = (&v623 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v122 + 16))(v121);
  v123 = *v121;
  v725 = v58;
  v726 = &off_28355BE38;
  v724[0] = v123;
  v124 = type metadata accessor for WorkoutDeletionAnchorStore();
  v125 = swift_allocObject();
  v126 = __swift_mutable_project_boxed_opaque_existential_1(v724, v58);
  MEMORY[0x28223BE20](v126);
  v127 = (&v623 - v101);
  v651(v127);
  v128 = *v127;
  v721 = v58;
  v722 = &off_28355BE38;
  *&v720 = v128;
  v129 = v117;
  swift_defaultActor_initialize();
  sub_221E977F0(&v720, (v125 + 14));
  v626 = v129;
  v125[19] = v129;
  v125[20] = 0xD000000000000016;
  v125[21] = v623;
  v125[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v724);
  v130 = v118;
  __swift_destroy_boxed_opaque_existential_0(v727);
  v105[386] = v124;
  v105[387] = &off_28355EF70;
  v105[383] = v125;
  sub_221EA4AB4((v118 + 40), (v105 + 388));
  sub_221EA4AB4((v105 + 378), (v105 + 393));
  sub_221EA4AB4((v105 + 383), (v105 + 398));
  v105[108] = &type metadata for FriendListCoordinator;
  v105[109] = &off_28355CAD8;
  v654 = v105;
  v131 = v627;
  v105[105] = v627;
  v132 = sub_221F3FA70();
  v627 = v131;
  sub_221FB6228();
  v727[0] = MEMORY[0x277D84F90];
  sub_221F3FABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC500, &qword_221FBCD20);
  sub_221F3FB14();
  sub_221FB67D8();
  (v634[13])(v633, *MEMORY[0x277D85260], v635);
  v635 = v132;
  v133 = sub_221FB6648();
  v134 = objc_opt_self();
  v652 = v133;
  v651 = [v134 changeTokenCacheFromUserDefaultsWithSerialQueue:v133 cloudType:1];
  v135 = type metadata accessor for SecureCloudContainer();
  v136 = swift_allocObject();
  *(v136 + 32) = 0;
  v137 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v138 = [v137 initWithSuiteName_];
  if (!v138)
  {
    v138 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v136 + 40) = 16;
  *(v136 + 48) = v138;
  *(v136 + 16) = 0xD000000000000033;
  *(v136 + 24) = 0x8000000221FC49F0;
  v634 = v135;
  v118[328] = v135;
  v118[329] = &off_28355F5C8;
  v118[325] = v136;
  __swift_project_boxed_opaque_existential_0Tm(v118 + 325, v135);
  v139 = sub_221F9ACE4();
  v140 = [objc_allocWithZone(MEMORY[0x277CE9548]) initWithContainer_];

  v118[96] = v140;
  v118[94] = &type metadata for CloudKitCoordinator;
  v118[95] = &off_28355F370;
  v141 = v636;
  v118[91] = v636;
  sub_221EA4AB4((v118 + 50), v727);
  v118[84] = &type metadata for CloudDeviceStore;
  v118[85] = &off_28355CF30;
  v142 = swift_allocObject();
  v130[81] = v142;
  v143 = v140;
  v144 = v141;
  v145 = v143;
  sub_221F7BA38(v727, v629, v142 + 16);
  v130[89] = &type metadata for CloudDeviceSystem;
  v130[90] = &off_283560748;
  v146 = swift_allocObject();
  v130[86] = v146;
  sub_221EA4AB4((v130 + 81), v146 + 16);
  sub_221EA4AB4((v130 + 86), v727);
  sub_221EA4AB4((v130 + 91), v724);
  v147 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  MEMORY[0x28223BE20](v147);
  v149 = &v623 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v150 + 16))(v149);
  v151 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  MEMORY[0x28223BE20](v151);
  v153 = v130;
  v154 = (&v623 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v155 + 16))(v154);
  v156 = sub_221FA4BA8(v149, *v154);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 640) = v156;
  *(v153 + 2744) = &type metadata for SecureCloudFetchService;
  *(v153 + 2752) = &off_283559208;
  *(v153 + 2720) = v145;
  v157 = type metadata accessor for ServerChangeTokenCacheStore();
  v158 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB98, &unk_221FBFEE0);
  v159 = swift_allocObject();
  *(v159 + 24) = 0;
  v160 = v651;
  *(v159 + 16) = v651;
  *(v158 + 16) = v159;
  *(v153 + 3040) = v157;
  *(v153 + 3048) = &off_28355B4C8;
  *(v153 + 3016) = v158;
  sub_221EA4AB4(v153 + 2720, v727);
  sub_221EA4AB4(v153 + 3016, v724);
  v161 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  MEMORY[0x28223BE20](v161);
  v163 = (&v623 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v164 + 16))(v163);
  v165 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  MEMORY[0x28223BE20](v165);
  v167 = (&v623 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v168 + 16))(v167);
  v169 = *v163;
  v170 = *v167;
  v171 = v628;
  v633 = v171;
  v172 = v145;
  v651 = v160;
  v173 = sub_221FA4E28(v171, v169, v170);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 2760) = v173;
  v174 = v173;
  [(objc_class *)v144 setSecureCloudDelegate:v174];

  *(v153 + 2840) = &type metadata for SecureCloudPushService;
  *(v153 + 2848) = &off_283559A90;
  v175 = swift_allocObject();
  *(v153 + 2816) = v175;
  sub_221EA4AB4(v153 + 2600, v175 + 24);
  *(v175 + 16) = v172;
  *(v153 + 2920) = &type metadata for SecureCloudSubscriptionService;
  *(v153 + 2928) = &off_28355EE50;
  v176 = swift_allocObject();
  *(v153 + 2896) = v176;
  sub_221EA4AB4(v153 + 2600, v176 + 24);
  *(v176 + 16) = v172;
  sub_221EA4AB4(v153 + 2600, v727);
  v177 = objc_opt_self();
  v636 = v172;
  v650 = v177;
  v178 = [v177 defaultCenter];
  v179 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v632 = &v623;
  MEMORY[0x28223BE20](v179);
  v181 = (&v623 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v182 + 16))(v181);
  v183 = *v181;
  v184 = v634;
  v725 = v634;
  v726 = &off_28355F5C8;
  v724[0] = v183;
  v185 = type metadata accessor for ServerPushListener();
  v186 = objc_allocWithZone(v185);
  v187 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  MEMORY[0x28223BE20](v187);
  v189 = (&v623 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v190 + 16))(v189);
  v191 = *v189;
  v721 = v184;
  v722 = &off_28355F5C8;
  *&v720 = v191;
  sub_221EA4AB4(&v720, &v186[OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_container]);
  *&v186[OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_notificationCenter] = v178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECBA0, &unk_221FBFEE8);
  v192 = swift_allocObject();
  *(v192 + 24) = 0;
  *(v192 + 16) = 0;
  *&v186[OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_protectedState] = v192;
  v719.receiver = v186;
  v719.super_class = v185;
  v193 = objc_msgSendSuper2(&v719, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v720);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 3080) = v185;
  *(v153 + 3088) = &off_28355F2A0;
  *(v153 + 3056) = v193;
  *(v153 + 800) = &type metadata for CompetitionCoordinator;
  *(v153 + 808) = &off_28355EF08;
  v194 = v638;
  *(v153 + 776) = v638;
  sub_221EA4AB4(v153 + 776, v153 + 864);
  v195 = v633;
  *(v153 + 904) = v633;
  *(v153 + 848) = &type metadata for CompetitionService;
  *(v153 + 856) = &off_283557F98;
  v196 = swift_allocObject();
  *(v153 + 824) = v196;
  sub_221EA4AB4(v153 + 2816, v196 + 24);
  *(v196 + 16) = v195;
  sub_221EA4AB4(v153 + 824, v727);
  sub_221EA4AB4(v153 + 2816, v724);
  v197 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  MEMORY[0x28223BE20](v197);
  v199 = (&v623 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v200 + 16))(v199);
  v201 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  MEMORY[0x28223BE20](v201);
  v203 = (&v623 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v204 + 16))(v203);
  v205 = v195;
  v206 = v194;
  v207 = sub_221FA506C(v199, v203);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 816) = v207;
  v208 = v207;
  [v206 setSecureCloudDelegate_];

  v209 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v210 = v626;
  v211 = sub_221FB62E8();
  v212 = [v209 initWithCategory:3 domainName:v211 healthStore:v210];

  *(v153 + 2584) = &type metadata for SecureCloudAccountStore;
  *(v153 + 2592) = &off_283558620;
  *(v153 + 2560) = v212;
  *(v153 + 24) = &type metadata for SecureCloudAccountService;
  *(v153 + 32) = &off_2835598E8;
  v213 = swift_allocObject();
  *v153 = v213;
  sub_221EA4AB4(v153 + 2600, v213 + 16);
  *(v153 + 544) = &type metadata for AnalyticsService;
  *(v153 + 552) = &off_283558B50;
  v214 = swift_allocObject();
  *(v153 + 520) = v214;
  sub_221EA4AB4(v153, v214 + 16);
  sub_221EA4AB4(v153 + 648, v214 + 56);
  sub_221EA4AB4((v654 + 105), v214 + 96);
  v215 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v216 = v655;
  v217 = [v215 initWithSuiteName_];
  if (!v217)
  {
    v217 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v214 + 136) = 7;
  v218 = MEMORY[0x277D84F90];
  *(v214 + 144) = MEMORY[0x277D84F90];
  *(v214 + 152) = v217;
  *(v153 + 304) = &type metadata for ActivityDataPreviewCoordinator;
  *(v153 + 312) = &off_283557F58;
  *(v153 + 280) = v637;
  swift_beginAccess();
  v219 = byte_27CFEC8A0;
  *(v153 + 584) = &type metadata for AppInstallationCoordinator;
  *(v153 + 592) = &off_28355AE40;
  *(v153 + 560) = v639;
  *(v153 + 568) = v219;
  *(v153 + 624) = &type metadata for BadgeCoordinator;
  *(v153 + 632) = &off_28355CD00;
  *(v153 + 600) = v627;
  *(v153 + 1112) = &type metadata for NotificationCoordinator;
  *(v153 + 1120) = &off_28355CD38;
  *(v153 + 1088) = v640;
  v220 = type metadata accessor for MigrationAvailableItemStore();
  v221 = swift_allocObject();
  swift_defaultActor_initialize();
  v221[14] = v210;
  v221[15] = 0;
  v222 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v222 + 112) = 0;
  v221[16] = v222;
  *(v153 + 1064) = v220;
  *(v153 + 1072) = &off_28355A710;
  *(v153 + 1040) = v221;
  *(v153 + 2664) = &type metadata for SecureCloudGateway;
  *(v153 + 2672) = &off_283560950;
  *(v153 + 2640) = v641;
  *(v153 + 2792) = &type metadata for SecureCloudParticipantService;
  *(v153 + 2800) = &off_283557D20;
  v223 = v636;
  *(v153 + 2768) = v636;
  *(v153 + 2880) = &type metadata for SecureCloudShareService;
  *(v153 + 2888) = &off_2835578F8;
  v224 = swift_allocObject();
  *(v153 + 2856) = v224;
  sub_221EA4AB4(v153 + 2600, v224 + 24);
  *(v224 + 16) = v223;
  *(v153 + 1456) = &type metadata for RelationshipCoordinator;
  *(v153 + 1464) = &off_283560A48;
  v225 = v642;
  *(v153 + 1432) = v642;
  v226 = v205;
  v642 = v225;
  v227 = v223;
  v228 = sub_221FB6628();
  v229 = [objc_allocWithZone(MEMORY[0x277CE9560]) initWithCloudType:1 contactsManager:v226 clientQueue:v228];

  *(v153 + 1624) = &type metadata for RelationshipFinalizationCoordinator;
  *(v153 + 1632) = &off_28355BE88;
  *(v153 + 1600) = v229;
  *(v153 + 1984) = &type metadata for RelationshipPushService;
  *(v153 + 1992) = &off_2835584A8;
  v230 = swift_allocObject();
  *(v153 + 1960) = v230;
  sub_221EA4AB4(v153 + 1040, v230 + 24);
  sub_221EA4AB4(v153 + 1432, v230 + 64);
  sub_221EA4AB4(v153 + 2816, v230 + 104);
  *(v230 + 16) = v226;
  *(v153 + 1496) = &type metadata for RelationshipDowngradeService;
  *(v153 + 1504) = &off_2835582E8;
  v231 = swift_allocObject();
  *(v153 + 1472) = v231;
  sub_221EA4AB4(v153 + 400, v231 + 16);
  sub_221EA4AB4(v153 + 520, v231 + 56);
  sub_221EA4AB4(v153 + 560, v231 + 96);
  sub_221EA4AB4(v153 + 648, v231 + 136);
  sub_221EA4AB4(v153 + 776, v231 + 176);
  sub_221EA4AB4(v153 + 912, v231 + 232);
  sub_221EA4AB4(v153 + 1040, v231 + 272);
  sub_221EA4AB4(v153 + 1960, v231 + 312);
  v232 = v226;
  v233 = ASCloudKitGroupManateeDowngrade();
  v234 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v234)
  {
    v234 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v231 + 352) = 7;
  *(v231 + 360) = v218;
  *(v231 + 368) = v234;
  v235 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v235)
  {
    v235 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v231 + 376) = 267;
  *(v231 + 384) = v235;
  v236 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v236)
  {
    v236 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v231 + 392) = 2;
  *(v231 + 400) = v236;
  v237 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v237)
  {
    v237 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v231 + 408) = 3;
  *(v231 + 416) = 0x40F5180000000000;
  *(v231 + 424) = v237;
  *(v231 + 216) = v233;
  *(v231 + 224) = v232;
  sub_221EA4AB4(v153 + 728, v727);
  sub_221EA4AB4(v153 + 1040, v724);
  sub_221EA4AB4(v153 + 1472, &v720);
  v238 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  MEMORY[0x28223BE20](v238);
  v240 = (&v623 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v241 + 16))(v240);
  v242 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  MEMORY[0x28223BE20](v242);
  v244 = (&v623 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v245 + 16))(v244);
  v246 = __swift_mutable_project_boxed_opaque_existential_1(&v720, v721);
  MEMORY[0x28223BE20](v246);
  v248 = &v623 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v249 + 16))(v248);
  v250 = *v240;
  v251 = *v244;
  v252 = v232;
  v253 = sub_221FA5330(v250, v252, v251, v248);
  __swift_destroy_boxed_opaque_existential_0(&v720);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 1080) = v253;
  *(v153 + 2464) = &type metadata for RelationshipUpdateService;
  *(v153 + 2472) = &off_283558FF0;
  v254 = swift_allocObject();
  *(v153 + 2440) = v254;
  sub_221EA4AB4(v153 + 1600, v254 + 24);
  sub_221EA4AB4(v153 + 1960, v254 + 64);
  *(v254 + 16) = v252;
  *(v153 + 2024) = &type metadata for RelationshipRepairService;
  *(v153 + 2032) = &off_283559DD8;
  v255 = swift_allocObject();
  *(v153 + 2000) = v255;
  sub_221EA4AB4(v153, v255 + 16);
  sub_221EA4AB4(v153 + 560, v255 + 56);
  sub_221EA4AB4(v153 + 728, v255 + 96);
  sub_221EA4AB4(v153 + 1304, v255 + 152);
  sub_221EA4AB4(v153 + 2768, v255 + 192);
  sub_221EA4AB4(v153 + 2816, v255 + 232);
  sub_221EA4AB4(v153 + 1960, v255 + 272);
  sub_221EA4AB4(v153 + 2856, v255 + 312);
  v256 = v252;
  v257 = ASCloudKitGroupManateeRepair();
  v258 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v259 = v655;
  v260 = [v258 initWithSuiteName_];
  if (!v260)
  {
    v260 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v255 + 352) = 12;
  *(v255 + 360) = 0x40F5180000000000;
  *(v255 + 368) = v260;
  *(v255 + 136) = v257;
  *(v255 + 144) = v256;
  *(v153 + 2704) = &type metadata for SecureCloudErrorDispatcher;
  *(v153 + 2712) = &off_28355BD38;
  v261 = swift_allocObject();
  *(v153 + 2680) = v261;
  sub_221EA4AB4(v153 + 2000, v261 + 16);
  *(v153 + 1864) = &type metadata for RelationshipMigrationService;
  *(v153 + 1872) = &off_283559C00;
  v262 = swift_allocObject();
  *(v153 + 1840) = v262;
  sub_221EA4AB4(v153, v262 + 16);
  sub_221EA4AB4(v153 + 400, v262 + 56);
  sub_221EA4AB4(v153 + 520, v262 + 96);
  sub_221EA4AB4(v153 + 560, v262 + 136);
  sub_221EA4AB4(v153 + 648, v262 + 176);
  sub_221EA4AB4(v153 + 728, v262 + 216);
  sub_221EA4AB4(v153 + 776, v262 + 264);
  sub_221EA4AB4(v153 + 912, v262 + 312);
  sub_221EA4AB4(v153 + 1040, v262 + 352);
  sub_221EA4AB4(v153 + 2816, v262 + 392);
  sub_221EA4AB4(v153 + 1432, v262 + 432);
  sub_221EA4AB4(v153 + 1960, v262 + 472);
  sub_221EA4AB4(v153 + 2856, v262 + 512);
  v263 = v256;
  v264 = ASCloudKitGroupManateeMigrate();
  v265 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  v266 = MEMORY[0x277D84F90];
  if (!v265)
  {
    v265 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v262 + 552) = 257;
  *(v262 + 560) = v265;
  v267 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v267)
  {
    v267 = [objc_opt_self() standardUserDefaults];
  }

  v268 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  v269 = 604800.0;
  if (v268)
  {
    v269 = 86400.0;
  }

  *(v262 + 568) = 9;
  *(v262 + 576) = v269;
  *(v262 + 584) = v267;
  v270 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v270)
  {
    v270 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v262 + 592) = 7;
  *(v262 + 600) = v266;
  *(v262 + 608) = v270;
  v271 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v271)
  {
    v271 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v262 + 616) = 267;
  *(v262 + 624) = v271;
  v272 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v272)
  {
    v272 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v262 + 632) = 10;
  *(v262 + 640) = v272;
  *(v262 + 256) = v264;
  *(v262 + 304) = v263;
  *(v153 + 1904) = &type metadata for RelationshipNotificationService;
  *(v153 + 1912) = &off_28355A590;
  v273 = swift_allocObject();
  *(v153 + 1880) = v273;
  sub_221EA4AB4(v153 + 728, v273 + 24);
  sub_221EA4AB4(v153 + 1432, v273 + 72);
  sub_221EA4AB4(v153 + 1600, v273 + 112);
  sub_221EA4AB4(v153 + 1960, v273 + 152);
  v274 = v263;
  v275 = ASCloudKitGroupUserActionExplicit();
  *(v273 + 16) = v274;
  *(v273 + 64) = v275;
  *(v153 + 2064) = &type metadata for RelationshipRemovalService;
  *(v153 + 2072) = &off_2835599D0;
  v276 = swift_allocObject();
  *(v153 + 2040) = v276;
  sub_221EA4AB4(v153 + 1432, v276 + 24);
  sub_221EA4AB4(v153 + 1600, v276 + 64);
  sub_221EA4AB4(v153 + 1960, v276 + 104);
  *(v276 + 16) = v274;
  *(v153 + 2504) = &type metadata for RelationshipUpgradeService;
  *(v153 + 2512) = &off_28355BA70;
  v277 = swift_allocObject();
  *(v153 + 2480) = v277;
  sub_221EA4AB4(v153, v277 + 16);
  sub_221EA4AB4(v153 + 520, v277 + 56);
  sub_221EA4AB4(v153 + 560, v277 + 96);
  sub_221EA4AB4(v153 + 728, v277 + 136);
  sub_221EA4AB4(v153 + 2640, v277 + 192);
  sub_221EA4AB4(v153 + 1304, v277 + 232);
  sub_221EA4AB4(v153 + 2768, v277 + 272);
  sub_221EA4AB4(v153 + 1960, v277 + 312);
  sub_221EA4AB4(v153 + 2856, v277 + 352);
  *(v277 + 416) = &type metadata for IDSClient;
  *(v277 + 424) = &off_28355A500;
  v278 = v643;
  *(v277 + 392) = v644;
  *(v277 + 400) = v278;
  v279 = v274;
  v280 = ASCloudKitGroupManateeAddContainer();
  v281 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v281)
  {
    v281 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v277 + 432) = 256;
  *(v277 + 440) = v281;
  v282 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v282)
  {
    v282 = [objc_opt_self() standardUserDefaults];
  }

  v283 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  v284 = 604800.0;
  if (v283)
  {
    v284 = 86400.0;
  }

  *(v277 + 448) = 13;
  *(v277 + 456) = v284;
  *(v277 + 464) = v282;
  v285 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v285)
  {
    v285 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v277 + 472) = 14;
  *(v277 + 480) = v285;
  v286 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v286)
  {
    v286 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v277 + 488) = 15;
  *(v277 + 496) = v286;
  *(v277 + 176) = v280;
  *(v277 + 184) = v279;
  *(v153 + 2544) = &type metadata for RelationshipVisibilityService;
  *(v153 + 2552) = &off_2835580B0;
  v287 = swift_allocObject();
  *(v153 + 2520) = v287;
  sub_221EA4AB4(v153 + 728, v287 + 16);
  sub_221EA4AB4(v153 + 1432, v287 + 72);
  sub_221EA4AB4(v153 + 1600, v287 + 112);
  sub_221EA4AB4(v153 + 1960, v287 + 152);
  v288 = v279;
  *(v287 + 56) = ASCloudKitGroupUserActionExplicit();
  *(v287 + 64) = v288;
  *(v153 + 1944) = &type metadata for RelationshipParticipantService;
  *(v153 + 1952) = &off_28355A450;
  v289 = swift_allocObject();
  *(v153 + 1920) = v289;
  sub_221EA4AB4(v153 + 728, v289 + 16);
  sub_221EA4AB4(v153 + 2768, v289 + 56);
  sub_221EA4AB4(v153 + 280, v727);
  *(v153 + 1544) = &type metadata for RelationshipInviteAcceptService;
  *(v153 + 1552) = &off_283560088;
  v290 = swift_allocObject();
  *(v153 + 1520) = v290;
  sub_221EA4AB4(v153 + 728, (v290 + 8));
  sub_221EA4AB4(v153 + 2640, (v290 + 15));
  sub_221EA4AB4(v153 + 1304, (v290 + 20));
  sub_221EA4AB4(v153 + 1432, (v290 + 25));
  sub_221EA4AB4(v153 + 1600, (v290 + 30));
  sub_221EA4AB4(v153 + 1920, (v290 + 35));
  sub_221EA4AB4(v153 + 1960, (v290 + 40));
  sub_221EA4AB4(v153 + 2856, (v290 + 45));
  v291 = v288;
  v292 = ASCloudKitGroupManateeInvitation();
  sub_221EA4AB4(v727, (v290 + 2));
  v293 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v293 + 112) = 0;
  v290[7] = v293;
  v290[13] = v292;
  v290[14] = v291;
  *(v153 + 1664) = &type metadata for RelationshipInviteReceiveService;
  *(v153 + 1672) = &off_28355C560;
  v294 = swift_allocObject();
  *(v153 + 1640) = v294;
  sub_221EA4AB4(v153, v294 + 16);
  sub_221EA4AB4(v153 + 560, v294 + 56);
  sub_221EA4AB4(v153 + 280, v294 + 96);
  sub_221EA4AB4(v153 + 600, v294 + 136);
  sub_221EA4AB4(v153 + 648, v294 + 176);
  sub_221EA4AB4(v153 + 728, v294 + 216);
  sub_221EA4AB4(v153 + 2640, v294 + 272);
  sub_221EA4AB4(v153 + 1304, v294 + 312);
  sub_221EA4AB4(v153 + 1040, v294 + 352);
  sub_221EA4AB4(v153 + 1088, v294 + 392);
  sub_221EA4AB4(v153 + 1432, v294 + 432);
  sub_221EA4AB4(v153 + 1920, v294 + 472);
  sub_221EA4AB4(v153 + 1960, v294 + 512);
  sub_221EA4AB4(v153 + 2856, v294 + 552);
  v295 = v291;
  v296 = ASCloudKitGroupManateeInvitation();
  v297 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v297)
  {
    v297 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v294 + 592) = 7;
  *(v294 + 600) = MEMORY[0x277D84F90];
  *(v294 + 608) = v297;
  v298 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v298)
  {
    v298 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v294 + 616) = 267;
  *(v294 + 624) = v298;
  *(v294 + 256) = v296;
  *(v294 + 264) = v295;
  *(v153 + 1704) = &type metadata for RelationshipInviteRequestService;
  *(v153 + 1712) = &off_28355A070;
  v299 = swift_allocObject();
  *(v153 + 1680) = v299;
  sub_221EA4AB4(v153, v299 + 16);
  sub_221EA4AB4(v153 + 280, v299 + 56);
  sub_221EA4AB4(v153 + 648, v299 + 96);
  sub_221EA4AB4(v153 + 728, v299 + 136);
  sub_221EA4AB4(v153 + 2640, v299 + 192);
  sub_221EA4AB4(v153 + 1304, v299 + 232);
  sub_221EA4AB4(v153 + 1040, v299 + 272);
  sub_221EA4AB4(v153 + 1432, v299 + 312);
  sub_221EA4AB4(v153 + 1920, v299 + 352);
  sub_221EA4AB4(v153 + 1960, v299 + 392);
  sub_221EA4AB4(v153 + 2856, v299 + 432);
  v300 = v295;
  v301 = ASCloudKitGroupManateeInvitation();
  v302 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v302)
  {
    v302 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v299 + 472) = 7;
  *(v299 + 480) = MEMORY[0x277D84F90];
  *(v299 + 488) = v302;
  v303 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v303)
  {
    v303 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v299 + 496) = 267;
  *(v299 + 504) = v303;
  *(v299 + 176) = v301;
  *(v299 + 184) = v300;
  *(v153 + 1744) = &type metadata for RelationshipInviteResponseService;
  *(v153 + 1752) = &off_283557E00;
  v304 = swift_allocObject();
  *(v153 + 1720) = v304;
  sub_221EA4AB4(v153 + 280, v304 + 16);
  sub_221EA4AB4(v153 + 560, v304 + 56);
  sub_221EA4AB4(v153 + 600, v304 + 96);
  sub_221EA4AB4(v153 + 728, v304 + 136);
  sub_221EA4AB4(v153 + 2640, v304 + 192);
  sub_221EA4AB4(v153 + 1088, v304 + 232);
  sub_221EA4AB4(v153 + 1432, v304 + 272);
  sub_221EA4AB4(v153 + 1960, v304 + 312);
  sub_221EA4AB4(v153 + 2856, v304 + 352);
  v305 = v300;
  *(v304 + 176) = ASCloudKitGroupManateeInvitation();
  *(v304 + 184) = v305;
  *(v153 + 1784) = &type metadata for RelationshipInviteIgnoreService;
  *(v153 + 1792) = &off_28355B4F0;
  v306 = swift_allocObject();
  *(v153 + 1760) = v306;
  sub_221EA4AB4(v153 + 728, v306 + 16);
  sub_221EA4AB4(v153 + 1960, v306 + 72);
  v307 = v305;
  *(v306 + 56) = ASCloudKitGroupManateeInvitation();
  *(v306 + 64) = v307;
  *(v153 + 1824) = &type metadata for RelationshipInviteWithdrawService;
  *(v153 + 1832) = &off_28355C3A8;
  v308 = swift_allocObject();
  *(v153 + 1800) = v308;
  sub_221EA4AB4(v153 + 600, v308 + 16);
  sub_221EA4AB4(v153 + 728, v308 + 56);
  sub_221EA4AB4(v153 + 1304, v308 + 112);
  sub_221EA4AB4(v153 + 1088, v308 + 152);
  sub_221EA4AB4(v153 + 2040, v308 + 192);
  v309 = v307;
  *(v308 + 96) = ASCloudKitGroupManateeInvitation();
  *(v308 + 104) = v309;
  *(v153 + 1584) = &type metadata for RelationshipInviteFallbackService;
  *(v153 + 1592) = &off_28355D030;
  v310 = swift_allocObject();
  *(v153 + 1560) = v310;
  sub_221EA4AB4(v153 + 1432, v310 + 24);
  sub_221EA4AB4(v153 + 1800, v310 + 64);
  *(v310 + 16) = v309;
  *(v153 + 1192) = &type metadata for InvitationDispatcher;
  *(v153 + 1200) = &off_28355C8C0;
  v311 = swift_allocObject();
  *(v153 + 1168) = v311;
  sub_221EA4AB4(v153 + 400, v311 + 16);
  sub_221EA4AB4(v153 + 1432, v311 + 64);
  sub_221EA4AB4(v153 + 1520, v311 + 104);
  sub_221EA4AB4(v153 + 1560, v311 + 144);
  sub_221EA4AB4(v153 + 1640, v311 + 184);
  sub_221EA4AB4(v153 + 1680, v311 + 224);
  sub_221EA4AB4(v153 + 1720, v311 + 264);
  sub_221EA4AB4(v153 + 1760, v311 + 304);
  sub_221EA4AB4(v153 + 1800, v311 + 344);
  v312 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v313 = v309;
  v314 = [v312 initWithSuiteName_];
  if (!v314)
  {
    v314 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v311 + 384) = 6;
  *(v311 + 392) = v314;
  v315 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v315)
  {
    v315 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v311 + 400) = 4;
  *(v311 + 408) = v315;
  *(v311 + 56) = v313;
  sub_221EA4AB4(v153 + 1168, v153 + 2080);
  *(v153 + 2144) = &type metadata for InvitationListener;
  v643 = sub_221EC436C();
  *(v153 + 2152) = v643;
  v316 = swift_allocObject();
  *(v153 + 2120) = v316;
  sub_221F41394(v153 + 1208, v316 + 16);
  sub_221EA4AB4(v153 + 1472, v153 + 2160);
  sub_221EA4AB4(v153 + 1840, v153 + 2200);
  sub_221EA4AB4(v153 + 1880, v153 + 2240);
  sub_221EA4AB4(v153 + 2040, v153 + 2280);
  sub_221EA4AB4(v153 + 2000, v153 + 2320);
  sub_221EA4AB4(v153 + 2480, v153 + 2360);
  sub_221EA4AB4(v153 + 2520, v153 + 2400);
  sub_221EA4AB4(v153 + 1600, v727);
  sub_221EA4AB4(v153 + 1520, v724);
  sub_221EA4AB4(v153 + 2040, &v720);
  sub_221EA4AB4(v153 + 2440, v717);
  v317 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v641 = &v623;
  MEMORY[0x28223BE20](v317);
  v644 = v313;
  v319 = (&v623 - ((v318 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v320 + 16))(v319);
  v321 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  MEMORY[0x28223BE20](v321);
  v323 = &v623 - ((v322 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v324 + 16))(v323);
  v325 = __swift_mutable_project_boxed_opaque_existential_1(&v720, v721);
  MEMORY[0x28223BE20](v325);
  v327 = (&v623 - ((v326 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v328 + 16))(v327);
  v329 = __swift_mutable_project_boxed_opaque_existential_1(v717, v718);
  MEMORY[0x28223BE20](v329);
  v331 = &v623 - ((v330 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v332 + 16))(v331);
  v333 = sub_221FA56D4(*v319, v323, v327, v331);
  __swift_destroy_boxed_opaque_existential_0(v717);
  __swift_destroy_boxed_opaque_existential_0(&v720);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 1512) = v333;
  v334 = v333;
  v335 = v642;
  [v642 setSecureCloudDelegate_];

  *(v153 + 464) = &type metadata for AdminSystem;
  *(v153 + 472) = &off_2835590F0;
  v336 = swift_allocObject();
  *(v153 + 440) = v336;
  v337 = v643;
  *(v336 + 80) = &type metadata for InvitationListener;
  *(v336 + 88) = v337;
  v338 = swift_allocObject();
  *(v336 + 56) = v338;
  sub_221F41394(v153 + 1208, v338 + 16);
  sub_221EA4AB4(v153 + 1304, v336 + 16);
  v339 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v340 = [v339 initWithSuiteName_];
  if (!v340)
  {
    v340 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v336 + 96) = 8;
  *(v336 + 104) = 0;
  *(v336 + 112) = 0;
  *(v336 + 120) = v340;
  sub_221EA4AB4(v153 + 648, v727);
  sub_221EA4AB4(v153 + 728, v724);
  sub_221EA4AB4(v153 + 1472, &v720);
  sub_221EA4AB4(v153, v717);
  sub_221EA4AB4(v153 + 2560, v715);
  sub_221EA4AB4(v153 + 2720, v713);
  sub_221EA4AB4(v153 + 2896, v710);
  v341 = [v650 defaultCenter];
  type metadata accessor for NotificationObserver();
  v342 = swift_allocObject();
  strcpy((v342 + 16), "AccountSystem");
  *(v342 + 30) = -4864;
  *(v342 + 32) = v341;
  v343 = v342;
  v643 = v342;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECBA8, &unk_221FBFEF0);
  v344 = swift_allocObject();
  *(v344 + 24) = 0;
  *(v344 + 16) = MEMORY[0x277D84F90];
  *(v343 + 40) = v344;
  v345 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v655 = &v623;
  MEMORY[0x28223BE20](v345);
  v347 = (&v623 - ((v346 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v348 + 16))(v347);
  v349 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  v650 = &v623;
  MEMORY[0x28223BE20](v349);
  v351 = (&v623 - ((v350 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v352 + 16))(v351);
  v353 = __swift_mutable_project_boxed_opaque_existential_1(&v720, v721);
  v642 = &v623;
  MEMORY[0x28223BE20](v353);
  v355 = &v623 - ((v354 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v356 + 16))(v355);
  v357 = __swift_mutable_project_boxed_opaque_existential_1(v717, v718);
  v641 = &v623;
  MEMORY[0x28223BE20](v357);
  v359 = &v623 - ((v358 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v360 + 16))(v359);
  v361 = __swift_mutable_project_boxed_opaque_existential_1(v715, v716);
  v640 = &v623;
  MEMORY[0x28223BE20](v361);
  v363 = (&v623 - ((v362 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v364 + 16))(v363);
  v365 = __swift_mutable_project_boxed_opaque_existential_1(v713, v714);
  v639 = &v623;
  MEMORY[0x28223BE20](v365);
  v367 = (&v623 - ((v366 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v368 + 16))(v367);
  v369 = __swift_mutable_project_boxed_opaque_existential_1(v710, v711);
  v638 = &v623;
  MEMORY[0x28223BE20](v369);
  v371 = (&v623 - ((v370 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v372 + 16))(v371);
  v373 = *v351;
  v374 = *v363;
  v375 = *v367;
  v708 = &type metadata for CloudDeviceStore;
  v709 = &off_28355CF30;
  v376 = swift_allocObject();
  v706 = v376;
  v377 = v347[3];
  v376[3] = v347[2];
  v376[4] = v377;
  v376[5] = v347[4];
  v378 = v347[1];
  v376[1] = *v347;
  v376[2] = v378;
  v705 = &off_28355F370;
  v704 = &type metadata for CloudKitCoordinator;
  v703[0] = v373;
  v701 = &type metadata for RelationshipDowngradeService;
  v702 = &off_2835582E8;
  v700[0] = swift_allocObject();
  memcpy((v700[0] + 16), v355, 0x1A0uLL);
  v698 = &type metadata for SecureCloudAccountService;
  v699 = &off_2835598E8;
  v379 = swift_allocObject();
  *&v697 = v379;
  v380 = *(v359 + 1);
  *(v379 + 16) = *v359;
  *(v379 + 32) = v380;
  *(v379 + 48) = *(v359 + 4);
  v696 = &off_283558620;
  v695 = &type metadata for SecureCloudAccountStore;
  v694[0] = v374;
  v693 = &off_283559208;
  v692 = &type metadata for SecureCloudFetchService;
  v691[0] = v375;
  v689 = &type metadata for SecureCloudSubscriptionService;
  v690 = &off_28355EE50;
  v381 = swift_allocObject();
  v688[0] = v381;
  v382 = v371[1];
  v381[1] = *v371;
  v381[2] = v382;
  v381[3] = v371[2];
  v637 = type metadata accessor for AccountSystem();
  v383 = swift_allocObject();
  v384 = __swift_mutable_project_boxed_opaque_existential_1(&v706, &type metadata for CloudDeviceStore);
  v636 = &v623;
  MEMORY[0x28223BE20](v384);
  v386 = (&v623 - ((v385 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v387 + 16))(v386);
  v388 = __swift_mutable_project_boxed_opaque_existential_1(v703, &type metadata for CloudKitCoordinator);
  v635 = &v623;
  MEMORY[0x28223BE20](v388);
  v390 = (&v623 - ((v389 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v391 + 16))(v390);
  v392 = __swift_mutable_project_boxed_opaque_existential_1(v700, &type metadata for RelationshipDowngradeService);
  v634 = &v623;
  MEMORY[0x28223BE20](v392);
  v630 = (&v623 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v394 + 16))();
  v395 = __swift_mutable_project_boxed_opaque_existential_1(&v697, &type metadata for SecureCloudAccountService);
  v633 = &v623;
  MEMORY[0x28223BE20](v395);
  v397 = &v623 - ((v396 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v398 + 16))(v397);
  v399 = __swift_mutable_project_boxed_opaque_existential_1(v694, &type metadata for SecureCloudAccountStore);
  v632 = &v623;
  MEMORY[0x28223BE20](v399);
  v401 = (&v623 - ((v400 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v402 + 16))(v401);
  v403 = __swift_mutable_project_boxed_opaque_existential_1(v691, &type metadata for SecureCloudFetchService);
  v631 = &v623;
  MEMORY[0x28223BE20](v403);
  v405 = (&v623 - ((v404 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v406 + 16))(v405);
  v407 = __swift_mutable_project_boxed_opaque_existential_1(v688, v689);
  v629 = &v623;
  MEMORY[0x28223BE20](v407);
  v409 = (&v623 - ((v408 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v410 + 16))(v409);
  v411 = *v390;
  v412 = *v401;
  v413 = *v405;
  v686 = &type metadata for CloudDeviceStore;
  v687 = &off_28355CF30;
  v414 = swift_allocObject();
  *&v685 = v414;
  v415 = v386[3];
  v414[3] = v386[2];
  v414[4] = v415;
  v414[5] = v386[4];
  v416 = v386[1];
  v414[1] = *v386;
  v414[2] = v416;
  v684 = &off_28355F370;
  v683 = &type metadata for CloudKitCoordinator;
  *&v682 = v411;
  v680 = &type metadata for RelationshipDowngradeService;
  v681 = &off_2835582E8;
  *&v679 = swift_allocObject();
  memcpy((v679 + 16), v630, 0x1A0uLL);
  v677 = &type metadata for SecureCloudAccountService;
  v678 = &off_2835598E8;
  v417 = swift_allocObject();
  *&v676 = v417;
  v418 = *(v397 + 1);
  *(v417 + 16) = *v397;
  *(v417 + 32) = v418;
  *(v417 + 48) = *(v397 + 4);
  v675 = &off_283558620;
  v674 = &type metadata for SecureCloudAccountStore;
  *&v673 = v412;
  v672 = &off_283559208;
  v671 = &type metadata for SecureCloudFetchService;
  *&v670 = v413;
  v668 = &type metadata for SecureCloudSubscriptionService;
  v669 = &off_28355EE50;
  v419 = swift_allocObject();
  *&v667 = v419;
  v420 = v409[1];
  v419[1] = *v409;
  v419[2] = v420;
  v419[3] = v409[2];
  swift_defaultActor_initialize();
  v421 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v421 + 112) = 0;
  v383[14] = v421;
  sub_221E977F0(&v685, (v383 + 15));
  sub_221E977F0(&v682, (v383 + 20));
  sub_221E977F0(&v679, (v383 + 26));
  sub_221E977F0(&v676, (v383 + 31));
  sub_221E977F0(&v673, (v383 + 36));
  sub_221E977F0(&v670, (v383 + 41));
  sub_221E977F0(&v667, (v383 + 46));
  v383[25] = v643;
  v383[51] = 0;
  __swift_destroy_boxed_opaque_existential_0(v688);
  __swift_destroy_boxed_opaque_existential_0(v691);
  __swift_destroy_boxed_opaque_existential_0(v694);
  __swift_destroy_boxed_opaque_existential_0(&v697);
  __swift_destroy_boxed_opaque_existential_0(v700);
  __swift_destroy_boxed_opaque_existential_0(v703);
  __swift_destroy_boxed_opaque_existential_0(&v706);
  __swift_destroy_boxed_opaque_existential_0(v710);
  __swift_destroy_boxed_opaque_existential_0(v713);
  __swift_destroy_boxed_opaque_existential_0(v715);
  __swift_destroy_boxed_opaque_existential_0(v717);
  __swift_destroy_boxed_opaque_existential_0(&v720);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 64) = v637;
  *(v153 + 72) = &off_283559360;
  *(v153 + 40) = v383;
  sub_221EA4AB4(v153 + 912, v727);
  sub_221EA4AB4(v153 + 2816, v724);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECBB0, &unk_221FBFEF8);
  v422 = swift_allocObject();
  *(v422 + 16) = xmmword_221FBFAE0;
  *(v422 + 56) = &type metadata for AchievementUpdateProvider;
  *(v422 + 64) = &off_283559FC0;
  v423 = swift_allocObject();
  *(v422 + 32) = v423;
  v424 = v654;
  sub_221FA6AC8((v654 + 5), v423 + 16);
  *(v422 + 96) = &type metadata for CompetitionUpdateProvider;
  *(v422 + 104) = &off_283559F18;
  v425 = swift_allocObject();
  *(v422 + 72) = v425;
  sub_221FA6B24(v153 + 864, v425 + 16);
  v426 = *(v153 + 3120);
  v427 = *(v153 + 3128);
  v428 = __swift_project_boxed_opaque_existential_0Tm((v153 + 3096), v426);
  *(v422 + 136) = v426;
  *(v422 + 144) = *(v427 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v422 + 112));
  (*(*(v426 - 8) + 16))(boxed_opaque_existential_1, v428, v426);
  *(v422 + 176) = &type metadata for WorkoutUpdateProvider;
  *(v422 + 184) = &off_28355CE50;
  v430 = swift_allocObject();
  *(v422 + 152) = v430;
  sub_221FA6B80((v424 + 388), v430 + 16);
  v431 = *(v153 + 3368);
  v432 = *(v153 + 3376);
  v433 = __swift_project_boxed_opaque_existential_0Tm((v153 + 3344), v431);
  *(v422 + 216) = v431;
  *(v422 + 224) = *(v432 + 8);
  v434 = __swift_allocate_boxed_opaque_existential_1((v422 + 192));
  (*(*(v431 - 8) + 16))(v434, v433, v431);
  LOBYTE(v433) = byte_27CFEC8A0;
  *(v153 + 3000) = &type metadata for SecureCloudUpdateCoalescer;
  *(v153 + 3008) = &off_283559708;
  v435 = swift_allocObject();
  *(v153 + 2976) = v435;
  v436 = v644;
  *(v435 + 16) = v644;
  sub_221EA4AB4(v727, v435 + 24);
  *(v435 + 64) = v433;
  sub_221EA4AB4(v724, v435 + 72);
  *(v435 + 112) = v422;
  v437 = swift_allocObject();
  v653 = v436;
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v437 + 112) = 0;
  *(v435 + 120) = v437;
  sub_221EA4AB4(v153, v727);
  sub_221EA4AB4(v153 + 560, v724);
  sub_221EA4AB4(v153 + 728, &v720);
  sub_221EA4AB4((v424 + 105), v717);
  sub_221EA4AB4(v153 + 1600, v715);
  sub_221EA4AB4(v153 + 2976, v713);
  v438 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v655 = &v623;
  MEMORY[0x28223BE20](v438);
  v440 = &v623 - ((v439 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v441 + 16))(v440);
  v442 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  v654 = &v623;
  MEMORY[0x28223BE20](v442);
  v444 = &v623 - ((v443 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v445 + 16))(v444);
  v446 = __swift_mutable_project_boxed_opaque_existential_1(&v720, v721);
  v650 = &v623;
  MEMORY[0x28223BE20](v446);
  v448 = (&v623 - ((v447 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v449 + 16))(v448);
  v450 = __swift_mutable_project_boxed_opaque_existential_1(v717, v718);
  v644 = &v623;
  MEMORY[0x28223BE20](v450);
  v452 = (&v623 - ((v451 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v453 + 16))(v452);
  v454 = __swift_mutable_project_boxed_opaque_existential_1(v715, v716);
  v643 = &v623;
  MEMORY[0x28223BE20](v454);
  v456 = (&v623 - ((v455 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v457 + 16))(v456);
  v458 = __swift_mutable_project_boxed_opaque_existential_1(v713, v714);
  v642 = &v623;
  MEMORY[0x28223BE20](v458);
  v460 = (&v623 - ((v459 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v461 + 16))(v460);
  v462 = *v444;
  LOBYTE(v444) = v444[8];
  v463 = *v448;
  v464 = *v452;
  v465 = *v456;
  v711 = &type metadata for SecureCloudAccountService;
  v712 = &off_2835598E8;
  v466 = swift_allocObject();
  v710[0] = v466;
  v467 = *(v440 + 1);
  *(v466 + 16) = *v440;
  *(v466 + 32) = v467;
  *(v466 + 48) = *(v440 + 4);
  v708 = &type metadata for AppInstallationCoordinator;
  v709 = &off_28355AE40;
  v706 = v462;
  v707 = v444;
  v705 = &off_28355F370;
  v704 = &type metadata for CloudKitCoordinator;
  v703[0] = v463;
  v702 = &off_28355CAD8;
  v701 = &type metadata for FriendListCoordinator;
  v700[0] = v464;
  v698 = &type metadata for InvitationListener;
  v699 = v656;
  *&v697 = swift_allocObject();
  sub_221F41394(v153 + 1208, v697 + 16);
  v696 = &off_28355BE88;
  v695 = &type metadata for RelationshipFinalizationCoordinator;
  v694[0] = v465;
  v692 = &type metadata for SecureCloudUpdateCoalescer;
  v693 = &off_283559708;
  v468 = swift_allocObject();
  v691[0] = v468;
  v469 = v460[5];
  v468[5] = v460[4];
  v468[6] = v469;
  v468[7] = v460[6];
  v470 = v460[1];
  v468[1] = *v460;
  v468[2] = v470;
  v471 = v460[3];
  v468[3] = v460[2];
  v468[4] = v471;
  v639 = type metadata accessor for InvitationStateObserver();
  v472 = objc_allocWithZone(v639);
  v473 = __swift_mutable_project_boxed_opaque_existential_1(v710, v711);
  v641 = &v623;
  MEMORY[0x28223BE20](v473);
  v634 = (&v623 - ((v474 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v475 + 16))();
  v476 = __swift_mutable_project_boxed_opaque_existential_1(&v706, v708);
  v640 = &v623;
  MEMORY[0x28223BE20](v476);
  v478 = &v623 - ((v477 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v479 + 16))(v478);
  v480 = __swift_mutable_project_boxed_opaque_existential_1(v703, v704);
  v638 = &v623;
  MEMORY[0x28223BE20](v480);
  v482 = (&v623 - ((v481 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v483 + 16))(v482);
  v484 = __swift_mutable_project_boxed_opaque_existential_1(v700, v701);
  v637 = &v623;
  MEMORY[0x28223BE20](v484);
  v486 = (&v623 - ((v485 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v487 + 16))(v486);
  v488 = __swift_mutable_project_boxed_opaque_existential_1(&v697, v698);
  v636 = &v623;
  MEMORY[0x28223BE20](v488);
  v490 = (&v623 - ((v489 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v491 + 16))(v490);
  v492 = __swift_mutable_project_boxed_opaque_existential_1(v694, v695);
  v635 = &v623;
  MEMORY[0x28223BE20](v492);
  v494 = (&v623 - ((v493 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v495 + 16))(v494);
  v496 = __swift_mutable_project_boxed_opaque_existential_1(v691, v692);
  v633 = &v623;
  MEMORY[0x28223BE20](v496);
  v498 = (&v623 - ((v497 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v499 + 16))(v498);
  v500 = *v478;
  LOBYTE(v478) = v478[8];
  v501 = *v482;
  v502 = *v486;
  v503 = *v494;
  v689 = &type metadata for SecureCloudAccountService;
  v690 = &off_2835598E8;
  v504 = swift_allocObject();
  v688[0] = v504;
  v505 = v634;
  v506 = *(v634 + 1);
  *(v504 + 16) = *v634;
  *(v504 + 32) = v506;
  *(v504 + 48) = v505[4];
  v686 = &type metadata for AppInstallationCoordinator;
  v687 = &off_28355AE40;
  *&v685 = v500;
  BYTE8(v685) = v478;
  v684 = &off_28355F370;
  v683 = &type metadata for CloudKitCoordinator;
  *&v682 = v501;
  v681 = &off_28355CAD8;
  v680 = &type metadata for FriendListCoordinator;
  *&v679 = v502;
  v677 = &type metadata for InvitationListener;
  v678 = v656;
  v507 = swift_allocObject();
  *&v676 = v507;
  v508 = v490[3];
  v507[3] = v490[2];
  v507[4] = v508;
  v509 = v490[5];
  v507[5] = v490[4];
  v507[6] = v509;
  v510 = v490[1];
  v507[1] = *v490;
  v507[2] = v510;
  v675 = &off_28355BE88;
  v674 = &type metadata for RelationshipFinalizationCoordinator;
  *&v673 = v503;
  v671 = &type metadata for SecureCloudUpdateCoalescer;
  v672 = &off_283559708;
  v511 = swift_allocObject();
  *&v670 = v511;
  v512 = v498[5];
  v511[5] = v498[4];
  v511[6] = v512;
  v511[7] = v498[6];
  v513 = v498[1];
  v511[1] = *v498;
  v511[2] = v513;
  v514 = v498[3];
  v511[3] = v498[2];
  v511[4] = v514;
  sub_221EA4AB4(v688, &v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_accountService]);
  sub_221EA4AB4(&v685, &v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_appInstallationCoordinator]);
  sub_221EA4AB4(&v682, &v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_cloudKitCoordinator]);
  *&v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_contactsManager] = v653;
  sub_221EA4AB4(&v679, &v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_friendListCoordinator]);
  sub_221EA4AB4(&v676, &v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_invitationListener]);
  sub_221EA4AB4(&v673, &v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_relationshipFinalizationCoordinator]);
  sub_221EA4AB4(&v670, &v472[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_secureCloudCoalescer]);
  v666.receiver = v472;
  v666.super_class = v639;
  v515 = objc_msgSendSuper2(&v666, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v670);
  __swift_destroy_boxed_opaque_existential_0(&v673);
  __swift_destroy_boxed_opaque_existential_0(&v676);
  __swift_destroy_boxed_opaque_existential_0(&v679);
  __swift_destroy_boxed_opaque_existential_0(&v682);
  __swift_destroy_boxed_opaque_existential_0(&v685);
  __swift_destroy_boxed_opaque_existential_0(v688);
  __swift_destroy_boxed_opaque_existential_0(v691);
  __swift_destroy_boxed_opaque_existential_0(v694);
  __swift_destroy_boxed_opaque_existential_0(&v697);
  __swift_destroy_boxed_opaque_existential_0(v700);
  __swift_destroy_boxed_opaque_existential_0(v703);
  __swift_destroy_boxed_opaque_existential_0(&v706);
  __swift_destroy_boxed_opaque_existential_0(v710);
  __swift_destroy_boxed_opaque_existential_0(v713);
  __swift_destroy_boxed_opaque_existential_0(v715);
  __swift_destroy_boxed_opaque_existential_0(v717);
  __swift_destroy_boxed_opaque_existential_0(&v720);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 1344) = v515;
  sub_221EA4AB4(v153 + 520, v727);
  sub_221EA4AB4(v153 + 1128, v724);
  sub_221EA4AB4(v153 + 2680, &v720);
  sub_221EA4AB4(v153 + 1472, v717);
  sub_221EA4AB4(v153 + 1840, v715);
  sub_221EA4AB4(v153 + 2000, v713);
  sub_221EA4AB4(v153 + 2440, v710);
  sub_221EA4AB4(v153 + 2480, &v706);
  sub_221EA4AB4(v153 + 2976, v703);
  v516 = __swift_mutable_project_boxed_opaque_existential_1(v727, v728);
  v655 = &v623;
  MEMORY[0x28223BE20](v516);
  v518 = (&v623 - ((v517 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v519 + 16))(v518);
  v520 = __swift_mutable_project_boxed_opaque_existential_1(v724, v725);
  v654 = &v623;
  MEMORY[0x28223BE20](v520);
  v639 = (&v623 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v522 + 16))();
  v523 = __swift_mutable_project_boxed_opaque_existential_1(&v720, v721);
  v653 = &v623;
  MEMORY[0x28223BE20](v523);
  v525 = &v623 - ((v524 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v526 + 16))(v525);
  v527 = __swift_mutable_project_boxed_opaque_existential_1(v717, v718);
  v650 = &v623;
  MEMORY[0x28223BE20](v527);
  v638 = (&v623 - ((v528 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v529 + 16))();
  v530 = __swift_mutable_project_boxed_opaque_existential_1(v715, v716);
  v644 = &v623;
  MEMORY[0x28223BE20](v530);
  v532 = &v623 - ((v531 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v533 + 16))(v532);
  v534 = __swift_mutable_project_boxed_opaque_existential_1(v713, v714);
  v643 = &v623;
  MEMORY[0x28223BE20](v534);
  v536 = &v623 - ((v535 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v537 + 16))(v536);
  v538 = __swift_mutable_project_boxed_opaque_existential_1(v710, v711);
  v642 = &v623;
  MEMORY[0x28223BE20](v538);
  v540 = &v623 - ((v539 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v541 + 16))(v540);
  v542 = __swift_mutable_project_boxed_opaque_existential_1(&v706, v708);
  v641 = &v623;
  MEMORY[0x28223BE20](v542);
  v544 = &v623 - ((v543 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v545 + 16))(v544);
  v546 = __swift_mutable_project_boxed_opaque_existential_1(v703, v704);
  v640 = &v623;
  MEMORY[0x28223BE20](v546);
  v548 = (&v623 - ((v547 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v549 + 16))(v548);
  v701 = &type metadata for AnalyticsService;
  v702 = &off_283558B50;
  v550 = swift_allocObject();
  v700[0] = v550;
  v551 = v518[7];
  v550[7] = v518[6];
  v550[8] = v551;
  v550[9] = v518[8];
  v552 = v518[3];
  v550[3] = v518[2];
  v550[4] = v552;
  v553 = v518[5];
  v550[5] = v518[4];
  v550[6] = v553;
  v554 = v518[1];
  v550[1] = *v518;
  v550[2] = v554;
  v698 = &type metadata for IDSFirewallService;
  v699 = &off_28355C480;
  v697 = *v639;
  v695 = &type metadata for InvitationListener;
  v696 = v656;
  v694[0] = swift_allocObject();
  sub_221F41394(v153 + 1208, v694[0] + 16);
  v692 = &type metadata for SecureCloudErrorDispatcher;
  v693 = &off_28355BD38;
  v555 = swift_allocObject();
  v691[0] = v555;
  v556 = *(v525 + 1);
  *(v555 + 16) = *v525;
  *(v555 + 32) = v556;
  *(v555 + 48) = *(v525 + 4);
  v689 = &type metadata for RelationshipDowngradeService;
  v690 = &off_2835582E8;
  v688[0] = swift_allocObject();
  memcpy((v688[0] + 16), v638, 0x1A0uLL);
  v686 = &type metadata for RelationshipMigrationService;
  v687 = &off_283559C00;
  *&v685 = swift_allocObject();
  memcpy((v685 + 16), v532, 0x278uLL);
  v683 = &type metadata for RelationshipRepairService;
  v684 = &off_283559DD8;
  *&v682 = swift_allocObject();
  memcpy((v682 + 16), v536, 0x168uLL);
  v680 = &type metadata for RelationshipUpdateService;
  v681 = &off_283558FF0;
  v557 = swift_allocObject();
  *&v679 = v557;
  v558 = *(v540 + 3);
  *(v557 + 48) = *(v540 + 2);
  *(v557 + 64) = v558;
  *(v557 + 80) = *(v540 + 4);
  *(v557 + 96) = *(v540 + 10);
  v559 = *(v540 + 1);
  *(v557 + 16) = *v540;
  *(v557 + 32) = v559;
  v677 = &type metadata for RelationshipUpgradeService;
  v678 = &off_28355BA70;
  *&v676 = swift_allocObject();
  memcpy((v676 + 16), v544, 0x1E8uLL);
  v674 = &type metadata for SecureCloudUpdateCoalescer;
  v675 = &off_283559708;
  v560 = swift_allocObject();
  *&v673 = v560;
  v561 = v548[5];
  v560[5] = v548[4];
  v560[6] = v561;
  v560[7] = v548[6];
  v562 = v548[1];
  v560[1] = *v548;
  v560[2] = v562;
  v563 = v548[3];
  v560[3] = v548[2];
  v560[4] = v563;
  v636 = type metadata accessor for SecureCloudPeriodicUpdaterDelegate();
  v564 = objc_allocWithZone(v636);
  v565 = __swift_mutable_project_boxed_opaque_existential_1(v700, v701);
  v639 = &v623;
  MEMORY[0x28223BE20](v565);
  v567 = (&v623 - ((v566 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v568 + 16))(v567);
  v569 = __swift_mutable_project_boxed_opaque_existential_1(&v697, v698);
  v638 = &v623;
  MEMORY[0x28223BE20](v569);
  v628 = (&v623 - ((v570 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v571 + 16))();
  v572 = __swift_mutable_project_boxed_opaque_existential_1(v694, v695);
  v637 = &v623;
  MEMORY[0x28223BE20](v572);
  v574 = (&v623 - ((v573 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v575 + 16))(v574);
  v576 = __swift_mutable_project_boxed_opaque_existential_1(v691, v692);
  v635 = &v623;
  MEMORY[0x28223BE20](v576);
  v578 = &v623 - ((v577 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v579 + 16))(v578);
  v580 = __swift_mutable_project_boxed_opaque_existential_1(v688, v689);
  v634 = &v623;
  MEMORY[0x28223BE20](v580);
  v627 = (&v623 - ((v581 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v582 + 16))();
  v583 = __swift_mutable_project_boxed_opaque_existential_1(&v685, v686);
  v633 = &v623;
  MEMORY[0x28223BE20](v583);
  v626 = (&v623 - ((v584 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v585 + 16))();
  v586 = __swift_mutable_project_boxed_opaque_existential_1(&v682, v683);
  v632 = &v623;
  MEMORY[0x28223BE20](v586);
  v625 = (&v623 - ((v587 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v588 + 16))();
  v589 = __swift_mutable_project_boxed_opaque_existential_1(&v679, v680);
  v631 = &v623;
  MEMORY[0x28223BE20](v589);
  v591 = &v623 - ((v590 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v592 + 16))(v591);
  v593 = __swift_mutable_project_boxed_opaque_existential_1(&v676, v677);
  v630 = &v623;
  MEMORY[0x28223BE20](v593);
  v595 = &v623 - ((v594 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v596 + 16))(v595);
  v597 = __swift_mutable_project_boxed_opaque_existential_1(&v673, v674);
  v629 = &v623;
  MEMORY[0x28223BE20](v597);
  v599 = (&v623 - ((v598 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v600 + 16))(v599);
  v671 = &type metadata for AnalyticsService;
  v672 = &off_283558B50;
  v601 = swift_allocObject();
  *&v670 = v601;
  v602 = v567[7];
  v601[7] = v567[6];
  v601[8] = v602;
  v601[9] = v567[8];
  v603 = v567[3];
  v601[3] = v567[2];
  v601[4] = v603;
  v604 = v567[5];
  v601[5] = v567[4];
  v601[6] = v604;
  v605 = v567[1];
  v601[1] = *v567;
  v601[2] = v605;
  v668 = &type metadata for IDSFirewallService;
  v669 = &off_28355C480;
  v667 = *v628;
  v665[3] = &type metadata for InvitationListener;
  v665[4] = v656;
  v606 = swift_allocObject();
  v665[0] = v606;
  v607 = v574[3];
  v606[3] = v574[2];
  v606[4] = v607;
  v608 = v574[5];
  v606[5] = v574[4];
  v606[6] = v608;
  v609 = v574[1];
  v606[1] = *v574;
  v606[2] = v609;
  v664[3] = &type metadata for SecureCloudErrorDispatcher;
  v664[4] = &off_28355BD38;
  v610 = swift_allocObject();
  v664[0] = v610;
  v611 = *(v578 + 1);
  *(v610 + 16) = *v578;
  *(v610 + 32) = v611;
  *(v610 + 48) = *(v578 + 4);
  v663[3] = &type metadata for RelationshipDowngradeService;
  v663[4] = &off_2835582E8;
  v663[0] = swift_allocObject();
  memcpy((v663[0] + 16), v627, 0x1A0uLL);
  v662[3] = &type metadata for RelationshipMigrationService;
  v662[4] = &off_283559C00;
  v662[0] = swift_allocObject();
  memcpy((v662[0] + 16), v626, 0x278uLL);
  v661[3] = &type metadata for RelationshipRepairService;
  v661[4] = &off_283559DD8;
  v661[0] = swift_allocObject();
  memcpy((v661[0] + 16), v625, 0x168uLL);
  v660[3] = &type metadata for RelationshipUpdateService;
  v660[4] = &off_283558FF0;
  v612 = swift_allocObject();
  v660[0] = v612;
  v613 = *(v591 + 3);
  *(v612 + 48) = *(v591 + 2);
  *(v612 + 64) = v613;
  *(v612 + 80) = *(v591 + 4);
  *(v612 + 96) = *(v591 + 10);
  v614 = *(v591 + 1);
  *(v612 + 16) = *v591;
  *(v612 + 32) = v614;
  v659[3] = &type metadata for RelationshipUpgradeService;
  v659[4] = &off_28355BA70;
  v659[0] = swift_allocObject();
  memcpy((v659[0] + 16), v595, 0x1E8uLL);
  v658[3] = &type metadata for SecureCloudUpdateCoalescer;
  v658[4] = &off_283559708;
  v615 = swift_allocObject();
  v658[0] = v615;
  v616 = v599[5];
  v615[5] = v599[4];
  v615[6] = v616;
  v615[7] = v599[6];
  v617 = v599[1];
  v615[1] = *v599;
  v615[2] = v617;
  v618 = v599[3];
  v615[3] = v599[2];
  v615[4] = v618;
  sub_221EA4AB4(&v670, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_analyticsService);
  sub_221EA4AB4(v665, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_invitationListener);
  sub_221EA4AB4(&v667, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_idsFirewallService);
  sub_221EA4AB4(v664, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudErrorDispatcher);
  sub_221EA4AB4(v663, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService);
  sub_221EA4AB4(v662, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService);
  sub_221EA4AB4(v661, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipRepairService);
  sub_221EA4AB4(v660, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService);
  sub_221EA4AB4(v659, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService);
  sub_221EA4AB4(v658, v564 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudUpdateCoalescer);
  v657.receiver = v564;
  v657.super_class = v636;
  v619 = objc_msgSendSuper2(&v657, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v658);
  __swift_destroy_boxed_opaque_existential_0(v659);
  __swift_destroy_boxed_opaque_existential_0(v660);
  __swift_destroy_boxed_opaque_existential_0(v661);
  __swift_destroy_boxed_opaque_existential_0(v662);
  __swift_destroy_boxed_opaque_existential_0(v663);
  __swift_destroy_boxed_opaque_existential_0(v664);
  __swift_destroy_boxed_opaque_existential_0(v665);
  __swift_destroy_boxed_opaque_existential_0(&v667);
  __swift_destroy_boxed_opaque_existential_0(&v670);
  __swift_destroy_boxed_opaque_existential_0(&v673);
  __swift_destroy_boxed_opaque_existential_0(&v676);
  __swift_destroy_boxed_opaque_existential_0(&v679);
  __swift_destroy_boxed_opaque_existential_0(&v682);
  __swift_destroy_boxed_opaque_existential_0(&v685);
  __swift_destroy_boxed_opaque_existential_0(v688);
  __swift_destroy_boxed_opaque_existential_0(v691);
  __swift_destroy_boxed_opaque_existential_0(v694);
  __swift_destroy_boxed_opaque_existential_0(&v697);
  __swift_destroy_boxed_opaque_existential_0(v700);
  __swift_destroy_boxed_opaque_existential_0(v703);
  __swift_destroy_boxed_opaque_existential_0(&v706);
  __swift_destroy_boxed_opaque_existential_0(v710);
  __swift_destroy_boxed_opaque_existential_0(v713);
  __swift_destroy_boxed_opaque_existential_0(v715);
  __swift_destroy_boxed_opaque_existential_0(v717);
  __swift_destroy_boxed_opaque_existential_0(&v720);
  __swift_destroy_boxed_opaque_existential_0(v724);
  __swift_destroy_boxed_opaque_existential_0(v727);
  *(v153 + 2808) = v619;
  v620 = v648;
  [v648 setSecureCloudDelegate_];
  sub_221EA4AB4(v153 + 2720, v727);
  sub_221EA4AB4(v153 + 2976, v724);
  *(v153 + 2960) = &type metadata for SecureCloudSystem;
  *(v153 + 2968) = &off_28355ED88;
  v621 = swift_allocObject();
  *(v153 + 2936) = v621;
  sub_221F8E3F0(v727, v724, v621 + 16);

  return sub_221F3EFC8(v649);
}

uint64_t sub_221FA1EE4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[3] = __swift_project_value_buffer(v1, qword_281307DF0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Secure Cloud - Enabled", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[2];

  [*(*__swift_project_boxed_opaque_existential_0Tm(v5 + 114 v5[117]) + OBJC:sel_addProtectedDataObserver_ IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)];
  __swift_project_boxed_opaque_existential_0Tm(v5 + 15, v5[18]);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_221FA2080;

  return sub_221FA36DC();
}

uint64_t sub_221FA2080()
{

  return MEMORY[0x2822009F8](sub_221FA217C, 0, 0);
}

uint64_t sub_221FA217C()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 480), *(*(v0 + 16) + 504));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_221FA2230;

  return sub_221FA3A2C();
}

uint64_t sub_221FA2230()
{

  return MEMORY[0x2822009F8](sub_221FA232C, 0, 0);
}

uint64_t sub_221FA232C()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1000), *(*(v0 + 16) + 1024));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_221FA23E0;

  return sub_221FA3D7C();
}

uint64_t sub_221FA23E0()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v4;
  v2[1] = sub_221FA2520;

  return sub_221F93710();
}

uint64_t sub_221FA2520()
{

  return MEMORY[0x2822009F8](sub_221FA261C, 0, 0);
}

uint64_t sub_221FA261C()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 3144), *(*(v0 + 16) + 3168));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_221FA26D0;

  return sub_221FA40CC();
}

uint64_t sub_221FA26D0()
{

  return MEMORY[0x2822009F8](sub_221FA27CC, 0, 0);
}

uint64_t sub_221FA27CC()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 3184), *(*(v0 + 16) + 3208));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_221FA2880;

  return sub_221FA441C();
}

uint64_t sub_221FA2880()
{

  return MEMORY[0x2822009F8](sub_221FA297C, 0, 0);
}

uint64_t sub_221FA297C()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1040), *(*(v0 + 16) + 1064));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_221FA2A1C;

  return sub_221F264BC();
}

uint64_t sub_221FA2A1C()
{

  return MEMORY[0x2822009F8](sub_221FA2B18, 0, 0);
}

uint64_t sub_221FA2B18()
{
  v1 = *(v0 + 16);
  [*__swift_project_boxed_opaque_existential_0Tm((v1[80] + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudKitCoordinator) *(v1[80] + OBJC:sel_addObserver_ IVAR:v1[80] :? :? :? TtC23ActivitySharingServices19CloudDeviceObserver:?cloudKitCoordinator + 24))];
  [*__swift_project_boxed_opaque_existential_0Tm((v1[135] + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator) *(v1[135] + OBJC:sel_addObserver_ IVAR:v1[135] :? :? :? TtC23ActivitySharingServices17MigrationObserver:?cloudKitCoordinator + 24))];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 382, v1[385]);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_221FA2C1C;

  return sub_221F963EC();
}

uint64_t sub_221FA2C1C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_221FA2DD0;
  }

  else
  {
    v2 = sub_221FA2D30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FA2D30()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_221FA2EF4;

  return sub_221EEC16C();
}

uint64_t sub_221FA2DD0(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Failed to activate server push listener", v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0Tm((v1[2] + 40), *(v1[2] + 64));
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v1;
  v7[1] = sub_221FA2EF4;

  return sub_221EEC16C();
}

uint64_t sub_221FA2EF4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_221FA30A8;
  }

  else
  {
    v2 = sub_221FA3008;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FA3008()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 440), *(*(v0 + 16) + 464));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_221FA31CC;

  return sub_221EE0E50();
}

uint64_t sub_221FA30A8(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Failed to activate account system", v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0Tm((v1[2] + 440), *(v1[2] + 464));
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  v7[1] = sub_221FA31CC;

  return sub_221EE0E50();
}

uint64_t sub_221FA31CC()
{

  return MEMORY[0x2822009F8](sub_221FA32C8, 0, 0);
}

uint64_t sub_221FA32C8()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1392), *(*(v0 + 16) + 1416));
  v2 = *v1;
  *(v0 + 128) = *v1;

  return MEMORY[0x2822009F8](sub_221FA333C, v2, 0);
}

uint64_t sub_221FA333C()
{
  sub_221F6E988();

  return MEMORY[0x2822009F8](sub_221FA33A4, 0, 0);
}

uint64_t sub_221FA33A4()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1352), *(*(v0 + 16) + 1376));
  v2 = *v1;
  *(v0 + 136) = *v1;

  return MEMORY[0x2822009F8](sub_221FA3418, v2, 0);
}

uint64_t sub_221FA3418()
{
  sub_221F6E988();

  return MEMORY[0x2822009F8](sub_221FA3480, 0, 0);
}

uint64_t sub_221FA3480()
{
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_0Tm(v1 + 163, v1[166]);
  sub_221F40BE8();
  v2 = v1[168];
  [*__swift_project_boxed_opaque_existential_0Tm((v2 + OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_cloudKitCoordinator) *(v2 + OBJC:sel_addObserver_ IVAR:v2 :? :? :? TtC23ActivitySharingServices23InvitationStateObserver:?cloudKitCoordinator + 24))];
  [*__swift_project_boxed_opaque_existential_0Tm((v2 + OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_friendListCoordinator) *(v2 + OBJC:sel_addObserver_ IVAR:v2 :? :? :? TtC23ActivitySharingServices23InvitationStateObserver:?friendListCoordinator + 24))];
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_221FA3574;

  return sub_221EA9850();
}

uint64_t sub_221FA3574()
{

  return MEMORY[0x2822009F8](sub_221FA3670, 0, 0);
}

uint64_t sub_221FA3670()
{
  [*(*(v0 + 16) + 952) secureCloudReady];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221FA36FC()
{
  v19 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "Waiting for protected data for anchor store: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v10 = v0[7];
    v11 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v11);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v12 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v13 = *(v10 + 160);
    v14 = *(v10 + 168);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = *(*v12 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v17 = swift_task_alloc();
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = sub_221FA6718;
    v17[5] = v15;

    os_unfair_lock_lock((v16 + 24));
    sub_221FA6BE0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221F085C8;

  return sub_221ED3670();
}

uint64_t sub_221FA3A4C()
{
  v19 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "Waiting for protected data for anchor store: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v10 = v0[7];
    v11 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v11);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v12 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v13 = *(v10 + 160);
    v14 = *(v10 + 168);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = *(*v12 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v17 = swift_task_alloc();
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = sub_221FA6610;
    v17[5] = v15;

    os_unfair_lock_lock((v16 + 24));
    sub_221FA6BE0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;

  return sub_221ED3308();
}

uint64_t sub_221FA3D9C()
{
  v19 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "Waiting for protected data for anchor store: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v10 = v0[7];
    v11 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v11);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v12 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v13 = *(v10 + 160);
    v14 = *(v10 + 168);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = *(*v12 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v17 = swift_task_alloc();
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = sub_221FA6508;
    v17[5] = v15;

    os_unfair_lock_lock((v16 + 24));
    sub_221FA6BE0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;

  return sub_221ED2FB0();
}

uint64_t sub_221FA40EC()
{
  v19 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "Waiting for protected data for anchor store: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v10 = v0[7];
    v11 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v11);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v12 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v13 = *(v10 + 160);
    v14 = *(v10 + 168);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = *(*v12 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v17 = swift_task_alloc();
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = sub_221FA6400;
    v17[5] = v15;

    os_unfair_lock_lock((v16 + 24));
    sub_221FA6BE0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;

  return sub_221ED39D8();
}

uint64_t sub_221FA443C()
{
  v19 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "Waiting for protected data for anchor store: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v10 = v0[7];
    v11 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v11);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v12 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v13 = *(v10 + 160);
    v14 = *(v10 + 168);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = *(*v12 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v17 = swift_task_alloc();
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = sub_221FA487C;
    v17[5] = v15;

    os_unfair_lock_lock((v16 + 24));
    sub_221FA48B4((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;

  return sub_221ED3D40();
}

uint64_t sub_221FA476C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_221FB64C8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a1;

  sub_221FA7D68(0, 0, v9, a4, v11);
}

_OWORD *sub_221FA48D4(_OWORD *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v16 = sub_221FB6618();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_221FB6608();
  MEMORY[0x28223BE20](v7);
  v8 = sub_221FB6238();
  MEMORY[0x28223BE20](v8 - 8);
  v20[3] = &type metadata for InvitationListener;
  v20[4] = sub_221FA6860();
  v9 = swift_allocObject();
  v20[0] = v9;
  v10 = a1[3];
  v9[3] = a1[2];
  v9[4] = v10;
  v11 = a1[5];
  v9[5] = a1[4];
  v9[6] = v11;
  v12 = a1[1];
  v9[1] = *a1;
  v9[2] = v12;
  sub_221EA4AB4(v20, &a2[OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_invitationListener]);
  sub_221F3FA70();
  sub_221FB6228();
  v19 = MEMORY[0x277D84F90];
  sub_221F3FABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC500, &qword_221FBCD20);
  sub_221F3FB14();
  sub_221FB67D8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v16);
  *&a2[OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_queue] = sub_221FB6648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBB8, qword_221FBFF00);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *&a2[OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState] = v13;
  v18.receiver = a2;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v14;
}

id sub_221FA4BA8(uint64_t a1, uint64_t a2)
{
  v25[3] = &type metadata for CloudDeviceSystem;
  v25[4] = &off_283560748;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v24[3] = &type metadata for CloudKitCoordinator;
  v24[4] = &off_28355F370;
  v24[0] = a2;
  v6 = type metadata accessor for CloudDeviceObserver();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for CloudDeviceSystem);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v24, &type metadata for CloudKitCoordinator);
  MEMORY[0x28223BE20](v12);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v23[3] = &type metadata for CloudDeviceSystem;
  v23[4] = &off_283560748;
  v17 = swift_allocObject();
  v22[4] = &off_28355F370;
  v23[0] = v17;
  v18 = *(v10 + 1);
  *(v17 + 16) = *v10;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v10 + 4);
  v22[3] = &type metadata for CloudKitCoordinator;
  v22[0] = v16;
  sub_221EA4AB4(v23, v7 + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem);
  sub_221EA4AB4(v22, v7 + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudKitCoordinator);
  v21.receiver = v7;
  v21.super_class = v6;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v19;
}

id sub_221FA4E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[3] = &type metadata for SecureCloudFetchService;
  v24[4] = &off_283559208;
  v24[0] = a2;
  v5 = type metadata accessor for ServerChangeTokenCacheStore();
  v23[3] = v5;
  v23[4] = &off_28355B4C8;
  v23[0] = a3;
  v6 = type metadata accessor for SecureCloudKitDelegate();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, &type metadata for SecureCloudFetchService);
  MEMORY[0x28223BE20](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v5);
  MEMORY[0x28223BE20](v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v22[3] = &type metadata for SecureCloudFetchService;
  v22[4] = &off_283559208;
  v21[4] = &off_28355B4C8;
  v22[0] = v16;
  v21[3] = v5;
  v21[0] = v17;
  *&v7[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_contactsManager] = a1;
  sub_221EA4AB4(v22, &v7[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService]);
  sub_221EA4AB4(v21, &v7[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore]);
  v20.receiver = v7;
  v20.super_class = v6;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v18;
}

_OWORD *sub_221FA506C(_OWORD *a1, _OWORD *a2)
{
  v29[3] = &type metadata for CompetitionService;
  v29[4] = &off_283557F98;
  v4 = swift_allocObject();
  v29[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  v28[3] = &type metadata for SecureCloudPushService;
  v28[4] = &off_283559A90;
  v6 = swift_allocObject();
  v28[0] = v6;
  v7 = a2[1];
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = a2[2];
  v8 = type metadata accessor for SecureCloudCompetitionDelegate();
  v9 = objc_allocWithZone(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, &type metadata for CompetitionService);
  MEMORY[0x28223BE20](v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v28, &type metadata for SecureCloudPushService);
  MEMORY[0x28223BE20](v14);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v27[3] = &type metadata for CompetitionService;
  v27[4] = &off_283557F98;
  v18 = swift_allocObject();
  v26[4] = &off_283559A90;
  v27[0] = v18;
  v19 = v12[1];
  v18[1] = *v12;
  v18[2] = v19;
  v18[3] = v12[2];
  v26[3] = &type metadata for SecureCloudPushService;
  v20 = swift_allocObject();
  v26[0] = v20;
  v21 = v16[1];
  v20[1] = *v16;
  v20[2] = v21;
  v20[3] = v16[2];
  sub_221EA4AB4(v27, v9 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService);
  sub_221EA4AB4(v26, v9 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_pushService);
  v25.receiver = v9;
  v25.super_class = v8;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v22;
}

id sub_221FA5330(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v35[3] = &type metadata for CloudKitCoordinator;
  v35[4] = &off_28355F370;
  v35[0] = a1;
  v7 = type metadata accessor for MigrationAvailableItemStore();
  v34[3] = v7;
  v34[4] = &off_28355A710;
  v34[0] = a3;
  v32 = &type metadata for RelationshipDowngradeService;
  v33 = &off_2835582E8;
  v31[0] = swift_allocObject();
  memcpy((v31[0] + 16), a4, 0x1A0uLL);
  v8 = type metadata accessor for MigrationObserver();
  v9 = objc_allocWithZone(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v35, &type metadata for CloudKitCoordinator);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v34, v7);
  MEMORY[0x28223BE20](v14);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = *v12;
  v23 = *v16;
  v30[3] = &type metadata for CloudKitCoordinator;
  v30[4] = &off_28355F370;
  v30[0] = v22;
  v29[3] = v7;
  v29[4] = &off_28355A710;
  v29[0] = v23;
  v28[3] = &type metadata for RelationshipDowngradeService;
  v28[4] = &off_2835582E8;
  v28[0] = swift_allocObject();
  memcpy((v28[0] + 16), v20, 0x1A0uLL);
  sub_221EA4AB4(v30, &v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator]);
  *&v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_contactsManager] = a2;
  sub_221EA4AB4(v29, &v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore]);
  sub_221EA4AB4(v28, &v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_relationshipDowngradeService]);
  v27.receiver = v9;
  v27.super_class = v8;
  v24 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v24;
}

id sub_221FA56D4(uint64_t a1, const void *a2, _OWORD *a3, uint64_t a4)
{
  v52[3] = &type metadata for RelationshipFinalizationCoordinator;
  v52[4] = &off_28355BE88;
  v52[0] = a1;
  v51[3] = &type metadata for RelationshipInviteAcceptService;
  v51[4] = &off_283560088;
  v51[0] = swift_allocObject();
  memcpy((v51[0] + 16), a2, 0x180uLL);
  v50[3] = &type metadata for RelationshipRemovalService;
  v50[4] = &off_2835599D0;
  v7 = swift_allocObject();
  v50[0] = v7;
  v8 = a3[5];
  v7[5] = a3[4];
  v7[6] = v8;
  v9 = a3[7];
  v7[7] = a3[6];
  v7[8] = v9;
  v10 = a3[1];
  v7[1] = *a3;
  v7[2] = v10;
  v11 = a3[3];
  v7[3] = a3[2];
  v7[4] = v11;
  v49[3] = &type metadata for RelationshipUpdateService;
  v49[4] = &off_283558FF0;
  v12 = swift_allocObject();
  v49[0] = v12;
  v13 = *(a4 + 48);
  *(v12 + 48) = *(a4 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a4 + 64);
  *(v12 + 96) = *(a4 + 80);
  v14 = *(a4 + 16);
  *(v12 + 16) = *a4;
  *(v12 + 32) = v14;
  v43 = type metadata accessor for SecureCloudRelationshipDelegate();
  v15 = objc_allocWithZone(v43);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v52, &type metadata for RelationshipFinalizationCoordinator);
  MEMORY[0x28223BE20](v16);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v51, &type metadata for RelationshipInviteAcceptService);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v50, &type metadata for RelationshipRemovalService);
  MEMORY[0x28223BE20](v24);
  v26 = (&v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v49, &type metadata for RelationshipUpdateService);
  MEMORY[0x28223BE20](v28);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  v32 = *v18;
  v48[3] = &type metadata for RelationshipFinalizationCoordinator;
  v48[4] = &off_28355BE88;
  v48[0] = v32;
  v47[3] = &type metadata for RelationshipInviteAcceptService;
  v47[4] = &off_283560088;
  v47[0] = swift_allocObject();
  memcpy((v47[0] + 16), v22, 0x180uLL);
  v46[3] = &type metadata for RelationshipRemovalService;
  v46[4] = &off_2835599D0;
  v33 = swift_allocObject();
  v46[0] = v33;
  v34 = v26[5];
  v33[5] = v26[4];
  v33[6] = v34;
  v35 = v26[7];
  v33[7] = v26[6];
  v33[8] = v35;
  v36 = v26[1];
  v33[1] = *v26;
  v33[2] = v36;
  v37 = v26[3];
  v33[3] = v26[2];
  v33[4] = v37;
  v45[3] = &type metadata for RelationshipUpdateService;
  v45[4] = &off_283558FF0;
  v38 = swift_allocObject();
  v45[0] = v38;
  v39 = *(v30 + 3);
  *(v38 + 48) = *(v30 + 2);
  *(v38 + 64) = v39;
  *(v38 + 80) = *(v30 + 4);
  *(v38 + 96) = *(v30 + 10);
  v40 = *(v30 + 1);
  *(v38 + 16) = *v30;
  *(v38 + 32) = v40;
  sub_221EA4AB4(v48, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator);
  sub_221EA4AB4(v47, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipInviteAcceptService);
  sub_221EA4AB4(v46, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipRemovalService);
  sub_221EA4AB4(v45, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipUpdateService);
  v44.receiver = v15;
  v44.super_class = v43;
  v41 = objc_msgSendSuper2(&v44, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v48);
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v52);
  return v41;
}

uint64_t sub_221FA5C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA5C38, 0, 0);
}

uint64_t sub_221FA5C38()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_221F588A0;
    v3 = *(v0 + 72);

    return sub_221ED25E4(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_221FA5D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA5D6C, 0, 0);
}

uint64_t sub_221FA5D6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_221FA5E7C;
    v3 = *(v0 + 72);

    return sub_221ED2094(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_221FA5E7C()
{

  return MEMORY[0x2822009F8](sub_221FA6BFC, 0, 0);
}

uint64_t sub_221FA5F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA5FB8, 0, 0);
}

uint64_t sub_221FA5FB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_221FA5E7C;
    v3 = *(v0 + 72);

    return sub_221ED1B44(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_221FA60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA60EC, 0, 0);
}

uint64_t sub_221FA60EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_221FA5E7C;
    v3 = *(v0 + 72);

    return sub_221ED2928(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_221FA61FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA6220, 0, 0);
}

uint64_t sub_221FA6220()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_221FA5E7C;
    v3 = *(v0 + 72);

    return sub_221ED2C6C(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_221FA6330(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA61FC(a1, v4, v5, v6, v7);
}

uint64_t sub_221FA6438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA60C8(a1, v4, v5, v6, v7);
}

uint64_t sub_221FA6540(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA5F94(a1, v4, v5, v6, v7);
}

uint64_t sub_221FA6648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA5D48(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_221FA6790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E9544C;

  return sub_221FA5C14(a1, v4, v5, v6, v7);
}

unint64_t sub_221FA6860()
{
  result = qword_281307A08;
  if (!qword_281307A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307A08);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_74Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_92Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t objectdestroy_65Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_98Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_62Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_221FA6C14()
{
  result = qword_27CFECBC0;
  if (!qword_27CFECBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBC0);
  }

  return result;
}

id sub_221FA6C68(void *a1, void *a2)
{
  v46 = a2;
  v4 = sub_221FB5AE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 participants];
  sub_221E9D138(0, &unk_27CFEB948, 0x277CBC6A0);
  v8 = sub_221FB6438();

  v44 = v4;
  v45 = a1;
  v43 = v5;
  v41 = v2;
  if (v8 >> 62)
  {
LABEL_30:
    v9 = sub_221FB6868();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_31:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v35 = sub_221FB61D8();
    __swift_project_value_buffer(v35, qword_281307DF0);
    v36 = sub_221FB61B8();
    v37 = sub_221FB65A8();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v45;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_221E93000, v36, v37, "Failed to find participant on share", v40, 2u);
      MEMORY[0x223DADA80](v40, -1, -1);
    }

    return 0;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_3:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223DACD50](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_221E9D138(0, &qword_27CFEB940, 0x277D82BB8);
    if (sub_221FB6758())
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_31;
    }
  }

  v14 = v45;
  v15 = [v45 URL];
  if (!v15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v27 = sub_221FB61D8();
    __swift_project_value_buffer(v27, qword_281307DF0);
    v28 = sub_221FB61B8();
    v29 = sub_221FB65A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_221E93000, v28, v29, "Share missing share URL", v30, 2u);
      MEMORY[0x223DADA80](v30, -1, -1);
    }

    return 0;
  }

  v16 = v42;
  v17 = v15;
  sub_221FB5AD8();

  v18 = [v12 invitationToken];
  if (!v18)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v31 = sub_221FB61D8();
    __swift_project_value_buffer(v31, qword_281307DF0);
    v32 = sub_221FB61B8();
    v33 = sub_221FB65A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_221E93000, v32, v33, "Share missing invitation token", v34, 2u);
      MEMORY[0x223DADA80](v34, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v16, v44);
    return 0;
  }

  v19 = v18;
  v20 = [v14 recordID];
  v21 = [v20 zoneID];

  v22 = [v21 zoneName];
  if (!v22)
  {
    sub_221FB6318();
    v22 = sub_221FB62E8();
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_221FB5AC8();
  v25 = [v23 initWithZoneName:v22 shareURL:v24 invitationToken:v19];

  (*(v43 + 8))(v16, v44);
  return v25;
}

uint64_t getEnumTagSinglePayload for ActivitySnapshotError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySnapshotError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221FA7370()
{
  result = qword_27CFECBC8;
  if (!qword_27CFECBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBC8);
  }

  return result;
}

unint64_t UserDefaultsKeys.rawValue.getter()
{
  result = 0xD00000000000001DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
    case 5:
    case 9:
    case 0xE:
    case 0xF:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 0xA:
      result = 0xD000000000000023;
      break;
    case 0xB:
      result = 0xD00000000000002ALL;
      break;
    case 0xD:
      result = 0xD00000000000001ELL;
      break;
    case 0x10:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

ActivitySharingServices::UserDefaultsKeys_optional __swiftcall UserDefaultsKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221FB6B68();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221FA75A8()
{
  v0 = UserDefaultsKeys.rawValue.getter();
  v2 = v1;
  if (v0 == UserDefaultsKeys.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_221FB6B58();
  }

  return v5 & 1;
}

unint64_t sub_221FA7648()
{
  result = qword_27CFECBD0;
  if (!qword_27CFECBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBD0);
  }

  return result;
}

uint64_t sub_221FA769C()
{
  sub_221FB6C38();
  UserDefaultsKeys.rawValue.getter();
  sub_221FB6358();

  return sub_221FB6C58();
}

uint64_t sub_221FA7704(uint64_t a1)
{
  UserDefaultsKeys.rawValue.getter();
  sub_221FB6358();
}

uint64_t sub_221FA7768()
{
  sub_221FB6C38();
  UserDefaultsKeys.rawValue.getter();
  sub_221FB6358();

  return sub_221FB6C58();
}

unint64_t sub_221FA77D8@<X0>(unint64_t *a1@<X8>)
{
  result = UserDefaultsKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_221FA7950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

uint64_t sub_221FA7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_221EEDBF0(a3, v25 - v10);
  v12 = sub_221FB64C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_221E9CFE8(v11, &qword_27CFEC3A0, &qword_221FB8B70);
  }

  else
  {
    sub_221FB64B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_221FB6488();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_221FB6338() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_221FA7D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_221EEDBF0(a3, v25 - v10);
  v12 = sub_221FB64C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_221E9CFE8(v11, &qword_27CFEC3A0, &qword_221FB8B70);
  }

  else
  {
    sub_221FB64B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_221FB6488();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_221FB6338() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBE0, &qword_221FC0398);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBE0, &qword_221FC0398);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_221FA806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA8130, 0, 0);
}

uint64_t sub_221FA8130()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB5EC8();
    v6 = sub_221FB5E58();
    v10 = v0[8];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[2];
    v11 = v6;
    v13 = v12;
    sub_221EBEF90(v6, v12);
    sub_221FB5D48();
    sub_221EF9080();
    v14 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v15 = sub_221FB6278();

    v16 = sub_221FB62E8();
    v17 = [v14 initWithDictionary:v15 schema:v16];
    v0[10] = v17;

    sub_221EBEF30(v11, v13);
    (*(v21 + 8))(v10, v22);
    v18 = swift_task_alloc();
    v0[11] = v18;
    v18[2] = v5;
    v18[3] = v23;
    v18[4] = v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_221EE2220;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0D28, v18, v20);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221FA8478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA853C, 0, 0);
}

uint64_t sub_221FA853C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB5F78();
    v6 = sub_221FB5E58();
    v10 = v0[8];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[2];
    v11 = v6;
    v13 = v12;
    sub_221EBEF90(v6, v12);
    sub_221FB5D48();
    sub_221EF9080();
    v14 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v15 = sub_221FB6278();

    v16 = sub_221FB62E8();
    v17 = [v14 initWithDictionary:v15 schema:v16];
    v0[10] = v17;

    sub_221EBEF30(v11, v13);
    (*(v21 + 8))(v10, v22);
    v18 = swift_task_alloc();
    v0[11] = v18;
    v18[2] = v5;
    v18[3] = v23;
    v18[4] = v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_221EE2838;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0D28, v18, v20);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221FA8884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA8948, 0, 0);
}

uint64_t sub_221FA8948()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB5FF8();
    v6 = sub_221FB5E58();
    v10 = v0[8];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[2];
    v11 = v6;
    v13 = v12;
    sub_221EBEF90(v6, v12);
    sub_221FB5D48();
    sub_221EF9080();
    v14 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v15 = sub_221FB6278();

    v16 = sub_221FB62E8();
    v17 = [v14 initWithDictionary:v15 schema:v16];
    v0[10] = v17;

    sub_221EBEF30(v11, v13);
    (*(v21 + 8))(v10, v22);
    v18 = swift_task_alloc();
    v0[11] = v18;
    v18[2] = v5;
    v18[3] = v23;
    v18[4] = v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_221EE2838;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0888, v18, v20);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221FA8C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA8D54, 0, 0);
}

uint64_t sub_221FA8D54()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB60A8();
    v6 = sub_221FB5E58();
    v10 = v0[8];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[2];
    v11 = v6;
    v13 = v12;
    sub_221EBEF90(v6, v12);
    sub_221FB5D48();
    sub_221EF9080();
    v14 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v15 = sub_221FB6278();

    v16 = sub_221FB62E8();
    v17 = [v14 initWithDictionary:v15 schema:v16];
    v0[10] = v17;

    sub_221EBEF30(v11, v13);
    (*(v21 + 8))(v10, v22);
    v18 = swift_task_alloc();
    v0[11] = v18;
    v18[2] = v5;
    v18[3] = v23;
    v18[4] = v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_221EE2838;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0D28, v18, v20);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221FA909C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221FA9168(uint64_t a1)
{
  v2[82] = v1;
  v2[81] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB58, &unk_221FB8C00);
  v2[83] = swift_task_alloc();
  v3 = sub_221FB6168();
  v2[84] = v3;
  v2[85] = *(v3 - 8);
  v2[86] = swift_task_alloc();
  sub_221FB5BC8();
  v2[87] = swift_task_alloc();
  v4 = sub_221FB5FF8();
  v2[88] = v4;
  v2[89] = *(v4 - 8);
  v2[90] = swift_task_alloc();
  v5 = sub_221FB6058();
  v2[91] = v5;
  v2[92] = *(v5 - 8);
  v2[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB918, &unk_221FB82A0);
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v2[98] = swift_task_alloc();
  v6 = sub_221FB5C38();
  v2[99] = v6;
  v2[100] = *(v6 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA9444, 0, 0);
}

uint64_t sub_221FA9444()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[82];
  v2 = v0[81];
  v3 = sub_221FB61D8();
  v0[103] = __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000099, 0x8000000221FC4A60, 0xD00000000000001ALL, 0x8000000221FC2D30);
  v4 = __swift_project_boxed_opaque_existential_0Tm(v1 + 28, v1[31]);
  sub_221F55DCC(&unk_283557880, v2, *v4);
  v0[104] = v1[5];
  v5 = swift_task_alloc();
  v0[105] = v5;
  *v5 = v0;
  v5[1] = sub_221FA958C;

  return sub_221F7E048();
}

uint64_t sub_221FA958C()
{

  return MEMORY[0x2822009F8](sub_221FA9688, 0, 0);
}

uint64_t sub_221FA9688()
{
  v21 = v0;
  (*(v0[100] + 16))(v0[102], v0[81], v0[99]);
  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[102];
  v5 = v0[100];
  v6 = v0[99];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v7 = 136315138;
    sub_221EA8278();
    v8 = sub_221FB6B08();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_221EF4114(v8, v10, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_221E93000, v1, v2, "Fetching change while accepting invitation from friend with identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DADA80](v19, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  v0[106] = v11;
  v13 = v0[82];
  v14 = __swift_project_boxed_opaque_existential_0Tm(v13 + 6, v13[9]);
  v15 = v13[11];
  v0[107] = v15;
  v16 = *v14;
  v0[2] = v0;
  v0[7] = v0 + 159;
  v0[3] = sub_221FA9920;
  v17 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_221FA909C;
  v0[37] = &block_descriptor_36;
  v0[38] = v17;
  [v16 fetchAllChangesWithPriority:2 activity:0 group:v15 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FA9920()
{
  v1 = *(*v0 + 48);
  *(*v0 + 864) = v1;
  if (v1)
  {
    v2 = sub_221FA9F00;
  }

  else
  {
    v2 = sub_221FA9A30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FA9A30(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Checking number of friends", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v1[82];

  if ([*__swift_project_boxed_opaque_existential_0Tm((v5 + 104) *(v5 + 128))])
  {
    v6 = sub_221FB61B8();
    v7 = sub_221FB65A8();
    if (!os_log_type_enabled(v6, v7))
    {
      v25 = &unk_221FC0358;
      v9 = 29;
LABEL_15:

      sub_221EA4994();
      swift_allocError();
      *v17 = v9;
      swift_willThrow();
      v18 = v1[104];
      v19 = v1[98];
      v20 = *__swift_project_boxed_opaque_existential_0Tm((v1[82] + 224), *(v1[82] + 248));
      v21 = sub_221FB5BF8();
      [v20 removePlaceholderWithContactUUID:v21 shouldNotify:0];

      v22 = sub_221FB64C8();
      (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v18;

      sub_221FA7A78(0, 0, v19, v25, v23);

      v24 = v1[1];

      return v24();
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_221E93000, v6, v7, "Reached maximum number of friends", v8, 2u);
    v25 = &unk_221FC0358;
    v9 = 29;
LABEL_13:
    MEMORY[0x223DADA80](v8, -1, -1);
    goto LABEL_15;
  }

  v10 = *(v1[82] + 96);
  v1[109] = v10;
  v11 = sub_221FB5BF8();
  v12 = [v10 contactWithUUID_];
  v1[110] = v12;

  if (!v12)
  {
    v6 = sub_221FB61B8();
    v16 = sub_221FB65A8();
    if (!os_log_type_enabled(v6, v16))
    {
      v25 = &unk_221FBAC90;
      v9 = 21;
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_221E93000, v6, v16, "Missing contact for invite request accept", v8, 2u);
    v25 = &unk_221FBAC90;
    v9 = 21;
    goto LABEL_13;
  }

  v13 = *__swift_project_boxed_opaque_existential_0Tm((v1[82] + 48), *(v1[82] + 72));
  v14 = swift_task_alloc();
  v1[111] = v14;
  *v14 = v1;
  v14[1] = sub_221FAA0FC;

  return sub_221F991FC(v13);
}

uint64_t sub_221FA9F00(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[104];
  v3 = v1[98];
  v4 = *__swift_project_boxed_opaque_existential_0Tm((v1[82] + 224), *(v1[82] + 248));
  v5 = sub_221FB5BF8();
  [v4 removePlaceholderWithContactUUID:v5 shouldNotify:0];

  v6 = sub_221FB64C8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_221FA7A78(0, 0, v3, &unk_221FB9A50, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_221FAA0FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[112] = a1;
  v4[113] = a2;
  v4[114] = v2;

  if (v2)
  {
    v5 = sub_221FB0270;
  }

  else
  {
    v5 = sub_221FAA218;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221FAA218(uint64_t a1)
{
  v71 = v1;
  if (*(v1 + 904))
  {
    v2 = *(v1 + 880);
    v3 = [v2 relationshipStorage];
    v4 = [v3 secureCloudRelationship];
    *(v1 + 920) = v4;

    *(v1 + 624) = v4;
    v5 = [v2 relationshipStorage];
    v6 = [v5 legacyRelationship];
    *(v1 + 928) = v6;

    v7 = [v4 incomingHandshakeToken];
    if (v7)
    {
      v8 = v7;
      v9 = sub_221FB6318();
      v11 = v10;

      *(v1 + 936) = v9;
      *(v1 + 944) = v11;
      v12 = [v4 cloudKitAddress];
      if (v12)
      {
        v13 = *(v1 + 880);
        v14 = v12;
        v15 = sub_221FB6318();
        v17 = v16;

        *(v1 + 952) = v15;
        *(v1 + 960) = v17;
        v18 = [v13 pendingRelationshipShareItem];
        *(v1 + 968) = v18;
        if (v18)
        {
          v19 = v18;
          v20 = [*(v1 + 880) pendingLegacyShareLocations];
          *(v1 + 976) = v20;
          if (v20)
          {
            v21 = v20;
            v22 = [v4 receivedInvitation];
            *(v1 + 984) = v22;
            if (v22)
            {

              v23 = sub_221FB61B8();
              v24 = sub_221FB65C8();

              if (os_log_type_enabled(v23, v24))
              {
                v25 = swift_slowAlloc();
                v26 = swift_slowAlloc();
                v70 = v26;
                *v25 = 136315138;
                *(v25 + 4) = sub_221EF4114(v15, v17, &v70);
                _os_log_impl(&dword_221E93000, v23, v24, "Fetching participant for %s", v25, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v26);
                MEMORY[0x223DADA80](v26, -1, -1);
                MEMORY[0x223DADA80](v25, -1, -1);
              }

              v27 = __swift_project_boxed_opaque_existential_0Tm((*(v1 + 656) + 264), *(*(v1 + 656) + 288));
              v28 = *__swift_project_boxed_opaque_existential_0Tm(v27 + 5, v27[8]);
              v29 = swift_task_alloc();
              *(v1 + 992) = v29;
              *v29 = v1;
              v29[1] = sub_221FAAC00;
              v30 = *(v1 + 856);

              return sub_221E9F708(v15, v17, v30, v28);
            }

            v57 = sub_221FB61B8();
            v58 = sub_221FB65A8();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              *v59 = 0;
              _os_log_impl(&dword_221E93000, v57, v58, "Missing received invitation for invite request accept", v59, 2u);
              MEMORY[0x223DADA80](v59, -1, -1);
            }

            v60 = *(v1 + 880);

            sub_221EA4994();
            swift_allocError();
            *v61 = 42;
            swift_willThrow();

            v69 = &unk_221FC0298;
          }

          else
          {

            v52 = sub_221FB61B8();
            v53 = sub_221FB65A8();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&dword_221E93000, v52, v53, "Missing CloudKit legacy share location for invite request accept", v54, 2u);
              MEMORY[0x223DADA80](v54, -1, -1);
            }

            v55 = *(v1 + 880);

            sub_221EA4994();
            swift_allocError();
            *v56 = 24;
            swift_willThrow();

            v69 = &unk_221FC0290;
          }
        }

        else
        {

          v47 = sub_221FB61B8();
          v48 = sub_221FB65A8();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_221E93000, v47, v48, "Missing CloudKit share items for invite request accept", v49, 2u);
            MEMORY[0x223DADA80](v49, -1, -1);
          }

          v50 = *(v1 + 880);

          sub_221EA4994();
          swift_allocError();
          *v51 = 23;
          swift_willThrow();

          v69 = &unk_221FBC1D8;
        }
      }

      else
      {

        v42 = sub_221FB61B8();
        v43 = sub_221FB65A8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_221E93000, v42, v43, "Missing CloudKit address for invite request accept", v44, 2u);
          MEMORY[0x223DADA80](v44, -1, -1);
        }

        v45 = *(v1 + 880);

        sub_221EA4994();
        swift_allocError();
        *v46 = 20;
        swift_willThrow();

        v69 = &unk_221FC0280;
      }
    }

    else
    {

      v37 = sub_221FB61B8();
      v38 = sub_221FB65A8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_221E93000, v37, v38, "Missing handshake token for invite request accept", v39, 2u);
        MEMORY[0x223DADA80](v39, -1, -1);
      }

      v40 = *(v1 + 880);

      sub_221EA4994();
      swift_allocError();
      *v41 = 22;
      swift_willThrow();

      v69 = &unk_221FC0278;
    }
  }

  else
  {
    v32 = sub_221FB61B8();
    v33 = sub_221FB65C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_221E93000, v32, v33, "Unable to fetch CloudKit address", v34, 2u);
      MEMORY[0x223DADA80](v34, -1, -1);
    }

    v35 = *(v1 + 880);

    sub_221EA4994();
    swift_allocError();
    *v36 = 20;
    swift_willThrow();

    v69 = &unk_221FC0270;
  }

  v62 = *(v1 + 832);
  v63 = *(v1 + 784);
  v64 = *__swift_project_boxed_opaque_existential_0Tm((*(v1 + 656) + 224), *(*(v1 + 656) + 248));
  v65 = sub_221FB5BF8();
  [v64 removePlaceholderWithContactUUID:v65 shouldNotify:0];

  v66 = sub_221FB64C8();
  (*(*(v66 - 8) + 56))(v63, 1, 1, v66);
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = 0;
  v67[4] = v62;

  sub_221FA7A78(0, 0, v63, v69, v67);

  v68 = *(v1 + 8);

  return v68();
}

uint64_t sub_221FAAC00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1000) = a1;
  *(v3 + 1008) = v1;

  if (v1)
  {

    v4 = sub_221FAB26C;
  }

  else
  {
    v4 = sub_221FAAD38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221FAAD38()
{
  v31 = v0;
  if (v0[125])
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((v0[82] + 264), *(v0[82] + 288));
    v2 = *__swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
    v3 = swift_task_alloc();
    v0[127] = v3;
    *v3 = v0;
    v3[1] = sub_221FAB134;
    v4 = v0[120];
    v5 = v0[119];
    v6 = v0[107];

    return sub_221F99674(v5, v4, v6, v2);
  }

  else
  {

    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[120];
    if (v10)
    {
      v12 = v0[119];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      v15 = sub_221EF4114(v12, v11, &v30);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_221E93000, v8, v9, "Destination %s does not have a matching CloudKit participant", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    else
    {
    }

    v16 = v0[123];
    v17 = v0[122];
    v18 = v0[121];
    v19 = v0[116];
    v20 = v0[115];
    v21 = v0[110];
    sub_221EA4994();
    swift_allocError();
    *v22 = 12;
    swift_willThrow();

    v23 = v0[104];
    v24 = v0[98];
    v25 = *__swift_project_boxed_opaque_existential_0Tm((v0[82] + 224), *(v0[82] + 248));
    v26 = sub_221FB5BF8();
    [v25 removePlaceholderWithContactUUID:v26 shouldNotify:0];

    v27 = sub_221FB64C8();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v23;

    sub_221FA7A78(0, 0, v24, &unk_221FBAB00, v28);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_221FAB134(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1024) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {

    v4 = sub_221FAB490;
  }

  else
  {
    v4 = sub_221FAB6BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221FAB26C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 880);

  v6 = *(v0 + 832);
  v7 = *(v0 + 784);
  v8 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v9 = sub_221FB5BF8();
  [v8 removePlaceholderWithContactUUID:v9 shouldNotify:0];

  v10 = sub_221FB64C8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v6;

  sub_221FA7A78(0, 0, v7, &unk_221FC02A0, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221FAB490()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  v6 = *(v0 + 880);

  v7 = *(v0 + 832);
  v8 = *(v0 + 784);
  v9 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v10 = sub_221FB5BF8();
  [v9 removePlaceholderWithContactUUID:v10 shouldNotify:0];

  v11 = sub_221FB64C8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;

  sub_221FA7A78(0, 0, v8, &unk_221FC02B0, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_221FAB6BC()
{
  v40 = v0;
  v1 = [*(v0 + 1000) userIdentity];
  v2 = [v1 hasiCloudAccount];

  if (v2 && (v3 = [*(v0 + 1024) userIdentity], v4 = objc_msgSend(v3, sel_hasiCloudAccount), v3, v4))
  {

    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_221E93000, v5, v6, "Making secure cloud relationship share", v7, 2u);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    v8 = *(v0 + 920);
    v9 = *(v0 + 656);

    __swift_project_boxed_opaque_existential_0Tm((v9 + 344), *(v9 + 368));
    v10 = v8;
    v11 = swift_task_alloc();
    *(v0 + 1040) = v11;
    *v11 = v0;
    v11[1] = sub_221FABB98;
    v12 = *(v0 + 920);
    v13 = *(v0 + 856);

    return sub_221E9AC64(v12, v13, 0);
  }

  else
  {

    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 960);
    if (v17)
    {
      v19 = *(v0 + 952);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      v22 = sub_221EF4114(v19, v18, &v39);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_221E93000, v15, v16, "Destination %s has a participant, but no iCloud account", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DADA80](v21, -1, -1);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 1024);
    v24 = *(v0 + 1000);
    v25 = *(v0 + 984);
    v26 = *(v0 + 976);
    v27 = *(v0 + 968);
    v28 = *(v0 + 928);
    v29 = *(v0 + 920);
    v30 = *(v0 + 880);
    sub_221EA4994();
    swift_allocError();
    *v31 = 6;
    swift_willThrow();

    v32 = *(v0 + 832);
    v33 = *(v0 + 784);
    v34 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v35 = sub_221FB5BF8();
    [v34 removePlaceholderWithContactUUID:v35 shouldNotify:0];

    v36 = sub_221FB64C8();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v32;

    sub_221FA7A78(0, 0, v33, &unk_221FC02B8, v37);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_221FABB98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1048) = a1;
  *(v3 + 1056) = v1;

  if (v1)
  {
    v4 = *(v3 + 920);

    v5 = sub_221FABEF4;
  }

  else
  {

    v5 = sub_221FABCDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221FABCDC()
{
  v1 = v0[131];
  v2 = v0[125];
  __swift_project_boxed_opaque_existential_0Tm((v0[82] + 344), *(v0[82] + 368));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[133] = v4;
  *v4 = v0;
  v4[1] = sub_221FABDA8;
  v5 = v0[131];
  v6 = v0[107];

  return sub_221E9A43C(v2, v5, v6, 0);
}

uint64_t sub_221FABDA8()
{
  v2 = *v1;
  *(v2 + 1072) = v0;

  v3 = *(v2 + 1048);
  if (v0)
  {

    v4 = sub_221FAC30C;
  }

  else
  {

    v4 = sub_221FAC128;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221FABEF4()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 880);

  v8 = *(v0 + 832);
  v9 = *(v0 + 784);
  v10 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v11 = sub_221FB5BF8();
  [v10 removePlaceholderWithContactUUID:v11 shouldNotify:0];

  v12 = sub_221FB64C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v8;

  sub_221FA7A78(0, 0, v9, &unk_221FC02C0, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_221FAC128()
{
  v1 = v0[125];
  __swift_project_boxed_opaque_existential_0Tm((v0[82] + 344), *(v0[82] + 368));
  v2 = swift_task_alloc();
  v0[135] = v2;
  *v2 = v0;
  v2[1] = sub_221FAC1E0;
  v3 = v0[131];
  v4 = v0[107];

  return sub_221E993C0(v1, v3, v4, 0);
}

uint64_t sub_221FAC1E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {

    v4 = sub_221FACA9C;
  }

  else
  {
    v4 = sub_221FAC548;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221FAC30C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v6 = *(v0 + 928);
  v7 = *(v0 + 920);
  v8 = *(v0 + 880);

  v9 = *(v0 + 832);
  v10 = *(v0 + 784);
  v11 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v12 = sub_221FB5BF8();
  [v11 removePlaceholderWithContactUUID:v12 shouldNotify:0];

  v13 = sub_221FB64C8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v9;

  sub_221FA7A78(0, 0, v10, &unk_221FC02C8, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221FAC548()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1000);

  sub_221FB083C();
  v3 = sub_221FA6C68(v1, v2);
  *(v0 + 1104) = v3;
  if (v3)
  {
    v4 = sub_221FB61B8();
    v5 = sub_221FB65C8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_221E93000, v4, v5, "Making legacy relationship shares", v6, 2u);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v7 = *(v0 + 928);
    v8 = *(v0 + 880);
    v9 = *(v0 + 656);

    v10 = *__swift_project_boxed_opaque_existential_0Tm((v9 + 184), *(v9 + 208));
    v11 = v7;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 528;
    *(v0 + 88) = sub_221FACCD8;
    v12 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBD8, &qword_221FC02E8);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_221FB0554;
    *(v0 + 360) = &block_descriptor_92;
    *(v0 + 368) = v12;
    [v10 saveRelationshipAndFetchOrCreateShares:v11 contact:v8 cloudKitGroup:0 completion:v0 + 336];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v13 = *(v0 + 1088);
    v14 = *(v0 + 1000);

    v15 = v13;
    v16 = v14;
    v17 = sub_221FB61B8();
    v18 = sub_221FB65A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1088);
      v20 = *(v0 + 1000);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v20;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v19;
      *v22 = v20;
      v22[1] = v19;
      v23 = v19;
      v24 = v20;
      _os_log_impl(&dword_221E93000, v17, v18, "Failed to create share item for participant: %@, share: %@", v21, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v22, -1, -1);
      MEMORY[0x223DADA80](v21, -1, -1);
    }

    v25 = *(v0 + 1024);
    v26 = *(v0 + 1000);
    v27 = *(v0 + 984);
    v28 = *(v0 + 976);
    v29 = *(v0 + 968);
    v30 = *(v0 + 928);
    v41 = *(v0 + 1088);
    v42 = *(v0 + 920);
    v31 = *(v0 + 880);

    sub_221EA4994();
    swift_allocError();
    *v32 = 31;
    swift_willThrow();

    v33 = *(v0 + 832);
    v34 = *(v0 + 784);
    v35 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v36 = sub_221FB5BF8();
    [v35 removePlaceholderWithContactUUID:v36 shouldNotify:0];

    v37 = sub_221FB64C8();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v33;

    sub_221FA7A78(0, 0, v34, &unk_221FC02D8, v38);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_221FACA9C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v6 = *(v0 + 928);
  v7 = *(v0 + 920);
  v8 = *(v0 + 880);

  v9 = *(v0 + 832);
  v10 = *(v0 + 784);
  v11 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v12 = sub_221FB5BF8();
  [v11 removePlaceholderWithContactUUID:v12 shouldNotify:0];

  v13 = sub_221FB64C8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v9;

  sub_221FA7A78(0, 0, v10, &unk_221FC02D0, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221FACCD8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1112) = v1;
  if (v1)
  {
    v2 = sub_221FAD080;
  }

  else
  {
    v2 = sub_221FACDE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FACDE8()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 656);
  v3 = *(v0 + 536);
  *(v0 + 1120) = v3;
  v14 = *(v0 + 544);
  *(v0 + 1128) = v14;

  v4 = __swift_project_boxed_opaque_existential_0Tm((v2 + 264), *(v2 + 288));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
  v5 = swift_allocObject();
  *(v0 + 1144) = v5;
  *(v5 + 16) = xmmword_221FB8D60;
  *(v5 + 32) = v3;
  *(v5 + 40) = v14;
  v6 = v4[3];
  v7 = v3;
  v8 = v14;
  v9 = *__swift_project_boxed_opaque_existential_0Tm(v4, v6);
  v10 = swift_task_alloc();
  *(v0 + 1152) = v10;
  *v10 = v0;
  v10[1] = sub_221FACF2C;
  v11 = *(v0 + 1024);
  v12 = *(v0 + 856);

  return sub_221F997D4(v11, v5, v12, v9);
}

uint64_t sub_221FACF2C()
{
  *(*v1 + 1160) = v0;

  if (v0)
  {

    v2 = sub_221FAD9F8;
  }

  else
  {
    v2 = sub_221FAD300;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FAD080(uint64_t a1)
{
  v2 = v1[138];
  v3 = v1[128];
  v4 = v1[125];
  v5 = v1[122];
  v6 = v1[121];
  v7 = v1[116];
  v18 = v1[115];
  v19 = v1[136];
  v16 = v1[110];
  v17 = v1[123];
  swift_willThrow();

  v8 = v1[104];
  v9 = v1[98];
  v10 = *__swift_project_boxed_opaque_existential_0Tm((v1[82] + 224), *(v1[82] + 248));
  v11 = sub_221FB5BF8();
  [v10 removePlaceholderWithContactUUID:v11 shouldNotify:0];

  v12 = sub_221FB64C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v8;

  sub_221FA7A78(0, 0, v9, &unk_221FC02F0, v13);

  v14 = v1[1];

  return v14();
}

uint64_t sub_221FAD300()
{
  v1 = [*(v0 + 1120) URL];
  if (v1)
  {
    v2 = v1;
    sub_221FB5AD8();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = sub_221FB5AE8();
  v7 = *(v6 - 8);
  v8 = v7[7];
  v8(v5, v3, 1, v6);
  sub_221E9CF08(v5, v4);
  v9 = v7[6];
  if (v9(v4, 1, v6) == 1)
  {
    v10 = *(v0 + 776);

    v11 = v10;
LABEL_11:
    sub_221E9CFE8(v11, &qword_27CFEB918, &unk_221FB82A0);
LABEL_12:
    v20 = *(v0 + 1136);
    v21 = *(v0 + 1128);
    v22 = *(v0 + 1120);
    v23 = *(v0 + 1104);
    v24 = *(v0 + 1024);
    v25 = *(v0 + 1000);
    v26 = *(v0 + 976);
    v27 = *(v0 + 968);
    v59 = *(v0 + 928);
    v60 = *(v0 + 1088);
    v62 = *(v0 + 920);
    v57 = *(v0 + 880);
    v58 = *(v0 + 984);
    sub_221EA4994();
    swift_allocError();
    *v28 = 40;
    swift_willThrow();

    v29 = *(v0 + 832);
    v30 = *(v0 + 784);
    v31 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v32 = sub_221FB5BF8();
    [v31 removePlaceholderWithContactUUID:v32 shouldNotify:0];

    v33 = sub_221FB64C8();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v29;

    sub_221FA7A78(0, 0, v30, &unk_221FC0308, v34);

    v35 = *(v0 + 8);

    return v35();
  }

  v12 = *(v0 + 1128);
  v13 = *(v0 + 776);
  sub_221FB5AB8();
  v61 = v7[1];
  v61(v13, v6);
  v14 = [v12 &selRef_preferredReachableService];
  if (v14)
  {
    v15 = v14;
    sub_221FB5AD8();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v0 + 760);
  v18 = *(v0 + 752);
  v8(v18, v16, 1, v6);
  sub_221E9CF08(v18, v17);
  if (v9(v17, 1, v6) == 1)
  {
    v19 = *(v0 + 760);

    v11 = v19;
    goto LABEL_11;
  }

  v37 = *(v0 + 760);
  sub_221FB5AB8();
  v61(v37, v6);
  v38 = [objc_allocWithZone(MEMORY[0x277CE90C8]) init];
  *(v0 + 1168) = v38;
  if (!v38)
  {

    goto LABEL_12;
  }

  v39 = v38;
  v40 = *(v0 + 1136);
  v41 = *(v0 + 968);
  v42 = *(v0 + 928);
  v43 = sub_221FB62E8();

  [v39 setActivityShareURL_];

  v44 = sub_221FB62E8();

  [v39 setRelationshipShareURL_];

  *(v0 + 632) = v40;
  v45 = v40;

  v46 = v41;
  v47 = sub_221FB61B8();
  v48 = sub_221FB65C8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 968);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v49;
    *v51 = v49;
    v52 = v49;
    _os_log_impl(&dword_221E93000, v47, v48, "Accepting secure cloud share %@", v50, 0xCu);
    sub_221E9CFE8(v51, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v51, -1, -1);
    MEMORY[0x223DADA80](v50, -1, -1);
  }

  v53 = *(v0 + 656);

  __swift_project_boxed_opaque_existential_0Tm((v53 + 344), *(v53 + 368));
  v54 = swift_task_alloc();
  *(v0 + 1176) = v54;
  *v54 = v0;
  v54[1] = sub_221FADC68;
  v55 = *(v0 + 968);
  v56 = *(v0 + 856);

  return sub_221E98A68(v55, v56);
}

uint64_t sub_221FAD9F8()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1024);
  v19 = *(v0 + 1104);
  v20 = *(v0 + 1000);
  v5 = *(v0 + 984);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  v8 = *(v0 + 928);
  v18 = *(v0 + 920);
  v9 = *(v0 + 880);

  v10 = *(v0 + 832);
  v11 = *(v0 + 784);
  v12 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v13 = sub_221FB5BF8();
  [v12 removePlaceholderWithContactUUID:v13 shouldNotify:0];

  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;

  sub_221FA7A78(0, 0, v11, &unk_221FC0300, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221FADC68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1184) = a1;
  *(v3 + 1192) = v1;

  if (v1)
  {

    v4 = sub_221FADFE0;
  }

  else
  {
    v4 = sub_221FADD94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221FADD94()
{
  v1 = *(v0 + 976);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1136);
    v5 = *(v0 + 976);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v4;
    *v7 = v5;
    v7[1] = v4;
    v8 = v4;
    v9 = v5;
    _os_log_impl(&dword_221E93000, v2, v3, "Accepting legacy share locations %@ relationship %@", v6, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = *(v0 + 1136);
  v11 = *(v0 + 976);
  v12 = *(v0 + 856);
  v13 = *(v0 + 656);

  v14 = *__swift_project_boxed_opaque_existential_0Tm((v13 + 184), *(v13 + 208));
  v15 = v10;
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 608;
  *(v0 + 152) = sub_221FAE254;
  v16 = swift_continuation_init();
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  *(v0 + 400) = MEMORY[0x277D85DD0];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_221FB046C;
  *(v0 + 424) = &block_descriptor_117;
  *(v0 + 432) = v16;
  [v14 acceptShares:v11 forRelationship:v15 contact:0 cloudKitGroup:v12 completion:v0 + 400];

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_221FADFE0()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  v18 = *(v0 + 1088);
  v19 = *(v0 + 1104);
  v4 = *(v0 + 1024);
  v20 = *(v0 + 1000);
  v5 = *(v0 + 984);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  v8 = *(v0 + 920);
  v9 = *(v0 + 880);

  v10 = *(v0 + 832);
  v11 = *(v0 + 784);
  v12 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v13 = sub_221FB5BF8();
  [v12 removePlaceholderWithContactUUID:v13 shouldNotify:0];

  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;

  sub_221FA7A78(0, 0, v11, &unk_221FC0310, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221FAE254()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1200) = v1;
  if (v1)
  {

    v2 = sub_221FAE378;
  }

  else
  {
    v2 = sub_221FAE610;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FAE378(uint64_t a1)
{
  v2 = v1[148];
  v3 = v1[146];
  v4 = v1[142];
  v5 = v1[141];
  v6 = v1[140];
  v7 = v1[138];
  v18 = v1[128];
  v19 = v1[125];
  v8 = v1[122];
  v9 = v1[121];
  v22 = v1[115];
  v23 = v1[136];
  v20 = v1[110];
  v21 = v1[123];
  swift_willThrow();

  v10 = v1[104];
  v11 = v1[98];
  v12 = *__swift_project_boxed_opaque_existential_0Tm((v1[82] + 224), *(v1[82] + 248));
  v13 = sub_221FB5BF8();
  [v12 removePlaceholderWithContactUUID:v13 shouldNotify:0];

  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;

  sub_221FA7A78(0, 0, v11, &unk_221FC0320, v15);

  v16 = v1[1];

  return v16();
}

uint64_t sub_221FAE610()
{
  v1 = v0[148];
  v25 = v0[146];
  v2 = v0[142];
  v26 = v0[138];
  v3 = v0[136];
  v4 = v0[115];
  v32 = v0[106];
  v30 = v0[101];
  v5 = v0[92];
  v31 = v0[99];
  v24 = v0[93];
  v27 = v0[86];
  v6 = v0[85];
  v28 = v0[84];
  v29 = v0[91];
  v7 = v0[83];
  v8 = v0[82];

  v9 = v0[77];
  v0[151] = v9;
  swift_beginAccess();
  v0[79] = v9;

  v10 = v4;
  v11 = [v3 recordID];
  [v10 setRelationshipZoneShareID_];

  [v10 setRemoteRelationshipZoneShareID_];
  [v10 insertEventWithType_];
  [v10 insertEventWithType_];
  [v10 insertEventWithType_];
  [v10 insertEventWithType_];
  [v10 setReceivedInvitation_];
  [v9 insertEventWithType_];
  [v9 insertEventWithType_];
  [v9 insertEventWithType_];
  [v9 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm(v8, v8[3]);
  v12 = ASMakeActivityDataPreviewWithManager();
  v0[152] = v12;
  v13 = v12;
  v14 = v25;
  v15 = v26;
  sub_221FB6028();
  sub_221FB5BB8();
  (*(v6 + 104))(v27, *MEMORY[0x277CE9470], v28);
  (*(v5 + 16))(v7, v24, v29);
  (*(v5 + 56))(v7, 0, 1, v29);
  sub_221FB5C28();
  sub_221FB5BE8();
  v32(v30, v31);
  sub_221FB5FB8();
  v16 = sub_221FB61B8();
  v17 = sub_221FB65C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_221E93000, v16, v17, "Sending accept response", v18, 2u);
    MEMORY[0x223DADA80](v18, -1, -1);
  }

  v19 = v0[82];

  __swift_project_boxed_opaque_existential_0Tm((v19 + 144), *(v19 + 168));
  v20 = swift_task_alloc();
  v0[153] = v20;
  *v20 = v0;
  v20[1] = sub_221FAEA38;
  v21 = v0[123];
  v22 = v0[90];

  return sub_221FA8884(v21, v22, 1104);
}

uint64_t sub_221FAEA38()
{
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v2 = sub_221FAECDC;
  }

  else
  {
    v2 = sub_221FAEB4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FAEB4C(uint64_t a1)
{
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[115];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_221E93000, v2, v3, "Pushing secure cloud relationship %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v8 = v1[115];
  v9 = v1[82];

  __swift_project_boxed_opaque_existential_0Tm((v9 + 304), *(v9 + 328));
  v10 = v8;
  v11 = swift_task_alloc();
  v1[155] = v11;
  *v11 = v1;
  v11[1] = sub_221FAEFCC;
  v12 = v1[115];
  v13 = v1[107];

  return sub_221EBAEA8(v12, 0, v13, 0);
}

uint64_t sub_221FAECDC()
{
  v1 = *(v0 + 1216);
  v29 = *(v0 + 1208);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1168);
  v18 = *(v0 + 1136);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1088);
  v4 = *(v0 + 1024);
  v24 = *(v0 + 1104);
  v25 = *(v0 + 1000);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 880);
  v27 = *(v0 + 744);
  v28 = *(v0 + 920);
  v8 = *(v0 + 736);
  v26 = *(v0 + 728);
  v9 = *(v0 + 712);
  v22 = *(v0 + 704);
  v23 = *(v0 + 720);

  (*(v9 + 8))(v23, v22);
  (*(v8 + 8))(v27, v26);

  v10 = *(v0 + 832);
  v11 = *(v0 + 784);
  v12 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v13 = sub_221FB5BF8();
  [v12 removePlaceholderWithContactUUID:v13 shouldNotify:0];

  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;

  sub_221FA7A78(0, 0, v11, &unk_221FC0330, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221FAEFCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1248) = a1;
  *(v4 + 1256) = v1;

  if (v1)
  {
    v5 = sub_221FAF724;
  }

  else
  {
    v5 = sub_221FAF10C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221FAF10C()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 920);
  swift_beginAccess();
  *(v0 + 624) = v1;

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1208);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_221E93000, v3, v4, "Pushing legacy relationship %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v9 = *(v0 + 1208);
  v10 = *(v0 + 656);

  v11 = __swift_project_boxed_opaque_existential_0Tm((v10 + 304), *(v10 + 328));
  if ([v9 cloudType])
  {
    v12 = *(v0 + 1208);
    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1208);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_221E93000, v13, v14, "Attempting to save secure cloud relationship to legacy container %@", v16, 0xCu);
      sub_221E9CFE8(v17, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v19 = 11;
    swift_willThrow();
    v52 = *(v0 + 1248);
    v20 = *(v0 + 1216);
    v21 = *(v0 + 1184);
    v22 = *(v0 + 1168);
    v41 = *(v0 + 1136);
    v42 = *(v0 + 1128);
    v43 = *(v0 + 1120);
    v44 = *(v0 + 1088);
    v23 = *(v0 + 1024);
    v48 = *(v0 + 1000);
    v49 = *(v0 + 1208);
    v24 = *(v0 + 976);
    v25 = *(v0 + 968);
    v26 = *(v0 + 880);
    v27 = *(v0 + 736);
    v50 = *(v0 + 728);
    v51 = *(v0 + 744);
    v46 = *(v0 + 720);
    v47 = *(v0 + 1104);
    v28 = *(v0 + 712);
    v45 = *(v0 + 704);

    (*(v28 + 8))(v46, v45);
    (*(v27 + 8))(v51, v50);

    v29 = *(v0 + 832);
    v30 = *(v0 + 784);
    v31 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v32 = sub_221FB5BF8();
    [v31 removePlaceholderWithContactUUID:v32 shouldNotify:0];

    v33 = sub_221FB64C8();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v29;

    sub_221FA7A78(0, 0, v30, &unk_221FC0340, v34);

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v37 = *(v0 + 1208);
    v38 = *(v0 + 856);
    v39 = *__swift_project_boxed_opaque_existential_0Tm(v11 + 6, v11[9]);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 640;
    *(v0 + 216) = sub_221FAFA14;
    v40 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_221EF4C50;
    *(v0 + 488) = &block_descriptor_142;
    *(v0 + 496) = v40;
    [v39 saveRelationship:v37 contact:0 cloudKitGroup:v38 activity:0 completion:v0 + 464];

    return MEMORY[0x282200938](v0 + 208);
  }
}

uint64_t sub_221FAF724()
{
  v1 = *(v0 + 1216);
  v29 = *(v0 + 1208);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1168);
  v18 = *(v0 + 1136);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1088);
  v4 = *(v0 + 1024);
  v24 = *(v0 + 1104);
  v25 = *(v0 + 1000);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 880);
  v27 = *(v0 + 744);
  v28 = *(v0 + 920);
  v8 = *(v0 + 736);
  v26 = *(v0 + 728);
  v9 = *(v0 + 712);
  v22 = *(v0 + 704);
  v23 = *(v0 + 720);

  (*(v9 + 8))(v23, v22);
  (*(v8 + 8))(v27, v26);

  v10 = *(v0 + 832);
  v11 = *(v0 + 784);
  v12 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v13 = sub_221FB5BF8();
  [v12 removePlaceholderWithContactUUID:v13 shouldNotify:0];

  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;

  sub_221FA7A78(0, 0, v11, &unk_221FC0338, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221FAFA14()
{
  v1 = *(*v0 + 240);
  *(*v0 + 1264) = v1;
  if (v1)
  {
    v2 = sub_221FAFF74;
  }

  else
  {
    v2 = sub_221FAFB24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FAFB24()
{
  v1 = *(v0 + 1208);
  v39 = *(v0 + 640);

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Clearing sharing items and locations", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v0 + 880);
  v6 = *(v0 + 872);

  [v5 setPendingRelationshipShareItem_];
  [v5 setPendingLegacyShareLocations_];
  [v6 saveContact_];
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1248);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_221E93000, v7, v8, "Accepted request for %@", v10, 0xCu);
    sub_221E9CFE8(v11, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v37 = *(v0 + 1248);
  v13 = *(v0 + 1216);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1136);
  v25 = *(v0 + 1128);
  v26 = *(v0 + 1120);
  v34 = *(v0 + 1104);
  v35 = *(v0 + 1000);
  v27 = *(v0 + 1088);
  v28 = *(v0 + 984);
  v17 = *(v0 + 976);
  v18 = *(v0 + 968);
  v30 = *(v0 + 880);
  v38 = *(v0 + 832);
  v36 = *(v0 + 784);
  v19 = *(v0 + 736);
  v32 = *(v0 + 728);
  v33 = *(v0 + 744);
  v31 = *(v0 + 720);
  v20 = *(v0 + 712);
  v29 = *(v0 + 704);

  (*(v20 + 8))(v31, v29);
  (*(v19 + 8))(v33, v32);

  v21 = sub_221FB64C8();
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v38;

  sub_221FA7A78(0, 0, v36, &unk_221FC0350, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_221FAFF74(uint64_t a1)
{
  swift_willThrow();
  v30 = *(v1 + 1248);
  v2 = *(v1 + 1216);
  v3 = *(v1 + 1184);
  v4 = *(v1 + 1168);
  v19 = *(v1 + 1136);
  v20 = *(v1 + 1128);
  v21 = *(v1 + 1120);
  v22 = *(v1 + 1088);
  v5 = *(v1 + 1024);
  v26 = *(v1 + 1000);
  v27 = *(v1 + 1208);
  v6 = *(v1 + 976);
  v7 = *(v1 + 968);
  v8 = *(v1 + 880);
  v9 = *(v1 + 736);
  v28 = *(v1 + 728);
  v29 = *(v1 + 744);
  v24 = *(v1 + 720);
  v25 = *(v1 + 1104);
  v10 = *(v1 + 712);
  v23 = *(v1 + 704);

  (*(v10 + 8))(v24, v23);
  (*(v9 + 8))(v29, v28);

  v11 = *(v1 + 832);
  v12 = *(v1 + 784);
  v13 = *__swift_project_boxed_opaque_existential_0Tm((*(v1 + 656) + 224), *(*(v1 + 656) + 248));
  v14 = sub_221FB5BF8();
  [v13 removePlaceholderWithContactUUID:v14 shouldNotify:0];

  v15 = sub_221FB64C8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;

  sub_221FA7A78(0, 0, v12, &unk_221FC0340, v16);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_221FB0270()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 784);
  v3 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v4 = sub_221FB5BF8();
  [v3 removePlaceholderWithContactUUID:v4 shouldNotify:0];

  v5 = sub_221FB64C8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBACA8, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221FB046C(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = a4;
    v12 = a4;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221FB0554(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v12 = swift_allocError();
    *v13 = a3;
    v14 = a3;

    return MEMORY[0x282200958](v11, v12);
  }

  else
  {
    v15 = *(*(v11 + 64) + 40);
    *v15 = a2;
    *(v15 + 8) = a4;
    *(v15 + 16) = a5;
    *(v15 + 24) = a6;
    v16 = a4;
    v17 = a5;
    v18 = a6;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221FB064C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221FB0744;

  return v6(a1);
}

uint64_t sub_221FB0744()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_221FB083C()
{
  result = qword_27CFEC268;
  if (!qword_27CFEC268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC268);
  }

  return result;
}

uint64_t sub_221FB0894(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221FB064C(a1, v4);
}

uint64_t sub_221FB094C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_221FB0A40;

  return v5(v2 + 32);
}

uint64_t sub_221FB0A40()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_221FB0B54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221FB094C(a1, v4);
}

uint64_t sub_221FB0C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221FB0C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221FB0D2C()
{
  v1 = v0;
  v2 = *(v0 + 128);
  if (v2)
  {
    v3 = qword_281307080;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    swift_unknownObjectRetain();
    v5 = sub_221FB61B8();
    v6 = sub_221FB65B8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = [v2 description];
      v10 = sub_221FB6318();
      v12 = v11;

      v13 = sub_221EF4114(v10, v12, &v15);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_221E93000, v5, v6, "Runtime transaction deinit before invalidation: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  *(v1 + 128) = 0;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_221FB0F08()
{
  sub_221FB0D2C();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_221FB0F6C()
{
  result = qword_27CFECBE8;
  if (!qword_27CFECBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBE8);
  }

  return result;
}

void sub_221FB100C(uint64_t a1)
{
  v1 = a1;
  v28 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    sub_221FB6538();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = v3;
  v9 = &off_278497000;
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v12 = v22) == 0))
    {
LABEL_25:
      sub_221E96470(v1);
      return;
    }

LABEL_18:
    v13 = [v12 v9[294]];
    v14 = [v13 secureCloudRemoteRelationship];

    LODWORD(v13) = [v14 secureCloudMigrationCompleted];
    if (v13 && (v15 = [v12 v9[294]], v16 = objc_msgSend(v15, sel_secureCloudRelationship), v15, LOBYTE(v15) = objc_msgSend(v16, sel_secureCloudDowngradeCompleted), v16, (v15 & 1) == 0) && (v17 = objc_msgSend(v12, v9[294]), v18 = objc_msgSend(v17, sel_legacyRelationship), v17, v19 = objc_msgSend(v18, sel_remoteActivityDataShareID), v18, v9 = &off_278497000, v19) && (v20 = objc_msgSend(v19, sel_zoneID), v19, v20))
    {

      MEMORY[0x223DAC7E0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
        v9 = &off_278497000;
      }

      sub_221FB6478();
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_221FB13B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SecureCloudKitDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_221FB155C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000084, 0x8000000221FC4D70, 0xD000000000000025, 0x8000000221FC4E30);
  v2 = __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore), *(v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore + 24));
  v3 = *(*v2 + 16);
  MEMORY[0x28223BE20](v2);

  os_unfair_lock_lock((v3 + 24));
  sub_221F416F0((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

id sub_221FB16FC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000084, 0x8000000221FC4D70, 0xD000000000000021, 0x8000000221FC4E00);
  v2 = *(*__swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore), *(v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore + 24)) + 16);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v3;
}

uint64_t sub_221FB1AE8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *aBlock, void *a8)
{
  v8[5] = a5;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  v8[7] = _Block_copy(aBlock);
  sub_221E9D138(0, &unk_27CFECC70, 0x277CE9530);
  v15 = sub_221FB6288();
  v8[8] = v15;
  v16 = a1;
  v17 = a2;
  swift_unknownObjectRetain();
  v18 = a5;
  a8;
  v19 = swift_task_alloc();
  v8[9] = v19;
  *v19 = v8;
  v19[1] = sub_221FB1C54;

  return sub_221FB2B1C(v17, a3, a4, v18, v15);
}

uint64_t sub_221FB1C54(char a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  swift_unknownObjectRelease();

  v11 = *(v5 + 56);
  if (v4)
  {
    v12 = sub_221FB5A98();

    (v11)[2](v11, 0, v12, 0);
    _Block_release(v11);
  }

  else
  {
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v13 = sub_221FB6428();
    (v11)[2](v11, a1 & 1, 0, v13);

    _Block_release(v11);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_221FB2088(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *aBlock, void *a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a4;
  v7[2] = a1;
  v7[7] = _Block_copy(aBlock);
  v14 = a1;
  v15 = a2;
  swift_unknownObjectRetain();
  v16 = a5;
  a7;
  v17 = swift_task_alloc();
  v7[8] = v17;
  *v17 = v7;
  v17[1] = sub_221FB21AC;

  return sub_221FB31FC(v15, a3, a4, v16);
}

uint64_t sub_221FB21AC(char a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  swift_unknownObjectRelease();
  v11 = *(v5 + 56);
  if (v2)
  {
    v12 = sub_221FB5A98();

    (v11)[2](v11, 0, v12, 0);
    _Block_release(v11);
  }

  else
  {
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v13 = sub_221FB6428();
    (v11)[2](v11, a1 & 1, 0, v13);

    _Block_release(v11);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_221FB2400()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_221E9544C;

  return sub_221FB2088(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221FB24DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_221E963B4;

  return v6();
}

uint64_t sub_221FB25C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_221E9544C;

  return v7();
}

uint64_t sub_221FB26AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_221EEDBF0(a3, v23 - v10);
  v12 = sub_221FB64C8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_221EEDC60(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_221FB64B8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_221FB6488();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_221FB6338() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_221EEDC60(a3);

    return v21;
  }

LABEL_8:
  sub_221EEDC60(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_221FB2968(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221FB064C(a1, v4);
}

uint64_t sub_221FB2A20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return sub_221FB064C(a1, v4);
}

id sub_221FB2AD8(id *a1, void **a2)
{
  v3 = *a2;

  *a1 = v3;
  return v3;
}

uint64_t sub_221FB2B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  return MEMORY[0x2822009F8](sub_221FB2B44, 0, 0);
}

uint64_t sub_221FB2B44()
{
  v1 = v0[23];
  v2 = __swift_project_boxed_opaque_existential_0Tm((v0[26] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService), *(v0[26] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService + 24));
  type metadata accessor for XPCActivityContainer();
  v3 = swift_allocObject();
  v4 = v3;
  if (v1)
  {
    v5 = v0[23];
    *(v3 + 16) = v5;
    v14 = *v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    swift_deallocPartialClassInstance();
    v4 = 0;
    v5 = 0;
    v14 = *v2;
  }

  v0[27] = v4;
  v0[28] = v5;
  v13 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  v8 = sub_221FB6428();
  v0[29] = v8;
  v9 = sub_221FB6428();
  v0[30] = v9;
  sub_221E9D138(0, &unk_27CFECC70, 0x277CE9530);
  v10 = sub_221FB6278();
  v0[31] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221FB2DA8;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECC80, &unk_221FBA7B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EE370C;
  v0[13] = &block_descriptor_37;
  v0[14] = v11;
  [v14 fetchChangesInPrivateDatabaseWithServerChangeTokenCache:v7 priority:v6 activity:v5 group:v13 additionalZoneIDs:v8 zoneIDsToSkip:v9 fetchConfigurations:v10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FB2DA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_221FB3158;
  }

  else
  {
    v2 = sub_221FB2EB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FB2EB8()
{
  v25 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[19];

  swift_unknownObjectRelease();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v5 = v0[24];
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);

  v7 = v5;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 134349314;
    if (v4 >> 62)
    {
      v12 = sub_221FB6868();
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v0[24];
    *(v10 + 4) = v12;

    *(v10 + 12) = 2080;
    v14 = [v13 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_221FB6318();
      v18 = v17;

      v0[10] = 0;
      v0[11] = 0xE000000000000000;
      v0[18] = v16;
      v0[19] = v18;
      sub_221FB6A08();

      v19 = v0[10];
      v20 = v0[11];
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_221EF4114(v19, v20, &v24);

    *(v10 + 14) = v21;
    _os_log_impl(&dword_221E93000, v8, v9, "Fetched %{public}ld records from secure cloud private database, group: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22(1, v4);
}

uint64_t sub_221FB3158(uint64_t a1)
{
  v2 = v1[31];
  v4 = v1[29];
  v3 = v1[30];
  swift_willThrow();

  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5(0);
}

uint64_t sub_221FB31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221FB3224, 0, 0);
}

uint64_t sub_221FB3224()
{
  v1 = v0[4];
  v2 = __swift_project_boxed_opaque_existential_0Tm((v0[6] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService), *(v0[6] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService + 24));
  type metadata accessor for XPCActivityContainer();
  v3 = swift_allocObject();
  if (v1)
  {
    *(v3 + 16) = v0[4];
  }

  else
  {
    swift_deallocPartialClassInstance();
    v3 = 0;
  }

  v0[7] = v3;
  v4 = *v2;
  v5 = v3;
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_221FB3340;
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return sub_221EE383C(v9, v8, v7, v5, v4);
}

uint64_t sub_221FB3340(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    v5 = a1;
  }

  return v6(v7, v5);
}

uint64_t sub_221FB3474()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_221E963B4;

  return sub_221FB1AE8(v2, v3, v4, v5, v6, v7, v9, v8);
}

id sub_221FB35B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 activityDataManager];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 cloudKitManager];
    if (v6)
    {
      v7 = v6;
      v8 = [a1 contactsManager];
      if (v8)
      {
        v9 = v8;
        v10 = [a1 competitionManager];
        if (v10)
        {
          v11 = v10;
          v12 = [a1 friendListManager];
          if (v12)
          {
            v13 = v12;
            v14 = [a1 friendInviteBulletinManager];
            if (v14)
            {
              v15 = v14;
              v49 = [a1 gatewayManager];
              if (v49)
              {
                v16 = [a1 periodicUpdateManager];
                if (v16)
                {
                  v47 = v16;
                  v48 = v15;
                  v17 = [a1 relationshipManager];
                  if (v17)
                  {
                    v18 = v17;
                    v37 = sub_221FB6318();
                    v43 = v18;
                    v44 = v19;
                    v40 = [v18 messageCenters];
                    sub_221FB3A70();
                    v20 = sub_221FB6288();

                    if (*(v20 + 16))
                    {
                      v41 = v20;
                      v38 = sub_221ED4B5C(v37, v44);
                      v22 = v21;

                      if (v22)
                      {
                        v39 = *(*(v41 + 56) + 8 * v38);

                        v35 = sub_221FB6318();
                        v45 = v23;
                        v24 = [v43 messageCenters];
                        v42 = sub_221FB6288();

                        if (*(v42 + 16))
                        {
                          v36 = sub_221ED4B5C(v35, v45);
                          v26 = v25;

                          if (v26)
                          {
                            v46 = *(*(v42 + 56) + 8 * v36);

                            v27 = a1;
                            v28 = [v27 databaseClient];
                            result = [v27 fitnessAppsStateObserver];
                            *a2 = v27;
                            a2[1] = v5;
                            a2[2] = v7;
                            a2[3] = v11;
                            a2[4] = v9;
                            a2[5] = v28;
                            a2[6] = result;
                            a2[7] = v13;
                            a2[8] = v48;
                            a2[9] = v39;
                            a2[10] = v46;
                            a2[11] = v49;
                            a2[12] = v47;
                            a2[13] = v43;
                            return result;
                          }
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }
                    }

                    else
                    {
                    }

                    v31 = v47;
                    v33 = v48;
                    v32 = v49;
                    v34 = v13;
                  }

                  else
                  {
                    v31 = v5;
                    v32 = v7;
                    v33 = v9;
                    v34 = v11;
                    v11 = v13;
                    v5 = v47;
                    v9 = v48;
                    v7 = v49;
                  }

                  v30 = v5;
                  v13 = v9;

                  v5 = v32;
                  v15 = v7;
                  v7 = v33;
                  v9 = v34;
                }

                else
                {
                  v30 = v49;
                }

                v5 = v7;
                v7 = v9;
                v9 = v11;
                v11 = v13;
                v13 = v15;
                v15 = v30;
              }

              v5 = v7;
              v7 = v9;
              v9 = v11;
              v11 = v13;
              v13 = v15;
            }

            v5 = v7;
            v7 = v9;
            v9 = v11;
            v11 = v13;
          }

          v5 = v7;
          v7 = v9;
          v9 = v11;
        }

        v5 = v7;
        v7 = v9;
      }

      v5 = v7;
    }
  }

  sub_221FB3A1C();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_221FB3A1C()
{
  result = qword_27CFECC88;
  if (!qword_27CFECC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECC88);
  }

  return result;
}

unint64_t sub_221FB3A70()
{
  result = qword_281306EB0;
  if (!qword_281306EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306EB0);
  }

  return result;
}

uint64_t sub_221FB3ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_221E9606C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221FB3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_221E96070;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221FB3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_221E9606C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221FB3EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_221E9606C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221FB4004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221FB412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221FB4254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221FB4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221FB44B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221FB44B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_221FB45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221FB4708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 80) + **(a8 + 80));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_221E963B4;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221FB4868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 88) + **(a5 + 88));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221FB49A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221FB4AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9606C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221FB4C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return v9(a1, a2, a3);
}

uint64_t sub_221FB4D30(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  *(v3 + 176) = a1;
  return MEMORY[0x2822009F8](sub_221FB4D54, 0, 0);
}

uint64_t sub_221FB4D54(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 176);
  v4 = sub_221FB5BF8();
  *(v1 + 160) = v4;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 178;
  *(v1 + 24) = sub_221FB4E94;
  v5 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_221FA909C;
  *(v1 + 104) = &block_descriptor_35;
  *(v1 + 112) = v5;
  [v2 insertRemoteEventType:v3 onContactWithUUID:v4 cloudType:1 completion:v1 + 80];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_221FB4E94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_221EF4BE0;
  }

  else
  {
    v2 = sub_221F6D05C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FB4FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  return MEMORY[0x2822009F8](sub_221FB4FC8, 0, 0);
}

uint64_t sub_221FB4FC8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221FB50FC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBD8, &qword_221FC02E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FB0554;
  v0[13] = &block_descriptor_38;
  v0[14] = v4;
  [v1 saveRelationshipAndFetchOrCreateShares:v3 contact:v2 cloudKitGroup:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FB50FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_221FB522C;
  }

  else
  {
    v2 = sub_221FB520C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FB522C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221FB52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  return MEMORY[0x2822009F8](sub_221FB52D4, 0, 0);
}

uint64_t sub_221FB52D4()
{
  v1 = v0[21];
  v2 = sub_221FB62E8();
  v0[25] = v2;
  if (v1)
  {
    v1 = sub_221FB62E8();
  }

  v0[26] = v1;
  v3 = v0[24];
  v4 = sub_221FB62E8();
  v0[27] = v4;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_221FB5440;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_31;
  v0[14] = v5;
  [v3 sendInviteToPersonWithDestination:v2 callerID:v1 serviceIdentifier:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FB5440()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_221FB55C0;
  }

  else
  {
    v2 = sub_221FB5550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FB5550()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221FB55C0(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[25];
  v3 = v1[26];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_221FB5644(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 192) = a3;
  *(v4 + 152) = a2;
  *(v4 + 160) = a4;
  *(v4 + 194) = a1;
  return MEMORY[0x2822009F8](sub_221FB566C, 0, 0);
}

uint64_t sub_221FB566C(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 160);
  v4 = *(v1 + 194);
  v5 = sub_221FB5BF8();
  *(v1 + 168) = v5;
  v6 = ASCloudKitGroupUserActionExplicit();
  *(v1 + 176) = v6;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_221FB57D0;
  v7 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_221EF4C50;
  *(v1 + 104) = &block_descriptor_39;
  *(v1 + 112) = v7;
  [v3 setActivityDataVisible:v4 toFriendWithUUID:v5 eventType:v2 cloudKitGroup:v6 completion:v1 + 80];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_221FB57D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_221EBEA9C;
  }

  else
  {
    v2 = sub_221FB58E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221FB58E0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}