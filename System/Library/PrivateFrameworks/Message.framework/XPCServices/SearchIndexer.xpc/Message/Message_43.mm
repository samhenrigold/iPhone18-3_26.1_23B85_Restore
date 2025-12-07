uint64_t sub_1002C17F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v44 = a2 + 32;
    v45 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
        return result;
      }

      v6 = (v4 + 96 * v3);
      v7 = (v5 + 96 * v3);
      if (v6[1] != v7[1])
      {
        return 0;
      }

      v8 = *v6;
      v9 = *v7;
      v10 = *(*v6 + 16);
      if (v10 != *(*v7 + 16))
      {
        return 0;
      }

      v11 = v6[2];
      v12 = *(v6 + 6);
      v13 = *(v6 + 8);
      v14 = *(v6 + 36);
      v15 = v6[5];
      v16 = *(v6 + 48);
      v17 = v6[7];
      v18 = *(v6 + 64);
      v19 = v6[9];
      result = *(v6 + 20);
      v20 = *(v6 + 21);
      v21 = *(v6 + 88);
      v22 = v7[2];
      v23 = *(v7 + 6);
      v24 = *(v7 + 8);
      v25 = *(v7 + 36);
      v26 = v7[5];
      v27 = *(v7 + 48);
      v28 = v7[7];
      v29 = *(v7 + 64);
      v30 = v7[9];
      v31 = *(v7 + 20);
      v46 = *(v7 + 21);
      v32 = *(v7 + 88);
      if (v10)
      {
        if (v8 != v9)
        {
          break;
        }
      }

LABEL_13:
      if ((v12 | (v12 << 32)) != (v23 | (v23 << 32)))
      {
        return 0;
      }

      v35 = *(v11 + 16);
      if (v35 != *(v22 + 16))
      {
        return 0;
      }

      if (v35 && v11 != v22)
      {
        v36 = (v11 + 32);
        v37 = (v22 + 32);
        while (*v36 == *v37)
        {
          ++v36;
          ++v37;
          if (!--v35)
          {
            goto LABEL_20;
          }
        }

        return 0;
      }

LABEL_20:
      if (v14)
      {
        if (!v25)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == v24)
        {
          v38 = v25;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          return 0;
        }
      }

      if (v16)
      {
        if (!v27)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == v15)
        {
          v39 = v27;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      if (v18)
      {
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v29)
        {
          return 0;
        }

        if ((v28 | v17) < 0)
        {
          goto LABEL_69;
        }

        if (v28 != v17)
        {
          return 0;
        }
      }

      if (v19)
      {
        if (v19 == 1)
        {
          if (v30 != 1)
          {
            return 0;
          }
        }

        else if (v19 == 2)
        {
          if (v30 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v30 < 3)
          {
            return 0;
          }

          if ((result | (result << 32)) != (v31 | (v31 << 32)))
          {
            return 0;
          }

          v40 = *(v19 + 16);
          if (v40 != *(v30 + 16))
          {
            return 0;
          }

          if (v40 && v19 != v30)
          {
            v41 = (v19 + 32);
            v42 = (v30 + 32);
            while (*v41 == *v42)
            {
              ++v41;
              ++v42;
              if (!--v40)
              {
                goto LABEL_57;
              }
            }

            return 0;
          }
        }
      }

      else if (v30)
      {
        return 0;
      }

LABEL_57:
      if (v21)
      {
        v5 = v44;
        v4 = v45;
        if (!v32)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == v46)
        {
          v43 = v32;
        }

        else
        {
          v43 = 1;
        }

        v5 = v44;
        v4 = v45;
        if (v43)
        {
          return 0;
        }
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v33 = (v8 + 32);
    v34 = (v9 + 32);
    while (*v33 == *v34)
    {
      ++v33;
      ++v34;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1002C1AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  if (*(a2 + 32) != *(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (*(a1 + v3 + 48) == 1)
    {
      if (!*(a2 + v3 + 48))
      {
        return 0;
      }
    }

    else if ((*(a2 + v3 + 48) & 1) != 0 || *(a1 + v3 + 40) != *(a2 + v3 + 40))
    {
      return 0;
    }

    if ((*(a1 + v3 + 49) ^ *(a2 + v3 + 49)))
    {
      break;
    }

    if (!--v2)
    {
      return 1;
    }

    v4 = a1 + v3;
    v5 = a2 + v3;
    v3 += 24;
  }

  while (*(v5 + 56) == *(v4 + 56));
  return 0;
}

uint64_t sub_1002C1B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1002C1C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = *(i - 1);
    v9 = *i;
    v10 = *v4 >> 62;
    v11 = *i >> 62;
    if (v10 == 3)
    {
      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *i >> 62 == 3;
      if (v14 && !v8 && v9 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        v17 = __OFSUB__(v19, v20);
        v13 = v19 - v20;
        if (v17)
        {
          goto LABEL_118;
        }

        goto LABEL_28;
      }

      v13 = 0;
      if (v11 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      LODWORD(v13) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_119;
      }

      v13 = v13;
      if (v11 <= 1)
      {
LABEL_29:
        if (v11)
        {
          LODWORD(v18) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
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
          }

          v18 = v18;
        }

        else
        {
          v18 = BYTE6(v9);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v13 = BYTE6(v6);
      if (v11 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v11 != 2)
    {
      if (v13)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
      goto LABEL_117;
    }

LABEL_33:
    if (v13 != v18)
    {
      return 0;
    }

    if (v13 < 1)
    {
      goto LABEL_6;
    }

    if (v10 <= 1)
    {
      v66 = *(i - 1);
      if (!v10)
      {
        __s2[0] = *(v4 - 1);
        LOWORD(__s2[1]) = v6;
        BYTE2(__s2[1]) = BYTE2(v6);
        BYTE3(__s2[1]) = BYTE3(v6);
        BYTE4(__s2[1]) = BYTE4(v6);
        BYTE5(__s2[1]) = BYTE5(v6);
        sub_100014CEC(v7, v6);
        sub_100014CEC(v66, v9);
        sub_100066884(__s2, v66, v9, &v67);
        v21 = v66;
        goto LABEL_52;
      }

      v64 = v3;
      v26 = v7;
      if (v7 > v7 >> 32)
      {
        goto LABEL_120;
      }

      v65 = *(v4 - 1);
      sub_100014CEC(v7, v6);
      sub_100014CEC(v66, v9);
      v27 = sub_1004A40D4();
      if (v27)
      {
        v28 = v27;
        v29 = sub_1004A4104();
        if (__OFSUB__(v26, v29))
        {
          goto LABEL_122;
        }

        __s1a = (v26 - v29 + v28);
      }

      else
      {
        __s1a = 0;
      }

      sub_1004A40F4();
      v30 = v65;
      if (v11 == 2)
      {
        v48 = *(v66 + 16);
        v49 = *(v66 + 24);
        v36 = sub_1004A40D4();
        if (v36)
        {
          v50 = sub_1004A4104();
          if (__OFSUB__(v48, v50))
          {
            goto LABEL_129;
          }

          v36 += v48 - v50;
        }

        v17 = __OFSUB__(v49, v48);
        v51 = v49 - v48;
        if (v17)
        {
          goto LABEL_126;
        }

        v52 = sub_1004A40F4();
        if (v52 >= v51)
        {
          v39 = v51;
        }

        else
        {
          v39 = v52;
        }

        v40 = __s1a;
        v3 = v64;
        if (!__s1a)
        {
          goto LABEL_137;
        }

        if (!v36)
        {
          goto LABEL_136;
        }
      }

      else
      {
        v12 = v11 == 1;
        v31 = v66;
        if (!v12)
        {
          v47 = __s1a;
          __s2[0] = v66;
          LOWORD(__s2[1]) = v9;
          BYTE2(__s2[1]) = BYTE2(v9);
          BYTE3(__s2[1]) = BYTE3(v9);
          BYTE4(__s2[1]) = BYTE4(v9);
          BYTE5(__s2[1]) = BYTE5(v9);
          if (!__s1a)
          {
            goto LABEL_131;
          }

LABEL_94:
          v53 = memcmp(v47, __s2, BYTE6(v9));
          sub_100014D40(v31, v9);
          sub_100014D40(v30, v6);
          if (v53)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v66 >> 32 < v66)
        {
          goto LABEL_125;
        }

        v36 = sub_1004A40D4();
        if (v36)
        {
          v37 = sub_1004A4104();
          if (__OFSUB__(v66, v37))
          {
            goto LABEL_130;
          }

          v36 += v66 - v37;
        }

        v38 = sub_1004A40F4();
        if (v38 >= (v66 >> 32) - v66)
        {
          v39 = (v66 >> 32) - v66;
        }

        else
        {
          v39 = v38;
        }

        v40 = __s1a;
        if (!__s1a)
        {
          goto LABEL_139;
        }

        if (!v36)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_102;
    }

    if (v10 != 2)
    {
      memset(__s2, 0, 14);
      sub_100014CEC(v7, v6);
      sub_100014CEC(v8, v9);
      sub_100066884(__s2, v8, v9, &v67);
      v21 = v8;
LABEL_52:
      sub_100014D40(v21, v9);
      sub_100014D40(v7, v6);
      if (!v67)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v3;
    v65 = *(v4 - 1);
    v22 = *(v7 + 16);
    sub_100014CEC(v7, v6);
    v66 = v8;
    sub_100014CEC(v8, v9);
    v23 = sub_1004A40D4();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1004A4104();
      if (__OFSUB__(v22, v25))
      {
        goto LABEL_121;
      }

      __s1 = (v22 - v25 + v24);
    }

    else
    {
      __s1 = 0;
    }

    sub_1004A40F4();
    v30 = v65;
    if (v11 != 2)
    {
      break;
    }

    v41 = *(v8 + 16);
    v42 = *(v8 + 24);
    v43 = sub_1004A40D4();
    if (v43)
    {
      v44 = v43;
      v45 = sub_1004A4104();
      if (__OFSUB__(v41, v45))
      {
        goto LABEL_127;
      }

      v36 = v41 - v45 + v44;
      v17 = __OFSUB__(v42, v41);
      v46 = v42 - v41;
      if (v17)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v36 = 0;
      v17 = __OFSUB__(v42, v41);
      v46 = v42 - v41;
      if (v17)
      {
        goto LABEL_124;
      }
    }

    v54 = sub_1004A40F4();
    if (v54 >= v46)
    {
      v39 = v46;
    }

    else
    {
      v39 = v54;
    }

    v40 = __s1;
    if (!__s1)
    {
      goto LABEL_135;
    }

    v3 = v63;
    if (!v36)
    {
      goto LABEL_134;
    }

LABEL_102:
    if (v40 == v36)
    {
      goto LABEL_111;
    }

    v55 = v39;
    v56 = v36;
LABEL_113:
    v59 = memcmp(v40, v56, v55);
    sub_100014D40(v66, v9);
    sub_100014D40(v65, v6);
    if (v59)
    {
      return 0;
    }

LABEL_6:
    v4 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  v12 = v11 == 1;
  v31 = v8;
  if (v12)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_123;
    }

    v32 = sub_1004A40D4();
    if (v32)
    {
      v33 = v32;
      v34 = sub_1004A4104();
      if (__OFSUB__(v8, v34))
      {
        goto LABEL_128;
      }

      v35 = (v8 - v34 + v33);
    }

    else
    {
      v35 = 0;
    }

    v3 = v63;
    v57 = sub_1004A40F4();
    if (v57 >= (v8 >> 32) - v8)
    {
      v58 = (v8 >> 32) - v8;
    }

    else
    {
      v58 = v57;
    }

    v40 = __s1;
    if (!__s1)
    {
      goto LABEL_133;
    }

    if (!v35)
    {
      goto LABEL_132;
    }

    if (__s1 == v35)
    {
LABEL_111:
      sub_100014D40(v66, v9);
      sub_100014D40(v65, v6);
      goto LABEL_6;
    }

    v55 = v58;
    v56 = v35;
    goto LABEL_113;
  }

  v47 = __s1;
  __s2[0] = v8;
  LOWORD(__s2[1]) = v9;
  BYTE2(__s2[1]) = BYTE2(v9);
  BYTE3(__s2[1]) = BYTE3(v9);
  BYTE4(__s2[1]) = BYTE4(v9);
  BYTE5(__s2[1]) = BYTE5(v9);
  if (__s1)
  {
    goto LABEL_94;
  }

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

  __break(1u);
  return result;
}

uint64_t sub_1002C2370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 32)
  {
    result = 0;
    v7 = a1 + i;
    v8 = a2 + i;
    if (*(a2 + i + 32) != *(a1 + i + 32) || ((*(v7 + 36) ^ *(v8 + 36)) & 1) != 0 || ((*(v7 + 37) ^ *(v8 + 37)) & 1) != 0 || ((*(v7 + 38) ^ *(v8 + 38)) & 1) != 0 || ((*(v7 + 39) ^ *(v8 + 39)) & 1) != 0 || ((*(v7 + 40) ^ *(v8 + 40)) & 1) != 0 || ((*(v7 + 41) ^ *(v8 + 41)) & 1) != 0 || *(v7 + 42) != *(v8 + 42) || *(v7 + 43) != *(v8 + 43) || ((*(v7 + 44) ^ *(v8 + 44)) & 1) != 0)
    {
      break;
    }

    v9 = *(v7 + 45);
    v10 = *(v8 + 45);
    if (v9 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v10 == 2)
      {
        return 0;
      }

      result = 0;
      v11 = v9 ^ v10;
      if ((v9 ^ v10))
      {
        return result;
      }

      v12 = (v10 & 0x100) == 0;
      v13 = (v10 & 0x10000) == 0;
      v14 = (v10 & 0x1000000) == 0;
      v15 = (v10 & &_mh_execute_header) == 0;
      v16 = (v10 & 0x10000000000) == 0;
      if (((v9 >> 8) & 1) == v12 || ((v9 >> 16) & 1) == v13 || ((v9 >> 24) & 1) == v14 || (BYTE4(v9) & 1) == v15 || ((v9 >> 40) & 1) == v16 || HIWORD(v11))
      {
        return result;
      }

      if ((*(v7 + 53) ^ *(v8 + 53)))
      {
        return 0;
      }
    }

    if ((sub_100083308(*(v7 + 56), *(v8 + 56)) & 1) == 0)
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002C2550(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = a2 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_70;
      }

      v8 = (v5 + 40 * v3);
      v9 = (v6 + 40 * v3);
      if (*v8 != *v9)
      {
        return 0;
      }

      if (*(v9 + 1) != *(v8 + 1))
      {
        return 0;
      }

      if ((*(v8 + 4) | (*(v8 + 4) << 32)) != (*(v9 + 4) | (*(v9 + 4) << 32)))
      {
        return 0;
      }

      v10 = *(v8 + 1);
      v11 = *(v9 + 1);
      v12 = *(v10 + 16);
      if (v12 != *(v11 + 16))
      {
        return 0;
      }

      v14 = *(v8 + 3);
      v13 = *(v8 + 4);
      v15 = *(v9 + 3);
      v16 = *(v9 + 4);
      if (v12)
      {
        v17 = v10 == v11;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v10 + 32);
        v19 = (v11 + 32);
        while (v12)
        {
          if (*v18 != *v19)
          {
            return 0;
          }

          ++v18;
          ++v19;
          if (!--v12)
          {
            goto LABEL_21;
          }
        }

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
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
      }

