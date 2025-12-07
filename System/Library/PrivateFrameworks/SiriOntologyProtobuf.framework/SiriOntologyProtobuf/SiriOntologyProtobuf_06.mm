uint64_t sub_2686112F4(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    v5 = (a2 + 32);
    for (i = v2 - 1; ; --i)
    {
      v7 = v4[4];
      v8 = v4[5];
      v9 = v4[2];
      *&v49[16] = v4[3];
      v50 = v7;
      *v51 = v8;
      *&v51[16] = *(v4 + 12);
      v10 = v4[1];
      v47 = *v4;
      v48 = v10;
      *v49 = v9;
      v11 = v5[1];
      v52 = *v5;
      v53 = v11;
      v12 = v5[2];
      v13 = v5[3];
      v14 = v5[4];
      v15 = v5[5];
      *&v56[16] = *(v5 + 12);
      v55 = v14;
      *v56 = v15;
      *v54 = v12;
      *&v54[16] = v13;
      if (v47 != v52 && (sub_268689E14() & 1) == 0 || v48 != v53 && (sub_268689E14() & 1) == 0 || v49[0] != v54[0] || *&v49[8] != *&v54[8] && (sub_268689E14() & 1) == 0 || v49[24] != v54[24])
      {
        return 0;
      }

      v16 = v50;
      v17 = v55;
      sub_268618E10(&v47, v46);
      sub_268618E10(&v52, v46);
      if ((sub_26860E120(v16, v17, sub_2685CD9AC) & 1) == 0)
      {
        goto LABEL_73;
      }

      v18 = *(&v50 + 1);
      if (v51[0])
      {
        v18 = *(&v50 + 1) != 0;
      }

      if (v56[0])
      {
        if (*(&v55 + 1))
        {
          if (v18 != 1)
          {
            goto LABEL_73;
          }
        }

        else if (v18)
        {
          goto LABEL_73;
        }
      }

      else if (v18 != *(&v55 + 1))
      {
        goto LABEL_73;
      }

      v20 = *&v51[8];
      v19 = *&v51[16];
      v22 = *&v56[8];
      v21 = *&v56[16];
      v23 = *&v51[16] >> 62;
      v24 = *&v56[16] >> 62;
      if (*&v51[16] >> 62 == 3)
      {
        break;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v31 = *(*&v51[8] + 16);
          v30 = *(*&v51[8] + 24);
          v28 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v28)
          {
            goto LABEL_76;
          }

          goto LABEL_37;
        }

        v25 = 0;
        if (v24 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v23)
      {
        LODWORD(v25) = *&v51[12] - *&v51[8];
        if (__OFSUB__(*&v51[12], *&v51[8]))
        {
          goto LABEL_77;
        }

        v25 = v25;
        if (v24 <= 1)
        {
LABEL_38:
          if (v24)
          {
            LODWORD(v29) = *&v56[12] - *&v56[8];
            if (__OFSUB__(*&v56[12], *&v56[8]))
            {
              goto LABEL_75;
            }

            v29 = v29;
          }

          else
          {
            v29 = v56[22];
          }

          goto LABEL_44;
        }
      }

      else
      {
        v25 = v51[22];
        if (v24 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_31:
      if (v24 != 2)
      {
        if (v25)
        {
          goto LABEL_73;
        }

LABEL_49:
        sub_268618E6C(&v52);
        sub_268618E6C(&v47);
        goto LABEL_70;
      }

      v27 = *(*&v56[8] + 16);
      v26 = *(*&v56[8] + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
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
      }

LABEL_44:
      if (v25 != v29)
      {
LABEL_73:
        sub_268618E6C(&v52);
        sub_268618E6C(&v47);
        return 0;
      }

      if (v25 < 1)
      {
        goto LABEL_49;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v43 = v3;
          v44 = i;
          v32 = *(*&v51[8] + 16);
          v42 = *(*&v51[8] + 24);
          sub_2685BA80C(*&v56[8], *&v56[16]);
          sub_2685BA80C(v22, v21);
          sub_2685BA80C(v20, v19);
          v33 = sub_268689764();
          if (v33)
          {
            v34 = sub_268689794();
            if (__OFSUB__(v32, v34))
            {
              goto LABEL_80;
            }

            v33 += v32 - v34;
          }

          if (__OFSUB__(v42, v32))
          {
            goto LABEL_79;
          }

          sub_268689784();
          v35 = v33;
          v36 = v22;
          v37 = v21;
          v3 = v43;
          goto LABEL_66;
        }

        *&v46[6] = 0;
        *v46 = 0;
        sub_2685BA80C(*&v56[8], *&v56[16]);
        sub_2685BA80C(v22, v21);
      }

      else
      {
        if (v23)
        {
          v44 = i;
          if (*&v51[8] >> 32 < *&v51[8])
          {
            goto LABEL_78;
          }

          sub_2685BA80C(*&v56[8], *&v56[16]);
          sub_2685BA80C(v22, v21);
          sub_2685BA80C(v20, v19);
          v38 = sub_268689764();
          if (v38)
          {
            v39 = sub_268689794();
            if (__OFSUB__(v20, v39))
            {
              goto LABEL_81;
            }

            v38 += v20 - v39;
          }

          sub_268689784();
          v35 = v38;
          v36 = v22;
          v37 = v21;
LABEL_66:
          sub_268612934(v35, v36, v37, v46);
          sub_2685B593C(v22, v21);
          sub_2685B593C(v22, v21);
          sub_2685B593C(v20, v19);
          v40 = v46[0];
          i = v44;
          goto LABEL_69;
        }

        *v46 = *&v51[8];
        *&v46[8] = *&v51[16];
        v46[12] = v51[20];
        v46[13] = v51[21];
        sub_2685BA80C(*&v56[8], *&v56[16]);
        sub_2685BA80C(v22, v21);
      }

      sub_268612934(v46, v22, v21, &v45);
      sub_2685B593C(v22, v21);
      sub_2685B593C(v22, v21);
      sub_2685B593C(v20, v19);
      v40 = v45;
LABEL_69:
      sub_268618E6C(&v52);
      sub_268618E6C(&v47);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

LABEL_70:
      if (!i)
      {
        return 1;
      }

      v5 = (v5 + 104);
      v4 = (v4 + 104);
    }

    v25 = 0;
    if (*&v51[8] == __PAIR128__(0xC000000000000000, 0) && *&v56[16] >> 62 == 3)
    {
      v25 = 0;
      if (*&v56[8] == __PAIR128__(0xC000000000000000, 0))
      {
        goto LABEL_49;
      }
    }

LABEL_37:
    if (v24 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_2686118C4(uint64_t a1, uint64_t a2)
{
  v38[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v33 = 0;
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = i[1];
      v36 = i[2];
      v10 = i[3];
      v11 = i[4];
      if (*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i)
      {
        v10 = i[3];
        if ((sub_268689E14() & 1) == 0)
        {
          return 0;
        }
      }

      if ((v5 != v9 || v6 != v36) && (sub_268689E14() & 1) == 0)
      {
        return 0;
      }

      v12 = v7 >> 62;
      v13 = v11 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v20 = *(v8 + 16);
          v19 = *(v8 + 24);
          v17 = __OFSUB__(v19, v20);
          v14 = v19 - v20;
          if (v17)
          {
            goto LABEL_64;
          }

          goto LABEL_29;
        }

        v14 = 0;
        if (v13 <= 1)
        {
          goto LABEL_30;
        }
      }

      else if (v12)
      {
        LODWORD(v14) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_63;
        }

        v14 = v14;
        if (v13 <= 1)
        {
LABEL_30:
          if (v13)
          {
            LODWORD(v18) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
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
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v11);
          }

          goto LABEL_34;
        }
      }

      else
      {
        v14 = BYTE6(v7);
        if (v13 <= 1)
        {
          goto LABEL_30;
        }
      }

LABEL_23:
      if (v13 != 2)
      {
        if (v14)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_62;
      }

