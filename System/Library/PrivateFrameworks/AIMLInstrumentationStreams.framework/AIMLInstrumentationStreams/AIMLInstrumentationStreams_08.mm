id sub_23C620A78()
{
  v0 = sub_23C601E20();
  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EED7610](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v7 = sub_23C870D44();
      if (v7)
      {

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v13 = sub_23C5A3E90(v8);
  sub_23C62103C(&v13, sub_23C62142C, sub_23C6211E4);

  v9 = v13;
  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    if (*(v13 + 16))
    {
      goto LABEL_20;
    }

LABEL_25:

    return 0;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x23EED7610](0, v9);
    goto LABEL_23;
  }

  if (*(v9 + 16))
  {
    v10 = *(v9 + 32);
LABEL_23:
    v11 = v10;

    return v11;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_23C620CA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = [a1 cdmBridgeContext];
  if (!v8 || (v9 = v8, v10 = [v8 ended], v9, !v10))
  {
    v28 = 0;
    return v28 & 1;
  }

  v11 = [a1 eventMetadata];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v11 requestId];

  if (!v13)
  {
    goto LABEL_7;
  }

  sub_23C871AB4();

  v14 = sub_23C870B74();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    sub_23C5FE4E4(v7);
LABEL_7:
    v16 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  v16 = sub_23C870B04();
  v17 = v30;
  (*(v15 + 8))(v7, v14);
LABEL_8:
  v18 = sub_23C620A78();
  if (v18)
  {
    v19 = v18;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v20 = sub_23C870D44();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 eventMetadata];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 requestId];

        if (!v24)
        {

          v27 = 0;
          goto LABEL_17;
        }

        sub_23C871AB4();

        v25 = sub_23C870B74();
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v5, 1, v25) != 1)
        {
          v27 = sub_23C870B04();
          v24 = v31;
          (*(v26 + 8))(v5, v25);

          goto LABEL_17;
        }

        sub_23C5FE4E4(v5);
      }
    }
  }

  v27 = 0;
  v24 = 0;
LABEL_17:
  if (v17)
  {
    if (v24)
    {
      if (v16 == v27 && v17 == v24)
      {

        v28 = 1;
      }

      else
      {
        v28 = sub_23C872014();
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v28 = 1;
      return v28 & 1;
    }

    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_23C62103C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_23C64BCE4(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_23C6210D0(v10, a2, a3);
  return sub_23C871D64();
}

uint64_t sub_23C6210D0(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_23C871FC4();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23C870D74();
        v10 = sub_23C8718F4();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_23C6211E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = sub_23C870CF4();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = sub_23C870CF4();
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = v14;
      sub_23C870DE4();
      v16 = sub_23C870DC4();

      if (v16)
      {
        if (!v5)
        {
          goto LABEL_15;
        }

        v17 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v17;
        v6 -= 8;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      ++v4;
      v6 = v21 + 8;
      v7 = v20 - 1;
      if (v4 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_23C621300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = sub_23C870CF4();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = sub_23C870CF4();
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = v14;
      sub_23C870DE4();
      sub_23C61FDBC();
      v16 = sub_23C871714();

      if (v16)
      {
        if (!v5)
        {
          goto LABEL_15;
        }

        v17 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v17;
        v6 -= 8;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      ++v4;
      v6 = v21 + 8;
      v7 = v20 - 1;
      if (v4 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_23C62142C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9++;
      if (v9 < v8)
      {
        v112 = v8;
        v105 = v10;
        v12 = *v7;
        v13 = *(*v7 + 8 * v11);
        v14 = *(*v7 + 8 * v9);
        v15 = v13;
        v16 = sub_23C870CF4();
        if (!v16)
        {
          goto LABEL_133;
        }

        v17 = v16;
        v108 = v11;
        v103 = v6;
        v18 = sub_23C870CF4();
        if (!v18)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v19 = v18;
        sub_23C870DE4();
        v114 = sub_23C870DC4();

        v20 = v108 + 2;
        v21 = 8 * v108;
        v5 = (v12 + 8 * v108 + 16);
        while (1)
        {
          v9 = v112;
          if (v112 == v20)
          {
            break;
          }

          v22 = *(v5 - 1);
          v23 = *v5;
          v24 = v22;
          v25 = sub_23C870CF4();
          if (!v25)
          {
            goto LABEL_128;
          }

          v26 = v25;
          v27 = sub_23C870CF4();
          if (!v27)
          {
            goto LABEL_127;
          }

          v28 = v27;
          v29 = sub_23C870DC4() & 1;

          ++v20;
          v5 += 8;
          if ((v114 & 1) != v29)
          {
            v9 = v20 - 1;
            break;
          }
        }

        v6 = v103;
        v10 = v105;
        v11 = v108;
        v7 = a3;
        if (v114)
        {
          if (v9 < v108)
          {
            goto LABEL_120;
          }

          if (v108 < v9)
          {
            v30 = 8 * v9 - 8;
            v31 = v9;
            v32 = v108;
            do
            {
              if (v32 != --v31)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v34 = *(v33 + v21);
                *(v33 + v21) = *(v33 + v30);
                *(v33 + v30) = v34;
              }

              ++v32;
              v30 -= 8;
              v21 += 8;
            }

            while (v32 < v31);
          }
        }
      }

      v35 = v7[1];
      if (v9 < v35)
      {
        if (__OFSUB__(v9, v11))
        {
          goto LABEL_119;
        }

        if (v9 - v11 < a4)
        {
          v36 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_121;
          }

          if (v36 >= v35)
          {
            v36 = v7[1];
          }

          if (v36 < v11)
          {
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (v9 != v36)
          {
            v104 = v6;
            v106 = v10;
            v37 = *v7;
            v38 = *v7 + 8 * v9 - 8;
            v109 = v11;
            v39 = v11 - v9;
            v111 = v36;
            do
            {
              v113 = v38;
              v115 = v9;
              v40 = *(v37 + 8 * v9);
              v41 = v39;
              do
              {
                v42 = *v38;
                v43 = v40;
                v44 = v42;
                v45 = sub_23C870CF4();
                if (!v45)
                {
                  goto LABEL_125;
                }

                v5 = v45;
                v46 = sub_23C870CF4();
                if (!v46)
                {
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
                  goto LABEL_134;
                }

                v47 = v46;
                sub_23C870DE4();
                v48 = sub_23C870DC4();

                if ((v48 & 1) == 0)
                {
                  break;
                }

                if (!v37)
                {
                  goto LABEL_126;
                }

                v49 = *v38;
                v40 = *(v38 + 8);
                *v38 = v40;
                *(v38 + 8) = v49;
                v38 -= 8;
              }

              while (!__CFADD__(v41++, 1));
              v9 = v115 + 1;
              v38 = v113 + 8;
              --v39;
            }

            while (v115 + 1 != v111);
            v9 = v111;
            v6 = v104;
            v10 = v106;
            v11 = v109;
            v7 = a3;
          }
        }
      }

      if (v9 < v11)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23C584338(0, *(v10 + 2) + 1, 1, v10);
      }

      v52 = *(v10 + 2);
      v51 = *(v10 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v10 = sub_23C584338((v51 > 1), v52 + 1, 1, v10);
      }

      *(v10 + 2) = v53;
      v54 = &v10[16 * v52];
      *(v54 + 4) = v11;
      *(v54 + 5) = v9;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v52)
      {
        while (1)
        {
          v55 = v53 - 1;
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v56 = *(v10 + 4);
            v57 = *(v10 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_60:
            if (v59)
            {
              goto LABEL_107;
            }

            v72 = &v10[16 * v53];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_110;
            }

            v78 = &v10[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_114;
            }

            if (v76 + v81 >= v58)
            {
              if (v58 < v81)
              {
                v55 = v53 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v82 = &v10[16 * v53];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_74:
          if (v77)
          {
            goto LABEL_109;
          }

          v85 = &v10[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_112;
          }

          if (v88 < v76)
          {
            goto LABEL_3;
          }

LABEL_81:
          v93 = v55 - 1;
          if (v55 - 1 >= v53)
          {
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
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (!*v7)
          {
            goto LABEL_129;
          }

          v94 = *&v10[16 * v93 + 32];
          v95 = *&v10[16 * v55 + 40];
          sub_23C6221F0((*v7 + 8 * v94), (*v7 + 8 * *&v10[16 * v55 + 32]), (*v7 + 8 * v95), v5);
          if (v6)
          {
            goto LABEL_101;
          }

          if (v95 < v94)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23C6473A0(v10);
          }

          if (v93 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v96 = &v10[16 * v93];
          *(v96 + 4) = v94;
          *(v96 + 5) = v95;
          sub_23C647314(v55);
          v53 = *(v10 + 2);
          if (v53 <= 1)
          {
            goto LABEL_3;
          }
        }

        v60 = &v10[16 * v53 + 32];
        v61 = *(v60 - 64);
        v62 = *(v60 - 56);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_105;
        }

        v65 = *(v60 - 48);
        v64 = *(v60 - 40);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_106;
        }

        v67 = &v10[16 * v53];
        v69 = *v67;
        v68 = *(v67 + 1);
        v66 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v66)
        {
          goto LABEL_108;
        }

        v66 = __OFADD__(v58, v70);
        v71 = v58 + v70;
        if (v66)
        {
          goto LABEL_111;
        }

        if (v71 >= v63)
        {
          v89 = &v10[16 * v55 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v66 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v66)
          {
            goto LABEL_115;
          }

          if (v58 < v92)
          {
            v55 = v53 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v7[1];
      if (v9 >= v8)
      {
        goto LABEL_91;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_91:
  v5 = v10;
  v10 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v5 = sub_23C6473A0(v5);
    }

    v97 = *(v5 + 2);
    if (v97 >= 2)
    {
      do
      {
        v98 = *v7;
        if (!*v7)
        {
          goto LABEL_131;
        }

        v7 = (v97 - 1);
        v99 = *&v5[16 * v97];
        v100 = *&v5[16 * v97 + 24];
        sub_23C6221F0((v98 + 8 * v99), (v98 + 8 * *&v5[16 * v97 + 16]), (v98 + 8 * v100), v10);
        if (v6)
        {
          break;
        }

        if (v100 < v99)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23C6473A0(v5);
        }

        if (v97 - 2 >= *(v5 + 2))
        {
          goto LABEL_117;
        }

        v101 = &v5[16 * v97];
        *v101 = v99;
        *(v101 + 1) = v100;
        sub_23C647314(v97 - 1);
        v97 = *(v5 + 2);
        v7 = a3;
      }

      while (v97 > 1);
    }

LABEL_101:
  }

  else
  {
LABEL_135:
    __break(1u);
  }
}

void sub_23C621AF4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = a4;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v9 = (v9 + 1);
      if (v9 < v7)
      {
        v115 = v7;
        v107 = v10;
        v12 = *v6;
        v13 = *(*v6 + 8 * v11);
        v14 = *(*v6 + 8 * v9);
        v15 = v13;
        v16 = sub_23C870CF4();
        if (!v16)
        {
          goto LABEL_135;
        }

        v17 = v16;
        v105 = v5;
        v18 = sub_23C870CF4();
        if (!v18)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v19 = v18;
        sub_23C870DE4();
        sub_23C61FDBC();
        v117 = sub_23C871714();

        v20 = (v11 + 2);
        v109 = v11;
        v21 = 8 * v11;
        v22 = (v12 + v21 + 16);
        while (1)
        {
          v9 = v115;
          if (v115 == v20)
          {
            break;
          }

          v23 = *(v22 - 1);
          v24 = *v22;
          v25 = v23;
          v26 = sub_23C870CF4();
          if (!v26)
          {
            goto LABEL_130;
          }

          v27 = v26;
          v28 = sub_23C870CF4();
          if (!v28)
          {
            goto LABEL_129;
          }

          v29 = v28;
          v30 = sub_23C871714() & 1;

          v20 = (v20 + 1);
          ++v22;
          if ((v117 & 1) != v30)
          {
            v9 = (v20 - 1);
            break;
          }
        }

        v6 = a3;
        v5 = v105;
        v10 = v107;
        v8 = a4;
        if (v117)
        {
          v31 = v109;
          if (v9 < v109)
          {
            goto LABEL_122;
          }

          if (v109 >= v9)
          {
            v11 = v109;
            goto LABEL_23;
          }

          v32 = 8 * v9 - 8;
          v33 = v9;
          do
          {
            v33 = (v33 - 1);
            if (v31 != v33)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v35 = *(v34 + v21);
              *(v34 + v21) = *(v34 + v32);
              *(v34 + v32) = v35;
            }

            v31 = (v31 + 1);
            v32 -= 8;
            v21 += 8;
          }

          while (v31 < v33);
        }

        v11 = v109;
      }

LABEL_23:
      v36 = v6[1];
      if (v9 < v36)
      {
        if (__OFSUB__(v9, v11))
        {
          goto LABEL_121;
        }

        if (v9 - v11 < v8)
        {
          if (__OFADD__(v11, v8))
          {
            goto LABEL_123;
          }

          if (v11 + v8 < v36)
          {
            v36 = (v11 + v8);
          }

          if (v36 < v11)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (v9 != v36)
          {
            v113 = v36;
            v106 = v5;
            v108 = v10;
            v37 = v11;
            v38 = *v6;
            v39 = *v6 + 8 * v9 - 8;
            v110 = v37;
            v40 = v37 - v9;
            do
            {
              v116 = v39;
              v118 = v9;
              v41 = *(v38 + 8 * v9);
              v114 = v40;
              do
              {
                v42 = *v39;
                v43 = v41;
                v44 = v42;
                v45 = sub_23C870CF4();
                if (!v45)
                {
                  goto LABEL_127;
                }

                v46 = v45;
                v47 = sub_23C870CF4();
                if (!v47)
                {
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
                  goto LABEL_136;
                }

                v48 = v47;
                sub_23C870DE4();
                sub_23C61FDBC();
                v49 = sub_23C871714();

                if ((v49 & 1) == 0)
                {
                  break;
                }

                if (!v38)
                {
                  goto LABEL_128;
                }

                v50 = *v39;
                v41 = *(v39 + 8);
                *v39 = v41;
                *(v39 + 8) = v50;
                v39 -= 8;
              }

              while (!__CFADD__(v40++, 1));
              v9 = (v118 + 1);
              v39 = v116 + 8;
              v40 = v114 - 1;
            }

            while ((v118 + 1) != v113);
            v9 = v113;
            v6 = a3;
            v5 = v106;
            v10 = v108;
            v11 = v110;
          }
        }
      }

      if (v9 < v11)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23C584338(0, *(v10 + 2) + 1, 1, v10);
      }

      v53 = *(v10 + 2);
      v52 = *(v10 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v10 = sub_23C584338((v52 > 1), v53 + 1, 1, v10);
      }

      *(v10 + 2) = v54;
      v55 = &v10[16 * v53];
      *(v55 + 4) = v11;
      *(v55 + 5) = v9;
      v56 = *a1;
      if (!*a1)
      {
        goto LABEL_134;
      }

      if (v53)
      {
        while (1)
        {
          v57 = v54 - 1;
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v58 = *(v10 + 4);
            v59 = *(v10 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_62:
            if (v61)
            {
              goto LABEL_109;
            }

            v74 = &v10[16 * v54];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_112;
            }

            v80 = &v10[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_116;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v57 = v54 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v84 = &v10[16 * v54];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_76:
          if (v79)
          {
            goto LABEL_111;
          }

          v87 = &v10[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_114;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_83:
          v95 = v57 - 1;
          if (v57 - 1 >= v54)
          {
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
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*v6)
          {
            goto LABEL_131;
          }

          v96 = *&v10[16 * v95 + 32];
          v97 = *&v10[16 * v57 + 40];
          sub_23C622520((*v6 + 8 * v96), (*v6 + 8 * *&v10[16 * v57 + 32]), (*v6 + 8 * v97), v56);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v97 < v96)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23C6473A0(v10);
          }

          if (v95 >= *(v10 + 2))
          {
            goto LABEL_106;
          }

          v98 = &v10[16 * v95];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          sub_23C647314(v57);
          v54 = *(v10 + 2);
          if (v54 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = &v10[16 * v54 + 32];
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_107;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_108;
        }

        v69 = &v10[16 * v54];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_110;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_113;
        }

        if (v73 >= v65)
        {
          v91 = &v10[16 * v57 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_117;
          }

          if (v60 < v94)
          {
            v57 = v54 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v7 = v6[1];
      v8 = a4;
      if (v9 >= v7)
      {
        goto LABEL_93;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_93:
  v9 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v10 = sub_23C6473A0(v10);
    }

    v99 = *(v10 + 2);
    if (v99 >= 2)
    {
      while (*v6)
      {
        v100 = v10;
        v10 = (v99 - 1);
        v101 = *&v100[16 * v99];
        v102 = *&v100[16 * v99 + 24];
        sub_23C622520((*v6 + 8 * v101), (*v6 + 8 * *&v100[16 * v99 + 16]), (*v6 + 8 * v102), v9);
        if (v5)
        {
          goto LABEL_103;
        }

        if (v102 < v101)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_23C6473A0(v100);
        }

        if (v99 - 2 >= *(v100 + 2))
        {
          goto LABEL_119;
        }

        v103 = &v100[16 * v99];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_23C647314(v99 - 1);
        v10 = v100;
        v99 = *(v100 + 2);
        if (v99 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_133;
    }

LABEL_103:
  }

  else
  {
LABEL_137:
    __break(1u);
  }
}

uint64_t sub_23C6221F0(void **__src, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = __src;
      memmove(a4, __src, 8 * v8);
      __src = v13;
    }

    v14 = &v4[v8];
    if (v6 >= 8)
    {
      v15 = v12;
      if (v12 < v5)
      {
        __dst = v5;
        while (1)
        {
          v16 = __src;
          v17 = v14;
          v18 = v15;
          v19 = v4;
          v20 = *v4;
          v21 = *v15;
          v22 = v20;
          result = sub_23C870CF4();
          if (!result)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v24 = result;
          result = sub_23C870CF4();
          if (!result)
          {
            goto LABEL_46;
          }

          v25 = result;
          sub_23C870DE4();
          v26 = sub_23C870DC4();

          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = v18;
          v15 = v18 + 1;
          v28 = v16;
          v4 = v19;
          if (v16 != v18)
          {
            goto LABEL_18;
          }

LABEL_19:
          __src = v28 + 1;
          v14 = v17;
          if (v4 >= v17 || v15 >= __dst)
          {
            goto LABEL_41;
          }
        }

        v27 = v19;
        v4 = v19 + 1;
        v28 = v16;
        v15 = v18;
        if (v16 == v19)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v28 = *v27;
        goto LABEL_19;
      }
    }

    goto LABEL_41;
  }

  v41 = __src;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v29 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v29;
  }

  __src = a2;
  v14 = &v4[v11];
  if (v9 < 8 || a2 <= v41)
  {
LABEL_41:
    if (__src != v4 || __src >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(__src, v4, 8 * (v14 - v4));
    }

    return 1;
  }

  v44 = v4;
LABEL_28:
  __dsta = __src;
  v30 = __src - 1;
  --v5;
  v31 = v14;
  while (1)
  {
    v32 = *--v31;
    v33 = v30;
    v34 = *v30;
    v35 = v32;
    v36 = v34;
    result = sub_23C870CF4();
    if (!result)
    {
      goto LABEL_47;
    }

    v37 = result;
    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v38 = result;
    sub_23C870DE4();
    v39 = sub_23C870DC4();

    v40 = v5 + 1;
    if (v39)
    {
      if (v40 != __dsta)
      {
        *v5 = *v33;
      }

      v4 = v44;
      if (v14 <= v44 || (__src = v33, v33 <= v41))
      {
        __src = v33;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v40 != v14)
    {
      *v5 = *v31;
    }

    --v5;
    v14 = v31;
    v30 = v33;
    if (v31 <= v44)
    {
      v14 = v31;
      v4 = v44;
      __src = __dsta;
      goto LABEL_41;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_23C622520(void **__src, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = __src;
      memmove(a4, __src, 8 * v8);
      __src = v13;
    }

    v14 = &v4[v8];
    if (v6 >= 8)
    {
      v15 = v12;
      if (v12 < v5)
      {
        v42 = v5;
        while (1)
        {
          v16 = __src;
          v17 = v14;
          v18 = v15;
          v19 = v4;
          v20 = *v4;
          v21 = *v15;
          v22 = v20;
          result = sub_23C870CF4();
          if (!result)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v24 = result;
          result = sub_23C870CF4();
          if (!result)
          {
            goto LABEL_46;
          }

          v25 = result;
          sub_23C870DE4();
          sub_23C61FDBC();
          v26 = sub_23C871714();

          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = v18;
          v15 = v18 + 1;
          v28 = v16;
          v4 = v19;
          if (v16 != v18)
          {
            goto LABEL_18;
          }

LABEL_19:
          __src = v28 + 1;
          v14 = v17;
          if (v4 >= v17 || v15 >= v42)
          {
            goto LABEL_41;
          }
        }

        v27 = v19;
        v4 = v19 + 1;
        v28 = v16;
        v15 = v18;
        if (v16 == v19)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v28 = *v27;
        goto LABEL_19;
      }
    }

    goto LABEL_41;
  }

  v41 = __src;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v29 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v29;
  }

  __src = a2;
  v14 = &v4[v11];
  if (v9 < 8 || a2 <= v41)
  {
LABEL_41:
    if (__src != v4 || __src >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(__src, v4, 8 * (v14 - v4));
    }

    return 1;
  }

  v44 = v4;
LABEL_28:
  v43 = __src;
  v30 = __src - 1;
  --v5;
  v31 = v14;
  while (1)
  {
    v32 = *--v31;
    v33 = v30;
    v34 = *v30;
    v35 = v32;
    v36 = v34;
    result = sub_23C870CF4();
    if (!result)
    {
      goto LABEL_47;
    }

    v37 = result;
    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v38 = result;
    sub_23C870DE4();
    sub_23C61FDBC();
    v39 = sub_23C871714();

    v40 = v5 + 1;
    if (v39)
    {
      if (v40 != v43)
      {
        *v5 = *v33;
      }

      v4 = v44;
      if (v14 <= v44 || (__src = v33, v33 <= v41))
      {
        __src = v33;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v40 != v14)
    {
      *v5 = *v31;
    }

    --v5;
    v14 = v31;
    v30 = v33;
    if (v31 <= v44)
    {
      v14 = v31;
      __src = v43;
      v4 = v44;
      goto LABEL_41;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t ComponentGroup<>.selectedResultCandidateId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_31:
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_23C871C34();
  }

  else
  {
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v24 = v4;
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EED7610](v5, v1);
      }

      else
      {
        if (v5 >= *(v25 + 16))
        {
          goto LABEL_30;
        }

        v7 = *(v1 + 8 * v5 + 32);
      }

      v6 = v7;
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v8 = sub_23C870D54();
      if (v8)
      {
        break;
      }

LABEL_7:

      ++v5;
      if (v3 == v2)
      {
        v4 = v24;
        goto LABEL_25;
      }
    }

    v10 = v8;
    v11 = v9;
    v12 = [v8 eventMetadata];
    if (!v12 || (v13 = v12, v14 = [v12 resultCandidateId], v13, !v14))
    {

      v6 = v11;
      goto LABEL_7;
    }

    v15 = sub_23C871784();
    v17 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_23C5844DC(0, *(v24 + 2) + 1, 1, v24);
    }

    v20 = *(v24 + 2);
    v19 = *(v24 + 3);
    if (v20 >= v19 >> 1)
    {
      v24 = sub_23C5844DC((v19 > 1), v20 + 1, 1, v24);
    }

    *(v24 + 2) = v20 + 1;
    v21 = &v24[16 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
    v4 = v24;
  }

  while (v3 != v2);
LABEL_25:

  if (*(v4 + 2))
  {
    v22 = *(v4 + 4);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t ComponentGroup<>.eventsWithSelectedResultCandidateId.getter()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1 >> 62)
  {
LABEL_31:
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_23C871C34();
  }

  else
  {
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v25 = v0;
  do
  {
    v26 = v4;
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](v5, v1);
      }

      else
      {
        if (v5 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        v6 = *(v1 + 8 * v5 + 32);
      }

      v0 = v6;
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v7 = sub_23C870D54();
      if (v7)
      {
        break;
      }

LABEL_7:

      ++v5;
      if (v3 == v2)
      {
        v0 = v25;
        v4 = v26;
        goto LABEL_25;
      }
    }

    v9 = v7;
    v10 = v8;
    v11 = [v7 eventMetadata];
    if (!v11 || (v12 = v11, v13 = [v11 resultCandidateId], v12, !v13))
    {

      v0 = v10;
      goto LABEL_7;
    }

    v14 = sub_23C871784();
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_23C5844DC(0, *(v26 + 2) + 1, 1, v26);
    }

    v19 = *(v26 + 2);
    v18 = *(v26 + 3);
    if (v19 >= v18 >> 1)
    {
      v26 = sub_23C5844DC((v18 > 1), v19 + 1, 1, v26);
    }

    v4 = v26;
    *(v26 + 2) = v19 + 1;
    v20 = &v26[16 * v19];
    *(v20 + 4) = v14;
    *(v20 + 5) = v16;
    v0 = v25;
  }

  while (v3 != v2);
