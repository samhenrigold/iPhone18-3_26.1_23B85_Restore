uint64_t sub_EB228()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_EB2A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  memcpy(__dst, (a1 + 168), 0x179uLL);
  result = sub_42D84(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v3, __dst, sizeof(v3));
    if ((sub_DF2A8() & 1) == 0)
    {
      return _swiftEmptySetSingleton;
    }

    return v1;
  }

  return result;
}

uint64_t sub_EB350(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_E9B64(a1, a2);
}

uint64_t sub_EB3F8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_EB98C((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
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
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
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
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_32F04((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
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

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_EB98C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
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

uint64_t sub_EB98C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_EBB90(uint64_t a1)
{
  v2 = type metadata accessor for AttributeAffinityResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_EBBEC(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
LABEL_5:
    v6 = *(a2 + 16);
    v7 = a2 + 32;
    v4 = _swiftEmptyArrayStorage;
    v8 = v6;
LABEL_6:
    v9 = v7 + 40 * v8;
    while (v8)
    {
      if (--v8 >= v6)
      {
        __break(1u);
        return _swiftEmptyArrayStorage;
      }

      v10 = (v9 - 40);
      v11 = *(v9 - 8);
      v9 -= 40;
      if (v11 >= 0.0)
      {
        v12 = *v10;
        v13 = *(v10 + 8);
        v14 = v10[2];
        v15 = v10[3];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3788C(0, v4[2] + 1, 1);
          v4 = v21;
        }

        v18 = v4[2];
        v17 = v4[3];
        if (v18 >= v17 >> 1)
        {
          sub_3788C((v17 > 1), v18 + 1, 1);
          v4 = v21;
        }

        v4[2] = v18 + 1;
        v19 = &v4[5 * v18];
        v19[4] = v12;
        *(v19 + 40) = v13;
        v19[6] = v14;
        v19[7] = v15;
        *(v19 + 8) = v11;
        goto LABEL_6;
      }
    }

    return v4;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_35418(*(a2 + 16), 0);
  v5 = sub_3F7C0(&v21, (v4 + 4), v2, a2);

  if (v5 != v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  return v4;
}

Swift::Int sub_EBD88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BD0(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 64];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 + 2))
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = v13[32];
          v16 = *v13;
          *(v13 + 24) = *(v13 - 1);
          v17 = *(v13 + 5);
          v18 = *(v13 + 6);
          *(v13 + 40) = v16;
          *(v13 + 7) = *(v13 + 2);
          *(v13 - 2) = v14;
          *(v13 - 8) = v15;
          *v13 = v17;
          *(v13 + 1) = v18;
          *(v13 + 2) = v11;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_ED364(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_EBEF8()
{

  sub_2BF8((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_EBF64(uint64_t a1, _BYTE *a2)
{
  *(v3 + 3424) = v2;
  *(v3 + 3416) = a1;
  *(v3 + 3489) = *a2;
  *(v3 + 3490) = a2[1];
  return _swift_task_switch(sub_EBF98, 0, 0);
}

uint64_t sub_EBF98()
{
  v1 = swift_task_alloc();
  *(v0 + 3432) = v1;
  *v1 = v0;
  v1[1] = sub_EC048;

  return sub_EC9EC(v0 + 3488);
}

uint64_t sub_EC048()
{
  *(*v1 + 3440) = v0;

  if (v0)
  {
    v2 = sub_EC950;
  }

  else
  {
    v2 = sub_EC15C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_EC15C()
{
  v1 = *(v0 + 3488);
  if (v1 == 4)
  {
    v2 = *(v0 + 3424);
    v3 = v2[6];
    v4 = v2[7];
    sub_2698(v2 + 3, v3);
    v9 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    *(v0 + 3448) = v5;
    *v5 = v0;
    v5[1] = sub_EC2F8;

    return v9(v0 + 16, v3, v4);
  }

  else
  {
    sub_ED310();
    swift_allocError();
    *v7 = v1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_EC2F8()
{
  *(*v1 + 3456) = v0;

  if (v0)
  {
    v2 = sub_EC968;
  }

  else
  {
    v2 = sub_EC40C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_EC40C()
{
  v10 = v0;
  LODWORD(v1) = *(v0 + 3490);
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  if (v1 == 5)
  {
    v1 = 0x402030100uLL >> (8 * *(v0 + 1145));
  }

  v2 = *(v0 + 3456);
  v9[0] = v1;
  sub_ECF40(v9, v0 + 3376);
  if (v2)
  {
    sub_2B54(v0 + 1136);
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 3400);
    v6 = *(v0 + 3408);
    sub_2698((v0 + 3376), v5);
    memcpy((v0 + 2256), (v0 + 1136), 0x460uLL);
    v8 = (*(v6 + 8) + **(v6 + 8));
    v7 = swift_task_alloc();
    *(v0 + 3464) = v7;
    *v7 = v0;
    v7[1] = sub_EC5DC;

    return v8(v0 + 2256, v5, v6);
  }
}

uint64_t sub_EC5DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3472) = a1;
  *(v3 + 3480) = v1;

  if (v1)
  {
    v4 = sub_EC980;
  }

  else
  {
    v4 = sub_EC6F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_EC6F4()
{
  v30 = v0;
  v1 = *(v0 + 3480);
  v29 = *(v0 + 3472);

  sub_EBD88(&v29);
  if (v1)
  {
  }

  else
  {
    v3 = *(v0 + 3489);

    v4 = sub_EBBEC(v3, v29);

    result = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 4;
      v8 = _swiftEmptyArrayStorage;
      v27 = result;
      v28 = v0;
      v26 = result + 4;
      while (2)
      {
        v9 = result[2];
        v10 = *(v0 + 1592);
        if (v6 > v9)
        {
          v9 = v6;
        }

LABEL_9:
        if (v6 == v9)
        {
          __break(1u);
          return result;
        }

        v11 = &v7[5 * v6];
        v12 = *v11;
        ++v6;
        v13 = *(v10 + 16);
        v14 = (v10 + 32);
        while (v13)
        {
          v15 = *v14++;
          --v13;
          if (v15 == v12)
          {
            if (v6 != v5)
            {
              goto LABEL_9;
            }

            goto LABEL_22;
          }
        }

        v16 = *(v11 + 8);
        v17 = v11[2];
        v18 = v11[3];
        v19 = v11[4];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3788C(0, *(v8 + 2) + 1, 1);
          v8 = v29;
        }

        v22 = *(v8 + 2);
        v21 = *(v8 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_3788C((v21 > 1), v22 + 1, 1);
          v8 = v29;
        }

        *(v8 + 2) = v22 + 1;
        v23 = &v8[40 * v22];
        *(v23 + 4) = v12;
        v23[40] = v16;
        *(v23 + 6) = v17;
        *(v23 + 7) = v18;
        *(v23 + 8) = v19;
        result = v27;
        v0 = v28;
        v7 = v26;
        if (v6 != v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

LABEL_22:
    v24 = *(v0 + 3416);

    *v24 = v8;
    memcpy(v24 + 1, (v0 + 1136), 0x460uLL);
    sub_2BF8((v0 + 3376));
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_EC980()
{
  sub_2B54(v0 + 1136);
  sub_2BF8((v0 + 3376));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_EC9EC(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_ECA0C, 0, 0);
}

uint64_t sub_ECA0C()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[13] = v2;
  v3 = *(v2 + 16);
  v0[14] = v3;

  if (v3)
  {
    v0[15] = 0;
    if (*(result + 16))
    {
      sub_EDBE4(result + 32, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      sub_2698(v0 + 2, v5);
      v10 = (*(v6 + 8) + **(v6 + 8));
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = sub_ECBC4;

      return v10(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[11];

    *v8 = 4;
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_ECBC4(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    v5 = sub_ECEDC;
  }

  else
  {
    *(v4 + 57) = a1 & 1;
    v5 = sub_ECCF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_ECCF8()
{
  if ((*(v0 + 57) & 1) == 0)
  {
    v5 = *(v0 + 88);

    *v5 = *(v0 + 56);
    sub_EDC54(v0 + 16);
    goto LABEL_5;
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120) + 1;
  result = sub_EDC54(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 88);

    *v4 = 4;
LABEL_5:
    v6 = *(v0 + 8);

    return v6();
  }

  v7 = *(v0 + 120) + 1;
  *(v0 + 120) = v7;
  v8 = *(v0 + 104);
  if (v7 >= *(v8 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_EDBE4(v8 + 48 * v7 + 32, v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_2698((v0 + 16), v9);
    v12 = (*(v10 + 8) + **(v10 + 8));
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_ECBC4;

    return v12(v9, v10);
  }

  return result;
}

uint64_t sub_ECEDC()
{
  sub_EDC54(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ECF40@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (*(v5 + 16) && (v6 = sub_3AE10(v4), (v7 & 1) != 0))
  {
    sub_404C4(*(v5 + 56) + 40 * v6, v10);
    sub_264B8(v10, a2);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_EDB90();
    swift_allocError();
    *v9 = v4;
    return swift_willThrow();
  }
}

uint64_t sub_ED008(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226C;

  return sub_EBF64(a1, a2);
}

uint64_t sub_ED0B4(_BYTE *a1)
{
  v2 = a1[1];
  *(v1 + 2288) = *a1;
  *(v1 + 2289) = v2;
  v3 = swift_task_alloc();
  *(v1 + 2272) = v3;
  *v3 = v1;
  v3[1] = sub_ED160;

  return sub_EBF64(v1 + 16, (v1 + 2288));
}

uint64_t sub_ED160()
{
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v2 = sub_ED2F8;
  }

  else
  {
    v2 = sub_ED274;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_ED274()
{
  memcpy(v0 + 143, v0 + 2, 0x468uLL);
  v1 = v0[143];

  sub_EDCBC((v0 + 143));
  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_ED310()
{
  result = qword_22BEA0;
  if (!qword_22BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEA0);
  }

  return result;
}

uint64_t sub_ED364(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v92 = v8 + 2;
    v93 = v8[2];
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[2 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_ED954((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 32);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 32);
      v13 = v9 + 2;
      v14 = (v11 + 112);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v10 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
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
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = *(v31 + v19 - 32);
            v24 = (v31 + v18);
            v25 = *(v22 - 24);
            v26 = *(v22 - 2);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = v24[1];
            v30 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v30;
            *v22 = v29;
            *(v24 - 3) = v23;
            *(v24 - 16) = v25;
            *(v24 - 1) = v26;
            *v24 = v27;
            v24[1] = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
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
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_32F04((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
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

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_ED954((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > v8[2])
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 40 * v7 - 8;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 40 * v7 + 32);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (v35 >= *v37)
    {
LABEL_29:
      ++v7;
      v33 += 40;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 8);
    v39 = *(v37 + 16);
    v40 = *(v37 - 16);
    *(v37 + 8) = *(v37 - 32);
    v41 = *(v37 + 24);
    v42 = *(v37 + 32);
    *(v37 + 24) = v40;
    *(v37 + 40) = *v37;
    *(v37 - 32) = v38;
    *(v37 - 24) = v39;
    *(v37 - 16) = v41;
    *(v37 - 8) = v42;
    *v37 = v35;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
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

uint64_t sub_ED954(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

unint64_t sub_EDB90()
{
  result = qword_22BEA8;
  if (!qword_22BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEA8);
  }

  return result;
}

uint64_t sub_EDBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22BEB0, &qword_1C61A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EDC54(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22BEB0, &qword_1C61A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DelegatingGenreRecommendationService.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DelegatingGenreRecommendationService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of MediaTypesRecommendationServiceType.determineRecommendedMediaTypes(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_EE004()
{
  v1 = 0x65726E654778616DLL;
  v2 = 0xD00000000000001FLL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x6F6874754178616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_EE098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_EE724(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_EE0C0(uint64_t a1)
{
  v2 = sub_EE320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EE0FC(uint64_t a1)
{
  v2 = sub_EE320();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.BookSuggestionsConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22BEB8, &qword_1C6240);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v11[3] = v1[2];
  v11[4] = v7;
  v11[1] = v1[4];
  v11[2] = v8;
  sub_2698(a1, a1[3]);
  sub_EE320();
  sub_1B5884();
  v15 = 0;
  v9 = v11[5];
  sub_1B5534();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_1B5534();
  v13 = 2;
  sub_1B54F4();
  v12 = 3;
  sub_1B54F4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_EE320()
{
  result = qword_22BEC0;
  if (!qword_22BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEC0);
  }

  return result;
}

uint64_t WorkServiceConfiguration.BookSuggestionsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22BEC8, &qword_1C6248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_2698(a1, a1[3]);
  sub_EE320();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v27 = 0;
  v9 = sub_1B53F4();
  v26 = 1;
  v23 = sub_1B53F4();
  v25 = 2;
  v10 = sub_1B53B4();
  v12 = v11;
  v22 = v10;
  v24 = 3;
  v13 = sub_1B53B4();
  v15 = v14;
  v16 = *(v6 + 8);
  v21 = v13;
  v16(v8, v5);
  v17 = v22;
  v18 = v23;
  *a2 = v9;
  a2[1] = v18;
  a2[2] = v17;
  a2[3] = v12;
  a2[4] = v21;
  a2[5] = v15;

  sub_2BF8(a1);
}

unint64_t sub_EE620()
{
  result = qword_22BED0;
  if (!qword_22BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BED0);
  }

  return result;
}

unint64_t sub_EE678()
{
  result = qword_22BED8;
  if (!qword_22BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BED8);
  }

  return result;
}

unint64_t sub_EE6D0()
{
  result = qword_22BEE0;
  if (!qword_22BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEE0);
  }

  return result;
}

uint64_t sub_EE724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726E654778616DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6874754178616DLL && a2 == 0xEC00000073444972 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D7710 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7730 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_EE900()
{
  result = qword_22BEE8;
  if (!qword_22BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEE8);
  }

  return result;
}

void sub_EE984(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 48) + ((v7 << 9) | (8 * v9)));
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v32)
    {
      v11 = _swiftEmptyDictionarySingleton[2];
      if (_swiftEmptyDictionarySingleton[3] <= v11)
      {
        sub_17FA44(v11 + 1, 1);
      }

      v12 = sub_1B57E4();
      v13 = &_swiftEmptyDictionarySingleton[8];
      v14 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v15 = v12 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~_swiftEmptyDictionarySingleton[(v15 >> 6) + 8]) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        v18 = v33;
        v19 = v31;
        v21 = v29;
        v20 = v30;
        v22 = v28;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = v13[v16];
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~_swiftEmptyDictionarySingleton[(v15 >> 6) + 8])) | v15 & 0x7FFFFFFFFFFFFFC0;
      v18 = v33;
      v19 = v31;
      v21 = v29;
      v20 = v30;
      v22 = v28;
LABEL_23:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v17) = v10;
      v27 = _swiftEmptyDictionarySingleton[7] + 56 * v17;
      *v27 = v22;
      *(v27 + 8) = v21 & 1;
      *(v27 + 16) = v20;
      *(v27 + 24) = v19;
      *(v27 + 32) = v32;
      *(v27 + 40) = v18;
      *(v27 + 48) = v34;
      ++_swiftEmptyDictionarySingleton[2];
    }

    else
    {
      sub_EF8B4(v28, v29, v30, v31, 0, v33, v34);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t WorkServiceBookScorer.score(_:configuration:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_EEC38, 0, 0);
}

uint64_t sub_EEC38()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_3786C(0, v2, 0);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v6 = v3[3];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v6;
      *(v0 + 16) = v4;
      *(v0 + 32) = v5;
      sub_42BA4(v0 + 16, v0 + 80);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_3786C((v7 > 1), v8 + 1, 1);
      }

      v9 = *(v0 + 16);
      v10 = *(v0 + 24);
      v11 = *(v0 + 32);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      v14 = &_swiftEmptyArrayStorage[7 * v8];
      v15 = *(v0 + 56);
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v14[4] = v9;
      *(v14 + 40) = v10;
      v14[6] = v11;
      *(v14 + 56) = v12;
      v14[8] = v13;
      v3 += 4;
      *(v14 + 9) = v15;
      --v2;
    }

    while (v2);
  }

  *(v0 + 160) = _swiftEmptyArrayStorage;

  v17 = sub_EF544(v16);

  sub_EE984(v17);
  *(v0 + 168) = v18;

  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
    sub_3741C(0, v19, 0);
    v20 = &_swiftEmptyArrayStorage[4];
    v21 = _swiftEmptyArrayStorage[2];
    do
    {
      v23 = *v20;
      v20 += 7;
      v22 = v23;
      v24 = _swiftEmptyArrayStorage[3];
      if (v21 >= v24 >> 1)
      {
        sub_3741C((v24 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      _swiftEmptyArrayStorage[v21++ + 4] = v22;
      --v19;
    }

    while (v19);
  }

  *(v0 + 176) = _swiftEmptyArrayStorage;
  v25 = *(v0 + 152);
  v26 = v25[6];
  v27 = v25[7];
  sub_2698(v25 + 3, v26);
  v30 = (*(v27 + 16) + **(v27 + 16));
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  *v28 = v0;
  v28[1] = sub_EEF08;

  return v30(_swiftEmptyArrayStorage, v26, v27);
}

uint64_t sub_EEF08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_EF328;
  }

  else
  {
    v4 = sub_EF01C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EF01C()
{
  v1 = v0[25];
  v2 = sub_E9318(v0[22], *(v0[19] + 16), v0[20], v0[24]);
  v3 = v0[21];
  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v2;

    v7 = -1;
    v8 = -1 << *(v6 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & v6[8];
    v10 = (63 - v8) >> 6;

    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (v9)
    {
      v13 = v9;
LABEL_14:
      v9 = (v13 - 1) & v13;
      if (*(v3 + 16))
      {
        v15 = (v11 << 9) | (8 * __clz(__rbit64(v13)));
        v16 = *(v6[7] + v15);
        result = sub_43124(*(v6[6] + v15));
        if (v17)
        {
          v18 = *(v3 + 56) + 56 * result;
          v26 = *v18;
          v25 = *(v18 + 8);
          v31 = *(v18 + 32);
          v28 = *(v18 + 16);
          v29 = *(v18 + 40);
          v19 = *(v18 + 48);
          v27 = *(v18 + 24);
          sub_43688(v28, v27);
          v30 = v19;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_3349C(0, *(v12 + 2) + 1, 1, v12);
            v12 = result;
          }

          v21 = *(v12 + 2);
          v20 = *(v12 + 3);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            result = sub_3349C((v20 > 1), v21 + 1, 1, v12);
            v22 = v21 + 1;
            v12 = result;
          }

          *(v12 + 2) = v22;
          v23 = &v12[64 * v21];
          *(v23 + 4) = v26;
          v23[40] = v25;
          *(v23 + 41) = *v32;
          *(v23 + 11) = *&v32[3];
          *(v23 + 6) = v28;
          v23[56] = v27;
          *(v23 + 15) = *&v33[3];
          *(v23 + 57) = *v33;
          *(v23 + 8) = v31;
          *(v23 + 9) = v29;
          *(v23 + 10) = v30;
          *(v23 + 11) = v16;
        }
      }
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v10)
      {
        break;
      }

      v13 = v6[v14 + 8];
      ++v11;
      if (v13)
      {
        v11 = v14;
        goto LABEL_14;
      }
    }

    v24 = v0[1];

    return v24(v12);
  }
}

uint64_t sub_EF328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_EF39C@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = *(v3 + 80);
    v10 = *(v3 + 56);
    sub_43688(v6, *(v3 + 56));
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v10;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return result;
}

uint64_t WorkServiceBookScorer.deinit()
{

  sub_2BF8((v0 + 24));
  return v0;
}

uint64_t WorkServiceBookScorer.__deallocating_deinit()
{

  sub_2BF8((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_EF4AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return WorkServiceBookScorer.score(_:configuration:)(a1);
}

void *sub_EF544(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = (a1 + 80);
  while (1)
  {
    v5 = v2;
    v45 = *(v3 - 40);
    v6 = *(v3 - 4);
    v7 = *(v3 - 24);
    v8 = *(v3 - 2);
    v46 = *(v3 - 1);
    v43 = v3;
    v44 = *(v3 - 6);
    v9 = *v3;
    v10 = sub_43124(v44);
    v12 = v1[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    v16 = v11;
    v41 = v5;
    v38 = v1;
    v17 = v1[3];
    v40 = v6;
    sub_43688(v6, v7);
    v42 = v9;

    v39 = v8;
    if (v17 >= v14)
    {
      v22 = v5;
      v23 = v7;
      v18 = v44;
      v1 = v38;
      v24 = v40;
      v21 = v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_17FD2C(v14, 1);
      v1 = _swiftEmptyDictionarySingleton;
      v18 = v44;
      v19 = sub_43124(v44);
      if ((v16 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v21 = v19;
      v22 = v41;
      v23 = v7;
      v24 = v40;
      if (v16)
      {
LABEL_12:
        v29 = v1[7];
        v30 = *(v29 + 8 * v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 8 * v21) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_339D8(0, *(v30 + 2) + 1, 1, v30);
          *(v29 + 8 * v21) = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        v34 = v33 + 1;
        v35 = v42;
        if (v33 >= v32 >> 1)
        {
          v36 = sub_339D8((v32 > 1), v33 + 1, 1, v30);
          v34 = v33 + 1;
          v30 = v36;
          v35 = v42;
          *(v29 + 8 * v21) = v36;
        }

        *(v30 + 2) = v34;
        v4 = &v30[56 * v33];
        *(v4 + 4) = v18;
        v4[40] = v45;
        *(v4 + 6) = v24;
        v4[56] = v23;
        *(v4 + 8) = v39;
        *(v4 + 9) = v46;
        *(v4 + 10) = v35;
        goto LABEL_4;
      }
    }

    sub_2B0C(&qword_229290, &qword_1BC358);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BCA80;
    *(v25 + 32) = v18;
    *(v25 + 40) = v45;
    *(v25 + 48) = v24;
    *(v25 + 56) = v23;
    *(v25 + 64) = v39;
    *(v25 + 72) = v46;
    *(v25 + 80) = v42;
    v1[(v21 >> 6) + 8] |= 1 << v21;
    *(v1[6] + 8 * v21) = v18;
    *(v1[7] + 8 * v21) = v25;
    v26 = v1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_18;
    }

    v1[2] = v28;
LABEL_4:
    v3 = v43 + 7;
    v2 = v22 - 1;
    if (!v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

unint64_t sub_EF84C()
{
  result = qword_22BF98;
  if (!qword_22BF98)
  {
    sub_1CC1C(&qword_22BFA0, &qword_1C6508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BF98);
  }

  return result;
}

void sub_EF8B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    sub_43CE0(a3, a4);
  }
}

uint64_t sub_EF988@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2698(a1, a1[3]);
  v7 = a2(0);
  result = sub_1B4254();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_EFA0C()
{
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

void *sub_EFA4C(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (!v40)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C080, &qword_1C65E0);
  result = sub_1B4264();
  if (!v38)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  result = sub_1B4264();
  if (!v36)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A758, &unk_1C0540);
  result = sub_1B4264();
  if (!v34)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C048, &qword_1C6590);
  result = sub_1B4264();
  if (v32)
  {
    v3 = sub_40474(v37, v38);
    v26[1] = v26;
    __chkstk_darwin(v3);
    v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = sub_40474(v33, v34);
    v26[0] = v26;
    __chkstk_darwin(v7);
    v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v5;
    v12 = *v9;
    v13 = type metadata accessor for DelegatingCollectionService();
    v30[3] = v13;
    v30[4] = &off_2207B8;
    v30[0] = v11;
    v14 = type metadata accessor for DelegatingBookScorer();
    v28 = v14;
    v29 = &off_2195F8;
    v27[0] = v12;
    type metadata accessor for BookRecommendationService();
    v15 = swift_allocObject();
    v16 = sub_40474(v30, v13);
    __chkstk_darwin(v16);
    v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_40474(v27, v28);
    __chkstk_darwin(v20);
    v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v18;
    v25 = *v22;
    v15[10] = v13;
    v15[11] = &off_2207B8;
    v15[7] = v24;
    v15[20] = v14;
    v15[21] = &off_2195F8;
    v15[17] = v25;
    sub_264B8(&v39, (v15 + 2));
    sub_264B8(&v35, (v15 + 12));
    sub_264B8(&v31, (v15 + 22));
    sub_2BF8(v27);
    sub_2BF8(v30);
    sub_2BF8(v33);
    sub_2BF8(v37);
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_EFF4C(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D8, &qword_1C05D8);
  result = sub_1B4264();
  if (v4)
  {
    type metadata accessor for NextInSeriesProcessorService();
    v2 = swift_allocObject();
    sub_264B8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_EFFE4(void *a1)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D8, &qword_1C05D8);
  result = sub_1B4264();
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = type metadata accessor for StringOperationFlattener();
  v4 = swift_allocObject();
  sub_2B0C(&qword_22C068, &qword_1C65C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BFC80;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C070, &unk_1C65C8);
  result = sub_1B4264();
  v6 = v20;
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v21;
  v8 = sub_2698(&v19, v20);
  *(v5 + 56) = v6;
  *(v5 + 64) = v7[1];
  v9 = sub_40528((v5 + 32));
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  v10 = swift_allocObject();
  *(v5 + 96) = v3;
  *(v5 + 104) = &protocol witness table for StringOperationFlattener;
  *(v5 + 72) = v10;
  sub_2BF8(&v19);
  v11 = type metadata accessor for AggregateFlattener();
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v20 = v11;
  v21 = &protocol witness table for AggregateFlattener;
  *&v19 = v12;
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A780, &qword_1C0570);
  result = sub_1B4264();
  if (v18)
  {
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22C078, &qword_1C65D8);
    sub_1B4834();
    sub_1B4244();

    v15 = v3;
    v16 = &protocol witness table for StringOperationFlattener;
    *&v14 = v4;
    type metadata accessor for BookRecommendationPostHydrationFilteringService();
    v13 = swift_allocObject();
    *(v13 + 224) = 0;
    sub_264B8(&v24, v13 + 16);
    sub_264B8(&v22, v13 + 56);
    sub_264B8(&v14, v13 + 136);
    sub_264B8(&v19, v13 + 96);
    sub_264B8(&v17, v13 + 176);
    *(v13 + 216) = &type metadata for UseV2AndMetadata & 1;
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_F0344()
{
  v0 = sub_1B4344();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22C040, &qword_1C6588);
  sub_1B4304();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_1B4214();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C048, &qword_1C6590);
  sub_1B4304();

  v5(v3, v4, v0);
  sub_1B4214();

  v6(v3, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C050, &qword_1C6598);
  sub_1B4304();

  v5(v3, v4, v0);
  sub_1B4214();

  v6(v3, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C058, &unk_1C65A0);
  sub_1B4304();

  v5(v3, v4, v0);
  sub_1B4214();

  v6(v3, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  sub_1B42F4();

  v5(v3, v4, v0);
  sub_1B4214();

  v6(v3, v0);
  sub_1B4294();
  type metadata accessor for BookRecommendationService();
  sub_1B42F4();

  v5(v3, v4, v0);
  sub_1B4214();

  v6(v3, v0);
  sub_1B4294();
  type metadata accessor for NextInSeriesProcessorService();
  sub_1B42F4();

  v5(v3, v4, v0);
  sub_1B4214();

  v6(v3, v0);
  sub_1B4294();
  type metadata accessor for BookRecommendationPostHydrationFilteringService();
  sub_1B42F4();

  v5(v3, v4, v0);
  sub_1B4214();

  return (v6)(v3, v0);
}

uint64_t sub_F08B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_37658(0, v1, 0);
  v3 = a1 + 56;
  result = sub_1B4F84();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(*(a1 + 48) + 8 * result);
    if (v10 < 0)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_37658((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    _swiftEmptyArrayStorage[v13 + 4] = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_25;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_26;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_42FF0(result, v11, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_20;
        }
      }

      sub_42FF0(result, v11, 0);
LABEL_20:
      v5 = v23;
    }

    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_F0AD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 48);
    v9 = _swiftEmptyArrayStorage;
    v20 = *(a3 + 16);
    v21 = result;
    while (v7 < *(v4 + 16))
    {
      v10 = *v8;
      v11 = *(v8 - 4);
      v12 = *(v8 - 2);
      v24 = *(v8 - 2);
      v25 = v12;
      v26 = v11;
      v27 = v10;

      v13 = v6(&v24);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v13)
      {
        v14 = v24;
        v15 = v25;
        v16 = v26;
        v23 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((result & 1) == 0)
        {
          result = sub_37998(0, v9[2] + 1, 1);
          v9 = v28;
        }

        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_37998((v17 > 1), v18 + 1, 1);
          v9 = v28;
        }

        v9[2] = v18 + 1;
        v19 = &v9[3 * v18];
        v19[4] = v14;
        *(v19 + 10) = v15;
        *(v19 + 44) = v16;
        v4 = a3;
        v19[6] = v23;
        v6 = v21;
        v5 = v20;
      }

      else
      {
      }

      ++v7;
      v8 += 3;
      if (v5 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_16:

    return v9;
  }

  return result;
}

uint64_t sub_F0C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    result = sub_37998(0, v4, 0);
    v7 = (a1 + 88);
    while (1)
    {
      v8 = *(v7 - 7);
      if (v8 < 0)
      {
        break;
      }

      v9 = *v7;
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_37998((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[3 * v11];
      *(v12 + 4) = v8;
      v13 = v9;
      v12[10] = v13;
      *(v12 + 44) = 0;
      *(v12 + 6) = 0;
      v7 += 8;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    result = type metadata accessor for SeedBasedRecommendationRequest(0);
    *a2 = *(v2 + *(result + 44));
    *(a2 + 8) = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_F0DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = sub_F08B4(a1);
  }

  else
  {
    v6 = &off_213328;
  }

  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  v8 = *(v3 + *(result + 32));
  v9 = *(v3 + *(result + 40)) & 2;
  if ((*(v3 + *(result + 40)) & 1) == 0)
  {
    if (!v9)
    {

      sub_26110(0, v8);
      sub_F1484();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 7;
      return swift_willThrow();
    }

    v9 = 1;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    *a3 = 0;
    *(a3 + 8) = v8;
    *(a3 + 16) = v6;
    *(a3 + 24) = 0;
    *(a3 + 32) = v9;
    *(a3 + 40) = a2;
    *(a3 + 44) = 0;
    *(a3 + 48) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_F0EB4@<X0>(void *a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 48);
  if (v4 <= 1)
  {
    if (!*(v2 + 48))
    {
      v8 = v2[4];
      v7 = v2[5];
      v10 = v2[2];
      v9 = v2[3];
      v11 = v2[1];
      *a2 = v3;
      a2[1] = v11;
      a2[2] = v10;
      a2[3] = v9;
      a2[4] = v8;
      a2[5] = v7;
    }

    sub_F1484();
    swift_allocError();
    *v14 = v3;
    *(v14 + 8) = 0;
    goto LABEL_11;
  }

  if (v4 == 2)
  {
    sub_F1484();
    swift_allocError();
    *v5 = v3;
    v6 = 1;
    goto LABEL_8;
  }

  if (v4 == 3)
  {
    sub_F1484();
    swift_allocError();
    *v5 = v3;
    v6 = 2;
LABEL_8:
    *(v5 + 8) = v6;
LABEL_11:

    return swift_willThrow();
  }

  sub_F1484();
  swift_allocError();
  *v13 = v3;
  *(v13 + 8) = 3;
  return swift_willThrow();
}

void sub_F1014(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = *v1;
  if (!*v1)
  {
    sub_F1484();
    swift_allocError();
    *v35 = 1;
    *(v35 + 8) = 7;
    swift_willThrow();
    return;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 48;
    v36 = v3 - 1;
    v6 = _swiftEmptyArrayStorage;
    v39 = *(v2 + 16);
    v40 = *v1;
    v37 = v2 + 48;
    while (1)
    {
      v38 = v6;
      v7 = (v5 + 24 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v9 = *(v7 - 2);
        if (v9 < 0)
        {
          goto LABEL_32;
        }

        v10 = *v7;
        if ((*(v7 - 4) & 1) == 0)
        {
          break;
        }

        v11 = 4;
LABEL_15:
        sub_F1484();
        swift_allocError();
        *v12 = v9;
        *(v12 + 8) = v11;
        swift_willThrow();
        v13 = qword_228358;

        if (v13 != -1)
        {
          swift_once();
        }

        v14 = sub_1B4644();
        sub_50E58(v14, qword_260C80);

        swift_errorRetain();
        v15 = sub_1B4624();
        v16 = sub_1B4DA4();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 134218242;
          *(v17 + 4) = v9;

          *(v17 + 12) = 2112;
          swift_errorRetain();
          v19 = _swift_stdlib_bridgeErrorToNSError();
          *(v17 + 14) = v19;
          *v18 = v19;
          _os_log_impl(&dword_0, v15, v16, "failed to create recommended book for %lld with error %@", v17, 0x16u);
          sub_42F48(v18, &qword_22B250, &qword_1C3850);
          v3 = v39;

          v2 = v40;
        }

        else
        {
        }

        ++v8;
        v7 += 3;
        if (v3 == v8)
        {
          return;
        }
      }

      if (!v10)
      {
        v11 = 5;
        goto LABEL_15;
      }

      if (!*(v10 + 16))
      {
        break;
      }

      v20 = *(v10 + 32);
      v21 = *(v7 - 2);
      v41 = 0;
      v42 = 0;
      v43 = v21;
      sub_2B0C(&qword_22C090, &qword_1C65F0);
      v22 = sub_1B52B4();

      v23 = v41;
      v24 = v42;
      v25 = v43;
      sub_1E04C(v41, v42);
      v26 = sub_3AFEC(v23, v24);
      if (v27)
      {
        goto LABEL_33;
      }

      v22[(v26 >> 6) + 8] |= 1 << v26;
      v28 = (v22[6] + 16 * v26);
      *v28 = v23;
      v28[1] = v24;
      *(v22[7] + 8 * v26) = v25;
      v29 = v22[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      v6 = v38;
      if (v30)
      {
        goto LABEL_34;
      }

      v22[2] = v31;

      sub_42F48(&v41, &qword_22C098, &qword_1C65F8);

      if (v20 < 0)
      {
        goto LABEL_35;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_3427C(0, *(v38 + 2) + 1, 1, v38);
      }

      v33 = *(v6 + 2);
      v32 = *(v6 + 3);
      if (v33 >= v32 >> 1)
      {
        v6 = sub_3427C((v32 > 1), v33 + 1, 1, v6);
      }

      v4 = v8 + 1;
      *(v6 + 2) = v33 + 1;
      v34 = &v6[24 * v33];
      *(v34 + 4) = v9;
      *(v34 + 5) = v22;
      *(v34 + 6) = v20;
      v5 = v37;
      v3 = v39;
      v2 = v40;
      if (v36 == v8)
      {
        return;
      }
    }

    v11 = 6;
    goto LABEL_15;
  }
}

unint64_t sub_F1484()
{
  result = qword_22C088;
  if (!qword_22C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C088);
  }

  return result;
}

void *sub_F14D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = (v1 + 72);
      while (v3 < *(v1 + 16))
      {
        if ((*(v4 - 32) & 1) == 0 && (*(v4 - 16) & 1) == 0)
        {
          v6 = *(v4 - 15);
          if (v6 != 2 && (*v4 & 1) == 0)
          {
            v7 = *(v4 - 5);
            v8 = *(v4 - 3);
            if ((v8 | v7) < 0)
            {
              goto LABEL_29;
            }

            if ((~*(v4 - 1) & 0x7FF0000000000000) == 0)
            {
              goto LABEL_30;
            }

            v9 = *(v4 - 1);
            if (v9 <= -9.22337204e18)
            {
              goto LABEL_31;
            }

            if (v9 >= 9.22337204e18)
            {
              goto LABEL_32;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11 = sub_43124(v7);
            v13 = _swiftEmptyDictionarySingleton[2];
            v14 = (v12 & 1) == 0;
            v15 = __OFADD__(v13, v14);
            v16 = v13 + v14;
            if (v15)
            {
              goto LABEL_33;
            }

            v17 = v12;
            if (_swiftEmptyDictionarySingleton[3] >= v16)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v23 = v11;
                sub_1874E4();
                v11 = v23;
              }
            }

            else
            {
              sub_181E24(v16, isUniquelyReferenced_nonNull_native);
              v11 = sub_43124(v7);
              if ((v17 & 1) != (v18 & 1))
              {
                goto LABEL_35;
              }
            }

            v19 = v9;
            if (v17)
            {
              v5 = _swiftEmptyDictionarySingleton[7] + 40 * v11;
              *v5 = v19;
              *(v5 + 8) = v8;
              *(v5 + 16) = v6 & 1;
              *(v5 + 24) = 0;
              *(v5 + 32) = 1;
            }

            else
            {
              _swiftEmptyDictionarySingleton[(v11 >> 6) + 8] |= 1 << v11;
              *(_swiftEmptyDictionarySingleton[6] + 8 * v11) = v7;
              v20 = _swiftEmptyDictionarySingleton[7] + 40 * v11;
              *v20 = v19;
              *(v20 + 8) = v8;
              *(v20 + 16) = v6 & 1;
              *(v20 + 24) = 0;
              *(v20 + 32) = 1;
              v21 = _swiftEmptyDictionarySingleton[2];
              v15 = __OFADD__(v21, 1);
              v22 = v21 + 1;
              if (v15)
              {
                goto LABEL_34;
              }

              _swiftEmptyDictionarySingleton[2] = v22;
            }
          }
        }

        ++v3;
        v4 += 48;
        if (v2 == v3)
        {
          return _swiftEmptyDictionarySingleton;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_1B5784();
      __break(1u);
    }

    else
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  else
  {

    return sub_130E18(_swiftEmptyArrayStorage);
  }

  return result;
}

void *sub_F1750()
{
  v1 = *(v0 + 24);
  if (!v1)
  {

    return sub_12DA78(_swiftEmptyArrayStorage);
  }

  v27 = *(v1 + 16);
  if (!v27)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v26 = v1 + 32;
  v25 = *(v0 + 24);
  while (v2 < *(v1 + 16))
  {
    v3 = (v26 + 16 * v2);
    v4 = *v3;
    if (*v3 < 0)
    {
      goto LABEL_32;
    }

    v5 = v3[1];
    v6 = *(v5 + 16);
    if (v6)
    {

      sub_3741C(0, v6, 0);
      v7 = (v5 + 32);
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        if (v9 < 0)
        {
          break;
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_3741C((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        _swiftEmptyArrayStorage[v11 + 4] = v8;
        if (!--v6)
        {
          v1 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_43124(v4);
    v15 = _swiftEmptyDictionarySingleton[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_33;
    }

    v19 = v14;
    if (_swiftEmptyDictionarySingleton[3] < v18)
    {
      sub_17D824(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_43124(v4);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_35;
      }

LABEL_21:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v23 = v13;
    sub_1854E4();
    v13 = v23;
    if (v19)
    {
LABEL_4:
      *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = _swiftEmptyArrayStorage;

      goto LABEL_5;
    }

LABEL_22:
    _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v13) = v4;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyDictionarySingleton[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_34;
    }

    _swiftEmptyDictionarySingleton[2] = v22;
LABEL_5:

    if (++v2 == v27)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1B5784();
  __break(1u);
  return result;
}

void *sub_F1A00()
{
  v1 = *(v0 + 40);
  if (!v1)
  {

    return sub_12DA78(_swiftEmptyArrayStorage);
  }

  v27 = *(v1 + 16);
  if (!v27)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v26 = v1 + 32;
  v25 = *(v0 + 40);
  while (v2 < *(v1 + 16))
  {
    v3 = (v26 + 16 * v2);
    v4 = *v3;
    if (*v3 < 0)
    {
      goto LABEL_32;
    }

    v5 = v3[1];
    v6 = *(v5 + 16);
    if (v6)
    {

      sub_3741C(0, v6, 0);
      v7 = (v5 + 32);
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        if (v9 < 0)
        {
          break;
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_3741C((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        _swiftEmptyArrayStorage[v11 + 4] = v8;
        if (!--v6)
        {
          v1 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_43124(v4);
    v15 = _swiftEmptyDictionarySingleton[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_33;
    }

    v19 = v14;
    if (_swiftEmptyDictionarySingleton[3] < v18)
    {
      sub_17D824(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_43124(v4);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_35;
      }

LABEL_21:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v23 = v13;
    sub_1854E4();
    v13 = v23;
    if (v19)
    {
LABEL_4:
      *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = _swiftEmptyArrayStorage;

      goto LABEL_5;
    }

LABEL_22:
    _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v13) = v4;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyDictionarySingleton[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_34;
    }

    _swiftEmptyDictionarySingleton[2] = v22;
LABEL_5:

    if (++v2 == v27)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_F1CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  v11 = *(v6 + 16);
  if (v11)
  {

    v23 = v8;

    v22 = v9;

    sub_379B8(0, v11, 0);
    v14 = (v6 + 32);
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (v16)
      {
        swift_bridgeObjectRetain_n();
        v17 = sub_F0AD4(a1, a2, v15);
      }

      else
      {

        v17 = 0;
      }

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_379B8((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      _swiftEmptyArrayStorage[v20 + 4] = v17;
      --v11;
    }

    while (v11);
    v4 = a3;
    v8 = v23;
    v9 = v22;
    v21 = v10;
  }

  else
  {

    v21 = v10;
  }

  *v4 = _swiftEmptyArrayStorage;
  v4[1] = v5;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v21;
  v4[5] = v9;
  return result;
}

uint64_t sub_F1E5C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v30 = a1[5];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v28 = a1[3];
  v29 = a2[5];
  if (*(*a1 + 16))
  {
  }

  else
  {
    v10 = 0;
  }

  if (!*(v6 + 16))
  {
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

LABEL_13:
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v11 = *(v6 + 32);
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_5FF1C(v13);
  v14 = v12;
  sub_2B0C(&qword_2293A0, &qword_1BC440);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BCA80;
  *(v15 + 32) = v14;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v31 = v16;

  sub_6024C(v17);
  v18 = v31;
  if (v5)
  {
    v19 = v5;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v32 = v19;

  sub_60158(v20);
  v21 = v32;
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  if (v8)
  {
    v23 = v8;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v33 = v22;

  sub_60034(v23);
  v24 = v33;
  if (v30)
  {
    v25 = v30;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  if (v29)
  {
    v26 = v29;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v34 = v25;

  result = sub_60014(v26);
  *a3 = v15;
  a3[1] = v18;
  a3[2] = v21;
  a3[3] = v24;
  a3[4] = 0;
  a3[5] = v34;
  return result;
}

void Transport.Recommend.Input.body.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_F2080(v2, v3, v4, v5, v6, v7);
}

void sub_F2080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

__n128 Transport.Recommend.Input.body.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_F212C(v1[4], v1[5], v1[6], v1[7], v1[8], v1[9]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v6;
  v1[8] = v3;
  v1[9] = v4;
  return result;
}

void sub_F212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

__n128 Transport.Recommend.Input.init(xAppleRequestUUID:xAppleUserExperimentIds:body:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a5 + 32);
  v9 = *(a5 + 40);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  sub_F212C(0, 0, 0, 0, 0, 0);
  result = *a5;
  v11 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v11;
  *(a6 + 64) = v8;
  *(a6 + 72) = v9;
  return result;
}

void Transport.RecommendV2.Input.body.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_F2224(v2, v3, v4, v5);
}

void sub_F2224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 Transport.RecommendV2.Input.body.setter(uint64_t a1)
{
  sub_F22A8(v1[4], v1[5], v1[6], v1[7]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v4;
  return result;
}

void sub_F22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 Transport.RecommendV2.Input.init(xAppleRequestUUID:xAppleUserExperimentIds:body:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  sub_F22A8(0, 0, 0, 0);
  result = *a5;
  v9 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v9;
  return result;
}

uint64_t Transport.PersonalizationMetadata.Input.body.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t Transport.PersonalizationMetadata.Input.init(xAppleRequestUUID:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a3;
  *a4 = a1;
  a4[1] = a2;

  a4[2] = v5;
  return result;
}

__n128 sub_F23D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_F23F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_F2450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_F24D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F251C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_F2598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_F25F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_F2674(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_F2698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 65))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 64);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F26E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_F277C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F27C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_F2828(uint64_t result, void *a2, double a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = a2;
    for (i = (result + 64); ; i += 5)
    {
      v8 = *(i - 4);
      v9 = *i;
      v10 = *(i - 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v5;
      v27 = *v5;
      *v5 = 0x8000000000000000;
      v13 = sub_43124(v8);
      v15 = v12[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        break;
      }

      v19 = v14;
      if (v12[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v13;
          sub_187658();
          v13 = v25;
        }
      }

      else
      {
        sub_1820C4(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_43124(v8);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_17;
        }
      }

      v21 = v9 * a3;
      if (v19)
      {
        v7 = v27[7] + 40 * v13;
        *v7 = v8;
        *(v7 + 8) = v10;
        *(v7 + 16) = _swiftEmptyArrayStorage;
        *(v7 + 24) = 0;
        *(v7 + 32) = v21;
      }

      else
      {
        v27[(v13 >> 6) + 8] |= 1 << v13;
        *(v27[6] + 8 * v13) = v8;
        v22 = v27[7] + 40 * v13;
        *v22 = v8;
        *(v22 + 8) = v10;
        *(v22 + 16) = _swiftEmptyArrayStorage;
        *(v22 + 24) = 0;
        *(v22 + 32) = v21;
        v23 = v27[2];
        v17 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v17)
        {
          goto LABEL_16;
        }

        v27[2] = v24;
      }

      v5 = a2;
      *a2 = v27;

      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1B5784();
    __break(1u);
  }

  return result;
}

uint64_t sub_F2A24(uint64_t result, uint64_t *a2, double a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = v4 - 1;
    v8 = (result + 64);
    do
    {
      v9 = v7;
      v10 = *v8;
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = *(v8 - 24);
      v14 = *(v8 - 4);
      v15 = v13;
      v16 = v12;
      v17 = v11;
      v18 = v10;

      sub_F34CC(&v14, a2, a3);

      if (v3)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 5;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_F2AE4(uint64_t a1)
{
  *(v2 + 3376) = v1;
  *(v2 + 3368) = a1;
  *(v2 + 3352) = *a1;
  *(v2 + 3384) = *(a1 + 16);
  memcpy((v2 + 2256), (a1 + 24), 0x448uLL);

  return _swift_task_switch(sub_F2B74, 0, 0);
}

uint64_t sub_F2B74()
{
  v1 = *(v0 + 3384);
  v2 = *(v0 + 3376);
  v3 = *(v0 + 3368);
  v4 = v2[10];
  v5 = v2[11];
  sub_2698(v2 + 7, v4);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v1;
  memcpy((v0 + 40), v3 + 24, 0x448uLL);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  *(v0 + 3392) = v6;
  *v6 = v0;
  v6[1] = sub_F2CD8;

  return v8(v0 + 16, v4, v5);
}

uint64_t sub_F2CD8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_F2F70;
  }

  else
  {
    *(v4 + 3400) = a1;
    v5 = sub_F2E04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_F2E04()
{
  *(v0 + 3408) = *(v0 + 3400);
  v1 = *(v0 + 3384);
  v2 = *(v0 + 3376);
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  *(v0 + 1136) = *(v0 + 3352);
  *(v0 + 1152) = v1;
  memcpy((v0 + 1160), (v0 + 2256), 0x448uLL);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  *(v0 + 3416) = v5;
  *v5 = v0;
  v5[1] = sub_F30E0;

  return v7(v0 + 1136, v3, v4);
}

uint64_t sub_F2F70()
{
  *(v0 + 3408) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 3384);
  v2 = *(v0 + 3376);
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  *(v0 + 1136) = *(v0 + 3352);
  *(v0 + 1152) = v1;
  memcpy((v0 + 1160), (v0 + 2256), 0x448uLL);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  *(v0 + 3416) = v5;
  *v5 = v0;
  v5[1] = sub_F30E0;

  return v7(v0 + 1136, v3, v4);
}

uint64_t sub_F30E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3424) = v1;

  if (v1)
  {

    v5 = sub_F336C;
  }

  else
  {
    *(v4 + 3432) = a1;
    v5 = sub_F3210;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_F3210()
{
  v13 = v0;
  v1 = *(v0 + 429);
  v2 = *(v0 + 426);
  v3 = v0[423];
  v11 = _swiftEmptyDictionarySingleton;
  sub_F2828(v2, &v11, v3);

  sub_F2A24(v1, &v11, v3);

  v4 = v11;
  v5 = v11[2];
  if (v5)
  {
    v6 = sub_35418(v11[2], 0);
    v7 = sub_3F630(&v12, (v6 + 4), v5, v4);
    v8 = v12;

    result = sub_417B8(v8);
    if (v7 != v5)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v10 = *(v0 + 1);

  return v10(v6);
}

uint64_t sub_F336C()
{
  v12 = v0;
  v1 = *(v0 + 426);
  v2 = v0[423];
  v10 = _swiftEmptyDictionarySingleton;
  sub_F2828(v1, &v10, v2);

  sub_F2A24(_swiftEmptyArrayStorage, &v10, v2);

  v3 = v10;
  v4 = v10[2];
  if (v4)
  {
    v5 = sub_35418(v10[2], 0);
    v6 = sub_3F630(&v11, (v5 + 4), v4, v3);
    v7 = v11;

    result = sub_417B8(v7);
    if (v6 != v4)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v9 = *(v0 + 1);

  return v9(v5);
}

unint64_t sub_F34CC(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (1.0 - a3) * (*(a1 + 32) * 0.5 + 0.5);
  v21 = *a1;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v9 = *a2;
  if (*(*a2 + 16) && (v10 = sub_43124(v4), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 40 * v10;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 32);

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_F372C(&v21);
    v26 = v14;
    sub_60340(v6);

    v16 = v26;
    v26 = v4;
    v27 = v13;
    v28 = v16;
    v29 = 0;
    v30 = v8 + v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a2;
    *a2 = 0x8000000000000000;
    result = sub_54758(&v26, v4, isUniquelyReferenced_nonNull_native);
    v19 = v31;
  }

  else
  {

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a2;
    *a2 = 0x8000000000000000;
    result = sub_54758(&v21, v4, v20);
    v19 = v26;
  }

  *a2 = v19;
  return result;
}

uint64_t sub_F3694(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return sub_F2AE4(a1);
}

uint64_t Transport.Client.server.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 152);
  a1[1] = v2;
}

uint64_t Transport.Client.server.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 152) = v2;
  *(v1 + 160) = v3;
  return result;
}

uint64_t Transport.Client.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_41BF8(v2, v3);

  return sub_41BF8(v4, v5);
}

__n128 Transport.Client.configuration.setter(uint64_t a1)
{
  v3 = v1[23];
  v4 = v1[24];
  sub_41C08(v1[21], v1[22]);
  sub_41C08(v3, v4);
  result = *a1;
  *(v1 + 23) = *(a1 + 16);
  *(v1 + 21) = result;
  return result;
}

uint64_t Transport.Client.transport.setter(__int128 *a1)
{
  sub_2BF8((v1 + 200));

  return sub_264B8(a1, v1 + 200);
}

double Transport.Client.init(server:configuration:transport:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  *(a4 + 152) = *a1;
  *(a4 + 160) = v6;
  *(a4 + 168) = v7;
  *(a4 + 176) = v8;
  *(a4 + 184) = v9;
  *(a4 + 192) = v10;
  sub_404C4(a3, a4 + 200);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  sub_41BF8(v7, v8);
  sub_41BF8(v9, v10);
  ClientConverter.init(configuration:)(v16, v17);
  sub_2BF8(a3);
  v11 = v17[7];
  *(a4 + 96) = v17[6];
  *(a4 + 112) = v11;
  *(a4 + 128) = v17[8];
  *(a4 + 144) = v18;
  v12 = v17[3];
  *(a4 + 32) = v17[2];
  *(a4 + 48) = v12;
  v13 = v17[5];
  *(a4 + 64) = v17[4];
  *(a4 + 80) = v13;
  result = *v17;
  v15 = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = v15;
  return result;
}

uint64_t Transport.Client.recommend(input:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = a2[4];
  v5 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return _swift_task_switch(sub_F3A14, 0, 0);
}

uint64_t sub_F3A14()
{
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_F3B5C;
  v6 = *(v0 + 96);

  return sub_F4974(v6, (v0 + 16), sub_F44B4, v2, &unk_1CF410, v3, sub_F4958, v4);
}

uint64_t sub_F3B5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F3CAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v71 = a2;
  v64 = a3;
  v4 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - v5;
  v7 = sub_1B3F34();
  *&v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_1B3D64();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v17 = *(a1 + 152);
  v18 = *(a1 + 160);
  sub_1B3D54();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_42F48(v12, &qword_22C200, &unk_1CE6C0);
    type metadata accessor for ClientErrorPayload(0);
    sub_FA3E0();
    swift_allocError();
    *v19 = v17;
    v19[1] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_1B3D44();
    v72._countAndFlagsBits = 0xD000000000000013;
    v72._object = 0x80000000001D7910;
    sub_1B48D4(v72);
    v21(&v67, 0);
    sub_1B3D34();
    v22 = v65;
    if ((*(v65 + 48))(v6, 1, v7) == 1)
    {
      sub_42F48(v6, &qword_22C1F8, &qword_1CFD60);
      type metadata accessor for ClientErrorPayload(0);
      sub_FA3E0();
      swift_allocError();
      (*(v14 + 16))(v23, v16, v13);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v14 + 8))(v16, v13);
    }

    else
    {
      v59 = v16;
      v60 = v14;
      v61 = v13;
      v24 = *(v22 + 32);
      v24(v9, v6, v7);
      v25 = v64;
      v24(v64, v9, v7);
      v26 = type metadata accessor for ClientCurrency.Request(0);
      v27 = v25 + v26[7];
      v65 = xmmword_1C6AD0;
      *v27 = xmmword_1C6AD0;
      v28 = (v25 + v26[5]);
      *v28 = 1414745936;
      v28[1] = 0xE400000000000000;
      v29 = v26[6];
      *(v25 + v29) = _swiftEmptyArrayStorage;
      sub_85D94(*v27, *(v27 + 8));
      *v27 = v65;
      *(v25 + v29) = _swiftEmptyArrayStorage;
      v30 = sub_3324C(0, 1, 1, _swiftEmptyArrayStorage);
      *(v25 + v29) = v30;
      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_3324C((v31 > 1), v32 + 1, 1, v30);
      }

      v33 = v71;
      *(v30 + 2) = v32 + 1;
      v34 = &v30[32 * v32];
      strcpy(v34 + 32, "content-type");
      v34[45] = 0;
      *(v34 + 23) = -5120;
      *(v34 + 6) = 0xD000000000000010;
      *(v34 + 7) = 0x80000000001D7860;
      *(v25 + v29) = v30;
      v35 = *(v33 + 3);
      v70[0] = *(v33 + 2);
      v70[1] = v35;
      v37 = *(v33 + 2);
      v36 = *(v33 + 3);
      v70[2] = *(v33 + 4);
      v67 = v37;
      v68 = v36;
      v69 = *(v33 + 4);
      *&v65 = 0x80000000001D7860;
      sub_43050(v70, v66, &qword_22C280, qword_1C6D28);
      sub_2B0C(&qword_22C280, qword_1C6D28);
      sub_FA628(&qword_22C288, &qword_22C280, qword_1C6D28, sub_FA89C);
      v38 = v63;
      v39 = sub_1B3C54();
      if (v38)
      {
        sub_F212C(v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1));
        (*(v60 + 8))(v59, v61);
        return sub_FA138(v25);
      }

      else
      {
        v41 = v39;
        v42 = v40;
        sub_F212C(v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1));
        sub_85D94(*v27, *(v27 + 8));
        *v27 = v41;
        *(v27 + 8) = v42;
        v63 = v29;
        *(v25 + v29) = v30;
        v44 = *(v30 + 2);
        v43 = *(v30 + 3);
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v30 = sub_3324C((v43 > 1), v44 + 1, 1, v30);
        }

        v46 = v65;
        *(v30 + 2) = v45;
        v47 = &v30[32 * v44];
        *(v47 + 4) = 0x747065636361;
        *(v47 + 5) = 0xE600000000000000;
        *(v47 + 6) = 0xD000000000000010;
        *(v47 + 7) = v46;
        v48 = v63;
        *(v25 + v63) = v30;
        v49 = v33[1];
        if (v49)
        {
          v50 = *v33;
          *(v25 + v48) = v30;
          v51 = *(v30 + 3);

          if ((v44 + 2) > (v51 >> 1))
          {
            v30 = sub_3324C((v51 > 1), v44 + 2, 1, v30);
          }

          *(v30 + 2) = v44 + 2;
          v52 = &v30[32 * v45];
          *(v52 + 4) = 0xD000000000000014;
          *(v52 + 5) = 0x80000000001D78B0;
          *(v52 + 6) = v50;
          *(v52 + 7) = v49;
          v48 = v63;
          *(v25 + v63) = v30;
          v33 = v71;
        }

        v53 = v33[3];
        v54 = v59;
        if (v53)
        {
          v55 = v33[2];
          *(v25 + v48) = v30;
          v57 = *(v30 + 2);
          v56 = *(v30 + 3);

          if (v57 >= v56 >> 1)
          {
            v30 = sub_3324C((v56 > 1), v57 + 1, 1, v30);
            *(v25 + v63) = v30;
          }

          result = (*(v60 + 8))(v54, v61);
          *(v30 + 2) = v57 + 1;
          v58 = &v30[32 * v57];
          *(v58 + 4) = 0xD00000000000001BLL;
          *(v58 + 5) = 0x80000000001D78F0;
          *(v58 + 6) = v55;
          *(v58 + 7) = v53;
          *(v25 + v63) = v30;
        }

        else
        {
          return (*(v60 + 8))(v59, v61);
        }
      }
    }
  }

  return result;
}

uint64_t sub_F44D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_F44F4, 0, 0);
}

uint64_t sub_F44F4()
{
  v1 = v0[4];
  v2 = v1[28];
  v3 = v1[29];
  sub_2698(v1 + 25, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_FA8F0;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6, 0x6E656D6D6F636572, 0xE900000000000064, v2, v3);
}

void *sub_F463C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  result = a1[1];
  if (v5 > 400)
  {
    if (v5 == 401)
    {
      v10 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v10);

      if (!v2)
      {
        sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
        sub_FA2B4();
        result = sub_1B3BA4();
        *a2 = v10;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0;
        v6 = 2;
        goto LABEL_12;
      }

      return result;
    }

    if (v5 == 500)
    {
      v10 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v10);
      if (v2)
      {
      }

      sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
      sub_FA2B4();
      result = sub_1B3BA4();
      *a2 = v10;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0;
      v6 = 3;
      goto LABEL_12;
    }

LABEL_11:
    *a2 = v5;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    v6 = 4;
LABEL_12:
    *(a2 + 48) = v6;
    return result;
  }

  if (v5 == 200)
  {
    v10 = result;

    sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v10);

    if (!v2)
    {
      sub_FA848();
      result = sub_1B3BA4();
      v7 = v13;
      v8 = v11;
      v9 = v12;
      *a2 = v10;
      *(a2 + 8) = v8;
      *(a2 + 24) = v9;
      *(a2 + 40) = v7;
      *(a2 + 48) = 0;
    }

    return result;
  }

  if (v5 != 400)
  {
    goto LABEL_11;
  }

  v10 = result;

  sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v10);

  if (!v2)
  {
    sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA2B4();
    result = sub_1B3BA4();
    *a2 = v10;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    v6 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_F4974(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = a8;
  *(v8 + 576) = a7;
  *(v8 + 568) = a6;
  *(v8 + 560) = a5;
  *(v8 + 552) = a4;
  *(v8 + 544) = a3;
  *(v8 + 536) = a1;
  *(v8 + 592) = sub_2B0C(&qword_22C260, &qword_1C6D18);
  *(v8 + 600) = swift_task_alloc();
  sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v10 = type metadata accessor for ClientCurrency.Request(0);
  *(v8 + 624) = v10;
  *(v8 + 632) = *(v10 - 8);
  *(v8 + 640) = swift_task_alloc();
  v11 = a2[3];
  *(v8 + 128) = a2[2];
  *(v8 + 144) = v11;
  *(v8 + 160) = a2[4];
  v12 = a2[1];
  *(v8 + 96) = *a2;
  *(v8 + 112) = v12;

  return _swift_task_switch(sub_F4AE8, 0, 0);
}

uint64_t sub_F4AE8()
{
  (*(v0 + 544))();
  v1 = *(v0 + 640);
  v2 = swift_task_alloc();
  *(v0 + 648) = v2;
  *(v2 + 16) = *(v0 + 560);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 656) = v3;
  *(v3 + 16) = v0 + 96;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 664) = v4;
  *v4 = v0;
  v4[1] = sub_F4DD8;

  return sub_140A44(v0 + 496, &unk_1C6D20, v2, sub_FA7AC, v3);
}

uint64_t sub_F4DD8()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_F548C;
  }

  else
  {

    v2 = sub_F4F00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F4F00()
{
  v51 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 576);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 512);
  v6 = *(v0 + 520);
  v50[0] = v4;
  v50[1] = v3;
  v50[2] = v5;
  v50[3] = v6;
  v2(v50);
  if (v1)
  {
    v7 = *(v0 + 640);
    v48 = v1;
    v49 = v6;
    v8 = *(v0 + 632);
    v9 = *(v0 + 624);
    v10 = *(v0 + 616);
    v44 = *(v0 + 608);
    v11 = *(v0 + 600);
    v12 = v3;
    v13 = *(v0 + 592);
    v14 = *(v0 + 144);
    *(v0 + 208) = *(v0 + 128);
    *(v0 + 224) = v14;
    *(v0 + 240) = *(v0 + 160);
    v15 = *(v0 + 112);
    *(v0 + 176) = *(v0 + 96);
    *(v0 + 192) = v15;
    sub_FA194(v7, v10);
    v47 = v4;
    v16 = *(v8 + 56);
    v16(v10, 0, 1, v9);
    *(v0 + 400) = v13;
    *(v0 + 408) = sub_42094(&qword_22C268, &qword_22C260, &qword_1C6D18, &protocol conformance descriptor for GeneralClientError<A>);
    v46 = sub_40528((v0 + 376));
    sub_43050(v10, v44, &qword_22C1B0, &qword_1C6CE0);
    v17 = *(v13 + 40);
    v16(v11 + v17, 1, 1, v9);
    v18 = (v0 + 456);
    v19 = v11 + *(v13 + 44);
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *v11 = 0x6E656D6D6F636572;
    *(v11 + 8) = 0xE900000000000064;
    *(v11 + 16) = *(v0 + 176);
    v20 = *(v0 + 192);
    v21 = *(v0 + 208);
    v22 = *(v0 + 240);
    *(v11 + 64) = *(v0 + 224);
    *(v11 + 80) = v22;
    *(v11 + 32) = v20;
    *(v11 + 48) = v21;
    sub_FA7EC(v0 + 176, v0 + 256);
    sub_FA1F8(v44, v11 + v17);
    v23 = *v19;
    v24 = *(v19 + 8);
    v26 = *(v19 + 16);
    v25 = *(v19 + 24);

    sub_4161C(v5, v49);
    sub_FA268(v23, v24, v26, v25);
    *v19 = v47;
    *(v19 + 8) = v12;
    *(v19 + 16) = v5;
    *(v19 + 24) = v49;
    *(v0 + 528) = v48;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
    v27 = swift_dynamicCast();
    v28 = *(v0 + 608);
    v29 = *(v0 + 600);
    v30 = *(v0 + 592);
    v45 = v5;
    if (v27)
    {
      sub_264B8(v18, v0 + 416);
      v31 = *(v0 + 440);
      v32 = *(v0 + 448);
      sub_2698((v0 + 416), v31);
      v33 = (*(v32 + 48))(v31, v32);
      sub_42F48(v28, &qword_22C1B0, &qword_1C6CE0);
      *(v29 + *(v30 + 48)) = v33;
      sub_2BF8((v0 + 416));
    }

    else
    {
      sub_42F48(v28, &qword_22C1B0, &qword_1C6CE0);
      *v18 = 0u;
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0;
      sub_42F48(v18, &qword_22C1C8, &qword_1CE710);
      *(v29 + *(v30 + 48)) = v48;
      swift_errorRetain();
    }

    v36 = *(v0 + 616);
    sub_5ED18(*(v0 + 600), v46, &qword_22C260, &qword_1C6D18);
    sub_42F48(v36, &qword_22C1B0, &qword_1C6CE0);
    v37 = *(v0 + 400);
    v38 = sub_2698((v0 + 376), v37);
    v39 = *(v37 - 8);
    v40 = swift_task_alloc();
    (*(v39 + 16))(v40, v38, v37);
    sub_42094(&qword_22C270, &qword_22C260, &qword_1C6D18, &protocol conformance descriptor for GeneralClientError<A>);
    if (sub_1B55C4())
    {
      (*(v39 + 8))(v40, v37);
    }

    else
    {
      swift_allocError();
      (*(v39 + 32))(v41, v40, v37);
    }

    v42 = *(v0 + 640);
    swift_willThrow();

    sub_2BF8((v0 + 376));

    sub_41670(v45, v49);
    sub_FA138(v42);

    v35 = *(v0 + 8);
  }

  else
  {
    v34 = *(v0 + 640);

    sub_41670(v5, v6);
    sub_FA138(v34);

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_F548C()
{
  v1 = *(v0 + 640);

  sub_FA138(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_F553C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 520) = a8;
  *(v8 + 504) = a6;
  *(v8 + 512) = a7;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  *(v8 + 472) = a1;
  *(v8 + 480) = a3;
  *(v8 + 528) = sub_2B0C(&qword_22C228, &qword_1C6D00);
  *(v8 + 536) = swift_task_alloc();
  sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  v10 = type metadata accessor for ClientCurrency.Request(0);
  *(v8 + 560) = v10;
  *(v8 + 568) = *(v10 - 8);
  *(v8 + 576) = swift_task_alloc();
  v11 = a2[1];
  *(v8 + 80) = *a2;
  *(v8 + 96) = v11;
  v12 = a2[3];
  *(v8 + 112) = a2[2];
  *(v8 + 128) = v12;

  return _swift_task_switch(sub_F569C, 0, 0);
}

uint64_t sub_F569C()
{
  (*(v0 + 480))();
  v1 = *(v0 + 576);
  v2 = swift_task_alloc();
  *(v0 + 584) = v2;
  *(v2 + 16) = *(v0 + 496);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 592) = v3;
  *(v3 + 16) = v0 + 80;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 600) = v4;
  *v4 = v0;
  v4[1] = sub_F5980;

  return sub_140A44(v0 + 432, &unk_1C6D08, v2, sub_FA540, v3);
}

uint64_t sub_F5980()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_F6024;
  }

  else
  {

    v2 = sub_F5AA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F5AA8()
{
  v51 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 512);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v50[0] = v4;
  v50[1] = v3;
  v50[2] = v5;
  v50[3] = v6;
  v2(v50);
  if (v1)
  {
    v7 = *(v0 + 576);
    v48 = v1;
    v49 = v6;
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v44 = *(v0 + 544);
    v11 = *(v0 + 536);
    v12 = v3;
    v13 = *(v0 + 528);
    v14 = *(v0 + 96);
    *(v0 + 144) = *(v0 + 80);
    *(v0 + 160) = v14;
    v15 = *(v0 + 128);
    *(v0 + 176) = *(v0 + 112);
    *(v0 + 192) = v15;
    sub_FA194(v7, v10);
    v47 = v4;
    v16 = *(v8 + 56);
    v16(v10, 0, 1, v9);
    *(v0 + 336) = v13;
    *(v0 + 344) = sub_42094(&qword_22C230, &qword_22C228, &qword_1C6D00, &protocol conformance descriptor for GeneralClientError<A>);
    v46 = sub_40528((v0 + 312));
    sub_43050(v10, v44, &qword_22C1B0, &qword_1C6CE0);
    v17 = *(v13 + 40);
    v16(v11 + v17, 1, 1, v9);
    v18 = (v0 + 392);
    v19 = v11 + *(v13 + 44);
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *v11 = 0x6E656D6D6F636572;
    *(v11 + 8) = 0xEB00000000325664;
    v20 = *(v0 + 144);
    v21 = *(v0 + 160);
    v22 = *(v0 + 192);
    *(v11 + 48) = *(v0 + 176);
    *(v11 + 64) = v22;
    *(v11 + 16) = v20;
    *(v11 + 32) = v21;
    sub_FA578(v0 + 144, v0 + 208);
    sub_FA1F8(v44, v11 + v17);
    v23 = *v19;
    v24 = *(v19 + 8);
    v26 = *(v19 + 16);
    v25 = *(v19 + 24);

    sub_4161C(v5, v49);
    sub_FA268(v23, v24, v26, v25);
    *v19 = v47;
    *(v19 + 8) = v12;
    *(v19 + 16) = v5;
    *(v19 + 24) = v49;
    *(v0 + 464) = v48;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
    v27 = swift_dynamicCast();
    v28 = *(v0 + 544);
    v29 = *(v0 + 536);
    v30 = *(v0 + 528);
    v45 = v5;
    if (v27)
    {
      sub_264B8(v18, v0 + 352);
      v31 = *(v0 + 376);
      v32 = *(v0 + 384);
      sub_2698((v0 + 352), v31);
      v33 = (*(v32 + 48))(v31, v32);
      sub_42F48(v28, &qword_22C1B0, &qword_1C6CE0);
      *(v29 + *(v30 + 48)) = v33;
      sub_2BF8((v0 + 352));
    }

    else
    {
      sub_42F48(v28, &qword_22C1B0, &qword_1C6CE0);
      *v18 = 0u;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0;
      sub_42F48(v18, &qword_22C1C8, &qword_1CE710);
      *(v29 + *(v30 + 48)) = v48;
      swift_errorRetain();
    }

    v36 = *(v0 + 552);
    sub_5ED18(*(v0 + 536), v46, &qword_22C228, &qword_1C6D00);
    sub_42F48(v36, &qword_22C1B0, &qword_1C6CE0);
    v37 = *(v0 + 336);
    v38 = sub_2698((v0 + 312), v37);
    v39 = *(v37 - 8);
    v40 = swift_task_alloc();
    (*(v39 + 16))(v40, v38, v37);
    sub_42094(&qword_22C238, &qword_22C228, &qword_1C6D00, &protocol conformance descriptor for GeneralClientError<A>);
    if (sub_1B55C4())
    {
      (*(v39 + 8))(v40, v37);
    }

    else
    {
      swift_allocError();
      (*(v39 + 32))(v41, v40, v37);
    }

    v42 = *(v0 + 576);
    swift_willThrow();

    sub_2BF8((v0 + 312));

    sub_41670(v45, v49);
    sub_FA138(v42);

    v35 = *(v0 + 8);
  }

  else
  {
    v34 = *(v0 + 576);

    sub_41670(v5, v6);
    sub_FA138(v34);

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_F6024()
{
  v1 = *(v0 + 576);

  sub_FA138(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_F60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v15;
  v8[39] = v16;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[32] = a3;
  v8[33] = a4;
  v8[30] = a1;
  v8[31] = a2;
  v8[40] = sub_2B0C(&qword_22C1A8, &qword_1C6CD8);
  v8[41] = swift_task_alloc();
  sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v12 = type metadata accessor for ClientCurrency.Request(0);
  v8[44] = v12;
  v8[45] = *(v12 - 8);
  v8[46] = swift_task_alloc();
  v8[26] = a2;
  v8[27] = a3;
  v8[28] = a4;

  return _swift_task_switch(sub_F6248, 0, 0);
}

uint64_t sub_F6248()
{
  (*(v0 + 272))();
  v1 = *(v0 + 368);
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *(v2 + 16) = *(v0 + 288);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *(v3 + 16) = v0 + 208;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 392) = v4;
  *v4 = v0;
  v4[1] = sub_F651C;

  return sub_140A44(v0 + 176, &unk_1CE6E0, v2, sub_FA128, v3);
}

uint64_t sub_F651C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_F6B8C;
  }

  else
  {

    v2 = sub_F6640;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F6640()
{
  v47 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 304);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v46[0] = v3;
  v46[1] = v4;
  v46[2] = v6;
  v46[3] = v5;
  v2(v46);
  v7 = *(v0 + 368);
  if (v1)
  {
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v43 = v1;
    v44 = v4;
    v40 = v3;
    v11 = *(v0 + 336);
    v10 = *(v0 + 344);
    v45 = v5;
    v12 = *(v0 + 320);
    v13 = *(v0 + 328);
    v38 = *(v0 + 216);
    v39 = *(v0 + 208);
    v42 = v6;
    v14 = *(v0 + 224);
    sub_FA194(v7, v10);
    v15 = *(v8 + 56);
    v15(v10, 0, 1, v9);
    *(v0 + 80) = v12;
    *(v0 + 88) = sub_42094(&qword_22C1B8, &qword_22C1A8, &qword_1C6CD8, &protocol conformance descriptor for GeneralClientError<A>);
    v41 = sub_40528((v0 + 56));
    sub_43050(v10, v11, &qword_22C1B0, &qword_1C6CE0);
    v16 = *(v12 + 40);
    v15(v13 + v16, 1, 1, v9);
    v17 = v13 + *(v12 + 44);
    *v17 = 0u;
    *(v17 + 1) = 0u;
    *v13 = 0xD000000000000017;
    v13[1] = 0x80000000001D77E0;
    v13[2] = v39;
    v13[3] = v38;
    v13[4] = v14;

    sub_FA1F8(v11, v13 + v16);
    v19 = *v17;
    v18 = *(v17 + 1);
    v20 = *(v17 + 2);
    v21 = *(v17 + 3);

    sub_4161C(v42, v45);
    sub_FA268(v19, v18, v20, v21);
    *v17 = v40;
    *(v17 + 1) = v44;
    *(v17 + 2) = v42;
    *(v17 + 3) = v45;
    *(v0 + 232) = v43;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 328);
    v24 = *(v0 + 336);
    v25 = *(v0 + 320);
    if (v22)
    {
      sub_264B8((v0 + 136), v0 + 96);
      v26 = *(v0 + 120);
      v27 = *(v0 + 128);
      sub_2698((v0 + 96), v26);
      v28 = (*(v27 + 48))(v26, v27);
      sub_42F48(v24, &qword_22C1B0, &qword_1C6CE0);
      *(v23 + *(v25 + 48)) = v28;
      sub_2BF8((v0 + 96));
    }

    else
    {
      sub_42F48(*(v0 + 336), &qword_22C1B0, &qword_1C6CE0);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      sub_42F48(v0 + 136, &qword_22C1C8, &qword_1CE710);
      *(v23 + *(v25 + 48)) = v43;
      swift_errorRetain();
    }

    v30 = *(v0 + 344);
    sub_5ED18(*(v0 + 328), v41, &qword_22C1A8, &qword_1C6CD8);
    sub_42F48(v30, &qword_22C1B0, &qword_1C6CE0);
    v31 = *(v0 + 80);
    v32 = sub_2698((v0 + 56), v31);
    v33 = *(v31 - 8);
    v34 = swift_task_alloc();
    (*(v33 + 16))(v34, v32, v31);
    sub_42094(&qword_22C1D0, &qword_22C1A8, &qword_1C6CD8, &protocol conformance descriptor for GeneralClientError<A>);
    if (sub_1B55C4())
    {
      (*(v33 + 8))(v34, v31);
    }

    else
    {
      swift_allocError();
      (*(v33 + 32))(v35, v34, v31);
    }

    v36 = *(v0 + 368);
    swift_willThrow();

    sub_2BF8((v0 + 56));

    sub_41670(v42, v45);
    sub_FA138(v36);

    v29 = *(v0 + 8);
  }

  else
  {

    sub_41670(v6, v5);
    sub_FA138(v7);

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_F6B8C()
{
  v1 = *(v0 + 368);

  sub_FA138(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t Transport.Client.recommendV2(input:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  return _swift_task_switch(sub_F6C64, 0, 0);
}

uint64_t sub_F6C64()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_F6DAC;
  v6 = *(v0 + 80);

  return sub_F553C(v6, (v0 + 16), sub_F7680, v2, &unk_1C6B08, v3, sub_F7C7C, v4);
}

uint64_t sub_F6DAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F6EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v63 = a3;
  v69 = a2;
  v4 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  __chkstk_darwin(v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_1B3F34();
  *&v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_1B3D64();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v17 = *(a1 + 152);
  v18 = *(a1 + 160);
  sub_1B3D54();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_42F48(v12, &qword_22C200, &unk_1CE6C0);
    type metadata accessor for ClientErrorPayload(0);
    sub_FA3E0();
    swift_allocError();
    *v19 = v17;
    v19[1] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_1B3D44();
    v70._countAndFlagsBits = 0xD000000000000013;
    v70._object = 0x80000000001D78D0;
    sub_1B48D4(v70);
    v21(&v66, 0);
    sub_1B3D34();
    v22 = v64;
    if ((*(v64 + 48))(v6, 1, v7) == 1)
    {
      sub_42F48(v6, &qword_22C1F8, &qword_1CFD60);
      type metadata accessor for ClientErrorPayload(0);
      sub_FA3E0();
      swift_allocError();
      (*(v14 + 16))(v23, v16, v13);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v14 + 8))(v16, v13);
    }

    else
    {
      v58 = v16;
      v59 = v14;
      v60 = v13;
      v24 = *(v22 + 32);
      v24(v9, v6, v7);
      v25 = v63;
      v24(v63, v9, v7);
      v26 = type metadata accessor for ClientCurrency.Request(0);
      v27 = v25 + v26[7];
      v64 = xmmword_1C6AD0;
      *v27 = xmmword_1C6AD0;
      v28 = (v25 + v26[5]);
      *v28 = 1414745936;
      v28[1] = 0xE400000000000000;
      v29 = v26[6];
      *(v25 + v29) = _swiftEmptyArrayStorage;
      sub_85D94(*v27, *(v27 + 8));
      *v27 = v64;
      *(v25 + v29) = _swiftEmptyArrayStorage;
      v30 = sub_3324C(0, 1, 1, _swiftEmptyArrayStorage);
      *(v25 + v29) = v30;
      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_3324C((v31 > 1), v32 + 1, 1, v30);
      }

      v33 = v69;
      *(v30 + 2) = v32 + 1;
      v34 = &v30[32 * v32];
      strcpy(v34 + 32, "content-type");
      v34[45] = 0;
      *(v34 + 23) = -5120;
      *(v34 + 6) = 0xD000000000000010;
      *(v34 + 7) = 0x80000000001D7860;
      *(v25 + v29) = v30;
      v35 = *(v33 + 3);
      v68[0] = *(v33 + 2);
      v68[1] = v35;
      v36 = *(v33 + 3);
      v66 = *(v33 + 2);
      v67 = v36;
      *&v64 = 0x80000000001D7860;
      sub_43050(v68, v65, &qword_22C248, &qword_1C6D10);
      sub_2B0C(&qword_22C248, &qword_1C6D10);
      sub_FA628(&qword_22C250, &qword_22C248, &qword_1C6D10, sub_FA6A4);
      v37 = v62;
      v38 = sub_1B3C54();
      if (v37)
      {
        sub_F22A8(v66, *(&v66 + 1), v67, *(&v67 + 1));
        (*(v59 + 8))(v58, v60);
        return sub_FA138(v25);
      }

      else
      {
        v40 = v38;
        v41 = v39;
        v42 = v64;
        sub_F22A8(v66, *(&v66 + 1), v67, *(&v67 + 1));
        sub_85D94(*v27, *(v27 + 8));
        *v27 = v40;
        *(v27 + 8) = v41;
        v62 = v29;
        *(v25 + v29) = v30;
        v44 = *(v30 + 2);
        v43 = *(v30 + 3);
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v30 = sub_3324C((v43 > 1), v44 + 1, 1, v30);
        }

        *(v30 + 2) = v45;
        v46 = &v30[32 * v44];
        *(v46 + 4) = 0x747065636361;
        *(v46 + 5) = 0xE600000000000000;
        *(v46 + 6) = 0xD000000000000010;
        *(v46 + 7) = v42;
        v47 = v62;
        *(v25 + v62) = v30;
        v48 = v33[1];
        if (v48)
        {
          v49 = *v33;
          *(v25 + v47) = v30;
          v50 = *(v30 + 3);

          if ((v44 + 2) > (v50 >> 1))
          {
            v30 = sub_3324C((v50 > 1), v44 + 2, 1, v30);
          }

          *(v30 + 2) = v44 + 2;
          v51 = &v30[32 * v45];
          *(v51 + 4) = 0xD000000000000014;
          *(v51 + 5) = 0x80000000001D78B0;
          *(v51 + 6) = v49;
          *(v51 + 7) = v48;
          v47 = v62;
          *(v25 + v62) = v30;
          v33 = v69;
        }

        v52 = v33[3];
        v53 = v58;
        if (v52)
        {
          v54 = v33[2];
          *(v25 + v47) = v30;
          v56 = *(v30 + 2);
          v55 = *(v30 + 3);

          if (v56 >= v55 >> 1)
          {
            v30 = sub_3324C((v55 > 1), v56 + 1, 1, v30);
            *(v25 + v62) = v30;
          }

          result = (*(v59 + 8))(v53, v60);
          *(v30 + 2) = v56 + 1;
          v57 = &v30[32 * v56];
          *(v57 + 4) = 0xD00000000000001BLL;
          *(v57 + 5) = 0x80000000001D78F0;
          *(v57 + 6) = v54;
          *(v57 + 7) = v52;
          *(v25 + v62) = v30;
        }

        else
        {
          return (*(v59 + 8))(v58, v60);
        }
      }
    }
  }

  return result;
}

uint64_t sub_F769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_F76C0, 0, 0);
}

uint64_t sub_F76C0()
{
  v1 = v0[4];
  v2 = v1[28];
  v3 = v1[29];
  sub_2698(v1 + 25, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_F780C;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6, 0x6E656D6D6F636572, 0xEB00000000325664, v2, v3);
}

uint64_t sub_F780C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F7900(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7A038;

  return sub_F769C(a1, a2, v6);
}

void *sub_F79B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  result = a1[1];
  if (v5 > 400)
  {
    if (v5 == 401)
    {
      *&v9[0] = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, v9);

      if (!v2)
      {
        sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
        sub_FA2B4();
        result = sub_1B3BA4();
        *a2 = *&v9[0];
        v6 = 2;
        goto LABEL_12;
      }

      return result;
    }

    if (v5 == 500)
    {
      *&v9[0] = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, v9);
      if (v2)
      {
      }

      sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
      sub_FA2B4();
      result = sub_1B3BA4();
      *a2 = *&v9[0];
      v6 = 3;
      goto LABEL_12;
    }

LABEL_11:
    *a2 = v5;
    v6 = 4;
LABEL_12:
    *(a2 + 64) = v6;
    return result;
  }

  if (v5 == 200)
  {
    *&v9[0] = result;

    sub_41AEC(0xD000000000000010, 0x80000000001D7860, v9);

    if (!v2)
    {
      sub_FA5D4();
      result = sub_1B3BA4();
      v7 = v9[1];
      *a2 = v9[0];
      *(a2 + 16) = v7;
      v8 = v9[3];
      *(a2 + 32) = v9[2];
      *(a2 + 48) = v8;
      *(a2 + 64) = 0;
    }

    return result;
  }

  if (v5 != 400)
  {
    goto LABEL_11;
  }

  *&v9[0] = result;

  sub_41AEC(0xD000000000000010, 0x80000000001D7860, v9);

  if (!v2)
  {
    sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA2B4();
    result = sub_1B3BA4();
    *a2 = *&v9[0];
    v6 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t Transport.Client.personalizationMetadata(input:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return _swift_task_switch(sub_F7CC8, 0, 0);
}

void sub_F7CC8()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_F7E28;

  JUMPOUT(0xF60D4);
}

uint64_t sub_F7E28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F7F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v55 = a4;
  v52 = a2;
  v53 = a3;
  v59 = a5;
  v6 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_1B3F34();
  *&v57 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_1B3D64();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v19 = *(a1 + 152);
  v20 = *(a1 + 160);
  sub_1B3D54();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_42F48(v14, &qword_22C200, &unk_1CE6C0);
    type metadata accessor for ClientErrorPayload(0);
    sub_FA3E0();
    swift_allocError();
    *v21 = v19;
    v21[1] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v23 = sub_1B3D44();
    v60._countAndFlagsBits = 0xD000000000000022;
    v60._object = 0x80000000001D7880;
    sub_1B48D4(v60);
    v23(v58, 0);
    sub_1B3D34();
    v24 = v57;
    if ((*(v57 + 48))(v8, 1, v9) == 1)
    {
      sub_42F48(v8, &qword_22C1F8, &qword_1CFD60);
      type metadata accessor for ClientErrorPayload(0);
      sub_FA3E0();
      swift_allocError();
      (*(v16 + 16))(v25, v18, v15);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v16 + 8))(v18, v15);
    }

    else
    {
      v49 = v18;
      v50 = v16;
      v51 = v15;
      v26 = *(v24 + 32);
      v26(v11, v8, v9);
      v27 = v59;
      v26(v59, v11, v9);
      v28 = type metadata accessor for ClientCurrency.Request(0);
      v29 = v27 + v28[7];
      v57 = xmmword_1C6AD0;
      *v29 = xmmword_1C6AD0;
      v30 = (v27 + v28[5]);
      *v30 = 1414745936;
      v30[1] = 0xE400000000000000;
      v31 = v28[6];
      *(v27 + v31) = _swiftEmptyArrayStorage;
      sub_85D94(*v29, *(v29 + 8));
      *v29 = v57;
      *(v27 + v31) = _swiftEmptyArrayStorage;
      v32 = sub_3324C(0, 1, 1, _swiftEmptyArrayStorage);
      *(v27 + v31) = v32;
      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_3324C((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[32 * v34];
      strcpy(v35 + 32, "content-type");
      v35[45] = 0;
      *(v35 + 23) = -5120;
      *(v35 + 6) = 0xD000000000000010;
      *(v35 + 7) = 0x80000000001D7860;
      *(v27 + v31) = v32;
      v58[0] = v55;

      sub_2B0C(&qword_22C210, &qword_1C6CF8);
      sub_FA628(&qword_22C218, &qword_22C210, &qword_1C6CF8, sub_FA438);
      v36 = v56;
      v37 = sub_1B3C54();
      if (v36)
      {

        (*(v50 + 8))(v49, v51);
        return sub_FA138(v27);
      }

      else
      {
        v39 = v37;
        v40 = v38;
        *&v57 = 0x80000000001D7860;

        sub_85D94(*v29, *(v29 + 8));
        *v29 = v39;
        *(v29 + 8) = v40;
        *(v27 + v31) = v32;
        v42 = *(v32 + 2);
        v41 = *(v32 + 3);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          v32 = sub_3324C((v41 > 1), v42 + 1, 1, v32);
        }

        v44 = v53;
        *(v32 + 2) = v43;
        v45 = &v32[32 * v42];
        *(v45 + 4) = 0x747065636361;
        *(v45 + 5) = 0xE600000000000000;
        *(v45 + 6) = 0xD000000000000010;
        *(v45 + 7) = v57;
        *(v27 + v31) = v32;
        if (v44)
        {
          *(v27 + v31) = v32;
          v46 = *(v32 + 3);
          v47 = v42 + 2;

          if (v47 > (v46 >> 1))
          {
            v32 = sub_3324C((v46 > 1), v47, 1, v32);
            *(v27 + v31) = v32;
          }

          result = (*(v50 + 8))(v49, v51);
          *(v32 + 2) = v47;
          v48 = &v32[32 * v43];
          *(v48 + 4) = 0xD000000000000014;
          *(v48 + 5) = 0x80000000001D78B0;
          *(v48 + 6) = v52;
          *(v48 + 7) = v44;
          *(v27 + v31) = v32;
        }

        else
        {
          return (*(v50 + 8))(v49, v51);
        }
      }
    }
  }

  return result;
}