LABEL_34:
      if (v14 != v18)
      {
        return 0;
      }

      if (v14 < 1)
      {
        goto LABEL_6;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v22 = v10;
          v23 = *(v8 + 16);
          v34 = *(v8 + 24);

          sub_2685BA80C(v8, v7);

          sub_2685BA80C(v22, v11);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v22, v11);
          v24 = sub_268689764();
          if (v24)
          {
            v25 = sub_268689794();
            if (__OFSUB__(v23, v25))
            {
              goto LABEL_67;
            }

            v24 += v23 - v25;
          }

          if (__OFSUB__(v34, v23))
          {
            goto LABEL_66;
          }

          sub_268689784();
          v26 = v24;
          v27 = v22;
          v28 = v11;
          v29 = v33;
          goto LABEL_55;
        }

        memset(v38, 0, 14);

        sub_2685BA80C(v8, v7);

        sub_2685BA80C(v10, v11);
        sub_2685BA80C(v8, v7);
        sub_2685BA80C(v10, v11);
        sub_268612934(v38, v10, v11, &v37);
        sub_2685B593C(v10, v11);
        sub_2685B593C(v8, v7);

        v21 = v10;
      }

      else
      {
        if (v12)
        {
          v35 = v10;
          if (v8 >> 32 < v8)
          {
            goto LABEL_65;
          }

          sub_2685BA80C(v8, v7);

          sub_2685BA80C(v10, v11);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v10, v11);
          v30 = sub_268689764();
          if (v30)
          {
            v31 = sub_268689794();
            if (__OFSUB__(v8, v31))
            {
              goto LABEL_68;
            }

            v30 += v8 - v31;
          }

          v29 = v33;
          v22 = v35;
          sub_268689784();
          v26 = v30;
          v27 = v35;
          v28 = v11;
LABEL_55:
          sub_268612934(v26, v27, v28, v38);
          v33 = v29;
          sub_2685B593C(v22, v11);
          sub_2685B593C(v8, v7);

          sub_2685B593C(v22, v11);

          sub_2685B593C(v8, v7);
          if ((v38[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v38[0] = v8;
        LOWORD(v38[1]) = v7;
        BYTE2(v38[1]) = BYTE2(v7);
        BYTE3(v38[1]) = BYTE3(v7);
        BYTE4(v38[1]) = BYTE4(v7);
        BYTE5(v38[1]) = BYTE5(v7);

        sub_2685BA80C(v8, v7);

        sub_2685BA80C(v10, v11);
        sub_2685BA80C(v8, v7);
        sub_2685BA80C(v10, v11);
        sub_268612934(v38, v10, v11, &v37);
        sub_2685B593C(v10, v11);
        sub_2685B593C(v8, v7);

        v21 = v10;
      }

      sub_2685B593C(v21, v11);

      sub_2685B593C(v8, v7);
      if (!v37)
      {
        return 0;
      }

LABEL_6:
      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    v14 = 0;
    if (!v8 && v7 == 0xC000000000000000 && v11 >> 62 == 3)
    {
      v14 = 0;
      if (!v10 && v11 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_29:
    if (v13 <= 1)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_268611F48(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = 0;
    v30 = a1;
    v31 = a2;
    while (1)
    {
      v6 = *(a1 + v3 + 32);
      v5 = *(a1 + v3 + 40);
      v8 = *(a2 + v3 + 32);
      v7 = *(a2 + v3 + 40);
      if (*(a1 + v3 + 52))
      {
        if (!*(a2 + v3 + 52))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 48) == *(a2 + v3 + 48))
        {
          v9 = *(a2 + v3 + 52);
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 60))
      {
        if (!*(a2 + v3 + 60))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 56) == *(a2 + v3 + 56))
        {
          v10 = *(a2 + v3 + 60);
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

      v11 = v5 >> 62;
      v12 = v7 >> 62;
      if (v5 >> 62 == 3)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = *(v6 + 16);
          v18 = *(v6 + 24);
          v16 = __OFSUB__(v18, v19);
          v13 = v18 - v19;
          if (v16)
          {
            goto LABEL_73;
          }

          goto LABEL_37;
        }

        v13 = 0;
        if (v12 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v11)
      {
        LODWORD(v13) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_72;
        }

        v13 = v13;
        if (v12 <= 1)
        {
LABEL_38:
          if (v12)
          {
            LODWORD(v17) = HIDWORD(v8) - v8;
            if (__OFSUB__(HIDWORD(v8), v8))
            {
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
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(v7);
          }

          goto LABEL_42;
        }
      }

      else
      {
        v13 = BYTE6(v5);
        if (v12 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_31:
      if (v12 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_71;
      }

LABEL_42:
      if (v13 != v17)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v11 <= 1)
      {
        if (!v11)
        {
          v20 = a1;
          v21 = a2;
          v34[0] = *(a1 + v3 + 32);
          LOWORD(v34[1]) = v5;
          BYTE2(v34[1]) = BYTE2(v5);
          BYTE3(v34[1]) = BYTE3(v5);
          BYTE4(v34[1]) = BYTE4(v5);
          BYTE5(v34[1]) = BYTE5(v5);
          sub_2685BA80C(v6, v5);
          sub_2685BA80C(v8, v7);
          sub_268612934(v34, v8, v7, &v33);
          sub_2685B593C(v8, v7);
          sub_2685B593C(v6, v5);
          if (!v33)
          {
            return 0;
          }

          a2 = v21;
          a1 = v20;
          goto LABEL_6;
        }

        v32 = v4;
        if (v6 >> 32 < v6)
        {
          goto LABEL_74;
        }

        sub_2685BA80C(v6, v5);
        sub_2685BA80C(v8, v7);
        v23 = sub_268689764();
        if (v23)
        {
          v25 = sub_268689794();
          if (__OFSUB__(v6, v25))
          {
            goto LABEL_77;
          }

          v23 += v6 - v25;
        }

        goto LABEL_64;
      }

      if (v11 == 2)
      {
        v22 = *(v6 + 16);
        v29 = *(v6 + 24);
        sub_2685BA80C(v6, v5);
        sub_2685BA80C(v8, v7);
        v23 = sub_268689764();
        v32 = v4;
        if (v23)
        {
          v24 = sub_268689794();
          if (__OFSUB__(v22, v24))
          {
            goto LABEL_76;
          }

          v23 += v22 - v24;
        }

        if (__OFSUB__(v29, v22))
        {
          goto LABEL_75;
        }

LABEL_64:
        sub_268689784();
        v4 = v32;
        sub_268612934(v23, v8, v7, v34);
        sub_2685B593C(v8, v7);
        sub_2685B593C(v6, v5);
        if ((v34[0] & 1) == 0)
        {
          return 0;
        }

        a1 = v30;
        a2 = v31;
        goto LABEL_6;
      }

      v26 = a1;
      v27 = a2;
      memset(v34, 0, 14);
      sub_2685BA80C(v6, v5);
      sub_2685BA80C(v8, v7);
      sub_268612934(v34, v8, v7, &v33);
      sub_2685B593C(v8, v7);
      sub_2685B593C(v6, v5);
      if (!v33)
      {
        return 0;
      }

      a2 = v27;
      a1 = v26;
LABEL_6:
      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0;
    if (!v6 && v5 == 0xC000000000000000 && v7 >> 62 == 3)
    {
      v13 = 0;
      if (!v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_37:
    if (v12 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_2686123CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v41[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v38 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v11 = *(i - 2);
      v10 = *(i - 1);
      v12 = *i;
      sub_2685BA80C(v8, v7);

      sub_2685BA80C(v11, v10);

      if (v9 != v12)
      {

        v13 = a3(v9, v12);

        if ((v13 & 1) == 0)
        {
LABEL_62:
          sub_2685B593C(v11, v10);

          sub_2685B593C(v8, v7);

          return 0;
        }
      }

      v14 = v7 >> 62;
      v15 = v10 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v24 = *(v8 + 16);
          v23 = *(v8 + 24);
          v21 = __OFSUB__(v23, v24);
          v16 = v23 - v24;
          if (v21)
          {
            goto LABEL_66;
          }

          goto LABEL_27;
        }

        v16 = 0;
        if (v15 <= 1)
        {
          goto LABEL_28;
        }
      }

      else if (v14)
      {
        LODWORD(v16) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_67;
        }

        v16 = v16;
        if (v15 <= 1)
        {
LABEL_28:
          if (v15)
          {
            LODWORD(v22) = HIDWORD(v11) - v11;
            if (__OFSUB__(HIDWORD(v11), v11))
            {
              __break(1u);
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
            }

            v22 = v22;
          }

          else
          {
            v22 = BYTE6(v10);
          }

          goto LABEL_34;
        }
      }

      else
      {
        v16 = BYTE6(v7);
        if (v15 <= 1)
        {
          goto LABEL_28;
        }
      }

LABEL_21:
      if (v15 != 2)
      {
        if (v16)
        {
          goto LABEL_62;
        }

LABEL_39:
        sub_2685B593C(v11, v10);

        v17 = v8;
        v18 = v7;
LABEL_40:
        sub_2685B593C(v17, v18);

        goto LABEL_8;
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_65;
      }

LABEL_34:
      if (v16 != v22)
      {
        goto LABEL_62;
      }

      if (v16 < 1)
      {
        goto LABEL_39;
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v35 = *(v8 + 24);
          v37 = *(v8 + 16);
          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v11, v10);
          v25 = sub_268689764();
          if (v25)
          {
            v26 = v25;
            v27 = sub_268689794();
            v28 = v37;
            if (__OFSUB__(v37, v27))
            {
              goto LABEL_70;
            }

            v34 = v37 - v27 + v26;
          }

          else
          {
            v34 = 0;
            v28 = v37;
          }

          if (__OFSUB__(v35, v28))
          {
            goto LABEL_69;
          }

          sub_268689784();
          v32 = v34;
          goto LABEL_59;
        }

        memset(v41, 0, 14);
        sub_2685BA80C(v8, v7);
        sub_2685BA80C(v11, v10);
      }

      else
      {
        if (v14)
        {
          if (v8 >> 32 < v8)
          {
            goto LABEL_68;
          }

          sub_2685BA80C(v8, v7);
          sub_2685BA80C(v11, v10);
          v29 = sub_268689764();
          if (v29)
          {
            v36 = v29;
            v30 = sub_268689794();
            if (__OFSUB__(v8, v30))
            {
              goto LABEL_71;
            }

            v31 = v8 - v30 + v36;
          }

          else
          {
            v31 = 0;
          }

          sub_268689784();
          v32 = v31;
LABEL_59:
          v6 = v38;
          sub_268612934(v32, v11, v10, v41);
          sub_2685B593C(v11, v10);
          sub_2685B593C(v8, v7);
          sub_2685B593C(v11, v10);

          sub_2685B593C(v8, v7);

          if ((v41[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }

        v41[0] = v8;
        LOWORD(v41[1]) = v7;
        BYTE2(v41[1]) = BYTE2(v7);
        BYTE3(v41[1]) = BYTE3(v7);
        BYTE4(v41[1]) = BYTE4(v7);
        BYTE5(v41[1]) = BYTE5(v7);
        sub_2685BA80C(v8, v7);
        sub_2685BA80C(v11, v10);
      }

      v6 = v38;
      sub_268612934(v41, v11, v10, &v40);
      sub_2685B593C(v11, v10);
      sub_2685B593C(v8, v7);
      sub_2685B593C(v11, v10);

      sub_2685B593C(v8, v7);

      if (!v40)
      {
        return 0;
      }

LABEL_7:
      v38 = v6;
LABEL_8:
      v4 += 3;
      if (!--v3)
      {
        return 1;
      }
    }

    v16 = 0;
    if (!v8 && v7 == 0xC000000000000000 && v10 >> 62 == 3)
    {
      v16 = 0;
      if (!v11 && v10 == 0xC000000000000000)
      {
        sub_2685B593C(0, 0xC000000000000000);

        v17 = 0;
        v18 = 0xC000000000000000;
        goto LABEL_40;
      }
    }

LABEL_27:
    if (v15 <= 1)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t sub_268612934@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_268689764();
    if (v10)
    {
      v11 = sub_268689794();
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
      result = sub_268689784();
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
  v10 = sub_268689764();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_268689794();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_268689784();
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

uint64_t sub_268612B64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_268613124(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2685B593C(a3, a4);
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
  sub_268612934(v13, a3, a4, &v12);
  v10 = v4;
  sub_2685B593C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_268612CF4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a2 + 48) + 16 * v11 + 8);
    v13 = (*(a2 + 56) + 24 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];

    sub_2685BA80C(v15, v14);

    if (!v12)
    {
LABEL_52:

      return MEMORY[0x26D61D8F0](v8);
    }

    v43 = v8;
    v17 = *(a1 + 48);
    v56 = *(a1 + 32);
    v57 = v17;
    v58 = *(a1 + 64);
    v18 = *(a1 + 16);
    v54 = *a1;
    v55 = v18;
    sub_268689A24();

    v51 = v56;
    v52 = v57;
    v53 = v58;
    v49 = v54;
    v50 = v55;
    v19 = *(v16 + 32);
    v20 = *(v16 + 40);
    if ((~v19 & 0x3000000000000000) != 0 || v20 != 255)
    {
      v21 = (v19 >> 60) & 3 | (4 * (v20 & 1));
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          MEMORY[0x26D61D8F0](4);
          sub_268689EB4();
          goto LABEL_45;
        }

        v37 = *(v16 + 24);
        v40 = *(v16 + 16);
        if (v21 != 4)
        {
          MEMORY[0x26D61D8F0](6);
          sub_2685D10C8(v40, v37, v19, v20 & 1);
          sub_2685DCAD0(&v49, v40, v37, v19 & 0xCFFFFFFFFFFFFFFFLL);
          v27 = v40;
          v28 = v37;
          goto LABEL_33;
        }

        MEMORY[0x26D61D8F0](5);
        v46 = v51;
        v47 = v52;
        v48 = v53;
        v44 = v49;
        v45 = v50;
        v23 = v40;
        if (*(v40 + 16))
        {
          MEMORY[0x26D61D8F0](1);
          v23 = v40;
          sub_2685D10C8(v40, v37, v19, v20 & 1);
          sub_268612CF4(&v44, v40);
        }

        else
        {
          sub_2685D10C8(v40, v37, v19, v20 & 1);
        }

        v29 = v19 >> 62;
        if ((v19 >> 62) > 1)
        {
          v30 = v37;
          if (v29 != 2)
          {
            goto LABEL_44;
          }

          v31 = *(v37 + 16);
          v32 = *(v37 + 24);
        }

        else
        {
          v30 = v37;
          if (!v29)
          {
            if ((v19 & 0xFF000000000000) == 0)
            {
              goto LABEL_44;
            }

LABEL_43:
            sub_268689844();
            v30 = v37;
LABEL_44:
            sub_2685D1170(v23, v30, v19, v20);
            v51 = v46;
            v52 = v47;
            v53 = v48;
            v49 = v44;
            v50 = v45;
            goto LABEL_45;
          }

          v31 = v37;
          v32 = v37 >> 32;
        }

        if (v31 != v32)
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      if (v21)
      {
        v39 = *(v16 + 16);
        if (v21 != 1)
        {
          v38 = *(v16 + 24);
          MEMORY[0x26D61D8F0](3);
          sub_2685D10C8(v39, v38, v19, v20 & 1);
          sub_268689A24();
          v27 = v39;
          v28 = v38;
LABEL_33:
          sub_2685D1170(v27, v28, v19, v20);
          goto LABEL_45;
        }

        MEMORY[0x26D61D8F0](2);
        if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v22 = v39;
        }

        else
        {
          v22 = 0;
        }

        MEMORY[0x26D61D920](v22);
      }

      else
      {
        v24 = *(v16 + 16);
        v25 = *(v16 + 24);
        MEMORY[0x26D61D8F0](1);
        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24;
        }

        MEMORY[0x26D61D8F0](v26);
      }
    }

LABEL_45:
    v33 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      v34 = v43;
      if (v33 != 2)
      {
        goto LABEL_6;
      }

      v35 = *(v15 + 16);
      v36 = *(v15 + 24);
    }

    else
    {
      v34 = v43;
      if (!v33)
      {
        if ((v14 & 0xFF000000000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_5:
        sub_268689844();
        goto LABEL_6;
      }

      v35 = v15;
      v36 = v15 >> 32;
    }

    if (v35 != v36)
    {
      goto LABEL_5;
    }

LABEL_6:
    v5 &= v5 - 1;
    sub_2685B593C(v15, v14);

    v56 = v51;
    v57 = v52;
    v58 = v53;
    v54 = v49;
    v55 = v50;
    result = sub_268689EF4();
    v8 = result ^ v34;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_52;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268613124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_268689764();
  v11 = result;
  if (result)
  {
    result = sub_268689794();
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

  sub_268689784();
  sub_268612934(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2686131DC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2685BA80C(a3, a4);
          return sub_268612B64(v13, a2, a3, a4) & 1;
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

BOOL _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v23 = *(a1 + 16);
  v24 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v34 = *(a1 + 56);
  v6 = *(a1 + 72);
  v35 = *(a1 + 80);
  v36 = *(a1 + 64);
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  v26 = *(a1 + 104);
  v22 = *(a2 + 8);
  v7 = *(a2 + 24);
  v21 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v33 = *(a2 + 80);
  v28 = *(a1 + 112);
  v29 = *(a2 + 88);
  v30 = *(a2 + 96);
  v25 = *(a2 + 104);
  v27 = *(a2 + 112);
  if ((sub_26860D458(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v2 != v7 || v4 != v8) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v36)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v34 == v11)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v35)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    v16 = v33;
    if (v6 != v13)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v32 >> 60 == 15)
  {
    v17 = v30;
    if (v30 >> 60 == 15)
    {
      sub_268614834(v31, v32);
      sub_268614834(v29, v30);
      sub_2685B98FC(v31, v32);
      goto LABEL_36;
    }

LABEL_33:
    sub_268614834(v31, v32);
    sub_268614834(v29, v17);
    sub_2685B98FC(v31, v32);
    sub_2685B98FC(v29, v17);
    return 0;
  }

  v17 = v30;
  if (v30 >> 60 == 15)
  {
    goto LABEL_33;
  }

  sub_268614834(v31, v32);
  sub_268614834(v29, v30);
  v19 = sub_2686131DC(v31, v32, v29, v30);
  sub_2685B98FC(v29, v30);
  sub_2685B98FC(v31, v32);
  if (!v19)
  {
    return 0;
  }

LABEL_36:
  if (!v28)
  {
    if (!v27)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (!v27 || (v26 != v25 || v28 != v27) && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  sub_2685BA80C(v24, v23);
  sub_2685BA80C(v22, v21);
  v20 = sub_2686131DC(v24, v23, v22, v21);
  sub_2685B593C(v22, v21);
  sub_2685B593C(v24, v23);
  return v20;
}

BOOL _s20SiriOntologyProtobuf07Google_C15_SourceCodeInfoV8LocationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v19 = a1[2];
  v3 = a1[5];
  v16 = a1[4];
  v17 = a1[3];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a2[1];
  v18 = a2[2];
  v15 = a2[3];
  v8 = a2[5];
  v14 = a2[4];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  if ((sub_26860E058(*a1, *a2) & 1) == 0 || (sub_26860E058(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9 || (v3 != v8 || v4 != v9) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v5 != v10 || v6 != v11) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (sub_26860EBDC(v19, v18))
  {
    sub_2685BA80C(v17, v16);
    sub_2685BA80C(v15, v14);
    v12 = sub_2686131DC(v17, v16, v15, v14);
    sub_2685B593C(v15, v14);
    sub_2685B593C(v17, v16);
    return v12;
  }

  return 0;
}

BOOL _s20SiriOntologyProtobuf07Google_C18_GeneratedCodeInfoV10AnnotationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v19 = *(a1 + 16);
  v20 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v16 = *(a1 + 48);
  v21 = *(a1 + 52);
  v6 = *(a2 + 24);
  v17 = *(a2 + 16);
  v18 = *(a2 + 8);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 44);
  v10 = *(a2 + 48);
  v11 = *(a2 + 52);
  if ((sub_26860E058(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v6 || v3 != v7) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v21)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  sub_2685BA80C(v20, v19);
  sub_2685BA80C(v18, v17);
  v15 = sub_2686131DC(v20, v19, v18, v17);
  sub_2685B593C(v18, v17);
  sub_2685B593C(v20, v19);
  return v15;
}

BOOL sub_268613930(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v8 = *(a2 + 28);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_2685BA80C(*a1, v3);
  sub_2685BA80C(v4, v5);
  v9 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v9;
}

BOOL _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV8NamePartV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v11 = *(a1 + 16) == *(a2 + 16) && v5 == v9;
    if (!v11 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6 != 2)
  {
    if (v10 != 2 && ((v6 ^ v10) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v7, v8);
  v13 = sub_2686131DC(v3, v4, v7, v8);
  sub_2685B593C(v7, v8);
  sub_2685B593C(v3, v4);
  return v13;
}

BOOL sub_268613BCC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (v5 != v8)
  {

    LOBYTE(a3) = a3(v5, v8);

    if ((a3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v6, v7);
  v10 = sub_2686131DC(v3, v4, v6, v7);
  sub_2685B593C(v6, v7);
  sub_2685B593C(v3, v4);
  return v10;
}

uint64_t sub_268613CA8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  if (v7 == 2)
  {
    if (v11 != 2)
    {
LABEL_9:
      v13 = 0;
      return v13 & 1;
    }
  }

  else if (v11 == 2 || ((v7 ^ v11) & 1) != 0)
  {
    goto LABEL_9;
  }

  if ((sub_26860D2C0(v4, v8) & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v9, v10);
  v12 = sub_2686131DC(v5, v6, v9, v10);
  sub_2685B593C(v9, v10);
  sub_2685B593C(v5, v6);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = static ExtensionFieldValueSet.== infix(_:_:)();

  return v13 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C15_MessageOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 34);
  v10 = *(a1 + 35);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  v16 = *(a2 + 34);
  v17 = *(a2 + 35);
  if (v7 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v14 == 2 || ((v7 ^ v14) & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v8 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v15 == 2 || ((v8 ^ v15) & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v9 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v16 == 2 || ((v9 ^ v16) & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v10 == 2)
  {
    if (v17 == 2)
    {
      goto LABEL_21;
    }

LABEL_24:
    v19 = 0;
    return v19 & 1;
  }

  if (v17 == 2 || ((v10 ^ v17) & 1) != 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if ((sub_26860D2C0(v4, v11) & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v12, v13);
  v18 = sub_2686131DC(v5, v6, v12, v13);
  sub_2685B593C(v12, v13);
  sub_2685B593C(v5, v6);
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = static ExtensionFieldValueSet.== infix(_:_:)();

  return v19 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C14_MethodOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 33);
  if (v7 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v12 == 2 || ((v7 ^ v12) & 1) != 0)
  {
    goto LABEL_14;
  }

  if (v8 == 3)
  {
    if (v13 != 3)
    {
LABEL_14:
      v14 = 0;
      return v14 & 1;
    }
  }

  else
  {
    v14 = 0;
    if (v13 == 3 || v8 != v13)
    {
      return v14 & 1;
    }
  }

  if ((sub_26860D2C0(v4, v9) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v10, v11);
  v15 = sub_2686131DC(v5, v6, v10, v11);
  sub_2685B593C(v10, v11);
  sub_2685B593C(v5, v6);
  if (!v15)
  {
    goto LABEL_14;
  }

  v14 = static ExtensionFieldValueSet.== infix(_:_:)();

  return v14 & 1;
}

uint64_t sub_2686140B0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_26860D2C0(*a1, *a2) & 1) != 0 && (sub_2685BA80C(v2, v3), sub_2685BA80C(v4, v5), v6 = sub_2686131DC(v2, v3, v4, v5), sub_2685B593C(v4, v5), sub_2685B593C(v2, v3), v6))
  {

    v7 = static ExtensionFieldValueSet.== infix(_:_:)();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C13_FieldOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 34);
  v10 = *(a1 + 35);
  v11 = *(a1 + 36);
  v12 = *(a1 + 37);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 32);
  v17 = *(a2 + 33);
  v18 = *(a2 + 34);
  v19 = *(a2 + 35);
  v20 = *(a2 + 36);
  v21 = *(a2 + 37);
  if (v7 == 3)
  {
    if (v16 != 3)
    {
      goto LABEL_33;
    }
  }

  else if (v7 != v16)
  {
    goto LABEL_33;
  }

  if (v8 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v17 == 2 || ((v8 ^ v17) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (v9 == 3)
  {
    if (v18 != 3)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v22 = 0;
    if (v18 == 3 || v9 != v18)
    {
      return v22 & 1;
    }
  }

  if (v10 == 2)
  {
    if (v19 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v19 == 2 || ((v10 ^ v19) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (v11 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v20 == 2 || ((v11 ^ v20) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (v12 != 2)
  {
    if (v21 == 2 || ((v12 ^ v21) & 1) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v21 != 2)
  {
LABEL_33:
    v22 = 0;
    return v22 & 1;
  }

LABEL_30:
  if ((sub_26860D2C0(v4, v13) & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v14, v15);
  v23 = sub_2686131DC(v5, v6, v14, v15);
  sub_2685B593C(v14, v15);
  sub_2685B593C(v5, v6);
  if (!v23)
  {
    goto LABEL_33;
  }

  v22 = static ExtensionFieldValueSet.== infix(_:_:)();

  return v22 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C12_FileOptionsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  if (v4 == v7 || (, , v8 = sub_2686044A8(v4, v7), , , (v8)) && (sub_2685BA80C(v2, v3), sub_2685BA80C(v5, v6), v9 = sub_2686131DC(v2, v3, v5, v6), sub_2685B593C(v5, v6), sub_2685B593C(v2, v3), v9))
  {

    v10 = static ExtensionFieldValueSet.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C12_EnumOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  if (v8 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v14 == 2 || ((v8 ^ v14) & 1) != 0)
  {
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    if (v15 != 2)
    {
LABEL_14:
      v17 = 0;
      return v17 & 1;
    }
  }

  else if (v15 == 2 || ((v9 ^ v15) & 1) != 0)
  {
    goto LABEL_14;
  }

  if ((sub_26860D2C0(v4, v10) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v11, v12);
  v16 = sub_2686131DC(v5, v6, v11, v12);
  sub_2685B593C(v11, v12);
  sub_2685B593C(v5, v6);
  if (!v16)
  {
    goto LABEL_14;
  }

  v19 = v13;
  v20 = v7;

  v17 = _s20SiriOntologyProtobuf22ExtensionFieldValueSetV2eeoiySbAC_ACtFZ_0(&v20, &v19);

  return v17 & 1;
}

uint64_t sub_2686145F0(uint64_t a1)
{
  *(v1 + 80) = 0u;
  *(v1 + 96) = 33685504;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  LOWORD(v7) = *(a1 + 96);
  swift_beginAccess();
  v13 = *(v1 + 64);
  v17 = *(v1 + 80);
  v18 = *(v1 + 72);
  v16 = *(v1 + 88);
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  *(v1 + 96) = v7;

  sub_268601C34(v9, v10, v11, v12);
  sub_268601C90(v13, v18, v17, v16);
  swift_beginAccess();
  v14 = *(a1 + 98);
  swift_beginAccess();
  *(v1 + 98) = v14;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 99);
  swift_beginAccess();
  *(v1 + 99) = a1;
  return v1;
}

uint64_t sub_268614834(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2685BA80C(result, a2);
  }

  return result;
}

unint64_t sub_268614848()
{
  result = qword_28028C8B8;
  if (!qword_28028C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8B8);
  }

  return result;
}

unint64_t sub_26861489C()
{
  result = qword_28028C8C0;
  if (!qword_28028C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8C0);
  }

  return result;
}

unint64_t sub_2686148F0()
{
  result = qword_28028C8C8;
  if (!qword_28028C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8C8);
  }

  return result;
}

unint64_t sub_268614944()
{
  result = qword_28028C8D0;
  if (!qword_28028C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8D0);
  }

  return result;
}

unint64_t sub_268614998()
{
  result = qword_28028C8D8;
  if (!qword_28028C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8D8);
  }

  return result;
}

unint64_t sub_2686149EC()
{
  result = qword_28028C8E0;
  if (!qword_28028C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8E0);
  }

  return result;
}

unint64_t sub_268614A40()
{
  result = qword_28028C8E8;
  if (!qword_28028C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8E8);
  }

  return result;
}

unint64_t sub_268614A94()
{
  result = qword_28028C8F0;
  if (!qword_28028C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8F0);
  }

  return result;
}

unint64_t sub_268614AE8()
{
  result = qword_28028C8F8;
  if (!qword_28028C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C8F8);
  }

  return result;
}

unint64_t sub_268614B3C()
{
  result = qword_28028C900;
  if (!qword_28028C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C900);
  }

  return result;
}

unint64_t sub_268614B90()
{
  result = qword_28028C908;
  if (!qword_28028C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C908);
  }

  return result;
}

unint64_t sub_268614BE4()
{
  result = qword_28028C910;
  if (!qword_28028C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C910);
  }

  return result;
}

unint64_t sub_268614C38()
{
  result = qword_28028C918;
  if (!qword_28028C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C918);
  }

  return result;
}

unint64_t sub_268614C8C()
{
  result = qword_28028C920;
  if (!qword_28028C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C920);
  }

  return result;
}

unint64_t sub_268614CE0()
{
  result = qword_28028C928;
  if (!qword_28028C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C928);
  }

  return result;
}

unint64_t sub_268614D34()
{
  result = qword_28028C930;
  if (!qword_28028C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C930);
  }

  return result;
}

