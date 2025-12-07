void sub_1A43D1E0C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    sub_1A43D0168(319, &unk_1EB120C50, sub_1A43D2AD0, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      sub_1A43D0100(319);
      if (v6 <= 0x3F)
      {
        sub_1A43D3090(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          sub_1A5243284();
          if (v8 <= 0x3F)
          {
            sub_1A43D0168(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
            if (v9 <= 0x3F)
            {
              sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
              if (v10 <= 0x3F)
              {
                sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v11 <= 0x3F)
                {
                  sub_1A43D0168(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
                  if (v12 <= 0x3F)
                  {
                    sub_1A43D0168(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                    if (v14 <= 0x3F)
                    {
                      type metadata accessor for LemonadeFolderMaterialTitleCell.MultiAssetViewItem(255, v4, *(a1 + 24), v13);
                      sub_1A524CB74();
                      if (v15 <= 0x3F)
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
      }
    }
  }
}

uint64_t sub_1A43D20C0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v46 = *(a3 + 16);
  v54 = *(v46 - 8);
  v3 = *(v54 + 84);
  v41 = sub_1A52429A4();
  v4 = *(v41 - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v51 = v3;
  v44 = v6;
  if (v3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  v43 = sub_1A5243284();
  v8 = *(v43 - 8);
  v42 = *(v8 + 84);
  if (v7 <= v42)
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  v45 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1A5242D14() - 8);
  v50 = *(v11 + 80);
  v12 = ((v50 + 16) & ~v50) + *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v49 = v12;
  v47 = *(sub_1A5244084() - 8);
  v13 = *(v47 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v48 = v13;
  v14 = *(sub_1A5247E04() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v54 + 64);
  v17 = *(v4 + 80);
  if (v5)
  {
    v18 = *(v4 + 64);
  }

  else
  {
    v18 = *(v4 + 64) + 1;
  }

  v19 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v20 = v17 + 8;
  v21 = v18 + 7;
  v22 = v19 + 16;
  v23 = a1;
  if (v10 < a2)
  {
    v24 = *(v47 + 80) & 0xF8 | 7;
    v25 = *(v14 + 80) & 0xF8 | 7;
    v26 = ((v15 + ((v48 + v25 + ((v24 + ((v49 + ((v50 + ((*(v8 + 64) + ((v22 + ((v21 + ((v20 + ((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v50 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v24) + 1) & ~v25) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
    v27 = v26 & 0xFFFFFFF8;
    if ((v26 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = a2 - v10 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *(a1 + v26);
        if (v31)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v31 = *(a1 + v26);
        if (v31)
        {
          goto LABEL_38;
        }
      }
    }

    else if (v30)
    {
      v31 = *(a1 + v26);
      if (v31)
      {
LABEL_38:
        v32 = v31 - 1;
        if (v27)
        {
          v32 = 0;
          LODWORD(v27) = *a1;
        }

        return v10 + (v27 | v32) + 1;
      }
    }
  }

  if (v51 == v10)
  {
    v34 = v46;
    v35 = *(v54 + 48);
    v36 = v51;
LABEL_47:

    return v35(v23, v36, v34);
  }

  v37 = ((((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v45 & 0x80000000) != 0)
  {
    v39 = (v37 + v20) & ~v17;
    if (v44 != v10)
    {
      v35 = *(v8 + 48);
      v23 = ((v22 + ((v21 + v39) & 0xFFFFFFFFFFFFFFF8)) & ~v19);
      v36 = v42;
      v34 = v43;
      goto LABEL_47;
    }

    if (v5 >= 2)
    {
      v40 = (*(v4 + 48))(v39, v5, v41);
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v38 = *v37;
  if (v38 >= 0xFFFFFFFF)
  {
    LODWORD(v38) = -1;
  }

  return (v38 + 1);
}

void sub_1A43D2598(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v38 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_1A52429A4() - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v39 = v5;
  v36 = v8;
  if (v5 <= v8)
  {
    v5 = v8;
  }

  v9 = *(sub_1A5243284() - 8);
  if (v5 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = v5;
  }

  v37 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v43 = v11;
  v12 = *(sub_1A5242D14() - 8);
  v13 = *(v12 + 80);
  v14 = ((v13 + 16) & ~v13) + *(v12 + 64);
  if (v14 <= 8)
  {
    v14 = 8;
  }

  v42 = v14;
  v40 = *(sub_1A5244084() - 8);
  v15 = *(v40 + 64);
  if (v15 <= 8)
  {
    v15 = 8;
  }

  v41 = v15;
  v16 = sub_1A5247E04();
  v17 = v7;
  v18 = 0;
  v19 = *(v16 - 8);
  if (*(v19 + 64) <= 8uLL)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v19 + 64);
  }

  v21 = *(v4 + 64);
  v22 = *(v6 + 80);
  v23 = *(v6 + 64);
  if (!v17)
  {
    ++v23;
  }

  v24 = v23 + 7;
  v25 = *(v9 + 80);
  v26 = *(v40 + 80) & 0xF8 | 7;
  v27 = *(v19 + 80) & 0xF8 | 7;
  v28 = ((v20 + ((v41 + v27 + ((v26 + ((v42 + ((v13 + ((*(v9 + 64) + ((v25 + 16 + ((v24 + ((v22 + 8 + ((((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v13 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v26) + 1) & ~v27) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v43 < a3)
  {
    if (((v20 + ((v41 + v27 + ((v26 + ((v42 + ((v13 + ((*(v9 + 64) + ((v25 + 16 + ((v24 + ((v22 + 8 + ((((v21 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v22)) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) + 8) & (v13 & 0xF8 ^ 0xFFFFFFF8)) + 24) & 0xFFFFFFF8) + 9) & ~v26) + 1) & ~v27) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a3 - v43 + 1;
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
      v18 = v30;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 > v43)
  {
    if (v28)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v43;
    }

    if (v28)
    {
      bzero(a1, v28);
      *a1 = ~v43 + a2;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(a1 + v28) = v31;
      }

      else
      {
        *(a1 + v28) = v31;
      }
    }

    else if (v18)
    {
      *(a1 + v28) = v31;
    }

    return;
  }

  v32 = a1;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v28) = 0;
  }

  else if (v18)
  {
    *(a1 + v28) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  if (v39 == v43)
  {
    v33 = *(v38 + 56);
    goto LABEL_52;
  }

  v34 = ((((a1 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v37 & 0x80000000) != 0)
  {
    v32 = ((v34 + v22 + 8) & ~v22);
    if (v36 != v43)
    {
      v33 = *(v9 + 56);
      v32 = ((v25 + 16 + ((v32 + v24) & 0xFFFFFFFFFFFFFFF8)) & ~v25);

      goto LABEL_69;
    }

    if (v17 < 2)
    {
      return;
    }

    v33 = *(v6 + 56);
LABEL_52:

LABEL_69:
    v33(v32);
    return;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v35 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v35 = a2 - 1;
  }

  *v34 = v35;
}

void sub_1A43D2B24(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A43D3090(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A43D0168(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v4 <= 0x3F)
        {
          sub_1A43D0168(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A43D0168(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
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
}

void sub_1A43D2D90(uint64_t a1)
{
  sub_1A43D0168(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A43D0168(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A43D2EEC(double a1)
{
  result = qword_1EB1232F8;
  if (!qword_1EB1232F8)
  {
    sub_1A43D2FA4(255, &qword_1EB1232F0, sub_1A43D3010, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43D30E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1232F8);
  }

  return result;
}

void sub_1A43D2FA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A43D3010(uint64_t a1)
{
  if (!qword_1EB1236A0)
  {
    sub_1A429B9D8(255);
    sub_1A43D08F8(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1236A0);
    }
  }
}

void sub_1A43D3090(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A43D30E0()
{
  result = qword_1EB1236A8;
  if (!qword_1EB1236A8)
  {
    sub_1A43D3010(255);
    sub_1A3E7440C();
    sub_1A43D3180(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1236A8);
  }

  return result;
}

uint64_t sub_1A43D3180(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A43D08F8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A43D31D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A43D320C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243B94();
    v7 = sub_1A3D712CC();
    v8 = sub_1A43D3320(&qword_1EB124D20, MEMORY[0x1E69C2818], MEMORY[0x1E69C2820]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A43D32C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43D3320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A43D3368(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1A43D2FA4(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1A43D33EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A43D3458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43D34C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43D3538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1A43D35A4()
{
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_1A43D3660(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A43D6410(0, v5);
  sub_1A43D36AC(a1, a2 + *(v6 + 44));
}

void sub_1A43D36AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1A43D60A4(0, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v4;
  sub_1A3E33808(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v28 - v8;
  v30 = sub_1A5243624();
  v29 = *(v30 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D4BD8(0);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43D4B6C(0, &qword_1EB139938, sub_1A43D4BD8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v33 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v28 - v16;
  sub_1A43D6494(0, &qword_1EB1399F8, MEMORY[0x1E697F948]);
  v39 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v28 - v18;
  v19 = sub_1A524B554();
  MEMORY[0x1EEE9AC00](v19);
  sub_1A43D4B6C(0, &unk_1EB139950, sub_1A429B8A0);
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v37 = a1;
  v21 = *a1;
  swift_getKeyPath();
  *&v44 = v21;
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
  sub_1A52415D4();

  swift_beginAccess();
  v22 = v21[8];
  if (v22)
  {
    v23 = v31;
    (*(v29 + 104))(v31, *MEMORY[0x1E69C2530], v30);
    v30 = v22;
    v24 = sub_1A3C5A374();
    sub_1A4308C80(v23, 0, v24 & 1, v12);
    sub_1A524BC74();
    sub_1A52481F4();
    v25 = (v12 + *(v32 + 36));
    v26 = v45;
    *v25 = v44;
    v25[1] = v26;
    v25[2] = *v46;
    sub_1A43D6550();
    sub_1A524AA94();
    sub_1A43D66D0(v12, sub_1A43D4BD8);
    swift_getKeyPath();
    v47 = v21;
    sub_1A52415D4();

    swift_beginAccess();
    v27 = v21[5];
    v47 = v21[4];
    v48 = v27;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D40BC()
{
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D4180(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = a2 + 1;
  v18 = sub_1A43F25C8();
  v3 = sub_1A45B40EC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1A45B4100();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *&v17 = sub_1A45B4114();
  LemonadeAccountViewSpecs.init(cornerRadius:buttonPadding:toggleButtonPadding:avatarSizeDimension:)(v2, v18, v3, v5, v7, v9, v10, v12, v14, v16, v17);
}

uint64_t sub_1A43D422C()
{
  sub_1A43D4A60(0, *v0);
  sub_1A43D4EA0(&qword_1EB139978, sub_1A43D4A60, MEMORY[0x1E6981870]);
  return sub_1A524BA54();
}

void *sub_1A43D42E4()
{
  type metadata accessor for LemonadeUserInfoViewModel(0);
  v0 = swift_allocObject();
  result = sub_1A43D506C();
  qword_1EB1EB310 = v0;
  return result;
}

uint64_t sub_1A43D4324()
{
  v0 = swift_allocObject();
  sub_1A43D506C();
  return v0;
}

uint64_t *sub_1A43D435C()
{
  if (qword_1EB1827C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB310;
}

void sub_1A43D43AC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A43D4484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A43D45D8()
{
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D469C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A43D47BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
    sub_1A52415C4();
  }

  return result;
}

id sub_1A43D4910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_1A43D49DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A43D4EE8(v1);
}

uint64_t type metadata accessor for LemonadeUserInfoViewModel(uint64_t a1)
{
  result = qword_1EB1827B0;
  if (!qword_1EB1827B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43D4A60(uint64_t a1, double a2)
{
  if (!qword_1EB139918)
  {
    sub_1A43D6494(255, &qword_1EB139920, MEMORY[0x1E697F960]);
    sub_1A43D4C38(v2);
    v3 = sub_1A524B894();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB139918);
    }
  }
}

void sub_1A43D4AE0(uint64_t a1, double a2)
{
  if (!qword_1EB139930)
  {
    sub_1A43D4B6C(255, &qword_1EB139938, sub_1A43D4BD8);
    sub_1A3E33808(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139930);
    }
  }
}

void sub_1A43D4B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5249F54();
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A43D4BD8(uint64_t a1)
{
  if (!qword_1EB139940)
  {
    type metadata accessor for PersonFaceView(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139940);
    }
  }
}

unint64_t sub_1A43D4C38(double a1)
{
  result = qword_1EB139960;
  if (!qword_1EB139960)
  {
    sub_1A43D6494(255, &qword_1EB139920, MEMORY[0x1E697F960]);
    sub_1A43D4CD4();
    sub_1A43D4D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139960);
  }

  return result;
}

unint64_t sub_1A43D4CD4()
{
  result = qword_1EB139968;
  if (!qword_1EB139968)
  {
    sub_1A43D60A4(255, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139968);
  }

  return result;
}

unint64_t sub_1A43D4D5C()
{
  result = qword_1EB139970;
  if (!qword_1EB139970)
  {
    sub_1A43D4B6C(255, &unk_1EB139950, sub_1A429B8A0);
    sub_1A43D4E28();
    sub_1A43D4EA0(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139970);
  }

  return result;
}

unint64_t sub_1A43D4E28()
{
  result = qword_1EB1285B8;
  if (!qword_1EB1285B8)
  {
    sub_1A429B8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1285B8);
  }

  return result;
}

uint64_t sub_1A43D4EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A43D4EE8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A43D4EA0(&qword_1EB129D10, type metadata accessor for LemonadeUserInfoViewModel, &unk_1A5336F08);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB120550, 0x1E695CD58);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

void *sub_1A43D506C()
{
  v1 = sub_1A524BEE4();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0xD000000000000012;
  v0[3] = 0x80000001A53C85C0;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0x4062C00000000000;
  sub_1A5241604();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v11 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A43D609C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_170;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A43D4EA0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A43D60A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v13);
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);

  return v0;
}

void sub_1A43D5474(uint64_t a1)
{
  v16[1] = a1;
  v49 = *MEMORY[0x1E69E9840];
  v1 = sub_1A524BEE4();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v16[4] = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v16[3] = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v16[2] = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A524C674();
  v32 = v4;
  v33 = sub_1A524C674();
  v34 = v5;
  v20 = sub_1A524C674();
  v35 = v20;
  v36 = v6;
  v21 = sub_1A524C674();
  v37 = v21;
  v38 = v7;
  v22 = sub_1A524C674();
  v39 = v22;
  v40 = v8;
  v23 = sub_1A524C674();
  v41 = v23;
  v42 = v9;
  v10 = sub_1A524C674();
  v24 = v11;
  v25 = v10;
  v43 = v10;
  v44 = v11;
  v12 = sub_1A524C674();
  v26 = v13;
  v27 = v12;
  v45 = v12;
  v46 = v13;
  v14 = sub_1A524C674();
  v28 = v15;
  v29 = v14;
  v47 = v14;
  v48 = v15;
  v30 = MEMORY[0x1E69E7CC0];
  sub_1A524E554();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43D5EB4()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeUserInfoViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A43D5F70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D5FD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43D6040()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;
}

void sub_1A43D60A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43D613C(uint64_t a1)
{
  result = sub_1A5241614();
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

unint64_t sub_1A43D61F4(double a1)
{
  result = qword_1EB139980;
  if (!qword_1EB139980)
  {
    sub_1A43D62A8(255, a1);
    sub_1A43D4EA0(&qword_1EB139978, sub_1A43D4A60, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139980);
  }

  return result;
}

void sub_1A43D62A8(uint64_t a1, double a2)
{
  if (!qword_1EB139988)
  {
    sub_1A43D4A60(255, a2);
    v2 = sub_1A524BA74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB139988);
    }
  }
}

double sub_1A43D630C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v1;
    sub_1A43D4EE8(v1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A43D6410(uint64_t a1, double a2)
{
  if (!qword_1EB1399F0)
  {
    sub_1A43D6494(255, &qword_1EB139920, MEMORY[0x1E697F960]);
    v2 = sub_1A52483B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1399F0);
    }
  }
}

void sub_1A43D6494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A43D60A4(255, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
    v7 = v6;
    sub_1A43D4B6C(255, &unk_1EB139950, sub_1A429B8A0);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A43D6550()
{
  result = qword_1EB139A00;
  if (!qword_1EB139A00)
  {
    sub_1A43D4BD8(255);
    sub_1A43D4EA0(&qword_1EB125BC8, type metadata accessor for PersonFaceView, &unk_1A532F3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139A00);
  }

  return result;
}

uint64_t sub_1A43D6600(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A43D4B6C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A43D666C(uint64_t a1, uint64_t a2)
{
  sub_1A3E33808(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43D66D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43D6730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A43D4B6C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A43D678C(uint64_t a1, uint64_t a2)
{
  sub_1A43D60A4(0, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43D6820(uint64_t a1)
{
  sub_1A43D60A4(0, &qword_1EB139928, sub_1A43D4AE0, MEMORY[0x1E6981F40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A43D68B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1A43D6904(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

double sub_1A43D6990(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  sub_1A43D6AFC();

  return result;
}

void (*sub_1A43D69E4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1A43D6A74;
}

void sub_1A43D6A74(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1A43D6AFC();
  }

  free(v3);
}

uint64_t sub_1A43D6AFC()
{
  v1 = v0;
  result = (*(*v0 + 96))();
  if (result)
  {
    v4 = *(result + 200);
    v5 = result;
    type metadata accessor for PeopleUtilities(0, v3);
    v6 = v4;
    v7 = sub_1A3D78460(v6);
    PeopleSorter.init(sortOrder:)(v7, &v13);
    v8 = v13;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_1A3DEF040(0, v10);
    sub_1A41216A8(v7, sub_1A43D700C, v9, &v13);
    v15 = v13;
    v16 = v14;
    (*(*v5 + 344))(&v15);
    v11 = [v6 px_localDefaults];
    v12 = swift_allocObject();
    swift_weakInit();

    sub_1A40E91F8(sub_1A43D7040, v12, &v13);

    swift_beginAccess();
    sub_1A42A5660(&v13, v1 + 24);
    return swift_endAccess();
  }

  return result;
}

uint64_t PeopleSorterController.deinit()
{
  swift_weakDestroy();
  sub_1A3C35B00(v0 + 24);
  return v0;
}

uint64_t PeopleSorterController.__deallocating_deinit()
{
  swift_weakDestroy();
  sub_1A3C35B00(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43D6D3C()
{
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return v0;
}

unint64_t sub_1A43D6D8C(uint64_t a1, uint64_t a2)
{
  result = qword_1EB139A08;
  if (!qword_1EB139A08)
  {
    sub_1A43D6DE4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139A08);
  }

  return result;
}

void sub_1A43D6DE4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB129F78)
  {
    v3 = sub_1A3DEF040(255, a2);
    v6 = type metadata accessor for PhotoKitItemListManager(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB129F78);
    }
  }
}

uint64_t sub_1A43D6E3C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

void (*sub_1A43D6ED0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 112))();
  return sub_1A3D3D728;
}

void sub_1A43D7040(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_1A524C674() == a1 && v4 == a2)
    {
    }

    else
    {
      v6 = sub_1A524EAB4();

      if ((v6 & 1) == 0)
      {

        return;
      }
    }

    v7 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A43D71A4;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_171;
    _Block_copy(aBlock);

    px_dispatch_on_main_queue();
  }
}

double sub_1A43D71A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = (*(*Strong + 96))();
    if (v2)
    {
      v4 = *(v2 + 200);
      v5 = v2;
      type metadata accessor for PeopleUtilities(0, v3);
      v6 = v4;
      v7 = sub_1A3D78460(v6);
      PeopleSorter.init(sortOrder:)(v7, &v13);
      v8 = v13;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      sub_1A3DEF040(0, v10);
      sub_1A41216A8(v7, sub_1A43D7310, v9, &v13);

      v11 = v13;
      v12 = v14;
      (*(*v5 + 344))(&v11);
    }
  }

  return result;
}

id sub_1A43D7324()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (!v1)
  {
    v2 = [*(v0 + 24) px_rootAlbumCollectionList];
  }

  v3 = v1;
  return v2;
}

uint64_t sub_1A43D7378@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1A5243834();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A5243EC4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43DD800(0, &qword_1EB127FA0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  sub_1A3C4C1B4(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_1A5242494();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A52426F4();
  v17 = sub_1A5242704();
  v18 = v17;
  v19 = v17 >> 62;
  if ((v16 & 1) == 0)
  {
    if (v19)
    {
      result = sub_1A524E2B4();
      if (!result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_11;
      }
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A59097F0](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v22 = *(v18 + 32);
    }

LABEL_11:

    v32 = 0u;
    v33 = 0u;
    v34 = 1;
    v23 = sub_1A52429A4();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    (*(v26 + 104))(v3, *MEMORY[0x1E69C2678], v27);
    sub_1A5243ED4();
    v24 = v28;
    v25 = v30;
    (*(v28 + 16))(v8, v5, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A43DD600(&qword_1EB1292A0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C1E50]);
    sub_1A43DD600(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    return (*(v24 + 8))(v5, v25);
  }

  if (!v19)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  sub_1A524E6F4();

  v20 = sub_1A52429A4();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_1A524B414();
  sub_1A52424A4();
  (*(v13 + 16))(v8, v15, v12);
  swift_storeEnumTagMultiPayload();
  sub_1A43DD600(&qword_1EB1292A0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C1E50]);
  sub_1A43DD600(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5249744();
  return (*(v13 + 8))(v15, v12);
}

char *sub_1A43D79B8(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
        swift_dynamicCast();
        v14 = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A3D3E490((v7 > 1), v8 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v8 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v8 + 32));
      }
    }

    else
    {
      v9 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v14 = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A3D3E490((v11 > 1), v12 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v12 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v12 + 32));
        ++v9;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  __break(1u);
  return result;
}

__n128 sub_1A43D7BBC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;

  v3 = sub_1A52426E4();
  v21 = v4;
  v22 = v3;
  v5 = PhotosObservableAlbum.keyAsset.getter();
  sub_1A3CA2A44(0);
  v7 = v6;
  v8 = sub_1A43DD600(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
  v9 = MEMORY[0x1E6981E70];
  v10 = MEMORY[0x1E6981E60];
  v11 = sub_1A41F7694();
  v12 = sub_1A3C5A374();
  v13 = sub_1A43C9BB4();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v17 = sub_1A43C9BD0();
  LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v25, 0, 0, v22, v21, v5, v12 & 1, sub_1A3F8B548, v23, v11, v16, v17, v9, v7, v10, v8);
  v18 = v23[5];
  *(a2 + 64) = v23[4];
  *(a2 + 80) = v18;
  *(a2 + 96) = v24;
  v19 = v23[1];
  *a2 = v23[0];
  *(a2 + 16) = v19;
  result = v23[3];
  *(a2 + 32) = v23[2];
  *(a2 + 48) = result;
  return result;
}

void sub_1A43D7D68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
    v10 = sub_1A43DD600(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
    v11 = v6;
    v12 = sub_1A42E6C64(v9, v10);
    *a3 = v8;
    a3[1] = a2;
    a3[2] = v12;
    a3[3] = v13;
    type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v14 = v6;
    if ([v14 px_isMacSyncedAlbum] && (MEMORY[0x1A590D320]() & 1) == 0)
    {
      v15 = 1;
      if (([v14 px_isMacSyncedRegularAlbum] & 1) == 0)
      {
        if ([v14 px_isMacSyncedFacesAlbum])
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }
      }

      v29 = (*(v3 + 8))();
      v16 = *(a2 + 16);
      v17 = objc_opt_self();
      v18 = sub_1A524CA14();
      v19 = sub_1A524C634();
      v20 = [v17 transientCollectionListWithCollections:v18 title:v19 identifier:0 photoLibrary:v16];

      v21 = *(a2 + 24);
      sub_1A43DBA58(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      v40 = 2;
      v22 = v20;
      v23 = v21;
      sub_1A3C6C180(&v30);
      v38 = v30;
      v39 = v31;
      sub_1A3C6C18C(&v36);
      v34 = v36;
      v35 = v37;
      v24 = sub_1A3C30368();
      LOBYTE(v20) = sub_1A3C5A374();
      v25 = sub_1A3C5A374();
      PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v38, 0, &unk_1F170A720, 0, 1, &v34, 1, &v40, v33, v24, 0, v20 & 1, v25 & 1, 0);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = v16;
      *(v26 + 24) = 0;
      *(v26 + 32) = 1;
      *(v26 + 40) = v29;
      *(v26 + 48) = 0;
      *(v26 + 49) = v15;
      v27 = v16;
      PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v22, v21, v41, v33, &v30, sub_1A43DBAC0, v26);
    }

    sub_1A42EAB60(v14, v33);
    v28 = v33[1];
    *a3 = v33[0];
    *(a3 + 1) = v28;
    type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1A43D811C(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for LemonadeNavigationDestination(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    v11 = [*(a1 + 16) px:1 fetchAncestryIncludingRoot:?];
    sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
    v12 = sub_1A524CA34();

    MEMORY[0x1EEE9AC00](v13);
    *&v17[-16] = v3;
    *&v17[-8] = a3;
    v14 = sub_1A43D831C(sub_1A43DBAC4, &v17[-32], v12);
  }

  else
  {
    sub_1A43D7D68(a1, a3, v10);
    sub_1A3C4C1B4(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52F8E10;
    sub_1A3CA2690(v10, v14 + v15, type metadata accessor for LemonadeNavigationDestination);
  }

  return v14;
}

void *sub_1A43D831C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v32 = a1;
  sub_1A3C4C1B4(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v31 = type metadata accessor for LemonadeNavigationDestination(0);
  v26 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v25 = &v23 - v11;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v13 = 0;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v29 = a3 & 0xC000000000000001;
    v14 = (v26 + 48);
    v15 = MEMORY[0x1E69E7CC0];
    v24 = a3;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v16 = MEMORY[0x1A59097F0](v13, a3, v10);
      }

      else
      {
        if (v13 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(a3 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v33 = v16;
      v32(&v33);
      if (v3)
      {

        return v15;
      }

      if ((*v14)(v7, 1, v31) == 1)
      {
        sub_1A43DD648(v7);
      }

      else
      {
        v19 = v25;
        sub_1A3CA2690(v7, v25, type metadata accessor for LemonadeNavigationDestination);
        sub_1A3CA2690(v19, v30, type metadata accessor for LemonadeNavigationDestination);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1A4249320(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_1A4249320((v20 > 1), v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        sub_1A3CA2690(v30, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for LemonadeNavigationDestination);
        a3 = v24;
      }

      ++v13;
      if (v18 == v27)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1A43D8678(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43DBA58(0, &qword_1EB12A020, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v6 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  sub_1A3C5B22C(a2, v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v5;
    v8 = v5[1];
    v10 = objc_opt_self();
    sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    v12 = sub_1A524CA14();

    v13 = [v10 fetchAssetCollectionsWithLocalIdentifiers:v12 options:v6];

LABEL_5:
    return v13;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v14 = objc_opt_self();
    PXDisplayCollectionDetailedCountsMake();
    v13 = [v14 fetchAssetCollectionsWithType:2 subtype:v15 options:v6];
    goto LABEL_5;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1A524E404();

  v18 = 0xD00000000000001BLL;
  v19 = 0x80000001A53B42A0;
  sub_1A43DD600(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C618);
  v17 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v17);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A43D8994(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if ([a1 px_isMacSyncedAlbum])
  {
    v10 = (*(v5 + 8))();
    v11 = sub_1A42E6C64(a3, a4);
    *a5 = v10;
    a5[1] = a2;
    a5[2] = v11;
    a5[3] = v12;
    v13 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(a5, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for LemonadeNavigationDestination(0);
    v15 = *(*(v14 - 8) + 56);

    v15(a5, 1, 1, v14);
  }
}

BOOL sub_1A43D8AE4(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C5B22C(a1, v4, type metadata accessor for LemonadeNavigationDestination);
  v5 = swift_getEnumCaseMultiPayload() == 23;
  sub_1A43DC9FC(v4, type metadata accessor for LemonadeNavigationDestination);
  return v5;
}

double sub_1A43D8BB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = (*(v4 + 8))();
  v10 = sub_1A42E6C64(a2, a3);
  *a4 = v9;
  a4[1] = a1;
  a4[2] = v10;
  a4[3] = v11;
  v12 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(a4, 0, 1, v12);

  return result;
}

uint64_t sub_1A43D8C88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(v2 + *(a1 + 32));
  if (v3)
  {
    v4 = a2;
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x540))();
    a2 = v4;
  }

  return sub_1A43D7378(a2);
}

uint64_t sub_1A43D8D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43DD538(&qword_1EB139AD8, &unk_1EB12A880, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

unint64_t sub_1A43D8E48(uint64_t a1)
{
  v2 = sub_1A43DD600(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A43D8EB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(a2 + 40);
  *a3 = v9;
  a3[1] = a1;
  a3[2] = v10;
  v11 = *(type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0) + 28);
  v12 = v10;
  v13 = v9;
  v14 = a1;
  v15 = sub_1A43A1BA0();
  sub_1A3C5B22C(v15, v8, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  v16 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v8, 5, v16, v17 & 1, a3 + v11);
}

uint64_t sub_1A43D8F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v11 = *(type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0) + 28);
  v12 = sub_1A43A1BA0();
  sub_1A3C5B22C(v12, v10, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  v13 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v10, 5, v13, v14 & 1, a4 + v11);
}

uint64_t sub_1A43D9070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524EC94();
  sub_1A524ECB4();
  if (a1)
  {
    v6 = a1;
    sub_1A524DC04();
  }

  type metadata accessor for LemonadePhotoLibraryContext(0, v5);
  sub_1A43DD600(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A43D916C(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_1A524ECB4();
    v3 = v2;
    sub_1A524DC04();
  }

  else
  {
    sub_1A524ECB4();
  }

  type metadata accessor for LemonadePhotoLibraryContext(0, v4);
  sub_1A43DD600(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A43D9248(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  sub_1A524ECB4();
  if (v2)
  {
    v4 = v2;
    sub_1A524DC04();
  }

  type metadata accessor for LemonadePhotoLibraryContext(0, v3);
  sub_1A43DD600(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A43D9390()
{
  v1 = *((*(**(v0 + 16) + 280))() + 16);
  v2 = v1;

  if (v1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 localizedTitle];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1A524C674();

        return v6;
      }
    }
  }

  return 0;
}

BOOL sub_1A43D9464()
{
  v1 = *((*(**(v0 + 16) + 280))() + 16);
  v2 = v1;

  if (v1)
  {
  }

  return v1 != 0;
}

void *sub_1A43D94E0()
{
  v1 = *((*(**(v0 + 16) + 280))() + 16);
  v2 = v1;

  return v1;
}

uint64_t sub_1A43D9684()
{

  v1 = OBJC_IVAR____TtCV12PhotosUICore30LemonadeMacSyncedAlbumsFeature24CollectionContainerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43D97F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeMacSyncedAlbumsFeature.CollectionContainerModel(0);
  sub_1A43DD600(&unk_1EB139AA0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.CollectionContainerModel, &unk_1A5337188);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A43D9874@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeMacSyncedAlbumsFeature.CollectionContainerModel(0);
  result = sub_1A524E434();
  *a2 = result;
  return result;
}

void sub_1A43D98B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x1C8);
    v11 = v8;
    if (v10() == 2)
    {
      (*((*v9 & *v11) + 0x210))(&v25);
      if (v25 == 1)
      {
        v12 = sub_1A437C7D4();
      }

      else
      {
        v12 = sub_1A437C79C();
      }

      sub_1A3C5B22C(v12, a2, type metadata accessor for LemonadeFeedBodyStyle);
    }

    else
    {
      v20 = sub_1A43A1BA0();
      sub_1A3C5B22C(v20, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      v21 = sub_1A3DC1AF8();
      sub_1A437C3B8(v7, 5, v21, v22 & 1, a2);
    }
  }

  else
  {
    if (*(a1 + *(type metadata accessor for LemonadeFeedStyleOptions(0) + 20)) - 4 >= 3)
    {
      sub_1A3C41FE8(0, 0, 2, v7);
      v14 = sub_1A3DC1AF8();
      v16 = v23 & 1;
      v17 = a2;
      v18 = v7;
      v19 = 6;
    }

    else
    {
      v13 = sub_1A43A1BA0();
      sub_1A3C5B22C(v13, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      v14 = sub_1A3DC1AF8();
      v16 = v15 & 1;
      v17 = a2;
      v18 = v7;
      v19 = 5;
    }

    sub_1A437C3B8(v18, v19, v14, v16, v17);
  }
}

uint64_t sub_1A43D9AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_1A3C4C1B4(0, &qword_1EB124DD0, sub_1A43DC1C8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v37 - v5;
  sub_1A43DC25C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43DD800(0, &qword_1EB139A30, sub_1A43DC344, sub_1A43DC25C, MEMORY[0x1E697F948]);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = v37 - v11;
  v12 = sub_1A5243284();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0);
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43DC344(0);
  v45 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + 16);
  if (v22)
  {
    v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x540);
    v40 = v8;
    v38 = v19;
    v39 = v22;
    v23();
    v47 = a1;

    sub_1A52426E4();
    v37[1] = v24;
    sub_1A3C5B22C(v2, v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);
    v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_1A3CA2690(v17, v27 + v25, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);
    *(v27 + v26) = a1;
    (*(v13 + 104))(v42, *MEMORY[0x1E69C23E0], v12);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3CA2A44(0);
    sub_1A43DD800(0, &unk_1EB127ED0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A43DD600(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    sub_1A43DC444();
    sub_1A5242AA4();
    v28 = v38;
    v29 = v45;
    (*(v38 + 16))(v46, v21, v45);
    swift_storeEnumTagMultiPayload();
    sub_1A43DD600(&qword_1EB139A40, sub_1A43DC344, MEMORY[0x1E69C20C8]);
    sub_1A43DD600(&qword_1EB139A48, sub_1A43DC25C, &unk_1A536F5E8);
    sub_1A5249744();

    return (*(v28 + 8))(v21, v29);
  }

  else
  {
    v47 = a1;
    sub_1A43DC1C8(0);
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    sub_1A3CA2A44(0);
    v33 = v32;
    v34 = sub_1A43DD600(&qword_1EB129230, sub_1A3CA2A44, MEMORY[0x1E69C1F80]);
    v35 = sub_1A43DD600(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);

    v36 = v40;
    sub_1A48C88E8(&v47, v6, v33, v34, v35, v40);
    sub_1A3C5B22C(v36, v46, sub_1A43DC25C);
    swift_storeEnumTagMultiPayload();
    sub_1A43DD600(&qword_1EB139A40, sub_1A43DC344, MEMORY[0x1E69C20C8]);
    sub_1A43DD600(&qword_1EB139A48, sub_1A43DC25C, &unk_1A536F5E8);
    sub_1A5249744();
    return sub_1A43DC9FC(v36, sub_1A43DC25C);
  }
}

void sub_1A43DA290(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    *a3 = v6;
    a3[1] = a2;
    a3[2] = 0;
    a3[3] = 0xE000000000000000;
    type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    v7 = v5;
  }

  else
  {
    if ((MEMORY[0x1A590D320]() & 1) == 0)
    {
      v8 = objc_opt_self();
      v9 = [v8 fetchCollectionListsContainingCollection:v5 options:0];
      v10 = [v9 firstObject];

      if ([v5 px_isMacSyncedFacesAlbum])
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      v12 = *(a2 + 16);
      v13 = sub_1A524CA14();
      v14 = sub_1A524C634();
      v15 = [v8 transientCollectionListWithCollections:v13 title:v14 identifier:0 photoLibrary:v12];

      v16 = *(a2 + 24);
      sub_1A43DBA58(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      v35 = 2;
      v17 = v15;
      v18 = v16;
      sub_1A3C6C180(&v25);
      v33 = v25;
      v34 = v26;
      sub_1A3C6C18C(&v31);
      v29 = v31;
      v30 = v32;
      v19 = sub_1A3C30368();
      LOBYTE(v15) = sub_1A3C5A374();
      v20 = sub_1A3C5A374();
      PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v33, 0, &unk_1F170A770, 0, 1, &v29, 1, &v35, v28, v19, 0, v15 & 1, v20 & 1, 0);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v21 = swift_allocObject();
      *(v21 + 16) = v12;
      *(v21 + 24) = 0;
      *(v21 + 32) = 1;
      *(v21 + 40) = v10;
      *(v21 + 48) = 0;
      *(v21 + 49) = v11;
      v22 = v12;
      v23 = v10;
      PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v17, v16, v36, v28, &v25, sub_1A43DD8B0, v21);
    }

    sub_1A42EAB60(v5, v28);
    v24 = v28[1];
    *a3 = v28[0];
    *(a3 + 1) = v24;
    type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1A43DA5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v46 = a2;
  sub_1A424ADF0(0, a3);
  v45 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43DC654(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43DD800(0, &unk_1EB139A68, sub_1A43DC654, sub_1A424ADF0, MEMORY[0x1E697F960]);
  v44 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  LOBYTE(v47) = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v50 = 3;
  sub_1A424B564();
  if (sub_1A524C594())
  {
    sub_1A43DC728(0, &qword_1EB128070, MEMORY[0x1E697C280]);
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    v21 = v5;
    v22 = sub_1A424AEF8();
    MEMORY[0x1A5904CD0](v11, v9, v22);
    sub_1A43DC728(255, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent);
    v24 = v23;
    v25 = sub_1A43DC788(&qword_1EB139A60, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent, &unk_1A534FE20);
    v47 = v24;
    v48 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = v9;
    v48 = v22;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = v45;
    MEMORY[0x1A5904CF0](v7, v13, v45, OpaqueTypeConformance2, v27);
    (*(v21 + 8))(v7, v28);
    sub_1A43DC9FC(v11, sub_1A424AE74);
  }

  else
  {
    PXDisplayCollectionDetailedCountsMake();
    v30 = v29;
    v47 = v29;
    v48 = v31;
    v49 = v32;
    sub_1A43DC728(0, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent);
    v34 = v33;
    v35 = sub_1A43DC788(&qword_1EB139A60, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent, &unk_1A534FE20);
    MEMORY[0x1A5904CD0](&v47, v34, v35);
    v47 = v34;
    v48 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_1A424AEF8();
    v47 = v9;
    v48 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904CE0](v16, v13, v45, v36, v38);

    (*(v14 + 8))(v16, v13);
  }

  v39 = sub_1A43DC7CC();
  v40 = v46;
  MEMORY[0x1A5904CD0](v19, v44, v39);
  sub_1A3CF9988(v19);
  sub_1A43DC934(0);
  return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
}

uint64_t sub_1A43DAB4C()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = [v1 px_localizedTitle];
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {

    return sub_1A3C38BD4(0xD000000000000020);
  }
}

uint64_t sub_1A43DAC18@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    type metadata accessor for LemonadeMacSyncedAlbumsFeature.CollectionContainerModel(0);
    swift_allocObject();
    sub_1A43DC0B4(v2);
  }

  result = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  a1[3] = 0;
  a1[4] = 0;
  return result;
}

uint64_t sub_1A43DACE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x540))();
    a1 = v3;
  }

  return sub_1A43D7378(a1);
}

id sub_1A43DAD6C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

void sub_1A43DADB4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    sub_1A43DBA58(0, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
    v4 = v6;
    v5 = sub_1A43DD538(&qword_1EB12A8A0, &unk_1EB12A880, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
  }

  a2[3] = v4;
  a2[4] = v5;
  *a2 = v3;
}

uint64_t sub_1A43DAE94(__n128 a1)
{
  result = sub_1A52426E4();
  if (!v2)
  {
    return sub_1A3C38BD4(0xD000000000000022);
  }

  return result;
}

uint64_t sub_1A43DAED8()
{
  sub_1A43DD600(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider, &unk_1A53371C0);

  return sub_1A3C47918();
}

void sub_1A43DAF44(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5, int a6, int a7)
{
  HIDWORD(v47) = a7;
  LODWORD(v48) = a6;
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v17 = [a2 photoLibrary];
  if (!v17)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 hasITunesSyncedContent];

  if ((v19 & 1) != 0 || (sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328), v20 = [swift_getObjCClassFromMetadata() sharedInstance], v21 = objc_msgSend(v20, sel_simulateFromMyMacAlbums), v20, v21))
  {
    sub_1A43DBA58(0, &qword_1EB12A020, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
    v22 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
    v23 = v22;
    if ((a4 & 1) == 0)
    {
      [v22 setFetchLimit_];
    }

    v24 = [v16 px_rootAlbumCollectionList];
    if (a5)
    {
      v25 = a5;
      if (([v25 isEqual_] & 1) == 0)
      {
        v40 = objc_opt_self();
        v41 = v23;
        [v40 fetchCollectionsInCollectionList:v25 options:v41];

        return;
      }
    }

    if (v48)
    {
      v26 = objc_opt_self();
      v27 = [v16 librarySpecificFetchOptions];
      v48 = v26;
      v28 = [v26 fetchRootAlbumCollectionListWithOptions_];

      v29 = [v28 firstObject];
      if (v29)
      {
        v30 = objc_opt_self();
        v31 = [v16 librarySpecificFetchOptions];
        v32 = [v30 fetchCollectionsInCollectionList:v29 options:v31];

        v33 = swift_allocObject();
        *(v33 + 16) = MEMORY[0x1E69E7CC0];
        aBlock[4] = sub_1A43DD6D4;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3F90354;
        aBlock[3] = &block_descriptor_172;
        v34 = _Block_copy(aBlock);

        [v32 enumerateObjectsUsingBlock_];
        _Block_release(v34);
        swift_beginAccess();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      goto LABEL_27;
    }

    if (BYTE4(v47) > 1u)
    {
      if (BYTE4(v47) == 2)
      {
        v42 = objc_opt_self();
        v43 = v23;
        v44 = [v42 fetchAssetCollectionsWithType:1 subtype:4 options:v43];
      }

      else
      {
        v46 = objc_opt_self();
        v43 = v23;
        v44 = [v46 fetchAssetCollectionsWithType:1 subtype:3 options:v43];
      }
    }

    else
    {
      if (!BYTE4(v47))
      {
        sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
        sub_1A3FEE19C(v23);

LABEL_24:
        return;
      }

      v45 = objc_opt_self();
      v43 = v23;
      v44 = [v45 fetchAssetCollectionsWithType:1 subtype:5 options:v43];
    }

    v44;

    goto LABEL_24;
  }

  v35 = sub_1A3C5C42C();
  (*(v12 + 16))(v15, v35, v11);
  v36 = sub_1A5246F04();
  v37 = sub_1A524D264();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1A3C1C000, v36, v37, "Mac Synced Albums: Skipping loading albums as we have no synced assets", v38, 2u);
    MEMORY[0x1A590EEC0](v38, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v39 = [objc_opt_self() emptyFetchResultWithPhotoLibrary:v16 fetchType:*MEMORY[0x1E6978DA0]];
}

id sub_1A43DB5E8()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 macSyncedAlbumsCollectionList];

  return v2;
}

uint64_t sub_1A43DB640(void *a1, void *a2, char a3, uint64_t a4, char a5)
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  v11 = [v10 simulateEmptyShelves];

  if (!v11)
  {
    v34 = a5;
    v15 = a1[5];
    if (v15)
    {
      v16 = MEMORY[0x1E69E7D40];
      v17 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x1C8);
      v18 = v15;
      if (v17() == 2)
      {
        (*((*v16 & *v18) + 0x210))(v38);
        LOBYTE(v46) = v38[0];
        LOBYTE(v35) = 1;
        v19 = static PickerMode.== infix(_:_:)(&v46, &v35);

        if (v19)
        {
          v20 = 0;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v20 = 1;
LABEL_9:
    v21 = a1[2];
    v22 = objc_opt_self();
    v23 = sub_1A524CA14();
    v24 = sub_1A524C634();
    v25 = [v22 transientCollectionListWithCollections:v23 title:v24 identifier:0 photoLibrary:v21];

    v26 = a1[3];
    sub_1A43DBA58(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 2;
    v27 = v25;
    v28 = v26;
    sub_1A3C6C180(&v35);
    v43 = v35;
    v44 = v36;
    sub_1A3C6C18C(&v41);
    v39 = v41;
    v40 = v42;
    v29 = sub_1A3C30368();
    LOBYTE(v25) = sub_1A3C5A374();
    v30 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v43, 0, &unk_1F170A6F8, 0, 1, &v39, 1, &v45, v38, v29, a3 & 1, v25 & 1, v30 & 1, 0);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v21;
    *(v31 + 24) = a4;
    *(v31 + 32) = v34 & 1;
    *(v31 + 40) = a2;
    *(v31 + 48) = v20;
    *(v31 + 49) = 0;
    v32 = a2;
    v33 = v21;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v27, v26, &v46, v38, &v35, sub_1A43DD8B0, v31);
  }

  sub_1A43DBA58(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v12 = a1[2];
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v13 = v12;
  sub_1A43FD8EC();
  return PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v13, 0, &v46);
}

void sub_1A43DBA58(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A43DBAC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *a1;
  sub_1A43DBA58(0, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
  v25 = 2;
  v6 = v5;
  sub_1A3C6C180(&v23);
  v21 = v23;
  v22 = v24;
  v7 = sub_1A42011B0();
  sub_1A3C6C18C(&v19);
  v17 = v19;
  v18 = v20;
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C30368();
  LOBYTE(v5) = sub_1A3C5A374();
  v10 = sub_1A3C5A374();
  v11 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v21, 0, v7, 0, 1, &v17, v8 & 1, &v25, v16, v9, v5 & 1, v10 & 1, v11 & 1, 0);
  v12 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
  PhotoKitItem.__allocating_init(value:options:metadata:)(v6, v16, v12);
  sub_1A43D7D68(v13, v4, a2);

  v14 = type metadata accessor for LemonadeNavigationDestination(0);
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_1A43DBC80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_1A3C52C70(0, &qword_1EB120A70, 0x1E6978760);
    v16 = a5;
    v17 = a1;
    v18 = sub_1A524DBF4();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  if ((static LemonadePhotoLibraryContext.== infix(_:_:)(a2, a6) & 1) == 0)
  {
    return 0;
  }

  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

void sub_1A43DBDAC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = [v6 transientCollectionListWithCollections:v7 title:0 identifier:0 photoLibrary:*(a2 + 16)];

  v9 = *(a2 + 24);
  sub_1A43DBA58(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 2;
  v10 = v8;
  v11 = v9;
  sub_1A3C6C180(&v20);
  v28 = v20;
  v29 = v21;
  sub_1A3C6C18C(&v26);
  v24 = v26;
  v25 = v27;
  LOBYTE(v8) = sub_1A3C5A374();
  v12 = sub_1A3C30368();
  v13 = sub_1A3C5A374();
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v28, 0, &unk_1F170A748, 0, 1, &v24, v8 & 1, &v30, v23, v12, v13 & 1, v14 & 1, v15 & 1, 0);
  v21 = 0;
  v20 = 0;
  v22 = 0;
  sub_1A3C5B22C(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1A3CA2690(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v10, v9, v31, v23, &v20, sub_1A43DD590, v17);
}

void sub_1A43DC0B4(void *a1)
{
  sub_1A5241604();
  sub_1A43DBA58(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  v2 = a1;
  sub_1A43FD8EC();
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v2, 0, v5, v3, v4, 0, 0);
}

void sub_1A43DC1C8(uint64_t a1)
{
  if (!qword_1EB124DD8)
  {
    sub_1A3CA2A44(255);
    sub_1A43DD600(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    v1 = sub_1A52430A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124DD8);
    }
  }
}

void sub_1A43DC25C(uint64_t a1)
{
  if (!qword_1EB139A20)
  {
    sub_1A3CA2A44(255);
    v3 = v2;
    v4 = sub_1A43DD600(&qword_1EB129230, sub_1A3CA2A44, MEMORY[0x1E69C1F80]);
    v5 = sub_1A43DD600(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    v8[0] = v3;
    v8[1] = MEMORY[0x1E6981E70];
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = MEMORY[0x1E6981E60];
    v6 = type metadata accessor for LemonadeAlbumCell(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB139A20);
    }
  }
}

void sub_1A43DC344(uint64_t a1)
{
  if (!qword_1EB139A38)
  {
    sub_1A3CA2A44(255);
    sub_1A43DD800(255, &unk_1EB127ED0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A43DD600(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    sub_1A43DC444();
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139A38);
    }
  }
}

unint64_t sub_1A43DC444()
{
  result = qword_1EB127EE0;
  if (!qword_1EB127EE0)
  {
    sub_1A43DD800(255, &unk_1EB127ED0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A43DD600(&qword_1EB1292A0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C1E50]);
    sub_1A43DD600(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127EE0);
  }

  return result;
}

uint64_t sub_1A43DC568@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);
  if (v4)
  {
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x540))();
  }

  return sub_1A43D7378(a1);
}

void sub_1A43DC654(uint64_t a1)
{
  if (!qword_1EB139A50)
  {
    sub_1A43DC728(255, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent);
    sub_1A43DC788(&qword_1EB139A60, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent, &unk_1A534FE20);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139A50);
    }
  }
}

void sub_1A43DC728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A43DC788(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A43DC728(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A43DC7CC()
{
  result = qword_1EB139A78;
  if (!qword_1EB139A78)
  {
    sub_1A43DD800(255, &unk_1EB139A68, sub_1A43DC654, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A43DC728(255, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent);
    sub_1A43DC788(&qword_1EB139A60, &qword_1EB139A58, type metadata accessor for LemonadeAlbumToolbarContent, &unk_1A534FE20);
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74(255);
    sub_1A424AEF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139A78);
  }

  return result;
}

void sub_1A43DC934(uint64_t a1)
{
  if (!qword_1EB139A80)
  {
    sub_1A43DD800(255, &unk_1EB139A68, sub_1A43DC654, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A43DC7CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139A80);
    }
  }
}

uint64_t sub_1A43DC9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43DCBA8(uint64_t a1)
{
  result = sub_1A43DD600(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A43DCC68()
{
  result = qword_1EB139A90;
  if (!qword_1EB139A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139A90);
  }

  return result;
}

uint64_t sub_1A43DCCBC(uint64_t a1)
{
  result = sub_1A43DD600(&qword_1EB139A98, type metadata accessor for LemonadeMacSyncedAlbumsFeature.CollectionContainerModel, &unk_1A5337148);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A43DCEA8(uint64_t a1)
{
  result = sub_1A43DD600(&unk_1EB1297D0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider, &unk_1A53371F8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A43DCF3C()
{
  result = qword_1EB13EA60;
  if (!qword_1EB13EA60)
  {
    sub_1A43DBA58(255, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    sub_1A3C3A220(&qword_1EB139AC0, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E81B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13EA60);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_42Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_index_43Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1A43DD244(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A43DBA58(319, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A3C4C1B4(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LemonadeFeedBodyStyle(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A43DD364(uint64_t a1)
{
  if (!qword_1EB125780)
  {
    sub_1A3CA2A44(255);
    v3 = v2;
    v4 = sub_1A43DD600(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
    v7[0] = MEMORY[0x1E6981E70];
    v7[1] = v3;
    v7[2] = MEMORY[0x1E6981E60];
    v7[3] = v4;
    v5 = type metadata accessor for LemonadeMaterialTitleCell(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125780);
    }
  }
}

unint64_t sub_1A43DD414()
{
  result = qword_1EB139AC8;
  if (!qword_1EB139AC8)
  {
    sub_1A43DD800(255, &qword_1EB139AD0, sub_1A43DC344, sub_1A43DC25C, MEMORY[0x1E697F960]);
    sub_1A43DD600(&qword_1EB139A40, sub_1A43DC344, MEMORY[0x1E69C20C8]);
    sub_1A43DD600(&qword_1EB139A48, sub_1A43DC25C, &unk_1A536F5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139AC8);
  }

  return result;
}

uint64_t sub_1A43DD538(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A43DBA58(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A43DD590(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A43D8678(a1, v4);
}

uint64_t sub_1A43DD600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A43DD648(uint64_t a1)
{
  sub_1A3C4C1B4(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A43DD6D4(void *a1)
{
  v2 = v1;
  if (([a1 px_isMacSyncedAlbum] & 1) != 0 || (objc_msgSend(a1, sel_px_isMacSyncedFacesFolder) & 1) != 0 || (objc_msgSend(a1, sel_px_isMacSyncedEventsFolder) & 1) != 0 || (sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328), v4 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_sharedInstance), v5 = objc_msgSend(v4, sel_simulateFromMyMacAlbums), v4, v5))
  {
    swift_beginAccess();
    v6 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
  }
}

void sub_1A43DD800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A43DD8C4()
{
  v0 = objc_opt_self();
  v1 = [v0 globalSettings];
  [v1 setSegmentationInfillAlgorithm_];

  v2 = [v0 globalSettings];
  [v2 setSegmentationInfillDilationPercent_];
}

void *ParallaxAssetCompositeImage.backgroundImage.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ParallaxAssetCompositeImage.foregroundImage.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ParallaxAssetCompositeImage.inactiveBackgroundImage.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ParallaxAssetCompositeImage.inactiveForegroundImage.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ParallaxAssetCompositeImage.debugInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v4 = *(v1 + 104);
  v10 = *(v1 + 88);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 120);
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1A43DDA74(v9, v8);
}

uint64_t sub_1A43DDA74(uint64_t a1, uint64_t a2)
{
  sub_1A43F1338(0, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ParallaxAssetCompositeImage.overlapViewConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[11];
  v10 = v1[10];
  v2 = v10;
  v11 = v3;
  v12[0] = v1[12];
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 201);
  v6 = v1[9];
  v9[0] = v1[8];
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1A406BAA8(v9, &v8);
}

void *ParallaxAssetCompositeImage.accentColor.getter()
{
  v1 = *(v0 + 240);
  v2 = v1;
  return v1;
}

void ParallaxAssetCompositeImage.colorAnalysis.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 256);
  v4 = *(v1 + 264);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 272);
  sub_1A43DDBC8(v2, v3, v4);
}

void sub_1A43DDBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t ParallaxAssetCompositeImage.init(asset:backgroundImage:foregroundImage:inactiveBackgroundImage:inactiveForegroundImage:debugInfo:overlapViewConfig:cacheKey:accentColor:isAcceptableForParallax:overlapAreaLuminance:classification:colorAnalysis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, char *a15, uint64_t a16)
{
  v16 = *a15;
  v17 = *(a16 + 16);
  v18 = *(a16 + 24);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v19 = *(a6 + 48);
  *(a9 + 72) = *(a6 + 32);
  *(a9 + 88) = v19;
  *(a9 + 104) = *(a6 + 64);
  result = *(a6 + 80);
  *(a9 + 120) = result;
  v21 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *(a9 + 56) = v21;
  v22 = a7[3];
  *(a9 + 160) = a7[2];
  *(a9 + 176) = v22;
  *(a9 + 192) = a7[4];
  *(a9 + 201) = *(a7 + 73);
  v23 = a7[1];
  *(a9 + 128) = *a7;
  *(a9 + 144) = v23;
  *(a9 + 224) = a8;
  *(a9 + 232) = a10;
  *(a9 + 240) = a11;
  *(a9 + 289) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  *(a9 + 290) = v16;
  *(a9 + 248) = *a16;
  *(a9 + 264) = v17;
  *(a9 + 272) = v18;
  if (qword_1EB1BD880 != -1)
  {
    return swift_once();
  }

  return result;
}

__n128 sub_1A43DDD04@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char *a12, uint64_t *a13)
{
  v34 = *a12;
  v32 = a13[1];
  v33 = *a13;
  v31 = a13[2];
  v30 = *(a13 + 24);
  v16 = a2;
  v17 = [v16 backgroundLayer];
  v27 = [v17 image];

  v18 = [v16 foregroundLayer];
  v19 = [v18 image];

  v20 = [v16 inactiveBackgroundLayer];
  v21 = [v20 image];

  v22 = [v16 inactiveForegroundLayer];
  v23 = [v22 image];

  *&v38[39] = a4[2];
  *&v38[55] = a4[3];
  *&v38[71] = a4[4];
  *&v38[80] = *(a4 + 73);
  *&v38[7] = *a4;
  *&v38[23] = a4[1];
  if (qword_1EB1BD880 != -1)
  {
    swift_once();
  }

  v24 = *(a3 + 48);
  *(a9 + 72) = *(a3 + 32);
  *(a9 + 88) = v24;
  *(a9 + 104) = *(a3 + 64);
  v25 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v25;
  *(a9 + 137) = *&v38[16];
  *(a9 + 121) = *v38;
  *(a9 + 201) = *&v38[80];
  *(a9 + 185) = *&v38[64];
  result = *&v38[48];
  *(a9 + 169) = *&v38[48];
  *a9 = a1;
  *(a9 + 8) = v27;
  *(a9 + 16) = v19;
  *(a9 + 24) = v21;
  *(a9 + 32) = v23;
  *(a9 + 120) = *(a3 + 80);
  *(a9 + 153) = *&v38[32];
  *(a9 + 224) = a5;
  *(a9 + 232) = a6;
  *(a9 + 240) = a7;
  *(a9 + 248) = v33;
  *(a9 + 256) = v32;
  *(a9 + 264) = v31;
  *(a9 + 272) = v30;
  *(a9 + 280) = a10;
  *(a9 + 288) = a11 & 1;
  *(a9 + 289) = a8 & 1;
  *(a9 + 290) = v34;
  return result;
}

unint64_t sub_1A43DDF90()
{
  v1 = 0x6966697373616C63;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1A43DE004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A43ED9A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A43DE02C(uint64_t a1)
{
  v2 = sub_1A43F053C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43DE068(uint64_t a1)
{
  v2 = sub_1A43F053C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A43DE0A4(void *a1)
{
  sub_1A43F05E4(0, &unk_1EB139CA0, sub_1A43F053C, &type metadata for ParallaxAssetCompositeImage.Properties.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v13 = *(v1 + 8);
  v17 = *(v1 + 16);
  v12 = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43F053C();
  sub_1A524ED34();
  v21 = 0;
  v8 = v14;
  sub_1A524E9A4();
  if (!v8)
  {
    v9 = v12;
    v15 = v13;
    v16 = v17;
    v20 = 1;
    sub_1A3E57C60();
    sub_1A524E984();
    v19 = v9;
    v18 = 2;
    sub_1A43F0590();
    sub_1A524E9D4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A43DE2B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  sub_1A43F05E4(0, &qword_1EB139CB8, sub_1A43F053C, &type metadata for ParallaxAssetCompositeImage.Properties.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43F053C();
  sub_1A524ED14();
  if (!v2)
  {
    v9 = v6;
    v10 = v15[0];
    v22 = 0;
    v18 = sub_1A524E8B4() & 1;
    v21 = 1;
    sub_1A3E57CB4();
    sub_1A524E894();
    v11 = v15[1];
    v17 = v16;
    v19 = 2;
    sub_1A43F064C();
    sub_1A524E8E4();
    (*(v9 + 8))(v8, v5);
    v13 = v20;
    v14 = v17;
    *v10 = v18;
    *(v10 + 8) = v11;
    *(v10 + 16) = v14;
    *(v10 + 17) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ParallaxAssetCompositeImage.save(toURL:)(double (*a1)(char *, uint64_t))
{
  v204 = a1;
  v230 = *MEMORY[0x1E69E9840];
  v2 = sub_1A5241144();
  v199 = *(v2 - 8);
  v200 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v189 = &v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v198 = &v173 - v5;
  v206 = sub_1A5240CB4();
  v6 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v205 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v201 = v8;
  v202 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v173 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v173 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v173 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v181 = &v173 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v194 = &v173 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v192 = &v173 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v186 = &v173 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v193 = &v173 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v188 = &v173 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v208 = &v173 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v207 = &v173 - v30;
  v31 = *v1;
  v32 = *(v1 + 8);
  v33 = *(v1 + 24);
  v184 = *(v1 + 16);
  v185 = v32;
  v183 = v33;
  v182 = *(v1 + 32);
  v34 = *(v1 + 88);
  *&v229[32] = *(v1 + 72);
  *&v229[48] = v34;
  *&v229[64] = *(v1 + 104);
  v229[80] = *(v1 + 120);
  v35 = *(v1 + 56);
  *v229 = *(v1 + 40);
  *&v229[16] = v35;
  v36 = *(v1 + 144);
  v210 = *(v1 + 128);
  v211 = v36;
  *(v214 + 9) = *(v1 + 201);
  v37 = *(v1 + 192);
  v213 = *(v1 + 176);
  v214[0] = v37;
  v212 = *(v1 + 160);
  v38 = *(v1 + 232);
  v203 = *(v1 + 224);
  v196 = v38;
  v197 = v31;
  v179 = *(v1 + 240);
  v177 = *(v1 + 280);
  LODWORD(v32) = *(v1 + 288);
  v174 = *(v1 + 289);
  v175 = *(v1 + 290);
  v176 = v32;
  v39 = [v31 uuid];
  if (!v39)
  {
    __break(1u);
  }

  v40 = v39;
  v41 = sub_1A524C674();
  v43 = v42;
  v195 = v42;

  *&v220 = v41;
  *(&v220 + 1) = v43;
  v44 = *MEMORY[0x1E6968F58];
  v45 = *(v6 + 104);
  v46 = v205;
  v47 = v206;
  v45(v205, v44, v206);
  v48 = sub_1A3D5F9DC();
  sub_1A5240E54();
  v204 = *(v6 + 8);
  v204(v46, v47);

  *&v220 = v203;
  *(&v220 + 1) = v196;
  v187 = v44;
  v191 = v6 + 104;
  v195 = v45;
  v45(v46, v44, v47);
  v49 = v207;
  v50 = v208;
  sub_1A5240E54();
  v51 = v48;
  v196 = v6 + 8;
  v204(v46, v47);
  v53 = v202 + 8;
  v52 = *(v202 + 1);
  v54 = v50;
  v55 = v201;
  v52(v54, v201);
  v56 = [v197 adjustmentTimestamp];
  v57 = v49;
  v203 = v52;
  v190 = v51;
  if (v56)
  {
    v58 = v189;
    v59 = v56;
    sub_1A52410F4();

    (*(v199 + 32))(v198, v58, v200);
    sub_1A52410D4();
    *&v220 = sub_1A524CEE4();
    *(&v220 + 1) = v60;
    *v219 = 46;
    *&v219[8] = 0xE100000000000000;
    *&v225 = 95;
    *(&v225 + 1) = 0xE100000000000000;
    v61 = sub_1A524DFD4();
    v63 = v62;
    v208 = v62;
    v57 = v207;

    *&v220 = v61;
    *(&v220 + 1) = v63;
    v64 = v55;
    v66 = v205;
    v65 = v206;
    v195(v205, v187, v206);
    v67 = v188;
    sub_1A5240E54();
    v68 = v66;
    v55 = v64;
    v69 = v65;
    v70 = v203;
    v204(v68, v69);
    (*(v199 + 8))(v198, v200);
    v70(v57, v64);

    (*(v202 + 4))(v57, v67, v64);
  }

  v208 = v53;
  v71 = [objc_opt_self() defaultManager];
  v72 = sub_1A5240D44();
  *&v220 = 0;
  v73 = [v71 removeItemAtURL:v72 error:&v220];

  v74 = v209;
  if (v73)
  {
    v75 = v220;
  }

  else
  {
    v76 = v220;
    v77 = sub_1A5240B84();

    swift_willThrow();
    v74 = 0;
  }

  v78 = sub_1A5240D44();
  *&v220 = 0;
  v79 = [v71 createDirectoryAtURL:v78 withIntermediateDirectories:1 attributes:0 error:&v220];

  if (!v79)
  {
    v112 = v220;
    sub_1A5240B84();

    swift_willThrow();
    v203(v57, v55);
    return v111 & 1;
  }

  v202 = v71;
  v209 = v74;
  v80 = v220;
  v81 = v193;
  sub_1A5240D84();
  v82 = v186;
  sub_1A5240D84();
  v83 = v192;
  sub_1A5240D84();
  v84 = v194;
  sub_1A5240D84();
  v85 = sub_1A5240D44();
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v86 = v57;
  v87 = sub_1A524C3D4();

  v88 = PFFigEncodeCVPixelBufferToURL();

  if (v88 != sub_1A5247404())
  {

    v113 = v84;
    v114 = v201;
    v115 = v203;
    v203(v113, v201);
    v115(v83, v114);
    v115(v82, v114);
    v115(v81, v114);
    v116 = v86;
LABEL_21:
    v115(v116, v114);
    v111 = 0;
    return v111 & 1;
  }

  v89 = v82;
  if (v184)
  {
    v90 = v184;
    v91 = sub_1A5240D44();
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    v92 = sub_1A524C3D4();

    v93 = PFFigEncodeCVPixelBufferToURL();

    LODWORD(v91) = sub_1A5247404();
    if (v93 != v91)
    {

      v114 = v201;
      v115 = v203;
      v203(v194, v201);
      v115(v192, v114);
      v115(v82, v114);
      v115(v193, v114);
      v116 = v207;
      goto LABEL_21;
    }
  }

  v94 = v192;
  v95 = sub_1A5240D44();
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v96 = sub_1A524C3D4();

  v97 = PFFigEncodeCVPixelBufferToURL();

  v98 = sub_1A5247404();
  v99 = v194;
  v100 = v209;
  if (v97 != v98 || v182 && (v101 = v182, v102 = sub_1A5240D44(), sub_1A3DAED90(MEMORY[0x1E69E7CC0]), v103 = sub_1A524C3D4(), , v104 = PFFigEncodeCVPixelBufferToURL(), v101, v102, v103, LODWORD(v102) = sub_1A5247404(), v101, v104 != v102))
  {

    v117 = v99;
    v118 = v201;
    v119 = v203;
    v203(v117, v201);
    v119(v94, v118);
    v119(v89, v118);
    v119(v193, v118);
    v119(v207, v118);
    v111 = 0;
    return v111 & 1;
  }

  v105 = *v229;
  v227 = *&v229[40];
  v228[0] = *&v229[56];
  *(v228 + 9) = *&v229[65];
  v225 = *&v229[8];
  v226 = *&v229[24];
  if (*v229)
  {
    sub_1A5240984();
    swift_allocObject();
    v222 = *&v229[32];
    v223 = *&v229[48];
    v224[0] = *&v229[64];
    LOBYTE(v224[1]) = v229[80];
    v220 = *v229;
    v221 = *&v229[16];
    sub_1A4055770(&v220, v219);
    sub_1A5240974();
    *v219 = v105;
    *&v219[24] = v226;
    *&v219[40] = v227;
    *&v219[56] = v228[0];
    *&v219[65] = *(v228 + 9);
    *&v219[8] = v225;
    sub_1A43EDE4C();
    v106 = sub_1A5240964();
    if (v100)
    {

      v108 = v99;
      v109 = v201;
      v110 = v203;
      v203(v108, v201);
      v110(v94, v109);
      v110(v89, v109);
      v110(v193, v109);
      v110(v207, v109);
      sub_1A43EF618(v229, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo, MEMORY[0x1E69E6720], sub_1A43F1338);
      return v111 & 1;
    }

    v127 = v106;
    v128 = v107;

    *v219 = 0x666E496775626564;
    *&v219[8] = 0xEF7473696C702E6FLL;
    v129 = *MEMORY[0x1E6968F70];
    v209 = 0;
    v130 = v205;
    v200 = v128;
    v131 = v206;
    v195(v205, v129, v206);
    v132 = v181;
    v133 = v207;
    sub_1A5240E54();
    v134 = v131;
    v135 = v200;
    v204(v130, v134);
    v136 = v209;
    sub_1A5240EB4();
    v100 = v136;
    if (v136)
    {

      sub_1A3C59280(v127, v135);
      sub_1A43EF618(v229, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo, MEMORY[0x1E69E6720], sub_1A43F1338);
      v137 = v132;
      v138 = v201;
      v139 = v203;
      v203(v137, v201);
      v139(v194, v138);
      v139(v94, v138);
      v139(v89, v138);
      v139(v193, v138);
      v139(v133, v138);
      return v111 & 1;
    }

    v151 = v132;
    v121 = v203;
    v203(v151, v201);
    sub_1A3C59280(v127, v135);
    sub_1A43EF618(v229, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo, MEMORY[0x1E69E6720], sub_1A43F1338);
  }

  else
  {
    v121 = v203;
  }

  sub_1A5240984();
  swift_allocObject();
  sub_1A5240974();
  v222 = v212;
  v223 = v213;
  v224[0] = v214[0];
  *(v224 + 9) = *(v214 + 9);
  v220 = v210;
  v221 = v211;
  sub_1A406BAA8(&v210, v219);
  sub_1A43EDDA4();
  v122 = sub_1A5240964();
  v124 = v193;
  if (v100)
  {

    *&v219[32] = v222;
    *&v219[48] = v223;
    *&v219[64] = v224[0];
    *&v219[73] = *(v224 + 9);
    *v219 = v220;
    *&v219[16] = v221;
    sub_1A406BB58(v219);
    v125 = v121;
    v126 = v201;
    v125(v194, v201);
    v125(v94, v126);
    v125(v186, v126);
    v125(v124, v126);
    v125(v207, v126);
  }

  else
  {
    *&v219[32] = v222;
    *&v219[48] = v223;
    *&v219[64] = v224[0];
    *&v219[73] = *(v224 + 9);
    *v219 = v220;
    *&v219[16] = v221;
    v200 = v122;
    v140 = v123;
    sub_1A406BB58(v219);

    v215 = 0xD00000000000001ELL;
    v216 = 0x80000001A53D4E40;
    v209 = 0;
    v141 = *MEMORY[0x1E6968F70];
    v143 = v205;
    v142 = v206;
    v195(v205, *MEMORY[0x1E6968F70], v206);
    v144 = v180;
    v145 = v207;
    sub_1A5240E54();
    v146 = v142;
    v147 = v200;
    v204(v143, v146);
    v148 = v209;
    sub_1A5240EB4();
    if (v148)
    {

      sub_1A3C59280(v147, v140);
      v149 = v201;
      v150 = v203;
      v203(v144, v201);
      v150(v194, v149);
      v150(v192, v149);
      v150(v186, v149);
      v150(v193, v149);
      v150(v145, v149);
    }

    else
    {
      LODWORD(v199) = v141;
      v209 = v140;
      v152 = v201;
      v153 = v203;
      v203(v144, v201);
      v154 = objc_opt_self();
      v215 = v179;
      sub_1A3C4B7E8(0, &qword_1EB139B08, &qword_1EB139B10, 0x1E69C0750);
      v155 = sub_1A524DF14();
      v215 = 0;
      v156 = [v154 archivedDataWithRootObject:v155 requiringSecureCoding:1 error:&v215];
      swift_unknownObjectRelease();
      v157 = v215;
      if (v156)
      {
        v198 = sub_1A5240EA4();
        v159 = v158;

        v215 = 0xD000000000000011;
        v216 = 0x80000001A53D4E60;
        v161 = v205;
        v160 = v206;
        v195(v205, v199, v206);
        v162 = v178;
        sub_1A5240E54();
        v204(v161, v160);
        sub_1A5240EB4();
        v197 = v159;
        v203(v162, v201);
        swift_allocObject();
        sub_1A5240974();
        LOBYTE(v215) = v174;
        v216 = v177;
        v217 = v176;
        v218 = v175;
        sub_1A43EDDF8();
        v164 = sub_1A5240964();
        v166 = v165;

        v215 = 0xD000000000000010;
        v216 = 0x80000001A53D4E80;
        v168 = v205;
        v167 = v206;
        v195(v205, v199, v206);
        v169 = v173;
        v170 = v207;
        sub_1A5240E54();
        v204(v168, v167);
        sub_1A5240EB4();

        sub_1A3C59280(v164, v166);
        sub_1A3C59280(v198, v197);
        sub_1A3C59280(v200, v209);
        v171 = v201;
        v172 = v203;
        v203(v169, v201);
        v172(v194, v171);
        v172(v192, v171);
        v172(v186, v171);
        v172(v193, v171);
        v172(v170, v171);
        v111 = 1;
      }

      else
      {
        v163 = v157;
        sub_1A5240B84();

        swift_willThrow();
        sub_1A3C59280(v200, v209);
        v153(v194, v152);
        v153(v192, v152);
        v153(v186, v152);
        v153(v193, v152);
        v153(v207, v152);
      }
    }
  }

  return v111 & 1;
}

void static ParallaxAssetCompositeImage.load(fromURL:asset:cacheKey:loadInactiveLayers:)(double (*a1)(char *, void *)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X8>)
{
  v91 = a5;
  v86 = a4;
  v84 = a3;
  v95 = a1;
  v77[1] = a6;
  v113 = *MEMORY[0x1E69E9840];
  v7 = sub_1A5241144();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v80 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = v77 - v10;
  v94 = sub_1A5240CB4();
  v11 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1A5240E64();
  v92 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v77[2] = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77[3] = v77 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v77[6] = v77 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v77[4] = v77 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v100 = v77 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v101 = v77 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v97 = v77 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v98 = v77 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v79 = v77 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v77 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v99 = v77 - v36;
  v85 = a2;
  v37 = [a2 uuid];
  if (!v37)
  {
    __break(1u);
  }

  v38 = v37;
  v39 = sub_1A524C674();
  v41 = v40;
  v93 = v40;

  v105 = v39;
  v106 = v41;
  v42 = *MEMORY[0x1E6968F58];
  v43 = *(v11 + 104);
  v44 = v94;
  v43(v13, v42, v94);
  v96 = sub_1A3D5F9DC();
  sub_1A5240E54();
  v95 = *(v11 + 8);
  v95(v13, v44);

  v105 = v84;
  v106 = v86;
  v78 = v42;
  v81 = v43;
  v82 = v11 + 104;
  v43(v13, v42, v44);
  v45 = v99;
  sub_1A5240E54();
  v83 = v11 + 8;
  v95(v13, v44);
  v47 = v92 + 8;
  v46 = *(v92 + 1);
  v46(v33, v102);
  v48 = [v85 adjustmentTimestamp];
  v93 = v46;
  if (v48)
  {
    v49 = v80;
    v50 = v48;
    sub_1A52410F4();

    (*(v89 + 32))(v88, v49, v90);
    sub_1A52410D4();
    v105 = sub_1A524CEE4();
    v106 = v51;
    v103 = 46;
    v104 = 0xE100000000000000;
    v107 = 95;
    v108 = 0xE100000000000000;
    v52 = sub_1A524DFD4();
    v54 = v53;
    v80 = v53;

    v105 = v52;
    v106 = v54;
    v55 = v94;
    v81(v13, v78, v94);
    v56 = v79;
    v57 = v93;
    sub_1A5240E54();
    v95(v13, v55);
    (*(v89 + 8))(v88, v90);
    v58 = v102;
    v57(v45, v102);

    (*(v92 + 4))(v45, v56, v58);
  }

  v92 = v13;
  v87 = v47;
  sub_1A5240D84();
  sub_1A5240D84();
  sub_1A5240D84();
  sub_1A5240D84();
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  v59 = sub_1A5240D44();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v61 = sub_1A524C3D4();

  sub_1A3DAED90(v60);
  v62 = sub_1A524C3D4();

  PFFigCreateCVPixelBufferFromURL();

  v63 = sub_1A5240D44();
  sub_1A3DAED90(v60);
  v64 = sub_1A524C3D4();

  sub_1A3DAED90(v60);
  v65 = sub_1A524C3D4();

  PFFigCreateCVPixelBufferFromURL();

  if (v91)
  {
    v66 = sub_1A5240D44();
    v67 = MEMORY[0x1E69E7CC0];
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    v68 = sub_1A524C3D4();

    sub_1A3DAED90(v67);
    v69 = sub_1A524C3D4();

    PFFigCreateCVPixelBufferFromURL();

    v70 = sub_1A5240D44();
    sub_1A3DAED90(v67);
    v71 = sub_1A524C3D4();

    sub_1A3DAED90(v67);
    v72 = sub_1A524C3D4();

    PFFigCreateCVPixelBufferFromURL();
  }

  v73 = v102;
  v74 = v93;
  if (v112 && (v110 || (v91 & 1) == 0))
  {
    v76 = v112;
    CVPixelBufferGetWidth(v76);
    CVPixelBufferGetHeight(v76);
    PXFloatEqualToFloatWithTolerance();
  }

  sub_1A43EDEA0();
  swift_allocError();
  *v75 = 1;
  swift_willThrow();
  v74(v100, v73);
  v74(v101, v73);
  v74(v97, v73);
  v74(v98, v73);
  v74(v99, v73);
}

uint64_t ParallaxAssetCompositeImage.LoadingError.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A43E1384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A43E1484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

uint64_t sub_1A43E14D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

id sub_1A43E1578()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

void sub_1A43E15BC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t ParallaxAssetSegmenter.__allocating_init(asset:posterClassification:viewSize:style:cacheKey:assetDirectoryURL:disableRendering:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter____lazy_storage___segmentationLoader) = 0;
  *(v20 + 16) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3 & 1;
  *(v20 + 24) = a9;
  *(v20 + 32) = a10;
  *(v20 + 64) = a6;
  *(v20 + 72) = a4;
  *(v20 + 56) = a5;
  *(v20 + 80) = a8;
  sub_1A408A03C(a7, v20 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter_assetDirectoryURL);
  return v20;
}

uint64_t ParallaxAssetSegmenter.init(asset:posterClassification:viewSize:style:cacheKey:assetDirectoryURL:disableRendering:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10)
{
  *(v10 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter____lazy_storage___segmentationLoader) = 0;
  *(v10 + 16) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3 & 1;
  *(v10 + 24) = a9;
  *(v10 + 32) = a10;
  *(v10 + 64) = a6;
  *(v10 + 72) = a4;
  *(v10 + 56) = a5;
  *(v10 + 80) = a8;
  sub_1A408A03C(a7, v10 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter_assetDirectoryURL);
  return v10;
}

uint64_t sub_1A43E17BC(uint64_t a1, uint64_t a2)
{
  v3[177] = v2;
  v3[176] = a2;
  v3[175] = a1;
  v4 = sub_1A5246F24();
  v3[178] = v4;
  v3[179] = *(v4 - 8);
  v3[180] = swift_task_alloc();
  v3[181] = swift_task_alloc();
  v3[182] = swift_task_alloc();
  v3[183] = swift_task_alloc();
  v3[184] = swift_task_alloc();
  v3[185] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43E18EC, 0, 0);
}

void sub_1A43E18EC()
{
  v34 = v0;
  v33[1] = *MEMORY[0x1E69E9840];
  v1 = v0[185];
  v2 = v0[179];
  v3 = v0[178];
  v4 = *(v0[177] + 16);
  v0[186] = v4;
  v5 = sub_1A41CDD28();
  v0[187] = v5;
  v6 = *(v2 + 16);
  v0[188] = v6;
  v0[189] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = v4;
  v8 = sub_1A5246F04();
  v9 = sub_1A524D234();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v10 = 136315138;
    v11 = [v7 uuid];
    v12 = v7;
    v13 = v11;

    if (v13)
    {
      v14 = sub_1A524C674();
      v16 = v15;

      sub_1A3C2EF94(v14, v16, v33);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v17 = v0[185];
  v18 = v0[179];
  v19 = v0[178];

  v20 = *(v18 + 8);
  v20(v17, v19);
  v0[190] = v20;
  v6(v0[184], v5, v0[178]);
  v21 = v7;
  v22 = sub_1A5246F04();
  v23 = sub_1A524D234();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v24 = 136315138;
    v25 = [v21 uuid];

    if (v25)
    {
      v26 = sub_1A524C674();
      v28 = v27;

      sub_1A3C2EF94(v26, v28, v33);
    }

    goto LABEL_11;
  }

  v29 = v0[184];
  v30 = v0[178];

  v20(v29, v30);
  v31 = swift_task_alloc();
  v0[191] = v31;
  *v31 = v0;
  v31[1] = sub_1A43E1CFC;
  v32 = v0[176];

  sub_1A43E5EE4((v0 + 66), v32);
}

uint64_t sub_1A43E1CFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1536) = a1;
  *(v3 + 1544) = v1;

  if (v1)
  {
    v4 = sub_1A43E3C64;
  }

  else
  {
    v4 = sub_1A43E1E40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1A43E1E40()
{
  v50 = v0;
  v49[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 592);
  v1 = *(v0 + 608);
  v3 = *(v0 + 576);
  *(v0 + 696) = v2;
  *(v0 + 712) = v1;
  v4 = *(v0 + 544);
  v5 = *(v0 + 528);
  v6 = v4;
  *(v0 + 632) = v5;
  *(v0 + 648) = v4;
  v8 = *(v0 + 560);
  v7 = *(v0 + 576);
  *(v0 + 664) = v8;
  *(v0 + 680) = v7;
  *(v0 + 80) = v5;
  *(v0 + 96) = v6;
  v9 = *(v0 + 608);
  *(v0 + 144) = v2;
  *(v0 + 160) = v9;
  v10 = *(v0 + 1536);
  v11 = *(v0 + 1504);
  v12 = *(v0 + 1496);
  v13 = *(v0 + 1488);
  v14 = *(v0 + 1464);
  v15 = *(v0 + 1424);
  *(v0 + 728) = *(v0 + 624);
  v16 = *(v0 + 624);
  *(v0 + 112) = v8;
  *(v0 + 128) = v3;
  *(v0 + 176) = v16;
  *(v0 + 184) = v10;
  sub_1A43EF40C(v0 + 80, v0 + 192, sub_1A43EF4D8);
  sub_1A43EF550(v0 + 632);
  sub_1A43EF40C(v0 + 80, v0 + 304, sub_1A43EF4D8);
  swift_unknownObjectRelease();
  sub_1A43EF40C(v0 + 80, v0 + 416, sub_1A43EF4D8);
  swift_unknownObjectRelease();
  v11(v14, v12, v15);
  v17 = v13;
  sub_1A43EF580(v0 + 632, v0 + 736);
  v18 = sub_1A5246F04();
  v19 = sub_1A524D264();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 1488);
    v21 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v21 = 136315650;
    v22 = [v20 uuid];
    if (v22)
    {
      v23 = v22;
      v24 = *(v0 + 1488);
      sub_1A43EF550(v0 + 632);

      v25 = sub_1A524C674();
      v27 = v26;

      sub_1A3C2EF94(v25, v27, v49);
    }

    v48 = *(v0 + 1488);
    sub_1A43EF550(v0 + 632);

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v28 = *(v0 + 1520);
  v29 = *(v0 + 1464);
  v30 = *(v0 + 1424);

  sub_1A43EF550(v0 + 632);
  v28(v29, v30);
  v31 = *(v0 + 1488);
  (*(v0 + 1504))(*(v0 + 1456), *(v0 + 1496), *(v0 + 1424));
  v32 = v31;
  v33 = sub_1A5246F04();
  v34 = sub_1A524D234();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 1488);
    v36 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v36 = 136315138;
    v37 = [v35 uuid];

    if (v37)
    {
      v38 = sub_1A524C674();
      v40 = v39;

      sub_1A3C2EF94(v38, v40, v49);
    }

    goto LABEL_11;
  }

  v41 = *(v0 + 1520);
  v42 = *(v0 + 1456);
  v43 = *(v0 + 1424);

  v41(v42, v43);
  v44 = *(v0 + 680);
  *(v0 + 872) = *(v0 + 664);
  *(v0 + 888) = v44;
  *(v0 + 904) = *(v0 + 696);
  *(v0 + 913) = *(v0 + 705);
  v45 = *(v0 + 648);
  *(v0 + 840) = *(v0 + 632);
  *(v0 + 856) = v45;
  v46 = swift_task_alloc();
  *(v0 + 1552) = v46;
  *v46 = v0;
  v46[1] = sub_1A43E2398;
  v47 = *(v0 + 1536);

  sub_1A43E840C(v0 + 840, v47);
}

uint64_t sub_1A43E2398(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1560) = a1;
  *(v3 + 1568) = v1;

  if (v1)
  {
    sub_1A43EF550(v3 + 632);
    v4 = sub_1A43E3D48;
  }

  else
  {
    v4 = sub_1A43E24EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1A43E24EC()
{
  v42 = v0;
  v41[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1560);
  if (v1)
  {
    v2 = *(v0 + 1488);
    (*(v0 + 1504))(*(v0 + 1448), *(v0 + 1496), *(v0 + 1424));
    v3 = v2;
    v4 = sub_1A5246F04();
    v5 = sub_1A524D234();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 1488);
      v7 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v7 = 136315138;
      v8 = [v6 uuid];

      if (v8)
      {
        v9 = sub_1A524C674();
        v11 = v10;

        sub_1A3C2EF94(v9, v11, v41);
      }

      __break(1u);
    }

    else
    {
      v35 = *(v0 + 1520);
      v36 = *(v0 + 1448);
      v37 = *(v0 + 1424);

      v35(v36, v37);
      v38 = swift_task_alloc();
      *(v0 + 1576) = v38;
      *v38 = v0;
      v38[1] = sub_1A43E2A50;

      sub_1A43E8898(v1);
    }
  }

  else
  {
    v12 = *(v0 + 1488);
    v13 = *(v0 + 1416);
    v14 = sub_1A43EF550(v0 + 632);
    v39 = (*(*v13 + 144))(v14);
    v16 = v15;
    v17 = [0 backgroundLayer];
    v18 = [v17 image];

    v19 = [0 foregroundLayer];
    v20 = [v19 image];

    v21 = [0 inactiveBackgroundLayer];
    v22 = [v21 image];

    v23 = [0 inactiveForegroundLayer];
    v24 = [v23 image];

    *&v40[39] = *(v0 + 664);
    *&v40[55] = *(v0 + 680);
    *&v40[71] = *(v0 + 696);
    *&v40[80] = *(v0 + 705);
    *&v40[7] = *(v0 + 632);
    *&v40[23] = *(v0 + 648);
    LOBYTE(v41[0]) = 1;
    v25 = qword_1EB1BD880;
    v26 = v12;
    v27 = v18;
    v28 = v20;
    v29 = v22;
    v30 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1488);
    v32 = *(v0 + 1400);
    swift_unknownObjectRelease();
    sub_1A43EF5B8(v0 + 80, sub_1A43EF4D8);

    v33 = v41[0];
    *v32 = v31;
    *(v32 + 8) = v27;
    *(v32 + 16) = v28;
    *(v32 + 24) = v29;
    *(v32 + 32) = v30;
    *(v32 + 153) = *&v40[32];
    *(v32 + 169) = *&v40[48];
    *(v32 + 185) = *&v40[64];
    *(v32 + 201) = *&v40[80];
    *(v32 + 121) = *v40;
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0;
    *(v32 + 137) = *&v40[16];
    *(v32 + 224) = v39;
    *(v32 + 232) = v16;
    *(v32 + 240) = 0u;
    *(v32 + 256) = 0u;
    *(v32 + 272) = 0;
    *(v32 + 280) = 0;
    *(v32 + 288) = v33;
    *(v32 + 289) = 1;

    v34 = *(v0 + 8);

    v34();
  }
}

uint64_t sub_1A43E2A50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1584) = a1;
  *(v3 + 1592) = v1;

  if (v1)
  {
    sub_1A43EF550(v3 + 632);
    sub_1A43EF550(v3 + 632);
    v4 = sub_1A43E3E5C;
  }

  else
  {
    v4 = sub_1A43E2BAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A43E2BAC()
{
  v25 = v0;
  v24[1] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if (byte_1EB1BD888 == 1)
  {
    v1 = *(v0 + 1560);
    v2 = *(v0 + 680);
    *(v0 + 968) = *(v0 + 664);
    *(v0 + 984) = v2;
    *(v0 + 1000) = *(v0 + 696);
    *(v0 + 1009) = *(v0 + 705);
    v3 = *(v0 + 648);
    *(v0 + 936) = *(v0 + 632);
    *(v0 + 952) = v3;
    v4 = swift_task_alloc();
    *(v0 + 1600) = v4;
    *v4 = v0;
    v4[1] = sub_1A43E2FBC;
    v5 = *(v0 + 1584);

    return sub_1A43EA21C(v0 + 1208, v1, v5, v0 + 936);
  }

  else
  {
    *(v0 + 1112) = 0;
    *(v0 + 1080) = 0u;
    *(v0 + 1096) = 0u;
    *(v0 + 1048) = 0u;
    *(v0 + 1064) = 0u;
    *(v0 + 1032) = 0u;
    v7 = *(v0 + 1488);
    (*(v0 + 1504))(*(v0 + 1440), *(v0 + 1496), *(v0 + 1424));
    v8 = v7;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D234();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 1488);
      v12 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v12 = 136315138;
      v13 = [v11 uuid];

      if (v13)
      {
        v15 = sub_1A524C674();
        v17 = v16;

        sub_1A3C2EF94(v15, v17, v24);
      }

      __break(1u);
    }

    else
    {
      v18 = *(v0 + 1520);
      v19 = *(v0 + 1440);
      v20 = *(v0 + 1424);

      v18(v19, v20);
      v21 = [objc_allocWithZone(MEMORY[0x1E69BDE88]) initWithLayerStack_];
      *(v0 + 1616) = v21;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 1384;
      *(v0 + 24) = sub_1A43E3434;
      v22 = swift_continuation_init();
      sub_1A4300130(0);
      *(v0 + 1352) = v23;
      *(v0 + 1328) = v22;
      *(v0 + 1296) = MEMORY[0x1E69E9820];
      *(v0 + 1304) = 1107296256;
      *(v0 + 1312) = sub_1A43F16BC;
      *(v0 + 1320) = &block_descriptor_173;
      [v21 submit_];
      v14 = v0 + 16;
    }

    return MEMORY[0x1EEE6DEC8](v14);
  }
}

uint64_t sub_1A43E2FBC()
{
  v2 = *v1;
  *(*v1 + 1608) = v0;

  if (v0)
  {
    sub_1A43EF550(v2 + 632);
    v3 = sub_1A43E3F70;
  }

  else
  {
    v3 = sub_1A43E310C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43E310C()
{
  v22 = v0;
  v21[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1256);
  *(v0 + 1064) = *(v0 + 1240);
  *(v0 + 1080) = v1;
  *(v0 + 1096) = *(v0 + 1272);
  *(v0 + 1112) = *(v0 + 1288);
  v2 = *(v0 + 1224);
  *(v0 + 1032) = *(v0 + 1208);
  *(v0 + 1048) = v2;
  v3 = *(v0 + 1488);
  (*(v0 + 1504))(*(v0 + 1440), *(v0 + 1496), *(v0 + 1424));
  v4 = v3;
  v5 = sub_1A5246F04();
  v6 = sub_1A524D234();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1488);
    v8 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v8 = 136315138;
    v9 = [v7 uuid];

    if (v9)
    {
      v11 = sub_1A524C674();
      v13 = v12;

      sub_1A3C2EF94(v11, v13, v21);
    }

    __break(1u);
  }

  else
  {
    v14 = *(v0 + 1520);
    v15 = *(v0 + 1440);
    v16 = *(v0 + 1424);

    v14(v15, v16);
    v17 = [objc_allocWithZone(MEMORY[0x1E69BDE88]) initWithLayerStack_];
    *(v0 + 1616) = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1384;
    *(v0 + 24) = sub_1A43E3434;
    v18 = swift_continuation_init();
    sub_1A4300130(0);
    *(v0 + 1352) = v19;
    *(v0 + 1328) = v18;
    *(v0 + 1296) = MEMORY[0x1E69E9820];
    *(v0 + 1304) = 1107296256;
    *(v0 + 1312) = sub_1A43F16BC;
    *(v0 + 1320) = &block_descriptor_173;
    [v17 submit_];
    v10 = v0 + 16;
  }

  return MEMORY[0x1EEE6DEC8](v10);
}

uint64_t sub_1A43E3434()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43E3540, 0, 0);
}

uint64_t sub_1A43E3540()
{
  v87 = v0;
  v86 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1384);
  *(v0 + 1392) = 0;
  v2 = [v1 result_];
  v3 = *(v0 + 1392);
  if (v2)
  {
    v4 = v2;
    v73 = v1;
    v5 = *(v0 + 1560);
    v6 = v3;
    [v4 luminance];
    v8 = v7;
    v9 = [v5 classification];
    if (v9 >= 6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v61 = *(v0 + 1584);
    v64 = *(v0 + 1488);
    v11 = *(v0 + 1416);
    v12 = [*(v0 + 1560) colorAnalysis];
    v13 = [v12 foregroundColors];
    sub_1A3C52C70(0, &qword_1EB139B10, 0x1E69C0750);
    v14 = sub_1A524CA34();

    v15 = [v12 backgroundColors];
    v16 = sub_1A524CA34();

    v68 = v12;
    v17 = [v12 clockAreaColors];
    v18 = sub_1A524CA34();

    v74 = v10;
    v76[0] = v10;
    v19 = sub_1A414D2C8(v14, v16, v18, v76, v77);
    v71 = v77[1];
    v72 = v77[0];
    v70 = v77[2];
    v69 = v78;
    v75 = ParallaxAssetColorAnalysis.bestColor.getter(v19, v20, v21, v22);
    sub_1A43EF550(v0 + 632);
    v23 = *(v0 + 728);
    v63 = *(v0 + 697);
    v24 = *(*v11 + 144);
    v25 = sub_1A43DDA74(v0 + 1032, v0 + 1120);
    v26 = v24(v25);
    v66 = v27;
    v67 = v26;
    v28 = v61;
    v29 = [v28 backgroundLayer];
    v30 = [v29 image];

    v31 = [v28 foregroundLayer];
    v32 = [v31 image];

    v33 = [v28 inactiveBackgroundLayer];
    v34 = [v33 image];

    v35 = [v28 inactiveForegroundLayer];
    v36 = [v35 image];

    v37 = *(v0 + 1080);
    v82 = *(v0 + 1064);
    v83 = v37;
    v84 = *(v0 + 1096);
    v38 = *(v0 + 1048);
    v80 = *(v0 + 1032);
    v81 = v38;
    v39 = *(v0 + 680);
    *&v79[39] = *(v0 + 664);
    *&v79[55] = v39;
    *&v79[71] = *(v0 + 696);
    *&v79[80] = *(v0 + 705);
    v40 = *(v0 + 648);
    *&v79[7] = *(v0 + 632);
    v85 = *(v0 + 1112);
    *&v79[23] = v40;
    LOBYTE(v77[0]) = 0;
    v41 = qword_1EB1BD880;
    v42 = v64;
    v65 = v30;
    v62 = v32;
    v43 = v34;
    v44 = v36;
    v45 = v75;
    if (v41 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 1616);
    v47 = *(v0 + 1584);
    v60 = *(v0 + 1488);
    v48 = *(v0 + 1400);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1A43EF5B8(v0 + 80, sub_1A43EF4D8);
    sub_1A43EF618(v0 + 1032, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo, MEMORY[0x1E69E6720], sub_1A43F1338);

    v49 = v83;
    *(v48 + 72) = v82;
    *(v48 + 88) = v49;
    *(v48 + 104) = v84;
    v50 = v81;
    *(v48 + 40) = v80;
    *(v48 + 56) = v50;
    v51 = *v79;
    *(v48 + 137) = *&v79[16];
    *(v48 + 121) = v51;
    v52 = *&v79[64];
    *(v48 + 201) = *&v79[80];
    *(v48 + 185) = v52;
    v53 = *&v79[32];
    *(v48 + 169) = *&v79[48];
    v54 = v77[0];
    *v48 = v60;
    *(v48 + 8) = v65;
    *(v48 + 16) = v62;
    *(v48 + 24) = v43;
    *(v48 + 32) = v44;
    *(v48 + 120) = v85;
    *(v48 + 153) = v53;
    *(v48 + 224) = v67;
    *(v48 + 232) = v66;
    *(v48 + 240) = v75;
    *(v48 + 248) = v72;
    *(v48 + 256) = v71;
    *(v48 + 264) = v70;
    *(v48 + 272) = v69;
    *(v48 + 273) = v77[0];
    *(v48 + 276) = *(v77 + 3);
    *(v48 + 280) = v8;
    *(v48 + 288) = v54;
    *(v48 + 289) = (v23 == 1.0) & v63;
    *(v48 + 290) = v74;

    v55 = *(v0 + 8);
  }

  else
  {
    v56 = *(v0 + 1616);
    v57 = *(v0 + 1584);
    v58 = v3;
    sub_1A43EF550(v0 + 632);
    sub_1A43EF550(v0 + 632);
    sub_1A5240B84();

    swift_willThrow();
    sub_1A43EF618(v0 + 1032, &unk_1EB139AF0, &type metadata for ParallaxAssetDebugInfo, MEMORY[0x1E69E6720], sub_1A43F1338);
    sub_1A43EF5B8(v0 + 80, sub_1A43EF4D8);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v55 = *(v0 + 8);
  }

  return v55();
}

uint64_t sub_1A43E3C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43E3D48()
{
  sub_1A43EF5B8(v0 + 80, sub_1A43EF4D8);
  swift_unknownObjectRelease();
  sub_1A43EF550(v0 + 632);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43E3E5C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1A43EF5B8(v0 + 80, sub_1A43EF4D8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43E3F70()
{
  v1 = *(v0 + 1584);
  sub_1A43EF5B8(v0 + 80, sub_1A43EF4D8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1A43EF550(v0 + 632);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t PFPosterClassification.parallaxAssetClassification.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_1A43E40A8(void *a1@<X8>)
{
  v2 = v1;
  v72 = sub_1A5246F24();
  v4 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v59 - v9;
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5240E64();
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  sub_1A43EF40C(v2 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter_assetDirectoryURL, v12, sub_1A3EE53E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A43EF5B8(v12, sub_1A3EE53E0);
    sub_1A4069344(v74);
    v23 = v74;
    v24 = a1;
LABEL_12:
    memcpy(v24, v23, 0x123uLL);
    return;
  }

  v67 = a1;
  v25 = v4;
  v26 = v14;
  (*(v14 + 32))(v22, v12, v13);
  v27 = sub_1A43E5D08(v22);
  v28 = sub_1A41CDD28();
  v68 = v25;
  v29 = *(v25 + 16);
  v30 = (v14 + 16);
  if (v27)
  {
    v31 = v70;
    v63 = v28;
    v64 = v29;
    v32 = v72;
    v29(v70);
    v33 = *v30;
    v66 = v22;
    v34 = v22;
    v35 = v31;
    v33(v19, v34, v13);

    v36 = sub_1A5246F04();
    v37 = sub_1A524D234();
    v38 = os_log_type_enabled(v36, v37);
    v71 = v13;
    if (!v38)
    {

      v65 = *(v26 + 8);
      v65(v19, v13);
      v52 = (*(v68 + 8))(v35, v32);
      v53 = v2[2];
      v54 = (*(*v2 + 18))(v52);
      v55 = v66;
      static ParallaxAssetCompositeImage.load(fromURL:asset:cacheKey:loadInactiveLayers:)(v66, v53, v54, v56, 1u, v74);
      v65(v55, v71);

      memcpy(v73, v74, 0x123uLL);
      PXDisplayCollectionDetailedCountsMake();
      v23 = v73;
      v24 = v67;
      goto LABEL_12;
    }

    v61 = v37;
    v62 = v36;
    v16 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74[0] = v60;
    *v16 = 136315394;
    v39 = [v2[2] uuid];

    if (v39)
    {
      v40 = sub_1A524C674();
      v42 = v41;

      sub_1A3C2EF94(v40, v42, v74);
    }

    v58 = *(v26 + 8);
    v26 += 8;
    v58(v19, v71);
    __break(1u);
  }

  else
  {
    v43 = v71;
    v44 = v72;
    (v29)(v71, v28, v72);
    (*v30)(v16, v22, v13);

    v45 = sub_1A5246F04();
    v46 = sub_1A524D234();
    if (!os_log_type_enabled(v45, v46))
    {

      v57 = *(v26 + 8);
      v57(v16, v13);
      (*(v68 + 8))(v43, v44);
      v57(v22, v13);
      sub_1A4069344(v74);
      v23 = v74;
      v24 = v67;
      goto LABEL_12;
    }

    LODWORD(v70) = v46;
    v66 = v22;
    v47 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74[0] = v69;
    *v47 = 136315394;
    v48 = [v2[2] uuid];

    if (v48)
    {
      v49 = sub_1A524C674();
      v51 = v50;

      sub_1A3C2EF94(v49, v51, v74);
    }
  }

  (*(v26 + 8))(v16, v13);
  __break(1u);

  __break(1u);
}

uint64_t sub_1A43E4BB8(uint64_t a1)
{
  v154 = a1;
  v171 = *MEMORY[0x1E69E9840];
  v2 = sub_1A5246F24();
  v158 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v155 = v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1A5241144();
  v159 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v150 = v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v156 = v132 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v132 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v157 = v132 - v11;
  v12 = sub_1A5240CB4();
  v164 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5240E64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v152 = v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v151 = v132 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v153 = v132 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v163 = v132 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v160 = (v132 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v132 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v161 = v132 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v132 - v35;
  sub_1A43EF40C(v1 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter_assetDirectoryURL, v17, sub_1A3EE53E0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1A43EF5B8(v17, sub_1A3EE53E0);
  }

  else
  {
    v37 = *(v19 + 32);
    v146 = v19 + 32;
    v145 = v37;
    v37(v36, v17, v18);
    if (sub_1A43E5D08(v36))
    {
      v132[0] = v9;
      v149 = v18;
      v137 = v19;
      v144 = v36;
      v134 = v2;
      v38 = v1[2];
      v39 = *(*v1 + 144);
      v40 = *v1 + 144;
      v132[1] = v1;
      v133 = v39;
      v132[2] = v40;
      v147 = v39();
      v138 = v41;
      v148 = v38;
      result = [v38 uuid];
      if (result)
      {
        v43 = result;
        v44 = sub_1A524C674();
        v46 = v45;

        v169 = v44;
        v170 = v46;
        v47 = *MEMORY[0x1E6968F58];
        v48 = v164;
        v49 = v164 + 13;
        v50 = v164[13];
        v50(v14, v47, v12);
        v51 = sub_1A3D5F9DC();
        sub_1A5240E54();
        v52 = v48[1];
        v52(v14, v12);

        v169 = v147;
        v170 = v138;
        v143 = v47;
        v140 = v50;
        v139 = v49;
        v50(v14, v47, v12);
        v53 = v12;
        v54 = v51;
        v55 = v161;
        sub_1A5240E54();
        v136 = v14;
        v142 = v53;
        v141 = v52;
        v56 = v48 + 1;
        v52(v14, v53);
        v58 = (v137 + 8);
        v57 = *(v137 + 8);
        v57(v31, v149);
        v59 = v148;
        v60 = [v148 adjustmentTimestamp];
        v147 = v57;
        if (v60)
        {
          v61 = v132[0];
          v62 = v60;
          sub_1A52410F4();

          (*(v159 + 32))(v157, v61, v162);
          sub_1A52410D4();
          v169 = sub_1A524CEE4();
          v170 = v63;
          v167 = 46;
          v168 = 0xE100000000000000;
          v165 = 95;
          v166 = 0xE100000000000000;
          v64 = sub_1A524DFD4();
          v66 = v65;
          v67 = v56;

          v169 = v64;
          v170 = v66;
          v68 = v136;
          v69 = v142;
          v140(v136, v143, v142);
          v70 = v160;
          sub_1A5240E54();
          v71 = v147;
          v72 = v68;
          v56 = v67;
          v141(v72, v69);
          v59 = v148;
          (*(v159 + 8))(v157, v162);
          v73 = v149;
          v71(v55, v149);

          v145(v55, v70, v73);
        }

        v74 = v136;
        v164 = v56;
        v75 = v142;
        v135 = v54;
        v76 = v143;
        v157 = v58;

        v133 = (v133)(v77);
        v138 = v78;
        result = [v59 uuid];
        if (result)
        {
          v79 = result;
          v80 = sub_1A524C674();
          v82 = v81;

          v169 = v80;
          v170 = v82;
          v83 = v140;
          v140(v74, v76, v75);
          v84 = v153;
          sub_1A5240E54();
          v85 = v141;
          v141(v74, v75);

          v169 = v133;
          v170 = v138;
          v83(v74, v76, v75);
          v86 = v163;
          sub_1A5240E54();
          v85(v74, v75);
          v87 = v84;
          v88 = v149;
          v89 = v147;
          v147(v87, v149);
          v90 = [v148 adjustmentTimestamp];
          v91 = v160;
          if (v90)
          {
            v92 = v150;
            v93 = v90;
            sub_1A52410F4();

            v94 = v159;
            (*(v159 + 32))(v156, v92, v162);
            sub_1A52410D4();
            v169 = sub_1A524CEE4();
            v170 = v95;
            v167 = 46;
            v168 = 0xE100000000000000;
            v165 = 95;
            v166 = 0xE100000000000000;
            v96 = sub_1A524DFD4();
            v98 = v97;
            v91 = v160;

            v169 = v96;
            v170 = v98;
            v99 = v142;
            v140(v74, v143, v142);
            sub_1A5240E54();
            v141(v74, v99);
            (*(v94 + 8))(v156, v162);
            v86 = v163;
            v89(v163, v88);

            v145(v86, v91, v88);
          }

          v100 = [objc_opt_self() defaultManager];
          sub_1A5240DA4();
          v101 = sub_1A5240D44();
          v102 = v91;
          v103 = v101;
          v89(v102, v88);
          v169 = 0;
          v104 = [v100 createDirectoryAtURL:v103 withIntermediateDirectories:1 attributes:0 error:&v169];

          v105 = v169;
          v106 = v88;
          if (v104)
          {
            v107 = v169;
            v108 = v161;
            v109 = sub_1A5240D44();
            v110 = sub_1A5240D44();
            v169 = 0;
            v111 = [v100 copyItemAtURL:v109 toURL:v110 error:&v169];

            v105 = v169;
            v112 = v134;
            v113 = v144;
            if (v111)
            {
              v114 = v169;

              v115 = v147;
              v147(v86, v106);
              v115(v108, v106);
              v115(v113, v106);
              return 1;
            }
          }

          else
          {
            v112 = v134;
            v108 = v161;
          }

          v116 = v105;
          v117 = sub_1A5240B84();

          swift_willThrow();
          v118 = sub_1A41CDD28();
          v119 = v155;
          (*(v158 + 16))(v155, v118, v112);
          v120 = *(v137 + 16);
          v121 = v151;
          v120(v151, v108, v106);
          v122 = v152;
          v120(v152, v86, v106);
          v123 = v117;
          v124 = sub_1A5246F04();
          v125 = v108;
          v126 = sub_1A524D264();

          if (os_log_type_enabled(v124, v126))
          {
            v127 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v169 = v164;
            *v127 = 136315650;
            sub_1A3C51A3C(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v160 = v124;
            v128 = sub_1A524EA44();
            v130 = v129;
            v147(v121, v106);
            sub_1A3C2EF94(v128, v130, &v169);
          }

          v131 = v147;
          v147(v122, v106);
          v131(v121, v106);
          (*(v158 + 8))(v119, v112);
          v131(v86, v106);
          v131(v125, v106);
          v131(v144, v106);
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

    (*(v19 + 8))(v36, v18);
  }

  return 0;
}

uint64_t sub_1A43E5D08(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ParallaxAssetViewInternalDefaults(0, v6);
  v9 = sub_1A420046C(v7, v8);
  if (v9 == 2 || (v9 & 1) == 0)
  {
    v15 = v1[2];
    v16 = (*(*v1 + 144))();
    LOBYTE(v15) = sub_1A43EE1D8(v15, v16, v17);

    return v15 & 1;
  }

  else
  {
    v10 = sub_1A41CDD28();
    (*(v3 + 16))(v5, v10, v2);
    v11 = sub_1A5246F04();
    v12 = sub_1A524D264();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A3C1C000, v11, v12, "Segmenter: cache is diabled through internal defaults.", v13, 2u);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_1A43E5EE4(uint64_t a1, uint64_t a2)
{
  v3[353] = v2;
  v3[352] = a2;
  v3[351] = a1;
  sub_1A3DB4F20(0);
  v3[354] = swift_task_alloc();
  v3[355] = swift_task_alloc();
  v4 = sub_1A5246F24();
  v3[356] = v4;
  v3[357] = *(v4 - 8);
  v3[358] = swift_task_alloc();
  v3[359] = swift_task_alloc();
  v3[360] = swift_task_alloc();
  v3[361] = swift_task_alloc();
  v3[362] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43E6014, 0, 0);
}

uint64_t sub_1A43E6014()
{
  v1 = v0[352];
  v2 = *(v1 + 16);
  v0[363] = v2;
  if (v2)
  {
    v0[350] = v1;
    v3 = swift_allocObject();
    v0[364] = v3;
    *(v3 + 16) = 0;
    v0[349] = MEMORY[0x1E69E7CC0];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A43F0F74();
  swift_allocError();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A43E65F0()
{
  v2 = *v1;
  *(*v1 + 2984) = v0;

  if (v0)
  {
    sub_1A406BB58(v2 + 1824);
    v3 = sub_1A43E765C;
  }

  else
  {
    v3 = sub_1A43E671C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43E671C()
{
  v1 = v0 + 1824;
  v2 = v0 + 2800;
  v3 = *(v0 + 304);
  v4 = *(v0 + 320);
  v6 = *(v0 + 272);
  v5 = *(v0 + 288);
  *(v0 + 512) = v5;
  *(v0 + 528) = v3;
  v7 = *(v0 + 336);
  *(v0 + 544) = v4;
  *(v0 + 560) = v7;
  v8 = *(v0 + 240);
  v9 = *(v0 + 256);
  *(v0 + 480) = v9;
  *(v0 + 496) = v6;
  *(v0 + 352) = v8;
  *(v0 + 368) = v9;
  *(v0 + 384) = v6;
  *(v0 + 400) = v5;
  *(v0 + 416) = v3;
  *(v0 + 432) = v4;
  *(v0 + 448) = v7;
  *(v0 + 464) = v8;
  if (*(v0 + 360))
  {
    v10 = *(v0 + 2912);
    v11 = *(v0 + 456);
    sub_1A43EF40C(v0 + 352, v0 + 128, sub_1A43F10B0);
    sub_1A43EF550(v0 + 352);
    *(v10 + 16) = v11;
    swift_unknownObjectRelease();
    v12 = *(v10 + 16);
    if (v12 && ([v12 classification] == 1 || (v13 = *(*(v0 + 2912) + 16)) != 0 && objc_msgSend(v13, sel_classification) == 2) || (*(v0 + 1912) & 1) == 0 || *(*v2 + 16) < 2uLL)
    {
      sub_1A406BB58(v0 + 1824);
      sub_1A43EF40C(v0 + 352, v0 + 16, sub_1A43F10B0);
      swift_unknownObjectRelease();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v0 + 2920);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      goto LABEL_48;
    }

    (*(v0 + 2944))(*(v0 + 2888), *(v0 + 2936), *(v0 + 2848));
    v14 = sub_1A5246F04();
    v15 = sub_1A524D264();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A3C1C000, v14, v15, "Segmenter: Remove fallback layout from candidates, not supported.", v16, 2u);
      MEMORY[0x1A590EEC0](v16, -1, -1);
    }

    v17 = *(v0 + 2960);
    v18 = *(v0 + 2888);
    v19 = *(v0 + 2848);

    v17(v18, v19);
    v20 = swift_task_alloc();
    *(v20 + 16) = v1;
    sub_1A43F1338(0, &qword_1EB139D18, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E62F8]);
    Array.remove(where:)(sub_1A3D3E6C0, v20, v21);

    sub_1A43EF5B8(v0 + 464, sub_1A43F107C);
    sub_1A406BB58(v0 + 1824);

    v22 = *(v0 + 2920);
  }

  else
  {
    sub_1A406BB58(v0 + 1824);
    v22 = *(v0 + 2920);
  }

LABEL_17:
  v32 = *(v0 + 2928) + 1;
  if (v32 == *(v0 + 2904))
  {
    while (1)
    {
      v33 = (v0 + 2792);
      if (*(v22 + 2))
      {
        goto LABEL_24;
      }

      v34 = *v2;
      if (!*(*v2 + 16))
      {
        break;
      }

      v35 = v34[3];
      *(v0 + 2400) = v34[2];
      *(v0 + 2416) = v35;
      v36 = v34[4];
      v37 = v34[5];
      v38 = v34[6];
      *(v0 + 2473) = *(v34 + 105);
      *(v0 + 2448) = v37;
      *(v0 + 2464) = v38;
      *(v0 + 2432) = v36;
      v130 = v34[2];
      v131 = v34[3];
      *(&v135 - 7) = *(v34 + 105);
      v133 = v34[5];
      v134 = v34[6];
      v132 = v34[4];
      sub_1A406BAA8(v0 + 2400, v0 + 2496);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_21:
      v40 = *(v22 + 2);
      v39 = *(v22 + 3);
      v2 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v22 = sub_1A43EC0F4((v39 > 1), v40 + 1, 1, v22);
      }

      *(v22 + 2) = v2;
      v41 = &v22[104 * v40];
      *(v41 + 2) = v130;
      *(v41 + 3) = v131;
      *(v41 + 6) = v134;
      *(v41 + 7) = v135;
      *(v41 + 4) = v132;
      *(v41 + 5) = v133;
      *(v41 + 16) = 0;
      *v33 = v22;
LABEL_24:
      sub_1A43E79F0((v0 + 2792));
      v1 = *v33;
      if (*(v1 + 16))
      {
        v42 = (v0 + 1304);
        v43 = *(v1 + 80);
        v44 = *(v1 + 96);
        v45 = *(v1 + 112);
        *(v0 + 1296) = *(v1 + 128);
        v46 = *(v1 + 48);
        v47 = *(v1 + 64);
        *(v0 + 1200) = *(v1 + 32);
        *(v0 + 1216) = v46;
        *(v0 + 1264) = v44;
        *(v0 + 1280) = v45;
        *(v0 + 1232) = v47;
        *(v0 + 1248) = v43;
        v48 = *(v0 + 1296);
        memmove((v0 + 1304), (v1 + 32), 0x68uLL);
        if (v48 < 1.0)
        {
          v49 = *(v0 + 2944);
          v50 = *(v0 + 2880);
          v51 = *(v0 + 2848);
          sub_1A43EF580(v0 + 1200, v0 + 784);
          v52 = sub_1A41CDD28();
          v49(v50, v52, v51);
          v53 = sub_1A5246F04();
          v54 = sub_1A524D264();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_1A3C1C000, v53, v54, "Segmenter: No configuration is acceptable, will disabled depth effect", v55, 2u);
            MEMORY[0x1A590EEC0](v55, -1, -1);
          }

          v56 = *(v0 + 2960);
          v57 = *(v0 + 2880);
          v58 = *(v0 + 2848);

          v56(v57, v58);
          sub_1A43F06A0(*(v0 + 2800));
        }

        sub_1A43EF580(v0 + 1200, v0 + 1408);
        v76 = *(v0 + 2944);
        v77 = *(v0 + 2864);
        v78 = *(v0 + 2848);
        v79 = sub_1A41CDD28();
        v76(v77, v79, v78);
        v80 = *(v0 + 1368);
        v81 = *(v0 + 1384);
        *(v0 + 1680) = v80;
        *(v0 + 1696) = v81;
        v82 = *(v0 + 1400);
        *(v0 + 1712) = v82;
        v83 = *v42;
        v84 = *(v0 + 1320);
        *(v0 + 1616) = *v42;
        *(v0 + 1632) = v84;
        v86 = *(v0 + 1336);
        v85 = *(v0 + 1352);
        *(v0 + 1648) = v86;
        *(v0 + 1664) = v85;
        *(v0 + 1512) = v83;
        *(v0 + 1528) = v84;
        *(v0 + 1608) = v82;
        *(v0 + 1544) = v86;
        *(v0 + 1560) = v85;
        *(v0 + 1576) = v80;
        *(v0 + 1592) = v81;
        sub_1A43EF580(v0 + 1512, v0 + 1720);
        sub_1A43EF580(v0 + 1616, v0 + 576);
        v87 = sub_1A5246F04();
        LOBYTE(v76) = sub_1A524D234();
        sub_1A43EF550(v0 + 1616);
        v88 = os_log_type_enabled(v87, v76);
        v89 = *(v0 + 2960);
        v90 = *(v0 + 2864);
        v91 = *(v0 + 2848);
        if (v88)
        {
          v92 = swift_slowAlloc();
          swift_slowAlloc();
          *v92 = 136315394;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A43EF550(v0 + 1512);

        v89(v90, v91);
        v93 = *(v0 + 2912);
        v94 = *(v0 + 2808);
        swift_beginAccess();
        v96 = *(v0 + 1336);
        v95 = *(v0 + 1352);
        *(v0 + 1040) = v95;
        v97 = *(v0 + 1368);
        v98 = *(v0 + 1384);
        *(v0 + 1056) = v97;
        *(v0 + 1072) = v98;
        v99 = *(v0 + 1400);
        *(v0 + 1088) = v99;
        v100 = *v42;
        v101 = *(v0 + 1320);
        *(v0 + 992) = *v42;
        *(v0 + 1008) = v101;
        *(v0 + 1024) = v96;
        *(v94 + 96) = v99;
        *(v94 + 64) = v97;
        *(v94 + 80) = v98;
        *v94 = v100;
        *(v94 + 16) = v101;
        *(v94 + 32) = v96;
        *(v94 + 48) = v95;
        *(v0 + 1192) = *(v0 + 1400);
        v102 = *(v0 + 1384);
        *(v0 + 1160) = *(v0 + 1368);
        *(v0 + 1176) = v102;
        v103 = *(v0 + 1352);
        *(v0 + 1128) = *(v0 + 1336);
        *(v0 + 1144) = v103;
        v104 = *(v0 + 1320);
        *(v0 + 1096) = *v42;
        *(v0 + 1112) = v104;
        sub_1A43EF580(v0 + 992, v0 + 888);
        sub_1A43EF550(v0 + 1096);
        swift_beginAccess();
        v105 = *(v93 + 16);
        swift_unknownObjectRetain();

        v106 = *(v0 + 8);

        return v106(v105);
      }

      __break(1u);
LABEL_48:
      v22 = sub_1A43EC0F4(0, *(v22 + 2) + 1, 1, v22);
LABEL_12:
      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1A43EC0F4((v24 > 1), v25 + 1, 1, v22);
      }

      *(v22 + 2) = v25 + 1;
      v26 = &v22[104 * v25];
      v27 = *(v0 + 352);
      v28 = *(v0 + 384);
      *(v26 + 3) = *(v0 + 368);
      *(v26 + 4) = v28;
      *(v26 + 2) = v27;
      v29 = *(v0 + 400);
      v30 = *(v0 + 416);
      v31 = *(v0 + 432);
      *(v26 + 16) = *(v0 + 448);
      *(v26 + 6) = v30;
      *(v26 + 7) = v31;
      *(v26 + 5) = v29;
      swift_unknownObjectRelease();
      sub_1A43EF550(v0 + 352);
      *(v0 + 2792) = v22;
      if (*(v0 + 448) != 1.0)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_50:
    v22 = sub_1A43EC0F4(0, 1, 1, v22);
    goto LABEL_21;
  }

  *(v0 + 2928) = v32;
  *(v0 + 2920) = v22;
  v59 = *(v0 + 2896);
  v60 = *(v0 + 2856);
  v61 = *(v0 + 2848);
  v62 = (*(v0 + 2816) + 96 * v32);
  v63 = v62[3];
  *v1 = v62[2];
  *(v1 + 16) = v63;
  v65 = v62[5];
  v64 = v62[6];
  v66 = v62[4];
  *(v1 + 73) = *(v62 + 105);
  *(v1 + 48) = v65;
  *(v1 + 64) = v64;
  *(v1 + 32) = v66;
  sub_1A406BAA8(v1, v0 + 2112);
  v67 = sub_1A41CDD28();
  *(v0 + 2936) = v67;
  v68 = *(v60 + 16);
  *(v0 + 2944) = v68;
  *(v0 + 2952) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v68(v59, v67, v61);
  sub_1A406BAA8(v1, v0 + 2016);
  v69 = sub_1A5246F04();
  v70 = sub_1A524D234();
  sub_1A406BB58(v1);
  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 2896);
  v73 = *(v0 + 2848);
  v74 = (*(v0 + 2856) + 8);
  if (v71)
  {
    v75 = swift_slowAlloc();
    swift_slowAlloc();
    *v75 = 136315138;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v108 = *v74;
  (*v74)(v72, v73);
  *(v0 + 2960) = v108;
  v109 = *(v0 + 2912);
  v110 = *(v0 + 2840);
  v111 = *(v0 + 2832);
  v112 = *(v0 + 2824);
  v113 = sub_1A524CCB4();
  v114 = *(v113 - 8);
  (*(v114 + 56))(v110, 1, 1, v113);
  v115 = swift_allocObject();
  v116 = *(v1 + 48);
  *(v115 + 72) = *(v1 + 32);
  *(v115 + 88) = v116;
  *(v115 + 104) = *(v1 + 64);
  *(v115 + 113) = *(v1 + 73);
  v117 = *(v1 + 16);
  *(v115 + 40) = *v1;
  *(v115 + 16) = 0;
  *(v115 + 24) = 0;
  *(v115 + 32) = v112;
  *(v115 + 56) = v117;
  *(v115 + 136) = v109;
  sub_1A43EF40C(v110, v111, sub_1A3DB4F20);
  v118 = (*(v114 + 48))(v111, 1, v113);
  v119 = *(v0 + 2832);
  if (v118 == 1)
  {
    sub_1A406BAA8(v1, v0 + 1920);

    sub_1A43EF5B8(v119, sub_1A3DB4F20);
  }

  else
  {
    sub_1A406BAA8(v1, v0 + 2592);

    sub_1A524CCA4();
    (*(v114 + 8))(v119, v113);
  }

  v120 = *(v115 + 16);
  swift_unknownObjectRetain();

  if (v120)
  {
    swift_getObjectType();
    v121 = sub_1A524CBC4();
    v123 = v122;
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0;
    v123 = 0;
  }

  sub_1A43EF5B8(*(v0 + 2840), sub_1A3DB4F20);
  sub_1A43F107C(0);
  v125 = v124;
  if (v123 | v121)
  {
    *(v0 + 2688) = 0;
    *(v0 + 2696) = 0;
    *(v0 + 2704) = v121;
    *(v0 + 2712) = v123;
  }

  v126 = swift_task_create();
  *(v0 + 2968) = v126;
  v127 = swift_task_alloc();
  *(v0 + 2976) = v127;
  v128 = sub_1A3DBD9A0();
  *v127 = v0;
  v127[1] = sub_1A43E65F0;
  v129 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 240, v126, v125, v128, v129);
}

uint64_t sub_1A43E765C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43E773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a1;
  v6[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A43E7760, 0, 0);
}

uint64_t sub_1A43E7760()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[2];
  *(v0 + 89) = *(v1 + 73);
  *(v0 + 64) = v5;
  *(v0 + 80) = v4;
  *(v0 + 48) = v6;
  swift_beginAccess();
  v7 = *(v2 + 16);
  *(v0 + 168) = v7;
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_1A43E7850;
  v9 = *(v0 + 136);

  return sub_1A43E7BB0(v9, (v0 + 16), v7);
}

uint64_t sub_1A43E7850()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A43E798C, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A43E798C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1A43E79F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A43ED994(v2);
  }

  v3 = *(v2 + 2);
  v36[0] = (v2 + 32);
  v36[1] = v3;
  v4 = sub_1A524EA34();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 13))
          {
            break;
          }

          v13 = v12 - 96;
          v14 = *(v12 + 8);
          v15 = *(v12 + 40);
          v30 = *(v12 + 24);
          v31 = v15;
          v29 = v14;
          v16 = *(v12 + 56);
          v17 = *(v12 + 72);
          v18 = *(v12 + 88);
          v35 = *(v12 + 13);
          v33 = v17;
          v34 = v18;
          v32 = v16;
          v19 = *(v12 - 4);
          *(v12 + 56) = *(v12 - 3);
          v20 = *(v12 - 1);
          *(v12 + 72) = *(v12 - 2);
          *(v12 + 88) = v20;
          *(v12 + 13) = *v12;
          v21 = *(v12 - 5);
          *(v12 + 8) = *(v12 - 6);
          *(v12 + 24) = v21;
          *(v12 + 40) = v19;
          v22 = v29;
          v23 = v31;
          *(v13 + 1) = v30;
          *(v13 + 2) = v23;
          *v13 = v22;
          v24 = v32;
          v25 = v33;
          v26 = v34;
          *v12 = v35;
          *(v13 + 4) = v25;
          *(v13 + 5) = v26;
          *(v13 + 3) = v24;
          v12 -= 104;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 104;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A524CAC4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v29 = v7 + 32;
    *(&v29 + 1) = v6;
    sub_1A43ECD4C(&v29, v28, v36, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t sub_1A43E7BB0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 400) = a1;
  v6 = sub_1A5246F24();
  *(v3 + 408) = v6;
  *(v3 + 416) = *(v6 - 8);
  *(v3 + 424) = swift_task_alloc();
  v7 = a2[2];
  v8 = a2[3];
  *(v3 + 48) = v7;
  *(v3 + 64) = v8;
  v9 = a2[4];
  *(v3 + 80) = v9;
  v10 = *(a2 + 73);
  *(v3 + 89) = v10;
  v11 = *a2;
  v12 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v12;
  *(v3 + 112) = v11;
  *(v3 + 128) = v12;
  *(v3 + 160) = v8;
  *(v3 + 176) = v9;
  *(v3 + 144) = v7;
  *(v3 + 185) = v10;
  v13 = swift_task_alloc();
  *(v3 + 432) = v13;
  *v13 = v3;
  v13[1] = sub_1A43E7CE8;

  return sub_1A43E840C(v3 + 112, a3);
}

uint64_t sub_1A43E7CE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_1A43E81FC;
  }

  else
  {
    v4 = sub_1A43E7DFC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A43E7DFC()
{
  v41 = v0;
  v1 = *(v0 + 440);
  if (v1)
  {
    v2 = [*(v0 + 440) scores];
    type metadata accessor for PFPosterScoreKey(0);
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    sub_1A3C51A3C(&qword_1EB139D00, type metadata accessor for PFPosterScoreKey, &unk_1A5314C00);
    v3 = sub_1A524C3E4();

    if (*(v3 + 16) && (v4 = sub_1A3C8BF74(*MEMORY[0x1E69C0D10]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      *&v36 = 0;
      BYTE8(v36) = 1;
      MEMORY[0x1A58FCA10](v6, &v36);

      if (BYTE8(v36))
      {
        v7 = 0.0;
      }

      else
      {
        v7 = *&v36;
      }
    }

    else
    {

      v7 = 0.0;
    }

    if (![v1 segmentationMatte] || (swift_unknownObjectRelease(), v8 = 0.0, v7 >= *(v0 + 72)))
    {
      v9 = [v1 scores];
      v10 = sub_1A524C3E4();

      if (*(v10 + 16) && (v11 = sub_1A3C8BF74(*MEMORY[0x1E69C0CD0]), (v12 & 1) != 0))
      {
        v13 = *(*(v10 + 56) + 8 * v11);

        *&v36 = 0;
        BYTE8(v36) = 1;
        MEMORY[0x1A58FCA10](v13, &v36);

        if (BYTE8(v36))
        {
          v8 = 0.0;
        }

        else
        {
          v8 = *&v36;
        }
      }

      else
      {

        v8 = 0.0;
      }
    }

    v16 = *(v0 + 416);
    v15 = *(v0 + 424);
    v17 = *(v0 + 408);
    v18 = sub_1A41CDD28();
    (*(v16 + 16))(v15, v18, v17);
    sub_1A406BAA8(v0 + 16, v0 + 208);
    v19 = sub_1A5246F04();
    v20 = sub_1A524D234();
    sub_1A406BB58(v0 + 16);
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 416);
    v22 = *(v0 + 424);
    v24 = *(v0 + 408);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *&v36 = swift_slowAlloc();
      *v25 = 136315906;
      sub_1A3C2EF94(*(v0 + 16), *(v0 + 24), &v36);
    }

    (*(v23 + 8))(v22, v24);
    v26 = *(v0 + 440);
    v27 = *(v0 + 400);
    v28 = *(v0 + 80);
    v39 = *(v0 + 64);
    v29 = v39;
    *v40 = v28;
    *&v40[9] = *(v0 + 89);
    v30 = *(v0 + 48);
    v37 = *(v0 + 32);
    v31 = v37;
    v38 = v30;
    v36 = *(v0 + 16);
    v32 = v36;
    *(v27 + 32) = v30;
    *(v27 + 48) = v29;
    *v27 = v32;
    *(v27 + 16) = v31;
    v33 = *&v40[16];
    *(v27 + 64) = *v40;
    *(v27 + 80) = v33;
    *(v27 + 96) = v8;
    *(v27 + 104) = v26;
    sub_1A406BAA8(v0 + 16, v0 + 304);
  }

  else
  {
    v14 = *(v0 + 400);
    v14[5] = 0u;
    v14[6] = 0u;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1A43E81FC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A43E8260()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter____lazy_storage___segmentationLoader;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter____lazy_storage___segmentationLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter____lazy_storage___segmentationLoader);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6978B20]) initWithPhotoAsset_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69BDF40]) initWithParallaxAsset_];
    sub_1A43E8310(v5);

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A43E8310(void *a1)
{
  v3 = 1;
  [a1 setDisableSettlingEffect_];
  [a1 setDisableHeadroomLayout_];
  [a1 setDisableAdaptiveLayout_];
  [a1 setDisableSpatialPhoto_];
  v5 = type metadata accessor for ParallaxAssetViewInternalDefaults(0, v4);
  [a1 setDisableCache_];
  if ((*(v1 + 80) & 1) == 0)
  {
    v3 = PFPosterDeviceSupportsSegmentation() ^ 1;
  }

  result = [a1 setDisableRendering_];
  if ((*(v1 + 48) & 1) == 0)
  {
    v8 = *(v1 + 40);

    return [a1 setClassification_];
  }

  return result;
}

uint64_t sub_1A43E840C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(v3 + 72) = *(a1 + 16);
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  v5 = *(a1 + 8);
  *(v3 + 56) = *a1;
  *(v3 + 64) = v5;
  *(v3 + 88) = v4;
  *(v3 + 104) = *(a1 + 48);
  *(v3 + 112) = *(a1 + 72);
  return MEMORY[0x1EEE6DFA0](sub_1A43E8450, 0, 0);
}

void sub_1A43E8450()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = v1 == 0.0 && v2 == 0.0;
  if (v3)
  {
    v4 = *(v0 + 48);
    v5 = sub_1A3D8AA14();
    swift_beginAccess();
    v7 = *v5;
    v6 = v5[1];
    v9 = v5[2];
    v8 = v5[3];
    v10 = *(v4 + 24);
    v11 = *(v4 + 32);
  }

  else
  {
    v12 = *(v0 + 48);
    v10 = *(v12 + 24);
    v11 = *(v12 + 32);
    v7 = *(v0 + 88);
    v8 = 0.0;
    v9 = 0.0;
    if (v10 != 0.0)
    {
      v7 = v7 / v10;
      v9 = v2 / v10;
    }

    v13 = *(v0 + 96);
    if (v11 != 0.0)
    {
      v13 = v13 / v11;
      v8 = v1 / v11;
    }

    v6 = 1.0 - (v8 + v13);
  }

  v14 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v6 + v8);
  PXDisplayCollectionDetailedCountsMake();
  v17 = [objc_opt_self() specificConfigurationWithPortraitTitleBounds:v7 portraitScreenSize:v14 landscapeScreenSize:{v9, v8, v10, v11, v15, v16}];
  *(v0 + 128) = v17;
  v18 = sub_1A43E8260();
  *(v0 + 136) = v18;
  [v18 setLayoutConfiguration_];
  [v18 setDisableSegmentation_];
  type metadata accessor for ParallaxAssetViewLayoutProvider(0, v19);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43E869C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1A43E8830;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_1A43E87C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A43E87C4()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2(v3);
}

uint64_t sub_1A43E8830()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A43E8898(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A43E8928, 0, 0);
}

uint64_t sub_1A43E8928()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_allocWithZone(MEMORY[0x1E69BDEA0]) initWithSegmentationItem_];
  v0[21] = v3;
  v4 = objc_opt_self();
  v5 = (*(*v1 + 168))();
  v6 = [v2 colorAnalysis];
  v7 = [v4 defaultStyleForKind:v5 colorAnalysis:v6];

  [v3 setStyle_];
  [v3 setLayerStackOptions_];
  [v3 setForegroundLayerEnabled_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A43E8B58;
  v8 = swift_continuation_init();
  sub_1A4300130(0);
  v0[17] = v9;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A43F16BC;
  v0[13] = &block_descriptor_64_4;
  v0[14] = v8;
  [v3 submit_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A43E8B58()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43E8C64, 0, 0);
}

uint64_t sub_1A43E8C64()
{
  v0[10] = 0;
  v1 = v0[18];
  v2 = [v1 result_];
  v3 = v0[10];
  v4 = v0[21];
  if (v2)
  {
    v5 = v2;
    v6 = v3;
    v7 = [v5 compoundLayerStack];
    v8 = [v7 portraitLayerStack];

    swift_unknownObjectRelease();
    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v3;
    sub_1A5240B84();

    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1A43E8E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = sub_1A5246EA4();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v6 = sub_1A5246F24();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = sub_1A5246E54();
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v8 = sub_1A5246E94();
  v4[52] = v8;
  v4[53] = *(v8 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43E9008, 0, 0);
}

void sub_1A43E9008()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[53];
  v4 = sub_1A41CDE9C();
  v0[56] = v4;
  v5 = *(v3 + 16);
  v0[57] = v5;
  v0[58] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  sub_1A5246E44();
  v6 = sub_1A5246E84();
  v7 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, v7, v9, "loadSegmentationData", "", v8, 2u);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  v11 = v0[52];
  v10 = v0[53];
  v12 = v0[50];
  v13 = v0[51];
  v14 = v0[47];
  v15 = v0[48];
  v16 = v0[46];
  v17 = v0[44];
  v22 = v0[55];
  v23 = v0[43];

  (*(v15 + 16))(v12, v13, v14);
  sub_1A5246ED4();
  swift_allocObject();
  v0[59] = sub_1A5246EC4();
  v18 = *(v15 + 8);
  v0[60] = v18;
  v0[61] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v14);
  v19 = *(v10 + 8);
  v0[62] = v19;
  v0[63] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v22, v11);
  v20 = sub_1A41CDD28();
  v0[64] = v20;
  v21 = *(v17 + 16);
  v0[65] = v21;
  v0[66] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v16, v20, v23);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43E955C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43E963C, 0, 0);
}

void sub_1A43E963C()
{
  swift_unknownObjectRelease();
  (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 416));
  v1 = sub_1A5246E84();
  sub_1A5246EB4();
  v2 = sub_1A524D644();
  if (sub_1A524DEC4())
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);
    v5 = *(v0 + 320);

    sub_1A5246EE4();

    if ((*(v3 + 88))(v4, v5) == *MEMORY[0x1E69E93E8])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v1, v2, v8, "loadSegmentationData", v6, v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v19 = *(v0 + 520);
  v18 = *(v0 + 512);
  v17 = *(v0 + 496);
  v9 = v1;
  v10 = *(v0 + 480);
  v11 = *(v0 + 432);
  v12 = *(v0 + 416);
  v13 = *(v0 + 392);
  v14 = *(v0 + 376);
  v15 = *(v0 + 360);
  v16 = *(v0 + 344);

  v10(v13, v14);
  v17(v11, v12);
  v19(v15, v18, v16);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43E9A94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_1A43E9FF4;
  }

  else
  {
    v2 = sub_1A43E9BA4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A43E9BA4()
{
  (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 416));
  v1 = sub_1A5246E84();
  sub_1A5246EB4();
  v2 = sub_1A524D644();
  if (sub_1A524DEC4())
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);
    v5 = *(v0 + 320);

    sub_1A5246EE4();

    if ((*(v3 + 88))(v4, v5) == *MEMORY[0x1E69E93E8])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v1, v2, v8, "loadSegmentationData", v6, v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v19 = *(v0 + 520);
  v18 = *(v0 + 512);
  v17 = *(v0 + 496);
  v9 = v1;
  v10 = *(v0 + 480);
  v11 = *(v0 + 432);
  v12 = *(v0 + 416);
  v13 = *(v0 + 392);
  v14 = *(v0 + 376);
  v15 = *(v0 + 360);
  v16 = *(v0 + 344);

  v10(v13, v14);
  v17(v11, v12);
  v19(v15, v18, v16);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43E9FF4(uint64_t a1)
{
  v2 = *(v1 + 544);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1A43EA0E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  swift_unknownObjectRetain();

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1A43EA14C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1A3DBD9A0();
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A43EA21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_1A5246F24();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  v8 = *(a4 + 32);
  *(v5 + 72) = *(a4 + 16);
  *(v5 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43EA2F0, 0, 0);
}

uint64_t sub_1A43EA2F0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_1A41CDD28();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D234();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "Segmenter: Request debug info", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);

  (*(v9 + 8))(v8, v10);
  if (v11)
  {
    v12 = *(v0 + 32);
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_1A43EA4B8;
    v14 = *(v0 + 24);

    return sub_1A43F0754(v14);
  }

  else
  {
    v16 = *(v0 + 16);
    *(v16 + 80) = 0;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *v16 = 0u;

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1A43EA4B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1A43EA72C;
  }

  else
  {
    v4 = sub_1A43EA5CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A43EA5CC()
{
  v21 = v0;
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    if (v3 < 0.0 || v3 > 0.0)
    {
      v5 = *(v0 + 88) / v3;
      v6 = *(v0 + 72) / v3;
    }

    else
    {
      v5 = *(v0 + 88);
      v6 = 0.0;
    }

    v7 = *(v0 + 96);
    v8 = 0.0;
    if (v4 != 0.0)
    {
      v7 = v7 / v4;
      v8 = *(v0 + 80) / v4;
    }

    v9 = *(v0 + 32);
    v10 = *(v0 + 16);
    *&v11 = 1.0 - (v8 + v7);
    v12 = swift_unknownObjectRetain();
    v13.n128_f64[0] = v3;
    sub_1A40515AC(v1, v12, v9, v19, v13, v4, v5, v11, v6, v8);
    v14 = v19[3];
    *(v10 + 32) = v19[2];
    *(v10 + 48) = v14;
    *(v10 + 64) = v19[4];
    *(v10 + 80) = v20;
    v15 = v19[1];
    *v10 = v19[0];
    *(v10 + 16) = v15;
  }

  else
  {

    v16 = *(v0 + 16);
    *(v16 + 80) = 0;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *v16 = 0u;
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A43EA72C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A43EA8CC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EB1BD888 = v1;
}

uint64_t ParallaxAssetSegmenter.deinit()
{

  sub_1A43EF5B8(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter_assetDirectoryURL, sub_1A3EE53E0);
  return v0;
}

uint64_t ParallaxAssetSegmenter.__deallocating_deinit()
{

  sub_1A43EF5B8(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetSegmenter_assetDirectoryURL, sub_1A3EE53E0);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43EAA18(uint64_t a1)
{
  v2 = sub_1A43EF6CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43EAA54(uint64_t a1)
{
  v2 = sub_1A43EF6CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A43EAA90()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0x65727574616ELL;
  v4 = 0x7061637379746963;
  if (v1 != 4)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F73726570;
  if (v1 != 1)
  {
    v5 = 7628144;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A43EAB44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A43F0CA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A43EAB6C(uint64_t a1)
{
  v2 = sub_1A43EF870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43EABA8(uint64_t a1)
{
  v2 = sub_1A43EF870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A43EABE4(uint64_t a1)
{
  v2 = sub_1A43EF720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43EAC20(uint64_t a1)
{
  v2 = sub_1A43EF720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A43EAC5C(uint64_t a1)
{
  v2 = sub_1A43EF678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43EAC98(uint64_t a1)
{
  v2 = sub_1A43EF678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A43EACD4(uint64_t a1)
{
  v2 = sub_1A43EF7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43EAD10(uint64_t a1)
{
  v2 = sub_1A43EF7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A43EAD4C(uint64_t a1)
{
  v2 = sub_1A43EF774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43EAD88(uint64_t a1)
{
  v2 = sub_1A43EF774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A43EADC4(uint64_t a1)
{
  v2 = sub_1A43EF81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43EAE00(uint64_t a1)
{
  v2 = sub_1A43EF81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParallaxAssetPosterClassification.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1A43F05E4(0, &qword_1EB139BC8, sub_1A43EF678, &type metadata for ParallaxAssetPosterClassification.OtherCodingKeys, MEMORY[0x1E69E6F58]);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v31 - v6;
  sub_1A43F05E4(0, &qword_1EB139BD0, sub_1A43EF6CC, &type metadata for ParallaxAssetPosterClassification.CityscapeCodingKeys, v4);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v31 - v8;
  sub_1A43F05E4(0, &qword_1EB139BD8, sub_1A43EF720, &type metadata for ParallaxAssetPosterClassification.NatureCodingKeys, v4);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v31 - v10;
  sub_1A43F05E4(0, &qword_1EB139BE0, sub_1A43EF774, &type metadata for ParallaxAssetPosterClassification.PetCodingKeys, v4);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v31 - v12;
  sub_1A43F05E4(0, &qword_1EB139BE8, sub_1A43EF7C8, &type metadata for ParallaxAssetPosterClassification.PersonCodingKeys, v4);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v31 - v14;
  sub_1A43F05E4(0, &qword_1EB139BF0, sub_1A43EF81C, &type metadata for ParallaxAssetPosterClassification.UnspecifiedCodingKeys, v4);
  v16 = v15;
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  sub_1A43F05E4(0, &qword_1EB139BF8, sub_1A43EF870, &type metadata for ParallaxAssetPosterClassification.CodingKeys, v4);
  v47 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43EF870();
  sub_1A524ED34();
  v24 = (v20 + 8);
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v51 = 3;
      sub_1A43EF720();
      v25 = v38;
      v26 = v47;
      sub_1A524E944();
      v28 = v39;
      v27 = v40;
    }

    else if (v23 == 4)
    {
      v52 = 4;
      sub_1A43EF6CC();
      v25 = v41;
      v26 = v47;
      sub_1A524E944();
      v28 = v42;
      v27 = v43;
    }

    else
    {
      v53 = 5;
      sub_1A43EF678();
      v25 = v44;
      v26 = v47;
      sub_1A524E944();
      v28 = v45;
      v27 = v46;
    }
  }

  else
  {
    if (!v23)
    {
      v48 = 0;
      sub_1A43EF81C();
      v29 = v47;
      sub_1A524E944();
      (*(v31 + 8))(v18, v16);
      return (*v24)(v22, v29);
    }

    if (v23 == 1)
    {
      v49 = 1;
      sub_1A43EF7C8();
      v25 = v32;
      v26 = v47;
      sub_1A524E944();
      v28 = v33;
      v27 = v34;
    }

    else
    {
      v50 = 2;
      sub_1A43EF774();
      v25 = v35;
      v26 = v47;
      sub_1A524E944();
      v28 = v36;
      v27 = v37;
    }
  }

  (*(v28 + 8))(v25, v27);
  return (*v24)(v22, v26);
}

uint64_t ParallaxAssetPosterClassification.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t ParallaxAssetPosterClassification.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v66 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1A43F05E4(0, &qword_1EB139C00, sub_1A43EF678, &type metadata for ParallaxAssetPosterClassification.OtherCodingKeys, MEMORY[0x1E69E6F48]);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v49[-v5];
  sub_1A43F05E4(0, &qword_1EB139C08, sub_1A43EF6CC, &type metadata for ParallaxAssetPosterClassification.CityscapeCodingKeys, v3);
  v64 = v6;
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v49[-v7];
  sub_1A43F05E4(0, &qword_1EB139C10, sub_1A43EF720, &type metadata for ParallaxAssetPosterClassification.NatureCodingKeys, v3);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v49[-v9];
  sub_1A43F05E4(0, &qword_1EB139C18, sub_1A43EF774, &type metadata for ParallaxAssetPosterClassification.PetCodingKeys, v3);
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v49[-v12];
  sub_1A43F05E4(0, &qword_1EB139C20, sub_1A43EF7C8, &type metadata for ParallaxAssetPosterClassification.PersonCodingKeys, v3);
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v49[-v14];
  sub_1A43F05E4(0, &qword_1EB139C28, sub_1A43EF81C, &type metadata for ParallaxAssetPosterClassification.UnspecifiedCodingKeys, v3);
  v16 = v15;
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49[-v17];
  sub_1A43F05E4(0, &unk_1EB139C30, sub_1A43EF870, &type metadata for ParallaxAssetPosterClassification.CodingKeys, v3);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v49[-v22];
  v24 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1A43EF870();
  v25 = v71;
  sub_1A524ED14();
  if (!v25)
  {
    v52 = 0;
    v51 = v16;
    v26 = v67;
    v27 = v68;
    v28 = v69;
    v29 = v70;
    v71 = v21;
    v53 = v23;
    v30 = sub_1A524E924();
    if (*(v30 + 16) != 1 || (v31 = *(v30 + 32), v31 == 6))
    {
      v34 = sub_1A524E4C4();
      swift_allocError();
      v35 = v20;
      v37 = v36;
      sub_1A3FA0828(0);
      *v37 = &type metadata for ParallaxAssetPosterClassification;
      v38 = v53;
      sub_1A524E854();
      sub_1A524E4A4();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v71 + 8))(v38, v35);
    }

    else
    {
      v50 = *(v30 + 32);
      if (v31 <= 2)
      {
        if (v31)
        {
          if (v31 == 1)
          {
            v74 = 1;
            sub_1A43EF7C8();
            v33 = v52;
            v32 = v53;
            sub_1A524E844();
            if (!v33)
            {
              (*(v55 + 8))(v26, v56);
LABEL_26:
              (*(v71 + 8))(v32, v20);
LABEL_28:
              swift_unknownObjectRelease();
              v44 = v66;
              goto LABEL_29;
            }
          }

          else
          {
            v75 = 2;
            sub_1A43EF774();
            v47 = v52;
            v32 = v53;
            sub_1A524E844();
            if (!v47)
            {
              (*(v58 + 8))(v27, v57);
              goto LABEL_26;
            }
          }
        }

        else
        {
          v73 = 0;
          sub_1A43EF81C();
          v45 = v52;
          v32 = v53;
          sub_1A524E844();
          if (!v45)
          {
            (*(v54 + 8))(v18, v51);
            goto LABEL_26;
          }
        }

        (*(v71 + 8))(v32, v20);
        goto LABEL_10;
      }

      v40 = v71;
      if (v31 == 3)
      {
        v44 = v66;
        v76 = 3;
        sub_1A43EF720();
        v46 = v52;
        v41 = v53;
        sub_1A524E844();
        if (!v46)
        {
          (*(v59 + 8))(v28, v60);
          (*(v40 + 8))(v41, v20);
          swift_unknownObjectRelease();
          goto LABEL_29;
        }

LABEL_19:
        (*(v40 + 8))(v41, v20);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v72);
      }

      v41 = v53;
      if (v31 == 4)
      {
        v77 = 4;
        sub_1A43EF6CC();
        v42 = v65;
        v43 = v52;
        sub_1A524E844();
        if (!v43)
        {
          (*(v61 + 8))(v42, v64);
          (*(v40 + 8))(v41, v20);
          swift_unknownObjectRelease();
          v44 = v66;
LABEL_29:
          *v44 = v50;
          return __swift_destroy_boxed_opaque_existential_0(v72);
        }

        goto LABEL_19;
      }

      v78 = 5;
      sub_1A43EF678();
      v48 = v52;
      sub_1A524E844();
      if (!v48)
      {
        (*(v62 + 8))(v29, v63);
        (*(v40 + 8))(v41, v20);
        goto LABEL_28;
      }

      (*(v40 + 8))(v41, v20);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t sub_1A43EBF04(uint64_t a1)
{
  sub_1A3C51A3C(&qword_1EB139D68, type metadata accessor for URLResourceKey, &unk_1A5338158);
  sub_1A3C51A3C(&unk_1EB139DB0, type metadata accessor for URLResourceKey, &unk_1A53380AC);

  return sub_1A524E7E4();
}

char *sub_1A43EBFC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A43F1338(0, &qword_1EB130E98, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A43EC0F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A43F1338(0, &unk_1EB139D20, &type metadata for ScoredConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A43EC234(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A524CAC4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1A43EC4F4(v7, v8, a1, v4);
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
    sub_1A43EC32C(0, v2, 1, a1);
  }
}

uint64_t sub_1A43EC32C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 96 * a3;
    v8 = result - a3 + 1;
LABEL_5:
    v9 = v8;
    for (i = v7; ; i -= 6)
    {
      v11 = i[1];
      v30 = *i;
      v31 = v11;
      v12 = i[2];
      v13 = i[3];
      v14 = i[4];
      *(v34 + 9) = *(i + 73);
      v33 = v13;
      v34[0] = v14;
      v32 = v12;
      v16 = *(i - 3);
      v15 = *(i - 2);
      v17 = *(i - 4);
      *(v38 + 9) = *(i - 23);
      v37 = v16;
      v38[0] = v15;
      v36 = v17;
      v18 = *(i - 5);
      v35[0] = *(i - 6);
      v35[1] = v18;
      v19 = v31;
      v20 = v18;
      sub_1A406BAA8(&v30, &v25);
      sub_1A406BAA8(v35, &v25);
      sub_1A406BB58(v35);
      result = sub_1A406BB58(&v30);
      if (*&v19 * *(&v19 + 1) >= *&v20 * *(&v20 + 1) && *(&v36 + 1) >= *(&v32 + 1))
      {
LABEL_4:
        ++v4;
        v7 += 96;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v21 = i - 6;
      v27 = i[2];
      v28 = i[3];
      v29[0] = i[4];
      *(v29 + 9) = *(i + 73);
      v25 = *i;
      v26 = i[1];
      v22 = *(i - 3);
      i[2] = *(i - 4);
      i[3] = v22;
      v23 = *(i - 1);
      i[4] = *(i - 2);
      i[5] = v23;
      v24 = *(i - 5);
      *i = *(i - 6);
      i[1] = v24;
      v21[1] = v26;
      *v21 = v25;
      *(v21 + 73) = *(v29 + 9);
      v21[4] = v29[0];
      v21[3] = v28;
      v21[2] = v27;
      if (!v9)
      {
        goto LABEL_4;
      }

      ++v9;
    }

    __break(1u);
  }

  return result;
}

void sub_1A43EC4F4(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v139;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_100;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = 96;
  while (1)
  {
    v8 = v5;
    v9 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      ++v5;
      goto LABEL_28;
    }

    v10 = *a3;
    v11 = (*a3 + 96 * v9);
    v12 = v11[1];
    v128 = *v11;
    v129 = v12;
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    *(v132 + 9) = *(v11 + 73);
    v131 = v14;
    v132[0] = v15;
    v130 = v13;
    v16 = (v10 + 96 * v5);
    v18 = v16[3];
    v17 = v16[4];
    v19 = v16[2];
    *(v137 + 9) = *(v16 + 73);
    v136 = v18;
    v137[0] = v17;
    v135 = v19;
    v20 = v16[1];
    v133 = *v16;
    v134 = v20;
    v21 = v129;
    v22 = v20;
    sub_1A406BAA8(&v128, &v123);
    sub_1A406BAA8(&v133, &v123);
    sub_1A406BB58(&v133);
    sub_1A406BB58(&v128);
    v23 = v5;
    v24 = *(&v135 + 1) < *(&v130 + 1) || *&v21 * *(&v21 + 1) < *&v22 * *(&v22 + 1);
    v5 += 2;
    v112 = v23;
    if (v23 + 2 >= v4)
    {
LABEL_15:
      if (v24)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v25 = (v10 + 96 * v23 + 192);
      do
      {
        v26 = v25[1];
        v118 = *v25;
        v119 = v26;
        v27 = v25[2];
        v28 = v25[3];
        v29 = v25[4];
        *(v122 + 9) = *(v25 + 73);
        v121 = v28;
        v122[0] = v29;
        v120 = v27;
        v31 = *(v25 - 3);
        v30 = *(v25 - 2);
        v32 = *(v25 - 4);
        *(v127 + 9) = *(v25 - 23);
        v126 = v31;
        v127[0] = v30;
        v125 = v32;
        v33 = *(v25 - 5);
        v123 = *(v25 - 6);
        v124 = v33;
        v34 = v119;
        v35 = v33;
        sub_1A406BAA8(&v118, v117);
        sub_1A406BAA8(&v123, v117);
        sub_1A406BB58(&v123);
        sub_1A406BB58(&v118);
        if (*&v34 * *(&v34 + 1) < *&v35 * *(&v35 + 1))
        {
          if (!v24)
          {
            goto LABEL_27;
          }
        }

        else if (((v24 ^ (*(&v125 + 1) >= *(&v120 + 1))) & 1) == 0)
        {
          v9 = v5 - 1;
          goto LABEL_15;
        }

        ++v5;
        v25 += 6;
      }

      while (v4 != v5);
      v9 = v5 - 1;
      v5 = v4;
      if (v24)
      {
LABEL_19:
        v8 = v112;
        if (v5 < v112)
        {
          goto LABEL_129;
        }

        if (v112 > v9)
        {
          goto LABEL_28;
        }

        v36 = 96 * v5 - 96;
        v7 = v112;
        v37 = 96 * v112;
        v38 = v5;
        do
        {
          if (v7 != --v38)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_133;
            }

            v39 = (v40 + v36);
            v125 = *(v40 + v37 + 32);
            v126 = *(v40 + v37 + 48);
            v127[0] = *(v40 + v37 + 64);
            *(v127 + 9) = *(v40 + v37 + 73);
            v123 = *(v40 + v37);
            v124 = *(v40 + v37 + 16);
            memmove((v40 + v37), (v40 + v36), 0x60uLL);
            v39[2] = v125;
            v39[3] = v126;
            v39[4] = v127[0];
            *(v39 + 73) = *(v127 + 9);
            *v39 = v123;
            v39[1] = v124;
          }

          ++v7;
          v36 -= 96;
          v37 += 96;
        }

        while (v7 < v38);
      }
    }

LABEL_27:
    v8 = v112;
LABEL_28:
    v41 = a3[1];
    if (v5 < v41)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_126;
      }

      if (v5 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_127;
        }

        if (v8 + a4 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v8 + a4;
        }

        if (v42 < v8)
        {
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v6 = sub_1A3D86884(v6);
LABEL_100:
          v138 = v6;
          v107 = *(v6 + 2);
          if (v107 >= 2)
          {
            while (*a3)
            {
              v108 = *&v6[16 * v107];
              v109 = *&v6[16 * v107 + 24];
              sub_1A43ED37C((*a3 + 96 * v108), (*a3 + 96 * *&v6[16 * v107 + 16]), (*a3 + 96 * v109), v8);
              if (v7)
              {
                goto LABEL_108;
              }

              if (v109 < v108)
              {
                goto LABEL_123;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1A3D86884(v6);
              }

              if (v107 - 2 >= *(v6 + 2))
              {
                goto LABEL_124;
              }

              v110 = &v6[16 * v107];
              *v110 = v108;
              *(v110 + 1) = v109;
              v138 = v6;
              sub_1A3D867F8(v107 - 1);
              v6 = v138;
              v107 = *(v138 + 2);
              if (v107 <= 1)
              {
                goto LABEL_108;
              }
            }

            goto LABEL_134;
          }

LABEL_108:

          return;
        }

        if (v5 != v42)
        {
          break;
        }
      }
    }

LABEL_46:
    if (v5 < v8)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1A3D8598C(0, *(v6 + 2) + 1, 1, v6);
    }

    v62 = *(v6 + 2);
    v61 = *(v6 + 3);
    v7 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v6 = sub_1A3D8598C((v61 > 1), v62 + 1, 1, v6);
    }

    *(v6 + 2) = v7;
    v63 = &v6[16 * v62];
    *(v63 + 4) = v8;
    *(v63 + 5) = v5;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v62)
    {
      while (1)
      {
        v65 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v66 = *(v6 + 4);
          v67 = *(v6 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_66:
          if (v69)
          {
            goto LABEL_114;
          }

          v82 = &v6[16 * v7];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_117;
          }

          v88 = &v6[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_121;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v7 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v92 = &v6[16 * v7];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_80:
        if (v87)
        {
          goto LABEL_116;
        }

        v95 = &v6[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_119;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_87:
        v103 = v65 - 1;
        if (v65 - 1 >= v7)
        {
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v8 = *&v6[16 * v103 + 32];
        v7 = *&v6[16 * v65 + 40];
        v104 = v139;
        sub_1A43ED37C((*a3 + 96 * v8), (*a3 + 96 * *&v6[16 * v65 + 32]), (*a3 + 96 * v7), v64);
        v139 = v104;
        if (v104)
        {
          goto LABEL_108;
        }

        if (v7 < v8)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A3D86884(v6);
        }

        if (v103 >= *(v6 + 2))
        {
          goto LABEL_111;
        }

        v105 = &v6[16 * v103];
        *(v105 + 4) = v8;
        *(v105 + 5) = v7;
        v138 = v6;
        sub_1A3D867F8(v65);
        v6 = v138;
        v7 = *(v138 + 2);
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v6[16 * v7 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_112;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_113;
      }

      v77 = &v6[16 * v7];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_115;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_118;
      }

      if (v81 >= v73)
      {
        v99 = &v6[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_122;
        }

        if (v68 < v102)
        {
          v65 = v7 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v4 = a3[1];
    v7 = 96;
    if (v5 >= v4)
    {
      goto LABEL_98;
    }
  }

  v7 = *a3;
  v43 = *a3 + 96 * v5;
  v113 = v8;
  v44 = v8 - v5 + 1;
  v115 = v42;
LABEL_39:
  v45 = v44;
  for (i = v43; ; i -= 6)
  {
    v47 = i[1];
    v128 = *i;
    v129 = v47;
    v48 = i[2];
    v49 = i[3];
    v50 = i[4];
    *(v132 + 9) = *(i + 73);
    v131 = v49;
    v132[0] = v50;
    v130 = v48;
    v52 = *(i - 3);
    v51 = *(i - 2);
    v53 = *(i - 4);
    *(v137 + 9) = *(i - 23);
    v136 = v52;
    v137[0] = v51;
    v135 = v53;
    v54 = *(i - 5);
    v133 = *(i - 6);
    v134 = v54;
    v55 = v129;
    v56 = v54;
    sub_1A406BAA8(&v128, &v123);
    sub_1A406BAA8(&v133, &v123);
    sub_1A406BB58(&v133);
    sub_1A406BB58(&v128);
    if (*&v55 * *(&v55 + 1) >= *&v56 * *(&v56 + 1) && *(&v135 + 1) >= *(&v130 + 1))
    {
LABEL_38:
      ++v5;
      v43 += 96;
      --v44;
      if (v5 != v115)
      {
        goto LABEL_39;
      }

      v5 = v115;
      v8 = v113;
      goto LABEL_46;
    }

    if (!v7)
    {
      break;
    }

    v57 = i - 6;
    v125 = i[2];
    v126 = i[3];
    v127[0] = i[4];
    *(v127 + 9) = *(i + 73);
    v123 = *i;
    v124 = i[1];
    v58 = *(i - 3);
    i[2] = *(i - 4);
    i[3] = v58;
    v59 = *(i - 1);
    i[4] = *(i - 2);
    i[5] = v59;
    v60 = *(i - 5);
    *i = *(i - 6);
    i[1] = v60;
    v57[1] = v124;
    *v57 = v123;
    *(v57 + 73) = *(v127 + 9);
    v57[4] = v127[0];
    v57[3] = v126;
    v57[2] = v125;
    if (!v45)
    {
      goto LABEL_38;
    }

    ++v45;
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
LABEL_136:
  __break(1u);
}

void sub_1A43ECD4C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1A3D86884(v7);
    }

    v83 = v7 + 16;
    v84 = *(v7 + 2);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v7[16 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1A43ED708((*a3 + 104 * *v85), (*a3 + 104 * *v87), (*a3 + 104 * v88), v92);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 104 * v6 + 96);
      v10 = 104 * v8;
      v11 = *a3 + 104 * v8;
      v12 = *(v11 + 96);
      v13 = v8 + 2;
      v14 = (v11 + 304);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 13;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 104 * v6 - 104;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v105 = *(v22 + v10 + 96);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            memmove((v22 + v10), (v22 + v18), 0x68uLL);
            *(v21 + 64) = v101;
            *(v21 + 80) = v103;
            *(v21 + 96) = v105;
            *v21 = v93;
            *(v21 + 16) = v95;
            *(v21 + 32) = v97;
            *(v21 + 48) = v99;
          }

          ++v20;
          v18 -= 104;
          v10 += 104;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A3D8598C(0, *(v7 + 2) + 1, 1, v7);
    }

    v36 = *(v7 + 2);
    v35 = *(v7 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v7 = sub_1A3D8598C((v35 > 1), v36 + 1, 1, v7);
    }

    *(v7 + 2) = v37;
    v38 = v7 + 32;
    v39 = &v7[16 * v36 + 32];
    *v39 = v8;
    *(v39 + 1) = v6;
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 4);
          v42 = *(v7 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = &v7[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = &v38[16 * v40];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = &v7[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v38[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
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

        v78 = &v38[16 * v40 - 16];
        v79 = *v78;
        v80 = &v38[16 * v40];
        v81 = *(v80 + 1);
        sub_1A43ED708((*a3 + 104 * *v78), (*a3 + 104 * *v80), (*a3 + 104 * v81), v92);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *(v7 + 2);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        memmove(&v38[16 * v40], v80 + 16, 16 * (v82 - 1 - v40));
        *(v7 + 2) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v38[16 * v37];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = &v7[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = &v38[16 * v40];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 104 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 8) >= *(v27 + 96))
    {
LABEL_29:
      ++v6;
      v24 += 104;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 104;
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v106 = *(v27 + 96);
    v94 = *v27;
    v96 = *(v27 + 16);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v29 = *(v27 - 88);
    *v27 = *(v27 - 104);
    *(v27 + 16) = v29;
    v30 = *(v27 - 72);
    v31 = *(v27 - 56);
    v32 = *(v27 - 40);
    v33 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 8);
    *(v27 + 64) = v32;
    *(v27 + 80) = v33;
    *(v27 + 32) = v30;
    *(v27 + 48) = v31;
    *(v28 + 64) = v102;
    *(v28 + 80) = v104;
    *(v28 + 96) = v106;
    *v28 = v94;
    *(v28 + 16) = v96;
    v27 -= 104;
    *(v28 + 32) = v98;
    *(v28 + 48) = v100;
    if (__CFADD__(v26++, 1))
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
}

uint64_t sub_1A43ED37C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 >= v11)
  {
    v26 = 96 * v11;
    if (a4 != __src || &__src[v26] <= a4)
    {
      memmove(a4, __src, 96 * v11);
    }

    v13 = &v4[v26];
    if (v10 >= 96 && v6 > v7)
    {
LABEL_22:
      v27 = v6 - 96;
      v5 -= 96;
      v28 = v13;
      do
      {
        v13 = v28;
        v29 = v5 + 96;
        v30 = *(v28 - 80);
        v41 = *(v28 - 96);
        v42 = v30;
        v31 = *(v28 - 64);
        v32 = *(v28 - 48);
        v33 = *(v28 - 32);
        *(v45 + 9) = *(v28 - 23);
        v44 = v32;
        v45[0] = v33;
        v43 = v31;
        v34 = *(v6 - 3);
        v48 = *(v6 - 4);
        v49 = v34;
        v50[0] = *(v6 - 2);
        *(v50 + 9) = *(v6 - 23);
        v35 = *(v6 - 5);
        v46 = *v27;
        v47 = v35;
        v36 = v42;
        v37 = v35;
        sub_1A406BAA8(&v41, v40);
        sub_1A406BAA8(&v46, v40);
        sub_1A406BB58(&v46);
        sub_1A406BB58(&v41);
        if (*&v36 * *(&v36 + 1) < *&v37 * *(&v37 + 1) || *(&v48 + 1) < *(&v43 + 1))
        {
          if (v29 < v6 || v5 >= v6 || v29 != v6)
          {
            memmove(v5, v6 - 96, 0x60uLL);
          }

          if (v28 <= v4 || (v6 -= 96, v27 <= v7))
          {
            v6 = v27;
            goto LABEL_41;
          }

          goto LABEL_22;
        }

        v28 -= 96;
        if (v29 < v13 || v5 >= v13 || v29 != v13)
        {
          memmove(v5, v13 - 96, 0x60uLL);
        }

        v5 -= 96;
      }

      while (v28 > v4);
      v13 -= 96;
    }
  }

  else
  {
    v12 = 96 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (1)
        {
          v14 = *(v6 + 1);
          v41 = *v6;
          v42 = v14;
          v15 = *(v6 + 2);
          v16 = *(v6 + 3);
          v17 = *(v6 + 4);
          *(v45 + 9) = *(v6 + 73);
          v44 = v16;
          v45[0] = v17;
          v43 = v15;
          v19 = *(v4 + 3);
          v18 = *(v4 + 4);
          v20 = *(v4 + 2);
          *(v50 + 9) = *(v4 + 73);
          v49 = v19;
          v50[0] = v18;
          v48 = v20;
          v21 = *(v4 + 1);
          v46 = *v4;
          v47 = v21;
          v22 = v42;
          v23 = v21;
          sub_1A406BAA8(&v41, v40);
          sub_1A406BAA8(&v46, v40);
          sub_1A406BB58(&v46);
          sub_1A406BB58(&v41);
          if (*&v22 * *(&v22 + 1) < *&v23 * *(&v23 + 1) || *(&v48 + 1) < *(&v43 + 1))
          {
            break;
          }

          v24 = v4;
          v25 = v7 == v4;
          v4 += 96;
          if (!v25)
          {
            goto LABEL_10;
          }

LABEL_11:
          v7 += 96;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_38;
          }
        }

        v24 = v6;
        v25 = v7 == v6;
        v6 += 96;
        if (v25)
        {
          goto LABEL_11;
        }

LABEL_10:
        memmove(v7, v24, 0x60uLL);
        goto LABEL_11;
      }

LABEL_38:
      v6 = v7;
    }
  }

LABEL_41:
  v38 = 96 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v38])
  {
    memmove(v6, v4, v38);
  }

  return 1;
}

uint64_t sub_1A43ED708(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[13 * v9] <= a4)
    {
      memmove(a4, __dst, 104 * v9);
    }

    v12 = &v4[13 * v9];
    if (v8 < 104)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[12] < v6[12])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 13;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 13;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 13;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x68uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[13 * v11] <= a4)
  {
    memmove(a4, __src, 104 * v11);
  }

  v12 = &v4[13 * v11];
  if (v10 >= 104 && v6 > v7)
  {
LABEL_20:
    v5 -= 13;
    do
    {
      v15 = v5 + 13;
      if (*(v6 - 1) < *(v12 - 1))
      {
        v17 = v6 - 13;
        if (v15 != v6)
        {
          memmove(v5, v6 - 13, 0x68uLL);
        }

        if (v12 <= v4 || (v6 -= 13, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 13);
      if (v15 != v12)
      {
        memmove(v5, v12 - 13, 0x68uLL);
      }

      v5 -= 13;
      v12 -= 13;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 104;
  if (v6 != v4 || v6 >= &v4[13 * v18])
  {
    memmove(v6, v4, 104 * v18);
  }

  return 1;
}