uint64_t sub_F8664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_F8688, 0, 0);
}

uint64_t sub_F8688()
{
  v1 = v0[4];
  v2 = v1[28];
  v3 = v1[29];
  sub_2698(v1 + 25, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_FA8F0;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6, 0xD000000000000017, 0x80000000001D77E0, v2, v3);
}

void *sub_F87D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  result = a1[1];
  if (v5 > 400)
  {
    if (v5 == 401)
    {
      v7 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v7);

      if (!v2)
      {
        sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
        sub_FA2B4();
        result = sub_1B3BA4();
        *a2 = v7;
        v6 = 2;
        goto LABEL_12;
      }

      return result;
    }

    if (v5 == 500)
    {
      v7 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v7);
      if (v2)
      {
      }

      sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
      sub_FA2B4();
      result = sub_1B3BA4();
      *a2 = v7;
      v6 = 3;
      goto LABEL_12;
    }

LABEL_11:
    *a2 = v5;
    v6 = 4;
LABEL_12:
    *(a2 + 8) = v6;
    return result;
  }

  if (v5 == 200)
  {
    v7 = result;

    sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v7);

    if (!v2)
    {
      sub_FA38C();
      result = sub_1B3BA4();
      *a2 = v7;
      *(a2 + 8) = 0;
    }

    return result;
  }

  if (v5 != 400)
  {
    goto LABEL_11;
  }

  v7 = result;

  sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v7);

  if (!v2)
  {
    sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA2B4();
    result = sub_1B3BA4();
    *a2 = v7;
    v6 = 1;
    goto LABEL_12;
  }

  return result;
}