unint64_t sub_268614D88(uint64_t a1)
{
  result = sub_26861489C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268614DB4()
{
  result = qword_28028C938;
  if (!qword_28028C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C938);
  }

  return result;
}

unint64_t sub_268614E34()
{
  result = qword_28028C940;
  if (!qword_28028C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C940);
  }

  return result;
}

unint64_t sub_268614E88()
{
  result = qword_28028C948;
  if (!qword_28028C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C948);
  }

  return result;
}

unint64_t sub_268614EE0()
{
  result = qword_28028C950;
  if (!qword_28028C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C950);
  }

  return result;
}

unint64_t sub_268614F60()
{
  result = qword_28028C958;
  if (!qword_28028C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C958);
  }

  return result;
}

unint64_t sub_268614FB4()
{
  result = qword_28028C960;
  if (!qword_28028C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C960);
  }

  return result;
}

unint64_t sub_26861506C()
{
  result = qword_28028C988;
  if (!qword_28028C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C988);
  }

  return result;
}

unint64_t sub_2686150EC()
{
  result = qword_28028C990;
  if (!qword_28028C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C990);
  }

  return result;
}

unint64_t sub_268615140()
{
  result = qword_28028C998;
  if (!qword_28028C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C998);
  }

  return result;
}

unint64_t sub_268615194(uint64_t a1)
{
  result = sub_2686151BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686151BC()
{
  result = qword_28028C9A0;
  if (!qword_28028C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9A0);
  }

  return result;
}

