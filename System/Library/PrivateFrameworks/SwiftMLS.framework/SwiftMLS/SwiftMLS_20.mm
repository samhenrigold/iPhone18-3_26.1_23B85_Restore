uint64_t sub_26BF8B204(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_26BFD9590(v10);
      v10 = result;
    }

    v90 = *(v10 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v10[16 * v90];
        v92 = *&v10[16 * v90 + 24];
        sub_26BF8B9F8((*a3 + 16 * v91), (*a3 + 16 * *&v10[16 * v90 + 16]), (*a3 + 16 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v90 - 2 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v93 = &v10[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        result = sub_26BFD9504(v90 - 1);
        v90 = *(v10 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = v13 < *v16;
      if (v13 == *v16)
      {
        v17 = v14 < *(v16 + 8);
      }

      v18 = v11 + 2;
      v19 = (v16 + 40);
      while (v7 != v18)
      {
        v20 = *(v19 - 2);
        v22 = *v19;
        v19 += 2;
        v21 = v22;
        v23 = v22 >= v14;
        v24 = v20 == v13;
        v25 = v20 >= v13;
        if (v24)
        {
          v26 = v23;
        }

        else
        {
          v26 = v25;
        }

        ++v18;
        v14 = v21;
        v13 = v20;
        if (v17 == v26)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v9 < v11)
      {
        goto LABEL_124;
      }

      if (v11 < v9)
      {
        v27 = 0;
        v28 = 16 * v9;
        v29 = v11;
        do
        {
          if (v29 != v9 + v27 - 1)
          {
            v34 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v30 = (v34 + v15);
            v31 = v34 + v28;
            v32 = *v30;
            v33 = *(v30 + 1);
            *v30 = *(v31 - 16);
            *(v31 - 16) = v32;
            *(v31 - 8) = v33;
          }

          ++v29;
          --v27;
          v28 -= 16;
          v15 += 16;
        }

        while (v29 < v9 + v27);
        v7 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_123;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_125;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v45 = *(v10 + 3);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_26BEEC164((v45 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v46;
    v47 = &v10[16 * v5];
    *(v47 + 4) = v11;
    *(v47 + 5) = v9;
    v48 = *v95;
    if (!*v95)
    {
      goto LABEL_132;
    }

    if (v5)
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
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_64:
          if (v53)
          {
            goto LABEL_111;
          }

          v66 = &v10[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_118;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v76 = &v10[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_78:
        if (v71)
        {
          goto LABEL_113;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_116;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_85:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v88 = *&v10[16 * v87 + 32];
        v5 = *&v10[16 * v49 + 40];
        sub_26BF8B9F8((*a3 + 16 * v88), (*a3 + 16 * *&v10[16 * v49 + 32]), (*a3 + 16 * v5), v48);
        if (v4)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_108;
        }

        v89 = &v10[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        result = sub_26BFD9504(v49);
        v46 = *(v10 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_109;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_110;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_112;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_115;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_119;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_95;
    }
  }

  v35 = *a3;
  v36 = *a3 + 16 * v9 - 16;
  v37 = v11 - v9;
LABEL_35:
  v38 = (v35 + 16 * v9);
  v39 = *v38;
  v40 = *(v38 + 1);
  v41 = v37;
  v42 = v36;
  while (1)
  {
    v43 = v39 < *v42;
    if (v39 == *v42)
    {
      v43 = v40 < *(v42 + 8);
    }

    if (!v43)
    {
LABEL_34:
      ++v9;
      v36 += 16;
      --v37;
      if (v9 != v7)
      {
        goto LABEL_35;
      }

      v9 = v7;
      goto LABEL_44;
    }

    if (!v35)
    {
      break;
    }

    *(v42 + 16) = *v42;
    *v42 = v39;
    *(v42 + 8) = v40;
    v42 -= 16;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t sub_26BF8B7D0(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26C00AF2C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26C00AF2C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26BF8B9F8(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 < *v4;
      if (*v6 == *v4)
      {
        v17 = *(v6 + 1) < *(v4 + 1);
      }

      if (v17)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = *(v19 - 16);
      v19 -= 16;
      v21 = v5 + 16;
      v22 = *(v6 - 4);
      v23 = v20 < v22;
      if (v20 == v22)
      {
        v23 = *(v19 + 8) < *(v6 - 1);
      }

      if (v23)
      {
        if (v21 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v21 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_39:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v24 >> 4));
  }

  return 1;
}

uint64_t sub_26BF8BC34(uint64_t a1, uint64_t a2)
{
  result = sub_26C008E9C();
  if (!result || (result = sub_26C008ECC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C008EBC();
      return sub_26C00908C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26BF8BCC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v328 = a1;
  v329 = a2;
  v349 = *MEMORY[0x277D85DE8];
  v5 = sub_26C00921C();
  v323 = *(v5 - 8);
  v324 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v322 = v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v321 = v296 - v8;
  v9 = sub_26C00A4EC();
  MEMORY[0x28223BE20](v9 - 8);
  v320 = (v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MLS.GroupState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v296 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v319 = (v296 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v318 = v296 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v296 - v19;
  v21 = sub_26C00928C();
  v22 = *(v21 - 8);
  v325 = v21;
  v326 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v296 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v296 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v296 - v29;
  v31 = 0;
  v32 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_7;
    }

    v33 = v329;
    v31 = *(v329 + 16);
  }

  else
  {
    if (!v32)
    {
      goto LABEL_7;
    }

    v33 = v329;
    v31 = v329;
  }

  sub_26BE00608(v33, a3);
LABEL_7:
  v327 = v30;
  v34 = v329;
  v346 = v329;
  v347 = a3;
  v348 = v31;
  v35 = a3;
  v36 = sub_26BF2F7B0();
  v38 = v3;
  if (v3)
  {
    sub_26BE00258(v346, v347);
    sub_26BE00258(v34, v35);
LABEL_9:

    return v28;
  }

  v315 = v35;
  v316 = v36;
  v317 = v37;
  v39 = sub_26BEEE594();
  if ((v40 & 1) != 0 || (v41 = v39, v42 = sub_26BEE6028(), (v42 & 0x100000000) != 0) || (v43 = v42, v44 = sub_26BEE6180(), (v44 & 0x10000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();

    sub_26BE00258(v316, v317);
    sub_26BE00258(v329, v315);
    goto LABEL_15;
  }

  LODWORD(v314) = v44;
  v45 = sub_26BF2F7B0();
  v312 = v43;
  v313 = v41;
  v341 = MEMORY[0x277CC9318];
  v342 = MEMORY[0x277CC9300];
  aBlock = v45;
  *&v340 = v46;
  v49 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
  v51 = *v49;
  v52 = *(v49 + 8);
  v53 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    v54 = v327;
    if (v53 != 2)
    {
      *&v336[6] = 0;
      *v336 = 0;
      v55 = v336;
      goto LABEL_29;
    }

    v54 = *(v51 + 16);
    v311 = *(v51 + 24);
    v49 = sub_26C008E9C();
    if (v49)
    {
      v310 = v49;
      v49 = sub_26C008ECC();
      if (__OFSUB__(v54, v49))
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v310 = &v54[v310 - v49];
    }

    else
    {
      v310 = 0;
    }

    v59 = __OFSUB__(v311, v54);
    v54 = (v311 - v54);
    if (!v59)
    {
      v60 = sub_26C008EBC();
LABEL_35:
      if (v60 >= v54)
      {
        v61 = v54;
      }

      else
      {
        v61 = v60;
      }

      v62 = &v310[v61];
      if (v310)
      {
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }

      sub_26BE77028(v310, v63, v345);
      v54 = v327;
      goto LABEL_42;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v54 = v327;
  if (v53)
  {
    v56 = v51;
    v57 = v51 >> 32;
    v311 = (v57 - v56);
    if (v57 >= v56)
    {
      v54 = v56;
      v58 = sub_26C008E9C();
      if (!v58)
      {
        v310 = 0;
        goto LABEL_34;
      }

      v310 = v58;
      v49 = sub_26C008ECC();
      if (!__OFSUB__(v54, v49))
      {
        v310 = &v54[v310 - v49];
LABEL_34:
        v60 = sub_26C008EBC();
        v54 = v311;
        goto LABEL_35;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v76 = v49;
      p_aBlock = v50;
      sub_26BE00608(v49, v50);
      MLS.Credential.init(rawValue:)(v76, p_aBlock, v336);
      if (v38)
      {
        sub_26BE0489C(v310, v311);

        sub_26BE00258(v316, v317);
        v103 = v76;
        v104 = p_aBlock;
        goto LABEL_100;
      }

      v344[0] = *v336;
      v344[1] = *&v336[8];
      v308 = *&v336[8];
      v309 = *v336;
      sub_26BE04890(*v336, *&v336[8]);
      sub_26C006590(v344, v336);
      v298 = 0;
LABEL_117:
      sub_26BE0489C(v309, v308);
      sub_26BE00258(v76, p_aBlock);
      v307 = *v336;
      v308 = *&v336[8];
      v110 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
      v111 = v328;
      swift_beginAccess();
      v112 = v326;
      v113 = *(v326 + 16);
      v114 = v111 + v110;
      v115 = v325;
      v306 = v326 + 16;
      *&v305 = v113;
      v113(v28, v114, v325);
      v116 = sub_26C00923C();
      v118 = *(v112 + 8);
      v117 = v112 + 8;
      v326 = v117;
      v309 = v118;
      (v118)(v28, v115);
      if ((v116 & 1) == 0)
      {

        if (qword_28045DF80 != -1)
        {
          swift_once();
        }

        v134 = sub_26C009A5C();
        __swift_project_value_buffer(v134, qword_280478EE8);
        (v305)(v25, v327, v325);
        v135 = v316;
        v136 = v317;
        sub_26BE00608(v316, v317);
        v137 = sub_26C009A3C();
        v138 = sub_26C00AA0C();
        sub_26BE00258(v135, v136);
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v324 = swift_slowAlloc();
          aBlock = v324;
          *v139 = 136315394;
          *v336 = sub_26BF87240(v316, v317);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
          sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
          v140 = sub_26C00A3EC();
          v142 = v141;

          v143 = sub_26BE29740(v140, v142, &aBlock);

          *(v139 + 4) = v143;
          *(v139 + 12) = 2080;
          sub_26BF8E93C(&qword_28045E450, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v28 = v325;
          v144 = sub_26C00AEFC();
          v146 = v145;
          (v309)(v25, v28);
          v147 = sub_26BE29740(v144, v146, &aBlock);

          *(v139 + 14) = v147;
          _os_log_impl(&dword_26BDFE000, v137, v138, "Loaded group (%s) for incorrect client (%s)", v139, 0x16u);
          v148 = v324;
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v148, -1, -1);
          MEMORY[0x26D69A4E0](v139, -1, -1);
        }

        else
        {

          (v309)(v25, v325);
        }

        v149 = sub_26C00A45C();
        v150 = swift_allocObject();
        *(v150 + 16) = 2564;
        v342 = sub_26BF8E918;
        v343 = v150;
        aBlock = MEMORY[0x277D85DD0];
        *&v340 = 1107296256;
        *(&v340 + 1) = sub_26BEB8234;
        v341 = &block_descriptor_5;
        v151 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v151);

        sub_26BE01600();
        swift_allocError();
        *v152 = 10;
        swift_willThrow();
        sub_26BE0489C(v310, v311);

        goto LABEL_127;
      }

      if ((v297 - 3) < 0xFFFFFFFE)
      {
        __break(1u);
LABEL_195:
        sub_26BE01600();
        swift_allocError();
        *v211 = 9;
        swift_willThrow();
        sub_26BE00258(v117, v116);
LABEL_307:

        goto LABEL_192;
      }

      v336[0] = v297 != 1;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      LODWORD(v306) = aBlock;
      v305 = v340;
      v303 = v342;
      v304 = v341;
      type metadata accessor for MLS.Group.PureSwiftGroup(0);
      v119 = swift_allocObject();
      *(v119 + 160) = MEMORY[0x277D84FA0];
      v120 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
      v122 = *(v121 - 8);
      v301 = *(v122 + 56);
      v302 = v121;
      v300 = v122 + 56;
      v301(v119 + v120, 1, 1);
      v123 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
      v124 = type metadata accessor for FileInfoAndSender(0);
      v125 = *(v124 - 8);
      v126 = *(v125 + 56);
      v127 = v125 + 56;
      v126(v119 + v123, 1, 1, v124);
      v299 = v124;
      v296[1] = v127;
      v297 = v126;
      v126(v119 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, 1, 1, v124);
      v128 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
      v129 = v307;
      v130 = v308;
      sub_26BE04890(v307, v308);

      sub_26BE00608(v316, v317);
      v28 = MEMORY[0x277D84F90];
      *(v119 + v128) = sub_26C0047C0(MEMORY[0x277D84F90]);
      v131 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
      *(v119 + v131) = sub_26C0047C0(v28);
      v132 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
      *(v119 + v132) = sub_26C0048D4(v28);
      v336[0] = v306;
      *&v336[8] = v305;
      v337 = v304;
      v338 = v303;
      v333 = v129;
      v334 = v130;
      v133 = v298;
      v306 = sub_26BE3EFC0(v328, v316, v317, v336, &v333);
      v66 = v133;
      if (v133)
      {
        sub_26BE0489C(v310, v311);

LABEL_127:
        sub_26BE0489C(v307, v308);
        sub_26BE00258(v316, v317);
        sub_26BE00258(v329, v315);
        __swift_destroy_boxed_opaque_existential_1(v345);
        (v309)(v327, v325);
        goto LABEL_15;
      }

      v28 = v306;
      v153 = *(v306 + 32);
      v154 = *(v306 + 40);
      v155 = v316;
      v156 = v317;
      *(v306 + 32) = v316;
      *(v28 + 5) = v156;

      sub_26BE00608(v155, v156);

      sub_26BE00258(v153, v154);
      v157 = v312;
      *(v28 + 3) = v313;
      *(v28 + 38) = v157;
      sub_26BE038A8(v345, &aBlock);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(v28 + 14);
      sub_26BE03890(&aBlock, (v28 + 112));
      swift_endAccess();

      v158 = sub_26BEC7E78(v54);

      swift_beginAccess();
      *(v28 + 20) = v158;

      if (!v314)
      {
LABEL_152:
        sub_26BE0489C(v310, v311);

        sub_26BE0489C(v307, v308);
        sub_26BE00258(v316, v317);
        sub_26BE00258(v329, v315);
        __swift_destroy_boxed_opaque_existential_1(v345);
        (v309)(v327, v325);
        sub_26BE00258(v346, v347);
        return v306;
      }

      v159 = sub_26BEE62D4();
      if ((v159 & 0x100) != 0)
      {
        goto LABEL_189;
      }

      if (v159)
      {
        if (v159 != 1)
        {
          goto LABEL_146;
        }

        sub_26BEDDD14(v13);
        sub_26BE799B4(v314, v335);
        v66 = 0;
        v171 = &v20[*(v302 + 48)];
        sub_26BF8E9E4(v13, v20, type metadata accessor for MLS.GroupState);
        v172 = 0;
        v173 = v335[9];
        *(v171 + 8) = v335[8];
        *(v171 + 9) = v173;
        *(v171 + 10) = v335[10];
        v174 = v335[5];
        *(v171 + 4) = v335[4];
        *(v171 + 5) = v174;
        v175 = v335[7];
        *(v171 + 6) = v335[6];
        *(v171 + 7) = v175;
        v176 = v335[1];
        *v171 = v335[0];
        *(v171 + 1) = v176;
        v177 = v335[3];
        *(v171 + 2) = v335[2];
        *(v171 + 3) = v177;
LABEL_135:
        (v301)(v20, v172, 1, v302);
        v160 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
        v161 = v306;
        swift_beginAccess();
        sub_26BE7170C(v20, v161 + v160, &qword_28045E8D8, &qword_26C012580);
        swift_endAccess();
        v162 = sub_26BEE62D4();
        if ((v162 & 0x100) != 0)
        {
          goto LABEL_199;
        }

        if (v162)
        {
          if (v162 != 1)
          {
            goto LABEL_146;
          }

          sub_26BF89870(v318);
          if (v66)
          {
            goto LABEL_192;
          }

          v163 = 0;
        }

        else
        {
          v163 = 1;
        }

        v164 = v318;
        v297(v318, v163, 1, v299);
        v165 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
        v166 = v306;
        swift_beginAccess();
        sub_26BE7170C(v164, v166 + v165, &qword_28045FA38, &qword_26C01D890);
        swift_endAccess();
        v167 = sub_26BEE62D4();
        if ((v167 & 0x100) != 0)
        {
          goto LABEL_199;
        }

        if (!v167)
        {
          v168 = 1;
LABEL_148:
          v178 = v319;
          v297(v319, v168, 1, v299);
          v179 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
          v180 = v306;
          swift_beginAccess();
          sub_26BE7170C(v178, v180 + v179, &qword_28045FA38, &qword_26C01D890);
          swift_endAccess();
          v313 = sub_26BEEE594();
          if (v181)
          {
            goto LABEL_199;
          }

          v28 = sub_26C0047C0(MEMORY[0x277D84F90]);
          if (!v313)
          {
LABEL_151:
            *(v306 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch) = v28;

            if (v314 == 1)
            {
              goto LABEL_152;
            }

            v318 = sub_26BEEE594();
            if (v209)
            {
LABEL_189:
              sub_26BE01600();
              swift_allocError();
              v170 = 1;
              goto LABEL_190;
            }

            v319 = sub_26C0047C0(MEMORY[0x277D84F90]);
            if (!v318)
            {
LABEL_198:
              v212 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
              v213 = v306;
              swift_beginAccess();
              *(v213 + v212) = v319;

              v318 = sub_26BEEE594();
              if (v214)
              {
LABEL_199:
                sub_26BE01600();
                swift_allocError();
                *v215 = 1;
                goto LABEL_191;
              }

              v320 = sub_26C0048D4(MEMORY[0x277D84F90]);
              if (!v318)
              {
LABEL_301:
                sub_26BE0489C(v310, v311);

                sub_26BE0489C(v307, v308);
                sub_26BE00258(v316, v317);
                sub_26BE00258(v329, v315);
                __swift_destroy_boxed_opaque_existential_1(v345);
                (v309)(v327, v325);
                sub_26BE00258(v346, v347);
                v292 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
                v28 = v306;
                swift_beginAccess();
                *&v28[v292] = v320;

                return v28;
              }

              v312 = (v323 + 8);
              v313 = (v323 + 16);
              v304 = v323 + 40;
              *&v305 = v323 + 32;
              while (1)
              {
                v332 = 0;
                v261 = (v348 + 8);
                if (__OFADD__(v348, 8))
                {
                  goto LABEL_324;
                }

                v262 = v347 >> 62;
                if ((v347 >> 62) <= 1)
                {
                  break;
                }

                if (v262 == 2)
                {
                  v263 = *(v346 + 24);
                  goto LABEL_265;
                }

                if (v261 > 0)
                {
                  goto LABEL_302;
                }

LABEL_268:
                v333 = v346;
                v334 = v347;
                if (v261 < v348)
                {
                  goto LABEL_325;
                }

                v330 = v348;
                v331 = v348 + 8;
                sub_26BE00608(v346, v347);
                v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
                v28 = sub_26BE016A8();
                sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
                v319 = v264;
                sub_26C008E1C();
                sub_26BE00258(v333, v334);
                v314 = v332;
                v348 = v261;
                LODWORD(v332) = 0;
                v265 = v261 + 4;
                if (__OFADD__(v261, 4))
                {
                  goto LABEL_326;
                }

                v266 = v347 >> 62;
                if ((v347 >> 62) <= 1)
                {
                  if (v266)
                  {
                    v267 = v346 >> 32;
                  }

                  else
                  {
                    v267 = BYTE6(v347);
                  }

LABEL_276:
                  if (v267 < v265)
                  {
                    goto LABEL_302;
                  }

                  goto LABEL_279;
                }

                if (v266 == 2)
                {
                  v267 = *(v346 + 24);
                  goto LABEL_276;
                }

                if (v265 > 0)
                {
                  goto LABEL_302;
                }

LABEL_279:
                v333 = v346;
                v334 = v347;
                if (v265 < v261)
                {
                  goto LABEL_327;
                }

                v330 = v261;
                v331 = (v261 + 4);
                sub_26BE00608(v346, v347);
                sub_26C008E1C();
                sub_26BE00258(v333, v334);
                v268 = v332;
                v348 = (v261 + 4);
                v332 = 0;
                v269 = v261 + 12;
                if (__OFADD__(v265, 8))
                {
                  goto LABEL_328;
                }

                v270 = v347 >> 62;
                if ((v347 >> 62) <= 1)
                {
                  if (v270)
                  {
                    v271 = v346 >> 32;
                  }

                  else
                  {
                    v271 = BYTE6(v347);
                  }

LABEL_287:
                  if (v271 < v269)
                  {
                    goto LABEL_302;
                  }

                  goto LABEL_290;
                }

                if (v270 == 2)
                {
                  v271 = *(v346 + 24);
                  goto LABEL_287;
                }

                if (v269 > 0)
                {
LABEL_302:
                  sub_26BE01600();
                  swift_allocError();
                  *v293 = 1;
                  swift_willThrow();

                  goto LABEL_192;
                }

LABEL_290:
                v333 = v346;
                v334 = v347;
                if (v269 < v265)
                {
                  goto LABEL_329;
                }

                v272 = bswap64(v314);
                v273 = bswap32(v268);
                v330 = v265;
                v331 = (v265 + 8);
                sub_26BE00608(v346, v347);
                sub_26C008E1C();
                sub_26BE00258(v333, v334);
                v348 = v269;
                v274 = v321;
                sub_26C0091DC();
                (*v313)(v322, v274, v324);
                v275 = v320;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v333 = v275;
                v28 = v272;
                v278 = sub_26BEBB598(v273, v272);
                v279 = *(v275 + 16);
                v280 = (v277 & 1) == 0;
                v281 = v279 + v280;
                if (__OFADD__(v279, v280))
                {
                  goto LABEL_330;
                }

                v282 = v277;
                if (v320[3] >= v281)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_26BE6DEF4();
                  }
                }

                else
                {
                  sub_26BE6A238(v281, isUniquelyReferenced_nonNull_native);
                  v283 = sub_26BEBB598(v273, v28);
                  if ((v282 & 1) != (v284 & 1))
                  {
                    goto LABEL_333;
                  }

                  v278 = v283;
                }

                v320 = v333;
                if (v282)
                {
                  v259 = v323;
                  v260 = v324;
                  (*(v323 + 40))(v320[7] + *(v323 + 72) * v278, v322, v324);
                  (*(v259 + 8))(v321, v260);
                }

                else
                {
                  v285 = v320;
                  v320[(v278 >> 6) + 8] |= 1 << v278;
                  v286 = v285[6] + 16 * v278;
                  *v286 = v273;
                  *(v286 + 8) = v28;
                  v287 = v323;
                  v288 = v324;
                  (*(v323 + 32))(v285[7] + *(v323 + 72) * v278, v322, v324);
                  (*(v287 + 8))(v321, v288);
                  v289 = v285[2];
                  v59 = __OFADD__(v289, 1);
                  v290 = v289 + 1;
                  if (v59)
                  {
                    goto LABEL_331;
                  }

                  v320[2] = v290;
                }

                if (!--v318)
                {
                  goto LABEL_301;
                }
              }

              if (v262)
              {
                v263 = v346 >> 32;
              }

              else
              {
                v263 = BYTE6(v347);
              }

LABEL_265:
              if (v263 < v261)
              {
                goto LABEL_302;
              }

              goto LABEL_268;
            }

            while (1)
            {
              v217 = v346;
              v28 = v347;
              v218 = v348;
              sub_26BE00608(v346, v347);
              sub_26BE00608(v217, v28);
              sub_26BF30764(&v346, v336);
              if (v66)
              {
                sub_26BE00258(v346, v347);
                v346 = v217;
                v347 = v28;
                v348 = v218;
                sub_26BE00258(v217, v28);
                swift_willThrow();
                v346 = v217;
                v347 = v28;
                v348 = v218;
                goto LABEL_306;
              }

              if (v336[8])
              {
                sub_26BE00258(v346, v347);
                v346 = v217;
                v347 = v28;
                v222 = v28;
                v221 = v217;
                v348 = v218;
LABEL_305:
                sub_26BE00258(v221, v222);
                v346 = v217;
                v347 = v28;
                v348 = v218;
                sub_26BE01600();
                swift_allocError();
                *v294 = 1;
LABEL_306:
                swift_willThrow();
                goto LABEL_307;
              }

              v219 = *v336;
              sub_26BE00258(v217, v28);
              v220 = &v348[v219];
              if (__OFADD__(v348, v219))
              {
                goto LABEL_315;
              }

              v221 = v346;
              v222 = v347;
              v223 = v347 >> 62;
              if ((v347 >> 62) <= 1)
              {
                break;
              }

              if (v223 == 2)
              {
                v224 = *(v346 + 24);
                goto LABEL_211;
              }

              if (v220 > 0)
              {
                goto LABEL_305;
              }

LABEL_214:
              if (v220 < v348)
              {
                goto LABEL_316;
              }

              v225 = sub_26C00909C();
              v226 = v225;
              v228 = v227;
              v348 = v220;
              v229 = v227 >> 62;
              if ((v227 >> 62) > 1)
              {
                if (v229 != 2)
                {
                  goto LABEL_222;
                }

                v225 = *(v225 + 16);
                v230 = *(v226 + 24);
              }

              else
              {
                if (!v229)
                {
                  goto LABEL_222;
                }

                v225 = v225;
                v230 = v226 >> 32;
              }

              if (v230 < v225)
              {
                goto LABEL_317;
              }

LABEL_222:
              v231 = sub_26C00909C();
              v233 = v232;
              sub_26BE00258(v226, v228);
              sub_26BE00258(v217, v28);
              sub_26C00A4CC();
              v314 = sub_26C00A4AC();
              if (!v234)
              {
                sub_26BE01600();
                swift_allocError();
                *v295 = 9;
                swift_willThrow();
                sub_26BE00258(v231, v233);
                goto LABEL_307;
              }

              v28 = v234;
              sub_26BE00258(v231, v233);
              v330 = 0;
              v235 = v220 + 8;
              if (__OFADD__(v220, 8))
              {
                goto LABEL_318;
              }

              v236 = v347 >> 62;
              if ((v347 >> 62) <= 1)
              {
                if (v236)
                {
                  v237 = v346 >> 32;
                }

                else
                {
                  v237 = BYTE6(v347);
                }

LABEL_230:
                if (v237 < v235)
                {
                  goto LABEL_300;
                }

                goto LABEL_233;
              }

              if (v236 == 2)
              {
                v237 = *(v346 + 24);
                goto LABEL_230;
              }

              if (v235 > 0)
              {
                goto LABEL_300;
              }

LABEL_233:
              *v336 = v346;
              *&v336[8] = v347;
              if (v235 < v220)
              {
                goto LABEL_319;
              }

              v333 = v220;
              v334 = v220 + 8;
              sub_26BE00608(v346, v347);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
              sub_26BE016A8();
              sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
              sub_26C008E1C();
              sub_26BE00258(*v336, *&v336[8]);
              v313 = v330;
              v348 = (v220 + 8);
              LODWORD(v330) = 0;
              v238 = v220 + 12;
              if (__OFADD__(v235, 4))
              {
                goto LABEL_320;
              }

              v239 = v347 >> 62;
              if ((v347 >> 62) <= 1)
              {
                if (v239)
                {
                  v240 = v346 >> 32;
                }

                else
                {
                  v240 = BYTE6(v347);
                }

LABEL_241:
                if (v240 < v238)
                {
                  goto LABEL_300;
                }

                goto LABEL_244;
              }

              if (v239 == 2)
              {
                v240 = *(v346 + 24);
                goto LABEL_241;
              }

              if (v238 > 0)
              {
LABEL_300:

                sub_26BE01600();
                swift_allocError();
                *v291 = 1;
                goto LABEL_306;
              }

LABEL_244:
              *v336 = v346;
              *&v336[8] = v347;
              if (v238 < v235)
              {
                goto LABEL_321;
              }

              v333 = (v220 + 8);
              v334 = v220 + 12;
              sub_26BE00608(v346, v347);
              sub_26C008E1C();
              sub_26BE00258(*v336, *&v336[8]);
              v241 = v330;
              v348 = (v220 + 12);
              v242 = v319;
              v243 = swift_isUniquelyReferenced_nonNull_native();
              *v336 = v242;
              v245 = sub_26BEBB618(v314, v28);
              v246 = v242[2];
              v247 = (v244 & 1) == 0;
              v248 = v246 + v247;
              if (__OFADD__(v246, v247))
              {
                goto LABEL_322;
              }

              v249 = v244;
              if (v319[3] >= v248)
              {
                if ((v243 & 1) == 0)
                {
                  sub_26BE6E178();
                }
              }

              else
              {
                sub_26BE6A5B8(v248, v243);
                v250 = sub_26BEBB618(v314, v28);
                if ((v249 & 1) != (v251 & 1))
                {
                  goto LABEL_332;
                }

                v245 = v250;
              }

              v252 = bswap64(v313);
              v253 = bswap32(v241);
              v319 = *v336;
              if (v249)
              {
                v216 = v319[7] + 16 * v245;
                *v216 = v253;
                *(v216 + 8) = v252;
              }

              else
              {
                v254 = v319;
                v319[(v245 >> 6) + 8] |= 1 << v245;
                v255 = (v254[6] + 16 * v245);
                *v255 = v314;
                v255[1] = v28;
                v256 = v254[7] + 16 * v245;
                *v256 = v253;
                *(v256 + 8) = v252;
                v257 = v254[2];
                v59 = __OFADD__(v257, 1);
                v258 = v257 + 1;
                if (v59)
                {
                  goto LABEL_323;
                }

                v319[2] = v258;
              }

              if (!--v318)
              {
                goto LABEL_198;
              }
            }

            if (v223)
            {
              v224 = v346 >> 32;
            }

            else
            {
              v224 = BYTE6(v347);
            }

LABEL_211:
            if (v224 < v220)
            {
              goto LABEL_305;
            }

            goto LABEL_214;
          }

          while (1)
          {
            v183 = sub_26BF2F7B0();
            if (v66)
            {
              goto LABEL_307;
            }

            v117 = v183;
            v116 = v184;
            sub_26C00A4CC();
            v318 = sub_26C00A4AC();
            v319 = v185;
            if (!v185)
            {
              goto LABEL_195;
            }

            sub_26BE00258(v117, v116);
            v330 = 0;
            v186 = (v348 + 8);
            if (__OFADD__(v348, 8))
            {
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
LABEL_317:
              __break(1u);
LABEL_318:
              __break(1u);
LABEL_319:
              __break(1u);
LABEL_320:
              __break(1u);
LABEL_321:
              __break(1u);
LABEL_322:
              __break(1u);
LABEL_323:
              __break(1u);
LABEL_324:
              __break(1u);
LABEL_325:
              __break(1u);
LABEL_326:
              __break(1u);
LABEL_327:
              __break(1u);
LABEL_328:
              __break(1u);
LABEL_329:
              __break(1u);
LABEL_330:
              __break(1u);
LABEL_331:
              __break(1u);
LABEL_332:
              sub_26C00AF8C();
              __break(1u);
LABEL_333:
              result = sub_26C00AF8C();
              __break(1u);
              return result;
            }

            v187 = v347 >> 62;
            if ((v347 >> 62) <= 1)
            {
              break;
            }

            if (v187 == 2)
            {
              v188 = *(v346 + 24);
              goto LABEL_164;
            }

            if (v186 > 0)
            {
              goto LABEL_193;
            }

LABEL_167:
            *v336 = v346;
            *&v336[8] = v347;
            if (v186 < v348)
            {
              goto LABEL_310;
            }

            v333 = v348;
            v334 = (v348 + 8);
            sub_26BE00608(v346, v347);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
            sub_26BE016A8();
            sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
            sub_26C008E1C();
            sub_26BE00258(*v336, *&v336[8]);
            v312 = v330;
            v348 = v186;
            LODWORD(v330) = 0;
            v189 = v186 + 4;
            if (__OFADD__(v186, 4))
            {
              goto LABEL_311;
            }

            v190 = v347 >> 62;
            if ((v347 >> 62) <= 1)
            {
              if (v190)
              {
                v191 = v346 >> 32;
              }

              else
              {
                v191 = BYTE6(v347);
              }

LABEL_175:
              if (v191 < v189)
              {
                goto LABEL_193;
              }

              goto LABEL_178;
            }

            if (v190 == 2)
            {
              v191 = *(v346 + 24);
              goto LABEL_175;
            }

            if (v189 > 0)
            {
LABEL_193:

              sub_26BE01600();
              swift_allocError();
              *v210 = 1;
              swift_willThrow();
              goto LABEL_307;
            }

LABEL_178:
            *v336 = v346;
            *&v336[8] = v347;
            if (v189 < v186)
            {
              goto LABEL_312;
            }

            v333 = v186;
            v334 = v186 + 4;
            sub_26BE00608(v346, v347);
            sub_26C008E1C();
            sub_26BE00258(*v336, *&v336[8]);
            v192 = v330;
            v348 = v189;
            v193 = swift_isUniquelyReferenced_nonNull_native();
            *v336 = v28;
            v195 = sub_26BEBB618(v318, v319);
            v196 = *(v28 + 2);
            v197 = (v194 & 1) == 0;
            v198 = v196 + v197;
            if (__OFADD__(v196, v197))
            {
              goto LABEL_313;
            }

            v199 = v194;
            if (*(v28 + 3) >= v198)
            {
              if ((v193 & 1) == 0)
              {
                sub_26BE6E178();
              }
            }

            else
            {
              sub_26BE6A5B8(v198, v193);
              v200 = sub_26BEBB618(v318, v319);
              if ((v199 & 1) != (v201 & 1))
              {
                goto LABEL_332;
              }

              v195 = v200;
            }

            v202 = bswap64(v312);
            v203 = bswap32(v192);
            v28 = *v336;
            if (v199)
            {
              v182 = *(*v336 + 56) + 16 * v195;
              *v182 = v203;
              *(v182 + 8) = v202;
            }

            else
            {
              *(*v336 + 8 * (v195 >> 6) + 64) |= 1 << v195;
              v204 = (*(v28 + 6) + 16 * v195);
              v205 = v319;
              *v204 = v318;
              v204[1] = v205;
              v206 = *(v28 + 7) + 16 * v195;
              *v206 = v203;
              *(v206 + 8) = v202;
              v207 = *(v28 + 2);
              v59 = __OFADD__(v207, 1);
              v208 = v207 + 1;
              if (v59)
              {
                goto LABEL_314;
              }

              *(v28 + 2) = v208;
            }

            v313 = (v313 - 1);
            if (!v313)
            {
              goto LABEL_151;
            }
          }

          if (v187)
          {
            v188 = v346 >> 32;
          }

          else
          {
            v188 = BYTE6(v347);
          }

LABEL_164:
          if (v188 < v186)
          {
            goto LABEL_193;
          }

          goto LABEL_167;
        }

        if (v167 == 1)
        {
          sub_26BF89870(v319);
          if (!v66)
          {
            v168 = 0;
            goto LABEL_148;
          }

LABEL_192:
          sub_26BE0489C(v310, v311);

          sub_26BE0489C(v307, v308);
          sub_26BE00258(v316, v317);
          sub_26BE00258(v329, v315);
          __swift_destroy_boxed_opaque_existential_1(v345);
          (v309)(v327, v325);
          sub_26BE00258(v346, v347);
          goto LABEL_9;
        }

LABEL_146:
        sub_26BE01600();
        swift_allocError();
        v170 = 5;
LABEL_190:
        *v169 = v170;
LABEL_191:
        swift_willThrow();
        goto LABEL_192;
      }

LABEL_134:
      v172 = 1;
      goto LABEL_135;
    }

    __break(1u);
    goto LABEL_106;
  }

  *v336 = *v49;
  *&v336[8] = v52;
  v336[10] = BYTE2(v52);
  v336[11] = BYTE3(v52);
  v336[12] = BYTE4(v52);
  v336[13] = BYTE5(v52);
  v55 = &v336[BYTE6(v52)];
LABEL_29:
  sub_26BE77028(v336, v55, v345);
LABEL_42:
  v64 = v345[0];
  v65 = v345[1];
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_26BF8ED18(v64, v65);
  sub_26BE00258(v64, v65);
  sub_26BE108C0();
  sub_26BE03DC0(&aBlock);
  v66 = 0;
  v310 = aBlock;
  v311 = v340;
  v68 = v346;
  v67 = v347;
  v309 = v348;
  sub_26BE00608(v346, v347);
  sub_26BE00608(v68, v67);
  sub_26BF30764(&v346, &aBlock);
  v304 = v68;
  *&v305 = v67;
  if (v340)
  {
    sub_26BE00258(v346, v347);
    v70 = v304;
    v69 = v305;
    v346 = v304;
    v347 = v305;
    v71 = v305;
    v72 = v304;
    v73 = v309;
    v348 = v309;
LABEL_44:
    sub_26BE00258(v72, v71);
    v346 = v70;
    v347 = v69;
    v348 = v73;
    sub_26BE01600();
    swift_allocError();
    *v74 = 1;
    v75 = v310;
    goto LABEL_45;
  }

  v76 = aBlock;
  sub_26BE00258(v304, v305);
  if (v76 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v77 = 5;
    swift_willThrow();
    goto LABEL_102;
  }

  v298 = 0;
  p_aBlock = &v346;
  v79 = sub_26BF2A44C(v76);
  if (v80 >> 60 == 15)
  {
    v72 = v346;
    v71 = v347;
    v70 = v304;
    v69 = v305;
    v73 = v309;
    goto LABEL_44;
  }

  LODWORD(v297) = v314;
  v82 = v80 >> 62;
  v299 = v79 >> 32;
  v300 = BYTE6(v80);
  v54 = MEMORY[0x277D84F90];
  v307 = v80 >> 62;
  v308 = v80;
  v314 = v79;
  if ((v80 >> 62) <= 1)
  {
    goto LABEL_54;
  }

LABEL_51:
  if (v82 == 2)
  {
    v83 = *(v79 + 24);
  }

  else
  {
    v83 = 0;
  }

  while (1)
  {
    v59 = __OFSUB__(v83, v81);
    v84 = v83 - v81;
    if (v59)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v84 < 1)
    {
      break;
    }

    v344[0] = 0;
    v76 = v81 + 8;
    if (__OFADD__(v81, 8))
    {
      goto LABEL_113;
    }

    if (v82 <= 1)
    {
      v85 = v300;
      if (v82)
      {
        v85 = v299;
      }

LABEL_64:
      if (v85 < v76)
      {
        goto LABEL_88;
      }

      goto LABEL_67;
    }

    if (v82 == 2)
    {
      v85 = *(v79 + 24);
      goto LABEL_64;
    }

    if (v76 > 0)
    {
      goto LABEL_88;
    }

LABEL_67:
    v306 = v54;
    aBlock = v79;
    *&v340 = v80;
    if (v76 < v81)
    {
      goto LABEL_114;
    }

    v303 = v81;
    *v336 = v81;
    *&v336[8] = v81 + 8;
    sub_26BE00608(v79, v80);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v87 = sub_26BE016A8();
    v88 = sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
    p_aBlock = &aBlock;
    v301 = v87;
    v302 = v86;
    v54 = v88;
    sub_26C008E1C();
    sub_26BE00258(aBlock, v340);
    v89 = v344[0];
    LODWORD(v344[0]) = 0;
    v90 = v76 + 4;
    if (__OFADD__(v76, 4))
    {
      goto LABEL_115;
    }

    if (v307 <= 1)
    {
      v91 = v300;
      v92 = v314;
      if (v307)
      {
        v91 = v299;
      }

LABEL_74:
      if (v91 < v90)
      {
        goto LABEL_88;
      }

      goto LABEL_77;
    }

    v92 = v314;
    if (v307 == 2)
    {
      v91 = *(v314 + 24);
      goto LABEL_74;
    }

    if (v90 > 0)
    {
LABEL_88:
      sub_26BE01600();
      swift_allocError();
      *v98 = 1;
      goto LABEL_101;
    }

LABEL_77:
    aBlock = v92;
    *&v340 = v308;
    if (v90 < v76)
    {
      goto LABEL_116;
    }

    v66 = v89;
    *v336 = v76;
    *&v336[8] = v76 + 4;
    sub_26BE00608(v92, v308);
    sub_26C008E1C();
    sub_26BE00258(aBlock, v340);
    LODWORD(v302) = v344[0];
    v54 = v306;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_26BEEC80C(0, *(v54 + 2) + 1, 1, v54);
    }

    v76 = *(v54 + 2);
    v93 = *(v54 + 3);
    p_aBlock = (v76 + 1);
    LODWORD(v82) = v307;
    v80 = v308;
    v79 = v314;
    if (v76 >= v93 >> 1)
    {
      v96 = sub_26BEEC80C((v93 > 1), v76 + 1, 1, v54);
      LODWORD(v82) = v307;
      v80 = v308;
      v54 = v96;
      v79 = v314;
    }

    v94 = bswap32(v302);
    *(v54 + 2) = p_aBlock;
    v95 = &v54[16 * v76];
    *(v95 + 8) = v94;
    *(v95 + 5) = bswap64(v66);
    v81 = v303 + 12;
    if (v82 > 1)
    {
      goto LABEL_51;
    }

LABEL_54:
    v83 = v300;
    if (v82)
    {
      v83 = v299;
    }
  }

  if (v82 > 1)
  {
    if (v307 == 2)
    {
      v97 = *(v314 + 24);
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    v97 = v299;
    if (!v307)
    {
      v97 = v300;
    }
  }

  if (__OFSUB__(v97, v81))
  {
    __break(1u);
    goto LABEL_134;
  }

  if (v97 == v81)
  {
    sub_26BE00258(v314, v308);
    sub_26BE00258(v304, v305);
    v99 = sub_26BEEE594();
    if (v100)
    {
      v101 = 0;
    }

    else
    {
      v101 = v99;
    }

    v314 = v101;
    if (v101 > 3)
    {

      sub_26BE01600();
      swift_allocError();
      *v102 = 7;
      swift_willThrow();
      sub_26BE0489C(v310, v311);

      v103 = v316;
      v104 = v317;
LABEL_100:
      sub_26BE00258(v103, v104);
      sub_26BE00258(v329, v315);
      __swift_destroy_boxed_opaque_existential_1(v345);
      (*(v326 + 8))(v327, v325);
      goto LABEL_15;
    }

    aBlock = v310;
    *&v340 = v311;
    v109 = v298;
    MLS.Credential.rawValue.getter();
    v38 = v109;
    if (v109)
    {

      sub_26BE00258(v316, v317);
      sub_26BE00258(v329, v315);
      __swift_destroy_boxed_opaque_existential_1(v345);
      (*(v326 + 8))(v327, v325);
      sub_26BE00258(v346, v347);
      sub_26BE0489C(v310, v311);
      return v28;
    }

    goto LABEL_109;
  }

  sub_26BE01654();
  swift_allocError();
  *v105 = 0;
  v105[112] = 1;
LABEL_101:
  swift_willThrow();

  sub_26BE00258(v314, v308);
  v54 = v327;
LABEL_102:
  v106 = v309;
  v75 = v310;
  v108 = v304;
  v107 = v305;
  sub_26BE00258(v346, v347);
  v346 = v108;
  v347 = v107;
  v348 = v106;
LABEL_45:
  swift_willThrow();
  sub_26BE0489C(v75, v311);

  sub_26BE00258(v316, v317);
  sub_26BE00258(v329, v315);
  __swift_destroy_boxed_opaque_existential_1(v345);
  (*(v326 + 8))(v54, v325);
LABEL_15:
  sub_26BE00258(v346, v347);
  return v28;
}

unint64_t sub_26BF8E564()
{
  result = qword_28045FCA0;
  if (!qword_28045FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCA0);
  }

  return result;
}

uint64_t sub_26BF8E5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26BF8E6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = a2;
  }

  return result;
}

uint64_t type metadata accessor for FileInfoAndSender(uint64_t a1)
{
  result = qword_28045FCA8;
  if (!qword_28045FCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BF8E7C4(uint64_t a1)
{
  type metadata accessor for FileInfo(319);
  if (v1 <= 0x3F)
  {
    sub_26BF8E848();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BF8E848()
{
  if (!qword_28045FCB8)
  {
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FCB8);
    }
  }
}

uint64_t sub_26BF8E898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BF8E93C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BF8E984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF8E9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26BF8EAE8()
{
  result = qword_28045FCC0;
  if (!qword_28045FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCC0);
  }

  return result;
}

void sub_26BF8EBA0(void *a1)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v15 = bswap32(*a1) >> 16;
  v16[3] = MEMORY[0x277D838B0];
  v16[4] = MEMORY[0x277CC9C18];
  v16[0] = &v15;
  v16[1] = v16;
  __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v6 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_21;
    }

    v7 = HIDWORD(v2) - v2;
  }

LABEL_11:
  v10 = sub_26BF30414(v7);
  if (v1)
  {
    return;
  }

  v11 = v10;
  sub_26BE11228(v2, v3);
  v12 = v11 + v7;
  if (__OFADD__(v11, v7))
  {
    goto LABEL_19;
  }

  v13 = v12 + 2;
  if (__OFADD__(v12, 2))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  sub_26BF3016C(v4, v5);
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_26BF8ED18(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_20;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      sub_26C0090AC();
      return sub_26C00925C();
    }

    goto LABEL_23;
  }

  if (BYTE6(a2) == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result <= 16)
        {
          goto LABEL_20;
        }

LABEL_18:
        v10 = 0;
LABEL_21:
        sub_26BE01600();
        swift_allocError();
        *v11 = v10;
        return swift_willThrow();
      }

      goto LABEL_24;
    }

    if (BYTE6(a2) > 0x10uLL)
    {
      goto LABEL_18;
    }

LABEL_20:
    v10 = 1;
    goto LABEL_21;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v5 = __OFSUB__(v7, v8);
  v9 = v7 - v8;
  if (!v5)
  {
    if (v9 > 16)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void MLS.Client.Client.rawValue.getter()
{
  sub_26BF90058(v0);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

uint64_t *MLS.Client.Client.__allocating_init(configuration:rawValue:)(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v133 = *MEMORY[0x277D85DE8];
  v120 = sub_26C00928C();
  v7 = *(v120 - 8);
  v8 = MEMORY[0x28223BE20](v120);
  v118 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v111 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v119 = v111 - v14;
  MEMORY[0x28223BE20](v13);
  v121 = v111 - v15;
  v16 = sub_26C00A4EC();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = 0;
  v18 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v17 = *(a2 + 16);
      goto LABEL_6;
    }
  }

  else if (v18)
  {
    v17 = a2;
LABEL_6:
    sub_26BE00608(a2, a3);
  }

  v130 = a2;
  v131 = a3;
  v132 = v17;
  v19 = &v130;
  v20 = sub_26BEEE594();
  if ((v21 & 1) == 0 && v20 > 1)
  {
    sub_26BE01600();
    swift_allocError();
    *v22 = 7;
    swift_willThrow();
    sub_26BE00258(a2, a3);
LABEL_10:
    v23 = v130;
    v24 = v131;
LABEL_13:
    sub_26BE00258(v23, v24);
LABEL_14:
    v27 = a1;
LABEL_15:
    sub_26BE29710(v27);
    return v19;
  }

  v116 = v7;
  v25 = sub_26BF2F7B0();
  if (v3)
  {
    sub_26BE00258(v130, v131);
    v23 = a2;
    v24 = a3;
    goto LABEL_13;
  }

  v29 = v25;
  v19 = v26;
  v115 = a1;
  sub_26C00A4CC();
  v30 = sub_26C00A4AC();
  if (!v31)
  {
    sub_26BE01600();
    swift_allocError();
    *v36 = 9;
    swift_willThrow();
    sub_26BE00258(v29, v19);
    sub_26BE00258(a2, a3);
    sub_26BE00258(v130, v131);
    a1 = v115;
    goto LABEL_14;
  }

  v32 = v30;
  v33 = v31;
  sub_26BE00258(v29, v19);
  if (v32 == *(v115 + 30) && v33 == *(v115 + 31))
  {
  }

  else
  {
    v19 = sub_26C00AF2C();

    if ((v19 & 1) == 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v35 = 8;
      swift_willThrow();
      sub_26BE00258(a2, a3);
LABEL_24:
      sub_26BE00258(v130, v131);
      v27 = v115;
      goto LABEL_15;
    }
  }

  v37 = sub_26BF2F7B0();
  a1 = v115;
  v126 = MEMORY[0x277CC9318];
  v127 = MEMORY[0x277CC9300];
  *&v125 = v37;
  *(&v125 + 1) = v38;
  v39 = __swift_project_boxed_opaque_existential_1(&v125, MEMORY[0x277CC9318]);
  v40 = *v39;
  v41 = v39[1];
  v42 = v41 >> 62;
  if ((v41 >> 62) > 1)
  {
    if (v42 != 2)
    {
      *&v122[6] = 0;
      *v122 = 0;
      v43 = v122;
      goto LABEL_46;
    }

    v44 = *(v40 + 16);
    *(&v114 + 1) = *(v40 + 24);
    v45 = sub_26C008E9C();
    if (v45)
    {
      v46 = v45;
      v47 = sub_26C008ECC();
      if (__OFSUB__(v44, v47))
      {
        __break(1u);
        goto LABEL_112;
      }

      v48 = v44;
      v49 = (v44 - v47 + v46);
    }

    else
    {
      v48 = v44;
      v49 = 0;
    }

    a1 = (*(&v114 + 1) - v48);
    if (!__OFSUB__(*(&v114 + 1), v48))
    {
      v60 = sub_26C008EBC();
      if (v60 >= a1)
      {
        v61 = a1;
      }

      else
      {
        v61 = v60;
      }

      v62 = &v49[v61];
      if (v49)
      {
        v58 = v62;
      }

      else
      {
        v58 = 0;
      }

      v59 = v49;
      goto LABEL_56;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (!v42)
  {
    *v122 = *v39;
    *&v122[8] = v41;
    v122[10] = BYTE2(v41);
    v122[11] = BYTE3(v41);
    v122[12] = BYTE4(v41);
    v122[13] = BYTE5(v41);
    v43 = &v122[BYTE6(v41)];
LABEL_46:
    sub_26BE77028(v122, v43, v128);
    goto LABEL_57;
  }

  v50 = v40;
  v51 = v40 >> 32;
  *(&v114 + 1) = v51 - v50;
  if (v51 < v50)
  {
    __break(1u);
    goto LABEL_109;
  }

  v52 = sub_26C008E9C();
  if (v52)
  {
    v53 = sub_26C008ECC();
    if (!__OFSUB__(v50, v53))
    {
      v52 += v50 - v53;
      goto LABEL_38;
    }

LABEL_112:
    __break(1u);
  }

LABEL_38:
  v54 = *(&v114 + 1);
  v55 = sub_26C008EBC();
  if (v55 >= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v55;
  }

  v57 = (v56 + v52);
  if (v52)
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v59 = v52;
LABEL_56:
  sub_26BE77028(v59, v58, v128);
  a1 = v115;
LABEL_57:
  v63 = v128[0];
  __swift_destroy_boxed_opaque_existential_1(&v125);
  sub_26BF8ED18(v63, *(&v63 + 1));
  sub_26BE00258(v63, *(&v63 + 1));
  v64 = sub_26BF2F7B0();
  v126 = MEMORY[0x277CC9318];
  v127 = MEMORY[0x277CC9300];
  *&v125 = v64;
  *(&v125 + 1) = v65;
  result = __swift_project_boxed_opaque_existential_1(&v125, MEMORY[0x277CC9318]);
  v66 = *result;
  v67 = result[1];
  v68 = v67 >> 62;
  if ((v67 >> 62) > 1)
  {
    if (v68 != 2)
    {
      *&v122[6] = 0;
      *v122 = 0;
      v69 = v122;
      goto LABEL_76;
    }

    v70 = *(v66 + 16);
    *(&v114 + 1) = *(v66 + 24);
    result = sub_26C008E9C();
    if (result)
    {
      v71 = result;
      result = sub_26C008ECC();
      if (__OFSUB__(v70, result))
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v72 = v70;
      v73 = v71 + v70 - result;
    }

    else
    {
      v72 = v70;
      v73 = 0;
    }

    v83 = *(&v114 + 1) - v72;
    if (!__OFSUB__(*(&v114 + 1), v72))
    {
      v84 = sub_26C008EBC();
      if (v84 >= v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = v84;
      }

      v86 = &v73[v85];
      if (v73)
      {
        v81 = v86;
      }

      else
      {
        v81 = 0;
      }

      v82 = v73;
      goto LABEL_86;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (!v68)
  {
    *v122 = *result;
    *&v122[8] = v67;
    v122[10] = BYTE2(v67);
    v122[11] = BYTE3(v67);
    v122[12] = BYTE4(v67);
    v122[13] = BYTE5(v67);
    v69 = &v122[BYTE6(v67)];
LABEL_76:
    sub_26BE77028(v122, v69, v128);
    goto LABEL_87;
  }

  v74 = v66;
  v75 = v66 >> 32;
  *(&v114 + 1) = v75 - v74;
  if (v75 < v74)
  {
    __break(1u);
    goto LABEL_114;
  }

  v76 = sub_26C008E9C();
  if (!v76)
  {
LABEL_68:
    v77 = *(&v114 + 1);
    v78 = sub_26C008EBC();
    if (v78 >= v77)
    {
      v79 = v77;
    }

    else
    {
      v79 = v78;
    }

    v80 = (v79 + v76);
    if (v76)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v82 = v76;
LABEL_86:
    sub_26BE77028(v82, v81, v128);
    a1 = v115;
LABEL_87:
    v87 = v128[0];
    __swift_destroy_boxed_opaque_existential_1(&v125);
    sub_26BF8ED18(v87, *(&v87 + 1));
    sub_26BE00258(v87, *(&v87 + 1));
    sub_26BE108C0();
    v88 = sub_26BEE62D4();
    v89 = v116;
    v90 = v119;
    if ((v88 & 0x100) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v91 = 1;
      swift_willThrow();
    }

    else
    {
      a1 = &v125;
      if (!v88)
      {
        *&v114 = 0;
        *(&v114 + 1) = 0x3000000000000000;
        goto LABEL_94;
      }

      if (v88 == 1)
      {
        sub_26BE03DC0(&v125);
        v114 = v125;
        if ((~*(&v125 + 1) & 0x3000000000000000) != 0)
        {
          v128[0] = v114;
          sub_26BE04890(v114, *(&v114 + 1));
          MLS.Credential.rawValue.getter();
          MLS.Identity.Credential.init(serializedCredential:)(v109, v110, &v125);
LABEL_110:
          sub_26BE7162C(v114, *(&v114 + 1));
          v93 = *(&v125 + 1);
          v92 = v125;
LABEL_95:
          v94 = sub_26BEE62D4();
          if ((v94 & 0x100) != 0)
          {
            sub_26BE01600();
            swift_allocError();
            *v97 = 1;
            swift_willThrow();
          }

          else
          {
            v112 = v93;
            v113 = v92;
            if (!v94)
            {
              a1[28] = 0u;
              a1[29] = 0u;
              a1[26] = 0u;
              a1[27] = 0u;
              a1[24] = 0u;
              a1[25] = 0u;
              a1[23] = 0u;
              goto LABEL_103;
            }

            if (v94 == 1)
            {
              sub_26BEB9B44(v128);
LABEL_103:
              sub_26BE295A0(v115, &v125);
              v98 = v116;
              v99 = *(v116 + 16);
              v100 = v120;
              v99(v12, v121, v120);
              v99(v118, v119, v100);
              sub_26BE038A8(v129, v124);
              v102 = v112;
              v101 = v113;
              v123[0] = v113;
              v123[1] = v112;
              sub_26BF91180(v128, v122);
              v111[0] = *(v117 + 656);
              v111[1] = v117 + 656;
              sub_26BE2958C(v101, v102);
              v19 = (v111[0])(&v125, v12, v118, v124, v123, v122);
              sub_26BE7162C(v114, *(&v114 + 1));
              sub_26BE7162C(v101, v102);
              sub_26BE00258(a2, a3);
              sub_26BF911F0(v128);
              __swift_destroy_boxed_opaque_existential_1(v129);
              v103 = *(v98 + 8);
              v104 = v120;
              v103(v119, v120);
              v103(v121, v104);
              sub_26BE00258(v130, v131);

              sub_26BE29710(v115);
              v105 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
              swift_beginAccess();
              *(v19 + v105) = 1;
              v106 = v19 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
              swift_beginAccess();
              if (*(v106 + 32))
              {
                *(v106 + 104) = v19;
              }

              swift_endAccess();

              return v19;
            }

            sub_26BE01600();
            swift_allocError();
            *v107 = 5;
            swift_willThrow();
            v93 = v112;
            v92 = v113;
          }

          sub_26BE7162C(v114, *(&v114 + 1));
          sub_26BE7162C(v92, v93);
          sub_26BE00258(a2, a3);
          __swift_destroy_boxed_opaque_existential_1(v129);
          v19 = *(v116 + 8);
          v108 = v120;
          (v19)(v119, v120);
          (v19)(v121, v108);
          goto LABEL_24;
        }

LABEL_94:
        v92 = 0;
        v125 = xmmword_26C00DA50;
        v93 = 0x3000000000000000;
        goto LABEL_95;
      }

      sub_26BE01600();
      swift_allocError();
      *v95 = 5;
      swift_willThrow();
      a1 = v115;
    }

    v96 = v120;
    sub_26BE00258(a2, a3);
    __swift_destroy_boxed_opaque_existential_1(v129);
    v19 = *(v89 + 8);
    (v19)(v90, v96);
    (v19)(v121, v96);
    goto LABEL_10;
  }

  result = sub_26C008ECC();
  if (!__OFSUB__(v74, result))
  {
    v76 += v74 - result;
    goto LABEL_68;
  }

LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_26BF8FDE4()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = sub_26C00926C();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v13 = HIBYTE(v0);
  v14 = v2 >> 8;
  v15 = v2 >> 16;
  v16 = v2 >> 24;
  v17 = HIDWORD(v2);
  v18 = v2 >> 40;
  v19 = HIWORD(v2);
  v20 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C013360;
  *(v10 + 32) = v1;
  *(v10 + 33) = v4;
  *(v10 + 34) = v5;
  *(v10 + 35) = v6;
  *(v10 + 36) = v7;
  *(v10 + 37) = v8;
  *(v10 + 38) = v9;
  *(v10 + 39) = v13;
  *(v10 + 40) = v3;
  *(v10 + 41) = v14;
  *(v10 + 42) = v15;
  *(v10 + 43) = v16;
  *(v10 + 44) = v17;
  *(v10 + 45) = v18;
  *(v10 + 46) = v19;
  *(v10 + 47) = v20;
  v21 = 16;
  v23 = MEMORY[0x277D838B0];
  v24 = MEMORY[0x277CC9C18];
  v22[0] = &v21;
  v22[1] = v22;
  __swift_project_boxed_opaque_existential_1(v22, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v22);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  v23 = v11;
  v24 = sub_26BF91328();
  v22[0] = v10;
  __swift_project_boxed_opaque_existential_1(v22, v11);

  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v22);

  return 17;
}

uint64_t MLS.Client.ClientStorageVersion.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
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

void *sub_26BF90010@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_26BF90058(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v80 = *MEMORY[0x277D85DE8];
  v6 = sub_26C00928C();
  v59 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  *&v68 = 0x100000000000000;
  v78 = MEMORY[0x277D838B0];
  v79 = MEMORY[0x277CC9C18];
  v75 = &v68;
  v76 = &v68 + 8;
  __swift_project_boxed_opaque_existential_1(&v75, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v75);
  swift_beginAccess();
  v12 = *(a1 + 280);
  v13 = *(a1 + 288);

  sub_26BF3016C(v12, v13);
  if (v3)
  {

    return;
  }

  v15 = v14;
  v56 = v9;
  v57 = v4;
  v16 = v59;
  v58 = a1;

  if (__OFADD__(v15, 8))
  {
    goto LABEL_28;
  }

  v55 = v15 + 8;
  v17 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  v18 = v58;
  swift_beginAccess();
  v19 = v16;
  v20 = *(v16 + 16);
  v20(v11, v18 + v17, v6);
  sub_26BF8FDE4();
  v21 = *(v19 + 8);
  v22 = v11;
  v59 = v19 + 8;
  v23 = v21;
  v21(v22, v6);
  v24 = v55 + 17;
  if (__OFADD__(v55, 17))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID;
  v26 = v58;
  swift_beginAccess();
  v27 = v26 + v25;
  v28 = v56;
  v20(v56, v27, v6);
  sub_26BF8FDE4();
  v23(v28, v6);
  v29 = __OFADD__(v24, 17);
  v30 = v24 + 17;
  if (v29)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v31 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  v32 = v58;
  swift_beginAccess();
  sub_26BE038A8(v32 + v31, &v75);
  sub_26BE136C4(&v75);
  v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v35 = v30 + v34;
  if (__OFADD__(v30, v34))
  {
    goto LABEL_31;
  }

  swift_beginAccess();
  v36 = *(v32 + 32);
  if ((~v36 & 0x3000000000000000) != 0)
  {
    goto LABEL_13;
  }

  LOBYTE(v68) = 0;
  v78 = MEMORY[0x277D838B0];
  v79 = MEMORY[0x277CC9C18];
  v75 = &v68;
  v76 = &v68 + 1;
  __swift_project_boxed_opaque_existential_1(&v75, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v36 = 0;
  v37 = 0x3000000000000000;
  v38 = v35 + 1;
  if (__OFADD__(v35, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v35 = v37;
    v39 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BF91180(v32 + v39, &v75);
    sub_26BF91180(&v75, &v61);
    if (v63)
    {
      v71 = v64;
      v72 = v65;
      v73 = v66;
      v74 = v67;
      v68 = v61;
      v69 = v62;
      v70 = v63;
      v60 = 1;
      *(&v62 + 1) = MEMORY[0x277D838B0];
      *&v63 = MEMORY[0x277CC9C18];
      *&v61 = &v60;
      *(&v61 + 1) = &v61;
      __swift_project_boxed_opaque_existential_1(&v61, MEMORY[0x277D838B0]);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v61);
      sub_26BEB8E9C(&v68);
      v41 = v40;
      v42 = 0;
      sub_26BE7162C(v36, v35);
      sub_26BE2BA24(&v68);
      sub_26BF911F0(&v75);
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_13:
        v42 = *(v32 + 24);
        *&v68 = v42;
        *(&v68 + 1) = v36;
        sub_26BE2958C(v42, v36);
        sub_26BE04890(v42, v36);
        v45 = MLS.Identity.Credential.serializedRepresentation.getter();
        goto LABEL_18;
      }
    }

    else
    {
      v46 = MEMORY[0x277D838B0];
      v47 = MEMORY[0x277CC9C18];
      v42 = &v61;
      sub_26BF911F0(&v61);
      LOBYTE(v61) = 0;
      *(&v69 + 1) = v46;
      *&v70 = v47;
      *&v68 = &v61;
      *(&v68 + 1) = &v61 + 1;
      __swift_project_boxed_opaque_existential_1(&v68, v46);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v68);
      sub_26BE7162C(v36, v35);
      sub_26BF911F0(&v75);
      v44 = 1;
    }

    v45 = (v38 + v44);
    if (!__OFADD__(v38, v44))
    {
      return;
    }

    __break(1u);
LABEL_18:
    v48 = v45;
    v49 = v43;
    v50 = 0;
    v51 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v51 != 2)
      {
        goto LABEL_24;
      }

      v50 = *(v45 + 2);
    }

    else
    {
      if (!v51)
      {
        goto LABEL_24;
      }

      v50 = v45;
    }

    sub_26BE00608(v45, v43);
LABEL_24:
    v75 = v48;
    v76 = v49;
    v77 = v50;
    sub_26BE03DC0(&v61);
    sub_26BE7162C(v42, v36);
    sub_26BE00258(v48, v49);
    sub_26BE7162C(v42, v36);
    sub_26BE00258(v75, v76);
    v37 = *(&v61 + 1);
    v36 = v61;
    LOBYTE(v68) = 1;
    v78 = MEMORY[0x277D838B0];
    v79 = MEMORY[0x277CC9C18];
    v75 = &v68;
    v76 = &v68 + 1;
    __swift_project_boxed_opaque_existential_1(&v75, MEMORY[0x277D838B0]);
    sub_26BE04890(v36, v37);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v75);
    v75 = v36;
    v76 = v37;
    sub_26BE03BF4(&v75);
    v53 = v52;
    sub_26BE0489C(v36, v37);
    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    v32 = v58;
    v38 = v35 + v54;
    if (__OFADD__(v35, v54))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t MLS.Client.Client.__allocating_init(configuration:clientUUID:)(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = sub_26C00928C();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF90890, 0, 0);
}

uint64_t sub_26BF90890()
{
  v1 = v0[48];
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_26BF909C0;
  v5 = v0[49];

  return v7(v5, v2, v3);
}

uint64_t sub_26BF909C0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  if (v2)
  {
    v5 = sub_26BF910E8;
  }

  else
  {
    v5 = sub_26BF90AD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF90AD8()
{
  v69 = v0;
  v1 = *(v0 + 456);
  if (v1 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_9:
      sub_26BE136AC(*(v0 + 448), *(v0 + 456));
      goto LABEL_11;
    }

    v3 = *(v0 + 448);
    if (*(v3 + 16) == *(v3 + 24))
    {
LABEL_11:
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 416);
      v4 = *(v0 + 424);
      v6 = *(v0 + 408);
      v7 = *(v0 + 392);
      v8 = sub_26C009A5C();
      __swift_project_value_buffer(v8, qword_280478E70);
      (*(v5 + 16))(v4, v7, v6);
      v9 = sub_26C009A3C();
      v10 = sub_26C00AA1C();
      v11 = os_log_type_enabled(v9, v10);
      v13 = *(v0 + 448);
      v12 = *(v0 + 456);
      v15 = *(v0 + 416);
      v14 = *(v0 + 424);
      v16 = *(v0 + 408);
      v17 = *(v0 + 392);
      if (v11)
      {
        v66 = *(v0 + 448);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v68[0] = v19;
        *v18 = 136315138;
        sub_26BF91258();
        v62 = v12;
        v64 = v17;
        v20 = sub_26C00AEFC();
        v22 = v21;
        v23 = *(v15 + 8);
        v23(v14, v16);
        v24 = sub_26BE29740(v20, v22, v68);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_26BDFE000, v9, v10, "Could not find client with UUID %s in storage)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x26D69A4E0](v19, -1, -1);
        MEMORY[0x26D69A4E0](v18, -1, -1);

        sub_26BE136AC(v66, v62);
        v23(v64, v16);
      }

      else
      {

        sub_26BE136AC(v13, v12);
        v25 = *(v15 + 8);
        v25(v17, v16);
        v25(v14, v16);
      }

      v26 = 0;
LABEL_17:
      sub_26BE29710(*(v0 + 384));

      v27 = *(v0 + 8);

      return v27(v26);
    }

    goto LABEL_20;
  }

  if (v2)
  {
    v3 = *(v0 + 448);
    if (v3 == v3 >> 32)
    {
      goto LABEL_11;
    }

LABEL_20:
    sub_26BE2E408(v3, *(v0 + 456));
    v1 = *(v0 + 456);
    goto LABEL_21;
  }

  if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v29 = *(v0 + 464);
  v30 = *(v0 + 448);
  sub_26BE295A0(*(v0 + 384), v0 + 16);
  sub_26BE00608(v30, v1);
  v31 = MLS.Client.Client.__allocating_init(configuration:rawValue:)((v0 + 16), v30, v1);
  if (!v29)
  {
    v26 = v31;
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 432);
    v39 = *(v0 + 408);
    v40 = *(v0 + 416);
    v41 = *(v0 + 392);
    v42 = sub_26C009A5C();
    __swift_project_value_buffer(v42, qword_280478E70);
    (*(v40 + 16))(v38, v41, v39);
    v43 = sub_26C009A3C();
    v44 = sub_26C00AA1C();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 448);
    v46 = *(v0 + 456);
    v48 = *(v0 + 432);
    v50 = *(v0 + 408);
    v49 = *(v0 + 416);
    v51 = *(v0 + 392);
    if (v45)
    {
      v65 = *(v0 + 448);
      v52 = swift_slowAlloc();
      v67 = v51;
      v68[0] = swift_slowAlloc();
      v53 = v68[0];
      *v52 = 136315138;
      sub_26BF91258();
      v61 = v46;
      v63 = v50;
      v54 = sub_26C00AEFC();
      v55 = v50;
      v57 = v56;
      v58 = *(v49 + 8);
      v58(v48, v55);
      v59 = sub_26BE29740(v54, v57, v68);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_26BDFE000, v43, v44, "Loaded client with UUID %s from storage)", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x26D69A4E0](v53, -1, -1);
      MEMORY[0x26D69A4E0](v52, -1, -1);

      sub_26BE136AC(v65, v61);
      sub_26BE136AC(v65, v61);
      v58(v67, v63);
    }

    else
    {

      sub_26BE136AC(v47, v46);
      sub_26BE136AC(v47, v46);
      v60 = *(v49 + 8);
      v60(v51, v50);
      v60(v48, v50);
    }

    goto LABEL_17;
  }

  v33 = *(v0 + 448);
  v32 = *(v0 + 456);
  *(v0 + 376) = *(v0 + 400);
  swift_getMetatypeMetadata();
  v34 = sub_26C00A4FC();
  sub_26BE826C4(v34, v35, v33, v32);

  swift_willThrow();
  sub_26BE136AC(v33, v32);
  sub_26BE136AC(v33, v32);
  v36 = *(v0 + 384);
  (*(*(v0 + 416) + 8))(*(v0 + 392), *(v0 + 408));
  sub_26BE29710(v36);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_26BF910E8()
{
  v1 = v0[48];
  (*(v0[52] + 8))(v0[49], v0[51]);
  sub_26BE29710(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF91180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF911F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BF91258()
{
  result = qword_28045E450;
  if (!qword_28045E450)
  {
    sub_26C00928C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E450);
  }

  return result;
}

unint64_t sub_26BF912B4()
{
  result = qword_28045FCC8;
  if (!qword_28045FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCC8);
  }

  return result;
}

unint64_t sub_26BF91328()
{
  result = qword_28045E440;
  if (!qword_28045E440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E228, &qword_26C00CDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E440);
  }

  return result;
}

uint64_t MLS.ExternalInitProposal.init(kemOutput:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

BOOL static MLS.UpdateProposal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v7;
  v8 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 112);
  v51 = *(a2 + 96);
  v52 = v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v12;
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v14;
  v15 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v15;
  v16 = *(a1 + 112);
  v35 = v43;
  v36 = v16;
  v31 = v39;
  v32 = v6;
  v33 = v41;
  v34 = v2;
  v29 = v38[0];
  v30 = v4;
  v17 = *(a2 + 112);
  v26 = v51;
  v27 = v17;
  v22 = v47;
  v23 = v13;
  v24 = v49;
  v25 = v9;
  v45 = *(a1 + 128);
  v53 = *(a2 + 128);
  v37 = *(a1 + 128);
  v28 = *(a2 + 128);
  v20 = v46[0];
  v21 = v11;
  sub_26BE00758(v38, v56);
  sub_26BE00758(v46, v56);
  v18 = _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(&v29, &v20);
  v54[6] = v26;
  v54[7] = v27;
  v55 = v28;
  v54[2] = v22;
  v54[3] = v23;
  v54[4] = v24;
  v54[5] = v25;
  v54[0] = v20;
  v54[1] = v21;
  sub_26BE00854(v54);
  v56[6] = v35;
  v56[7] = v36;
  v57 = v37;
  v56[2] = v31;
  v56[3] = v32;
  v56[4] = v33;
  v56[5] = v34;
  v56[0] = v29;
  v56[1] = v30;
  sub_26BE00854(v56);
  return v18;
}

