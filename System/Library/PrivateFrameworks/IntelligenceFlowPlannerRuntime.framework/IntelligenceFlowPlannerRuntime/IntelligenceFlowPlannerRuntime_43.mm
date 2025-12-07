uint64_t sub_22C770FAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22C9063DC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22C90168C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7710D4, 0, 0);
}

uint64_t sub_22C7710D4()
{
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for DateResolver(0) + 32));
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    [v2 coordinate];
    v7 = MEMORY[0x277D56158];
    if (v8 >= 0.0)
    {
      v7 = MEMORY[0x277D56150];
    }

    (*(v6 + 104))(v3, *v7, v5);
    v9 = *(v6 + 32);
    v9(v4, v3, v5);
  }

  else
  {
    sub_22C903F8C();
    v10 = sub_22C9063CC();
    v11 = sub_22C90AABC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_22C36D240();
      *v12 = 0;
      _os_log_impl(&dword_22C366000, v10, v11, "currentLocation is missing in DateResolver, setting hemisphere as .north", v12, 2u);
      sub_22C3699EC();
    }

    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];

    (*(v17 + 8))(v16, v18);
    (*(v15 + 104))(v13, *MEMORY[0x277D56150], v14);
    v9 = *(v15 + 32);
  }

  v9(v0[2], v0[10], v0[7]);
  sub_22C36DA54();
  sub_22C36C640(v19, v20, v21, v22);

  sub_22C369A24();

  return v23();
}

uint64_t type metadata accessor for DateResolver(uint64_t a1)
{
  result = qword_27D9BFEF8;
  if (!qword_27D9BFEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C77131C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateResolver(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C771380(uint64_t a1)
{
  v2 = type metadata accessor for DateResolver(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C7713DC()
{
  result = qword_27D9BFED8;
  if (!qword_27D9BFED8)
  {
    sub_22C3AC1A0(&qword_27D9BFEC8, &qword_22C925A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFED8);
  }

  return result;
}

uint64_t sub_22C771440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C771488(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C4F8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C7714F4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C7714F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C3A5908(&qword_27D9BAD70, qword_22C925AC0);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C77179C(v7, v8, a1, v4);
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
    return sub_22C7715F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C7715F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v17 = v5;
      v18 = a3;
      v16 = v6;
      do
      {
        sub_22C3E8FB4(v5, &v21, &qword_27D9BAD70, qword_22C925AC0);
        v7 = v5 - 40;
        sub_22C3E8FB4(v5 - 40, v20, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36F998(&v22, v19);
        sub_22C9013EC();
        if (swift_dynamicCast())
        {

          sub_22C36FF94(v19);
          sub_22C36DD28(v20, &qword_27D9BAD70, qword_22C925AC0);
          result = sub_22C36DD28(&v21, &qword_27D9BAD70, qword_22C925AC0);
        }

        else
        {
          v8 = v21;
          v9 = v20[0];
          sub_22C36FF94(v19);
          sub_22C36DD28(v20, &qword_27D9BAD70, qword_22C925AC0);
          result = sub_22C36DD28(&v21, &qword_27D9BAD70, qword_22C925AC0);
          if (v8 >= v9)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v5 + 32);
        v12 = *v5;
        v11 = *(v5 + 16);
        v13 = *(v5 - 24);
        *v5 = *v7;
        *(v5 + 16) = v13;
        *(v5 + 32) = *(v5 - 8);
        *v7 = v12;
        *(v5 - 24) = v11;
        v5 -= 40;
        *(v7 + 32) = v10;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v18 + 1;
      v5 = v17 + 40;
      v6 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C77179C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5++;
      v96 = v7;
      if (v5 < v4)
      {
        v8 = *a3;
        sub_22C3E8FB4(*a3 + 40 * v5, &v109, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C3E8FB4(v8 + 40 * v7, v108, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36F998(v110, v107);
        sub_22C9013EC();
        v102 = v6;
        if (swift_dynamicCast())
        {

          v9 = 1;
        }

        else
        {
          v9 = v109 < v108[0];
        }

        v98 = v9;
        sub_22C36FF94(v107);
        sub_22C36DD28(v108, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36DD28(&v109, &qword_27D9BAD70, qword_22C925AC0);
        v10 = v7 + 2;
        v11 = v8 + 40 * v7;
        v12 = 40 * v7;
        v13 = v11 + 80;
        v14 = 40 * v7 + 40;
        do
        {
          v15 = v10;
          v16 = v5;
          v17 = v14;
          if (v10 >= v4)
          {
            break;
          }

          sub_22C3E8FB4(v13, &v109, &qword_27D9BAD70, qword_22C925AC0);
          sub_22C3E8FB4(v13 - 40, v108, &qword_27D9BAD70, qword_22C925AC0);
          sub_22C36F998(v110, v107);
          if (swift_dynamicCast())
          {

            v18 = 1;
          }

          else
          {
            v18 = v109 < v108[0];
          }

          sub_22C36FF94(v107);
          sub_22C36DD28(v108, &qword_27D9BAD70, qword_22C925AC0);
          sub_22C36DD28(&v109, &qword_27D9BAD70, qword_22C925AC0);
          v10 = (v15 + 1);
          v13 += 40;
          ++v5;
          v14 = v17 + 40;
        }

        while (v98 == v18);
        if (v98)
        {
          v7 = v96;
          if (v15 < v96)
          {
            goto LABEL_127;
          }

          if (v96 < v15)
          {
            v19 = v96;
            do
            {
              if (v19 != v16)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                v21 = (v20 + v12);
                v22 = (v20 + v17);
                v23 = *v21;
                v24 = v21[1];
                v25 = *(v21 + 4);
                v26 = *(v22 + 4);
                v27 = v22[1];
                *v21 = *v22;
                v21[1] = v27;
                *(v21 + 4) = v26;
                *(v22 + 4) = v25;
                *v22 = v23;
                v22[1] = v24;
              }

              ++v19;
              v17 -= 40;
              v12 += 40;
            }

            while (v19 < v16--);
          }

          v5 = v15;
          v6 = v102;
        }

        else
        {
          v5 = v15;
          v6 = v102;
          v7 = v96;
        }
      }

      v29 = a3[1];
      if (v5 < v29)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_126;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_128;
          }

          if (v7 + a4 >= v29)
          {
            v30 = a3[1];
          }

          else
          {
            v30 = v7 + a4;
          }

          if (v30 >= v7)
          {
            if (v5 == v30)
            {
              goto LABEL_42;
            }

            v103 = v6;
            v31 = *a3;
            v32 = *a3 + 40 * v5;
            v33 = v7 - v5;
            v97 = v30;
LABEL_33:
            v34 = v33;
            v99 = v32;
            while (1)
            {
              sub_22C3E8FB4(v32, &v109, &qword_27D9BAD70, qword_22C925AC0);
              v35 = v32 - 40;
              sub_22C3E8FB4(v32 - 40, v108, &qword_27D9BAD70, qword_22C925AC0);
              sub_22C36F998(v110, v107);
              sub_22C9013EC();
              if (swift_dynamicCast())
              {

                sub_22C36FF94(v107);
                sub_22C36DD28(v108, &qword_27D9BAD70, qword_22C925AC0);
                sub_22C36DD28(&v109, &qword_27D9BAD70, qword_22C925AC0);
              }

              else
              {
                v36 = v109;
                v37 = v108[0];
                sub_22C36FF94(v107);
                sub_22C36DD28(v108, &qword_27D9BAD70, qword_22C925AC0);
                sub_22C36DD28(&v109, &qword_27D9BAD70, qword_22C925AC0);
                if (v36 >= v37)
                {
                  goto LABEL_40;
                }
              }

              if (!v31)
              {
                break;
              }

              v38 = *(v32 + 32);
              v40 = *v32;
              v39 = *(v32 + 16);
              v41 = *(v32 - 24);
              *v32 = *v35;
              *(v32 + 16) = v41;
              *(v32 + 32) = *(v32 - 8);
              *v35 = v40;
              *(v32 - 24) = v39;
              v32 -= 40;
              *(v35 + 32) = v38;
              if (__CFADD__(v34++, 1))
              {
LABEL_40:
                v32 = v99 + 40;
                --v33;
                if (++v5 == v97)
                {
                  v5 = v97;
                  v6 = v103;
                  v7 = v96;
                  goto LABEL_42;
                }

                goto LABEL_33;
              }
            }

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

LABEL_129:
          __break(1u);
LABEL_130:
          v6 = sub_22C56BFD8();
          goto LABEL_97;
        }
      }

LABEL_42:
      if (v5 < v7)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, *(v6 + 2) + 1, 1, v6);
        v6 = v85;
      }

      v44 = *(v6 + 2);
      v43 = *(v6 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        sub_22C590218(v43 > 1, v44 + 1, 1, v6);
        v6 = v86;
      }

      *(v6 + 2) = v45;
      v46 = v6 + 32;
      v47 = &v6[16 * v44 + 32];
      *v47 = v96;
      *(v47 + 1) = v5;
      v100 = *result;
      if (!*result)
      {
        goto LABEL_135;
      }

      if (v44)
      {
        break;
      }

LABEL_92:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_95;
      }
    }

    v104 = v6;
    while (1)
    {
      v48 = v45 - 1;
      v49 = &v46[16 * v45 - 16];
      v50 = &v6[16 * v45];
      if (v45 >= 4)
      {
        break;
      }

      if (v45 == 3)
      {
        v51 = *(v6 + 4);
        v52 = *(v6 + 5);
        v61 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        v54 = v61;
LABEL_63:
        if (v54)
        {
          goto LABEL_112;
        }

        v66 = *v50;
        v65 = *(v50 + 1);
        v67 = __OFSUB__(v65, v66);
        v68 = v65 - v66;
        v69 = v67;
        if (v67)
        {
          goto LABEL_115;
        }

        v70 = *(v49 + 1);
        v71 = v70 - *v49;
        if (__OFSUB__(v70, *v49))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v68, v71))
        {
          goto LABEL_120;
        }

        if (v68 + v71 >= v53)
        {
          if (v53 < v71)
          {
            v48 = v45 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (v45 < 2)
      {
        goto LABEL_114;
      }

      v73 = *v50;
      v72 = *(v50 + 1);
      v61 = __OFSUB__(v72, v73);
      v68 = v72 - v73;
      v69 = v61;
LABEL_78:
      if (v69)
      {
        goto LABEL_117;
      }

      v75 = *v49;
      v74 = *(v49 + 1);
      v61 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v61)
      {
        goto LABEL_119;
      }

      if (v76 < v68)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v48 - 1 >= v45)
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
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (!*a3)
      {
        goto LABEL_132;
      }

      v80 = &v46[16 * v48 - 16];
      v81 = *v80;
      v82 = &v46[16 * v48];
      v83 = *(v82 + 1);
      sub_22C771FA8((*a3 + 40 * *v80), (*a3 + 40 * *v82), *a3 + 40 * v83, v100);
      if (v106)
      {
        goto LABEL_105;
      }

      if (v83 < v81)
      {
        goto LABEL_107;
      }

      v84 = *(v104 + 2);
      if (v48 > v84)
      {
        goto LABEL_108;
      }

      *v80 = v81;
      *(v80 + 1) = v83;
      if (v48 >= v84)
      {
        goto LABEL_109;
      }

      v45 = v84 - 1;
      sub_22C56BFF0(v82 + 16, v84 - 1 - v48, &v46[16 * v48]);
      v6 = v104;
      *(v104 + 2) = v84 - 1;
      if (v84 <= 2)
      {
        goto LABEL_92;
      }
    }

    v55 = &v46[16 * v45];
    v56 = *(v55 - 8);
    v57 = *(v55 - 7);
    v61 = __OFSUB__(v57, v56);
    v58 = v57 - v56;
    if (v61)
    {
      goto LABEL_110;
    }

    v60 = *(v55 - 6);
    v59 = *(v55 - 5);
    v61 = __OFSUB__(v59, v60);
    v53 = v59 - v60;
    v54 = v61;
    if (v61)
    {
      goto LABEL_111;
    }

    v62 = *(v50 + 1);
    v63 = v62 - *v50;
    if (__OFSUB__(v62, *v50))
    {
      goto LABEL_113;
    }

    v61 = __OFADD__(v53, v63);
    v64 = v53 + v63;
    if (v61)
    {
      goto LABEL_116;
    }

    if (v64 >= v58)
    {
      v78 = *v49;
      v77 = *(v49 + 1);
      v61 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v53 < v79)
      {
        v48 = v45 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_95:
  v5 = *result;
  if (!*result)
  {
LABEL_136:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v105 = v6;
  v87 = (v6 + 16);
  for (i = *(v6 + 2); i >= 2; *v87 = i)
  {
    if (!*a3)
    {
      goto LABEL_133;
    }

    v89 = &v105[16 * i];
    v90 = *v89;
    v91 = &v87[2 * i];
    v92 = *(v91 + 1);
    sub_22C771FA8((*a3 + 40 * *v89), (*a3 + 40 * *v91), *a3 + 40 * v92, v5);
    if (v106)
    {
      break;
    }

    if (v92 < v90)
    {
      goto LABEL_121;
    }

    if (i - 2 >= *v87)
    {
      goto LABEL_122;
    }

    *v89 = v90;
    *(v89 + 1) = v92;
    v93 = *v87 - i;
    if (*v87 < i)
    {
      goto LABEL_123;
    }

    i = *v87 - 1;
    sub_22C56BFF0(v91 + 16, v93, v91);
  }

LABEL_105:
}

uint64_t sub_22C771FA8(char *a1, char *a2, unint64_t a3, char *a4)
{
  __src = a4;
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = (a2 - a1) / 40;
  v8 = (a3 - a2) / 40;
  if (v7 < v8)
  {
    sub_22C38D04C(a1, (a2 - a1) / 40, a4);
    v9 = &__src[40 * v7];
    while (1)
    {
      if (__src >= v9 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_33;
      }

      sub_22C3E8FB4(v5, &v33, &qword_27D9BAD70, qword_22C925AC0);
      sub_22C3E8FB4(__src, v32, &qword_27D9BAD70, qword_22C925AC0);
      sub_22C36F998(v34, v31);
      sub_22C9013EC();
      if (swift_dynamicCast())
      {
        break;
      }

      v11 = v33;
      v12 = v32[0];
      sub_22C36FF94(v31);
      sub_22C36DD28(v32, &qword_27D9BAD70, qword_22C925AC0);
      sub_22C36DD28(&v33, &qword_27D9BAD70, qword_22C925AC0);
      if (v11 < v12)
      {
        goto LABEL_10;
      }

      v13 = __src;
      v14 = v6 == __src;
      __src += 40;
      if (!v14)
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 += 40;
    }

    sub_22C36FF94(v31);
    sub_22C36DD28(v32, &qword_27D9BAD70, qword_22C925AC0);
    sub_22C36DD28(&v33, &qword_27D9BAD70, qword_22C925AC0);
LABEL_10:
    v13 = v5;
    v14 = v6 == v5;
    v5 += 40;
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_11:
    v15 = *v13;
    v16 = *(v13 + 1);
    *(v6 + 4) = *(v13 + 4);
    *v6 = v15;
    *(v6 + 1) = v16;
    goto LABEL_12;
  }

  sub_22C38D04C(a2, (a3 - a2) / 40, a4);
  v17 = &__src[40 * v8];
LABEL_17:
  v18 = (v5 - 40);
  v4 -= 40;
  for (i = (v17 - 40); ; i -= 40)
  {
    v9 = (i + 40);
    if (i + 40 <= __src || v5 <= v6)
    {
      break;
    }

    sub_22C3E8FB4(i, &v33, &qword_27D9BAD70, qword_22C925AC0);
    v21 = v18;
    sub_22C3E8FB4(v18, v32, &qword_27D9BAD70, qword_22C925AC0);
    sub_22C36F998(v34, v31);
    sub_22C9013EC();
    if (swift_dynamicCast())
    {

      v22 = 1;
    }

    else
    {
      v22 = v33 < v32[0];
    }

    sub_22C36FF94(v31);
    sub_22C36DD28(v32, &qword_27D9BAD70, qword_22C925AC0);
    sub_22C36DD28(&v33, &qword_27D9BAD70, qword_22C925AC0);
    if (v22)
    {
      v17 = (i + 40);
      v14 = v4 + 40 == v5;
      v5 = v21;
      if (!v14)
      {
        v25 = *v21;
        v26 = *(v21 + 16);
        *(v4 + 32) = *(v21 + 32);
        *v4 = v25;
        *(v4 + 16) = v26;
        v5 = v21;
      }

      goto LABEL_17;
    }

    if (v9 != (v4 + 40))
    {
      v23 = *i;
      v24 = *(i + 16);
      *(v4 + 32) = *(i + 32);
      *v4 = v23;
      *(v4 + 16) = v24;
    }

    v4 -= 40;
    v18 = v21;
  }

LABEL_33:
  v27 = (v9 - __src) / 40;
  if (v5 != __src || v5 >= &__src[40 * v27])
  {
    memmove(v5, __src, 40 * v27);
  }

  return 1;
}

void sub_22C772330()
{
  v2 = *(v0 + 112);
  *(v1 - 128) = *(v0 + 136);
  *(v1 - 120) = v2;
}

void *sub_22C7723C4(uint64_t a1)
{
  v154 = a1;
  v156 = sub_22C90077C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v4);
  sub_22C36BA64();
  v135 = v5;
  sub_22C36BA0C();
  v134 = sub_22C90035C();
  sub_22C369824();
  v133 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v132 = v9 - v8;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v139 = v11;
  v140 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v151 = v13;
  v14 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  v150 = &v128 - v16;
  sub_22C36BA0C();
  v155 = sub_22C90046C();
  sub_22C369824();
  v138 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v137 = v21;
  sub_22C36BA0C();
  sub_22C901DDC();
  sub_22C369824();
  v148 = v23;
  v149 = v22;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v146 = v25 - v24;
  sub_22C36BA0C();
  sub_22C90210C();
  sub_22C369824();
  v144 = v27;
  v145 = v26;
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v143 = v29 - v28;
  v30 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  v31 = sub_22C369914(v30);
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v147 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v152 = v35;
  sub_22C36BA0C();
  v142 = sub_22C90634C();
  sub_22C369824();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22C369ABC();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v128 - v43;
  v45 = sub_22C90636C();
  sub_22C369824();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  sub_22C369ABC();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v128 - v53;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v141 = *(v47 + 8);
  v141(v51, v45);
  v55 = sub_22C90635C();
  v56 = sub_22C90AB6C();
  v57 = sub_22C90AC5C();
  v153 = v2;
  if (v57)
  {
    v58 = sub_22C36D240();
    *v58 = 0;
    v59 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v55, v56, v59, "DataDetectors.init", "", v58, 2u);
    sub_22C3699EC();
  }

  v60 = v142;
  (*(v37 + 16))(v41, v44, v142);
  v61 = sub_22C9063AC();
  sub_22C3856A0(v61);
  sub_22C37FF48();
  v62 = sub_22C90639C();
  (*(v37 + 8))(v44, v60);
  v141(v54, v45);
  v63 = v143;
  sub_22C9020FC();
  v65 = v148;
  v64 = v149;
  v66 = v146;
  (*(v148 + 104))(v146, *MEMORY[0x277D1C228], v149);
  v67 = v152;
  v68 = v154;
  sub_22C9020DC();
  (*(v65 + 8))(v66, v64);
  (*(v144 + 8))(v63, v145);
  v69 = v147;
  sub_22C4DD3C4(v67, v147);
  v70 = sub_22C902D7C();
  if (sub_22C370B74(v69, 1, v70) == 1)
  {
    sub_22C3770B0(v69, &qword_27D9BD698, &qword_22C9187B0);
    v71 = v150;
    sub_22C36C640(v150, 1, 1, v155);
    v72 = v156;
    v73 = v151;
  }

  else
  {
    v71 = v150;
    sub_22C902D5C();
    (*(*(v70 - 8) + 8))(v69, v70);
    v74 = v155;
    v75 = sub_22C370B74(v71, 1, v155);
    v72 = v156;
    v73 = v151;
    if (v75 != 1)
    {
      v151 = v62;
      (*(v138 + 32))(v137, v71, v74);
      strcpy(v157, "data_detectors");
      HIBYTE(v157[1]) = -18;
      v86 = v133;
      v87 = v72;
      v88 = v132;
      v89 = v134;
      (*(v133 + 104))(v132, *MEMORY[0x277CC91D8], v134);
      sub_22C3858B4();
      v90 = v136;
      sub_22C90043C();
      (*(v86 + 8))(v88, v89);
      v91 = sub_22C9003EC();
      v93 = v92;
      v94 = *(v153 + 16);
      v95 = v135;
      v94(v135, v68, v87);
      v96 = objc_allocWithZone(MEMORY[0x277D5DF18]);
      v97 = sub_22C7746B8(v91, v93, v95);
      if (v97)
      {
        v83 = v97;
        v98 = *(v138 + 8);
        v99 = v155;
        v98(v90, v155);
        v98(v137, v99);
        sub_22C3770B0(v152, &qword_27D9BD698, &qword_22C9187B0);
        v100 = v83;
        sub_22C773A5C(v151);

        v84 = v153;
        v68 = v154;
        v72 = v156;
      }

      else
      {
        v101 = v131;
        sub_22C903F8C();
        v102 = v138;
        v103 = v129;
        (*(v138 + 16))(v129, v90, v155);
        v104 = v130;
        v68 = v154;
        v72 = v156;
        v94(v130, v154, v156);
        v105 = sub_22C9063CC();
        v106 = sub_22C90AADC();
        if (sub_22C36FBB4(v106))
        {
          v107 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v157[0] = v150;
          *v107 = 136315394;
          sub_22C7747A4(&qword_281435848, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v108 = v155;
          v109 = sub_22C90B47C();
          v111 = v110;
          v149 = *(v138 + 8);
          v149(v103, v108);
          v112 = sub_22C36F9F4(v109, v111, v157);

          *(v107 + 4) = v112;
          *(v107 + 12) = 2080;
          sub_22C7747A4(&qword_281435838, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
          v113 = v130;
          v114 = sub_22C90B47C();
          v116 = v115;
          v117 = v153;
          (*(v153 + 8))(v113, v156);
          v118 = sub_22C36F9F4(v114, v116, v157);

          *(v107 + 14) = v118;
          sub_22C3706C8();
          _os_log_impl(v119, v120, v121, v122, v123, 0x16u);
          swift_arrayDestroy();
          v84 = v117;
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v139 + 8))(v131, v140);
          v124 = v149;
          v149(v136, v108);
          v125 = v108;
          v72 = v156;
          v124(v137, v125);
        }

        else
        {

          v84 = v153;
          (*(v153 + 8))(v104, v72);
          v126 = *(v102 + 8);
          v127 = v155;
          v126(v103, v155);
          (*(v139 + 8))(v101, v140);
          v126(v90, v127);
          v126(v137, v127);
        }

        sub_22C3770B0(v152, &qword_27D9BD698, &qword_22C9187B0);
        sub_22C773A5C(v151);
        v83 = 0;
      }

      goto LABEL_9;
    }
  }

  sub_22C3770B0(v71, &qword_27D9BB138, &qword_22C90DB70);
  sub_22C903F8C();
  v76 = sub_22C9063CC();
  v77 = sub_22C90AADC();
  if (sub_22C36FBB4(v77))
  {
    *sub_22C36D240() = 0;
    sub_22C3706C8();
    _os_log_impl(v78, v79, v80, v81, v82, 2u);
    sub_22C3699EC();
  }

  (*(v139 + 8))(v73, v140);
  sub_22C3770B0(v67, &qword_27D9BD698, &qword_22C9187B0);
  sub_22C773A5C(v62);
  v83 = 0;
  v84 = v153;
LABEL_9:

  (*(v84 + 8))(v68, v72);
  return v83;
}

uint64_t sub_22C7730EC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFF08, &qword_22C925B10);
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  v99 = &v98 - v4;
  v5 = sub_22C3A5908(&qword_27D9BFF10, qword_22C925B18);
  v6 = sub_22C369914(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v98 - v7;
  sub_22C9063DC();
  sub_22C369824();
  v101 = v9;
  v102 = v10;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v13 = (v11 - v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v98 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v100 = &v98 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v98 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v98 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v98 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v98 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v98 - v32;
  sub_22C36F998(a1, v106);
  sub_22C9013AC();
  sub_22C373944();
  if (!swift_dynamicCast())
  {
    sub_22C9013CC();
    sub_22C373944();
    if (swift_dynamicCast())
    {
      if (MEMORY[0x2318AE890]())
      {
        v36 = sub_22C374FAC();
        sub_22C3856A0(v36);
        sub_22C7747FC();
        v37 = sub_22C90176C();
        goto LABEL_29;
      }

      sub_22C903F8C();
      v50 = sub_22C9063CC();
      v51 = sub_22C90AADC();
      if (os_log_type_enabled(v50, v51))
      {
        *sub_22C36D240() = 0;
        sub_22C37F09C(&dword_22C366000, v52, v53, "USO.Common.Time cannot be converted to SiriInference.DateTime.");
        sub_22C3699EC();
      }

      sub_22C36C328();
      v44 = v31;
      goto LABEL_22;
    }

    sub_22C90145C();
    sub_22C373944();
    if (swift_dynamicCast())
    {
      sub_22C77480C();
      if (!MEMORY[0x2318AE920]())
      {
        sub_22C903F8C();
        v38 = sub_22C9063CC();
        v39 = sub_22C90AADC();
        if (sub_22C37026C(v39))
        {
          v40 = sub_22C36D240();
          sub_22C36D944(v40);
          sub_22C376864(&dword_22C366000, v41, v42, "USO.Common.Time12HourClock cannot be converted to SiriInference.DateTime.");
          sub_22C3699EC();
        }

        sub_22C36C328();
        v44 = v28;
        goto LABEL_22;
      }
    }

    else
    {
      sub_22C90147C();
      sub_22C373944();
      if (!swift_dynamicCast())
      {
        sub_22C9013EC();
        sub_22C373944();
        if (swift_dynamicCast())
        {
          v35 = sub_22C9013DC();
          goto LABEL_28;
        }

        sub_22C90143C();
        sub_22C373944();
        if (swift_dynamicCast())
        {
          sub_22C77480C();
          if (sub_22C90142C())
          {
            v54 = sub_22C374FAC();
            sub_22C3856A0(v54);
            sub_22C7747FC();
            v35 = sub_22C9017EC();
            goto LABEL_28;
          }

          sub_22C903F8C();
          v67 = sub_22C9063CC();
          v68 = sub_22C90AADC();
          if (sub_22C37026C(v68))
          {
            v69 = sub_22C36D240();
            sub_22C36D944(v69);
            sub_22C376864(&dword_22C366000, v70, v71, "USO.Common.DateTimeRange cannot be converted to SiriInference.DateTime.");
            sub_22C3699EC();
          }

          sub_22C36C328();
          v44 = v22;
        }

        else
        {
          sub_22C9014AC();
          if (swift_dynamicCast())
          {
            if (sub_22C90149C())
            {
              v61 = sub_22C90148C();

              if (v61)
              {

                sub_22C90137C();

                sub_22C90141C();

                if (v105[3])
                {
                  if (swift_dynamicCast())
                  {
                    v37 = v104;
                    if (sub_22C90142C())
                    {
                      v62 = sub_22C90177C();
                      sub_22C36C640(v8, 1, 1, v62);
                      v63 = sub_22C90180C();
                      sub_22C36C640(v99, 1, 1, v63);
                      v64 = sub_22C90184C();
                      sub_22C3856A0(v64);
                      sub_22C37FF48();

                      sub_22C90174C();
                      sub_22C37FF48();

                      goto LABEL_29;
                    }
                  }
                }

                else
                {

                  sub_22C3770B0(v105, &qword_27D9BD5D8, &qword_22C918510);
                }
              }
            }

            v90 = v100;
            sub_22C903F8C();
            v91 = sub_22C9063CC();
            v92 = sub_22C90AADC();
            if (sub_22C36FBB4(v92))
            {
              *sub_22C36D240() = 0;
              sub_22C3706C8();
              _os_log_impl(v93, v94, v95, v96, v97, 2u);
              sub_22C3699EC();
            }

            else
            {
            }

            sub_22C36C328();
            v44 = v90;
          }

          else
          {
            sub_22C90140C();
            sub_22C373944();
            if (swift_dynamicCast())
            {
              if (sub_22C9013FC())
              {
                v65 = sub_22C9017CC();
                sub_22C3856A0(v65);
                sub_22C37FF48();

                sub_22C9017AC();
                v66 = sub_22C374FAC();
                sub_22C3856A0(v66);
                sub_22C7747FC();
                v37 = sub_22C9017EC();

                goto LABEL_29;
              }

              sub_22C903F8C();
              v85 = sub_22C9063CC();
              v86 = sub_22C90AADC();
              if (sub_22C37026C(v86))
              {
                v87 = sub_22C36D240();
                sub_22C36D944(v87);
                sub_22C376864(&dword_22C366000, v88, v89, "USO.Common.Duration cannot be converted to SiriInference.DateTime.");
                sub_22C3699EC();
              }

              sub_22C36C328();
              v44 = v17;
            }

            else
            {
              sub_22C903F8C();
              sub_22C36F998(a1, v105);
              v72 = sub_22C9063CC();
              v73 = sub_22C90AADC();
              if (sub_22C36FBB4(v73))
              {
                v74 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                v104 = v75;
                *v74 = 136315138;
                sub_22C36F998(v105, v103);
                v76 = sub_22C90A1AC();
                v78 = v77;
                sub_22C36FF94(v105);
                v79 = sub_22C36F9F4(v76, v78, &v104);

                *(v74 + 4) = v79;
                sub_22C3706C8();
                _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
                sub_22C36FF94(v75);
                sub_22C3699EC();
                sub_22C3699EC();
              }

              else
              {

                sub_22C36FF94(v105);
              }

              sub_22C36C328();
              v44 = v13;
            }
          }
        }

        goto LABEL_22;
      }

      sub_22C77480C();
      if (!MEMORY[0x2318AE940]())
      {
        sub_22C903F8C();
        v56 = sub_22C9063CC();
        v57 = sub_22C90AADC();
        if (sub_22C37026C(v57))
        {
          v58 = sub_22C36D240();
          sub_22C36D944(v58);
          sub_22C376864(&dword_22C366000, v59, v60, "USO.Common.Time24HourClock cannot be converted to SiriInference.DateTime.");
          sub_22C3699EC();
        }

        sub_22C36C328();
        v44 = v25;
        goto LABEL_22;
      }
    }

    v49 = sub_22C374FAC();
    sub_22C3856A0(v49);
    sub_22C7747FC();
    v35 = sub_22C90176C();
    goto LABEL_28;
  }

  sub_22C77480C();
  if (sub_22C90139C())
  {
    v34 = sub_22C374FAC();
    sub_22C3856A0(v34);
    sub_22C7747FC();
    v35 = sub_22C90175C();
LABEL_28:
    v37 = v35;
LABEL_29:

    goto LABEL_30;
  }

  sub_22C903F8C();
  v45 = sub_22C9063CC();
  v46 = sub_22C90AADC();
  if (os_log_type_enabled(v45, v46))
  {
    *sub_22C36D240() = 0;
    sub_22C37F09C(&dword_22C366000, v47, v48, "USO.Common.Date cannot be converted to SiriInference.DateTime.");
    sub_22C3699EC();
  }

  sub_22C36C328();
  v44 = v33;
LABEL_22:
  v43(v44, v101);
  v37 = 0;
LABEL_30:
  sub_22C36FF94(v106);
  return v37;
}

uint64_t sub_22C773A5C(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "DataDetectors.init", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_22C773E00(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_22C9063DC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C90A0EC();
  v14 = [a3 matchSpansForUtterance_];

  v15 = sub_22C774760();
  v16 = sub_22C90A5EC();

  sub_22C903F8C();

  v17 = sub_22C9063CC();
  v18 = sub_22C90AABC();

  if (os_log_type_enabled(v17, v18))
  {
    v41 = v8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v44[0] = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x2318B7AD0](v16, v15);
    v40 = v6;
    v23 = sub_22C36F9F4(v21, v22, v44);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_22C366000, v17, v18, "Getting all the spans %s", v19, 0xCu);
    sub_22C36FF94(v20);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v41 + 8))(v12, v40);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
  }

  *&v44[0] = MEMORY[0x277D84F90];
  v24 = sub_22C36E2B8();
  for (i = 0; v24 != i; ++i)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x2318B8460](i, v16);
    }

    else
    {
      if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v26 = *(v16 + 8 * i + 32);
    }

    v27 = v26;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    [v26 range];
    if (v28 == sub_22C90A30C() || (v16 >> 62 ? (v29 = sub_22C90B1BC()) : (v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10)), v29 == 1))
    {
      sub_22C90AFEC();
      sub_22C90B02C();
      sub_22C90B03C();
      sub_22C90AFFC();
    }

    else
    {
    }
  }

  v30 = *&v44[0];
  v31 = sub_22C36E2B8();
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v31 != v32)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x2318B8460](v32, v30);
    }

    else
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_38;
      }

      v34 = *(v30 + 8 * v32 + 32);
    }

    v35 = v34;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_37;
    }

    v45 = v34;
    sub_22C774264(&v45, a1, a2, &v42);

    if (v43)
    {
      sub_22C456E34(&v42, v44);
      sub_22C456E34(v44, &v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C59578C(0, *(v33 + 16) + 1, 1, v33);
        v33 = v38;
      }

      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22C59578C(v36 > 1, v37 + 1, 1, v33);
        v33 = v39;
      }

      *(v33 + 16) = v37 + 1;
      sub_22C456E34(&v42, (v33 + 32 * v37 + 32));
    }

    else
    {
      sub_22C3770B0(&v42, &qword_27D9BD5D8, &qword_22C918510);
    }

    ++v32;
  }
}

