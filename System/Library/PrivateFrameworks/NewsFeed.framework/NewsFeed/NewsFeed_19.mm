void sub_1D5CFB918(char **result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[5];
  v26[4] = a2[4];
  v26[5] = v10;
  v26[6] = a2[6];
  v11 = a2[1];
  v26[0] = *a2;
  v26[1] = v11;
  v12 = a2[3];
  v13 = *v8;
  v14 = *v8 >> 60;
  v26[2] = a2[2];
  v26[3] = v12;
  if (v14 <= 0xB)
  {
    if (((1 << v14) & 0xFAC) != 0)
    {
      return;
    }

    if (v14 == 4)
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = result;

      sub_1D5D06C9C(v16, v26, v15);
      if (v9)
      {
      }

      else
      {

        sub_1D5CFB918(v16, v26, v20, v21, v22, v23, v24, v25);
      }

      return;
    }

    if (v14 == 6)
    {
      sub_1D62A6DE8(result, a2);
      return;
    }
  }

  if (v14)
  {
    sub_1D5CF6D20(result, a2, a3, a4);
    return;
  }

  v17 = *(v13 + 16);
  v18 = *(v13 + 24);
  if (v17)
  {
    v19 = result;
    sub_1D6E73EF0(result, v26, v17);
    if (v9)
    {
      return;
    }

    result = v19;
  }

  if (v18)
  {
    sub_1D5CF9E40(result, v26, v18);
  }
}