BOOL sub_26BF914FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v7;
  v8 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 112);
  v51 = *(a2 + 96);
  v52 = v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v12;
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v14;
  v15 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v15;
  v16 = *(a1 + 112);
  v35 = v43;
  v36 = v16;
  v31 = v39;
  v32 = v6;
  v33 = v41;
  v34 = v2;
  v29 = v38[0];
  v30 = v4;
  v17 = *(a2 + 112);
  v26 = v51;
  v27 = v17;
  v22 = v47;
  v23 = v13;
  v24 = v49;
  v25 = v9;
  v45 = *(a1 + 128);
  v53 = *(a2 + 128);
  v37 = *(a1 + 128);
  v28 = *(a2 + 128);
  v20 = v46[0];
  v21 = v11;
  sub_26BE00758(v38, v56);
  sub_26BE00758(v46, v56);
  v18 = _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(&v29, &v20);
  v54[6] = v26;
  v54[7] = v27;
  v55 = v28;
  v54[2] = v22;
  v54[3] = v23;
  v54[4] = v24;
  v54[5] = v25;
  v54[0] = v20;
  v54[1] = v21;
  sub_26BE00854(v54);
  v56[6] = v35;
  v56[7] = v36;
  v57 = v37;
  v56[2] = v31;
  v56[3] = v32;
  v56[4] = v33;
  v56[5] = v34;
  v56[0] = v29;
  v56[1] = v30;
  sub_26BE00854(v56);
  return v18;
}