_OWORD *sub_22C774264@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_22C9063DC();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = *a1;
  v16 = [v15 usoGraph];
  v17 = sub_22C90AB4C();

  if (v17)
  {
    sub_22C903F8C();

    v18 = sub_22C9063CC();
    v19 = sub_22C90AABC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v44 = v4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v43 = a4;
      v23 = v22;
      *&v47 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_22C36F9F4(a2, a3, &v47);
      *(v21 + 12) = 2080;
      v49 = v17;
      sub_22C9014BC();
      sub_22C7747A4(&qword_27D9BFF20, MEMORY[0x277D5F428], MEMORY[0x277D5F430]);
      v24 = sub_22C90B47C();
      v26 = sub_22C36F9F4(v24, v25, &v47);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_22C366000, v18, v19, "Converted %s into USO Graph: %s", v21, 0x16u);
      swift_arrayDestroy();
      v27 = v23;
      a4 = v43;
      MEMORY[0x2318B9880](v27, -1, -1);
      MEMORY[0x2318B9880](v21, -1, -1);
    }

    (*(v45 + 8))(v14, v46);
    if (sub_22C90138C())
    {
      sub_22C90141C();

      if (v48)
      {
        return sub_22C456E34(&v47, a4);
      }

      result = sub_22C3770B0(&v47, &qword_27D9BD5D8, &qword_22C918510);
    }

    else
    {
    }
  }

  else
  {
    sub_22C903F8C();
    v29 = v15;
    v30 = sub_22C9063CC();
    v31 = sub_22C90AADC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = v4;
      v33 = v32;
      v34 = swift_slowAlloc();
      v43 = a4;
      v35 = v34;
      *&v47 = v34;
      *v33 = 136315138;
      v36 = v29;
      v37 = [v36 description];
      v38 = sub_22C90A11C();
      v40 = v39;

      v41 = sub_22C36F9F4(v38, v40, &v47);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_22C366000, v30, v31, "Not able to convert span = %s into USO Graph.", v33, 0xCu);
      sub_22C36FF94(v35);
      v42 = v35;
      a4 = v43;
      MEMORY[0x2318B9880](v42, -1, -1);
      MEMORY[0x2318B9880](v33, -1, -1);
    }

    result = (*(v45 + 8))(v12, v46);
  }

  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

id sub_22C7746B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_22C90A0EC();

  v7 = sub_22C90071C();
  v8 = [v4 initLoadFromDataDetectorsDirectoryPath:v6 forLocale:v7];

  v9 = sub_22C90077C();
  (*(*(v9 - 8) + 8))(a3, v9);
  return v8;
}

unint64_t sub_22C774760()
{
  result = qword_27D9BFF18;
  if (!qword_27D9BFF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BFF18);
  }

  return result;
}

uint64_t sub_22C7747A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C774818(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v6 = sub_22C9063DC();
  sub_22C369824();
  v35 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BFF28, &qword_22C925B78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;

  sub_22C774BFC(v13);
  if (!v3)
  {
    v32 = a1;
    v33 = v6;
    if (sub_22C370B74(v13, 1, v14) == 1)
    {
      sub_22C3770B0(v13, &qword_27D9BFF28, &qword_22C925B78);
      sub_22C903F8C();

      v20 = sub_22C9063CC();
      v21 = sub_22C90AADC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_22C36F9F4(v32, a2, &v36);
        _os_log_impl(&dword_22C366000, v20, v21, "cannot resolve duration from input %s", v22, 0xCu);
        sub_22C36FF94(v23);
        MEMORY[0x2318B9880](v23, -1, -1);
        MEMORY[0x2318B9880](v22, -1, -1);
      }

      (*(v35 + 8))(v10, v33);
      type metadata accessor for InterpreterError(0);
      sub_22C5F8844();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v24 = *(v16 + 32);
      v24(v19, v13, v14);
      v25 = sub_22C90931C();
      v26 = swift_allocBox();
      v28 = v27;
      v24(v27, v19, v14);
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D72940], v25);
      v29 = v34;
      *v34 = v26;
      v30 = *MEMORY[0x277D72A58];
      v31 = sub_22C9093BC();
      (*(*(v31 - 8) + 104))(v29, v30, v31);
    }
  }
}

void sub_22C774BFC(uint64_t a3@<X8>)
{
  v148 = a3;
  v3 = sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628);
  v4 = *(v3 - 8);
  v162 = v3;
  v163 = v4;
  MEMORY[0x28223BE20](v3);
  v149 = &v142 - v5;
  v171 = sub_22C3A5908(&qword_27D9BB690, &unk_22C90FA70);
  v6 = *(v171 - 8);
  v7 = MEMORY[0x28223BE20](v171);
  v161 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v146 = &v142 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v143 = &v142 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v142 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v145 = &v142 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v142 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v150 = &v142 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v155 = &v142 - v22;
  MEMORY[0x28223BE20](v21);
  v164 = &v142 - v23;
  v24 = sub_22C3A5908(&qword_27D9BFF30, &qword_22C925B80);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v142 - v25;
  v27 = sub_22C90862C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v160 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v157 = (&v142 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v142 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v142 - v36;
  v151 = sub_22C90863C();
  v152 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v169 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90864C();
  v39 = (v28 + 16);
  v167 = (v28 + 88);
  v168 = (v28 + 32);
  v174 = (v28 + 8);
  v165 = (v28 + 96);
  v172 = v6;
  v158 = v6 + 32;
  v173 = MEMORY[0x277D84F90];
  v40 = 1;
  v166 = *MEMORY[0x277D1E598];
  v159 = *MEMORY[0x277D1E590];
  v156 = *MEMORY[0x277D1E5A8];
  v154 = *MEMORY[0x277D1E5A0];
  v41 = 1.0;
  for (i = (v28 + 16); ; v39 = i)
  {
    sub_22C90861C();
    if (sub_22C370B74(v26, 1, v27) == 1)
    {
      break;
    }

    (*v168)(v37, v26, v27);
    v42 = *v39;
    (*v39)(v35, v37, v27);
    v43 = (*v167)(v35, v27);
    if (v43 == v166)
    {
      v44 = v160;
      v42(v160, v35, v27);
      (*v165)(v44, v27);
      v46 = *v44;
      v45 = v44[1];
      v47 = *v44 == 0x7372756F68 && v45 == 0xE500000000000000;
      if (v47 || (sub_22C90B4FC() & 1) != 0)
      {

        if (v40)
        {
          goto LABEL_95;
        }

        v48 = [objc_opt_self() hours];
        sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
        sub_22C8FFFAC();
        v49 = v173;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C595870();
          v49 = v93;
        }

        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        v173 = v49;
        if (v51 >= v50 >> 1)
        {
          sub_22C595870();
          v173 = v94;
        }

        v52 = *v174;
        (*v174)(v37, v27);
        v54 = v172;
        v53 = v173;
        *(v173 + 16) = v51 + 1;
        (*(v54 + 32))(v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51, v164, v171);
      }

      else
      {
        v58 = v46 == 0x736574756E696DLL && v45 == 0xE700000000000000;
        if (v58 || (sub_22C90B4FC() & 1) != 0)
        {

          if (v40)
          {
            goto LABEL_95;
          }

          v59 = [objc_opt_self() minutes];
          sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
          sub_22C8FFFAC();
          v60 = v173;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C595870();
            v60 = v103;
          }

          v62 = *(v60 + 16);
          v61 = *(v60 + 24);
          v173 = v60;
          if (v62 >= v61 >> 1)
          {
            sub_22C595870();
            v173 = v104;
          }

          v52 = *v174;
          (*v174)(v37, v27);
          v64 = v172;
          v63 = v173;
          *(v173 + 16) = v62 + 1;
          (*(v64 + 32))(v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v62, v155, v171);
        }

        else
        {
          v65 = v46 == 0x73646E6F636573 && v45 == 0xE700000000000000;
          if (v65 || (sub_22C90B4FC() & 1) != 0)
          {

            if (v40)
            {
              goto LABEL_95;
            }

            v66 = [objc_opt_self() seconds];
            sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
            sub_22C8FFFAC();
            v67 = v173;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22C595870();
              v67 = v105;
            }

            v69 = *(v67 + 16);
            v68 = *(v67 + 24);
            v173 = v67;
            if (v69 >= v68 >> 1)
            {
              sub_22C595870();
              v173 = v106;
            }

            v52 = *v174;
            (*v174)(v37, v27);
            v71 = v172;
            v70 = v173;
            *(v173 + 16) = v69 + 1;
            (*(v71 + 32))(v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v69, v150, v171);
          }

          else
          {
            v72 = v46 == 0x636573696C6C696DLL && v45 == 0xEC00000073646E6FLL;
            if (v72 || (sub_22C90B4FC() & 1) != 0)
            {

              if (v40)
              {
                goto LABEL_95;
              }

              v73 = [objc_opt_self() milliseconds];
              sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
              sub_22C8FFFAC();
              v74 = v173;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22C595870();
                v74 = v107;
              }

              v76 = *(v74 + 16);
              v75 = *(v74 + 24);
              v173 = v74;
              if (v76 >= v75 >> 1)
              {
                sub_22C595870();
                v173 = v108;
              }

              v52 = *v174;
              (*v174)(v37, v27);
              v78 = v172;
              v77 = v173;
              *(v173 + 16) = v76 + 1;
              (*(v78 + 32))(v77 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v76, v147, v171);
            }

            else
            {
              v79 = v46 == 0x6365736F7263696DLL && v45 == 0xEC00000073646E6FLL;
              if (v79 || (sub_22C90B4FC() & 1) != 0)
              {

                if (v40)
                {
                  goto LABEL_95;
                }

                v80 = [objc_opt_self() microseconds];
                sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
                sub_22C8FFFAC();
                v81 = v173;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_22C595870();
                  v81 = v109;
                }

                v83 = *(v81 + 16);
                v82 = *(v81 + 24);
                v173 = v81;
                if (v83 >= v82 >> 1)
                {
                  sub_22C595870();
                  v173 = v110;
                }

                v52 = *v174;
                (*v174)(v37, v27);
                v85 = v172;
                v84 = v173;
                *(v173 + 16) = v83 + 1;
                (*(v85 + 32))(v84 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v83, v145, v171);
              }

              else
              {
                v86 = v46 == 0x6F6365736F6E616ELL && v45 == 0xEB0000000073646ELL;
                if (v86 || (sub_22C90B4FC() & 1) != 0)
                {

                  if (v40)
                  {
                    goto LABEL_95;
                  }

                  v87 = [objc_opt_self() nanoseconds];
                  sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
                  sub_22C8FFFAC();
                  v88 = v173;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_22C595870();
                    v88 = v111;
                  }

                  v90 = *(v88 + 16);
                  v89 = *(v88 + 24);
                  v173 = v88;
                  if (v90 >= v89 >> 1)
                  {
                    sub_22C595870();
                    v173 = v112;
                  }

                  v52 = *v174;
                  (*v174)(v37, v27);
                  v92 = v172;
                  v91 = v173;
                  *(v173 + 16) = v90 + 1;
                  (*(v92 + 32))(v91 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v90, v144, v171);
                }

                else
                {
                  if (v46 == 0x6F6365736F636970 && v45 == 0xEB0000000073646ELL)
                  {
                  }

                  else
                  {
                    v96 = sub_22C90B4FC();

                    if ((v96 & 1) == 0)
                    {
                      goto LABEL_95;
                    }
                  }

                  if (v40)
                  {
LABEL_95:
                    v118 = *v174;
                    (*v174)(v37, v27);
                    (*(v152 + 8))(v169, v151);
                    v118(v35, v27);
                    v119 = 1;
LABEL_96:
                    v120 = v148;
                    goto LABEL_113;
                  }

                  v97 = [objc_opt_self() picoseconds];
                  sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
                  sub_22C8FFFAC();
                  v98 = v173;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_22C595870();
                    v98 = v113;
                  }

                  v100 = *(v98 + 16);
                  v99 = *(v98 + 24);
                  v173 = v98;
                  if (v100 >= v99 >> 1)
                  {
                    sub_22C595870();
                    v173 = v114;
                  }

                  v52 = *v174;
                  (*v174)(v37, v27);
                  v102 = v172;
                  v101 = v173;
                  *(v173 + 16) = v100 + 1;
                  (*(v102 + 32))(v101 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v100, v143, v171);
                }
              }
            }
          }
        }
      }

      v40 = 1;
    }

    else
    {
      if (v43 == v159)
      {
        v52 = *v174;
        (*v174)(v37, v27);
        v56 = v157;
        v42(v157, v35, v27);
        (*v165)(v56, v27);
        v40 = 0;
        v55.n128_f64[0] = *v56;
LABEL_19:
        v41 = 1.0;
        goto LABEL_35;
      }

      if (v43 == v156)
      {
        v52 = *v174;
        (*v174)(v37, v27);
        v57 = v157;
        v42(v157, v35, v27);
        (*v165)(v57, v27);
        v40 = 0;
        v55.n128_u64[0] = *v57;
        goto LABEL_19;
      }

      if (v43 != v154)
      {
        goto LABEL_95;
      }

      v52 = *v174;
      (*v174)(v37, v27);
      v41 = -v41;
    }

LABEL_35:
    (v52)(v35, v27, v55);
  }

  sub_22C3770B0(v26, &qword_27D9BFF30, &qword_22C925B80);
  if (v40)
  {
    v115 = v153;
    v116 = v173;
    v117 = v149;
  }

  else
  {
    v116 = v173;
    v115 = v153;
    v117 = v149;
    if (!*(v173 + 16))
    {
      v121 = [objc_opt_self() seconds];
      sub_22C36E278(0, &qword_27D9BFF48, 0x277CCADD0);
      v122 = v146;
      sub_22C8FFFAC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C595870();
        v116 = v140;
      }

      v123 = v116;
      v124 = *(v116 + 16);
      v125 = v123;
      if (v124 >= *(v123 + 24) >> 1)
      {
        sub_22C595870();
        v125 = v141;
      }

      *(v125 + 16) = v124 + 1;
      v126 = v125 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v124;
      v116 = v125;
      (*(v172 + 32))(v126, v122, v171);
    }
  }

  v127 = *(v116 + 16);
  v128 = MEMORY[0x277D84F90];
  v173 = v116;
  if (v127)
  {
    v175 = MEMORY[0x277D84F90];
    sub_22C3B7BD0(0, v127, 0);
    v174 = *(v172 + 16);
    v128 = v175;
    v129 = v116 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
    i = *(v172 + 72);
    v172 += 16;
    v130 = (v172 - 8);
    do
    {
      v131 = v161;
      v132 = v171;
      (v174)(v161, v129, v171);
      sub_22C8FFFBC();
      sub_22C8FFF9C();
      sub_22C36E278(0, &qword_27D9BFF38, 0x277CCA990);
      sub_22C8FFFAC();
      (*v130)(v131, v132);
      v175 = v128;
      v133 = v117;
      v135 = *(v128 + 16);
      v134 = *(v128 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_22C3B7BD0((v134 > 1), v135 + 1, 1);
        v128 = v175;
      }

      *(v128 + 16) = v135 + 1;
      (*(v163 + 32))(v128 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v135, v133, v162);
      v129 += i;
      --v127;
      v117 = v133;
    }

    while (v127);
    v115 = v153;
  }

  v136 = [objc_opt_self() picoseconds];
  sub_22C776C84(v128, v136);
  if (v115)
  {
    (*(v152 + 8))(v169, v151);

    return;
  }

  v138 = v137;

  if (!v138)
  {
    (*(v152 + 8))(v169, v151);
    v119 = 1;
    goto LABEL_96;
  }

  sub_22C36E278(0, &qword_27D9BFF40, 0x277CCAD98);
  v120 = v148;
  sub_22C8FFFAC();
  (*(v152 + 8))(v169, v151);
  v119 = 0;
LABEL_113:

  v139 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C36C640(v120, v119, 1, v139);
}

