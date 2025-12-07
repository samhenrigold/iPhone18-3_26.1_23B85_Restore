void sub_1DD4BAEDC(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 4 * v8);
        v10 = *(*a3 + 4 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 4 * v11++) >= v12);
          v12 = *(*a3 + 4 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 4 * v5 - 4;
            v16 = 4 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 4;
              v16 += 4;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
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

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 4 * v8 - 4;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 4 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 4;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1DD4BB7C8((*a3 + 4 * *v65), (*a3 + 4 * *v67), (*a3 + 4 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD4BB4C4(&v79, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD4BB38C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
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
    sub_1DD4BB5F0((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
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

uint64_t sub_1DD4BB4C4(uint64_t *a1, float *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
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
    sub_1DD4BB7C8((*a3 + 4 * *v9), (*a3 + 4 * *v11), (*a3 + 4 * v12), a2);
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

uint64_t sub_1DD4BB5F0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1DD3AA508(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v21 = v7;
        goto LABEL_36;
      }

      v12 = *(v6 + 4);
      v13 = *(v4 + 4);
      if (v13 < v12)
      {
        break;
      }

      if (v12 == v13 && *(v6 + 6) < *(v4 + 6))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 40;
      if (!v16)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 40;
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_16:
    v17 = *v15;
    v18 = *(v15 + 1);
    *(v7 + 4) = *(v15 + 4);
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_17;
  }

  sub_1DD3AA508(a2, (a3 - a2) / 40, a4);
  v19 = &v4[40 * v9];
LABEL_19:
  v20 = 0;
  v21 = v6;
  while (1)
  {
    v10 = &v19[v20];
    if (&v19[v20] <= v4 || v6 <= v7)
    {
      break;
    }

    v23 = *(v10 - 1);
    v24 = *(v6 - 1);
    if (v24 < v23 || (v23 == v24 ? (v25 = *&v19[v20 - 16] < *(v6 - 4)) : (v25 = 0), v25))
    {
      v6 -= 40;
      v30 = (v5 + v20);
      v5 = v5 + v20 - 40;
      v19 += v20;
      if (v30 != v21)
      {
        v31 = *v6;
        v32 = *(v21 - 24);
        *(v5 + 32) = *(v21 - 1);
        *v5 = v31;
        *(v5 + 16) = v32;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + v20))
    {
      v26 = v5 + v20 - 40;
      v27 = v10 - 40;
      v28 = *v27;
      v29 = *(v27 + 1);
      *(v26 + 32) = *(v27 + 4);
      *v26 = v28;
      *(v26 + 16) = v29;
    }

    v20 -= 40;
  }

LABEL_36:
  v33 = (v10 - v4) / 40;
  if (v21 != v4 || v21 >= &v4[40 * v33])
  {
    memmove(v21, v4, 40 * v33);
  }

  return 1;
}

uint64_t sub_1DD4BB7C8(char *a1, char *a2, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 4;
  v9 = (a3 - a2) / 4;
  if (v8 < v9)
  {
    sub_1DD3C1BC8(a1, (a2 - a1) / 4, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1DD3C1BC8(a2, (a3 - a2) / 4, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 4;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 4 * v17);
  }

  return 1;
}

void (*sub_1DD4BB93C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1DD4BBD64(v6);
  v6[9] = sub_1DD4BBA34(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DD4BB9D4;
}

void sub_1DD4BB9D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DD4BBA34(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v9;
  v9[16] = a3;
  v9[17] = v4;
  v9[15] = a2;
  v10 = *v4;
  v11 = sub_1DD3978DC();
  *(v9 + 152) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC360, &unk_1DD652300);
  if (sub_1DD640A08())
  {
    v15 = sub_1DD3978DC();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[18] = v13;
  if (v14)
  {
    v17 = *(*v5 + 56) + 40 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v9[10] = v18;
  v9[11] = v19;
  v9[12] = v20;
  v9[13] = v21;
  v9[14] = v22;
  return sub_1DD4BBBA0;
}

void sub_1DD4BBBA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 152);
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v9 = *(v2 + 144);
      v10 = **(v2 + 136);
      if ((v8 & 1) == 0)
      {
        v11 = *(v2 + 120);
        v16 = *(v2 + 128);
        *(v2 + 40) = v3;
        *(v2 + 48) = v4;
        *(v2 + 56) = v5;
        *(v2 + 64) = v6;
        *(v2 + 72) = v7;
        v14 = v2 + 40;
        v13 = v16;
        goto LABEL_13;
      }

LABEL_7:
      v15 = *(v10 + 56) + 40 * v9;
      *v15 = v3;
      *(v15 + 8) = v4;
      *(v15 + 16) = v5;
      *(v15 + 24) = v6;
      *(v15 + 32) = v7;
      goto LABEL_14;
    }

    if ((*(*a1 + 152) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    sub_1DD406F20(*(**(v2 + 136) + 48) + 16 * *(v2 + 144));
    sub_1DD640A28();
    goto LABEL_14;
  }

  if (!v3)
  {
    if ((*(*a1 + 152) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v9 = *(v2 + 144);
  v10 = **(v2 + 136);
  if (v8)
  {
    goto LABEL_7;
  }

  v11 = *(v2 + 120);
  v12 = *(v2 + 128);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  v13 = v12;
  v14 = v2;
LABEL_13:
  sub_1DD40058C(v9, v11, v13, v14, v10);

LABEL_14:
  v17 = *(v2 + 80);
  sub_1DD4BBE0C(v3);
  sub_1DD4BBD98(v17);

  free(v2);
}

uint64_t (*sub_1DD4BBD64(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DD4BBD8C;
}

uint64_t sub_1DD4BBD98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1DD4BBE0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD4BBE54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DD4BBE94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD4BBEF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD4BBF34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD4BBF8C()
{
  result = qword_1ECCDD8D0;
  if (!qword_1ECCDD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8D0);
  }

  return result;
}

uint64_t sub_1DD4BC018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnedDisambiguation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4BC07C(uint64_t a1)
{
  v2 = type metadata accessor for LearnedDisambiguation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4BC0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for VectorDbPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4BC220()
{
  result = qword_1ECCDD8D8;
  if (!qword_1ECCDD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8D8);
  }

  return result;
}

unint64_t sub_1DD4BC278()
{
  result = qword_1ECCDD8E0;
  if (!qword_1ECCDD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8E0);
  }

  return result;
}

unint64_t sub_1DD4BC2D0()
{
  result = qword_1ECCDD8E8;
  if (!qword_1ECCDD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8E8);
  }

  return result;
}

void *sub_1DD4BC37C(unint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEC48]) init];
  v5 = v4;
  if (a1 != 2)
  {
    [v4 setIsAsrE3Invoked_];
  }

  if ((a2 & 1) == 0)
  {
    [v5 setNumEuclidCandidates_];
  }

  return v5;
}

id sub_1DD4BC400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v58 - v3;
  v5 = sub_1DD63D0F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69CEC38]) init];
  sub_1DD3BB660(v1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1DD3C34AC(v4);
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    if (v15)
    {
      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      (*(v6 + 16))(v11, v14, v5);
      v16 = v15;
      v17 = sub_1DD5A5500(v11);
      [v16 setTemplateId_];
    }

    (*(v6 + 8))(v14, v5);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v19 = *(v1 + *(type metadata accessor for InferenceEuclidDebugMetrics(0) + 20));
    v20 = *(v19 + 16);
    if (v20)
    {
      v58 = v15;
      v59 = v1;
      v66 = v18;
      v21 = v15;
      sub_1DD640988();
      v22 = sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      v24 = *(v6 + 16);
      v23 = v6 + 16;
      v61 = v24;
      v62 = v22;
      v25 = (v19 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
      v60 = *(v23 + 56);
      do
      {
        v26 = v61;
        v61(v11, v25, v5);
        v26(v8, v11, v5);
        sub_1DD5A5500(v8);
        (*(v23 - 8))(v11, v5);
        sub_1DD640958();
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        v25 += v60;
        --v20;
      }

      while (v20);
      v27 = v66;
      v15 = v58;
      v1 = v59;
      v18 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v28 = v15;
      v27 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD4BCBF0(v27, v15, &qword_1EE1638C0, 0x1E69CF638, &selRef_setMatchedTemplateIds_);
  }

  v29 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  v30 = v29;
  if (v15)
  {
    v31 = v1 + *(v29 + 24);
    if ((*(v31 + 29) & 1) == 0)
    {
      v32 = *(v31 + 28);
      v34 = *(v31 + 8);
      v33 = *(v31 + 16);
      v35 = *v31;
      v36 = v15;
      LOBYTE(v66) = BYTE4(v35) & 1;
      v65 = BYTE4(v34) & 1;
      v64 = BYTE4(v33) & 1;
      v63 = v32 & 1;
      v37 = sub_1DD4BCA34();
      [v36 setEuclidScoreStatistics_];
    }
  }

  if (v15)
  {
    v38 = v1 + v30[7];
    if (*(v38 + 8) != 1)
    {
      v39 = *(v38 + 28);
      v40 = *(v38 + 16);
      v41 = v15;
      LOBYTE(v66) = BYTE4(v40) & 1;
      v65 = v39 & 1;
      v42 = sub_1DD4BCAF4();
      [v41 setEuclidTrialParameters_];
    }
  }

  v43 = *(v1 + v30[8]);
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = (v43 + 32);
    do
    {
      if (v15)
      {
        v46 = *v45 == 1;
        if (*v45 == 2)
        {
          v46 = 2;
        }

        if (*v45 == 32)
        {
          v47 = 3;
        }

        else
        {
          v47 = v46;
        }

        [v15 addEuclidEntityTypeMatched_];
      }

      ++v45;
      --v44;
    }

    while (v44);
  }

  v48 = *(v1 + v30[9]);
  if (v48 != 2)
  {
    [v15 setIsLmePresent_];
  }

  if (v15)
  {
    v49 = *(v1 + v30[10]);
    v50 = *(v49 + 16);
    if (v50)
    {
      v66 = v18;
      v51 = v15;
      sub_1DD640988();
      v52 = (v49 + 32);
      do
      {
        v53 = *v52++;
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        sub_1DD640958();
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        --v50;
      }

      while (v50);
      v54 = v66;
    }

    else
    {
      v55 = v15;
      v54 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD4BCBF0(v54, v15, &qword_1EE163880, 0x1E696AD98, &selRef_setTokenWiseAsrConfidences_);
  }

  v56 = (v1 + v30[11]);
  if ((v56[1] & 1) == 0)
  {
    [v15 setNumRowsVectorDb_];
  }

  return v15;
}

void *sub_1DD4BCA34()
{
  OUTLINED_FUNCTION_0_80();
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEC40]) init];
  v6 = v4;
  if ((v3 & 0x100000000) != 0)
  {
    if ((v2 & 0x100000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    LODWORD(v5) = v3;
    [v4 setMinScore_];
    if ((v2 & 0x100000000) != 0)
    {
LABEL_3:
      if ((v1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      LODWORD(v5) = v1;
      [v6 setMedianScore_];
      if ((v0 & 0x100000000) != 0)
      {
        return v6;
      }

      goto LABEL_5;
    }
  }

  LODWORD(v5) = v2;
  [v6 setMaxScore_];
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v0 & 0x100000000) == 0)
  {
LABEL_5:
    LODWORD(v5) = v0;
    [v6 setMeanScore_];
  }

  return v6;
}

void *sub_1DD4BCAF4()
{
  OUTLINED_FUNCTION_0_80();
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEC50]) init];
  v6 = v4;
  if (v2 && v4)
  {
    v7 = v4;
    sub_1DD4BCB98(v3, v2, v7);
  }

  if ((v1 & 0x100000000) == 0)
  {
    LODWORD(v5) = v1;
    [v6 setEuclidScoreThreshold_];
  }

  if ((v0 & 0x100000000) == 0)
  {
    LODWORD(v5) = v0;
    [v6 setEuclidAsrConfidenceThreshold_];
  }

  return v6;
}

void sub_1DD4BCB98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setEuclidModelVersion_];
}

void sub_1DD4BCBF0(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1DD39638C(0, a3, a4);
  v7 = sub_1DD6400F8();

  [a2 *a5];
}