unint64_t sub_268615240(uint64_t a1)
{
  result = sub_268614944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861526C()
{
  result = qword_28028C9B8;
  if (!qword_28028C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9B8);
  }

  return result;
}

unint64_t sub_2686152EC()
{
  result = qword_28028C9C0;
  if (!qword_28028C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9C0);
  }

  return result;
}

unint64_t sub_268615340()
{
  result = qword_28028C9C8;
  if (!qword_28028C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9C8);
  }

  return result;
}

unint64_t sub_268615398()
{
  result = qword_28028C9D0;
  if (!qword_28028C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9D0);
  }

  return result;
}

unint64_t sub_268615418()
{
  result = qword_28028C9D8;
  if (!qword_28028C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9D8);
  }

  return result;
}

unint64_t sub_26861546C()
{
  result = qword_28028C9E0;
  if (!qword_28028C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C9E0);
  }

  return result;
}

unint64_t sub_2686154C0(uint64_t a1)
{
  result = sub_268614998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615548(uint64_t a1)
{
  result = sub_268614A94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615570(uint64_t a1)
{
  result = sub_268614AE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615598(uint64_t a1)
{
  result = sub_268614B3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686155C0(uint64_t a1)
{
  result = sub_268614B90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686155EC()
{
  result = qword_28028CA08;
  if (!qword_28028CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA08);
  }

  return result;
}

unint64_t sub_26861566C()
{
  result = qword_28028CA10;
  if (!qword_28028CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA10);
  }

  return result;
}

unint64_t sub_2686156C0()
{
  result = qword_28028CA18;
  if (!qword_28028CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA18);
  }

  return result;
}

unint64_t sub_268615714(uint64_t a1)
{
  result = sub_268614BE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861576C(uint64_t a1)
{
  result = sub_268615794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615794()
{
  result = qword_28028CA30;
  if (!qword_28028CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA30);
  }

  return result;
}

unint64_t sub_268615814()
{
  result = qword_28028CA38;
  if (!qword_28028CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA38);
  }

  return result;
}

unint64_t sub_268615868()
{
  result = qword_28028CA40;
  if (!qword_28028CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA40);
  }

  return result;
}

unint64_t sub_2686158C0()
{
  result = qword_28028CA48;
  if (!qword_28028CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA48);
  }

  return result;
}

unint64_t sub_268615914(uint64_t a1)
{
  result = sub_26861593C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861593C()
{
  result = qword_28028CA50;
  if (!qword_28028CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA50);
  }

  return result;
}

unint64_t sub_2686159BC()
{
  result = qword_28028CA58;
  if (!qword_28028CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA58);
  }

  return result;
}

unint64_t sub_268615A14()
{
  result = qword_28028CA60;
  if (!qword_28028CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA60);
  }

  return result;
}

unint64_t sub_268615A68(uint64_t a1)
{
  result = sub_268615A90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615A90()
{
  result = qword_28028CA68;
  if (!qword_28028CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA68);
  }

  return result;
}

unint64_t sub_268615B10()
{
  result = qword_28028CA70;
  if (!qword_28028CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA70);
  }

  return result;
}

unint64_t sub_268615B64()
{
  result = qword_28028CA78;
  if (!qword_28028CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA78);
  }

  return result;
}

unint64_t sub_268615BBC()
{
  result = qword_28028CA80;
  if (!qword_28028CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA80);
  }

  return result;
}