void sub_1D5CFBB04(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = (&v22 - v9);
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v22 = *(v8 + 72);
    while (1)
    {
      sub_1D5CF8338(v12, v10, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v13 = v10[10];
      v23 = v10[9];
      v14 = v10[11];
      v16 = v10[13];
      v15 = v10[14];
      if (v13)
      {
        v17 = a2[5];
        v24[4] = a2[4];
        v24[5] = v17;
        v24[6] = a2[6];
        v18 = a2[1];
        v24[0] = *a2;
        v24[1] = v18;
        v19 = a2[3];
        v24[2] = a2[2];
        v24[3] = v19;
        v20 = v25;
        sub_1D5D0578C(a1, v24);
        if (v20)
        {
          v25 = v20;
          goto LABEL_11;
        }
      }

      else
      {
        v20 = v25;
      }

      sub_1D5CF4060(a1, a2, v14);

      if (v20)
      {
        break;
      }

      sub_1D5CF6244(a1, a2, v16);

      sub_1D5CFD3E0(a1, a2, v15);

      v21 = v23;

      sub_1D5CF6090(a1, a2, v21);

      v25 = 0;
      sub_1D5CF9D88(v10, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v12 += v22;
      if (!--v11)
      {
        return;
      }
    }

    v25 = v20;
LABEL_11:
    sub_1D5CF9D88(v10, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  }
}

void sub_1D5CFBE18(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = (&v26 - v10);
  if (*(a3 + 16))
  {
    v12 = *(a3 + 16);
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = *(v9 + 72);
    v14 = v12;
    while (1)
    {
      v15 = a2;
      sub_1D5CF8338(v13, v11, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      v16 = v11[7];
      v29 = v11[6];
      v17 = v11[8];
      v18 = v11[11];
      v40 = v11[12];
      if (v16)
      {
        v28 = v14;
        swift_beginAccess();
        v19 = *(v16 + 56);

        sub_1D6E782FC(a1, v19);

        if (v3)
        {
          break;
        }

        if (*(v16 + 74) == 255)
        {
          a2 = v15;
        }

        else
        {
          v20 = *(v16 + 72) | (*(v16 + 74) << 16);
          v37 = *(v16 + 64);
          v38 = v20;
          v39 = BYTE2(v20);
          a2 = v15;
          v21 = v15[5];
          v34 = v15[4];
          v35 = v21;
          v36 = v15[6];
          v22 = v15[1];
          v30 = *v15;
          v31 = v22;
          v23 = v15[3];
          v32 = v15[2];
          v33 = v23;
          sub_1D6E78C48(v37, v20, SBYTE2(v20), sub_1D610CA28, sub_1D610CA5C);
          sub_1D62A8A9C();
          sub_1D6E78C48(v37, v38, v39, sub_1D60CF6A8, sub_1D60CF6DC);
        }

        v14 = v28;
      }

      else
      {
        a2 = v15;
      }

      sub_1D5CF4060(a1, a2, v17);

      if (v3)
      {
        break;
      }

      sub_1D5CF6244(a1, a2, v18);

      v24 = v40;

      sub_1D5CFD3E0(a1, a2, v24);

      v25 = v29;

      sub_1D5CF6090(a1, a2, v25);

      sub_1D5CF9D88(v11, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      v13 += v27;
      if (!--v14)
      {
        return;
      }
    }

    sub_1D5CF9D88(v11, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  }
}

void sub_1D5CFC228(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = (&v21 - v10);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    v14 = &qword_1EDF33860;
    v23 = (&v21 - v10);
    while (1)
    {
      v15 = v14;
      sub_1D5CF8338(v13, v11, v14, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      v16 = a1;
      v17 = a2;
      v19 = v11[6];
      v18 = v11[7];
      v20 = v11[8];

      sub_1D5CF4060(v16, v17, v19);
      if (v3)
      {
        break;
      }

      sub_1D5CFD3E0(v16, v17, v18);
      a2 = v17;

      sub_1D5CF6244(v16, v17, v20);
      a1 = v16;

      v11 = v23;
      v14 = v15;
      sub_1D5CF9D88(v23, v15, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      v13 += v22;
      if (!--v12)
      {
        return;
      }
    }

    sub_1D5CF9D88(v23, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  }
}

void sub_1D5CFC4E4(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v45[4] = a2[4];
  v45[5] = v7;
  v45[6] = a2[6];
  v8 = a2[1];
  v45[0] = *a2;
  v45[1] = v8;
  v9 = a2[3];
  v45[2] = a2[2];
  v45[3] = v9;
  v35 = *(v2 + 32);
  sub_1D5D085B4(v35);
  sub_1D5D03F3C(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5D05694(v35);
  }

  else
  {
    sub_1D5D05694(v35);
    swift_beginAccess();
    v16 = *(v2 + 48);

    sub_1D5CF9258(a1, v45, v16, v17, v18, v19, v20, v21);

    if (*(v4 + 56))
    {
      sub_1D5CFCC3C(a1, v45);
    }

    v22 = *(v4 + 64);
    if (v22)
    {
      swift_beginAccess();
      v23 = *(v22 + 72);
      if (v23)
      {

        sub_1D6E6120C(a1, v45, v23);
      }

      swift_beginAccess();
      v24 = *(v22 + 88);

      sub_1D6E71B64(a1, v45, v24);
    }

    sub_1D5CFEE30(a1, v45);

    if ((*(v4 + 130) >> 1) <= 0x7Eu)
    {
      v25 = *(v4 + 128) | (*(v4 + 130) << 16);
      v36 = *(v4 + 80);
      v37 = *(v4 + 88);
      v39 = *(v4 + 96);
      v41 = *(v4 + 104);
      v34 = *(v4 + 112);
      v46 = *(v4 + 120);
      sub_1D5D0A5BC(v36, v37, v39, v41, v34, v46, v25);
      sub_1D5D0A61C(a1, v45, v26, v27);
      sub_1D5D0A678(v36, v37, v39, v41, v34, v46, v25);
    }

    swift_beginAccess();
    v28 = *(v4 + 144);
    if (v28 >> 62 == 1)
    {
      v29 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 144));
      sub_1D5EB1500(v29);

      sub_1D62A5D84(a1, v45, v29, v30, v31);
      sub_1D5EB15C4(v29);

      sub_1D5EB15C4(v28);
    }

    swift_beginAccess();
    v32 = *(v4 + 184);

    sub_1D5D09158(a1, v45, v32);

    v33 = *(v4 + 208);
    if (v33)
    {
      v38 = *(v4 + 216);
      v40 = *(v4 + 224);
      v42 = *(v4 + 232);
      v43 = *(v4 + 240);
      v44 = *(v4 + 248);
      sub_1D62A42E0();
      sub_1D5EB1D80(v33, v38, v40, v42, v43, v44);

      sub_1D5CBF568(v43);
    }
  }
}

void sub_1D5CFC8D8(char **a1, __int128 *a2)
{
  v4 = a2[5];
  v21[4] = a2[4];
  v21[5] = v4;
  v21[6] = a2[6];
  v5 = a2[1];
  v21[0] = *a2;
  v21[1] = v5;
  v6 = a2[3];
  v21[2] = a2[2];
  v21[3] = v6;
  v7 = v2[6];
  v8 = *v2;
  switch(v7 >> 59)
  {
    case 1uLL:
      sub_1D5CFCC3C(a1, a2);
      return;
    case 2uLL:
      sub_1D5CF8420(a1, a2);
      return;
    case 3uLL:
      sub_1D5D0578C(a1, a2);
      return;
    case 4uLL:
    case 0x10uLL:
      return;
    case 5uLL:
      v17 = *(v8 + 56);
      if (!v17)
      {
        v18 = a1;
LABEL_28:
        swift_beginAccess();
        v19 = *(v8 + 64);

        sub_1D6E71448(v18, v21, v19);
        goto LABEL_29;
      }

      v18 = a1;
      sub_1D5CF6244(a1, v21, v17);
      if (!v3)
      {
        goto LABEL_28;
      }

      return;
    case 6uLL:
      swift_beginAccess();
      v15 = *(v8 + 56);

      sub_1D6E782FC(a1, v15);

      if (!v3 && *(v8 + 74) != 255)
      {
        v16 = *(v8 + 72) | (*(v8 + 74) << 16);
        v20 = *(v8 + 64);
        sub_1D610CA74(v20, v16, SBYTE2(v16), sub_1D610CA28, sub_1D610CA5C);
        sub_1D62A8A9C();
        sub_1D610CA74(v20, v16, SBYTE2(v16), sub_1D60CF6A8, sub_1D60CF6DC);
      }

      return;
    case 7uLL:
      v12 = sub_1D6E73BCC;
      goto LABEL_26;
    case 8uLL:
      sub_1D5D0B200(a1, a2);
      return;
    case 9uLL:
      v13 = sub_1D6E7124C;
      goto LABEL_24;
    case 0xAuLL:
      v12 = sub_1D6E7109C;
LABEL_26:
      sub_1D62AD47C(a1, a2, v12);
      return;
    case 0xBuLL:
      sub_1D62A9AB4(a1, a2);
      return;
    case 0xCuLL:
      sub_1D62A9EC8(a1, a2);
      return;
    case 0xDuLL:
      swift_beginAccess();
      v10 = *(v8 + 72);
      if (!v10)
      {
        goto LABEL_7;
      }

      sub_1D6E6120C(a1, v21, v10);
      if (!v3)
      {

LABEL_7:
        swift_beginAccess();
        v11 = *(v8 + 88);

        sub_1D6E71B64(a1, v21, v11);
      }

LABEL_29:

      return;
    case 0xEuLL:
      v13 = sub_1D6E71048;
LABEL_24:
      sub_1D62AF268(a1, a2, v13);
      return;
    case 0xFuLL:
      sub_1D62AF450(a1, a2);
      return;
    case 0x11uLL:
      sub_1D62AF578(a1, a2);
      return;
    default:
      sub_1D5D0434C(a1, a2);
      return;
  }
}

uint64_t sub_1D5CFCC3C(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v52[4] = a2[4];
  v52[5] = v5;
  v52[6] = a2[6];
  v6 = a2[1];
  v52[0] = *a2;
  v52[1] = v6;
  v7 = a2[3];
  v52[2] = a2[2];
  v52[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D5CFCFC4(a1, v52, v8);
  if (v3)
  {
  }

  if ((~*(v2 + 56) & 0xF000000000000007) != 0)
  {
    *&v44 = *(v2 + 56);

    sub_1D5D0350C(a1, v52);
  }

  v10 = *(v2 + 144);
  v40 = *(v2 + 128);
  v41 = v10;
  v11 = *(v2 + 176);
  v42 = *(v2 + 160);
  v43 = v11;
  v12 = *(v2 + 80);
  v36 = *(v2 + 64);
  v37 = v12;
  v13 = *(v2 + 112);
  v38 = *(v2 + 96);
  v39 = v13;
  v50 = v42;
  v51 = v11;
  v48 = v40;
  v49 = v10;
  v46 = v38;
  v47 = v13;
  v44 = v36;
  v45 = v12;
  result = sub_1D5CFD0B8(&v44);
  if (result != 1)
  {
    v24 = v48;
    v25 = v49;
    v26 = v50;
    v27 = v51;
    v20 = v44;
    v21 = v45;
    v22 = v46;
    v23 = v47;
    v30 = v38;
    v31 = v39;
    v28 = v36;
    v29 = v37;
    v34 = v42;
    v35 = v43;
    v32 = v40;
    v33 = v41;
    sub_1D5CFD190(&v28, v19);
    sub_1D5CFD210(a1, v52);
    v19[4] = v24;
    v19[5] = v25;
    v19[6] = v26;
    v19[7] = v27;
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    result = sub_1D5CFD368(v19);
  }

  v14 = *(v2 + 192);
  if (v14)
  {
    result = sub_1D5D0AE64(a1, v52, v14);
  }

  LOBYTE(v33) = *(v2 + 280);
  v15 = *(v2 + 248);
  v30 = *(v2 + 232);
  v31 = v15;
  v16 = *(v2 + 216);
  v28 = *(v2 + 200);
  v29 = v16;
  v32 = *(v2 + 264);
  if (v33 != 254)
  {
    *&v20 = v30;
    swift_retain_n();
    sub_1D5CF9A24(a1, v52);

    result = sub_1D5D0ABCC(&v28, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if (*(v2 + 520) != 9)
  {
    v17 = *(v2 + 528);
    if ((v17 & 0xF000000000000007) != 0xF000000000000007)
    {
      *&v20 = *(v2 + 528);
      sub_1D5CFCFAC(v17);
      sub_1D5CF9A24(a1, v52);
    }
  }

  if (*(v2 + 536) != 9)
  {
    v18 = *(v2 + 544);
    if ((v18 & 0xF000000000000007) != 0xF000000000000007)
    {
      *&v20 = *(v2 + 544);
      sub_1D5CFCFAC(v18);
      sub_1D5CF9A24(a1, v52);
    }
  }

  return result;
}

uint64_t sub_1D5CFCFAC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

char **sub_1D5CFCFC4(char **result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 528)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      v8 = a2[5];
      v12[4] = a2[4];
      v12[5] = v8;
      v12[6] = a2[6];
      v9 = a2[1];
      v12[0] = *a2;
      v12[1] = v9;
      v10 = a2[3];
      v12[2] = a2[2];
      v12[3] = v10;
      sub_1D5CFDDA0(__dst, v11);
      sub_1D5CFF16C(v6, v12);
      if (v3)
      {
        break;
      }

      memcpy(v11, __src, sizeof(v11));
      result = sub_1D5CFF4CC(v11);
      if (!--v4)
      {
        return result;
      }
    }

    memcpy(v11, __src, sizeof(v11));
    return sub_1D5CFF4CC(v11);
  }

  return result;
}

uint64_t sub_1D5CFD0B8(uint64_t a1)
{
  if ((*(a1 + 104) >> 1) > 0x80000000)
  {
    return -(*(a1 + 104) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5CFD0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72593CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5CFD210(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v23[4] = a2[4];
  v23[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v23[0] = *a2;
  v23[1] = v7;
  v8 = a2[3];
  v23[2] = a2[2];
  v23[3] = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  v24[2] = v2[2];
  v24[3] = v11;
  v24[1] = v10;
  v23[6] = v6;
  v24[0] = v9;
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[7];
  v24[6] = v2[6];
  v24[7] = v14;
  v24[4] = v12;
  v24[5] = v13;
  v15 = sub_1D5CFD35C(v24);
  v16 = sub_1D5CFD34C(v24);
  if (v15 <= 1)
  {
    if (!v15)
    {
      v25[0] = *v16;
      return sub_1D5CF6480(a1, a2, sub_1D5CF9A24);
    }

    v18 = *v16;
    v20 = a2[5];
    v25[4] = a2[4];
    v25[5] = v20;
    v25[6] = a2[6];
    v21 = a2[1];
    v25[0] = *a2;
    v25[1] = v21;
    v22 = a2[3];
    v25[2] = a2[2];
    v25[3] = v22;
    v19 = v25;
    return sub_1D5CF8C68(a1, v19, v18);
  }

  if (v15 == 2)
  {
    v18 = *(v16 + 112);
    v19 = v23;
    return sub_1D5CF8C68(a1, v19, v18);
  }

  *&v25[0] = *v16;
  return sub_1D5D03C64(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatGroupColumnSystemOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D5CFD3E0(char **result, __int128 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return;
  }

  for (i = a3 + 32; ; i += 88)
  {
    v16 = *(i + 48);
    v77 = *(i + 32);
    v78 = v16;
    v79 = *(i + 64);
    v80 = *(i + 80);
    v17 = v80;
    v18 = *(i + 16);
    v19 = v80 >> 6;
    v76[0] = *i;
    v76[1] = v18;
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = *(&v77 + 1);
    v21 = v77;
    v22 = *(&v78 + 1);
    v23 = v78;
    v24 = v79;
    if (v19 == 1)
    {
      break;
    }

    v67 = i;
    v36 = v3;
    v37 = a2[4];
    v38 = a2[5];
    v39 = a2[2];
    v72 = a2[3];
    v73 = v37;
    v40 = a2[6];
    v74 = v38;
    v75 = v40;
    v41 = a2[1];
    v69 = *a2;
    v70 = v41;
    v71 = v39;
    sub_1D62B7D1C(v76, v68);
    sub_1D618EC0C(v21, v20, v23, v22, v24, *(&v24 + 1), v17);
    v42 = v81;
    sub_1D62A82C0(result, &v69);
    v81 = v42;
    if (v42)
    {
      sub_1D62B7D78(v76);
      sub_1D60CF6F4(v21, v20, v23, v22, v24, *(&v24 + 1), v17);
      return;
    }

    sub_1D62B7D78(v76);
    sub_1D60CF6F4(v21, v20, v23, v22, v24, *(&v24 + 1), v17);
    v3 = v36;
    i = v67;
LABEL_7:
    if (!--v3)
    {
      return;
    }
  }

  if (v80)
  {
    goto LABEL_7;
  }

  v64 = v3;
  v25 = v79;
  v26 = *(v78 + 16);
  v27 = *(v78 + 64);
  if (*(v78 + 66))
  {
    v28 = 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 & 0xFFFFFFF8 | (v27 >> 11) & 7;
  if (v29 > 4)
  {
    if (v29 <= 6)
    {
      v62 = v80;
      v63 = v77;
      if (v29 == 5)
      {
        goto LABEL_31;
      }

      v52 = a2[4];
      v53 = a2[5];
      v54 = a2[2];
      v72 = a2[3];
      v73 = v52;
      v55 = a2[6];
      v74 = v53;
      v75 = v55;
      v56 = a2[1];
      v69 = *a2;
      v70 = v56;
      v71 = v54;
      sub_1D62B7D1C(v76, v68);
      v61 = v20;
      sub_1D618EC0C(v21, v20, v23, v22, v24, *(&v25 + 1), v17);
      v48 = v22;
      sub_1D618ECBC(v23, v22, v25, *(&v25 + 1), 0);
      v49 = v81;
      sub_1D62A7F6C(result, &v69);
      goto LABEL_36;
    }

    if (v29 == 7)
    {
      v10 = *(&v79 + 1);
      if (v27 >> 14)
      {
        v11 = *(&v77 + 1);
        v12 = v79;
        sub_1D62B7D1C(v76, &v69);
        v5 = v21;
        v6 = v11;
        v7 = v23;
        v8 = v22;
        goto LABEL_34;
      }
    }

    else
    {
      v10 = *(&v79 + 1);
    }

    sub_1D62B7D1C(v76, &v69);
    v5 = v21;
    v6 = v20;
    v7 = v23;
    v8 = v22;
    v11 = v20;
    v12 = v25;
LABEL_34:
    v9 = v12;
    goto LABEL_4;
  }

  if (v29 <= 1)
  {
    v62 = v80;
    v63 = v77;
    if (v29)
    {
      goto LABEL_31;
    }

    v43 = a2[4];
    v44 = a2[5];
    v45 = a2[2];
    v72 = a2[3];
    v73 = v43;
    v46 = a2[6];
    v74 = v44;
    v75 = v46;
    v47 = a2[1];
    v69 = *a2;
    v70 = v47;
    v71 = v45;
    sub_1D62B7D1C(v76, v68);
    v61 = v20;
    sub_1D618EC0C(v21, v20, v23, v22, v24, *(&v25 + 1), v17);
    v48 = v22;
    sub_1D618ECBC(v23, v22, v25, *(&v25 + 1), 0);
    v49 = v81;
    sub_1D5D06CC8(result, &v69, v50, v51);
LABEL_36:
    v81 = v49;
    if (v49)
    {
      v57 = v25 >> 64;
      v58 = v25;
      sub_1D60CF6F4(v63, v61, v23, v48, v25, *(&v25 + 1), v62);
      sub_1D62B7D78(v76);
      v59 = v23;
      v60 = v48;
      goto LABEL_43;
    }

    v10 = *(&v25 + 1);
    v12 = v25;
    v22 = v48;
    v11 = v61;
    goto LABEL_38;
  }

  if (v29 != 3 || *(v78 + 32) > 1u || !*(v78 + 32))
  {
    sub_1D62B7D1C(v76, &v69);
    v5 = v21;
    v6 = v20;
    v7 = v23;
    v8 = v22;
    v9 = v24;
    v10 = *(&v25 + 1);
    v11 = v20;
    v12 = v25;
LABEL_4:
    v13 = v10;
LABEL_5:
    sub_1D618EC0C(v5, v6, v7, v8, v9, v13, v17);
    sub_1D618ECBC(v23, v22, v12, v10, 0);
    v14 = v17;
    v15 = v21;
LABEL_6:
    sub_1D60CF6F4(v15, v11, v23, v22, v12, v10, v14);
    sub_1D62B7D78(v76);
    sub_1D5E32940(v23, v22, v12, v10, 0);
    v3 = v64;
    goto LABEL_7;
  }

  v62 = v80;
  v63 = v77;
  if ((~v26 & 0xF000000000000007) == 0)
  {
LABEL_31:
    sub_1D62B7D1C(v76, &v69);
    v21 = v63;
    v5 = v63;
    v6 = v20;
    v7 = v23;
    v8 = v22;
    v9 = v24;
    v10 = *(&v25 + 1);
    v11 = v20;
    v13 = v25 >> 64;
    v12 = v25;
    v17 = v62;
    goto LABEL_5;
  }

  v30 = a2[4];
  v31 = a2[5];
  v32 = a2[2];
  v72 = a2[3];
  v73 = v30;
  v33 = a2[6];
  v74 = v31;
  v75 = v33;
  v34 = a2[1];
  v69 = *a2;
  v70 = v34;
  v71 = v32;
  sub_1D62B7D1C(v76, v68);
  v11 = v20;
  sub_1D618EC0C(v21, v20, v23, v22, v25, *(&v25 + 1), v17);
  sub_1D618ECBC(v23, v22, v25, *(&v25 + 1), 0);
  sub_1D5CFCFAC(v26);
  v35 = v81;
  sub_1D5CFEE30(result, &v69);

  v81 = v35;
  if (!v35)
  {
    v10 = *(&v25 + 1);
    v12 = v25;
LABEL_38:
    v15 = v63;
    v14 = v62;
    goto LABEL_6;
  }

  v57 = v25 >> 64;
  v58 = v25;
  sub_1D60CF6F4(v21, v20, v23, v22, v25, *(&v25 + 1), v62);
  sub_1D62B7D78(v76);
  v59 = v23;
  v60 = v22;
LABEL_43:
  sub_1D5E32940(v59, v60, v58, v57, 0);
}

uint64_t sub_1D5CFDAE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (result)
  {

    return sub_1D5EB1D80(a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_1D5CFDB80(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v30[4] = a2[4];
  v30[5] = v7;
  v30[6] = a2[6];
  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v30[2] = a2[2];
  v30[3] = v9;
  swift_beginAccess();
  v24 = v2[4];
  sub_1D5C82CD8(v24);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  result = sub_1D5C92A8C(v24);
  if (!v3)
  {
    swift_beginAccess();
    v17 = v2[5];

    sub_1D5CF9258(a1, v30, v17, v18, v19, v20, v21, v22);

    v23 = v4[6];
    if (v23)
    {
      v25 = v4[7];
      v26 = v4[8];
      v27 = v4[9];
      v28 = v4[10];
      v29 = v4[11];
      sub_1D62A42E0();
      sub_1D5EB1D80(v23, v25, v26, v27, v28, v29);

      sub_1D5CBF568(v28);
    }
  }

  return result;
}

uint64_t sub_1D5CFDD14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (result)
  {

    return sub_1D5EB2398(a3, a4, a5, a6, a7, a8);
  }

  return result;
}

char **sub_1D5CFDDFC(char **result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v29[4] = a2[4];
  v29[5] = v5;
  v29[6] = a2[6];
  v6 = a2[1];
  v29[0] = *a2;
  v29[1] = v6;
  v7 = a2[3];
  v8 = *(v2 + 32);
  v29[2] = a2[2];
  v29[3] = v7;
  if (v8 >> 62)
  {
LABEL_15:
    result = sub_1D7263BFC();
    v9 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v30 = v8 & 0xC000000000000001;
      do
      {
        if (v30)
        {
          v11 = MEMORY[0x1DA6FB460](v10, v8);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_12;
          }
        }

        sub_1D5CF6528(v4, v29, v13, v14, v15, v16, v17, v18);
        if (v3)
        {
          goto LABEL_13;
        }

        swift_beginAccess();
        v19 = *(v11 + 24);

        sub_1D5CF6090(v4, v29, v19);

        ++v10;
      }

      while (v12 != v9);
    }
  }

  v20 = v23[5];
  if (!v20 || (swift_beginAccess(), v21 = *(v20 + 16), , sub_1D5CF6090(v4, v29, v21), result = , !v3))
  {
    v22 = v23[9];
    if (v22)
    {
      v24 = v23[10];
      v25 = v23[11];
      v26 = v23[12];
      v27 = v23[13];
      v28 = v23[14];
      sub_1D62A42E0();
      sub_1D5EB1D80(v22, v24, v25, v26, v27, v28);

      sub_1D5CBF568(v27);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10FormatFontOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10FormatFillOSg(uint64_t a1)
{
  if ((*(a1 + 104) >> 1) > 0x80000000)
  {
    return -(*(a1 + 104) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed12FormatShadowVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 5)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

unint64_t sub_1D5CFE0E8(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v30[4] = a2[4];
  v30[5] = v7;
  v30[6] = a2[6];
  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v30[2] = a2[2];
  v30[3] = v9;
  swift_beginAccess();
  v29 = v2[8];
  sub_1D5C82CD8(v29);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  result = sub_1D5C92A8C(v29);
  if (!v3)
  {
    swift_beginAccess();
    v17 = v2[11];

    sub_1D5CF9258(a1, v30, v17, v18, v19, v20, v21, v22);

    v23 = v4[17];
    if (v23)
    {
      v24 = v4[21];
      v31 = v4[22];
      v26 = v4[19];
      v25 = v4[20];
      v27 = v4[18];
      sub_1D62A42E0();
      sub_1D5EB1D80(v23, v27, v26, v25, v24, v31);

      sub_1D5CBF568(v24);
    }

    swift_beginAccess();
    v28 = v4[12];

    sub_1D5CF6090(a1, v30, v28);
  }

  return result;
}

void *sub_1D5CFE2B8(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D698C8A0(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1EDF01EA0, &type metadata for FormatContentSlotItemAuxiliary.Resolved);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  result = sub_1D5CFE818(v34, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = result + v13;
    if (v14)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v18 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_46;
        }

        if (v18 >= ((v3 + 64) >> 6))
        {
          v21 = 0;
          goto LABEL_44;
        }

        v17 = v12[v18];
        ++v15;
        if (v17)
        {
          goto LABEL_23;
        }
      }
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
    v16 = v34[0];
LABEL_14:
    result = sub_1D5B87E38(v16);
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = *(v4 + 2);
  v12 = v34[1];
  v3 = v34[2];
  v15 = v35;
  v17 = v36;
  v32 = v34[0];
  if (!v36)
  {
    goto LABEL_20;
  }

  v18 = v35;
LABEL_23:
  v19 = (v17 - 1) & v17;
  v20 = (*(v32 + 56) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
  v22 = *v20;
  v21 = v20[1];

  if (!v22)
  {
LABEL_44:
    sub_1D5CDE22C(0, v21);
    v16 = v32;
    goto LABEL_14;
  }

  v23 = (v3 + 64) >> 6;
  v33 = v18;
  while (1)
  {
    v24 = *(v4 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v2 + 1)
    {
      v4 = sub_1D698C8A0((v24 > 1), v2 + 1, 1, v4, &qword_1EDF01EA0, &type metadata for FormatContentSlotItemAuxiliary.Resolved);
      v25 = *(v4 + 3) >> 1;
    }

    if (v2 < v25)
    {
      break;
    }

LABEL_25:
    *(v4 + 2) = v2;
    if (!v22)
    {
      goto LABEL_44;
    }
  }

  while (1)
  {

    result = sub_1D5CDE22C(v22, v21);
    v26 = &v4[16 * v2 + 32];
    *v26 = v22;
    v26[1] = v21;
    ++v2;
    if (!v19)
    {
      break;
    }

    v27 = v33;
LABEL_36:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = (*(v32 + 56) + ((v27 << 10) | (16 * v29)));
    v22 = *v30;
    v21 = v30[1];

    if (v22)
    {
      v31 = v2 < v25;
    }

    else
    {
      v31 = 0;
    }

    if (!v31)
    {
      goto LABEL_25;
    }
  }

  v28 = v33;
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      v21 = 0;
      *(v4 + 2) = v2;
      goto LABEL_44;
    }

    v19 = v12[v27];
    ++v28;
    if (v19)
    {
      v33 = v27;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed20FormatMenuItemActionO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

char **sub_1D5CFE5E0(char **result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 56); ; i += 4)
    {
      v29 = v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *(i - 2);
      v41 = *(i - 3);
      v11 = a2[5];
      v40[4] = a2[4];
      v40[5] = v11;
      v40[6] = a2[6];
      v12 = a2[1];
      v40[0] = *a2;
      v40[1] = v12;
      v13 = a2[3];
      v40[2] = a2[2];
      v40[3] = v13;

      swift_retain_n();

      sub_1D5CF6528(v6, v40, v14, v15, v16, v17, v18, v19);
      if (v3)
      {
        break;
      }

      v20 = *(v10 + 32);
      v37 = *(v10 + 16);
      v38 = v20;
      v39[0] = *(v10 + 48);
      *(v39 + 15) = *(v10 + 63);
      v21 = a2[5];
      v34 = a2[4];
      v35 = v21;
      v36 = a2[6];
      v22 = a2[1];
      v30 = *a2;
      v31 = v22;
      v23 = a2[3];
      v32 = a2[2];
      v33 = v23;
      sub_1D5CF6D20(v6, &v30, v24, v25);
      sub_1D5CF93C8(v6, a2, v9, sub_1D5CFEE30);
      *&v37 = v8;
      v26 = a2[5];
      v34 = a2[4];
      v35 = v26;
      v36 = a2[6];
      v27 = a2[1];
      v30 = *a2;
      v31 = v27;
      v28 = a2[3];
      v32 = a2[2];
      v33 = v28;

      sub_1D5CFEE30(v6, &v30);

      v4 = v29 - 1;
      if (v29 == 1)
      {
        return result;
      }
    }
  }

  return result;
}

void *sub_1D5CFE818(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed15FormatUnderlineVSg(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 8;
  if (v1 >= 8)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5CFE9B8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D698C8A0(result, v10, 1, v3, &qword_1EDF01EA0, &type metadata for FormatContentSlotItemAuxiliary.Resolved);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char **sub_1D5CFEABC(char **result, __int128 *a2)
{
  v4 = a2[5];
  v13[4] = a2[4];
  v13[5] = v4;
  v13[6] = a2[6];
  v5 = a2[1];
  v13[0] = *a2;
  v13[1] = v5;
  v6 = a2[3];
  v13[2] = a2[2];
  v13[3] = v6;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 0xELL:
    case 0xFLL:
    case 0x16:
      v11 = result;

      sub_1D5CFCC3C(v11, a2);

      break;
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
      v7 = result;

      sub_1D5CFCC3C(v7, a2);

      goto LABEL_4;
    case 0x17:
      v9 = *((*v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v10 = result;

      sub_1D5D0A0A0(v10, v13, v9);
      if (v3)
      {
      }

      else
      {

LABEL_4:
      }

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CFEC98(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CFED88(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1D5CFEE30(char **result, __int128 *a2)
{
  v5 = a2[5];
  v17[4] = a2[4];
  v17[5] = v5;
  v17[6] = a2[6];
  v6 = a2[1];
  v17[0] = *a2;
  v17[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 60;
  v17[2] = a2[2];
  v17[3] = v7;
  if (v9 <= 4)
  {
    if (v9 < 3)
    {
      return;
    }

    v11 = v8 & 0xFFFFFFFFFFFFFFFLL;
    if (v9 != 3)
    {

      sub_1D5D07D58(result, a2);
LABEL_20:

      return;
    }

    v12 = *(v11 + 24);
    swift_retain_n();

    sub_1D5CFEE30(result, a2);
    if (!v3)
    {

      sub_1D5D04C40(result, v17, v12);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v9 <= 6)
  {
    if (v9 == 5)
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      sub_1D5D04744(result, v17, v15);
      if (v3)
      {
      }

      else
      {

        sub_1D5CFEE30(result, v17);
      }
    }
  }

  else
  {
    if (v9 == 7)
    {
      sub_1D62B3108(result, a2);
      return;
    }

    v14 = v8 & 0xFFFFFFFFFFFFFFFLL;
    if (v9 != 8)
    {
      v16 = *(v14 + 24);
      swift_retain_n();

      sub_1D5CFEE30(result, a2);
      if (!v3)
      {

        sub_1D6E73FA0(result, v17, v16);
        goto LABEL_19;
      }

LABEL_17:

      return;
    }

    if (*(v14 + 16) >> 62 == 1)
    {
      sub_1D62A8874(result, a2);
    }
  }
}

uint64_t sub_1D5CFF0A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D5CFF14C(a1, v5, v4);
}

uint64_t sub_1D5CFF14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D5CFF664, 0, 0);
}

uint64_t sub_1D5CFF16C(char **a1, __int128 *a2)
{
  v6 = a2[5];
  v58[4] = a2[4];
  v58[5] = v6;
  v58[6] = a2[6];
  v7 = a2[1];
  v58[0] = *a2;
  v58[1] = v7;
  v8 = a2[3];
  v58[2] = a2[2];
  v58[3] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 152);
  v11 = *(v2 + 176);
  v59[0] = *(v2 + 160);
  v59[1] = v11;
  v12 = *(v2 + 192);
  v13 = *(v2 + 208);
  v14 = *(v2 + 224);
  v63 = *(v2 + 240);
  v61 = v13;
  v62 = v14;
  v60 = v12;
  v16 = *(v2 + 480);
  v15 = *(v2 + 488);
  v17 = *(v2 + 504);
  v64 = *(v2 + 496);
  v32 = v17;
  if ((~v9 & 0xF000000000000007) != 0)
  {
    *&v50 = v9;

    sub_1D5D0350C(a1, a2);
    if (v3)
    {
    }
  }

  v19 = *(v2 + 104);
  v54 = *(v2 + 88);
  v55 = v19;
  v20 = *(v2 + 136);
  v56 = *(v2 + 120);
  v57 = v20;
  v21 = *(v2 + 40);
  v50 = *(v2 + 24);
  v51 = v21;
  v22 = *(v2 + 72);
  v52 = *(v2 + 56);
  v53 = v22;
  result = sub_1D5CFD0B8(&v50);
  if (result != 1)
  {
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v23 = *(v2 + 24);
    v24 = *(v2 + 40);
    v25 = *(v2 + 72);
    v49[2] = *(v2 + 56);
    v49[3] = v25;
    v49[0] = v23;
    v49[1] = v24;
    v26 = *(v2 + 88);
    v27 = *(v2 + 104);
    v28 = *(v2 + 136);
    v49[6] = *(v2 + 120);
    v49[7] = v28;
    v49[4] = v26;
    v49[5] = v27;
    sub_1D5CFD190(v49, &v33);
    sub_1D5CFD210(a1, a2);
    if (v3)
    {
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      return sub_1D5CFD368(&v33);
    }

    v37 = v45;
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    result = sub_1D5CFD368(&v33);
  }

  if (!v10 || (result = sub_1D5D0AE64(a1, v58, v10), !v3))
  {
    if (v63 != 254)
    {
      *&v49[0] = v60;
      swift_retain_n();
      sub_1D5CF9A24(a1, v58);

      if (v3)
      {
        return sub_1D5D0ABCC(v59, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D5D0ABCC(v59, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v16 != 9)
    {
      if ((~v15 & 0xF000000000000007) != 0)
      {
        *&v49[0] = v15;
        sub_1D62B5D18(v16, v15);
        sub_1D5CFCFAC(v15);
        sub_1D5CF9A24(a1, v58);

        result = sub_1D62B5D00(v16, v15);
        if (v3)
        {
          return result;
        }
      }

      else
      {
        result = sub_1D62B5D00(v16, v15);
      }
    }

    v29 = v64;
    if (v64 != 9)
    {
      v30 = v32;
      if ((~v32 & 0xF000000000000007) != 0)
      {
        *&v49[0] = v32;
        sub_1D62B5D18(v64, v32);
        sub_1D5CFCFAC(v32);
        sub_1D5CF9A24(a1, v58);

        v31 = v29;
        v30 = v32;
      }

      else
      {
        v31 = v64;
      }

      return sub_1D62B5D00(v31, v30);
    }
  }

  return result;
}

uint64_t sub_1D5CFF520(uint64_t a1)
{
  v4 = *(type metadata accessor for FormatContent.Resolved(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5CFF604(a1, v6, v1 + v5);
}

uint64_t sub_1D5CFF604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D5CFF7C0, 0, 0);
}

uint64_t sub_1D5CFF664()
{
  v1 = v0[2];
  v2 = v1[52];
  v3 = v1[53];
  __swift_project_boxed_opaque_existential_1(v1 + 49, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D5D03B6C;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1D5CFF7C0()
{
  v1 = v0[2];
  v2 = v1[57];
  v3 = v1[58];
  __swift_project_boxed_opaque_existential_1(v1 + 54, v2);
  v4 = FormatContent.Resolved.webEmbeds.getter();
  v0[4] = v4;
  v7 = (*(v3 + 32) + **(v3 + 32));
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1D5D040D0;

  return v7(v4, v2, v3);
}

char **sub_1D5CFF904(char **result, __int128 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  v5 = (a3 + 56);
  v407 = result;
  while (1)
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 2);
    v8 = *(v5 - 8);
    v9 = *v5;
    v10 = *v5 >> 62;
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_5;
      }

      v11 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *(v11 + 24);
      v426 = *(v5 - 3);
      if (v12 >> 62)
      {
        if (v12 >> 62 == 1)
        {
          v14 = *(v11 + 24);
          sub_1D5D03180(v6, v7, v8);
          swift_retain_n();

LABEL_226:
          v336 = v456;
          sub_1D6E6B7BC(v4, a2, v14);
          v456 = v336;
          if (v336)
          {

            sub_1D5D07BA8(v426, v7, v8);
          }

          sub_1D5D07BA8(v426, v7, v8);

          goto LABEL_5;
        }

        v43 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v425 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v408 = *(v11 + 24);
        if (!(v43 >> 62))
        {
          v88 = *(v43 + 80);
          v439 = *(v43 + 64);
          v440 = v88;
          v441 = *(v43 + 96);
          *&v442[0] = *(v43 + 112);
          v89 = *(v43 + 32);
          v436 = *(v43 + 16);
          v437 = v89;
          v90 = *(v43 + 64);
          v438 = *(v43 + 48);
          v91 = *(v43 + 80);
          v92 = *(v43 + 96);
          v431 = v90;
          v432 = v91;
          v433 = v92;
          *&v434 = *(v43 + 112);
          v93 = *(v43 + 32);
          v428 = *(v43 + 16);
          v429 = v93;
          v430 = *(v43 + 48);
          v94 = a2[5];
          v447 = a2[4];
          v448 = v94;
          v449[0] = a2[6];
          v95 = a2[1];
          v443 = *a2;
          v444 = v95;
          v96 = a2[3];
          v445 = a2[2];
          v446 = v96;
          sub_1D5D03180(v6, v7, v8);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          sub_1D5D0322C(&v436, v450);
          v97 = v456;
          sub_1D5D07EBC(v4, &v443);
          v456 = v97;
          if (v97)
          {

            sub_1D5D07BA8(v6, v7, v8);

            sub_1D5D07BBC(&v436);
          }

          sub_1D5D07BBC(&v436);

          v4 = v407;
          v44 = v425;
          goto LABEL_140;
        }

        if (v43 >> 62 == 1)
        {
          sub_1D5D03180(v6, v7, v8);
          swift_retain_n();
          swift_retain_n();

          v44 = v425;

LABEL_140:
          v221 = v456;
          sub_1D6E6B7BC(v4, a2, v44);
          v456 = v221;
          if (v221)
          {

            sub_1D5D07BA8(v426, v7, v8);
            goto LABEL_264;
          }

          goto LABEL_225;
        }

        v98 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v99 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (!(v98 >> 62))
        {
          v131 = *(v98 + 80);
          v439 = *(v98 + 64);
          v440 = v131;
          v441 = *(v98 + 96);
          *&v442[0] = *(v98 + 112);
          v132 = *(v98 + 32);
          v436 = *(v98 + 16);
          v437 = v132;
          v133 = *(v98 + 64);
          v438 = *(v98 + 48);
          v134 = *(v98 + 80);
          v135 = *(v98 + 96);
          v431 = v133;
          v432 = v134;
          v433 = v135;
          *&v434 = *(v98 + 112);
          v136 = *(v98 + 32);
          v428 = *(v98 + 16);
          v429 = v136;
          v430 = *(v98 + 48);
          v137 = a2[5];
          v447 = a2[4];
          v448 = v137;
          v449[0] = a2[6];
          v138 = a2[1];
          v443 = *a2;
          v444 = v138;
          v139 = a2[3];
          v445 = a2[2];
          v446 = v139;
          sub_1D5D03180(v6, v7, v8);
          swift_retain_n();
          v376 = v99;

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          sub_1D5D0322C(&v436, v450);
          v140 = v456;
          sub_1D5D07EBC(v4, &v443);
          v456 = v140;
          if (v140)
          {

            sub_1D5D07BA8(v6, v7, v8);

            sub_1D5D07BBC(&v436);
          }

          sub_1D5D07BBC(&v436);

LABEL_137:
          v44 = v425;
          v99 = v376;
          goto LABEL_138;
        }

        if (v98 >> 62 == 1)
        {
          sub_1D5D03180(v6, v7, v8);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();
          v44 = v425;

LABEL_138:
          v220 = v456;
          sub_1D6E6B7BC(v4, a2, v99);
          v456 = v220;
          if (v220)
          {

            sub_1D5D07BA8(v426, v7, v8);

            goto LABEL_264;
          }

          goto LABEL_140;
        }

        v141 = *((v98 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v376 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v363 = *((v98 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v141 >> 62)
        {
          if (v141 >> 62 == 1)
          {
            sub_1D5D03180(v6, v7, v8);
            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v142 = v363;

LABEL_135:
            v219 = v456;
            sub_1D6E6B7BC(v4, a2, v142);
            v456 = v219;
            if (v219)
            {

              sub_1D5D07BA8(v6, v7, v8);

              goto LABEL_263;
            }

            goto LABEL_137;
          }

          v213 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          *&v436 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v214 = a2[5];
          v447 = a2[4];
          v448 = v214;
          v449[0] = a2[6];
          v215 = a2[1];
          v443 = *a2;
          v444 = v215;
          v216 = a2[3];
          v445 = a2[2];
          v446 = v216;
          v418 = v8;
          sub_1D5D03180(v6, v7, v8);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          v217 = v456;
          sub_1D5D07D58(v4, &v443);
          v456 = v217;
          if (v217)
          {

            sub_1D5D07BA8(v6, v7, v8);
          }

          v218 = v456;
          sub_1D6E6B7BC(v4, a2, v213);
          v456 = v218;
          if (v218)
          {

            sub_1D5D07BA8(v6, v7, v8);

LABEL_263:

LABEL_264:
          }

LABEL_134:

          v8 = v418;
          v142 = v363;
          goto LABEL_135;
        }

        v203 = *(v141 + 80);
        v439 = *(v141 + 64);
        v440 = v203;
        v441 = *(v141 + 96);
        *&v442[0] = *(v141 + 112);
        v204 = *(v141 + 32);
        v436 = *(v141 + 16);
        v437 = v204;
        v205 = *(v141 + 64);
        v438 = *(v141 + 48);
        v206 = *(v141 + 80);
        v207 = *(v141 + 96);
        v431 = v205;
        v432 = v206;
        v433 = v207;
        *&v434 = *(v141 + 112);
        v208 = *(v141 + 32);
        v428 = *(v141 + 16);
        v429 = v208;
        v430 = *(v141 + 48);
        v209 = a2[5];
        v447 = a2[4];
        v448 = v209;
        v449[0] = a2[6];
        v210 = a2[1];
        v443 = *a2;
        v444 = v210;
        v211 = a2[3];
        v445 = a2[2];
        v446 = v211;
        v418 = v8;
        sub_1D5D03180(v6, v7, v8);
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v436, v450);
        v212 = v456;
        sub_1D5D07EBC(v4, &v443);
        v456 = v212;
        if (!v212)
        {
          sub_1D5D07BBC(&v436);
          goto LABEL_134;
        }

        sub_1D5D07BA8(v6, v7, v8);

        sub_1D5D07BBC(&v436);

LABEL_301:
      }

      v424 = *(v5 - 2);
      v38 = *(v12 + 16);
      v37 = *(v12 + 32);
      v39 = *(v12 + 64);
      v430 = *(v12 + 48);
      v431 = v39;
      v40 = *(v12 + 96);
      v432 = *(v12 + 80);
      v433 = v40;
      *&v434 = *(v12 + 112);
      v428 = v38;
      v429 = v37;
      v41 = v431;
      v42 = BYTE1(v431);
      v408 = v13;
      if (v42 > 0xFE)
      {
        goto LABEL_26;
      }

      if (BYTE1(v431) > 1u)
      {
        if (v42 != 2)
        {
          v66 = v424;
          v67 = v6;
LABEL_47:
          sub_1D5D03180(v67, v66, v8);
          swift_retain_n();
          goto LABEL_48;
        }

LABEL_26:
        sub_1D5D03180(v6, v424, v8);
        swift_retain_n();
LABEL_48:

        swift_retain_n();
        sub_1D5D0322C(&v428, &v443);
        goto LABEL_49;
      }

      v104 = *(&v430 + 1);
      if (v42)
      {
        goto LABEL_26;
      }

      v105 = v430;
      v106 = v430 >> 61;
      if ((v430 >> 61) <= 1)
      {
        v67 = v6;
        v66 = v424;
        goto LABEL_47;
      }

      v414 = v8;
      if (v106 == 2)
      {
        v231 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v398 = *(&v430 + 1);
        v381 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v391 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v372 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v365 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v358 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        v232 = v8;
        v112 = *v4;

        sub_1D5D03180(v6, v424, v232);
        swift_retain_n();

        swift_retain_n();
        sub_1D5D0322C(&v428, &v443);

        sub_1D5FB999C(v105, v398, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1D5D095A0(0, *(v112 + 2) + 1, 1, v112);
        }

        v234 = *(v112 + 2);
        v233 = *(v112 + 3);
        v4 = v407;
        if (v234 >= v233 >> 1)
        {
          v112 = sub_1D5D095A0((v233 > 1), v234 + 1, 1, v112);
        }

        *&v443 = v381;
        *(&v443 + 1) = v231;
        *&v444 = v391;
        *(&v444 + 1) = v372;
        *&v445 = v365;
        WORD4(v445) = v358;
        BYTE10(v445) = 0;
        sub_1D5FD8134(&v443);
        *(v112 + 2) = v234 + 1;
        v235 = &v112[128 * v234];
        v236 = v443;
        v237 = v444;
        v238 = v446;
        *(v235 + 4) = v445;
        *(v235 + 5) = v238;
        *(v235 + 2) = v236;
        *(v235 + 3) = v237;
        v239 = v447;
        v240 = v448;
        v241 = v449[0];
        *(v235 + 137) = *(v449 + 9);
        *(v235 + 7) = v240;
        *(v235 + 8) = v241;
        *(v235 + 6) = v239;
        v120 = v105;
        v121 = v398;
      }

      else
      {
        v404 = v430;
        if (v106 != 3)
        {
          v242 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v243 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v354 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          v356 = v243;
          v382 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v392 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v366 = *v4;
          sub_1D5FB999C(v430, *(&v430 + 1), v431);
          sub_1D5F58038(v392, v242, v243, v354);
          sub_1D5D03180(v6, v424, v414);
          swift_retain_n();

          swift_retain_n();
          sub_1D5D0322C(&v428, &v443);
          sub_1D5FB999C(v105, v104, v41);
          v244 = v366;
          sub_1D5F58038(v392, v242, v356, v354);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v244 = sub_1D5D095A0(0, *(v366 + 2) + 1, 1, v366);
          }

          v246 = *(v244 + 2);
          v245 = *(v244 + 3);
          v359 = v246 + 1;
          v367 = v246;
          if (v246 >= v245 >> 1)
          {
            v244 = sub_1D5D095A0((v245 > 1), v246 + 1, 1, v244);
          }

          sub_1D5F57FEC(v392, v242, v356, v354);
          *&v443 = v392;
          *(&v443 + 1) = v242;
          *&v444 = v356;
          *(&v444 + 1) = v354;
          *&v445 = 0;
          WORD4(v445) = 0;
          BYTE10(v445) = 1;
          sub_1D5FD8134(&v443);
          *(v244 + 2) = v359;
          v247 = &v244[128 * v367];
          v248 = v443;
          v249 = v444;
          v250 = v446;
          *(v247 + 4) = v445;
          *(v247 + 5) = v250;
          *(v247 + 2) = v248;
          *(v247 + 3) = v249;
          v251 = v447;
          v252 = v448;
          v253 = v449[0];
          *(v247 + 137) = *(v449 + 9);
          *(v247 + 7) = v252;
          *(v247 + 8) = v253;
          *(v247 + 6) = v251;
          *v4 = v244;
          *&v450[0] = v382;
          v254 = a2[5];
          v440 = a2[4];
          v441 = v254;
          v442[0] = a2[6];
          v255 = a2[1];
          v436 = *a2;
          v437 = v255;
          v256 = a2[3];
          v438 = a2[2];
          v439 = v256;

          v257 = v456;
          sub_1D5D0350C(v4, &v436);
          v456 = v257;
          if (v257)
          {
            sub_1D5FBACE0(v404, v104, v41);

            sub_1D5D07BA8(v6, v424, v414);

            sub_1D5FBACE0(v404, v104, v41);
            sub_1D5D07BBC(&v428);
          }

          sub_1D5FBACE0(v404, v104, v41);

          sub_1D5FBACE0(v404, v104, v41);
          goto LABEL_162;
        }

        v108 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v107 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v109 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v355 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v386 = *v4;
        sub_1D5F58038(v108, v107, v109, v355);
        sub_1D5D03180(v6, v424, v414);
        swift_retain_n();

        swift_retain_n();
        sub_1D5D0322C(&v428, &v443);
        sub_1D5FB999C(v404, v104, v41);
        sub_1D5F58038(v108, v107, v109, v355);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v386 = sub_1D5D095A0(0, *(v386 + 2) + 1, 1, v386);
        }

        v111 = *(v386 + 2);
        v110 = *(v386 + 3);
        v357 = v111 + 1;
        v362 = v111;
        if (v111 >= v110 >> 1)
        {
          v386 = sub_1D5D095A0((v110 > 1), v111 + 1, 1, v386);
        }

        sub_1D5F57FEC(v108, v107, v109, v355);
        *&v443 = v108;
        *(&v443 + 1) = v107;
        *&v444 = v109;
        *(&v444 + 1) = v355;
        *&v445 = 0;
        WORD4(v445) = 0;
        BYTE10(v445) = 1;
        sub_1D5FD8134(&v443);
        v112 = v386;
        *(v386 + 2) = v357;
        v113 = &v386[128 * v362];
        v114 = v443;
        v115 = v444;
        v116 = v446;
        *(v113 + 4) = v445;
        *(v113 + 5) = v116;
        *(v113 + 2) = v114;
        *(v113 + 3) = v115;
        v117 = v447;
        v118 = v448;
        v119 = v449[0];
        *(v113 + 137) = *(v449 + 9);
        *(v113 + 7) = v118;
        *(v113 + 8) = v119;
        *(v113 + 6) = v117;
        v120 = v404;
        v121 = v104;
      }

      sub_1D5FBACE0(v120, v121, v41);
      *v4 = v112;
LABEL_162:
      v8 = v414;
LABEL_49:
      v68 = *(&v431 + 1);
      if ((~*(&v431 + 1) & 0xF000000000000007) != 0)
      {
        v69 = v432;
        *&v436 = *(&v431 + 1);
        v70 = a2[5];
        v447 = a2[4];
        v448 = v70;
        v449[0] = a2[6];
        v71 = a2[1];
        v443 = *a2;
        v444 = v71;
        v72 = a2[3];
        v445 = a2[2];
        v446 = v72;
        sub_1D5FB99B0(*(&v431 + 1), v432);

        v73 = v456;
        sub_1D5CF9A24(v4, &v443);
        v456 = v73;
        if (v73 || (, *&v436 = v69, v74 = a2[5], v447 = a2[4], v448 = v74, v449[0] = a2[6], v75 = a2[1], v443 = *a2, v444 = v75, v76 = a2[3], v445 = a2[2], v446 = v76, , v77 = v456, sub_1D5CF9A24(v4, &v443), (v456 = v77) != 0))
        {

          sub_1D5D07BA8(v426, v424, v8);

          sub_1D5FBACF4(v68, v69);
LABEL_253:
          sub_1D5D07BBC(&v428);
        }

        sub_1D5FBACF4(v68, v69);
      }

      v78 = v434;
      if ((~v434 & 0xF000000000000007) == 0)
      {
        goto LABEL_224;
      }

      v79 = v434 >> 62;
      if ((v434 >> 62) <= 1)
      {
        v80 = v8;
        if (v79)
        {
          *&v436 = *((v434 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v127 = a2[5];
          v447 = a2[4];
          v448 = v127;
          v449[0] = a2[6];
          v128 = a2[1];
          v443 = *a2;
          v444 = v128;
          v129 = a2[3];
          v445 = a2[2];
          v446 = v129;
          sub_1D5F33D5C(v434);
          v82 = v456;
          sub_1D5CF9A24(v4, &v443);
        }

        else
        {
          v81 = *(v434 + 16);
          sub_1D5F33D5C(v434);
          v82 = v456;
          sub_1D5CF8C68(v4, a2, v81);
        }

        v456 = v82;
        if (v82)
        {

          v342 = v426;
          v343 = v424;
          v344 = v80;
          goto LABEL_251;
        }

        sub_1D5FBA158(v78);
        sub_1D5D07BBC(&v428);

        v8 = v80;
        v7 = v424;
        goto LABEL_225;
      }

      if (v79 != 2)
      {
        if (v434 == 0xC000000000000000)
        {
          v130 = 0xC000000000000000;
        }

        else
        {
          v130 = 0xC000000000000008;
        }

LABEL_223:
        sub_1D5FBA158(v130);
LABEL_224:
        sub_1D5D07BBC(&v428);

        v7 = v424;
LABEL_225:
        v14 = v408;
        goto LABEL_226;
      }

      v100 = *((v434 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v101 = v100 >> 62;
      v403 = *((v434 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if ((v100 >> 62) <= 1)
      {
        v413 = v8;
        if (!v101)
        {
          v102 = *(v100 + 16);
          sub_1D5FB99FC(v434);
          sub_1D5F33D5C(v100);

          v103 = v456;
          sub_1D5CF8C68(v4, a2, v102);
          v456 = v103;
          if (v103)
          {

            sub_1D5D07BA8(v426, v424, v413);

            v346 = v100;
LABEL_269:
            sub_1D5F33D8C(v346);
LABEL_252:
            sub_1D5FBA158(v78);
            goto LABEL_253;
          }

          sub_1D5F33D8C(v100);
          v8 = v413;
          goto LABEL_221;
        }

        *&v436 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v222 = a2[5];
        v447 = a2[4];
        v448 = v222;
        v449[0] = a2[6];
        v223 = a2[1];
        v443 = *a2;
        v444 = v223;
        v224 = a2[3];
        v445 = a2[2];
        v446 = v224;
        sub_1D5FB99FC(v434);
        sub_1D5F33D5C(v100);

        v225 = v456;
        sub_1D5CF9A24(v4, &v443);
        v456 = v225;
        if (!v225)
        {

          sub_1D5F33D8C(v100);
LABEL_221:
          v335 = v456;
          sub_1D6E6EB3C(v4, a2, v403);
          v456 = v335;
          if (v335)
          {

            v342 = v426;
            v343 = v424;
            v344 = v8;
LABEL_251:
            sub_1D5D07BA8(v342, v343, v344);

            goto LABEL_252;
          }

          v130 = v78;
          goto LABEL_223;
        }

        sub_1D5D07BA8(v426, v424, v8);

        goto LABEL_286;
      }

      if (v101 != 2)
      {
        sub_1D5F33D5C(v434);
        goto LABEL_221;
      }

      v394 = *((v434 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v148 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v149 = *((v100 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v150 = v148 >> 62;
      v388 = v148;
      if ((v148 >> 62) <= 1)
      {
        v377 = v149;
        v416 = v8;
        if (v150)
        {
          *&v436 = *((v148 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v295 = a2[5];
          v447 = a2[4];
          v448 = v295;
          v449[0] = a2[6];
          v296 = a2[1];
          v443 = *a2;
          v444 = v296;
          v297 = a2[3];
          v445 = a2[2];
          v446 = v297;
          v298 = v148;
          sub_1D5FB99FC(v434);
          v100 = v394;
          sub_1D5F33D5C(v394);
          sub_1D5F33D5C(v298);

          sub_1D5F33D5C(v298);

          v299 = v456;
          sub_1D5CF9A24(v4, &v443);
          v456 = v299;
          if (!v299)
          {

            sub_1D5F33D8C(v298);
            goto LABEL_218;
          }

          sub_1D5F33D8C(v298);

          sub_1D5D07BA8(v426, v424, v8);

          v347 = v298;
        }

        else
        {
          v151 = *(v148 + 16);
          v152 = v148;
          sub_1D5FB99FC(v434);
          v100 = v394;
          sub_1D5F33D5C(v394);
          sub_1D5F33D5C(v152);

          sub_1D5F33D5C(v152);

          v153 = v456;
          sub_1D5CF8C68(v4, a2, v151);
          v456 = v153;
          if (!v153)
          {

            sub_1D5F33D8C(v152);
            v8 = v416;
LABEL_218:
            v149 = v377;
LABEL_219:
            v334 = v456;
            sub_1D6E6EB3C(v4, a2, v149);
            v456 = v334;
            if (v334)
            {
              sub_1D5F33D8C(v388);

              sub_1D5D07BA8(v426, v424, v8);

              v346 = v394;
              goto LABEL_269;
            }

            sub_1D5F33D8C(v388);

            sub_1D5F33D8C(v394);
            goto LABEL_221;
          }

          sub_1D5F33D8C(v152);

          sub_1D5D07BA8(v426, v424, v416);

          v347 = v152;
        }

        sub_1D5F33D8C(v347);
LABEL_286:
        v348 = v100;
LABEL_300:
        sub_1D5F33D8C(v348);
        sub_1D5FBA158(v78);
        sub_1D5D07BBC(&v428);
        goto LABEL_301;
      }

      if (v150 != 2)
      {
        sub_1D5FB99FC(v434);
        sub_1D5F33D5C(v394);
        if (v388 == 0xC000000000000000)
        {
          v300 = 0xC000000000000000;
        }

        else
        {
          v300 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v300);

        goto LABEL_219;
      }

      v258 = *((v148 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v259 = v258 >> 62;
      v373 = *((v148 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v377 = v149;
      if ((v258 >> 62) <= 1)
      {
        if (v259)
        {
          *&v436 = *((v258 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v322 = a2[5];
          v447 = a2[4];
          v448 = v322;
          v449[0] = a2[6];
          v323 = a2[1];
          v443 = *a2;
          v444 = v323;
          v324 = a2[3];
          v445 = a2[2];
          v446 = v324;
          sub_1D5FB99FC(v434);
          sub_1D5F33D5C(v394);
          sub_1D5F33D5C(v388);

          sub_1D5F33D5C(v388);
          sub_1D5F33D5C(v258);

          sub_1D5F33D5C(v258);

          v325 = v456;
          sub_1D5CF9A24(v4, &v443);
          v456 = v325;
          if (v325)
          {
            sub_1D5F33D8C(v258);

            v349 = v388;
            sub_1D5F33D8C(v388);

            sub_1D5D07BA8(v426, v424, v8);

            goto LABEL_297;
          }

          sub_1D5F33D8C(v258);
        }

        else
        {
          v260 = *(v258 + 16);
          sub_1D5FB99FC(v434);
          sub_1D5F33D5C(v394);
          sub_1D5F33D5C(v388);

          sub_1D5F33D5C(v388);
          sub_1D5F33D5C(v258);

          sub_1D5F33D5C(v258);

          v261 = v456;
          sub_1D5CF8C68(v4, a2, v260);
          v456 = v261;
          if (v261)
          {
            sub_1D5F33D8C(v258);

            v349 = v388;
            sub_1D5F33D8C(v388);

            sub_1D5D07BA8(v426, v424, v8);

            goto LABEL_297;
          }

          sub_1D5F33D8C(v258);
        }

        goto LABEL_206;
      }

      if (v259 != 2)
      {
        sub_1D5FB99FC(v434);
        sub_1D5F33D5C(v394);
        sub_1D5F33D5C(v388);

        sub_1D5F33D5C(v388);
        if (v258 == 0xC000000000000000)
        {
          v327 = 0xC000000000000000;
        }

        else
        {
          v327 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v327);
        v326 = v373;

        goto LABEL_216;
      }

      v307 = v258 & 0x3FFFFFFFFFFFFFFFLL;
      v308 = *((v148 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v309 = *((v258 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v310 = *(v307 + 24);
      *&v436 = v309;
      v311 = a2[5];
      v447 = a2[4];
      v448 = v311;
      v449[0] = a2[6];
      v312 = a2[1];
      v443 = *a2;
      v444 = v312;
      v313 = a2[3];
      v445 = a2[2];
      v446 = v313;
      sub_1D5FB99FC(v434);
      sub_1D5F33D5C(v394);
      sub_1D5F33D5C(v388);

      sub_1D5F33D5C(v388);
      sub_1D5F33D5C(v308);

      sub_1D5F33D5C(v308);
      sub_1D5F33D5C(v309);

      sub_1D5F33D5C(v309);
      v314 = v456;
      sub_1D62B2DE8(v4, &v443);
      v456 = v314;
      if (v314)
      {
        sub_1D5F33D8C(v309);

        v258 = v308;
        sub_1D5F33D8C(v308);

        v349 = v388;
        sub_1D5F33D8C(v388);

        sub_1D5D07BA8(v426, v424, v8);

        sub_1D5F33D8C(v436);
      }

      else
      {
        sub_1D5F33D8C(v436);
        v315 = v456;
        sub_1D6E6EB3C(v4, a2, v310);
        v456 = v315;
        if (!v315)
        {
          sub_1D5F33D8C(v309);

          v258 = v308;
          sub_1D5F33D8C(v308);
LABEL_206:
          v326 = v373;
LABEL_216:
          v333 = v456;
          sub_1D6E6EB3C(v4, a2, v326);
          v456 = v333;
          if (v333)
          {
            sub_1D5F33D8C(v258);

            v349 = v388;
            sub_1D5F33D8C(v388);

            sub_1D5D07BA8(v426, v424, v8);

            goto LABEL_299;
          }

          sub_1D5F33D8C(v258);

          sub_1D5F33D8C(v388);
          goto LABEL_218;
        }

        sub_1D5F33D8C(v309);

        v258 = v308;
        sub_1D5F33D8C(v308);

        v349 = v388;
        sub_1D5F33D8C(v388);

        sub_1D5D07BA8(v426, v424, v8);
LABEL_297:
      }

      sub_1D5F33D8C(v258);
LABEL_299:
      sub_1D5F33D8C(v349);
      v348 = v394;
      goto LABEL_300;
    }

    v423 = *(v5 - 2);
    v427 = *(v5 - 3);
    v16 = *(v9 + 16);
    v15 = *(v9 + 32);
    v17 = *(v9 + 64);
    v451 = *(v9 + 48);
    v452 = v17;
    v18 = *(v9 + 96);
    v453 = *(v9 + 80);
    v454 = v18;
    v455 = *(v9 + 112);
    v450[0] = v16;
    v450[1] = v15;
    v19 = v452;
    v20 = BYTE1(v452);
    if (v20 > 0xFE)
    {
      goto LABEL_12;
    }

    if (BYTE1(v452) > 1u)
    {
      if (v20 != 2)
      {
        v21 = v423;
        v22 = v6;
        goto LABEL_16;
      }

LABEL_12:
      v21 = v423;
      sub_1D5D03180(v6, v423, v8);
LABEL_17:
      swift_retain_n();
      sub_1D5D0322C(v450, &v443);
      goto LABEL_18;
    }

    if (v20)
    {
      goto LABEL_12;
    }

    v421 = *(&v451 + 1);
    v51 = v451;
    v52 = v451 >> 61;
    if ((v451 >> 61) <= 1)
    {
      v22 = v6;
      v21 = v423;
LABEL_16:
      sub_1D5D03180(v22, v21, v8);
      goto LABEL_17;
    }

    v412 = v8;
    v409 = v451;
    if (v52 == 2)
    {
      v154 = v4;
      v155 = v6;
      v157 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v156 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v389 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v395 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v378 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v371 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v158 = v8;
      v159 = *v154;

      sub_1D5D03180(v155, v423, v158);
      swift_retain_n();
      sub_1D5D0322C(v450, &v443);

      sub_1D5FB999C(v51, v421, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_1D5D095A0(0, *(v159 + 2) + 1, 1, v159);
      }

      v161 = *(v159 + 2);
      v160 = *(v159 + 3);
      if (v161 >= v160 >> 1)
      {
        v159 = sub_1D5D095A0((v160 > 1), v161 + 1, 1, v159);
      }

      *&v443 = v395;
      *(&v443 + 1) = v157;
      *&v444 = v156;
      *(&v444 + 1) = v389;
      *&v445 = v378;
      WORD4(v445) = v371;
      BYTE10(v445) = 0;
      sub_1D5FD8134(&v443);
      *(v159 + 2) = v161 + 1;
      v162 = &v159[128 * v161];
      v163 = v443;
      v164 = v444;
      v165 = v446;
      *(v162 + 4) = v445;
      *(v162 + 5) = v165;
      *(v162 + 2) = v163;
      *(v162 + 3) = v164;
      v166 = v447;
      v167 = v448;
      v168 = v449[0];
      *(v162 + 137) = *(v449 + 9);
      *(v162 + 7) = v167;
      *(v162 + 8) = v168;
      *(v162 + 6) = v166;
      sub_1D5FBACE0(v409, v421, v19);
      v4 = v407;
      *v407 = v159;
      goto LABEL_172;
    }

    if (v52 == 3)
    {
      v54 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v361 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v370 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v401 = *v4;
      sub_1D5F58038(v54, v53, v370, v361);
      sub_1D5D03180(v6, v423, v412);
      swift_retain_n();
      sub_1D5D0322C(v450, &v443);
      sub_1D5FB999C(v51, v421, v19);
      v385 = v53;
      v55 = v53;
      v56 = v401;
      sub_1D5F58038(v54, v55, v370, v361);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1D5D095A0(0, *(v401 + 2) + 1, 1, v401);
      }

      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v402 = sub_1D5D095A0((v57 > 1), v58 + 1, 1, v56);
      }

      else
      {
        v402 = v56;
      }

      sub_1D5F57FEC(v54, v385, v370, v361);
      *&v443 = v54;
      *(&v443 + 1) = v385;
      *&v444 = v370;
      *(&v444 + 1) = v361;
      *&v445 = 0;
      WORD4(v445) = 0;
      BYTE10(v445) = 1;
      sub_1D5FD8134(&v443);
      *(v402 + 2) = v58 + 1;
      v59 = &v402[128 * v58];
      v60 = v443;
      v61 = v444;
      v62 = v446;
      *(v59 + 4) = v445;
      *(v59 + 5) = v62;
      *(v59 + 2) = v60;
      *(v59 + 3) = v61;
      v63 = v447;
      v64 = v448;
      v65 = v449[0];
      *(v59 + 137) = *(v449 + 9);
      *(v59 + 7) = v64;
      *(v59 + 8) = v65;
      *(v59 + 6) = v63;
      sub_1D5FBACE0(v409, v421, v19);
      v4 = v407;
      *v407 = v402;
      goto LABEL_172;
    }

    v170 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v169 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v171 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v364 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    v379 = *((v451 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v406 = *v4;
    sub_1D5FB999C(v451, *(&v451 + 1), v452);
    sub_1D5F58038(v170, v169, v171, v364);
    sub_1D5D03180(v427, v423, v412);
    swift_retain_n();
    sub_1D5D0322C(v450, &v443);
    sub_1D5FB999C(v51, v421, v19);
    v172 = v170;
    sub_1D5F58038(v170, v169, v171, v364);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v406 = sub_1D5D095A0(0, *(v406 + 2) + 1, 1, v406);
    }

    v174 = *(v406 + 2);
    v173 = *(v406 + 3);
    v390 = v174 + 1;
    if (v174 >= v173 >> 1)
    {
      v406 = sub_1D5D095A0((v173 > 1), v174 + 1, 1, v406);
    }

    sub_1D5F57FEC(v172, v169, v171, v364);
    *&v443 = v172;
    *(&v443 + 1) = v169;
    *&v444 = v171;
    *(&v444 + 1) = v364;
    *&v445 = 0;
    WORD4(v445) = 0;
    BYTE10(v445) = 1;
    sub_1D5FD8134(&v443);
    *(v406 + 2) = v390;
    v175 = &v406[128 * v174];
    v176 = v443;
    v177 = v444;
    v178 = v446;
    *(v175 + 4) = v445;
    *(v175 + 5) = v178;
    *(v175 + 2) = v176;
    *(v175 + 3) = v177;
    v179 = v447;
    v180 = v448;
    v181 = v449[0];
    *(v175 + 137) = *(v449 + 9);
    *(v175 + 7) = v180;
    *(v175 + 8) = v181;
    *(v175 + 6) = v179;
    v4 = v407;
    *v407 = v406;
    v182 = v379;
    v183 = v379 >> 61;
    if ((v379 >> 61) <= 1)
    {
      v8 = v412;
      sub_1D5FBACE0(v409, v421, v19);
      sub_1D5FBACE0(v409, v421, v19);
      v21 = v423;
      goto LABEL_18;
    }

    if (v183 == 2)
    {
      v262 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v399 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v263 = v174;
      v264 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v374 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v383 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v368 = *((v182 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v265 = v263 + 2;
      v266 = *(v406 + 3);
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      if (v265 > (v266 >> 1))
      {
        v406 = sub_1D5D095A0((v266 > 1), v265, 1, v406);
      }

      sub_1D5FBACE0(v409, v421, v19);

      *&v436 = v399;
      *(&v436 + 1) = v262;
      *&v437 = v264;
      *(&v437 + 1) = v383;
      *&v438 = v374;
      WORD4(v438) = v368;
      BYTE10(v438) = 0;
      sub_1D5FD8134(&v436);
      v190 = v406;
      *(v406 + 2) = v265;
      v267 = &v406[128 * v390];
      v268 = v436;
      v269 = v437;
      v270 = v439;
      *(v267 + 4) = v438;
      *(v267 + 5) = v270;
      *(v267 + 2) = v268;
      *(v267 + 3) = v269;
      v271 = v440;
      v272 = v441;
      v273 = v442[0];
      *(v267 + 137) = *(v442 + 9);
      *(v267 + 7) = v272;
      *(v267 + 8) = v273;
      *(v267 + 6) = v271;

      v198 = v409;
      goto LABEL_171;
    }

    v396 = v174;
    if (v183 == 3)
    {
      v184 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v185 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v186 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v187 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1D5F58038(v184, v185, v186, v187);

      sub_1D5F58038(v184, v185, v186, v187);
      v188 = *(v406 + 3);
      v189 = v396 + 2;
      v397 = v396 + 2;
      if (v397 > (v188 >> 1))
      {
        v406 = sub_1D5D095A0((v188 > 1), v189, 1, v406);
      }

      sub_1D5FBACE0(v409, v421, v19);
      sub_1D5F57FEC(v184, v185, v186, v187);
      *&v436 = v184;
      *(&v436 + 1) = v185;
      *&v437 = v186;
      *(&v437 + 1) = v187;
      *&v438 = 0;
      WORD4(v438) = 0;
      BYTE10(v438) = 1;
      sub_1D5FD8134(&v436);
      v190 = v406;
      *(v406 + 2) = v397;
      v191 = &v406[128 * v390];
      v192 = v436;
      v193 = v437;
      v194 = v439;
      *(v191 + 4) = v438;
      *(v191 + 5) = v194;
      *(v191 + 2) = v192;
      *(v191 + 3) = v193;
      v195 = v440;
      v196 = v441;
      v197 = v442[0];
      *(v191 + 137) = *(v442 + 9);
      *(v191 + 7) = v196;
      *(v191 + 8) = v197;
      *(v191 + 6) = v195;

      v198 = v409;
LABEL_171:
      sub_1D5FBACE0(v198, v421, v19);
      v4 = v407;
      *v407 = v190;
LABEL_172:
      v8 = v412;
      v21 = v423;
      goto LABEL_18;
    }

    v274 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v275 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v276 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v277 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    v384 = *((v379 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    sub_1D5F58038(v274, v275, v276, v277);

    sub_1D5F58038(v274, v275, v276, v277);
    sub_1D5F58038(v274, v275, v276, v277);
    v278 = *(v406 + 3);

    v400 = v396 + 2;
    if (v400 > (v278 >> 1))
    {
      v406 = sub_1D5D095A0((v278 > 1), v400, 1, v406);
    }

    sub_1D5F57FEC(v274, v275, v276, v277);
    *&v436 = v274;
    *(&v436 + 1) = v275;
    *&v437 = v276;
    *(&v437 + 1) = v277;
    *&v438 = 0;
    WORD4(v438) = 0;
    BYTE10(v438) = 1;
    sub_1D5FD8134(&v436);
    *(v406 + 2) = v400;
    v279 = &v406[128 * v390];
    v280 = v436;
    v281 = v437;
    v282 = v439;
    *(v279 + 4) = v438;
    *(v279 + 5) = v282;
    *(v279 + 2) = v280;
    *(v279 + 3) = v281;
    v283 = v440;
    v284 = v441;
    v285 = v442[0];
    *(v279 + 137) = *(v442 + 9);
    *(v279 + 7) = v284;
    *(v279 + 8) = v285;
    *(v279 + 6) = v283;
    *v407 = v406;
    v435 = v384;
    v286 = a2[5];
    v432 = a2[4];
    v433 = v286;
    v434 = a2[6];
    v287 = a2[1];
    v428 = *a2;
    v429 = v287;
    v288 = a2[3];
    v430 = a2[2];
    v431 = v288;

    v289 = v456;
    sub_1D5D0350C(v407, &v428);
    v456 = v289;
    if (v289)
    {
      sub_1D5F57FEC(v274, v275, v276, v277);

      sub_1D5FBACE0(v409, v421, v19);
      sub_1D5D07BA8(v427, v423, v412);

      sub_1D5FBACE0(v409, v421, v19);
      sub_1D5D07BBC(v450);
    }

    sub_1D5F57FEC(v274, v275, v276, v277);

    sub_1D5FBACE0(v409, v421, v19);

    sub_1D5FBACE0(v409, v421, v19);
    v8 = v412;
    v21 = v423;
    v4 = v407;
LABEL_18:
    v23 = *(&v452 + 1);
    if ((~*(&v452 + 1) & 0xF000000000000007) != 0)
    {
      v24 = v453;
      *&v436 = *(&v452 + 1);
      v25 = a2[5];
      v447 = a2[4];
      v448 = v25;
      v449[0] = a2[6];
      v26 = a2[1];
      v443 = *a2;
      v444 = v26;
      v27 = a2[3];
      v445 = a2[2];
      v446 = v27;
      sub_1D5FB99B0(*(&v452 + 1), v453);

      v28 = v456;
      sub_1D5CF9A24(v4, &v443);
      if (v28)
      {
        sub_1D5D07BA8(v427, v423, v8);

        sub_1D5FBACF4(v23, v24);
        sub_1D5D07BBC(v450);

        v456 = v28;
        return result;
      }

      *&v436 = v24;
      v29 = a2[5];
      v447 = a2[4];
      v448 = v29;
      v449[0] = a2[6];
      v30 = a2[1];
      v443 = *a2;
      v444 = v30;
      v31 = a2[3];
      v445 = a2[2];
      v446 = v31;

      sub_1D5CF9A24(v4, &v443);
      v456 = 0;

      sub_1D5FBACF4(v23, v24);
      v21 = v423;
      v4 = v407;
    }

    if ((~v455 & 0xF000000000000007) == 0)
    {
      sub_1D5D07BA8(v427, v21, v8);

LABEL_4:
      sub_1D5D07BBC(v450);

      goto LABEL_5;
    }

    v32 = v455 >> 62;
    if ((v455 >> 62) > 1)
    {
      break;
    }

    v33 = v8;
    if (v32)
    {
      *&v436 = *((v455 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v83 = a2[5];
      v447 = a2[4];
      v448 = v83;
      v449[0] = a2[6];
      v84 = a2[1];
      v443 = *a2;
      v444 = v84;
      v85 = a2[3];
      v445 = a2[2];
      v446 = v85;
      v35 = v455;
      sub_1D5F33D5C(v455);
      v36 = v456;
      sub_1D5CF9A24(v407, &v443);
    }

    else
    {
      v34 = *(v455 + 16);
      v35 = v455;
      sub_1D5F33D5C(v455);
      v36 = v456;
      sub_1D5CF8C68(v407, a2, v34);
    }

    v456 = v36;
    if (v36)
    {
      sub_1D5D07BA8(v427, v21, v33);

      v341 = v35;
LABEL_278:
      sub_1D5FBA158(v341);
      sub_1D5D07BBC(v450);
    }

    sub_1D5D07BA8(v427, v21, v33);

    sub_1D5FBA158(v35);
    sub_1D5D07BBC(v450);

    v4 = v407;
LABEL_5:
    v5 += 4;
    if (!--v3)
    {
      return result;
    }
  }

  if (v32 != 2)
  {
    v86 = v455;
    sub_1D5D07BA8(v427, v21, v8);

    if (v86 == 0xC000000000000000)
    {
      v87 = 0xC000000000000000;
    }

    else
    {
      v87 = 0xC000000000000008;
    }

    goto LABEL_239;
  }

  v45 = *((v455 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v46 = *((v455 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v47 = v45 >> 62;
  v420 = v455;
  if ((v45 >> 62) <= 1)
  {
    v411 = v8;
    if (!v47)
    {
      v48 = *(v45 + 16);
      v49 = *((v455 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FB99FC(v455);
      sub_1D5F33D5C(v49);

      v50 = v456;
      sub_1D5CF8C68(v4, a2, v48);
      v456 = v50;
      if (!v50)
      {

        sub_1D5F33D8C(v49);
        v8 = v411;
        goto LABEL_101;
      }

      sub_1D5D07BA8(v427, v21, v411);

LABEL_258:

      v345 = v49;
      goto LABEL_276;
    }

    *&v436 = *((v45 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v143 = a2[5];
    v447 = a2[4];
    v448 = v143;
    v449[0] = a2[6];
    v144 = a2[1];
    v443 = *a2;
    v444 = v144;
    v145 = a2[3];
    v445 = a2[2];
    v446 = v145;
    v49 = v45;
    sub_1D5FB99FC(v455);
    sub_1D5F33D5C(v49);

    v146 = v456;
    sub_1D5CF9A24(v4, &v443);
    v456 = v146;
    if (v146)
    {
      sub_1D5D07BA8(v427, v423, v8);

      goto LABEL_258;
    }

    sub_1D5F33D8C(v49);
    v21 = v423;
LABEL_101:
    v147 = v46;
LABEL_237:
    v340 = v456;
    sub_1D6E6EB3C(v4, a2, v147);
    v456 = v340;
    if (v340)
    {
      sub_1D5D07BA8(v427, v21, v8);

LABEL_277:
      v341 = v420;
      goto LABEL_278;
    }

    sub_1D5D07BA8(v427, v21, v8);

    v87 = v420;
LABEL_239:
    sub_1D5FBA158(v87);
    goto LABEL_4;
  }

  if (v47 != 2)
  {
    sub_1D5F33D5C(v455);
    goto LABEL_101;
  }

  v122 = *((v45 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v387 = *((v455 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v393 = *((v45 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v123 = v122 >> 62;
  v405 = v122;
  v410 = *((v455 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if ((v122 >> 62) <= 1)
  {
    v415 = v8;
    if (v123)
    {
      *&v436 = *((v122 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v226 = a2[5];
      v447 = a2[4];
      v448 = v226;
      v449[0] = a2[6];
      v227 = a2[1];
      v443 = *a2;
      v444 = v227;
      v228 = a2[3];
      v445 = a2[2];
      v446 = v228;
      sub_1D5FB99FC(v455);
      sub_1D5F33D5C(v410);
      sub_1D5F33D5C(v122);

      sub_1D5F33D5C(v122);

      v229 = v456;
      sub_1D5CF9A24(v4, &v443);
      v456 = v229;
      if (v229)
      {
        sub_1D5F33D8C(v122);

        sub_1D5D07BA8(v427, v423, v8);

        goto LABEL_273;
      }

      sub_1D5F33D8C(v122);
      v21 = v423;
      v126 = v393;
    }

    else
    {
      v124 = *(v122 + 16);
      sub_1D5FB99FC(v455);
      sub_1D5F33D5C(v410);
      sub_1D5F33D5C(v122);

      sub_1D5F33D5C(v122);

      v125 = v456;
      sub_1D5CF8C68(v4, a2, v124);
      v456 = v125;
      if (v125)
      {
        sub_1D5F33D8C(v122);

        sub_1D5D07BA8(v427, v21, v415);

        goto LABEL_273;
      }

      sub_1D5F33D8C(v122);
      v8 = v415;
      v126 = v393;
    }

    goto LABEL_235;
  }

  if (v123 != 2)
  {
    sub_1D5FB99FC(v455);
    sub_1D5F33D5C(v410);
    v126 = v393;
    if (v405 == 0xC000000000000000)
    {
      v230 = 0xC000000000000000;
    }

    else
    {
      v230 = 0xC000000000000008;
    }

    sub_1D5F33D5C(v230);

LABEL_235:
    v339 = v456;
    sub_1D6E6EB3C(v4, a2, v126);
    v456 = v339;
    if (v339)
    {
      sub_1D5F33D8C(v405);

      sub_1D5D07BA8(v427, v21, v8);

      goto LABEL_275;
    }

    sub_1D5F33D8C(v405);

    sub_1D5F33D8C(v410);
    v147 = v387;
    goto LABEL_237;
  }

  v199 = *((v122 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v380 = *((v122 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v200 = v380 >> 62;
  if ((v380 >> 62) <= 1)
  {
    v417 = v8;
    if (v200)
    {
      *&v436 = *((v380 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v301 = a2[5];
      v447 = a2[4];
      v448 = v301;
      v449[0] = a2[6];
      v302 = a2[1];
      v443 = *a2;
      v444 = v302;
      v303 = a2[3];
      v445 = a2[2];
      v446 = v303;
      sub_1D5FB99FC(v455);
      sub_1D5F33D5C(v410);
      sub_1D5F33D5C(v122);
      v126 = v393;

      sub_1D5F33D5C(v405);
      sub_1D5F33D5C(v380);

      sub_1D5F33D5C(v380);

      v304 = v456;
      sub_1D5CF9A24(v4, &v443);
      v456 = v304;
      if (!v304)
      {

        sub_1D5F33D8C(v380);
        v21 = v423;
        goto LABEL_233;
      }

      v350 = v380;
      sub_1D5F33D8C(v380);

      v122 = v405;
      sub_1D5F33D8C(v405);

      sub_1D5D07BA8(v427, v423, v8);
    }

    else
    {
      v201 = *(v380 + 16);
      sub_1D5FB99FC(v455);
      sub_1D5F33D5C(v410);
      sub_1D5F33D5C(v122);

      sub_1D5F33D5C(v122);
      sub_1D5F33D5C(v380);

      sub_1D5F33D5C(v380);

      v202 = v456;
      sub_1D5CF8C68(v4, a2, v201);
      v456 = v202;
      if (!v202)
      {

        sub_1D5F33D8C(v380);
        v8 = v417;
        v21 = v423;
        v126 = v393;
LABEL_233:
        v338 = v456;
        sub_1D6E6EB3C(v4, a2, v199);
        v456 = v338;
        if (v338)
        {
          sub_1D5F33D8C(v380);

          v122 = v405;
          sub_1D5F33D8C(v405);

          sub_1D5D07BA8(v427, v21, v8);
LABEL_273:

LABEL_274:
          sub_1D5F33D8C(v122);
LABEL_275:
          v345 = v410;
LABEL_276:
          sub_1D5F33D8C(v345);
          goto LABEL_277;
        }

        sub_1D5F33D8C(v380);

        sub_1D5F33D8C(v405);
        goto LABEL_235;
      }

      v350 = v380;
      sub_1D5F33D8C(v380);

      sub_1D5F33D8C(v122);

      sub_1D5D07BA8(v427, v423, v417);
    }

    v351 = v350;
LABEL_292:
    sub_1D5F33D8C(v351);
    goto LABEL_274;
  }

  v375 = *((v122 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  if (v200 != 2)
  {
    v305 = *((v455 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5FB99FC(v455);
    sub_1D5F33D5C(v305);
    sub_1D5F33D5C(v122);

    sub_1D5F33D5C(v122);
    if (v380 == 0xC000000000000000)
    {
      v306 = 0xC000000000000000;
    }

    else
    {
      v306 = 0xC000000000000008;
    }

    sub_1D5F33D5C(v306);
    v199 = v375;

    v126 = v393;
    goto LABEL_233;
  }

  v290 = *((v380 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v369 = *((v380 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v291 = v290 >> 62;
  if ((v290 >> 62) <= 1)
  {
    v419 = v8;
    if (!v291)
    {
      v292 = *(v290 + 16);
      sub_1D5FB99FC(v455);
      sub_1D5F33D5C(v410);
      sub_1D5F33D5C(v122);

      sub_1D5F33D5C(v122);
      sub_1D5F33D5C(v380);

      sub_1D5F33D5C(v380);
      sub_1D5F33D5C(v290);
      v293 = v369;

      sub_1D5F33D5C(v290);

      v294 = v456;
      sub_1D5CF8C68(v4, a2, v292);
      v456 = v294;
      if (!v294)
      {

        sub_1D5F33D8C(v290);
        v8 = v419;
        v21 = v423;
        goto LABEL_230;
      }

      sub_1D5F33D8C(v290);

      v352 = v380;
      sub_1D5F33D8C(v380);

      sub_1D5F33D8C(v122);

      sub_1D5D07BA8(v427, v423, v419);

LABEL_304:

LABEL_306:
      sub_1D5F33D8C(v290);
      v353 = v352;
      goto LABEL_308;
    }

    *&v436 = *((v290 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v328 = a2[5];
    v447 = a2[4];
    v448 = v328;
    v449[0] = a2[6];
    v329 = a2[1];
    v443 = *a2;
    v444 = v329;
    v330 = a2[3];
    v445 = a2[2];
    v446 = v330;
    sub_1D5FB99FC(v455);
    sub_1D5F33D5C(v410);
    sub_1D5F33D5C(v122);
    v126 = v393;

    sub_1D5F33D5C(v405);
    sub_1D5F33D5C(v380);

    sub_1D5F33D5C(v380);
    sub_1D5F33D5C(v290);
    v293 = v369;

    sub_1D5F33D5C(v290);

    v331 = v456;
    sub_1D5CF9A24(v4, &v443);
    v456 = v331;
    if (v331)
    {
      sub_1D5F33D8C(v290);

      v352 = v380;
      sub_1D5F33D8C(v380);

      v122 = v405;
      sub_1D5F33D8C(v405);

      sub_1D5D07BA8(v427, v423, v8);

      goto LABEL_304;
    }

    sub_1D5F33D8C(v290);
LABEL_211:
    v21 = v423;
LABEL_231:
    v337 = v456;
    sub_1D6E6EB3C(v4, a2, v293);
    v456 = v337;
    if (v337)
    {
      sub_1D5F33D8C(v290);

      sub_1D5F33D8C(v380);

      v122 = v405;
      sub_1D5F33D8C(v405);

      sub_1D5D07BA8(v427, v21, v8);

      v351 = v380;
      goto LABEL_292;
    }

    sub_1D5F33D8C(v290);

    sub_1D5F33D8C(v380);
    v199 = v375;
    goto LABEL_233;
  }

  if (v291 != 2)
  {
    sub_1D5FB99FC(v455);
    sub_1D5F33D5C(v410);
    sub_1D5F33D5C(v122);

    sub_1D5F33D5C(v122);
    sub_1D5F33D5C(v380);

    sub_1D5F33D5C(v380);
    v293 = v369;
    if (v290 == 0xC000000000000000)
    {
      v332 = 0xC000000000000000;
    }

    else
    {
      v332 = 0xC000000000000008;
    }

    sub_1D5F33D5C(v332);

LABEL_230:
    v126 = v393;
    goto LABEL_231;
  }

  v360 = *((v290 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  *&v436 = *((v290 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v316 = v436;
  v317 = a2[5];
  v447 = a2[4];
  v448 = v317;
  v449[0] = a2[6];
  v318 = a2[1];
  v443 = *a2;
  v444 = v318;
  v319 = a2[3];
  v445 = a2[2];
  v446 = v319;
  sub_1D5FB99FC(v455);
  sub_1D5F33D5C(v410);
  sub_1D5F33D5C(v122);
  v126 = v393;

  sub_1D5F33D5C(v405);
  sub_1D5F33D5C(v380);

  sub_1D5F33D5C(v380);
  sub_1D5F33D5C(v290);
  v293 = v369;

  sub_1D5F33D5C(v290);
  sub_1D5F33D5C(v316);

  sub_1D5F33D5C(v316);
  v320 = v456;
  sub_1D62B2DE8(v4, &v443);
  v456 = v320;
  if (v320)
  {
    sub_1D5F33D8C(v316);

    sub_1D5F33D8C(v290);

    v352 = v380;
    sub_1D5F33D8C(v380);

    v122 = v405;
    sub_1D5F33D8C(v405);

    sub_1D5D07BA8(v427, v423, v8);

    sub_1D5F33D8C(v436);
    goto LABEL_306;
  }

  sub_1D5F33D8C(v436);
  v321 = v456;
  sub_1D6E6EB3C(v4, a2, v360);
  v456 = v321;
  if (!v321)
  {
    sub_1D5F33D8C(v316);

    sub_1D5F33D8C(v290);
    goto LABEL_211;
  }

  sub_1D5F33D8C(v316);

  sub_1D5F33D8C(v290);

  sub_1D5F33D8C(v380);

  v122 = v405;
  sub_1D5F33D8C(v405);

  sub_1D5D07BA8(v427, v423, v8);

  sub_1D5F33D8C(v290);
  v353 = v380;
LABEL_308:
  sub_1D5F33D8C(v353);
  sub_1D5F33D8C(v122);
  sub_1D5F33D8C(v410);
  sub_1D5FBA158(v420);
  sub_1D5D07BBC(v450);
}

uint64_t sub_1D5D03180(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D5D03194(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D5D03420(a1);
}

uint64_t sub_1D5D03288(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5D03CB8, 0, 0);
}

uint64_t sub_1D5D03370(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64680;

  return sub_1D5D03288(a1);
}

uint64_t sub_1D5D03420(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for WebEmbedDataVisualization(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5D0368C, 0, 0);
}

void sub_1D5D0350C(char **result, __int128 *a2)
{
  v3 = a2[5];
  v24[4] = a2[4];
  v24[5] = v3;
  v24[6] = a2[6];
  v4 = a2[1];
  v24[0] = *a2;
  v24[1] = v4;
  v5 = a2[3];
  v6 = *v2;
  v7 = *v2 >> 61;
  v24[2] = a2[2];
  v24[3] = v5;
  if (v7 > 2)
  {
    v11 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if (v7 == 3)
    {
      v12 = a2[5];
      v21 = a2[4];
      v22 = v12;
      v23 = a2[6];
      v13 = a2[1];
      v17 = *a2;
      v18 = v13;
      v14 = a2[3];
      v19 = a2[2];
      v20 = v14;
      sub_1D607AC1C(result);
    }

    else
    {
      v15 = *(v11 + 32);
      v25[0] = *(v11 + 16);
      v25[1] = v15;
      v26 = *(v11 + 48);
      sub_1D62B50EC(v25, &v17, sub_1D62B5154);
      sub_1D62A7020(result, v24);
      sub_1D62B51D0(v25, sub_1D62B5154);
    }
  }

  else if (v7 >= 2)
  {
    v8 = a2[5];
    v21 = a2[4];
    v22 = v8;
    v23 = a2[6];
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    v10 = a2[3];
    v19 = a2[2];
    v20 = v10;
    sub_1D5FD7C7C(result);
  }
}

uint64_t sub_1D5D0368C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 64);
    v34 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v5 = v2 + v34;
    v6 = *(v4 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *(v1 + 72);
      sub_1D62D47DC(v5, v8, type metadata accessor for WebEmbedDataVisualization);
      sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      v10 = (v9 + 16);
      sub_1D62D47DC(v8, v9 + v34, type metadata accessor for WebEmbedDataVisualization);
      v11 = sub_1D6D28B24();
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v6;
        v21 = v11;
        v22 = sub_1D698C498(1, v12 + 1, 1, v9);
        if (!*(v21 + 16))
        {

          __break(1u);
          return MEMORY[0x1EEE44EE0](v31);
        }

        v9 = v22;
        v10 = v22 + 2;
        if ((v22[3] >> 1) - v22[2] < v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
        }

        swift_arrayInitWithCopy();

        v23 = *(v9 + 16);
        v19 = __OFADD__(v23, v12);
        v24 = v23 + v12;
        if (v19)
        {
          goto LABEL_38;
        }

        *v10 = v24;
      }

      else
      {
        v13 = v6;
      }

      v6 = v1;
      sub_1D5BF1B4C(*(v1 + 72), type metadata accessor for WebEmbedDataVisualization);
      v14 = *(v9 + 16);
      v15 = v7[2];
      v1 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v1 > v7[3] >> 1)
      {
        if (v15 <= v1)
        {
          v17 = v15 + v14;
        }

        else
        {
          v17 = v15;
        }

        v7 = sub_1D698C498(isUniquelyReferenced_nonNull_native, v17, 1, v7);
      }

      v1 = v6;
      v6 = v13;
      if (*v10)
      {
        if ((v7[3] >> 1) - v7[2] < v14)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = v7[2];
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_35;
          }

          v7[2] = v20;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_33;
        }
      }

      v5 += v13;
      if (!--v3)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_26;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (!v7[2])
  {

    v32 = *(v1 + 8);

    return v32();
  }

  v6 = v1;
  v1 = sub_1D5F20DFC(v7);
  v5 = v25;
  v6[10] = v1;
  v6[11] = v25;
  if (qword_1EDF0E798 != -1)
  {
    goto LABEL_36;
  }

LABEL_26:
  v26 = qword_1EDFFC588;
  v6[12] = qword_1EDFFC588;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6[13] = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7273AE0;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v29 = sub_1D5B7E2C0();
  v6[14] = v29;
  *(v28 + 64) = v29;
  *(v28 + 32) = v1;
  *(v28 + 40) = v5;

  v30 = sub_1D7262EDC();
  sub_1D725C30C("Web embed data source manager will prepare visualizations %{public}@", 68, 2, &dword_1D5B42000, v26, v30, v28);

  v6[15] = sub_1D62C60D0(v7);

  v31 = swift_task_alloc();
  v6[16] = v31;
  *v31 = v6;
  v31[1] = sub_1D62C5CE8;

  return MEMORY[0x1EEE44EE0](v31);
}

uint64_t sub_1D5D03B6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D5D03CB8()
{
  v1 = 0;
  v2 = v0[6];
  v3 = *(v0[2] + 16);
  while (1)
  {
    v4 = v0[7];
    if (v3 == v1)
    {
      break;
    }

    sub_1D71D8ED8(v0[2] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1++, v0[7], type metadata accessor for FormatWebEmbed.Resolved);
    type metadata accessor for FormatWebEmbed(0);
    v5 = sub_1D725847C();
    sub_1D71D8F40(v4, type metadata accessor for FormatWebEmbed.Resolved);
    if (v5)
    {
      __swift_project_boxed_opaque_existential_1((v0[3] + 24), *(v0[3] + 48));
      v6 = sub_1D725C1AC();
      *(swift_allocObject() + 16) = v6;
      sub_1D725BDBC();

      v7 = sub_1D725B92C();
      v0[8] = sub_1D725BAAC();

      v8 = swift_task_alloc();
      v0[9] = v8;
      *v8 = v0;
      v8[1] = sub_1D71D71C4;

      return MEMORY[0x1EEE44EE0](v8);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D5D03F04()
{

  return swift_deallocObject();
}

void sub_1D5D03F3C(char **result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[5];
  v29[4] = a2[4];
  v29[5] = v10;
  v29[6] = a2[6];
  v11 = a2[1];
  v29[0] = *a2;
  v29[1] = v11;
  v12 = a2[3];
  v13 = *v8;
  v14 = *v8 >> 61;
  v29[2] = a2[2];
  v29[3] = v12;
  if (v14 > 2)
  {
    if (v14 > 4)
    {
      if (v14 != 5)
      {
        return;
      }

      v15 = v13 & 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13 & 0x1FFFFFFFFFFFFFFFLL;
      if (v14 == 3)
      {
        v16 = *(v15 + 16);

        v18 = result;
LABEL_15:
        sub_1D5D041E4(v18, v29, v16);

        return;
      }
    }

    v30 = *(v15 + 16);
    sub_1D5CFEE30(result, a2);
    return;
  }

  if (!v14)
  {
    v30 = *(v13 + 16);
    sub_1D5CF9048(result, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

  v20 = v13 & 0x1FFFFFFFFFFFFFFFLL;
  if (v14 != 1)
  {
    v16 = *(v20 + 16);

    v18 = result;
    goto LABEL_15;
  }

  v22 = *(v20 + 16);
  v21 = *(v20 + 24);

  sub_1D5D085B4(v21);
  sub_1D6E71C18(result, v29, v22);
  if (!v9)
  {
    v30 = v21;
    sub_1D5D085B4(v21);
    sub_1D5D03F3C(result, v29, v23, v24, v25, v26, v27, v28);
    sub_1D5D05694(v21);
  }

  sub_1D5D05694(v21);
}

uint64_t sub_1D5D040D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char **sub_1D5D041E4(char **result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 56); ; i += 4)
    {
      v8 = *i;
      v22 = *(i - 1);
      v9 = a2[5];
      v19 = a2[4];
      v20 = v9;
      v21 = a2[6];
      v10 = a2[1];
      v15 = *a2;
      v16 = v10;
      v11 = a2[3];
      v17 = a2[2];
      v18 = v11;

      swift_retain_n();

      sub_1D5CFEE30(v6, &v15);
      if (v3)
      {
        break;
      }

      v22 = v8;
      v12 = a2[5];
      v19 = a2[4];
      v20 = v12;
      v21 = a2[6];
      v13 = a2[1];
      v15 = *a2;
      v16 = v13;
      v14 = a2[3];
      v17 = a2[2];
      v18 = v14;

      sub_1D5D05600(v6, &v15);

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D5D0434C(unint64_t a1, __int128 *a2)
{
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[2];
  v23[3] = a2[3];
  v23[4] = v5;
  v8 = a2[6];
  v23[5] = v6;
  v23[6] = v8;
  v9 = a2[1];
  v23[0] = *a2;
  v23[1] = v9;
  v23[2] = v7;
  swift_beginAccess();
  v10 = *(v2 + 48);

  sub_1D5D04530(a1, v23, v10);

  if (!v3)
  {
    if ((~*(v2 + 64) & 0xF000000000000007) != 0)
    {
      *&v21[0] = *(v2 + 64);

      sub_1D5D0491C(a1, v23, v12, v13, v14, v15, v16, v17);
    }

    v18 = *(v2 + 72);
    if (v18)
    {
      result = sub_1D5D0AE64(a1, v23, v18);
    }

    v22 = *(v2 + 184);
    v19 = *(v2 + 152);
    v21[2] = *(v2 + 136);
    v21[3] = v19;
    v21[4] = *(v2 + 168);
    v20 = *(v2 + 120);
    v21[0] = *(v2 + 104);
    v21[1] = v20;
    if (v22 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(a1, v23);

      return sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

uint64_t sub_1D5D04530(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 10)
    {
      v8 = i[7];
      v32 = i[6];
      v33 = v8;
      v34[0] = i[8];
      *(v34 + 9) = *(i + 137);
      v9 = i[3];
      v29 = i[2];
      v30[0] = v9;
      v10 = i[5];
      v30[1] = i[4];
      v31 = v10;
      v11 = i[1];
      v27 = *i;
      v28 = v11;
      v12 = v11;
      if ((~v11 & 0xF000000000000007) != 0)
      {
        v35 = v11;
        v13 = a2[5];
        v25[4] = a2[4];
        v25[5] = v13;
        v25[6] = a2[6];
        v14 = a2[1];
        v25[0] = *a2;
        v25[1] = v14;
        v15 = a2[3];
        v25[2] = a2[2];
        v25[3] = v15;
        sub_1D5D044D4(&v27, v26);
        sub_1D5D04BD4(v12);
        sub_1D5D0491C(v6, v25, v16, v17, v18, v19, v20, v21);

        if (v3)
        {
          return sub_1D5D04BEC(&v27);
        }
      }

      else
      {
        sub_1D5D044D4(&v27, v26);
      }

      if (*(&v28 + 1))
      {
        sub_1D5D0AE64(v6, a2, *(&v28 + 1));
        if (v3)
        {
          break;
        }
      }

      if (BYTE8(v34[0]) != 254)
      {
        v35 = *(&v31 + 1);
        v22 = a2[5];
        v26[4] = a2[4];
        v26[5] = v22;
        v26[6] = a2[6];
        v23 = a2[1];
        v26[0] = *a2;
        v26[1] = v23;
        v24 = a2[3];
        v26[2] = a2[2];
        v26[3] = v24;
        sub_1D6E78A70(v30 + 8, v25, &qword_1EDF33718, &type metadata for FormatShadow);

        sub_1D5CF9A24(v6, v26);
        if (v3)
        {
          sub_1D6E78AF0(v30 + 8, &qword_1EDF33718, &type metadata for FormatShadow);

          return sub_1D5D04BEC(&v27);
        }

        sub_1D6E78AF0(v30 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D5D04BEC(&v27);
      if (!--v4)
      {
        return result;
      }
    }

    return sub_1D5D04BEC(&v27);
  }

  return result;
}

char **sub_1D5D04770(char **result, __int128 *a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v8 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v30 = *(i - 1);
      v11 = a2[5];
      v27 = a2[4];
      v28 = v11;
      v29 = a2[6];
      v12 = a2[1];
      v23 = *a2;
      v24 = v12;
      v13 = a2[3];
      v25 = a2[2];
      v26 = v13;

      swift_retain_n();
      sub_1D5CF6528(v8, &v23, v14, v15, v16, v17, v18, v19);
      if (v4)
      {
        break;
      }

      v30 = v10;
      v20 = a2[5];
      v27 = a2[4];
      v28 = v20;
      v29 = a2[6];
      v21 = a2[1];
      v23 = *a2;
      v24 = v21;
      v22 = a2[3];
      v25 = a2[2];
      v26 = v22;

      a4(v8, &v23);

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatBackgroundOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 8 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 4) | (8 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatCornerRadiusOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

void sub_1D5D0491C(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[5];
  v52[4] = a2[4];
  v52[5] = v9;
  v52[6] = a2[6];
  v10 = a2[1];
  v52[0] = *a2;
  v52[1] = v10;
  v11 = a2[3];
  v12 = *v8;
  v13 = *v8 >> 61;
  v52[2] = a2[2];
  v52[3] = v11;
  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v27 = v12 & 0x1FFFFFFFFFFFFFFFLL;
        v28 = *(v27 + 128);
        v46 = *(v27 + 112);
        v47 = v28;
        v48 = *(v27 + 144);
        LOBYTE(v49[0]) = *(v27 + 160);
        v29 = *(v27 + 64);
        v42 = *(v27 + 48);
        v43 = v29;
        v30 = *(v27 + 96);
        v44 = *(v27 + 80);
        v45 = v30;
        v31 = *(v27 + 32);
        v40 = *(v27 + 16);
        v41 = v31;
        sub_1D62A66D4(a1, a2);
      }

      else
      {
        memmove(&v40, ((v12 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0xA2uLL);
        v38 = sub_1D62B4E2C(&v40);
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            v39 = sub_1D5D04BC4(&v40);
            v50[7] = *(v39 + 112);
            v50[8] = *(v39 + 128);
            v50[9] = *(v39 + 144);
            v51 = *(v39 + 160);
            v50[3] = *(v39 + 48);
            v50[4] = *(v39 + 64);
            v50[5] = *(v39 + 80);
            v50[6] = *(v39 + 96);
            v50[0] = *v39;
            v50[1] = *(v39 + 16);
            v50[2] = *(v39 + 32);
            sub_1D62A967C(a1, a2);
          }
        }

        else
        {
          sub_1D5D04BC4(&v40);
        }
      }
    }

    else
    {
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL);
      if (v13 == 4)
      {
        v15 = v14[9];
        v47 = v14[8];
        v48 = v15;
        v49[0] = v14[10];
        *(v49 + 9) = *(v14 + 169);
        v16 = v14[5];
        v43 = v14[4];
        v44 = v16;
        v17 = v14[7];
        v45 = v14[6];
        v46 = v17;
        v18 = v14[2];
        v40 = v14[1];
        v41 = v18;
        v42 = v14[3];
        sub_1D62A6570(a1, a2);
      }

      else
      {
        v40 = v14[1];
        sub_1D62A6658(a1, a2);
      }
    }
  }

  else if (v13 > 1)
  {
    v19 = (v12 & 0x1FFFFFFFFFFFFFFFLL);
    if (v13 == 2)
    {
      v20 = v19[6];
      v21 = v19[7];
      v22 = v19[8];
      v44 = v19[5];
      v45 = v20;
      v46 = v21;
      v47 = v22;
      v23 = v19[2];
      v40 = v19[1];
      v41 = v23;
      v24 = v19[4];
      v42 = v19[3];
      v43 = v24;
      v25 = v22;
      sub_1D60865E4(&v40, v50);
      sub_1D5CF8C68(a1, v52, v25);
      sub_1D6086640(&v40);
    }

    else
    {
      *&v40 = *(v19 + 2);
      sub_1D5D03C64(a1, a2);
    }
  }

  else if (v13)
  {
    v32 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v33 = a2[5];
    v44 = a2[4];
    v45 = v33;
    v46 = a2[6];
    v34 = a2[1];
    v40 = *a2;
    v41 = v34;
    v35 = a2[3];
    v42 = a2[2];
    v43 = v35;
    sub_1D5CF8C68(a1, &v40, v32);
  }

  else
  {
    *&v40 = *(v12 + 16);
    sub_1D5CF9A24(a1, a2);
  }
}

uint64_t sub_1D5D04BD4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

char **sub_1D5D04C40(char **result, __int128 *a2, uint64_t a3)
{
  v14 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = a3 + 64; ; i += 40)
    {
      v7 = *(i - 8);
      v22 = *(i - 16);
      v8 = a2[5];
      v19 = a2[4];
      v20 = v8;
      v21 = a2[6];
      v9 = a2[1];
      v15 = *a2;
      v16 = v9;
      v10 = a2[3];
      v17 = a2[2];
      v18 = v10;

      swift_retain_n();

      sub_1D5CFEE30(v14, &v15);
      if (v3)
      {
        break;
      }

      if (v7)
      {
        v11 = a2[5];
        v19 = a2[4];
        v20 = v11;
        v21 = a2[6];
        v12 = a2[1];
        v15 = *a2;
        v16 = v12;
        v13 = a2[3];
        v17 = a2[2];
        v18 = v13;
        sub_1D5CFCC3C(v14, &v15);
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1D5D04DD4(char **a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5C2B0C4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v60 - v11;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return;
  }

  v14 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v75 = *(v10 + 72);
  v63 = a1;
  while (1)
  {
    sub_1D5CF8338(v14, v12, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    v19 = v12[80];
    if (!(v19 >> 6))
    {
      goto LABEL_5;
    }

    if (v19 >> 6 == 1)
    {
      break;
    }

    v64 = *(v12 + 4);
    v30 = a2[5];
    v72 = a2[4];
    v73 = v30;
    v74 = a2[6];
    v31 = a2[1];
    v68 = *a2;
    v69 = v31;
    v32 = a2[3];
    v70 = a2[2];
    v71 = v32;
    sub_1D62A82C0(a1, &v68);
    if (v4)
    {
      goto LABEL_55;
    }

LABEL_5:
    sub_1D5CF9D88(v12, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    v14 += v75;
    if (!--v13)
    {
      return;
    }
  }

  if (v19)
  {
    goto LABEL_5;
  }

  v21 = *(v12 + 6);
  v20 = *(v12 + 7);
  v22 = *(v12 + 8);
  v23 = *(v12 + 9);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = *(v21 + 32);
  v27 = *(v21 + 40);
  if (*(v21 + 66))
  {
    v28 = 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 & 0xFFFFFFF8 | (*(v21 + 64) >> 11) & 7;
  if (v29 <= 4)
  {
    if (v29 <= 1)
    {
      v62 = *(v12 + 8);
      if (!v29)
      {
        v64 = v24;
        v65 = v25;
        v66 = v26;
        v67 = v27;
        v36 = a2[5];
        v72 = a2[4];
        v73 = v36;
        v74 = a2[6];
        v37 = a2[1];
        v68 = *a2;
        v69 = v37;
        v38 = a2[3];
        v70 = a2[2];
        v71 = v38;

        v61 = v20;

        a1 = v63;
        sub_1D5D06CC8(v63, &v68, v39, v40);
        if (v4)
        {
          v56 = v21;
          v57 = v61;
          v58 = v62;
          v59 = v23;
          goto LABEL_54;
        }

        goto LABEL_23;
      }

      goto LABEL_40;
    }

    if (v29 != 3)
    {
      goto LABEL_3;
    }

    goto LABEL_31;
  }

  if (v29 > 6)
  {
    v33 = *(v12 + 9);
    v34 = *(v12 + 7);
    if (v29 == 7)
    {
      v62 = *(v12 + 8);

      v23 = v33;

      v17 = v62;
      v18 = v20;
    }

    else
    {
      v35 = *(v12 + 8);

      v17 = v35;
      v18 = v34;
      v23 = v33;
    }

    goto LABEL_36;
  }

  if (v29 == 5)
  {
    goto LABEL_3;
  }

  if (!(v27 >> 6))
  {
LABEL_31:
    v41 = *(v21 + 32);
    if (v41 <= 1)
    {
      if (*(v21 + 32))
      {
        a1 = v63;
        if ((~v24 & 0xF000000000000007) == 0)
        {
          goto LABEL_34;
        }

        v64 = *(v21 + 16);
        v51 = a2[5];
        v72 = a2[4];
        v73 = v51;
        v74 = a2[6];
        v52 = a2[1];
        v68 = *a2;
        v69 = v52;
        v53 = a2[3];
        v70 = a2[2];
        v71 = v53;
        v61 = v20;
        v62 = v22;
        v60 = v23;
        sub_1D618ECBC(v21, v20, v22, v23, 0);
        sub_1D5CFCFAC(v24);
        sub_1D5CFEE30(a1, &v68);

        if (v4)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

LABEL_3:
      v15 = *(v12 + 7);
      v16 = *(v12 + 8);

      v17 = v16;
      v18 = v15;
      a1 = v63;
LABEL_4:
      sub_1D5E32940(v21, v18, v17, v23, 0);
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  if (v27 >> 6 != 1)
  {
    v47 = v27 & 0x3F;
    if (v47 > 1)
    {
      if (v47 != 2 && v25 | v26)
      {
        v62 = *(v12 + 8);

        v18 = v20;
        v17 = v62;
        a1 = v63;
        goto LABEL_4;
      }
    }

    else if (v47 && (~v25 & 0xF000000000000007) != 0)
    {
      v64 = *(v21 + 24);
      v48 = a2[5];
      v72 = a2[4];
      v73 = v48;
      v74 = a2[6];
      v49 = a2[1];
      v68 = *a2;
      v69 = v49;
      v50 = a2[3];
      v70 = a2[2];
      v71 = v50;
      v61 = v20;
      v62 = v22;
      v60 = v23;
      sub_1D618ECBC(v21, v20, v22, v23, 0);
      sub_1D5CFCFAC(v25);
      a1 = v63;
      goto LABEL_45;
    }

    v54 = *(v12 + 7);
    v55 = *(v12 + 8);

    v17 = v55;
    v18 = v54;
LABEL_36:
    a1 = v63;
    goto LABEL_4;
  }

  v41 = *(v21 + 32);
  if (v41 > 1)
  {
LABEL_37:
    if (v41 == 2 || !(v24 | v25))
    {
      goto LABEL_3;
    }

    v62 = *(v12 + 8);
LABEL_40:

    v18 = v20;
    v17 = v62;
    a1 = v63;
    goto LABEL_4;
  }

  if (!*(v21 + 32))
  {
    goto LABEL_3;
  }

  a1 = v63;
  if ((~v24 & 0xF000000000000007) == 0)
  {
LABEL_34:
    v45 = *(v12 + 7);
    v46 = *(v12 + 8);

    v17 = v46;
    v18 = v45;
    goto LABEL_4;
  }

  v64 = *(v21 + 16);
  v42 = a2[5];
  v72 = a2[4];
  v73 = v42;
  v74 = a2[6];
  v43 = a2[1];
  v68 = *a2;
  v69 = v43;
  v44 = a2[3];
  v70 = a2[2];
  v71 = v44;
  v61 = v20;
  v62 = v22;
  v60 = v23;
  sub_1D618ECBC(v21, v20, v22, v23, 0);
  sub_1D5CFCFAC(v24);
LABEL_45:
  sub_1D5CFEE30(a1, &v68);
  if (!v4)
  {

LABEL_48:
    v23 = v60;
LABEL_23:
    v17 = v62;
    v18 = v61;
    goto LABEL_4;
  }

LABEL_58:
  v56 = v21;
  v57 = v61;
  v58 = v62;
  v59 = v60;
LABEL_54:
  sub_1D5E32940(v56, v57, v58, v59, 0);
LABEL_55:
  sub_1D5CF9D88(v12, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
}

uint64_t sub_1D5D054F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_40Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

double sub_1D5D05600(uint64_t result, uint64_t a2)
{
  v3 = *v2 >> 62;
  if (v3 > 1)
  {
    return sub_1D62B3288(result, a2);
  }

  if (!v3)
  {

    sub_1D5D05600(result, a2);
  }

  return v6;
}

unint64_t sub_1D5D05694(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 2)
  {
    if (v1 > 2)
    {
      return result;
    }
  }

  if (v1 == 3 || v1 == 4 || v1 == 5)
  {
  }

  return result;
}

void sub_1D5D0578C(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FormatItemNodeAction(0);
  v47 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v40[-v18];
  if ((*(v4 + 112) & 0xFE) != 0x7E)
  {
    v46 = &v40[-v18];
    v20 = v12;
    v21 = a1;
    v22 = a2;
    v23 = *(v4 + 48);
    if ((v23 & 0xF000000000000007) == 0xF000000000000007)
    {
      a2 = v22;
      a1 = v21;
    }

    else
    {
      v45 = v15;
      *&v51[0] = v23;

      sub_1D5CF9A24(v21, v22);
      if (v3)
      {

        return;
      }

      a2 = v22;
      a1 = v21;
      v15 = v45;
    }

    v12 = v20;
    v19 = v46;
  }

  v24 = *(v4 + 120);
  *&v52[9] = *(v4 + 161);
  v25 = *(v4 + 136);
  v51[0] = v24;
  v51[1] = v25;
  *v52 = *(v4 + 152);
  if (v52[24] > 1u)
  {
    if (v52[24] != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v52[24])
  {
    goto LABEL_16;
  }

  if ((*&v52[16] & 0xF000000000000007) == 0xD000000000000007)
  {
LABEL_15:
    sub_1D5D0ABCC(v51, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    goto LABEL_16;
  }

  if ((~*&v51[0] & 0xF000000000000007) != 0)
  {
    v45 = v15;
    v46 = v12;
    v53 = *&v51[0];
    v26 = *&v51[0];
    sub_1D62B5354(v51, v48, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D5CFCFAC(v26);
    sub_1D5CF9A24(a1, a2);
    if (v3)
    {

      sub_1D5D0ABCC(v51, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      return;
    }

    sub_1D5D0ABCC(v51, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    v15 = v45;
    v12 = v46;
  }

LABEL_16:
  sub_1D5C00D70(v4 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v19, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v47 + 48))(v19, 1, v12) == 1)
  {
    sub_1D5B6EF64(v19, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  }

  else
  {
    sub_1D62B50EC(v19, v15, type metadata accessor for FormatItemNodeAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 6)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D62B51D0(v15, type metadata accessor for FormatItemNodeAction);
      }

      else
      {
        v37 = *v15;
        v46 = *(v15 + 1);
        v47 = v37;
        v38 = *(v15 + 2);
        v44 = *(v15 + 3);
        v45 = v38;
        v43 = *(v15 + 4);
        v42 = *(v15 + 5);
        v39 = v15[50];
        LOBYTE(v53) = v39;
        v41 = *(v15 + 24);
        v48[0] = v37;
        v48[1] = v46;
        v48[2] = v38;
        v48[3] = v44;
        v48[4] = v43;
        v48[5] = v42;
        v49 = v41;
        v50 = v39;
        sub_1D5CF6D20(a1, a2, v28, v29);
        sub_1D5E1DCFC(v47, v46, v45, v44, v43, v42, v41, v39, sub_1D5E1DE10, sub_1D5E1DE10, sub_1D5E1DE98);
        if (v3)
        {
          v35 = type metadata accessor for FormatItemNodeAction;
          v36 = v19;
LABEL_29:
          sub_1D62B51D0(v36, v35);
          return;
        }
      }
    }

    sub_1D62B51D0(v19, type metadata accessor for FormatItemNodeAction);
  }

  v30 = *(v4 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  if (v30 == 3 || (sub_1D62B7E1C(*(v4 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle)), sub_1D62B5E24(v30), !v3))
  {
    v31 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
    swift_beginAccess();
    v32 = *(v4 + v31);
    v33 = *(v32 + 16);

    if (v33)
    {
      v34 = 0;
      while (v34 < *(v32 + 16))
      {
        sub_1D62B50EC(v32 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, v11, type metadata accessor for FormatItemNodeStyle.Selector);
        sub_1D62AB9E4(a1, a2);
        if (v3)
        {

          v35 = type metadata accessor for FormatItemNodeStyle.Selector;
          v36 = v11;
          goto LABEL_29;
        }

        ++v34;
        sub_1D62B51D0(v11, type metadata accessor for FormatItemNodeStyle.Selector);
        if (v33 == v34)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_27:
    }
  }
}

uint64_t sub_1D5D05DC8(uint64_t a1, _OWORD *a2)
{
  v41 = *(a1 + 16);
  if (!v41)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v40 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = (v40 + (v3 << 7));
    v7 = v6[5];
    v8 = v6[3];
    v51 = v6[4];
    v52 = v7;
    v9 = v6[5];
    v53[0] = v6[6];
    *(v53 + 9) = *(v6 + 105);
    v10 = v6[1];
    v48[0] = *v6;
    v48[1] = v10;
    v11 = v6[3];
    v13 = *v6;
    v12 = v6[1];
    v49 = v6[2];
    v50 = v11;
    v46[4] = v51;
    v46[5] = v9;
    v47[0] = v6[6];
    *(v47 + 9) = *(v6 + 105);
    v46[0] = v13;
    v46[1] = v12;
    v46[2] = v49;
    v46[3] = v8;
    v14 = a2[5];
    v45[4] = a2[4];
    v45[5] = v14;
    v45[6] = a2[6];
    v15 = a2[1];
    v45[0] = *a2;
    v45[1] = v15;
    v16 = a2[3];
    v45[2] = a2[2];
    v45[3] = v16;
    sub_1D5E9A920(v48, v44);
    FormatResource.loadableFonts(in:)(v45);
    if (v2)
    {
      sub_1D5E9A97C(v48);

      return v4;
    }

    v18 = v17;
    sub_1D5E9A97C(v48);
    v19 = v18 >> 62;
    if (v18 >> 62)
    {
      v20 = sub_1D7263BFC();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v4 >> 62;
    if (v4 >> 62)
    {
      v38 = sub_1D7263BFC();
      v23 = v38 + v20;
      if (__OFADD__(v38, v20))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_1D7263BFC();
      goto LABEL_17;
    }

    if (v21)
    {
      goto LABEL_16;
    }

    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v23 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = v20;
      goto LABEL_18;
    }

LABEL_17:
    v25 = v20;
    result = sub_1D7263DDC();
    v4 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    if (v19)
    {
      break;
    }

    v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v27 >> 1) - v26) < v25)
    {
      goto LABEL_39;
    }

    v54 = v25;
    v43 = v3;
    v30 = v24 + 8 * v26 + 32;
    v39 = v24;
    if (v19)
    {
      if (v28 < 1)
      {
        goto LABEL_41;
      }

      sub_1D5E9A9D0(0);
      sub_1D5C2AF10(&qword_1EDF04A30, 255, sub_1D5E9A9D0, MEMORY[0x1E69E6340]);
      for (i = 0; i != v28; ++i)
      {
        v32 = sub_1D6D877E0(v46, i, v18);
        v34 = *v33;
        (v32)(v46, 0);
        *(v30 + 8 * i) = v34;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
      swift_arrayInitWithCopy();
    }

    v3 = v43;
    if (v54 >= 1)
    {
      v35 = *(v39 + 16);
      v36 = __OFADD__(v35, v54);
      v37 = v35 + v54;
      if (v36)
      {
        goto LABEL_40;
      }

      *(v39 + 16) = v37;
    }

LABEL_4:
    if (++v3 == v41)
    {
      return v4;
    }
  }

  v29 = v24;
  result = sub_1D7263BFC();
  v24 = v29;
  v28 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v25 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1D5D06170(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v4 = sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
    v5 = sub_1D5D062B0();
    result = MEMORY[0x1DA6FA1E0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6FB460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D5FE9914(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D7263BFC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D5D062B0()
{
  result = qword_1EDF1AAE0;
  if (!qword_1EDF1AAE0)
  {
    sub_1D5B5A498(255, &qword_1EDF1AAF0, 0x1E69B5380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AAE0);
  }

  return result;
}

uint64_t FeedFontManager.load(fonts:downloadIfNeeded:)(uint64_t a1, char a2)
{
  v3 = swift_allocObject();
  swift_weakInit();

  sub_1D725A76C();
  swift_beginAccess();

  v5 = sub_1D5D06650(v4);

  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1D7263BFC();
    v7 = swift_unknownObjectRetain();
    v8 = sub_1D6E14AA0(v7, v6);
  }

  else
  {

    v8 = a1;
  }

  v9 = sub_1D5D06DD0(v5, v8);

  sub_1D725A77C();
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*(v9 + 16))
    {
      goto LABEL_6;
    }

LABEL_8:

    sub_1D5D072A8(a1, &v16);

    sub_1D5D07804(0, &qword_1EDF3B9B0, &type metadata for FeedFontLoadResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v14 = sub_1D725BB1C();

    return v14;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_8;
  }

LABEL_6:

  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1D5D07804(0, &unk_1EDF04980, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();
  v12 = swift_allocObject();
  v12[2] = sub_1D6E134EC;
  v12[3] = v3;
  v12[4] = v9;

  v13 = sub_1D725B92C();
  v14 = sub_1D725BA7C();

  return v14;
}

uint64_t sub_1D5D065D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D06610()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D06650(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v4 = v1 + 56;
    result = sub_1D7263B7C();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 48) + 16 * v5);
      sub_1D7263E9C();
      sub_1D7263EDC();
      v1 = v19;
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_1D5C25E1C(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_1D5C25E1C(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1D5D06868(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v49[4] = a2[4];
  v49[5] = v7;
  v49[6] = a2[6];
  v8 = a2[1];
  v49[0] = *a2;
  v49[1] = v8;
  v9 = a2[3];
  v49[2] = a2[2];
  v49[3] = v9;
  swift_beginAccess();
  v48 = *(v2 + 32);
  sub_1D5C82CD8(v48);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v48);
  }

  else
  {
    sub_1D5C92A8C(v48);
    swift_beginAccess();
    v16 = *(v2 + 48);

    sub_1D5CF9258(a1, v49, v16, v17, v18, v19, v20, v21);

    swift_beginAccess();
    v22 = v4[8];
    if (v22 >> 62 == 1)
    {
      v23 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[8]);
      sub_1D5EB1500(v23);

      sub_1D62A5D84(a1, v49, v23, v24, v25);
      sub_1D5EB15C4(v23);

      sub_1D5EB15C4(v22);
    }

    sub_1D5CFB918(a1, v49, v26, v27, v28, v29, v30, v31);

    if ((~v4[13] & 0xF000000000000007) != 0)
    {

      sub_1D5CFEE30(a1, v49);
    }

    if ((~v4[14] & 0xF000000000000007) != 0)
    {

      sub_1D5CFB918(a1, v49, v32, v33, v34, v35, v36, v37);
    }

    if ((~v4[15] & 0xF000000000000007) != 0)
    {

      sub_1D5CFEE30(a1, v49);
    }

    v38 = v4[18];
    if (v38)
    {
      swift_beginAccess();
      v39 = *(v38 + 72);
      if (v39)
      {

        sub_1D6E6120C(a1, v49, v39);
      }

      swift_beginAccess();
      v40 = *(v38 + 88);

      sub_1D6E71B64(a1, v49, v40);
    }

    swift_beginAccess();
    v41 = v4[23];

    sub_1D5D09158(a1, v49, v41);

    v42 = v4[24];
    if (v42)
    {
      v43 = v4[28];
      v50 = v4[29];
      v45 = v4[26];
      v44 = v4[27];
      v46 = v4[25];
      sub_1D62A42E0();
      sub_1D5EB1D80(v42, v46, v45, v44, v43, v50);

      sub_1D5CBF568(v43);
    }

    swift_beginAccess();
    v47 = v4[10];

    sub_1D5CF6090(a1, v49, v47);
  }
}

double sub_1D5D06CC8(char **result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = (*(v4 + 24) >> 3) & 7;
  if (v6 <= 1)
  {
    v7 = v5 & 0xF000000000000007;
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4[2] == 1;
    }
  }

  else
  {
    if (v6 != 2 && v6 != 3)
    {
      return sub_1D62A7F6C(result, a2);
    }

    v7 = v5 & 0xF000000000000007;
    v8 = v4[2] == 1;
  }

  if (v8 && v7 != 0xF000000000000007)
  {

    sub_1D5CFEE30(result, a2);
  }

  return v12;
}

unint64_t sub_1D5D06D9C(unint64_t result, char a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (((result >> 60) & 3 | v2) <= 5)
  {
  }

  return result;
}

uint64_t sub_1D5D06DD0(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v53[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = sub_1D7263BFC();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = (v2 + 56);
      while (1)
      {
        if (v50)
        {
          a1 = MEMORY[0x1DA6FB460](v4, v49);
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_1D72636FC();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
      while (1)
      {
        v12 = *(*(v2 + 48) + 8 * v8);
        v13 = sub_1D726370C();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v42 = v18;
      if (v17 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        MEMORY[0x1EEE9AC00](v14, v15);
        v20 = &v41 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v20, v52, v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v9] & ~v10;
        v47 = v20;
        *&v20[8 * v9] = v22;
        v45 = v21 - 1;
        if (v44)
        {
          a1 = sub_1D7263BFC();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = sub_1D6EC0E24(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = MEMORY[0x1DA6FB460](v4, v49);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v23 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v24 = sub_1D72636FC();
          v25 = -1 << *(v2 + 32);
          v26 = v24 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(*(v2 + 48) + 8 * v26);
              v31 = sub_1D726370C();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = MEMORY[0x1E69E7CD0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v18;

      v37 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v38 = swift_slowAlloc();
      memcpy(v38, v52, v37);
      sub_1D6E1593C(v38, v42, v2, v8, v53);
      v40 = v39;

      MEMORY[0x1DA6FD500](v38, -1, -1);

      return v40;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1D5D072A8(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v32 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v42 = a3;
  v50 = a1;
  v6 = Strong;

  sub_1D725A76C();

  swift_beginAccess();
  v7 = *(v6 + 40);
  v8 = v50;
  v9 = v7 + 56;
  v10 = 1 << *(v7 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v7 + 56);
  v13 = (v10 + 63) >> 6;
  v45 = v7;
  v46 = v50 & 0xC000000000000001;
  v49 = v50 + 56;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_11:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v45 + 48) + ((v14 << 10) | (16 * v16));
    v19 = *v17;
    v18 = *(v17 + 8);
    if (v46)
    {
      v44 = *(v17 + 8);
      v47 = *v17;
      v48 = v18;
      v20 = v19;
      v21 = sub_1D7263C3C();

      if ((v21 & 1) == 0)
      {
LABEL_13:
        v19 = v47;
        goto LABEL_14;
      }

LABEL_21:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1D698C4CC(0, *(v43 + 2) + 1, 1, v43);
      }

      v30 = *(v43 + 2);
      v29 = *(v43 + 3);
      if (v30 >= v29 >> 1)
      {
        v43 = sub_1D698C4CC((v29 > 1), v30 + 1, 1, v43);
      }

      *(v43 + 2) = v30 + 1;
      v31 = &v43[16 * v30];
      *(v31 + 4) = v47;
      *(v31 + 5) = v44;
      v8 = v50;
    }

    else if (*(v8 + 16))
    {
      sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
      v44 = v18;
      v48 = v18;
      v22 = v19;
      v23 = sub_1D72636FC();
      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
      if ((*(v49 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v47 = v19;
        v26 = ~v24;
        while (1)
        {
          v27 = *(*(v8 + 48) + 8 * v25);
          v28 = sub_1D726370C();

          v8 = v50;
          if (v28)
          {
            goto LABEL_21;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v49 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

LABEL_14:
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
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
      goto LABEL_11;
    }
  }

  sub_1D725A77C();

  v32 = v43;
  v33 = *(v43 + 2);
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v35 = (v43 + 32);
    do
    {
      v36 = *v35;
      v35 += 2;
      v37 = v36;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v33;
    }

    while (v33);
    v8 = v50;
    v34 = v51;
  }

  a3 = v42;
  if (v46)
  {
    v38 = sub_1D7263BFC();
    v39 = swift_unknownObjectRetain();
    v8 = sub_1D6E14AA0(v39, v38);
  }

  else
  {
  }

  v41 = sub_1D5D06DD0(v34, v8);

  v40 = sub_1D5D076C8(v41);

LABEL_35:
  *a3 = v32;
  a3[1] = v40;
}

uint64_t **sub_1D5D076C8(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1D7263BFC();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D5C38490(v2, 0);

    v1 = sub_1D5E255A8(&v5, v3 + 4, v2, v1);
    sub_1D5B87E38(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

unint64_t sub_1D5D07778(unint64_t result, char a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (((result >> 60) & 3 | v2) <= 5)
  {
  }

  return result;
}

void sub_1D5D077AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D07804(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5D07854(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v38[4] = a2[4];
  v38[5] = v7;
  v38[6] = a2[6];
  v8 = a2[1];
  v38[0] = *a2;
  v38[1] = v8;
  v9 = a2[3];
  v38[2] = a2[2];
  v38[3] = v9;
  v32 = v2[4];
  sub_1D5C82CD8(v32);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v32);
  }

  else
  {
    sub_1D5C92A8C(v32);
    swift_beginAccess();
    v16 = v2[6];

    sub_1D5CF9258(a1, v38, v16, v17, v18, v19, v20, v21);

    if (v4[7])
    {
      sub_1D5CF8420(a1, v38);
    }

    v22 = v4[8];
    if (v22)
    {
      swift_beginAccess();
      v23 = *(v22 + 72);
      if (v23)
      {

        sub_1D6E6120C(a1, v38, v23);
      }

      swift_beginAccess();
      v24 = *(v22 + 88);

      sub_1D6E71B64(a1, v38, v24);
    }

    sub_1D5CF94EC(a1, v38, v25, v26);

    swift_beginAccess();
    v27 = v4[11];
    if (v27 >> 62 == 1)
    {
      v28 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v29 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v28);

      sub_1D62A5D84(a1, v38, v28, v29, v30);
      sub_1D5EB15C4(v28);

      sub_1D5EB15C4(v27);
    }

    v31 = v4[18];
    if (v31)
    {
      v33 = v4[19];
      v34 = v4[20];
      v35 = v4[21];
      v36 = v4[22];
      v37 = v4[23];
      sub_1D62A42E0();
      sub_1D5EB1D80(v31, v33, v34, v35, v36, v37);

      sub_1D5CBF568(v36);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatSymbolConfigOSg(uint64_t a1)
{
  v1 = *(a1 + 17);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21FormatSymbolImageFillVSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7C;
  v3 = 128 - v1;
  if (v2 >= 0x74)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22FormatSymbolImageColorOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5D07BA8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

char **sub_1D5D07C10(char **result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v34 = *(i - 1);
      v9 = a2[5];
      v31 = a2[4];
      v32 = v9;
      v33 = a2[6];
      v10 = a2[1];
      v27 = *a2;
      v28 = v10;
      v11 = a2[3];
      v29 = a2[2];
      v30 = v11;

      sub_1D5C82CD8(v8);

      sub_1D5CF6528(v6, &v27, v12, v13, v14, v15, v16, v17);
      if (v3)
      {
        break;
      }

      v34 = v8;
      v18 = a2[5];
      v31 = a2[4];
      v32 = v18;
      v33 = a2[6];
      v19 = a2[1];
      v27 = *a2;
      v28 = v19;
      v20 = a2[3];
      v29 = a2[2];
      v30 = v20;
      sub_1D5C82CD8(v8);
      sub_1D5CF9048(v6, &v27, v21, v22, v23, v24, v25, v26);

      sub_1D5C92A8C(v8);
      result = sub_1D5C92A8C(v34);
      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5C92A8C(v8);
  }

  return result;
}

void sub_1D5D07D58(char **result, __int128 *a2)
{
  v5 = a2[5];
  v16[4] = a2[4];
  v16[5] = v5;
  v16[6] = a2[6];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 62;
  v16[2] = a2[2];
  v16[3] = v7;
  if (v9)
  {
    v10 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    if (v9 == 1)
    {
      v11 = *(v10 + 64);
      if (v11 != 255)
      {
        v13 = *(v10 + 48);
        v12 = *(v10 + 56);
        sub_1D5E433CC(v13, v12, *(v10 + 64));
        sub_1D5E43440(v13, v12, v11);
      }
    }

    else
    {
      v14 = *(v10 + 24);
      swift_retain_n();

      sub_1D5D07D58(result, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D6E6B7BC(result, v16, v14);
      }
    }
  }

  else
  {
    sub_1D5D07EBC(result, a2);
  }
}

double sub_1D5D07EBC(char **result, __int128 *a2)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 96);
  if (v6 > 0xFF || (sub_1D5F586A4(*(v2 + 32), *(v2 + 40), v6, 0), sub_1D5D0350C(result, a2), , !v3))
  {
    if ((~v7 & 0xF000000000000007) == 0 || (, , sub_1D5CF6480(result, a2, sub_1D5CF9A24), , , !v3))
    {
      if ((~v8 & 0xF000000000000007) != 0)
      {
        sub_1D5F33D5C(v8);
        sub_1D62B2DE8(result, a2);
        return sub_1D5F33D8C(v8);
      }
    }
  }

  return v9;
}

char **sub_1D5D07FF0(char **result, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = (a3 + 40);
    v41 = result;
    while (1)
    {
      v9 = *v8;
      *&v43[0] = *(v8 - 1);
      v10 = a2[5];
      v49 = a2[4];
      v50 = v10;
      v51 = a2[6];
      v11 = a2[1];
      v45 = *a2;
      v46 = v11;
      v12 = a2[3];
      v47 = a2[2];
      v48 = v12;

      swift_retain_n();
      sub_1D5CF6528(v7, &v45, v13, v14, v15, v16, v17, v18);
      if (v4)
      {
      }

      v19 = v9 >> 62;
      if ((v9 >> 62) <= 1)
      {
        break;
      }

      if (v19 != 2)
      {
        goto LABEL_21;
      }

      v26 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5D07FF0(v7, a2, v26);
      sub_1D5D0868C(v7, a2, v27, v28);
      v4 = 0;

LABEL_5:
      v8 += 2;
      if (!--v5)
      {
        return result;
      }
    }

    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *(v20 + 32);
    v43[0] = *(v20 + 16);
    v43[1] = v21;
    v22 = *(v20 + 48);
    *&v44[15] = *(v20 + 63);
    *v44 = v22;
    v23 = v43[0];
    if (v44[18])
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24 & 0xFFFFFFF8 | (*&v44[16] >> 11) & 7;
    if (v25 > 4)
    {
      if (v25 > 6)
      {
        if (v25 == 7)
        {
          v7 = v41;
          if (*&v44[16] >> 14 >= 2u)
          {
            switch((*&v44[16] >> 7) & 0xE | (*&v44[16] >> 3) & 1)
            {
              case 1:
              case 5:
              case 6:
              case 7:
              case 9:
              case 0xA:
              case 0xB:
              case 0xD:
LABEL_42:
                sub_1D5D085FC(v43);
                break;
              case 2:
                switch(v44[16] >> 4)
                {
                  case 1:
                  case 2:
                  case 4:
                  case 5:
                  case 6:
                  case 7:
                  case 10:
                  case 11:
                    goto LABEL_42;
                  case 8:
                    goto LABEL_55;
                  default:
                    goto LABEL_21;
                }

              case 0xC:
LABEL_55:

                sub_1D5D085FC(v43);

                goto LABEL_22;
              default:
                break;
            }
          }
        }

        else
        {
          v7 = v41;
        }

LABEL_21:

        goto LABEL_22;
      }

      if (v25 == 5)
      {
        goto LABEL_4;
      }

      if (!(BYTE8(v21) >> 6) || BYTE8(v21) >> 6 == 1)
      {
        goto LABEL_35;
      }

      v30 = BYTE8(v21) & 0x3F;
      if (v30 > 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v25 > 1)
      {
        if (v25 != 3)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }

      if (v25)
      {
        goto LABEL_4;
      }

      v29 = (DWORD2(v21) >> 3) & 7;
      if (v29 <= 1)
      {
        if (v29)
        {
LABEL_3:
          sub_1D5D085FC(v43);
LABEL_4:

          v7 = v41;
          goto LABEL_5;
        }

        v31 = v21;
        if (v21 <= 1u)
        {
          if (v21)
          {
            v7 = v41;
            if ((~*&v43[0] & 0xF000000000000007) != 0)
            {
              v52 = *&v43[0];
              v35 = a2[5];
              v49 = a2[4];
              v50 = v35;
              v51 = a2[6];
              v36 = a2[1];
              v45 = *a2;
              v46 = v36;
              v37 = a2[3];
              v47 = a2[2];
              v48 = v37;

              sub_1D62B5248(v43, v42);
              sub_1D5CFCFAC(v23);
              sub_1D5CFEE30(v41, &v45);
              sub_1D5D085FC(v43);

              goto LABEL_5;
            }

            goto LABEL_21;
          }

          goto LABEL_3;
        }

LABEL_48:
        if (v31 == 2)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      if (v29 == 2 || v29 == 3 || !(BYTE8(v21) >> 6) || BYTE8(v21) >> 6 == 1)
      {
LABEL_35:
        v31 = v21;
        if (v21 <= 1u)
        {
          if (v21)
          {
            v7 = v41;
            if ((~*&v43[0] & 0xF000000000000007) != 0)
            {
              v52 = *&v43[0];
              v32 = a2[5];
              v49 = a2[4];
              v50 = v32;
              v51 = a2[6];
              v33 = a2[1];
              v45 = *a2;
              v46 = v33;
              v34 = a2[3];
              v47 = a2[2];
              v48 = v34;

              sub_1D62B5248(v43, v42);
              sub_1D5CFCFAC(v23);
              goto LABEL_39;
            }

            goto LABEL_21;
          }

          goto LABEL_3;
        }

        goto LABEL_48;
      }

      v30 = BYTE8(v21) & 7;
      if (v30 > 1)
      {
LABEL_30:
        if (v30 == 2)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v30)
    {
      if ((~*(&v43[0] + 1) & 0xF000000000000007) != 0)
      {
        v52 = *(&v43[0] + 1);
        v38 = a2[5];
        v49 = a2[4];
        v50 = v38;
        v51 = a2[6];
        v39 = a2[1];
        v45 = *a2;
        v46 = v39;
        v40 = a2[3];
        v47 = a2[2];
        v48 = v40;

        sub_1D62B5248(v43, v42);
        sub_1D5CFCFAC(*(&v23 + 1));
        v7 = v41;
LABEL_39:
        sub_1D5CFEE30(v7, &v45);
        sub_1D5D085FC(v43);

LABEL_22:

        goto LABEL_5;
      }

      goto LABEL_4;
    }

    goto LABEL_3;
  }

  return result;
}

unint64_t sub_1D5D085B4(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 2)
  {
    if (v1 > 2)
    {
      return result;
    }
  }

  if (v1 == 3 || v1 == 4 || v1 == 5)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatTagBindingV7CommandO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1D5D0868C(char **result, __int128 *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5D07FF0(result, a2, v6);
      if (!v4)
      {
        sub_1D5D0868C(result, a2, v7, v10);
      }
    }
  }

  else if (v5)
  {
    sub_1D5CF6D20(result, a2, a3, a4);
  }
}

unint64_t sub_1D5D08784(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v30[4] = a2[4];
  v30[5] = v7;
  v30[6] = a2[6];
  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v30[2] = a2[2];
  v30[3] = v9;
  swift_beginAccess();
  v29 = v2[11];
  sub_1D5C82CD8(v29);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  result = sub_1D5C92A8C(v29);
  if (!v3)
  {
    swift_beginAccess();
    v17 = v2[12];

    sub_1D5CF9258(a1, v30, v17, v18, v19, v20, v21, v22);

    v23 = v4[18];
    if (v23)
    {
      v24 = v4[22];
      v31 = v4[23];
      v26 = v4[20];
      v25 = v4[21];
      v27 = v4[19];
      sub_1D62A42E0();
      sub_1D5EB1D80(v23, v27, v26, v25, v24, v31);

      sub_1D5CBF568(v24);
    }

    swift_beginAccess();
    v28 = v4[13];

    sub_1D5CF6090(a1, v30, v28);
  }

  return result;
}

__n128 sub_1D5D089A8(char **result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = v4[4];
  v11 = (*(v4 + 106) >> 1) & 8 | (*(v4 + 52) >> 13);
  if (v11 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v11) & 0x1BC) != 0 || v11 == 1)
  {
    return v17;
  }

  if (v11 == 6)
  {
    if (v6 >> 62 == 1)
    {
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      *&v25 = v14;
      *(&v25 + 1) = v13;
      v15 = result;
      v16 = a2;
      sub_1D62A8874(result, a2);
      if (v5)
      {
        return v17;
      }

      result = v15;
      a2 = v16;
    }

    if ((v7 & 0xFE) != 0xC && (v9 & 0xC000000000000000) == 0x4000000000000000)
    {
      v18 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v25 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v25 + 1) = v18;
      sub_1D62A8874(result, a2);
    }
  }

  else
  {
LABEL_12:
    v19 = v4[5];
    v20 = (v19 >> 1) & 0xF;
    if (v20 <= 3)
    {
      if (v20 >= 2)
      {
        if (v20 == 2)
        {
          v17.n128_f64[0] = sub_1D62A98C8(result, a2, a3, a4);
        }

        else
        {
          v32 = *v4;
          v33 = v7;
          v34 = v9;
          v35 = v8;
          v22 = a2[5];
          v29 = a2[4];
          v30 = v22;
          v31 = a2[6];
          v23 = a2[1];
          v25 = *a2;
          v26 = v23;
          v24 = a2[3];
          v27 = a2[2];
          v28 = v24;
          sub_1D6AC6E60(result, &v25, a3, a4);
        }
      }
    }

    else if (v20 - 4 >= 4 && v20 == 8)
    {
      *&v25 = *v4;
      *(&v25 + 1) = v7;
      *&v26 = v9;
      *(&v26 + 1) = v8;
      *&v27 = v10;
      BYTE8(v27) = v19 & 1;
      v17.n128_f64[0] = sub_1D62A99A4(result, a2, a3, a4);
    }
  }

  return v17;
}

uint64_t sub_1D5D08B44(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v30[4] = a2[4];
  v30[5] = v7;
  v30[6] = a2[6];
  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v30[2] = a2[2];
  v30[3] = v9;
  v24 = v2[4];
  sub_1D5C82CD8(v24);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  result = sub_1D5C92A8C(v24);
  if (!v3)
  {
    swift_beginAccess();
    v17 = v2[5];

    sub_1D5CF9258(a1, v30, v17, v18, v19, v20, v21, v22);

    v23 = v4[6];
    if (v23)
    {
      v25 = v4[7];
      v26 = v4[8];
      v27 = v4[9];
      v28 = v4[10];
      v29 = v4[11];
      sub_1D62A42E0();
      sub_1D5EB1D80(v23, v25, v26, v27, v28, v29);

      sub_1D5CBF568(v28);
    }
  }

  return result;
}

void sub_1D5D08CB8(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v33[4] = a2[4];
  v33[5] = v7;
  v33[6] = a2[6];
  v8 = a2[1];
  v33[0] = *a2;
  v33[1] = v8;
  v9 = a2[3];
  v33[2] = a2[2];
  v33[3] = v9;
  v27 = *(v2 + 48);
  sub_1D5C82CD8(v27);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v27);
  }

  else
  {
    sub_1D5C92A8C(v27);
    swift_beginAccess();
    v16 = *(v2 + 64);

    sub_1D5CF9258(a1, v33, v16, v17, v18, v19, v20, v21);

    swift_beginAccess();
    v22 = v4[10];
    if (v22 >> 62 == 1)
    {
      v23 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[10]);
      sub_1D5EB1500(v23);

      sub_1D62A5D84(a1, v33, v23, v24, v25);
      sub_1D5EB15C4(v23);

      sub_1D5EB15C4(v22);
    }

    v26 = v4[12];
    if (v26)
    {
      v28 = v4[13];
      v29 = v4[14];
      v30 = v4[15];
      v31 = v4[16];
      v32 = v4[17];
      sub_1D62A42E0();
      sub_1D5EB1D80(v26, v28, v29, v30, v31, v32);

      sub_1D5CBF568(v31);
    }
  }
}

void sub_1D5D08EAC(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v36[4] = a2[4];
  v36[5] = v7;
  v36[6] = a2[6];
  v8 = a2[1];
  v36[0] = *a2;
  v36[1] = v8;
  v9 = a2[3];
  v36[2] = a2[2];
  v36[3] = v9;
  v30 = v2[4];
  sub_1D5C82CD8(v30);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v30);
  }

  else
  {
    sub_1D5C92A8C(v30);
    swift_beginAccess();
    v16 = v2[6];

    sub_1D5CF9258(a1, v36, v16, v17, v18, v19, v20, v21);

    if (v4[7])
    {
      sub_1D5D0434C(a1, v36);
    }

    v22 = v4[8];
    if (v22)
    {
      swift_beginAccess();
      v23 = *(v22 + 72);
      if (v23)
      {

        sub_1D6E6120C(a1, v36, v23);
      }

      swift_beginAccess();
      v24 = *(v22 + 88);

      sub_1D6E71B64(a1, v36, v24);
    }

    swift_beginAccess();
    v25 = v4[10];
    if (v25 >> 62 == 1)
    {
      v26 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[10]);
      sub_1D5EB1500(v26);

      sub_1D62A5D84(a1, v36, v26, v27, v28);
      sub_1D5EB15C4(v26);

      sub_1D5EB15C4(v25);
    }

    v29 = v4[17];
    if (v29)
    {
      v31 = v4[18];
      v32 = v4[19];
      v33 = v4[20];
      v34 = v4[21];
      v35 = v4[22];
      sub_1D62A42E0();
      sub_1D5EB1D80(v29, v31, v32, v33, v34, v35);

      sub_1D5CBF568(v34);
    }
  }
}

char **sub_1D5D09158(char **result, __int128 *a2, uint64_t a3)
{
  v17 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < 0)
      {
        v15 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D5D09E0C(v17, a2, v15);
        if (v3)
        {
        }
      }

      else if (*(v7 + 40))
      {
        v10 = *(v7 + 24);
        v9 = *(v7 + 32);
        v22 = v10;
        sub_1D5F586D0(v10, v9, 1);

        sub_1D5F586D0(v10, v9, 1);
        sub_1D6E78BF8(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
        sub_1D6E78B60();

        if (swift_dynamicCast())
        {
          v11 = v21;
          v16 = *(&v20 + 1);
          __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
          v12 = a2[5];
          v18[4] = a2[4];
          v18[5] = v12;
          v18[6] = a2[6];
          v13 = a2[1];
          v18[0] = *a2;
          v18[1] = v13;
          v14 = a2[3];
          v18[2] = a2[2];
          v18[3] = v14;
          (*(v11 + 8))(v17, v18, v16, v11);
          if (v3)
          {
            sub_1D5F5870C(v10, v9, 1);
            sub_1D5F5870C(v10, v9, 1);
            __swift_destroy_boxed_opaque_existential_1(&v19);
          }

          __swift_destroy_boxed_opaque_existential_1(&v19);
        }

        else
        {
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
          sub_1D5CF6420(&v19, sub_1D6E78BC4);
        }

        sub_1D6E60D7C(v17, a2, v9);
        sub_1D5F5870C(v10, v9, 1);
        sub_1D5F5870C(v10, v9, 1);

        if (v3)
        {
          return result;
        }
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed9FormatURLOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

char *sub_1D5D0947C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 95;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 7);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[128 * v10])
    {
      memmove(v15, v16, v10 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void sub_1D5D095B4(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v36[4] = a2[4];
  v36[5] = v7;
  v36[6] = a2[6];
  v8 = a2[1];
  v36[0] = *a2;
  v36[1] = v8;
  v9 = a2[3];
  v36[2] = a2[2];
  v36[3] = v9;
  swift_beginAccess();
  v35 = *(v2 + 32);
  sub_1D5C82CD8(v35);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v35);
  }

  else
  {
    sub_1D5C92A8C(v35);
    swift_beginAccess();
    v16 = *(v2 + 48);

    sub_1D5CF9258(a1, v36, v16, v17, v18, v19, v20, v21);

    swift_beginAccess();
    v22 = v4[8];
    if (v22 >> 62 == 1)
    {
      v23 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[8]);
      sub_1D5EB1500(v23);

      sub_1D62A5D84(a1, v36, v23, v24, v25);
      sub_1D5EB15C4(v23);

      sub_1D5EB15C4(v22);
    }

    if (v4[10])
    {
      sub_1D62A9AB4(a1, v36);
    }

    v26 = v4[15];
    if (v26)
    {
      swift_beginAccess();
      v27 = *(v26 + 72);
      if (v27)
      {

        sub_1D6E6120C(a1, v36, v27);
      }

      swift_beginAccess();
      v28 = *(v26 + 88);

      sub_1D6E71B64(a1, v36, v28);
    }

    swift_beginAccess();
    if (v4[16])
    {

      sub_1D62A9CF8(a1, v36);
    }

    v29 = v4[17];
    if (v29)
    {
      v30 = v4[21];
      v37 = v4[22];
      v32 = v4[19];
      v31 = v4[20];
      v33 = v4[18];
      sub_1D62A42E0();
      sub_1D5EB1D80(v29, v33, v32, v31, v30, v37);

      sub_1D5CBF568(v30);
    }

    swift_beginAccess();
    v34 = v4[11];

    sub_1D5CF6090(a1, v36, v34);
  }
}

uint64_t sub_1D5D09964()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1D5E62448;
  }

  else
  {

    v2 = sub_1D5D09A80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5D09A80()
{
  v1 = v0[56];
  if (v1 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    type metadata accessor for FormatServiceError(0);
    sub_1D5C2AF10(&qword_1EDF102B8, 255, type metadata accessor for FormatServiceError, &protocol conformance descriptor for FormatServiceError);
    swift_allocError();
    *v2 = v1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D5D09C48((v0 + 30));
    sub_1D5D05738((v0 + 2));

    v3 = v0[1];

    return v3();
  }

  sub_1D5D09C48((v0 + 30));
  sub_1D5D05738((v0 + 2));

  v5 = v0[1];
  v6 = v0[57];

  return v5(v6);
}

uint64_t sub_1D5D09C9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5D09DE8, 0, 0);
  }
}

char **sub_1D5D09E0C(char **result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 40; ; i += 16)
    {
      v18 = *(i - 8);
      v8 = a2[5];
      v17[4] = a2[4];
      v17[5] = v8;
      v17[6] = a2[6];
      v9 = a2[1];
      v17[0] = *a2;
      v17[1] = v9;
      v10 = a2[3];
      v17[2] = a2[2];
      v17[3] = v10;
      swift_retain_n();

      sub_1D5CF6528(v6, v17, v11, v12, v13, v14, v15, v16);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D5D09F0C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v8 = *v3;
  v7 = v3[1];
  sub_1D5D0A048(*v3);
  sub_1D5D0A008(a1, a2);
  result = sub_1D5D09FB0(v8);
  if (!v4)
  {
    sub_1D5D0A048(v7);
    sub_1D5D0A008(a1, a2);
    return sub_1D5D09FB0(v7);
  }

  return result;
}

unint64_t sub_1D5D09FB0(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t sub_1D5D0A008(uint64_t result, uint64_t a2)
{
  if (*v2 >> 61 == 3)
  {
    return sub_1D5D0A008(result, a2);
  }

  return result;
}

unint64_t sub_1D5D0A048(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t sub_1D5D0A0D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1D5E623D8;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1D5D0A238;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5D0A238()
{
  **(v0 + 24) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5D0A2B4(char **a1, __int128 *a2)
{
  v4 = v2;
  v6 = a2[5];
  v40[4] = a2[4];
  v40[5] = v6;
  v40[6] = a2[6];
  v7 = a2[1];
  v40[0] = *a2;
  v40[1] = v7;
  v8 = a2[3];
  v40[2] = a2[2];
  v40[3] = v8;
  v9 = v2[4];
  if (v9 < 0)
  {
    v16 = v9 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);

    sub_1D62A5E2C(a1, v40, v17, v18);
    if (v3)
    {

      return;
    }
  }

  v39 = v4[8];
  sub_1D5C82CD8(v39);
  sub_1D5CF9048(a1, v40, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v39);
    return;
  }

  sub_1D5C92A8C(v39);
  swift_beginAccess();
  v19 = v4[10];

  sub_1D5CF9258(a1, v40, v19, v20, v21, v22, v23, v24);

  swift_beginAccess();
  v25 = v4[13];
  if (v25 >> 62 == 1)
  {
    v26 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v4[13]);
    sub_1D5EB1500(v26);

    sub_1D62A5D84(a1, v40, v26, v27, v28);
    sub_1D5EB15C4(v26);

    sub_1D5EB15C4(v25);
  }

  v29 = v4[20];
  if (v29)
  {
    v30 = v4[24];
    v41 = v4[25];
    v32 = v4[22];
    v31 = v4[23];
    v33 = v4[21];
    sub_1D62A42E0();
    sub_1D5EB1D80(v29, v33, v32, v31, v30, v41);

    sub_1D5CBF568(v30);
  }

  v34 = v4[26];
  if (v34 < 2)
  {
    goto LABEL_16;
  }

  if (v34 != 2)
  {
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);
    v37 = v34;
    sub_1D5D0A59C(v34);
    sub_1D5D0A57C(v35);

    sub_1D62A5CE4(a1, v40, v35, v36, v38);
    sub_1D5D0A58C(v35);

    v34 = v37;
LABEL_16:
    sub_1D5D0A5AC(v34);
  }
}

unint64_t sub_1D5D0A57C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1D5D0A58C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1D5D0A59C(unint64_t result)
{
  if (result != 2)
  {
    return sub_1D5D0A57C(result);
  }

  return result;
}

unint64_t sub_1D5D0A5AC(unint64_t result)
{
  if (result != 2)
  {
    return sub_1D5D0A58C(result);
  }

  return result;
}

uint64_t sub_1D5D0A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a7 & 0x800000) != 0)
  {
    return sub_1D5E1DCFC(a1, a2, a3, a4, a5, a6, a7, BYTE2(a7) & 1, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);
  }
}

double sub_1D5D0A61C(char **result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (((*(v4 + 48) | (*(v4 + 50) << 16)) & 0x800000) != 0)
  {
    return sub_1D5CF6D20(result, a2, a3, a4);
  }

  return v5;
}

uint64_t sub_1D5D0A678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a7 & 0x800000) != 0)
  {
    return sub_1D5E1DCFC(a1, a2, a3, a4, a5, a6, a7, BYTE2(a7) & 1, sub_1D5E1DE10, sub_1D5E1DE10, sub_1D5E1DE98);
  }
}

void sub_1D5D0A704(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v43[4] = a2[4];
  v43[5] = v7;
  v43[6] = a2[6];
  v8 = a2[1];
  v43[0] = *a2;
  v43[1] = v8;
  v9 = a2[3];
  v43[2] = a2[2];
  v43[3] = v9;
  v37 = v2[6];
  sub_1D5C82CD8(v37);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v37);
  }

  else
  {
    sub_1D5C92A8C(v37);
    swift_beginAccess();
    v16 = v2[8];

    sub_1D5CF9258(a1, v43, v16, v17, v18, v19, v20, v21);

    swift_beginAccess();
    v22 = v4[9];

    sub_1D5CF4060(a1, v43, v22);

    swift_beginAccess();
    v23 = v4[11];

    sub_1D5CF6244(a1, v43, v23);

    swift_beginAccess();
    v24 = v4[12];
    if (v24 >> 62)
    {
      goto LABEL_21;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v25)
    {
      v26 = 0;
      v44 = v24 & 0xC000000000000001;
      do
      {
        if (v44)
        {
          v27 = MEMORY[0x1DA6FB460](v26, v24);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v25 = sub_1D7263BFC();
            goto LABEL_5;
          }

          v27 = *(v24 + 8 * v26 + 32);

          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_14;
          }
        }

        swift_beginAccess();
        v29 = *(v27 + 40);

        sub_1D5CF6244(a1, v43, v29);

        swift_beginAccess();
        v30 = *(v27 + 32);

        sub_1D5CF6090(a1, v43, v30);

        ++v26;
      }

      while (v28 != v25);
    }

    swift_beginAccess();
    v31 = v4[14];
    if (v31 >> 62 == 1)
    {
      v32 = *((v31 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v31 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[14]);
      sub_1D5EB1500(v32);

      sub_1D62A5D84(a1, v43, v32, v33, v34);
      sub_1D5EB15C4(v32);

      sub_1D5EB15C4(v31);
    }

    swift_beginAccess();
    v35 = v4[15];

    sub_1D5D09158(a1, v43, v35);

    v36 = v4[16];
    if (v36)
    {
      v38 = v4[17];
      v39 = v4[18];
      v40 = v4[19];
      v41 = v4[20];
      v42 = v4[21];
      sub_1D62A42E0();
      sub_1D5EB1D80(v36, v38, v39, v40, v41, v42);

      sub_1D5CBF568(v41);
    }
  }
}

uint64_t sub_1D5D0AB34(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  swift_beginAccess();
  v7 = *(v2 + 88);

  sub_1D5CF6090(a1, v9, v7);
}

uint64_t sub_1D5D0ABCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5D0ACAC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D0AC3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6FFC8F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5D0ACAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D5D0ACFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatCellSelectionO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1D5D0AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{

  a5(a1, a2);

  if (!v5)
  {

    a5(a1, a2);
  }

  return result;
}

uint64_t sub_1D5D0AE0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 81))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 80);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1D5D0AE64(uint64_t result, __int128 *a2, uint64_t a3)
{
  v10 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = a3 + 64; ; i += 40)
    {
      v12 = *(i - 24);
      v7 = a2[5];
      v11[4] = a2[4];
      v11[5] = v7;
      v11[6] = a2[6];
      v8 = a2[1];
      v11[0] = *a2;
      v11[1] = v8;
      v9 = a2[3];
      v11[2] = a2[2];
      v11[3] = v9;

      swift_retain_n();

      sub_1D5CF9A24(v10, v11);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D5D0AF9C(uint64_t result)
{
  if (result != 3)
  {
    return sub_1D5D0AFBC(result);
  }

  return result;
}

uint64_t sub_1D5D0AFAC(uint64_t result)
{
  if (result != 3)
  {
    return sub_1D5D0AFCC(result);
  }

  return result;
}

unint64_t sub_1D5D0AFBC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1D5D0AFCC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1D5D0AFDC(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a3 >= 3)
  {
    v7 = a4;
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0AFBC(v8);
    sub_1D5D0AFBC(v9);
    sub_1D5D0AFDC(v6, a2, v8, v9);
    sub_1D5D0AFCC(v8);
    result = sub_1D5D0AFCC(v9);
    if (v4)
    {
      return result;
    }

    a4 = v7;
  }

  if (a4 >= 3)
  {
    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
    sub_1D5D0AFBC(v10);
    sub_1D5D0AFBC(v11);
    sub_1D5D0AFDC(v6, a2, v10, v11);
    sub_1D5D0AFCC(v10);
    return sub_1D5D0AFCC(v11);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatCellSelectionO10BackgroundVSg(uint64_t a1)
{
  v1 = (((*(a1 + 48) >> 57) >> 4) | (8 * ((*(a1 + 48) >> 57) & 8 | *(a1 + 48) & 7))) ^ 0x7F;
  if (v1 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed11FormatColorOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7C;
  v3 = 128 - v1;
  if (v2 >= 0x74)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24FormatImageRenderingModeOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22FormatImageNodeRequestVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D5D0B200(unint64_t a1, __int128 *a2)
{
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[2];
  v23[3] = a2[3];
  v23[4] = v5;
  v8 = a2[6];
  v23[5] = v6;
  v23[6] = v8;
  v9 = a2[1];
  v23[0] = *a2;
  v23[1] = v9;
  v23[2] = v7;
  swift_beginAccess();
  v10 = *(v2 + 48);

  sub_1D5D0B414(a1, v23, v10);

  if (!v3)
  {
    if ((~*(v2 + 64) & 0xF000000000000007) != 0)
    {
      *&v21[0] = *(v2 + 64);

      sub_1D5D0491C(a1, v23, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(v2 + 72);
    if (v17)
    {
      sub_1D5D0AE64(a1, v23, v17);
    }

    v22 = *(v2 + 184);
    v18 = *(v2 + 152);
    v21[2] = *(v2 + 136);
    v21[3] = v18;
    v21[4] = *(v2 + 168);
    v19 = *(v2 + 120);
    v21[0] = *(v2 + 104);
    v21[1] = v19;
    if (v22 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(a1, v23);

      sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v20 = *(v2 + 240);
    if (v20)
    {
      sub_1D6E5E92C(a1, v23, v20);
    }
  }
}

uint64_t sub_1D5D0B414(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 13)
    {
      v8 = i[11];
      v37 = i[10];
      v38 = v8;
      v39 = i[12];
      v9 = i[7];
      v33 = i[6];
      v34 = v9;
      v10 = i[9];
      v35 = i[8];
      v36 = v10;
      v11 = i[3];
      v30 = i[2];
      v31 = v11;
      v12 = i[5];
      v32[0] = i[4];
      v32[1] = v12;
      v13 = i[1];
      v29[0] = *i;
      v29[1] = v13;
      v14 = *(&v13 + 1);
      if ((~*(&v13 + 1) & 0xF000000000000007) != 0)
      {
        v40 = *(&v13 + 1);
        v15 = a2[5];
        v27[4] = a2[4];
        v27[5] = v15;
        v27[6] = a2[6];
        v16 = a2[1];
        v27[0] = *a2;
        v27[1] = v16;
        v17 = a2[3];
        v27[2] = a2[2];
        v27[3] = v17;
        sub_1D5D0B3B8(v29, v28);
        sub_1D5D04BD4(v14);
        sub_1D5D0491C(v6, v27, v18, v19, v20, v21, v22, v23);

        if (v3)
        {
          return sub_1D5D0B670(v29);
        }
      }

      else
      {
        sub_1D5D0B3B8(v29, v28);
      }

      if (v30)
      {
        sub_1D5D0AE64(v6, a2, v30);
        if (v3)
        {
          break;
        }
      }

      if (v36 != 254)
      {
        v40 = v33;
        v24 = a2[5];
        v28[4] = a2[4];
        v28[5] = v24;
        v28[6] = a2[6];
        v25 = a2[1];
        v28[0] = *a2;
        v28[1] = v25;
        v26 = a2[3];
        v28[2] = a2[2];
        v28[3] = v26;
        sub_1D6E78A70(v32, v27, &qword_1EDF33718, &type metadata for FormatShadow);

        sub_1D5CF9A24(v6, v28);
        if (v3)
        {
          sub_1D6E78AF0(v32, &qword_1EDF33718, &type metadata for FormatShadow);

          return sub_1D5D0B670(v29);
        }

        sub_1D6E78AF0(v32, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (*(&v39 + 1))
      {
        sub_1D6E5E92C(v6, a2, *(&v39 + 1));
        result = sub_1D5D0B670(v29);
        if (v3)
        {
          return result;
        }
      }

      else
      {
        result = sub_1D5D0B670(v29);
      }

      if (!--v4)
      {
        return result;
      }
    }

    return sub_1D5D0B670(v29);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed13FormatBooleanOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5D0B6C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 312) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5D0B82C, 0, 0);
  }
}

uint64_t sub_1D5D0B82C()
{
  v1 = v0[2];
  v2 = v0[34];
  v3 = v0[3];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[39] & 0xFFFFFFFFFFFFFF8;
  v15 = *v2;
  v16 = v2[1];
  if ((v0[6] & 0x8000000000000000) != 0)
  {

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);

    MEMORY[0x1DA6F9910](v1, v3);
    v10 = v15;
    v11 = v16;
    v9 |= 0x8000000000000000;
  }

  else
  {

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);

    MEMORY[0x1DA6F9910](v1, v3);
    v10 = v15;
    v11 = v16;
  }

  v12 = v0[32];
  *v12 = v10;
  v12[1] = v11;
  v12[2] = v1;
  v12[3] = v3;
  v12[4] = v9;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v5;
  v12[8] = v8;
  v12[9] = v7;

  v13 = v0[1];

  return v13();
}

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D0BA10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1D5EA229C;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1D5D0BB78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5D0BB7C(uint64_t a1, uint64_t a2)
{
  v3[422] = v2;
  if (v2)
  {

    return MEMORY[0x1EEE6DEB0](v3 + 242, a2, sub_1D5E62010, v3 + 328);
  }

  else
  {
    v3[423] = v3[327];

    return MEMORY[0x1EEE6DEC0](v3 + 82, v3 + 333, sub_1D5D0BC2C, v3 + 352);
  }
}

uint64_t sub_1D5D0BC2C()
{
  v1[424] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E621C0, 0, 0);
  }

  else
  {
    v1[425] = v1[333];

    return MEMORY[0x1EEE6DEB8](v1 + 162);
  }
}

uint64_t sub_1D5D0BCF4()
{
  v28 = v0;
  v1 = v0[425];
  v24 = v1;
  v25 = v0[423];
  v2 = v0[387];
  v3 = v0[345];
  v4 = v0[339];
  type metadata accessor for FormatContentSubgroupNeighborsResolver();
  static FormatContentSubgroupNeighborsResolver.resolve(subgroups:)(v1, &v27);
  v26 = v27;
  v22 = *(v3 + 1);
  v23 = *v3;
  v5 = v2[5];
  v6 = sub_1D725891C();
  (*(*(v6 - 8) + 16))(&v4[v5], &v3[v5], v6);
  v7 = *&v3[v2[13]];
  v20 = *&v3[v2[15]];
  v21 = *&v3[v2[14]];
  sub_1D5CF23F8(&v3[v2[16]], &v4[v2[16]], qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
  v8 = *&v3[v2[17]];
  v19 = *&v3[v2[18]];
  v18 = v3[v2[19]];
  v9 = *&v3[v2[20]];
  v10 = *&v3[v2[6]];
  v11 = *&v3[v2[11]];
  v12 = *&v3[v2[12]];
  sub_1D5CF23F8(&v3[v2[21]], &v4[v2[21]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  *v4 = v23;
  *(v4 + 1) = v22;
  *&v4[v2[6]] = v10;
  *&v4[v2[7]] = MEMORY[0x1E69E7CC0];
  *&v4[v2[8]] = v25;
  *&v4[v2[9]] = v24;
  *&v4[v2[11]] = v11;
  *&v4[v2[13]] = v7;
  *&v4[v2[14]] = v21;
  *&v4[v2[15]] = v20;
  *&v4[v2[17]] = v8;
  *&v4[v2[18]] = v19;
  v4[v2[19]] = v18;
  *&v4[v2[20]] = v9;
  *&v4[v2[12]] = v12;
  *&v4[v2[10]] = v26;
  v13 = v19;

  swift_unknownObjectRetain();
  v14 = v21;
  swift_unknownObjectRetain();
  v15 = v8;

  return MEMORY[0x1EEE6DEB0](v0 + 242, v16, sub_1D5D0BF90, v0 + 394);
}