uint64_t sub_22C776074@<X0>(uint64_t *a1@<X8>)
{
  v101 = a1;
  v1 = type metadata accessor for EnumResolver(0);
  MEMORY[0x28223BE20](v1);
  sub_22C3698E4();
  v104 = v2;
  v4 = MEMORY[0x28223BE20](v3);
  v102 = &v93 - v5;
  MEMORY[0x28223BE20](v4);
  v100 = &v93 - v6;
  sub_22C9063DC();
  sub_22C369824();
  v110 = v8;
  v111 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v109 = v9;
  MEMORY[0x28223BE20](v10);
  v103 = &v93 - v11;
  v12 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = &v93 - v13;
  sub_22C90952C();
  sub_22C369824();
  v96 = v15;
  v97 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v98 = v17 - v16;
  sub_22C90947C();
  sub_22C369824();
  v107 = v19;
  v108 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v22 = v21 - v20;
  v113 = sub_22C90077C();
  sub_22C369824();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v28 = v27 - v26;
  v112 = sub_22C908A8C();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = sub_22C90998C();
  sub_22C369824();
  v105 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v40 = v39 - v38;
  v41 = v1;
  v42 = sub_22C908B2C();
  MEMORY[0x2318B6010](v42);
  v43 = v114;
  v106 = v22;
  sub_22C908B1C();
  if (v43)
  {
    (*(v24 + 8))(v28, v113);
    return (*(v30 + 8))(v34, v112);
  }

  else
  {
    v114 = 0;
    v45 = v109;
    v94 = v40;
    v95 = v35;
    v93 = v41;
    (*(v24 + 8))(v28, v113);
    (*(v30 + 8))(v34, v112);
    v47 = v106;
    v46 = v107;
    v48 = v108;
    if ((*(v107 + 88))(v106, v108) == *MEMORY[0x277D72B48])
    {
      (*(v46 + 96))(v47, v48);
      v49 = v105;
      v50 = v94;
      v51 = v95;
      v52 = (*(v105 + 32))(v94, v47, v95);
      v53 = MEMORY[0x2318B6E50](v52);
      MEMORY[0x28223BE20](v53);
      v54 = v114;
      v55 = v115;
      *(&v93 - 2) = v115;
      v56 = sub_22C5EC6EC(sub_22C776B94, (&v93 - 4), v53);
      v114 = v54;

      v58 = v110;
      v57 = v111;
      if (v56)
      {
        sub_22C9090BC();
        v59 = swift_allocBox();
        (*(v96 + 16))(v98, v55, v97);
        v60 = sub_22C90993C();
        sub_22C36C640(v99, 1, 1, v60);

        sub_22C90909C();
        (*(v49 + 8))(v50, v51);
        v61 = v101;
        *v101 = v59;
        v62 = *MEMORY[0x277D729E8];
        v63 = sub_22C9093BC();
        return (*(*(v63 - 8) + 104))(v61, v62, v63);
      }

      else
      {
        v73 = v103;
        sub_22C903F8C();
        v74 = v100;
        sub_22C776A4C(v55, v100);
        v75 = v102;
        sub_22C776A4C(v55, v102);
        v76 = sub_22C9063CC();
        v77 = sub_22C90AADC();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v78 = 136315394;
          sub_22C90951C();
          v79 = sub_22C36A024();
          sub_22C776AB0(v79);
          sub_22C776C68();
          sub_22C36A024();

          *(v78 + 4) = v74;
          *(v78 + 12) = 2080;
          v80 = v93;
          v81 = *(v75 + *(v93 + 20));

          sub_22C776AB0(v75);
          sub_22C776C68();
          sub_22C36A024();
          v82 = v80;
          v49 = v105;

          *(v78 + 14) = v81;
          _os_log_impl(&dword_22C366000, v76, v77, "AppEnum case not found: %s.%s", v78, 0x16u);
          swift_arrayDestroy();
          v55 = v115;
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v58 + 8))(v103, v111);
        }

        else
        {

          sub_22C776AB0(v75);
          sub_22C776AB0(v74);
          (*(v58 + 8))(v73, v57);
          v82 = v93;
        }

        type metadata accessor for InterpreterError(0);
        v84 = sub_22C5F8844();
        sub_22C370620(v84);
        v86 = v85;
        v87 = sub_22C90951C();
        v88 = (v55 + *(v82 + 20));
        v89 = *v88;
        v90 = v88[1];
        *v86 = v87;
        v86[1] = v91;
        v86[2] = v89;
        v86[3] = v90;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v92 = *(v49 + 8);

        return v92(v94, v95);
      }
    }

    else
    {
      (*(v46 + 8))(v47, v48);
      sub_22C903F8C();
      v64 = v104;
      sub_22C776A4C(v115, v104);
      v65 = sub_22C9063CC();
      v66 = sub_22C90AADC();
      v67 = os_log_type_enabled(v65, v66);
      v69 = v110;
      v68 = v111;
      if (v67)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v116 = v71;
        *v70 = 136315138;
        sub_22C9094FC();
        v72 = sub_22C36A024();
        sub_22C776AB0(v72);
        sub_22C776C68();
        sub_22C36A024();

        *(v70 + 4) = v64;
        _os_log_impl(&dword_22C366000, v65, v66, "type is not a valid AppEnum: %s", v70, 0xCu);
        sub_22C36FF94(v71);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {

        sub_22C776AB0(v64);
      }

      (*(v69 + 8))(v45, v68);
      type metadata accessor for InterpreterError(0);
      v83 = sub_22C5F8844();
      sub_22C370620(v83);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }
}