unint64_t sub_268615C10(uint64_t a1)
{
  result = sub_268615C38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615C38()
{
  result = qword_28028CA88;
  if (!qword_28028CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA88);
  }

  return result;
}

unint64_t sub_268615CB8()
{
  result = qword_28028CA90;
  if (!qword_28028CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA90);
  }

  return result;
}

unint64_t sub_268615D0C()
{
  result = qword_28028CA98;
  if (!qword_28028CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CA98);
  }

  return result;
}

unint64_t sub_268615D64()
{
  result = qword_28028CAA0;
  if (!qword_28028CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAA0);
  }

  return result;
}

unint64_t sub_268615DB8(uint64_t a1)
{
  result = sub_268615DE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615DE0()
{
  result = qword_28028CAA8;
  if (!qword_28028CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAA8);
  }

  return result;
}

unint64_t sub_268615E60()
{
  result = qword_28028CAB0;
  if (!qword_28028CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAB0);
  }

  return result;
}

unint64_t sub_268615EB4()
{
  result = qword_28028CAB8;
  if (!qword_28028CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAB8);
  }

  return result;
}

unint64_t sub_268615F0C()
{
  result = qword_28028CAC0;
  if (!qword_28028CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAC0);
  }

  return result;
}

unint64_t sub_268615F60(uint64_t a1)
{
  result = sub_268615F88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268615F88()
{
  result = qword_28028CAC8;
  if (!qword_28028CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAC8);
  }

  return result;
}

unint64_t sub_268616008()
{
  result = qword_28028CAD0;
  if (!qword_28028CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAD0);
  }

  return result;
}

unint64_t sub_268616060()
{
  result = qword_28028CAD8;
  if (!qword_28028CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAD8);
  }

  return result;
}

unint64_t sub_2686160B4(uint64_t a1)
{
  result = sub_2686160DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686160DC()
{
  result = qword_28028CAE0;
  if (!qword_28028CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAE0);
  }

  return result;
}

unint64_t sub_26861615C()
{
  result = qword_28028CAE8;
  if (!qword_28028CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAE8);
  }

  return result;
}

unint64_t sub_2686161B0()
{
  result = qword_28028CAF0;
  if (!qword_28028CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAF0);
  }

  return result;
}

unint64_t sub_268616208()
{
  result = qword_28028CAF8;
  if (!qword_28028CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CAF8);
  }

  return result;
}

unint64_t sub_26861625C(uint64_t a1)
{
  result = sub_268616284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616284()
{
  result = qword_28028CB00;
  if (!qword_28028CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB00);
  }

  return result;
}

unint64_t sub_268616304()
{
  result = qword_28028CB08;
  if (!qword_28028CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB08);
  }

  return result;
}

unint64_t sub_268616358()
{
  result = qword_28028CB10;
  if (!qword_28028CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB10);
  }

  return result;
}

unint64_t sub_2686163B0()
{
  result = qword_28028CB18;
  if (!qword_28028CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB18);
  }

  return result;
}

unint64_t sub_268616404(uint64_t a1)
{
  result = sub_26861642C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861642C()
{
  result = qword_28028CB20;
  if (!qword_28028CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB20);
  }

  return result;
}

unint64_t sub_2686164AC()
{
  result = qword_28028CB28;
  if (!qword_28028CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB28);
  }

  return result;
}

unint64_t sub_268616500()
{
  result = qword_28028CB30;
  if (!qword_28028CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB30);
  }

  return result;
}

unint64_t sub_268616558()
{
  result = qword_28028CB38;
  if (!qword_28028CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB38);
  }

  return result;
}

unint64_t sub_2686165AC(uint64_t a1)
{
  result = sub_2686165D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686165D4()
{
  result = qword_28028CB40;
  if (!qword_28028CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB40);
  }

  return result;
}

unint64_t sub_268616654()
{
  result = qword_28028CB48;
  if (!qword_28028CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB48);
  }

  return result;
}

unint64_t sub_2686166A8()
{
  result = qword_28028CB50;
  if (!qword_28028CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB50);
  }

  return result;
}

unint64_t sub_268616700()
{
  result = qword_28028CB58;
  if (!qword_28028CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB58);
  }

  return result;
}

unint64_t sub_268616754(uint64_t a1)
{
  result = sub_26861677C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861677C()
{
  result = qword_28028CB60;
  if (!qword_28028CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB60);
  }

  return result;
}

unint64_t sub_2686167FC()
{
  result = qword_28028CB68;
  if (!qword_28028CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB68);
  }

  return result;
}

unint64_t sub_268616850()
{
  result = qword_28028CB70;
  if (!qword_28028CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB70);
  }

  return result;
}

unint64_t sub_2686168A8()
{
  result = qword_28028CB78;
  if (!qword_28028CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB78);
  }

  return result;
}

unint64_t sub_2686168FC(uint64_t a1)
{
  result = sub_268616924();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616924()
{
  result = qword_28028CB80;
  if (!qword_28028CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB80);
  }

  return result;
}

unint64_t sub_2686169A4()
{
  result = qword_28028CB88;
  if (!qword_28028CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB88);
  }

  return result;
}

unint64_t sub_2686169F8()
{
  result = qword_28028CB90;
  if (!qword_28028CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB90);
  }

  return result;
}

unint64_t sub_268616A50()
{
  result = qword_28028CB98;
  if (!qword_28028CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CB98);
  }

  return result;
}

unint64_t sub_268616AA4(uint64_t a1)
{
  result = sub_268616ACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616ACC()
{
  result = qword_28028CBA0;
  if (!qword_28028CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBA0);
  }

  return result;
}

unint64_t sub_268616B4C()
{
  result = qword_28028CBA8;
  if (!qword_28028CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBA8);
  }

  return result;
}

unint64_t sub_268616BA0()
{
  result = qword_28028CBB0;
  if (!qword_28028CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBB0);
  }

  return result;
}

unint64_t sub_268616BF8()
{
  result = qword_28028CBB8;
  if (!qword_28028CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBB8);
  }

  return result;
}

unint64_t sub_268616C4C(uint64_t a1)
{
  result = sub_268616C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616C74()
{
  result = qword_28028CBC0;
  if (!qword_28028CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBC0);
  }

  return result;
}

unint64_t sub_268616CF4()
{
  result = qword_28028CBC8;
  if (!qword_28028CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBC8);
  }

  return result;
}

unint64_t sub_268616D4C()
{
  result = qword_28028CBD0;
  if (!qword_28028CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBD0);
  }

  return result;
}

unint64_t sub_268616DA0(uint64_t a1)
{
  result = sub_268616DC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616DC8()
{
  result = qword_28028CBD8;
  if (!qword_28028CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBD8);
  }

  return result;
}

unint64_t sub_268616E48()
{
  result = qword_28028CBE0;
  if (!qword_28028CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBE0);
  }

  return result;
}

unint64_t sub_268616EA0()
{
  result = qword_28028CBE8;
  if (!qword_28028CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBE8);
  }

  return result;
}

unint64_t sub_268616EF4(uint64_t a1)
{
  result = sub_268616F1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268616F1C()
{
  result = qword_28028CBF0;
  if (!qword_28028CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBF0);
  }

  return result;
}

unint64_t sub_268616F9C()
{
  result = qword_28028CBF8;
  if (!qword_28028CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CBF8);
  }

  return result;
}

unint64_t sub_268616FF4()
{
  result = qword_28028CC00;
  if (!qword_28028CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC00);
  }

  return result;
}

unint64_t sub_268617048(uint64_t a1)
{
  result = sub_268617070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617070()
{
  result = qword_28028CC08;
  if (!qword_28028CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC08);
  }

  return result;
}

unint64_t sub_2686170F0()
{
  result = qword_28028CC10;
  if (!qword_28028CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC10);
  }

  return result;
}

unint64_t sub_268617148()
{
  result = qword_28028CC18;
  if (!qword_28028CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC18);
  }

  return result;
}

unint64_t sub_26861719C(uint64_t a1)
{
  result = sub_2686171C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686171C4()
{
  result = qword_28028CC20;
  if (!qword_28028CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC20);
  }

  return result;
}

unint64_t sub_268617244()
{
  result = qword_28028CC28;
  if (!qword_28028CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC28);
  }

  return result;
}

unint64_t sub_26861729C()
{
  result = qword_28028CC30;
  if (!qword_28028CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC30);
  }

  return result;
}

unint64_t sub_2686172F0(uint64_t a1)
{
  result = sub_268617318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617318()
{
  result = qword_28028CC38;
  if (!qword_28028CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC38);
  }

  return result;
}

unint64_t sub_268617398()
{
  result = qword_28028CC40;
  if (!qword_28028CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC40);
  }

  return result;
}

unint64_t sub_2686173F0()
{
  result = qword_28028CC48;
  if (!qword_28028CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC48);
  }

  return result;
}

unint64_t sub_268617444(uint64_t a1)
{
  result = sub_26861746C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26861746C()
{
  result = qword_28028CC50;
  if (!qword_28028CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC50);
  }

  return result;
}

unint64_t sub_2686174EC()
{
  result = qword_28028CC58;
  if (!qword_28028CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC58);
  }

  return result;
}

unint64_t sub_268617544()
{
  result = qword_28028CC60;
  if (!qword_28028CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC60);
  }

  return result;
}

unint64_t sub_268617598(uint64_t a1)
{
  result = sub_2686175C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686175C0()
{
  result = qword_28028CC68;
  if (!qword_28028CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC68);
  }

  return result;
}

unint64_t sub_268617640()
{
  result = qword_28028CC70;
  if (!qword_28028CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC70);
  }

  return result;
}

unint64_t sub_268617698()
{
  result = qword_28028CC78;
  if (!qword_28028CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC78);
  }

  return result;
}

unint64_t sub_2686176EC(uint64_t a1)
{
  result = sub_268617714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617714()
{
  result = qword_28028CC80;
  if (!qword_28028CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC80);
  }

  return result;
}

unint64_t sub_268617794()
{
  result = qword_28028CC88;
  if (!qword_28028CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC88);
  }

  return result;
}

unint64_t sub_2686177EC()
{
  result = qword_28028CC90;
  if (!qword_28028CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC90);
  }

  return result;
}

unint64_t sub_268617840(uint64_t a1)
{
  result = sub_268617868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617868()
{
  result = qword_28028CC98;
  if (!qword_28028CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CC98);
  }

  return result;
}

unint64_t sub_2686178E8()
{
  result = qword_28028CCA0;
  if (!qword_28028CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCA0);
  }

  return result;
}

unint64_t sub_268617940()
{
  result = qword_28028CCA8;
  if (!qword_28028CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCA8);
  }

  return result;
}

unint64_t sub_268617994(uint64_t a1)
{
  result = sub_2686179BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686179BC()
{
  result = qword_28028CCB0;
  if (!qword_28028CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCB0);
  }

  return result;
}

