uint64_t sub_23E8C997C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
LABEL_43:
      v19 = v6;
    }

    else
    {
      do
      {
        v19 = v6 - 56;
        v20 = (v12 - 56);
        v5 -= 56;
        while (1)
        {
          sub_23E8C9CA4(v20, &v35);
          sub_23E8C9CA4((v6 - 56), &v33);
          v23 = v35 == v33 && v36 == v34;
          v24 = v23 ? 0 : sub_23E900E04();
          sub_23E8C9D14(&v33);
          sub_23E8C9D14(&v35);
          if (v24)
          {
            break;
          }

          if (v5 + 56 != v20 + 56)
          {
            v25 = *v20;
            v26 = *(v20 + 16);
            v27 = *(v20 + 32);
            *(v5 + 48) = *(v20 + 48);
            *(v5 + 16) = v26;
            *(v5 + 32) = v27;
            *v5 = v25;
          }

          v21 = v20 - 56;
          v5 -= 56;
          v22 = v20 > v4;
          v20 -= 56;
          if (!v22)
          {
            v12 = (v21 + 56);
            goto LABEL_43;
          }
        }

        if ((v5 + 56) != v6)
        {
          v28 = *v19;
          v29 = *(v6 - 40);
          v30 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v29;
          *(v5 + 32) = v30;
          *v5 = v28;
        }

        v12 = (v20 + 56);
        if (v20 + 56 <= v4)
        {
          break;
        }

        v6 -= 56;
      }

      while (v19 > v7);
      v12 = (v20 + 56);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        sub_23E8C9CA4(v6, &v35);
        sub_23E8C9CA4(v4, &v33);
        v13 = v35 == v33 && v36 == v34;
        if (v13)
        {
          break;
        }

        v14 = sub_23E900E04();
        sub_23E8C9D14(&v33);
        sub_23E8C9D14(&v35);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }

        v15 = v6;
        v13 = v7 == v6;
        v6 += 56;
        if (!v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_23E8C9D14(&v33);
      sub_23E8C9D14(&v35);
LABEL_16:
      v15 = v4;
      v13 = v7 == v4;
      v4 += 56;
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_17:
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v17;
      *(v7 + 2) = v18;
      *v7 = v16;
      goto LABEL_18;
    }

LABEL_20:
    v19 = v7;
  }

  v31 = (v12 - v4) / 56;
  if (v19 != v4 || v19 >= &v4[56 * v31])
  {
    memmove(v19, v4, 56 * v31);
  }

  return 1;
}

uint64_t sub_23E8C9CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED60, &qword_23E905168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C9D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED60, &qword_23E905168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TextContent.color.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23E8CA024(*(v1 + 16), 0);
  v4 = sub_23E8CAC60(&v12, (v3 + 32), v2, v1);
  v5 = v12;

  sub_23E8A237C(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v12 = v3;
  sub_23E8CA14C(&v12);
  v6 = *(v12 + 2) + 1;
  v7 = v12;
  while (--v6)
  {
    v8 = v7 + 40;
    v9 = v7[52];
    v7 += 40;
    if (v9 == 5)
    {
      v10 = *(v8 - 1);
      sub_23E88FDE0(v10, *v8, *(v8 + 2), 5);

      return v10;
    }
  }

  return 0x3F8000003F800000;
}