LABEL_21:
      v20 = v13 >> 62;
      v21 = v16 >> 62;
      if (v13 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v28 = *(v14 + 16);
          v27 = *(v14 + 24);
          v25 = __OFSUB__(v27, v28);
          v22 = v27 - v28;
          if (v25)
          {
            goto LABEL_74;
          }

          goto LABEL_37;
        }

        v22 = 0;
        if (v21 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v20)
      {
        LODWORD(v22) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_73;
        }

        v22 = v22;
        if (v21 <= 1)
        {
LABEL_38:
          if (v21)
          {
            LODWORD(v26) = HIDWORD(v15) - v15;
            if (__OFSUB__(HIDWORD(v15), v15))
            {
              goto LABEL_72;
            }

            v26 = v26;
          }

          else
          {
            v26 = BYTE6(v16);
          }

          goto LABEL_42;
        }
      }

      else
      {
        v22 = BYTE6(v13);
        if (v21 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_31:
      if (v21 != 2)
      {
        if (v22)
        {
          return 0;
        }

        goto LABEL_7;
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_42:
      if (v22 != v26)
      {
        return 0;
      }

      if (v22 < 1)
      {
        goto LABEL_7;
      }

      v42 = v5;
      if (v20 > 1)
      {
        v40 = v15;
        if (v20 == 2)
        {
          v38 = v4;
          v39 = v6;
          v31 = *(v14 + 16);
          v37 = *(v14 + 24);

          sub_100014CEC(v14, v13);

          sub_100014CEC(v40, v16);
          v32 = sub_1004A40D4();
          if (v32)
          {
            v33 = sub_1004A4104();
            if (__OFSUB__(v31, v33))
            {
              goto LABEL_77;
            }

            v32 += v31 - v33;
          }

          if (__OFSUB__(v37, v31))
          {
            goto LABEL_76;
          }

          sub_1004A40F4();
          v34 = v40;
          v4 = v38;
          sub_100066884(v32, v40, v16, v44);
          goto LABEL_63;
        }

        memset(v44, 0, 14);

        sub_100014CEC(v14, v13);

        sub_100014CEC(v40, v16);
        sub_100066884(v44, v40, v16, &v43);

        sub_100014D40(v40, v16);

        sub_100014D40(v14, v13);
        v30 = v43;
      }

      else
      {
        v39 = v6;
        if (v20)
        {
          v41 = v15;
          if (v14 >> 32 < v14)
          {
            goto LABEL_75;
          }

          sub_100014CEC(v14, v13);

          sub_100014CEC(v41, v16);
          v35 = sub_1004A40D4();
          if (v35)
          {
            v36 = sub_1004A4104();
            if (__OFSUB__(v14, v36))
            {
              goto LABEL_78;
            }

            v35 += v14 - v36;
          }

          sub_1004A40F4();
          v34 = v41;
          sub_100066884(v35, v41, v16, v44);
LABEL_63:

          sub_100014D40(v34, v16);

          sub_100014D40(v14, v13);
          v5 = v42;
          v6 = v39;
          if ((v44[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }

        v44[0] = v14;
        LOWORD(v44[1]) = v13;
        BYTE2(v44[1]) = BYTE2(v13);
        BYTE3(v44[1]) = BYTE3(v13);
        BYTE4(v44[1]) = BYTE4(v13);
        BYTE5(v44[1]) = BYTE5(v13);
        v29 = v15;

        sub_100014CEC(v14, v13);

        sub_100014CEC(v29, v16);
        sub_100066884(v44, v29, v16, &v43);

        sub_100014D40(v29, v16);

        sub_100014D40(v14, v13);
        v30 = v43;
        v6 = v39;
      }

      v5 = v42;
      if (!v30)
      {
        return 0;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v22 = 0;
    if (!v14 && v13 == 0xC000000000000000 && v16 >> 62 == 3)
    {
      v22 = 0;
      if (!v15 && v16 == 0xC000000000000000)
      {
        goto LABEL_7;
      }
    }

LABEL_37:
    if (v21 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_1002C2AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = (a2 + 32 + 16 * v3);
    if (v6[1] != v7[1])
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(*v6 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C2BC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
  __chkstk_darwin(v7 - 8);
  v54 = &v47 - v8;
  v9 = sub_10000C9C0(&qword_1005D71A8, &qword_1004F0610);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v53 = type metadata accessor for MessageMetadata(0);
  __chkstk_darwin(v53);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_54:
    v45 = 0;
    return v45 & 1;
  }

  if (v18 && a1 != a2)
  {
    v50 = v9;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v48 = *(v15 + 72);
    v49 = (v5 + 48);
    v22 = v53;
    while (1)
    {
      sub_1002C383C(v20, v17);
      v51 = v20;
      sub_1002C383C(v21, v13);
      if (*v13 != *v17 || *(v17 + 1) != *(v13 + 1) || v17[16] != v13[16] || ((v17[17] ^ v13[17]) & 1) != 0 || ((v17[18] ^ v13[18]) & 1) != 0 || ((v17[19] ^ v13[19]) & 1) != 0)
      {
        break;
      }

      v23 = v17[20];
      v24 = v17[21];
      v25 = v17[22];
      v26 = v17[23];
      v27 = v17[24];
      v28 = v13[20];
      v29 = v13[21];
      v30 = v13[22];
      v31 = v13[23];
      v32 = v13[24];
      if (v23 == 2)
      {
        if (v28 != 2)
        {
          break;
        }
      }

      else if (v28 == 2 || ((v28 ^ v23) & 1) != 0)
      {
        break;
      }

      if (v24 == 2)
      {
        if (v29 != 2)
        {
          break;
        }
      }

      else if (v29 == 2 || ((v29 ^ v24) & 1) != 0)
      {
        break;
      }

      if (v25 == 3)
      {
        if (v30 != 3)
        {
          break;
        }
      }

      else if (v30 == 3 || v25 != v30)
      {
        break;
      }

      if (v26 == 8)
      {
        if (v31 != 8)
        {
          break;
        }
      }

      else if (v31 == 8 || v26 != v31)
      {
        break;
      }

      if (v27 == 2)
      {
        if (v32 != 2)
        {
          break;
        }
      }

      else if (v32 == 2 || ((v32 ^ v27) & 1) != 0)
      {
        break;
      }

      v33 = *(v17 + 4);
      v34 = *(v13 + 4);
      if (v33)
      {
        if (!v34)
        {
          break;
        }

        v35 = sub_100083478(v33, v34);

        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      else if (v34)
      {
        break;
      }

      v36 = v22[8];
      v37 = *(v50 + 48);
      sub_1002C38A0(&v17[v36], v11);
      sub_1002C38A0(&v13[v36], &v11[v37]);
      v38 = *v49;
      if ((*v49)(v11, 1, v4) == 1)
      {
        if (v38(&v11[v37], 1, v4) != 1)
        {
          goto LABEL_52;
        }

        sub_100025F40(v11, &qword_1005D05E8, &unk_1004D4000);
      }

      else
      {
        sub_1002C38A0(v11, v54);
        if (v38(&v11[v37], 1, v4) == 1)
        {
          sub_1002C3910(v54, type metadata accessor for MessageMetadata.UnparsedHeader);
LABEL_52:
          sub_100025F40(v11, &qword_1005D71A8, &qword_1004F0610);
          break;
        }

        v39 = v54;
        v40 = v4;
        v41 = v52;
        sub_1002C3970(&v11[v37], v52);
        v42 = static MessageData.BodyData.== infix(_:_:)(v39, v41);
        v43 = v41;
        v4 = v40;
        v22 = v53;
        sub_1002C3910(v43, type metadata accessor for MessageMetadata.UnparsedHeader);
        sub_1002C3910(v39, type metadata accessor for MessageMetadata.UnparsedHeader);
        sub_100025F40(v11, &qword_1005D05E8, &unk_1004D4000);
        if ((v42 & 1) == 0)
        {
          break;
        }
      }

      if (*&v17[v22[9]] != *&v13[v22[9]])
      {
        break;
      }

      v44 = v17[v22[10]] ^ v13[v22[10]];
      sub_1002C3910(v13, type metadata accessor for MessageMetadata);
      sub_1002C3910(v17, type metadata accessor for MessageMetadata);
      if ((v44 & 1) == 0)
      {
        v21 += v48;
        v20 = v51 + v48;
        if (--v18)
        {
          continue;
        }
      }

      v45 = v44 ^ 1;
      return v45 & 1;
    }

    sub_1002C3910(v13, type metadata accessor for MessageMetadata);
    sub_1002C3910(v17, type metadata accessor for MessageMetadata);
    goto LABEL_54;
  }

  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1002C31C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(i - 4) == *(v3 - 4); i += 3)
    {
      v6 = *(v3 - 12);
      v7 = *v3;
      v8 = *(i - 12);
      v9 = *i;
      if (v6 == 2)
      {
        if (v8 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 2)
        {
          return 0;
        }

        result = 0;
        if (((v8 ^ v6) & 1) != 0 || ((v6 >> 8) & 1) == ((v8 & 0x100) == 0) || ((v6 >> 16) & 1) == ((v8 & 0x10000) == 0) || ((v6 >> 24) & 1) == ((v8 & 0x1000000) == 0))
        {
          return result;
        }

        v10 = *(v3 - 4);
        v11 = *(i - 4);
        if ((v6 & 0xFF00000000) == 0x200000000)
        {
          if (BYTE4(v8) != 2)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (BYTE4(v8) == 2 || ((((v6 & &_mh_execute_header) == 0) ^ HIDWORD(v8)) & 1) == 0)
          {
            return result;
          }
        }

        if ((v6 & 0xFF0000000000) == 0x20000000000)
        {
          if (BYTE5(v8) != 2)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (BYTE5(v8) == 2 || ((((v6 & 0x10000000000) == 0) ^ (v8 >> 40)) & 1) == 0)
          {
            return result;
          }
        }

        if ((v6 & 0xFF000000000000) == 0x3000000000000)
        {
          if (BYTE6(v8) != 3)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (BYTE6(v8) == 3 || ((v8 ^ v6) & 0xFF000000000000) != 0)
          {
            return result;
          }
        }

        v12 = HIBYTE(v8);
        v13 = HIBYTE(v6);
        if (v13 == 8)
        {
          if (v12 != 8)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v12 == 8 || v13 != v12)
          {
            return result;
          }
        }

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
      }

      if (v7)
      {
        if (!v9)
        {
          return 0;
        }

        v14 = sub_100083478(v7, v9);

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      v3 += 3;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t static MailboxPriorityInfo.__derived_struct_equals(_:_:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1002BF750(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1002C2AF8(a2, a4);
}

void MailboxPriorityInfo.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1002C36A0(a1, a2);
  v4 = *(a3 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a3 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      sub_1004A6EB4(v6);
      --v4;
    }

    while (v4);
  }
}

Swift::Int MailboxPriorityInfo.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_1002C36A0(v8, a1);
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      sub_1004A6EB4(v6);
      --v4;
    }

    while (v4);
  }

  return sub_1004A6F14();
}

void sub_1002C3574(__int128 *a1)
{
  v2 = v1[1];
  sub_1002C36A0(a1, *v1);
  v3 = *(v2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      sub_1004A6EB4(v5);
      --v3;
    }

    while (v3);
  }
}

Swift::Int sub_1002C35CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1004A6E94();
  sub_1002C36A0(v8, v2);
  v4 = *(v3 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      sub_1004A6EB4(v6);
      --v4;
    }

    while (v4);
  }

  return sub_1004A6F14();
}

uint64_t sub_1002C3644(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1002BF750(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1002C2AF8(v2, v3);
}

void sub_1002C36A0(__int128 *a1, uint64_t a2)
{
  sub_1004A6F14();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= sub_1004A6F14())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 10) | (16 * v10)) + 8);
    sub_1004A6E94();
    sub_1004A6EB4(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1002C37D8()
{
  result = qword_1005D71A0;
  if (!qword_1005D71A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxPriorityInfo, &type metadata for MailboxPriorityInfo, v0, v1);
    atomic_store(result, &qword_1005D71A0);
  }

  return result;
}

uint64_t sub_1002C383C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C38A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C3910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002C3970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MessageMetadata.flags.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageMetadata.messageHeader.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageMetadata(0) + 32);

  return sub_1002C38A0(v3, a1);
}

uint64_t MessageMetadata.messageHeader.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageMetadata(0) + 32);

  return sub_1000FC114(a1, v3);
}

uint64_t MessageMetadata.messageSize.setter(uint64_t a1)
{
  result = type metadata accessor for MessageMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MessageMetadata.indexingHint.setter(char a1)
{
  result = type metadata accessor for MessageMetadata(0);
  *(v1 + *(result + 40)) = a1 & 1;
  return result;
}

uint64_t MessageMetadata.init(uid:internalDate:flags:gmailLabels:messageHeader:messageSize:indexingHint:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for MessageMetadata(0);
  v18 = v17[8];
  v19 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_1000FC114(a6, a9 + v18);
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + v17[9]) = a7;
  *(a9 + v17[10]) = a8 & 1;
  return result;
}