unint64_t sub_268617A3C()
{
  result = qword_28028CCB8;
  if (!qword_28028CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCB8);
  }

  return result;
}

unint64_t sub_268617A90()
{
  result = qword_28028CCC0;
  if (!qword_28028CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCC0);
  }

  return result;
}

unint64_t sub_268617AE8()
{
  result = qword_28028CCC8;
  if (!qword_28028CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCC8);
  }

  return result;
}

unint64_t sub_268617B3C(uint64_t a1)
{
  result = sub_268617B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617B64()
{
  result = qword_28028CCD0;
  if (!qword_28028CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCD0);
  }

  return result;
}

unint64_t sub_268617BE4()
{
  result = qword_28028CCD8;
  if (!qword_28028CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCD8);
  }

  return result;
}

unint64_t sub_268617C3C()
{
  result = qword_28028CCE0;
  if (!qword_28028CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCE0);
  }

  return result;
}

unint64_t sub_268617C90(uint64_t a1)
{
  result = sub_268617CB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617CB8()
{
  result = qword_28028CCE8;
  if (!qword_28028CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCE8);
  }

  return result;
}

unint64_t sub_268617D38()
{
  result = qword_28028CCF0;
  if (!qword_28028CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCF0);
  }

  return result;
}

unint64_t sub_268617D8C()
{
  result = qword_28028CCF8;
  if (!qword_28028CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CCF8);
  }

  return result;
}

unint64_t sub_268617DE4()
{
  result = qword_28028CD00;
  if (!qword_28028CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD00);
  }

  return result;
}

unint64_t sub_268617E38(uint64_t a1)
{
  result = sub_268617E60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268617E60()
{
  result = qword_28028CD08;
  if (!qword_28028CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD08);
  }

  return result;
}

uint64_t sub_268617EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268617F1C()
{
  result = qword_28028CD10;
  if (!qword_28028CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD10);
  }

  return result;
}

unint64_t sub_268617F74()
{
  result = qword_28028CD18;
  if (!qword_28028CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD18);
  }

  return result;
}

uint64_t keypath_get_81Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t keypath_get_83Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t keypath_get_85Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t keypath_get_87Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t keypath_get_89Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t keypath_get_91Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t keypath_get_133Tm@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 32);
  if (*(v3 + 36))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_FieldDescriptorProto.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Google_Protobuf_FieldDescriptorProto.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2686183E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 29))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26861843C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2686184D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26861851C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26861857C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2686185C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26861862C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268618674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2686186EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268618734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2686187CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268618814(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268618868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2686188B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyUnpackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyUnpackError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_268618A80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268618AC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_268618B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_268618B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_268618C08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268618C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268618CB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268618CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_268618D64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268618DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2686190A8()
{
  result = qword_28028CD20;
  if (!qword_28028CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD20);
  }

  return result;
}

unint64_t sub_2686190FC()
{
  result = qword_28028CD28;
  if (!qword_28028CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD28);
  }

  return result;
}

unint64_t sub_268619150()
{
  result = qword_28028CD30;
  if (!qword_28028CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD30);
  }

  return result;
}

uint64_t Decoder.decodeExtensionFieldsAsMessageSet(values:messageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  while (1)
  {
    result = v11(a4, a5);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    (*(a5 + 464))(a1, a2, a3, result, a4, a5);
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularFloatField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 48))(a1, a2);
}

{
  return (*(a3 + 56))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))(a1, a2);
}

{
  return (*(a3 + 80))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))(a1, a2);
}

{
  return (*(a3 + 104))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 120))(a1, a2);
}

{
  return (*(a3 + 128))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 144))(a1, a2);
}

{
  return (*(a3 + 152))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 168))(a1, a2);
}

{
  return (*(a3 + 176))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 192))(a1, a2);
}

{
  return (*(a3 + 200))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularFixed32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 216))(a1, a2);
}

{
  return (*(a3 + 224))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularFixed64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 240))(a1, a2);
}

{
  return (*(a3 + 248))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularSFixed32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 264))(a1, a2);
}

{
  return (*(a3 + 272))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularSFixed64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 288))(a1, a2);
}

{
  return (*(a3 + 296))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 360))(a1, a2);
}

{
  return (*(a3 + 368))(a1, a2);
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 384))(a1, a2, a3, a4);
}

{
  return (*(a5 + 392))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 440))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 448))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268619E50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26863C318();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    sub_2686434CC(a1, a2, a3, result);
  }

  return result;
}