uint64_t type metadata accessor for EnumResolver(uint64_t a1)
{
  result = qword_27D9BFF50;
  if (!qword_27D9BFF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C776A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnumResolver(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C776AB0(uint64_t a1)
{
  v2 = type metadata accessor for EnumResolver(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C776B0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C909A2C();
  v5 = v4;
  v6 = (a2 + *(type metadata accessor for EnumResolver(0) + 20));
  if (v3 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C90B4FC();
  }

  return v8 & 1;
}

uint64_t sub_22C776BDC(uint64_t a1)
{
  result = sub_22C90952C();
  if (v2 <= 0x3F)
  {
    result = sub_22C908AEC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C776C68()
{

  return sub_22C36F9F4(v0, v1, (v2 - 72));
}

uint64_t sub_22C776C84(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v68 = sub_22C3A5908(&qword_27D9BAD80, &qword_22C90D628);
  v4 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  sub_22C3698E4();
  v85 = v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  v80 = &v62 - v7;
  sub_22C369930();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = sub_22C3A5908(&qword_27D9BFF60, &unk_22C927B40);
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v70 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v69 = &v62 - v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v71 = &v62 - v19;
  v20 = sub_22C3A5908(&qword_27D9BFF68, &qword_22C925BA0);
  MEMORY[0x28223BE20](v20 - 8);
  sub_22C3698E4();
  v66 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  v65 = (&v62 - v23);
  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  v72 = v4;
  v67 = v2;
  v63 = a1;
  v64 = v24;
  if (v24)
  {
    v62 = v14;
    v82 = MEMORY[0x277D84F90];
    v26 = v13;
    sub_22C3B7BD0(0, v24, 0);
    v25 = v82;
    v28 = *(v4 + 16);
    v27 = v4 + 16;
    v77 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v78 = v28;
    v29 = a1 + v77;
    v30 = *(v27 + 56);
    v75 = (v27 - 8);
    v76 = v30;
    v79 = v27;
    v73 = (v27 + 16);
    v74 = v11;
    v31 = v24;
    v32 = v68;
    do
    {
      v78(v11, v29, v32);
      sub_22C8FFF9C();
      sub_22C777378();
      v33 = v80;
      sub_22C8FFFAC();
      sub_22C8FFFCC();
      v34 = *v75;
      (*v75)(v33, v32);
      v34(v11, v32);
      v82 = v25;
      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22C3B7BD0((v35 > 1), v36 + 1, 1);
        v25 = v82;
      }

      *(v25 + 16) = v36 + 1;
      v37 = v76;
      (*v73)(v25 + v77 + v36 * v76, v26, v32);
      v29 += v37;
      --v31;
      v11 = v74;
    }

    while (v31);
    v4 = v72;
    v14 = v62;
  }

  v83 = 0;
  v84 = 0;
  v82 = v25;
  v38 = v66;
  sub_22C80F20C(v66);
  if (sub_22C370B74(v38, 1, v14) != 1)
  {
    sub_22C7773BC(v38, v71);
    v42 = v82;
    v43 = *(v82 + 16);
    v81 = v4 + 16;

    v41 = v68;
    while (1)
    {
      v45 = v70;
      if (v83 == v43)
      {

        v40 = v65;
        sub_22C7773BC(v71, v65);
        v39 = 0;
        v4 = v72;
        goto LABEL_18;
      }

      if ((v83 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v83 >= *(v42 + 16))
      {
        goto LABEL_25;
      }

      v46 = v72;
      v47 = v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v72 + 72) * v83++;
      v48 = *(v14 + 48);
      v49 = v84;
      *v70 = v84;
      result = (*(v46 + 16))(v45 + v48, v47, v41);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_26;
      }

      v84 = v49 + 1;
      v50 = v69;
      sub_22C7773BC(v45, v69);
      sub_22C777378();
      v51 = v71;
      if (sub_22C8FFF8C())
      {
        sub_22C3770B0(v51, &qword_27D9BFF60, &unk_22C927B40);
        result = sub_22C7773BC(v50, v51);
      }

      else
      {
        result = sub_22C3770B0(v50, &qword_27D9BFF60, &unk_22C927B40);
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  sub_22C3770B0(v38, &qword_27D9BFF68, &qword_22C925BA0);
  v39 = 1;
  v40 = v65;
  v41 = v68;
LABEL_18:
  sub_22C36C640(v40, v39, 1, v14);
  if (sub_22C370B74(v40, 1, v14) == 1)
  {
    sub_22C3770B0(v40, &qword_27D9BFF68, &qword_22C925BA0);
    return 0;
  }

  v52 = *v40;
  v53 = *(v4 + 8);
  result = v53(v40 + *(v14 + 48), v41);
  if (v52 >= v64)
  {
    goto LABEL_27;
  }

  v54 = v4;
  v55 = v63 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v80 = *(v54 + 72);
  v81 = sub_22C8FFF9C();
  v56 = *(v54 + 16);
  v57 = 0.0;
  v58 = v85;
  v59 = v64;
  do
  {
    v56(v58, v55, v41);
    sub_22C8FFFCC();
    sub_22C8FFFBC();
    v58 = v85;
    v61 = v60;
    v53(v11, v41);
    v53(v58, v41);
    v57 = v57 + v61;
    v55 += v80;
    --v59;
  }

  while (v59);
  return *&v57;
}

unint64_t sub_22C777378()
{
  result = qword_27D9BFF38;
  if (!qword_27D9BFF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BFF38);
  }

  return result;
}

uint64_t sub_22C7773BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BFF60, &unk_22C927B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t payloadAppEntityAllowlist.setter(void *a1)
{
  swift_beginAccess();
  off_27D9BFF70 = a1;
}

uint64_t sub_22C77751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C777534()
{
  sub_22C36FB38();
  v1 = v0[5];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v0[6] = v2;
  v0[7] = v3;
  if (v2)
  {
    v0[8] = 1;
    sub_22C371D1C();
    v10 = v4;
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v5;
    *v5 = v6;
    sub_22C37E1A8(v5);

    return v10(v0 + 2, v1 + 32);
  }

  else
  {
    sub_22C36D5E0();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_22C77763C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C77773C()
{
  v1 = v0[2];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[7];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_22C36D270();
      sub_22C590FB8(v14, v15, v16, v17);
      v3 = v18;
    }

    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 >= v4 >> 1)
    {
      v19 = sub_22C369AB0(v4);
      sub_22C590FB8(v19, v5 + 1, 1, v20);
      v3 = v21;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + 8 * v5 + 32) = v1;
    v6 = v0[8];
    v0[7] = v3;
  }

  else
  {

    v6 = v0[8];
  }

  v7 = v0[6];
  if (v6 == v7)
  {
    sub_22C36D5E0();
    v9 = v0[7];

    v8(v9);
    return;
  }

  if (v6 >= v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  v0[8] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v10 = v0[5] + 40 * v6;
  sub_22C371D1C();
  v22 = v11;
  swift_task_alloc();
  sub_22C36CC90();
  v0[9] = v12;
  *v12 = v13;
  sub_22C37E1A8(v12);

  v22(v0 + 2, v10 + 32);
}

uint64_t sub_22C777900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C777918()
{
  sub_22C36FB38();
  v1 = *(v0[8] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[9] = v1;
  v0[10] = v2;
  if (v1)
  {
    v0[11] = 1;
    sub_22C371D1C();
    v9 = v3;
    swift_task_alloc();
    sub_22C36CC90();
    v0[12] = v4;
    *v4 = v5;
    v6 = sub_22C79198C(v4);
    v7 = v9;
  }

  else
  {
    sub_22C36D5E0();
    v6 = MEMORY[0x277D84F90];
  }

  return v7(v6);
}

uint64_t sub_22C777A14()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C777B14()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[10];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_22C36D270();
      sub_22C591018(v17, v18, v19, v20);
      v6 = v21;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      v22 = sub_22C369AB0(v7);
      sub_22C591018(v22, v8 + 1, 1, v23);
      v6 = v24;
    }

    *(v6 + 16) = v8 + 1;
    v9 = (v6 + 32 * v8);
    v9[4] = v2;
    v9[5] = v1;
    v9[6] = v3;
    v9[7] = v4;
    v10 = v0[11];
    v0[10] = v6;
  }

  else
  {
    sub_22C456D48(v0[2], 0, v0[4]);
    v10 = v0[11];
  }

  v11 = v0[9];
  if (v10 == v11)
  {
    sub_22C36D5E0();
    v13 = v0[10];

LABEL_11:
    v12(v13);
    return;
  }

  if (v10 >= v11)
  {
    __break(1u);
  }

  else
  {
    v0[11] = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      sub_22C371D1C();
      v25 = v14;
      swift_task_alloc();
      sub_22C36CC90();
      v0[12] = v15;
      *v15 = v16;
      v13 = sub_22C79198C(v15);
      v12 = v25;

      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C777CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C777D00()
{
  sub_22C36FB38();
  v1 = *(v0[9] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[10] = v1;
  v0[11] = v2;
  if (v1)
  {
    v0[12] = 1;
    sub_22C371D1C();
    v9 = v3;
    swift_task_alloc();
    sub_22C36CC90();
    v0[13] = v4;
    *v4 = v5;
    v6 = sub_22C79195C(v4);
    v7 = v9;
  }

  else
  {
    sub_22C36D5E0();
    v6 = MEMORY[0x277D84F90];
  }

  return v7(v6);
}

uint64_t sub_22C777DFC()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C777EFC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 32);
    v24 = *(v0 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 88);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_22C36D270();
      sub_22C591048(v16, v17, v18, v19);
      v5 = v20;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      v21 = sub_22C369AB0(v6);
      sub_22C591048(v21, v7 + 1, 1, v22);
      v5 = v23;
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 40 * v7;
    *(v8 + 32) = v2;
    *(v8 + 40) = v1;
    *(v8 + 48) = v3;
    *(v8 + 56) = v24;
    v9 = *(v0 + 96);
    *(v0 + 88) = v5;
  }

  else
  {
    sub_22C791650(*(v0 + 16), 0);
    v9 = *(v0 + 96);
  }

  v10 = *(v0 + 80);
  if (v9 == v10)
  {
    sub_22C36D5E0();
    v12 = *(v0 + 88);

LABEL_11:
    v11(v12);
    return;
  }

  if (v9 >= v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 96) = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      sub_22C371D1C();
      v25 = v13;
      swift_task_alloc();
      sub_22C36CC90();
      *(v0 + 104) = v14;
      *v14 = v15;
      v12 = sub_22C79195C(v14);
      v11 = v25;

      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C7780E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22C778104, 0, 0);
}

uint64_t sub_22C778104()
{
  sub_22C36FB38();
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[6];
  v3 = *(v2 + 16);
  v0[7] = v3;
  v0[8] = v1;
  if (v3)
  {
    v4 = sub_22C901FAC();
    sub_22C369914(v4);
    v0[9] = 1;
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    sub_22C37FA44();
    v13 = v7;
    swift_task_alloc();
    sub_22C36CC90();
    v0[10] = v8;
    *v8 = v9;
    sub_22C791A8C(v8);

    return v13(v0 + 3, v2 + v6);
  }

  else
  {
    sub_22C36D5E0();
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_22C77824C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C77834C()
{
  if (v0[3])
  {

    MEMORY[0x2318B7AA0](v1);
    sub_22C791DFC();
    if (v3)
    {
      sub_22C369AB0(v2);
      sub_22C90A61C();
    }

    sub_22C370018();
    sub_22C90A65C();

    v4 = v0[9];
    v0[8] = v0[2];
  }

  else
  {
    v4 = v0[9];
  }

  v5 = v0[7];
  if (v4 == v5)
  {
    sub_22C36D5E0();
    v7 = v0[8];

    v6(v7);
    return;
  }

  if (v4 >= v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(sub_22C901FAC() - 8);
  v0[9] = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v9 = v0[6] + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4;
  sub_22C371D1C();
  v13 = v10;
  swift_task_alloc();
  sub_22C36CC90();
  v0[10] = v11;
  *v11 = v12;
  sub_22C791A8C(v11);

  v13(v0 + 3, v9);
}

uint64_t sub_22C778530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v3[5] = swift_task_alloc();
  v4 = sub_22C9093BC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C778638, 0, 0);
}

uint64_t sub_22C778638()
{
  sub_22C36FB38();
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[11] = 0;
  v0[12] = v4;
  v0[10] = v3;
  if (v3)
  {
    v5 = sub_22C901FAC();
    sub_22C369914(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = (v2 + *v2);
    swift_task_alloc();
    sub_22C36CC90();
    v0[13] = v8;
    *v8 = v9;
    v10 = sub_22C791A2C(v8);

    return v14(v10, v1 + v7);
  }

  else
  {

    sub_22C36D5E0();
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_22C7787BC()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7788BC()
{
  sub_22C3749D8();
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_22C36CCF8();
  sub_22C36D0A8(v3, v4, v2);
  if (v5)
  {
    sub_22C376B84(v1, &qword_27D9BB908, &qword_22C910960);
    v6 = v0[12];
  }

  else
  {
    v7 = *(v0[7] + 32);
    v7(v0[9], v1, v2);
    v8 = sub_22C3806B8();
    v9(v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[12];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C36D270();
      sub_22C5903C0();
      v6 = v29;
    }

    v11 = *(v6 + 16);
    if (v11 >= *(v6 + 24) >> 1)
    {
      sub_22C5903C0();
      v6 = v30;
    }

    v12 = v0[8];
    v13 = v0[6];
    v14 = v0[7];
    (*(v14 + 8))(v0[9], v13);
    *(v6 + 16) = v11 + 1;
    v7(v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, v12, v13);
  }

  v15 = v0[10];
  v16 = v0[11] + 1;
  v0[11] = v16;
  v0[12] = v6;
  if (v16 == v15)
  {

    sub_22C36D5E0();
    v17 = sub_22C792134();

    return v18(v17);
  }

  else
  {
    v20 = v0[4];
    v21 = sub_22C901FAC();
    sub_22C3699B8(v21);
    v24 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v16;
    sub_22C37FA44();
    v31 = v25;
    swift_task_alloc();
    sub_22C36CC90();
    v0[13] = v26;
    *v26 = v27;
    v28 = sub_22C791A2C(v26);

    return v31(v28, v24);
  }
}

uint64_t sub_22C778B60()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C778BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = sub_22C90731C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v109 = v15;
  v111 = sub_22C9063DC();
  sub_22C369824();
  v114 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v110 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  sub_22C3698F8(v20);
  v102 = sub_22C90952C();
  sub_22C369824();
  v101 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  v98 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  sub_22C3698F8(v25);
  v120 = sub_22C90941C();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  v105 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v108 = v33;
  v116 = v13;
  v118 = v11;
  v119 = a1;
  v103 = *(v13 + 16);
  v103(a7, a1, v11);
  v34 = type metadata accessor for PayloadFormatter(0);
  v35 = v34[5];
  v36 = sub_22C90880C();
  sub_22C3699C8();
  v106 = v37;
  v100 = *(v37 + 16);
  v100(a7 + v35, a2, v36);
  *(a7 + v34[6]) = a3;
  v38 = v34[7];
  sub_22C908AEC();
  sub_22C3699C8();
  (*(v39 + 16))(a7 + v38, a4);
  sub_22C378A4C(a5, a7 + v34[8]);
  v112 = *(v27 + 16);
  v112(a7 + v34[9], a6, v120);
  v40 = a7 + v34[10];
  v107 = v36;
  v100(v40, a2, v36);
  *(v40 + *(type metadata accessor for TranscriptValueFetcher(0) + 20)) = a3;
  LOBYTE(v122) = 0;

  sub_22C5F417C(&v122, v108);
  v41 = sub_22C38BB08();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x277D72AD0])
  {
    v44 = sub_22C6AF3F0();
    (v112)(v44);
    v45 = sub_22C36BAFC();
    v46(v45);
    v47 = swift_projectBox();
    if ((*(v101 + 88))(v47, v102) == *MEMORY[0x277D72D50])
    {
      (*(v101 + 16))(v99, v47, v102);
      (*(v101 + 96))(v99, v102);
      sub_22C9094EC();
      swift_projectBox();
      sub_22C36BBA8();
      v49 = (*(v48 + 88))();
      v50 = v111;
      v51 = v109;
      if (v49 == *MEMORY[0x277D72CE0])
      {

        sub_22C38152C();
        sub_22C791DDC(v52);
        v102 = *(v27 + 8);
        v102(v108, v120);
        goto LABEL_17;
      }

      v62 = v49;
      if (v49 == *MEMORY[0x277D72C88])
      {

        goto LABEL_12;
      }

      v96 = *MEMORY[0x277D72CC0];

      v61 = v62 == v96;
      v50 = v111;
      if (v61)
      {
        sub_22C38152C();
        sub_22C791DDC(v97);
        goto LABEL_15;
      }

LABEL_14:
      sub_22C38152C();
      *(a7 + v66) = 0;
LABEL_15:
      v67 = sub_22C791D8C();
      v68(v67);
      goto LABEL_16;
    }

    v50 = v111;
LABEL_13:

    goto LABEL_14;
  }

  v50 = v111;
  if (v43 != *MEMORY[0x277D72AB8])
  {
    goto LABEL_14;
  }

  v53 = sub_22C6AF3F0();
  (v112)(v53);
  v54 = sub_22C36BAFC();
  v55(v54);
  v56 = swift_projectBox();
  if ((*(v101 + 88))(v56, v102) != *MEMORY[0x277D72D50])
  {
    goto LABEL_13;
  }

  sub_22C375D94();
  v57(v98, v56, v102);
  (*(v101 + 96))(v98, v102);
  sub_22C9094EC();
  swift_projectBox();
  sub_22C36BBA8();
  v59 = (*(v58 + 88))();
  v60 = *MEMORY[0x277D72C88];

  v61 = v59 == v60;
  v50 = v111;
  if (!v61)
  {
    goto LABEL_14;
  }

LABEL_12:
  v63 = sub_22C791D8C();
  v64(v63);
  sub_22C38152C();
  sub_22C791DDC(v65);
LABEL_16:
  v51 = v109;
LABEL_17:
  sub_22C9040CC();
  v103(v51, a1, v118);
  v69 = sub_22C9063CC();
  v70 = sub_22C90AABC();
  if (sub_22C36FBB4(v70))
  {
    sub_22C36BED8();
    v71 = swift_slowAlloc();
    v124 = sub_22C370060();
    *v71 = 136315138;
    sub_22C7914C4(&qword_27D9BFFE8, MEMORY[0x277D1DFA0], MEMORY[0x277D1DFA8]);
    sub_22C6B01B0();
    v122 = sub_22C909F4C();
    v123 = v72;
    sub_22C90A49C();
    v73 = sub_22C37BC08();
    v74 = *(v116 + 8);
    v74(v73, v118);
    v75 = sub_22C372FA4();
    sub_22C36F9F4(v75, v76, v77);
    sub_22C38B194();

    *(v71 + 4) = v51;
    _os_log_impl(&dword_22C366000, v69, v70, "Payload Expression requested with payload : %s", v71, 0xCu);
    sub_22C792208();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  else
  {

    v74 = *(v116 + 8);
    v74(v51, v118);
  }

  v78 = *(v114 + 8);
  v78(v104, v50);
  sub_22C9040CC();
  v112(v105, a6, v120);
  v79 = sub_22C9063CC();
  v80 = sub_22C90AABC();
  if (sub_22C36FBB4(v80))
  {
    sub_22C36BED8();
    v81 = swift_slowAlloc();
    v82 = sub_22C370060();
    v124 = v82;
    *v81 = 136315138;
    v122 = sub_22C7F5E00(v82);
    v123 = v83;
    sub_22C90A49C();
    v84 = sub_22C38B194();
    v102(v84, v120);
    v85 = sub_22C372FA4();
    sub_22C36F9F4(v85, v86, v87);
    sub_22C38B194();

    *(v81 + 4) = v105;
    _os_log_impl(&dword_22C366000, v79, v80, "Payload Expression found TypeInstance : %s", v81, 0xCu);
    sub_22C792208();
    sub_22C3699EC();
    sub_22C372FB0();

    v102(a6, v120);
    sub_22C36FF94(a5);
    v88 = sub_22C791DC0();
    v89(v88);
    (*(v106 + 8))(a2, v107);
    v74(v119, v118);
    v90 = v110;
    v91 = v111;
  }

  else
  {

    v102(a6, v120);
    sub_22C36FF94(a5);
    v92 = sub_22C791DC0();
    v93(v92);
    (*(v106 + 8))(a2, v107);
    v74(v119, v118);
    v94 = sub_22C38A990();
    (v102)(v94);
    v90 = sub_22C372164();
  }

  return (v78)(v90, v91);
}

uint64_t sub_22C779794()
{
  sub_22C369980();
  v1[14] = v2;
  v1[15] = v0;
  v3 = type metadata accessor for PayloadFormatter(0);
  v1[16] = v3;
  sub_22C369914(v3);
  v1[17] = sub_22C3699D4();
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v4);
  v1[18] = sub_22C3699D4();
  v5 = sub_22C90952C();
  v1[19] = v5;
  sub_22C3699B8(v5);
  v1[20] = v6;
  v1[21] = sub_22C36D0D4();
  v1[22] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v1[23] = v7;
  sub_22C3699B8(v7);
  v1[24] = v8;
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v9 = sub_22C9001BC();
  v1[36] = v9;
  sub_22C3699B8(v9);
  v1[37] = v10;
  v1[38] = sub_22C3699D4();
  v11 = sub_22C9093BC();
  v1[39] = v11;
  sub_22C3699B8(v11);
  v1[40] = v12;
  v1[41] = sub_22C36D0D4();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v13 = sub_22C90021C();
  v1[52] = v13;
  sub_22C3699B8(v13);
  v1[53] = v14;
  v1[54] = sub_22C36D0D4();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v15);
  v1[60] = sub_22C36D0D4();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v16 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_22C77A054()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {

    *(v5 + 576) = v3;

    sub_22C36BB08();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_22C77A910()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 608) = v5;

  if (v0)
  {
  }

  else
  {

    sub_22C374448();

    MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_22C77BA5C()
{
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  v4 = *v1;
  sub_22C36D994();
  *v5 = v4;
  *(v2 + 640) = v6;

  if (v0)
  {

    sub_22C369A24();

    return v7();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_22C77C728(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22C77C7C4;

  return sub_22C77C8D4();
}

uint64_t sub_22C77C7C4()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 32) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C77C8D4()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9093BC();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v1[6] = sub_22C36D0D4();
  v1[7] = swift_task_alloc();
  v5 = sub_22C901FAC();
  v1[8] = v5;
  sub_22C3699B8(v5);
  v1[9] = v6;
  v1[10] = sub_22C36D0D4();
  v1[11] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v1[12] = v7;
  sub_22C3699B8(v7);
  v1[13] = v8;
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v9 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v9);
  v1[16] = sub_22C3699D4();
  v10 = sub_22C9025EC();
  v1[17] = v10;
  sub_22C3699B8(v10);
  v1[18] = v11;
  v1[19] = sub_22C36D0D4();
  v1[20] = swift_task_alloc();
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C77CAB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, os_log_t log, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C37B51C();
  v32 = v30[17];
  type metadata accessor for PayloadFormatter(0);
  sub_22C7921A8();
  v33 = sub_22C383C3C();
  sub_22C36D0A8(v33, v34, v32);
  if (v35)
  {
    sub_22C376B84(v30[16], &qword_27D9BF610, &qword_22C922B50);
    sub_22C9040CC();
    v36 = sub_22C375B38();
    v37(v36);
    v38 = sub_22C9063CC();
    v39 = sub_22C90AADC();
    v40 = sub_22C791C0C(v39);
    v42 = v30[13];
    v41 = v30[14];
    v43 = v30[12];
    v44 = v30[10];
    if (v40)
    {
      sub_22C36BED8();
      swift_slowAlloc();
      a17 = v43;
      LODWORD(a15) = v31;
      a18 = sub_22C388D58();
      *v43 = 136315138;
      sub_22C36CB4C();
      sub_22C7914C4(v45, v46, MEMORY[0x277D1C368]);
      sub_22C6B01B0();
      sub_22C90B47C();
      a16 = v41;
      v47 = sub_22C37FA34();
      v48(v47);
      v49 = sub_22C36D390();
      sub_22C36F9F4(v49, v50, v51);
      sub_22C3743B4();
      *(v43 + 4) = v44;
      sub_22C36D418(&dword_22C366000, "Could not fetch value for statementID %s", v31);
      sub_22C3817B8();
      sub_22C370510();

      (*(v42 + 8))(v41, v43);
    }

    else
    {

      v79 = sub_22C37FA34();
      v80(v79);
      v81 = sub_22C3805D8();
      v83(v81, v82);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C373954();
    sub_22C7914C4(v84, v85, &protocol conformance descriptor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v86 = swift_willThrow();
    sub_22C791BE8(v86, v87, v88, v89, v90, v91, v92, v93);

    sub_22C369A24();
    sub_22C381608();

    return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, log, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v52 = v30[11];
    v53 = v30[8];
    v54 = v30[9];
    v55 = v30[2];
    v56 = sub_22C6AF81C();
    v57(v56);
    sub_22C9040CC();
    (*(v54 + 16))(v52, v55, v53);
    v58 = sub_22C36D7E0();
    v59(v58);
    v60 = sub_22C9063CC();
    v61 = sub_22C90AABC();
    v62 = sub_22C36FBB4(v61);
    v63 = v30[18];
    v111 = v30[17];
    v112 = v30[19];
    v64 = v30[15];
    v66 = v30[12];
    v65 = v30[13];
    if (v62)
    {
      v108 = v61;
      v67 = v30[7];
      loga = v60;
      v68 = v30[5];
      v107 = v30[4];
      swift_slowAlloc();
      v113 = sub_22C791C28();
      *v66 = 67109378;
      v110 = v64;
      v69 = sub_22C901F9C();
      v70 = sub_22C379FC8();
      v71(v70);
      *(v66 + 4) = v69;
      *(v66 + 8) = 2080;
      sub_22C90207C();
      sub_22C36A32C();
      sub_22C7914C4(v72, v73, MEMORY[0x277D72A80]);
      v74 = v67;
      sub_22C909F4C();
      sub_22C791D08();
      (*(v68 + 8))(v67, v107);
      v75 = *(v63 + 8);
      v75(v112, v111);
      v76 = sub_22C372164();
      sub_22C36F9F4(v76, v77, v78);
      sub_22C791F48();

      *(v66 + 10) = v74;
      _os_log_impl(&dword_22C366000, loga, v108, "Formatting payload for statementID %u: %s", v66, 0x12u);
      sub_22C36FF94(v113);
      sub_22C386DA4();
      sub_22C37B09C();

      (*(v65 + 8))(v110, v66);
    }

    else
    {
      v103 = sub_22C379FC8();
      v104(v103);

      v75 = *(v63 + 8);
      v75(v112, v111);
      (*(v65 + 8))(v64, v66);
    }

    v30[21] = v75;
    sub_22C90207C();
    v105 = swift_task_alloc();
    v30[22] = v105;
    *v105 = v30;
    v105[1] = sub_22C77CFC8;
    sub_22C386674(v30[6]);
    sub_22C381608();

    return sub_22C77DAE4();
  }
}

uint64_t sub_22C77CFC8()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v7 + 184) = v6;
  *(v7 + 192) = v0;

  v8 = sub_22C371810();
  v9(v8);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C77D118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 168);
  if (*(v12 + 184))
  {

    sub_22C795BBC();
    v15 = v14;

    v16 = sub_22C36BAFC();
    v17 = v13(v16);
    if (v15)
    {
    }
  }

  else
  {
    v25 = sub_22C36BAFC();
    v17 = v13(v25);
  }

  sub_22C791BE8(v17, v18, v19, v20, v21, v22, v23, v24);

  sub_22C36D5E0();
  sub_22C792134();
  sub_22C372034();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22C77D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = (*(v12 + 168))(*(v12 + 160), *(v12 + 136));
  sub_22C791BE8(v13, v14, v15, v16, v17, v18, v19, v20);

  sub_22C369A24();
  sub_22C372034();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_22C77D2DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22C77D378;

  return sub_22C77C8D4();
}

uint64_t sub_22C77D378()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 32) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C77D4A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22C77D554;

  return sub_22C77D6DC();
}

uint64_t sub_22C77D554()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;

  if (v0)
  {
    sub_22C369A24();

    return v4();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_22C77D66C()
{
  sub_22C369980();
  sub_22C9093BC();
  sub_22C36BECC();
  sub_22C36C640(v0, v1, v2, v3);
  sub_22C369A24();

  return v4();
}

uint64_t sub_22C77D6DC()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C901FAC();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v1[7] = sub_22C3699D4();
  v6 = sub_22C9063DC();
  v1[8] = v6;
  sub_22C3699B8(v6);
  v1[9] = v7;
  v1[10] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v8);
  v1[11] = sub_22C3699D4();
  v9 = sub_22C9025EC();
  v1[12] = v9;
  sub_22C3699B8(v9);
  v1[13] = v10;
  v1[14] = sub_22C3699D4();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C77D848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  v17 = v16[12];
  type metadata accessor for PayloadFormatter(0);
  sub_22C7921A8();
  v18 = sub_22C383C3C();
  sub_22C36D0A8(v18, v19, v17);
  if (v20)
  {
    sub_22C791E3C();
    sub_22C376B84(v21, &qword_27D9BF610, &qword_22C922B50);
    sub_22C9040CC();
    v22 = sub_22C375B38();
    v23(v22);
    v24 = sub_22C9063CC();
    v25 = sub_22C90AADC();
    v26 = sub_22C791C0C(v25);
    v28 = v16[9];
    v27 = v16[10];
    v29 = v16[7];
    v30 = v16[8];
    if (v26)
    {
      sub_22C36BED8();
      swift_slowAlloc();
      a11 = v30;
      sub_22C388D58();
      sub_22C791E2C();
      *v30 = 136315138;
      sub_22C36CB4C();
      sub_22C7914C4(v31, v32, MEMORY[0x277D1C368]);
      sub_22C6B01B0();
      sub_22C90B47C();
      a10 = v27;
      v33 = sub_22C37FA34();
      v34(v33);
      v35 = sub_22C36D390();
      sub_22C36F9F4(v35, v36, v37);
      sub_22C3743B4();
      *(v30 + 4) = v29;
      sub_22C36D418(&dword_22C366000, "Could not fetch value for statementID %s", BYTE4(a9));
      sub_22C3817B8();
      sub_22C370510();

      (*(v28 + 8))(v27, v30);
    }

    else
    {

      v42 = sub_22C37FA34();
      v43(v42);
      v44 = sub_22C3805D8();
      v46(v44, v45);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C373954();
    v49 = sub_22C7914C4(v47, v48, &protocol conformance descriptor for InterpreterError);
    sub_22C36D148(v49);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_22C369A24();
  }

  else
  {
    v38 = sub_22C37170C();
    v39(v38);
    sub_22C90207C();
    v40 = sub_22C36BBCC();
    v41(v40);

    sub_22C369A24();
  }

  sub_22C36EC40();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C77DAE4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_22C90906C();
  v1[6] = v3;
  sub_22C3699B8(v3);
  v1[7] = v4;
  v1[8] = sub_22C3699D4();
  v5 = sub_22C90910C();
  v1[9] = v5;
  sub_22C3699B8(v5);
  v1[10] = v6;
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v7 = sub_22C90919C();
  v1[13] = v7;
  sub_22C3699B8(v7);
  v1[14] = v8;
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  v9 = sub_22C9090BC();
  v1[17] = v9;
  sub_22C3699B8(v9);
  v1[18] = v10;
  v1[19] = sub_22C3699D4();
  v11 = sub_22C90046C();
  v1[20] = v11;
  sub_22C3699B8(v11);
  v1[21] = v12;
  v1[22] = sub_22C3699D4();
  v13 = sub_22C9091EC();
  v1[23] = v13;
  sub_22C3699B8(v13);
  v1[24] = v14;
  v1[25] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  v1[26] = v15;
  sub_22C3699B8(v15);
  v1[27] = v16;
  v1[28] = sub_22C3699D4();
  v17 = sub_22C90922C();
  v1[29] = v17;
  sub_22C3699B8(v17);
  v1[30] = v18;
  v1[31] = sub_22C3699D4();
  v19 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v19);
  v1[32] = sub_22C3699D4();
  v20 = sub_22C90926C();
  v1[33] = v20;
  sub_22C3699B8(v20);
  v1[34] = v21;
  v1[35] = sub_22C3699D4();
  v22 = sub_22C9092DC();
  v1[36] = v22;
  sub_22C3699B8(v22);
  v1[37] = v23;
  v1[38] = sub_22C3699D4();
  v24 = sub_22C90021C();
  v1[39] = v24;
  sub_22C3699B8(v24);
  v1[40] = v25;
  v1[41] = sub_22C3699D4();
  v26 = sub_22C90929C();
  v1[42] = v26;
  sub_22C3699B8(v26);
  v1[43] = v27;
  v1[44] = sub_22C3699D4();
  v28 = sub_22C90930C();
  v1[45] = v28;
  sub_22C3699B8(v28);
  v1[46] = v29;
  v1[47] = sub_22C3699D4();
  v30 = sub_22C9063DC();
  v1[48] = v30;
  sub_22C3699B8(v30);
  v1[49] = v31;
  v1[50] = sub_22C36D0D4();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v32 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v32);
  v1[63] = sub_22C3699D4();
  v33 = sub_22C90063C();
  v1[64] = v33;
  sub_22C3699B8(v33);
  v1[65] = v34;
  v1[66] = sub_22C36D0D4();
  v1[67] = swift_task_alloc();
  v35 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  sub_22C369914(v35);
  v1[68] = sub_22C3699D4();
  v36 = sub_22C3A5908(&qword_27D9BFE78, &qword_22C925A30);
  sub_22C369914(v36);
  v1[69] = sub_22C3699D4();
  v37 = sub_22C90014C();
  v1[70] = v37;
  sub_22C3699B8(v37);
  v1[71] = v38;
  v1[72] = sub_22C36D0D4();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v39 = sub_22C90931C();
  v1[75] = v39;
  sub_22C3699B8(v39);
  v1[76] = v40;
  v1[77] = sub_22C36D0D4();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v41 = sub_22C9093BC();
  v1[83] = v41;
  sub_22C3699B8(v41);
  v1[84] = v42;
  v1[85] = sub_22C36D0D4();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v43 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v43);
  v1[104] = sub_22C36D0D4();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v44 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_22C77E374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 832);
  v14 = *(v12 + 672);
  v15 = *(v12 + 312);
  v16 = sub_22C3702F4();
  sub_22C36C640(v16, v17, v18, v15);
  v19 = sub_22C381B6C();
  sub_22C36C640(v19, v20, v21, v15);
  sub_22C36A748();
  v25 = sub_22C791F6C(v22, v23, v24, v15);
  v26 = type metadata accessor for PayloadLayout(v25);
  sub_22C3856A0(v26);
  v27 = sub_22C372468();
  *(v12 + 856) = sub_22C79184C(v27, v28, v29, v13, v30, v31, v32, v33, v541);
  v34 = *(v14 + 16);
  *(v12 + 864) = v34;
  *(v12 + 872) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35 = sub_22C36D29C();
  (v34)(v35);
  v37 = *(v14 + 88);
  v36 = v14 + 88;
  *(v12 + 880) = v37;
  *(v12 + 888) = v36 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v38 = sub_22C36D264();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277D72A58])
  {
    v41 = *(v12 + 816);
    v42 = *(v12 + 608);
    v43 = *(v12 + 600);
    v44 = sub_22C6AF81C();
    (v34)(v44);
    v45 = sub_22C37170C();
    v46(v45);
    v36 = swift_projectBox();
    v47 = (*(v42 + 88))(v36, v43);
    if (v47 == *MEMORY[0x277D72988])
    {
      v48 = *(v12 + 656);
      v49 = sub_22C791818();
      v50(v49);
      v51 = sub_22C37ED74();
      v52(v51);
      if (*v48)
      {
        v53 = 1702195828;
      }

      else
      {
        v53 = 0x65736C6166;
      }

      if (*v48)
      {
        v54 = 0xE400000000000000;
      }

      else
      {
        v54 = 0xE500000000000000;
      }

      goto LABEL_9;
    }

    if (v47 == *MEMORY[0x277D72978])
    {
      v69 = *(v12 + 648);
      v70 = sub_22C791818();
      v71(v70);
      v72 = sub_22C37ED74();
      v73(v72);
      *(v12 + 24) = *v69;
      sub_22C76AB50();
      v53 = sub_22C90ADBC();
      goto LABEL_30;
    }

    if (v47 == *MEMORY[0x277D729A8])
    {
      v84 = sub_22C791818();
      v85(v84);
      v86 = sub_22C37ED74();
      v87(v86);
      v53 = sub_22C90A84C();
      goto LABEL_30;
    }

    if (v47 == *MEMORY[0x277D729C0])
    {
      v104 = sub_22C791818();
      v105(v104);
      v106 = sub_22C37ED74();
      v107(v106);
      v53 = sub_22C90AC1C();
      goto LABEL_30;
    }

    if (v47 == *MEMORY[0x277D729B8])
    {
      v135 = *(v12 + 648);
      v136 = sub_22C791818();
      v137(v136);
      v138 = sub_22C37ED74();
      v139(v138);
      v53 = *v135;
      v54 = v135[1];
LABEL_9:
      v55 = v54;
LABEL_30:
      v108 = sub_22C796314(v53, v55);
      sub_22C791B54(v108);

LABEL_31:

LABEL_32:
      sub_22C3889EC();
      sub_22C370A2C();
      sub_22C36DA64();
      v109(v36);

      sub_22C36D5E0();
      sub_22C372034();

      return v112(v110, v111, v112, v113, v114, v115, v116, v117, a9, a10, a11, a12);
    }

    if (v47 == *MEMORY[0x277D72990])
    {
      sub_22C791E1C();
      v143 = *(v12 + 512);
      v144 = sub_22C3828BC();
      v145(v144);
      v146 = sub_22C38644C();
      v147(v146);
      v148 = sub_22C37EF10();
      v36 = v143;
      v149(v148);
      v150 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v150 setDateStyle_];
      [v150 setTimeStyle_];
      v151 = sub_22C9005AC();
      v152 = [v150 stringFromDate_];

      sub_22C90A11C();
      v153 = sub_22C36EC8C();
      v155 = sub_22C796314(v153, v154);
      sub_22C791B54(v155);

      v156 = sub_22C459028();
      v157(v156);
      goto LABEL_31;
    }

    if (v47 == *MEMORY[0x277D72958])
    {
      v581 = *(v12 + 512);
      sub_22C375D94();
      v158 = sub_22C459028();
      v159(v158);
      v160 = sub_22C36D29C();
      v161(v160);
      v162 = sub_22C37170C();
      v163(v162);
      sub_22C9007BC();
      sub_22C9007EC();
      sub_22C36BECC();
      sub_22C791F6C(v164, v165, v166, v167);
      sub_22C90083C();
      sub_22C36A748();
      sub_22C36C640(v168, v169, v170, v171);
      sub_22C9000FC();
      sub_22C90010C();
      v172 = sub_22C9000CC();
      LOBYTE(v554) = 1;
      LOBYTE(v553) = 1;
      LOBYTE(v552) = 1;
      LOBYTE(v551) = 1;
      LOBYTE(v550) = 1;
      LOBYTE(v549) = 1;
      LOBYTE(v548) = 1;
      LOBYTE(v547) = 1;
      LOBYTE(v546) = 1;
      LOBYTE(v545) = 1;
      LOBYTE(v544) = v173 & 1;
      v543 = v172;
      sub_22C90013C();
      sub_22C9000DC();
      v174 = sub_22C383C3C();
      if (sub_22C370B74(v174, v175, v581) == 1)
      {
        sub_22C376B84(*(v12 + 504), &qword_27D9BF2C0, &qword_22C925300);
        sub_22C9040CC();
        v176 = sub_22C379FC8();
        v177(v176);
        v36 = sub_22C9063CC();
        v178 = sub_22C90AADC();
        sub_22C792154(v178);
        v180 = os_log_type_enabled(v36, v179);
        v181 = *(v12 + 592);
        v182 = *(v12 + 584);
        v183 = *(v12 + 576);
        v184 = *(v12 + 568);
        v185 = *(v12 + 560);
        v592 = *(v12 + 496);
        v186 = *(v12 + 392);
        v582 = *(v12 + 384);
        if (v180)
        {
          sub_22C36BED8();
          v566 = v182;
          v555 = swift_slowAlloc();
          v601 = sub_22C370060();
          *v555 = 136315138;
          v187 = sub_22C7914C4(&qword_27D9BFF88, MEMORY[0x277CC8990], MEMORY[0x277CC8998]);
          sub_22C79223C(v187);
          v559 = v181;
          v189 = v188;
          v190 = *(v184 + 8);
          v191 = sub_22C372FA4();
          v190(v191);
          v192 = sub_22C791C70();
          sub_22C36F9F4(v192, v189, v193);
          sub_22C37FF48();

          *(v555 + 4) = v183;
          sub_22C38073C();
          _os_log_impl(v194, v36, v195, v196, v197, 0xCu);
          sub_22C36FF94(v601);
          sub_22C372FB0();
          sub_22C37E124();

          (*(v186 + 8))(v592, v582);
          (v190)(v566, v185);
          (v190)(v559, v185);
        }

        else
        {

          v226 = *(v184 + 8);
          v227 = sub_22C372FA4();
          v226(v227);
          (*(v186 + 8))(v592, v582);
          v228 = sub_22C371510();
          v226(v228);
          v229 = sub_22C36D29C();
          v226(v229);
        }
      }

      else
      {
        v207 = *(v12 + 568);
        v567 = *(v12 + 560);
        v572 = *(v12 + 584);
        v583 = *(v12 + 592);
        v208 = *(v12 + 536);
        v209 = *(v12 + 520);
        v560 = *(v12 + 512);
        (*(v209 + 32))(v208, *(v12 + 504));
        v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        [v36 setDateStyle_];
        [v36 setTimeStyle_];
        v210 = sub_22C9005AC();
        v211 = [v36 stringFromDate_];

        sub_22C90A11C();
        v212 = sub_22C372FA4();
        v214 = sub_22C796314(v212, v213);
        sub_22C791B54(v214);

        (*(v209 + 8))(v208, v560);
        v215 = *(v207 + 8);
        v215(v572, v567);
        v215(v583, v567);
      }

      goto LABEL_31;
    }

    if (v47 == *MEMORY[0x277D72980])
    {
      v198 = sub_22C791838();
      v199(v198);
      v200 = sub_22C37170C();
      v201(v200);
      v202 = sub_22C37E894();
      v203(v202);
      v204 = sub_22C90036C();
      v206 = sub_22C796314(v204, v205);
      sub_22C791B54(v206);

LABEL_53:
      v224 = sub_22C36CA88();
LABEL_54:
      v225(v224);
      goto LABEL_31;
    }

    if (v47 == *MEMORY[0x277D72968])
    {
      v216 = *(v12 + 328);
      v217 = sub_22C791838();
      v218(v217);
      v219 = sub_22C37170C();
      v220(v219);
      v221 = sub_22C37E894();
      v222(v221);
      v223 = sub_22C796218(v216);
      sub_22C791B54(v223);

      goto LABEL_53;
    }

    if (v47 == *MEMORY[0x277D72940])
    {
      sub_22C791E1C();
      v230 = *(v12 + 216);
      v231 = *(v12 + 224);
      v232 = *(v12 + 208);
      v233 = sub_22C3828BC();
      v234(v233);
      v235 = sub_22C38644C();
      v236(v235);
      v36 = v231;
      (*(v230 + 32))(v231, v41, v232);
      v237 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
      [v237 setUnitOptions_];
      [v237 setUnitStyle_];
      v238 = sub_22C8FFF7C();
      v239 = [v237 stringFromMeasurement_];

      sub_22C90A11C();
      v240 = sub_22C36EC8C();
      v242 = sub_22C796314(v240, v241);
      sub_22C791B54(v242);

      v243 = *(v230 + 8);
      v244 = v231;
      v245 = v232;
LABEL_58:
      v243(v244, v245);
      goto LABEL_31;
    }

    if (v47 == *MEMORY[0x277D72950])
    {
      sub_22C791EC4();
      v246 = sub_22C459028();
      v247(v246);
      v248 = sub_22C36D29C();
      v249(v248);
      v250 = sub_22C38BB08();
      v251(v250);
      v252 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      v253 = sub_22C9091FC();
      sub_22C790EA0(v253, v254, v252);
      [v252 setMinimumFractionDigits_];
      [v252 setMaximumFractionDigits_];
      [v252 setNumberStyle_];
      v255 = sub_22C90921C();
      v257 = v256;
      v259 = v258;
      v260 = objc_allocWithZone(MEMORY[0x277CCA980]);
      *(v12 + 1080) = v255;
      *(v12 + 1088) = v257;
      *(v12 + 1096) = v259;
      v36 = [v260 initWithDecimal_];
      v261 = [v252 stringFromNumber_];
      if (v261)
      {
        v262 = v261;
        v263 = sub_22C90A11C();
        v265 = v264;

        v266 = HIBYTE(v265) & 0xF;
        if ((v265 & 0x2000000000000000) == 0)
        {
          v266 = v263 & 0xFFFFFFFFFFFFLL;
        }

        if (v266)
        {
          v267 = sub_22C37170C();
          v269 = sub_22C796314(v267, v268);
          sub_22C791B54(v269);

          v224 = sub_22C36FC2C();
          goto LABEL_54;
        }
      }

      v586 = v36;
      v317 = *(v12 + 256);
      sub_22C90920C();
      v595 = sub_22C783B28(v317);
      v319 = v318;
      sub_22C376B84(v317, &qword_27D9BC390, &qword_22C912AC0);
      v575 = v319;
      if (v319)
      {
        sub_22C9040CC();
        v320 = sub_22C5CAA58();
        (v34)(v320);
        v321 = sub_22C9063CC();
        v556 = sub_22C90AADC();
        v557 = v321;
        v322 = os_log_type_enabled(v321, v556);
        v323 = *(v12 + 792);
        v36 = *(v12 + 664);
        v324 = *(v12 + 392);
        v562 = *(v12 + 384);
        v569 = *(v12 + 464);
        if (v322)
        {
          sub_22C36BED8();
          v325 = swift_slowAlloc();
          v603 = sub_22C370060();
          *v325 = 136315138;
          sub_22C36A32C();
          sub_22C7914C4(v326, v327, MEMORY[0x277D72A80]);
          sub_22C37EF94();
          sub_22C909F4C();
          v328 = sub_22C380120();
          v329(v328);
          v330 = sub_22C38BB08();
          sub_22C36F9F4(v330, v331, v332);
          sub_22C37FF48();

          *(v325 + 4) = v323;
          sub_22C37B3D4();
          _os_log_impl(v333, v334, v335, v336, v337, 0xCu);
          sub_22C36FF94(v603);
          sub_22C372FB0();
          sub_22C386DA4();
        }

        else
        {

          v358 = sub_22C380120();
          v359(v358);
        }

        (*(v324 + 8))(v569, v562);
        v361 = *(v12 + 240);
        v360 = *(v12 + 248);
        v362 = *(v12 + 232);
        v363 = sub_22C796314(v595, v575);
        sub_22C792030(v363);

        (*(v361 + 8))(v360, v362);
        goto LABEL_31;
      }

      v338 = *(v12 + 456);
      sub_22C9040CC();
      v339 = sub_22C5CAA58();
      (v34)(v339);
      v340 = sub_22C9063CC();
      v563 = sub_22C90AADC();
      v570 = v340;
      v341 = os_log_type_enabled(v340, v563);
      v342 = *(v12 + 784);
      v596 = *(v12 + 456);
      v343 = *(v12 + 392);
      v576 = *(v12 + 384);
      if (v341)
      {
        sub_22C36BED8();
        v344 = swift_slowAlloc();
        v604 = sub_22C370060();
        *v344 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v345, v346, MEMORY[0x277D72A80]);
        sub_22C6B01B0();
        v338 = sub_22C909F4C();
        v348 = v347;
        v349 = sub_22C7918C4();
        v350(v349);
        v351 = sub_22C791C70();
        sub_22C36F9F4(v351, v348, v352);
        sub_22C791FA8();
        *(v344 + 4) = v342;
        sub_22C37B3D4();
        _os_log_impl(v353, v354, v355, v356, v357, 0xCu);
        sub_22C36FF94(v604);
        sub_22C370510();
        sub_22C386DA4();
      }

      else
      {

        v395 = sub_22C7918C4();
        v396(v395);
      }

      (*(v343 + 8))(v596, v576);
      type metadata accessor for InterpreterError(0);
      sub_22C373954();
      v399 = sub_22C7914C4(v397, v398, &protocol conformance descriptor for InterpreterError);
      v400 = sub_22C36D148(v399);
      sub_22C791BC0(v400, v401);
      swift_willThrow();

      v402 = sub_22C38644C();
      v403(v402);
      goto LABEL_120;
    }

    if (v47 == *MEMORY[0x277D72948])
    {
      v270 = *(v12 + 616);
      v593 = *(v12 + 256);
      v271 = *(v12 + 192);
      v573 = *(v12 + 200);
      v584 = *(v12 + 184);
      v272 = sub_22C791838();
      v273(v272);
      v274 = sub_22C37170C();
      v275(v274);
      (*(v271 + 32))(v573, v270, v584);
      sub_22C9091DC();
      v574 = sub_22C783B28(v593);
      v277 = v276;
      sub_22C376B84(v593, &qword_27D9BC390, &qword_22C912AC0);
      v585 = v277;
      if (v277)
      {
        v36 = *(v12 + 448);
        sub_22C9040CC();
        v278 = sub_22C371510();
        (v34)(v278);
        v279 = sub_22C9063CC();
        v561 = sub_22C90AADC();
        v280 = v279;
        v281 = os_log_type_enabled(v279, v561);
        v282 = *(v12 + 776);
        v594 = *(v12 + 448);
        v283 = *(v12 + 392);
        v568 = *(v12 + 384);
        if (v281)
        {
          sub_22C36BED8();
          v284 = swift_slowAlloc();
          v602 = sub_22C370060();
          *v284 = 136315138;
          sub_22C36A32C();
          sub_22C7914C4(v285, v286, MEMORY[0x277D72A80]);
          sub_22C6B01B0();
          v36 = sub_22C909F4C();
          v288 = v287;
          v289 = sub_22C36EC8C();
          v290(v289);
          v291 = sub_22C791C70();
          sub_22C36F9F4(v291, v288, v292);
          sub_22C792018();
          *(v284 + 4) = v282;
          sub_22C792048(&dword_22C366000, v280, v561, "Falling back to DisplayRepresentation for paymentMethod:  %s", v542);
          sub_22C36FF94(v602);
          sub_22C386DA4();
          sub_22C36BAE0();
        }

        else
        {

          v384 = sub_22C36EC8C();
          v385(v384);
        }

        (*(v283 + 8))(v594, v568);
        v386 = v574;
LABEL_85:
        v387 = sub_22C796314(v386, v585);
        sub_22C792030(v387);

        v244 = sub_22C36CA88();
        goto LABEL_58;
      }

      sub_22C9040CC();
      v364 = sub_22C36D29C();
      (v34)(v364);
      v365 = sub_22C9063CC();
      v366 = sub_22C90AADC();
      sub_22C792154(v366);
      v367 = v365;
      v369 = os_log_type_enabled(v365, v368);
      v370 = *(v12 + 768);
      v597 = *(v12 + 440);
      v371 = *(v12 + 392);
      v587 = *(v12 + 384);
      if (v369)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v372 = sub_22C791C28();
        sub_22C79209C(v372);
        *v34 = 136315138;
        sub_22C36A32C();
        v375 = sub_22C7914C4(v373, v374, MEMORY[0x277D72A80]);
        sub_22C79223C(v375);
        v376 = sub_22C7918D4();
        v377(v376);
        v378 = sub_22C36FC2C();
        sub_22C36F9F4(v378, v379, v380);
        sub_22C792018();
        *(v34 + 4) = v370;
        sub_22C38073C();
        _os_log_impl(v381, v367, v382, v383, v34, 0xCu);
        sub_22C36FF94(v565);
        sub_22C386DA4();
        sub_22C37B09C();
      }

      else
      {

        v404 = sub_22C7918D4();
        v405(v404);
      }

      v406 = *(v371 + 8);
      v338 = v371 + 8;
      v406(v597, v587);
