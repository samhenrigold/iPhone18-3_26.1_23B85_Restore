void sub_1B6195650(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B61B1890();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1B61956BC(v5);
  *a1 = v2;
}

void sub_1B61956BC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B6221EF4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B6221534();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B6195878(v7, v8, a1, v4);
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
    sub_1B61957B0(0, v2, 1, a1);
  }
}

uint64_t sub_1B61957B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        result = sub_1B6221F24();
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

void sub_1B6195878(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
          v14 = sub_1B6221F24();
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

          else if ((v14 ^ sub_1B6221F24()))
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
                if (v37 || (sub_1B6221F24() & 1) == 0)
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
        sub_1B609B43C();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1B609B43C();
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
          sub_1B6195EAC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
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

  sub_1B6195D80(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1B6195D80(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B61B1734();
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
    sub_1B6195EAC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1B6195EAC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B609D3C8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1B6221F24() & 1) == 0)
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

  sub_1B609D3C8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1B6221F24() & 1) != 0)
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

double static NextHourForecastUnavailableDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  qword_1EB926C48 = a1;
  off_1EB926C50 = a2;

  return result;
}

uint64_t (*static NextHourForecastUnavailableDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B61960F0@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB926C50;
  *a1 = qword_1EB926C48;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B6196140(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB926C48 = v2;
  off_1EB926C50 = v1;
  sub_1B6220784();

  return result;
}

uint64_t *sub_1B61961A4()
{
  if (qword_1EDAB1060 != -1)
  {
    OUTLINED_FUNCTION_0_77(&qword_1EDAB1060);
  }

  return &qword_1EDAB1068;
}

double static NextHourForecastUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EDAB1060 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_77(&qword_1EDAB1060);
  }

  OUTLINED_FUNCTION_3_5(a1);
  qword_1EDAB1068 = v3;
  qword_1EDAB1070 = a2;

  return result;
}

uint64_t (*static NextHourForecastUnavailableDescriptor.version.modify())(uint64_t a1)
{
  if (qword_1EDAB1060 != -1)
  {
    OUTLINED_FUNCTION_0_77(&qword_1EDAB1060);
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B61962C4@<D0>(void *a1@<X8>)
{
  sub_1B61961A4();
  swift_beginAccess();
  v2 = qword_1EDAB1070;
  *a1 = qword_1EDAB1068;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B6196318(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B61961A4();
  swift_beginAccess();
  qword_1EDAB1068 = v2;
  qword_1EDAB1070 = v1;

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextHourForecastUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

id static Locale.preferredUserUnit.getter()
{
  v0 = sub_1B621DA24();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621D9D4();
  v6 = Locale.temperatureUnit.getter();
  if (!v6)
  {
    v7 = sub_1B621D984();
    v8 = objc_opt_self();
    if (v7)
    {
      v9 = [v8 celsius];
    }

    else
    {
      v9 = [v8 fahrenheit];
    }

    v6 = v9;
  }

  v10 = v6;
  (*(v2 + 8))(v5, v0);
  return v10;
}

id Locale.temperatureUnit.getter()
{
  v0 = sub_1B621D9A4();
  v1 = [v0 objectForKey_];

  if (v1)
  {
    sub_1B6221A84();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_1B602724C(v20, &qword_1EB927670, &qword_1B62273A0);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_1EB9244C8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B6220B34();
    __swift_project_value_buffer(v6, qword_1EB942AE0);
    v7 = sub_1B6220B14();
    v8 = sub_1B62217E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B6020000, v7, v8, "Failed to read user's temperature unit from the locale", v9, 2u);
      MEMORY[0x1B8C91C90](v9, -1, -1);
    }

    return 0;
  }

  v2 = sub_1B62211D4();
  if (v16 != v2 || v17 != v3)
  {
    v5 = OUTLINED_FUNCTION_1_48(v2);

    if (v5)
    {
      goto LABEL_20;
    }

    v12 = sub_1B62211D4();
    if (v16 == v12 && v17 == v13)
    {

LABEL_29:
      v11 = [objc_opt_self() celsius];
      return v11;
    }

    v15 = OUTLINED_FUNCTION_1_48(v12);

    if (v15)
    {
      goto LABEL_29;
    }

    return 0;
  }

LABEL_20:

  v11 = [objc_opt_self() fahrenheit];
  return v11;
}

uint64_t Severity.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    Severity.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 5)
    {
      v9 = 4;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::Severity_optional __swiftcall Severity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Severity.rawValue.getter()
{
  result = 0x454D4552545845;
  switch(*v0)
  {
    case 1:
      result = 0x455245564553;
      break;
    case 2:
      result = 0x4554415245444F4DLL;
      break;
    case 3:
      result = 0x524F4E494DLL;
      break;
    case 4:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B619694C()
{
  result = qword_1EB926C68;
  if (!qword_1EB926C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926C68);
  }

  return result;
}

uint64_t sub_1B61969C4@<X0>(uint64_t *a1@<X8>)
{
  result = Severity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Severity(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6196B60()
{
  result = qword_1EDAAF720;
  if (!qword_1EDAAF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF720);
  }

  return result;
}

void sub_1B6196BFC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B60264F8(v0);
  if (v2)
  {
    if (v1 == 0xD000000000000011 && v2 == 0x80000001B623C4C0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1B6221F24();
    }

    v5 = v4 & 1;
  }

  else
  {
    v5 = 0;
  }

  byte_1EDAAEA2D = v5;
}

void sub_1B6196CC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B60264F8(v0);
  if (v2)
  {
    if (v1 == 0xD000000000000023 && v2 == 0x80000001B623DE00)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1B6221F24();
    }

    v5 = v4 & 1;
  }

  else
  {
    v5 = 0;
  }

  byte_1EB926C76 = v5;
}

id sub_1B6196DB8()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB926C78 = result;
  return result;
}

id static NSBundle.weatherDaemon.getter(uint64_t a1)
{
  if (qword_1EB9244A8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_78(&qword_1EB9244A8);
  }

  OUTLINED_FUNCTION_2_5(a1);
  v1 = qword_1EB926C78;

  return v1;
}

void static NSBundle.weatherDaemon.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1EB9244A8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_78(&qword_1EB9244A8);
  }

  OUTLINED_FUNCTION_3_38(a1);
  v2 = qword_1EB926C78;
  qword_1EB926C78 = v1;
}

uint64_t (*static NSBundle.weatherDaemon.modify())(uint64_t a1)
{
  if (qword_1EB9244A8 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_1EB9244A8);
  }

  OUTLINED_FUNCTION_4_32();
  return j__swift_endAccess;
}

void static NSBundle.weatherInternalExtras.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1EDAAEA00 != -1)
  {
    a1 = OUTLINED_FUNCTION_1_49(&qword_1EDAAEA00);
  }

  OUTLINED_FUNCTION_3_38(a1);
  v2 = qword_1EDAAEA08;
  qword_1EDAAEA08 = v1;
}

uint64_t (*static NSBundle.weatherInternalExtras.modify())(uint64_t a1)
{
  if (qword_1EDAAEA00 != -1)
  {
    OUTLINED_FUNCTION_1_49(&qword_1EDAAEA00);
  }

  OUTLINED_FUNCTION_4_32();
  return j_j__swift_endAccess;
}

double NSBundle.internalExtrasAssembly.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1B62211B4();
  v4 = [v1 createObjectInstanceWithClassName_];

  if (!v4 || (sub_1B602370C(0, &qword_1EB926C80, 0x1E69E58C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926C88, &qword_1B6233858), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t HourTide.write(to:)(uint64_t a1)
{
  result = sub_1B621D774();
  if (!v1)
  {
    type metadata accessor for HourTide(0);
    OUTLINED_FUNCTION_66();
    return sub_1B6220854();
  }

  return result;
}

uint64_t static HourTide.read(from:)()
{
  v3 = OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  result = sub_1B621D764();
  if (!v1)
  {
    sub_1B6220844();
    (*(v5 + 32))(v0, v2, v3);
    result = type metadata accessor for HourTide(0);
    *(v0 + *(result + 20)) = v8;
  }

  return result;
}

void MarineForecast.write(to:)()
{
  v2 = OUTLINED_FUNCTION_12_18();
  type metadata accessor for MarineHourForecast(v2);
  OUTLINED_FUNCTION_3_39();
  sub_1B61983C8(v3, v1, &protocol conformance descriptor for MarineHourForecast);
  v4 = OUTLINED_FUNCTION_7_27(&qword_1EB926C98);
  OUTLINED_FUNCTION_2_45(v4);
  if (!v0)
  {
    type metadata accessor for MarineForecast(0);
    Metadata.write(to:)();
    OUTLINED_FUNCTION_10_21();
    sub_1B6220854();
    OUTLINED_FUNCTION_10_21();
    sub_1B6220854();
  }
}

uint64_t static MarineForecast.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for Metadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MarineHourForecast(0);
  OUTLINED_FUNCTION_3_39();
  sub_1B61983C8(v9, v3, &protocol conformance descriptor for MarineHourForecast);
  v10 = OUTLINED_FUNCTION_7_27(&qword_1EB926C98);
  result = OUTLINED_FUNCTION_13_19(v10);
  if (!v2)
  {
    v12 = result;
    static Metadata.read(from:)(a1, v8);
    OUTLINED_FUNCTION_9_25();
    v13 = v17[5];
    OUTLINED_FUNCTION_9_25();
    v14 = v17[1];
    *a2 = v12;
    v15 = type metadata accessor for MarineForecast(0);
    result = sub_1B603D8D8(v8, a2 + *(v15 + 20));
    v16 = (a2 + *(v15 + 24));
    *v16 = v13;
    v16[1] = v14;
  }

  return result;
}

uint64_t MarineHourForecast.write(to:)(uint64_t a1)
{
  result = sub_1B621D774();
  if (!v1)
  {
    type metadata accessor for MarineHourForecast(0);
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    return sub_1B6220854();
  }

  return result;
}

uint64_t Swell.write(to:)(uint64_t a1)
{
  result = sub_1B6220854();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_21();
    sub_1B6220854();
    OUTLINED_FUNCTION_10_21();
    return sub_1B6220854();
  }

  return result;
}

uint64_t static MarineHourForecast.read(from:)@<X0>(uint64_t a2@<X8>)
{
  v5 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  result = sub_1B621D764();
  if (!v2)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
    (*(v7 + 32))(a2, v3, v5);
    result = type metadata accessor for MarineHourForecast(0);
    v10 = (a2 + *(result + 20));
    *v10 = v13;
    v10[1] = v12;
    v10[2] = v11;
    *(a2 + *(result + 24)) = v13;
  }

  return result;
}

uint64_t static Swell.read(from:)@<X0>(void *a2@<X8>)
{
  result = sub_1B6220844();
  if (!v2)
  {
    sub_1B6220844();
    result = sub_1B6220844();
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v5;
  }

  return result;
}

uint64_t TideEvent.write(to:)(uint64_t a1)
{
  result = sub_1B621D774();
  if (!v1)
  {
    type metadata accessor for TideEvent(0);
    v3 = OUTLINED_FUNCTION_66();
    TideEvent.EventType.write(to:)(v3);
    OUTLINED_FUNCTION_66();
    return sub_1B6220854();
  }

  return result;
}

uint64_t static TideEvent.read(from:)()
{
  v4 = OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  result = sub_1B621D764();
  if (!v2)
  {
    v9 = static TideEvent.EventType.read(from:)(v1);
    sub_1B6220844();
    (*(v6 + 32))(v0, v3, v4);
    result = type metadata accessor for TideEvent(0);
    *(v0 + *(result + 20)) = v9 & 1;
    *(v0 + *(result + 24)) = v10;
  }

  return result;
}