__n128 sub_F8AB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_F8AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F8B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F8BD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2B0C(&qword_22C260, &qword_1C6D18);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ClientCurrency.Request(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  a3[3] = v6;
  a3[4] = sub_42094(&qword_22C268, &qword_22C260, &qword_1C6D18, &protocol conformance descriptor for GeneralClientError<A>);
  v26 = sub_40528(a3);
  sub_43050(v14, v12, &qword_22C1B0, &qword_1C6CE0);
  v17 = v6[10];
  v16(&v8[v17], 1, 1, v15);
  v18 = &v8[v6[11]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *v8 = 0x6E656D6D6F636572;
  *(v8 + 1) = 0xE900000000000064;
  v19 = a2[3];
  *(v8 + 3) = a2[2];
  *(v8 + 4) = v19;
  *(v8 + 5) = a2[4];
  v20 = a2[1];
  *(v8 + 1) = *a2;
  *(v8 + 2) = v20;
  sub_FA7EC(a2, v30);
  sub_FA1F8(v12, &v8[v17]);
  sub_FA268(*v18, *(v18 + 1), *(v18 + 2), *(v18 + 3));
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v29 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v27, v30);
    v21 = v31;
    v22 = v32;
    sub_2698(v30, v31);
    v23 = (*(v22 + 48))(v21, v22);
    sub_42F48(v12, &qword_22C1B0, &qword_1C6CE0);
    *&v8[v6[12]] = v23;
    sub_2BF8(v30);
  }

  else
  {
    sub_42F48(v12, &qword_22C1B0, &qword_1C6CE0);
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    sub_42F48(v27, &qword_22C1C8, &qword_1CE710);
    *&v8[v6[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v8, v26, &qword_22C260, &qword_1C6D18);
  return sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F8F58@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2B0C(&qword_22C228, &qword_1C6D00);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ClientCurrency.Request(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  a3[3] = v6;
  a3[4] = sub_42094(&qword_22C230, &qword_22C228, &qword_1C6D00, &protocol conformance descriptor for GeneralClientError<A>);
  v26 = sub_40528(a3);
  sub_43050(v14, v12, &qword_22C1B0, &qword_1C6CE0);
  v17 = v6[10];
  v16(&v8[v17], 1, 1, v15);
  v18 = &v8[v6[11]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *v8 = 0x6E656D6D6F636572;
  *(v8 + 1) = 0xEB00000000325664;
  v19 = a2[1];
  *(v8 + 1) = *a2;
  *(v8 + 2) = v19;
  v20 = a2[3];
  *(v8 + 3) = a2[2];
  *(v8 + 4) = v20;
  sub_FA578(a2, v30);
  sub_FA1F8(v12, &v8[v17]);
  sub_FA268(*v18, *(v18 + 1), *(v18 + 2), *(v18 + 3));
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v29 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v27, v30);
    v21 = v31;
    v22 = v32;
    sub_2698(v30, v31);
    v23 = (*(v22 + 48))(v21, v22);
    sub_42F48(v12, &qword_22C1B0, &qword_1C6CE0);
    *&v8[v6[12]] = v23;
    sub_2BF8(v30);
  }

  else
  {
    sub_42F48(v12, &qword_22C1B0, &qword_1C6CE0);
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    sub_42F48(v27, &qword_22C1C8, &qword_1CE710);
    *&v8[v6[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v8, v26, &qword_22C228, &qword_1C6D00);
  return sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F92DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a1;
  v7 = sub_2B0C(&qword_22C1A8, &qword_1C6CD8);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ClientCurrency.Request(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  a5[3] = v7;
  a5[4] = sub_42094(&qword_22C1B8, &qword_22C1A8, &qword_1C6CD8, &protocol conformance descriptor for GeneralClientError<A>);
  v29 = sub_40528(a5);
  sub_43050(v15, v13, &qword_22C1B0, &qword_1C6CE0);
  v18 = v7[10];
  v17(&v9[v18], 1, 1, v16);
  v19 = &v9[v7[11]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *v9 = 0xD000000000000017;
  *(v9 + 1) = 0x80000000001D77E0;
  v20 = v27;
  *(v9 + 2) = v26;
  *(v9 + 3) = v20;
  *(v9 + 4) = a4;

  sub_FA1F8(v13, &v9[v18]);
  sub_FA268(*v19, *(v19 + 1), *(v19 + 2), *(v19 + 3));
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v21 = v28;
  v32 = v28;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v30, v33);
    v22 = v34;
    v23 = v35;
    sub_2698(v33, v34);
    v24 = (*(v23 + 48))(v22, v23);
    sub_42F48(v13, &qword_22C1B0, &qword_1C6CE0);
    *&v9[v7[12]] = v24;
    sub_2BF8(v33);
  }

  else
  {
    sub_42F48(v13, &qword_22C1B0, &qword_1C6CE0);
    memset(v30, 0, sizeof(v30));
    v31 = 0;
    sub_42F48(v30, &qword_22C1C8, &qword_1CE710);
    *&v9[v7[12]] = v21;
    swift_errorRetain();
  }

  sub_5ED18(v9, v29, &qword_22C1A8, &qword_1C6CD8);
  return sub_42F48(v15, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F9664@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_2B0C(&qword_22C260, &qword_1C6D18);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_FA194(a3, &v27 - v15);
  v17 = type metadata accessor for ClientCurrency.Request(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 0, 1, v17);
  a4[3] = v8;
  a4[4] = sub_42094(&qword_22C268, &qword_22C260, &qword_1C6D18, &protocol conformance descriptor for GeneralClientError<A>);
  v28 = sub_40528(a4);
  sub_43050(v16, v14, &qword_22C1B0, &qword_1C6CE0);
  v19 = v8[10];
  v18(&v10[v19], 1, 1, v17);
  v20 = &v10[v8[11]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *v10 = 0x6E656D6D6F636572;
  *(v10 + 1) = 0xE900000000000064;
  v21 = a2[3];
  *(v10 + 3) = a2[2];
  *(v10 + 4) = v21;
  *(v10 + 5) = a2[4];
  v22 = a2[1];
  *(v10 + 1) = *a2;
  *(v10 + 2) = v22;
  sub_FA7EC(a2, v32);
  sub_FA1F8(v14, &v10[v19]);
  sub_FA268(*v20, *(v20 + 1), *(v20 + 2), *(v20 + 3));
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v31 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v29, v32);
    v23 = v33;
    v24 = v34;
    sub_2698(v32, v33);
    v25 = (*(v24 + 48))(v23, v24);
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    *&v10[v8[12]] = v25;
    sub_2BF8(v32);
  }

  else
  {
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    sub_42F48(v29, &qword_22C1C8, &qword_1CE710);
    *&v10[v8[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v10, v28, &qword_22C260, &qword_1C6D18);
  return sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F99FC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_2B0C(&qword_22C228, &qword_1C6D00);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_FA194(a3, &v27 - v15);
  v17 = type metadata accessor for ClientCurrency.Request(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 0, 1, v17);
  a4[3] = v8;
  a4[4] = sub_42094(&qword_22C230, &qword_22C228, &qword_1C6D00, &protocol conformance descriptor for GeneralClientError<A>);
  v28 = sub_40528(a4);
  sub_43050(v16, v14, &qword_22C1B0, &qword_1C6CE0);
  v19 = v8[10];
  v18(&v10[v19], 1, 1, v17);
  v20 = &v10[v8[11]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *v10 = 0x6E656D6D6F636572;
  *(v10 + 1) = 0xEB00000000325664;
  v21 = a2[1];
  *(v10 + 1) = *a2;
  *(v10 + 2) = v21;
  v22 = a2[3];
  *(v10 + 3) = a2[2];
  *(v10 + 4) = v22;
  sub_FA578(a2, v32);
  sub_FA1F8(v14, &v10[v19]);
  sub_FA268(*v20, *(v20 + 1), *(v20 + 2), *(v20 + 3));
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v31 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v29, v32);
    v23 = v33;
    v24 = v34;
    sub_2698(v32, v33);
    v25 = (*(v24 + 48))(v23, v24);
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    *&v10[v8[12]] = v25;
    sub_2BF8(v32);
  }

  else
  {
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    sub_42F48(v29, &qword_22C1C8, &qword_1CE710);
    *&v10[v8[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v10, v28, &qword_22C228, &qword_1C6D00);
  return sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F9D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v9 = sub_2B0C(&qword_22C1A8, &qword_1C6CD8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_FA194(a5, &v28 - v16);
  v18 = type metadata accessor for ClientCurrency.Request(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  a6[3] = v9;
  a6[4] = sub_42094(&qword_22C1B8, &qword_22C1A8, &qword_1C6CD8, &protocol conformance descriptor for GeneralClientError<A>);
  v31 = sub_40528(a6);
  sub_43050(v17, v15, &qword_22C1B0, &qword_1C6CE0);
  v20 = v9[10];
  v19(&v11[v20], 1, 1, v18);
  v21 = &v11[v9[11]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *v11 = 0xD000000000000017;
  *(v11 + 1) = 0x80000000001D77E0;
  v22 = v29;
  *(v11 + 2) = v28;
  *(v11 + 3) = v22;
  *(v11 + 4) = a4;

  sub_FA1F8(v15, &v11[v20]);
  sub_FA268(*v21, *(v21 + 1), *(v21 + 2), *(v21 + 3));
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v23 = v30;
  v34 = v30;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v32, v35);
    v24 = v36;
    v25 = v37;
    sub_2698(v35, v36);
    v26 = (*(v25 + 48))(v24, v25);
    sub_42F48(v15, &qword_22C1B0, &qword_1C6CE0);
    *&v11[v9[12]] = v26;
    sub_2BF8(v35);
  }

  else
  {
    sub_42F48(v15, &qword_22C1B0, &qword_1C6CE0);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
    sub_42F48(v32, &qword_22C1C8, &qword_1CE710);
    *&v11[v9[12]] = v23;
    swift_errorRetain();
  }

  sub_5ED18(v11, v31, &qword_22C1A8, &qword_1C6CD8);
  return sub_42F48(v17, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_FA138(uint64_t a1)
{
  v2 = type metadata accessor for ClientCurrency.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FA194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCurrency.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FA1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_FA268(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_41670(a3, a4);
  }
}

unint64_t sub_FA2B4()
{
  result = qword_22C1E0;
  if (!qword_22C1E0)
  {
    sub_1CC1C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C1E0);
  }

  return result;
}

unint64_t sub_FA338()
{
  result = qword_22C1E8;
  if (!qword_22C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C1E8);
  }

  return result;
}

unint64_t sub_FA38C()
{
  result = qword_22C1F0;
  if (!qword_22C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C1F0);
  }

  return result;
}

unint64_t sub_FA3E0()
{
  result = qword_22C208;
  if (!qword_22C208)
  {
    type metadata accessor for ClientErrorPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C208);
  }

  return result;
}

unint64_t sub_FA438()
{
  result = qword_22C220;
  if (!qword_22C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C220);
  }

  return result;
}

uint64_t sub_FA48C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226C;

  return sub_14103C(a1, v4, v5, v6);
}

uint64_t sub_FA540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v4[1];
  v8[0] = *v4;
  v8[1] = v5;
  v6 = v4[3];
  v8[2] = v4[2];
  v8[3] = v6;
  return sub_F99FC(a1, v8, v3, a2);
}

unint64_t sub_FA5D4()
{
  result = qword_22C240;
  if (!qword_22C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C240);
  }

  return result;
}

uint64_t sub_FA628(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_FA6A4()
{
  result = qword_22C258;
  if (!qword_22C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C258);
  }

  return result;
}

uint64_t sub_FA6F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7A038;

  return sub_14103C(a1, v4, v5, v6);
}