uint64_t sub_26BF91664@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v5 = v3;
  v6 = a2;
  v8 = *a1;
  v9 = *(a1 + 2);
  LODWORD(v10) = *(a1 + 12);
  v11 = *(a1 + 4);
  v177 = *(a1 + 3);
  v178 = v11;
  v12 = *(a1 + 9);
  *v181 = *(a1 + 8);
  *&v181[16] = v12;
  v13 = *(a1 + 7);
  *v180 = *(a1 + 6);
  *&v180[16] = v13;
  v179 = *(a1 + 5);
  v14 = *(a1 + 2);
  v175 = *(a1 + 1);
  v176 = v14;
  v15 = *(v8 + 16);
  v105 = v9;
  if (!v15)
  {
LABEL_49:
    v16 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v182 = MEMORY[0x277D84F90];
LABEL_54:
    *&v157[16] = *&v180[16];
    *v158 = *v181;
    *&v158[16] = *&v181[16];
    v154 = v177;
    v155 = v178;
    *v157 = *v180;
    v156 = v179;
    v153 = v176;
    v152 = v175;
    if (sub_26BE59C80(&v152) == 1)
    {
      goto LABEL_59;
    }

    v65 = 0;
    v66 = *&v158[8];
    v67 = *&v158[24];
    v68 = *v158;
    v69 = *&v157[8];
    v70 = v157[24];
    v71 = v156;
    v72 = *v157;
    v73 = v155;
    v74 = v154;
    v75 = v153;
    v76 = v152;
LABEL_56:
    v117 = v76;
    v118 = v75;
    v119 = v74;
    v120 = v73;
    v121 = v71;
    *v122 = v72;
    *&v122[8] = v69;
    v122[24] = v70;
    *v123 = v68;
    *&v123[8] = v66;
    *&v157[16] = *&v122[16];
    *v158 = *v123;
    v154 = v74;
    v155 = v73;
    *v157 = *v122;
    v156 = v71;
    v153 = v75;
    v152 = v76;
    *&v158[16] = *(&v66 + 1);
    *&v158[24] = v67;
    if (v10 || (v65 & 1) != 0)
    {
      v114 = *&v180[16];
      v115 = *v181;
      v116 = *&v181[16];
      v110 = v177;
      v111 = v178;
      v112 = v179;
      v113 = *v180;
      v108 = v175;
      v109 = v176;
      sub_26BF92720(&v108, &v163);
      sub_26BE59CF4(&v152);
LABEL_59:
      v77 = (*(v5 + *(type metadata accessor for MLS.GroupState(0) + 52)) == v105) & ~v10;
      result = sub_26BE5CC90();
      v78 = *(v6 + 24);
      *a3 = v16;
      *(a3 + 8) = v106;
      v79 = v182;
      *(a3 + 16) = v107;
      *(a3 + 24) = v79;
      *(a3 + 32) = (result & 1) == 0;
      *(a3 + 40) = v78;
      *(a3 + 48) = v77;
      return result;
    }

    LODWORD(v131) = v105;
    v114 = *&v180[16];
    v115 = *v181;
    v116 = *&v181[16];
    v110 = v177;
    v111 = v178;
    v112 = v179;
    v113 = *v180;
    v108 = v175;
    v109 = v176;
    sub_26BF92720(&v108, &v163);
    sub_26BFEDF98(&v131, &v136);
    if (v4)
    {
      sub_26BE59CF4(&v152);
LABEL_74:
    }

    if (!*(&v138 + 1))
    {

      sub_26BE2E258(&v136, &qword_28045E698, &unk_26C0204F0);
      sub_26BE01654();
      swift_allocError();
      *v91 = 8;
      v91[112] = 0;
      swift_willThrow();
      return sub_26BE59CF4(&v152);
    }

    v148 = v136;
    v149 = v137;
    v150 = v138;
    v151 = v139;
    sub_26BE2DB68(&v148, v147);
    v169 = *&v122[16];
    v170 = *v123;
    *&v171 = *&v123[16];
    v165 = v119;
    v166 = v120;
    v168 = *v122;
    v167 = v121;
    v84 = *v5;
    v164 = v118;
    v163 = v117;
    if ((v84 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v145 = v84 != 1;
      sub_26BE00758(&v117, &v136);
      sub_26BF34320(v146);
      v142 = v169;
      v143 = v170;
      v144 = v171;
      v138 = v165;
      v139 = v166;
      v140 = v167;
      v141 = v168;
      v136 = v163;
      v137 = v164;
      sub_26BE00854(&v136);
      sub_26BE2DB68(v146, v135);
      sub_26BE2DA9C(v147, &v131);
      sub_26BE2DA9C(v135, v134 + 8);
      sub_26BF7ED2C(&v131, &v124);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_84:
        v93 = *(v182 + 2);
        v92 = *(v182 + 3);
        if (v93 >= v92 >> 1)
        {
          v182 = sub_26BEECFC4((v92 > 1), v93 + 1, 1, v182);
        }

        sub_26BE59CF4(&v152);
        sub_26BF7ED88(&v131);
        sub_26BE2DAF8(v135);
        sub_26BE2DBC4(v146);
        sub_26BE2DAF8(v147);
        sub_26BE2DBC4(&v148);
        v94 = v182;
        *(v182 + 2) = v93 + 1;
        v95 = &v94[112 * v93];
        v97 = v125;
        v96 = v126;
        *(v95 + 2) = v124;
        *(v95 + 3) = v97;
        *(v95 + 4) = v96;
        v98 = v130;
        v100 = v127;
        v99 = v128;
        *(v95 + 7) = v129;
        *(v95 + 8) = v98;
        *(v95 + 5) = v100;
        *(v95 + 6) = v99;
        goto LABEL_59;
      }
    }

    v182 = sub_26BEECFC4(0, *(v182 + 2) + 1, 1, v182);
    goto LABEL_84;
  }

  v101 = v10;
  v103 = a3;
  a3 = 0;
  v104 = 0;
  v16 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v107 = MEMORY[0x277D84F90];
  v182 = MEMORY[0x277D84F90];