uint64_t static TideEvent.EventType.read(from:)(uint64_t a1)
{
  result = sub_1B6220844();
  if (!v1)
  {
    if (v5 == 1)
    {
      return 0;
    }

    else if (v5 == 2)
    {
      return 1;
    }

    else
    {
      v3 = sub_1B6220694();
      sub_1B61983C8(&qword_1EB926798, MEMORY[0x1E69D64F0], MEMORY[0x1E69D64F8]);
      swift_allocError();
      (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69D64E8], v3);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B6197D84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = static TideEvent.EventType.read(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void TideEvents.write(to:)()
{
  v2 = OUTLINED_FUNCTION_12_18();
  type metadata accessor for TideEvent(v2);
  OUTLINED_FUNCTION_5_37();
  sub_1B61983C8(v3, v1, &protocol conformance descriptor for TideEvent);
  v4 = OUTLINED_FUNCTION_6_26(&qword_1EB926CA8);
  OUTLINED_FUNCTION_2_45(v4);
  if (!v0)
  {
    type metadata accessor for HourTide(0);
    sub_1B61983C8(&qword_1EB926CB0, type metadata accessor for HourTide, &protocol conformance descriptor for HourTide);
    OUTLINED_FUNCTION_4_33();
    v7 = sub_1B61983C8(v5, type metadata accessor for HourTide, v6);
    OUTLINED_FUNCTION_2_45(v7);
    type metadata accessor for TideEvents(0);
    Metadata.write(to:)();
    OUTLINED_FUNCTION_10_21();
    sub_1B6220854();
    OUTLINED_FUNCTION_10_21();
    sub_1B6220854();
  }
}

void static TideEvents.read(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for Metadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TideEvent(0);
  OUTLINED_FUNCTION_5_37();
  sub_1B61983C8(v9, v3, &protocol conformance descriptor for TideEvent);
  v10 = OUTLINED_FUNCTION_6_26(&qword_1EB926CA8);
  v11 = OUTLINED_FUNCTION_13_19(v10);
  if (!v2)
  {
    v12 = v11;
    type metadata accessor for HourTide(0);
    sub_1B61983C8(&qword_1EB926CB0, type metadata accessor for HourTide, &protocol conformance descriptor for HourTide);
    OUTLINED_FUNCTION_4_33();
    sub_1B61983C8(v13, type metadata accessor for HourTide, v14);
    v15 = sub_1B62214D4();
    static Metadata.read(from:)(a1, v8);
    OUTLINED_FUNCTION_9_25();
    v16 = v20[1];
    OUTLINED_FUNCTION_9_25();
    v17 = v20[0];
    *a2 = v12;
    a2[1] = v15;
    v18 = type metadata accessor for TideEvents(0);
    sub_1B603D8D8(v8, a2 + *(v18 + 24));
    v19 = (a2 + *(v18 + 28));
    *v19 = v16;
    v19[1] = v17;
  }
}

uint64_t WeatherAlerts.write(to:)(uint64_t a1)
{
  v3 = type metadata accessor for WeatherAlerts(0);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_11_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926CC0, &qword_1B6233878);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1B6198364(v1, v2);
  sub_1B61983C8(qword_1EDAB1840, type metadata accessor for WeatherAlerts, &protocol conformance descriptor for WeatherAlerts);
  sub_1B61983C8(&qword_1EDAAFB00, type metadata accessor for WeatherAlerts, &protocol conformance descriptor for WeatherAlerts);
  OUTLINED_FUNCTION_14_20();
  sub_1B62204C4();
  sub_1B62204B4();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1B6198364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherAlerts(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B61983C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static WeatherAlerts.read(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926CC0, &qword_1B6233878);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1B62206B4();
  sub_1B6198580(&qword_1EDAAFB70, MEMORY[0x1E69D6368]);
  sub_1B6198580(&qword_1EDAAFB68, MEMORY[0x1E69D6370]);
  result = sub_1B62206A4();
  if (!v1)
  {
    sub_1B62204D4();
    return (*(v4 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_1B6198580(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926CC0, &qword_1B6233878);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HourTide.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HourTide.date.setter(uint64_t a1)
{
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t HourTide.height.setter(double a1)
{
  result = type metadata accessor for HourTide(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

BOOL static HourTide.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B621D8A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HourTide(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1B61987CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B6198890(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1B61988C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61987CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61988EC(uint64_t a1)
{
  v2 = sub_1B6198AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6198928(uint64_t a1)
{
  v2 = sub_1B6198AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HourTide.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926CC8, &qword_1B6233B40);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6198AFC();
  sub_1B62220F4();
  v10[15] = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8, MEMORY[0x1E6969538]);
  sub_1B6221EC4();
  if (!v1)
  {
    type metadata accessor for HourTide(0);
    v10[14] = 1;
    sub_1B6221EA4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B6198AFC()
{
  result = qword_1EB926CD0;
  if (!qword_1EB926CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926CD0);
  }

  return result;
}

uint64_t HourTide.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v25 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926CD8, &qword_1B6233B48);
  OUTLINED_FUNCTION_2();
  v26 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for HourTide(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6198AFC();
  sub_1B62220D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v13;
  v14 = v25;
  v30 = 0;
  sub_1B609F140(&qword_1EDAB20F0, MEMORY[0x1E6969558]);
  v15 = v27;
  sub_1B6221DD4();
  v16 = v23;
  (*(v14 + 32))(v23, v7, v15);
  v29 = 1;
  sub_1B6221DB4();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_1_50();
  v20(v19);
  *(v16 + *(v10 + 20)) = v18;
  sub_1B6198E3C(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6198EA0(v16);
}

uint64_t sub_1B6198E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourTide(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6198EA0(uint64_t a1)
{
  v2 = type metadata accessor for HourTide(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for HourTide.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6199038()
{
  result = qword_1EB926CE0;
  if (!qword_1EB926CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926CE0);
  }

  return result;
}

unint64_t sub_1B6199090()
{
  result = qword_1EB926CE8;
  if (!qword_1EB926CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926CE8);
  }

  return result;
}

unint64_t sub_1B61990E8()
{
  result = qword_1EB926CF0;
  if (!qword_1EB926CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926CF0);
  }

  return result;
}

uint64_t Data.urlSafeBase64EncodedString.getter(uint64_t a1, uint64_t a2)
{
  sub_1B621D704();
  v2 = sub_1B602C004();
  v3 = MEMORY[0x1E69E6158];
  v11 = OUTLINED_FUNCTION_532(v2, v4, v5, v6, v7, v8, v9, v10, MEMORY[0x1E69E6158], v2, v2, v2, 45, 0xE100000000000000, 43);
  OUTLINED_FUNCTION_0_79(v11, v12);

  v21 = OUTLINED_FUNCTION_532(v13, v14, v15, v16, v17, v18, v19, v20, v35, v36, v2, v2, 95, 0xE100000000000000, 47);
  OUTLINED_FUNCTION_0_79(v21, v22);

  v31 = OUTLINED_FUNCTION_532(v23, v24, v25, v26, v27, v28, v29, v30, v3, v2, v2, v2, 0, 0xE000000000000000, 61);
  v33 = OUTLINED_FUNCTION_0_79(v31, v32);

  return v33;
}

WeatherDaemon::MetadataEntity::MetadataType_optional __swiftcall MetadataEntity.MetadataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MetadataEntity.MetadataType.rawValue.getter()
{
  OUTLINED_FUNCTION_23_14();
  v2 = 0x796C696164;
  if (!v3)
  {
    v2 = 0x6369646F69726570;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B6199320@<X0>(uint64_t *a1@<X8>)
{
  result = MetadataEntity.MetadataType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1B6199394(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v139 = a7;
  v142 = a6;
  v136 = a3;
  v137 = a4;
  v134 = a1;
  v135 = a2;
  v125 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  v10 = OUTLINED_FUNCTION_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v124 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  v13 = OUTLINED_FUNCTION_0(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10();
  v133 = v14 - v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40_0();
  v132 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  v19 = OUTLINED_FUNCTION_0(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10();
  v129 = v20 - v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40_0();
  v128 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v25 = OUTLINED_FUNCTION_0(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v124 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926CF8, &qword_1B6233D00);
  v33 = OUTLINED_FUNCTION_0(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v36 = OUTLINED_FUNCTION_0(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37);
  v130 = *a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  v45 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v38);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v38);
  v52 = v45;
  swift_allocObject();

  v53 = sub_1B6220D74();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D00, &qword_1B6233D08);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  v58 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D08, &qword_1B6233D10);
  OUTLINED_FUNCTION_249();
  swift_allocObject();

  v61 = sub_1B6220D74();

  sub_1B621D8E4();
  v62 = *MEMORY[0x1E69D61F8];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_9();
  v65 = *(v64 + 104);
  v65(v31, v62, v63);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v63);
  sub_1B621D8E4();
  v65(v28, v62, v63);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v72 = OUTLINED_FUNCTION_2_4();
  v131 = OUTLINED_FUNCTION_25_10(v72, v73, v74);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v63);
  OUTLINED_FUNCTION_3_10();
  v78 = v63;
  v79 = v142;
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v78);
  swift_allocObject();
  v83 = OUTLINED_FUNCTION_2_4();
  v127 = OUTLINED_FUNCTION_25_10(v83, v84, v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v93 = OUTLINED_FUNCTION_2_4();
  v96 = OUTLINED_FUNCTION_25_10(v93, v94, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  OUTLINED_FUNCTION_249();
  swift_allocObject();

  v133 = OUTLINED_FUNCTION_25_10(0, 0, 0);
  v140 = v134;
  v141 = v135;
  sub_1B6220D94();

  v140 = v136;
  v141 = v137;
  sub_1B6220D94();
  v137 = v53;

  LOBYTE(v140) = v130;
  sub_1B6220D94();

  sub_1B62206D4();
  type metadata accessor for Metadata(0);
  sub_1B6093DE4(&qword_1EDAB04D0, &protocol conformance descriptor for Metadata);
  sub_1B6093DE4(&qword_1EDAB04C8, &protocol conformance descriptor for Metadata);
  v105 = v138;
  v106 = sub_1B62206C4();
  if (v105)
  {
    v108 = v139;

    sub_1B621D8F4();
    OUTLINED_FUNCTION_9();
    (*(v109 + 8))(v108);
    sub_1B60CE33C(v79);
  }

  else
  {
    v138 = v52;
    v140 = v106;
    v141 = v107;
    sub_1B6220D94();

    v110 = sub_1B621D8F4();
    v111 = *(v110 - 8);
    v112 = v139;
    (*(v111 + 16))(v126, v139, v110);
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v110);
    v116 = v127;
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B6093DE4(&qword_1EDAB1008, &protocol conformance descriptor for Metadata);
      v117 = sub_1B621D2E4();
      v119 = v118;

      v140 = v117;
      v141 = v119;
      v120 = v133;
      sub_1B6220D94();
      (*(v111 + 8))(v112, v110);
      sub_1B60CE33C(v142);
    }

    else
    {
      (*(v111 + 8))(v112, v110);
      sub_1B60CE33C(v142);
      v120 = v133;
    }

    v121 = v125;
    v122 = v137;
    *v125 = v138;
    v121[1] = v122;
    v123 = v131;
    v121[2] = v61;
    v121[3] = v123;
    v121[4] = v116;
    v121[5] = v96;
    v121[6] = v120;
  }
}

uint64_t sub_1B6199C50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73657269707865 && a2 == 0xE700000000000000;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x80000001B623DE30 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1B6221F24();

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

unint64_t sub_1B6199E84(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4974736575716572;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x6465696669646F6DLL;
      break;
    case 4:
      result = 0x73657269707865;
      break;
    case 5:
      result = 0x6C65646F6DLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B6199F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6199C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6199F70(uint64_t a1)
{
  v2 = sub_1B619A354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6199FAC(uint64_t a1)
{
  v2 = sub_1B619A354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetadataEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D10, &qword_1B6233D18);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v61 = v1[2];
  v62 = v9;
  v12 = v1[5];
  v59 = v1[4];
  v60 = v11;
  v57 = v1[6];
  v58 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1B619A354();

  v14 = v3;
  sub_1B62220F4();
  v64 = v10;
  v63 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_0_2();
  sub_1B602CAF4(v16, v17, &unk_1B622F500, v18);
  OUTLINED_FUNCTION_22_10(&v64, &v63, v3, v15);
  if (v13)
  {
  }

  else
  {
    v19 = v61;

    v64 = v62;
    v63 = 1;
    v20 = OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_22_10(v20, v21, v22, v15);
    v64 = v19;
    v63 = 2;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D08, &qword_1B6233D10);
    OUTLINED_FUNCTION_0_2();
    sub_1B602CAF4(v24, v25, &qword_1B6233D10, v26);
    v27 = OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_22_10(v27, v28, v29, v23);
    v64 = v60;
    v63 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
    OUTLINED_FUNCTION_0_2();
    sub_1B602CAF4(v30, v31, &unk_1B622F4F0, v32);
    OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_24_11();
    OUTLINED_FUNCTION_22_10(v33, v34, v35, v36);
    v64 = v59;
    v63 = 4;
    OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_24_11();
    OUTLINED_FUNCTION_22_10(v37, v38, v39, v40);
    v64 = v58;
    v63 = 5;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
    OUTLINED_FUNCTION_0_2();
    sub_1B602CAF4(v42, v43, &unk_1B622F510, v44);
    v45 = OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_22_10(v45, v46, v47, v41);
    v64 = v57;
    v63 = 6;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
    OUTLINED_FUNCTION_0_2();
    sub_1B602CAF4(v49, v50, &qword_1B622F520, v51);
    v52 = OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_22_10(v52, v53, v54, v48);
  }

  return (*(v5 + 8))(v8, v14);
}

unint64_t sub_1B619A354()
{
  result = qword_1EB926D18;
  if (!qword_1EB926D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D18);
  }

  return result;
}

double MetadataEntity.init(from:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v117 = a1;
  v103 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D28, &qword_1B6233D20);
  OUTLINED_FUNCTION_2();
  v104 = v3;
  v105 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v109 = &v103 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  v6 = OUTLINED_FUNCTION_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10();
  v108 = v7 - v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40_0();
  v107 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10();
  v110 = v13 - v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40_0();
  v106 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v18 = OUTLINED_FUNCTION_0(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926CF8, &qword_1B6233D00);
  v26 = OUTLINED_FUNCTION_0(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v29 = OUTLINED_FUNCTION_0(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_24_11();
  v116 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v31);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v31);
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_24_11();
  v113 = sub_1B6220D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D00, &qword_1B6233D08);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D08, &qword_1B6233D10);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  v112 = sub_1B6220D74();
  sub_1B621D8E4();
  v52 = *MEMORY[0x1E69D61F8];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_9();
  v55 = *(v54 + 104);
  v55(v24, v52, v53);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v53);
  sub_1B621D8E4();
  v55(v21, v52, v53);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v115 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v53);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v53);
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v114 = sub_1B6220D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v110 = sub_1B6220D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  OUTLINED_FUNCTION_5_3();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v108 = sub_1B6220D74();
  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  sub_1B619A354();
  v84 = v109;
  v85 = v111;
  sub_1B62220D4();
  if (!v85)
  {
    v118 = 0;
    OUTLINED_FUNCTION_1_32(&qword_1EB926108, &qword_1EB9260A0, &unk_1B622F500);
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_20_14(v86, v87);

    v116 = v119;
    v118 = 1;
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_20_14(v88, v89);

    v91 = v119;
    v118 = 2;
    OUTLINED_FUNCTION_1_32(&qword_1EB926D30, &qword_1EB926D08, &qword_1B6233D10);
    OUTLINED_FUNCTION_15_20();
    sub_1B6221DD4();

    v92 = v119;
    v118 = 3;
    OUTLINED_FUNCTION_1_32(&qword_1EB926110, &qword_1EB9260B0, &unk_1B622F4F0);
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_21_12(v93, v94);

    v115 = v119;
    v118 = 4;
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_21_12(v95, v96);

    v114 = v119;
    v118 = 5;
    OUTLINED_FUNCTION_1_32(&qword_1EB926118, &qword_1EB9260C0, &unk_1B622F510);
    OUTLINED_FUNCTION_15_20();
    sub_1B6221DD4();
    v97 = v104;

    v98 = v119;
    v118 = 6;
    OUTLINED_FUNCTION_1_32(qword_1EB926120, &qword_1EB9260D0, &qword_1B622F520);
    OUTLINED_FUNCTION_15_20();
    v99 = v105;
    sub_1B6221DD4();
    (*(v97 + 8))(v84, v99);

    v100 = v119;
    v101 = v103;
    v102 = v115;
    *v103 = v116;
    v101[1] = v91;
    v101[2] = v92;
    v101[3] = v102;
    v101[4] = v114;
    v101[5] = v98;
    v101[6] = v100;
  }

  __swift_destroy_boxed_opaque_existential_1(v117);

  return result;
}

uint64_t sub_1B619ACD8(uint64_t a1)
{
  v2 = sub_1B6065274();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B619AD24(uint64_t a1)
{
  v2 = sub_1B6065274();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B619AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6065274();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B619AE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6065274();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B619AE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6065274();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B619AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6065274();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t static MetadataEntity.MetadataType.dataType.setter(uint64_t a1)
{
  if (qword_1EDAB15F8 != -1)
  {
    OUTLINED_FUNCTION_6_27(&qword_1EDAB15F8);
  }

  v2 = sub_1B6220DF4();
  v3 = __swift_project_value_buffer(v2, qword_1EDAB0728);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static MetadataEntity.MetadataType.dataType.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDAB15F8 != -1)
  {
    OUTLINED_FUNCTION_6_27(&qword_1EDAB15F8);
  }

  v1 = sub_1B6220DF4();
  __swift_project_value_buffer(v1, qword_1EDAB0728);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t MetadataEntity.MetadataType.valueType.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_23_14();
  v6 = 0x796C696164;
  if (!v7)
  {
    v6 = 0x6369646F69726570;
    v5 = 0xE800000000000000;
  }

  v7 = v2 == 0;
  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (!v7)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
  v9 = *MEMORY[0x1E69D62C8];
  sub_1B6220EF4();
  OUTLINED_FUNCTION_9();
  v12 = *(v11 + 104);

  return v12(a1, v9, v10);
}

unint64_t sub_1B619B11C()
{
  result = qword_1EB926D38;
  if (!qword_1EB926D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D38);
  }

  return result;
}

unint64_t sub_1B619B284(uint64_t a1)
{
  result = sub_1B6065274();
  *(a1 + 8) = result;
  return result;
}

void sub_1B619B360()
{
  sub_1B60656C4();

  JUMPOUT(0x1B8C8FD80);
}

uint64_t sub_1B619B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B60656C4();

  return MEMORY[0x1EEE438C8](a1, a2, a3, v6);
}

_BYTE *storeEnumTagSinglePayload for MetadataEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B619B4F0()
{
  result = qword_1EB926D50;
  if (!qword_1EB926D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D50);
  }

  return result;
}

unint64_t sub_1B619B548()
{
  result = qword_1EB926D58;
  if (!qword_1EB926D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D58);
  }

  return result;
}

unint64_t sub_1B619B5A0()
{
  result = qword_1EB926D60;
  if (!qword_1EB926D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D60);
  }

  return result;
}