LABEL_25:

  if (*(v4 + 2))
  {
    v22 = *(v4 + 4);
    v21 = *(v4 + 5);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = sub_23C626314(v0, v22, v21);
  swift_bridgeObjectRelease_n();
  return v23;
}

unint64_t LogicalTimestamp.dictionaryRepresentation()()
{
  v0 = sub_23C870B74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D20;
  v13 = 0x6564496B636F6C63;
  v14 = 0xEF7265696669746ELL;
  v5 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v6 = sub_23C870D94();
  v7 = MEMORY[0x23EED6400](v6);
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  *(inited + 96) = v5;
  *(inited + 72) = v7;
  *(inited + 80) = v9;
  v13 = 0xD000000000000016;
  v14 = 0x800000023C8A7340;
  sub_23C871CB4();
  v10 = sub_23C870DD4();
  *(inited + 168) = MEMORY[0x277D84D38];
  *(inited + 144) = v10;
  v11 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v11;
}

uint64_t LogicalTimestamp.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_23C870B74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v19 = 0x6564496B636F6C63;
  v20 = 0xEF7265696669746ELL;
  sub_23C871CB4();
  if (*(a1 + 16) && (v12 = sub_23C5FF9C4(v21), (v13 & 1) != 0))
  {
    sub_23C588DC0(*(a1 + 56) + 32 * v12, v22);
    sub_23C600810(v21);
    if (swift_dynamicCast())
    {
      sub_23C870AF4();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_23C5FE4E4(v4);
      }

      else
      {
        (*(v6 + 32))(v11, v4, v5);
        v19 = 0xD000000000000016;
        v20 = 0x800000023C8A7340;
        sub_23C871CB4();
        if (*(a1 + 16) && (v15 = sub_23C5FF9C4(v21), (v16 & 1) != 0))
        {
          sub_23C588DC0(*(a1 + 56) + 32 * v15, v22);
          sub_23C600810(v21);

          if (swift_dynamicCast())
          {
            (*(v6 + 16))(v9, v11, v5);
            v17 = sub_23C870DA4();
            (*(v6 + 8))(v11, v5);
            return v17;
          }
        }

        else
        {

          sub_23C600810(v21);
        }

        (*(v6 + 8))(v11, v5);
      }
    }

    else
    {
    }
  }

  else
  {

    sub_23C600810(v21);
  }

  return 0;
}