uint64_t sub_268619EBC()
{
  v2 = v1;
  result = sub_2685BE428();
  if ((result & 1) == 0)
  {
    v4 = v0[9];
    if (v4 < 1 || (result = sub_2685BE1FC(44), !v1))
    {
      result = v0[11];
      if (!result)
      {
        goto LABEL_12;
      }

      v6 = v0[13];
      v5 = v0[14];
      v7 = v0[12];
      v11[0] = v0[11];
      v11[1] = v7;
      v11[2] = v6;
      v11[3] = v5;

      sub_2685BDD9C(v11);
      if (v2)
      {
      }

      v9 = v8;

      if ((v9 & 1) == 0)
      {
        if (!__OFADD__(v4, 1))
        {
          v0[9] = v4 + 1;
          sub_2685BD910();
          swift_allocError();
          *v10 = xmmword_26868F110;
          return swift_willThrow();
        }

        __break(1u);
LABEL_12:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_26861A00C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x26D61DE30](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

char *sub_26861A074(void *__src, int64_t __len)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  if (__len >= 1 && *(v2 + 24) - v3 > __len)
  {
    memmove(*(v2 + 16), __src, __len);
    result = *(v2 + 16);
    v7 = &result[__len];
    *v7 = 0;
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9[0] = result;
    v8 = strtod(result, v9);
    if (v7 != v9[0])
    {
      return 0;
    }

    result = *&v8;
    if ((~*&v8 & 0x7FF0000000000000) == 0)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_26861A150()
{
  result = qword_28028CD38;
  if (!qword_28028CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD38);
  }

  return result;
}

void sub_26861A1A4(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 2;
}

double sub_26861A1B4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_26861A1C0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868BD70;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for TextFormatEncodingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t sub_26861A320(uint64_t a1, uint64_t a2)
{

  v2 = 0;
  v3 = 0;
  v64 = 0;
  v4 = MEMORY[0x277D84F90];
  v65 = 1;
  do
  {
    v7 = sub_268689A74();
    if (!v8)
    {
      goto LABEL_132;
    }

    v9 = v7;
    v10 = v8;
    if (v7 == 45 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {
      if (v2)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_268665D44(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_268665D44((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v5 = &v4[16 * v12];
      *(v5 + 4) = v9;
      *(v5 + 5) = v10;
    }

    else if (v9 == 48 && v10 == 0xE100000000000000 || ((v16 = sub_268689E14(), v9 == 49) ? (v17 = v10 == 0xE100000000000000) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 1), (v16 & 1) != 0 || (v18 & 1) != 0 || ((v19 = sub_268689E14(), v9 == 50) ? (v20 = v10 == 0xE100000000000000) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (v19 & 1) != 0 || (v21 & 1) != 0 || ((v22 = sub_268689E14(), v9 == 51) ? (v23 = v10 == 0xE100000000000000) : (v23 = 0), !v23 ? (v24 = 0) : (v24 = 1), (v22 & 1) != 0 || (v24 & 1) != 0 || ((v25 = sub_268689E14(), v9 == 52) ? (v26 = v10 == 0xE100000000000000) : (v26 = 0), !v26 ? (v27 = 0) : (v27 = 1), (v25 & 1) != 0 || (v27 & 1) != 0 || ((v28 = sub_268689E14(), v9 == 53) ? (v29 = v10 == 0xE100000000000000) : (v29 = 0), !v29 ? (v30 = 0) : (v30 = 1), (v28 & 1) != 0 || (v30 & 1) != 0 || ((v31 = sub_268689E14(), v9 == 54) ? (v32 = v10 == 0xE100000000000000) : (v32 = 0), !v32 ? (v33 = 0) : (v33 = 1), (v31 & 1) != 0 || (v33 & 1) != 0 || ((v34 = sub_268689E14(), v9 == 55) ? (v35 = v10 == 0xE100000000000000) : (v35 = 0), !v35 ? (v36 = 0) : (v36 = 1), (v34 & 1) != 0 || (v36 & 1) != 0 || ((v37 = sub_268689E14(), v9 == 56) ? (v38 = v10 == 0xE100000000000000) : (v38 = 0), !v38 ? (v39 = 0) : (v39 = 1), (v37 & 1) != 0 || (v39 & 1) != 0 || ((v40 = sub_268689E14(), v9 == 57) ? (v41 = v10 == 0xE100000000000000) : (v41 = 0), !v41 ? (v42 = 0) : (v42 = 1), (v40 & 1) != 0 || (v42 & 1) != 0 || (sub_268689E14() & 1) != 0))))))))))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_268665D44(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_268665D44((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[16 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v10;
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_106;
      }
    }

    else
    {
      if ((v9 != 46 || v10 != 0xE100000000000000) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_107;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_132;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD48, &qword_26868F240);
      sub_26861B748();
      v43 = sub_268689AE4();
      v45 = sub_26861AA60(v43, v44);
      if (v46)
      {
        goto LABEL_132;
      }

      v47 = v45;
      if (qword_28028BDB0 != -1)
      {
        swift_once();
      }

      v9 = qword_28028CD40;

      if (v47 > 315576000000 || v47 < v9)
      {
        goto LABEL_133;
      }

      v64 = v47;
      v3 = 0;
      v65 = 0;
      v4 = MEMORY[0x277D84F90];
    }

    v6 = __OFADD__(v2++, 1);
  }

  while (!v6);
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  if ((v9 != 115 || v10 != 0xE100000000000000) && (sub_268689E14() & 1) == 0)
  {
    goto LABEL_131;
  }

  if ((v65 & 1) == 0)
  {
    if (v3 > 8)
    {
      if (v3 != 9)
      {
        v61 = v3 + 1;
        while (*(v4 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v62 = *(v4 + 2);
            if (!v62)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v4 = sub_2685D1024(v4);
            v62 = *(v4 + 2);
            if (!v62)
            {
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }
          }

          *(v4 + 2) = v62 - 1;

          if (--v61 <= 10)
          {
            goto LABEL_126;
          }
        }

        __break(1u);
        goto LABEL_146;
      }
    }

    else
    {
      v51 = v3 - 9;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_268665D44(0, *(v4 + 2) + 1, 1, v4);
        }

        v53 = *(v4 + 2);
        v52 = *(v4 + 3);
        if (v53 >= v52 >> 1)
        {
          v4 = sub_268665D44((v52 > 1), v53 + 1, 1, v4);
        }

        *(v4 + 2) = v53 + 1;
        v54 = &v4[16 * v53];
        *(v54 + 4) = 48;
        *(v54 + 5) = 0xE100000000000000;
      }

      while (!__CFADD__(v51++, 1));
    }

LABEL_126:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD48, &qword_26868F240);
    sub_26861B748();
    v56 = sub_268689AE4();
    v58 = sub_26861AD60(v56, v57);
    if ((v58 & 0x100000000) == 0)
    {
      if ((v64 & 0x8000000000000000) == 0 || !__OFSUB__(0, v58))
      {
        goto LABEL_142;
      }

      __break(1u);
    }

LABEL_131:

LABEL_132:

LABEL_133:
    sub_2685BD910();
    swift_allocError();
    *v59 = xmmword_26868F1C0;
    swift_willThrow();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD48, &qword_26868F240);
  sub_26861B748();
  v48 = sub_268689AE4();
  v64 = sub_26861AA60(v48, v49);
  if (v50)
  {
    goto LABEL_131;
  }

  if (qword_28028BDB0 != -1)
  {
LABEL_146:
    swift_once();
  }

  if (v64 < qword_28028CD40 || v64 > 315576000000)
  {
    goto LABEL_131;
  }

LABEL_142:
  sub_268689A74();
  if (v63)
  {

    goto LABEL_132;
  }

  return v64;
}

unint64_t sub_26861AA60(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_268689D24();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_26861BD28(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_26861AD60(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_26861B7AC(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_268689D24();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_26861B03C(uint64_t result, int a2)
{
  if ((a2 + 999999999) > 0x773593FE)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if (a2 < 0 && (v3 = result - 1, result >= 1))
  {
    v4 = a2 + 1000000000;
  }

  else
  {
    v5 = a2 - 1000000000;
    if (result < 0)
    {
      v6 = result + 1;
    }

    else
    {
      v5 = a2;
      v6 = result;
    }

    if (a2 >= 1)
    {
      v4 = v5;
    }

    else
    {
      v4 = a2;
    }

    if (a2 >= 1)
    {
      v3 = v6;
    }

    else
    {
      v3 = result;
    }
  }

  if (qword_28028BDB0 != -1)
  {
    swift_once();
  }

  result = 0;
  if (v3 <= 315576000000 && v3 >= qword_28028CD40)
  {
    if (v4)
    {
      HIDWORD(v7) = 1757569337 * v4 + 137408;
      LODWORD(v7) = HIDWORD(v7);
      if ((v7 >> 6) <= 0x10C6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
        v16 = swift_allocObject();
        v17 = MEMORY[0x277D84A28];
        *(v16 + 16) = xmmword_26868F1D0;
        v18 = MEMORY[0x277D84A90];
        *(v16 + 56) = v17;
        *(v16 + 64) = v18;
        *(v16 + 32) = v3;
        if (v4 >= 0)
        {
          v19 = v4;
        }

        else
        {
          v19 = -v4;
        }

        v20 = MEMORY[0x277D84A20];
        *(v16 + 96) = MEMORY[0x277D849A8];
        *(v16 + 104) = v20;
        *(v16 + 72) = v19 / 0xF4240;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_26868F1D0;
        v9 = MEMORY[0x277D84A90];
        *(v8 + 56) = MEMORY[0x277D84A28];
        *(v8 + 64) = v9;
        *(v8 + 32) = v3;
        if (v4 >= 0)
        {
          v10 = v4;
        }

        else
        {
          v10 = -v4;
        }

        HIDWORD(v11) = 652835029 * v4 + 17179864;
        LODWORD(v11) = HIDWORD(v11);
        v12 = MEMORY[0x277D84A20];
        *(v8 + 96) = MEMORY[0x277D849A8];
        *(v8 + 104) = v12;
        if ((v11 >> 3) <= 0x418936)
        {
          *(v8 + 72) = v10 / 0x3E8;
        }

        else
        {
          *(v8 + 72) = v10;
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D84A28];
      *(v13 + 16) = xmmword_26868F1E0;
      v15 = MEMORY[0x277D84A90];
      *(v13 + 56) = v14;
      *(v13 + 64) = v15;
      *(v13 + 32) = v3;
    }

    return sub_268689984();
  }

  return result;
}

uint64_t sub_26861B324(uint64_t result, int a2)
{
  if ((a2 + 999999999) >= 0x773593FF)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if (a2 < 0 && result >= 1)
  {
    --result;
  }

  else
  {
    if (result < 0)
    {
      v3 = result + 1;
    }

    else
    {
      v3 = result;
    }

    if (a2 >= 1)
    {
      return v3;
    }
  }

  return result;
}

double Google_Protobuf_Duration.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_26861B3C4()
{
  v1 = sub_26861B03C(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x26D61D4B0](v1);

    MEMORY[0x26D61D4B0](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_2685D104C();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

void sub_26861B488(uint64_t a1)
{
  sub_2685BC49C(a1);
  if (!v2)
  {
    v5 = sub_26861A320(v3, v4);
    v7 = v6;

    *v1 = v5;
    *(v1 + 8) = v7;
  }
}

void _s20SiriOntologyProtobuf07Google_C9_DurationV12floatLiteralACSd_tcfC_0(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = trunc(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round((a2 - v3) * 1000000000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 2147483650.0)
  {
    *a1 = sub_26861B324(v3, v4);
    *(a1 + 8) = v5;
    *(a1 + 16) = xmmword_26868A5E0;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t - prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __OFSUB__(0, *a1);
  result = -*a1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 8);
    if (!__OFSUB__(0, v6))
    {
      result = sub_26861B324(result, -v6);
      *(a2 + 16) = xmmword_26868A5E0;
      *a2 = result;
      *(a2 + 8) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t + infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFADD__(*a1, *a2);
  result = *a1 + *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFADD__(v8, v7))
    {
      result = sub_26861B324(result, v8 + v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26861B6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFSUB__(*a1, *a2);
  result = *a1 - *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFSUB__(v8, v7))
    {
      result = sub_26861B324(result, v8 - v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26861B748()
{
  result = qword_28028CD50;
  if (!qword_28028CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028CD48, &qword_26868F240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD50);
  }

  return result;
}

unsigned __int8 *sub_26861B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_268689AF4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26861C2B4(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_268689D24();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_26861BD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_268689AF4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26861C2B4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_268689D24();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26861C2B4(uint64_t a1, unint64_t a2)
{
  v2 = sub_268689B04();
  v6 = sub_26861C334(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26861C334(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_268689C84();
    if (!v9 || (v10 = v9, v11 = sub_26861C48C(v9, 0), v12 = sub_26861C500(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_268689A14();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_268689A14();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_268689D24();
LABEL_4:

  return sub_268689A14();
}

void *sub_26861C48C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD58, &qword_26868F248);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26861C500(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26866A0F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_268689AB4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_268689D24();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26866A0F8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_268689A94();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_26861C728()
{
  result = qword_28028CD68;
  if (!qword_28028CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD68);
  }

  return result;
}

unint64_t sub_26861C77C()
{
  result = qword_28028CD78;
  if (!qword_28028CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD78);
  }

  return result;
}

uint64_t OptionalExtensionField.value.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t OptionalExtensionField.value.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t static OptionalExtensionField.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268689944() & 1;
}

uint64_t OptionalExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for OptionalExtensionField(0, a3, a4, a4);
  sub_2685B17CC(a1, a5 + *(v8 + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 32);

  return v10(a5, a2, AssociatedTypeWitness);
}

uint64_t OptionalExtensionField.debugDescription.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v4 + 16))(&v6 - v3, v1, AssociatedTypeWitness);
  return sub_2686899C4();
}

uint64_t OptionalExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_268689924();
}

uint64_t OptionalExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v8 = static OptionalExtensionField.== infix(_:_:)(v2, v7, *(a2 + 16), *(a2 + 24));
  (*(v4 + 8))(v7, a2);
  return v8 & 1;
}

uint64_t OptionalExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v22 - v9;
  v10 = sub_268689C74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v25 = v8;
  (*(v8 + 56))(&v22 - v15, 1, 1, AssociatedTypeWitness);
  v17 = v28;
  (*(v5 + 32))(v16, a1, v26, v27, v6, v5);
  if (v17)
  {
    return (*(v11 + 8))(v16, v10);
  }

  v20 = v23;
  v19 = v24;
  (*(v11 + 32))(v14, v16, v10);
  v21 = v25;
  if ((*(v25 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v21 + 32))(v20, v14, AssociatedTypeWitness);
  return (*(v21 + 40))(v19, v20, AssociatedTypeWitness);
}

uint64_t OptionalExtensionField.init<A>(protobufExtension:decoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a6;
  v37 = a2;
  v38 = a4;
  v41 = a1;
  v35 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = sub_268689C74();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v36 = v10;
  v22 = v10;
  v23 = a5;
  (*(v22 + 56))(&v33 - v20, 1, 1, AssociatedTypeWitness);
  v24 = v40;
  (*(a5 + 32))(v21, v37, v38, v39, a3, a5);
  v40 = v24;
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    v39 = a3;
    v26 = v34;
    (*(v16 + 32))(v19, v21, v15);
    if ((*(v36 + 48))(v19, 1, AssociatedTypeWitness) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v41);
      (*(v16 + 8))(v19, v15);
      v28 = 1;
      v29 = v35;
      v30 = v39;
    }

    else
    {
      v31 = *(v36 + 32);
      v31(v14, v19, AssociatedTypeWitness);
      v31(v26, v14, AssociatedTypeWitness);
      v29 = v35;
      v30 = v39;
      OptionalExtensionField.init(protobufExtension:value:)(v41, v26, v39, v23, v35);
      v28 = 0;
    }

    v32 = type metadata accessor for OptionalExtensionField(0, v30, v23, v27);
    return (*(*(v32 - 8) + 56))(v29, v28, 1, v32);
  }
}

uint64_t OptionalExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 16);
  v10 = (v4 + *(a2 + 36));
  v12 = v10[3];
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v12);
  v13 = (*(v11 + 8))(v12, v11);
  return (*(*(a2 + 24) + 48))(v4, v13, a1, a3, a4, v9);
}

uint64_t OptionalExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  OptionalExtensionField.hash(into:)(v3, a1);
  return sub_268689EF4();
}

uint64_t (*sub_26861D428(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_26861D5B8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_268689C04();
  if (!v19)
  {
    return sub_268689B44();
  }

  v41 = v19;
  v45 = sub_268689D54();
  v32 = sub_268689D64();
  sub_268689D34();
  result = sub_268689BF4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_268689C34();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_268689D44();
      result = sub_268689C14();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RepeatedExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_268689B74();
  if (result >= 1)
  {
    v12 = a4;
    v14 = v4[4];
    v13 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v14);
    v15 = (*(v13 + 8))(v14, v13);
    return (*(v9 + 56))(v8, v15, a1, a3, v12, v10, v9);
  }

  return result;
}

uint64_t (*sub_26861DAF0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t PackedExtensionField.value.getter()
{
  sub_2685B9910();
}

uint64_t PackedExtensionField.value.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PackedExtensionField.protobufExtension.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_2685B17CC(a1, v1 + 8);
}

uint64_t sub_26861DCA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_268689BC4();
}

uint64_t PackedExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2685B17CC(a1, (a3 + 1));
  *a3 = a2;
  return result;
}

uint64_t sub_26861DD74(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_268689BB4();
}

uint64_t sub_26861DE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *, void, void))
{
  sub_2685B1724(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  LOBYTE(a3) = a3(v3, v8, *(a2 + 16), *(a2 + 24));
  (*(*(a2 - 8) + 8))(v8, a2);
  return a3 & 1;
}

uint64_t sub_26861DEF4(uint64_t a1, void (*a2)(char *, char *))
{
  v14 = *v2;
  v4 = *(a1 + 24);
  v13[2] = *(a1 + 16);
  v13[3] = v4;
  swift_getAssociatedTypeWitness();
  v5 = sub_268689BA4();

  WitnessTable = swift_getWitnessTable();
  v8 = sub_26861D5B8(a2, v13, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
  sub_268621BAC();
  v9 = sub_268689934();
  v11 = v10;

  v14 = 91;
  v15 = 0xE100000000000000;
  MEMORY[0x26D61D4B0](v9, v11);

  MEMORY[0x26D61D4B0](93, 0xE100000000000000);

  return v14;
}

uint64_t sub_26861E060@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v8 + 16))(&v11 - v7, a1, AssociatedTypeWitness);
  result = sub_2686899C4();
  *a4 = result;
  a4[1] = v10;
  return result;
}

uint64_t sub_26861E1B8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  v17 = sub_268689B44();
  (*(a5 + 40))(&v17, a2, a4, a6, a3, a5);
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v17;
    result = sub_2685B17CC(a1, (a7 + 1));
    *a7 = v16;
  }

  return result;
}

uint64_t PackedExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_268689B74();
  if (result >= 1)
  {
    v12 = a4;
    v14 = v4[4];
    v13 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v14);
    v15 = (*(v13 + 8))(v14, v13);
    return (*(v9 + 64))(v8, v15, a1, a3, v12, v10, v9);
  }

  return result;
}