unint64_t sub_1B619B5F4()
{
  result = qword_1EB926D68;
  if (!qword_1EB926D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D68);
  }

  return result;
}

uint64_t TrendDeviation.init(forecastStart:maxTemperatureChange:minTemperatureChange:dayPrecipitationChange:nightPrecipitationChange:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = sub_1B621D8F4();
  __swift_storeEnumTagSinglePayload(a6, 1, 1, v12);
  v13 = type metadata accessor for TrendDeviation(0);
  v14 = v13[5];
  *(a6 + v14) = 4;
  v15 = v13[6];
  *(a6 + v15) = 4;
  v16 = v13[7];
  *(a6 + v16) = 4;
  v17 = v13[8];
  *(a6 + v17) = 4;
  result = sub_1B603D764(a1, a6);
  *(a6 + v14) = v8;
  *(a6 + v15) = v9;
  *(a6 + v16) = v10;
  *(a6 + v17) = v11;
  return result;
}

uint64_t TrendDeviation.maxTemperatureChange.setter()
{
  result = OUTLINED_FUNCTION_5_38();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t TrendDeviation.minTemperatureChange.setter()
{
  result = OUTLINED_FUNCTION_5_38();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t TrendDeviation.dayPrecipitationChange.setter()
{
  result = OUTLINED_FUNCTION_5_38();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t TrendDeviation.nightPrecipitationChange.setter()
{
  result = OUTLINED_FUNCTION_5_38();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t TrendDeviation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D70, &qword_1B6234238);
  OUTLINED_FUNCTION_2();
  v30 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B619BC14();
  sub_1B62220D4();
  if (!v2)
  {
    v13 = sub_1B621D8F4();
    v34[2] = 0;
    sub_1B609F140(&qword_1EDAB20F0, MEMORY[0x1E6969558]);
    v29 = v13;
    sub_1B6221D24();
    v34[0] = 1;
    v14 = sub_1B619BC68();
    v15 = OUTLINED_FUNCTION_0_80(v14, v34);
    v28 = v34[1];
    v33[0] = 2;
    v16 = OUTLINED_FUNCTION_0_80(v15, v33);
    v27 = v33[1];
    v32[0] = 3;
    v17 = OUTLINED_FUNCTION_0_80(v16, v32);
    v26 = v32[1];
    v25 = v7;
    v31[0] = 4;
    OUTLINED_FUNCTION_0_80(v17, v31);
    (*(v30 + 8))(v12, v8);
    LOBYTE(v13) = v31[9];
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v29);
    v18 = type metadata accessor for TrendDeviation(0);
    v19 = v18[5];
    *(a2 + v19) = 4;
    v20 = v18[6];
    *(a2 + v20) = 4;
    v21 = v18[7];
    *(a2 + v21) = 4;
    v22 = v18[8];
    *(a2 + v22) = 4;
    sub_1B603D764(v25, a2);
    v23 = v27;
    *(a2 + v19) = v28;
    *(a2 + v20) = v23;
    *(a2 + v21) = v26;
    *(a2 + v22) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B619BC14()
{
  result = qword_1EDAB01E8;
  if (!qword_1EDAB01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB01E8);
  }

  return result;
}

unint64_t sub_1B619BC68()
{
  result = qword_1EDAB0180;
  if (!qword_1EDAB0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0180);
  }

  return result;
}

uint64_t sub_1B619BCBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001B623F030 == a2;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001B623F050 == a2;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001B623F070 == a2;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x80000001B623F090 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B6221F24();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1B619BE6C(char a1)
{
  result = 0x7473616365726F66;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B619BF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B619BCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B619BF54(uint64_t a1)
{
  v2 = sub_1B619BC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B619BF90(uint64_t a1)
{
  v2 = sub_1B619BC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrendDeviation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D78, &qword_1B6234240);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B619BC14();
  sub_1B62220F4();
  v24[1] = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8, MEMORY[0x1E6969538]);
  sub_1B6221E74();
  if (!v2)
  {
    v11 = type metadata accessor for TrendDeviation(0);
    v24[0] = *(v3 + v11[5]);
    v23 = 1;
    sub_1B619C204();
    OUTLINED_FUNCTION_1_51(v24, &v23, v12, &type metadata for ChangeDirection);
    v22 = *(v3 + v11[6]);
    v21 = 2;
    OUTLINED_FUNCTION_1_51(&v22, &v21, v13, &type metadata for ChangeDirection);
    v20 = *(v3 + v11[7]);
    v19 = 3;
    OUTLINED_FUNCTION_1_51(&v20, &v19, v14, &type metadata for ChangeDirection);
    v18 = *(v3 + v11[8]);
    HIBYTE(v17) = 4;
    OUTLINED_FUNCTION_1_51(&v18, &v17 + 7, v15, &type metadata for ChangeDirection);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B619C204()
{
  result = qword_1EDAB0190;
  if (!qword_1EDAB0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0190);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrendDeviation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B619C3A8()
{
  result = qword_1EB926D80;
  if (!qword_1EB926D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D80);
  }

  return result;
}

unint64_t sub_1B619C400()
{
  result = qword_1EDAB01D8;
  if (!qword_1EDAB01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB01D8);
  }

  return result;
}

unint64_t sub_1B619C458()
{
  result = qword_1EDAB01E0;
  if (!qword_1EDAB01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB01E0);
  }

  return result;
}

WeatherDaemon::Units_optional __swiftcall Units.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

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

uint64_t Units.rawValue.getter()
{
  if (*v0)
  {
    return 101;
  }

  else
  {
    return 109;
  }
}

unint64_t sub_1B619C53C()
{
  result = qword_1EB926D88;
  if (!qword_1EB926D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D88);
  }

  return result;
}