LABEL_3:
  v10 = v8 + 32 + 200 * a3++;
  while (1)
  {
    v152 = *v10;
    v17 = *(v10 + 16);
    v18 = *(v10 + 32);
    v19 = *(v10 + 48);
    v156 = *(v10 + 64);
    v155 = v19;
    v154 = v18;
    v153 = v17;
    v20 = *(v10 + 80);
    v21 = *(v10 + 96);
    v22 = *(v10 + 112);
    *&v158[16] = *(v10 + 128);
    *v158 = v22;
    *&v157[16] = v21;
    *v157 = v20;
    v23 = *(v10 + 144);
    v24 = *(v10 + 160);
    v25 = *(v10 + 176);
    v162 = *(v10 + 192);
    v161 = v25;
    v160 = v24;
    v159 = v23;
    v26 = *v10;
    v27 = *(v10 + 16);
    v28 = *(v10 + 32);
    v166 = *(v10 + 48);
    v165 = v28;
    v164 = v27;
    v163 = v26;
    v29 = *(v10 + 64);
    v30 = *(v10 + 80);
    v31 = *(v10 + 96);
    v170 = *(v10 + 112);
    v169 = v31;
    v168 = v30;
    v167 = v29;
    v32 = *(v10 + 128);
    v33 = *(v10 + 144);
    v34 = *(v10 + 160);
    v174 = *(v10 + 176);
    v173 = v34;
    v172 = v33;
    v171 = v32;
    v35 = sub_26BE5CD48(&v163);
    if (v35 <= 1)
    {
      break;
    }

    if (v35 == 2)
    {
      LODWORD(v131) = *sub_26BE5CDC8(&v163);
      sub_26BE5CDE4(&v152, &v108);
      sub_26BE5CDE4(&v152, &v108);
      sub_26BFEDF98(&v131, &v136);
      if (v4)
      {
        goto LABEL_66;
      }

      if (!*(&v138 + 1))
      {

        sub_26BE2E258(&v136, &qword_28045E698, &unk_26C0204F0);
        sub_26BE01654();
        swift_allocError();
        *v81 = 15;
        v81[112] = 0;
        swift_willThrow();
        return sub_26BE5CD74(&v152);
      }

      v117 = v136;
      v118 = v137;
      v119 = v138;
      *&v120 = v139;
      sub_26BE2DB68(&v117, &v108);
      if ((v162 & 1) != 0 || HIWORD(v161) != 61444)
      {
        sub_26BE2DA9C(&v108, &v136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_26BEED0EC(0, *(v106 + 2) + 1, 1, v106);
        }

        v6 = *(v106 + 2);
        v61 = *(v106 + 3);
        v47 = v6 + 1;
        if (v6 >= v61 >> 1)
        {
          v106 = sub_26BEED0EC((v61 > 1), v6 + 1, 1, v106);
        }

        sub_26BE5CD74(&v152);
        sub_26BE2DAF8(&v108);
        sub_26BE2DBC4(&v117);
        v48 = v106;
      }

      else
      {
        sub_26BE2DA9C(&v108, &v136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_26BEED0EC(0, *(v107 + 2) + 1, 1, v107);
        }

        v6 = *(v107 + 2);
        v46 = *(v107 + 3);
        v47 = v6 + 1;
        if (v6 >= v46 >> 1)
        {
          v107 = sub_26BEED0EC((v46 > 1), v6 + 1, 1, v107);
        }

        sub_26BE5CD74(&v152);
        sub_26BE2DAF8(&v108);
        sub_26BE2DBC4(&v117);
        v48 = v107;
      }

      *(v48 + 2) = v47;
      v56 = &v48[56 * v6];
      v58 = v137;
      v57 = v138;
      v59 = v139;
      v60 = v136;
LABEL_41:
      *(v56 + 10) = v59;
      *(v56 + 3) = v58;
      *(v56 + 4) = v57;
      *(v56 + 2) = v60;
      goto LABEL_42;
    }

    if (v35 == 5)
    {
      sub_26BE5CDC8(&v163);
      if (v15 != a3)
      {
        v104 = 1;
        if (a3 < *(v8 + 16))
        {
          goto LABEL_3;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      goto LABEL_51;
    }

LABEL_42:
    if (v15 == a3)
    {
      if ((v104 & 1) == 0)
      {
        v6 = a2;
        a3 = v103;
        LODWORD(v10) = v101;
        goto LABEL_54;
      }

LABEL_51:
      v114 = *&v180[16];
      v115 = *v181;
      v116 = *&v181[16];
      v110 = v177;
      v111 = v178;
      v112 = v179;
      v113 = *v180;
      v108 = v175;
      v109 = v176;
      if (sub_26BE59C80(&v108) == 1)
      {

        sub_26BE01654();
        swift_allocError();
        *v63 = 8;
        v63[112] = 0;
        return swift_willThrow();
      }

      v142 = v114;
      v143 = v115;
      v144 = v116;
      v138 = v110;
      v139 = v111;
      v140 = v112;
      v141 = v113;
      v82 = *v5;
      v136 = v108;
      v137 = v109;
      v6 = a2;
      a3 = v103;
      LODWORD(v10) = v101;
      if ((v82 - 3) >= 0xFFFFFFFE)
      {
        LOBYTE(v147[0]) = v82 != 1;
        sub_26BE7ABF0(&v175, &v117);
        sub_26BE00758(&v108, &v117);
        sub_26BF34320(&v124);
        if (v4)
        {
          sub_26BE2E258(&v175, &qword_28045E8B0, &qword_26C012560);
          *&v122[16] = v142;
          *v123 = v143;
          *&v123[16] = v144;
          v119 = v138;
          v120 = v139;
          v121 = v140;
          *v122 = v141;
          v117 = v136;
          v118 = v137;
          v80 = &v117;
          goto LABEL_70;
        }

        *&v122[16] = v142;
        *v123 = v143;
        *&v123[16] = v144;
        v119 = v138;
        v120 = v139;
        v121 = v140;
        *v122 = v141;
        v117 = v136;
        v118 = v137;
        sub_26BE00854(&v117);
        v131 = v124;
        v132 = v125;
        v133 = v126;
        *&v134[0] = v127;
        sub_26BE2DA9C(&v131, &v148);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_79;
        }

        goto LABEL_90;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      v16 = sub_26BEED0EC(0, *(v16 + 2) + 1, 1, v16);
LABEL_79:
      v86 = *(v16 + 2);
      v85 = *(v16 + 3);
      if (v86 >= v85 >> 1)
      {
        v16 = sub_26BEED0EC((v85 > 1), v86 + 1, 1, v16);
      }

      sub_26BE2E258(&v175, &qword_28045E8B0, &qword_26C012560);
      sub_26BE2DAF8(&v131);
      *(v16 + 2) = v86 + 1;
      v87 = &v16[56 * v86];
      v88 = v148;
      v89 = v149;
      v90 = v150;
      *(v87 + 10) = v151;
      *(v87 + 3) = v89;
      *(v87 + 4) = v90;
      *(v87 + 2) = v88;
      v76 = v175;
      v75 = v176;
      v74 = v177;
      v73 = v178;
      v71 = v179;
      v72 = *v180;
      v69 = *&v180[8];
      v70 = v180[24];
      v66 = *&v181[8];
      v65 = 1;
      v68 = *v181;
      v67 = *&v181[24];
      goto LABEL_56;
    }

    v10 += 200;
    if (a3++ >= *(v8 + 16))
    {
      goto LABEL_48;
    }
  }

  if (!v35)
  {
    v49 = sub_26BE5CDC8(&v163);
    v50 = *(v49 + 120);
    *v122 = *(v49 + 104);
    *&v122[16] = v50;
    *v123 = *(v49 + 136);
    *&v123[16] = *(v49 + 152);
    v51 = *(v49 + 56);
    v118 = *(v49 + 40);
    v119 = v51;
    v52 = *(v49 + 88);
    v120 = *(v49 + 72);
    v121 = v52;
    v117 = *(v49 + 24);
    v53 = *v5;
    if ((v53 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v54 = v49;
    LOBYTE(v124) = v53 != 1;
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE00758(v54 + 24, &v108);
    sub_26BF34320(&v136);
    if (v4)
    {
      sub_26BE5CD74(&v152);
      sub_26BE5CD74(&v152);
      v114 = *&v122[16];
      v115 = *v123;
      *&v116 = *&v123[16];
      v110 = v119;
      v111 = v120;
      v112 = v121;
      v113 = *v122;
      v108 = v117;
      v109 = v118;
      v80 = &v108;
LABEL_70:
      sub_26BE00854(v80);
      goto LABEL_74;
    }

    v114 = *&v122[16];
    v115 = *v123;
    *&v116 = *&v123[16];
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v113 = *v122;
    v108 = v117;
    v109 = v118;
    sub_26BE00854(&v108);
    sub_26BE2DB68(&v136, &v131);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_26BEED0EC(0, *(v16 + 2) + 1, 1, v16);
    }

    v6 = *(v16 + 2);
    v55 = *(v16 + 3);
    if (v6 >= v55 >> 1)
    {
      v16 = sub_26BEED0EC((v55 > 1), v6 + 1, 1, v16);
    }

    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
    sub_26BE2DBC4(&v136);
    *(v16 + 2) = v6 + 1;
    v56 = &v16[56 * v6];
    v58 = v132;
    v57 = v133;
    v59 = *&v134[0];
    v60 = v131;
    goto LABEL_41;
  }

  if (v35 != 1)
  {
    goto LABEL_42;
  }

  v36 = sub_26BE5CDC8(&v163);
  if (BYTE12(v161) == 1)
  {
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE5CDE4(&v152, &v108);
    sub_26BE5CDE4(&v152, &v108);

    goto LABEL_72;
  }

  v6 = v36;
  LODWORD(v136) = DWORD2(v161);
  sub_26BE5CDE4(&v152, &v108);
  sub_26BE5CDE4(&v152, &v108);
  sub_26BE5CDE4(&v152, &v108);
  sub_26BFEDF98(&v136, &v117);
  if (v4)
  {
    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
LABEL_66:
    sub_26BE5CD74(&v152);
    goto LABEL_74;
  }

  if (*(&v119 + 1))
  {
    v124 = v117;
    v125 = v118;
    v126 = v119;
    *&v127 = v120;
    sub_26BE2DB68(&v124, &v148);
    *v122 = *(v6 + 80);
    *&v122[16] = *(v6 + 96);
    *v123 = *(v6 + 112);
    *&v123[16] = *(v6 + 128);
    v118 = *(v6 + 16);
    v119 = *(v6 + 32);
    v120 = *(v6 + 48);
    v121 = *(v6 + 64);
    v117 = *v6;
    v37 = *v5;
    if ((v37 - 3) < 0xFFFFFFFE)
    {
      goto LABEL_88;
    }

    v135[0] = v37 != 1;
    sub_26BE5CDE4(&v152, &v108);
    sub_26BF34320(v147);
    v114 = *&v122[16];
    v115 = *v123;
    *&v116 = *&v123[16];
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v113 = *v122;
    v108 = v117;
    v109 = v118;
    sub_26BE00854(&v108);
    sub_26BE2DB68(v147, v146);
    sub_26BE2DA9C(&v148, &v136);
    sub_26BE2DA9C(v146, &v139 + 8);
    sub_26BF7ED2C(&v136, &v131);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_26BEECFC4(0, *(v182 + 2) + 1, 1, v182);
    }

    v6 = *(v182 + 2);
    v38 = *(v182 + 3);
    if (v6 >= v38 >> 1)
    {
      v182 = sub_26BEECFC4((v38 > 1), v6 + 1, 1, v182);
    }

    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
    sub_26BE5CD74(&v152);
    sub_26BF7ED88(&v136);
    sub_26BE2DAF8(v146);
    sub_26BE2DBC4(v147);
    sub_26BE2DAF8(&v148);
    sub_26BE2DBC4(&v124);
    v39 = v182;
    *(v182 + 2) = v6 + 1;
    v40 = &v39[112 * v6];
    v42 = v132;
    v41 = v133;
    *(v40 + 2) = v131;
    *(v40 + 3) = v42;
    *(v40 + 4) = v41;
    v43 = v134[3];
    v45 = v134[0];
    v44 = v134[1];
    *(v40 + 7) = v134[2];
    *(v40 + 8) = v43;
    *(v40 + 5) = v45;
    *(v40 + 6) = v44;
    goto LABEL_42;
  }

  sub_26BE2E258(&v117, &qword_28045E698, &unk_26C0204F0);
LABEL_72:
  sub_26BE01654();
  swift_allocError();
  *v83 = 8;
  v83[112] = 0;
  swift_willThrow();
  sub_26BE5CD74(&v152);
  sub_26BE5CD74(&v152);
  return sub_26BE5CD74(&v152);
}

double sub_26BF9277C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_26BEBB414(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6DC08();
      v9 = v11;
    }

    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_26C000898(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_26C00DA60;
  }

  return result;
}

double sub_26BF92810@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26BEBB414(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6DD70();
      v9 = v11;
    }

    sub_26BE2E410((*(v9 + 56) + 40 * v7), a2);
    sub_26C000A2C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26BF928AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26BEBB208(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6EE0C();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for MLS.KeyAndNonce(0);
    v18 = *(v11 - 8);
    sub_26BF97370(v10 + *(v18 + 72) * v7, a2, type metadata accessor for MLS.KeyAndNonce);
    sub_26C001714(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for MLS.KeyAndNonce(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)@<X0>(unsigned __int16 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v8 = sub_26C009C8C();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if ((v13 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v14 = *a2;
    v54 = *a1;
    v15 = v13 != 1;
    LOBYTE(v55) = v13 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v46 = v49;
    v44 = v51;
    v45 = v50;
    v43 = v52;
    v47 = v53;
    v16 = *(v9 + 16);
    v16(v12, v48, v8);
    LOBYTE(v55) = v15;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v42 = v49;
    v40 = v51;
    v41 = v50;
    v17 = v53;
    v39 = v52;
    v38 = UInt32.nextPowerOfTwo()();
    v55 = v14;
    MLS.NodeIndex.init(forRoot:)(&v55, &v49);
    if (v4)
    {
      v18 = *(v9 + 8);
      v18(v48, v8);
      v18(v12, v8);
    }

    else
    {
      v35 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA88, &qword_26C01D988);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA90, &qword_26C01D990);
      v37 = 0;
      v20 = v19 - 8;
      v21 = *(*(v19 - 8) + 80);
      v36 = v17;
      v22 = (v21 + 32) & ~v21;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_26C011280;
      v24 = (v23 + v22);
      v25 = *(v20 + 56);
      LODWORD(v20) = v35;
      *v24 = v35;
      v16(v24 + v25, v12, v8);
      v26 = sub_26C004CEC(v23);
      swift_setDeallocating();
      sub_26BE2E258(v24, &qword_28045FA90, &qword_26C01D990);
      swift_deallocClassInstance();
      v27 = *(v9 + 8);
      v27(v12, v8);
      v28 = sub_26C004EC8(MEMORY[0x277D84F90]);
      result = (v27)(v48, v8);
      v29 = v54;
      *a4 = v54;
      *(a4 + 8) = v46;
      v30 = v44;
      *(a4 + 16) = v45;
      *(a4 + 24) = v30;
      v31 = v47;
      *(a4 + 32) = v43;
      *(a4 + 40) = v31;
      *(a4 + 48) = v29;
      *(a4 + 52) = v38;
      *(a4 + 56) = v20;
      *(a4 + 64) = v42;
      v32 = v40;
      *(a4 + 72) = v41;
      *(a4 + 80) = v32;
      v33 = v36;
      *(a4 + 88) = v39;
      *(a4 + 96) = v33;
      *(a4 + 104) = v26;
      *(a4 + 112) = v28;
    }
  }

  return result;
}

uint64_t sub_26BF92D78(unsigned __int16 *a1)
{
  v152 = *MEMORY[0x277D85DE8];
  v126 = type metadata accessor for MLS.KeyAndNonce(0);
  v4 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11HashRatchetVMa(0);
  v112 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v8) = *a1;
  v10 = *(a1 + 4);
  v138 = *(a1 + 3);
  v139 = v10;
  v11 = *(a1 + 6);
  v140 = *(a1 + 5);
  v141 = v11;
  v114 = *(a1 + 14);
  LOWORD(v144) = bswap32(v8) >> 16;
  *(&v149 + 1) = MEMORY[0x277D838B0];
  *&v150 = MEMORY[0x277CC9C18];
  *&v148 = &v144;
  *(&v148 + 1) = &v144 + 2;
  __swift_project_boxed_opaque_existential_1(&v148, MEMORY[0x277D838B0]);
  sub_26BF972C0(&v138, &v134);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v148);
  v134 = v138;
  v135 = v139;
  v136 = v140;
  v137 = v141;
  v12 = sub_26BF29310(&v134);
  if (v2)
  {
    v148 = v134;
    v149 = v135;
    v150 = v136;
    v151 = v137;
    return sub_26BF9731C(&v148);
  }

  v14 = v12;
  v113 = v7;
  v115 = v9;
  v148 = v134;
  v149 = v135;
  v150 = v136;
  v151 = v137;
  sub_26BF9731C(&v148);
  if (__OFADD__(v14, 2))
  {
    goto LABEL_140;
  }

  v131 = 0;
  v101 = v14 + 2;
  v15 = v114;
  v142 = bswap64(*(v114 + 16));
  v146 = MEMORY[0x277D838B0];
  v16 = MEMORY[0x277CC9C18];
  v147 = MEMORY[0x277CC9C18];
  v144 = &v142;
  v145 = &v143;
  __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v144);
  v17 = *(v15 + 16);
  v132 = v6;
  v122 = v4;
  v123 = v1;
  if (v17)
  {
    v18 = sub_26BE32800(v17, 0);
    v130 = sub_26BE33224(&v144, (v18 + 32), v17, v15);

    sub_26BE2DA4C();
    v19 = v112;
    if (v130 != v17)
    {
      goto LABEL_141;
    }

    v4 = v122;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v19 = v112;
  }

  v144 = v18;
  v20 = v131;
  sub_26BF964AC(&v144);
  v131 = v20;
  if (v20)
  {
LABEL_145:

    __break(1u);
    return result;
  }

  v21 = 0;
  v22 = *(v144 + 2);
  v111 = v144;
  v106 = v144 + 32;
  v105 = (&v142 + 1);
  v124 = (&v142 + 4);
  v104 = (&v142 + 2);
  v125 = (v133 + 1);
  v116 = (v133 + 4);
  v117 = (v133 + 2);
  v102 = v22;
  v103 = &v143;
  v23 = 8;
  v24 = v114;
  do
  {
    if (v21 == v22)
    {

      result = v101 + v23;
      if (!__OFADD__(v101, v23))
      {
        return result;
      }

LABEL_144:
      __break(1u);
    }

    if (v21 >= *(v111 + 2))
    {
      goto LABEL_134;
    }

    if (!*(v24 + 16))
    {
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
      goto LABEL_144;
    }

    v109 = v21;
    v25 = &v106[8 * v21];
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = sub_26BEBB480(v26 | (v27 << 32));
    if ((v29 & 1) == 0)
    {
      goto LABEL_136;
    }

    v110 = v23;
    v30 = *(v24 + 56) + *(v19 + 72) * v28;
    v31 = v115;
    sub_26BF97060(v30, v115, _s11HashRatchetVMa);
    if (v26)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    LOBYTE(v142) = v32;
    v33 = v16;
    v34 = MEMORY[0x277D838B0];
    v146 = MEMORY[0x277D838B0];
    v147 = v33;
    v144 = &v142;
    v145 = v105;
    __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
    v35 = v123;
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v144);
    LODWORD(v142) = bswap32(v27);
    v146 = v34;
    v147 = v33;
    v144 = &v142;
    v145 = v124;
    __swift_project_boxed_opaque_existential_1(&v144, v34);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v144);
    LOWORD(v142) = bswap32(*v31) >> 16;
    v146 = v34;
    v147 = v33;
    v144 = &v142;
    v145 = v104;
    __swift_project_boxed_opaque_existential_1(&v144, v34);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v144);
    v36 = v131;
    sub_26C009C3C();
    v38 = v142;
    v37 = v143;
    v39 = v143 >> 62;
    v131 = v36;
    if ((v143 >> 62) > 1)
    {
      v40 = 0;
      if (v39 != 2)
      {
        goto LABEL_31;
      }

      v42 = *(v142 + 16);
      v41 = *(v142 + 24);
      v43 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v43)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (!v39)
      {
        v40 = BYTE6(v143);
        goto LABEL_27;
      }

      if (__OFSUB__(HIDWORD(v142), v142))
      {
        goto LABEL_142;
      }

      v40 = HIDWORD(v142) - v142;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_117;
    }