LABEL_92:
      type metadata accessor for InterpreterError(0);
      sub_22C373954();
      v409 = sub_22C7914C4(v407, v408, &protocol conformance descriptor for InterpreterError);
      v410 = sub_22C36D148(v409);
      sub_22C791BC0(v410, v411);
      swift_willThrow();

      v412 = sub_22C372FA4();
      v413(v412);
LABEL_120:

      sub_22C3889EC();
      sub_22C370A2C();
      sub_22C36DA64();
      v529(v338);

      sub_22C38C49C();
      sub_22C372034();

      return v531(v530, v531, v532, v533, v534, v535, v536, v537, a9, a10, a11, a12);
    }

    if (v47 == *MEMORY[0x277D729D0])
    {
      v294 = *(v12 + 368);
      v293 = *(v12 + 376);
      v295 = *(v12 + 360);
      v296 = sub_22C791838();
      v297(v296);
      v298 = sub_22C37170C();
      v299(v298);
      v300 = sub_22C37E894();
      v301(v300);
      v302 = sub_22C9092FC();
      sub_22C7830D0(v302);
      v304 = v303;

      v305 = sub_22C79643C(v304);
      sub_22C791B54(v305);

      (*(v294 + 8))(v293, v295);
      goto LABEL_31;
    }

    if (v47 == *MEMORY[0x277D729B0])
    {
      sub_22C791E1C();
      v306 = sub_22C3828BC();
      v307(v306);
      v308 = sub_22C38644C();
      v309(v308);
      v310 = sub_22C37EF10();
      v311(v310);
      v312 = sub_22C9092CC();
      v313 = [v312 displayName];

      sub_22C90A11C();
      v314 = sub_22C379FC8();
      v316 = sub_22C796314(v314, v315);
      sub_22C792030(v316);

      v224 = sub_22C36D29C();
      goto LABEL_54;
    }

    if (v47 == *MEMORY[0x277D72998])
    {
      v388 = *(v12 + 648);
      v389 = *(v12 + 608);
      v390 = *(v12 + 600);
      v392 = *(v12 + 344);
      v391 = *(v12 + 352);
      v393 = *(v12 + 336);
      sub_22C375D94();
      v394(v388, v36, v390);
      (*(v389 + 96))(v388, v390);
      (*(v392 + 32))(v391, v388, v393);
      sub_22C7836AC(v391);

      (*(v392 + 8))(v391, v393);
      goto LABEL_31;
    }

    if (v47 == *MEMORY[0x277D72970])
    {
      v414 = *(v12 + 256);
      v415 = sub_22C791838();
      v416(v415);
      v417 = sub_22C37ED74();
      v418(v417);
      v419 = sub_22C37EF10();
      v420(v419);
      sub_22C90925C();
      v598 = sub_22C783B28(v414);
      v422 = v421;
      sub_22C376B84(v414, &qword_27D9BC390, &qword_22C912AC0);
      v585 = v422;
      if (v422)
      {
        v36 = *(v12 + 480);
        sub_22C9040CC();
        v423 = sub_22C371510();
        (v34)(v423);
        v424 = sub_22C9063CC();
        v558 = sub_22C90AADC();
        v577 = v424;
        v425 = os_log_type_enabled(v424, v558);
        v426 = *(v12 + 808);
        v427 = *(v12 + 392);
        v564 = *(v12 + 384);
        v571 = *(v12 + 480);
        if (v425)
        {
          sub_22C36BED8();
          v428 = swift_slowAlloc();
          v605 = sub_22C370060();
          *v428 = 136315138;
          sub_22C36A32C();
          sub_22C7914C4(v429, v430, MEMORY[0x277D72A80]);
          sub_22C6B01B0();
          v36 = sub_22C909F4C();
          v432 = v431;
          v433 = sub_22C36EC8C();
          v434(v433);
          v435 = sub_22C791C70();
          sub_22C36F9F4(v435, v432, v436);
          sub_22C792018();
          *(v428 + 4) = v426;
          sub_22C792048(&dword_22C366000, v577, v558, "Falling back to DisplayRepresentation for appValue:  %s", v542);
          sub_22C36FF94(v605);
          sub_22C370510();
          sub_22C36BAE0();
        }

        else
        {

          v471 = sub_22C36EC8C();
          v472(v471);
        }

        (*(v427 + 8))(v571, v564);
        v386 = v598;
        goto LABEL_85;
      }

      sub_22C9040CC();
      v456 = sub_22C36D29C();
      (v34)(v456);
      sub_22C9063CC();
      v457 = sub_22C90AADC();
      v458 = sub_22C7921E8(v457);
      v459 = *(v12 + 800);
      v460 = *(v12 + 392);
      v579 = *(v12 + 384);
      v589 = *(v12 + 472);
      if (v458)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v607 = sub_22C791C28();
        *v34 = 136315138;
        sub_22C36A32C();
        v463 = sub_22C7914C4(v461, v462, MEMORY[0x277D72A80]);
        sub_22C79223C(v463);
        v464 = sub_22C7918D4();
        v465(v464);
        v466 = sub_22C36FC2C();
        sub_22C36F9F4(v466, v467, v468);
        sub_22C792018();
        *(v34 + 4) = v459;
        sub_22C791E74(&dword_22C366000, v469, v470, "Payload Generation does not support formatting of appValue: %s");
        sub_22C36FF94(v607);
        sub_22C372FB0();
        sub_22C37B09C();
      }

      else
      {

        v538 = sub_22C7918D4();
        v539(v538);
      }

      v540 = *(v460 + 8);
      v338 = v460 + 8;
      v540(v589, v579);
      goto LABEL_92;
    }

    if (v47 == *MEMORY[0x277D72960])
    {
      sub_22C9040CC();
      v437 = sub_22C38644C();
      (v34)(v437);
      sub_22C9063CC();
      v438 = sub_22C90AADC();
      v439 = sub_22C7921E8(v438);
      v440 = *(v12 + 760);
      v441 = *(v12 + 392);
      v578 = *(v12 + 384);
      v588 = *(v12 + 432);
      if (v439)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v606 = sub_22C791C28();
        *v34 = 136315138;
        sub_22C36A32C();
        v444 = sub_22C7914C4(v442, v443, MEMORY[0x277D72A80]);
        sub_22C79223C(v444);
        v445 = sub_22C7918D4();
        v446(v445);
        v447 = sub_22C36FC2C();
        sub_22C36F9F4(v447, v448, v449);
        sub_22C792018();
        *(v34 + 4) = v440;
        sub_22C791E74(&dword_22C366000, v450, v451, "Unsupported searchableItem %s");
        sub_22C36FF94(v606);
        sub_22C372FB0();
        sub_22C37B09C();
      }

      else
      {

        v473 = sub_22C7918D4();
        v474(v473);
      }

      v475 = *(v441 + 8);
      v338 = v441 + 8;
      v475(v588, v578);
      type metadata accessor for InterpreterError(0);
      sub_22C373954();
      v478 = sub_22C7914C4(v476, v477, &protocol conformance descriptor for InterpreterError);
      v479 = sub_22C3700B4(v478);
      sub_22C37E7C4(v479, v480);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_120;
    }

    if (v47 == *MEMORY[0x277D729A0])
    {
      sub_22C9040CC();
      v452 = sub_22C9063CC();
      v453 = sub_22C90AADC();
      if (sub_22C370048(v453))
      {
        *sub_22C36D240() = 0;
        sub_22C791F54(&dword_22C366000, v452, v453, "Received none type. Returning empty string");
        sub_22C36C30C();
      }

      v454 = sub_22C36D29C();
      v455(v454);
      goto LABEL_31;
    }

LABEL_111:
    v481 = *(v12 + 256);
    sub_22C90939C();
    v36 = sub_22C783B28(v481);
    v483 = v482;
    sub_22C376B84(v481, &qword_27D9BC390, &qword_22C912AC0);
    if (v483)
    {
      sub_22C9040CC();
      v484 = sub_22C3806B8();
      (v34)(v484);
      v485 = sub_22C9063CC();
      v590 = sub_22C90AADC();
      v486 = os_log_type_enabled(v485, v590);
      v487 = *(v12 + 416);
      v488 = *(v12 + 392);
      v599 = *(v12 + 384);
      if (v486)
      {
        sub_22C36BED8();
        v580 = v36;
        v489 = swift_slowAlloc();
        v490 = sub_22C370060();
        sub_22C79209C(v490);
        *v489 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v491, v492, MEMORY[0x277D72A80]);
        sub_22C909F4C();
        v493 = sub_22C38644C();
        v494(v493);
        v495 = sub_22C3726C4();
        v498 = sub_22C36F9F4(v495, v496, v497);

        *(v489 + 4) = v498;
        sub_22C791FE4(&dword_22C366000, v499, v590, "Falling back to DisplayRepresentation for unsupported parameter:  %s");
        sub_22C791870();
        v36 = v580;
        sub_22C3699EC();
      }

      else
      {

        v516 = sub_22C38644C();
        v517(v516);
      }

      (*(v488 + 8))(v487, v599);
      v518 = sub_22C796314(v36, v483);
      sub_22C791B54(v518);

      goto LABEL_32;
    }

    sub_22C9040CC();
    v500 = sub_22C36D264();
    (v34)(v500);
    v501 = sub_22C9063CC();
    v502 = sub_22C90AADC();
    v503 = sub_22C5CAB64(v502);
    v504 = *(v12 + 688);
    v338 = *(v12 + 664);
    v505 = *(v12 + 408);
    v506 = *(v12 + 384);
    v507 = *(v12 + 392);
    if (v503)
    {
      sub_22C36BED8();
      v600 = v502;
      v508 = swift_slowAlloc();
      sub_22C370060();
      *v508 = 136315138;
      sub_22C36A32C();
      sub_22C7914C4(v509, v510, MEMORY[0x277D72A80]);
      sub_22C37EF94();
      sub_22C909F4C();
      v511 = sub_22C380120();
      v512(v511);
      v513 = sub_22C36ECB4();
      sub_22C36F9F4(v513, v514, v515);
      sub_22C38B194();

      *(v508 + 4) = v504;
      _os_log_impl(&dword_22C366000, v501, v600, "Unsupported TypedValue subtype: %s", v508, 0xCu);
      sub_22C791870();
      sub_22C36C30C();

      (*(v507 + 8))(v505, v506);
    }

    else
    {

      v519 = sub_22C380120();
      v520(v519);
      v521 = sub_22C36ECB4();
      v523(v521, v522);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C373954();
    v526 = sub_22C7914C4(v524, v525, &protocol conformance descriptor for InterpreterError);
    v527 = sub_22C3700B4(v526);
    sub_22C37E7C4(v527, v528);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_120;
  }

  if (v40 == *MEMORY[0x277D729E8])
  {
    v56 = *(v12 + 672);
    v57 = *(v12 + 256);
    v58 = *(v12 + 144);
    v59 = *(v12 + 152);
    v60 = *(v12 + 136);
    v61 = sub_22C6AF81C();
    (v34)(v61);
    v36 = v56 + 96;
    v62 = sub_22C37170C();
    v63(v62);
    v64 = swift_projectBox();
    (*(v58 + 16))(v59, v64, v60);
    sub_22C90907C();
    sub_22C783B28(v57);
    v66 = v65;
    sub_22C376B84(v57, &qword_27D9BC390, &qword_22C912AC0);
    if (v66)
    {
      v67 = sub_22C38644C();
    }

    else
    {
      v67 = sub_22C90908C();
    }

    v101 = sub_22C796314(v67, v68);
    sub_22C792030(v101);

    v102 = sub_22C36ECB4();
    v103(v102);
    goto LABEL_31;
  }

  v74 = *MEMORY[0x277D72A38];
  *(v12 + 1100) = *MEMORY[0x277D72A38];
  if (v40 == v74)
  {
    v75 = *(v12 + 744);
    v76 = sub_22C383264();
    (v34)(v76);
    v77 = sub_22C36BBCC();
    v78(v77);
    *(v12 + 896) = *v75;
    swift_projectBox();
    v79 = sub_22C6AFB9C();
    v80(v79);
    v81 = swift_task_alloc();
    *(v12 + 904) = v81;
    *v81 = v12;
    v81[1] = sub_22C780E2C;
    sub_22C386674(*(v12 + 128));
    sub_22C372034();

    return sub_22C784748();
  }

  else if (v40 == *MEMORY[0x277D729E0])
  {
    v88 = *(v12 + 712);
    v89 = sub_22C383264();
    (v34)(v89);
    v90 = sub_22C36BBCC();
    v91(v90);
    *(v12 + 1008) = *v88;
    swift_projectBox();
    v92 = sub_22C6AFB9C();
    v93(v92);
    v94 = MEMORY[0x277D84F90];
    *(v12 + 16) = MEMORY[0x277D84F90];
    v95 = sub_22C90905C();
    *(v12 + 1016) = v95;
    v96 = *(v95 + 16);
    *(v12 + 1024) = v96;
    if (!v96)
    {

      v140 = sub_22C7973A4(MEMORY[0x277D84F90]);
      sub_22C792030(v140);

      v141 = sub_22C36D264();
      v142(v141);
      goto LABEL_31;
    }

    v97 = *(v12 + 672);
    v98 = *(v97 + 80);
    *(v12 + 1104) = v98;
    *(v12 + 1032) = *(v97 + 72);
    *(v12 + 1048) = v94;
    *(v12 + 1040) = 0;
    (*(v12 + 864))(*(v12 + 704), v95 + ((v98 + 32) & ~v98), *(v12 + 664));
    v99 = swift_task_alloc();
    *(v12 + 1056) = v99;
    *v99 = v12;
    sub_22C3776A8(v99);
    sub_22C372034();

    return sub_22C77DAE4();
  }

  else
  {
    if (v40 != *MEMORY[0x277D729F8])
    {
      goto LABEL_111;
    }

    v118 = *(v12 + 736);
    v119 = *(v12 + 672);
    v120 = *(v12 + 80);
    v121 = *(v12 + 40);
    v122 = sub_22C383264();
    (v34)(v122);
    *(v12 + 928) = *(v119 + 96);
    *(v12 + 936) = (v119 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
    v123 = sub_22C36BBCC();
    v124(v123);
    *(v12 + 944) = *v118;
    swift_projectBox();
    *(v12 + 952) = *(v120 + 16);
    *(v12 + 960) = (v120 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v125 = sub_22C6AFB9C();
    v126(v125);
    v127 = (v121 + *(type metadata accessor for PayloadFormatter(0) + 32));
    sub_22C374168(v127, v127[3]);
    swift_task_alloc();
    sub_22C36CC90();
    *(v12 + 968) = v128;
    *v128 = v129;
    v128[1] = sub_22C781218;
    sub_22C372034();

    return MEMORY[0x282178338](v130, v131, v132, v133);
  }
}

uint64_t sub_22C780E2C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 912) = v0;

  if (!v0)
  {
    *(v5 + 920) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C780F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = sub_22C79643C(*(v12 + 920));
  sub_22C792224(v13);

  v14 = sub_22C36ECB4();
  v15(v14);

  sub_22C7916C4();
  v16 = sub_22C38C074();
  v17(v16);

  sub_22C37A38C();
  sub_22C372034();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22C781218()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 976) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C781310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v15 = *(v14 + 1100);
  if ((*(v14 + 880))(*(v14 + 728), *(v14 + 664)) == v15)
  {
    v16 = *(v14 + 1100);
    sub_22C791DB4();
    v17 = *(v14 + 672);
    v18 = *(v14 + 664);
    v20 = *(v14 + 112);
    v19 = *(v14 + 120);
    v21 = *(v14 + 104);
    v22(v12, v18);
    v23 = swift_projectBox();
    v24 = *(v20 + 16);
    v24(v19, v23, v21);

    v25 = swift_allocBox();
    v24(v26, v19, v21);
    *v13 = v25;
    (*(v17 + 104))(v13, v16, v18);
    v27 = swift_task_alloc();
    *(v14 + 984) = v27;
    *v27 = v14;
    v27[1] = sub_22C7818FC;
    sub_22C386674(*(v14 + 120));
    sub_22C372034();

    return sub_22C784748();
  }

  else
  {
    v30 = *(v14 + 952);
    (*(*(v14 + 672) + 8))(*(v14 + 728), *(v14 + 664));
    sub_22C9040CC();
    v31 = sub_22C36A724();
    v30(v31);
    v32 = sub_22C9063CC();
    LOBYTE(v30) = sub_22C90AADC();
    v33 = os_log_type_enabled(v32, v30);
    v34 = *(v14 + 424);
    v36 = *(v14 + 384);
    v35 = *(v14 + 392);
    v37 = *(v14 + 88);
    if (v33)
    {
      sub_22C36BED8();
      v70 = v36;
      v38 = swift_slowAlloc();
      sub_22C370060();
      *v38 = 136315138;
      sub_22C7914C4(&qword_27D9BFF80, MEMORY[0x277D728B0], MEMORY[0x277D728B8]);
      sub_22C6B01B0();
      sub_22C909F4C();
      v69 = v34;
      v40 = v39;
      v41 = sub_22C36EC8C();
      v43 = v42;
      v42(v41);
      v44 = sub_22C791C70();
      sub_22C36F9F4(v44, v40, v45);
      sub_22C3743B4();
      *(v38 + 4) = v37;
      sub_22C38073C();
      sub_22C792048(v46, v32, v47, v48);
      sub_22C791870();
      sub_22C36BAE0();

      (*(v35 + 8))(v69, v70);
    }

    else
    {

      v49 = sub_22C36EC8C();
      v43 = v50;
      v50(v49);
      v51 = sub_22C37B220();
      v53(v51, v52);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C373954();
    v56 = sub_22C7914C4(v54, v55, &protocol conformance descriptor for InterpreterError);
    v71 = sub_22C36D148(v56);
    sub_22C791BC0(v71, v57);
    swift_willThrow();

    v58 = sub_22C36ECB4();
    v43(v58);

    v59 = *(v14 + 824);
    sub_22C7916C4();
    sub_22C36DA64();
    v60(v59);

    sub_22C38C49C();
    sub_22C372034();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
  }
}

uint64_t sub_22C7818FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[84];
  *v6 = *v2;
  v5[124] = v1;

  v8 = v4[90];
  v9 = v4[83];
  if (!v1)
  {
    v5[125] = a1;
  }

  (*(v7 + 8))(v8, v9);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C781A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = sub_22C79643C(*(v12 + 1000));
  sub_22C792224(v13);

  v14 = sub_22C36ECB4();
  v15(v14);
  v16 = sub_22C36FC2C();
  v17(v16);

  sub_22C7916C4();
  v18 = sub_22C38C074();
  v19(v18);

  sub_22C37A38C();
  sub_22C372034();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22C781D78()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1064) = v4;
  *(v2 + 1072) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C781E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  MEMORY[0x2318B7AA0]();
  if (*(v12[2] + 16) >= *(v12[2] + 24) >> 1)
  {
    sub_22C90A61C();
  }

  sub_22C90A65C();
  v13 = sub_22C36D264();
  v14(v13);
  v15 = v12[2];
  sub_22C792120();
  if (v17)
  {

    v18 = sub_22C791F84();
    sub_22C792224(v18);

    v19 = sub_22C36ECB4();
    v20(v19);

    sub_22C7916C4();
    v21 = sub_22C38C074();
    v22(v21);

    sub_22C37A38C();
    sub_22C372034();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  else
  {
    v12[131] = v15;
    v32 = sub_22C383E14(v16);
    v33(v32);
    v34 = swift_task_alloc();
    v12[132] = v34;
    *v34 = v12;
    sub_22C3776A8(v34);
    sub_22C372034();

    return sub_22C77DAE4();
  }
}

uint64_t sub_22C78221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();

  v12 = sub_22C371810();
  v13(v12);

  sub_22C7916C4();
  v14 = sub_22C38C074();
  v15(v14);

  sub_22C375A9C();
  sub_22C372034();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_22C7824F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();

  v12 = sub_22C371810();
  v13(v12);

  sub_22C7916C4();
  v14 = sub_22C38C074();
  v15(v14);

  sub_22C375A9C();
  sub_22C372034();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_22C7827C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();

  v12 = sub_22C36BAFC();
  v13(v12);
  v14 = sub_22C36ECB4();
  v15(v14);

  sub_22C7916C4();
  v16 = sub_22C38C074();
  v17(v16);

  sub_22C375A9C();
  sub_22C372034();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22C782AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 864);
  sub_22C9040CC();
  v14 = sub_22C36D7E0();
  v13(v14);
  v15 = sub_22C9063CC();
  v16 = sub_22C90AABC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v12 + 704);
  v19 = *(v12 + 680);
  v20 = *(v12 + 664);
  v21 = *(v12 + 400);
  v22 = *(v12 + 384);
  v55 = (*(v12 + 392) + 8);
  v23 = (*(v12 + 672) + 8);
  if (v17)
  {
    sub_22C36BED8();
    v53 = v24;
    v54 = v22;
    v22 = swift_slowAlloc();
    v56 = sub_22C370060();
    *v22 = 136315138;
    sub_22C36A32C();
    sub_22C7914C4(v25, v26, MEMORY[0x277D72A80]);
    sub_22C633E0C();
    sub_22C909F4C();
    v27 = *v23;
    v28 = sub_22C37170C();
    v27(v28);
    v29 = sub_22C36CA88();
    sub_22C36F9F4(v29, v30, v31);
    sub_22C791FA8();
    *(v22 + 4) = v19;
    _os_log_impl(&dword_22C366000, v15, v16, "Could not format collection: %s", v22, 0xCu);
    sub_22C36FF94(v56);
    sub_22C386DA4();
    sub_22C3699EC();

    (*v55)(v21, v54);
    (v27)(v18, v20);
  }

  else
  {

    v32 = *v23;
    v33 = sub_22C37170C();
    v32(v33);
    (*v55)(v21, v22);
    v34 = sub_22C372FCC();
    v32(v34);
  }

  sub_22C792120();
  if (v36)
  {

    sub_22C791F84();

    v37 = sub_22C36ECB4();
    v38(v37);

    sub_22C3889EC();
    sub_22C370A2C();
    (*(v39 + 8))(v22);

    sub_22C36D5E0();
    sub_22C372034();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }

  else
  {
    v49 = sub_22C383E14(v35);
    v50(v49);
    v51 = swift_task_alloc();
    *(v12 + 1056) = v51;
    *v51 = v12;
    sub_22C3776A8(v51);
    sub_22C372034();

    return sub_22C77DAE4();
  }
}