uint64_t sub_FA7AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v4[3];
  v8[2] = v4[2];
  v8[3] = v5;
  v8[4] = v4[4];
  v6 = v4[1];
  v8[0] = *v4;
  v8[1] = v6;
  return sub_F9664(a1, v8, v3, a2);
}

unint64_t sub_FA848()
{
  result = qword_22C278;
  if (!qword_22C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C278);
  }

  return result;
}

unint64_t sub_FA89C()
{
  result = qword_22C290;
  if (!qword_22C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C290);
  }

  return result;
}

uint64_t dispatch thunk of ConfigurationServiceType.fetchConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226C;

  return v9(a1, a2, a3);
}

void *Book.Metadata.genreIDs(at:)(_BYTE *a1)
{
  v2 = *(v1 + 8);
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    return sub_FB564(v3);
  }

  else
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      sub_3741C(0, v4, 0);
      v5 = (v2 + 32);
      v6 = _swiftEmptyArrayStorage[2];
      do
      {
        v8 = *v5;
        v5 += 2;
        v7 = v8;
        v9 = _swiftEmptyArrayStorage[3];
        if (v6 >= v9 >> 1)
        {
          sub_3741C((v9 > 1), v6 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6 + 1;
        _swiftEmptyArrayStorage[v6++ + 4] = v7;
        --v4;
      }

      while (v4);
    }

    v10 = sub_40854(_swiftEmptyArrayStorage);

    return v10;
  }
}