void *OrderedEvent.dictionaryRepresentation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873CF0;
  v21 = 0x707954746E657665;
  v22 = 0xE900000000000065;
  v4 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  result = sub_23C870CA4();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  v7 = [result qualifiedMessageName];

  v8 = sub_23C871784();
  *(inited + 96) = v4;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v21 = 0xD000000000000010;
  v22 = 0x800000023C8A7380;
  sub_23C871CB4();
  result = sub_23C870CF4();
  if (!result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = LogicalTimestamp.dictionaryRepresentation()();

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  *(inited + 144) = v11;
  v21 = 0x6449746E657665;
  v22 = 0xE700000000000000;
  sub_23C871CB4();
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C870CC4();
  v12 = sub_23C870B74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v2, 1, v12) == 1)
  {
    sub_23C5FE4E4(v2);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = MEMORY[0x23EED6400]();
    v15 = v16;
    (*(v13 + 8))(v2, v12);
  }

  *(inited + 216) = v14;
  *(inited + 224) = v15;
  v21 = 0x746E657665;
  v22 = 0xE500000000000000;
  sub_23C871CB4();
  result = sub_23C870CA4();
  if (!result)
  {
    goto LABEL_13;
  }

  v17 = result;

  v18 = [v17 dictionaryRepresentation];
  if (v18)
  {
    v19 = sub_23C8716B4();
  }

  else
  {
    v19 = 0;
  }

  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E60, &qword_23C8750A0);
  *(inited + 288) = v19;
  v20 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v20;
}

void OrderedEvent.jsonEncoding()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v25 - v1;
  v3 = sub_23C870CA4();
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 wrapAsAnyEvent];

  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873CF0;
  strcpy(v25, "anyEventType");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  sub_23C871CB4();
  v7 = [v5 anyEventType];
  *(inited + 96) = MEMORY[0x277D849A8];
  *(inited + 72) = v7;
  v25[0] = 0xD000000000000010;
  v25[1] = 0x800000023C8A7380;
  sub_23C871CB4();
  v8 = sub_23C870CF4();
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = LogicalTimestamp.dictionaryRepresentation()();

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  *(inited + 144) = v10;
  strcpy(v25, "eventId");
  v25[1] = 0xE700000000000000;
  sub_23C871CB4();
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C870CC4();
  v11 = sub_23C870B74();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v2, 1, v11) == 1)
  {
    sub_23C5FE4E4(v2);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = MEMORY[0x23EED6400]();
    v14 = v15;
    (*(v12 + 8))(v2, v11);
  }

  *(inited + 216) = v13;
  *(inited + 224) = v14;
  strcpy(v25, "payload");
  v25[1] = 0xE700000000000000;
  v16 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v17 = [v5 payload];
  if (v17)
  {
    v18 = v17;
    v19 = sub_23C870A34();
    v21 = v20;

    v22 = sub_23C870A24();
    v24 = v23;
    sub_23C595090(v19, v21);
    *(inited + 312) = v16;
    *(inited + 288) = v22;
    *(inited + 296) = v24;
    sub_23C598B20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
    swift_arrayDestroy();

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t OrderedEvent.init(jsonEncoding:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = sub_23C870B74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v45, "anyEventType");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  sub_23C871CB4();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v12 = sub_23C5FF9C4(v46);
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v12, v47);
  sub_23C600810(v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  v14 = LODWORD(v45[0]);
  strcpy(v45, "payload");
  v45[1] = 0xE700000000000000;
  sub_23C871CB4();
  if (!*(a1 + 16) || (v15 = sub_23C5FF9C4(v46), (v16 & 1) == 0))
  {
LABEL_9:

LABEL_10:
    sub_23C600810(v46);
    return 0;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v15, v47);
  sub_23C600810(v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v44 = sub_23C870A04();
  v18 = v17;

  if (v18 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v43 = objc_allocWithZone(MEMORY[0x277D5A790]);
  v20 = v44;
  sub_23C5ACFC8(v44, v18);
  v21 = sub_23C870A14();
  v22 = v18;
  v23 = v21;
  v24 = v20;
  v25 = v22;
  sub_23C5AD0AC(v24, v22);
  v26 = [v43 initWithAnyEventType:v14 payload:v23];

  v27 = v26;
  v28 = [v26 unwrap];
  if (!v28)
  {

    v37 = v44;
    v38 = v25;
LABEL_26:
    sub_23C5AD0AC(v37, v38);
    return 0;
  }

  v29 = v28;
  v43 = v25;
  v45[0] = 0xD000000000000010;
  v45[1] = 0x800000023C8A7380;
  sub_23C871CB4();
  if (!*(a1 + 16) || (v42 = v27, v30 = sub_23C5FF9C4(v46), v27 = v42, (v31 & 1) == 0))
  {
    sub_23C5AD0AC(v44, v43);

    goto LABEL_10;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v30, v47);
  sub_23C600810(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_25:
    v38 = v43;
    v37 = v44;
    goto LABEL_26;
  }

  v32 = v45[0];
  sub_23C870DE4();
  v33 = LogicalTimestamp.init(dictionaryRepresentation:)(v32);
  if (!v33)
  {
    sub_23C5AD0AC(v44, v43);

    return 0;
  }

  v34 = v33;
  strcpy(v45, "eventId");
  v45[1] = 0xE700000000000000;
  sub_23C871CB4();
  if (!*(a1 + 16) || (v41 = v34, v35 = sub_23C5FF9C4(v46), v34 = v41, (v36 & 1) == 0))
  {
    sub_23C5AD0AC(v44, v43);

    goto LABEL_10;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v35, v47);
  sub_23C600810(v46);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_23C870AF4();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_23C5AD0AC(v44, v43);

    sub_23C5FE4E4(v7);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  (*(v9 + 16))(v5, v11, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v39 = sub_23C870CD4();

  sub_23C5AD0AC(v44, v43);
  (*(v9 + 8))(v11, v8);
  return v39;
}

uint64_t TimestampedOrderedEvent.dictionaryRepresentation()()
{
  v1 = [*(v0 + 24) dictionaryRepresentation];
  v2 = sub_23C8716B4();

  *&v7 = 0xD000000000000011;
  *(&v7 + 1) = 0x800000023C8A8B10;
  sub_23C871CB4();
  v3 = *(v0 + 16);
  v8 = MEMORY[0x277D839F8];
  *&v7 = v3;
  sub_23C59A4B0(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23C593DBC(v6, v9, isUniquelyReferenced_nonNull_native);
  sub_23C600810(v9);
  return v2;
}

unint64_t SISchemaProvisionalEvent.dictionaryRepresentation()()
{
  v1 = 0x707974206461623CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875050;
  v3 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v4 = [v0 typeId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C871784();
    v8 = v7;

    v9 = (inited + 72);
    *(inited + 96) = v3;
    if (v8)
    {
      *v9 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = (inited + 72);
    *(inited + 96) = v3;
  }

  *v9 = 0x707974206461623CLL;
  v8 = 0xEC0000003E644965;
LABEL_6:
  *(inited + 80) = v8;
  sub_23C871CB4();
  v10 = [v0 version];
  *(inited + 168) = MEMORY[0x277D84A28];
  *(inited + 144) = v10;
  sub_23C871CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_23C873D20;
  *(v11 + 32) = 1701869940;
  *(v11 + 40) = 0xE400000000000000;
  v12 = [v0 anyEvent];
  if (v12)
  {
    v13 = v12;
    [v12 anyEventType];

    v1 = sub_23C871AF4();
  }

  else
  {
    v14 = 0xEA00000000003E65;
  }

  v15 = 0xED00003E64616F6CLL;
  v16 = 0x796170206461623CLL;
  *(v11 + 48) = v1;
  *(v11 + 56) = v14;
  *(v11 + 64) = 0x64616F6C796170;
  *(v11 + 72) = 0xE700000000000000;
  v17 = [v0 anyEvent];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 payload];

    if (v19)
    {
      v20 = sub_23C870A34();
      v22 = v21;

      v16 = sub_23C870A24();
      v15 = v23;
      sub_23C595090(v20, v22);
    }
  }

  *(v11 + 80) = v16;
  *(v11 + 88) = v15;
  v24 = sub_23C5967FC(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9968, &unk_23C873E20);
  swift_arrayDestroy();
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9770, &qword_23C873D48);
  *(inited + 216) = v24;
  v25 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v25;
}

id sub_23C624514(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_23C8716A4();

  return v5;
}

uint64_t Sequence<>.filterInner<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  (*(v12 + 16))(&v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a1;
  v19 = a2;
  return sub_23C871874();
}

void OrderedEvent.compactMap<A, B>(_:)(void (*a1)(void)@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_23C870D44();
  if (v7)
  {
    v9 = v7;
    a1();
  }

  else
  {
    v8 = *(*(a3 - 8) + 56);

    v8(a4, 1, 1, a3);
  }
}

void OrderedEvent.compactMap2<A, B, C>(_:)(void (*a1)(void)@<X0>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = sub_23C870D54();
  if (v8)
  {
    v10 = v8;
    v12 = v9;
    a1();
  }

  else
  {
    v11 = *(*(a4 - 8) + 56);

    v11(a5, 1, 1, a4);
  }
}

uint64_t Sequence<>.getInnerEvent<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a2;
  v4[11] = a3;
  v4[12] = sub_23C624AEC;
  v4[13] = v4;
  v4[6] = sub_23C871844();
  sub_23C871924();
  swift_getWitnessTable();
  sub_23C871A74();

  return v4[5];
}

uint64_t sub_23C624AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v37 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7 >> 62)
  {
    goto LABEL_40;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v8)
  {
    v9 = 0;
    v35 = v7 & 0xFFFFFFFFFFFFFF8;
    v36 = v7 & 0xC000000000000001;
    v33 = v8;
    v34 = v6;
    v32 = v7;
    while (1)
    {
      if (v36)
      {
        v10 = MEMORY[0x23EED7610](v9, v7);
      }

      else
      {
        if (v9 >= *(v35 + 16))
        {
          goto LABEL_39;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v8 = sub_23C871C34();
        goto LABEL_3;
      }

      sub_23C5A3FDC(0, &qword_27E1FB820, 0x277D589A8);
      v13 = sub_23C870D44();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 ended];
        if (!v15)
        {
          goto LABEL_32;
        }

        v16 = [v14 trpId];
        if (v16)
        {
          v17 = v16;
          v18 = a2;
          sub_23C871AB4();

          v19 = sub_23C870B74();
          v20 = *(v19 - 8);
          if ((*(v20 + 48))(v6, 1, v19) == 1)
          {
            sub_23C5FE4E4(v6);
            v21 = 0;
            v22 = 0;
          }

          else
          {
            v21 = sub_23C870B04();
            v23 = v6;
            v22 = v24;
            (*(v20 + 8))(v23, v19);
          }

          a2 = v18;
          v7 = v32;
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        v25 = sub_23C6022E4();
        if (!v26)
        {
          v25 = sub_23C601F9C();
        }

        if (v22)
        {
          if (!v26)
          {

            v8 = v33;
            v6 = v34;
            goto LABEL_6;
          }

          if (v21 == v25 && v22 == v26)
          {

            v8 = v33;
          }

          else
          {
            v27 = sub_23C872014();

            v8 = v33;
            if ((v27 & 1) == 0)
            {

              v6 = v34;
              goto LABEL_6;
            }
          }
        }

        else
        {
          v8 = v33;
          if (v26)
          {

            v6 = v34;
            goto LABEL_6;
          }
        }

        sub_23C601F9C();
        v6 = v34;
        if (!v28)
        {
LABEL_32:

          goto LABEL_6;
        }

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

LABEL_6:
      ++v9;
      if (v12 == v8)
      {
        v29 = v37;
        goto LABEL_37;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_37:

  return v29;
}

uint64_t sub_23C624EB0(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v33 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v8 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v29 = i;
    v30 = v6;
    v28 = a1;
    while (1)
    {
      if (v32)
      {
        v9 = MEMORY[0x23EED7610](v8, a1);
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          goto LABEL_35;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB858, 0x277D58930);
      v12 = sub_23C870D44();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 trpId];
        if (v14)
        {
          v15 = v14;
          v16 = a2;
          sub_23C871AB4();

          v17 = sub_23C870B74();
          v18 = *(v17 - 8);
          if ((*(v18 + 48))(v6, 1, v17) == 1)
          {
            sub_23C5FE4E4(v6);
            v19 = 0;
            v20 = 0;
          }

          else
          {
            v19 = sub_23C870B04();
            v21 = v6;
            v20 = v22;
            (*(v18 + 8))(v21, v17);
          }

          a2 = v16;
          a1 = v28;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        v23 = sub_23C6022E4();
        if (!v24)
        {
          v23 = sub_23C601F9C();
        }

        if (v20)
        {
          if (v24)
          {
            if (v19 == v23 && v20 == v24)
            {

              i = v29;
LABEL_28:
              sub_23C601F9C();
              v6 = v30;
              if (v26)
              {

                sub_23C871D54();
                sub_23C871D94();
                sub_23C871DA4();
                sub_23C871D64();
              }

              else
              {
              }

              goto LABEL_5;
            }

            v25 = sub_23C872014();

            i = v29;
            if (v25)
            {
              goto LABEL_28;
            }

            v6 = v30;
          }

          else
          {

            i = v29;
            v6 = v30;
          }
        }

        else
        {
          i = v29;
          if (!v24)
          {
            goto LABEL_28;
          }

          v6 = v30;
        }
      }

      else
      {
      }

LABEL_5:
      ++v8;
      if (v11 == i)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C625220(unint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v44 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v6 = a1;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v41 = v5;
    v42 = i;
    v8 = 0;
    v38 = v6;
    v39 = v43 + 8;
    v5 = v6;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v40 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v11 = MEMORY[0x23EED7610](v8, v5);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_33;
        }

        v11 = *&v5[8 * v8 + 32];
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB860, 0x277D59860);
      a1 = v12;
      v14 = sub_23C870D44();
      if (v14)
      {
        v15 = v14;
        v16 = [v14 trpId];
        if (!v16)
        {
          goto LABEL_14;
        }

        v17 = v16;
        v18 = v5;
        v19 = v9;
        v20 = v41;
        sub_23C871AB4();

        v21 = sub_23C870B74();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v20, 1, v21) == 1)
        {
          sub_23C5FE4E4(v20);
          v9 = v19;
          v10 = v40;
          v5 = v18;
LABEL_14:
          v23 = v9;
          v24 = v5;
          sub_23C601F9C();
          a1 = v25;
          if (v25)
          {
LABEL_15:

LABEL_28:
            v5 = v24;
            v9 = v23;
            i = v42;
            goto LABEL_5;
          }

          goto LABEL_25;
        }

        v26 = sub_23C870B04();
        v28 = v27;
        v29 = v21;
        v30 = v28;
        (*(v22 + 8))(v20, v29);
        v31 = sub_23C601F9C();
        a1 = v32;
        if (!v30)
        {
          v24 = v38;
          v23 = v19;
          v10 = v40;
          if (v32)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

        v9 = v19;
        if (v32)
        {
          v33 = v26;
          v23 = v19;
          v10 = v40;
          if (v33 == v31 && v32 == v30)
          {

            v24 = v38;
          }

          else
          {
            v34 = sub_23C872014();

            v24 = v38;
            if ((v34 & 1) == 0)
            {

              goto LABEL_28;
            }
          }

LABEL_25:
          v35 = *(v39 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);

          if (v35)
          {
            a1 = &v44;
            sub_23C871D54();
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }

          goto LABEL_28;
        }

        v5 = v38;
        i = v42;
        v10 = v40;
      }

      else
      {
      }

LABEL_5:
      ++v8;
      if (v13 == i)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v6 = a1;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C6255E4(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v35 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v8 = 0;
    v29 = a2 + 8;
    v30 = a1;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = a1 & 0xC000000000000001;
    v31 = i;
    v32 = v6;
    while (1)
    {
      if (v34)
      {
        v9 = MEMORY[0x23EED7610](v8, a1);
      }

      else
      {
        if (v8 >= *(v33 + 16))
        {
          goto LABEL_35;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB4A8, 0x277D59858);
      v12 = sub_23C870D44();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 rootTrpId];
        if (v14)
        {
          v15 = v14;
          v16 = a2;
          sub_23C871AB4();

          v17 = sub_23C870B74();
          v18 = *(v17 - 8);
          if ((*(v18 + 48))(v6, 1, v17) == 1)
          {
            sub_23C5FE4E4(v6);
            v19 = 0;
            v20 = 0;
          }

          else
          {
            v19 = sub_23C870B04();
            v21 = v6;
            v20 = v22;
            (*(v18 + 8))(v21, v17);
          }

          a2 = v16;
          a1 = v30;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        v23 = sub_23C6022E4();
        if (!v24)
        {
          v23 = sub_23C601F9C();
        }

        if (v20)
        {
          if (!v24)
          {

            i = v31;
            v6 = v32;
            goto LABEL_5;
          }

          if (v19 == v23 && v20 == v24)
          {

            i = v31;
          }

          else
          {
            v25 = sub_23C872014();

            i = v31;
            if ((v25 & 1) == 0)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          i = v31;
          if (v24)
          {

            v6 = v32;
            goto LABEL_5;
          }
        }

        if (!*(v29 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId))
        {
          sub_23C601F9C();
          if (!v26)
          {
LABEL_31:

            v6 = v32;
            goto LABEL_5;
          }
        }

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
        v6 = v32;
      }

      else
      {
      }

LABEL_5:
      ++v8;
      if (v11 == i)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C625984(uint64_t a1, uint64_t a2, SEL *a3)
{
  v45 = a3;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v46 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v8)
  {
    v9 = 0;
    v39 = v43 + 8;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = &qword_27E1FB408;
    v40 = v7 & 0xC000000000000001;
    v41 = v6;
    v42 = v7 & 0xFFFFFFFFFFFFFF8;
    v44 = v8;
    while (1)
    {
      if (v10)
      {
        v13 = MEMORY[0x23EED7610](v9, v7);
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_43;
        }

        v13 = *(v7 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v8 = sub_23C871C34();
        goto LABEL_3;
      }

      sub_23C5A3FDC(0, v12, 0x277D590F0);
      v6 = v14;
      v16 = sub_23C870D44();
      if (v16)
      {
        break;
      }

LABEL_6:
      ++v9;
      if (v15 == v8)
      {
        v36 = v46;
        goto LABEL_41;
      }
    }

    v17 = v16;
    v18 = [v16 cdmRequestContext];
    if (!v18)
    {

      goto LABEL_6;
    }

    v19 = v12;
    v6 = v18;
    v20 = [v18 *v45];

    if (!v20)
    {

      goto LABEL_36;
    }

    v21 = [v17 eventMetadata];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 trpId];

      if (v23)
      {
        v24 = v41;
        sub_23C871AB4();

        v25 = sub_23C870B74();
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v24, 1, v25) != 1)
        {
          v38 = sub_23C870B04();
          v29 = v28;
          v30 = v25;
          v31 = v29;
          (*(v26 + 8))(v24, v30);
          v32 = sub_23C601F9C();
          v6 = v33;
          if (v31)
          {
            v10 = v40;
            v12 = v19;
            if (v33)
            {
              if (v38 == v32 && v33 == v31)
              {

LABEL_32:
                v35 = *(v39 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);

                if (v35)
                {
                  v6 = &v46;
                  sub_23C871D54();
                  sub_23C871D94();
                  sub_23C871DA4();
                  sub_23C871D64();
                }

                else
                {
                }

                v11 = v42;
LABEL_36:
                v12 = v19;
                v8 = v44;
                goto LABEL_6;
              }

              v34 = sub_23C872014();

              if (v34)
              {
                goto LABEL_32;
              }

              goto LABEL_20;
            }
          }

          else
          {
            v10 = v40;
            v12 = v19;
            if (!v33)
            {
              goto LABEL_32;
            }
          }

LABEL_19:

LABEL_20:
          v11 = v42;
          v8 = v44;
          goto LABEL_6;
        }

        sub_23C5FE4E4(v24);
        v10 = v40;
      }
    }

    sub_23C601F9C();
    v6 = v27;
    v12 = v19;
    if (!v27)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_41:

  return v36;
}

uint64_t sub_23C625DB8(unint64_t a1, uint64_t a2, SEL *a3)
{
  v38 = a2;
  v39 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v40 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = v6;
    v35 = v38 + 8;
    v36 = a1 & 0xC000000000000001;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v11 = MEMORY[0x23EED7610](v8, a1);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_35;
        }

        v11 = *(a1 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB818, 0x277D597F8);
      v14 = sub_23C870D44();
      if (v14)
      {
        v15 = v14;
        v16 = [v14 *v39];
        if (!v16)
        {

          goto LABEL_5;
        }

        v17 = [v15 trpId];
        if (!v17)
        {
          goto LABEL_15;
        }

        v18 = v17;
        v19 = a1;
        v20 = i;
        sub_23C871AB4();

        v21 = sub_23C870B74();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v6, 1, v21) == 1)
        {
          sub_23C5FE4E4(v6);
          i = v20;
          a1 = v19;
          v9 = v36;
LABEL_15:
          sub_23C601F9C();
          if (!v23)
          {
            goto LABEL_27;
          }

LABEL_16:

          v10 = v37;
          goto LABEL_5;
        }

        v24 = sub_23C870B04();
        v25 = v6;
        v34 = v24;
        v27 = v26;
        (*(v22 + 8))(v25, v21);
        v28 = sub_23C601F9C();
        if (!v27)
        {
          v6 = v33;
          i = v20;
          a1 = v19;
          v9 = v36;
          if (!v29)
          {
            goto LABEL_27;
          }

          goto LABEL_16;
        }

        i = v20;
        if (v29)
        {
          a1 = v19;
          if (v34 == v28 && v29 == v27)
          {

            v6 = v33;
            v9 = v36;
LABEL_27:
            v31 = *(v35 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);

            if (v31)
            {
              sub_23C871D54();
              sub_23C871D94();
              sub_23C871DA4();
              sub_23C871D64();
            }

            else
            {
            }

            v10 = v37;
            goto LABEL_5;
          }

          v30 = sub_23C872014();

          v6 = v33;
          v9 = v36;
          if (v30)
          {
            goto LABEL_27;
          }

          v10 = v37;
        }

        else
        {

          v6 = v33;
          a1 = v19;
          v9 = v36;
          v10 = v37;
        }
      }

      else
      {
      }