void sub_22C7830D0(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v3 = sub_22C369914(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v85 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v85 - v10;
  v12 = sub_22C90021C();
  sub_22C36A748();
  sub_22C36C640(v13, v14, v15, v12);
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v12);
  v19 = sub_22C3702F4();
  v22 = sub_22C791F6C(v19, v20, v21, v12);
  v23 = type metadata accessor for PayloadLayout(v22);
  sub_22C3856A0(v23);
  sub_22C79184C(v11, v9, 0, v6, v24, v25, v26, v27, 0);
  sub_22C3A5908(&qword_27D9BAD88, &unk_22C90D630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F7F0;
  v29 = sub_22C792000();
  v30 = v29;
  if (v29)
  {
    v31 = [v29 street];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v12 = 0;
  }

  *(inited + 32) = v30;
  *(inited + 40) = v12;
  v32 = sub_22C792000();
  v33 = v32;
  if (v32)
  {
    v34 = [v32 city];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v12 = 0;
  }

  *(inited + 48) = v33;
  *(inited + 56) = v12;
  v35 = sub_22C792000();
  v36 = v35;
  if (v35)
  {
    v37 = [v35 state];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v12 = 0;
  }

  *(inited + 64) = v36;
  *(inited + 72) = v12;
  v38 = sub_22C792000();
  v39 = v38;
  if (v38)
  {
    v40 = [v38 postalCode];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v12 = 0;
  }

  *(inited + 80) = v39;
  *(inited + 88) = v12;
  v41 = sub_22C792000();
  v42 = v41;
  if (v41)
  {
    v43 = [v41 country];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v12 = 0;
  }

  v44 = 0;
  *(inited + 96) = v42;
  *(inited + 104) = v12;
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v44 == 5)
    {
      swift_setDeallocating();
      sub_22C590040();
      v56 = 0;
      v57 = *(v45 + 16);
      v58 = MEMORY[0x277D84F90];
LABEL_32:
      v59 = 16 * v56 + 40;
      while (v57 != v56)
      {
        if (v56 >= *(v45 + 16))
        {
          goto LABEL_54;
        }

        ++v56;
        v60 = v59 + 16;
        v61 = *(v45 + v59);
        v59 += 16;
        if (v61)
        {
          v62 = *(v45 + v60 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_22C36D270();
            sub_22C590270(v66, v67, v68, v58);
            v58 = v69;
          }

          v64 = *(v58 + 16);
          v63 = *(v58 + 24);
          if (v64 >= v63 >> 1)
          {
            v70 = sub_22C369AB0(v63);
            sub_22C590270(v70, v64 + 1, 1, v58);
            v58 = v71;
          }

          *(v58 + 16) = v64 + 1;
          v65 = v58 + 16 * v64;
          *(v65 + 32) = v62;
          *(v65 + 40) = v61;
          goto LABEL_32;
        }
      }

      v86 = v58;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      sub_22C90A04C();

      v72 = sub_22C8F8EA4(a1);
      if (v73)
      {
        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v72 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          sub_22C792174();
          if (v75)
          {
            v76 = sub_22C36BBCC();
            sub_22C795F7C(v76, v77, 1);

            v78 = sub_22C3806B8();
            sub_22C796314(v78, v79);
            sub_22C37FF48();

            return;
          }

          v83 = sub_22C36BBCC();
          sub_22C795F7C(v83, v84, 1);
          sub_22C37FF48();

LABEL_52:

          return;
        }
      }

      sub_22C792174();
      if (!v80)
      {

        return;
      }

      v81 = sub_22C3806B8();
      sub_22C796314(v81, v82);
      sub_22C37FF48();

      goto LABEL_52;
    }

    if (v44 > 4)
    {
      break;
    }

    v46 = inited + 16 * v44;
    v47 = *(v46 + 32);
    v48 = *(v46 + 40);
    if (v48 && (!v47 ? (v49 = v48 == 0xE000000000000000) : (v49 = 0), v49 || (v85 = *(v46 + 32), v50 = sub_22C90B4FC(), v47 = v85, (v50 & 1) != 0)))
    {
      ++v44;
    }

    else
    {
      v85 = v47;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6D08(0, *(v45 + 16) + 1, 1);
        v45 = v86;
      }

      v53 = *(v45 + 16);
      v52 = *(v45 + 24);
      v54 = v85;
      if (v53 >= v52 >> 1)
      {
        v55 = sub_22C369AB0(v52);
        sub_22C3B6D08(v55, v53 + 1, 1);
        v54 = v85;
        v45 = v86;
      }

      ++v44;
      *(v45 + 16) = v53 + 1;
      *(v45 + 16 * v53 + 32) = v54;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_22C7836AC(void *a1)
{
  v2 = sub_22C90929C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90928C();
  v11 = sub_22C790E30(v10);
  if (!v12)
  {
LABEL_23:
    sub_22C9040CC();
    (*(v3 + 16))(v5, a1, v2);
    v20 = sub_22C9063CC();
    v21 = sub_22C90AADC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v22 = 136315138;
      v23 = sub_22C90928C();
      v24 = sub_22C790E30(v23);
      v32 = v6;
      v34 = v24;
      v35 = v25;
      sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
      v33 = v7;
      sub_22C7911C0();
      v26 = sub_22C909F4C();
      v28 = v27;
      (*(v3 + 8))(v5, v2);

      v29 = sub_22C36F9F4(v26, v28, &v36);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_22C366000, v20, v21, "Asked to format an unsupported file type: %s", v22, 0xCu);
      v30 = v31;
      sub_22C36FF94(v31);
      MEMORY[0x2318B9880](v30, -1, -1);
      MEMORY[0x2318B9880](v22, -1, -1);

      (*(v33 + 8))(v9, v32);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }

    return 0;
  }

  v13 = v11;
  v14 = v12;
  v15 = v11 == 0x742E63696C627570 && v12 == 0xEB00000000747865;
  if (v15 || (sub_22C90B4FC() & 1) != 0)
  {

    return sub_22C78E0F4(a1);
  }

  v33 = v7;
  v17 = v13 == 0x722E63696C627570 && v14 == 0xEA00000000006674;
  if (v17 || (sub_22C90B4FC() & 1) != 0)
  {

    return sub_22C78E61C(a1);
  }

  if (v13 == 0x752E63696C627570 && v14 == 0xEA00000000006C72)
  {
  }

  else
  {
    v19 = sub_22C90B4FC();

    v7 = v33;
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  return sub_22C78ED84(a1);
}

uint64_t sub_22C783B28(uint64_t a1)
{
  v151 = sub_22C90983C();
  sub_22C369824();
  v150 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  sub_22C3698F8(v4);
  sub_22C90991C();
  sub_22C369824();
  v153 = v6;
  v154 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v152 = v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v156 = v9;
  v162 = sub_22C9098DC();
  sub_22C369824();
  v160 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v159 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v158 = v14;
  v15 = sub_22C3A5908(&qword_27D9BFFD8, &qword_22C925C90);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  v165 = &v145 - v17;
  v18 = sub_22C3A5908(&qword_27D9BFFE0, &qword_22C925C98);
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v148 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v164 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v27 = &v145 - v26;
  sub_22C9063DC();
  sub_22C369824();
  v166 = v29;
  v167 = v28;
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  v157 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  v163 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  v155 = v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  v37 = &v145 - v36;
  v38 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v39 = sub_22C369914(v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v145 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v145 - v43;
  v170 = 0;
  v171 = 0xE000000000000000;
  sub_22C791344(a1, &v145 - v43, &qword_27D9BC390, &qword_22C912AC0);
  v45 = sub_22C90993C();
  v46 = sub_22C3707B4();
  sub_22C36D0A8(v46, v47, v45);
  if (v73)
  {
    sub_22C376B84(v44, &qword_27D9BC390, &qword_22C912AC0);
    return 0;
  }

  v147 = v27;
  v145 = v20;
  v161 = v18;
  v49 = sub_22C9098BC();
  v51 = v50;
  sub_22C36BBA8();
  v52 = sub_22C379FC8();
  v146 = v53;
  (v53)(v52);
  sub_22C9040CC();
  v54 = sub_22C9063CC();
  v55 = sub_22C90AABC();
  if (sub_22C370048(v55))
  {
    v57 = sub_22C36D240();
    *v57 = 0;
    _os_log_impl(&dword_22C366000, v54, v55, "Falling back to displayRepresentation", v57, 2u);
    sub_22C37B09C();
  }

  v58 = v166 + 8;
  v59 = *(v166 + 8);
  v59(v37, v167);
  MEMORY[0x2318B7850](v49, v51);

  v60 = sub_22C370018();
  sub_22C791344(v60, v61, v62, v63);
  v64 = sub_22C383C3C();
  sub_22C36D0A8(v64, v65, v45);
  if (v73)
  {
    sub_22C376B84(v42, &qword_27D9BC390, &qword_22C912AC0);
    v69 = v165;
    v66 = sub_22C381B6C();
    sub_22C36C640(v66, v67, v68, v161);
  }

  else
  {
    v69 = v165;
    sub_22C90992C();
    v146(v42, v45);
    v70 = sub_22C36CCF8();
    v71 = v161;
    sub_22C36D0A8(v70, v72, v161);
    if (!v73)
    {
      v74 = v145;
      v75 = sub_22C36A724();
      v76(v75);
      v77 = *(v74 + 16);
      v78 = sub_22C372FCC();
      v77(v78);
      v79 = sub_22C38A990();
      v81 = v80(v79);
      if (v81 == *MEMORY[0x277D731D8])
      {
        v82 = sub_22C38A990();
        v83(v82);
        v84 = v160;
        v85 = *(v160 + 32);
        v86 = sub_22C36ECB4();
        v85(v86);
        sub_22C9040CC();
        v87 = v159;
        v88 = sub_22C3806B8();
        v85(v88);
        v89 = sub_22C9063CC();
        v90 = sub_22C90AADC();
        if (sub_22C36FBB4(v90))
        {
          sub_22C36BED8();
          v91 = swift_slowAlloc();
          v92 = sub_22C370060();
          v168 = v92;
          *v91 = 136315138;
          sub_22C9098CC();
          v93 = sub_22C38B194();
          (*(v84 + 8))(v93, v162);
          v94 = sub_22C372FA4();
          sub_22C36F9F4(v94, v95, v96);
          sub_22C38B194();

          *(v91 + 4) = v87;
          _os_log_impl(&dword_22C366000, v89, v90, "Request to format unsupported displayRepresentation.lazy field: %s", v91, 0xCu);
          sub_22C36FF94(v92);
          sub_22C3699EC();
          sub_22C372FB0();
        }

        else
        {

          v120 = sub_22C372FCC();
          v121(v120);
        }

        v59(v163, v167);
        (*(v74 + 8))(v147, v161);
        return v170;
      }

      if (v81 != *MEMORY[0x277D731E0])
      {
        v166 = v58;
        v122 = v157;
        sub_22C9040CC();
        v123 = v148;
        (v77)(v148, v147, v71);
        v124 = sub_22C9063CC();
        v125 = sub_22C90AADC();
        if (sub_22C5CAB64(v125))
        {
          sub_22C36BED8();
          v126 = swift_slowAlloc();
          v165 = sub_22C370060();
          v168 = v165;
          *v126 = 136315138;
          v127 = sub_22C90982C();
          v128 = v123;
          v129 = *(v145 + 8);
          v129(v128, v71);
          v130 = sub_22C372FA4();
          sub_22C36F9F4(v130, v131, v132);
          sub_22C38B194();

          *(v126 + 4) = v127;
          _os_log_impl(&dword_22C366000, v124, v125, "Request to format unsupported displayRepresentation.subtitle type: %s", v126, 0xCu);
          sub_22C791870();
          sub_22C386DA4();

          v59(v157, v167);
        }

        else
        {

          v140 = v123;
          v129 = *(v145 + 8);
          v129(v140, v71);
          v59(v122, v167);
        }

        v129(v147, v71);
        v141 = sub_22C38A990();
        (v129)(v141);
        return v170;
      }

      v97 = sub_22C38A990();
      v98(v97);
      v100 = v153;
      v99 = v154;
      v101 = sub_22C36ECB4();
      v102(v101);
      v103 = v149;
      sub_22C9098FC();
      v104 = v150;
      v105 = v151;
      v106 = (*(v150 + 88))(v103, v151);
      v107 = v152;
      if (v106 != *MEMORY[0x277D731F0])
      {
        if (v106 == *MEMORY[0x277D73200])
        {
          v133 = sub_22C9098EC();
          v135 = v134;

          v136 = HIBYTE(v135) & 0xF;
          if ((v135 & 0x2000000000000000) == 0)
          {
            v136 = v133 & 0xFFFFFFFFFFFFLL;
          }

          if (v136)
          {
            v137 = sub_22C9098EC();
            v168 = 10;
            v169 = 0xE100000000000000;
            MEMORY[0x2318B7850](v137);

            MEMORY[0x2318B7850](v168, v169);
          }

          v138 = sub_22C370018();
          v139(v138);
          goto LABEL_33;
        }

        if (v106 != *MEMORY[0x277D731F8])
        {
          (*(v104 + 8))(v103, v105);
        }
      }

      v166 = v58;
      v108 = v155;
      sub_22C9040CC();
      sub_22C791EC4();
      v109 = sub_22C3806B8();
      v110(v109);
      v111 = sub_22C9063CC();
      v112 = sub_22C90AADC();
      if (sub_22C36FBB4(v112))
      {
        sub_22C36BED8();
        v113 = swift_slowAlloc();
        v165 = v113;
        v168 = sub_22C370060();
        *v113 = 136315138;
        sub_22C9098EC();
        v114 = sub_22C38B194();
        v115 = *(v100 + 8);
        v115(v114, v99);
        v116 = sub_22C372FA4();
        sub_22C36F9F4(v116, v117, v118);
        sub_22C38B194();

        v119 = v165;
        *(v165 + 4) = v107;
        _os_log_impl(&dword_22C366000, v111, v112, "Request to format unsupported displayRepresentation.static type: %s", v119, 0xCu);
        sub_22C792208();
        sub_22C3699EC();
        sub_22C37E124();

        v59(v155, v167);
        v115(v156, v99);
      }

      else
      {

        v142 = *(v100 + 8);
        v143 = sub_22C372FCC();
        v142(v143);
        v59(v108, v167);
        v144 = sub_22C370018();
        v142(v144);
      }

LABEL_33:
      (*(v145 + 8))(v147, v71);
      return v170;
    }
  }

  sub_22C376B84(v69, &qword_27D9BFFD8, &qword_22C925C90);
  return v170;
}

uint64_t sub_22C784748()
{
  sub_22C369980();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = sub_22C90363C();
  v1[28] = v4;
  sub_22C3699B8(v4);
  v1[29] = v5;
  v1[30] = sub_22C3699D4();
  v6 = sub_22C90026C();
  sub_22C369914(v6);
  v1[31] = sub_22C3699D4();
  v7 = sub_22C9001BC();
  v1[32] = v7;
  sub_22C369914(v7);
  v1[33] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v1[34] = v8;
  sub_22C3699B8(v8);
  v1[35] = v9;
  v1[36] = sub_22C36D0D4();
  v1[37] = swift_task_alloc();
  v10 = sub_22C90021C();
  v1[38] = v10;
  sub_22C3699B8(v10);
  v1[39] = v11;
  v1[40] = sub_22C36D0D4();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9BFFB0, &qword_22C925C40);
  sub_22C369914(v12);
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v13 = sub_22C90919C();
  v1[45] = v13;
  sub_22C3699B8(v13);
  v1[46] = v14;
  v1[47] = sub_22C36D0D4();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v15);
  v1[52] = sub_22C3699D4();
  v16 = sub_22C9063DC();
  v1[53] = v16;
  sub_22C3699B8(v16);
  v1[54] = v17;
  v1[55] = sub_22C36D0D4();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v18 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v18);
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v19 = sub_22C9093BC();
  v1[68] = v19;
  sub_22C3699B8(v19);
  v1[69] = v20;
  v1[70] = sub_22C36D0D4();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v21 = sub_22C90952C();
  v1[78] = v21;
  sub_22C3699B8(v21);
  v1[79] = v22;
  v1[80] = sub_22C36D0D4();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v23 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v23);
  v1[83] = sub_22C36D0D4();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v24 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_22C784C38()
{
  v311 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 304);
  v5 = sub_22C3702F4();
  sub_22C36C640(v5, v6, v7, v4);
  v8 = sub_22C381B6C();
  sub_22C36C640(v8, v9, v10, v4);
  sub_22C36A748();
  v14 = sub_22C791F6C(v11, v12, v13, v4);
  v15 = type metadata accessor for PayloadLayout(v14);
  *(v0 + 704) = v15;
  sub_22C3856A0(v15);
  v16 = sub_22C372468();
  v23 = sub_22C79184C(v16, v17, v18, v1, v19, v20, v21, v22, v296);
  *(v0 + 712) = v23;
  sub_22C9090AC();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v2);
  v24 = *(v3 + 8);
  v25 = sub_22C3806B8();
  v24(v25);
  v26 = sub_22C36D264();
  v28 = v27(v26);
  v29 = *(v0 + 648);
  if (v28 != *MEMORY[0x277D72D28])
  {
    (v24)(v29, *(v0 + 624));
    sub_22C9040CC();
    v41 = sub_22C50B478();
    v42(v41);
    v43 = sub_22C9063CC();
    v44 = sub_22C90AADC();
    if (sub_22C5CAB64(v44))
    {
      v45 = *(v0 + 432);
      v301 = *(v0 + 424);
      v302 = *(v0 + 440);
      v47 = *(v0 + 368);
      v46 = *(v0 + 376);
      v299 = *(v0 + 360);
      sub_22C36BED8();
      v48 = swift_slowAlloc();
      v49 = sub_22C370060();
      v309 = v49;
      *v48 = 136315138;
      sub_22C9090AC();
      sub_22C36D390();
      v50 = sub_22C90A1AC();
      v52 = v51;
      (*(v47 + 8))(v46, v299);
      sub_22C36F9F4(v50, v52, &v309);
      sub_22C37BC08();

      *(v48 + 4) = v46;
      _os_log_impl(&dword_22C366000, v43, v44, "Encountered invalid entityValue.type: %s", v48, 0xCu);
      sub_22C36FF94(v49);
      sub_22C37B09C();
      sub_22C36C30C();

      (*(v45 + 8))(v302, v301);
    }

    else
    {

      v53 = sub_22C36ECB4();
      v54(v53);
      v55 = sub_22C36BBCC();
      v56(v55);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C373954();
    v59 = sub_22C7914C4(v57, v58, &protocol conformance descriptor for InterpreterError);
    sub_22C3700B4(v59);
    goto LABEL_22;
  }

  (*(*(v0 + 632) + 96))(*(v0 + 648), *(v0 + 624));
  v30 = *v29;
  v32 = v30[2];
  v31 = v30[3];
  *(v0 + 720) = v31;
  v34 = v30[4];
  v33 = v30[5];
  *(v0 + 728) = v33;

  v35 = v32 == 0xD000000000000028 && 0x800000022C92EB40 == v31;
  v36 = v35;
  if (v35 || (sub_22C7918A4(0xD000000000000028) & 1) != 0)
  {
    sub_22C36EE00();
    v38 = v34 == 0xD000000000000012 && v37 == v33;
    if (v38 || (sub_22C791B20(0xD000000000000012, v37) & 1) != 0)
    {
      v39 = swift_task_alloc();
      *(v0 + 736) = v39;
      *v39 = v0;
      v39[1] = sub_22C786408;
      sub_22C386674(*(v0 + 200));
      sub_22C791C54();

      sub_22C78A6E0();
      return;
    }

    if (v36)
    {
      goto LABEL_32;
    }
  }

  if (sub_22C7918A4(0xD000000000000028))
  {
LABEL_32:
    sub_22C36EE00();
    v71 = v34 == 0xD000000000000012 && v70 == v33;
    if (v71 || (sub_22C791B20(0xD000000000000012, v70) & 1) != 0)
    {
      goto LABEL_53;
    }

    if (v36)
    {
      goto LABEL_39;
    }
  }

  if (sub_22C7918A4(0xD000000000000028))
  {
LABEL_39:
    v72 = v34 == 0x4C4E686372616553 && v33 == 0xEF797469746E4547;
    if (v72 || (sub_22C791B20(0x4C4E686372616553, 0xEF797469746E4547) & 1) != 0)
    {
      goto LABEL_53;
    }

    if (v36)
    {
      goto LABEL_46;
    }
  }

  if (sub_22C7918A4(0xD000000000000028))
  {
LABEL_46:
    sub_22C36EE00();
    v74 = v34 == 0xD000000000000012 && v73 == v33;
    if (v74 || (sub_22C791B20(0xD000000000000012, v73) & 1) != 0)
    {
      goto LABEL_53;
    }

    if (v36)
    {
      goto LABEL_48;
    }
  }

  if (sub_22C7918A4(0xD000000000000028))
  {
LABEL_48:
    sub_22C36EE00();
    v76 = v34 == 0xD000000000000015 && v75 == v33;
    if (v76 || (sub_22C791B20(0xD000000000000015, v75) & 1) != 0)
    {
LABEL_53:

      sub_22C9040CC();
      v77 = sub_22C37B220();
      v78(v77);
      v79 = sub_22C9063CC();
      v80 = sub_22C90AABC();
      v81 = sub_22C791C0C(v80);
      v82 = *(v0 + 480);
      v84 = *(v0 + 424);
      v83 = *(v0 + 432);
      v85 = *(v0 + 400);
      if (v81)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v309 = sub_22C388D58();
        *v84 = 136315138;
        sub_22C372D4C();
        sub_22C7914C4(v86, v87, MEMORY[0x277D728F0]);
        sub_22C6B01B0();
        sub_22C909F4C();
        v88 = sub_22C37FA34();
        v89(v88);
        v90 = sub_22C36D390();
        sub_22C36F9F4(v90, v91, v92);
        sub_22C3743B4();
        *(v84 + 4) = v85;
        sub_22C36D418(&dword_22C366000, "Attempting to render string from: %s", v36);
        sub_22C3817B8();
        sub_22C370510();

        (*(v83 + 8))(v82, v84);
      }

      else
      {

        v93 = sub_22C37FA34();
        v94(v93);
        v95 = sub_22C3805D8();
        v97(v95, v96);
      }

      v98 = MEMORY[0x277D84F90];
      *(v0 + 192) = MEMORY[0x277D84F90];
      v99 = sub_22C90914C();
      *(v0 + 792) = v99;
      v100 = *(v99 + 32);
      *(v0 + 1084) = v100;
      v101 = -1;
      v102 = -1 << v100;
      v103 = *(v99 + 64);
      if (-v102 < 64)
      {
        v101 = ~(-1 << -v102);
      }

      *(v0 + 800) = v98;
      v104 = v101 & v103;
      if (v104)
      {
        v105 = 0;
LABEL_63:
        v108 = *(v0 + 600);
        v109 = *(v0 + 552);
        v110 = *(v0 + 544);
        v111 = *(v0 + 344);
        v112 = *(v0 + 272);
        v113 = (v104 - 1) & v104;
        v114 = (*(v99 + 48) + 16 * (__clz(__rbit64(v104)) | (v105 << 6)));
        v116 = *v114;
        v115 = v114[1];
        sub_22C375D94();
        v117 = sub_22C383264();
        v118(v117);
        v119 = *(v112 + 48);
        *v111 = v116;
        *(v111 + 1) = v115;
        (*(v109 + 32))(&v111[v119], v108, v110);
        sub_22C36BECC();
        sub_22C36C640(v120, v121, v122, v112);

        v107 = v105;
      }

      else
      {
        v106 = 0;
        v107 = ((63 - v102) >> 6) - 1;
        while (v107 != v106)
        {
          v105 = v106 + 1;
          v104 = *(v99 + 72 + 8 * v106++);
          if (v104)
          {
            goto LABEL_63;
          }
        }

        sub_22C36A748();
        sub_22C36C640(v159, v160, v161, v162);
        v113 = 0;
      }

      *(v0 + 816) = v107;
      *(v0 + 808) = v113;
      v123 = *(v0 + 352);
      v124 = *(v0 + 272);
      sub_22C7912F0(*(v0 + 344), v123, &qword_27D9BFFB0, &qword_22C925C40);
      v125 = sub_22C3707B4();
      sub_22C36D0A8(v125, v126, v124);
      if (!v35)
      {
        v137 = sub_22C7919F0();
        v138(v137);
        sub_22C36A748();
        sub_22C36C640(v139, v140, v141, v113);
        sub_22C36A748();
        sub_22C36C640(v142, v143, v144, v113);
        v145 = sub_22C3702F4();
        sub_22C36C640(v145, v146, v147, v113);
        swift_allocObject();
        sub_22C3801E0();
        v148 = sub_22C36CA88();
        *(v0 + 824) = sub_22C79184C(v148, v149, 0, v123, v150, v151, v152, v153, v297);
        v154 = sub_22C36A724();
        *(v0 + 832) = sub_22C7960BC(v154, v155);

        v156 = swift_task_alloc();
        *(v0 + 840) = v156;
        *v156 = v0;
        sub_22C791B00(v156);
        v157 = *(v0 + 592);
LABEL_71:
        sub_22C386674(v157);
LABEL_72:
        sub_22C791C54();

        sub_22C77DAE4();
        return;
      }

      sub_22C7973A4(MEMORY[0x277D84F90]);
LABEL_67:

      goto LABEL_68;
    }
  }

  v163 = v32 == 0xD00000000000001BLL && 0x800000022C92EBF0 == v31;
  v164 = v163;
  if (v163 || (sub_22C7918A4(0xD00000000000001BLL) & 1) != 0)
  {
    v165 = v34 == 0x45746361746E6F43 && v33 == 0xED0000797469746ELL;
    if (v165 || (sub_22C791B20(0x45746361746E6F43, 0xED0000797469746ELL) & 1) != 0)
    {
      sub_22C9040CC();
      v166 = sub_22C36D29C();
      v167(v166);
      v168 = sub_22C9063CC();
      v169 = sub_22C90AABC();
      v170 = os_log_type_enabled(v168, v169);
      v171 = *(v0 + 472);
      v173 = *(v0 + 424);
      v172 = *(v0 + 432);
      v174 = *(v0 + 392);
      if (v170)
      {
        sub_22C36BED8();
        v303 = v169;
        v175 = swift_slowAlloc();
        v306 = v23;
        v309 = sub_22C370060();
        v176 = v309;
        *v175 = 136315138;
        sub_22C372D4C();
        sub_22C7914C4(v177, v178, MEMORY[0x277D728F0]);
        sub_22C37EF94();
        sub_22C909F4C();
        v179 = sub_22C380120();
        v180(v179);
        v181 = sub_22C36D264();
        sub_22C36F9F4(v181, v182, v183);
        sub_22C791F48();

        *(v175 + 4) = v174;
        sub_22C792188(&dword_22C366000, "Attempting to render ContactEntity: %s", v303);
        sub_22C36FF94(v176);
        v23 = v306;
        sub_22C3699EC();
        sub_22C36C30C();

        (*(v172 + 8))(v171, v173);
      }

      else
      {

        v184 = sub_22C380120();
        v185(v184);
        v186 = sub_22C36D264();
        v188(v186, v187);
      }

      v189 = *(v0 + 544);
      v190 = *(v0 + 528);
      v191 = sub_22C90914C();
      sub_22C6053C8(v191, v190);

      sub_22C36D0A8(v190, 1, v189);
      if (!v35)
      {
        (*(*(v0 + 552) + 32))(*(v0 + 584), *(v0 + 528), *(v0 + 544));
        v195 = swift_task_alloc();
        *(v0 + 864) = v195;
        *v195 = v0;
        v195[1] = sub_22C7876E8;
        v157 = *(v0 + 584);
        goto LABEL_71;
      }

      sub_22C376B84(*(v0 + 528), &qword_27D9BB908, &qword_22C910960);
      *(v0 + 888) = v23;
      v192 = *(v0 + 200);
      v193 = MEMORY[0x277D84F90];
      *(v0 + 184) = MEMORY[0x277D84F90];
      v194 = sub_22C90914C();
      sub_22C79098C(v194);
      sub_22C3743B4();
      v309 = sub_22C4703D8(v192);
      sub_22C78F540(&v309);

      v251 = v309;
      *(v0 + 896) = v309;
      v252 = *(v251 + 16);
      *(v0 + 904) = v252;
      if (v252)
      {
        sub_22C791CBC();
        v253 = *MEMORY[0x277D729E0];
        sub_22C791F00();
        if (!v254)
        {
          __break(1u);
          return;
        }

        sub_22C791ED0();
        sub_22C791344(v255 + v256, v192, &qword_27D9BADA0, &unk_22C90FA80);
        v257 = sub_22C791B60();
        v258(v257);
        sub_22C791EC4();
        v259(v194, v190 + v193, 0);
        v260 = sub_22C36BAFC();
        if (v261(v260) == v253)
        {
          v262 = sub_22C37B784();
          v263(v262);
          swift_task_alloc();
          sub_22C36CC90();
          *(v0 + 952) = v264;
          *v264 = v265;
          sub_22C387534();
        }

        else
        {
          swift_task_alloc();
          sub_22C36CC90();
          *(v0 + 976) = v285;
          *v285 = v286;
          sub_22C374FC4();
        }

        *(v266 + 8) = v267;
        sub_22C791C44();
        goto LABEL_72;
      }

      sub_22C791DB4();

      v284 = sub_22C8D5B00(MEMORY[0x277D84F90]);

      sub_22C7973A4(v284);

      goto LABEL_67;
    }

    if (v164)
    {
      goto LABEL_97;
    }
  }

  if (sub_22C7918A4(0xD00000000000001BLL))
  {
LABEL_97:
    sub_22C36EE00();
    v197 = v34 == 0xD000000000000019 && v196 == v33;
    if (v197 || (sub_22C791B20(0xD000000000000019, v196) & 1) != 0)
    {
      v198 = *(v0 + 384);
      v200 = *(v0 + 360);
      v199 = *(v0 + 368);
      v201 = *(v0 + 200);
      sub_22C9040CC();
      (*(v199 + 16))(v198, v201, v200);
      v202 = sub_22C9063CC();
      v203 = sub_22C90AABC();
      sub_22C792154(v203);
      v307 = v202;
      v205 = os_log_type_enabled(v202, v204);
      v304 = *(v0 + 464);
      v207 = *(v0 + 424);
      v206 = *(v0 + 432);
      v208 = *(v0 + 384);
      if (v205)
      {
        sub_22C36BED8();
        v298 = swift_slowAlloc();
        v300 = sub_22C370060();
        v309 = v300;
        *v298 = 136315138;
        sub_22C372D4C();
        sub_22C7914C4(v209, v210, MEMORY[0x277D728F0]);
        v211 = sub_22C909F4C();
        v213 = v212;
        v214 = sub_22C38644C();
        v215(v214);
        sub_22C36F9F4(v211, v213, &v309);
        sub_22C38B194();

        *(v298 + 4) = v208;
        sub_22C38073C();
        sub_22C792048(v216, v307, v217, v218);
        sub_22C36FF94(v300);
        sub_22C370510();
        sub_22C36BAE0();

        (*(v206 + 8))(v304, v207);
      }

      else
      {

        v268 = sub_22C38644C();
        v269(v268);
        (*(v206 + 8))(v304, v207);
      }

      v270 = *(v0 + 544);
      v271 = *(v0 + 520);
      v272 = sub_22C90914C();
      sub_22C6053C8(v272, v271);

      sub_22C36D0A8(v271, 1, v270);
      if (v35)
      {
        v273 = *(v0 + 520);
      }

      else
      {
        v274 = *(v0 + 544);
        v275 = *(v0 + 512);
        v276 = *(*(v0 + 552) + 32);
        v276(*(v0 + 568), *(v0 + 520), v274);
        v277 = sub_22C90914C();
        sub_22C6053C8(v277, v275);

        v278 = sub_22C370B74(v275, 1, v274);
        v273 = *(v0 + 512);
        if (v278 != 1)
        {
          v276(*(v0 + 560), *(v0 + 512), *(v0 + 544));
          v283 = swift_task_alloc();
          *(v0 + 1000) = v283;
          *v283 = v0;
          v283[1] = sub_22C788684;
          v157 = *(v0 + 568);
          goto LABEL_71;
        }

        v279 = sub_22C371510();
        v280(v279);
      }

      sub_22C376B84(v273, &qword_27D9BB908, &qword_22C910960);
LABEL_68:
      sub_22C378718();
      sub_22C37FFCC();
      sub_22C791AB0(v127, v128, v129, v130, v131, v132, v133, v134);

      sub_22C36D5E0();
      sub_22C791C54();

      __asm { BRAA            X2, X16 }
    }
  }

  (*(*(v0 + 232) + 104))(*(v0 + 240), *MEMORY[0x277D1ECA8], *(v0 + 224));
  v219 = sub_22C90362C();
  v220 = sub_22C379FC8();
  v221(v220);
  if ((v219 & 1) == 0)
  {
    swift_beginAccess();
    v234 = *(off_27D9BFF70 + 2);
    v235 = (off_27D9BFF70 + 56);
    if (v234)
    {
      do
      {
        v236 = *(v235 - 1);
        v237 = *v235;
        v238 = *(v235 - 3) == v32 && *(v235 - 2) == v31;
        if (v238 || (sub_22C90B4FC() & 1) != 0)
        {
          if (v236 == v34 && v237 == v33)
          {
            goto LABEL_105;
          }

          v240 = sub_22C379FC8();
          if (sub_22C791B20(v240, v241))
          {
            goto LABEL_105;
          }
        }

        v235 += 4;
      }

      while (--v234);
    }

    sub_22C9040CC();

    v242 = sub_22C9063CC();
    v243 = sub_22C90AADC();

    v244 = os_log_type_enabled(v242, v243);
    v246 = *(v0 + 424);
    v245 = *(v0 + 432);
    if (v244)
    {
      v305 = *(v0 + 448);
      v247 = sub_22C383050();
      v309 = swift_slowAlloc();
      *v247 = 136315394;
      *(v247 + 4) = sub_22C36F9F4(v32, v31, &v309);
      *(v247 + 12) = 2080;
      v248 = sub_22C372FCC();
      *(v247 + 14) = sub_22C36F9F4(v248, v249, v250);
      _os_log_impl(&dword_22C366000, v242, v243, "AppEntity (%s), (%s) is not in the allowlist.", v247, 0x16u);
      swift_arrayDestroy();
      sub_22C37B09C();
      sub_22C36C30C();

      (*(v245 + 8))(v305, v246);
    }

    else
    {

      v287 = sub_22C3726C4();
      v289(v287, v288);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C373954();
    sub_22C7914C4(v290, v291, &protocol conformance descriptor for InterpreterError);
    swift_allocError();
    v293 = v292;
    v309 = v32;
    v310 = v31;

    MEMORY[0x2318B7850](46, 0xE100000000000000);

    v294 = sub_22C372FCC();
    MEMORY[0x2318B7850](v294);

    v295 = v310;
    *v293 = v309;
    v293[1] = v295;
LABEL_22:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_22C792160();
    sub_22C37FFCC();
    sub_22C791AB0(v60, v61, v62, v63, v64, v65, v66, v67);

    sub_22C369A24();
    sub_22C791C54();

    __asm { BRAA            X1, X16 }
  }

LABEL_105:
  sub_22C9040CC();

  v222 = sub_22C9063CC();
  v223 = sub_22C90AABC();

  v224 = os_log_type_enabled(v222, v223);
  v225 = *(v0 + 456);
  v227 = *(v0 + 424);
  v226 = *(v0 + 432);
  if (v224)
  {
    v308 = *(v0 + 424);
    v228 = sub_22C383050();
    v309 = swift_slowAlloc();
    *v228 = 136315394;
    v229 = sub_22C36F9F4(v32, v31, &v309);

    *(v228 + 4) = v229;
    *(v228 + 12) = 2080;
    v230 = sub_22C372FCC();
    v233 = sub_22C36F9F4(v230, v231, v232);

    *(v228 + 14) = v233;
    _os_log_impl(&dword_22C366000, v222, v223, "Attempting to coerce (%s), (%s)", v228, 0x16u);
    swift_arrayDestroy();
    sub_22C386DA4();
    sub_22C3699EC();

    (*(v226 + 8))(v225, v308);
  }

  else
  {

    (*(v226 + 8))(v225, v227);
  }

  v281 = swift_task_alloc();
  *(v0 + 1048) = v281;
  *v281 = v0;
  v281[1] = sub_22C789180;
  sub_22C386674(*(v0 + 208));
  sub_22C791C54();

  sub_22C78C284();
}