void sub_1DD4BCCAC(uint64_t a1)
{
  sub_1DD4BCED0(319, &qword_1EE165CC0, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DD4BCED0(319, &qword_1EE163950, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1DD4BCF30(319, &qword_1ECCDD900, &type metadata for EuclidScoreStatistics, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DD4BCF30(319, &qword_1ECCDD908, &type metadata for EuclidTrialParameters, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1DD4BCF30(319, &qword_1ECCDD910, &type metadata for EuclidEntityTypeMatched, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1DD4BCF30(319, &qword_1EE1638C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1DD4BCF30(319, &qword_1ECCDD918, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1DD4BCF30(319, &qword_1ECCDD920, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
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

void sub_1DD4BCED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DD63D0F8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DD4BCF30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1DD4BCF94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 29))
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

uint64_t sub_1DD4BCFE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1DD4BD068(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4BD088(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 29) = v3;
  return result;
}

uint64_t sub_1DD4BD114(uint64_t a1)
{
  result = type metadata accessor for InferenceEuclidDebugMetrics(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InferenceEuclidServiceMetrics(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[9])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t storeEnumTagSinglePayload for InferenceEuclidServiceMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD4BD26C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1DD4BD2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD4BD30C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    v2 = 0;
  }

  else
  {
    v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (v5 || (sub_1DD640CD8()) && *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6))
    {
      v2 = a1[56] ^ a2[56] ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1DD4BD3CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4533457273417369 && a2 == 0xEE0064656C62616ELL;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD66C4C0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001DD66C420 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD66C440 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001DD66C460 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001DD66C480 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ALL && 0x80000001DD66C4A0 == a2)
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

unint64_t sub_1DD4BD608(char a1)
{
  result = 0x4533457273417369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4BD6EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD948, &qword_1DD6526A8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4BDCB8();
  sub_1DD640EF8();
  v10[15] = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v1)
  {
    v10[14] = 1;
    sub_1DD640C18();
    v10[13] = 2;
    OUTLINED_FUNCTION_10();
    sub_1DD640C78();
    v10[12] = 3;
    OUTLINED_FUNCTION_10();
    sub_1DD640C78();
    v10[11] = 4;
    sub_1DD640C38();
    v10[10] = 5;
    sub_1DD640C38();
    v10[9] = 6;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1DD4BD8EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD938, &qword_1DD6526A0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4BDCB8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25[0] = 0;
  v6 = sub_1DD640B38();
  OUTLINED_FUNCTION_0_81(1);
  v7 = sub_1DD640B28();
  v9 = v8;
  v21 = v7;
  OUTLINED_FUNCTION_0_81(2);
  v20 = sub_1DD640B88();
  OUTLINED_FUNCTION_0_81(3);
  v19 = sub_1DD640B88();
  OUTLINED_FUNCTION_0_81(4);
  sub_1DD640B48();
  v11 = v10;
  OUTLINED_FUNCTION_0_81(5);
  sub_1DD640B48();
  v13 = v12;
  v33 = 6;
  v14 = sub_1DD640B38();
  v6 &= 1u;
  v15 = OUTLINED_FUNCTION_1_60();
  v16(v15);
  v14 &= 1u;
  LOBYTE(v22) = v6;
  *(&v22 + 1) = v21;
  *&v23 = v9;
  *(&v23 + 1) = v20;
  *v24 = v19;
  *&v24[8] = v11;
  *&v24[16] = v13;
  v24[24] = v14;
  sub_1DD3FAD78(&v22, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25[0] = v6;
  v26 = v21;
  v27 = v9;
  v28 = v20;
  v29 = v19;
  v30 = v11;
  v31 = v13;
  v32 = v14;
  result = sub_1DD44FFD8(v25);
  v18 = v23;
  *a2 = v22;
  a2[1] = v18;
  a2[2] = *v24;
  *(a2 + 41) = *&v24[9];
  return result;
}

uint64_t sub_1DD4BDBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4BD3CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4BDBD8(uint64_t a1)
{
  v2 = sub_1DD4BDCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4BDC14(uint64_t a1)
{
  v2 = sub_1DD4BDCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD4BDC50@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD4BD8EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1DD4BDCB8()
{
  result = qword_1ECCDD940;
  if (!qword_1ECCDD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD940);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for E3TrialFactors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4BDDEC()
{
  result = qword_1ECCDD950;
  if (!qword_1ECCDD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD950);
  }

  return result;
}

unint64_t sub_1DD4BDE44()
{
  result = qword_1ECCDD958;
  if (!qword_1ECCDD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD958);
  }

  return result;
}

unint64_t sub_1DD4BDE9C()
{
  result = qword_1ECCDD960;
  if (!qword_1ECCDD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD960);
  }

  return result;
}

uint64_t type metadata accessor for EmojiQueryExpander(uint64_t a1)
{
  result = qword_1EE1623D0;
  if (!qword_1EE1623D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4BDF64(uint64_t a1)
{
  result = sub_1DD63D168();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StringTokenizer(319);
    if (v3 <= 0x3F)
    {
      result = sub_1DD39638C(319, &qword_1EE1601D8, 0x1E699BAD0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_1DD4BE010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DD63D168();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  Expander = type metadata accessor for EmojiQueryExpander(0);
  sub_1DD4BE2A4(a2, a3 + *(Expander + 20));
  sub_1DD39638C(0, &qword_1EE1601D8, 0x1E699BAD0);
  v9 = sub_1DD63D118();
  result = sub_1DD4BE624(v9, v10);
  if (result)
  {
    v12 = result;
    sub_1DD4BF460(a2);
    result = (*(v7 + 8))(a1, v6);
    *(a3 + *(Expander + 24)) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD4BE138(void *__src)
{
  v2 = v1;
  memcpy(v12, __src, sizeof(v12));
  v3 = *(type metadata accessor for EmojiQueryExpander(0) + 20);
  v11[3] = type metadata accessor for StringTokenizer(0);
  v11[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1DD4BE2A4(v2 + v3, boxed_opaque_existential_1);
  sub_1DD41E258();
  sub_1DD582E38();
  v6 = v5;

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (*(v6 + 16))
  {
    sub_1DD4BE694(v6);

    MEMORY[0x1EEE9AC00](v7);
    sub_1DD604D3C();
    v9 = v8;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1DD4BE2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringTokenizer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4BE308(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (sub_1DD4F9BB8(a1) & 1) != 0 || (sub_1DD63D118(), sub_1DD3B52B8(), v4 = sub_1DD3B530C(), v11 = OUTLINED_FUNCTION_1_61(v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v9, v10, 24938), , (v11))
  {
    v12 = 0;
  }

  else
  {
    v31 = sub_1DD63D118();
    v19 = OUTLINED_FUNCTION_1_61(v31, MEMORY[0x1E69E6158], v13, v14, v15, v16, v17, v18, 28523);

    v12 = v19 ^ 1;
  }

  type metadata accessor for EmojiQueryExpander(0);
  v20 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v2, v3, v12 & 1, 1);
  if (*(v20 + 16) && (v21 = sub_1DD4BE694(v20), , (v22 = *(v21 + 16)) != 0))
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1DD42BA28(0);
    v23 = v32;
    v24 = (v21 + 40);
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v27 = *(v32 + 16);
      v28 = *(v32 + 24);

      if (v27 >= v28 >> 1)
      {
        sub_1DD42BA28(v28 > 1);
      }

      *(v32 + 16) = v27 + 1;
      v29 = v32 + 16 * v27;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v24 += 2;
      --v22;
    }

    while (v22);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v23;
}

unint64_t sub_1DD4BE4F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1DD4BE578(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1DD4BE624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1DD63FDA8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() emojiLocaleDataWithLocaleIdentifier_];

  return v3;
}

int64_t sub_1DD4BE694(uint64_t a1)
{
  v113 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v99 = a1 + 32;
    v106 = MEMORY[0x1E69E7CC0];
    v104 = (2 * v2) | 1;
    v96 = *(a1 + 16);
    do
    {
      v5 = v4;
      v98 = (v4 + 1);
      v102 = v4;
      v1 = v104;
      do
      {
        if (v2 <= v5)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD968, &qword_1DD6527F0);
        sub_1DD4BF308();
        v105 = OUTLINED_FUNCTION_0_82();
        v7 = v6;
        v8 = OUTLINED_FUNCTION_0_82();
        v10 = v9;
        aBlock = a1;
        v108 = v99;
        v109 = v2;
        v110 = v104;
        v11 = OUTLINED_FUNCTION_0_82();
        v13 = v12;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = v106;
        }

        else
        {
          sub_1DD3BF844(0, *(v106 + 16) + 1, 1, v106);
          v14 = v18;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1DD3BF844(v15 > 1, v16 + 1, 1, v14);
          v14 = v19;
        }

        *(v14 + 16) = v16 + 1;
        v106 = v14;
        v17 = (v14 + 48 * v16);
        v17[4] = v105;
        v17[5] = v7;
        v17[6] = v8;
        v17[7] = v10;
        v17[8] = v11;
        v17[9] = v13;
        v1 -= 2;
        v2 = (v2 - 1);
        v5 = v102;
      }

      while (v2);
      v2 = v96;
      v4 = v98;
    }

    while (v98 != v96);
  }

  else
  {
    v106 = MEMORY[0x1E69E7CC0];
  }

  v82 = *(v106 + 16);
  if (!v82)
  {
    goto LABEL_47;
  }

  Expander = type metadata accessor for EmojiQueryExpander(0);
  v21 = v106;
  v22 = 0;
  v81 = *(v94 + *(Expander + 24));
  v79 = &v109;
  v80 = v106 + 32;
  v23 = MEMORY[0x1E69E6158];
  while (2)
  {
    if (v22 < *(v21 + 16))
    {
      v24 = (v80 + 48 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[4];
      v30 = v24[5];
      v91 = v29;
      v92 = *v24;
      v84 = v22 + 1;
      v31 = swift_allocObject();
      *(v31 + 16) = MEMORY[0x1E69E7CC8];
      swift_bridgeObjectRetain_n();

      v32 = sub_1DD63FF08();
      v33 = swift_allocObject();
      v33[2] = v26;
      v33[3] = v25;
      v33[4] = v27;
      v33[5] = v28;
      v33[6] = v29;
      v33[7] = v30;
      v33[8] = v31;
      v111 = sub_1DD4BF410;
      v112 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v108 = 1107296256;
      v109 = sub_1DD4BF0E0;
      v110 = &block_descriptor_6;
      v34 = _Block_copy(&aBlock);

      v83 = v31;

      v35 = v32;
      v36 = v27;
      sub_1DD4BF36C(v27, v28, 0, v35, 0, 1, v34, v81);
      _Block_release(v34);
      swift_beginAccess();
      v37 = *(v31 + 16);
      v38 = v37 + 64;
      v39 = 1 << *(v37 + 32);
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(*(v31 + 16) + 64);
      v42 = HIBYTE(v25) & 0xF;
      v89 = v30;
      v90 = v25;
      v43 = (v25 & 0x2000000000000000) == 0;
      v1 = (v39 + 63) >> 6;
      if (v43)
      {
        v44 = v92 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      v45 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v45 = v91 & 0xFFFFFFFFFFFFLL;
      }

      v86 = v45;
      v87 = v44;

      v46 = 0;
      v88 = v1;
      v97 = v37;
      v85 = v37 + 64;
      while (v41)
      {
        v47 = v46;
LABEL_32:
        v48 = *(*(v37 + 56) + 8 * (__clz(__rbit64(v41)) | (v47 << 6)));
        aBlock = v36;
        v108 = v28;
        v49 = sub_1DD3B7F10();

        if (sub_1DD6406D8())
        {
          v93 = v47;
          v95 = v48;
          if (v87)
          {
            aBlock = v92;
            v108 = v90;

            MEMORY[0x1E12B2260](32, 0xE100000000000000);
            v50 = aBlock;
            v51 = v108;
          }

          else
          {
            v51 = v90;

            v50 = v92;
          }

          v37 = v97;
          v101 = v50;
          if (v86)
          {
            aBlock = 32;
            v108 = 0xE100000000000000;
            MEMORY[0x1E12B2260](v91, v89);
            v53 = aBlock;
            v52 = v108;
          }

          else
          {

            v53 = v91;
          }

          v54 = *(v48 + 16);
          if (v54)
          {
            v55 = v48 + 40;
            v103 = v52;
            v100 = v53;
            do
            {
              aBlock = v36;
              v108 = v28;
              v77 = v23;
              v56 = v28;
              v57 = sub_1DD640678();
              v58 = v36;
              v59 = v23;
              v61 = v60;
              aBlock = v101;
              v108 = v51;

              v62 = v57;
              v28 = v56;
              MEMORY[0x1E12B2260](v62, v61);

              MEMORY[0x1E12B2260](v100, v103);
              v23 = v59;
              v36 = v58;

              sub_1DD56CE00(&aBlock, aBlock, v108, v63, v64, v65, v66, v67, v77, v49, v49, v49, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v95, v97);

              v55 += 16;
              --v54;
            }

            while (v54);

            v46 = v93;
            v37 = v97;
            v38 = v85;
          }

          else
          {

            v46 = v93;
          }

          v1 = v88;
          v41 &= v41 - 1;
        }

        else
        {

          v46 = v47;
          v37 = v97;
          v41 &= v41 - 1;
        }
      }

      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v47 >= v1)
        {
          break;
        }

        v41 = *(v38 + 8 * v47);
        ++v46;
        if (v41)
        {
          goto LABEL_32;
        }
      }

      v22 = v84;
      v21 = v106;
      if (v84 != v82)
      {
        continue;
      }

LABEL_47:

      v1 = sub_1DD594058(v113);
      if (qword_1EE165FB0 == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    break;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  swift_once();
LABEL_48:
  v68 = sub_1DD63F9F8();
  __swift_project_value_buffer(v68, qword_1EE16F068);

  v69 = sub_1DD63F9D8();
  v70 = sub_1DD640368();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock = v72;
    *v71 = 136315138;
    v73 = MEMORY[0x1E12B2430](v1, MEMORY[0x1E69E6158]);
    v75 = sub_1DD39565C(v73, v74, &aBlock);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_1DD38D000, v69, v70, "Expansions generated by the EmojiResolver: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x1E12B3DA0](v72, -1, -1);
    MEMORY[0x1E12B3DA0](v71, -1, -1);
  }

  return v1;
}

void sub_1DD4BEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DD640318();
  if ((v8 & 1) == 0)
  {
    v9 = sub_1DD640058();
    v10 = MEMORY[0x1E12B2190](v9);
    v12 = v11;

    v13 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = sub_1DD3CC020();
    v40 = v10;
    if (v15)
    {
      v16 = v15;
      v17 = v15 & ~(v15 >> 63);

      sub_1DD42A2D4(0, v17, 0, v18, v19, v20, v21);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v39 = a6;
        v22 = 0;
        v23 = v13;
        while (1)
        {
          v24 = (v14 & 0xC000000000000001) != 0 ? MEMORY[0x1E12B2C10](v22, v14) : *(v14 + 8 * v22 + 32);
          v25 = v24;
          v26 = [v25 string];
          if (v26)
          {
            v27 = v26;
            v28 = sub_1DD63FDD8();
            v30 = v29;
          }

          else
          {
            v28 = 0;
            v30 = 0;
          }

          if (!v30)
          {
            break;
          }

          v36 = *(v23 + 16);
          v35 = *(v23 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1DD42A2D4(v35 > 1, v36 + 1, 1, v31, v32, v33, v34);
          }

          ++v22;
          *(v23 + 16) = v36 + 1;
          v37 = v23 + 16 * v36;
          *(v37 + 32) = v28;
          *(v37 + 40) = v30;
          if (v16 == v22)
          {

            a6 = v39;
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
LABEL_20:
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a6 + 16);
      sub_1DD4001C0(v23, v40, v12, isUniquelyReferenced_nonNull_native);
      *(a6 + 16) = v41;

      swift_endAccess();
    }
  }
}

uint64_t sub_1DD4BF0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1DD39638C(0, &qword_1ECCDD978, 0x1E699BAF8);
    v8 = sub_1DD640118();
  }

  v9(v8, a3, a4, a5);
}

uint64_t sub_1DD4BF18C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1DD4BF298(a2, a3);

  a3[3] = v5;
  a3[4] = v4;

  a3[5] = 0;
  a3[6] = 0xE000000000000000;

  a3[7] = 0;
  a3[8] = 0xE000000000000000;

  a3[9] = 0;
  a3[10] = 0xE000000000000000;

  a3[11] = 0;
  a3[12] = 0xE000000000000000;

  a3[13] = 0;
  a3[14] = 0xE000000000000000;

  a3[15] = 0;
  a3[16] = 0xE000000000000000;

  a3[17] = 0;
  a3[18] = 0xE000000000000000;

  a3[19] = 0;
  a3[20] = 0xE000000000000000;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  result = type metadata accessor for ContactResolver.SignalSet(0);
  v6[*(result + 156)] = 1;
  return result;
}

uint64_t sub_1DD4BF298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD4BF308()
{
  result = qword_1ECCDD970;
  if (!qword_1ECCDD970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD968, &qword_1DD6527F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD970);
  }

  return result;
}

void sub_1DD4BF36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_1DD63FDA8();

  [a8 enumerateSearchResultsInText:v14 range:a3 options:a4 searchType:a5 usingBlock:{a6, a7}];
}

void sub_1DD4BF410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  v8[0] = *(v4 + 16);
  v8[1] = v5;
  v9 = v6;
  v10 = v7;
  sub_1DD4BEEB8(a1, a2, a3, a4, v8, *(v4 + 64));
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD4BF460(uint64_t a1)
{
  v2 = type metadata accessor for StringTokenizer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateTime.Date.Holiday.Emotion.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4BF4E8()
{
  result = qword_1ECCDD980;
  if (!qword_1ECCDD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD980);
  }

  return result;
}

uint64_t sub_1DD4BF544@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.Emotion.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s7EmotionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4BF6F8()
{
  result = qword_1ECCDD988;
  if (!qword_1ECCDD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD988);
  }

  return result;
}

uint64_t sub_1DD4BF74C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v17 = 6;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 0;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(0, 0, 0, 0, 0, 0, v1, v2, v13, v15);
  type metadata accessor for DateTime();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_1_62();
  DateTime.init(withDate:time:)(v3, v4);
  v17 = 5;
  v5 = swift_allocObject();
  v6 = DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 1;
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(11, 0, 59, 0, 59, 0, v7, v8, v14, v16);
  OUTLINED_FUNCTION_1_11();
  v9 = DateTime.init(withDate:time:)(v6, v5);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_1_62();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v10, v11);
  OUTLINED_FUNCTION_1_11();
  *(inited + 56) = DateTime.init(occurringIn:)(v9);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4BF938(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
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

uint64_t sub_1DD4BF978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

unint64_t sub_1DD4BF9D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD000000000000010;
      v11 = OUTLINED_FUNCTION_1_63();
      MEMORY[0x1E12B2260](v11);
      MEMORY[0x1E12B2260](0x6C6F63206E692060, 0xED000020736E6D75);
      v12 = MEMORY[0x1E12B2430](a3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12B2260](v12);

      return v13;
    case 2:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD000000000000012;
      v7 = OUTLINED_FUNCTION_1_63();
      MEMORY[0x1E12B2260](v7);
      MEMORY[0x1E12B2260](0xD000000000000018, 0x80000001DD66DEC0);
      v8 = MEMORY[0x1E12B2430](a3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12B2260](v8);

      v5 = 41;
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD000000000000022;
      v9 = OUTLINED_FUNCTION_1_63();
      MEMORY[0x1E12B2260](v9);
      v5 = 96;
LABEL_7:
      v6 = 0xE100000000000000;
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD00000000000001ALL;
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      v13 = 0x2068637573206F4ELL;
LABEL_4:
      v5 = OUTLINED_FUNCTION_1_63();
LABEL_8:
      MEMORY[0x1E12B2260](v5, v6);
      return v13;
  }
}

uint64_t sub_1DD4BFC18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD652A50;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v42 = 1;
  v41 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_85();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 10, 0, 0, v5);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  v6 = OUTLINED_FUNCTION_0_85();
  *(inited + 88) = OUTLINED_FUNCTION_2_6(v6, v7, v8, v9, v10, v11, v12, v13);
  *(inited + 96) = xmmword_1DD652A60;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  *(inited + 120) = OUTLINED_FUNCTION_2_6(7, 0, 0, &v42, v14, v15, v16, &v41);
  *(inited + 128) = xmmword_1DD643600;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_3();
  v17 = OUTLINED_FUNCTION_0_85();
  *(inited + 152) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v17, v18, v19, v20, 8, 59, 59, v21);
  *(inited + 160) = xmmword_1DD643620;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_3();
  v22 = OUTLINED_FUNCTION_0_85();
  *(inited + 184) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v22, v23, v24, v25, 10, 0, 0, v26);
  *(inited + 192) = xmmword_1DD643630;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_1_3();
  v27 = OUTLINED_FUNCTION_0_85();
  *(inited + 216) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v27, v28, v29, v30, 7, 0, 0, v31);
  *(inited + 224) = xmmword_1DD643640;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_1_3();
  *(inited + 248) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(2, 0, 0, &v42, 6, 59, 59, &v41);
  *(inited + 256) = xmmword_1DD643650;
  *(inited + 272) = 0;
  OUTLINED_FUNCTION_1_3();
  v32 = OUTLINED_FUNCTION_0_85();
  *(inited + 280) = OUTLINED_FUNCTION_2_6(v32, v33, v34, v35, v36, v37, v38, v39);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void *sub_1DD4BFE14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1DD63D798();
  swift_allocObject();
  v2[4] = sub_1DD63D788();
  return v2;
}

