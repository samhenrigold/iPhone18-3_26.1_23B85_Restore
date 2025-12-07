uint64_t sub_10039ED48(uint64_t a1, uint64_t a2)
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

    sub_1003A336C(0, v8, v9, 0);
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
  sub_1003A336C(0, v8, v9, 0);
  sub_1003A336C(v6, v10, v11, 0);
  v8 = v18;
  v9 = v19;
  v7 = 0;
LABEL_28:
  sub_1003A336C(v7, v8, v9, 0);

  return 0;
}

uint64_t sub_10039EF50(uint64_t a1, uint64_t a2)
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
        sub_1003A3310(&v68, v67);
        sub_1003A3310(&v71, v67);
      }

      else
      {
        swift_beginAccess();
        v23 = *(v10 + 24);
        v24 = (v14 | (v13 << 8)) + v11;
        v25 = v12 - v11;
        swift_beginAccess();
        v26 = *(v20 + 24);
        sub_1003A3310(&v68, v67);
        sub_1003A3310(&v71, v67);
        if (memcmp((v23 + v24), (v26 + (v22 | (v21 << 8)) + v19), v25))
        {
          goto LABEL_50;
        }
      }

      if (*&v69[16])
      {
        if (!*&v72[16] || *&v69[8] != *&v72[8] && (sub_1004A6D34() & 1) == 0)
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
      result = sub_1003A0868(v70, v73.n128_i64[0]);
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
        sub_1002EED64(&v71);
        sub_1002EED64(&v68);
        return 0;
      }

LABEL_47:
      sub_1002EED64(&v71);
      sub_1002EED64(&v68);
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

uint64_t sub_10039F304(uint64_t a1, uint64_t a2)
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

        v6 = sub_1004A5834();
        v8 = v7;
        if (v6 == sub_1004A5834() && v8 == v9)
        {
        }

        else
        {
          v11 = sub_1004A6D34();

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

uint64_t sub_10039F410(uint64_t a1, uint64_t a2)
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
        v18 = sub_1004A6D34();
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

uint64_t sub_10039F5E8(uint64_t a1, uint64_t a2)
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
      sub_1003A3100(&v40, v39);
      sub_1003A3100(&v42, v39);
    }

    else
    {
      swift_beginAccess();
      v20 = *(v9 + 24);
      swift_beginAccess();
      v21 = *(v17 + 24);
      sub_1003A3100(&v40, v39);
      sub_1003A3100(&v42, v39);
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
      sub_1003A315C(&v42);
      sub_1003A315C(&v40);
      goto LABEL_23;
    }

    if (!*&v43[8] || (v24 = *&v43[16], v25 = HIDWORD(*&v41[16]), *&v41[20] - *&v41[16] != *&v43[20] - *&v43[16]))
    {
LABEL_27:
      sub_1003A315C(&v42);
      sub_1003A315C(&v40);
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
    sub_1003A315C(&v42);
    sub_1003A315C(&v40);
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

uint64_t sub_10039F8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
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
        v14 = sub_1004A6D34();

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
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (v2[2])
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v7 = v2[1];
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v7);
  }

  v8 = v2[4];
  v9 = v2[5];

  return sub_1003A28F4(a1, v8, v9);
}

Swift::Int AppendOptions.hashValue.getter()
{
  sub_1004A6E94();
  AppendOptions.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10039FAF4(uint64_t a1)
{
  sub_1004A6E94();
  AppendOptions.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_10039FB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if ((sub_10039F8D8(*a1, *a2, &String.uppercased()) & 1) == 0)
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

  return (sub_10020FB40(v5, v9) & 1) != 0 && (sub_1003A0B30(v4, v8) & 1) != 0;
}

void sub_10039FBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v69 - v6;
  v76 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  __chkstk_darwin(v76);
  v77 = &v69 - v8;
  v9 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v9 - 8);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v69 - v12;
  v83 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  __chkstk_darwin(v83);
  v14 = &v69 - v13;
  v88 = type metadata accessor for ParameterValue(0);
  v15 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v82 = &v69 - v18;
  __chkstk_darwin(v19);
  v86 = &v69 - v20;
  v21 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21 - 8);
  v87 = &v69 - v23;
  v89 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  __chkstk_darwin(v89);
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
      sub_10000E268(v85 + v30 * v27, v25, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v84 + v30 * v27, &v25[v33], &qword_1005D7F50, &unk_100502FF0);
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
        sub_10000E268(v36, v87, &qword_1005D7F50, &unk_100502FF0);
        if (v34((v36 + v33), 1, v37) == 1)
        {
          sub_1003A35FC(v38, type metadata accessor for ParameterValue);
          v25 = v36;
LABEL_35:
          v65 = &qword_1005DBC70;
          v66 = &unk_100505A20;
          goto LABEL_44;
        }

        v39 = v86;
        sub_1003A352C(v36 + v33, v86, type metadata accessor for ParameterValue);
        v40 = *(v83 + 48);
        sub_1003A3594(v38, v14, type metadata accessor for ParameterValue);
        sub_1003A3594(v39, &v14[v40], type metadata accessor for ParameterValue);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v41 = v78;
          sub_1003A3594(v14, v78, type metadata accessor for ParameterValue);
          v42 = *v41;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v27 = v79;
          if (EnumCaseMultiPayload != 1)
          {

            sub_1003A35FC(v86, type metadata accessor for ParameterValue);
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
              if (!v48 && (sub_1004A6D34() & 1) == 0)
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
            sub_1003A35FC(v86, type metadata accessor for ParameterValue);

            sub_1003A35FC(v32, type metadata accessor for ParameterValue);
            v49 = v87;
LABEL_43:
            sub_1003A35FC(v49, type metadata accessor for ParameterValue);
            v65 = &qword_1005D7F50;
            v66 = &unk_100502FF0;
LABEL_44:
            sub_100025F40(v25, v65, v66);
            return;
          }

