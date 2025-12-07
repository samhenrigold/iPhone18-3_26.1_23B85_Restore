void sub_213EA6138(uint64_t a1)
{
  if (!qword_2811827A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA8D8, qword_213F5D840);
    v1 = sub_213F4EAD0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811827A0);
    }
  }
}

void sub_213EA619C(uint64_t a1)
{
  type metadata accessor for GridLayoutConfig(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_213EA6138(319);
        if (v4 <= 0x3F)
        {
          sub_213E61EBC(319, &qword_2811827B0, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_213EA7F00(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
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

uint64_t sub_213EA62FC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v8 <= v10)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = (((((((((((*(*(v6 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 9;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((((((((((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_213EA65A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_213F4CB40() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  v18 = (((((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = v16 + 7;
  v20 = ((((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 >= a3)
  {
    v23 = 0;
    v24 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v17 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v20] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v20] = 0;
      }

      else if (v23)
      {
        a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v10 == v17)
      {
        if (v11 >= a2)
        {
          v30 = *(v9 + 56);

          v30(a1, a2);
        }

        else
        {
          v27 = ~v11 + a2;
          bzero(a1, v18);
          if (v18 <= 3)
          {
            *a1 = v27;
          }

          else
          {
            *a1 = v27;
          }
        }
      }

      else
      {
        v28 = &a1[v18 + v15] & ~v15;
        if (v13 == v17)
        {
          v29 = *(v12 + 56);

          v29(v28, a2, v13);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v31 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v31 = (a2 - 1);
          }

          *((((((((((v19 + v28) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) = v31;
        }
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v17 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *&a1[v20] = v25;
    }

    else
    {
      *&a1[v20] = v25;
    }
  }

  else if (v23)
  {
    a1[v20] = v25;
  }
}

void sub_213EA68E0(uint64_t a1)
{
  sub_213EA7F00(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GridLayoutConfig(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_213EA7F00(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_27C8F7660, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              sub_213EA6138(319);
              if (v7 <= 0x3F)
              {
                sub_213E61EBC(319, &qword_2811827B0, MEMORY[0x277D839B0]);
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

uint64_t sub_213EA6AA8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_213F4D290() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_213F4CB40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v10 <= v12)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v7 + v16 + 1;
  v18 = (((((((((((*(*(v8 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = *(v11 + 64) + 7;
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v20 = ((((((((((v19 + ((v18 + v13 + (v17 & ~v16)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v15 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v29 = (a1 + v17) & ~v16;
  if (v10 == v15)
  {
    v30 = *(v9 + 48);

    return v30(v29);
  }

  else
  {
    v31 = (v29 + v13 + v18) & ~v13;
    if (v12 == v15)
    {
      v32 = *(v11 + 48);

      return v32(v31, v12);
    }

    else
    {
      v33 = *((v19 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }
  }
}

void sub_213EA6D80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_213F4D290() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_213F4CB40() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (v15 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = v16 & 0xF8 | 7;
  v22 = v9 + v21 + 1;
  v23 = (((((((((((v17 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = ((((((((((v19 + 7 + ((v23 + v18 + (v22 & ~v21)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v27 = 0;
    v28 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((((((((((v19 + 7 + ((v23 + v18 + (v22 & ~v21)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a3 - v20 + 1;
    }

    else
    {
      v25 = 2;
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

    v28 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_25:
      if (v27 > 1)
      {
        if (v27 != 2)
        {
          *(a1 + v24) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v24) = 0;
      }

      else if (v27)
      {
        *(a1 + v24) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return;
      }

LABEL_41:
      v31 = ((a1 + v22) & ~v21);
      if (v12 == v20)
      {
        if (v13 >= a2)
        {
          v35 = *(v11 + 56);

          v35(v31, a2);
        }

        else
        {
          v32 = ~v13 + a2;
          bzero(v31, v23);
          if (v23 <= 3)
          {
            *v31 = v32;
          }

          else
          {
            *v31 = v32;
          }
        }
      }

      else
      {
        v33 = &v31[v18 + v23] & ~v18;
        if (v15 == v20)
        {
          v34 = *(v14 + 56);

          v34(v33, a2, v15);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v36 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v36 = (a2 - 1);
          }

          *((v19 + 7 + v33) & 0xFFFFFFFFFFFFFFF8) = v36;
        }
      }

      return;
    }
  }

  if (((((((((((v19 + 7 + ((v23 + v18 + (v22 & ~v21)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1;
  }

  if (v24)
  {
    v30 = ~v20 + a2;
    bzero(a1, v24);
    *a1 = v30;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      *(a1 + v24) = v29;
    }

    else
    {
      *(a1 + v24) = v29;
    }
  }

  else if (v27)
  {
    *(a1 + v24) = v29;
  }
}

void sub_213EA70E4(uint64_t a1)
{
  type metadata accessor for GridLayoutConfig(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_213EA7F00(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_213EA6138(319);
          if (v5 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_2811827B0, MEMORY[0x277D839B0]);
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

uint64_t sub_213EA723C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v8 <= v10)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = (((((((((((*(*(v6 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 9;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_213EA74C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_213F4CB40() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  v18 = (((((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = v16 + 7;
  v20 = ((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v23 = 0;
    v24 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a3 - v17 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v20] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v20] = 0;
      }

      else if (v23)
      {
        a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v10 == v17)
      {
        if (v11 >= a2)
        {
          v30 = *(v9 + 56);

          v30(a1, a2);
        }

        else
        {
          v27 = ~v11 + a2;
          bzero(a1, v18);
          if (v18 <= 3)
          {
            *a1 = v27;
          }

          else
          {
            *a1 = v27;
          }
        }
      }

      else
      {
        v28 = &a1[v18 + v15] & ~v15;
        if (v13 == v17)
        {
          v29 = *(v12 + 56);

          v29(v28, a2, v13);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v31 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v31 = (a2 - 1);
          }

          *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v31;
        }
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v17 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *&a1[v20] = v25;
    }

    else
    {
      *&a1[v20] = v25;
    }
  }

  else if (v23)
  {
    a1[v20] = v25;
  }
}

void sub_213EA77D0(uint64_t a1)
{
  sub_213EA7F00(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GridLayoutConfig(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_213EA78E8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_213F4CEA0() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_213F4CB40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v10 <= v12)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v7 + v16 + 1;
  v18 = (((((((((((*(*(v8 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = *(v11 + 64) + 7;
  if (v15 < a2)
  {
    v20 = ((v19 + ((v18 + v13 + (v17 & ~v16)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 24;
    v21 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = a2 - v15 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *(a1 + v20);
        if (!v25)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v25 = *(a1 + v20);
        if (!v25)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v24)
      {
        goto LABEL_33;
      }

      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    v34 = v15 + (v28 | v27);
    return (v34 + 1);
  }

LABEL_33:
  v29 = (a1 + v17) & ~v16;
  if (v10 == v15)
  {
    v30 = *(v9 + 48);

    return v30(v29);
  }

  v31 = (v29 + v13 + v18) & ~v13;
  if (v12 != v15)
  {
    v33 = *(((v19 + v31) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    v34 = v33 - 1;
    if (v34 < 0)
    {
      v34 = -1;
    }

    return (v34 + 1);
  }

  v32 = *(v11 + 48);

  return v32(v31, v12);
}

void sub_213EA7BA8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_213F4CEA0() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_213F4CB40() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = *(*(a4 + 16) - 8);
  if (v12 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v13 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  v19 = *(v13 + 80);
  v20 = *(v13 + 64);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v13 + 84);
  }

  if (v21 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  v22 = v17 & 0xF8 | 7;
  v23 = v9 + v22 + 1;
  v24 = (((((((((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v25 = ((v20 + 7 + ((v24 + v19 + (v23 & ~v22)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v21 >= a3)
  {
    v28 = 0;
    v29 = a2 - v21;
    if (a2 <= v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((v20 + 7 + ((v24 + v19 + (v23 & ~v22)) & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v26 = a3 - v21 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v21;
    if (a2 <= v21)
    {
LABEL_25:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return;
      }

LABEL_41:
      v32 = ((a1 + v23) & ~v22);
      if (v12 == v21)
      {
        if (v14 >= a2)
        {
          v36 = *(v11 + 56);

          v36(v32, a2);
        }

        else
        {
          v33 = ~v14 + a2;
          bzero(v32, v24);
          if (v24 <= 3)
          {
            *v32 = v33;
          }

          else
          {
            *v32 = v33;
          }
        }
      }

      else
      {
        v34 = &v32[v19 + v24] & ~v19;
        if (v16 == v21)
        {
          v35 = *(v15 + 56);

          v35(v34, a2, v16);
        }

        else
        {
          v37 = ((v20 + 7 + v34) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v37[1] = 0;
            v37[2] = 0;
            *v37 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v37[2] = a2;
          }
        }
      }

      return;
    }
  }

  if (((v20 + 7 + ((v24 + v19 + (v23 & ~v22)) & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if (v25)
  {
    v31 = ~v21 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

void sub_213EA7F00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_213EA7F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213EA7FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213EA81A4()
{
  result = qword_27C8FABA0;
  if (!qword_27C8FABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAB98, &qword_213F5DE18);
    sub_213DE3AE4(&qword_2811825C0, &qword_27C8FA8F0, &unk_213F5D8A0, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FABA0);
  }

  return result;
}

unint64_t sub_213EA82F8()
{
  result = qword_27C8FABC0;
  if (!qword_27C8FABC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB8, &qword_213F5DE28);
    sub_213DE3AE4(&qword_27C8FABC8, &qword_27C8FABD0, &unk_213F5DE30, MEMORY[0x277CDF330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FABC0);
  }

  return result;
}

uint64_t sub_213EA848C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_213F4D7F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_213DE3164(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_213F4F520();
    v19 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_213EA868C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_213DE3164(v2, &v13 - v9, &qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_213DE2B44(v10, a1, &qword_27C8F8D50, &unk_213F5E0A0);
  }

  sub_213F4F520();
  v12 = sub_213F4E000();
  sub_213F4CC10();

  sub_213F4D7E0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_213EA88F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EA8970()
{
  result = qword_27C8FABF0;
  if (!qword_27C8FABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABF8, &qword_213F5DE60);
    v1 = MEMORY[0x277CE1148];
    sub_213DE3AE4(&qword_27C8FAC00, &qword_27C8FAC08, &qword_213F5DE68, MEMORY[0x277CE1148]);
    sub_213DE3AE4(&qword_27C8FAC10, &qword_27C8FAC18, &qword_213F5DE70, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FABF0);
  }

  return result;
}

uint64_t objectdestroy_67Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for DefaultLayout(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  v8 = sub_213F4CB40();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_213EA8BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for DefaultLayout(0, *(v4 + 16), *(v4 + 24), a3) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_213EA34A4(a1, a2, v9, a4);
}

uint64_t sub_213EA8C44(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC30, &qword_213F5DEA0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_213EA8CAC()
{
  result = qword_27C8FAC28;
  if (!qword_27C8FAC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC20, &qword_213F5DE78);
    sub_213EAC454(&qword_281182C48, MEMORY[0x277CE0150], MEMORY[0x277CE0168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAC28);
  }

  return result;
}

uint64_t sub_213EA8D60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EA8DD0()
{
  result = qword_27C8FAC70;
  if (!qword_27C8FAC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC68, &qword_213F5DED0);
    sub_213DE3AE4(&qword_27C8FAC78, &qword_27C8FAC80, &qword_213F5DED8, MEMORY[0x277CDF168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAC70);
  }

  return result;
}

unint64_t sub_213EA8FB0()
{
  result = qword_27C8FAC90;
  if (!qword_27C8FAC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC88, &qword_213F5DEE0);
    sub_213DE3AE4(&qword_27C8FAC98, &qword_27C8FACA0, &qword_213F5DEE8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAC90);
  }

  return result;
}

char *sub_213EA90C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA91E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA90E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA930C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA9108(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA9418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA9128(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA951C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_213EA9148(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA9620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_213EA9168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA9754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_213EA9188(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA98A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_213EA91A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA99D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA91C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213EA9BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA91E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B60, &qword_213F59FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213EA930C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF80, &unk_213F5E2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213EA9418(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF88, &unk_213F5E2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_213EA951C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE80, &qword_213F5E0B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_213EA9620(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD30, &qword_213F5DF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD38, &qword_213F5DF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213EA9754(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF68, &qword_213F5E2A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF70, &qword_213F5E2B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213EA98A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF60, &unk_213F5E298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA890, &qword_213F5D620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213EA99D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v10 = *(type metadata accessor for RichTextViewModel(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RichTextViewModel(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_213EA9BB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_213EA9CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = (a1 + 32);
    v7 = MEMORY[0x277D84F90];
    v39 = *(a1 + 16);
    while (1)
    {
      v8 = v6[9];
      v9 = v6[7];
      v48 = v6[8];
      v49 = v8;
      v10 = v6[9];
      v50 = v6[10];
      v11 = v6[5];
      v12 = v6[3];
      v44 = v6[4];
      v45 = v11;
      v13 = v6[5];
      v14 = v6[7];
      v46 = v6[6];
      v47 = v14;
      v15 = v6[1];
      v41[0] = *v6;
      v41[1] = v15;
      v16 = v6[3];
      v18 = *v6;
      v17 = v6[1];
      v42 = v6[2];
      v43 = v16;
      v60 = v48;
      v61 = v10;
      v62 = v6[10];
      v56 = v44;
      v57 = v13;
      v58 = v46;
      v59 = v9;
      v52 = v18;
      v53 = v17;
      v51 = *(v6 + 176);
      v63 = *(v6 + 176);
      v54 = v42;
      v55 = v12;
      if (v4)
      {
        sub_213DF73EC(v41, v40);
        v2 = v7;
        v19 = __OFSUB__(v4--, 1);
        if (v19)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = v7[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF00, &qword_213F5E180);
        v2 = swift_allocObject();
        v23 = (_swift_stdlib_malloc_size(v2) - 32) / 192;
        v2[2] = v22;
        v2[3] = 2 * v23;
        v24 = v7[3] >> 1;
        v25 = 24 * v24;
        v26 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        v5 = &v2[24 * v24 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v25 + 4] && v2 == v7)
          {
            sub_213DF73EC(v41, v40);
          }

          else
          {
            sub_213DF73EC(v41, v40);
            memmove(v2 + 4, v7 + 4, v25 * 8);
          }

          v7[2] = 0;

          v1 = v39;
          v19 = __OFSUB__(v26, 1);
          v4 = v26 - 1;
          if (v19)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }
        }

        else
        {
          sub_213DF73EC(v41, v40);

          v19 = __OFSUB__(v26, 1);
          v4 = v26 - 1;
          if (v19)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v27 = v60;
      v28 = v61;
      v29 = v62;
      *(v5 + 184) = v63;
      v30 = v52;
      v31 = v53;
      v32 = v54;
      *(v5 + 56) = v55;
      *(v5 + 40) = v32;
      *(v5 + 24) = v31;
      *(v5 + 8) = v30;
      v33 = v56;
      v34 = v57;
      v35 = v58;
      *(v5 + 120) = v59;
      *(v5 + 104) = v35;
      *(v5 + 88) = v34;
      *(v5 + 72) = v33;
      *(v5 + 168) = v29;
      *(v5 + 152) = v28;
      *(v5 + 136) = v27;
      v5 += 192;
      v6 = (v6 + 184);
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v36 = v2[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v4);
    v38 = v37 - v4;
    if (v19)
    {
      goto LABEL_30;
    }

    v2[2] = v38;
  }
}

void sub_213EA9F74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD20, &qword_213F5DF80);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }
}

void sub_213EAA104(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF10, &qword_213F5E220);
  v2 = MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x277D84F90] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for ContextLineAccessoryViewModel(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_213EAC2D4(v13, v15 + v16, type metadata accessor for ContextLineAccessoryViewModel);
      v17 = v6;
      sub_213DE2B44(v15, v6, &qword_27C8FAF10, &qword_213F5E220);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF18, &qword_213F5E228);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_213DE2B44(v17, v9, &qword_27C8FAF10, &qword_213F5E220);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

void sub_213EAA460(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = (a1 + 57);
    v28 = *(a1 + 16);
    while (1)
    {
      v7 = *(v6 - 25);
      v8 = *(v6 - 9);
      v9 = *v6;
      v10 = *(v6 - 1);
      v29 = v7;
      if (v4)
      {
        v11 = v7;

        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = v2[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEF0, &unk_213F5E110);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v2[3] >> 1;
        v20 = 5 * v19;
        v21 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        v5 = &v16[5 * v19 + 4];
        if (v2[2])
        {
          v22 = v16 < v2 || v18 >= &v2[v20 + 4];
          if (v22 || v16 != v2)
          {
            memmove(v18, v2 + 4, v20 * 8);
          }

          v23 = v29;

          v2[2] = 0;
        }

        else
        {
          v24 = v29;
        }

        v2 = v16;
        v1 = v28;
        v12 = __OFSUB__(v21, 1);
        v4 = v21 - 1;
        if (v12)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v29;
      *(v5 + 24) = v8;
      *(v5 + 32) = v10;
      *(v5 + 33) = v9;
      v5 += 40;
      v6 += 32;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v25 = v2[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v12 = __OFSUB__(v26, v4);
    v27 = v26 - v4;
    if (v12)
    {
      goto LABEL_30;
    }

    v2[2] = v27;
  }
}

void *sub_213EAA65C()
{
  v18 = sub_213F4DE60();
  MEMORY[0x28223BE20](v18);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D960();
  sub_213EAC454(&qword_281182C40, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  sub_213F4F490();
  sub_213F4F4C0();
  v5 = 0;
  v19 = sub_213F4F4B0();
  if (v19 >= 2)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v8 = __OFADD__(v7, 2);
      v7 += 2;
      if (v8)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v6;
      if (v7 >= v19)
      {
        goto LABEL_7;
      }
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_7:
  v20 = MEMORY[0x277D84F90];
  result = sub_213EA9148(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v10 = v20;
  if (!v5)
  {
    if (v19 < 2)
    {
      return v10;
    }

    v5 = 1;
LABEL_28:
    while (1)
    {
      v1 = v5 + 2;
      if (__OFADD__(v5, 2))
      {
        break;
      }

      sub_213F4F490();
      sub_213F4F4C0();
      result = sub_213F4F4B0();
      if (result >= v1)
      {
        v16 = v5 + 2;
      }

      else
      {
        v16 = result;
      }

      if (v16 < v5)
      {
        goto LABEL_37;
      }

      sub_213F4D970();
      sub_213EAC454(&qword_27C8FAD28, MEMORY[0x277CE0668], MEMORY[0x277CE0670]);
      result = sub_213F4F3C0();
      v3 = result;
      v20 = v10;
      v2 = *(v10 + 16);
      v6 = *(v10 + 24);
      v0 = v2 + 1;
      if (v2 >= v6 >> 1)
      {
LABEL_27:
        result = sub_213EA9148((v6 > 1), v0, 1);
        v10 = v20;
      }

      *(v10 + 16) = v0;
      *(v10 + 8 * v2 + 32) = v3;
      v5 += 2;
      if (v1 >= v19)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v2 = 0x3FFFFFFFFFFFFFFFLL;
  v1 = 3;
  do
  {
    v3 = v1 - 2;
    v6 = v19;
    if (v1 - 2 >= v19)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (!v2)
    {
      goto LABEL_24;
    }

    sub_213F4F490();
    sub_213F4F4C0();
    v11 = sub_213F4F4B0();
    if (v11 >= v1)
    {
      v12 = v1;
    }

    else
    {
      v12 = v11;
    }

    if (v12 < v3)
    {
      goto LABEL_25;
    }

    sub_213F4D970();
    sub_213EAC454(&qword_27C8FAD28, MEMORY[0x277CE0668], MEMORY[0x277CE0670]);
    result = sub_213F4F3C0();
    v20 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    v0 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v15 = result;
      sub_213EA9148((v13 > 1), v14 + 1, 1);
      result = v15;
      v10 = v20;
    }

    *(v10 + 16) = v0;
    *(v10 + 8 * v14 + 32) = result;
    --v2;
    v1 += 2;
    --v5;
  }

  while (v5);
  v5 = v1 - 2;
  if (v1 - 2 < v19)
  {
    goto LABEL_28;
  }

  return v10;
}

uint64_t objectdestroy_88Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ComposeLayout(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  v8 = sub_213F4CB40();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_213EAAC08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EAAC8C()
{
  result = qword_27C8FAD00;
  if (!qword_27C8FAD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD08, &qword_213F5DF48);
    sub_213DE3AE4(&qword_27C8FAD10, &qword_27C8FAD18, &unk_213F5DF50, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAD00);
  }

  return result;
}

double sub_213EAAD44@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(type metadata accessor for ComposeLayout(0, v6, v7, a2) - 8);
  v9 = v3[4];
  v10 = v3 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  *&result = sub_213EA1194(a1, v9, v10, v6, v7, a3).n128_u64[0];
  return result;
}

unint64_t sub_213EAADEC()
{
  result = qword_27C8FAD50;
  if (!qword_27C8FAD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD48, &qword_213F5DFA0);
    sub_213DE3AE4(&qword_27C8FAD58, &qword_27C8FAD60, &unk_213F5DFA8, MEMORY[0x277CDF168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAD50);
  }

  return result;
}

unint64_t sub_213EAAF4C()
{
  result = qword_27C8FAD70;
  if (!qword_27C8FAD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD68, &qword_213F5DFB8);
    sub_213DE3AE4(&qword_27C8FAD78, &qword_27C8FAD80, &qword_213F5DFC0, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAD70);
  }

  return result;
}

uint64_t objectdestroy_124Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ShelfLayout(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213F4D290();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  v10 = *(v6 + 36);
  v11 = sub_213F4CB40();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  (*(*(v5 - 8) + 8))(v8 + *(v6 + 40), v5);

  return swift_deallocObject();
}

uint64_t sub_213EAB264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ShelfLayout(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_213E9B900(a1, v9, v6, v7);
}

unint64_t sub_213EAB314()
{
  result = qword_27C8FAE08;
  if (!qword_27C8FAE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE00, &qword_213F5E048);
    sub_213DE3AE4(&qword_27C8FAE10, &qword_27C8FAE18, &qword_213F5E050, MEMORY[0x277CDF168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE08);
  }

  return result;
}

uint64_t sub_213EAB404(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

void *sub_213EAB4E4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v10 = *(v1 + 32);
  v11 = v3;
  v12 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8E0, qword_213F5D860);
  result = MEMORY[0x216052020](&v8, v5);
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_213EAB5F0(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

unint64_t sub_213EAB6B4()
{
  result = qword_27C8FAE28;
  if (!qword_27C8FAE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE20, &qword_213F5E058);
    sub_213DE3AE4(&qword_27C8FAE30, &qword_27C8FAE38, &qword_213F5E060, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE28);
  }

  return result;
}

uint64_t sub_213EAB790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a3(0, v7, v8) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a4(a1, a2, v10, v7, v8);
}

uint64_t sub_213EAB87C(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v8, v9, v5, v6);
}

unint64_t sub_213EAB960()
{
  result = qword_27C8FAE50;
  if (!qword_27C8FAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE48, &qword_213F5E070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE58, &qword_213F5E078);
    sub_213EABA54();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE50);
  }

  return result;
}

unint64_t sub_213EABA54()
{
  result = qword_27C8FAE60;
  if (!qword_27C8FAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE58, &qword_213F5E078);
    sub_213EABB0C();
    sub_213DE3AE4(&qword_281182958, &qword_27C8FAE70, &unk_213F5E080, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE60);
  }

  return result;
}

unint64_t sub_213EABB0C()
{
  result = qword_27C8FAE68;
  if (!qword_27C8FAE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FADF0, &qword_213F5E038);
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE68);
  }

  return result;
}

uint64_t objectdestroy_153Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for StackLayout(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  v8 = sub_213F4CB40();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  return swift_deallocObject();
}

unint64_t sub_213EABDB0()
{
  result = qword_27C8FAED0;
  if (!qword_27C8FAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAEC8, &qword_213F5E0F8);
    sub_213EABE68();
    sub_213DE3AE4(&qword_27C8F8760, &qword_27C8F8768, &unk_213F547A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAED0);
  }

  return result;
}

unint64_t sub_213EABE68()
{
  result = qword_27C8FAED8;
  if (!qword_27C8FAED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAEE0, &unk_213F5E100);
    sub_213EABF20();
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAED8);
  }

  return result;
}

unint64_t sub_213EABF20()
{
  result = qword_27C8FAEE8;
  if (!qword_27C8FAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAEE8);
  }

  return result;
}

uint64_t objectdestroy_183Tm()
{

  return swift_deallocObject();
}

uint64_t sub_213EAC0DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213EAC124(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_213EAC174()
{
  result = qword_281182F68;
  if (!qword_281182F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE98, &qword_213F5E0C8);
    sub_213EAC200();
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F68);
  }

  return result;
}

unint64_t sub_213EAC200()
{
  result = qword_2811831C0;
  if (!qword_2811831C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE90, &qword_213F5E0C0);
    sub_213DE3AE4(&qword_2811826C0, &qword_27C8FAF08, &qword_213F5E1C8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831C0);
  }

  return result;
}

uint64_t sub_213EAC2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_213EAC370()
{
  result = qword_27C8FAF30;
  if (!qword_27C8FAF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF28, &qword_213F5E238);
    sub_213EAAC08(&qword_281182E28, &qword_27C8F9B20, &qword_213F5E240, sub_213E5B5C8);
    sub_213DE3AE4(&qword_27C8FAF38, &qword_27C8FAF40, &qword_213F5E248, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAF30);
  }

  return result;
}

uint64_t sub_213EAC454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213EAC49C()
{
  result = qword_27C8FAF58;
  if (!qword_27C8FAF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF50, &unk_213F5E250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF20, &qword_213F5E230);
    sub_213F4D450();
    sub_213DE3AE4(&qword_27C8FAF48, &qword_27C8FAF20, &qword_213F5E230, MEMORY[0x277CDF028]);
    sub_213EAC454(&qword_281182C78, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAF58);
  }

  return result;
}

void sub_213EAC644(uint64_t a1)
{
  sub_213EAC7A0(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213DE22E8();
    if (v2 <= 0x3F)
    {
      sub_213EAC7A0(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EAC7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_213EAC850(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v2;
}

uint64_t sub_213EAC914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 + 32);
  v32 = *(a1 + 24);
  v30 = v3;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  v35 = *(a1 + 16);
  sub_213F4D400();
  v29 = *(a1 + 40);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v28 = sub_213F4EBC0();
  sub_213F4DBB0();
  v4 = sub_213F4E9C0();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_213F4D400();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v10 = sub_213F4D400();
  v34 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  *&v16 = v35;
  *(&v16 + 1) = v32;
  *&v17 = v30;
  *(&v17 + 1) = v29;
  v38 = v16;
  v39 = v17;
  v18 = *(a1 + 64);
  v40 = *(a1 + 48);
  v41 = v18;
  v42 = v36;
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v48 = WitnessTable;
  v49 = v20;
  v21 = swift_getWitnessTable();
  sub_213F4E9B0();
  v47 = v21;
  v22 = swift_getWitnessTable();
  sub_213F4E440();
  (*(v31 + 8))(v6, v4);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v45 = v22;
  v46 = MEMORY[0x277CE03F0];
  v23 = swift_getWitnessTable();
  sub_213F4E4C0();
  (*(v33 + 8))(v9, v7);
  v24 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
  v43 = v23;
  v44 = v24;
  v25 = swift_getWitnessTable();
  sub_213DBFEEC(v13, v10, v25);
  v26 = *(v34 + 8);
  v26(v13, v10);
  sub_213DBFEEC(v15, v10, v25);
  return (v26)(v15, v10);
}

uint64_t sub_213EACF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v80 = a8;
  v67 = a7;
  v79 = a6;
  v77 = a2;
  v68 = a1;
  v76 = a9;
  v78 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  sub_213F4D400();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  v64 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_213F4EBC0();
  v66 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = v59 - v17;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata3();
  v18 = sub_213F4EFE0();
  v19 = swift_getWitnessTable();
  v59[1] = v18;
  v59[0] = v19;
  v20 = sub_213F4EBC0();
  v62 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v61 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v60 = v59 - v23;
  v24 = sub_213F4D390();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  v28 = sub_213F4DBB0();
  v70 = *(v28 - 8);
  v71 = v28;
  MEMORY[0x28223BE20](v28);
  v69 = v59 - v29;
  v83[0] = v77;
  v83[1] = a3;
  v73 = a3;
  v74 = a4;
  v83[2] = a4;
  v83[3] = a5;
  v75 = a5;
  v30 = v67;
  v83[4] = v79;
  v83[5] = v67;
  v83[6] = v80;
  v83[7] = v78;
  v31 = type metadata accessor for ListCellLayout(0, v83);
  v32 = v68;
  if (*(v68 + *(v31 + 96)) == 1 && (sub_213EA886C(v27), v33 = sub_213F4D370(), v31 = (*(v25 + 8))(v27, v24), (v33 & 1) != 0))
  {
    MEMORY[0x28223BE20](v31);
    v35 = v73;
    v34 = v74;
    v59[-10] = v77;
    v59[-9] = v35;
    v59[-8] = v34;
    v37 = v79;
    v36 = v80;
    v59[-7] = v75;
    v59[-6] = v37;
    v59[-5] = v30;
    v59[-4] = v36;
    v59[-3] = v78;
    v59[-2] = v32;
    sub_213F4DA40();
    v38 = v61;
    sub_213F4EBB0();
    v39 = v72;
    v40 = swift_getWitnessTable();
    v41 = v60;
    sub_213DBFEEC(v38, v39, v40);
    v42 = *(v62 + 8);
    v42(v38, v39);
    sub_213DBFEEC(v41, v39, v40);
    v43 = swift_getWitnessTable();
    v44 = v69;
    sub_213E95440(v38, v39, v13, v40, v43);
    v42(v38, v39);
    v42(v41, v39);
  }

  else
  {
    MEMORY[0x28223BE20](v31);
    v46 = v73;
    v45 = v74;
    v59[-10] = v77;
    v59[-9] = v46;
    v59[-8] = v45;
    v48 = v79;
    v47 = v80;
    v59[-7] = v75;
    v59[-6] = v48;
    v59[-5] = v30;
    v59[-4] = v47;
    v59[-3] = v78;
    v59[-2] = v32;
    sub_213F4DA40();
    sub_213F4EBB0();
    v49 = swift_getWitnessTable();
    v50 = v65;
    sub_213DBFEEC(v16, v13, v49);
    v51 = *(v66 + 8);
    v51(v16, v13);
    sub_213DBFEEC(v50, v13, v49);
    v52 = v72;
    v53 = swift_getWitnessTable();
    v44 = v69;
    sub_213DBFF2C(v16, v52, v13, v53, v49);
    v51(v16, v13);
    v51(v50, v13);
  }

  v54 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v81 = v54;
  v82 = v55;
  v56 = v71;
  v57 = swift_getWitnessTable();
  sub_213DBFEEC(v44, v56, v57);
  return (*(v70 + 8))(v44, v56);
}

uint64_t sub_213EAD79C@<X0>(char *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void (*a7)(void, void)@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v62 = a7;
  v60 = a6;
  v63 = a1;
  v71 = a8;
  v70 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v69 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = v56 - v16;
  v67 = *(v17 - 8);
  MEMORY[0x28223BE20](v15);
  v64 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19;
  v66 = sub_213F4D400();
  v75 = *(v66 - 8);
  v21 = MEMORY[0x28223BE20](v66);
  v77 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = v56 - v23;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v72 = sub_213F4EB40();
  v74 = *(v72 - 8);
  v24 = MEMORY[0x28223BE20](v72);
  v76 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v78 = v56 - v26;
  v56[1] = sub_213F4D8A0();
  v58 = v20;
  v92 = v20;
  v93 = a2;
  v94 = a3;
  v95 = a4;
  v59 = a4;
  v27 = a5;
  v28 = v60;
  v96 = a5;
  v97 = v60;
  v29 = v62;
  v98 = v62;
  v99 = a9;
  v73 = a9;
  v57 = type metadata accessor for ListCellLayout(0, &v92);
  v30 = v63;
  v79 = v20;
  v80 = a2;
  v81 = a3;
  v82 = a4;
  v83 = v27;
  v84 = v28;
  v31 = v27;
  v85 = v29;
  v86 = a9;
  v87 = v63;
  v32 = v76;
  sub_213F4EB30();
  v33 = v72;
  v60 = swift_getWitnessTable();
  sub_213DBFEEC(v32, v33, v60);
  v34 = *(v74 + 8);
  WitnessTable = v74 + 8;
  v62 = v34;
  v35 = (v34)(v32, v33);
  v36 = v57;
  v37 = v64;
  (*&v30[*(v57 + 100)])(v35);
  sub_213F4EEF0();
  v38 = v58;
  v39 = v77;
  sub_213F4E750();
  (*(v67 + 8))(v37, v38);
  v91[3] = v31;
  v91[4] = MEMORY[0x277CDFC60];
  v40 = v66;
  v64 = swift_getWitnessTable();
  v41 = v65;
  sub_213DBFEEC(v39, v40, v64);
  v67 = *(v75 + 8);
  v42 = (v67)(v39, v40);
  v43 = *&v30[*(v36 + 112)];
  v44 = v69;
  v43(v42);
  v45 = v68;
  v46 = v59;
  sub_213DBFEEC(v44, v59, v73);
  v47 = v70;
  v63 = *(v70 + 8);
  (v63)(v44, v46);
  v48 = v76;
  v49 = v72;
  (*(v74 + 16))(v76, v78, v72);
  v92 = v48;
  v50 = v77;
  (*(v75 + 16))(v77, v41, v40);
  v93 = v50;
  (*(v47 + 16))(v44, v45, v46);
  v94 = v44;
  v91[0] = v49;
  v91[1] = v40;
  v91[2] = v46;
  v88 = v60;
  v89 = v64;
  v90 = v73;
  sub_213E95270(&v92, 3uLL, v91);
  v51 = v45;
  v52 = v63;
  (v63)(v51, v46);
  v53 = v67;
  (v67)(v41, v40);
  v54 = v62;
  v62(v78, v49);
  (v52)(v44, v46);
  v53(v77, v40);
  return v54(v76, v49);
}

uint64_t sub_213EADF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v45 = a6;
  v46 = a5;
  v39 = a3;
  v44 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v42 = &v38 - v13;
  v38 = *(v14 - 8);
  v15 = v38;
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v53 = v21;
  v54 = v22;
  v55 = v23;
  v56 = v24;
  v57 = v25;
  v58 = v26;
  v41 = v26;
  v59 = v27;
  v60 = v28;
  v29 = type metadata accessor for ListCellLayout(0, &v53);
  (*(a1 + *(v29 + 104)))();
  sub_213DBFEEC(v18, a2, a4);
  v43 = *(v15 + 8);
  v30 = v43(v18, a2);
  (*(a1 + *(v29 + 108)))(v30);
  v31 = v42;
  v32 = v39;
  sub_213DBFEEC(v11, v39, v46);
  v33 = v44;
  v40 = *(v44 + 8);
  v40(v11, v32);
  (*(v38 + 16))(v18, v20, a2);
  v51 = 0;
  v52 = 1;
  v53 = v18;
  v54 = &v51;
  (*(v33 + 16))(v11, v31, v32);
  v55 = v11;
  v34 = a2;
  v50[0] = a2;
  v50[1] = MEMORY[0x277CE1180];
  v50[2] = v32;
  v47 = v41;
  v48 = MEMORY[0x277CE1170];
  v49 = v46;
  sub_213E95270(&v53, 3uLL, v50);
  v35 = v40;
  v40(v31, v32);
  v36 = v43;
  v43(v20, v34);
  v35(v11, v32);
  return v36(v18, v34);
}

uint64_t sub_213EAE2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a1;
  v66 = a9;
  v62 = *(a5 - 8);
  v69 = a10;
  MEMORY[0x28223BE20](a1);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_213F4D400();
  v64 = *(v60 - 8);
  v18 = MEMORY[0x28223BE20](v60);
  v65 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v63 = &v50 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  sub_213F4D400();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  v58 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_213F4EB40();
  v67 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v68 = &v50 - v27;
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v87 = a7;
  v28 = v69;
  v88 = a8;
  v89 = v69;
  v51 = type metadata accessor for ListCellLayout(0, &v82);
  v54 = *(v55 + *(v51 + 92));
  v70 = a2;
  v71 = a3;
  v72 = a4;
  v59 = a5;
  v73 = a5;
  v74 = a6;
  v75 = a7;
  v76 = a8;
  v77 = v28;
  v78 = v55;
  v29 = v55;
  sub_213F4D8A0();
  v30 = v57;
  sub_213F4EB30();
  v52 = swift_getWitnessTable();
  sub_213DBFEEC(v26, v23, v52);
  v31 = *(v67 + 8);
  WitnessTable = v26;
  v58 = v23;
  v32 = v23;
  v33 = v51;
  v54 = v67 + 8;
  v53 = v31;
  v34 = v31(v26, v32);
  (*(v29 + *(v33 + 112)))(v34);
  sub_213F4E080();
  if (*(v29 + *(v33 + 84)) == 1 && sub_213EAC850(v33) > 0.0)
  {
    sub_213EAC850(v33);
  }

  v35 = v61;
  v36 = v59;
  v37 = v69;
  sub_213F4E7D0();
  (*(v62 + 8))(v30, v36);
  v81[2] = v37;
  v81[3] = MEMORY[0x277CDF918];
  v38 = v60;
  v39 = swift_getWitnessTable();
  v40 = v63;
  sub_213DBFEEC(v35, v38, v39);
  v41 = v64;
  v42 = *(v64 + 8);
  v42(v35, v38);
  v43 = WitnessTable;
  v44 = v68;
  v45 = v58;
  (*(v67 + 16))(WitnessTable, v68, v58);
  v82 = v43;
  v46 = v65;
  (*(v41 + 16))(v65, v40, v38);
  v83 = v46;
  v81[0] = v45;
  v81[1] = v38;
  v79 = v52;
  v80 = v39;
  sub_213E95270(&v82, 2uLL, v81);
  v42(v40, v38);
  v47 = v44;
  v48 = v53;
  v53(v47, v45);
  v42(v46, v38);
  return v48(v43, v45);
}

uint64_t sub_213EAE938@<X0>(char *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v65 = a6;
  v64 = a1;
  v74 = a8;
  v73 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v72 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v59 - v17;
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v16);
  v67 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20;
  v69 = sub_213F4D400();
  v79 = *(v69 - 8);
  v22 = MEMORY[0x28223BE20](v69);
  v81 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v68 = &v59 - v25;
  WitnessTable = *(a2 - 1);
  MEMORY[0x28223BE20](v24);
  v75 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  v76 = sub_213F4D400();
  v78 = *(v76 - 8);
  v27 = MEMORY[0x28223BE20](v76);
  v80 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v82 = &v59 - v29;
  v30 = v21;
  v62 = v21;
  v96 = v21;
  v97 = a2;
  v60 = a2;
  v66 = a3;
  v98 = a3;
  v99 = a4;
  v31 = a5;
  v32 = v65;
  v100 = a5;
  v101 = v65;
  v77 = a7;
  v102 = a7;
  v103 = a9;
  v61 = type metadata accessor for ListCellLayout(0, &v96);
  v33 = v64;
  (*&v64[*(v61 + 104)])();
  v83 = v30;
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = v31;
  v88 = v32;
  v89 = a7;
  v90 = a9;
  v91 = v33;
  sub_213F4EEE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF98, &qword_213F5E388);
  sub_213EAF464();
  v34 = v80;
  v35 = v60;
  v36 = v75;
  sub_213F4E350();
  (*(WitnessTable + 8))(v36, v35);
  v37 = sub_213DE3AE4(&qword_281182BF0, &qword_27C8FAF90, &qword_213F5E380, MEMORY[0x277CE0328]);
  v95[5] = v32;
  v95[6] = v37;
  v38 = v76;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v34, v38, WitnessTable);
  v39 = *(v78 + 8);
  v65 = v78 + 8;
  v75 = v39;
  v40 = (v39)(v34, v38);
  v41 = v61;
  v42 = v67;
  (*&v33[*(v61 + 100)])(v40);
  sub_213F4EEF0();
  v43 = v62;
  v44 = v81;
  sub_213F4E750();
  (*(v70 + 8))(v42, v43);
  v95[3] = v31;
  v95[4] = MEMORY[0x277CDFC60];
  v45 = v69;
  v67 = swift_getWitnessTable();
  v46 = v68;
  sub_213DBFEEC(v44, v45, v67);
  v70 = *(v79 + 8);
  v47 = (v70)(v44, v45);
  v48 = v72;
  (*&v33[*(v41 + 108)])(v47);
  v49 = v71;
  v50 = v66;
  sub_213DBFEEC(v48, v66, v77);
  v51 = v73;
  v64 = *(v73 + 8);
  (v64)(v48, v50);
  v52 = v80;
  v53 = v76;
  (*(v78 + 16))(v80, v82, v76);
  v96 = v52;
  v54 = v81;
  (*(v79 + 16))(v81, v46, v45);
  v97 = v54;
  (*(v51 + 16))(v48, v49, v50);
  v98 = v48;
  v95[0] = v53;
  v95[1] = v45;
  v95[2] = v50;
  v92 = WitnessTable;
  v93 = v67;
  v94 = v77;
  sub_213E95270(&v96, 3uLL, v95);
  v55 = v64;
  (v64)(v49, v50);
  v56 = v70;
  (v70)(v46, v45);
  v57 = v75;
  (v75)(v82, v53);
  (v55)(v48, v50);
  v56(v81, v45);
  return v57(v80, v53);
}

uint64_t sub_213EAF1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v32[0] = a2;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v32[6] = a8;
  v32[7] = a10;
  v15 = type metadata accessor for ListCellLayout(0, v32);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v27 = sub_213F4E8D0();
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v28;
  v22 = v29;
  *(v20 + 4) = a4;
  *(v20 + 5) = v21;
  v24 = v30;
  v23 = v31;
  *(v20 + 6) = v22;
  *(v20 + 7) = v24;
  *(v20 + 8) = v23;
  *(v20 + 9) = a10;
  result = (*(v16 + 32))(&v20[v19], v18, v15);
  *a9 = v27;
  a9[1] = sub_213DD7524;
  a9[2] = 0;
  a9[3] = sub_213EAF51C;
  a9[4] = v20;
  return result;
}

unint64_t sub_213EAF464()
{
  result = qword_281183260;
  if (!qword_281183260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF98, &qword_213F5E388);
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183260);
  }

  return result;
}

uint64_t sub_213EAF51C(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v15 = v1[2];
  v3 = v15;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  type metadata accessor for ListCellLayout(0, &v15);
  v11 = *a1;
  v12 = a1[1];
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v13 = type metadata accessor for ListCellLayout(0, &v15);
  return sub_213EAC8B0(v13, v11, v12);
}

uint64_t TagFlowLayout.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TagFlowLayout(0, a2, a3, v7);
  return a1();
}

uint64_t sub_213EAF6B4(uint64_t a1, char a2)
{
  v78 = sub_213F4D7F0();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v6 = MEMORY[0x28223BE20](v86);
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v75 = &v70 - v9;
  MEMORY[0x28223BE20](v8);
  v74 = &v70 - v10;
  v80 = sub_213F4D290();
  v72 = *(v80 - 8);
  v11 = MEMORY[0x28223BE20](v80);
  v79 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v85 = &v70 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  v83 = sub_213F4D1A0();
  v20 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v82 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = INFINITY;
  }

  else
  {
    v22 = *&a1;
  }

  v23 = sub_213F4D2A0();
  v24 = sub_213EB2A40(&qword_27C8FB068, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v25 = sub_213F4F4A0();
  v26 = MEMORY[0x277D84F90];
  v76 = v19;
  v73 = v15;
  if (v25)
  {
    v27 = v25;
    v90 = MEMORY[0x277D84F90];
    sub_213EA9128(0, v25 & ~(v25 >> 63), 0);
    v26 = v90;
    result = sub_213F4F490();
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v71 = v4;
    v81 = v22;
    v29 = (v20 + 16);
    v30 = (v20 + 8);
    v31 = v24;
    do
    {
      v32 = sub_213F4F4E0();
      v33 = v82;
      v34 = v23;
      v35 = v83;
      (*v29)(v82);
      v32(v89, 0);
      v89[0] = 0;
      v88 = 0;
      sub_213F4D180();
      v37 = v36;
      v39 = v38;
      (*v30)(v33, v35);
      v90 = v26;
      v40 = v31;
      v42 = *(v26 + 16);
      v41 = *(v26 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_213EA9128((v41 > 1), v42 + 1, 1);
        v26 = v90;
      }

      *(v26 + 16) = v42 + 1;
      v43 = v26 + 16 * v42;
      *(v43 + 32) = v37;
      *(v43 + 40) = v39;
      sub_213F4F4D0();
      --v27;
      v23 = v34;
      v31 = v40;
    }

    while (v27);
    v19 = v76;
    v4 = v71;
  }

  v44 = *(v26 + 16);
  v45 = v84;
  v46 = v80;
  v47 = v79;
  if (v44)
  {
    v83 = (v4 + 8);
    v82 = (v72 + 32);
    v48 = (v72 + 8);
    v49 = (v26 + 40);
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    do
    {
      v59 = *(v49 - 1);
      v58 = *v49;
      if (v22 >= v52 + v59)
      {
        sub_213E8D47C(v87, v45);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v82)(v47, v45, v46);
        }

        else
        {
          sub_213F4F520();
          v66 = sub_213F4E000();
          v46 = v80;
          sub_213F4CC10();

          v47 = v79;
          v67 = v77;
          sub_213F4D7E0();
          swift_getAtKeyPath();
          v45 = v84;

          (*v83)(v67, v78);
        }

        v68 = v85;
        sub_213F4D280();
        sub_213F4D270();
        v69 = *v48;
        (*v48)(v68, v46);
        v69(v47, v46);
        v52 = v52 + v59 + 10.0;
        if (v51 <= v58)
        {
          v51 = v58;
        }
      }

      else
      {
        v60 = v74;
        sub_213E8D47C(v87, v74);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v82)(v19, v60, v46);
        }

        else
        {
          sub_213F4F520();
          v61 = sub_213F4E000();
          v46 = v80;
          sub_213F4CC10();

          v62 = v77;
          sub_213F4D7E0();
          swift_getAtKeyPath();

          (*v83)(v62, v78);
        }

        v63 = v75;
        v64 = v85;
        sub_213F4D280();
        sub_213F4D270();
        v65 = *v48;
        (*v48)(v64, v46);
        v65(v19, v46);
        sub_213E8D47C(v87, v63);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v55 = v73;
          (*v82)(v73, v63, v46);
        }

        else
        {
          sub_213F4F520();
          v53 = sub_213F4E000();
          sub_213F4CC10();

          v54 = v77;
          sub_213F4D7E0();
          v55 = v73;
          swift_getAtKeyPath();

          v56 = v54;
          v46 = v80;
          (*v83)(v56, v78);
        }

        v45 = v84;
        v57 = v85;
        v47 = v79;
        v50 = v50 + v51 + 10.0;
        sub_213F4D280();
        sub_213F4D270();
        v65(v57, v46);
        v65(v55, v46);
        v52 = v59 + 10.0;
        v51 = v58;
        v19 = v76;
      }

      v49 += 2;
      --v44;
    }

    while (v44);
  }
}

uint64_t sub_213EAFFFC(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v93 = a5;
  v94 = a6;
  v82 = sub_213F4D7F0();
  v14 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v16 = MEMORY[0x28223BE20](v91);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v75 - v19;
  v90 = sub_213F4D290();
  v20 = *(v90 - 8);
  v21 = MEMORY[0x28223BE20](v90 - 8);
  v86 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v89 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v76 = &v75 - v25;
  v96 = sub_213F4D1A0();
  v26 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&a1;
  if (a2)
  {
    v28 = INFINITY;
  }

  v87 = v28;
  sub_213F4D2A0();
  sub_213EB2A40(&qword_27C8FB068, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v29 = sub_213F4F4A0();
  v30 = MEMORY[0x277D84F90];
  v83 = v18;
  if (v29)
  {
    v31 = v29;
    v99 = MEMORY[0x277D84F90];
    sub_213EA9128(0, v29 & ~(v29 >> 63), 0);
    v30 = v99;
    result = sub_213F4F490();
    if (v31 < 0)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v84 = v20;
    v85 = v14;
    v88 = v87;
    v33 = v26;
    v34 = (v26 + 16);
    v80 = v33;
    v35 = (v33 + 8);
    do
    {
      v36 = sub_213F4F4E0();
      v38 = v95;
      v37 = v96;
      (*v34)(v95);
      v36(v98, 0);
      LOBYTE(v98[0]) = 0;
      v97 = 0;
      sub_213F4D180();
      v40 = v39;
      v42 = v41;
      (*v35)(v38, v37);
      v99 = v30;
      v43 = a9;
      v45 = *(*&v30 + 16);
      v44 = *(*&v30 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_213EA9128((v44 > 1), v45 + 1, 1);
        v30 = v99;
      }

      *(*&v30 + 16) = v45 + 1;
      v46 = *&v30 + 16 * v45;
      *(v46 + 32) = v40;
      *(v46 + 40) = v42;
      sub_213F4F4D0();
      --v31;
      a9 = v43;
    }

    while (v31);
    v18 = v83;
    v14 = v85;
    v20 = v84;
    v26 = v80;
  }

  v100.origin.x = a3;
  v100.origin.y = a4;
  v48 = v93;
  v47 = v94;
  v100.size.width = v93;
  v100.size.height = v94;
  MinX = CGRectGetMinX(v100);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = v48;
  v101.size.height = v47;
  MinY = CGRectGetMinY(v101);
  sub_213F4F490();
  result = sub_213F4F4C0();
  v51 = v98[0];
  if (*&v99 < v98[0])
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v98[0] == *&v99)
  {
  }

  if (v98[0] >= *&v99)
  {
    goto LABEL_31;
  }

  if (v98[0] < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v52 = *(*&v30 + 16);
  if (v98[0] < v52 && *&v99 - 1 < v52)
  {
    v85 = v87;
    v79 = (*&v14 + 8);
    v78 = (v20 + 4);
    v53 = v20 + 1;
    v84 = (v26 + 8);
    v54 = (*&v30 + 16 * v98[0] + 40);
    v55 = 0.0;
    v80 = a9;
    v88 = v99;
    do
    {
      v63 = *(v54 - 1);
      v64 = *v54;
      v102.origin.x = a3;
      v102.origin.y = a4;
      v102.size.width = v93;
      v102.size.height = v94;
      if (v87 < MinX + v63 - CGRectGetMinX(v102))
      {
        v65 = v77;
        sub_213E8D47C(v92, v77);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v67 = v76;
        if (EnumCaseMultiPayload == 1)
        {
          v68 = v90;
          (*v78)(v76, v65, v90);
        }

        else
        {
          sub_213F4F520();
          v69 = sub_213F4E000();
          sub_213F4CC10();

          v70 = v81;
          sub_213F4D7E0();
          swift_getAtKeyPath();

          v71 = v70;
          v18 = v83;
          (*v79)(v71, v82);
          v68 = v90;
        }

        v72 = v89;
        sub_213F4D280();
        sub_213F4D270();
        v73 = *v53;
        (*v53)(v72, v68);
        v73(v67, v68);
        MinY = v55 + 10.0 + MinY;
        v103.origin.x = a3;
        v103.origin.y = a4;
        v103.size.width = v93;
        v103.size.height = v94;
        MinX = CGRectGetMinX(v103);
        v55 = 0.0;
      }

      v74 = v95;
      sub_213F4D2B0();
      sub_213F4F000();
      LOBYTE(v98[0]) = 0;
      LOBYTE(v99) = 0;
      sub_213F4D190();
      (*v84)(v74, v96);
      sub_213E8D47C(v92, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = v86;
        v60 = v90;
        (*v78)(v86, v18, v90);
      }

      else
      {
        sub_213F4F520();
        v56 = sub_213F4E000();
        sub_213F4CC10();

        v57 = v81;
        sub_213F4D7E0();
        v58 = v86;
        swift_getAtKeyPath();

        v59 = v57;
        v18 = v83;
        (*v79)(v59, v82);
        v60 = v90;
      }

      ++v51;
      v61 = v89;
      sub_213F4D280();
      sub_213F4D270();
      v62 = *v53;
      (*v53)(v61, v60);
      v62(v58, v60);
      MinX = v63 + 10.0 + MinX;
      if (v55 <= v64)
      {
        v55 = v64;
      }

      v54 += 2;
    }

    while (*&v88 != v51);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t (*sub_213EB0A48(uint64_t *a1))()
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
  *(v2 + 32) = sub_213F4CD60();
  return sub_213EB0AD0;
}

void sub_213EB0AD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_213EB0B1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213E8D47C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_213EB0D04()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_213EB0B1C(&v9 - v5);
  sub_213F4D280();
  sub_213F4D270();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  return 26.0;
}

double sub_213EB0E20()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_213EB0B1C(&v9 - v5);
  sub_213F4D280();
  sub_213F4D270();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  return 16.0;
}

uint64_t TagFlowLayout.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA0, &qword_213F5E3C0);
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
  v5 = *(a1 + 24);
  *&v71 = v3;
  *(&v71 + 1) = v4;
  *&v72 = v5;
  *(&v72 + 1) = sub_213EB1FF8();
  v44 = sub_213F4DD80();
  v46 = sub_213F4E9C0();
  sub_213DE3AE4(&qword_27C8FAFB8, &qword_27C8FAFA0, &qword_213F5E3C0, MEMORY[0x277CDF500]);
  v6 = sub_213F4D1F0();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for TagFlow(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_213F4D400();
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v40 - v13;
  v14 = sub_213F4D400();
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v42 = &v40 - v15;
  v48 = sub_213F4D400();
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = &v40 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v17 = sub_213F4D400();
  v53 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v45 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v49 = &v40 - v20;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v21 = sub_213EB1758(v11, v3, v5);
  sub_213EB20C0(v11);
  v57 = v3;
  v58 = v5;
  v59 = v55;
  (v21)(sub_213EB211C, v56);

  sub_213EB0E20();
  v22 = sub_213DE3AE4(qword_27C8FAFC0, &qword_27C8FAFA0, &qword_213F5E3C0, MEMORY[0x277CDF510]);
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v68 = v22;
  v69 = v23;
  v24 = swift_getWitnessTable();
  v25 = v40;
  sub_213F4E7C0();
  (*(v41 + 8))(v8, v6);
  sub_213F4EEE0();
  v66 = v24;
  v67 = MEMORY[0x277CDF918];
  v39 = swift_getWitnessTable();
  v26 = v42;
  sub_213F4E750();
  (*(v50 + 8))(v25, v12);
  v27 = sub_213EB0D04();
  v64 = v39;
  v65 = MEMORY[0x277CDFC60];
  v28 = swift_getWitnessTable();
  v29 = v43;
  View.insetGroupedSectionBackground(cornerRadius:)(v14, v28, v27);
  (*(v51 + 8))(v26, v14);
  v30 = sub_213E5A778();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  v62 = v28;
  v63 = v30;
  v31 = v48;
  v32 = swift_getWitnessTable();
  v33 = v45;
  sub_213F4E4C0();
  (*(v52 + 8))(v29, v31);
  v34 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
  v60 = v32;
  v61 = v34;
  v35 = swift_getWitnessTable();
  v36 = v49;
  sub_213DBFEEC(v33, v17, v35);
  v37 = *(v53 + 8);
  v37(v33, v17);
  sub_213DBFEEC(v36, v17, v35);
  return (v37)(v36, v17);
}

uint64_t (*sub_213EB1758(uint64_t a1, uint64_t a2, uint64_t a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TagFlow(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_213EB28DC(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_213EB2940(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_213EB29A4;
}

uint64_t sub_213EB185C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v9 = type metadata accessor for TagFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
  sub_213EB1FF8();
  sub_213F4DD80();
  v10 = sub_213F4E9C0();
  v11 = sub_213EB2A40(&qword_27C8FB070, type metadata accessor for TagFlow, &unk_213F5E4A0);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_213EB1998(a1, a2, v9, v10, v11, WitnessTable, x8_0);
}

uint64_t sub_213EB1998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_213F4CFB0();
  MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3);
  sub_213F4CFC0();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_213F4D200();
}

uint64_t sub_213EB1B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v25 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
  v23 = v9;
  v10 = sub_213EB1FF8();
  v27 = a2;
  v28 = v9;
  v29 = a3;
  v30 = v10;
  sub_213F4DD80();
  v11 = sub_213F4E9C0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v19 = type metadata accessor for TagFlowLayout(0, a2, a3, v18);
  (*(v6 + 16))(v8, v24 + *(v19 + 36), a2);
  sub_213F4E9A0();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  sub_213DBFEEC(v15, v11, v20);
  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_213DBFEEC(v17, v11, v20);
  return (v21)(v17, v11);
}

uint64_t sub_213EB1DD4(uint64_t a1)
{
  v2 = sub_213F4D960();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  swift_getKeyPath();
  sub_213F4ED30();
  sub_213EB2A40(&qword_281182C48, MEMORY[0x277CE0150], MEMORY[0x277CE0168]);
  sub_213EB2A40(&qword_2811825F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  return sub_213F4ECC0();
}

uint64_t sub_213EB1F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4ED30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_213EB1FF8()
{
  result = qword_27C8FAFB0;
  if (!qword_27C8FAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAFB0);
  }

  return result;
}

uint64_t type metadata accessor for TagFlow(uint64_t a1)
{
  result = qword_27C8FB048;
  if (!qword_27C8FB048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213EB20C0(uint64_t a1)
{
  v2 = type metadata accessor for TagFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_213EB216C(uint64_t a1)
{
  sub_213DF29DC(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213EB21F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_213F4D290() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v13 = (v12 & ~v9) + v10;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v22 = *(*(*(a3 + 16) - 8) + 48);

        return v22((a1 + v12) & ~v9);
      }

      else
      {
        v21 = *(a1 + v6);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_213EB23EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_213F4D290() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + 1;
  v15 = v9 + 1 + v12;
  v16 = (v15 & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v14 <= 3)
    {
      v24 = ~(-1 << (8 * v14));
    }

    else
    {
      v24 = -1;
    }

    if (v9 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v14 <= 3)
      {
        v26 = v9 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v14);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

unint64_t sub_213EB270C()
{
  result = qword_27C8FB058;
  if (!qword_27C8FB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB058);
  }

  return result;
}

uint64_t sub_213EB27A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  v12();
  sub_213DBFEEC(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_213DBFEEC(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_213EB28DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213EB2940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFlow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213EB29A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for TagFlow(0);

  return sub_213EB185C(a1, a2, a3);
}

uint64_t sub_213EB2A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t VerticalSpacing.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

double VerticalSpacing.body.getter@<D0>(uint64_t a2@<X8>)
{
  sub_213F4EEE0();
  sub_213F4D0C0();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

double sub_213EB2B90@<D0>(uint64_t a2@<X8>)
{
  sub_213F4EEE0();
  sub_213F4D0C0();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VerticalSpacing.SpacingType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VerticalSpacing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for VerticalSpacing.SpacingType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_213EB2CF0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213EB2D0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_213EB2D3C()
{
  result = qword_2811831B8;
  if (!qword_2811831B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB078, &qword_213F5E5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831B8);
  }

  return result;
}

__n128 BottomAccessoryViewModel.init(type:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  sub_213F4CB30();
  v5 = (a2 + *(type metadata accessor for BottomAccessoryViewModel(0) + 20));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t BottomAccessoryViewModel.axIDString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BottomAccessoryViewModel(0) + 20) + 24) >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 1702129486;
    }

    else
    {
      return 0x736F746F6850;
    }
  }

  else if (v1)
  {
    return 0x736E6F69746341;
  }

  else
  {
    return 0x656D656E69666552;
  }
}

uint64_t BottomAccessoryViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BottomAccessoryViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_213EB3044(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_213EB30D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 25))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213EB312C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_213EB3204(uint64_t a1)
{
  result = type metadata accessor for BottomAccessoryViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213EB328C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = sub_213F4DF80();
  MEMORY[0x28223BE20](v2 - 8);
  v83 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_213F4DFB0();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_213F4DF20();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v90 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_213F4DD70();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213F4D290();
  v9 = *(v8 - 8);
  v91 = v8;
  v92 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB150, &qword_213F5EB80);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB158, &qword_213F5EB88);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v19 = &v65 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB160, &qword_213F5EB90);
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v68 = &v65 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB168, &qword_213F5EB98);
  v73 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v70 = &v65 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB170, &qword_213F5EBA0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v65 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB178, &qword_213F5EBA8);
  MEMORY[0x28223BE20](v74);
  v76 = &v65 - v23;
  sub_213F4E010();
  v93 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB180, &qword_213F5EBB0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB188, &qword_213F5EBB8);
  v25 = sub_213EB8F4C();
  v94 = v24;
  v95 = v25;
  swift_getOpaqueTypeConformance2();
  sub_213F4CE50();
  LOBYTE(v24) = sub_213F4E040();
  v26 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v24)
  {
    v26 = sub_213F4E090();
  }

  v87 = v1;
  sub_213DBBD08(v13);
  v27 = v89;
  sub_213F4D280();
  sub_213F4D270();
  v28 = v92 + 8;
  v29 = *(v92 + 8);
  v30 = v27;
  v31 = v91;
  v29(v30, v91);
  v92 = v28;
  v29(v13, v31);
  sub_213F4DD60();
  v32 = sub_213DE3AE4(&qword_27C8FB1A8, &qword_27C8FB150, &qword_213F5EB80, MEMORY[0x277CDD6E0]);
  MEMORY[0x216051900](v26, 0x4030000000000000, 0, v7, v14, v32);
  (*(v66 + 8))(v7, v67);
  (*(v15 + 8))(v17, v14);
  sub_213F4DBF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v34 = sub_213F4E030();
  *(inited + 32) = v34;
  v35 = sub_213F4E010();
  *(inited + 33) = v35;
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v34)
  {
    sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v35)
  {
    sub_213F4E020();
  }

  v94 = v14;
  v95 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v68;
  v38 = v90;
  v39 = v71;
  sub_213F4E590();
  (*(v81 + 8))(v38, v82);
  (*(v69 + 8))(v19, v39);
  sub_213F4DF70();
  v40 = v84;
  sub_213F4DF90();
  v94 = v39;
  v95 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = MEMORY[0x277CDE478];
  v43 = v70;
  v44 = v75;
  v45 = v86;
  sub_213F4E670();
  (*(v85 + 8))(v40, v45);
  (*(v72 + 8))(v37, v44);
  v94 = v44;
  v95 = v45;
  v96 = v41;
  v97 = v42;
  swift_getOpaqueTypeConformance2();
  v46 = v78;
  v47 = v77;
  sub_213F4E5E0();
  (*(v73 + 8))(v43, v47);
  LOBYTE(v47) = sub_213F4E070();
  sub_213DBBD08(v13);
  v48 = v89;
  sub_213F4D280();
  sub_213F4D270();
  v49 = v48;
  v50 = v91;
  v29(v49, v91);
  v29(v13, v50);
  sub_213F4CDA0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v76;
  (*(v79 + 32))(v76, v46, v80);
  v60 = &v59[*(v74 + 36)];
  *v60 = v47;
  *(v60 + 1) = v52;
  *(v60 + 2) = v54;
  *(v60 + 3) = v56;
  *(v60 + 4) = v58;
  v60[40] = 0;
  v61 = v59;
  v62 = v88;
  sub_213DE2B44(v61, v88, &qword_27C8FB178, &qword_213F5EBA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1B0, &qword_213F5EBD0);
  v64 = v62 + *(result + 36);
  *v64 = 0xD000000000000019;
  *(v64 + 8) = 0x8000000213F5E8E0;
  *(v64 + 16) = 11;
  return result;
}

uint64_t sub_213EB3DE4(uint64_t a1)
{
  v2 = sub_213F4DCB0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB188, &qword_213F5EBB8);
  MEMORY[0x28223BE20](v3);
  v5 = &v7[-v4];
  type metadata accessor for RefinementBottomAccessory(0);
  v8 = a1;

  sub_213F4D8A0();
  v9 = 0;
  sub_213EB7F70(&qword_281182990, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_213F4F8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1B8, &qword_213F5EBD8);
  sub_213EB900C();
  sub_213F4EFA0();
  *&v5[*(v3 + 36)] = 257;
  sub_213EB8F4C();
  sub_213F4E600();
  return sub_213DE36FC(v5, &qword_27C8FB188, &qword_213F5EBB8);
}

uint64_t sub_213EB3FDC(uint64_t a1)
{
  v2 = type metadata accessor for RefinementBottomAccessory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v11[5] = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 36));
  swift_getKeyPath();
  sub_213EB8190(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RefinementBottomAccessory);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_213EB8B88(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for RefinementBottomAccessory);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8A8, &qword_213F5D6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1E8, &qword_213F5EC20);
  sub_213DE3AE4(&qword_281182480, &qword_27C8FA8A8, &qword_213F5D6B0, MEMORY[0x277D83980]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1C8, &qword_213F5EBE0);
  v8 = sub_213EB90E8();
  v9 = sub_213E4FC2C();
  v11[1] = v7;
  v11[2] = &type metadata for ScalingGridButton;
  v11[3] = v8;
  v11[4] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_213F4ECC0();
}

uint64_t sub_213EB4214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = type metadata accessor for RefinementBottomAccessory(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1C8, &qword_213F5EBE0);
  MEMORY[0x28223BE20](v18[0]);
  v9 = v18 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  sub_213EB8190(a2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RefinementBottomAccessory);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_213EB8B88(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RefinementBottomAccessory);
  v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v11;
  v16[1] = v10;
  v16[2] = v12;
  v16[3] = v13;
  v18[4] = v11;
  v18[5] = v10;
  v18[6] = v12;
  v18[7] = v13;
  v18[8] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1F0, &qword_213F5EC28);
  sub_213EB92F0();
  sub_213F4EB00();
  *&v9[*(v18[0] + 36)] = sub_213F4DD90();
  sub_213EB90E8();
  sub_213E4FC2C();
  sub_213F4E3C0();
  return sub_213DE36FC(v9, &qword_27C8FB1C8, &qword_213F5EBE0);
}

uint64_t sub_213EB4478(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_213F4D7F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for RefinementBottomAccessory(0) + 24);
  v12 = *v10;
  v11 = *(v10 + 8);
  if (*(v10 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v14 = sub_213EB8B1C(v12, v11, 0);
    (*(v7 + 8))(v9, v6, v14);
    v12 = v17;
  }

  v17 = a2;
  v18 = a3;
  v19 = 3;

  v12(&v17);

  return sub_213EB8F2C(v17, v18, v19);
}

uint64_t sub_213EB4630@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v87 = a3;
  v88 = a4;
  v86 = sub_213F4D290();
  v85 = *(v86 - 8);
  v6 = MEMORY[0x28223BE20](v86);
  v84 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v71 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v9 = MEMORY[0x28223BE20](v78);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v71 - v11;
  v12 = sub_213F4D390();
  v91 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v90 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v71 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  MEMORY[0x28223BE20](v76);
  v75 = &v71 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB218, &unk_213F5EC38);
  MEMORY[0x28223BE20](v79);
  v81 = &v71 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB208, &qword_213F5EC30);
  MEMORY[0x28223BE20](v80);
  v82 = &v71 - v18;
  *&v92 = a1;
  *(&v92 + 1) = a2;
  sub_213DBC9EC();

  v19 = sub_213F4E310();
  v21 = v20;
  v23 = v22;
  sub_213F4E0D0();
  v24 = sub_213F4E2E0();
  v26 = v25;
  v28 = v27;

  sub_213DBCA40(v19, v21, v23 & 1);
  v29 = v89;

  sub_213F4E170();
  v30 = sub_213F4E2A0();
  v32 = v31;
  LOBYTE(v19) = v33;
  v35 = v34;
  sub_213DBCA40(v24, v26, v28 & 1);

  v73 = v30;
  *&v92 = v30;
  *(&v92 + 1) = v32;
  v72 = v32;
  v36 = v19 & 1;
  LOBYTE(v93) = v19 & 1;
  *(&v93 + 1) = v35;
  v37 = v91;
  v38 = *(v91 + 104);
  v38(v29, *MEMORY[0x277CDF9E8], v12);
  v39 = v90;
  v38(v90, *MEMORY[0x277CDF998], v12);
  v40 = v39;
  sub_213EB7F70(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_213F4F1E0();
  if (result)
  {
    v71 = v35;
    v42 = *(v37 + 32);
    v43 = v74;
    v42(v74, v29, v12);
    v44 = v78;
    v42((v43 + *(v78 + 48)), v40, v12);
    v45 = v77;
    sub_213DE3164(v43, v77, &qword_27C8F9228, &unk_213F5A640);
    v46 = *(v44 + 48);
    v47 = v75;
    v42(v75, v45, v12);
    LODWORD(v90) = v36;
    v48 = *(v37 + 8);
    v48(v45 + v46, v12);
    sub_213DE2B44(v43, v45, &qword_27C8F9228, &unk_213F5A640);
    v42((v47 + *(v76 + 36)), (v45 + *(v44 + 48)), v12);
    v48(v45, v12);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    v49 = v81;
    sub_213F4E570();
    sub_213DE36FC(v47, &qword_27C8F9230, &qword_213F57250);
    sub_213DBCA40(v73, v72, v90);

    v50 = v83;
    sub_213DBBD08(v83);
    v51 = v84;
    sub_213F4D280();
    sub_213F4D270();
    v52 = *(v85 + 8);
    v53 = v86;
    v52(v51, v86);
    v52(v50, v53);
    LOBYTE(v47) = sub_213F4E050();
    sub_213F4CDA0();
    v54 = v49 + *(v79 + 36);
    *v54 = v47;
    *(v54 + 8) = v55;
    *(v54 + 16) = v56;
    *(v54 + 24) = v57;
    *(v54 + 32) = v58;
    *(v54 + 40) = 0;
    sub_213DBBD08(v50);
    sub_213F4D280();
    sub_213F4D270();
    v52(v51, v53);
    v52(v50, v53);
    sub_213F4EEE0();
    sub_213F4D4E0();
    v59 = v82;
    sub_213DE2B44(v49, v82, &qword_27C8FB218, &unk_213F5EC38);
    v60 = (v59 + *(v80 + 36));
    v61 = v97;
    v60[4] = v96;
    v60[5] = v61;
    v60[6] = v98;
    v62 = v93;
    *v60 = v92;
    v60[1] = v62;
    v63 = v95;
    v60[2] = v94;
    v60[3] = v63;
    v64 = sub_213F4EEE0();
    v66 = v65;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB1F0, &qword_213F5EC28);
    v68 = v88;
    v69 = v88 + *(v67 + 36);
    sub_213EB4EBC(v69);
    v70 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB228, &unk_213F5EC48) + 36));
    *v70 = v64;
    v70[1] = v66;
    return sub_213DE2B44(v59, v68, &qword_27C8FB208, &qword_213F5EC30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213EB4EBC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_213F4CEA0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v26 = sub_213F4EF90();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB230, &qword_213F5EC58);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_213F4D950();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v17 = sub_213F4DD90();
  v18 = &v14[*(v12 + 44)];
  *v18 = v17;
  *(v18 + 1) = 1031127695;
  type metadata accessor for RefinementBottomAccessory(0);
  sub_213EA8894(v7);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v1);
  v19 = sub_213F4CE90();
  v20 = *(v2 + 8);
  v20(v5, v1);
  v20(v7, v1);
  v21 = MEMORY[0x277CE13B0];
  if ((v19 & 1) == 0)
  {
    v21 = MEMORY[0x277CE13B8];
  }

  v22 = v26;
  (*(v8 + 104))(v10, *v21, v26);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB238, &qword_213F5EC60);
  v24 = v27;
  (*(v8 + 32))(v27 + *(v23 + 36), v10, v22);
  return sub_213DE2B44(v14, v24, &qword_27C8FB230, &qword_213F5EC58);
}

uint64_t sub_213EB51D8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_213F4D290();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  v7 = type metadata accessor for ActionsBottomAccessory(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = type metadata accessor for ActionButtonLayout(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB240, &qword_213F5EC68);
  MEMORY[0x28223BE20](v40);
  v16 = &v40 - v15;
  v17 = *(v1 + *(v8 + 32));
  sub_213EB8190(v1, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionsBottomAccessory);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_213EB8B88(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ActionsBottomAccessory);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v14 + *(v12 + 28)) = v17;
  v20 = (v14 + *(v12 + 32));
  *v20 = sub_213EB9680;
  v20[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;

  LOBYTE(v10) = sub_213F4E040();
  *(inited + 32) = v10;
  v22 = sub_213F4E070();
  *(inited + 33) = v22;
  v23 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v10)
  {
    v23 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v22)
  {
    v23 = sub_213F4E090();
  }

  sub_213DBBD08(v6);
  v24 = v41;
  sub_213F4D280();
  sub_213F4D270();
  v25 = *(v42 + 8);
  v26 = v24;
  v27 = v43;
  v25(v26, v43);
  v25(v6, v27);
  sub_213F4CDA0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_213EB8B88(v14, v16, type metadata accessor for ActionButtonLayout);
  v36 = &v16[*(v40 + 36)];
  *v36 = v23;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = v44;
  sub_213DE2B44(v16, v44, &qword_27C8FB240, &qword_213F5EC68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB248, &unk_213F5EC70);
  v39 = v37 + *(result + 36);
  *v39 = 0xD000000000000016;
  *(v39 + 8) = 0x8000000213F5E8C0;
  *(v39 + 16) = 11;
  return result;
}

uint64_t sub_213EB5650(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4D7F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + *(type metadata accessor for ActionsBottomAccessory(0) + 20);
  v12 = *v10;
  v11 = *(v10 + 8);
  if (*(v10 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v14 = sub_213EB8B1C(v12, v11, 0);
    (*(v7 + 8))(v9, v6, v14);
    v12 = v17;
  }

  v17 = a1;
  v18 = a2;
  v19 = 2;

  v12(&v17);

  return sub_213EB8F2C(v17, v18, v19);
}

uint64_t sub_213EB580C@<X0>(uint64_t *a1@<X8>)
{
  v77 = a1;
  v2 = sub_213F4D290();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v73 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v72 = &v65 - v5;
  v6 = type metadata accessor for NoteBottomAccessory(0);
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = v7;
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213F4CB60();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_213F4F210();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = type metadata accessor for FadingLabelViewModel(0);
  v17 = MEMORY[0x28223BE20](v16);
  v67 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v68 = v6;
  v21 = *(v6 + 24);
  v74 = v1;
  v22 = (v1 + v21);
  v23 = v22[1];
  v66 = *v22;

  sub_213F4F200();
  (*(v10 + 16))(v13, v15, v9);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v24 = qword_281182518;
  sub_213F4CB50();
  v25 = sub_213F4F260();
  v27 = v26;
  (*(v10 + 8))(v15, v9);
  v28 = [objc_opt_self() preferredFontForTextStyle_];
  v29 = sub_213F4E920();
  v30 = v74;
  v31 = v74 + *(v68 + 7);
  v32 = *v31;
  v33 = *(v31 + 8);
  sub_213F4CB30();
  v34 = &v20[v16[5]];
  *v34 = v66;
  *(v34 + 1) = v23;
  *&v20[v16[6]] = MEMORY[0x277D84F90];
  *&v20[v16[7]] = 3;
  v35 = &v20[v16[8]];
  *v35 = v25;
  v35[1] = v27;
  *&v20[v16[9]] = v28;
  *&v20[v16[10]] = v29;
  v36 = &v20[v16[11]];
  *v36 = v32;
  v36[8] = v33;
  v68 = type metadata accessor for FadingLabelViewModel;
  v37 = v67;
  sub_213EB8190(v20, v67, type metadata accessor for FadingLabelViewModel);
  v38 = v71;
  sub_213EB8190(v30, v71, type metadata accessor for NoteBottomAccessory);
  v39 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v40 = swift_allocObject();
  sub_213EB8B88(v38, v40 + v39, type metadata accessor for NoteBottomAccessory);
  v41 = v77;
  FadingLabelView.init(model:tapHandler:)(v37, sub_213EB8B28, v40, v77);
  LOBYTE(v39) = sub_213F4E040();
  v42 = v72;
  sub_213DBBD08(v72);
  v43 = v73;
  sub_213F4D280();
  sub_213F4D270();
  v44 = v76;
  v45 = *(v75 + 8);
  v45(v43, v76);
  v45(v42, v44);
  sub_213F4CDA0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0C0, &qword_213F5EA68) + 36);
  *v54 = v39;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  LOBYTE(v39) = sub_213F4E070();
  sub_213DBBD08(v42);
  sub_213F4D280();
  sub_213F4D270();
  v45(v43, v44);
  v45(v42, v44);
  sub_213F4CDA0();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_213EB81F8(v20, v68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0C8, &qword_213F5EA70);
  v64 = v41 + *(result + 36);
  *v64 = v39;
  *(v64 + 1) = v56;
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v64[40] = 0;
  return result;
}

double sub_213EB5E54(uint64_t a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for NoteBottomAccessory(0) + 20);
  v8 = *v6;
  v7 = *(v6 + 8);
  if (*(v6 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v9 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v10 = sub_213EB8B1C(v8, v7, 0);
    (*(v3 + 8))(v5, v2, v10);
    v8 = v12;
  }

  v12 = xmmword_213F5E620;
  v13 = 4;
  v8(&v12);

  return result;
}

uint64_t sub_213EB5FF0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for PhotosBottomAccessory(0);
  v3 = v2 - 8;
  v39 = *(v2 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0D0, &qword_213F5EA78);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v38 - v13;
  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v41 = v6 + 8;
  v42 = v5;
  v40 = v15;
  v15(v11, v5);
  *v14 = sub_213F4D8A0();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v38[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0D8, &qword_213F5EA80) + 44);
  v49 = *(v1 + *(v3 + 32));
  v38[1] = swift_getKeyPath();
  v43 = v1;
  sub_213EB8190(v1, v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosBottomAccessory);
  v16 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v17 = swift_allocObject();
  sub_213EB8B88(v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PhotosBottomAccessory);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0E0, &qword_213F5EAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0E8, &qword_213F5EAB0);
  sub_213DE3AE4(&qword_27C8FB0F0, &qword_27C8FB0E0, &qword_213F5EAA8, MEMORY[0x277D83980]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0F8, &qword_213F5EAB8);
  v19 = sub_213DE3AE4(&qword_27C8FB100, &qword_27C8FB0F8, &qword_213F5EAB8, MEMORY[0x277CDF028]);
  v20 = sub_213E2EE14();
  v45 = v18;
  v46 = &type metadata for ScalingTile;
  v47 = v19;
  v48 = v20;
  swift_getOpaqueTypeConformance2();
  sub_213F4ECC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v22 = sub_213F4E040();
  *(inited + 32) = v22;
  v23 = sub_213F4E070();
  *(inited + 33) = v23;
  v24 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v22)
  {
    v24 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v23)
  {
    v24 = sub_213F4E090();
  }

  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v25 = v42;
  v26 = v40;
  v40(v9, v42);
  v26(v11, v25);
  sub_213F4CDA0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v44;
  sub_213DE2B44(v14, v44, &qword_27C8FB0D0, &qword_213F5EA78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB108, &qword_213F5EAC8);
  v37 = v35 + *(result + 36);
  *v37 = v24;
  *(v37 + 8) = v28;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_213EB6538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBottomAccessory(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0F8, &qword_213F5EAB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-v10];
  sub_213EB8190(a2, v7, type metadata accessor for PhotosBottomAccessory);
  sub_213DE3164(a1, v21, &qword_27C8FAF70, &qword_213F5E2B0);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_213EB8B88(v7, v14 + v12, type metadata accessor for PhotosBottomAccessory);
  v15 = v14 + v13;
  v16 = v21[1];
  *v15 = v21[0];
  *(v15 + 16) = v16;
  *(v15 + 32) = v21[2];
  *(v15 + 48) = v22;
  v19 = a1;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB110, &qword_213F5EAD0);
  sub_213EB8D04();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8FB100, &qword_27C8FB0F8, &qword_213F5EAB8, MEMORY[0x277CDF028]);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_213EB67F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for PhotosBottomAccessory(0) + 20);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v11 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v12 = sub_213EB8B1C(v10, v9, 0);
    (*(v5 + 8))(v7, v4, v12);
    v10 = v17[0];
  }

  sub_213DE3164(a2, v17, &qword_27C8FAF70, &qword_213F5E2B0);
  v14 = v17[0];
  v15 = v17[1];
  v16 = 1;
  v10(&v14);

  sub_213EB8F2C(v14, v15, v16);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_213EB69BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v66 = v5;
  v67 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v60 - v10;
  v11 = type metadata accessor for MapsDesignImage(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DE3164(a1, v77, &qword_27C8FAF70, &qword_213F5E2B0);

  v15 = sub_213F4EEE0();
  v17 = v16;
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v18 = v12[7];
  *&v14[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v19 = v12[8];
  *&v14[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v20 = v12[9];
  *&v14[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v21 = &v14[v12[14]];
  v22 = &v14[v12[15]];
  v23 = &v14[v12[16]];
  v68 = 0;
  v69 = 0;
  memset(v70, 0, sizeof(v70));
  sub_213F4EA90();
  v24 = v72;
  v25 = v73;
  v26 = v74;
  v27 = v75;
  v28 = v76;
  *v23 = v71;
  *(v23 + 2) = v24;
  v23[24] = v25;
  v23[25] = v26;
  v23[26] = v27;
  *(v23 + 4) = v28;
  v29 = v12[17];
  v68 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v14[v29] = v71;
  sub_213DD7500(v78, &v14[v12[10]]);
  v14[v12[11]] = 1;
  v30 = &v14[v12[12]];
  *v30 = v15;
  v30[1] = v17;
  v14[v12[13]] = 1;
  *v21 = 0;
  *(v21 + 1) = 0;
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_213EB8190(v14, a3, type metadata accessor for MapsDesignImage);
  v31 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36);
  *v31 = 0x3FF0000000000000;
  *(v31 + 8) = 0;
  sub_213EB81F8(v14, type metadata accessor for MapsDesignImage);
  v32 = sub_213F4EEE0();
  v34 = v33;
  v35 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB138, &unk_213F5EAE0) + 36);
  v64 = a3;
  sub_213EB6F80(v35);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
  *v36 = v32;
  v36[1] = v34;
  v63 = sub_213F4EEE0();
  v62 = v37;
  v38 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB128, &qword_213F5EAD8) + 36));
  v39 = v65;
  sub_213DBBD08(v65);
  sub_213F4D280();
  sub_213F4D270();
  v40 = v66;
  v41 = *(v67 + 8);
  v67 += 8;
  v42 = v9;
  v41(v9, v66);
  v41(v39, v40);
  v61 = sub_213F4D470();
  v43 = *(v61 + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_213F4D950();
  v46 = *(*(v45 - 8) + 104);
  v46(&v38[v43], v44, v45);
  __asm { FMOV            V0.2D, #14.0 }

  v60 = _Q0;
  *v38 = _Q0;
  v52 = [objc_opt_self() tertiarySystemFillColor];
  v53 = sub_213F4E870();
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0) + 36)] = v53;
  v54 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB148, &unk_213F5EAF8) + 36)];
  v55 = v62;
  *v54 = v63;
  v54[1] = v55;
  sub_213DBBD08(v39);
  sub_213F4D280();
  sub_213F4D270();
  v56 = v66;
  v41(v42, v66);
  v41(v39, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB110, &qword_213F5EAD0);
  v58 = (v64 + *(v57 + 36));
  v46(&v58[*(v61 + 20)], v44, v45);
  *v58 = v60;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
  *&v58[*(result + 36)] = 256;
  return result;
}

uint64_t sub_213EB6F80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = sub_213F4D470();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DBBD08(v8);
  sub_213F4D280();
  sub_213F4D270();
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v8, v2);
  v14 = *(v10 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_213F4D950();
  (*(*(v16 - 8) + 104))(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #14.0 }

  *v12 = _Q0;
  sub_213F4E8C0();
  v22 = sub_213F4E900();

  sub_213F4CF60();
  v23 = MEMORY[0x277CDFC08];
  sub_213EB8190(v12, a1, MEMORY[0x277CDFC08]);
  v24 = *&v35 * 0.5;
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
  sub_213EB8190(v12, v25, v23);
  *(v25 + *(sub_213F4D460() + 20)) = v24;
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
  v27 = v36;
  *v26 = v35;
  *(v26 + 16) = v27;
  *(v26 + 32) = v37;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
  *(v25 + *(v28 + 52)) = v22;
  *(v25 + *(v28 + 56)) = 256;
  v29 = sub_213F4EEE0();
  v31 = v30;
  sub_213EB81F8(v12, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60);
  v33 = (v25 + *(result + 36));
  *v33 = v29;
  v33[1] = v31;
  return result;
}

uint64_t sub_213EB728C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v58 = type metadata accessor for PhotosBottomAccessory(0);
  MEMORY[0x28223BE20](v58);
  v52 = (&v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB088, &qword_213F5E7D0);
  MEMORY[0x28223BE20](v54);
  v57 = &v51 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB090, &qword_213F5E7D8);
  MEMORY[0x28223BE20](v65);
  v61 = &v51 - v4;
  v55 = type metadata accessor for NoteBottomAccessory(0);
  MEMORY[0x28223BE20](v55);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for ActionsBottomAccessory(0);
  MEMORY[0x28223BE20](v60);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB098, &qword_213F5E7E0);
  MEMORY[0x28223BE20](v62);
  v64 = &v51 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0A0, &qword_213F5E7E8);
  MEMORY[0x28223BE20](v53);
  v56 = &v51 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB0A8, &qword_213F5E7F0);
  MEMORY[0x28223BE20](v63);
  v59 = &v51 - v11;
  v12 = sub_213F4EDE0();
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for RefinementBottomAccessory(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v1 + *(type metadata accessor for BottomAccessoryViewModel(0) + 20);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v23 = v22 >> 6;
  if (v22 >> 6 > 1)
  {
    if (v23 == 2)
    {
      *v6 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v33 = v55;
      v34 = v6 + *(v55 + 20);
      *v34 = swift_getKeyPath();
      *(v34 + 1) = 0;
      v34[16] = 0;
      v35 = v6 + *(v33 + 28);
      v36 = (v6 + *(v33 + 24));
      *v36 = v20;
      v36[1] = v19;
      *v35 = v21;
      v35[8] = v22 & 1;
      v30 = type metadata accessor for NoteBottomAccessory;
      sub_213EB8190(v6, v57, type metadata accessor for NoteBottomAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EB7F70(qword_281185658, type metadata accessor for NoteBottomAccessory, &unk_213F5EA18);
      sub_213EB7F70(&qword_281185298, type metadata accessor for PhotosBottomAccessory, &unk_213F5E9C8);

      v37 = v61;
      sub_213F4DBA0();
      sub_213DE3164(v37, v64, &qword_27C8FB090, &qword_213F5E7D8);
      swift_storeEnumTagMultiPayload();
      sub_213EB7FB8();
      sub_213EB80A4();
      sub_213F4DBA0();
      sub_213DE36FC(v37, &qword_27C8FB090, &qword_213F5E7D8);
      v32 = v6;
    }

    else
    {

      v44 = sub_213F4BAAC(v43);
      sub_213EB7F60(v20, v19, v21, v22);
      KeyPath = swift_getKeyPath();
      v46 = v52;
      *v52 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v47 = v58;
      v48 = v46 + *(v58 + 20);
      *v48 = swift_getKeyPath();
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      *(v46 + *(v47 + 24)) = v44;
      v30 = type metadata accessor for PhotosBottomAccessory;
      sub_213EB8190(v46, v57, type metadata accessor for PhotosBottomAccessory);
      swift_storeEnumTagMultiPayload();
      sub_213EB7F70(qword_281185658, type metadata accessor for NoteBottomAccessory, &unk_213F5EA18);
      sub_213EB7F70(&qword_281185298, type metadata accessor for PhotosBottomAccessory, &unk_213F5E9C8);
      v49 = v61;
      sub_213F4DBA0();
      sub_213DE3164(v49, v64, &qword_27C8FB090, &qword_213F5E7D8);
      swift_storeEnumTagMultiPayload();
      sub_213EB7FB8();
      sub_213EB80A4();
      sub_213F4DBA0();
      sub_213DE36FC(v49, &qword_27C8FB090, &qword_213F5E7D8);
      v32 = v46;
    }
  }

  else if (v23)
  {

    v39 = sub_213F4B970(v38);
    sub_213EB7F60(v20, v19, v21, v22);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v40 = v60;
    v41 = v8 + *(v60 + 20);
    *v41 = swift_getKeyPath();
    *(v41 + 1) = 0;
    v41[16] = 0;
    *(v8 + *(v40 + 24)) = v39;
    v30 = type metadata accessor for ActionsBottomAccessory;
    sub_213EB8190(v8, v56, type metadata accessor for ActionsBottomAccessory);
    swift_storeEnumTagMultiPayload();
    sub_213EB7F70(qword_2811843A0, type metadata accessor for RefinementBottomAccessory, &unk_213F5E978);
    sub_213EB7F70(qword_281185158, type metadata accessor for ActionsBottomAccessory, &unk_213F5E928);
    v42 = v59;
    sub_213F4DBA0();
    sub_213DE3164(v42, v64, &qword_27C8FB0A8, &qword_213F5E7F0);
    swift_storeEnumTagMultiPayload();
    sub_213EB7FB8();
    sub_213EB80A4();
    sub_213F4DBA0();
    sub_213DE36FC(v42, &qword_27C8FB0A8, &qword_213F5E7F0);
    v32 = v8;
  }

  else
  {

    v25 = sub_213F4B970(v24);
    sub_213EB7F60(v20, v19, v21, v22);
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v26 = v15[5];
    *(v17 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v27 = v17 + v15[6];
    *v27 = swift_getKeyPath();
    *(v27 + 1) = 0;
    v27[16] = 0;
    v28 = v15[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEF8, &unk_213F5E890);
    sub_213F4EDF0();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_213F55C80;
    *v14 = xmmword_213F5D980;
    (*(v51 + 104))(v14, *MEMORY[0x277CDF108], v12);
    sub_213F4EE00();
    *(v17 + v28) = v29;
    *(v17 + v15[7]) = v25;
    v30 = type metadata accessor for RefinementBottomAccessory;
    sub_213EB8190(v17, v56, type metadata accessor for RefinementBottomAccessory);
    swift_storeEnumTagMultiPayload();
    sub_213EB7F70(qword_2811843A0, type metadata accessor for RefinementBottomAccessory, &unk_213F5E978);
    sub_213EB7F70(qword_281185158, type metadata accessor for ActionsBottomAccessory, &unk_213F5E928);
    v31 = v59;
    sub_213F4DBA0();
    sub_213DE3164(v31, v64, &qword_27C8FB0A8, &qword_213F5E7F0);
    swift_storeEnumTagMultiPayload();
    sub_213EB7FB8();
    sub_213EB80A4();
    sub_213F4DBA0();
    sub_213DE36FC(v31, &qword_27C8FB0A8, &qword_213F5E7F0);
    v32 = v17;
  }

  return sub_213EB81F8(v32, v30);
}

double sub_213EB7E64@<D0>(uint64_t a1@<X8>)
{
  sub_213EB728C(a1);
  sub_213F4EEF0();
  sub_213F4D0C0();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB080, &qword_213F5E7C8) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_213EB7F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213EB7FB8()
{
  result = qword_281182B70;
  if (!qword_281182B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0A8, &qword_213F5E7F0);
    sub_213EB7F70(qword_2811843A0, type metadata accessor for RefinementBottomAccessory, &unk_213F5E978);
    sub_213EB7F70(qword_281185158, type metadata accessor for ActionsBottomAccessory, &unk_213F5E928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B70);
  }

  return result;
}

unint64_t sub_213EB80A4()
{
  result = qword_281182B98;
  if (!qword_281182B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB090, &qword_213F5E7D8);
    sub_213EB7F70(qword_281185658, type metadata accessor for NoteBottomAccessory, &unk_213F5EA18);
    sub_213EB7F70(&qword_281185298, type metadata accessor for PhotosBottomAccessory, &unk_213F5E9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B98);
  }

  return result;
}

uint64_t sub_213EB8190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EB81F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213EB82C4(uint64_t a1)
{
  sub_213EB8930(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213EB86F0(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213EB8930(319, &unk_281182408, type metadata accessor for NSTextAlignment, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_213EB85C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_213EB8930(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v9 <= 0x3F)
  {
    sub_213EB86F0(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
    if (v10 <= 0x3F)
    {
      sub_213EB86F0(319, a4, a5, a6, MEMORY[0x277D83940]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EB86F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_213EB877C(uint64_t a1)
{
  sub_213EB8930(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213EB8930(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213EB86F0(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_213EB86F0(319, &qword_281182488, &qword_27C8FA890, &qword_213F5D620, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_213EB8930(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213EB8930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213EB8994()
{
  result = qword_281183390;
  if (!qword_281183390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB080, &qword_213F5E7C8);
    sub_213EB8A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183390);
  }

  return result;
}

unint64_t sub_213EB8A20()
{
  result = qword_281182A60;
  if (!qword_281182A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0B8, &qword_213F5E920);
    sub_213EB7FB8();
    sub_213EB80A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A60);
  }

  return result;
}

double sub_213EB8B28()
{
  v1 = *(type metadata accessor for NoteBottomAccessory(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213EB5E54(v2);
}

uint64_t sub_213EB8B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EB8BF0(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotosBottomAccessory(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213EB6538(a1, v4);
}

uint64_t sub_213EB8C70()
{
  v1 = *(type metadata accessor for PhotosBottomAccessory(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_213EB67F0(v0 + v2, v3);
}

unint64_t sub_213EB8D04()
{
  result = qword_27C8FB118;
  if (!qword_27C8FB118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB110, &qword_213F5EAD0);
    sub_213EB8DBC();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB118);
  }

  return result;
}

unint64_t sub_213EB8DBC()
{
  result = qword_27C8FB120;
  if (!qword_27C8FB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB128, &qword_213F5EAD8);
    sub_213EB8E74();
    sub_213DE3AE4(&qword_27C8FB140, &qword_27C8FB148, &unk_213F5EAF8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB120);
  }

  return result;
}

unint64_t sub_213EB8E74()
{
  result = qword_27C8FB130;
  if (!qword_27C8FB130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB138, &unk_213F5EAE0);
    sub_213DFDFD0();
    sub_213DE3AE4(&qword_27C8F8AC0, &qword_27C8F8AA0, &qword_213F5EAF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB130);
  }

  return result;
}

uint64_t sub_213EB8F2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_213EB8F4C()
{
  result = qword_27C8FB190;
  if (!qword_27C8FB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB188, &qword_213F5EBB8);
    sub_213DE3AE4(&qword_27C8FB198, &qword_27C8FB1A0, &unk_213F5EBC0, MEMORY[0x277CDF168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB190);
  }

  return result;
}

unint64_t sub_213EB900C()
{
  result = qword_27C8FB1C0;
  if (!qword_27C8FB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1B8, &qword_213F5EBD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1C8, &qword_213F5EBE0);
    sub_213EB90E8();
    sub_213E4FC2C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB1C0);
  }

  return result;
}

unint64_t sub_213EB90E8()
{
  result = qword_27C8FB1D0;
  if (!qword_27C8FB1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1C8, &qword_213F5EBE0);
    sub_213DE3AE4(&qword_27C8FB1D8, &qword_27C8FB1E0, &qword_213F5EBE8, MEMORY[0x277CDF028]);
    sub_213DE3AE4(&qword_2811828F8, &qword_27C8F82B8, &qword_213F5EBF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB1D0);
  }

  return result;
}

uint64_t sub_213EB91CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RefinementBottomAccessory(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213EB4214(a1, v6, a2);
}

uint64_t sub_213EB924C()
{
  v1 = *(type metadata accessor for RefinementBottomAccessory(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_213EB4478(v0 + v2, v4, v5);
}

unint64_t sub_213EB92F0()
{
  result = qword_27C8FB1F8;
  if (!qword_27C8FB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB1F0, &qword_213F5EC28);
    sub_213EB93A8();
    sub_213DE3AE4(&qword_27C8FB220, &qword_27C8FB228, &unk_213F5EC48, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB1F8);
  }

  return result;
}

unint64_t sub_213EB93A8()
{
  result = qword_27C8FB200;
  if (!qword_27C8FB200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB208, &qword_213F5EC30);
    sub_213EB9434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB200);
  }

  return result;
}

unint64_t sub_213EB9434()
{
  result = qword_27C8FB210;
  if (!qword_27C8FB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB218, &unk_213F5EC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9230, &qword_213F57250);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB210);
  }

  return result;
}

uint64_t objectdestroy_64Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_213F4D290();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  sub_213EB8B1C(*(v1 + v3 + *(v2 + 20)), *(v1 + v3 + *(v2 + 20) + 8), *(v1 + v3 + *(v2 + 20) + 16));

  return swift_deallocObject();
}

uint64_t sub_213EB9680(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for ActionsBottomAccessory(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213EB5650(a1, a2, v6);
}

unint64_t sub_213EB9700()
{
  result = qword_27C8FB250;
  if (!qword_27C8FB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0C8, &qword_213F5EA70);
    sub_213EB978C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB250);
  }

  return result;
}

unint64_t sub_213EB978C()
{
  result = qword_27C8FB258;
  if (!qword_27C8FB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB0C0, &qword_213F5EA68);
    sub_213EB7F70(&qword_281186B38, type metadata accessor for FadingLabelView, &protocol conformance descriptor for FadingLabelView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB258);
  }

  return result;
}

unint64_t sub_213EB9848()
{
  result = qword_27C8FB260;
  if (!qword_27C8FB260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB108, &qword_213F5EAC8);
    sub_213DE3AE4(&qword_27C8FB268, &qword_27C8FB0D0, &qword_213F5EA78, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB260);
  }

  return result;
}

unint64_t sub_213EB9900()
{
  result = qword_27C8FB278;
  if (!qword_27C8FB278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB178, &qword_213F5EBA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB168, &qword_213F5EB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB160, &qword_213F5EB90);
    sub_213F4DFB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB158, &qword_213F5EB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB150, &qword_213F5EB80);
    sub_213DE3AE4(&qword_27C8FB1A8, &qword_27C8FB150, &qword_213F5EB80, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB278);
  }

  return result;
}

uint64_t sub_213EB9AD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EB9B5C()
{
  result = qword_281183410;
  if (!qword_281183410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB240, &qword_213F5EC68);
    sub_213EB7F70(&qword_281185B80, type metadata accessor for ActionButtonLayout, &unk_213F5D628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183410);
  }

  return result;
}

uint64_t ContextLineAccessoryViewModel.init(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  v4 = type metadata accessor for ContextLineAccessoryViewModel(0);
  return sub_213EC31F8(a1, a2 + *(v4 + 20), type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
}

uint64_t ContextLineAccessoryViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextLineAccessoryViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t ContextLineAccessoryViewModel.axIDString.getter()
{
  v1 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ContextLineAccessoryViewModel(0);
  sub_213EC2060(v0 + *(v4 + 20), v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = sub_213F4CA10();
      (*(*(v7 - 8) + 8))(v3, v7);
      result = 0x656D69546C616552;
      break;
    case 2u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x676E697373694DLL;
      break;
    case 3u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x64656E6E6950;
      break;
    case 4u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x676E69646E657254;
      break;
    case 5u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x64657469736956;
      break;
    case 6u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x516465686374614DLL;
      break;
    case 7u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 1702129486;
      break;
    case 8u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x537469736E617254;
      break;
    case 9u:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x75426D6F74737543;
      break;
    case 0xAu:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x72617262694C6E49;
      break;
    case 0xBu:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x7547726573556E49;
      break;
    case 0xCu:
      sub_213EC2830(v3, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType);
      result = 0x6D6E6961746E6F43;
      break;
    case 0xDu:

      __swift_destroy_boxed_opaque_existential_1(v3);
      result = 0x6465727574616546;
      break;
    case 0xEu:

      __swift_destroy_boxed_opaque_existential_1(v3);
      result = 0xD000000000000018;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB280, &qword_213F5ECE0);

      v5 = sub_213F4CA10();
      (*(*(v5 - 8) + 8))(v3, v5);
      result = 0x6D6F74737543;
      break;
  }

  return result;
}

uint64_t sub_213EBA270(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_213EBA344(uint64_t a1)
{
  sub_213EBA460(319);
  if (v1 <= 0x3F)
  {
    sub_213EBA4E0(319);
    if (v2 <= 0x3F)
    {
      sub_213F4CA10();
      if (v3 <= 0x3F)
      {
        sub_213EBA54C(319);
        if (v4 <= 0x3F)
        {
          sub_213EC2B2C(319, &qword_281182810, MEMORY[0x277CE0BE8]);
          if (v5 <= 0x3F)
          {
            sub_213EBA5C4(319);
            if (v6 <= 0x3F)
            {
              sub_213EBA658();
              if (v7 <= 0x3F)
              {
                sub_213EBA6D0(319);
                if (v8 <= 0x3F)
                {
                  sub_213EBA75C(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_213EBA460(uint64_t a1)
{
  if (!qword_281188820)
  {
    sub_213F4CA10();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9828, &qword_213F58D80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281188820);
    }
  }
}

void sub_213EBA4E0(uint64_t a1)
{
  if (!qword_281188818)
  {
    sub_213F4CA10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281188818);
    }
  }
}

void sub_213EBA54C(uint64_t a1)
{
  if (!qword_2811824F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB288, &qword_213F5ED78);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811824F8);
    }
  }
}

void sub_213EBA5C4(uint64_t a1)
{
  if (!qword_281182508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA4A8, &qword_213F5C5A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9828, &qword_213F58D80);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281182508);
    }
  }
}

void sub_213EBA658()
{
  if (!qword_2811824C8)
  {
    sub_213EC2A64(0, &qword_2811824C0, type metadata accessor for RichTextViewModel, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_2811824C8);
    }
  }
}

void sub_213EBA6D0(uint64_t a1)
{
  if (!qword_281187B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC0, &qword_213F59B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA4A8, &qword_213F5C5A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281187B60);
    }
  }
}

void sub_213EBA75C(uint64_t a1)
{
  if (!qword_281187B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC0, &qword_213F59B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA4A8, &qword_213F5C5A0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281187B68);
    }
  }
}

uint64_t sub_213EBA834(uint64_t a1)
{
  result = type metadata accessor for ContextLineAccessoryViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213EBA8BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RichTextView(0);
  v5 = a1 + v4[10];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v6 = (type metadata accessor for RichTextViewModel(0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_213F55C80;
  v9 = v8 + v7;
  v10 = type metadata accessor for CustomContextLineAccessory(0);
  v11 = (v2 + *(v10 + 20));
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + *(v10 + 24));
  v15 = v6[7];
  v16 = sub_213F4CA10();
  (*(*(v16 - 8) + 16))(v9 + v15, v2, v16);

  sub_213F4CB30();
  v17 = (v9 + v6[9]);
  v18 = v6[10];
  *(v9 + v6[8]) = 0;
  *v17 = v13;
  v17[1] = v12;
  *(v9 + v18) = v14;
  *(v9 + v6[11]) = 0;
  *(v9 + v6[12]) = 0;
  v19 = v9 + v6[13];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v9 + v6[14]) = 0;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v20 = v4[5];
  *(a1 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v21 = v4[6];
  *(a1 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v22 = a1 + v4[7];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a1 + v4[8];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *(a1 + v4[9]) = 3;
  *(a1 + v4[11]) = v8;
  *(a1 + v4[12]) = 1;
  *(a1 + v4[13]) = 0;
}

uint64_t sub_213EBAB78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for CustomContextLineAccessory(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB408, &unk_213F5F5D0);
  MEMORY[0x28223BE20](v65);
  v7 = &v54 - v6;
  v8 = sub_213F4CA70();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213F4CA10();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RichTextView(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(type metadata accessor for RealTimeChargerContextLineAccessory(0) + 20);
  v63 = v2;
  if (*(v2 + v18) == 1)
  {
    v19 = v17 + *(v15 + 40);
    *(v19 + 4) = 0;
    *v19 = 0u;
    *(v19 + 1) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
    v59 = v15;
    v20 = type metadata accessor for RichTextViewModel(0);
    v62 = v3;
    v21 = (v20 - 8);
    v22 = *(*(v20 - 8) + 72);
    v23 = *(*(v20 - 8) + 80);
    v61 = v7;
    v24 = (v23 + 32) & ~v23;
    v58 = 2 * v22;
    v25 = swift_allocObject();
    v60 = v25;
    *(v25 + 16) = xmmword_213F53CC0;
    v26 = v25 + v24;
    v54 = 0x8000000213FA5AD0;
    sub_213F4CA60();
    sub_213F4CA20();
    v27 = *(v12 + 16);
    v27(v26 + v21[7], v14, v11);
    v55 = v27;
    v56 = v10;
    v28 = v27;
    sub_213F4CB30();
    v57 = *(v12 + 8);
    v57(v14, v11);
    v29 = (v26 + v21[9]);
    v30 = v21[10];
    *(v26 + v21[8]) = 0;
    *v29 = 0xD000000000000017;
    v29[1] = v54;
    *(v26 + v30) = 0;
    *(v26 + v21[11]) = 0;
    *(v26 + v21[12]) = 0;
    v31 = v26 + v21[13];
    *v31 = 0;
    *(v31 + 8) = 1;
    *(v26 + v21[14]) = 0;
    v32 = v26 + v22;
    v33 = sub_213F4E8E0();
    v28(v32 + v21[7], v63, v11);
    sub_213F4CB30();
    v35 = v21[9];
    v34 = v21[10];
    *(v32 + v21[8]) = 0;
    v36 = (v32 + v35);
    *v36 = 0;
    v36[1] = 0;
    *(v32 + v34) = v33;
    *(v32 + v21[11]) = 0;
    *(v32 + v21[12]) = 0;
    v37 = v32 + v21[13];
    *v37 = 0;
    *(v37 + 8) = 1;
    *(v32 + v21[14]) = 0;
    v38 = v26 + v58;
    v39 = sub_213F4E8E0();
    sub_213F4CA60();
    sub_213F4CA20();
    v55(v38 + v21[7], v14, v11);
    sub_213F4CB30();
    v57(v14, v11);
    v40 = (v38 + v21[9]);
    v41 = v21[10];
    *(v38 + v21[8]) = 0;
    *v40 = 0xD000000000000019;
    v40[1] = 0x8000000213FA5AF0;
    *(v38 + v41) = v39;
    *(v38 + v21[11]) = 0;
    *(v38 + v21[12]) = 0;
    v42 = v38 + v21[13];
    *v42 = 0;
    *(v42 + 8) = 1;
    *(v38 + v21[14]) = 0;
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v43 = v59;
    v44 = v59[5];
    *(v17 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v45 = v43[6];
    *(v17 + v45) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v46 = v17 + v43[7];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v47 = v17 + v43[8];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    *(v17 + v43[9]) = 3;
    v48 = v61;
    *(v17 + v43[11]) = v60;
    *(v17 + v43[12]) = 0;
    *(v17 + v43[13]) = 0;
    v49 = type metadata accessor for RichTextView;
    sub_213EC2060(v17, v48, type metadata accessor for RichTextView);
    swift_storeEnumTagMultiPayload();
    sub_213EC21D8(qword_281187F70, type metadata accessor for RichTextView, &unk_213F5C430);
    sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory, &unk_213F5F2A0);
    sub_213F4DBA0();
    v50 = v17;
  }

  else
  {
    (*(v12 + 16))(v5, v63, v11);
    v51 = sub_213F4E920();
    v52 = &v5[*(v3 + 20)];
    *v52 = 0xD000000000000017;
    *(v52 + 1) = 0x8000000213FA5AD0;
    *&v5[*(v3 + 24)] = v51;
    v49 = type metadata accessor for CustomContextLineAccessory;
    sub_213EC2060(v5, v7, type metadata accessor for CustomContextLineAccessory);
    swift_storeEnumTagMultiPayload();
    sub_213EC21D8(qword_281187F70, type metadata accessor for RichTextView, &unk_213F5C430);
    sub_213EC21D8(&qword_281184250, type metadata accessor for CustomContextLineAccessory, &unk_213F5F2A0);
    sub_213F4DBA0();
    v50 = v5;
  }

  return sub_213EC2830(v50, v49);
}

uint64_t sub_213EBB348(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_213F4EB20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v15 = v2;
  v16 = v3;
  v17 = v1;

  sub_213F4EB00();
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v8, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v8, v4);
  sub_213DBFEEC(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_213EBB4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BorderlessButton(0, v9, v10, v11);
  sub_213DBFEEC(a1 + *(v12 + 36), a2, a3);
  sub_213DBFEEC(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

void *sub_213EBB5E8()
{
  v45 = sub_213F4CB40();
  v1 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RichTextViewModel(0);
  v5 = MEMORY[0x28223BE20](v4);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  v14 = v0[4];
  v13 = v0[5];
  v15 = *(v13 + 16);
  v38 = v14;
  if (v15)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    return MEMORY[0x277D84F90];
  }

  v37 = v0[3];
  v43 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = *(v10 + 72);
  v40 = (v1 + 16);
  v41 = v18;
  v39 = (v1 + 8);
  v19 = MEMORY[0x277D84F90];
  v42 = v13 + v43;
  v20 = v13 + v43;
  do
  {
    sub_213EC2060(v20, v12, type metadata accessor for RichTextViewModel);
    v23 = v45;
    (*v40)(v3, v42, v45);
    v24 = _s10MapsDesign26RoutePlanningCellViewModelV2eeoiySbAC_ACtFZ_0();
    (*v39)(v3, v23);
    if (v24)
    {
      v25 = v4[5];
      v26 = sub_213F4CA10();
      (*(*(v26 - 8) + 16))(&v9[v25], &v12[v25], v26);
      v27 = v38;

      sub_213F4CB30();
      v29 = v4[7];
      v28 = v4[8];
      v9[v4[6]] = 0;
      v30 = &v9[v29];
      *v30 = v37;
      *(v30 + 1) = v27;
      *&v9[v28] = 0;
      *&v9[v4[9]] = 0;
      *&v9[v4[10]] = 0;
      v31 = &v9[v4[11]];
      *v31 = 0;
      v31[8] = 1;
      *&v9[v4[12]] = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_213F1EB64(0, v19[2] + 1, 1, v19);
      }

      v33 = v19[2];
      v32 = v19[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v19 = sub_213F1EB64((v32 > 1), v33 + 1, 1, v19);
      }

      v21 = v9;
    }

    else
    {
      sub_213EC2060(v12, v44, type metadata accessor for RichTextViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_213F1EB64(0, v19[2] + 1, 1, v19);
      }

      v33 = v19[2];
      v35 = v19[3];
      v34 = v33 + 1;
      if (v33 >= v35 >> 1)
      {
        v19 = sub_213F1EB64((v35 > 1), v33 + 1, 1, v19);
      }

      v21 = v44;
    }

    sub_213EC2830(v12, type metadata accessor for RichTextViewModel);
    v19[2] = v34;
    v22 = v41;
    sub_213EC31F8(v21, v19 + v43 + v33 * v41, type metadata accessor for RichTextViewModel);
    v20 += v22;
    --v15;
  }

  while (v15);
  return v19;
}

uint64_t sub_213EBBA18@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v3;
  v19 = *(v1 + 64);
  v4 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_213EC31F0;
  a1[1] = v5;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0) + 36));
  v9 = type metadata accessor for RichTextView(0);
  v10 = v8 + v9[10];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  sub_213EC2890(v18, v17);
  v11 = sub_213EBB5E8();
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v12 = v9[5];
  *(v8 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v13 = v9[6];
  *(v8 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v14 = v8 + v9[7];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v8 + v9[8];
  result = swift_getKeyPath();
  *v15 = result;
  v15[8] = 0;
  *(v8 + v9[9]) = 3;
  *(v8 + v9[11]) = v11;
  *(v8 + v9[12]) = 0;
  *(v8 + v9[13]) = 0;
  return result;
}

uint64_t sub_213EBBBF0(__int128 *a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = *(a1 + 16);
  v15 = *a1;
  v6 = v15;
  if (v16 == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v7 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213DE36FC(&v15, &qword_27C8FB358, &qword_213F5F4A8);
    (*(v3 + 8))(v5, v2);
    v6 = v13;
  }

  v13 = a1[3];
  v14 = *(a1 + 64);
  v11 = a1[3];
  v12 = *(a1 + 64);
  sub_213EC3260(&v13, v10);
  v6(&v11);

  return sub_213EB8F2C(v11, *(&v11 + 1), v12);
}

double sub_213EBBDBC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v67 = sub_213F4D470() - 8;
  MEMORY[0x28223BE20](v67);
  v4 = &v59[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MapsDesignImage(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeaturedInGuideContextLineAccessory(0);
  v10 = *(v9 + 32);
  v65 = v9;
  sub_213DEBAA8(v2 + v10, &v8[v6[10]]);
  v11 = sub_213F4EEE0();
  v13 = v12;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v14 = v6[7];
  *&v8[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v15 = v6[8];
  *&v8[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v16 = v6[9];
  *&v8[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v17 = &v8[v6[14]];
  v18 = &v8[v6[15]];
  v19 = &v8[v6[16]];
  v72 = 0uLL;
  *(&v73 + 7) = 0;
  *&v73 = 0;
  sub_213F4EA90();
  v20 = v70;
  v21 = BYTE8(v70);
  v22 = BYTE9(v70);
  v23 = BYTE10(v70);
  v24 = v71;
  *v19 = v69;
  *(v19 + 2) = v20;
  v19[24] = v21;
  v19[25] = v22;
  v19[26] = v23;
  *(v19 + 4) = v24;
  v25 = v6[17];
  *&v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v8[v25] = v69;
  v8[v6[11]] = 1;
  v26 = &v8[v6[12]];
  *v26 = v11;
  v26[1] = v13;
  v8[v6[13]] = 1;
  *v17 = sub_213EC3B28;
  v17[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v64 = v2;
  sub_213F4CFF0();
  sub_213F4CFF0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v27 = v66;
  sub_213EC2060(v8, v66, type metadata accessor for MapsDesignImage);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
  v29 = v70;
  *v28 = v69;
  v28[1] = v29;
  v28[2] = v71;
  sub_213EC2830(v8, type metadata accessor for MapsDesignImage);
  v30 = sub_213F4EEE0();
  v61 = v31;
  v62 = v30;
  v32 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB378, &unk_213F5F530) + 36);
  v33 = *(v67 + 28);
  v60 = *MEMORY[0x277CE0118];
  v34 = v60;
  v35 = sub_213F4D950();
  v36 = *(*(v35 - 8) + 104);
  v36(&v4[v33], v34, v35);
  __asm { FMOV            V0.2D, #4.0 }

  *v4 = _Q0;
  sub_213F4E8C0();
  v42 = sub_213F4E900();

  sub_213F4CF60();
  v43 = MEMORY[0x277CDFC08];
  sub_213EC2060(v4, v32, MEMORY[0x277CDFC08]);
  v44 = *&v72 * 0.5;
  v45 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
  sub_213EC2060(v4, v45, v43);
  *(v45 + *(sub_213F4D460() + 20)) = v44;
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
  v47 = v73;
  *v46 = v72;
  *(v46 + 16) = v47;
  *(v46 + 32) = v74;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
  *(v45 + *(v48 + 52)) = v42;
  *(v45 + *(v48 + 56)) = 256;
  v49 = sub_213F4EEE0();
  v51 = v50;
  sub_213EC2830(v4, v43);
  v52 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
  *v52 = v49;
  v52[1] = v51;
  v53 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
  v54 = v61;
  *v53 = v62;
  v53[1] = v54;
  sub_213F4CFF0();
  v55 = v68;
  v56 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB380, &qword_213F5F540) + 36));
  v36(&v56[*(v67 + 28)], v60, v35);
  *v56 = v55;
  *(v56 + 1) = v55;
  *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  result = 0.0;
  *(v27 + *(v57 + 36)) = xmmword_213F5EC80;
  return result;
}

uint64_t sub_213EBC3B0()
{
  v20 = type metadata accessor for RichTextViewModel(0);
  v1 = *(v20 - 8);
  v2 = MEMORY[0x28223BE20](v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(v0 + *(type metadata accessor for FeaturedInGuideContextLineAccessory(0) + 36));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v21 = MEMORY[0x277D84F90];
    sub_213EA91A8(0, v8, 0);
    v9 = v21;
    v10 = objc_opt_self();
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = v7 + v11;
    v13 = *(v1 + 72);
    do
    {
      sub_213EC2060(v12, v4, type metadata accessor for RichTextViewModel);
      sub_213EC2060(v4, v6, type metadata accessor for RichTextViewModel);
      v14 = [v10 systemBlueColor];
      v15 = sub_213F4E870();
      sub_213EC2830(v4, type metadata accessor for RichTextViewModel);
      v16 = *(v20 + 32);

      *&v6[v16] = v15;
      v21 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_213EA91A8((v17 > 1), v18 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v18 + 1;
      sub_213EC31F8(v6, v9 + v11 + v18 * v13, type metadata accessor for RichTextViewModel);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_213EBC5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for FeaturedInGuideContextLineAccessory(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v36 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  sub_213EBBDBC(&v36 - v20);
  sub_213EC2060(a1, v9, type metadata accessor for FeaturedInGuideContextLineAccessory);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_213EC31F8(v9, v23 + v22, type metadata accessor for FeaturedInGuideContextLineAccessory);
  sub_213EC2060(a1, v7, type metadata accessor for FeaturedInGuideContextLineAccessory);
  *v15 = sub_213EC32BC;
  v15[1] = v23;
  v24 = (v15 + *(v11 + 44));
  v25 = type metadata accessor for RichTextView(0);
  v26 = v24 + v25[10];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v27 = sub_213EBC3B0();
  sub_213EC2830(v7, type metadata accessor for FeaturedInGuideContextLineAccessory);
  *v24 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v28 = v25[5];
  *(v24 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v29 = v25[6];
  *(v24 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v30 = v24 + v25[7];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v24 + v25[8];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  *(v24 + v25[9]) = 3;
  *(v24 + v25[11]) = v27;
  *(v24 + v25[12]) = 0;
  *(v24 + v25[13]) = 0;
  sub_213DE3164(v21, v19, &qword_27C8FB368, &qword_213F5F4B8);
  v32 = v36;
  sub_213DE3164(v15, v36, &qword_27C8FB350, &qword_213F5F3E0);
  v33 = v37;
  sub_213DE3164(v19, v37, &qword_27C8FB368, &qword_213F5F4B8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB370, &qword_213F5F4C0);
  sub_213DE3164(v32, v33 + *(v34 + 48), &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v15, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v21, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE36FC(v32, &qword_27C8FB350, &qword_213F5F3E0);
  return sub_213DE36FC(v19, &qword_27C8FB368, &qword_213F5F4B8);
}

double sub_213EBCA38(void (**a1)(__int128 *))
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  if (*(a1 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v8 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v9 = sub_213EB8B1C(v7, v6, 0);
    (*(v3 + 8))(v5, v2, v9);
    v7 = v11;
  }

  v11 = xmmword_213F55620;
  v12 = 4;
  v7(&v11);

  return result;
}

uint64_t sub_213EBCBC0@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_213F4D870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  sub_213F4CFF0();
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB360, &qword_213F5F4B0);
  return sub_213EBC5D0(v2, a2 + *(v5 + 44));
}

double sub_213EBCC5C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v67 = sub_213F4D470() - 8;
  MEMORY[0x28223BE20](v67);
  v4 = &v59[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MapsDesignImage(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v10 = *(v9 + 36);
  v65 = v9;
  sub_213DEBAA8(v2 + v10, &v8[v6[10]]);
  v11 = sub_213F4EEE0();
  v13 = v12;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v14 = v6[7];
  *&v8[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v15 = v6[8];
  *&v8[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v16 = v6[9];
  *&v8[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v17 = &v8[v6[14]];
  v18 = &v8[v6[15]];
  v19 = &v8[v6[16]];
  v72 = 0uLL;
  *(&v73 + 7) = 0;
  *&v73 = 0;
  sub_213F4EA90();
  v20 = v70;
  v21 = BYTE8(v70);
  v22 = BYTE9(v70);
  v23 = BYTE10(v70);
  v24 = v71;
  *v19 = v69;
  *(v19 + 2) = v20;
  v19[24] = v21;
  v19[25] = v22;
  v19[26] = v23;
  *(v19 + 4) = v24;
  v25 = v6[17];
  *&v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v8[v25] = v69;
  v8[v6[11]] = 1;
  v26 = &v8[v6[12]];
  *v26 = v11;
  v26[1] = v13;
  v8[v6[13]] = 1;
  *v17 = sub_213EC3B28;
  v17[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v64 = v2;
  sub_213F4CFF0();
  sub_213F4CFF0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v27 = v66;
  sub_213EC2060(v8, v66, type metadata accessor for MapsDesignImage);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
  v29 = v70;
  *v28 = v69;
  v28[1] = v29;
  v28[2] = v71;
  sub_213EC2830(v8, type metadata accessor for MapsDesignImage);
  v30 = sub_213F4EEE0();
  v61 = v31;
  v62 = v30;
  v32 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB378, &unk_213F5F530) + 36);
  v33 = *(v67 + 28);
  v60 = *MEMORY[0x277CE0118];
  v34 = v60;
  v35 = sub_213F4D950();
  v36 = *(*(v35 - 8) + 104);
  v36(&v4[v33], v34, v35);
  __asm { FMOV            V0.2D, #4.0 }

  *v4 = _Q0;
  sub_213F4E8C0();
  v42 = sub_213F4E900();

  sub_213F4CF60();
  v43 = MEMORY[0x277CDFC08];
  sub_213EC2060(v4, v32, MEMORY[0x277CDFC08]);
  v44 = *&v72 * 0.5;
  v45 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
  sub_213EC2060(v4, v45, v43);
  *(v45 + *(sub_213F4D460() + 20)) = v44;
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
  v47 = v73;
  *v46 = v72;
  *(v46 + 16) = v47;
  *(v46 + 32) = v74;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
  *(v45 + *(v48 + 52)) = v42;
  *(v45 + *(v48 + 56)) = 256;
  v49 = sub_213F4EEE0();
  v51 = v50;
  sub_213EC2830(v4, v43);
  v52 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
  *v52 = v49;
  v52[1] = v51;
  v53 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
  v54 = v61;
  *v53 = v62;
  v53[1] = v54;
  sub_213F4CFF0();
  v55 = v68;
  v56 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB380, &qword_213F5F540) + 36));
  v36(&v56[*(v67 + 28)], v60, v35);
  *v56 = v55;
  *(v56 + 1) = v55;
  *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  result = 0.0;
  *(v27 + *(v57 + 36)) = xmmword_213F5EC80;
  return result;
}

unint64_t sub_213EBD250@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = sub_213F4E870();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AE8, &unk_213F55C40);
  result = sub_213E0C9E0();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_213EBD2BC()
{
  v20 = type metadata accessor for RichTextViewModel(0);
  v1 = *(v20 - 8);
  v2 = MEMORY[0x28223BE20](v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(v0 + *(type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0) + 40));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v21 = MEMORY[0x277D84F90];
    sub_213EA91A8(0, v8, 0);
    v9 = v21;
    v10 = objc_opt_self();
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = v7 + v11;
    v13 = *(v1 + 72);
    do
    {
      sub_213EC2060(v12, v4, type metadata accessor for RichTextViewModel);
      sub_213EC2060(v4, v6, type metadata accessor for RichTextViewModel);
      v14 = [v10 systemBlueColor];
      v15 = sub_213F4E870();
      sub_213EC2830(v4, type metadata accessor for RichTextViewModel);
      v16 = *(v20 + 32);

      *&v6[v16] = v15;
      v21 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_213EA91A8((v17 > 1), v18 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v18 + 1;
      sub_213EC31F8(v6, v9 + v11 + v18 * v13, type metadata accessor for RichTextViewModel);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_213EBD4DC@<X0>(double (**a1)()@<X8>)
{
  v3 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  sub_213EC2060(v1, &v22 - v9, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_213EC31F8(v10, v12 + v11, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  sub_213EC2060(v1, v8, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  *a1 = sub_213EC3500;
  a1[1] = v12;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0) + 36));
  v14 = type metadata accessor for RichTextView(0);
  v15 = v13 + v14[10];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = *&v8[*(v4 + 52)];

  sub_213EC2830(v8, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v17 = v14[5];
  *(v13 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v18 = v14[6];
  *(v13 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v19 = v13 + v14[7];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v13 + v14[8];
  result = swift_getKeyPath();
  *v20 = result;
  v20[8] = 0;
  *(v13 + v14[9]) = 3;
  *(v13 + v14[11]) = v16;
  *(v13 + v14[12]) = 0;
  *(v13 + v14[13]) = 0;
  return result;
}

double sub_213EBD798(uint64_t a1, __n128 a2)
{
  v13 = a2;
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0) + 20);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v10 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v11 = sub_213EB8B1C(v9, v8, 0);
    (*(v4 + 8))(v6, v3, v11);
    v9 = v14.n128_u64[0];
  }

  v14 = v13;
  v15 = 4;
  v9(&v14);

  return result;
}

uint64_t sub_213EBD930@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v4 = sub_213F4E010();
  *(inited + 32) = v4;
  v5 = sub_213F4E030();
  *(inited + 33) = v5;
  v6 = sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v4)
  {
    v6 = sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v5)
  {
    v6 = sub_213F4E020();
  }

  *a1 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB388, &qword_213F5F548);
  return sub_213EBDA34(v1, &a1[*(v7 + 44)]);
}

uint64_t sub_213EBDA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB390, &qword_213F5F550);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB398, &qword_213F5F558);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = sub_213F4D870();
  type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  sub_213F4CFF0();
  v16 = v25;
  *v14 = v15;
  *(v14 + 1) = v16;
  v14[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3A0, &qword_213F5F560);
  sub_213EBDCD8(a1, &v14[*(v17 + 44)]);
  v18 = sub_213F4D870();
  sub_213F4CFF0();
  v19 = v25;
  *v8 = v18;
  *(v8 + 1) = v19;
  v8[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3A8, &qword_213F5F568);
  sub_213EBE710(a1, &v8[*(v20 + 44)]);
  sub_213DE3164(v14, v12, &qword_27C8FB398, &qword_213F5F558);
  sub_213DE3164(v8, v6, &qword_27C8FB390, &qword_213F5F550);
  v21 = v24;
  sub_213DE3164(v12, v24, &qword_27C8FB398, &qword_213F5F558);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3B0, &qword_213F5F570);
  sub_213DE3164(v6, v21 + *(v22 + 48), &qword_27C8FB390, &qword_213F5F550);
  sub_213DE36FC(v8, &qword_27C8FB390, &qword_213F5F550);
  sub_213DE36FC(v14, &qword_27C8FB398, &qword_213F5F558);
  sub_213DE36FC(v6, &qword_27C8FB390, &qword_213F5F550);
  return sub_213DE36FC(v12, &qword_27C8FB398, &qword_213F5F558);
}

uint64_t sub_213EBDCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3E8, &qword_213F5F5A8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_213EBCC5C(&v19 - v14);
  *v9 = sub_213F4D8A0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3F0, &qword_213F5F5B0);
  sub_213EBDEF0(a1, &v9[*(v16 + 44)]);
  sub_213DE3164(v15, v13, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE3164(v9, v7, &qword_27C8FB3E8, &qword_213F5F5A8);
  sub_213DE3164(v13, a2, &qword_27C8FB368, &qword_213F5F4B8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3F8, &unk_213F5F5B8);
  sub_213DE3164(v7, a2 + *(v17 + 48), &qword_27C8FB3E8, &qword_213F5F5A8);
  sub_213DE36FC(v9, &qword_27C8FB3E8, &qword_213F5F5A8);
  sub_213DE36FC(v15, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE36FC(v7, &qword_27C8FB3E8, &qword_213F5F5A8);
  return sub_213DE36FC(v13, &qword_27C8FB368, &qword_213F5F4B8);
}

uint64_t sub_213EBDEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v66 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = (v60 - v6);
  v7 = sub_213F4CA70();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_213F4CA10();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RichTextView(0);
  v11 = (v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (v60 - v14);
  v16 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D0, &qword_213F5F590);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v64 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = (v60 - v24);
  v60[2] = a1;
  sub_213EC2060(a1, v19, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v27 = swift_allocObject();
  sub_213EC31F8(v19, v27 + v26, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v68 = v25;
  *v25 = sub_213EC3B2C;
  v25[1] = v27;
  v28 = (v25 + *(v21 + 44));
  v29 = v28 + v11[12];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  v30 = sub_213EBD2BC();
  *v28 = swift_getKeyPath();
  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v31 = v11[7];
  *(v28 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v32 = v11[8];
  *(v28 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v33 = v28 + v11[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v28 + v11[10];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v28 + v11[11]) = 3;
  *(v28 + v11[13]) = v30;
  *(v28 + v11[14]) = 0;
  *(v28 + v11[15]) = 0;
  KeyPath = swift_getKeyPath();
  v36 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D8, &qword_213F5F598) + 36);
  *v36 = KeyPath;
  *(v36 + 1) = 1;
  v36[16] = 0;
  v37 = v15 + v11[12];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v38 = (type metadata accessor for RichTextViewModel(0) - 8);
  v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_213F55C80;
  v41 = v40 + v39;
  sub_213F4CA60();
  v42 = v61;
  sub_213F4CA20();
  v43 = v62;
  v44 = v63;
  (*(v62 + 16))(v41 + v38[7], v42, v63);
  sub_213F4CB30();
  (*(v43 + 8))(v42, v44);
  v46 = v38[9];
  v45 = v38[10];
  *(v41 + v38[8]) = 0;
  v47 = (v41 + v46);
  *v47 = 0;
  v47[1] = 0;
  *(v41 + v45) = 0;
  *(v41 + v38[11]) = 0;
  *(v41 + v38[12]) = 0;
  v48 = v41 + v38[13];
  *v48 = 0;
  *(v48 + 8) = 1;
  *(v41 + v38[14]) = 0;
  *v15 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v49 = v11[7];
  *(v15 + v49) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v50 = v11[8];
  *(v15 + v50) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v51 = v15 + v11[9];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = v15 + v11[10];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  *(v15 + v11[11]) = 3;
  *(v15 + v11[13]) = v40;
  *(v15 + v11[14]) = 0;
  *(v15 + v11[15]) = 0;
  v53 = v69;
  sub_213EBD4DC(v69);
  v54 = v64;
  sub_213DE3164(v68, v64, &qword_27C8FB3D0, &qword_213F5F590);
  v55 = v65;
  sub_213EC2060(v15, v65, type metadata accessor for RichTextView);
  v56 = v66;
  sub_213DE3164(v53, v66, &qword_27C8FB350, &qword_213F5F3E0);
  v57 = v67;
  sub_213DE3164(v54, v67, &qword_27C8FB3D0, &qword_213F5F590);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB400, &qword_213F5F5C8);
  sub_213EC2060(v55, v57 + *(v58 + 48), type metadata accessor for RichTextView);
  sub_213DE3164(v56, v57 + *(v58 + 64), &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v69, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213EC2830(v15, type metadata accessor for RichTextView);
  sub_213DE36FC(v68, &qword_27C8FB3D0, &qword_213F5F590);
  sub_213DE36FC(v56, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213EC2830(v55, type metadata accessor for RichTextView);
  return sub_213DE36FC(v54, &qword_27C8FB3D0, &qword_213F5F590);
}

uint64_t sub_213EBE710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3B8, &qword_213F5F578);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB368, &qword_213F5F4B8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_213EBCC5C(&v19 - v14);
  *v9 = sub_213F4DA50();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3C0, &qword_213F5F580);
  sub_213EBE928(a1, &v9[*(v16 + 44)]);
  sub_213DE3164(v15, v13, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE3164(v9, v7, &qword_27C8FB3B8, &qword_213F5F578);
  sub_213DE3164(v13, a2, &qword_27C8FB368, &qword_213F5F4B8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3C8, &qword_213F5F588);
  sub_213DE3164(v7, a2 + *(v17 + 48), &qword_27C8FB3B8, &qword_213F5F578);
  sub_213DE36FC(v9, &qword_27C8FB3B8, &qword_213F5F578);
  sub_213DE36FC(v15, &qword_27C8FB368, &qword_213F5F4B8);
  sub_213DE36FC(v7, &qword_27C8FB3B8, &qword_213F5F578);
  return sub_213DE36FC(v13, &qword_27C8FB368, &qword_213F5F4B8);
}

uint64_t sub_213EBE928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB350, &qword_213F5F3E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v35 - v7);
  v9 = type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D0, &qword_213F5F590);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v35 - v18);
  sub_213EC2060(a1, v12, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_213EC31F8(v12, v21 + v20, type metadata accessor for FeaturedInMultipleGuidesContextLineAccessory);
  *v19 = sub_213EC331C;
  v19[1] = v21;
  v22 = (v19 + *(v14 + 44));
  v23 = type metadata accessor for RichTextView(0);
  v24 = v22 + v23[10];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = sub_213EBD2BC();
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v26 = v23[5];
  *(v22 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v27 = v23[6];
  *(v22 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v28 = v22 + v23[7];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v22 + v23[8];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *(v22 + v23[9]) = 3;
  *(v22 + v23[11]) = v25;
  *(v22 + v23[12]) = 0;
  *(v22 + v23[13]) = 0;
  KeyPath = swift_getKeyPath();
  v31 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3D8, &qword_213F5F598) + 36);
  *v31 = KeyPath;
  *(v31 + 1) = 1;
  v31[16] = 0;
  sub_213EBD4DC(v8);
  sub_213DE3164(v19, v17, &qword_27C8FB3D0, &qword_213F5F590);
  sub_213DE3164(v8, v6, &qword_27C8FB350, &qword_213F5F3E0);
  v32 = v36;
  sub_213DE3164(v17, v36, &qword_27C8FB3D0, &qword_213F5F590);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB3E0, &qword_213F5F5A0);
  sub_213DE3164(v6, v32 + *(v33 + 48), &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v8, &qword_27C8FB350, &qword_213F5F3E0);
  sub_213DE36FC(v19, &qword_27C8FB3D0, &qword_213F5F590);
  sub_213DE36FC(v6, &qword_27C8FB350, &qword_213F5F3E0);
  return sub_213DE36FC(v17, &qword_27C8FB3D0, &qword_213F5F590);
}

uint64_t sub_213EBED7C@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = sub_213F4CB60();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_213F4F210();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8 - 8];
  v10 = type metadata accessor for FadingLabelViewModel(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-v14 - 8];
  v31 = *(v1 + 24);

  sub_213F4F200();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v16 = qword_281182518;
  sub_213F4CB50();
  v17 = sub_213F4F260();
  v19 = v18;
  (*(v4 + 8))(v9, v3);
  v20 = [objc_opt_self() preferredFontForTextStyle_];
  v21 = sub_213F4E920();
  sub_213F4CB30();
  *&v15[v10[5]] = v31;
  *&v15[v10[6]] = MEMORY[0x277D84F90];
  *&v15[v10[7]] = 3;
  v22 = &v15[v10[8]];
  *v22 = v17;
  v22[1] = v19;
  *&v15[v10[9]] = v20;
  *&v15[v10[10]] = v21;
  v23 = &v15[v10[11]];
  *v23 = *(v1 + 5);
  v23[8] = *(v1 + 48);
  sub_213EC2060(v15, v13, type metadata accessor for FadingLabelViewModel);
  v29 = *v1;
  v30 = *(v1 + 16);
  v24 = swift_allocObject();
  v25 = v1[1];
  *(v24 + 16) = *v1;
  *(v24 + 32) = v25;
  *(v24 + 48) = v1[2];
  *(v24 + 64) = *(v1 + 48);
  sub_213E32160(&v31, v28);
  sub_213DE3164(&v29, v28, &qword_27C8FB358, &qword_213F5F4A8);
  FadingLabelView.init(model:tapHandler:)(v13, sub_213EC3570, v24, v27);
  return sub_213EC2830(v15, type metadata accessor for FadingLabelViewModel);
}

double sub_213EBF130(__int128 *a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v11 = *a1;
  v6 = v11;
  if (v12 == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v7 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213DE36FC(&v11, &qword_27C8FB358, &qword_213F5F4A8);
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v9 = xmmword_213F5E620;
  v10 = 4;
  v6(&v9);

  return result;
}