uint64_t sub_22C786408()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 744) = v4;
  *(v2 + 752) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C78650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  if (v50[93])
  {

    sub_22C795BBC();
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      v93 = v50[93];

      v94 = sub_22C79643C(v93);
      sub_22C791B54(v94);

LABEL_12:

      sub_22C378718();
      sub_22C36C334();
      sub_22C379B1C(v95, v96, v97, v98, v99, v100, v101, v102);

      sub_22C36D5E0();
      sub_22C7918F4();

      return v105(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
    }
  }

  v54 = v50[68];
  v55 = v50[67];
  v56 = sub_22C90914C();
  sub_22C6053C8(v56, v55);

  v57 = sub_22C383C3C();
  sub_22C36D0A8(v57, v58, v54);
  if (!v59)
  {
    sub_22C791BDC();
    v70 = sub_22C6AF81C();
    v71(v70);
    sub_22C9040CC();
    v72 = sub_22C36D7E0();
    v73(v72);
    v74 = sub_22C9063CC();
    v75 = sub_22C90AABC();
    v76 = sub_22C36FBB4(v75);
    v77 = v50[76];
    v78 = v50[69];
    v79 = v50[63];
    v81 = v50[53];
    v80 = v50[54];
    if (v76)
    {
      sub_22C36BED8();
      swift_slowAlloc();
      sub_22C388D58();
      *v81 = 136315138;
      sub_22C36A32C();
      sub_22C7914C4(v82, v83, MEMORY[0x277D72A80]);
      sub_22C909F4C();
      v160 = v79;
      v85 = v84;
      v86 = *(v78 + 8);
      v87 = sub_22C379FC8();
      v86(v87);
      v88 = sub_22C791C70();
      sub_22C36F9F4(v88, v85, v89);
      sub_22C37FF48();

      *(v81 + 4) = v77;
      sub_22C38073C();
      sub_22C5CD33C(v90, v74, v91, v92);
      sub_22C791870();
      sub_22C370510();

      (*(v80 + 8))(v160, v81);
    }

    else
    {

      v86 = *(v78 + 8);
      v112 = sub_22C379FC8();
      v86(v112);
      v113 = sub_22C5CAA58();
      v115(v113, v114);
    }

    v50[95] = v86;
    v116 = swift_task_alloc();
    v50[96] = v116;
    *v116 = v50;
    v116[1] = sub_22C786DE8;
    sub_22C386674(v50[77]);
    sub_22C7918F4();

    return sub_22C77DAE4();
  }

  v60 = v50[52];
  sub_22C376B84(v50[67], &qword_27D9BB908, &qword_22C910960);
  sub_22C90915C();
  v61 = sub_22C783B28(v60);
  v63 = v62;
  sub_22C376B84(v60, &qword_27D9BC390, &qword_22C912AC0);
  if (v63)
  {
    a44 = v61;
    sub_22C9040CC();
    v64 = sub_22C9063CC();
    v65 = sub_22C90AABC();
    if (sub_22C36D08C(v65))
    {
      v66 = sub_22C36D240();
      *v66 = 0;
      _os_log_impl(&dword_22C366000, v64, v60, "Falling back to display representation for SearchAnswerEntity", v66, 2u);
      sub_22C36BAE0();
    }

    v67 = sub_22C36CC9C();
    v68(v67);
    v69 = sub_22C796314(a44, v63);
    sub_22C791B54(v69);

    goto LABEL_12;
  }

  sub_22C9040CC();
  v118 = sub_22C375B38();
  v119(v118);
  v120 = sub_22C9063CC();
  v121 = sub_22C90AADC();
  v122 = sub_22C791C0C(v121);
  v123 = v50[61];
  v125 = v50[53];
  v124 = v50[54];
  v126 = v50[51];
  if (v122)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    LODWORD(a42) = v51;
    a45 = sub_22C388D58();
    *v125 = 136315138;
    sub_22C372D4C();
    sub_22C7914C4(v127, v128, MEMORY[0x277D728F0]);
    sub_22C6B01B0();
    sub_22C909F4C();
    a43 = v123;
    v130 = v129;
    v131 = sub_22C37FA34();
    v132(v131);
    v133 = sub_22C791C70();
    sub_22C36F9F4(v133, v130, v134);
    sub_22C3743B4();
    *(v125 + 4) = v126;
    sub_22C36D418(&dword_22C366000, "SearchAnswerEntity contained no valid fields: %s", v51);
    sub_22C3817B8();
    sub_22C370510();

    (*(v124 + 8))(a43, v125);
  }

  else
  {

    v135 = sub_22C37FA34();
    v136(v135);
    v137 = sub_22C3805D8();
    v139(v137, v138);
  }

  type metadata accessor for InterpreterError(0);
  sub_22C373954();
  v142 = sub_22C7914C4(v140, v141, &protocol conformance descriptor for InterpreterError);
  v161 = sub_22C36D148(v142);
  sub_22C791BC0(v161, v143);
  swift_willThrow();

  sub_22C36C334();
  sub_22C379B1C(v144, v145, v146, v147, v148, v149, v150, v151);

  sub_22C38C49C();
  sub_22C7918F4();

  return v153(v152, v153, v154, v155, v156, v157, v158, v159, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v161, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_22C786DE8()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 776) = v0;

  if (!v0)
  {
    *(v5 + 784) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C786EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = *(v50 + 760);
  v52 = sub_22C79643C(*(v50 + 784));
  sub_22C792224(v52);

  v53 = sub_22C36FC2C();
  v51(v53);
  sub_22C378718();
  sub_22C36B634();
  v65 = v55;
  v66 = v54;

  sub_22C37A38C();
  sub_22C7918F4();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v65, v66, a46, a47, a48, a49, a50);
}

uint64_t sub_22C787124()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 848) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 856) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7876E8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 872) = v4;
  *(v2 + 880) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22C7877EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58)
{
  sub_22C791910();
  a57 = v60;
  a58 = v61;
  sub_22C38B4F8();
  a56 = v58;
  v62 = v58[109];
  if (v62)
  {
    v63 = v58[84];
    v64 = v58[38];
    v59 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
    swift_beginAccess();
    sub_22C791344(v62 + v59, v63, &qword_27D9BB610, &qword_22C925BC0);
    v65 = sub_22C3707B4();
    sub_22C36D0A8(v65, v66, v64);
    if (!v67)
    {
      v73 = v58[89];
      v59 = v58[73];
      v74 = v58[42];
      v75 = sub_22C7920BC();
      v76(v75);
      v77 = v73;
      sub_22C795F5C(v74, 1);
      sub_22C37FF48();

      v78 = sub_22C36FC2C();
      v79(v78);
      v80 = sub_22C36ECB4();
      v81(v80);
      goto LABEL_7;
    }

    v68 = v58[84];
    v69 = sub_22C79210C();
    v70(v69);

    sub_22C376B84(v68, &qword_27D9BB610, &qword_22C925BC0);
  }

  else
  {
    v71 = sub_22C79210C();
    v72(v71);
  }

  v77 = v58[89];
LABEL_7:
  v82 = v58[110];
  v58[111] = v77;
  v83 = v58[25];
  v84 = MEMORY[0x277D84F90];
  v58[23] = MEMORY[0x277D84F90];
  v85 = sub_22C90914C();
  sub_22C79098C(v85);
  sub_22C3743B4();
  a45 = sub_22C4703D8(v83);
  sub_22C78F540(&a45);
  if (v82)
  {

    sub_22C7918F4();
  }

  else
  {

    v87 = a45;
    v58[112] = a45;
    v88 = *(v87 + 16);
    v58[113] = v88;
    if (v88)
    {
      sub_22C791CBC();
      v89 = *MEMORY[0x277D729E0];
      sub_22C791F00();
      if (v90)
      {
        sub_22C791ED0();
        sub_22C791344(v91 + v92, v83, &qword_27D9BADA0, &unk_22C90FA80);
        v93 = sub_22C791B60();
        v94(v93);
        sub_22C791EC4();
        v95(v85, v59 + v84, 0);
        v96 = sub_22C36BAFC();
        if (v97(v96) == v89)
        {
          v98 = sub_22C37B784();
          v99(v98);
          swift_task_alloc();
          sub_22C36CC90();
          v58[119] = v100;
          *v100 = v101;
          sub_22C387534();
        }

        else
        {
          swift_task_alloc();
          sub_22C36CC90();
          v58[122] = v121;
          *v121 = v122;
          sub_22C374FC4();
        }

        *(v102 + 8) = v103;
        sub_22C791C44();
        sub_22C7918F4();

        sub_22C77DAE4();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_22C791DB4();

      v104 = sub_22C8D5B00(MEMORY[0x277D84F90]);

      v124 = sub_22C7973A4(v104);

      sub_22C378718();
      sub_22C36C334();
      sub_22C379B1C(v105, v106, v107, v108, v109, v110, v111, v112);

      sub_22C36D5E0();
      sub_22C7918F4();

      v115(v113, v114, v115, v116, v117, v118, v119, v120, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v124, a45, a46, a47, a48, a49, a50);
    }
  }
}

uint64_t sub_22C787CD0()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 960) = v5;
  *(v3 + 968) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7881B4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 984) = v5;
  *(v3 + 992) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C788684()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1008) = v4;
  *(v2 + 1016) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C788788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C791C7C();
  sub_22C791D14();
  if (v48[126])
  {
    v50 = swift_task_alloc();
    v48[128] = v50;
    *v50 = v48;
    v50[1] = sub_22C788A5C;
    sub_22C386674(v48[70]);
    sub_22C7919D4();

    return sub_22C77DAE4();
  }

  else
  {
    sub_22C3839E4();

    v53 = *(v49 + 8);
    v54 = sub_22C36ECB4();
    v53(v54);
    v55 = sub_22C36D29C();
    v53(v55);
    sub_22C792160();
    sub_22C37FFCC();
    v65 = v56;
    v66 = v48[50];
    v67 = v48[49];
    v68 = v48[48];
    v69 = v48[47];
    v70 = v48[44];
    v71 = v48[43];
    v72 = v48[42];
    v73 = v48[41];
    v74 = v48[40];
    v75 = v48[37];
    v76 = v48[36];
    v77 = v48[33];
    v78 = v48[31];
    v79 = v48[30];

    sub_22C36D5E0();
    sub_22C7919D4();

    return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, a45, a46, a47, a48);
  }
}

uint64_t sub_22C788A5C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1032) = v4;
  *(v2 + 1040) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22C788B60()
{
  if (v0[129])
  {
    v2 = v0[126];
    v3 = v0[83];
    v4 = v0[38];
    v5 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
    swift_beginAccess();
    sub_22C791344(v2 + v5, v3, &qword_27D9BB610, &qword_22C925BC0);
    v6 = sub_22C3707B4();
    sub_22C36D0A8(v6, v7, v4);
    if (v8)
    {
      sub_22C792140();
      v9 = v0[83];
      v10 = v0[71];
      v11 = v0[69];
      v12 = v0[68];

      v13 = *(v11 + 8);
      v14 = sub_22C3726C4();
      v13(v14);
      (v13)(v10, v12);
      sub_22C376B84(v9, &qword_27D9BB610, &qword_22C925BC0);
    }

    else
    {
      (*(v0[39] + 32))(v0[41], v0[83], v0[38]);
      sub_22C795BBC();
      if (v18)
      {
        sub_22C792140();
        v67 = v0[70];
        v69 = v0[71];
        v19 = v0[69];
        v20 = v0[68];

        v21 = sub_22C36CC9C();
        v22(v21);
        v23 = *(v19 + 8);
        v23(v67, v20);
        v23(v69, v20);
      }

      else
      {
        v68 = v0[71];
        v70 = v0[129];
        v66 = v0[70];
        v34 = v0[69];
        v65 = v0[68];
        v35 = v0[40];
        v64 = v0[41];
        v36 = v0[39];
        v63 = v0[38];
        sub_22C90019C();
        sub_22C791B3C();
        sub_22C7914C4(v37, v38, MEMORY[0x277CC8B40]);
        v0[11] = sub_22C90A48C();
        v0[12] = v39;
        v0[13] = 1008804959;
        v0[14] = 0xE400000000000000;
        v0[15] = 0;
        v0[16] = 0xE000000000000000;
        v40 = sub_22C3858B4();
        v41 = MEMORY[0x277D837D0];
        v48 = sub_22C791E9C((v0 + 13), (v0 + 15), v42, v43, v44, v45, v46, v47, MEMORY[0x277D837D0], v40, v40, v40);
        v50 = v49;

        v0[17] = v48;
        v0[18] = v50;
        v0[19] = 1596203326;
        v0[20] = 0xE400000000000000;
        v0[21] = 0;
        v0[22] = 0xE000000000000000;
        sub_22C791E9C((v0 + 19), (v0 + 21), v51, v52, v53, v54, v55, v56, v41, v40, v40, v40);
        sub_22C791D08();

        sub_22C90025C();
        sub_22C372164();
        sub_22C90022C();
        sub_22C795F9C(v35, 1);
        v57 = *(v36 + 8);
        v57(v35, v63);

        sub_22C79643C(v70);

        v57(v64, v63);
        v58 = *(v34 + 8);
        v58(v66, v65);
        v58(v68, v65);
      }
    }
  }

  else
  {
    sub_22C791D20();

    v15 = *(v1 + 8);
    v16 = sub_22C36CA88();
    v15(v16);
    v17 = sub_22C50B478();
    v15(v17);
  }

  v24 = sub_22C378718();
  sub_22C36FE4C(v24, v25, v26, v27, v28, v29, v30, v31, v59, v60, v61, v62, v0[75], v0[74], v0[73], v0[72], v0[71], v0[70], v0[67], v0[66]);

  sub_22C37A38C();
  sub_22C791C54();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C789180()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 1056) = v0;

  if (!v0)
  {
    *(v5 + 1064) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C789288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();

  v64 = *(v50 + 1064);
  sub_22C378718();
  sub_22C36B634();
  v62 = v52;
  v63 = v51;

  sub_22C37A38C();
  sub_22C7918F4();

  return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v62, v63, v64, a47, a48, a49, a50);
}

uint64_t sub_22C789468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();

  v64 = *(v50 + 752);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v62 = v52;
  v63 = v51;

  sub_22C375A9C();
  sub_22C7918F4();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v62, v63, v64, a47, a48, a49, a50);
}

uint64_t sub_22C78965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = *(v50 + 760);
  sub_22C791DB4();

  v52 = sub_22C36ECB4();
  v51(v52);
  v66 = *(v50 + 776);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v64 = v54;
  v65 = v53;

  sub_22C375A9C();
  sub_22C7918F4();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v64, v65, v66, a47, a48, a49, a50);
}

uint64_t sub_22C78987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();

  v51 = sub_22C36D264();
  v52(v51);
  v66 = *(v50 + 880);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v64 = v54;
  v65 = v53;

  sub_22C375A9C();
  sub_22C7918F4();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v64, v65, v66, a47, a48, a49, a50);
}

uint64_t sub_22C789A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = *(v50 + 288);

  sub_22C376B84(v51, &qword_27D9BADA0, &unk_22C90FA80);
  v65 = *(v50 + 968);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v63 = v53;
  v64 = v52;

  sub_22C375A9C();
  sub_22C7918F4();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v63, v64, v65, a47, a48, a49, a50);
}

uint64_t sub_22C789CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = *(v50 + 288);

  v52 = sub_22C36D264();
  v53(v52);
  sub_22C376B84(v51, &qword_27D9BADA0, &unk_22C90FA80);
  v67 = *(v50 + 992);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v65 = v55;
  v66 = v54;

  sub_22C375A9C();
  sub_22C7918F4();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v65, v66, v67, a47, a48, a49, a50);
}