void sub_1DD4BFE5C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = 0;
  v4 = *(a1 + 24);
  v5 = *(v4 + 16);
  v6 = (v4 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v3)
    {
      v14 = *a1;
      if (*a1)
      {
        v15 = v14;
        v16 = sub_1DD640558();

        if ((v16 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v17 = *(a1 + *(type metadata accessor for CommsAppResolutionFeature(0) + 44));
        if (v17 == 2 || (v17 & 1) == 0)
        {
LABEL_15:
          CommsAppResolutionFeature.isMessage.getter();
          if ((v20 & 1) == 0)
          {
            v23 = 0;
            goto LABEL_24;
          }

          if (v14)
          {
            v21 = v14;
            v22 = sub_1DD640548();

            if ((v22 & 1) == 0)
            {
LABEL_23:
              v23 = 0;
LABEL_24:
              v25 = sub_1DD63D778();
              v27 = v26;
              if (v26)
              {
                v28 = v25;
                MEMORY[0x1EEE9AC00](v25);
                v29 = sub_1DD450388();

                if (!v29)
                {
                  if (sub_1DD63FE58() == 0xD000000000000012 && 0x80000001DD66A260 == v30)
                  {
                  }

                  else
                  {
                    v32 = sub_1DD640CD8();

                    if (((v23 | v32) & 1) == 0)
                    {

                      v28 = 0;
                      v27 = 0;
LABEL_33:
                      v19 = 3;
LABEL_36:
                      v18 = a2;
                      *a2 = v28;
                      a2[1] = v27;
                      goto LABEL_37;
                    }
                  }
                }

                v19 = 0;
                goto LABEL_36;
              }

              v28 = 0;
              goto LABEL_33;
            }
          }

          else
          {
            v24 = *(a1 + *(type metadata accessor for CommsAppResolutionFeature(0) + 48));
            if (v24 == 2 || (v24 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v23 = 1;
          goto LABEL_24;
        }
      }

      v18 = a2;
      *a2 = 0;
      a2[1] = 0;
      v19 = 3;
LABEL_37:
      *(v18 + 16) = v19;
      return;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BE2A4();
      v7 = v12;
    }

    v10 = *(v7 + 16);
    if (v10 >= *(v7 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v7 = v13;
    }

    *(v7 + 16) = v10 + 1;
    v11 = v7 + 16 * v10;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    v6 += 3;
    ++v3;
  }

  __break(1u);
}

uint64_t FallbackAppProvider.deinit()
{

  return v0;
}

uint64_t FallbackAppProvider.__deallocating_deinit()
{
  FallbackAppProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1DD4C01D8()
{
  v91[3] = &type metadata for ContactFeatures;
  v91[4] = sub_1DD3E6184();
  LOBYTE(v91[0]) = 0;
  v0 = sub_1DD63DA48();
  v1 = OUTLINED_FUNCTION_5_48(v91);
  v9 = OUTLINED_FUNCTION_3_45(v1, v2, v3, v4, v5, v6, v7, v8, v83, v91[0]);
  v10 = OUTLINED_FUNCTION_5_48(v91);
  v18 = OUTLINED_FUNCTION_3_45(v10, v11, v12, v13, v14, v15, v16, v17, v84, v91[0]);
  v19 = OUTLINED_FUNCTION_5_48(v91);
  v27 = OUTLINED_FUNCTION_3_45(v19, v20, v21, v22, v23, v24, v25, v26, v85, v91[0]);
  v28 = OUTLINED_FUNCTION_5_48(v91);
  v36 = OUTLINED_FUNCTION_3_45(v28, v29, v30, v31, v32, v33, v34, v35, v86, v91[0]);
  v37 = OUTLINED_FUNCTION_5_48(v91);
  v45 = OUTLINED_FUNCTION_3_45(v37, v38, v39, v40, v41, v42, v43, v44, v87, v91[0]);
  v46 = OUTLINED_FUNCTION_5_48(v91);
  v54 = OUTLINED_FUNCTION_3_45(v46, v47, v48, v49, v50, v51, v52, v53, v88, v91[0]);
  v55 = OUTLINED_FUNCTION_5_48(v91);
  v63 = OUTLINED_FUNCTION_3_45(v55, v56, v57, v58, v59, v60, v61, v62, v89, v91[0]);
  v64 = OUTLINED_FUNCTION_5_48(v91);
  OUTLINED_FUNCTION_3_45(v64, v65, v66, v67, v68, v69, v70, v71, v90, v91[0]);
  __swift_destroy_boxed_opaque_existential_1(v91);
  v72 = 256;
  if ((v9 & 1) == 0)
  {
    v72 = 0;
  }

  v73 = v72 & 0xFFFFFFFFFFFFFFFELL | v0 & 1;
  v74 = 0x10000;
  if ((v18 & 1) == 0)
  {
    v74 = 0;
  }

  v75 = 0x1000000;
  if ((v27 & 1) == 0)
  {
    v75 = 0;
  }

  v76 = v73 | v74 | v75;
  v77 = 0x100000000;
  if ((v36 & 1) == 0)
  {
    v77 = 0;
  }

  v78 = 0x10000000000;
  if ((v45 & 1) == 0)
  {
    v78 = 0;
  }

  v79 = 0x1000000000000;
  if ((v54 & 1) == 0)
  {
    v79 = 0;
  }

  v80 = v77 | v78;
  v81 = 0x100000000000000;
  if ((v63 & 1) == 0)
  {
    v81 = 0;
  }

  return v76 | v80 | v79 | v81;
}

uint64_t FeatureFlagsKey<>.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  LOBYTE(v3) = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

uint64_t ContactFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

unint64_t sub_1DD4C062C()
{
  result = qword_1ECCDD990;
  if (!qword_1ECCDD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD990);
  }

  return result;
}

unint64_t sub_1DD4C0684()
{
  result = qword_1ECCDD998;
  if (!qword_1ECCDD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD998);
  }

  return result;
}

unint64_t sub_1DD4C06DC()
{
  result = qword_1ECCDD9A0;
  if (!qword_1ECCDD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9A0);
  }

  return result;
}

unint64_t sub_1DD4C0734()
{
  result = qword_1ECCDD9A8;
  if (!qword_1ECCDD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9A8);
  }

  return result;
}

_BYTE *sub_1DD4C07C4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ContactFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DD4C096C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[9])
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

uint64_t sub_1DD4C09B8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_45(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, char a3)
{

  return sub_1DD63DA48();
}

char *sub_1DD4C0A54(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v53 = a4;
  v49 = a1;
  v50 = a3;
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v47 - v15;
  v51 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v47 - v23;
  v25 = OBJC_IVAR____TtC13SiriInference11FirstAdvent_calendar;
  v26 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_7();
  v28 = *(v27 + 16);
  v47[2] = v25;
  v48 = v4;
  v28(v16, v4 + v25, v26);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v26);
  v29 = sub_1DD63D328();
  OUTLINED_FUNCTION_7();
  (*(v30 + 16))(v12, v53, v29);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v29);
  sub_1DD63CB68(v16, v12, 0, 1, v50, 0, 11, 0, 0, 1, 0);
  v50 = v24;
  sub_1DD63CA68();
  v31 = sub_1DD63D078();
  if (__swift_getEnumTagSinglePayload(v8, 1, v31) == 1)
  {
    sub_1DD4AF0C8(v8);
    v32 = sub_1DD4C1590();
    OUTLINED_FUNCTION_4_42(&type metadata for FirstAdventError, v32);
    *v33 = v52;
    *(v33 + 8) = 0;
    swift_willThrow();
    (*(v18 + 8))(v50, v51);
  }

  else
  {
    v34 = *(v31 - 8);
    v35 = v49;
    (*(v34 + 32))(v49, v8, v31);
    sub_1DD63D1E8();
    v36 = sub_1DD63CAB8();
    v38 = v37;
    v39 = *(v18 + 8);
    v40 = v51;
    v39(v21, v51);
    if (v38)
    {
      v41 = sub_1DD4C1590();
      OUTLINED_FUNCTION_4_42(&type metadata for FirstAdventError, v41);
      *v42 = 0;
      v43 = 2;
    }

    else
    {
      v44 = sub_1DD4C61E4(v36);
      if (v44 != 12)
      {
        v21 = v44;
        v39(v50, v40);
        return v21;
      }

      v45 = sub_1DD4C1590();
      OUTLINED_FUNCTION_4_42(&type metadata for FirstAdventError, v45);
      *v42 = v36;
      v43 = 1;
    }

    *(v42 + 8) = v43;
    swift_willThrow();
    (*(v34 + 8))(v35, v31);
    v39(v50, v40);
  }

  return v21;
}

char *sub_1DD4C0F1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v52 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v50 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v51 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v24 = a1;
  v25 = a1;
  v26 = a2;
  v27 = v53;
  result = sub_1DD4C0A54(&v43 - v22, 5, v25, a2);
  if (!v27)
  {
    v43 = v17;
    v44 = v12;
    v30 = v51;
    v29 = v52;
    v46 = v13;
    v47 = v3;
    v45 = v26;
    if (result == 10)
    {
      v53 = 0;
      v31 = v23;
    }

    else
    {
      sub_1DD4C0A54(v20, 4, v24, v45);
      v32 = v46;
      v31 = v23;
      v53 = 0;
      (*(v30 + 8))(v23, v46);
      (*(v30 + 32))(v23, v20, v32);
    }

    v33 = v49;
    v34 = v50;
    (*(v50 + 104))(v49, *MEMORY[0x1E6969A48], v29);
    v35 = v44;
    sub_1DD63D268();
    (*(v34 + 8))(v33, v29);
    v36 = v46;
    if (__swift_getEnumTagSinglePayload(v35, 1, v46) == 1)
    {
      sub_1DD4AF0C8(v35);
      v37 = sub_1DD4C1590();
      v38 = OUTLINED_FUNCTION_4_42(&type metadata for FirstAdventError, v37);
      *v39 = 1;
      *(v39 + 8) = 2;
      v53 = v38;
      swift_willThrow();
      return (*(v30 + 8))(v31, v36);
    }

    else
    {
      v40 = v43;
      (*(v30 + 32))(v43, v35, v36);
      v41 = sub_1DD4ED3B4();
      sub_1DD3D856C(v41, v48);

      v42 = *(v30 + 8);
      v42(v40, v36);
      return (v42)(v31, v36);
    }
  }

  return result;
}