LABEL_5:
      ++v8;
      if (v13 == i)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C62617C(uint64_t a1)
{
  v13 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EED7610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      v8 = sub_23C870D44();
      if (v8 && (v9 = v8, v10 = sub_23C620CA8(v8), v9, (v10 & 1) != 0))
      {
        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v11 = v13;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_17:

  return v11;
}

uint64_t sub_23C626314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v26 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x23EED7610](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v5 = sub_23C871C34();
        goto LABEL_3;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      v12 = sub_23C870D44();
      if (!v12)
      {
        goto LABEL_5;
      }

      v13 = v12;
      v14 = [v12 eventMetadata];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 resultCandidateId];

        if (v16)
        {
          break;
        }
      }

      if (!a3)
      {

        goto LABEL_23;
      }

LABEL_6:
      ++v6;
      if (v11 == v5)
      {
        v24 = v29;
        goto LABEL_27;
      }
    }

    v17 = v5;
    v18 = v8;
    v19 = v7;
    v20 = sub_23C871784();
    v22 = v21;

    if (!a3)
    {

      v7 = v19;
      v8 = v18;
      v5 = v17;
      v4 = v26;
      goto LABEL_6;
    }

    if (v20 == a2 && v22 == a3)
    {

      v7 = v19;
      v8 = v18;
      v5 = v17;
      v4 = v26;
LABEL_23:
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
      goto LABEL_6;
    }

    v23 = sub_23C872014();

    v7 = v19;
    v8 = v18;
    v5 = v17;
    v4 = v26;
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_5:

    goto LABEL_6;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_27:

  return v24;
}

uint64_t sub_23C6265D8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall OrderedEvent.getTrpId()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v253 = &v246 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v263 = &v246 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v262 = &v246 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v261 = &v246 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v260 = &v246 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v259 = &v246 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v246 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v247 = &v246 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v248 = &v246 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v250 = &v246 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v252 = &v246 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v255 = &v246 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v256 = &v246 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v249 = &v246 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v251 = &v246 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v254 = &v246 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v257 = &v246 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v258 = &v246 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v246 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v246 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v246 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v246 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v246 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v246 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v246 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = &v246 - v59;
  v61 = sub_23C870CA4();
  if (!v61)
  {
    goto LABEL_122;
  }

  v62 = v61;
  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (v63)
  {
    v64 = [v63 eventMetadata];
    if (v64)
    {
      v65 = v62;
      v66 = v64;
      v67 = [v64 trpId];

      if (v67)
      {
        sub_23C871AB4();

        v68 = sub_23C870B74();
        v69 = *(v68 - 8);
        if ((*(v69 + 48))(v60, 1, v68) == 1)
        {

LABEL_7:
          sub_23C5FE4E4(v60);
LABEL_121:
          v61 = 0;
LABEL_122:
          v85 = 0;
          goto LABEL_173;
        }

        v82 = sub_23C870B04();
        v84 = v83;

        (*(v69 + 8))(v60, v68);
        goto LABEL_20;
      }

LABEL_120:

      goto LABEL_121;
    }

LABEL_97:

    goto LABEL_121;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (v70)
  {
    v71 = [v70 eventMetadata];
    if (!v71)
    {
      goto LABEL_97;
    }

    v65 = v62;
    v72 = v71;
    v73 = [v71 trpId];

    if (!v73)
    {
      goto LABEL_120;
    }

    sub_23C871AB4();

    v74 = sub_23C870B74();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v58, 1, v74) == 1)
    {

      sub_23C5FE4E4(v58);
      goto LABEL_121;
    }

    v93 = sub_23C870B04();
    v95 = v94;

    v96 = *(v75 + 8);
    v97 = v58;
    goto LABEL_27;
  }

  objc_opt_self();
  v76 = swift_dynamicCastObjCClass();
  if (v76)
  {
    v77 = [v76 eventMetadata];
    if (!v77)
    {
      goto LABEL_97;
    }

    v65 = v62;
    v78 = v77;
    v79 = [v77 trpId];

    if (!v79)
    {
      goto LABEL_120;
    }

    sub_23C871AB4();

    v80 = sub_23C870B74();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v55, 1, v80) == 1)
    {

LABEL_18:
      sub_23C5FE4E4(v55);
      goto LABEL_121;
    }

    v93 = sub_23C870B04();
    v95 = v105;

    v96 = *(v81 + 8);
    v97 = v55;