uint64_t MessageMetadata.UnparsedHeader.underlying.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MessageData.BodyData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C4310(v1, v5);
  v6 = sub_1004A5384();
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t MessageMetadata.UnparsedHeader.count.getter()
{
  v1 = type metadata accessor for MessageData.BodyData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004A5384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C4310(v0, v3);
  (*(v5 + 32))(v7, v3, v4);
  v8 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t _s16IMAP2Persistence15MessageMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_10000C9C0(&qword_1005D71A8, &qword_1004F0610);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  if (*a2 != *a1 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_36;
  }

  v15 = v12;
  v16 = (*(a1 + 17) & 1) != 0 ? 256 : 0;
  v17 = (*(a1 + 18) & 1) != 0 ? 0x10000 : 0;
  v18 = (*(a1 + 19) & 1) != 0 ? 0x1000000 : 0;
  v19 = (*(a1 + 20) << 32) | (*(a1 + 21) << 40) | (*(a1 + 22) << 48) | *(a1 + 16) & 1 | v16 | v17 | v18 | (*(a1 + 23) << 56);
  v20 = (*(a2 + 17) & 1) != 0 ? 256 : 0;
  v21 = (*(a2 + 18) & 1) != 0 ? 0x10000 : 0;
  v22 = (*(a2 + 19) & 1) != 0 ? 0x1000000 : 0;
  if ((sub_1002BE1D4(v19, *(a1 + 24), (*(a2 + 20) << 32) | (*(a2 + 21) << 40) | (*(a2 + 22) << 48) | *(a2 + 16) & 1 | v20 | v21 | v22 | (*(a2 + 23) << 56), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_36;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_36;
    }

    v25 = sub_100083478(v23, v24);

    if ((v25 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v24)
  {
LABEL_36:
    v30 = 0;
    return v30 & 1;
  }

  v33 = type metadata accessor for MessageMetadata(0);
  v26 = v33[8];
  v27 = *(v15 + 48);
  sub_1002C38A0(a1 + v26, v14);
  sub_1002C38A0(a2 + v26, &v14[v27]);
  v28 = *(v5 + 48);
  if (v28(v14, 1, v4) == 1)
  {
    if (v28(&v14[v27], 1, v4) == 1)
    {
      sub_100025F40(v14, &qword_1005D05E8, &unk_1004D4000);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  sub_1002C38A0(v14, v10);
  if (v28(&v14[v27], 1, v4) == 1)
  {
    sub_1002C486C(v10);
LABEL_32:
    sub_100025F40(v14, &qword_1005D71A8, &qword_1004F0610);
    goto LABEL_36;
  }

  sub_1002C3970(&v14[v27], v7);
  v29 = static MessageData.BodyData.== infix(_:_:)(v10, v7);
  sub_1002C486C(v7);
  sub_1002C486C(v10);
  sub_100025F40(v14, &qword_1005D05E8, &unk_1004D4000);
  if ((v29 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (*(a1 + v33[9]) != *(a2 + v33[9]))
  {
    goto LABEL_36;
  }

  v30 = *(a1 + v33[10]) ^ *(a2 + v33[10]) ^ 1;
  return v30 & 1;
}

uint64_t sub_1002C4310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002C4378()
{
  result = qword_1005D71B0;
  if (!qword_1005D71B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageMetadata.IndexingHint, &type metadata for MessageMetadata.IndexingHint, v0, v1);
    atomic_store(result, &qword_1005D71B0);
  }

  return result;
}

uint64_t sub_1002C43E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1002C44BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002C456C(uint64_t a1)
{
  sub_1002C4630(319);
  if (v1 <= 0x3F)
  {
    sub_1002C4694(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002C4630(uint64_t a1)
{
  if (!qword_1005D7220)
  {
    sub_10000DEFC(&qword_1005D7228, &qword_1004F06F8);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D7220);
    }
  }
}

void sub_1002C4694(uint64_t a1)
{
  if (!qword_1005D7230)
  {
    type metadata accessor for MessageMetadata.UnparsedHeader(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D7230);
    }
  }
}

uint64_t sub_1002C4700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002C4780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1002C47F0(uint64_t a1)
{
  result = type metadata accessor for MessageData.BodyData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002C486C(uint64_t a1)
{
  v2 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C48CC()
{
  v26 = sub_1004A52B4();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v27 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C9C0(&qword_1005D7450, &unk_1004F0AE0);
  __chkstk_darwin(v23);
  v3 = &v20 - v2;
  v4 = sub_1004A52C4();
  result = sub_1004A52C4();
  v6 = result;
  v7 = *(result + 16);
  v24 = *(v4 + 16);
  if (v24 == v7)
  {
    v8 = 0;
    v25 = v0 + 16;
    v21 = (v0 + 32);
    v22 = v4;
    while (1)
    {
      if (v24 == v8)
      {

        return 1;
      }

      if (v8 >= *(v4 + 16))
      {
        break;
      }

      v9 = (*(v0 + 80) + 32) & ~*(v0 + 80);
      v10 = *(v0 + 72) * v8;
      v11 = *(v0 + 16);
      result = v11(v27, v4 + v9 + v10, v26);
      v12 = *(v6 + 16);
      if (v8 == v12)
      {

        (*(v0 + 8))(v27, v26);
        return 1;
      }

      if (v8++ >= v12)
      {
        goto LABEL_17;
      }

      v13 = v6 + v9;
      v14 = &v3[*(v23 + 48)];
      v15 = v26;
      (*v21)(v3, v27, v26);
      v11(v14, v13 + v10, v15);
      v16 = sub_1004A5284();
      if (v16 != sub_1004A5284() || (v17 = sub_1004A52A4(), v18 = sub_1004A52A4(), v17 != v18))
      {
        sub_100025F40(v3, &qword_1005D7450, &unk_1004F0AE0);

        goto LABEL_13;
      }

      __chkstk_darwin(v18);
      *(&v20 - 2) = v14;
      sub_1004A5294();
      v19 = v28;
      result = sub_100025F40(v3, &qword_1005D7450, &unk_1004F0AE0);
      v4 = v22;
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_10:

LABEL_13:

    return 0;
  }

  return result;
}

uint64_t MessageSectionData.segment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData(0) + 28);

  return sub_1002C5B58(v3, a1);
}

uint64_t MessageSectionData.segment.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData(0) + 28);

  return sub_1002C5BDC(a1, v3);
}

uint64_t MessageSectionData.init(mailbox:message:section:segment:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 12) = a3;
  *(a6 + 16) = a4;
  v7 = a6 + *(type metadata accessor for MessageSectionData(0) + 28);

  return sub_1002C5C40(a5, v7);
}

uint64_t MessageSectionData.Segment.isFinal.setter(char a1)
{
  result = type metadata accessor for MessageSectionData.Segment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t MessageSectionData.Segment.initial.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData.Segment(0) + 24);

  return sub_1002C5CA4(a1, v3);
}

__n128 MessageSectionData.Segment.Initial.bodyStructure.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1002C5D14(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

__n128 MessageSectionData.Segment.Initial.init(bodyStructure:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1002C4FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return _s16IMAP2Persistence18MessageSectionDataV7SegmentV7InitialV23__derived_struct_equalsySbAG_AGtFZ_0(v13, v15) & 1;
}

uint64_t MessageSectionData.Segment.init(data:isFinal:initial:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MessageSectionData.Segment(0);
  v9 = a4 + *(v8 + 24);
  sub_1000503E0(v17);
  v10 = v17[9];
  *(v9 + 128) = v17[8];
  *(v9 + 144) = v10;
  *(v9 + 160) = v17[10];
  *(v9 + 176) = v18;
  v11 = v17[5];
  *(v9 + 64) = v17[4];
  *(v9 + 80) = v11;
  v12 = v17[7];
  *(v9 + 96) = v17[6];
  *(v9 + 112) = v12;
  v13 = v17[1];
  *v9 = v17[0];
  *(v9 + 16) = v13;
  v14 = v17[3];
  *(v9 + 32) = v17[2];
  *(v9 + 48) = v14;
  v15 = sub_1004A5384();
  (*(*(v15 - 8) + 32))(a4, a1, v15);
  *(a4 + *(v8 + 20)) = a2;
  return sub_1002C5CA4(a3, v9);
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Segment(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    goto LABEL_2;
  }

  v6 = (a1 + *(v4 + 24));
  v8 = v6[1];
  v7 = v6[2];
  v9 = v7;
  v48[3] = v6[3];
  v48[2] = v7;
  v11 = v6[5];
  v10 = v6[6];
  v12 = v10;
  v48[7] = v6[7];
  v48[6] = v10;
  v13 = v6[4];
  v14 = v6[3];
  v48[5] = v6[5];
  v48[4] = v13;
  v49 = *(v6 + 176);
  v15 = v6[9];
  v48[10] = v6[10];
  v16 = v6[8];
  v17 = v6[7];
  v48[9] = v6[9];
  v48[8] = v16;
  v18 = *v6;
  v19 = *v6;
  v48[1] = v6[1];
  v48[0] = v18;
  v20 = (a2 + *(v4 + 24));
  v21 = v20[9];
  v22 = v20[7];
  v57 = v20[8];
  v58 = v21;
  v23 = v20[9];
  v59 = v20[10];
  v24 = v20[5];
  v25 = v20[3];
  v53 = v20[4];
  v54 = v24;
  v26 = v20[5];
  v27 = v20[7];
  v55 = v20[6];
  v56 = v27;
  v28 = v20[1];
  v50[0] = *v20;
  v50[1] = v28;
  v29 = v20[3];
  v31 = *v20;
  v30 = v20[1];
  v51 = v20[2];
  v52 = v29;
  v32 = v6[9];
  __src[8] = v6[8];
  __src[9] = v32;
  __src[10] = v6[10];
  v33 = v6[5];
  __src[4] = v6[4];
  __src[5] = v33;
  v34 = v6[7];
  __src[6] = v6[6];
  __src[7] = v34;
  v35 = v6[1];
  __src[0] = *v6;
  __src[1] = v35;
  v36 = v6[3];
  __src[2] = v6[2];
  __src[3] = v36;
  v37 = v20[10];
  *(&__src[20] + 8) = v23;
  *(&__src[21] + 8) = v37;
  *(&__src[16] + 8) = v26;
  *(&__src[17] + 8) = v55;
  *(&__src[18] + 8) = v22;
  *(&__src[19] + 8) = v57;
  *(&__src[15] + 8) = v53;
  *(&__src[11] + 8) = v31;
  *(&__src[12] + 8) = v30;
  *(&__src[13] + 8) = v51;
  *(&__src[14] + 8) = v25;
  v61[8] = v16;
  v61[9] = v15;
  v61[10] = v6[10];
  v61[4] = v13;
  v61[5] = v11;
  v61[6] = v12;
  v61[7] = v17;
  v61[0] = v19;
  v61[1] = v8;
  v60 = *(v20 + 176);
  LOBYTE(__src[11]) = *(v6 + 176);
  BYTE8(__src[22]) = *(v20 + 176);
  v62 = *(v6 + 176);
  v61[2] = v9;
  v61[3] = v14;
  if (sub_10003EC1C(v61) == 1)
  {
    __dst[8] = *(&__src[19] + 8);
    __dst[9] = *(&__src[20] + 8);
    __dst[10] = *(&__src[21] + 8);
    LOBYTE(__dst[11]) = BYTE8(__src[22]);
    __dst[4] = *(&__src[15] + 8);
    __dst[5] = *(&__src[16] + 8);
    __dst[6] = *(&__src[17] + 8);
    __dst[7] = *(&__src[18] + 8);
    __dst[0] = *(&__src[11] + 8);
    __dst[1] = *(&__src[12] + 8);
    __dst[2] = *(&__src[13] + 8);
    __dst[3] = *(&__src[14] + 8);
    if (sub_10003EC1C(__dst) == 1)
    {
      v71 = __src[8];
      v72 = __src[9];
      v73 = __src[10];
      v74 = __src[11];
      v67 = __src[4];
      v68 = __src[5];
      v69 = __src[6];
      v70 = __src[7];
      v63 = __src[0];
      v64 = __src[1];
      v65 = __src[2];
      v66 = __src[3];
      sub_10000E268(v48, v44, &qword_1005CE230, &unk_1004D0950);
      sub_10000E268(v50, v44, &qword_1005CE230, &unk_1004D0950);
      sub_100025F40(&v63, &qword_1005CE230, &unk_1004D0950);
LABEL_9:
      v5 = sub_1002C48CC();
      return v5 & 1;
    }

LABEL_7:
    memcpy(__dst, __src, 0x169uLL);
    sub_10000E268(v48, &v63, &qword_1005CE230, &unk_1004D0950);
    sub_10000E268(v50, &v63, &qword_1005CE230, &unk_1004D0950);
    sub_100025F40(__dst, &qword_1005D7308, &qword_1004F0720);
    v5 = 0;
    return v5 & 1;
  }

  v44[8] = *(&__src[19] + 8);
  v44[9] = *(&__src[20] + 8);
  v44[10] = *(&__src[21] + 8);
  v45 = BYTE8(__src[22]);
  v44[4] = *(&__src[15] + 8);
  v44[5] = *(&__src[16] + 8);
  v44[6] = *(&__src[17] + 8);
  v44[7] = *(&__src[18] + 8);
  v44[0] = *(&__src[11] + 8);
  v44[1] = *(&__src[12] + 8);
  v44[2] = *(&__src[13] + 8);
  v44[3] = *(&__src[14] + 8);
  if (sub_10003EC1C(v44) == 1)
  {
    goto LABEL_7;
  }

  v40[8] = *(&__src[19] + 8);
  v40[9] = *(&__src[20] + 8);
  v40[10] = *(&__src[21] + 8);
  v40[4] = *(&__src[15] + 8);
  v40[5] = *(&__src[16] + 8);
  v40[6] = *(&__src[17] + 8);
  v40[7] = *(&__src[18] + 8);
  v40[0] = *(&__src[11] + 8);
  v40[1] = *(&__src[12] + 8);
  v40[2] = *(&__src[13] + 8);
  v40[3] = *(&__src[14] + 8);
  __dst[8] = *(&__src[19] + 8);
  __dst[9] = *(&__src[20] + 8);
  __dst[10] = *(&__src[21] + 8);
  __dst[4] = *(&__src[15] + 8);
  __dst[5] = *(&__src[16] + 8);
  __dst[6] = *(&__src[17] + 8);
  __dst[7] = *(&__src[18] + 8);
  __dst[0] = *(&__src[11] + 8);
  __dst[1] = *(&__src[12] + 8);
  v41 = BYTE8(__src[22]);
  LOBYTE(__dst[11]) = BYTE8(__src[22]);
  __dst[2] = *(&__src[13] + 8);
  __dst[3] = *(&__src[14] + 8);
  v71 = __src[8];
  v72 = __src[9];
  v73 = __src[10];
  v74 = __src[11];
  v67 = __src[4];
  v68 = __src[5];
  v69 = __src[6];
  v70 = __src[7];
  v63 = __src[0];
  v64 = __src[1];
  v65 = __src[2];
  v66 = __src[3];
  sub_10000E268(v48, v42, &qword_1005CE230, &unk_1004D0950);
  sub_10000E268(v50, v42, &qword_1005CE230, &unk_1004D0950);
  v38 = _s16IMAP2Persistence18MessageSectionDataV7SegmentV7InitialV23__derived_struct_equalsySbAG_AGtFZ_0(&v63, __dst);
  sub_100025F40(v40, &qword_1005CE230, &unk_1004D0950);
  v42[8] = __src[8];
  v42[9] = __src[9];
  v42[10] = __src[10];
  v43 = __src[11];
  v42[4] = __src[4];
  v42[5] = __src[5];
  v42[6] = __src[6];
  v42[7] = __src[7];
  v42[0] = __src[0];
  v42[1] = __src[1];
  v42[2] = __src[2];
  v42[3] = __src[3];
  sub_100025F40(v42, &qword_1005CE230, &unk_1004D0950);
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_2:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1002C5678@<X0>(uint64_t __s2@<X0>, void *__s1@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  if (__s1)
  {
    if (__s2)
    {
      __s2 = memcmp(__s1, __s2, a3 - __s1);
      *a4 = __s2 == 0;
      return __s2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return __s2;
}

uint64_t _s16IMAP2Persistence18MessageSectionDataV7SegmentV7InitialV23__derived_struct_equalsySbAG_AGtFZ_0(__int128 *a1, uint64_t a2)
{
  v4 = a1[9];
  v5 = a1[7];
  __src[8] = a1[8];
  __src[9] = v4;
  v6 = a1[9];
  __src[10] = a1[10];
  v7 = a1[5];
  v8 = a1[3];
  __src[4] = a1[4];
  __src[5] = v7;
  v9 = a1[5];
  v10 = a1[7];
  __src[6] = a1[6];
  __src[7] = v10;
  v11 = a1[1];
  __src[0] = *a1;
  __src[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  __src[2] = a1[2];
  __src[3] = v12;
  v15 = *(a2 + 128);
  v16 = *(a2 + 160);
  *(&__src[20] + 8) = *(a2 + 144);
  *(&__src[21] + 8) = v16;
  v17 = *(a2 + 96);
  v18 = *(a2 + 112);
  v19 = *(a2 + 64);
  *(&__src[16] + 8) = *(a2 + 80);
  *(&__src[17] + 8) = v17;
  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v15;
  *(&__src[15] + 8) = v19;
  v20 = *(a2 + 16);
  *(&__src[11] + 8) = *a2;
  *(&__src[12] + 8) = v20;
  v21 = *(a2 + 48);
  *(&__src[13] + 8) = *(a2 + 32);
  *(&__src[14] + 8) = v21;
  v44[8] = __src[8];
  v44[9] = v6;
  v44[10] = a1[10];
  v44[4] = __src[4];
  v44[5] = v9;
  v44[6] = __src[6];
  v44[7] = v5;
  v44[0] = v14;
  v44[1] = v13;
  LOBYTE(__src[11]) = *(a1 + 176);
  BYTE8(__src[22]) = *(a2 + 176);
  v45 = *(a1 + 176);
  v44[2] = __src[2];
  v44[3] = v8;
  if (sub_1000519B4(v44) != 1)
  {
    v28[8] = *(&__src[19] + 8);
    v28[9] = *(&__src[20] + 8);
    v28[10] = *(&__src[21] + 8);
    v29 = BYTE8(__src[22]);
    v28[4] = *(&__src[15] + 8);
    v28[5] = *(&__src[16] + 8);
    v28[6] = *(&__src[17] + 8);
    v28[7] = *(&__src[18] + 8);
    v28[0] = *(&__src[11] + 8);
    v28[1] = *(&__src[12] + 8);
    v28[2] = *(&__src[13] + 8);
    v28[3] = *(&__src[14] + 8);
    if (sub_1000519B4(v28) != 1)
    {
      v24[8] = *(&__src[19] + 8);
      v24[9] = *(&__src[20] + 8);
      v24[10] = *(&__src[21] + 8);
      v24[4] = *(&__src[15] + 8);
      v24[5] = *(&__src[16] + 8);
      v24[6] = *(&__src[17] + 8);
      v24[7] = *(&__src[18] + 8);
      v24[0] = *(&__src[11] + 8);
      v24[1] = *(&__src[12] + 8);
      v24[2] = *(&__src[13] + 8);
      v24[3] = *(&__src[14] + 8);
      __dst[8] = *(&__src[19] + 8);
      __dst[9] = *(&__src[20] + 8);
      __dst[10] = *(&__src[21] + 8);
      __dst[4] = *(&__src[15] + 8);
      __dst[5] = *(&__src[16] + 8);
      __dst[6] = *(&__src[17] + 8);
      __dst[7] = *(&__src[18] + 8);
      __dst[0] = *(&__src[11] + 8);
      __dst[1] = *(&__src[12] + 8);
      v25 = BYTE8(__src[22]);
      LOBYTE(__dst[11]) = BYTE8(__src[22]);
      __dst[2] = *(&__src[13] + 8);
      __dst[3] = *(&__src[14] + 8);
      v40 = __src[8];
      v41 = __src[9];
      v42 = __src[10];
      v43 = __src[11];
      v36 = __src[4];
      v37 = __src[5];
      v38 = __src[6];
      v39 = __src[7];
      v32 = __src[0];
      v33 = __src[1];
      v34 = __src[2];
      v35 = __src[3];
      sub_1002C62BC(a1, v26);
      sub_1002C62BC(a2, v26);
      v22 = static BodyStructure.__derived_enum_equals(_:_:)(&v32, __dst);
      sub_100025F40(v24, &qword_1005CE210, &unk_1004D0930);
      v26[8] = __src[8];
      v26[9] = __src[9];
      v26[10] = __src[10];
      v27 = __src[11];
      v26[4] = __src[4];
      v26[5] = __src[5];
      v26[6] = __src[6];
      v26[7] = __src[7];
      v26[0] = __src[0];
      v26[1] = __src[1];
      v26[2] = __src[2];
      v26[3] = __src[3];
      sub_100025F40(v26, &qword_1005CE210, &unk_1004D0930);
      return v22 & 1;
    }

    goto LABEL_5;
  }

  __dst[8] = *(&__src[19] + 8);
  __dst[9] = *(&__src[20] + 8);
  __dst[10] = *(&__src[21] + 8);
  LOBYTE(__dst[11]) = BYTE8(__src[22]);
  __dst[4] = *(&__src[15] + 8);
  __dst[5] = *(&__src[16] + 8);
  __dst[6] = *(&__src[17] + 8);
  __dst[7] = *(&__src[18] + 8);
  __dst[0] = *(&__src[11] + 8);
  __dst[1] = *(&__src[12] + 8);
  __dst[2] = *(&__src[13] + 8);
  __dst[3] = *(&__src[14] + 8);
  if (sub_1000519B4(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, 0x169uLL);
    sub_1002C62BC(a1, &v32);
    sub_1002C62BC(a2, &v32);
    sub_100025F40(__dst, &qword_1005D7448, &qword_1004F0AD8);
    v22 = 0;
    return v22 & 1;
  }

  v40 = __src[8];
  v41 = __src[9];
  v42 = __src[10];
  v43 = __src[11];
  v36 = __src[4];
  v37 = __src[5];
  v38 = __src[6];
  v39 = __src[7];
  v32 = __src[0];
  v33 = __src[1];
  v34 = __src[2];
  v35 = __src[3];
  sub_1002C62BC(a1, v28);
  sub_1002C62BC(a2, v28);
  sub_100025F40(&v32, &qword_1005CE210, &unk_1004D0930);
  v22 = 1;
  return v22 & 1;
}

uint64_t _s16IMAP2Persistence18MessageSectionDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) != (*(a2 + 8) | (*(a2 + 8) << 32)) || (sub_1000FFC98(*a1, *a2) & 1) == 0 || *(a2 + 12) != *(a1 + 12) || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MessageSectionData(0) + 28);

  return == infix(_:_:)(a1 + v4, a2 + v4);
}

uint64_t sub_1002C5B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Segment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C5BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Segment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C5C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Segment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C5CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CE230, &unk_1004D0950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C5D58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MessageSectionData.Segment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1002C5E18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MessageSectionData.Segment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002C5EBC(uint64_t a1)
{
  result = type metadata accessor for MessageSectionData.Segment(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002C5F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002C6044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A5384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1002C60FC(uint64_t a1)
{
  sub_1004A5384();
  if (v1 <= 0x3F)
  {
    sub_1002C6188();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002C6188()
{
  if (!qword_1005D7410)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D7410);
    }
  }
}

uint64_t sub_1002C61D8(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C61EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 177))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1002C6238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
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
    *(result + 176) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = ~a2;
    }
  }

  return result;
}

uint64_t MessageSectionData.Concatenator.init(expectedMessageSize:inMemoryThreshold:baseDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(_s12ConcatenatorV5StateO6NoDataVMa(0) + 24);
  v7 = sub_1004A4374();
  (*(*(v7 - 8) + 32))(&a4[v6], a3, v7);
  _s12ConcatenatorV5StateOMa(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1002C6454(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A5384();
  v163 = *(v4 - 8);
  v164 = v4;
  __chkstk_darwin(v4);
  v171 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = _s12ConcatenatorV5StateO9ReceivingVMa(0);
  __chkstk_darwin(v155);
  v162 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v170 = &v153 - v8;
  v9 = sub_1004A4374();
  v165 = *(v9 - 8);
  v166 = v9;
  __chkstk_darwin(v9);
  v154 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v158 = &v153 - v12;
  __chkstk_darwin(v13);
  v160 = &v153 - v14;
  v161 = _s13TemporaryDataOMa(0);
  __chkstk_darwin(v161);
  v169 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v153 = (&v153 - v17);
  __chkstk_darwin(v18);
  v156 = &v153 - v19;
  __chkstk_darwin(v20);
  v157 = &v153 - v21;
  v159 = _s12ConcatenatorV5StateO6NoDataVMa(0);
  __chkstk_darwin(v159);
  v167 = (&v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = _s12ConcatenatorV5StateOMa(0);
  __chkstk_darwin(v23);
  v25 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v174 = &v153 - v27;
  __chkstk_darwin(v28);
  v172 = &v153 - v29;
  v30 = sub_10000C9C0(&qword_1005D7748, &unk_1004F0B28);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v33 = &v153 - v32;
  v34 = type metadata accessor for MessageSectionData.Segment(0);
  v35 = (a1 + *(v34 + 24));
  v36 = v35[3];
  v203 = v35[2];
  v204 = v36;
  v37 = v35[7];
  v207 = v35[6];
  v208 = v37;
  v38 = v35[5];
  v205 = v35[4];
  v206 = v38;
  v212 = *(v35 + 176);
  v39 = v35[10];
  v210 = v35[9];
  v211 = v39;
  v209 = v35[8];
  v40 = v35[1];
  v201 = *v35;
  v202 = v40;
  v41 = *(v34 + 20);
  v168 = a1;
  v42 = *(a1 + v41);
  v43 = &v33[*(v31 + 56)];
  v44 = *(v31 + 72);
  v225 = v2;
  v45 = v2;
  v46 = v42;
  sub_1002C8040(v45, v33, _s12ConcatenatorV5StateOMa);
  v47 = v208;
  *(v43 + 6) = v207;
  *(v43 + 7) = v47;
  v48 = v206;
  *(v43 + 4) = v205;
  *(v43 + 5) = v48;
  v43[176] = v212;
  v49 = v211;
  *(v43 + 9) = v210;
  *(v43 + 10) = v49;
  *(v43 + 8) = v209;
  v50 = v202;
  *v43 = v201;
  *(v43 + 1) = v50;
  v51 = v204;
  *(v43 + 2) = v203;
  *(v43 + 3) = v51;
  v33[v44] = v46;
  v52 = v33;
  v53 = *(v43 + 9);
  v221 = *(v43 + 8);
  v222 = v53;
  v223 = *(v43 + 10);
  v224 = v43[176];
  v54 = *(v43 + 5);
  v217 = *(v43 + 4);
  v218 = v54;
  v55 = *(v43 + 7);
  v219 = *(v43 + 6);
  v220 = v55;
  v56 = *(v43 + 1);
  v213 = *v43;
  v214 = v56;
  v57 = *(v43 + 3);
  v215 = *(v43 + 2);
  v216 = v57;
  v175 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v62 = v169;
    v63 = v170;
    v172 = v25;
    v64 = v171;
    sub_1002C8040(v52, v174, _s12ConcatenatorV5StateOMa);
    v197 = v221;
    v198 = v222;
    v199 = v223;
    v200 = v224;
    v193 = v217;
    v194 = v218;
    v195 = v219;
    v196 = v220;
    v189 = v213;
    v190 = v214;
    v191 = v215;
    v192 = v216;
    if (sub_10003EC1C(&v189) != 1)
    {
      sub_1002C7EB4(&v201, &v177);
      sub_1002C7F78(v225, _s12ConcatenatorV5StateOMa);
      v60 = _s12ConcatenatorV5StateO9ReceivingVMa;
      v61 = v174;
      goto LABEL_13;
    }

    if (v46)
    {
      v65 = v162;
      sub_1002C7FD8(v174, v162, _s12ConcatenatorV5StateO9ReceivingVMa);
      sub_1002C7EB4(&v201, &v177);
      v66 = v173;
      sub_1002C815C(v168);
      if (!v66)
      {
        v112 = v65;
        v113 = v62;
        sub_1002C8040(v112, v62, _s13TemporaryDataOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1002C7F78(v225, _s12ConcatenatorV5StateOMa);
          v114 = v163;
          v115 = v64;
          (*(v163 + 32))(v64, v113, v164);
          v116 = v172;
        }

        else
        {
          v115 = v64;
          static DispatchData.makeMappedRead(fileDescriptor:count:)(*(*v62 + 16), *(*v62 + 24));
          v114 = v163;
          v116 = v172;

          sub_1002C7F78(v225, _s12ConcatenatorV5StateOMa);
        }

        v135 = v162;
        v136 = (v162 + *(v155 + 20));
        v137 = v136[9];
        v185 = v136[8];
        v186 = v137;
        v187 = v136[10];
        v188 = *(v136 + 176);
        v138 = v136[5];
        v181 = v136[4];
        v182 = v138;
        v139 = v136[7];
        v183 = v136[6];
        v184 = v139;
        v140 = v136[1];
        v177 = *v136;
        v178 = v140;
        v141 = v136[3];
        v179 = v136[2];
        v180 = v141;
        sub_1002C62BC(&v177, v176);
        sub_1002C7F78(v135, _s12ConcatenatorV5StateO9ReceivingVMa);
        (*(v114 + 32))(v116, v115, v164);
        v142 = v116 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);
        v143 = v186;
        *(v142 + 128) = v185;
        *(v142 + 144) = v143;
        *(v142 + 160) = v187;
        *(v142 + 176) = v188;
        v144 = v182;
        *(v142 + 64) = v181;
        *(v142 + 80) = v144;
        v145 = v184;
        *(v142 + 96) = v183;
        *(v142 + 112) = v145;
        v146 = v178;
        *v142 = v177;
        *(v142 + 16) = v146;
        v147 = v180;
        *(v142 + 32) = v179;
        *(v142 + 48) = v147;
        swift_storeEnumTagMultiPayload();
        sub_1002C7FD8(v116, v225, _s12ConcatenatorV5StateOMa);
        goto LABEL_31;
      }

      v67 = v65;
    }

    else
    {
      sub_1002C7FD8(v174, v63, _s12ConcatenatorV5StateO9ReceivingVMa);
      sub_1002C7EB4(&v201, &v177);
      v104 = v173;
      sub_1002C815C(v168);
      if (!v104)
      {
        v117 = v225;
        sub_1002C7F78(v225, _s12ConcatenatorV5StateOMa);
        sub_1002C7FD8(v63, v117, _s12ConcatenatorV5StateO9ReceivingVMa);
        swift_storeEnumTagMultiPayload();
        goto LABEL_31;
      }

      v67 = v63;
    }

    sub_1002C7F78(v67, _s12ConcatenatorV5StateO9ReceivingVMa);
    v105 = *(v43 + 9);
    v185 = *(v43 + 8);
    v186 = v105;
    v187 = *(v43 + 10);
    v188 = v43[176];
    v106 = *(v43 + 5);
    v181 = *(v43 + 4);
    v182 = v106;
    v107 = *(v43 + 7);
    v183 = *(v43 + 6);
    v184 = v107;
    v108 = *(v43 + 1);
    v177 = *v43;
    v178 = v108;
    v109 = *(v43 + 3);
    v179 = *(v43 + 2);
    v180 = v109;
    v110 = &v177;
LABEL_32:
    sub_100025F40(v110, &qword_1005CE230, &unk_1004D0950);
    v127 = v52;
    return sub_1002C7F78(v127, _s12ConcatenatorV5StateOMa);
  }

  if (EnumCaseMultiPayload)
  {
    sub_1002C7EB4(&v201, &v189);
    v60 = _s12ConcatenatorV5StateOMa;
    v61 = v225;
    goto LABEL_13;
  }

  v59 = v172;
  sub_1002C8040(v33, v172, _s12ConcatenatorV5StateOMa);
  v197 = v221;
  v198 = v222;
  v199 = v223;
  v200 = v224;
  v193 = v217;
  v194 = v218;
  v195 = v219;
  v196 = v220;
  v189 = v213;
  v190 = v214;
  v191 = v215;
  v192 = v216;
  if (sub_10003EC1C(&v189) == 1)
  {
    sub_1002C7EB4(&v201, &v177);
    sub_1002C7F78(v225, _s12ConcatenatorV5StateOMa);
    v60 = _s12ConcatenatorV5StateO6NoDataVMa;
    v61 = v59;
LABEL_13:
    sub_1002C7F78(v61, v60);
    swift_storeEnumTagMultiPayload();
    v75 = v35[9];
    v197 = v35[8];
    v198 = v75;
    v199 = v35[10];
    v200 = *(v35 + 176);
    v76 = v35[5];
    v193 = v35[4];
    v194 = v76;
    v77 = v35[7];
    v195 = v35[6];
    v196 = v77;
    v78 = v35[1];
    v189 = *v35;
    v190 = v78;
    v79 = v35[3];
    v191 = v35[2];
    v192 = v79;
    v80 = sub_10003EC1C(&v189) == 0;
    sub_1002C7F24();
    swift_allocError();
    *v81 = v80;
    v81[1] = v46;
    swift_willThrow();
    return sub_100025F40(v52, &qword_1005D7748, &unk_1004F0B28);
  }

  if (v46)
  {
    sub_1002C7EB4(&v201, &v177);
    v68 = v225;
    sub_1002C7F78(v225, _s12ConcatenatorV5StateOMa);
    (*(v163 + 16))(v68, v168, v164);
    v69 = v68 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);
    v70 = v198;
    *(v69 + 128) = v197;
    *(v69 + 144) = v70;
    *(v69 + 160) = v199;
    *(v69 + 176) = v200;
    v71 = v194;
    *(v69 + 64) = v193;
    *(v69 + 80) = v71;
    v72 = v196;
    *(v69 + 96) = v195;
    *(v69 + 112) = v72;
    v73 = v190;
    *v69 = v189;
    *(v69 + 16) = v73;
    v74 = v192;
    *(v69 + 32) = v191;
    *(v69 + 48) = v74;
    swift_storeEnumTagMultiPayload();
    v185 = v221;
    v186 = v222;
    v187 = v223;
    v188 = v224;
    v181 = v217;
    v182 = v218;
    v183 = v219;
    v184 = v220;
    v177 = v213;
    v178 = v214;
    v179 = v215;
    v180 = v216;
    sub_1002C62BC(&v177, v176);
    sub_1002C7F78(v59, _s12ConcatenatorV5StateO6NoDataVMa);
LABEL_31:
    v148 = *(v43 + 9);
    v197 = *(v43 + 8);
    v198 = v148;
    v199 = *(v43 + 10);
    v200 = v43[176];
    v149 = *(v43 + 5);
    v193 = *(v43 + 4);
    v194 = v149;
    v150 = *(v43 + 7);
    v195 = *(v43 + 6);
    v196 = v150;
    v151 = *(v43 + 1);
    v189 = *v43;
    v190 = v151;
    v152 = *(v43 + 3);
    v191 = *(v43 + 2);
    v192 = v152;
    v110 = &v189;
    goto LABEL_32;
  }

  v174 = v33;
  v83 = v167;
  sub_1002C7FD8(v59, v167, _s12ConcatenatorV5StateO6NoDataVMa);
  v84 = *v83;
  v85 = v83[1];
  v86 = v165;
  v87 = *(v165 + 16);
  v88 = v160;
  v87();
  if (v85 >= v84)
  {
    sub_1002C7EB4(&v201, &v177);
    sub_1002C7EB4(&v213, &v177);
    v111 = v156;
    sub_1004A5344();
    (*(v86 + 8))(v88, v166);
    swift_storeEnumTagMultiPayload();
    v96 = v173;
  }

  else
  {
    v89 = v158;
    v90 = v88;
    v91 = v166;
    (v87)(v158, v88, v166);
    v172 = _s13TemporaryFileCMa();
    v92 = swift_allocObject();
    *(v92 + 24) = 0;
    sub_1002C7EB4(&v201, &v177);
    sub_1002C7EB4(&v213, &v177);
    v93 = v154;
    v94 = v173;
    v95 = static URL.makeTemporaryFile(baseDirectory:pathExtension:)(v154, v89, 0x6D65745F6364736DLL, 0xE900000000000070);
    v96 = v94;
    if (v94)
    {
      sub_100025F40(&v213, &qword_1005CE230, &unk_1004D0950);
      v97 = v90;
      v98 = *(v165 + 8);
      v98(v158, v91);
      v98(v97, v91);
      sub_1002C7F78(v167, _s12ConcatenatorV5StateO6NoDataVMa);
      swift_deallocPartialClassInstance();
      v99 = *(v43 + 9);
      v185 = *(v43 + 8);
      v186 = v99;
      v187 = *(v43 + 10);
      v188 = v43[176];
      v100 = *(v43 + 5);
      v181 = *(v43 + 4);
      v182 = v100;
      v101 = *(v43 + 7);
      v183 = *(v43 + 6);
      v184 = v101;
      v102 = *(v43 + 1);
      v177 = *v43;
      v178 = v102;
      v103 = *(v43 + 3);
      v179 = *(v43 + 2);
      v180 = v103;
      goto LABEL_27;
    }

    *(v92 + 16) = v95;
    sub_1004A4B84(v95, 64, 2);
    sub_1002C84BC();
    v118 = v93;
    v119 = *(v165 + 8);
    v119(v118, v91);
    v119(v158, v91);
    v119(v90, v91);
    v120 = v153;
    *v153 = v92;
    swift_storeEnumTagMultiPayload();
    v111 = v156;
    sub_1002C7FD8(v120, v156, _s13TemporaryDataOMa);
  }

  v121 = v157;
  sub_1002C7FD8(v111, v157, _s13TemporaryDataOMa);
  sub_1002C815C(v168);
  if (!v96)
  {
    v128 = v225;
    sub_1002C7F78(v225, _s12ConcatenatorV5StateOMa);
    sub_1002C7F78(v167, _s12ConcatenatorV5StateO6NoDataVMa);
    sub_1002C7FD8(v121, v128, _s13TemporaryDataOMa);
    v129 = v128 + *(v155 + 20);
    v130 = v198;
    *(v129 + 128) = v197;
    *(v129 + 144) = v130;
    *(v129 + 160) = v199;
    *(v129 + 176) = v200;
    v131 = v194;
    *(v129 + 64) = v193;
    *(v129 + 80) = v131;
    v132 = v196;
    *(v129 + 96) = v195;
    *(v129 + 112) = v132;
    v133 = v190;
    *v129 = v189;
    *(v129 + 16) = v133;
    v134 = v192;
    *(v129 + 32) = v191;
    *(v129 + 48) = v134;
    swift_storeEnumTagMultiPayload();
    v52 = v174;
    goto LABEL_31;
  }

  sub_100025F40(&v213, &qword_1005CE230, &unk_1004D0950);
  sub_1002C7F78(v121, _s13TemporaryDataOMa);
  sub_1002C7F78(v167, _s12ConcatenatorV5StateO6NoDataVMa);
  v122 = *(v43 + 9);
  v185 = *(v43 + 8);
  v186 = v122;
  v187 = *(v43 + 10);
  v188 = v43[176];
  v123 = *(v43 + 5);
  v181 = *(v43 + 4);
  v182 = v123;
  v124 = *(v43 + 7);
  v183 = *(v43 + 6);
  v184 = v124;
  v125 = *(v43 + 1);
  v177 = *v43;
  v178 = v125;
  v126 = *(v43 + 3);
  v179 = *(v43 + 2);
  v180 = v126;
LABEL_27:
  sub_100025F40(&v177, &qword_1005CE230, &unk_1004D0950);
  v127 = v174;
  return sub_1002C7F78(v127, _s12ConcatenatorV5StateOMa);
}

uint64_t MessageSectionData.Concatenator.completed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s12ConcatenatorV5StateOMa(0);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C8040(v2, v6, _s12ConcatenatorV5StateOMa);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1002C7FD8(v6, a1, type metadata accessor for MessageSectionData.Concatenator.Completed);
    v7 = 0;
  }

  else
  {
    sub_1002C7F78(v6, _s12ConcatenatorV5StateOMa);
    v7 = 1;
  }

  v8 = type metadata accessor for MessageSectionData.Concatenator.Completed(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t MessageSectionData.Concatenator.Completed.initial.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);

  return sub_1002C62BC(v3, a1);
}