uint64_t TextContent.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_23E8CA024(*(v3 + 16), 0);
  v6 = sub_23E8CAC60(&v16, (v5 + 32), v4, v3);
  v7 = v16;

  sub_23E8A237C(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v16 = v5;
  sub_23E8CA14C(&v16);
  v8 = *(v16 + 2) + 1;
  v9 = v16;
  while (--v8)
  {
    v10 = v9 + 40;
    v11 = v9[52];
    v9 += 40;
    if (v11 == 4)
    {
      v12 = *(v10 - 1);
      v13 = *v10;
      v14 = *(v10 + 2);
      sub_23E88FDE0(v12, *v10, v14, 4);

      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      return result;
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1096810496;
  return result;
}

void *sub_23E8CA024(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_23E8CA0B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED58, &qword_23E905160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_23E8CA14C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E8F2C48(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23E8CA1B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23E8CA1B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E900DC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23E9009E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E8CA374(v7, v8, a1, v4);
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
    return sub_23E8CA2B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E8CA2B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 40 * a3;
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    v10 = __OFSUB__(v9, v8);
    v11 = v6;
    v12 = v5;
    while (1)
    {
      result = *(v12 + 32);
      if (v8 >= result)
      {
LABEL_4:
        ++a3;
        v5 += 40;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (v10)
      {
        break;
      }

      v13 = *(v12 + 24);
      v14 = __OFSUB__(result, v13);
      result -= v13;
      if (v14)
      {
        goto LABEL_18;
      }

      if (result < v9 - v8)
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        v15 = *(v12 + 40);
        v16 = *(v12 + 16);
        *(v12 + 40) = *v12;
        result = *(v12 + 56);
        v17 = *(v12 + 60);
        *(v12 + 56) = v16;
        *(v12 + 72) = *(v12 + 32);
        *v12 = v15;
        *(v12 + 16) = result;
        *(v12 + 20) = v17;
        *(v12 + 24) = v8;
        *(v12 + 32) = v9;
        v12 -= 40;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23E8CA374(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_103:
    v111 = *v6;
    if (!*v6)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v103 = v10 + 16;
      v104 = *(v10 + 2);
      if (v104 >= 2)
      {
        while (*a3)
        {
          v105 = &v10[16 * v104];
          v106 = *v105;
          v107 = &v103[2 * v104];
          v108 = v107[1];
          sub_23E8CA9D0(*a3 + 40 * *v105, (*a3 + 40 * *v107), *a3 + 40 * v108, v111);
          if (v5)
          {
          }

          if (v108 < v106)
          {
            goto LABEL_131;
          }

          if (v104 - 2 >= *v103)
          {
            goto LABEL_132;
          }

          *v105 = v106;
          *(v105 + 1) = v108;
          v109 = *v103 - v104;
          if (*v103 < v104)
          {
            goto LABEL_133;
          }

          v104 = *v103 - 1;
          result = memmove(v107, v107 + 2, 16 * v109);
          *v103 = v104;
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_145;
      }
    }

LABEL_141:
    result = sub_23E8F2A84(v10);
    v10 = result;
    goto LABEL_105;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v111 = result;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v7)
    {
      goto LABEL_29;
    }

    v12 = *a3 + 40 * v9;
    v15 = *(v12 + 24);
    v14 = v12 + 24;
    v13 = v15;
    v16 = *a3 + 40 * v11;
    v17 = *(v16 + 32);
    if (v15 >= v17)
    {
      v22 = 0;
    }

    else
    {
      v18 = *(v14 + 8);
      v72 = __OFSUB__(v18, v13);
      v19 = v18 - v13;
      if (v72)
      {
        goto LABEL_137;
      }

      v20 = *(v16 + 24);
      v72 = __OFSUB__(v17, v20);
      v21 = v17 - v20;
      if (v72)
      {
        goto LABEL_138;
      }

      v22 = v21 < v19;
    }

    v9 = v11 + 2;
    if (v11 + 2 >= v7)
    {
LABEL_18:
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v23 = (*a3 + 40 * v11 + 112);
      do
      {
        v24 = *(v23 - 1);
        v25 = *(v23 - 5);
        if (v24 >= v25)
        {
          if (v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (__OFSUB__(*v23, v24))
          {
            goto LABEL_128;
          }

          v72 = __OFSUB__(v25, v13);
          v26 = v25 - v13;
          if (v72)
          {
            goto LABEL_129;
          }

          if (((v22 ^ (v26 >= *v23 - v24)) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        ++v9;
        v23 += 5;
        v13 = v24;
      }

      while (v7 != v9);
      v9 = v7;
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_21:
    if (v9 < v11)
    {
      goto LABEL_136;
    }

    if (v11 < v9)
    {
      v27 = 40 * v9 - 40;
      v28 = 40 * v11;
      v29 = v9;
      v30 = v11;
      do
      {
        if (v30 != --v29)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_144;
          }

          v32 = (v31 + v28);
          v33 = *(v31 + v28 + 16);
          v34 = (v31 + v27);
          v35 = *(v32 + 20);
          v36 = *(v32 + 24);
          v37 = *v32;
          v38 = *(v34 + 4);
          v39 = v34[1];
          *v32 = *v34;
          v32[1] = v39;
          *(v32 + 4) = v38;
          *v34 = v37;
          *(v34 + 4) = v33;
          *(v34 + 20) = v35;
          *(v34 + 24) = v36;
        }

        ++v30;
        v27 -= 40;
        v28 += 40;
      }

      while (v30 < v29);
      v7 = a3[1];
    }

LABEL_29:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_135;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_139;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
          goto LABEL_140;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E88A1E0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v57 = *(v10 + 2);
    v56 = *(v10 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_23E88A1E0((v56 > 1), v57 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v58;
    v59 = &v10[16 * v57];
    *(v59 + 4) = v11;
    *(v59 + 5) = v9;
    v60 = *v6;
    if (!*v6)
    {
      goto LABEL_146;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_72:
          if (v65)
          {
            goto LABEL_120;
          }

          v78 = &v10[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_123;
          }

          v84 = &v10[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_127;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v88 = &v10[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_86:
        if (v83)
        {
          goto LABEL_122;
        }

        v91 = &v10[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_93:
        v99 = v61 - 1;
        if (v61 - 1 >= v58)
        {
          goto LABEL_115;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v61 + 40];
        sub_23E8CA9D0(*a3 + 40 * v100, (*a3 + 40 * *&v10[16 * v61 + 32]), *a3 + 40 * v101, v60);
        if (v5)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23E8F2A84(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_117;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        result = sub_23E8F29F8(v61);
        v58 = *(v10 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_118;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_119;
      }

      v73 = &v10[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_121;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_124;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_130;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v6 = v111;
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_103;
    }
  }

  v40 = *a3;
  v41 = *a3 + 40 * v9 - 40;
  v42 = v11 - v9;
LABEL_39:
  v43 = v40 + 40 * v9;
  v44 = *(v43 + 24);
  v45 = *(v43 + 32);
  v46 = __OFSUB__(v45, v44);
  v47 = v42;
  v48 = v41;
  while (1)
  {
    v49 = *(v48 + 32);
    if (v44 >= v49)
    {
LABEL_38:
      ++v9;
      v41 += 40;
      --v42;
      if (v9 != v7)
      {
        goto LABEL_39;
      }

      v9 = v7;
      goto LABEL_52;
    }

    if (v46)
    {
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
      goto LABEL_141;
    }

    result = *(v48 + 24);
    v72 = __OFSUB__(v49, result);
    v50 = v49 - result;
    if (v72)
    {
      goto LABEL_114;
    }

    if (v50 >= v45 - v44)
    {
      goto LABEL_38;
    }

    if (!v40)
    {
      break;
    }

    v51 = *(v48 + 40);
    v52 = *(v48 + 16);
    *(v48 + 40) = *v48;
    v53 = *(v48 + 56);
    v54 = *(v48 + 60);
    *(v48 + 56) = v52;
    *(v48 + 72) = *(v48 + 32);
    *v48 = v51;
    *(v48 + 16) = v53;
    *(v48 + 20) = v54;
    *(v48 + 24) = v44;
    *(v48 + 32) = v45;
    v48 -= 40;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

unint64_t sub_23E8CA9D0(unint64_t __dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst] / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || __dst + 40 * v9 <= a4)
    {
      __dst = memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
LABEL_37:
      v36 = ((v12 - v4) * 0x6666666666666667) >> 64;
      v37 = (v36 >> 4) + (v36 >> 63);
      if (v6 != v4 || v6 >= &v4[40 * v37])
      {
        memmove(v6, v4, 40 * v37);
      }

      return 1;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 3);
      v18 = *(v4 + 4);
      if (v17 < v18)
      {
        v19 = *(v6 + 4);
        v20 = __OFSUB__(v19, v17);
        v21 = v19 - v17;
        if (v20)
        {
          __break(1u);
          goto LABEL_42;
        }

        v22 = *(v4 + 3);
        v20 = __OFSUB__(v18, v22);
        v23 = v18 - v22;
        if (v20)
        {
          goto LABEL_43;
        }

        if (v23 < v21)
        {
          break;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 40;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    *(v7 + 32) = *(v13 + 4);
    *v7 = v15;
    *(v7 + 16) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    __dst = memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 < 40 || v6 <= v7)
  {
    goto LABEL_37;
  }

LABEL_23:
  v5 -= 40;
  while (1)
  {
    v24 = *(v12 - 2);
    v25 = *(v6 - 1);
    if (v24 >= v25)
    {
      goto LABEL_29;
    }

    v26 = *(v12 - 1);
    v20 = __OFSUB__(v26, v24);
    v27 = v26 - v24;
    if (v20)
    {
      break;
    }

    v28 = *(v6 - 2);
    v20 = __OFSUB__(v25, v28);
    v29 = v25 - v28;
    if (v20)
    {
      goto LABEL_44;
    }

    if (v29 < v27)
    {
      v33 = v6 - 40;
      if ((v5 + 40) != v6)
      {
        v34 = *v33;
        v35 = *(v6 - 24);
        *(v5 + 32) = *(v6 - 1);
        *v5 = v34;
        *(v5 + 16) = v35;
      }

      if (v12 <= v4 || (v6 -= 40, v33 <= v7))
      {
        v6 = v33;
        goto LABEL_37;
      }

      goto LABEL_23;
    }

LABEL_29:
    v30 = v12 - 40;
    if ((v5 + 40) != v12)
    {
      v31 = *v30;
      v32 = *(v12 - 24);
      *(v5 + 32) = *(v12 - 1);
      *v5 = v31;
      *(v5 + 16) = v32;
    }

    v5 -= 40;
    v12 -= 40;
    if (v30 <= v4)
    {
      v12 = v30;
      goto LABEL_37;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return __dst;
}

void *sub_23E8CAC60(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 20);
      v23 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 20) = v22;
      *(v11 + 24) = v23;
      if (v14 == v10)
      {
        sub_23E88FDE0(v19, v20, v21, v22);
        goto LABEL_24;
      }

      v11 += 40;
      sub_23E88FDE0(v19, v20, v21, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23E8CADD0(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v26 = result;
    v27 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_23E88FC10(*(a4 + 56) + 40 * v16, &v29);
      *&v28 = v19;
      *(&v28 + 1) = v20;
      v21 = v31;
      v35 = v31;
      v22 = v30;
      v23 = v29;
      v33 = v29;
      v34 = v30;
      v32 = v28;
      *v9 = v28;
      *(v9 + 16) = v23;
      *(v9 + 32) = v22;
      *(v9 + 48) = v21;
      if (v12 == v8)
      {

        v5 = v27;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 56;

      result = v12;
      v24 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v24)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v25 = v10 + 1;
    }

    else
    {
      v25 = v11;
    }

    v10 = v25 - 1;
    v8 = result;
    v5 = v27;
LABEL_23:
    result = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_23E8CAF84()
{
  v1 = v0;
  v2 = sub_23E9006D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RenderLayerType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RenderLayerActionType(0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E898E40(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v14 = 0;
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48)];
      (*(v3 + 32))(v5, v11, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      strcpy((inited + 32), "uuidOfSubLayer");
      *(inited + 47) = -18;
      v19[0] = sub_23E9006A4();
      v19[1] = v17;
      sub_23E900C64();
      *(inited + 88) = 0x7865646E69;
      *(inited + 96) = 0xE500000000000000;
      v19[0] = v15;
      sub_23E900C64();
      v14 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
      swift_arrayDestroy();
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E893B20(v11, v8);
      v13 = sub_23E88ACD0();
    }

    else
    {
      sub_23E893B20(v11, v8);
      v13 = sub_23E88AF58();
    }

    v14 = v13;
    sub_23E8CBC54(v8, type metadata accessor for RenderLayerType);
  }

  return v14;
}

uint64_t sub_23E8CB28C(__int128 *a1)
{
  v3 = sub_23E9006D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RenderLayerType(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RenderLayerActionType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E898E40(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48)];
      (*(v4 + 32))(v6, v12, v3);
      MEMORY[0x23EF17B90](2);
      sub_23E8CBBA4(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23E900824();
      MEMORY[0x23EF17B90](v15);
      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      return MEMORY[0x23EF17B90](3);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E893B20(v12, v9);
      v14 = 1;
    }

    else
    {
      sub_23E893B20(v12, v9);
      v14 = 0;
    }

    MEMORY[0x23EF17B90](v14);
    sub_23E88B530(a1);
    return sub_23E8CBC54(v9, type metadata accessor for RenderLayerType);
  }
}

unint64_t sub_23E8CB518@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8CAF84();
  *a1 = result;
  return result;
}

uint64_t sub_23E8CB540()
{
  sub_23E900EB4();
  sub_23E8CB28C(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8CB584(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E8CB28C(v2);
  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderLayerActionType(uint64_t a1)
{
  result = qword_27E35F0E8;
  if (!qword_27E35F0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8CB658(uint64_t a1)
{
  result = sub_23E8CBBA4(&qword_27E35F0D0, type metadata accessor for RenderLayerActionType, &unk_23E9061E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CB6B0(uint64_t a1)
{
  result = sub_23E8CBBA4(&qword_27E35F0D8, type metadata accessor for RenderLayerActionType, &unk_23E906228);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CB708(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RenderLayerType(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for RenderLayerActionType(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0E0, &qword_23E906278);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v39 - v23;
  v25 = &v39 + *(v22 + 56) - v23;
  sub_23E898E40(a1, &v39 - v23);
  sub_23E898E40(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E898E40(v24, v18);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v27 = v18;
        goto LABEL_15;
      }

      sub_23E893B20(v25, v9);
      v36 = sub_23E88EB14(v18, v9);
      sub_23E8CBC54(v9, type metadata accessor for RenderLayerType);
      v37 = v18;
    }

    else
    {
      sub_23E898E40(v24, v20);
      if (swift_getEnumCaseMultiPayload())
      {
        v27 = v20;
LABEL_15:
        sub_23E8CBC54(v27, type metadata accessor for RenderLayerType);
        goto LABEL_16;
      }

      sub_23E893B20(v25, v11);
      v36 = sub_23E88EB14(v20, v11);
      sub_23E8CBC54(v11, type metadata accessor for RenderLayerType);
      v37 = v20;
    }

    sub_23E8CBC54(v37, type metadata accessor for RenderLayerType);
LABEL_20:
    sub_23E8CBC54(v24, type metadata accessor for RenderLayerActionType);
    return v36 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23E898E40(v24, v15);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48);
    v29 = *&v15[v28];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = *&v25[v28];
      v32 = v40;
      v31 = v41;
      v33 = v42;
      (*(v41 + 32))(v40, v25, v42);
      v34 = sub_23E9006B4();
      v35 = *(v31 + 8);
      v35(v32, v33);
      v35(v15, v33);
      if ((v34 & 1) == 0)
      {
        sub_23E8CBC54(v24, type metadata accessor for RenderLayerActionType);
        goto LABEL_17;
      }

      v36 = v29 == v30;
      goto LABEL_20;
    }

    (*(v41 + 8))(v15, v42);
LABEL_16:
    sub_23E8CBBEC(v24);
LABEL_17:
    v36 = 0;
    return v36 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

  sub_23E8CBC54(v24, type metadata accessor for RenderLayerActionType);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_23E8CBBA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E8CBBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0E0, &qword_23E906278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8CBC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23E8CBCB4(uint64_t a1)
{
  type metadata accessor for RenderLayerType(319);
  if (v1 <= 0x3F)
  {
    sub_23E8CBD28(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23E8CBD28(uint64_t a1)
{
  if (!qword_27E35F0F8)
  {
    sub_23E9006D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E35F0F8);
    }
  }
}

uint64_t sub_23E8CBD94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = (v0 + *(type metadata accessor for RenderAssetAction(0) + 20));
  v5 = v4[4];
  v6 = v4[1];
  v39 = *v4;
  v40 = v6;
  v7 = v4[3];
  v41 = v4[2];
  v42 = v7;
  v43 = v5;
  v8 = v39;
  if ((*(&v5 + 1) & 0x2000000000000000) != 0)
  {
    v14 = BYTE8(v41);
    v15 = BYTE9(v41);
    v16 = v41;
    v28 = v40;
    *&v30 = v43;
    *(&v30 + 1) = *(&v5 + 1) & 0xDFFFFFFFFFFFFFFFLL;
    v29 = *(&v42 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 32) = 0x65707954656D696DLL;
    *(inited + 40) = 0xE800000000000000;
    v18 = 0x6E702F6567616D69;
    if (v15)
    {
      v18 = 0x504A2F6F65646976;
    }

    v19 = 0xE900000000000067;
    if (v15)
    {
      v19 = 0xEA00000000004745;
    }

    v34 = v18;
    v35 = v19;
    v36[3] = v42;
    v37 = v43;
    v36[1] = v40;
    v36[2] = v41;
    v36[0] = v39;
    v38 = *(&v43 + 1) & 0xDFFFFFFFFFFFFFFFLL;
    sub_23E8891B4(v36, &v31, &qword_27E35F110, &qword_23E906328);
    sub_23E900C64();
    *(inited + 88) = 0x657469727073;
    *(inited + 96) = 0xE600000000000000;
    v31 = v28;
    v32 = v16;
    v33 = v14 & 1;
    v20 = sub_23E8B42DC();
    if (v20)
    {
      *&v31 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
      sub_23E8CC8CC(&qword_27E35E570, &qword_27E35E578, qword_23E904420);
      sub_23E900C64();
    }

    else
    {
      *(inited + 136) = 0;
      *(inited + 120) = 0u;
      *(inited + 104) = 0u;
    }

    v21 = sub_23E88FAD8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_23E902EE0;
    *(v22 + 32) = 1701667182;
    *(v22 + 40) = 0xE400000000000000;
    v31 = v8;

    sub_23E900C64();
    *(v22 + 88) = 0x74736566696E616DLL;
    *(v22 + 96) = 0xE800000000000000;
    v23 = sub_23E88B1F4(v21);

    *&v31 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E8CC8CC(&qword_27E35E570, &qword_27E35E578, qword_23E904420);
    sub_23E900C64();
    *(v22 + 144) = 1635017060;
    *(v22 + 152) = 0xE400000000000000;
    v24 = v30;
    v31 = v30;
    sub_23E8A78A8(v30, *(&v30 + 1));
    sub_23E8CC81C();
    sub_23E900C64();
    v25 = sub_23E88F1F4(v22);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v26 = sub_23E9006D4();
    (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
    v34 = v25;
    sub_23E900C64();
    v12 = sub_23E8991E4(0x7341657461657263, 0xEB00000000746573, v3, &v31);

    sub_23E8A7854(v24, *(&v24 + 1));
    v13 = &v31;
  }

  else
  {
    v9 = sub_23E9006D4();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F120, &qword_23E906338);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_23E903380;
    *(v10 + 32) = 1701667182;
    *(v10 + 40) = 0xE400000000000000;
    *(v10 + 48) = v8;
    sub_23E8CC870(&v39, v36);
    v11 = sub_23E88FCCC(v10);
    swift_setDeallocating();
    sub_23E87E458(v10 + 32, &qword_27E35F128, &qword_23E906340);
    *&v31 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F130, &qword_23E906348);
    sub_23E8CC8CC(&qword_27E35F138, &qword_27E35F130, &qword_23E906348);
    sub_23E900C64();
    v12 = sub_23E8991E4(0x734165766F6D6572, 0xEB00000000746573, v3, v36);
    v13 = v36;
  }

  sub_23E87E458(v13, &qword_27E35E6C8, &unk_23E9039A0);
  sub_23E87E458(v3, &unk_27E35F820, &qword_23E9064A0);
  return v12;
}

uint64_t sub_23E8CC3D8()
{
  sub_23E900EB4();
  sub_23E9006D4();
  sub_23E8CC934(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  sub_23E8D1E60(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8CC498(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E8CC934(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  return sub_23E8D1E60(a1);
}

uint64_t sub_23E8CC548(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E9006D4();
  sub_23E8CC934(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  sub_23E8D1E60(v2);
  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderAssetAction(uint64_t a1)
{
  result = qword_27E35F140;
  if (!qword_27E35F140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8CC69C(uint64_t a1)
{
  result = sub_23E8CC934(&qword_27E35F108, type metadata accessor for RenderAssetAction, &unk_23E9062C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CC6F4(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4())
  {
    v4 = type metadata accessor for RenderAssetAction(0);
    v5 = (a1 + *(v4 + 20));
    v6 = v5[1];
    v7 = v5[3];
    v29 = v5[2];
    v30 = v7;
    v8 = v5[3];
    v31 = v5[4];
    v9 = v5[1];
    v28[0] = *v5;
    v28[1] = v9;
    v25 = v29;
    v26 = v8;
    v27 = v5[4];
    v23 = v28[0];
    v24 = v6;
    v10 = (a2 + *(v4 + 20));
    v11 = v10[4];
    v12 = v10[1];
    v13 = v10[2];
    v33 = v10[3];
    v34 = v11;
    v14 = *v10;
    v15 = *v10;
    v32[1] = v10[1];
    v32[2] = v13;
    v32[0] = v14;
    v20 = v13;
    v21 = v33;
    v22 = v10[4];
    v18 = v15;
    v19 = v12;
    sub_23E8CC870(v28, v36);
    sub_23E8CC870(v32, v36);
    v16 = sub_23E8D26D4(&v23, &v18);
    v35[2] = v20;
    v35[3] = v21;
    v35[4] = v22;
    v35[0] = v18;
    v35[1] = v19;
    sub_23E8CC97C(v35);
    v36[2] = v25;
    v36[3] = v26;
    v36[4] = v27;
    v36[0] = v23;
    v36[1] = v24;
    sub_23E8CC97C(v36);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_23E8CC81C()
{
  result = qword_27E35F118;
  if (!qword_27E35F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F118);
  }

  return result;
}

uint64_t sub_23E8CC8CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E8CC934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E8CC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    v11 = (v10 >> 2) & 0xFFFFFF80 | (v10 >> 1);
    if (v11 > 0x80000000)
    {
      return -v11;
    }

    else
    {
      return 0;
    }
  }
}

double sub_23E8CCABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    result = 0.0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    *(v12 + 40) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  return result;
}

uint64_t sub_23E8CCB90(uint64_t a1)
{
  result = sub_23E9006D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23E8CCC04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - v8;
  (*(*(*v10 - 8) + 16))(a3, v3);
  (*(v7 + 16))(v9, a2, v6);
  return swift_setAtWritableKeyPath();
}

unint64_t sub_23E8CCD48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903900;
  *(inited + 32) = 0x646E497472617473;
  *(inited + 40) = 0xEA00000000007865;
  sub_23E900C64();
  *(inited + 88) = 0x7865646E49646E65;
  *(inited + 96) = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 144) = 1701667182;
  *(inited + 152) = 0xE400000000000000;
  sub_23E900C64();
  *(inited + 200) = 0x65756C6176;
  *(inited + 208) = 0xE500000000000000;
  sub_23E8CCFAC();
  v1 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_23E8CCFAC()
{
  v1 = *(v0 + 20);
  if (v1 <= 2)
  {
    if (*(v0 + 20))
    {
      return sub_23E900C64();
    }

    goto LABEL_8;
  }

  if (*(v0 + 20) > 4u)
  {
    if (v1 != 5)
    {
      return sub_23E900C64();
    }

LABEL_8:
    sub_23E8FE5C8(*v0, *(v0 + 8), *(v0 + 16));
    goto LABEL_9;
  }

  if (v1 != 3)
  {
    sub_23E8D758C();
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5A0, &qword_23E902F38);
    sub_23E8819CC();
  }

  return sub_23E900C64();
}

unint64_t sub_23E8CD078@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8CCD48();
  *a1 = result;
  return result;
}

unint64_t sub_23E8CD0A0(uint64_t a1)
{
  result = sub_23E8CD0C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8CD0C8()
{
  result = qword_27E35F150;
  if (!qword_27E35F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F150);
  }

  return result;
}

unint64_t sub_23E8CD11C(uint64_t a1)
{
  result = sub_23E8CD144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8CD144()
{
  result = qword_27E35F158;
  if (!qword_27E35F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F158);
  }

  return result;
}

uint64_t sub_23E8CD198@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  sub_23E900C64();
  *(inited + 88) = 121;
  *(inited + 96) = 0xE100000000000000;
  sub_23E900C64();
  v3 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  result = swift_arrayDestroy();
  *a1 = v3;
  return result;
}

unint64_t sub_23E8CD2A0(uint64_t a1)
{
  result = sub_23E89C9BC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CD2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = sub_23E9006D4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F170, &qword_23E9064A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 32) = 0x6E6F6974636E7566;
  *(inited + 40) = 0xE900000000000073;
  v6 = *(v0 + *(type metadata accessor for RenderTransactionAction(0) + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    v9 = MEMORY[0x277D84F90];
    do
    {
      sub_23E8810DC(v8, v19);
      v10 = v20;
      v11 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v12 = (*(v11 + 24))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v19);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_23E88A418(0, v9[2] + 1, 1, v9);
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          v9 = sub_23E88A418((v13 > 1), v14 + 1, 1, v9);
        }

        v9[2] = v14 + 1;
        v9[v14 + 4] = v12;
      }

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v9;
  v15 = sub_23E88FF10(inited);
  swift_setDeallocating();
  sub_23E87E458(inited + 32, &qword_27E35F178, &qword_23E9064B0);
  v18[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F180, &qword_23E9064B8);
  sub_23E8CD924();
  sub_23E900C64();
  v16 = sub_23E8991E4(0x746361736E617274, 0xEB000000006E6F69, v3, v19);
  sub_23E87E458(v19, &qword_27E35E6C8, &unk_23E9039A0);
  sub_23E87E458(v3, &unk_27E35F820, &qword_23E9064A0);
  return v16;
}

void sub_23E8CD5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);

  JUMPOUT(0x23EF17690);
}

uint64_t sub_23E8CD5F0()
{
  sub_23E900EB4();
  v1 = *(v0 + *(type metadata accessor for RenderTransactionAction(0) + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_23E8810DC(v3, v5);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_23E900824();
      __swift_destroy_boxed_opaque_existential_1(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_23E900F14();
}

uint64_t sub_23E8CD69C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 20));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_23E8810DC(v5, v7);
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_23E900824();
      v6 = __swift_destroy_boxed_opaque_existential_1(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return v6;
}

uint64_t sub_23E8CD72C(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  v4 = *(v2 + *(a2 + 20));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_23E8810DC(v6, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_23E900824();
      __swift_destroy_boxed_opaque_existential_1(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderTransactionAction(uint64_t a1)
{
  result = qword_27E35F1A0;
  if (!qword_27E35F1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8CD89C(uint64_t a1)
{
  result = sub_23E8CD8E0(&qword_27E35F168, &unk_23E906418);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CD8E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RenderTransactionAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E8CD924()
{
  result = qword_27E35F188;
  if (!qword_27E35F188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F180, &qword_23E9064B8);
    sub_23E8CD9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F188);
  }

  return result;
}

unint64_t sub_23E8CD9A8()
{
  result = qword_27E35F190;
  if (!qword_27E35F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F198, &unk_23E9064C0);
    sub_23E881570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F190);
  }

  return result;
}

uint64_t sub_23E8CDA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23E8CDB10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E9006D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_23E8CDBC8(uint64_t a1)
{
  sub_23E9006D4();
  if (v1 <= 0x3F)
  {
    sub_23E8CDC4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E8CDC4C(uint64_t a1)
{
  if (!qword_27E35F1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F5C0, &unk_23E905D80);
    v1 = sub_23E900A04();
    if (!v2)
    {
      atomic_store(v1, &qword_27E35F1B0);
    }
  }
}

uint64_t sub_23E8CDCB0()
{
  MEMORY[0x23EF18560](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AirPlayConnectionProtocol.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E888F34;

  return v9(a1, a2, a3);
}

unint64_t sub_23E8CDEC8()
{
  v1 = sub_23E9005E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ImageContent.ContentType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23E8D0D78(v0, v7, type metadata accessor for ImageContent.ContentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v7;
      v14 = *(v7 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E903380;
      *(inited + 32) = 0x614E6D6574737973;
      *(inited + 40) = 0xEB0000000064656DLL;
      v27 = v13;
      v28 = v14;
      sub_23E900C64();
      v12 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      sub_23E87E458(inited + 32, &qword_27E35E598, &unk_23E905080);
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_23E903380;
      *(v22 + 32) = 7107189;
      *(v22 + 40) = 0xE300000000000000;
      v27 = sub_23E900584();
      v28 = v23;
      sub_23E900C64();
      v12 = sub_23E88F1F4(v22);
      swift_setDeallocating();
      sub_23E87E458(v22 + 32, &qword_27E35E598, &unk_23E905080);
      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v17 = *v7;
      v16 = *(v7 + 1);
      v18 = *(v7 + 8);
      v19 = v7[72];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_23E902EF0;
      *(v20 + 32) = 0x696669746E656469;
      *(v20 + 40) = 0xEA00000000007265;
      v27 = v17;
      v28 = v16;

      sub_23E900C64();
      *(v20 + 88) = 0x6F6974616D696E61;
      *(v20 + 96) = 0xEA0000000000736ELL;
      v27 = v18;
      LOBYTE(v28) = v19;
      v21 = sub_23E8CE5F0(&v27);

      if (v21)
      {
        v27 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F198, &unk_23E9064C0);
        sub_23E8CD9A8();
        sub_23E900C64();
      }

      else
      {
        *(v20 + 136) = 0;
        *(v20 + 120) = 0u;
        *(v20 + 104) = 0u;
      }

      v24 = sub_23E88FAD8(v20);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
      swift_arrayDestroy();
      v12 = sub_23E88B1F4(v24);
    }

    else
    {
      v9 = *v7;
      v10 = *(v7 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23E903380;
      *(v11 + 32) = 0x696669746E656469;
      *(v11 + 40) = 0xEA00000000007265;
      v27 = v9;
      v28 = v10;

      sub_23E900C64();
      v12 = sub_23E88F1F4(v11);
      swift_setDeallocating();
      sub_23E87E458(v11 + 32, &qword_27E35E598, &unk_23E905080);
    }
  }

  return v12;
}

uint64_t sub_23E8CE3CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9051C0;
  *(inited + 32) = 0x6576727563;
  *(inited + 40) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  if (sub_23E8F34A0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
  }

  else
  {
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 88) = 0x79616C6564;
  *(inited + 96) = 0xE500000000000000;
  sub_23E900C64();
  *(inited + 144) = 0x6E6F697461727564;
  *(inited + 152) = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 200) = 0x65756C61566F74;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = 0u;
  *(inited + 232) = 0u;
  *(inited + 248) = 0;
  *(inited + 256) = 0x756C61566D6F7266;
  *(inited + 264) = 0xE900000000000065;
  *(inited + 272) = 0u;
  *(inited + 288) = 0u;
  *(inited + 304) = 0;
  v1 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v2 = sub_23E88B1F4(v1);

  return v2;
}

void *sub_23E8CE5F0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  MEMORY[0x28223BE20](v2 - 8);
  v174 = &v165 - v3;
  v4 = type metadata accessor for SpriteSheetAnimation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v11 = (&v165 - v10);
  v12 = *a1;
  if (*(a1 + 8))
  {
    v13 = 0;
    if (*(a1 + 8) != 1)
    {
      return v13;
    }

    v169 = *(v12 + 16);
    if (v169)
    {
      v14 = 0;
      v170 = 0;
      v173 = *(v8 + 20);
      v15 = *(v9 + 80);
      v167 = *(v9 + 72);
      v168 = v12 + ((v15 + 32) & ~v15);
      v166 = 0x800000023E909100;
      v13 = MEMORY[0x277D84F90];
      v165 = xmmword_23E903380;
      v171 = v7;
      while (1)
      {
        v176 = v13;
        sub_23E8D0D78(v168 + v167 * v14, v7, type metadata accessor for SpriteSheetAnimation);
        v16 = sub_23E8CE3CC();
        v172 = v14;
        if (v16)
        {
          break;
        }

LABEL_41:
        v198 = 0x55557463656A626FLL;
        v199 = 0xEA00000000004449;
        v56 = v174;
        sub_23E8891B4(v7 + v173, v174, &qword_27E35F1C8, &qword_23E906930);
        v57 = sub_23E9006A4();
        v59 = v58;
        v60 = sub_23E9006D4();
        (*(*(v60 - 8) + 8))(v56, v60);
        v200 = v57;
        v201 = v59;
        strcpy(v202, "animationType");
        HIWORD(v202[1]) = -4864;
        v203 = 0x6E69746165706572;
        v204 = 0xE900000000000067;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
        v61 = sub_23E900D64();

        v62 = v198;
        v63 = v199;
        v65 = v200;
        v64 = v201;

        v66 = sub_23E88CA70(v62, v63);
        if (v67)
        {
          goto LABEL_112;
        }

        *(v61 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v66;
        v68 = (v61[6] + 16 * v66);
        *v68 = v62;
        v68[1] = v63;
        v69 = (v61[7] + 16 * v66);
        *v69 = v65;
        v69[1] = v64;
        v70 = v61[2];
        v54 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v54)
        {
          goto LABEL_114;
        }

        v61[2] = v71;
        v72 = v202[0];
        v73 = v202[1];
        v75 = v203;
        v74 = v204;

        v76 = sub_23E88CA70(v72, v73);
        if (v77)
        {
          goto LABEL_112;
        }

        *(v61 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v76;
        v78 = (v61[6] + 16 * v76);
        *v78 = v72;
        v78[1] = v73;
        v79 = (v61[7] + 16 * v76);
        *v79 = v75;
        v79[1] = v74;
        v80 = v61[2];
        v54 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v54)
        {
          goto LABEL_114;
        }

        v61[2] = v81;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F128, &qword_23E906340);
        swift_arrayDestroy();
        if (v16)
        {
          v82 = sub_23E8CF5C4(v61);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v193 = v16;
          v84 = v170;
          sub_23E8A1DBC(v82, sub_23E8CF910, 0, isUniquelyReferenced_nonNull_native, &v193);

          v85 = v193;
          v7 = v171;
          if (v84)
          {
            goto LABEL_117;
          }

          sub_23E8D0D1C(v171);
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v170 = 0;
          if (v86)
          {
            v13 = v176;
          }

          else
          {
            v13 = sub_23E88A418(0, v176[2] + 1, 1, v176);
          }

          v88 = v13[2];
          v87 = v13[3];
          if (v88 >= v87 >> 1)
          {
            v13 = sub_23E88A418((v87 > 1), v88 + 1, 1, v13);
          }

          v13[2] = v88 + 1;
          v13[v88 + 4] = v85;
        }

        else
        {
          v7 = v171;
          sub_23E8D0D1C(v171);

          v13 = v176;
        }

        v14 = v172 + 1;
        if (v172 + 1 == v169)
        {
          return v13;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000013;
      *(inited + 16) = v165;
      *(inited + 40) = v166;
      v18 = v7[1];
      *&v193 = *v7;
      *(&v193 + 1) = v18;

      sub_23E900C64();
      v19 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      sub_23E87E458(inited + 32, &qword_27E35E598, &unk_23E905080);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v197 = v16;
      v21 = v19 + 64;
      v22 = 1 << *(v19 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v19 + 64);
      v175 = (v22 + 63) >> 6;
      v177 = v19;

      v25 = 0;
      for (i = v19 + 64; ; v21 = i)
      {
        v180 = v16;
        v179 = v20;
        if (!v24)
        {
          if (v175 <= v25 + 1)
          {
            v27 = v25 + 1;
          }

          else
          {
            v27 = v175;
          }

          v28 = v27 - 1;
          while (1)
          {
            v26 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v26 >= v175)
            {
              v33 = 0;
              v32 = 0;
              v34 = 0;
              v35 = 0;
              v37 = 0;
              v36 = 0;
              v38 = 0;
              v24 = 0;
              v25 = v28;
              goto LABEL_25;
            }

            v24 = *(v21 + 8 * v26);
            ++v25;
            if (v24)
            {
              v25 = v26;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_107;
        }

        v26 = v25;
LABEL_24:
        v29 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v30 = v29 | (v26 << 6);
        v31 = (*(v177 + 48) + 16 * v30);
        v33 = *v31;
        v32 = v31[1];
        sub_23E88FC10(*(v177 + 56) + 40 * v30, &v188);
        v35 = *(&v188 + 1);
        v34 = v188;
        v36 = *(&v189 + 1);
        v37 = v189;
        v38 = v190;

LABEL_25:
        *&v188 = v33;
        *(&v188 + 1) = v32;
        *&v189 = v34;
        *(&v189 + 1) = v35;
        v190 = v37;
        v191 = v36;
        v192 = v38;
        if (!v32)
        {
          v196 = 0;
          v194 = 0u;
          v195 = 0u;
          v193 = 0u;
          v16 = v180;
LABEL_40:

          v7 = v171;
          goto LABEL_41;
        }

        sub_23E88FC10(&v189, &v194);
        *&v193 = v33;
        *(&v193 + 1) = v32;

        sub_23E87E458(&v188, &qword_27E35ED60, &qword_23E905168);
        v39 = *(&v193 + 1);
        v16 = v180;
        if (!*(&v193 + 1))
        {
          goto LABEL_40;
        }

        v40 = v193;
        v188 = v194;
        v189 = v195;
        v190 = v196;
        v42 = sub_23E88CA70(v193, *(&v193 + 1));
        v43 = v16[2];
        v44 = (v41 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_108;
        }

        v46 = v41;
        if (v16[3] >= v45)
        {
          if (v179)
          {
            v16 = v197;
            if (v41)
            {
              goto LABEL_12;
            }
          }

          else
          {
            sub_23E8CFC74();
            v16 = v197;
            if (v46)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          sub_23E88D2B4(v45, v179 & 1);
          v47 = sub_23E88CA70(v40, v39);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_116;
          }

          v42 = v47;
          v16 = v197;
          if (v46)
          {
LABEL_12:

            sub_23E8A23D8(&v188, v16[7] + 40 * v42);
            goto LABEL_13;
          }
        }

        v16[(v42 >> 6) + 8] |= 1 << v42;
        v49 = (v16[6] + 16 * v42);
        *v49 = v40;
        v49[1] = v39;
        v50 = v16[7] + 40 * v42;
        v51 = v188;
        v52 = v189;
        *(v50 + 32) = v190;
        *v50 = v51;
        *(v50 + 16) = v52;
        v53 = v16[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_110;
        }

        v16[2] = v55;
LABEL_13:
        v20 = 1;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v169 = *(v12 + 16);
  if (!v169)
  {
    return MEMORY[0x277D84F90];
  }

  v89 = 0;
  v170 = 0;
  v173 = *(v8 + 20);
  v90 = *(v9 + 80);
  v167 = *(v9 + 72);
  v168 = v12 + ((v90 + 32) & ~v90);
  v166 = 0x800000023E909100;
  v13 = MEMORY[0x277D84F90];
  v165 = xmmword_23E903380;
  v171 = (&v165 - v10);
  while (1)
  {
    v176 = v13;
    v172 = v89;
    sub_23E8D0D78(v168 + v167 * v89, v11, type metadata accessor for SpriteSheetAnimation);
    v91 = sub_23E8CE3CC();
    if (v91)
    {
      v92 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      v93 = swift_initStackObject();
      *(v93 + 32) = 0xD000000000000013;
      *(v93 + 16) = v165;
      *(v93 + 40) = v166;
      v94 = v11[1];
      *&v193 = *v11;
      *(&v193 + 1) = v94;

      sub_23E900C64();
      v95 = sub_23E88F1F4(v93);
      swift_setDeallocating();
      sub_23E87E458(v93 + 32, &qword_27E35E598, &unk_23E905080);
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v197 = v92;
      v97 = v95 + 64;
      v98 = 1 << *(v95 + 32);
      if (v98 < 64)
      {
        v99 = ~(-1 << v98);
      }

      else
      {
        v99 = -1;
      }

      v100 = v99 & *(v95 + 64);
      v175 = (v98 + 63) >> 6;
      v177 = v95;

      v101 = 0;
      for (i = v95 + 64; ; v97 = i)
      {
        v180 = v92;
        v179 = v96;
        if (!v100)
        {
          if (v175 <= v101 + 1)
          {
            v103 = v101 + 1;
          }

          else
          {
            v103 = v175;
          }

          v104 = v103 - 1;
          while (1)
          {
            v102 = v101 + 1;
            if (__OFADD__(v101, 1))
            {
              break;
            }

            if (v102 >= v175)
            {
              v114 = 0;
              v112 = 0;
              v113 = 0;
              v111 = 0;
              v110 = 0;
              v108 = 0;
              v109 = 0;
              v100 = 0;
              v101 = v104;
              goto LABEL_75;
            }

            v100 = *(v97 + 8 * v102);
            ++v101;
            if (v100)
            {
              v101 = v102;
              goto LABEL_74;
            }
          }

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
          goto LABEL_115;
        }

        v102 = v101;
LABEL_74:
        v105 = __clz(__rbit64(v100));
        v100 &= v100 - 1;
        v106 = v105 | (v102 << 6);
        v107 = (*(v177 + 48) + 16 * v106);
        v109 = *v107;
        v108 = v107[1];
        sub_23E88FC10(*(v177 + 56) + 40 * v106, &v188);
        v111 = *(&v188 + 1);
        v110 = v188;
        v112 = *(&v189 + 1);
        v113 = v189;
        v114 = v190;

LABEL_75:
        *&v188 = v109;
        *(&v188 + 1) = v108;
        *&v189 = v110;
        *(&v189 + 1) = v111;
        v190 = v113;
        v191 = v112;
        v192 = v114;
        if (!v108)
        {
          v196 = 0;
          v194 = 0u;
          v195 = 0u;
          v193 = 0u;
          v116 = v180;
LABEL_91:

          v11 = v171;
          goto LABEL_92;
        }

        sub_23E88FC10(&v189, &v194);
        *&v193 = v109;
        *(&v193 + 1) = v108;

        sub_23E87E458(&v188, &qword_27E35ED60, &qword_23E905168);
        v115 = *(&v193 + 1);
        v116 = v180;
        if (!*(&v193 + 1))
        {
          goto LABEL_91;
        }

        v117 = v193;
        v188 = v194;
        v189 = v195;
        v190 = v196;
        v119 = sub_23E88CA70(v193, *(&v193 + 1));
        v120 = v116[2];
        v121 = (v118 & 1) == 0;
        v122 = v120 + v121;
        if (__OFADD__(v120, v121))
        {
          goto LABEL_109;
        }

        v123 = v118;
        if (v116[3] >= v122)
        {
          if (v179)
          {
            v92 = v197;
            if (v118)
            {
              goto LABEL_62;
            }
          }

          else
          {
            sub_23E8CFC74();
            v92 = v197;
            if (v123)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          sub_23E88D2B4(v122, v179 & 1);
          v124 = sub_23E88CA70(v117, v115);
          if ((v123 & 1) != (v125 & 1))
          {
            goto LABEL_116;
          }

          v119 = v124;
          v92 = v197;
          if (v123)
          {
LABEL_62:

            sub_23E8A23D8(&v188, v92[7] + 40 * v119);
            goto LABEL_63;
          }
        }

        v92[(v119 >> 6) + 8] |= 1 << v119;
        v126 = (v92[6] + 16 * v119);
        *v126 = v117;
        v126[1] = v115;
        v127 = v92[7] + 40 * v119;
        v128 = v188;
        v129 = v189;
        *(v127 + 32) = v190;
        *v127 = v128;
        *(v127 + 16) = v129;
        v130 = v92[2];
        v54 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v54)
        {
          goto LABEL_111;
        }

        v92[2] = v131;
LABEL_63:
        v96 = 1;
      }
    }

    v116 = 0;
LABEL_92:
    v181 = 0x55557463656A626FLL;
    v182 = 0xEA00000000004449;
    v132 = v174;
    sub_23E8891B4(v11 + v173, v174, &qword_27E35F1C8, &qword_23E906930);
    v133 = sub_23E9006A4();
    v135 = v134;
    v136 = sub_23E9006D4();
    (*(*(v136 - 8) + 8))(v132, v136);
    v183 = v133;
    v184 = v135;
    strcpy(v185, "animationType");
    HIWORD(v185[1]) = -4864;
    v186 = 1701015151;
    v187 = 0xE400000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
    v137 = sub_23E900D64();

    v138 = v181;
    v139 = v182;
    v141 = v183;
    v140 = v184;

    v142 = sub_23E88CA70(v138, v139);
    if (v143)
    {
      goto LABEL_113;
    }

    *(v137 + ((v142 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v142;
    v144 = (v137[6] + 16 * v142);
    *v144 = v138;
    v144[1] = v139;
    v145 = (v137[7] + 16 * v142);
    *v145 = v141;
    v145[1] = v140;
    v146 = v137[2];
    v54 = __OFADD__(v146, 1);
    v147 = v146 + 1;
    if (v54)
    {
      break;
    }

    v137[2] = v147;
    v148 = v185[0];
    v149 = v185[1];
    v151 = v186;
    v150 = v187;

    v152 = sub_23E88CA70(v148, v149);
    if (v153)
    {
      goto LABEL_113;
    }

    *(v137 + ((v152 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v152;
    v154 = (v137[6] + 16 * v152);
    *v154 = v148;
    v154[1] = v149;
    v155 = (v137[7] + 16 * v152);
    *v155 = v151;
    v155[1] = v150;
    v156 = v137[2];
    v54 = __OFADD__(v156, 1);
    v157 = v156 + 1;
    if (v54)
    {
      break;
    }

    v137[2] = v157;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F128, &qword_23E906340);
    swift_arrayDestroy();
    if (v116)
    {
      v158 = sub_23E8CF5C4(v137);

      v159 = swift_isUniquelyReferenced_nonNull_native();
      *&v193 = v116;
      v160 = v170;
      sub_23E8A1DBC(v158, sub_23E8CF910, 0, v159, &v193);

      v161 = v193;
      v170 = v160;
      v11 = v171;
      if (v160)
      {
        goto LABEL_117;
      }

      sub_23E8D0D1C(v171);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v176;
      }

      else
      {
        v13 = sub_23E88A418(0, v176[2] + 1, 1, v176);
      }

      v163 = v13[2];
      v162 = v13[3];
      if (v163 >= v162 >> 1)
      {
        v13 = sub_23E88A418((v162 > 1), v163 + 1, 1, v13);
      }

      v13[2] = v163 + 1;
      v13[v163 + 4] = v161;
    }

    else
    {
      v11 = v171;
      sub_23E8D0D1C(v171);

      v13 = v176;
    }

    v89 = v172 + 1;
    if (v172 + 1 == v169)
    {
      return v13;
    }
  }

LABEL_115:
  __break(1u);
LABEL_116:
  sub_23E900E44();
  __break(1u);
LABEL_117:

  __break(1u);
  return result;
}

unint64_t sub_23E8CF5C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
    v2 = sub_23E900D64();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v24 = v25;
        v25 = v26;
        *&v26 = v27;
        result = sub_23E88CA70(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          result = sub_23E8A23D8(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          v18 = v2[7] + 40 * result;
          v19 = v24;
          v20 = v25;
          *(v18 + 32) = v26;
          *v18 = v19;
          *(v18 + 16) = v20;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_23E8CF81C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8CDEC8();
  *a1 = result;
  return result;
}

uint64_t sub_23E8CF844(uint64_t a1)
{
  result = sub_23E8CF8CC(&qword_27E35F1B8, &protocol conformance descriptor for ImageContent.ContentType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CF888(uint64_t a1)
{
  result = sub_23E8CF8CC(&qword_27E35F1C0, &protocol conformance descriptor for ImageContent.ContentType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8CF8CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageContent.ContentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E8CF910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_23E88FC10((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

char *sub_23E8CF95C()
{
  v1 = v0;
  v2 = type metadata accessor for ContainerContent.Child(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23E9006D4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E720, &qword_23E903478);
  v5 = *v0;
  v6 = sub_23E900D44();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_23E8D0D78(*(v5 + 56) + v26, v35, type metadata accessor for ContainerContent.Child);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_23E88A940(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_23E8CFC74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
  v2 = *v0;
  v3 = sub_23E900D44();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_23E88FC10(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_23E8CFE28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  v2 = *v0;
  v3 = sub_23E900D44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_23E88FEB4(&v32, v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23E8CFFEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
  v2 = *v0;
  v3 = sub_23E900D44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23E8D0164()
{
  v1 = v0;
  v33 = sub_23E9006D4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E700, &qword_23E903460);
  v3 = *v0;
  v4 = sub_23E900D44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v21 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v18 *= 56;
        sub_23E88FE10(*(v3 + 56) + v18, v37);
        v23 = v34;
        result = (*(v19 + 32))(*(v34 + 48) + v20, v21, v22);
        v24 = *(v23 + 56) + v18;
        v25 = v38;
        v26 = v37[2];
        v27 = v37[1];
        *v24 = v37[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_23E8D0400()
{
  v1 = v0;
  v29 = sub_23E9006D4();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E748, &qword_23E9034A0);
  v3 = *v0;
  v4 = sub_23E900D44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_23E8810DC(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_23E881028(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_23E8D0688()
{
  v1 = v0;
  v29 = sub_23E9006D4();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E738, &qword_23E903490);
  v3 = *v0;
  v4 = sub_23E900D44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 4 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 4 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_23E8D08F0()
{
  v1 = v0;
  v34 = sub_23E9006D4();
  v38 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E730, &qword_23E903488);
  v5 = *v0;
  v6 = sub_23E900D44();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_23E8D0BB8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23E88FC10(*(v4 + 56) + 40 * v13, &v22);
    v20 = v23;
    v21 = v22;
    v17 = v24;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v19 = v1[5];
      *&v22 = v16;
      *(&v22 + 1) = v15;
      v24 = v20;
      v23 = v21;
      v25 = v17;
      v19(&v22);
      return sub_23E87E458(&v22, &qword_27E35ED60, &qword_23E905168);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8D0D1C(uint64_t a1)
{
  v2 = type metadata accessor for SpriteSheetAnimation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8D0D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23E8D0DE0(unint64_t a1, char a2)
{
  if (a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 32) = 1701274725;
    *(inited + 40) = 0xE400000000000000;
    v4 = inited;
    sub_23E900C64();
    *(v4 + 88) = 0x74657366666FLL;
    *(v4 + 96) = 0xE600000000000000;
    sub_23E900C64();
    sub_23E88F1F4(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_23E902EF0;
    *(v5 + 32) = 1701869940;
    *(v5 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v5 + 88) = 0x65756C6176;
    *(v5 + 96) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
    v6 = sub_23E88F1F4(v5);
    swift_setDeallocating();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_23E902EF0;
    *(v3 + 32) = 1701869940;
    *(v3 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v3 + 88) = 0x65756C6176;
    *(v3 + 96) = 0xE500000000000000;
    sub_23E900C64();
    v6 = sub_23E88F1F4(v3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  }

  swift_arrayDestroy();
  return v6;
}

unint64_t sub_23E8D11A0(unint64_t a1, char a2)
{
  if (a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 32) = 1701274725;
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(inited + 88) = 0x74657366666FLL;
    *(inited + 96) = 0xE600000000000000;
    sub_23E900C64();
    sub_23E88F1F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v3 = swift_initStackObject();
    *(v3 + 32) = 1701869940;
    *(v3 + 16) = xmmword_23E902EF0;
    *(v3 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v3 + 88) = 0x65756C6176;
    *(v3 + 96) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
    v4 = sub_23E88F1F4(v3);
    swift_setDeallocating();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_23E902EF0;
    *(v5 + 32) = 1701869940;
    *(v5 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v5 + 88) = 0x65756C6176;
    *(v5 + 96) = 0xE500000000000000;
    sub_23E900C64();
    v4 = sub_23E88F1F4(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  }

  swift_arrayDestroy();
  return v4;
}

unint64_t sub_23E8D1524@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D0DE0(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t sub_23E8D1554(uint64_t a1)
{
  result = sub_23E8D157C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D157C()
{
  result = qword_27E35F1D0;
  if (!qword_27E35F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1D0);
  }

  return result;
}

unint64_t sub_23E8D15D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D11A0(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t sub_23E8D1600(uint64_t a1)
{
  result = sub_23E8D1628();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D1628()
{
  result = qword_27E35F1D8;
  if (!qword_27E35F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1D8);
  }

  return result;
}

void sub_23E8D1680(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *&aLeft_4[8 * v2];
  v4 = qword_23E906620[v2];
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_23E8D16A4(uint64_t a1)
{
  result = sub_23E8D16CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D16CC()
{
  result = qword_27E35F1E0;
  if (!qword_27E35F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1E0);
  }

  return result;
}

unint64_t sub_23E8D1720(uint64_t a1)
{
  result = sub_23E8D1748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D1748()
{
  result = qword_27E35F1E8;
  if (!qword_27E35F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1E8);
  }

  return result;
}

uint64_t sub_23E8D179C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8D17D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v51 = sub_23E900BD4();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = &v41 - v7;
  v8 = a2;
  v9 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_23E900BD4();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v54 = AssociatedTypeWitness;
  v53 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v42 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9051C0;
  *(inited + 32) = 0x6576727563;
  v50 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v55 = a1;
  v22 = (v3 + *(a1 + 52));
  v23 = *(v22 + 16);
  v56 = *v22;
  v57 = v23;
  v24 = sub_23E8F34A0();
  if (v24)
  {
    *&v56 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
  }

  else
  {
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 88) = 0x79616C6564;
  *(inited + 96) = 0xE500000000000000;
  v25 = v55;
  *&v56 = *(v3 + *(v55 + 40));
  sub_23E900C64();
  *(inited + 144) = 0x6E6F697461727564;
  *(inited + 152) = 0xE800000000000000;
  *&v56 = *(v3 + *(v25 + 36));
  sub_23E900C64();
  *(inited + 200) = 0x65756C61566F74;
  *(inited + 208) = 0xE700000000000000;
  v26 = *(v8 + 32);
  v48 = v3;
  v43 = v26;
  v26(v9, v8);
  v28 = v53;
  v27 = v54;
  v44 = *(v53 + 48);
  if (v44(v16, 1, v54) == 1)
  {
    (*(v46 + 8))(v16, v47);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    (*(v28 + 32))(v20, v16, v27);
    swift_getAssociatedConformanceWitness();
    sub_23E900D94();
    (*(v28 + 8))(v20, v27);
  }

  v29 = v8;
  *(inited + 256) = 0x756C61566D6F7266;
  *(inited + 264) = 0xE900000000000065;
  v30 = v49;
  v31 = v51;
  v32 = v52;
  (*(v49 + 16))(v52, v48 + *(v55 + 44), v51);
  v33 = *(v9 - 8);
  if ((*(v33 + 48))(v32, 1, v9) == 1)
  {
    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v34 = v45;
    v43(v9, v29);
    v35 = v54;
    (*(v33 + 8))(v32, v9);
    if (v44(v34, 1, v35) != 1)
    {
      v36 = v53;
      v37 = v42;
      (*(v53 + 32))(v42, v34, v35);
      swift_getAssociatedConformanceWitness();
      sub_23E900D94();
      (*(v36 + 8))(v37, v35);
      goto LABEL_13;
    }

    (*(v46 + 8))(v34, v47);
  }

  *(inited + 304) = 0;
  *(inited + 272) = 0u;
  *(inited + 288) = 0u;
LABEL_13:
  v38 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v39 = sub_23E8CE3B4(v38);

  return v39;
}

uint64_t sub_23E8D1E60(uint64_t a1)
{
  v3 = *(v1 + 72);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v5 = *(v1 + 32);
    v7 = *(v1 + 64);
    v6 = *(v1 + 40);
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
    if (v6)
    {
      v5 = 0;
    }

    else
    {
      MEMORY[0x23EF17B90](1);
      sub_23E900EE4();
      sub_23E900EE4();
      sub_23E900EE4();
      sub_23E900EE4();
    }

    MEMORY[0x23EF17B90](v5);
    sub_23E900904();

    return MEMORY[0x28211D370](a1, v7, v3 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    MEMORY[0x23EF17B90](0);

    return sub_23E900904();
  }
}

uint64_t sub_23E8D2018()
{
  sub_23E900EB4();
  sub_23E8D1E60(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8D205C(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E8D1E60(v2);
  return sub_23E900F14();
}

unint64_t sub_23E8D20A0()
{
  result = qword_27E35F1F0;
  if (!qword_27E35F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F1F0);
  }

  return result;
}

uint64_t sub_23E8D20F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23E900524();
    if (v10)
    {
      v11 = sub_23E900544();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23E900534();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23E900524();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23E900544();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23E900534();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23E8D2324(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_23E8D24B4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23E8A7854(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_23E8D20F4(v13, a3, a4, &v12);
  v10 = v4;
  sub_23E8A7854(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_23E8D24B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23E900524();
  v11 = result;
  if (result)
  {
    result = sub_23E900544();
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

  sub_23E900534();
  sub_23E8D20F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_23E8D256C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_23E8A78A8(a3, a4);
          return sub_23E8D2324(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23E8D26D4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v24[32] = a1[2];
  *&v24[48] = v2;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  *v24 = *a1;
  *&v24[16] = v5;
  v6 = a2[3];
  v7 = a2[1];
  v28 = a2[2];
  v29 = v6;
  v8 = a2[3];
  v30 = a2[4];
  v9 = a2[1];
  v26 = *a2;
  v27 = v9;
  v31[2] = *&v24[32];
  v31[3] = v4;
  v31[0] = *v24;
  v31[1] = v3;
  v31[4] = a1[4];
  v31[5] = v26;
  v10 = a2[4];
  v31[8] = v8;
  v31[9] = v10;
  v31[6] = v7;
  v31[7] = v28;
  v11 = *(&v25 + 1);
  v12 = *(&v30 + 1);
  if ((*(&v25 + 1) & 0x2000000000000000) != 0)
  {
    if ((*(&v30 + 1) & 0x2000000000000000) != 0)
    {
      v15 = v25;
      v16 = v30;
      v18 = *v24;
      v19 = *&v24[8];
      v20 = *&v24[24];
      v21 = *&v24[40];
      v22 = *&v24[56];
      v17[0] = v26;
      v17[1] = v27;
      v17[2] = v28;
      v17[3] = v29;
      sub_23E8CC870(&v26, v23);
      sub_23E8CC870(v24, v23);
      if (_s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(&v18, v17))
      {
        v13 = sub_23E8D256C(v15, v11 & 0xDFFFFFFFFFFFFFFFLL, v16, v12 & 0xDFFFFFFFFFFFFFFFLL);
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    sub_23E8CC870(&v26, v23);
    sub_23E8CC870(v24, v23);
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if ((*(&v30 + 1) & 0x2000000000000000) != 0)
  {
    goto LABEL_6;
  }

  if (*v24 == v26)
  {
    sub_23E8CC870(&v26, v23);
    sub_23E8CC870(v24, v23);
    v13 = 1;
  }

  else
  {
    v13 = sub_23E900E04();
    sub_23E8CC870(&v26, v23);
    sub_23E8CC870(v24, v23);
  }

LABEL_8:
  sub_23E8D2884(v31);
  return v13 & 1;
}

uint64_t sub_23E8D2884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1F8, &qword_23E9066D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_23E8D2914(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 40) >> 2) & 0xFFFFFF80 | (*(a1 + 40) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_23E8D2968(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E8D29E4(uint64_t result, char a2)
{
  v2 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 40) &= 0x101uLL;
  *(result + 72) = v2;
  return result;
}

uint64_t dispatch thunk of AirPlayOvelayCoordinating.connect()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E888F34;

  return v7(a1, a2);
}

unint64_t sub_23E8D2B70()
{
  if (*v0 >> 30 > 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 32) = 2003790950;
    *(inited + 16) = xmmword_23E903380;
    *(inited + 40) = 0xE400000000000000;
    sub_23E900C64();
    v3 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    sub_23E8D3054(inited + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v1 = swift_initStackObject();
    *(v1 + 16) = xmmword_23E902EE0;
    *(v1 + 32) = 2003790950;
    *(v1 + 40) = 0xE400000000000000;
    sub_23E900C64();
    *(v1 + 88) = 0x6E656D6E67696C61;
    *(v1 + 96) = 0xE900000000000074;
    sub_23E900C64();
    *(v1 + 144) = 0x676E6963617073;
    *(v1 + 152) = 0xE700000000000000;
    sub_23E900C64();
    v3 = sub_23E88F1F4(v1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
  }

  return v3;
}

unint64_t sub_23E8D2F34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D2B70();
  *a1 = result;
  return result;
}

unint64_t sub_23E8D2F5C(uint64_t a1)
{
  result = sub_23E8D2F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D2F84()
{
  result = qword_27E35F200;
  if (!qword_27E35F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F200);
  }

  return result;
}

unint64_t sub_23E8D2FD8(uint64_t a1)
{
  result = sub_23E8D3000();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D3000()
{
  result = qword_27E35F208;
  if (!qword_27E35F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F208);
  }

  return result;
}

uint64_t sub_23E8D3054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AirPlayOverlayAssetStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

unint64_t sub_23E8D314C()
{
  result = qword_27E35F210;
  if (!qword_27E35F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F210);
  }

  return result;
}

uint64_t SpriteSheetAnimation.fallback.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_23E895FE4(v7, &v6);
}

uint64_t SpriteSheetAnimation.animation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpriteSheetAnimation(0) + 20);

  return sub_23E8D3280(v3, a1);
}

uint64_t type metadata accessor for SpriteSheetAnimation(uint64_t a1)
{
  result = qword_27E35F220;
  if (!qword_27E35F220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8D3280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SpriteSheetAnimation.init(fallback:animation:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  v6 = a3 + *(type metadata accessor for SpriteSheetAnimation(0) + 20);

  return sub_23E8D3348(a2, v6);
}

uint64_t sub_23E8D3348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8D33BC(uint64_t a1, uint64_t a2)
{
  if ((sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930), *(a1 + v4[9]) == *(a2 + v4[9])) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v7 = v4[13];
    v8 = *(a1 + v7 + 16);
    v13 = *(a1 + v7);
    v14 = v8;
    v9 = (a2 + v7);
    v10 = *(v9 + 16);
    v11 = *v9;
    v12 = v10;
    v5 = _s10AirPlayKit14AnimationCurveO2eeoiySbAC_ACtFZ_0(&v13, &v11);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t SpriteSheetAnimation.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_23E900904();
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
  }

  MEMORY[0x23EF17B90](v3);
  sub_23E900904();

  type metadata accessor for SpriteSheetAnimation(0);
  return sub_23E8D3688(a1);
}

uint64_t SpriteSheetAnimation.hashValue.getter()
{
  sub_23E900EB4();
  SpriteSheetAnimation.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8D3604()
{
  sub_23E900EB4();
  SpriteSheetAnimation.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8D3648(uint64_t a1)
{
  sub_23E900EB4();
  SpriteSheetAnimation.hash(into:)(v2);
  return sub_23E900F14();
}

uint64_t sub_23E8D3688(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
  v3 = *(v1 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = *(v1 + v2[10]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v4);
  sub_23E900ED4();
  v5 = v1 + v2[13];
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (!v8)
  {
    v9 = 4;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    v9 = 5;
LABEL_9:
    MEMORY[0x23EF17B90](v9);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v7 > 1)
  {
    if (v7 ^ 2 | v6)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = (v7 | v6) != 0;
  }

  return MEMORY[0x23EF17B90](v11);
}

uint64_t sub_23E8D3854(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0);
  v3 = *(v1 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = *(v1 + v2[10]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v4);
  if (*(v1 + v2[11] + 4) == 1)
  {
    sub_23E900ED4();
  }

  else
  {
    sub_23E900ED4();
    sub_23E900EE4();
  }

  sub_23E900EE4();
  v5 = v1 + v2[13];
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (!v8)
  {
    v9 = 4;
    goto LABEL_12;
  }

  if (v8 == 1)
  {
    v9 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v9);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v7 > 1)
  {
    if (v7 ^ 2 | v6)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = (v7 | v6) != 0;
  }

  return MEMORY[0x23EF17B90](v11);
}

uint64_t sub_23E8D3A6C(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0);
  v3 = *(v1 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = *(v1 + v2[10]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v4);
  if (*(v1 + v2[11] + 24) == 1)
  {
    sub_23E900ED4();
  }

  else
  {
    sub_23E900ED4();
    Transform.hash(into:)();
  }

  Transform.hash(into:)();
  v5 = v1 + v2[13];
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (!v8)
  {
    v9 = 4;
    goto LABEL_12;
  }

  if (v8 == 1)
  {
    v9 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v9);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v7 > 1)
  {
    if (v7 ^ 2 | v6)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = (v7 | v6) != 0;
  }

  return MEMORY[0x23EF17B90](v11);
}

uint64_t sub_23E8D3CAC(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50);
  v3 = *(v1 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v3);
  v4 = *(v1 + v2[10]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v4);
  v5 = v1 + v2[11];
  if (*(v5 + 8) == 1)
  {
    sub_23E900ED4();
  }

  else
  {
    v6 = *v5;
    v7 = *(v5 + 4);
    sub_23E900ED4();
    Anchor.hash(into:)(v6, v7);
  }

  Anchor.hash(into:)(*(v1 + v2[12]), *(v1 + v2[12] + 4));
  v8 = v1 + v2[13];
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (!v11)
  {
    v12 = 4;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v12 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v12);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v10 > 1)
  {
    if (v10 ^ 2 | v9)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = (v10 | v9) != 0;
  }

  return MEMORY[0x23EF17B90](v14);
}

uint64_t sub_23E8D3EBC(uint64_t a1)
{
  v2 = v1;
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0);
  v5 = *(v1 + v4[9]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v5);
  v6 = *(v1 + v4[10]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v6);
  v7 = (v1 + v4[11]);
  v8 = *v7;
  if ((~*v7 & 0xFF00000000) != 0)
  {
    v9 = *(v7 + 2) | (*(v7 + 12) << 32);
    sub_23E900ED4();
    Dimension.hash(into:)(a1, v8 & 0xFFFFFFFFFFLL);
    Dimension.hash(into:)(a1, v9);
  }

  else
  {
    sub_23E900ED4();
  }

  v10 = (v1 + v4[12]);
  v11 = v10[2];
  v12 = *(v10 + 12);
  Dimension.hash(into:)(a1, *v10 | (*(v10 + 4) << 32));
  Dimension.hash(into:)(a1, v11 | (v12 << 32));
  v13 = v2 + v4[13];
  v15 = *v13;
  v14 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (!v16)
  {
    v17 = 4;
    goto LABEL_12;
  }

  if (v16 == 1)
  {
    v17 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v17);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v15 > 1)
  {
    if (v15 ^ 2 | v14)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v19 = (v15 | v14) != 0;
  }

  return MEMORY[0x23EF17B90](v19);
}

uint64_t sub_23E8D40FC(uint64_t a1)
{
  v2 = v1;
  sub_23E9006D4();
  sub_23E8D46FC(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18);
  v5 = *(v1 + v4[9]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v5);
  v6 = *(v1 + v4[10]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v6);
  v7 = v1 + v4[11];
  v8 = *(v7 + 8);
  if (*(v7 + 8) == 0xFF)
  {
    sub_23E900ED4();
  }

  else
  {
    v9 = *(v7 + 20);
    v10 = *v7;
    *(&v11 + 1) = *(v7 + 16);
    *&v11 = *(v7 + 8);
    sub_23E900ED4();
    HorizontalPosition.hash(into:)(a1, v10, v8);
    VerticalPosition.hash(into:)(a1, v11 >> 32, v9);
  }

  v12 = v1 + v4[12];
  v13 = *(v12 + 12);
  v14 = *(v12 + 20);
  HorizontalPosition.hash(into:)(a1, *v12, *(v12 + 8));
  VerticalPosition.hash(into:)(a1, v13, v14);
  v15 = v2 + v4[13];
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    v19 = 4;
    goto LABEL_12;
  }

  if (v18 == 1)
  {
    v19 = 5;
LABEL_12:
    MEMORY[0x23EF17B90](v19);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v17 > 1)
  {
    if (v17 ^ 2 | v16)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    v21 = (v17 | v16) != 0;
  }

  return MEMORY[0x23EF17B90](v21);
}

uint64_t _s10AirPlayKit20SpriteSheetAnimationV2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v4 = a1[1];
  v28[0] = *a1;
  v28[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v28[2] = a1[2];
  v28[3] = v5;
  v24 = v7;
  v25 = v6;
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v29[2] = a2[2];
  v29[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v29[0] = v9;
  v29[1] = v12;
  v20 = v14;
  v21 = v10;
  v15 = a2[3];
  v22 = v13;
  v23 = v15;
  sub_23E895FE4(v28, v31);
  sub_23E895FE4(v29, v31);
  v16 = _s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(&v24, &v20);
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  sub_23E899A78(v30);
  v31[0] = v24;
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v27;
  sub_23E899A78(v31);
  if (v16)
  {
    v17 = type metadata accessor for SpriteSheetAnimation(0);
    v18 = sub_23E8D33BC(a1 + *(v17 + 20), a2 + *(v17 + 20));
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_23E8D44A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E8D4574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E8D4624(uint64_t a1)
{
  sub_23E8D46A0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23E8D46A0(uint64_t a1)
{
  if (!qword_27E35F230)
  {
    v2 = sub_23E8A7A0C();
    v4 = type metadata accessor for Animation(a1, &type metadata for NoAnimationValue, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27E35F230);
    }
  }
}

uint64_t sub_23E8D46FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23E8D4744(uint64_t a1)
{
  result = sub_23E8AC920();
  *(a1 + 16) = result;
  return result;
}

void *sub_23E8D476C(__int128 *a1, void *a2)
{
  v148 = a2;
  v4 = sub_23E9006D4();
  v128 = *(v4 - 8);
  v129 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F238, &qword_23E906A18);
  MEMORY[0x28223BE20](v7);
  v9 = &v120 - v8;
  v10 = a1[1];
  v139 = *a1;
  v140 = v10;
  v141[0] = a1[2];
  *(v141 + 14) = *(a1 + 46);
  v12 = *(a1 + 2);
  v11 = *(a1 + 3);
  v13 = *(a1 + 3);
  v14 = *(a1 + 4);
  v15 = *(a1 + 40);
  v16 = *(a1 + 61);
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[2];
  *&v143[30] = *(v2 + 46);
  *v143 = v18;
  *&v143[16] = v19;
  v142 = v17;
  v20 = v127;
  v21 = sub_23E891858(&v139, v148);
  if (v20)
  {
    return v13;
  }

  v121 = v13;
  v122 = v14;
  LODWORD(v123) = v15;
  v120 = v16;
  v124 = v6;
  v125 = v7;
  v126 = v9;
  v127 = 0;
  v22 = sub_23E8BCFA0(v21);

  v23 = v142;
  v24 = v129;
  if (BYTE13(v141[1]) != 2 && *&v142 == *&v139 && *(&v142 + 1) == *(&v139 + 1))
  {
    v25 = DWORD2(v141[1]) | (WORD6(v141[1]) << 32);
LABEL_15:
    v42 = HIDWORD(v142);
    v43 = DWORD2(v142);
    if (*(&v142 + 2) == v12 && *(&v142 + 3) == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  *(&v137 + 1) = v26;
  v27 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
  v138 = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
  v29 = *(v128 + 16);
  v29(boxed_opaque_existential_1, v148, v24);
  *(boxed_opaque_existential_1 + *(v26 + 36)) = 13;
  *(boxed_opaque_existential_1 + *(v26 + 40)) = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_23E88A098(0, v22[2] + 1, 1, v22);
  }

  v31 = v22[2];
  v30 = v22[3];
  v32 = v22;
  v33 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v32 = sub_23E88A098((v30 > 1), v31 + 1, 1, v22);
  }

  v32[2] = v33;
  v34 = &v32[5 * v31];
  v35 = v136;
  v36 = v137;
  v34[8] = v138;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  *(&v137 + 1) = v26;
  v138 = v27;
  v37 = __swift_allocate_boxed_opaque_existential_1(&v136);
  v29(v37, v148, v129);
  *(v37 + *(v26 + 36)) = 14;
  *(v37 + *(v26 + 40)) = HIDWORD(v23);
  v38 = v32[3];
  if ((v31 + 2) > (v38 >> 1))
  {
    v22 = sub_23E88A098((v38 > 1), v31 + 2, 1, v32);
  }

  else
  {
    v22 = v32;
  }

  v22[2] = v31 + 2;
  v39 = &v22[5 * v33];
  v40 = v136;
  v41 = v137;
  v39[8] = v138;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  v24 = v129;
  if (BYTE13(v141[1]) != 2)
  {
    v25 = DWORD2(v141[1]) | (WORD6(v141[1]) << 32);
    v11 = *(&v139 + 3);
    v12 = *(&v139 + 2);
    goto LABEL_15;
  }

  v42 = HIDWORD(v142);
  v43 = DWORD2(v142);
LABEL_17:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  *(&v137 + 1) = v44;
  v45 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
  v138 = v45;
  v46 = __swift_allocate_boxed_opaque_existential_1(&v136);
  v47 = *(v128 + 16);
  v47(v46, v148, v24);
  *(v46 + *(v44 + 36)) = 11;
  *(v46 + *(v44 + 40)) = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_23E88A098(0, v22[2] + 1, 1, v22);
  }

  v49 = v22[2];
  v48 = v22[3];
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
    v22 = sub_23E88A098((v48 > 1), v49 + 1, 1, v22);
  }

  v22[2] = v50;
  v51 = &v22[5 * v49];
  v52 = v136;
  v53 = v137;
  v51[8] = v138;
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  *(&v137 + 1) = v44;
  v138 = v45;
  v54 = __swift_allocate_boxed_opaque_existential_1(&v136);
  v47(v54, v148, v129);
  *(v54 + *(v44 + 36)) = 12;
  *(v54 + *(v44 + 40)) = v42;
  v55 = v22[3];
  if ((v49 + 2) > (v55 >> 1))
  {
    v22 = sub_23E88A098((v55 > 1), v49 + 2, 1, v22);
  }

  v22[2] = v49 + 2;
  v56 = &v22[5 * v50];
  v57 = v136;
  v58 = v137;
  v56[8] = v138;
  *(v56 + 2) = v57;
  *(v56 + 3) = v58;
  v25 = DWORD2(v141[1]) | (WORD6(v141[1]) << 32);
  v24 = v129;
LABEL_24:
  v59 = *v143;
  if (BYTE5(v25) != 2 && *v143 == *&v140)
  {
    v60 = v123;
    v61 = v121;
    v62 = v122;
    goto LABEL_33;
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  *(&v137 + 1) = v63;
  v138 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
  v64 = __swift_allocate_boxed_opaque_existential_1(&v136);
  (*(v128 + 16))(v64, v148, v24);
  *(v64 + *(v63 + 36)) = 15;
  *(v64 + *(v63 + 40)) = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_23E88A098(0, v22[2] + 1, 1, v22);
  }

  v66 = v22[2];
  v65 = v22[3];
  if (v66 >= v65 >> 1)
  {
    v22 = sub_23E88A098((v65 > 1), v66 + 1, 1, v22);
  }

  v22[2] = v66 + 1;
  v67 = &v22[5 * v66];
  v68 = v136;
  v69 = v137;
  v67[8] = v138;
  *(v67 + 2) = v68;
  *(v67 + 3) = v69;
  if (BYTE13(v141[1]) != 2)
  {
    v25 = DWORD2(v141[1]) | (WORD6(v141[1]) << 32);
    v60 = BYTE8(v141[0]);
    v61 = *(&v140 + 1);
    v62 = *&v141[0];
LABEL_33:
    if (_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*&v143[8], *&v143[16], v143[24], v61, v62, v60))
    {
      goto LABEL_39;
    }
  }

  v146 = *&v143[8];
  v147 = v143[24];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
  *(&v137 + 1) = v70;
  v138 = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
  v71 = __swift_allocate_boxed_opaque_existential_1(&v136);
  (*(v128 + 16))(v71, v148, v24);
  *(v71 + *(v70 + 36)) = 16;
  v72 = v71 + *(v70 + 40);
  *v72 = v146;
  v72[16] = v147;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_23E88A098(0, v22[2] + 1, 1, v22);
  }

  v74 = v22[2];
  v73 = v22[3];
  if (v74 >= v73 >> 1)
  {
    v22 = sub_23E88A098((v73 > 1), v74 + 1, 1, v22);
  }

  v22[2] = v74 + 1;
  v75 = &v22[5 * v74];
  v76 = v136;
  v77 = v137;
  v75[8] = v138;
  *(v75 + 2) = v76;
  *(v75 + 3) = v77;
  v25 = DWORD2(v141[1]) | (WORD6(v141[1]) << 32);
LABEL_39:
  v78 = *&v143[28];
  v79 = *&v143[36];
  v80 = v143[44];
  if (BYTE5(v25) == 2 || (v144 = __PAIR64__(v25, DWORD1(v141[1])), v145 = WORD2(v25), !_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*&v143[28], *&v143[36], v143[44], *(v141 + 12), __SPAIR64__(v25, DWORD1(v141[1])), SBYTE4(v25))))
  {
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
    *(&v137 + 1) = v83;
    v138 = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
    v84 = __swift_allocate_boxed_opaque_existential_1(&v136);
    v24 = v129;
    v123 = *(v128 + 16);
    v123(v84, v148, v129);
    *(v84 + *(v83 + 36)) = 17;
    v85 = v84 + *(v83 + 40);
    *v85 = v78;
    *(v85 + 1) = v79;
    v85[16] = v80;
    v86 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_23E88A098(0, v22[2] + 1, 1, v22);
    }

    v88 = v86[2];
    v87 = v86[3];
    if (v88 >= v87 >> 1)
    {
      v86 = sub_23E88A098((v87 > 1), v88 + 1, 1, v86);
    }

    v86[2] = v88 + 1;
    v89 = &v86[5 * v88];
    v90 = v136;
    v91 = v137;
    v89[8] = v138;
    *(v89 + 2) = v90;
    *(v89 + 3) = v91;
    v81 = v143[45];
    v92 = DWORD2(v141[1]) | (WORD6(v141[1]) << 32);
    if ((v92 & 0xFF0000000000) == 0x20000000000)
    {
      if (v143[45])
      {
        v93 = 0x646E756F72;
      }

      else
      {
        v93 = 1701736302;
      }

      if (v143[45])
      {
        v94 = 0xE500000000000000;
      }

      else
      {
        v94 = 0xE400000000000000;
      }

      v95 = v124;
      v123(v124, v148, v24);
      goto LABEL_72;
    }

    v82 = (v92 >> 40) & 1;
    v22 = v86;
  }

  else
  {
    v81 = v143[45];
    LOBYTE(v82) = v120;
  }

  if (v81)
  {
    v93 = 0x646E756F72;
  }

  else
  {
    v93 = 1701736302;
  }

  if (v81)
  {
    v94 = 0xE500000000000000;
  }

  else
  {
    v94 = 0xE400000000000000;
  }

  if (v82)
  {
    v96 = 0x646E756F72;
  }

  else
  {
    v96 = 1701736302;
  }

  if (v82)
  {
    v97 = 0xE500000000000000;
  }

  else
  {
    v97 = 0xE400000000000000;
  }

  if (v93 == v96 && v94 == v97)
  {

    goto LABEL_77;
  }

  v98 = sub_23E900E04();

  if ((v98 & 1) == 0)
  {
    v86 = v22;
    v95 = v124;
    (*(v128 + 16))(v124, v148, v24);
LABEL_72:
    v99 = v126;
    (*(v128 + 32))(v126, v95, v24);
    v100 = v125;
    *(v99 + *(v125 + 36)) = 19;
    v101 = (v99 + *(v100 + 40));
    *v101 = v93;
    v101[1] = v94;
    *(&v137 + 1) = v100;
    v138 = sub_23E880EFC(&qword_27E35F240, &qword_27E35F238, &qword_23E906A18);
    v102 = __swift_allocate_boxed_opaque_existential_1(&v136);
    sub_23E8D5454(v99, v102);
    v22 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23E88A098(0, v86[2] + 1, 1, v86);
    }

    v104 = v22[2];
    v103 = v22[3];
    if (v104 >= v103 >> 1)
    {
      v22 = sub_23E88A098((v103 > 1), v104 + 1, 1, v22);
    }

    v22[2] = v104 + 1;
    v105 = &v22[5 * v104];
    v106 = v136;
    v107 = v137;
    v105[8] = v138;
    *(v105 + 2) = v106;
    *(v105 + 3) = v107;
  }

LABEL_77:
  v108 = v22[2];
  if (v108)
  {
    v148 = v22;
    v109 = (v22 + 4);
    v13 = MEMORY[0x277D84F90];
    do
    {
      sub_23E880F50(v109, &v136);
      v130[0] = v136;
      v130[1] = v137;
      v131 = v138;
      if (*(&v137 + 1))
      {
        sub_23E881028(v130, v132);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_23E889F50(0, v13[2] + 1, 1, v13);
          v135 = v13;
        }

        v112 = v13[2];
        v111 = v13[3];
        if (v112 >= v111 >> 1)
        {
          v13 = sub_23E889F50((v111 > 1), v112 + 1, 1, v13);
          v135 = v13;
        }

        v113 = v133;
        v114 = v134;
        v115 = __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
        MEMORY[0x28223BE20](v115);
        v117 = &v120 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v118 + 16))(v117);
        sub_23E8F2C70(v112, v117, &v135, v113, v114);
        __swift_destroy_boxed_opaque_existential_1(v132);
      }

      else
      {
        sub_23E880FC0(v130);
      }

      v109 += 40;
      --v108;
    }

    while (v108);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_23E8D5454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F238, &qword_23E906A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8D54C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  result = sub_23E8CE3CC();
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E903380;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x800000023E909100;
    v9[1] = *(v2 + 8);

    sub_23E900C64();
    v7 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    sub_23E8D3054(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = v5;
    sub_23E8D0D04(v7, sub_23E8CF910, 0, isUniquelyReferenced_nonNull_native, v9);

    result = v9[0];
  }

  *a1 = result;
  return result;
}

uint64_t sub_23E8D55FC(uint64_t a1)
{
  result = sub_23E8D5684(&qword_27E35F248, &protocol conformance descriptor for SpriteSheetAnimation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8D5640(uint64_t a1)
{
  result = sub_23E8D5684(&qword_27E35F250, &protocol conformance descriptor for SpriteSheetAnimation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8D5684(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpriteSheetAnimation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RenderAsset.MIMEType.rawValue.getter()
{
  if (*v0)
  {
    return 0x504A2F6F65646976;
  }

  else
  {
    return 0x6E702F6567616D69;
  }
}

AirPlayKit::RenderAsset::MIMEType_optional __swiftcall RenderAsset.MIMEType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8D5774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x504A2F6F65646976;
  }

  else
  {
    v3 = 0x6E702F6567616D69;
  }

  if (v2)
  {
    v4 = 0xE900000000000067;
  }

  else
  {
    v4 = 0xEA00000000004745;
  }

  if (*a2)
  {
    v5 = 0x504A2F6F65646976;
  }

  else
  {
    v5 = 0x6E702F6567616D69;
  }

  if (*a2)
  {
    v6 = 0xEA00000000004745;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23E900E04();
  }

  return v8 & 1;
}

uint64_t sub_23E8D5824()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8D58B0(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8D5928(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8D59B0@<X0>(char *a2@<X8>)
{
  v3 = sub_23E900DA4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_23E8D5A10(uint64_t *a1@<X8>)
{
  v2 = 0x6E702F6567616D69;
  if (*v1)
  {
    v2 = 0x504A2F6F65646976;
  }

  v3 = 0xE900000000000067;
  if (*v1)
  {
    v3 = 0xEA00000000004745;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RenderAsset.ImageType.hash(into:)()
{
  if (*(v0 + 24))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 16);
    MEMORY[0x23EF17B90](1);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
  }

  return MEMORY[0x23EF17B90](v1);
}

uint64_t RenderAsset.ImageType.hashValue.getter()
{
  sub_23E900EB4();
  RenderAsset.ImageType.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D5B6C()
{
  sub_23E900EB4();
  RenderAsset.ImageType.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D5BCC(uint64_t a1)
{
  sub_23E900EB4();
  RenderAsset.ImageType.hash(into:)();
  return sub_23E900F14();
}

uint64_t RenderAsset.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 RenderAsset.type.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  v3 = v1[2].n128_u8[8];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 RenderAsset.init(identifier:type:mime:serialized:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unsigned __int8 *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a3[1].n128_u64[0];
  v8 = a3[1].n128_u8[8];
  v9 = *a4;
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  result = *a3;
  a7[1] = *a3;
  a7[2].n128_u64[0] = v7;
  a7[2].n128_u8[8] = v8;
  a7[2].n128_u8[9] = v9;
  a7[3].n128_u64[0] = a5;
  a7[3].n128_u64[1] = a6;
  return result;
}

uint64_t RenderAsset.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_23E900904();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
  }

  MEMORY[0x23EF17B90](v2);
  sub_23E900904();
}

uint64_t RenderAsset.hashValue.getter()
{
  sub_23E900EB4();
  RenderAsset.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8D5E10()
{
  sub_23E900EB4();
  RenderAsset.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8D5E54(uint64_t a1)
{
  sub_23E900EB4();
  RenderAsset.hash(into:)(v2);
  return sub_23E900F14();
}

uint64_t _s10AirPlayKit11RenderAssetV9ImageTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0;
  }

  if (*(a2 + 24))
  {
    return 0;
  }

  v4 = COERCE_FLOAT(HIDWORD(*a1)) == COERCE_FLOAT(HIDWORD(*a2)) && COERCE_FLOAT(*a1) == COERCE_FLOAT(*a2);
  v5 = v4 & (COERCE_FLOAT(*(a1 + 8)) == COERCE_FLOAT(*(a2 + 8)));
  if (COERCE_FLOAT(HIDWORD(*(a1 + 8))) != COERCE_FLOAT(HIDWORD(*(a2 + 8))))
  {
    v5 = 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_23E900E04() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((v5 & 1) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v12 = *&v2 == *&v8 && *(&v2 + 1) == *(&v8 + 1);
      v13 = v12 && *&v4 == *&v7;
      v14 = v13 && *(&v4 + 1) == *(&v7 + 1);
      if (v14 && v3 == v9)
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    v16 = 0;
    return v16 & 1;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v6)
  {
    v17 = 0x504A2F6F65646976;
  }

  else
  {
    v17 = 0x6E702F6567616D69;
  }

  if (v6)
  {
    v18 = 0xEA00000000004745;
  }

  else
  {
    v18 = 0xE900000000000067;
  }

  if (v11)
  {
    v19 = 0x504A2F6F65646976;
  }

  else
  {
    v19 = 0x6E702F6567616D69;
  }

  if (v11)
  {
    v20 = 0xEA00000000004745;
  }

  else
  {
    v20 = 0xE900000000000067;
  }

  if (v17 == v19 && v18 == v20)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_23E900E04();
  }

  return v16 & 1;
}

unint64_t sub_23E8D6094()
{
  result = qword_27E35F258;
  if (!qword_27E35F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F258);
  }

  return result;
}

unint64_t sub_23E8D60EC()
{
  result = qword_27E35F260;
  if (!qword_27E35F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F260);
  }

  return result;
}

unint64_t sub_23E8D6144()
{
  result = qword_27E35F268;
  if (!qword_27E35F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F268);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23E8D61AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E8D61F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RenderAsset.ImageType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RenderAsset.ImageType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RenderAsset.ImageType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_23E8D62FC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E8D6318(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_23E8D64D8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23E8D65A8;

  return sub_23E8D6D10();
}

uint64_t sub_23E8D65A8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_23E900554();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F2D0, qword_23E906C78);
    v10 = sub_23E9009A4();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_23E8D68F8(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = sub_23E900884();
  v8 = v7;
  v4[5] = v7;
  v9 = a1;

  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_23E8D69F0;

  return sub_23E8D7094(v6, v8);
}

uint64_t sub_23E8D69F0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = *v4;

  v10 = *(v7 + 32);
  if (v3)
  {
    v11 = sub_23E900554();

    (v10)[2](v10, 0, 0, v11);
    _Block_release(v10);
  }

  else
  {
    v12 = sub_23E900854();
    (v10)[2](v10, v12, a3 & 1, 0);

    _Block_release(v10);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_23E8D6C00()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E8D6C50()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E889AD8;

  return sub_23E8D68F8(v2, v3, v5, v4);
}

uint64_t sub_23E8D6D30()
{
  v1 = v0[2];
  v2 = *(v1 + 96);
  v0[3] = v2;
  v0[4] = *(v1 + 104);
  if (v2)
  {

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_23E8D6EA0;

    return v7();
  }

  else
  {
    sub_23E8A9420();
    swift_allocError();
    *v5 = 8;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23E8D6EA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_23E8D7030;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_23E8D6FC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E8D6FC8()
{
  sub_23E882A30(v0[3], v0[4]);
  v1 = v0[1];
  v2 = v0[7];

  return v1(v2);
}

uint64_t sub_23E8D7030()
{
  sub_23E882A30(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23E8D7094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23E8D70B8, 0, 0);
}

uint64_t sub_23E8D70B8()
{
  v1 = v0[4];
  v2 = *(v1 + 112);
  v0[5] = v2;
  v0[6] = *(v1 + 120);
  if (v2)
  {

    v9 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_23E8D7234;
    v5 = v0[2];
    v4 = v0[3];

    return v9(v5, v4);
  }

  else
  {
    sub_23E8A9420();
    swift_allocError();
    *v7 = 8;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_23E8D7234(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_23E8D7418;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = sub_23E8D7368;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E8D7368()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_23E900624();
  v7 = v6;
  sub_23E882A30(v4, v3);
  sub_23E8A7854(v2, v1);
  v8 = v0[1];

  return v8(v5, v7, 1);
}

uint64_t sub_23E8D7418()
{
  sub_23E882A30(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23E8D7480()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8D74C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E888F34;

  return sub_23E8D64D8(v2, v3, v4);
}

unint64_t sub_23E8D758C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 1953394534;
  *(inited + 40) = 0xE400000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F2F8, qword_23E906CF0);
  sub_23E8D78CC();
  sub_23E900C64();
  *(inited + 88) = 0x657A6953746E6F66;
  *(inited + 96) = 0xE800000000000000;
  sub_23E900C64();
  v1 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_23E8D76D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D758C();
  *a1 = result;
  return result;
}

unint64_t sub_23E8D7700(uint64_t a1)
{
  result = sub_23E8D7728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D7728()
{
  result = qword_27E35F2E0;
  if (!qword_27E35F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F2E0);
  }

  return result;
}

unint64_t sub_23E8D777C(uint64_t a1)
{
  result = sub_23E8D77A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D77A4()
{
  result = qword_27E35F2E8;
  if (!qword_27E35F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F2E8);
  }

  return result;
}

uint64_t sub_23E8D77F8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    *a1 = *v1;
    a1[1] = v2;
  }

  else
  {
    *a1 = 0x6D6574737973;
    a1[1] = 0xE600000000000000;
  }
}

unint64_t sub_23E8D7828(uint64_t a1)
{
  result = sub_23E8D7850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D7850()
{
  result = qword_27E35F2F0;
  if (!qword_27E35F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F2F0);
  }

  return result;
}

unint64_t sub_23E8D78A4(uint64_t a1)
{
  result = sub_23E8A7FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D78CC()
{
  result = qword_27E35F300;
  if (!qword_27E35F300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F2F8, qword_23E906CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F300);
  }

  return result;
}

unint64_t sub_23E8D7948(uint64_t a1, uint64_t a2)
{
  result = sub_23E8F5DB4(a1 & 0xFFFFFFFFFFLL);
  if (result)
  {
    if (sub_23E8F5DB4(a2 & 0xFFFFFFFFFFLL))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      *(inited + 32) = 0x6874646977;
      *(inited + 40) = 0xE500000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
      sub_23E881570();
      sub_23E900C64();
      *(inited + 88) = 0x746867696568;
      *(inited + 96) = 0xE600000000000000;
      sub_23E900C64();
      v5 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
      swift_arrayDestroy();
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_23E8D7A98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8D7948(*v1 | (*(v1 + 4) << 32), v1[2] | (*(v1 + 12) << 32));
  *a1 = result;
  return result;
}

unint64_t sub_23E8D7AD8(uint64_t a1)
{
  result = sub_23E89C968();
  *(a1 + 8) = result;
  return result;
}

void sub_23E8D7B00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_lock);
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(*(v5 + 16));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
    swift_beginAccess();
    v10 = *&v7[v9];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v7[v9] = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_23E88A2E4(0, v10[2] + 1, 1, v10);
      *&v7[v9] = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_23E88A2E4((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_23E888DC0;
    v14[5] = v8;
    *&v7[v9] = v10;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v5 + 16));
  MEMORY[0x23EF18610](v19);
  v15 = *(v2 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop);
  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source);
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      CFRunLoopSourceSignal(v17);
      CFRunLoopWakeUp(v18);
    }
  }
}

id sub_23E8D7CB4()
{
  ObjectType = swift_getObjectType();
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD00000000000005BLL, 0x800000023E909230, 0x74696E696564, 0xE600000000000000);
  v3 = v0;
  [v3 cancel];

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_23E8D7EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = [objc_allocWithZone(type metadata accessor for RunLoopWorkerThread()) init];
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v8, v6, v2);
  *(v10 + v9) = v7;
  v11 = v7;
  sub_23E8D7B00(sub_23E8D8DD4, v10);

  [v11 start];
}

uint64_t sub_23E8D8064(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50);
  return sub_23E900A54();
}

void sub_23E8D80B4(void *a1, char *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = CFRunLoopGetCurrent();
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 48);
  context.cancel = sub_23E8D85A0;
  context.perform = sub_23E8D85A4;
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v5 = sub_23E900764();
  __swift_project_value_buffer(v5, qword_27E367168);
  v6 = sub_23E900744();
  v7 = sub_23E900B14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    v40 = context;
    type metadata accessor for CFRunLoopSourceContext(0);
    v10 = sub_23E9008D4();
    v12 = v4;
    v13 = sub_23E887B9C(v10, v11, &v41);

    *(v8 + 4) = v13;
    v4 = v12;
    _os_log_impl(&dword_23E879000, v6, v7, "CFRunLoopSourceContext: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  v14 = *MEMORY[0x277CBECE8];
  swift_beginAccess();
  v15 = CFRunLoopSourceCreate(v14, 0, &context);
  swift_endAccess();
  v16 = v15;
  v17 = v4;
  v18 = sub_23E900744();
  v19 = sub_23E900B14();

  v39 = v16;
  if (os_log_type_enabled(v18, v19))
  {
    v37 = v4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40.version = v21;
    *v20 = 136315394;
    v41 = v15;
    v22 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F328, &qword_23E906D38);
    v23 = sub_23E9008D4();
    v25 = sub_23E887B9C(v23, v24, &v40.version);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v41 = v37;
    v26 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F330, &qword_23E906D40);
    v27 = sub_23E9008D4();
    v29 = sub_23E887B9C(v27, v28, &v40.version);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_23E879000, v18, v19, "Adding %s to %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v21, -1, -1);
    v30 = v20;
    v4 = v37;
    MEMORY[0x23EF18560](v30, -1, -1);
  }

  v31 = *MEMORY[0x277CBF058];
  CFRunLoopAddSource(v17, v16, *MEMORY[0x277CBF058]);
  v32 = *&a2[OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_lock];
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(*(v32 + 16));
  sub_23E8D85F4(&v40, v4, v15);
  if (v38)
  {

    os_unfair_lock_unlock(*(v32 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v32 + 16));
    MEMORY[0x23EF18610](&v40);
    sub_23E8D8818();
    do
    {
      v33 = MEMORY[0x23EF17D10]();
      v34 = CFRunLoopRunInMode(v31, 1.0e10, 1u);
      objc_autoreleasePoolPop(v33);
    }

    while ((v34 - 1) >= 2 && ![a2 isCancelled]);
    swift_unknownObjectWeakInit();
    os_unfair_lock_lock(*(v32 + 16));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      sub_23E8D8900();
    }

    os_unfair_lock_unlock(*(v32 + 16));

    MEMORY[0x23EF18610](&v41);
  }
}

void sub_23E8D85A4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_23E8D8818();
  }
}

void sub_23E8D85F4(uint64_t a1, void *a2, void *a3)
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v6 = sub_23E900764();
  __swift_project_value_buffer(v6, qword_27E367168);
  v7 = sub_23E900744();
  v8 = sub_23E900B14();
  if (os_log_type_enabled(v7, v8))
  {
    v22[4] = v3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315138;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F338, &qword_23E906D48);
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_23E879000, v7, v8, "%s has been activated!", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EF18560](v10, -1, -1);
    MEMORY[0x23EF18560](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop);
    *(Strong + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop) = a2;
    v16 = Strong;
    v17 = a2;
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source);
    *(v18 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source) = a3;
    v20 = v18;
    v21 = a3;
  }
}

void sub_23E8D8818()
{
  v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_lock);
  swift_unknownObjectWeakInit();
  os_unfair_lock_lock(*(v1 + 16));
  sub_23E8D8A64(&v8);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v8;
  MEMORY[0x23EF18610](v9);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v2 + 40;
      while (v4 < *(v2 + 16))
      {
        ++v4;
        v6 = *(v5 - 8);

        v6(v7);

        v5 += 16;
        if (v3 == v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);

      os_unfair_lock_unlock(*(v2 + 16));
      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t sub_23E8D8900()
{
  v1 = v0;
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD00000000000005BLL, 0x800000023E909230, 0x2870556E61656C63, 0xE900000000000029);
  v3 = *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop);
  *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source);
  *(v0 + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source) = 0;

  v5 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
  swift_beginAccess();
  *(v1 + v5) = MEMORY[0x277D84F90];
}

char *sub_23E8D8A64@<X0>(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue;
    v9 = result;
    swift_beginAccess();
    *&v9[v8] = MEMORY[0x277D84F90];
  }

  *a2 = v6;
  return result;
}

void sub_23E8D8C2C(char *a1)
{
  if (a1)
  {
    v1 = *&a1[OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop];
    v2 = a1;
    if (v1)
    {
      v3 = *&v2[OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source];
      if (v3)
      {
        v8 = v2;
        v4 = v3;
        v5 = v1;
        [v8 cancel];
        v6 = *MEMORY[0x277CBF058];
        v7 = v5;
        CFRunLoopRemoveSource(v7, v4, v6);
        CFRunLoopStop(v7);

        v2 = v8;
      }
    }
  }
}

uint64_t sub_23E8D8CF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E8D8D2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23E8D8DD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23E8D8064(v0 + v2, v3);
}

double static Transform.identity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1065353216;
  *a1 = xmmword_23E903320;
  *(a1 + 16) = 0;
  return result;
}

void __swiftcall Transform.init(a:b:c:d:tx:ty:)(AirPlayKit::Transform *__return_ptr retstr, Swift::Float a, Swift::Float b, Swift::Float c, Swift::Float d, Swift::Float tx, Swift::Float ty)
{
  retstr->a = a;
  retstr->b = b;
  retstr->c = c;
  retstr->d = d;
  retstr->tx = tx;
  retstr->ty = ty;
}

double static Transform.scale(x:y:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 4) = 0;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  return result;
}

void static Transform.translation(x:y:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  *a1 = xmmword_23E903320;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
}

void static Transform.rotation(radians:)(uint64_t a1@<X8>, float a2@<S0>)
{
  v3 = __sincosf_stret(a2);
  *a1 = v3.__cosval;
  *(a1 + 4) = v3.__sinval;
  *(a1 + 8) = -v3.__sinval;
  *(a1 + 12) = v3.__cosval;
  *(a1 + 16) = 0;
}

float32x2_t static Transform.+ infix(_:_:)@<D0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  *v5.f32 = *a2;
  *v6.f32 = a2[1];
  v7 = vmul_n_f32(*a2, COERCE_FLOAT(*(a1 + 16)));
  *&v5.u32[2] = *a2;
  v8 = vmul_n_f32(*v6.f32, *(a1 + 20));
  v6.i64[1] = v6.i64[0];
  v3.i32[1] = *(a1 + 8);
  v4.i32[1] = *(a1 + 12);
  *a3 = vaddq_f32(vmulq_f32(v5, vzip1q_s32(v3, v3)), vmulq_f32(v6, vzip1q_s32(v4, v4)));
  result = vadd_f32(a2[2], vadd_f32(v7, v8));
  *(a3 + 16) = result;
  return result;
}

uint64_t Transform.hash(into:)()
{
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900EE4();
}

uint64_t Transform.hashValue.getter()
{
  sub_23E900EB4();
  Transform.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D906C()
{
  sub_23E900EB4();
  Transform.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D90B0(uint64_t a1)
{
  sub_23E900EB4();
  Transform.hash(into:)();
  return sub_23E900F14();
}

BOOL sub_23E8D90EC(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 2);
  return _s10AirPlayKit9TransformV2eeoiySbAC_ACtFZ_0(&v3, &v5);
}

unint64_t sub_23E8D91A8()
{
  result = qword_27E35F348;
  if (!qword_27E35F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F348);
  }

  return result;
}

unint64_t sub_23E8D91FC(uint64_t a1)
{
  result = sub_23E8D9224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D9224()
{
  result = qword_27E35F350;
  if (!qword_27E35F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F350);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Transform(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Transform(uint64_t result, int a2, int a3)
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

void (*sub_23E8D92E8(void (*result)(void *), uint64_t a2, unint64_t a3))(void *)
{
  v10 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EF17990](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9[0] = v6;
        v9[1] = v7;
        v10(v9);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_23E900D34();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_23E8D93FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_23E900734();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8D94F4, 0, 0);
}

uint64_t sub_23E8D94F4()
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000012, 0x800000023E909500);
  v4 = __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  v5 = *v4;
  v6 = *(*v4 + 40);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  swift_beginAccess();
  sub_23E8891B4(v5 + v7, v1, &unk_27E35F3D0, &qword_23E905770);
  os_unfair_lock_unlock(*(v6 + 16));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v9 = (*(*(v8 - 8) + 48))(v1, 1, v8);
  v10 = *(v0 + 128);
  if (v9 == 1)
  {
    sub_23E87E458(*(v0 + 128), &unk_27E35F3D0, &qword_23E905770);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    *(v0 + 40) = v8;
    *(v0 + 48) = sub_23E8A2828();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_23E8B7D50(v10, boxed_opaque_existential_1);
  }

  v12 = *(v0 + 96);
  v13 = v12[11];
  os_unfair_lock_lock(*(v13 + 16));
  sub_23E8D99EC(v12, v0 + 16);
  os_unfair_lock_unlock(*(v13 + 16));
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  v14 = sub_23E8FABC4();
  if (v14)
  {
    v15 = v14;
    sub_23E8D9C40(v14, 0);
    swift_unknownObjectRetain();
    v16 = sub_23E900744();
    v17 = sub_23E900B14();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = [v15 depth];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_23E879000, v16, v17, "Depth: %lu", v18, 0xCu);
      MEMORY[0x23EF18560](v18, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v22 = *(v0 + 120);
    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v25 = *(v0 + 88);
    *(v0 + 80) = MEMORY[0x277D84F90];
    v26 = swift_task_alloc();
    *(v26 + 16) = v0 + 80;
    sub_23E900714();
    sub_23E8D9F7C(v22, sub_23E8DCB48, v26);
    (*(v24 + 8))(v22, v23);

    v27 = [v25 dispatcher];
    sub_23E8BD4C0(*(v0 + 80));
    sub_23E8B7F00();
    v28 = sub_23E9009A4();

    [v27 inlineStyleInvalidatedWithNodeIds_];

    swift_unknownObjectRelease();

    sub_23E87E458(v0 + 16, &unk_27E35F3E0, "t=");

    v29 = *(v0 + 8);

    return v29(v15);
  }

  else
  {
    sub_23E8A9420();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
    sub_23E87E458(v0 + 16, &unk_27E35F3E0, "t=");

    v20 = *(v0 + 8);

    return v20();
  }
}

void *sub_23E8D99EC(void *result, uint64_t a2)
{
  v2 = result[2];
  if (!(v2 >> 62))
  {
    v4 = result;
    v5 = result[3];
    v6 = result[4];
    v7 = result[5];
    v8 = qword_27E35E188;
    v9 = v2;
    v10 = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = sub_23E900764();
    __swift_project_value_buffer(v11, qword_27E367168);
    sub_23E8891B4(a2, v28, &unk_27E35F3E0, "t=");
    v12 = sub_23E900744();
    v13 = sub_23E900B14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v6;
      v29 = v25;
      *v14 = 136315138;
      sub_23E8891B4(v28, v27, &unk_27E35F3E0, "t=");
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3E0, "t=");
      v15 = sub_23E9008D4();
      v16 = v7;
      v17 = v5;
      v19 = v18;
      sub_23E87E458(v28, &unk_27E35F3E0, "t=");
      v20 = sub_23E887B9C(v15, v19, &v29);
      v5 = v17;
      v7 = v16;

      *(v14 + 4) = v20;
      _os_log_impl(&dword_23E879000, v12, v13, "Switch state to connected with rootNode: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v6 = v26;
      MEMORY[0x23EF18560](v25, -1, -1);
      MEMORY[0x23EF18560](v14, -1, -1);
    }

    else
    {

      sub_23E87E458(v28, &unk_27E35F3E0, "t=");
    }

    v21 = v4[2];
    v22 = v4[3];
    v23 = v4[4];
    v24 = v4[5];
    v4[2] = v2 | 0x4000000000000000;
    v4[3] = v5;
    v4[4] = v6;
    v4[5] = v7;
    return sub_23E8B5B40(v21, v22, v23, v24);
  }

  return result;
}

id sub_23E8D9C40(unint64_t a1, uint64_t a2)
{
  if (qword_27E35E188 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v4 = sub_23E900764();
    __swift_project_value_buffer(v4, qword_27E367168);
    swift_unknownObjectRetain();
    v5 = sub_23E900744();
    v6 = sub_23E900B14();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      result = swift_slowAlloc();
      *v7 = 136315394;
      v24 = result;
      if (a2 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      if (a2)
      {
        v10 = a2;
        do
        {
          MEMORY[0x23EF17600](45, 0xE100000000000000);
          --v10;
        }

        while (v10);
      }

      v11 = sub_23E887B9C(0, 0xE000000000000000, &v24);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = [a1 description];
      v13 = sub_23E900884();
      v15 = v14;

      v16 = sub_23E887B9C(v13, v15, &v24);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_23E879000, v5, v6, "%s%s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v9, -1, -1);
      MEMORY[0x23EF18560](v7, -1, -1);
    }

    result = [a1 children];
    if (!result)
    {
      return result;
    }

    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    a1 = sub_23E9009B4();

    if (!(a1 >> 62))
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_11;
    }

    v18 = sub_23E900D34();
    if (!v18)
    {
      break;
    }

LABEL_11:
    v19 = 0;
    v21 = __OFADD__(a2++, 1);
    while ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23EF17990](v19, a1);
      v22 = result;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_17:
      if (v21)
      {
        goto LABEL_25;
      }

      sub_23E8D9C40(v22, a2);
      swift_unknownObjectRelease();
      ++v19;
      if (v23 == v18)
      {
        goto LABEL_28;
      }
    }

    if (v19 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(a1 + 8 * v19 + 32);
      result = swift_unknownObjectRetain();
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_28:
}

id sub_23E8D9F7C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = v3;
  a2(a1, v4);
  result = [v4 children];
  if (result)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    v10 = sub_23E9009B4();

    MEMORY[0x28223BE20](v11);
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    sub_23E8D92E8(sub_23E8DC11C, v12, v10);
  }

  return result;
}

uint64_t sub_23E8DA1F8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23E8DA2BC;

  return sub_23E8D93FC(v5);
}

uint64_t sub_23E8DA2BC(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 32);
  if (v3)
  {
    v9 = sub_23E900554();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    v8[2](*(v5 + 32), a1, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_23E8DA610(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_23E8DA6EC;

  return sub_23E8DC204(a2);
}

uint64_t sub_23E8DA6EC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v4)
  {
    v8 = sub_23E900554();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_23E900854();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v5 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_23E8DAA2C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_23E8DAB08;

  return sub_23E8DC734(a2);
}

uint64_t sub_23E8DAB08(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_23E900554();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_23E9009A4();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_23E8DACB4(uint64_t a1, int a2, int a3)
{
  *(v4 + 64) = a2;
  *(v4 + 68) = a3;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_23E900734();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8DAD78, 0, 0);
}

uint64_t sub_23E8DAD78()
{
  v54 = v0;
  if (qword_27E35E188 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 68);
    v3 = sub_23E900764();
    __swift_project_value_buffer(v3, qword_27E367168);
    sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000032, 0x800000023E909460);
    v4 = __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_28:
      v0 = sub_23E900D34();
      if (!v0)
      {
LABEL_29:

        v7 = v47;
        v0 = v48;
LABEL_30:
        v35 = *(v0 + 48);
        v36 = *(v0 + 56);
        v37 = v7;
        v38 = *(v0 + 40);
        v39 = *(v0 + 24);
        v40 = MEMORY[0x277D84F90];
        *(v0 + 16) = MEMORY[0x277D84F90];
        v41 = swift_task_alloc();
        *(v41 + 16) = v0 + 16;
        sub_23E900714();
        sub_23E8D9F7C(v36, sub_23E8DCB8C, v41);
        (*(v35 + 8))(v36, v38);

        v42 = [v39 dispatcher];
        sub_23E8BD4C0(*(v0 + 16));
        sub_23E8B7F00();
        v43 = sub_23E9009A4();

        [v42 inlineStyleInvalidatedWithNodeIds_];

        swift_unknownObjectRelease();
        v44 = [v37 children];
        if (v44)
        {
          v45 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
          v40 = sub_23E9009B4();
        }

        swift_unknownObjectRelease();

        v46 = *(v0 + 8);

        return v46(v40);
      }

      goto LABEL_15;
    }

    v5 = *(v0 + 64);
    v6 = *(*v4 + 40);
    os_unfair_lock_lock(*(v6 + 16));
    v7 = sub_23E8FA998(v5, v2 + 1);
    os_unfair_lock_unlock(*(v6 + 16));
    if (!v7)
    {
      break;
    }

    swift_unknownObjectRetain();
    v8 = sub_23E900744();
    v9 = sub_23E900B14();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = [v7 depth];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_23E879000, v8, v9, "Depth: %lu", v10, 0xCu);
      MEMORY[0x23EF18560](v10, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v14 = sub_23E900744();
    v15 = sub_23E900B14();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23E879000, v14, v15, "Children: ", v16, 2u);
      MEMORY[0x23EF18560](v16, -1, -1);
    }

    v17 = [v7 children];
    if (!v17)
    {
      goto LABEL_30;
    }

    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    v1 = sub_23E9009B4();

    v47 = v7;
    v48 = v0;
    if (v1 >> 62)
    {
      goto LABEL_28;
    }

    v0 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v0)
    {
      goto LABEL_29;
    }

LABEL_15:
    v19 = 0;
    v20 = v1 & 0xC000000000000001;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v49 = v0;
    while (v20)
    {
      v22 = MEMORY[0x23EF17990](v19, v1);
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_24;
      }

LABEL_20:
      swift_unknownObjectRetain();
      v24 = sub_23E900744();
      v25 = sub_23E900B14();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v26 = 136315138;
        v50 = v25;
        v27 = v21;
        v28 = v20;
        v29 = v1;
        v30 = [v22 description];
        v31 = sub_23E900884();
        v52 = v23;
        v33 = v32;

        v1 = v29;
        v20 = v28;
        v21 = v27;
        v34 = sub_23E887B9C(v31, v33, &v53);
        v23 = v52;

        *(v26 + 4) = v34;
        v0 = v49;
        _os_log_impl(&dword_23E879000, v24, v50, "- %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x23EF18560](v51, -1, -1);
        MEMORY[0x23EF18560](v26, -1, -1);
      }

      swift_unknownObjectRelease();
      ++v19;
      if (v23 == v0)
      {
        goto LABEL_29;
      }
    }

    if (v19 >= *(v21 + 16))
    {
      goto LABEL_25;
    }

    v22 = *(v1 + 8 * v19 + 32);
    swift_unknownObjectRetain();
    v23 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  sub_23E8A9420();
  swift_allocError();
  *v11 = 1;
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23E8DB3E8(int a1, id a2, uint64_t *a3)
{
  v4 = [a2 nodeId];
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    result = sub_23E88AAB0(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_23E88AAB0((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 4 * v8 + 32) = v4;
  return result;
}

uint64_t sub_23E8DB644(void *a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;

  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_23E8DB720;

  return sub_23E8DACB4(v9, a2, a3);
}

uint64_t sub_23E8DB720(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_23E900554();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    v10 = sub_23E9009A4();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_23E8DB8E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23E889AD8;

  return sub_23E8DB644(v2, v3, v4, v6, v5);
}

uint64_t sub_23E8DB9A8(void *a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v6 = sub_23E900734();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E900724();
  sub_23E8D9F7C(v9, a3, a4);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23E8DBAA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23E889AD8;

  return v6();
}

uint64_t sub_23E8DBB90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23E888F34;

  return v7();
}

uint64_t sub_23E8DBC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23E8891B4(a3, v23 - v10, &qword_27E35E5E0, &qword_23E905750);
  v12 = sub_23E900A74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23E87E458(v11, &qword_27E35E5E0, &qword_23E905750);
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

  sub_23E900A64();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23E900A34();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23E9008E4() + 32;
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

    sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);

    return v21;
  }

LABEL_8:
  sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);
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

uint64_t sub_23E8DBF74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E8DBFAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AD8;

  return sub_23E8879AC(a1, v4);
}

uint64_t sub_23E8DC064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E888F34;

  return sub_23E8879AC(a1, v4);
}

uint64_t sub_23E8DC13C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E889AD8;

  return sub_23E8DAA2C(v2, v3, v5, v4);
}

uint64_t sub_23E8DC204(int a1)
{
  *(v2 + 152) = v1;
  *(v2 + 184) = a1;
  sub_23E9008C4();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = type metadata accessor for RenderTransactionAction(0);
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8DC2F4, 0, 0);
}

uint64_t sub_23E8DC2F4()
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 184);
  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000021, 0x800000023E9094D0);
  v4 = *(*__swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72)) + 40);
  os_unfair_lock_lock(*(v4 + 16));
  sub_23E8F9B54(v2, v0 + 72);
  os_unfair_lock_unlock(*(v4 + 16));
  if (*(v0 + 112))
  {
    v5 = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v6 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v6;
    *(v0 + 48) = v5;
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v7);
    v10 = (*(v8 + 88))(v7, v8);
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
    *(v11 + *(v12 + 20)) = v10;
    v13 = sub_23E8CD2C8();
    v14 = objc_opt_self();
    *(v0 + 128) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5A0, &qword_23E902F38);
    v15 = [v14 isValidJSONObject_];
    swift_unknownObjectRelease();
    if (v15)
    {
      *(v0 + 136) = v13;
      v16 = sub_23E900BC4();

      *(v0 + 144) = 0;
      v17 = [v14 dataWithJSONObject:v16 options:3 error:v0 + 144];
      swift_unknownObjectRelease();
      v18 = *(v0 + 144);
      if (v17)
      {
        v19 = sub_23E900634();
        v21 = v20;

        sub_23E9008B4();
        v22 = sub_23E9008A4();
        if (v23)
        {
          v24 = v22;
          v25 = v23;
          sub_23E8A7854(v19, v21);
        }

        else
        {
          sub_23E8A7854(v19, v21);
          v24 = 0;
          v25 = 0xE000000000000000;
        }

        sub_23E8DC9F0(*(v0 + 176));
        sub_23E8A295C(v0 + 16);

        v31 = *(v0 + 8);

        return v31(v24, v25);
      }

      v26 = *(v0 + 176);
      v28 = v18;
      sub_23E900564();
    }

    else
    {
      v26 = *(v0 + 176);

      sub_23E8A9420();
      swift_allocError();
      *v27 = 7;
    }

    swift_willThrow();
    sub_23E8DC9F0(v26);
    sub_23E8A295C(v0 + 16);
  }

  else
  {
    sub_23E87E458(v0 + 72, &unk_27E35EB60, &unk_23E907DC0);
    sub_23E8A9420();
    swift_allocError();
    *v9 = 6;
    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}