LABEL_35:
    v98 = v80;
    goto LABEL_36;
  }

  objc_opt_self();
  v86 = swift_dynamicCastObjCClass();
  if (v86)
  {
    v87 = [v86 eventMetadata];
    if (!v87)
    {
      goto LABEL_97;
    }

    v88 = v62;
    v89 = v87;
    v90 = [v87 trpId];

    if (v90)
    {
      sub_23C871AB4();

      v91 = sub_23C870B74();
      v92 = *(v91 - 8);
      if ((*(v92 + 48))(v52, 1, v91) == 1)
      {

        sub_23C5FE4E4(v52);
        goto LABEL_121;
      }

      v82 = sub_23C870B04();
      v84 = v112;

      (*(v92 + 8))(v52, v91);
      goto LABEL_20;
    }

LABEL_56:

    goto LABEL_121;
  }

  objc_opt_self();
  v99 = swift_dynamicCastObjCClass();
  if (!v99)
  {
    objc_opt_self();
    v106 = swift_dynamicCastObjCClass();
    if (v106)
    {
      v107 = [v106 eventMetadata];
      if (!v107)
      {
        goto LABEL_97;
      }

      v88 = v62;
      v108 = v107;
      v109 = [v107 trpId];

      if (!v109)
      {
        goto LABEL_56;
      }

      sub_23C871AB4();

      v110 = sub_23C870B74();
      v111 = *(v110 - 8);
      if ((*(v111 + 48))(v46, 1, v110) == 1)
      {

        sub_23C5FE4E4(v46);
        goto LABEL_121;
      }

      v82 = sub_23C870B04();
      v84 = v126;

      (*(v111 + 8))(v46, v110);
      goto LABEL_20;
    }

    objc_opt_self();
    v113 = swift_dynamicCastObjCClass();
    if (v113)
    {
      v114 = [v113 eventMetadata];
      if (!v114)
      {
        goto LABEL_97;
      }

      v88 = v62;
      v115 = v114;
      v116 = [v114 trpId];

      if (!v116)
      {
        goto LABEL_56;
      }

      sub_23C871AB4();

      v117 = sub_23C870B74();
      v118 = *(v117 - 8);
      if ((*(v118 + 48))(v43, 1, v117) == 1)
      {

LABEL_48:
        sub_23C5FE4E4(v43);
        goto LABEL_121;
      }

      v82 = sub_23C870B04();
      v84 = v134;

LABEL_66:
      (*(v118 + 8))(v43, v117);
      goto LABEL_20;
    }

    objc_opt_self();
    v120 = swift_dynamicCastObjCClass();
    if (v120)
    {
      v121 = [v120 eventMetadata];
      if (!v121)
      {
        goto LABEL_97;
      }

      v88 = v62;
      v122 = v121;
      v123 = [v121 trpId];

      if (!v123)
      {
        goto LABEL_56;
      }

      sub_23C871AB4();

      v124 = sub_23C870B74();
      v125 = *(v124 - 8);
      if ((*(v125 + 48))(v40, 1, v124) != 1)
      {
        v82 = sub_23C870B04();
        v84 = v144;

        (*(v125 + 8))(v40, v124);
        goto LABEL_20;
      }

LABEL_55:
      sub_23C5FE4E4(v40);
      goto LABEL_121;
    }

    objc_opt_self();
    v127 = swift_dynamicCastObjCClass();
    if (v127)
    {
      v128 = [v127 innerEvent];
      if (!v128)
      {
        goto LABEL_97;
      }

      v65 = v128;
      v129 = v62;
      objc_opt_self();
      v130 = swift_dynamicCastObjCClass();
      if (v130)
      {
        v131 = [v130 trpId];
        if (v131)
        {
          v132 = v131;
          v133 = v258;
          sub_23C871AB4();

          v117 = sub_23C870B74();
          v118 = *(v117 - 8);
          if ((*(v118 + 48))(v133, 1, v117) == 1)
          {

            sub_23C5FE4E4(v258);
            goto LABEL_121;
          }

          v43 = v258;
          goto LABEL_132;
        }

LABEL_119:

        goto LABEL_120;
      }

      objc_opt_self();
      v145 = swift_dynamicCastObjCClass();
      if (v145)
      {
        v146 = [v145 trpId];
        if (!v146)
        {
          goto LABEL_119;
        }

        v147 = v146;
        v148 = v257;
        sub_23C871AB4();

        v117 = sub_23C870B74();
        v118 = *(v117 - 8);
        if ((*(v118 + 48))(v148, 1, v117) == 1)
        {

          sub_23C5FE4E4(v257);
          goto LABEL_121;
        }

        v43 = v257;
      }

      else
      {
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = [v158 trpId];
          if (!v159)
          {
            goto LABEL_119;
          }

          v160 = v159;
          v161 = v254;
          sub_23C871AB4();

          v117 = sub_23C870B74();
          v118 = *(v117 - 8);
          if ((*(v118 + 48))(v161, 1, v117) == 1)
          {

            sub_23C5FE4E4(v254);
            goto LABEL_121;
          }

          v43 = v254;
        }

        else
        {
          objc_opt_self();
          v174 = swift_dynamicCastObjCClass();
          if (v174)
          {
            v175 = [v174 trpId];
            if (!v175)
            {
              goto LABEL_119;
            }

            v176 = v175;
            v177 = v251;
            sub_23C871AB4();

            v117 = sub_23C870B74();
            v118 = *(v117 - 8);
            if ((*(v118 + 48))(v177, 1, v117) == 1)
            {

              sub_23C5FE4E4(v251);
              goto LABEL_121;
            }

            v43 = v251;
          }

          else
          {
            objc_opt_self();
            v185 = swift_dynamicCastObjCClass();
            if (!v185)
            {
              goto LABEL_119;
            }

            v186 = [v185 trpId];
            if (!v186)
            {
              goto LABEL_119;
            }

            v187 = v186;
            v188 = v249;
            sub_23C871AB4();

            v117 = sub_23C870B74();
            v118 = *(v117 - 8);
            if ((*(v118 + 48))(v188, 1, v117) == 1)
            {

              sub_23C5FE4E4(v249);
              goto LABEL_121;
            }

            v43 = v249;
          }
        }
      }

LABEL_132:
      v82 = sub_23C870B04();
      v84 = v195;

      goto LABEL_66;
    }

    v43 = v259;
    v40 = v260;
    v49 = v261;
    v60 = v262;
    v55 = v263;
    objc_opt_self();
    v135 = swift_dynamicCastObjCClass();
    if (v135)
    {
      v65 = v62;
      v136 = [v135 innerEvent];
      if (!v136)
      {
        goto LABEL_120;
      }

      v137 = v136;
      objc_opt_self();
      v138 = swift_dynamicCastObjCClass();
      if (!v138 || (v139 = [v138 startedOrChanged]) == 0 || (v140 = v139, v141 = objc_msgSend(v139, sel_trpId), v140, !v141))
      {

        goto LABEL_121;
      }

      v142 = v256;
      sub_23C871AB4();

      v80 = sub_23C870B74();
      v143 = *(v80 - 8);
      if ((*(v143 + 48))(v142, 1, v80) == 1)
      {

        sub_23C5FE4E4(v256);
        goto LABEL_121;
      }

      v178 = v256;
      v93 = sub_23C870B04();
      v95 = v179;

      v96 = *(v143 + 8);
      v97 = v178;
      goto LABEL_35;
    }

    objc_opt_self();
    v149 = v62;
    v150 = swift_dynamicCastObjCClass();
    if (!v150)
    {
      objc_opt_self();
      v162 = swift_dynamicCastObjCClass();
      if (!v162)
      {
        goto LABEL_97;
      }

      v163 = [v162 innerEvent];
      if (!v163)
      {
        goto LABEL_97;
      }

      v164 = v163;
      objc_opt_self();
      v165 = swift_dynamicCastObjCClass();
      if (!v165 || (v166 = [v165 trpId]) == 0)
      {

        goto LABEL_121;
      }

      v167 = v166;
      v168 = v253;
      sub_23C871AB4();

      v80 = sub_23C870B74();
      v169 = *(v80 - 8);
      if ((*(v169 + 48))(v168, 1, v80) == 1)
      {

        sub_23C5FE4E4(v253);
        goto LABEL_121;
      }

      v189 = v253;
      v93 = sub_23C870B04();
      v95 = v190;

      v96 = *(v169 + 8);
      v97 = v189;
      goto LABEL_35;
    }

    v151 = [v150 innerEvent];
    if (!v151)
    {
      goto LABEL_97;
    }

    v152 = v151;
    objc_opt_self();
    v153 = swift_dynamicCastObjCClass();
    if (v153)
    {
      v154 = [v153 trpId];
      if (v154)
      {
        v155 = v154;
        v156 = v255;
        sub_23C871AB4();

        v74 = sub_23C870B74();
        v157 = *(v74 - 8);
        if ((*(v157 + 48))(v156, 1, v74) == 1)
        {

          sub_23C5FE4E4(v255);
          goto LABEL_121;
        }

        v180 = v255;
        goto LABEL_143;
      }

LABEL_170:

      goto LABEL_121;
    }

    objc_opt_self();
    v170 = swift_dynamicCastObjCClass();
    if (v170)
    {
      v171 = [v170 trpId];
      if (!v171)
      {
        goto LABEL_170;
      }

      v172 = v171;
      v173 = v252;
      sub_23C871AB4();

      v74 = sub_23C870B74();
      v157 = *(v74 - 8);
      if ((*(v157 + 48))(v173, 1, v74) == 1)
      {

        sub_23C5FE4E4(v252);
        goto LABEL_121;
      }

      v180 = v252;
    }

    else
    {
      objc_opt_self();
      v181 = swift_dynamicCastObjCClass();
      if (v181)
      {
        v182 = [v181 trpId];
        if (!v182)
        {
          goto LABEL_170;
        }

        v183 = v182;
        v184 = v250;
        sub_23C871AB4();

        v74 = sub_23C870B74();
        v157 = *(v74 - 8);
        if ((*(v157 + 48))(v184, 1, v74) == 1)
        {

          sub_23C5FE4E4(v250);
          goto LABEL_121;
        }

        v180 = v250;
      }

      else
      {
        objc_opt_self();
        v191 = swift_dynamicCastObjCClass();
        if (v191)
        {
          v192 = [v191 trpId];
          if (!v192)
          {
            goto LABEL_170;
          }

          v193 = v192;
          v194 = v248;
          sub_23C871AB4();

          v74 = sub_23C870B74();
          v157 = *(v74 - 8);
          if ((*(v157 + 48))(v194, 1, v74) == 1)
          {

            sub_23C5FE4E4(v248);
            goto LABEL_121;
          }

          v180 = v248;
        }

        else
        {
          objc_opt_self();
          v196 = swift_dynamicCastObjCClass();
          if (!v196)
          {
            objc_opt_self();
            v200 = swift_dynamicCastObjCClass();
            if (v200)
            {
              v201 = [v200 trpId];
              if (!v201)
              {
                goto LABEL_170;
              }

              v202 = v201;
              sub_23C871AB4();

              v203 = sub_23C870B74();
              v204 = *(v203 - 8);
              if ((*(v204 + 48))(v15, 1, v203) == 1)
              {

                sub_23C5FE4E4(v15);
                goto LABEL_121;
              }

              v211 = v15;
              v212 = sub_23C870B04();
              v214 = v213;

              (*(v204 + 8))(v211, v203);
            }

            else
            {
              objc_opt_self();
              v206 = swift_dynamicCastObjCClass();
              if (v206)
              {
                v207 = [v206 trpId];
                if (!v207)
                {
                  goto LABEL_170;
                }

                v208 = v207;
                sub_23C871AB4();

                v209 = sub_23C870B74();
                v210 = *(v209 - 8);
                if ((*(v210 + 48))(v43, 1, v209) == 1)
                {

                  goto LABEL_48;
                }

                v212 = sub_23C870B04();
                v214 = v220;

                (*(v210 + 8))(v43, v209);
              }

              else
              {
                objc_opt_self();
                v215 = swift_dynamicCastObjCClass();
                if (v215)
                {
                  v216 = [v215 trpId];
                  if (!v216)
                  {
                    goto LABEL_170;
                  }

                  v217 = v216;
                  sub_23C871AB4();

                  v218 = sub_23C870B74();
                  v219 = *(v218 - 8);
                  if ((*(v219 + 48))(v40, 1, v218) == 1)
                  {

                    goto LABEL_55;
                  }

                  v212 = sub_23C870B04();
                  v214 = v226;

                  (*(v219 + 8))(v40, v218);
                }

                else
                {
                  objc_opt_self();
                  v221 = swift_dynamicCastObjCClass();
                  if (v221)
                  {
                    v222 = [v221 trpId];
                    if (!v222)
                    {
                      goto LABEL_170;
                    }

                    v223 = v222;
                    sub_23C871AB4();

                    v224 = sub_23C870B74();
                    v225 = *(v224 - 8);
                    if ((*(v225 + 48))(v49, 1, v224) == 1)
                    {

                      goto LABEL_33;
                    }

                    v212 = sub_23C870B04();
                    v214 = v232;

                    (*(v225 + 8))(v49, v224);
                  }

                  else
                  {
                    objc_opt_self();
                    v227 = swift_dynamicCastObjCClass();
                    if (!v227)
                    {
                      objc_opt_self();
                      v233 = swift_dynamicCastObjCClass();
                      if (v233)
                      {
                        v234 = [v233 startedOrChanged];
                        if (v234)
                        {
                          v235 = v234;
                          v236 = [v234 trpId];

                          if (v236)
                          {
                            sub_23C871AB4();

                            v237 = sub_23C870B74();
                            v238 = *(v237 - 8);
                            if ((*(v238 + 48))(v55, 1, v237) != 1)
                            {
                              v241 = v55;
                              v242 = sub_23C870B04();
                              v244 = v243;

                              (*(v238 + 8))(v241, v237);
                              v85 = v244;
                              v61 = v242;
                              goto LABEL_173;
                            }

                            goto LABEL_18;
                          }
                        }
                      }

                      goto LABEL_170;
                    }

                    v228 = [v227 trpId];
                    if (!v228)
                    {
                      goto LABEL_170;
                    }

                    v229 = v228;
                    sub_23C871AB4();

                    v230 = sub_23C870B74();
                    v231 = *(v230 - 8);
                    if ((*(v231 + 48))(v60, 1, v230) == 1)
                    {

                      goto LABEL_7;
                    }

                    v239 = v60;
                    v212 = sub_23C870B04();
                    v214 = v240;

                    (*(v231 + 8))(v239, v230);
                  }
                }
              }
            }

            v85 = v214;
            v61 = v212;
            goto LABEL_173;
          }

          v197 = [v196 trpId];
          if (!v197)
          {
            goto LABEL_170;
          }

          v198 = v197;
          v199 = v247;
          sub_23C871AB4();

          v74 = sub_23C870B74();
          v157 = *(v74 - 8);
          if ((*(v157 + 48))(v199, 1, v74) == 1)
          {

            sub_23C5FE4E4(v247);
            goto LABEL_121;
          }

          v180 = v247;
        }
      }
    }

LABEL_143:
    v93 = sub_23C870B04();
    v95 = v205;

    v96 = *(v157 + 8);
    v97 = v180;
LABEL_27:
    v98 = v74;
LABEL_36:
    v96(v97, v98);
    v85 = v95;
    v61 = v93;
    goto LABEL_173;
  }

  v100 = [v99 eventMetadata];
  if (!v100)
  {
    goto LABEL_97;
  }

  v88 = v62;
  v101 = v100;
  v102 = [v100 trpId];

  if (!v102)
  {
    goto LABEL_56;
  }

  sub_23C871AB4();

  v103 = sub_23C870B74();
  v104 = *(v103 - 8);
  if ((*(v104 + 48))(v49, 1, v103) == 1)
  {

LABEL_33:
    sub_23C5FE4E4(v49);
    goto LABEL_121;
  }

  v82 = sub_23C870B04();
  v84 = v119;

  (*(v104 + 8))(v49, v103);
LABEL_20:
  v85 = v84;
  v61 = v82;
LABEL_173:
  result.value._object = v85;
  result.value._countAndFlagsBits = v61;
  return result;
}