uint64_t MessageSectionData.Concatenator.Completed.initial.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);

  return sub_1002C76B4(a1, v3);
}

__n128 MessageSectionData.Concatenator.Completed.init(data:initial:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004A5384();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);
  v8 = *(a2 + 144);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v8;
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = *(a2 + 176);
  v9 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v9;
  v10 = *(a2 + 112);
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 112) = v10;
  v11 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v7 + 32) = result;
  *(v7 + 48) = v13;
  return result;
}

uint64_t sub_1002C7820(uint64_t a1, uint64_t a2)
{
  v4 = _s12ConcatenatorV5StateOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002C78A0(uint64_t a1, uint64_t a2)
{
  v4 = _s12ConcatenatorV5StateOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1002C7930(uint64_t a1)
{
  result = _s12ConcatenatorV5StateOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002C7A0C(uint64_t a1)
{
  result = _s12ConcatenatorV5StateO6NoDataVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s12ConcatenatorV5StateO9ReceivingVMa(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MessageSectionData.Concatenator.Completed(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002C7AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 176);
    if (v11 <= 1)
    {
      return 0;
    }

    else
    {
      return v11 ^ 0xFF;
    }
  }
}

uint64_t sub_1002C7BCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 176) = ~a2;
  }

  return result;
}

uint64_t sub_1002C7CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002C7D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1004A4374();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1002C7DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1004A4374();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1002C7E38(uint64_t a1)
{
  result = sub_1004A4374();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002C7EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CE230, &unk_1004D0950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002C7F24()
{
  result = qword_1005D7750;
  if (!qword_1005D7750)
  {
    result = swift_getWitnessTable("eb\t", &_s12ConcatenatorV5StateO25ReceivedOutOfOrderSegmentVN, v0, v1);
    atomic_store(result, &qword_1005D7750);
  }

  return result;
}

uint64_t sub_1002C7F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002C7FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C8040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s12ConcatenatorV5StateO25ReceivedOutOfOrderSegmentVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1002C815C(uint64_t a1)
{
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s13TemporaryDataOMa(0);
  __chkstk_darwin(v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C875C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002C87C0(v1);
    v9 = *(v3 + 32);
    v9(v5, v8, v2);
    sub_1004A5354();
    v9(v1, v5, v2);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1002C830C();
  }
}

uint64_t sub_1002C830C()
{
  v1 = sub_1004A52B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1004A52C4();
  v6 = result;
  v7 = *(result + 16);
  if (!v7)
  {
  }

  v8 = 0;
  v10[1] = v2 + 16;
  v9 = (v2 + 8);
  while (v8 < *(v6 + 16))
  {
    (*(v2 + 16))(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v1);
    sub_1004A5294();
    if (v0)
    {
      (*v9)(v4, v1);
    }

    ++v8;
    result = (*v9)(v4, v1);
    if (v7 == v8)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_1002C84BC()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1004A42F4(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    sub_1004A4274();

    swift_willThrow();
  }
}

uint64_t sub_1002C85DC()
{
  if ((sub_1004A4BA4() & 0x100000000) != 0)
  {
    sub_1002C8708();
    swift_willThrowTypedImpl();
  }

  return swift_deallocClassInstance();
}

uint64_t _s13TemporaryDataOMa(uint64_t a1)
{
  result = qword_1005D7870;
  if (!qword_1005D7870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C86A0(uint64_t a1)
{
  _s13TemporaryFileCMa();
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002C8708()
{
  result = qword_1005D78A8;
  if (!qword_1005D78A8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Errno, &type metadata for Errno, v0, v1);
    atomic_store(result, &qword_1005D78A8);
  }

  return result;
}

uint64_t sub_1002C875C(uint64_t a1, uint64_t a2)
{
  v4 = _s13TemporaryDataOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C87C0(uint64_t a1)
{
  v2 = _s13TemporaryDataOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A4BB4();
  if (v5)
  {
    v6 = result;
    sub_1002C8708();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v7 = v6;
  }

  else
  {
    v8 = *(a3 + 24);
    v9 = __OFADD__(v8, result);
    v10 = v8 + result;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      *(a3 + 24) = v10;
    }
  }

  return result;
}

Swift::Int sub_1002C88F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  return sub_1004A6F14();
}

void sub_1002C8964()
{
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *v0;
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }
}

Swift::Int sub_1002C89B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }

  return sub_1004A6F14();
}

