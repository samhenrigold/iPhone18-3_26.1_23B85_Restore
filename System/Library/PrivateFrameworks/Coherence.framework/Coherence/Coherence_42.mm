uint64_t sub_1AE1FC868(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v63 = *MEMORY[0x1E69E9840];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v11 = sub_1AE23E34C();
  v12 = 1 << *a5;
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
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

  *&v55 = a5;
  *(&v55 + 1) = a6;
  *&v56 = v14 & v11;
  *(&v56 + 1) = sub_1AE23C13C();
  *&v57 = v15;
  *(&v57 + 1) = v16;
  v58 = 0;
  result = sub_1AE23C15C();
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = 0;
  if (v18)
  {
    return result;
  }

  if (a1)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2 == 0xC000000000000000;
  }

  v20 = !v19;
  v48 = v20;
  v21 = a2 >> 62;
  v22 = __OFSUB__(HIDWORD(a1), a1);
  v46 = v22;
  v47 = BYTE6(a2);
  v43 = a3;
  v44 = a2;
  while (1)
  {
    v24 = (a3 + 16 * result);
    v26 = *v24;
    v25 = v24[1];
    v27 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v26)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25 == 0xC000000000000000;
      }

      v30 = !v28 || v21 < 3;
      if (((v30 | v48) & 1) == 0)
      {
        return result;
      }

LABEL_38:
      v31 = 0;
      if (v21 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_38;
      }

      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v13 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v13)
      {
        goto LABEL_69;
      }

      if (v21 <= 1)
      {
        goto LABEL_35;
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_70;
      }

      v31 = v31;
      if (v21 <= 1)
      {
LABEL_35:
        v34 = v47;
        if (v21)
        {
          v34 = HIDWORD(a1) - a1;
          if (v46)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
      v31 = BYTE6(v25);
      if (v21 <= 1)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    if (v21 != 2)
    {
      if (!v31)
      {
        return result;
      }

      goto LABEL_15;
    }

    v36 = *(a1 + 16);
    v35 = *(a1 + 24);
    v13 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v13)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_41:
    if (v31 != v34)
    {
      goto LABEL_15;
    }

    if (v31 < 1)
    {
      return result;
    }

    if (v27 > 1)
    {
      break;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_71;
      }

      v45 = result;
      sub_1ADDD86D8(v26, v25);
      v40 = sub_1AE23BB7C();
      if (v40)
      {
        v42 = sub_1AE23BBAC();
        if (__OFSUB__(v26, v42))
        {
          goto LABEL_74;
        }

        v40 += v26 - v42;
      }

LABEL_60:
      sub_1AE23BB9C();
      a2 = v44;
      sub_1ADDD8820(v40, a1, v44, v50);
      sub_1ADDCC35C(v26, v25);
      if (v50[0])
      {
        return v45;
      }

      a3 = v43;
      goto LABEL_15;
    }

    v37 = result;
    v50[0] = v26;
    LOWORD(v50[1]) = v25;
    BYTE2(v50[1]) = BYTE2(v25);
    BYTE3(v50[1]) = BYTE3(v25);
    BYTE4(v50[1]) = BYTE4(v25);
    BYTE5(v50[1]) = BYTE5(v25);
    sub_1ADDD86D8(v26, v25);
    sub_1ADDD8820(v50, a1, a2, &v49);
    sub_1ADDCC35C(v26, v25);
    if (v49)
    {
      return v37;
    }

LABEL_15:
    sub_1AE23C17C();
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    result = sub_1AE23C15C();
    if (v23)
    {
      return result;
    }
  }

  v45 = result;
  if (v27 == 2)
  {
    v39 = *(v26 + 16);
    v38 = *(v26 + 24);
    sub_1ADDD86D8(v26, v25);
    v40 = sub_1AE23BB7C();
    if (v40)
    {
      v41 = sub_1AE23BBAC();
      if (__OFSUB__(v39, v41))
      {
        goto LABEL_73;
      }

      v40 += v39 - v41;
    }

    if (__OFSUB__(v38, v39))
    {
      goto LABEL_72;
    }

    goto LABEL_60;
  }

  memset(v50, 0, 14);
  sub_1ADDD86D8(v26, v25);
  sub_1ADDD8820(v50, a1, a2, &v49);
  sub_1ADDCC35C(v26, v25);
  if (!v49)
  {
    goto LABEL_15;
  }

  return v45;
}

uint64_t sub_1AE1FCCFC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
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

  v10 = MEMORY[0x1B26FAA50](*(a2 + 16));
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
    v14 = MEMORY[0x1B26FAA60]();
    sub_1AE1FD320(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1AE1FCDE0(a2 + 32, v8);
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

char *sub_1AE1FCDE0(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1ADE6F2E4(0, a2 & ~(a2 >> 63), 0);
  if (!a2)
  {
LABEL_10:
    v5 = a2;
LABEL_12:

    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = (a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_1ADDD86D8(v7, *v6);
      if (sub_1AE1FCF24(v7, v8, v12))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ADE6F2E4(0, *(v12 + 16) + 1, 1);
      }

      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1ADE6F2E4((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v6 += 2;
      *(v12 + 16) = v10 + 1;
      v11 = v12 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      if (a2 == v5)
      {
        goto LABEL_10;
      }
    }

    sub_1ADDCC35C(v7, v8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1FCF24(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v40[3] = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2;
    v5 = a1;
    v6 = a2 >> 62;
    v31 = HIDWORD(a1);
    v7 = __OFSUB__(HIDWORD(a1), a1);
    v8 = BYTE6(a2);
    if (a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 == 0xC000000000000000;
    }

    v10 = v9;
    v38 = v10;
    v33 = HIDWORD(a1) - a1;
    v34 = a1;
    v30 = a1 >> 32;
    v11 = (a3 + 40);
    v35 = BYTE6(a2);
    v29 = v7;
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *v11 >> 62;
      if (v6 == 3)
      {
        v15 = v38;
        if (*v11 >> 62 != 3)
        {
          v15 = 0;
        }

        if (v15 == 1)
        {
          v16 = 0;
          if (!v13 && v12 == 0xC000000000000000)
          {
            return 1;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v6 <= 1)
        {
          v16 = v8;
          if (v6)
          {
            v16 = v33;
            if (v7)
            {
              goto LABEL_62;
            }
          }

LABEL_27:
          if (v14 > 1)
          {
            goto LABEL_32;
          }

          goto LABEL_28;
        }

        if (v6 == 2)
        {
          v18 = *(v5 + 16);
          v17 = *(v5 + 24);
          v19 = __OFSUB__(v17, v18);
          v16 = v17 - v18;
          if (v19)
          {
            goto LABEL_61;
          }

          goto LABEL_27;
        }
      }

      v16 = 0;
      if (v14 > 1)
      {
LABEL_32:
        if (v14 != 2)
        {
          if (!v16)
          {
            return 1;
          }

          goto LABEL_13;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        v19 = __OFSUB__(v20, v21);
        v22 = v20 - v21;
        if (v19)
        {
          goto LABEL_60;
        }

        if (v16 != v22)
        {
          goto LABEL_13;
        }

        goto LABEL_38;
      }

LABEL_28:
      if (v14)
      {
        if (__OFSUB__(HIDWORD(v13), v13))
        {
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
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
        }

        if (v16 != HIDWORD(v13) - v13)
        {
          goto LABEL_13;
        }
      }

      else if (v16 != BYTE6(v12))
      {
        goto LABEL_13;
      }

LABEL_38:
      if (v16 < 1)
      {
        return 1;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v23 = *(v5 + 16);
          v32 = *(v5 + 24);
          sub_1ADDD86D8(v13, v12);
          v24 = sub_1AE23BB7C();
          if (v24)
          {
            v25 = sub_1AE23BBAC();
            if (__OFSUB__(v23, v25))
            {
              goto LABEL_65;
            }

            v24 += v23 - v25;
          }

          v7 = v29;
          if (__OFSUB__(v32, v23))
          {
            goto LABEL_64;
          }

          sub_1AE23BB9C();
          sub_1ADDD8820(v24, v13, v12, v40);
          sub_1ADDCC35C(v13, v12);
          if (v40[0])
          {
            return 1;
          }

          v4 = a2;
LABEL_54:
          v8 = v35;
          v5 = a1;
          goto LABEL_13;
        }

        memset(v40, 0, 14);
        sub_1ADDD86D8(v13, v12);
      }

      else
      {
        if (v6)
        {
          if (v30 < v34)
          {
            goto LABEL_63;
          }

          sub_1ADDD86D8(*(v11 - 1), *v11);
          v26 = sub_1AE23BB7C();
          if (v26)
          {
            v27 = sub_1AE23BBAC();
            if (__OFSUB__(v34, v27))
            {
              goto LABEL_66;
            }

            v26 += v34 - v27;
          }

          sub_1AE23BB9C();
          sub_1ADDD8820(v26, v13, v12, v40);
          sub_1ADDCC35C(v13, v12);
          if (v40[0])
          {
            return 1;
          }

          goto LABEL_54;
        }

        LOWORD(v40[0]) = v5;
        BYTE2(v40[0]) = BYTE2(v5);
        BYTE3(v40[0]) = BYTE3(v5);
        BYTE4(v40[0]) = v31;
        BYTE5(v40[0]) = BYTE5(v5);
        BYTE6(v40[0]) = BYTE6(v5);
        HIBYTE(v40[0]) = HIBYTE(v5);
        LOWORD(v40[1]) = v4;
        BYTE2(v40[1]) = BYTE2(v4);
        BYTE3(v40[1]) = BYTE3(v4);
        BYTE4(v40[1]) = BYTE4(v4);
        BYTE5(v40[1]) = BYTE5(v4);
        sub_1ADDD86D8(v13, v12);
      }

      sub_1ADDD8820(v40, v13, v12, &v39);
      sub_1ADDCC35C(v13, v12);
      if (v39)
      {
        return 1;
      }

LABEL_13:
      v11 += 2;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void sub_1AE1FD320(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (a2 < 0)
  {
    goto LABEL_124;
  }

  v4 = a3;
  v5 = 0;
  while (1)
  {
    if (__OFADD__(v5, 1))
    {
      goto LABEL_117;
    }

    v6 = (a1 + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v7, v8);
    sub_1AE23BECC();
    v9 = sub_1AE23E34C();
    v10 = 1 << *v4;
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_118;
    }

    v70 = v5 + 1;
    v13 = v12 & v9;
    v14 = sub_1AE23C13C();
    v16 = v15;
    v18 = v17;
    sub_1ADDCC35C(v7, v8);
    *&v75 = v4;
    *(&v75 + 1) = a4;
    *&v76 = v13;
    *(&v76 + 1) = v14;
    *&v77 = v16;
    *(&v77 + 1) = v18;
    v78 = 0;
    v82 = 0;
    v79 = v75;
    v80 = v76;
    v81 = v77;
    v19 = sub_1AE23C15C();
    if ((v20 & 1) == 0)
    {
      break;
    }

LABEL_4:
    sub_1AE23C16C();
    v5 = v70;
    v4 = a3;
    if (v70 == a2)
    {
      return;
    }
  }

  v21 = a1;
  while (1)
  {
    v23 = (v21 + 16 * v19);
    v25 = *v23;
    v24 = v23[1];
    v27 = *v6;
    v26 = v6[1];
    v28 = v24 >> 62;
    v29 = v26 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v30 = 0;
      }

      else
      {
        v30 = v24 == 0xC000000000000000;
      }

      v31 = 0;
      v32 = v30 && v26 >> 62 == 3;
      if (v32 && !v27 && v26 == 0xC000000000000000)
      {
        return;
      }

LABEL_33:
      if (v29 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        v31 = BYTE6(v24);
        if (v29 > 1)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }

      LODWORD(v31) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_119;
      }

      v31 = v31;
      goto LABEL_33;
    }

    if (v28 == 2)
    {
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      v11 = __OFSUB__(v33, v34);
      v31 = v33 - v34;
      if (v11)
      {
        goto LABEL_120;
      }

      goto LABEL_33;
    }

    v31 = 0;
    if (v29 > 1)
    {
LABEL_39:
      if (v29 != 2)
      {
        if (!v31)
        {
          return;
        }

        goto LABEL_10;
      }

      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      v11 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v11)
      {
        goto LABEL_116;
      }

      goto LABEL_41;
    }

LABEL_34:
    if (!v29)
    {
      v35 = BYTE6(v26);
      goto LABEL_41;
    }

    LODWORD(v35) = HIDWORD(v27) - v27;
    if (__OFSUB__(HIDWORD(v27), v27))
    {
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
    }

    v35 = v35;
LABEL_41:
    if (v31 != v35)
    {
      goto LABEL_10;
    }

    if (v31 < 1)
    {
      return;
    }

    if (v28 > 1)
    {
      break;
    }

    if (!v28)
    {
      *__s2 = v25;
      *&__s2[8] = v24;
      __s2[10] = BYTE2(v24);
      __s2[11] = BYTE3(v24);
      __s2[12] = BYTE4(v24);
      __s2[13] = BYTE5(v24);
      sub_1ADDD86D8(v25, v24);
      sub_1ADDD86D8(v27, v26);
      goto LABEL_55;
    }

    if (v25 > v25 >> 32)
    {
      goto LABEL_121;
    }

    sub_1ADDD86D8(v25, v24);
    sub_1ADDD86D8(v27, v26);
    v42 = sub_1AE23BB7C();
    if (v42)
    {
      v43 = v42;
      v44 = sub_1AE23BBAC();
      if (__OFSUB__(v25, v44))
      {
        goto LABEL_123;
      }

      __s1a = (v25 - v44 + v43);
    }

    else
    {
      __s1a = 0;
    }

    sub_1AE23BB9C();
    v21 = a1;
    if (v29 == 2)
    {
      v59 = *(v27 + 16);
      v58 = *(v27 + 24);
      v45 = sub_1AE23BB7C();
      if (v45)
      {
        v60 = sub_1AE23BBAC();
        if (__OFSUB__(v59, v60))
        {
          goto LABEL_131;
        }

        v45 += v59 - v60;
      }

      v11 = __OFSUB__(v58, v59);
      v61 = v58 - v59;
      if (v11)
      {
        goto LABEL_128;
      }

      v62 = sub_1AE23BB9C();
      if (v62 >= v61)
      {
        v48 = v61;
      }

      else
      {
        v48 = v62;
      }

      v49 = __s1a;
      if (!__s1a)
      {
        goto LABEL_137;
      }

      v21 = a1;
      if (!v45)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if (v29 != 1)
      {
        v57 = __s1a;
        *__s2 = v27;
        *&__s2[8] = v26;
        __s2[10] = BYTE2(v26);
        __s2[11] = BYTE3(v26);
        __s2[12] = BYTE4(v26);
        __s2[13] = BYTE5(v26);
        if (!__s1a)
        {
          goto LABEL_135;
        }

LABEL_109:
        v64 = memcmp(v57, __s2, BYTE6(v26));
        sub_1ADDCC35C(v27, v26);
        sub_1ADDCC35C(v25, v24);
        if (!v64)
        {
          return;
        }

        goto LABEL_10;
      }

      if (v27 >> 32 < v27)
      {
        goto LABEL_127;
      }

      v45 = sub_1AE23BB7C();
      if (v45)
      {
        v50 = sub_1AE23BBAC();
        if (__OFSUB__(v27, v50))
        {
          goto LABEL_132;
        }

        v45 += v27 - v50;
      }

      v51 = sub_1AE23BB9C();
      if (v51 >= (v27 >> 32) - v27)
      {
        v48 = (v27 >> 32) - v27;
      }

      else
      {
        v48 = v51;
      }

      v21 = a1;
      v49 = __s1a;
      if (!__s1a)
      {
        goto LABEL_139;
      }

      if (!v45)
      {
        goto LABEL_138;
      }
    }

LABEL_105:
    if (v49 == v45)
    {
      sub_1ADDCC35C(v27, v26);
      sub_1ADDCC35C(v25, v24);
      return;
    }

    v63 = memcmp(v49, v45, v48);
    sub_1ADDCC35C(v27, v26);
    sub_1ADDCC35C(v25, v24);
    if (!v63)
    {
      return;
    }

LABEL_10:
    sub_1AE23C17C();
    v79 = v75;
    v80 = v76;
    v81 = v77;
    v82 = v78;
    v19 = sub_1AE23C15C();
    if (v22)
    {
      goto LABEL_4;
    }
  }

  if (v28 != 2)
  {
    *&__s2[6] = 0;
    *__s2 = 0;
    sub_1ADDD86D8(v25, v24);
    sub_1ADDD86D8(v27, v26);
LABEL_55:
    sub_1ADDD8820(__s2, v27, v26, &v73);
    if (v71)
    {
      goto LABEL_142;
    }

    sub_1ADDCC35C(v27, v26);
    sub_1ADDCC35C(v25, v24);
    if (v73)
    {
      return;
    }

    goto LABEL_10;
  }

  v38 = *(v25 + 16);
  sub_1ADDD86D8(v25, v24);
  sub_1ADDD86D8(v27, v26);
  v39 = sub_1AE23BB7C();
  if (v39)
  {
    v40 = v39;
    v41 = sub_1AE23BBAC();
    if (__OFSUB__(v38, v41))
    {
      goto LABEL_122;
    }

    __s1 = (v38 - v41 + v40);
  }

  else
  {
    __s1 = 0;
  }

  sub_1AE23BB9C();
  v21 = a1;
  if (v29 == 2)
  {
    v53 = *(v27 + 16);
    v52 = *(v27 + 24);
    v45 = sub_1AE23BB7C();
    if (v45)
    {
      v54 = sub_1AE23BBAC();
      if (__OFSUB__(v53, v54))
      {
        goto LABEL_129;
      }

      v45 += v53 - v54;
    }

    v11 = __OFSUB__(v52, v53);
    v55 = v52 - v53;
    if (v11)
    {
      goto LABEL_126;
    }

    v56 = sub_1AE23BB9C();
    if (v56 >= v55)
    {
      v48 = v55;
    }

    else
    {
      v48 = v56;
    }

    v49 = __s1;
    if (!__s1)
    {
      goto LABEL_141;
    }

    v21 = a1;
    if (!v45)
    {
      goto LABEL_140;
    }

    goto LABEL_105;
  }

  if (v29 == 1)
  {
    if (v27 >> 32 < v27)
    {
      goto LABEL_125;
    }

    v45 = sub_1AE23BB7C();
    if (v45)
    {
      v46 = sub_1AE23BBAC();
      if (__OFSUB__(v27, v46))
      {
        goto LABEL_130;
      }

      v45 += v27 - v46;
    }

    v47 = sub_1AE23BB9C();
    if (v47 >= (v27 >> 32) - v27)
    {
      v48 = (v27 >> 32) - v27;
    }

    else
    {
      v48 = v47;
    }

    v21 = a1;
    v49 = __s1;
    if (!__s1)
    {
      goto LABEL_134;
    }

    if (!v45)
    {
      goto LABEL_133;
    }

    goto LABEL_105;
  }

  v57 = __s1;
  *__s2 = v27;
  *&__s2[8] = v26;
  __s2[10] = BYTE2(v26);
  __s2[11] = BYTE3(v26);
  __s2[12] = BYTE4(v26);
  __s2[13] = BYTE5(v26);
  if (__s1)
  {
    goto LABEL_109;
  }

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
LABEL_141:
  __break(1u);
LABEL_142:

  __break(1u);
}

void sub_1AE1FDB14(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v65 = v2;
  v66 = 0;
  v33 = a1;
  v5 = *(a1 + 64);
  v4 = a1 + 64;
  v3 = v5;
  v6 = 1 << *(v4 - 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v30 = v2;

  v10 = 0;
  v31 = v9;
  v32 = v4;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v11 << 6);
      v13 = *(*(v33 + 48) + 16 * v12);
      v14 = *(v33 + 56) + 48 * v12;
      v44 = *v14;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = *(v14 + 32);
      v39 = *(v14 + 40);
      v18 = v13;
      v42 = v13;
      v43 = *(&v13 + 1);
      sub_1ADDD86D8(v13, *(&v13 + 1));
      v41 = v44;

      v19 = v15;
      v20 = v17;
      v21 = v16;

      v22 = v20;

      v23 = v39;

      if (!v21)
      {
        break;
      }

      v50[1] = v44;
      v50[0] = v42;
      v35 = v19;
      v36 = v21;
      v51 = v21;
      v52 = v19;
      v53 = v22;
      v54 = v23;
      sub_1AE23E31C();
      sub_1ADDCEE40(v50, v60, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v24 = v43;
      sub_1AE23BECC();
      v38 = sub_1AE23E34C();
      sub_1ADDCC35C(v18, v24);
      v40 = v18;

      v37 = &v30;
      v55[1] = v44;
      v55[0] = v42;
      v26 = v35;
      v27 = v36;
      v56 = v36;
      v57 = v35;
      v58 = v22;
      v59 = v23;
      v45 = v42;
      v46 = v44;
      *&v47 = v36;
      *(&v47 + 1) = v35;
      *&v48 = v22;
      *(&v48 + 1) = v23;
      MEMORY[0x1EEE9AC00](v25);
      *(&v30 - 2) = &v45;
      v28 = *(&v45 + 1);
      v34 = v45;
      sub_1ADDCEE40(v55, v49, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDD86D8(v40, v43);

      v29 = sub_1AE033684(0, v34, v28, v38, sub_1ADECDAAC, (&v30 - 4));
      v60[1] = v44;
      v60[0] = v42;
      v61 = v27;
      v62 = v26;
      v63 = v22;
      v64 = v23;
      sub_1ADDCEDE0(v60, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v49[0] = v45;
      v49[1] = v46;
      v49[2] = v47;
      v49[3] = v48;
      sub_1ADDCEDE0(v49, &qword_1EB5BA9E8, &qword_1AE251DE0);

      sub_1ADDCC35C(v40, v43);
      if ((v29 & 1) == 0)
      {
        goto LABEL_14;
      }

      v8 &= v8 - 1;
      v10 = v11;
      v9 = v31;
      v4 = v32;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_12;
      }

      v8 = *(v4 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1AE1FDEC0(_OWORD *a1, __int128 *a2)
{
  v2 = a2[1];
  v8 = *a2;
  v9 = v2;
  v3 = a2[3];
  v10 = a2[2];
  v11 = v3;
  v4 = v9;
  *a1 = v8;
  a1[1] = v4;
  v5 = v11;
  a1[2] = v10;
  a1[3] = v5;
  return sub_1ADDCEE40(&v8, &v7, &qword_1EB5BA9E8, &qword_1AE251DE0);
}

uint64_t sub_1AE1FDF30()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
    swift_beginAccess();
    return *(v1 + v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1FDFA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[15];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE74240;

  return sub_1AE1EE714(a1, v4, v5, v6, (v1 + 5), (v1 + 10), v7, v8);
}

uint64_t sub_1AE1FE088(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  sub_1ADDCC35C(*(v1 + 16), *(v1 + 24));

  return a1(v1, 40, 7);
}

uint64_t sub_1AE1FE0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1AC490(a1, v4, v5, v6);
}

double sub_1AE1FE1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1AE1FE250(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE1FE29C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (result)
  {

    return a4(a3);
  }

  return result;
}

uint64_t sub_1AE1FE32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1FE3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of RefContainer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MutableRefContainer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 40))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MutableRefContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 48))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MutableRefContainer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 32))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 56))(a1, a2, a3, a4, a5);
}

uint64_t sub_1AE1FE520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1FE55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence7CapsuleV20ObservableDifferenceV09ReferenceD0Oyx__G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AE1FE5B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE1FE604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *sub_1AE1FE664(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AE1FE688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE808;
  if (!qword_1EB5BE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE808);
  }

  return result;
}

unint64_t sub_1AE1FE6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE810;
  if (!qword_1EB5BE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE810);
  }

  return result;
}

unint64_t sub_1AE1FE730()
{
  result = qword_1EB5BE820;
  if (!qword_1EB5BE820)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BE818, &unk_1AE25A250);
    sub_1AE048F64(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE820);
  }

  return result;
}

void sub_1AE1FE7B4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1AE23C70C() - 8);
  v6 = (*(v5 + 80) + 44) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1AE23C6DC() - 8);
  sub_1AE1F5B00(a1, *(v1 + 32), *(v1 + 40), *(v1 + 42), v1 + v6, v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v3, v4);
}

uint64_t sub_1AE1FE8A4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1ADE744B8;

  return sub_1AE1EEA54(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1AE1FE97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AE1FE9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE830;
  if (!qword_1EB5BE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE830);
  }

  return result;
}

unint64_t sub_1AE1FEA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE838;
  if (!qword_1EB5BE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE838);
  }

  return result;
}

unint64_t sub_1AE1FEAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE840;
  if (!qword_1EB5BE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE840);
  }

  return result;
}

uint64_t sub_1AE1FEB10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1AE23BFEC();
  __swift_allocate_value_buffer(v3, qword_1EB5D7CE0);
  v4 = __swift_project_value_buffer(v3, qword_1EB5D7CE0);
  sub_1AE23BF5C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1FEC4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1AE23BFEC();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  sub_1ADDD7E88(a1 + v15, v14);
  v16 = type metadata accessor for Replica(0);
  v17 = *(v16 - 8);
  v26 = *(v17 + 48);
  if (v26(v14, 1, v16) != 1)
  {
    goto LABEL_6;
  }

  v25 = a2;
  sub_1ADDD7E20(v14);
  v18 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v19 = (*(v28 + 16))(v6, a1 + v18, v4);
  v24 = v4;
  if (qword_1ED96B040 != -1)
  {
    v19 = swift_once();
  }

  v23 = &v23;
  v14 = qword_1ED96F300;
  MEMORY[0x1EEE9AC00](v19);
  *(&v23 - 2) = v6;
  v20 = v27;
  sub_1AE23D6AC();
  (*(v28 + 8))(v6, v24);
  (*(v17 + 56))(v20, 0, 1, v16);
  swift_beginAccess();
  sub_1ADDD85E4(v20, a1 + v15);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  sub_1ADDD7E88(a1 + v15, v9);
  v21 = v26(v9, 1, v16);
  a2 = v25;
  if (v21 == 1)
  {
    __break(1u);
LABEL_6:
    v9 = v14;
  }

  return sub_1ADDD8010(v9, a2);
}

uint64_t sub_1AE1FEFC0(uint64_t a1, uint64_t *a2)
{
  v26 = sub_1AE23BFEC();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v25 = &v24 - v10;
  v12 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  sub_1ADDD7E88(a2 + v12, v11);
  v13 = type metadata accessor for Replica(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v8, 1, 1, v13);
  swift_beginAccess();
  sub_1ADDD85E4(v8, a2 + v12);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v16 = a2 + v15;
  v17 = v5;
  v18 = v26;
  (*(v3 + 16))(v5, v16, v26);
  v19 = *(a2 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  v20 = *(a2 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v14((v21 + OBJC_IVAR____TtC9Coherence12ReplicaState__replica), 1, 1, v13);
  (*(v3 + 32))(v21 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v17, v18);
  *(v21 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = v19;
  *(v21 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = v20;
  swift_beginAccess();
  sub_1ADDD85E4(v25, v21 + v22);
  swift_endAccess();
  return v21;
}

uint64_t sub_1AE1FF2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_1AE23D7CC();
  swift_getWitnessTable();
  return sub_1AE23CF8C();
}

uint64_t sub_1AE1FF350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  sub_1ADE17414(a2, &v11 - v8);
  Optional<A>.encode(to:)(a1, v6, a3);
  return (*(v7 + 8))(v9, v6);
}

void AnyCRDT.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE848, &qword_1AE25A540);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v190 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE850, &qword_1AE25A548);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  *&v198 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  *&v200 = &v190 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE858, &qword_1AE25A550);
  MEMORY[0x1EEE9AC00](v13 - 8);
  *&v199 = &v190 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE860, &qword_1AE25A558);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v190 - v23;
  if (!a1[8])
  {
    sub_1ADE42E40(v19, v20, v21);
    swift_allocError();
    *v33 = 0xD000000000000014;
    *(v33 + 8) = 0x80000001AE25FB50;
    *(v33 + 16) = 0;
    swift_willThrow();

    return;
  }

  v194 = v22;
  v195 = v19;
  v191 = v9;
  v192 = v8;
  v193 = v7;
  v234 = a2;
  v25 = v2;
  type metadata accessor for CRDecoder.CRDTContainer();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = 0;
  *(v26 + 32) = 1;

  sub_1ADDE78C8();
  v27 = a1;
  v29 = *(v28 + 16);
  sub_1ADE5215C(v29);

  if ((~v29 & 0xF000000000000007) != 0)
  {
    v196 = v27;
    v197 = v26;
    v34 = v29 >> 60;
    if ((v29 >> 60) <= 4)
    {
      if (v34 > 1)
      {
        if (v34 != 2)
        {
          if (v34 == 3)
          {
            sub_1ADDE78C8();
            v36 = *(v35 + 16);
            v37 = MEMORY[0x1E69E7CC0];
            if ((~v36 & 0xF000000000000007) != 0)
            {
              v38 = MEMORY[0x1E69E7CC0];
              v39 = MEMORY[0x1E69E7CC0];
              if ((v36 & 0xF000000000000000) == 0x3000000000000000)
              {
                v40 = (v36 & 0xFFFFFFFFFFFFFFFLL);
                v37 = v40[2];
                v38 = v40[3];
                v39 = v40[4];
              }
            }

            else
            {
              v38 = MEMORY[0x1E69E7CC0];
              v39 = MEMORY[0x1E69E7CC0];
            }

            v161 = v196;

            sub_1AE207790(v37, v38, v39, v161);
            if (v25)
            {

              swift_setDeallocating();
              goto LABEL_110;
            }

            v163 = v162;

            swift_setDeallocating();
            swift_deallocClassInstance();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8B0, &qword_1AE25A5A8);
            v32 = swift_allocObject();
            v32[2] = 0;
            swift_beginAccess();
            v32[2] = v163;
            goto LABEL_117;
          }

          if (*(*((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x30) + 16))
          {
            sub_1ADDE78C8();
            v92 = *(v91 + 16);
            if ((~v92 & 0xF000000000000007) != 0 && (v92 & 0xF000000000000000) == 0x4000000000000000)
            {
              v93 = v92 & 0xFFFFFFFFFFFFFFFLL;
              v94 = *(v93 + 80);
              *&v203[48] = *(v93 + 64);
              *&v203[64] = v94;
              *&v203[80] = *(v93 + 96);
              *&v203[96] = *(v93 + 112);
              v95 = *(v93 + 32);
              *v203 = *(v93 + 16);
              *&v203[16] = v95;
              *&v203[32] = *(v93 + 48);
              sub_1ADE51B64(v203, v202);

              v96 = *&v203[88];
              v97 = *&v203[72];
              v98 = *&v203[56];
              v99 = *&v203[40];
              v100 = *&v203[32];
              v101 = *&v203[16];
              v102 = *v203;
              v103 = *&v203[8];
            }

            else
            {

              v102 = 0;
              v100 = MEMORY[0x1E69E7CC0];
              v101 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
              v99 = 0uLL;
              v103 = 0xE000000000000000;
              v98 = 0uLL;
              v97 = 0uLL;
              v96 = 0uLL;
            }

            v219[0] = v102;
            v219[1] = v103;
            v220 = v101;
            v221 = v100;
            v222 = v99;
            v223 = v98;
            v224 = v97;
            v225 = v96;
            type metadata accessor for CRAttributedStringRef();
            swift_allocObject();
            v143 = sub_1ADDF1750(v219, v196, &type metadata for CRAttributeStringEmptyScope, &off_1F23C8220);
            if (v2)
            {
LABEL_72:

              swift_setDeallocating();
              goto LABEL_110;
            }

            v172 = v143;
            swift_setDeallocating();
            swift_deallocClassInstance();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8A0, &qword_1AE25A598);
            v129 = swift_allocObject();
            *(v129 + 16) = 1;
            swift_beginAccess();
            v173 = *(v129 + 16);
            *(v129 + 16) = v172;
            sub_1ADE23610(v173);
            goto LABEL_94;
          }

          sub_1ADE64F48(v203);
          if (v2)
          {

            swift_setDeallocating();

LABEL_110:
            swift_deallocClassInstance();
            goto LABEL_111;
          }

          swift_setDeallocating();

          swift_deallocClassInstance();

          v134 = *v203;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8A8, &qword_1AE25A5A0);
          v32 = swift_allocObject();
          v32[2] = 0;
          v135 = v32 + 2;
          goto LABEL_115;
        }

        if ((*((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x48) & 1) != 0 && *(v196 + 57) != 1)
        {
          v69 = v29;
          sub_1ADDE78C8();
          v144 = 0;
          v146 = *(v145 + 16);
          v147 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
          v148 = 0uLL;
          v149 = 1;
          if ((~v146 & 0xF000000000000007) != 0)
          {
            v150 = 0;
            v151 = 0;
            v152 = 0uLL;
            if ((v146 & 0xF000000000000000) == 0x2000000000000000)
            {
              v153 = (v146 & 0xFFFFFFFFFFFFFFFLL);
              v154 = v153[2];
              v155 = v153[3];
              v156 = v153[5];
              *&v203[48] = v153[4];
              *&v203[64] = v156;
              *&v203[16] = v154;
              *&v203[32] = v155;
              *v203 = v153[1];
              v151 = *(&v156 + 1);
              v150 = v156;
              v149 = v203[56];
              v199 = *&v203[24];
              v200 = *&v203[40];
              v198 = *&v203[8];
              v144 = *v203;
              sub_1ADFAEE10(v203, v202);
              v148 = v199;
              v152 = v200;
              v147 = v198;
            }
          }

          else
          {
            v150 = 0;
            v151 = 0;
            v152 = 0uLL;
          }

          *v203 = v144;
          *&v203[8] = v147;
          *&v203[24] = v148;
          *&v203[40] = v152;
          v203[56] = v149;
          *&v203[64] = v150;
          *&v203[72] = v151;
          v218[0] = *v203;
          v218[1] = *&v203[16];
          v218[2] = *&v203[32];
          v218[3] = *&v203[48];
          v218[4] = *&v203[64];
          v188 = sub_1AE2115D8(v218, v196, 0, 0);
          if (v2)
          {
            sub_1ADFAECE8(v203);

            goto LABEL_99;
          }

          v189 = v188;
          sub_1ADFAECE8(v203);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8B8, &qword_1AE25A5B0);
          v165 = swift_allocObject();
          if (qword_1ED96AC50 != -1)
          {
            swift_once();
          }

          sub_1ADDD0F70();
          sub_1AE23BFBC();

          *(v165 + 16) = v189;

          swift_setDeallocating();
          swift_deallocClassInstance();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8C0, &qword_1AE25A5B8);
          v32 = swift_allocObject();
          v32[2] = 0;
          v175 = v32 + 2;
          goto LABEL_102;
        }

        v69 = v29;
        sub_1ADDE78C8();
        v70 = 0;
        v72 = *(v71 + 16);
        v73 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
        v74 = 0uLL;
        v75 = 1;
        if ((~v72 & 0xF000000000000007) != 0)
        {
          v76 = 0;
          v77 = 0;
          v78 = 0uLL;
          if ((v72 & 0xF000000000000000) == 0x2000000000000000)
          {
            v79 = (v72 & 0xFFFFFFFFFFFFFFFLL);
            v80 = v79[2];
            v81 = v79[3];
            v82 = v79[5];
            *&v203[48] = v79[4];
            *&v203[64] = v82;
            *&v203[16] = v80;
            *&v203[32] = v81;
            *v203 = v79[1];
            v77 = *(&v82 + 1);
            v76 = v82;
            v75 = v203[56];
            v199 = *&v203[24];
            v200 = *&v203[40];
            v198 = *&v203[8];
            v70 = *v203;
            sub_1ADFAEE10(v203, v202);
            v74 = v199;
            v78 = v200;
            v73 = v198;
          }
        }

        else
        {
          v76 = 0;
          v77 = 0;
          v78 = 0uLL;
        }

        LOBYTE(v202[0]) = v75;
        v211 = v70;
        v212 = v73;
        v213 = v74;
        v214 = v78;
        v215 = v75;
        v216 = v76;
        v217 = v77;
        v174 = v196;

        sub_1AE204F30(&v211, v174, 0, 0, v201);
        if (v2)
        {
LABEL_98:

LABEL_99:
          swift_setDeallocating();
          swift_deallocClassInstance();
          sub_1ADE52174(v69);
          return;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        v165 = v201[0];
        v166 = &unk_1EB5BE8C8;
        v167 = &unk_1AE25A5C0;
LABEL_101:
        __swift_instantiateConcreteTypeFromMangledNameV2(v166, v167);
        v32 = swift_allocObject();
        v32[2] = 0;
        v175 = v32 + 2;
LABEL_102:
        swift_beginAccess();
        *v175 = v165;

        v55 = v69;
        goto LABEL_118;
      }

      if (v34)
      {
        v69 = v29;
        sub_1ADDE78C8();
        v105 = 0;
        v107 = *(v106 + 16);
        v108 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
        v109 = 0uLL;
        v110 = 1;
        if ((~v107 & 0xF000000000000007) != 0)
        {
          v111 = 0;
          v112 = 0;
          v113 = 0uLL;
          if ((v107 & 0xF000000000000000) == 0x1000000000000000)
          {
            v114 = (v107 & 0xFFFFFFFFFFFFFFFLL);
            v115 = v114[2];
            v116 = v114[3];
            v117 = v114[5];
            *&v203[48] = v114[4];
            *&v203[64] = v117;
            *&v203[16] = v115;
            *&v203[32] = v116;
            *v203 = v114[1];
            v112 = *(&v117 + 1);
            v111 = v117;
            v110 = v203[56];
            v199 = *&v203[24];
            v200 = *&v203[40];
            v198 = *&v203[8];
            v105 = *v203;
            sub_1ADFAEE10(v203, v202);
            v109 = v199;
            v113 = v200;
            v108 = v198;
          }
        }

        else
        {
          v111 = 0;
          v112 = 0;
          v113 = 0uLL;
        }

        LOBYTE(v202[0]) = v110;
        v204 = v105;
        v205 = v108;
        v206 = v109;
        v207 = v113;
        v208 = v110;
        v209 = v111;
        v210 = v112;
        v164 = v196;

        sub_1AE208508(&v204, v164, v201);
        if (v2)
        {
          goto LABEL_98;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        v165 = v201[0];
        v166 = &unk_1EB5BE8D0;
        v167 = &unk_1AE25A5C8;
        goto LABEL_101;
      }

      v47 = *(v29 + 16);
      swift_beginAccess();
      if (*(v47 + 48))
      {

        sub_1ADDE78C8();
        v49 = v48;
        v50 = v196;

        sub_1AE2014D4(v49, v50, v24);
        if (!v25)
        {

          swift_setDeallocating();
          swift_deallocClassInstance();

          *&v200 = v29;
          sub_1ADDD2198(v24, v17, &qword_1EB5BE860, &qword_1AE25A558);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8E8, &qword_1AE25A5E0);
          v32 = swift_allocObject();
          v51 = *(*v32 + 296);
          v52 = v195;
          v53 = *(v194 + 56);
          v53(v32 + v51, 1, 1, v195);
          v54 = v199;
          sub_1ADDD2198(v17, v199, &qword_1EB5BE860, &qword_1AE25A558);
          v53(v54, 0, 1, v52);
          swift_beginAccess();
          sub_1ADF92F3C(v54, v32 + v51, &qword_1EB5BE858, &qword_1AE25A550);
          swift_endAccess();
          v55 = v200;
LABEL_118:
          sub_1ADE52174(v55);
          goto LABEL_119;
        }

LABEL_109:

        swift_setDeallocating();
        goto LABEL_110;
      }

      swift_beginAccess();
      if (*(v47 + 32))
      {

        sub_1ADDE78C8();
        v131 = v130;
        v132 = v196;

        sub_1AE201818(v131, v132, v133, v201);

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v25)
        {
LABEL_111:
          sub_1ADE52174(v29);
          return;
        }

        v134 = v201[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8D8, &qword_1AE25A5D0);
        v32 = swift_allocObject();
        v32[2] = 0;
        v135 = v32 + 2;
LABEL_115:
        swift_beginAccess();
        *v135 = v134;

        goto LABEL_117;
      }

      sub_1ADDE78C8();
      v177 = v176;
      v178 = v196;

      sub_1AE200DD8(v177, v178, v201);
      if (v25)
      {
        goto LABEL_109;
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      v121 = v201[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8E0, &qword_1AE25A5D8);
      v32 = swift_allocObject();
      v32[2] = 1;
      v122 = v32 + 2;
LABEL_49:
      swift_beginAccess();
      v123 = *v122;
      *v122 = v121;
      sub_1ADE23610(v123);
LABEL_117:
      v55 = v29;
      goto LABEL_118;
    }

    if (v34 <= 6)
    {
      if (v34 == 5)
      {
        sub_1ADDE78C8();
        v57 = *(v56 + 16);
        if ((~v57 & 0xF000000000000007) != 0 && (v57 & 0xF000000000000000) == 0x5000000000000000)
        {
          v58 = v57 & 0xFFFFFFFFFFFFFFFLL;
          v59 = *(v58 + 80);
          *&v203[48] = *(v58 + 64);
          *&v203[64] = v59;
          *&v203[80] = *(v58 + 96);
          *&v203[96] = *(v58 + 112);
          v60 = *(v58 + 32);
          *v203 = *(v58 + 16);
          *&v203[16] = v60;
          *&v203[32] = *(v58 + 48);
          sub_1ADE51B64(v203, v202);

          v61 = *&v203[88];
          v62 = *&v203[72];
          v63 = *&v203[56];
          v64 = *&v203[40];
          v65 = *&v203[32];
          v66 = *&v203[16];
          v67 = *v203;
          v68 = *&v203[8];
        }

        else
        {

          v67 = 0;
          v65 = MEMORY[0x1E69E7CC0];
          v66 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
          v64 = 0uLL;
          v68 = 0xE000000000000000;
          v63 = 0uLL;
          v62 = 0uLL;
          v61 = 0uLL;
        }

        v226[0] = v67;
        v226[1] = v68;
        v227 = v66;
        v228 = v65;
        v229 = v64;
        v230 = v63;
        v231 = v62;
        v232 = v61;
        sub_1AE201970(v226, v196, v201);
        if (v2)
        {
          goto LABEL_72;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();

        v121 = v201[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE890, &qword_1AE25A588);
        v32 = swift_allocObject();
        v32[2] = 1;
        v122 = v32 + 2;
        goto LABEL_49;
      }

      sub_1ADDE78C8();
      v119 = *(v118 + 16);
      if ((~v119 & 0xF000000000000007) != 0 && (v119 & 0xF000000000000000) == 0x6000000000000000)
      {
        v120 = ((v119 & 0xFFFFFFFFFFFFFFFLL) + 16);
      }

      else
      {
        if (qword_1ED967F98 != -1)
        {
          swift_once();
        }

        v120 = &off_1ED967FA0;
      }

      v124 = *v120;

      sub_1AE202578(v124, v196, v203);
      if (v2)
      {
        goto LABEL_72;
      }

      swift_setDeallocating();
      swift_deallocClassInstance();

      v136 = v29;
      v137 = *v203;
      v138 = *&v203[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE898, &qword_1AE25A590);
      v32 = swift_allocObject();
      v32[3] = 0;
      v32[2] = 0;
      v139 = v32 + 2;
LABEL_92:
      swift_beginAccess();
      v170 = *v139;
      v171 = v32[3];
      *v139 = v137;
      v32[3] = v138;
      sub_1AE2132FC(v170, v171);
      v55 = v136;
      goto LABEL_118;
    }

    if (v34 == 7)
    {
      *&v200 = v29;
      sub_1ADDE78C8();
      v83 = 0;
      v85 = *(v84 + 16);
      if ((~v85 & 0xF000000000000007) != 0)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v89 = 0;
        if ((v85 & 0xF000000000000000) == 0x7000000000000000)
        {
          v90 = (v85 & 0xFFFFFFFFFFFFFFFLL);
          v83 = v90[2];
          v86 = v90[3];
          v87 = v90[4];
          v88 = v90[5];
          v89 = v90[6];
          sub_1ADE42C78(v86, v87);
          sub_1ADE42C78(v88, v89);
        }
      }

      else
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v89 = 0;
      }

      v233[0] = v83;
      v233[1] = v86;
      v233[2] = v87;
      v233[3] = v88;
      v233[4] = v89;
      type metadata accessor for CRCounterRef();
      swift_allocObject();
      v157 = v196;

      v158 = sub_1AE1A09F4(v233, v157);
      if (v2)
      {

        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_1ADE52174(v200);
        return;
      }

      v159 = v158;

      swift_setDeallocating();
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE888, &qword_1AE25A580);
      v129 = swift_allocObject();
      *(v129 + 16) = 0;
      swift_beginAccess();
      *(v129 + 16) = v159;

      v160 = v200;
      goto LABEL_95;
    }

    if (v34 == 8)
    {
      v41 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v42 = swift_beginAccess();
      v45 = *(v41 + 208);
      if (*(v41 + 216))
      {
        v46 = v200;
        if (!v45)
        {
          goto LABEL_67;
        }

LABEL_57:

        sub_1ADDE78C8();
        v126 = *(v125 + 16);
        if ((~v126 & 0xF000000000000007) != 0 && (v126 & 0xF000000000000000) == 0x8000000000000000)
        {
          v127 = ((v126 & 0xFFFFFFFFFFFFFFFLL) + 16);
        }

        else
        {
          if (qword_1ED967F98 != -1)
          {
            swift_once();
          }

          v127 = &off_1ED967FA0;
        }

        v168 = *v127;

        v169 = v196;

        sub_1AE2020F4(v168, v169, v202);
        if (v2)
        {
          goto LABEL_109;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        v136 = v29;
        v137 = v202[0];
        v138 = v202[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE880, &qword_1AE25A578);
        v32 = swift_allocObject();
        v32[3] = 0;
        v32[2] = 0;
        v139 = v32 + 2;
        goto LABEL_92;
      }

      v46 = v200;
      if (!v45)
      {
LABEL_67:

        sub_1ADDE78C8();
        v141 = *(v140 + 16);
        if ((~v141 & 0xF000000000000007) != 0 && (v141 & 0xF000000000000000) == 0x8000000000000000)
        {
          v142 = ((v141 & 0xFFFFFFFFFFFFFFFLL) + 16);
        }

        else
        {
          if (qword_1ED967F98 != -1)
          {
            swift_once();
          }

          v142 = &off_1ED967FA0;
        }

        v179 = *v142;

        v180 = v196;

        sub_1AE201C2C(v179, v180, v46);
        if (!v2)
        {

          swift_setDeallocating();
          swift_deallocClassInstance();
          v182 = v198;
          sub_1ADDD2198(v46, v198, &qword_1EB5BE850, &qword_1AE25A548);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE878, &qword_1AE25A570);
          v32 = swift_allocObject();
          v183 = *(*v32 + 296);
          v184 = v192;
          v185 = *(v191 + 56);
          v185(v32 + v183, 1, 1, v192);
          v186 = v182;
          v187 = v193;
          sub_1ADDD2198(v186, v193, &qword_1EB5BE850, &qword_1AE25A548);
          v185(v187, 0, 1, v184);
          swift_beginAccess();
          sub_1ADF92F3C(v187, v32 + v183, &qword_1EB5BE848, &qword_1AE25A540);
          swift_endAccess();
          goto LABEL_117;
        }

        goto LABEL_109;
      }

      if (v45 == 1)
      {
        goto LABEL_57;
      }

      sub_1ADE42E40(v42, v43, v44);
      swift_allocError();
      *v181 = 0xD00000000000001CLL;
      *(v181 + 8) = 0x80000001AE264130;
      *(v181 + 16) = 0;
      swift_willThrow();

      sub_1ADE52174(v29);
    }

    else
    {
      v104 = sub_1ADFBA168(v196, v30, v31);
      if (!v2)
      {
        v128 = v104;

        swift_setDeallocating();
        swift_deallocClassInstance();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE870, &qword_1AE25A568);
        v129 = swift_allocObject();
        *(v129 + 16) = 0;
        swift_beginAccess();
        *(v129 + 16) = v128;
LABEL_94:
        v160 = v29;
LABEL_95:
        sub_1ADE52174(v160);
        *v234 = v129;
        return;
      }

      sub_1ADE52174(v29);
    }

    swift_setDeallocating();
    swift_deallocClassInstance();
    return;
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE868, &qword_1AE25A560);
  v32 = swift_allocObject();
  *(v32 + 16) = 1;
  swift_beginAccess();
  *(v32 + 16) = 0;
LABEL_119:
  *v234 = v32;
}

void sub_1AE200DD8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v53 - v21;
  v23 = *(a1 + 16);
  if (v23 >> 60)
  {
    goto LABEL_6;
  }

  if ((v23 & 0xF000000000000007) == 0xF000000000000007)
  {
    goto LABEL_6;
  }

  v24 = *(v23 + 16);
  swift_beginAccess();
  v25 = *(v24 + 40);
  if (!v25)
  {
    v18 = swift_beginAccess();
    if (!*(v24 + 48))
    {
      goto LABEL_6;
    }
  }

  v18 = swift_beginAccess();
  if (*(v24 + 32))
  {
    goto LABEL_6;
  }

  v54 = v16;
  v55 = a3;
  v28 = *(v24 + 16);
  v27 = *(v24 + 24);
  if (v25)
  {

    sub_1ADE058D4(v28, v27, a2, v22);
    if (!v3)
    {
      if (*(v24 + 40))
      {
        inited = *(v24 + 40);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v30 = sub_1ADE0262C(inited, a2);

      AnyCRValue.init(from:)(v30, v58);

      v32 = v58[0];
      v33 = v54;
      sub_1ADDD2788(v22, v54, type metadata accessor for FinalizedTimestamp);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA10, &unk_1AE25AA20);
      v34 = swift_allocObject();
      v34[2] = v32;
      sub_1ADDD2788(v33, v34 + *(*v34 + 216), type metadata accessor for FinalizedTimestamp);
      *v55 = v34;
      return;
    }

LABEL_33:

    goto LABEL_7;
  }

  v18 = swift_beginAccess();
  if (!*(v24 + 48))
  {
LABEL_6:
    sub_1ADE42E40(v18, v19, v20);
    swift_allocError();
    *v26 = 0xD00000000000001CLL;
    *(v26 + 8) = 0x80000001AE262080;
    *(v26 + 16) = 0;
    swift_willThrow();

LABEL_7:

    return;
  }

  sub_1ADE058D4(v28, v27, a2, v13);
  if (v3)
  {
    goto LABEL_33;
  }

  if (*(v24 + 48))
  {
    v31 = *(v24 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v31 = swift_initStaticObject();
  }

  v35 = *(v31 + 16);
  if (v35 >> 60)
  {
    v36 = 1;
  }

  else
  {
    v36 = (v35 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v36)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v37 = swift_initStaticObject();
  }

  else
  {
    v37 = *(v35 + 16);
  }

  swift_beginAccess();
  v38 = *(v37 + 16);
  v39 = *(v37 + 24);
  v40 = *(v37 + 32);

  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v38;
  }

  if (v40)
  {
    v42 = 0;
  }

  else
  {
    v42 = v39;
  }

  v43 = v57;
  sub_1ADE058D4(v41, v42, a2, v57);
  if (*(v24 + 48))
  {
    v44 = *(v24 + 48);
  }

  else
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v44 = swift_initStaticObject();
  }

  v45 = *(v44 + 16);
  if (v45 >> 60 || (v45 & 0xF000000000000007) == 0xF000000000000007)
  {
    type metadata accessor for Proto_Register._StorageClass();
    v46 = swift_initStaticObject();
  }

  else
  {
    v46 = *(v45 + 16);
  }

  swift_beginAccess();
  v47 = *(v46 + 40);
  if (v47)
  {
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v47 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v48 = sub_1ADE0262C(v47, a2);

  AnyCRValue.init(from:)(v48, &v59);

  v49 = v59;
  v50 = v54;
  sub_1ADDD2788(v13, v54, type metadata accessor for FinalizedTimestamp);
  v51 = v56;
  sub_1ADDD2788(v43, v56, type metadata accessor for FinalizedTimestamp);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA08, &qword_1AE25AA18);
  v52 = swift_allocObject();
  v52[2] = v49;
  sub_1ADDD2788(v50, v52 + *(*v52 + 216), type metadata accessor for FinalizedTimestamp);
  sub_1ADDD2788(v51, v52 + *(*v52 + 224), type metadata accessor for FinalizedTimestamp);
  *v55 = v52;
}

void sub_1AE2014D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = *(a1 + 16);
  if (v14 >> 60)
  {
    v15 = 1;
  }

  else
  {
    v15 = (v14 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v15)
  {
    type metadata accessor for Proto_Register._StorageClass();
    inited = swift_initStaticObject();
  }

  else
  {
    inited = *(v14 + 16);
  }

  v17 = swift_beginAccess();
  if (*(inited + 32))
  {
    sub_1ADE42E40(v17, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000021;
    *(v20 + 8) = 0x80000001AE2626E0;
    *(v20 + 16) = 0;
    swift_willThrow();

LABEL_11:

    return;
  }

  v22 = *(inited + 16);
  v21 = *(inited + 24);

  sub_1ADE058D4(v22, v21, a2, v10);
  if (v4)
  {

    goto LABEL_11;
  }

  sub_1ADDD2788(v10, v13, type metadata accessor for FinalizedTimestamp);
  v23 = swift_beginAccess();
  if (*(inited + 48))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v27 = sub_1ADDE77B4(v26, a2);

    AnyCRDT.init(from:)(v27, &v31);

    v29 = v31;
    sub_1ADDD2788(v13, a3, type metadata accessor for FinalizedTimestamp);
    *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE860, &qword_1AE25A558) + 36)) = v29;
  }

  else
  {
    sub_1ADE42E40(v23, v24, v25);
    swift_allocError();
    *v28 = 0xD000000000000016;
    *(v28 + 8) = 0x80000001AE262710;
    *(v28 + 16) = 0;
    swift_willThrow();

    sub_1ADDD2728(v13, type metadata accessor for FinalizedTimestamp);
  }
}

void sub_1AE201818(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7 >> 60)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v8 || (v9 = *(v7 + 16), a1 = swift_beginAccess(), !*(v9 + 40)))
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v15 = 0xD000000000000020;
    *(v15 + 8) = 0x80000001AE261210;
    *(v15 + 16) = 0;
    swift_willThrow();

    goto LABEL_9;
  }

  type metadata accessor for CRDecoder();
  swift_initStackObject();

  v11 = sub_1ADE0262C(v10, a2);
  sub_1ADFBDAE4(v11, v12, v13);
  if (v4)
  {

LABEL_9:

    return;
  }

  v16 = v14;

  *a4 = v16;
}

void sub_1AE201970(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
  v7 = &v6[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
  *v7 = sub_1AE2138D8;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
  LOBYTE(v22) = 1;
  *v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 1) = MEMORY[0x1E69E7CC0];
  *(v8 + 2) = v9;
  *(v8 + 3) = v9;
  *(v8 + 4) = 0;
  v8[40] = 1;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  v8[64] = 1;
  v10 = &v6[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  v11 = *(a1 + 80);
  *(v10 + 4) = *(a1 + 64);
  *(v10 + 5) = v11;
  *(v10 + 12) = *(a1 + 96);
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  v13 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v13;
  *&v6[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for CRStringDecoder();
  swift_retain_n();
  v14 = objc_msgSendSuper2(&v23, sel_init);
  v22 = 0;
  v15 = [objc_allocWithZone(_TtC9Coherence19CRTTMergeableString) initWithDecoder:v14 error:&v22];
  v16 = v22;
  if (v15)
  {
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA48, &qword_1AE25AA98);
    v18 = swift_allocObject();
    v19 = qword_1ED96AC50;
    v20 = v16;
    if (v19 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();

    *(v18 + qword_1ED96F258) = v17;
    *a3 = v18;
  }

  else
  {
    v21 = v22;
    sub_1AE23BC9C();

    swift_willThrow();
  }
}

void sub_1AE201C2C(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE850, &qword_1AE25A548) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA70, &qword_1AE25AAC8);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = swift_beginAccess();
  if (*(a1 + 208))
  {
    sub_1ADE42E40(v9, v10, v11);
    swift_allocError();
    *v12 = 0xD000000000000021;
    *(v12 + 8) = 0x80000001AE263E70;
    *(v12 + 16) = 0;
    swift_willThrow();

LABEL_11:
    sub_1ADDCEDE0(&a3[v7], &qword_1EB5BEA78, &unk_1AE25AAD0);
    return;
  }

  swift_beginAccess();
  v13 = *(a1 + 32);
  v64 = *(a1 + 16);
  *v65 = v13;
  v14 = *(a1 + 64);
  *&v65[16] = *(a1 + 48);
  *&v65[32] = v14;
  v66 = *(a1 + 80);
  v15 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v16 = v64;
    v17 = *v65;
    v18 = *&v65[8];
    v19 = *&v65[24];
    v20 = v66;
    v21 = v65[40];
  }

  else
  {
    v16 = 0;
    v21 = 1;
    v15 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v20 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v58[0] = v16;
  v58[1] = v15;
  v58[2] = v17;
  v59 = v18;
  v60 = v19;
  v61 = v21 & 1;
  v62 = v20;
  sub_1ADDCEE40(&v64, v47, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1ADFAECE8(v58);
  v22 = *(v15 + 16);

  v23 = MEMORY[0x1E69E7CC0];
  v63 = sub_1ADE55474(0, v22, 0, MEMORY[0x1E69E7CC0]);
  v24 = *(a1 + 32);
  v55 = *(a1 + 16);
  *v56 = v24;
  v25 = *(a1 + 64);
  *&v56[16] = *(a1 + 48);
  *&v56[32] = v25;
  v57 = *(a1 + 80);
  v26 = *(&v55 + 1);
  if (*(&v55 + 1))
  {
    v27 = v55;
    v28 = *v56;
    v29 = *&v56[8];
    v30 = *&v56[24];
    v31 = v57;
    v32 = v56[40];
  }

  else
  {
    v27 = 0;
    v32 = 1;
    v26 = v23;
    v28 = v23;
    v30 = 0uLL;
    v31 = 0uLL;
    v29 = 0uLL;
  }

  v53 = v32 & 1;
  v74[0] = v27;
  v74[1] = v26;
  v74[2] = v28;
  v75 = v29;
  v76 = v30;
  v77 = v32 & 1;
  v78 = v31;
  swift_retain_n();

  sub_1ADDCEE40(&v55, v47, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1AE17E424(v74, a2, a2, a1, &v63, &v54);
  if (v3)
  {

    goto LABEL_11;
  }

  *(a3 + 1) = v54;
  swift_beginAccess();
  v33 = *(a1 + 176);
  v50 = *(a1 + 160);
  v51 = v33;
  v52 = *(a1 + 192);
  v34 = *(a1 + 112);
  v47[0] = *(a1 + 96);
  v47[1] = v34;
  v35 = *(a1 + 144);
  v48 = *(a1 + 128);
  v49 = v35;
  if (!*(&v47[0] + 1))
  {
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    v42[2] = v23;
    v42[3] = v23;
    v42[4] = v23;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    sub_1AE030800(v42);
    goto LABEL_16;
  }

  v36 = *(a1 + 112);
  v67[0] = *(a1 + 96);
  v67[1] = v36;
  v37 = *(a1 + 128);
  v71 = *(a1 + 152);
  v72 = *(a1 + 168);
  v73 = *(a1 + 184);
  v38 = *(&v48 + 1);
  v39 = v49;
  v68 = v37;
  v69 = *(&v48 + 1);
  v70 = v49;
  v40 = v63;
  if (!*(&v48 + 1))
  {
LABEL_16:
    v41 = 0;
    goto LABEL_17;
  }

  sub_1ADDCEE40(v47, v42, &qword_1EB5BCC28, &unk_1AE251820);

  sub_1ADE42C78(v38, v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA58, &qword_1AE25AAA8);
  swift_allocObject();
  v41 = sub_1AE2080CC(v67, v40, a2, &unk_1F23C99A8, sub_1AE213914);
LABEL_17:
  *a3 = v41;
  sub_1AE208C50(0);
}

void sub_1AE2020F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  swift_beginAccess();
  v9 = *(a1 + 32);
  v75 = *(a1 + 16);
  *v76 = v9;
  v10 = *(a1 + 64);
  *&v76[16] = *(a1 + 48);
  *&v76[32] = v10;
  v77 = *(a1 + 80);
  v11 = *(&v75 + 1);
  if (*(&v75 + 1))
  {
    v12 = v75;
    v13 = *v76;
    v14 = *&v76[8];
    v15 = *&v76[24];
    v16 = v77;
    v17 = v76[40];
  }

  else
  {
    v12 = 0;
    v14 = 0uLL;
    v17 = 1;
    v11 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v66 = v17 & 1;
  v70[0] = v12;
  v70[1] = v11;
  v70[2] = v13;
  v71 = v14;
  v72 = v15;
  v73 = v17 & 1;
  v74 = v16;
  sub_1ADDCEE40(&v75, &v59, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1AE204F30(v70, a2, sub_1AE2139F0, v7, &v67);
  if (v3)
  {

    return;
  }

  v18 = v67;
  swift_beginAccess();
  v19 = *v8;
  if (*v8)
  {
    swift_beginAccess();
    v20 = *(a1 + 200);

    sub_1AE20311C(v19, v20, sub_1AE2138F4, a2);
    v49 = a3;
    v50 = v18;
    v78 = v21;

    swift_beginAccess();
    v22 = *(a1 + 176);
    v63 = *(a1 + 160);
    v64 = v22;
    v65 = *(a1 + 192);
    v23 = *(a1 + 112);
    v59 = *(a1 + 96);
    v60 = v23;
    v24 = *(a1 + 144);
    v61 = *(a1 + 128);
    v62 = v24;
    v25 = *(&v59 + 1);
    if (*(&v59 + 1))
    {
      v26 = v60;
      v27 = *(&v61 + 1);
      v28 = v62;
      v68[0] = v59;
      v68[1] = v60;
      v68[2] = v61;
      v68[3] = v62;
      v68[4] = v63;
      v68[5] = v64;
      v69 = v65;
      if (*(&v61 + 1))
      {
        sub_1ADDCEE40(&v59, &v52, &qword_1EB5BCC28, &unk_1AE251820);
        sub_1ADE42C78(v27, v28);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA58, &qword_1AE25AAA8);
        swift_allocObject();
        v29 = sub_1AE2080CC(v68, v78, a2, &unk_1F23C99A8, sub_1AE213914);

LABEL_13:
        *v49 = v29;
        v49[1] = v50;
        return;
      }

      v39 = *(a1 + 176);
      v56 = *(a1 + 160);
      v57 = v39;
      v47 = *(&v62 + 1);
      v48 = v59;
      v58 = *(a1 + 192);
      v40 = *(a1 + 112);
      v52 = *(a1 + 96);
      v53 = v40;
      v41 = *(a1 + 144);
      v54 = *(a1 + 128);
      v55 = v41;
      v45 = *(&v63 + 1);
      v46 = v63;
      v43 = *(&v64 + 1);
      v44 = v64;
      v42 = v65;
      v37 = *(&v60 + 1);
      v38 = v61;
      sub_1ADE51B64(&v52, v51);

      v36 = v42;
      v35 = v43;
      v34 = v44;
      v33 = v45;
      v32 = v46;
      v31 = v47;
      v30 = v48;
    }

    else
    {

      v30 = 0;
      v28 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      v25 = 0xE000000000000000;
      v37 = MEMORY[0x1E69E7CC0];
      v38 = MEMORY[0x1E69E7CC0];
    }

    *&v52 = v30;
    *(&v52 + 1) = v25;
    *&v53 = v26;
    *(&v53 + 1) = v37;
    v54 = v38;
    *&v55 = v28;
    *(&v55 + 1) = v31;
    *&v56 = v32;
    *(&v56 + 1) = v33;
    *&v57 = v34;
    *(&v57 + 1) = v35;
    v58 = v36;
    sub_1AE030800(&v52);

    v29 = 0;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1AE202578(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  swift_beginAccess();
  v9 = *(a1 + 32);
  v75 = *(a1 + 16);
  *v76 = v9;
  v10 = *(a1 + 64);
  *&v76[16] = *(a1 + 48);
  *&v76[32] = v10;
  v77 = *(a1 + 80);
  v11 = *(&v75 + 1);
  if (*(&v75 + 1))
  {
    v12 = v75;
    v13 = *v76;
    v14 = *&v76[8];
    v15 = *&v76[24];
    v16 = v77;
    v17 = v76[40];
  }

  else
  {
    v12 = 0;
    v14 = 0uLL;
    v17 = 1;
    v11 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v66 = v17 & 1;
  v70[0] = v12;
  v70[1] = v11;
  v70[2] = v13;
  v71 = v14;
  v72 = v15;
  v73 = v17 & 1;
  v74 = v16;
  sub_1ADDCEE40(&v75, &v59, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1AE205930(v70, a2, sub_1AE213874, v7, &v67);
  if (v3)
  {

    return;
  }

  v18 = v67;
  swift_beginAccess();
  v19 = *v8;
  if (*v8)
  {
    swift_beginAccess();
    v20 = *(a1 + 200);

    sub_1AE203768(v19, v20, sub_1AE213890, a2);
    v49 = a3;
    v50 = v18;
    v78 = v21;

    swift_beginAccess();
    v22 = *(a1 + 176);
    v63 = *(a1 + 160);
    v64 = v22;
    v65 = *(a1 + 192);
    v23 = *(a1 + 112);
    v59 = *(a1 + 96);
    v60 = v23;
    v24 = *(a1 + 144);
    v61 = *(a1 + 128);
    v62 = v24;
    v25 = *(&v59 + 1);
    if (*(&v59 + 1))
    {
      v26 = v60;
      v27 = *(&v61 + 1);
      v28 = v62;
      v68[0] = v59;
      v68[1] = v60;
      v68[2] = v61;
      v68[3] = v62;
      v68[4] = v63;
      v68[5] = v64;
      v69 = v65;
      if (*(&v61 + 1))
      {
        sub_1ADDCEE40(&v59, &v52, &qword_1EB5BCC28, &unk_1AE251820);
        sub_1ADE42C78(v27, v28);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA28, &qword_1AE25AA70);
        swift_allocObject();
        v29 = sub_1AE2080CC(v68, v78, a2, &unk_1F23C9958, sub_1AE2138AC);

LABEL_13:
        *v49 = v29;
        v49[1] = v50;
        return;
      }

      v39 = *(a1 + 176);
      v56 = *(a1 + 160);
      v57 = v39;
      v47 = *(&v62 + 1);
      v48 = v59;
      v58 = *(a1 + 192);
      v40 = *(a1 + 112);
      v52 = *(a1 + 96);
      v53 = v40;
      v41 = *(a1 + 144);
      v54 = *(a1 + 128);
      v55 = v41;
      v45 = *(&v63 + 1);
      v46 = v63;
      v43 = *(&v64 + 1);
      v44 = v64;
      v42 = v65;
      v37 = *(&v60 + 1);
      v38 = v61;
      sub_1ADE51B64(&v52, v51);

      v36 = v42;
      v35 = v43;
      v34 = v44;
      v33 = v45;
      v32 = v46;
      v31 = v47;
      v30 = v48;
    }

    else
    {

      v30 = 0;
      v28 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      v25 = 0xE000000000000000;
      v37 = MEMORY[0x1E69E7CC0];
      v38 = MEMORY[0x1E69E7CC0];
    }

    *&v52 = v30;
    *(&v52 + 1) = v25;
    *&v53 = v26;
    *(&v53 + 1) = v37;
    v54 = v38;
    *&v55 = v28;
    *(&v55 + 1) = v31;
    *&v56 = v32;
    *(&v56 + 1) = v33;
    *&v57 = v34;
    *(&v57 + 1) = v35;
    v58 = v36;
    sub_1AE030800(&v52);

    v29 = 0;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1AE2029FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0xA)
  {
    v5 = *(*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1ADE55458(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 16);
  if ((~v8 & 0xF000000000000007) != 0 && ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0xA)
  {
    v6 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  v16 = *(v6 + 16);
  if (v16)
  {
    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      v10 = *(v6 + 8 * v9 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      sub_1ADE0262C(v10, a2);

      AnyCRValue.init(from:)(v11, &v18);
      if (v2)
      {

        goto LABEL_17;
      }

      v12 = v6;
      v13 = v18;
      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = sub_1ADE55458((v14 > 1), v15 + 1, 1, v7);
      }

      ++v9;

      *(v7 + 2) = v15 + 1;
      *&v7[8 * v15 + 32] = v13;
      v6 = v12;
      if (v16 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

LABEL_17:
  }
}

uint64_t AnyCRDT.copy(renamingReferences:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t AnyCRDT.merge(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = *v2;
  if (*v2 == v4)
  {
    if (qword_1ED9670C0 != -1)
    {
      result = swift_once();
    }

    v9 = byte_1ED96F222;
    *a2 = word_1ED96F220;
    *(a2 + 2) = v9;
  }

  else
  {
    v6 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = (*(*v8 + 168))();

      *v6 = v8;
    }

    return (*(*v8 + 96))(v4);
  }

  return result;
}

double sub_1AE202E2C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = *v3;
  *&v13[0] = *v3;
  if ((*(a2 + 16))(v13))
  {
    *a3 = v7;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v9 = sub_1ADDCE2E4(0, v13);
    sub_1ADDCEDE0(v13, &qword_1EB5B9DB0, &qword_1AE240B80);
    LOBYTE(v13[0]) = 2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v10 = v9;
    CREncoder.init(_:version:fileSignature:)(v10, v13, 0, 0xF000000000000000);
    (*(*v7 + 184))();
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v12 = sub_1ADE72118(v11);

    (*(a2 + 8))(v12, a1, a2);
  }

  return result;
}

void sub_1AE20311C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v66 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA68, &qword_1AE25AAC0);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v48 - v18;
  v19 = *(a1 + 16);
  v20 = *(a2 + 16);
  v64 = a1;
  v65 = v20;
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v68 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F0DC(0, v21, 0);
  v67 = v68;
  v57 = v19;
  v48 = a2;
  if (v21)
  {
    v54 = v21;
    v55 = v11;
    v22 = 0;
    v23 = (a2 + 40);
    v24 = v65;
    v25 = v49;
    while (v19 != v22)
    {
      v26 = v25;
      v27 = v55;
      sub_1ADDCEE40(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v22, v55, &qword_1EB5BA380, &qword_1AE2423B0);
      if (v24 == v22)
      {
        goto LABEL_30;
      }

      v28 = *(v23 - 1);
      v29 = *v23;
      v30 = v56;
      v31 = (v56 + *(v59 + 48));
      sub_1ADDD2198(v27, v56, &qword_1EB5BA380, &qword_1AE2423B0);
      *v31 = v28;
      v31[1] = v29;
      v61(v30, v30 + *(v60 + 48), v28, v29);
      v25 = v26;
      if (v26)
      {

        sub_1ADDCEDE0(v30, &qword_1EB5BEA68, &qword_1AE25AAC0);
        return;
      }

      sub_1ADDCEDE0(v30, &qword_1EB5BEA68, &qword_1AE25AAC0);
      v32 = v67;
      v68 = v67;
      v34 = *(v67 + 16);
      v33 = *(v67 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1ADE6F0DC((v33 > 1), v34 + 1, 1);
        v32 = v68;
      }

      ++v22;
      *(v32 + 16) = v34 + 1;
      v35 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v67 = v32;
      sub_1ADDD2198(v66, v32 + v35 + *(v58 + 72) * v34, &qword_1EB5BA270, &unk_1AE253920);
      v23 += 2;
      v21 = v54;
      v19 = v57;
      v24 = v65;
      if (v54 == v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = v65;
  v25 = v49;
LABEL_14:
  if (v19 > v24)
  {
    v56 = v48 + 32;
    while (v21 < v19)
    {
      v36 = v52;
      sub_1ADDCEE40(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v21, v52, &qword_1EB5BA380, &qword_1AE2423B0);
      v37 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_32;
      }

      if (v24 == v21)
      {
        sub_1ADDCEDE0(v36, &qword_1EB5BA380, &qword_1AE2423B0);
        return;
      }

      if (v21 >= v24)
      {
        goto LABEL_33;
      }

      v38 = v59;
      v39 = *(v59 + 48);
      v66 = *(v56 + 16 * v21);
      v40 = v36;
      v41 = v51;
      sub_1ADDD2198(v40, v51, &qword_1EB5BA380, &qword_1AE2423B0);
      *(v41 + v39) = v66;
      v42 = v41;
      v43 = v50;
      sub_1ADDD2198(v42, v50, &qword_1EB5BEA68, &qword_1AE25AAC0);
      v61(v43, v43 + *(v60 + 48), *(v43 + *(v38 + 48)), *(v43 + *(v38 + 48) + 8));
      if (v25)
      {
        sub_1ADDCEDE0(v43, &qword_1EB5BEA68, &qword_1AE25AAC0);

        return;
      }

      sub_1ADDCEDE0(v43, &qword_1EB5BEA68, &qword_1AE25AAC0);
      v44 = v67;
      v68 = v67;
      v46 = *(v67 + 16);
      v45 = *(v67 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1ADE6F0DC((v45 > 1), v46 + 1, 1);
        v44 = v68;
      }

      *(v44 + 16) = v46 + 1;
      v47 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v67 = v44;
      sub_1ADDD2198(v53, v44 + v47 + *(v58 + 72) * v46, &qword_1EB5BA270, &unk_1AE253920);
      ++v21;
      v19 = v57;
      v24 = v65;
      if (v37 == v57)
      {
        return;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

void sub_1AE203768(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3A0, &qword_1AE2423D0);
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v66 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA38, &unk_1AE25AA80);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v48 - v18;
  v19 = *(a1 + 16);
  v20 = *(a2 + 16);
  v64 = a1;
  v65 = v20;
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v68 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F1B4(0, v21, 0);
  v67 = v68;
  v57 = v19;
  v48 = a2;
  if (v21)
  {
    v54 = v21;
    v55 = v11;
    v22 = 0;
    v23 = (a2 + 40);
    v24 = v65;
    v25 = v49;
    while (v19 != v22)
    {
      v26 = v25;
      v27 = v55;
      sub_1ADDCEE40(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v22, v55, &qword_1EB5BA3B0, &unk_1AE2423E0);
      if (v24 == v22)
      {
        goto LABEL_30;
      }

      v28 = *(v23 - 1);
      v29 = *v23;
      v30 = v56;
      v31 = (v56 + *(v59 + 48));
      sub_1ADDD2198(v27, v56, &qword_1EB5BA3B0, &unk_1AE2423E0);
      *v31 = v28;
      v31[1] = v29;
      v61(v30, v30 + *(v60 + 48), v28, v29);
      v25 = v26;
      if (v26)
      {

        sub_1ADDCEDE0(v30, &qword_1EB5BEA38, &unk_1AE25AA80);
        return;
      }

      sub_1ADDCEDE0(v30, &qword_1EB5BEA38, &unk_1AE25AA80);
      v32 = v67;
      v68 = v67;
      v34 = *(v67 + 16);
      v33 = *(v67 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1ADE6F1B4((v33 > 1), v34 + 1, 1);
        v32 = v68;
      }

      ++v22;
      *(v32 + 16) = v34 + 1;
      v35 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v67 = v32;
      sub_1ADDD2198(v66, v32 + v35 + *(v58 + 72) * v34, &qword_1EB5BA3A0, &qword_1AE2423D0);
      v23 += 2;
      v21 = v54;
      v19 = v57;
      v24 = v65;
      if (v54 == v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = v65;
  v25 = v49;
LABEL_14:
  if (v19 > v24)
  {
    v56 = v48 + 32;
    while (v21 < v19)
    {
      v36 = v52;
      sub_1ADDCEE40(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v21, v52, &qword_1EB5BA3B0, &unk_1AE2423E0);
      v37 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_32;
      }

      if (v24 == v21)
      {
        sub_1ADDCEDE0(v36, &qword_1EB5BA3B0, &unk_1AE2423E0);
        return;
      }

      if (v21 >= v24)
      {
        goto LABEL_33;
      }

      v38 = v59;
      v39 = *(v59 + 48);
      v66 = *(v56 + 16 * v21);
      v40 = v36;
      v41 = v51;
      sub_1ADDD2198(v40, v51, &qword_1EB5BA3B0, &unk_1AE2423E0);
      *(v41 + v39) = v66;
      v42 = v41;
      v43 = v50;
      sub_1ADDD2198(v42, v50, &qword_1EB5BEA38, &unk_1AE25AA80);
      v61(v43, v43 + *(v60 + 48), *(v43 + *(v38 + 48)), *(v43 + *(v38 + 48) + 8));
      if (v25)
      {
        sub_1ADDCEDE0(v43, &qword_1EB5BEA38, &unk_1AE25AA80);

        return;
      }

      sub_1ADDCEDE0(v43, &qword_1EB5BEA38, &unk_1AE25AA80);
      v44 = v67;
      v68 = v67;
      v46 = *(v67 + 16);
      v45 = *(v67 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1ADE6F1B4((v45 > 1), v46 + 1, 1);
        v44 = v68;
      }

      *(v44 + 16) = v46 + 1;
      v47 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v67 = v44;
      sub_1ADDD2198(v53, v44 + v47 + *(v58 + 72) * v46, &qword_1EB5BA3A0, &qword_1AE2423D0);
      ++v21;
      v19 = v57;
      v24 = v65;
      if (v37 == v57)
      {
        return;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

uint64_t AnyCRDT.apply(_:)(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = (*(*v5 + 168))();

    *v2 = v5;
  }

  return (*(*v5 + 144))(a1);
}

uint64_t sub_1AE203EAC(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return a2(v5, v2, v3, v4);
}

uint64_t AnyCRDT.canMerge(delta:)(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 224))(&v4) & 1;
}

uint64_t AnyCRDT.merge(delta:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = (*(*v5 + 168))();

    *v2 = v5;
  }

  v7 = v3;
  return (*(*v5 + 232))(&v7) & 1;
}

void *sub_1AE204010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD00000000000001FLL;
  v5 = *(a1 + 72);
  if (!v5)
  {
    v7 = "Not decoding a CRDT.";
    v4 = 0xD000000000000017;
LABEL_7:
    v13 = v7 | 0x8000000000000000;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v14 = v4;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    swift_willThrow();

    return v4;
  }

  v6 = *(v5 + 16);
  v7 = "pos=";
  if ((~v6 & 0xF000000000000007) == 0 || ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) != 0xD)
  {
    goto LABEL_7;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v10 = type metadata accessor for CRStructDecoder();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v8;
  v11[4] = v9;
  v12 = *(v8 + 16);

  if (v12)
  {
  }

  else
  {
    v11[3] = sub_1ADF7B940(0, *(v9 + 16));
  }

  v16[3] = v10;
  v16[4] = sub_1AE213940(qword_1ED9692A0, type metadata accessor for CRStructDecoder, &unk_1AE24E0AC);
  v16[0] = v11;
  v4 = sub_1ADF7E3CC(v16);

  return v4;
}

void sub_1AE2041B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD00000000000001FLL;
  v5 = *(a1 + 72);
  if (!v5)
  {
    v7 = "Not decoding a CRDT.";
    v4 = 0xD000000000000017;
LABEL_7:
    v12 = v7 | 0x8000000000000000;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v13 = v4;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
    swift_willThrow();
    goto LABEL_8;
  }

  v6 = *(v5 + 16);
  v7 = "pos=";
  if ((~v6 & 0xF000000000000007) == 0 || ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) != 0xD)
  {
    goto LABEL_7;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  type metadata accessor for CRStructDecoder();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v8;
  v10[4] = v9;
  v11 = *(v8 + 16);

  if (v11)
  {
  }

  else
  {
    v10[3] = sub_1ADF7B940(0, *(v9 + 16));
  }

  sub_1AE23BDDC();
  sub_1AE213940(qword_1ED9692A0, type metadata accessor for CRStructDecoder, &unk_1AE24E0AC);
  sub_1AE213940(qword_1EB5BBA30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1AE23D2BC();
LABEL_8:
}

uint64_t AnyCRValue.copy(renamingReferences:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result;
  return result;
}

void AnyCRValue.init(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) == 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE8F0, &qword_1AE25A5E8);
      *a2 = swift_allocObject();
      return;
    }

    switch((v14 >> 59) & 0x1E | (v14 >> 2) & 1)
    {
      case 1uLL:

        v59 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE960, &qword_1AE25A658);
        v29 = swift_allocObject();
        *(v29 + 16) = v59;
        goto LABEL_67;
      case 2uLL:
        v44 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v45 = *(a1 + 32);
        v46 = *(v45 + 16);
        if (v46)
        {
          v47 = v44 >= v46;
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          v75 = v45 + 16 * v44;
          v77 = *(v75 + 32);
          v76 = *(v75 + 40);
          sub_1ADE51B2C(v14);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE950, &qword_1AE25A648);
          v78 = swift_allocObject();
          *(v78 + 2) = v77;
          *(v78 + 3) = v76;
          goto LABEL_65;
        }

        v15 = 0x80000001AE25FCF0;
        sub_1ADE42E40(v7, v8, v9);
        swift_allocError();
        v17 = 0xD000000000000015;
        goto LABEL_5;
      case 3uLL:

        v51 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v50 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE948, &qword_1AE25A640);
        v52 = swift_allocObject();
        *(v52 + 16) = v51;
        *(v52 + 24) = v50;
        sub_1ADDD86D8(v51, v50);
        sub_1ADE51B48(v14);
        *a2 = v52;
        return;
      case 4uLL:

        v32 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v33 = &unk_1EB5BE970;
        v34 = &unk_1AE25A668;
        goto LABEL_53;
      case 5uLL:
        v60 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v61 = *(a1 + 24);
        v62 = *(v61 + 16);
        if (v62)
        {
          v63 = v60 >= v62;
        }

        else
        {
          v63 = 1;
        }

        if (!v63)
        {
          v79 = v7;
          (*(v6 + 16))(v12, v61 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v60, v7, v10);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE940, &qword_1AE25A638);
          v78 = swift_allocObject();
          (*(v6 + 32))(&v78[*(*v78 + 224)], v12, v79);
          goto LABEL_65;
        }

        sub_1ADE42E40(v7, v8, v9);
        swift_allocError();
        *v64 = 0xD000000000000013;
        *(v64 + 8) = 0x80000001AE25FD70;
        *(v64 + 16) = 0;
        swift_willThrow();

        goto LABEL_60;
      case 6uLL:
        v68 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v69 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADE51B2C(v14);

        sub_1ADDD6748(v68, v69, a1, &v87);
        if (v2)
        {
          goto LABEL_61;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE938, &qword_1AE25A630);
        v29 = swift_allocObject();
        *(v29 + 16) = v87;
        goto LABEL_67;
      case 7uLL:
        v53 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v54 = swift_beginAccess();
        if ((*(v53 + 32) & 1) == 0)
        {
          v15 = 0x80000001AE264150;
          sub_1ADE42E40(v54, v55, v56);
          swift_allocError();
          v17 = 0xD00000000000001FLL;
          goto LABEL_5;
        }

        if (*(v53 + 24))
        {

          sub_1AE210D00(a1, v57, v58, &v86);
          if (v2)
          {
            goto LABEL_61;
          }

          v25 = *(&v86 + 1);
          v24 = v86;
LABEL_34:
          v26 = &unk_1EB5BE900;
          v27 = &unk_1AE25A5F8;
          goto LABEL_35;
        }

        sub_1AE206F28(a1, v83, v84, &v86);
        if (!v2)
        {
          v25 = *(&v86 + 1);
          v24 = v86;
LABEL_12:
          v26 = &unk_1EB5BE8F8;
          v27 = &unk_1AE25A5F0;
LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
          v29 = swift_allocObject();
          *(v29 + 16) = v24;
          *(v29 + 24) = v25;
          goto LABEL_67;
        }

        goto LABEL_61;
      case 8uLL:
        v72 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (!*(v72 + 16))
        {
          sub_1ADE51B2C(v14);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE930, &qword_1AE25A628);
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
LABEL_67:
          sub_1ADE51B48(v14);
          *a2 = v29;
          return;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        sub_1ADE51B2C(v14);

        v74 = sub_1ADE0262C(v73, a1);

        AnyCRValue.init(from:)(v74, &v86);
        if (!v2)
        {

          v32 = v86;
          v33 = &qword_1EB5BE930;
          v34 = &qword_1AE25A628;
LABEL_53:
          __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
          v29 = swift_allocObject();
          *(v29 + 16) = v32;
          goto LABEL_67;
        }

LABEL_59:

LABEL_60:

LABEL_61:
        sub_1ADE51B48(v14);
        break;
      case 9uLL:
        v39 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v38 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADE51B2C(v14);

        v40 = sub_1ADF92FA4(v39, v38, a1);
        if (v2)
        {
          goto LABEL_49;
        }

        v41 = v40;

        v42 = &unk_1EB5BE928;
        v43 = &unk_1AE25A620;
        goto LABEL_64;
      case 0xAuLL:
        sub_1ADE51B2C(*(v13 + 16));

        sub_1AE2029FC(v70, a1);
        if (v2)
        {
LABEL_49:
          sub_1ADE51B48(v14);
          goto LABEL_6;
        }

        v41 = v71;

        v42 = &unk_1EB5BE920;
        v43 = &unk_1AE25A618;
LABEL_64:
        __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
        v78 = swift_allocObject();
        *(v78 + 2) = v41;
LABEL_65:
        sub_1ADE51B48(v14);
        *a2 = v78;
        return;
      case 0xBuLL:
        v30 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (*(v30 + 24))
        {
          inited = *(v30 + 24);
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          inited = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        sub_1ADE51B2C(v14);

        v80 = sub_1ADE0262C(inited, a1);

        AnyCRValue.init(from:)(v80, &v86);
        if (v2)
        {
          goto LABEL_59;
        }

        v81 = v86;
        swift_beginAccess();
        v82 = *(v30 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE918, &qword_1AE25A610);
        v29 = swift_allocObject();
        *(v29 + 16) = v82;
        *(v29 + 24) = v81;
        goto LABEL_67;
      case 0xCuLL:
        type metadata accessor for CRDecoder.CRValueContainer();
        *(swift_initStackObject() + 16) = a1;

        sub_1ADE65E00(v35, v36, v37, &v87);
        if (v2)
        {
          goto LABEL_60;
        }

        v32 = v87;
        v33 = &unk_1EB5BE910;
        v34 = &unk_1AE25A608;
        goto LABEL_53;
      case 0xDuLL:

        v67 = sub_1AE204010(a1, v65, v66);
        if (v2)
        {
          goto LABEL_61;
        }

        v41 = v67;
        v42 = &unk_1EB5BE908;
        v43 = &unk_1AE25A600;
        goto LABEL_64;
      case 0xEuLL:

        v28 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE958, &qword_1AE25A650);
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        goto LABEL_67;
      case 0xFuLL:

        sub_1AE210D00(a1, v48, v49, &v87);
        if (v2)
        {
          goto LABEL_61;
        }

        v25 = *(&v87 + 1);
        v24 = v87;
        goto LABEL_34;
      case 0x10uLL:

        sub_1AE206F28(a1, v22, v23, &v87);
        if (v2)
        {
          goto LABEL_61;
        }

        v25 = *(&v87 + 1);
        v24 = v87;
        goto LABEL_12;
      default:
        v18 = *(v14 + 16);
        v19 = *(a1 + 57);
        sub_1ADE51B2C(v14);

        if (v19 == 1)
        {
          v20 = &unk_1EB5BE970;
          v21 = &unk_1AE25A668;
        }

        else
        {
          v20 = &unk_1EB5BE968;
          v21 = &unk_1AE25A660;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
        v29 = swift_allocObject();
        *(v29 + 16) = v18;
        goto LABEL_67;
    }
  }

  else
  {
    v15 = 0x80000001AE25FB70;
    sub_1ADE42E40(v7, v8, v9);
    swift_allocError();
    v17 = 0xD000000000000017;
LABEL_5:
    *v16 = v17;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();
LABEL_6:
  }
}

uint64_t AnyCRDT.newRefs(from:)(void *a1)
{
  v2 = *v1;
  if (v2 == *a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    return (*(*v2 + 104))();
  }
}

void sub_1AE204F30(unint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v71 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = (&v67 - v10);
  v11 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v67 - v17;
  v19 = sub_1AE23BFEC();
  v20 = *(v19 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 24);
  v28 = *(v27 + 16);
  if (!v28 || (v29 = *a1, *a1 >= v28))
  {
    sub_1ADE42E40(v21, v22, v23);
    swift_allocError();
    *v42 = 0xD000000000000013;
    *(v42 + 8) = 0x80000001AE25FD70;
    *(v42 + 16) = 0;
    swift_willThrow();
    sub_1ADDDCE80(a3, a4);
    goto LABEL_19;
  }

  v70 = v13;
  v74 = a3;
  v72 = a4;
  (*(v20 + 16))(v26, v27 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v29, v19, v24);
  type metadata accessor for ReplicaState(0);
  v30 = swift_allocObject();
  v79 = a2;
  v31 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v32 = type metadata accessor for Replica(0);
  v33 = *(v32 - 8);
  v73 = a1;
  v34 = *(v33 + 56);
  v34(v30 + v31, 1, 1, v32);
  (*(v20 + 32))(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v26, v19);
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v34(v18, 1, 1, v32);
  a1 = v73;
  swift_beginAccess();
  v35 = v30 + v31;
  v36 = v79;
  sub_1ADF92F3C(v18, v35, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v37 = a1[3];
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v39 = a1[3];
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  if (v37)
  {
    v40 = a1[4];
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v37, a1[4]);

  v41 = v77;
  sub_1ADDD6748(v39, v40, v36, v81);
  if (v41)
  {

    sub_1ADDDCE80(v74, v72);
LABEL_19:

    sub_1ADFAECE8(a1);
    return;
  }

  v43 = v81[0];
  v44 = v81[1];
  if (*(a1 + 56))
  {
    v45 = 0;
  }

  else
  {
    v45 = a1[5];
  }

  if (*(a1 + 56))
  {
    v46 = 0;
  }

  else
  {
    v46 = a1[6];
  }

  sub_1ADE058D4(v45, v46, v36, v75);
  v77 = 0;
  v68 = v44;
  v69 = v43;
  v67 = v30;
  v47 = a1[1];
  v48 = *(v47 + 16);
  if (v48)
  {
    v81[0] = v38;
    sub_1ADE6F13C(0, v48, 0);
    v49 = 0;
    v50 = v81[0];
    v51 = (v47 + 64);
    while (v49 < *(v47 + 16))
    {
      v76 = v50;
      v52 = *(v51 - 3);
      v54 = *(v51 - 2);
      v53 = *(v51 - 1);
      v55 = *v51;
      v82[0] = *(v51 - 4);
      v82[1] = v52;
      v82[2] = v54;
      v82[3] = v53;
      v82[4] = v55;

      sub_1ADE42C78(v54, v53);

      v56 = v77;
      sub_1AE206330(v82, v79, v80);
      v77 = v56;
      if (v56)
      {

        sub_1ADDDCE80(v74, v72);
        sub_1ADFAECE8(v73);

        sub_1ADDD2728(v75, type metadata accessor for FinalizedTimestamp);

        sub_1ADE42CB8(v54, v53);

        return;
      }

      sub_1ADE42CB8(v54, v53);

      v50 = v76;
      v81[0] = v76;
      v58 = *(v76 + 16);
      v57 = *(v76 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1ADE6F13C((v57 > 1), v58 + 1, 1);
        v50 = v81[0];
      }

      ++v49;
      *(v50 + 16) = v58 + 1;
      sub_1ADDD2198(v80, v50 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v58, &qword_1EB5BA380, &qword_1AE2423B0);
      v51 += 5;
      if (v48 == v49)
      {
        sub_1ADFAECE8(v73);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_38;
  }

  sub_1ADFAECE8(a1);
  v50 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v59 = v74;
  v60 = v77;
  if (v74)
  {
    v61 = v72;

    v59(v50);
    sub_1ADDDCE80(v59, v61);
  }

  v49 = MEMORY[0x1E69E7CC8];
  if (*(v50 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB838, &qword_1AE25AA40);
    v62 = sub_1AE23DCDC();
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC8];
  }

  v83 = v62;
  sub_1AE2121C8(v50, 1, &v83);
  if (v60)
  {

    sub_1ADDDCE80(v74, v72);

    sub_1ADDD2728(v75, type metadata accessor for FinalizedTimestamp);

    return;
  }

  v80 = v83;
  v48 = v74;
  if (qword_1ED96B308 != -1)
  {
    goto LABEL_42;
  }

LABEL_38:
  sub_1AE23D6AC();
  v63 = v81[0];
  v64 = v75;
  v65 = v70;
  sub_1ADDD26C0(v75, v70, type metadata accessor for FinalizedTimestamp);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA18, &qword_1AE25AA48);
  v66 = swift_allocObject();
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1ADDDCE80(v48, v72);

  sub_1ADDD2728(v64, type metadata accessor for FinalizedTimestamp);
  sub_1ADDD2788(v65, v66 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v66[3] = v49;
  v66[4] = v49;
  v66[5] = v49;
  v66[6] = 0;
  v66[2] = v67;
  swift_beginAccess();
  v66[3] = v69;
  v66[4] = v68;

  swift_beginAccess();
  v66[5] = v80;

  v66[6] = v63;
  *v71 = v66;
}

void sub_1AE205930(unint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v71 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = &v67 - v10;
  v11 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v67 - v17;
  v19 = sub_1AE23BFEC();
  v20 = *(v19 - 8);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 24);
  v28 = *(v27 + 16);
  if (!v28 || (v29 = *a1, *a1 >= v28))
  {
    sub_1ADE42E40(v21, v22, v23);
    swift_allocError();
    *v42 = 0xD000000000000013;
    *(v42 + 8) = 0x80000001AE25FD70;
    *(v42 + 16) = 0;
    swift_willThrow();
    sub_1ADDDCE80(a3, a4);
    goto LABEL_19;
  }

  v70 = v13;
  v74 = a3;
  v72 = a4;
  (*(v20 + 16))(v26, v27 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v29, v19, v24);
  type metadata accessor for ReplicaState(0);
  v30 = swift_allocObject();
  v79 = a2;
  v31 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v32 = type metadata accessor for Replica(0);
  v33 = *(v32 - 8);
  v73 = a1;
  v34 = *(v33 + 56);
  v34(v30 + v31, 1, 1, v32);
  (*(v20 + 32))(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v26, v19);
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v34(v18, 1, 1, v32);
  a1 = v73;
  swift_beginAccess();
  v35 = v30 + v31;
  v36 = v79;
  sub_1ADF92F3C(v18, v35, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v37 = a1[3];
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v39 = a1[3];
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  if (v37)
  {
    v40 = a1[4];
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v37, a1[4]);

  v41 = v77;
  sub_1ADDD6748(v39, v40, v36, v81);
  if (v41)
  {

    sub_1ADDDCE80(v74, v72);
LABEL_19:

    sub_1ADFAECE8(a1);
    return;
  }

  v43 = v81[0];
  v44 = v81[1];
  if (*(a1 + 56))
  {
    v45 = 0;
  }

  else
  {
    v45 = a1[5];
  }

  if (*(a1 + 56))
  {
    v46 = 0;
  }

  else
  {
    v46 = a1[6];
  }

  sub_1ADE058D4(v45, v46, v36, v75);
  v77 = 0;
  v68 = v44;
  v69 = v43;
  v67 = v30;
  v47 = a1[1];
  v48 = *(v47 + 16);
  if (v48)
  {
    v81[0] = v38;
    sub_1ADE6F1F4(0, v48, 0);
    v49 = 0;
    v50 = v81[0];
    v51 = (v47 + 64);
    while (v49 < *(v47 + 16))
    {
      v76 = v50;
      v52 = *(v51 - 3);
      v54 = *(v51 - 2);
      v53 = *(v51 - 1);
      v55 = *v51;
      v82[0] = *(v51 - 4);
      v82[1] = v52;
      v82[2] = v54;
      v82[3] = v53;
      v82[4] = v55;

      sub_1ADE42C78(v54, v53);

      v56 = v77;
      sub_1AE206858(v82, v79, v80);
      v77 = v56;
      if (v56)
      {

        sub_1ADDDCE80(v74, v72);
        sub_1ADFAECE8(v73);

        sub_1ADDD2728(v75, type metadata accessor for FinalizedTimestamp);

        sub_1ADE42CB8(v54, v53);

        return;
      }

      sub_1ADE42CB8(v54, v53);

      v50 = v76;
      v81[0] = v76;
      v58 = *(v76 + 16);
      v57 = *(v76 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1ADE6F1F4((v57 > 1), v58 + 1, 1);
        v50 = v81[0];
      }

      ++v49;
      *(v50 + 16) = v58 + 1;
      sub_1ADDD2198(v80, v50 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v58, &qword_1EB5BA3B0, &unk_1AE2423E0);
      v51 += 5;
      if (v48 == v49)
      {
        sub_1ADFAECE8(v73);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_38;
  }

  sub_1ADFAECE8(a1);
  v50 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v59 = v74;
  v60 = v77;
  if (v74)
  {
    v61 = v72;

    v59(v50);
    sub_1ADDDCE80(v59, v61);
  }

  v49 = MEMORY[0x1E69E7CC8];
  if (*(v50 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB848, &qword_1AE24CF18);
    v62 = sub_1AE23DCDC();
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC8];
  }

  v83 = v62;
  sub_1AE21273C(v50, 1, &v83);
  if (v60)
  {

    sub_1ADDDCE80(v74, v72);

    sub_1ADDD2728(v75, type metadata accessor for FinalizedTimestamp);

    return;
  }

  v80 = v83;
  v48 = v74;
  if (qword_1ED96B308 != -1)
  {
    goto LABEL_42;
  }

LABEL_38:
  sub_1AE23D6AC();
  v63 = v81[0];
  v64 = v75;
  v65 = v70;
  sub_1ADDD26C0(v75, v70, type metadata accessor for FinalizedTimestamp);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA40, &qword_1AE25AA90);
  v66 = swift_allocObject();
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1ADDDCE80(v48, v72);

  sub_1ADDD2728(v64, type metadata accessor for FinalizedTimestamp);
  sub_1ADDD2788(v65, v66 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v66[3] = v49;
  v66[4] = v49;
  v66[5] = v49;
  v66[6] = 0;
  v66[2] = v67;
  swift_beginAccess();
  v66[3] = v69;
  v66[4] = v68;

  swift_beginAccess();
  v66[5] = v80;

  v66[6] = v63;
  *v71 = v66;
}

void sub_1AE206330(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  AnyCRValue.init(from:)(v15, &v36);
  if (v3)
  {
  }

  else
  {
    if (a1[1])
    {
      v16 = a1[1];
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v16 = swift_initStaticObject();
    }

    sub_1AE200DD8(v16, a2, &v35);
    v17 = v35;
    if (v35)
    {
      (*(*v35 + 120))();
      (*(v33 + 56))(v8, 0, 1, v9);
      v18 = sub_1ADDD2788(v8, v34, type metadata accessor for FinalizedTimestamp);
      (*(*v17 + 96))(&v35, v18);
      v19 = a1[2];
      v20 = a1[3];
      if (v19)
      {
        v21 = a1[2];
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      if (v19)
      {
        v22 = v20;
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      sub_1ADE42C78(v19, v20);
      sub_1ADDF4A24(v21, v22, a2);
      v24 = v23;

      *&v13[*(v11 + 36)] = v35;
      sub_1ADDD2788(v34, v13, type metadata accessor for FinalizedTimestamp);
      *&v13[*(v11 + 40)] = v24;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0) + 48);
      v26 = v32;
      *v32 = v36;
      sub_1ADDD2198(v13, v26 + v25, &qword_1EB5BB830, &unk_1AE25AA50);
    }

    else
    {
      (*(v33 + 56))(v8, 1, 1, v9);
      if (qword_1ED966C80 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v9, qword_1EB5D74D0);
      sub_1ADDD26C0(v27, v34, type metadata accessor for FinalizedTimestamp);
      v28 = (*(v33 + 48))(v8, 1, v9);
      if (v28 != 1)
      {
        v28 = sub_1ADDCEDE0(v8, &qword_1EB5BA460, &qword_1AE251020);
      }

      sub_1ADE42E40(v28, v29, v30);
      swift_allocError();
      *v31 = 0xD000000000000029;
      *(v31 + 8) = 0x80000001AE261AB0;
      *(v31 + 16) = 0;
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

void sub_1AE206858(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v35 - v11;
  v12 = sub_1AE23BFEC();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_initStackObject();

  sub_1ADE0262C(inited, a2);

  UUID.init(from:)(v16, v14);
  if (v3)
  {
  }

  else
  {
    if (a1[1])
    {
      v17 = a1[1];
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v17 = swift_initStaticObject();
    }

    sub_1AE200DD8(v17, a2, &v41);
    v18 = v41;
    if (v41)
    {
      (*(*v41 + 120))();
      (*(v38 + 56))(v8, 0, 1, v9);
      v19 = sub_1ADDD2788(v8, v39, type metadata accessor for FinalizedTimestamp);
      (*(*v18 + 96))(&v41, v19);
      v21 = a1[2];
      v20 = a1[3];
      if (v21)
      {
        v22 = a1[2];
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      if (v21)
      {
        v23 = a1[3];
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      sub_1ADE42C78(v21, v20);
      sub_1ADDF4A24(v22, v23, a2);
      v25 = v24;

      v26 = v35;
      v27 = v36;
      *&v36[*(v35 + 36)] = v41;
      sub_1ADDD2788(v39, v27, type metadata accessor for FinalizedTimestamp);
      *(v27 + *(v26 + 40)) = v25;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0) + 48);
      v29 = v37;
      (*(v40 + 32))(v37, v14, v12);
      sub_1ADDD2198(v27, v29 + v28, &qword_1EB5BB830, &unk_1AE25AA50);
    }

    else
    {
      (*(v38 + 56))(v8, 1, 1, v9);
      if (qword_1ED966C80 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v9, qword_1EB5D74D0);
      sub_1ADDD26C0(v30, v39, type metadata accessor for FinalizedTimestamp);
      v31 = (*(v38 + 48))(v8, 1, v9);
      if (v31 != 1)
      {
        v31 = sub_1ADDCEDE0(v8, &qword_1EB5BA460, &qword_1AE251020);
      }

      sub_1ADE42E40(v31, v32, v33);
      swift_allocError();
      *v34 = 0xD000000000000029;
      *(v34 + 8) = 0x80000001AE261AB0;
      *(v34 + 16) = 0;
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

uint64_t AnyCRValue.encode(to:)(uint64_t a1)
{
  (*(**v1 + 80))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1AE23CBAC();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void sub_1AE206F28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    v19 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    v21 = 0xD000000000000017;
LABEL_23:
    *v20 = v21;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    swift_willThrow();

    return;
  }

  v7 = v4;
  if (*(a1 + 57) < 3u || ((v8 = *(v6 + 16), (~v8 & 0xF000000000000007) != 0) ? (v9 = ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 16) : (v9 = 0), !v9))
  {
    v10 = *(v6 + 16);
    if ((~v10 & 0xF000000000000007) != 0 && ((v10 >> 59) & 0x1E | (v10 >> 2) & 1) == 7)
    {
      v11 = a4;
      v12 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v11 = a4;
      v12 = &unk_1ED966F48;
    }

    swift_beginAccess();
    v14 = v12[8];
    v13 = v12[9];
    v15 = v12[10];
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    if (v14)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    if (v14)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xC000000000000000;
    }

    swift_retain_n();
    sub_1ADE56F74(v14, v13, v15);
    sub_1ADDE94BC(v16, v17, v18, &v35);
    if (v7)
    {

      return;
    }

    v22 = v35;
    v23 = v36;
    v24 = *(a1 + 16);
    if (v24)
    {
      goto LABEL_25;
    }

LABEL_35:
    __break(1u);
    return;
  }

  v30 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v31 = *(a1 + 40);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v30 >= v32;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    v19 = 0x80000001AE25FC60;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    v21 = 0xD000000000000013;
    goto LABEL_23;
  }

  v11 = a4;
  v34 = v31 + 16 * v30;
  v22 = *(v34 + 32);
  v23 = *(v34 + 40);

  sub_1ADDD86D8(v22, v23);
  v24 = *(a1 + 16);
  if (!v24)
  {
    goto LABEL_35;
  }

LABEL_25:
  v35 = v22;
  v36 = v23;
  v25 = *(*v24 + 200);

  v26 = sub_1ADDD86D8(v22, v23);
  v29 = sub_1ADF4ADD8(v26, v27, v28);
  v25(&type metadata for AnyCRDT, &v35, a1, 0, &type metadata for AnyCRDT, v29);
  sub_1ADDCC35C(v35, v36);

  if (v7)
  {
    sub_1ADDCC35C(v22, v23);
  }

  else
  {
    *v11 = v22;
    v11[1] = v23;
  }
}

double sub_1AE2071F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  return result;
}

uint64_t sub_1AE20724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v30 = a6;
  v11 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  *(&v29 - v18) = a1;
  sub_1ADDCEE40(a2, &v29 + *(v20 + 48) - v18, &qword_1EB5BB830, &unk_1AE25AA50);

  v21 = v31;
  sub_1ADE017C0(a3, a4, a5, v13);
  if (v21)
  {
    v22 = &qword_1EB5BA380;
    v23 = &qword_1AE2423B0;
    v24 = v19;
  }

  else
  {
    sub_1ADDD2198(v19, v16, &qword_1EB5BA380, &qword_1AE2423B0);
    v25 = *(v14 + 48);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
    v27 = v30;
    sub_1ADDD2788(v13, v30 + *(v26 + 44), type metadata accessor for Timestamp);
    *v27 = *v16;
    v22 = &qword_1EB5BB830;
    v23 = &unk_1AE25AA50;
    v24 = v16 + v25;
  }

  return sub_1ADDCEDE0(v24, v22, v23);
}

uint64_t sub_1AE207454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a3;
  v31 = a4;
  v29 = a6;
  v9 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = sub_1AE23BFEC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  sub_1ADDCEE40(a2, &v17[*(v12 + 48)], &qword_1EB5BB830, &unk_1AE25AA50);

  v20 = v32;
  sub_1ADE017C0(v30, v31, a5, v11);
  if (v20)
  {
    v21 = &qword_1EB5BA3B0;
    v22 = &unk_1AE2423E0;
    v23 = v17;
  }

  else
  {
    sub_1ADDD2198(v17, v14, &qword_1EB5BA3B0, &unk_1AE2423E0);
    v24 = *(v12 + 48);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3A0, &qword_1AE2423D0);
    v26 = v29;
    sub_1ADDD2788(v11, v29 + *(v25 + 44), type metadata accessor for Timestamp);
    (*(v19 + 32))(v26, v14, v18);
    v21 = &qword_1EB5BB830;
    v22 = &unk_1AE25AA50;
    v23 = &v14[v24];
  }

  return sub_1ADDCEDE0(v23, v21, v22);
}

void AnyCRDT.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(**v1 + 152);

  LOBYTE(v4) = v4(v5);

  if (v4)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = (*(*v7 + 168))();

      *v2 = v7;
    }

    (*(*v7 + 160))(a1);
  }
}

void sub_1AE207790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = *(a1 + 16);

  if (v7)
  {
    v8 = 0;
    v39 = a2 + 32;
    v40 = a1 + 32;
    v36 = v7 - 1;
    v9 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
    v37 = a3;
LABEL_3:
    v38 = v9;
    while (v8 < *(a1 + 16))
    {
      if (v8 >= *(a2 + 16))
      {
        goto LABEL_22;
      }

      v11 = *(v40 + 8 * v8);
      v12 = *(v39 + 8 * v8);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v13 = v41;

      v14 = sub_1ADDE77B4(v12, v13);

      v16 = *(v14 + 32);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v11 >= v17;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {

        swift_bridgeObjectRelease_n();

        sub_1ADE42E40(v30, v31, v32);
        v33 = swift_allocError();
        *v34 = 0xD000000000000015;
        *(v34 + 8) = 0x80000001AE25FCF0;
        *(v34 + 16) = 0;
        v43 = v33;
        swift_willThrow();

        return;
      }

      v42 = v10;
      v19 = v16 + 16 * v11;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);
      v44[0] = v21;
      v44[1] = v20;
      MEMORY[0x1EEE9AC00](v15);
      v35[2] = v44;

      v22 = v43;
      if (sub_1ADDE8768(sub_1AE2139F4, v35, MEMORY[0x1E69E7CC0]))
      {
        v43 = v22;
        v27 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v27;
        sub_1ADDE88A8(v14, v21, v20, isUniquelyReferenced_nonNull_native);

        v9 = v44[0];
        v29 = v36 == v8++;
        v10 = v42;
        if (v29)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }

      AnyCRDT.init(from:)(v23, v44);
      v43 = v22;
      if (v22)
      {

        swift_bridgeObjectRelease_n();

        return;
      }

      ++v8;
      v24 = v44[0];
      v25 = v42;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v25;
      sub_1ADEBF524(v24, v21, v20, v26);

      v10 = v45;
      if (v7 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_20:

    swift_bridgeObjectRelease_n();
  }
}

void sub_1AE207AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F17C(0, v4, 0);
    v5 = 0;
    v6 = v20;
    while (v5 < *(v3 + 16))
    {
      v7 = *(v3 + 8 * v5 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      v8 = sub_1ADE0262C(v7, a2);

      AnyCRValue.init(from:)(v8, &v19);
      if (v2)
      {

        return;
      }

      v9 = v3;
      v10 = v4;

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1ADE6F17C((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      ++v5;
      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      v4 = v10;
      v14 = v10 == v5;
      v3 = v9;
      if (v14)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA50, &qword_1AE25AAA0);
    v16 = objc_allocWithZone(v15);
    *&v16[qword_1EB5BD4A8] = v6;
    v18.receiver = v16;
    v18.super_class = v15;
    objc_msgSendSuper2(&v18, sel_init);
  }
}

uint64_t sub_1AE207CE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (a1)
  {
    [*(a1 + qword_1ED96F258) copy];
    sub_1AE23D83C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v1 + qword_1ED96F258) = v20[1];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA60, &unk_1AE25AAB0);
    v9 = [objc_allocWithZone(v8) init];
    v21[3] = v8;
    v21[0] = v9;
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    if (v8)
    {
      v10 = __swift_project_boxed_opaque_existential_1(v21, v8);
      v11 = *(v8 - 1);
      v12 = MEMORY[0x1EEE9AC00](v10);
      v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = sub_1AE23DFFC();
      (*(v11 + 8))(v14, v8);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
    v17 = sub_1AE23BF7C();
    v18 = [v16 initWithStorage:v15 uuid:v17];
    swift_unknownObjectRelease();

    (*(v5 + 8))(v7, v4);
    *(v2 + qword_1ED96F258) = v18;
  }

  return v2;
}

void *sub_1AE2080CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v38 = *MEMORY[0x1E69E9840];
  v11 = qword_1ED96F260;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  HIBYTE(v35) = v12;
  BYTE6(v35) = v13;
  BYTE5(v35) = v14;
  BYTE4(v35) = v15;
  BYTE3(v35) = v16;
  BYTE2(v35) = v17;
  LOWORD(v35) = v18;
  sub_1AE23BFBC();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
  v21 = &v20[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
  *v21 = a5;
  *(v21 + 1) = v19;
  v22 = &v20[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
  LOBYTE(v36) = 1;
  *v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 1) = MEMORY[0x1E69E7CC0];
  *(v22 + 2) = v23;
  *(v22 + 3) = v23;
  *(v22 + 4) = 0;
  v22[40] = 1;
  *(v22 + 6) = 0;
  *(v22 + 7) = 0;
  v22[64] = 1;
  v24 = &v20[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  v25 = *(a1 + 80);
  *(v24 + 4) = *(a1 + 64);
  *(v24 + 5) = v25;
  *(v24 + 12) = *(a1 + 96);
  v26 = *(a1 + 16);
  *v24 = *a1;
  *(v24 + 1) = v26;
  v27 = *(a1 + 48);
  *(v24 + 2) = *(a1 + 32);
  *(v24 + 3) = v27;
  *&v20[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a3;
  v37.receiver = v20;
  v37.super_class = type metadata accessor for CRStringDecoder();

  v28 = objc_msgSendSuper2(&v37, sel_init, v35);
  v36 = 0;
  v29 = [objc_allocWithZone(_TtC9Coherence19CRTTMergeableString) initWithDecoder:v28 error:&v36];
  if (v29)
  {
    v30 = v29;
    v31 = v36;

    *(v7 + qword_1ED96F258) = v30;
  }

  else
  {
    v32 = v36;
    sub_1AE23BC9C();

    swift_willThrow();

    v33 = sub_1AE23BFEC();
    (*(*(v33 - 8) + 8))(v7 + v11, v33);
    swift_deallocPartialClassInstance();
  }

  return v7;
}

id sub_1AE20840C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = objc_allocWithZone(v6);
  *&v7[qword_1EB5BD4A8] = a1;
  v9.receiver = v7;
  v9.super_class = v6;

  result = objc_msgSendSuper2(&v9, sel_init);
  a4[3] = v6;
  *a4 = result;
  return result;
}

void sub_1AE208494(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  sub_1AE207AF0(a1, a2);
  if (!v3)
  {
    v8 = v7;
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA50, &qword_1AE25AAA0);
    *a3 = v8;
  }
}

void sub_1AE208508(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a2 + 24);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v17 >= v19;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    sub_1ADE42E40(v11, v12, v13);
    swift_allocError();
    *v21 = 0xD000000000000013;
    *(v21 + 8) = 0x80000001AE25FD70;
    *(v21 + 16) = 0;
    swift_willThrow();

    v22 = a1;
LABEL_15:
    sub_1ADFAECE8(v22);
    return;
  }

  v59 = a3;
  (*(v10 + 16))(v16, v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v9, v14);
  type metadata accessor for ReplicaState(0);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v25 = type metadata accessor for Replica(0);
  v26 = *(v25 - 8);
  v64 = a2;
  v27 = *(v26 + 56);
  v60 = a1;
  v27(v23 + v24, 1, 1, v25);
  (*(v10 + 32))(v23 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v16, v9);
  *(v23 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v23 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v27(v8, 1, 1, v25);
  v28 = v64;
  swift_beginAccess();
  sub_1ADF92F3C(v8, v23 + v24, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v29 = v60;
  v30 = v60[3];
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v32 = v60[3];
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  if (v30)
  {
    v33 = v60[4];
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v30, v60[4]);

  v34 = v69;
  sub_1ADDD6748(v32, v33, v28, &v67);
  if (v34)
  {

    v22 = v29;
    goto LABEL_15;
  }

  v57 = v68;
  v58 = v67;
  v35 = v29[1];
  v36 = *(v35 + 16);
  if (v36)
  {
    v56 = v23;
    v66[0] = v31;
    sub_1ADE6F11C(0, v36, 0);
    v23 = 0;
    v31 = v66[0];
    v37 = (v35 + 64);
    v61 = v36;
    v62 = v35;
    while (v23 < *(v35 + 16))
    {
      v38 = *(v37 - 4);
      v65 = *(v37 - 3);
      v40 = *(v37 - 2);
      v39 = *(v37 - 1);
      v69 = *v37;
      v63 = v31;
      if (v38)
      {
        inited = v38;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        inited = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      swift_retain_n();

      sub_1ADE42C78(v40, v39);

      sub_1ADE0262C(inited, v28);

      AnyCRValue.init(from:)(v42, &v67);
      if (v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }

      if (v40)
      {
        v44 = v39;
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
      }

      sub_1ADE42C78(v40, v39);
      v45 = v44;
      v28 = v64;
      sub_1ADDF4A24(v43, v45, v64);
      v47 = v46;

      sub_1ADE42CB8(v40, v39);

      v68 = v47;
      v48 = v67;
      v31 = v63;
      v66[0] = v63;
      v50 = v63[2];
      v49 = v63[3];
      if (v50 >= v49 >> 1)
      {
        sub_1ADE6F11C((v49 > 1), v50 + 1, 1);
        v31 = v66[0];
      }

      ++v23;
      v31[2] = v50 + 1;
      v51 = &v31[2 * v50];
      v51[4] = v48;
      v51[5] = v47;
      v37 += 5;
      v36 = v61;
      v35 = v62;
      if (v61 == v23)
      {
        sub_1ADFAECE8(v60);
        v23 = v56;
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1ADFAECE8(v29);
LABEL_33:
    v37 = MEMORY[0x1E69E7CC8];
    if (v31[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
      v52 = sub_1AE23DCDC();
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC8];
    }

    v67 = v52;
    sub_1AE211E38(v31, 1, &v67);
    v36 = v67;
    if (qword_1ED96B308 == -1)
    {
      goto LABEL_37;
    }
  }

  swift_once();
LABEL_37:
  sub_1AE23D6AC();
  v53 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDA30, &qword_1AE253930);
  v54 = swift_allocObject();
  v54[3] = v37;
  v54[4] = v37;
  v54[5] = v37;
  v54[6] = 0;
  v54[2] = v23;
  swift_beginAccess();
  v55 = v57;
  v54[3] = v58;
  v54[4] = v55;

  swift_beginAccess();
  v54[5] = v36;
  v54[6] = v53;

  *v59 = v54;
}

void sub_1AE208C50(int a1)
{
  v204 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v206 = &v198 - v3;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  MEMORY[0x1EEE9AC00](v205);
  v5 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v198 - v7;
  v9 = type metadata accessor for Timestamp(0);
  v217 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v237 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v220 = &v198 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v221 = (&v198 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v232 = (&v198 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v212 = &v198 - v18;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  MEMORY[0x1EEE9AC00](v224);
  v230 = &v198 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v233 = (&v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v216 = &v198 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v215 = &v198 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v214 = &v198 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v236 = &v198 - v29;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v235 = (&v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v227 = (&v198 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA80, &qword_1AE25AAE8);
  v219 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v213 = (&v198 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA88, &qword_1AE25AAF0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v226 = &v198 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v225 = (&v198 - v38);
  v208 = sub_1AE23C12C();
  v207 = *(v208 - 8);
  v39 = MEMORY[0x1EEE9AC00](v208);
  v218 = &v198 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = v1;
  v41 = *v1;
  if (!*v1)
  {
    return;
  }

  v42 = [*(v41 + qword_1ED96F258) attributedString];
  v211 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA60, &unk_1AE25AAB0);
  v44 = swift_dynamicCastClassUnconditional();
  v45 = qword_1EB5BD4A8;
  swift_beginAccess();
  v46 = *(v44 + v45);

  v47 = v211;
  swift_unknownObjectRelease();
  v48 = *(v46 + 16);

  if (!v48)
  {
    return;
  }

  v223 = v33;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE850, &qword_1AE25A548);
  v50 = v210 + *(v49 + 48);
  sub_1ADDCEDE0(v50, &qword_1EB5BEA78, &unk_1AE25AAD0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA70, &qword_1AE25AAC8);
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v201 = v50;
  v200 = v51;
  v199 = v53;
  v198 = v52 + 56;
  (v53)(v50, 1, 1);
  v242 = MEMORY[0x1E69E7CC8];
  v54 = qword_1ED96F258;
  [objc_msgSend(*(v47 + qword_1ED96F258) attributedString)];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEA90, &qword_1AE25AAF8);
  sub_1AE23CA3C();
  v202 = v54;
  v55 = [*(v47 + v54) attributedString];
  v56 = swift_dynamicCastClassUnconditional();
  v57 = qword_1EB5BD4A8;
  swift_beginAccess();
  v58 = *(v56 + v57);

  swift_unknownObjectRelease();
  v59 = *(v58 + 16);
  v234 = v9;
  v203 = v43;
  v60 = v235;
  if (v59)
  {
    v61 = v210[1];
    v239 = v58 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
    v238 = v61;
    swift_beginAccess();
    v62 = 0;
    v63 = &qword_1EB5BA270;
    v222 = (v217 + 56);
    v231 = v59;
    v209 = v58;
    do
    {
      if (v62 >= *(v58 + 16))
      {
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
        goto LABEL_101;
      }

      v64 = v63;
      sub_1ADDCEE40(v239 + *(v228 + 72) * v62, v60, v63, &unk_1AE253920);
      if (!*(*(v238 + 40) + 16) || (v65 = *v60, , sub_1ADF4A434(v65), LOBYTE(v65) = v66, , (v65 & 1) == 0))
      {
        v92 = v60;
        v63 = v64;
        v93 = v64;
        v94 = &unk_1AE253920;
        goto LABEL_21;
      }

      v67 = v242;
      if (!*(v242 + 16))
      {
        goto LABEL_22;
      }

      v68 = sub_1ADF4A434(*v60);
      if ((v69 & 1) == 0)
      {
        goto LABEL_17;
      }

      v70 = *(v217 + 72);
      v71 = v60;
      v72 = v221;
      sub_1ADDD26C0(v67[7] + v70 * v68, v221, type metadata accessor for Timestamp);
      v73 = v72;
      v74 = v232;
      sub_1ADDD2788(v73, v232, type metadata accessor for Timestamp);
      v75 = v74;
      v76 = v71 + *(v229 + 44);
      v77 = *(v9 + 20);
      v78 = *(v75 + v77);
      v79 = *(v76 + v77);
      v80 = v78 < v79;
      if (v78 == v79 && (v81 = type metadata accessor for Replica(0), v75 = v232, v82 = *(v81 + 20), v83 = *(v232 + v82), v84 = *(v76 + v82), v80 = v83 < v84, v83 == v84))
      {
        v85 = sub_1ADF5EB00(v232);
        v75 = v232;
        v58 = v209;
        if ((v85 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v58 = v209;
        if (!v80)
        {
LABEL_16:
          sub_1ADDD2728(v75, type metadata accessor for Timestamp);
          v60 = v235;
LABEL_17:
          if (v67[2])
          {
            v86 = sub_1ADF4A434(*v60);
            if (v87)
            {
              v88 = v217;
              v89 = v67[7] + *(v217 + 72) * v86;
              v90 = v233;
              sub_1ADDD26C0(v89, v233, type metadata accessor for Timestamp);
              v91 = *(v88 + 56);
              v59 = v231;
              v91(v90, 0, 1, v9);
              v63 = v64;
              sub_1ADDCEDE0(v60, v64, &unk_1AE253920);
              v92 = v90;
              v93 = &qword_1EB5BA480;
              v94 = &qword_1AE25AAE0;
LABEL_21:
              sub_1ADDCEDE0(v92, v93, v94);
              goto LABEL_7;
            }
          }

LABEL_22:
          v95 = v233;
          (*v222)(v233, 1, 1, v9);
          sub_1ADDCEDE0(v95, &qword_1EB5BA480, &qword_1AE25AAE0);
          v96 = *v60;
          sub_1ADDD26C0(v60 + *(v229 + 44), v237, type metadata accessor for Timestamp);
          v97 = v242;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v240 = v97;
          v99 = sub_1ADF4A434(v96);
          v101 = *(v97 + 16);
          v102 = (v100 & 1) == 0;
          v103 = __OFADD__(v101, v102);
          v104 = v101 + v102;
          if (v103)
          {
            goto LABEL_97;
          }

          v105 = v100;
          if (*(v97 + 24) >= v104)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v122 = v99;
              sub_1ADF6F8FC();
              v99 = v122;
            }
          }

          else
          {
            sub_1ADF69E44(v104, isUniquelyReferenced_nonNull_native);
            v99 = sub_1ADF4A434(v96);
            if ((v105 & 1) != (v106 & 1))
            {
              goto LABEL_102;
            }
          }

          v9 = v234;
          v107 = v240;
          if (v105)
          {
            sub_1AE213988(v237, v240[7] + *(v217 + 72) * v99);
          }

          else
          {
            v240[(v99 >> 6) + 8] |= 1 << v99;
            *(v107[6] + 8 * v99) = v96;
            sub_1ADDD2788(v237, v107[7] + *(v217 + 72) * v99, type metadata accessor for Timestamp);
            v108 = v107[2];
            v103 = __OFADD__(v108, 1);
            v109 = v108 + 1;
            if (v103)
            {
              goto LABEL_98;
            }

            v107[2] = v109;
          }

          v242 = v107;
          v60 = v235;
          v63 = v64;
          sub_1ADDCEDE0(v235, v64, &unk_1AE253920);
          v59 = v231;
          goto LABEL_7;
        }
      }

      v110 = *v235;
      sub_1ADDD26C0(v76, v220, type metadata accessor for Timestamp);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v240 = v67;
      v112 = sub_1ADF4A434(v110);
      v114 = v67[2];
      v115 = (v113 & 1) == 0;
      v103 = __OFADD__(v114, v115);
      v116 = v114 + v115;
      if (v103)
      {
        goto LABEL_99;
      }

      v117 = v113;
      if (v67[3] >= v116)
      {
        if ((v111 & 1) == 0)
        {
          v123 = v112;
          sub_1ADF6F8FC();
          v112 = v123;
        }
      }

      else
      {
        sub_1ADF69E44(v116, v111);
        v112 = sub_1ADF4A434(v110);
        if ((v117 & 1) != (v118 & 1))
        {
          goto LABEL_102;
        }
      }

      v9 = v234;
      v119 = v240;
      if (v117)
      {
        sub_1AE213988(v220, v240[7] + v112 * v70);
        sub_1ADDD2728(v232, type metadata accessor for Timestamp);
      }

      else
      {
        v240[(v112 >> 6) + 8] |= 1 << v112;
        *(v119[6] + 8 * v112) = v110;
        sub_1ADDD2788(v220, v119[7] + v112 * v70, type metadata accessor for Timestamp);

        sub_1ADDD2728(v232, type metadata accessor for Timestamp);
        v120 = v119[2];
        v103 = __OFADD__(v120, 1);
        v121 = v120 + 1;
        if (v103)
        {
          goto LABEL_100;
        }

        v119[2] = v121;
      }

      v60 = v235;
      v59 = v231;
      v63 = v64;
      v242 = v119;
      sub_1ADDCEDE0(v235, v64, &unk_1AE253920);
      v58 = v209;
LABEL_7:
      ++v62;
    }

    while (v59 != v62);
  }

  sub_1AE23C11C();
  v124 = [*(v211 + v202) attributedString];
  v125 = swift_dynamicCastClassUnconditional();
  v126 = qword_1EB5BD4A8;
  swift_beginAccess();
  v127 = *(v125 + v126);

  swift_unknownObjectRelease();
  v128 = 0;
  v129 = 0;
  v130 = *(v127 + 16);
  v222 = (v219 + 56);
  v221 = (v219 + 48);
  v232 = (v217 + 56);
  v233 = (v217 + 48);
  v131 = v214;
  v132 = v236;
  v133 = v227;
  v134 = v226;
  v220 = v127;
  v219 = v130;
  while (1)
  {
    v135 = v223;
    LODWORD(v239) = v128;
    if (v129 == v130)
    {
      v136 = 1;
      v238 = v130;
    }

    else
    {
      if (v129 >= *(v127 + 16))
      {
        goto LABEL_96;
      }

      v137 = v129 + 1;
      v138 = v127 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v129;
      v139 = *(v223 + 48);
      v140 = v213;
      *v213 = v129;
      sub_1ADDCEE40(v138, v140 + v139, &qword_1EB5BA270, &unk_1AE253920);
      sub_1ADDD2198(v140, v134, &qword_1EB5BEA80, &qword_1AE25AAE8);
      v136 = 0;
      v238 = v137;
    }

    (*v222)(v134, v136, 1, v135);
    v141 = v225;
    sub_1ADDD2198(v134, v225, &qword_1EB5BEA88, &qword_1AE25AAF0);
    if ((*v221)(v141, 1, v135) == 1)
    {
      break;
    }

    v235 = *v141;
    sub_1ADDD2198(v141 + *(v135 + 48), v133, &qword_1EB5BA270, &unk_1AE253920);
    v142 = v242;
    v143 = *(v242 + 16);
    v237 = v242;
    if (v143)
    {
      v144 = sub_1ADF4A434(*v133);
      v145 = v233;
      if (v146)
      {
        sub_1ADDD26C0(*(v142 + 56) + *(v217 + 72) * v144, v132, type metadata accessor for Timestamp);
        v147 = 0;
      }

      else
      {
        v147 = 1;
      }
    }

    else
    {
      v147 = 1;
      v145 = v233;
    }

    v148 = *v232;
    v149 = v234;
    (*v232)(v132, v147, 1, v234);
    sub_1ADDD26C0(v133 + *(v229 + 44), v131, type metadata accessor for Timestamp);
    v231 = v148;
    v148(v131, 0, 1, v149);
    v150 = *(v224 + 48);
    v151 = v132;
    v152 = v230;
    sub_1ADDCEE40(v151, v230, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEE40(v131, v152 + v150, &qword_1EB5BA480, &qword_1AE25AAE0);
    v153 = v131;
    v154 = *v145;
    if ((*v145)(v152, 1, v149) == 1)
    {
      sub_1ADDCEDE0(v153, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v236, &qword_1EB5BA480, &qword_1AE25AAE0);
      v155 = v154(v152 + v150, 1, v149);
      v156 = v154;
      v131 = v153;
      v133 = v227;
      if (v155 == 1)
      {
        sub_1ADDCEDE0(v152, &qword_1EB5BA480, &qword_1AE25AAE0);
        v132 = v236;
        v134 = v226;
        v157 = v237;
        goto LABEL_71;
      }

LABEL_62:
      sub_1ADDCEDE0(v152, &qword_1EB5BB7C0, &unk_1AE2514A0);
      v132 = v236;
LABEL_69:
      v134 = v226;
      v157 = v237;
LABEL_70:
      sub_1AE23C08C();
      goto LABEL_71;
    }

    v158 = v215;
    sub_1ADDCEE40(v152, v215, &qword_1EB5BA480, &qword_1AE25AAE0);
    v156 = v154;
    if (v154(v152 + v150, 1, v149) == 1)
    {
      v131 = v214;
      sub_1ADDCEDE0(v214, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v236, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDD2728(v158, type metadata accessor for Timestamp);
      v133 = v227;
      goto LABEL_62;
    }

    v159 = v152 + v150;
    v160 = v212;
    sub_1ADDD2788(v159, v212, type metadata accessor for Timestamp);
    v161 = *(v158 + *(v149 + 20)) == *(v160 + *(v149 + 20));
    v162 = v158;
    v133 = v227;
    if (!v161 || (v163 = type metadata accessor for Replica(0), v162 = v215, *(v215 + *(v163 + 20)) != *(v160 + *(v163 + 20))))
    {
      sub_1ADDD2728(v160, type metadata accessor for Timestamp);
      v166 = v214;
      sub_1ADDCEDE0(v214, &qword_1EB5BA480, &qword_1AE25AAE0);
      v132 = v236;
      sub_1ADDCEDE0(v236, &qword_1EB5BA480, &qword_1AE25AAE0);
      v167 = v162;
      v131 = v166;
      sub_1ADDD2728(v167, type metadata accessor for Timestamp);
      sub_1ADDCEDE0(v230, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_69;
    }

    LODWORD(v209) = sub_1AE23BF8C();
    sub_1ADDD2728(v160, type metadata accessor for Timestamp);
    v164 = v214;
    sub_1ADDCEDE0(v214, &qword_1EB5BA480, &qword_1AE25AAE0);
    v132 = v236;
    sub_1ADDCEDE0(v236, &qword_1EB5BA480, &qword_1AE25AAE0);
    v165 = v162;
    v131 = v164;
    sub_1ADDD2728(v165, type metadata accessor for Timestamp);
    sub_1ADDCEDE0(v230, &qword_1EB5BA480, &qword_1AE25AAE0);
    v134 = v226;
    v157 = v237;
    if ((v209 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_71:
    if (v239)
    {
      sub_1ADDCEDE0(v133, &qword_1EB5BA270, &unk_1AE253920);
      v128 = 1;
    }

    else
    {
      if (*(v157 + 16) && (v168 = sub_1ADF4A434(*v133), (v169 & 1) != 0))
      {
        sub_1ADDD26C0(*(v157 + 56) + *(v217 + 72) * v168, v216, type metadata accessor for Timestamp);
        v170 = 0;
      }

      else
      {
        v170 = 1;
      }

      v171 = v216;
      v172 = v234;
      v231(v216, v170, 1, v234);
      sub_1ADDCEDE0(v133, &qword_1EB5BA270, &unk_1AE253920);
      v128 = (v156)(v171, 1, v172) == 1;
      sub_1ADDCEDE0(v171, &qword_1EB5BA480, &qword_1AE25AAE0);
    }

    v127 = v220;
    v130 = v219;
    v129 = v238;
  }

  v173 = v218;
  if (sub_1AE23C0AC())
  {
    (*(v207 + 8))(v173, v208);
    goto LABEL_92;
  }

  if (((v204 | v239) & 1) == 0)
  {
    v184 = [*(v211 + v202) attributedString];
    v185 = swift_dynamicCastClassUnconditional();
    v186 = qword_1EB5BD4A8;
    swift_beginAccess();
    v187 = *(v185 + v186);

    swift_unknownObjectRelease();
    v241 = v187;
    v188 = v206;
    sub_1AE23C10C();
    v189 = sub_1AE23C0EC();
    v190 = *(v189 - 8);
    (*(v190 + 16))(v5, v188, v189);
    v191 = *(v205 + 36);
    sub_1AE213940(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1AE23D46C();
    (*(v190 + 8))(v188, v189);
    sub_1AE23D41C();
    if (*&v5[v191] != v240)
    {
      sub_1AE213940(&qword_1EB5BB4E0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B38]);
      do
      {
        sub_1AE23CBDC();
        v192 = sub_1AE23D51C();
        v194 = *v193;
        v195 = v193[1];
        v192(&v240, 0);
        sub_1ADF9348C(v194, v195);
        sub_1AE23D41C();
      }

      while (*&v5[v191] != v240);
    }

    sub_1ADDCEDE0(v5, &qword_1EB5BB4C8, &unk_1AE24C640);
    v196 = v201;
    sub_1ADDCEDE0(v201, &qword_1EB5BEA78, &unk_1AE25AAD0);
    *v196 = v241;
    v197 = v200;
    (*(v207 + 32))(&v196[*(v200 + 44)], v218, v208);
    v199(v196, 0, 1, v197);
    goto LABEL_92;
  }

  v174 = v210;
  if ((swift_isUniquelyReferenced_native() & 1) == 0)
  {
    v175 = *v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA58, &qword_1AE25AAA8);
    swift_allocObject();
    *v174 = sub_1AE207CE8(v175);
  }

  v176 = v206;
  sub_1AE23C10C();
  v177 = sub_1AE23C0EC();
  v178 = *(v177 - 8);
  (*(v178 + 16))(v8, v176, v177);
  v179 = *(v205 + 36);
  sub_1AE213940(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
  sub_1AE23D46C();
  (*(v178 + 8))(v176, v177);
  sub_1AE23D41C();
  if (*&v8[v179] == v240)
  {
LABEL_87:
    sub_1ADDCEDE0(v8, &qword_1EB5BB4C8, &unk_1AE24C640);
    (*(v207 + 8))(v218, v208);
LABEL_92:

    return;
  }

  sub_1AE213940(&qword_1EB5BB4E0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B38]);
  while (1)
  {
    sub_1AE23CBDC();
    v180 = sub_1AE23D51C();
    v182 = *v181;
    v183 = v181[1];
    v180(&v240, 0);
    if (!*v174)
    {
      break;
    }

    if (__OFSUB__(v183, v182))
    {
      __break(1u);
      goto LABEL_95;
    }

    [*(*v174 + qword_1ED96F258) removeObjectsInRange_];
    sub_1AE23D41C();
    if (*&v8[v179] == v240)
    {
      goto LABEL_87;
    }
  }

LABEL_101:
  __break(1u);
LABEL_102:
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1AE20ADC0(uint64_t a1)
{
  (*(*v1 + 88))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    sub_1AE23CBAC();
    return __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    return sub_1ADDCEDE0(&v4, &qword_1EB5BEA00, &qword_1AE25AA10);
  }
}

char *sub_1AE20B0E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 280);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = *(v3 + 296);
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v14, v6);
  result = (*(v10 + 48))(v9, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(v4 + 288) + 16) + 24))(a1, v5);
    (*(v10 + 8))(v9, v5);
    swift_allocObject();
    return sub_1ADDDA40C(v13);
  }

  return result;
}

void sub_1AE20B334(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 280);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  if (v2 == a1)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v19 = byte_1ED96F222;
    *a2 = word_1ED96F220;
    *(a2 + 2) = v19;
  }

  else
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = *(*v11 + 296);
      swift_beginAccess();
      (*(v8 + 16))(v10, v12 + v13, v7);
      v14 = *(v6 - 8);
      v15 = *(v14 + 48);
      if (v15(v10, 1, v6) == 1)
      {
        __break(1u);
      }

      else
      {
        v16 = *(*v2 + 296);
        swift_beginAccess();
        if (v15(v2 + v16, 1, v6) != 1)
        {
          v17 = *(*(v5 + 288) + 8);
          v18 = *(v17 + 8);

          v18(v10, v6, v17);
          swift_endAccess();

          (*(v14 + 8))(v10, v6);
          return;
        }
      }

      __break(1u);
    }

    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1AE23DA2C();

    v23[1] = 0xD00000000000001BLL;
    v23[2] = 0x80000001AE264250;
    v20 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v20);

    v21 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
    (*(*a1 + 88))(v24, v21);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v24);
    v22 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v22);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
  }
}

uint64_t sub_1AE20B70C(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  if (v1 == a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v26[0] = v3;
    v26[1] = a1;
    v14 = *(v3 + 296);
    swift_beginAccess();
    v27 = *(v6 + 16);
    v27(v11, v1 + v14, v5);
    v15 = *(v4 - 8);
    v16 = *(v15 + 48);
    if (v16(v11, 1, v4) == 1)
    {
      __break(1u);
    }

    else
    {
      a1 = v5;
      v17 = *(*v13 + 296);
      swift_beginAccess();
      v27(v8, (v13 + v17), a1);
      if (v16(v8, 1, v4) != 1)
      {
        v18 = *(v26[0] + 288);
        v19 = *(v18 + 64);

        v20 = v19(v8, v4, v18);

        v21 = *(v15 + 8);
        v21(v8, v4);
        v21(v11, v4);
        return v20;
      }
    }

    __break(1u);
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  v28 = 0xD00000000000001DLL;
  v29 = 0x80000001AE264230;
  v23 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v23);

  v24 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
  (*(*a1 + 88))(v30, v24);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v25 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v25);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

void sub_1AE20BAEC(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = *v3;
  v9 = *(*v3 + 280);
  v53 = sub_1AE23D7CC();
  v10 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v51 = *(*(v7 + 288) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v43 - v20;
  if (v3 == a1)
  {
    *a3 = 0u;
    *(a3 + 1) = 0u;
    return;
  }

  v50 = v12;
  v44 = v19;
  v45 = v18;
  v46 = AssociatedTypeWitness;
  v47 = a2;
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  v48 = a3;
  v49 = a1;
  v23 = *(v8 + 296);
  swift_beginAccess();
  a1 = *(v10 + 16);
  v24 = v53;
  (a1)(v15, &v3[v23], v53);
  v25 = *(v9 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v9) == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v27 = *(*v22 + 296);
  swift_beginAccess();
  v28 = v22 + v27;
  v29 = v50;
  (a1)(v50, v28, v24);
  v30 = v29;
  if (v26(v29, 1, v9) == 1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_1AE23DA2C();

    v54 = 0xD00000000000001DLL;
    v55 = 0x80000001AE264230;
    v40 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v40);

    v41 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
    (*(*a1 + 88))(v56, v41);
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v56);
    v42 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v42);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v31 = v51;
  v32 = *(v51 + 40);

  v33 = v52;
  v32(v30, v47, v9, v31);
  v34 = *(v25 + 8);
  v34(v30, v9);
  v34(v15, v9);
  v35 = v46;
  v36 = *(v46 - 8);
  v37 = (*(v36 + 48))(v33, 1, v46);
  v38 = v48;
  if (v37 == 1)
  {

    (*(v44 + 8))(v33, v45);
    *v38 = 0u;
    *(v38 + 1) = 0u;
  }

  else
  {
    v48[3] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    (*(v36 + 32))(boxed_opaque_existential_1, v33, v35);
  }
}

uint64_t sub_1AE20C044(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  if (v1 == a1)
  {
    v20 = 0;
    return v20 & 1;
  }

  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v26[0] = v3;
    v26[1] = a1;
    v14 = *(v3 + 296);
    swift_beginAccess();
    v27 = *(v6 + 16);
    v27(v11, v1 + v14, v5);
    v15 = *(v4 - 8);
    v16 = *(v15 + 48);
    if (v16(v11, 1, v4) == 1)
    {
      __break(1u);
    }

    else
    {
      a1 = v5;
      v17 = *(*v13 + 296);
      swift_beginAccess();
      v27(v8, (v13 + v17), a1);
      if (v16(v8, 1, v4) != 1)
      {
        v18 = *(v26[0] + 288);
        v19 = *(v18 + 88);

        v20 = v19(v8, v4, v18);

        v21 = *(v15 + 8);
        v21(v8, v4);
        v21(v11, v4);
        return v20 & 1;
      }
    }

    __break(1u);
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  v28 = 0xD00000000000001DLL;
  v29 = 0x80000001AE264230;
  v23 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v23);

  v24 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
  (*(*a1 + 88))(v30, v24);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v25 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v25);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

void sub_1AE20C420(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 280);
  v41 = sub_1AE23D7CC();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v36 = *(v4 + 288);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v33 - v14;
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v40 = a1;
  v17 = *(v5 + 296);
  swift_beginAccess();
  v18 = *(v7 + 16);
  v18(v12, &v2[v17], v41);
  v19 = *(v6 - 8);
  v20 = *(v19 + 48);
  if (v20(v12, 1, v6) == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  a1 = *(*v16 + 296);
  swift_beginAccess();
  v18(v9, (v16 + a1), v41);
  if (v20(v9, 1, v6) == 1)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_1AE23DA2C();

    v42 = 0xD00000000000001DLL;
    v43 = 0x80000001AE264230;
    v30 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v30);

    v31 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
    (*(*a1 + 88))(v44, v31);
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v44);
    v32 = sub_1AE23E40C();
    MEMORY[0x1B26FB670](v32);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v21 = v36;
  v22 = *(v36 + 72);

  v23 = v37;
  v22(v9, v6, v21);
  v24 = *(v19 + 8);
  v24(v9, v6);
  v24(v12, v6);
  v25 = AssociatedTypeWitness;
  v26 = *(AssociatedTypeWitness - 8);
  v27 = (*(v26 + 48))(v23, 1, AssociatedTypeWitness);
  v28 = v39;
  if (v27 == 1)
  {

    (*(v34 + 8))(v23, v35);
    *v28 = 0u;
    *(v28 + 16) = 0u;
  }

  else
  {
    *(v39 + 24) = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(v26 + 32))(boxed_opaque_existential_1, v23, v25);
  }
}

uint64_t sub_1AE20C93C(uint64_t a1)
{
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  sub_1ADDCEE40(a1, &v13, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v14)
  {
    return sub_1ADDCEDE0(&v13, &qword_1EB5BAA00, &qword_1AE2587A0);
  }

  sub_1ADDEE390(&v13, v15);
  sub_1ADDE4E28(v15, &v13);
  swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v9, 0, 1, AssociatedTypeWitness);
  v10 = *(*v1 + 296);
  swift_beginAccess();
  result = (*(*(v4 - 8) + 48))(v1 + v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 80))(v9, v4, v3);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_1AE20CBA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 296);
  swift_beginAccess();
  v6 = *(v3 + 280);
  result = (*(*(v6 - 8) + 48))(v1 + v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(v4 + 288) + 16) + 64))(a1, v6);
    return swift_endAccess();
  }

  return result;
}

char *sub_1AE20CCB8()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = sub_1AE23D7CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *(v1 + 296);
  swift_beginAccess();
  (*(v4 + 16))(v6, v0 + v7, v3);
  result = (*(*(v2 - 8) + 48))(v6, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_allocObject();
    return sub_1ADDDA40C(v6);
  }

  return result;
}

uint64_t sub_1AE20CE4C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = *(*v2 + 280);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  v9 = *(*(*(v8 + 288) + 16) + 8);
  v10 = *(v9 + 8);

  result = v10(v11, v5, v9);
  if (!v3)
  {
    return sub_1ADDD9FE4(v7, v5, a2);
  }

  return result;
}

uint64_t sub_1AE20CF40()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 296);
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v8, v4);
  v9 = *(v3 - 8);
  result = (*(v9 + 48))(v7, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(*(v2 + 288) + 16) + 8) + 24))(v3);
    return (*(v9 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1AE20D118()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *(v1 + 296);
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v8, v4);
  v9 = *(v3 - 8);
  result = (*(v9 + 48))(v7, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = (*(*(*(*(v2 + 288) + 16) + 8) + 32))(v3);
    (*(v9 + 8))(v7, v3);
    return v11;
  }

  return result;
}

void sub_1AE20D2F0(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a1;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 280);
  v9 = sub_1AE23D7CC();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = *(v6 + 288);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v17);
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  if (v3 == a2)
  {
    v40 = 0;
LABEL_10:
    *a3 = v40;
    return;
  }

  v56 = v11;
  v50 = v20;
  v51 = v24;
  v47 = v23;
  v48 = v22;
  v49 = &v47 - v21;
  v52 = v15;
  v53 = AssociatedTypeWitness;
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v54 = a3;
    v55 = a2;
    v27 = *(v7 + 296);
    swift_beginAccess();
    v28 = v60;
    v29 = *(v59 + 16);
    v29(v14, &v3[v27], v60);
    v30 = *(v8 - 8);
    a2 = *(v30 + 48);
    if ((a2)(v14, 1, v8) == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = *(*v26 + 296);
      swift_beginAccess();
      v32 = (v26 + v31);
      v33 = v56;
      v29(v56, v32, v28);
      if ((a2)(v33, 1, v8) != 1)
      {
        v34 = v52;
        v35 = *(v52 + 96);

        v36 = v51;
        v35(v58, v33, v8, v34);
        v37 = *(v30 + 8);
        v37(v33, v8);
        v37(v14, v8);
        v38 = v57;
        v39 = v53;
        if ((*(v57 + 48))(v36, 1, v53) == 1)
        {

          (*(v48 + 8))(v36, v50);
          v40 = 0;
        }

        else
        {
          v41 = v49;
          (*(v38 + 32))(v49, v36, v39);
          type metadata accessor for AnyCRDT.MergeableDeltaBoxHelper(0, v8, v34, v42);
          v43 = v47;
          (*(v38 + 16))(v47, v41, v39);
          swift_allocObject();
          v40 = sub_1AE20F3C0(v43);

          (*(v38 + 8))(v41, v39);
        }

        a3 = v54;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  v61 = 0xD00000000000001DLL;
  v62 = 0x80000001AE264230;
  v44 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v44);

  v45 = MEMORY[0x1B26FB670](2108192, 0xE300000000000000);
  (*(*a2 + 88))(v63, v45);
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v63);
  v46 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v46);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1AE20D97C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = sub_1AE23D7CC();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v26 = *(v4 + 288);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(**a1 + 80))(v29, v16);
  v19 = swift_dynamicCast();
  v20 = *(v14 + 56);
  if (!v19)
  {
    v20(v13, 1, 1, AssociatedTypeWitness);
    (*(v11 + 8))(v13, v10);
    v24 = 0;
    return v24 & 1;
  }

  v20(v13, 0, 1, AssociatedTypeWitness);
  (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
  v21 = *(*v2 + 296);
  swift_beginAccess();
  (*(v27 + 16))(v8, v2 + v21, v28);
  v22 = *(v5 - 8);
  result = (*(v22 + 48))(v8, 1, v5);
  if (result != 1)
  {
    v24 = (*(v26 + 104))(v18, v5);
    (*(v14 + 8))(v18, AssociatedTypeWitness);
    (*(v22 + 8))(v8, v5);
    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE20DD30(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 288);
  v5 = *(*v2 + 280);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  (*(**a1 + 80))(v21, v13);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (!v16)
  {
    v17(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    v20 = 0;
    return v20 & 1;
  }

  v17(v10, 0, 1, AssociatedTypeWitness);
  (*(v11 + 32))(v15, v10, AssociatedTypeWitness);
  v18 = *(*v2 + 296);
  swift_beginAccess();
  result = (*(*(v5 - 8) + 48))(v2 + v18, 1, v5);
  if (result != 1)
  {
    v20 = (*(v4 + 112))(v15, v5, v4);
    swift_endAccess();
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE20E030@<X0>(uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = *(*v2 + 288);
  v4 = *(*v2 + 280);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 8);

  v13 = v23;
  result = v11(v12, AssociatedTypeWitness, v10);
  if (!v13)
  {
    type metadata accessor for AnyCRDT.MergeableDeltaBoxHelper(0, v4, v3, v15);
    v17 = v20;
    v16 = v21;
    (*(v21 + 16))(v20, v9, AssociatedTypeWitness);
    swift_allocObject();
    v18 = sub_1AE20F3C0(v17);
    result = (*(v16 + 8))(v9, AssociatedTypeWitness);
    *v22 = v18;
  }

  return result;
}

uint64_t sub_1AE20E238(uint64_t a1)
{
  v2 = *v1;
  v44 = *(*(*v1 + 280) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v35 - v3;
  v43 = v5;
  v6 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v35 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    v26 = 0;
    return v26 & 1;
  }

  v18 = v17;
  v38 = v2;
  v39 = v8;
  v37 = v4;
  v19 = *(v2 + 296);
  swift_beginAccess();
  v41 = v11;
  v20 = *(v11 + 16);
  v20(v16, &v1[v19], v6);
  v21 = *(*v18 + 296);
  swift_beginAccess();
  v40 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v20(v10, v16, v6);
  v20(&v10[v22], (v18 + v21), v6);
  v23 = v43;
  v24 = *(v44 + 48);
  if (v24(v10, 1, v43) != 1)
  {
    v36 = v16;
    v28 = v41;
    v27 = v42;
    v20(v42, v10, v6);
    if (v24(&v10[v22], 1, v23) != 1)
    {
      v29 = v23;
      v30 = v44;
      v31 = v37;
      (*(v44 + 32))(v37, &v10[v22], v29);
      v26 = sub_1AE23CCBC();
      v32 = *(v30 + 8);
      v32(v31, v29);
      v33 = *(v28 + 8);
      v33(v36, v6);
      v32(v27, v29);
      v33(v10, v6);
      return v26 & 1;
    }

    (*(v28 + 8))(v36, v6);
    (*(v44 + 8))(v27, v23);
    goto LABEL_8;
  }

  v25 = *(v41 + 8);
  v25(v16, v6);
  if (v24(&v10[v22], 1, v23) != 1)
  {
LABEL_8:
    (*(v39 + 8))(v10, v40);
    v26 = 0;
    return v26 & 1;
  }

  v25(v10, v6);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1AE20E6CC()
{
  v1 = *(*v0 + 296);
  v2 = sub_1AE23D7CC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1AE20E758()
{
  v1 = *(*v0 + 296);
  v2 = sub_1AE23D7CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AnyCRDT.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 80);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

void *AnyCRDT.merge(_:)(uint64_t *a1)
{
  v2 = *a1;
  result = *v1;
  if (*v1 == v2)
  {
    if (qword_1ED9670C0 != -1)
    {

      return swift_once();
    }
  }

  else
  {
    v4 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = (*(*v6 + 168))();

      *v4 = v6;
    }

    return (*(*v6 + 96))(&v7, v2);
  }

  return result;
}

uint64_t sub_1AE20EB48(void *a1)
{
  v2 = *v1;
  if (v2 == *a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    return (*(*v2 + 104))();
  }
}

uint64_t sub_1AE20EBEC(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = (*(*v5 + 168))();

    *v2 = v5;
  }

  return (*(*v5 + 144))(a1);
}

uint64_t sub_1AE20ED18(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 224))(&v4) & 1;
}

uint64_t sub_1AE20ED74(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = (*(*v5 + 168))();

    *v2 = v5;
  }

  v7 = v3;
  return (*(*v5 + 232))(&v7) & 1;
}

uint64_t sub_1AE20EF34@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_1AE20EF80@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 80);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

uint64_t sub_1AE20F2F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a1[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(boxed_opaque_existential_1, v1 + v3, AssociatedTypeWitness);
}

uint64_t sub_1AE20F3C0(uint64_t a1)
{
  v3 = *(*v1 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t sub_1AE20F478(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 16);
  v4 = swift_checkMetadataState();
  return v3(a1, v4, v2);
}

uint64_t sub_1AE20F570(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 32);
  v4 = swift_checkMetadataState();
  return v3(a1, v4, AssociatedConformanceWitness);
}

uint64_t sub_1AE20F660()
{
  v1 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t sub_1AE20F710()
{
  v1 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1AE20F7B8()
{
  sub_1AE20F710();

  return swift_deallocClassInstance();
}

uint64_t sub_1AE20FE10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 224);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v11, v4);
  (*(*(*(v3 + 208) + 8) + 24))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return sub_1ADDF4784(v10);
}

uint64_t sub_1AE20FFCC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 224);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(*(v3 + 208) + 8) + 48))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AE210124(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 224);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(*(*(v2 + 208) + 8) + 56))(v3);
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1AE210274(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(*(v3 + 208) + 8) + 64))(a1, *(v3 + 200));
  return swift_endAccess();
}

uint64_t sub_1AE210320(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 224);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  return sub_1ADDF4784(v5);
}

uint64_t sub_1AE21044C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 224);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(*(*(v3 + 208) + 8) + 8) + 16))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AE2105B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 224);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  (*(*(*(*(v2 + 208) + 8) + 8) + 24))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AE210714(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  v7 = *(v6 + 224);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    v8 = sub_1AE23DD9C();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    return v8;
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1ADDCEDE0(&v11, &unk_1EB5BEB20, &qword_1AE24C510);
    return 0x6C61565243796E41;
  }
}

uint64_t sub_1AE2108B4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  v7 = *(v6 + 224);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE68, &unk_1AE24FCD0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    v8 = sub_1AE23E02C();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    return v8;
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1ADDCEDE0(&v11, qword_1EB5BBE70, &unk_1AE25AA00);
    return 0x6C61565243796E41;
  }
}

uint64_t AnyCRValue.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 104);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

void AnyCRValue.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(**v1 + 128);

  LOBYTE(v4) = v4(v5);

  if (v4)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = (*(*v7 + 144))();

      *v2 = v7;
    }

    (*(*v7 + 136))(a1);
  }
}

void sub_1AE210D00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    v18 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    v20 = 0xD000000000000017;
LABEL_16:
    *v19 = v20;
    *(v19 + 8) = v18;
    *(v19 + 16) = 0;
    swift_willThrow();

    return;
  }

  v7 = v4;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  if (*(a1 + 57) < 3u || ((v12 = *(v6 + 16), (~v12 & 0xF000000000000007) != 0) ? (v13 = ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 15) : (v13 = 0), !v13))
  {
    v14 = *(v6 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 7)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1ED966F48;
    }

    swift_beginAccess();
    if (v15[8])
    {
      v16 = *(v6 + 16);
      if ((~v16 & 0xF000000000000007) != 0 && ((v16 >> 59) & 0x1E | (v16 >> 2) & 1) == 7)
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v17 = &unk_1ED966F48;
      }

      swift_beginAccess();
      v22 = v17[8];
      v21 = v17[9];
      v23 = v17[10];
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      if (v22)
      {
        v25 = v21;
      }

      else
      {
        v25 = 0;
      }

      if (v22)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0xC000000000000000;
      }

      swift_retain_n();
      sub_1ADE56F74(v22, v21, v23);
      sub_1ADDE94BC(v24, v25, v26, &v41);
      if (!v7)
      {
        v27 = v41;
        v28 = *(a1 + 16);
        if (v28)
        {
LABEL_29:
          v41 = v27;
          v29 = *(*v28 + 200);
          v39 = v27;

          v30 = sub_1ADDD86D8(v39, *(&v39 + 1));
          v33 = sub_1ADF4ADD8(v30, v31, v32);
          v29(&type metadata for AnyCRDT, &v41, a1, 1, &type metadata for AnyCRDT, v33);
          sub_1ADDCC35C(v41, *(&v41 + 1));
LABEL_40:

          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v34 = swift_retain_n();
      CRKeyPath.init(from:)(v34, v40);
      if (!v4)
      {
        v27 = *v40;
        v28 = *(a1 + 16);
        if (v28)
        {
          goto LABEL_29;
        }

        goto LABEL_39;
      }
    }

    return;
  }

  v35 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v36 = *(a1 + 40);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = v35 >= v37;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v18 = 0x80000001AE25FC60;
    sub_1ADE42E40(inited, v10, v11);
    swift_allocError();
    v20 = 0xD000000000000013;
    goto LABEL_16;
  }

  v39 = *(v36 + 16 * v35 + 32);
  sub_1ADDD86D8(*(v36 + 16 * v35 + 32), *(v36 + 16 * v35 + 40));
LABEL_41:

  *a4 = v39;
}

uint64_t AnyCRValue.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  (*(*v1 + 88))(v3);
  return sub_1AE23E34C();
}

uint64_t sub_1AE211204(uint64_t a1)
{
  v2 = *v1;
  sub_1AE23E31C();
  (*(*v2 + 88))(v4);
  return sub_1AE23E34C();
}

uint64_t sub_1AE211264(uint64_t a1)
{
  (*(**v1 + 80))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1AE23CBAC();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1AE2113C0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t sub_1AE21140C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 104);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

void *sub_1AE2115D8(char *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  v12 = sub_1AE23BFEC();
  v13 = *(v12 - 1);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v20 = *a1;
  v21 = a2[3];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v20 >= v22;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    sub_1ADE42E40(v14, v15, v16);
    swift_allocError();
    *v24 = 0xD000000000000013;
    *(v24 + 8) = 0x80000001AE25FD70;
    *(v24 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v56 = a4;
    v57 = a3;
    (*(v13 + 16))(v19, v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20, v12, v17);
    type metadata accessor for ReplicaState(0);
    v25 = swift_allocObject();
    v58 = v4;
    v26 = v25;
    v27 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v28 = type metadata accessor for Replica(0);
    v29 = *(v28 - 8);
    v64 = a2;
    v30 = *(v29 + 56);
    v30(&v26[v27], 1, 1, v28);
    (*(v13 + 32))(&v26[OBJC_IVAR____TtC9Coherence12ReplicaState_identity], v19, v12);
    *&v26[OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter] = 0;
    *&v26[OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter] = 0;
    v30(v11, 1, 1, v28);
    v12 = v64;
    swift_beginAccess();
    sub_1ADF92F3C(v11, &v26[v27], &unk_1EB5B9E70, &unk_1AE240EC0);
    swift_endAccess();
    v31 = *(v59 + 3);
    if (v31)
    {
      v32 = *(v59 + 3);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    if (v31)
    {
      v33 = *(v59 + 4);
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v31, *(v59 + 4));

    v34 = v58;
    sub_1ADDD6748(v32, v33, v12, &v61);
    if (v34)
    {
    }

    else
    {
      v36 = *(&v61 + 1);
      v35 = v61;
      v37 = *(v59 + 1);
      v38 = *(v37 + 16);
      v39 = MEMORY[0x1E69E7CC0];
      if (v38)
      {
        v55 = *(&v61 + 1);
        v58 = v61;
        v59 = v26;
        v60[0] = MEMORY[0x1E69E7CC0];
        sub_1ADE6F234(0, v38, 0);
        v39 = v60[0];
        v40 = (v37 + 64);
        do
        {
          v41 = *(v40 - 3);
          v43 = *(v40 - 2);
          v42 = *(v40 - 1);
          v44 = *v40;
          v63[0] = *(v40 - 4);
          v63[1] = v41;
          v63[2] = v43;
          v63[3] = v42;
          v63[4] = v44;

          sub_1ADE42C78(v43, v42);

          sub_1AE211C08(v63, v64, &v61);

          sub_1ADE42CB8(v43, v42);

          v45 = v61;
          v46 = v62;
          v60[0] = v39;
          v48 = *(v39 + 16);
          v47 = *(v39 + 24);
          if (v48 >= v47 >> 1)
          {
            v54 = v61;
            sub_1ADE6F234((v47 > 1), v48 + 1, 1);
            v45 = v54;
            v39 = v60[0];
          }

          v40 += 5;
          *(v39 + 16) = v48 + 1;
          v49 = v39 + 24 * v48;
          *(v49 + 32) = v45;
          *(v49 + 48) = v46;
          --v38;
        }

        while (v38);
        v35 = v58;
        v26 = v59;
        v36 = v55;
      }

      if (v57)
      {
        v57(v39);
      }

      v50 = MEMORY[0x1E69E7CC8];
      if (*(v39 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB840, &qword_1AE25AA60);
        v51 = sub_1AE23DCDC();
      }

      else
      {
        v51 = MEMORY[0x1E69E7CC8];
      }

      *&v61 = v51;
      sub_1AE212DBC(v39, 1, &v61);
      v64 = v61;
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      sub_1AE23D6AC();
      v53 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEA20, &qword_1AE25AA68);
      v12 = swift_allocObject();
      v12[3] = v50;
      v12[4] = v50;
      v12[5] = v50;
      v12[6] = 0;
      v12[2] = v26;
      swift_beginAccess();
      v12[3] = v35;
      v12[4] = v36;

      swift_beginAccess();
      v12[5] = v64;
      v12[6] = v53;
    }
  }

  return v12;
}

void sub_1AE211C08(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  AnyCRValue.init(from:)(v8, &v19);
  if (v3)
  {
  }

  else
  {
    if (a1[1])
    {
      v9 = a1[1];
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v9 = swift_initStaticObject();
    }

    swift_allocObject();

    sub_1ADDE77B4(v9, a2);

    AnyCRDT.init(from:)(v10, &v18);
    v11 = v18;
    v12 = a1[2];
    v13 = a1[3];
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    if (v12)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v12, v13);
    sub_1ADDF4A24(v14, v15, a2);
    v17 = v16;

    *a3 = v19;
    a3[1] = v11;
    a3[2] = v17;
  }
}

void sub_1AE211E38(void *a1, char a2, void *a3)
{
  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_23;
  }

  LOBYTE(v7) = a2;
  v9 = a1[4];
  v8 = a1[5];

  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = *a3;
  v11 = sub_1ADF4A434(v9);
  v14 = v10[2];
  v15 = (v12 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v12;
  if (v10[3] < v17)
  {
    sub_1ADF6A1CC(v17, v7 & 1);
    v11 = sub_1ADF4A434(v9);
    if ((v18 & 1) == (v12 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v11 = sub_1AE23E27C();
    __break(1u);
  }

  if (v7)
  {
LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v3 = v11;
  sub_1ADF6FB38();
  v11 = v3;
  if (v18)
  {
LABEL_9:
    v3 = 0xD000000000000016;
    sub_1ADE42E40(v11, v12, v13);
    v19 = swift_allocError();
    *v20 = 0xD000000000000016;
    *(v20 + 8) = 0x80000001AE262900;
    *(v20 + 16) = 0;
    swift_willThrow();
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v8;
  v23 = v22[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v16)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](v3 + 5, 0x80000001AE260210);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](39, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v5 != 1)
  {
    v7 = a1 + 7;
    v3 = 1;
    while (v3 < a1[2])
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      if (!v9)
      {
        goto LABEL_23;
      }

      v25 = *a3;
      v11 = sub_1ADF4A434(v9);
      v26 = v25[2];
      v27 = (v12 & 1) == 0;
      v16 = __OFADD__(v26, v27);
      v28 = v26 + v27;
      if (v16)
      {
        goto LABEL_25;
      }

      v18 = v12;
      if (v25[3] < v28)
      {
        sub_1ADF6A1CC(v28, 1);
        v11 = sub_1ADF4A434(v9);
        if ((v18 & 1) != (v12 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v18)
      {
        goto LABEL_9;
      }

      v29 = *a3;
      *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
      *(v29[6] + 8 * v11) = v9;
      *(v29[7] + 8 * v11) = v8;
      v30 = v29[2];
      v16 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v16)
      {
        goto LABEL_26;
      }

      ++v3;
      v29[2] = v31;
      v7 += 2;
      if (v5 == v3)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_1AE2121C8(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA380, &qword_1AE2423B0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v50 - v14);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_22;
  }

  v50[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v53 = *(v13 + 72);
  v55 = a1;
  sub_1ADDCEE40(a1 + v17, v50 - v14, &qword_1EB5BA380, &qword_1AE2423B0);
  v59 = *v15;
  v18 = v59;
  v52 = v16;
  sub_1ADDD2198(v15 + v16, v10, &qword_1EB5BB830, &unk_1AE25AA50);
  v19 = *a3;
  v20 = sub_1ADF4A434(v18);
  v23 = v19[2];
  v24 = (v21 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v21;
  if (v19[3] < v26)
  {
    sub_1ADF6A484(v26, a2 & 1);
    v20 = sub_1ADF4A434(v18);
    if ((v27 & 1) != (v21 & 1))
    {
LABEL_5:
      sub_1AE23E27C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v20;
  sub_1ADF6FC9C();
  v20 = v31;
  if (v27)
  {
LABEL_9:
    sub_1ADE42E40(v20, v21, v22);
    v28 = swift_allocError();
    *v29 = 0xD00000000000001DLL;
    *(v29 + 8) = 0x80000001AE2618E0;
    *(v29 + 16) = 0;
    swift_willThrow();
    v58 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCEDE0(v10, &qword_1EB5BB830, &unk_1AE25AA50);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  *(v32[6] + 8 * v20) = v18;
  v33 = v32[7];
  v51 = *(v8 + 72);
  sub_1ADDD2198(v10, v33 + v51 * v20, &qword_1EB5BB830, &unk_1AE25AA50);
  v34 = v32[2];
  v25 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v25)
  {
    v32[2] = v35;
    v36 = v55;
    if (v54 == 1)
    {
LABEL_22:

      return;
    }

    v37 = v55 + v53 + v17;
    v38 = &qword_1EB5BB830;
    v39 = 1;
    while (v39 < *(v36 + 16))
    {
      sub_1ADDCEE40(v37, v15, &qword_1EB5BA380, &qword_1AE2423B0);
      v59 = *v15;
      v40 = v59;
      v41 = v38;
      sub_1ADDD2198(v15 + v52, v10, v38, &unk_1AE25AA50);
      v42 = *a3;
      v20 = sub_1ADF4A434(v40);
      v43 = v42[2];
      v44 = (v21 & 1) == 0;
      v25 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v25)
      {
        goto LABEL_23;
      }

      v46 = v21;
      if (v42[3] < v45)
      {
        sub_1ADF6A484(v45, 1);
        v20 = sub_1ADF4A434(v40);
        if ((v46 & 1) != (v21 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v46)
      {
        goto LABEL_9;
      }

      v47 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      *(v47[6] + 8 * v20) = v59;
      v38 = v41;
      sub_1ADDD2198(v10, v47[7] + v51 * v20, v41, &unk_1AE25AA50);
      v48 = v47[2];
      v25 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v39;
      v47[2] = v49;
      v37 += v53;
      v36 = v55;
      if (v54 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

void sub_1AE21273C(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB830, &unk_1AE25AA50);
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v50 - v8;
  v59 = sub_1AE23BFEC();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA3B0, &unk_1AE2423E0);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v53 = *(a1 + 16);
  if (!v53)
  {
    goto LABEL_23;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v12 + 48);
  v16 = *(v56 + 80);
  v55 = a1;
  v17 = (v57 + 32);
  v51 = a1 + ((v16 + 32) & ~v16);
  sub_1ADDCEE40(v51, v14, &qword_1EB5BA3B0, &unk_1AE2423E0);
  v18 = *v17;
  (*v17)(v10, v14, v59);
  v52 = v15;
  sub_1ADDD2198(&v14[v15], v58, &qword_1EB5BB830, &unk_1AE25AA50);
  v19 = *a3;
  v20 = sub_1ADDDF300(v10);
  v23 = v19[2];
  v24 = (v21 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = v21;
  if (v19[3] < v26)
  {
    sub_1ADF6A810(v26, a2 & 1);
    v20 = sub_1ADDDF300(v10);
    if ((v27 & 1) != (v21 & 1))
    {
LABEL_6:
      sub_1AE23E27C();
      __break(1u);
      goto LABEL_23;
    }

LABEL_9:
    if (v27)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v31 = v20;
  sub_1ADF6FEF0();
  v20 = v31;
  if (v27)
  {
LABEL_10:
    sub_1ADE42E40(v20, v21, v22);
    v28 = swift_allocError();
    *v29 = 0xD00000000000001DLL;
    *(v29 + 8) = 0x80000001AE2618E0;
    *(v29 + 16) = 0;
    swift_willThrow();
    v62 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCEDE0(v58, &qword_1EB5BB830, &unk_1AE25AA50);
      (*(v57 + 8))(v10, v59);

      return;
    }

    goto LABEL_27;
  }

LABEL_13:
  v32 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v33 = v20;
  v18((v32[6] + *(v57 + 72) * v20), v10, v59);
  sub_1ADDD2198(v58, v32[7] + *(v54 + 72) * v33, &qword_1EB5BB830, &unk_1AE25AA50);
  v34 = v32[2];
  v25 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v25)
  {
    v32[2] = v35;
    if (v53 == 1)
    {
LABEL_23:

      return;
    }

    v36 = &qword_1EB5BB830;
    v37 = 1;
    while (v37 < *(v55 + 16))
    {
      sub_1ADDCEE40(v51 + *(v56 + 72) * v37, v14, &qword_1EB5BA3B0, &unk_1AE2423E0);
      v38 = *v17;
      (*v17)(v10, v14, v59);
      v39 = v36;
      sub_1ADDD2198(&v14[v52], v58, v36, &unk_1AE25AA50);
      v40 = *a3;
      v20 = sub_1ADDDF300(v10);
      v41 = v40[2];
      v42 = (v21 & 1) == 0;
      v25 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v25)
      {
        goto LABEL_25;
      }

      v44 = v21;
      if (v40[3] < v43)
      {
        sub_1ADF6A810(v43, 1);
        v20 = sub_1ADDDF300(v10);
        if ((v44 & 1) != (v21 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v44)
      {
        goto LABEL_10;
      }

      v45 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v46 = v20;
      v38((v45[6] + *(v57 + 72) * v20), v10, v59);
      v47 = v45[7] + *(v54 + 72) * v46;
      v36 = v39;
      sub_1ADDD2198(v58, v47, v39, &unk_1AE25AA50);
      v48 = v45[2];
      v25 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      ++v37;
      v45[2] = v49;
      if (v53 == v37)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

void sub_1AE212DBC(uint64_t a1, char a2, void *a3)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v32 = *(a1 + 40);
  v6 = *(a1 + 32);

  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *a3;
  v8 = sub_1ADF4A434(v6);
  v11 = v7[2];
  v12 = (v9 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v9;
  if (v7[3] < v14)
  {
    sub_1ADF6ACAC(v14, v5 & 1);
    v8 = sub_1ADF4A434(v6);
    if ((v15 & 1) == (v9 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v8 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v19 = v8;
  sub_1ADF7021C();
  v8 = v19;
  if (v15)
  {
LABEL_9:
    sub_1ADE42E40(v8, v9, v10);
    v16 = swift_allocError();
    *v17 = 0xD00000000000001DLL;
    *(v17 + 8) = 0x80000001AE2618E0;
    *(v17 + 16) = 0;
    swift_willThrow();
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  *(v20[6] + 8 * v8) = v6;
  *(v20[7] + 16 * v8) = v32;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](39, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v20[2] = v22;
  if (v31 != 1)
  {
    v5 = (a1 + 64);
    v23 = 1;
    while (v23 < *(a1 + 16))
    {
      v32 = *v5;
      v6 = *(v5 - 1);

      if (!v6)
      {
        goto LABEL_23;
      }

      v24 = *a3;
      v8 = sub_1ADF4A434(v6);
      v25 = v24[2];
      v26 = (v9 & 1) == 0;
      v13 = __OFADD__(v25, v26);
      v27 = v25 + v26;
      if (v13)
      {
        goto LABEL_25;
      }

      v15 = v9;
      if (v24[3] < v27)
      {
        sub_1ADF6ACAC(v27, 1);
        v8 = sub_1ADF4A434(v6);
        if ((v15 & 1) != (v9 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v15)
      {
        goto LABEL_9;
      }

      v28 = *a3;
      *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
      *(v28[6] + 8 * v8) = v6;
      *(v28[7] + 16 * v8) = v32;
      v29 = v28[2];
      v13 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v13)
      {
        goto LABEL_26;
      }

      ++v23;
      v28[2] = v30;
      v5 = (v5 + 24);
      if (v31 == v23)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1AE2131AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  (*(**a2 + 128))(v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1AE213254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  (*(**a2 + 112))(v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

double sub_1AE2132FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1AE21334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE213374(a1, a2, a3);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1AE213374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE978;
  if (!qword_1EB5BE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE978);
  }

  return result;
}

uint64_t sub_1AE2133EC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AE2134B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v6 = a1;
  v7 = *(a1 + 16);

  if (v7)
  {
    v8 = 0;
    v40 = a2 + 32;
    v41 = v6 + 32;
    v36 = v7 - 1;
    v9 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
    v37 = a3;
    v39 = v6;
LABEL_3:
    v38 = v9;
    while (v8 < *(v6 + 16))
    {
      if (v8 >= *(a2 + 16))
      {
        goto LABEL_22;
      }

      v11 = *(v41 + 8 * v8);
      v12 = *(v40 + 8 * v8);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v13 = v42;

      v14 = sub_1ADDE77B4(v12, v13);

      v16 = *(v14 + 32);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v11 >= v17;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {

        v30 = swift_bridgeObjectRelease_n();
        sub_1ADE42E40(v30, v31, v32);
        v33 = swift_allocError();
        *v34 = 0xD000000000000015;
        *(v34 + 8) = 0x80000001AE25FCF0;
        *(v34 + 16) = 0;
        v43 = v33;
        swift_willThrow();

        return;
      }

      v19 = v10;
      v20 = v16 + 16 * v11;
      v22 = *(v20 + 32);
      v21 = *(v20 + 40);
      v44[0] = v22;
      v44[1] = v21;
      MEMORY[0x1EEE9AC00](v15);
      v35[2] = v44;

      v23 = v43;
      if (sub_1ADDE8768(sub_1ADDE8834, v35, MEMORY[0x1E69E7CC0]))
      {
        v43 = v23;
        v27 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v27;
        sub_1ADDE88A8(v14, v22, v21, isUniquelyReferenced_nonNull_native);

        v9 = v44[0];
        v29 = v36 == v8++;
        v6 = v39;
        v10 = v19;
        if (v29)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }

      AnyCRDT.init(from:)(v24, v44);
      v43 = v23;
      if (v23)
      {

        swift_bridgeObjectRelease_n();

        return;
      }

      ++v8;
      v25 = v44[0];
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v19;
      sub_1ADEBF524(v25, v22, v21, v26);

      v10 = v45;
      v6 = v39;
      if (v7 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_20:

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1AE21381C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AE23E00C() & 1;
  }
}

uint64_t sub_1AE213940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AE213988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id *sub_1AE213A10()
{
  [objc_opt_self() removeFilePresenter_];

  return v0;
}

uint64_t sub_1AE213A8C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  swift_weakInit();

  type metadata accessor for Capsule(0, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  type metadata accessor for _CRFileSyncManager.CRSyncPublisher(0, v1, v2, v4);
  swift_getWitnessTable();
  return sub_1AE23C7EC();
}

double sub_1AE213BD4(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1AE23C88C();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C8CC();
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v28 = *a1;
  v29 = v11;
  v30 = *(a1 + 4);
  v19[1] = v2[4];
  v12 = swift_allocObject();
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 16) = v2;
  *(v12 + 40) = v13;
  *(v12 + 56) = *(a1 + 4);
  v26 = sub_1AE21D278;
  v27 = v12;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v25 = sub_1ADDD2200;
  *(&v25 + 1) = &block_descriptor_135;
  v14 = _Block_copy(&aBlock);

  v19[0] = *(v4 + 80);
  v15 = *(v4 + 88);
  v17 = type metadata accessor for Capsule(0, v19[0], v15, v16);
  (*(*(v17 - 8) + 16))(v23, &v28, v17);
  sub_1AE23C8AC();
  v23[0] = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v10, v7, v14);
  _Block_release(v14);
  (*(v22 + 8))(v7, v5);
  (*(v20 + 8))(v10, v21);

  aBlock = v28;
  v25 = v29;
  v26 = v30;
  return sub_1AE214228(&aBlock, v19[0], v15);
}

double sub_1AE213F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23C88C();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AE23C8CC();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  aBlock = *a1;
  v22 = v13;
  v23 = v12;
  sub_1AE213BD4(&aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v23 = sub_1AE21D270;
  v24 = v14;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_1ADDD2200;
  *(&v22 + 1) = &block_descriptor_123;
  v15 = _Block_copy(&aBlock);

  sub_1AE23C8AC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v11, v8, v15);
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);

  return result;
}

double sub_1AE214228(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1AE23C88C();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AE23C8CC();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v28 = *a1;
  v29 = v14;
  v30 = *(a1 + 4);
  v23 = a2;
  v24 = a3;
  v25 = v4;
  sub_1AE23D6AC();
  if ((aBlock[0] & 1) == 0)
  {
    v16 = swift_allocObject();
    v17 = v29;
    *(v16 + 40) = v28;
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    *(v16 + 32) = v4;
    *(v16 + 56) = v17;
    *(v16 + 72) = v30;
    aBlock[4] = sub_1AE21D234;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_107;
    v18 = _Block_copy(aBlock);

    v20 = type metadata accessor for Capsule(0, a2, a3, v19);
    (*(*(v20 - 8) + 16))(v26, &v28, v20);
    sub_1AE23C8AC();
    v26[0] = MEMORY[0x1E69E7CC0];
    sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v13, v10, v18);
    _Block_release(v18);
    (*(v22 + 8))(v10, v8);
    (*(v11 + 8))(v13, v21);
  }

  return result;
}

uint64_t sub_1AE2145AC(uint64_t a1, double a2)
{
  v4 = sub_1AE23BC1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 448))(a1, v10);
  v13 = *MEMORY[0x1E695DB58];
  sub_1AE23BD6C();
  v14 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v15 = sub_1AE23CCDC();

  v16 = [v14 fileExistsAtPath_];

  if (!v16)
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BEB08, &qword_1AE25AE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v13;
  v18 = v13;
  sub_1ADF7E828(inited);
  swift_setDeallocating();
  sub_1AE21CF9C(inited + 32);
  sub_1AE23BCCC();

  v20 = sub_1AE23BBEC();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v12, v8);
  if (!v20)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void sub_1AE214968(void *a1)
{
  v2 = v1;
  v32 = *v1;
  v4 = sub_1AE23C88C();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1AE23C8CC();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23C89C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[6];
  if (v11)
  {
    v12 = v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AE241900;
    aBlock = 0;
    v44 = 0xE000000000000000;
    sub_1AE23DA2C();

    aBlock = v12;
    v44 = v11;
    MEMORY[0x1B26FB670](0xD00000000000001ALL, 0x80000001AE2644A0);
    v14 = aBlock;
    v15 = v44;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    swift_getErrorValue();
    v16 = v40;
    v17 = v41;
    *(v13 + 88) = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 64));
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v16, v17);
    sub_1AE23E2EC();
  }

  v33 = a1;
  v19 = v2[3];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AE21CF84;
  *(v20 + 24) = v2;
  v47 = sub_1ADDF711C;
  v48 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1ADDF70CC;
  v46 = &block_descriptor_75_0;
  v21 = _Block_copy(&aBlock);

  dispatch_sync(v19, v21);
  _Block_release(v21);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F98], v7);
    v22 = sub_1AE23D6DC();
    (*(v8 + 8))(v10, v7);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v25 = v32;
    v26 = v33;
    v24[2] = *(v32 + 80);
    v24[3] = *(v25 + 88);
    v24[4] = v23;
    v24[5] = v26;
    v47 = sub_1AE21CF90;
    v48 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1ADDD2200;
    v46 = &block_descriptor_84;
    v27 = _Block_copy(&aBlock);

    v28 = v26;
    v29 = v34;
    sub_1AE23C8AC();
    v42 = MEMORY[0x1E69E7CC0];
    sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v30 = v36;
    v31 = v39;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v29, v30, v27);
    _Block_release(v27);

    (*(v38 + 8))(v30, v31);
    (*(v35 + 8))(v29, v37);
  }
}

void sub_1AE214F98(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = v4;
  v9 = sub_1AE2155C8(a1, a3, a2, 0, a4);
  if (!v5 && (v9 & 1) != 0)
  {
    v10 = v4[6];
    if (v10)
    {
      v11 = v6[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1AE2418F0;

      MEMORY[0x1B26FB670](0x206574697257203ALL, 0xEC000000656C6966);
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 32) = v11;
      *(v12 + 40) = v10;
      sub_1AE23E2EC();
    }

    (*(*v6 + 496))(a1, a3);
    v14 = sub_1AE2145AC(a1, v13);
    v15 = v6[10];
    v6[10] = v14;
  }
}

void sub_1AE2150FC()
{
  v1 = v0;
  v36 = *v0;
  v2 = sub_1AE23BF4C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = v0[2];
  v12 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v13 = *(v5 + 16);
  v13(v10, v11 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v4);
  v35 = sub_1AE23BD1C();
  v14 = sub_1AE23BD1C();
  v13(v7, v10, v4);
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v36;
  v17[2] = *(v36 + 80);
  v17[3] = *(v18 + 88);
  v17[4] = v1;
  v36 = v5;
  v19 = v17 + v15;
  v20 = v4;
  (*(v5 + 32))(v19, v7, v4);
  *(v17 + v16) = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AE21CED4;
  *(v21 + 24) = v17;
  v41 = sub_1AE21D398;
  v42 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1AE21A01C;
  v40 = &block_descriptor_69;
  v22 = _Block_copy(&aBlock);

  v23 = v12;

  v24 = v35;
  [v23 coordinateReadingItemAtURL:v35 options:0 writingItemAtURL:v14 options:0 error:0 byAccessor:v22];

  _Block_release(v22);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v25 = v1[6];
    if (v25)
    {
      v26 = v1[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AE2418F0;
      aBlock = 0;
      v38 = 0xE000000000000000;
      MEMORY[0x1B26FB670](v26, v25);
      MEMORY[0x1B26FB670](0x206574697257203ALL, 0xE800000000000000);
      v28 = v32;
      sub_1AE23BF3C();
      sub_1AE23BF1C();
      (*(v33 + 8))(v28, v34);
      sub_1AE23D2AC();
      v29 = aBlock;
      v30 = v38;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 32) = v29;
      *(v27 + 40) = v30;
      sub_1AE23E2EC();

      (*(v36 + 8))(v10, v20);
    }

    else
    {
      (*(v36 + 8))(v10, v20);
    }
  }
}

uint64_t sub_1AE2155C8(uint64_t a1, uint64_t a2, char a3, char a4, __n128 a5)
{
  v6 = v5;
  LOBYTE(v8) = a3;
  v50 = *MEMORY[0x1E69E9840];
  v10 = v5[5];
  v11 = v5[6];
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AE2418F0;
    sub_1AE23DA2C();

    v48 = v10;
    v49 = v11;
    MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE264480);
    if (a4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1B26FB670](v13, v14);

    v15 = v48;
    v16 = v49;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    sub_1AE23E2EC();
  }

  if ((a4 & 1) == 0)
  {
    v17 = sub_1AE2145AC(a1, a5.n128_f64[0]);
    if (v17)
    {
      v18 = v5[10];
      if (v18)
      {
        sub_1ADDEE524(0, &qword_1ED966B40, 0x1E69E58C0);
        v19 = v18;
        v20 = sub_1AE23D78C();

        if (v20)
        {
          if (v11)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_1AE2418F0;
            sub_1AE23DA2C();

            v48 = v10;
            v49 = v11;
            MEMORY[0x1B26FB670](0xD000000000000022, 0x80000001AE264450);
            if (v8)
            {
              v22 = 1702195828;
            }

            else
            {
              v22 = 0x65736C6166;
            }

            if (v8)
            {
              v23 = 0xE400000000000000;
            }

            else
            {
              v23 = 0xE500000000000000;
            }

            MEMORY[0x1B26FB670](v22, v23);

            v24 = v48;
            v25 = v49;
            *(v21 + 56) = MEMORY[0x1E69E6158];
            *(v21 + 32) = v24;
            *(v21 + 40) = v25;
            sub_1AE23E2EC();
          }

          return v8 & 1;
        }
      }
    }

    v26 = v6[10];
    v6[10] = v17;
  }

  if ((*(*v6 + 368))(a5))
  {
    v27 = [objc_opt_self() defaultManager];
    sub_1AE23BDAC();
    v28 = sub_1AE23CCDC();

    v48 = 0;
    v29 = [v27 contentsOfDirectoryAtPath:v28 error:&v48];

    v8 = v48;
    if (!v29)
    {
      v41 = v48;
      sub_1AE23BC9C();

      swift_willThrow();
      return v8 & 1;
    }

    v30 = sub_1AE23CFDC();
    v31 = v8;

    v32 = *(v30 + 16);

    if (v32)
    {
      goto LABEL_26;
    }

LABEL_33:
    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  v34 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v35 = sub_1AE23CCDC();

  v47 = 0;
  v36 = [v34 attributesOfItemAtPath:v35 error:&v47];

  v8 = v47;
  if (!v36)
  {
    v42 = v47;
    v43 = sub_1AE23BC9C();

    swift_willThrow();
    goto LABEL_39;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1ADDCEFC8(&unk_1ED9664B0, type metadata accessor for FileAttributeKey, &unk_1AE241228);
  v37 = sub_1AE23CA0C();
  v38 = v8;

  if (!*(v37 + 16) || (v39 = sub_1ADDF1D10(*MEMORY[0x1E696A3B8]), (v40 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_1ADDE4E28(*(v37 + 56) + 32 * v39, &v48);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_26:
  v33 = (*(*v6 + 504))(a1, a2, a4 & 1);
  if (!v46)
  {
    LOBYTE(v8) = v33;
  }

  return v8 & 1;
}

void *sub_1AE215B78(uint64_t *a1)
{
  v2 = *a1;
  v32 = a1[2];
  v33 = a1[1];
  v31 = a1[3];
  v3 = a1[4];
  v4 = *v1;
  v30 = *(*v1 + 264);
  v6 = v30(&v40);
  if (*(v7 + 32) != 1)
  {
    v8 = v2;
    v9 = v1[9];
    type metadata accessor for Capsule(0, *(v4 + 80), *(v4 + 88), v5);
    v10 = v9;
    v2 = v8;
    Capsule.finalizeTimestamps(_:)(v10);
  }

  v11 = v6(&v40, 0);
  v12 = *(*v1 + 248);
  v12(&v40, v11);
  if (v42 == 1)
  {
    v40.n128_u64[0] = v2;
    v40.n128_u64[1] = v33;
    *&v41 = v32;
    *(&v41 + 1) = v31;
    v42 = v3;
    v13 = *(*v1 + 256);
    sub_1ADDD86D8(v2, v33);
    sub_1ADDD86D8(v32, v31);

    v13(&v40);
LABEL_9:
    sub_1AE215ECC();
    goto LABEL_10;
  }

  v14 = sub_1ADE92284(v40.n128_i64[0], v40.n128_u64[1], v41, *(&v41 + 1), v42);
  v29 = v2;
  v40.n128_u64[0] = v2;
  v40.n128_u64[1] = v33;
  *&v41 = v32;
  *(&v41 + 1) = v31;
  v42 = v3;
  result = (v12)(&v37, v14);
  if (v39 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v34 = v37;
  v35 = v38;
  v36 = v39;
  v27 = *(v4 + 88);
  v28 = *(v4 + 80);
  v17 = type metadata accessor for Capsule(0, v28, v27, v16);
  v18 = Capsule.hasDelta(from:)(&v34);
  v19 = *(&v35 + 1);
  v20 = v35;
  sub_1ADDCC35C(v34.n128_i64[0], v34.n128_u64[1]);
  sub_1ADDCC35C(v20, v19);

  v2 = v29;
  if ((v18 & 1) == 0)
  {
LABEL_10:
    result = (v12)(&v40, v21);
    if (v42 != 1)
    {
      v37 = v40;
      v38 = v41;
      v39 = v42;
      v34.n128_u64[0] = v2;
      v34.n128_u64[1] = v33;
      *&v35 = v32;
      *(&v35 + 1) = v31;
      v36 = v3;
      type metadata accessor for Capsule(0, *(v4 + 80), *(v4 + 88), v24);
      v25 = Capsule.hasDelta(from:)(&v34);
      v26 = v38;
      sub_1ADDCC35C(v37.n128_i64[0], v37.n128_u64[1]);
      sub_1ADDCC35C(v26, *(&v26 + 1));

      return (v25 & 1);
    }

    __break(1u);
    goto LABEL_13;
  }

  v40.n128_u64[0] = v29;
  v40.n128_u64[1] = v33;
  *&v41 = v32;
  *(&v41 + 1) = v31;
  v42 = v3;
  result = v30(&v37);
  if (*(v22 + 32) != 1)
  {
    v23 = result;
    Capsule.merge<A>(_:)(&v40, v17, v28, v27);
    (v23)(&v37, 0);
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1AE215ECC()
{
  v1 = v0;
  v2 = *v0;
  v44 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v39 - v4;
  v5 = sub_1AE23C88C();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1AE23C8CC();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C89C();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[6];
  if (v13)
  {
    v14 = v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AE2418F0;
    aBlock = v14;
    v54 = v13;

    MEMORY[0x1B26FB670](0x657461647055203ALL, 0xE800000000000000);
    v16 = aBlock;
    v17 = v54;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    sub_1AE23E2EC();

    v2 = *v1;
  }

  (*(v2 + 248))(&aBlock, v10);
  v43 = v57;
  if (v57 == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v55;
    v18 = v56;
    v20 = aBlock;
    v21 = v54;
    swift_beginAccess();
    v22 = v1[13];
    sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
    (*(v9 + 104))(v12, *MEMORY[0x1E69E7F98], v8);

    v41 = sub_1AE23D6DC();
    (*(v9 + 8))(v12, v8);
    v23 = swift_allocObject();
    v24 = v44;
    v23[2] = *(v44 + 80);
    v23[3] = *(v24 + 88);
    v23[4] = v22;
    v42 = v20;
    v23[5] = v20;
    v23[6] = v21;
    v25 = v21;
    v39 = v19;
    v23[7] = v19;
    v23[8] = v18;
    v40 = v18;
    v26 = v43;
    v23[9] = v43;
    v57 = sub_1AE21CE04;
    v58 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1ADDD2200;
    v56 = &block_descriptor_45;
    v27 = _Block_copy(&aBlock);
    v28 = v20;
    v29 = v25;
    sub_1ADDD86D8(v28, v25);
    sub_1ADDD86D8(v19, v18);

    v30 = v45;
    sub_1AE23C8AC();
    v52 = MEMORY[0x1E69E7CC0];
    sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    v31 = v47;
    v32 = v50;
    sub_1AE23D8DC();
    v33 = v41;
    MEMORY[0x1B26FBF60](0, v30, v31, v27);
    _Block_release(v27);

    (*(v49 + 8))(v31, v32);
    (*(v46 + 8))(v30, v48);

    v34 = sub_1AE23D1BC();
    v35 = v51;
    (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v37 = v42;
    v36[4] = v1;
    v36[5] = v37;
    v38 = v39;
    v36[6] = v29;
    v36[7] = v38;
    v36[8] = v40;
    v36[9] = v26;

    sub_1AE217C10(0, 0, v35, &unk_1AE25ADF0, v36);
  }
}

void sub_1AE216504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v80 = a3;
  v86 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v69 - v13;
  v14 = sub_1AE23BDDC();
  v81 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v26 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v27 = sub_1AE23CCDC();

  v28 = [v26 fileExistsAtPath_];

  if (!v28)
  {
    return;
  }

  v29 = objc_opt_self();
  v73 = a1;
  v30 = sub_1AE23BD1C();
  v31 = [v29 otherVersionsOfItemAtURL_];

  if (v31)
  {
    v69 = v29;
    sub_1ADDEE524(0, &qword_1ED966B60, 0x1E696AC30);
    v32 = sub_1AE23CFDC();

    v34 = (v32 >> 62);
    if (v32 >> 62)
    {
      goto LABEL_38;
    }

    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      do
      {
        sub_1AE2155C8(v73, v82, 1, 0, v33);
        if (v3)
        {

          return;
        }

        if (v34)
        {
          v34 = sub_1AE23D97C();
          v72 = v14;
          if (!v34)
          {
LABEL_19:

            v39 = v83;
            v40 = v83[6];
            if (v40)
            {
              v41 = v83[5];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
              v42 = swift_allocObject();
              *(v42 + 16) = xmmword_1AE2418F0;
              v84 = 0;
              v85 = 0xE000000000000000;
              sub_1AE23DA2C();

              v84 = v41;
              v85 = v40;
              MEMORY[0x1B26FB670](0xD000000000000018, 0x80000001AE264430);
              v43 = v84;
              v44 = v85;
              *(v42 + 56) = MEMORY[0x1E69E6158];
              *(v42 + 32) = v43;
              *(v42 + 40) = v44;
              sub_1AE23E2EC();
            }

            v45 = v79;
            sub_1ADDCEE40(v80, v79, &qword_1EB5B9DC0, &qword_1AE240B90);
            v46 = v81;
            v47 = *(v81 + 48);
            v48 = v72;
            v49 = v47(v45, 1, v72);
            v50 = v78;
            if (v49 == 1)
            {
              (*(v46 + 16))(v78, v73, v48);
              if (v47(v45, 1, v48) != 1)
              {
                sub_1ADDCEDE0(v45, &qword_1EB5B9DC0, &qword_1AE240B90);
              }
            }

            else
            {
              (*(v46 + 32))(v78, v45, v48);
            }

            (*(*v39 + 496))(v50, v82);
            v51 = *(v46 + 8);
            v51(v50, v48);
            v52 = v75;
            sub_1ADDCEE40(v80, v75, &qword_1EB5B9DC0, &qword_1AE240B90);
            if (v47(v52, 1, v48) == 1)
            {
              v53 = *(v46 + 16);
              v54 = v74;
              v53(v74, v73, v48);
              if (v47(v52, 1, v48) != 1)
              {
                sub_1ADDCEDE0(v52, &qword_1EB5B9DC0, &qword_1AE240B90);
              }
            }

            else
            {
              v56 = *(v46 + 32);
              v54 = v74;
              v55 = v56(v74, v52, v48);
            }

            v57 = sub_1AE2145AC(v54, v55);
            v51(v54, v48);
            v58 = v39[10];
            v39[10] = v57;

            v59 = v77;
            sub_1ADDCEE40(v80, v77, &qword_1EB5B9DC0, &qword_1AE240B90);
            if (v47(v59, 1, v48) == 1)
            {
              v60 = v76;
              (*(v81 + 16))(v76, v73, v48);
              if (v47(v59, 1, v48) != 1)
              {
                sub_1ADDCEDE0(v59, &qword_1EB5B9DC0, &qword_1AE240B90);
              }
            }

            else
            {
              v60 = v76;
              (*(v81 + 32))(v76, v59, v48);
            }

            v61 = sub_1AE23BD7C();
            v51(v60, v48);
            if (v61)
            {
              v62 = sub_1AE23BD1C();
              v84 = 0;
              v63 = [v69 removeOtherVersionsOfItemAtURL:v62 error:&v84];

              if (v63)
              {
                v64 = v84;
              }

              else
              {
                v68 = v84;
                sub_1AE23BC9C();

                swift_willThrow();
                swift_unexpectedError();
                __break(1u);
              }
            }

            return;
          }
        }

        else
        {
          v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v72 = v14;
          if (!v34)
          {
            goto LABEL_19;
          }
        }

        v7 = 0;
        v70 = v32 & 0xFFFFFFFFFFFFFF8;
        v71 = v32 & 0xC000000000000001;
        v14 = (v81 + 8);
        while (1)
        {
          if (v71)
          {
            v35 = MEMORY[0x1B26FC360](v7, v32);
          }

          else
          {
            if (v7 >= *(v70 + 16))
            {
              goto LABEL_37;
            }

            v35 = *(v32 + 8 * v7 + 32);
          }

          v36 = v35;
          v16 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v37 = [v35 URL];
          sub_1AE23BD8C();

          sub_1AE2155C8(v25, v82, 0, 1, v38);
          (*v14)(v25, v72);

          ++v7;
          if (v16 == v34)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }

      while (sub_1AE23D97C() >= 1);
    }
  }

  sub_1ADDCEE40(v80, v7, &qword_1EB5B9DC0, &qword_1AE240B90);
  v65 = v81;
  v66 = *(v81 + 48);
  if (v66(v7, 1, v14) == 1)
  {
    (*(v65 + 16))(v16, v73, v14);
    if (v66(v7, 1, v14) != 1)
    {
      sub_1ADDCEDE0(v7, &qword_1EB5B9DC0, &qword_1AE240B90);
    }
  }

  else
  {
    v67.n128_f64[0] = (*(v65 + 32))(v16, v7, v14);
  }

  sub_1AE214F98(v16, 0, v82, v67);
  (*(v65 + 8))(v16, v14);
}

double sub_1AE216F5C(char a1)
{
  v3 = sub_1AE23C88C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AE23C8CC();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1AE21D19C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_100;
  v11 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);

  return result;
}

double sub_1AE21721C(uint64_t a1)
{
  v3 = *v1;
  v19 = sub_1AE23C88C();
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AE23C8CC();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v17 = v1[4];
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = *(v3 + 80);
  *(v13 + 3) = *(v3 + 88);
  *(v13 + 4) = v1;
  (*(v9 + 32))(&v13[v12], &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1AE21CDA0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_39;
  v14 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  v15 = v19;
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v7, v5, v14);
  _Block_release(v14);
  (*(v21 + 8))(v5, v15);
  (*(v18 + 8))(v7, v20);

  return result;
}

void sub_1AE2175D8()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v1 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v21[0] = 0;
  v2 = sub_1AE23BD1C();
  v3 = sub_1AE23BD1C();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v1;
  v4[4] = v21;
  v5 = swift_allocObject();
  v5[2] = sub_1AE21CD94;
  v5[3] = v4;
  v20[4] = sub_1AE21D398;
  v20[5] = v5;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1AE21A01C;
  v20[3] = &block_descriptor_33;
  v6 = _Block_copy(v20);

  v7 = v1;

  v20[0] = 0;
  [v7 coordinateReadingItemAtURL:v2 options:0 writingItemAtURL:v3 options:0 error:v20 byAccessor:v6];
  _Block_release(v6);

  v8 = v20[0];
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  v9 = v8;
  if (!v8)
  {
    v9 = v21[0];
    if (!v21[0])
    {

      goto LABEL_12;
    }

    v10 = v21[0];
  }

  v11 = sub_1AE23BC8C();
  v12 = [v11 domain];

  v13 = sub_1AE23CD0C();
  v15 = v14;

  if (v13 == sub_1AE23CD0C() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_1AE23E00C();

    if ((v17 & 1) == 0)
    {
LABEL_10:
      sub_1AE214968(v9);
      goto LABEL_11;
    }
  }

  v18 = sub_1AE23BC8C();
  v19 = [v18 code];

  if (v19 != 260)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
}

double sub_1AE217930(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23C88C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AE23C8CC();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 32);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);

  return result;
}

void sub_1AE217BC0()
{
  if (*(v0 + 112))
  {

    sub_1AE00C4CC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE217C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1ADDCEE40(a3, v25 - v10, &unk_1EB5BDD00, &qword_1AE242340);
  v12 = sub_1AE23D1BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1ADDCEDE0(v11, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AE23D16C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AE23CD8C() + 32;
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

      sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);

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

  sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);
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

uint64_t sub_1AE217F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1ADDCEE40(a3, v25 - v10, &unk_1EB5BDD00, &qword_1AE242340);
  v12 = sub_1AE23D1BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1ADDCEDE0(v11, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AE23D16C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AE23CD8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEB10, &qword_1AE25AE28);
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

      sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);

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

  sub_1ADDCEDE0(a3, &unk_1EB5BDD00, &qword_1AE242340);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEB10, &qword_1AE25AE28);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AE218224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AE23BDDC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1AE2183A0()
{
  v1 = v0 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1AE2418F0;
      sub_1AE23DA2C();

      MEMORY[0x1B26FB670](0xD000000000000011, 0x80000001AE264500);
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
      sub_1AE23E2EC();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v1 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 8))(v0 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AE218580(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = [a1 Coherence_url];
  if (v8)
  {
    v9 = v8;
    sub_1AE23BD8C();

    v10 = sub_1AE23BDDC();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    sub_1ADDCEDE0(v7, &qword_1EB5B9DC0, &qword_1AE240B90);
    v11 = v2 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      v14 = (*(v12 + 16))(ObjectType, v12);
      v16 = v15;
      swift_unknownObjectRelease();
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1AE2418F0;
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_1AE23DA2C();

        v24 = v14;
        v25 = v16;
        MEMORY[0x1B26FB670](0xD000000000000019, 0x80000001AE2644E0);
        v18 = v24;
        v19 = v25;
        *(v17 + 56) = MEMORY[0x1E69E6158];
        *(v17 + 32) = v18;
        *(v17 + 40) = v19;
        sub_1AE23E2EC();
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = *(v11 + 8);
      v22 = swift_getObjectType();
      (*(v21 + 8))(v2 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v22, v21);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = sub_1AE23BDDC();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    return sub_1ADDCEDE0(v7, &qword_1EB5B9DC0, &qword_1AE240B90);
  }

  return result;
}

id sub_1AE2188B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRFileSyncPresenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1AE2189C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v97 = a1;
  v6 = sub_1AE23C88C();
  v94 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1AE23C8CC();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 24);
  v88 = *(a2 + 16);
  v87 = v9;
  v11 = type metadata accessor for Capsule(255, v88, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v84 = v11;
  v12 = sub_1AE23C80C();
  v81 = sub_1AE23D7CC();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v14 = &v76 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v76 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v76 - v28;
  v30 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v96 = &v76 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v86 = &v76 - v37;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    v95 = v6;
    v78 = v15;
    v40 = *(v15 + 16);
    (v40)(v29, v97, a3);
    (v40)(v26, v29, a3);
    v41 = swift_dynamicCast();
    v42 = *(v30 + 56);
    if (v41)
    {
      v43 = v29;
      v42(v14, 0, 1, v12);
      v44 = *(v30 + 32);
      (v44)(v33, v14, v12);
      v45 = v96;
      v44();
      v47 = v89;
      v48 = v78;
LABEL_14:
      v67 = type metadata accessor for CRSyncSubscription(0, v88, v87, v46);
      v68 = v86;
      (*(v30 + 32))(v86, v45, v12);
      (*(v48 + 8))(v43, a3);
      swift_allocObject();
      v69 = v79;
      v70 = sub_1ADF55128(v79, v68);
      *&v103 = v70;
      swift_beginAccess();
      sub_1AE23D11C();

      sub_1AE23D0CC();
      swift_endAccess();
      v100 = v67;
      WitnessTable = swift_getWitnessTable();
      *&aBlock = v70;

      sub_1AE23C7BC();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v71 = swift_allocObject();
      v71[2] = a3;
      v71[3] = v47;
      v71[4] = v69;
      v71[5] = v70;
      WitnessTable = sub_1AE21D338;
      v102 = v71;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v99 = sub_1ADDD2200;
      v100 = &block_descriptor_150;
      v72 = _Block_copy(&aBlock);

      v73 = v90;
      sub_1AE23C8AC();
      *&v103 = MEMORY[0x1E69E7CC0];
      sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
      v74 = v92;
      v75 = v95;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v73, v74, v72);
      _Block_release(v72);

      (*(v94 + 8))(v74, v75);
      (*(v91 + 8))(v73, v93);

      return result;
    }

    v76 = v30;
    v42(v14, 1, 1, v12);
    v80[1](v14, v81);
    v81 = v12;
    v47 = v89;
    v49 = v96;
    sub_1AE23C79C();
    sub_1AE23C83C();
    (v40)(v85, v29, a3);
    *v49 = sub_1AE23C84C();
    v80 = v40;
    (v40)(v82, v29, a3);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
    v50 = v29;
    if (swift_dynamicCast())
    {
      sub_1ADE23E6C(&v103, &aBlock);
      sub_1ADE23E6C(&aBlock, &v103);
      v51 = swift_allocObject();
      sub_1ADE23E6C(&v103, v51 + 16);
      v52 = sub_1AE21D354;
    }

    else
    {
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      sub_1ADDCEDE0(&v103, &unk_1EB5BEB20, &qword_1AE24C510);
      swift_getDynamicType();
      v53 = sub_1AE23E40C();
      v54 = a3;
      v56 = v55;
      v51 = swift_allocObject();
      *(v51 + 16) = v53;
      *(v51 + 24) = v56;
      a3 = v54;
      v52 = sub_1AE21D2D8;
    }

    v48 = v78;
    v45 = v96;
    *(v96 + 1) = v52;
    v45[2] = v51;
    v57 = v85;
    v58 = v80;
    (v80)(v85, v50, a3);
    v59 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v60 = swift_allocObject();
    *(v60 + 2) = v84;
    *(v60 + 3) = a3;
    *(v60 + 4) = v47;
    (*(v48 + 32))(&v60[v59], v57, a3);
    v45[3] = sub_1ADF55F80;
    v45[4] = v60;
    (v58)(v83, v50, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3A0, &qword_1AE24C518);
    if (swift_dynamicCast())
    {
      v43 = v50;
      sub_1ADE23E6C(&v103, &aBlock);
      sub_1ADE23E6C(&aBlock, &v103);
      v61 = swift_allocObject();
      sub_1ADE23E6C(&v103, v61 + 16);
      v62 = sub_1AE21D34C;
    }

    else
    {
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      sub_1ADDCEDE0(&v103, qword_1EB5BEB30, &qword_1AE24C520);
      (v58)(v77, v50, a3);
      if (!swift_dynamicCast())
      {
        v105 = 0;
        v103 = 0u;
        v104 = 0u;
        sub_1ADDCEDE0(&v103, &unk_1EB5BEB20, &qword_1AE24C510);
        v43 = v50;
        swift_getDynamicType();
        v63 = sub_1AE23E40C();
        v65 = v64;
        v66 = swift_allocObject();
        *(v66 + 16) = v63;
        *(v66 + 24) = v65;
        v45 = v96;
        *(v96 + 5) = sub_1AE21D2E0;
        v45[6] = v66;
        goto LABEL_13;
      }

      v43 = v50;
      sub_1ADE23E6C(&v103, &aBlock);
      sub_1ADE23E6C(&aBlock, &v103);
      v61 = swift_allocObject();
      sub_1ADE23E6C(&v103, v61 + 16);
      v62 = sub_1AE21D344;
      v45 = v96;
    }

    v45[5] = v62;
    v45[6] = v61;
LABEL_13:
    v12 = v81;
    v30 = v76;
    goto LABEL_14;
  }

  return result;
}

double sub_1AE2195E4(uint64_t a1)
{
  (*(*a1 + 248))(&v7);
  v2 = v11;
  if (v11 != 1)
  {
    v4 = v7;
    v3 = v8;
    v6 = v9;
    v5 = v10;
    sub_1AE23D6AC();
    if ((v7 & 1) == 0)
    {
      v7 = v4;
      v8 = v3;
      v9 = v6;
      v10 = v5;
      v11 = v2;
      sub_1AE23C86C();
    }

    return sub_1ADE92284(v4, v3, v6, v5, v2);
  }

  return result;
}

double sub_1AE2196F8(uint64_t *a1, __int128 *a2)
{
  v10 = a2[1];
  v11 = *a2;
  v4 = *(a2 + 4);
  v5 = *a1;
  (*(*a1 + 248))(&v13);
  if (v15 != 1)
  {
    return sub_1ADE92284(v13, *(&v13 + 1), v14, *(&v14 + 1), v15);
  }

  v14 = v10;
  v13 = v11;
  v15 = v4;
  v7 = *(*a1 + 256);
  v8 = type metadata accessor for Capsule(0, *(v5 + 80), *(v5 + 88), v6);
  (*(*(v8 - 8) + 16))(v12, a2, v8);
  v7(&v13);
  return result;
}

double sub_1AE219830(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = sub_1AE23C88C();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AE23C8CC();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C89C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F98], v9);
  v13 = sub_1AE23D6DC();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1ADDF70F4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_129;
  v15 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEFC8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v8, v5, v15);
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);

  return result;
}

void sub_1AE219BD4(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v10 = (*(*a1 + 264))(v23);
  if (*(v11 + 32) != 1)
  {
    v12 = a2[1];
    v18 = *a2;
    v19 = v12;
    v20 = *(a2 + 4);
    v13 = type metadata accessor for Capsule(0, *(v8 + 80), *(v8 + 88), v9);
    Capsule.merge<A>(_:)(&v18, v13, a3, a4);
  }

  v10(v23, 0);
  v23[0] = 0;
  v22 = 0;
  v14 = a1[3];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = v23;
  v15[6] = &v22;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1AE21D244;
  *(v16 + 24) = v15;
  v20 = sub_1AE1B5910;
  v21 = v16;
  v18.n128_u64[0] = MEMORY[0x1E69E9820];
  v18.n128_u64[1] = 1107296256;
  *&v19 = sub_1ADDF70CC;
  *(&v19 + 1) = &block_descriptor_117;
  v17 = _Block_copy(&v18);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if (!v23[0] && (v22 & 1) == 0)
    {
      sub_1AE2150FC();
    }
  }
}

uint64_t sub_1AE219E28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  type metadata accessor for CRSyncSubscription(0, a3, a4, v8);

  if (!sub_1AE23D0AC())
  {
    goto LABEL_11;
  }

  v9 = 4;
  while (1)
  {
    v10 = v9 - 4;
    v11 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = v9 - 3;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    v13 = a2;
    sub_1AE23C85C();

    ++v9;
    if (v12 == sub_1AE23D0AC())
    {
      goto LABEL_11;
    }
  }

  sub_1AE23DAAC();
  v12 = v9 - 3;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
LABEL_11:
}

uint64_t sub_1AE21A01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(a1 + 32);
  sub_1AE23BD8C();
  sub_1AE23BD8C();
  v11(v10, v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  return (v12)(v10, v4);
}

uint64_t sub_1AE21A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRSyncSubscription(0, a3, a4, a4);
  result = sub_1AE23D0AC();
  if (result)
  {
    v5 = 4;
    do
    {
      v6 = v5 - 4;
      v7 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v7)
      {

        v8 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        v8 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_9:
          __break(1u);
          return result;
        }
      }

      sub_1AE23C86C();

      result = sub_1AE23D0AC();
      ++v5;
    }

    while (v8 != result);
  }

  return result;
}

uint64_t sub_1AE21A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE21A360, 0, 0);
}

uint64_t sub_1AE21A360(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + 112);
  *(v3 + 72) = v4;
  if (v4)
  {
    v5 = *(v3 + 64);
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    *(v3 + 16) = *v5;
    *(v3 + 32) = v7;
    *(v3 + 48) = v6;

    a1 = sub_1ADF52C44;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

void sub_1AE21A3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  if (*(a1 + 89) != 1)
  {
    goto LABEL_8;
  }

  if (qword_1ED96AB10 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();

  if (v17 == 1)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(a1 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AE2418F0;
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_1AE23DA2C();

      v17 = v12;
      v18 = v11;
      MEMORY[0x1B26FB670](0xD00000000000001ELL, 0x80000001AE2643E0);
      sub_1ADDCEFC8(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v14 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v14);

      v15 = v17;
      v16 = v18;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 32) = v15;
      *(v13 + 40) = v16;
      sub_1AE23E2EC();
    }

    (*(v5 + 16))(v7, a2, v4);
    swift_beginAccess();
    sub_1ADEC2798(v10, v7);
    (*(v5 + 8))(v10, v4);
    swift_endAccess();
  }

  else
  {
LABEL_8:
    sub_1AE2175D8();
  }
}

void sub_1AE21A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() defaultManager];
  sub_1AE23BDAC();
  v11 = sub_1AE23CCDC();

  v12 = [v10 fileExistsAtPath_];

  if (v12)
  {
    v13 = sub_1AE23BDDC();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v9, a2, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    sub_1AE216504(a1, a4, v9);
    sub_1ADDCEDE0(v9, &qword_1EB5B9DC0, &qword_1AE240B90);
  }
}

void sub_1AE21A8C0(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  v31[0] = 0;
  v8 = *(v3 + 16);
  v29 = v2;
  v8(v5, v6 + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v2);
  v9 = sub_1AE23BD1C();
  v10 = sub_1AE23BD1C();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v7;
  v11[4] = v31;
  v12 = swift_allocObject();
  v12[2] = sub_1AE21CD60;
  v12[3] = v11;
  aBlock[4] = sub_1AE21CD6C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AE21A01C;
  aBlock[3] = &block_descriptor_23;
  v13 = _Block_copy(aBlock);

  v14 = v7;

  aBlock[0] = 0;
  [v14 coordinateReadingItemAtURL:v9 options:0 writingItemAtURL:v10 options:0 error:aBlock byAccessor:v13];
  _Block_release(v13);

  v15 = aBlock[0];
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  if (v15)
  {

    v16 = v15;
  }

  else
  {
    v16 = v31[0];
    if (!v31[0])
    {
      (*(v3 + 8))(v5, v29);

      goto LABEL_14;
    }

    v17 = v31[0];
  }

  v18 = v15;
  v19 = sub_1AE23BC8C();
  v20 = [v19 domain];

  v21 = sub_1AE23CD0C();
  v23 = v22;

  if (v21 == sub_1AE23CD0C() && v23 == v24)
  {
  }

  else
  {
    v25 = sub_1AE23E00C();

    if ((v25 & 1) == 0)
    {
LABEL_12:
      sub_1AE214968(v16);

      (*(v3 + 8))(v5, v29);
      goto LABEL_14;
    }
  }

  v26 = sub_1AE23BC8C();
  v27 = [v26 code];

  if (v27 != 260)
  {
    goto LABEL_12;
  }

  (*(v3 + 8))(v5, v29);

LABEL_14:
}

void sub_1AE21ACE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void **a5)
{
  v43 = a5;
  v44 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_1AE23BDAC();
  v13 = sub_1AE23CCDC();

  v14 = [v12 fileExistsAtPath_];

  if ((v14 & 1) == 0)
  {
    v16 = a3[6];
    if (v16)
    {
      v17 = a3[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AE2418F0;
      v45 = v17;
      v46 = v16;

      MEMORY[0x1B26FB670](0x207473726946203ALL, 0xEC00000065766173);
      v19 = v45;
      v20 = v46;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 32) = v19;
      *(v18 + 40) = v20;
      sub_1AE23E2EC();
    }

    v21 = (*(*a3 + 248))(&v45, v15);
    if (v49 == 1)
    {
      v22 = (*(*a3 + 368))(v21);
      v23 = [v11 defaultManager];
      if (v22)
      {
        v24 = sub_1AE23BD1C();
        v45 = 0;
        v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v45];

        if (!v25)
        {
          v40 = v45;
          v41 = sub_1AE23BC9C();

          swift_willThrow();
          v39 = *v43;
          *v43 = v41;

          return;
        }

        v26 = v45;
      }

      else
      {
        sub_1AE23BDAC();
        v29 = sub_1AE23CCDC();

        [v23 createFileAtPath:v29 contents:0 attributes:0];
      }
    }

    else
    {
      v28.n128_f64[0] = sub_1ADE92284(v45, v46, v47, v48, v49);
      (*(*a3 + 496))(a2, a4, v28);
    }

    v30 = sub_1AE2145AC(a2, v27);
    v31 = a3[10];
    a3[10] = v30;
  }

  [objc_opt_self() addFilePresenter_];
  v32 = a3[6];
  if (v32)
  {
    v33 = a3[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AE2418F0;
    v45 = v33;
    v46 = v32;

    MEMORY[0x1B26FB670](0x656D75736552203ALL, 0xED0000636E797320);
    v35 = v45;
    v36 = v46;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    sub_1AE23E2EC();
  }

  v37 = sub_1AE23BDDC();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v10, a2, v37);
  (*(v38 + 56))(v10, 0, 1, v37);
  sub_1AE216504(v44, a4, v10);
  sub_1ADDCEDE0(v10, &qword_1EB5B9DC0, &qword_1AE240B90);
}

uint64_t sub_1AE21B1F8()
{
  sub_1AE213A10();

  return swift_deallocClassInstance();
}

void sub_1AE21B22C(void *a1)
{
  v24 = sub_1AE23BDDC();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[6];
  if (v5)
  {
    v6 = a1[5];
    swift_beginAccess();
    if (*(a1[12] + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1AE2418F0;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1AE23DA2C();

      v25 = v6;
      v26 = v5;
      MEMORY[0x1B26FB670](0xD000000000000021, 0x80000001AE264390);
      sub_1ADDCEFC8(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

      v8 = sub_1AE23D2DC();
      v10 = v9;

      MEMORY[0x1B26FB670](v8, v10);

      v11 = v25;
      v12 = v26;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 32) = v11;
      *(v7 + 40) = v12;
      sub_1AE23E2EC();
    }
  }

  swift_beginAccess();
  v13 = a1;
  v14 = a1[12];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 56);
  v18 = (v15 + 63) >> 6;
  v23 = v2 + 16;

  v19 = 0;
  v20 = v24;
  while (v17)
  {
    v21 = v19;
LABEL_12:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    (*(v2 + 16))(v4, *(v14 + 48) + *(v2 + 72) * (v22 | (v21 << 6)), v20);
    sub_1AE2175D8();
    (*(v2 + 8))(v4, v20);
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v13[12] = MEMORY[0x1E69E7CD0];

      return;
    }

    v17 = *(v14 + 56 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_1AE21B558(uint64_t a1)
{

  sub_1AE217910();

  return result;
}

uint64_t sub_1AE21B598()
{
  v1 = *(v0 + 40);

  return v1;
}

void *sub_1AE21B5C8(void x0_0, void x1_0, void a3, uint64_t a1)
{
  type metadata accessor for Capsule(255, *(*v2 + 80), *(*v2 + 88), a1);
  sub_1AE23D7CC();
  return sub_1AE23D6AC();
}

double CRBinaryFileSync.read(from:context:coordinator:)@<D0>(uint64_t a2@<X3>, __n128 *a3@<X8>)
{
  v6 = sub_1AE23BDFC();
  if (!v3)
  {
    Capsule.init(serializedData:allowedAppFormats:fileSignature:)(v6, v7, 0, 0, 0xF000000000000000, *(a2 + 16), *(a2 + 24), v11);
    v9 = v12;
    result = v11[0].n128_f64[0];
    v10 = v11[1];
    *a3 = v11[0];
    a3[1] = v10;
    a3[2].n128_u64[0] = v9;
  }

  return result;
}

double (*CRCustomFileSyncManager.disableReadingInBackground.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1AE23D6AC();
  *(a1 + 9) = *(a1 + 8);
  return sub_1AE21B82C;
}

uint64_t *CRCustomFileSyncManager.__allocating_init(_:sync:at:version:)(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v24 = a3;
  v25 = a1;
  v8 = *(v4 + 80);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 32);
  v16 = *a4;
  v17 = *(a2 + 16);
  v28[0] = *a2;
  v28[1] = v17;
  v29 = v15;
  (*(v12 + 16))(v14, a3, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v16;
  type metadata accessor for CRBinaryFileSync(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  swift_dynamicCast();
  v21 = v25;
  v22 = sub_1ADFA115C(v25, v28, v14, v10);
  (*(v26 + 8))(v10, v8);

  (*(v12 + 8))(v24, v11);
  return v22;
}

uint64_t *CRCustomFileSyncManager.__allocating_init(_:sync:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v15;
  v27 = v14;
  (*(v11 + 16))(v13, a3, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = 1;
  type metadata accessor for CRBinaryFileSync(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_dynamicCast();
  v19 = v24;
  v20 = sub_1ADFA115C(v24, v26, v13, v9);
  (*(v7 + 8))(v9, v6);

  (*(v11 + 8))(v23, v10);
  return v20;
}

uint64_t sub_1AE21BCC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AE21BDC0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AE21BEB4;

  return v5(v2 + 32);
}

uint64_t sub_1AE21BEB4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void *sub_1AE21BFC8(void *a1, __int128 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v89 = a4;
  v90 = a5;
  v93 = a3;
  v88 = a1;
  v85 = *v5;
  v8 = sub_1AE23BDDC();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1AE23D68C();
  v94 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1AE23D65C();
  MEMORY[0x1EEE9AC00](v72);
  v92 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23C8CC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v91 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AE23BFEC();
  v74 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a2 + 4);
  v78 = sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
  *&v95[0] = 0;
  *(&v95[0] + 1) = 0xE000000000000000;
  sub_1AE23DA2C();

  *&v95[0] = 0xD000000000000012;
  *(&v95[0] + 1) = 0x80000001AE264540;
  sub_1AE23BFDC();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v18 = swift_allocObject();
  v76 = xmmword_1AE241900;
  *(v18 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v19 = MEMORY[0x1E69E7508];
  v20 = MEMORY[0x1E69E7558];
  *(v18 + 56) = MEMORY[0x1E69E7508];
  *(v18 + 64) = v20;
  v21 = v20;
  *(v18 + 32) = v22;
  sub_1AE23BFCC();
  *(v18 + 96) = v19;
  *(v18 + 104) = v21;
  *(v18 + 72) = v23;
  v24 = sub_1AE23CD3C();
  v26 = v25;
  v27 = *(v15 + 8);
  v73 = v15 + 8;
  v75 = v27;
  v28 = a2[1];
  v82 = *a2;
  v81 = v28;
  v27(v17, v14);
  MEMORY[0x1B26FB670](v24, v26);

  v66 = *(&v95[0] + 1);
  sub_1AE23C8AC();
  *&v95[0] = MEMORY[0x1E69E7CC0];
  v70 = sub_1ADDCEFC8(&unk_1ED96B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  v71 = sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  v68 = *MEMORY[0x1E69E8090];
  v29 = *(v94 + 104);
  v94 += 104;
  v67 = v29;
  v30 = v79;
  v31 = v80;
  v29(v79);
  v5[3] = sub_1AE23D6CC();
  strcpy(v95, "model-atomic-");
  HIWORD(v95[0]) = -4864;
  sub_1AE23BFDC();
  v32 = swift_allocObject();
  *(v32 + 16) = v76;
  sub_1AE23BFCC();
  v33 = MEMORY[0x1E69E7508];
  *(v32 + 56) = MEMORY[0x1E69E7508];
  v34 = MEMORY[0x1E69E7558];
  *(v32 + 64) = MEMORY[0x1E69E7558];
  *(v32 + 32) = v35;
  sub_1AE23BFCC();
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  *(v32 + 72) = v36;
  v37 = sub_1AE23CD3C();
  v39 = v38;
  v75(v17, v74);
  MEMORY[0x1B26FB670](v37, v39);

  sub_1AE23C8AC();
  *&v95[0] = MEMORY[0x1E69E7CC0];
  sub_1AE23D8DC();
  v67(v30, v68, v31);
  v5[4] = sub_1AE23D6CC();
  v5[7] = 0;
  *(v5 + 64) = 0;
  v5[10] = 0;
  v40 = MEMORY[0x1E69E7CD0];
  *(v5 + 44) = 0;
  v5[12] = v40;
  v41 = *(v85 + 80);
  v94 = *(v85 + 88);
  type metadata accessor for CRSyncSubscription(0, v41, v94, v42);
  v5[13] = sub_1AE23C9DC();
  v5[14] = 0;
  v44 = v88;
  v43 = v89;
  v5[9] = v88;
  v45 = v90;
  v5[5] = v43;
  v5[6] = v45;
  v47 = v86;
  v46 = v87;
  v48 = *(v86 + 16);
  v49 = v84;
  v48(v84, v93, v87);
  v50 = type metadata accessor for CRFileSyncPresenter(0);
  v51 = objc_allocWithZone(v50);
  *&v51[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager + 8] = 0;
  swift_unknownObjectWeakInit();
  v48(&v51[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL], v49, v46);
  v52 = objc_allocWithZone(MEMORY[0x1E696ADC8]);
  v53 = v44;
  v54 = [v52 init];
  *&v51[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_queue] = v54;
  v97.receiver = v51;
  v97.super_class = v50;
  v55 = objc_msgSendSuper2(&v97, sel_init);
  v56 = *(v47 + 8);
  v56(v49, v46);
  v6[2] = v55;
  *&v55[OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_manager + 8] = &off_1F23C9B88;
  swift_unknownObjectWeakAssign();
  v95[0] = v82;
  v95[1] = v81;
  v96 = v83;
  (*(*v6 + 256))(v95);
  v58 = type metadata accessor for _CRFileSyncManager(255, v41, v94, v57);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AsyncUpdatesActor(0, v41, v58, WitnessTable);

  v61 = sub_1AE00CC84(v60);

  v6[14] = v61;

  v62 = [objc_opt_self() defaultCenter];
  v63 = qword_1ED96AA18;

  if (v63 != -1)
  {
    swift_once();
  }

  [v62 addObserver:v6 selector:sel_willEnterForeground name:qword_1ED96F280 object:0];

  v64 = sub_1AE2178F0();
  (v56)(v93, v46, v64);
  return v6;
}

void sub_1AE21C940(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 4);
  v8 = *v4;
  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  v18 = v7;
  v15 = v8;
  v10 = type metadata accessor for Capsule(0, *(a4 + 16), *(a4 + 24), a4);
  v11 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(a3, &v15, 0, 0, 0xF000000000000000, v10);
  if (!v5)
  {
    v13 = v11;
    v14 = v12;
    sub_1AE23BEDC();
    sub_1ADDCC35C(v13, v14);
  }
}

uint64_t type metadata accessor for CRFileSyncPresenter(uint64_t a1)
{
  result = qword_1ED966C90;
  if (!qword_1ED966C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AE21CA60(uint64_t a1)
{
  result = sub_1AE23BDDC();
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

uint64_t sub_1AE21CB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Capsule(255, *(a1 + 80), *(a1 + 88), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB180, &unk_1AE2427A0);
  result = sub_1AE23C80C();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE21CC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AE21CDA0()
{
  v1 = *(sub_1AE23BDDC() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1AE21A3F4(v2, v3);
}

uint64_t sub_1AE21CE14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE74240;

  return sub_1AE21A340(a1, v4, v5, v6, (v1 + 5));
}

void sub_1AE21CED4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1AE23BDDC() - 8);
  v7 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v8 = *(v2 + ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 32);

  sub_1AE219FA4(a1, a2, v9, v2 + v7, v8, v6);
}

uint64_t sub_1AE21CF9C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE21D02C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE744B8;

  return sub_1AE21BDC0(a1, v4);
}

uint64_t sub_1AE21D0E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE74240;

  return sub_1AE21BDC0(a1, v4);
}

void sub_1AE21D1B8(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 56);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 56) = v5;
    *a1 = *(v2 + 88);
  }
}

uint64_t objectdestroy_41Tm(void (*a1)(void))
{
  a1(v1[4]);
  sub_1ADDCC35C(v1[5], v1[6]);
  sub_1ADDCC35C(v1[7], v1[8]);

  return MEMORY[0x1EEE6BDD0](v1, 80, 7);
}

void sub_1AE21D244()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    *(v1 + 56) = v4;
    *v6 = v4;
    *v5 = *(v1 + 88);
  }
}

uint64_t sub_1AE21D29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t objectdestroy_80Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

__n128 WeakRef.init(id:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1AE21D3E4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v8 = *v2;
  v9 = v5;
  sub_1ADDD86D8(v8, v5);
  sub_1ADEAE800(&v8, *(a1 + 16), *(a1 + 24), a2);
  v6 = v8;
  v7 = v9;

  sub_1ADDCC35C(v6, v7);
}

void WeakRef.subscript.getter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 4);
  v10 = *v4;
  v9 = v4[1];
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  v20 = v8;
  v16 = v10;
  v17 = v9;
  sub_1ADDD86D8(v10, v9);
  v13 = type metadata accessor for Capsule(0, a3, a4, v12);
  Capsule.subscript.getter(&v16, v13, *(a2 + 16), *(a2 + 24));
  v14 = v16;
  v15 = v17;

  sub_1ADDCC35C(v14, v15);
}

void WeakRef.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    v19 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    v21 = 0xD000000000000017;
    goto LABEL_16;
  }

  v7 = v4;
  v43 = a4;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(v6 + 16);
    if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 15)
    {
      v30 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v31 = *(a1 + 40);
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v30 >= v32;
      }

      else
      {
        v33 = 1;
      }

      if (!v33)
      {
        v40 = *(v31 + 16 * v30 + 32);
        sub_1ADDD86D8(*(v31 + 16 * v30 + 32), *(v31 + 16 * v30 + 40));

        v36 = v43;
        v37 = v40;
LABEL_40:
        *v36 = v37;
        return;
      }

      v19 = 0x80000001AE25FC60;
      sub_1ADE42E40(inited, v11, v12);
      swift_allocError();
      v21 = 0xD000000000000013;
LABEL_16:
      *v20 = v21;
      *(v20 + 8) = v19;
      *(v20 + 16) = 0;
      swift_willThrow();

      return;
    }
  }

  v15 = *(v6 + 16);
  v39 = a3;
  if ((~v15 & 0xF000000000000007) != 0 && ((v15 >> 59) & 0x1E | (v15 >> 2) & 1) == 7)
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v16 = &unk_1ED966F48;
  }

  swift_beginAccess();
  if (v16[8])
  {
    v17 = *(v6 + 16);
    if ((~v17 & 0xF000000000000007) != 0 && ((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 7)
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v18 = &unk_1ED966F48;
    }

    swift_beginAccess();
    v22 = v18[8];
    v23 = v18[9];
    v24 = v18[10];
    if (v22)
    {
      v25 = v18[8];
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    if (v22)
    {
      v26 = v18[9];
    }

    else
    {
      v26 = 0;
    }

    if (v22)
    {
      v27 = v18[10];
    }

    else
    {
      v27 = 0xC000000000000000;
    }

    swift_retain_n();
    sub_1ADE56F74(v22, v23, v24);
    sub_1ADDE94BC(v25, v26, v27, &v42);
    if (!v7)
    {
      v28 = v42;
      goto LABEL_38;
    }

LABEL_30:

    return;
  }

  v29 = swift_retain_n();
  CRKeyPath.init(from:)(v29, v41);
  if (v4)
  {
    goto LABEL_30;
  }

  v28 = *v41;
LABEL_38:
  v34 = *(a1 + 16);
  if (v34)
  {
    v42 = v28;
    v35 = *(*v34 + 200);
    v38 = v28;

    sub_1ADDD86D8(v38, *(&v38 + 1));
    v35(a2, &v42, a1, 1, a2, v39);
    sub_1ADDCC35C(v42, *(&v42 + 1));

    v36 = v43;
    v37 = v38;
    goto LABEL_40;
  }

  __break(1u);
}

uint64_t WeakRef.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

void WeakRef.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1ADDCC35C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

double WeakRef.init(id:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  *&v15 = sub_1ADDCC6B4(&unk_1F23BC1E0);
  *(&v15 + 1) = v9;
  v10 = sub_1ADDD8E0C(v15);
  v12 = v11;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v10, v12);
  v13 = *(v5 + 8);
  v13(a1, v4);
  v13(v8, v4);
  result = *&v15;
  *a2 = v15;
  return result;
}

double WeakRef.init<A>(_:_:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{

  sub_1ADEB03A0(a2, a3, a4, &v10);

  (*(*(a3 - 8) + 8))(a2, a3);
  result = v10.n128_f64[0];
  *a5 = v10;
  return result;
}

void WeakRef.init<A>(_:_:)(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  sub_1ADDD86D8(*a2, v6);
  sub_1ADDCC35C(v5, v6);
  sub_1ADDCC35C(v7, v8);

  *a3 = v5;
  a3[1] = v6;
}

double WeakRef.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  (*(a3 + 48))(&v8, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *&v8;
  *a4 = v8;
  return result;
}

void WeakRef.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[1];
  v12 = *v4;
  v13 = v8;
  v9 = *(a4 + 16);
  sub_1ADDD86D8(v12, v8);
  v9(&v12, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v12;
  v11 = v13;

  sub_1ADDCC35C(v10, v11);
}

{
  v8 = v4[1];
  v12 = *v4;
  v13 = v8;
  v9 = *(a4 + 40);
  sub_1ADDD86D8(v12, v8);
  v9(&v12, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v12;
  v11 = v13;

  sub_1ADDCC35C(v10, v11);
}

void sub_1AE21DD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for WeakRef(0, *(a2 + a3 - 32), *(a2 + a3 - 16), a4);
  WeakRef.subscript.getter(a2, v7, v5, v6);
}

void sub_1AE21DDA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v12 = *a2;
  v13 = a2[1];
  sub_1ADDD86D8(*a2, v13);
  v11 = type metadata accessor for WeakRef(0, v6, v8, v10);
  sub_1AE21F32C(a1, a3, v11, v7, v9);

  sub_1ADDCC35C(v12, v13);
}

uint64_t WeakRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE21F32C(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a2, a4);
  v8 = sub_1AE23D7CC();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*WeakRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x68uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = a5;
  v12[2] = a3;
  v14 = sub_1AE23D7CC();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  v18 = *(a4 - 8);
  v19 = v18;
  v13[9] = v18;
  if (v11)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v22 = *v5;
  v21 = v5[1];
  v13[10] = v20;
  v13[11] = v22;
  v13[12] = v21;
  (*(v19 + 16))();
  *v13 = v22;
  v13[1] = v21;
  WeakRef.subscript.getter(a2, a3, a4, a5);
  return sub_1AE21E0B4;
}

void sub_1AE21E0B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v9 = *(*a1 + 40);
  v8 = *(*a1 + 48);
  v10 = *(*a1 + 24);
  v13 = *(*a1 + 32);
  v14 = *(*a1 + 80);
  v11 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(v7, v6, v9);
    sub_1ADDD86D8(v4, v3);
    sub_1AE21F32C(v7, v14, v11, v10, v13);
    (*(v5 + 8))(v14, v10);
    v12 = *(v8 + 8);
    v12(v7, v9);
    sub_1ADDCC35C(v4, v3);
    v12(v6, v9);
  }

  else
  {
    sub_1ADDD86D8(v4, v3);
    sub_1AE21F32C(v6, v14, v11, v10, v13);
    (*(v5 + 8))(v14, v10);
    (*(v8 + 8))(v6, v9);
    sub_1ADDCC35C(v4, v3);
  }

  free(v14);
  free(v6);
  free(v7);

  free(v2);
}

void WeakRef.subscript.getter(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v10 = v7;
  v11 = v6;

  sub_1ADDD86D8(v7, v6);
  sub_1ADEAE800(&v10, *(a2 + 16), *(a2 + 24), a3);

  v8 = v10;
  v9 = v11;

  sub_1ADDCC35C(v8, v9);
}

void sub_1AE21E340(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = *a2;
  v9 = a2[1];
  v12 = *a2;

  sub_1ADDD86D8(v8, v9);
  v11 = type metadata accessor for WeakRef(0, v5, v6, v10);
  sub_1AE21F45C(a1, v7, v11);

  sub_1ADDCC35C(v12, v9);
}

uint64_t WeakRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE21F45C(a1, a2, a3);

  v4 = sub_1AE23D7CC();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*WeakRef.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10 = sub_1AE23D7CC();
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = *v3;
  v15 = v3[1];
  v9[7] = v13;
  v9[8] = v14;
  v9[9] = v15;
  *v9 = v14;
  v9[1] = v15;
  WeakRef.subscript.getter(a3, v13);
  return sub_1AE21E59C;
}

void sub_1AE21E59C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    sub_1ADDD86D8(v4, v3);

    sub_1AE21F45C(v5, v9, v10);

    v11 = *(v8 + 8);
    v11(v5, v7);
    sub_1ADDCC35C(v4, v3);
    v11(v6, v7);
  }

  else
  {
    v12 = *(*a1 + 64);
    sub_1ADDD86D8(v4, v3);

    sub_1AE21F45C(v6, v9, v10);

    (*(v8 + 8))(v6, v7);
    sub_1ADDCC35C(v12, v3);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t WeakRef.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[2];
  if (v8)
  {
    v13 = v5;
    v11 = *v5;
    v12 = v13[1];
    v15 = *a1;
    v14 = a1[1];
    v22 = v15;
    v23 = v14;
    v24 = v8;
    *&v21 = v11;
    *(&v21 + 1) = v12;
    sub_1AE003EE4(v15, v14, v8);
    sub_1ADDD86D8(v11, v12);
    v17 = type metadata accessor for Capsule.ObservableDifference(0, a3, a4, v16);
    Capsule.ObservableDifference.subscript.getter(&v21, v17, *(a2 + 16), *(a2 + 24), a5);
    sub_1ADDCC35C(v21, *(&v21 + 1));

    return sub_1AE003F24(v15, v14, v8);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = *(*(AssociatedTypeWitness - 8) + 56);

    return v20(a5, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t WeakRef.visitReferences(_:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v9[0] = v4;
  v9[1] = v5;
  return (*(v7 + 24))(v9, *(a2 + 16), *(a2 + 24), v6, v7);
}

uint64_t WeakRef.copy(renamingReferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1ADDDE7CC(v4, v5), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);
    *a2 = v9;
    v10 = *(&v9 + 1);
    v11 = v9;
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    v11 = v4;
    v10 = v5;
  }

  return sub_1ADDD86D8(v11, v10);
}

uint64_t WeakRef.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v4 = a1;

  WeakRef.copy(renamingReferences:)(&v4, a2);
}

uint64_t WeakRef.ObservableDifference.contents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if ((v2 >> 60) > 0xF || ((1 << (v2 >> 60)) & 0x8880) == 0)
  {
    v4 = *v1;
    *a1 = *v1;
    a1[1] = v2;
    return sub_1ADDD86D8(v4, v2);
  }

  else
  {
    *a1 = xmmword_1AE2427C0;
  }

  return result;
}

BOOL WeakRef.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *v1;
  v4 = xmmword_1AE2427C0;
  v5 = v2;
  return static WeakRef.ObservableDifference.== infix(_:_:)(&v5, &v4);
}

BOOL static WeakRef.ObservableDifference.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = v2 >> 60;
  if (v2 >> 60 == 7)
  {
    if (v4 >> 60 != 7)
    {
      goto LABEL_14;
    }
  }

  else if (v6 == 11)
  {
    if (v4 >> 60 != 11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v6 != 15)
    {
      if ((v4 >> 60) > 0xF || ((1 << (v4 >> 60)) & 0x8880) == 0)
      {
        v11[0] = *a1;
        v11[1] = v2;
        v10[0] = v5;
        v10[1] = v4;
        sub_1AE21F578(v5, v4);
        sub_1AE21F578(v3, v2);
        sub_1AE21F578(v5, v4);
        sub_1AE21F578(v3, v2);
        v7 = static WeakRef.== infix(_:_:)(v11, v10);
        sub_1AE21F5A0(v3, v2);
        sub_1AE21F5A0(v5, v4);
        sub_1AE21F5A0(v5, v4);
        sub_1AE21F5A0(v3, v2);
        return v7;
      }

      goto LABEL_14;
    }

    if (v4 >> 60 != 15)
    {
LABEL_14:
      sub_1AE21F578(*a2, a2[1]);
      sub_1AE21F578(v3, v2);
      sub_1AE21F5A0(v3, v2);
      sub_1AE21F5A0(v5, v4);
      return 0;
    }
  }

  sub_1AE21F5A0(*a1, v2);
  sub_1AE21F5A0(v5, v4);
  return 1;
}

void WeakRef.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *v4;
  v11 = v4[1];
  sub_1ADDD86D8(*v4, v11);
  sub_1ADDD86D8(v8, v9);
  v12 = sub_1ADDD6F8C(v10, v11, v8, v9);
  sub_1ADDCC35C(v8, v9);
  sub_1ADDCC35C(v10, v11);
  if (v12)
  {
    sub_1AE003F64(a2, v19);
    v13 = v20;
    if (v20)
    {
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v17[0] = v10;
      v17[1] = v11;
      (*(v14 + 16))(v18, v17, *(a3 + 16), *(a3 + 24), v13, v14);
      v15 = v18[0];
      v16 = v18[1];
      __swift_destroy_boxed_opaque_existential_1(v19);
      if (v16 >> 60 != 3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AE003FD4(v19);
    }

    v15 = 0;
    v16 = 0x3000000000000000;
  }

  else
  {
    v15 = 0;
    v16 = 0xF000000000000000;
  }

LABEL_8:
  *a4 = v15;
  a4[1] = v16;
}

BOOL static WeakRef.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1ADDD86D8(*a1, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v4, v5);
  sub_1ADDCC35C(v2, v3);
  return v6;
}

uint64_t WeakRef.hashValue.getter()
{
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE21EE2C(uint64_t a1)
{
  sub_1AE23E31C();
  WeakRef.hash(into:)(v2);
  return sub_1AE23E34C();
}

void WeakRef.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v5;
  v7 = v5[1];
  v9 = sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    v10 = v9;
    v11 = *(a1 + 104);

    if (v11 >= 3)
    {
      v16 = sub_1ADE66644(v8, v7);
      swift_beginAccess();
      sub_1AE1B7794(v16);
    }

    else
    {
      sub_1ADDD86D8(v8, v7);
      sub_1ADDCC35C(0, 0xC000000000000000);
      v12 = MEMORY[0x1E69E7CC0];

      sub_1ADDD86D8(v8, v7);

      sub_1ADDCC35C(v8, v7);
      swift_beginAccess();
      v13 = *(*(v10 + 24) + 16);
      if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 7)
      {
        inited = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v17 = inited[8];
      v18 = inited[9];
      v19 = inited[10];
      inited[8] = v12;
      inited[9] = v8;
      inited[10] = v7;
      sub_1ADE73D6C(v17, v18, v19);
      sub_1AE1B76EC(inited);
      v20 = *(*(v10 + 24) + 16);
      if ((~v20 & 0xF000000000000007) != 0 && ((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 7)
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        v21 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v21 = sub_1ADDE4C34(v21);
      }

      swift_beginAccess();
      *(v21 + 24) = 1;
      *(v21 + 32) = 1;
      sub_1AE1B76EC(v21);
    }

    swift_endAccess();
  }
}

uint64_t WeakRef.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23E3BC();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1ADE57060(v4, v5, v6);
  sub_1AE23E06C();
  sub_1ADDCC35C(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t WeakRef.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1AE23E38C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1ADE56FBC(v5, v6, v7);
    sub_1AE23E03C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_1AE21F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 16);
  v11 = sub_1AE23D7CC();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v16 = *v5;
  v15 = v5[1];
  (*(v17 + 16))(v20 - v13, a1, v12);
  v20[0] = v16;
  v20[1] = v15;
  v18 = *(a5 + 48);
  sub_1ADDD86D8(v16, v15);
  return v18(v14, v20, v10, *(a3 + 24), a4, a5);
}

double sub_1AE21F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1AE23D7CC();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  v12 = *v3;
  v11 = v3[1];
  (*(v13 + 16))(v15 - v9, a1, v8);
  v15[0] = v12;
  v15[1] = v11;

  sub_1ADDD86D8(v12, v11);
  sub_1ADEAEA50(v10, v15, v6, *(a3 + 24));

  return result;
}

uint64_t sub_1AE21F578(uint64_t result, unint64_t a2)
{
  if ((a2 >> 60) > 0xF || ((1 << (a2 >> 60)) & 0x8880) == 0)
  {
    return sub_1ADDD86D8(result, a2);
  }

  return result;
}

void sub_1AE21F5A0(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xF || ((1 << (a2 >> 60)) & 0x8880) == 0)
  {
    sub_1ADDCC35C(a1, a2);
  }
}

uint64_t sub_1AE21F5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE21F628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence7WeakRefV20ObservableDifferenceOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE21F68C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA && *(a1 + 16))
  {
    return (*a1 + 10);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE21F6E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((13 - a2) >> 2) | (4 * (13 - a2))) << 60;
    }
  }

  return result;
}

uint64_t sub_1AE21F75C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  if (qword_1ED9670C0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v5 = word_1ED96F220;
    v6 = HIBYTE(word_1ED96F220);
    v7 = byte_1ED96F222;
    v8 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC8];
    v75 = v6;
    v76 = v5;
    v82 = v6;
    v79 = v3;
    v80 = a1 + 64;
    v78 = a1;
    v72 = v12;
    v15 = v5;
    if (v11)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v17 >= v12)
      {

        *v3 = v14;
        *a2 = v76;
        a2[1] = v75;
        a2[2] = v7 & 1;
        return result;
      }

      v11 = *(v8 + 8 * v17);
      ++v13;
      if (v11)
      {
        v83 = v15;
        v81 = v7;
        v13 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
  }

  while (1)
  {
    while (1)
    {
      v83 = v15;
      v81 = v7;
LABEL_13:
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v19 = v18 | (v13 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(a1 + 56) + 8 * v19);
      v24 = *v3;
      a1 = *(*v3 + 16);

      v85 = v23;

      if (a1)
      {
        v25 = sub_1ADDD7A10(v21, v22);
        if (v26)
        {
          break;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v14;
      v31 = v22;
      v32 = v21;
      v3 = v31;
      v33 = sub_1ADDD7A10(v21, v31);
      v35 = v14[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_94;
      }

      a1 = v34;
      if (v14[3] >= v38)
      {
        v8 = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = v33;
          sub_1ADF6F61C();
          v33 = v69;
        }

        v39 = v32;
        if (a1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1ADF69B9C(v38, isUniquelyReferenced_nonNull_native);
        v39 = v21;
        v33 = sub_1ADDD7A10(v21, v3);
        v8 = v80;
        if ((a1 & 1) != (v40 & 1))
        {
          goto LABEL_99;
        }

        if (a1)
        {
LABEL_23:
          v41 = v33;

          v14 = v86;
          *(v86[7] + 8 * v41) = v85;

          goto LABEL_29;
        }
      }

      v14 = v86;
      v86[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v14[6] + 16 * v33);
      *v42 = v39;
      v42[1] = v3;
      *(v14[7] + 8 * v33) = v85;
      v43 = v14[2];
      v37 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v37)
      {
        goto LABEL_95;
      }

      v14[2] = v44;
LABEL_29:
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v45 = word_1EB5D750B;
      v46 = HIBYTE(word_1EB5D750B);
      v47 = byte_1EB5D750D;

      if (v83 == v45 || !v45)
      {
        v48 = v83;
        goto LABEL_43;
      }

      if (v83 > 1)
      {
        v48 = v83;
        if (v83 != 2)
        {
          goto LABEL_43;
        }

        v49 = v45 == 1;
      }

      else
      {
        v76 = v45;
        v48 = v45;
        if (!v83)
        {
          goto LABEL_43;
        }

        v49 = v45 == 2;
      }

      if (v49)
      {
        v48 = 3;
      }

      else
      {
        v48 = v45;
      }

      v76 = v48;
LABEL_43:
      if (v82 == v46 || !v46)
      {
        v16 = v82;
      }

      else if (v82 > 1)
      {
        v16 = v82;
        if (v82 == 2)
        {
          v50 = v46 == 1;
          goto LABEL_50;
        }
      }

      else
      {
        v75 = v46;
        v16 = v46;
        if (v82)
        {
          v50 = v46 == 2;
LABEL_50:
          if (v50)
          {
            v16 = 3;
          }

          else
          {
            v16 = v46;
          }

          v75 = v16;
        }
      }

      v7 = v81 | v47;
      v82 = v16;
      a1 = v78;
      v3 = v79;
      v15 = v48;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v77 = v21;
    v27 = *(*(v24 + 56) + 8 * v25);
    if (v27 == v85)
    {
      v29 = word_1ED96F220;
      a1 = HIBYTE(word_1ED96F220);
      v73 = byte_1ED96F222;
      LOBYTE(v86) = word_1ED96F220;

      v8 = v80;
    }

    else
    {

      v8 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = (*(*v27 + 168))();

        v27 = v28;
      }

      (*(*v27 + 96))(&v86, v85);
      v29 = v86;
      a1 = BYTE1(v86);
      v73 = BYTE2(v86);
    }

    v52 = v82;
    v51 = v83;
    if (v83 != v29 && v29)
    {
      if (v83 > 1)
      {
        if (v83 != 2)
        {
          goto LABEL_67;
        }

        v53 = v29 == 1;
      }

      else
      {
        if (!v83)
        {
          v76 = v29;
          v51 = v29;
          goto LABEL_67;
        }

        v53 = v29 == 2;
      }

      if (v53)
      {
        v51 = 3;
      }

      else
      {
        v51 = v29;
      }

      v76 = v51;
    }

LABEL_67:
    v84 = v51;
    if (v82 != a1 && a1)
    {
      if (v82 > 1)
      {
        if (v82 != 2)
        {
          goto LABEL_79;
        }

        v54 = a1 == 1;
      }

      else
      {
        if (!v82)
        {
          v75 = a1;
          v52 = a1;
          goto LABEL_79;
        }

        v54 = a1 == 2;
      }

      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = a1;
      }

      v75 = v55;
      v52 = v55;
    }

LABEL_79:
    v56 = v52;
    v74 = v27;

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v14;
    v3 = sub_1ADDD7A10(v77, v22);
    v59 = v14[2];
    v60 = (v58 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_96;
    }

    v62 = v58;
    if (v14[3] >= v61)
    {
      if ((v57 & 1) == 0)
      {
        sub_1ADF6F61C();
      }

      v63 = v77;
    }

    else
    {
      sub_1ADF69B9C(v61, v57);
      v63 = v77;
      v64 = sub_1ADDD7A10(v77, v22);
      if ((v62 & 1) != (v65 & 1))
      {
        goto LABEL_99;
      }

      v3 = v64;
    }

    v82 = v56;
    v12 = v72;
    if ((v62 & 1) == 0)
    {
      break;
    }

    v14 = v86;
    *(v86[7] + 8 * v3) = v74;

LABEL_90:
    v7 = v81 | v73;

    a1 = v78;
    v3 = v79;
    v15 = v84;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v14 = v86;
  v86[(v3 >> 6) + 8] |= 1 << v3;
  v66 = (v14[6] + 16 * v3);
  *v66 = v63;
  v66[1] = v22;
  *(v14[7] + 8 * v3) = v74;

  v67 = v14[2];
  v37 = __OFADD__(v67, 1);
  v68 = v67 + 1;
  if (!v37)
  {
    v14[2] = v68;
    goto LABEL_90;
  }

  __break(1u);
LABEL_99:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1AE21FE14(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (v6)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          return;
        }

        if (v9 >= v7)
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
      }

      while (!v6);
      v8 = v9;
      if (!*(a1 + 16))
      {
        goto LABEL_16;
      }
    }

    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = *(*(a2 + 56) + 8 * v10);
    v12 = (*(a2 + 48) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];

    sub_1ADDD7A10(v13, v14);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    v17 = *(*v11 + 120);

    v19 = v17(v18);

    if (v19)
    {
      goto LABEL_16;
    }
  }

LABEL_16:
}

void sub_1AE21FFB0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  LOBYTE(v9) = 0;
  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(**(*(a1 + 56) + ((v11 << 9) | (8 * v12))) + 200);

    v13(&v15, v14);

    if (v15 <= v9)
    {
      v9 = v9;
    }

    else
    {
      v9 = v15;
    }

    if (v9 == 3)
    {
LABEL_14:

      *a2 = v9;
      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1AE2200E4(uint64_t a1, uint64_t a2)
{
  v30[5] = MEMORY[0x1E69E7CD0];
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v28 = v4;
  v29 = v8;
  while (v7)
  {
LABEL_11:
    while (1)
    {
      v16 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v17 = v16 | (v9 << 6);
      v18 = *(*(a2 + 56) + 8 * v17);
      if (*(a1 + 16))
      {
        break;
      }

LABEL_6:
      v10 = type metadata accessor for AllRefsVisitor();
      v11 = swift_allocObject();
      *(v11 + 24) = 0;
      *(v11 + 16) = MEMORY[0x1E69E7CD0];
      v12 = (v11 + 16);
      v30[3] = v10;
      v30[4] = &off_1F23C4500;
      v30[0] = v11;
      v13 = *(*v18 + 128);

      v13(v30);
      v4 = v28;
      v8 = v29;
      __swift_destroy_boxed_opaque_existential_1(v30);
      swift_beginAccess();
      v14 = *v12;

      sub_1AE00F014(v14);

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v19 = (*(a2 + 48) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_1ADDD7A10(v20, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v18 == *(*(a1 + 56) + 8 * v22))
    {

      v27 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v25 = *(*v18 + 104);

      v27 = v25(v26);
    }

    sub_1AE00F014(v27);
  }

LABEL_7:
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v15);
    ++v9;
    if (v7)
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1AE22036C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(**(*(a1 + 56) + 8 * (v9 | (v8 << 6))) + 152);

    LOBYTE(v10) = v10(v11);

    if (v10)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void _s9Coherence17UnknownPropertiesV18finalizeTimestampsyyAA9CRContextCF_0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 + 64;
  v4 = 1 << *(*v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v19 = v2;
  while (v6)
  {
LABEL_12:
    v10 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];

    v14 = sub_1ADF5F2F0(v20, v11, v12);
    if (*v13)
    {
      v15 = v13;
      v16 = *(**v13 + 152);

      LOBYTE(v16) = v16(v17);

      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *v15 = (*(**v15 + 168))();
        }

        (*(**v15 + 160))(a1);
      }

      (v14)(v20, 0);
      v2 = v19;
    }

    else
    {
      (v14)(v20, 0);
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
}

Coherence::UnknownProperties __swiftcall UnknownProperties.copy(renamingReferences:)(Swift::OpaquePointer_optional renamingReferences)
{
  v3 = v1;
  v4 = *v2;
  if (renamingReferences.value._rawValue)
  {
    rawValue = renamingReferences.value._rawValue;
  }

  else
  {
    rawValue = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = rawValue;

  v6 = sub_1AE156B60(v4, &v8);

  *v3 = v6;
  return result;
}

Coherence::UnknownProperties __swiftcall UnknownProperties.copy(renamingReferences:)(Swift::OpaquePointer *renamingReferences)
{
  v3 = v1;
  result.properties._rawValue = sub_1AE156B60(*v2, renamingReferences);
  v3->properties._rawValue = result.properties._rawValue;
  return result;
}

void UnknownProperties.encode(to:)(uint64_t a1)
{
  v3 = v2;
  v5 = *v1;
  v6 = *v1 + 64;
  v7 = 1 << *(*v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*v1 + 64);
  v10 = (v7 + 63) >> 6;
  v40 = v5;

  v12 = 0;
  v37 = v10;
  v38 = v6;
  v39 = a1;
  while (v9)
  {
LABEL_10:
    v17 = __clz(__rbit64(v9)) | (v12 << 6);
    v18 = (*(v40 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v44 = *(*(v40 + 56) + 8 * v17);
    MEMORY[0x1EEE9AC00](v11);
    v36[2] = &v44;
    v36[3] = a1;

    sub_1ADE6B9FC(sub_1AE220BAC, v36);
    if (v3)
    {

      return;
    }

    v21 = *(a1 + 16);
    v41 = sub_1ADE66494(v20, v19);

    swift_beginAccess();
    v22 = *(*(v21 + 24) + 16);
    v23 = (~v22 & 0xF000000000000007) != 0 && (v22 & 0xF000000000000000) == 0x3000000000000000;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v27 = (v22 & 0xFFFFFFFFFFFFFFFLL);
      v25 = v27[2];
      v26 = v27[3];
      v24 = v27[4];
    }

    v43 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1ADDF69D0(0, *(v25 + 2) + 1, 1, v25);
    }

    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    if (v30 >= v29 >> 1)
    {
      v25 = sub_1ADDF69D0((v29 > 1), v30 + 1, 1, v25);
    }

    *(v25 + 2) = v30 + 1;
    *&v25[8 * v30 + 32] = v41;

    MEMORY[0x1B26FB860](v31);
    if (*(v43 + 16) >= *(v43 + 24) >> 1)
    {
      sub_1AE23D03C();
    }

    sub_1AE23D09C();
    v32 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(v21 + 24);
      type metadata accessor for Proto_CRDT._StorageClass();
      v34 = swift_allocObject();
      *(v34 + 16) = 0xF000000000000007;
      v35 = *(v33 + 16);
      *(v34 + 16) = v35;
      *(v21 + 24) = v34;
      sub_1ADE5215C(v35);
    }

    v9 &= v9 - 1;
    v13 = *(v21 + 24);
    v14 = swift_allocObject();
    *(v14 + 16) = v25;
    *(v14 + 24) = v32;
    *(v14 + 32) = v24;
    v15 = *(v13 + 16);
    *(v13 + 16) = v14 | 0x3000000000000000;
    swift_endAccess();
    sub_1ADE52174(v15);

    v3 = v42;
    v6 = v38;
    a1 = v39;
    v10 = v37;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      v12 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t UnknownProperties.init(defaultState:)@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ADDDEC54(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1AE220BC8()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v1 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v27 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1ADE6EFAC(0, v11, 0);
    v12 = v36;
    v13 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v27 = *(v1 + 72);
    do
    {
      v35 = v11;
      v14 = v30;
      sub_1ADDCEE40(v13, v30, &qword_1EB5BA168, &unk_1AE25B3D0);
      v15 = *(v29 + 48);
      v16 = v31;
      sub_1ADDCEE40(v14, v31, &qword_1EB5BA168, &unk_1AE25B3D0);
      v17 = v33;
      v18 = *(v33 + 48);
      v34 = *(v33 + 64);
      sub_1ADDD27F0(v16 + v18, v9, type metadata accessor for Replica);
      v19 = v32;
      sub_1ADDD2198(v14, v32, &qword_1EB5BA168, &unk_1AE25B3D0);
      v20 = *(v17 + 48);
      v21 = *(v17 + 64);
      v22 = sub_1AE23C12C();
      v23 = *(v22 - 8);
      (*(v23 + 32))(&v9[v15], v19 + v21, v22);
      sub_1ADE0DCEC(v19 + v20, type metadata accessor for Replica);
      sub_1ADDCEDE0(v19, &qword_1EB5BA480, &qword_1AE25AAE0);
      (*(v23 + 8))(v16 + v34, v22);
      sub_1ADDCEDE0(v16, &qword_1EB5BA480, &qword_1AE25AAE0);
      v36 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1ADE6EFAC((v24 > 1), v25 + 1, 1);
        v12 = v36;
      }

      *(v12 + 16) = v25 + 1;
      sub_1ADDD2198(v9, v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, &qword_1EB5BA2A0, &unk_1AE242200);
      v13 += v27;
      v11 = v35 - 1;
    }

    while (v35 != 1);
  }

  return v12;
}

uint64_t sub_1AE220F80()
{
  v1 = v0;
  v54 = type metadata accessor for RetainedMapRun(0);
  v2 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v49 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = v42 - v9;
  v10 = sub_1AE23C0EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v42 - v16;
  sub_1AE23C10C();
  sub_1AE23C0DC();
  (*(v11 + 8))(v13, v10);
  v18 = v17;
  v19 = *(v15 + 44);
  v20 = sub_1AE22A490(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
  sub_1AE23D46C();
  if (*(v18 + v19) == v55[0])
  {
    return sub_1ADDCEDE0(v18, &qword_1EB5BA440, &unk_1AE24CCB0);
  }

  v47 = (v2 + 56);
  v48 = (v2 + 48);
  v44 = v18;
  v45 = v10;
  v42[1] = v20;
  v43 = v19;
  while (1)
  {
    v22 = sub_1AE23D51C();
    v24 = *v23;
    v25 = *(v23 + 8);
    v22(v55, 0);
    sub_1AE23D47C();
    result = sub_1ADDE22AC(v24, v25);
    v27 = v26;
    v28 = v52;
    if (result != v26)
    {
      break;
    }

LABEL_4:
    sub_1ADDE2B98(result, v27);
    v18 = v44;
    sub_1AE23D46C();
    if (*(v18 + v43) == v55[0])
    {
      return sub_1ADDCEDE0(v18, &qword_1EB5BA440, &unk_1AE24CCB0);
    }
  }

  if (v26 < result)
  {
    goto LABEL_25;
  }

  if (result < v26)
  {
    v29 = *v1;
    v30 = result;
    v51 = result;
    while (1)
    {
      if (result < 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

      if (v30 >= v29[2])
      {
        goto LABEL_23;
      }

      v31 = v49;
      v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v33 = *(v50 + 72) * v30;
      sub_1ADDCEE40(v29 + v32 + v33, v49, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADDD2198(v31 + *(v4 + 36), v28, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*v48)(v28, 1, v54) == 1)
      {
        sub_1ADDCEDE0(v28, &qword_1EB5BA450, &unk_1AE25B3B0);
      }

      else
      {
        v34 = v4;
        v35 = v54;
        v36 = v28;
        v37 = v46;
        sub_1ADDD27F0(v36, v46, type metadata accessor for RetainedMapRun);
        v38 = v37;
        v39 = *(v37 + *(v35 + 20));
        v40 = v39 - 1;
        if (v39 > 1)
        {
          v41 = v53;
          sub_1ADDD2198(v38, v53, &qword_1EB5BA460, &qword_1AE251020);
          *(v41 + *(v35 + 20)) = v40;
          (*v47)(v41, 0, 1, v35);
          v4 = v34;
          goto LABEL_17;
        }

        sub_1ADE0DCEC(v38, type metadata accessor for RetainedMapRun);
        v4 = v34;
      }

      (*v47)(v53, 1, 1, v54);
LABEL_17:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1ADF799F0(v29);
        v29 = result;
      }

      v28 = v52;
      if (v30 >= v29[2])
      {
        goto LABEL_24;
      }

      ++v30;
      sub_1ADDE4820(v53, v29 + v32 + *(v4 + 36) + v33);
      *v1 = v29;
      result = v51;
      if (v27 == v30)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AE221574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v41 - v7;
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v41 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA488, &unk_1AE25B3C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = *v2;
  v21 = *(*v2 + 16);
  if (v21 && (v22 = v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v23 = *(v11 + 72), *(v22 + v23 * (v21 - 1) + 8) > a1))
  {
    v24 = a1;
    result = sub_1ADDE2A80(a1, 0, v20);
    if (result >= v21)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    sub_1ADDCEE40(v22 + result * v23, v19, &qword_1EB5BA148, &qword_1AE241B60);
    (*(v11 + 56))(v19, 0, 1, v10);
  }

  else
  {
    v24 = a1;
    (*(v11 + 56))(&v41 - v18, 1, 1, v10);
  }

  sub_1ADDD2198(v19, v16, &qword_1EB5BA488, &unk_1AE25B3C0);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    sub_1ADDCEDE0(v16, &qword_1EB5BA488, &unk_1AE25B3C0);
    v26 = 1;
    v28 = v45;
    v27 = v46;
    v29 = v44;
    return (*(v29 + 56))(v27, v26, 1, v28);
  }

  v30 = v24;
  sub_1ADDD2198(v16, v13, &qword_1EB5BA148, &qword_1AE241B60);
  v31 = v43;
  sub_1ADDCEE40(v13 + *(v10 + 36), v43, &qword_1EB5BA450, &unk_1AE25B3B0);
  v32 = type metadata accessor for RetainedMapRun(0);
  v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
  v27 = v46;
  v29 = v44;
  if (v33 == 1)
  {
    sub_1ADDCEDE0(v13, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDCEDE0(v31, &qword_1EB5BA450, &unk_1AE25B3B0);
    v34 = v42;
    v28 = v45;
    (*(v29 + 56))(v42, 1, 1, v45);
LABEL_12:
    sub_1ADDCEDE0(v34, &qword_1EB5BA460, &qword_1AE251020);
    v26 = 1;
    return (*(v29 + 56))(v27, v26, 1, v28);
  }

  v34 = v42;
  sub_1ADDCEE40(v31, v42, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADE0DCEC(v31, type metadata accessor for RetainedMapRun);
  v28 = v45;
  if ((*(v29 + 48))(v34, 1, v45) == 1)
  {
    sub_1ADDCEDE0(v13, &qword_1EB5BA148, &qword_1AE241B60);
    goto LABEL_12;
  }

  v35 = v41;
  sub_1ADDD27F0(v34, v41, type metadata accessor for FinalizedTimestamp);
  v36 = sub_1AE23BFEC();
  (*(*(v36 - 8) + 16))(v27, v35, v36);
  v37 = *(v35 + *(v28 + 20));
  result = sub_1ADE0DCEC(v35, type metadata accessor for FinalizedTimestamp);
  v38 = __OFADD__(v37, v30);
  v39 = v37 + v30;
  if (v38)
  {
    goto LABEL_18;
  }

  v40 = *v13;
  result = sub_1ADDCEDE0(v13, &qword_1EB5BA148, &qword_1AE241B60);
  if (!__OFSUB__(v39, v40))
  {
    v26 = 0;
    *(v27 + *(v28 + 20)) = v39 - v40;
    return (*(v29 + 56))(v27, v26, 1, v28);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE221B48(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = type metadata accessor for Replica(0);
  sub_1ADDDE470(v10 + *(*(v11 - 8) + 72) * a3, v9, type metadata accessor for Replica);
  v12 = *(a6 + 56) + 24 * a3;

  return sub_1ADDE56CC(v12, a2);
}

unint64_t sub_1AE221C28(uint64_t a1, char a2, uint64_t a3)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA478, &qword_1AE24D470);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v49 - v10;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1AE23DA2C();

  v66 = 0xD000000000000013;
  v67 = 0x80000001AE2647C0;
  v63 = a1;
  v11 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v11);

  MEMORY[0x1B26FB670](0xD000000000000012, 0x80000001AE2647E0);
  if (a2)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (a2)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1B26FB670](v12, v13);

  MEMORY[0x1B26FB670](10, 0xE100000000000000);
  v15 = v66;
  v14 = v67;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v50 = v66;
    v51 = v67;
    v65 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v16, 0);
    v17 = v65;
    v18 = sub_1AE23D8EC();
    v53 = xmmword_1AE241900;
    v54 = a3;
    v52 = a3 + 64;
    v19 = v58;
    while (1)
    {
      v61 = v17;
      v20 = *(a3 + 36);
      v21 = *(v19 + 48);
      v22 = v56;
      v59 = v16;
      v60 = v20;
      sub_1AE221B48(v56, v56 + v21, v18, v20, 0, a3);
      v23 = v57;
      sub_1ADDD27F0(v22, v57, type metadata accessor for Replica);
      sub_1ADDE5634(v22 + v21, v23 + *(v19 + 48));
      v66 = 8224;
      v67 = 0xE200000000000000;
      v24 = v55;
      sub_1ADDCEE40(v23, v55, &qword_1EB5BA478, &qword_1AE24D470);
      v25 = *(v19 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
      v26 = swift_allocObject();
      *(v26 + 16) = v53;
      sub_1AE23BFCC();
      v27 = MEMORY[0x1E69E7508];
      *(v26 + 56) = MEMORY[0x1E69E7508];
      v28 = MEMORY[0x1E69E7558];
      *(v26 + 64) = MEMORY[0x1E69E7558];
      *(v26 + 32) = v29;
      sub_1AE23BFCC();
      *(v26 + 96) = v27;
      *(v26 + 104) = v28;
      *(v26 + 72) = v30;
      v63 = sub_1AE23CD3C();
      v64 = v31;
      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v62 = *(v24 + *(type metadata accessor for Replica(0) + 20));
      v32 = sub_1AE23DD9C();
      MEMORY[0x1B26FB670](v32);

      v33 = v63;
      v34 = v64;
      sub_1ADE0DCEC(v24, type metadata accessor for Replica);
      MEMORY[0x1B26FB670](v33, v34);

      sub_1ADDE5C20(v24 + v25);
      MEMORY[0x1B26FB670](58, 0xE100000000000000);
      sub_1ADDCEE40(v23, v24, &qword_1EB5BA478, &qword_1AE24D470);
      v35 = *(v19 + 48);
      v36 = sub_1AE2221D4();
      v38 = v37;
      sub_1ADDE5C20(v24 + v35);
      MEMORY[0x1B26FB670](v36, v38);

      sub_1ADE0DCEC(v24, type metadata accessor for Replica);
      v39 = v66;
      v40 = v67;
      v41 = v23;
      v17 = v61;
      result = sub_1ADDCEDE0(v41, &qword_1EB5BA478, &qword_1AE24D470);
      v65 = v17;
      v44 = *(v17 + 16);
      v43 = *(v17 + 24);
      if (v44 >= v43 >> 1)
      {
        result = sub_1ADE0B11C((v43 > 1), v44 + 1, 1);
        v17 = v65;
      }

      *(v17 + 16) = v44 + 1;
      v45 = v17 + 16 * v44;
      *(v45 + 32) = v39;
      *(v45 + 40) = v40;
      a3 = v54;
      if (v18 < 0 || v18 >= -(-1 << *(v54 + 32)))
      {
        break;
      }

      if (((*(v52 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v60 != *(v54 + 36))
      {
        goto LABEL_20;
      }

      v18 = sub_1AE23D90C();
      v16 = v59 - 1;
      if (v59 == 1)
      {
        v15 = v50;
        v14 = v51;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_17:
    v66 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    v46 = sub_1AE23CBFC();
    v48 = v47;

    v66 = v15;
    v67 = v14;

    MEMORY[0x1B26FB670](v46, v48);

    MEMORY[0x1B26FB670](125, 0xE100000000000000);

    return v66;
  }

  return result;
}

uint64_t sub_1AE2221D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = (&v25 - v5);
  strcpy(v35, "RLEMapping: ");
  BYTE5(v35[1]) = 0;
  HIWORD(v35[1]) = -5120;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v34 = MEMORY[0x1E69E7CC0];
    result = sub_1ADE0B11C(0, v8, 0);
    v11 = 0;
    v9 = v34;
    v25 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v26 = v7;
    v27 = v8;
    v28 = v4;
    while (v11 < *(v7 + 16))
    {
      sub_1ADDCEE40(v25 + *(v4 + 72) * v11, v6, &qword_1EB5BA148, &qword_1AE241B60);
      v12 = *v6;
      v30 = v6[1];
      v31 = v12;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1AE23DBAC();
      MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
      sub_1AE23DBAC();
      MEMORY[0x1B26FB670](540945696, 0xE400000000000000);
      sub_1ADDCEE40(v6 + *(v29 + 36), v3, &qword_1EB5BA450, &unk_1AE25B3B0);
      v13 = type metadata accessor for RetainedMapRun(0);
      if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
      {
        sub_1ADDCEDE0(v3, &qword_1EB5BA450, &unk_1AE25B3B0);
        v14 = 0xE100000000000000;
        v15 = 63;
      }

      else
      {
        v15 = sub_1AE2225D8();
        v14 = v16;
        sub_1ADE0DCEC(v3, type metadata accessor for RetainedMapRun);
      }

      MEMORY[0x1B26FB670](v15, v14);

      v17 = v32;
      v18 = v33;
      result = sub_1ADDCEDE0(v6, &qword_1EB5BA148, &qword_1AE241B60);
      v34 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1ADE0B11C((v19 > 1), v20 + 1, 1);
        v9 = v34;
      }

      ++v11;
      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v4 = v28;
      v7 = v26;
      if (v27 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v32 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    v22 = sub_1AE23CBFC();
    v24 = v23;

    MEMORY[0x1B26FB670](v22, v24);

    return v35[0];
  }

  return result;
}

uint64_t sub_1AE2225D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1AE23DA2C();

  v18 = 980382760;
  v19 = 0xE400000000000000;
  sub_1ADDCEE40(v0, v7, &qword_1EB5BA460, &qword_1AE251020);
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v7, 1, v8);
  sub_1ADDCEDE0(v7, &qword_1EB5BA460, &qword_1AE251020);
  if (v10 == 1)
  {
    v11 = 0xE100000000000000;
    v12 = 63;
LABEL_5:
    MEMORY[0x1B26FB670](v12, v11);

    MEMORY[0x1B26FB670](0x436E696174657220, 0xED00003A746E756FLL);
    v16 = *(v1 + *(type metadata accessor for RetainedMapRun(0) + 20));
    v15 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v15);

    MEMORY[0x1B26FB670](41, 0xE100000000000000);
    return v18;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1ADDCEE40(v1, v4, &qword_1EB5BA460, &qword_1AE251020);
  result = v9(v4, 1, v8);
  if (result != 1)
  {
    v14 = FinalizedTimestamp.description.getter();
    MEMORY[0x1B26FB670](v14);

    sub_1ADE0DCEC(v4, type metadata accessor for FinalizedTimestamp);
    v12 = v16;
    v11 = v17;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE2228B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v7 = v6 - 8;
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  sub_1ADDCEE40(a1, &v26 - v14, &qword_1EB5BA480, &qword_1AE25AAE0);
  sub_1ADDDE470(a2, &v15[*(v7 + 56)], type metadata accessor for Replica);
  v16 = *(v7 + 72);
  v17 = sub_1AE23C12C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v15[v16], a3, v17);
  sub_1ADDCEE40(v15, v12, &qword_1EB5BA168, &unk_1AE25B3D0);
  v19 = *(v7 + 56);
  v20 = *(v7 + 72);
  sub_1ADDD2198(v12, v9, &qword_1EB5BA480, &qword_1AE25AAE0);
  sub_1ADDD27F0(&v12[v19], &v9[v19], type metadata accessor for Replica);
  (*(v18 + 32))(&v9[v20], &v12[v20], v17);
  v21 = v26;
  v22 = *v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1ADE56760(0, v22[2] + 1, 1, v22);
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1ADE56760((v23 > 1), v24 + 1, 1, v22);
  }

  sub_1ADDCEDE0(v15, &qword_1EB5BA168, &unk_1AE25B3D0);
  v22[2] = v24 + 1;
  result = sub_1ADDD2198(v9, v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, &qword_1EB5BA168, &unk_1AE25B3D0);
  *v21 = v22;
  return result;
}

void sub_1AE222B90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v6, 0);
    v8 = 0;
    v7 = v18;
    v15 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v16 = v4;
    v9 = v2;
    while (v8 < *(v5 + 16))
    {
      sub_1ADDCEE40(v15 + *(v9 + 72) * v8, v4, &qword_1EB5BA168, &unk_1AE25B3D0);
      sub_1AE222DD4(v4, v17);
      sub_1ADDCEDE0(v4, &qword_1EB5BA168, &unk_1AE25B3D0);
      v10 = v17[0];
      v11 = v17[1];
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1ADE0B11C((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      ++v8;
      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v4 = v16;
      if (v6 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    sub_1ADDCEDE0(v4, &qword_1EB5BA168, &unk_1AE25B3D0);

    __break(1u);
  }

  else
  {
LABEL_7:
    v17[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    sub_1AE23CBFC();
  }
}

uint64_t sub_1AE222DD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v36 = 40;
  v37 = 0xE100000000000000;
  v32 = a1;
  sub_1ADDCEE40(a1, v8, &qword_1EB5BA168, &unk_1AE25B3D0);
  v12 = *(v3 + 48);
  v31 = *(v3 + 64);
  sub_1ADDD2198(v8, v11, &qword_1EB5BA480, &qword_1AE25AAE0);
  v13 = type metadata accessor for Timestamp(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    v14 = sub_1AE23C12C();
    (*(*(v14 - 8) + 8))(&v8[v31], v14);
    sub_1ADE0DCEC(&v8[v12], type metadata accessor for Replica);
    sub_1ADDCEDE0(v11, &qword_1EB5BA480, &qword_1AE25AAE0);
    v15 = 0xE100000000000000;
    v16 = 63;
  }

  else
  {
    v30 = v12;
    v34 = sub_1AE1B6A38();
    v35 = v17;
    MEMORY[0x1B26FB670](40, 0xE100000000000000);
    v38 = *&v11[*(v13 + 20)];
    v18 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v18);

    MEMORY[0x1B26FB670](41, 0xE100000000000000);
    v16 = v34;
    v15 = v35;
    sub_1ADE0DCEC(v11, type metadata accessor for Timestamp);
    v14 = sub_1AE23C12C();
    (*(*(v14 - 8) + 8))(&v8[v31], v14);
    sub_1ADE0DCEC(&v8[v30], type metadata accessor for Replica);
  }

  MEMORY[0x1B26FB670](v16, v15);

  MEMORY[0x1B26FB670](0x202E2E2E20, 0xE500000000000000);
  v19 = v32;
  v20 = sub_1AE1B6A38();
  MEMORY[0x1B26FB670](v20);

  MEMORY[0x1B26FB670](8236, 0xE200000000000000);
  sub_1ADDCEE40(v19, v5, &qword_1EB5BA168, &unk_1AE25B3D0);
  v21 = *(v3 + 48);
  v22 = *(v3 + 64);
  v23 = sub_1ADF5CF74();
  v25 = v24;
  sub_1AE23C12C();
  (*(*(v14 - 8) + 8))(&v5[v22], v14);
  MEMORY[0x1B26FB670](v23, v25);

  sub_1ADE0DCEC(&v5[v21], type metadata accessor for Replica);
  sub_1ADDCEDE0(v5, &qword_1EB5BA480, &qword_1AE25AAE0);
  result = MEMORY[0x1B26FB670](41, 0xE100000000000000);
  v27 = v37;
  v28 = v33;
  *v33 = v36;
  v28[1] = v27;
  return result;
}

id sub_1AE2232A0(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v35 = type metadata accessor for FinalizedTimestamp(0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v15 = sub_1AE23BFEC();
  v16 = *(*(v15 - 8) + 16);
  v16(v13, a2 + v14, v15);
  *&v13[*(v8 + 20)] = *(a2 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v17 = *(v2 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v18 = sub_1ADDD8A6C(v13);
  if ((v19 & 1) == 0)
  {

LABEL_6:
    sub_1ADE0DCEC(v13, type metadata accessor for Replica);
    return 0;
  }

  sub_1ADDE56CC(*(v17 + 56) + 24 * v18, v38);
  sub_1ADE0DCEC(v13, type metadata accessor for Replica);

  sub_1ADDE5634(v38, v39);
  sub_1AE221574(v34, v6);
  v20 = v35;
  if ((*(v33 + 48))(v6, 1, v35) != 1)
  {
    v22 = v32;
    sub_1ADDD27F0(v6, v32, type metadata accessor for FinalizedTimestamp);
    v16(v10, v22, v15);
    *&v10[*(v8 + 20)] = 0;
    v23 = type metadata accessor for ObjCReplica(0);
    v24 = objc_allocWithZone(v23);
    v16(&v24[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v10, v15);
    *&v24[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
    v37.receiver = v24;
    v37.super_class = v23;
    v25 = objc_msgSendSuper2(&v37, sel_init);
    sub_1ADE0DCEC(v10, type metadata accessor for Replica);
    v35 = *(v22 + *(v20 + 20));
    v26 = type metadata accessor for ObjCTimestamp(0);
    v27 = objc_allocWithZone(v26);
    v28 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v29 = &v27[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp];
    v16(&v27[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp], &v25[v28], v15);
    *&v29[*(v8 + 20)] = *&v25[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];
    *&v29[*(type metadata accessor for Timestamp(0) + 20)] = v35;
    v36.receiver = v27;
    v36.super_class = v26;
    v30 = objc_msgSendSuper2(&v36, sel_init);

    sub_1ADE0DCEC(v22, type metadata accessor for FinalizedTimestamp);
    sub_1ADDE5C20(v39);
    return v30;
  }

  sub_1ADDE5C20(v39);
  sub_1ADDCEDE0(v6, &qword_1EB5BA460, &qword_1AE251020);
  return 0;
}

id sub_1AE22378C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = &v54 - v3;
  v61 = type metadata accessor for FinalizedTimestamp(0);
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Replica(0);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v59 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp;
  sub_1ADDDE470(a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, &v54 - v17, type metadata accessor for Timestamp);
  sub_1ADDD27F0(v18, v13, type metadata accessor for Replica);
  v20 = *(v6 + 32);
  v56 = v13;
  v20(v8, v13, v5);
  v57 = v19;
  sub_1ADDDE470(v19, v15, type metadata accessor for Timestamp);
  v21 = *&v15[*(v9 + 20)];
  sub_1ADE0DCEC(v15, type metadata accessor for Replica);
  v22 = type metadata accessor for ObjCReplica(0);
  v23 = objc_allocWithZone(v22);
  v24 = *(v6 + 16);
  v24(&v23[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v8, v5);
  *&v23[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v21;
  v25 = v5;
  v69.receiver = v23;
  v69.super_class = v22;
  v54 = v22;
  v26 = objc_msgSendSuper2(&v69, sel_init);
  (*(v6 + 8))(v8, v5);
  v27 = v63;
  v28 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v55 = v24;
  v24(v27, &v26[v28], v5);
  v29 = *&v26[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];

  v30 = v64;
  v31 = v65;
  *(v27 + *(v65 + 20)) = v29;
  v32 = *(v30 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  if (!*(v32 + 16))
  {
    goto LABEL_6;
  }

  v33 = sub_1ADDD8A6C(v27);
  if ((v34 & 1) == 0)
  {

LABEL_6:
    sub_1ADE0DCEC(v27, type metadata accessor for Replica);
    return 0;
  }

  sub_1ADDE56CC(*(v32 + 56) + 24 * v33, v68);
  sub_1ADE0DCEC(v27, type metadata accessor for Replica);

  sub_1ADDE5634(v68, v70);
  v35 = v59;
  v36 = v60;
  sub_1AE221574(*(v57 + *(v59 + 20)), v60);
  v37 = v61;
  if ((*(v58 + 48))(v36, 1, v61) != 1)
  {
    v39 = v36;
    v40 = v62;
    sub_1ADDD27F0(v39, v62, type metadata accessor for FinalizedTimestamp);
    v41 = v56;
    v42 = v40;
    v43 = v55;
    v55(v56, v40, v25);
    *(v41 + *(v31 + 20)) = 0;
    v44 = v54;
    v45 = objc_allocWithZone(v54);
    v43(&v45[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v41, v25);
    *&v45[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
    v67.receiver = v45;
    v67.super_class = v44;
    v46 = objc_msgSendSuper2(&v67, &selRef_versionWithError_);
    sub_1ADE0DCEC(v41, type metadata accessor for Replica);
    v47 = *(v42 + *(v37 + 20));
    v48 = type metadata accessor for ObjCTimestamp(0);
    v49 = v35;
    v50 = objc_allocWithZone(v48);
    v51 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v52 = &v50[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp];
    v43(&v50[OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp], &v46[v51], v25);
    *&v52[*(v65 + 20)] = *&v46[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];
    *&v52[*(v49 + 20)] = v47;
    v66.receiver = v50;
    v66.super_class = v48;
    v53 = objc_msgSendSuper2(&v66, sel_init);

    sub_1ADE0DCEC(v62, type metadata accessor for FinalizedTimestamp);
    sub_1ADDE5C20(v70);
    return v53;
  }

  sub_1ADDE5C20(v70);
  sub_1ADDCEDE0(v36, &qword_1EB5BA460, &qword_1AE251020);
  return 0;
}

uint64_t sub_1AE223EC0(char **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v160 = type metadata accessor for FinalizedTimestampRange(0);
  MEMORY[0x1EEE9AC00](v160);
  v171 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for RetainedMapRun(0);
  v169 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v161 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v163 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v170 = &v132 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v132 - v15;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v164 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v174 = (&v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v145 = &v132 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA488, &unk_1AE25B3C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v136 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v132 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v148 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v142 = &v132 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v132 - v28;
  v172 = type metadata accessor for FinalizedTimestamp(0);
  v30 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v147 = &v132 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v133 = &v132 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v156 = &v132 - v38;
  v39 = type metadata accessor for Replica(0);
  v40 = v39 - 8;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = MEMORY[0x1E69E7CC0];
  v179 = 0;
  swift_unknownObjectWeakInit();
  v179 = 0;
  swift_unknownObjectWeakAssign();
  v43 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v44 = sub_1AE23BFEC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 16);
  v154 = v44;
  v153 = v46;
  v152 = v45 + 16;
  (v46)(v42, a3 + v43);
  *&v42[*(v40 + 28)] = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  v47 = *(v4 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  if (!*(v47 + 16))
  {
    goto LABEL_9;
  }

  v48 = sub_1ADDD8A6C(v42);
  if ((v49 & 1) == 0)
  {

LABEL_9:
    sub_1ADE0DCEC(v42, type metadata accessor for Replica);
LABEL_10:
    sub_1ADDE56CC(&v178, &v177);
    v56 = type metadata accessor for ObjCRLE();
    v57 = objc_allocWithZone(v56);
    sub_1ADDE56CC(&v177, v57 + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle);
    v175.receiver = v57;
    v175.super_class = v56;
    v58 = objc_msgSendSuper2(&v175, sel_init);
    sub_1ADDE5C20(&v177);
    sub_1ADDE5C20(&v178);
    return v58;
  }

  sub_1ADDE56CC(*(v47 + 56) + 24 * v48, &v176);
  sub_1ADE0DCEC(v42, type metadata accessor for Replica);

  result = sub_1ADDE5634(&v176, &v177);
  v51 = (a1 + a2);
  if (__OFADD__(a1, a2))
  {
    goto LABEL_89;
  }

  if (v51 >= a1)
  {
    v144 = v29;
    v52 = v145;
    v53 = v136;
    v54 = v142;
    v55 = v151;
    if (v51 != a1)
    {
      v59 = v177;
      v60 = *(v177 + 16);
      v134 = v60 - 1;
      v141 = (v164 + 56);
      v140 = (v164 + 48);
      v162 = (v169 + 48);
      v167 = (v30 + 56);
      v157 = (v169 + 56);
      v143 = (v30 + 48);
      v150 = (v30 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v61 = &qword_1EB5BA148;
      v62 = &qword_1AE241B60;
      v165 = v32;
      v139 = v51;
      v138 = v177;
      v137 = v60;
      while (1)
      {
        if (a1 >= v51)
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        if (v60)
        {
          v64 = *(v59 + 16);
          if (v60 > v64)
          {
            goto LABEL_83;
          }

          v65 = v59 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
          v66 = *(v164 + 72);
          if (a1 < *(v65 + v66 * v134 + 8))
          {
            v67 = 0;
            v68 = v64 - 1;
            v69 = v64 - 1;
            while (v68 >= -1)
            {
              v70 = v68 / 2;
              if (v70 >= v64)
              {
                break;
              }

              v71 = (v65 + v70 * v66);
              v72 = *v71;
              v73 = v71[1];
              if (a1 >= v72 && a1 < v73)
              {
                v69 = v70;
LABEL_32:
                if (v69 >= v64)
                {
                  goto LABEL_84;
                }

                sub_1ADDCEE40(v65 + v69 * v66, v146, v61, v62);
                v76 = 0;
                goto LABEL_34;
              }

              if (v69 < v67)
              {
                goto LABEL_32;
              }

              if (a1 < v72)
              {
                v69 = v70 - 1;
                v68 = v67 + v70 - 1;
              }

              else
              {
                v67 = v70 + 1;
                v75 = __OFADD__(v70 + 1, v69);
                v68 = v70 + 1 + v69;
                if (v75)
                {
                  goto LABEL_74;
                }
              }
            }

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
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }
        }

        v76 = 1;
LABEL_34:
        v77 = v146;
        (*v141)(v146, v76, 1, v55);
        sub_1ADDD2198(v77, v53, &qword_1EB5BA488, &unk_1AE25B3C0);
        if ((*v140)(v53, 1, v55) == 1)
        {
          break;
        }

        sub_1ADDD2198(v53, v52, v61, v62);
        v82 = v135;
        sub_1ADDCEE40(v52 + *(v55 + 36), v135, &qword_1EB5BA450, &unk_1AE25B3B0);
        if ((*v162)(v82, 1, v173) == 1)
        {
          sub_1ADDCEDE0(v52, v61, v62);
          sub_1ADDCEDE0(v82, &qword_1EB5BA450, &unk_1AE25B3B0);
          (*v167)(v54, 1, 1, v172);
          goto LABEL_40;
        }

        sub_1ADDCEE40(v82, v54, &qword_1EB5BA460, &qword_1AE251020);
        sub_1ADE0DCEC(v82, type metadata accessor for RetainedMapRun);
        v83 = v172;
        v84 = *v143;
        if ((*v143)(v54, 1, v172) == 1)
        {
          sub_1ADDCEDE0(v52, v61, v62);
LABEL_40:
          v79 = v55;
          v80 = v54;
          v78 = &qword_1EB5BA460;
          v81 = &qword_1AE251020;
LABEL_41:
          sub_1ADDCEDE0(v80, v78, v81);
          v85 = v144;
          v86 = v172;
          v166 = *v167;
          v166(v144, 1, 1, v172);
          v84 = *v143;
          goto LABEL_42;
        }

        v126 = v54;
        v127 = v133;
        sub_1ADDD27F0(v126, v133, type metadata accessor for FinalizedTimestamp);
        v153(v144, v127, v154);
        v128 = *(v127 + *(v83 + 20));
        result = sub_1ADE0DCEC(v127, type metadata accessor for FinalizedTimestamp);
        v75 = __OFADD__(v128, a1);
        v129 = a1 + v128;
        if (v75)
        {
          goto LABEL_87;
        }

        v130 = *v52;
        result = sub_1ADDCEDE0(v52, v61, v62);
        v131 = &v129[-v130];
        if (__OFSUB__(v129, v130))
        {
          goto LABEL_88;
        }

        v79 = v55;
        v86 = v172;
        v85 = v144;
        *&v144[*(v172 + 20)] = v131;
        v166 = *v167;
        v166(v85, 0, 1, v86);
        v54 = v142;
LABEL_42:
        v87 = (a1 + 1);
        v149 = v84;
        if (v84(v85, 1, v86) == 1)
        {
          result = sub_1ADDCEDE0(v85, &qword_1EB5BA460, &qword_1AE251020);
        }

        else
        {
          v88 = v85;
          v89 = v156;
          sub_1ADDD27F0(v88, v156, type metadata accessor for FinalizedTimestamp);
          v155 = *(v89 + *(v86 + 20));
          v176 = MEMORY[0x1E69E7CC0];
          result = sub_1ADDE22AC(a1, (a1 + 1));
          v91 = v165;
          if (result != v90)
          {
            if (v90 < result)
            {
              goto LABEL_85;
            }

            if (result >= v90)
            {
              goto LABEL_86;
            }

            v132 = (a1 + 1);
            v92 = 0;
            v93 = v178;
            v94 = result;
            v95 = v163;
            v159 = result;
            v158 = v90;
            while ((result & 0x8000000000000000) == 0)
            {
              if (v94 >= v93[2])
              {
                goto LABEL_71;
              }

              v96 = v62;
              v97 = v91;
              v168 = (*(v164 + 80) + 32) & ~*(v164 + 80);
              v169 = *(v164 + 72) * v94;
              v98 = v174;
              v99 = v96;
              sub_1ADDCEE40(v93 + v168 + v169, v174, v61, v96);
              sub_1ADDCEE40(v98 + *(v79 + 36), v95, &qword_1EB5BA450, &unk_1AE25B3B0);
              if ((*v162)(v95, 1, v173) == 1)
              {
                sub_1ADDCEDE0(v95, &qword_1EB5BA450, &unk_1AE25B3B0);
                result = (v153)(v97, v156, v154);
                if (__OFADD__(v155, v92))
                {
                  goto LABEL_75;
                }

                v101 = v171;
                v100 = v172;
                *(v97 + *(v172 + 20)) = v155 + v92;
                sub_1ADDDE470(v97, v101, type metadata accessor for FinalizedTimestamp);
                result = (v166)(v101, 0, 1, v100);
                v102 = v174[1];
                v103 = v102 - *v174;
                if (__OFSUB__(v102, *v174))
                {
                  goto LABEL_76;
                }

                v104 = v171;
                *(v171 + *(v160 + 20)) = v103;
                sub_1ADDE4044(v104);
                sub_1ADE0DCEC(v104, type metadata accessor for FinalizedTimestampRange);
                v62 = v99;
                result = sub_1ADDCEDE0(v174, v61, v99);
                v75 = __OFADD__(v92, v103);
                v92 += v103;
                if (v75)
                {
                  goto LABEL_77;
                }

                v91 = v165;
                v105 = v170;
                sub_1ADDD27F0(v165, v170, type metadata accessor for FinalizedTimestamp);
                v166(v105, 0, 1, v172);
                *(v105 + *(v173 + 20)) = 1;
                v79 = v151;
              }

              else
              {
                v106 = v61;
                v107 = v95;
                v108 = v161;
                sub_1ADDD27F0(v107, v161, type metadata accessor for RetainedMapRun);
                v109 = v108;
                v110 = v148;
                sub_1ADDCEE40(v109, v148, &qword_1EB5BA460, &qword_1AE251020);
                v111 = v172;
                if (v149(v110, 1, v172) == 1)
                {
                  sub_1ADDCEDE0(v110, &qword_1EB5BA460, &qword_1AE251020);
                  v112 = v165;
                  result = (v153)(v165, v156, v154);
                  if (__OFADD__(v155, v92))
                  {
                    goto LABEL_79;
                  }

                  v114 = v171;
                  v113 = v172;
                  *(v112 + *(v172 + 20)) = v155 + v92;
                  sub_1ADDDE470(v112, v114, type metadata accessor for FinalizedTimestamp);
                  result = (v166)(v114, 0, 1, v113);
                  v115 = v174[1];
                  v116 = v115 - *v174;
                  if (__OFSUB__(v115, *v174))
                  {
                    goto LABEL_80;
                  }

                  v117 = v171;
                  *(v171 + *(v160 + 20)) = v116;
                  sub_1ADDE4044(v117);
                  sub_1ADE0DCEC(v117, type metadata accessor for FinalizedTimestampRange);
                  result = sub_1ADDCEDE0(v174, v61, &qword_1AE241B60);
                  v75 = __OFADD__(v92, v116);
                  v92 += v116;
                  if (v75)
                  {
                    goto LABEL_81;
                  }

                  v118 = v165;
                  v105 = v170;
                  sub_1ADDD27F0(v165, v170, type metadata accessor for FinalizedTimestamp);
                  v166(v105, 0, 1, v172);
                  v119 = v173;
                  v120 = *(v161 + *(v173 + 20));
                  sub_1ADE0DCEC(v161, type metadata accessor for RetainedMapRun);
                  v121 = *(v119 + 20);
                  v61 = v106;
                  *(v105 + v121) = v120;
                  v91 = v118;
                  v79 = v151;
                  v62 = &qword_1AE241B60;
                }

                else
                {
                  v122 = v147;
                  sub_1ADDD27F0(v110, v147, type metadata accessor for FinalizedTimestamp);
                  v123 = v171;
                  sub_1ADDDE470(v122, v171, type metadata accessor for FinalizedTimestamp);
                  result = (v166)(v123, 0, 1, v111);
                  v124 = v174[1];
                  if (__OFSUB__(v124, *v174))
                  {
                    goto LABEL_78;
                  }

                  v125 = v171;
                  *(v171 + *(v160 + 20)) = v124 - *v174;
                  sub_1ADDE4044(v125);
                  sub_1ADE0DCEC(v125, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DCEC(v122, type metadata accessor for FinalizedTimestamp);
                  v62 = &qword_1AE241B60;
                  sub_1ADDCEDE0(v174, v61, &qword_1AE241B60);
                  v105 = v170;
                  sub_1ADDD27F0(v161, v170, type metadata accessor for RetainedMapRun);
                  v91 = v165;
                }
              }

              (*v157)(v105, 0, 1, v173);
              result = swift_isUniquelyReferenced_nonNull_native();
              v95 = v163;
              if ((result & 1) == 0)
              {
                result = sub_1ADF799F0(v93);
                v93 = result;
              }

              if (v94 >= v93[2])
              {
                goto LABEL_72;
              }

              ++v94;
              sub_1ADDE4820(v170, v93 + v168 + *(v79 + 36) + v169);
              v178 = v93;
              v90 = v158;
              result = v159;
              if (v158 == v94)
              {
                v89 = v156;
                v87 = v132;
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

LABEL_66:
          sub_1ADDE2B98(result, v90);

          result = sub_1ADE0DCEC(v89, type metadata accessor for FinalizedTimestamp);
          v53 = v136;
          v54 = v142;
        }

        v55 = v79;
        a1 = v87;
        v51 = v139;
        v63 = v87 == v139;
        v59 = v138;
        v60 = v137;
        v52 = v145;
        if (v63)
        {
          goto LABEL_7;
        }
      }

      v78 = &qword_1EB5BA488;
      v79 = v55;
      v80 = v53;
      v81 = &unk_1AE25B3C0;
      goto LABEL_41;
    }

LABEL_7:
    sub_1ADDE5C20(&v177);
    goto LABEL_10;
  }

LABEL_90:
  __break(1u);
  return result;
}

void sub_1AE2253F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - v7);
  v9 = *(v2 + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle);
  v10 = *(v9 + 16);
  if (v10)
  {
    v20 = a1 + a2;
    if (!__OFADD__(a1, a2))
    {
      v11 = 0;
      v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v13 = *(v6 + 72);
      while (1)
      {
        sub_1ADDCEE40(v12, v8, &qword_1EB5BA148, &qword_1AE241B60);
        v15 = *v8;
        v14 = v8[1];
        v16 = v14 - *v8;
        if (__OFSUB__(v14, *v8))
        {
          break;
        }

        sub_1ADDCEDE0(v8, &qword_1EB5BA148, &qword_1AE241B60);
        if (__OFADD__(v15, v16))
        {
          goto LABEL_16;
        }

        if (v15 > a1 || v15 + v16 <= a1)
        {
          v17 = v15 < v20;
          if (v15 < a1)
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 1;
        }

        v18 = __OFADD__(v11, v17);
        v11 += v17;
        if (v18)
        {
          goto LABEL_17;
        }

        v12 += v13;
        if (!--v10)
        {
          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }
}

BOOL sub_1AE225774()
{
  v1 = OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameSequence;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence;
  swift_beginAccess();
  return *(*(v0 + v3) + 16) == 0;
}

uint64_t sub_1AE225824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v24 = a3;
  v8 = sub_1AE23C12C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  if (a4)
  {
    sub_1ADDDE470(a4 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, v17, type metadata accessor for Timestamp);
    v18 = type metadata accessor for Timestamp(0);
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for Timestamp(0);
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  v20 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v21 = sub_1AE23BFEC();
  result = (*(*(v21 - 8) + 16))(v14, a1 + v20, v21);
  *&v14[*(v12 + 20)] = *(a1 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  if (__OFADD__(a2, v24))
  {
    __break(1u);
  }

  else if (a2 + v24 >= a2)
  {
    sub_1AE23C00C();
    swift_beginAccess();
    sub_1AE2228B0(v17, v14, v11);
    (*(v9 + 8))(v11, v8);
    sub_1ADE0DCEC(v14, type metadata accessor for Replica);
    sub_1ADDCEDE0(v17, &qword_1EB5BA480, &qword_1AE25AAE0);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_1AE225B64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(id, uint64_t, uint64_t, void *))
{
  v12 = a3;
  v13 = a6;
  v14 = a1;
  a7(v12, a4, a5, a6);
}

void sub_1AE225C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v136 = *(v2 - 8);
  v137 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v134 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v118 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v133 = &v118 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v118 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v141 = &v118 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v140 = (&v118 - v17);
  v148 = sub_1AE23C12C();
  v18 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148 - 8);
  v131 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v118 - v23;
  v24 = type metadata accessor for Replica(0);
  v128 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v127 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v123 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v118 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v118 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v118 - v34;
  v35 = (a1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v118 = v35;
  v36 = v35[1];
  v37 = v36 + 64;
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v36 + 64);
  v145 = OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence;
  v119 = (v38 + 63) >> 6;
  v144 = (v18 + 16);
  v147 = (v18 + 32);
  v130 = v18;
  v135 = (v18 + 8);
  v120 = v36;

  v41 = 0;
  v124 = v37;
  v125 = v32;
  if (!v40)
  {
LABEL_5:
    if (v119 <= v41 + 1)
    {
      v43 = v41 + 1;
    }

    else
    {
      v43 = v119;
    }

    v44 = v43 - 1;
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v119)
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v76 - 8) + 56))(v32, 1, 1, v76);
        v40 = 0;
        v41 = v44;
        goto LABEL_14;
      }

      v40 = *(v37 + 8 * v42);
      ++v41;
      if (v40)
      {
        v41 = v42;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  while (1)
  {
    v42 = v41;
LABEL_13:
    v45 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v46 = v45 | (v42 << 6);
    v47 = v120;
    v48 = v127;
    sub_1ADDDE470(*(v120 + 48) + *(v128 + 72) * v46, v127, type metadata accessor for Replica);
    v49 = v130;
    v50 = v129;
    v51 = v148;
    (*(v130 + 16))(v129, *(v47 + 56) + *(v130 + 72) * v46, v148);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v53 = *(v52 + 48);
    sub_1ADDD27F0(v48, v32, type metadata accessor for Replica);
    (*(v49 + 32))(&v32[v53], v50, v51);
    (*(*(v52 - 8) + 56))(v32, 0, 1, v52);
LABEL_14:
    v54 = v143;
    sub_1ADDD2198(v32, v143, &qword_1EB5BA458, &qword_1AE251E00);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v56 = *(v55 - 8);
    v57 = *(v56 + 48);
    if (v57(v54, 1, v55) == 1)
    {
      break;
    }

    v58 = *(v55 + 48);
    v59 = v148;
    v138 = *v147;
    v60 = v139;
    (v138)(v139, &v54[v58], v148);
    v61 = type metadata accessor for Timestamp(0);
    v62 = v140;
    v63 = v141;
    (*(*(v61 - 8) + 56))(v140, 1, 1, v61);
    v64 = v145;
    v65 = v146;
    swift_beginAccess();
    sub_1ADDCEE40(v62, v63, &qword_1EB5BA480, &qword_1AE25AAE0);
    v66 = v137;
    sub_1ADDD27F0(v143, &v63[*(v137 + 48)], type metadata accessor for Replica);
    (*v144)(&v63[*(v66 + 64)], v60, v59);
    v67 = v63;
    v68 = v126;
    sub_1ADDCEE40(v67, v126, &qword_1EB5BA168, &unk_1AE25B3D0);
    v69 = *(v66 + 48);
    v70 = *(v66 + 64);
    v71 = v142;
    sub_1ADDD2198(v68, v142, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDD27F0(v68 + v69, v71 + v69, type metadata accessor for Replica);
    (v138)(v71 + v70, v68 + v70, v59);
    v72 = *(v65 + v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + v64) = v72;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = sub_1ADE56760(0, v72[2] + 1, 1, v72);
      *(v146 + v145) = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    if (v75 >= v74 >> 1)
    {
      v72 = sub_1ADE56760((v74 > 1), v75 + 1, 1, v72);
      *(v146 + v145) = v72;
    }

    sub_1ADDCEDE0(v141, &qword_1EB5BA168, &unk_1AE25B3D0);
    sub_1ADDCEDE0(v140, &qword_1EB5BA480, &qword_1AE25AAE0);
    v72[2] = v75 + 1;
    sub_1ADDD2198(v142, v72 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v75, &qword_1EB5BA168, &unk_1AE25B3D0);
    *(v146 + v145) = v72;
    swift_endAccess();
    (*v135)(v139, v148);
    v32 = v125;
    v37 = v124;
    if (!v40)
    {
      goto LABEL_5;
    }
  }

  v141 = v57;
  v142 = v56 + 48;

  v77 = *v118;
  v78 = *v118 + 64;
  v79 = 1 << *(*v118 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(*v118 + 64);
  v125 = (v79 + 63) >> 6;
  v140 = (v56 + 56);
  v126 = v77;

  v82 = 0;
  v83 = v123;
  v138 = v55;
  v139 = v78;
  if (!v81)
  {
LABEL_26:
    if (v125 <= v82 + 1)
    {
      v85 = v82 + 1;
    }

    else
    {
      v85 = v125;
    }

    v86 = v85 - 1;
    while (1)
    {
      v84 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        goto LABEL_45;
      }

      if (v84 >= v125)
      {
        v81 = 0;
        v96 = 1;
        v82 = v86;
        goto LABEL_35;
      }

      v81 = *(v78 + 8 * v84);
      ++v82;
      if (v81)
      {
        v82 = v84;
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v84 = v82;
LABEL_34:
    v87 = __clz(__rbit64(v81));
    v81 &= v81 - 1;
    v88 = v87 | (v84 << 6);
    v89 = v126;
    v90 = v127;
    sub_1ADDDE470(*(v126 + 48) + *(v128 + 72) * v88, v127, type metadata accessor for Replica);
    v91 = *(v89 + 56);
    v92 = v130;
    v93 = v129;
    v94 = v148;
    (*(v130 + 16))(v129, v91 + *(v130 + 72) * v88, v148);
    v95 = *(v55 + 48);
    sub_1ADDD27F0(v90, v83, type metadata accessor for Replica);
    (*(v92 + 32))(v83 + v95, v93, v94);
    v96 = 0;
LABEL_35:
    (*v140)(v83, v96, 1, v55);
    v97 = v83;
    v98 = v122;
    sub_1ADDD2198(v97, v122, &qword_1EB5BA458, &qword_1AE251E00);
    if ((v141)(v98, 1, v55) == 1)
    {
      break;
    }

    v99 = *(v55 + 48);
    v100 = v148;
    v143 = *v147;
    v101 = v131;
    (v143)(v131, v98 + v99, v148);
    v102 = type metadata accessor for Timestamp(0);
    v103 = v132;
    (*(*(v102 - 8) + 56))(v132, 1, 1, v102);
    v104 = v98;
    v106 = v145;
    v105 = v146;
    swift_beginAccess();
    v107 = v103;
    v108 = v133;
    sub_1ADDCEE40(v107, v133, &qword_1EB5BA480, &qword_1AE25AAE0);
    v109 = v137;
    sub_1ADDD27F0(v104, v108 + *(v137 + 48), type metadata accessor for Replica);
    (*v144)((v108 + *(v109 + 64)), v101, v100);
    v110 = v121;
    sub_1ADDCEE40(v108, v121, &qword_1EB5BA168, &unk_1AE25B3D0);
    v111 = *(v109 + 48);
    v112 = *(v109 + 64);
    v113 = v134;
    sub_1ADDD2198(v110, v134, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDD27F0(v110 + v111, v113 + v111, type metadata accessor for Replica);
    (v143)(v113 + v112, v110 + v112, v148);
    v114 = *(v105 + v106);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    *(v105 + v106) = v114;
    if ((v115 & 1) == 0)
    {
      v114 = sub_1ADE56760(0, v114[2] + 1, 1, v114);
      *(v146 + v145) = v114;
    }

    v117 = v114[2];
    v116 = v114[3];
    v83 = v123;
    v55 = v138;
    v78 = v139;
    if (v117 >= v116 >> 1)
    {
      v114 = sub_1ADE56760((v116 > 1), v117 + 1, 1, v114);
      *(v146 + v145) = v114;
    }

    sub_1ADDCEDE0(v133, &qword_1EB5BA168, &unk_1AE25B3D0);
    sub_1ADDCEDE0(v132, &qword_1EB5BA480, &qword_1AE25AAE0);
    v114[2] = v117 + 1;
    sub_1ADDD2198(v134, v114 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v117, &qword_1EB5BA168, &unk_1AE25B3D0);
    *(v146 + v145) = v114;
    swift_endAccess();
    (*v135)(v131, v148);
    if (!v81)
    {
      goto LABEL_26;
    }
  }
}

void sub_1AE226AF0(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a3 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = &a1[*a4];
  swift_beginAccess();
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  *(v9 + 1) = v8;
  *(v9 + 2) = v7;
  v12 = a1;

  sub_1ADE42CB8(v10, v11);
}

uint64_t sub_1AE226C04()
{
  swift_beginAccess();
  sub_1AE222B90();
  v1 = v0;
  v3 = v2;
  swift_beginAccess();
  sub_1AE222B90();
  v5 = v4;
  v7 = v6;
  sub_1AE23DA2C();

  MEMORY[0x1B26FB670](v1, v3);

  MEMORY[0x1B26FB670](0x73656D6974202C5DLL, 0xEF5B3A73706D6174);
  MEMORY[0x1B26FB670](v5, v7);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return 0x65636E6575716573;
}

uint64_t sub_1AE22718C(uint64_t a1)
{
  sub_1ADDCEE40(a1, v13, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v14)
  {
    sub_1ADDCEDE0(v13, &qword_1EB5BAA00, &qword_1AE2587A0);
    goto LABEL_6;
  }

  type metadata accessor for ObjCVersion();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  v2 = &v12[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = (v1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  sub_1ADF64C74(v4, v7);
  if (v8)
  {
    sub_1ADF64C74(v3, v6);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1AE227454(uint64_t a1)
{
  v2 = sub_1AE23C12C();
  v3 = *(v2 - 8);
  v98 = v2;
  v99 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v76 - v8;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Replica(0);
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  v78 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v78);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  v25 = a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp;
  sub_1ADDDE470(a1 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, &v76 - v23, type metadata accessor for Timestamp);
  v84 = v24;
  sub_1ADDD27F0(v24, v19, type metadata accessor for Replica);
  v26 = v10[4];
  v88 = v19;
  v82 = v10 + 4;
  v81 = v26;
  v26(v12, v19, v9);
  v96 = v25;
  sub_1ADDDE470(v25, v21, type metadata accessor for Timestamp);
  v27 = *&v21[*(v13 + 20)];
  v87 = v21;
  sub_1ADE0DCEC(v21, type metadata accessor for Replica);
  v28 = type metadata accessor for ObjCReplica(0);
  v29 = objc_allocWithZone(v28);
  v30 = v10[2];
  v30(&v29[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v12, v9);
  *&v29[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v27;
  v101.receiver = v29;
  v101.super_class = v28;
  v83 = v28;
  v31 = objc_msgSendSuper2(&v101, sel_init);
  v32 = v10[1];
  v89 = v12;
  v33 = v12;
  v34 = v9;
  v90 = v10 + 1;
  v80 = v32;
  v32(v33, v9);
  v35 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v36 = v93;
  v86 = v10 + 2;
  v85 = v30;
  v30(v93, &v31[v35], v9);
  v37 = *&v31[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];

  v38 = v36;
  *&v36[*(v97 + 20)] = v37;
  v39 = v94 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v40 = *v39;
  if (*(*v39 + 16))
  {

    v41 = sub_1ADDD8A6C(v38);
    if (v42)
    {
      v43 = v98;
      v44 = v95;
      (*(v99 + 16))(v95, *(v40 + 56) + *(v99 + 72) * v41, v98);
      sub_1ADE0DCEC(v38, type metadata accessor for Replica);

      v45 = 0;
      goto LABEL_6;
    }
  }

  sub_1ADE0DCEC(v38, type metadata accessor for Replica);
  v45 = 1;
  v43 = v98;
  v44 = v95;
LABEL_6:
  v46 = v99;
  v47 = (v99 + 56);
  v48 = *(v99 + 56);
  v48(v44, v45, 1, v43);
  v49 = *(v46 + 48);
  if ((v49)(v44, 1, v43))
  {
    v93 = v49;
    v94 = v48;
    v95 = v47;
    sub_1ADDCEDE0(v44, &qword_1EB5BB780, &qword_1AE24CD18);
    v50 = v96;
    v77 = v39;
    v51 = v84;
    sub_1ADDDE470(v96, v84, type metadata accessor for Timestamp);
    v52 = v88;
    sub_1ADDD27F0(v51, v88, type metadata accessor for Replica);
    v53 = v89;
    v81(v89, v52, v34);
    v54 = v87;
    sub_1ADDDE470(v50, v87, type metadata accessor for Timestamp);
    v55 = v97;
    v56 = *(v54 + *(v97 + 20));
    sub_1ADE0DCEC(v54, type metadata accessor for Replica);
    v57 = v83;
    v58 = objc_allocWithZone(v83);
    v59 = v85;
    v85(&v58[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v53, v34);
    *&v58[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v56;
    v100.receiver = v58;
    v100.super_class = v57;
    v60 = objc_msgSendSuper2(&v100, sel_init);
    v80(v53, v34);
    v61 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
    swift_beginAccess();
    v62 = v91;
    v59(v91, &v60[v61], v34);
    v63 = *&v60[OBJC_IVAR____TtC9Coherence11ObjCReplica_index];

    *(v62 + *(v55 + 20)) = v63;
    v64 = *(v77 + 1);
    if (*(v64 + 16))
    {

      v65 = sub_1ADDD8A6C(v62);
      v66 = v98;
      v67 = v92;
      if (v68)
      {
        (*(v99 + 16))(v92, *(v64 + 56) + *(v99 + 72) * v65, v98);
        sub_1ADE0DCEC(v62, type metadata accessor for Replica);

        v69 = 0;
      }

      else
      {

        sub_1ADE0DCEC(v62, type metadata accessor for Replica);
        v69 = 1;
      }
    }

    else
    {
      sub_1ADE0DCEC(v62, type metadata accessor for Replica);
      v69 = 1;
      v66 = v98;
      v67 = v92;
    }

    v72 = v93;
    v94(v67, v69, 1, v66);
    if (v72(v67, 1, v66))
    {
      sub_1ADDCEDE0(v67, &qword_1EB5BB780, &qword_1AE24CD18);
      v71 = 0;
    }

    else
    {
      v73 = v99;
      v74 = v79;
      (*(v99 + 16))(v79, v67, v66);
      sub_1ADDCEDE0(v67, &qword_1EB5BB780, &qword_1AE24CD18);
      v71 = sub_1AE23C0CC();
      (*(v73 + 8))(v74, v66);
    }
  }

  else
  {
    v70 = v79;
    (*(v46 + 16))(v79, v44, v43);
    sub_1ADDCEDE0(v44, &qword_1EB5BB780, &qword_1AE24CD18);
    v71 = sub_1AE23C0CC();
    (*(v46 + 8))(v70, v43);
  }

  return v71 & 1;
}

uint64_t sub_1AE227E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23C12C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Replica(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v15 = sub_1AE23BFEC();
  result = (*(*(v15 - 8) + 16))(v13, a3 + v14, v15);
  *&v13[*(v11 + 28)] = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else if (a1 + a2 >= a1)
  {
    sub_1AE23C00C();
    swift_beginAccess();
    sub_1ADF5F4C0(v13, v9);
    (*(v7 + 8))(v9, v6);
    sub_1ADE0DCEC(v13, type metadata accessor for Replica);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE2280DC(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v2 = *v1;
  swift_beginAccess();

  sub_1ADF5F770(v3, v10);
  sub_1ADF5F770(v2, &v8);
  v6 = v8;
  v7 = v9;
  v4 = &v6;
  MergeResult.merge(_:)(v4);

  return swift_endAccess();
}

id sub_1AE228360(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1AE2283B8(char **a1, uint64_t a2, int64_t *a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v168 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v142 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v142 - v13;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v162 = &v142 - v17;
  v155 = a3;
  v18 = a3[1];
  v153 = v15;
  if (v18 >= 1)
  {
    v19 = 0;
    v159 = (v15 + 8);
    v160 = v15 + 16;
    v158 = (v15 + 32);
    v20 = MEMORY[0x1E69E7CC0];
    v143 = a4;
    while (1)
    {
      v21 = v19++;
      v149 = v20;
      if (v19 < v18)
      {
        v154 = v18;
        v22 = *v155;
        v145 = v21;
        v23 = v153;
        v24 = v22 + *(v153 + 72) * v19;
        v25 = *(v153 + 72);
        v26 = v22;
        v147 = v22;
        v27 = *(v153 + 16);
        v27(v162, v24, v8, v16);
        v28 = v26 + v25 * v21;
        v29 = v161;
        v151 = v27;
        (v27)(v161, v28, v8);
        v30 = v162;
        LODWORD(v152) = sub_1ADF5EB00(v162);
        a4 = *(v23 + 8);
        (a4)(v29, v8);
        v150 = a4;
        (a4)(v30, v8);
        v31 = v145 + 2;
        v156 = v25;
        v32 = v147 + v25 * (v145 + 2);
        do
        {
          v19 = v154;
          if (v154 == v31)
          {
            break;
          }

          a4 = v5;
          v35 = v31;
          v36 = v151;
          (v151)(v162, v32, v8);
          v36(v161, v24, v8);
          v165 = sub_1AE23BFCC();
          LOWORD(v166) = v37;
          BYTE2(v166) = v38;
          BYTE3(v166) = v39;
          BYTE4(v166) = v40;
          BYTE5(v166) = v41;
          BYTE6(v166) = v42;
          HIBYTE(v166) = v43;
          v163 = sub_1AE23BFCC();
          LOWORD(v164) = v44;
          BYTE2(v164) = v45;
          BYTE3(v164) = v46;
          BYTE4(v164) = v47;
          BYTE5(v164) = v48;
          BYTE6(v164) = v49;
          HIBYTE(v164) = v50;
          v51 = bswap64(v165);
          v52 = bswap64(v163);
          if (v51 == v52 && (v51 = bswap64(v166), v52 = bswap64(v164), v51 == v52))
          {
            v33 = 0;
          }

          else
          {
            v33 = v51 < v52 ? -1 : 1;
          }

          v34 = v150;
          (v150)(v161, v8);
          v34(v162, v8);
          v19 = v35;
          v31 = v35 + 1;
          v32 += v156;
          v24 += v156;
          v5 = a4;
        }

        while (((v152 ^ (v33 >= 0)) & 1) != 0);
        if ((v152 & 1) == 0)
        {
          v20 = v149;
LABEL_30:
          a4 = v143;
          v21 = v145;
          goto LABEL_31;
        }

        v21 = v145;
        if (v19 < v145)
        {
          goto LABEL_137;
        }

        if (v145 < v19)
        {
          v142 = v5;
          v53 = v156 * (v19 - 1);
          v54 = v19 * v156;
          v55 = v19;
          v56 = v145;
          v57 = v145 * v156;
          v20 = v149;
          v154 = v19;
          do
          {
            if (v56 != --v55)
            {
              v58 = *v155;
              if (!*v155)
              {
                goto LABEL_143;
              }

              v59 = *v158;
              (*v158)(v148, v58 + v57, v8, v20);
              if (v57 < v53 || v58 + v57 >= (v58 + v54))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v53)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v59((v58 + v53), v148, v8);
              v20 = v149;
              v19 = v154;
            }

            ++v56;
            v53 -= v156;
            v54 -= v156;
            v57 += v156;
          }

          while (v56 < v55);
          v5 = v142;
          goto LABEL_30;
        }

        v20 = v149;
        a4 = v143;
      }

LABEL_31:
      v60 = v155[1];
      if (v19 < v60)
      {
        if (__OFSUB__(v19, v21))
        {
          goto LABEL_136;
        }

        if (v19 - v21 < a4)
        {
          if (__OFADD__(v21, a4))
          {
            goto LABEL_138;
          }

          if ((v21 + a4) >= v60)
          {
            v61 = v155[1];
          }

          else
          {
            v61 = v21 + a4;
          }

          if (v61 < v21)
          {
LABEL_139:
            __break(1u);
LABEL_140:
            v137 = sub_1ADF7ACAC(a4);
            goto LABEL_110;
          }

          if (v19 != v61)
          {
            v142 = v5;
            v62 = *v155;
            v63 = *(v153 + 72);
            v64 = v19;
            v65 = *(v153 + 16);
            v66 = *v155 + v63 * (v64 - 1);
            v67 = -v63;
            v145 = v21;
            v68 = (v21 - v64);
            v154 = v64;
            v156 = v62;
            v146 = v63;
            v69 = (v62 + v64 * v63);
            v147 = v61;
            do
            {
              v150 = v69;
              v151 = v68;
              v152 = v66;
              do
              {
                v65(v162, v69, v8, v20);
                (v65)(v161, v66, v8);
                v165 = sub_1AE23BFCC();
                LOWORD(v166) = v70;
                BYTE2(v166) = v71;
                BYTE3(v166) = v72;
                BYTE4(v166) = v73;
                BYTE5(v166) = v74;
                BYTE6(v166) = v75;
                HIBYTE(v166) = v76;
                v163 = sub_1AE23BFCC();
                LOWORD(v164) = v77;
                BYTE2(v164) = v78;
                BYTE3(v164) = v79;
                BYTE4(v164) = v80;
                BYTE5(v164) = v81;
                BYTE6(v164) = v82;
                HIBYTE(v164) = v83;
                v84 = bswap64(v165);
                v85 = bswap64(v163);
                if (v84 == v85 && (v84 = bswap64(v166), v85 = bswap64(v164), v84 == v85))
                {
                  v86 = 0;
                }

                else
                {
                  v86 = v84 < v85 ? -1 : 1;
                }

                a4 = v159;
                v87 = *v159;
                (*v159)(v161, v8);
                v87(v162, v8);
                if ((v86 & 0x80000000) == 0)
                {
                  break;
                }

                if (!v156)
                {
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
                }

                v88 = v157;
                a4 = v158;
                v89 = *v158;
                (*v158)(v157, v69, v8);
                swift_arrayInitWithTakeFrontToBack();
                v89(v66, v88, v8);
                v66 += v67;
                v69 += v67;
              }

              while (!__CFADD__(v68++, 1));
              v66 = v152 + v146;
              v68 = v151 - 1;
              v69 = &v150[v146];
              ++v154;
            }

            while (v154 != v147);
            v19 = v147;
            v5 = v142;
            v21 = v145;
          }
        }
      }

      if (v19 < v21)
      {
        goto LABEL_135;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v149;
      }

      else
      {
        v20 = sub_1ADE5522C(0, *(v149 + 2) + 1, 1, v149);
      }

      a4 = *(v20 + 2);
      v91 = *(v20 + 3);
      v92 = a4 + 1;
      if (a4 >= v91 >> 1)
      {
        v20 = sub_1ADE5522C((v91 > 1), a4 + 1, 1, v20);
      }

      *(v20 + 2) = v92;
      v93 = &v20[16 * a4];
      *(v93 + 4) = v21;
      *(v93 + 5) = v19;
      v94 = *v144;
      if (!*v144)
      {
        goto LABEL_145;
      }

      if (a4)
      {
        while (1)
        {
          v21 = v92 - 1;
          if (v92 >= 4)
          {
            break;
          }

          if (v92 == 3)
          {
            v95 = *(v20 + 4);
            v96 = *(v20 + 5);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_75:
            if (v98)
            {
              goto LABEL_124;
            }

            v111 = &v20[16 * v92];
            v113 = *v111;
            v112 = *(v111 + 1);
            v114 = __OFSUB__(v112, v113);
            v115 = v112 - v113;
            v116 = v114;
            if (v114)
            {
              goto LABEL_127;
            }

            v117 = &v20[16 * v21 + 32];
            v119 = *v117;
            v118 = *(v117 + 1);
            v105 = __OFSUB__(v118, v119);
            v120 = v118 - v119;
            if (v105)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v115, v120))
            {
              goto LABEL_131;
            }

            if (v115 + v120 >= v97)
            {
              if (v97 < v120)
              {
                v21 = v92 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v121 = &v20[16 * v92];
          v123 = *v121;
          v122 = *(v121 + 1);
          v105 = __OFSUB__(v122, v123);
          v115 = v122 - v123;
          v116 = v105;
LABEL_89:
          if (v116)
          {
            goto LABEL_126;
          }

          v124 = &v20[16 * v21];
          v126 = *(v124 + 4);
          v125 = *(v124 + 5);
          v105 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v105)
          {
            goto LABEL_129;
          }

          if (v127 < v115)
          {
            goto LABEL_3;
          }

LABEL_96:
          a4 = v21 - 1;
          if (v21 - 1 >= v92)
          {
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
            goto LABEL_139;
          }

          if (!*v155)
          {
            goto LABEL_142;
          }

          v132 = v20;
          v133 = *&v20[16 * a4 + 32];
          v134 = *&v20[16 * v21 + 40];
          sub_1AE228FD4((*v155 + *(v153 + 72) * v133), (*v155 + *(v153 + 72) * *&v20[16 * v21 + 32]), (*v155 + *(v153 + 72) * v134), v94);
          if (v5)
          {
            goto LABEL_118;
          }

          if (v134 < v133)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = sub_1ADF7ACAC(v132);
          }

          if (a4 >= *(v132 + 2))
          {
            goto LABEL_121;
          }

          v135 = &v132[16 * a4];
          *(v135 + 4) = v133;
          *(v135 + 5) = v134;
          v167 = v132;
          sub_1ADF7AC20(v21);
          v20 = v167;
          v92 = *(v167 + 2);
          if (v92 <= 1)
          {
            goto LABEL_3;
          }
        }

        v99 = &v20[16 * v92 + 32];
        v100 = *(v99 - 64);
        v101 = *(v99 - 56);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_122;
        }

        v104 = *(v99 - 48);
        v103 = *(v99 - 40);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_123;
        }

        v106 = &v20[16 * v92];
        v108 = *v106;
        v107 = *(v106 + 1);
        v105 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v105)
        {
          goto LABEL_125;
        }

        v105 = __OFADD__(v97, v109);
        v110 = v97 + v109;
        if (v105)
        {
          goto LABEL_128;
        }

        if (v110 >= v102)
        {
          v128 = &v20[16 * v21 + 32];
          v130 = *v128;
          v129 = *(v128 + 1);
          v105 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v105)
          {
            goto LABEL_132;
          }

          if (v97 < v131)
          {
            v21 = v92 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_3:
      v18 = v155[1];
      a4 = v143;
      if (v19 >= v18)
      {
        goto LABEL_107;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_107:
  v21 = *v144;
  if (*v144)
  {
    a4 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_140;
    }

    v137 = a4;
LABEL_110:
    v167 = v137;
    a4 = *(v137 + 2);
    if (a4 >= 2)
    {
      while (*v155)
      {
        v138 = *&v137[16 * a4];
        v139 = v137;
        v140 = *&v137[16 * a4 + 24];
        sub_1AE228FD4((*v155 + *(v8 + 72) * v138), (*v155 + *(v8 + 72) * *&v137[16 * a4 + 16]), (*v155 + *(v8 + 72) * v140), v21);
        if (v5)
        {
          goto LABEL_118;
        }

        if (v140 < v138)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1ADF7ACAC(v139);
        }

        if (a4 - 2 >= *(v139 + 2))
        {
          goto LABEL_134;
        }

        v141 = &v139[16 * a4];
        *v141 = v138;
        *(v141 + 1) = v140;
        v167 = v139;
        sub_1ADF7AC20(a4 - 1);
        v137 = v167;
        a4 = *(v167 + 2);
        if (a4 <= 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_144;
    }

LABEL_118:
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE228FD4(char *a1, char *a2, char *a3, char *a4)
{
  v88[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  v80 = *(v14 + 72);
  if (!v80)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (a2 - a1 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_75;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v80 == -1)
  {
LABEL_76:
    __break(1u);
  }

  v16 = (a2 - a1) / v80;
  v87 = a4;
  v88[0] = a1;
  if (v16 < v15 / v80)
  {
    v17 = v16 * v80;
    if (a4 < a1 || &a1[v17] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = &a4[v17];
    v86 = &a4[v17];
    if (v17 >= 1 && a2 < a3)
    {
      v77 = *(v9 + 16);
      v78 = (v9 + 16);
      v20 = (v9 + 8);
      v76 = a3;
      v21 = v77;
      do
      {
        (v21)(v13, a2, v8);
        (v21)(v81, a4, v8);
        v84 = sub_1AE23BFCC();
        LOWORD(v85) = v22;
        BYTE2(v85) = v23;
        BYTE3(v85) = v24;
        BYTE4(v85) = v25;
        BYTE5(v85) = v26;
        BYTE6(v85) = v27;
        HIBYTE(v85) = v28;
        v82 = sub_1AE23BFCC();
        LOWORD(v83) = v29;
        BYTE2(v83) = v30;
        BYTE3(v83) = v31;
        BYTE4(v83) = v32;
        BYTE5(v83) = v33;
        BYTE6(v83) = v34;
        HIBYTE(v83) = v35;
        v36 = bswap64(v84);
        v37 = bswap64(v82);
        if (v36 == v37 && (v36 = bswap64(v85), v37 = bswap64(v83), v36 == v37))
        {
          v38 = 0;
        }

        else if (v36 < v37)
        {
          v38 = -1;
        }

        else
        {
          v38 = 1;
        }

        v39 = *v20;
        (*v20)(v81, v8);
        v39(v13, v8);
        if (v38 < 0)
        {
          v40 = v80;
          if (a1 < a2 || a1 >= &a2[v80])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v40;
        }

        else
        {
          v40 = v80;
          v41 = &a4[v80];
          if (a1 < a4 || a1 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v87 = v41;
          a4 += v40;
        }

        a1 += v40;
        v88[0] = a1;
      }

      while (a4 < v79 && a2 < v76);
    }

    goto LABEL_73;
  }

  v18 = v15 / v80 * v80;
  if (a4 < a2 || &a2[v18] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v42 = &a4[v18];
  if (v18 < 1)
  {
    goto LABEL_72;
  }

  v43 = -v80;
  v73 = (v9 + 8);
  v74 = (v9 + 16);
  v44 = &a4[v18];
  v75 = a4;
  v79 = -v80;
  while (2)
  {
    v72 = v42;
    v45 = a2;
    v46 = &a2[v43];
    v77 = v45;
    v78 = v46;
    while (1)
    {
      if (v45 <= a1)
      {
        v88[0] = v45;
        v86 = v72;
        goto LABEL_73;
      }

      v48 = a3;
      v76 = v42;
      v49 = *v74;
      v80 = v44 + v43;
      v49(v13);
      (v49)(v81, v46, v8);
      v84 = sub_1AE23BFCC();
      LOWORD(v85) = v50;
      BYTE2(v85) = v51;
      BYTE3(v85) = v52;
      BYTE4(v85) = v53;
      BYTE5(v85) = v54;
      BYTE6(v85) = v55;
      HIBYTE(v85) = v56;
      v82 = sub_1AE23BFCC();
      LOWORD(v83) = v57;
      BYTE2(v83) = v58;
      BYTE3(v83) = v59;
      BYTE4(v83) = v60;
      BYTE5(v83) = v61;
      BYTE6(v83) = v62;
      HIBYTE(v83) = v63;
      v64 = bswap64(v84);
      v65 = bswap64(v82);
      if (v64 == v65 && (v64 = bswap64(v85), v65 = bswap64(v83), v64 == v65))
      {
        v66 = 0;
        v67 = v75;
      }

      else
      {
        v67 = v75;
        v66 = v64 < v65 ? -1 : 1;
      }

      v68 = *v73;
      (*v73)(v81, v8);
      v68(v13, v8);
      if (v66 < 0)
      {
        break;
      }

      v43 = v79;
      v69 = v80;
      a3 = (v48 + v79);
      v42 = v80;
      v46 = v78;
      if (v48 < v44 || a3 >= v44)
      {
        v47 = v80;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v48 == v44)
        {
          goto LABEL_49;
        }

        v47 = v80;
        swift_arrayInitWithTakeBackToFront();
      }

      v43 = v79;
      v42 = v47;
LABEL_49:
      v44 = v42;
      v45 = v77;
      if (v69 <= v67)
      {
        a2 = v77;
        goto LABEL_72;
      }
    }

    a2 = v78;
    v43 = v79;
    a3 = (v48 + v79);
    if (v48 < v77 || a3 >= v77)
    {
      swift_arrayInitWithTakeFrontToBack();
LABEL_67:
      v43 = v79;
    }

    else if (v48 != v77)
    {
      swift_arrayInitWithTakeBackToFront();
      goto LABEL_67;
    }

    v42 = v76;
    if (v44 > v67)
    {
      continue;
    }

    break;
  }

LABEL_72:
  v88[0] = a2;
  v86 = v42;
LABEL_73:
  sub_1ADF7ADC8(v88, &v87, &v86);
  return 1;
}

BOOL sub_1AE229750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v24 = a3;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v16 = *(v15 + 56);
  sub_1ADDCEE40(a1, &v23 - v13, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADDCEE40(a2, &v14[v16], &qword_1EB5BA460, &qword_1AE251020);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      sub_1ADDCEDE0(v14, &qword_1EB5BA460, &qword_1AE251020);
LABEL_4:
      v18 = v24(0);
      return *(a1 + *(v18 + 20)) == *(a2 + *(v18 + 20));
    }

    goto LABEL_7;
  }

  sub_1ADDCEE40(v14, v11, &qword_1EB5BA460, &qword_1AE251020);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    sub_1ADE0DCEC(v11, type metadata accessor for FinalizedTimestamp);
LABEL_7:
    v20 = &qword_1EB5BA4A0;
    v21 = &unk_1AE253DA0;
LABEL_8:
    sub_1ADDCEDE0(v14, v20, v21);
    return 0;
  }

  sub_1ADDD27F0(&v14[v16], v8, type metadata accessor for FinalizedTimestamp);
  if (*&v11[*(v5 + 20)] != *&v8[*(v5 + 20)])
  {
    sub_1ADE0DCEC(v8, type metadata accessor for FinalizedTimestamp);
    sub_1ADE0DCEC(v11, type metadata accessor for FinalizedTimestamp);
    v20 = &qword_1EB5BA460;
    v21 = &qword_1AE251020;
    goto LABEL_8;
  }

  v22 = sub_1AE23BF8C();
  sub_1ADE0DCEC(v8, type metadata accessor for FinalizedTimestamp);
  sub_1ADE0DCEC(v11, type metadata accessor for FinalizedTimestamp);
  sub_1ADDCEDE0(v14, &qword_1EB5BA460, &qword_1AE251020);
  if (v22)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_1AE229AAC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - v7;
  v68 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v18 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v22 = OBJC_IVAR____TtC9Coherence7ObjCRLE_rle;
  v71 = *(a3 + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle);
  v23 = *(v71 + 16);
  if (v23 == 1)
  {
    v57 = OBJC_IVAR____TtC9Coherence7ObjCRLE_rle;
    sub_1ADDCEE40(v71 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), &v55 - v20, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDD2198(&v21[*(v66 + 36)], v16, &qword_1EB5BA450, &unk_1AE25B3B0);
    v24 = type metadata accessor for RetainedMapRun(0);
    v25 = (*(*(v24 - 8) + 48))(v16, 1, v24);
    sub_1ADDCEDE0(v16, &qword_1EB5BA450, &unk_1AE25B3B0);
    v22 = v57;
    if (v25 != 1)
    {
      v71 = *(a3 + v57);
      v23 = *(v71 + 16);
      if (!v23)
      {
LABEL_55:
        __break(1u);
        return;
      }

      goto LABEL_8;
    }

LABEL_5:
    if (qword_1ED966C88 != -1)
    {
LABEL_51:
      swift_once();
    }

    v26 = sub_1AE23BFEC();
    __swift_project_value_buffer(v26, qword_1EB5D74E8);
    v27 = sub_1AE23BF7C();
    (*(v67 + 16))(v67, v72, a2, v27, -1);
LABEL_42:

    return;
  }

  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_8:
  v64 = v8;
  v28 = &a2[v72];
  if (__OFADD__(v72, a2))
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v56 = a3;
  v57 = v22;
  v55 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v69 = v71 + v55;
  v65 = v67 + 16;
  v59 = (v9 + 56);
  v60 = (v9 + 48);

  v29 = 0;
  v30 = &qword_1EB5BA148;
  v62 = v28;
  v63 = v23;
  v58 = v13;
  do
  {
    if (v29 >= *(v71 + 16))
    {
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
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v31 = *(v70 + 72);
    v32 = v30;
    sub_1ADDCEE40(v69 + v31 * v29, v18, v30, &qword_1AE241B60);
    v34 = *v18;
    v33 = v18[1];
    v35 = __OFSUB__(v33, *v18);
    v36 = v33 - *v18;
    if (v35)
    {
      goto LABEL_45;
    }

    v37 = v34 + v36;
    if (__OFADD__(v34, v36))
    {
      goto LABEL_46;
    }

    if (v28 >= v37)
    {
      v38 = (v34 + v36);
    }

    else
    {
      v38 = v28;
    }

    if (v34 > v72 || v37 <= v72)
    {
      if (v34 < v72 || v34 >= v28)
      {
        v30 = v32;
        sub_1ADDCEDE0(v18, v32, &qword_1AE241B60);
        goto LABEL_11;
      }

      v39 = &v38[-v34];
      if (__OFSUB__(v38, v34))
      {
        goto LABEL_48;
      }

      v40 = *v18;
    }

    else
    {
      v39 = &v38[-v72];
      if (__OFSUB__(v38, v72))
      {
        goto LABEL_47;
      }

      v40 = v72;
    }

    a2 = &unk_1AE25B3B0;
    sub_1ADDCEE40(v18 + *(v66 + 36), v13, &qword_1EB5BA450, &unk_1AE25B3B0);
    v41 = type metadata accessor for RetainedMapRun(0);
    if ((*(*(v41 - 8) + 48))(v13, 1, v41) == 1)
    {
      sub_1ADDCEDE0(v13, &qword_1EB5BA450, &unk_1AE25B3B0);
      v42 = v64;
      (*v59)(v64, 1, 1, v68);
    }

    else
    {
      v42 = v64;
      sub_1ADDCEE40(v13, v64, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADE0DCEC(v13, type metadata accessor for RetainedMapRun);
      if ((*v60)(v42, 1, v68) != 1)
      {
        v46 = v42;
        v47 = v61;
        sub_1ADDD27F0(v46, v61, type metadata accessor for FinalizedTimestamp);
        v48 = *&v47[*(v68 + 20)];
        v35 = __OFADD__(v48, v40);
        v49 = v48 + v40;
        if (v35)
        {
          goto LABEL_49;
        }

        v50 = v49 - v34;
        if (__OFSUB__(v49, v34))
        {
          goto LABEL_50;
        }

        a2 = v61;
        v51 = sub_1AE23BF7C();
        v45 = (*(v67 + 16))(v67, v40, v39, v51, v50);

        v13 = v58;
        sub_1ADE0DCEC(a2, type metadata accessor for FinalizedTimestamp);
        goto LABEL_35;
      }
    }

    sub_1ADDCEDE0(v42, &qword_1EB5BA460, &qword_1AE251020);
    if (qword_1ED966C88 != -1)
    {
      swift_once();
    }

    v43 = sub_1AE23BFEC();
    __swift_project_value_buffer(v43, qword_1EB5D74E8);
    v44 = sub_1AE23BF7C();
    v45 = (*(v67 + 16))(v67, v40, v39, v44, -1);

LABEL_35:
    v30 = v32;
    sub_1ADDCEDE0(v18, v32, &qword_1AE241B60);
    v28 = v62;
    v23 = v63;
    if (v45)
    {

      return;
    }

LABEL_11:
    ++v29;
  }

  while (v23 != v29);

  v52 = *(v56 + v57);
  v53 = *(v52 + 16);
  if (!v53)
  {
    goto LABEL_55;
  }

  a2 = *(v52 + v55 + v31 * (v53 - 1) + 8);
  if (a2 < v28)
  {
    v16 = (v28 - a2);
    if (__OFSUB__(v28, a2))
    {
      goto LABEL_53;
    }

    if (qword_1ED966C88 == -1)
    {
LABEL_41:
      v54 = sub_1AE23BFEC();
      __swift_project_value_buffer(v54, qword_1EB5D74E8);
      v27 = sub_1AE23BF7C();
      (*(v67 + 16))(v67, a2, v16, v27, -1);
      goto LABEL_42;
    }

LABEL_54:
    swift_once();
    goto LABEL_41;
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1AE22A3C4(uint64_t a1)
{
  sub_1ADFAFF70(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1AE22A438(uint64_t a1)
{
  result = sub_1AE22A490(&qword_1ED96A568, type metadata accessor for RetainedMapRun, &unk_1AE25B408);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE22A490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall MergeResult.merge(_:)(Coherence::MergeResult a1)
{
  v2 = **&a1.value;
  v3 = *(*&a1.value + 1);
  v4 = *v1;
  if (**&a1.value)
  {
    v5 = v4 == v2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_15;
  }

  if (*v1 > 1u)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    if (v2 == 1)
    {
      LOBYTE(v2) = 3;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v6 = 3;
    }

    else
    {
      v6 = **&a1.value;
    }

    if (*v1)
    {
      LOBYTE(v2) = v6;
    }
  }

  *v1 = v2;
LABEL_15:
  v7 = *(*&a1.value + 2);
  v8 = v1[1];
  if (v3)
  {
    v9 = v8 == v3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v1[1] <= 1u)
    {
      if (v3 == 2)
      {
        v10 = 3;
      }

      else
      {
        v10 = v3;
      }

      if (v1[1])
      {
        LOBYTE(v3) = v10;
      }

LABEL_28:
      v1[1] = v3;
      goto LABEL_29;
    }

    if (v8 == 2)
    {
      if (v3 == 1)
      {
        LOBYTE(v3) = 3;
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  v1[2] = (v1[2] | v7) & 1;
}

BOOL MergeResult.hasDeltaFromOther.getter()
{
  result = 1;
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {
      return result;
    }

    return (v0[1] & 0xFD) != 0;
  }

  if (!*v0)
  {
    return (v0[1] & 0xFD) != 0;
  }

  return result;
}

Coherence::MergeResult __swiftcall MergeResult.init()()
{
  if (qword_1ED9670C0 != -1)
  {
    v2 = v0;
    v3 = swift_once();
    v0 = v2;
  }

  v1 = byte_1ED96F222;
  *v0 = word_1ED96F220;
  *(v0 + 2) = v1;
  return v3;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MergeResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MergeResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1AE22A864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BEBE8[0];
  if (!qword_1EB5BEBE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BEBE8);
  }

  return result;
}

void sub_1AE22A8B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = a7;
  v10 = a6;
  v45 = a5;
  v11 = a3;
  v12 = a2;
  v13 = *(a1 + 16);
  if ((~v13 & 0xF000000000000007) != 0 && (v13 & 0xF000000000000000) == 0x2000000000000000)
  {
    v22 = (v13 & 0xFFFFFFFFFFFFFFFLL);
    v23 = v22[2];
    v24 = v22[3];
    v25 = v22[5];
    *&v42[48] = v22[4];
    v43 = v25;
    *&v42[16] = v23;
    *&v42[32] = v24;
    *v42 = v22[1];
    v17 = *(&v25 + 1);
    v38 = v25;
    v20 = v42[56];
    v36 = *&v42[24];
    v37 = *&v42[40];
    v35 = *&v42[8];
    v15 = *v42;
    sub_1ADFAEE10(v42, v41);
    v19 = v36;
    v21 = v37;
    v18 = v35;
    v16 = v38;
    v11 = a3;
    v9 = a7;
    v12 = a2;
    v10 = a6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v19 = 0uLL;
    v20 = 1;
    v21 = 0uLL;
  }

  *v42 = v15;
  *&v42[8] = v18;
  *&v42[24] = v19;
  *&v42[40] = v21;
  v42[56] = v20;
  *&v43 = v16;
  *(&v43 + 1) = v17;
  v44[0] = *v42;
  v44[1] = *&v42[16];
  v44[2] = *&v42[32];
  v44[3] = *&v42[48];
  v44[4] = v43;
  v30 = v11;
  v31 = v45;
  sub_1AE236910(v44, v12, 0, 0, v11, a4, v45, v10, v9);
  v33 = v32;
  sub_1ADFAECE8(v42);
  if (v8)
  {
  }

  else
  {
    v41[0] = v30;
    v41[1] = a4;
    v41[2] = v31;
    v41[3] = v10;
    v41[4] = v9;
    type metadata accessor for CRDTDictionaryRef(0, v41);
    v34 = swift_allocObject();
    sub_1AE22CF80(v33);

    *a8 = v34;
  }
}

uint64_t sub_1AE22AAC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v6 = *(a1 + 16);

  v7 = sub_1AE16CC2C(v6);

  v19 = 0;
  v8 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1AE237CE0(v7, a1, &v19, v8, WitnessTable, v18);

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = swift_allocObject();
      v11 = *(inited + 16);
      *(v10 + 16) = v11;
      sub_1ADE5215C(v11);

      inited = v10;
    }

    v12 = swift_allocObject();
    v13 = v18[3];
    *(v12 + 48) = v18[2];
    *(v12 + 64) = v13;
    *(v12 + 80) = v18[4];
    v14 = v18[1];
    *(v12 + 16) = v18[0];
    *(v12 + 32) = v14;
    v15 = v12 | 0x2000000000000000;
    v16 = *(inited + 16);
    *(inited + 16) = v15;
    sub_1ADE52174(v16);
  }

  return inited;
}

uint64_t sub_1AE22AC2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return sub_1ADECE30C(*(a2 + 16), *(*(a2 + 24) + 16));
  }

  (*(v9 + 32))(v13, v8, a2);
  if (sub_1ADF77EEC(*(v2 + *(a2 + 36)), *&v13[*(a2 + 36)]))
  {
    (*(v9 + 8))(v13, a2);
    return sub_1ADECE30C(*(a2 + 16), *(*(a2 + 24) + 16));
  }

  v15 = (*(*(a2 + 24) + 64))(v13, *(a2 + 16));
  (*(v9 + 8))(v13, a2);
  return v15;
}

uint64_t sub_1AE22AE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for CRDTDictionaryElement.Delta(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

void sub_1AE22AEE4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a5;
  v48 = a3;
  v8 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(0, a3, a4, a4);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - v13;
  v16 = a1[2];
  v15 = a1[3];
  if (v16)
  {
    v17 = a1[2];
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v16)
  {
    v18 = a1[3];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(a1[2], a1[3]);

  sub_1ADDF4A24(v17, v18, a2);
  if (v5)
  {

    v57 = *a1;
    sub_1ADDCEDE0(&v57, &qword_1EB5BBD18, &qword_1AE24F340);
    v56 = a1[1];
    sub_1ADDCEDE0(&v56, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v16, v15);
    v55 = a1[4];
    sub_1ADDCEDE0(&v55, qword_1EB5BBD20, &unk_1AE253900);
  }

  else
  {
    v21 = v19;
    v41 = v11;
    v42 = v14;
    v43 = a2;
    v44 = v16;
    v45 = v15;
    v22 = v48;
    v23 = v49;
    v24 = type metadata accessor for CRDTDictionaryElement.Delta(0, v48, v49, v20);
    *(v50 + *(v24 + 36)) = v21;
    if (a1[1])
    {
      type metadata accessor for CRDecoder();
      swift_allocObject();
      v25 = v43;

      v27 = sub_1ADDE77B4(v26, v25);

      v28 = *(*(*(v23 + 16) + 8) + 8);
      v29 = v42;
      v28(v27, v22);
      v30 = v47;
      v31 = v44;

      v52 = *a1;
      sub_1ADDCEDE0(&v52, &qword_1EB5BBD18, &qword_1AE24F340);

      sub_1ADE42CB8(v31, v45);
      v51 = a1[4];
      sub_1ADDCEDE0(&v51, qword_1EB5BBD20, &unk_1AE253900);
      v38 = v46;
      swift_storeEnumTagMultiPayload();
      (*(v30 + 32))(v50, v29, v38);
    }

    else
    {
      v32 = v44;
      if (a1[4])
      {
        v40[1] = v21;
        type metadata accessor for CRDecoder();
        swift_allocObject();
        v33 = v43;

        v42 = sub_1ADDE77B4(v34, v33);

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v37 = v41;
        (*(*(AssociatedConformanceWitness + 8) + 8))(v42, AssociatedTypeWitness);

        v53 = *a1;
        sub_1ADDCEDE0(&v53, &qword_1EB5BBD18, &qword_1AE24F340);
        sub_1ADE42CB8(v32, v45);

        v39 = v46;
        swift_storeEnumTagMultiPayload();
        (*(v47 + 32))(v50, v37, v39);
      }

      else
      {

        v54 = *a1;
        sub_1ADDCEDE0(&v54, &qword_1EB5BBD18, &qword_1AE24F340);
        sub_1ADE42CB8(v32, v45);
        swift_storeEnumTagMultiPayload();
      }
    }
  }
}

uint64_t sub_1AE22B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v45 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v41 - v8;
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(0, v5, v6, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;

  sub_1ADF78ED0(v17, &v50);
  v49 = v50;
  v47 = a1;
  sub_1ADDF5C7C(a1);
  v19 = v18;
  v48 = v20;

  (*(v14 + 16))(v16, v3, v13);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v22 = v19;
      v23 = v43;
      v24 = v44;
      v25 = v16;
      v26 = v45;
      v27 = (*(v44 + 32))(v43, v25, v45);
      MEMORY[0x1EEE9AC00](v27);
      *(&v41 - 4) = v5;
      *(&v41 - 3) = v6;
      v28 = v23;
      v29 = v47;
      *(&v41 - 2) = v23;
      *(&v41 - 1) = v29;
      v30 = v51;
      v31 = sub_1ADE6B9FC(sub_1AE044050, (&v41 - 6));
      if (v30)
      {

        return (*(v24 + 8))(v23, v26);
      }

      v37 = v31;
      result = (*(v24 + 8))(v28, v26);
      v38 = 0;
      v19 = v22;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }
  }

  else
  {
    v32 = v42;
    v33 = (*(v42 + 32))(v11, v16, v5);
    MEMORY[0x1EEE9AC00](v33);
    *(&v41 - 4) = v5;
    *(&v41 - 3) = v6;
    v34 = v47;
    *(&v41 - 2) = v11;
    *(&v41 - 1) = v34;
    v35 = v51;
    v36 = sub_1ADE6B9FC(sub_1ADE74458, (&v41 - 6));
    if (v35)
    {

      return (*(v32 + 8))(v11, v5);
    }

    v38 = v36;
    result = (*(v32 + 8))(v11, v5);
    v37 = 0;
  }

  v39 = v46;
  *v46 = 0;
  v39[1] = v38;
  v40 = v48;
  v39[2] = v19;
  v39[3] = v40;
  v39[4] = v37;
  return result;
}

uint64_t sub_1AE22B82C(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v34 - v5;
  v7 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(0, v3, v2, v6);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v37 = v3;
  v38 = v2;
  v14 = type metadata accessor for CRDTDictionaryElement(255, v3, v2, v13);
  v15 = sub_1AE23D7CC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *(v14 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  (*(v16 + 16))(v18, v39, v15, v21);
  v24 = (*(v19 + 48))(v18, 1, v14);
  v25 = (v41 + 16);
  if (v24 != 1)
  {
    (*(v19 + 32))(v23, v18, v14);
    (*v25)(v12, v40, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = v12;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = v34;
        v30 = v35;
        v32 = v36;
        (*(v35 + 32))(v34, v29, v36);
        v27 = (*(v38 + 104))(v31, v37);
        (*(v30 + 8))(v31, v32);
        (*(v19 + 8))(v23, v14);
        return v27 & 1;
      }

      (*(v19 + 8))(v23, v14);
    }

    else
    {
      (*(v19 + 8))(v23, v14);
      (*(v41 + 8))(v12, v7);
    }

LABEL_13:
    v27 = 1;
    return v27 & 1;
  }

  (*(v16 + 8))(v18, v15);
  (*v25)(v9, v40, v7);
  v26 = swift_getEnumCaseMultiPayload();
  if (!v26)
  {
    (*(v41 + 8))(v9, v7);
    goto LABEL_13;
  }

  if (v26 == 1)
  {
    (*(v41 + 8))(v9, v7);
  }

  v27 = 0;
  return v27 & 1;
}

double sub_1AE22BC98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v77 = a1;
  v76 = a3;
  v4 = *(a2 + 16);
  v5 = sub_1AE23D7CC();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v63 - v6;
  v72 = a2;
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  v69 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = &v63 - v9;
  v74 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v63 - v13;
  v15 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(0, v4, v7, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v73 = v4;
  v75 = v7;
  v23 = type metadata accessor for CRDTDictionaryElement(255, v4, v7, v22);
  v24 = sub_1AE23D7CC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v63 - v26;
  v28 = *(v23 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v63 - v31;
  (*(v25 + 16))(v27, v77, v24, v30);
  v33 = (*(v28 + 48))(v27, 1, v23);
  v77 = v16;
  v34 = (v16 + 16);
  if (v33 == 1)
  {
    (*(v25 + 8))(v27, v24);
    v35 = v78;
    (*v34)(v18, v78, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v28 + 56))(v76, 1, 1, v23);
        (*(v77 + 8))(v18, v15);
        return result;
      }

      goto LABEL_9;
    }

    v46 = v73;
    v47 = *(v74 + 32);
    v48 = v71;
    v47(v71, v18, v73);
    v49 = *(v35 + *(v72 + 36));
    v50 = v76;
    v47(v76, v48, v46);
    goto LABEL_12;
  }

  (*(v28 + 32))(v32, v27, v23);
  v38 = v78;
  (*v34)(v21, v78, v15);
  v39 = swift_getEnumCaseMultiPayload();
  if (!v39)
  {
    (*(v28 + 8))(v32, v23);
    v46 = v73;
    v52 = *(v74 + 32);
    v53 = v71;
    v52(v71, v21, v73);
    v49 = *(v38 + *(v72 + 36));
    v50 = v76;
    v52(v76, v53, v46);
LABEL_12:
    v54 = v46;
    goto LABEL_13;
  }

  v40 = v74;
  if (v39 != 1)
  {
    v55 = v71;
    v56 = v73;
    (*(v74 + 16))(v71, v32, v73);
    (*(v28 + 8))(v32, v23);
    v57 = *(v38 + *(v72 + 36));
    v58 = v76;
    (*(v40 + 32))(v76, v55, v56);
    *&v58[*(type metadata accessor for CRDTDictionaryElement(0, v56, v75, v59) + 36)] = v57;
    (*(v28 + 56))(v58, 0, 1, v23);
    goto LABEL_15;
  }

  v41 = v67;
  v42 = v68;
  v43 = v69;
  (*(v68 + 32))(v67, v21, v69);
  v44 = v70;
  v45 = v73;
  CRDT.merging(delta:)(v41, v73, v75, v70);
  (*(v42 + 8))(v41, v43);
  (*(v28 + 8))(v32, v23);
  if ((*(v40 + 48))(v44, 1, v45) == 1)
  {
    (*(v65 + 8))(v44, v66);
LABEL_9:
    (*(v28 + 56))(v76, 1, 1, v23);
    return result;
  }

  v60 = *(v40 + 32);
  v61 = v64;
  v60(v64, v44, v45);
  v62 = v71;
  v60(v71, v61, v45);
  v49 = *(v38 + *(v72 + 36));
  v50 = v76;
  v60(v76, v62, v45);
  v54 = v45;
LABEL_13:
  *&v50[*(type metadata accessor for CRDTDictionaryElement(0, v54, v75, v51) + 36)] = v49;
  (*(v28 + 56))(v50, 0, 1, v23);
LABEL_15:

  return result;
}

double sub_1AE22C45C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AE22B410(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_1AE22C4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a5;
  v75 = a2;
  v71 = a1;
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v61 - v13;
  v73 = AssociatedTypeWitness;
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v61 - v17;
  v18 = sub_1AE23D7CC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v76 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - v28;
  v77 = v8;
  v78 = v7;
  v74 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(0, v8, v7, v30);
  MEMORY[0x1EEE9AC00](v74);
  v62 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v61 - v33;
  v34 = *a3;
  v35 = a3[1];
  v82 = *a3;
  v83 = v35;
  v36 = *(v80 + *(a4 + 36));
  if (sub_1ADF7974C(v36))
  {
    v81 = v36;
    v82 = v34;
    v83 = v35;

    sub_1ADF777D8(&v82);
    (*(v19 + 16))(v24, v75, v18);
    v37 = v76;
    if ((*(v76 + 48))(v24, 1, a4) == 1)
    {
      (*(v19 + 8))(v24, v18);
      v38 = v77;
      v39 = v70;
      (*(*(v77 - 8) + 16))(v70, v80, v77);
      v40 = v78;
    }

    else
    {
      (*(v37 + 32))(v29, v24, a4);
      v38 = v77;
      v40 = v78;
      v44 = v67;
      (*(v78 + 96))(v71, v29, v77, v78);
      (*(v37 + 8))(v29, a4);
      v46 = v72;
      v45 = v73;
      if ((*(v72 + 48))(v44, 1, v73) == 1)
      {
        (*(v68 + 8))(v44, v69);
        v39 = v70;
      }

      else
      {
        v53 = *(v46 + 32);
        v54 = v64;
        v53(v64, v44, v45);
        v39 = v70;
        v53(v70, v54, v45);
      }
    }

    swift_storeEnumTagMultiPayload();
    v55 = v79;
    sub_1AE22AE48(v39, v81, v38, v40, v79);
    v57 = v38;
    goto LABEL_13;
  }

  (*(v19 + 16))(v21, v75, v18);
  v41 = v76;
  if ((*(v76 + 48))(v21, 1, a4) == 1)
  {
    (*(v19 + 8))(v21, v18);
    v43 = v77;
    v40 = v78;
LABEL_10:
    v51 = type metadata accessor for CRDTDictionaryElement.Delta(0, v43, v40, v42);
    return (*(*(v51 - 8) + 56))(v79, 1, 1, v51);
  }

  v47 = v65;
  (*(v41 + 32))(v65, v21, a4);
  v43 = v77;
  v40 = v78;
  v48 = v66;
  (*(v78 + 96))(v71, v47, v77, v78);
  v50 = v72;
  v49 = v73;
  if ((*(v72 + 48))(v48, 1, v73) == 1)
  {
    (*(v41 + 8))(v47, a4);
    (*(v68 + 8))(v48, v69);
    goto LABEL_10;
  }

  v59 = v63;
  (*(v50 + 32))(v63, v48, v49);
  v60 = v62;
  (*(v50 + 16))(v62, v59, v49);
  swift_storeEnumTagMultiPayload();
  (*(v50 + 8))(v59, v49);
  (*(v41 + 8))(v47, a4);
  v55 = v79;
  sub_1AE22AE48(v60, MEMORY[0x1E69E7CC0], v43, v40, v79);
  v57 = v43;
LABEL_13:
  v58 = type metadata accessor for CRDTDictionaryElement.Delta(0, v57, v40, v56);
  return (*(*(v58 - 8) + 56))(v55, 0, 1, v58);
}

uint64_t sub_1AE22CC78(uint64_t a1)
{
  v7 = 0;
  v8 = 0xE000000000000000;
  MEMORY[0x1B26FB670](91, 0xE100000000000000);

  sub_1ADF78ED0(v1, &v6);
  v2 = CRVersion.description.getter();
  v4 = v3;

  MEMORY[0x1B26FB670](v2, v4);

  MEMORY[0x1B26FB670](4074845, 0xE300000000000000);
  sub_1AE23DFCC();
  return v7;
}

uint64_t sub_1AE22CDAC()
{
  v0 = swift_allocObject();
  sub_1AE22CDE4();
  return v0;
}

void *sub_1AE22CDE4()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v3 = *(v2 + 80);
  v5 = type metadata accessor for CRDTDictionaryElement(255, *(v2 + 88), *(v2 + 112), v4);
  WitnessTable = swift_getWitnessTable();
  v8[0] = v3;
  v8[1] = v5;
  v9 = *(v2 + 96);
  v10 = WitnessTable;
  type metadata accessor for CRSetRef(0, v8);
  v1[2] = sub_1AE176A68();
  return v1;
}

uint64_t sub_1AE22CF40(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1AE22CF80(a1);
  return v2;
}

uint64_t sub_1AE22CF80(uint64_t a1)
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1AE22D064@<X0>(uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v16 = a2;
  v5 = *(*v4 + 88);
  v6 = type metadata accessor for CRDTDictionaryElement(255, v5, *(*v4 + 112), x3_0);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  swift_beginAccess();

  sub_1AE23CB7C();

  if ((*(*(v6 - 8) + 48))(v10, 1, v6))
  {
    (*(v8 + 8))(v10, v7);
    v11 = *(v5 - 8);
    v12 = 1;
    v13 = v16;
  }

  else
  {
    v11 = *(v5 - 8);
    v14 = v16;
    (*(v11 + 16))(v16, v10, v5);
    (*(v8 + 8))(v10, v7);
    v12 = 0;
    v13 = v14;
  }

  return (*(v11 + 56))(v13, v12, 1, v5);
}

uint64_t sub_1AE22D2F4(char *a1, char *a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v73 = a2;
  v74 = a1;
  v64 = *v5;
  v7 = *(v64 + 80);
  v8 = *(v64 + 88);
  v65 = *(v64 + 112);
  v9 = type metadata accessor for CRDTDictionaryElement(255, v8, v65, a5);
  swift_getTupleTypeMetadata2();
  v10 = sub_1AE23D7CC();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v60 - v11;
  v12 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v7;
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v60 - v17;
  v70 = v9;
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = sub_1AE23D7CC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v60 - v23;
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v63 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v60 - v33;
  v35 = v74;
  (*(v22 + 16))(v24, v32);
  if ((*(v25 + 48))(v24, 1, v8) == 1)
  {
    v36 = *(v22 + 8);
    v36(v24, v21);

    v37 = v66;
    v38 = v73;
    sub_1AE16D8FC(v73, v66);

    (*(v71 + 8))(v38, v72);
    v36(v35, v21);
    return (*(v67 + 8))(v37, v68);
  }

  else
  {
    v66 = v22;
    v67 = v21;
    v40 = *(v25 + 32);
    v68 = v34;
    v40(v34, v24, v8);
    v41 = v6[2];
    swift_beginAccess();
    if (*(*(v41 + 40) + 16) && (v42 = *(v64 + 104), , sub_1ADDFFB6C(v73, v72, v42), v44 = v43, , (v44 & 1) != 0))
    {
      v45 = v71;
      v46 = v72;
      v47 = *(v71 + 16);
      v65 = v42;
      v48 = v61;
      v47(v61, v73, v72);
      v64 = v25;
      (*(v25 + 16))(v63, v68, v8);
      swift_beginAccess();
      v49 = v62;
      v47(v62, v48, v46);

      v50 = v70;
      sub_1AE23CADC();
      v51 = sub_1AE23CAEC();
      v53 = v52;
      result = (*(v69 + 48))(v52, 1, v50);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v54 = v64;
        (*(v64 + 40))(v53, v63, v8);
        v51(v75, 0);
        v55 = *(v45 + 8);
        v55(v49, v46);
        v55(v48, v46);
        swift_endAccess();

        v56 = v60;
        sub_1ADE10580(v60);
        swift_beginAccess();
        type metadata accessor for Replica(0);
        sub_1ADDD828C(v56);
        sub_1AE017AB8(v56);
        swift_endAccess();

        v55(v73, v46);
        (*(v66 + 8))(v74, v67);
        return (*(v54 + 8))(v68, v8);
      }
    }

    else
    {
      v57 = v68;
      (*(v25 + 16))(v30, v68, v8);
      v40(v20, v30, v8);
      *&v20[*(type metadata accessor for CRDTDictionaryElement(0, v8, v65, v58) + 36)] = MEMORY[0x1E69E7CC0];

      v59 = v73;
      sub_1AE16D0B0(v73, v20);

      (*(v71 + 8))(v59, v72);
      (*(v66 + 8))(v74, v67);
      (*(v69 + 8))(v20, v70);
      return (*(v25 + 8))(v57, v8);
    }
  }

  return result;
}

void (*sub_1AE22DB2C(void *a1, uint64_t a2))(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *v2;
  v8 = sub_1AE23D7CC();
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (v4)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v6[4] = v11;
  v13 = *(v7 + 80);
  v6[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v6[6] = v14;
  v16 = *(v14 + 64);
  if (v4)
  {
    v6[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v6[7] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v6[8] = v17;
  (*(v15 + 16))();
  sub_1AE22D064(v12, v18);
  return sub_1AE22DD2C;
}

void sub_1AE22DD2C(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 64);
  if (a2)
  {
    v8 = v5[5];
    v9 = v5[6];
    v11 = v5[3];
    v10 = v5[4];
    v12 = v5[1];
    v13 = v5[2];
    (*(v13 + 16))(v11, v10, v12, a3);
    v14 = (*(v9 + 32))(v6, v7, v8);
    sub_1AE22D2F4(v11, v6, v14, v15, v16);
    (*(v13 + 8))(v10, v12);
  }

  else
  {
    v11 = v5[3];
    v10 = v5[4];
    sub_1AE22D2F4(v10, v7, a3, a4, a5);
  }

  free(v7);
  free(v6);
  free(v10);
  free(v11);

  free(v5);
}

uint64_t sub_1AE22DE30@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v18 = a3;
  v19 = a2;
  v20 = a1;
  v22 = a4;
  v7 = *(*v6 + 88);
  v8 = type metadata accessor for CRDTDictionaryElement(255, v7, *(*v6 + 112), x3_0);
  v21 = sub_1AE23D7CC();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v18 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  swift_beginAccess();

  sub_1AE23CB7C();

  if ((*(*(v8 - 8) + 48))(v11, 1, v8))
  {
    v16 = (*(v9 + 8))(v11, v21);
    return v19(v16);
  }

  else
  {
    (*(v12 + 16))(v15, v11, v7);
    (*(v9 + 8))(v11, v21);
    return (*(v12 + 32))(v22, v15, v7);
  }
}

uint64_t sub_1AE22E0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v9 = type metadata accessor for CRDTDictionaryElement(255, v8, *(*v4 + 112), x3_0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;

  sub_1AE16D8FC(a1, v14);

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else
  {
    v16 = *(TupleTypeMetadata2 + 48);
    v17 = *(v8 - 8);
    (*(v17 + 16))(a2, &v14[v16], v8);
    (*(*(v9 - 8) + 8))(&v14[v16], v9);
    (*(v17 + 56))(a2, 0, 1, v8);
    return (*(*(v7 - 8) + 8))(v14, v7);
  }
}

double sub_1AE22E388@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);

  sub_1AE16B474(a1, v5, v9);

  result = *v9;
  v7 = v9[1];
  v8 = v9[2];
  *a3 = v9[0];
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

uint64_t sub_1AE22E404()
{

  v1 = qword_1ED96F200;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1AE22E46C()
{
  sub_1AE22E404();

  return swift_deallocClassInstance();
}

uint64_t CRDTDictionary.copy(renamingReferences:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v92 = a3;
  v6 = *(a2 + 24);
  v112 = sub_1AE23D7CC();
  v107 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v92 - v9;
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  *&v96 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v92 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v92 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v92 - v26;
  v116 = v27;
  v28 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v93 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  v33 = *v3;
  v34 = *(a2 + 32);
  v113 = a2;
  v35 = *(a2 + 48);
  v115 = v34;
  v117 = v10;
  v95 = v34;
  CRDTDictionary.init()(v10, v6, v34, *(&v34 + 1), v35, &v122);
  v97 = a1;
  v36 = *a1;
  v114 = (v19 + 48);
  v106 = (v11 + 32);
  v105 = v6 - 8;
  v37 = *(v36 + 16);
  v104 = (v11 + 16);
  v102 = (v107 + 40);
  v101 = (v11 + 8);
  v100 = (v19 + 8);
  v107 = v35;
  v103 = v6;
  if (v37)
  {
    *&v118 = v33;
    CRDTDictionary.makeIterator()(&v121);
    v38 = v32;
    v94 = v32;
    v39 = v117;
    while (1)
    {
      *&v118 = v117;
      *(&v118 + 1) = v6;
      v119 = v115;
      v120 = v35;
      v40 = type metadata accessor for CRDTDictionary.Iterator(0, &v118);
      CRDTDictionary.Iterator.next()(v40, v38, v41);
      if ((*v114)(v38, 1, v116) == 1)
      {
        break;
      }

      v42 = v116;
      v43 = *(v116 + 48);
      v44 = v99;
      (*v106)(v99, v38, v39);
      v45 = *(v6 - 8);
      (*(v45 + 32))(&v44[v43], v38 + v43, v6);
      v46 = v108;
      v47 = v97;
      (*(*(v95 + 8) + 24))(v97, v39);
      v48 = *(*(v35 + 16) + 24);
      v49 = v110;
      v50 = v47;
      v51 = v42;
      v48(v50, v6);
      (*(v45 + 56))(v49, 0, 1, v6);
      sub_1AE22F7AC(v113);
      v52 = *v104;
      v53 = v109;
      (*v104)(v109, v46, v39);
      v54 = v96;
      v52(v96, v53, v39);
      v6 = v103;
      v55 = v111;
      sub_1AE22D064(v111, v56);
      v57 = v49;
      v35 = v107;
      v58 = (*v102)(v55, v57, v112);
      sub_1AE22D2F4(v55, v54, v58, v59, v60);
      v61 = *v101;
      (*v101)(v53, v39);
      v61(v46, v39);
      v62 = v51;
      v38 = v94;
      (*v100)(v44, v62);
    }
  }

  else
  {
    v98 = v21;
    *&v118 = v33;
    CRDTDictionary.makeIterator()(&v121);
    v95 = v19 + 16;
    *&v63 = v117;
    *(&v63 + 1) = v6;
    v96 = v63;
    v64 = v24;
    v65 = v116;
    while (1)
    {
      v118 = v96;
      v119 = v115;
      v120 = v35;
      v66 = type metadata accessor for CRDTDictionary.Iterator(0, &v118);
      v67 = v93;
      CRDTDictionary.Iterator.next()(v66, v93, v68);
      if ((*v114)(v67, 1, v116) == 1)
      {
        break;
      }

      v69 = *(v65 + 48);
      v70 = v99;
      (*v106)(v99, v67, v117);
      v71 = *(v6 - 8);
      v72 = *(v71 + 32);
      v72(&v70[v69], v67 + v69, v6);
      v73 = *v95;
      (*v95)(v64, v70, v65);
      v97 = *(v65 + 48);
      v74 = v98;
      v73(v98, v70, v65);
      v75 = &v74[*(v65 + 48)];
      v76 = v110;
      v72(v110, v75, v6);
      (*(v71 + 56))(v76, 0, 1, v6);
      sub_1AE22F7AC(v113);
      v77 = *v104;
      v78 = v64;
      v79 = v108;
      (*v104)(v108, v78, v117);
      v80 = v109;
      v77(v109, v79, v117);
      v6 = v103;
      v81 = v111;
      sub_1AE22D064(v111, v82);
      v83 = v76;
      v35 = v107;
      v84 = (*v102)(v81, v83, v112);
      sub_1AE22D2F4(v81, v80, v84, v85, v86);
      v87 = *v101;
      v88 = v79;
      v64 = v78;
      (*v101)(v88, v117);
      v89 = v70;
      v90 = v117;
      (*v100)(v89, v65);
      v87(v98, v90);
      (*(v71 + 8))(v97 + v78, v6);
      v87(v78, v90);
    }
  }

  result = sub_1ADDDCE74(v121);
  *v92 = v122;
  return result;
}

void *CRDTDictionary.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  type metadata accessor for CRDTDictionaryRef(0, v9);
  v7 = swift_allocObject();
  result = sub_1AE22CDE4();
  *a6 = v7;
  return result;
}

double CRDTDictionary.makeIterator()@<D0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = -v5;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *a1 = v4;
  a1[1] = v4 + 64;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v9 & v7;

  return result;
}

void CRDTDictionary.Iterator.next()(void *a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v7 = a1[6];
  v87 = a1[3];
  v8 = type metadata accessor for CRDTDictionaryElement(0, v87, v7, x3_0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v75 - v10;
  v11 = *(a1[2] - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15;
  v18 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v20);
  v21 = TupleTypeMetadata2;
  v95 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v76 = &v75 - v27;
  v28 = *v4;
  v29 = v4[1];
  v30 = v4[3];
  v96 = v4[2];
  v97 = v16;
  v31 = v4[4];
  v32 = v30;
  v88 = a2;
  v89 = v25;
  v81 = v9;
  v82 = v18;
  v84 = v11;
  v79 = v34;
  v80 = v33;
  v77 = v36;
  v78 = v35;
  v93 = v30;
  v94 = v29;
  v91 = v28;
  v92 = v31;
  v90 = v21;
  if (v31)
  {
LABEL_10:
    v86 = (v31 - 1) & v31;
    v43 = __clz(__rbit64(v31)) | (v32 << 6);
    v44 = *(v28 + 48) + *(v11 + 72) * v43;
    v45 = *(v11 + 16);
    v46 = v14;
    v83 = v14;
    v47 = v28;
    v48 = v25;
    v45(v46, v44, v16, v26);
    v49 = *(v47 + 56) + *(v9 + 72) * v43;
    v50 = v85;
    (*(v9 + 16))(v85, v49, v18);
    v51 = *(v21 + 48);
    (*(v11 + 32))(v48, v83, v16);
    (*(v9 + 32))(v48 + v51, v50, v18);
    v52 = v95;
    (*(v95 + 56))(v48, 0, 1, v21);
    v85 = v32;
    v42 = v94;
LABEL_11:
    v53 = *v4;
    v54 = v91;
    v55 = v96;
    sub_1ADFAEBFC(v91);
    sub_1ADDDCE74(v53);
    *v4 = v54;
    v4[1] = v42;
    v57 = v85;
    v56 = v86;
    v4[2] = v55;
    v4[3] = v57;
    v4[4] = v56;
    v58 = v89;
    v59 = v90;
    if ((*(v52 + 48))(v89, 1, v90) == 1)
    {
      (*(v77 + 8))(v58, v78);
      v60 = swift_getTupleTypeMetadata2();
      (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
    }

    else
    {
      v61 = v52;
      v95 = *(v52 + 32);
      v62 = v76;
      (v95)(v76, v58, v59);
      v63 = v97;
      v64 = v87;
      v65 = swift_getTupleTypeMetadata2();
      v94 = *(v65 + 48);
      v66 = v79;
      (*(v61 + 16))(v79, v62, v59);
      v96 = *(v59 + 48);
      v67 = v84;
      v68 = v88;
      (*(v84 + 32))(v88, v66, v63);
      v69 = v80;
      (v95)(v80, v62, v59);
      v70 = *(v59 + 48);
      (*(*(v64 - 8) + 16))(v68 + v94, v69 + v70, v64);
      v71 = *(v81 + 8);
      v72 = v69 + v70;
      v73 = v82;
      v71(v72, v82);
      (*(*(v65 - 8) + 56))(v68, 0, 1, v65);
      (*(v67 + 8))(v69, v97);
      v71(v66 + v96, v73);
    }
  }

  else
  {
    v37 = v14;
    v38 = (v96 + 64) >> 6;
    if (v38 <= v30 + 1)
    {
      v39 = v30 + 1;
    }

    else
    {
      v39 = (v96 + 64) >> 6;
    }

    v40 = (v39 - 1);
    v41 = v30;
    v42 = v94;
    while (1)
    {
      v32 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v32 >= v38)
      {
        v52 = v95;
        v74 = *(v95 + 56);
        v85 = v40;
        v74(v25, 1, 1, v21, v26);
        v86 = 0;
        goto LABEL_11;
      }

      v31 = *(v94 + 8 * v32);
      ++v41;
      if (v31)
      {
        v16 = v97;
        v11 = v84;
        v14 = v37;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void (*CRDTDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *(v7 + 32) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v7 + 40) = v10;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v10 + 64));
  }

  v13 = v12;
  v8[6] = v12;
  sub_1AE22F7AC(a3);
  (*(v11 + 16))(v13, a2, v9);
  v8[7] = sub_1AE22DB2C(v8, v13);
  return sub_1ADF5F1EC;
}

uint64_t CRDTDictionary.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRDTDictionary.copy(renamingReferences:)(&v7, a2, a3);
}

void *CRDTDictionary.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = CRDTDictionary.init()(a1, a2, a3, a4, a5, &v8);
  *a6 = v8;
  return result;
}

void sub_1AE22F7AC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v4;
  v7 = v3;
  type metadata accessor for CRDTDictionaryRef(0, v6);
  if ((sub_1AE23DFBC() & 1) == 0)
  {
    v5 = sub_1AE23837C();

    *v2 = v5;
  }
}

uint64_t sub_1AE22F854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v10 = *(a2 + a3 - 8);
  v11 = v5;
  v6 = *(a2 + a3 - 24);
  v9[0] = *(a2 + a3 - 40);
  v9[1] = v6;
  type metadata accessor for CRDTDictionary(0, v9);
  return CRDTDictionary.subscript.getter(a4, v7);
}

uint64_t sub_1AE22F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 16);
  v14 = *(a3 + a4 - 32);
  v15 = v6;
  v7 = type metadata accessor for CRDTDictionary(0, &v13);
  v8 = CRDTDictionary.subscript.modify(&v13, a3, v7);
  v10 = v9;
  v11 = sub_1AE23D7CC();
  (*(*(v11 - 8) + 24))(v10, a1, v11);
  return (v8)(&v13, 0);
}

uint64_t CRDTDictionary.subscript.setter(uint64_t a1, char *a2, uint64_t a3)
{
  v26 = a1;
  v25 = sub_1AE23D7CC();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v25 - v6;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_1AE22F7AC(a3);
  v16 = *(v9 + 16);
  v16(v15, a2, v8);
  v16(v12, v15, v8);
  sub_1AE22D064(v7, v17);
  v19 = v25;
  v18 = v26;
  v20 = (*(v5 + 24))(v7, v26, v25);
  sub_1AE22D2F4(v7, v12, v20, v21, v22);
  v23 = *(v9 + 8);
  v23(a2, v8);
  (*(v5 + 8))(v18, v19);
  return (v23)(v15, v8);
}

uint64_t CRDTDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  v7[1] = *(a4 + 16);
  v7[2] = v5;
  v8 = *(a4 + 48);
  v9 = a2;
  v10 = a3;
  return sub_1AE22DE30(a1, sub_1AE237BEC, v7, a5, a4);
}

uint64_t CRDTDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE2386F0(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*CRDTDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x90uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[9] = a5;
  v10[10] = v5;
  v12 = *(a5 + 24);
  v10[11] = v12;
  v13 = *(v12 - 8);
  v10[12] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[13] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[13] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  *(v11 + 112) = v15;
  v17 = *(a5 + 16);
  *(v11 + 120) = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  *(v11 + 128) = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  *(v11 + 136) = v20;
  (*(v19 + 16))();
  *(v11 + 16) = v17;
  *(v11 + 24) = v12;
  *(v11 + 32) = *(a5 + 32);
  *(v11 + 48) = *(a5 + 48);
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;
  sub_1AE22DE30(a2, sub_1AE237BEC, v11, v16, v21);
  return sub_1AE22FE90;
}

void sub_1AE22FE90(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v8 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 72);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 104), v5, v9);
    sub_1AE2386F0(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_1AE2386F0(*(*a1 + 112), v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

void CRDTDictionary.merge(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v19 = *a1;
  if (*(*v4 + 16) == *(v19 + 16))
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }

    v14 = byte_1ED96F222;
    *a4 = word_1ED96F220;
    *(a4 + 2) = v14;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_1AE1755D4(&v19, a2, WitnessTable);
    v9 = *(*v4 + 16);
    swift_beginAccess();
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    swift_beginAccess();
    v12 = v8[3];
    v18 = 0;

    sub_1ADF6457C(v13, &v18, v11);
    sub_1ADF6457C(v12, &v18, v10);

    switch(v18)
    {
      case 1:

        sub_1AE22F7AC(a2);
        *(*v4 + 16) = v8;

        if (qword_1EB5B9910 != -1)
        {
          swift_once();
        }

        v15 = &word_1EB5D750B;
        break;
      case 2:
        if (qword_1EB5B9908 != -1)
        {
          swift_once();
        }

        v15 = &word_1EB5D7508;
        break;
      case 3:
        sub_1AE22F7AC(a2);

        sub_1AE16F8E0(v8, a4);

        return;
      default:
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v15 = &word_1ED96F220;
        break;
    }

    v16 = *v15;
    v17 = *(v15 + 2);

    *a4 = v16;
    *(a4 + 2) = v17;
  }
}

uint64_t CRDTDictionary.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  if (((*(*(*(a2 + 48) + 16) + 80))() & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1AE1705C0(v2);

  return v3;
}

void CRDTDictionary.visitReferences(_:)(void *a1, void *a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a2[3];
  v83 = a2[6];
  v84 = v9;
  v10 = type metadata accessor for CRDTDictionaryElement(0, v9, v83, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v71 - v14;
  v85 = a2;
  v15 = *(a2[2] - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v71 - v20;
  v97 = v21;
  v94 = v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = sub_1AE23D7CC();
  v24 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v71 - v28;
  v30 = *(*v6 + 16);
  swift_beginAccess();
  v31 = *(v30 + 40);
  v32 = v29;
  v33 = *(v31 + 64);
  v73 = v31 + 64;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v72 = (v34 + 63) >> 6;
  v91 = TupleTypeMetadata2;
  v89 = TupleTypeMetadata2 - 8;
  v75 = v15 + 16;
  v74 = v11 + 16;
  v95 = (v11 + 32);
  v96 = (v15 + 32);
  v88 = (v24 + 32);
  v81 = v11;
  v37 = (v11 + 8);
  v38 = v32;
  v86 = v37;
  v78 = v15;
  v39 = (v15 + 8);
  v40 = v26;
  v87 = v39;
  v82 = v31;

  v41 = 0;
  v80 = v18;
  v42 = a1;
  v77 = a1;
  v93 = v26;
  v76 = v38;
  if (v36)
  {
    while (1)
    {
      v43 = v94;
      v44 = v41;
LABEL_13:
      v49 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v50 = v49 | (v44 << 6);
      v51 = v82;
      v52 = v78;
      v53 = v97;
      (*(v78 + 16))(v92, *(v82 + 48) + *(v78 + 72) * v50, v97);
      v54 = v81;
      v55 = v79;
      (*(v81 + 16))(v79, *(v51 + 56) + *(v81 + 72) * v50, v43);
      v56 = v91;
      v57 = *(v91 + 48);
      v58 = v93;
      (*(v52 + 32))(v93, v92, v53);
      v59 = v55;
      v47 = v56;
      v40 = v58;
      (*(v54 + 32))(&v58[v57], v59, v43);
      v60 = 0;
      v46 = v44;
      v18 = v80;
      v48 = v77;
      v38 = v76;
LABEL_14:
      v61 = *(v47 - 8);
      (*(v61 + 56))(v40, v60, 1, v47);
      (*v88)(v38, v40, v90);
      if ((*(v61 + 48))(v38, 1, v47) == 1)
      {
        break;
      }

      v62 = *(v47 + 48);
      v63 = v97;
      (*v96)(v18, v38, v97);
      v64 = v38;
      v65 = v94;
      (*v95)(v98, &v38[v62]);
      v67 = v48[3];
      v66 = v48[4];
      __swift_project_boxed_opaque_existential_1(v48, v67);
      if ((*(v66 + 8))(v67, v66) & 1) != 0 || ((*(*(v85[4] + 8) + 48))(v48, v63), v68 = v48[3], v69 = v48[4], __swift_project_boxed_opaque_existential_1(v48, v68), ((*(v69 + 8))(v68, v69)))
      {

        (*v86)(v98, v65);
        (*v87)(v18, v63);
        return;
      }

      v42 = v48;
      v70 = v98;
      (*(*(v83 + 16) + 48))(v48, v84);
      (*v86)(v70, v65);
      (*v87)(v18, v63);
      v41 = v46;
      v40 = v93;
      v38 = v64;
      if (!v36)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v72 <= v41 + 1)
    {
      v45 = v41 + 1;
    }

    else
    {
      v45 = v72;
    }

    v46 = v45 - 1;
    v47 = v91;
    v48 = v42;
    while (1)
    {
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v44 >= v72)
      {
        v36 = 0;
        v60 = 1;
        goto LABEL_14;
      }

      v36 = *(v73 + 8 * v44);
      ++v41;
      if (v36)
      {
        v43 = v94;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

Swift::Bool __swiftcall CRDTDictionary.needToFinalizeTimestamps()()
{

  v0 = sub_1ADDFB6C0();

  return v0 & 1;
}

void CRDTDictionary.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{

  v5 = sub_1ADDFB6C0();

  if (v5)
  {
    sub_1AE22F7AC(a2);
    v6 = *v2;

    sub_1AE1741D4(a1);

    v7 = *(v6 + 16);
    v8 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v8);
    type metadata accessor for CRDTDictionaryElement(0, *(a2 + 24), *(a2 + 48), v9);

    v10 = sub_1AE23CAFC();

    *(v7 + 40) = v10;
  }
}

double CRDTDictionary.version.getter@<D0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;

  return result;
}

uint64_t static CRDTDictionary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{

  v3 = sub_1AE16CE24(v2);

  return v3 & 1;
}

void CRDTDictionary.actionUndoingDifference(from:)(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v97 = a3;
  v6 = 0;
  v7 = a2[6];
  v8 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = sub_1AE23D7CC();
  v140 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v94 - v12;
  v115 = AssociatedTypeWitness;
  v123 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v94 - v14;
  v116 = v8;
  v114 = v7;
  v16 = type metadata accessor for CRDTDictionaryElement(255, v8, v7, v15);
  v113 = sub_1AE23D7CC();
  v109 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v126 = &v94 - v17;
  v121 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v94 - v23;
  v24 = a2;
  v25 = a2[2];
  v120 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v94 - v30;
  v142 = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v129 = sub_1AE23D7CC();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v136 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v94 - v33;
  v35 = *(*v3 + 16);
  v36 = *(*a1 + 16);
  if (v35[6] == v36[6])
  {
    v95 = 0;
    swift_retain_n();

    goto LABEL_5;
  }

  if (qword_1ED96B308 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    sub_1AE23D6AC();
    v95 = v6;
    v37 = v143;
    v38 = BYTE8(v143);
    v39 = v144;

    v40 = v38;
    v36 = sub_1AE16CB8C(v37, v38, v39);

    v35 = sub_1AE16CB8C(v37, v40, v39);

LABEL_5:
    v41 = v24[5];

    v148 = sub_1AE23C9EC();
    v42 = v116;
    v147 = sub_1AE23C9CC();
    v43 = sub_1AE23C9CC();
    v145 = 0;
    v146 = v43;
    v143 = 0u;
    v144 = 0u;
    MEMORY[0x1EEE9AC00](v43);
    v141 = v25;
    *(&v94 - 6) = v25;
    *(&v94 - 5) = v42;
    *(&v94 - 4) = v24[4];
    *(&v94 - 3) = v41;
    v135 = v41;
    v44 = v114;
    *(&v94 - 2) = v114;
    *(&v94 - 1) = &v148;
    MEMORY[0x1EEE9AC00](v45);
    *(&v94 - 2) = &v147;
    *(&v94 - 1) = v36;
    sub_1AE1710B0(v36, &v143, sub_1AE239A58, v46, sub_1AE238A24, (&v94 - 4));

    sub_1ADDCEDE0(&v143, &qword_1EB5BAA40, &unk_1AE24EC50);
    swift_beginAccess();
    v47 = v35[5];

    v96 = v35;

    v48 = *(v47 + 64);
    v108 = v47 + 64;
    v119 = v47;
    v49 = 1 << *(v47 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v48;
    v130 = v36;
    swift_beginAccess();
    v52 = 0;
    v107 = (v49 + 63) >> 6;
    v128 = TupleTypeMetadata2 - 8;
    v131 = (v120 + 16);
    v117 = v121 + 16;
    v138 = (v120 + 32);
    v133 = (v121 + 32);
    v127 += 4;
    v124 = (v121 + 48);
    v111 = v44 + 72;
    v110 = (v123 + 6);
    v103 = (v123 + 4);
    v102 = (v123 + 2);
    v101 = (v123 + 7);
    v100 = (v123 + 1);
    v123 = (v121 + 8);
    v122 = (v120 + 8);
    v99 = (v140 + 1);
    ++v109;
    v53 = v98;
    v137 = v28;
    v54 = v136;
    v139 = v34;
    if (v51)
    {
      break;
    }

LABEL_11:
    if (v107 <= v52 + 1)
    {
      v56 = v52 + 1;
    }

    else
    {
      v56 = v107;
    }

    v25 = (v56 - 1);
    v57 = v133;
    v6 = TupleTypeMetadata2;
    while (1)
    {
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v55 >= v107)
      {
        v51 = 0;
        v72 = 1;
        goto LABEL_19;
      }

      v51 = *(v108 + 8 * v55);
      ++v52;
      if (v51)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v55 = v52;
LABEL_18:
    v58 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v59 = v58 | (v55 << 6);
    v60 = v119;
    v61 = v120;
    v62 = v132;
    v63 = v141;
    (*(v120 + 16))(v132, *(v119 + 48) + *(v120 + 72) * v59, v141);
    v64 = v121;
    v65 = *(v60 + 56) + *(v121 + 72) * v59;
    v66 = v118;
    v67 = v142;
    (*(v121 + 16))(v118, v65, v142);
    v68 = *(TupleTypeMetadata2 + 48);
    v69 = *(v61 + 32);
    v54 = v136;
    v70 = v62;
    v6 = TupleTypeMetadata2;
    v69(v136, v70, v63);
    v71 = v66;
    v57 = v133;
    (*(v64 + 32))(&v54[v68], v71, v67);
    v72 = 0;
    v25 = v55;
    v28 = v137;
    v34 = v139;
LABEL_19:
    v73 = *(v6 - 8);
    (*(v73 + 56))(v54, v72, 1, v6);
    (*v127)(v34, v54, v129);
    if ((*(v73 + 48))(v34, 1, v6) == 1)
    {
      break;
    }

    v140 = v25;
    v74 = *(v6 + 48);
    v24 = v141;
    (*v138)(v28, v34, v141);
    v75 = *v57;
    v76 = v142;
    v75(v53, &v34[v74], v142);

    v77 = v53;
    v78 = v126;
    sub_1AE23CB7C();

    if ((*v124)(v78, 1, v76) == 1)
    {
      (*v123)(v77, v142);
      (*v122)(v28, v24);
      (*v109)(v78, v113);
      v34 = v139;
      v52 = v140;
      v53 = v77;
      if (!v51)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v79 = v142;
      v80 = v112;
      v75(v112, v78, v142);
      v81 = v125;
      (*(v114 + 72))(v80, v116);
      v82 = v81;
      v83 = v115;
      if ((*v110)(v82, 1, v115) == 1)
      {
        v84 = *v123;
        (*v123)(v80, v79);
        v84(v77, v79);
        v28 = v137;
        (*v122)(v137, v141);
        (*v99)(v125, v106);
      }

      else
      {
        v24 = v104;
        (*v103)(v104, v125, v83);
        v85 = v141;
        (*v131)(v132, v137, v141);
        v86 = v105;
        (*v102)(v105, v24, v83);
        (*v101)(v86, 0, 1, v83);
        sub_1AE23CB1C();
        v28 = v137;
        sub_1AE23CB8C();
        (*v100)(v24, v83);
        v87 = *v123;
        (*v123)(v80, v79);
        v87(v77, v79);
        (*v122)(v28, v85);
      }

      v53 = v77;
      v54 = v136;
      v34 = v139;
      v52 = v140;
      if (!v51)
      {
        goto LABEL_11;
      }
    }
  }

  v88 = v148;
  if (sub_1AE23D32C() > 0 || sub_1AE23CA7C() > 0)
  {

    goto LABEL_30;
  }

  v92 = sub_1AE23CA7C();

  if (v92 > 0)
  {
LABEL_30:
    v90 = v146;
    v89 = v147;
    v91 = v97;
    *v97 = v88;
    v91[1] = v89;
    v91[2] = v90;
  }

  else
  {

    v93 = v97;
    *v97 = 0;
    v93[1] = 0;
    v93[2] = 0;
  }
}

void CRDTDictionary.apply(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[3];
  v153 = a2[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v152 = sub_1AE23D7CC();
  v7 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v146 - v8;
  v9 = a2[2];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v149 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v150 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v183 = &v146 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v146 - v15;
  v177 = AssociatedTypeWitness;
  v155 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v146 - v18;
  v167 = v19;
  v20 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v168 = &v146 - v21;
  v22 = swift_getTupleTypeMetadata2();
  v184 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v188 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v166 = &v146 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v165 = &v146 - v27;
  v156 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v174 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v146 - v33;
  v189 = v35;
  v36 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v173 = &v146 - v37;
  v180 = sub_1AE23D7CC();
  v185 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v163 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v179 = (&v146 - v40);
  v195 = v9;
  v41 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v146 - v42;
  v44 = *a1;
  if (!*a1)
  {
    return;
  }

  v148 = v7;
  v193 = v34;
  v157 = v16;
  v45 = a1[2];
  v176 = a1[1];
  sub_1AE22F7AC(a2);
  v194 = v5;
  v192 = a2;
  v147 = v45;
  v46 = v2;
  if ((v44 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    sub_1AE23D36C();
    v44 = v196[4];
    v47 = v196[5];
    v48 = v196[6];
    v187 = v196[7];
    v49 = v196[8];
  }

  else
  {
    v50 = -1 << *(v44 + 32);
    v47 = v44 + 56;
    v48 = ~v50;
    v51 = -v50;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v49 = v52 & *(v44 + 56);

    v187 = 0;
  }

  v53 = (v178 + 56);
  v182 = v48;
  v190 = (v178 + 16);
  v191 = (v178 + 8);
  v54 = (v185 + 8);
  v186 = v44;
  v55 = v195;
  while (v44 < 0)
  {
    if (!sub_1AE23D9AC())
    {
      goto LABEL_21;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v53)(v43, 0, 1, v55);
    sub_1AE22F7AC(v192);
    v58 = v179;
    sub_1AE22E0C4(v43, v179, v59);
    (*v191)(v43, v55);
    (*v54)(v58, v180);
    v44 = v186;
  }

  if (v49)
  {
    v56 = v187;
LABEL_10:
    v57 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    (*(v178 + 16))(v43, *(v44 + 48) + *(v178 + 72) * (v57 | (v56 << 6)), v195);
    goto LABEL_11;
  }

  v60 = v187;
  while (1)
  {
    v56 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_77;
    }

    if (v56 >= ((v48 + 64) >> 6))
    {
      break;
    }

    v49 = *(v47 + 8 * v56);
    ++v60;
    if (v49)
    {
      v187 = v56;
      goto LABEL_10;
    }
  }

LABEL_21:
  (*v53)(v43, 1, 1, v195);
  sub_1ADDDCE74(v44);
  v186 = v46;
  v61 = v174;
  if ((v176 & 0xC000000000000001) != 0)
  {
    v62 = sub_1AE23DC1C();
    v175 = 0;
    v63 = 0;
    v64 = 0;
    v65 = v62 | 0x8000000000000000;
  }

  else
  {
    v66 = -1 << *(v176 + 32);
    v63 = ~v66;
    v67 = *(v176 + 64);
    v175 = (v176 + 64);
    v68 = -v66;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v64 = v69 & v67;
    v65 = v176;
  }

  v181 = (v178 + 32);
  v182 = v156 + 32;
  v171 = (v184 + 56);
  v146 = v63;
  v172 = ((v63 + 64) >> 6);
  v154 = v156 + 16;
  v170 = (v184 + 48);
  v162 = (v184 + 16);
  v161 = (v156 + 56);
  v160 = (v185 + 40);
  v159 = (v184 + 8);
  v158 = (v156 + 8);

  v70 = 0;
  v176 = v65;
  while (2)
  {
    if ((v65 & 0x8000000000000000) == 0)
    {
      v71 = v64;
      v72 = v70;
      v73 = v189;
      v74 = v181;
      v75 = v173;
      if (!v64)
      {
        if (v172 <= (v70 + 1))
        {
          v76 = v70 + 1;
        }

        else
        {
          v76 = v172;
        }

        v77 = v76 - 1;
        v78 = v70;
        v79 = v177;
        while (1)
        {
          v72 = (v78 + 1);
          if (__OFADD__(v78, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          if (v72 >= v172)
          {
            break;
          }

          v71 = v175[v72];
          ++v78;
          if (v71)
          {
            v65 = v176;
            goto LABEL_38;
          }
        }

        v187 = 0;
        v86 = 1;
        goto LABEL_42;
      }

LABEL_38:
      v187 = (v71 - 1) & v71;
      v80 = __clz(__rbit64(v71)) | (v72 << 6);
      v81 = v193;
      (*(v178 + 16))(v193, *(v65 + 48) + *(v178 + 72) * v80, v195);
      v82 = *(v65 + 56) + *(v156 + 72) * v80;
      v83 = v194;
      (*(v156 + 16))(v61, v82, v194);
LABEL_41:
      v85 = *(v73 + 48);
      (*v74)(v75, v81, v195);
      (*v182)(&v75[v85], v61, v83);
      v86 = 0;
      v77 = v72;
      v79 = v177;
LABEL_42:
      (*v171)(v75, v86, 1, v73);
      if ((*v170)(v75, 1, v73) == 1)
      {
        goto LABEL_46;
      }

      v87 = *(v73 + 48);
      v88 = v165;
      v89 = v195;
      (*v74)(v165, v75, v195);
      v185 = v77;
      v90 = *v182;
      v91 = v194;
      (*v182)(&v88[v87], &v75[v87], v194);
      v92 = *v162;
      v93 = v166;
      (*v162)(v166, v88, v73);
      v184 = *(v73 + 48);
      v94 = v73;
      v95 = v188;
      v92(v188, v88, v94);
      v96 = &v95[*(v94 + 48)];
      v97 = v179;
      v90(v179, v96, v91);
      (*v161)(v97, 0, 1, v91);
      sub_1AE22F7AC(v192);
      v98 = *v190;
      v99 = v193;
      (*v190)(v193, v93, v89);
      v100 = v164;
      v98(v164, v99, v89);
      v101 = v163;
      sub_1AE22D064(v163, v102);
      v103 = (*v160)(v101, v97, v180);
      sub_1AE22D2F4(v101, v100, v103, v104, v105);
      v106 = *v191;
      (*v191)(v99, v89);
      (*v159)(v88, v189);
      v106(v188, v89);
      (*v158)(&v93[v184], v91);
      v107 = v89;
      v61 = v174;
      v106(v93, v107);
      v70 = v185;
      v64 = v187;
      v65 = v176;
      continue;
    }

    break;
  }

  v84 = sub_1AE23DC3C();
  v73 = v189;
  v74 = v181;
  v75 = v173;
  if (v84)
  {
    v81 = v193;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v83 = v194;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v72 = v70;
    v187 = v64;
    goto LABEL_41;
  }

  (*v171)(v173, 1, 1, v189);
  v79 = v177;
LABEL_46:
  sub_1ADDDCE74(v176);
  if ((v147 & 0xC000000000000001) != 0)
  {
    v108 = sub_1AE23DC1C();
    v184 = 0;
    v109 = 0;
    v110 = 0;
    v182 = v108 | 0x8000000000000000;
  }

  else
  {
    v111 = -1 << *(v147 + 32);
    v109 = ~v111;
    v112 = *(v147 + 64);
    v184 = v147 + 64;
    v113 = -v111;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    else
    {
      v114 = -1;
    }

    v110 = v114 & v112;
    v182 = v147;
  }

  v115 = v169;
  v116 = v168;
  v117 = (v155 + 32);
  v179 = (v149 + 56);
  v166 = v109;
  v180 = (v109 + 64) >> 6;
  v173 = (v155 + 16);
  v177 = (v149 + 48);
  v118 = (v149 + 16);
  v176 = v156 + 48;
  v175 = (v149 + 8);
  v172 = (v155 + 56);
  v171 = (v153 + 80);
  v170 = (v148 + 8);
  v174 = (v155 + 8);

  v119 = 0;
  v185 = v117;
  v187 = v118;
  while (2)
  {
    v188 = v119;
    if ((v182 & 0x8000000000000000) != 0)
    {
      v131 = sub_1AE23DC3C();
      v124 = v167;
      if (!v131)
      {
        (*v179)(v116, 1, 1, v167);
LABEL_73:
        sub_1ADDDCE74(v182);
        return;
      }

      v129 = v193;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v123 = v188;
      v189 = v110;
      goto LABEL_67;
    }

    v122 = v110;
    v123 = v119;
    v124 = v167;
    if (v110)
    {
LABEL_64:
      v189 = (v122 - 1) & v122;
      v128 = __clz(__rbit64(v122)) | (v123 << 6);
      v129 = v193;
      v130 = v182;
      (*(v178 + 16))(v193, *(v182 + 48) + *(v178 + 72) * v128, v195);
      v117 = v185;
      (*(v155 + 16))(v115, *(v130 + 56) + *(v155 + 72) * v128, v79);
LABEL_67:
      v132 = *(v124 + 48);
      (*v74)(v116, v129, v195);
      (*v117)(&v116[v132], v115, v79);
      v133 = 0;
      v126 = v123;
      v118 = v187;
LABEL_68:
      (*v179)(v116, v133, 1, v124);
      if ((*v177)(v116, 1, v124) == 1)
      {
        goto LABEL_73;
      }

      v188 = v126;
      v134 = *(v124 + 48);
      v135 = v157;
      (*v74)(v157, v116, v195);
      v136 = *v117;
      (*v117)(&v135[v134], &v116[v134], v79);
      v137 = *v118;
      v138 = v183;
      (*v118)(v183, v135, v124);
      v139 = CRDTDictionary.subscript.modify(v196, v138, v192);
      v140 = v79;
      v141 = v194;
      if ((*v176)(v142, 1, v194))
      {
        (v139)(v196, 0);
        (*v175)(v135, v124);
        v120 = v191;
      }

      else
      {
        v143 = v150;
        v137(v150, v135, v124);
        v144 = v151;
        v136(v151, &v143[*(v124 + 48)], v140);
        (*v172)(v144, 0, 1, v140);
        (*(v153 + 80))(v144, v141);
        (*v170)(v144, v152);
        (v139)(v196, 0);
        (*v175)(v135, v124);
        v120 = v191;
        v145 = v143;
        v74 = v181;
        (*v191)(v145, v195);
      }

      v121 = v183;
      (*v174)(&v183[*(v124 + 48)], v140);
      (*v120)(v121, v195);
      v119 = v188;
      v110 = v189;
      v79 = v140;
      v115 = v169;
      v116 = v168;
      v117 = v185;
      v118 = v187;
      continue;
    }

    break;
  }

  if (v180 <= (v119 + 1))
  {
    v125 = (v119 + 1);
  }

  else
  {
    v125 = v180;
  }

  v126 = (v125 - 1);
  v127 = v119;
  while (1)
  {
    v123 = (v127 + 1);
    if (__OFADD__(v127, 1))
    {
      break;
    }

    if (v123 >= v180)
    {
      v189 = 0;
      v133 = 1;
      goto LABEL_68;
    }

    v122 = *(v184 + 8 * v123);
    ++v127;
    if (v122)
    {
      goto LABEL_64;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t CRDTDictionary.hasDelta(from:)(uint64_t a1)
{

  v2 = sub_1AE1738A8(v1);

  return v2 & 1;
}

double CRDTDictionary.delta(_:from:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  v37 = *a2;
  v38 = v7;

  CRDTDictionary.finalizeTimestamps(_:)(a1, a3);
  CRDTDictionary.finalizeTimestamps(_:)(a1, a3);
  sub_1AE22E388(a1, v38, &v32);
  v8 = v32;
  v9 = v33;
  v10 = v34;
  v12 = v35;
  v11 = v36;
  v13 = a3[2];
  v14 = a3[3];
  v29 = a3[6];
  v30 = *(&v32 + 1);
  v16 = type metadata accessor for CRDTDictionaryElement(255, v14, v29, v15);
  v17 = a3[4];
  v18 = a3[5];

  WitnessTable = swift_getWitnessTable();
  *&v32 = v13;
  *(&v32 + 1) = v16;
  v33 = v17;
  v34 = v18;
  v20 = v8;
  v35 = WitnessTable;
  type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(0, &v32);
  v21 = sub_1AE23CA7C();

  if (v21 > 0)
  {
    goto LABEL_5;
  }

  type metadata accessor for CRDTDictionaryElement.Delta(0, v14, v29, v22);

  v23 = sub_1AE23CA7C();

  if (v23 > 0)
  {
    goto LABEL_5;
  }

  sub_1ADF637A8(v24, v30);
  if (v25)
  {

LABEL_5:

LABEL_6:
    *a4 = v20;
    a4[1] = v30;
    a4[2] = v9;
    a4[3] = v10;
    a4[4] = v12;
    a4[5] = v11;
    return result;
  }

  sub_1ADF637A8(v9, v20);
  v28 = v27;

  if (v28)
  {
    goto LABEL_6;
  }

  result = 0.0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t CRDTDictionary.canMerge(delta:)(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[5];
  v12[0] = *a1;
  v12[1] = v2;

  LOBYTE(v2) = sub_1AE17261C(v12);

  if (v2)
  {
    v12[0] = v3;
    MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v5);
    type metadata accessor for CRDTDictionaryElement.Delta(255, v6, v7, v8);
    sub_1AE23CB1C();

    swift_getWitnessTable();
    v9 = sub_1AE23CF4C();

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t CRDTDictionary.merge(delta:)(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];

  sub_1AE22F7AC(a2);
  *&v10 = v3;
  *(&v10 + 1) = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;

  LOBYTE(a2) = sub_1AE1727BC(&v10);

  return a2 & 1;
}

void CRDTDictionary.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a3[6];
  v10 = a3[3];
  v120 = *(v9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = sub_1AE23D7CC();
  v136 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  v122 = AssociatedTypeWitness;
  v145 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v100 - v17;
  v119 = v10;
  v144 = v9;
  v19 = type metadata accessor for CRDTDictionaryElement(255, v10, v9, v18);
  v117 = sub_1AE23D7CC();
  v138 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v134 = &v100 - v20;
  v127 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v146 = &v100 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v125 = &v100 - v27;
  v28 = a3;
  v126 = *(a3[2] - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v139 = &v100 - v33;
  v118 = v34;
  v147 = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v135 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v135);
  v143 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v141 = &v100 - v38;
  v39 = *a1;
  v40 = *v4;
  v121 = a2;
  if (*(a2 + 24) || v40 != v39)
  {
    v115 = v23;
    v116 = v15;
    v101 = a4;
    v41 = v28[5];
    v42 = v118;
    v132 = v37;
    v150 = sub_1AE23C9EC();
    v149 = sub_1AE23C9EC();
    v148 = sub_1AE23C9CC();
    v131 = v40;
    MEMORY[0x1EEE9AC00](v148);
    v43 = v119;
    *(&v100 - 6) = v42;
    *(&v100 - 5) = v43;
    *(&v100 - 4) = v28[4];
    *(&v100 - 3) = v41;
    v44 = v144;
    *(&v100 - 2) = v144;
    *(&v100 - 1) = &v150;
    MEMORY[0x1EEE9AC00](v45);
    *(&v100 - 6) = v42;
    *(&v100 - 5) = v46;
    *(&v100 - 4) = v47;
    *(&v100 - 3) = v41;
    v142 = v41;
    v48 = v42;
    *(&v100 - 2) = v44;
    *(&v100 - 1) = &v149;

    sub_1AE1710B0(v49, v121, sub_1AE239A58, (&v100 - 8), sub_1AE238AF8, (&v100 - 8));

    v50 = *(v39 + 16);
    swift_beginAccess();
    v51 = *(v50 + 40);
    v52 = *(v51 + 64);
    v111 = v51 + 64;
    v53 = 1 << *(v51 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & v52;
    v110 = (v53 + 63) >> 6;
    v56 = TupleTypeMetadata2;
    v133 = TupleTypeMetadata2 - 8;
    v137 = (v126 + 16);
    v123 = v127 + 16;
    v144 = (v126 + 32);
    v57 = (v127 + 32);
    v132 += 4;
    v130 = (v127 + 48);
    v114 = v120 + 40;
    v113 = (v145 + 48);
    v106 = (v145 + 32);
    v105 = (v145 + 16);
    v104 = (v145 + 56);
    v103 = (v145 + 8);
    v129 = (v127 + 8);
    v128 = (v126 + 8);
    v102 = (v136 + 1);
    v112 = (v138 + 8);
    v124 = v51;

    v58 = 0;
    v138 = v31;
    v59 = v143;
    v136 = v57;
    if (!v55)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v60 = v58;
LABEL_17:
      v64 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v65 = v64 | (v60 << 6);
      v66 = v124;
      v67 = v126;
      v68 = v139;
      (*(v126 + 16))(v139, *(v124 + 48) + *(v126 + 72) * v65, v48);
      v69 = v127;
      v70 = *(v66 + 56) + *(v127 + 72) * v65;
      v71 = v125;
      v72 = v147;
      (*(v127 + 16))(v125, v70, v147);
      v73 = *(TupleTypeMetadata2 + 48);
      v74 = *(v67 + 32);
      v56 = TupleTypeMetadata2;
      v59 = v143;
      v74(v143, v68, v48);
      v75 = *(v69 + 32);
      v57 = v136;
      v75(&v59[v73], v71, v72);
      v76 = 0;
      v62 = v60;
      v31 = v138;
      v63 = v141;
LABEL_18:
      v77 = *(v56 - 8);
      (*(v77 + 56))(v59, v76, 1, v56);
      (*v132)(v63, v59, v135);
      if ((*(v77 + 48))(v63, 1, v56) == 1)
      {
        break;
      }

      v145 = v62;
      v78 = *(v56 + 48);
      (*v144)(v31, v63, v48);
      v79 = *v57;
      v80 = v147;
      (*v57)(v146, &v63[v78], v147);
      swift_beginAccess();

      v81 = v134;
      sub_1AE23CB7C();

      if ((*v130)(v81, 1, v80) == 1)
      {
        (*v129)(v146, v147);
        (*v128)(v31, v48);
        (*v112)(v81, v117);
        v58 = v145;
        if (!v55)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v82 = v115;
        v79(v115, v81, v147);
        v83 = v116;
        (*(v120 + 40))(v146, v121, v119);
        v84 = v122;
        if ((*v113)(v83, 1, v122) == 1)
        {
          v85 = *v129;
          v86 = v147;
          (*v129)(v82, v147);
          v85(v146, v86);
          v48 = v118;
          (*v128)(v31, v118);
          (*v102)(v83, v109);
        }

        else
        {
          v87 = v107;
          (*v106)(v107, v83, v84);
          v88 = v31;
          v89 = v118;
          (*v137)(v139, v88, v118);
          v90 = v108;
          (*v105)(v108, v87, v84);
          (*v104)(v90, 0, 1, v84);
          sub_1AE23CB1C();
          v91 = v147;
          sub_1AE23CB8C();
          v92 = v87;
          v56 = TupleTypeMetadata2;
          v57 = v136;
          (*v103)(v92, v84);
          v93 = *v129;
          v94 = v82;
          v48 = v89;
          v31 = v138;
          (*v129)(v94, v91);
          v93(v146, v91);
          (*v128)(v31, v48);
        }

        v58 = v145;
        v59 = v143;
        if (!v55)
        {
LABEL_10:
          if (v110 <= v58 + 1)
          {
            v61 = v58 + 1;
          }

          else
          {
            v61 = v110;
          }

          v62 = v61 - 1;
          v63 = v141;
          while (1)
          {
            v60 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              break;
            }

            if (v60 >= v110)
            {
              v55 = 0;
              v76 = 1;
              goto LABEL_18;
            }

            v55 = *(v111 + 8 * v60);
            ++v58;
            if (v55)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_31;
        }
      }
    }

    v95 = v150;
    if (sub_1AE23D32C() > 0 || sub_1AE23D32C() > 0 || sub_1AE23CA7C() >= 1)
    {
      v97 = v148;
      v96 = v149;
      v98 = v101;
      *v101 = v95;
      v98[1] = v96;
      v98[2] = v97;
      return;
    }

LABEL_31:

    v99 = v101;
    *v101 = 0;
    v99[1] = 0;
    v99[2] = 0;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void CRDTDictionary.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64DC8(a2, a3, a4, a5, a6, &v17);
    swift_setDeallocating();

    if (!v7)
    {
      *a7 = v17;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v16 = 0xD000000000000014;
    *(v16 + 8) = 0x80000001AE25FB50;
    *(v16 + 16) = 0;
    swift_willThrow();
  }
}

double CRDTDictionary.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v13 = v6;
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v12 = a2[6];

    sub_1ADE6BDD4(&v13, v8, v9, v10, v11, v12);
  }

  return result;
}

BOOL CRDTDictionary.isDefaultState.getter()
{
  v1 = *(*v0 + 16);
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t sub_1AE23460C()
{
  sub_1AE238370();
}

uint64_t sub_1AE234638(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a2;
  v4 = *a3;
  v5 = *(*a3 + 88);
  v6 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = *(v5 + 16);
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = *(v4 + 80);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v21 - v16, a1, v13, v15);
  swift_beginAccess();

  sub_1AE23CB7C();
  v18 = *(v5 - 8);
  result = (*(v18 + 48))(v8, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v20 = *(v9 - 8);
    (*(v20 + 16))(v12, v8, v9);
    (*(v20 + 56))(v12, 0, 1, v9);
    sub_1AE23CB1C();
    sub_1AE23CB8C();
    return (*(v18 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1AE23494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v7 + 16))(v9, v11);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v7 + 8))(v13, a3);
}

double sub_1AE234A68@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v16 = type metadata accessor for CRDTDictionaryElement(0, a4, a7, a4);
  WitnessTable = swift_getWitnessTable();
  sub_1AE174904(a1, a2, a3, v16, a5, a6, WitnessTable, v21);
  if (!v9)
  {
    result = *v21;
    v19 = v21[1];
    v20 = v21[2];
    *a8 = v21[0];
    a8[1] = v19;
    a8[2] = v20;
  }

  return result;
}

void CRDTDictionary.Partial.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v17 = *(v16 + 16);
    if ((~v17 & 0xF000000000000007) != 0 && (v17 & 0xF000000000000000) == 0x1000000000000000)
    {
      v26 = (v17 & 0xFFFFFFFFFFFFFFFLL);
      v27 = v26[3];
      *&v31[16] = v26[2];
      *&v31[32] = v27;
      v28 = v26[5];
      *&v31[48] = v26[4];
      v32 = v28;
      *v31 = v26[1];
      sub_1ADFAEE10(v31, &v30);

      v24 = v32;
      v23 = *&v31[40];
      v22 = v31[56];
      v21 = *&v31[24];
      v20 = *&v31[8];
      v19 = *v31;
    }

    else
    {

      v19 = 0;
      v20 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v21 = 0uLL;
      v22 = 1;
      v23 = 0uLL;
      v24 = 0uLL;
    }

    v31[0] = v22;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v37 = v23;
    v38 = v22;
    v39 = v24;
    sub_1AE234A68(&v34, a1, a2, a3, a4, a5, a6, v33);

    if (!v7)
    {
      v29 = v33[1];
      *a7 = v33[0];
      a7[1] = v29;
      a7[2] = v33[2];
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v25 = 0xD000000000000014;
    *(v25 + 8) = 0x80000001AE25FB50;
    *(v25 + 16) = 0;
    swift_willThrow();
  }
}

__n128 sub_1AE234D18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v12 = v5[4];
  v11 = v5[5];
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v12;
  v31 = v11;
  v13 = *(a2 + 16);
  v14 = type metadata accessor for CRDTDictionaryElement(255, *(a2 + 24), *(a2 + 48), x3_0);

  WitnessTable = swift_getWitnessTable();
  v23[0] = v13;
  v23[1] = v14;
  v24 = *(a2 + 32);
  v25 = WitnessTable;
  v16 = type metadata accessor for CRSetRefMergeableDelta(0, v23);
  v17 = v33;
  sub_1AE174F20(a1, v16, v32);

  if (!v17)
  {
    v19 = v32[3];
    v20 = v32[4];
    *(a3 + 32) = v32[2];
    *(a3 + 48) = v19;
    *(a3 + 64) = v20;
    result = v32[1];
    *a3 = v32[0];
    *(a3 + 16) = result;
  }

  return result;
}

double CRDTDictionary.Partial.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {

    sub_1AE234D18(a1, a2, v8, v7);
    swift_beginAccess();
    sub_1AE1B7950(v8);
    swift_endAccess();
  }

  return result;
}

void CRDTDictionary.Partial.visitReferences(_:)(void *a1, void *a2)
{
  v109 = a1;
  v4 = a2[6];
  v5 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = v77 - v7;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(0, v5, v4, v11);
  v98 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v106 = v77 - v12;
  v85 = v5;
  v86 = v4;
  v14 = type metadata accessor for CRDTDictionaryElement.Delta(0, v5, v4, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v110 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v91 = v77 - v18;
  v96 = a2;
  v19 = a2[2];
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = v77 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v101);
  v104 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v103 = v77 - v30;
  v31 = *(v2 + 40);
  v32 = *(v31 + 64);
  v102 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v84 = (v33 + 63) >> 6;
  v105 = TupleTypeMetadata2;
  v100 = TupleTypeMetadata2 - 8;
  v88 = v20 + 16;
  v87 = v15 + 16;
  v107 = (v15 + 32);
  v108 = (v20 + 32);
  v94 = (v98 + 2);
  v92 = v15;
  v97 = (v15 + 8);
  v90 = v20;
  v98 = (v20 + 8);
  v99 = (v29 + 32);
  v80 = (v6 + 32);
  v79 = v6 + 8;
  v78 = (v8 + 32);
  v77[1] = v8 + 8;
  v93 = v31;

  v36 = 0;
  while (v35)
  {
    v40 = v36;
LABEL_17:
    v46 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v47 = v46 | (v40 << 6);
    v48 = v93;
    v49 = v90;
    v50 = v89;
    (*(v90 + 16))(v89, *(v93 + 48) + *(v90 + 72) * v47, v19);
    v51 = *(v48 + 56);
    v53 = v91;
    v52 = v92;
    (*(v92 + 16))(v91, v51 + *(v92 + 72) * v47, v14);
    v54 = v19;
    v55 = v14;
    v56 = v105;
    v57 = *(v105 + 48);
    v58 = *(v49 + 32);
    v44 = v104;
    v59 = v50;
    v60 = v54;
    v58(v104, v59);
    v61 = *(v52 + 32);
    v43 = v56;
    v14 = v55;
    v61(&v44[v57], v53, v55);
    v62 = 0;
    v45 = v103;
LABEL_18:
    v63 = *(v43 - 8);
    (*(v63 + 56))(v44, v62, 1, v43);
    (*v99)(v45, v44, v101);
    if ((*(v63 + 48))(v45, 1, v43) == 1)
    {

      return;
    }

    v64 = *(v43 + 48);
    (*v108)(v23, v45, v60);
    v65 = &v45[v64];
    v66 = v60;
    v67 = v14;
    (*v107)(v110, v65, v14);
    v68 = v23;
    v70 = v109[3];
    v69 = v109[4];
    __swift_project_boxed_opaque_existential_1(v109, v70);
    if ((*(v69 + 8))(v70, v69))
    {

      (*v97)(v110, v67);
      (*v98)(v68, v60);
      return;
    }

    v71 = v109;
    v72 = v68;
    v19 = v66;
    (*(*(v96[4] + 8) + 48))(v109, v66);
    v73 = v71[3];
    v74 = v71[4];
    __swift_project_boxed_opaque_existential_1(v71, v73);
    if ((*(v74 + 8))(v73, v74))
    {

      (*v97)(v110, v67);
      (*v98)(v72, v66);
      return;
    }

    (*v94)(v106, v110, v95);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = v67;
    if (!EnumCaseMultiPayload)
    {
      v37 = v81;
      v38 = v85;
      (*v78)(v81, v106, v85);
      (*(*(v86 + 16) + 48))(v71, v38);
      v39 = &v109;
LABEL_5:
      (**(v39 - 32))(v37, v38);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v37 = v82;
      v38 = AssociatedTypeWitness;
      (*v80)(v82, v106, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 32))(v109, v38, AssociatedConformanceWitness);
      v39 = &v111;
      goto LABEL_5;
    }

LABEL_6:
    (*v97)(v110, v67);
    v23 = v72;
    (*v98)(v72, v66);
  }

  if (v84 <= v36 + 1)
  {
    v41 = v36 + 1;
  }

  else
  {
    v41 = v84;
  }

  v42 = v41 - 1;
  v44 = v104;
  v43 = v105;
  v45 = v103;
  while (1)
  {
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v40 >= v84)
    {
      v60 = v19;
      v35 = 0;
      v62 = 1;
      v36 = v42;
      goto LABEL_18;
    }

    v35 = *(v102 + 8 * v40);
    ++v36;
    if (v35)
    {
      v36 = v40;
      goto LABEL_17;
    }
  }

  __break(1u);
}

BOOL sub_1AE2359DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a9;
  v18 = a2;
  type metadata accessor for CRDTDictionaryElement(255, a5, a9, a4);
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  swift_beginAccess();

  sub_1AE23CB7C();

  v16 = type metadata accessor for CRDTDictionaryElement.Delta(0, a5, v9, v15);
  LOBYTE(v9) = sub_1AE22B82C(v14, v16);
  (*(v12 + 8))(v14, v11);
  return (v9 & 1) == 0;
}

double sub_1AE235B70@<D0>(void *a1@<X8>)
{
  CRDTDictionary.makeIterator()(a1);

  return result;
}

uint64_t sub_1AE235B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE235BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AE23836C(v3, a1, WitnessTable);

  return v6;
}

uint64_t sub_1AE235C7C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = type metadata accessor for CRDTDictionaryElement(0, a4, a7, a4);
  return a8(v11, v12, v13, v14, v15, v16, a3, v17, a6) & 1;
}

uint64_t CRDTDictionary.Index.hash(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRDTDictionaryElement(0, a2[3], a2[6], a4);

  return sub_1AE23CA6C();
}

uint64_t CRDTDictionary.Index.hashValue.getter(void *a1)
{
  v3 = *(v1 + 16);
  v8 = *v1;
  v9 = v3;
  sub_1AE23E31C();
  CRDTDictionary.Index.hash(into:)(v7, a1, v4, v5);
  return sub_1AE23E34C();
}

uint64_t sub_1AE235E08(uint64_t a1, void *a2)
{
  sub_1AE23E31C();
  CRDTDictionary.Index.hash(into:)(v6, a2, v3, v4);
  return sub_1AE23E34C();
}

uint64_t sub_1AE235E8C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[2];
  v8 = type metadata accessor for CRDTDictionaryElement(0, a1[3], a1[6], v7);
  v9 = a1[5];

  v11 = a2(v10, v6, v8, v9);
  v13 = v12;
  LOBYTE(v6) = v14;

  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t CRDTDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v31 = a2;
  v4 = a4[3];
  v27 = a4[2];
  v29 = a1;
  v30 = v4;
  v28 = type metadata accessor for CRDTDictionaryElement(255, v4, a4[6], a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  swift_beginAccess();

  v15 = v27;
  v14 = v28;
  sub_1AE23CB9C();

  v16 = v26;
  (*(v6 + 16))(v26, v13, TupleTypeMetadata2);
  v17 = *(TupleTypeMetadata2 + 48);
  v18 = *(v15 - 8);
  (*(v18 + 32))(v29, v16, v15);
  (*(v6 + 32))(v8, v13, TupleTypeMetadata2);
  v19 = *(TupleTypeMetadata2 + 48);
  (*(*(v30 - 8) + 16))(v31, &v8[v19]);
  v20 = v14;
  v21 = *(*(v14 - 8) + 8);
  v22 = &v8[v19];
  v23 = v20;
  v21(v22);
  (*(v18 + 8))(v8, v15);
  return (v21)(&v16[v17], v23);
}

uint64_t CRDTDictionary.index(after:)@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  type metadata accessor for CRDTDictionaryElement(0, a2[3], a2[6], v5);

  v6 = sub_1AE23CA8C();
  v8 = v7;
  v10 = v9;

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10 & 1;
  return result;
}

uint64_t CRDTDictionary.count.getter(void *a1)
{
  swift_beginAccess();
  type metadata accessor for CRDTDictionaryElement(0, a1[3], a1[6], v2);

  v3 = sub_1AE23CA7C();

  return v3;
}

uint64_t CRDTDictionary.insertionCount.getter(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for CRDTDictionaryElement(255, *(a1 + 24), *(a1 + 48), v2);
  sub_1AE23CB1C();

  swift_getWitnessTable();
  sub_1AE23CF2C();

  return v4;
}

uint64_t sub_1AE23646C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v10 = type metadata accessor for CRDTDictionaryElement(255, a4, a5, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v22 - v13;
  v15 = *a1;
  (*(v16 + 16))(v22 - v13, a2, TupleTypeMetadata2, v12);
  v17 = &v14[*(TupleTypeMetadata2 + 48)];
  v18 = *&v17[*(v10 + 36)];
  v19 = *(*(v10 - 8) + 8);

  v19(v17, v10);
  v20 = *(v18 + 16);

  if (__OFADD__(v15, v20))
  {
    __break(1u);
  }

  else
  {
    result = (*(*(a3 - 8) + 8))(v14, a3);
    *a6 = v15 + v20;
  }

  return result;
}

void (*sub_1AE23661C(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1AE2367B0(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_1ADFAD7BC;
}

void (*sub_1AE2367B0(uint64_t *a1, uint64_t *a2, void *a3))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  CRDTDictionary.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1ADE022F8;
}

uint64_t sub_1AE2368AC(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  CRDTDictionary.index(after:)(a2, a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

void sub_1AE236910(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v63 = a8;
  v61 = a4;
  v62 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v56 - v15;
  v17 = sub_1AE23BFEC();
  v18 = *(v17 - 8);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v66 = a2;
  v25 = *a1;
  v26 = *(a2 + 24);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v25 >= v27;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    sub_1ADE42E40(v19, v20, v21);
    swift_allocError();
    *v29 = 0xD000000000000013;
    *(v29 + 8) = 0x80000001AE25FD70;
    *(v29 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v58 = a3;
    v59 = a6;
    v60 = a5;
    (*(v18 + 16))(v24, v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v17, v22);
    type metadata accessor for ReplicaState(0);
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v32 = type metadata accessor for Replica(0);
    v33 = *(*(v32 - 8) + 56);
    v33(v30 + v31, 1, 1, v32);
    (*(v18 + 32))(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v24, v17);
    *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v33(v16, 1, 1, v32);
    swift_beginAccess();
    sub_1ADDD85E4(v16, v30 + v31);
    swift_endAccess();
    v34 = v65;
    v35 = v65[3];
    if (v35)
    {
      v36 = v65[3];
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    if (v35)
    {
      v37 = v65[4];
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v35, v65[4]);
    v38 = v66;

    v39 = v64;
    sub_1ADDD6748(v36, v37, v38, &v67);
    if (v39)
    {
    }

    else
    {
      v56[1] = v56;
      v57 = *(&v67 + 1);
      v64 = v67;
      v72 = v34[1];
      *&v67 = v72;
      MEMORY[0x1EEE9AC00](v72);
      v40 = v59;
      v56[-6] = v60;
      v56[-5] = v40;
      v41 = v63;
      v56[-4] = v62;
      v56[-3] = v41;
      v56[-2] = a9;
      v56[-1] = v38;

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
      v44 = type metadata accessor for CRDTDictionaryElement(255, v40, a9, v43);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
      v47 = sub_1ADE11630();
      v48 = sub_1ADE08EB0(sub_1AE239A30, &v56[-8], v42, TupleTypeMetadata2, v46, v47, MEMORY[0x1E69E7288], &v71);
      v49 = sub_1ADDCEDE0(&v72, qword_1EB5BBB90, &unk_1AE24EC40);
      v50 = v63;
      v66 = v30;
      if (v58)
      {
        v49 = v58(v48);
      }

      v65 = v56;
      *&v67 = v48;
      MEMORY[0x1EEE9AC00](v49);
      v51 = v59;
      v52 = v60;
      v56[-6] = v60;
      v56[-5] = v51;
      v53 = v62;
      v56[-4] = v62;
      v56[-3] = v50;
      v56[-2] = a9;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v54 = sub_1AE23CB2C();
      WitnessTable = swift_getWitnessTable();
      *&v67 = v52;
      *(&v67 + 1) = v44;
      v68 = v53;
      v69 = v50;
      v70 = WitnessTable;
      type metadata accessor for CRSetRef(0, &v67);
      *&v67 = v64;
      *(&v67 + 1) = v57;
      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      sub_1AE23D6AC();
      sub_1AE176A00(v66, &v67, v54, v71);
    }
  }
}

void sub_1AE236F40(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  v62 = a7;
  v52 = a8;
  v58 = a6;
  v13 = type metadata accessor for CRDTDictionaryElement(0, a4, a6, a4);
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v14;
  v61 = a4;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v57 = a1[1];
  v22 = a1[2];
  v53 = a1[3];
  v54 = v22;
  v55 = v23;
  v59 = v24;
  if (v21)
  {
    inited = v21;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v26 = *(*(a5 + 8) + 8);
  v27 = *(v26 + 8);

  v29 = v63;
  v27(v28, a3, v26);
  if (v29)
  {

    *v62 = v29;
  }

  else
  {
    v48 = v20;
    v63 = a3;
    if (v57)
    {
      v30 = v57;
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v30 = swift_initStaticObject();
    }

    swift_allocObject();

    sub_1ADDE77B4(v30, a2);

    v31 = *(*(*(v58 + 16) + 8) + 8);

    v33 = v59;
    v31(v32);
    v34 = v55;
    (*(v55 + 16))(v56, v33, v61);
    v35 = v53;
    v36 = v54;
    if (v54)
    {
      v37 = v54;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    if (v54)
    {
      v38 = v53;
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v36, v35);
    sub_1ADDF4A24(v37, v38, a2);
    v40 = v39;
    v41 = v61;
    (*(v34 + 8))(v33, v61);

    v42 = v49;
    (*(v34 + 32))(v49, v56, v41);
    v43 = v51;
    *&v42[*(v51 + 36)] = v40;
    v44 = v63;
    v45 = *(swift_getTupleTypeMetadata2() + 48);
    v46 = v52;
    (*(v60 + 32))(v52, v48, v44);
    (*(v50 + 32))(v46 + v45, v42, v43);
  }
}

void sub_1AE237470(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a9;
  v27 = a1;
  v29 = a4;
  v30 = a5;
  v40 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a10;
  v35 = a11;
  v36 = a2;
  v37 = a3;
  v13 = sub_1ADE6B9FC(sub_1AE2399A0, v28);
  if (!v11)
  {
    v24 = &v24;
    v25 = v13;
    MEMORY[0x1EEE9AC00](v13);
    v14 = v40;
    v15 = sub_1ADE6B938(sub_1AE2399E8);
    type metadata accessor for CRDTDictionaryElement(0, v14, a10, v16);

    sub_1ADF78ED0(v17, &v39);
    v38 = v39;
    sub_1ADDF5C7C(a3);
    v19 = v18;
    v21 = v20;

    v22 = v25;
    v23 = v26;
    *v26 = v15;
    v23[1] = v22;
    v23[2] = v19;
    v23[3] = v21;
    v23[4] = 0;
  }
}

uint64_t sub_1AE2375FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v23 = a6;
  v24 = a2;
  v25 = a4;
  v22 = a7;
  v9 = *a3;
  v10 = *a3;
  v11 = *(*a3 + 88);
  v12 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  swift_beginAccess();
  v15 = *(v9 + 80);
  v16 = *(v9 + 104);

  sub_1AE23CB7C();
  v17 = *(v11 - 8);
  result = (*(v17 + 48))(v14, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v19 = v28;
    sub_1AE237470(a1, v14, v24, v15, *(v11 + 16), v25, *(v10 + 96), v16, v26, *(v11 + 24), a5);
    result = (*(v17 + 8))(v14, v11);
    if (v19)
    {
      *v23 = v19;
    }

    else
    {
      v20 = v26[1];
      v21 = v22;
      *v22 = v26[0];
      v21[1] = v20;
      *(v21 + 4) = v27;
    }
  }

  return result;
}

double sub_1AE237820@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, void *a8)
{
  type metadata accessor for CRDTDictionaryElement(255, a4, a6, a3);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v15, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v8)
  {
    *a8 = v8;
  }

  else
  {
    result = *v15;
    v14 = v15[1];
    *a5 = v15[0];
    *(a5 + 16) = v14;
    *(a5 + 32) = v16;
  }

  return result;
}

uint64_t CRDTDictionary<>.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37[0] = *v4;
  v8 = a2[3];
  v28 = a2[2];
  v29 = v8;
  v9 = a2[5];
  v30 = a2[4];
  v31 = a3;
  v10 = a2[6];
  v32 = v9;
  v33 = v10;
  v34 = a4;
  v18 = v28;
  v19 = v8;
  v20 = v30;
  v21 = a3;
  v22 = v9;
  v23 = v10;
  v24 = a4;
  v25 = sub_1ADFAF414;
  v26 = &v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v37[0] = sub_1ADE08EB0(sub_1AE238B38, v17, a2, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
  sub_1AE23D11C();
  swift_getWitnessTable();
  v14 = sub_1AE23CA4C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3BC();
  v37[7] = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_1AE23CB1C();
  v35 = a3;
  v36 = a4;
  swift_getWitnessTable();
  sub_1AE23E06C();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1AE237B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1AE23D5CC();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE237C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1AE23CC9C();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

__n128 sub_1AE237CE0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a3;
  v64 = a5;
  v85 = a2;
  v56 = a6;
  v58 = *a1;
  v60 = a4;
  v8 = sub_1AE23D7CC();
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  v61 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23BFEC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[2];
  v18 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v14 + 16))(v16, v17 + v18, v13);
  v19 = v85;
  v62 = sub_1ADDF66A8(v16);
  v20 = v16;
  v21 = v8;
  v22 = v13;
  v23 = v59;
  (*(v14 + 8))(v20, v22);
  swift_beginAccess();
  v24 = a1[4];
  v73 = a1[3];
  v74 = v24;

  sub_1ADDF5C7C(v19);
  v65 = v25;
  v27 = v26;

  v28 = v60;

  sub_1ADE42CB8(0, 0);
  (*(v23 + 16))(v10, v63, v8);
  v29 = v61;
  if ((*(v61 + 48))(v10, 1, v28) == 1)
  {
    v63 = v27;
    (*(v23 + 8))(v10, v21);
    v30 = swift_beginAccess();
    v73 = a1[5];
    MEMORY[0x1EEE9AC00](v30);
    v31 = v58;
    v32 = *(v58 + 88);
    *(&v56 - 8) = *(v58 + 80);
    *(&v56 - 7) = *(v32 + 16);
    *(&v56 - 6) = v28;
    v33 = *(v31 + 104);
    *(&v56 - 5) = *(v31 + 96);
    *(&v56 - 4) = v33;
    v34 = v64;
    *(&v56 - 3) = *(v32 + 24);
    *(&v56 - 2) = v34;
    *(&v56 - 1) = v85;
    MEMORY[0x1EEE9AC00](v35);
    *(&v56 - 10) = v36;
    *(&v56 - 9) = v37;
    *(&v56 - 8) = v28;
    *(&v56 - 7) = v38;
    *(&v56 - 6) = v39;
    *(&v56 - 5) = v40;
    *(&v56 - 4) = v34;
    *(&v56 - 3) = sub_1AE239908;
    *(&v56 - 2) = v41;
    v42 = sub_1AE23CB1C();

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v45 = v66;
    v46 = sub_1ADE08EB0(sub_1AE23993C, (&v56 - 12), v42, &type metadata for Proto_Set.Element, v43, WitnessTable, MEMORY[0x1E69E7288], &v68);
    if (v45)
    {

      v27 = v63;
LABEL_5:
      v73 = v62;
      v74 = MEMORY[0x1E69E7CC0];
      v75 = MEMORY[0x1E69E7CC0];
      v76 = v65;
      v78 = 0;
      v79 = 0;
      v77 = v27;
      v80 = 1;
      *v81 = v84[0];
      *&v81[3] = *(v84 + 3);
      v82 = 0;
      v83 = 0;
      sub_1ADFAECE8(&v73);
      return result;
    }

    v52 = v46;

    v27 = v63;
  }

  else
  {
    v47 = v57;
    v48 = (*(v29 + 32))(v57, v10, v28);
    MEMORY[0x1EEE9AC00](v48);
    v49 = v64;
    *(&v56 - 4) = v28;
    *(&v56 - 3) = v49;
    *(&v56 - 2) = v85;
    *(&v56 - 1) = a1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v51 = v66;
    v52 = sub_1ADE13AA8(sub_1AE23997C, (&v56 - 6), v28, &type metadata for Proto_Set.Element, v50, v49, MEMORY[0x1E69E7288], &v73);
    (*(v29 + 8))(v47, v28);
    if (v51)
    {
      goto LABEL_5;
    }
  }

  *&v68 = v62;
  *(&v68 + 1) = v52;
  v69.n128_u64[0] = MEMORY[0x1E69E7CC0];
  v69.n128_u64[1] = v65;
  *&v71 = 0;
  v70 = v27;
  BYTE8(v71) = 1;
  *(&v71 + 9) = v84[0];
  HIDWORD(v71) = *(v84 + 3);
  v72 = 0uLL;
  v73 = v62;
  v74 = v52;
  v75 = MEMORY[0x1E69E7CC0];
  v76 = v65;
  v78 = 0;
  v79 = 0;
  v77 = v27;
  v80 = 1;
  *v81 = v84[0];
  *&v81[3] = *(v84 + 3);
  v82 = 0;
  v83 = 0;
  sub_1ADFAEE10(&v68, &v67);
  sub_1ADFAECE8(&v73);
  v54 = v71;
  v55 = v56;
  *(v56 + 32) = v70;
  *(v55 + 48) = v54;
  *(v55 + 64) = v72;
  result = v69;
  *v55 = v68;
  *(v55 + 16) = result;
  return result;
}

uint64_t sub_1AE23837C()
{
  v1 = (*v0)[14];
  v2 = *(*v0 + 6);
  v8[0] = *(*v0 + 5);
  v8[1] = v2;
  v9 = v1;
  type metadata accessor for CRDTDictionaryRef(0, v8);
  v3 = *(*v0[2] + 288);

  v5 = v3(v4);

  v6 = swift_allocObject();
  sub_1AE22CF80(v5);
  return v6;
}

void *sub_1AE238474(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a3;
  v10 = a3[1];

  sub_1ADF78ED0(v11, &v24);
  *&v23 = v7;
  *(&v23 + 1) = v8;
  v12 = *(a1 + *(a5 + 36));
  v22[0] = v9;
  v22[1] = v10;
  v13 = sub_1ADF772F0(&v23, v12, v22);

  sub_1ADF78ED0(v14, &v23);
  v15 = v23;
  LODWORD(v8) = sub_1ADF60694(v8, *(&v23 + 1), v10);
  LODWORD(v9) = v8 | sub_1ADF60694(v7, v15, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AE241900;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BEE70, &qword_1AE25BC60);
  *(v16 + 56) = v17;
  *(v16 + 32) = v13 & 1;
  *(v16 + 33) = HIBYTE(v13) & 1;
  *(v16 + 88) = v17;
  *(v16 + 64) = v9 & 1;
  *(v16 + 65) = BYTE1(v9) & 1;
  sub_1AE23E2EC();

  result = (*(*(*(a5 + 24) + 8) + 8))(&v23, a1, *(a5 + 16));
  v19 = 1;
  if ((*a4 & 1) == 0 && (BYTE2(v23) & 1) == 0)
  {
    if (v23 <= 1u && BYTE1(v23) < 2u || (v13 & 0x100) == 0)
    {
      v19 = v13;
      if (v23 > 1u)
      {
        if (v23 != 2)
        {
          goto LABEL_12;
        }
      }

      else if (v23)
      {
        goto LABEL_12;
      }

      v19 = ((BYTE1(v23) & 0xFD) != 0) & v13;
      goto LABEL_12;
    }

    v19 = 1;
  }

LABEL_12:
  *a4 = v19 & 1;
  return result;
}

uint64_t sub_1AE2386F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v26 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v11 = *(v10 + 24);
  v27 = sub_1AE23D7CC();
  v12 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  sub_1AE22F7AC(a3);
  v18 = *(v11 - 8);
  (*(v18 + 16))(v17, v26, v11);
  (*(v18 + 56))(v17, 0, 1, v11);
  sub_1AE22F7AC(a3);
  v19 = *(v5 + 16);
  v19(v9, v29, v4);
  v20 = v28;
  v19(v28, v9, v4);
  sub_1AE22D064(v14, v21);
  v22 = (*(v12 + 40))(v14, v17, v27);
  sub_1AE22D2F4(v14, v20, v22, v23, v24);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1AE238978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3[3];
  v8 = v3[6];
  v7 = v3[7];
  v9 = type metadata accessor for CRDTDictionaryElement(0, v6, v8, a2);
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  return (*(*(v8 + 16) + 64))(v7, v6);
}

uint64_t sub_1AE238A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[7];
  type metadata accessor for CRDTDictionaryElement.Delta(255, v4[3], v4[6], a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1AE238B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 72);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_1AE238BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE238C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE238CF0(uint64_t a1)
{
  result = sub_1AE23BFEC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE238DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE238E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE238E80(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1AE238F18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 254;
}

void sub_1AE239088(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AE239274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CRDTDictionaryElement.Delta.ValueDelta(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE2392EC(_DWORD *a1, int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  v11 = a2 - 2147483646;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  else if (v13 == 2)
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = *(a1 + v9);
    if (!v14)
    {
LABEL_5:
      v7 = *((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v7 >= 0xFFFFFFFF)
      {
        LODWORD(v7) = -1;
      }

      return (v7 + 1);
    }
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v15) ^ 0x80000000;
}

void sub_1AE239420(int *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v11 = a3 - 2147483646;
    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v10 = 1;
    }

    else
    {
      v10 = v12;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v13 = a2 & 0x7FFFFFFF;
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, v9);
      *a1 = v13;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v10)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  v10 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v10 <= 1)
  {
    if (v10)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v10 == 2)
  {
    *(a1 + v9) = 0;
    goto LABEL_28;
  }

  *(a1 + v9) = 0;
  if (a2)
  {
LABEL_29:
    *((a1 + v8 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

uint64_t sub_1AE239584(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE2395FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AE239738(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t CRAsset.digest.getter()
{
  v1 = *(*v0 + 16);
  sub_1ADDD86D8(v1, *(*v0 + 24));
  return v1;
}

uint64_t sub_1AE239A9C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 176) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE239B6C, 0, 0);
}

uint64_t sub_1AE239B6C()
{
  v1 = *(v0[14] + 32);
  v0[18] = v1;
  v0[19] = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1AE239BE8, 0, 0);
}

uint64_t sub_1AE239BE8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1AE239D20;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v0[10] = &unk_1AE2544C0;
  v0[11] = v5;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE239D20()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE239E00, 0, 0);
}

uint64_t sub_1AE239E00()
{
  v1 = *(*(v0 + 144) + 24);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_1AE239EB8;
  v3 = *(v0 + 176);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  return sub_1AE1AA154(v4, v5, v3, v1);
}

uint64_t sub_1AE239EB8()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE23A000, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AE23A000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CRAsset.read<A>(waitIfUnavailable:withAsyncAccessor:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 88) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 56) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_1AE23A09C, 0, 0);
}

uint64_t sub_1AE23A09C()
{
  v1 = *(v0 + 56);
  *(v0 + 64) = *(v1 + 32);
  *(v0 + 16) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1AE23A164;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return sub_1AE1B149C(v6, (v0 + 16), v5, v7, v3, v4);
}

uint64_t sub_1AE23A164()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE23A2B4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AE23A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1ADE925E0(a3, v25 - v10);
  v12 = sub_1AE23D1BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AE23AAB8(v11);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AE23D16C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AE23CD8C() + 32;
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

void CRAsset.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    sub_1ADE65E00(inited, v8, v9, &v11);

    if (!v4)
    {
      *a4 = v11;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001AE25FB70;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

void *sub_1AE23A64C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v9[1] = &unk_1AE25BDE0;
  v9[2] = v7;
  swift_weakInit();
  sub_1ADDD86D8(v6, v5);
  sub_1ADDD86D8(v6, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();

  sub_1ADDCC35C(v6, v5);
  (*(v2 + 8))(v4, v1);

  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1AE23A800()
{
  sub_1AE23A64C();

  return swift_deallocClassInstance();
}

uint64_t CRAsset.read(withAccessor:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = *v2;
  v9 = sub_1AE23D1BC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v8;
  v11[6] = a1;
  v11[7] = a2;

  sub_1AE23A2CC(0, 0, v7, &unk_1AE25BC70, v11);
  sub_1AE23AAB8(v7);
  sub_1AE23C81C();
  swift_allocObject();
  v12 = sub_1AE23C82C();

  return v12;
}

uint64_t sub_1AE23A9E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1ADE744B8;

  return sub_1AE1B05C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1AE23AAB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CRAsset.read(waitIfUnavailable:withAccessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = *v4;
  v13 = sub_1AE23D1BC();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v15[5] = v12;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;

  sub_1AE23A2CC(0, 0, v11, &unk_1AE25BC78, v15);
  sub_1AE23AAB8(v11);
  sub_1AE23C81C();
  swift_allocObject();
  v16 = sub_1AE23C82C();

  return v16;
}

uint64_t sub_1AE23ACF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1ADE744B8;

  return sub_1AE1B0D0C(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1AE23AE10(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a4)(uint64_t *__return_ptr)@<X3>, void *a5@<X8>)
{
  a4(&v8);

  sub_1ADDCC35C(a1, a2);
  *a5 = v8;
}

void CRAsset.init(_:data:)(uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1AE1ABE30(a2, a3, &v7);
  sub_1ADDCC35C(a2, a3);

  *a4 = v7;
}

void CRAsset.init(url:coordinated:assetManager:)(uint64_t a1@<X0>, char a2@<W1>, void *a4@<X8>)
{
  sub_1AE1AD190(a1, a2, &v7);
  v6 = sub_1AE23BDDC();
  (*(*(v6 - 8) + 8))(a1, v6);

  *a4 = v7;
}

void CRAsset.init(safelyFrom:coordinated:assetManager:)(uint64_t a1@<X0>, char a2@<W1>, void *a4@<X8>)
{
  sub_1AE1AD190(a1, a2, &v8);
  v7 = sub_1AE23BDDC();
  (*(*(v7 - 8) + 8))(a1, v7);

  if (!v4)
  {
    *a4 = v8;
  }
}

BOOL static CRAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v2, v3);
  sub_1ADDCC35C(v4, v5);
  return v6;
}

void CRAsset.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v2 + 24);
  sub_1ADDD86D8(v3, v4);
  sub_1AE23BECC();

  sub_1ADDCC35C(v3, v4);
}

uint64_t CRAsset.visitReferences(_:)(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = v2;
  return (*(v4 + 32))(&v6, v3, v4);
}

uint64_t CRAsset.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BECC();
  sub_1ADDCC35C(v2, v3);
  return sub_1AE23E34C();
}

uint64_t sub_1AE23B218()
{
  v1 = *v0;
  sub_1AE23E31C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23BECC();
  sub_1ADDCC35C(v2, v3);
  return sub_1AE23E34C();
}

void sub_1AE23B280(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v2 + 24);
  sub_1ADDD86D8(v3, v4);
  sub_1AE23BECC();

  sub_1ADDCC35C(v3, v4);
}

uint64_t sub_1AE23B2E4(uint64_t a1)
{
  v2 = *v1;
  sub_1AE23E31C();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1ADDD86D8(v3, v4);
  sub_1AE23BECC();
  sub_1ADDCC35C(v3, v4);
  return sub_1AE23E34C();
}

BOOL sub_1AE23B348(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_1ADDD86D8(v2, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v2, v3);
  sub_1ADDCC35C(v4, v5);
  return v6;
}

uint64_t sub_1AE23B3D0(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = v2;
  return (*(v4 + 32))(&v6, v3, v4);
}

double sub_1AE23B44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    v7 = v5;

    sub_1ADE6D598(&v7);
  }

  return result;
}

double CRAsset.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    v7 = v5;

    sub_1ADE6D598(&v7);
  }

  return result;
}

uint64_t CRAsset.debugDescription.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_1ADDD86D8(v1, v2);
  v9 = sub_1AE23BEAC();
  sub_1ADE42DEC(v9, v3, v4);
  v5 = sub_1AE23D82C();
  v7 = v6;
  sub_1ADDCC35C(v1, v2);

  MEMORY[0x1B26FB670](v5, v7);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return 0x2874657373415243;
}

void CRAsset.encode(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v2 + 24);
  sub_1ADDD86D8(v3, v4);
  sub_1AE23BEFC();
  sub_1ADDCC35C(v3, v4);
}

void *CRAsset.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v11);
  v5 = sub_1AE23BEBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED96F2A8;

  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for CRAssetRef();
  result = swift_allocObject();
  result[2] = v8;
  result[3] = v9;
  result[4] = v10;
  *a2 = result;
  return result;
}

void *sub_1AE23B750@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v11);
  v5 = sub_1AE23BEBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED96F2A8;

  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for CRAssetRef();
  result = swift_allocObject();
  result[2] = v8;
  result[3] = v9;
  result[4] = v10;
  *a2 = result;
  return result;
}

void sub_1AE23B828(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v2 + 24);
  sub_1ADDD86D8(v3, v4);
  sub_1AE23BEFC();
  sub_1ADDCC35C(v3, v4);
}

unint64_t sub_1AE23B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B8CB8[0];
  if (!qword_1EB5B8CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B8CB8);
  }

  return result;
}

uint64_t sub_1AE23B90C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE744B8;

  return sub_1AE1ABDA4(a1, v5, v4);
}

uint64_t sub_1AE23B9B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE74240;

  return sub_1ADDCF11C(a1, v4);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}