void *Array<A>.filter(finalTrpId:rootTrpId:)(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v5 = a5;
  if (!a2)
  {

    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  if (a5 >> 62)
  {
LABEL_28:
    v6 = sub_23C871C34();
    if (v6)
    {
      goto LABEL_4;
    }

    return MEMORY[0x277D84F90];
  }

  v6 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_4:
  for (i = 0; ; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x23EED7610](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = OrderedEvent.getTrpId()();
    if (!v11.value._object)
    {
      goto LABEL_6;
    }

    result = sub_23C870CA4();
    if (!result)
    {
      break;
    }

    v13 = result;
    ObjectType = swift_getObjectType();

    if (ObjectType == sub_23C628424() && a4)
    {
      if (v11.value._countAndFlagsBits == a3 && v11.value._object == a4)
      {
        goto LABEL_5;
      }
    }

    else if (v11.value._countAndFlagsBits == a1 && v11.value._object == a2)
    {
LABEL_5:

      goto LABEL_6;
    }

    v15 = sub_23C872014();

    if ((v15 & 1) == 0)
    {

      goto LABEL_7;
    }

LABEL_6:
    sub_23C871D54();
    sub_23C871D94();
    sub_23C871DA4();
    sub_23C871D64();
LABEL_7:
    if (v10 == v6)
    {
      return v20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23C628424()
{
  result = qword_27E1FB868;
  if (!qword_27E1FB868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1FB868);
  }

  return result;
}

uint64_t PublisherProtocol.toAsyncSequence()@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v3, a1);
  return sub_23C585D20(v7, a1, a3);
}

uint64_t PublisherProtocol.toSequence()(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_23C62856C, 0, 0);
}

uint64_t sub_23C62856C()
{
  v12 = v0;
  v1 = (v0 + 2);
  v2 = v0[12];
  v3 = v0[11];
  v0[14] = swift_getAssociatedTypeWitness();
  v0[6] = sub_23C8718E4();
  PublisherProtocol.toAsyncSequence()(v3, &v11);
  v5 = type metadata accessor for BiomeAsyncSequence(0, v3, v2, v4);
  v6 = BiomeAsyncSequence.makeAsyncIterator()(v5);
  swift_unknownObjectRelease();
  v0[7] = v6;
  v7 = swift_task_alloc();
  v0[15] = v7;
  v14.val[0] = *(v0 + 11);
  v14.val[1] = v14.val[0];
  vst2q_f64(v1, v14);
  v8 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator(0, (v0 + 2));
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_23C6286DC;

  return MEMORY[0x282200320](v0 + 8, 0, 0, v8, WitnessTable, v0 + 9);
}

uint64_t sub_23C6286DC()
{

  if (v0)
  {

    v1 = sub_23C62896C;
  }

  else
  {
    v1 = sub_23C6287F4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23C6287F4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    *(v0 + 80) = v1;
    sub_23C871924();
    sub_23C871914();
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    v10.val[0] = *(v0 + 88);
    v10.val[1] = v10.val[0];
    v2 = (v0 + 16);
    vst2q_f64(v2, v10);
    v4 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator(0, v0 + 16);
    WitnessTable = swift_getWitnessTable();
    *v3 = v0;
    v3[1] = sub_23C6286DC;

    return MEMORY[0x282200320](v0 + 64, 0, 0, v4, WitnessTable, v0 + 72);
  }

  else
  {

    v6 = *(v0 + 48);
    v7 = *(v0 + 8);

    return v7(v6);
  }
}

uint64_t sub_23C62896C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C6289D0()
{
  *(v1 + 48) = v0;
  sub_23C870C34();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_23C628A70;

  return MEMORY[0x2821B6740]();
}

uint64_t sub_23C628A70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[8] = a1;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C628BAC, 0, 0);
  }
}

uint64_t sub_23C628BAC(uint64_t a1)
{
  v2 = v1[8];
  if (v2)
  {
    v3 = v1[4];
    v4 = v1[6];
    v5 = *(v4 + 24);
    *(v4 + 24) = v2;

    *(v4 + 32) = v3;

    v6 = v1[1];
  }

  else
  {
    v7 = sub_23C871634();
    v8 = sub_23C871AD4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23C56D000, v7, v8, "Unable to establish stream with Raw SiriAnalytics", v9, 2u);
      MEMORY[0x23EED8240](v9, -1, -1);
    }

    sub_23C6295E0();
    swift_allocError();
    *v10 = 0xD00000000000002DLL;
    v10[1] = 0x800000023C8AA100;
    swift_willThrow();
    v6 = v1[1];
  }

  return v6();
}

void *sub_23C628D04@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v62 = a8;
  v60 = a6;
  v61 = a5;
  LODWORD(v59) = a4;
  v50 = a1;
  v51 = a3;
  v58 = a9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA10, &unk_23C87BB90);
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - v13;
  v14 = sub_23C870AE4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v50 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v50 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v50 - v31;
  if (a2)
  {
    v33 = *(v15 + 56);
    v33(&v50 - v31, 1, 1, v14);
  }

  else
  {
    sub_23C870A54();
    (*(v15 + 32))(v32, v20, v14);
    v33 = *(v15 + 56);
    v33(v32, 0, 1, v14);
  }

  if (v59)
  {
    v34 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v15 + 32))(v30, v18, v14);
    v34 = 0;
  }

  v33(v30, v34, 1, v14);
  sub_23C60D7E8(v32, v27);
  v59 = v30;
  sub_23C60D7E8(v30, v24);
  if (v60)
  {
    v35 = 0;
  }

  else
  {
    v35 = v61;
  }

  if (v62)
  {
    v36 = 0;
  }

  else
  {
    v36 = a7;
  }

  v37 = *(v15 + 48);
  v38 = 0;
  if (v37(v27, 1, v14) != 1)
  {
    v38 = sub_23C870A84();
    (*(v15 + 8))(v27, v14);
  }

  if (v37(v24, 1, v14) == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_23C870A84();
    (*(v15 + 8))(v24, v14);
  }

  v40 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v41 = [v40 initWithStartDate:v38 endDate:v39 maxEvents:v35 lastN:v36 reversed:{0, v50, v51}];

  result = *(v63 + 24);
  if (result)
  {
    v43 = [result publisherWithOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
    v44 = v52;
    sub_23C870C14();
    v45 = type metadata accessor for AnteroEvent(0);
    sub_23C611604(&qword_27E1FBA18, &unk_27E2054E0, &unk_23C87B440, MEMORY[0x277CF1770]);
    v47 = v54;
    v46 = v55;
    sub_23C870BB4();
    (*(v53 + 8))(v44, v46);
    sub_23C611604(&qword_27E1FBA20, &qword_27E1FBA10, &unk_23C87BB90, MEMORY[0x277CF1750]);
    v48 = v57;
    v49 = sub_23C870BA4();
    MEMORY[0x23EED64F0](v49, v45);

    (*(v56 + 8))(v47, v48);
    sub_23C629578(v59);
    return sub_23C629578(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23C6292EC(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  v2 = a1;
  v3 = TimestampedOrderedEvent.init(rawEvent:)(v2);
  [v2 timestamp];
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for AnteroEvent(0));
  v7 = sub_23C585090(v3, v5);

  return v7;
}

uint64_t sub_23C629384()
{

  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams17RawJoinableStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RawJoinableStream(uint64_t a1)
{
  result = qword_27E1FBA00;
  if (!qword_27E1FBA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C629484(uint64_t a1)
{
  result = sub_23C871654();
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

uint64_t sub_23C629578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23C6295E0()
{
  result = qword_27E1FBA28;
  if (!qword_27E1FBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBA28);
  }

  return result;
}

uint64_t sub_23C629644()
{
  *(v1 + 48) = v0;
  sub_23C870C34();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_23C6296E4;

  return MEMORY[0x2821B6740]();
}

uint64_t sub_23C6296E4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[8] = a1;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C629820, 0, 0);
  }
}

uint64_t sub_23C629820(uint64_t a1)
{
  v2 = v1[8];
  if (v2)
  {
    v3 = v1[4];
    v4 = v1[6];
    v5 = *(v4 + 16);
    *(v4 + 16) = v2;

    *(v4 + 24) = v3;

    v6 = v1[1];
  }

  else
  {
    v7 = sub_23C871634();
    v8 = sub_23C871AD4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23C56D000, v7, v8, "Unable to establish stream with Raw SiriAnalytics", v9, 2u);
      MEMORY[0x23EED8240](v9, -1, -1);
    }

    sub_23C62A178();
    swift_allocError();
    *v10 = 0xD00000000000002DLL;
    v10[1] = 0x800000023C8AA100;
    swift_willThrow();
    v6 = v1[1];
  }

  return v6();
}