LABEL_27:
    if (v40 <= 0x3F)
    {
LABEL_31:
      v108 = v40;
      LOBYTE(v133[0]) = v40;
      v44 = MEMORY[0x277D838B0];
      v146 = MEMORY[0x277D838B0];
      v16 = MEMORY[0x277CC9C18];
      v147 = MEMORY[0x277CC9C18];
      v144 = v133;
      v145 = v125;
      __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
      v45 = v35;
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v46 = 7;
      goto LABEL_33;
    }

    v108 = v40;
    if (v40 >> 14)
    {
      if (v40 >> 30)
      {
LABEL_117:
        sub_26BE01600();
        swift_allocError();
        *v100 = 3;
        swift_willThrow();
        sub_26BE00258(v38, v37);

        return sub_26BF97000(v115, _s11HashRatchetVMa);
      }

      LODWORD(v133[0]) = bswap32(v40 | 0x80000000);
      v44 = MEMORY[0x277D838B0];
      v146 = MEMORY[0x277D838B0];
      v16 = MEMORY[0x277CC9C18];
      v147 = MEMORY[0x277CC9C18];
      v144 = v133;
      v145 = v116;
      __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
      v45 = v35;
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v46 = 10;
    }

    else
    {
      LOWORD(v133[0]) = bswap32(v40 | 0x4000) >> 16;
      v44 = MEMORY[0x277D838B0];
      v146 = MEMORY[0x277D838B0];
      v16 = MEMORY[0x277CC9C18];
      v147 = MEMORY[0x277CC9C18];
      v144 = v133;
      v145 = v117;
      __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
      v45 = v35;
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v46 = 8;
    }

LABEL_33:
    v107 = v46;
    v146 = MEMORY[0x277CC9318];
    v147 = MEMORY[0x277CC9300];
    v144 = v38;
    v145 = v37;
    v47 = __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277CC9318]);
    v49 = *v47;
    v48 = v47[1];
    sub_26BE00608(v38, v37);
    v50 = v131;
    sub_26BE121A0(v49, v48, v45);
    v131 = v50;
    __swift_destroy_boxed_opaque_existential_1(&v144);
    sub_26BE00258(v38, v37);
    v51 = v113;
    v52 = v115;
    LODWORD(v142) = bswap32(*(v115 + *(v113 + 24)));
    v146 = v44;
    v147 = v16;
    v144 = &v142;
    v145 = v124;
    __swift_project_boxed_opaque_existential_1(&v144, v44);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v144);
    v53 = *(v52 + *(v51 + 28));
    v142 = bswap64(*(v53 + 16));
    v146 = v44;
    v147 = v16;
    v144 = &v142;
    v145 = v103;
    __swift_project_boxed_opaque_existential_1(&v144, v44);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v144);
    v54 = *(v53 + 16);
    if (v54)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2A8, &unk_26C0245F0);
      v55 = swift_allocObject();
      v56 = _swift_stdlib_malloc_size(v55);
      v57 = v56 - 32;
      if (v56 < 32)
      {
        v57 = v56 - 29;
      }

      *(v55 + 16) = v54;
      *(v55 + 24) = 2 * (v57 >> 2);
      v58 = sub_26BE33124(&v144, (v55 + 32), v54, v53);

      sub_26BE2DA4C();
      if (v58 != v54)
      {
        goto LABEL_137;
      }

      v59 = v53;
      v4 = v122;
      v60 = MEMORY[0x277D838B0];
      v16 = MEMORY[0x277CC9C18];
    }

    else
    {
      v60 = v44;
      v55 = MEMORY[0x277D84F90];
      v59 = v53;
    }

    v144 = v55;
    v61 = v131;
    sub_26BF96518(&v144);
    v131 = v61;
    if (v61)
    {
      goto LABEL_145;
    }

    v62 = v144;
    v121 = *(v144 + 2);
    if (v121)
    {
      v63 = 0;
      v64 = 8;
      v119 = v59;
      v120 = v144;
      while (1)
      {
        if (v63 >= *(v62 + 2))
        {
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
          goto LABEL_135;
        }

        if (!*(v59 + 16))
        {
          goto LABEL_119;
        }

        v129 = v63;
        v130 = v64;
        v65 = *&v62[4 * v63 + 32];
        v66 = sub_26BEBB208(v65);
        if ((v67 & 1) == 0)
        {
          goto LABEL_120;
        }

        sub_26BF97060(*(v59 + 56) + *(v4 + 72) * v66, v132, type metadata accessor for MLS.KeyAndNonce);
        LODWORD(v142) = bswap32(v65);
        v146 = v60;
        v147 = v16;
        v144 = &v142;
        v145 = v124;
        __swift_project_boxed_opaque_existential_1(&v144, v60);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v144);
        v68 = v131;
        sub_26C009C3C();
        v64 = v142;
        v4 = v143;
        v69 = v143 >> 62;
        if ((v143 >> 62) > 1)
        {
          v70 = 0;
          if (v69 != 2)
          {
            goto LABEL_58;
          }

          v72 = *(v142 + 16);
          v71 = *(v142 + 24);
          v43 = __OFSUB__(v71, v72);
          v70 = v71 - v72;
          if (v43)
          {
            goto LABEL_123;
          }

          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else if (v69)
        {
          v73 = HIDWORD(v142) - v142;
          if (__OFSUB__(HIDWORD(v142), v142))
          {
            goto LABEL_122;
          }

          v70 = v73;
          if ((v73 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v70 = BYTE6(v143);
        }

        if (v70 <= 0x3F)
        {
LABEL_58:
          v74 = v68;
          v128 = v70;
          LOBYTE(v133[0]) = v70;
          v146 = v60;
          v147 = v16;
          v144 = v133;
          v145 = v125;
          __swift_project_boxed_opaque_existential_1(&v144, v60);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v144);
          v75 = 5;
          goto LABEL_60;
        }

        v128 = v70;
        if (v70 >> 14)
        {
          if (v70 >> 30)
          {
            goto LABEL_113;
          }

          v74 = v68;
          LODWORD(v133[0]) = bswap32(v70 | 0x80000000);
          v146 = v60;
          v147 = v16;
          v144 = v133;
          v145 = v116;
          __swift_project_boxed_opaque_existential_1(&v144, v60);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v144);
          v75 = 8;
        }

        else
        {
          v74 = v68;
          LOWORD(v133[0]) = bswap32(v70 | 0x4000) >> 16;
          v146 = v60;
          v147 = v16;
          v144 = v133;
          v145 = v117;
          __swift_project_boxed_opaque_existential_1(&v144, v60);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v144);
          v75 = 6;
        }

LABEL_60:
        v146 = MEMORY[0x277CC9318];
        v147 = MEMORY[0x277CC9300];
        v144 = v64;
        v145 = v4;
        v76 = __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277CC9318]);
        v77 = *v76;
        v78 = v76[1];
        v79 = v78 >> 62;
        v127 = v75;
        if ((v78 >> 62) > 1)
        {
          if (v79 == 2)
          {
            v80 = *(v77 + 16);
            v81 = *(v77 + 24);
            sub_26BE00608(v64, v4);
            if (sub_26C008E9C() && __OFSUB__(v80, sub_26C008ECC()))
            {
              goto LABEL_130;
            }

            if (__OFSUB__(v81, v80))
            {
              goto LABEL_125;
            }

LABEL_72:
            sub_26C008EBC();
            sub_26C00908C();
            sub_26BE00258(v64, v4);
            goto LABEL_75;
          }

          memset(v133, 0, 14);
        }

        else
        {
          if (v79)
          {
            v82 = v77;
            if (v77 >> 32 < v77)
            {
              goto LABEL_124;
            }

            sub_26BE00608(v64, v4);
            if (sub_26C008E9C() && __OFSUB__(v82, sub_26C008ECC()))
            {
              goto LABEL_131;
            }

            goto LABEL_72;
          }

          v133[0] = v77;
          LOWORD(v133[1]) = v78;
          BYTE2(v133[1]) = BYTE2(v78);
          BYTE3(v133[1]) = BYTE3(v78);
          BYTE4(v133[1]) = BYTE4(v78);
          BYTE5(v133[1]) = BYTE5(v78);
        }

        sub_26C00908C();
LABEL_75:
        __swift_destroy_boxed_opaque_existential_1(&v144);
        sub_26C009C3C();
        v64 = v142;
        v4 = v143;
        v83 = v143 >> 62;
        v60 = MEMORY[0x277D838B0];
        v131 = v74;
        if ((v143 >> 62) > 1)
        {
          v84 = 0;
          if (v83 != 2)
          {
            goto LABEL_88;
          }

          v86 = *(v142 + 16);
          v85 = *(v142 + 24);
          v84 = v85 - v86;
          if (__OFSUB__(v85, v86))
          {
            goto LABEL_126;
          }

          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else if (v83)
        {
          v87 = HIDWORD(v142) - v142;
          if (__OFSUB__(HIDWORD(v142), v142))
          {
            goto LABEL_127;
          }

          v84 = v87;
          if ((v87 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v84 = BYTE6(v143);
        }

        if (v84 <= 0x3F)
        {
LABEL_88:
          LOBYTE(v133[0]) = v84;
          v146 = MEMORY[0x277D838B0];
          v147 = MEMORY[0x277CC9C18];
          v144 = v133;
          v145 = v125;
          __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v144);
          v88 = 1;
          goto LABEL_90;
        }

        if (v84 >> 14)
        {
          if (v84 >> 30)
          {
            goto LABEL_113;
          }

          LODWORD(v133[0]) = bswap32(v84 | 0x80000000);
          v146 = MEMORY[0x277D838B0];
          v147 = MEMORY[0x277CC9C18];
          v144 = v133;
          v145 = v116;
          __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v144);
          v88 = 4;
        }

        else
        {
          LOWORD(v133[0]) = bswap32(v84 | 0x4000) >> 16;
          v146 = MEMORY[0x277D838B0];
          v147 = MEMORY[0x277CC9C18];
          v144 = v133;
          v145 = v117;
          __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277D838B0]);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v144);
          v88 = 2;
        }

LABEL_90:
        v146 = MEMORY[0x277CC9318];
        v147 = MEMORY[0x277CC9300];
        v144 = v64;
        v145 = v4;
        v89 = __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277CC9318]);
        v90 = *v89;
        v91 = v89[1];
        v92 = v91 >> 62;
        if ((v91 >> 62) > 1)
        {
          if (v92 == 2)
          {
            v93 = *(v90 + 16);
            v118 = *(v90 + 24);
            sub_26BE00608(v64, v4);
            if (sub_26C008E9C() && __OFSUB__(v93, sub_26C008ECC()))
            {
              goto LABEL_132;
            }

            if (__OFSUB__(v118, v93))
            {
              goto LABEL_129;
            }

            sub_26C008EBC();
            sub_26C00908C();
            sub_26BE00258(v64, v4);
            v60 = MEMORY[0x277D838B0];
            goto LABEL_104;
          }

          memset(v133, 0, 14);
        }

        else
        {
          if (v92)
          {
            v118 = v88;
            v94 = v90;
            if (v90 >> 32 < v90)
            {
              goto LABEL_128;
            }

            sub_26BE00608(v64, v4);
            if (sub_26C008E9C() && __OFSUB__(v94, sub_26C008ECC()))
            {
              goto LABEL_133;
            }

            sub_26C008EBC();
            sub_26C00908C();
            sub_26BE00258(v64, v4);
            v60 = MEMORY[0x277D838B0];
            v88 = v118;
            goto LABEL_104;
          }

          v133[0] = *v89;
          LOWORD(v133[1]) = v91;
          BYTE2(v133[1]) = BYTE2(v91);
          BYTE3(v133[1]) = BYTE3(v91);
          BYTE4(v133[1]) = BYTE4(v91);
          BYTE5(v133[1]) = BYTE5(v91);
        }

        sub_26C00908C();
LABEL_104:
        sub_26BF97000(v132, type metadata accessor for MLS.KeyAndNonce);
        __swift_destroy_boxed_opaque_existential_1(&v144);
        v95 = v127 + v128 + v88 + v84;
        v64 = v130 + v95;
        v4 = v122;
        v59 = v119;
        if (__OFADD__(v130, v95))
        {
          goto LABEL_121;
        }

        v63 = v129 + 1;
        v62 = v120;
        v16 = MEMORY[0x277CC9C18];
        if (v121 == v129 + 1)
        {

          goto LABEL_108;
        }
      }
    }

    v64 = 8;
LABEL_108:
    v96 = v107 + v108 + v64;
    v19 = v112;
    v97 = v110;
    if (__OFADD__(v107 + v108, v64))
    {
      goto LABEL_138;
    }

    sub_26BF97000(v115, _s11HashRatchetVMa);
    v98 = v96 + 5;
    if (__OFADD__(v96, 5))
    {
      goto LABEL_139;
    }

    v21 = v109 + 1;
    v43 = __OFADD__(v97, v98);
    v23 = v97 + v98;
    v24 = v114;
    v22 = v102;
  }

  while (!v43);
  __break(1u);
LABEL_113:
  sub_26BE01600();
  swift_allocError();
  *v99 = 3;
  swift_willThrow();

  sub_26BE00258(v64, v4);
  sub_26BF97000(v132, type metadata accessor for MLS.KeyAndNonce);
  return sub_26BF97000(v115, _s11HashRatchetVMa);
}