uint64_t sub_1002C8A20(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  if (*(a1 + 8))
  {
    return *(a2 + 8);
  }

  else
  {
    return (*a1 == v3) & ~v2;
  }
}

uint64_t MessageSize.init(rawValue:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1002C8A60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  if (v3)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1002C8A80(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

unint64_t sub_1002C8AAC()
{
  result = qword_1005D78B0;
  if (!qword_1005D78B0)
  {
    result = swift_getWitnessTable("Ia\t", &type metadata for MessageSize, v0, v1);
    atomic_store(result, &qword_1005D78B0);
  }

  return result;
}

uint64_t sub_1002C8B90(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1002C8BE0(*a1, *(a1 + 1), v2 | *(a1 + 16), *a2, *(a2 + 1), v3 | *(a2 + 16));
}

uint64_t sub_1002C8BE0(int a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, __int16 a6)
{
  if (a4 != a1)
  {
    return 0;
  }

  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  result = 0;
  if (a6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a5;
  }

  if ((a6 & 1) == 0 && v7 == a2)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

unint64_t sub_1002C8C28()
{
  result = qword_1005D78B8;
  if (!qword_1005D78B8)
  {
    atomic_store(result, &qword_1005D78B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageToDownload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void MoveOrCopy.Result.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_1004A6EB4(a2 != 0);
  }

  else
  {
    v3 = HIDWORD(a2);
    v4 = a2;
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v4);
    sub_1004A6EE4(v3);
  }
}

Swift::Int MoveOrCopy.Result.hashValue.getter(unint64_t a1, char a2)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EB4(a1 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(a1);
    sub_1004A6EE4(HIDWORD(a1));
  }

  return sub_1004A6F14();
}

Swift::Int sub_1002C8DD4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2 == 1)
  {
    sub_1004A6EB4(v1 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v1);
    sub_1004A6EE4(HIDWORD(v1));
  }

  return sub_1004A6F14();
}

void sub_1002C8E68()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EB4(v1 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v1);
    sub_1004A6EE4(HIDWORD(v1));
  }
}

Swift::Int sub_1002C8ED8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  if (v3 == 1)
  {
    sub_1004A6EB4(v2 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v2);
    sub_1004A6EE4(HIDWORD(v2));
  }

  return sub_1004A6F14();
}

uint64_t sub_1002C8F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a2 == *a1) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t MoveOrCopy.init(operation:sourceMessage:targetMailbox:targetMessage:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result & 1;
  *(a7 + 4) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t MoveOrCopy.hash(into:)(uint64_t a1)
{
  sub_1004A6EB4(*v1);
  sub_1004A6EE4(*(v1 + 1));
  sub_1004A6EB4(*(v1 + 4) | (*(v1 + 4) << 32));

  return sub_1004A4424();
}

Swift::Int MoveOrCopy.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6EB4(*v0);
  sub_1004A6EE4(*(v0 + 1));
  sub_1004A6EB4(*(v0 + 4) | (*(v0 + 4) << 32));
  sub_1004A4424();
  return sub_1004A6F14();
}

Swift::Int sub_1002C90A0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EE4(v2);
  sub_1004A6EB4(v3 | (v3 << 32));
  sub_1004A4424();
  return sub_1004A6F14();
}

uint64_t sub_1002C912C(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 4);
  sub_1004A6EB4(*v1);
  sub_1004A6EE4(v2);
  sub_1004A6EB4(v3 | (v3 << 32));

  return sub_1004A4424();
}

Swift::Int sub_1002C91A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 4);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EE4(v3);
  sub_1004A6EB4(v4 | (v4 << 32));
  sub_1004A4424();
  return sub_1004A6F14();
}

BOOL sub_1002C9228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s16IMAP2Persistence10MoveOrCopyV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s16IMAP2Persistence10MoveOrCopyV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a2 + 1) != *(a1 + 1) || (*(a1 + 4) | (*(a1 + 4) << 32)) != (*(a2 + 4) | (*(a2 + 4) << 32)) || (sub_1000FFC98(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);

  return sub_10003A194(v4, v5, v6, v7);
}

unint64_t sub_1002C9314()
{
  result = qword_1005D78C0;
  if (!qword_1005D78C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MoveOrCopy.Operation, &type metadata for MoveOrCopy.Operation, v0, v1);
    atomic_store(result, &qword_1005D78C0);
  }

  return result;
}

unint64_t sub_1002C936C()
{
  result = qword_1005D78C8;
  if (!qword_1005D78C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MoveOrCopy.Result, &type metadata for MoveOrCopy.Result, v0, v1);
    atomic_store(result, &qword_1005D78C8);
  }

  return result;
}

unint64_t sub_1002C93C4()
{
  result = qword_1005D78D0;
  if (!qword_1005D78D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MoveOrCopy, &type metadata for MoveOrCopy, v0, v1);
    atomic_store(result, &qword_1005D78D0);
  }

  return result;
}

uint64_t static OpaqueMailboxID.== infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

IMAP2Persistence::OpaqueMailboxID __swiftcall OpaqueMailboxID.init(rawValue:)(Swift::OpaquePointer rawValue)
{
  sub_1004A6F24();
  sub_1004A6EA4();
  v2 = sub_1004A6F04();
  v3 = rawValue._rawValue;
  result.hashValue = v2;
  result.rawValue._rawValue = v3;
  return result;
}

Swift::Int sub_1002C9500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1004A6F24();
  sub_1004A6EA4();
  result = sub_1004A6F04();
  *a2 = v3;
  a2[1] = result;
  return result;
}

double sub_1002C955C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t OpaqueMailboxID.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_100014CEC(a1, a2);
  sub_1002C95EC(a1, a2);
  v5 = v4;
  sub_1004A6F24();
  sub_1004A6EA4();
  sub_1004A6F04();
  sub_100014D40(a1, a2);
  return v5;
}