uint64_t sub_1DD4C12E4()
{
  v1 = OBJC_IVAR____TtC13SiriInference11FirstAdvent_calendar;
  sub_1DD63D2D8();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FirstAdvent(uint64_t a1)
{
  result = qword_1ECCDD9B0;
  if (!qword_1ECCDD9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4C13CC(uint64_t a1)
{
  result = sub_1DD63D2D8();
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

uint64_t sub_1DD4C145C()
{
  v1 = sub_1DD63D188();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E6969868], v1, v5);
  sub_1DD63D198();
  (*(v3 + 8))(v7, v1);
  return v0;
}

unint64_t sub_1DD4C1590()
{
  result = qword_1ECCDD9C0;
  if (!qword_1ECCDD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FirstAdventError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for FirstAdventError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1DD4C1668(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DD4C1680(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PLUSTrialFactors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ForcePromptingStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL sub_1DD4C181C(double a1)
{
  sub_1DD4C193C(0.0, 1.0);
  v3 = v2;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F068);
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240448;
    *(v7 + 4) = v3 < a1;
    *(v7 + 8) = 2050;
    *(v7 + 10) = a1;
    _os_log_impl(&dword_1DD38D000, v5, v6, "force prompt: %{BOOL,public}d [rate=%{public}f]", v7, 0x12u);
    MEMORY[0x1E12B3DA0](v7, -1, -1);
  }

  return v3 < a1;
}

void sub_1DD4C193C(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1E12B3DC0](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_1DD4C193C(a1, a2);
  }
}

uint64_t sub_1DD4C19E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_1_65(9, v1, v2, v3, v4, v5, v6, v7);
  *(inited + 64) = xmmword_1DD652F10;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_1_65(10, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 96) = xmmword_1DD651820;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(12, 0, 0, v15, 2, 0, 0, v16);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void sub_1DD4C1B10()
{
  sub_1DD63D018();
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t DateTime.Date.Holiday.Frequency.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4C1B94()
{
  result = qword_1ECCDD9C8;
  if (!qword_1ECCDD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9C8);
  }

  return result;
}

uint64_t sub_1DD4C1BF0@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.Frequency.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s9FrequencyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4C1DA4()
{
  result = qword_1ECCDD9D0;
  if (!qword_1ECCDD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9D0);
  }

  return result;
}

uint64_t sub_1DD4C1DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_1DD63D188();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E6969868], v10, v20);
  sub_1DD63D198();
  (*(v12 + 8))(v15, v10);
  v23 = (a1 / 100 + a1 / -400 + 19 * (a1 % 19) + (a1 / 100 + (a1 / 100 + 8) / -25 + 1) / -3 + 15) % 30;
  v24 = 2 * (a1 / 100 % 4 + a1 % 100 / 4) + (4 * (a1 % 100 / 4) - a1 % 100 + 32);
  LOBYTE(v23) = v24 - 7 * ((v24 - v23) / 7) - 7 * ((a1 % 19 + 11 * v23 + 22 * ((v24 - v23) % 7)) / 451) + 114;
  v25 = v23 / 0x1Fu;
  v29 = (v23 % 0x1Fu + 1);
  (*(v18 + 16))(v9, v22, v16);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  v26 = sub_1DD63D328();
  (*(*(v26 - 8) + 16))(v6, v30, v26);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v26);
  sub_1DD63CB68(v9, v6, 0, 1, a1, 0, v25, 0, v29, 0, 0);
  return (*(v18 + 8))(v22, v16);
}

uint64_t sub_1DD4C2260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v24 = 1;
  v23 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(4, 0, 0, &v24, 6, 0, 0, &v23);
  *(inited + 64) = xmmword_1DD6530A0;
  *(inited + 80) = 0;
  v1 = OUTLINED_FUNCTION_1_3();
  *(inited + 88) = OUTLINED_FUNCTION_0_87(v1, v2, v3, v4, v5, v6, v7, v8, v18, *v20, *&v20[4], v23, v24);
  *(inited + 96) = xmmword_1DD643620;
  *(inited + 112) = 0;
  v9 = OUTLINED_FUNCTION_1_3();
  *(inited + 120) = OUTLINED_FUNCTION_0_87(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v22, v23, v24);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4C2378(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC798();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD4C3B80(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD4C23E4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v14 = a1[2];
  if (v14)
  {
    v30[1] = a2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1DD42BD28(0, v14, 0);
    v15 = v35;
    v16 = *(v6 + 80);
    v30[0] = a1;
    v17 = a1 + ((v16 + 32) & ~v16);
    v31 = *(v6 + 72);
    v33 = v10;
    v34 = v4;
    v32 = v13;
    while (1)
    {
      sub_1DD4BC018(v17, v13);
      sub_1DD4BC018(v13, v10);
      sub_1DD63CF48();
      v19 = round(v18);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v19 <= -9.22337204e18)
      {
        goto LABEL_13;
      }

      if (v19 >= 9.22337204e18)
      {
        goto LABEL_14;
      }

      sub_1DD4BC07C(v13);
      a1 = *(v10 + *(v4 + 32));
      v20 = (v10 + *(v4 + 40));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      sub_1DD4BC07C(v10);
      v35 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_1_0(v24);
        sub_1DD42BD28(v27, v25 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v25 + 1;
      v26 = v15 + 40 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = a1;
      *(v26 + 48) = v21;
      *(v26 + 56) = v22;
      *(v26 + 64) = v23;
      v13 = v32;
      v17 += v31;
      --v14;
      v10 = v33;
      v4 = v34;
      if (!v14)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v35 = v15;

    sub_1DD4C2378(&v35);

    v28 = v35;
    sub_1DD4C2678(v35);
    return v28;
  }

  return result;
}

void *sub_1DD4C2678(uint64_t a1)
{
  v2 = sub_1DD63FC88();
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 40);
  v5 = 1;
  while (1)
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    if (v2[2])
    {
      sub_1DD3FEB74(*v4);
      if (v8)
      {
        goto LABEL_14;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1DD3FEB74(v7);
    if (__OFADD__(v2[2], (v10 & 1) == 0))
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9F0, &qword_1DD6530C8);
    if (sub_1DD640A08())
    {
      v13 = sub_1DD3FEB74(v7);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_19;
      }

      v11 = v13;
    }

    if (v12)
    {
      v15 = v2[7] + 24 * v11;
      *v15 = v7;
      *(v15 + 8) = v6;
      *(v15 + 16) = v5;
    }

    else
    {
      v2[(v11 >> 6) + 8] |= 1 << v11;
      *(v2[6] + 4 * v11) = v7;
      v16 = v2[7] + 24 * v11;
      *v16 = v7;
      *(v16 + 8) = v6;
      *(v16 + 16) = v5;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_18;
      }

      v2[2] = v19;
    }

    v18 = __OFADD__(v5++, 1);
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 += 10;
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

double sub_1DD4C2830(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v4 = (a2 + 64);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(a2 + 16);
  do
  {
    if (*(v4 - 6) == a1)
    {
      v7 = *(v4 - 4);
      v15 = *(v4 - 1);
      v8 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_42();
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = OUTLINED_FUNCTION_1_0(v9);
        sub_1DD42BD28(v12, v10 + 1, 1);
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 40 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = a1;
      *(v11 + 48) = v15;
      *(v11 + 64) = v8;
    }

    v4 += 5;
    --v6;
  }

  while (v6);
  v13 = *(v5 + 16);

  *&result = v13 / v2;
  return result;
}

uint64_t sub_1DD4C2940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return -1;
  }

  v6 = sub_1DD3FEB74(a1);
  if ((v7 & 1) == 0)
  {
    return -1;
  }

  v8 = *(*(a4 + 56) + 24 * v6 + 8);
  result = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
    __break(1u);
    return -1;
  }

  return result;
}

uint64_t sub_1DD4C2994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return -1;
  }

  v5 = sub_1DD3FEB74(a1);
  if (v6)
  {
    return *(*(a4 + 56) + 24 * v5 + 16);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1DD4C29E8(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  for (i = (a2 + 40); ; i += 10)
  {
    if (v3 == v2)
    {
      return -1;
    }

    if (*i == result)
    {
      break;
    }

    ++v2;
  }

  v5 = 0;
  v6 = *(i - 1);
  v7 = (a2 + 40);
  while (v3 != v5)
  {
    if (*(v7 - 1) < v6 && *v7 != result)
    {
      return v5 - v2;
    }

    ++v5;
    v7 += 10;
    if (v3 == v5)
    {
      v5 = *(a2 + 16);
      return v5 - v2;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DD4C2A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D818();
  OUTLINED_FUNCTION_0();
  v59 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v58 = a2;
  v66 = a1;
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v71 = MEMORY[0x1E69E7CC0];
    sub_1DD42BCF4(0, v8, 0);
    v9 = v71;
    v10 = v71[2];
    v11 = (a2 + 40);
    do
    {
      v13 = *v11;
      v11 += 10;
      v12 = v13;
      v71 = v9;
      v14 = *(v9 + 24);
      if (v10 >= v14 >> 1)
      {
        v15 = OUTLINED_FUNCTION_1_0(v14);
        sub_1DD42BCF4(v15, v10 + 1, 1);
        v9 = v71;
      }

      *(v9 + 16) = v10 + 1;
      *(v9 + 4 * v10++ + 32) = v12;
      --v8;
    }

    while (v8);
  }

  v16 = sub_1DD418E9C(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9E0, &qword_1DD6530B8);
  v17 = sub_1DD63FC88();
  v18 = v16 + 56;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 56);
  v22 = (v19 + 63) >> 6;
  v67 = v59 + 16;
  v56 = (v59 + 8);

  v23 = 0;
  v60 = v22;
  v61 = v16 + 56;
  v57 = v16;
  if (v21)
  {
    while (1)
    {
      v65 = v17;
LABEL_14:
      v63 = v21;
      v64 = v23;
      v25 = *(*(v16 + 48) + ((v23 << 8) | (4 * __clz(__rbit64(v21)))));
      v26 = sub_1DD63D7F8();
      sub_1DD4C3B08();
      v27 = sub_1DD63FC88();
      v28 = *(v26 + 16);
      if (v28)
      {
        v29 = v58;
        v30 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v62 = v26;
        v31 = v26 + v30;
        v32 = *(v59 + 72);
        v68 = *(v59 + 16);
        v69 = v32;
        v34 = v55;
        v33 = v56;
        v70 = v25;
        do
        {
          v35 = v68(v34, v31, v4);
          MEMORY[0x1EEE9AC00](v35);
          v36 = v66;
          *(&v54 - 2) = v34;
          *(&v54 - 1) = v36;

          sub_1DD3EC0E0(sub_1DD4C3B60, (&v54 - 4), v29);
          v38 = sub_1DD4C3948(v37, v70);
          v40 = v39;
          swift_isUniquelyReferenced_nonNull_native();
          v71 = v27;
          sub_1DD40005C(v38, v40);
          v27 = v71;
          (*v33)(v34, v4);
          v31 += v69;
          --v28;
        }

        while (v28);

        v16 = v57;
        v25 = v70;
      }

      else
      {
      }

      v41 = v65;
      swift_isUniquelyReferenced_nonNull_native();
      v71 = v41;
      v42 = sub_1DD3FEB74(v25);
      if (__OFADD__(v41[2], (v43 & 1) == 0))
      {
        break;
      }

      v44 = v42;
      v45 = v4;
      v46 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9E8, &qword_1DD6530C0);
      if (sub_1DD640A08())
      {
        v47 = sub_1DD3FEB74(v25);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_33;
        }

        v44 = v47;
      }

      v49 = v46;
      v4 = v45;
      v17 = v71;
      if (v49)
      {
        *(v71[7] + 8 * v44) = v27;
      }

      else
      {
        v71[(v44 >> 6) + 8] |= 1 << v44;
        *(v17[6] + 4 * v44) = v25;
        *(v17[7] + 8 * v44) = v27;
        v50 = v17[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_32;
        }

        v17[2] = v52;
      }

      v23 = v64;
      v21 = (v63 - 1) & v63;
      v22 = v60;
      v18 = v61;
      if (!v21)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        return v17;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        v65 = v17;
        v23 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD4C2F34()
{
  sub_1DD6408D8();

  v0 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v0);

  MEMORY[0x1E12B2260](23389, 0xE200000000000000);
  v1 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v1);

  OUTLINED_FUNCTION_5_49();
  v2 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1E12B2260](v2);

  OUTLINED_FUNCTION_5_49();
  v3 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1E12B2260](v3);

  OUTLINED_FUNCTION_5_49();
  v4 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1E12B2260](v4);

  MEMORY[0x1E12B2260](10589, 0xE200000000000000);
  return 91;
}

uint64_t sub_1DD4C3088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v4 = sub_1DD63D818();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9D8, &qword_1DD6530B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_1_4();
  v51 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = *MEMORY[0x1E69D2BD0];
  v54 = *(v6 + 104);
  v54(v9, v20, v4, v17);
  v21 = sub_1DD63D828();
  v23 = v22;
  v24 = *(v6 + 8);
  v24(v9, v4);
  v55 = a1;
  sub_1DD59BA04(v21, v23, a1);

  v25 = sub_1DD63D4F8();
  OUTLINED_FUNCTION_9_33(v19);
  if (v26)
  {
    sub_1DD4C3454(v19);
LABEL_5:
    v27 = -1;
    goto LABEL_6;
  }

  v27 = sub_1DD63D4E8();
  v29 = v28;
  OUTLINED_FUNCTION_2_54();
  (*(v30 + 8))(v19, v25);
  if (v29)
  {
    goto LABEL_5;
  }

LABEL_6:
  (v54)(v9, *MEMORY[0x1E69D2BE0], v4);
  v31 = sub_1DD63D828();
  v33 = v32;
  v24(v9, v4);
  sub_1DD59BA04(v31, v33, v55);

  OUTLINED_FUNCTION_9_33(v15);
  if (v26)
  {
    sub_1DD4C3454(v15);
LABEL_10:
    v38 = v27;
    v50 = -1;
    goto LABEL_12;
  }

  v34 = sub_1DD63D4E8();
  v36 = v35;
  OUTLINED_FUNCTION_2_54();
  (*(v37 + 8))(v15, v25);
  if (v36)
  {
    goto LABEL_10;
  }

  v50 = v34;
  v38 = v27;