uint64_t sub_1B619C5B4@<X0>(uint64_t *a1@<X8>)
{
  result = Units.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Units(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B619C75C()
{
  result = qword_1EB926D90;
  if (!qword_1EB926D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926D90);
  }

  return result;
}

uint64_t sub_1B619C83C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B619C90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B619C83C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B619C934(uint64_t a1)
{
  v2 = sub_1B619CB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B619C970(uint64_t a1)
{
  v2 = sub_1B619CB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Coordinate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926D98, &qword_1B6234540);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B619CB0C();
  sub_1B62220F4();
  v10[15] = 0;
  sub_1B6221EA4();
  if (!v1)
  {
    v10[14] = 1;
    sub_1B6221EA4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B619CB0C()
{
  result = qword_1EB926DA0;
  if (!qword_1EB926DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926DA0);
  }

  return result;
}

uint64_t Coordinate.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926DA8, &qword_1B6234548);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B619CB0C();
  sub_1B62220D4();
  if (!v2)
  {
    v18 = 0;
    sub_1B6221DB4();
    v12 = v11;
    v17 = 1;
    sub_1B6221DB4();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    *(a2 + 1) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Coordinate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B619CE50()
{
  result = qword_1EB926DB0;
  if (!qword_1EB926DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926DB0);
  }

  return result;
}

unint64_t sub_1B619CEA8()
{
  result = qword_1EB926DB8;
  if (!qword_1EB926DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926DB8);
  }

  return result;
}

unint64_t sub_1B619CF00()
{
  result = qword_1EB926DC0;
  if (!qword_1EB926DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926DC0);
  }

  return result;
}

void *static BakedSummaryStrings.template(for:)(uint64_t a1)
{
  v2 = sub_1B6221F04();
  v4 = v3;
  if (qword_1EB9244A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EB926C78;
  sub_1B62211B4();
  v6 = OUTLINED_FUNCTION_2_46();
  v7 = OUTLINED_FUNCTION_0_81();

  v8 = sub_1B62211D4();
  v10 = v9;

  v11 = v2 == v8 && v4 == v10;
  if (!v11 && (OUTLINED_FUNCTION_1_52() & 1) == 0)
  {

    return v8;
  }

  v12 = qword_1EB926C78;
  sub_1B62211B4();
  v13 = OUTLINED_FUNCTION_2_46();
  v14 = OUTLINED_FUNCTION_0_81();

  v8 = sub_1B62211D4();
  v16 = v15;

  if (v2 == v8 && v4 == v16)
  {

LABEL_15:

    return 0;
  }

  v18 = OUTLINED_FUNCTION_1_52();

  if (v18)
  {
    goto LABEL_15;
  }

  return v8;
}

_BYTE *storeEnumTagSinglePayload for BakedSummaryStrings(_BYTE *result, int a2, int a3)
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

uint64_t static AvailabilityProxyRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB926DD0 = a1;
  return result;
}

uint64_t sub_1B619D33C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB926DD0;
  return result;
}

uint64_t sub_1B619D388(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB926DD0 = v1;
  return result;
}

id AvailabilityProxyRequest.init(location:options:)()
{
  OUTLINED_FUNCTION_1_53();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC13WeatherDaemon24AvailabilityProxyRequest_location];
  *v5 = v3;
  *(v5 + 1) = v2;
  sub_1B60E4560(v0, &v1[OBJC_IVAR____TtC13WeatherDaemon24AvailabilityProxyRequest_options]);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1B60E45C4(v0);
  return v6;
}

Swift::Void __swiftcall AvailabilityProxyRequest.encode(with:)(NSCoder with)
{
  v2 = v1 + OBJC_IVAR____TtC13WeatherDaemon24AvailabilityProxyRequest_location;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = sub_1B62211B4();
  v5 = OUTLINED_FUNCTION_0_82();
  [v5 v6];

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v8 = sub_1B62211B4();
  v9 = OUTLINED_FUNCTION_0_82();
  [v9 v10];

  sub_1B621D304();
  swift_allocObject();
  sub_1B621D2F4();
  type metadata accessor for WeatherDataRequestOptions(0);
  sub_1B619DAA8(&qword_1EB926DE0, &protocol conformance descriptor for WeatherDataRequestOptions);
  v11 = sub_1B621D2E4();
  v13 = v12;

  v14 = sub_1B621D6F4();
  v15 = sub_1B62211B4();
  v16 = OUTLINED_FUNCTION_0_82();
  [v16 v17];

  sub_1B60362A8(v11, v13);
}

id AvailabilityProxyRequest.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926DE8, &unk_1B6234780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for WeatherDataRequestOptions(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B602370C(0, &qword_1EDAAE9A0, 0x1E696AD98);
  v11 = sub_1B6221994();
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = sub_1B6221994();
  if (!v13)
  {

LABEL_7:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v13;
  [v12 doubleValue];
  v16 = v15;
  [v14 doubleValue];
  v17 = &v1[OBJC_IVAR____TtC13WeatherDaemon24AvailabilityProxyRequest_location];
  *v17 = v16;
  *(v17 + 1) = v18;
  sub_1B602370C(0, &qword_1EB927120, 0x1E695DEF0);
  v19 = sub_1B6221994();
  if (!v19)
  {

    goto LABEL_7;
  }

  v20 = v19;
  v26 = ObjectType;
  v21 = sub_1B621D714();
  v23 = v22;

  sub_1B621D2D4();
  swift_allocObject();
  sub_1B621D2C4();
  sub_1B619DAA8(&unk_1EB926DF0, &protocol conformance descriptor for WeatherDataRequestOptions);
  v27 = v21;
  v28 = v23;
  sub_1B621D2B4();

  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1B619DB54(v7, v10);
  sub_1B60E4560(v10, v2 + OBJC_IVAR____TtC13WeatherDaemon24AvailabilityProxyRequest_options);
  v29.receiver = v2;
  v29.super_class = v26;
  v25 = objc_msgSendSuper2(&v29, sel_init);

  sub_1B60362A8(v27, v28);
  sub_1B60E45C4(v10);
  return v25;
}

uint64_t sub_1B619DAA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherDataRequestOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B619DAEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926DE8, &unk_1B6234780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B619DB54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataRequestOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id AvailabilityProxyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AvailabilityProxyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AvailabilityProxyRequest(uint64_t a1)
{
  result = qword_1EB926E60;
  if (!qword_1EB926E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B619DCF0(uint64_t a1)
{
  result = type metadata accessor for WeatherDataRequestOptions(319);
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

uint64_t sub_1B619DDCC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1B619DE20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t GEOMapItem.wd_weatherDisplayName.getter(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B619DFA8(v1, a1);
  v4 = [v2 addressObject];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 weatherDisplayName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B62211D4();

      OUTLINED_FUNCTION_0_83();
      if (v9)
      {

        return v8;
      }
    }

    v10 = [v5 weatherLocationName];
    if (!v10)
    {

      return v3;
    }

    v11 = v10;
    v8 = sub_1B62211D4();

    OUTLINED_FUNCTION_0_83();
    if (!v12)
    {

      return v3;
    }

    return v8;
  }

  return v3;
}

uint64_t sub_1B619DFA8(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() placemarkWithGEOMapItem_];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 name];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1B62211D4();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        return v7;
      }
    }

    else
    {
    }
  }

  v11 = [a1 name];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1B62211D4();

    return v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B6225510;
  swift_unknownObjectRetain();
  v16 = sub_1B6221234();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B6035A98();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  MEMORY[0x1B8C8F910]("No name returned in GEOMapItem, but it is required; falling back to 'Unknown Location' string; geoMapItem=%@", 108, 2, v15);

  if (qword_1EB9244A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_1EB926C78;
  v7 = sub_1B621D544();

  return v7;
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

Swift::Bool __swiftcall GeoJSON.Feature.contains(_:)(__C::CLLocationCoordinate2D a1)
{
  v4 = *(v3 + 16);
  if (!v4 || *(v4 + 16) == 4 && (v5.f64[0] = a1.longitude, v5.f64[1] = a1.latitude, v6 = vuzp1_s16(*&a1.latitude, vmovn_s64(vcgeq_f64(*(v4 + 48), v5))), LODWORD(v5.f64[0]) = vuzp1_s16(vmovn_s64(vcgeq_f64(v5, *(v4 + 32))), *&a1.latitude).u32[0], HIDWORD(v5.f64[0]) = v6.i32[1], (vminv_u16(*&v5.f64[0]))) && (~*(v3 + 24) & 0xF000000000000007) != 0)
  {
    latitude = a1.latitude;
    longitude = a1.longitude;
    type metadata accessor for GeoJSON(0, *(v1 + 16), *(v1 + 24), v2);
    return GeoJSON.contains(_:)(__PAIR128__(*&longitude, *&latitude));
  }

  else
  {
    return 0;
  }
}

BOOL static GeoJSON.Feature.== infix(_:_:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6221A14();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = a1[1];
  v22 = *(a2 + 1);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v46 = v18;
    v23 = *a1 == *a2 && v21 == v22;
    if (!v23 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v46 = v18;
    if (v22)
    {
      return 0;
    }
  }

  v24 = a1[2];
  v25 = *(a2 + 2);
  if (v24)
  {
    if (!v25 || (sub_1B60950A0(v24, v25) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v44 = v7;
  v45 = v12;
  v26 = a1[3];
  v27 = *(a2 + 3);
  if ((~v26 & 0xF000000000000007) == 0)
  {
    v43 = ~v27 & 0xF000000000000007;
    sub_1B615243C(v26);
    sub_1B615243C(v27);
    if (!v43)
    {
      sub_1B615206C(v26);
      v29 = v47;
      goto LABEL_22;
    }

LABEL_20:
    sub_1B615206C(v26);
    sub_1B615206C(v27);
    return 0;
  }

  v49 = a1[3];
  if ((~v27 & 0xF000000000000007) == 0)
  {
    sub_1B615243C(v26);
    sub_1B615243C(v27);
    sub_1B615243C(v26);

    goto LABEL_20;
  }

  v48 = v27;
  sub_1B615243C(v26);
  sub_1B615243C(v27);
  sub_1B615243C(v26);
  v29 = v47;
  LODWORD(v43) = static GeoJSON.== infix(_:_:)(&v49, &v48);

  sub_1B615206C(v26);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v42 = *(type metadata accessor for GeoJSON.Feature(0, a3, v29, v28) + 44);
  v30 = *(v45 + 16);
  v31 = a1 + v42;
  v32 = *(TupleTypeMetadata2 + 48);
  v30(v20, v31, v10);
  v43 = v32;
  v30(&v20[v32], &a2[v42], v10);
  OUTLINED_FUNCTION_6_1(v20);
  if (v23)
  {
    OUTLINED_FUNCTION_6_1(&v20[v43]);
    if (v23)
    {
      v33 = OUTLINED_FUNCTION_6_29();
      v34(v33);
      return 1;
    }

    goto LABEL_30;
  }

  v30(v15, v20, v10);
  OUTLINED_FUNCTION_6_1(&v20[v43]);
  if (v35)
  {
    (*(v44 + 8))(v15, a3);
LABEL_30:
    (*(v46 + 8))(v20, TupleTypeMetadata2);
    return 0;
  }

  v37 = v44;
  (*(v44 + 32))(v9, &v20[v43], a3);
  v38 = sub_1B62211A4();
  v39 = *(v37 + 8);
  v39(v9, a3);
  v39(v15, a3);
  v40 = OUTLINED_FUNCTION_6_29();
  v41(v40);
  return (v38 & 1) != 0;
}

uint64_t sub_1B619E800@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  *a1 = v4;
  return sub_1B619FB5C(&v4, &v3);
}

double GeoJSON.Feature.geometry.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1B615243C(v2);
}

uint64_t GeoJSON.Feature.identifier.getter()
{
  v1 = *v0;
  sub_1B6220784();
  return v1;
}

uint64_t GeoJSON.Feature.properties.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1B6221A14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GeoJSON.Feature.init(identifier:boundingBox:geometry:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v10 = *a4;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = v10;
  v11 = *(type metadata accessor for GeoJSON.Feature(0, a6, a7, a4) + 44);
  v12 = sub_1B6221A14();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a8[v11], a5, v12);
}

unint64_t sub_1B619E9CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B6221CD4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B619EA1C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 2020565602;
      break;
    case 3:
      result = 0x797274656D6F6567;
      break;
    case 4:
      result = 0x69747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B619EAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B619EB14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B619EB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B619EBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1B619EC60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B619E9CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B619EC98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B619EA1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B619ECD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B619EA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B619ED04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60D5B44();
  *a1 = result;
  return result;
}