LABEL_27:
          sub_1003A35FC(v86, type metadata accessor for ParameterValue);

          v14 = v32;
        }

        else
        {
          v49 = v38;
          v50 = v82;
          sub_1003A3594(v14, v82, type metadata accessor for ParameterValue);
          v51 = swift_getEnumCaseMultiPayload();
          v27 = v79;
          v52 = v80;
          if (v51 == 1)
          {
            sub_1003A35FC(v86, type metadata accessor for ParameterValue);
            sub_100025F40(v50, &qword_1005CDA78, &unk_1004CF7E0);
LABEL_38:
            v25 = v74;
            sub_100025F40(v14, &qword_1005DBC68, &qword_1004FE598);
            goto LABEL_43;
          }

          sub_100025FDC(&v14[v40], v80, &qword_1005CDA78, &unk_1004CF7E0);
          v53 = v77;
          v54 = *(v76 + 48);
          sub_10000E268(v50, v77, &qword_1005CDA78, &unk_1004CF7E0);
          sub_10000E268(v52, v53 + v54, &qword_1005CDA78, &unk_1004CF7E0);
          v55 = v52;
          v56 = v71;
          v57 = *v70;
          v58 = (*v70)(v53, 1, v71);
          v25 = v74;
          if (v58 == 1)
          {
            sub_100025F40(v55, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v86, type metadata accessor for ParameterValue);
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
            sub_10000E268(v53, v75, &qword_1005CDA78, &unk_1004CF7E0);
            if (v57(v53 + v54, 1, v56) == 1)
            {
              sub_100025F40(v80, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v86, type metadata accessor for ParameterValue);
              sub_100025F40(v61, &qword_1005CDA68, &qword_1004CF7D0);
              v60 = v82;
LABEL_40:
              v67 = &qword_1005DBC60;
              v68 = &qword_1004FE590;
              goto LABEL_42;
            }

            v62 = v69;
            sub_100025FDC(v53 + v54, v69, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100016D2C();
            v63 = sub_1004A7034();
            sub_100025F40(v62, &qword_1005CDA68, &qword_1004CF7D0);
            sub_100025F40(v80, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003A35FC(v86, type metadata accessor for ParameterValue);
            sub_100025F40(v61, &qword_1005CDA68, &qword_1004CF7D0);
            v60 = v82;
            if ((v63 & 1) == 0)
            {
              v67 = &qword_1005CDA78;
              v68 = &unk_1004CF7E0;
LABEL_42:
              sub_100025F40(v53, v67, v68);
              v49 = v87;
              sub_100025F40(v60, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003A35FC(v14, type metadata accessor for ParameterValue);
              goto LABEL_43;
            }
          }

          sub_100025F40(v53, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v60, &qword_1005CDA78, &unk_1004CF7E0);
        }

        v64 = v87;
        sub_1003A35FC(v14, type metadata accessor for ParameterValue);
        sub_1003A35FC(v64, type metadata accessor for ParameterValue);
        v30 = v72;
        v29 = v73;
      }

      ++v27;
      sub_100025F40(v25, &qword_1005D7F50, &unk_100502FF0);
      v26 = v81;
      if (v27 == v81)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003A06A0(uint64_t result, uint64_t a2)
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

uint64_t sub_1003A0868(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A09B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A0B30(uint64_t a1, uint64_t a2)
{
  v62 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v5 = &v51 - v4;
  v6 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v9 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v65 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  __chkstk_darwin(v65);
  v16 = &v51 - v15;
  v64 = type metadata accessor for ParameterValue(0);
  __chkstk_darwin(v64);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  __chkstk_darwin(v20);
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
    result = sub_1003A3594(v61 + v60 * v26, v24, type metadata accessor for ParameterValue);
    if (v26 == v28)
    {
      __break(1u);
      return result;
    }

    v32 = *(v65 + 48);
    sub_1003A3594(v24, v16, type metadata accessor for ParameterValue);
    sub_1003A3594(v59 + v30, &v16[v32], type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003A3594(v16, v19, type metadata accessor for ParameterValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = v29;
      v41 = v62;
      v42 = v56;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1003A35FC(v66, type metadata accessor for ParameterValue);
        sub_100025F40(v19, &qword_1005CDA78, &unk_1004CF7E0);
        goto LABEL_32;
      }

      sub_100025FDC(&v16[v32], v14, &qword_1005CDA78, &unk_1004CF7E0);
      v43 = *(v55 + 48);
      sub_10000E268(v19, v8, &qword_1005CDA78, &unk_1004CF7E0);
      sub_10000E268(v14, &v8[v43], &qword_1005CDA78, &unk_1004CF7E0);
      v44 = *v42;
      if ((*v42)(v8, 1, v41) == 1)
      {
        sub_100025F40(v14, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v66, type metadata accessor for ParameterValue);
        if (v44(&v8[v43], 1, v41) != 1)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      v45 = v53;
      sub_10000E268(v8, v53, &qword_1005CDA78, &unk_1004CF7E0);
      if (v44(&v8[v43], 1, v41) == 1)
      {
        sub_100025F40(v14, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v66, type metadata accessor for ParameterValue);
        sub_100025F40(v45, &qword_1005CDA68, &qword_1004CF7D0);
        v19 = v58;
LABEL_34:
        v49 = &qword_1005DBC60;
        v50 = &qword_1004FE590;
      }

      else
      {
        v46 = v52;
        sub_100025FDC(&v8[v43], v52, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100016D2C();
        v47 = sub_1004A7034();
        sub_100025F40(v46, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100025F40(v14, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v66, type metadata accessor for ParameterValue);
        sub_100025F40(v45, &qword_1005CDA68, &qword_1004CF7D0);
        v19 = v58;
        if (v47)
        {
LABEL_27:
          sub_100025F40(v8, &qword_1005CDA78, &unk_1004CF7E0);
          sub_100025F40(v19, &qword_1005CDA78, &unk_1004CF7E0);
          goto LABEL_6;
        }

        v49 = &qword_1005CDA78;
        v50 = &unk_1004CF7E0;
      }

      sub_100025F40(v8, v49, v50);
      sub_100025F40(v19, &qword_1005CDA78, &unk_1004CF7E0);
      v48 = v16;
      goto LABEL_37;
    }

    v33 = v57;
    sub_1003A3594(v16, v57, type metadata accessor for ParameterValue);
    v34 = *v33;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003A35FC(v66, type metadata accessor for ParameterValue);

LABEL_32:
      sub_100025F40(v16, &qword_1005DBC68, &qword_1004FE598);
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
    sub_1003A35FC(v66, type metadata accessor for ParameterValue);

    v16 = v54;
    v19 = v58;
    v14 = v29;
LABEL_6:
    ++v26;
    sub_1003A35FC(v16, type metadata accessor for ParameterValue);
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
    if (!v39 && (sub_1004A6D34() & 1) == 0)
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
  sub_1003A35FC(v66, type metadata accessor for ParameterValue);

  v48 = v54;
LABEL_37:
  sub_1003A35FC(v48, type metadata accessor for ParameterValue);
  return 0;
}

uint64_t sub_1003A1364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v7 = 0;
    v8 = a3 + 40;
    v9 = a2 + 40;
    while (v7 < *(a2 + 16))
    {
      ++v7;

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

uint64_t sub_1003A1460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  sub_1004A6EB4(v4);

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
      sub_1004A6EA4();
      if (v9)
      {
        sub_1004A6EC4(1u);
        swift_beginAccess();
        sub_1004A6EA4();
      }

      else
      {
        sub_1004A6EC4(0);
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

uint64_t sub_1003A15DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  sub_1004A6EB4(v4);

  if (!v4)
  {
  }

  v6 = 0;
  v11 = a3 + 32;
  while (v6 < *(a2 + 16))
  {
    v7 = *(a2 + 32 + 24 * v6);
    v8 = *(v11 + 8 * v6);

    if (v7)
    {
      swift_beginAccess();
      sub_1004A6EA4();
      sub_1004A6EB4(*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8 + 54;
        do
        {
          v10 += 24;
          swift_beginAccess();
          sub_1004A6EA4();
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

uint64_t sub_1003A1770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v7 = 0;
    v8 = a3 + 40;
    v9 = a2 + 40;
    while (v7 < *(a2 + 16))
    {
      ++v7;
      swift_bridgeObjectRetain_n();

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

uint64_t sub_1003A1878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v56 - v6;
  v7 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v7 - 8);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for ParameterValue(0);
  v72 = *(v12 - 8);
  __chkstk_darwin(v12);
  v61 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v71 = &v56 - v15;
  v16 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v66 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v70 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = &v56 - v19;
  v65 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  __chkstk_darwin(v65);
  v64 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v63 = (&v56 - v22);
  v23 = sub_10000C9C0(&qword_1005DBC98, &qword_1004FE5B8);
  __chkstk_darwin(v23 - 8);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v28 = &v56 - v27;
  v73 = *(a3 + 16);
  sub_1004A6EB4(v73);
  v67 = a2;
  v68 = a3;
  v62 = a2 + 32;
  v69 = (v72 + 48);
  v57 = (v5 + 48);

  v30 = 0;
  v60 = v11;
  v72 = v12;
  while (1)
  {
    if (v30 >= v73)
    {
      v43 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
      (*(*(v43 - 8) + 56))(v25, 1, 1, v43);
      goto LABEL_9;
    }

    if (v30 < 0)
    {
      break;
    }

    if (v30 >= *(v67 + 16))
    {
      goto LABEL_23;
    }

    v32 = v65;
    v31 = v66;
    v33 = *(v65 + 48);
    v34 = v63;
    v35 = (v62 + 16 * v30);
    v36 = v35[1];
    *v63 = *v35;
    *(v34 + 8) = v36;
    sub_10000E268(v68 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30++, v34 + v33, &qword_1005D7F50, &unk_100502FF0);
    v37 = v64;
    sub_100025FDC(v34, v64, &qword_1005D8488, &unk_100503000);
    v38 = *(v32 + 48);
    v39 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
    v40 = *(v39 + 48);
    v41 = v37[1];
    *v25 = *v37;
    v25[1] = v41;
    v42 = v37 + v38;
    v12 = v72;
    sub_100025FDC(v42, v25 + v40, &qword_1005D7F50, &unk_100502FF0);
    (*(*(v39 - 8) + 56))(v25, 0, 1, v39);

LABEL_9:
    sub_100025FDC(v25, v28, &qword_1005DBC98, &qword_1004FE5B8);
    v44 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
    if ((*(*(v44 - 8) + 48))(v28, 1, v44) == 1)
    {
    }

    v45 = v74;
    sub_100025FDC(&v28[*(v44 + 48)], v74, &qword_1005D7F50, &unk_100502FF0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v46 = v70;
    sub_10000E268(v45, v70, &qword_1005D7F50, &unk_100502FF0);
    if ((*v69)(v46, 1, v12) == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      v47 = v71;
      sub_1003A352C(v46, v71, type metadata accessor for ParameterValue);
      sub_1004A6EC4(1u);
      v48 = v61;
      sub_1003A3594(v47, v61, type metadata accessor for ParameterValue);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = *v48;
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v49 + 16));
        v50 = *(v49 + 16);
        if (v50)
        {
          v51 = v49 + 40;
          do
          {

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            v51 += 16;
            --v50;
          }

          while (v50);
        }
      }

      else
      {
        v52 = v60;
        sub_100025FDC(v48, v60, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1004A6EB4(0);
        v53 = v58;
        sub_10000E268(v52, v58, &qword_1005CDA78, &unk_1004CF7E0);
        if ((*v57)(v53, 1, v59) == 1)
        {
          sub_1004A6EB4(1uLL);

          v54 = v52;
        }

        else
        {
          v55 = v56;
          sub_100025FDC(v53, v56, &qword_1005CDA68, &qword_1004CF7D0);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();

          sub_100025F40(v55, &qword_1005CDA68, &qword_1004CF7D0);
          v54 = v60;
        }

        sub_100025F40(v54, &qword_1005CDA78, &unk_1004CF7E0);
      }

      sub_1003A35FC(v71, type metadata accessor for ParameterValue);
      v12 = v72;
    }

    result = sub_100025F40(v74, &qword_1005D7F50, &unk_100502FF0);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1003A2110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v54 - v6;
  v7 = &qword_1005CDA78;
  v8 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v8 - 8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v54 - v11;
  v68 = type metadata accessor for ParameterValue(0);
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v71 = &v54 - v14;
  v63 = sub_10000C9C0(&qword_1005DBC48, &qword_1004FE578);
  __chkstk_darwin(v63);
  v62 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v61 = (&v54 - v17);
  v18 = sub_10000C9C0(&qword_1005DBC50, &qword_1004FE580);
  __chkstk_darwin(v18 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v69 = *(a3 + 16);
  sub_1004A6EB4(v69);
  v65 = a2;
  v66 = a3;
  v60 = a2 + 32;
  v56 = (v5 + 48);

  v25 = 0;
  while (1)
  {
    if (v25 >= v69)
    {
      v42 = sub_10000C9C0(&qword_1005DBC58, &qword_1004FE588);
      (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
      goto LABEL_11;
    }

    if (v25 < 0)
    {
      break;
    }

    if (v25 >= *(v65 + 16))
    {
      goto LABEL_22;
    }

    v28 = v63;
    v29 = *(v63 + 48);
    v30 = v61;
    v31 = v60 + 24 * v25;
    v32 = *(v31 + 16);
    v33 = *(v31 + 20);
    v34 = *(v31 + 22);
    *v61 = *v31;
    *(v30 + 8) = *(v31 + 8);
    *(v30 + 16) = v32;
    *(v30 + 20) = v33;
    *(v30 + 22) = v34;
    sub_1003A3594(v66 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v25++, v30 + v29, type metadata accessor for ParameterValue);
    v35 = v62;
    sub_100025FDC(v30, v62, &qword_1005DBC48, &qword_1004FE578);
    v36 = *(v28 + 48);
    v37 = sub_10000C9C0(&qword_1005DBC58, &qword_1004FE588);
    v38 = *(v37 + 48);
    v39 = *(v35 + 16);
    v40 = *(v35 + 20);
    v41 = *(v35 + 22);
    *v20 = *v35;
    *(v20 + 1) = *(v35 + 8);
    *(v20 + 4) = v39;
    *(v20 + 10) = v40;
    v20[22] = v41;
    sub_1003A352C(v35 + v36, &v20[v38], type metadata accessor for ParameterValue);
    (*(*(v37 - 8) + 56))(v20, 0, 1, v37);

LABEL_11:
    sub_100025FDC(v20, v23, &qword_1005DBC50, &qword_1004FE580);
    v43 = sub_10000C9C0(&qword_1005DBC58, &qword_1004FE588);
    if ((*(*(v43 - 8) + 48))(v23, 1, v43) == 1)
    {
    }

    v70 = v25;
    v44 = v7;
    v45 = v71;
    sub_1003A352C(&v23[*(v43 + 48)], v71, type metadata accessor for ParameterValue);
    swift_beginAccess();
    sub_1004A6EA4();
    v46 = v67;
    sub_1003A3594(v45, v67, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v50 = v57;
      v7 = v44;
      sub_100025FDC(v46, v57, v44, &unk_1004CF7E0);
      sub_1004A6EB4(0);
      v51 = v58;
      sub_10000E268(v50, v58, v44, &unk_1004CF7E0);
      if ((*v56)(v51, 1, v59) == 1)
      {
        sub_1004A6EB4(1uLL);

        v26 = v50;
        v27 = v44;
      }

      else
      {
        v52 = v55;
        sub_100025FDC(v51, v55, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();

        v53 = v52;
        v7 = &qword_1005CDA78;
        sub_100025F40(v53, &qword_1005CDA68, &qword_1004CF7D0);
        v26 = v50;
        v27 = &qword_1005CDA78;
      }

      sub_100025F40(v26, v27, &unk_1004CF7E0);
      goto LABEL_4;
    }

    v47 = *v46;
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(*(v47 + 16));
    v48 = *(v47 + 16);
    if (!v48)
    {

      v7 = &qword_1005CDA78;
LABEL_4:
      v25 = v70;
      goto LABEL_5;
    }

    v49 = v47 + 40;
    do
    {

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v49 += 16;
      --v48;
    }

    while (v48);

    v7 = &qword_1005CDA78;
    v25 = v70;
LABEL_5:
    result = sub_1003A35FC(v71, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1003A28F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v59 - v6;
  v7 = &qword_1005CDA78;
  v8 = &unk_1004CF7E0;
  v9 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v9 - 8);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v59 - v12;
  v71 = type metadata accessor for ParameterValue(0);
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v76 = &v59 - v15;
  v66 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  __chkstk_darwin(v66);
  v65 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v64 = (&v59 - v18);
  v19 = &qword_1005DBCF8;
  v20 = sub_10000C9C0(&qword_1005DBCF8, &unk_1004FE610);
  __chkstk_darwin(v20 - 8);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v24 = *(a3 + 16);
  v72 = &v59 - v25;
  v73 = v24;
  sub_1004A6EB4(v24);
  v68 = a2;
  v69 = a3;
  v63 = a2 + 32;
  v60 = (v5 + 48);

  for (i = 0; ; i = v75)
  {
    if (i >= v73)
    {
      v75 = i;
      v46 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
      (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
      v28 = v74;
      goto LABEL_10;
    }

    v28 = v74;
    if (i < 0)
    {
      break;
    }

    if (i >= *(v68 + 16))
    {
      goto LABEL_21;
    }

    v30 = v66;
    v29 = v67;
    v31 = *(v66 + 48);
    v32 = (v63 + 16 * i);
    v33 = i;
    v34 = v32[1];
    v35 = v19;
    v36 = v64;
    *v64 = *v32;
    v36[1] = v34;
    sub_1003A3594(v69 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * i, v36 + v31, type metadata accessor for ParameterValue);
    v75 = v33 + 1;
    v37 = v36;
    v38 = v7;
    v39 = v8;
    v40 = v65;
    sub_100025FDC(v37, v65, &qword_1005D8480, &qword_1004F4968);
    v41 = *(v30 + 48);
    v42 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
    v43 = *(v42 + 48);
    v44 = v40[1];
    *v22 = *v40;
    v22[1] = v44;
    v45 = v40 + v41;
    v8 = v39;
    v7 = v38;
    v19 = v35;
    sub_1003A352C(v45, v22 + v43, type metadata accessor for ParameterValue);
    (*(*(v42 - 8) + 56))(v22, 0, 1, v42);

LABEL_10:
    v47 = v72;
    sub_100025FDC(v22, v72, v19, &unk_1004FE610);
    v48 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {
    }

    v49 = v47 + *(v48 + 48);
    v50 = v76;
    sub_1003A352C(v49, v76, type metadata accessor for ParameterValue);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v51 = v50;
    v52 = v70;
    sub_1003A3594(v51, v70, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = *v52;
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4(*(v53 + 16));
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = v53 + 40;
        do
        {

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v55 += 16;
          --v54;
        }

        while (v54);

        v7 = &qword_1005CDA78;
        v8 = &unk_1004CF7E0;
      }

      else
      {
      }
    }

    else
    {
      sub_100025FDC(v52, v28, v7, v8);
      sub_1004A6EB4(0);
      v56 = v61;
      sub_10000E268(v28, v61, v7, v8);
      if ((*v60)(v56, 1, v62) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v57 = v59;
        sub_100025FDC(v56, v59, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();

        v58 = v57;
        v8 = &unk_1004CF7E0;
        v7 = &qword_1005CDA78;
        sub_100025F40(v58, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_100025F40(v28, v7, v8);
    }

    result = sub_1003A35FC(v76, type metadata accessor for ParameterValue);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1003A3084()
{
  result = qword_1005DBC40;
  if (!qword_1005DBC40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppendOptions, &type metadata for AppendOptions, v0, v1);
    atomic_store(result, &qword_1005DBC40);
  }

  return result;
}

void sub_1003A30E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1003A30F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1003A336C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_1003A3378(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    sub_1003A30E8(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

uint64_t sub_1003A3390(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1003A30F4(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_1003A352C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A3594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A35FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ApplePushService.hash(into:)(uint64_t a1, Swift::UInt a2, unint64_t a3, unint64_t a4, char a5)
{
  v5 = a3;
  if (a5)
  {
    if (a5 == 1)
    {
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4(a2);

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(2uLL);
      swift_beginAccess();
      sub_1004A6EA4();
    }
  }

  else
  {
    sub_1004A6EB4(0);
    sub_1004A6EB4(v5 | (v5 << 32));
  }
}

Swift::Int ApplePushService.hashValue.getter(Swift::UInt a1, unint64_t a2, unint64_t a3, char a4)
{
  sub_1004A6E94();
  ApplePushService.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1004A6F14();
}

Swift::Int sub_1003A3864()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  ApplePushService.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_1003A38D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1004A6E94();
  ApplePushService.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1004A6F14();
}

void sub_1003A395C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_35;
    }

    v9 = *(v4 + 20);
    v10 = sub_1002F178C(0xD000000000000012, 0x80000001004B04A0, v4 + 8, v9);
    if (v11)
    {
      v12._object = 0x80000001004B04A0;
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
    sub_100441B60(0x737265762D737061uLL, 0xEB000000006E6F69);
    v18 = v13 + v17;
    if (__OFADD__(v13, v17))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v19 = *(v4 + 20);
    v20 = sub_1002F178C(0x20uLL, 0xE100000000000000, v4 + 8, v19);
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
    v26 = sub_1004A6CE4();
    sub_100441B60(v26, v27);
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
    v33 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, v32);
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

    sub_100441B60(0x69706F742D737061uLL, 0xE900000000000063);
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
    v41 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, a1);
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

    sub_100441B60(a2, a3);
    if (!__OFADD__(v46, v47))
    {
      return;
    }

    __break(1u);
  }

  v48 = *(v5 + 20);
  v49 = sub_1002F178C(0xD000000000000012, 0x80000001004B04A0, v5 + 8, v48);
  if (v50)
  {
    v51._object = 0x80000001004B04A0;
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
  sub_100441B60(0x786F626C69616DuLL, 0xE700000000000000);
  a2 = v52 + v55;
  if (__OFADD__(v52, v55))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a3 = *(v5 + 20);
  v56 = sub_1002F178C(0x20uLL, 0xE100000000000000, v5 + 8, a3);
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

  sub_100441F24(a1);
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

  v64 = sub_1002F178C(0xD000000000000012, 0x80000001004B04A0, v5 + 8, v63);
  if (v65)
  {
    v66._object = 0x80000001004B04A0;
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
  sub_100208C4C(a1, a2, a3, 2u);
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

uint64_t sub_1003A3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
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
    v60 = v18;
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = v9;
LABEL_44:
      swift_willThrow();
      goto LABEL_45;
    }

    v14 = 0x80000001004AC290;
    v44 = v17;
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
        v41 = a8;
        v42 = v13;
        v36 = a4;
        v37 = a6;
        v38 = a5;
        v39 = a7;
        v40 = v10;
        v23 = v18;
        swift_beginAccess();
        LOWORD(v43) = v15;
        v13 = (v23 | (v15 << 8)) + v16;
        swift_retain_n();
        v24 = sub_1004A58D4();
        if (!__CFADD__(v16, v17))
        {
          v13 = v24;
          v15 = v25;
          v35 = v16 + v17;
          *(v8 + 8) = v16 + v17;
          if (v24 == 0xD000000000000011 && v14 == v25 || (sub_1004A6D34() & 1) != 0)
          {
LABEL_19:
            LODWORD(v17) = v44;

            sub_1003A4404(v8, v12, v9, v36, v38, v37, v39, v41);
            if (v40)
            {

              *v8 = v11;
              *(v8 + 8) = v35;
              *(v8 + 12) = v42;
              *(v8 + 16) = v44;
              LOWORD(v15) = v43;
              *(v8 + 20) = v43;
              *(v8 + 22) = v60;
              swift_willThrow();
              swift_errorRetain();
              sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
              if (swift_dynamicCast())
              {
              }

              else
              {

                swift_errorRetain();
                if ((swift_dynamicCast() & 1) == 0)
                {

                  LODWORD(v13) = v42;
LABEL_45:
                  *v8 = v11;
                  *(v8 + 8) = v16;
                  *(v8 + 12) = v13;
                  *(v8 + 16) = v17;
                  *(v8 + 20) = v15;
                  *(v8 + 22) = v60;
                  return swift_willThrow();
                }
              }

              sub_1003A4FC4(v8, v12, v9, v41);
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
            if (sub_10046A3D8(0xD000000000000011, v14, v13, v15))
            {
              v40 = v10;
              goto LABEL_19;
            }

LABEL_42:
            sub_1004A6724(42);

            v45 = 0xD000000000000037;
            v46 = 0x80000001004B0380;
            v62._countAndFlagsBits = v13;
            v62._object = v15;
            sub_1004A5994(v62);

            sub_1003A527C();
            swift_allocError();
            *v34 = 0xD000000000000037;
            v34[1] = 0x80000001004B0380;
            v34[2] = 0xD000000000000020;
            v34[3] = 0x80000001004B03C0;
            v34[4] = 280;
            LODWORD(v13) = v42;
            LOWORD(v15) = v43;
            LODWORD(v17) = v44;
LABEL_43:
            swift_willThrow();

            goto LABEL_44;
          }

LABEL_41:
          v10 = v40;
          if (v17 != sub_1004A59E4())
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
        LOWORD(v43) = v13 - v16;
        v17 = v44;
        if (v44 - (v18 | (v15 << 8)) >= v13)
        {
          v52 = v11;
          v53 = v16;
          v54 = v13;
          v55 = v44;
          v56 = v15;
          v57 = v18;
          v58 = v16;
          v59 = v13;
          v21 = v18;
          swift_retain_n();
          v22 = sub_10046A0DC(&v52, 0xD000000000000011, v14);
          sub_1003A52D0(&v52);
          if (v22)
          {
            sub_1003A5324();
            swift_allocError();
          }

          else
          {
            sub_1004A6724(23);

            v45 = v11;
            v46 = __PAIR64__(v13, v16);
            v47 = v44;
            v48 = v15;
            v49 = v21;
            v50 = v16;
            v51 = v13;
            swift_beginAccess();

            v26 = sub_1004A58D4();
            v27 = v13;
            v13 = v28;
            sub_1003A52D0(&v45);
            v61._countAndFlagsBits = v26;
            v61._object = v13;
            sub_1004A5994(v61);

            sub_1003A527C();
            swift_allocError();
            *v29 = 0xD000000000000024;
            v29[1] = 0x80000001004B03F0;
            v29[2] = 0xD000000000000020;
            v29[3] = 0x80000001004B03C0;
            LODWORD(v13) = v27;
            LODWORD(v17) = v44;
            v29[4] = 264;
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
    v41 = a8;
    v42 = v13;
    v38 = a5;
    v39 = a7;
    v43 = v15;
    v31 = a6;
    v32 = a4;
    v33 = sub_1004A59E4();
    v18 = v60;
    a4 = v32;
    a5 = v38;
    a7 = v39;
    a6 = v31;
    v15 = v43;
    a8 = v41;
    v17 = v33;
    if (v33 < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1003A5228();
  swift_allocError();
  *v19 = v9;
  return swift_willThrow();
}

uint64_t sub_1003A4404@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_37:
    v127 = a1;
    v128 = v16 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (a8)
      {
        if (--a8)
        {
          v53 = 0;
          v76 = &v127 + 1;
          while (1)
          {
            v77 = *v76 - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = (v53 * 10) >> 64;
            v79 = 10 * v53;
            if (v78 != v79 >> 63)
            {
              break;
            }

            v58 = __OFADD__(v79, v77);
            v53 = v79 + v77;
            if (v58)
            {
              break;
            }

            ++v76;
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
        v53 = 0;
        v83 = &v127;
        while (1)
        {
          v84 = *v83 - 48;
          if (v84 > 9)
          {
            break;
          }

          v85 = (v53 * 10) >> 64;
          v86 = 10 * v53;
          if (v85 != v86 >> 63)
          {
            break;
          }

          v58 = __OFADD__(v86, v84);
          v53 = v86 + v84;
          if (v58)
          {
            break;
          }

          v83 = (v83 + 1);
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
        v53 = 0;
        v68 = &v127 + 1;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          v70 = (v53 * 10) >> 64;
          v71 = 10 * v53;
          if (v70 != v71 >> 63)
          {
            break;
          }

          v58 = __OFSUB__(v71, v69);
          v53 = v71 - v69;
          if (v58)
          {
            break;
          }

          ++v68;
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
    sub_1003A5228();
    swift_allocError();
    *v22 = v11;
    return swift_willThrow();
  }

  v13 = a2;
  v12 = a1;
  v119 = a4;
  v120 = a5;
  v121 = a6;
  v122 = a7;
  v118 = a8;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 20);
  v21 = *(a1 + 22);
  sub_100469DF8(a1);
  if (v10)
  {
    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 20) = v20;
    *(v12 + 22) = v21;
    return swift_willThrow();
  }

  v24 = sub_10041ED48(v12, v13, v11, v119, v120, v121, v122);
  v26 = v25;
  v28 = v27;
  v29 = v24;

  v30 = ByteBufferAllocator.buffer(string:)(0x786F626C69616DuLL, 0xE700000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v117 = v26;
  LOBYTE(v26) = sub_10020FBD0(v30, v32, v31 & 0xFFFFFFFFFFFFFFLL, v29, v26, v28 & 0xFFFFFFFFFFFFFFLL);

  if (v26)
  {
    sub_100469DF8(v12);
    v33 = sub_10041ED48(v12, v13, v11, v119, v120, v121, v122);
    v35 = v34;
    v37 = HIDWORD(v36);
    v38 = v36;
    swift_beginAccess();
    v39 = v37 - v38;
    if (v39)
    {
      v59 = v33[3];
      v60 = ((v35 >> 24) & 0xFFFF00 | BYTE6(v35)) + v38;
      v61 = sub_10015BEAC(v39, 0);
      memcpy(v61 + 32, (v59 + v60), v39);
      v40 = v61;
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

    v62 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v40);
    v64 = v63;

    v65 = *(v12 + 16);
    v66 = *(v12 + 20);
    v67 = *(v12 + 22);
    v123[0] = *v12;
    v123[1] = *(v12 + 8);
    v124 = v65;
    v125 = v66;
    v126 = v67;

    sub_100464188(v123, v13, v11);

    *v118 = v62;
    *(v118 + 8) = v64;
    *(v118 + 16) = 0;
    *(v118 + 24) = 0;
    goto LABEL_35;
  }

  v41 = ByteBufferAllocator.buffer(string:)(0x737265762D737061uLL, 0xEB000000006E6F69, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v44 = sub_10020FBD0(v41, v43, v42 & 0xFFFFFFFFFFFFFFLL, v29, v117, v28 & 0xFFFFFFFFFFFFFFLL);

  if (!v44)
  {
    sub_1004A6724(43);

    v127 = 0xD000000000000029;
    v128 = 0x80000001004B0420;
    v129._countAndFlagsBits = ByteBuffer.description.getter(v29, v117, v28 & 0xFFFFFFFFFFFFFFLL);
    sub_1004A5994(v129);

    sub_1003A527C();
    swift_allocError();
    *v45 = 0xD000000000000029;
    v45[1] = 0x80000001004B0420;
    v45[2] = 0xD000000000000020;
    v45[3] = 0x80000001004B03C0;
    v45[4] = 75;
    swift_willThrow();
  }

  sub_100469DF8(v12);
  v15 = 0xD000000000000020;
  v14 = 0x80000001004B03C0;
  v116 = sub_10041ED48(v12, v13, v11, v119, v120, v121, v122);
  sub_10046C184(v116, v47, v46 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 58);
  v9 = 0;
  v16 = v48;
  a8 = HIBYTE(v48) & 0xF;
  v49 = a1 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v50 = a8;
  }

  else
  {
    v50 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

LABEL_94:
    sub_1003A527C();
    swift_allocError();
    *v111 = 0x1000000000000019;
    v111[1] = 0x80000001004B0450;
    v111[2] = v15;
    v111[3] = v14;
    v111[4] = 60;
    goto LABEL_95;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    LOBYTE(v123[0]) = 0;
    v115 = sub_10010C28C(a1, v16, 10);
    v87 = v112;
    goto LABEL_84;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v51 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v51 = sub_1004A67E4();
  }

  v52 = *v51;
  if (v52 != 43)
  {
    if (v52 != 45)
    {
      v8 = 0;
      if (v49)
      {
        if (v51)
        {
          while (1)
          {
            v80 = *v51 - 48;
            if (v80 > 9)
            {
              break;
            }

            v81 = (v8 * 10) >> 64;
            v82 = 10 * v8;
            if (v81 != v82 >> 63)
            {
              break;
            }

            v58 = __OFADD__(v82, v80);
            v8 = v82 + v80;
            if (v58)
            {
              break;
            }

            ++v51;
            if (!--v49)
            {
              LOBYTE(a8) = 0;
              v15 = 0xD000000000000020;
              v115 = v8;
              goto LABEL_83;
            }
          }

          LOBYTE(a8) = 1;
          v15 = 0xD000000000000020;
          v115 = 0;
        }

        else
        {
          LOBYTE(a8) = 0;
          v115 = 0;
        }

        goto LABEL_83;
      }

      goto LABEL_102;
    }

    if (v49 >= 1)
    {
      a8 = v49 - 1;
      if (v49 != 1)
      {
        v53 = 0;
        if (v51)
        {
          v54 = v51 + 1;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = (v53 * 10) >> 64;
            v57 = 10 * v53;
            if (v56 != v57 >> 63)
            {
              break;
            }

            v58 = __OFSUB__(v57, v55);
            v53 = v57 - v55;
            if (v58)
            {
              break;
            }

            ++v54;
            if (!--a8)
            {
              goto LABEL_57;
            }
          }

LABEL_56:
          v53 = 0;
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

  if (v49 < 1)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    LOBYTE(a8) = 1;
    v115 = v8;
    goto LABEL_83;
  }

  a8 = v49 - 1;
  if (v49 != 1)
  {
    v53 = 0;
    if (v51)
    {
      v72 = v51 + 1;
      while (1)
      {
        v73 = *v72 - 48;
        if (v73 > 9)
        {
          goto LABEL_56;
        }

        v74 = (v53 * 10) >> 64;
        v75 = 10 * v53;
        if (v74 != v75 >> 63)
        {
          goto LABEL_56;
        }

        v58 = __OFADD__(v75, v73);
        v53 = v75 + v73;
        if (v58)
        {
          goto LABEL_56;
        }

        ++v72;
        if (!--a8)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_80:
  v53 = 0;
  LOBYTE(a8) = 1;
LABEL_82:
  v115 = v53;
LABEL_83:
  LOBYTE(v123[0]) = a8;
  v87 = a8;
LABEL_84:

  if ((v87 & 1) != 0 || (v115 & 0x8000000000000000) != 0)
  {
    goto LABEL_94;
  }

  v114 = v14;
  v88 = *v12;
  v89 = *(v12 + 8);
  v90 = *(v12 + 16);
  v91 = *(v12 + 20);
  v92 = *(v12 + 22);
  sub_100469DF8(v12);
  if (v9)
  {
    *v12 = v88;
    *(v12 + 8) = v89;
    *(v12 + 16) = v90;
    *(v12 + 20) = v91;
    *(v12 + 22) = v92;
LABEL_95:
    swift_willThrow();
  }

  v93 = sub_10041ED48(v12, v13, v11, v119, v120, v121, v122);
  v95 = v94;
  v97 = v96;
  v98 = ByteBufferAllocator.buffer(string:)(0x69706F742D737061uLL, 0xE900000000000063, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v113 = v93;
  LOBYTE(v93) = sub_10020FBD0(v93, v95, v97 & 0xFFFFFFFFFFFFFFLL, v98, v100, v99 & 0xFFFFFFFFFFFFFFLL);

  if ((v93 & 1) == 0)
  {
    v127 = 0;
    v128 = 0xE000000000000000;
    sub_1004A6724(38);

    v127 = 0x1000000000000021;
    v128 = 0x80000001004B0470;
    v130._countAndFlagsBits = ByteBuffer.description.getter(v113, v95, v97 & 0xFFFFFFFFFFFFFFLL);
    sub_1004A5994(v130);

    v131._countAndFlagsBits = 10322146;
    v131._object = 0xA300000000000000;
    sub_1004A5994(v131);
    v101 = v127;
    v102 = v128;
    sub_1003A527C();
    swift_allocError();
    *v103 = v101;
    v103[1] = v102;
    v103[2] = 0xD000000000000020;
    v103[3] = v114;
    v103[4] = 66;
    swift_willThrow();
  }

  sub_100469DF8(v12);
  v104 = sub_10041ED48(v12, v13, v11, v119, v120, v121, v122);
  sub_10046C184(v104, v106, v105 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, v114, 71);
  v108 = v107;
  v110 = v109;

  *v118 = v115;
  *(v118 + 8) = v108;
  *(v118 + 16) = v110;
  *(v118 + 24) = 1;
LABEL_35:
  type metadata accessor for ResponsePayload(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003A4FC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
      sub_1003A5228();
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
    sub_100469DF8(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_10046C378(v9, a2, a3);
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
    return !a8 && a2 == a6 && (sub_1000FFC98(a1, a5) & 1) != 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1 && a1 == a5)
    {
      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      return sub_1004A6D34();
    }

    return 0;
  }

  if (a8 != 2)
  {
    return 0;
  }

  v10 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_10020FBD0(a1, a2, v10, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1003A51B8()
{
  result = qword_1005DBD00;
  if (!qword_1005DBD00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplePushService, &type metadata for ApplePushService, v0, v1);
    atomic_store(result, &qword_1005DBD00);
  }

  return result;
}

unint64_t sub_1003A5228()
{
  result = qword_1005DBD08;
  if (!qword_1005DBD08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TooMuchRecursion, &type metadata for TooMuchRecursion, v0, v1);
    atomic_store(result, &qword_1005DBD08);
  }

  return result;
}

unint64_t sub_1003A527C()
{
  result = qword_1005DBD10;
  if (!qword_1005DBD10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ParserError, &type metadata for ParserError, v0, v1);
    atomic_store(result, &qword_1005DBD10);
  }

  return result;
}

unint64_t sub_1003A5324()
{
  result = qword_1005DBD18;
  if (!qword_1005DBD18)
  {
    result = swift_getWitnessTable(byte_100509FD4, &type metadata for IncompleteMessage, v0, v1);
    atomic_store(result, &qword_1005DBD18);
  }

  return result;
}

uint64_t sub_1003A5378()
{
  result = sub_1004A5814();
  static AttributeFlag.answered = result;
  unk_1005DE340 = v1;
  return result;
}

NIOIMAPCore2::Media::TopLevelType __swiftcall Media.TopLevelType.init(stringLiteral:)(Swift::String stringLiteral)
{
  v1 = sub_1004A5814();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.stringValue._object = v5;
  result.stringValue._countAndFlagsBits = v4;
  return result;
}

uint64_t *AttributeFlag.answered.unsafeMutableAddressor()
{
  if (qword_1005DB9A8 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.answered;
}

uint64_t sub_1003A5470()
{
  result = sub_1004A5814();
  static AttributeFlag.flagged = result;
  unk_1005DE350 = v1;
  return result;
}

uint64_t *AttributeFlag.flagged.unsafeMutableAddressor()
{
  if (qword_1005DB9B0 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.flagged;
}

uint64_t sub_1003A5524()
{
  result = sub_1004A5814();
  static AttributeFlag.deleted = result;
  unk_1005DE360 = v1;
  return result;
}

uint64_t *AttributeFlag.deleted.unsafeMutableAddressor()
{
  if (qword_1005DB9B8 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.deleted;
}

uint64_t sub_1003A55D8()
{
  result = sub_1004A5814();
  static AttributeFlag.seen = result;
  unk_1005DE370 = v1;
  return result;
}

uint64_t *AttributeFlag.seen.unsafeMutableAddressor()
{
  if (qword_1005DB9C0 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.seen;
}

uint64_t sub_1003A5684()
{
  result = sub_1004A5814();
  static AttributeFlag.draft = result;
  unk_1005DE380 = v1;
  return result;
}

uint64_t *AttributeFlag.draft.unsafeMutableAddressor()
{
  if (qword_1005DB9C8 != -1)
  {
    swift_once();
  }

  return &static AttributeFlag.draft;
}

uint64_t sub_1003A5734(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

unint64_t sub_1003A5794()
{
  result = qword_1005DBD20;
  if (!qword_1005DBD20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeFlag, &type metadata for AttributeFlag, v0, v1);
    atomic_store(result, &qword_1005DBD20);
  }

  return result;
}

uint64_t AuthenticatedURL.verifier.getter()
{
  v1 = *(v0 + 88);

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
  result = (_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v17) & 1) != 0 && ((v8 = a1[5].i64[1], v9 = a1[6].i64[0], v10 = a1[6].i64[1], v11 = a1[7].i64[0], v12 = a2[5].i64[1], v13 = a2[6].i64[0], v15 = a2[6].i64[1], v14 = a2[7].i64[0], v8 == v12) && v9 == v13 || (sub_1004A6D34() & 1) != 0) && (v10 == v15 && v11 == v14 || (sub_1004A6D34() & 1) != 0);
  return result;
}

uint64_t AuthenticatedURL.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  v4 = *(v1 + 80);
  if ((*(v1 + 57) & 1) == 0)
  {
    v16 = *(v1 + 64);
    v17 = *(v1 + 72);
    v6 = *(v1 + 40);
    v15 = *(v1 + 48);
    v7 = *(v1 + 56);
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v11 = *(v1 + 8);
    v10 = *(v1 + 16);
    v12 = *v1;
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v12);
    sub_1004A6EB4(v11);
    sub_1004A6EB4(v10);
    sub_1004A6EB4(v9);
    sub_1004A6EB4(v8);
    sub_1004A6EB4(v6);
    if (v7)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EB4(v15);
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

  sub_1004A6EC4(0);
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

    sub_1004A6EB4(v13);
    goto LABEL_15;
  }

  v5 = 1;
LABEL_12:
  sub_1004A6EB4(v5);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_15:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int AuthenticatedURL.hashValue.getter()
{
  sub_1004A6E94();
  AuthenticatedURL.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003A5C4C(uint64_t a1)
{
  sub_1004A6E94();
  AuthenticatedURL.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_1003A5C88(int64x2_t *a1, int64x2_t *a2)
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
  return (_s12NIOIMAPCore220AuthenticatedURLRumpV23__derived_struct_equalsySbAC_ACtFZ_0(v17, v19) & 1) != 0 && (v4 == v12 && v5 == v13 || (sub_1004A6D34() & 1) != 0) && (v6 == v14 && v7 == v15 || (sub_1004A6D34() & 1) != 0);
}

unint64_t sub_1003A5D94()
{
  result = qword_1005DBD28;
  if (!qword_1005DBD28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedURL, &type metadata for AuthenticatedURL, v0, v1);
    atomic_store(result, &qword_1005DBD28);
  }

  return result;
}

uint64_t sub_1003A5DE8(uint64_t a1, int a2)
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

uint64_t sub_1003A5E30(uint64_t result, int a2, int a3)
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
  sub_1003A62D4(v1, *(v0 + 72), *(v0 + 80));
  return v1;
}

uint64_t AuthenticatedURLRump.access.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_100191658(*(v3 + 64), *(v3 + 72), *(v3 + 80));
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

void AuthenticatedURLRump.hash(into:)(uint64_t a1)
{
  if (*(v1 + 57) & 1) != 0 || (v3 = *(v1 + 40), v2 = *(v1 + 48), v4 = *(v1 + 56), v6 = *(v1 + 24), v5 = *(v1 + 32), v8 = *(v1 + 8), v7 = *(v1 + 16), v9 = *v1, sub_1004A6EC4(1u), sub_1004A6EB4(v9), sub_1004A6EB4(v8), sub_1004A6EB4(v7), sub_1004A6EB4(v6), sub_1004A6EB4(v5), sub_1004A6EB4(v3), (v4))
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
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
    sub_1004A6EB4(v10);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return;
  }

  if (*(v1 + 64) == 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  sub_1004A6EB4(v11);
}

Swift::Int AuthenticatedURLRump.hashValue.getter()
{
  sub_1004A6E94();
  AuthenticatedURLRump.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003A6100(uint64_t a1)
{
  sub_1004A6E94();
  AuthenticatedURLRump.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1003A613C(int64x2_t *a1, int64x2_t *a2)
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
          if (v4 == v7 && v5 == v8 || (sub_1004A6D34() & 1) != 0)
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

double sub_1003A62D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1003A62F0()
{
  result = qword_1005DBD30;
  if (!qword_1005DBD30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedURLRump, &type metadata for AuthenticatedURLRump, v0, v1);
    atomic_store(result, &qword_1005DBD30);
  }

  return result;
}

uint64_t sub_1003A6344(uint64_t a1, unsigned int a2)
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

uint64_t sub_1003A638C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Media.MediaType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int Media.MediaType.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_1003A64B8()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_1003A6520(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1003A6570(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

unint64_t sub_1003A65D8()
{
  result = qword_1005DBD38;
  if (!qword_1005DBD38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedURLVerifier, &type metadata for AuthenticatedURLVerifier, v0, v1);
    atomic_store(result, &qword_1005DBD38);
  }

  return result;
}

NIOIMAPCore2::AuthenticationMechanism __swiftcall AuthenticationMechanism.init(_:)(Swift::String a1)
{
  v1 = sub_1004A5834();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.rawValue._object = v5;
  result.rawValue._countAndFlagsBits = v4;
  return result;
}

unint64_t sub_1003A674C()
{
  result = qword_1005DBD40;
  if (!qword_1005DBD40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticationMechanism, &type metadata for AuthenticationMechanism, v0, v1);
    atomic_store(result, &qword_1005DBD40);
  }

  return result;
}

BOOL sub_1003A6830(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1003A6860@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1003A688C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1003A694C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1003A6CEC(a1);

  *a2 = v3;
  return result;
}

uint64_t String.init<A>(base64Encoding:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Base64.encodeString<A>(bytes:options:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

unint64_t sub_1003A6A00()
{
  result = qword_1005DBD48;
  if (!qword_1005DBD48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.EncodingOptions, &type metadata for Base64.EncodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD48);
  }

  return result;
}

unint64_t sub_1003A6A58()
{
  result = qword_1005DBD50;
  if (!qword_1005DBD50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.EncodingOptions, &type metadata for Base64.EncodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD50);
  }

  return result;
}

unint64_t sub_1003A6AB0()
{
  result = qword_1005DBD58;
  if (!qword_1005DBD58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.EncodingOptions, &type metadata for Base64.EncodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD58);
  }

  return result;
}

unint64_t sub_1003A6B08()
{
  result = qword_1005DBD60;
  if (!qword_1005DBD60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.EncodingOptions, &type metadata for Base64.EncodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD60);
  }

  return result;
}

unint64_t sub_1003A6B60()
{
  result = qword_1005DBD68;
  if (!qword_1005DBD68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.DecodingOptions, &type metadata for Base64.DecodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD68);
  }

  return result;
}

unint64_t sub_1003A6BB8()
{
  result = qword_1005DBD70;
  if (!qword_1005DBD70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.DecodingOptions, &type metadata for Base64.DecodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD70);
  }

  return result;
}

unint64_t sub_1003A6C10()
{
  result = qword_1005DBD78;
  if (!qword_1005DBD78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.DecodingOptions, &type metadata for Base64.DecodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD78);
  }

  return result;
}

unint64_t sub_1003A6C68()
{
  result = qword_1005DBD80;
  if (!qword_1005DBD80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Base64.DecodingOptions, &type metadata for Base64.DecodingOptions, v0, v1);
    atomic_store(result, &qword_1005DBD80);
  }

  return result;
}

uint64_t sub_1003A6CEC(uint64_t a1)
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
  if (sub_10000FE74(&v86) == 1)
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
    return sub_10000FE74(&v110) == 1;
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
  if (sub_10000FE74(&v39) == 1)
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
  if (sub_10000FE88(&v110) != 1)
  {
    v27 = UInt32.init(_:)(&v110);
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
    if (sub_10000FE88(&v63) != 1)
    {
      v33 = UInt32.init(_:)(&v63);
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
    UInt32.init(_:)(&v63);
    return 0;
  }

  v19 = UInt32.init(_:)(&v110);
  v20 = *(v19 + 80);
  v126 = *(v19 + 64);
  v127 = v20;
  v128 = *(v19 + 96);
  *&v129 = *(v19 + 112);
  v21 = *(v19 + 16);
  v122 = *v19;
  v123 = v21;
  v22 = *(v19 + 48);
  v124 = *(v19 + 32);
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
  if (sub_10000FE88(&v63) != 1)
  {
    goto LABEL_10;
  }

  v23 = UInt32.init(_:)(&v63);
  v24 = *(v23 + 80);
  v79 = *(v23 + 64);
  v80 = v24;
  v81 = *(v23 + 96);
  *&v82 = *(v23 + 112);
  v25 = *(v23 + 16);
  v75 = *v23;
  v76 = v25;
  v26 = *(v23 + 48);
  v77 = *(v23 + 32);
  v78 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v122, &v75);
}

void MessageAttribute.BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v27 = v1[8];
  v28 = v3;
  v29 = v1[10];
  v30 = *(v1 + 176);
  v4 = v1[5];
  v23 = v1[4];
  v24 = v4;
  v5 = v1[7];
  v25 = v1[6];
  v26 = v5;
  v6 = v1[1];
  v19 = *v1;
  v20 = v6;
  v7 = v1[3];
  v21 = v1[2];
  v22 = v7;
  if (sub_10000FE74(&v19) == 1)
  {
    sub_1004A6EB4(1uLL);
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
    sub_1004A6EB4(0);
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
    if (sub_10000FE88(v43) == 1)
    {
      v8 = UInt32.init(_:)(v43);
      v9 = *v8;
      v10 = *(v8 + 72);
      v47 = *(v8 + 56);
      v48 = v10;
      v11 = *(v8 + 104);
      v49 = *(v8 + 88);
      v50 = v11;
      v12 = *(v8 + 40);
      v45 = *(v8 + 24);
      v46 = v12;
      sub_1004A6EB4(1uLL);
      sub_1003AF454(a1, v9);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003B053C(a1);
    }

    else
    {
      v13 = UInt32.init(_:)(v43);
      v14 = *v13;
      v15 = *(v13 + 24);
      v16 = *(v13 + 56);
      v53 = *(v13 + 40);
      v54 = v16;
      v55 = *(v13 + 72);
      v51 = *(v13 + 8);
      v52 = v15;
      v17 = *(v13 + 136);
      v47 = *(v13 + 120);
      v48 = v17;
      v49 = *(v13 + 152);
      *&v50 = *(v13 + 168);
      v18 = *(v13 + 104);
      v45 = *(v13 + 88);
      v46 = v18;
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(a1, v14);
      BodyStructure.Fields.hash(into:)(a1);
      sub_1003B0920(a1);
    }
  }
}

Swift::Int MessageAttribute.BodyStructure.hashValue.getter()
{
  sub_1004A6E94();
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
  if (sub_10000FE74(&v19) == 1)
  {
    sub_1004A6EB4(1uLL);
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
    sub_1004A6EB4(0);
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
    if (sub_10000FE88(v43) == 1)
    {
      v6 = UInt32.init(_:)(v43);
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
      sub_1004A6EB4(1uLL);
      sub_1003AF454(v18, v7);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003B053C(v18);
    }

    else
    {
      v11 = UInt32.init(_:)(v43);
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
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(v18, v12);
      BodyStructure.Fields.hash(into:)(v18);
      sub_1003B0920(v18);
    }
  }

  return sub_1004A6F14();
}

void sub_1003A7544(uint64_t a1)
{
  v3 = v1[9];
  v38 = v1[8];
  v39 = v3;
  v40 = v1[10];
  v41 = *(v1 + 176);
  v4 = v1[5];
  v34 = v1[4];
  v35 = v4;
  v5 = v1[7];
  v36 = v1[6];
  v37 = v5;
  v6 = v1[1];
  v30 = *v1;
  v31 = v6;
  v7 = v1[3];
  v32 = v1[2];
  v33 = v7;
  if (sub_10000FE74(&v30) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    sub_1004A6EB4(0);
    v17[8] = v38;
    v17[9] = v39;
    v17[10] = v40;
    v18 = v41;
    v17[4] = v34;
    v17[5] = v35;
    v17[6] = v36;
    v17[7] = v37;
    v17[0] = v30;
    v17[1] = v31;
    v17[2] = v32;
    v17[3] = v33;
    if (sub_10000FE88(v17) == 1)
    {
      v8 = UInt32.init(_:)(v17);
      sub_1004A6EB4(1uLL);
      sub_1003AF454(a1, *v8);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v9 = *(v8 + 72);
      v26 = *(v8 + 56);
      v27 = v9;
      v10 = *(v8 + 104);
      v28 = *(v8 + 88);
      v29 = v10;
      v11 = *(v8 + 40);
      v24 = *(v8 + 24);
      v25 = v11;
      sub_1003B053C(a1);
    }

    else
    {
      v12 = UInt32.init(_:)(v17);
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(a1, *v12);
      v13 = *(v12 + 24);
      v14 = *(v12 + 56);
      v21 = *(v12 + 40);
      v22 = v14;
      v23 = *(v12 + 72);
      v19 = *(v12 + 8);
      v20 = v13;
      BodyStructure.Fields.hash(into:)(a1);
      v15 = *(v12 + 136);
      v26 = *(v12 + 120);
      v27 = v15;
      v28 = *(v12 + 152);
      *&v29 = *(v12 + 168);
      v16 = *(v12 + 104);
      v24 = *(v12 + 88);
      v25 = v16;
      sub_1003B0920(a1);
    }
  }
}

Swift::Int sub_1003A7708(uint64_t a1)
{
  sub_1004A6E94();
  v2 = v1[9];
  v39 = v1[8];
  v40 = v2;
  v41 = v1[10];
  v42 = *(v1 + 176);
  v3 = v1[5];
  v35 = v1[4];
  v36 = v3;
  v4 = v1[7];
  v37 = v1[6];
  v38 = v4;
  v5 = v1[1];
  v31 = *v1;
  v32 = v5;
  v6 = v1[3];
  v33 = v1[2];
  v34 = v6;
  if (sub_10000FE74(&v31) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    sub_1004A6EB4(0);
    v17[8] = v39;
    v17[9] = v40;
    v17[10] = v41;
    v18 = v42;
    v17[4] = v35;
    v17[5] = v36;
    v17[6] = v37;
    v17[7] = v38;
    v17[0] = v31;
    v17[1] = v32;
    v17[2] = v33;
    v17[3] = v34;
    if (sub_10000FE88(v17) == 1)
    {
      v7 = UInt32.init(_:)(v17);
      sub_1004A6EB4(1uLL);
      sub_1003AF454(v19, *v7);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v8 = *(v7 + 72);
      v27 = *(v7 + 56);
      v28 = v8;
      v9 = *(v7 + 104);
      v29 = *(v7 + 88);
      v30 = v9;
      v10 = *(v7 + 40);
      v25 = *(v7 + 24);
      v26 = v10;
      sub_1003B053C(v19);
    }

    else
    {
      v11 = UInt32.init(_:)(v17);
      sub_1004A6EB4(0);
      BodyStructure.Singlepart.Kind.hash(into:)(v19, *v11);
      v12 = *(v11 + 24);
      v13 = *(v11 + 56);
      v22 = *(v11 + 40);
      v23 = v13;
      v24 = *(v11 + 72);
      v20 = *(v11 + 8);
      v21 = v12;
      BodyStructure.Fields.hash(into:)(v19);
      v14 = *(v11 + 136);
      v27 = *(v11 + 120);
      v28 = v14;
      v29 = *(v11 + 152);
      *&v30 = *(v11 + 168);
      v15 = *(v11 + 104);
      v25 = *(v11 + 88);
      v26 = v15;
      sub_1003B0920(v19);
    }
  }

  return sub_1004A6F14();
}

BOOL sub_1003A78D4(__int128 *a1, __int128 *a2)
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
  if (sub_10000FE74(&v87) == 1)
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
    return sub_10000FE74(&v53) == 1;
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
  if (sub_10000FE74(&v53) == 1)
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
  if (sub_10000FE88(v51) != 1)
  {
    v27 = UInt32.init(_:)(v51);
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
    if (sub_10000FE88(&v39) != 1)
    {
      v33 = UInt32.init(_:)(&v39);
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
    UInt32.init(_:)(&v39);
    return 0;
  }

  v19 = UInt32.init(_:)(v51);
  v20 = *(v19 + 80);
  v69 = *(v19 + 64);
  v70 = v20;
  v71 = *(v19 + 96);
  *&v72 = *(v19 + 112);
  v21 = *(v19 + 16);
  v65 = *v19;
  v66 = v21;
  v22 = *(v19 + 48);
  v67 = *(v19 + 32);
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
  if (sub_10000FE88(&v39) != 1)
  {
    goto LABEL_10;
  }

  v23 = UInt32.init(_:)(&v39);
  v24 = *(v23 + 80);
  v80 = *(v23 + 64);
  v81 = v24;
  v82 = *(v23 + 96);
  *&v83 = *(v23 + 112);
  v25 = *(v23 + 16);
  v76 = *v23;
  v77 = v25;
  v26 = *(v23 + 48);
  v78 = *(v23 + 32);
  v79 = v26;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v65, &v76);
}

void BodyStructure.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v19[8] = *(v1 + 128);
  v19[9] = v3;
  v19[10] = *(v1 + 160);
  v20 = *(v1 + 176);
  v4 = *(v1 + 80);
  v19[4] = *(v1 + 64);
  v19[5] = v4;
  v5 = *(v1 + 112);
  v19[6] = *(v1 + 96);
  v19[7] = v5;
  v6 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v6;
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v7;
  if (sub_10000FE88(v19) == 1)
  {
    v8 = UInt32.init(_:)(v19);
    v9 = *v8;
    v10 = *(v8 + 72);
    v23 = *(v8 + 56);
    v24 = v10;
    v11 = *(v8 + 104);
    v25 = *(v8 + 88);
    v26 = v11;
    v12 = *(v8 + 40);
    v21 = *(v8 + 24);
    v22 = v12;
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, v9);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(a1);
  }

  else
  {
    v13 = UInt32.init(_:)(v19);
    v14 = *v13;
    v15 = *(v13 + 24);
    v16 = *(v13 + 56);
    v29 = *(v13 + 40);
    v30 = v16;
    v31 = *(v13 + 72);
    v27 = *(v13 + 8);
    v28 = v15;
    v17 = *(v13 + 136);
    v23 = *(v13 + 120);
    v24 = v17;
    v25 = *(v13 + 152);
    *&v26 = *(v13 + 168);
    v18 = *(v13 + 104);
    v21 = *(v13 + 88);
    v22 = v18;
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, v14);
    BodyStructure.Fields.hash(into:)(a1);
    sub_1003B0920(a1);
  }
}

Swift::Int BodyStructure.hashValue.getter()
{
  sub_1004A6E94();
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
  if (sub_10000FE88(v19) == 1)
  {
    v6 = UInt32.init(_:)(v19);
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
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v18, v7);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(v18);
  }

  else
  {
    v11 = UInt32.init(_:)(v19);
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
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v18, v12);
    BodyStructure.Fields.hash(into:)(v18);
    sub_1003B0920(v18);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003A7EBC()
{
  sub_1004A6E94();
  v1 = *(v0 + 144);
  v28[8] = *(v0 + 128);
  v28[9] = v1;
  v28[10] = *(v0 + 160);
  v29 = *(v0 + 176);
  v2 = *(v0 + 80);
  v28[4] = *(v0 + 64);
  v28[5] = v2;
  v3 = *(v0 + 112);
  v28[6] = *(v0 + 96);
  v28[7] = v3;
  v4 = *(v0 + 16);
  v28[0] = *v0;
  v28[1] = v4;
  v5 = *(v0 + 48);
  v28[2] = *(v0 + 32);
  v28[3] = v5;
  if (sub_10000FE88(v28) == 1)
  {
    v6 = UInt32.init(_:)(v28);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v16, *v6);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v7 = *(v6 + 72);
    v24 = *(v6 + 56);
    v25 = v7;
    v8 = *(v6 + 104);
    v26 = *(v6 + 88);
    v27 = v8;
    v9 = *(v6 + 40);
    v22 = *(v6 + 24);
    v23 = v9;
    sub_1003B053C(v16);
  }

  else
  {
    v10 = UInt32.init(_:)(v28);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v16, *v10);
    v11 = *(v10 + 24);
    v12 = *(v10 + 56);
    v19 = *(v10 + 40);
    v20 = v12;
    v21 = *(v10 + 72);
    v17 = *(v10 + 8);
    v18 = v11;
    BodyStructure.Fields.hash(into:)(v16);
    v13 = *(v10 + 136);
    v24 = *(v10 + 120);
    v25 = v13;
    v26 = *(v10 + 152);
    *&v27 = *(v10 + 168);
    v14 = *(v10 + 104);
    v22 = *(v10 + 88);
    v23 = v14;
    sub_1003B0920(v16);
  }

  return sub_1004A6F14();
}

void sub_1003A8030(uint64_t a1)
{
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v10[10] = *(v1 + 160);
  v11 = *(v1 + 176);
  v4 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v4;
  v5 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v5;
  v6 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v6;
  v7 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v7;
  if (sub_10000FE88(v10) == 1)
  {
    v8 = UInt32.init(_:)(v10);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, *v8);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B053C(a1);
  }

  else
  {
    v9 = UInt32.init(_:)(v10);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v9);
    BodyStructure.Fields.hash(into:)(a1);
    sub_1003B0920(a1);
  }
}

Swift::Int sub_1003A8190(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(v1 + 144);
  v29[8] = *(v1 + 128);
  v29[9] = v2;
  v29[10] = *(v1 + 160);
  v30 = *(v1 + 176);
  v3 = *(v1 + 80);
  v29[4] = *(v1 + 64);
  v29[5] = v3;
  v4 = *(v1 + 112);
  v29[6] = *(v1 + 96);
  v29[7] = v4;
  v5 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v5;
  v6 = *(v1 + 48);
  v29[2] = *(v1 + 32);
  v29[3] = v6;
  if (sub_10000FE88(v29) == 1)
  {
    v7 = UInt32.init(_:)(v29);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(v17, *v7);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v8 = *(v7 + 72);
    v25 = *(v7 + 56);
    v26 = v8;
    v9 = *(v7 + 104);
    v27 = *(v7 + 88);
    v28 = v9;
    v10 = *(v7 + 40);
    v23 = *(v7 + 24);
    v24 = v10;
    sub_1003B053C(v17);
  }

  else
  {
    v11 = UInt32.init(_:)(v29);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(v17, *v11);
    v12 = *(v11 + 24);
    v13 = *(v11 + 56);
    v20 = *(v11 + 40);
    v21 = v13;
    v22 = *(v11 + 72);
    v18 = *(v11 + 8);
    v19 = v12;
    BodyStructure.Fields.hash(into:)(v17);
    v14 = *(v11 + 136);
    v25 = *(v11 + 120);
    v26 = v14;
    v27 = *(v11 + 152);
    *&v28 = *(v11 + 168);
    v15 = *(v11 + 104);
    v23 = *(v11 + 88);
    v24 = v15;
    sub_1003B0920(v17);
  }

  return sub_1004A6F14();
}

BOOL sub_1003A8300(uint64_t a1, uint64_t a2)
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
  v18[8] = *(v0 + 128);
  v18[9] = v1;
  v18[10] = *(v0 + 160);
  v19 = *(v0 + 176);
  v2 = *(v0 + 80);
  v18[4] = *(v0 + 64);
  v18[5] = v2;
  v3 = *(v0 + 112);
  v18[6] = *(v0 + 96);
  v18[7] = v3;
  v4 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v4;
  v5 = *(v0 + 48);
  v18[2] = *(v0 + 32);
  v18[3] = v5;
  if (sub_10000FE88(v18) == 1)
  {
    return *(*UInt32.init(_:)(v18) + 16);
  }

  v7 = *UInt32.init(_:)(v18);
  if (v7 >> 62 != 1)
  {
    return 0;
  }

  v8 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  memcpy(__dst, ((v7 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  v9 = *(v8 + 296);
  v10 = *(v8 + 312);
  v11 = *(v8 + 264);
  v28 = *(v8 + 280);
  v29 = v9;
  v30 = v10;
  v31 = *(v8 + 328);
  v12 = *(v8 + 232);
  v24 = *(v8 + 216);
  v25 = v12;
  v26 = *(v8 + 248);
  v27 = v11;
  v13 = *(v8 + 168);
  v20 = *(v8 + 152);
  v21 = v13;
  v14 = *(v8 + 200);
  v22 = *(v8 + 184);
  v23 = v14;
  sub_100259990(__dst, &v16);
  v15 = BodyStructure.subpartCount.getter();
  sub_1002599EC(__dst);
  return v15;
}

uint64_t BodyStructure.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003A861C(a1, v10);
  result = sub_10000FE74(v10);
  if (result == 1)
  {
    sub_1004A6724(32);

    v12._countAndFlagsBits = sub_1004A5824();
    sub_1004A5994(v12);

    result = sub_1004A69A4();
    __break(1u);
  }

  else
  {
    v4 = v10[9];
    v5 = v10[10];
    v6 = v10[7];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v4;
    *(a2 + 160) = v5;
    *(a2 + 176) = v11;
    v7 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v7;
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    v9 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v9;
  }

  return result;
}

double sub_1003A861C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1003A9DF4(*(a1 + 32), &v30);
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v42 = v30;
    v43 = v31;
    v29 = v41;
    v53 = v41;
    v44 = v32;
    v45 = v33;
    if (sub_10000FE74(&v42) != 1)
    {
      v62 = v50;
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      v57 = v45;
      v11.array._rawValue = SectionSpecifier.Part.dropFirst()().array._rawValue;
      sub_1003A861C(v11.array._rawValue, &v66);

      sub_100025F40(&v30, &qword_1005CE210, &unk_1004D0930);
      goto LABEL_7;
    }

    v74 = v26;
    v75 = v27;
    v76 = v28;
    v77 = v29;
    v70 = v22;
    v71 = v23;
    v72 = v24;
    v73 = v25;
    v66 = v18;
    v67 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = *(v2 + 144);
    v62 = *(v2 + 128);
    v63 = v6;
    v64 = *(v2 + 160);
    v65 = *(v2 + 176);
    v7 = *(v2 + 80);
    v58 = *(v2 + 64);
    v59 = v7;
    v8 = *(v2 + 112);
    v60 = *(v2 + 96);
    v61 = v8;
    v9 = *(v2 + 16);
    v54 = *v2;
    v55 = v9;
    v10 = *(v2 + 48);
    v56 = *(v2 + 32);
    v57 = v10;
    UInt32.init(_:)(&v54);
    sub_1000510B4(v2, &v66);
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    v66 = v54;
    v67 = v55;
    v4 = v56;
    v5 = v57;
  }

  v68 = v4;
  v69 = v5;
LABEL_7:
  v12 = v75;
  *(a2 + 128) = v74;
  *(a2 + 144) = v12;
  *(a2 + 160) = v76;
  *(a2 + 176) = v77;
  v13 = v71;
  *(a2 + 64) = v70;
  *(a2 + 80) = v13;
  v14 = v73;
  *(a2 + 96) = v72;
  *(a2 + 112) = v14;
  v15 = v67;
  *a2 = v66;
  *(a2 + 16) = v15;
  result = *&v68;
  v17 = v69;
  *(a2 + 32) = v68;
  *(a2 + 48) = v17;
  return result;
}

double BodyStructure.find(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003A861C(a1, v9);
  v3 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v3;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  v5 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t BodyStructure.endIndex.getter()
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004CEAA0;
  *(v0 + 32) = BodyStructure.subpartCount.getter() + 1;
  return v0;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall BodyStructure.index(before:)(NIOIMAPCore2::SectionSpecifier::Part before)
{
  v2 = *(before.array._rawValue + 2);
  if (v2)
  {
    v3 = *(before.array._rawValue + v2 + 3);
    v4 = v2 - 1;
    sub_1004A6DA4();
    swift_unknownObjectRetain_n();

    v5 = swift_dynamicCastClass();
    if (v3 < 2)
    {
      if (!v5)
      {
        swift_unknownObjectRelease();
        v5 = _swiftEmptyArrayStorage;
      }

      v10 = v5[2];

      if (v10 == v4)
      {
        v9 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v9)
        {
          swift_unknownObjectRelease();
          return _swiftEmptyArrayStorage;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1003AA91C(before.array._rawValue, before.array._rawValue + 32, 0, (2 * v4) | 1);
        v9 = v13;
        swift_unknownObjectRelease();
      }

      return v9;
    }

    if (!v5)
    {
      swift_unknownObjectRelease();
      v5 = _swiftEmptyArrayStorage;
    }

    v6 = v5[2];

    if (v6 == v4)
    {
      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
LABEL_9:
        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004CEAA0;
        *(inited + 32) = v3 - 1;
        sub_1003AA9EC(inited);
        v9 = sub_1003A8BF4(v7);

        return v9;
      }

      v7 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1003AA91C(before.array._rawValue, before.array._rawValue + 32, 0, (2 * v4) | 1);
      v7 = v12;
    }

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();
  sub_1004A6724(32);

  v14._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v14);

  result.array._rawValue = sub_1004A69A4();
  __break(1u);
  return result;
}

unint64_t sub_1003A8BB0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_1003A8BF4(uint64_t a1)
{
  swift_bridgeObjectRetain_n();
  sub_1003A861C(a1, &v10);

  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  if (sub_10000FE74(&v22) == 1)
  {
    return a1;
  }

  else
  {
    while (1)
    {
      v42 = v30;
      v43 = v31;
      v44 = v32;
      v45 = v33;
      v38 = v26;
      v39 = v27;
      v40 = v28;
      v41 = v29;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v37 = v25;
      if (!BodyStructure.subpartCount.getter())
      {
        sub_100025F40(&v10, &qword_1005CE210, &unk_1004D0930);
        return a1;
      }

      v2 = BodyStructure.subpartCount.getter();
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      *(inited + 32) = v2;
      v4 = *(a1 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v6 = *(a1 + 24) >> 1, v7 = a1, v6 <= v4))
      {
        result = sub_100460CC0(result, v4 + 1, 1, a1);
        v7 = result;
        v6 = *(result + 24) >> 1;
      }

      v8 = *(v7 + 16);
      if (v6 <= v8)
      {
        break;
      }

      *(v7 + 8 * v8 + 32) = *(inited + 32);

      ++*(v7 + 16);
      sub_100025F40(&v10, &qword_1005CE210, &unk_1004D0930);

      sub_1003A861C(v9, &v10);

      v30 = v18;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v22 = v10;
      v23 = v11;
      v24 = v12;
      v25 = v13;
      a1 = v7;
      if (sub_10000FE74(&v22) == 1)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall BodyStructure.index(after:)(NIOIMAPCore2::SectionSpecifier::Part after)
{
  rawValue = after.array._rawValue;
  sub_1003A861C(after.array._rawValue, v14);
  v40 = v14[8];
  v41 = v14[9];
  v42 = v14[10];
  v43 = v15;
  v36 = v14[4];
  v37 = v14[5];
  v38 = v14[6];
  v39 = v14[7];
  v32 = v14[0];
  v33 = v14[1];
  v34 = v14[2];
  v35 = v14[3];
  if (sub_10000FE74(&v32) != 1)
  {
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    if (BodyStructure.subpartCount.getter())
    {
      *&v30[0] = rawValue;

      sub_1003AA9EC(&off_1005B8DB0);
      sub_100025F40(v14, &qword_1005CE210, &unk_1004D0930);
      return *&v30[0];
    }

    v3 = rawValue[2];
    if (!v3)
    {
LABEL_17:
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1004CEAA0;
      *(v12 + 32) = BodyStructure.subpartCount.getter() + 1;
      sub_100025F40(v14, &qword_1005CE210, &unk_1004D0930);
      return v12;
    }

    swift_bridgeObjectRetain_n();
    while (1)
    {
      v4 = rawValue[v3 + 3];

      v5 = rawValue[2];
      v6 = v5 - 1;
      if (v5 == 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else if (v5)
      {
        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        v7 = swift_allocObject();
        v8 = j__malloc_size(v7);
        v9 = v8 - 32;
        if (v8 < 32)
        {
          v9 = v8 - 25;
        }

        v7[2] = v6;
        v7[3] = 2 * (v9 >> 3);
        memcpy(v7 + 4, rawValue + 4, 8 * v6);
      }

      else
      {

        v7 = rawValue;
      }

      sub_1003A861C(v10, v16);
      v26 = v16[8];
      v27 = v16[9];
      v28 = v16[10];
      v29 = v17;
      v22 = v16[4];
      v23 = v16[5];
      v24 = v16[6];
      v25 = v16[7];
      v18 = v16[0];
      v19 = v16[1];
      v20 = v16[2];
      v21 = v16[3];
      if (sub_10000FE74(&v18) == 1)
      {
        break;
      }

      v30[8] = v26;
      v30[9] = v27;
      v30[10] = v28;
      v31 = v29;
      v30[4] = v22;
      v30[5] = v23;
      v30[6] = v24;
      v30[7] = v25;
      v30[0] = v18;
      v30[1] = v19;
      v30[2] = v20;
      v30[3] = v21;

      v11 = BodyStructure.subpartCount.getter();
      sub_100025F40(v16, &qword_1005CE210, &unk_1004D0930);
      if (v4 < v11)
      {

        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1004CEAA0;
        *(v13 + 32) = v4 + 1;
        sub_1003AA9EC(v13);
        sub_100025F40(v14, &qword_1005CE210, &unk_1004D0930);
        return v7;
      }

      v3 = v7[2];
      rawValue = v7;
      if (!v3)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }

  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_1004A6724(32);

  *&v44 = 0xD00000000000001ELL;
  *(&v44 + 1) = 0x80000001004B04F0;
  *&v30[0] = rawValue;

  v56._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v56);

  result.array._rawValue = sub_1004A69A4();
  __break(1u);
  return result;
}

void *sub_1003A9300(void *rawValue, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {

    v5 = 0;
    do
    {
      --v5;
      v4.array._rawValue = BodyStructure.index(before:)(rawValue).array._rawValue;

      rawValue = v4.array._rawValue;
    }

    while (v5 > v2);
  }

  else
  {

    if (v2)
    {
      do
      {
        v4.array._rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

        rawValue = v4.array._rawValue;
        --v2;
      }

      while (v2);
    }

    else
    {
      return rawValue;
    }
  }

  return v4.array._rawValue;
}

NIOIMAPCore2::SectionSpecifier::Part sub_1003A939C@<X0>(NIOIMAPCore2::SectionSpecifier::Part *a1@<X0>, NIOIMAPCore2::SectionSpecifier::Part *a2@<X8>)
{
  result.array._rawValue = BodyStructure.index(before:)(a1->array._rawValue).array._rawValue;
  a2->array._rawValue = result.array._rawValue;
  return result;
}

void *sub_1003A9424@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1003A9300(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003A9514@<X0>(uint64_t *a1@<X8>)
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004CEAA0;
  result = BodyStructure.subpartCount.getter();
  *(v2 + 32) = result + 1;
  *a1 = v2;
  return result;
}

void (*sub_1003A957C(uint64_t *a1, uint64_t *a2))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x221uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = (v5 + 184);
  v8 = *a2;
  v9 = *(v2 + 144);
  *(v6 + 128) = *(v2 + 128);
  *(v6 + 144) = v9;
  *(v6 + 160) = *(v2 + 160);
  *(v6 + 176) = *(v2 + 176);
  v10 = *(v2 + 80);
  *(v6 + 64) = *(v2 + 64);
  *(v6 + 80) = v10;
  v11 = *(v2 + 112);
  *(v6 + 96) = *(v2 + 96);
  *(v6 + 112) = v11;
  v12 = *(v2 + 16);
  *v6 = *v2;
  *(v6 + 16) = v12;
  v13 = *(v2 + 48);
  *(v6 + 32) = *(v2 + 32);
  *(v6 + 48) = v13;
  BodyStructure.subscript.getter(v8, v7);
  v14 = v7[9];
  v15 = v7[10];
  v16 = v7[7];
  *(v6 + 496) = v7[8];
  *(v6 + 512) = v14;
  *(v6 + 528) = v15;
  v17 = v7[5];
  v18 = v7[6];
  *(v6 + 432) = *(v6 + 248);
  *(v6 + 448) = v17;
  *(v6 + 544) = *(v6 + 360);
  *(v6 + 464) = v18;
  *(v6 + 480) = v16;
  v19 = *(v6 + 200);
  *(v6 + 368) = *(v6 + 184);
  *(v6 + 384) = v19;
  v20 = *(v6 + 232);
  *(v6 + 400) = *(v6 + 216);
  *(v6 + 416) = v20;
  return sub_1003A9680;
}

void sub_1003A9680(void **a1)
{
  v1 = *a1;
  sub_100051110(*a1 + 184);

  free(v1);
}

void sub_1003A9728(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  if (_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(inited, _swiftEmptyArrayStorage))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a1, _swiftEmptyArrayStorage))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(inited, a2);
  swift_setDeallocating();
  if (!v8)
  {
    v9 = *(v3 + 144);
    *(a3 + 144) = *(v3 + 128);
    *(a3 + 160) = v9;
    *(a3 + 176) = *(v3 + 160);
    *(a3 + 192) = *(v3 + 176);
    v10 = *(v3 + 80);
    *(a3 + 80) = *(v3 + 64);
    *(a3 + 96) = v10;
    v11 = *(v3 + 112);
    *(a3 + 112) = *(v3 + 96);
    *(a3 + 128) = v11;
    v12 = *(v3 + 16);
    *(a3 + 16) = *v3;
    *(a3 + 32) = v12;
    v13 = *(v3 + 48);
    *(a3 + 48) = *(v3 + 32);
    *(a3 + 64) = v13;
    *a3 = a1;
    *(a3 + 8) = a2;
    sub_1000510B4(v3, v14);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1003A9848@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[7];
  v27 = v1[8];
  v28 = v3;
  v5 = v1[9];
  v29 = v1[10];
  v6 = v1[5];
  v8 = v1[3];
  v23 = v1[4];
  v7 = v23;
  v24 = v6;
  v9 = v1[5];
  v10 = v1[7];
  v25 = v1[6];
  v11 = v25;
  v26 = v10;
  v12 = v1[1];
  v20[0] = *v1;
  v20[1] = v12;
  v13 = v1[3];
  v15 = *v1;
  v14 = v1[1];
  v21 = v1[2];
  v16 = v21;
  v22 = v13;
  *(a1 + 128) = v27;
  *(a1 + 144) = v5;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v15;
  *(a1 + 16) = v14;
  v30 = *(v1 + 176);
  *(a1 + 176) = *(v1 + 176);
  *(a1 + 32) = v16;
  *(a1 + 48) = v8;
  *(a1 + 184) = _swiftEmptyArrayStorage;
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004CEAA0;
  sub_1000510B4(v20, v19);
  result = BodyStructure.subpartCount.getter();
  *(v17 + 32) = result + 1;
  *(a1 + 192) = v17;
  return result;
}

uint64_t sub_1003A9948()
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  v1 = sub_1003AAAD8(_swiftEmptyArrayStorage, inited);
  swift_setDeallocating();
  return v1;
}

void *sub_1003A9A18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_1003AAAD8(*a1, *a3);
  if (a2 < 1)
  {
    if (v7 > 0 || v7 <= a2)
    {
      goto LABEL_8;
    }
  }

  else if (v7 < 0 || v7 >= a2)
  {
LABEL_8:
    result = sub_1003A9300(v6, a2);
    goto LABEL_9;
  }

  result = 0;
LABEL_9:
  *a4 = result;
  return result;
}

BOOL sub_1003A9ADC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v2, v3);
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_1003A9B28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v3, v2);
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_1003A9B74(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v3, v2);
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part sub_1003A9BC0@<X0>(NIOIMAPCore2::SectionSpecifier::Part *a1@<X0>, NIOIMAPCore2::SectionSpecifier::Part *a2@<X8>)
{
  result.array._rawValue = BodyStructure.index(after:)(a1->array._rawValue).array._rawValue;
  a2->array._rawValue = result.array._rawValue;
  return result;
}

uint64_t sub_1003A9C48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = (a4)(*a1, a2, a3);

  *a1 = v5;
  return result;
}

__n128 sub_1003A9CD4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = *(v1 + 176);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  result = *(v1 + 32);
  v7 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  *(a1 + 184) = _swiftEmptyArrayStorage;
  return result;
}

void *sub_1003A9D1C()
{
  v1 = *(v0 + 144);
  v8[8] = *(v0 + 128);
  v8[9] = v1;
  v8[10] = *(v0 + 160);
  v9 = *(v0 + 176);
  v2 = *(v0 + 80);
  v8[4] = *(v0 + 64);
  v8[5] = v2;
  v3 = *(v0 + 112);
  v8[6] = *(v0 + 96);
  v8[7] = v3;
  v4 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v4;
  v5 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v5;
  v6 = sub_1003AA830(v8);
  sub_100051110(v8);
  return v6;
}

double sub_1003A9DF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 1)
  {
    goto LABEL_10;
  }

  v5 = *(v2 + 144);
  v84[8] = *(v2 + 128);
  v84[9] = v5;
  v84[10] = *(v2 + 160);
  v85 = *(v2 + 176);
  v6 = *(v2 + 80);
  v84[4] = *(v2 + 64);
  v84[5] = v6;
  v7 = *(v2 + 112);
  v84[6] = *(v2 + 96);
  v84[7] = v7;
  v8 = *(v2 + 16);
  v84[0] = *v2;
  v84[1] = v8;
  v9 = *(v2 + 48);
  v84[2] = *(v2 + 32);
  v84[3] = v9;
  if (sub_10000FE88(v84) != 1)
  {
    v23 = *UInt32.init(_:)(v84);
    if (v23 >> 62 == 1)
    {
      v24 = v23 & 0x3FFFFFFFFFFFFFFFLL;
      memcpy(__dst, ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v25 = *(v24 + 296);
      v26 = *(v24 + 312);
      v27 = *(v24 + 264);
      v94 = *(v24 + 280);
      v95 = v25;
      v96 = v26;
      v97 = *(v24 + 328);
      v28 = *(v24 + 232);
      v90 = *(v24 + 216);
      v91 = v28;
      v92 = *(v24 + 248);
      v93 = v27;
      v29 = *(v24 + 168);
      v86 = *(v24 + 152);
      v87 = v29;
      v30 = *(v24 + 200);
      v88 = *(v24 + 184);
      v89 = v30;
      sub_100259990(__dst, &v55);
      v31 = v80;
      sub_1003A9DF4(a1, v80);
      v82[8] = v80[8];
      v82[9] = v80[9];
      v82[10] = v80[10];
      v83 = v81;
      v82[4] = v80[4];
      v82[5] = v80[5];
      v82[6] = v80[6];
      v82[7] = v80[7];
      v82[0] = v80[0];
      v82[1] = v80[1];
      v82[2] = v80[2];
      v82[3] = v80[3];
      if (sub_10000FE74(v82) == 1)
      {
        v31 = &__dst[136];
        sub_1000510B4(&__dst[136], &v55);
      }

      sub_1002599EC(__dst);
      v32 = *(v31 + 9);
      v75 = *(v31 + 8);
      v76 = v32;
      v77 = *(v31 + 10);
      v78 = v31[176];
      v33 = *(v31 + 5);
      v71 = *(v31 + 4);
      v72 = v33;
      v34 = *(v31 + 7);
      v73 = *(v31 + 6);
      v74 = v34;
      v35 = *(v31 + 1);
      v67 = *v31;
      v68 = v35;
      v36 = *(v31 + 3);
      v69 = *(v31 + 2);
      v70 = v36;
      v51 = v75;
      v52 = v76;
      v53 = v77;
      v54 = v78;
      v47 = v71;
      v48 = v72;
      v49 = v73;
      v50 = v74;
      v43 = v67;
      v44 = v68;
      v45 = v69;
      v46 = v36;
      UInt32.init(_:)(&v43);
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v66 = v54;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v55 = v43;
      v56 = v44;
      v21 = v45;
      v22 = v46;
      goto LABEL_9;
    }

LABEL_10:
    sub_1000519B0(&v55);
    goto LABEL_11;
  }

  v10 = UInt32.init(_:)(v84);
  if (*(*v10 + 16) < a1)
  {
    goto LABEL_10;
  }

  v11 = *v10 + 184 * a1;
  v12 = *(v11 - 152);
  v13 = *(v11 - 136);
  v14 = *(v11 - 104);
  v88 = *(v11 - 120);
  v89 = v14;
  v86 = v12;
  v87 = v13;
  v15 = *(v11 - 88);
  v16 = *(v11 - 72);
  v17 = *(v11 - 40);
  v92 = *(v11 - 56);
  v93 = v17;
  v90 = v15;
  v91 = v16;
  v18 = *(v11 - 24);
  v19 = *(v11 - 8);
  v20 = *(v11 + 8);
  v97 = *(v11 + 24);
  v95 = v19;
  v96 = v20;
  v94 = v18;
  memmove(__dst, (v11 - 152), 0xB1uLL);
  UInt32.init(_:)(__dst);
  sub_1000510B4(&v86, &v55);
  v63 = *&__dst[128];
  v64 = *&__dst[144];
  v65 = *&__dst[160];
  v66 = __dst[176];
  v59 = *&__dst[64];
  v60 = *&__dst[80];
  v61 = *&__dst[96];
  v62 = *&__dst[112];
  v55 = *__dst;
  v56 = *&__dst[16];
  v21 = *&__dst[32];
  v22 = *&__dst[48];
LABEL_9:
  v57 = v21;
  v58 = v22;
LABEL_11:
  v37 = v64;
  *(a2 + 128) = v63;
  *(a2 + 144) = v37;
  *(a2 + 160) = v65;
  *(a2 + 176) = v66;
  v38 = v60;
  *(a2 + 64) = v59;
  *(a2 + 80) = v38;
  v39 = v62;
  *(a2 + 96) = v61;
  *(a2 + 112) = v39;
  v40 = v56;
  *a2 = v55;
  *(a2 + 16) = v40;
  result = *&v57;
  v42 = v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v42;
  return result;
}

uint64_t BodyStructure.enumerateParts(_:)(void (*a1)(uint64_t, _OWORD *), uint64_t a2)
{
  v4 = v2;
  result = (a1)(_swiftEmptyArrayStorage, v4);
  if (!v3)
  {
    return sub_1003AA1C8(_swiftEmptyArrayStorage, a1, a2);
  }

  return result;
}

uint64_t sub_1003AA1C8(uint64_t a1, void (*a2)(uint64_t, _OWORD *), uint64_t inited)
{
  result = BodyStructure.subpartCount.getter();
  if (result)
  {
    v8 = BodyStructure.subpartCount.getter();
    if (v8)
    {
      v9 = v8;
      v35 = *(a1 + 16);
      v10 = 1;
      v18 = a2;
      while (1)
      {
        v11 = inited;
        sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
        v12 = swift_initStackObject();
        *(v12 + 16) = xmmword_1004CEAA0;
        *(v12 + 32) = v10;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v14 = *(a1 + 24) >> 1, v15 = a1, v14 <= v35))
        {
          v15 = sub_100460CC0(isUniquelyReferenced_nonNull_native, v35 + 1, 1, a1);
          v14 = *(v15 + 3) >> 1;
        }

        v16 = *(v15 + 2);
        if (v14 <= v16)
        {
          break;
        }

        *&v15[8 * v16 + 32] = *(v12 + 32);

        ++*(v15 + 2);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1004CEAA0;
        *(v17 + 32) = v10;
        sub_1003A861C(v17, v19);
        v29 = v19[8];
        v30 = v19[9];
        v31 = v19[10];
        v32 = v20;
        v25 = v19[4];
        v26 = v19[5];
        v27 = v19[6];
        v28 = v19[7];
        v21 = v19[0];
        v22 = v19[1];
        v23 = v19[2];
        v24 = v19[3];
        if (sub_10000FE74(&v21) == 1)
        {
          goto LABEL_16;
        }

        v33[8] = v29;
        v33[9] = v30;
        v33[10] = v31;
        v34 = v32;
        v33[4] = v25;
        v33[5] = v26;
        v33[6] = v27;
        v33[7] = v28;
        v33[0] = v21;
        v33[1] = v22;
        v33[2] = v23;
        v33[3] = v24;

        inited = v11;
        v18(v15, v33);
        if (v3)
        {
          sub_100025F40(v19, &qword_1005CE210, &unk_1004D0930);
        }

        sub_1003AA1C8(v15, v18, v11);
        sub_100025F40(v19, &qword_1005CE210, &unk_1004D0930);

        ++v10;
        if (!--v9)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    sub_1004A6724(32);

    v36._countAndFlagsBits = sub_1004A5824();
    sub_1004A5994(v36);

    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003AA504(__int128 *a1)
{
  v2 = &v25;
  v3 = a1[9];
  v33 = a1[8];
  v34 = v3;
  v35 = a1[10];
  v36 = *(a1 + 176);
  v4 = a1[5];
  v29 = a1[4];
  v30 = v4;
  v5 = a1[7];
  v31 = a1[6];
  v32 = v5;
  v6 = a1[1];
  v25 = *a1;
  v26 = v6;
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  if (sub_10000FE74(&v25) != 1)
  {
    goto LABEL_11;
  }

  v8 = *(v1 + 20);
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 40;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v2 = result;
  v12 = *(v1 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  *(v1 + 20) = v13;
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v1 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v18;
  v19 = __OFADD__(v2, result);
  result += v2;
  if (!v19)
  {
    return result;
  }

  __break(1u);
LABEL_11:
  v20 = *(v2 + 144);
  *(v2 + 320) = *(v2 + 128);
  *(v2 + 336) = v20;
  *(v2 + 352) = *(v2 + 160);
  v37[176] = v36;
  v21 = v30;
  *(v2 + 256) = v29;
  *(v2 + 272) = v21;
  v22 = v32;
  *(v2 + 288) = v31;
  *(v2 + 304) = v22;
  v23 = v26;
  *(v2 + 192) = v25;
  *(v2 + 208) = v23;
  v24 = v28;
  *(v2 + 224) = v27;
  *(v2 + 240) = v24;
  return sub_1003AA66C(v37);
}

uint64_t sub_1003AA66C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v36;
  *(v2 + 20) = v11;
  v13 = *(a1 + 144);
  v36[8] = *(a1 + 128);
  v36[9] = v13;
  v36[10] = *(a1 + 160);
  v37 = *(a1 + 176);
  v14 = *(a1 + 80);
  v36[4] = *(a1 + 64);
  v36[5] = v14;
  v15 = *(a1 + 112);
  v36[6] = *(a1 + 96);
  v36[7] = v15;
  v16 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v16;
  v17 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v36[3] = v17;
  if (sub_10000FE88(v36) == 1)
  {
    v18 = UInt32.init(_:)(v36);
    v19 = *(v18 + 80);
    v38[4] = *(v18 + 64);
    v38[5] = v19;
    v38[6] = *(v18 + 96);
    v39 = *(v18 + 112);
    v20 = *(v18 + 16);
    v38[0] = *v18;
    v38[1] = v20;
    v21 = *(v18 + 48);
    v38[2] = *(v18 + 32);
    v38[3] = v21;
    v12 = v2;
    sub_10045D97C(v38);
    v23 = v8 + v22;
    if (!__OFADD__(v8, v22))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v24 = UInt32.init(_:)(v36);
  v25 = v24[9];
  v12[20] = v24[8];
  v12[21] = v25;
  v12[22] = v24[10];
  v26 = v24[5];
  v12[16] = v24[4];
  v12[17] = v26;
  v27 = v24[7];
  v12[18] = v24[6];
  v12[19] = v27;
  v28 = v24[1];
  v12[12] = *v24;
  v12[13] = v28;
  v29 = v24[3];
  v12[14] = v24[2];
  v12[15] = v29;
  result = sub_1004993BC(v38);
  v23 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_9:
  v30 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v30);
  if (v31)
  {
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v2 + 20);
  v10 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v10)
  {
    goto LABEL_15;
  }

  *(v2 + 20) = v34;
  v35 = __OFADD__(v23, result);
  result += v23;
  if (v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

void *sub_1003AA830(uint64_t a1)
{
  sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  v3 = _swiftEmptyArrayStorage;
  v4 = sub_1003AAAD8(_swiftEmptyArrayStorage, inited);
  swift_setDeallocating();
  if (!v4)
  {
    return v3;
  }

  v3 = sub_100447044(v4, 0);
  sub_1000510B4(a1, v7);
  v5 = sub_1003AAC54(v7, (v3 + 4), v4);
  result = sub_100025F40(v7, &qword_1005DBE08, &qword_1004FF1B0);
  if (v5 == v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1003AA91C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1003AA9EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100460CC0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003AAAD8(void *a1, void *a2)
{
  rawValue = a1;
  if (_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a1, a2))
  {
    if ((_s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(rawValue, a2) & 1) == 0)
    {
      v4 = a2[2];

      v5 = 1;
      do
      {
        rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

        if (rawValue[2] == v4)
        {
          if (!v4 || rawValue == a2)
          {
            goto LABEL_23;
          }

          v8 = 4;
          v9 = v4;
          while (rawValue[v8] == a2[v8])
          {
            ++v8;
            if (!--v9)
            {
              goto LABEL_23;
            }
          }
        }

        v6 = __OFADD__(v5++, 1);
      }

      while (!v6);
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    return 0;
  }

  if (!_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a2, rawValue) || (_s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(rawValue, a2) & 1) != 0)
  {
    return 0;
  }

  v10 = a2[2];

  v5 = -1;
  while (1)
  {
    rawValue = BodyStructure.index(before:)(rawValue).array._rawValue;

    if (rawValue[2] == v10)
    {
      break;
    }

LABEL_16:
    v6 = __OFSUB__(v5--, 1);
    if (v6)
    {
      goto LABEL_26;
    }
  }

  if (v10 && rawValue != a2)
  {
    v11 = 4;
    v12 = v10;
    while (rawValue[v11] == a2[v11])
    {
      ++v11;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_16;
  }

LABEL_23:

  return v5;
}

uint64_t sub_1003AAC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = v3[9];
  v40 = v3[10];
  v34 = v3[4];
  v35 = v3[5];
  v36 = v3[6];
  LOBYTE(v41) = *(v3 + 176);
  v37 = v3[7];
  v38 = v3[8];
  v30 = *v3;
  v31 = v3[1];
  v32 = v3[2];
  v33 = v3[3];
  if (!a2)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_14:
    rawValue = _swiftEmptyArrayStorage;
LABEL_17:
    *(a1 + 128) = v38;
    *(a1 + 144) = v39;
    *(a1 + 160) = v40;
    *(a1 + 64) = v34;
    *(a1 + 80) = v35;
    *(a1 + 96) = v36;
    *(a1 + 112) = v37;
    *a1 = v30;
    *(a1 + 16) = v31;
    *(a1 + 32) = v32;
    *(a1 + 48) = v33;
    *(a1 + 176) = v41;
    *(a1 + 184) = rawValue;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = v3;
    v7 = a2;
    rawValue = _swiftEmptyArrayStorage;
    v9 = 1;
    while (1)
    {
      sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
      v10 = swift_allocObject();
      v11 = BodyStructure.subpartCount.getter() + 1;
      *(v10 + 32) = v11;
      if (rawValue[2] == 1 && (rawValue == v10 || rawValue[4] == v11))
      {
        swift_setDeallocating();
        swift_deallocClassInstance();
        v5 = v9 - 1;
        goto LABEL_17;
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      v12 = v6[9];
      v76 = v6[8];
      v77 = v12;
      v78 = v6[10];
      v79 = *(v6 + 176);
      v13 = v6[5];
      v72 = v6[4];
      v73 = v13;
      v14 = v6[7];
      v74 = v6[6];
      v75 = v14;
      v15 = v6[1];
      v68 = *v6;
      v69 = v15;
      v16 = v6[3];
      v70 = v6[2];
      v71 = v16;
      sub_1003A861C(rawValue, &v42);
      v54[8] = v50;
      v54[9] = v51;
      v54[10] = v52;
      v55 = v53;
      v54[4] = v46;
      v54[5] = v47;
      v54[6] = v48;
      v54[7] = v49;
      v54[0] = v42;
      v54[1] = v43;
      v54[2] = v44;
      v54[3] = v45;
      if (sub_10000FE74(v54) == 1)
      {
        goto LABEL_19;
      }

      v17 = v6[9];
      v64 = v6[8];
      v65 = v17;
      v66 = v6[10];
      v67 = *(v6 + 176);
      v18 = v6[5];
      v60 = v6[4];
      v61 = v18;
      v19 = v6[7];
      v62 = v6[6];
      v63 = v19;
      v20 = v6[1];
      v56 = *v6;
      v57 = v20;
      v21 = v6[3];
      v58 = v6[2];
      v59 = v21;
      v22.array._rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

      v23 = v51;
      *(v7 + 128) = v50;
      *(v7 + 144) = v23;
      *(v7 + 160) = v52;
      *(v7 + 176) = v53;
      v24 = v47;
      *(v7 + 64) = v46;
      *(v7 + 80) = v24;
      v25 = v49;
      *(v7 + 96) = v48;
      *(v7 + 112) = v25;
      v26 = v43;
      *v7 = v42;
      *(v7 + 16) = v26;
      v27 = v45;
      *(v7 + 32) = v44;
      *(v7 + 48) = v27;
      if (v5 == v9)
      {
        break;
      }

      v7 += 184;
      rawValue = v22.array._rawValue;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    rawValue = v22.array._rawValue;
    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  sub_1004A6724(32);

  v80._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v80);

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void sub_1003AB028(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5 + 1;
      v6 = *v5;
      v15 = v7;
      if ((v6 & 0x8000000000000000) != 0)
      {
        v12 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
        v13 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
        sub_1004A6EB4(1uLL);
        swift_beginAccess();
        sub_1004A6EA4();
        if (v12)
        {
          sub_1004A6EC4(1u);
          swift_beginAccess();
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }

        sub_1003AB028(a1, v13);

        goto LABEL_4;
      }

      v8 = *(v6 + 16);
      v9 = *(v6 + 40);
      v10 = *(v6 + 64);
      v14 = *(v6 + 88);
      sub_1004A6EB4(0);
      if (v8)
      {
        sub_1004A6EC4(1u);
        swift_beginAccess();
        sub_1004A6EA4();
        if (v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1004A6EC4(0);
        if (v9)
        {
LABEL_8:
          sub_1004A6EC4(1u);
          swift_beginAccess();
          sub_1004A6EA4();
          v11 = v14;
          if (v10)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      sub_1004A6EC4(0);
      v11 = v14;
      if (v10)
      {
LABEL_9:
        sub_1004A6EC4(1u);
        swift_beginAccess();
        sub_1004A6EA4();
        if (!v11)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

LABEL_15:
      sub_1004A6EC4(0);
      if (!v11)
      {
LABEL_16:
        sub_1004A6EC4(0);
        goto LABEL_4;
      }

LABEL_3:
      sub_1004A6EC4(1u);
      swift_beginAccess();
      sub_1004A6EA4();
LABEL_4:
      --v4;
      v5 = v15;
    }

    while (v4);
  }
}

void sub_1003AB39C(uint64_t a1, uint64_t a2)
{
  v46 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v43 - v4;
  v5 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for ParameterValue(0);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  __chkstk_darwin(v11);
  v48 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v52 = &v43 - v15;
  v16 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v16 - 8);
  v51 = &v43 - v17;
  v50 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v50);
  v55 = &v43 - v18;
  v58 = type metadata accessor for MetadataOption(0);
  v19 = *(v58 - 8);
  __chkstk_darwin(v58);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = *(a2 + 16);
  sub_1004A6EB4(v25);
  v57 = v25;
  if (v25)
  {
    v26 = v3;
    v27 = 0;
    v56 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v28 = *(v19 + 72);
    v49 = (v54 + 48);
    v44 = (v26 + 48);
    v45 = v7;
    v29 = &unk_1004CF7E0;
    v54 = v28;
    v47 = v10;
    do
    {
      sub_1003B1888(v56 + v28 * v27, v24, type metadata accessor for MetadataOption);
      sub_1003B1888(v24, v21, type metadata accessor for MetadataOption);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v33 = v29;
        if (EnumCaseMultiPayload != 1)
        {
          v34 = v55;
          sub_100025FDC(v21, v55, &qword_1005DBCA8, &unk_100504BF0);
          sub_1004A6EB4(2uLL);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v35 = v51;
          sub_10000E268(v34 + *(v50 + 52), v51, &qword_1005D7F50, &unk_100502FF0);
          if ((*v49)(v35, 1, v53) == 1)
          {
            sub_1004A6EC4(0);
            goto LABEL_16;
          }

          v36 = v52;
          sub_1003B1820(v35, v52, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v37 = v48;
          sub_1003B1888(v36, v48, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v38 = *v37;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v38 + 16));
            v39 = *(v38 + 16);
            if (v39)
            {
              v40 = v38 + 40;
              do
              {

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v40 += 16;
                --v39;
              }

              while (v39);
            }

            sub_1003B18F0(v52, type metadata accessor for ParameterValue);
            v7 = v45;
            v10 = v47;
            v28 = v54;
LABEL_16:
            v29 = v33;
          }

          else
          {
            v29 = v33;
            sub_100025FDC(v37, v10, &qword_1005CDA78, v33);
            sub_1004A6EB4(0);
            sub_10000E268(v10, v7, &qword_1005CDA78, v33);
            if ((*v44)(v7, 1, v46) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v41 = v43;
              sub_100025FDC(v7, v43, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v42 = v41;
              v29 = v33;
              v10 = v47;
              sub_100025F40(v42, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v10, &qword_1005CDA78, v33);
            sub_1003B18F0(v52, type metadata accessor for ParameterValue);
            v28 = v54;
          }

          sub_1003B18F0(v24, type metadata accessor for MetadataOption);
          sub_100025F40(v55, &qword_1005DBCA8, &unk_100504BF0);
          goto LABEL_5;
        }

        sub_1004A6EB4(1uLL);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        v30 = *v21;
        sub_1004A6EB4(0);
        v31 = v30;
        v28 = v54;
        sub_1004A6EB4(v31);
      }

      sub_1003B18F0(v24, type metadata accessor for MetadataOption);
LABEL_5:
      ++v27;
    }

    while (v27 != v57);
  }
}

void sub_1003ABB18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v46 = &v45 - v5;
  v6 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v45 - v9;
  v55 = type metadata accessor for ParameterValue(0);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v54 = &v45 - v12;
  v13 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v13 - 8);
  v53 = &v45 - v14;
  v52 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v52);
  v59 = &v45 - v15;
  v16 = type metadata accessor for SearchReturnOption(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  v23 = *(a2 + 16);
  sub_1004A6EB4(v23);
  v60 = v23;
  if (v23)
  {
    v24 = 0;
    v25 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v26 = *(v17 + 72);
    v27 = v25;
    v51 = (v58 + 48);
    v45 = (v4 + 48);
    v56 = v16;
    v57 = v25;
    v58 = v26;
    v49 = v3;
    do
    {
      sub_1003B1888(v27 + v26 * v24, v22, type metadata accessor for SearchReturnOption);
      sub_1003B1888(v22, v19, type metadata accessor for SearchReturnOption);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v33 = *v19;
          v32 = *(v19 + 1);
          v34 = v19[8];
          sub_1004A6EB4(5uLL);
          sub_1004A6EB4(v34);
          v35 = v33;
          v27 = v57;
          sub_1004A6EE4(v35);
          v36 = v32;
          v26 = v58;
          sub_1004A6EE4(v36);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v30 = v59;
          sub_100025FDC(v19, v59, &qword_1005DBCA8, &unk_100504BF0);
          sub_1004A6EB4(6uLL);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v31 = v53;
          sub_10000E268(v30 + *(v52 + 52), v53, &qword_1005D7F50, &unk_100502FF0);
          if ((*v51)(v31, 1, v55) == 1)
          {
            sub_1004A6EC4(0);
          }

          else
          {
            v37 = v54;
            sub_1003B1820(v31, v54, type metadata accessor for ParameterValue);
            sub_1004A6EC4(1u);
            v38 = v50;
            sub_1003B1888(v37, v50, type metadata accessor for ParameterValue);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v39 = *v38;
              sub_1004A6EB4(1uLL);
              sub_1004A6EB4(*(v39 + 16));
              v40 = *(v39 + 16);
              if (v40)
              {
                v41 = v39 + 40;
                do
                {

                  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                  v41 += 16;
                  --v40;
                }

                while (v40);
              }

              sub_1003B18F0(v54, type metadata accessor for ParameterValue);
              v3 = v49;
              v27 = v57;
            }

            else
            {
              v42 = v47;
              sub_100025FDC(v38, v47, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1004A6EB4(0);
              v43 = v48;
              sub_10000E268(v42, v48, &qword_1005CDA78, &unk_1004CF7E0);
              if ((*v45)(v43, 1, v3) == 1)
              {
                sub_1004A6EB4(1uLL);
              }

              else
              {
                v44 = v46;
                sub_100025FDC(v43, v46, &qword_1005CDA68, &qword_1004CF7D0);
                sub_1004A6EB4(0);
                sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                sub_1000956A0();
                sub_1004A5564();
                sub_100025F40(v44, &qword_1005CDA68, &qword_1004CF7D0);
              }

              sub_100025F40(v42, &qword_1005CDA78, &unk_1004CF7E0);
              sub_1003B18F0(v54, type metadata accessor for ParameterValue);
              v27 = v57;
              v3 = v49;
            }
          }

          sub_1003B18F0(v22, type metadata accessor for SearchReturnOption);
          sub_100025F40(v59, &qword_1005DBCA8, &unk_100504BF0);
          v26 = v58;
          goto LABEL_6;
        }

        v28 = 0;
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v28 = 3;
        }

        else
        {
          v28 = 4;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      sub_1004A6EB4(v28);
LABEL_5:
      sub_1003B18F0(v22, type metadata accessor for SearchReturnOption);
LABEL_6:
      ++v24;
    }

    while (v24 != v60);
  }
}

void sub_1003AC298(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v38 = &v37 - v5;
  v6 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v6 - 8);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for ParameterValue(0);
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v44 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v48 = &v37 - v14;
  v15 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v15 - 8);
  v47 = &v37 - v16;
  v46 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v46);
  v18 = &v37 - v17;
  v52 = type metadata accessor for StoreModifier(0);
  v19 = *(v52 - 8);
  __chkstk_darwin(v52);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = *(a2 + 16);
  sub_1004A6EB4(v25);
  v51 = v25;
  if (v25)
  {
    v26 = 0;
    v50 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v49 = *(v19 + 72);
    v45 += 6;
    v39 = (v42 + 48);
    v42 = v11;
    v43 = v10;
    do
    {
      sub_1003B1888(v50 + v49 * v26, v24, type metadata accessor for StoreModifier);
      sub_1003B1888(v24, v21, type metadata accessor for StoreModifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100025FDC(v21, v18, &qword_1005DBCA8, &unk_100504BF0);
        sub_1004A6EB4(1uLL);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v28 = v47;
        sub_10000E268(&v18[*(v46 + 52)], v47, &qword_1005D7F50, &unk_100502FF0);
        if ((*v45)(v28, 1, v11) == 1)
        {
          sub_1004A6EC4(0);
        }

        else
        {
          v29 = v48;
          sub_1003B1820(v28, v48, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v30 = v44;
          sub_1003B1888(v29, v44, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v31 = *v30;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v31 + 16));
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = v31 + 40;
              do
              {

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v33 += 16;
                --v32;
              }

              while (v32);
            }

            sub_1003B18F0(v48, type metadata accessor for ParameterValue);
            v11 = v42;
            v10 = v43;
          }

          else
          {
            sub_100025FDC(v30, v10, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v34 = v40;
            sub_10000E268(v10, v40, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v39)(v34, 1, v41) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v35 = v38;
              sub_100025FDC(v34, v38, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v36 = v35;
              v11 = v42;
              v10 = v43;
              sub_100025F40(v36, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v10, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003B18F0(v48, type metadata accessor for ParameterValue);
          }
        }

        sub_1003B18F0(v24, type metadata accessor for StoreModifier);
        sub_100025F40(v18, &qword_1005DBCA8, &unk_100504BF0);
      }

      else
      {
        v27 = *v21;
        sub_1004A6EB4(0);
        sub_1004A6EF4(v27);
        sub_1003B18F0(v24, type metadata accessor for StoreModifier);
      }

      ++v26;
    }

    while (v26 != v51);
  }
}

void sub_1003AC97C(uint64_t a1, uint64_t a2)
{
  v50 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v3 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v46 - v4;
  v5 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v5 - 8);
  v49 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = v46 - v8;
  v58 = type metadata accessor for ParameterValue(0);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v57 = v46 - v11;
  v12 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v12 - 8);
  v56 = v46 - v13;
  v55 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v55);
  v15 = v46 - v14;
  Modifier = type metadata accessor for FetchModifier(0);
  v17 = *(Modifier - 8);
  __chkstk_darwin(Modifier);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v46 - v21;
  v23 = *(a2 + 16);
  sub_1004A6EB4(v23);
  if (v23)
  {
    v24 = v3;
    v25 = 0;
    v62 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v26 = *(v17 + 72);
    v54 = (v60 + 48);
    v48 = (v24 + 48);
    v27 = &unk_1004CF7E0;
    v59 = Modifier;
    v60 = v23;
    v61 = v26;
    v52 = v15;
    do
    {
      sub_1003B1888(v62 + v61 * v25, v22, type metadata accessor for FetchModifier);
      sub_1003B1888(v22, v19, type metadata accessor for FetchModifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_100025FDC(v19, v15, &qword_1005DBCA8, &unk_100504BF0);
          sub_1004A6EB4(2uLL);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v34 = v56;
          sub_10000E268(&v15[*(v55 + 52)], v56, &qword_1005D7F50, &unk_100502FF0);
          if ((*v54)(v34, 1, v58) == 1)
          {
            sub_1004A6EC4(0);
          }

          else
          {
            v35 = v57;
            sub_1003B1820(v34, v57, type metadata accessor for ParameterValue);
            sub_1004A6EC4(1u);
            v36 = v53;
            sub_1003B1888(v35, v53, type metadata accessor for ParameterValue);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v37 = *v36;
              sub_1004A6EB4(1uLL);
              sub_1004A6EB4(*(v37 + 16));
              v38 = *(v37 + 16);
              if (v38)
              {
                v39 = v37 + 40;
                do
                {

                  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                  v39 += 16;
                  --v38;
                }

                while (v38);
              }

              sub_1003B18F0(v57, type metadata accessor for ParameterValue);
              v23 = v60;
            }

            else
            {
              v40 = v27;
              v41 = v51;
              sub_100025FDC(v36, v51, &qword_1005CDA78, v40);
              sub_1004A6EB4(0);
              v42 = v49;
              sub_10000E268(v41, v49, &qword_1005CDA78, v40);
              v43 = (*v48)(v42, 1, v50);
              v23 = v60;
              if (v43 == 1)
              {
                sub_1004A6EB4(1uLL);
                v44 = v41;
              }

              else
              {
                v45 = v47;
                sub_100025FDC(v42, v47, &qword_1005CDA68, &qword_1004CF7D0);
                sub_1004A6EB4(0);
                v46[1] = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                sub_1000956A0();
                sub_1004A5564();
                sub_100025F40(v45, &qword_1005CDA68, &qword_1004CF7D0);
                v44 = v51;
              }

              sub_100025F40(v44, &qword_1005CDA78, v40);
              sub_1003B18F0(v57, type metadata accessor for ParameterValue);
              v27 = v40;
            }

            v15 = v52;
          }

          sub_1003B18F0(v22, type metadata accessor for FetchModifier);
          sub_100025F40(v15, &qword_1005DBCA8, &unk_100504BF0);
          goto LABEL_5;
        }

        v31 = *v19;
        v30 = *(v19 + 1);
        v32 = v19[8];
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(v32);
        v33 = v31;
        v23 = v60;
        sub_1004A6EE4(v33);
        sub_1004A6EE4(v30);
      }

      else
      {
        v28 = *v19;
        sub_1004A6EB4(0);
        sub_1004A6EF4(v28);
      }

      sub_1003B18F0(v22, type metadata accessor for FetchModifier);
LABEL_5:
      ++v25;
    }

    while (v25 != v23);
  }
}

void sub_1003AD0B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v19 = *v5;
      v20 = v7;
      v8 = v5[3];
      v21 = v5[2];
      v22 = v8;
      v9 = v21;
      if (v21 == 254)
      {
        v6 = 2;
      }

      else
      {
        if (v21 != 255)
        {
          v10 = *(&v21 + 1);
          v11 = *(&v22 + 1);
          sub_1004A6EB4(1uLL);
          if (v9)
          {
            sub_1004A6EB4(1uLL);
            v12 = v10;
            v13 = *(&v21 + 1);
            v15 = *(&v22 + 1);
            v14 = v22;
            sub_1003B17E0(v19, *(&v19 + 1), v20, *(&v20 + 1), v21 & 1);
            v16 = v14;
            v10 = v12;
            sub_1003A3378(v13, v16, v15);
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          }

          else
          {
            sub_1004A6EB4(0);
            v17 = *(&v21 + 1);
            v18 = v22;
            sub_1003B17E0(v19, *(&v19 + 1), v20, *(&v20 + 1), v21 & 1);
            sub_1003A3378(v17, v18, *(&v18 + 1));
          }

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          if (HIBYTE(v11) == 255)
          {
            sub_1004A6EC4(0);
          }

          else
          {
            sub_1004A6EC4(1u);
            if ((v11 & 0x100000000000000) != 0)
            {
              sub_1004A6EB4(1uLL);
              sub_1003AD2A4(a1, v10);
            }

            else
            {
              sub_1004A6EB4(0);
              swift_beginAccess();
              sub_1004A6EA4();
            }
          }

          sub_1003A34D8(&v19);
          goto LABEL_5;
        }

        v6 = 0;
      }

      sub_1004A6EB4(v6);
LABEL_5:
      v5 += 4;
      --v4;
    }

    while (v4);
  }
}

void sub_1003AD2A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 55);
    do
    {
      v6 = *(v5 - 23);
      v7 = *(v5 - 15);
      v8 = *(v5 - 7) | ((*(v5 - 3) | (*(v5 - 1) << 16)) << 32);
      if (*v5)
      {
        sub_1004A6EB4(1uLL);

        sub_1003AD2A4(a1, v6);
        sub_1003A30F4(v6, v7, v8, 1);
      }

      else
      {
        sub_1004A6EB4(0);
        swift_beginAccess();
        sub_1004A6EA4();
      }

      v5 += 24;
      --v4;
    }

    while (v4);
  }
}