void sub_1002C95EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004A4444();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_100014D40(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
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
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_10015BEAC(v9, 0);
      v12 = sub_1004A43B4();
      sub_100014D40(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

Swift::Int sub_1002C97BC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

uint64_t sub_1002C9800(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] == a2[1])
  {
    return sub_1000FFC98(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t OpaqueMailboxID.description.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    sub_1004A5874(2 * v1);
    if (v1)
    {
      v3 = v2 + 32;
      sub_10014F900();
      do
      {
        ++v3;
        v4._countAndFlagsBits = sub_1004A5A84();
        sub_1004A5994(v4);

        --v1;
      }

      while (v1);
    }

    return 0;
  }

  return result;
}

uint64_t OpaquePersistedMessageIdentifier.rawValue.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100014D40(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

Swift::Int sub_1002C995C()
{
  sub_1004A6E94();
  sub_1004A4424();
  return sub_1004A6F14();
}

Swift::Int sub_1002C99B0(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A4424();
  return sub_1004A6F14();
}

uint64_t OpaquePersistedMessageIdentifier.description.getter(uint64_t result, unint64_t a2)
{
  v3 = result;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
LABEL_11:
      sub_1004A5874(2 * v5);
      sub_1002C9B50(v3, a2, v9);
      return v9[0];
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (v5 + 0x4000000000000000 >= 0)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1002C9AB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2 - result;
    if (a2 != result)
    {
      sub_10014F900();
      do
      {
        ++v2;
        v4._countAndFlagsBits = sub_1004A5A84();
        sub_1004A5994(v4);

        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_1002C9B50(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      return sub_1002C9AB0(v8, v8);
    }

    v6 = *(result + 16);
    v7 = *(result + 24);
    return sub_1002C9D50(v6, v7);
  }

  if (v3)
  {
    v6 = result;
    v7 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

    return sub_1002C9D50(v6, v7);
  }

  v8[0] = result;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  v4 = BYTE6(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  if (BYTE6(a2))
  {
    v5 = v8;
    sub_10014F900();
    do
    {
      v5 = (v5 + 1);
      v9._countAndFlagsBits = sub_1004A5A84();
      sub_1004A5994(v9);

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1002C9CEC()
{
  result = qword_1005D78D8;
  if (!qword_1005D78D8)
  {
    result = swift_getWitnessTable("!\\\t", &type metadata for OpaquePersistedMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005D78D8);
  }

  return result;
}

uint64_t sub_1002C9D50(uint64_t a1, uint64_t a2)
{
  result = sub_1004A40D4();
  v5 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1004A40F4();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1002C9AB0(v5, v11);
}

void *sub_1002C9DF4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100091A08(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    result = sub_1004A6554();
    v6 = result;
    v7 = 0;
    v22 = v1 + 64;
    v23 = v2;
    v24 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v25 = v7;
      v26 = *(v1 + 36);

      v28._countAndFlagsBits = 39;
      v28._object = 0xE100000000000000;
      sub_1004A5994(v28);
      sub_1004A6934();
      v29._countAndFlagsBits = 39;
      v29._object = 0xE100000000000000;
      sub_1004A5994(v29);

      v10 = v4;
      v27 = v4;
      v11 = v1;
      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100091A08((v12 > 1), v13 + 1, 1);
        v10 = v27;
      }

      v10[2] = v13 + 1;
      v14 = &v10[2 * v13];
      v14[4] = 0;
      v14[5] = 0xE000000000000000;
      v8 = 1 << *(v11 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v24;
      v15 = *(v24 + 8 * v9);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v11;
      v4 = v10;
      if (v26 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (v22 + 8 * v9);
        while (v18 < (v8 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_100020944(v6, v26, 0);
            v8 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v6, v26, 0);
      }

LABEL_4:
      v7 = v25 + 1;
      v6 = v8;
      if (v25 + 1 == v23)
      {
        return v4;
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

void MessageAttribute.BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[9];
  v27 = v2[8];
  v28 = v5;
  v29 = v2[10];
  v30 = *(v2 + 176);
  v6 = v2[5];
  v23 = v2[4];
  v24 = v6;
  v7 = v2[7];
  v25 = v2[6];
  v26 = v7;
  v8 = v2[1];
  v19 = *v2;
  v20 = v8;
  v9 = v2[3];
  v21 = v2[2];
  v22 = v9;
  if (sub_10000FE74(&v19) == 1)
  {
    sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004CEAA0;
    *(v10 + 32) = _swiftEmptyArrayStorage;
    sub_1002CB190(v10);
  }

  else
  {
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v11 = sub_1002CA638();
    v13 = v12;
    v15 = v14;
    v18 = _swiftEmptySetSingleton;

    sub_1002D15B4(v11, v13, v15, &v18, v11, v13, v15);

    v16 = v18;
    if (a1)
    {

      v16 = sub_1002D1B7C(v16, a1);

      v18 = v16;
    }

    if (*(a2 + 16))
    {
      v17 = sub_1002D1E48(a2, v15);
      sub_1002CAB9C(v17);
      v16 = v18;
    }

    sub_1002CAA40(v16, 65000, 15000, 30, v11, v13, v15);
  }
}

uint64_t BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002CA638();
  v6 = v5;
  v8 = v7;
  v14 = _swiftEmptySetSingleton;

  sub_1002D15B4(v4, v6, v8, &v14, v4, v6, v8);

  v9 = v14;
  if (a1)
  {

    v9 = sub_1002D1B7C(v9, a1);

    v14 = v9;
  }

  if (*(a2 + 16))
  {
    v10 = sub_1002D1E48(a2, v8);
    sub_1002CAB9C(v10);
    v9 = v14;
  }

  sub_1002CAA40(v9, 65000, 15000, 30, v4, v6, v8);
  v12 = v11;

  return v12;
}

void MessageAttribute.BodyStructure.partsForWatch()()
{
  v1 = v0[9];
  v22 = v0[8];
  v23 = v1;
  v24 = v0[10];
  v25 = *(v0 + 176);
  v2 = v0[5];
  v18 = v0[4];
  v19 = v2;
  v3 = v0[7];
  v20 = v0[6];
  v21 = v3;
  v4 = v0[1];
  v14 = *v0;
  v15 = v4;
  v5 = v0[3];
  v16 = v0[2];
  v17 = v5;
  if (sub_10000FE74(&v14) == 1)
  {
    sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1004CEAA0;
    *(v6 + 32) = _swiftEmptyArrayStorage;
    sub_1002CB190(v6);
  }

  else
  {
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v7 = sub_1002CA638();
    v9 = v8;
    v11 = v10;
    sub_1002CB6A4(v7, v8, v10);
    v12 = sub_1002CAC98(v7, v9, v11);
    v13 = sub_1002B32E4(v12, _swiftEmptySetSingleton);
    sub_1002CAA40(v13, 65000, 15000, 30, v7, v9, v11);
  }
}

uint64_t BodyStructure.partsForWatch()()
{
  v0 = sub_1002CA638();
  v2 = v1;
  v4 = v3;
  sub_1002CB6A4(v0, v1, v3);
  v5 = sub_1002CAC98(v0, v2, v4);
  v6 = sub_1002B32E4(v5, _swiftEmptySetSingleton);
  sub_1002CAA40(v6, 65000, 15000, 30, v0, v2, v4);
  v8 = v7;

  return v8;
}

uint64_t sub_1002CA638()
{
  v0 = swift_allocObject();
  v0[2] = sub_1002D0F84(_swiftEmptyArrayStorage);
  v0[3] = v1;
  v0[4] = v2;
  v8[2] = v0 + 2;
  BodyStructure.enumerateParts(_:)(sub_1002D2468, v8);
  v3 = v0[3];
  v4 = v0[4];

  v5 = sub_1002D11AC(v3, v4, sub_1002D2484);

  v6 = sub_1002D1384(v5);

  return v6;
}

void *BodyStructure.singlePartsWithSizes.getter()
{
  v2 = _swiftEmptyArrayStorage;
  v1[2] = &v2;
  BodyStructure.enumerateParts(_:)(sub_1002D2014, v1);
  return v2;
}

char *sub_1002CA7AC(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *(a2 + 144);
  v25[8] = *(a2 + 128);
  v25[9] = v6;
  v25[10] = *(a2 + 160);
  v26 = *(a2 + 176);
  v7 = *(a2 + 80);
  v25[4] = *(a2 + 64);
  v25[5] = v7;
  v8 = *(a2 + 112);
  v25[6] = *(a2 + 96);
  v25[7] = v8;
  v9 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v9;
  v10 = *(a2 + 48);
  v25[2] = *(a2 + 32);
  v25[3] = v10;
  if (sub_10000FE88(v25) == 1)
  {
    return UInt32.init(_:)(v25);
  }

  UInt32.init(_:)(v25);
  v12 = *(a2 + 144);
  v23[8] = *(a2 + 128);
  v23[9] = v12;
  v23[10] = *(a2 + 160);
  v24 = *(a2 + 176);
  v13 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v13;
  v14 = *(a2 + 112);
  v23[6] = *(a2 + 96);
  v23[7] = v14;
  v15 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v15;
  v16 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v16;
  v17 = *(UInt32.init(_:)(v23) + 0x50);
  v18 = BodyStructure.isAttachment.getter();
  v19 = *a3;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v19;
  if ((result & 1) == 0)
  {
    result = sub_1002BE0B8(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
    *a3 = result;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    result = sub_1002BE0B8((v20 > 1), v21 + 1, 1, v19);
    v19 = result;
    *a3 = result;
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[24 * v21];
  *(v22 + 4) = a1;
  *(v22 + 5) = v17;
  v22[48] = v18 & 1;
  return result;
}

IMAP2Persistence::SearchRequest::RangesToExclude __swiftcall SearchRequest.RangesToExclude.init(ranges:skipForMessageCount:)(Swift::OpaquePointer ranges, Swift::Int_optional skipForMessageCount)
{
  skipForMessageCount.is_nil &= 1u;
  result.skipForMessageCount = skipForMessageCount;
  result.ranges = ranges;
  return result;
}

uint64_t sub_1002CA994(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & (v2 == v4) & (v3 ^ v5 ^ 1);
}

void sub_1002CAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (sub_1002D2050(a6, a7))
  {
    sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1004CEAA0;
    *(v13 + 32) = _swiftEmptyArrayStorage;

    sub_1002CB190(v13);
  }

  else
  {

    sub_1002D0AA0(v14, a5, a6, a7);
    if (v16 / 9 <= a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = v16 / 9;
    }

    if (__OFADD__(v16, v17))
    {
      __break(1u);
    }

    else
    {
      if (v16 + v17 <= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = v16 + v17;
      }

      if (*(v15 + 16) <= a4)
      {
        v19 = a4;
      }

      else
      {
        v19 = *(v15 + 16);
      }

      sub_1002CADB0(v15, v16, v18, v17, v19, a5, a6, a7);
    }
  }
}

uint64_t sub_1002CAB9C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(v1 + 48) + ((v8 << 9) | (8 * v9)));

      sub_1002BDB88(&v11, v10);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

Swift::Int sub_1002CAC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = _swiftEmptyArrayStorage;
  sub_1002CB418(a1, a2, a3, 2500000, &v14);
  result = sub_1002CB9C4(&v14);
  v4 = 0;
  v5 = 0;
  v6 = v14;
  v13 = _swiftEmptySetSingleton;
  v7 = v14[2];
  v8 = v14 + 5;
LABEL_2:
  v9 = &v8[2 * v4];
  while (1)
  {
    if (v7 == v4)
    {

      return v13;
    }

    if (v4 >= v6[2])
    {
      break;
    }

    v10 = v5 + *v9;
    if (__OFADD__(v5, *v9))
    {
      goto LABEL_10;
    }

    ++v4;
    v9 += 2;
    if (v10 <= 3999999)
    {
      v11 = *(v9 - 3);
      swift_bridgeObjectRetain_n();
      sub_1002BDB88(&v12, v11);

      v5 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_1002CADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_bridgeObjectRetain_n();
  sub_1002CAF58(a1, a2, a6, a7, a8);
  v15 = v14;
  v17 = v16;
  v18 = a1;

  if (v15)
  {
    v19 = a1;
    do
    {
      if (v17 > a3)
      {
        goto LABEL_8;
      }

      v18 = v15;

      sub_1002CAF58(v20, v17, a6, a7, a8);
      v22 = v21;
      v17 = v23;

      v15 = v22;
      v19 = v18;
    }

    while (v22);
  }

  v24 = *(v18 + 16);
  if (v24)
  {
    while (1)
    {
      v25 = sub_1002D758C(v24, 0);
      v26 = sub_1002D9204(&v29, v25 + 4, v24, v18);
      v27 = v29;

      v19 = sub_100020D08(v27);
      if (v26 == v24)
      {
        break;
      }

      __break(1u);
LABEL_8:
      v18 = v19;

      v24 = *(v18 + 16);
      if (!v24)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v25 = _swiftEmptyArrayStorage;
  }

  v29 = v25;
  sub_1002CB958(&v29);

  v28 = v29;

  sub_1002CB190(v28);
}

void sub_1002CAF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = _swiftEmptySetSingleton;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
    if (*(v17 + 16))
    {
      swift_bridgeObjectRetain_n();
      v18 = sub_1002CD464(1, v17);
      sub_1002BDB88(&v27, v18);
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v19 = v28;

  v20 = sub_1002D0CA4(v19, a1, a2, a3, a4, a5);

  v21 = v20[2];
  if (v21)
  {
    v22 = v20[5];

    v23 = 1;
LABEL_13:
    v24 = &v20[2 * v23 + 5];
    while (v21 != v23)
    {
      if (v23 >= v20[2])
      {
        goto LABEL_20;
      }

      ++v23;
      v25 = *v24;
      v24 += 2;
      if (v25 < v22)
      {

        v22 = v25;
        goto LABEL_13;
      }
    }
  }
}

void sub_1002CB190(uint64_t a1)
{
  v2 = variable initialization expression of Cache._big5HkscsCanonicalName();
  v3 = sub_1002CE874(&v16, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v16;
  if (v16 != v4)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    if (v4 < v16)
    {
LABEL_20:
      __break(1u);
    }

    else
    {
      sub_1002D7694(a1, a1 + 32, 0, (2 * v16) | 1);
      v17 = v3;
      v18 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          v7 = *(a1 + 32 + 8 * v5);
          v8 = v17;
          v9 = v18 + 32;
          v10 = *(v18 + 16);
          if (v17)
          {

            sub_1002CEE8C(v7, v9, v10, (v8 + 16), v8 + 32);
            v12 = v11;
            v10 = v13;

            if ((v12 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {

            if (v10)
            {
              do
              {

                v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14, v7);

                if (v15)
                {
                  goto LABEL_7;
                }

                v9 += 8;
              }

              while (--v10);
            }
          }

          sub_1002CEA84(v7, v10);
LABEL_7:
          ++v5;

          if (v5 == v4)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002CB33C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  v5 = a2 + 32;
  while (1)
  {
    v6 = *(v5 + 8 * v3);

    if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v7, v4))
    {

      return 1;
    }

    v8 = *(v6 + 16);
    if (v8 < *(v4 + 16))
    {
      break;
    }

LABEL_10:
    if (++v3 == v2)
    {
      return 0;
    }
  }

  v9 = 32;
  while (v8)
  {
    v10 = *(v6 + v9);
    v11 = *(v4 + v9);
    --v8;
    v9 += 8;
    if (v11 != v10)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1002CB418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v27 = a3 + 32;

    v7 = 0;
    v8 = 0;
    v24 = v5;
    v25 = a4;
    while (1)
    {
      v10 = (v27 + 48 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = *(v10 + 24);
      v28 = v10[4];
      if (v7)
      {
        v15 = *(v7 + 16);
        if (v15 < *(v11 + 16))
        {
          v16 = 32;
          while (v15)
          {
            v17 = *(v7 + v16);
            v18 = *(v11 + v16);
            --v15;
            v16 += 8;
            if (v18 != v17)
            {

              sub_1002D22A8(v12, v13, v14);

              swift_unknownObjectRelease();
              if (v14 != 2)
              {
                goto LABEL_16;
              }

              goto LABEL_4;
            }
          }

          goto LABEL_5;
        }

        sub_1002D22A8(v12, v13, v14);

        if (v14 == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {

        sub_1002D22A8(v12, v13, v14);

        if (v14 == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_16:
      if (v14 == 5 && !(v13 | v12))
      {

        v7 = v11;
        goto LABEL_5;
      }

      if (v28 < a4)
      {
        v19 = *a5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1002BDF84(0, v19[2] + 1, 1, v19);
          *a5 = v19;
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_1002BDF84((v21 > 1), v22 + 1, 1, v19);
          *a5 = v19;
        }

        v19[2] = v22 + 1;
        v9 = &v19[2 * v22];
        v9[4] = v11;
        v9[5] = v28;
        v5 = v24;
        a4 = v25;
      }

LABEL_4:

      sub_1002D22C0(v12, v13, v14);

      v7 = 0;
LABEL_5:
      if (++v8 == v5)
      {
      }
    }
  }

  return v23;
}

uint64_t sub_1002CB6A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v22 = a3 + 32;

    v4 = 0;
    v5 = 0;
    while (1)
    {
      v9 = v22 + 48 * v5;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v4)
      {
        v14 = *(v4 + 16);
        if (v14 < *(v10 + 16))
        {
          v15 = 32;
          while (v14)
          {
            v16 = *(v4 + v15);
            v17 = *(v10 + v15);
            --v14;
            v15 += 8;
            if (v17 != v16)
            {

              sub_1002D22A8(v11, v12, v13);

              swift_unknownObjectRelease();
              if (v13 != 2)
              {
                goto LABEL_14;
              }

              goto LABEL_18;
            }
          }

          goto LABEL_5;
        }

        sub_1002D22A8(v11, v12, v13);

        if (v13 == 2)
        {
LABEL_18:
          if (sub_1004A5814() == v11 && v12 == v18)
          {
LABEL_20:

            goto LABEL_22;
          }

          v19 = sub_1004A6D34();

          if (v19)
          {
            goto LABEL_22;
          }

          if (sub_1004A5814() == v11 && v12 == v20)
          {
            goto LABEL_20;
          }

          v21 = sub_1004A6D34();

          if (v21)
          {
LABEL_22:

            sub_1002BDB88(&v23, v10);
          }

          v6 = v11;
          v7 = v12;
          v8 = 2;
          goto LABEL_4;
        }
      }

      else
      {

        sub_1002D22A8(v11, v12, v13);

        if (v13 == 2)
        {
          goto LABEL_18;
        }
      }

LABEL_14:
      if (v13 == 5 && !(v12 | v11))
      {

        v4 = v10;
        goto LABEL_5;
      }

      v6 = v11;
      v7 = v12;
      v8 = v13;
LABEL_4:
      sub_1002D22C0(v6, v7, v8);

      v4 = 0;
LABEL_5:
      if (++v5 == v3)
      {
      }
    }
  }

  return result;
}

Swift::Int sub_1002CB958(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002D87A0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1002CD654(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1002CB9C4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002D0480(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
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
      sub_10000C9C0(&qword_1005D70F0, &unk_1004F13C0);
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1002CDE4C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1002CBB24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a3 + 32;
  v9 = *(a3 + 16);
  if (!a2)
  {
    if (v9)
    {
      v11 = 0;
      do
      {

        v23 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v22, a1);

        if (v23)
        {
          goto LABEL_4;
        }
      }

      while (v9 != ++v11);
    }

LABEL_10:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  v11 = sub_1002CEE8C(a1, v8, v9, (a2 + 16), a2 + 32);
  v13 = v12;

  if (v13)
  {
    goto LABEL_10;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (v11 < *(a4 + 16))
  {
    v14 = a4 + 48 * v11;
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    v17 = *(v14 + 48);
    v19 = *(v14 + 64);
    v18 = *(v14 + 72);
    v20 = *(v14 + 56);
    v21 = v20;

    sub_1002D22A8(v16, v17, v20);

LABEL_11:
    *a5 = v15;
    a5[1] = v16;
    a5[2] = v17;
    a5[3] = v21;
    a5[4] = v19;
    a5[5] = v18;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1002CBC5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a3 + 32;
  v9 = *(a3 + 16);
  if (!a2)
  {
    if (v9)
    {
      v11 = 0;
      while (1)
      {

        v21 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v20, a1);

        if (v21)
        {
          goto LABEL_4;
        }

        if (v9 == ++v11)
        {
          goto LABEL_10;
        }
      }
    }

    v15 = 0;
    v16 = 0;
    v19 = 0;
    v17 = 0;
LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v11 = sub_1002CEE8C(a1, v8, v9, (a2 + 16), a2 + 32);
  v13 = v12;

  if (v13)
  {
LABEL_10:
    v15 = 0;
    v16 = 0;
    v19 = 0;
    v17 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_4:
  if (v11 < *(a4 + 16))
  {
    v14 = a4 + 48 * v11;
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    v17 = *(v14 + 56);
    v9 = *(v14 + 64);
    v18 = *(v14 + 72);
    v19 = *(v14 + 48);
    sub_1002D22A8(v15, v16, *(v14 + 48));

LABEL_13:
    *a5 = v15;
    a5[1] = v16;
    a5[2] = v19;
    a5[3] = v17;
    a5[4] = v9;
    a5[5] = v18;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1002CBDA0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1002BF928(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1002CBDDC(uint64_t a1)
{
  sub_1002C9DF4(a1);
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v1 = sub_1004A5614();

  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  sub_1004A5994(v3);
  v4._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v4);

  v5._countAndFlagsBits = 10537;
  v5._object = 0xE200000000000000;
  sub_1004A5994(v5);
  return v1;
}

uint64_t sub_1002CBEC0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1002D0494(v7, v8) & 1;
}

BOOL sub_1002CBF08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return (sub_1002CF7BC(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1002CF614(v2, v3) & 1) != 0;
}

uint64_t sub_1002CBF60()
{
  if (*(*(v0 + 40) + 16))
  {
    sub_1004A6724(26);

    v2._countAndFlagsBits = sub_1004A5824();
    sub_1004A5994(v2);

    v3._countAndFlagsBits = 2112039;
    v3._object = 0xE300000000000000;
    sub_1004A5994(v3);
    v4._countAndFlagsBits = sub_1002CC654(*(v0 + 8), *(v0 + 16), *(v0 + 24));
    sub_1004A5994(v4);

    v5._countAndFlagsBits = 8236;
    v5._object = 0xE200000000000000;
    sub_1004A5994(v5);
    v6._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v6);

    v7._countAndFlagsBits = 0x202C736574796220;
    v7._object = 0xEC0000002E2E2E31;
    sub_1004A5994(v7);
    v8._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v8);
  }

  else
  {
    sub_1004A6724(18);

    v9._countAndFlagsBits = sub_1004A5824();
    sub_1004A5994(v9);

    v10._countAndFlagsBits = 2112039;
    v10._object = 0xE300000000000000;
    sub_1004A5994(v10);
    v11._countAndFlagsBits = sub_1002CC654(*(v0 + 8), *(v0 + 16), *(v0 + 24));
    sub_1004A5994(v11);

    v12._countAndFlagsBits = 8236;
    v12._object = 0xE200000000000000;
    sub_1004A5994(v12);
    v13._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v13);

    v14._countAndFlagsBits = 0x736574796220;
    v14._object = 0xE600000000000000;
    sub_1004A5994(v14);
  }

  return 39;
}

uint64_t sub_1002CC1C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 16))
  {
    v9 = result;

    v10 = sub_1002CD464(1, v9);
    sub_1002CBB24(v10, a2, a3, a4, &v43);

    if (v43)
    {
      v38 = a5;
      v11 = v46;
      v47 = v43;
      v48 = v44;
      v49 = v45;
      sub_1002D22D8(&v48);
      v50 = v11;
      sub_1002D2308(&v50);
      v12 = *(a4 + 16);
      if (!v12)
      {
        return sub_1002D2370(&v47);
      }

      v13 = 0;
      v39 = a4 + 32;
      v14 = a4 + 40;
      v41 = v9;
      while (1)
      {
        v15 = *(v14 - 8);
        v16 = *v14;
        v17 = *(v14 + 8);
        v18 = *(v14 + 16);

        sub_1002D22A8(v16, v17, v18);

        v19 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v15, v9);

        sub_1002D22C0(v16, v17, v18);

        if (v19)
        {
          break;
        }

        ++v13;
        v14 += 48;
        v9 = v41;
        if (v12 == v13)
        {
          return sub_1002D2370(&v47);
        }
      }

      v20 = v47;

      v21 = 0;
      v22 = v12;
      v23 = 0;
      while (1)
      {
        while (1)
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            return result;
          }

          if (v13 < v23)
          {
            break;
          }

LABEL_10:
          v23 = v24;
          if (v24 == v22)
          {
            goto LABEL_45;
          }

          if (v24 >= v22)
          {
LABEL_40:
            __break(1u);
LABEL_41:
            sub_1002D23C4(&v47, v42);

            sub_1002D2370(&v47);

            swift_unknownObjectRelease();
LABEL_42:
            sub_1002D22C0(v17, v40, v16);
          }
        }

        v25 = v39 + 48 * v23;
        v26 = *v25;
        v17 = *(v25 + 8);
        v27 = *(v25 + 16);
        LODWORD(v16) = *(v25 + 24);

        v40 = v27;
        sub_1002D22A8(v17, v27, v16);

        if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v26, v41))
        {
          goto LABEL_9;
        }

        v28 = *(v20 + 16);
        if (v28 >= *(v26 + 16))
        {

          sub_1002D2370(&v47);

          goto LABEL_42;
        }

        v29 = 32;
        while (v28)
        {
          v30 = *(v20 + v29);
          v31 = *(v26 + v29);
          --v28;
          v29 += 8;
          if (v31 != v30)
          {
            goto LABEL_41;
          }
        }

        sub_1002D23C4(&v47, v42);
        swift_unknownObjectRelease();
        if (v21)
        {
          v32 = *(v21 + 16);
          if (v32 < *(v26 + 16))
          {
            v33 = 32;
            while (v32)
            {
              v34 = *(v21 + v33);
              v35 = *(v26 + v33);
              --v32;
              v33 += 8;
              if (v35 != v34)
              {
                swift_unknownObjectRelease();
                goto LABEL_26;
              }
            }

LABEL_9:

            sub_1002D22C0(v17, v27, v16);

            v22 = v12;
            goto LABEL_10;
          }

          if (v16 == 2)
          {
LABEL_31:
            if (sub_1004A5814() == v17 && v27 == v36)
            {

              goto LABEL_35;
            }

            v37 = sub_1004A6D34();

            if (v37)
            {
LABEL_35:
              *v38 = 1;
            }

            LOBYTE(v16) = 2;
            goto LABEL_37;
          }
        }

        else
        {
LABEL_26:
          if (v16 == 2)
          {
            goto LABEL_31;
          }
        }

        if (v16 == 5 && !(v27 | v17))
        {

          v21 = v26;
          goto LABEL_38;
        }

LABEL_37:

        sub_1002D22C0(v17, v27, v16);

        v21 = 0;
LABEL_38:
        v22 = v12;
        if (v24 == v12)
        {
LABEL_45:

          sub_1002D2370(&v47);
        }

        v23 = v24;
        if (v24 >= v12)
        {
          goto LABEL_40;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002CC654(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        v3._countAndFlagsBits = 0x2F74786574;
        v3._object = 0xE500000000000000;
        goto LABEL_13;
      }

      v3._countAndFlagsBits = 0x2F6567616D69;
      goto LABEL_11;
    }

    v4 = 1768191329;
LABEL_10:
    v3._countAndFlagsBits = v4 & 0xFFFF0000FFFFFFFFLL | 0x2F6F00000000;
LABEL_11:
    v3._object = 0xE600000000000000;
    goto LABEL_13;
  }

  if (a3 == 3)
  {
    v4 = 1701079414;
    goto LABEL_10;
  }

  if (a3 == 4)
  {
    v3._countAndFlagsBits = 0x72617069746C756DLL;
    v3._object = 0xEA00000000002F74;
LABEL_13:
    sub_1004A5994(v3);
    sub_1004A6934();
    return 0;
  }

  if (a1 | a2)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1002CC7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002CC940(a1);
  v6 = v5;
  v8 = v7;
  v9 = *(a2 + 144);
  v22[8] = *(a2 + 128);
  v22[9] = v9;
  v22[10] = *(a2 + 160);
  v23 = *(a2 + 176);
  v10 = *(a2 + 80);
  v22[4] = *(a2 + 64);
  v22[5] = v10;
  v11 = *(a2 + 112);
  v22[6] = *(a2 + 96);
  v22[7] = v11;
  v12 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v12;
  v13 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v13;
  v14 = sub_10000FE88(v22);
  if (v14 == 1)
  {
    UInt32.init(_:)(v22);
    v15 = 0;
  }

  else
  {
    v15 = *(UInt32.init(_:)(v22) + 0x50);
  }

  v24[0] = v4;
  v24[1] = v6;
  v24[2] = v8;
  v24[3] = v15;
  v24[4] = v14 == 1;
  v24[5] = _swiftEmptySetSingleton;

  result = sub_1002CCB9C(v24, a1);
  if (*(a1 + 16))
  {

    v17 = sub_1002CD464(1, a1);
    v18 = sub_1002CCE40(v20, v17);
    if (*(v19 + 40))
    {

      sub_1002BDB88(&v21, a1);
    }

    (v18)(v20, 0);
  }

  return result;
}

uint64_t sub_1002CC940(uint64_t a1)
{
  v1 = BodyStructure.mediaType.getter();
  v3 = v2;

  v4 = Media.TopLevelType.text.unsafeMutableAddressor();
  if (*v4 == v1 && v4[1] == v3)
  {
    goto LABEL_6;
  }

  if (sub_1004A6D34())
  {
    goto LABEL_6;
  }

  v9 = Media.TopLevelType.audio.unsafeMutableAddressor();
  if (*v9 == v1 && v9[1] == v3)
  {
    goto LABEL_6;
  }

  if (sub_1004A6D34())
  {
    goto LABEL_6;
  }

  v10 = Media.TopLevelType.image.unsafeMutableAddressor();
  if (*v10 == v1 && v10[1] == v3)
  {
    goto LABEL_6;
  }

  if (sub_1004A6D34())
  {
    goto LABEL_6;
  }

  v11 = Media.TopLevelType.message.unsafeMutableAddressor();
  if (*v11 == v1 && v11[1] == v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  if (v12 = Media.TopLevelType.video.unsafeMutableAddressor(), *v12 == v1) && v12[1] == v3 || (sub_1004A6D34())
  {
LABEL_6:

    BodyStructure.mediaType.getter();
    v7 = v6;
  }

  else
  {
    v13 = Media.TopLevelType.multipart.unsafeMutableAddressor();
    if (*v13 == v1 && v13[1] == v3)
    {
    }

    else
    {
      v14 = sub_1004A6D34();

      if ((v14 & 1) == 0)
      {
        return 1;
      }
    }

    BodyStructure.mediaType.getter();
    v7 = v15;
  }

  return v7;
}

uint64_t sub_1002CCB9C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v32 = a1[3];
  v33 = a1[2];
  v6 = a1[4];
  v7 = a1[5];
  v9 = *v2;
  v8 = v2[1];
  v10 = v8 + 32;
  v11 = *(v8 + 16);
  if (!*v2)
  {
    if (v11)
    {
      v31 = a1[4];
      v12 = 0;
      while (1)
      {

        v18 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v17, a2);

        if (v18)
        {
          break;
        }

        if (v11 == ++v12)
        {
          v16 = 0;
          LOBYTE(v6) = v31;
          goto LABEL_10;
        }
      }

      if (!v7)
      {
        v16 = 0;
LABEL_28:
        sub_1002CF840(v12, v16);

        sub_1002CF9A0(v12, &v34);
        v38 = v34;
        v39 = v35;
        sub_1002D22D8(&v38);
        v37 = v36;
        return sub_1002D2308(&v37);
      }

      LOBYTE(v6) = v31;
      goto LABEL_22;
    }

    v16 = 0;
    if (v7)
    {
LABEL_11:
      sub_1002CEA84(a2, v16);

      v21 = v2[2];
      v20 = v2 + 2;
      v19 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((result & 1) == 0)
      {
        result = sub_1002D3C38(0, *(v19 + 16) + 1, 1);
        v19 = *v20;
      }

      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1002D3C38((v23 > 1), v24 + 1, 1);
        v19 = *v20;
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 48 * v24;
      *(v25 + 32) = v5;
      *(v25 + 40) = v4;
      *(v25 + 48) = v33;
      *(v25 + 56) = v32;
      *(v25 + 64) = v6 & 1;
      *(v25 + 72) = v7;
      *v20 = v19;
      return result;
    }

LABEL_17:
  }

  v12 = sub_1002CEE8C(a2, v10, v11, (v9 + 16), v9 + 32);
  v14 = v13;
  v16 = v15;

  if (v14)
  {
LABEL_10:
    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_22:
  v26 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D87B4(v26);
    v26 = result;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v26 + 16))
  {
    v27 = v26 + 48 * v12;
    v28 = *(v27 + 32);
    v29 = *(v27 + 40);
    *(v27 + 32) = v5;
    *(v27 + 40) = v4;
    v30 = *(v27 + 48);
    *(v27 + 48) = v33;
    *(v27 + 56) = v32;
    *(v27 + 64) = v6 & 1;
    *(v27 + 72) = v7;
    sub_1002D22C0(v28, v29, v30);

    v2[2] = v26;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_1002CCE40(uint64_t *a1, uint64_t a2))(__int128 **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB8uLL);
  }

  *a1 = v5;
  *(v5 + 96) = 0u;
  v6 = v5 + 96;
  *(v5 + 144) = a2;
  *(v5 + 152) = v2;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  v7 = sub_1002CFAF4(a2, (v5 + 96));
  *(v6 + 80) = v8;
  *(v6 + 64) = v7;
  *(v6 + 72) = v9;
  return sub_1002CCED4;
}

void sub_1002CCED4(__int128 **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v6 = *(*a1 + 13);
  v5 = *(*a1 + 14);
  v8 = *(*a1 + 15);
  v7 = *(*a1 + 16);
  v9 = *(*a1 + 17);
  if (a2)
  {
    if (((*a1)[11] & 1) == 0)
    {
      v10 = v3[19];
      v13 = *(v10 + 16);
      v11 = (v10 + 16);
      v12 = v13;
      if (!v9)
      {
        v14 = v3[20];
        if (v14 < *(v12 + 16))
        {
          sub_1002CF9A0(v14, v3);
          v15 = *v11;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v11 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002D3C38(0, *(v15 + 16) + 1, 1);
            v15 = *v11;
          }

          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1002D3C38((v17 > 1), v18 + 1, 1);
            v15 = *v11;
          }

          *(v15 + 16) = v18 + 1;
          v19 = (v15 + 48 * v18);
          v20 = *v3;
          v21 = *(v3 + 1);
          v22 = *(v3 + 2);
LABEL_29:
          v19[3] = v21;
          v19[4] = v22;
          v19[2] = v20;
          *v11 = v15;
          v14 = v3[20];
          goto LABEL_30;
        }

        goto LABEL_30;
      }

LABEL_18:
      sub_1002D22A8(*(*a1 + 12), v6, v5);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v12;
      if ((v36 & 1) == 0)
      {
        sub_1002D3C38(0, *(v12 + 16) + 1, 1);
        v12 = *v11;
      }

      v38 = *(v12 + 16);
      v39 = *(v12 + 24);
      v40 = v38 + 1;
      if (v38 >= v39 >> 1)
      {
        v46 = *(v12 + 16);
        v47 = v38 + 1;
        sub_1002D3C38((v39 > 1), v38 + 1, 1);
        v40 = v47;
        v38 = v46;
        v12 = *v11;
      }

      v41 = v3[20];
      *(v12 + 16) = v40;
      v42 = v12 + 48 * v38;
      *(v42 + 32) = v4;
      *(v42 + 40) = v6;
      *(v42 + 48) = v5;
      *(v42 + 56) = v8;
      *(v42 + 64) = v7 & 1;
      *(v42 + 72) = v9;
      *v11 = v12;
      sub_1002CFC74(v41, v38, v37);
      goto LABEL_31;
    }
  }

  else if (((*a1)[11] & 1) == 0)
  {
    v34 = v3[19];
    v35 = *(v34 + 16);
    v11 = (v34 + 16);
    v12 = v35;
    if (!v9)
    {
      v14 = v3[20];
      if (v14 < *(v12 + 16))
      {
        sub_1002CF9A0(v14, (v3 + 6));
        v15 = *v11;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *v11 = v15;
        if ((v43 & 1) == 0)
        {
          sub_1002D3C38(0, *(v15 + 16) + 1, 1);
          v15 = *v11;
        }

        v45 = *(v15 + 16);
        v44 = *(v15 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1002D3C38((v44 > 1), v45 + 1, 1);
          v15 = *v11;
        }

        *(v15 + 16) = v45 + 1;
        v19 = (v15 + 48 * v45);
        v20 = *(v3 + 3);
        v21 = *(v3 + 4);
        v22 = *(v3 + 5);
        goto LABEL_29;
      }

LABEL_30:
      sub_1002CF840(v14, v3[21]);

      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (v9)
  {
    v23 = v3[21];
    v25 = v3[18];
    v24 = v3[19];
    sub_1002D22A8(*(*a1 + 12), v6, v5);

    sub_1002CEA84(v25, v23);
    v28 = *(v24 + 16);
    v26 = (v24 + 16);
    v27 = v28;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v28;
    if ((v29 & 1) == 0)
    {
      sub_1002D3C38(0, *(v27 + 16) + 1, 1);
      v27 = *v26;
    }

    v31 = *(v27 + 16);
    v30 = *(v27 + 24);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      sub_1002D3C38((v30 > 1), v31 + 1, 1);
      v32 = v31 + 1;
      v27 = *v26;
    }

    *(v27 + 16) = v32;
    v33 = v27 + 48 * v31;
    *(v33 + 32) = v4;
    *(v33 + 40) = v6;
    *(v33 + 48) = v5;
    *(v33 + 56) = v8;
    *(v33 + 64) = v7 & 1;
    *(v33 + 72) = v9;
    *v26 = v27;
  }

LABEL_31:
  sub_1002D248C(v3[12], v3[13], v3[14], v3[15], v3[16], v3[17]);

  free(v3);
}

uint64_t sub_1002CD214(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1002CBC5C(a1, a2[2], a2[3], a2[4], &v19);
  v4 = v23;
  if (!v23)
  {
LABEL_14:
    swift_endAccess();
    return 0;
  }

  v5 = v21;
  v6 = v22;
  swift_endAccess();
  if ((v6 & 1) == 0)
  {
    v17 = v19;
    v18 = v20;
    sub_1002D22D8(&v17);
    v24 = v4;
LABEL_17:
    sub_1002D2308(&v24);
    return v5;
  }

  v24 = v4;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v5 = 0;
  while (v9)
  {
LABEL_11:
    v9 &= v9 - 1;

    v15 = sub_1002CD214(v14, a2);

    v16 = __OFADD__(v5, v15);
    v5 += v15;
    if (v16)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v17 = v19;
      v18 = v20;
      sub_1002D22D8(&v17);
      sub_1002D2308(&v24);

      goto LABEL_17;
    }

    v9 = *(v4 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

double sub_1002CD3C8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);

  sub_1002D22A8(v8, v9, v10);
  v11 = sub_1002CD214(a1, a3);
  v12 = a2[5];
  *a4 = a1;
  *(a4 + 8) = a1;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;

  return result;
}

uint64_t sub_1002CD464(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_29;
  }

  v2 = result;
  if (!result)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_25:

    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = (a2 + 32);
  v6 = v3 - 1;
  v7 = _swiftEmptyArrayStorage;
  v16 = result;
  while (1)
  {
    v9 = *v5++;
    v8 = v9;
    v10 = v7[2];
    if (v10 < v2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091C48(0, v10 + 1, 1);
      }

      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_100091C48((v11 > 1), v12 + 1, 1);
      }

      v7[2] = v12 + 1;
      v7[v12 + 4] = v8;
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_6;
    }

    if (v4 >= v10)
    {
      break;
    }

    v13 = v7[v4 + 4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100091C48(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      sub_100091C48((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    _swiftEmptyArrayStorage[v15 + 4] = v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002D878C(v7);
      v7 = result;
    }

    v2 = v16;
    if (v4 >= v7[2])
    {
      goto LABEL_28;
    }

    v7[v4++ + 4] = v8;
    if (v4 < v16)
    {
      if (!v6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      v4 = 0;
    }

LABEL_6:
    --v6;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1002CD654(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1002CD82C(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1002CD74C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002CD74C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;

      v13 = static SectionSpecifier.Part.< infix(_:_:)(v12, v8, v11);

      if ((v13 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v10;
      v8 = v10[1];
      *v10 = v8;
      v10[1] = v14;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002CD82C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v6 = *v94;
    if (!*v94)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100141810(v8);
      v8 = result;
    }

    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = *&v8[16 * v85];
        v87 = *&v8[16 * v85 + 24];
        sub_1002CE3D8((*a3 + 8 * v86), (*a3 + 8 * *&v8[16 * v85 + 16]), (*a3 + 8 * v87), v6);
        if (v5)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100141810(v8);
        }

        if (v85 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v8[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        result = sub_100141784(v85 - 1);
        v85 = *(v8 + 2);
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v90 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;

      v16 = static SectionSpecifier.Part.< infix(_:_:)(v15, v11, v14);

      v92 = v7;
      v17 = v7 + 2;
      while (v6 != v17)
      {
        v19 = *(v13 - 1);
        v18 = *v13;

        v21 = static SectionSpecifier.Part.< infix(_:_:)(v20, v18, v19) & 1;

        ++v17;
        ++v13;
        if ((v16 & 1) != v21)
        {
          v6 = v17 - 1;
          break;
        }
      }

      if (v16)
      {
        v9 = v92;
        if (v6 < v92)
        {
          goto LABEL_117;
        }

        if (v92 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v92;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v5);
              *(v26 + v5) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v5 += 8;
          }

          while (v24 < v23);
        }

        v10 = v6;
        v5 = v90;
      }

      else
      {
        v10 = v6;
        v5 = v90;
        v9 = v92;
      }
    }

    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100085288((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v10;
    v43 = *v94;
    if (!*v94)
    {
      goto LABEL_125;
    }

    v7 = v10;
    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_107;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_71:
        if (v66)
        {
          goto LABEL_106;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_109;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_78:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
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

        v83 = *&v8[16 * v82 + 32];
        v6 = *&v8[16 * v44 + 40];
        sub_1002CE3D8((*a3 + 8 * v83), (*a3 + 8 * *&v8[16 * v44 + 32]), (*a3 + 8 * v6), v43);
        if (v5)
        {
        }

        if (v6 < v83)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100141810(v8);
        }

        if (v82 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v84 = &v8[16 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v6;
        result = sub_100141784(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_108;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_112;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v91 = v5;
  v93 = v9;
  v29 = *a3;
  v30 = *a3 + 8 * v10 - 8;
  v31 = v9 - v10;
  v95 = v28;
LABEL_30:
  v96 = v10;
  v32 = *(v29 + 8 * v10);
  v6 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *v33;

    v36 = static SectionSpecifier.Part.< infix(_:_:)(v35, v32, v34);

    if ((v36 & 1) == 0)
    {
LABEL_29:
      v10 = v96 + 1;
      v30 += 8;
      --v31;
      if (v96 + 1 != v95)
      {
        goto LABEL_30;
      }

      v10 = v95;
      v5 = v91;
      v9 = v93;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v37 = *v33;
    v32 = v33[1];
    *v33 = v32;
    v33[1] = v37;
    --v33;
    if (__CFADD__(v6++, 1))
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

uint64_t sub_1002CDE4C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_100141810(v8);
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
        sub_1002CE670((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
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
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_100085288((v35 > 1), v5 + 1, 1, v8);
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
        sub_1002CE670((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
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
    if (v30 >= *(v32 - 1))
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

uint64_t sub_1002CE3D8(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;

      v21 = static SectionSpecifier.Part.< infix(_:_:)(v20, v18, v19);

      if (v21)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v22 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v22;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v34 = v4;
LABEL_25:
    v33 = v15;
    v23 = (v15 - 8);
    v5 -= 8;
    v24 = v14;
    do
    {
      v25 = v5 + 8;
      v26 = *--v24;
      v27 = v23;
      v28 = *v23;

      v30 = static SectionSpecifier.Part.< infix(_:_:)(v29, v26, v28);

      if (v30)
      {
        v31 = v27;
        if (v25 != v33)
        {
          *v5 = *v27;
        }

        v4 = v34;
        if (v14 <= v34 || (v15 = v31, v31 <= v6))
        {
          v15 = v31;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v25 != v14)
      {
        *v5 = *v24;
      }

      v5 -= 8;
      v14 = v24;
      v23 = v27;
    }

    while (v24 > v34);
    v14 = v24;
    v15 = v33;
    v4 = v34;
  }

LABEL_36:
  if (v15 != v4 || v15 >= v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1002CE670(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 1) < *(v4 + 1))
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
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1002CE874(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = sub_1004A4784();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = sub_1004A4794();
    sub_1002CEFB4(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1002CE958(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_1002CE958(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = sub_1002D3BF8(0, a2 & ~(a2 >> 63), 0);
  if (v2)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = v5++;
      v8 = *(a1 + 8 * v7);

      v9 = 4;
      while (v6)
      {
        v10 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v8, _swiftEmptyArrayStorage[v9++]);
        --v6;
        if (v10)
        {

          return v7;
        }
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      v6 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1002D3BF8((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6;
      _swiftEmptyArrayStorage[v12 + 4] = v8;
    }

    while (v5 != v2);
  }

  return v2;
}

uint64_t sub_1002CEA84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[1];
  v5 = v2 + 1;
  v6 = v7;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((result & 1) == 0)
  {
    result = sub_1002D3BF8(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_1002D3BF8((v9 > 1), v10 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v10 + 1;
  *(v6 + 8 * v10 + 32) = a1;
  v3[1] = v6;
  if (*v3)
  {
    swift_beginAccess();
    if (sub_1004A4754() > v10)
    {
      result = swift_isUniquelyReferenced_native();
      v11 = *v3;
      if ((result & 1) == 0)
      {
        if (!v11)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v12 = sub_1004A4774();

        *v3 = v12;
        v11 = v12;
      }

      if (v11)
      {
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v10 < 0xF)
  {
    return result;
  }

  return sub_1002CEBF4();
}

uint64_t sub_1002CEBF4()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1004A4784();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_1002CEC94(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1002CEC94(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_1004A4784();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_1004A4794();
    sub_1002CED14(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_1002CED64(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(v23 + 8 * v7);
        sub_1004A6E94();

        SectionSpecifier.Part.hash(into:)(v18, v8);
        result = sub_1004A6F14();
        v9 = 1 << *a3;
        v10 = __OFSUB__(v9, 1);
        v11 = v9 - 1;
        if (v10)
        {
          break;
        }

        v12 = v11 & result;
        v13 = sub_1004A46F4();
        v15 = v14;
        v17 = v16;

        v18[0] = a3;
        v18[1] = a4;
        v18[2] = v12;
        v19 = v13;
        v20 = v15;
        v21 = v17;
        v22 = 0;
        while (v19)
        {
          sub_1004A4744();
        }

        result = sub_1004A4734();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1002CEE8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1004A6E94();
  SectionSpecifier.Part.hash(into:)(v21, a1);
  result = sub_1004A6F14();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 & result;
    v13 = sub_1004A46F4();
    *&v23 = a4;
    *(&v23 + 1) = a5;
    *&v24 = v12;
    *(&v24 + 1) = v13;
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v26 = 0;
    v16 = sub_1004A4724();
    if ((v17 & 1) == 0)
    {
      do
      {

        v19 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v18, a1);

        if (v19)
        {
          break;
        }

        sub_1004A4744();
        v21[0] = v23;
        v21[1] = v24;
        v21[2] = v25;
        v22 = v26;
        v16 = sub_1004A4724();
      }

      while ((v20 & 1) == 0);
    }

    return v16;
  }

  return result;
}

Swift::Int sub_1002CEFB4(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v34 = v6 + 1;
    v7 = *(v5 + 8 * v6);
    sub_1004A6E94();

    SectionSpecifier.Part.hash(into:)(v25, v7);
    result = sub_1004A6F14();
    v8 = 1 << *v4;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v11 = v10 & result;
    v12 = sub_1004A46F4();
    v14 = v13;
    v16 = v15;

    *&v26 = v4;
    *(&v26 + 1) = a4;
    *&v27 = v11;
    *(&v27 + 1) = v12;
    *&v28 = v14;
    *(&v28 + 1) = v16;
    v29 = 0;
    v33 = 0;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    while (1)
    {
      v17 = sub_1004A4724();
      if (v18)
      {
        break;
      }

      v19 = *(v5 + 8 * v17);
      v20 = *(v5 + 8 * v6);

      v21 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v19, v20);

      if (v21)
      {
        return 0;
      }

      sub_1004A4744();
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
    }

    result = sub_1004A4734();
    v6 = v34;
    v4 = a3;
    if (v34 != a2)
    {
      continue;
    }

    return 1;
  }
}

void sub_1002CF180(unint64_t a1, char a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && a1 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1002D3BF8(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = sub_1004A4784();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = sub_1004A4784();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  v18 = sub_1004A4784();
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1002CEC94(v7, v15, 0, v13);

    *v3 = v20;
    return;
  }

  if (!v10 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v21 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v21 = sub_1004A4774();

  *v3 = v21;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_35:
  swift_beginAccess();
  if ((*(v21 + 24) & 0x3FLL) != v13)
  {
    *(v21 + 24) = *(v21 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }
}

void *sub_1002CF360(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1002CF404(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005D70E0, &qword_1004F0358);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1004A6E94();

    SectionSpecifier.Part.hash(into:)(v26, v16);
    result = sub_1004A6F14();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(v9[6] + 8 * v20) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}