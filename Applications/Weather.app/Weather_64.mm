uint64_t sub_1006D4F04(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v7 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(*(v5 - 8) + 64);
  v18 = *(v11 + 80);
  if (v13)
  {
    v19 = 8;
  }

  else
  {
    v19 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v16;
  v21 = v16 | 7;
  v22 = ((v16 + 16) & ~v16) + v17 + v21;
  v23 = v17 + 7;
  v24 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v18 | v16;
  v26 = v25 | 7;
  v27 = (v25 | 7) + 17;
  v28 = *(*(v10 - 8) + 64) + v16;
  v29 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v30 = v19 + (((v28 & ~v20) + v17 + (((v28 & ~v20) + v17 + v25) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v27 + ((((((((((v24 + (v22 & ~v21) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + 89;
  if (v30 > 3)
  {
    goto LABEL_22;
  }

  v32 = v29 + 255;
  if ((v29 + 255) > 0xFFFEFF)
  {
    v31 = *&a1[v30];
    if (!v31)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (v32 >> 8 > 0xFE)
  {
    v31 = *&a1[v30];
    if (!*&a1[v30])
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (v32 >= 0x100)
  {
LABEL_22:
    v31 = a1[v30];
    if (!a1[v30])
    {
      goto LABEL_34;
    }

LABEL_29:
    v33 = (v31 - 1) << (8 * v30);
    if (v30 <= 3)
    {
      v34 = *a1;
    }

    else
    {
      v33 = 0;
      v34 = *a1;
    }

    return v15 + (v34 | v33) + 1;
  }

LABEL_34:
  v36 = ~v20;
  if (v14 > v8)
  {
    v37 = &a1[v22] & ~v21;
    if (v9 == v15)
    {
      if (v7 < 0x7FFFFFFE)
      {
        v38 = *((v23 + v37) & 0xFFFFFFFFFFFFFFF8);
        if (v38 >= 0xFFFFFFFF)
        {
          LODWORD(v38) = -1;
        }

        if ((v38 + 1) >= 2)
        {
          return v38;
        }

        else
        {
          return 0;
        }
      }

      goto LABEL_50;
    }

    v41 = (v37 + v24 + 8);
    if (v15 == 0x7FFFFFFF)
    {
      v40 = *v41;
      goto LABEL_46;
    }

    if (v13)
    {
      v42 = (v27 + ((((((((((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
      if (v12 >= v7)
      {
        v7 = v12;
        v5 = v10;
      }

      else
      {
        v42 = (v28 + v42) & v36;
      }

      v43 = sub_100024D10(v42, v7, v5);
      v44 = v43 != 0;
      result = (v43 - 1);
      if (result != 0 && v44)
      {
        return result;
      }
    }

    return 0;
  }

  v39 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v37 = (v39 + v20 + 8) & v36;
LABEL_50:

    return sub_100024D10(v37, v7, v5);
  }

  v40 = *v39;
LABEL_46:
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_1006D5264(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v57 = v12;
  v13 = *(a4 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v10 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = *(v9 + 84);
  }

  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v9 + 80);
  v21 = *(*(v8 - 8) + 64);
  v22 = ((v20 + 16) & ~v20) + v21;
  v23 = v20 | 7;
  v24 = v21 + 7;
  v25 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v14 + 80) | v20;
  v27 = v26 | 7;
  v28 = (v26 | 7) + 17;
  v29 = *(*(v13 - 8) + 64) + v20;
  v30 = ((v29 & ~v20) + v21 + (((v29 & ~v20) + v21 + v26) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v30 + 8;
  v32 = v30 + 9;
  if (v16)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = ((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v28 + ((((((((((v25 + ((v22 + v23) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v26 | 7)) + 89;
  v35 = a3 >= v19;
  v36 = a3 - v19;
  if (v36 != 0 && v35)
  {
    v7 = 1;
    if (v34 <= 3)
    {
      v37 = v36 + 255;
      if (v37 >> 8 < 0xFF)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }

      if (v37 < 0x100)
      {
        v38 = 0;
      }

      if (v37 <= 0xFFFEFF)
      {
        v7 = v38;
      }

      else
      {
        v7 = 4;
      }
    }
  }

  if (v19 < a2)
  {
    v39 = ~v19 + a2;
    if (v34 <= 3)
    {
      v40 = (v39 >> 8) + 1;
      bzero(a1, v34);
      *a1 = v39;
    }

    else
    {
      bzero(a1, v34);
      *a1 = v39;
      v40 = 1;
    }

    switch(v7)
    {
      case 1:
        a1[v34] = v40;
        break;
      case 2:
        *&a1[v34] = v40;
        break;
      case 3:
        goto LABEL_99;
      case 4:
        *&a1[v34] = v40;
        break;
      default:
        return;
    }

    return;
  }

  v41 = ~v20;
  v42 = v25 + 8;
  switch(v7)
  {
    case 1:
      a1[v34] = 0;
      if (a2)
      {
        goto LABEL_43;
      }

      return;
    case 2:
      *&a1[v34] = 0;
      if (a2)
      {
        goto LABEL_43;
      }

      return;
    case 3:
LABEL_99:
      __break(1u);
      return;
    case 4:
      *&a1[v34] = 0;
      goto LABEL_42;
    default:
LABEL_42:
      if (!a2)
      {
        return;
      }

LABEL_43:
      if (v17 <= v11)
      {
        if (v11 >= a2)
        {
          v45 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v46 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v46 = (a2 - 1);
            }

LABEL_86:
            *v45 = v46;
            return;
          }

          v44 = (v45 + v20 + 8) & v41;
          goto LABEL_74;
        }

        if (v22 <= 3)
        {
          v47 = ~(-1 << (8 * v22));
        }

        else
        {
          v47 = -1;
        }

        if (v22)
        {
          v48 = v47 & (~v11 + a2);
          if (v22 <= 3)
          {
            v49 = v22;
          }

          else
          {
            v49 = 4;
          }

          bzero(a1, v22);
          switch(v49)
          {
            case 2:
              *a1 = v48;
              break;
            case 3:
              *a1 = v48;
              a1[2] = BYTE2(v48);
              break;
            case 4:
              goto LABEL_72;
            default:
              *a1 = v48;
              break;
          }
        }
      }

      else
      {
        v44 = &a1[v22 + v23] & ~v23;
        if (v57 == v19)
        {
          if (v10 < 0x7FFFFFFE)
          {
            v45 = ((v24 + v44) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v45 = 0;
              *v45 = a2 - 0x7FFFFFFF;
              return;
            }

            v46 = a2;
            goto LABEL_86;
          }

          goto LABEL_74;
        }

        v50 = (v44 + v42);
        if (v19 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v51 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v51 = (a2 - 1);
          }

          *v50 = v51;
          return;
        }

        v43 = ~v27;
        a1 = ((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v27);
        if (v18 >= a2)
        {
          if (v17 < a2)
          {
            if (v33 < 4)
            {
              v55 = ~(-1 << (8 * v33));
            }

            else
            {
              v55 = -1;
            }

            if (v33)
            {
              v56 = v55 & (~v17 + a2);
              bzero(((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43), v33);
              if (v33 == 1)
              {
                *a1 = v56;
              }

              else
              {
                *a1 = v56;
              }
            }

            return;
          }

          v48 = a2 - v16;
          if (a2 < v16)
          {
            if (v15 >= v10)
            {
              a2 = (a2 + 1);
              v44 = (v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43;
              v10 = v15;
              v8 = v13;
            }

            else
            {
              v44 = &a1[v29] & v41;
              a2 = (a2 + 1);
            }

LABEL_74:

            sub_10001B350(v44, a2, v10, v8);
            return;
          }

          if (!v31)
          {
            return;
          }

          v53 = ((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43);
          v54 = v31;
        }

        else
        {
          v52 = ((v33 + 7) & 0xFFFFFFF8) + 8;
          if (((v33 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v48 = ~v18 + a2;
          v53 = ((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43);
          v54 = v52;
        }

        bzero(v53, v54);
LABEL_72:
        *a1 = v48;
      }

      return;
  }
}

double sub_1006D5A60()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_1000437E8();
  v7 = type metadata accessor for LegacyLazyPageAnimatableTabView(v5, v6);
  sub_100003810(v7);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return sub_1006CD898(v9, v10, v11, v1, v2, v3, v4);
}

uint64_t sub_1006D5CFC(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = sub_1000437E8();
  v7 = type metadata accessor for LegacyLazyPageAnimatableTabView(v5, v6);
  sub_100003810(v7);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return sub_1006CD900(a1, v9, v10, v11, v3, v4);
}

unint64_t sub_1006D5DC4()
{
  result = qword_100CD2338;
  if (!qword_100CD2338)
  {
    result = swift_getWitnessTable(aYt, &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround, v0, v1);
    atomic_store(result, &qword_100CD2338);
  }

  return result;
}

uint64_t sub_1006D5F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100013330();
  sub_100041B0C();
  v31 = v17;
  v18 = sub_100021610();
  v20 = v19(v18);
  sub_100003810(v20);
  sub_100030590();
  sub_10003BF08();
  sub_1000C9060();

  return v28(v21, v22, v23, v24, v25, v26, v27, v28, a9, v31, v16, a12, a13, a14, a15, a16);
}

uint64_t sub_1006D5FBC(uint64_t a1)
{
  v2 = type metadata accessor for ForceInvalidationAfterExtendedLaunch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D60C0()
{
  v5 = sub_100036E0C();
  v7 = *(v6(v5) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);
  v11 = v1 + ((v9 + *(*(v2 - 8) + 80) + 8) & ~*(*(v2 - 8) + 80));

  return v13(v1 + v8, v10, v11, v0, v2, v3, v4);
}

uint64_t sub_1006D6264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100013330();
  v31 = v17;
  v32 = *(v16 + 16);
  v18 = sub_100021610();
  v20 = v19(v18);
  sub_100003810(v20);
  sub_100030590();
  sub_10003BF08();
  sub_1000C9060();

  return v28(v21, v22, v23, v24, v25, v26, v27, v28, a9, v31, v32, a12, a13, a14, a15, a16);
}

uint64_t sub_1006D6340(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v12[0] = v2[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v7 = a1(0, v12);
  sub_100003810(v7);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(v9, v3, v4, v5, v6);
}

uint64_t sub_1006D64B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100013330();
  a23 = v25;
  a24 = v26;
  v27 = v24[3];
  v28 = v24[4];
  v29 = v24[5];
  v43 = v30;
  a11 = v24[2];
  a12 = v27;
  a13 = v28;
  a14 = v29;
  v32 = v31(0, &a11);
  sub_100003810(v32);
  sub_100030590();
  sub_1000C9060();

  return v40(v33, v34, v35, v36, v37, v38, v39, v40, a9, v43, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1006D67B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100013330();
  v30 = v17;
  v31 = *(v16 + 16);
  v18 = sub_100021610();
  v20 = v19(v18);
  sub_100003810(v20);
  sub_1000C9060();

  return v27(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14, a15, a16);
}

uint64_t sub_1006D6888()
{
  sub_100041B0C();
  v7 = *(type metadata accessor for ScrollViewProxy() - 8);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v10 = sub_1000437E8();
  v12 = type metadata accessor for LazyHStackAnimatableTabView(v10, v11);
  sub_100003810(v12);
  v14 = v1 + ((v9 + v8 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_1006C9090(v2, v0, v1 + v9, v14, v3, v4, v5, v6);
}

void sub_1006D69BC(uint64_t a1)
{
  sub_10013D908(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10013D908(319, &unk_100CD23B0, type metadata accessor for ExtendedAppLaunchState, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006D6AB0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v9 + 80);
  v15 = *(*(v5 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v8 - 8) + 64);
  v17 = *(v6 + 80) | *(v9 + 80);
  v18 = (v16 + 7 + ((v16 + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 8;
  v20 = v18 + 9;
  if (v11)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v17 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = v17 + 16;
  if (v13 >= a2)
  {
LABEL_33:
    v31 = ~v14;
    if (v11 >= 0x7FFFFFFF)
    {
      if (v7 < v10)
      {
        result = (v15 + result) & v31;
        v7 = v10;
        v5 = v8;
      }

      return sub_100024D10(result, v7, v5);
    }

    v32 = (v23 + ((result + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) & v22;
    if (v12 != v13)
    {
      if (v11)
      {
        v33 = v19;
      }

      else
      {
        v33 = v19 + 1;
      }

      v34 = *((((v33 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      return (v34 + 1);
    }

    if (v11 >= 2)
    {
      if (v7 < v10)
      {
        v32 = (v15 + v32) & v31;
        v7 = v10;
        v5 = v8;
      }

      v35 = sub_100024D10(v32, v7, v5);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v24 = ((((v21 + ((v23 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) & v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v24 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v13 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 2:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(result + v24);
      if (!v28)
      {
        goto LABEL_33;
      }

LABEL_30:
      v29 = v28 - 1;
      if ((v24 & 0xFFFFFFF8) != 0)
      {
        v29 = 0;
        v30 = *result;
      }

      else
      {
        v30 = 0;
      }

      result = v13 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_33;
  }

  return result;
}

void sub_1006D6D6C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14;
  }

  v17 = *(v12 + 80);
  v18 = v17;
  v19 = v17;
  v20 = *(*(v8 - 8) + 64) + v17;
  v21 = (v20 & ~v19) + *(*(v11 - 8) + 64);
  v22 = *(v9 + 80) | v18;
  v23 = v22 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v24 = v22 + 16;
  v25 = (v22 + 16 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8)) & v23;
  v26 = (v21 + 7 + ((v21 + v22) & ~v22)) & 0xFFFFFFFFFFFFFFF8;
  v27 = v26 + 8;
  v28 = v26 + 9;
  if (v14)
  {
    v28 = v27;
  }

  v29 = ((((v28 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    v30 = a3 - v16;
    if (((((v28 + v25 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v31 = v30 + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v7 = v32;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 > v16)
  {
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = a2 - v16;
    }

    if (v29)
    {
      v34 = ~v16 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    switch(v7)
    {
      case 1:
        a1[v29] = v33;
        break;
      case 2:
        *&a1[v29] = v33;
        break;
      case 3:
        goto LABEL_76;
      case 4:
        *&a1[v29] = v33;
        break;
      default:
        return;
    }

    return;
  }

  v35 = ~v19;
  switch(v7)
  {
    case 1:
      a1[v29] = 0;
      if (a2)
      {
        goto LABEL_39;
      }

      return;
    case 2:
      *&a1[v29] = 0;
      if (a2)
      {
        goto LABEL_39;
      }

      return;
    case 3:
LABEL_76:
      __break(1u);
      return;
    case 4:
      *&a1[v29] = 0;
      goto LABEL_38;
    default:
LABEL_38:
      if (!a2)
      {
        return;
      }

LABEL_39:
      if (v14 >= 0x7FFFFFFF)
      {
        if (a2 > v14)
        {
          if (v21 <= 3)
          {
            v36 = ~(-1 << (8 * v21));
          }

          else
          {
            v36 = -1;
          }

          if (v21)
          {
            v37 = v36 & (~v14 + a2);
            if (v21 <= 3)
            {
              v38 = v21;
            }

            else
            {
              v38 = 4;
            }

            bzero(a1, v21);
            switch(v38)
            {
              case 2:
                *a1 = v37;
                break;
              case 3:
                *a1 = v37;
                a1[2] = BYTE2(v37);
                break;
              case 4:
                goto LABEL_66;
              default:
                *a1 = v37;
                break;
            }
          }

          return;
        }

        if (v10 < v13)
        {
          v39 = (&a1[v20] & v35);
          goto LABEL_58;
        }

        goto LABEL_69;
      }

      a1 = ((v24 + (&a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8)) & v23);
      if (v15 != v16)
      {
        if (v14)
        {
          v40 = v27;
        }

        else
        {
          v40 = v27 + 1;
        }

        v41 = (((&a1[v40 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v41 = a2 & 0x7FFFFFFF;
          v41[1] = 0;
        }

        else
        {
          *v41 = (a2 - 1);
        }

        return;
      }

      v37 = a2 - v14;
      if (a2 < v14)
      {
        if (v10 < v13)
        {
          v39 = (&a1[v20] & v35);
          a2 = (a2 + 1);
LABEL_58:
          v10 = v13;
          v8 = v11;
LABEL_70:

          sub_10001B350(v39, a2, v10, v8);
          return;
        }

        a2 = (a2 + 1);
LABEL_69:
        v39 = a1;
        goto LABEL_70;
      }

      if (v27)
      {
        bzero(a1, v27);
LABEL_66:
        *a1 = v37;
      }

      return;
  }
}

uint64_t sub_1006D7164()
{
  v5 = sub_100036E0C();
  v7 = v6(v5);
  sub_100003810(v7);
  v9 = v1 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return v11(v9, v0, v2, v3, v4);
}

uint64_t sub_1006D71FC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(a3 + 16);
  v9 = *(v7 + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v7 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v7 + 80);
  v16 = *(*(v6 - 8) + 64);
  v17 = *(v10 + 80);
  if (v12)
  {
    v18 = 8;
  }

  else
  {
    v18 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v15;
  v20 = v17 | v15;
  v21 = v20 | 7;
  v22 = *(*(v8 - 8) + 64) + v15;
  v23 = (((v22 & ~v19) + v16 + (((v22 & ~v19) + v16 + v20) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + v18;
  if (v14 >= a2)
  {
LABEL_36:
    v31 = ((result & 0xFFFFFFFFFFFFFFF8) + v19 + 25) & ~v19;
    if (v9 == v14)
    {

      return sub_100024D10(v31, v9, v6);
    }

    v32 = (v31 + v16 + v21) & ~v21;
    if (v13 != v14)
    {
      v33 = *(((v23 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    if (v12 >= 2)
    {
      if (v11 >= v9)
      {
        v9 = v11;
        v6 = v8;
      }

      else
      {
        v32 = (v22 + v32) & ~v19;
      }

      v34 = sub_100024D10(v32, v9, v6);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v24 = ((v23 + ((v21 + v16 + ((v19 + 25) & ~v19)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v25 = (a2 - v14 + 255) >> 8;
  if (v24 <= 3)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = 2;
  }

  if (v26 >= 0x10000)
  {
    LODWORD(v27) = 4;
  }

  else
  {
    LODWORD(v27) = 2;
  }

  if (v26 < 0x100)
  {
    LODWORD(v27) = 1;
  }

  if (v26 >= 2)
  {
    v27 = v27;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    case 2:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(result + v24);
      if (!v28)
      {
        goto LABEL_36;
      }

LABEL_32:
      v29 = (v28 - 1) << (8 * v24);
      if (v24 <= 3)
      {
        v30 = *result;
      }

      else
      {
        v29 = 0;
        v30 = *result;
      }

      result = v14 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

void sub_1006D749C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v10 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 80);
  v19 = *(*(v8 - 8) + 64);
  v20 = *(v12 + 80) | v18;
  v21 = v20 | 7;
  v22 = ((v20 | 7) + v19 + ((v18 + 25) & ~v18)) & ~(v20 | 7);
  v23 = *(*(v11 - 8) + 64) + v18;
  v24 = ((v23 & ~v18) + v19 + (((v23 & ~v18) + v19 + v20) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v24 + 8;
  v26 = v24 + 9;
  if (v14)
  {
    v26 = v25;
  }

  v27 = ((v26 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v17 < a3)
  {
    v28 = (a3 - v17 + 255) >> 8;
    if (v27 <= 3)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v7 = v30;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v17 >= a2)
  {
    v33 = ~v18;
    v34 = ~v21;
    switch(v7)
    {
      case 1:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 2:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *(a1 + v27) = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (!a2)
        {
          return;
        }

LABEL_41:
        v35 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v18 + 25) & v33;
        if (v10 == v17)
        {
          goto LABEL_42;
        }

        v36 = ((v35 + v19 + v21) & v34);
        if (v15 == v17)
        {
          v37 = a2 - v14;
          if (a2 >= v14)
          {
            if (v25)
            {
              bzero(((v35 + v19 + v21) & v34), v25);
              *v36 = v37;
            }
          }

          else
          {
            if (v13 >= v10)
            {
              a2 = (a2 + 1);
              v35 = (v35 + v19 + v21) & v34;
              v10 = v13;
              v8 = v11;
            }

            else
            {
              v35 = (v36 + v23) & v33;
              a2 = (a2 + 1);
            }

LABEL_42:

            sub_10001B350(v35, a2, v10, v8);
          }
        }

        else
        {
          v38 = (v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v38 + 16) = 0;
            *v38 = a2 & 0x7FFFFFFF;
            *(v38 + 8) = 0;
          }

          else
          {
            *(v38 + 8) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v31 = ~v17 + a2;
    bzero(a1, v27);
    if (v27 <= 3)
    {
      v32 = (v31 >> 8) + 1;
    }

    else
    {
      v32 = 1;
    }

    if (v27 > 3)
    {
      *a1 = v31;
    }

    else
    {
      *a1 = v31;
    }

    switch(v7)
    {
      case 1:
        *(a1 + v27) = v32;
        break;
      case 2:
        *(a1 + v27) = v32;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *(a1 + v27) = v32;
        break;
      default:
        return;
    }
  }
}

void sub_1006D77C8()
{
  sub_100041B0C();
  v0 = sub_1000437E8();
  v2 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier(v0, v1);
  sub_100003810(v2);
  sub_100030590();
  sub_10003BF08();

  sub_1006D4338(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1006D789C()
{
  v0 = sub_10022C350(&qword_100CD25C0, &qword_100A77EB0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v11[-1] - v2;
  sub_10022C350(&qword_100CD25C8, &qword_100A77EB8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = (&v11[-1] - v5);
  sub_10098A0B8();
  if ((v16 & 0xC0) == 0x80 && (v16 == 128 ? (v7 = v11[0] == 1) : (v7 = 0), v7 && (v8 = vorrq_s8(vorrq_s8(v12, v14), vorrq_s8(v13, v15)), !(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v11[3] | v11[2] | v11[1]))))
  {
    *v6 = static Color.clear.getter();
    swift_storeEnumTagMultiPayload();
    sub_1006D9A70();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10026BA38(v11);
    sub_1006D7AEC(v3);
    if (qword_100CA23F8 != -1)
    {
      swift_once();
    }

    *&v3[*(v0 + 36)] = qword_100D90688;
    sub_1000955E0(v3, v6, &qword_100CD25C0, &qword_100A77EB0);
    swift_storeEnumTagMultiPayload();
    sub_1006D9A70();

    _ConditionalContent<>.init(storage:)();
    return sub_10003FDA0(v3, &qword_100CD25C0);
  }
}

uint64_t sub_1006D7AEC@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v2 = type metadata accessor for AutomationInfo(0);
  v3 = sub_10001BA94(v2, &v145);
  __chkstk_darwin(v3);
  sub_100003990(&v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10022C350(&qword_100CD2660, &qword_100A77F08);
  sub_10001BA94(v5, &v144);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  v8 = sub_10022C350(&qword_100CD2640, &qword_100A77EF8);
  sub_10001BA94(v8, &v149);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100003990(v10);
  v11 = sub_10022C350(&qword_100CD2688, &qword_100A77F20);
  sub_10001BA94(v11, &v148);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100003990(v13);
  v14 = sub_10022C350(&qword_100CD2610, &qword_100A77EE0);
  sub_10001BA94(v14, v152);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  sub_100003990(v16);
  v17 = sub_10022C350(&qword_100CD2630, &qword_100A77EF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v122 - v19;
  v21 = sub_10022C350(&qword_100CD2690, &qword_100A77F28);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v122 - v23;
  v25 = sub_10022C350(&qword_100CD2620, &qword_100A77EE8);
  sub_10001BA94(v25, &v147.i64[1]);
  sub_100003828();
  __chkstk_darwin(v26);
  v27 = sub_10022C350(&qword_100CD2600, &unk_100A77ED0);
  sub_10001BA94(v27, &v142.i64[1]);
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CD2698, &qword_100A77F30);
  sub_10001BA94(v30, &v150);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  sub_100003990(v32);
  sub_10022C350(&qword_100CD26A0, &qword_100A77F38);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = (&v122 - v34);
  v36 = sub_10022C350(&qword_100CD25F0, &qword_100A77EC8);
  sub_10001BA94(v36, &v150.i64[1]);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  sub_100003990(v38);
  v39 = v1;
  sub_10098A0B8();
  v41 = *(&v144 + 1) | (BYTE3(v144) << 16);
  v42 = v151 >> 6;
  if (v42)
  {
    if (v42 == 1)
    {
      v137[0] = v144;
      v137[1] = v145;
      v138 = v146;
      v139 = v147;
      v140 = v148;
      v141 = v149;
      v142 = v150;
      v143 = v151 & 0x3F;
      __chkstk_darwin(v40);
      *(&v122 - 2) = v1;
      *(&v122 - 1) = v137;
      sub_10022C350(&qword_100CD26A8, &qword_100A77F40);
      v43 = sub_10022E824(&qword_100CD26B0, &qword_100A77F48);
      v44 = sub_10022E824(&qword_100CD26B8, &qword_100A77F50);
      v45 = sub_10022E824(&qword_100CD26C0, &qword_100A77F58);
      v46 = sub_100014AD8();
      sub_10022E824(v46, v47);
      v48 = sub_10023FBF4(&qword_100CD26D0, &qword_100CD26C8, &qword_100A77F60, &protocol conformance descriptor for ZStack<A>);
      sub_10004E960(v48);
      v49 = sub_100023010();
      v133 = v45;
      v134 = v49;
      v50 = sub_100023010();
      v51 = sub_100014AD8();
      sub_10022E824(v51, v52);
      v53 = sub_10023FBF4(&qword_100CD26E0, &qword_100CD26D8, &qword_100A77F68, &protocol conformance descriptor for ToolbarItem<A, B>);
      sub_10004E960(v53);
      v54 = sub_100023010();
      v133 = v43;
      v134 = v44;
      v135 = v50;
      v136 = v54;
      sub_100023010();
      v55 = v126;
      NavigationStack.init<>(root:)();
      v56 = static Color.primary.getter();
      KeyPath = swift_getKeyPath();
      v58 = (v55 + *(sub_10022C350(&qword_100CD2670, &qword_100A77F10) + 36));
      *v58 = KeyPath;
      v58[1] = v56;
      v59 = *(v125 + 36);
      v60 = enum case for ColorScheme.dark(_:);
      v61 = type metadata accessor for ColorScheme();
      sub_1000037E8();
      v63 = *(v62 + 104);
      v63(v55 + v59, v60, v61);
      sub_10000E7B0();
      sub_10001B350(v64, v65, v66, v61);
      type metadata accessor for AutomationViewInfo(0);
      v67 = v127;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v68 = sub_10022C350(&qword_100CD2650, &qword_100A77F00);
      v69 = v128;
      v70 = v128 + *(v68 + 36);
      v71 = type metadata accessor for AutomationInfoProperty(0);
      sub_1003AFC6C(v67, v70 + *(v71 + 24));
      *v70 = 0;
      *(v70 + 8) = 0xE000000000000000;
      *(v70 + 16) = swift_getKeyPath();
      *(v70 + 24) = 0;
      sub_1000955E0(v55, v69, &qword_100CD2660, &qword_100A77F08);
      sub_1001C9E84(v67);
      sub_10003FDA0(v55, &qword_100CD2660);
      sub_10026BA38(&v144);
      v63(v69 + *(v130 + 36), v60, v61);
      sub_10000E7B0();
      sub_10001B350(v72, v73, v74, v61);
      sub_1000955E0(v69, v129, &qword_100CD2640, &qword_100A77EF8);
      swift_storeEnumTagMultiPayload();
      sub_1006D9D24();
      sub_1006D9E68();
      sub_100017CB0();
      _ConditionalContent<>.init(storage:)();
      sub_100074E34();
      sub_1000955E0(v75, v76, &qword_100CD2610, &qword_100A77EE0);
      sub_100028968();
      swift_storeEnumTagMultiPayload();
      sub_10001F5C0();
      sub_1006DA604(v77, v78, v79, v80);
      sub_1006D9C98();
      sub_100006570();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v67, &qword_100CD2610);
      sub_1000164CC();
      return sub_10003FDA0(v81, v82);
    }

    if (v151 != 128 || (v89 = vorrq_s8(vorrq_s8(v150, v148), vorrq_s8(v149, v147)), v144 | (v41 << 8) | (HIDWORD(v144) << 32) | *&vorr_s8(*v89.i8, *&vextq_s8(v89, v89, 8uLL)) | v146 | v145 | *(&v146 + 1)))
    {
      *v35 = static Color.clear.getter();
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1006D9BE0();

      sub_1000698A8();
      _ConditionalContent<>.init(storage:)();
      sub_100074E34();
      sub_1000955E0(v118, v119, &qword_100CD25F0, &qword_100A77EC8);
      sub_100028968();
      swift_storeEnumTagMultiPayload();
      sub_10001F5C0();
      sub_1006DA604(v120, &qword_100CD25F0, &qword_100A77EC8, v121);
      sub_1006D9C98();
      sub_100006570();
      _ConditionalContent<>.init(storage:)();

      v100 = v21;
      v101 = &qword_100CD25F0;
    }

    else
    {
      v90 = v123;
      sub_100035B30((v1 + 2), v123);
      v91 = *(v124 + 36);
      v92 = enum case for ColorScheme.dark(_:);
      v93 = type metadata accessor for ColorScheme();
      sub_1000037E8();
      (*(v94 + 104))(v90 + v91, v92, v93);
      sub_10000E7B0();
      sub_10001B350(v95, v96, v97, v93);
      sub_1000955E0(v90, v35, &qword_100CD2600, &unk_100A77ED0);
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1006D9BE0();
      sub_1000698A8();
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(v21, v131, &qword_100CD25F0, &qword_100A77EC8);
      swift_storeEnumTagMultiPayload();
      sub_10001F5C0();
      sub_1006DA604(v98, &qword_100CD25F0, &qword_100A77EC8, v99);
      sub_1006D9C98();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v21, &qword_100CD25F0);
      v100 = v90;
      v101 = &qword_100CD2600;
    }
  }

  else
  {
    v84 = v21;
    v85 = v24;
    v86 = v1[5];
    v87 = v39[6];
    if (v144)
    {
      sub_1000161C0(v39 + 2, v39[5]);
      *(&v138 + 1) = v86;
      v139.i64[0] = *(v87 + 16);
      sub_100042FB0(v137);
      sub_1000164CC();
      v88();
      v139.i8[10] = BYTE2(v41);
      v139.i16[4] = v41;
      sub_1003AAAFC(v137, v85);
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1003AA35C();
      sub_1006D9DB0();
      sub_100013B10();
      _ConditionalContent<>.init(storage:)();
      sub_1003AAB58(v137);
    }

    else
    {
      sub_1000161C0(v39 + 2, v39[5]);
      *(v20 + 3) = v86;
      *(v20 + 4) = *(v87 + 8);
      sub_100042FB0(v20);
      sub_1000164CC();
      v102();
      v20[40] = 0;
      v103 = *(v17 + 36);
      v104 = enum case for ColorScheme.dark(_:);
      v105 = type metadata accessor for ColorScheme();
      sub_1000037E8();
      (*(v106 + 104))(&v20[v103], v104, v105);
      sub_10000E7B0();
      sub_10001B350(v107, v108, v109, v105);
      sub_1000955E0(v20, v85, &qword_100CD2630, &qword_100A77EF0);
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1003AA35C();
      sub_1006D9DB0();
      sub_100013B10();
      _ConditionalContent<>.init(storage:)();
      sub_1000164CC();
      sub_10003FDA0(v110, v111);
    }

    sub_1000955E0(v41, v129, &qword_100CD2620, &qword_100A77EE8);
    swift_storeEnumTagMultiPayload();
    sub_1006D9D24();
    sub_1006D9E68();
    sub_100017CB0();
    _ConditionalContent<>.init(storage:)();
    sub_100074E34();
    sub_1000955E0(v112, v113, &qword_100CD2610, &qword_100A77EE0);
    sub_100028968();
    swift_storeEnumTagMultiPayload();
    sub_10001F5C0();
    sub_1006DA604(v114, v115, v116, v117);
    sub_1006D9C98();
    sub_100006570();
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v84, &qword_100CD2610);
    v100 = v41;
    v101 = &qword_100CD2620;
  }

  return sub_10003FDA0(v100, v101);
}

uint64_t sub_1006D88BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v40 = a3;
  v36 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CD26C0, &qword_100A77F58);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v31 - v6;
  v38 = sub_10022C350(&qword_100CD26B0, &qword_100A77F48);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v31 - v8;
  v42 = static Alignment.center.getter();
  v43 = v9;
  sub_1006D95E8(a2, a1);
  v10 = LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)(v10, v12, v11 & 1, v13, 0, 0, 0, "Navigation title of the notification setting view", 49, 2);
  v16 = v15;
  v18 = v17;
  v19 = sub_10022C350(&qword_100CD26C8, &qword_100A77F60);
  v20 = sub_10023FBF4(&qword_100CD26D0, &qword_100CD26C8, &qword_100A77F60, &protocol conformance descriptor for ZStack<A>);
  View.navigationTitle(_:)();
  sub_10010CD64(v14, v16, v18 & 1);

  sub_10003FDA0(&v42, &qword_100CD26C8);
  v21 = v34;
  v22 = v33;
  v23 = v36;
  (*(v34 + 104))(v33, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v36);
  v42 = v19;
  v43 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v31;
  v26 = v35;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v21 + 8))(v22, v23);
  (*(v37 + 8))(v7, v26);
  v41 = v32;
  sub_10022C350(&qword_100CD26B8, &qword_100A77F50);
  v42 = v26;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = sub_10022E824(&qword_100CD26D8, &qword_100A77F68);
  v28 = sub_10023FBF4(&qword_100CD26E0, &qword_100CD26D8, &qword_100A77F68, &protocol conformance descriptor for ToolbarItem<A, B>);
  v42 = v27;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  View.toolbar<A>(content:)();
  return (*(v39 + 8))(v25, v29);
}

uint64_t sub_1006D8DBC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CD26D8, &qword_100A77F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_10022C350(&qword_100CD26E8, &qword_100A77FC8);
  sub_1006DA190();
  ToolbarItem<>.init(placement:content:)();
  sub_10023FBF4(&qword_100CD26E0, &qword_100CD26D8, &qword_100A77F68, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006D8F74(uint64_t a1)
{
  Solarium.init()();
  sub_10022C350(&qword_100CD2700, &qword_100A77FD0);
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_1006DA254();
  sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1006D907C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD2710, &qword_100A77FD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  sub_1006DA394(a1, v19);
  v6 = swift_allocObject();
  v7 = v19[1];
  *(v6 + 16) = v19[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v19[2];
  *(v6 + 64) = v20;
  sub_10022C350(&qword_100CD2718, &qword_100A7E150);
  sub_1006DA3E8();
  Button.init(action:label:)();
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)(v8, v10, v9 & 1, v11, 0, 0, 0, "Accessibility label for the button that dismisses presented notification settings view", 86, 2);
  v14 = v13;
  v16 = v15;
  sub_10023FBF4(&qword_100CD2708, &qword_100CD2710, &qword_100A77FD8, &protocol conformance descriptor for Button<A>);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v12, v14, v16 & 1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006D92BC()
{
  Image.init(systemName:)();
  View.accessibilityHidden(_:)();
}

uint64_t sub_1006D9338(uint64_t a1, double a2)
{
  sub_1006DA394(a1, v5);
  v2 = swift_allocObject();
  v3 = v5[1];
  *(v2 + 16) = v5[0];
  *(v2 + 32) = v3;
  *(v2 + 48) = v5[2];
  *(v2 + 64) = v6;
  return Button.init(action:label:)();
}

uint64_t sub_1006D93E0(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  sub_1000161C0(a1 + 2, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t sub_1006D942C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)(v6, v8, v7 & 1, v9, 0, 0, 0, "Button that dismisses presented notification settings view", 58, 2);
  v12 = v11;
  v14 = v13;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  v15 = Text.font(_:)();
  v17 = v16;
  LOBYTE(v3) = v18;
  v20 = v19;

  sub_10010CD64(v10, v12, v14 & 1);

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_1006D95E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 96))
  {
    v4 = swift_allocObject();
    v5 = *(a1 + 16);
    *(v4 + 16) = *a1;
    *(v4 + 32) = v5;
    *(v4 + 48) = *(a1 + 32);
    *(v4 + 64) = v3;
    *(v4 + 66) = BYTE2(v3);
    *(v4 + 67) = *(a1 + 51);
    *(v4 + 80) = *(a1 + 64);
    *(v4 + 104) = *(a1 + 88);
    *(v4 + 88) = *(a1 + 72);
    __src[10] = sub_10071E894;
    __src[11] = 0;
    LOBYTE(__src[12]) = 0;
    __src[0] = sub_10022C350(&qword_100CA6F50, &qword_100A3E000);
    v6 = qword_100CA1F40;

    if (v6 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    result = sub_1000955E0(&xmmword_100D8FB90, __dst, &unk_100CAF270, &qword_100A31F20);
    if (*(&__dst[1] + 1))
    {
      sub_100013188(__dst, &__src[3]);
      __src[1] = sub_1002B08C4;
      __src[2] = v4;
      v8 = Dictionary.init(dictionaryLiteral:)();
      __src[8] = _swiftEmptyArrayStorage;
      __src[9] = v8;
      memcpy(__dst, __src, 0x61uLL);
      sub_1000955E0(__dst, __src, &qword_100CA6E88, &qword_100A31E30);
      v14 = 1;
      sub_10022C350(&qword_100CA6E88, &qword_100A31E30);
      sub_1006DA4A4();
      sub_10023FBF4(&qword_100CA6E80, &qword_100CA6E88, &qword_100A31E30, byte_100A5F580);
      _ConditionalContent<>.init(storage:)();
      return sub_10003FDA0(__dst, &qword_100CA6E88);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v16 = *a1;
    v17 = v9;
    v18 = *(a1 + 32);
    v15[0] = *(a1 + 51);
    *(v15 + 13) = *(a1 + 64);
    sub_100035B30(a2 + 16, v11);
    __dst[0] = v16;
    __dst[1] = v17;
    __dst[2] = v18;
    LOWORD(__dst[3]) = v3;
    BYTE2(__dst[3]) = BYTE2(v3);
    *(&__dst[3] + 3) = v15[0];
    *&__dst[4] = *(v15 + 13);
    sub_100035B30(v11, &__dst[4] + 8);
    sub_1006DA4F8(a1, __src);
    if (qword_100CA21B0 != -1)
    {
      swift_once();
    }

    v10 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
    sub_10000703C(v10, qword_100D90328);
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    sub_100006F14(v11);
    sub_1006DA554(__dst, __src);
    v14 = 0;
    sub_10022C350(&qword_100CA6E88, &qword_100A31E30);
    sub_1006DA4A4();
    sub_10023FBF4(&qword_100CA6E80, &qword_100CA6E88, &qword_100A31E30, byte_100A5F580);
    _ConditionalContent<>.init(storage:)();
    return sub_1006DA5B0(__dst);
  }

  return result;
}

unint64_t sub_1006D9A70()
{
  result = qword_100CD25D0;
  if (!qword_100CD25D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD25C0, &qword_100A77EB0);
    v4[0] = sub_1006D9B28();
    v4[1] = sub_10023FBF4(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD25D0);
  }

  return result;
}

unint64_t sub_1006D9B28()
{
  result = qword_100CD25D8;
  if (!qword_100CD25D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD25E0, &qword_100A77EC0);
    v4[0] = sub_1006DA604(&qword_100CD25E8, &qword_100CD25F0, &qword_100A77EC8, sub_1006D9BE0);
    v4[1] = sub_1006D9C98();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD25D8);
  }

  return result;
}

unint64_t sub_1006D9BE0()
{
  result = qword_100CD25F8;
  if (!qword_100CD25F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2600, &unk_100A77ED0);
    v4[0] = sub_1005D9F60();
    v4[1] = sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD25F8);
  }

  return result;
}

unint64_t sub_1006D9C98()
{
  result = qword_100CD2608;
  if (!qword_100CD2608)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2610, &qword_100A77EE0);
    v4[0] = sub_1006D9D24();
    v4[1] = sub_1006D9E68();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2608);
  }

  return result;
}

unint64_t sub_1006D9D24()
{
  result = qword_100CD2618;
  if (!qword_100CD2618)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2620, &qword_100A77EE8);
    v4[0] = sub_1003AA35C();
    v4[1] = sub_1006D9DB0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2618);
  }

  return result;
}

unint64_t sub_1006D9DB0()
{
  result = qword_100CD2628;
  if (!qword_100CD2628)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2630, &qword_100A77EF0);
    v4[0] = sub_1003AA27C();
    v4[1] = sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2628);
  }

  return result;
}

unint64_t sub_1006D9E68()
{
  result = qword_100CD2638;
  if (!qword_100CD2638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2640, &qword_100A77EF8);
    v4[0] = sub_1006D9F20();
    v4[1] = sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2638);
  }

  return result;
}

unint64_t sub_1006D9F20()
{
  result = qword_100CD2648;
  if (!qword_100CD2648)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2650, &qword_100A77F00);
    v4[0] = sub_1006D9FDC();
    v4[1] = sub_1006DA33C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2648);
  }

  return result;
}

unint64_t sub_1006D9FDC()
{
  result = qword_100CD2658;
  if (!qword_100CD2658)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2660, &qword_100A77F08);
    v4[0] = sub_1006DA094();
    v4[1] = sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2658);
  }

  return result;
}

unint64_t sub_1006DA094()
{
  result = qword_100CD2668;
  if (!qword_100CD2668)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2670, &qword_100A77F10);
    v4[0] = sub_10023FBF4(&qword_100CD2678, &unk_100CD2680, &unk_100A77F18, &protocol conformance descriptor for NavigationStack<A, B>);
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2668);
  }

  return result;
}

unint64_t sub_1006DA190()
{
  result = qword_100CD26F0;
  if (!qword_100CD26F0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CD26E8, &qword_100A77FC8);
    v4[0] = &protocol witness table for Solarium;
    v4[1] = sub_1006DA254();
    v4[2] = sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CD26F0);
  }

  return result;
}

unint64_t sub_1006DA254()
{
  result = qword_100CD26F8;
  if (!qword_100CD26F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2700, &qword_100A77FD0);
    v4[0] = sub_10023FBF4(&qword_100CD2708, &qword_100CD2710, &qword_100A77FD8, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_1006DA33C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD26F8);
  }

  return result;
}

uint64_t sub_1006DA33C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006DA3E8()
{
  result = qword_100CD2720;
  if (!qword_100CD2720)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2718, &qword_100A7E150);
    v4[0] = &protocol witness table for Image;
    v4[1] = sub_1006DA33C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2720);
  }

  return result;
}

unint64_t sub_1006DA4A4()
{
  result = qword_100CD2728;
  if (!qword_100CD2728)
  {
    result = swift_getWitnessTable(a1_25, &type metadata for NotificationSettingsContentView, v0, v1);
    atomic_store(result, &qword_100CD2728);
  }

  return result;
}

uint64_t sub_1006DA604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10[0] = &protocol witness table for Color;
    v10[1] = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006DA6A0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1006DA6FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        v16 = sub_100024D10(a1, v5, v4);
        if (v16 >= 3)
        {
          return v16 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_1006DA8C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
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

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
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
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          sub_10001B350(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1006DAB54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1006DAB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006DAC04@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CD2880, &qword_100A78208);
  sub_1000037C4();
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = static VerticalAlignment.center.getter();
  v30 = 0;
  sub_1006DAF70(v1, v33);
  memcpy(v31, v33, 0x99uLL);
  memcpy(v32, v33, 0x99uLL);
  sub_100035AD0(v31, v28, &qword_100CD2888, &unk_100A78210);
  sub_1000180EC(v32, &qword_100CD2888, &unk_100A78210);
  memcpy(&v29[7], v31, 0x99uLL);
  v28[0] = v14;
  v28[1] = 0;
  LOBYTE(v28[2]) = v30;
  memcpy(&v28[2] + 1, v29, 0xA0uLL);
  static AccessibilityChildBehavior.combine.getter();
  v15 = sub_10022C350(&qword_100CD2890, &qword_100AA1370);
  v16 = sub_1006DBA20();
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v9, v23);
  memcpy(v33, v28, 0xB1uLL);
  sub_1000180EC(v33, &qword_100CD2890, &qword_100AA1370);
  v28[0] = v15;
  v28[1] = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v26;
  v18 = v24;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v25 + 8))(v13, v18);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v19 = v17 + *(sub_10022C350(&qword_100CD28A0, &qword_100A78220) + 36);
  v20 = type metadata accessor for AutomationInfoProperty(0);
  sub_1003AFC6C(v4, v19 + *(v20 + 24));
  sub_1001C9E84(v4);
  *v19 = 0;
  *(v19 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v19 + 16) = result;
  *(v19 + 24) = 0;
  return result;
}

uint64_t sub_1006DAF70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v6[0] = 0;
  sub_1006DB0CC(a1, __src);
  memcpy(__dst, __src, 0x6BuLL);
  memcpy(v9, __src, 0x6BuLL);
  sub_100035AD0(__dst, v10, &qword_100CACF48, &unk_100A78250);
  sub_1000180EC(v9, &qword_100CACF48, &unk_100A78250);
  memcpy(&v7[7], __dst, 0x6BuLL);
  v10[0] = v4;
  v10[1] = 0;
  LOBYTE(v10[2]) = 0;
  memcpy(&v10[2] + 1, v7, 0x72uLL);
  v10[17] = 0x3FF0000000000000;
  v6[144] = 0;
  memcpy(a2, v10, 0x90uLL);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v7, 0x72uLL);
  __src[17] = 0x3FF0000000000000;
  sub_100035AD0(v10, v6, &qword_100CD28A8, &qword_100AA13B0);
  return sub_1000180EC(__src, &qword_100CD28A8, &qword_100AA13B0);
}

uint64_t sub_1006DB0CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v102 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v5 - 8);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = v86 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[3];
  v98 = a1[2];
  v100 = v16;
  v135 = *(a1 + 2);
  *&v119 = v14;
  *(&v119 + 1) = v15;
  v17 = sub_10002D5A4();

  v99 = v17;
  v18 = Text.init<A>(_:)();
  v90 = v19;
  v91 = v18;
  v21 = v20;
  v97 = v22;
  v23 = static Font.largeTitle.getter();
  v89 = static Font.title2.getter();
  v134 = *(a1 + 72);
  v108 = v10;
  v109 = a1;
  v24 = a1[8];
  v133 = v24;
  v94 = v134;
  v106 = v13;
  v107 = v11;
  v101 = v24;
  if (v134 == 1)
  {
    v25 = v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v133, &qword_100CB91B8, &qword_100A4DA50);
    (*(v11 + 8))(v13, v10);
    v25 = v119;
  }

  v27 = enum case for Font.Leading.tight(_:);
  v28 = type metadata accessor for Font.Leading();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v31 = v111;
  v95 = v27;
  v92 = v29 + 104;
  v93 = v30;
  v30(v111, v27, v28);
  v96 = v28;
  sub_10001B350(v31, 0, 1, v28);
  sub_100035AD0(v31, v7, &qword_100CACFF0, &unk_100A48000);

  v32 = v89;

  v105 = v7;
  sub_1001C987C(v23, v32, v25 & 1, v7);
  v33 = v91;
  LOBYTE(v27) = v21;
  v34 = v90;
  v35 = Text.font(_:)();
  v87 = v36;
  v88 = v35;
  v38 = v37;
  v86[1] = v39;

  sub_10010CD64(v33, v34, v27 & 1);

  sub_1000180EC(v31, &qword_100CACFF0, &unk_100A48000);
  v40 = v102;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v42 = v87;
  v41 = v88;
  v43 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v45 = v44;
  LOBYTE(v33) = v46;
  sub_10010CD64(v41, v42, v38 & 1);

  (*(v103 + 8))(v40, v104);
  v136 = v135;
  v119 = v135;

  v47 = Text.accessibilityLabel<A>(_:)();
  v102 = v48;
  v103 = v47;
  LODWORD(v97) = v49;
  v104 = v50;
  sub_10010CD64(v43, v45, v33 & 1);

  sub_1002ED110(&v136);
  *&v119 = v98;
  *(&v119 + 1) = v100;

  v51 = Text.init<A>(_:)();
  v98 = v52;
  v99 = v53;
  v55 = v54;
  v56 = static Font.subheadline.getter();
  v57 = static Font.footnote.getter();
  if (v94)
  {
    v58 = v101;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v133, &qword_100CB91B8, &qword_100A4DA50);
    (*(v107 + 8))(v60, v108);
    v58 = v119;
  }

  v61 = v111;
  v62 = v96;
  v93(v111, v95, v96);
  sub_10001B350(v61, 0, 1, v62);
  v63 = v105;
  sub_100035AD0(v61, v105, &qword_100CACFF0, &unk_100A48000);

  sub_1001C987C(v56, v57, v58 & 1, v63);
  v64 = v98;
  v65 = Text.font(_:)();
  v100 = v66;
  v101 = v65;
  LODWORD(v96) = v67;
  v105 = v68;

  sub_10010CD64(v51, v64, v55 & 1);

  sub_1000180EC(v61, &qword_100CACFF0, &unk_100A48000);
  KeyPath = swift_getKeyPath();
  v70 = v109[6];
  v131 = v70;
  v132 = *(v109 + 56);
  if (v132 == 1)
  {
    v127 = v70 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v71 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v72 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v131, &qword_100CD28B0, &unk_100A78290);
    (*(v107 + 8))(v72, v108);
    LOBYTE(v70) = v127;
  }

  v73 = v96 & 1;
  v130 = v96 & 1;
  v128 = 0;
  v74 = v97 & 1;
  v115 = v97 & 1;
  v114 = 0;
  v76 = v100;
  v75 = v101;
  *&v116 = v101;
  *(&v116 + 1) = v100;
  LOBYTE(v117) = v96 & 1;
  *(&v117 + 1) = *v129;
  DWORD1(v117) = *&v129[3];
  v77 = v105;
  *(&v117 + 1) = v105;
  *v118 = KeyPath;
  *&v118[8] = 4;
  *&v118[16] = 0;
  v118[18] = (v70 & 1) == 0;
  *(&v113[3] + 6) = *&v118[15];
  *(&v113[2] + 7) = *v118;
  *(&v113[1] + 7) = v117;
  *(v113 + 7) = v116;
  v78 = v97 & 1;
  v79 = v110;
  v81 = v102;
  v80 = v103;
  *v110 = v103;
  v79[1] = v81;
  *(v79 + 16) = v78;
  v79[3] = v104;
  v79[4] = 0x3FF0000000000000;
  v79[5] = 0;
  *(v79 + 48) = 0;
  v82 = v113[0];
  v83 = v113[1];
  v84 = v113[2];
  *(v79 + 91) = *(&v113[2] + 10);
  *(v79 + 81) = v84;
  *(v79 + 65) = v83;
  *(v79 + 49) = v82;
  *&v119 = v75;
  *(&v119 + 1) = v76;
  v120 = v73;
  *&v121[3] = *&v129[3];
  *v121 = *v129;
  v122 = v77;
  v123 = KeyPath;
  v124 = 4;
  v125 = 0;
  v126 = (v70 & 1) == 0;
  sub_10010CD54(v80, v81, v74);

  sub_100035AD0(&v116, &v112, &qword_100CACF40, &unk_100A3C2F0);
  sub_1000180EC(&v119, &qword_100CACF40, &unk_100A3C2F0);
  sub_10010CD64(v80, v81, v74);
}

unint64_t sub_1006DBA20()
{
  result = qword_100CD2898;
  if (!qword_100CD2898)
  {
    v3 = sub_10022E824(&qword_100CD2890, &qword_100AA1370);
    result = swift_getWitnessTable(&protocol conformance descriptor for HStack<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD2898);
  }

  return result;
}

unint64_t sub_1006DBA84()
{
  result = qword_100CD28B8;
  if (!qword_100CD28B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD28A0, &qword_100A78220);
    v4[0] = sub_1006DBB40();
    v4[1] = sub_100322C80(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD28B8);
  }

  return result;
}

unint64_t sub_1006DBB40()
{
  result = qword_100CD28C0;
  if (!qword_100CD28C0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CD28C8, &unk_100A782A0);
    v4[2] = sub_10022E824(&qword_100CD2890, &qword_100AA1370);
    v4[3] = sub_1006DBA20();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100322C80(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD28C0);
  }

  return result;
}

uint64_t sub_1006DBC3C()
{
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_1006DBD30, 0, 0);
}

uint64_t sub_1006DBD30()
{
  v1 = v0[15];
  v2 = v0[16];
  TimeZone.init(secondsFromGMT:)();
  v3 = sub_100024D10(v1, 1, v2);
  if (v3 == 1)
  {
    __break(1u);
    return dispatch thunk of ActiveUserServiceType.updateLastLaunchDate(to:)(v3, v4, v5);
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  (*(v7 + 32))(v6, v0[15], v8);
  Date.startOfDay(timeZone:)();
  (*(v7 + 8))(v6, v8);
  (*(v10 + 104))(v9, enum case for ActiveUserStatus.LaunchedApp.weather(_:), v11);
  v12 = ActiveUserStatus.isFirstLaunchOfDay(of:now:)();
  (*(v10 + 8))(v9, v11);
  if (v12)
  {
    v13 = sub_1006DC644();
    v63 = v14;
    v64 = v13;
    static DeviceInfo.current.getter();
    type metadata accessor for Capabilities();
    if (static Capabilities.isInternalBuild()())
    {
      v56 = 1;
    }

    else
    {
      v56 = [objc_opt_self() isSeedBuild];
    }

    static Logger.activeUser.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Submitting first launch event", v30, 2u);
      sub_100003884(v30);
    }

    v54 = v0[38];
    v62 = v0[37];
    v49 = v0[35];
    v31 = v0[30];
    v32 = v0[27];
    v33 = v0[25];
    v52 = v0[26];
    v53 = v0[33];
    v57 = v0[24];
    v45 = v0[28];
    v46 = v0[23];
    v60 = v0[22];
    v51 = v0[21];
    v34 = v0[20];
    v59 = v0[19];
    v47 = v0[10];
    v48 = v0[11];
    v50 = v0[9];
    v58 = v0[8];
    v35 = v0[6];
    v61 = v0[7];
    v36 = v0[4];
    v37 = v0[5];
    v55 = v0[3];

    v54(v53, v31);
    (*(v37 + 104))(v35, enum case for Session.Kind.userEvents(_:), v36);
    Date.init()();
    SessionManager.start(for:identifier:startDate:)();
    v0[40] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v32, v57);
    (*(v37 + 8))(v35, v36);
    SessionManager.tracker.getter();
    v49(v32, v45, v57);
    (*(v34 + 16))(v60, v46, v59);
    (*(v58 + 16))(v47, v48, v61);
    v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v39 = (v52 + *(v34 + 80) + v38) & ~*(v34 + 80);
    v40 = (v51 + *(v58 + 80) + v39) & ~*(v58 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v64;
    *(v41 + 24) = v63;
    (*(v33 + 32))(v41 + v38, v32, v57);
    (*(v34 + 32))(v41 + v39, v60, v59);
    (*(v58 + 32))(v41 + v40, v47, v61);
    *(v41 + v40 + v50) = v56;
    Tracker.transaction(block:)();

    Date.init()();
    SessionManager.end(endDate:completion:)();
    v62(v32, v57);
    v42 = v55[5];
    v43 = v55[6];
    sub_1000161C0(v55 + 2, v42);
    v44 = swift_task_alloc();
    v0[41] = v44;
    *v44 = v0;
    v44[1] = sub_1006DC400;
    v3 = v0[28];
    v4 = v42;
    v5 = v43;

    return dispatch thunk of ActiveUserServiceType.updateLastLaunchDate(to:)(v3, v4, v5);
  }

  static Logger.activeUser.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[38];
  v20 = v0[31];
  v19 = v0[32];
  v21 = v0[30];
  if (v17)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Already launched today - returning", v22, 2u);
    sub_100003884(v22);
  }

  v18(v19, v21);
  sub_1000108D0();
  v24 = v0[19];
  v23 = v0[20];
  v25(v20);
  (*(v23 + 8))(v15, v24);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1006DC400()
{
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_1006DC4F4, 0, 0);
}

uint64_t sub_1006DC4F4()
{
  (*(v1[8] + 8))(v1[11], v1[7]);
  sub_1000108D0();
  v4 = v1[19];
  v3 = v1[20];
  v5(v2);
  (*(v3 + 8))(v0, v4);

  v6 = v1[1];

  return v6();
}

uint64_t sub_1006DC644()
{
  v0 = type metadata accessor for SHA256();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for SHA256Digest();
  __chkstk_darwin(v7 - 8);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for UUID();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  ActiveUserStatus.secretId.getter();
  sub_1000667F8(&qword_100CADB98, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  (*(v13 + 8))(v17, v11);
  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  Date.timeIntervalSince1970.getter();
  Double.write<A>(to:)();
  sub_1006DD21C(0, 0xE000000000000000);
  sub_1000667F8(&qword_100CD2988, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  v20 = sub_100014AD8();
  sub_1006DE088(v20, v21);
  v22 = sub_100014AD8();
  sub_1006DDFEC(v22, v23, v6);
  v24 = sub_100014AD8();
  sub_10030F778(v24, v25);
  dispatch thunk of HashFunction.finalize()();
  (*(v2 + 8))(v6, v0);
  v26 = sub_100014AD8();
  sub_10030F778(v26, v27);
  v28 = sub_1006DD724(v10);
  v30 = v29;
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  sub_10030F778(v28, v30);
  return countAndFlagsBits;
}

void sub_1006DC92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v58 = a7;
  v59 = a6;
  v60 = a2;
  v64 = a5;
  v61 = a3;
  v66 = a1;
  v7 = sub_10022C350(&qword_100CB5498, &qword_100A78340);
  __chkstk_darwin(v7 - 8);
  v55 = &v47 - v8;
  v53 = type metadata accessor for Locale.Language();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v11;
  v65 = type metadata accessor for Locale();
  v50 = *(v65 - 8);
  __chkstk_darwin(v65);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_10022C350(&qword_100CA3DD8, &qword_100A2DEB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v63 = type metadata accessor for Date();
  v19 = *(v63 - 8);
  __chkstk_darwin(v63);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TimeZone();
  v22 = *(v62 - 8);
  __chkstk_darwin(v62);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveUserStatus.LaunchedApp();
  v26 = *(active - 8);
  __chkstk_darwin(active);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LaunchEventData = type metadata accessor for FirstLaunchEventData();
  v56 = *(LaunchEventData - 8);
  v57 = LaunchEventData;
  __chkstk_darwin(LaunchEventData);
  v54 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.timeIntervalSince1970.getter();
  v32 = v31 * 1000.0;
  if (COERCE__INT64(fabs(v31 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v26 + 104))(v28, enum case for ActiveUserStatus.LaunchedApp.weather(_:), active);
  LODWORD(v64) = ActiveUserStatus.isFirstLaunchOfMonth(of:now:)();
  (*(v26 + 8))(v28, active);
  v33 = AccessTracker.isDiagnosticSubmissionAllowed.getter();
  static TimeZone.current.getter();
  Date.init()();
  v34 = TimeZone.secondsFromGMT(for:)();
  (*(v19 + 8))(v21, v63);
  (*(v22 + 8))(v24, v62);
  if (v34 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v34 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v62 = v34;
  LODWORD(v63) = v33;
  static Locale.current.getter();
  v35 = v48;
  Locale.language.getter();
  v36 = *(v50 + 8);
  v36(v15, v65);
  Locale.Language.languageCode.getter();
  v37 = *(v52 + 8);
  v38 = v53;
  v37(v35, v53);
  v39 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v18, 1, v39) == 1)
  {
    sub_10003FDF4(v18, &qword_100CA3DD8, &qword_100A2DEB0);
    v52 = 0xE100000000000000;
    v50 = 45;
  }

  else
  {
    v50 = Locale.LanguageCode.identifier.getter();
    v52 = v40;
    (*(*(v39 - 8) + 8))(v18, v39);
  }

  v41 = v55;
  v42 = v49;
  static Locale.current.getter();
  v43 = v51;
  Locale.language.getter();
  v36(v42, v65);
  Locale.Language.region.getter();
  v37(v43, v38);
  v44 = type metadata accessor for Locale.Region();
  if (sub_100024D10(v41, 1, v44) == 1)
  {
    sub_10003FDF4(v41, &qword_100CB5498, &qword_100A78340);
  }

  else
  {
    Locale.Region.identifier.getter();
    (*(*(v44 - 8) + 8))(v41, v44);
  }

  DeviceInfo.productVersion.getter();
  if (v58)
  {
    DeviceInfo.buildVersion.getter();
  }

  v45 = v54;
  FirstLaunchEventData.init(eventID:date:isFirstLaunchOfMonth:isDnu:utcOffset:languageCode:countryCode:osVersion:osBuild:)();
  sub_1000667F8(&qword_100CD2978, &type metadata accessor for FirstLaunchEventData, &protocol conformance descriptor for FirstLaunchEventData);
  v46 = v57;
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for FirstLaunchEvent();
  sub_1000667F8(&qword_100CD2980, &type metadata accessor for FirstLaunchEvent, &protocol conformance descriptor for FirstLaunchEvent);
  memset(v67, 0, 32);
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  sub_10003FDF4(v67, &qword_100CE2F40, &qword_100A2D880);
  (*(v56 + 8))(v45, v46);
}

uint64_t sub_1006DD21C(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v38[0] = a1;
  v38[1] = a2;
  *&v41 = a1;
  *(&v41 + 1) = a2;

  sub_10022C350(&qword_100CD2998, &qword_100A78348);
  if (swift_dynamicCast())
  {
    sub_100013188(v39, &v42);
    sub_1000161C0(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v39[0] = v41;
    sub_100006F14(&v42);
    goto LABEL_56;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_10003FDF4(v39, &qword_100CD29A0, &unk_100A78350);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v39[0] = a1;
    *(&v39[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v39;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  sub_1006DDA94(v5, v6, &v42);
  v7 = *(&v42 + 1);
  v8 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_56;
  }

LABEL_9:
  *&v39[0] = Data._Representation.init(count:)();
  *(&v39[0] + 1) = v9;
  __chkstk_darwin(*&v39[0]);
  v33[2] = v38;
  v10 = sub_1006DDBB0(sub_1006DE42C, v33);
  v12 = *(&v39[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v39[0]);
  switch(*(&v39[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v39[0]) - LODWORD(v39[0]);
      if (__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        goto LABEL_63;
      }

      v19 = v19;
LABEL_19:
      if (v11 == v19)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v18 = *(*&v39[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v39[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v21 = *(*&v39[0] + 16);
      v20 = *(*&v39[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v11)
      {
        v18 = 0;
LABEL_53:
        if (v18 < v11)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v33[4] = v4;
      v34 = v8;
      v35 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      v36 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v37 = v15 & 0xFFFFFFFFFFFFFFLL;
      *(&v41 + 7) = 0;
      *&v41 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v19 = BYTE14(v39[0]);
      goto LABEL_19;
  }

  while (4 * v24 != v17 >> 14)
  {
    v4 = v17 & 0xC;
    v27 = v17;
    if (v4 == v26)
    {
      v27 = sub_100230578(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v13;
      *(&v42 + 1) = v37;
      v30 = *(&v42 + v28);
    }

    else
    {
      v29 = v36;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if (v4 == v26)
    {
      v17 = sub_100230578(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_59;
    }

    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v41 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_58;
    }

    if (v23 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (!v23)
  {

    sub_1003B3404(v34, v35);
    goto LABEL_56;
  }

  *&v42 = v41;
  *(&v42 + 6) = *(&v41 + 6);
  Data._Representation.append(contentsOf:)();
  sub_1003B3404(v34, v35);
LABEL_55:

LABEL_56:
  v31 = v39[0];
  sub_1006DE088(*&v39[0], *(&v39[0] + 1));

  sub_10030F778(v31, *(&v31 + 1));
  return v31;
}

uint64_t sub_1006DD724(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v8 = v2;
  v9 = sub_1000667F8(&qword_100CD2990, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v3 = sub_100042FB0(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_1000161C0(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100006F14(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_1006DD864()
{
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_1006DD950(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  active = type metadata accessor for ActiveUserStatus();
  sub_100003AE8(active);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = type metadata accessor for DeviceInfo();
  sub_100003AE8(v13);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v1 + ((v10 + v12 + *(v14 + 80)) & ~*(v14 + 80));
  v19 = *(v18 + *(v15 + 64));

  sub_1006DC92C(a1, v16, v17, v1 + v5, v1 + v10, v18, v19);
}

uint64_t sub_1006DDA94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1006DDB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1006DE128(sub_1006DE488, v5, a1, a2);
}

uint64_t sub_1006DDBB0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10030F778(v7, v6);
      *v5 = xmmword_100A782B0;
      sub_10030F778(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1006DE18C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10030F778(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_100A782B0;
      sub_10030F778(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v7 = v17;
      v10 = sub_1006DE18C(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_10030F778(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1006DDF74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1006DDFEC(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_11;
      }

      result = result;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v6 = v5;
LABEL_9:
      result = sub_1006DE314(result, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 3uLL:
      result = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1006DE240(result, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_1006DE088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1006DE0E0(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006DE128(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1006DE18C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1006DE240(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  sub_1000667F8(&qword_100CD2988, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1006DE314(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000667F8(&qword_100CD2988, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006DE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1006DDB5C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1006DE448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1006DE0E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t type metadata accessor for DetailComponentContainerView(uint64_t a1)
{
  result = qword_100CD2A00;
  if (!qword_100CD2A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006DE51C(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailComponentContainerViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1003E7F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006DE5E0()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilityVoiceOverEnabled.getter();
  return sub_100005F94(v0);
}

uint64_t sub_1006DE608()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilityEnabled.getter();
  return sub_100005F94(v0);
}

double sub_1006DE654@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for DetailComponentContainerView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = (v1 + *(v12 + 28));
  if (v13[1])
  {
    v14 = *v13;
  }

  else
  {
    type metadata accessor for DetailComponentContainerViewModel(0);
    v14 = sub_1006EC1DC();
    v15 = v16;
  }

  v41 = v14;
  v42 = v15;
  sub_10002D5A4();
  v17 = Text.init<A>(_:)();
  v36 = v18;
  v37 = v17;
  v34 = v19 & 1;
  v35 = v20;
  sub_1006DFE08(v2, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailComponentContainerView);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = swift_allocObject();
  sub_1006E0270(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v21, type metadata accessor for DetailComponentContainerView);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v22 = sub_10022C350(&qword_100CD2A48, &qword_100A78408);
  v23 = (a1 + v22[12]);
  v24 = (a1 + v22[13]);
  v25 = a1 + v22[14];
  v40 = 0;
  State.init(wrappedValue:)();
  v26 = v42;
  *v25 = v41;
  *(v25 + 8) = v26;
  v27 = type metadata accessor for Date();
  sub_10001B350(v8, 1, 1, v27);
  sub_10018CF14(v8, v38, &unk_100CB2CF0, &unk_100A2D7F0);
  State.init(wrappedValue:)();
  sub_10003FDA0(v8, &unk_100CB2CF0);
  sub_1006DEB0C(v2);
  v28 = (a1 + v22[11]);
  v29 = v33;
  *v28 = sub_1006DFCAC;
  v28[1] = v29;
  *(a1 + 9) = 0;
  v30 = v36;
  *v23 = v37;
  v23[1] = v30;
  v31 = v35;
  v23[2] = v34;
  v23[3] = v31;
  result = 0.0;
  *v24 = 0u;
  v24[1] = 0u;
  return result;
}

uint64_t sub_1006DE968(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CB8990, &unk_100A4CCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DetailComponentAction(0);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailComponentContainerView(0);
  v10 = a2 + *(v9 + 20);
  v11 = type metadata accessor for DetailComponentContainerViewModel(0);
  sub_10018CF14(v10 + *(v11 + 24), v5, &qword_100CB8990, &unk_100A4CCE0);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    return sub_10003FDA0(v5, &qword_100CB8990);
  }

  sub_1006E0270(v5, v8, type metadata accessor for DetailComponentAction);
  v13 = (a2 + *(v9 + 24));
  v14 = v13[3];
  v15 = v13[4];
  sub_1000161C0(v13, v14);
  (*(v15 + 8))(v8, v14, v15);
  return sub_1006E02C8(v8);
}

uint64_t sub_1006DEB0C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD2A50, &qword_100A78410);
  __chkstk_darwin(v2);
  v4 = &v7[-v3];
  *v4 = static HorizontalAlignment.leading.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_10022C350(&qword_100CD2A58, &qword_100A78418);
  sub_1006DEC84(a1, &v4[*(v5 + 44)]);
  Solarium.init()();
  v8 = a1;
  sub_10022C350(&qword_100CD2A60, &qword_100A78420);
  sub_10023FBF4(&qword_100CD2A68, &qword_100CD2A50, &qword_100A78410, &protocol conformance descriptor for VStack<A>);
  sub_1006DFD24();
  View.staticIf<A, B>(_:then:)();
  return sub_10003FDA0(v4, &qword_100CD2A50);
}

uint64_t sub_1006DEC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB8990, &unk_100A4CCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v136 - v5;
  v7 = type metadata accessor for DetailComponentViewModel(0);
  __chkstk_darwin(v7 - 8);
  v148 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsArticleComponentView(0);
  __chkstk_darwin(v9);
  v11 = (&v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = sub_10022C350(&qword_100CD2A88, &qword_100A78438);
  __chkstk_darwin(v150);
  v151 = &v136 - v12;
  v153 = sub_10022C350(&qword_100CD2A90, &qword_100A78440);
  __chkstk_darwin(v153);
  v152 = &v136 - v13;
  v14 = sub_10022C350(&qword_100CD2A98, &qword_100A78448);
  __chkstk_darwin(v14 - 8);
  v155 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v154 = &v136 - v17;
  v18 = type metadata accessor for DetailComponentHeaderView(0);
  __chkstk_darwin(v18);
  v20 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10022C350(&qword_100CD2AA0, &qword_100A78450);
  __chkstk_darwin(v137);
  v139 = &v136 - v21;
  v138 = sub_10022C350(&qword_100CD2AA8, &qword_100A78458);
  __chkstk_darwin(v138);
  v144 = &v136 - v22;
  v143 = sub_10022C350(&qword_100CD2AB0, &qword_100A78460);
  __chkstk_darwin(v143);
  v142 = &v136 - v23;
  v145 = sub_10022C350(&qword_100CD2AB8, &qword_100A78468);
  __chkstk_darwin(v145);
  v25 = &v136 - v24;
  v26 = sub_10022C350(&qword_100CD2AC0, &qword_100A78470);
  __chkstk_darwin(v26 - 8);
  v146 = &v136 - v27;
  v147 = sub_10022C350(&qword_100CD2AC8, &qword_100A78478);
  __chkstk_darwin(v147);
  v141 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v140 = &v136 - v30;
  v31 = sub_10022C350(&qword_100CD2AD0, &qword_100A78480);
  __chkstk_darwin(v31 - 8);
  v149 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v160 = &v136 - v34;
  v35 = type metadata accessor for DetailComponentContainerView(0);
  v36 = a1;
  v37 = (a1 + *(v35 + 20));
  v38 = v37[1];
  v158 = v35;
  v159 = v37;
  v156 = v6;
  v157 = a2;
  if (v38)
  {
    v39 = v37;
    v40 = v37[3];
    v41 = v39[2];
    v42 = *v39;
    *(v20 + 4) = swift_getKeyPath();
    v20[40] = 0;
    *(v20 + 6) = swift_getKeyPath();
    v20[56] = 0;
    *(v20 + 8) = swift_getKeyPath();
    v20[72] = 0;
    v43 = *(v18 + 32);
    *&v20[v43] = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0, &qword_100A32330);
    swift_storeEnumTagMultiPayload();
    *v20 = v42;
    *(v20 + 1) = v38;
    *(v20 + 2) = v41;
    *(v20 + 3) = v40;
    sub_10022C350(&qword_100CA4060, &qword_100A2E120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;

    LOBYTE(v41) = static Edge.Set.leading.getter();
    *(inited + 32) = v41;
    v45 = static Edge.Set.trailing.getter();
    *(inited + 33) = v45;
    v46 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    v47 = &unk_100A2D000;
    if (Edge.Set.init(rawValue:)() != v41)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v45)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    v48 = v36;
    EdgeInsets.init(_all:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v139;
    sub_1006E0270(v20, v139, type metadata accessor for DetailComponentHeaderView);
    v58 = v57 + *(v137 + 36);
    *v58 = v46;
    *(v58 + 8) = v50;
    *(v58 + 16) = v52;
    *(v58 + 24) = v54;
    *(v58 + 32) = v56;
    *(v58 + 40) = 0;
    v59 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v57;
    v69 = v144;
    sub_10027FB54(v68, v144, &qword_100CD2AA0, &qword_100A78450);
    v70 = v69 + *(v138 + 36);
    *v70 = v59;
    *(v70 + 8) = v61;
    *(v70 + 16) = v63;
    *(v70 + 24) = v65;
    *(v70 + 32) = v67;
    *(v70 + 40) = 0;
    v71 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v69;
    v81 = v142;
    sub_10027FB54(v80, v142, &qword_100CD2AA8, &qword_100A78458);
    v82 = v81 + *(v143 + 36);
    *v82 = v71;
    *(v82 + 8) = v73;
    *(v82 + 16) = v75;
    *(v82 + 24) = v77;
    *(v82 + 32) = v79;
    *(v82 + 40) = 0;
    sub_10027FB54(v81, v25, &qword_100CD2AB0, &qword_100A78460);
    v25[*(v145 + 36)] = 1;
    sub_1006DFF44();
    v83 = v146;
    View.accessibilityRespondsToUserInteraction(_:)();
    sub_10003FDA0(v25, &qword_100CD2AB8);
    v84 = static Alignment.center.getter();
    v86 = v85;
    v87 = v147;
    v88 = v141;
    v89 = &v141[*(v147 + 36)];
    sub_1006DFA38(v48);
    v90 = &v89[*(sub_10022C350(&qword_100CD2B20, &unk_100A785E0) + 36)];
    *v90 = v84;
    v90[1] = v86;
    sub_10027FB54(v83, v88, &qword_100CD2AC0, &qword_100A78470);
    v91 = v140;
    sub_10020A5E8(v88, v140);
    v92 = v91;
    v93 = v160;
    sub_10020A5E8(v92, v160);
    v94 = 0;
    v37 = v159;
  }

  else
  {
    v47 = &unk_100A2D000;
    v94 = 1;
    v93 = v160;
    v87 = v147;
  }

  sub_10001B350(v93, v94, 1, v87);
  v95 = type metadata accessor for DetailComponentContainerViewModel(0);
  v96 = v148;
  sub_1006DFE08(v37 + *(v95 + 20), v148, type metadata accessor for DetailComponentViewModel);
  sub_1006E0270(v96, v11 + v9[8], type metadata accessor for NewsArticleComponentViewModel);
  *v11 = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  v97 = v11 + v9[5];
  *v97 = swift_getKeyPath();
  v97[8] = 0;
  v98 = v11 + v9[6];
  *v98 = swift_getKeyPath();
  v98[8] = 0;
  v99 = v9[7];
  *(v11 + v99) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  *(v11 + v9[9]) = 0;
  *(v11 + v9[10]) = 1;
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  v100 = swift_initStackObject();
  *(v100 + 16) = v47[50];
  v101 = static Edge.Set.leading.getter();
  *(v100 + 32) = v101;
  v102 = static Edge.Set.trailing.getter();
  *(v100 + 33) = v102;
  v103 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v101)
  {
    v103 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v104 = Edge.Set.init(rawValue:)();
  v106 = v156;
  v105 = v157;
  if (v104 != v102)
  {
    v103 = Edge.Set.init(rawValue:)();
  }

  v107 = v151;
  EdgeInsets.init(_all:)();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  sub_1006E0270(v11, v107, type metadata accessor for NewsArticleComponentView);
  v116 = v107 + *(v150 + 36);
  *v116 = v103;
  *(v116 + 8) = v109;
  *(v116 + 16) = v111;
  *(v116 + 24) = v113;
  *(v116 + 32) = v115;
  *(v116 + 40) = 0;
  v117 = static Edge.Set.bottom.getter();
  v118 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v117)
  {
    v118 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = v152;
  sub_10027FB54(v107, v152, &qword_100CD2A88, &qword_100A78438);
  v128 = v127 + *(v153 + 36);
  *v128 = v118;
  *(v128 + 8) = v120;
  *(v128 + 16) = v122;
  *(v128 + 24) = v124;
  *(v128 + 32) = v126;
  *(v128 + 40) = 0;
  sub_10018CF14(v159 + *(v95 + 24), v106, &qword_100CB8990, &unk_100A4CCE0);
  v129 = type metadata accessor for DetailComponentAction(0);
  sub_100024D10(v106, 1, v129);
  sub_10003FDA0(v106, &qword_100CB8990);
  sub_1006E002C(&qword_100CD2AD8, &qword_100CD2A90, &qword_100A78440, sub_1006DFE60);
  v130 = v154;
  View.accessibilityRespondsToUserInteraction(_:)();
  sub_10003FDA0(v127, &qword_100CD2A90);
  v131 = v160;
  v132 = v149;
  sub_10018CF14(v160, v149, &qword_100CD2AD0, &qword_100A78480);
  v133 = v155;
  sub_10018CF14(v130, v155, &qword_100CD2A98, &qword_100A78448);
  sub_10018CF14(v132, v105, &qword_100CD2AD0, &qword_100A78480);
  v134 = sub_10022C350(&qword_100CD2AF0, &qword_100A78548);
  sub_10018CF14(v133, v105 + *(v134 + 48), &qword_100CD2A98, &qword_100A78448);
  sub_10003FDA0(v130, &qword_100CD2A98);
  sub_10003FDA0(v131, &qword_100CD2AD0);
  sub_10003FDA0(v133, &qword_100CD2A98);
  return sub_10003FDA0(v132, &qword_100CD2AD0);
}

uint64_t sub_1006DFA38(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v8 = a1;
  sub_10022C350(&qword_100CD2B28, &unk_100A785F0);
  sub_1005024C4();
  v9 = &type metadata for Solarium;
  v10 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1006E01B8();
  View.staticIf<A, B>(_:then:)();
  return (*(v3 + 8))(v5, v2);
}

double sub_1006DFBCC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for DetailComponentContainerView(0) + 28));
  *a2 = result;
  *(a2 + 8) = 3;
  *(a2 + 16) = 256;
  return result;
}

uint64_t sub_1006DFC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for DetailComponentContainerView(0) + 28));
  sub_10018CF14(a1, a3, &qword_100CD2A50, &qword_100A78410);
  result = sub_10022C350(&qword_100CD2A60, &qword_100A78420);
  v7 = a3 + *(result + 36);
  *v7 = v5;
  *(v7 + 8) = -1;
  *(v7 + 16) = 256;
  return result;
}

uint64_t sub_1006DFCAC(uint64_t a1)
{
  v3 = *(type metadata accessor for DetailComponentContainerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1006DE968(a1, v4);
}

unint64_t sub_1006DFD24()
{
  result = qword_100CD2A70;
  if (!qword_100CD2A70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2A60, &qword_100A78420);
    v4[0] = sub_10023FBF4(&qword_100CD2A68, &qword_100CD2A50, &qword_100A78410, &protocol conformance descriptor for VStack<A>);
    v4[1] = sub_10023FBF4(&qword_100CD2A78, &unk_100CD2A80, &unk_100A78428, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2A70);
  }

  return result;
}

uint64_t sub_1006DFE08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_1006DFE60()
{
  result = qword_100CD2AE0;
  if (!qword_100CD2AE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2A88, &qword_100A78438);
    v4[0] = sub_1006E0168(&qword_100CD2AE8, type metadata accessor for NewsArticleComponentView, byte_100A7586C);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2AE0);
  }

  return result;
}

uint64_t sub_1006DFF1C()
{
  sub_10000FE4C();
  v0 = EnvironmentValues.accessibilitySwitchControlEnabled.getter();
  return sub_100005F94(v0);
}

unint64_t sub_1006DFF44()
{
  result = qword_100CD2AF8;
  if (!qword_100CD2AF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2AB8, &qword_100A78468);
    v4[0] = sub_1006E002C(&qword_100CD2B00, &qword_100CD2AB0, &qword_100A78460, sub_1006DFFFC);
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2AF8);
  }

  return result;
}

uint64_t sub_1006E002C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10[0] = a4();
    v10[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006E00AC()
{
  result = qword_100CD2B10;
  if (!qword_100CD2B10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2AA0, &qword_100A78450);
    v4[0] = sub_1006E0168(&qword_100CD2B18, type metadata accessor for DetailComponentHeaderView, byte_100A6608C);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2B10);
  }

  return result;
}

uint64_t sub_1006E0168(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006E01B8()
{
  result = qword_100CD2B30;
  if (!qword_100CD2B30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD2B28, &unk_100A785F0);
    v4[0] = sub_1005024C4();
    v4[1] = sub_10023FBF4(&qword_100CD2A78, &unk_100CD2A80, &unk_100A78428, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD2B30);
  }

  return result;
}

uint64_t sub_1006E0270(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006E02C8(uint64_t a1)
{
  v2 = type metadata accessor for DetailComponentAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006E0334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E776F6E6B6E75 && a2 == 0xEC00000065757373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63656E6E6F436F6ELL && a2 == 0xEC0000006E6F6974;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E616C70726961 && a2 == 0xEC00000065646F4DLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6E6F43776F6C73 && a2 == 0xEE006E6F69746365;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF6E776F6E6B6E55;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7461636F4C646C6FLL && a2 == 0xEB000000006E6F69;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6F4C79627261656ELL && a2 == 0xEE006E6F69746163)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1006E058C(char a1)
{
  result = 0x496E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x63656E6E6F436F6ELL;
      break;
    case 2:
      result = 0x656E616C70726961;
      break;
    case 3:
      result = 0x6E6E6F43776F6C73;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x7461636F4C646C6FLL;
      break;
    case 6:
      result = 0x6F4C79627261656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1006E06A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953720684 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7364973 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1006E07B0(char a1)
{
  if (!a1)
  {
    return 1953720684;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 7364973;
}

uint64_t sub_1006E07F8(uint64_t a1)
{
  v2 = sub_1006E3664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0834(uint64_t a1)
{
  v2 = sub_1006E3664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006E0334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006E08A0(uint64_t a1)
{
  v2 = sub_1006E34C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E08DC(uint64_t a1)
{
  v2 = sub_1006E34C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0918(uint64_t a1)
{
  v2 = sub_1006E35BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0954(uint64_t a1)
{
  v2 = sub_1006E35BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0990(uint64_t a1)
{
  v2 = sub_1006E3514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E09CC(uint64_t a1)
{
  v2 = sub_1006E3514();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0A08(uint64_t a1)
{
  v2 = sub_1006E36B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0A44(uint64_t a1)
{
  v2 = sub_1006E36B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0A80(uint64_t a1)
{
  v2 = sub_1006E3568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0ABC(uint64_t a1)
{
  v2 = sub_1006E3568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0AF8(uint64_t a1)
{
  v2 = sub_1006E3610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0B34(uint64_t a1)
{
  v2 = sub_1006E3610();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0B70(uint64_t a1)
{
  v2 = sub_1006E370C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0BAC(uint64_t a1)
{
  v2 = sub_1006E370C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006E06A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006E0C18(uint64_t a1)
{
  v2 = sub_1006E3760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0C54(uint64_t a1)
{
  v2 = sub_1006E3760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0C90(uint64_t a1)
{
  v2 = sub_1006E385C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0CCC(uint64_t a1)
{
  v2 = sub_1006E385C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0D08(uint64_t a1)
{
  v2 = sub_1006E3808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0D44(uint64_t a1)
{
  v2 = sub_1006E3808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0D80(uint64_t a1)
{
  v2 = sub_1006E37B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0DBC(uint64_t a1)
{
  v2 = sub_1006E37B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E0DF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1006E0F10(char a1)
{
  if (!a1)
  {
    return 0x6574617473;
  }

  if (a1 == 1)
  {
    return 0x6E656D6563616C70;
  }

  return 0x616470557473616CLL;
}

uint64_t sub_1006E0F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006E0DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006E0FA0(uint64_t a1)
{
  v2 = sub_1006E38B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E0FDC(uint64_t a1)
{
  v2 = sub_1006E38B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006E1018@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10077ED80(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1006E1060@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10077EF90(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void sub_1006E10D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  a26 = v30;
  a27 = v31;
  v85 = v32;
  sub_10022C350(&qword_100CD2C68, &qword_100A78A48);
  sub_1000037C4();
  v83 = v34;
  v84 = v33;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v82 = v36;
  sub_10022C350(&qword_100CD2C70, &qword_100A78A50);
  sub_1000037C4();
  v80 = v38;
  v81 = v37;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  v79 = v40;
  sub_10022C350(&qword_100CD2C78, &qword_100A78A58);
  sub_1000037C4();
  v77 = v42;
  v78 = v41;
  sub_100003828();
  __chkstk_darwin(v43);
  sub_1000039BC();
  v76 = v44;
  sub_10022C350(&qword_100CD2C80, &qword_100A78A60);
  sub_1000037C4();
  v74 = v46;
  v75 = v45;
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  v73 = v48;
  sub_10022C350(&qword_100CD2C88, &qword_100A78A68);
  sub_1000037C4();
  v71 = v50;
  v72 = v49;
  sub_100003828();
  __chkstk_darwin(v51);
  sub_1000039BC();
  v70 = v52;
  sub_10022C350(&qword_100CD2C90, &qword_100A78A70);
  sub_1000037C4();
  v68 = v54;
  v69 = v53;
  sub_100003828();
  __chkstk_darwin(v55);
  sub_100003CF8();
  v56 = sub_10022C350(&qword_100CD2C98, &qword_100A78A78);
  sub_1000037C4();
  v67 = v57;
  sub_100003828();
  __chkstk_darwin(v58);
  sub_10002C698();
  v59 = sub_10022C350(&qword_100CD2CA0, &qword_100A78A80);
  sub_1000037C4();
  v61 = v60;
  sub_100003828();
  __chkstk_darwin(v62);
  sub_10000C8D8();
  v63 = sub_10000C924();
  sub_1000161C0(v63, v64);
  sub_1006E34C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v85)
  {
    case 1:
      a12 = 1;
      sub_1006E36B8();
      sub_100008608(&type metadata for ContentStatusBanner.State.NoConnectionCodingKeys, &a12);
      v66 = v68;
      v65 = v69;
      goto LABEL_9;
    case 2:
      a13 = 2;
      sub_1006E3664();
      v27 = v70;
      sub_100008608(&type metadata for ContentStatusBanner.State.AirplaneModeCodingKeys, &a13);
      v66 = v71;
      v65 = v72;
      goto LABEL_9;
    case 3:
      a14 = 3;
      sub_1006E3610();
      v27 = v73;
      sub_100008608(&type metadata for ContentStatusBanner.State.SlowConnectionCodingKeys, &a14);
      v66 = v74;
      v65 = v75;
      goto LABEL_9;
    case 4:
      a15 = 4;
      sub_1006E35BC();
      v27 = v76;
      sub_100008608(&type metadata for ContentStatusBanner.State.LocationUnknownCodingKeys, &a15);
      v66 = v77;
      v65 = v78;
      goto LABEL_9;
    case 5:
      a16 = 5;
      sub_1006E3568();
      v27 = v79;
      sub_100008608(&type metadata for ContentStatusBanner.State.OldLocationCodingKeys, &a16);
      v66 = v80;
      v65 = v81;
      goto LABEL_9;
    case 6:
      a17 = 6;
      sub_1006E3514();
      v27 = v82;
      sub_100008608(&type metadata for ContentStatusBanner.State.NearbyLocationCodingKeys, &a17);
      v66 = v83;
      v65 = v84;
LABEL_9:
      (*(v66 + 8))(v27, v65);
      break;
    default:
      sub_1006E370C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v67 + 8))(v28, v56);
      break;
  }

  (*(v61 + 8))(v29, v59);
  sub_10000C8F4();
}

void sub_1006E1634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000E8AC();
  a25 = v28;
  a26 = v29;
  v117 = v26;
  v31 = v30;
  sub_10022C350(&qword_100CD2BE8, &qword_100A78A00);
  sub_1000037C4();
  v109 = v32;
  v110 = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  v115 = v35;
  sub_10022C350(&qword_100CD2BF0, &qword_100A78A08);
  sub_1000037C4();
  v107 = v36;
  v108 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v114 = v39;
  sub_10022C350(&qword_100CD2BF8, &qword_100A78A10);
  sub_1000037C4();
  v105 = v40;
  v106 = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  v112 = v43;
  v101 = sub_10022C350(&qword_100CD2C00, &qword_100A78A18);
  sub_1000037C4();
  v104 = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  v111 = v46;
  sub_10022C350(&qword_100CD2C08, &qword_100A78A20);
  sub_1000037C4();
  v102 = v48;
  v103 = v47;
  sub_100003828();
  __chkstk_darwin(v49);
  sub_1000039BC();
  v113 = v50;
  sub_10022C350(&qword_100CD2C10, &qword_100A78A28);
  sub_1000037C4();
  v99 = v52;
  v100 = v51;
  sub_100003828();
  __chkstk_darwin(v53);
  v55 = &v93 - v54;
  v56 = sub_10022C350(&qword_100CD2C18, &qword_100A78A30);
  sub_1000037C4();
  v98 = v57;
  sub_100003828();
  __chkstk_darwin(v58);
  sub_10000C8D8();
  v59 = sub_10022C350(&qword_100CD2C20, &unk_100A78A38);
  sub_1000037C4();
  v61 = v60;
  sub_100003828();
  __chkstk_darwin(v62);
  v64 = &v93 - v63;
  v65 = v31[3];
  v116 = v31;
  sub_1000161C0(v31, v65);
  sub_1006E34C0();
  v66 = v117;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v66)
  {
    goto LABEL_9;
  }

  v96 = v27;
  v95 = v56;
  v97 = v55;
  v67 = v113;
  v68 = v114;
  v69 = v115;
  v117 = v61;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v71 == v72 >> 1)
  {
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v80 = v79;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v80 = &type metadata for ContentStatusBanner.State;
    v81 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v81);
    sub_100003B20();
    (*(v82 + 104))(v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v117 + 8))(v64, v59);
LABEL_9:
    sub_100006F14(v116);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  v94 = v59;
  if (v71 < (v72 >> 1))
  {
    v93 = *(v70 + v71);
    sub_100618E7C();
    v74 = v73;
    v76 = v75;
    swift_unknownObjectRelease();
    if (v74 == v76 >> 1)
    {
      switch(v93)
      {
        case 1:
          a11 = 1;
          sub_1006E36B8();
          v67 = v97;
          sub_100010004(&type metadata for ContentStatusBanner.State.NoConnectionCodingKeys, &a11);
          swift_unknownObjectRelease();
          v87 = v99;
          v86 = v100;
          goto LABEL_15;
        case 2:
          a12 = 2;
          sub_1006E3664();
          sub_100010004(&type metadata for ContentStatusBanner.State.AirplaneModeCodingKeys, &a12);
          swift_unknownObjectRelease();
          v87 = v102;
          v86 = v103;
LABEL_15:
          (*(v87 + 8))(v67, v86);
          goto LABEL_19;
        case 3:
          a13 = 3;
          sub_1006E3610();
          v88 = v111;
          sub_100010004(&type metadata for ContentStatusBanner.State.SlowConnectionCodingKeys, &a13);
          swift_unknownObjectRelease();
          (*(v104 + 8))(v88, v101);
          goto LABEL_19;
        case 4:
          a14 = 4;
          sub_1006E35BC();
          v83 = v112;
          sub_100010004(&type metadata for ContentStatusBanner.State.LocationUnknownCodingKeys, &a14);
          swift_unknownObjectRelease();
          v84 = v105;
          v85 = v106;
          goto LABEL_18;
        case 5:
          a15 = 5;
          sub_1006E3568();
          v89 = v94;
          sub_1000048F0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v108 + 8))(v68, v107);
          v90 = sub_1000146A4();
          v92 = v89;
          break;
        case 6:
          a16 = 6;
          sub_1006E3514();
          v83 = v69;
          sub_100010004(&type metadata for ContentStatusBanner.State.NearbyLocationCodingKeys, &a16);
          swift_unknownObjectRelease();
          v84 = v109;
          v85 = v110;
LABEL_18:
          (*(v85 + 8))(v83, v84);
LABEL_19:
          v90 = sub_1000146A4();
          v92 = v69;
          break;
        default:
          sub_1006E370C();
          v77 = v96;
          v78 = v94;
          sub_1000048F0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v98 + 8))(v77, v95);
          v90 = sub_1000146A4();
          v92 = v78;
          break;
      }

      v91(v90, v92);
      sub_100006F14(v116);
      goto LABEL_10;
    }

    v59 = v94;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1006E1E94()
{
  sub_10000E8AC();
  v34 = v2;
  v35 = v0;
  v33 = v3;
  v5 = v4;
  sub_10022C350(&qword_100CD2CE8, &qword_100A78AA8);
  sub_1000037C4();
  v31 = v7;
  v32 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v29 = v9;
  v30 = sub_10022C350(&qword_100CD2CF0, &qword_100A78AB0);
  sub_1000037C4();
  v28 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_10022C350(&qword_100CD2CF8, &qword_100A78AB8);
  sub_1000037C4();
  v27 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_10002C698();
  v17 = sub_10022C350(&qword_100CD2D00, &qword_100A78AC0);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(v5, v5[3]);
  sub_1006E3760();
  v23 = v34;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v23)
  {
    if (v23 != 1)
    {
      sub_1006E3808();
      sub_1000048F0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v30;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v28 + 8))(v13, v25);
      (*(v19 + 8))(v22, v17);
      goto LABEL_7;
    }

    sub_1006E37B4();
    v24 = v29;
    sub_1000048F0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v24, v32);
  }

  else
  {
    sub_1006E385C();
    sub_1000048F0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v27 + 8))(v1, v14);
  }

  (*(v19 + 8))(v22, v17);
LABEL_7:
  sub_10000C8F4();
}

void sub_1006E21F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v27;
  a24 = v28;
  v80 = v24;
  v30 = v29;
  v79 = sub_10022C350(&qword_100CD2CA8, &qword_100A78A88);
  sub_1000037C4();
  v75 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  v77 = v33;
  v73 = sub_10022C350(&qword_100CD2CB0, &qword_100A78A90);
  sub_1000037C4();
  v76 = v34;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_100003CF8();
  v36 = sub_10022C350(&qword_100CD2CB8, &qword_100A78A98);
  sub_1000037C4();
  v74 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = &v69 - v39;
  v41 = sub_10022C350(&qword_100CD2CC0, &qword_100A78AA0);
  sub_1000037C4();
  v78 = v42;
  sub_100003828();
  __chkstk_darwin(v43);
  sub_10000C8D8();
  sub_1000161C0(v30, v30[3]);
  sub_1006E3760();
  v44 = v80;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v44)
  {
    goto LABEL_9;
  }

  v70 = v36;
  v71 = v40;
  v72 = v25;
  v45 = v79;
  v80 = v30;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v47 == v48 >> 1)
  {
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v56 = &type metadata for ContentStatusBanner.Placement;
    v57 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v57);
    sub_100003B20();
    (*(v58 + 104))(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = sub_10000C924();
    v60(v59);
    v30 = v80;
LABEL_9:
    sub_100006F14(v30);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    sub_100618E7C();
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      if (v49)
      {
        v54 = v78;
        if (v49 == 1)
        {
          a13 = 1;
          sub_1006E3808();
          sub_1000698BC(&type metadata for ContentStatusBanner.Placement.LocationCodingKeys, &a13);
          KeyedDecodingContainer.decode(_:forKey:)();
          swift_unknownObjectRelease();
          v67 = sub_100020A68();
          v68(v67);
          (*(v54 + 8))(v26, v41);
        }

        else
        {
          a14 = 2;
          sub_1006E37B4();
          v62 = v77;
          sub_1000698BC(&type metadata for ContentStatusBanner.Placement.MapCodingKeys, &a14);
          swift_unknownObjectRelease();
          (*(v75 + 8))(v62, v45);
          v65 = sub_10000C924();
          v66(v65);
        }
      }

      else
      {
        a12 = 0;
        sub_1006E385C();
        v61 = v71;
        sub_1000698BC(&type metadata for ContentStatusBanner.Placement.ListCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v74 + 8))(v61, v70);
        v63 = sub_10000C924();
        v64(v63);
      }

      sub_100006F14(v80);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1006E2798(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CD2D28, &qword_100A78AD0);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1006E38B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = *v3;
  v21 = 0;
  v11 = sub_1006E39AC();
  sub_100013B24(v11, v12, v13, &type metadata for ContentStatusBanner.State, v11);
  if (!v2)
  {
    v20 = *(v3 + 8);
    v21 = 1;
    v14 = sub_1006E3A00();
    sub_100013B24(v14, v15, v16, &type metadata for ContentStatusBanner.Placement, v14);
    type metadata accessor for ContentStatusBanner(0);
    LOBYTE(v20) = 2;
    type metadata accessor for Date();
    sub_10001CB00();
    sub_100133E8C(v17, v18, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1006E2960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  a22 = v26;
  a23 = v27;
  v29 = v28;
  v46 = v30;
  v31 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_10002C698();
  sub_10022C350(&qword_100CD2D08, &qword_100A78AC8);
  sub_1000037C4();
  v47 = v34;
  v48 = v33;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_10000C8D8();
  v36 = type metadata accessor for ContentStatusBanner(0);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_1000037D8();
  v40 = v39 - v38;
  v42 = *(v41 + 32);
  v43 = type metadata accessor for Date();
  sub_10001B350(v40 + v42, 1, 1, v43);
  sub_1000161C0(v29, v29[3]);
  sub_1006E38B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100006F14(v29);
    sub_10002C4AC(v40 + v42, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  else
  {
    a13 = 0;
    sub_1006E3904();
    sub_10002C9D4(&type metadata for ContentStatusBanner.State, &a13);
    *v40 = v49;
    a13 = 1;
    sub_1006E3958();
    sub_10002C9D4(&type metadata for ContentStatusBanner.Placement, &a13);
    *(v40 + 8) = v49;
    *(v40 + 16) = v50;
    sub_10001CB00();
    sub_100133E8C(v44, v45, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v47 + 8))(v25, v48);
    sub_10019F6D8(v24, v40 + v42);
    sub_10010A338(v40, v46);
    sub_100006F14(v29);
    sub_10010ABE4(v40);
  }

  sub_10000C8F4();
}

uint64_t sub_1006E2C48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

void sub_1006E2C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 2;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  Hasher._combine(_:)(1uLL);

  String.hash(into:)();
}

Swift::Int sub_1006E2D14(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 != 1)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1006E2D98(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  Hasher._combine(_:)(*v1);
  v13 = *(v1 + 2);
  if (!v13)
  {
    v14 = 0;
    goto LABEL_5;
  }

  if (v13 == 1)
  {
    v14 = 2;
LABEL_5:
    Hasher._combine(_:)(v14);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
LABEL_7:
  v15 = type metadata accessor for ContentStatusBanner(0);
  sub_1000D47CC(&v1[*(v15 + 24)], v12);
  if (sub_100024D10(v12, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    Hasher._combine(_:)(1u);
    sub_10001CB00();
    sub_100133E8C(v16, v17, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v8, v2);
  }
}

Swift::Int sub_1006E2F7C()
{
  Hasher.init(_seed:)();
  sub_1006E2D98(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1006E30A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1006E3124(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1006E2D98(v2);
  return Hasher._finalize()();
}

uint64_t sub_1006E3160(char a1)
{
  result = 0x206E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6F43206F4ELL;
      goto LABEL_5;
    case 2:
      v3 = 0x616C70726941;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656E000000000000;
      break;
    case 3:
      result = 0x6E6F4320776F6C53;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x61636F4C20646C4FLL;
      break;
    case 6:
      result = 0x4C2079627261654ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1006E3278(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1953720652;
  }

  if (a2 == 1)
  {
    return 7364941;
  }

  String.append(_:)(*&a1);
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x6E6F697461636F4CLL;
}

uint64_t sub_1006E330C()
{
  _StringGuts.grow(_:)(39);

  v1._countAndFlagsBits = sub_1006E3278(*(v0 + 8), *(v0 + 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D6574617453202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_1006E3160(*v0);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x55207473614C202CLL;
  v4._object = 0xEF3D646574616470;
  String.append(_:)(v4);
  type metadata accessor for ContentStatusBanner(0);
  v5._countAndFlagsBits = sub_100278530();
  String.append(_:)(v5);

  return 0x6E656D6563616C50;
}

unint64_t sub_1006E346C()
{
  result = qword_100CD2BE0;
  if (!qword_100CD2BE0)
  {
    result = swift_getWitnessTable(byte_100A787F0, &type metadata for ContentStatusBanner.State, v0, v1);
    atomic_store(result, &qword_100CD2BE0);
  }

  return result;
}

unint64_t sub_1006E34C0()
{
  result = qword_100CD2C28;
  if (!qword_100CD2C28)
  {
    result = swift_getWitnessTable(aU_62, &type metadata for ContentStatusBanner.State.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C28);
  }

  return result;
}

unint64_t sub_1006E3514()
{
  result = qword_100CD2C30;
  if (!qword_100CD2C30)
  {
    result = swift_getWitnessTable(byte_100A7952C, &type metadata for ContentStatusBanner.State.NearbyLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C30);
  }

  return result;
}

unint64_t sub_1006E3568()
{
  result = qword_100CD2C38;
  if (!qword_100CD2C38)
  {
    result = swift_getWitnessTable(byte_100A794DC, &type metadata for ContentStatusBanner.State.OldLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C38);
  }

  return result;
}

unint64_t sub_1006E35BC()
{
  result = qword_100CD2C40;
  if (!qword_100CD2C40)
  {
    result = swift_getWitnessTable(aE_63, &type metadata for ContentStatusBanner.State.LocationUnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C40);
  }

  return result;
}

unint64_t sub_1006E3610()
{
  result = qword_100CD2C48;
  if (!qword_100CD2C48)
  {
    result = swift_getWitnessTable(byte_100A7943C, &type metadata for ContentStatusBanner.State.SlowConnectionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C48);
  }

  return result;
}

unint64_t sub_1006E3664()
{
  result = qword_100CD2C50;
  if (!qword_100CD2C50)
  {
    result = swift_getWitnessTable(byte_100A793EC, &type metadata for ContentStatusBanner.State.AirplaneModeCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C50);
  }

  return result;
}

unint64_t sub_1006E36B8()
{
  result = qword_100CD2C58;
  if (!qword_100CD2C58)
  {
    result = swift_getWitnessTable(aU_63, &type metadata for ContentStatusBanner.State.NoConnectionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C58);
  }

  return result;
}

unint64_t sub_1006E370C()
{
  result = qword_100CD2C60;
  if (!qword_100CD2C60)
  {
    result = swift_getWitnessTable(byte_100A7934C, &type metadata for ContentStatusBanner.State.UnknownIssueCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2C60);
  }

  return result;
}

unint64_t sub_1006E3760()
{
  result = qword_100CD2CC8;
  if (!qword_100CD2CC8)
  {
    result = swift_getWitnessTable(byte_100A792FC, &type metadata for ContentStatusBanner.Placement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2CC8);
  }

  return result;
}

unint64_t sub_1006E37B4()
{
  result = qword_100CD2CD0;
  if (!qword_100CD2CD0)
  {
    result = swift_getWitnessTable(aE_64, &type metadata for ContentStatusBanner.Placement.MapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2CD0);
  }

  return result;
}

unint64_t sub_1006E3808()
{
  result = qword_100CD2CD8;
  if (!qword_100CD2CD8)
  {
    result = swift_getWitnessTable(byte_100A7925C, &type metadata for ContentStatusBanner.Placement.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2CD8);
  }

  return result;
}

unint64_t sub_1006E385C()
{
  result = qword_100CD2CE0;
  if (!qword_100CD2CE0)
  {
    result = swift_getWitnessTable(byte_100A7920C, &type metadata for ContentStatusBanner.Placement.ListCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2CE0);
  }

  return result;
}

unint64_t sub_1006E38B0()
{
  result = qword_100CD2D10;
  if (!qword_100CD2D10)
  {
    result = swift_getWitnessTable(a5_31, &type metadata for ContentStatusBanner.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D10);
  }

  return result;
}

unint64_t sub_1006E3904()
{
  result = qword_100CD2D18;
  if (!qword_100CD2D18)
  {
    result = swift_getWitnessTable(byte_100A788E0, &type metadata for ContentStatusBanner.State, v0, v1);
    atomic_store(result, &qword_100CD2D18);
  }

  return result;
}

unint64_t sub_1006E3958()
{
  result = qword_100CD2D20;
  if (!qword_100CD2D20)
  {
    result = swift_getWitnessTable(byte_100A78890, &type metadata for ContentStatusBanner.Placement, v0, v1);
    atomic_store(result, &qword_100CD2D20);
  }

  return result;
}

unint64_t sub_1006E39AC()
{
  result = qword_100CD2D30;
  if (!qword_100CD2D30)
  {
    result = swift_getWitnessTable(byte_100A788B8, &type metadata for ContentStatusBanner.State, v0, v1);
    atomic_store(result, &qword_100CD2D30);
  }

  return result;
}

unint64_t sub_1006E3A00()
{
  result = qword_100CD2D38;
  if (!qword_100CD2D38)
  {
    result = swift_getWitnessTable(a0_26, &type metadata for ContentStatusBanner.Placement, v0, v1);
    atomic_store(result, &qword_100CD2D38);
  }

  return result;
}

_BYTE *sub_1006E3A64(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContentStatusBanner.Placement.LocationCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1006E3C0C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1006E3D5C()
{
  result = qword_100CD2D40;
  if (!qword_100CD2D40)
  {
    result = swift_getWitnessTable(a5_32, &type metadata for ContentStatusBanner.State.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D40);
  }

  return result;
}

unint64_t sub_1006E3DB4()
{
  result = qword_100CD2D48;
  if (!qword_100CD2D48)
  {
    result = swift_getWitnessTable(asc_100A78FD4, &type metadata for ContentStatusBanner.Placement.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D48);
  }

  return result;
}

unint64_t sub_1006E3E0C()
{
  result = qword_100CD2D50;
  if (!qword_100CD2D50)
  {
    result = swift_getWitnessTable(asc_100A790DC, &type metadata for ContentStatusBanner.Placement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D50);
  }

  return result;
}

unint64_t sub_1006E3E64()
{
  result = qword_100CD2D58;
  if (!qword_100CD2D58)
  {
    result = swift_getWitnessTable(aM_70, &type metadata for ContentStatusBanner.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D58);
  }

  return result;
}

unint64_t sub_1006E3EBC()
{
  result = qword_100CD2D60;
  if (!qword_100CD2D60)
  {
    result = swift_getWitnessTable(byte_100A79104, &type metadata for ContentStatusBanner.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D60);
  }

  return result;
}

unint64_t sub_1006E3F14()
{
  result = qword_100CD2D68;
  if (!qword_100CD2D68)
  {
    result = swift_getWitnessTable(byte_100A7912C, &type metadata for ContentStatusBanner.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D68);
  }

  return result;
}

unint64_t sub_1006E3F6C()
{
  result = qword_100CD2D70;
  if (!qword_100CD2D70)
  {
    result = swift_getWitnessTable(byte_100A78FFC, &type metadata for ContentStatusBanner.Placement.ListCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D70);
  }

  return result;
}

unint64_t sub_1006E3FC4()
{
  result = qword_100CD2D78;
  if (!qword_100CD2D78)
  {
    result = swift_getWitnessTable(byte_100A79024, &type metadata for ContentStatusBanner.Placement.ListCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D78);
  }

  return result;
}

unint64_t sub_1006E401C()
{
  result = qword_100CD2D80;
  if (!qword_100CD2D80)
  {
    result = swift_getWitnessTable(byte_100A78F44, &type metadata for ContentStatusBanner.Placement.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D80);
  }

  return result;
}

unint64_t sub_1006E4074()
{
  result = qword_100CD2D88;
  if (!qword_100CD2D88)
  {
    result = swift_getWitnessTable(aE_65, &type metadata for ContentStatusBanner.Placement.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D88);
  }

  return result;
}

unint64_t sub_1006E40CC()
{
  result = qword_100CD2D90;
  if (!qword_100CD2D90)
  {
    result = swift_getWitnessTable(byte_100A78EF4, &type metadata for ContentStatusBanner.Placement.MapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D90);
  }

  return result;
}

unint64_t sub_1006E4124()
{
  result = qword_100CD2D98;
  if (!qword_100CD2D98)
  {
    result = swift_getWitnessTable(byte_100A78F1C, &type metadata for ContentStatusBanner.Placement.MapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2D98);
  }

  return result;
}

unint64_t sub_1006E417C()
{
  result = qword_100CD2DA0;
  if (!qword_100CD2DA0)
  {
    result = swift_getWitnessTable(byte_100A7904C, &type metadata for ContentStatusBanner.Placement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DA0);
  }

  return result;
}

unint64_t sub_1006E41D4()
{
  result = qword_100CD2DA8;
  if (!qword_100CD2DA8)
  {
    result = swift_getWitnessTable(asc_100A79074, &type metadata for ContentStatusBanner.Placement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DA8);
  }

  return result;
}

unint64_t sub_1006E422C()
{
  result = qword_100CD2DB0;
  if (!qword_100CD2DB0)
  {
    result = swift_getWitnessTable(byte_100A78DEC, &type metadata for ContentStatusBanner.State.UnknownIssueCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DB0);
  }

  return result;
}

unint64_t sub_1006E4284()
{
  result = qword_100CD2DB8;
  if (!qword_100CD2DB8)
  {
    result = swift_getWitnessTable(byte_100A78E14, &type metadata for ContentStatusBanner.State.UnknownIssueCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DB8);
  }

  return result;
}

unint64_t sub_1006E42DC()
{
  result = qword_100CD2DC0;
  if (!qword_100CD2DC0)
  {
    result = swift_getWitnessTable(aE_66, &type metadata for ContentStatusBanner.State.NoConnectionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DC0);
  }

  return result;
}

unint64_t sub_1006E4334()
{
  result = qword_100CD2DC8;
  if (!qword_100CD2DC8)
  {
    result = swift_getWitnessTable(asc_100A78DC4, &type metadata for ContentStatusBanner.State.NoConnectionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DC8);
  }

  return result;
}

unint64_t sub_1006E438C()
{
  result = qword_100CD2DD0;
  if (!qword_100CD2DD0)
  {
    result = swift_getWitnessTable(byte_100A78D4C, &type metadata for ContentStatusBanner.State.AirplaneModeCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DD0);
  }

  return result;
}

unint64_t sub_1006E43E4()
{
  result = qword_100CD2DD8;
  if (!qword_100CD2DD8)
  {
    result = swift_getWitnessTable(asc_100A78D74, &type metadata for ContentStatusBanner.State.AirplaneModeCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DD8);
  }

  return result;
}

unint64_t sub_1006E443C()
{
  result = qword_100CD2DE0;
  if (!qword_100CD2DE0)
  {
    result = swift_getWitnessTable(byte_100A78CFC, &type metadata for ContentStatusBanner.State.SlowConnectionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DE0);
  }

  return result;
}

unint64_t sub_1006E4494()
{
  result = qword_100CD2DE8;
  if (!qword_100CD2DE8)
  {
    result = swift_getWitnessTable(byte_100A78D24, &type metadata for ContentStatusBanner.State.SlowConnectionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DE8);
  }

  return result;
}

unint64_t sub_1006E44EC()
{
  result = qword_100CD2DF0;
  if (!qword_100CD2DF0)
  {
    result = swift_getWitnessTable(a5_33, &type metadata for ContentStatusBanner.State.LocationUnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DF0);
  }

  return result;
}

unint64_t sub_1006E4544()
{
  result = qword_100CD2DF8;
  if (!qword_100CD2DF8)
  {
    result = swift_getWitnessTable(byte_100A78CD4, &type metadata for ContentStatusBanner.State.LocationUnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2DF8);
  }

  return result;
}

unint64_t sub_1006E459C()
{
  result = qword_100CD2E00;
  if (!qword_100CD2E00)
  {
    result = swift_getWitnessTable(byte_100A78C5C, &type metadata for ContentStatusBanner.State.OldLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2E00);
  }

  return result;
}

unint64_t sub_1006E45F4()
{
  result = qword_100CD2E08;
  if (!qword_100CD2E08)
  {
    result = swift_getWitnessTable(aM_71, &type metadata for ContentStatusBanner.State.OldLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2E08);
  }

  return result;
}

unint64_t sub_1006E464C()
{
  result = qword_100CD2E10;
  if (!qword_100CD2E10)
  {
    result = swift_getWitnessTable(byte_100A78C0C, &type metadata for ContentStatusBanner.State.NearbyLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2E10);
  }

  return result;
}

unint64_t sub_1006E46A4()
{
  result = qword_100CD2E18;
  if (!qword_100CD2E18)
  {
    result = swift_getWitnessTable(byte_100A78C34, &type metadata for ContentStatusBanner.State.NearbyLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2E18);
  }

  return result;
}

unint64_t sub_1006E46FC()
{
  result = qword_100CD2E20;
  if (!qword_100CD2E20)
  {
    result = swift_getWitnessTable(byte_100A78E3C, &type metadata for ContentStatusBanner.State.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2E20);
  }

  return result;
}

unint64_t sub_1006E4754()
{
  result = qword_100CD2E28;
  if (!qword_100CD2E28)
  {
    result = swift_getWitnessTable(aM_72, &type metadata for ContentStatusBanner.State.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD2E28);
  }

  return result;
}

unint64_t sub_1006E47B8()
{
  result = qword_100CD2E30;
  if (!qword_100CD2E30)
  {
    result = swift_getWitnessTable(aY_73, &type metadata for InteractiveSceneResizeEnvironmentKey, v0, v1);
    atomic_store(result, &qword_100CD2E30);
  }

  return result;
}

uint64_t sub_1006E487C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  if (v5 < 0)
  {
    v8 = *(a2 + 56);
    if (v8 < 0)
    {
      v9 = *a2 == v2 && *(a2 + 8) == v3;
      v10 = v9 && *(a2 + 16) == v4;
      v11 = v10 && *(a1 + 24) == *(a2 + 24);
      if (v11 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0)
      {
        v12 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
        if (v12 && ((v5 ^ v8) & 1) == 0)
        {
          return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
        }
      }
    }
  }

  else if ((*(a2 + 56) & 0x80000000) == 0)
  {
    v6 = *a2 == v2 && *(a2 + 8) == v3;
    if (v6 && ((LODWORD(v4) ^ *(a2 + 16)) & 1) == 0)
    {
      return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    }
  }

  return static VerticalSizingBehaviorKey.defaultValue.getter();
}

uint64_t sub_1006E4924(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), v2 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && (*(a1 + 40) == *(a2 + 40) ? (v3 = *(a1 + 48) == *(a2 + 48)) : (v3 = 0), v3 && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)))
  {
    return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  }

  else
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }
}

uint64_t sub_1006E4994(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 56);
  if (v5 < 0)
  {
    if (v9 < 0)
    {
      v12 = v3 == v7 && v2 == v6;
      v13 = v12 && v4 == v8;
      v14 = v13 && *(a1 + 24) == *(a2 + 24);
      if (v14 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0)
      {
        v15 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
        if (v15 && ((v5 ^ v9) & 1) == 0)
        {
          return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
        }
      }
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    v10 = v3 == v7 && v2 == v6;
    if (v10 && ((LODWORD(v4) ^ LODWORD(v8)) & 1) == 0)
    {
      return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    }
  }

  return static VerticalSizingBehaviorKey.defaultValue.getter();
}

uint64_t sub_1006E4A6C(int a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 == a5;
  if (a4 != a6)
  {
    v6 = 0;
  }

  return v6 & (a1 ^ a2 ^ 1u);
}

uint64_t sub_1006E4ABC()
{
  sub_1006E4D24();
  EnvironmentValues.subscript.getter();
  return v1 >> 7;
}

uint64_t sub_1006E4AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006E4C90();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_1006E4B60@<D0>(_OWORD *a1@<X8>)
{
  sub_1003C0CB0();
  UITraitCollection.subscript.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[9];
  *(a1 + 41) = *&v5[9];
  return result;
}

uint64_t sub_1006E4BC0(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_10002D7F8(a1, v3);
  return sub_1006E480C(a2, v3, v4);
}

double sub_1006E4C0C@<D0>(_OWORD *a1@<X8>)
{
  sub_1006E4B60(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 9);
  *(a1 + 41) = *(v5 + 9);
  return result;
}

uint64_t sub_1006E4C54(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v5[0] = a2[2];
  *(v5 + 9) = *(a2 + 41);
  return sub_1006E4BC0(a1, v4);
}

unint64_t sub_1006E4C90()
{
  result = qword_100CD2E38;
  if (!qword_100CD2E38)
  {
    result = swift_getWitnessTable(byte_100A79720, &unk_100C67DB0, v0, v1);
    atomic_store(result, &qword_100CD2E38);
  }

  return result;
}

unint64_t sub_1006E4D24()
{
  result = qword_100CD2E40;
  if (!qword_100CD2E40)
  {
    result = swift_getWitnessTable(aD_4, &type metadata for InteractiveSceneResizeEnvironmentKey, v0, v1);
    atomic_store(result, &qword_100CD2E40);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ForegroundEffectViewMask(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1006E4DA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1006E4DF0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006E4E70(uint64_t result, char a2)
{
  v2 = *(result + 56) & 1 | (a2 << 7);
  *(result + 32) &= 1uLL;
  *(result + 56) = v2;
  return result;
}

uint64_t sub_1006E4E9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1006E4EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1006E4F54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1006E4FA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

double sub_1006E5008()
{
  swift_beginAccess();
  withTransaction<A>(_:_:)();
  swift_endAccess();
  return result;
}

id sub_1006E50B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1006E5100(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_windowSizeChangingObservation) = 0;
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_resizingState) = 0;
  if (qword_100CA27C8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000703C(v4, qword_100D90DB0);
  (*(v6 + 16))(v9, v16, v4);
  OSSignposter.init(logger:)();
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_signposter, v15, v10);
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_window) = a1;
  v21[1] = a1;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v17 = a1;
  v18 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v19 = *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_windowSizeChangingObservation);
  *(v2 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_windowSizeChangingObservation) = v18;

  return v2;
}

uint64_t sub_1006E5370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006E53D0(v4);
  }

  return result;
}

uint64_t sub_1006E53D0(double a1)
{
  v2 = type metadata accessor for OSSignposter();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_signposter, v2, v4);
  v7 = *(v1 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_window);
  sub_10022C350(&qword_100CD2F30, &qword_100A798F0);
  NSKeyValueObservedChange.oldValue.getter();
  if (v22)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v20;
  }

  if (v22)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v21;
  }

  NSKeyValueObservedChange.newValue.getter();
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v1 + OBJC_IVAR____TtC7Weather20SceneResizingMonitor_resizingState;
  v14 = swift_beginAccess();
  if (v8 != 0.0 || v9 != 0.0)
  {
    if (v12)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v11;
    }

    if (v12)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v10;
    }

    if (v8 != v16 || v9 != v15)
    {
      __chkstk_darwin(v14);
      *(&v19 - 4) = v7;
      *(&v19 - 3) = v13;
      *(&v19 - 2) = v6;
      withTransaction<A>(_:_:)();
    }
  }

  swift_endAccess();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1006E55E8(double a1)
{
  v2 = OBJC_IVAR____TtC7Weather20SceneResizingMonitor_signposter;
  v3 = type metadata accessor for OSSignposter();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t sub_1006E5678(double a1)
{
  sub_1006E55E8(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SceneResizingMonitor(uint64_t a1)
{
  result = qword_100CD2E90;
  if (!qword_100CD2E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006E5724(uint64_t a1, double a2)
{
  result = type metadata accessor for OSSignposter();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006E57CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006E581C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1006E5870(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_1006E58A0(void *a1, uint64_t *a2, uint64_t a3)
{
  v34 = a2;
  v31 = a3;
  v32 = type metadata accessor for OSSignpostID();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v28 - v6;
  v7 = type metadata accessor for UITraitOverrides();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIView.traitOverrides.getter();
  sub_1003C0DAC();
  sub_1003C0E00();
  dispatch thunk of UIMutableTraits.subscript.getter();
  (*(v8 + 8))(v10, v7);
  v28 = v35;
  v11 = [a1 interfaceOrientation];
  UIView.traitOverrides.getter();
  v35 = v11;
  v12 = v34;
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  result = [a1 interfaceOrientation];
  if (!*v12)
  {
    v15 = v29;
    v14 = v30;
    if (v28 == result)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    UIView.traitOverrides.getter();
    LOBYTE(v35) = v16;
    sub_1003C0D58();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIView.traitOverrides.setter();
    v17 = v33;
    static OSSignpostID.exclusive.getter();
    v18 = OSSignposter.logHandle.getter();
    v19 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "sceneResizing", "", v20, 2u);
    }

    v22 = v32;
    (*(v14 + 16))(v15, v17, v32);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v23 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v14 + 8))(v17, v22);
    *v12 = v23;

    if (qword_100CA27C8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000703C(v24, qword_100D90DB0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Scene did begin resizing.", v27, 2u);
    }
  }

  return result;
}

void sub_1006E5D0C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v28 = a4;
  v7 = type metadata accessor for OSSignpostError();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UITraitOverrides();
  v14 = [a1 interfaceOrientation];
  UIView.traitOverrides.getter();
  v33 = v14;
  sub_1003C0DAC();
  sub_1003C0E00();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  v31 = a2;
  if (*a2)
  {

    if ([a3 isInteractivelyResizing])
    {
    }

    else
    {
      UIView.traitOverrides.getter();
      v32 = 0;
      sub_1003C0D58();
      dispatch thunk of UIMutableTraits.subscript.setter();
      UIView.traitOverrides.setter();
      v15 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v16 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v18 = v26;
        v17 = v27;
        if ((*(v26 + 88))(v9, v27) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v19 = "[Error] Interval already ended";
        }

        else
        {
          (*(v18 + 8))(v9, v17);
          v19 = "";
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v21, "sceneResizing", v19, v20, 2u);
      }

      (*(v29 + 8))(v12, v30);
      *v31 = 0;

      if (qword_100CA27C8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000703C(v22, qword_100D90DB0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Scene did finish resizing.", v25, 2u);
      }
    }
  }
}

void sub_1006E61AC(uint64_t a1)
{
  if (!qword_100CD2FB8)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    sub_10022E824(&qword_100CA6078, &unk_100A30870);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CD2FB8);
    }
  }
}

uint64_t sub_1006E6234@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_100496220(v2, v13 - v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      (*(v6 + 32))(v10, v14, v4);
      LocationOfInterest.location.getter();
      (*(v6 + 8))(v10, v4);
      v19 = type metadata accessor for Location();
      v17 = a1;
      v18 = 0;
      break;
    case 3u:
    case 4u:
      sub_100141AE4(v14, type metadata accessor for PreviewLocation);
      v19 = type metadata accessor for Location();
      v17 = a1;
      v18 = 1;
      break;
    default:
      v15 = type metadata accessor for Location();
      sub_1000037E8();
      (*(v16 + 32))(a1, v14, v15);
      v17 = a1;
      v18 = 0;
      v19 = v15;
      break;
  }

  return sub_10001B350(v17, v18, 1, v19);
}

void sub_1006E6430()
{
  sub_100018514();
  type metadata accessor for UUID();
  sub_1000037C4();
  v34 = v4;
  v35 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v33 = v6 - v5;
  v7 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for SearchLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v37 = v14 - v13;
  sub_1000038CC();
  v15 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v36 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_10003038C();
  v18 = type metadata accessor for Location();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_1000183C0();
  type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  sub_100496220(v0, v24 - v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v26 = v36;
      (*(v36 + 32))(v2, v25, v15);
      LocationOfInterest.location.getter();
      Location.id.getter();
      sub_100016DAC();
      (*(v20 + 8))(v1, v18);
      (*(v26 + 8))(v2, v15);
      break;
    case 3u:
      sub_10001CB18();
      v27 = v25;
      v28 = v37;
      sub_1006E8EBC(v27, v37, v29);
      sub_100645544(v28 + *(v11 + 32), v10);
      if (sub_100024D10(v10, 1, v18) == 1)
      {
        sub_1000180EC(v10, &qword_100CA65D8, &unk_100A3D9D0);
        if (*(v28 + *(v11 + 36) + 16))
        {
          v30 = v33;
          UUID.init()();
          UUID.uuidString.getter();
          sub_100016DAC();
          (*(v34 + 8))(v30, v35);
        }

        else
        {
          CLLocationCoordinate2D.id.getter();
          sub_100016DAC();
        }
      }

      else
      {
        Location.id.getter();
        sub_100016DAC();
        (*(v20 + 8))(v10, v18);
      }

      sub_10001F5D8();
      sub_100141AE4(v28, v31);
      break;
    case 4u:

      sub_100021624();
      CLLocationCoordinate2D.id.getter();
      sub_100016DAC();
      break;
    default:
      (*(v20 + 32))(v1, v25, v18);
      Location.id.getter();
      sub_100016DAC();
      (*(v20 + 8))(v1, v18);
      break;
  }

  sub_1000135C8();
}

uint64_t sub_1006E6834()
{
  v3 = v0;
  v4 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10003BF1C();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v27 = v9 - v8;
  sub_1000038CC();
  v10 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v26 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100037CB0();
  v13 = type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v14);
  sub_1000037D8();
  sub_100030018();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_1000183C0();
  sub_100496220(v0, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      (*(v26 + 32))(v1, v2, v10);
      LocationOfInterest.location.getter();
      Location.name.getter();
      sub_10002C9F4();
      v20 = sub_100037280();
      v21(v20);
      (*(v26 + 8))(v1, v10);
      break;
    case 3u:
      sub_10001CB18();
      sub_1006E8EBC(v2, v27, v22);
      sub_100645544(v27 + *(v6 + 32), v0);
      if (sub_100024D10(v0, 1, v13) == 1)
      {
        sub_1000180EC(v0, &qword_100CA65D8, &unk_100A3D9D0);
        v3 = 0;
      }

      else
      {
        Location.name.getter();
        sub_10002C9F4();
        v23(v0, v13);
      }

      sub_10001F5D8();
      sub_100141AE4(v27, v24);
      break;
    case 4u:
      if (*(v2 + 24))
      {
        v3 = *(v2 + 16);
      }

      else
      {
        v3 = 0;
      }

      break;
    default:
      v16 = sub_100052040();
      v17(v16, v2, v13);
      Location.name.getter();
      sub_10002C9F4();
      v18 = sub_100037280();
      v19(v18);
      break;
  }

  return v3;
}

void sub_1006E6B60()
{
  sub_100018514();
  v4 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v26 = sub_10003BF1C();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v25 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100037CB0();
  v13 = type metadata accessor for Location();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_100030018();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_1000183C0();
  sub_100496220(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      (*(v25 + 32))(v2, v3, v10);
      LocationOfInterest.location.getter();
      Location.coordinate.getter();
      sub_10000ED18();
      v20 = sub_100037280();
      v21(v20);
      (*(v25 + 8))(v2, v10);
      break;
    case 3u:
      sub_10001CB18();
      sub_1006E8EBC(v3, v9, v22);
      sub_100645544(v9 + *(v26 + 32), v0);
      if (sub_100024D10(v0, 1, v13) == 1)
      {
        sub_1000180EC(v0, &qword_100CA65D8, &unk_100A3D9D0);
      }

      else
      {
        Location.coordinate.getter();
        sub_10000ED18();
        v24(v0, v13);
      }

      sub_10001F5D8();
      sub_100141AE4(v9, v23);
      break;
    case 4u:

      break;
    default:
      (*(v15 + 32))(v1, v3, v13);
      Location.coordinate.getter();
      sub_10000ED18();
      v18 = sub_100037280();
      v19(v18);
      break;
  }

  sub_100021624();
  sub_1000135C8();
}

void sub_1006E6E98()
{
  sub_100018514();
  v93 = v0;
  v94 = v1;
  type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v87 = v3;
  v88 = v2;
  __chkstk_darwin(v2);
  sub_100003C38();
  v86 = v4 - v5;
  __chkstk_darwin(v6);
  v85 = &v81 - v7;
  v8 = sub_1000038CC();
  v9 = type metadata accessor for SearchLocation(v8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  v84 = v11 - v12;
  __chkstk_darwin(v13);
  v83 = &v81 - v14;
  sub_1000038CC();
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v89 = v16;
  v90 = v15;
  __chkstk_darwin(v15);
  sub_100003C38();
  v82 = (v17 - v18);
  __chkstk_darwin(v19);
  v81 = &v81 - v20;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v91 = v22;
  v92 = v21;
  __chkstk_darwin(v21);
  sub_100003C38();
  v25 = (v23 - v24);
  __chkstk_darwin(v26);
  v28 = &v81 - v27;
  type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003C38();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v81 - v34;
  __chkstk_darwin(v36);
  v38 = &v81 - v37;
  __chkstk_darwin(v39);
  v41 = &v81 - v40;
  __chkstk_darwin(v42);
  v44 = &v81 - v43;
  v45 = sub_10022C350(&qword_100CD2FF0, &qword_100A79A68);
  sub_100003810(v45);
  sub_100003828();
  __chkstk_darwin(v46);
  v48 = &v81 - v47;
  v50 = &v81 + *(v49 + 56) - v47;
  sub_100496220(v93, &v81 - v47);
  sub_100496220(v94, v50);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100496220(v48, v41);
      if (sub_100025360() == 1)
      {
        v72 = v91;
        v71 = v92;
        v73 = *(v91 + 32);
        v73(v28, v41, v92);
        v73(v25, v50, v71);
        static Location.== infix(_:_:)();
        v74 = *(v72 + 8);
        v74(v25, v71);
        v74(v28, v71);
        goto LABEL_32;
      }

      (*(v91 + 8))(v41, v92);
      goto LABEL_24;
    case 2u:
      sub_100496220(v48, v38);
      if (sub_100025360() == 2)
      {
        v64 = v89;
        v63 = v90;
        v65 = *(v89 + 32);
        v66 = v81;
        v65(v81, v38, v90);
        v67 = v82;
        v65(v82, v50, v63);
        static LocationOfInterest.== infix(_:_:)();
        v68 = *(v64 + 8);
        v68(v67, v63);
        v68(v66, v63);
        goto LABEL_32;
      }

      (*(v89 + 8))(v38, v90);
      goto LABEL_24;
    case 3u:
      sub_100496220(v48, v35);
      if (sub_100025360() == 3)
      {
        v69 = v83;
        sub_1006E8EBC(v35, v83, type metadata accessor for SearchLocation);
        v70 = v84;
        sub_1006E8EBC(v50, v84, type metadata accessor for SearchLocation);
        static SearchLocation.== infix(_:_:)(v69, v70);
        sub_100141AE4(v70, type metadata accessor for SearchLocation);
        sub_100141AE4(v69, type metadata accessor for SearchLocation);
        goto LABEL_32;
      }

      sub_10001F5D8();
      sub_100141AE4(v35, v75);
      goto LABEL_24;
    case 4u:
      sub_100496220(v48, v32);
      v52 = *(v32 + 16);
      v51 = *(v32 + 24);
      v53 = *(v32 + 32);
      if (sub_100025360() != 4)
      {

        goto LABEL_24;
      }

      LODWORD(v93) = v53;
      v55 = *(v50 + 2);
      v54 = *(v50 + 3);
      LODWORD(v94) = v50[32];
      v56 = v85;
      LocationCoordinate.init(_:)();
      v57 = v86;
      sub_100021624();
      LocationCoordinate.init(_:)();
      v58 = static LocationCoordinate.== infix(_:_:)();
      v59 = *(v87 + 8);
      v60 = v57;
      v61 = v88;
      v59(v60, v88);
      v59(v56, v61);
      if ((v58 & 1) == 0)
      {

        goto LABEL_27;
      }

      if (v51)
      {
        if (v54)
        {
          if (v52 != v55 || v51 != v54)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_32;
        }

LABEL_27:

        goto LABEL_32;
      }

      if (v54)
      {
        goto LABEL_27;
      }

LABEL_32:
      sub_100141AE4(v48, type metadata accessor for PreviewLocation);
LABEL_33:
      sub_1000135C8();
      return;
    default:
      sub_100496220(v48, v44);
      if (!sub_100025360())
      {
        v76 = v91;
        v77 = *(v91 + 32);
        v78 = v44;
        v79 = v92;
        (v77)(v28, v78, v92);
        sub_100041B20();
        v77();
        static Location.== infix(_:_:)();
        v80 = *(v76 + 8);
        v80(v25, v79);
        v80(v28, v79);
        goto LABEL_32;
      }

      (*(v91 + 8))(v44, v92);
LABEL_24:
      sub_1000180EC(v48, &qword_100CD2FF0, &qword_100A79A68);
      goto LABEL_33;
  }
}

void sub_1006E7624()
{
  sub_100018514();
  v35 = v5;
  type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v33 = v7;
  v34 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for SearchLocation(0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100037CB0();
  v13 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v32 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_1000183C0();
  v16 = type metadata accessor for Location();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_100030018();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10003038C();
  sub_100496220(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100052040();
      sub_100041B20();
      v29();
      v22 = 5;
      goto LABEL_8;
    case 2u:
      (*(v32 + 32))(v3, v4, v13);
      Hasher._combine(_:)(2uLL);
      sub_1000048FC();
      sub_1006E9040(v25, v26, &protocol conformance descriptor for LocationOfInterest);
      dispatch thunk of Hashable.hash(into:)();
      (*(v32 + 8))(v3, v13);
      break;
    case 3u:
      sub_10001CB18();
      sub_1006E8EBC(v4, v2, v27);
      Hasher._combine(_:)(3uLL);
      SearchLocation.hash(into:)(v35);
      sub_10001F5D8();
      sub_100141AE4(v2, v28);
      break;
    case 4u:
      v23 = *(v4 + 24);
      v24 = *(v4 + 32);
      Hasher._combine(_:)(4uLL);
      sub_100021624();
      LocationCoordinate.init(_:)();
      sub_1006E9040(&qword_100CD2FF8, &type metadata accessor for LocationCoordinate, &protocol conformance descriptor for LocationCoordinate);
      dispatch thunk of Hashable.hash(into:)();
      (*(v33 + 8))(v10, v34);
      if (v23)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v24);
      break;
    default:
      sub_100052040();
      sub_100041B20();
      v21();
      v22 = 1;
LABEL_8:
      Hasher._combine(_:)(v22);
      sub_1000108EC();
      sub_1006E9040(v30, v31, &protocol conformance descriptor for Location);
      dispatch thunk of Hashable.hash(into:)();
      (*(v18 + 8))(v1, v16);
      break;
  }

  sub_1000135C8();
}

Swift::Int sub_1006E7A38()
{
  Hasher.init(_seed:)();
  sub_1006E7624();
  return Hasher._finalize()();
}

Swift::Int sub_1006E7A80(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1006E7624();
  return Hasher._finalize()();
}

uint64_t sub_1006E7AEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SearchLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v44 = v6 - v5;
  sub_1000038CC();
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100003C38();
  __chkstk_darwin(v9);
  v10 = sub_10022C350(&qword_100CD3008, &qword_100A79A70);
  sub_1000037C4();
  v46 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10003038C();
  type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v48 = a1;
  sub_1000161C0(a1, a1[3]);
  sub_1006E8E14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v47)
  {
    sub_1006E8E68();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    switch(v49)
    {
      case 2:
        sub_1000048FC();
        sub_1006E9040(v20, v21, &protocol conformance descriptor for LocationOfInterest);
        sub_1000698D8();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v22 = sub_100019D88();
        v23(v22);
        v10 = v16;
        sub_100041B20();
        v29(v24, v25, v26, v27, v28);
        break;
      case 3:
        sub_100074E44();
        sub_1006E9040(v30, v31, "9-\x1B");
        sub_1000698D8();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v32 = sub_100019D88();
        v33(v32);
        sub_10001CB18();
        v10 = v16;
        sub_1006E8EBC(v44, v16, v34);
        break;
      case 4:
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_100049B24();
        sub_1006E9040(v18, v19, &protocol conformance descriptor for CLLocationCoordinate2D);
        sub_10003C744();
        sub_10022C350(&qword_100CA6078, &unk_100A30870);
        sub_1006E8F70(&qword_100CD3028, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
        sub_10003C744();
        v43 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v46 + 8))(v2, v10);
        v10 = v16;
        *v16 = v49;
        *(v16 + 8) = v50;
        *(v16 + 16) = v49;
        *(v16 + 24) = v50;
        *(v16 + 32) = v43 & 1;
        break;
      default:
        sub_1000108EC();
        sub_1006E9040(v35, v36, &protocol conformance descriptor for Location);
        sub_1000698D8();
        sub_10003A328(v37, v38);
        v39 = sub_100019D88();
        v40(v39);
        v41 = sub_100011768();
        v42(v41);
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_1006E8EBC(v10, a2, type metadata accessor for PreviewLocation);
  }

  return sub_100006F14(v48);
}

uint64_t sub_1006E8118(void *a1)
{
  v78[1] = type metadata accessor for SearchLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v82 = v4 - v3;
  sub_1000038CC();
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v80 = v6;
  v81 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v79 = v8 - v7;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v83 = v10;
  v84 = v9;
  __chkstk_darwin(v9);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = v78 - v15;
  type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = (v19 - v18);
  sub_10022C350(&qword_100CD3030, &qword_100A79A78);
  sub_1000037C4();
  v87 = v21;
  v88 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_10003038C();
  sub_1000161C0(a1, a1[3]);
  sub_1006E8E14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100496220(v85, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v71 = v83;
      v70 = v84;
      (*(v83 + 32))(v13, v20, v84);
      LOBYTE(v89) = 1;
      v91 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v72 = v86;
      v66 = v87;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v72)
      {
        LOBYTE(v89) = 2;
        sub_1000108EC();
        sub_1006E9040(v73, v74, &protocol conformance descriptor for Location);
        sub_1000698D8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v71 + 8))(v13, v70);
      goto LABEL_18;
    case 2u:
      v54 = v79;
      v53 = v80;
      v55 = v20;
      v56 = v81;
      (*(v80 + 32))(v79, v55, v81);
      LOBYTE(v89) = 2;
      v91 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v57 = v86;
      v27 = v87;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v57)
      {
        LOBYTE(v89) = 6;
        sub_1000048FC();
        sub_1006E9040(v58, v59, &protocol conformance descriptor for LocationOfInterest);
        sub_1000698D8();
        sub_100021100(v54, v60, v27, v61, v62);
      }

      (*(v53 + 8))(v54, v56);
      goto LABEL_11;
    case 3u:
      sub_10001CB18();
      v63 = v82;
      sub_1006E8EBC(v20, v82, v64);
      LOBYTE(v89) = 3;
      v91 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v65 = v86;
      v66 = v87;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v65)
      {
        LOBYTE(v89) = 3;
        sub_100074E44();
        sub_1006E9040(v67, v68, protocol conformance descriptor for SearchLocation);
        sub_1000698D8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_10001F5D8();
      sub_100141AE4(v63, v69);
LABEL_18:
      v75 = sub_10004E974();
      v77 = v66;
      return v76(v75, v77);
    case 4u:
      v34 = *v20;
      v35 = v20[1];
      v37 = v20[2];
      v36 = v20[3];
      LOBYTE(v89) = 4;
      v91 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v38 = v86;
      v39 = v87;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v38)
      {
        v50 = sub_10004E974();
        v51(v50, v39);
      }

      else
      {
        v89 = v34;
        v90 = v35;
        v91 = 4;
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_100049B24();
        sub_1006E9040(v40, v41, &protocol conformance descriptor for CLLocationCoordinate2D);
        v42 = sub_100017CC4();
        sub_100021100(v42, v43, v39, v44, v45);
        v89 = v37;
        v90 = v36;
        v91 = 5;
        sub_10022C350(&qword_100CA6078, &unk_100A30870);
        sub_1006E8F70(&qword_100CD3048, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
        v46 = sub_100017CC4();
        sub_100021100(v46, v47, v39, v48, v49);

        LOBYTE(v89) = 7;
        KeyedEncodingContainer.encode(_:forKey:)();
        v75 = sub_10004E974();
        v77 = v39;
        return v76(v75, v77);
      }

    default:
      v24 = v83;
      v25 = v20;
      v26 = v84;
      (*(v83 + 32))(v16, v25, v84);
      LOBYTE(v89) = 0;
      v91 = 0;
      sub_1006E8F1C();
      sub_100017CC4();
      v28 = v86;
      v27 = v87;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v28)
      {
        LOBYTE(v89) = 1;
        sub_1000108EC();
        sub_1006E9040(v29, v30, &protocol conformance descriptor for Location);
        sub_1000698D8();
        sub_100021100(v16, v31, v27, v32, v33);
      }

      (*(v24 + 8))(v16, v26);
LABEL_11:
      v75 = sub_10004E974();
      v77 = v27;
      return v76(v75, v77);
  }
}

unint64_t sub_1006E87E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44E00, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_1006E8834(char a1)
{
  switch(a1)
  {
    case 2:
      sub_10001C260();
      break;
    case 3:
      sub_100028978();
      break;
    case 6:
      sub_100016D94();
      break;
    default:
      return;
  }
}

unint64_t sub_1006E88EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44EE0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void sub_1006E8938(char a1)
{
  switch(a1)
  {
    case 1:
      sub_10001C260();
      break;
    case 2:
      sub_100016D94();
      break;
    case 3:
      sub_100028978();
      break;
    default:
      return;
  }
}

unint64_t sub_1006E89D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006E87E0(*a1);
  *a2 = result;
  return result;
}

void sub_1006E8A08(void *a1@<X8>)
{
  sub_1006E8834(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1006E8A50@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1006E882C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1006E8A78(uint64_t a1)
{
  v2 = sub_1006E8E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006E8AB4(uint64_t a1)
{
  v2 = sub_1006E8E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1006E8B14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006E88EC(*a1);
  *a2 = result;
  return result;
}

void sub_1006E8B44(void *a1@<X8>)
{
  sub_1006E8938(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1006E8C50@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD3050, &qword_100A79A80);
  a1[4] = sub_1006E8FDC();
  sub_100042FB0(a1);
  type metadata accessor for PreviewLocation(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1006E8D18(uint64_t a1)
{
  sub_1006E9040(&qword_100CD3060, type metadata accessor for PreviewLocation, aI_58);

  return ShortDescribable.description.getter();
}

unint64_t sub_1006E8E14()
{
  result = qword_100CD3010;
  if (!qword_100CD3010)
  {
    result = swift_getWitnessTable(aQ_60, &type metadata for PreviewLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD3010);
  }

  return result;
}

unint64_t sub_1006E8E68()
{
  result = qword_100CD3018;
  if (!qword_100CD3018)
  {
    result = swift_getWitnessTable(asc_100A79C58, &type metadata for PreviewLocation.CodingType, v0, v1);
    atomic_store(result, &qword_100CD3018);
  }

  return result;
}

uint64_t sub_1006E8EBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1006E8F1C()
{
  result = qword_100CD3038;
  if (!qword_100CD3038)
  {
    result = swift_getWitnessTable(aA_59, &type metadata for PreviewLocation.CodingType, v0, v1);
    atomic_store(result, &qword_100CD3038);
  }

  return result;
}

uint64_t sub_1006E8F70(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(&qword_100CA6078, &unk_100A30870);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006E8FDC()
{
  result = qword_100CD3058;
  if (!qword_100CD3058)
  {
    v3 = sub_10022E824(&qword_100CD3050, &qword_100A79A80);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD3058);
  }

  return result;
}

uint64_t sub_1006E9040(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreviewLocation.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PreviewLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1006E9244()
{
  result = qword_100CD3068;
  if (!qword_100CD3068)
  {
    result = swift_getWitnessTable(byte_100A79B68, &type metadata for PreviewLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD3068);
  }

  return result;
}

unint64_t sub_1006E929C()
{
  result = qword_100CD3070;
  if (!qword_100CD3070)
  {
    result = swift_getWitnessTable(byte_100A79C08, &type metadata for PreviewLocation.CodingType, v0, v1);
    atomic_store(result, &qword_100CD3070);
  }

  return result;
}

unint64_t sub_1006E92F4()
{
  result = qword_100CD3078;
  if (!qword_100CD3078)
  {
    result = swift_getWitnessTable(aA_60, &type metadata for PreviewLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD3078);
  }

  return result;
}

unint64_t sub_1006E934C()
{
  result = qword_100CD3080;
  if (!qword_100CD3080)
  {
    result = swift_getWitnessTable(asc_100A79AC8, &type metadata for PreviewLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD3080);
  }

  return result;
}

unint64_t sub_1006E93A0()
{
  result = qword_100CD3088;
  if (!qword_100CD3088)
  {
    result = swift_getWitnessTable(byte_100A79B90, &type metadata for PreviewLocation.CodingType, v0, v1);
    atomic_store(result, &qword_100CD3088);
  }

  return result;
}

uint64_t type metadata accessor for LollipopChartOverlayView(uint64_t a1)
{
  result = qword_100CD30E8;
  if (!qword_100CD30E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006E9468(uint64_t a1)
{
  sub_10044BFA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChartProxy();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GeometryProxy();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_1006E954C();
          if (v5 <= 0x3F)
          {
            sub_100578820(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1006E954C()
{
  if (!qword_100CD30F8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD30F8);
    }
  }
}

uint64_t sub_1006E95B8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LollipopChartOverlayView(0);
  sub_10066D458(v1 + *(v13 + 40), v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1006E9784@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  type metadata accessor for ChartDragGestureRecognizerRepresentable();
  sub_1000037C4();
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v37 = v5 - v4;
  type metadata accessor for LocalCoordinateSpace();
  sub_1000037C4();
  v33 = v6;
  v34 = v7;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for LollipopChartOverlayView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_10022C350(qword_100CD3140, &unk_100A79D40);
  sub_1000037C4();
  v35 = v14;
  v36 = v15;
  __chkstk_darwin(v14);
  v32 = v30 - v16;
  v31 = static Color.clear.getter();
  v41 = v31;
  LOWORD(v42) = 256;
  BYTE2(v42) = 0;
  sub_1006EA16C(v1, v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  sub_1006EA1D0(v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  static CoordinateSpaceProtocol<>.local.getter();
  v19 = sub_10022C350(&qword_100CCE098, &unk_100A6EEE0);
  v20 = sub_10064B084();
  v21 = v33;
  View.onContinuousHover<A>(coordinateSpace:perform:)();

  (*(v34 + 8))(v10, v21);

  sub_1006EA16C(v30[1], v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_1006EA1D0(v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v17);
  v23 = v37;
  ChartDragGestureRecognizerRepresentable.init(isRecognizedHandler:)();
  v41 = v19;
  v42 = v21;
  v43 = v20;
  v44 = &protocol witness table for LocalCoordinateSpace;
  sub_100006594();
  swift_getOpaqueTypeConformance2();
  sub_100010904();
  sub_1006EA2B4(v24, v25, &protocol conformance descriptor for ChartDragGestureRecognizerRepresentable);
  v26 = v35;
  v27 = v38;
  v28 = v32;
  View.gestureRecognizer<A>(_:)();
  (*(v39 + 8))(v23, v27);
  return (*(v36 + 8))(v28, v26);
}

uint64_t sub_1006E9B60(double a1)
{
  v2 = v1;
  v60 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  __chkstk_darwin(v60);
  v59 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LayoutDirection();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v61 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v51 - v13;
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for LollipopChartOverlayView(0);
  ChartProxy.plotAreaFrame.getter();
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();

  ChartProxy.value<A>(atX:as:)();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    return sub_1001AEDF4(v8);
  }

  v19 = *(v10 + 32);
  v19(v16, v8, v9);
  v20 = ChartProxy.yDomain<A>(dataType:)();
  if (*(v20 + 16))
  {
    v55 = v16;
    v21 = *(v20 + 32);
    v22 = sub_1002F5568(v20);
    v24 = v23;

    if (v24)
    {
      return (*(v10 + 8))(v55, v9);
    }

    else
    {
      v54 = v22;
      v25 = *(v17 + 32);
      sub_1006EA2B4(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v51 = v25;
      v26 = v55;
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = *(v10 + 16);
      v52 = v28;
      v53 = v10 + 16;
      if (v27)
      {
        v29 = &v2[v51];
        v30 = v61;
        v31 = v61;
      }

      else
      {
        v30 = v61;
        v31 = v61;
        v29 = v26;
      }

      v28(v31, v29, v9);
      v32 = *(v17 + 28);
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        v33 = v10;
        (*(v10 + 8))(v30, v9);
        v34 = v62;
        v52(v62, &v2[v32], v9);
      }

      else
      {
        v34 = v62;
        v19(v62, v30, v9);
        v33 = v10;
      }

      v35 = ChartProxy.position<A>(forX:)();
      v37 = v54;
      v36 = v55;
      if (v38)
      {
        v39 = *(v33 + 8);
        v39(v34, v9);
        return (v39)(v36, v9);
      }

      else
      {
        v40 = *&v35;
        v41 = v56;
        sub_1006E95B8(v56);
        v43 = v57;
        v42 = v58;
        v44 = (*(v57 + 88))(v41, v58);
        v45 = enum case for LayoutDirection.rightToLeft(_:);
        (*(v43 + 8))(v41, v42);
        if (v44 == v45)
        {
          ChartProxy.plotAreaSize.getter();
          v40 = v46 - v40;
        }

        sub_1000161C0(v2, *(v2 + 3));
        v48 = v59;
        v47 = v60;
        v49 = v62;
        v52(v59 + *(v60 + 20), v62, v9);
        *v48 = v40;
        *(v48 + *(v47 + 24)) = v21;
        *(v48 + *(v47 + 28)) = v37;
        sub_100639A48(v48);
        sub_100385550(v48);
        v50 = *(v33 + 8);
        v50(v49, v9);
        return (v50)(v55, v9);
      }
    }
  }

  else
  {
    (*(v10 + 8))(v16, v9);
  }
}

uint64_t sub_1006EA120(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if ((a3 & 1) == 0)
  {
    return sub_1006E9B60(*&a1);
  }

  sub_1000161C0(a4, a4[3]);
  return sub_100639B28();
}

uint64_t sub_1006EA16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LollipopChartOverlayView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006EA1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LollipopChartOverlayView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006EA2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006EA300(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v15 = ((v13 + ((v12 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v13) + v14;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_28:
      v21 = (a1 + v12 + 10) & 0xFFFFFFFFFFFFFFF8;
      if ((v9 & 0x80000000) != 0)
      {

        return sub_100024D10((v21 + v13 + 40) & ~v13, v9, v7);
      }

      else
      {
        v22 = *(v21 + 24);
        if (v22 >= 0xFFFFFFFF)
        {
          LODWORD(v22) = -1;
        }

        return (v22 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_28;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    switch(v15)
    {
      case 2:
        LODWORD(v15) = *a1;
        break;
      case 3:
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v15) = *a1;
        break;
      default:
        LODWORD(v15) = *a1;
        break;
    }
  }

  return v10 + (v15 | v20) + 1;
}