LABEL_12:
  (v54)(v9, *MEMORY[0x1E69D2BD8], v4);
  v39 = sub_1DD63D828();
  v41 = v40;
  v24(v9, v4);
  v42 = v51;
  sub_1DD59BA04(v39, v41, v55);

  OUTLINED_FUNCTION_9_33(v42);
  if (v26)
  {
    result = sub_1DD4C3454(v42);
LABEL_16:
    v43 = -1;
    goto LABEL_17;
  }

  v43 = sub_1DD63D4E8();
  v45 = v44;
  OUTLINED_FUNCTION_2_54();
  result = (*(v46 + 8))(v42, v25);
  if (v45)
  {
    goto LABEL_16;
  }

LABEL_17:
  v48 = v53;
  *v53 = v52;
  *(v48 + 2) = 0;
  v49 = v50;
  v48[2] = v38;
  v48[3] = v49;
  v48[4] = v43;
  return result;
}

uint64_t sub_1DD4C3454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9D8, &qword_1DD6530B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4C34D0(uint64_t a1)
{
  v4 = sub_1DD63D818();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = *(v6 + 16);
  v15(&v31 - v13, a1, v4, v12);
  v16 = (*(v6 + 88))(v14, v4);
  if (v16 == *MEMORY[0x1E69D2BD0])
  {
    return v1[2];
  }

  if (v16 == *MEMORY[0x1E69D2BE0])
  {
    return v1[3];
  }

  if (v16 == *MEMORY[0x1E69D2BD8])
  {
    return v1[4];
  }

  if (qword_1ECCDB0E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1ECD0DDF0);
  (v15)(v10, a1, v4);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640378();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v21;
    v33 = swift_slowAlloc();
    v34 = v33;
    *v21 = 136315138;
    v22 = sub_1DD63D808();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_4_43();
    v2(v25);
    v26 = sub_1DD39565C(v22, v24, &v34);

    v27 = v32;
    *(v32 + 1) = v26;
    v28 = v27;
    _os_log_impl(&dword_1DD38D000, v19, v20, "Unexpected granularity: %s", v27, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12B3DA0](v29, -1, -1);
    MEMORY[0x1E12B3DA0](v28, -1, -1);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_4_43();
    v2(v30);
  }

  (v2)(v14, v4);
  return -1;
}

BOOL sub_1DD4C37FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD48C8E8(v5, v7);
}

BOOL sub_1DD4C3848(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD48CBA0(v5, v7);
}

BOOL sub_1DD4C3894(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD48CE5C(v5, v7);
}

uint64_t sub_1DD4C3948(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 64);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v4 - 6) == a2)
      {
        v6 = *(v4 - 4);
        v14 = *(v4 - 1);
        v7 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_42();
        }

        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = OUTLINED_FUNCTION_1_0(v8);
          sub_1DD42BD28(v11, v9 + 1, 1);
        }

        *(v5 + 16) = v9 + 1;
        v10 = v5 + 40 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = a2;
        *(v10 + 48) = v14;
        *(v10 + 64) = v7;
      }

      v4 += 5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v5 + 16);

  return v12;
}

float sub_1DD4C3A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = -1.0;
  if (*(a3 + 16))
  {
    v5 = sub_1DD3FEB74(a1);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 8 * v5);
      if (*(v7 + 16))
      {

        sub_1DD3FEBBC();
        if (v9)
        {
          v3 = *(*(v7 + 56) + 16 * v8 + 8);
        }
      }
    }
  }

  return v3;
}

unint64_t sub_1DD4C3B08()
{
  result = qword_1ECCDC330;
  if (!qword_1ECCDC330)
  {
    sub_1DD63D818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC330);
  }

  return result;
}

uint64_t sub_1DD4C3B80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
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
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD4C3D08(v7, v8, a1, v4);
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
    return sub_1DD4C3C74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD4C3C74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v9 + 40;
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 72);
        v13 = *(v9 + 56);
        v14 = *(v9 + 16);
        *v10 = *v9;
        *(v9 + 56) = v14;
        result = *(v9 + 32);
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 16) = v13;
        *(v9 + 32) = v12;
        v9 -= 40;
        *(v10 + 32) = result;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
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

void sub_1DD4C3D08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v91 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9);
        v11 = (*a3 + 40 * v7);
        v14 = *v11;
        v13 = v11 + 10;
        v12 = v14;
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v13;
          v13 += 5;
          v19 = (v12 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 < v10)
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

            v20 = 40 * v6 - 8;
            v21 = 40 * v7 + 32;
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

                v25 = (v24 + v21);
                v26 = *(v24 + v21 - 32);
                v27 = (v24 + v20);
                v28 = *(v25 - 6);
                v29 = *v25;
                v30 = *(v25 - 1);
                v31 = *v27;
                v32 = *(v27 - 1);
                *(v25 - 2) = *(v27 - 2);
                *(v25 - 1) = v32;
                *v25 = v31;
                *(v27 - 4) = v26;
                *(v27 - 6) = v28;
                *(v27 - 1) = v30;
                *v27 = v29;
              }

              ++v23;
              v20 -= 40;
              v21 += 40;
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
            v33 = *a3;
            v34 = *a3 + 40 * v9 - 40;
            v35 = v7 - v9;
            do
            {
              v36 = *(v33 + 40 * v9);
              v37 = v35;
              v38 = v34;
              do
              {
                v39 = v38 + 40;
                if (*v38 >= v36)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_111;
                }

                v40 = *(v38 + 48);
                v41 = *(v38 + 72);
                v42 = *(v38 + 56);
                v43 = *(v38 + 16);
                *v39 = *v38;
                *(v38 + 56) = v43;
                v44 = *(v38 + 32);
                *v38 = v36;
                *(v38 + 8) = v40;
                *(v38 + 16) = v42;
                *(v38 + 32) = v41;
                v38 -= 40;
                *(v39 + 32) = v44;
              }

              while (!__CFADD__(v37++, 1));
              ++v9;
              v34 += 40;
              --v35;
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

      v93 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v8 = v89;
      }

      v46 = v8[2];
      v47 = v46 + 1;
      if (v46 >= v8[3] >> 1)
      {
        sub_1DD3BEB7C();
        v8 = v90;
      }

      v8[2] = v47;
      v48 = v8 + 4;
      v49 = &v8[2 * v46 + 4];
      *v49 = v7;
      v49[1] = v93;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = &v48[2 * v47 - 2];
          v52 = &v8[2 * v47];
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = v8[4];
            v54 = v8[5];
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_56:
            if (v56)
            {
              goto LABEL_96;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_99;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_104;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v47 < 2)
          {
            goto LABEL_98;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_71:
          if (v71)
          {
            goto LABEL_101;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_103;
          }

          if (v78 < v70)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v50 - 1 >= v47)
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

          v82 = &v48[2 * v50 - 2];
          v83 = *v82;
          v84 = &v48[2 * v50];
          v85 = v84[1];
          sub_1DD4C4378((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v85, v94);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v85 < v83)
          {
            goto LABEL_91;
          }

          v86 = v8;
          v87 = v8[2];
          if (v50 > v87)
          {
            goto LABEL_92;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_93;
          }

          v47 = v87 - 1;
          memmove(&v48[2 * v50], v84 + 2, 16 * (v87 - 1 - v50));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          if (!v88)
          {
            goto LABEL_85;
          }
        }

        v57 = &v48[2 * v47];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_94;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_95;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_97;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_100;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_105;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v93;
      a4 = v91;
      if (v93 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD4C4240(&v96, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD4C4240(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
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
    sub_1DD4C4378((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
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

uint64_t sub_1DD4C4378(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1DD3AA508(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 40;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 40;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = *(v12 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1DD3AA508(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_15:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*v16 < *(v10 - 5))
    {
      v13 = v5 + 40 == v6;
      v6 -= 40;
      if (!v13)
      {
        v20 = *v16;
        v21 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v18 = *(v10 - 40);
      v19 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v18;
      *(v5 + 16) = v19;
    }

    v10 -= 40;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for LearnedDisambiguationMetaData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LearnedDisambiguationMetaData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1DD4C458C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4C45AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1DD4C45E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4C4604(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1DD4C4648()
{
  result = qword_1ECCDD9F8;
  if (!qword_1ECCDD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9F8);
  }

  return result;
}

double DateTime.Date.Holiday.__allocating_init(with:name:calendarSystem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  OUTLINED_FUNCTION_8_35();
  v10 = swift_allocObject();
  v11 = *a5;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = v11;
  *&result = 117703170;
  *(v10 + 49) = 117703170;
  *(v10 + 53) = 2;
  return result;
}

uint64_t DateTime.Date.Holiday.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DateTime.Date.Holiday.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DateTime.Date.Holiday.init(with:name:calendarSystem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v6;
  *(v5 + 49) = 117703170;
  *(v5 + 53) = 2;
  return v5;
}

BOOL static DateTime.Date.Holiday.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6 == 12)
  {
    if (v7 != 12)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(a1 + 49);
  v9 = *(a2 + 49);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v10 = *(a1 + 50);
  v11 = *(a2 + 50);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v12 = *(a1 + 52);
  v13 = *(a2 + 52);
  if (v12 == 7)
  {
    if (v13 != 7)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v15 = *(a1 + 53);
  v16 = *(a2 + 53);
  result = v16 == 2 && v15 == 2;
  if (v15 != 2 && v16 != 2)
  {
    return ((v16 ^ v15) & 1) == 0;
  }

  return result;
}

uint64_t sub_1DD4C4904(uint64_t a1)
{
  sub_1DD63FD28();
  sub_1DD63FD28();
  v2 = v1[48];
  sub_1DD640E48();
  if (v2 != 12)
  {
    MEMORY[0x1E12B3140](v2);
  }

  v3 = v1[49];
  sub_1DD640E48();
  if (v3 != 2)
  {
    MEMORY[0x1E12B3140](v3 & 1);
  }

  v4 = v1[50];
  sub_1DD640E48();
  if (v4 != 2)
  {
    MEMORY[0x1E12B3140](v4 & 1);
  }

  v5 = v1[51];
  sub_1DD640E48();
  if (v5 != 4)
  {
    MEMORY[0x1E12B3140](v5);
  }

  v6 = v1[52];
  sub_1DD640E48();
  if (v6 != 7)
  {
    MEMORY[0x1E12B3140](v6);
  }

  v7 = v1[53];
  if (v7 == 2)
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  return MEMORY[0x1E12B3140](v7 & 1);
}

uint64_t sub_1DD4C4A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD643F80;
  MEMORY[0x1E12B2260](*(v0 + 16), *(v0 + 24));
  *(v1 + 32) = 4023401;
  *(v1 + 40) = 0xE300000000000000;
  MEMORY[0x1E12B2260](*(v0 + 32), *(v0 + 40));
  *(v1 + 48) = 0x3D656D616ELL;
  *(v1 + 56) = 0xE500000000000000;
  if (*(v0 + 48) != 12)
  {
    OUTLINED_FUNCTION_7_35();
    sub_1DD6408D8();
    v2 = MEMORY[0x1E12B2260](0x7261646E656C6163, 0xEF3D6D6574737953);
    OUTLINED_FUNCTION_9_34(v2, v3, &type metadata for DateTime.Date.CalendarSystem, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v4);
    OUTLINED_FUNCTION_0_88();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v27;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 49) != 2)
  {
    OUTLINED_FUNCTION_7_35();
    v6 = MEMORY[0x1E12B2260](0x636E657571657266, 0xEA00000000003D79);
    OUTLINED_FUNCTION_9_34(v6, v7, &type metadata for DateTime.Date.Holiday.Frequency, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v8);
    OUTLINED_FUNCTION_0_88();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v28;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 50) != 2)
  {
    OUTLINED_FUNCTION_7_35();
    sub_1DD6408D8();
    v9 = MEMORY[0x1E12B2260](0x6E6176726573626FLL, 0xEF3D657079546563);
    OUTLINED_FUNCTION_9_34(v9, v10, &type metadata for DateTime.Date.Holiday.ObservanceType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v11);
    OUTLINED_FUNCTION_0_88();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v29;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 51) != 4)
  {
    OUTLINED_FUNCTION_7_35();
    v12 = MEMORY[0x1E12B2260](0x6570795465746164, 0xE90000000000003DLL);
    OUTLINED_FUNCTION_9_34(v12, v13, &type metadata for DateTime.Date.Holiday.HolidayDateType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v14);
    OUTLINED_FUNCTION_0_88();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v30;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 52) != 7)
  {
    OUTLINED_FUNCTION_7_35();
    sub_1DD6408D8();
    v15 = MEMORY[0x1E12B2260](0xD000000000000013, 0x80000001DD66E1E0);
    OUTLINED_FUNCTION_9_34(v15, v16, &type metadata for DateTime.Date.Holiday.Religion, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v17);
    OUTLINED_FUNCTION_0_88();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v31;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 53) != 2)
  {
    OUTLINED_FUNCTION_7_35();
    v18 = MEMORY[0x1E12B2260](0x3D6E6F69746F6D65, 0xE800000000000000);
    OUTLINED_FUNCTION_9_34(v18, v19, &type metadata for DateTime.Date.Holiday.Emotion, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v20);
    v21 = *(v1 + 16);
    if (v21 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v32;
    }

    *(v1 + 16) = v21 + 1;
    v22 = v1 + 16 * v21;
    *(v22 + 32) = 0x3D656D616ELL;
    *(v22 + 40) = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v23 = sub_1DD63FD58();
  v25 = v24;

  MEMORY[0x1E12B2260](v23, v25);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x5B796164696C6F48;
}

uint64_t sub_1DD4C4E4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xEE006D6574737953;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6176726573626FLL && a2 == 0xEE00657079546563;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6570795465746164 && a2 == 0xE800000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001DD66E270 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E6F69746F6D65 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4C50DC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x636E657571657266;
      break;
    case 4:
      result = 0x6E6176726573626FLL;
      break;
    case 5:
      result = 0x6570795465746164;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6E6F69746F6D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4C51D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4C4E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4C51FC(uint64_t a1)
{
  v2 = sub_1DD4C5A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4C5238(uint64_t a1)
{
  v2 = sub_1DD4C5A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.Date.Holiday.deinit()
{

  return v0;
}

uint64_t DateTime.Date.Holiday.__deallocating_deinit()
{
  DateTime.Date.Holiday.deinit();
  OUTLINED_FUNCTION_8_35();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4C52C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDA00, &qword_1DD653208);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4C5A48();
  sub_1DD640EF8();
  v30[2] = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v30[1] = 1;
    sub_1DD640C18();
    v30[0] = v3[48];
    v29 = 2;
    v11 = sub_1DD4C5A9C();
    OUTLINED_FUNCTION_5_50(v30, &v29, v12, &type metadata for DateTime.Date.CalendarSystem, v11);
    v28 = v3[49];
    v27 = 3;
    v13 = sub_1DD4C5AF0();
    OUTLINED_FUNCTION_5_50(&v28, &v27, v14, &type metadata for DateTime.Date.Holiday.Frequency, v13);
    v26 = v3[50];
    v25 = 4;
    v15 = sub_1DD4C5B44();
    OUTLINED_FUNCTION_5_50(&v26, &v25, v16, &type metadata for DateTime.Date.Holiday.ObservanceType, v15);
    HIBYTE(v24) = v3[51];
    BYTE6(v24) = 5;
    v17 = sub_1DD4C5B98();
    OUTLINED_FUNCTION_5_50(&v24 + 7, &v24 + 6, v18, &type metadata for DateTime.Date.Holiday.HolidayDateType, v17);
    BYTE5(v24) = v3[52];
    BYTE4(v24) = 6;
    v19 = sub_1DD4C5BEC();
    OUTLINED_FUNCTION_5_50(&v24 + 5, &v24 + 4, v20, &type metadata for DateTime.Date.Holiday.Religion, v19);
    BYTE3(v24) = v3[53];
    BYTE2(v24) = 7;
    v21 = sub_1DD4C5C40();
    OUTLINED_FUNCTION_5_50(&v24 + 3, &v24 + 2, v22, &type metadata for DateTime.Date.Holiday.Emotion, v21);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD4C5558()
{
  sub_1DD640E28();
  sub_1DD4C4904(v1);
  return sub_1DD640E78();
}

uint64_t DateTime.Date.Holiday.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_8_35();
  v2 = swift_allocObject();
  DateTime.Date.Holiday.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Date.Holiday.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDA40, &qword_1DD653210);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4C5A48();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Date.Holiday();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_1DD640B28();
    *(v1 + 24) = v5;
    *(v1 + 32) = sub_1DD640B28();
    *(v1 + 40) = v6;
    sub_1DD4C5CB8();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 48) = v15;
    sub_1DD4C5D0C();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 49) = v14;
    sub_1DD4C5D60();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 50) = v13;
    sub_1DD4C5DB4();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 51) = v12;
    sub_1DD4C5E08();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 52) = v11;
    sub_1DD4C5E5C();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    v8 = OUTLINED_FUNCTION_0_0();
    v9(v8);
    *(v1 + 53) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD4C5994(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD4C4904(v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD4C59D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Date.Holiday.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD4C5A48()
{
  result = qword_1ECCDDA08;
  if (!qword_1ECCDDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA08);
  }

  return result;
}

unint64_t sub_1DD4C5A9C()
{
  result = qword_1ECCDDA10;
  if (!qword_1ECCDDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA10);
  }

  return result;
}