void sub_1003AD398(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  v27 = v4;
  if (v4)
  {
    v5 = 0;
    v26 = a2 + 32;
    do
    {
      v6 = (v26 + (v5 << 6));
      v7 = v6[1];
      v28 = *v6;
      v29 = v7;
      v8 = v6[3];
      v30 = v6[2];
      v31 = v8;
      v9 = v28;
      v10 = *(&v30 + 5) | (BYTE7(v30) << 16);
      if (v10 >> 22)
      {
        v11 = v30;
        v12 = *(&v31 + 1);
        if (v10 >> 22 != 1)
        {
          v16 = v30 | ((*(&v30 + 1) | ((*&v10 & 0xFFFFFFLL) << 32)) << 8);
          v17 = *(&v30 + 1) | v31 | *(&v31 + 1);
          if (v16 == 0x8000000000000000 && (v29 | *(&v28 + 1) | v28 | *(&v29 + 1) | v17) == 0)
          {
            sub_1004A6EB4(0);
          }

          else
          {
            if (v16 == 0x8000000000000000 && v28 == 1 && (v29 | *(&v28 + 1) | *(&v29 + 1) | v17) == 0)
            {
              v21 = 1;
            }

            else
            {
              v21 = 4;
            }

            sub_1004A6EB4(v21);
          }

          goto LABEL_4;
        }

        v25 = *(&v30 + 1);
        sub_1004A6EB4(3uLL);
        if (v11)
        {
          sub_1004A6EB4(1uLL);
          v13 = v31;
          v24 = *(&v30 + 1);
          sub_1003B17E0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30 & 1);
          sub_1003A3378(v24, v13, *(&v13 + 1));
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          sub_1004A6EB4(0);
          v22 = *(&v30 + 1);
          v23 = v31;
          sub_1003B17E0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30 & 1);
          sub_1003A3378(v22, v23, *(&v23 + 1));
        }

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        if (HIBYTE(v12) != 255)
        {
          sub_1004A6EC4(1u);
          if ((v12 & 0x100000000000000) != 0)
          {
            sub_1004A6EB4(1uLL);
            sub_1003AD2A4(a1, v25);
          }

          else
          {
            sub_1004A6EB4(0);
            swift_beginAccess();
            sub_1004A6EA4();
          }

LABEL_31:
          sub_1002E8088(&v28);
          goto LABEL_4;
        }

        sub_1004A6EC4(0);
        sub_1002E8088(&v28);
      }

      else
      {
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(*(v9 + 16));
        v14 = *(v9 + 16);
        if (v14)
        {
          v15 = v9 + 32;

          do
          {
            ++v15;
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            --v14;
          }

          while (v14);
          goto LABEL_31;
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v27);
  }
}