uint64_t sub_1B619ED34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B619ED88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GeoJSON.Feature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v34 = a4;
  sub_1B6221A14();
  OUTLINED_FUNCTION_2();
  v36 = v8;
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v38 = a3;
  _s7FeatureV10CodingKeysOMa(255, a2, a3, v14);
  OUTLINED_FUNCTION_2_47();
  swift_getWitnessTable();
  v39 = sub_1B6221E04();
  OUTLINED_FUNCTION_2();
  v35 = v15;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v40 = v18;
  v20 = v41;
  sub_1B62220D4();
  if (!v20)
  {
    v21 = v36;
    v41 = v10;
    v22 = v37;
    v23 = v38;
    LOBYTE(v44) = 1;
    v32 = sub_1B6221D44();
    v33 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925458, &unk_1B62318E0);
    v43 = 2;
    sub_1B60D45BC(&qword_1EB925460, MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_3_41();
    v31 = v44;
    type metadata accessor for GeoJSON(0, a2, v23, v25);
    v43 = 3;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_41();
    v30 = v44;
    LOBYTE(v44) = 4;
    sub_1B6221D84();
    v27 = OUTLINED_FUNCTION_1_54();
    v28(v27);
    v44 = v30;
    v29 = v41;
    (*(v21 + 32))(v41, v13, v22);
    GeoJSON.Feature.init(identifier:boundingBox:geometry:properties:)(v32, v33, v31, &v44, v29, a2, v23, v34);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t GeoJSON.Feature.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v25 = *(a2 + 16);
  v23 = v5;
  _s7FeatureV10CodingKeysOMa(255, v25, v5, a4);
  OUTLINED_FUNCTION_2_47();
  swift_getWitnessTable();
  v6 = sub_1B6221EE4();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B62220F4();
  LOBYTE(v28) = 0;
  v12 = v26;
  sub_1B6221E84();
  if (v12)
  {
    return (*(v8 + 8))(v11, v6);
  }

  v14 = v8;
  v15 = v25;
  v17 = v23;
  v16 = v24;
  LOBYTE(v28) = 1;
  sub_1B6221E24();
  v28 = *(v16 + 16);
  v27 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925458, &unk_1B62318E0);
  v18 = sub_1B60D45BC(&qword_1EB925498, MEMORY[0x1E69E63C0], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_4_34(v18);
  v28 = *(v16 + 24);
  v27 = 3;
  sub_1B615243C(v28);
  type metadata accessor for GeoJSON(0, v15, v17, v19);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_34(WitnessTable);
  sub_1B615206C(v28);
  LOBYTE(v28) = 4;
  sub_1B6221E74();
  return (*(v14 + 8))(v11, v6, v21);
}

void sub_1B619F488(uint64_t a1)
{
  sub_1B602B138();
  if (v2 <= 0x3F)
  {
    sub_1B61858F8(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for GeoJSON(255, *(a1 + 16), *(a1 + 24), v3);
      sub_1B6221A14();
      if (v5 <= 0x3F)
      {
        sub_1B6221A14();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B619F554(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 32) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(a1 + 1);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1B619F728(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 32) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v24 = ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;

              __swift_storeEnumTagSinglePayload(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *(a1 + 1) = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1B619FA3C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B619FB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926FD8, &qword_1B6234A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double static MarineForecastUnavailableDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  qword_1EB926FE0 = a1;
  off_1EB926FE8 = a2;

  return result;
}

uint64_t (*static MarineForecastUnavailableDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B619FC6C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB926FE8;
  *a1 = qword_1EB926FE0;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B619FCBC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB926FE0 = v2;
  off_1EB926FE8 = v1;
  sub_1B6220784();

  return result;
}

uint64_t *sub_1B619FD20()
{
  if (qword_1EDAB1098 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_1EDAB1098);
  }

  return &qword_1EDAB10A0;
}

double static MarineForecastUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EDAB1098 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_85(&qword_1EDAB1098);
  }

  OUTLINED_FUNCTION_3_5(a1);
  qword_1EDAB10A0 = v3;
  qword_1EDAB10A8 = a2;

  return result;
}

uint64_t (*static MarineForecastUnavailableDescriptor.version.modify())(uint64_t a1)
{
  if (qword_1EDAB1098 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_1EDAB1098);
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B619FE40@<D0>(void *a1@<X8>)
{
  sub_1B619FD20();
  swift_beginAccess();
  v2 = qword_1EDAB10A8;
  *a1 = qword_1EDAB10A0;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B619FE94(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B619FD20();
  swift_beginAccess();
  qword_1EDAB10A0 = v2;
  qword_1EDAB10A8 = v1;

  return result;
}

_BYTE *storeEnumTagSinglePayload for MarineForecastUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B619FF94(uint64_t a1)
{
  result = sub_1B6153EA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B619FFCC()
{
  result = qword_1EB927000;
  if (!qword_1EB927000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB927110, &qword_1B62265C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927000);
  }

  return result;
}

uint64_t Error.domainAndCode.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1B6221F14();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1B621D564();

  v12 = [v11 domain];
  v13 = sub_1B62211D4();
  v15 = v14;

  v19 = v13;
  v20 = v15;
  MEMORY[0x1B8C90530](32, 0xE100000000000000);
  v18[1] = [v11 code];
  v16 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v16);

  return v19;
}

__n128 MonthWeatherStatistics.temperature.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 MonthWeatherStatistics.precipitation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u64[0];
  v3 = v1[3].n128_u8[8];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t static MonthWeatherStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (*(a2 + 24))
    {
      return result;
    }

    if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
    {
      return result;
    }
  }

  if (v6)
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 56))
    {
      return 0;
    }

    v9 = v3 == *(a2 + 32) && v4 == *(a2 + 40);
    if (!v9 || v5 != *(a2 + 48))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B61A02C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

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

uint64_t sub_1B61A03DC(char a1)
{
  if (!a1)
  {
    return 0x68746E6F6DLL;
  }

  if (a1 == 1)
  {
    return 0x74617265706D6574;
  }

  return 0x7469706963657270;
}

uint64_t sub_1B61A044C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61A02C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61A0474(uint64_t a1)
{
  v2 = sub_1B61A06CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61A04B0(uint64_t a1)
{
  v2 = sub_1B61A06CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MonthWeatherStatistics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927008, &qword_1B6234B60);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = v10;
  v27 = *(v1 + 24);
  v11 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = v11;
  v18 = *(v1 + 48);
  HIDWORD(v17) = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61A06CC();
  sub_1B62220F4();
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_0_3();
  sub_1B6221EB4();
  if (!v2)
  {
    v12 = BYTE4(v17);
    v14 = v18;
    v13 = v19;
    v15 = v20;
    v23 = v22;
    v24 = v21;
    LOBYTE(v25) = v27;
    v28 = 1;
    sub_1B61A0720();
    OUTLINED_FUNCTION_0_3();
    sub_1B6221E74();
    v23 = v15;
    v24 = v13;
    v25 = v14;
    v26 = v12;
    v28 = 2;
    sub_1B61A0774();
    OUTLINED_FUNCTION_0_3();
    sub_1B6221E74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B61A06CC()
{
  result = qword_1EB927010;
  if (!qword_1EB927010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927010);
  }

  return result;
}

unint64_t sub_1B61A0720()
{
  result = qword_1EB927018;
  if (!qword_1EB927018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927018);
  }

  return result;
}

unint64_t sub_1B61A0774()
{
  result = qword_1EB927020;
  if (!qword_1EB927020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927020);
  }

  return result;
}

uint64_t MonthWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927028, &qword_1B6234B68);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61A06CC();
  sub_1B62220D4();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    v11 = sub_1B6221DC4();
    v24 = 1;
    sub_1B61A09BC();
    OUTLINED_FUNCTION_1_55(&type metadata for TemperatureRange);
    v18 = *(&v19 + 1);
    v13 = v19;
    v23 = v20;
    v24 = 2;
    sub_1B61A0A10();
    OUTLINED_FUNCTION_1_55(&type metadata for PrecipitationAmount);
    (*(v7 + 8))(v10, v5);
    v14 = v20;
    v15 = v21;
    v22 = v21;
    v16 = v23;
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16;
    *(a2 + 32) = v19;
    *(a2 + 48) = v14;
    *(a2 + 56) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B61A09BC()
{
  result = qword_1EB927030;
  if (!qword_1EB927030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927030);
  }

  return result;
}

unint64_t sub_1B61A0A10()
{
  result = qword_1EB927038;
  if (!qword_1EB927038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927038);
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

uint64_t sub_1B61A0AE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61A0B04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MonthWeatherStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61A0C30()
{
  result = qword_1EB927040;
  if (!qword_1EB927040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927040);
  }

  return result;
}

unint64_t sub_1B61A0C88()
{
  result = qword_1EB927048;
  if (!qword_1EB927048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927048);
  }

  return result;
}

unint64_t sub_1B61A0CE0()
{
  result = qword_1EB927050;
  if (!qword_1EB927050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927050);
  }

  return result;
}