unint64_t sub_1DD4C5AF0()
{
  result = qword_1ECCDDA18;
  if (!qword_1ECCDDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA18);
  }

  return result;
}

unint64_t sub_1DD4C5B44()
{
  result = qword_1ECCDDA20;
  if (!qword_1ECCDDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA20);
  }

  return result;
}

unint64_t sub_1DD4C5B98()
{
  result = qword_1ECCDDA28;
  if (!qword_1ECCDDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA28);
  }

  return result;
}

unint64_t sub_1DD4C5BEC()
{
  result = qword_1ECCDDA30;
  if (!qword_1ECCDDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA30);
  }

  return result;
}

unint64_t sub_1DD4C5C40()
{
  result = qword_1ECCDDA38;
  if (!qword_1ECCDDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA38);
  }

  return result;
}

unint64_t sub_1DD4C5CB8()
{
  result = qword_1ECCDDA48;
  if (!qword_1ECCDDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA48);
  }

  return result;
}

unint64_t sub_1DD4C5D0C()
{
  result = qword_1ECCDDA50;
  if (!qword_1ECCDDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA50);
  }

  return result;
}

unint64_t sub_1DD4C5D60()
{
  result = qword_1ECCDDA58;
  if (!qword_1ECCDDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA58);
  }

  return result;
}

unint64_t sub_1DD4C5DB4()
{
  result = qword_1ECCDDA60;
  if (!qword_1ECCDDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA60);
  }

  return result;
}

unint64_t sub_1DD4C5E08()
{
  result = qword_1ECCDDA68;
  if (!qword_1ECCDDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA68);
  }

  return result;
}

unint64_t sub_1DD4C5E5C()
{
  result = qword_1ECCDDA70;
  if (!qword_1ECCDDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA70);
  }

  return result;
}

unint64_t sub_1DD4C5EB4()
{
  result = qword_1ECCDDA78;
  if (!qword_1ECCDDA78)
  {
    type metadata accessor for DateTime.Date.Holiday();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA78);
  }

  return result;
}

_BYTE *_s7HolidayC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4C60E0()
{
  result = qword_1ECCDDA80;
  if (!qword_1ECCDDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA80);
  }

  return result;
}

unint64_t sub_1DD4C6138()
{
  result = qword_1ECCDDA88;
  if (!qword_1ECCDDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA88);
  }

  return result;
}

unint64_t sub_1DD4C6190()
{
  result = qword_1ECCDDA90;
  if (!qword_1ECCDDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA90);
  }

  return result;
}

uint64_t sub_1DD4C61E4(uint64_t a1)
{
  if ((a1 - 1) >= 0xC)
  {
    return 12;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1DD4C61F8(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_1DD4C6220(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DD4C6260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD4C62E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v287 = a5;
  v233 = a4;
  v307 = a3;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2(&v225 - v9);
  v277 = sub_1DD63D228();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v13);
  v275 = sub_1DD63D1D8();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v17);
  v323 = sub_1DD63D218();
  OUTLINED_FUNCTION_0();
  v259 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v20);
  v273 = &v225 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  v23 = OUTLINED_FUNCTION_3(v22);
  MEMORY[0x1EEE9AC00](v23);
  v322 = &v225 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v26 = OUTLINED_FUNCTION_3(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v225 - v29);
  v31 = _s19ConvergenceStrategyOMa(0);
  v32 = OUTLINED_FUNCTION_3(v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v225 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v225 - v38;
  v321 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v325 = v43;
  v299 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v319 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  v324 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC170, &qword_1DD645270);
  v48 = OUTLINED_FUNCTION_3(v47);
  MEMORY[0x1EEE9AC00](v48);
  v50 = OUTLINED_FUNCTION_14_2(&v225 - v49);
  v247 = type metadata accessor for HolidayResolutionContext(v50);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v52);
  v53 = sub_1DD63C868();
  OUTLINED_FUNCTION_0();
  v238 = v54;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_0();
  v320 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_14_2(&v225 - v60);
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v62);
  v308 = &v225 - v65;
  if (*(a1 + 48) != 3)
  {
    return;
  }

  v312 = v64;
  v314 = v41;
  v315 = v15;
  v316 = v11;
  v317 = a1;
  v318 = v63;
  v66 = *(a1 + 24);
  v67 = *(a1 + 32);
  v68 = *(a1 + 40);
  v236 = a6;
  v69 = *a6;
  v70 = type metadata accessor for RecurringDateInterval(0);
  v237 = v69;
  v235 = v70;
  v310 = MEMORY[0x1E12B2430](v69);
  v72 = v71;
  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v73 = sub_1DD63F9F8();
    __swift_project_value_buffer(v73, qword_1ECD0DDC0);
    sub_1DD48FEF0(v66, v67, v68, 3);

    v74 = sub_1DD63F9D8();
    v75 = sub_1DD640368();
    v245 = v68;
    v76 = v68;
    v77 = v75;
    sub_1DD48FF14(v66, v67, v76, 3);

    v78 = os_log_type_enabled(v74, v77);
    v265 = v34;
    v293 = v39;
    v243 = v66;
    v242 = v67;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v309 = v74;
      v80 = v79;
      v81 = swift_slowAlloc();
      v328[0] = v81;
      *v80 = 136315394;
      *(v80 + 4) = sub_1DD39565C(v66, v67, v328);
      *(v80 + 12) = 2080;
      v39 = sub_1DD39565C(v310, v72, v328);

      *(v80 + 14) = v39;
      v82 = v309;
      _os_log_impl(&dword_1DD38D000, v309, v77, "going to solve holidayId %s, inputs: %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v81, -1, -1);
      MEMORY[0x1E12B3DA0](v80, -1, -1);
    }

    else
    {
    }

    v66 = v315;
    v83 = v316;
    v68 = v314;
    v67 = MEMORY[0x1E69E7CD0];
    v329 = MEMORY[0x1E69E7CD0];
    v84 = v237;
    v230 = sub_1DD3CC020();
    if (!v230)
    {
      goto LABEL_116;
    }

    v85 = 0;
    v232 = v233 & 0xC000000000000001;
    v240 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
    v86 = v84 & 0xC000000000000001;
    v227 = v84 + 32;
    v239 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone;
    v315 = (v238 + 8);
    v316 = (v238 + 16);
    v306 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    v87 = v233 & 0xFFFFFFFFFFFFFF8;
    v234 = *(v317 + 49);
    if (v233 < 0)
    {
      v87 = v233;
    }

    v229 = v87;
    v226 = v233 + 56;
    v291 = (v312 + 16);
    v305 = (v68 + 16);
    v258 = v259 + 104;
    v257 = *MEMORY[0x1E69699A0];
    v297 = v259 + 16;
    v271 = v66 + 104;
    v270 = v83 + 13;
    v256 = *MEMORY[0x1E6969998];
    v269 = v83 + 1;
    v268 = v66 + 8;
    v255 = xmmword_1DD643F80;
    v282 = v312 + 32;
    v267 = *MEMORY[0x1E69698C0];
    v283 = v312 + 8;
    v296 = v68 + 8;
    v266 = *MEMORY[0x1E69699C8];
    v295 = v319 + 8;
    v279 = v259 + 32;
    v280 = (v259 + 8);
    v281 = v238 + 32;
    v278 = v30;
    v228 = v84 & 0xC000000000000001;
LABEL_10:
    v88 = v85;
    v72 = v86;
    sub_1DD408BFC();
    if (v72)
    {
      v302 = MEMORY[0x1E12B2C10](v88, v84);
    }

    else
    {
      v302 = *(v227 + 8 * v88);
    }

    v89 = __OFADD__(v88, 1);
    v34 = v88 + 1;
    if (!v89)
    {
      break;
    }

LABEL_147:
    __break(1u);
LABEL_148:
    swift_once();
  }

  v231 = v34;
  if (!v234)
  {

    v67 = *v316;
LABEL_21:
    v92 = OUTLINED_FUNCTION_11_31();
    (v67)(v92);
    sub_1DD63C848();
    goto LABEL_22;
  }

  if (v234 == 1)
  {
    v84 = 0xE300000000000000;
  }

  else
  {
    v84 = 0xE600000000000000;
  }

  v90 = sub_1DD640CD8();

  v67 = *v316;
  if (v90)
  {
    goto LABEL_21;
  }

  v91 = OUTLINED_FUNCTION_11_31();
  (v67)(v91);
  sub_1DD63C828();
LABEL_22:
  v314 = *v315;
  v314(v84, v53);
  if (v232)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v66 = v328[3];
    v39 = v328[4];
    v93 = v328[5];
    v68 = v328[6];
    v34 = v328[7];
  }

  else
  {
    v66 = v233;
    v94 = -1 << *(v233 + 32);
    v93 = ~v94;
    v95 = -v94;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    else
    {
      v96 = -1;
    }

    v34 = (v96 & *(v233 + 56));

    v68 = 0;
    v39 = v226;
  }

  v303 = v93;
  v72 = (v93 + 64) >> 6;
  v304 = v66;
  while (1)
  {
    v312 = v68;
    if (v66 < 0)
    {
      v100 = sub_1DD6407F8();
      if (!v100)
      {
        goto LABEL_59;
      }

      v326 = v100;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v99 = v327;
      v319 = v34;
      if (!v327)
      {
LABEL_58:
        v68 = v312;
LABEL_59:
        v105 = OUTLINED_FUNCTION_18_22();
        sub_1DD3AA5A4(v105);
        v34 = &unk_1F58ADAC0;
        goto LABEL_60;
      }
    }

    else
    {
      v97 = v68;
      v98 = v34;
      if (!v34)
      {
        while (1)
        {
          v68 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            break;
          }

          if (v68 >= v72)
          {
            goto LABEL_58;
          }

          v98 = *(v39 + 8 * v68);
          ++v97;
          if (v98)
          {
            goto LABEL_34;
          }
        }

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
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

LABEL_34:
      v319 = (v98 - 1) & v98;
      v99 = *(*(v66 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v98)))));

      if (!v99)
      {
        goto LABEL_58;
      }
    }

    if (*(v99 + 16) == 11)
    {
      break;
    }