void sub_1003AD7B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v17 = *v5;
      v18 = v7;
      v8 = v5[3];
      v19 = v5[2];
      v20 = v8;
      v9 = v19;
      v10 = *(&v19 + 1);
      v11 = *(&v8 + 1);
      if (v19 > 0xFDu)
      {
        if (v19 == 254)
        {
          v6 = 1;
        }

        else
        {
          if (v19 != 255)
          {
LABEL_13:
            sub_1004A6EB4(4uLL);
            if (v9)
            {
              sub_1004A6EB4(1uLL);
              v15 = v20;
              v16 = *(&v19 + 1);
              v12 = *(&v20 + 1);
              sub_1003B17E0(v17, *(&v17 + 1), v18, *(&v18 + 1), v19 & 1);
              sub_1003A3378(v16, v15, v12);
              _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            }

            else
            {
              sub_1004A6EB4(0);
              v13 = *(&v19 + 1);
              v14 = v20;
              sub_1003B17E0(v17, *(&v17 + 1), v18, *(&v18 + 1), v19 & 1);
              sub_1003A3378(v13, v14, *(&v14 + 1));
            }

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            if (HIBYTE(v11) == 255)
            {
              sub_1004A6EC4(0);
            }

            else
            {
              sub_1004A6EC4(1u);
              if ((v11 & 0x100000000000000) != 0)
              {
                sub_1004A6EB4(1uLL);
                sub_1003AD2A4(a1, v10);
              }

              else
              {
                sub_1004A6EB4(0);
                swift_beginAccess();
                sub_1004A6EA4();
              }
            }

            sub_1003A3404(&v17);
            goto LABEL_5;
          }

          v6 = 0;
        }
      }

      else if (v19 == 252)
      {
        v6 = 3;
      }

      else
      {
        if (v19 != 253)
        {
          goto LABEL_13;
        }

        v6 = 2;
      }

      sub_1004A6EB4(v6);