uint64_t sub_26BF93F90@<X0>(_WORD *a1@<X8>)
{
  v4 = _s11HashRatchetVMa(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = sub_26BEE6180();
  if ((v11 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  v12 = v11;
  result = sub_26BF29B74(v60);
  if (!v2)
  {
    v56 = v60[0];
    v57 = v60[1];
    v58 = v60[2];
    v59 = v60[3];
    v14 = sub_26BEEE594();
    if (v15)
    {
      sub_26BE01600();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      return sub_26BF9731C(&v56);
    }

    else
    {
      v18 = v14;
      v61 = v12;
      v46 = a1;
      v19 = sub_26C004EC8(MEMORY[0x277D84F90]);
      if (v18)
      {
        v47 = v1;
        v49 = v8;
        v48 = v10;
        while (1)
        {
          v20 = sub_26BEE62D4();
          if ((v20 & 0x100) != 0)
          {
            goto LABEL_27;
          }

          v50 = v18;
          if (v20 == 2)
          {
            v62 = 1;
          }

          else
          {
            if (v20 != 1)
            {
              goto LABEL_27;
            }

            v62 = 0;
          }

          v21 = sub_26BEE6028();
          if ((v21 & 0x100000000) != 0)
          {
LABEL_27:
            sub_26BE01600();
            swift_allocError();
            *v44 = 1;
            swift_willThrow();

            return sub_26BF9731C(&v56);
          }

          v22 = v21;
          sub_26BFF9BFC(v10);
          v23 = v5;
          sub_26BF97060(v10, v8, _s11HashRatchetVMa);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v19;
          v25 = v62 | (v22 << 32);
          v27 = sub_26BEBB480(v25);
          v28 = v19[2];
          v29 = (v26 & 1) == 0;
          v30 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            break;
          }

          v31 = v26;
          if (v19[3] >= v30)
          {
            v5 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_26BE6EA10();
            }
          }

          else
          {
            sub_26BE6B44C(v30, isUniquelyReferenced_nonNull_native);
            v32 = sub_26BEBB480(v25);
            if ((v31 & 1) != (v33 & 1))
            {
              goto LABEL_33;
            }

            v27 = v32;
            v5 = v23;
          }

          v19 = v52;
          if (v31)
          {
            v8 = v49;
            sub_26BF973D8(v49, v52[7] + *(v5 + 72) * v27);
            v10 = v48;
            sub_26BF97000(v48, _s11HashRatchetVMa);
          }

          else
          {
            v52[(v27 >> 6) + 8] |= 1 << v27;
            v34 = v19[6] + 8 * v27;
            *v34 = v62;
            *(v34 + 4) = v22;
            v8 = v49;
            sub_26BF97370(v49, v19[7] + *(v5 + 72) * v27, _s11HashRatchetVMa);
            v10 = v48;
            sub_26BF97000(v48, _s11HashRatchetVMa);
            v35 = v19[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_31;
            }

            v19[2] = v37;
          }

          v18 = v50 - 1;
          if (v50 == 1)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
      }

      else
      {
LABEL_25:
        v38 = v61;
        v39 = v46;
        *v46 = v61;
        v40 = v57;
        *(v39 + 3) = v56;
        *(v39 + 4) = v40;
        v41 = v59;
        *(v39 + 5) = v58;
        *(v39 + 6) = v41;
        *(v39 + 14) = v19;
        if ((v38 - 3) >= 0xFFFFFFFE)
        {
          v51 = v38 != 1;
          result = MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
          v42 = v54;
          v43 = v55;
          *(v39 + 8) = v52;
          *(v39 + 1) = v53;
          *(v39 + 4) = v42;
          *(v39 + 5) = v43;
          return result;
        }
      }

      __break(1u);
LABEL_33:
      result = sub_26C00AF8C();
      __break(1u);
    }
  }

  return result;
}

double static MLS.ReuseGuard.zero()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26C01F8F0;
  return result;
}

uint64_t sub_26BF94444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = sub_26BE098EC(a1, a2);
  v8 = v7;
  v9 = 0;
  v10 = a4 >> 62;
  while (2)
  {
    v40 = v6;
    v11 = 4;
    if (v9 > 4)
    {
      v11 = v9;
    }

    v42 = v11;
    v12 = v9;
    while (1)
    {
      if (v42 == v12)
      {
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
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v13 = *(a1 + v12);
      if (v10 > 1)
      {
        if (v10 != 2)
        {
          goto LABEL_72;
        }

        if (v12 < *(a3 + 16))
        {
          goto LABEL_58;
        }

        if (v12 >= *(a3 + 24))
        {
          goto LABEL_60;
        }

        v15 = sub_26C008E9C();
        if (!v15)
        {
          goto LABEL_74;
        }

        v16 = v15;
        v17 = sub_26C008ECC();
        v18 = v12 - v17;
        if (__OFSUB__(v12, v17))
        {
          goto LABEL_62;
        }

        goto LABEL_21;
      }

      if (v10)
      {
        if (v12 < a3 || v12 >= a3 >> 32)
        {
          goto LABEL_59;
        }

        v19 = sub_26C008E9C();
        if (!v19)
        {
          goto LABEL_73;
        }

        v16 = v19;
        v20 = sub_26C008ECC();
        v18 = v12 - v20;
        if (__OFSUB__(v12, v20))
        {
          goto LABEL_61;
        }

LABEL_21:
        v14 = *(v16 + v18);
        goto LABEL_22;
      }

      if (v12 >= BYTE6(a4))
      {
        goto LABEL_57;
      }

      v43 = a3;
      LOWORD(v44) = a4;
      BYTE2(v44) = BYTE2(a4);
      BYTE3(v44) = BYTE3(a4);
      BYTE4(v44) = BYTE4(a4);
      BYTE5(v44) = BYTE5(a4);
      v14 = *(&v43 + v12);
LABEL_22:
      v21 = v14 ^ v13;
      v22 = v8 >> 62;
      if (v8 >> 62 != 1)
      {
        break;
      }

      if (v12 >= v6 >> 32 || v9 < v6)
      {
        goto LABEL_55;
      }

      v23 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_26C008E9C() && __OFSUB__(v6, sub_26C008ECC()))
        {
          goto LABEL_63;
        }

        sub_26C008EEC();
        swift_allocObject();
        v24 = sub_26C008E7C();

        v23 = v24;
      }

      sub_26C008E6C();
      v25 = sub_26C008E9C();
      if (!v25)
      {
        goto LABEL_71;
      }

      v26 = v25;
      v27 = sub_26C008ECC();
      v28 = v12 - v27;
      if (__OFSUB__(v12, v27))
      {
        goto LABEL_56;
      }

      ++v12;
      *(v26 + v28) = v21;
      v8 = v23 | 0x4000000000000000;
      LODWORD(v10) = a4 >> 62;
      if (v12 == 4)
      {
        goto LABEL_53;
      }
    }

    if (!v22)
    {
      v43 = v6;
      LOWORD(v44) = v8;
      BYTE2(v44) = BYTE2(v8);
      BYTE3(v44) = BYTE3(v8);
      BYTE4(v44) = BYTE4(v8);
      BYTE5(v44) = BYTE5(v8);
      BYTE6(v44) = BYTE6(v8);
      if (v12 < BYTE6(v8))
      {
        v9 = v12 + 1;
        *(&v43 + v12) = v21;
        v6 = v43;
        v8 = v39 & 0xF00000000000000 | v44 | ((WORD2(v44) | (BYTE6(v44) << 16)) << 32);
        v39 = v8;
        goto LABEL_52;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    if (v22 != 2)
    {
      goto LABEL_70;
    }

    if (v12 < *(v6 + 16))
    {
      goto LABEL_64;
    }

    if (v12 >= *(v6 + 24))
    {
      goto LABEL_66;
    }

    v29 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_47;
    }

    v30 = *(v6 + 16);
    v31 = *(v6 + 24);
    if (!sub_26C008E9C())
    {
      if (!__OFSUB__(v31, v30))
      {
        goto LABEL_46;
      }

      goto LABEL_68;
    }

    if (__OFSUB__(v30, sub_26C008ECC()))
    {
      goto LABEL_69;
    }

    if (__OFSUB__(v31, v30))
    {
      goto LABEL_68;
    }

LABEL_46:
    sub_26C008EEC();
    swift_allocObject();
    v32 = sub_26C008E7C();

    v29 = v32;
    v6 = v40;
LABEL_47:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(v6 + 16);
      v34 = *(v6 + 24);
      sub_26C00904C();
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      *(v35 + 24) = v34;

      v6 = v35;
    }

    sub_26C008E6C();
    result = sub_26C008E9C();
    if (result)
    {
      v37 = result;
      v38 = sub_26C008ECC();
      if (__OFSUB__(v12, v38))
      {
        goto LABEL_67;
      }

      v9 = v12 + 1;
      *(v37 + v12 - v38) = v21;
      v8 = v29 | 0x8000000000000000;
LABEL_52:
      LODWORD(v10) = a4 >> 62;
      if (v12 == 3)
      {
LABEL_53:
        v43 = v6;
        v44 = v8;
        return sub_26C009C5C();
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BF949B8()
{
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

uint64_t sub_26BF94A40(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

unsigned __int8 *sub_26BF94A8C@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_26BF94AAC(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_26BF94AC4()
{
  sub_26C00B05C();
  sub_26C00B07C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BF94B78(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B07C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BF94C08(uint64_t a1, uint64_t a2)
{
  v2 = *a2 & ~*a1;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a1 + 4) < *(a2 + 4);
  }

  return v2 & 1;
}

BOOL sub_26BF94C38(uint64_t a1, uint64_t a2)
{
  v2 = *a1 & ~*a2;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a2 + 4) < *(a1 + 4);
  }

  return (v2 & 1) == 0;
}

BOOL sub_26BF94C6C(uint64_t a1, uint64_t a2)
{
  v2 = *a2 & ~*a1;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a1 + 4) < *(a2 + 4);
  }

  return (v2 & 1) == 0;
}

uint64_t sub_26BF94CA0(uint64_t a1, uint64_t a2)
{
  v2 = *a1 & ~*a2;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v2 = *(a2 + 4) < *(a1 + 4);
  }

  return v2 & 1;
}

void sub_26BF94CD0(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v138 = a3;
  v147 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = &v113 - v9;
  v131 = sub_26C009EDC();
  v132 = *(v131 - 8);
  v10 = MEMORY[0x28223BE20](v131);
  v129 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v133 = &v113 - v12;
  v137 = sub_26C00A4EC();
  v13 = *(v137 - 1);
  MEMORY[0x28223BE20](v137);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C009C8C();
  v17 = *(v16 - 8);
  v135 = v16;
  v136 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v124 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v113 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v130 = &v113 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v134 = &v113 - v25;
  MEMORY[0x28223BE20](v24);
  v140 = &v113 - v26;
  v123 = _s11HashRatchetVMa(0);
  v139 = *(v123 - 8);
  v27 = MEMORY[0x28223BE20](v123);
  v125 = (&v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v128 = &v113 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v113 - v31;
  v33 = *a2;
  v34 = a1;
  v36 = v5 + 14;
  v35 = v5[14];
  if (*(v35 + 16))
  {
    v37 = v5;
    v38 = v33;
    v39 = sub_26BEBB480(v34 & 1 | (v33 << 32));
    v33 = v38;
    v5 = v37;
    if (v40)
    {
      sub_26BF97060(*(v35 + 56) + *(v139 + 72) * v39, v32, _s11HashRatchetVMa);
      v41 = v32;
LABEL_4:
      sub_26BF97370(v41, v138, _s11HashRatchetVMa);
      return;
    }
  }

  *v142 = v33;
  v42 = v140;
  v43 = v33;
  sub_26BF280A8(v142, v140);
  if (!v4)
  {
    v119 = v43;
    v118 = v34;
    v44 = v5[2];
    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v44 >> 16))
    {
      v121 = v5;
      v45 = v5[5];

      sub_26C00A4DC();
      v122 = sub_26C00A49C();
      v47 = v46;
      v50 = *(v13 + 8);
      v49 = v13 + 8;
      v48 = v50;
      v50(v15, v137);
      if (v47 >> 60 == 15)
      {
        sub_26BE01654();
        swift_allocError();
        *v51 = 5;
        v51[112] = 1;
        swift_willThrow();
        (*(v136 + 8))(v42, v135);
LABEL_20:

        return;
      }

      v115 = v48;
      v120 = v45;
      v116 = v49;
      v117 = xmmword_26C00BBD0;
      v145 = xmmword_26C00BBD0;
      v146 = 0;
      v141 = bswap32(v44) >> 16;
      v52 = MEMORY[0x277D838B0];
      v143 = MEMORY[0x277D838B0];
      v144 = MEMORY[0x277CC9C18];
      *v142 = &v141;
      *&v142[8] = v142;
      __swift_project_boxed_opaque_existential_1(v142, MEMORY[0x277D838B0]);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v142);
      v53 = v47 >> 62;
      if ((v47 >> 62) > 1)
      {
        v54 = 0;
        if (v53 != 2)
        {
          goto LABEL_19;
        }

        v56 = *(v122 + 16);
        v55 = *(v122 + 24);
        v54 = v55 - v56;
        if (!__OFSUB__(v55, v56))
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      else if (!v53)
      {
        v54 = BYTE6(v47);
        goto LABEL_19;
      }

      if (__OFSUB__(HIDWORD(v122), v122))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v54 = HIDWORD(v122) - v122;
LABEL_19:
      v57 = v47;
      sub_26BF30414(v54);
      sub_26BE11228(v122, v47);
      LOBYTE(v141) = 0;
      v143 = v52;
      v144 = MEMORY[0x277CC9C18];
      *v142 = &v141;
      *&v142[8] = &v141 + 1;
      __swift_project_boxed_opaque_existential_1(v142, v52);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v142);
      v143 = MEMORY[0x277CC9318];
      v144 = MEMORY[0x277CC9300];
      *v142 = v117;
      v58 = __swift_project_boxed_opaque_existential_1(v142, MEMORY[0x277CC9318]);
      sub_26BE121A0(*v58, v58[1], &v145);
      v114 = 0;
      __swift_destroy_boxed_opaque_existential_1(v142);
      sub_26C009E6C();
      v59 = *(&v145 + 1) >> 62;
      if ((*(&v145 + 1) >> 62) > 1)
      {
        v60 = v121;
        if (v59 != 2)
        {
          goto LABEL_30;
        }

        v61 = *(v145 + 24);
      }

      else
      {
        v60 = v121;
        if (!v59)
        {
          goto LABEL_30;
        }

        v61 = v145 >> 32;
      }

      if (v61 < 0)
      {
        __break(1u);
      }

LABEL_30:
      v62 = sub_26C00909C();
      v64 = v63;
      v65 = v133;
      sub_26C009EBC();
      sub_26BE00258(v62, v64);
      sub_26BE136AC(v122, v57);
      v67 = (v132 + 1);
      v66 = v132[1];
      v66(v65, v131);
      sub_26BE00258(v145, *(&v145 + 1));

      v68 = *(v60 + 2);
      if ((v68 & 0x8000000000000000) == 0)
      {
        v133 = v66;
        if (!(v68 >> 16))
        {

          sub_26C00A4DC();
          v69 = sub_26C00A49C();
          v71 = v70;
          v115(v15, v137);
          if (v71 >> 60 == 15)
          {
            sub_26BE01654();
            swift_allocError();
            *v72 = 5;
            v72[112] = 1;
            swift_willThrow();
            v73 = v135;
            v74 = *(v136 + 8);
            v74(v134, v135);
            v74(v140, v73);
            goto LABEL_20;
          }

          v145 = v117;
          v146 = 0;
          v141 = bswap32(v68) >> 16;
          v143 = MEMORY[0x277D838B0];
          v144 = MEMORY[0x277CC9C18];
          *v142 = &v141;
          *&v142[8] = v142;
          __swift_project_boxed_opaque_existential_1(v142, MEMORY[0x277D838B0]);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(v142);
          v75 = v71 >> 62;
          v76 = v136;
          if ((v71 >> 62) > 1)
          {
            v77 = 0;
            if (v75 != 2 || (v79 = *(v69 + 16), v78 = *(v69 + 24), v77 = v78 - v79, !__OFSUB__(v78, v79)))
            {
LABEL_43:
              v132 = v67;
              v80 = v114;
              sub_26BF30414(v77);
              if (v80)
              {
                sub_26BE136AC(v69, v71);
                v81 = *(v76 + 8);
                v82 = v135;
                v81(v134, v135);
                v81(v140, v82);
                sub_26BE00258(v145, *(&v145 + 1));
                goto LABEL_20;
              }

              sub_26BE11228(v69, v71);
              LOBYTE(v141) = 0;
              v143 = MEMORY[0x277D838B0];
              v144 = MEMORY[0x277CC9C18];
              *v142 = &v141;
              *&v142[8] = &v141 + 1;
              __swift_project_boxed_opaque_existential_1(v142, MEMORY[0x277D838B0]);
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(v142);
              v143 = MEMORY[0x277CC9318];
              v144 = MEMORY[0x277CC9300];
              *v142 = v117;
              v83 = __swift_project_boxed_opaque_existential_1(v142, MEMORY[0x277CC9318]);
              sub_26BE121A0(*v83, v83[1], &v145);
              __swift_destroy_boxed_opaque_existential_1(v142);
              sub_26C009E6C();
              v84 = *(&v145 + 1) >> 62;
              v113 = v36;
              if ((*(&v145 + 1) >> 62) > 1)
              {
                if (v84 != 2)
                {
                  goto LABEL_53;
                }

                v85 = *(v145 + 24);
              }

              else
              {
                if (!v84)
                {
                  goto LABEL_53;
                }

                v85 = v145 >> 32;
              }

              if (v85 < 0)
              {
                __break(1u);
              }

LABEL_53:
              v86 = sub_26C00909C();
              v88 = v87;
              v89 = v129;
              sub_26C009EBC();
              sub_26BE00258(v86, v88);
              sub_26BE136AC(v69, v71);
              (v133)(v89, v131);
              sub_26BE00258(v145, *(&v145 + 1));

              v90 = *v60;
              v92 = v135;
              v91 = v136;
              v93 = v136 + 16;
              v94 = v127;
              v137 = *(v136 + 16);
              v137(v127, v134, v135);
              v95 = v128;
              *v128 = v90;
              if ((v90 - 3) >= 0xFFFFFFFE)
              {
                LOBYTE(v145) = v90 != 1;
                MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
                v96 = v143;
                v97 = v144;
                v98 = v123;
                v99 = &v95[*(v123 + 32)];
                *v99 = v142[0];
                *(v99 + 8) = *&v142[8];
                *(v99 + 3) = v96;
                *(v99 + 4) = v97;
                v100 = v137;
                v137(&v95[v98[5]], v94, v92);
                *&v95[v98[6]] = 0;
                v101 = sub_26C0050B4(MEMORY[0x277D84F90]);
                v133 = *(v91 + 8);
                (v133)(v94, v92);
                *&v95[v98[7]] = v101;
                v102 = v126;
                sub_26BF97060(v95, v126, _s11HashRatchetVMa);
                v103 = *(v139 + 56);
                v139 += 56;
                v132 = v103;
                (v103)(v102, 0, 1, v98);
                v131 = v119 << 32;
                sub_26BE4D678(v102, v119 << 32);
                v104 = v93;
                v105 = *v121;
                v106 = v124;
                v136 = v104;
                v100(v124, v130, v92);
                v107 = v125;
                *v125 = v105;
                if ((v105 - 3) >= 0xFFFFFFFE)
                {
                  LOBYTE(v145) = v105 != 1;
                  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
                  v108 = v143;
                  v109 = v144;
                  v110 = v107 + v98[8];
                  *v110 = v142[0];
                  *(v110 + 8) = *&v142[8];
                  *(v110 + 24) = v108;
                  *(v110 + 32) = v109;
                  v137((v107 + v98[5]), v106, v92);
                  *(v107 + v98[6]) = 0;
                  v111 = sub_26C0050B4(MEMORY[0x277D84F90]);
                  v112 = v133;
                  (v133)(v106, v92);
                  *(v107 + v98[7]) = v111;
                  sub_26BF97060(v107, v102, _s11HashRatchetVMa);
                  (v132)(v102, 0, 1, v98);
                  sub_26BE4D678(v102, v131 | 1);
                  v112(v130, v92);
                  v112(v134, v92);
                  v112(v140, v92);
                  if (v118)
                  {
                    sub_26BF97000(v128, _s11HashRatchetVMa);
                    v41 = v107;
                  }

                  else
                  {
                    sub_26BF97000(v107, _s11HashRatchetVMa);
                    v41 = v128;
                  }

                  goto LABEL_4;
                }

LABEL_65:
                __break(1u);
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            __break(1u);
          }

          else if (!v75)
          {
            v77 = BYTE6(v71);
            goto LABEL_43;
          }

          if (!__OFSUB__(HIDWORD(v69), v69))
          {
            v77 = HIDWORD(v69) - v69;
            goto LABEL_43;
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        goto LABEL_61;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_60;
  }
}

void sub_26BF95BB0(unsigned __int8 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((v3 - 2) < 2)
  {
    v7 = *a2;
    v4 = &v7;
    v5 = 0;
LABEL_5:
    sub_26BF94CD0(v5, v4, a3);
    return;
  }

  if (v3 == 1)
  {
    v8 = *a2;
    v4 = &v8;
    v5 = 1;
    goto LABEL_5;
  }

  sub_26BE01654();
  swift_allocError();
  *v6 = v3;
  v6[112] = 12;
  swift_willThrow();
}

void MLS.GroupKeySource.get(contentType:sender:generation:reuseGuard:)(unsigned __int8 *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v71 = a3;
  v69 = a5;
  v10 = sub_26C009C8C();
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v57 - v14;
  v64 = type metadata accessor for MLS.KeyAndNonce(0);
  v70 = *(v64 - 8);
  v15 = MEMORY[0x28223BE20](v64);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v57 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v22 = _s11HashRatchetVMa(0);
  v62 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = *a2;
  v27 = v6;
  v28 = a4[1];
  v63 = *a4;
  v74 = v25;
  v73 = v26;
  v29 = v72;
  sub_26BF95BB0(&v74, &v73, v24);
  if (!v29)
  {
    v59 = v27;
    v60 = v21;
    LODWORD(v72) = v25;
    v57 = v26;
    v58 = v28;
    v30 = *(v22 + 28);
    v31 = *&v24[v30];
    v32 = v71;
    if (*(v31 + 16))
    {
      v33 = v22;
      v34 = sub_26BEBB208(v71);
      if (v35)
      {
        v36 = v60;
        v37 = v70;
LABEL_5:
        sub_26BF97060(*(v31 + 56) + *(v37 + 72) * v34, v36, type metadata accessor for MLS.KeyAndNonce);
        v38 = v69;
        sub_26BF97370(v36, v69, type metadata accessor for MLS.KeyAndNonce);
        v39 = v72;
        v40 = v67;
        v41 = v68;
        if ((v72 - 1) < 3)
        {
          v42 = qword_26C020E28[(v72 - 1)];
          v43 = v65;
          sub_26BF97060(v24, v65, _s11HashRatchetVMa);
          (*(v62 + 56))(v43, 0, 1, v33);
          v44 = sub_26BE4D678(v43, v42 | (v57 << 32));
          v45 = *(v64 + 20);
          MEMORY[0x28223BE20](v44);
          v46 = v58;
          *(&v57 - 2) = v63;
          *(&v57 - 1) = v46;
          v47 = v66;
          sub_26C009C3C();
          sub_26BF97000(v24, _s11HashRatchetVMa);
          (*(v41 + 40))(&v38[v45], v47, v40);
          return;
        }

        sub_26BE01654();
        swift_allocError();
        *v53 = v39;
        v53[112] = 12;
        swift_willThrow();
        sub_26BF97000(v24, _s11HashRatchetVMa);
        v54 = type metadata accessor for MLS.KeyAndNonce;
        v55 = v38;
        goto LABEL_22;
      }
    }

    v48 = *(v22 + 24);
    v49 = *&v24[v48];
    if (v49 <= v32)
    {
      v33 = v22;
      v37 = v70;
      do
      {
        sub_26BFF97B0(v17);
        sub_26BF97000(v17, type metadata accessor for MLS.KeyAndNonce);
      }

      while (*&v24[v48] <= v32);
      v31 = *&v24[v30];
      if (*(v31 + 16))
      {
        v34 = sub_26BEBB208(v32);
        if (v52)
        {
          v36 = v61;
          goto LABEL_5;
        }
      }

      sub_26BE01654();
      swift_allocError();
      if (v24[*(v33 + 32)])
      {
        v56 = 2;
      }

      else
      {
        v56 = 1;
      }

      *v50 = v56;
      v51 = 11;
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v50 = v32;
      v51 = 13;
      LODWORD(v32) = v49;
    }

    *(v50 + 4) = v32;
    *(v50 + 112) = v51;
    swift_willThrow();
    v54 = _s11HashRatchetVMa;
    v55 = v24;
LABEL_22:
    sub_26BF97000(v55, v54);
  }
}

void MLS.GroupKeySource.erase(contentType:sender:generation:)(unsigned __int8 *a1, unsigned int *a2, unsigned int a3)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E700, &qword_26C011368);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20[-v9];
  v11 = _s11HashRatchetVMa(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = *a2;
  v24 = v15;
  v23 = v16;
  v17 = v22;
  sub_26BF95BB0(&v24, &v23, v14);
  if (!v17)
  {
    v22 = 0;
    sub_26BF928AC(v21, v10);
    sub_26BE2E258(v10, &qword_28045E700, &qword_26C011368);
    if ((v15 - 1) >= 3)
    {
      sub_26BE01654();
      swift_allocError();
      *v19 = v15;
      v19[112] = 12;
      swift_willThrow();
    }

    else
    {
      v18 = qword_26C020E28[(v15 - 1)];
      sub_26BF97060(v14, v7, _s11HashRatchetVMa);
      (*(v12 + 56))(v7, 0, 1, v11);
      sub_26BE4D678(v7, v18 | (v16 << 32));
    }

    sub_26BF97000(v14, _s11HashRatchetVMa);
  }
}

uint64_t sub_26BF964AC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD97C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BF9664C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BF96518(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD97D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C00AEEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
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
      v7 = sub_26C00A74C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BE580E0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BF9664C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
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
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BF967E0(v7, v8, a1, v4);
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
    return sub_26BF96744(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BF96744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 8 * a3);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *v11;
      result = v8 ^ v12;
      v13 = v12 & (v8 ^ 1);
      if ((result & 1) == 0)
      {
        v13 = v9 < *(v11 + 1);
      }

      if (v13 != 1)
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 1) = *v11;
      *v11 = v8;
      *(v11 + 1) = v9;
      v11 -= 8;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BF967E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_26BFD9590(v10);
      v10 = result;
    }

    v93 = *(v10 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = *&v10[16 * v93];
        v95 = *&v10[16 * v93 + 24];
        sub_26BF96DC4((*a3 + 8 * v94), (*a3 + 8 * *&v10[16 * v93 + 16]), (*a3 + 8 * v95), v5);
        if (v4)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v93 - 2 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v96 = &v10[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        result = sub_26BFD9504(v93 - 1);
        v93 = *(v10 + 2);
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = (*a3 + 8 * v9);
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = 8 * v11;
      v16 = (*a3 + 8 * v11);
      v17 = *v16;
      v18 = v13 ^ v17;
      v19 = (v13 ^ 1) & v17;
      if ((v18 & 1) == 0)
      {
        v19 = v14 < *(v16 + 1);
      }

      v20 = v11 + 2;
      v21 = (v16 + 20);
      while (v7 != v20)
      {
        v22 = *(v21 - 4);
        v24 = *v21;
        v21 += 2;
        v23 = v24;
        v25 = v22 ^ v13;
        v26 = v13 & (v22 ^ 1);
        v27 = v24 < v14;
        if (v25)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        ++v20;
        v14 = v23;
        v13 = v22;
        if (v19 != v28)
        {
          v9 = v20 - 1;
          if (!v19)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v9 = v7;
      if (!v19)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v9 < v11)
      {
        goto LABEL_124;
      }

      if (v11 < v9)
      {
        v29 = 0;
        v30 = 8 * v9;
        v31 = v11;
        do
        {
          if (v31 != v9 + v29 - 1)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v32 = (v36 + v15);
            v33 = v36 + v30;
            v34 = *v32;
            v35 = *(v32 + 1);
            *v32 = *(v33 - 8);
            *(v33 - 8) = v34;
            *(v33 - 4) = v35;
          }

          ++v31;
          --v29;
          v30 -= 8;
          v15 += 8;
        }

        while (v31 < v9 + v29);
        v7 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_123;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_125;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v48 = *(v10 + 3);
    v49 = v5 + 1;
    if (v5 >= v48 >> 1)
    {
      result = sub_26BEEC164((v48 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v49;
    v50 = &v10[16 * v5];
    *(v50 + 4) = v11;
    *(v50 + 5) = v9;
    v51 = *v98;
    if (!*v98)
    {
      goto LABEL_132;
    }

    if (v5)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v10 + 4);
          v54 = *(v10 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_64:
          if (v56)
          {
            goto LABEL_111;
          }

          v69 = &v10[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_114;
          }

          v75 = &v10[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_118;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v79 = &v10[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_78:
        if (v74)
        {
          goto LABEL_113;
        }

        v82 = &v10[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_116;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_85:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v91 = *&v10[16 * v90 + 32];
        v5 = *&v10[16 * v52 + 40];
        sub_26BF96DC4((*a3 + 8 * v91), (*a3 + 8 * *&v10[16 * v52 + 32]), (*a3 + 8 * v5), v51);
        if (v4)
        {
        }

        if (v5 < v91)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BFD9590(v10);
        }

        if (v90 >= *(v10 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v10[16 * v90];
        *(v92 + 4) = v91;
        *(v92 + 5) = v5;
        result = sub_26BFD9504(v52);
        v49 = *(v10 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v10[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = &v10[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v68 >= v60)
      {
        v86 = &v10[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_119;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_95;
    }
  }

  v37 = *a3;
  v38 = *a3 + 8 * v9 - 8;
  v39 = v11 - v9;
LABEL_35:
  v40 = (v37 + 8 * v9);
  v41 = *v40;
  v42 = *(v40 + 1);
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = *v44;
    result = v41 ^ v45;
    v46 = v45 & (v41 ^ 1);
    if ((result & 1) == 0)
    {
      v46 = v42 < *(v44 + 1);
    }

    if (v46 != 1)
    {
LABEL_34:
      ++v9;
      v38 += 8;
      --v39;
      if (v9 != v7)
      {
        goto LABEL_35;
      }

      v9 = v7;
      goto LABEL_44;
    }

    if (!v37)
    {
      break;
    }

    *(v44 + 1) = *v44;
    *v44 = v41;
    *(v44 + 1) = v42;
    v44 -= 8;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t sub_26BF96DC4(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4 & ~*v6;
      if (((*v6 ^ *v4) & 1) == 0)
      {
        v17 = *(v6 + 1) < *(v4 + 1);
      }

      if (v17)
      {
        break;
      }

      v15 = v4;
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

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_26:
    v18 = v6 - 8;
    v5 -= 8;
    do
    {
      v19 = v5 + 8;
      v20 = *(v14 - 8);
      v21 = *(v6 - 8);
      v22 = v20 ^ v21;
      v23 = v21 & ~v20;
      if ((v22 & 1) == 0)
      {
        v23 = *(v14 - 1) < *(v6 - 1);
      }

      if (v23)
      {
        if (v19 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 8, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v24 = v14 - 8;
      if (v19 != v14)
      {
        *v5 = *v24;
      }

      v5 -= 8;
      v14 -= 8;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_39:
  v25 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v25 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v25 >> 3));
  }

  return 1;
}

uint64_t sub_26BF97000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF97060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BF97120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BF97168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14GroupKeySourceV13DictionaryKeyVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14GroupKeySourceV13DictionaryKeyVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26BF97268()
{
  result = qword_28045FCD0;
  if (!qword_28045FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCD0);
  }

  return result;
}

uint64_t sub_26BF97370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF973D8(uint64_t a1, uint64_t a2)
{
  v4 = _s11HashRatchetVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BF97450()
{
  result = qword_28045FCD8;
  if (!qword_28045FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FCD8);
  }

  return result;
}

void *sub_26BF974A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26C00914C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_26BE00258(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_26BF2E840(v10, 0);
      v14 = sub_26C00902C();
      sub_26BE00258(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t MLS.PublicMessage.unprotect(ciphersuiteID:membershipKey:context:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v92 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v63[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v63[-v10];
  v11 = sub_26C009C8C();
  v68 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v63[-v15];
  v17 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v22 = *v92;
  v23 = a3[3];
  v89 = a3[2];
  v90 = v23;
  v91 = *(a3 + 8);
  v24 = a3[1];
  v87 = *a3;
  v88 = v24;
  if (*(v4 + 28))
  {
    goto LABEL_2;
  }

  v64 = v22;
  v47 = v69;
  v65 = v21;
  v66 = &v63[-v20];
  v92 = v13;
  v48 = type metadata accessor for MLS.PublicMessage(0);
  sub_26BE2E1F0(v4 + *(v48 + 24), v16, &qword_28045E4E8, &qword_26C012550);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v49 = &qword_28045E4E8;
    v50 = &qword_26C012550;
    v51 = v16;
LABEL_7:
    sub_26BE2E258(v51, v49, v50);
    sub_26BE01654();
    swift_allocError();
    *v56 = 4;
    *(v56 + 8) = 0u;
    *(v56 + 24) = 0u;
    *(v56 + 40) = 0u;
    *(v56 + 56) = 0u;
    *(v56 + 72) = 0u;
    *(v56 + 88) = 0u;
    *(v56 + 104) = 0;
    *(v56 + 112) = 23;
    return swift_willThrow();
  }

  v52 = v66;
  sub_26BF9E3A0(v16, v66, type metadata accessor for MLS.Cryptography.MACTag);
  v53 = v67;
  sub_26BE2E1F0(v47, v67, &qword_28045E708, &unk_26C011370);
  v54 = v68;
  v55 = v11;
  if ((*(v68 + 48))(v53, 1, v11) == 1)
  {
    sub_26BF9E7A4(v52, type metadata accessor for MLS.Cryptography.MACTag);
    v49 = &qword_28045E708;
    v50 = &unk_26C011370;
    v51 = v53;
    goto LABEL_7;
  }

  v57 = v92;
  (*(v54 + 32))(v92, v53, v11);
  v72[0] = v64;
  v75 = v89;
  v76 = v90;
  *&v77 = v91;
  v73 = v87;
  v74 = v88;
  v58 = v65;
  v59 = v71;
  sub_26BF9D7A8(v72, v57, &v73, v65);
  if (v59)
  {
    (*(v54 + 8))(v57, v11);
    v60 = v66;
  }

  else
  {
    v61 = v66;
    if (MEMORY[0x26D698700](v58, v66))
    {
      sub_26BF9E7A4(v58, type metadata accessor for MLS.Cryptography.MACTag);
      (*(v54 + 8))(v57, v55);
      sub_26BF9E7A4(v66, type metadata accessor for MLS.Cryptography.MACTag);
LABEL_2:
      v25 = v4[13];
      v85 = v4[12];
      v86[0] = v25;
      *(v86 + 9) = *(v4 + 217);
      v26 = v4[9];
      v81 = v4[8];
      v82 = v26;
      v27 = v4[11];
      v83 = v4[10];
      v84 = v27;
      v28 = v4[5];
      v77 = v4[4];
      v78 = v28;
      v29 = v4[7];
      v79 = v4[6];
      v80 = v29;
      v30 = v4[1];
      v73 = *v4;
      v74 = v30;
      v31 = v4[3];
      v75 = v4[2];
      v76 = v31;
      v32 = type metadata accessor for MLS.PublicMessage(0);
      v33 = v70;
      sub_26BF9E408(v4 + *(v32 + 20), v70, type metadata accessor for MLS.FramedContentAuthData);
      v34 = type metadata accessor for MLS.FramedContentAuthData(0);
      v35 = *(*(v34 - 8) + 56);
      v35(v33, 0, 1, v34);
      v36 = *(type metadata accessor for MLS.AuthenticatedContent(0) + 24);
      v35((a4 + v36), 1, 1, v34);
      v37 = v83;
      *(a4 + 184) = v84;
      v38 = v86[0];
      *(a4 + 200) = v85;
      *(a4 + 216) = v38;
      *(a4 + 225) = *(v86 + 9);
      v39 = v79;
      *(a4 + 120) = v80;
      v40 = v82;
      *(a4 + 136) = v81;
      *(a4 + 152) = v40;
      *(a4 + 168) = v37;
      v41 = v75;
      *(a4 + 56) = v76;
      v42 = v78;
      *(a4 + 72) = v77;
      *(a4 + 88) = v42;
      *(a4 + 104) = v39;
      v43 = v74;
      *(a4 + 8) = v73;
      *(a4 + 24) = v43;
      *a4 = 1;
      *(a4 + 40) = v41;
      sub_26BE2FB24(&v73, v72);
      sub_26BE7170C(v33, a4 + v36, &qword_28045E4E0, &qword_26C015A80);
      v44 = type metadata accessor for MLS.ValidatedContent(0);
      v45 = a4 + *(v44 + 20);
      *v45 = 0;
      *(v45 + 4) = 1;
      return (*(*(v44 - 8) + 56))(a4, 0, 1, v44);
    }

    sub_26BE01654();
    swift_allocError();
    *v62 = 4;
    *(v62 + 8) = 0u;
    *(v62 + 24) = 0u;
    *(v62 + 40) = 0u;
    *(v62 + 56) = 0u;
    *(v62 + 72) = 0u;
    *(v62 + 88) = 0u;
    *(v62 + 104) = 0;
    *(v62 + 112) = 23;
    swift_willThrow();
    sub_26BF9E7A4(v58, type metadata accessor for MLS.Cryptography.MACTag);
    (*(v54 + 8))(v57, v55);
    v60 = v61;
  }

  return sub_26BF9E7A4(v60, type metadata accessor for MLS.Cryptography.MACTag);
}

void MLS.PrivateMessage.unprotect(ciphersuiteID:keys:senderDataSecret:)(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v266 = a3;
  v248 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v209 - v8;
  v10 = type metadata accessor for MLS.AuthenticatedContent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FCE0, &qword_26C020E48);
  MEMORY[0x28223BE20](v238);
  v14 = (&v209 - v13);
  v15 = type metadata accessor for MLS.FramedContentAuthData(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v237 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  MEMORY[0x28223BE20](v18 - 8);
  v241 = &v209 - v19;
  v244 = _s11HashRatchetVMa(0);
  v240 = *(v244 - 1);
  MEMORY[0x28223BE20](v244);
  v246 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_26C009F3C();
  v253 = *(v252 - 8);
  v21 = MEMORY[0x28223BE20](v252);
  v239 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v254 = &v209 - v23;
  v264 = sub_26C009C8C();
  v263 = *(v264 - 8);
  v24 = MEMORY[0x28223BE20](v264);
  v243 = &v209 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v255 = &v209 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v256 = &v209 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v262 = &v209 - v31;
  MEMORY[0x28223BE20](v30);
  v283 = &v209 - v32;
  v257 = type metadata accessor for MLS.KeyAndNonce(0);
  v33 = MEMORY[0x28223BE20](v257);
  v242 = &v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v209 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = MEMORY[0x28223BE20](&v209 - v38);
  v40 = MEMORY[0x28223BE20](v39);
  v41 = MEMORY[0x28223BE20](v40);
  v46 = *a1;
  if ((v46 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
    goto LABEL_43;
  }

  v232 = v41;
  v235 = v37;
  v233 = v45;
  v236 = v44;
  v231 = v14;
  v226 = v16;
  v227 = v15;
  v234 = v43;
  v228 = v10;
  v229 = v12;
  v230 = v9;
  v245 = a4;
  v261 = &v209 - v42;
  v47 = *(v4 + 8);
  *&v260 = *v4;
  *(&v260 + 1) = v47;
  v258 = *(v4 + 16);
  v259 = *(v4 + 24);
  v48 = *(v4 + 40);
  v247 = *(v4 + 32);
  v249 = v48;
  v49 = *(v4 + 56);
  v251 = *(v4 + 48);
  v250 = v49;
  v51 = *(v4 + 64);
  v50 = *(v4 + 72);
  v52 = v46 != 1;
  LOBYTE(v281) = v46 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v53 = v267;
  v54 = *(&v267 + 1);
  v55 = v268;
  v56 = v269;
  v57 = v265;
  MLS.Cryptography.Ciphersuite.deriveSenderDataKey(secret:ciphertext:)(v266, v51, v50, v283);
  if (v57)
  {
LABEL_4:

    return;
  }

  LODWORD(v265) = v52;
  LOBYTE(v267) = v53;
  *(&v267 + 1) = v54;
  v268 = v55;
  *&v269 = v56;
  v58 = v262;
  MLS.Cryptography.Ciphersuite.deriveSenderDataNonce(secret:ciphertext:)(v266, v51, v50, v262);
  v59 = v51;
  v225 = v50;

  v60 = *(v263 + 32);
  v61 = v261;
  v62 = v264;
  v60(v261, v283, v264);
  v63 = *(v257 + 20);
  v60(v61 + v63, v58, v62);
  v266 = xmmword_26C00BBD0;
  v281 = xmmword_26C00BBD0;
  v282 = 0;
  v64 = v260;
  v267 = v260;
  v65 = *(&v260 + 1);
  *&v268 = v258;
  BYTE8(v268) = v259;
  sub_26BE00608(v260, *(&v260 + 1));
  sub_26BE00608(v64, v65);
  sub_26BE00608(v64, v65);
  sub_26BE8C044(&v267);
  v224 = 0;
  v66 = v281;
  v67 = *(&v281 + 1) >> 62;
  v219 = v59;
  v223 = v63;
  if ((*(&v281 + 1) >> 62) > 1)
  {
    v68 = v255;
    v69 = v265;
    if (v67 != 2)
    {
      goto LABEL_13;
    }

    v70 = *(v281 + 24);
  }

  else
  {
    v68 = v255;
    v69 = v265;
    if (!v67)
    {
      goto LABEL_13;
    }

    v70 = v281 >> 32;
  }

  if (v70 < 0)
  {
    __break(1u);
  }

LABEL_13:
  v262 = sub_26C00909C();
  v265 = v71;
  sub_26BE00258(v66, *(&v66 + 1));
  LOBYTE(v281) = v69;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v222 = v267;
  v72 = *(&v267 + 1);
  v220 = *(&v268 + 1);
  v221 = v268;
  v73 = v269;
  v74 = v263 + 16;
  v217 = *(v263 + 16);
  v217(v68, v261, v264);
  v75 = sub_26BF9E700(&qword_28045E8B8, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  v76 = v222;
  v216 = v75;
  sub_26C009C5C();
  LOBYTE(v267) = v76;
  v218 = v72;
  *(&v267 + 1) = v72;
  *&v268 = v221;
  *(&v268 + 1) = v220;
  v283 = v73;
  *&v269 = v73;
  v77 = sub_26C009C7C();
  v78 = sub_26C009C7C();
  v79 = v224;
  sub_26BE0DDF0(v77, v78);
  if (v79)
  {
    sub_26BE00258(v64, v65);
    sub_26BE00258(v64, v65);
    sub_26BE00258(v64, v65);
    sub_26BE00258(v262, v265);
    (*(v263 + 8))(v256, v264);
    sub_26BF9E7A4(v261, type metadata accessor for MLS.KeyAndNonce);
    goto LABEL_4;
  }

  v224 = v74;
  v215 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  sub_26C009E9C();
  *&v267 = v251;
  *(&v267 + 1) = v250;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  v81 = v261;
  v250 = v80;
  sub_26C009C3C();
  v251 = 0;
  v82 = sub_26BE12418(v281);
  v84 = v83;

  *&v281 = v262;
  *(&v281 + 1) = v265;
  v85 = sub_26BE016A8();
  v86 = v256;
  v87 = v251;
  v88 = sub_26C009F1C();
  if (v87)
  {
    sub_26BE00258(v64, v65);
    sub_26BE00258(v64, v65);
    sub_26BE00258(v64, v65);
    sub_26BE00258(v82, v84);

    (*(v253 + 8))(v254, v252);
    (*(v263 + 8))(v86, v264);
    sub_26BF9E7A4(v81, type metadata accessor for MLS.KeyAndNonce);
    sub_26BE00258(v262, v265);
    return;
  }

  v214 = v85;
  v223 = v88;
  v251 = v89;
  sub_26BE00258(v82, v84);
  v90 = v253 + 8;
  v91 = v254;
  v254 = *(v253 + 8);
  (v254)(v91, v252);
  v92 = *(v263 + 8);
  (v92)(v86, v264);
  v93 = v251;
  v94 = 0;
  v95 = v251 >> 62;
  if ((v251 >> 62) > 1)
  {
    v96 = v249;
    v97 = v223;
    if (v95 == 2)
    {
      v94 = *(v223 + 16);
      goto LABEL_22;
    }
  }

  else
  {
    v96 = v249;
    v97 = v223;
    if (v95)
    {
      v94 = v223;
LABEL_22:
      sub_26BE00608(v97, v251);
      v93 = v251;
    }
  }

  *&v267 = v97;
  *(&v267 + 1) = v93;
  *&v268 = v94;
  v98 = sub_26BEE6028();
  if ((v98 & 0x100000000) != 0 || (v99 = v98, v100 = sub_26BEE6028(), (v100 & 0x100000000) != 0))
  {
    v105 = 1;
LABEL_30:
    sub_26BE01600();
    swift_allocError();
    *v106 = v105;
    swift_willThrow();
    v107 = v260;
    sub_26BE00258(v260, *(&v260 + 1));
    sub_26BE00258(v107, *(&v107 + 1));
    *&v281 = &_s10SenderDataVN;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FCE8, &qword_26C020E60);
    v108 = sub_26C00A4FC();
    v109 = v97;
    v110 = v97;
    v111 = v251;
    sub_26BE826C4(v108, v112, v109, v251);

    swift_willThrow();
    sub_26BE00258(v107, *(&v107 + 1));
    sub_26BE00258(v262, v265);
    sub_26BE00258(v110, v111);

    v114 = *(&v267 + 1);
    v113 = v267;
LABEL_31:
    sub_26BE00258(v113, v114);
    sub_26BF9E7A4(v261, type metadata accessor for MLS.KeyAndNonce);
    return;
  }

  v213 = v92;
  v101 = v268 + 4;
  if (__OFADD__(v268, 4))
  {
    __break(1u);
    goto LABEL_72;
  }

  v92 = *(&v267 + 1);
  v102 = v267;
  v103 = *(&v267 + 1) >> 62;
  if ((*(&v267 + 1) >> 62) > 1)
  {
    if (v103 != 2)
    {
      if (v101 <= 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    v104 = *(v267 + 24);
  }

  else if (v103)
  {
    v104 = v267 >> 32;
  }

  else
  {
    v104 = BYTE14(v267);
  }

  if (v104 < v101)
  {
LABEL_40:
    v105 = 5;
    goto LABEL_30;
  }

LABEL_36:
  v256 = v99;
  v212 = v100;
  v115 = &v275;
  v253 = v90;
  if (v101 < v268)
  {
    __break(1u);
    goto LABEL_76;
  }

  v116 = sub_26C00909C();
  v118 = sub_26BF974A8(v116, v117);
  v119 = sub_26BE12418(v118);
  v121 = v120;

  sub_26BE00258(v102, v92);
  if (*(v248 + 52) <= v256)
  {
    v123 = v260;
    sub_26BE00258(v260, *(&v260 + 1));
    sub_26BE00258(v262, v265);
    sub_26BE00258(v119, v121);
    sub_26BE00258(v97, v251);

    sub_26BE00258(v123, *(&v123 + 1));
    sub_26BE00258(v123, *(&v123 + 1));
    sub_26BF9E7A4(v261, type metadata accessor for MLS.KeyAndNonce);
    v124 = type metadata accessor for MLS.ValidatedContent(0);
    (*(*(v124 - 8) + 56))(v245, 1, 1, v124);
    return;
  }

  v210 = v119;
  v211 = v121;
  v281 = v266;
  v282 = 0;
  v267 = v260;
  *&v268 = v258;
  BYTE8(v268) = v259;
  v122 = v247;
  *&v269 = v247;
  *(&v269 + 1) = v96;
  sub_26BE00608(v247, v96);
  sub_26BE00608(v122, v96);
  sub_26BFAF280(&v267);
  v4 = v87;
LABEL_43:
  v125 = v281;
  v126 = *(&v281 + 1) >> 62;
  if ((*(&v281 + 1) >> 62) > 1)
  {
    if (v126 != 2)
    {
      goto LABEL_51;
    }

    v127 = *(v281 + 24);
  }

  else
  {
    if (!v126)
    {
      goto LABEL_51;
    }

    v127 = v281 >> 32;
  }

  v128 = v246;
  v129 = v211;
  v130 = v210;
  v131 = v259;
  if ((v127 & 0x8000000000000000) == 0)
  {
    goto LABEL_52;
  }

  __break(1u);
LABEL_51:
  v128 = v246;
  v129 = v211;
  v130 = v210;
  v131 = v259;
LABEL_52:
  v132 = sub_26C00909C();
  *&v266 = v133;
  sub_26BE00258(v125, *(&v125 + 1));
  LOBYTE(v281) = v131;
  LODWORD(v267) = v256;
  sub_26BE00608(v130, v129);
  sub_26BF95BB0(&v281, &v267, v128);
  if (v4)
  {
    v134 = v247;
    v135 = v249;
    sub_26BE00258(v247, v249);
    v136 = v260;
    sub_26BE00258(v260, *(&v260 + 1));
    sub_26BE00258(v136, *(&v136 + 1));
    sub_26BE00258(v262, v265);
    sub_26BE00258(v223, v251);
    sub_26BE00258(v136, *(&v136 + 1));
    sub_26BE00258(v134, v135);
    sub_26BE00258(v132, v266);
    sub_26BE00258(v130, v129);

    v113 = v130;
    v114 = v129;
    goto LABEL_31;
  }

  v209 = v132;
  v137 = v244[7];
  v138 = *(v128 + v137);
  if (!*(v138 + 16) || (v139 = sub_26BEBB208(v212), (v140 & 1) == 0))
  {
    v154 = v244[6];
    v155 = *(v246 + v154);
    if (v155 <= v212)
    {
      v162 = v246;
      v163 = v242;
      do
      {
        sub_26BFF97B0(v163);
        sub_26BF9E7A4(v163, type metadata accessor for MLS.KeyAndNonce);
      }

      while (*(v162 + v154) <= v212);
      v138 = *(v162 + v137);
      if (*(v138 + 16))
      {
        v139 = sub_26BEBB208(v212);
        if (v164)
        {
          goto LABEL_57;
        }
      }

      v165 = v247;
      v166 = v249;
      sub_26BE00258(v247, v249);
      v167 = v260;
      sub_26BE00258(v260, *(&v260 + 1));
      sub_26BE01654();
      swift_allocError();
      if (*(v246 + v244[8]))
      {
        v169 = 2;
      }

      else
      {
        v169 = 1;
      }

      *v168 = v169;
      *(v168 + 4) = v212;
      *(v168 + 112) = 11;
      swift_willThrow();
      sub_26BE00258(v167, *(&v167 + 1));
      sub_26BE00258(v262, v265);
      sub_26BE00258(v167, *(&v167 + 1));
      v160 = v165;
      v161 = v166;
    }

    else
    {
      v156 = v247;
      v157 = v249;
      sub_26BE00258(v247, v249);
      v158 = v260;
      sub_26BE00258(v260, *(&v260 + 1));
      sub_26BE01654();
      swift_allocError();
      *v159 = v212;
      *(v159 + 4) = v155;
      *(v159 + 112) = 13;
      swift_willThrow();
      sub_26BE00258(v158, *(&v158 + 1));
      sub_26BE00258(v262, v265);
      sub_26BE00258(v158, *(&v158 + 1));
      v160 = v156;
      v161 = v157;
    }

    sub_26BE00258(v160, v161);
    sub_26BE00258(v209, v266);
    v170 = v210;
    v171 = v211;
    sub_26BE00258(v210, v211);
    sub_26BE00258(v170, v171);
    sub_26BE00258(v223, v251);

    sub_26BF9E7A4(v261, type metadata accessor for MLS.KeyAndNonce);
    sub_26BF9E7A4(v246, _s11HashRatchetVMa);
    return;
  }

  v235 = v232;
LABEL_57:
  v141 = v235;
  sub_26BF9E408(*(v138 + 56) + *(v233 + 72) * v139, v235, type metadata accessor for MLS.KeyAndNonce);
  sub_26BF9E3A0(v141, v236, type metadata accessor for MLS.KeyAndNonce);
  if ((v259 - 1) > 2)
  {
    v172 = v247;
    v173 = v249;
    sub_26BE00258(v247, v249);
    v174 = v260;
    sub_26BE00258(v260, *(&v260 + 1));
    sub_26BE01654();
    swift_allocError();
    *v175 = v259;
    v175[112] = 12;
    swift_willThrow();
    sub_26BE00258(v174, *(&v174 + 1));
    sub_26BE00258(v262, v265);
    sub_26BE00258(v174, *(&v174 + 1));
    sub_26BE00258(v172, v173);
    sub_26BE00258(v209, v266);
    v176 = v210;
    v177 = v211;
    sub_26BE00258(v210, v211);
    sub_26BE00258(v176, v177);
    sub_26BE00258(v223, v251);

    sub_26BF9E7A4(v261, type metadata accessor for MLS.KeyAndNonce);
    sub_26BF9E7A4(v246, _s11HashRatchetVMa);
    sub_26BF9E7A4(v236, type metadata accessor for MLS.KeyAndNonce);
    return;
  }

  v142 = qword_26C020E98[(v259 - 1)];
  v143 = v241;
  sub_26BF9E408(v246, v241, _s11HashRatchetVMa);
  (*(v240 + 56))(v143, 0, 1, v244);
  v144 = sub_26BE4D678(v143, v142 | (v256 << 32));
  v244 = &v209;
  v145 = *(v257 + 20);
  MEMORY[0x28223BE20](v144);
  v146 = v210;
  v147 = v211;
  v148 = v236;
  v149 = v255;
  v150 = v264;
  sub_26C009C3C();
  sub_26BE00258(v146, v147);
  sub_26BF9E7A4(v246, _s11HashRatchetVMa);
  (*(v263 + 40))(v148 + v145, v149, v150);
  v151 = v234;
  sub_26BF9E3A0(v148, v234, type metadata accessor for MLS.KeyAndNonce);
  v217(v149, v151, v150);
  sub_26C009C5C();
  LOBYTE(v267) = v222;
  *(&v267 + 1) = v218;
  *&v268 = v221;
  *(&v268 + 1) = v220;
  *&v269 = v283;
  v152 = sub_26C009C7C();
  v153 = sub_26C009C7C();
  sub_26BE0DDF0(v152, v153);
  v99 = 0;
  sub_26C009E9C();
  *&v267 = v219;
  *(&v267 + 1) = v225;
  sub_26C009C3C();
  v178 = sub_26BE12418(v281);
  v180 = v179;

  *&v281 = v209;
  *(&v281 + 1) = v266;
  v90 = sub_26C009F1C();
  v92 = v181;
  sub_26BE00258(v178, v180);
  (v254)(v239, v252);
  v213(v243, v264);
  LOBYTE(v281) = v259;
  LODWORD(v267) = v256;
  MLS.GroupKeySource.erase(contentType:sender:generation:)(&v281, &v267, v212);
LABEL_72:
  v102 = 0;
  v115 = (v92 >> 62);
  if ((v92 >> 62) <= 1)
  {
    if (!v115)
    {
      goto LABEL_79;
    }

    v102 = v90;
    goto LABEL_78;
  }

LABEL_76:
  if (v115 != 2)
  {
    goto LABEL_79;
  }

  v102 = *(v90 + 16);
LABEL_78:
  sub_26BE00608(v90, v92);
LABEL_79:
  *&v281 = v90;
  *(&v281 + 1) = v92;
  v282 = v102;
  v182 = *(v238 + 48);
  v280 = v259;
  sub_26BF9DD50(v231, (v231 + v182), &v280);
  if (v99)
  {
    v183 = v247;
    v184 = v249;
    sub_26BE00258(v247, v249);
    v185 = v260;
    sub_26BE00258(v260, *(&v260 + 1));
    *&v267 = v238;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FCF0, &qword_26C020E68);
    v186 = sub_26C00A4FC();
    sub_26BE826C4(v186, v187, v90, v92);

    swift_willThrow();
    sub_26BE00258(v185, *(&v185 + 1));
    sub_26BE00258(v262, v265);
    sub_26BE00258(v185, *(&v185 + 1));
    sub_26BE00258(v183, v184);
    sub_26BE00258(v209, v266);
    sub_26BE00258(v90, v92);
    sub_26BE00258(v223, v251);

    sub_26BE00258(v210, v211);
    sub_26BE00258(v281, *(&v281 + 1));
    sub_26BF9E7A4(v234, type metadata accessor for MLS.KeyAndNonce);
    sub_26BF9E7A4(v261, type metadata accessor for MLS.KeyAndNonce);
  }

  else
  {
    sub_26BE00258(v210, v211);
    v188 = v260;
    sub_26BE00258(v260, *(&v260 + 1));
    sub_26BE00258(v262, v265);
    sub_26BE00258(v188, *(&v188 + 1));
    sub_26BE00258(v247, v249);
    sub_26BE00258(v209, v266);
    sub_26BE00258(v90, v92);
    sub_26BE00258(v223, v251);

    sub_26BE00258(v281, *(&v281 + 1));
    sub_26BF9E7A4(v234, type metadata accessor for MLS.KeyAndNonce);
    sub_26BF9E7A4(v261, type metadata accessor for MLS.KeyAndNonce);
    v189 = v231[9];
    v275 = v231[8];
    v276 = v189;
    *v277 = v231[10];
    *&v277[9] = *(v231 + 169);
    v190 = v231[5];
    v271 = v231[4];
    v272 = v190;
    v191 = v231[7];
    v273 = v231[6];
    v274 = v191;
    v192 = v231[1];
    v267 = *v231;
    v268 = v192;
    v193 = v231[3];
    v269 = v231[2];
    v270 = v193;
    v194 = v237;
    sub_26BF9E3A0(v231 + v182, v237, type metadata accessor for MLS.FramedContentAuthData);
    v195 = v230;
    sub_26BF9E3A0(v194, v230, type metadata accessor for MLS.FramedContentAuthData);
    v196 = *(v226 + 56);
    v197 = v227;
    v196(v195, 0, 1, v227);
    v198 = *(v228 + 24);
    v199 = v229;
    v196(&v229[v198], 1, 1, v197);
    v200 = v276;
    *(v199 + 184) = v275;
    *(v199 + 200) = v200;
    *(v199 + 216) = *v277;
    *(v199 + 225) = *&v277[9];
    v201 = v272;
    *(v199 + 120) = v271;
    *(v199 + 136) = v201;
    v202 = v274;
    *(v199 + 152) = v273;
    *(v199 + 168) = v202;
    v203 = v268;
    *(v199 + 56) = v267;
    *(v199 + 72) = v203;
    v204 = v270;
    *(v199 + 88) = v269;
    *v199 = 2;
    *(v199 + 8) = v188;
    *(v199 + 24) = v258;
    *(v199 + 32) = v256;
    *(v199 + 36) = 0;
    *(v199 + 37) = v278;
    *(v199 + 39) = v279;
    v205 = v249;
    *(v199 + 40) = v247;
    *(v199 + 48) = v205;
    *(v199 + 104) = v204;
    sub_26BE7170C(v195, v199 + v198, &qword_28045E4E0, &qword_26C015A80);
    v206 = v245;
    sub_26BF9E3A0(v199, v245, type metadata accessor for MLS.AuthenticatedContent);
    v207 = type metadata accessor for MLS.ValidatedContent(0);
    v208 = v206 + *(v207 + 20);
    *v208 = v212;
    *(v208 + 4) = 0;
    (*(*(v207 - 8) + 56))(v206, 0, 1, v207);
  }
}

uint64_t static MLS.AuthenticatedContent.sign(wireFormat:content:signaturePrivateKey:context:)@<X0>(unsigned __int16 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a5;
  v65 = a3;
  v8 = type metadata accessor for MLS.FramedContentAuthData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - v12;
  v14 = type metadata accessor for MLS.AuthenticatedContent(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a2[13];
  v89 = a2[12];
  v90[0] = v18;
  *(v90 + 9) = *(a2 + 217);
  v19 = a2[9];
  v85 = a2[8];
  v86 = v19;
  v20 = a2[11];
  v87 = a2[10];
  v88 = v20;
  v21 = a2[5];
  v81 = a2[4];
  v82 = v21;
  v22 = a2[7];
  v83 = a2[6];
  v84 = v22;
  v23 = a2[1];
  v77 = *a2;
  v78 = v23;
  v24 = a2[3];
  v79 = a2[2];
  v80 = v24;
  v25 = a4[3];
  v93 = a4[2];
  v94 = v25;
  v95 = *(a4 + 8);
  v27 = *a4;
  v26 = a4[1];
  v28 = v96;
  v91 = v27;
  v92 = v26;
  if (v17 == 1)
  {
    LODWORD(v62) = 1;
    v29 = a2[12];
    v74 = a2[11];
    v75 = v29;
    v76[0] = a2[13];
    *(v76 + 9) = *(a2 + 217);
    v30 = a2[8];
    v70 = a2[7];
    v71 = v30;
    v31 = a2[10];
    v72 = a2[9];
    v73 = v31;
    v32 = a2[4];
    v66 = a2[3];
    v67 = v32;
    v33 = a2[6];
    v68 = a2[5];
    v69 = v33;
    if (!sub_26BE6917C(&v66))
    {
      nullsub_1();
      sub_26BE01654();
      swift_allocError();
      *v34 = 7;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      *(v34 + 40) = 0u;
      *(v34 + 56) = 0u;
      *(v34 + 72) = 0u;
      *(v34 + 88) = 0u;
      *(v34 + 104) = 0;
      *(v34 + 112) = 23;
      return swift_willThrow();
    }

    nullsub_1();
    LOWORD(v17) = v62;
  }

  v38 = *(v9 + 56);
  v36 = v9 + 56;
  v37 = v38;
  v38(v13, 1, 1, v8);
  v39 = *(v14 + 24);
  v96 = v8;
  v38(&v16[v39], 1, 1, v8);
  v40 = v87;
  *(v16 + 184) = v88;
  v41 = v90[0];
  *(v16 + 200) = v89;
  *(v16 + 216) = v41;
  *(v16 + 225) = *(v90 + 9);
  v42 = v83;
  *(v16 + 120) = v84;
  v43 = v86;
  *(v16 + 136) = v85;
  *(v16 + 152) = v43;
  *(v16 + 168) = v40;
  v44 = v79;
  *(v16 + 56) = v80;
  v45 = v82;
  *(v16 + 72) = v81;
  *(v16 + 88) = v45;
  *(v16 + 104) = v42;
  v46 = v78;
  *(v16 + 8) = v77;
  *(v16 + 24) = v46;
  *v16 = v17;
  *(v16 + 40) = v44;
  sub_26BE2FB24(&v77, &v66);
  sub_26BE7170C(v13, &v16[v39], &qword_28045E4E0, &qword_26C015A80);
  v68 = v93;
  v69 = v94;
  *&v70 = v95;
  v66 = v91;
  v67 = v92;
  v47 = sub_26BF9D0DC(&v66);
  if (!v28)
  {
    v49 = v47;
    v50 = v48;
    v61 = v37;
    v62 = v36;
    v51 = v65[3];
    v52 = v65[4];
    __swift_project_boxed_opaque_existential_1(v65, v51);
    v53 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0xD000000000000010, 0x800000026C02B350, v49, v50, v51, v52);
    v55 = v54;
    sub_26BE00258(v49, v50);
    v56 = v96;
    v57 = *(v96 + 20);
    v58 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v59 = v63;
    (*(*(v58 - 8) + 56))(v63 + v57, 1, 1, v58);
    *v59 = v53;
    v59[1] = v55;
    sub_26BE2E258(&v16[v39], &qword_28045E4E0, &qword_26C015A80);
    sub_26BF9E3A0(v59, &v16[v39], type metadata accessor for MLS.FramedContentAuthData);
    v61(&v16[v39], 0, 1, v56);
    sub_26BF9E408(v16, v64, type metadata accessor for MLS.AuthenticatedContent);
  }

  return sub_26BF9E7A4(v16, type metadata accessor for MLS.AuthenticatedContent);
}

uint64_t static MLS.PublicMessage.protect(authenticatedContent:ciphersuiteID:membershipKey:context:)@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_26C009C8C();
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MLS.AuthenticatedContent(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a2;
  v22 = a4[3];
  v38 = a4[2];
  v39 = v22;
  v40 = *(a4 + 8);
  v23 = a4[1];
  v36 = *a4;
  v37 = v23;
  sub_26BF9E408(a1, v20, type metadata accessor for MLS.AuthenticatedContent);
  v24 = v33;
  result = sub_26BF9D400(v20, a5);
  if (!v24)
  {
    result = v32;
    v26 = v31;
    if (!*(a5 + 28))
    {
      sub_26BE2E1F0(v32, v14, &qword_28045E708, &unk_26C011370);
      if ((*(v26 + 48))(v14, 1, v15) == 1)
      {
        sub_26BE2E258(v14, &qword_28045E708, &unk_26C011370);
        sub_26BE01654();
        swift_allocError();
        *v27 = 27;
        v27[112] = 0;
        swift_willThrow();
        return sub_26BF9E7A4(a5, type metadata accessor for MLS.PublicMessage);
      }

      else
      {
        (*(v26 + 32))(v17, v14, v15);
        v41 = v21;
        v34[2] = v38;
        v34[3] = v39;
        v35 = v40;
        v34[0] = v36;
        v34[1] = v37;
        sub_26BF9D7A8(&v41, v17, v34, v11);
        (*(v26 + 8))(v17, v15);
        v28 = type metadata accessor for MLS.Cryptography.MACTag(0);
        (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
        v29 = type metadata accessor for MLS.PublicMessage(0);
        return sub_26BE7170C(v11, a5 + *(v29 + 24), &qword_28045E4E8, &qword_26C012550);
      }
    }
  }

  return result;
}

void static MLS.PrivateMessage.protect(authenticatedContent:ciphersuiteID:keys:senderDataSecret:usePadding:validateKeyGeneration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v223 = a3;
  LODWORD(v216) = a6;
  v208 = a4;
  v204 = a7;
  v267 = *MEMORY[0x277D85DE8];
  v10 = sub_26C009F3C();
  v11 = *(v10 - 8);
  v211 = v10;
  v212 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v205 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v210 = &v178 - v14;
  v15 = sub_26C009C8C();
  v219 = *(v15 - 8);
  v220 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v206 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v207 = &v178 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v209 = &v178 - v21;
  MEMORY[0x28223BE20](v20);
  v218 = &v178 - v22;
  v23 = sub_26C009D7C();
  v214 = *(v23 - 8);
  v215 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v178 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v178 - v30;
  v32 = _s11HashRatchetVMa(0);
  *(&v213 + 1) = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for MLS.KeyAndNonce(0);
  v35 = MEMORY[0x28223BE20](v217);
  MEMORY[0x28223BE20](v35);
  v221 = &v178 - v37;
  v38 = *a2;
  if ((v38 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
    goto LABEL_51;
  }

  LODWORD(v213) = a5;
  v203 = v36;
  v39 = v38 != 1;
  LOBYTE(v239) = v38 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v40 = v255;
  if (*(a1 + 36))
  {
    sub_26BE01654();
    swift_allocError();
    *v41 = 2;
    v41[112] = 0;
    swift_willThrow();
LABEL_11:

    return;
  }

  DWORD2(v194) = v39;
  v198 = v253;
  v196 = v254;
  v197 = *(&v253 + 1);
  v195 = *(&v254 + 1);
  v202 = *(a1 + 32);
  v42 = *(a1 + 200);
  v265[8] = *(a1 + 184);
  v265[9] = v42;
  v266[0] = *(a1 + 216);
  *(v266 + 9) = *(a1 + 225);
  v43 = *(a1 + 136);
  v265[4] = *(a1 + 120);
  v265[5] = v43;
  v44 = *(a1 + 168);
  v265[6] = *(a1 + 152);
  v265[7] = v44;
  v45 = *(a1 + 72);
  v265[0] = *(a1 + 56);
  v265[1] = v45;
  v46 = *(a1 + 88);
  v199 = a1;
  v47 = *(a1 + 104);
  v265[2] = v46;
  v265[3] = v47;
  v48 = sub_26BE6917C(v265);
  v201 = v40;
  if (v48)
  {
    v49 = v222;
    if (v48 == 1)
    {
      nullsub_1();
      LODWORD(v200) = 0;
      v50 = 2;
    }

    else
    {
      nullsub_1();
      LODWORD(v200) = 0;
      v50 = 3;
    }
  }

  else
  {
    nullsub_1();
    LODWORD(v200) = 1;
    v50 = 1;
    v49 = v222;
  }

  LOBYTE(v239) = v50;
  LODWORD(v253) = v202;
  sub_26BF95BB0(&v239, &v253, v34);
  if (v49)
  {
    goto LABEL_11;
  }

  LODWORD(v194) = sub_26BFF97B0(v221);
  LODWORD(v193) = v50;
  sub_26BF9E408(v34, v31, _s11HashRatchetVMa);
  (*(*(&v213 + 1) + 56))(v31, 0, 1, v32);
  sub_26BE4D678(v31, v200 | (v202 << 32));
  sub_26C009D6C();
  v52 = v214;
  v51 = v215;
  (*(v214 + 16))(v26, v28, v215);
  v53 = v218;
  sub_26C009C6C();
  sub_26C009C3C();
  *(&v213 + 1) = 0;
  v55 = v219;
  v54 = v220;
  v191 = *(v219 + 8);
  v192 = v219 + 8;
  v191(v53, v220);
  v56 = (*(v52 + 8))(v28, v51);
  v57 = *(v217 + 20);
  MEMORY[0x28223BE20](v56);
  v222 = v59;
  v223 = v58;
  v60 = v221;
  v61 = *(&v213 + 1);
  sub_26C009C3C();
  v62 = v61;
  sub_26BF9E7A4(v34, _s11HashRatchetVMa);
  v63 = *(v55 + 40);
  v215 = v57;
  v63(v60 + v57, v53, v54);
  if (v200 & v216)
  {
    v64 = *(v199 + 200);
    v263[1] = *(v199 + 184);
    v263[2] = v64;
    v264[0] = *(v199 + 216);
    *(v264 + 9) = *(v199 + 225);
    v65 = *(v199 + 120);
    v66 = *(v199 + 152);
    v261 = *(v199 + 136);
    v262 = v66;
    v263[0] = *(v199 + 168);
    v67 = *(v199 + 56);
    v68 = *(v199 + 88);
    v257 = *(v199 + 72);
    v258 = v68;
    v259 = *(v199 + 104);
    v260 = v65;
    v69 = *(v199 + 24);
    v253 = *(v199 + 8);
    v254 = v69;
    v255 = *(v199 + 40);
    v256 = v67;
    v70 = *(v199 + 200);
    v250 = *(v199 + 184);
    v251 = v70;
    v252[0] = *(v199 + 216);
    *(v252 + 9) = *(v199 + 225);
    v71 = *(v199 + 120);
    v72 = *(v199 + 152);
    v247 = *(v199 + 136);
    v248 = v72;
    v249 = *(v199 + 168);
    v73 = *(v199 + 56);
    v74 = *(v199 + 88);
    v243 = *(v199 + 72);
    v244 = v74;
    v245 = *(v199 + 104);
    v246 = v71;
    v75 = *(v199 + 24);
    v239 = *(v199 + 8);
    v240 = v75;
    v241 = *(v199 + 40);
    v242 = v73;
    sub_26BE2FB24(&v253, &v225);
    v76 = sub_26BE71AA0(&v239);
    if (v61)
    {

      sub_26BE00258(v222, v223);
      v237 = v251;
      v238[0] = v252[0];
      *(v238 + 9) = *(v252 + 9);
      v233 = v247;
      v234 = v248;
      v235 = v249;
      v236 = v250;
      v229 = v243;
      v230 = v244;
      v231 = v245;
      v232 = v246;
      v225 = v239;
      v226 = v240;
      v227 = v241;
      v228 = v242;
      sub_26BE71494(&v225);
      sub_26BF9E7A4(v60, type metadata accessor for MLS.KeyAndNonce);
      return;
    }

    v81 = v76;
    v237 = v251;
    v238[0] = v252[0];
    *(v238 + 9) = *(v252 + 9);
    v233 = v247;
    v234 = v248;
    v235 = v249;
    v236 = v250;
    v229 = v243;
    v230 = v244;
    v231 = v245;
    v232 = v246;
    v225 = v239;
    v226 = v240;
    v227 = v241;
    v228 = v242;
    sub_26BE71494(&v225);
    if (v81 != v194)
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v83 = sub_26C009A5C();
      __swift_project_value_buffer(v83, qword_280478EE8);
      v84 = sub_26C009A3C();
      v85 = sub_26C00AA0C();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v224 = v87;
        *v86 = 136315650;
        *(v86 + 4) = sub_26BE29740(0x4D65746176697250, 0xEE00656761737365, &v224);
        *(v86 + 12) = 1024;
        *(v86 + 14) = v194;
        *(v86 + 18) = 1024;
        *(v86 + 20) = v81;
        _os_log_impl(&dword_26BDFE000, v84, v85, "%s: Invalid key generation in secret payload, expected %u, got %u", v86, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x26D69A4E0](v87, -1, -1);
        MEMORY[0x26D69A4E0](v86, -1, -1);
      }

      sub_26BE01654();
      swift_allocError();
      *v88 = 50;
      v88[112] = 0;
      swift_willThrow();

      sub_26BE00258(v222, v223);
      sub_26BF9E7A4(v60, type metadata accessor for MLS.KeyAndNonce);
      return;
    }

    v62 = 0;
  }

  v216 = xmmword_26C00BBD0;
  v253 = xmmword_26C00BBD0;
  *&v254 = 0;
  sub_26BF9E27C(&v253, v199, v213 & 1);
  if (v62)
  {
    sub_26BF9E7A4(v60, type metadata accessor for MLS.KeyAndNonce);

    sub_26BE00258(v222, v223);
    v78 = *(&v253 + 1);
    v77 = v253;
LABEL_35:
    sub_26BE00258(v77, v78);
    return;
  }

  v214 = 0;
  v79 = v253;
  v80 = *(&v253 + 1) >> 62;
  if ((*(&v253 + 1) >> 62) > 1)
  {
    if (v80 != 2)
    {
      goto LABEL_32;
    }

    v82 = *(v253 + 24);
  }

  else
  {
    if (!v80)
    {
      goto LABEL_32;
    }

    v82 = v253 >> 32;
  }

  if (v82 < 0)
  {
    __break(1u);
  }

LABEL_32:
  v89 = sub_26C00909C();
  v91 = v90;
  sub_26BE00258(v79, *(&v79 + 1));
  v92 = *(v199 + 8);
  v93 = *(v199 + 16);
  v94 = *(v199 + 24);
  v95 = *(v199 + 40);
  v96 = *(v199 + 48);
  v239 = v216;
  *&v240 = 0;
  *&v253 = v92;
  *(&v253 + 1) = v93;
  *&v254 = v94;
  BYTE8(v254) = v193;
  *&v255 = v95;
  *(&v255 + 1) = v96;
  sub_26BE00608(v92, v93);
  sub_26BE00608(v95, v96);
  v97 = v214;
  sub_26BFAF280(&v253);
  if (v97)
  {
    sub_26BF9E7A4(v221, type metadata accessor for MLS.KeyAndNonce);
    sub_26BE00258(v89, v91);

    sub_26BE00258(v222, v223);
    sub_26BE00258(v92, v93);
    v98 = v95;
    v99 = v96;
LABEL_34:
    sub_26BE00258(v98, v99);
    v78 = *(&v239 + 1);
    v77 = v239;
    goto LABEL_35;
  }

  v200 = v96;
  v188 = v94;
  v189 = v92;
  *&v213 = v89;
  *(&v213 + 1) = v91;
  v190 = v95;
  v100 = v239;
  v101 = *(&v239 + 1) >> 62;
  if ((*(&v239 + 1) >> 62) > 1)
  {
    v102 = v198;
    if (v101 != 2)
    {
      goto LABEL_44;
    }

    v104 = *(v239 + 24);
LABEL_42:
    v103 = v93;
    if ((v104 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    __break(1u);
LABEL_44:
    v103 = v93;
    goto LABEL_45;
  }

  v102 = v198;
  if (v101)
  {
    v104 = v239 >> 32;
    goto LABEL_42;
  }

  v103 = v93;
LABEL_45:
  v105 = sub_26C00909C();
  v107 = v106;
  sub_26BE00258(v100, *(&v100 + 1));
  LOBYTE(v253) = v102;
  *(&v253 + 1) = v197;
  *&v254 = v196;
  *(&v254 + 1) = v195;
  *&v255 = v201;
  v108 = sub_26C009C7C();
  v109 = sub_26C009C7C();
  sub_26BE0DDF0(v108, v109);
  v187 = v103;
  v184 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v110 = v210;
  sub_26C009E9C();
  v253 = v213;
  v185 = v105;
  v186 = v107;
  *&v239 = v105;
  *(&v239 + 1) = v107;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v111 = sub_26BE12418(v225);
  v113 = v112;

  v114 = sub_26BE016A8();
  v115 = sub_26C009F2C();
  v181 = v114;
  v182 = v115;
  v183 = v116;
  v214 = 0;
  sub_26BE00258(v111, v113);
  v117 = *(v212 + 8);
  v212 += 8;
  v210 = v117;
  (v117)(v110, v211);
  v239 = v216;
  *&v240 = 0;
  LODWORD(v225) = bswap32(v202);
  v118 = MEMORY[0x277D838B0];
  *(&v254 + 1) = MEMORY[0x277D838B0];
  *&v255 = MEMORY[0x277CC9C18];
  *&v253 = &v225;
  *(&v253 + 1) = &v225 + 4;
  __swift_project_boxed_opaque_existential_1(&v253, MEMORY[0x277D838B0]);
  v120 = v222;
  v119 = v223;
  sub_26BE00608(v222, v223);
  sub_26BE00608(v120, v119);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v253);
  LODWORD(v225) = bswap32(v194);
  *(&v254 + 1) = v118;
  *&v255 = MEMORY[0x277CC9C18];
  *&v253 = &v225;
  *(&v253 + 1) = &v225 + 4;
  __swift_project_boxed_opaque_existential_1(&v253, v118);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v253);
  sub_26BE11228(v120, v119);
  sub_26BE00258(v120, v119);
  v28 = *(&v239 + 1);
  a2 = v239;
  v121 = *(&v239 + 1) >> 62;
  if ((*(&v239 + 1) >> 62) > 1)
  {
    LOBYTE(v31) = v193;
    v34 = *(&v213 + 1);
    v26 = v187;
    if (v121 != 2)
    {
      goto LABEL_53;
    }

    v122 = *(v239 + 24);
    goto LABEL_52;
  }

  LOBYTE(v31) = v193;
  v34 = *(&v213 + 1);
  v26 = v187;
  if (!v121)
  {
    goto LABEL_53;
  }

LABEL_51:
  v122 = a2 >> 32;
LABEL_52:
  if (v122 < 0)
  {
    __break(1u);
    return;
  }

LABEL_53:
  v123 = sub_26C00909C();
  v125 = v124;
  sub_26BE00258(a2, v28);
  v127 = *(v199 + 8);
  v126 = *(v199 + 16);
  v239 = v216;
  *&v240 = 0;
  *&v253 = v127;
  *(&v253 + 1) = v126;
  *&v254 = v188;
  BYTE8(v254) = v31;
  v128 = v126;
  sub_26BE00608(v127, v126);
  v129 = v214;
  sub_26BE8C044(&v253);
  if (v129)
  {
    sub_26BF9E7A4(v221, type metadata accessor for MLS.KeyAndNonce);
    sub_26BE00258(v213, v34);
    sub_26BE00258(v189, v26);
    sub_26BE00258(v190, v200);
    sub_26BE00258(v185, v186);
    sub_26BE00258(v182, v183);
    v130 = v128;
    v132 = v222;
    v131 = v223;
    sub_26BE00258(v222, v223);
    sub_26BE00258(v123, v125);

    sub_26BE00258(v132, v131);
    v98 = v127;
    v99 = v130;
    goto LABEL_34;
  }

  *&v216 = v125;
  v180 = v127;
  v214 = 0;
  v133 = v239;
  v134 = *(&v239 + 1) >> 62;
  v202 = v123;
  v193 = v128;
  if ((*(&v239 + 1) >> 62) > 1)
  {
    if (v134 != 2)
    {
LABEL_63:
      v136 = v209;
      v137 = BYTE8(v194);
      goto LABEL_64;
    }

    v135 = *(v239 + 24);
  }

  else
  {
    if (!v134)
    {
      goto LABEL_63;
    }

    v135 = v239 >> 32;
  }

  v136 = v209;
  v137 = BYTE8(v194);
  if (v135 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

LABEL_64:
  *&v194 = sub_26C00909C();
  *(&v194 + 1) = v138;
  sub_26BE00258(v133, *(&v133 + 1));
  LOBYTE(v239) = v137;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v139 = *(&v253 + 1);
  v140 = v254;
  v141 = v253;
  v179 = v255;
  v142 = v136;
  v143 = v208;
  v145 = v182;
  v144 = v183;
  v146 = v214;
  MLS.Cryptography.Ciphersuite.deriveSenderDataKey(secret:ciphertext:)(v208, v182, v183, v142);
  if (v146)
  {
    sub_26BF9E7A4(v221, type metadata accessor for MLS.KeyAndNonce);
    sub_26BE00258(v213, *(&v213 + 1));
    sub_26BE00258(v189, v187);
    sub_26BE00258(v190, v200);
    sub_26BE00258(v185, v186);
    sub_26BE00258(v145, v144);
    v148 = v222;
    v147 = v223;
    sub_26BE00258(v222, v223);
    sub_26BE00258(v202, v216);
    sub_26BE00258(v180, v193);
    sub_26BE00258(v194, *(&v194 + 1));

    sub_26BE00258(v148, v147);
    goto LABEL_11;
  }

  LOBYTE(v253) = v141;
  *(&v253 + 1) = v139;
  v254 = v140;
  *&v255 = v179;
  MLS.Cryptography.Ciphersuite.deriveSenderDataNonce(secret:ciphertext:)(v143, v145, v144, v207);

  v150 = v219;
  v149 = v220;
  v151 = *(v219 + 32);
  v152 = v203;
  v151(v203, v209, v220);
  v151(v152 + *(v217 + 20), v207, v149);
  (*(v150 + 16))(v218, v152, v149);
  sub_26BF9E700(&qword_28045E8B8, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  sub_26C009C5C();
  LOBYTE(v253) = v198;
  *(&v253 + 1) = v197;
  *&v254 = v196;
  *(&v254 + 1) = v195;
  *&v255 = v201;
  v153 = sub_26C009C7C();
  v154 = sub_26C009C7C();
  sub_26BE0DDF0(v153, v154);
  sub_26C009E9C();
  *&v239 = v202;
  *(&v239 + 1) = v216;
  v225 = v194;
  sub_26C009C3C();
  v155 = sub_26BE12418(v253);
  v157 = v156;

  v158 = sub_26C009F2C();
  v214 = 0;
  v159 = v158;
  v161 = v160;
  sub_26BE00258(v213, *(&v213 + 1));
  sub_26BE00258(v189, v187);
  sub_26BE00258(v190, v200);
  sub_26BE00258(v185, v186);
  v163 = v222;
  v162 = v223;
  sub_26BE00258(v222, v223);
  sub_26BE00258(v180, v193);
  sub_26BE00258(v155, v157);

  sub_26BE00258(v163, v162);
  (v210)(v205, v211);
  v191(v206, v220);
  sub_26BF9E7A4(v203, type metadata accessor for MLS.KeyAndNonce);
  sub_26BF9E7A4(v221, type metadata accessor for MLS.KeyAndNonce);
  sub_26BE00258(v194, *(&v194 + 1));
  sub_26BE00258(v202, v216);
  v164 = *(v199 + 8);
  v165 = *(v199 + 16);
  v166 = *(v199 + 40);
  v167 = *(v199 + 48);
  v168 = *(v199 + 200);
  v261 = *(v199 + 184);
  v262 = v168;
  v263[0] = *(v199 + 216);
  *(v263 + 9) = *(v199 + 225);
  v169 = *(v199 + 136);
  v257 = *(v199 + 120);
  v258 = v169;
  v170 = *(v199 + 168);
  v259 = *(v199 + 152);
  v260 = v170;
  v171 = *(v199 + 72);
  v253 = *(v199 + 56);
  v254 = v171;
  v172 = *(v199 + 104);
  v255 = *(v199 + 88);
  v256 = v172;
  v173 = v204;
  *v204 = v164;
  *(v173 + 8) = v165;
  *(v173 + 16) = v188;
  v174 = sub_26BE6917C(&v253);
  if (v174)
  {
    if (v174 == 1)
    {
      nullsub_1();
      v175 = 2;
    }

    else
    {
      nullsub_1();
      v175 = 3;
    }
  }

  else
  {
    nullsub_1();
    v175 = 1;
  }

  v176 = v204;
  *(v204 + 24) = v175;
  v176[4] = v166;
  v176[5] = v167;
  v176[6] = v159;
  v176[7] = v161;
  v177 = v183;
  v176[8] = v182;
  v176[9] = v177;
  sub_26BE00608(v164, v165);
  sub_26BE00608(v166, v167);
}