uint64_t ConditionCode.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    ConditionCode.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 35)
    {
      v9 = 34;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::ConditionCode_optional __swiftcall ConditionCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221FA4();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ConditionCode.rawValue.getter()
{
  result = 0x5241454C43;
  switch(*v0)
  {
    case 1:
      return 0x4452415A5A494C42;
    case 2:
    case 3:
      return 0x5F474E49574F4C42;
    case 4:
      return 0x595A45455242;
    case 5:
      return 0x5944554F4C43;
    case 6:
      return 0x454C5A5A495244;
    case 7:
      return 0x5345495252554C46;
    case 8:
      v2 = 1195855686;
      goto LABEL_31;
    case 9:
      return 0xD000000000000010;
    case 0xA:
      return 0x474E495A45455246;
    case 0xB:
      return 0x444947495246;
    case 0xC:
      return 1279869256;
    case 0xD:
      return 1163542856;
    case 0xE:
      return 0x41525F5956414548;
    case 0xF:
      return 0x4E535F5956414548;
    case 0x10:
      return 5525320;
    case 0x11:
      return 0x4E41434952525548;
    case 0x12:
      return 0xD000000000000016;
    case 0x13:
      return 0x435F594C54534F4DLL;
    case 0x14:
      v3 = 1414745933;
      return v3 | 0x435F594C00000000;
    case 0x15:
      v3 = 1414676816;
      return v3 | 0x435F594C00000000;
    case 0x16:
      return 1313423698;
    case 0x17:
      return 0xD000000000000017;
    case 0x18:
      return 0x5445454C53;
    case 0x19:
      v2 = 1263488339;
      goto LABEL_31;
    case 0x1A:
      return 1464815187;
    case 0x1B:
      return 0x535F474E4F525453;
    case 0x1C:
      return 0x52554C465F4E5553;
    case 0x1D:
      return 0x574F48535F4E5553;
    case 0x1E:
      return 0x535245444E554854;
    case 0x1F:
      return 0x4C414349504F5254;
    case 0x20:
      v2 = 1145981271;
LABEL_31:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x5900000000;
      break;
    case 0x21:
      result = 0x4D5F5952544E4957;
      break;
    case 0x22:
      result = 0x494156415F544F4ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B61A131C()
{
  result = qword_1EB927058;
  if (!qword_1EB927058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927058);
  }

  return result;
}

unint64_t sub_1B61A1394@<X0>(unint64_t *a1@<X8>)
{
  result = ConditionCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B61A143C()
{
  result = qword_1EDAB1648;
  if (!qword_1EDAB1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1648);
  }

  return result;
}

uint64_t MoonPhase.init(flatbufferValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F0F4();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result != *MEMORY[0x1E69E1B28])
  {
    if (result == *MEMORY[0x1E69E1B20])
    {
      v7 = 1;
      goto LABEL_17;
    }

    if (result == *MEMORY[0x1E69E1AF8])
    {
      v7 = 2;
      goto LABEL_17;
    }

    if (result == *MEMORY[0x1E69E1B10])
    {
      v7 = 3;
      goto LABEL_17;
    }

    if (result == *MEMORY[0x1E69E1B30])
    {
      v7 = 4;
      goto LABEL_17;
    }

    if (result == *MEMORY[0x1E69E1B08])
    {
      v7 = 5;
      goto LABEL_17;
    }

    if (result == *MEMORY[0x1E69E1B00])
    {
      v7 = 6;
      goto LABEL_17;
    }

    if (result == *MEMORY[0x1E69E1B18])
    {
      v7 = 7;
      goto LABEL_17;
    }

    result = (*(v5 + 8))(a1, v4);
  }

  v7 = 0;
LABEL_17:
  *a2 = v7;
  return result;
}

WeatherDaemon::MoonPhase_optional __swiftcall MoonPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MoonPhase.rawValue.getter()
{
  result = 5719374;
  switch(*v0)
  {
    case 1:
      result = 0x435F474E49584157;
      break;
    case 2:
      v2 = 0x5F5453524946;
      goto LABEL_11;
    case 3:
      result = 0x475F474E49584157;
      break;
    case 4:
      result = 1280070982;
      break;
    case 5:
      result = 0x475F474E494E4157;
      break;
    case 6:
      v2 = 0x5F4452494854;
LABEL_11:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x5551000000000000;
      break;
    case 7:
      result = 0x435F474E494E4157;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B61A1778()
{
  result = qword_1EB927060;
  if (!qword_1EB927060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927060);
  }

  return result;
}

uint64_t sub_1B61A17F0@<X0>(uint64_t *a1@<X8>)
{
  result = MoonPhase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B61A18E0()
{
  result = qword_1EDAB04A8;
  if (!qword_1EDAB04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB04A8);
  }

  return result;
}

uint64_t sub_1B61A1934(uint64_t *a1, int a2)
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

uint64_t sub_1B61A1974(uint64_t result, int a2, int a3)
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

uint64_t sub_1B61A19CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v71 = a4;
  v72 = a5;
  v70 = a3;
  v67 = a1;
  v68 = a2;
  v73 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v14 = OUTLINED_FUNCTION_0(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v17 = OUTLINED_FUNCTION_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  v20 = OUTLINED_FUNCTION_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  v29 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v22);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v22);
  swift_allocObject();

  v36 = sub_1B6220D74();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();

  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();

  OUTLINED_FUNCTION_6_30();
  v52 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v37);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v37);
  swift_allocObject();

  OUTLINED_FUNCTION_6_30();
  v59 = sub_1B6220D74();
  OUTLINED_FUNCTION_12_19(a7 * 1000.0);

  sub_1B6220D94();

  OUTLINED_FUNCTION_12_19(a8 * 1000.0);
  sub_1B6220D94();

  v74 = v67;
  v75 = v68;
  sub_1B6220D94();

  v60 = sub_1B621D8F4();
  v61 = *(v60 - 8);
  v62 = v69;
  v63 = v70;
  (*(v61 + 16))(v69, v70, v60);
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v60);
  sub_1B6220D94();

  v74 = v71;
  v75 = v72;
  sub_1B6220D94();

  result = (*(v61 + 8))(v63, v60);
  v65 = v73;
  *v73 = v29;
  v65[1] = v36;
  v65[2] = v44;
  v65[3] = v52;
  v65[4] = v59;
  return result;
}

uint64_t sub_1B61A1EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73746375646F7270 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B6221F24();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1B61A2080(char a1)
{
  result = 0x656475746974616CLL;
  switch(a1)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 0x73746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B61A2118(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927078, &qword_1B6235318);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61A2CE8();
  sub_1B62220F4();
  v23 = *v3;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_0_2();
  sub_1B602CAF4(v11, v12, &qword_1B6225790, v13);
  OUTLINED_FUNCTION_3_42();
  if (!v2)
  {
    v23 = v3[1];
    v22 = 1;
    OUTLINED_FUNCTION_3_42();
    v23 = v3[2];
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
    OUTLINED_FUNCTION_0_2();
    sub_1B602CAF4(v14, v15, &unk_1B622F500, v16);
    OUTLINED_FUNCTION_3_42();
    v23 = v3[3];
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
    OUTLINED_FUNCTION_0_2();
    sub_1B602CAF4(v17, v18, &unk_1B622F4F0, v19);
    sub_1B6221EC4();
    v23 = v3[4];
    v22 = 4;
    OUTLINED_FUNCTION_3_42();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B61A2374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v60[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927068, &qword_1B6235310);
  OUTLINED_FUNCTION_2();
  v60[1] = v3;
  v60[2] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v6 = OUTLINED_FUNCTION_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v9 = OUTLINED_FUNCTION_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  v61 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v14);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v14);
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  v63 = sub_1B6220D74();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_3_27();
  v62 = sub_1B6220D74();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  v41 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v27);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v27);
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  sub_1B6220D74();
  __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  sub_1B61A2CE8();
  v48 = v64;
  sub_1B62220D4();
  if (v48)
  {

    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    v64 = v41;
    v67 = 0;
    OUTLINED_FUNCTION_1_32(&qword_1EB926100, &qword_1EB924CB8, &qword_1B6225790);
    OUTLINED_FUNCTION_11_20();

    v49 = v68;
    v67 = 1;
    OUTLINED_FUNCTION_11_20();
    v61 = v49;

    v51 = v68;
    v67 = 2;
    OUTLINED_FUNCTION_1_32(&qword_1EB926108, &qword_1EB9260A0, &unk_1B622F500);
    OUTLINED_FUNCTION_10_22();
    v63 = v51;

    v52 = v68;
    v67 = 3;
    OUTLINED_FUNCTION_1_32(&qword_1EB926110, &qword_1EB9260B0, &unk_1B622F4F0);
    sub_1B6221DD4();
    v62 = v52;

    v53 = v68;
    v67 = 4;
    OUTLINED_FUNCTION_10_22();
    v54 = OUTLINED_FUNCTION_7_29();
    v55(v54);

    v56 = v68;
    result = __swift_destroy_boxed_opaque_existential_1(v66);
    v57 = v60[0];
    v58 = v62;
    v59 = v63;
    *v60[0] = v61;
    v57[1] = v59;
    v57[2] = v58;
    v57[3] = v53;
    v57[4] = v56;
  }

  return result;
}