LABEL_5:
      v5 += 4;
      --v4;
    }

    while (v4);
  }
}

void sub_1003AD9BC(uint64_t a1, uint64_t a2)
{
  v77 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v62 - v4;
  v5 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v5 - 8);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v62 - v8;
  matched = type metadata accessor for SequenceMatchData(0);
  v86 = *(matched - 8);
  v87 = matched;
  __chkstk_darwin(matched);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
  __chkstk_darwin(v12 - 8);
  v84 = &v62 - v13;
  v83 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v68 = &v62 - v14;
  v15 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v15 - 8);
  v82 = &v62 - v16;
  v89 = type metadata accessor for QResyncParameter(0);
  __chkstk_darwin(v89);
  v90 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v62 - v18;
  v19 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v19 - 8);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v64 = &v62 - v22;
  v81 = type metadata accessor for ParameterValue(0);
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v67 = (&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v80 = &v62 - v25;
  v26 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v26 - 8);
  v79 = &v62 - v27;
  v78 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v78);
  v88 = &v62 - v28;
  v29 = type metadata accessor for SelectParameter(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v62 - v34;
  v36 = *(a2 + 16);
  sub_1004A6EB4(v36);
  v92 = v36;
  if (v36)
  {
    v37 = 0;
    v91 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v38 = *(v30 + 72);
    v74 = (v86 + 48);
    v75 = (v85 + 48);
    v72 += 6;
    v73 = (v3 + 48);
    v63 += 6;
    v85 = v11;
    v86 = v38;
    v76 = v29;
    do
    {
      sub_1003B1888(v91 + v38 * v37, v35, type metadata accessor for SelectParameter);
      sub_1003B1888(v35, v32, type metadata accessor for SelectParameter);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v42 = v11;
        v43 = v88;
        sub_100025FDC(v32, v88, &qword_1005DBCA8, &unk_100504BF0);
        sub_1004A6EB4(0);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v44 = v79;
        sub_10000E268(v43 + *(v78 + 52), v79, &qword_1005D7F50, &unk_100502FF0);
        if ((*v72)(v44, 1, v81) == 1)
        {
          sub_1004A6EC4(0);
          v11 = v42;
        }

        else
        {
          v51 = v80;
          sub_1003B1820(v44, v80, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v52 = v67;
          sub_1003B1888(v51, v67, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v53 = *v52;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v53 + 16));
            v54 = *(v53 + 16);
            if (v54)
            {
              v55 = v53 + 40;
              do
              {

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v55 += 16;
                --v54;
              }

              while (v54);
            }

            sub_1003B18F0(v80, type metadata accessor for ParameterValue);
            v11 = v85;
          }

          else
          {
            v59 = v64;
            sub_100025FDC(v52, v64, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v60 = v65;
            sub_10000E268(v59, v65, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v63)(v60, 1, v66) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v61 = v62;
              sub_100025FDC(v60, v62, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              sub_100025F40(v61, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v59, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003B18F0(v80, type metadata accessor for ParameterValue);
            v11 = v42;
          }

          v38 = v86;
        }

        sub_1003B18F0(v35, type metadata accessor for SelectParameter);
        sub_100025F40(v88, &qword_1005DBCA8, &unk_100504BF0);
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v40 = v90;
        sub_1003B1820(v32, v90, type metadata accessor for QResyncParameter);
        sub_1004A6EB4(1uLL);
        sub_1004A6EE4(*v40);
        sub_1004A6EF4(*(v40 + 8));
        v41 = v82;
        sub_10000E268(v40 + *(v89 + 24), v82, &qword_1005CD510, &unk_1004CF2E0);
        if ((*v75)(v41, 1, v83) == 1)
        {
          sub_1004A6EC4(0);
        }

        else
        {
          v45 = v68;
          sub_100025FDC(v41, v68, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EC4(1u);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          v11 = v85;
          sub_1004A5564();
          v46 = v45;
          v38 = v86;
          sub_100025F40(v46, &unk_1005D91B0, &unk_1004CF400);
        }

        v47 = v90;
        v48 = v84;
        sub_10000E268(v90 + *(v89 + 28), v84, &qword_1005DBE10, &unk_10050C850);
        if ((*v74)(v48, 1, v87) != 1)
        {
          sub_1003B1820(v48, v11, type metadata accessor for SequenceMatchData);
          sub_1004A6EC4(1u);
          v49 = v69;
          sub_10000E268(v11, v69, &qword_1005CD1C0, &unk_1004CEC40);
          v50 = *v73;
          if ((*v73)(v49, 1, v77) == 1)
          {
            sub_1004A6EB4(1uLL);
          }

          else
          {
            v56 = v71;
            sub_100025FDC(v49, v71, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_1004A6EB4(0);
            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            v11 = v85;
            sub_1004A5564();
            sub_100025F40(v56, &qword_1005CD1D0, &unk_1004CF2C0);
          }

          v57 = v70;
          sub_10000E268(&v11[*(v87 + 20)], v70, &qword_1005CD1C0, &unk_1004CEC40);
          if (v50(v57, 1, v77) == 1)
          {
            sub_1004A6EB4(1uLL);
          }

          else
          {
            v58 = v71;
            sub_100025FDC(v57, v71, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_1004A6EB4(0);
            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            v11 = v85;
            sub_1004A5564();
            sub_100025F40(v58, &qword_1005CD1D0, &unk_1004CF2C0);
          }

          sub_1003B18F0(v11, type metadata accessor for SequenceMatchData);
          sub_1003B18F0(v90, type metadata accessor for QResyncParameter);
          sub_1003B18F0(v35, type metadata accessor for SelectParameter);
          v38 = v86;
          goto LABEL_5;
        }

        sub_1004A6EC4(0);
        sub_1003B18F0(v47, type metadata accessor for QResyncParameter);
      }

      else
      {
        sub_1004A6EB4(2uLL);
      }

      sub_1003B18F0(v35, type metadata accessor for SelectParameter);
LABEL_5:
      ++v37;
    }

    while (v37 != v92);
  }
}

void sub_1003AE7F8(uint64_t a1, uint64_t a2)
{
  v44 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v52 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v40 - v3;
  v4 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v4 - 8);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v40 - v7;
  v8 = type metadata accessor for ParameterValue(0);
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v50 = &v40 - v11;
  v12 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v49 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v49);
  v16 = &v40 - v15;
  Parameter = type metadata accessor for CreateParameter(0);
  v18 = *(Parameter - 8);
  __chkstk_darwin(Parameter);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  v54 = a2;
  v24 = *(a2 + 16);
  sub_1004A6EB4(v24);
  v55 = v24;
  if (v24)
  {
    v25 = 0;
    v54 += (*(v18 + 80) + 32) & ~*(v18 + 80);
    v26 = *(v18 + 72);
    v46 = v8;
    v47 = (v51 + 48);
    v41 = (v52 + 6);
    v52 = v20;
    v53 = v26;
    v51 = v23;
    v48 = Parameter;
    do
    {
      sub_1003B1888(v54 + v53 * v25, v23, type metadata accessor for CreateParameter);
      sub_1003B1888(v23, v20, type metadata accessor for CreateParameter);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = v16;
        v28 = v14;
        v29 = *v20;
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v29 + 16));
        v30 = *(v29 + 16);
        if (v30)
        {
          v31 = v29 + 40;
          do
          {
            sub_1004A5814();

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            v31 += 16;
            --v30;
          }

          while (v30);
          v23 = v51;
          sub_1003B18F0(v51, type metadata accessor for CreateParameter);

          v8 = v46;
          v14 = v28;
          v16 = v27;
          v20 = v52;
        }

        else
        {
          sub_1003B18F0(v23, type metadata accessor for CreateParameter);

          v14 = v28;
          v16 = v27;
        }
      }

      else
      {
        sub_100025FDC(v20, v16, &qword_1005DBCA8, &unk_100504BF0);
        sub_1004A6EB4(0);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_10000E268(&v16[*(v49 + 52)], v14, &qword_1005D7F50, &unk_100502FF0);
        if ((*v47)(v14, 1, v8) == 1)
        {
          sub_1004A6EC4(0);
        }

        else
        {
          v32 = v50;
          sub_1003B1820(v14, v50, type metadata accessor for ParameterValue);
          sub_1004A6EC4(1u);
          v33 = v45;
          sub_1003B1888(v32, v45, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v34 = *v33;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v34 + 16));
            v35 = *(v34 + 16);
            if (v35)
            {
              v36 = v34 + 40;
              do
              {

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v36 += 16;
                --v35;
              }

              while (v35);
            }

            sub_1003B18F0(v50, type metadata accessor for ParameterValue);
            v8 = v46;
            v23 = v51;
            v20 = v52;
          }

          else
          {
            v37 = v42;
            sub_100025FDC(v33, v42, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v38 = v43;
            sub_10000E268(v37, v43, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v41)(v38, 1, v44) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v39 = v40;
              sub_100025FDC(v38, v40, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              sub_100025F40(v39, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v37, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1003B18F0(v50, type metadata accessor for ParameterValue);
            v23 = v51;
            v20 = v52;
          }
        }

        sub_1003B18F0(v23, type metadata accessor for CreateParameter);
        sub_100025F40(v16, &qword_1005DBCA8, &unk_100504BF0);
      }

      ++v25;
    }

    while (v25 != v55);
  }
}