void *sub_23C629978@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v62 = a8;
  v60 = a6;
  v61 = a5;
  LODWORD(v59) = a4;
  v50 = a1;
  v51 = a3;
  v58 = a9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA30, &unk_23C87B530);
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - v13;
  v14 = sub_23C870AE4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v50 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v50 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v50 - v31;
  if (a2)
  {
    v33 = *(v15 + 56);
    v33(&v50 - v31, 1, 1, v14);
  }

  else
  {
    sub_23C870A54();
    (*(v15 + 32))(v32, v20, v14);
    v33 = *(v15 + 56);
    v33(v32, 0, 1, v14);
  }

  if (v59)
  {
    v34 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v15 + 32))(v30, v18, v14);
    v34 = 0;
  }

  v33(v30, v34, 1, v14);
  sub_23C60D7E8(v32, v27);
  v59 = v30;
  sub_23C60D7E8(v30, v24);
  if (v60)
  {
    v35 = 0;
  }

  else
  {
    v35 = v61;
  }

  if (v62)
  {
    v36 = 0;
  }

  else
  {
    v36 = a7;
  }

  v37 = *(v15 + 48);
  v38 = 0;
  if (v37(v27, 1, v14) != 1)
  {
    v38 = sub_23C870A84();
    (*(v15 + 8))(v27, v14);
  }

  if (v37(v24, 1, v14) == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_23C870A84();
    (*(v15 + 8))(v24, v14);
  }

  v40 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v41 = [v40 initWithStartDate:v38 endDate:v39 maxEvents:v35 lastN:v36 reversed:{0, v50, v51}];

  result = *(v63 + 16);
  if (result)
  {
    v43 = [result publisherWithOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
    v44 = v52;
    sub_23C870C14();
    v45 = type metadata accessor for TimestampedOrderedEvent();
    sub_23C611604(&qword_27E1FBA18, &unk_27E2054E0, &unk_23C87B440, MEMORY[0x277CF1770]);
    v47 = v54;
    v46 = v55;
    sub_23C870BB4();
    (*(v53 + 8))(v44, v46);
    sub_23C611604(&qword_27E1FBA38, &qword_27E1FBA30, &unk_23C87B530, MEMORY[0x277CF1750]);
    v48 = v57;
    v49 = sub_23C870BA4();
    MEMORY[0x23EED64F0](v49, v45);

    (*(v56 + 8))(v47, v48);
    sub_23C629578(v59);
    return sub_23C629578(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C629F60(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  return TimestampedOrderedEvent.init(rawEvent:)(a1);
}

uint64_t sub_23C629FA0()
{

  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams9RawStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RawStream(uint64_t a1)
{
  result = qword_2814FABD0;
  if (!qword_2814FABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C62A0A0(uint64_t a1)
{
  result = sub_23C871654();
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

unint64_t sub_23C62A178()
{
  result = qword_27E1FBA40;
  if (!qword_27E1FBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBA40);
  }

  return result;
}

uint64_t sub_23C62A1DC(void *a1, void *a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if (a1 && a2)
  {
    v11 = a1;
    v12 = a2;
    sub_23C870D94();
    sub_23C870D94();
    v13 = sub_23C870B44();
    v14 = *(v5 + 8);
    v14(v8, v4);
    v14(v10, v4);
    if (v13)
    {
      v15 = sub_23C870DD4();
      v16 = sub_23C870DD4();

      *&result = (v15 - v16) / 1000000000.0;
      return result;
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t sub_23C62A380()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FBA48);
  __swift_project_value_buffer(v0, qword_27E1FBA48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOICE_ONLY";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOICE_FORWARD";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISPLAY_FORWARD";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "DISPLAY_ONLY";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C62A678()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FBA60);
  __swift_project_value_buffer(v0, qword_27E1FBA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "client_request_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_mode";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "response_locale";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "statement_result_digests";
  *(v15 + 8) = 24;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_23C62C6B4();
            sub_23C8710A4();
            break;
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
            sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);
            sub_23C871194();
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_23C8712C4(), !v4))
    {
      if (!*(v3 + 32) || (sub_23C62C6B4(), result = sub_23C871254(), !v4))
      {
        v10 = *(v3 + 48);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_23C8712C4(), !v4))
        {
          if (!*(*(v3 + 56) + 16) || (type metadata accessor for ResponseGenerationProtoStatementResultDigest(0), sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest), result = sub_23C8712F4(), !v4))
          {
            type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C62ACA8@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C62AD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62DA74(&qword_27E1FBAF0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C62ADE0(uint64_t a1)
{
  sub_23C62DA74(&qword_27E1FBAC8, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return sub_23C8711F4();
}

uint64_t sub_23C62AE4C(uint64_t a1, uint64_t a2)
{
  sub_23C62DA74(&qword_27E1FBAC8, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return sub_23C871204();
}

uint64_t sub_23C62AEE8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FBA78);
  __swift_project_value_buffer(v0, qword_27E1FBA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tool_definition";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_created";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statement_outcome";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undo_operation";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response_manifest";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "return_value_type_display_representation";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ResponseGenerationProtoStatementResultDigest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_23C62B4D8(a1, v5, a2, a3);
            break;
          case 5:
            sub_23C62B54C(a1, v5, a2, a3);
            break;
          case 6:
            sub_23C62B600(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
            sub_23C62DA74(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
            sub_23C8711A4();
            break;
          case 2:
            sub_23C62B370(a1, v5, a2, a3);
            break;
          case 3:
            sub_23C62B424(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C62B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoAction(0);
  sub_23C62DA74(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  return sub_23C8711A4();
}

uint64_t sub_23C62B424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_23C62DA74(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  return sub_23C8711A4();
}

uint64_t sub_23C62B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C62DA20();
  return sub_23C871094();
}

uint64_t sub_23C62B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_23C62DA74(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  return sub_23C8711A4();
}

uint64_t sub_23C62B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C62DA74(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ResponseGenerationProtoStatementResultDigest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C62B7A4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C62B9A8(v3, a1, a2, a3);
    sub_23C62BBB8(v3, a1, a2, a3);
    sub_23C62BDC8(v3, a1, a2, a3);
    sub_23C62BE58(v3, a1, a2, a3);
    sub_23C62C068(v3, a1, a2, a3);
    type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C62B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C62D9B8(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C62DA74(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  sub_23C871304();
  return sub_23C62D958(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_23C62B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB28, &qword_23C87B928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FBB28, &qword_23C87B928);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBB28, &qword_23C87B928);
  }

  sub_23C62D9B8(v7, v11, type metadata accessor for TranscriptProtoAction);
  sub_23C62DA74(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  sub_23C871304();
  return sub_23C62D958(v11, type metadata accessor for TranscriptProtoAction);
}

uint64_t sub_23C62BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FBB18, &unk_23C87B950);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBB18, &unk_23C87B950);
  }

  sub_23C62D9B8(v7, v11, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C62DA74(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  sub_23C871304();
  return sub_23C62D958(v11, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_23C62BDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    sub_23C62DA20();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C62BE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v12 + 32), v7, &qword_27E1FBB08, &unk_23C8A11D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBB08, &unk_23C8A11D0);
  }

  sub_23C62D9B8(v7, v11, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C62DA74(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  sub_23C871304();
  return sub_23C62D958(v11, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_23C62C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C62D9B8(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C62DA74(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C62D958(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C62C2C4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_23C8720F4();
  a1(0);
  sub_23C62DA74(a2, a3, a4);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C62C34C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  *(a2 + a1[7]) = 2;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[9];
  v12 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C62C528(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62DA74(&qword_27E1FBAE8, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C62C5C8(uint64_t a1)
{
  sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return sub_23C8711F4();
}

uint64_t sub_23C62C634(uint64_t a1, uint64_t a2)
{
  sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return sub_23C871204();
}

unint64_t sub_23C62C6B4()
{
  result = qword_27E1FBA90;
  if (!qword_27E1FBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBA90);
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams44ResponseGenerationProtoStatementResultDigestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v113 = a1;
  v114 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = (&v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = (&v90 - v5);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB00, &qword_23C87B910);
  MEMORY[0x28223BE20](v93);
  v96 = &v90 - v6;
  v7 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = (&v90 - v10);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB10, &qword_23C87B918);
  MEMORY[0x28223BE20](v97);
  v100 = &v90 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v105 = *(v12 - 8);
  v106 = v12;
  MEMORY[0x28223BE20](v12);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = &v90 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  MEMORY[0x28223BE20](v104);
  v107 = &v90 - v16;
  v17 = type metadata accessor for TranscriptProtoAction(0);
  v111 = *(v17 - 8);
  v112 = v17;
  MEMORY[0x28223BE20](v17);
  v103 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB28, &qword_23C87B928);
  MEMORY[0x28223BE20](v19 - 8);
  v110 = &v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB30, &unk_23C87B930);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  v24 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v90 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v90 - v33;
  v35 = *(v32 + 56);
  sub_23C5855B0(v113, &v90 - v33, &qword_27E1FACA8, &unk_23C87B940);
  sub_23C5855B0(v114, &v34[v35], &qword_27E1FACA8, &unk_23C87B940);
  v36 = *(v25 + 48);
  if (v36(v34, 1, v24) == 1)
  {
    if (v36(&v34[v35], 1, v24) == 1)
    {
      sub_23C585C34(v34, &qword_27E1FACA8, &unk_23C87B940);
      goto LABEL_8;
    }

LABEL_6:
    v37 = &qword_27E1FACB0;
    v38 = &qword_23C879010;
    v39 = v34;
LABEL_21:
    sub_23C585C34(v39, v37, v38);
    goto LABEL_22;
  }

  sub_23C5855B0(v34, v30, &qword_27E1FACA8, &unk_23C87B940);
  if (v36(&v34[v35], 1, v24) == 1)
  {
    sub_23C62D958(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_23C62D9B8(&v34[v35], v27, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v30, v27);
  sub_23C62D958(v27, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C62D958(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v34, &qword_27E1FACA8, &unk_23C87B940);
  if ((v40 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v41 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v42 = *(v41 + 20);
  v43 = *(v21 + 48);
  v44 = v113;
  sub_23C5855B0(v113 + v42, v23, &qword_27E1FBB28, &qword_23C87B928);
  v45 = v114;
  sub_23C5855B0(v114 + v42, &v23[v43], &qword_27E1FBB28, &qword_23C87B928);
  v46 = v112;
  v47 = *(v111 + 48);
  if (v47(v23, 1, v112) == 1)
  {
    if (v47(&v23[v43], 1, v46) == 1)
    {
      sub_23C585C34(v23, &qword_27E1FBB28, &qword_23C87B928);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v48 = v110;
  sub_23C5855B0(v23, v110, &qword_27E1FBB28, &qword_23C87B928);
  if (v47(&v23[v43], 1, v46) == 1)
  {
    sub_23C62D958(v48, type metadata accessor for TranscriptProtoAction);
LABEL_13:
    v37 = &qword_27E1FBB30;
    v38 = &unk_23C87B930;
    v39 = v23;
    goto LABEL_21;
  }

  v49 = v103;
  sub_23C62D9B8(&v23[v43], v103, type metadata accessor for TranscriptProtoAction);
  v50 = _s26AIMLInstrumentationStreams21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v48, v49);
  sub_23C62D958(v49, type metadata accessor for TranscriptProtoAction);
  sub_23C62D958(v48, type metadata accessor for TranscriptProtoAction);
  sub_23C585C34(v23, &qword_27E1FBB28, &qword_23C87B928);
  if ((v50 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v51 = v41;
  v52 = *(v41 + 24);
  v53 = *(v104 + 48);
  v54 = v107;
  sub_23C5855B0(v44 + v52, v107, &qword_27E1FBB18, &unk_23C87B950);
  sub_23C5855B0(v45 + v52, v54 + v53, &qword_27E1FBB18, &unk_23C87B950);
  v55 = v106;
  v56 = *(v105 + 48);
  if (v56(v54, 1, v106) == 1)
  {
    v57 = v56(v54 + v53, 1, v55);
    v59 = v108;
    v58 = v109;
    if (v57 == 1)
    {
      sub_23C585C34(v54, &qword_27E1FBB18, &unk_23C87B950);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v60 = v102;
  sub_23C5855B0(v54, v102, &qword_27E1FBB18, &unk_23C87B950);
  v61 = v56(v54 + v53, 1, v55);
  v59 = v108;
  v58 = v109;
  if (v61 == 1)
  {
    sub_23C62D958(v60, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_20:
    v37 = &qword_27E1FBB20;
    v38 = &qword_23C87B920;
    v39 = v54;
    goto LABEL_21;
  }

  v64 = v54 + v53;
  v65 = v101;
  sub_23C62D9B8(v64, v101, type metadata accessor for TranscriptProtoStatementOutcome);
  v66 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v60, v65);
  sub_23C62D958(v65, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C62D958(v60, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C585C34(v54, &qword_27E1FBB18, &unk_23C87B950);
  if ((v66 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v67 = v51[7];
  v68 = *(v44 + v67);
  v69 = *(v45 + v67);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v69 == 2 || ((v69 ^ v68) & 1) != 0)
  {
    goto LABEL_22;
  }

  v70 = v58;
  v71 = v51[8];
  v72 = *(v97 + 48);
  v73 = v100;
  sub_23C5855B0(v44 + v71, v100, &qword_27E1FBB08, &unk_23C8A11D0);
  v74 = v45 + v71;
  v75 = v73;
  sub_23C5855B0(v74, v73 + v72, &qword_27E1FBB08, &unk_23C8A11D0);
  v76 = v99;
  v77 = *(v98 + 48);
  if (v77(v73, 1, v99) != 1)
  {
    sub_23C5855B0(v73, v59, &qword_27E1FBB08, &unk_23C8A11D0);
    if (v77(v73 + v72, 1, v76) != 1)
    {
      v78 = v73 + v72;
      v79 = v92;
      sub_23C62D9B8(v78, v92, type metadata accessor for TranscriptProtoResponseManifest);
      v80 = _s26AIMLInstrumentationStreams31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v59, v79);
      sub_23C62D958(v79, type metadata accessor for TranscriptProtoResponseManifest);
      sub_23C62D958(v59, type metadata accessor for TranscriptProtoResponseManifest);
      sub_23C585C34(v73, &qword_27E1FBB08, &unk_23C8A11D0);
      if ((v80 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    sub_23C62D958(v59, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_35:
    v37 = &qword_27E1FBB10;
    v38 = &qword_23C87B918;
LABEL_43:
    v39 = v75;
    goto LABEL_21;
  }

  if (v77(v73 + v72, 1, v76) != 1)
  {
    goto LABEL_35;
  }

  sub_23C585C34(v73, &qword_27E1FBB08, &unk_23C8A11D0);
LABEL_37:
  v81 = v51[9];
  v82 = *(v93 + 48);
  v83 = v96;
  sub_23C5855B0(v44 + v81, v96, &qword_27E1FBAF8, &qword_23C87B960);
  v84 = v45 + v81;
  v75 = v83;
  sub_23C5855B0(v84, v83 + v82, &qword_27E1FBAF8, &qword_23C87B960);
  v85 = v95;
  v86 = *(v94 + 48);
  if (v86(v83, 1, v95) == 1)
  {
    if (v86(v83 + v82, 1, v85) == 1)
    {
      sub_23C585C34(v83, &qword_27E1FBAF8, &qword_23C87B960);
LABEL_45:
      sub_23C870F34();
      sub_23C62DA74(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v62 = sub_23C871754();
      return v62 & 1;
    }

    goto LABEL_42;
  }

  sub_23C5855B0(v83, v70, &qword_27E1FBAF8, &qword_23C87B960);
  if (v86(v83 + v82, 1, v85) == 1)
  {
    sub_23C62D958(v70, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
LABEL_42:
    v37 = &qword_27E1FBB00;
    v38 = &qword_23C87B910;
    goto LABEL_43;
  }

  v87 = v83 + v82;
  v88 = v91;
  sub_23C62D9B8(v87, v91, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  v89 = _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v70, v88);
  sub_23C62D958(v88, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C62D958(v70, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C585C34(v83, &qword_27E1FBAF8, &qword_23C87B960);
  if (v89)
  {
    goto LABEL_45;
  }

LABEL_22:
  v62 = 0;
  return v62 & 1;
}

uint64_t _s26AIMLInstrumentationStreams023ResponseGenerationProtocD5InputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23C5DF260(a1[7], *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  sub_23C870F34();
  sub_23C62DA74(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

unint64_t sub_23C62D66C()
{
  result = qword_27E1FBAB0;
  if (!qword_27E1FBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBAB0);
  }

  return result;
}

unint64_t sub_23C62D6C4()
{
  result = qword_27E1FBAB8;
  if (!qword_27E1FBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBAB8);
  }

  return result;
}

uint64_t sub_23C62D958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C62D9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C62DA20()
{
  result = qword_27E1FBB48;
  if (!qword_27E1FBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBB48);
  }

  return result;
}

uint64_t sub_23C62DA74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

AIMLInstrumentationStreams::ResponseGenerationProtoResponseMode_optional __swiftcall ResponseGenerationProtoResponseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v3[7]) = 2;
  v8 = v3[8];
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = v3[9];
  v11 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_23C62DFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62C6B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.statementResultDigests.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init(clientRequestID:utterance:responseMode:responseLocale:statementResultDigests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a5;
  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v17;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.init(toolDefinition:actionCreated:statementOutcome:undoOperation:responseManifest:returnValueTypeDisplayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = *a4;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v11 - 8) + 56))(a7, 1, 1, v11);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v14 - 8) + 56))(a7 + v13, 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v12[7];
  *(a7 + v17) = 2;
  v18 = v12[8];
  v19 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  v20 = v12[9];
  v21 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(a7 + v20, 1, 1, v21);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7, &qword_27E1FACA8, &unk_23C87B940);
  sub_23C5842D0(a2, a7 + v13, &qword_27E1FBB28, &qword_23C87B928);
  sub_23C5842D0(a3, a7 + v15, &qword_27E1FBB18, &unk_23C87B950);
  *(a7 + v17) = v23;
  sub_23C5842D0(a5, a7 + v18, &qword_27E1FBB08, &unk_23C8A11D0);
  return sub_23C5842D0(a6, a7 + v20, &qword_27E1FBAF8, &qword_23C87B960);
}

unint64_t sub_23C62E9A8()
{
  result = qword_27E1FBB60;
  if (!qword_27E1FBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBB60);
  }

  return result;
}

unint64_t sub_23C62EA00()
{
  result = qword_27E1FBB68;
  if (!qword_27E1FBB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FBB70, &qword_23C87BA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBB68);
  }

  return result;
}

void sub_23C62EA9C(uint64_t a1)
{
  sub_23C62ED80(319, &qword_27E1FBB88, type metadata accessor for ResponseGenerationProtoStatementResultDigest, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C62EB94(uint64_t a1)
{
  sub_23C62ED80(319, &qword_27E1FB208, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C62ED80(319, &qword_27E1FBBA0, type metadata accessor for TranscriptProtoAction, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C62ED80(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C62EDE4();
        if (v4 <= 0x3F)
        {
          sub_23C62ED80(319, &qword_27E1FBBB8, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C62ED80(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23C870F34();
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

void sub_23C62ED80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23C62EDE4()
{
  if (!qword_27E1FBBB0)
  {
    v0 = sub_23C871B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1FBBB0);
    }
  }
}

uint64_t sub_23C62EE34@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v54 = a8;
  v55 = a7;
  v56 = a6;
  v57 = a5;
  v51 = a2;
  v52 = a4;
  v50[1] = a1;
  v50[2] = a3;
  v64 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA10, &unk_23C87BB90);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = v50 - v12;
  v13 = sub_23C870AE4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v50 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v50 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v50 - v30;
  v32 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v53 = [v32 SELFProcessedEvent];
  swift_unknownObjectRelease();
  if (v51)
  {
    v33 = *(v14 + 56);
    v33(v31, 1, 1, v13);
  }

  else
  {
    sub_23C870A54();
    (*(v14 + 32))(v31, v19, v13);
    v33 = *(v14 + 56);
    v33(v31, 0, 1, v13);
  }

  if (v52)
  {
    v34 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v14 + 32))(v29, v17, v13);
    v34 = 0;
  }

  v33(v29, v34, 1, v13);
  sub_23C60D7E8(v31, v26);
  sub_23C60D7E8(v29, v23);
  v35 = *(v14 + 48);
  if (v35(v26, 1, v13) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_23C870A84();
    (*(v14 + 8))(v26, v13);
  }

  if (v35(v23, 1, v13) == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_23C870A84();
    (*(v14 + 8))(v23, v13);
  }

  if (v54)
  {
    v38 = 0;
  }

  else
  {
    v38 = v55;
  }

  if (v56)
  {
    v39 = 0;
  }

  else
  {
    v39 = v57;
  }

  v40 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v36 endDate:v37 maxEvents:v39 lastN:v38 reversed:0];

  v41 = v53;
  v42 = [v53 publisherWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
  v43 = v58;
  sub_23C870C14();
  v44 = type metadata accessor for AnteroEvent(0);
  sub_23C611604(&unk_2814FB1D0, &unk_27E2054E0, &unk_23C87B440, MEMORY[0x277CF1770]);
  v45 = v60;
  v46 = v61;
  sub_23C870BB4();
  (*(v59 + 8))(v43, v45);
  sub_23C611604(&qword_27E1FBBC8, &qword_27E1FBA10, &unk_23C87BB90, MEMORY[0x277CF1750]);
  v47 = v63;
  v48 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v48, v44);

  (*(v62 + 8))(v46, v47);
  sub_23C629578(v29);
  return sub_23C629578(v31);
}

id sub_23C62F468(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  v2 = a1;
  v3 = TimestampedOrderedEvent.init(biomeStoreEvent:)(v2);
  [v2 timestamp];
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for AnteroEvent(0));
  v7 = sub_23C585090(v3, v5);

  return v7;
}

uint64_t sub_23C62F564@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v54 = a8;
  v55 = a7;
  v56 = a6;
  v57 = a5;
  v51 = a2;
  v52 = a4;
  v50[1] = a1;
  v50[2] = a3;
  v64 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA30, &unk_23C87B530);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = v50 - v12;
  v13 = sub_23C870AE4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v50 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v50 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v50 - v30;
  v32 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v53 = [v32 SELFProcessedEvent];
  swift_unknownObjectRelease();
  if (v51)
  {
    v33 = *(v14 + 56);
    v33(v31, 1, 1, v13);
  }

  else
  {
    sub_23C870A54();
    (*(v14 + 32))(v31, v19, v13);
    v33 = *(v14 + 56);
    v33(v31, 0, 1, v13);
  }

  if (v52)
  {
    v34 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v14 + 32))(v29, v17, v13);
    v34 = 0;
  }

  v33(v29, v34, 1, v13);
  sub_23C60D7E8(v31, v26);
  sub_23C60D7E8(v29, v23);
  v35 = *(v14 + 48);
  if (v35(v26, 1, v13) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_23C870A84();
    (*(v14 + 8))(v26, v13);
  }

  if (v35(v23, 1, v13) == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_23C870A84();
    (*(v14 + 8))(v23, v13);
  }

  if (v54)
  {
    v38 = 0;
  }

  else
  {
    v38 = v55;
  }

  if (v56)
  {
    v39 = 0;
  }

  else
  {
    v39 = v57;
  }

  v40 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v36 endDate:v37 maxEvents:v39 lastN:v38 reversed:0];

  v41 = v53;
  v42 = [v53 publisherWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
  v43 = v58;
  sub_23C870C14();
  v44 = type metadata accessor for TimestampedOrderedEvent();
  sub_23C611604(&unk_2814FB1D0, &unk_27E2054E0, &unk_23C87B440, MEMORY[0x277CF1770]);
  v45 = v60;
  v46 = v61;
  sub_23C870BB4();
  (*(v59 + 8))(v43, v45);
  sub_23C611604(&qword_27E1FBBD0, &qword_27E1FBA30, &unk_23C87B530, MEMORY[0x277CF1750]);
  v47 = v63;
  v48 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v48, v44);

  (*(v62 + 8))(v46, v47);
  sub_23C629578(v29);
  return sub_23C629578(v31);
}

NSObject *sub_23C62FB98(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  return TimestampedOrderedEvent.init(biomeStoreEvent:)(a1);
}

id sub_23C62FC3C()
{
  v12 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_22:
    v2 = sub_23C871C34();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EED7610](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = sub_23C870D04();

    ++v3;
    if (v8)
    {
      MEMORY[0x23EED7170]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23C8718D4();
      }

      sub_23C871904();
      v4 = v12;
      v3 = v7;
    }
  }

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v10 = MEMORY[0x23EED7610](0, v4);
    goto LABEL_19;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v4 + 32);
LABEL_19:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

void sub_23C62FF50()
{
  v1 = *(v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v2 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:

    return;
  }

  __break(1u);
}

uint64_t sub_23C630174()
{
  v1 = *(v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v3 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v3 = *(v1 + 32);
LABEL_6:

  return sub_23C870A54();
}

void sub_23C6303D0()
{
  v1 = *(v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v2 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v3 = v2;
  if (!EventGraph.uei.getter())
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = sub_23C62FC3C();

  sub_23C870E24();
}

id SiriConversation.__allocating_init(turns:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);

  v6 = sub_23C5A3EBC(v3);
  sub_23C63084C(&v6);

  *&v2[OBJC_IVAR___ISSiriConversation_turns] = v6;
  v5.receiver = v2;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SiriConversation.init(turns:)(uint64_t a1)
{

  v5 = sub_23C5A3EBC(v2);
  sub_23C63084C(&v5);

  *&v1[OBJC_IVAR___ISSiriConversation_turns] = v5;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SiriConversation();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SiriConversation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriConversation.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriConversation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23C630764()
{
  v1 = *(*v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v2 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v3 = v2;
  if (!EventGraph.uei.getter())
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = sub_23C62FC3C();

  sub_23C870E24();
}

uint64_t sub_23C63084C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23C64BCE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23C6308C8(v6);
  return sub_23C871D64();
}

char *sub_23C6308C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SiriTurn();
        v6 = sub_23C8718F4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_23C630A44(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_23C6309CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C6309CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + OBJC_IVAR___ISEventGraph_timestamp) >= *(*v9 + OBJC_IVAR___ISEventGraph_timestamp))
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

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C630A44(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_23C6473A0(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_23C630FE0((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23C6473A0(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_23C647314(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v7) + OBJC_IVAR___ISEventGraph_timestamp);
      v11 = *(*(*a3 + 8 * v9) + OBJC_IVAR___ISEventGraph_timestamp);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR___ISEventGraph_timestamp);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_23C584338((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_23C630FE0((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23C6473A0(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_23C647314(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(v25 + OBJC_IVAR___ISEventGraph_timestamp) >= *(*v27 + OBJC_IVAR___ISEventGraph_timestamp))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23C630FE0(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(v21 + OBJC_IVAR___ISEventGraph_timestamp) < *(*v17 + OBJC_IVAR___ISEventGraph_timestamp))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
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
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v6 + OBJC_IVAR___ISEventGraph_timestamp) >= *(*v4 + OBJC_IVAR___ISEventGraph_timestamp))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t sub_23C63122C()
{
  result = qword_27E1FBC90;
  if (!qword_27E1FBC90)
  {
    sub_23C870B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBC90);
  }

  return result;
}

uint64_t sub_23C631384(uint64_t a1)
{
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_23C871C34();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_23C871D84();
    result = sub_23C871BE4();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_23C871D84();
  result = sub_23C871BB4();
  v5 = *(a1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v23;
    v9 = v24;
    v11 = v25;
    sub_23C648EFC(v23, v24, v25, a1);
    sub_23C871D54();
    sub_23C871D94();
    sub_23C871DA4();
    result = sub_23C871D64();
    if (v21)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_23C871C04())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDA0, &qword_23C87BE78);
      v7 = sub_23C871A04();
      sub_23C871C84();
      result = v7(v22, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_23C606430(v23, v24, v25);
        return v26;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = __clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_23C606430(v10, v9, 0);
            v12 = __clz(__rbit64(v19)) + v16;
            goto LABEL_27;
          }
        }

        result = sub_23C606430(v10, v9, 0);
      }

LABEL_27:
      v23 = v12;
      v24 = v9;
      v25 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

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
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_23C631680(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_23C592C24(0, v1, 0);
  v2 = v31;
  v4 = v3 + 56;
  result = sub_23C871BB4();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v3 + 36);
    v10 = (*(v3 + 48) + 32 * v6);
    v11 = v10[1];
    v29 = v10[2];
    v30 = *v10;
    v12 = v3;
    v13 = v10[3];
    v14 = *(v31 + 16);
    v15 = *(v31 + 24);

    if (v14 >= v15 >> 1)
    {
      result = sub_23C592C24((v15 > 1), v14 + 1, 1);
    }

    *(v31 + 16) = v14 + 1;
    v16 = (v31 + 32 * v14);
    v16[4] = v30;
    v16[5] = v11;
    v16[6] = v29;
    v16[7] = v13;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v12;
    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_23C606430(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_23C606430(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23C6318C0(uint64_t a1)
{
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v29 = v1;
    v37 = MEMORY[0x277D84F90];
    sub_23C592CC8(0, v7, 0);
    v35 = a1 + 56;
    v36 = v37;
    result = sub_23C871BB4();
    v9 = result;
    v10 = 0;
    v30 = a1 + 64;
    v31 = v7;
    v32 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v35 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v14 = *(a1 + 36);
      v33 = v10;
      v34 = v14;
      v15 = *(a1 + 48);
      v16 = *(v4 + 72);
      sub_23C600748(v15 + v16 * v9, v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v17 = v36;
      v37 = v36;
      v18 = v6;
      v20 = *(v36 + 16);
      v19 = *(v36 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23C592CC8((v19 > 1), v20 + 1, 1);
        v17 = v37;
      }

      *(v17 + 16) = v20 + 1;
      v21 = *(v4 + 80);
      v36 = v17;
      result = sub_23C64BB10(v18, v17 + ((v21 + 32) & ~v21) + v20 * v16, type metadata accessor for SiriConversationPublisher.GraphUUID);
      a1 = v32;
      v11 = 1 << *(v32 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v22 = *(v35 + 8 * v13);
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v34 != *(v32 + 36))
      {
        goto LABEL_25;
      }

      v6 = v18;
      v23 = v22 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v31;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v12 = v31;
        v26 = (v30 + 8 * v13);
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_23C606430(v9, v34, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_23C606430(v9, v34, 0);
      }

LABEL_4:
      v10 = v33 + 1;
      v9 = v11;
      if (v33 + 1 == v12)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23C631BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v8;
    sub_23C594470(a1, a2, a3, a4, a5, a6, a7, a8, isUniquelyReferenced_nonNull_native);

    *v8 = v25;
  }

  else
  {
    v20 = sub_23C5FFB88(a5, a6, a7, a8);
    v22 = v21;

    if (v22)
    {
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v9;
      v26 = *v9;
      if (!v23)
      {
        sub_23C643E14();
        v24 = v26;
      }

      result = sub_23C641BC4(v20, v24);
      *v9 = v24;
    }
  }

  return result;
}

uint64_t sub_23C631D24(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_23C585C34(a1, &qword_27E1FBCA8, &qword_23C87BDB8);
    sub_23C64DC30(a2, v7);
    sub_23C64BB78(a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return sub_23C585C34(v7, &qword_27E1FBCA8, &qword_23C87BDB8);
  }

  else
  {
    sub_23C64BB10(a1, v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_23C594BB8(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_23C64BB78(a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
    *v2 = v15;
  }

  return result;
}

void sub_23C631F00(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_23C871BF4();
    sub_23C870E34();
    sub_23C64B2C8(&qword_27E1F9B00, MEMORY[0x277D56708], MEMORY[0x277D85378]);
    sub_23C871A14();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_23C56EF08(v2);
      return;
    }

    while (1)
    {
      sub_23C64E050(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_23C871C64())
      {
        sub_23C870E34();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_23C6320F4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_23C64E414(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6321F8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_23C64E73C(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6322D8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_23C64E73C(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_23C6323B8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_23C871E14();

    if (v4)
    {
      sub_23C870E34();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_23C5FFA08(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_23C63246C(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23C871BF4();
    sub_23C870E34();
    sub_23C64B2C8(&qword_27E1F9B00, MEMORY[0x277D56708], MEMORY[0x277D85378]);
    sub_23C871A14();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_23C871C64())
        {
          goto LABEL_19;
        }

        sub_23C870E34();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_23C56EF08(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23C63269C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17[0] = *v13;
      v17[1] = v14;
      v17[2] = v15;
      v17[3] = v16;

      v18(v17);
      if (v3)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C6327F4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_23C600748(*(a3 + 48) + *(v6 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v18(v8);
    result = sub_23C64BB78(v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
    if (v3)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(a3 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6329A0(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_23C5FFA4C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C6434EC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for EventTypeIdPair(0);
  sub_23C64BB78(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for EventTypeIdPair);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_23C641580(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_23C632A64(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_23C5FFA4C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C6432B0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for EventTypeIdPair(0);
  sub_23C64BB78(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for EventTypeIdPair);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_23C641580(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_23C632B3C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23C5FFCB8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C644B24();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  sub_23C64BB78(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_23C641F78(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_23C632C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23C5FFCB8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C644D60();
      v9 = v20;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v19 = *(v11 - 8);
    v12 = *(v19 + 72) * v7;
    sub_23C64BB78(v10 + v12, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB10(*(v9 + 56) + v12, a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C642290(v7, v9);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_23C632D90(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23C5FFCB8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C644FD8(&unk_27E1FBCC0, &unk_23C87BDD0);
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  sub_23C64BB78(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_23C641F78(v5, v7);
  *v2 = v7;
  return v10;
}