uint64_t sub_1B61A29E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61A1EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61A2A08(uint64_t a1)
{
  v2 = sub_1B61A2CE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61A2A44(uint64_t a1)
{
  v2 = sub_1B61A2CE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61A2A88(uint64_t a1)
{
  v2 = sub_1B6067AAC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B61A2AD4(uint64_t a1)
{
  v2 = sub_1B6067AAC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B61A2B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6067AAC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B61A2B84@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B61A2374(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1B61A2BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6067AAC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B61A2C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6067AAC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B61A2C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6067AAC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1B61A2CE8()
{
  result = qword_1EB927070;
  if (!qword_1EB927070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataLastFetchEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61A2E1C()
{
  result = qword_1EB927080;
  if (!qword_1EB927080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927080);
  }

  return result;
}

unint64_t sub_1B61A2E74()
{
  result = qword_1EB927088;
  if (!qword_1EB927088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927088);
  }

  return result;
}

unint64_t sub_1B61A2ECC()
{
  result = qword_1EB927090;
  if (!qword_1EB927090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927090);
  }

  return result;
}

uint64_t NetworkOperationTelemetry.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B621D8F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NetworkOperationTelemetry.startDate.setter(uint64_t a1)
{
  v3 = sub_1B621D8F4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id NetworkOperationTelemetry.result.getter()
{
  type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_0_86();
  v1 = *v0;
  sub_1B61A3090(*v0, *(v0 + 8), *(v0 + 9));
  return v1;
}

id sub_1B61A3090(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

uint64_t NetworkOperationTelemetry.iterationIndex.getter()
{
  type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_0_86();
  if (v0[9])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t NetworkOperationTelemetry.wasRacingRequest.getter()
{
  type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_0_86();
  if (*(v0 + 9))
  {
    return 2;
  }

  else
  {
    return *(v0 + 8) & 1;
  }
}

void *NetworkOperationTelemetry.errorDescriptions.getter()
{
  type metadata accessor for NetworkOperationTelemetry(0);
  v0 = 0;
  OUTLINED_FUNCTION_0_86();
  if (*(v1 + 9) == 1)
  {
    v3 = *(v1 + 8);
    v32 = *v1;
    v2 = v32;
    sub_1B61A3090(v32, v3, 1);
    v4 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
    if (swift_dynamicCast())
    {
      v5 = v31;
      v6 = *(v31 + 16);
      if (!v6)
      {

        sub_1B61A33D4(v32, v3, 1);
        return MEMORY[0x1E69E7CC0];
      }

      v27 = v32;
      v28 = v3;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1B603C6EC(0, v6, 0);
      v7 = 32;
      v0 = v32;
      v29 = v31;
      do
      {
        v8 = *(v5 + v7);
        ErrorValue = swift_getErrorValue();
        v10 = v30;
        v11 = *(v30 - 8);
        v12 = MEMORY[0x1EEE9AC00](ErrorValue);
        v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v11 + 16))(v14, v12);
        v15 = v8;
        v16 = sub_1B60C107C();
        v18 = v17;
        (*(v11 + 8))(v14, v10);

        v32 = v0;
        v20 = v0[2];
        v19 = v0[3];
        if (v20 >= v19 >> 1)
        {
          sub_1B603C6EC(v19 > 1, v20 + 1, 1);
          v0 = v32;
        }

        v0[2] = v20 + 1;
        v21 = &v0[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
        v7 += 8;
        --v6;
        v5 = v29;
      }

      while (v6);

      v23 = v27;
      v24 = v28;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AD8, &qword_1B6224B88);
      v0 = swift_allocObject();
      *(v0 + 1) = xmmword_1B6225510;
      swift_getErrorValue();
      v0[4] = sub_1B60C107C();
      v0[5] = v22;
      v23 = v2;
      v24 = v3;
    }

    sub_1B61A33D4(v23, v24, 1);
  }

  return v0;
}

void sub_1B61A33D4(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1B61A3408()
{
  v1 = sub_1B621D3A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = *v0;
  sub_1B621D374();
  sub_1B605C810();
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v11;
  if (v13 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_1_56(v12);
    sub_1B605C810();
    v14 = v47;
  }

  *(v14 + 16) = v13 + 1;
  v17 = *(v2 + 32);
  v16 = v2 + 32;
  v15 = v17;
  v56 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v55 = *(v16 + 40);
  v17(v14 + v56 + v55 * v13, v9, v1);
  sub_1B621D374();
  v19 = *(v14 + 16);
  v18 = *(v14 + 24);
  if (v19 >= v18 >> 1)
  {
    OUTLINED_FUNCTION_1_56(v18);
    sub_1B605C810();
    v14 = v48;
  }

  *(v14 + 16) = v19 + 1;
  v52 = v15;
  v53 = v14;
  v15(v14 + v56 + v19 * v55, v6, v1);
  v20 = *(v10 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = (v10 + 32);
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*v22)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B60AA2B0(0, *(v23 + 16) + 1, 1);
          v23 = v57;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          v27 = OUTLINED_FUNCTION_1_56(v25);
          sub_1B60AA2B0(v27, v26 + 1, 1);
          v23 = v57;
        }

        *(v23 + 16) = v26 + 1;
        *(v23 + v26 + 32) = 1;
      }

      ++v22;
      --v20;
    }

    while (v20);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v23 + 16);
  if (v28)
  {
    v50 = v16;
    v51 = v1;
    v57 = v21;
    sub_1B603C6EC(0, v28, 0);
    v29 = v57;
    v30 = 16 * *(v57 + 16);
    v31 = 32;
    OUTLINED_FUNCTION_0_44();
    OUTLINED_FUNCTION_0_87();
    do
    {
      if (*(v23 + v31))
      {
        v36 = v34;
      }

      else
      {
        v36 = v33;
      }

      if (*(v23 + v31))
      {
        v37 = 0xEB00000000657275;
      }

      else
      {
        v37 = v35;
      }

      v57 = v29;
      v38 = *(v29 + 24);
      v39 = v32 + 1;
      if (v32 >= v38 >> 1)
      {
        sub_1B603C6EC(v38 > 1, v32 + 1, 1);
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_0_44();
        v29 = v57;
      }

      *(v29 + 16) = v39;
      v40 = v29 + v30;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
      v30 += 16;
      ++v31;
      v32 = v39;
      --v28;
    }

    while (v28);

    v1 = v51;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v57 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68, &qword_1B622B910);
  sub_1B60358B4();
  sub_1B6221174();

  v41 = v54;
  sub_1B621D374();

  v43 = v52;
  v42 = v53;
  v45 = *(v53 + 16);
  v44 = *(v53 + 24);
  if (v45 >= v44 >> 1)
  {
    OUTLINED_FUNCTION_1_56(v44);
    sub_1B605C810();
    v42 = v49;
  }

  *(v42 + 16) = v45 + 1;
  v43(v42 + v56 + v45 * v55, v41, v1);
  return v42;
}

double static HistoricalFactsUnavailableDescriptor.name.setter(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  qword_1EB9270A0 = a1;
  off_1EB9270A8 = a2;

  return result;
}

uint64_t (*static HistoricalFactsUnavailableDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B61A3930@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB9270A8;
  *a1 = qword_1EB9270A0;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B61A3980(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB9270A0 = v2;
  off_1EB9270A8 = v1;
  sub_1B6220784();

  return result;
}

uint64_t *sub_1B61A39E4()
{
  if (qword_1EDAB1078 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDAB1078);
  }

  return &qword_1EDAB1080;
}

double static HistoricalFactsUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EDAB1078 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_88(&qword_1EDAB1078);
  }

  OUTLINED_FUNCTION_3_5(a1);
  qword_1EDAB1080 = v3;
  qword_1EDAB1088 = a2;

  return result;
}

uint64_t (*static HistoricalFactsUnavailableDescriptor.version.modify())(uint64_t a1)
{
  if (qword_1EDAB1078 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_1EDAB1078);
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B61A3B04@<D0>(void *a1@<X8>)
{
  sub_1B61A39E4();
  swift_beginAccess();
  v2 = qword_1EDAB1088;
  *a1 = qword_1EDAB1080;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B61A3B58(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B61A39E4();
  swift_beginAccess();
  qword_1EDAB1080 = v2;
  qword_1EDAB1088 = v1;

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalFactsUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

double static DayForecastDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  *aDayforecast_2 = a1;
  *&aDayforecast_2[8] = a2;

  return result;
}

uint64_t (*static DayForecastDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B61A3CF8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aDayforecast_2[8];
  *a1 = *aDayforecast_2;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B61A3D48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aDayforecast_2 = v2;
  *&aDayforecast_2[8] = v1;
  sub_1B6220784();

  return result;
}

uint64_t *sub_1B61A3DAC()
{
  if (qword_1EDAB1350 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_1EDAB1350);
  }

  return &qword_1EDAB1358;
}

double static DayForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EDAB1350 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_89(&qword_1EDAB1350);
  }

  OUTLINED_FUNCTION_3_5(a1);
  qword_1EDAB1358 = v3;
  qword_1EDAB1360 = a2;

  return result;
}

uint64_t (*static DayForecastDescriptor.version.modify())(uint64_t a1)
{
  if (qword_1EDAB1350 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_1EDAB1350);
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B61A3ECC@<D0>(void *a1@<X8>)
{
  sub_1B61A3DAC();
  swift_beginAccess();
  v2 = qword_1EDAB1360;
  *a1 = qword_1EDAB1358;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B61A3F20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B61A3DAC();
  swift_beginAccess();
  qword_1EDAB1358 = v2;
  qword_1EDAB1360 = v1;

  return result;
}

_BYTE *storeEnumTagSinglePayload for DayForecastDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t static WeatherClock.supportsModification.getter()
{
  if (qword_1EDAB3550 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EDAB3550);
  }

  return byte_1EDAB3558;
}

uint64_t sub_1B61A4060()
{
  result = sub_1B62211B4();
  qword_1EDAAF050 = result;
  return result;
}

id static WeatherClock.clockWasModifiedNotification.getter()
{
  if (qword_1EDAAF048 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAAF050;

  return v1;
}

void static WeatherClock.setDate(_:)(uint64_t a1)
{
  if (qword_1EDAB3550 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EDAB3550);
  }

  OUTLINED_FUNCTION_2_48();
  if (v2)
  {
    if (qword_1EDAB3538 != -1)
    {
      OUTLINED_FUNCTION_1_57(&qword_1EDAB3538);
    }

    sub_1B61A416C(a1);
  }
}

void sub_1B61A416C(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 4);
  sub_1B61A46F8(&v1[6]);
  os_unfair_lock_unlock(v1 + 4);
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_1EDAAF048 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_1EDAAF050 object:{0, v3}];
}

void sub_1B61A4258()
{
  os_unfair_lock_lock((v0 + 16));
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  os_unfair_lock_unlock((v0 + 16));
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1EDAAF048 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 postNotificationName:qword_1EDAAF050 object:0];
}

void sub_1B61A432C()
{
  v1 = v0;
  v2 = sub_1B621D8F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v1 + 16));
  if (*(v1 + 32))
  {

    os_unfair_lock_unlock((v1 + 16));
  }

  else
  {
    v6 = *(v1 + 24);
    sub_1B621D8D4();
    sub_1B621D754();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    *(v1 + 24) = v6 - v8;
    *(v1 + 32) = 1;
    os_unfair_lock_unlock((v1 + 16));
    v9 = [objc_opt_self() defaultCenter];
    if (qword_1EDAAF048 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_1EDAAF050 object:0];
  }
}

void sub_1B61A44E4(void (*a1)(void))
{
  if (qword_1EDAB3550 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EDAB3550);
  }

  OUTLINED_FUNCTION_2_48();
  if (v2)
  {
    if (qword_1EDAB3538 != -1)
    {
      OUTLINED_FUNCTION_1_57(&qword_1EDAB3538);
    }

    a1();
  }
}

void sub_1B61A455C()
{
  v1 = v0;
  v2 = sub_1B621D8F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v1 + 16));
  if (*(v1 + 32) == 1)
  {
    sub_1B621D864();
    sub_1B621D754();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 24) = v7;
    *(v1 + 32) = 0;
    os_unfair_lock_unlock((v1 + 16));
    v8 = [objc_opt_self() defaultCenter];
    if (qword_1EDAAF048 != -1)
    {
      swift_once();
    }

    [v8 postNotificationName:qword_1EDAAF050 object:0];
  }

  else
  {

    os_unfair_lock_unlock((v1 + 16));
  }
}

void sub_1B61A46F8(uint64_t a1)
{
  v2 = sub_1B621D8F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  sub_1B621D754();
  v8 = v7;
  if (v6 == 1)
  {
    sub_1B621D8D4();
    sub_1B621D754();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v8 = v8 - v10;
  }

  *a1 = v8;
  *(a1 + 8) = v6;
}

uint64_t static AvailabilityProxyResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB9270D0 = a1;
  return result;
}

uint64_t sub_1B61A49F4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB9270D0;
  return result;
}

uint64_t sub_1B61A4A40(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB9270D0 = v1;
  return result;
}

id AvailabilityProxyResponse.init(dataSets:)()
{
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_dataSets] = v0;
  v3 = OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_error;
  v4 = sub_1B6220604();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AvailabilityProxyResponse.init(error:)()
{
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_dataSets] = 0;
  v3 = OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_error;
  v4 = sub_1B6220604();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], v0, v4);
  __swift_storeEnumTagSinglePayload(&v1[v3], 0, 1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(v0, v4);
  return v6;
}

Swift::Void __swiftcall AvailabilityProxyResponse.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9270E0, &unk_1B6233560);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_dataSets);
  if (v6)
  {
    v7 = sub_1B621D304();
    OUTLINED_FUNCTION_73(v7);
    sub_1B621D2F4();
    v23 = v6;
    sub_1B6220784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9270F8, &qword_1B62355F8);
    sub_1B61A4F3C();
    v11 = sub_1B621D2E4();
    v13 = v12;

    v14 = sub_1B621D6F4();
    v15 = sub_1B62211B4();
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

    v16 = v11;
    v17 = v13;
  }

  else
  {
    sub_1B6194FF4(v1 + OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_error, v5);
    v8 = sub_1B6220604();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v8);
    sub_1B6195064(v5);
    if (EnumTagSinglePayload == 1)
    {
      return;
    }

    v10 = sub_1B621D304();
    OUTLINED_FUNCTION_73(v10);
    sub_1B621D2F4();
    sub_1B61A4E9C();
    v18 = sub_1B621D2E4();
    v20 = v19;

    v21 = sub_1B621D6F4();
    v22 = sub_1B62211B4();
    [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

    v16 = v18;
    v17 = v20;
  }

  sub_1B60362A8(v16, v17);
}

unint64_t sub_1B61A4E9C()
{
  result = qword_1EB9275B0;
  if (!qword_1EB9275B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB9270E0, &unk_1B6233560);
    sub_1B61A547C(&qword_1EB9270F0, MEMORY[0x1E69D6448]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9275B0);
  }

  return result;
}

unint64_t sub_1B61A4F3C()
{
  result = qword_1EB927100;
  if (!qword_1EB927100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9270F8, &qword_1B62355F8);
    sub_1B61A4FF0(&qword_1EDAAEAC8, sub_1B61A5068, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927100);
  }

  return result;
}

uint64_t sub_1B61A4FF0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB927110, &qword_1B62265C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B61A5068()
{
  result = qword_1EDAAEBB8;
  if (!qword_1EDAAEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBB8);
  }

  return result;
}