void sub_1003AEFBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = *v6;
      v8 = *(v6 + 8);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          sub_1004A6EB4(7uLL);
          sub_1004A6EB4(*(v7 + 16));
          v12 = *(v7 + 16);
          if (v12)
          {
            v13 = (v7 + 40);
            do
            {
              v14 = *v13;
              v13 += 4;
              sub_1004A6EB4(v14 | (v14 << 32));
              --v12;
            }

            while (v12);
          }
        }

        else
        {
          sub_1004A6EB4(qword_1004FF818[v7]);
        }
      }

      else if (v8)
      {
        sub_1004A6EB4(4uLL);
        sub_1004A6EB4(*(v7 + 16));
        v15 = *(v7 + 16);
        if (v15)
        {
          v16 = (v7 + 40);
          do
          {
            v17 = *v16;
            v16 += 4;
            sub_1004A6EB4(v17 | (v17 << 32));
            --v15;
          }

          while (v15);
        }
      }

      else
      {
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(*(v7 + 16));
        v9 = *(v7 + 16);
        if (v9)
        {
          v10 = (v7 + 40);
          do
          {
            v11 = *v10;
            v10 += 4;
            sub_1004A6EB4(v11 | (v11 << 32));
            --v9;
          }

          while (v9);
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_1003AF0EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  v14 = v3;
  if (v3)
  {
    v4 = 0;
    v13 = a2 + 32;
    while (1)
    {
      v5 = (v13 + (v4 << 6));
      v6 = v5[4];
      v17 = v5[7];
      v18 = v5[6];
      swift_beginAccess();
      sub_1004A6EA4();
      v15 = v4;
      if (v6)
      {
        sub_1004A6EC4(1u);
        sub_1004A55B4();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v17 + 16));
      v7 = *(v17 + 16);

      swift_retain_n();
      v16 = v7;
      if (v7)
      {
        break;
      }

LABEL_3:

      ++v4;
      if (v15 + 1 == v14)
      {
        return;
      }
    }

    v8 = 0;
    while (v8 < *(v18 + 16))
    {
      if (v8 >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      v9 = *(v18 + 32 + 24 * v8);
      v10 = *(v17 + 32 + 8 * v8);

      if (v9)
      {
        swift_beginAccess();
        sub_1004A6EA4();
        sub_1004A6EB4(*(v10 + 16));
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = v10 + 54;
          do
          {
            v12 += 24;
            swift_beginAccess();
            sub_1004A6EA4();
            --v11;
          }

          while (v11);
        }

        ++v8;

        if (v8 != v16)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

void sub_1003AF39C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      if (v5)
      {
        sub_1004A6EB4(0);
        sub_1004A5834();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

      --v3;
    }

    while (v3);
  }
}

void sub_1003AF454(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1004A6EB4(v4);
  v81 = v4;
  if (!v4)
  {
    return;
  }

  v5 = 0;
  v80 = a2 + 32;
  while (1)
  {
    v82 = v5;
    v6 = (v80 + 184 * v5);
    v7 = v6[9];
    v8 = v6[7];
    v96 = v6[8];
    v97 = v7;
    v9 = v6[9];
    v98 = v6[10];
    v10 = v6[5];
    v11 = v6[3];
    v92 = v6[4];
    v93 = v10;
    v12 = v6[5];
    v13 = v6[7];
    v94 = v6[6];
    v95 = v13;
    v14 = v6[1];
    v88 = *v6;
    v89 = v14;
    v15 = v6[3];
    v17 = *v6;
    v16 = v6[1];
    v90 = v6[2];
    v91 = v15;
    v100[8] = v96;
    v100[9] = v9;
    v100[10] = v6[10];
    v100[4] = v92;
    v100[5] = v12;
    v100[6] = v94;
    v100[7] = v8;
    v100[0] = v17;
    v100[1] = v16;
    v99 = *(v6 + 176);
    v101 = *(v6 + 176);
    v100[2] = v90;
    v100[3] = v11;
    if (sub_10000FE88(v100) != 1)
    {
      break;
    }

    v18 = UInt32.init(_:)(v100);
    __dst[8] = v96;
    __dst[9] = v97;
    __dst[10] = v98;
    LOBYTE(__dst[11]) = v99;
    __dst[4] = v92;
    __dst[5] = v93;
    __dst[6] = v94;
    __dst[7] = v95;
    __dst[0] = v88;
    __dst[1] = v89;
    __dst[2] = v90;
    __dst[3] = v91;
    v19 = UInt32.init(_:)(__dst);
    sub_1004A6EB4(1uLL);
    v20 = *v18;
    sub_100259A40(v19, v85);
    sub_1003AF454(a1, v20);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v21 = v18[4];
    if (!v21)
    {
      goto LABEL_3;
    }

    v22 = v18[5];
    v83 = v18[9];
    v72 = v18[10];
    v73 = v18[11];
    v71 = v18[13];
    v74 = v18[14];
    v76 = v18[7];
    sub_1004A6EC4(1u);
    v23 = *(v22 + 16);
    sub_1004A6EB4(v23);

    if (v23)
    {
      v24 = 0;
      v25 = v22 + 40;
      v26 = v21 + 40;
      while (v24 < *(v21 + 16))
      {
        ++v24;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v25 += 16;
        v26 += 16;
        if (v23 == v24)
        {
          goto LABEL_11;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_11:

    if (v76 == 1)
    {
      goto LABEL_3;
    }

    sub_1004A6EC4(1u);
    if (v76)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v27 = *(v72 + 16);
      sub_1004A6EB4(v27);

      if (v27)
      {
        v28 = 0;
        v29 = v72 + 40;
        v30 = v83 + 40;
        while (v28 < *(v83 + 16))
        {
          ++v28;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v29 += 16;
          v30 += 16;
          if (v27 == v28)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_86;
      }

LABEL_17:

      v31 = v73;
      v32 = v74;
      if (!v73)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_1004A6EC4(0);
      v31 = v73;
      v32 = v74;
      if (!v73)
      {
        goto LABEL_3;
      }
    }

    sub_1004A6EC4(1u);
    sub_1004A6EB4(*(v31 + 16));
    v61 = *(v31 + 16);
    if (v61)
    {
      v62 = v31 + 40;
      do
      {

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v62 += 16;
        --v61;
      }

      while (v61);
    }

    if (v32)
    {
      sub_1004A6EC4(1u);
      if (v71)
      {
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v32 + 16));
      v65 = *(v32 + 16);
      if (v65)
      {
        v66 = (v32 + 55);
        do
        {
          v67 = *(v66 - 23);
          if (*v66)
          {
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(v67);
          }

          else
          {
            sub_1004A6EB4(0);
            if (v67)
            {
              sub_1004A6EC4(1u);
              swift_beginAccess();
              sub_1004A6EA4();
            }

            else
            {
              sub_1004A6EC4(0);
            }
          }

          v66 += 24;
          --v65;
        }

        while (v65);
      }

      goto LABEL_4;
    }

LABEL_3:
    sub_1004A6EC4(0);
LABEL_4:
    sub_100051110(&v88);
    v5 = v82 + 1;
    if (v82 + 1 == v81)
    {
      return;
    }
  }

  v33 = UInt32.init(_:)(v100);
  sub_1004A6EB4(0);
  v34 = *v33 >> 62;
  if (!v34)
  {
    sub_1004A6EB4(0);
    sub_1000510B4(&v88, __dst);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

LABEL_25:

    goto LABEL_28;
  }

  if (v34 != 1)
  {
    v39 = *((*v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    sub_1004A6EB4(2uLL);
    sub_1000510B4(&v88, __dst);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1004A6EB4(v39);
    goto LABEL_25;
  }

  memcpy(__dst, ((*v33 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
  sub_1004A6EB4(1uLL);
  sub_1000510B4(&v88, v85);
  sub_100259990(__dst, v85);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v123 = __dst[5];
  v124 = __dst[6];
  v125 = __dst[7];
  v126 = *&__dst[8];
  v119 = __dst[1];
  v120 = __dst[2];
  v121 = __dst[3];
  v122 = __dst[4];
  Envelope.hash(into:)(a1);
  v85[8] = *(&__dst[16] + 8);
  v85[9] = *(&__dst[17] + 8);
  v85[10] = *(&__dst[18] + 8);
  v86 = BYTE8(__dst[19]);
  v85[4] = *(&__dst[12] + 8);
  v85[5] = *(&__dst[13] + 8);
  v85[6] = *(&__dst[14] + 8);
  v85[7] = *(&__dst[15] + 8);
  v85[0] = *(&__dst[8] + 8);
  v85[1] = *(&__dst[9] + 8);
  v85[2] = *(&__dst[10] + 8);
  v85[3] = *(&__dst[11] + 8);
  if (sub_10000FE88(v85) == 1)
  {
    v35 = UInt32.init(_:)(v85);
    sub_1004A6EB4(1uLL);
    sub_1003AF454(a1, *v35);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v36 = *(v35 + 72);
    v115 = *(v35 + 56);
    v116 = v36;
    v37 = *(v35 + 104);
    v117 = *(v35 + 88);
    v118 = v37;
    v38 = *(v35 + 40);
    v113 = *(v35 + 24);
    v114 = v38;
    sub_1003B053C(a1);
  }

  else
  {
    v40 = UInt32.init(_:)(v85);
    sub_1004A6EB4(0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v40);
    v41 = *(v40 + 24);
    v42 = *(v40 + 56);
    v110 = *(v40 + 40);
    v111 = v42;
    v112 = *(v40 + 72);
    v43 = *(v40 + 8);
    v109 = v41;
    v108 = v43;
    BodyStructure.Fields.hash(into:)(a1);
    v44 = *(v40 + 136);
    v104 = *(v40 + 120);
    v105 = v44;
    v106 = *(v40 + 152);
    v107 = *(v40 + 168);
    v45 = *(v40 + 104);
    v102 = *(v40 + 88);
    v103 = v45;
    sub_1003B0920(a1);
  }

  sub_1004A6EB4(*&__dst[20]);
  sub_1002599EC(__dst);
LABEL_28:
  v47 = v33[2];
  v46 = v33[3];
  v78 = v33;
  v48 = *(v46 + 16);
  sub_1004A6EB4(v48);

  if (v48)
  {
    v49 = 0;
    v50 = v46 + 40;
    v51 = v47 + 40;
    while (v49 < *(v47 + 16))
    {
      ++v49;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v50 += 16;
      v51 += 16;
      if (v48 == v49)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_32:

  if (v78[5])
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v78[7])
    {
      goto LABEL_34;
    }

LABEL_37:
    sub_1004A6EC4(0);
    if (v78[9])
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  sub_1004A6EC4(0);
  if (!v78[7])
  {
    goto LABEL_37;
  }

LABEL_34:
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v78[9])
  {
LABEL_35:
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_39;
  }

LABEL_38:
  sub_1004A6EC4(0);
LABEL_39:
  sub_1004A6EB4(v78[10]);
  v52 = v78[12];
  if (v52 == 1)
  {
    goto LABEL_3;
  }

  v53 = v78[14];
  v54 = v78[16];
  v84 = v78[17];
  v55 = v78[21];
  v75 = v78[20];
  v77 = v78[18];
  sub_1004A6EC4(1u);
  if (v52)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v53 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v53 == 1)
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(1u);
  if (!v53)
  {
    sub_1004A6EC4(0);
    v60 = v77;
    if (v77)
    {
LABEL_59:
      sub_1004A6EC4(1u);
      sub_1004A6EB4(*(v60 + 16));
      v63 = *(v60 + 16);
      if (v63)
      {
        v64 = v60 + 40;
        do
        {

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v64 += 16;
          --v63;
        }

        while (v63);
      }

      if (v55)
      {
        sub_1004A6EC4(1u);
        if (v75)
        {
          sub_1004A6EC4(1u);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          sub_1004A6EC4(0);
        }

        sub_1004A6EB4(*(v55 + 16));
        v68 = *(v55 + 16);
        if (v68)
        {
          v69 = (v55 + 55);
          do
          {
            v70 = *(v69 - 23);
            if (*v69)
            {
              sub_1004A6EB4(1uLL);
              sub_1004A6EB4(v70);
            }

            else
            {
              sub_1004A6EB4(0);
              if (v70)
              {
                sub_1004A6EC4(1u);
                swift_beginAccess();
                sub_1004A6EA4();
              }

              else
              {
                sub_1004A6EC4(0);
              }
            }

            v69 += 24;
            --v68;
          }

          while (v68);
        }

        goto LABEL_4;
      }

      goto LABEL_3;
    }

    goto LABEL_3;
  }

  v79 = v55;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v56 = *(v84 + 16);
  sub_1004A6EB4(v56);

  if (!v56)
  {
LABEL_49:

    v55 = v79;
    v60 = v77;
    if (v77)
    {
      goto LABEL_59;
    }

    goto LABEL_3;
  }

  v57 = 0;
  v58 = v84 + 40;
  v59 = v54 + 40;
  while (v57 < *(v54 + 16))
  {
    ++v57;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v58 += 16;
    v59 += 16;
    if (v56 == v57)
    {
      goto LABEL_49;
    }
  }

LABEL_87:
  __break(1u);
}

void sub_1003B0040(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (HIBYTE(a4) == 255)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if ((a4 & 0x100000000000000) != 0)
    {
      sub_1004A6EB4(1uLL);

      sub_1003AD2A4(a1, a2);
    }

    else
    {
      sub_1004A6EB4(0);
      swift_beginAccess();
      sub_1004A6EA4();
    }
  }
}

void sub_1003B0110(uint64_t a1)
{
  v24 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = &v21 - v4;
  v5 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v5 - 8);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  matched = type metadata accessor for SequenceMatchData(0);
  v11 = *(matched - 8);
  __chkstk_darwin(matched);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C9C0(&qword_1005DBE10, &unk_10050C850);
  __chkstk_darwin(v14 - 8);
  v16 = &v21 - v15;
  sub_10000E268(v1, &v21 - v15, &qword_1005DBE10, &unk_10050C850);
  if ((*(v11 + 48))(v16, 1, matched) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1003B1820(v16, v13, type metadata accessor for SequenceMatchData);
    sub_1004A6EC4(1u);
    sub_10000E268(v13, v9, &qword_1005CD1C0, &unk_1004CEC40);
    v17 = *(v3 + 48);
    if (v17(v9, 1, v2) == 1)
    {
      sub_1004A6EB4(1uLL);
    }

    else
    {
      v18 = v23;
      sub_100025FDC(v9, v23, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v18, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    v19 = v22;
    sub_10000E268(&v13[*(matched + 20)], v22, &qword_1005CD1C0, &unk_1004CEC40);
    if (v17(v19, 1, v2) == 1)
    {
      sub_1004A6EB4(1uLL);
    }

    else
    {
      v20 = v23;
      sub_100025FDC(v19, v23, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v20, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    sub_1003B18F0(v13, type metadata accessor for SequenceMatchData);
  }
}