LABEL_57:

    v34 = v319;
  }

  v101 = *(v99 + 49);
  v310 = v34;
  if (v101)
  {
    if (v101 == 1)
    {
      v66 = 0xE300000000000000;
      v102 = 6581861;
    }

    else
    {
      v66 = 0xE600000000000000;
      v102 = 0x746573746F6ELL;
    }
  }

  else
  {
    v66 = 0xE500000000000000;
    v102 = 0x7472617473;
  }

  if (v234)
  {
    if (v234 == 1)
    {
      v103 = 6581861;
    }

    else
    {
      v103 = 0x746573746F6ELL;
    }

    if (v234 == 1)
    {
      v39 = 0xE300000000000000;
    }

    else
    {
      v39 = 0xE600000000000000;
    }
  }

  else
  {
    v39 = 0xE500000000000000;
    v103 = 0x7472617473;
  }

  if (v102 != v103 || v66 != v39)
  {
    LODWORD(v309) = sub_1DD640CD8();

    OUTLINED_FUNCTION_12_26();
    if (v309)
    {
      goto LABEL_111;
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_12_26();
LABEL_111:
  v206 = OUTLINED_FUNCTION_18_22();
  sub_1DD3AA5A4(v206);
  v39 = *(v99 + 56);

  v34 = sub_1DD3FDDCC(v207);

LABEL_60:
  v246 = *(v34 + 2);
  v298 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
  OUTLINED_FUNCTION_16_27();
  swift_beginAccess();
  v106 = 0;
  v244 = v34 + 32;
  v294 = v67;
  v241 = v34;
LABEL_61:
  if (v106 == v246)
  {
    OUTLINED_FUNCTION_16_0();
    v205(v308, v318);

    v85 = v231;
    v84 = v237;
    v86 = v228;
    if (v231 == v230)
    {
      goto LABEL_115;
    }

    goto LABEL_10;
  }

  if (v106 >= *(v34 + 2))
  {
    goto LABEL_140;
  }

  v319 = v245 >> 8;
  v249 = v106;
  v107 = &v244[16 * v106];
  LODWORD(v312) = v107[8];
  v108 = *v107;
  v72 = v247;
  v109 = v250;
  v110 = &v250[*(v247 + 20)];
  v66 = v245;
  v290 = *v291;
  v290(v110, v308, v318);
  v111 = *(v72 + 24);
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  v113 = v307;
  (*(v112 + 16))(&v109[v111], v307 + v240);
  v114 = *(v72 + 28);
  sub_1DD63D328();
  OUTLINED_FUNCTION_7();
  (*(v115 + 16))(&v109[v114], v113 + v239);
  v116 = &v109[*(v72 + 32)];
  v304 = *v305;
  v304(v116, v113 + v306, v321);
  *v109 = v66;
  v117 = &v109[*(v72 + 36)];
  *v117 = v108;
  v117[8] = v312;
  v109[*(v72 + 40)] = v319;
  __swift_project_boxed_opaque_existential_1(v248, v248[3]);
  v118 = v251;
  v119 = sub_1DD4D1304(v243, v242, v109);
  v251 = v118;
  if (v118)
  {

    OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_16_0();
    v208(v308, v318);

    return;
  }

  v120 = v317;
  v68 = v292;
  v39 = v293;
  v254 = v119;
  if (v119 >> 62)
  {
    v121 = sub_1DD6407B8();
    if (!v121)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v121 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v121)
    {
      goto LABEL_105;
    }
  }

  v72 = 0;
  LODWORD(v303) = *(v120 + 52);
  v261 = v254 & 0xC000000000000001;
  v253 = v254 & 0xFFFFFFFFFFFFFF8;
  v252 = v254 + 32;
  v260 = v121;
  while (1)
  {
    if (v261)
    {
      v312 = MEMORY[0x1E12B2C10](v72, v254);
    }

    else
    {
      if (v72 >= *(v253 + 16))
      {
        goto LABEL_114;
      }

      v312 = *(v252 + 8 * v72);
    }

    v89 = __OFADD__(v72, 1);
    v122 = v72 + 1;
    if (v89)
    {
      break;
    }

    v264 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC178, &qword_1DD645278);
    v123 = v259;
    v124 = *(v259 + 72);
    v125 = (*(v259 + 80) + 32) & ~*(v259 + 80);
    v126 = swift_allocObject();
    *(v126 + 16) = v255;
    v263 = v126;
    v127 = (v126 + v125);
    v128 = *(v123 + 104);
    v129 = v323;
    v128(v127, v257, v323);
    v310 = v124;
    v309 = v127;
    v130 = (v127 + v124);
    v67 = v294;
    v128(v130, v256, v129);
    v131 = 0;
    v132 = 0;
    do
    {
      LODWORD(v319) = v131;
      v133 = v309 + v132 * v310;
      (v67)(v320, v302 + v298, v53);
      sub_1DD481178();
      OUTLINED_FUNCTION_16_27();
      v304(v325, v134 + v135, v321);
      OUTLINED_FUNCTION_16_0();
      v136 = v133;
      v137 = v323;
      v138(v39, v136, v323);
      __swift_storeEnumTagSinglePayload(v39, 0, 3, v137);
      sub_1DD48FBC0(v322);
      v139 = v313;
      sub_1DD3DD8F4(v39, v313);
      switch(__swift_getEnumTagSinglePayload(v139, 3, v137))
      {
        case 1u:
          sub_1DD63D258();
          break;
        case 2u:
          v158 = v272;
          OUTLINED_FUNCTION_10_34();
          v159();
          __swift_storeEnumTagSinglePayload(v158, 0, 1, v139);
          sub_1DD3D5CFC();
          sub_1DD390754(v158, &qword_1ECCDEBC0, &qword_1DD6445A0);
          break;
        case 3u:
          OUTLINED_FUNCTION_10_34();
          v160();
          __swift_storeEnumTagSinglePayload(v68, 0, 1, v139);
          break;
        default:
          OUTLINED_FUNCTION_16_0();
          v140 = v273;
          v141 = v323;
          v142(v273, v313, v323);
          OUTLINED_FUNCTION_16_0();
          v143 = v274;
          v144 = v53;
          v145 = v141;
          v146 = v275;
          v147(v274, v267, v275);
          OUTLINED_FUNCTION_16_0();
          v148 = v276;
          v149 = v277;
          v150(v276, v266, v277);
          sub_1DD63D298();
          OUTLINED_FUNCTION_16_0();
          v151 = v149;
          v39 = v293;
          v152(v148, v151);
          OUTLINED_FUNCTION_16_0();
          v153 = v143;
          v30 = v278;
          v154 = v146;
          v67 = v294;
          v155 = v145;
          v53 = v144;
          v68 = v292;
          v156(v153, v154);
          OUTLINED_FUNCTION_16_0();
          v157(v140, v155);
          break;
      }

      v161 = v311;
      if (v303)
      {
        v162 = v300;
        v163 = v323;
        __swift_storeEnumTagSinglePayload(v300, 3, 3, v323);
        v164 = *(v286 + 48);
        v165 = v39;
        v166 = v301;
        sub_1DD3DD8F4(v165, v301);
        sub_1DD3DD8F4(v162, v166 + v164);
        switch(__swift_getEnumTagSinglePayload(v166, 3, v163))
        {
          case 1u:
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v176, v177);
            if (OUTLINED_FUNCTION_9_35() != 1)
            {
              goto LABEL_91;
            }

            OUTLINED_FUNCTION_0_89();
            sub_1DD4C816C(v166, v178);
            sub_1DD390754(v322, &qword_1ECCDC130, &unk_1DD645260);
            goto LABEL_89;
          case 2u:
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v171, v172);
            if (OUTLINED_FUNCTION_9_35() != 2)
            {
              goto LABEL_91;
            }

            goto LABEL_86;
          case 3u:
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v173, v174);
            if (OUTLINED_FUNCTION_9_35() != 3)
            {
              goto LABEL_91;
            }

LABEL_86:
            sub_1DD390754(v322, &qword_1ECCDC130, &unk_1DD645260);
            OUTLINED_FUNCTION_0_89();
            sub_1DD4C816C(v166, v175);
LABEL_89:
            v39 = v293;
            break;
          default:
            v166 = v301;
            v167 = v265;
            sub_1DD3DD8F4(v301, v265);
            if (__swift_getEnumTagSinglePayload(v166 + v164, 3, v323))
            {
              OUTLINED_FUNCTION_0_89();
              OUTLINED_FUNCTION_14_27(v168, v169);
              OUTLINED_FUNCTION_16_0();
              v170(v167, v323);
LABEL_91:
              sub_1DD390754(v166, &qword_1ECCDC168, &unk_1DD64FFB0);
              goto LABEL_92;
            }

            OUTLINED_FUNCTION_16_0();
            v197 = v262;
            v198 = v323;
            v199(v262, v166 + v164, v323);
            v200 = sub_1DD63D208();
            v67 = v280;
            v161 = *v280;
            (*v280)(v197, v198);
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v201, v202);
            v161(v167, v198);
            if ((v200 & 1) == 0)
            {
              OUTLINED_FUNCTION_0_89();
              sub_1DD4C816C(v166, v204);
              v30 = v278;
              OUTLINED_FUNCTION_15_24();
LABEL_92:
              v179 = v322;
              sub_1DD3D5CFC();
              sub_1DD390754(v68, &qword_1ECCDEBC0, &qword_1DD6445A0);
              sub_1DD390754(v179, &qword_1ECCDC130, &unk_1DD645260);
              v39 = v293;
              goto LABEL_93;
            }

            sub_1DD390754(v322, &qword_1ECCDC130, &unk_1DD645260);
            OUTLINED_FUNCTION_0_89();
            sub_1DD4C816C(v166, v203);
            v30 = v278;
            v39 = v293;
            OUTLINED_FUNCTION_15_24();
            break;
        }
      }

      else
      {
        sub_1DD390754(v322, &qword_1ECCDC130, &unk_1DD645260);
      }

      sub_1DD3D7DA0(v68, v30);
LABEL_93:
      v66 = v318;
      if (__swift_getEnumTagSinglePayload(v30, 1, v318) == 1)
      {
        OUTLINED_FUNCTION_0_89();
        sub_1DD4C816C(v39, v180);
        OUTLINED_FUNCTION_16_0();
        v181(v325, v321);
        OUTLINED_FUNCTION_16_0();
        v182(v324, v299);
        OUTLINED_FUNCTION_17_26();
        v183();
        sub_1DD390754(v30, &qword_1ECCDEBC0, &qword_1DD6445A0);
        __swift_storeEnumTagSinglePayload(v161, 1, 1, v53);
      }

      else
      {
        OUTLINED_FUNCTION_16_0();
        v184 = v30;
        v185 = v284;
        v186(v284, v184, v66);
        v187 = v325;
        sub_1DD4852E4(v185, v325, v317, v287 & 1, v161);
        OUTLINED_FUNCTION_16_0();
        v188 = v185;
        v30 = v184;
        v67 = v294;
        v189(v188, v66);
        OUTLINED_FUNCTION_0_89();
        sub_1DD4C816C(v39, v190);
        OUTLINED_FUNCTION_16_0();
        v191(v187, v321);
        OUTLINED_FUNCTION_16_0();
        v192(v324, v299);
        OUTLINED_FUNCTION_17_26();
        v193();
      }

      if (__swift_getEnumTagSinglePayload(v161, 1, v53) == 1)
      {
        sub_1DD390754(v161, &qword_1ECCDC170, &qword_1DD645270);
      }

      else
      {
        OUTLINED_FUNCTION_16_0();
        v194 = v285;
        v195(v285, v161, v53);
        (v67)(v288, v194, v53);
        v66 = v289;
        sub_1DD56D300();
        v196 = v314;
        v314(v66, v53);
        v196(v194, v53);
      }

      v131 = 1;
      v132 = 1;
    }

    while ((v319 & 1) == 0);

    swift_setDeallocating();
    sub_1DD46CB60();
    v72 = v264;
    if (v264 == v260)
    {
LABEL_105:
      v106 = v249 + 1;

      OUTLINED_FUNCTION_8_36();
      v34 = v241;
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  v67 = v329;
LABEL_116:
  v34 = *(v67 + 16);
  v30 = v236;
  if (v34)
  {
    v327 = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v72 = sub_1DD55B198();
    v211 = 0;
    v325 = (v67 + 56);
    v319 = v238 + 8;
    v320 = v238 + 16;
    v317 = v209;
    v318 = v34;
    v316 = (v67 + 64);
    while (1)
    {
      if (v72 < 0 || v72 >= 1 << *(v67 + 32))
      {
        goto LABEL_141;
      }

      v39 = v72 >> 6;
      if ((*&v325[8 * (v72 >> 6)] & (1 << v72)) == 0)
      {
        goto LABEL_142;
      }

      if (*(v67 + 36) != v209)
      {
        goto LABEL_143;
      }

      v322 = v209;
      v323 = 1 << v72;
      v321 = v211;
      v212 = *(v67 + 48);
      v34 = v67;
      v213 = v238;
      v214 = v212 + *(v238 + 72) * v72;
      v215 = *(v238 + 16);
      v68 = v289;
      LODWORD(v324) = v210;
      v66 = v320;
      v215(v289, v214, v53);
      v216 = v288;
      v215(v288, v68, v53);
      swift_allocObject();
      v30 = sub_1DD57F5F8(v216, 0);
      (*(v213 + 8))(v68, v53);
      sub_1DD640958();
      v67 = *(v327 + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (v324)
      {
        break;
      }

      v217 = 1 << v34[32];
      if (v72 >= v217)
      {
        goto LABEL_144;
      }

      v218 = *&v325[8 * v39];
      if ((v218 & v323) == 0)
      {
        goto LABEL_145;
      }

      v67 = v34;
      if (*(v34 + 9) != v322)
      {
        goto LABEL_146;
      }

      v219 = v218 & (-2 << (v72 & 0x3F));
      if (v219)
      {
        v217 = __clz(__rbit64(v219)) | v72 & 0x7FFFFFFFFFFFFFC0;
        v30 = v236;
        v34 = v318;
        v220 = v321;
      }

      else
      {
        v66 = v39 << 6;
        v221 = v39 + 1;
        v222 = &v316[v39];
        v30 = v236;
        v34 = v318;
        while (v221 < (v217 + 63) >> 6)
        {
          v223 = *v222++;
          v68 = v223;
          v66 += 64;
          ++v221;
          if (v223)
          {
            sub_1DD3AA558(v72, v322, 0);
            v217 = __clz(__rbit64(v68)) + v66;
            goto LABEL_133;
          }
        }

        sub_1DD3AA558(v72, v322, 0);
LABEL_133:
        v220 = v321;
      }

      v210 = 0;
      v211 = (v220 + 1);
      v72 = v217;
      v209 = v317;
      if (v211 == v34)
      {

        v224 = v327;
        goto LABEL_137;
      }
    }

    __break(1u);
  }

  else
  {

    v224 = MEMORY[0x1E69E7CC0];
LABEL_137:
    *v30 = v224;
  }
}

uint64_t sub_1DD4C816C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_14_27(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 376);

  return sub_1DD4C816C(v4, a2);
}

unint64_t DateTime.Date.Holiday.HolidayDateType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4C825C()
{
  result = qword_1ECCDDA98;
  if (!qword_1ECCDDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA98);
  }

  return result;
}

uint64_t sub_1DD4C82B8@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.HolidayDateType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s15HolidayDateTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4C846C()
{
  result = qword_1ECCDDAA0;
  if (!qword_1ECCDDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAA0);
  }

  return result;
}