id AvailabilityProxyResponse.init(coder:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9270E0, &unk_1B6233560);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  sub_1B61A5438();
  v7 = sub_1B6221994();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1B621D714();
    v11 = v10;

    v12 = sub_1B621D2D4();
    OUTLINED_FUNCTION_73(v12);
    sub_1B621D2C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110, &qword_1B62265C0);
    sub_1B61A4FF0(&qword_1EDAAEAC0, sub_1B6153F2C, MEMORY[0x1E69E6330]);
    sub_1B621D2B4();
    sub_1B60362A8(v9, v11);

    v13 = v25;
  }

  else
  {
    v13 = 0;
  }

  *&v2[OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_dataSets] = v13;
  v14 = sub_1B6221994();
  if (v14)
  {
    v15 = v14;
    v16 = sub_1B621D714();
    v18 = v17;

    v19 = sub_1B621D2D4();
    OUTLINED_FUNCTION_73(v19);
    sub_1B621D2C4();
    v20 = sub_1B6220604();
    sub_1B61A547C(&unk_1EB927128, MEMORY[0x1E69D6450]);
    sub_1B621D2B4();
    sub_1B60362A8(v16, v18);

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v20);
    sub_1B61A54C0(v6, &v2[OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_error]);
  }

  else
  {
    v21 = OBJC_IVAR____TtC13WeatherDaemon25AvailabilityProxyResponse_error;
    v22 = sub_1B6220604();
    __swift_storeEnumTagSinglePayload(&v2[v21], 1, 1, v22);
  }

  v26.receiver = v2;
  v26.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v26, sel_init);

  return v23;
}

unint64_t sub_1B61A5438()
{
  result = qword_1EB927120;
  if (!qword_1EB927120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB927120);
  }

  return result;
}

uint64_t sub_1B61A547C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B6220604();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B61A54C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9270E0, &unk_1B6233560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id AvailabilityProxyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AvailabilityProxyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AvailabilityProxyResponse(uint64_t a1)
{
  result = qword_1EB927138;
  if (!qword_1EB927138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B61A56A4(uint64_t a1)
{
  sub_1B61A5794(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B61A5794(uint64_t a1)
{
  if (!qword_1EDAB03F0)
  {
    sub_1B6220604();
    v1 = sub_1B6221A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDAB03F0);
    }
  }
}

uint64_t WeatherDataStore.__allocating_init()()
{
  v0 = swift_allocObject();
  WeatherDataStore.init()();
  return v0;
}

uint64_t sub_1B61A5904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_10();
  v3 = v1 - v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();
  sub_1B6220D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9271B0, &qword_1B6235A58);
  swift_allocObject();
  return sub_1B6220BE4();
}

uint64_t sub_1B61A5A4C()
{
  sub_1B6220C04();
  sub_1B6220C14();
  swift_allocObject();
  return sub_1B6220C34();
}

uint64_t sub_1B61A5A94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B61A5904();
  *a1 = result;
  return result;
}

uint64_t sub_1B61A5AC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927148, &unk_1B6235680);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1B61AD28C(a1, &v7 - v3);
  v5 = type metadata accessor for SignpostInterval(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_1B61AD2FC(v4);
  }

  SignpostInterval.end()();
  return sub_1B61AD364(v4);
}

uint64_t WeatherDataStore.raw<A>(_:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDAB17E8 != -1)
  {
    OUTLINED_FUNCTION_31_5();
    swift_once();
  }

  if (qword_1EDAB17F0)
  {

    v5 = sub_1B6220E64();
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v6 = sub_1B6220B34();
    v5 = __swift_project_value_buffer(v6, qword_1EDAC2AB0);
    v7 = sub_1B6220B14();
    sub_1B62217E4();
    v8 = OUTLINED_FUNCTION_26_11();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_40_5();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_77_2(v10);
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      v16 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v16);
    }

    sub_1B61AD238();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

void *WeatherDataStore.deinit()
{

  return v0;
}

uint64_t WeatherDataStore.__deallocating_deinit()
{
  WeatherDataStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 240, 7);
}

uint64_t static WeatherDataStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDAB3290 != -1)
  {
    OUTLINED_FUNCTION_34_5(&qword_1EDAB3290);
  }

  v2 = sub_1B6220E84();
  v3 = __swift_project_value_buffer(v2, qword_1EDAB17D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static WeatherDataStore.location.setter()
{
  if (qword_1EDAB3290 != -1)
  {
    OUTLINED_FUNCTION_34_5(&qword_1EDAB3290);
  }

  v0 = sub_1B6220E84();
  __swift_project_value_buffer(v0, qword_1EDAB17D0);
  swift_beginAccess();
  OUTLINED_FUNCTION_42();
  v1();
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_5_2();
  return v3(v2);
}

uint64_t (*static WeatherDataStore.location.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDAB3290 != -1)
  {
    OUTLINED_FUNCTION_34_5(&qword_1EDAB3290);
  }

  v1 = sub_1B6220E84();
  OUTLINED_FUNCTION_225(v1, qword_1EDAB17D0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static WeatherDataStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDAAF678 != -1)
  {
    swift_once();
  }

  if (byte_1EDAAF684 == 1)
  {
    *a1 = 2048;
    v2 = MEMORY[0x1E69D6298];
  }

  else
  {
    v2 = MEMORY[0x1E69D62A0];
  }

  v3 = *v2;
  v4 = sub_1B6220EA4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_1B61A6104()
{
  OUTLINED_FUNCTION_11();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1B6220C44();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61A61C0, 0, 0);
}

uint64_t sub_1B61A61C0()
{
  if (qword_1EDAB17E8 != -1)
  {
    OUTLINED_FUNCTION_31_5();
    swift_once();
  }

  v2 = qword_1EDAB17F0;
  v1[7] = qword_1EDAB17F0;
  if (v2)
  {
    v4 = v1[5];
    v3 = v1[6];
    v5 = v1[4];
    (*(v4 + 104))(v3, *MEMORY[0x1E69D6190], v5);

    v1[8] = sub_1B6220E14();
    (*(v4 + 8))(v3, v5);
    v6 = swift_task_alloc();
    v1[9] = v6;
    *v6 = v1;
    v6[1] = sub_1B61A6408;

    return MEMORY[0x1EEE44EE0]();
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v7 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v7, qword_1EDAC2AB0);
    v8 = sub_1B6220B14();
    v9 = sub_1B62217E4();
    v10 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_40_5();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_44_4(v12);
      _os_log_impl(&dword_1B6020000, v8, v9, "Failed to access weather data database", v0, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    sub_1B61AD238();
    swift_allocError();
    swift_willThrow();

    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_1B61A6408()
{
  OUTLINED_FUNCTION_11();
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B61A6588;
  }

  else
  {

    v2 = sub_1B61A6520;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B61A6520()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B61A6588()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall WeatherDataStore.purgeData()()
{
  sub_1B61A66A4();
  sub_1B61A6800();
  sub_1B61A695C();
  sub_1B61A6BB8(v0);
  sub_1B61A6E14();
  sub_1B61A6F70();
  sub_1B61A70CC();
  sub_1B61A7228();
  sub_1B61A7384();
  sub_1B61A74E0();
  sub_1B61A763C();
  sub_1B61A7798();
  sub_1B61A78F4();
  v6 = 1;
  sub_1B61A7A50(&v6, v1);
  v5 = 0;
  sub_1B61A7A50(&v5, v2);
  v4 = 2;
  sub_1B61A7A50(&v4, v3);
  sub_1B61A7E78();
  sub_1B61A7FD4();
  sub_1B61A8130();
  sub_1B61A828C();
  sub_1B61A83E8();
  sub_1B61ABDDC();
  sub_1B61A8544();
  sub_1B61A86A0();

  sub_1B61A87FC();
}

void sub_1B61A66A4()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A6800()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A695C()
{
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    OUTLINED_FUNCTION_81_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v4 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v4, qword_1EDAC2AB0);
    v5 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_617();
    if (os_log_type_enabled(v5, v1))
    {
      v6 = OUTLINED_FUNCTION_56_2();
      v7 = OUTLINED_FUNCTION_39();
      v16 = v7;
      *v6 = 141558275;
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_73_2(v8);
      v9 = v0;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v12 = OUTLINED_FUNCTION_60_2(v10, v11);
      sub_1B602EEB0(v12, v13, &v16);
      OUTLINED_FUNCTION_82_2();
      *(v6 + 14) = v2;
      OUTLINED_FUNCTION_71_2(&dword_1B6020000, v14, v15, "Failed to purge all daily forecast data, error=%{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    else
    {
    }
  }

  else
  {
  }

  sub_1B6220D64();
  sub_1B6220DB4();
}

void sub_1B61A6BB8(__n128 a1)
{
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v1)
  {

    OUTLINED_FUNCTION_81_1();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v5 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v5, qword_1EDAC2AB0);
    v6 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_617();
    if (os_log_type_enabled(v6, v2))
    {
      v7 = OUTLINED_FUNCTION_56_2();
      v8 = OUTLINED_FUNCTION_39();
      v17 = v8;
      *v7 = 141558275;
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_73_2(v9);
      v10 = v1;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v13 = OUTLINED_FUNCTION_60_2(v11, v12);
      sub_1B602EEB0(v13, v14, &v17);
      OUTLINED_FUNCTION_82_2();
      *(v7 + 14) = v3;
      OUTLINED_FUNCTION_71_2(&dword_1B6020000, v15, v16, "Failed to purge all hourly forecast data; error=%{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    else
    {
    }
  }

  else
  {
  }

  sub_1B6220D64();
  sub_1B6220DB4();
}

void sub_1B61A6E14()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A6F70()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A70CC()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A7228()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A7384()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A74E0()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A763C()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A7798()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A78F4()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A7A50(unsigned __int8 *a1, __n128 a2)
{
  sub_1B6220BD4();
  OUTLINED_FUNCTION_11_21();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = *a1;
  sub_1B6220D64();
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0xE500000000000000;
      v12 = 0x796C696164;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x6369646F69726570;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x796C72756F68;
  }

  v26[3] = MEMORY[0x1E69E6158];
  v26[4] = MEMORY[0x1E69D62D8];
  v26[0] = v12;
  v26[1] = v11;
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1B6220DC4();
  (*(v5 + 8))(v9, v2);

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v13 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v13, qword_1EDAC2AB0);
  v14 = sub_1B6220B14();
  v15 = sub_1B62217F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_39();
    v26[0] = v17;
    OUTLINED_FUNCTION_80_1(4.8149e-34);
    v20 = 0x796C696164;
    if (!v21)
    {
      v20 = 0x6369646F69726570;
      v19 = 0xE800000000000000;
    }

    if (v10)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0x796C72756F68;
    }

    if (v10)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    v24 = sub_1B602EEB0(v22, v23, v26);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_1B6020000, v14, v15, "Purged metadata for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v25 = OUTLINED_FUNCTION_200();
    MEMORY[0x1B8C91C90](v25);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }
}

void sub_1B61A7E78()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A7FD4()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A8130()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A828C()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A83E8()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A8544()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A86A0()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}

void sub_1B61A87FC()
{
  OUTLINED_FUNCTION_51_3();
  sub_1B6220D64();
  OUTLINED_FUNCTION_64_2();
  if (v0)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v3 = sub_1B6220B34();
    OUTLINED_FUNCTION_38_6(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_58_1();
    if (OUTLINED_FUNCTION_59_2())
    {
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_45_4();
      OUTLINED_FUNCTION_26(7.2225e-34);
      v5 = v0;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v8 = OUTLINED_FUNCTION_60_2(v6, v7);
      OUTLINED_FUNCTION_65_2(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_472();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_23_15();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_24_12();
      v19 = OUTLINED_FUNCTION_200();
      MEMORY[0x1B8C91C90](v19);

      OUTLINED_FUNCTION_47_3();
    }

    else
    {

      OUTLINED_FUNCTION_47_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_3();
  }
}