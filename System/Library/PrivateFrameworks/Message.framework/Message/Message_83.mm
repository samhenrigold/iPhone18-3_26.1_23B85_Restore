uint64_t AppendOptions.flagList.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AppendOptions.internalDate.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t AppendOptions.extensions.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppendOptions.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t sub_1B0D31164()
{
  v0 = MEMORY[0x1E69E7CC0];
  result = sub_1B0D98A6C(MEMORY[0x1E69E7CC0]);
  static AppendOptions.none = v0;
  *algn_1EB7383D8 = 0;
  byte_1EB7383E0 = 1;
  qword_1EB7383E8 = result;
  unk_1EB7383F0 = v2;
  qword_1EB7383F8 = v3;
  return result;
}

uint64_t AppendOptions.init(flagList:internalDate:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t *AppendOptions.none.unsafeMutableAddressor()
{
  if (qword_1EB6E6D78 != -1)
  {
    swift_once();
  }

  return &static AppendOptions.none;
}

uint64_t static AppendOptions.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB6E6D78 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EB7383D8;
  v2 = byte_1EB7383E0;
  v3 = qword_1EB7383E8;
  v4 = unk_1EB7383F0;
  v5 = qword_1EB7383F8;
  *a1 = static AppendOptions.none;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0D312C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 55);
    v4 = (a2 + 55);
    do
    {
      v8 = *(v3 - 23);
      v9 = *(v3 - 15);
      v10 = *(v3 - 7) | ((*(v3 - 3) | (*(v3 - 1) << 16)) << 32);
      v11 = *(v4 - 23);
      v12 = *(v4 - 15);
      v13 = *(v4 - 7);
      v14 = v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32);
      if (*v3)
      {
        if ((*v4 & 1) == 0)
        {
          return 0;
        }

        sub_1B0D3C8F0(*(v4 - 23), *(v4 - 15), v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32), 1);
        sub_1B0D3C8F0(v8, v9, v10, 1);
        v15 = sub_1B0D312C0(v8, v11);
        sub_1B0D3C8FC(v11, v12, v14, 1);
        sub_1B0D3C8FC(v8, v9, v10, 1);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if ((*v4 & 1) != 0 || HIDWORD(v9) - v9 != HIDWORD(v12) - v12)
        {
          return 0;
        }

        v16 = HIDWORD(v14) & 0xFFFFFF;
        v17 = BYTE6(v14);
        if (*(v3 - 7) != v14 || (*(v3 - 3) == WORD2(v14) ? (v18 = BYTE6(v10) == BYTE6(v14)) : (v18 = 0), v18 ? (v19 = v8 == v11) : (v19 = 0), !v19))
        {
          v5 = BYTE6(v10);
          v21 = HIDWORD(v10) & 0xFFFFFF;
          v22 = v16;
          v6 = v17;
          swift_beginAccess();
          v7 = *(v8 + 24) + v9;
          swift_beginAccess();
          if (memcmp((v7 + (v5 & 0xFFFFFFFFFF0000FFLL | (v21 << 8))), (*(v11 + 24) + (v6 & 0xFFFFFFFFFF0000FFLL | (v22 << 8)) + v12), HIDWORD(v9) - v9))
          {
            return 0;
          }
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D31510(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v6 = v4 + 16 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = a2 + 32 + 16 * v3;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v8 > 1)
    {
      break;
    }

    if (v8)
    {
      if (v11 != 1)
      {
        return 0;
      }

      v22 = *(v7 + 16);
      if (v22 != *(v10 + 16))
      {
        return 0;
      }

      if (v22)
      {
        v23 = v7 == v10;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_12;
      }

      v24 = 0;
      v25 = v7 + 32;
      v26 = v10 + 32;
      while (v24 != v22)
      {
        v39 = (v25 + 16 * v24);
        v40 = v26 + 16 * v24;
        if ((v39[2] | (v39[2] << 32)) != (*(v40 + 8) | (*(v40 + 8) << 32)))
        {
          return 0;
        }

        v41 = *v39;
        result = *v40;
        v42 = *(*v39 + 16);
        if (v42 != *(result + 16))
        {
          return 0;
        }

        if (v42)
        {
          v43 = v41 == result;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          v44 = (v41 + 32);
          result += 32;
          while (v42)
          {
            if (*v44 != *result)
            {
              return 0;
            }

            ++v44;
            ++result;
            if (!--v42)
            {
              goto LABEL_70;
            }
          }

          goto LABEL_99;
        }

LABEL_70:
        if (++v24 == v22)
        {
          goto LABEL_12;
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v11)
    {
      return 0;
    }

    v12 = *(v7 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v7 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = 0;
      v15 = v7 + 32;
      v16 = v10 + 32;
      while (v14 != v12)
      {
        v27 = (v15 + 16 * v14);
        v28 = v16 + 16 * v14;
        if ((v27[2] | (v27[2] << 32)) != (*(v28 + 8) | (*(v28 + 8) << 32)))
        {
          return 0;
        }

        v29 = *v27;
        result = *v28;
        v30 = *(*v27 + 16);
        if (v30 != *(result + 16))
        {
          return 0;
        }

        if (v30)
        {
          v31 = v29 == result;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = (v29 + 32);
          result += 32;
          while (v30)
          {
            if (*v32 != *result)
            {
              return 0;
            }

            ++v32;
            ++result;
            if (!--v30)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_98;
        }

LABEL_44:
        if (++v14 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_102;
    }

LABEL_12:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  if (v8 != 2)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v11 != 3 || v10 != 1)
        {
          return 0;
        }
      }

      else if (v11 != 3 || v10 != 0)
      {
        return 0;
      }
    }

    else if (v7 == 2)
    {
      if (v11 != 3 || v10 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      result = 0;
      if (v11 != 3 || v10 != 3)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v11 != 3 || v10 != 4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (v11 != 2)
  {
    return 0;
  }

  v17 = *(v7 + 16);
  if (v17 != *(v10 + 16))
  {
    return 0;
  }

  if (v17)
  {
    v18 = v7 == v10;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = 0;
  v20 = v7 + 32;
  v21 = v10 + 32;
  while (v19 != v17)
  {
    v33 = (v20 + 16 * v19);
    v34 = v21 + 16 * v19;
    if ((v33[2] | (v33[2] << 32)) != (*(v34 + 8) | (*(v34 + 8) << 32)))
    {
      return 0;
    }

    v35 = *v33;
    result = *v34;
    v36 = *(*v33 + 16);
    if (v36 != *(result + 16))
    {
      return 0;
    }

    if (v36)
    {
      v37 = v35 == result;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v38 = (v35 + 32);
      result += 32;
      while (v36)
      {
        if (*v38 != *result)
        {
          return 0;
        }

        ++v38;
        ++result;
        if (!--v36)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_57:
    if (++v19 == v17)
    {
      goto LABEL_12;
    }
  }

LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_1B0D3185C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1B0D3CD9C(v20, v17, a4);
        sub_1B0D3CD9C(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_1B0D3CE04(v13, a6);
        sub_1B0D3CE04(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1B0D319FC(uint64_t a1, uint64_t a2)
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

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *i;
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    v9 = *(v6 + 64);
    v58[2] = *(v6 + 48);
    v58[3] = v9;
    v59[0] = *(v6 + 80);
    *(v59 + 15) = *(v6 + 95);
    v10 = *(v6 + 32);
    v58[0] = *(v6 + 16);
    v58[1] = v10;
    if ((v8 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v11 = *(v8 + 64);
    v60[2] = *(v8 + 48);
    v60[3] = v11;
    v61[0] = *(v8 + 80);
    *(v61 + 15) = *(v8 + 95);
    v12 = *(v8 + 32);
    v60[0] = *(v8 + 16);
    v60[1] = v12;

    sub_1B0D3CA68(v60, &v53);
    v13 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v58, v60);
    sub_1B0D3CAC4(v60);

    if ((v13 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if (!--v2)
    {
      return 1;
    }
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v51 = v3;
  v14 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *(v14 + 28);
  v18 = *(v14 + 32);
  v19 = *(v14 + 36);
  v20 = *(v14 + 38);
  v21 = *(v14 + 40);
  v48 = *(v14 + 48);
  v22 = *(v14 + 62);
  v23 = *(v14 + 60);
  v24 = *(v14 + 56);
  v25 = *(v14 + 64);
  v26 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v53 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v54 = v26;
  v55 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v56 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
  v27 = DWORD2(v53);
  if (v17 - v16 != HIDWORD(v53) - DWORD2(v53))
  {
    return 0;
  }

  v45 = v23;
  v46 = v22;
  v47 = v24;
  v50 = v25;
  v52 = v21;
  v28 = v53;
  if (v18 == v54 && v19 == WORD2(v54) && v20 == BYTE6(v54) && v15 == v53)
  {

    sub_1B0D3C9B8(&v53, v57);
  }

  else
  {
    v43 = BYTE6(v54);
    v44 = WORD2(v54);
    swift_beginAccess();
    v29 = *(v15 + 24);
    swift_beginAccess();
    v30 = *(v28 + 24);

    sub_1B0D3C9B8(&v53, v57);
    if (memcmp((v29 + (v20 | (v19 << 8)) + v16), (v30 + (v43 | (v44 << 8)) + v27), v17 - v16))
    {
      goto LABEL_28;
    }
  }

  v31 = *(&v54 + 1);
  if (!v52)
  {
    if (*(&v54 + 1))
    {
      goto LABEL_31;
    }

LABEL_6:
    v5 = sub_1B0D319FC(v50, v56);
    sub_1B0D3CA14(&v53);

    v3 = v51;
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (*(&v54 + 1))
  {
    v32 = v55;
    v33 = HIDWORD(v48);
    if (HIDWORD(v48) - v48 != DWORD1(v55) - v55 || ((v34 = v47 | ((v45 | (v46 << 16)) << 32), v35 = DWORD2(v55) | ((WORD6(v55) | (BYTE14(v55) << 16)) << 32), v36 = BYTE6(v35), v37 = HIDWORD(v34) & 0xFFFFFF, v38 = BYTE6(v34), v47 != DWORD2(v55)) || WORD2(v34) != WORD6(v55) || BYTE6(v34) != BYTE6(v35) || v52 != *(&v54 + 1)) && (v39 = v48, v49 = HIDWORD(v35) & 0xFFFFFF, swift_beginAccess(), v40 = v38 & 0xFFFFFFFFFF0000FFLL | (v37 << 8), v41 = *(v52 + 24) + v39, swift_beginAccess(), memcmp((v41 + v40), (*(v31 + 24) + (v36 & 0xFFFFFFFFFF0000FFLL | (v49 << 8)) + v32), v33 - v39)))
    {
LABEL_28:
      sub_1B0D3CA14(&v53);

      goto LABEL_32;
    }

    goto LABEL_6;
  }

LABEL_31:

  sub_1B0D3CA14(&v53);

LABEL_32:

  return 0;
}

uint64_t sub_1B0D31DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1B0E46A78();
        result = 0;
        if ((v11 & 1) == 0 || v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D31EBC(uint64_t a1, uint64_t a2)
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
        sub_1B0B23938(v5);
        sub_1B0B23938(v7);
        v8 = static SearchKey.__derived_enum_equals(_:_:)(v5, v7);
        sub_1B0B239C8(v7);
        sub_1B0B239C8(v5);
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

uint64_t sub_1B0D31F74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 44);
      v6 = *(a2 + 40);
      if (v4 - v5 == *(a2 + 44) - v6)
      {
        v7 = 0;
        v25 = a2;
        do
        {
          v8 = *(v3 + v7 + 54);
          v9 = *(v3 + v7 + 52);
          v10 = *(v3 + v7 + 32);
          v11 = *(a2 + v7 + 54);
          v12 = *(a2 + v7 + 52);
          v13 = *(a2 + v7 + 32);
          if (*(v3 + v7 + 48) != *(a2 + v7 + 48) || v9 != v12 || v8 != v11 || v10 != v13)
          {
            v17 = v5;
            v26 = v4;
            swift_beginAccess();
            v18 = *(v10 + 24) + (v8 | (v9 << 8));
            swift_beginAccess();
            v19 = memcmp((v18 + v17), (*(v13 + 24) + (v11 | (v12 << 8)) + v6), v26 - v17);
            v3 = a1;
            a2 = v25;
            if (v19)
            {
              break;
            }
          }

          if (!--v2)
          {
            return 1;
          }

          v20 = v3 + v7;
          v21 = a2 + v7;
          v7 += 24;
          v22 = v20 + 64;
          v5 = *(v20 + 64);
          v4 = *(v22 + 4);
          v6 = *(v21 + 64);
        }

        while (v4 - v5 == *(v21 + 68) - v6);
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0D320D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v35 = v2;
  v36 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v27 = *v5;
    v28 = v8;
    v9 = v5[3];
    v29 = v5[2];
    v30 = v9;
    v10 = v6[1];
    v31 = *v6;
    v32 = v10;
    v11 = v6[3];
    v33 = v6[2];
    v34 = v11;
    v12 = v28;
    v13 = *(&v29 + 1);
    v14 = *(&v30 + 1);
    v15 = v30;
    if (v29 > 0xFDu)
    {
      if (v29 == 255)
      {
        if (v33 != 0xFF)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 254)
      {
        if (v33 != 254)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v29 == 252)
      {
        if (v33 != 252)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 253)
      {
        if (v33 != 253)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    if (v33 > 0xFBu)
    {
      return 0;
    }

    v24 = *(&v33 + 1);
    v16 = *(&v34 + 1);
    v25 = v34;
    if ((v29 & 1) == 0)
    {
      if (v33)
      {
        return 0;
      }

      if (v27 == v31)
      {
        goto LABEL_28;
      }

LABEL_27:
      if ((sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if ((v33 & 1) == 0)
    {
      return 0;
    }

    v17 = *(&v32 + 1);
    v18 = v32;
    if (v27 != v31)
    {
      v23 = *(&v32 + 1);
      v19 = sub_1B0E46A78();
      v17 = v23;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (v12 != __PAIR128__(v17, v18))
    {
      goto LABEL_27;
    }

LABEL_28:
    if (HIBYTE(v14) != 255)
    {
      break;
    }

    if (HIBYTE(v16) != 255)
    {
      goto LABEL_48;
    }

LABEL_43:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v16) != 255)
  {
    if ((v14 & 0x100000000000000) != 0)
    {
      if ((v16 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1B0D3CBB0(&v31, v26);
      sub_1B0D3CBB0(&v27, v26);
      sub_1B0D3CB80(v13, v15, v14);
      sub_1B0D3CB80(v24, v25, v16);
      v21 = sub_1B0D312C0(v13, v24);
      sub_1B0D3CB98(v24, v25, v16);
      sub_1B0D3CB98(v13, v15, v14);
      sub_1B0D3CC0C(&v31);
      sub_1B0D3CC0C(&v27);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v16 & 0x100000000000000) != 0 || HIDWORD(v15) - v15 != HIDWORD(v25) - v25)
      {
        return 0;
      }

      if (v14 != v16 || WORD2(v14) != WORD2(v16) || BYTE6(v14) != BYTE6(v16) || v13 != v24)
      {
        swift_beginAccess();
        v20 = *(v13 + 24);
        swift_beginAccess();
        if (memcmp((v20 + (BYTE6(v14) | (WORD2(v14) << 8)) + v15), (*(v24 + 24) + (BYTE6(v16) | (WORD2(v16) << 8)) + v25), HIDWORD(v15) - v15))
        {
          return 0;
        }
      }
    }

    goto LABEL_43;
  }

LABEL_48:
  sub_1B0D3CB80(v13, v15, v14);
  sub_1B0D3CB80(v24, v25, v16);
  sub_1B0D3CB98(v13, v15, v14);
  sub_1B0D3CB98(v24, v25, v16);
  return 0;
}

uint64_t sub_1B0D32464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v95 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  MEMORY[0x1EEE9AC00](v105);
  v9 = &v95 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v95 - v13;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  MEMORY[0x1EEE9AC00](v112);
  v15 = &v95 - v14;
  v116 = type metadata accessor for ParameterValue(0);
  v16 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = (&v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v95 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v117 = &v95 - v23;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v95 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v114);
  v26 = (&v95 - v25);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F60, &qword_1B0EEEB08);
  MEMORY[0x1EEE9AC00](v121);
  v28 = &v95 - v27;
  Parameter = type metadata accessor for CreateParameter(0);
  MEMORY[0x1EEE9AC00](Parameter);
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v95 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v95 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v95 - v35;
  v38 = *(a1 + 16);
  if (v38 != *(a2 + 16))
  {
    return 0;
  }

  if (!v38 || a1 == a2)
  {
    return 1;
  }

  v101 = v36;
  v95 = v7;
  v96 = v4;
  v97 = v9;
  v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v110 = a1 + v39;
  v108 = a2 + v39;
  v99 = (v16 + 48);
  v40 = 0;
  v41 = (v5 + 48);
  v109 = *(v34 + 72);
  v42 = v118;
  v43 = v124;
  v102 = v41;
  v100 = v28;
  v98 = v15;
  v104 = v26;
  v122 = &v95 - v35;
  v123 = v38;
  while (1)
  {
    v44 = v109 * v40;
    v45 = v37;
    result = sub_1B0D3CD9C(v110 + v109 * v40, v37, type metadata accessor for CreateParameter);
    if (v40 == v123)
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v119 = v40;
    v47 = v125;
    sub_1B0D3CD9C(v108 + v44, v125, type metadata accessor for CreateParameter);
    v48 = *(v121 + 48);
    sub_1B0D3CD9C(v45, v28, type metadata accessor for CreateParameter);
    sub_1B0D3CD9C(v47, v28 + v48, type metadata accessor for CreateParameter);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v49 = v101;
    sub_1B0D3CD9C(v28, v101, type metadata accessor for CreateParameter);
    v50 = *v49;
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
      sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
      goto LABEL_60;
    }

    v51 = *(v28 + v48);
    v15 = *(v50 + 16);
    if (v15 != *(v51 + 16))
    {
LABEL_56:
      sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
      sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);

      v88 = v100;
      goto LABEL_77;
    }

    if (v15 && v50 != v51)
    {
      v52 = 0;
      v53 = v50 + 40;
      v26 = (v51 + 40);
      while (v52 < *(v50 + 16))
      {
        if (v52 >= *(v51 + 16))
        {
          goto LABEL_68;
        }

        v28 = *v26;
        v54 = sub_1B0E44B98();
        v56 = v55;
        if (v54 == sub_1B0E44B98() && v56 == v57)
        {
        }

        else
        {
          v28 = sub_1B0E46A78();

          if ((v28 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        ++v52;
        v53 += 16;
        v26 += 2;
        if (v15 == v52)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      sub_1B0398EFC(v107, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0D3CE04(v113, type metadata accessor for ParameterValue);
      sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
      sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
      sub_1B0398EFC(v50, &qword_1EB6E4040, &qword_1B0EC2B10);
LABEL_70:
      v93 = &qword_1EB6E6F10;
      v94 = &qword_1B0EEEAD0;
LABEL_72:
      sub_1B0398EFC(v97, v93, v94);
      sub_1B0398EFC(v111, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0D3CE04(v15, type metadata accessor for ParameterValue);
      v43 = v124;
      goto LABEL_73;
    }

LABEL_5:
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);

    v28 = v100;
    v15 = v98;
    v26 = v104;
    v42 = v118;
    v43 = v124;
    v41 = v102;
LABEL_6:
    v40 = v119 + 1;
    sub_1B0D3CE04(v28, type metadata accessor for CreateParameter);
    v37 = v122;
    if (v40 == v123)
    {
      return 1;
    }
  }

  sub_1B0D3CD9C(v28, v43, type metadata accessor for CreateParameter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
    sub_1B0398EFC(v43, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_60:
    sub_1B0398EFC(v28, &qword_1EB6E6F60, &qword_1B0EEEB08);
    return 0;
  }

  sub_1B03C60A4(v28 + v48, v26, &qword_1EB6E6F58, &unk_1B0EF5150);
  if ((*v43 != *v26 || v43[1] != v26[1]) && (sub_1B0E46A78() & 1) == 0)
  {
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
    goto LABEL_76;
  }

  v59 = *(v114 + 52);
  v60 = *(v115 + 48);
  sub_1B03B5C80(v43 + v59, v42, &qword_1EB6E6440, &unk_1B0EF3530);
  sub_1B03B5C80(v26 + v59, v42 + v60, &qword_1EB6E6440, &unk_1B0EF3530);
  v61 = *v99;
  v62 = v116;
  if ((*v99)(v42, 1, v116) == 1)
  {
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
    v63 = v61(v42 + v60, 1, v62);
    v41 = v102;
    v43 = v124;
    v26 = v104;
    if (v63 != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_54;
  }

  sub_1B03B5C80(v42, v117, &qword_1EB6E6440, &unk_1B0EF3530);
  if (v61(v42 + v60, 1, v62) == 1)
  {
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v117, type metadata accessor for ParameterValue);
    v43 = v124;
    v26 = v104;
LABEL_63:
    v90 = &qword_1EB6E6F20;
    v91 = &unk_1B0EF5F80;
    v92 = v42;
    goto LABEL_75;
  }

  v64 = v113;
  sub_1B0D3CD34(v42 + v60, v113, type metadata accessor for ParameterValue);
  v65 = *(v112 + 48);
  sub_1B0D3CD9C(v117, v15, type metadata accessor for ParameterValue);
  sub_1B0D3CD9C(v64, &v15[v65], type metadata accessor for ParameterValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = v124;
  if (EnumCaseMultiPayload != 1)
  {
    v74 = v111;
    sub_1B0D3CD9C(v15, v111, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v75 = v107;
      sub_1B03C60A4(&v15[v65], v107, &qword_1EB6E4050, &unk_1B0EC2B20);
      v76 = *(v105 + 48);
      v77 = v74;
      v78 = v75;
      v79 = v97;
      sub_1B03B5C80(v77, v97, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B03B5C80(v75, v79 + v76, &qword_1EB6E4050, &unk_1B0EC2B20);
      v80 = *v41;
      v81 = v79;
      v82 = v96;
      v83 = (*v41)(v81, 1, v96);
      v26 = v104;
      if (v83 == 1)
      {
        sub_1B0398EFC(v78, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v113, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
        sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
        if (v80(&v97[v76], 1, v82) != 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v84 = v97;
        v50 = v103;
        sub_1B03B5C80(v97, v103, &qword_1EB6E4050, &unk_1B0EC2B20);
        if (v80(v84 + v76, 1, v82) == 1)
        {
          goto LABEL_69;
        }

        v85 = v95;
        sub_1B03C60A4(&v97[v76], v95, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B03D06F8();
        v86 = v50;
        v87 = sub_1B0E46E08();
        sub_1B0398EFC(v85, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B0398EFC(v107, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v113, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
        sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
        sub_1B0398EFC(v86, &qword_1EB6E4040, &qword_1B0EC2B10);
        if ((v87 & 1) == 0)
        {
          v93 = &qword_1EB6E4050;
          v94 = &unk_1B0EC2B20;
          goto LABEL_72;
        }
      }

      sub_1B0398EFC(v97, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0398EFC(v111, &qword_1EB6E4050, &unk_1B0EC2B20);
      v43 = v124;
      v42 = v118;
      goto LABEL_53;
    }

    sub_1B0D3CE04(v113, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
    sub_1B0398EFC(v74, &qword_1EB6E4050, &unk_1B0EC2B20);
LABEL_66:
    v26 = v104;
    sub_1B0398EFC(v15, &qword_1EB6E6F18, &qword_1B0EEEAD8);
LABEL_73:
    v89 = v118;
    goto LABEL_74;
  }

  v67 = v106;
  sub_1B0D3CD9C(v15, v106, type metadata accessor for ParameterValue);
  v68 = *v67;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1B0D3CE04(v113, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);
    goto LABEL_66;
  }

  v69 = *&v15[v65];
  v70 = *(v68 + 16);
  v26 = v104;
  if (v70 != *(v69 + 16))
  {
    goto LABEL_57;
  }

  if (!v70 || v68 == v69)
  {
LABEL_49:
    sub_1B0D3CE04(v113, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
    sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);

    v42 = v118;
    v43 = v124;
    v41 = v102;
LABEL_53:
    sub_1B0D3CE04(v15, type metadata accessor for ParameterValue);
    sub_1B0D3CE04(v117, type metadata accessor for ParameterValue);
LABEL_54:
    sub_1B0398EFC(v42, &qword_1EB6E6440, &unk_1B0EF3530);
    sub_1B0398EFC(v26, &qword_1EB6E6F58, &unk_1B0EF5150);
    sub_1B0398EFC(v43, &qword_1EB6E6F58, &unk_1B0EF5150);
    goto LABEL_6;
  }

  v71 = (v68 + 40);
  v72 = (v69 + 40);
  while (1)
  {
    v73 = *(v71 - 1) == *(v72 - 1) && *v71 == *v72;
    if (!v73 && (sub_1B0E46A78() & 1) == 0)
    {
      break;
    }

    v71 += 2;
    v72 += 2;
    if (!--v70)
    {
      goto LABEL_49;
    }
  }

LABEL_57:
  sub_1B0D3CE04(v113, type metadata accessor for ParameterValue);
  sub_1B0D3CE04(v125, type metadata accessor for CreateParameter);
  sub_1B0D3CE04(v122, type metadata accessor for CreateParameter);

  sub_1B0D3CE04(v15, type metadata accessor for ParameterValue);
  v89 = v118;
  v43 = v124;
LABEL_74:
  sub_1B0D3CE04(v117, type metadata accessor for ParameterValue);
  v90 = &qword_1EB6E6440;
  v91 = &unk_1B0EF3530;
  v92 = v89;
LABEL_75:
  sub_1B0398EFC(v92, v90, v91);
LABEL_76:
  sub_1B0398EFC(v26, &qword_1EB6E6F58, &unk_1B0EF5150);
  sub_1B0398EFC(v43, &qword_1EB6E6F58, &unk_1B0EF5150);
  v88 = v28;
LABEL_77:
  sub_1B0D3CE04(v88, type metadata accessor for CreateParameter);
  return 0;
}

uint64_t sub_1B0D336F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QResyncParameter(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v102 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v110 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v102 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v102 - v16;
  v127 = type metadata accessor for ParameterValue(0);
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v112 = (&v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v102 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v119 = &v102 - v23;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v102 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v120);
  v128 = (&v102 - v25);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F68, &qword_1B0EEEB10);
  MEMORY[0x1EEE9AC00](v130);
  v27 = &v102 - v26;
  v129 = type metadata accessor for SelectParameter(0);
  MEMORY[0x1EEE9AC00](v129);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v102 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v37 = &v102 - v36;
  v38 = *(a1 + 16);
  if (v38 != *(a2 + 16))
  {
    return 0;
  }

  if (!v38 || a1 == a2)
  {
    return 1;
  }

  v107 = v6;
  v108 = v35;
  v122 = v34;
  v102 = v10;
  v104 = v7;
  v39 = 0;
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v126 = a1 + v40;
  v124 = a2 + v40;
  v106 = (v125 + 48);
  v103 = (v8 + 48);
  v125 = *(v33 + 72);
  v109 = v31;
  while (1)
  {
    v41 = v125 * v39;
    result = sub_1B0D3CD9C(v126 + v125 * v39, v37, type metadata accessor for SelectParameter);
    if (v39 == v38)
    {
      break;
    }

    sub_1B0D3CD9C(v124 + v41, v31, type metadata accessor for SelectParameter);
    v43 = *(v130 + 48);
    sub_1B0D3CD9C(v37, v27, type metadata accessor for SelectParameter);
    sub_1B0D3CD9C(v31, &v27[v43], type metadata accessor for SelectParameter);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = v37;
        v46 = v108;
        sub_1B0D3CD9C(v27, v108, type metadata accessor for SelectParameter);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1B0D3CE04(v46, type metadata accessor for QResyncParameter);
LABEL_49:
          sub_1B0398EFC(v27, &qword_1EB6E6F68, &qword_1B0EEEB10);
          goto LABEL_62;
        }

        v47 = v107;
        sub_1B0D3CD34(&v27[v43], v107, type metadata accessor for QResyncParameter);
        _s12NIOIMAPCore216QResyncParameterV23__derived_struct_equalsySbAC_ACtFZ_0(v46, v48);
        v50 = v49;
        sub_1B0D3CE04(v47, type metadata accessor for QResyncParameter);
        sub_1B0D3CE04(v46, type metadata accessor for QResyncParameter);
        v37 = v45;
        if ((v50 & 1) == 0)
        {
          sub_1B0D3CE04(v27, type metadata accessor for SelectParameter);
          goto LABEL_62;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v51 = v127;
      v52 = v122;
      sub_1B0D3CD9C(v27, v122, type metadata accessor for SelectParameter);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = v123;
      if (v53)
      {
        sub_1B0398EFC(v52, &qword_1EB6E6F58, &unk_1B0EF5150);
        v31 = v109;
        goto LABEL_49;
      }

      v55 = v128;
      sub_1B03C60A4(&v27[v43], v128, &qword_1EB6E6F58, &unk_1B0EF5150);
      if (*v52 != *v55 || (v56 = v52, v52[1] != v55[1]))
      {
        v57 = sub_1B0E46A78();
        v56 = v122;
        if ((v57 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v58 = *(v120 + 52);
      v59 = *(v121 + 48);
      sub_1B03B5C80(v56 + v58, v54, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B03B5C80(v128 + v58, v54 + v59, &qword_1EB6E6440, &unk_1B0EF3530);
      v60 = *v106;
      if ((*v106)(v54, 1, v51) == 1)
      {
        v61 = v60(v54 + v59, 1, v127);
        v31 = v109;
        if (v61 != 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v62 = v54;
        v63 = v54;
        v64 = v119;
        sub_1B03B5C80(v62, v119, &qword_1EB6E6440, &unk_1B0EF3530);
        if (v60(v63 + v59, 1, v127) == 1)
        {
          sub_1B0D3CE04(v64, type metadata accessor for ParameterValue);
          v54 = v63;
LABEL_51:
          v96 = &qword_1EB6E6F20;
          v97 = &unk_1B0EF5F80;
          v98 = v54;
          goto LABEL_60;
        }

        v65 = v63 + v59;
        v66 = v118;
        sub_1B0D3CD34(v65, v118, type metadata accessor for ParameterValue);
        v67 = v117;
        v68 = *(v116 + 48);
        sub_1B0D3CD9C(v64, v117, type metadata accessor for ParameterValue);
        sub_1B0D3CD9C(v66, v67 + v68, type metadata accessor for ParameterValue);
        v69 = swift_getEnumCaseMultiPayload();
        v31 = v109;
        if (v69 == 1)
        {
          v70 = v112;
          sub_1B0D3CD9C(v67, v112, type metadata accessor for ParameterValue);
          v71 = *v70;
          if (swift_getEnumCaseMultiPayload() != 1)
          {

LABEL_54:
            sub_1B0398EFC(v67, &qword_1EB6E6F18, &qword_1B0EEEAD8);
            goto LABEL_59;
          }

          v72 = *(v67 + v68);
          v73 = *(v71 + 16);
          if (v73 != *(v72 + 16))
          {
            goto LABEL_46;
          }

          if (v73 && v71 != v72)
          {
            v74 = (v71 + 40);
            v75 = (v72 + 40);
            while (1)
            {
              v76 = *(v74 - 1) == *(v75 - 1) && *v74 == *v75;
              if (!v76 && (sub_1B0E46A78() & 1) == 0)
              {
                break;
              }

              v74 += 2;
              v75 += 2;
              if (!--v73)
              {
                goto LABEL_39;
              }
            }

LABEL_46:

            v95 = v117;
            goto LABEL_58;
          }

LABEL_39:

          v89 = v117;
          v31 = v109;
        }

        else
        {
          v77 = v115;
          sub_1B0D3CD9C(v67, v115, type metadata accessor for ParameterValue);
          v78 = swift_getEnumCaseMultiPayload();
          v79 = v113;
          if (v78 == 1)
          {
            sub_1B0398EFC(v77, &qword_1EB6E4050, &unk_1B0EC2B20);
            goto LABEL_54;
          }

          v80 = v67 + v68;
          v81 = v77;
          v82 = v114;
          sub_1B03C60A4(v80, v114, &qword_1EB6E4050, &unk_1B0EC2B20);
          v83 = *(v111 + 48);
          sub_1B03B5C80(v81, v79, &qword_1EB6E4050, &unk_1B0EC2B20);
          v105 = v83;
          sub_1B03B5C80(v82, v79 + v83, &qword_1EB6E4050, &unk_1B0EC2B20);
          v84 = *v103;
          v85 = v79;
          v86 = v79;
          v87 = v104;
          if ((*v103)(v85, 1, v104) == 1)
          {
            v76 = v84(v86 + v105, 1, v87) == 1;
            v88 = v86;
            v89 = v117;
            v90 = v115;
            if (!v76)
            {
              goto LABEL_56;
            }

            sub_1B0398EFC(v88, &qword_1EB6E4050, &unk_1B0EC2B20);
          }

          else
          {
            sub_1B03B5C80(v86, v110, &qword_1EB6E4050, &unk_1B0EC2B20);
            if (v84(v86 + v105, 1, v87) == 1)
            {
              sub_1B0398EFC(v110, &qword_1EB6E4040, &qword_1B0EC2B10);
              v88 = v86;
              v89 = v117;
              v90 = v115;
LABEL_56:
              sub_1B0398EFC(v88, &qword_1EB6E6F10, &qword_1B0EEEAD0);
LABEL_57:
              sub_1B0398EFC(v114, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0398EFC(v90, &qword_1EB6E4050, &unk_1B0EC2B20);
              v95 = v89;
LABEL_58:
              sub_1B0D3CE04(v95, type metadata accessor for ParameterValue);
LABEL_59:
              v99 = v119;
              v100 = v123;
              sub_1B0D3CE04(v118, type metadata accessor for ParameterValue);
              sub_1B0D3CE04(v99, type metadata accessor for ParameterValue);
              v96 = &qword_1EB6E6440;
              v97 = &unk_1B0EF3530;
              v98 = v100;
LABEL_60:
              sub_1B0398EFC(v98, v96, v97);
              v56 = v122;
LABEL_61:
              v101 = v56;
              sub_1B0398EFC(v128, &qword_1EB6E6F58, &unk_1B0EF5150);
              sub_1B0398EFC(v101, &qword_1EB6E6F58, &unk_1B0EF5150);
              sub_1B0D3CE04(v27, type metadata accessor for SelectParameter);
              v31 = v109;
LABEL_62:
              sub_1B0D3CE04(v31, type metadata accessor for SelectParameter);
              sub_1B0D3CE04(v37, type metadata accessor for SelectParameter);
              return 0;
            }

            v91 = v86 + v105;
            v92 = v102;
            sub_1B03C60A4(v91, v102, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B03D06F8();
            v93 = v110;
            v94 = sub_1B0E46E08();
            sub_1B0398EFC(v92, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v93, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v113, &qword_1EB6E4050, &unk_1B0EC2B20);
            v89 = v117;
            v90 = v115;
            if ((v94 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          sub_1B0398EFC(v114, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v90, &qword_1EB6E4050, &unk_1B0EC2B20);
        }

        sub_1B0D3CE04(v89, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v118, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v119, type metadata accessor for ParameterValue);
        v54 = v123;
      }

      sub_1B0398EFC(v54, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B0398EFC(v128, &qword_1EB6E6F58, &unk_1B0EF5150);
      sub_1B0398EFC(v122, &qword_1EB6E6F58, &unk_1B0EF5150);
    }

    ++v39;
    sub_1B0D3CE04(v27, type metadata accessor for SelectParameter);
    sub_1B0D3CE04(v31, type metadata accessor for SelectParameter);
    sub_1B0D3CE04(v37, type metadata accessor for SelectParameter);
    if (v39 == v38)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1B0D34654(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24 = *v5;
    v25 = v8;
    v9 = v5[3];
    v26 = v5[2];
    v27 = v9;
    v10 = v6[1];
    v28 = *v6;
    v29 = v10;
    v11 = v6[3];
    v30 = v6[2];
    v31 = v11;
    if (v26 == 254)
    {
      if (v30 != 254)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v26 == 255)
    {
      if (v30 != 0xFF)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (v30 > 0xFDu)
    {
      return 0;
    }

    v12 = *(&v27 + 1);
    v13 = v27;
    v20 = *(&v26 + 1);
    v21 = *(&v30 + 1);
    v14 = *(&v31 + 1);
    v22 = v31;
    if ((v26 & 1) == 0)
    {
      if (v30)
      {
        return 0;
      }

      if (v24 == v28)
      {
        goto LABEL_21;
      }

LABEL_20:
      if ((sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if ((v30 & 1) == 0)
    {
      return 0;
    }

    v15 = v25;
    v16 = v29;
    if (v24 != v28 && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    if (v15 != v16)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (HIBYTE(v12) != 255)
    {
      break;
    }

    if (HIBYTE(v14) != 255)
    {
      goto LABEL_41;
    }

LABEL_36:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v14) != 255)
  {
    if ((v12 & 0x100000000000000) != 0)
    {
      if ((v14 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1B0D3CC84(&v28, v23);
      sub_1B0D3CC84(&v24, v23);
      sub_1B0D3CB80(v20, v13, v12);
      sub_1B0D3CB80(v21, v22, v14);
      v18 = sub_1B0D312C0(v20, v21);
      sub_1B0D3CB98(v21, v22, v14);
      sub_1B0D3CB98(v20, v13, v12);
      sub_1B0D3CCE0(&v28);
      sub_1B0D3CCE0(&v24);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v14 & 0x100000000000000) != 0 || HIDWORD(v13) - v13 != HIDWORD(v22) - v22)
      {
        return 0;
      }

      if (v12 != v14 || WORD2(v12) != WORD2(v14) || BYTE6(v12) != BYTE6(v14) || v20 != v21)
      {
        swift_beginAccess();
        v17 = *(v20 + 24);
        swift_beginAccess();
        if (memcmp((v17 + (BYTE6(v12) | (WORD2(v12) << 8)) + v13), (*(v21 + 24) + (BYTE6(v14) | (WORD2(v14) << 8)) + v22), HIDWORD(v13) - v13))
        {
          return 0;
        }
      }
    }

    goto LABEL_36;
  }

LABEL_41:
  sub_1B0D3CB80(v20, v13, v12);
  sub_1B0D3CB80(v21, v22, v14);
  sub_1B0D3CB98(v20, v13, v12);
  sub_1B0D3CB98(v21, v22, v14);
  return 0;
}

uint64_t sub_1B0D34A04(uint64_t a1, uint64_t a2)
{
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v118 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v91 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v91 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  MEMORY[0x1EEE9AC00](v107);
  v11 = &v91 - v10;
  v115 = type metadata accessor for ParameterValue(0);
  v12 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v102 = (&v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v91 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  MEMORY[0x1EEE9AC00](v114);
  v117 = &v91 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v113);
  v121 = (&v91 - v22);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F70, &qword_1B0EEEB18);
  MEMORY[0x1EEE9AC00](v120);
  v24 = &v91 - v23;
  v119 = type metadata accessor for StoreModifier(0);
  MEMORY[0x1EEE9AC00](v119);
  v26 = (&v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v91 - v33;
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
    return 0;
  }

  v116 = *(a1 + 16);
  if (!v36 || a1 == a2)
  {
    return 1;
  }

  v93 = v11;
  v98 = v34;
  v94 = v20;
  v37 = 0;
  v38 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v112 = a1 + v38;
  v110 = a2 + v38;
  v97 = (v12 + 48);
  v91 = (v118 + 48);
  v111 = *(v32 + 72);
  v118 = &v91 - v33;
  v39 = v116;
  v92 = v26;
  v96 = v24;
  v95 = v30;
  while (1)
  {
    v43 = v111 * v37;
    result = sub_1B0D3CD9C(v112 + v111 * v37, v35, type metadata accessor for StoreModifier);
    if (v37 == v39)
    {
      break;
    }

    sub_1B0D3CD9C(v110 + v43, v30, type metadata accessor for StoreModifier);
    v45 = *(v120 + 48);
    sub_1B0D3CD9C(v35, v24, type metadata accessor for StoreModifier);
    sub_1B0D3CD9C(v30, &v24[v45], type metadata accessor for StoreModifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v26;
      sub_1B0D3CD9C(v24, v26, type metadata accessor for StoreModifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
        sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
        sub_1B0398EFC(v26, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_45:
        sub_1B0398EFC(v24, &qword_1EB6E6F70, &qword_1B0EEEB18);
        return 0;
      }

      v46 = v121;
      sub_1B03C60A4(&v24[v45], v121, &qword_1EB6E6F58, &unk_1B0EF5150);
      if ((*v26 != *v46 || v26[1] != v46[1]) && (sub_1B0E46A78() & 1) == 0)
      {
        sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
        sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
LABEL_55:
        sub_1B0398EFC(v121, &qword_1EB6E6F58, &unk_1B0EF5150);
        sub_1B0398EFC(v42, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_56:
        sub_1B0D3CE04(v24, type metadata accessor for StoreModifier);
        return 0;
      }

      v108 = v37;
      v47 = *(v113 + 52);
      v48 = *(v114 + 48);
      v49 = v117;
      v50 = v26;
      sub_1B03B5C80(v26 + v47, v117, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B03B5C80(v121 + v47, v49 + v48, &qword_1EB6E6440, &unk_1B0EF3530);
      v51 = *v97;
      v52 = v115;
      if ((*v97)(v49, 1, v115) == 1)
      {
        v40 = v95;
        sub_1B0D3CE04(v95, type metadata accessor for StoreModifier);
        sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
        v41 = v51(v49 + v48, 1, v52);
        v30 = v40;
        v24 = v96;
        v42 = v50;
        if (v41 != 1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v53 = v94;
        sub_1B03B5C80(v49, v94, &qword_1EB6E6440, &unk_1B0EF3530);
        if (v51(v49 + v48, 1, v52) == 1)
        {
          sub_1B0D3CE04(v95, type metadata accessor for StoreModifier);
          sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
          sub_1B0D3CE04(v53, type metadata accessor for ParameterValue);
          v42 = v92;
          v24 = v96;
LABEL_48:
          v85 = &qword_1EB6E6F20;
          v86 = &unk_1B0EF5F80;
          goto LABEL_54;
        }

        v54 = v49 + v48;
        v55 = v109;
        sub_1B0D3CD34(v54, v109, type metadata accessor for ParameterValue);
        v56 = *(v107 + 48);
        v57 = v53;
        v58 = v93;
        sub_1B0D3CD9C(v57, v93, type metadata accessor for ParameterValue);
        sub_1B0D3CD9C(v55, v58 + v56, type metadata accessor for ParameterValue);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v30 = v95;
        v24 = v96;
        if (EnumCaseMultiPayload == 1)
        {
          v60 = v102;
          sub_1B0D3CD9C(v58, v102, type metadata accessor for ParameterValue);
          v61 = *v60;
          v62 = swift_getEnumCaseMultiPayload();
          v42 = v92;
          if (v62 != 1)
          {

            sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
            goto LABEL_51;
          }

          v63 = *(v58 + v56);
          v64 = *(v61 + 16);
          if (v64 != *(v63 + 16))
          {
            goto LABEL_43;
          }

          if (v64 && v61 != v63)
          {
            v65 = (v61 + 40);
            v66 = (v63 + 40);
            while (1)
            {
              v67 = *(v65 - 1) == *(v66 - 1) && *v65 == *v66;
              if (!v67 && (sub_1B0E46A78() & 1) == 0)
              {
                break;
              }

              v65 += 2;
              v66 += 2;
              if (!--v64)
              {
                goto LABEL_37;
              }
            }

LABEL_43:
            sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);

            sub_1B0D3CE04(v93, type metadata accessor for ParameterValue);
LABEL_52:
            v87 = v94;
            v49 = v117;
LABEL_53:
            sub_1B0D3CE04(v87, type metadata accessor for ParameterValue);
            v85 = &qword_1EB6E6440;
            v86 = &unk_1B0EF3530;
LABEL_54:
            sub_1B0398EFC(v49, v85, v86);
            goto LABEL_55;
          }

LABEL_37:
          sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
          sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
          sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);

          v81 = v93;
          v49 = v117;
        }

        else
        {
          v71 = v106;
          sub_1B0D3CD9C(v58, v106, type metadata accessor for ParameterValue);
          v72 = swift_getEnumCaseMultiPayload();
          v73 = v103;
          v74 = v104;
          v75 = v91;
          if (v72 == 1)
          {
            sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
            sub_1B0398EFC(v71, &qword_1EB6E4050, &unk_1B0EC2B20);
            v42 = v92;
LABEL_51:
            sub_1B0398EFC(v58, &qword_1EB6E6F18, &qword_1B0EEEAD8);
            goto LABEL_52;
          }

          v76 = v58 + v56;
          v77 = v105;
          sub_1B03C60A4(v76, v105, &qword_1EB6E4050, &unk_1B0EC2B20);
          v78 = *(v101 + 48);
          sub_1B03B5C80(v71, v74, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B03B5C80(v77, v74 + v78, &qword_1EB6E4050, &unk_1B0EC2B20);
          v79 = *v75;
          if ((*v75)(v74, 1, v73) == 1)
          {
            sub_1B0398EFC(v77, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
            v67 = v79(v74 + v78, 1, v73) == 1;
            v80 = v74;
            v49 = v117;
            if (!v67)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v82 = v100;
            sub_1B03B5C80(v74, v100, &qword_1EB6E4050, &unk_1B0EC2B20);
            if (v79(v74 + v78, 1, v73) == 1)
            {
              sub_1B0398EFC(v105, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
              sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
              sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
              sub_1B0398EFC(v82, &qword_1EB6E4040, &qword_1B0EC2B10);
              v80 = v74;
              v49 = v117;
LABEL_59:
              v88 = &qword_1EB6E6F10;
              v89 = &qword_1B0EEEAD0;
              goto LABEL_61;
            }

            v83 = v99;
            sub_1B03C60A4(v74 + v78, v99, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B03D06F8();
            v84 = sub_1B0E46E08();
            sub_1B0398EFC(v83, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v105, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v109, type metadata accessor for ParameterValue);
            sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
            sub_1B0D3CE04(v118, type metadata accessor for StoreModifier);
            sub_1B0398EFC(v82, &qword_1EB6E4040, &qword_1B0EC2B10);
            v80 = v74;
            v49 = v117;
            if ((v84 & 1) == 0)
            {
              v88 = &qword_1EB6E4050;
              v89 = &unk_1B0EC2B20;
LABEL_61:
              sub_1B0398EFC(v80, v88, v89);
              v90 = v93;
              sub_1B0398EFC(v106, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v90, type metadata accessor for ParameterValue);
              v87 = v94;
              v42 = v92;
              goto LABEL_53;
            }
          }

          sub_1B0398EFC(v80, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v106, &qword_1EB6E4050, &unk_1B0EC2B20);
          v42 = v92;
          v81 = v93;
        }

        sub_1B0D3CE04(v81, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v94, type metadata accessor for ParameterValue);
        v39 = v116;
      }

      sub_1B0398EFC(v49, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B0398EFC(v121, &qword_1EB6E6F58, &unk_1B0EF5150);
      v26 = v42;
      sub_1B0398EFC(v42, &qword_1EB6E6F58, &unk_1B0EF5150);
      v37 = v108;
    }

    else
    {
      sub_1B0D3CE04(v30, type metadata accessor for StoreModifier);
      sub_1B0D3CE04(v35, type metadata accessor for StoreModifier);
      v68 = v98;
      sub_1B0D3CD9C(v24, v98, type metadata accessor for StoreModifier);
      v69 = *v68;
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        goto LABEL_45;
      }

      v70 = *&v24[v45];
      v39 = v116;
      if ((v70 | v69) < 0)
      {
        goto LABEL_63;
      }

      if (v70 != v69)
      {
        goto LABEL_56;
      }
    }

    ++v37;
    sub_1B0D3CE04(v24, type metadata accessor for StoreModifier);
    v35 = v118;
    if (v37 == v39)
    {
      return 1;
    }
  }

  __break(1u);
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1B0D35B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1B0E46A78();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D35C20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v27 = *v5;
    v28[0] = v8;
    *&v28[1] = *(v5 + 4);
    v9 = v27;
    v10 = DWORD2(v27);
    v11 = HIDWORD(v27);
    v12 = v8;
    v13 = WORD2(v8);
    v14 = BYTE6(v8);
    v15 = v6[1];
    v29 = *v6;
    *v30 = v15;
    *&v30[16] = *(v6 + 4);
    v16 = DWORD2(v29);
    if (HIDWORD(v27) - DWORD2(v27) != HIDWORD(v29) - DWORD2(v29))
    {
      break;
    }

    v24 = v5;
    v25 = v7;
    v17 = v29;
    v18 = *&v30[4];
    v19 = v30[6];
    if (v12 == *v30 && v13 == *&v30[4] && v14 == v30[6] && v27 == v29)
    {
      sub_1B0D3CE64(&v27, v26);
      sub_1B0D3CE64(&v29, v26);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1B0D3CE64(&v27, v26);
      sub_1B0D3CE64(&v29, v26);
      if (memcmp((v20 + (v14 | (v13 << 8)) + v10), (v21 + (v19 | (v18 << 8)) + v16), v11 - v10))
      {
        sub_1B0D3CEC0(&v29);
        sub_1B0D3CEC0(&v27);
        return 0;
      }
    }

    if (*(v28 + 8) == *&v30[8])
    {
      sub_1B0D3CEC0(&v29);
      sub_1B0D3CEC0(&v27);
    }

    else
    {
      v22 = sub_1B0E46A78();
      sub_1B0D3CEC0(&v29);
      sub_1B0D3CEC0(&v27);
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    if (!v25)
    {
      return 1;
    }

    v7 = v25 - 1;
    v6 = (v6 + 40);
    v5 = (v24 + 40);
  }

  return 0;
}

uint64_t sub_1B0D35E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v11 = *(v4 - 2);
      v10 = *(v4 - 1);
      v12 = *v4 | ((*(v4 + 2) | (*(v4 + 6) << 16)) << 32);
      v13 = *v3 | ((*(v3 + 2) | (*(v3 + 6) << 16)) << 32);
      v15 = *(v3 - 2);
      v14 = *(v3 - 1);
      v16 = BYTE6(v12);
      if (v11 < 0)
      {
        if ((v15 & 0x8000000000000000) == 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v21 = v11 & 0x7FFFFFFFFFFFFFFFLL;
        v22 = v15 & 0x7FFFFFFFFFFFFFFFLL;
        v23 = BYTE6(v13);
        if (*v4 != *v3 || (*(v4 + 2) == *(v3 + 2) ? (v24 = BYTE6(v12) == BYTE6(v13)) : (v24 = 0), v24 ? (v25 = v21 == v22) : (v25 = 0), !v25))
        {
          v26 = v10;
          v31 = HIDWORD(v13) & 0xFFFFFF;
          v33 = HIDWORD(v10);
          v27 = *(v4 + 2);
          swift_beginAccess();
          v28 = *(v21 + 24) + v26;
          v7 = v33 - v26;
          swift_beginAccess();
          v8 = (*(v22 + 24) + (v23 & 0xFFFFFFFFFF0000FFLL | (v31 << 8)) + v14);
          v9 = (v28 + (v16 & 0xFFFFFFFFFF0000FFLL | (v27 << 8)));
LABEL_6:
          if (memcmp(v9, v8, v7))
          {
            return 0;
          }
        }
      }

      else
      {
        if (v15 < 0 || HIDWORD(v10) - v10 != HIDWORD(v14) - v14)
        {
          return 0;
        }

        v17 = HIDWORD(v13) & 0xFFFFFF;
        v18 = BYTE6(v13);
        if (*v4 != *v3 || (*(v4 + 2) == *(v3 + 2) ? (v19 = BYTE6(v12) == BYTE6(v13)) : (v19 = 0), v19 ? (v20 = v11 == v15) : (v20 = 0), !v20))
        {
          v5 = v10;
          v30 = HIDWORD(v12) & 0xFFFFFF;
          v32 = HIDWORD(v10);
          swift_beginAccess();
          v6 = *(v11 + 24) + v5;
          v7 = v32 - v5;
          swift_beginAccess();
          v8 = (*(v15 + 24) + (v18 & 0xFFFFFFFFFF0000FFLL | (v17 << 8)) + v14);
          v9 = (v6 + (v16 & 0xFFFFFFFFFF0000FFLL | (v30 << 8)));
          goto LABEL_6;
        }
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D36050(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
    return 0;
  }

  if (!v3 || v1 == v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = v1 + 32;
  v6 = v2 + 32;
  v272 = *(v1 + 16);
  v273 = v2 + 32;
  v274 = v1 + 32;
  while (1)
  {
    v275 = v4;
    v7 = 184 * v4;
    v8 = v5 + v7;
    v9 = *(v5 + v7 + 144);
    v10 = *(v5 + v7 + 112);
    v395 = *(v5 + v7 + 128);
    v396 = v9;
    v11 = *(v5 + v7 + 144);
    v397 = *(v5 + v7 + 160);
    v12 = *(v5 + v7 + 80);
    v13 = *(v5 + v7 + 48);
    v391 = *(v5 + v7 + 64);
    v392 = v12;
    v14 = *(v5 + v7 + 80);
    v15 = *(v5 + v7 + 112);
    v393 = *(v5 + v7 + 96);
    v394 = v15;
    v16 = *(v5 + v7 + 16);
    v388[0] = *(v5 + v7);
    v388[1] = v16;
    v17 = *(v5 + v7 + 48);
    v19 = *(v5 + v7);
    v18 = *(v5 + v7 + 16);
    v389 = *(v5 + v7 + 32);
    v390 = v17;
    v20 = (v6 + v7);
    v21 = v20[9];
    v407 = v20[8];
    v408 = v21;
    v409 = v20[10];
    v22 = v20[5];
    v403 = v20[4];
    v404 = v22;
    v23 = v20[7];
    v405 = v20[6];
    v406 = v23;
    v24 = v20[1];
    v399 = *v20;
    v400 = v24;
    v25 = v20[3];
    v401 = v20[2];
    v402 = v25;
    v411[8] = v395;
    v411[9] = v11;
    v411[10] = *(v8 + 160);
    v411[4] = v391;
    v411[5] = v14;
    v411[6] = v393;
    v411[7] = v10;
    v411[0] = v19;
    v411[1] = v18;
    v398 = *(v8 + 176);
    v410 = *(v20 + 176);
    v412 = *(v8 + 176);
    v411[2] = v389;
    v411[3] = v13;
    if (sub_1B0717014(v411) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v27 = v26;
      *&v366[128] = v407;
      *&v366[144] = v408;
      *&v366[160] = v409;
      v366[176] = v410;
      *&v366[64] = v403;
      *&v366[80] = v404;
      *&v366[96] = v405;
      *&v366[112] = v406;
      *v366 = v399;
      *&v366[16] = v400;
      *&v366[32] = v401;
      *&v366[48] = v402;
      if (sub_1B0717014(v366) != 1)
      {
        goto LABEL_212;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v29 = v28;
      v30 = *v27;
      sub_1B07169CC(&v399, __dst);
      sub_1B07169CC(v388, __dst);
      if ((sub_1B0D36050(v30) & 1) == 0 || (v27[1] != v29[1] || v27[2] != v29[2]) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }

      v31 = v27[3];
      v32 = v27[4];
      v33 = v27 + 3;
      v36 = v29[3];
      v35 = (v29 + 3);
      v34 = v36;
      v37 = v33[2];
      v38 = v33[4];
      v39 = v33[5];
      v344 = v33[3];
      v345 = v38;
      v346 = v39;
      v40 = v33[1];
      v343 = v37;
      v342 = v40;
      v41 = *(v35 + 8);
      v42 = *(v35 + 16);
      v43 = *(v35 + 32);
      v44 = *(v35 + 48);
      v45 = *(v35 + 64);
      v334 = *(v35 + 80);
      v333 = v45;
      v332 = v44;
      v330 = v42;
      v331 = v43;
      if (v32)
      {
        v46 = v33[2];
        v47 = v33[4];
        v48 = v33[5];
        v312 = v33[3];
        v313 = v47;
        v314 = v48;
        v310 = v33[1];
        v311 = v46;
        if (!v41)
        {
          goto LABEL_214;
        }

        *&v368 = v34;
        *(&v368 + 1) = v41;
        v369 = v330;
        v370 = v331;
        v371 = v332;
        v372 = v333;
        v373 = v334;
        v380 = v368;
        *v381 = v330;
        *&v381[64] = v334;
        *&v381[48] = v333;
        *&v381[32] = v332;
        *&v381[16] = v331;
        *&v322 = v31;
        *(&v322 + 1) = v32;
        *&v323[48] = v313;
        *&v323[64] = v314;
        *&v323[16] = v311;
        *&v323[32] = v312;
        *v323 = v310;
        v49 = *(v32 + 16);
        if (v49 != *(v41 + 16))
        {
          goto LABEL_208;
        }

        v50 = *v323;
        v51 = *v381;
        if (v49 && v41 != v32)
        {
          v52 = (v32 + 40);
          v53 = (v41 + 40);
          while (1)
          {
            v54 = *(v52 - 1) == *(v53 - 1) && *v52 == *v53;
            if (!v54 && (sub_1B0E46A78() & 1) == 0)
            {
              break;
            }

            v52 += 2;
            v53 += 2;
            if (!--v49)
            {
              goto LABEL_41;
            }
          }

LABEL_208:
          sub_1B03B5C80(v33, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v35, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
LABEL_209:
          sub_1B0398EFC(&v368, &qword_1EB6E6F78, &qword_1B0EEEB20);
LABEL_210:
          *__dst = v31;
          *&__dst[8] = v32;
          *&__dst[48] = v344;
          *&__dst[64] = v345;
          *&__dst[80] = v346;
          *&__dst[16] = v342;
          *&__dst[32] = v343;
          v244 = &qword_1EB6E6F78;
          v245 = &qword_1B0EEEB20;
LABEL_211:
          sub_1B0398EFC(__dst, v244, v245);
          goto LABEL_230;
        }

LABEL_41:
        v3 = v272;
        if ((sub_1B045202C(v50, v51) & 1) == 0)
        {
          goto LABEL_208;
        }

        v99 = *&v323[8];
        v100 = *&v323[16];
        v282 = *&v323[24];
        v283 = *&v323[40];
        v284 = *&v323[56];
        *&v285 = *&v323[72];
        if (*&v323[16] == 1)
        {
          if (*&v381[16] != 1)
          {
            goto LABEL_216;
          }

          *&v354 = *&v323[8];
          *(&v354 + 1) = 1;
          v355 = *&v323[24];
          v356 = *&v323[40];
          v357 = *&v323[56];
          *&v358 = *&v323[72];
          sub_1B03B5C80(v33, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v35, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(&v323[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B03B5C80(&v381[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(&v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(&v368, &qword_1EB6E6F78, &qword_1B0EEEB20);
        }

        else
        {
          if (*&v381[16] == 1)
          {
LABEL_216:
            *__dst = *&v323[8];
            *&__dst[16] = *&v323[24];
            *&__dst[32] = *&v323[40];
            *&__dst[48] = *&v323[56];
            *&__dst[64] = *&v323[72];
            *&__dst[72] = *&v381[8];
            *&__dst[88] = *&v381[24];
            *&__dst[104] = *&v381[40];
            *&__dst[120] = *&v381[56];
            *&__dst[136] = *&v381[72];
            sub_1B03B5C80(v33, &v354, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B03B5C80(v35, &v354, &qword_1EB6E6F78, &qword_1B0EEEB20);
            sub_1B03B5C80(&v323[8], &v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
            sub_1B03B5C80(&v381[8], &v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
            sub_1B0398EFC(__dst, &qword_1EB6E6F90, &qword_1B0EEEB38);
            goto LABEL_209;
          }

          v298 = *&v381[8];
          v299 = *&v381[24];
          v300 = *&v381[40];
          v301 = *&v381[56];
          *&v302 = *&v381[72];
          v455 = *&v381[72];
          v454[2] = *&v381[40];
          v454[3] = *&v381[56];
          v454[0] = *&v381[8];
          v454[1] = *&v381[24];
          v453 = *&v323[72];
          v451 = *&v323[40];
          v452 = *&v323[56];
          v450 = *&v323[24];
          v449[0] = *&v323[8];
          v449[1] = *&v323[16];
          sub_1B03B5C80(v33, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v35, __dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(&v323[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B03B5C80(&v381[8], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
          v109 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v449, v454);
          sub_1B0398EFC(&v298, &qword_1EB6E6F88, &qword_1B0EEEB30);
          *&v354 = v99;
          *(&v354 + 1) = v100;
          v355 = v282;
          v356 = v283;
          v357 = v284;
          *&v358 = v285;
          sub_1B0398EFC(&v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(&v368, &qword_1EB6E6F78, &qword_1B0EEEB20);
          if (!v109)
          {
            goto LABEL_210;
          }
        }

        *__dst = v31;
        *&__dst[8] = v32;
        *&__dst[48] = v344;
        *&__dst[64] = v345;
        *&__dst[80] = v346;
        *&__dst[16] = v342;
        *&__dst[32] = v343;
      }

      else
      {
        if (v41)
        {
LABEL_214:
          *__dst = v31;
          *&__dst[8] = v32;
          *&__dst[48] = v344;
          *&__dst[64] = v345;
          *&__dst[80] = v346;
          *&__dst[16] = v342;
          *&__dst[32] = v343;
          *&__dst[96] = v34;
          *&__dst[104] = v41;
          *&__dst[160] = v333;
          *&__dst[176] = v334;
          *&__dst[128] = v331;
          *&__dst[144] = v332;
          *&__dst[112] = v330;
          sub_1B03B5C80(v33, &v322, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v35, &v322, &qword_1EB6E6F78, &qword_1B0EEEB20);
          v244 = &qword_1EB6E6F80;
          v245 = &qword_1B0EEEB28;
          goto LABEL_211;
        }

        *__dst = v31;
        *&__dst[48] = v344;
        *&__dst[64] = v345;
        *&__dst[80] = v346;
        *&__dst[16] = v342;
        *&__dst[32] = v343;
        sub_1B03B5C80(v33, &v322, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B03B5C80(v35, &v322, &qword_1EB6E6F78, &qword_1B0EEEB20);
      }

      sub_1B0398EFC(__dst, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B075E648(&v399);
      sub_1B075E648(v388);
      goto LABEL_203;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v56 = v55;
    v384 = v407;
    v385 = v408;
    v386 = v409;
    v387 = v410;
    *&v381[48] = v403;
    *&v381[64] = v404;
    v382 = v405;
    v383 = v406;
    v380 = v399;
    *v381 = v400;
    *&v381[16] = v401;
    *&v381[32] = v402;
    if (sub_1B0717014(&v380) == 1)
    {
LABEL_212:
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      return 0;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v58 = v57;
    v59 = *v56;
    v60 = *v57;
    v61 = *v56 >> 62;
    v270 = v56;
    v62 = *v57 >> 62;
    if (!v61)
    {
      if (v62)
      {
        return 0;
      }

      v101 = v57;
      v102 = *(v59 + 32);
      v103 = *(v59 + 40);
      v104 = *(v60 + 32);
      v105 = *(v60 + 40);
      if ((*(v59 + 16) != *(v60 + 16) || *(v59 + 24) != *(v60 + 24)) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      if ((v102 != v104 || v103 != v105) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      sub_1B07169CC(&v399, __dst);
      sub_1B07169CC(v388, __dst);
      v58 = v101;
      goto LABEL_142;
    }

    if (v61 == 1)
    {
      break;
    }

    if (v62 != 2)
    {
      return 0;
    }

    v106 = *((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v107 = (v60 & 0x3FFFFFFFFFFFFFFFLL);
    v108 = v107[4];
    if ((*((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != v107[2] || *((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != v107[3]) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

    if (v106 != v108)
    {
      return 0;
    }

    sub_1B07169CC(&v399, __dst);
    sub_1B07169CC(v388, __dst);
LABEL_142:
    v202 = v56[2];
    v203 = v58[2];
    v204 = *(v202 + 16);
    if (v204 != *(v203 + 16))
    {
      goto LABEL_230;
    }

    v205 = v56[3];
    v206 = v56[5];
    v257 = v56[6];
    v207 = v56[7];
    v253 = v56[8];
    v267 = v56[9];
    v265 = v56[10];
    v208 = v58[3];
    v259 = v58[4];
    v261 = v56[4];
    v209 = v58[5];
    v255 = v58[6];
    v210 = v58[7];
    v251 = v58[8];
    v269 = v58[9];
    v211 = v58;
    v263 = v58[10];
    if (v204 && v202 != v203)
    {
      v212 = (v202 + 40);
      v213 = (v203 + 40);
      do
      {
        v214 = *(v212 - 1) == *(v213 - 1) && *v212 == *v213;
        if (!v214 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_230;
        }

        v212 += 2;
        v213 += 2;
      }

      while (--v204);
    }

    v215 = *(v205 + 16);
    if (v215 != *(v208 + 16))
    {
      goto LABEL_230;
    }

    if (v215 && v205 != v208)
    {
      v216 = (v205 + 40);
      v217 = (v208 + 40);
      do
      {
        v218 = *(v216 - 1) == *(v217 - 1) && *v216 == *v217;
        if (!v218 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_230;
        }

        v216 += 2;
        v217 += 2;
      }

      while (--v215);
    }

    if (v206)
    {
      if (!v209)
      {
        goto LABEL_230;
      }

      v219 = v211;
      if ((v261 != v259 || v206 != v209) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v219 = v211;
      if (v209)
      {
        goto LABEL_230;
      }
    }

    if (v207)
    {
      if (!v210 || (v257 != v255 || v207 != v210) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (v210)
    {
      goto LABEL_230;
    }

    if (v267)
    {
      v220 = v270;
      if (!v269 || (v253 != v251 || v267 != v269) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v220 = v270;
      if (v269)
      {
        goto LABEL_230;
      }
    }

    if (v265 != v263)
    {
      goto LABEL_230;
    }

    v221 = v220[11];
    v223 = v220[12];
    v222 = (v220 + 11);
    v224 = *(v222 + 64);
    v344 = *(v222 + 48);
    v345 = v224;
    *&v346 = *(v222 + 80);
    v225 = *(v222 + 16);
    v343 = *(v222 + 32);
    v342 = v225;
    v226 = v219[11];
    v227 = v219[12];
    v228 = (v219 + 11);
    v229 = *(v228 + 16);
    v230 = *(v228 + 32);
    v231 = *(v228 + 48);
    v232 = *(v228 + 64);
    *&v334 = *(v228 + 80);
    v333 = v232;
    v332 = v231;
    v330 = v229;
    v331 = v230;
    if (v223 != 1)
    {
      if (v227 == 1)
      {
LABEL_215:
        *__dst = v221;
        *&__dst[8] = v223;
        *&__dst[48] = v344;
        *&__dst[64] = v345;
        *&__dst[16] = v342;
        *&__dst[32] = v343;
        *&__dst[80] = v346;
        *&__dst[88] = v226;
        *&__dst[104] = v330;
        *&__dst[96] = v227;
        *&__dst[168] = v334;
        *&__dst[152] = v333;
        *&__dst[136] = v332;
        *&__dst[120] = v331;
        sub_1B03B5C80(v222, v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v228, v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
        v244 = &qword_1EB6E6FA0;
        v245 = &qword_1B0EEEB48;
        goto LABEL_211;
      }

      *&v368 = v226;
      *(&v368 + 1) = v227;
      v235 = *(v228 + 32);
      v369 = *(v228 + 16);
      v370 = v235;
      v236 = *(v228 + 64);
      v371 = *(v228 + 48);
      v372 = v236;
      *&v373 = *(v228 + 80);
      v322 = v368;
      *v323 = v369;
      *&v323[64] = v373;
      *&v323[48] = v236;
      *&v323[16] = v370;
      *&v323[32] = v371;
      *v366 = v221;
      *&v366[8] = v223;
      v237 = *(v222 + 16);
      v238 = *(v222 + 32);
      v239 = *(v222 + 48);
      v240 = *(v222 + 64);
      *&v366[80] = *(v222 + 80);
      *&v366[48] = v239;
      *&v366[64] = v240;
      *&v366[16] = v237;
      *&v366[32] = v238;
      if (v223)
      {
        if (!v227 || (v221 != v322 || v223 != v227) && (sub_1B0E46A78() & 1) == 0)
        {
LABEL_217:
          sub_1B03B5C80(v222, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v228, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
          v246 = &v368;
          goto LABEL_219;
        }
      }

      else if (v227)
      {
        goto LABEL_217;
      }

      v241 = *&v366[24];
      v298 = *&v366[32];
      v299 = *&v366[48];
      v300 = *&v366[64];
      *&v301 = *&v366[80];
      if (*&v366[24] == 1)
      {
        if (*&v323[8] != 1)
        {
          goto LABEL_218;
        }

        *&v354 = *&v366[16];
        *(&v354 + 1) = 1;
        v355 = *&v366[32];
        v356 = *&v366[48];
        v357 = *&v366[64];
        *&v358 = *&v366[80];
        sub_1B03B5C80(v222, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v228, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v222, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v228, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(&v366[16], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B03B5C80(v323, __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B0398EFC(&v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B0398EFC(&v368, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v228, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v222, &qword_1EB6E6F98, &qword_1B0EEEB40);
      }

      else
      {
        if (*&v323[8] == 1)
        {
LABEL_218:
          *&__dst[16] = *&v366[32];
          *&__dst[32] = *&v366[48];
          *&__dst[48] = *&v366[64];
          *&__dst[88] = *&v323[16];
          *__dst = *&v366[16];
          *&__dst[64] = *&v366[80];
          *&__dst[72] = *v323;
          *&__dst[104] = *&v323[32];
          *&__dst[120] = *&v323[48];
          *&__dst[136] = *&v323[64];
          sub_1B03B5C80(v222, &v354, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v228, &v354, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v222, &v354, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(v228, &v354, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B03B5C80(&v366[16], &v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B03B5C80(v323, &v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
          sub_1B0398EFC(__dst, &qword_1EB6E6F90, &qword_1B0EEEB38);
          sub_1B0398EFC(&v368, &qword_1EB6E6F98, &qword_1B0EEEB40);
          sub_1B0398EFC(v228, &qword_1EB6E6F98, &qword_1B0EEEB40);
          v246 = v222;
LABEL_219:
          sub_1B0398EFC(v246, &qword_1EB6E6F98, &qword_1B0EEEB40);
LABEL_220:
          *__dst = v221;
          *&__dst[8] = v223;
          *&__dst[48] = v344;
          *&__dst[64] = v345;
          *&__dst[80] = v346;
          *&__dst[16] = v342;
          *&__dst[32] = v343;
          v244 = &qword_1EB6E6F98;
          v245 = &qword_1B0EEEB40;
          goto LABEL_211;
        }

        v310 = *v323;
        v311 = *&v323[16];
        v312 = *&v323[32];
        v313 = *&v323[48];
        *&v314 = *&v323[64];
        v416 = *&v323[64];
        v415[3] = *&v323[48];
        v415[2] = *&v323[32];
        v415[0] = *v323;
        v415[1] = *&v323[16];
        v414 = *&v366[80];
        v413[2] = *&v366[48];
        v413[3] = *&v366[64];
        v413[1] = *&v366[32];
        v413[0] = *&v366[16];
        v271 = *&v366[16];
        sub_1B03B5C80(v222, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v228, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v222, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v228, __dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(&v366[16], __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B03B5C80(v323, __dst, &qword_1EB6E6F88, &qword_1B0EEEB30);
        v242 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v413, v415);
        sub_1B0398EFC(&v310, &qword_1EB6E6F88, &qword_1B0EEEB30);
        *&v354 = v271;
        *(&v354 + 1) = v241;
        v355 = v298;
        v356 = v299;
        v357 = v300;
        *&v358 = v301;
        sub_1B0398EFC(&v354, &qword_1EB6E6F88, &qword_1B0EEEB30);
        sub_1B0398EFC(&v368, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v228, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0398EFC(v222, &qword_1EB6E6F98, &qword_1B0EEEB40);
        if (!v242)
        {
          goto LABEL_220;
        }
      }

      *__dst = v221;
      *&__dst[8] = v223;
      *&__dst[48] = v344;
      *&__dst[64] = v345;
      *&__dst[80] = v346;
      *&__dst[16] = v342;
      *&__dst[32] = v343;
      sub_1B0398EFC(__dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B075E648(&v399);
      sub_1B075E648(v388);
      v3 = v272;
      goto LABEL_203;
    }

    if (v227 != 1)
    {
      goto LABEL_215;
    }

    *__dst = v221;
    *&__dst[8] = 1;
    v233 = *(v222 + 64);
    *&__dst[48] = *(v222 + 48);
    *&__dst[64] = v233;
    *&__dst[80] = *(v222 + 80);
    v234 = *(v222 + 32);
    *&__dst[16] = *(v222 + 16);
    *&__dst[32] = v234;
    sub_1B03B5C80(v222, v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
    sub_1B03B5C80(v228, v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
    sub_1B0398EFC(__dst, &qword_1EB6E6F98, &qword_1B0EEEB40);
    sub_1B075E648(&v399);
    sub_1B075E648(v388);
    v3 = v272;
LABEL_203:
    v5 = v274;
    v4 = v275 + 1;
    v6 = v273;
    if (v275 + 1 == v3)
    {
      return 1;
    }
  }

  v63 = v59 & 0x3FFFFFFFFFFFFFFFLL;
  v64 = *(v63 + 16);
  v65 = *(v63 + 24);
  v66 = *(v63 + 112);
  v445[4] = *(v63 + 96);
  v445[5] = v66;
  v445[6] = *(v63 + 128);
  v67 = *(v63 + 144);
  v68 = *(v63 + 48);
  v445[0] = *(v63 + 32);
  v445[1] = v68;
  v69 = *(v63 + 80);
  v445[2] = *(v63 + 64);
  v445[3] = v69;
  v70 = *(v63 + 184);
  v371 = *(v63 + 200);
  v370 = v70;
  v71 = *(v63 + 152);
  v369 = *(v63 + 168);
  v368 = v71;
  v72 = *(v63 + 248);
  v73 = *(v63 + 280);
  v375 = *(v63 + 264);
  v374 = v72;
  v74 = *(v63 + 216);
  v373 = *(v63 + 232);
  v372 = v74;
  v75 = *(v63 + 296);
  v378 = *(v63 + 312);
  v446 = v67;
  v379 = *(v63 + 328);
  v377 = v75;
  v376 = v73;
  if (v62 != 1)
  {
    return 0;
  }

  v76 = *(v63 + 336);
  memcpy(__dst, ((v60 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  if (__PAIR128__(v65, v64) != *__dst && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v447[4] = *&__dst[80];
  v447[5] = *&__dst[96];
  v447[6] = *&__dst[112];
  v448 = *&__dst[128];
  v447[0] = *&__dst[16];
  v447[1] = *&__dst[32];
  v447[2] = *&__dst[48];
  v447[3] = *&__dst[64];
  sub_1B07169CC(&v399, v366);
  sub_1B07169CC(v388, v366);
  sub_1B0C6700C(__dst, v366);
  if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v445, v447))
  {
    goto LABEL_229;
  }

  v362 = v376;
  v363 = v377;
  v364 = v378;
  v365 = v379;
  v358 = v372;
  v359 = v373;
  v360 = v374;
  v361 = v375;
  v354 = v368;
  v355 = v369;
  v356 = v370;
  v357 = v371;
  v249 = v58;
  if (sub_1B0717014(&v354) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v78 = v77;
    v326 = *&__dst[264];
    v327 = *&__dst[280];
    v328 = *&__dst[296];
    LOBYTE(v329) = __dst[312];
    *&v323[48] = *&__dst[200];
    *&v323[64] = *&__dst[216];
    v324 = *&__dst[232];
    v325 = *&__dst[248];
    v322 = *&__dst[136];
    *v323 = *&__dst[152];
    *&v323[16] = *&__dst[168];
    *&v323[32] = *&__dst[184];
    if (sub_1B0717014(&v322) != 1)
    {
      goto LABEL_221;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v80 = v79;
    if ((sub_1B0D36050(*v78) & 1) == 0 || (v78[1] != v80[1] || v78[2] != v80[2]) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_229;
    }

    v81 = v78[3];
    v83 = v78[4];
    v82 = v78 + 3;
    v86 = v80[3];
    v85 = (v80 + 3);
    v84 = v86;
    v87 = v82[2];
    v88 = v82[4];
    v89 = v82[5];
    v312 = v82[3];
    v313 = v88;
    v314 = v89;
    v310 = v82[1];
    v311 = v87;
    v90 = *(v85 + 8);
    v91 = *(v85 + 16);
    v92 = *(v85 + 32);
    v93 = *(v85 + 48);
    v94 = *(v85 + 80);
    v301 = *(v85 + 64);
    v302 = v94;
    v299 = v92;
    v300 = v93;
    v298 = v91;
    if (v83)
    {
      v95 = v82[2];
      v96 = v82[4];
      v97 = v82[5];
      v284 = v82[3];
      v285 = v96;
      v286 = v97;
      v282 = v82[1];
      v283 = v95;
      if (!v90)
      {
        goto LABEL_223;
      }

      *&v342 = v84;
      *(&v342 + 1) = v90;
      v345 = v300;
      v346 = v301;
      v343 = v298;
      v344 = v299;
      v347 = v302;
      v444[1] = v298;
      v444[0] = v342;
      v444[5] = v302;
      v444[4] = v301;
      v444[3] = v300;
      v444[2] = v299;
      v442 = v285;
      v443 = v286;
      v440 = v283;
      v441 = v284;
      v439 = v282;
      v438[0] = v81;
      v438[1] = v83;
      sub_1B03B5C80(v82, &v330, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B03B5C80(v85, &v330, &qword_1EB6E6F78, &qword_1B0EEEB20);
      v98 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v438, v444);
      sub_1B0398EFC(&v342, &qword_1EB6E6F78, &qword_1B0EEEB20);
      *v366 = v81;
      *&v366[8] = v83;
      *&v366[48] = v312;
      *&v366[64] = v313;
      *&v366[80] = v314;
      *&v366[16] = v310;
      *&v366[32] = v311;
      sub_1B0398EFC(v366, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0C67068(__dst);
      if (!v98)
      {
        goto LABEL_230;
      }
    }

    else
    {
      if (v90)
      {
LABEL_223:
        *v366 = v81;
        *&v366[8] = v83;
        *&v366[48] = v312;
        *&v366[64] = v313;
        *&v366[80] = v314;
        *&v366[32] = v311;
        *&v366[16] = v310;
        *&v366[96] = v84;
        *&v366[104] = v90;
        *&v366[176] = v302;
        *&v366[160] = v301;
        *&v366[144] = v300;
        *&v366[112] = v298;
        *&v366[128] = v299;
        sub_1B03B5C80(v82, &v342, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B03B5C80(v85, &v342, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B0398EFC(v366, &qword_1EB6E6F80, &qword_1B0EEEB28);
        goto LABEL_229;
      }

      *v366 = v81;
      *&v366[48] = v312;
      *&v366[64] = v313;
      *&v366[80] = v314;
      *&v366[16] = v310;
      *&v366[32] = v311;
      sub_1B03B5C80(v82, &v342, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B03B5C80(v85, &v342, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0398EFC(v366, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0C67068(__dst);
    }

LABEL_141:
    v58 = v249;
    if (v76 != *&__dst[320])
    {
      goto LABEL_230;
    }

    goto LABEL_142;
  }

  v262 = v76;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v111 = v110;
  v350 = *&__dst[264];
  v351 = *&__dst[280];
  v352 = *&__dst[296];
  v353 = __dst[312];
  v346 = *&__dst[200];
  v347 = *&__dst[216];
  v348 = *&__dst[232];
  v349 = *&__dst[248];
  v342 = *&__dst[136];
  v343 = *&__dst[152];
  v344 = *&__dst[168];
  v345 = *&__dst[184];
  if (sub_1B0717014(&v342) == 1)
  {
LABEL_221:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    goto LABEL_229;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v113 = v112;
  v114 = *v111;
  v115 = *v112;
  v116 = *v111 >> 62;
  if (v116)
  {
    if (v116 == 1)
    {
      v117 = v114 & 0x3FFFFFFFFFFFFFFFLL;
      v118 = *(v117 + 16);
      v119 = *(v117 + 24);
      v120 = *(v117 + 112);
      v434[4] = *(v117 + 96);
      v434[5] = v120;
      v434[6] = *(v117 + 128);
      v121 = *(v117 + 144);
      v122 = *(v117 + 48);
      v434[0] = *(v117 + 32);
      v434[1] = v122;
      v123 = *(v117 + 80);
      v434[2] = *(v117 + 64);
      v434[3] = v123;
      v124 = *(v117 + 184);
      v333 = *(v117 + 200);
      v332 = v124;
      v125 = *(v117 + 152);
      v331 = *(v117 + 168);
      v330 = v125;
      v126 = *(v117 + 248);
      v127 = *(v117 + 280);
      v337 = *(v117 + 264);
      v336 = v126;
      v128 = *(v117 + 216);
      v335 = *(v117 + 232);
      v334 = v128;
      v129 = *(v117 + 296);
      v340 = *(v117 + 312);
      v435 = v121;
      v341 = *(v117 + 328);
      v339 = v129;
      v338 = v127;
      if (v115 >> 62 != 1)
      {
        goto LABEL_229;
      }

      v130 = *(v117 + 336);
      memcpy(v366, ((v115 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(v366));
      if (__PAIR128__(v119, v118) != *v366 && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }

      v436[4] = *&v366[80];
      v436[5] = *&v366[96];
      v436[6] = *&v366[112];
      v437 = *&v366[128];
      v436[0] = *&v366[16];
      v436[1] = *&v366[32];
      v436[2] = *&v366[48];
      v436[3] = *&v366[64];
      sub_1B0C6700C(v366, &v322);
      if (!_s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v434, v436))
      {
        goto LABEL_228;
      }

      v318 = v338;
      v319 = v339;
      v320 = v340;
      v321 = v341;
      v314 = v334;
      v315 = v335;
      v316 = v336;
      v317 = v337;
      v310 = v330;
      v311 = v331;
      v312 = v332;
      v313 = v333;
      if (sub_1B0717014(&v310) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v132 = v131;
        v306 = *&v366[264];
        v307 = *&v366[280];
        v308 = *&v366[296];
        v309 = v366[312];
        v302 = *&v366[200];
        v303 = *&v366[216];
        v304 = *&v366[232];
        v305 = *&v366[248];
        v298 = *&v366[136];
        v299 = *&v366[152];
        v300 = *&v366[168];
        v301 = *&v366[184];
        if (sub_1B0717014(&v298) != 1)
        {
          goto LABEL_225;
        }

        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v134 = v133;
        if ((sub_1B0D36050(*v132) & 1) == 0 || (v132[1] != v134[1] || v132[2] != v134[2]) && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_228;
        }

        v135 = v132[3];
        v137 = v132[4];
        v136 = v132 + 3;
        v138 = v134[3];
        v139 = v134[4];
        v140 = v134 + 3;
        v141 = v136[4];
        v295 = v136[3];
        v296 = v141;
        v297 = v136[5];
        v142 = v136[2];
        v293 = v136[1];
        v294 = v142;
        v143 = v140[1];
        v144 = v140[2];
        v145 = v140[5];
        v291 = v140[4];
        v292 = v145;
        v146 = v140[3];
        v289 = v144;
        v290 = v146;
        v288 = v143;
        if (v137)
        {
          v147 = v136[4];
          v279 = v136[3];
          v280 = v147;
          v281 = v136[5];
          v148 = v136[2];
          v277 = v136[1];
          v278 = v148;
          if (!v139)
          {
            goto LABEL_227;
          }

          *&v282 = v138;
          *(&v282 + 1) = v139;
          v285 = v290;
          v286 = v291;
          v283 = v288;
          v284 = v289;
          v287 = v292;
          v433[1] = v288;
          v433[0] = v282;
          v433[5] = v292;
          v433[4] = v291;
          v433[3] = v290;
          v433[2] = v289;
          v431 = v280;
          v432 = v281;
          v429 = v278;
          v430 = v279;
          v428 = v277;
          v427[0] = v135;
          v427[1] = v137;
          sub_1B03B5C80(v136, v276, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v140, v276, &qword_1EB6E6F78, &qword_1B0EEEB20);
          v149 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v427, v433);
          sub_1B0398EFC(&v282, &qword_1EB6E6F78, &qword_1B0EEEB20);
          *&v322 = v135;
          *(&v322 + 1) = v137;
          *&v323[32] = v295;
          *&v323[48] = v296;
          *&v323[64] = v297;
          *v323 = v293;
          *&v323[16] = v294;
          sub_1B0398EFC(&v322, &qword_1EB6E6F78, &qword_1B0EEEB20);
          goto LABEL_99;
        }

        if (!v139)
        {
          v322 = v135;
          *&v323[32] = v295;
          *&v323[48] = v296;
          *&v323[64] = v297;
          *v323 = v293;
          *&v323[16] = v294;
          sub_1B03B5C80(v136, &v282, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B03B5C80(v140, &v282, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B0398EFC(&v322, &qword_1EB6E6F78, &qword_1B0EEEB20);
          sub_1B0C67068(v366);
          goto LABEL_100;
        }

LABEL_227:
        *&v322 = v135;
        *(&v322 + 1) = v137;
        *&v323[48] = v296;
        *&v323[64] = v297;
        *&v323[16] = v294;
        *&v323[32] = v295;
        *v323 = v293;
        *&v324 = v138;
        *(&v324 + 1) = v139;
        v329 = v292;
        v328 = v291;
        v327 = v290;
        v325 = v288;
        v326 = v289;
        sub_1B03B5C80(v136, &v282, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B03B5C80(v140, &v282, &qword_1EB6E6F78, &qword_1B0EEEB20);
        sub_1B0398EFC(&v322, &qword_1EB6E6F80, &qword_1B0EEEB28);
LABEL_228:
        sub_1B0C67068(v366);
        goto LABEL_229;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v159 = v158[9];
      v425[8] = v158[8];
      v425[9] = v159;
      v425[10] = v158[10];
      v160 = v158[5];
      v425[4] = v158[4];
      v425[5] = v160;
      v161 = v158[6];
      v425[7] = v158[7];
      v425[6] = v161;
      v162 = v158[1];
      v425[0] = *v158;
      v425[1] = v162;
      v163 = v158[2];
      v425[3] = v158[3];
      v425[2] = v163;
      LOBYTE(v329) = v366[312];
      v328 = *&v366[296];
      v327 = *&v366[280];
      v326 = *&v366[264];
      v325 = *&v366[248];
      v324 = *&v366[232];
      *&v323[64] = *&v366[216];
      *&v323[48] = *&v366[200];
      *&v323[16] = *&v366[168];
      *&v323[32] = *&v366[184];
      v322 = *&v366[136];
      *v323 = *&v366[152];
      if (sub_1B0717014(&v322) == 1)
      {
LABEL_225:
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        goto LABEL_228;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v165 = v164[9];
      v426[8] = v164[8];
      v426[9] = v165;
      v426[10] = v164[10];
      v166 = v164[5];
      v426[4] = v164[4];
      v426[5] = v166;
      v167 = v164[6];
      v426[7] = v164[7];
      v426[6] = v167;
      v168 = v164[1];
      v426[0] = *v164;
      v426[1] = v168;
      v169 = v164[2];
      v426[3] = v164[3];
      v426[2] = v169;
      v149 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v425, v426);
LABEL_99:
      sub_1B0C67068(v366);
      if ((v149 & 1) == 0)
      {
        goto LABEL_229;
      }

LABEL_100:
      if (v130 != *&v366[320])
      {
        goto LABEL_229;
      }
    }

    else
    {
      if (v115 >> 62 != 2)
      {
        goto LABEL_229;
      }

      v154 = (v114 & 0x3FFFFFFFFFFFFFFFLL);
      v155 = v154[4];
      v156 = (v115 & 0x3FFFFFFFFFFFFFFFLL);
      v157 = v156[4];
      if ((v154[2] != v156[2] || v154[3] != v156[3]) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }

      if (v155 != v157)
      {
        goto LABEL_229;
      }
    }
  }

  else
  {
    if (v115 >> 62)
    {
      goto LABEL_229;
    }

    v150 = *(v114 + 32);
    v151 = *(v114 + 40);
    v152 = *(v115 + 32);
    v153 = *(v115 + 40);
    if ((*(v114 + 16) != *(v115 + 16) || *(v114 + 24) != *(v115 + 24)) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_229;
    }

    if ((v150 != v152 || v151 != v153) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_229;
    }
  }

  v170 = v111[2];
  v171 = v113[2];
  v172 = *(v170 + 16);
  if (v172 != *(v171 + 16))
  {
    goto LABEL_229;
  }

  v173 = v111[3];
  v174 = v111[5];
  v252 = v111[6];
  v268 = v111[7];
  v248 = v111[8];
  v266 = v111[9];
  v256 = v111[10];
  v175 = v113[3];
  v258 = v113[4];
  v260 = v111[4];
  v176 = v113[5];
  v250 = v113[6];
  v177 = v113[7];
  v247 = v113[8];
  v264 = v113[9];
  v254 = v113[10];
  if (!v172 || v170 == v171)
  {
LABEL_112:
    if ((sub_1B045202C(v173, v175) & 1) == 0)
    {
      goto LABEL_229;
    }

    if (v174)
    {
      if (!v176 || (v260 != v258 || v174 != v176) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v176)
    {
      goto LABEL_229;
    }

    if (v268)
    {
      if (!v177 || (v252 != v250 || v268 != v177) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v177)
    {
      goto LABEL_229;
    }

    if (v266)
    {
      if (!v264 || (v248 != v247 || v266 != v264) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_229;
      }
    }

    else if (v264)
    {
      goto LABEL_229;
    }

    if (v256 != v254)
    {
      goto LABEL_229;
    }

    v181 = v111[11];
    v182 = v111[12];
    v183 = (v111 + 11);
    v184 = v113[11];
    v185 = v113[12];
    v186 = (v113 + 11);
    v187 = *(v183 + 64);
    v312 = *(v183 + 48);
    v313 = v187;
    *&v314 = *(v183 + 80);
    v188 = *(v183 + 32);
    v310 = *(v183 + 16);
    v311 = v188;
    v189 = *(v186 + 16);
    v190 = *(v186 + 32);
    v191 = *(v186 + 48);
    v192 = *(v186 + 64);
    *&v302 = *(v186 + 80);
    v300 = v191;
    v301 = v192;
    v298 = v189;
    v299 = v190;
    if (v182 == 1)
    {
      v56 = v270;
      if (v185 != 1)
      {
        goto LABEL_224;
      }

      *v366 = v181;
      *&v366[8] = 1;
      v193 = *(v183 + 64);
      *&v366[48] = *(v183 + 48);
      *&v366[64] = v193;
      *&v366[80] = *(v183 + 80);
      v194 = *(v183 + 32);
      *&v366[16] = *(v183 + 16);
      *&v366[32] = v194;
      sub_1B03B5C80(v186, &v322, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B03B5C80(v183, &v322, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0398EFC(v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0C67068(__dst);
    }

    else
    {
      v56 = v270;
      if (v185 == 1)
      {
LABEL_224:
        sub_1B03B5C80(v186, v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B03B5C80(v183, v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
        sub_1B0C67068(__dst);
        *v366 = v181;
        *&v366[8] = v182;
        *&v366[48] = v312;
        *&v366[64] = v313;
        *&v366[32] = v311;
        *&v366[16] = v310;
        *&v366[80] = v314;
        *&v366[88] = v184;
        *&v366[104] = v298;
        *&v366[96] = v185;
        *&v366[168] = v302;
        *&v366[152] = v301;
        *&v366[136] = v300;
        *&v366[120] = v299;
        sub_1B0398EFC(v366, &qword_1EB6E6FA0, &qword_1B0EEEB48);
        goto LABEL_230;
      }

      *&v322 = v184;
      *(&v322 + 1) = v185;
      v195 = *(v186 + 64);
      *&v323[32] = *(v186 + 48);
      *&v323[48] = v195;
      v196 = *(v186 + 32);
      *v323 = *(v186 + 16);
      *&v323[16] = v196;
      *&v323[64] = *(v186 + 80);
      v423[1] = *v323;
      v423[0] = v322;
      v424 = *&v323[64];
      v423[4] = v195;
      v423[3] = *&v323[32];
      v423[2] = v196;
      v197 = *(v183 + 16);
      v198 = *(v183 + 32);
      v199 = *(v183 + 48);
      v200 = *(v183 + 64);
      v422 = *(v183 + 80);
      v420 = v199;
      v421 = v200;
      v418 = v197;
      v419 = v198;
      v417[0] = v181;
      v417[1] = v182;
      sub_1B03B5C80(v186, &v330, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B03B5C80(v186, &v330, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B03B5C80(v183, &v330, &qword_1EB6E6F98, &qword_1B0EEEB40);
      v201 = _s12NIOIMAPCore213BodyStructureO10SinglepartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v417, v423);
      sub_1B0398EFC(&v322, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0398EFC(v186, &qword_1EB6E6F98, &qword_1B0EEEB40);
      *v366 = v181;
      *&v366[8] = v182;
      *&v366[48] = v312;
      *&v366[64] = v313;
      *&v366[80] = v314;
      *&v366[16] = v310;
      *&v366[32] = v311;
      sub_1B0398EFC(v366, &qword_1EB6E6F98, &qword_1B0EEEB40);
      sub_1B0C67068(__dst);
      if (!v201)
      {
        goto LABEL_230;
      }
    }

    v76 = v262;
    goto LABEL_141;
  }

  v178 = (v170 + 40);
  v179 = (v171 + 40);
  while (1)
  {
    v180 = *(v178 - 1) == *(v179 - 1) && *v178 == *v179;
    if (!v180 && (sub_1B0E46A78() & 1) == 0)
    {
      break;
    }

    v178 += 2;
    v179 += 2;
    if (!--v172)
    {
      goto LABEL_112;
    }
  }

LABEL_229:
  sub_1B0C67068(__dst);
LABEL_230:
  sub_1B075E648(&v399);
  sub_1B075E648(v388);
  return 0;
}

uint64_t sub_1B0D38528(uint64_t a1, uint64_t a2)
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

  v3 = (a1 + 55);
  for (i = (a2 + 55); ; i += 24)
  {
    v6 = *(v3 - 23);
    v7 = *(i - 23);
    v5 = *i;
    if (*v3)
    {
      if (v6 != v7)
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (*i)
    {
      return 0;
    }

    v8 = *(i - 15);
    v9 = *(i - 7) | ((*(i - 3) | (*(i - 1) << 16)) << 32);
    if (v6)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_28;
    }

    sub_1B0D3CB74(0, v8, v9, 0);
LABEL_8:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  v10 = *(v3 - 15);
  v11 = *(v3 - 7) | ((*(v3 - 3) | (*(v3 - 1) << 16)) << 32);
  if (v7)
  {
    if (HIDWORD(v10) - v10 != HIDWORD(v8) - v8)
    {
      return 0;
    }

    v12 = BYTE6(v9);
    if (*(v3 - 7) != *(i - 7) || (*(v3 - 3) == *(i - 3) ? (v13 = BYTE6(v11) == BYTE6(v9)) : (v13 = 0), v13 ? (v14 = v6 == v7) : (v14 = 0), !v14))
    {
      v20 = HIDWORD(v9) & 0xFFFFFF;
      v21 = *(i - 15);
      swift_beginAccess();
      v15 = BYTE6(v11) | (WORD2(v11) << 8);
      v16 = *(v6 + 24) + v10;
      swift_beginAccess();
      if (memcmp((v16 + v15), (*(v7 + 24) + (v12 & 0xFFFFFFFFFF0000FFLL | (v20 << 8)) + v21), HIDWORD(v10) - v10))
      {
        return 0;
      }
    }

    goto LABEL_8;
  }

  v18 = *(i - 15);
  v19 = *(i - 7) | ((*(i - 3) | (*(i - 1) << 16)) << 32);
  sub_1B0D3CB74(0, v8, v9, 0);
  sub_1B0D3CB74(v6, v10, v11, 0);
  v8 = v18;
  v9 = v19;
  v7 = 0;
LABEL_28:
  sub_1B0D3CB74(v7, v8, v9, 0);

  return 0;
}

uint64_t sub_1B0D38730(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v55 = a1 + 32;
    v56 = *(a1 + 16);
    v54 = a2 + 32;
    while (1)
    {
      v62 = v3;
      v6 = v3 << 6;
      v7 = (v4 + (v3 << 6));
      v8 = v7[1];
      v68 = *v7;
      *v69 = v8;
      v9 = v7[3];
      *&v69[16] = v7[2];
      v70 = v9;
      v10 = v68;
      v11 = DWORD2(v68);
      v12 = HIDWORD(v68);
      v13 = *&v69[4];
      v14 = v69[6];
      v15 = (v5 + v6);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      *&v72[16] = v15[2];
      v73 = v18;
      v71 = v16;
      *v72 = v17;
      v19 = v16.n128_u32[2];
      if (HIDWORD(v68) - DWORD2(v68) != v16.n128_u32[3] - v16.n128_u32[2])
      {
        break;
      }

      v20 = v71.n128_u64[0];
      v21 = *&v72[4];
      v22 = v72[6];
      if (*v69 == *v72 && *&v69[4] == *&v72[4] && v69[6] == v72[6] && v68 == v71.n128_u64[0])
      {
        sub_1B0D3CB18(&v68, v67);
        sub_1B0D3CB18(&v71, v67);
      }

      else
      {
        swift_beginAccess();
        v23 = *(v10 + 24);
        v24 = (v14 | (v13 << 8)) + v11;
        v25 = v12 - v11;
        swift_beginAccess();
        v26 = *(v20 + 24);
        sub_1B0D3CB18(&v68, v67);
        sub_1B0D3CB18(&v71, v67);
        if (memcmp((v23 + v24), (v26 + (v22 | (v21 << 8)) + v19), v25))
        {
          goto LABEL_50;
        }
      }

      if (*&v69[16])
      {
        if (!*&v72[16] || *&v69[8] != *&v72[8] && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*&v72[16])
      {
        goto LABEL_50;
      }

      v27 = *(&v70 + 1);
      v28 = v73.n128_u64[1];
      result = sub_1B0D3A070(v70, v73.n128_i64[0]);
      if ((result & 1) == 0)
      {
        goto LABEL_50;
      }

      v30 = *(v27 + 16);
      if (v30 != *(v28 + 16))
      {
        goto LABEL_50;
      }

      if (v30 && v27 != v28)
      {
        v31 = 0;
        v60 = v28 + 32;
        v61 = v27 + 32;
        v58 = v28;
        v59 = v27;
        v57 = *(v27 + 16);
        while (1)
        {
          if (v31 >= *(v27 + 16))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            return result;
          }

          if (v31 >= *(v28 + 16))
          {
            goto LABEL_53;
          }

          v32 = *(v61 + 8 * v31);
          v33 = *(v60 + 8 * v31);
          v34 = *(v32 + 16);
          if (v34 != *(v33 + 16))
          {
            goto LABEL_50;
          }

          v63 = v31;
          if (v34 && v32 != v33)
          {
            break;
          }

LABEL_23:
          v31 = v63 + 1;
          v28 = v58;
          v27 = v59;
          if (v63 + 1 == v57)
          {
            goto LABEL_47;
          }
        }

        v37 = *(v32 + 40);
        v36 = *(v32 + 44);
        v38 = *(v33 + 40);
        if (v36 - v37 == *(v33 + 44) - v38)
        {
          v39 = 0;
          v64 = *(v60 + 8 * v31);
          v65 = *(v61 + 8 * v31);
          do
          {
            v40 = *(v32 + v39 + 54);
            v41 = *(v32 + v39 + 52);
            v42 = *(v32 + v39 + 32);
            v43 = *(v33 + v39 + 54);
            v44 = *(v33 + v39 + 52);
            v45 = *(v33 + v39 + 32);
            if (*(v32 + v39 + 48) != *(v33 + v39 + 48) || v41 != v44 || v40 != v43 || v42 != v45)
            {
              v49 = v37;
              v66 = v36;
              swift_beginAccess();
              v50 = *(v42 + 24) + (v40 | (v41 << 8));
              swift_beginAccess();
              result = memcmp((v50 + v49), (*(v45 + 24) + (v43 | (v44 << 8)) + v38), v66 - v49);
              v33 = v64;
              v32 = v65;
              if (result)
              {
                break;
              }
            }

            if (!--v34)
            {
              goto LABEL_23;
            }

            v51 = v32 + v39;
            v52 = v33 + v39;
            v39 += 24;
            v53 = v51 + 64;
            v37 = *(v51 + 64);
            v36 = *(v53 + 4);
            v38 = *(v52 + 64);
          }

          while (v36 - v37 == *(v52 + 68) - v38);
        }

LABEL_50:
        sub_1B0CF98D4(&v71);
        sub_1B0CF98D4(&v68);
        return 0;
      }

LABEL_47:
      sub_1B0CF98D4(&v71);
      sub_1B0CF98D4(&v68);
      if (v62 + 1 == v56)
      {
        return 1;
      }

      v3 = v62 + 1;
      v5 = v54;
      v4 = v55;
    }
  }

  return 0;
}

uint64_t sub_1B0D38AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = sub_1B0E44BB8();
        v8 = v7;
        if (v6 == sub_1B0E44BB8() && v8 == v9)
        {
        }

        else
        {
          v11 = sub_1B0E46A78();

          if ((v11 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D38BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 10)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *(i + 6);
      v8 = *(i + 2);
      v9 = *i;
      v11 = *(v3 - 2);
      v10 = *(v3 - 1);
      v12 = *(v3 + 6);
      v13 = *(v3 + 2);
      v14 = *v3;
      if (*(i - 4) != *(v3 - 4) || *(i - 3) != *(v3 - 3))
      {
        v31 = *(v3 + 2);
        v15 = *(v3 - 2);
        v33 = *(i - 2);
        v16 = *(i - 1);
        v17 = *(v3 + 6);
        v30 = *(v3 - 1);
        v18 = sub_1B0E46A78();
        v10 = v30;
        v13 = v31;
        v12 = v17;
        v5 = v16;
        v6 = v33;
        v11 = v15;
        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        if (!v11)
        {
          return 0;
        }

        v19 = HIDWORD(v5);
        if (HIDWORD(v5) - v5 != HIDWORD(v10) - v10)
        {
          return 0;
        }

        v20 = v10;
        v21 = v9 | ((v8 | (v7 << 16)) << 32);
        v22 = v14 | ((v13 | (v12 << 16)) << 32);
        v23 = BYTE6(v22);
        v24 = HIDWORD(v21) & 0xFFFFFF;
        v25 = BYTE6(v21);
        if (v21 != v14 || WORD2(v21) != WORD2(v22) || BYTE6(v21) != BYTE6(v22) || v6 != v11)
        {
          v26 = v5;
          v32 = v11;
          v34 = HIDWORD(v22) & 0xFFFFFF;
          swift_beginAccess();
          v27 = v25 & 0xFFFFFFFFFF0000FFLL | (v24 << 8);
          v28 = *(v6 + 24) + v26;
          swift_beginAccess();
          if (memcmp((v28 + v27), (*(v32 + 24) + (v23 & 0xFFFFFFFFFF0000FFLL | (v34 << 8)) + v20), v19 - v26))
          {
            return 0;
          }
        }
      }

      else if (v11)
      {
        return 0;
      }

      v3 += 10;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0D38DC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v44 = v2;
  v45 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[1];
    v40 = *v5;
    *v41 = v8;
    *&v41[15] = *(v5 + 31);
    v9 = v40;
    v10 = DWORD2(v40);
    v11 = HIDWORD(v40);
    v12 = v8;
    v13 = WORD2(v8);
    v14 = BYTE6(v8);
    v15 = v6[1];
    v42 = *v6;
    *v43 = v15;
    *&v43[15] = *(v6 + 31);
    v16 = DWORD2(v42);
    if (HIDWORD(v40) - DWORD2(v40) != HIDWORD(v42) - DWORD2(v42))
    {
      return 0;
    }

    v37 = v5;
    v38 = v7;
    v17 = v42;
    v18 = *&v43[4];
    v19 = v43[6];
    if (v12 == *v43 && v13 == *&v43[4] && v14 == v43[6] && v40 == v42)
    {
      sub_1B0D3C908(&v40, v39);
      sub_1B0D3C908(&v42, v39);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1B0D3C908(&v40, v39);
      sub_1B0D3C908(&v42, v39);
      if (memcmp((v20 + (v14 | (v13 << 8)) + v10), (v21 + (v19 | (v18 << 8)) + v16), v11 - v10))
      {
        goto LABEL_27;
      }
    }

    v22 = *&v41[8];
    v23 = *&v43[8];
    if (!*&v41[8])
    {
      if (*&v43[8])
      {
        goto LABEL_27;
      }

LABEL_22:
      sub_1B0D3C964(&v42);
      sub_1B0D3C964(&v40);
      goto LABEL_23;
    }

    if (!*&v43[8] || (v24 = *&v43[16], v25 = HIDWORD(*&v41[16]), *&v41[20] - *&v41[16] != *&v43[20] - *&v43[16]))
    {
LABEL_27:
      sub_1B0D3C964(&v42);
      sub_1B0D3C964(&v40);
      return 0;
    }

    v26 = *&v41[24] | ((*&v41[28] | (v41[30] << 16)) << 32);
    v27 = *&v43[24] | ((*&v43[28] | (v43[30] << 16)) << 32);
    v28 = HIDWORD(v27) & 0xFFFFFF;
    v29 = BYTE6(v27);
    v30 = HIDWORD(v26) & 0xFFFFFF;
    v31 = BYTE6(v26);
    if (*&v41[24] == *&v43[24] && *&v41[28] == *&v43[28] && BYTE6(v26) == BYTE6(v27) && *&v41[8] == *&v43[8])
    {
      goto LABEL_22;
    }

    v32 = *&v41[16];
    swift_beginAccess();
    v33 = v31 & 0xFFFFFFFFFF0000FFLL | (v30 << 8);
    v34 = *(v22 + 24) + v32;
    swift_beginAccess();
    v35 = memcmp((v34 + v33), (*(v23 + 24) + (v29 & 0xFFFFFFFFFF0000FFLL | (v28 << 8)) + v24), v25 - v32);
    sub_1B0D3C964(&v42);
    sub_1B0D3C964(&v40);
    if (v35)
    {
      return 0;
    }

LABEL_23:
    if (!v38)
    {
      return 1;
    }

    v7 = v38 - 1;
    v6 += 3;
    v5 = v37 + 3;
  }
}

uint64_t sub_1B0D390A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v5 = (a1 + 40);
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = a3(*(v5 - 1), *v5);
      v11 = v10;
      if (v9 == a3(v7, v8) && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1B0E46A78();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v5 += 2;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t AppendOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (v2[2])
  {
    sub_1B0E46C68();
  }

  else
  {
    v7 = v2[1];
    sub_1B0E46C68();
    MEMORY[0x1B2728DB0](v7);
  }

  v8 = v2[4];
  v9 = v2[5];

  return sub_1B0D3C0FC(a1, v8, v9);
}

uint64_t AppendOptions.hashValue.getter()
{
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D392B8()
{
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D392FC(uint64_t a1)
{
  sub_1B0E46C28();
  AppendOptions.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D39338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if ((sub_1B0D390A0(*a1, *a2, MEMORY[0x1E69E6088]) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return (sub_1B045202C(v5, v9) & 1) != 0 && (sub_1B0D3A338(v4, v8) & 1) != 0;
}

void sub_1B0D393EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v69 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v69 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  MEMORY[0x1EEE9AC00](v83);
  v14 = &v69 - v13;
  v88 = type metadata accessor for ParameterValue(0);
  v15 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v78 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v87 = &v69 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  MEMORY[0x1EEE9AC00](v89);
  v25 = &v69 - v24;
  v26 = *(a1 + 16);
  if (v26 == *(a2 + 16) && v26 && a1 != a2)
  {
    v69 = v7;
    v27 = 0;
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v84 = a2 + v28;
    v85 = a1 + v28;
    v29 = (v15 + 48);
    v70 = (v5 + 48);
    v71 = v4;
    v30 = *(v22 + 72);
    v72 = v30;
    v73 = v29;
    v81 = v26;
    v74 = v25;
    while (v27 != v26)
    {
      v32 = v14;
      v33 = *(v89 + 48);
      sub_1B03B5C80(v85 + v30 * v27, v25, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B03B5C80(v84 + v30 * v27, &v25[v33], &qword_1EB6E6440, &unk_1B0EF3530);
      v34 = *v29;
      v35 = v25;
      v36 = v25;
      v37 = v88;
      if ((*v29)(v35, 1, v88) == 1)
      {
        v31 = v34((v36 + v33), 1, v37);
        v25 = v36;
        if (v31 != 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v79 = v27;
        v38 = v87;
        sub_1B03B5C80(v36, v87, &qword_1EB6E6440, &unk_1B0EF3530);
        if (v34((v36 + v33), 1, v37) == 1)
        {
          sub_1B0D3CE04(v38, type metadata accessor for ParameterValue);
          v25 = v36;
LABEL_35:
          v65 = &qword_1EB6E6F20;
          v66 = &unk_1B0EF5F80;
          goto LABEL_44;
        }

        v39 = v86;
        sub_1B0D3CD34(v36 + v33, v86, type metadata accessor for ParameterValue);
        v40 = *(v83 + 48);
        sub_1B0D3CD9C(v38, v14, type metadata accessor for ParameterValue);
        sub_1B0D3CD9C(v39, &v14[v40], type metadata accessor for ParameterValue);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v41 = v78;
          sub_1B0D3CD9C(v14, v78, type metadata accessor for ParameterValue);
          v42 = *v41;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v27 = v79;
          if (EnumCaseMultiPayload != 1)
          {

            sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);
            v49 = v87;
            goto LABEL_38;
          }

          v44 = *&v14[v40];
          v45 = *(v42 + 16);
          v25 = v74;
          if (v45 != *(v44 + 16))
          {
            goto LABEL_33;
          }

          if (v45 && v42 != v44)
          {
            v46 = (v42 + 40);
            v47 = (v44 + 40);
            while (1)
            {
              v48 = *(v46 - 1) == *(v47 - 1) && *v46 == *v47;
              if (!v48 && (sub_1B0E46A78() & 1) == 0)
              {
                break;
              }

              v46 += 2;
              v47 += 2;
              if (!--v45)
              {
                goto LABEL_27;
              }
            }

LABEL_33:
            sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);

            sub_1B0D3CE04(v32, type metadata accessor for ParameterValue);
            v49 = v87;
LABEL_43:
            sub_1B0D3CE04(v49, type metadata accessor for ParameterValue);
            v65 = &qword_1EB6E6440;
            v66 = &unk_1B0EF3530;
LABEL_44:
            sub_1B0398EFC(v25, v65, v66);
            return;
          }

LABEL_27:
          sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);

          v14 = v32;
        }

        else
        {
          v49 = v38;
          v50 = v82;
          sub_1B0D3CD9C(v14, v82, type metadata accessor for ParameterValue);
          v51 = swift_getEnumCaseMultiPayload();
          v27 = v79;
          v52 = v80;
          if (v51 == 1)
          {
            sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);
            sub_1B0398EFC(v50, &qword_1EB6E4050, &unk_1B0EC2B20);
LABEL_38:
            v25 = v74;
            sub_1B0398EFC(v14, &qword_1EB6E6F18, &qword_1B0EEEAD8);
            goto LABEL_43;
          }

          sub_1B03C60A4(&v14[v40], v80, &qword_1EB6E4050, &unk_1B0EC2B20);
          v53 = v77;
          v54 = *(v76 + 48);
          sub_1B03B5C80(v50, v77, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B03B5C80(v52, v53 + v54, &qword_1EB6E4050, &unk_1B0EC2B20);
          v55 = v52;
          v56 = v71;
          v57 = *v70;
          v58 = (*v70)(v53, 1, v71);
          v25 = v74;
          if (v58 == 1)
          {
            sub_1B0398EFC(v55, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);
            v59 = v57(v53 + v54, 1, v56);
            v60 = v82;
            if (v59 != 1)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v61 = v75;
            sub_1B03B5C80(v53, v75, &qword_1EB6E4050, &unk_1B0EC2B20);
            if (v57(v53 + v54, 1, v56) == 1)
            {
              sub_1B0398EFC(v80, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);
              sub_1B0398EFC(v61, &qword_1EB6E4040, &qword_1B0EC2B10);
              v60 = v82;
LABEL_40:
              v67 = &qword_1EB6E6F10;
              v68 = &qword_1B0EEEAD0;
              goto LABEL_42;
            }

            v62 = v69;
            sub_1B03C60A4(v53 + v54, v69, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B03D06F8();
            v63 = sub_1B0E46E08();
            sub_1B0398EFC(v62, &qword_1EB6E4040, &qword_1B0EC2B10);
            sub_1B0398EFC(v80, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D3CE04(v86, type metadata accessor for ParameterValue);
            sub_1B0398EFC(v61, &qword_1EB6E4040, &qword_1B0EC2B10);
            v60 = v82;
            if ((v63 & 1) == 0)
            {
              v67 = &qword_1EB6E4050;
              v68 = &unk_1B0EC2B20;
LABEL_42:
              sub_1B0398EFC(v53, v67, v68);
              v49 = v87;
              sub_1B0398EFC(v60, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D3CE04(v14, type metadata accessor for ParameterValue);
              goto LABEL_43;
            }
          }

          sub_1B0398EFC(v53, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v60, &qword_1EB6E4050, &unk_1B0EC2B20);
        }

        v64 = v87;
        sub_1B0D3CE04(v14, type metadata accessor for ParameterValue);
        sub_1B0D3CE04(v64, type metadata accessor for ParameterValue);
        v30 = v72;
        v29 = v73;
      }

      ++v27;
      sub_1B0398EFC(v25, &qword_1EB6E6440, &unk_1B0EF3530);
      v26 = v81;
      if (v27 == v81)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0D39EA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v28 = a2 + 32;
    v29 = result + 32;
    v27 = *(result + 16);
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        return result;
      }

      v4 = *(v29 + 8 * v3);
      v5 = *(v28 + 8 * v3);
      v6 = *(v4 + 16);
      if (v6 != *(v5 + 16))
      {
        return 0;
      }

      v30 = v3;
      if (v6 && v4 != v5)
      {
        break;
      }

LABEL_5:
      v3 = v30 + 1;
      result = 1;
      v2 = v27;
      if (v30 + 1 == v27)
      {
        return result;
      }
    }

    v9 = *(v4 + 40);
    v8 = *(v4 + 44);
    v10 = *(v5 + 40);
    if (v8 - v9 == *(v5 + 44) - v10)
    {
      v11 = 0;
      v31 = *(v28 + 8 * v3);
      v32 = *(v29 + 8 * v3);
      do
      {
        v12 = *(v4 + v11 + 54);
        v13 = *(v4 + v11 + 52);
        v14 = *(v4 + v11 + 32);
        v15 = *(v5 + v11 + 54);
        v16 = *(v5 + v11 + 52);
        v17 = *(v5 + v11 + 32);
        if (*(v4 + v11 + 48) != *(v5 + v11 + 48) || v13 != v16 || v12 != v15 || v14 != v17)
        {
          v21 = v9;
          v33 = v8;
          swift_beginAccess();
          v22 = *(v14 + 24) + (v12 | (v13 << 8));
          swift_beginAccess();
          v23 = memcmp((v22 + v21), (*(v17 + 24) + (v15 | (v16 << 8)) + v10), v33 - v21);
          v5 = v31;
          v4 = v32;
          if (v23)
          {
            break;
          }
        }

        if (!--v6)
        {
          goto LABEL_5;
        }

        v24 = v4 + v11;
        v25 = v5 + v11;
        v11 += 24;
        v26 = v24 + 64;
        v9 = *(v24 + 64);
        v8 = *(v26 + 4);
        v10 = *(v25 + 64);
      }

      while (v8 - v9 == *(v25 + 68) - v10);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0D3A070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v4 = 0;
      v22 = a2;
      while (1)
      {
        v5 = v3 + v4;
        v6 = *(v3 + v4 + 40);
        v7 = *(v3 + v4 + 44);
        v8 = a2 + v4;
        v9 = *(a2 + v4 + 40);
        if (v7 - v6 != *(a2 + v4 + 44) - v9)
        {
          break;
        }

        v10 = *(v5 + 32);
        v11 = *(v5 + 52);
        v12 = *(v5 + 54);
        v13 = *(v8 + 32);
        v14 = *(v8 + 54);
        v15 = *(v5 + 48) == *(v8 + 48) && v11 == *(v8 + 52);
        v16 = v15 && v12 == v14;
        if (!v16 || v10 != v13)
        {
          v23 = *(v8 + 52);
          swift_beginAccess();
          v18 = *(v10 + 24);
          swift_beginAccess();
          v19 = memcmp((v18 + (v12 | (v11 << 8)) + v6), (*(v13 + 24) + (v14 | (v23 << 8)) + v9), v7 - v6);
          v3 = a1;
          a2 = v22;
          if (v19)
          {
            break;
          }
        }

        v4 += 24;
        if (!--v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0D3A1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v3 - 2);
      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v7 = *(v4 - 1);
        v8 = *(v3 - 1);
        v9 = HIDWORD(v7);
        if (HIDWORD(v7) - v7 != HIDWORD(v8) - v8)
        {
          return 0;
        }

        v10 = *v4 | ((*(v4 + 2) | (*(v4 + 6) << 16)) << 32);
        v11 = *v3 | ((*(v3 + 2) | (*(v3 + 6) << 16)) << 32);
        v12 = BYTE6(v11);
        v13 = HIDWORD(v10) & 0xFFFFFF;
        v14 = BYTE6(v10);
        if (*v4 != *v3 || (*(v4 + 2) == *(v3 + 2) ? (v15 = BYTE6(v10) == BYTE6(v11)) : (v15 = 0), v15 ? (v16 = v5 == v6) : (v16 = 0), !v16))
        {
          v20 = v7;
          v21 = HIDWORD(v11) & 0xFFFFFF;
          swift_beginAccess();
          v17 = v14 & 0xFFFFFFFFFF0000FFLL | (v13 << 8);
          v18 = *(v5 + 24) + v20;
          swift_beginAccess();
          if (memcmp((v18 + v17), (*(v6 + 24) + (v12 & 0xFFFFFFFFFF0000FFLL | (v21 << 8)) + v8), v9 - v20))
          {
            return 0;
          }
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0D3A338(uint64_t a1, uint64_t a2)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F10, &qword_1B0EEEAD0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F18, &qword_1B0EEEAD8);
  MEMORY[0x1EEE9AC00](v65);
  v16 = &v51 - v15;
  v64 = type metadata accessor for ParameterValue(0);
  MEMORY[0x1EEE9AC00](v64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v22;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  v63 = *(a1 + 16);
  if (!v25 || a1 == a2)
  {
    return 1;
  }

  v54 = v16;
  v55 = v6;
  v52 = v5;
  v53 = v11;
  v26 = 0;
  v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v58 = v19;
  v59 = a2 + v27;
  v56 = (v60 + 48);
  v57 = v23;
  v60 = *(v21 + 72);
  v61 = a1 + v27;
  v28 = v63;
  v66 = &v51 - v22;
  while (1)
  {
    v29 = v14;
    v30 = v60 * v26;
    result = sub_1B0D3CD9C(v61 + v60 * v26, v24, type metadata accessor for ParameterValue);
    if (v26 == v28)
    {
      __break(1u);
      return result;
    }

    v32 = *(v65 + 48);
    sub_1B0D3CD9C(v24, v16, type metadata accessor for ParameterValue);
    sub_1B0D3CD9C(v59 + v30, &v16[v32], type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0D3CD9C(v16, v19, type metadata accessor for ParameterValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = v29;
      v41 = v62;
      v42 = v56;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B0D3CE04(v66, type metadata accessor for ParameterValue);
        sub_1B0398EFC(v19, &qword_1EB6E4050, &unk_1B0EC2B20);
        goto LABEL_32;
      }

      sub_1B03C60A4(&v16[v32], v14, &qword_1EB6E4050, &unk_1B0EC2B20);
      v43 = *(v55 + 48);
      sub_1B03B5C80(v19, v8, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B03B5C80(v14, &v8[v43], &qword_1EB6E4050, &unk_1B0EC2B20);
      v44 = *v42;
      if ((*v42)(v8, 1, v41) == 1)
      {
        sub_1B0398EFC(v14, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v66, type metadata accessor for ParameterValue);
        if (v44(&v8[v43], 1, v41) != 1)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      v45 = v53;
      sub_1B03B5C80(v8, v53, &qword_1EB6E4050, &unk_1B0EC2B20);
      if (v44(&v8[v43], 1, v41) == 1)
      {
        sub_1B0398EFC(v14, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v66, type metadata accessor for ParameterValue);
        sub_1B0398EFC(v45, &qword_1EB6E4040, &qword_1B0EC2B10);
        v19 = v58;
LABEL_34:
        v49 = &qword_1EB6E6F10;
        v50 = &qword_1B0EEEAD0;
      }

      else
      {
        v46 = v52;
        sub_1B03C60A4(&v8[v43], v52, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B03D06F8();
        v47 = sub_1B0E46E08();
        sub_1B0398EFC(v46, &qword_1EB6E4040, &qword_1B0EC2B10);
        sub_1B0398EFC(v14, &qword_1EB6E4050, &unk_1B0EC2B20);
        sub_1B0D3CE04(v66, type metadata accessor for ParameterValue);
        sub_1B0398EFC(v45, &qword_1EB6E4040, &qword_1B0EC2B10);
        v19 = v58;
        if (v47)
        {
LABEL_27:
          sub_1B0398EFC(v8, &qword_1EB6E4050, &unk_1B0EC2B20);
          sub_1B0398EFC(v19, &qword_1EB6E4050, &unk_1B0EC2B20);
          goto LABEL_6;
        }

        v49 = &qword_1EB6E4050;
        v50 = &unk_1B0EC2B20;
      }

      sub_1B0398EFC(v8, v49, v50);
      sub_1B0398EFC(v19, &qword_1EB6E4050, &unk_1B0EC2B20);
      v48 = v16;
      goto LABEL_37;
    }

    v33 = v57;
    sub_1B0D3CD9C(v16, v57, type metadata accessor for ParameterValue);
    v34 = *v33;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0D3CE04(v66, type metadata accessor for ParameterValue);

LABEL_32:
      sub_1B0398EFC(v16, &qword_1EB6E6F18, &qword_1B0EEEAD8);
      return 0;
    }

    v35 = *&v16[v32];
    v36 = *(v34 + 16);
    if (v36 != *(v35 + 16))
    {
      goto LABEL_29;
    }

    if (v36 && v34 != v35)
    {
      break;
    }

LABEL_5:
    sub_1B0D3CE04(v66, type metadata accessor for ParameterValue);

    v16 = v54;
    v19 = v58;
    v14 = v29;
LABEL_6:
    ++v26;
    sub_1B0D3CE04(v16, type metadata accessor for ParameterValue);
    v28 = v63;
    v24 = v66;
    if (v26 == v63)
    {
      return 1;
    }
  }

  v37 = (v34 + 40);
  v38 = (v35 + 40);
  while (1)
  {
    v39 = *(v37 - 1) == *(v38 - 1) && *v37 == *v38;
    if (!v39 && (sub_1B0E46A78() & 1) == 0)
    {
      break;
    }

    v37 += 2;
    v38 += 2;
    if (!--v36)
    {
      goto LABEL_5;
    }
  }

LABEL_29:
  sub_1B0D3CE04(v66, type metadata accessor for ParameterValue);

  v48 = v54;
LABEL_37:
  sub_1B0D3CE04(v48, type metadata accessor for ParameterValue);
  return 0;
}

uint64_t sub_1B0D3AB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = a3 + 40;
    v9 = a2 + 40;
    while (v7 < *(a2 + 16))
    {
      ++v7;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 16;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1B0D3AC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x1B2728D70](v4);

  if (!v4)
  {
  }

  v6 = 0;
  v7 = 0;
  while (v7 < *(a2 + 16))
  {
    v8 = *(a2 + v6 + 32);
    v9 = *(a3 + v6 + 32);

    if (v8)
    {
      swift_beginAccess();
      sub_1B0E46C38();
      sub_1B0E46C68();
      if (v9)
      {
        swift_beginAccess();
        sub_1B0E46C38();
      }

      ++v7;

      v6 += 24;
      if (v4 != v7)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D3ADE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x1B2728D70](v4);

  if (!v4)
  {
  }

  v6 = 0;
  v11 = a3 + 32;
  while (v6 < *(a2 + 16))
  {
    v7 = *(a2 + 32 + 24 * v6);
    v8 = *(v11 + 8 * v6);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v7)
    {
      swift_beginAccess();
      sub_1B0E46C38();
      MEMORY[0x1B2728D70](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8 + 54;
        do
        {
          v10 += 24;
          swift_beginAccess();
          sub_1B0E46C38();
          --v9;
        }

        while (v9);
      }

      ++v6;

      if (v6 != v4)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D3AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = a3 + 40;
    v9 = a2 + 40;
    while (v7 < *(a2 + 16))
    {
      ++v7;
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 16;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1B0D3B080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = type metadata accessor for ParameterValue(0);
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v62 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v57 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6570, &unk_1B0EF3540);
  MEMORY[0x1EEE9AC00](v66);
  v65 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v64 = (&v57 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F48, &qword_1B0EEEAF8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v57 - v28;
  v74 = *(a3 + 16);
  MEMORY[0x1B2728D70](v27);
  v68 = a2;
  v69 = a3;
  v63 = a2 + 32;
  v70 = (v73 + 48);
  v58 = (v5 + 48);

  v31 = 0;
  v61 = v11;
  v73 = v12;
  while (1)
  {
    if (v31 >= v74)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
      (*(*(v44 - 8) + 56))(v25, 1, 1, v44);
      goto LABEL_9;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v31 >= *(v68 + 16))
    {
      goto LABEL_23;
    }

    v33 = v66;
    v32 = v67;
    v34 = *(v66 + 48);
    v35 = v64;
    v36 = (v63 + 16 * v31);
    v37 = v36[1];
    *v64 = *v36;
    *(v35 + 8) = v37;
    sub_1B03B5C80(v69 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31++, v35 + v34, &qword_1EB6E6440, &unk_1B0EF3530);
    v38 = v65;
    sub_1B03C60A4(v35, v65, &qword_1EB6E6570, &unk_1B0EF3540);
    v39 = *(v33 + 48);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
    v41 = *(v40 + 48);
    v42 = v38[1];
    *v25 = *v38;
    v25[1] = v42;
    v43 = v38 + v39;
    v12 = v73;
    sub_1B03C60A4(v43, v25 + v41, &qword_1EB6E6440, &unk_1B0EF3530);
    (*(*(v40 - 8) + 56))(v25, 0, 1, v40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_9:
    sub_1B03C60A4(v25, v29, &qword_1EB6E6F48, &qword_1B0EEEAF8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
    if ((*(*(v45 - 8) + 48))(v29, 1, v45) == 1)
    {
    }

    v46 = v75;
    sub_1B03C60A4(&v29[*(v45 + 48)], v75, &qword_1EB6E6440, &unk_1B0EF3530);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v47 = v71;
    sub_1B03B5C80(v46, v71, &qword_1EB6E6440, &unk_1B0EF3530);
    if ((*v70)(v47, 1, v12) == 1)
    {
      sub_1B0E46C68();
    }

    else
    {
      v48 = v72;
      sub_1B0D3CD34(v47, v72, type metadata accessor for ParameterValue);
      sub_1B0E46C68();
      v49 = v62;
      sub_1B0D3CD9C(v48, v62, type metadata accessor for ParameterValue);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = *v49;
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v50 + 16));
        v51 = *(v50 + 16);
        if (v51)
        {
          v52 = v50 + 40;
          do
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            v52 += 16;
            --v51;
          }

          while (v51);
        }
      }

      else
      {
        v53 = v61;
        sub_1B03C60A4(v49, v61, &qword_1EB6E4050, &unk_1B0EC2B20);
        MEMORY[0x1B2728D70](0);
        v54 = v59;
        sub_1B03B5C80(v53, v59, &qword_1EB6E4050, &unk_1B0EC2B20);
        if ((*v58)(v54, 1, v60) == 1)
        {
          MEMORY[0x1B2728D70](1);

          v55 = v53;
        }

        else
        {
          v56 = v57;
          sub_1B03C60A4(v54, v57, &qword_1EB6E4040, &qword_1B0EC2B10);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();

          sub_1B0398EFC(v56, &qword_1EB6E4040, &qword_1B0EC2B10);
          v55 = v61;
        }

        sub_1B0398EFC(v55, &qword_1EB6E4050, &unk_1B0EC2B20);
      }

      sub_1B0D3CE04(v72, type metadata accessor for ParameterValue);
      v12 = v73;
    }

    result = sub_1B0398EFC(v75, &qword_1EB6E6440, &unk_1B0EF3530);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0D3B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v55 - v6;
  v7 = &qword_1EB6E4050;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - v11;
  v69 = type metadata accessor for ParameterValue(0);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v55 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6EF8, " |\a");
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v62 = (&v55 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F00, &qword_1B0EEEAC0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - v23;
  v70 = *(a3 + 16);
  MEMORY[0x1B2728D70](v22);
  v66 = a2;
  v67 = a3;
  v61 = a2 + 32;
  v57 = (v5 + 48);

  v26 = 0;
  while (1)
  {
    if (v26 >= v70)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F08, &qword_1B0EEEAC8);
      (*(*(v43 - 8) + 56))(v20, 1, 1, v43);
      goto LABEL_11;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 >= *(v66 + 16))
    {
      goto LABEL_22;
    }

    v29 = v64;
    v30 = *(v64 + 48);
    v31 = v62;
    v32 = v61 + 24 * v26;
    v33 = *(v32 + 16);
    v34 = *(v32 + 20);
    v35 = *(v32 + 22);
    *v62 = *v32;
    *(v31 + 8) = *(v32 + 8);
    *(v31 + 16) = v33;
    *(v31 + 20) = v34;
    *(v31 + 22) = v35;
    sub_1B0D3CD9C(v67 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v26++, v31 + v30, type metadata accessor for ParameterValue);
    v36 = v63;
    sub_1B03C60A4(v31, v63, &qword_1EB6E6EF8, " |\a");
    v37 = *(v29 + 48);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F08, &qword_1B0EEEAC8);
    v39 = *(v38 + 48);
    v40 = *(v36 + 16);
    v41 = *(v36 + 20);
    v42 = *(v36 + 22);
    *v20 = *v36;
    *(v20 + 1) = *(v36 + 8);
    *(v20 + 4) = v40;
    *(v20 + 10) = v41;
    v20[22] = v42;
    sub_1B0D3CD34(v36 + v37, &v20[v39], type metadata accessor for ParameterValue);
    (*(*(v38 - 8) + 56))(v20, 0, 1, v38);

LABEL_11:
    sub_1B03C60A4(v20, v24, &qword_1EB6E6F00, &qword_1B0EEEAC0);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F08, &qword_1B0EEEAC8);
    if ((*(*(v44 - 8) + 48))(v24, 1, v44) == 1)
    {
    }

    v71 = v26;
    v45 = v7;
    v46 = v72;
    sub_1B0D3CD34(&v24[*(v44 + 48)], v72, type metadata accessor for ParameterValue);
    swift_beginAccess();
    sub_1B0E46C38();
    v47 = v68;
    sub_1B0D3CD9C(v46, v68, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v51 = v58;
      v7 = v45;
      sub_1B03C60A4(v47, v58, v45, &unk_1B0EC2B20);
      MEMORY[0x1B2728D70](0);
      v52 = v59;
      sub_1B03B5C80(v51, v59, v45, &unk_1B0EC2B20);
      if ((*v57)(v52, 1, v60) == 1)
      {
        MEMORY[0x1B2728D70](1);

        v27 = v51;
        v28 = v45;
      }

      else
      {
        v53 = v56;
        sub_1B03C60A4(v52, v56, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();

        v54 = v53;
        v7 = &qword_1EB6E4050;
        sub_1B0398EFC(v54, &qword_1EB6E4040, &qword_1B0EC2B10);
        v27 = v51;
        v28 = &qword_1EB6E4050;
      }

      sub_1B0398EFC(v27, v28, &unk_1B0EC2B20);
      goto LABEL_4;
    }

    v48 = *v47;
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728D70](*(v48 + 16));
    v49 = *(v48 + 16);
    if (!v49)
    {

      v7 = &qword_1EB6E4050;
LABEL_4:
      v26 = v71;
      goto LABEL_5;
    }

    v50 = v48 + 40;
    do
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v50 += 16;
      --v49;
    }

    while (v49);

    v7 = &qword_1EB6E4050;
    v26 = v71;
LABEL_5:
    result = sub_1B0D3CE04(v72, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1B0D3C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v60 - v6;
  v7 = &qword_1EB6E4050;
  v8 = &unk_1B0EC2B20;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v60 - v12;
  v72 = type metadata accessor for ParameterValue(0);
  v68 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v60 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  MEMORY[0x1EEE9AC00](v67);
  v66 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v65 = (&v60 - v18);
  v19 = &qword_1EB6E6FA8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6FA8, &unk_1B0EEEB50);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = *(a3 + 16);
  v73 = &v60 - v26;
  v74 = v25;
  MEMORY[0x1B2728D70](v24);
  v69 = a2;
  v70 = a3;
  v64 = a2 + 32;
  v61 = (v5 + 48);

  for (i = 0; ; i = v76)
  {
    if (i >= v74)
    {
      v76 = i;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
      (*(*(v47 - 8) + 56))(v22, 1, 1, v47);
      v29 = v75;
      goto LABEL_10;
    }

    v29 = v75;
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v69 + 16))
    {
      goto LABEL_21;
    }

    v31 = v67;
    v30 = v68;
    v32 = *(v67 + 48);
    v33 = (v64 + 16 * i);
    v34 = i;
    v35 = v33[1];
    v36 = v19;
    v37 = v65;
    *v65 = *v33;
    v37[1] = v35;
    sub_1B0D3CD9C(v70 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * i, v37 + v32, type metadata accessor for ParameterValue);
    v76 = v34 + 1;
    v38 = v37;
    v39 = v7;
    v40 = v8;
    v41 = v66;
    sub_1B03C60A4(v38, v66, &qword_1EB6E6568, &qword_1B0EE7F08);
    v42 = *(v31 + 48);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
    v44 = *(v43 + 48);
    v45 = v41[1];
    *v22 = *v41;
    v22[1] = v45;
    v46 = v41 + v42;
    v8 = v40;
    v7 = v39;
    v19 = v36;
    sub_1B0D3CD34(v46, v22 + v44, type metadata accessor for ParameterValue);
    (*(*(v43 - 8) + 56))(v22, 0, 1, v43);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_10:
    v48 = v73;
    sub_1B03C60A4(v22, v73, v19, &unk_1B0EEEB50);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F30, &qword_1B0EEEAE0);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {
    }

    v50 = v48 + *(v49 + 48);
    v51 = v77;
    sub_1B0D3CD34(v50, v77, type metadata accessor for ParameterValue);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v52 = v51;
    v53 = v71;
    sub_1B0D3CD9C(v52, v71, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = *v53;
      MEMORY[0x1B2728D70](1);
      MEMORY[0x1B2728D70](*(v54 + 16));
      v55 = *(v54 + 16);
      if (v55)
      {
        v56 = v54 + 40;
        do
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v56 += 16;
          --v55;
        }

        while (v55);

        v7 = &qword_1EB6E4050;
        v8 = &unk_1B0EC2B20;
      }

      else
      {
      }
    }

    else
    {
      sub_1B03C60A4(v53, v29, v7, v8);
      MEMORY[0x1B2728D70](0);
      v57 = v62;
      sub_1B03B5C80(v29, v62, v7, v8);
      if ((*v61)(v57, 1, v63) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v58 = v60;
        sub_1B03C60A4(v57, v60, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();

        v59 = v58;
        v8 = &unk_1B0EC2B20;
        v7 = &qword_1EB6E4050;
        sub_1B0398EFC(v59, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      sub_1B0398EFC(v29, v7, v8);
    }

    result = sub_1B0D3CE04(v77, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B0D3C88C()
{
  result = qword_1EB6E6EF0;
  if (!qword_1EB6E6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6EF0);
  }

  return result;
}

void sub_1B0D3C8F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
  }
}

uint64_t sub_1B0D3C8FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1B0D3CB74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_1B0D3CB80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    sub_1B0D3C8F0(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

uint64_t sub_1B0D3CB98(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1B0D3C8FC(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_1B0D3CD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D3CD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D3CE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ApplePushService.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v5 = a3;
  if (a5)
  {
    if (a5 == 1)
    {
      MEMORY[0x1B2728D70](1);
      MEMORY[0x1B2728D70](a2);

      return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](2);
      swift_beginAccess();
      return sub_1B0E46C38();
    }
  }

  else
  {
    MEMORY[0x1B2728D70](0, a2, a3, a4);
    return MEMORY[0x1B2728D70](v5 | (v5 << 32));
  }
}

uint64_t ApplePushService.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  sub_1B0E46C28();
  ApplePushService.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3D06C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  ApplePushService.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3D0E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1B0E46C28();
  ApplePushService.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1B0E46CB8();
}

void sub_1B0D3D164(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_35;
    }

    v9 = *(v4 + 20);
    v10 = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F2FAF0, v4 + 8, v9);
    if (v11)
    {
      v12._object = 0x80000001B0F2FAF0;
      v12._countAndFlagsBits = 0xD000000000000012;
      v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = v10;
    v14 = *(v4 + 20);
    v15 = __CFADD__(v14, v10);
    v16 = v14 + v10;
    if (v15)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *(v4 + 20) = v16;
    sub_1B0DD55E0(0x737265762D737061uLL, 0xEB000000006E6F69);
    v18 = v13 + v17;
    if (__OFADD__(v13, v17))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v19 = *(v4 + 20);
    v20 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v19);
    if (v21)
    {
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
    }

    v23 = *(v4 + 20);
    v15 = __CFADD__(v23, v20);
    v24 = v23 + v20;
    if (v15)
    {
      goto LABEL_46;
    }

    *(v4 + 20) = v24;
    v25 = v18 + v20;
    if (__OFADD__(v18, v20))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v72[0] = a1;
    v26 = sub_1B0E469C8();
    sub_1B0DD55E0(v26, v27);
    v29 = v28;

    v30 = __OFADD__(v25, v29);
    v31 = v25 + v29;
    if (v30)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v32 = *(v5 + 20);
    v33 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v32);
    if (v34)
    {
      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v32);
    }

    v36 = *(v5 + 20);
    v15 = __CFADD__(v36, v33);
    v37 = v36 + v33;
    if (v15)
    {
      goto LABEL_51;
    }

    *(v5 + 20) = v37;
    v38 = v31 + v33;
    if (__OFADD__(v31, v33))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_1B0DD55E0(0x69706F742D737061uLL, 0xE900000000000063);
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    a1 = *(v5 + 20);
    v41 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, a1);
    if (v42)
    {
      v43._countAndFlagsBits = 32;
      v43._object = 0xE100000000000000;
      v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, a1);
    }

    v44 = *(v5 + 20);
    v15 = __CFADD__(v44, v41);
    v45 = v44 + v41;
    if (v15)
    {
      goto LABEL_54;
    }

    *(v5 + 20) = v45;
    v46 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
LABEL_55:
      __break(1u);
      return;
    }

    sub_1B0DD55E0(a2, a3);
    if (!__OFADD__(v46, v47))
    {
      return;
    }

    __break(1u);
  }

  v48 = *(v5 + 20);
  v49 = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F2FAF0, v5 + 8, v48);
  if (v50)
  {
    v51._object = 0x80000001B0F2FAF0;
    v51._countAndFlagsBits = 0xD000000000000012;
    v49 = ByteBuffer._setStringSlowpath(_:at:)(v51, v48);
  }

  v52 = v49;
  v53 = *(v5 + 20);
  v15 = __CFADD__(v53, v49);
  v54 = v53 + v49;
  if (v15)
  {
    goto LABEL_41;
  }

  *(v5 + 20) = v54;
  sub_1B0DD55E0(0x786F626C69616DuLL, 0xE700000000000000);
  a2 = v52 + v55;
  if (__OFADD__(v52, v55))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a3 = *(v5 + 20);
  v56 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, a3);
  if (v57)
  {
    v58._countAndFlagsBits = 32;
    v58._object = 0xE100000000000000;
    v56 = ByteBuffer._setStringSlowpath(_:at:)(v58, a3);
  }

  v59 = *(v5 + 20);
  v15 = __CFADD__(v59, v56);
  v60 = v59 + v56;
  if (v15)
  {
    goto LABEL_47;
  }

  *(v5 + 20) = v60;
  v61 = a2 + v56;
  if (__OFADD__(a2, v56))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1B0DD59A4(a1);
  if (!__OFADD__(v61, v62))
  {
    return;
  }

  __break(1u);
LABEL_35:
  v72[0] = a1;
  v72[1] = a2;
  v73 = a3;
  v74 = WORD2(a3);
  v75 = BYTE6(a3);
  v63 = *(v5 + 20);

  v64 = sub_1B0CFC1B0(0xD000000000000012, 0x80000001B0F2FAF0, v5 + 8, v63);
  if (v65)
  {
    v66._object = 0x80000001B0F2FAF0;
    v66._countAndFlagsBits = 0xD000000000000012;
    v64 = ByteBuffer._setStringSlowpath(_:at:)(v66, v63);
  }

  v67 = v64;
  v68 = *(v5 + 20);
  v15 = __CFADD__(v68, v64);
  v69 = v68 + v64;
  if (v15)
  {
    goto LABEL_42;
  }

  *(v5 + 20) = v69;
  EncodeBuffer.writeBuffer(_:)(v72);
  v71 = v70;
  sub_1B0C26CD4(a1, a2, a3, 2u);
  if (__OFADD__(v67, v71))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

uint64_t sub_1B0D3D570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v9 = a3;
  if (a2 + 1 < a3)
  {
    v8 = a1;
    v11 = *a1;
    v16 = *(a1 + 8);
    v13 = *(a1 + 12);
    LODWORD(v17) = *(a1 + 16);
    v15 = *(a1 + 20);
    v12 = a2 + 2;
    v18 = *(a1 + 22);
    v63 = v18;
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = v9;
LABEL_44:
      swift_willThrow();
      goto LABEL_45;
    }

    v14 = 0x80000001B0F2D460;
    v46 = v17;
    if (("selectingMailbox" & 0x1000000000000000) == 0)
    {
      if (("selectingMailbox" & 0x2000000000000000) != 0)
      {
        v17 = ("selectingMailbox" >> 56) & 0xF;
      }

      else
      {
        v17 = 17;
      }

LABEL_10:
      if (v17 <= (v13 - v16))
      {
        v43 = a8;
        v44 = v13;
        v38 = a4;
        v39 = a6;
        v40 = a5;
        v41 = a7;
        v42 = v10;
        v23 = v18;
        swift_beginAccess();
        LOWORD(v45) = v15;
        v13 = (v23 | (v15 << 8)) + v16;
        swift_retain_n();
        v24 = sub_1B0E44C68();
        if (!__CFADD__(v16, v17))
        {
          v13 = v24;
          v15 = v25;
          v37 = v16 + v17;
          *(v8 + 8) = v16 + v17;
          if (v24 == 0xD000000000000011 && v14 == v25 || (sub_1B0E46A78() & 1) != 0)
          {
LABEL_19:
            LODWORD(v17) = v46;

            sub_1B0D3DC0C(v8, v12, v9, v38, v40, v39, v41, v43);
            if (v42)
            {

              *v8 = v11;
              *(v8 + 8) = v37;
              *(v8 + 12) = v44;
              *(v8 + 16) = v46;
              LOWORD(v15) = v45;
              *(v8 + 20) = v45;
              *(v8 + 22) = v63;
              swift_willThrow();
              v47 = v42;
              v26 = v42;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
              if (swift_dynamicCast())
              {
              }

              else
              {

                v47 = v42;
                v31 = v42;
                if ((swift_dynamicCast() & 1) == 0)
                {

                  LODWORD(v13) = v44;
LABEL_45:
                  *v8 = v11;
                  *(v8 + 8) = v16;
                  *(v8 + 12) = v13;
                  *(v8 + 16) = v17;
                  *(v8 + 20) = v15;
                  *(v8 + 22) = v63;
                  return swift_willThrow();
                }
              }

              sub_1B0D3E7CC(v8, v12, v9, v43);
            }
          }

          if ((v15 & 0x1000000000000000) == 0)
          {
            if ((v15 & 0x2000000000000000) != 0)
            {
              if (v17 != (HIBYTE(v15) & 0xF))
              {
                goto LABEL_42;
              }
            }

            else if (v17 != (v13 & 0xFFFFFFFFFFFFLL))
            {
              goto LABEL_42;
            }

LABEL_33:
            if (sub_1B043D8AC(0xD000000000000011, v14, v13, v15))
            {
              v42 = v10;
              goto LABEL_19;
            }

LABEL_42:
            sub_1B0E46298();

            v48 = 0xD000000000000037;
            v49 = 0x80000001B0F2F9D0;
            MEMORY[0x1B2726E80](v13, v15);

            sub_1B0436554();
            swift_allocError();
            *v36 = 0xD000000000000037;
            v36[1] = 0x80000001B0F2F9D0;
            v36[2] = 0xD000000000000020;
            v36[3] = 0x80000001B0F2FA10;
            v36[4] = 280;
            LODWORD(v13) = v44;
            LOWORD(v15) = v45;
            LODWORD(v17) = v46;
LABEL_43:
            swift_willThrow();

            goto LABEL_44;
          }

LABEL_41:
          v10 = v42;
          if (v17 != sub_1B0E44DC8())
          {
            goto LABEL_42;
          }

          goto LABEL_33;
        }

        goto LABEL_39;
      }

LABEL_11:
      if (v13 >= v16)
      {
        LOWORD(v45) = v13 - v16;
        v17 = v46;
        if (v46 - (v18 | (v15 << 8)) >= v13)
        {
          v55 = v11;
          v56 = v16;
          v57 = v13;
          v58 = v46;
          v59 = v15;
          v60 = v18;
          v61 = v16;
          v62 = v13;
          v21 = v18;
          swift_retain_n();
          v22 = sub_1B0DFD5B4(&v55, 0xD000000000000011, v14);
          sub_1B04394F4(&v55);
          if (v22)
          {
            sub_1B0D3EA30();
            swift_allocError();
          }

          else
          {
            sub_1B0E46298();

            v48 = v11;
            v49 = __PAIR64__(v13, v16);
            v50 = v46;
            v51 = v15;
            v52 = v21;
            v53 = v16;
            v54 = v13;
            swift_beginAccess();

            v27 = sub_1B0E44C68();
            v28 = v13;
            v13 = v29;
            sub_1B04394F4(&v48);
            MEMORY[0x1B2726E80](v27, v13);

            sub_1B0436554();
            swift_allocError();
            *v30 = 0xD000000000000024;
            v30[1] = 0x80000001B0F2FA40;
            v30[2] = 0xD000000000000020;
            v30[3] = 0x80000001B0F2FA10;
            LODWORD(v13) = v28;
            LODWORD(v17) = v46;
            v30[4] = 264;
          }

          goto LABEL_43;
        }

        goto LABEL_40;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_36:
    v43 = a8;
    v44 = v13;
    v40 = a5;
    v41 = a7;
    v45 = v15;
    v33 = a6;
    v34 = a4;
    v35 = sub_1B0E44DC8();
    v18 = v63;
    a4 = v34;
    a5 = v40;
    a7 = v41;
    a6 = v33;
    v15 = v45;
    a8 = v43;
    v17 = v35;
    if (v35 < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v19 = v9;
  return swift_willThrow();
}

uint64_t sub_1B0D3DC0C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_37:
    v129 = a1;
    v130 = v16 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (a8)
      {
        if (--a8)
        {
          v54 = 0;
          v77 = &v129 + 1;
          while (1)
          {
            v78 = *v77 - 48;
            if (v78 > 9)
            {
              break;
            }

            v79 = (v54 * 10) >> 64;
            v80 = 10 * v54;
            if (v79 != v80 >> 63)
            {
              break;
            }

            v59 = __OFADD__(v80, v78);
            v54 = v80 + v78;
            if (v59)
            {
              break;
            }

            ++v77;
            if (!--a8)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_80;
      }

      goto LABEL_101;
    }

    if (a1 != 45)
    {
      if (a8)
      {
        v54 = 0;
        v84 = &v129;
        while (1)
        {
          v85 = *v84 - 48;
          if (v85 > 9)
          {
            break;
          }

          v86 = (v54 * 10) >> 64;
          v87 = 10 * v54;
          if (v86 != v87 >> 63)
          {
            break;
          }

          v59 = __OFADD__(v87, v85);
          v54 = v87 + v85;
          if (v59)
          {
            break;
          }

          v84 = (v84 + 1);
          if (!--a8)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_80;
    }

    if (a8)
    {
      if (--a8)
      {
        v54 = 0;
        v69 = &v129 + 1;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = (v54 * 10) >> 64;
          v72 = 10 * v54;
          if (v71 != v72 >> 63)
          {
            break;
          }

          v59 = __OFSUB__(v72, v70);
          v54 = v72 - v70;
          if (v59)
          {
            break;
          }

          ++v69;
          if (!--a8)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_99;
  }

  v11 = a3;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v22 = v11;
    return swift_willThrow();
  }

  v13 = a2;
  v12 = a1;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v120 = a8;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 20);
  v21 = *(a1 + 22);
  sub_1B0436204(a1);
  if (v10)
  {
    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 20) = v20;
    *(v12 + 22) = v21;
    return swift_willThrow();
  }

  v24 = sub_1B0DB3AC0(v12, v13, v11, v121, v122, v123, v124);
  v26 = v25;
  v28 = v27;
  v29 = v24;

  v30 = ByteBufferAllocator.buffer(string:)(0x786F626C69616DuLL, 0xE700000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v119 = v26;
  LOBYTE(v26) = sub_1B0C2DB54(v30, v32, v31 & 0xFFFFFFFFFFFFFFLL, v29, v26, v28 & 0xFFFFFFFFFFFFFFLL);

  if (v26)
  {
    sub_1B0436204(v12);
    v33 = sub_1B0DB3AC0(v12, v13, v11, v121, v122, v123, v124);
    v35 = v34;
    v37 = HIDWORD(v36);
    v38 = v36;
    swift_beginAccess();
    v39 = v37 - v38;
    if (v39)
    {
      v60 = v33[3];
      v61 = ((v35 >> 24) & 0xFFFF00 | BYTE6(v35)) + v38;
      v62 = sub_1B0C0C9F0(v39, 0);
      memcpy(v62 + 32, (v60 + v61), v39);
      v40 = v62;
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    v63 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v40);
    v65 = v64;

    v66 = *(v12 + 16);
    v67 = *(v12 + 20);
    v68 = *(v12 + 22);
    v125[0] = *v12;
    v125[1] = *(v12 + 8);
    v126 = v66;
    v127 = v67;
    v128 = v68;

    sub_1B0448078(v125, v13, v11);

    *v120 = v63;
    *(v120 + 8) = v65;
    *(v120 + 16) = 0;
    *(v120 + 24) = 0;
    goto LABEL_35;
  }

  v41 = ByteBufferAllocator.buffer(string:)(0x737265762D737061uLL, 0xEB000000006E6F69, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v44 = sub_1B0C2DB54(v41, v43, v42 & 0xFFFFFFFFFFFFFFLL, v29, v119, v28 & 0xFFFFFFFFFFFFFFLL);

  if (!v44)
  {
    sub_1B0E46298();

    v129 = 0xD000000000000029;
    v130 = 0x80000001B0F2FA70;
    v45 = ByteBuffer.description.getter(v29, v119, v28 & 0xFFFFFFFFFFFFFFLL);
    MEMORY[0x1B2726E80](v45);

    sub_1B0436554();
    swift_allocError();
    *v46 = 0xD000000000000029;
    v46[1] = 0x80000001B0F2FA70;
    v46[2] = 0xD000000000000020;
    v46[3] = 0x80000001B0F2FA10;
    v46[4] = 75;
    swift_willThrow();
  }

  sub_1B0436204(v12);
  v15 = 0xD000000000000020;
  v14 = 0x80000001B0F2FA10;
  v118 = sub_1B0DB3AC0(v12, v13, v11, v121, v122, v123, v124);
  sub_1B0DFF2E8(v118, v48, v47 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 58);
  v9 = 0;
  v16 = v49;
  a8 = HIBYTE(v49) & 0xF;
  v50 = a1 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v51 = a8;
  }

  else
  {
    v51 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {

LABEL_94:
    sub_1B0436554();
    swift_allocError();
    *v113 = 0x1000000000000019;
    v113[1] = 0x80000001B0F2FAA0;
    v113[2] = v15;
    v113[3] = v14;
    v113[4] = 60;
    goto LABEL_95;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    LOBYTE(v125[0]) = 0;
    v117 = sub_1B0B6CEA8(a1, v16, 10);
    v88 = v114;
    goto LABEL_84;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v52 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v52 = sub_1B0E46368();
  }

  v53 = *v52;
  if (v53 != 43)
  {
    if (v53 != 45)
    {
      v8 = 0;
      if (v50)
      {
        if (v52)
        {
          while (1)
          {
            v81 = *v52 - 48;
            if (v81 > 9)
            {
              break;
            }

            v82 = (v8 * 10) >> 64;
            v83 = 10 * v8;
            if (v82 != v83 >> 63)
            {
              break;
            }

            v59 = __OFADD__(v83, v81);
            v8 = v83 + v81;
            if (v59)
            {
              break;
            }

            ++v52;
            if (!--v50)
            {
              LOBYTE(a8) = 0;
              v15 = 0xD000000000000020;
              v117 = v8;
              goto LABEL_83;
            }
          }

          LOBYTE(a8) = 1;
          v15 = 0xD000000000000020;
          v117 = 0;
        }

        else
        {
          LOBYTE(a8) = 0;
          v117 = 0;
        }

        goto LABEL_83;
      }

      goto LABEL_102;
    }

    if (v50 >= 1)
    {
      a8 = v50 - 1;
      if (v50 != 1)
      {
        v54 = 0;
        if (v52)
        {
          v55 = v52 + 1;
          while (1)
          {
            v56 = *v55 - 48;
            if (v56 > 9)
            {
              break;
            }

            v57 = (v54 * 10) >> 64;
            v58 = 10 * v54;
            if (v57 != v58 >> 63)
            {
              break;
            }

            v59 = __OFSUB__(v58, v56);
            v54 = v58 - v56;
            if (v59)
            {
              break;
            }

            ++v55;
            if (!--a8)
            {
              goto LABEL_57;
            }
          }

LABEL_56:
          v54 = 0;
          LOBYTE(a8) = 1;
LABEL_57:
          v15 = 0xD000000000000020;
          goto LABEL_82;
        }

LABEL_81:
        LOBYTE(a8) = 0;
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v50 < 1)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    LOBYTE(a8) = 1;
    v117 = v8;
    goto LABEL_83;
  }

  a8 = v50 - 1;
  if (v50 != 1)
  {
    v54 = 0;
    if (v52)
    {
      v73 = v52 + 1;
      while (1)
      {
        v74 = *v73 - 48;
        if (v74 > 9)
        {
          goto LABEL_56;
        }

        v75 = (v54 * 10) >> 64;
        v76 = 10 * v54;
        if (v75 != v76 >> 63)
        {
          goto LABEL_56;
        }

        v59 = __OFADD__(v76, v74);
        v54 = v76 + v74;
        if (v59)
        {
          goto LABEL_56;
        }

        ++v73;
        if (!--a8)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_80:
  v54 = 0;
  LOBYTE(a8) = 1;
LABEL_82:
  v117 = v54;
LABEL_83:
  LOBYTE(v125[0]) = a8;
  v88 = a8;
LABEL_84:

  if ((v88 & 1) != 0 || (v117 & 0x8000000000000000) != 0)
  {
    goto LABEL_94;
  }

  v116 = v14;
  v89 = *v12;
  v90 = *(v12 + 8);
  v91 = *(v12 + 16);
  v92 = *(v12 + 20);
  v93 = *(v12 + 22);
  sub_1B0436204(v12);
  if (v9)
  {
    *v12 = v89;
    *(v12 + 8) = v90;
    *(v12 + 16) = v91;
    *(v12 + 20) = v92;
    *(v12 + 22) = v93;
LABEL_95:
    swift_willThrow();
  }

  v94 = sub_1B0DB3AC0(v12, v13, v11, v121, v122, v123, v124);
  v96 = v95;
  v98 = v97;
  v99 = ByteBufferAllocator.buffer(string:)(0x69706F742D737061uLL, 0xE900000000000063, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v115 = v94;
  LOBYTE(v94) = sub_1B0C2DB54(v94, v96, v98 & 0xFFFFFFFFFFFFFFLL, v99, v101, v100 & 0xFFFFFFFFFFFFFFLL);

  if ((v94 & 1) == 0)
  {
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_1B0E46298();

    v129 = 0x1000000000000021;
    v130 = 0x80000001B0F2FAC0;
    v102 = ByteBuffer.description.getter(v115, v96, v98 & 0xFFFFFFFFFFFFFFLL);
    MEMORY[0x1B2726E80](v102);

    MEMORY[0x1B2726E80](10322146, 0xA300000000000000);
    v103 = v129;
    v104 = v130;
    sub_1B0436554();
    swift_allocError();
    *v105 = v103;
    v105[1] = v104;
    v105[2] = 0xD000000000000020;
    v105[3] = v116;
    v105[4] = 66;
    swift_willThrow();
  }

  sub_1B0436204(v12);
  v106 = sub_1B0DB3AC0(v12, v13, v11, v121, v122, v123, v124);
  sub_1B0DFF2E8(v106, v108, v107 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, v116, 71);
  v110 = v109;
  v112 = v111;

  *v120 = v117;
  *(v120 + 8) = v110;
  *(v120 + 16) = v112;
  *(v120 + 24) = 1;
LABEL_35:
  type metadata accessor for ResponsePayload(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0D3E7CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_1B0DFF4DC(v9, a2, a3);
    *a4 = v18;
    *(a4 + 8) = v19;
    *(a4 + 16) = v17 & 0xFFFFFFFFFFFFFFLL;
    *(a4 + 24) = 2;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t _s12NIOIMAPCore216ApplePushServiceO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    return !a8 && a2 == a6 && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(a1, a5) & 1) != 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1 && a1 == a5)
    {
      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }

    return 0;
  }

  if (a8 != 2)
  {
    return 0;
  }

  v10 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_1B0C2DB54(a1, a2, v10, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1B0D3E9C0()
{
  result = qword_1EB6E6FB0;
  if (!qword_1EB6E6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FB0);
  }

  return result;
}

unint64_t sub_1B0D3EA30()
{
  result = qword_1EB6DE630;
  if (!qword_1EB6DE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE630);
  }

  return result;
}

uint64_t sub_1B0D3EA84(__n128 a1)
{
  result = sub_1B0E44B98();
  static AttributeFlag.answered = result;
  *algn_1EB738408 = v2;
  return result;
}

NIOIMAPCore2::AttributeFlag __swiftcall AttributeFlag.init(_:)(Swift::String a1)
{
  v1 = sub_1B0E44B98();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.stringValue._object = v5;
  result.stringValue._countAndFlagsBits = v4;
  return result;
}

uint64_t *AttributeFlag.answered.unsafeMutableAddressor()
{
  if (qword_1EB6E6D80 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.answered;
}

uint64_t sub_1B0D3EB7C()
{
  result = sub_1B0E44B98();
  static AttributeFlag.flagged = result;
  *algn_1EB738418 = v1;
  return result;
}

uint64_t *AttributeFlag.flagged.unsafeMutableAddressor()
{
  if (qword_1EB6E6D88 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.flagged;
}

uint64_t sub_1B0D3EC30()
{
  result = sub_1B0E44B98();
  static AttributeFlag.deleted = result;
  *algn_1EB738428 = v1;
  return result;
}

uint64_t *AttributeFlag.deleted.unsafeMutableAddressor()
{
  if (qword_1EB6E6D90 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.deleted;
}

uint64_t sub_1B0D3ECE4()
{
  result = sub_1B0E44B98();
  static AttributeFlag.seen = result;
  *algn_1EB738438 = v1;
  return result;
}

uint64_t *AttributeFlag.seen.unsafeMutableAddressor()
{
  if (qword_1EB6E6D98 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.seen;
}

uint64_t sub_1B0D3ED90()
{
  result = sub_1B0E44B98();
  static AttributeFlag.draft = result;
  *algn_1EB738448 = v1;
  return result;
}

uint64_t *AttributeFlag.draft.unsafeMutableAddressor()
{
  if (qword_1EB6E6DA0 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.draft;
}

uint64_t sub_1B0D3EE40(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v4;
}

uint64_t static AttributeFlag.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t AttributeFlag.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D3EF18()
{
  result = qword_1EB6E6FC0;
  if (!qword_1EB6E6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FC0);
  }

  return result;
}

uint64_t AuthenticatedURL.verifier.getter()
{
  v1 = *(v0 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t AuthenticatedURL.verifier.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[14] = a4;
  return result;
}

__n128 AuthenticatedURL.init(authenticatedURL:verifier:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LOBYTE(v10) = *(a1 + 80);
  result = a1[2];
  v7 = a1[4];
  v8 = *a1;
  v9 = a1[1];
  *(a6 + 48) = a1[3];
  *(a6 + 64) = v7;
  *(a6 + 16) = v9;
  *(a6 + 32) = result;
  *a6 = v8;
  *(a6 + 80) = v10;
  *(a6 + 88) = a2;
  *(a6 + 96) = a3;
  *(a6 + 104) = a4;
  *(a6 + 112) = a5;
  return result;
}

BOOL static AuthenticatedURL.__derived_struct_equals(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  v4 = a1[3];
  v19[2] = a1[2];
  v19[3] = v4;
  v19[4] = a1[4];
  v20 = a1[5].i8[0];
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a2[3];
  v17[2] = a2[2];
  v17[3] = v6;
  v17[4] = a2[4];
  v18 = a2[5].i8[0];
  v7 = a2[1];
  v17[0] = *a2;
  v17[1] = v7;
  result = (_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v17) & 1) != 0 && ((v8 = a1[5].i64[1], v9 = a1[6].i64[0], v10 = a1[6].i64[1], v11 = a1[7].i64[0], v12 = a2[5].i64[1], v13 = a2[6].i64[0], v15 = a2[6].i64[1], v14 = a2[7].i64[0], v8 == v12) && v9 == v13 || (sub_1B0E46A78() & 1) != 0) && (v10 == v15 && v11 == v14 || (sub_1B0E46A78() & 1) != 0);
  return result;
}

uint64_t AuthenticatedURL.hash(into:)(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = *(v1 + 80);
  if ((*(v1 + 57) & 1) == 0)
  {
    v16 = v1[8];
    v17 = v1[9];
    v6 = v1[5];
    v15 = v1[6];
    v7 = *(v1 + 56);
    v9 = v1[3];
    v8 = v1[4];
    v11 = v1[1];
    v10 = v1[2];
    v12 = *v1;
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v12);
    MEMORY[0x1B2728D70](v11);
    MEMORY[0x1B2728D70](v10);
    MEMORY[0x1B2728D70](v9);
    MEMORY[0x1B2728D70](v8);
    MEMORY[0x1B2728D70](v6);
    sub_1B0E46C68();
    if ((v7 & 1) == 0)
    {
      MEMORY[0x1B2728D70](v15);
    }

    v3 = v16;
    v2 = v17;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  sub_1B0E46C68();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 != 1)
  {
    if (v3 | v2)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    MEMORY[0x1B2728D70](v13);
    goto LABEL_15;
  }

  v5 = 1;
LABEL_12:
  MEMORY[0x1B2728D70](v5);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_15:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t AuthenticatedURL.hashValue.getter()
{
  sub_1B0E46C28();
  AuthenticatedURL.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F3EC()
{
  sub_1B0E46C28();
  AuthenticatedURL.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F430(uint64_t a1)
{
  sub_1B0E46C28();
  AuthenticatedURL.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D3F46C(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v17[2] = a1[2];
  v17[3] = v2;
  v17[4] = a1[4];
  v18 = a1[5].i8[0];
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[5].i64[1];
  v5 = a1[6].i64[0];
  v6 = a1[6].i64[1];
  v7 = a1[7].i64[0];
  v8 = a2[1];
  v19[0] = *a2;
  v19[1] = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v20 = a2[5].i8[0];
  v19[3] = v10;
  v19[4] = v11;
  v19[2] = v9;
  v12 = a2[5].i64[1];
  v13 = a2[6].i64[0];
  v14 = a2[6].i64[1];
  v15 = a2[7].i64[0];
  return (_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v17, v19) & 1) != 0 && (v4 == v12 && v5 == v13 || (sub_1B0E46A78() & 1) != 0) && (v6 == v14 && v7 == v15 || (sub_1B0E46A78() & 1) != 0);
}

unint64_t sub_1B0D3F578()
{
  result = qword_1EB6E6FC8;
  if (!qword_1EB6E6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FC8);
  }

  return result;
}

uint64_t sub_1B0D3F5CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1B0D3F614(uint64_t result, int a2, int a3)
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
      *(result + 96) = (a2 - 1);
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

__n128 AuthenticatedURLRump.expire.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 AuthenticatedURLRump.expire.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t AuthenticatedURLRump.access.getter()
{
  v1 = *(v0 + 64);
  sub_1B0D3FB38(v1, *(v0 + 72), *(v0 + 80));
  return v1;
}

uint64_t AuthenticatedURLRump.access.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1B0BD1294(*(v3 + 64), *(v3 + 72), *(v3 + 80));
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

__n128 AuthenticatedURLRump.init(expire:access:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  result = *(a1 + 32);
  *(a5 + 32) = result;
  *(a5 + 48) = v5;
  *(a5 + 56) = v6;
  *(a5 + 64) = a2;
  *(a5 + 72) = a3;
  *(a5 + 80) = a4;
  return result;
}

uint64_t AuthenticatedURLRump.hash(into:)(uint64_t a1)
{
  if (*(v1 + 57) & 1) != 0 || (v3 = v1[5], v2 = v1[6], v4 = *(v1 + 56), v6 = v1[3], v5 = v1[4], v8 = v1[1], v7 = v1[2], v9 = *v1, sub_1B0E46C68(), MEMORY[0x1B2728D70](v9), MEMORY[0x1B2728D70](v8), MEMORY[0x1B2728D70](v7), MEMORY[0x1B2728D70](v6), MEMORY[0x1B2728D70](v5), MEMORY[0x1B2728D70](v3), (v4))
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v2);
  }

  if (!*(v1 + 80))
  {
    v10 = 0;
    goto LABEL_9;
  }

  if (*(v1 + 80) == 1)
  {
    v10 = 1;
LABEL_9:
    MEMORY[0x1B2728D70](v10);

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  if (*(v1 + 4) == 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  return MEMORY[0x1B2728D70](v12);
}

uint64_t AuthenticatedURLRump.hashValue.getter()
{
  sub_1B0E46C28();
  AuthenticatedURLRump.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F920()
{
  sub_1B0E46C28();
  AuthenticatedURLRump.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F964(uint64_t a1)
{
  sub_1B0E46C28();
  AuthenticatedURLRump.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3F9A0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v7[4] = a1[4];
  v8 = a1[5].i8[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v9[4] = a2[4];
  v10 = a2[5].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t _s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  v3 = a2[3].i8[9];
  if (a1[3].i8[9])
  {
LABEL_2:
    if ((v3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (a2[3].i8[9])
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1])
  {
    v3 = a2[3].i8[8];
    if (a1[3].i8[8])
    {
      goto LABEL_2;
    }

    result = 0;
    if ((a2[3].i8[8] & 1) == 0 && a1[3].i64[0] == a2[3].i64[0])
    {
LABEL_3:
      v4 = a1[4].i64[0];
      v5 = a1[4].i64[1];
      v6 = a1[5].u8[0];
      v7 = a2[4].i64[0];
      v8 = a2[4].i64[1];
      v9 = a2[5].u8[0];
      if (v6)
      {
        if (v6 != 1)
        {
          if (v4 | v5)
          {
            if (v9 != 2 || v7 != 1 || v8)
            {
              return 0;
            }
          }

          else if (v9 != 2 || v8 | v7)
          {
            return 0;
          }

          return 1;
        }

        if (v9 == 1)
        {
LABEL_16:
          if (v4 == v7 && v5 == v8 || (sub_1B0E46A78() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a2[5].i8[0])
      {
        goto LABEL_16;
      }

      return 0;
    }
  }

  return result;
}

double sub_1B0D3FB38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0D3FB54()
{
  result = qword_1EB6E6FD0;
  if (!qword_1EB6E6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FD0);
  }

  return result;
}

uint64_t sub_1B0D3FBA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D3FBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t static AuthenticatedURLVerifier.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1B0E46A78(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1B0E46A78();
    }
  }

  return result;
}

uint64_t AuthenticatedURLVerifier.urlAuthenticationMechanism.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticatedURLVerifier.encodedAuthenticationURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AuthenticatedURLVerifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t AuthenticatedURLVerifier.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3FEE0()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D3FF48(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0D3FF98(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D40000()
{
  result = qword_1EB6E6FD8;
  if (!qword_1EB6E6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FD8);
  }

  return result;
}

NIOIMAPCore2::AuthenticationMechanism __swiftcall AuthenticationMechanism.init(_:)(Swift::String a1)
{
  v1 = sub_1B0E44BB8();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.rawValue._object = v5;
  result.rawValue._countAndFlagsBits = v4;
  return result;
}

uint64_t static AuthenticationMechanism.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t AuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D4021C()
{
  result = qword_1EB6E6FE0;
  if (!qword_1EB6E6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FE0);
  }

  return result;
}

uint64_t String.init<A>(base64Encoding:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Base64.encodeString<A>(bytes:options:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

unint64_t sub_1B0D40354()
{
  result = qword_1EB6E6FE8;
  if (!qword_1EB6E6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FE8);
  }

  return result;
}

unint64_t sub_1B0D403AC()
{
  result = qword_1EB6E6FF0;
  if (!qword_1EB6E6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FF0);
  }

  return result;
}

unint64_t sub_1B0D40404()
{
  result = qword_1EB6E6FF8;
  if (!qword_1EB6E6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FF8);
  }

  return result;
}

unint64_t sub_1B0D4045C()
{
  result = qword_1EB6E7000;
  if (!qword_1EB6E7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7000);
  }

  return result;
}

unint64_t sub_1B0D404B4()
{
  result = qword_1EB6E7008;
  if (!qword_1EB6E7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7008);
  }

  return result;
}

unint64_t sub_1B0D4050C()
{
  result = qword_1EB6E7010;
  if (!qword_1EB6E7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7010);
  }

  return result;
}

unint64_t sub_1B0D40564()
{
  result = qword_1EB6E7018;
  if (!qword_1EB6E7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7018);
  }

  return result;
}

unint64_t sub_1B0D405BC()
{
  result = qword_1EB6E7020;
  if (!qword_1EB6E7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7020);
  }

  return result;
}

uint64_t sub_1B0D40640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

BOOL static MessageAttribute.BodyStructure.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v94 = a1[8];
  v95 = v3;
  v96 = a1[10];
  v97 = *(a1 + 176);
  v4 = a1[5];
  v90 = a1[4];
  v91 = v4;
  v5 = a1[7];
  v92 = a1[6];
  v93 = v5;
  v6 = a1[1];
  v86 = *a1;
  v87 = v6;
  v7 = a1[3];
  v88 = a1[2];
  v89 = v7;
  if (sub_1B04FAE88(&v86) == 1)
  {
    v8 = a2[9];
    v118 = a2[8];
    v119 = v8;
    v120 = a2[10];
    v121 = *(a2 + 176);
    v9 = a2[5];
    v114 = a2[4];
    v115 = v9;
    v10 = a2[7];
    v116 = a2[6];
    v117 = v10;
    v11 = a2[1];
    v110 = *a2;
    v111 = v11;
    v12 = a2[3];
    v112 = a2[2];
    v113 = v12;
    return sub_1B04FAE88(&v110) == 1;
  }

  v106 = v94;
  v107 = v95;
  v108 = v96;
  v109 = v97;
  v102 = v90;
  v103 = v91;
  v104 = v92;
  v105 = v93;
  v98 = v86;
  v99 = v87;
  v100 = v88;
  v101 = v89;
  v14 = a2[9];
  v47 = a2[8];
  v48 = v14;
  v49 = a2[10];
  v50 = *(a2 + 176);
  v15 = a2[5];
  v43 = a2[4];
  v44 = v15;
  v16 = a2[7];
  v45 = a2[6];
  v46 = v16;
  v17 = a2[1];
  v39 = *a2;
  v40 = v17;
  v18 = a2[3];
  v41 = a2[2];
  v42 = v18;
  if (sub_1B04FAE88(&v39) == 1)
  {
    return 0;
  }

  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v55 = v43;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v118 = v106;
  v119 = v107;
  v120 = v108;
  v121 = v109;
  v114 = v102;
  v115 = v103;
  v116 = v104;
  v117 = v105;
  v110 = v98;
  v111 = v99;
  v112 = v100;
  v113 = v101;
  if (sub_1B0717014(&v110) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v28 = v27[9];
    v130 = v27[8];
    v131 = v28;
    v132 = v27[10];
    v29 = v27[5];
    v126 = v27[4];
    v127 = v29;
    v30 = v27[7];
    v128 = v27[6];
    v129 = v30;
    v31 = v27[1];
    v122 = *v27;
    v123 = v31;
    v32 = v27[3];
    v124 = v27[2];
    v125 = v32;
    v74 = v62;
    v72 = v60;
    v73 = v61;
    v70 = v58;
    v71 = v59;
    v68 = v56;
    v69 = v57;
    v66 = v54;
    v67 = v55;
    v64 = v52;
    v65 = v53;
    v63 = v51;
    if (sub_1B0717014(&v63) != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v34 = v33[9];
      v83 = v33[8];
      v84 = v34;
      v85 = v33[10];
      v35 = v33[5];
      v79 = v33[4];
      v80 = v35;
      v36 = v33[7];
      v81 = v33[6];
      v82 = v36;
      v37 = v33[1];
      v75 = *v33;
      v76 = v37;
      v38 = v33[3];
      v77 = v33[2];
      v78 = v38;
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v122, &v75);
    }

LABEL_10:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return 0;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v20 = v19[5];
  v126 = v19[4];
  v127 = v20;
  v128 = v19[6];
  *&v129 = *(v19 + 14);
  v21 = v19[1];
  v122 = *v19;
  v123 = v21;
  v22 = v19[3];
  v124 = v19[2];
  v125 = v22;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  if (sub_1B0717014(&v63) != 1)
  {
    goto LABEL_10;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v24 = v23[5];
  v79 = v23[4];
  v80 = v24;
  v81 = v23[6];
  *&v82 = *(v23 + 14);
  v25 = v23[1];
  v75 = *v23;
  v76 = v25;
  v26 = v23[3];
  v77 = v23[2];
  v78 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v122, &v75);
}

uint64_t MessageAttribute.BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v28 = v1[8];
  v29 = v3;
  v30 = v1[10];
  v31 = *(v1 + 176);
  v4 = v1[5];
  v24 = v1[4];
  v25 = v4;
  v5 = v1[7];
  v26 = v1[6];
  v27 = v5;
  v6 = v1[1];
  v20 = *v1;
  v21 = v6;
  v7 = v1[3];
  v22 = v1[2];
  v23 = v7;
  if (sub_1B04FAE88(&v20) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  MEMORY[0x1B2728D70](0);
  v44[8] = v40;
  v44[9] = v41;
  v44[10] = v42;
  v45 = v43;
  v44[4] = v36;
  v44[5] = v37;
  v44[6] = v38;
  v44[7] = v39;
  v44[0] = v32;
  v44[1] = v33;
  v44[2] = v34;
  v44[3] = v35;
  if (sub_1B0717014(v44) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v10 = *v9;
    v11 = *(v9 + 72);
    v48 = *(v9 + 56);
    v49 = v11;
    v12 = *(v9 + 104);
    v50 = *(v9 + 88);
    v51 = v12;
    v13 = *(v9 + 40);
    v46 = *(v9 + 24);
    v47 = v13;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, v10);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v15 = *v14;
    v16 = *(v14 + 24);
    v17 = *(v14 + 56);
    v54 = *(v14 + 40);
    v55 = v17;
    v56 = *(v14 + 72);
    v52 = *(v14 + 8);
    v53 = v16;
    v18 = *(v14 + 136);
    v48 = *(v14 + 120);
    v49 = v18;
    v50 = *(v14 + 152);
    *&v51 = *(v14 + 168);
    v19 = *(v14 + 104);
    v46 = *(v14 + 88);
    v47 = v19;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v15);
    BodyStructure.Fields.hash(into:)(a1);
    return sub_1B0D4A1BC(a1);
  }
}

uint64_t MessageAttribute.BodyStructure.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = v0[9];
  v27 = v0[8];
  v28 = v1;
  v29 = v0[10];
  v30 = *(v0 + 176);
  v2 = v0[5];
  v23 = v0[4];
  v24 = v2;
  v3 = v0[7];
  v25 = v0[6];
  v26 = v3;
  v4 = v0[1];
  v19 = *v0;
  v20 = v4;
  v5 = v0[3];
  v21 = v0[2];
  v22 = v5;
  if (sub_1B04FAE88(&v19) == 1)
  {
    MEMORY[0x1B2728D70](1);
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
    MEMORY[0x1B2728D70](0);
    v43[8] = v39;
    v43[9] = v40;
    v43[10] = v41;
    v44 = v42;
    v43[4] = v35;
    v43[5] = v36;
    v43[6] = v37;
    v43[7] = v38;
    v43[0] = v31;
    v43[1] = v32;
    v43[2] = v33;
    v43[3] = v34;
    if (sub_1B0717014(v43) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v7 = *v6;
      v8 = *(v6 + 72);
      v47 = *(v6 + 56);
      v48 = v8;
      v9 = *(v6 + 104);
      v49 = *(v6 + 88);
      v50 = v9;
      v10 = *(v6 + 40);
      v45 = *(v6 + 24);
      v46 = v10;
      MEMORY[0x1B2728D70](1);
      sub_1B0D48CF0(v18, v7);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0D49DD8(v18);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v12 = *v11;
      v13 = *(v11 + 24);
      v14 = *(v11 + 56);
      v53 = *(v11 + 40);
      v54 = v14;
      v55 = *(v11 + 72);
      v51 = *(v11 + 8);
      v52 = v13;
      v15 = *(v11 + 136);
      v47 = *(v11 + 120);
      v48 = v15;
      v49 = *(v11 + 152);
      *&v50 = *(v11 + 168);
      v16 = *(v11 + 104);
      v45 = *(v11 + 88);
      v46 = v16;
      MEMORY[0x1B2728D70](0);
      BodyStructure.Singlepart.Kind.hash(into:)(v18, v12);
      BodyStructure.Fields.hash(into:)(v18);
      sub_1B0D4A1BC(v18);
    }
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D40E9C(uint64_t a1)
{
  v3 = v1[9];
  v41 = v1[8];
  v42 = v3;
  v43 = v1[10];
  v44 = *(v1 + 176);
  v4 = v1[5];
  v37 = v1[4];
  v38 = v4;
  v5 = v1[7];
  v39 = v1[6];
  v40 = v5;
  v6 = v1[1];
  v33 = *v1;
  v34 = v6;
  v7 = v1[3];
  v35 = v1[2];
  v36 = v7;
  if (sub_1B04FAE88(&v33) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](0);
  v20[8] = v41;
  v20[9] = v42;
  v20[10] = v43;
  v21 = v44;
  v20[4] = v37;
  v20[5] = v38;
  v20[6] = v39;
  v20[7] = v40;
  v20[0] = v33;
  v20[1] = v34;
  v20[2] = v35;
  v20[3] = v36;
  if (sub_1B0717014(v20) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v10 = v9;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, *v10);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v11 = *(v10 + 72);
    v29 = *(v10 + 56);
    v30 = v11;
    v12 = *(v10 + 104);
    v31 = *(v10 + 88);
    v32 = v12;
    v13 = *(v10 + 40);
    v27 = *(v10 + 24);
    v28 = v13;
    return sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v15 = v14;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v15);
    v16 = *(v15 + 24);
    v17 = *(v15 + 56);
    v24 = *(v15 + 40);
    v25 = v17;
    v26 = *(v15 + 72);
    v22 = *(v15 + 8);
    v23 = v16;
    BodyStructure.Fields.hash(into:)(a1);
    v18 = *(v15 + 136);
    v29 = *(v15 + 120);
    v30 = v18;
    v31 = *(v15 + 152);
    *&v32 = *(v15 + 168);
    v19 = *(v15 + 104);
    v27 = *(v15 + 88);
    v28 = v19;
    return sub_1B0D4A1BC(a1);
  }
}

uint64_t sub_1B0D41060(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = v1[9];
  v41 = v1[8];
  v42 = v2;
  v43 = v1[10];
  v44 = *(v1 + 176);
  v3 = v1[5];
  v37 = v1[4];
  v38 = v3;
  v4 = v1[7];
  v39 = v1[6];
  v40 = v4;
  v5 = v1[1];
  v33 = *v1;
  v34 = v5;
  v6 = v1[3];
  v35 = v1[2];
  v36 = v6;
  if (sub_1B04FAE88(&v33) == 1)
  {
    MEMORY[0x1B2728D70](1);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    v19[8] = v41;
    v19[9] = v42;
    v19[10] = v43;
    v20 = v44;
    v19[4] = v37;
    v19[5] = v38;
    v19[6] = v39;
    v19[7] = v40;
    v19[0] = v33;
    v19[1] = v34;
    v19[2] = v35;
    v19[3] = v36;
    if (sub_1B0717014(v19) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v8 = v7;
      MEMORY[0x1B2728D70](1);
      sub_1B0D48CF0(v21, *v8);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v9 = *(v8 + 72);
      v29 = *(v8 + 56);
      v30 = v9;
      v10 = *(v8 + 104);
      v31 = *(v8 + 88);
      v32 = v10;
      v11 = *(v8 + 40);
      v27 = *(v8 + 24);
      v28 = v11;
      sub_1B0D49DD8(v21);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v13 = v12;
      MEMORY[0x1B2728D70](0);
      BodyStructure.Singlepart.Kind.hash(into:)(v21, *v13);
      v14 = *(v13 + 24);
      v15 = *(v13 + 56);
      v24 = *(v13 + 40);
      v25 = v15;
      v26 = *(v13 + 72);
      v22 = *(v13 + 8);
      v23 = v14;
      BodyStructure.Fields.hash(into:)(v21);
      v16 = *(v13 + 136);
      v29 = *(v13 + 120);
      v30 = v16;
      v31 = *(v13 + 152);
      *&v32 = *(v13 + 168);
      v17 = *(v13 + 104);
      v27 = *(v13 + 88);
      v28 = v17;
      sub_1B0D4A1BC(v21);
    }
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0D4122C(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v95 = a1[8];
  v96 = v3;
  v97 = a1[10];
  v98 = *(a1 + 176);
  v4 = a1[5];
  v91 = a1[4];
  v92 = v4;
  v5 = a1[7];
  v93 = a1[6];
  v94 = v5;
  v6 = a1[1];
  v87 = *a1;
  v88 = v6;
  v7 = a1[3];
  v89 = a1[2];
  v90 = v7;
  if (sub_1B04FAE88(&v87) == 1)
  {
    v8 = a2[9];
    v61 = a2[8];
    v62 = v8;
    v63 = a2[10];
    v64 = *(a2 + 176);
    v9 = a2[5];
    v57 = a2[4];
    v58 = v9;
    v10 = a2[7];
    v59 = a2[6];
    v60 = v10;
    v11 = a2[1];
    v53 = *a2;
    v54 = v11;
    v12 = a2[3];
    v55 = a2[2];
    v56 = v12;
    return sub_1B04FAE88(&v53) == 1;
  }

  v14 = a2[9];
  v61 = a2[8];
  v62 = v14;
  v63 = a2[10];
  v64 = *(a2 + 176);
  v15 = a2[5];
  v57 = a2[4];
  v58 = v15;
  v16 = a2[7];
  v59 = a2[6];
  v60 = v16;
  v17 = a2[1];
  v53 = *a2;
  v54 = v17;
  v18 = a2[3];
  v55 = a2[2];
  v56 = v18;
  if (sub_1B04FAE88(&v53) == 1)
  {
    return 0;
  }

  v51[8] = v95;
  v51[9] = v96;
  v51[10] = v97;
  v52 = v98;
  v51[4] = v91;
  v51[5] = v92;
  v51[6] = v93;
  v51[7] = v94;
  v51[0] = v87;
  v51[1] = v88;
  v51[2] = v89;
  v51[3] = v90;
  if (sub_1B0717014(v51) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v28 = v27[9];
    v73 = v27[8];
    v74 = v28;
    v75 = v27[10];
    v29 = v27[5];
    v69 = v27[4];
    v70 = v29;
    v30 = v27[7];
    v71 = v27[6];
    v72 = v30;
    v31 = v27[1];
    v65 = *v27;
    v66 = v31;
    v32 = v27[3];
    v67 = v27[2];
    v68 = v32;
    v50 = v64;
    v48 = v62;
    v49 = v63;
    v46 = v60;
    v47 = v61;
    v44 = v58;
    v45 = v59;
    v42 = v56;
    v43 = v57;
    v40 = v54;
    v41 = v55;
    v39 = v53;
    if (sub_1B0717014(&v39) != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v34 = v33[9];
      v84 = v33[8];
      v85 = v34;
      v86 = v33[10];
      v35 = v33[5];
      v80 = v33[4];
      v81 = v35;
      v36 = v33[7];
      v82 = v33[6];
      v83 = v36;
      v37 = v33[1];
      v76 = *v33;
      v77 = v37;
      v38 = v33[3];
      v78 = v33[2];
      v79 = v38;
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v65, &v76);
    }

LABEL_10:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return 0;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v20 = v19[5];
  v69 = v19[4];
  v70 = v20;
  v71 = v19[6];
  *&v72 = *(v19 + 14);
  v21 = v19[1];
  v65 = *v19;
  v66 = v21;
  v22 = v19[3];
  v67 = v19[2];
  v68 = v22;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v42 = v56;
  if (sub_1B0717014(&v39) != 1)
  {
    goto LABEL_10;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v24 = v23[5];
  v80 = v23[4];
  v81 = v24;
  v82 = v23[6];
  *&v83 = *(v23 + 14);
  v25 = v23[1];
  v76 = *v23;
  v77 = v25;
  v26 = v23[3];
  v78 = v23[2];
  v79 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v65, &v76);
}

uint64_t BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v20[8] = *(v1 + 128);
  v20[9] = v3;
  v20[10] = *(v1 + 160);
  v21 = *(v1 + 176);
  v4 = *(v1 + 80);
  v20[4] = *(v1 + 64);
  v20[5] = v4;
  v5 = *(v1 + 112);
  v20[6] = *(v1 + 96);
  v20[7] = v5;
  v6 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v6;
  v7 = *(v1 + 48);
  v20[2] = *(v1 + 32);
  v20[3] = v7;
  if (sub_1B0717014(v20) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v9 = *v8;
    v10 = *(v8 + 72);
    v24 = *(v8 + 56);
    v25 = v10;
    v11 = *(v8 + 104);
    v26 = *(v8 + 88);
    v27 = v11;
    v12 = *(v8 + 40);
    v22 = *(v8 + 24);
    v23 = v12;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, v9);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v15 = *v14;
    v16 = *(v14 + 24);
    v17 = *(v14 + 56);
    v30 = *(v14 + 40);
    v31 = v17;
    v32 = *(v14 + 72);
    v28 = *(v14 + 8);
    v29 = v16;
    v18 = *(v14 + 136);
    v24 = *(v14 + 120);
    v25 = v18;
    v26 = *(v14 + 152);
    *&v27 = *(v14 + 168);
    v19 = *(v14 + 104);
    v22 = *(v14 + 88);
    v23 = v19;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v15);
    BodyStructure.Fields.hash(into:)(a1);
    return sub_1B0D4A1BC(a1);
  }
}

uint64_t BodyStructure.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 144);
  v19[8] = *(v0 + 128);
  v19[9] = v1;
  v19[10] = *(v0 + 160);
  v20 = *(v0 + 176);
  v2 = *(v0 + 80);
  v19[4] = *(v0 + 64);
  v19[5] = v2;
  v3 = *(v0 + 112);
  v19[6] = *(v0 + 96);
  v19[7] = v3;
  v4 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v4;
  v5 = *(v0 + 48);
  v19[2] = *(v0 + 32);
  v19[3] = v5;
  if (sub_1B0717014(v19) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v7 = *v6;
    v8 = *(v6 + 72);
    v23 = *(v6 + 56);
    v24 = v8;
    v9 = *(v6 + 104);
    v25 = *(v6 + 88);
    v26 = v9;
    v10 = *(v6 + 40);
    v21 = *(v6 + 24);
    v22 = v10;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(v18, v7);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D49DD8(v18);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v12 = *v11;
    v13 = *(v11 + 24);
    v14 = *(v11 + 56);
    v29 = *(v11 + 40);
    v30 = v14;
    v31 = *(v11 + 72);
    v27 = *(v11 + 8);
    v28 = v13;
    v15 = *(v11 + 136);
    v23 = *(v11 + 120);
    v24 = v15;
    v25 = *(v11 + 152);
    *&v26 = *(v11 + 168);
    v16 = *(v11 + 104);
    v21 = *(v11 + 88);
    v22 = v16;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(v18, v12);
    BodyStructure.Fields.hash(into:)(v18);
    sub_1B0D4A1BC(v18);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D41814()
{
  sub_1B0E46C28();
  v1 = *(v0 + 144);
  v30[8] = *(v0 + 128);
  v30[9] = v1;
  v30[10] = *(v0 + 160);
  v31 = *(v0 + 176);
  v2 = *(v0 + 80);
  v30[4] = *(v0 + 64);
  v30[5] = v2;
  v3 = *(v0 + 112);
  v30[6] = *(v0 + 96);
  v30[7] = v3;
  v4 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v4;
  v5 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v5;
  if (sub_1B0717014(v30) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v7 = v6;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(v18, *v7);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v8 = *(v7 + 72);
    v26 = *(v7 + 56);
    v27 = v8;
    v9 = *(v7 + 104);
    v28 = *(v7 + 88);
    v29 = v9;
    v10 = *(v7 + 40);
    v24 = *(v7 + 24);
    v25 = v10;
    sub_1B0D49DD8(v18);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v12 = v11;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(v18, *v12);
    v13 = *(v12 + 24);
    v14 = *(v12 + 56);
    v21 = *(v12 + 40);
    v22 = v14;
    v23 = *(v12 + 72);
    v19 = *(v12 + 8);
    v20 = v13;
    BodyStructure.Fields.hash(into:)(v18);
    v15 = *(v12 + 136);
    v26 = *(v12 + 120);
    v27 = v15;
    v28 = *(v12 + 152);
    *&v29 = *(v12 + 168);
    v16 = *(v12 + 104);
    v24 = *(v12 + 88);
    v25 = v16;
    sub_1B0D4A1BC(v18);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D41988(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v13[10] = *(v1 + 160);
  v14 = *(v1 + 176);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  if (sub_1B0717014(v13) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v9 = v8;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, *v9);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v12 = v11;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v12);
    BodyStructure.Fields.hash(into:)(a1);
    return sub_1B0D4A1BC(a1);
  }
}

uint64_t sub_1B0D41AE8(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(v1 + 144);
  v31[8] = *(v1 + 128);
  v31[9] = v2;
  v31[10] = *(v1 + 160);
  v32 = *(v1 + 176);
  v3 = *(v1 + 80);
  v31[4] = *(v1 + 64);
  v31[5] = v3;
  v4 = *(v1 + 112);
  v31[6] = *(v1 + 96);
  v31[7] = v4;
  v5 = *(v1 + 16);
  v31[0] = *v1;
  v31[1] = v5;
  v6 = *(v1 + 48);
  v31[2] = *(v1 + 32);
  v31[3] = v6;
  if (sub_1B0717014(v31) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v8 = v7;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(v19, *v8);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v9 = *(v8 + 72);
    v27 = *(v8 + 56);
    v28 = v9;
    v10 = *(v8 + 104);
    v29 = *(v8 + 88);
    v30 = v10;
    v11 = *(v8 + 40);
    v25 = *(v8 + 24);
    v26 = v11;
    sub_1B0D49DD8(v19);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v13 = v12;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(v19, *v13);
    v14 = *(v13 + 24);
    v15 = *(v13 + 56);
    v22 = *(v13 + 40);
    v23 = v15;
    v24 = *(v13 + 72);
    v20 = *(v13 + 8);
    v21 = v14;
    BodyStructure.Fields.hash(into:)(v19);
    v16 = *(v13 + 136);
    v27 = *(v13 + 120);
    v28 = v16;
    v29 = *(v13 + 152);
    *&v30 = *(v13 + 168);
    v17 = *(v13 + 104);
    v25 = *(v13 + 88);
    v26 = v17;
    sub_1B0D4A1BC(v19);
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0D41C58(uint64_t a1, uint64_t a2)
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
  return _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v15);
}

uint64_t BodyStructure.subpartCount.getter()
{
  v1 = *(v0 + 144);
  v20[8] = *(v0 + 128);
  v20[9] = v1;
  v20[10] = *(v0 + 160);
  v21 = *(v0 + 176);
  v2 = *(v0 + 80);
  v20[4] = *(v0 + 64);
  v20[5] = v2;
  v3 = *(v0 + 112);
  v20[6] = *(v0 + 96);
  v20[7] = v3;
  v4 = *(v0 + 16);
  v20[0] = *v0;
  v20[1] = v4;
  v5 = *(v0 + 48);
  v20[2] = *(v0 + 32);
  v20[3] = v5;
  if (sub_1B0717014(v20) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return *(*v6 + 16);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v9 = *v8;
    if (*v8 >> 62 == 1)
    {
      v10 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      memcpy(__dst, ((v9 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v11 = *(v10 + 296);
      v12 = *(v10 + 312);
      v13 = *(v10 + 264);
      v30 = *(v10 + 280);
      v31 = v11;
      v32 = v12;
      v33 = *(v10 + 328);
      v14 = *(v10 + 232);
      v26 = *(v10 + 216);
      v27 = v14;
      v28 = *(v10 + 248);
      v29 = v13;
      v15 = *(v10 + 168);
      v22 = *(v10 + 152);
      v23 = v15;
      v16 = *(v10 + 200);
      v24 = *(v10 + 184);
      v25 = v16;
      sub_1B0C6700C(__dst, &v18);
      v17 = BodyStructure.subpartCount.getter();
      sub_1B0C67068(__dst);
      return v17;
    }

    else
    {
      return 0;
    }
  }
}