uint64_t type metadata accessor for HolidayResolutionContext(uint64_t a1)
{
  result = qword_1ECCDDAA8;
  if (!qword_1ECCDDAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4C8534(uint64_t a1)
{
  sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    sub_1DD63D168();
    if (v2 <= 0x3F)
    {
      sub_1DD63D328();
      if (v3 <= 0x3F)
      {
        sub_1DD63D2D8();
        if (v4 <= 0x3F)
        {
          sub_1DD3EBBE4(319, &qword_1ECCDBB70, MEMORY[0x1E69E6530]);
          if (v5 <= 0x3F)
          {
            sub_1DD3EBBE4(319, &qword_1ECCDDAB8, &type metadata for DateTime.Qualifier);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD4C8648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796164696C6F68 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000)
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

uint64_t sub_1DD4C8760(char a1)
{
  if (!a1)
  {
    return 0x796164696C6F68;
  }

  if (a1 == 1)
  {
    return 0x7972746E756F63;
  }

  return 0x7261646E656C6163;
}

uint64_t sub_1DD4C87B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB98, &qword_1DD653940);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4CADB8();
  sub_1DD640EF8();
  v12[15] = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v12[14] = 1;
    sub_1DD640C18();
    v12[13] = *(v3 + 32);
    v12[12] = 2;
    sub_1DD4CAE60();
    sub_1DD640C68();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1DD4C894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_93();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB80, &qword_1DD653938);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1DD4CADB8();
  sub_1DD640ED8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    OUTLINED_FUNCTION_6_43();
    v31 = sub_1DD640B28();
    v33 = v32;
    v39 = v31;
    OUTLINED_FUNCTION_6_43();
    v37 = sub_1DD640B28();
    v38 = v34;
    sub_1DD4CAE0C();
    sub_1DD640B78();
    v35 = OUTLINED_FUNCTION_3_46();
    v36(v35, v29);
    __swift_destroy_boxed_opaque_existential_1(v26);
    *v28 = v39;
    *(v28 + 8) = v33;
    *(v28 + 16) = v37;
    *(v28 + 24) = v38;
    *(v28 + 32) = a12;
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD4C8B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4C8648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4C8BA4(uint64_t a1)
{
  v2 = sub_1DD4CADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4C8BE0(uint64_t a1)
{
  v2 = sub_1DD4CADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD4C8C7C(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD4C8CCC(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x646E6F6973726576;
      break;
    case 2:
      v3 = 0x6164696C6F68;
      goto LABEL_6;
    case 3:
      v3 = 0x72746E756F63;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 4:
      result = 0x6F666E4977656ELL;
      break;
    case 5:
      result = 0x7261646E656C6163;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD4C8DA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4C8C7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD4C8DD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD4C8CCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD4C8E04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4C8CC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD4C8E38(uint64_t a1)
{
  v2 = sub_1DD4C9994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4C8E74(uint64_t a1)
{
  v2 = sub_1DD4C9994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD4C8EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_93();
  v12 = v11;
  v54 = v13;
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v55 = v14;
  v56 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAC0, &qword_1DD653670);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  v58 = type metadata accessor for HolidaysDBUpdate(0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v12[3];
  v57 = v12;
  __swift_project_boxed_opaque_existential_1(v12, v24);
  sub_1DD4C9994();
  sub_1DD640ED8();
  if (!v10)
  {
    v52 = v18;
    v53 = v21;
    OUTLINED_FUNCTION_2_56();
    *v59 = sub_1DD640B58();
    OUTLINED_FUNCTION_2_56();
    v25 = sub_1DD640B28();
    v27 = v56;
    v28 = v25;
    v29 = v26;
    v30 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v30 setFormatOptions_];
    v31 = v28;
    v32 = sub_1DD63FDA8();
    v51 = v30;
    v33 = [v30 dateFromString_];

    if (v33)
    {

      v34 = v52;
      sub_1DD63D048();

      v35 = v53;
      v36 = v34;
      v37 = v55;
      (*(v27 + 32))(v53, v36, v55);
      (*(v27 + 16))(v59 + v58[5], v35, v37);
      OUTLINED_FUNCTION_2_56();
      v38 = sub_1DD640B28();
      v43 = (v59 + v58[6]);
      *v43 = v38;
      v43[1] = v44;
      LOBYTE(a10) = 3;
      OUTLINED_FUNCTION_2_56();
      v45 = sub_1DD640AD8();
      v46 = (v59 + v58[7]);
      *v46 = v45;
      v46[1] = v47;
      v52 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAD8, &qword_1DD653678);
      v60 = 4;
      sub_1DD4C9C0C(&qword_1ECCDDAE0, sub_1DD4C9A3C);
      OUTLINED_FUNCTION_6_43();
      sub_1DD640B78();
      *(v59 + v58[8]) = a10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAF0, &qword_1DD653680);
      v60 = 5;
      sub_1DD4C9A90(&qword_1ECCDDAF8, sub_1DD4C9AF8);
      OUTLINED_FUNCTION_6_43();
      sub_1DD640B78();

      (*(v27 + 8))(v35, v55);
      v48 = OUTLINED_FUNCTION_1_67();
      v49(v48);
      v50 = v59;
      *(v59 + v58[9]) = a10;
      sub_1DD4C9B4C(v50, v54);
      __swift_destroy_boxed_opaque_existential_1(v57);
      sub_1DD4C9BB0(v50);
      goto LABEL_4;
    }

    v39 = sub_1DD4C99E8();
    OUTLINED_FUNCTION_4_42(&type metadata for HolidaysDBUpdateError, v39);
    *v40 = v31;
    v40[1] = v29;
    swift_willThrow();

    v41 = OUTLINED_FUNCTION_1_67();
    v42(v41);
  }

  __swift_destroy_boxed_opaque_existential_1(v57);

LABEL_4:
  OUTLINED_FUNCTION_86();
}

void sub_1DD4C9568()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB08, &qword_1DD653688);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DD4C9994();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_18_2();
  sub_1DD640C48();
  if (!v0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v6 setFormatOptions_];
    type metadata accessor for HolidaysDBUpdate(0);
    v7 = sub_1DD63CFA8();
    v8 = [v6 stringFromDate_];

    sub_1DD63FDD8();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C18();

    OUTLINED_FUNCTION_18_2();
    sub_1DD640C18();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640BC8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAD8, &qword_1DD653678);
    sub_1DD4C9C0C(&qword_1ECCDDB10, sub_1DD4C9C74);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAF0, &qword_1DD653680);
    sub_1DD4C9A90(&qword_1ECCDDB20, sub_1DD4C9CC8);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
  }

  v4 = OUTLINED_FUNCTION_4_44();
  v5(v4);
  OUTLINED_FUNCTION_86();
}

uint64_t type metadata accessor for HolidaysDBUpdate(uint64_t a1)
{
  result = qword_1ECCDDB48;
  if (!qword_1ECCDDB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD4C9994()
{
  result = qword_1ECCDDAC8;
  if (!qword_1ECCDDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAC8);
  }

  return result;
}

unint64_t sub_1DD4C99E8()
{
  result = qword_1ECCDDAD0;
  if (!qword_1ECCDDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAD0);
  }

  return result;
}

unint64_t sub_1DD4C9A3C()
{
  result = qword_1ECCDDAE8;
  if (!qword_1ECCDDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAE8);
  }

  return result;
}

uint64_t sub_1DD4C9A90(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDAF0, &qword_1DD653680);
    a2();
    result = OUTLINED_FUNCTION_12_27();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4C9AF8()
{
  result = qword_1ECCDDB00;
  if (!qword_1ECCDDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB00);
  }

  return result;
}

uint64_t sub_1DD4C9B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4C9BB0(uint64_t a1)
{
  v2 = type metadata accessor for HolidaysDBUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4C9C0C(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDAD8, &qword_1DD653678);
    a2();
    result = OUTLINED_FUNCTION_12_27();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4C9C74()
{
  result = qword_1ECCDDB18;
  if (!qword_1ECCDDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB18);
  }

  return result;
}

unint64_t sub_1DD4C9CC8()
{
  result = qword_1ECCDDB28;
  if (!qword_1ECCDDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB28);
  }

  return result;
}

void sub_1DD4C9D1C()
{
  OUTLINED_FUNCTION_93();
  v70 = v1;
  v3 = v2;
  v69 = type metadata accessor for HolidaysDBUpdate(0);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v10 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = v3;
  v21 = sub_1DD4CB0C8(&v63 - v18, v16, v3);
  if (!v0)
  {
    v22 = v21;
    v66 = v6;
    v67 = v9;
    v23 = v69;
    v68 = v20;
    v24 = *(v12 + 8);
    v24(v16, v10);
    v24(v19, v10);
    v25 = v70;
    v26 = *v70;
    if (v22 >= *v70)
    {
      if (qword_1EE1632D8 != -1)
      {
LABEL_40:
        OUTLINED_FUNCTION_5(&qword_1EE1632D8);
      }

      v33 = sub_1DD63F9F8();
      __swift_project_value_buffer(v33, qword_1EE16EFE0);
      v34 = v67;
      sub_1DD4C9B4C(v25, v67);
      v35 = sub_1DD63F9D8();
      v36 = sub_1DD640368();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        v38 = *v34;
        sub_1DD4C9BB0(v34);
        *(v37 + 4) = v38;
        _os_log_impl(&dword_1DD38D000, v35, v36, "Skipping reapply for update %ld", v37, 0xCu);
        MEMORY[0x1E12B3DA0](v37, -1, -1);
      }

      else
      {
        sub_1DD4C9BB0(v34);
      }
    }

    else
    {
      v27 = v22 + 1;
      if (v26 == v22 + 1)
      {
        v28 = v23;
        sub_1DD4CB510(v26);
        sub_1DD4CB7AC(*(v25 + v23[6]), *(v25 + v23[6] + 8), *(v25 + v23[7]), *(v25 + v23[7] + 8));
        v29 = 0;
        v30 = *(v25 + v23[8]);
        v31 = *(v30 + 16);
        v32 = (v30 + 32);
        while (v31 != v29)
        {
          if (v29 >= *(v30 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          memcpy(v72, v32, 0xA3uLL);
          sub_1DD4CA79C(v72, &v71);
          sub_1DD4CBA94(v72);
          ++v29;
          sub_1DD4CA7F8(v72);
          v32 += 168;
        }

        v47 = 0;
        v48 = *(v25 + v28[9]);
        v69 = *(v48 + 16);
        v64 = 0x80000001DD668C10;
        v66 = "associatedReligion";
        v67 = v48;
        v49 = (v48 + 64);
        v65 = xmmword_1DD6444F0;
        while (v69 != v47)
        {
          v73 = v47;
          if (v47 >= v67[2])
          {
            __break(1u);
            return;
          }

          v50 = *(v49 - 4);
          v51 = *(v49 - 3);
          v52 = *(v49 - 2);
          v53 = *(v49 - 1);
          v70 = v49;
          v54 = *v49;
          v55 = sub_1DD4055B0();

          if (sqlite3_db_readonly(v55, 0) == 1)
          {
            v61 = sub_1DD4CA84C();
            OUTLINED_FUNCTION_4_42(&unk_1F58B8CF0, v61);
            *v62 = 1;
            *(v62 + 8) = 0u;
            *(v62 + 24) = 0u;
            *(v62 + 40) = 0;
            *(v62 + 48) = 2;
            swift_willThrow();

            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
          inited = swift_initStackObject();
          *(inited + 16) = v65;
          v57 = MEMORY[0x1E69E6158];
          *(inited + 56) = MEMORY[0x1E69E6158];
          *(inited + 64) = &off_1F58C4E78;
          *(inited + 72) = v52;
          *(inited + 32) = v50;
          *(inited + 40) = v51;
          *(inited + 96) = v57;
          *(inited + 104) = &off_1F58C4E78;
          v58 = 0xE800000000000000;
          v59 = 0x5453494844445542;
          *(inited + 80) = v53;
          v60 = inited;
          switch(v54)
          {
            case 1:
              v58 = 0xE700000000000000;
              v59 = 0x4553454E494843;
              break;
            case 2:
              v58 = 0xE600000000000000;
              v59 = 0x574552424548;
              break;
            case 3:
              v58 = 0xE500000000000000;
              v59 = 0x49524A4948;
              break;
            case 4:
              v58 = 0xE500000000000000;
              v59 = 0x55444E4948;
              break;
            case 5:
              v59 = 0xD000000000000010;
              v58 = v64;
              break;
            case 6:
              v58 = 0xE700000000000000;
              v59 = 0x43494D414C5349;
              break;
            case 7:
              v58 = 0xE90000000000004ELL;
              v59 = 0x4149524F47455247;
              break;
            case 8:
              v59 = 0x4553454E4150414ALL;
              break;
            case 9:
              v58 = 0xE600000000000000;
              v59 = 0x4E41494C554ALL;
              break;
            case 10:
              v58 = 0xE700000000000000;
              v59 = 0x4E414953524550;
              break;
            case 11:
              v58 = 0xE300000000000000;
              v59 = 4411218;
              break;
            default:
              break;
          }

          *(inited + 136) = MEMORY[0x1E69E6158];
          *(inited + 144) = &off_1F58C4E78;
          *(inited + 112) = v59;
          *(inited + 120) = v58;

          sub_1DD4061B8(0xD000000000000029, v66 | 0x8000000000000000, v60);

          swift_setDeallocating();
          sub_1DD46CB4C();
          v49 = (v70 + 5);
          v47 = v73 + 1;
        }
      }

      else
      {
        if (qword_1EE1632D8 != -1)
        {
          OUTLINED_FUNCTION_5(&qword_1EE1632D8);
        }

        v39 = sub_1DD63F9F8();
        __swift_project_value_buffer(v39, qword_1EE16EFE0);
        v40 = v66;
        sub_1DD4C9B4C(v25, v66);
        v41 = sub_1DD63F9D8();
        v42 = sub_1DD640378();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 134218240;
          v44 = *v40;
          sub_1DD4C9BB0(v40);
          *(v43 + 4) = v44;
          *(v43 + 12) = 2048;
          *(v43 + 14) = v27;
          _os_log_impl(&dword_1DD38D000, v41, v42, "Not applying update version %ld out of order; waiting for %ld", v43, 0x16u);
          MEMORY[0x1E12B3DA0](v43, -1, -1);
        }

        else
        {
          sub_1DD4C9BB0(v40);
        }

        v45 = sub_1DD4C99E8();
        OUTLINED_FUNCTION_4_42(&type metadata for HolidaysDBUpdateError, v45);
        *v46 = xmmword_1DD642F70;
        swift_willThrow();
      }
    }
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD4CA4A4(uint64_t a1)
{
  sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  v8 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v9 = sub_1DD4CA648(v6, 1);
  if (!v1)
  {
    v10 = v9;
    v11 = sub_1DD4CA8A0(v9);
    if (v12 >> 60 == 15)
    {
      v13 = sub_1DD4C99E8();
      OUTLINED_FUNCTION_4_42(&type metadata for HolidaysDBUpdateError, v13);
      *v14 = 0;
      v14[1] = 0;
      swift_willThrow();
    }

    else
    {
      v15 = v11;
      v16 = v12;
      sub_1DD63CBF8();
      swift_allocObject();
      sub_1DD63CBE8();
      type metadata accessor for HolidaysDBUpdate(0);
      sub_1DD4CA904();
      sub_1DD63CBD8();

      sub_1DD3AD77C(v15, v16);
    }
  }
}

id sub_1DD4CA648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DD63CE08();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1DD63CE68();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1DD63CD98();

    swift_willThrow();
    v13 = sub_1DD63CE68();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

unint64_t sub_1DD4CA84C()
{
  result = qword_1ECCDDB38;
  if (!qword_1ECCDDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB38);
  }

  return result;
}

uint64_t sub_1DD4CA8A0(void *a1)
{
  v1 = [a1 regularFileContents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63CF28();

  return v3;
}

unint64_t sub_1DD4CA904()
{
  result = qword_1ECCDDB40;
  if (!qword_1ECCDDB40)
  {
    type metadata accessor for HolidaysDBUpdate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB40);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD4CA970(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DD4CA9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}