uint64_t sub_26861E3C0(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_268689E94();
  a2(v5, a1);
  return sub_268689EF4();
}

uint64_t (*sub_26861E418(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PackedExtensionField.value.modify();
  return sub_26861E488;
}

uint64_t sub_26861E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_268689E94();
  a4(v7, a2);
  return sub_268689EF4();
}

uint64_t _s20SiriOntologyProtobuf22OptionalExtensionFieldV08protobufE0AA010AnyMessageE0_pvs_0(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_2685B17CC(a1, v2 + v4);
}

uint64_t OptionalEnumExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for OptionalEnumExtensionField(0, a3, a4, a4);
  sub_2685B17CC(a1, a5 + *(v9 + 36));
  v10 = *(*(a3 - 8) + 32);

  return v10(a5, a2, a3);
}

uint64_t OptionalEnumExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v7 = sub_268689944();
  (*(v3 + 8))(v6, a2);
  return v7 & 1;
}

uint64_t OptionalEnumExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268689C74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v22 = v7;
  (*(v7 + 56))(&v21 - v15, 1, 1, v6);
  v17 = v25;
  (*(a4 + 392))(v16, v6, *(a2 + 24), v24, a4);
  if (v17)
  {
    return (*(v11 + 8))(v16, v10);
  }

  v19 = v21;
  (*(v11 + 32))(v14, v16, v10);
  v20 = v22;
  if ((*(v22 + 48))(v14, 1, v6) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v20 + 32))(v9, v14, v6);
  return (*(v20 + 40))(v19, v9, v6);
}

uint64_t OptionalEnumExtensionField.init<A>(protobufExtension:decoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a4;
  v39 = a2;
  v42 = a1;
  v37 = a7;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v43 = sub_268689C74();
  v15 = *(v43 - 8);
  v16 = MEMORY[0x28223BE20](v43);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v38 = v10;
  (*(v10 + 56))(&v35 - v19, 1, 1, a3);
  v21 = a5;
  v22 = v41;
  (*(a6 + 392))(v20, a3, a5, v40, a6);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    return (*(v15 + 8))(v20, v43);
  }

  else
  {
    v24 = v14;
    v25 = v42;
    v41 = v21;
    v26 = v20;
    v27 = v43;
    (*(v15 + 32))(v18, v26, v43);
    if ((*(v38 + 48))(v18, 1, a3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
      (*(v15 + 8))(v18, v27);
      v29 = 1;
      v30 = v37;
      v31 = v41;
    }

    else
    {
      v32 = *(v38 + 32);
      v32(v24, v18, a3);
      v33 = v36;
      v32(v36, v24, a3);
      v30 = v37;
      v31 = v41;
      OptionalEnumExtensionField.init(protobufExtension:value:)(v25, v33, a3, v41, v37);
      v29 = 0;
    }

    v34 = type metadata accessor for OptionalEnumExtensionField(0, a3, v31, v28);
    return (*(*(v34 - 8) + 56))(v30, v29, 1, v34);
  }
}

uint64_t OptionalEnumExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(a2 + 36));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 8))(v9, v10);
  return (*(a4 + 128))(v4, v11, *(a2 + 16), *(a2 + 24), a3, a4);
}

uint64_t OptionalEnumExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  sub_268689924();
  return sub_268689EF4();
}

uint64_t (*sub_26861EE60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalEnumExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t RepeatedEnumExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 272))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t (*sub_26861F0B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedEnumExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_26861F1D0(uint64_t a1, uint64_t a2)
{
  sub_2685B1724(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v3 = sub_268689BC4();
  (*(*(a2 - 8) + 8))(v6, a2);
  return v3 & 1;
}

uint64_t sub_26861F294(uint64_t a1, void (*a2)(char *, char *))
{
  v13 = *v2;
  v12[1] = *(a1 + 16);
  v4 = sub_268689BA4();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_26861D5B8(a2, v12, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
  sub_268621BAC();
  v8 = sub_268689934();
  v10 = v9;

  v13 = 91;
  v14 = 0xE100000000000000;
  MEMORY[0x26D61D4B0](v8, v10);

  MEMORY[0x26D61D4B0](93, 0xE100000000000000);

  return v13;
}

uint64_t sub_26861F3E8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2686899C4();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_26861F51C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v15 = sub_268689B44();
  (*(a5 + 400))(&v15, a2, a4, a3, a5);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v15;
    result = sub_2685B17CC(a1, (a6 + 1));
    *a6 = v14;
  }

  return result;
}

uint64_t PackedEnumExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 400))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t sub_26861F6CC(uint64_t a1)
{
  sub_268689E94();
  sub_268689BB4();
  return sub_268689EF4();
}

uint64_t (*sub_26861F71C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PackedEnumExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t _s20SiriOntologyProtobuf26OptionalEnumExtensionFieldV16debugDescriptionSSvg_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_2686899C4();
}

uint64_t OptionalMessageExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v7 = sub_268689944();
  (*(v3 + 8))(v6, a2);
  return v7 & 1;
}

uint64_t OptionalMessageExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268689C74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = *(v8 + 16);
  v23 = v4;
  v17(&v22 - v15, v4, v7);
  (*(v8 + 56))(v16, 0, 1, v7);
  v18 = v26;
  (*(a4 + 408))(v16, v7, *(a2 + 24), v25, a4);
  if (v18)
  {
    return (*(v11 + 8))(v16, v10);
  }

  v21 = v22;
  v20 = v23;
  (*(v11 + 32))(v14, v16, v10);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v8 + 32))(v21, v14, v7);
  return (*(v8 + 40))(v20, v21, v7);
}

uint64_t OptionalMessageExtensionField.init<A>(protobufExtension:decoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a4;
  v36 = a6;
  v37 = a8;
  v38 = a2;
  v42 = a1;
  v11 = *(a3 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v34 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v41 = sub_268689C74();
  v16 = *(v41 - 8);
  v17 = MEMORY[0x28223BE20](v41);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v35 = v11;
  (*(v11 + 56))(&v34 - v20, 1, 1, a3);
  v22 = a5;
  v23 = v40;
  (*(a7 + 408))(v21, a3, a5, v39, a7);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    return (*(v16 + 8))(v21, v41);
  }

  else
  {
    v25 = v34;
    v40 = v22;
    v26 = v41;
    (*(v16 + 32))(v19, v21, v41);
    v27 = v35;
    if ((*(v35 + 48))(v19, 1, a3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
      (*(v16 + 8))(v19, v26);
      v28 = 1;
      v30 = v36;
      v29 = v37;
      v31 = v40;
    }

    else
    {
      v32 = *(v27 + 32);
      v32(v15, v19, a3);
      v32(v25, v15, a3);
      v30 = v36;
      v29 = v37;
      v31 = v40;
      OptionalMessageExtensionField.init(protobufExtension:value:)(v42, v25, a3, v40, v36, v37);
      v28 = 0;
    }

    v33 = type metadata accessor for OptionalMessageExtensionField(0, a3, v31, v30);
    return (*(*(v33 - 8) + 56))(v29, v28, 1, v33);
  }
}

uint64_t OptionalMessageExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(a2 + 44));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 8))(v9, v10);
  return (*(a4 + 136))(v4, v11, *(a2 + 16), *(a2 + 24), a3, a4);
}

uint64_t OptionalMessageExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  (*(*(a1 + 24) + 80))(v3, *(a1 + 16));
  return sub_268689EF4();
}

uint64_t (*sub_268620114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalMessageExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t RepeatedMessageExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;

  if (sub_268689B74())
  {
    v9 = 0;
    v17 = *(a2 + 24);
    v10 = *(v17 + 80);
    v15 = v6;
    v16 = v10;
    while (1)
    {
      v11 = sub_268689B64();
      sub_268689B24();
      if (v11)
      {
        (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v4);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v15 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        (*(v5 + 16))(v7, &v19, v4);
        swift_unknownObjectRelease();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v16(v18, v4, v17);
      (*(v5 + 8))(v7, v4);
      ++v9;
      if (v12 == sub_268689B74())
      {
      }
    }
  }
}