uint64_t sub_22C789ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  sub_22C3839E4();

  v52 = *(v51 + 8);
  v53 = sub_22C36ECB4();
  v52(v53);
  v54 = sub_22C36D29C();
  v52(v54);
  v68 = *(v50 + 1016);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v66 = v56;
  v67 = v55;

  sub_22C375A9C();
  sub_22C7918F4();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v66, v67, v68, a47, a48, a49, a50);
}

uint64_t sub_22C78A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  sub_22C791D20();

  v52 = *(v51 + 8);
  v53 = sub_22C36CA88();
  v52(v53);
  v54 = sub_22C50B478();
  v52(v54);
  v68 = *(v50 + 1040);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v66 = v56;
  v67 = v55;

  sub_22C375A9C();
  sub_22C7918F4();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v66, v67, v68, a47, a48, a49, a50);
}

uint64_t sub_22C78A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();

  v64 = *(v50 + 1056);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v62 = v52;
  v63 = v51;

  sub_22C375A9C();
  sub_22C7918F4();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v62, v63, v64, a47, a48, a49, a50);
}

uint64_t sub_22C78A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();

  v51 = sub_22C36D264();
  v52(v51);
  v66 = *(v50 + 848);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v64 = v54;
  v65 = v53;

  sub_22C375A9C();
  sub_22C7918F4();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v64, v65, v66, a47, a48, a49, a50);
}

uint64_t sub_22C78A6E0()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_22C90931C();
  v1[5] = v3;
  sub_22C3699B8(v3);
  v1[6] = v4;
  v1[7] = sub_22C3699D4();
  v5 = sub_22C9093BC();
  v1[8] = v5;
  sub_22C3699B8(v5);
  v1[9] = v6;
  v1[10] = sub_22C36D0D4();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v7);
  v1[15] = sub_22C3699D4();
  v8 = sub_22C90906C();
  v1[16] = v8;
  sub_22C3699B8(v8);
  v1[17] = v9;
  v1[18] = sub_22C3699D4();
  v10 = sub_22C90919C();
  v1[19] = v10;
  sub_22C3699B8(v10);
  v1[20] = v11;
  v1[21] = sub_22C36D0D4();
  v1[22] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v1[23] = v12;
  sub_22C3699B8(v12);
  v1[24] = v13;
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v14 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v14);
  v1[32] = sub_22C36D0D4();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C78A9A8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 160);
  v3 = sub_22C90021C();
  v4 = sub_22C3702F4();
  sub_22C36C640(v4, v5, v6, v3);
  v7 = sub_22C381B6C();
  sub_22C36C640(v7, v8, v9, v3);
  sub_22C36A748();
  v13 = sub_22C791F6C(v10, v11, v12, v3);
  v14 = type metadata accessor for PayloadLayout(v13);
  sub_22C3856A0(v14);
  v15 = sub_22C372468();
  *(v0 + 280) = sub_22C79184C(v15, v16, v17, v1, v18, v19, v20, v21, v148);
  sub_22C9040CC();
  *(v0 + 288) = *(v2 + 16);
  *(v0 + 296) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22 = sub_22C50B478();
  v23(v22);
  v24 = sub_22C9063CC();
  v25 = sub_22C90AABC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 248);
  v28 = *(v0 + 184);
  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  v32 = *(v0 + 152);
  v31 = *(v0 + 160);
  if (v26)
  {
    sub_22C36BED8();
    v33 = swift_slowAlloc();
    sub_22C370060();
    *v33 = 136315138;
    sub_22C372D4C();
    sub_22C7914C4(v34, v35, MEMORY[0x277D728F0]);
    sub_22C37EF94();
    sub_22C909F4C();
    v149 = v25;
    v36 = *(v31 + 8);
    v37 = sub_22C380120();
    v36(v37);
    v38 = sub_22C36BAFC();
    sub_22C36F9F4(v38, v39, v40);
    sub_22C37FF48();

    *(v33 + 4) = v30;
    sub_22C792188(&dword_22C366000, "Formatting SearchAnswerEntity: %s", v149);
    sub_22C791870();
    sub_22C36C30C();

    v41 = *(v29 + 8);
    v41(v27, v28);
  }

  else
  {

    v36 = *(v31 + 8);
    v42 = sub_22C380120();
    v36(v42);
    v41 = *(v29 + 8);
    v43 = sub_22C36BAFC();
    v41(v43, v44);
  }

  *(v0 + 304) = v36;
  *(v0 + 312) = v41;
  v45 = *(v0 + 120);
  v46 = *(v0 + 64);
  v47 = sub_22C90914C();
  sub_22C36EE00();
  sub_22C6053C8(v47, v45);

  v48 = sub_22C36CCF8();
  v50 = sub_22C370B74(v48, v49, v46);
  v51 = *(v0 + 120);
  if (v50 == 1)
  {
    sub_22C376B84(v51, &qword_27D9BB908, &qword_22C910960);
LABEL_47:
    sub_22C9040CC();
    v131 = sub_22C9063CC();
    v132 = sub_22C90AADC();
    if (sub_22C370048(v132))
    {
      v133 = sub_22C36D240();
      sub_22C383878(v133);
      sub_22C37B3D4();
      _os_log_impl(v134, v135, v136, v137, v138, 2u);
      sub_22C386DA4();
    }

    v139 = sub_22C36D264();
    (v41)(v139);
    v155 = 0;
    goto LABEL_51;
  }

  v52 = *(v0 + 64);
  v53 = *(v0 + 72);
  v54 = *(v53 + 88);
  *(v0 + 320) = v54;
  *(v0 + 328) = (v53 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  if (v54(v51, v52) != *MEMORY[0x277D729E0])
  {
    sub_22C791CFC();
    v130();
    goto LABEL_47;
  }

  v56 = *(v0 + 136);
  v55 = *(v0 + 144);
  v57 = *(v0 + 120);
  v58 = *(v0 + 64);
  v59 = *(v0 + 72);
  v60 = *(v59 + 96);
  *(v0 + 336) = v60;
  *(v0 + 344) = (v59 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
  v60(v57, v58);
  v61 = *v57;
  swift_projectBox();
  v62 = v56 + 16;
  v63 = sub_22C383264();
  v64(v63);

  sub_22C3A5908(&qword_27D9BFFC0, &qword_22C925C58);
  v65 = sub_22C909F0C();
  v66 = sub_22C90905C();
  *(v0 + 352) = v66;
  v67 = *(v66 + 16);
  *(v0 + 360) = v67;
  if (!v67)
  {
LABEL_50:

    sub_22C796AB8();
    v155 = v140;

    v141 = sub_22C36ECB4();
    v142(v141);
LABEL_51:
    sub_22C791D70();

    sub_22C36D5E0();

    return v143(v155);
  }

  v68 = 0;
  *(v0 + 448) = *(*(v0 + 72) + 80);
  *(v0 + 452) = *MEMORY[0x277D72A38];
  *(v0 + 456) = *MEMORY[0x277D72A58];
  *(v0 + 460) = *MEMORY[0x277D729B8];
  *(v0 + 464) = *MEMORY[0x277D729E8];
  v151 = v65;
  while (1)
  {
    *(v0 + 376) = v68;
    *(v0 + 384) = v65;
    *(v0 + 368) = v65;
    if (v68 >= *(*(v0 + 352) + 16))
    {
      break;
    }

    v69 = *(v0 + 452);
    v70 = *(v0 + 320);
    v55 = *(v0 + 64);
    v71 = *(v0 + 72);
    v73 = *(v71 + 16);
    v72 = v71 + 16;
    v61 = v73;
    sub_22C7920D0();
    v32 = *(v72 + 56);
    (v73)(v62, v75 + v32 * v74, v55);
    if (v70(v62, v55) != v69)
    {
      sub_22C791CFC();
      v107();
      sub_22C9040CC();
      v55 = sub_22C9063CC();
      v108 = sub_22C90AADC();
      v109 = sub_22C36D08C(v108);
      v110 = *(v0 + 312);
      v61 = *(v0 + 192);
      if (v109)
      {
        v61 = (v61 + 8);
        v111 = sub_22C36D240();
        sub_22C7918E4(v111);
        sub_22C791F54(&dword_22C366000, v55, v112, "RequestedProperty was not an entity");
        sub_22C36C30C();
      }

      v113 = sub_22C36CA88();
      v110(v113);
      goto LABEL_34;
    }

    v76 = *(v0 + 288);
    v77 = sub_22C791F30();
    v78(v77);
    v79 = swift_projectBox();
    v76(v55, v79, v62);

    sub_22C90914C();
    sub_22C791DA8();
    if (!v80 || (sub_22C36E2BC(1701667182, 0xE400000000000000), (v81 & 1) == 0))
    {

LABEL_27:
      sub_22C9040CC();
      v55 = sub_22C9063CC();
      v114 = sub_22C90AADC();
      sub_22C36D08C(v114);
      v115 = *(v0 + 312);
      v154 = *(v0 + 304);
      sub_22C792088();
      if (v116)
      {
        v61 = (v72 + 8);
        v117 = sub_22C36D240();
        sub_22C7918E4(v117);
        sub_22C791F54(&dword_22C366000, v55, v118, "RequestedProperty had no name field");
        sub_22C36C30C();
      }

      else
      {

        v55 = (v61 + 8);
      }

      v119 = sub_22C371510();
      v115(v119);
      goto LABEL_32;
    }

    v82 = *(v0 + 456);
    v83 = *(v0 + 320);
    v62 = *(v0 + 104);
    v84 = sub_22C791EE8();
    v61(v84);

    v85 = sub_22C36ECB4();
    if (v83(v85) != v82)
    {
      sub_22C791CFC();
      v122();
      goto LABEL_27;
    }

    sub_22C7920A8();
    v86(v55);
    swift_projectBox();
    sub_22C375D94();
    v87(v62);
    v88 = sub_22C36ECB4();
    if (v89(v88) != v82)
    {
      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

      goto LABEL_27;
    }

    v90 = sub_22C791F18();
    v91(v90);
    v92 = *v62;
    *(v0 + 392) = *v62;
    v93 = *(v62 + 8);
    *(v0 + 400) = v93;

    sub_22C90914C();
    sub_22C791DA8();
    if (v94 && (sub_22C36E2BC(1701869940, 0xE400000000000000), (v95 & 1) != 0))
    {
      v150 = v92;
      v152 = *(v0 + 464);
      v96 = *(v0 + 320);
      v97 = sub_22C791EE8();
      v61(v97);

      v98 = sub_22C36ECB4();
      if (v96(v98) == v152)
      {
        v99 = sub_22C791CDC();
        v100(v99);
        sub_22C90914C();
        sub_22C791DA8();
        if (v101)
        {
          v66 = sub_22C36E2BC(v150, v93);
          if (v102)
          {
            goto LABEL_55;
          }
        }

        sub_22C9040CC();
        v55 = sub_22C9063CC();
        v103 = sub_22C90AADC();
        v104 = sub_22C370048(v103);
        v61 = *(v0 + 304);
        v105 = *(v0 + 312);
        v62 = *(v0 + 160);
        v153 = *(v0 + 168);
        v32 = *(v0 + 152);
        if (v104)
        {
          v62 = sub_22C36D240();
          *v62 = 0;
          _os_log_impl(&dword_22C366000, v55, v103, "RequestedProperty had no property value", v62, 2u);
          sub_22C3699EC();
        }

        else
        {

          v55 = (v62 + 8);
        }

        v106 = sub_22C371510();
        v105(v106);
        (v61)(v153, v32);
        goto LABEL_33;
      }

      v62 = *(v0 + 64);

      v128 = sub_22C372164();
      v129(v128);
    }

    else
    {
    }

    sub_22C9040CC();
    v55 = sub_22C9063CC();
    v123 = sub_22C90AADC();
    sub_22C36D08C(v123);
    v61 = *(v0 + 312);
    v154 = *(v0 + 304);
    sub_22C792060();
    if (v124)
    {
      v125 = sub_22C36D240();
      sub_22C7918E4(v125);
      sub_22C791F54(&dword_22C366000, v55, v126, "RequestedProperty had no type field");
      sub_22C36C30C();
    }

    else
    {

      v55 = (v72 + 8);
    }

    v127 = sub_22C371510();
    v61(v127);
LABEL_32:
    v120 = sub_22C36CC9C();
    v154(v120);
LABEL_33:
    v65 = v151;
LABEL_34:
    sub_22C792074();
    if (v121)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  (v61)(*(v0 + 80), v55[7].isa + v66 * v32, *(v0 + 64));

  v145 = sub_22C37B220();
  v146(v145);
  v147 = swift_task_alloc();
  *(v0 + 424) = v147;
  *v147 = v0;
  sub_22C79192C(v147);

  return sub_22C77DAE4();
}

uint64_t sub_22C78B518()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 432) = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

unint64_t sub_22C78B638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  v24 = *(v22 + 400);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(v22 + 392) & 0xFFFFFFFFFFFFLL;
  }

  if (!v25 || !*(v22 + 432))
  {

    sub_22C9040CC();
    v36 = sub_22C9063CC();
    v23 = sub_22C90AADC();
    v37 = sub_22C5CAB64(v23);
    v38 = *(v22 + 432);
    v151 = *(v22 + 408);
    v158 = *(v22 + 304);
    v39 = *(v22 + 240);
    v40 = *(v22 + 184);
    v148 = *(v22 + 168);
    v144 = *(v22 + 312);
    v146 = *(v22 + 152);
    if (v37)
    {
      v41 = sub_22C36D240();
      *v41 = 0;
      _os_log_impl(&dword_22C366000, v36, v23, "Either key or value was empty", v41, 2u);
      sub_22C37E124();
    }

    v144(v39, v40);
    v42 = sub_22C36FC2C();
    v151(v42);
    v158(v148, v146);
    v159 = *(v22 + 384);
    v43 = *(v22 + 368);
    goto LABEL_20;
  }

  v26 = *(v22 + 368);

  swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 16) = v26;
  v27 = sub_22C37EF10();
  result = sub_22C36E2BC(v27, v28);
  if (__OFADD__(*(v26 + 16), (v30 & 1) == 0))
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = result;
  v32 = v30;
  sub_22C3A5908(&qword_27D9BFFC8, &unk_22C925C60);
  if (sub_22C90B15C())
  {
    v33 = sub_22C36E2BC(*(v22 + 392), *(v22 + 400));
    if ((v32 & 1) != (v34 & 1))
    {
      sub_22C381608();

      return sub_22C90B54C();
    }

    v31 = v33;
  }

  v43 = *(v22 + 16);
  v44 = *(v22 + 432);
  result = *(v22 + 400);
  if ((v32 & 1) == 0)
  {
    v45 = *(v22 + 392);
    v43[(v31 >> 6) + 8] |= 1 << v31;
    v46 = (v43[6] + 16 * v31);
    *v46 = v45;
    v46[1] = result;
    *(v43[7] + 8 * v31) = v44;
    v47 = v43[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (!v48)
    {
      v43[2] = v49;
      goto LABEL_19;
    }

LABEL_63:
    __break(1u);
    return result;
  }

  *(v43[7] + 8 * v31) = v44;

LABEL_19:

  v50 = *(v22 + 304);
  v38 = *(v22 + 160) + 8;
  (*(v22 + 408))(*(v22 + 88), *(v22 + 64));
  v51 = sub_22C36BBCC();
  v50(v51);
  v159 = v43;
LABEL_20:
  v156 = v43;
  while (1)
  {
    sub_22C792074();
    if (v53)
    {
      break;
    }

    *(v22 + 376) = v52;
    *(v22 + 384) = v159;
    *(v22 + 368) = v43;
    if (v52 >= *(*(v22 + 352) + 16))
    {
      __break(1u);
LABEL_59:
      v134 = sub_22C6AFB9C();
      v23(v134);

      v135 = sub_22C36BAFC();
      v136(v135);
      v137 = swift_task_alloc();
      *(v22 + 424) = v137;
      *v137 = v22;
      sub_22C79192C(v137);
      sub_22C381608();

      return sub_22C77DAE4();
    }

    v54 = *(v22 + 452);
    v55 = *(v22 + 320);
    v56 = *(v22 + 64);
    v57 = *(v22 + 72);
    v23 = *(v57 + 16);
    sub_22C7920D0();
    v58 = *(v57 + 72);
    (v23)(v38, v60 + v58 * v59, v56);
    if (v55(v38, v56) == v54)
    {
      v61 = *(v22 + 288);
      v62 = sub_22C791F30();
      v63(v62);
      v64 = swift_projectBox();
      v61(v56, v64, v38);

      sub_22C90914C();
      sub_22C791DA8();
      if (v65 && (v66 = sub_22C36E2BC(1701667182, 0xE400000000000000), (v67 & 1) != 0))
      {
        v68 = *(v22 + 456);
        v69 = *(v22 + 320);
        v38 = *(v22 + 104);
        (v23)(v38, *(v56 + 56) + v66 * v58, *(v22 + 64));

        v70 = sub_22C36ECB4();
        if (v69(v70) != v68)
        {
          sub_22C791CFC();
          v111();
          goto LABEL_40;
        }

        sub_22C7920A8();
        v72 = *(v22 + 40);
        v71 = *(v22 + 48);
        v73(v56);
        v74 = swift_projectBox();
        (*(v71 + 16))(v38, v74, v72);
        v75 = sub_22C36ECB4();
        if (v76(v75) != v68)
        {
          (*(*(v22 + 48) + 8))(*(v22 + 56), *(v22 + 40));

          goto LABEL_40;
        }

        v77 = sub_22C791F18();
        v78(v77);
        v79 = *v38;
        *(v22 + 392) = *v38;
        v38 = *(v38 + 8);
        *(v22 + 400) = v38;

        sub_22C90914C();
        sub_22C791DA8();
        if (!v80 || (v81 = sub_22C36E2BC(1701869940, 0xE400000000000000), (v82 & 1) == 0))
        {

LABEL_49:
          sub_22C9040CC();
          v112 = sub_22C9063CC();
          v113 = sub_22C90AADC();
          sub_22C36D08C(v113);
          v114 = *(v22 + 312);
          v154 = *(v22 + 304);
          sub_22C792060();
          if (v115)
          {
            v116 = sub_22C36D240();
            sub_22C7918E4(v116);
            sub_22C791F54(&dword_22C366000, v112, v117, "RequestedProperty had no type field");
            sub_22C36C30C();
          }

          v118 = sub_22C371510();
          v114(v118);
          goto LABEL_43;
        }

        v149 = v79;
        v152 = *(v22 + 464);
        v83 = *(v22 + 320);
        (v23)(*(v22 + 96), *(v56 + 56) + v81 * v58, *(v22 + 64));

        v84 = sub_22C371510();
        if (v83(v84) != v152)
        {

          v119 = sub_22C372FA4();
          v120(v119);
          goto LABEL_49;
        }

        v85 = sub_22C791CDC();
        v86(v85);
        sub_22C90914C();
        sub_22C791DA8();
        if (v87)
        {
          sub_22C36E2BC(v149, v38);
          if (v88)
          {
            goto LABEL_59;
          }
        }

        sub_22C9040CC();
        v89 = sub_22C9063CC();
        v90 = sub_22C90AADC();
        v91 = sub_22C370048(v90);
        v93 = *(v22 + 304);
        v92 = *(v22 + 312);
        v38 = *(v22 + 160);
        v153 = *(v22 + 168);
        v23 = *(v22 + 152);
        if (v91)
        {
          v38 = sub_22C36D240();
          *v38 = 0;
          _os_log_impl(&dword_22C366000, v89, v90, "RequestedProperty had no property value", v38, 2u);
          sub_22C3699EC();
        }

        v94 = sub_22C371510();
        v92(v94);
        v93(v153, v23);
        v43 = v156;
      }

      else
      {

LABEL_40:
        sub_22C9040CC();
        v103 = sub_22C9063CC();
        v104 = sub_22C90AADC();
        sub_22C36D08C(v104);
        v105 = *(v22 + 312);
        v154 = *(v22 + 304);
        sub_22C792088();
        if (v106)
        {
          v107 = sub_22C36D240();
          sub_22C7918E4(v107);
          sub_22C791F54(&dword_22C366000, v103, v108, "RequestedProperty had no name field");
          sub_22C36C30C();
        }

        v109 = sub_22C371510();
        v105(v109);
LABEL_43:
        v110 = sub_22C36CC9C();
        v154(v110);
        v43 = v156;
      }
    }

    else
    {
      sub_22C791CFC();
      v95();
      sub_22C9040CC();
      v96 = sub_22C9063CC();
      v97 = sub_22C90AADC();
      v98 = sub_22C36D08C(v97);
      v99 = *(v22 + 312);
      if (v98)
      {
        v100 = sub_22C36D240();
        sub_22C7918E4(v100);
        sub_22C791F54(&dword_22C366000, v96, v101, "RequestedProperty was not an entity");
        sub_22C36C30C();
      }

      v102 = sub_22C36CA88();
      v99(v102);
      v43 = v156;
    }
  }

  sub_22C796AB8();
  v157 = v121;

  v122 = sub_22C36ECB4();
  v123(v122);
  sub_22C791D70();
  v139 = v125;
  v140 = v124;
  v141 = *(v22 + 144);
  v142 = *(v22 + 120);
  v143 = *(v22 + 112);
  v145 = *(v22 + 104);
  v147 = *(v22 + 96);
  v150 = *(v22 + 88);
  v155 = *(v22 + 80);
  v160 = *(v22 + 56);

  sub_22C36D5E0();
  sub_22C381608();

  return v128(v126, v127, v128, v129, v130, v131, v132, v133, v139, v140, v141, v142, v143, v145, v147, v150, v155, v157, v160, a20, a21, a22);
}

uint64_t sub_22C78C0BC()
{
  v1 = v0[51];
  v11 = v0[38];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[11];
  v8 = v0[8];

  v1(v7, v8);
  v11(v2, v3);
  (*(v5 + 8))(v4, v6);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C78C284()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C90919C();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v1[7] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v6);
  v1[8] = sub_22C36D0D4();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v7);
  v1[11] = sub_22C3699D4();
  v8 = type metadata accessor for PayloadFormatter(0);
  v1[12] = v8;
  sub_22C369914(v8);
  v1[13] = sub_22C3699D4();
  v9 = sub_22C9063DC();
  v1[14] = v9;
  sub_22C3699B8(v9);
  v1[15] = v10;
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C78C7E0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C78CC00()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 184) = v5;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C78D020(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C9063DC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BFFD0, &qword_22C925C78);
  v3[9] = swift_task_alloc();
  v5 = sub_22C90929C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_22C9093BC();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v3[17] = swift_task_alloc();
  v7 = sub_22C90941C();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C78D28C, 0, 0);
}

uint64_t sub_22C78D28C()
{
  v77 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[3];
  v71 = v0[18];
  v72 = v0[4];
  v74 = v0[17];
  v4 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  v70 = swift_allocBox();
  v6 = v5;
  v7 = *(v4 + 48);
  sub_22C9094EC();
  v8 = swift_allocBox();
  sub_22C36BBA8();
  (*(v9 + 104))();
  *v6 = v8;
  v10 = *MEMORY[0x277D72D50];
  sub_22C90952C();
  sub_22C36BBA8();
  (*(v11 + 104))(v6, v10);
  sub_22C3A5908(&qword_27D9BF238, &unk_22C925C80);
  v12 = sub_22C90969C();
  sub_22C369824();
  v14 = v13;
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22C90F800;
  *(v16 + v15) = v3;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277D72E68], v12);
  *(v6 + v7) = v16;
  *v2 = v70;
  (*(v1 + 104))(v2, *MEMORY[0x277D72AB8], v71);
  v17 = type metadata accessor for PayloadFormatter(0);
  v18 = *(v17 + 28);

  sub_22C5F52EC((v72 + v18), v74);
  v19 = v0[19];
  v20 = v0[18];
  v0[22] = *(v19 + 8);
  v0[23] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21 = sub_22C37EF10();
  v22(v21);
  v23 = sub_22C36CCF8();
  sub_22C36D0A8(v23, v24, v20);
  if (v25)
  {
    sub_22C376B84(v0[17], &qword_27D9BC028, &unk_22C9134B0);
    sub_22C9040CC();
    v26 = sub_22C372FA4();
    v27(v26);

    v28 = sub_22C9063CC();
    v29 = sub_22C90AABC();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[15];
    v32 = v0[8];
    v33 = v0[6];
    if (v30)
    {
      v75 = v0[5];
      v34 = sub_22C383050();
      v76 = swift_slowAlloc();
      *v34 = 136315394;
      sub_22C90430C();
      v35 = sub_22C37EF94();
      v36 = MEMORY[0x2318B7AD0](v35);
      v73 = v32;
      v38 = sub_22C36F9F4(v36, v37, &v76);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      sub_22C36A32C();
      sub_22C7914C4(v39, v40, MEMORY[0x277D72A80]);
      sub_22C6B01B0();
      sub_22C909F4C();
      v41 = sub_22C7918C4();
      v42(v41);
      v43 = sub_22C459028();
      sub_22C36F9F4(v43, v44, v45);
      sub_22C37BC08();

      *(v34 + 14) = v31;
      _os_log_impl(&dword_22C366000, v28, v29, "Entity did not support conversion to any of %s: %s", v34, 0x16u);
      swift_arrayDestroy();
      sub_22C37E124();
      sub_22C370510();

      v46 = (*(v33 + 8))(v73, v75);
    }

    else
    {

      v54 = sub_22C7918C4();
      v55(v54);
      v56 = sub_22C5CAA58();
      v46 = v58(v56, v57);
    }

    sub_22C791E4C(v46, v47, v48, v49, v50, v51, v52, v53);

    sub_22C36D5E0();

    return v59(0);
  }

  else
  {
    v61 = v0[4];
    (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    v62 = (v61 + *(v17 + 32));
    v63 = v62[3];
    v64 = v62[4];
    sub_22C374168(v62, v63);
    swift_task_alloc();
    sub_22C36CC90();
    v0[24] = v65;
    *v65 = v66;
    v65[1] = sub_22C78D828;
    v67 = v0[21];
    v68 = v0[16];
    v69 = v0[2];

    return MEMORY[0x282178330](v68, v69, v67, v63, v64);
  }
}