uint64_t sub_FAB98(uint64_t a1)
{
  *(v2 + 2280) = v1;
  *(v2 + 2288) = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  *(v2 + 2296) = swift_task_alloc();
  *(v2 + 2304) = swift_task_alloc();
  *(v2 + 2312) = *a1;
  *(v2 + 1697) = *(a1 + 8);
  memcpy((v2 + 25), (a1 + 9), 0x19FuLL);
  *(v2 + 2320) = *(a1 + 424);
  memcpy((v2 + 448), (a1 + 432), 0x2B0uLL);

  return _swift_task_switch(sub_FAC80, 0, 0);
}

uint64_t sub_FAC80()
{
  v1 = *(v0 + 2320);
  v2 = *(v0 + 1697);
  v3 = *(v0 + 2312);
  v4 = *(v0 + 2280);
  v5 = v4[10];
  v6 = v4[11];
  sub_2698(v4 + 7, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 440) = v1;
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  *(v0 + 2328) = v7;
  *v7 = v0;
  v7[1] = sub_FADDC;
  v8 = *(v0 + 2320);

  return v10(v0 + 16, v8, v5, v6);
}

uint64_t sub_FADDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2336) = a1;
  *(v3 + 2344) = v1;

  if (v1)
  {
    v4 = sub_FB3A0;
  }

  else
  {
    v4 = sub_FAEF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_FAEF4()
{
  v54 = v0;
  v1 = *(v0 + 2336);
  v2 = *(v0 + 1697);
  v3 = *(v0 + 2280);
  v4 = v3[5];
  v5 = v3[6];
  sub_2698(v3 + 2, v4);
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  v7 = *(v1 + 16);
  v8 = *(v0 + 2336);
  if (v7)
  {
    v9 = sub_351DC(*(v1 + 16), 0);
    v10 = sub_3F4A0(&v53, v9 + 32, v7, v8);
    sub_417B8(v53);
    if (v10 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_5:
  v11 = (*(v5 + 8))(sub_FBAA8, v6, v9, &type metadata for UInt64, &protocol witness table for UInt64, v4, v5);

  v12 = sub_FB638(v11);

  v13 = v12[2];
  if (v13)
  {
    v50 = *(v0 + 2288);
    v53 = _swiftEmptyArrayStorage;
    sub_3788C(0, v13, 0);
    v52 = v53;
    v14 = (v12 + 8);
    result = sub_1B4F84();
    if (result < 0 || (v16 = result, result >= 1 << *(v12 + 32)))
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      v17 = 0;
      v18 = *(v12 + 9);
      v45 = (v12 + 9);
      v46 = v13;
      v47 = v18;
      v48 = (v12 + 8);
      v49 = v12;
      while (1)
      {
        v19 = v16 >> 6;
        if ((*&v14[8 * (v16 >> 6)] & (1 << v16)) == 0)
        {
          break;
        }

        if (v18 != *(v12 + 9))
        {
          goto LABEL_34;
        }

        v51 = v17;
        v20 = *(v0 + 2304);
        v21 = *(v50 + 48);
        v22 = *(v0 + 2296);
        v23 = v12[6];
        v24 = v12[7];
        v25 = *(v23 + 8 * v16);
        v26 = type metadata accessor for AttributeAffinityResult(0) - 8;
        sub_42C00(v24 + *(*v26 + 72) * v16, v20 + v21);
        *v22 = v25;
        v27 = (v22 + *(v50 + 48));
        sub_FBAB0(v20 + v21, v27);
        sub_2B0C(&qword_22C348, &unk_1C6DC0);
        sub_1B4384();
        memcpy((v0 + 1136), (v0 + 1704), 0x231uLL);
        sub_2601C(v0 + 1136);
        v28 = *(v0 + 1144);
        sub_1B4394();
        v29 = *(v0 + 2272);
        v30 = *v27;
        result = sub_FBB14(v22);
        v31 = v52;
        v53 = v52;
        v33 = v52[2];
        v32 = v52[3];
        if (v33 >= v32 >> 1)
        {
          result = sub_3788C((v32 > 1), v33 + 1, 1);
          v31 = v53;
        }

        v31[2] = v33 + 1;
        v34 = &v31[5 * v33];
        v34[4] = v25;
        *(v34 + 40) = v28;
        v34[6] = _swiftEmptyArrayStorage;
        v34[7] = v29;
        v34[8] = v30;
        v12 = v49;
        v35 = 1 << *(v49 + 32);
        if (v16 >= v35)
        {
          goto LABEL_35;
        }

        v14 = v48;
        v36 = *&v48[8 * v19];
        if ((v36 & (1 << v16)) == 0)
        {
          goto LABEL_36;
        }

        v18 = v47;
        if (v47 != *(v49 + 9))
        {
          goto LABEL_37;
        }

        v52 = v31;
        v37 = v36 & (-2 << (v16 & 0x3F));
        if (v37)
        {
          v16 = __clz(__rbit64(v37)) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v38 = v19 << 6;
          v39 = &v45[8 * v19];
          v40 = v19 + 1;
          while (v40 < (v35 + 63) >> 6)
          {
            v42 = *v39++;
            v41 = v42;
            v38 += 64;
            ++v40;
            if (v42)
            {
              result = sub_42FF0(v16, v47, 0);
              v16 = __clz(__rbit64(v41)) + v38;
              goto LABEL_23;
            }
          }

          result = sub_42FF0(v16, v47, 0);
          v16 = v35;
        }

LABEL_23:
        v17 = v51 + 1;
        if (v51 + 1 == v46)
        {

          v43 = v52;
          goto LABEL_29;
        }

        if ((v16 & 0x8000000000000000) != 0 || v16 >= 1 << *(v49 + 32))
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v43 = _swiftEmptyArrayStorage;
LABEL_29:

    v44 = *(v0 + 8);

    return v44(v43);
  }

  return result;
}

uint64_t sub_FB3A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_FB410(void *result, char a2)
{
  v2 = *(result + 7);
  v12[2] = *(result + 5);
  v12[3] = v2;
  v12[4] = *(result + 9);
  v13 = result[11];
  v3 = *(result + 3);
  v4 = result[18];
  v12[0] = *(result + 1);
  v12[1] = v3;
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v9 = a2;
    sub_5EDD8(v12, v10);
    v6 = Book.Metadata.genreIDs(at:)(&v9);
    v7 = *(v5 + 56);
    v10[2] = *(v5 + 40);
    v10[3] = v7;
    v10[4] = *(v5 + 72);
    v11 = *(v5 + 88);
    v8 = *(v5 + 24);
    v10[0] = *(v5 + 8);
    v10[1] = v8;
    sub_85554(v10);
    return v6;
  }

  return result;
}

uint64_t sub_FB4CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return sub_FAB98(a1);
}

void *sub_FB564(uint64_t a1)
{
  v3 = *(v1 + 8);
  result = _swiftEmptySetSingleton;
  v14 = _swiftEmptySetSingleton;
  v5 = *(v3 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = v3 + 40;
  while (v6 < *(v3 + 16))
  {
    v9 = *(*v7 + 16);
    v10 = v9 - a1;
    if (__OFSUB__(v9, a1))
    {
      goto LABEL_16;
    }

    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_17;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      if (v12 != -1)
      {
        goto LABEL_6;
      }

      v8 = *(v7 - 8);
    }

    else
    {
      if (v12 >= v9)
      {
        goto LABEL_18;
      }

      v8 = *(*v7 + 8 * v12 + 32);
    }

    result = sub_111CE0(&v13, v8);
LABEL_6:
    ++v6;
    v7 += 16;
    if (v5 == v6)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_FB638(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_FB798(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_FBA0C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_FB798(unint64_t *a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v32 = a1;
  v35 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  v4 = __chkstk_darwin(v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v30 - v7);
  v9 = type metadata accessor for AttributeAffinityResult(0);
  v34 = *(v9 - 8);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v13 = 0;
  v36 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = *(v36[6] + 8 * v24);
    sub_42C00(v36[7] + *(v34 + 72) * v24, v12);
    *v8 = v25;
    v26 = v35;
    sub_42C00(v12, v8 + *(v35 + 48));
    sub_FBB7C(v8, v6);
    v27 = *(v26 + 48);
    v28 = *&v6[v27];
    sub_EBB90(&v6[v27]);
    result = sub_EBB90(v12);
    if (v28 > 0.0)
    {
      *(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_55EE4(v32, v31, v33, v36);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_55EE4(v32, v31, v33, v36);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_FBA0C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_FB798(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_FBAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeAffinityResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FBB14(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FBB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FBBEC(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v27 = a3 & 1;
  v30 = a1;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    memcpy(__dst, (*(v30 + 48) + 568 * (__clz(__rbit64(v7)) | (v9 << 6))), 0x231uLL);
    v11 = __dst[0];
    sub_4299C(__dst, &v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a2;
    v13 = v28;
    *a2 = 0x8000000000000000;
    v14 = sub_43124(v11);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_23;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_182384(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_43124(v11);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v22 = v28;
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v25 = v14;
    sub_1877E4();
    v14 = v25;
    v22 = v28;
    if (v20)
    {
LABEL_4:
      *(v22[7] + v14) = v27;
      goto LABEL_5;
    }

LABEL_17:
    v22[(v14 >> 6) + 8] |= 1 << v14;
    *(v22[6] + 8 * v14) = v11;
    *(v22[7] + v14) = v27;
    v23 = v22[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_24;
    }

    v22[2] = v24;
LABEL_5:
    v7 &= v7 - 1;
    *a2 = v22;

    sub_2601C(__dst);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_FBE10(uint64_t a1, uint64_t a2)
{
  *(v3 + 2440) = v2;
  *(v3 + 2432) = a1;
  memcpy((v3 + 1760), a2, 0x1E8uLL);
  *(v3 + 2448) = *(a2 + 488);
  *(v3 + 2464) = *(a2 + 504);
  memcpy((v3 + 16), (a2 + 512), 0x260uLL);

  return _swift_task_switch(sub_FBEAC, 0, 0);
}

uint64_t sub_FBEAC()
{
  v1 = v0[304];
  v0[303] = sub_12D998(_swiftEmptyArrayStorage);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(v1 + 48) + (v9 | (v8 << 6)));

      sub_FBBEC(v11, v0 + 303, v10);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v12 = v0[305];

  v13 = _swiftEmptyArrayStorage;
  v0[309] = sub_12DA78(_swiftEmptyArrayStorage);
  v14 = v12[5];
  v15 = v12[6];
  sub_2698(v12 + 2, v14);
  v16 = v0[303];
  v0[310] = v16;
  v17 = *(v16 + 16);
  if (v17)
  {
    v13 = sub_3503C(v17, 0);
    v18 = sub_43128();

    result = sub_417B8(v21);
    if (v18 != v17)
    {
      goto LABEL_17;
    }
  }

  v0[311] = v13;
  v20 = (*(v15 + 16) + **(v15 + 16));
  v19 = swift_task_alloc();
  v0[312] = v19;
  *v19 = v0;
  v19[1] = sub_FC160;

  return v20(v13, v14, v15);
}

uint64_t sub_FC160(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2504) = a1;
  *(v3 + 2512) = v1;

  if (v1)
  {

    v4 = sub_FCFA0;
  }

  else
  {
    v4 = sub_FC2B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_FC2B0()
{
  v167 = v0;
  v144 = 0;
  v1 = 0;
  v2 = (v0 + 281);
  v3 = v0[313];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v156 = v0[313];
  __src = v0 + 78;
  v7 = -1 << *(v156 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v10 = (63 - v7) >> 6;
  v153 = (v0 + 281);
  v155 = v0[309];
  v148 = v10;
  v151 = v5;
LABEL_6:
  if (v9)
  {
    v11 = v1;
LABEL_11:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v11 << 6);
    v146 = *(*(v156 + 48) + 8 * v13);
    v14 = *(v156 + 56) + 88 * v13;
    v16 = *(v14 + 48);
    v15 = *(v14 + 64);
    v17 = *(v14 + 32);
    *(v2 + 80) = *(v14 + 80);
    *(v2 + 48) = v16;
    *(v2 + 64) = v15;
    *(v2 + 32) = v17;
    v18 = *(v14 + 16);
    *v2 = *v14;
    *(v2 + 16) = v18;
    v19 = *(v14 + 48);
    __dst[2] = *(v14 + 32);
    __dst[3] = v19;
    __dst[4] = *(v14 + 64);
    *&__dst[5] = *(v14 + 80);
    v20 = *(v14 + 16);
    __dst[0] = *v14;
    __dst[1] = v20;
    sub_5EDD8(v2, (v0 + 292));
    v21 = Book.Metadata.genreIDs.getter();
    v22 = v21;
    v23 = 0;
    v24 = v21 + 56;
    v25 = -1 << *(v21 + 32);
    if (-v25 < 64)
    {
      v26 = ~(-1 << -v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v21 + 56);
    v28 = (63 - v25) >> 6;
LABEL_15:
    v29 = v23;
    while (v27)
    {
      v23 = v29;
LABEL_22:
      v30 = *(v159 + 2464);
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = *(*(v22 + 48) + ((v23 << 9) | (8 * v31)));
      memcpy(__dst, (v159 + 1760), 0x1E8uLL);
      *v160 = *(v159 + 2448);
      v164 = v30;
      memcpy(v165, (v159 + 16), sizeof(v165));
      v33 = sub_FD004();
      if (v33[2])
      {
        v34 = sub_43124(v32);
        if (v35)
        {
          v36 = *(v33[7] + 8 * v34);

          sub_41C08(v144, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&__dst[0] = v155;
          v145 = v36;
          v39 = sub_43124(v36);
          v40 = *(v155 + 16);
          v41 = (v38 & 1) == 0;
          result = v40 + v41;
          if (__OFADD__(v40, v41))
          {
            goto LABEL_136;
          }

          if (*(v155 + 24) >= result)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v38 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v50 = v38;
              sub_1854E4();
              v155 = *&__dst[0];
              if ((v50 & 1) == 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            v141 = v38;
            sub_17D824(result, isUniquelyReferenced_nonNull_native);
            v155 = *&__dst[0];
            v43 = sub_43124(v145);
            if ((v141 & 1) != (v44 & 1))
            {
              goto LABEL_131;
            }

            v39 = v43;
            if (v141)
            {
              goto LABEL_32;
            }

LABEL_31:
            sub_15C8E0();
          }

LABEL_32:
          v45 = *(v155 + 56);
          v46 = *(v45 + 8 * v39);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *(v45 + 8 * v39) = v46;
          v142 = v39;
          if ((v47 & 1) == 0)
          {
            v46 = sub_33008(0, *(v46 + 2) + 1, 1, v46);
            *(v45 + 8 * v39) = v46;
          }

          v49 = *(v46 + 2);
          v48 = *(v46 + 3);
          if (v49 >= v48 >> 1)
          {
            v46 = sub_33008((v48 > 1), v49 + 1, 1, v46);
            *(v45 + 8 * v142) = v46;
          }

          *(v46 + 2) = v49 + 1;
          *&v46[8 * v49 + 32] = v146;
          v144 = sub_CC28C;
          goto LABEL_15;
        }
      }

      v29 = v23;
    }

    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v23 >= v28)
      {
        v2 = v153;
        sub_85554(v153);

        v1 = v11;
        v0 = v159;
        v10 = v148;
        v5 = v151;
        goto LABEL_6;
      }

      v27 = *(v24 + 8 * v23);
      ++v29;
      if (v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_127;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v11);
    ++v1;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v149 = sub_12DA8C(_swiftEmptyArrayStorage);

  v51 = sub_43158();
  v52 = v155;
  v53 = *(v155 + 64);
  v166 = v51;
  v54 = -1;
  v55 = -1 << *(v155 + 32);
  if (-v55 < 64)
  {
    v54 = ~(-1 << -v55);
  }

  v56 = v54 & v53;
  v57 = (63 - v55) >> 6;

  v58 = 0;
  v59 = 0;
LABEL_42:
  if (v56)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_128;
    }

    if (v60 >= v57)
    {
      break;
    }

    v56 = *(v155 + 64 + 8 * v60);
    ++v59;
    if (v56)
    {
      v59 = v60;
LABEL_47:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v62 = v61 | (v59 << 6);
      v63 = *(*(v52 + 56) + 8 * v62);
      if (*(v63 + 16) >= *(v159 + 2456))
      {
        v64 = *(v159 + 2480);
        v65 = *(v159 + 2464);
        v66 = *(*(v52 + 48) + 8 * v62);

        sub_FD2CC(v64, v63, __dst, v65);
        v67 = __dst[0];
        if (LOBYTE(__dst[0]) == 2)
        {

          goto LABEL_42;
        }

        sub_41C08(v58, 0);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst[0] = v149;
        v161 = v67 & 1;
        v70 = sub_3A9D8(v67 & 1);
        v71 = v149[2];
        v72 = (v69 & 1) == 0;
        result = v71 + v72;
        if (__OFADD__(v71, v72))
        {
          goto LABEL_138;
        }

        v73 = v69;
        if (v149[3] < result)
        {
          sub_17D810(result, v68);
          v149 = *&__dst[0];
          result = sub_3A9D8(v161);
          if ((v73 & 1) != (v74 & 1))
          {
            goto LABEL_131;
          }

          v70 = result;
          if (v73)
          {
            goto LABEL_59;
          }

LABEL_57:
          v149[(v70 >> 6) + 8] |= 1 << v70;
          *(v149[6] + v70) = v161;
          *(v149[7] + 8 * v70) = _swiftEmptyArrayStorage;
          v75 = v149[2];
          v76 = __OFADD__(v75, 1);
          v77 = v75 + 1;
          if (v76)
          {
            goto LABEL_139;
          }

          v149[2] = v77;
          goto LABEL_59;
        }

        if (v68)
        {
          if ((v69 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v87 = v70;
          result = sub_1854BC();
          v70 = v87;
          v149 = *&__dst[0];
          if ((v73 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

LABEL_59:
        v78 = v149[7];
        v79 = v70;
        v80 = *(v78 + 8 * v70);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        *(v78 + 8 * v79) = v80;
        if ((v81 & 1) == 0)
        {
          v80 = sub_33008(0, *(v80 + 2) + 1, 1, v80);
          *(v78 + 8 * v79) = v80;
        }

        v83 = *(v80 + 2);
        v82 = *(v80 + 3);
        if (v83 >= v82 >> 1)
        {
          v80 = sub_33008((v82 > 1), v83 + 1, 1, v80);
          *(v78 + 8 * v79) = v80;
        }

        *(v80 + 2) = v83 + 1;
        *&v80[8 * v83 + 32] = v66;
        v84 = *(v63 + 16);
        if (v84)
        {
          v85 = (v63 + 32);
          do
          {
            v86 = *v85++;
            sub_E000C(v86);
            --v84;
          }

          while (v84);
        }

        v58 = sub_CC28C;
        v52 = v155;
        goto LABEL_42;
      }

      goto LABEL_42;
    }
  }

  v88 = v166;
  v89 = *(v166 + 16);
  v140 = v58;
  v143 = v166;
  if (!v89)
  {
    v95 = __src;
    v93 = v159;
    v96 = v149;
    goto LABEL_81;
  }

  v90 = sub_3503C(v89, 0);
  v91 = sub_3F09C(__dst, v90 + 4, v89, v88);
  v92 = *&__dst[0];

  result = sub_417B8(v92);
  if (v91 != v89)
  {
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v93 = v159;
  sub_FD2CC(*(v159 + 2480), v90, __dst, *(v159 + 2464));

  v94 = __dst[0];
  v95 = __src;
  if (LOBYTE(__dst[0]) != 2)
  {
    v96 = v149;
    v52 = v155;
    if (v149[2])
    {

      sub_3A9D8(v94 & 1);
      v98 = v97;

      if (v98)
      {
        goto LABEL_81;
      }
    }

    v99 = swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = v149;
    sub_53F24(&off_20EAC0, v94 & 1, v99);
    v96 = *&__dst[0];
    v100 = *(v143 + 16);
    if (!v100)
    {
      v101 = _swiftEmptyArrayStorage;
      goto LABEL_80;
    }

    v150 = *&__dst[0];
    v101 = sub_3503C(v100, 0);
    v102 = sub_3F09C(__dst, v101 + 4, v100, v143);
    v103 = *&__dst[0];

    result = sub_417B8(v103);
    if (v102 == v100)
    {
      v95 = __src;
      v93 = v159;
      v52 = v155;
      v96 = v150;
LABEL_80:
      v104 = swift_isUniquelyReferenced_nonNull_native();
      *&__dst[0] = v52;
      sub_53E00(v101, 0, v104);
      v52 = *&__dst[0];
      goto LABEL_81;
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    return result;
  }

  v52 = v155;
  v96 = v149;
LABEL_81:
  v105 = v93[304];
  v154 = sub_FD688(v96, v52, v93[310], v93[306]);
  v106 = sub_12D970(_swiftEmptyArrayStorage);
  *&__dst[0] = _swiftEmptyArrayStorage;
  v107 = -1;
  v108 = -1 << *(v105 + 32);
  if (-v108 < 64)
  {
    v107 = ~(-1 << -v108);
  }

  v109 = v107 & *(v105 + 64);
  v110 = (63 - v108) >> 6;

  v111 = 0;
  if (v109)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v112 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      goto LABEL_129;
    }

    v113 = v93[304];
    if (v112 >= v110)
    {
      break;
    }

    v109 = *(v113 + 8 * v112 + 64);
    ++v111;
    if (v109)
    {
      v111 = v112;
      do
      {
LABEL_89:
        v109 &= v109 - 1;

        sub_5EF0C(v114);
      }

      while (v109);
      continue;
    }
  }

  v115 = *&__dst[0];
  v116 = -1;
  v117 = -1 << *(v113 + 32);
  if (-v117 < 64)
  {
    v116 = ~(-1 << -v117);
  }

  v118 = v116 & *(v113 + 64);
  v147 = (63 - v117) >> 6;
  v162 = *&__dst[0] + 32;

  v119 = 0;
  v120 = v106;
  while (v118)
  {
    v123 = v93[304];
LABEL_102:
    v125 = *(*(v123 + 48) + (__clz(__rbit64(v118)) | (v119 << 6)));
    v157 = v125;
    if (v154 && v154[2])
    {

      v126 = sub_3A9D8(v125);
      if (v127)
      {
        v128 = *(v154[7] + 8 * v126);

        v129 = *(v115 + 16);
        if (v129)
        {
          goto LABEL_109;
        }

        goto LABEL_106;
      }
    }

    v128 = 0;
    v129 = *(v115 + 16);
    if (v129)
    {
LABEL_109:
      v152 = v120;
      v131 = 0;
      v130 = _swiftEmptyArrayStorage;
      while (v131 < *(v115 + 16))
      {
        memcpy(v95, (v162 + 568 * v131++), 0x231uLL);
        if (v128)
        {
          v132 = *(v128 + 16);
          v133 = 32;
          while (v132)
          {
            v134 = *(v128 + v133);
            v133 += 8;
            --v132;
            if (v134 == *v95)
            {
              goto LABEL_116;
            }
          }

          if (v131 == v129)
          {
LABEL_94:
            v120 = v152;
            goto LABEL_95;
          }
        }

        else
        {
LABEL_116:
          sub_4299C(v95, (v93 + 149));
          v135 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst[0] = v130;
          if ((v135 & 1) == 0)
          {
            sub_3749C(0, v130[2] + 1, 1);
            v130 = *&__dst[0];
          }

          v137 = v130[2];
          v136 = v130[3];
          if (v137 >= v136 >> 1)
          {
            sub_3749C((v136 > 1), v137 + 1, 1);
            v130 = *&__dst[0];
          }

          v130[2] = v137 + 1;
          v138 = &v130[71 * v137 + 4];
          v95 = __src;
          memcpy(v138, __src, 0x231uLL);
          v93 = v159;
          if (v131 == v129)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_126;
    }

LABEL_106:
    v130 = _swiftEmptyArrayStorage;
LABEL_95:
    v118 &= v118 - 1;

    v121 = sub_40D04(v130);

    v122 = swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = v120;
    sub_53DC0(v121, v157, v122);
    v120 = *&__dst[0];
  }

  while (1)
  {
    v124 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      break;
    }

    if (v124 >= v147)
    {

      sub_41C08(v144, 0);
      sub_41C08(v140, 0);
      v139 = v93[1];

      return v139(v120);
    }

    v123 = v93[304];
    v118 = *(v123 + 8 * v124 + 64);
    ++v119;
    if (v118)
    {
      v119 = v124;
      goto LABEL_102;
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:

  return sub_1B5784();
}

uint64_t sub_FCFA0()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_FD004()
{
  v1 = *(v0 + 512);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      while (1)
      {
        v8 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
        v9 = *(*(v1 + 48) + v8);
        v10 = *(*(v1 + 56) + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = sub_43124(v9);
        v14 = _swiftEmptyDictionarySingleton[2];
        v15 = (v13 & 1) == 0;
        v16 = __OFADD__(v14, v15);
        v17 = v14 + v15;
        if (v16)
        {
          goto LABEL_32;
        }

        v18 = v13;
        if (_swiftEmptyDictionarySingleton[3] < v17)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        v20 = v12;
        sub_18535C();
        v12 = v20;
        if (v18)
        {
LABEL_16:
          *(_swiftEmptyDictionarySingleton[7] + 8 * v12) = v10;
          goto LABEL_20;
        }

LABEL_18:
        _swiftEmptyDictionarySingleton[(v12 >> 6) + 8] |= 1 << v12;
        *(_swiftEmptyDictionarySingleton[6] + 8 * v12) = v9;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v12) = v10;
        v21 = _swiftEmptyDictionarySingleton[2];
        v16 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        _swiftEmptyDictionarySingleton[2] = v22;
LABEL_20:
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = sub_43124(v10);
        v26 = _swiftEmptyDictionarySingleton[2];
        v27 = (v25 & 1) == 0;
        v16 = __OFADD__(v26, v27);
        v28 = v26 + v27;
        if (v16)
        {
          goto LABEL_33;
        }

        v29 = v25;
        if (_swiftEmptyDictionarySingleton[3] >= v28)
        {
          if ((v23 & 1) == 0)
          {
            v33 = v24;
            sub_18535C();
            v24 = v33;
          }
        }

        else
        {
          sub_17D544(v28, v23);
          v24 = sub_43124(v10);
          if ((v29 & 1) != (v30 & 1))
          {
            goto LABEL_36;
          }
        }

        v4 &= v4 - 1;
        if (v29)
        {
          *(_swiftEmptyDictionarySingleton[7] + 8 * v24) = v10;
          v6 = v7;
          if (!v4)
          {
            goto LABEL_7;
          }
        }

        else
        {
          _swiftEmptyDictionarySingleton[(v24 >> 6) + 8] |= 1 << v24;
          *(_swiftEmptyDictionarySingleton[6] + 8 * v24) = v10;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v24) = v10;
          v31 = _swiftEmptyDictionarySingleton[2];
          v16 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v16)
          {
            goto LABEL_35;
          }

          _swiftEmptyDictionarySingleton[2] = v32;
          v6 = v7;
          if (!v4)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v7 = v6;
      }

      sub_17D544(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_43124(v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_36;
      }

LABEL_15:
      if (v18)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_FD2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v7 = sub_12DAB4(_swiftEmptyArrayStorage);
  v8 = *(a2 + 16);
  if (!v8)
  {
LABEL_18:
    v29 = 1 << *(v7 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v7 + 64);
    if (v31)
    {
      v32 = 0;
      v33 = __clz(__rbit64(v31));
      v34 = (v31 - 1) & v31;
      v35 = (v29 + 63) >> 6;
LABEL_26:
      v39 = *(v7 + 48);
      v40 = *(v7 + 56);
      v41 = *(v39 + v33);
      v42 = *(v40 + 8 * v33);
      if (!v34)
      {
        goto LABEL_28;
      }

      do
      {
        v43 = v32;
LABEL_32:
        v44 = __clz(__rbit64(v34)) | (v43 << 6);
        v45 = *(v39 + v44);
        v34 &= v34 - 1;
        v46 = *(v40 + 8 * v44);
        if (v42 < v46)
        {
          v41 = v45;
        }

        if (v42 <= v46)
        {
          v42 = v46;
        }
      }

      while (v34);
      while (1)
      {
LABEL_28:
        v43 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v43 >= v35)
        {
          break;
        }

        v34 = *(v7 + 64 + 8 * v43);
        ++v32;
        if (v34)
        {
          v32 = v43;
          goto LABEL_32;
        }
      }

      if (v42 / v8 < a4)
      {
        goto LABEL_41;
      }

      v48 = v41 & 1;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v35 = (v29 + 63) >> 6;
      while (v35 - 1 != v37)
      {
        v32 = v37 + 1;
        v38 = *(v7 + 8 * v37 + 72);
        v36 -= 64;
        ++v37;
        if (v38)
        {
          v34 = (v38 - 1) & v38;
          v33 = __clz(__rbit64(v38)) - v36;
          goto LABEL_26;
        }
      }

LABEL_41:
      v48 = 2;
    }

    *a3 = v48;
    return result;
  }

  v9 = (a2 + 32);
  v10 = *(a2 + 16);
  while (*(a1 + 16))
  {
    v11 = sub_43124(*v9);
    if ((v12 & 1) == 0)
    {
      goto LABEL_45;
    }

    v13 = *(*(a1 + 56) + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v7;
    v15 = sub_3A9D8(v13);
    v17 = *(v7 + 16);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_46;
    }

    v21 = v16;
    if (*(v7 + 24) >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v15;
        sub_185370();
        v15 = v28;
        v7 = v50;
        if (v21)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else
    {
      sub_17D558(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_3A9D8(v13);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_49;
      }
    }

    if (v21)
    {
      goto LABEL_13;
    }

LABEL_11:
    *(v7 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(*(v7 + 48) + v15) = v13;
    *(*(v7 + 56) + 8 * v15) = 0;
    v23 = *(v7 + 16);
    v19 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v19)
    {
      goto LABEL_48;
    }

    *(v7 + 16) = v24;
LABEL_13:
    v25 = *(v7 + 56);
    v26 = *(v25 + 8 * v15);
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v19)
    {
      goto LABEL_47;
    }

    *(v25 + 8 * v15) = v27;
    ++v9;
    if (!--v10)
    {
      goto LABEL_18;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1B5784();
  __break(1u);
  return result;
}