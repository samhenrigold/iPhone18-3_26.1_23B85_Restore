uint64_t sub_1D76A2390(void *a1)
{
  v36 = a1;
  v1 = a1;
  sub_1D7679D98();
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_17;
  }

  v3 = v33;
  v4 = v34;
  if (v35 != 1)
  {
    sub_1D76A3788(v33, v34, v35);
LABEL_17:
    v21 = 0;
    goto LABEL_25;
  }

  v5 = v33[2];
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v3[2];
      v9 = &v3[8 * v6 + 4];
      v10 = v6;
      while (1)
      {
        if (v10 >= v8)
        {
          __break(1u);
          return result;
        }

        v11 = *v9;
        v12 = v9[1];
        v13 = v9[3];
        v30 = v9[2];
        v31 = v13;
        v28 = v11;
        v29 = v12;
        v6 = v10 + 1;
        if (BYTE1(v30))
        {
          break;
        }

        v9 += 4;
        ++v10;
        if (v5 == v6)
        {
          goto LABEL_19;
        }
      }

      sub_1D76A3F68(&v28, v27);
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1D7697200(0, *(v7 + 16) + 1, 1);
        v7 = v32;
      }

      v14 = *(v7 + 16);
      v15 = *(v7 + 24);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v25 = *(v7 + 16);
        v26 = v14 + 1;
        result = sub_1D7697200((v15 > 1), v14 + 1, 1);
        v14 = v25;
        v16 = v26;
        v7 = v32;
      }

      *(v7 + 16) = v16;
      v17 = (v7 + (v14 << 6));
      v18 = v28;
      v19 = v29;
      v20 = v31;
      v17[4] = v30;
      v17[5] = v20;
      v17[2] = v18;
      v17[3] = v19;
    }

    while (v5 - 1 != v10);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v22 = *(v7 + 16);

  v23 = v3[2];
  sub_1D76A3788(v3, v4, 1);
  if (v5)
  {
    v24 = v22 == v23;
  }

  else
  {
    v24 = 0;
  }

  v21 = v24;
LABEL_25:

  return v21;
}

void sub_1D76A2560(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a4;
  v50 = a7;
  v44 = a3;
  v55 = a5;
  v56 = a6;
  v57 = a8;
  v58 = a10;
  v16 = type metadata accessor for AdRequest(255, &v55);
  v17 = sub_1D77046B0();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v46 = v37 - v19;
  v45 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v37 - v20;
  v64[0] = a1;
  v22 = a1;
  sub_1D7679D98();
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (v63 != 1)
  {
    sub_1D76A3788(v61, v62, v63);
LABEL_7:

    *(a9 + 48) = 0u;
    *(a9 + 64) = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *a9 = 0u;
    *(a9 + 80) = 1;
    return;
  }

  v40 = v61;
  v41 = v62;
  v43 = v21;
  v23 = a2;
  v25 = v49;
  v24 = v50;
  v55 = v49;
  v56 = a5;
  v57 = a6;
  v58 = v50;
  v59 = a8;
  v60 = a10;
  v39 = type metadata accessor for BannerAdUpdate(0, &v55);
  v26 = *(v39 + 68);
  v27 = *(v24 + 8);
  v42 = v23;
  v37[1] = v26;
  v38 = v27;
  v27(&v55, v25, v24);
  sub_1D766CEFC(&v57, v52);
  sub_1D766E6D8(&v55);
  if (v53)
  {
    v28 = v45;
    if (v53 != 1)
    {
      v29 = v42;
      v30 = v43;
      v33 = v47;
      v32 = v48;
      v34 = v46;
      sub_1D76A3788(v40, v41, 1);
      if ((v44 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    sub_1D76A3788(v40, v41, 1);
    sub_1D76749B8(v52);
    v29 = v42;
    v30 = v43;
  }

  else
  {
    sub_1D7667CB8(v52, v54);
    sub_1D7667CB8(v54, v52);
    v31 = v40;
    sub_1D76A3828(v52, v40);
    sub_1D76A3788(v31, v41, 1);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v29 = v42;
    v30 = v43;
    v28 = v45;
  }

  v33 = v47;
  v32 = v48;
  v34 = v46;
  if ((v44 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  (*(v33 + 16))(v34, v29 + *(v39 + 72), v32);
  if ((*(v28 + 48))(v34, 1, v16) == 1)
  {
    (*(v33 + 8))(v34, v32);
  }

  else
  {
    v35 = *(v28 + 32);
    v35(v30, v34, v16);
    v38(&v55, v49, v50);
    sub_1D766CEFC(&v57, v52);
    sub_1D766E6D8(&v55);
    if (!v53)
    {
      sub_1D7667CB8(v52, v51);
      sub_1D7667CB8(v51, v54);
      sub_1D7667C54(v54, a9);
      *(a9 + 64) = v16;
      *(a9 + 72) = &protocol witness table for AdRequest<A, B>;
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2((a9 + 40));
      v35(boxed_opaque_existential_2, v30, v16);
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_19;
    }

    if (v53 == 1)
    {
      sub_1D76749B8(v52);
    }

    (*(v28 + 8))(v30, v16);
  }

LABEL_18:
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
LABEL_19:
  *(a9 + 80) = 1;
}

uint64_t BannerAdUpdate.present(with:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v6 = *(a2 + 48);
  v54 = *(a2 + 24);
  v55[0] = v6;
  v7 = type metadata accessor for AdRequest(255, &v54);
  v8 = sub_1D77046B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v35 - v14;
  v16 = *a1;
  v43 = a1[1];
  v44 = v16;
  (*(v9 + 16))(v12, v3 + *(a2 + 72), v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v17 = *(a2 + 40);
    v18 = *(v17 + 8);
    v19 = *(a2 + 16);
  }

  else
  {
    v20 = *(v13 + 32);
    v40 = v15;
    v20(v15, v12, v7);
    v21 = *(a2 + 68);
    v17 = *(a2 + 40);
    v22 = *(v17 + 8);
    v23 = *(a2 + 16);
    v41 = v3;
    v42 = v22;
    v39 = v21;
    v22(&v54, v23, v17);
    sub_1D766CEFC(v55, v51);
    if (v53)
    {
      if (v53 == 1)
      {
        sub_1D766E6D8(&v54);
        sub_1D76749B8(v51);
        v18 = v42;
      }

      else
      {
        v18 = v42;
        sub_1D766E6D8(&v54);
      }

      (*(v13 + 8))(v40, v7);
      v19 = v23;
    }

    else
    {
      sub_1D7667CB8(v51, v47);
      v25 = v49;
      v24 = v50;
      __swift_project_boxed_opaque_existential_1(v47, v49);
      v26 = (*(v24 + 8))(v25, v24);
      v36 = v27;
      v37 = v26;
      sub_1D766E6D8(&v54);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v35[2] = a2;
      v28 = *(a2 + 76);
      v38 = v23;
      v35[1] = *(v41 + v28);
      v42(&v54, v23, v17);
      v30 = *(&v54 + 1);
      v29 = v54;

      sub_1D766E6D8(&v54);
      v51[1] = v43;
      v51[0] = v44;
      v52 = 0;
      v31 = v40;
      Journal.addPresentedEntry(request:placementIdentifier:contentIdentifier:layout:)(v40, v29, v30, v37, v36, v51);

      (*(v13 + 8))(v31, v7);
      v19 = v38;
      v18 = v42;
    }
  }

  v18(v51, v19, v17);
  *&v43 = *(&v51[0] + 1);
  *&v44 = *&v51[0];

  sub_1D766E6D8(v51);
  v18(v47, v19, v17);
  sub_1D766CEFC(&v48, v55);
  sub_1D766E6D8(v47);
  v18(v46, v19, v17);
  v32 = v46[0];
  v33 = v46[1];

  sub_1D766E6D8(v46);
  Journal.createDebugJournal(for:)(v32, v33, v56);

  *(&v55[10] + 8) = v56[5];
  *(&v55[11] + 8) = v56[6];
  *(&v55[12] + 8) = v56[7];
  *(&v55[13] + 8) = v56[8];
  *(&v55[6] + 8) = v56[1];
  *(&v55[7] + 8) = v56[2];
  *(&v55[8] + 8) = v56[3];
  *(&v55[9] + 8) = v56[4];
  *&v54 = v44;
  *(&v54 + 1) = v43;
  *(&v55[5] + 8) = v56[0];
  (*(v17 + 16))(&v54, v19, v17);
  return sub_1D766E6D8(&v54);
}

uint64_t sub_1D76A2F58(uint64_t a1)
{
  v11 = 0;
  v15 = MEMORY[0x1E69E6158];
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = result;
    v4 = *(a1 + 48);
    v8 = *(a1 + 24);
    v9 = v8;
    v7 = v4;
    v10 = v4;
    type metadata accessor for AdRequest(255, &v9);
    result = sub_1D77046B0();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v17 = result;
      v9 = v8;
      v10 = v7;
      result = type metadata accessor for Journal(319, &v9);
      if (v6 <= 0x3F)
      {
        v14 = 0;
        v18 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D76A3038(int *a1, unsigned int a2, void *a3)
{
  v3 = a3[2];
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  if (*(v6 + 84) <= 0x7FFFFFFFu)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = a3[4];
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v5 <= v11 - 1)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = *(v4 + 84);
  }

  v13 = *(v4 + 80);
  v14 = *(*(v3 - 8) + 64);
  v15 = *(v9 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = v15 | v17 | 7;
  v20 = v17 + 23;
  v21 = ((*(*(a3[3] - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  if (v16 >= a2)
  {
    goto LABEL_36;
  }

  v22 = ((v19 + v14 + ((v13 + 16) & ~v13)) & ~v19) + ((*(*(v8 - 8) + 64) + ((v21 + (v20 & ~v18)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v16 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v16 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if ((v12 & 0x80000000) != 0)
  {
    v32 = (a1 + v13 + 16) & ~v13;
    if (v5 == v16)
    {
      v33 = *(v4 + 48);

      return v33(v32, v5, v3);
    }

    else
    {
      if (v11 == 0x7FFFFFFF)
      {
        v34 = *(((v32 + v14 + v19) & ~v19) + 8);
        if (v34 >= 0xFFFFFFFF)
        {
          LODWORD(v34) = -1;
        }

        v35 = v34 + 1;
      }

      else
      {
        v36 = (v20 + ((v32 + v14 + v19) & ~v19)) & ~v18;
        if (v7 >= v10)
        {
          v35 = (*(v6 + 48))(v36);
        }

        else
        {
          v35 = (*(v9 + 48))((v21 + v36) & ~v15, v10, v8);
        }
      }

      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v31 = *(a1 + 1);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }
}

void sub_1D76A3374(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  if (*(v6 + 84) <= 0x7FFFFFFFu)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = a4[4];
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v4 + 80);
  v12 = *(*(a4[2] - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v5 <= v14 - 1)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = *(v4 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v6 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = v13 | v17 | 7;
  v20 = v17 + 23;
  v21 = (v17 + 23) & ~(v17 | 7);
  v22 = ((*(*(a4[3] - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = ((*(*(v8 - 8) + 64) + ((v22 + v13 + v21) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v24 = v23 + ((v19 + v12 + ((v11 + 16) & ~v11)) & ~v19) + 8;
  if (v16 >= a3)
  {
    v26 = 0;
    v27 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v23 + ((v19 + v12 + ((v11 + 16) & ~v11)) & ~v19) == -8)
    {
      v25 = a3 - v16 + 1;
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

    if (v25 < 2)
    {
      v26 = 0;
    }

    v27 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_25:
      if (v26 > 1)
      {
        if (v26 != 2)
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

      else if (v26)
      {
        *(a1 + v24) = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if ((v15 & 0x80000000) != 0)
        {
          v31 = (a1 + v11 + 16) & ~v11;
          if (v5 == v16)
          {
            v32 = *(v4 + 56);

            v32(v31);
          }

          else
          {
            v33 = ((v31 + v12 + v19) & ~v19);
            v34 = a2 - v14;
            if (a2 >= v14)
            {
              if (v23)
              {
                bzero(v33, v23);
                *v33 = v34;
              }
            }

            else if (v14 == 0x7FFFFFFF)
            {
              if (((a2 + 1) & 0x80000000) != 0)
              {
                *v33 = a2 - 0x7FFFFFFF;
                v33[1] = 0;
              }

              else
              {
                v33[1] = a2;
              }
            }

            else
            {
              v35 = ((v33 + v20) & ~v18);
              if (v7 >= v10)
              {
                v39 = a2 - v7;
                if (a2 >= v7)
                {
                  if (v22)
                  {
                    v42 = ((v33 + v20) & ~v18);
                    bzero(v35, v22);
                    *v42 = v39;
                  }
                }

                else
                {
                  v40 = *(v6 + 56);
                  v41 = a2 + 1;

                  v40(v35, v41);
                }
              }

              else
              {
                v36 = *(v9 + 56);
                v37 = (v35 + v22 + v13) & ~v13;
                v38 = a2 + 1;

                v36(v37, v38, v10, v8);
              }
            }
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = a2 - 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  if (v23 + ((v19 + v12 + ((v11 + 16) & ~v11)) & ~v19) == -8)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  if (v24)
  {
    v29 = ~v16 + a2;
    v30 = a1;
    bzero(a1, v24);
    a1 = v30;
    *v30 = v29;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      *(a1 + v24) = v28;
    }

    else
    {
      *(a1 + v24) = v28;
    }
  }

  else if (v26)
  {
    *(a1 + v24) = v28;
  }
}

double sub_1D76A3788(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D76A37B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D76A3F14();
  result = MEMORY[0x1DA6FF2A0](v2, &type metadata for AdPolicyFailureType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D76CC660(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1D76A3828(void *a1, uint64_t a2)
{
  v71 = a1;
  sub_1D769F814(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7703940();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v66 - v15;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v68 = v19;
  v69 = v18;
  v75 = v20;
  if (v16)
  {
    v67 = v12;
    v21 = v6;
    v77 = MEMORY[0x1E69E7CC0];
    sub_1D7697220(0, v16, 0);
    v17 = v77;
    v22 = *(v77 + 16);
    v23 = (a2 + 64);
    do
    {
      v25 = *v23;
      v23 += 64;
      v24 = v25;
      v77 = v17;
      v26 = *(v17 + 24);
      if (v22 >= v26 >> 1)
      {
        sub_1D7697220((v26 > 1), v22 + 1, 1);
        v17 = v77;
      }

      *(v17 + 16) = v22 + 1;
      *(v17 + v22++ + 32) = v24;
      --v16;
    }

    while (v16);
    v6 = v21;
    v12 = v67;
  }

  v27 = sub_1D76A37B4(v17);

  v28 = v27 + 56;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 56);
  v32 = (v29 + 63) >> 6;
  v33 = (v6 + 56);
  v76 = (v6 + 32);
  v34 = v27;

  v35 = 0;
  v72 = MEMORY[0x1E69E7CC0];
  while (v31)
  {
    v36 = v35;
LABEL_15:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = *(*(v34 + 48) + (v37 | (v36 << 6)));
    if ((v38 - 2) >= 3)
    {
      v67 = v12;
      v40 = v74;
      if (v38)
      {
        sub_1D7703920();
      }

      else
      {
        sub_1D7703910();
      }

      (*v33)(v40, 0, 1, v5);
      v41 = v40;
      v42 = *v76;
      (*v76)(v73, v41, v5);
      v43 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1D768C6FC(0, v72[2] + 1, 1, v72);
      }

      v45 = v72[2];
      v44 = v72[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v66 = v45 + 1;
        v50 = sub_1D768C6FC((v44 > 1), v45 + 1, 1, v72);
        v46 = v66;
        v72 = v50;
      }

      v48 = v72;
      v47 = v73;
      v72[2] = v46;
      v49 = v48 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v45;
      v6 = v43;
      v42(v49, v47, v5);
      v35 = v36;
      v12 = v67;
    }

    else
    {
      v39 = v74;
      (*v33)(v74, 1, 1, v5);
      sub_1D76A3EB8(v39);
      v35 = v36;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return;
    }

    if (v36 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v36);
    ++v35;
    if (v31)
    {
      goto LABEL_15;
    }
  }

  v51 = v72;
  v52 = v72[2];
  if (v52)
  {
    sub_1D7703930();
    v53 = v12;
    v55 = v68;
    v54 = v69;
    v57 = *(v6 + 16);
    v56 = v6 + 16;
    v58 = v51 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    v73 = *(v56 + 56);
    v74 = v57;
    v59 = (v56 - 8);
    do
    {
      v60 = v74;
      (v74)(v55, v58, v5);
      sub_1D769F8CC(&unk_1EE0B0838, MEMORY[0x1E69C6078]);
      sub_1D7704380();
      sub_1D769F8CC(&qword_1EE0B0828, MEMORY[0x1E69C6088]);
      sub_1D7704B40();
      v60(v75, v55, v5);
      sub_1D769F8CC(&qword_1EE0B0830, MEMORY[0x1E69C6080]);
      sub_1D77046D0();
      v61 = *v59;
      (*v59)(v55, v5);
      v61(v53, v5);
      v62 = *v76;
      (*v76)(v53, v54, v5);
      v58 = &v73[v58];
      --v52;
    }

    while (v52);

    v63 = v70;
    v62(v70, v53, v5);
    v64 = v71[3];
    v65 = v71[4];
    __swift_project_boxed_opaque_existential_1(v71, v64);
    (*(v65 + 16))(v64, v65);
    sub_1D7703960();
    if (swift_dynamicCastClass())
    {
      sub_1D7703950();
    }

    swift_unknownObjectRelease();
    v61(v63, v5);
  }

  else
  {
  }
}

uint64_t sub_1D76A3EB8(uint64_t a1)
{
  sub_1D769F814(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D76A3F14()
{
  result = qword_1EE0AFAA0;
  if (!qword_1EE0AFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFAA0);
  }

  return result;
}

unint64_t AdManagerError.description.getter()
{
  v1 = 0x6173696420736441;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t AdManagerError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

unint64_t sub_1D76A40C0()
{
  result = qword_1EC9BD420;
  if (!qword_1EC9BD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD420);
  }

  return result;
}

unint64_t sub_1D76A4114()
{
  v1 = 0x6173696420736441;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_1D76A4194()
{
  v0 = sub_1D7703EF0();
  __swift_allocate_value_buffer(v0, qword_1EC9BD428);
  __swift_project_value_buffer(v0, qword_1EC9BD428);
  return sub_1D7703EE0();
}

uint64_t static RadarComponent.newsAds.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC9BCAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7703EF0();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BD428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

NewsAds::AdSegmentScope_optional __swiftcall AdSegmentScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

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

uint64_t AdSegmentScope.rawValue.getter()
{
  if (*v0)
  {
    return 0x63696C627570;
  }

  else
  {
    return 0x65746176697270;
  }
}

uint64_t sub_1D76A44BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x63696C627570;
  }

  else
  {
    v3 = 0x65746176697270;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x63696C627570;
  }

  else
  {
    v5 = 0x65746176697270;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();
  }

  return v8 & 1;
}

unint64_t sub_1D76A4564()
{
  result = qword_1EE0B01B0;
  if (!qword_1EE0B01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B01B0);
  }

  return result;
}

uint64_t sub_1D76A45B8()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76A4638(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76A46A4(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76A4720(char *a2@<X8>)
{
  v3 = sub_1D77048E0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D76A4780(uint64_t *a1@<X8>)
{
  v2 = 0x65746176697270;
  if (*v1)
  {
    v2 = 0x63696C627570;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D76A47C0()
{
  result = qword_1EC9BD440;
  if (!qword_1EC9BD440)
  {
    sub_1D76A4818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD440);
  }

  return result;
}

void sub_1D76A4818()
{
  if (!qword_1EE0AE5D8)
  {
    v0 = sub_1D77044B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AE5D8);
    }
  }
}

uint64_t SectionAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1D76A48DC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D76A496C(uint64_t a1)
{
  v2 = sub_1D76A4B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76A49A8(uint64_t a1)
{
  v2 = sub_1D76A4B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SectionAdData.encode(to:)(void *a1)
{
  sub_1D76A4D08(0, &qword_1EC9BD448, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A4B30();
  sub_1D7704B10();
  sub_1D77049C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D76A4B30()
{
  result = qword_1EC9BD450;
  if (!qword_1EC9BD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD450);
  }

  return result;
}

uint64_t SectionAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76A4D08(0, &qword_1EC9BD458, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A4B30();
  sub_1D7704B00();
  if (!v2)
  {
    v10 = sub_1D7704930();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76A4D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76A4B30();
    v7 = a3(a1, &type metadata for SectionAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D76A4D84(void *a1)
{
  sub_1D76A4D08(0, &qword_1EC9BD448, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A4B30();
  sub_1D7704B10();
  sub_1D77049C0();
  return (*(v4 + 8))(v6, v3);
}

void SectionAdData.init(tag:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_1D7704260();
  v6 = v5;
  swift_unknownObjectRelease();

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1D76A4F38(uint64_t a1)
{
  *(a1 + 8) = sub_1D7692E40();
  result = sub_1D7692308();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76A4F8C()
{
  result = qword_1EC9BD460;
  if (!qword_1EC9BD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD460);
  }

  return result;
}

unint64_t sub_1D76A4FE4()
{
  result = qword_1EC9BD468;
  if (!qword_1EC9BD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD468);
  }

  return result;
}

unint64_t sub_1D76A503C()
{
  result = qword_1EC9BD470;
  if (!qword_1EC9BD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD470);
  }

  return result;
}

uint64_t SponsorshipAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t NativeAdContentInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PPTTodayConfigOverrides.configData.getter()
{
  v1 = *v0;
  sub_1D76A5348(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1D76A5348(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D76A535C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D76A535C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t PPTTodayConfigOverrides.configID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PPTTodayConfigOverrides.init(configData:configID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double sub_1D76A53EC()
{
  result = 0.0;
  xmmword_1EE0AE7F8 = xmmword_1D770BD90;
  qword_1EE0AE808 = 0;
  qword_1EE0AE810 = 0;
  return result;
}

double static PPTTodayConfigOverrides.none.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE0AE7F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EE0AE7F8;
  v2 = qword_1EE0AE810;
  *a1 = xmmword_1EE0AE7F8;
  v3 = *(&xmmword_1EE0AE7F8 + 1);
  *(a1 + 8) = *(&xmmword_1EE0AE7F8 + 8);
  *(a1 + 24) = v2;
  sub_1D76A5348(v1, v3);

  return result;
}

double NoopPPTType.todayConfigOverrides.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE0AE7F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EE0AE7F8;
  v2 = qword_1EE0AE810;
  *a1 = xmmword_1EE0AE7F8;
  v3 = *(&xmmword_1EE0AE7F8 + 1);
  *(a1 + 8) = *(&xmmword_1EE0AE7F8 + 8);
  *(a1 + 24) = v2;
  sub_1D76A5348(v1, v3);

  return result;
}

double sub_1D76A5558@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE0AE7F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EE0AE7F8;
  v2 = qword_1EE0AE810;
  *a1 = xmmword_1EE0AE7F8;
  v3 = *(&xmmword_1EE0AE7F8 + 1);
  *(a1 + 8) = *(&xmmword_1EE0AE7F8 + 8);
  *(a1 + 24) = v2;
  sub_1D76A5348(v1, v3);

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

uint64_t sub_1D76A562C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D76A5688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t InterstitialViewInsertion.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void *InterstitialViewInsertion.interstitialView.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1D76A579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v12 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a9;
  v14 = v12[11];
  v15 = v12[12];
  v16 = v12[13];
  v21 = v12[10];
  v13 = v21;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v17 = type metadata accessor for InterstitialViewInsertion(0, &v21);
  v18 = *(v17 + 60);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = type metadata accessor for AdRequest(0, &v21);
  result = (*(*(v19 - 8) + 32))(a7 + v18, a5, v19);
  *(a7 + *(v17 + 64)) = a6;
  return result;
}

Swift::Void __swiftcall InterstitialViewInsertion.markPresented()()
{
  v2 = v1;
  v3 = *(v0 + 60);
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v2[3];
  ObjectType = swift_getObjectType();
  v13 = v6;
  v9 = (*(v7 + 8))(ObjectType, v7);
  memset(v11, 0, sizeof(v11));
  v12 = 1;
  Journal.addPresentedEntry(request:placementIdentifier:contentIdentifier:layout:)(v2 + v3, v4, v5, v9, v10, v11);
}

Swift::Void __swiftcall InterstitialViewInsertion.missedOpportunity()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_1D76A59C8(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) <= 0x7FFFFFFFu)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v7 + 80);
  if (v8 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v9 & 0xF8 | 7;
  v13 = v10 | v12;
  v14 = (v9 & 0xF8) + 23;
  v15 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v16 = ((v13 + 48) & ~v13) + ((*(*(v6 - 8) + 64) + ((v15 + (v14 & ~v12)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v11 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v11 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v11 & 0x80000000) != 0)
  {
    v26 = (v14 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13)) & ~v12;
    if (v5 >= v8)
    {
      v29 = *(v4 + 48);

      return v29(v26);
    }

    else
    {
      v27 = *(v7 + 48);
      v28 = (v15 + v26) & ~v10;

      return v27(v28, v8, v6);
    }
  }

  else
  {
    v25 = *(a1 + 1);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_1D76A5C1C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  if (*(v4 + 84) <= 0x7FFFFFFFu)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v7 + 80);
  if (v8 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v9 & 0xF8 | 7;
  v13 = (v9 & 0xF8) + 23;
  v14 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = ((*(*(v6 - 8) + 64) + ((v14 + v10 + (v13 & ~v12)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + (((v10 | v12) + 48) & ~(v10 | v12)) + 24;
  if (v11 >= a3)
  {
    v18 = 0;
    v19 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v14 + v10 + (v13 & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) + (((v10 | v12) + 48) & ~(v10 | v12)) == -24)
    {
      v16 = a3 - v11 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v11 & 0x80000000) != 0)
        {
          v23 = ((v13 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (v10 | v12) + 16) & ~(v10 | v12))) & ~v12);
          if (v5 >= v8)
          {
            if (v5 >= a2)
            {
              v28 = *(v4 + 56);

              v28(v23);
            }

            else if (v14)
            {
              v26 = ~v5 + a2;
              v27 = v23;
              bzero(v23, v14);
              *v27 = v26;
            }
          }

          else
          {
            v24 = *(v7 + 56);
            v25 = (v23 + v14 + v10) & ~v10;

            v24(v25);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = a2 - 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v6 - 8) + 64) + ((v14 + v10 + (v13 & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) + (((v10 | v12) + 48) & ~(v10 | v12)) == -24)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(*(v6 - 8) + 64) + ((v14 + v10 + (v13 & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) + (((v10 | v12) + 48) & ~(v10 | v12)) != -24)
  {
    v21 = ~v11 + a2;
    v22 = a1;
    bzero(a1, v15);
    a1 = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

void *BannerAdViewLayoutAttributesFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  return v0;
}

uint64_t BannerAdViewLayoutAttributesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_1D76A5FD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D76A6018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76A6064(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D76A6AD8(0, &qword_1EC9BD498, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A6A28();
  sub_1D7704B10();
  v15 = a2;
  v14 = 0;
  sub_1D76697B0();
  sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D7704A00();
  if (!v3)
  {
    v15 = a3;
    v14 = 1;
    sub_1D76A6A7C();
    sub_1D76A6B3C(&qword_1EC9BD4A0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D7704A00();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D76A6264()
{
  if (*v0)
  {
    return 0x6361745361746164;
  }

  else
  {
    return 1752457584;
  }
}

void sub_1D76A629C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D7704A30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6361745361746164 && a2 == 0xE90000000000006BLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D76A6380(uint64_t a1)
{
  v2 = sub_1D76A6A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76A63BC(uint64_t a1)
{
  v2 = sub_1D76A6A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D76A63F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D76A67C0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1D76A6440()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v59 = MEMORY[0x1E69E7CC0];
  sub_1D7697250(0, v2, 0);
  v4 = 0;
  result = v59;
  v43 = v1;
  v44 = v1 + 32;
  v42 = v2;
  while (v4 < *(v1 + 16))
  {
    v46 = v4 + 1;
    v47 = result;
    v5 = (v44 + 16 * v4);
    v7 = *v5;
    v6 = v5[1];
    v8 = v6 + 64;
    v9 = 1 << *(v6 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v6 + 64);
    v12 = (v9 + 63) >> 6;
    v50 = v6;
    swift_bridgeObjectRetain_n();
    v45 = v7;

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC8];
    v48 = v12;
    v49 = v8;
    while (v11)
    {
LABEL_15:
      v17 = __clz(__rbit64(v11)) | (v13 << 6);
      v18 = (*(v50 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_1D7667C54(*(v50 + 56) + 40 * v17, &v58);
      v57[0] = v20;
      v57[1] = v19;
      sub_1D76A6B9C(v57, v55);
      v22 = v55[0];
      v21 = v55[1];
      sub_1D76A6B9C(v57, &v53);
      sub_1D7667CB8(&v54, &v52);
      sub_1D76A6C00(0);

      v23 = sub_1D77042C0();
      v51 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v14;
      v27 = sub_1D76689AC(v22, v21);
      v28 = v14[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v31 = v26;
      if (v14[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v26)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_1D76E4294();
          if (v31)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_1D76E3324(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_1D76689AC(v22, v21);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_34;
        }

        v27 = v32;
        if (v31)
        {
LABEL_8:

          v14 = v53;
          v15 = (v53[7] + 16 * v27);
          *v15 = v23;
          v15[1] = v51;

          sub_1D76A6CD0(v57);
          goto LABEL_9;
        }
      }

      v14 = v53;
      v53[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v14[6] + 16 * v27);
      *v34 = v22;
      v34[1] = v21;
      v35 = (v14[7] + 16 * v27);
      *v35 = v23;
      v35[1] = v51;
      sub_1D76A6CD0(v57);
      v36 = v14[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_32;
      }

      v14[2] = v38;
LABEL_9:
      v11 &= v11 - 1;
      __swift_destroy_boxed_opaque_existential_1(v56);
      v12 = v48;
      v8 = v49;
    }

    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v16);
      ++v13;
      if (v11)
      {
        v13 = v16;
        goto LABEL_15;
      }
    }

    result = v47;
    v59 = v47;
    v40 = *(v47 + 16);
    v39 = *(v47 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1D7697250((v39 > 1), v40 + 1, 1);
      result = v59;
    }

    *(result + 16) = v40 + 1;
    v41 = result + 16 * v40;
    *(v41 + 32) = v45;
    *(v41 + 40) = v14;
    v4 = v46;
    v1 = v43;
    if (v46 == v42)
    {
      return result;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1D7704A70();
  __break(1u);
  return result;
}

uint64_t sub_1D76A67C0(void *a1)
{
  sub_1D76A6AD8(0, &qword_1EC9BD478, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D76A6A28();
  sub_1D7704B00();
  if (!v1)
  {
    sub_1D76697B0();
    HIBYTE(v10) = 0;
    sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D7704970();
    v8 = v11;
    sub_1D76A6A7C();
    HIBYTE(v10) = 1;
    sub_1D76A6B3C(&qword_1EC9BD490, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D7704970();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1D76A6A28()
{
  result = qword_1EC9BD480;
  if (!qword_1EC9BD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD480);
  }

  return result;
}

void sub_1D76A6A7C()
{
  if (!qword_1EC9BD488)
  {
    v0 = sub_1D77041B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9BD488);
    }
  }
}

void sub_1D76A6AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76A6A28();
    v7 = a3(a1, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D76A6B3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D76A6A7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D76A6B9C(uint64_t a1, uint64_t a2)
{
  sub_1D76A6C00(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D76A6C00(uint64_t a1)
{
  if (!qword_1EC9BD4A8)
  {
    sub_1D76A6C6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BD4A8);
    }
  }
}

unint64_t sub_1D76A6C6C()
{
  result = qword_1EE0AFCD0;
  if (!qword_1EE0AFCD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AFCD0);
  }

  return result;
}

uint64_t sub_1D76A6CD0(uint64_t a1)
{
  sub_1D76A6C00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D76A6D40()
{
  result = qword_1EC9BD4B0;
  if (!qword_1EC9BD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4B0);
  }

  return result;
}

unint64_t sub_1D76A6D98()
{
  result = qword_1EC9BD4B8;
  if (!qword_1EC9BD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4B8);
  }

  return result;
}

unint64_t sub_1D76A6DF0()
{
  result = qword_1EC9BD4C0;
  if (!qword_1EC9BD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4C0);
  }

  return result;
}

uint64_t sub_1D76A6E60(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; i += 4)
    {
      v6 = i[1];
      v19[0] = *i;
      v19[1] = v6;
      v7 = i[3];
      v9 = *i;
      v8 = i[1];
      v19[2] = i[2];
      v19[3] = v7;
      v15 = v9;
      v16 = v8;
      v10 = i[3];
      v17 = i[2];
      v18 = v10;
      sub_1D76A3F68(v19, &v11);
      sub_1D76A7690(&v15, a2);
      if (v2)
      {
        break;
      }

      v11 = v15;
      v12 = v16;
      v13 = v17;
      v14 = v18;
      result = sub_1D76A78F4(&v11);
      if (!--v3)
      {
        return result;
      }
    }

    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    return sub_1D76A78F4(&v11);
  }

  return result;
}

uint64_t JournalEntryStatus.displayName.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 0x64656C696146;
  }

  if (v2 == 1)
  {
    return 0x6564726163736944;
  }

  v4 = v0[2] | v0[3] | v0[1];
  if (v1 == 0x8000000000000000 && v4 == 0)
  {
    return 0x64657461657243;
  }

  if (v1 == 0x8000000000000008 && !v4)
  {
    return 0x656C756465686353;
  }

  if (v1 == 0x8000000000000010 && !v4)
  {
    return 0x656D726177657250;
  }

  if (v1 == 0x8000000000000018 && !v4)
  {
    return 0x6574736575716552;
  }

  if (v1 == 0x8000000000000020 && !v4)
  {
    return 0x656C6C69666C7546;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v1 == 0x8000000000000028;
  }

  if (v6)
  {
    return 0x65746E6573657250;
  }

  else
  {
    return 0x657370616C6C6F43;
  }
}

uint64_t JournalEntryStatus.Info.key.getter()
{
  v1 = *v0;

  return v1;
}

id JournalEntryStatus.Discard.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t JournalEntryStatus.Discard.shortDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D76A7114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 32))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D76A7170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *sub_1D76A71D8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D76A7230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D76A7278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76A72E4(uint64_t *a1, int a2)
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

uint64_t sub_1D76A732C(uint64_t result, int a2, int a3)
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

void sub_1D76A737C(void *a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v4 = a1;
  v5 = a1;
  sub_1D7679D98();
  if (swift_dynamicCast())
  {
    v6 = v27 == 2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    v18 = MEMORY[0x1E69E7CC0];
    v19 = 0xEC00000064656C62;
    v20 = 0x6173696420736441;
    goto LABEL_17;
  }

  v32 = a1;
  v7 = a1;
  if (!swift_dynamicCast())
  {
LABEL_15:

    v27 = a1;
    sub_1D7704850();

    v20 = 0;
    v19 = 0xE000000000000000;
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v8 = v29;
  v9 = v30;
  if (v31 != 1)
  {
    sub_1D76A3788(v29, v30, v31);
    goto LABEL_15;
  }

  sub_1D7704740();

  v27 = 0xD000000000000011;
  v28 = 0x80000001D7716260;
  v10 = *(v29 + 2);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = v30;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D76970EC(0, v10, 0);
    v25 = v29;
    v12 = (v29 + 80);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v16 = *(v26 + 16);
      v15 = *(v26 + 24);

      if (v16 >= v15 >> 1)
      {
        sub_1D76970EC((v15 > 1), v16 + 1, 1);
      }

      *(v26 + 16) = v16 + 1;
      v17 = v26 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 8;
      --v10;
    }

    while (v10);
    v9 = v24;
    v8 = v25;
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1D76784A8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D7669758();
  v21 = sub_1D7704210();
  v23 = v22;

  MEMORY[0x1DA6FF0D0](v21, v23);

  MEMORY[0x1DA6FF0D0](11817, 0xE200000000000000);
  v20 = v27;
  v19 = v28;
  v27 = v11;
  sub_1D76A6E60(v8, &v27);
  sub_1D76A3788(v8, v9, 1);
  v18 = v27;

LABEL_17:
  *a2 = a1;
  a2[1] = v20;
  a2[2] = v19;
  a2[3] = v18;
}

void sub_1D76A7690(void *a1, char **a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[7];
  v8 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D768C764(0, *(v8 + 2) + 1, 1, v8);
    *a2 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1D768C764((v10 > 1), v11 + 1, 1, v8);
    *a2 = v8;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[48 * v11];
  *(v12 + 4) = 0x7963696C6F50;
  *(v12 + 5) = 0xE600000000000000;
  *(v12 + 6) = v6;
  *(v12 + 7) = v5;
  *(v12 + 9) = MEMORY[0x1E69E6158];
  v13 = *a2;
  type metadata accessor for CGPoint(0);
  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v29 = v14;
    v13 = sub_1D768C764((v15 > 1), v16 + 1, 1, v13);
    v14 = v29;
    *a2 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[48 * v16];
  *(v17 + 4) = 0xD000000000000012;
  *(v17 + 5) = 0x80000001D7716280;
  *(v17 + 6) = v3;
  *(v17 + 7) = v4;
  *(v17 + 9) = v14;
  v18 = *(v7 + 16);
  if (v18)
  {
    v19 = *a2;
    v20 = v7 + 32;
    do
    {
      sub_1D76A7948(v20, v32);
      v21 = v32[0];
      v22 = v32[1];
      sub_1D767F844(&v33, v31);
      *&v30 = v21;
      *(&v30 + 1) = v22;

      v23 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v19;
      if ((v23 & 1) == 0)
      {
        v19 = sub_1D768C764(0, *(v19 + 2) + 1, 1, v19);
        *a2 = v19;
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        *a2 = sub_1D768C764((v24 > 1), v25 + 1, 1, v19);
      }

      sub_1D76A79A4(v32);
      v26 = *a2;
      *(v26 + 2) = v25 + 1;
      v27 = &v26[48 * v25];
      v28 = v31[1];
      *(v27 + 3) = v31[0];
      *(v27 + 4) = v28;
      *(v27 + 2) = v30;
      v19 = *a2;
      v20 += 48;
      --v18;
    }

    while (v18);
  }
}

unint64_t sub_1D76A7A1C()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000025;
  }
}

unint64_t sub_1D76A7A5C()
{
  result = qword_1EC9BD4C8;
  if (!qword_1EC9BD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4C8);
  }

  return result;
}

void sub_1D76A7AF8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  v28 = *a2;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7709050;
  v14 = a2[2];
  v13 = a2[3];
  v15 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D7668854();
  v27 = v14;
  *(v12 + 32) = v14;
  *(v12 + 40) = v13;
  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = v9;
  v17 = MEMORY[0x1E69E6530];
  *(v12 + 80) = v10;
  v18 = MEMORY[0x1E69E65A8];
  *(v12 + 136) = v17;
  *(v12 + 144) = v18;
  *(v12 + 112) = a3;
  swift_bridgeObjectRetain_n();

  v19 = sub_1D77045A0();
  sub_1D7703ED0("Queuing ad preview, ad=%{public}@, identifier=%{public}@, count=%d", 66, 2, &dword_1D7662000, v11, v19, v12);

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = v5;
    v20 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      v34 = MEMORY[0x1E69E7CC0];
      sub_1D7697280(0, a3, 0);
      v20 = v34;
      v30 = *(v28 + 104);
      v31 = *(v28 + 88);
      v29 = *(v28 + 120);
      do
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v31;
        *(v21 + 32) = v30;
        *(v21 + 48) = v29;
        *(v21 + 64) = a4;
        *(v21 + 72) = a5;
        v23 = *(v34 + 16);
        v22 = *(v34 + 24);

        if (v23 >= v22 >> 1)
        {
          sub_1D7697280((v22 > 1), v23 + 1, 1);
        }

        *(v34 + 16) = v23 + 1;
        v24 = (v34 + 32 * v23);
        v24[4] = v9;
        v24[5] = v10;
        v24[6] = sub_1D76A8248;
        v24[7] = v21;
        --a3;
      }

      while (a3);
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v26 + 16);
    *(v26 + 16) = 0x8000000000000000;
    sub_1D76CBEEC(v20, v27, v13, isUniquelyReferenced_nonNull_native);

    *(v26 + 16) = v33;
    swift_endAccess();
  }
}

uint64_t sub_1D76A7DB4(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D77046B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-v10];
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D767F844(a1, v19);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, a4);
    (*(v12 + 32))(v14, v11, a4);
    v17 = a2(v14);
    (*(v12 + 8))(v14, a4);
  }

  else
  {
    v16(v11, 1, 1, a4);
    (*(v8 + 8))(v11, v7);
    v17 = 0;
  }

  return v17 & 1;
}

void sub_1D76A7FC8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32 * v5);
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    v8 = v6[3];
    v10 = *v6;
    v11 = *(v6 + 1);
    v12 = v8;

    v9 = a1(&v10);

    if (v3)
    {
      break;
    }

    v5 = v7 - 1;
    v6 -= 4;
  }

  while ((v9 & 1) == 0);
}

uint64_t sub_1D76A808C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D76A8234(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    result = memmove(v9, (v9 + 32), 32 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D76A8128()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76A8194(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = *(a1 + 16);
  v9 = *(v1 + 16);
  v2 = v9;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v8);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_2, v3, v2);
  v6 = v4(v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6 & 1;
}

uint64_t Ad.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t Ad.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Ad.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ChannelAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChannelAdData.primaryAudience.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t sub_1D76A8408()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000011;
  v4 = 0x726F7779654B6461;
  if (v1 != 4)
  {
    v4 = 0x6F67657461436461;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65746968577369;
  if (v1 != 1)
  {
    v5 = 0x417972616D697270;
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

uint64_t sub_1D76A84EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76A90A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76A8514(uint64_t a1)
{
  v2 = sub_1D76A8814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76A8550(uint64_t a1)
{
  v2 = sub_1D76A8814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChannelAdData.encode(to:)(void *a1)
{
  sub_1D76A8C80(0, &qword_1EC9BD4D0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v20 = *(v1 + 16);
  v8 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = v8;
  v9 = *(v1 + 40);
  v16 = *(v1 + 48);
  v17 = v9;
  v15 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A8814();
  v10 = v4;
  sub_1D7704B10();
  LOBYTE(v23) = 0;
  v11 = v21;
  sub_1D77049C0();
  if (!v11)
  {
    v12 = v16;
    v13 = v15;
    LOBYTE(v23) = 1;
    sub_1D77049D0();
    LOBYTE(v23) = 2;
    sub_1D77049C0();
    LOBYTE(v23) = 3;
    sub_1D77049F0();
    v23 = v12;
    v22 = 4;
    sub_1D76697B0();
    sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D7704A00();
    v23 = v13;
    v22 = 5;
    sub_1D7704A00();
  }

  return (*(v5 + 8))(v7, v10);
}

unint64_t sub_1D76A8814()
{
  result = qword_1EC9BD4D8;
  if (!qword_1EC9BD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4D8);
  }

  return result;
}

void ChannelAdData.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D76A8C80(0, &qword_1EC9BD4E0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A8814();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v10 = sub_1D7704930();
    v12 = v11;
    v47 = v10;
    LOBYTE(v36[0]) = 1;
    v13 = sub_1D7704940();
    LOBYTE(v36[0]) = 2;
    v30 = sub_1D7704930();
    v31 = v14;
    LOBYTE(v36[0]) = 3;
    v27 = sub_1D7704960();
    sub_1D76697B0();
    v16 = v15;
    LOBYTE(v32) = 4;
    v17 = sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v29 = v16;
    v28 = v17;
    sub_1D7704970();
    v26 = v36[0];
    v44 = 5;
    sub_1D7704970();
    LODWORD(v29) = v13 & 1;
    (*(v7 + 8))(v9, v6);
    v28 = v45;
    v18 = v47;
    *&v32 = v47;
    *(&v32 + 1) = v12;
    LOBYTE(v33) = v13 & 1;
    *(&v33 + 1) = v46[0];
    DWORD1(v33) = *(v46 + 3);
    v20 = v30;
    v19 = v31;
    *(&v33 + 1) = v30;
    *&v34 = v31;
    v21 = v27;
    v22 = v26;
    *(&v34 + 1) = v27;
    *&v35 = v26;
    *(&v35 + 1) = v45;
    v23 = v32;
    v24 = v33;
    v25 = v35;
    a2[2] = v34;
    a2[3] = v25;
    *a2 = v23;
    a2[1] = v24;
    sub_1D7690E7C(&v32, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36[0] = v18;
    v36[1] = v12;
    v37 = v29;
    *v38 = v46[0];
    *&v38[3] = *(v46 + 3);
    v39 = v20;
    v40 = v19;
    v41 = v21;
    v42 = v22;
    v43 = v28;
    sub_1D76917F0(v36);
  }
}

void sub_1D76A8C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76A8814();
    v7 = a3(a1, &type metadata for ChannelAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void ChannelAdData.init(channel:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v20 = sub_1D7704260();
  v6 = v5;

  v7 = [a1 isWhitelisted];
  v8 = [a1 primaryAudience];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D7704260();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
    v10 = 0x4C4152454E4547;
  }

  v13 = [a1 contentProvider];
  v14 = [a1 iAdKeywords];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D7704400();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = [a1 iAdCategories];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D7704400();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v20;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16;
  *(a2 + 56) = v19;
}

unint64_t sub_1D76A8EA0(uint64_t a1)
{
  *(a1 + 8) = sub_1D7692D44();
  result = sub_1D769220C();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D76A8EE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D76A8F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76A8FA0()
{
  result = qword_1EC9BD4E8;
  if (!qword_1EC9BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4E8);
  }

  return result;
}

unint64_t sub_1D76A8FF8()
{
  result = qword_1EC9BD4F0;
  if (!qword_1EC9BD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4F0);
  }

  return result;
}

unint64_t sub_1D76A9050()
{
  result = qword_1EC9BD4F8;
  if (!qword_1EC9BD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD4F8);
  }

  return result;
}

uint64_t sub_1D76A90A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65746968577369 && a2 == 0xED00006465747369 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xEF65636E65696475 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715480 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

double FeedBannerAdContext.userData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t FeedBannerAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10 = *(v1 + 72);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 104);
  v6 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D768FE24(v9, v8);
}

double FeedBannerAdContext.sectionData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;

  return result;
}

uint64_t FeedBannerAdContext.leadingGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v9 = *(v1 + 160);
  v10 = v2;
  v11 = *(v1 + 192);
  v3 = v11;
  v4 = *(v1 + 144);
  v8[0] = *(v1 + 128);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D7690F3C(v8, v7);
}

uint64_t FeedBannerAdContext.trailingGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  v9 = *(v1 + 232);
  v10 = v3;
  v11 = *(v1 + 264);
  v4 = v11;
  v8[0] = *(v1 + 200);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1D7690F3C(v8, v7);
}

void FeedBannerAdContext.init(provider:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v7 = v28;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    AdContextDataProviding.data<A>(for:)(&type metadata for CreativeAdData, v10, &type metadata for CreativeAdData, v11);
    v75 = v28;
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    AdContextDataProviding.data<A>(for:)(&type metadata for FeedAdData, v12, &type metadata for FeedAdData, v13);
    v26 = v28;
    *(&v74[2] + 7) = v60;
    *(&v74[3] + 7) = v61;
    *(&v74[4] + 7) = v62;
    *(&v74[5] + 7) = v63;
    *(v74 + 7) = v58;
    *(&v74[1] + 7) = v59;
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v14, &type metadata for SectionAdData, v15);
    v24 = v28;
    v25 = v29;
    v17 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v54[1] = 0;
    v54[0] = 0;
    v55 = 0;
    (*(v16 + 8))(v56, &type metadata for FeedGroupAdData, v54, &type metadata for FeedGroupAdData, v17, v16);
    v18 = v75;
    v71 = v56[2];
    v72 = v56[3];
    v73 = v57;
    v69 = v56[0];
    v70 = v56[1];
    v20 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v50 = xmmword_1D770C6E0;
    v51 = 0;
    (*(v19 + 8))(v52, &type metadata for FeedGroupAdData, &v50, &type metadata for FeedGroupAdData, v20, v19);
    v66 = v52[2];
    v67 = v52[3];
    v68 = v53;
    v64 = v52[0];
    v65 = v52[1];
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v21, &type metadata for ReferralAdData, v22);
    *&__src[49] = v74[2];
    *&__src[65] = v74[3];
    *&__src[81] = v74[4];
    *&__src[96] = *(&v74[4] + 15);
    *&__src[17] = v74[0];
    *&__src[33] = v74[1];
    *&__src[160] = v71;
    *&__src[176] = v72;
    *&__src[144] = v70;
    *&__src[128] = v69;
    *&__src[216] = v65;
    *&__src[232] = v66;
    *&__src[248] = v67;
    v23 = v49;
    __src[0] = v28;
    *&__src[8] = v18;
    __src[16] = v28;
    *&__src[112] = v28;
    *&__src[120] = v29;
    *&__src[192] = v73;
    *&__src[264] = v68;
    *&__src[200] = v64;
    __src[272] = v49;
    memcpy(a2, __src, 0x111uLL);
    sub_1D76A99D0(__src, &v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33 = v74[2];
    v34 = v74[3];
    *v35 = v74[4];
    *&v35[15] = *(&v74[4] + 15);
    v31 = v74[0];
    v32 = v74[1];
    v40 = v71;
    v41 = v72;
    v38 = v69;
    v39 = v70;
    v44 = v65;
    v45 = v66;
    v46 = v67;
    LOBYTE(v28) = v7;
    v29 = v18;
    v30 = v26;
    v36 = v24;
    v37 = v25;
    v42 = v73;
    v47 = v68;
    v43 = v64;
    v48 = v23;
    sub_1D76A9A08(&v28);
  }
}

unint64_t sub_1D76A9A38()
{
  v1 = *v0;
  v2 = 0x61746144707061;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x6C61727265666572;
  }

  v4 = 0x446E6F6974636573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6576697461657263;
  if (v1 != 2)
  {
    v5 = 0x6174614464656566;
  }

  if (*v0)
  {
    v2 = 0x6174614472657375;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D76A9B54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76ABE60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76A9B7C(uint64_t a1)
{
  v2 = sub_1D76AA134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76A9BB8(uint64_t a1)
{
  v2 = sub_1D76AA134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedBannerAdContext.encode(to:)(void *a1)
{
  sub_1D76AA96C(0, &qword_1EC9BD500, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v24 = *(v1 + 1);
  v23 = v1[16];
  v9 = *(v1 + 72);
  v54 = *(v1 + 56);
  v55 = v9;
  v56 = *(v1 + 88);
  v10 = *(v1 + 14);
  v57 = *(v1 + 13);
  v11 = *(v1 + 40);
  v52 = *(v1 + 24);
  v53 = v11;
  v21 = *(v1 + 15);
  v22 = v10;
  v12 = *(v1 + 11);
  v60 = *(v1 + 10);
  v61 = v12;
  v62 = *(v1 + 24);
  v13 = *(v1 + 9);
  v58 = *(v1 + 8);
  v59 = v13;
  v14 = *(v1 + 216);
  v15 = *(v1 + 248);
  v65 = *(v1 + 232);
  v66 = v15;
  v67 = *(v1 + 33);
  v63 = *(v1 + 200);
  v64 = v14;
  HIDWORD(v20) = v1[272];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76AA134();
  sub_1D7704B10();
  LOBYTE(v46) = v8;
  LOBYTE(v43[0]) = 0;
  sub_1D7669D40();
  v16 = v68;
  sub_1D7704A00();
  if (!v16)
  {
    v17 = v23;
    v18 = v22;
    *&v46 = v24;
    LOBYTE(v43[0]) = 1;
    sub_1D7669394();

    sub_1D7704A00();

    LOBYTE(v46) = v17;
    LOBYTE(v43[0]) = 2;
    sub_1D76AA188();
    sub_1D7704A00();
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v46 = v52;
    v47 = v53;
    v45 = 3;
    sub_1D768FE24(&v52, v43);
    sub_1D766CFCC();
    sub_1D7704A00();
    v43[2] = v48;
    v43[3] = v49;
    v43[4] = v50;
    v44 = v51;
    v43[0] = v46;
    v43[1] = v47;
    sub_1D768FE5C(v43);
    *&v38 = v18;
    *(&v38 + 1) = v21;
    LOBYTE(v35[0]) = 4;
    sub_1D7692308();

    sub_1D77049B0();

    v40 = v60;
    v41 = v61;
    v42 = v62;
    v38 = v58;
    v39 = v59;
    v37 = 5;
    sub_1D7690F3C(&v58, v35);
    sub_1D7692260();
    sub_1D7704A00();
    v35[2] = v40;
    v35[3] = v41;
    v36 = v42;
    v35[0] = v38;
    v35[1] = v39;
    sub_1D769179C(v35);
    v33 = v66;
    v34 = v67;
    v31 = v64;
    v32 = v65;
    v30 = v63;
    v29 = 6;
    sub_1D7690F3C(&v63, v27);
    sub_1D7704A00();
    v27[2] = v32;
    v27[3] = v33;
    v28 = v34;
    v27[0] = v30;
    v27[1] = v31;
    sub_1D769179C(v27);
    v26 = BYTE4(v20);
    v25 = 7;
    sub_1D768A434();
    sub_1D77049B0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76AA134()
{
  result = qword_1EC9BD508;
  if (!qword_1EC9BD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD508);
  }

  return result;
}

unint64_t sub_1D76AA188()
{
  result = qword_1EE0B0128[0];
  if (!qword_1EE0B0128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B0128);
  }

  return result;
}

void FeedBannerAdContext.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76AA96C(0, &qword_1EC9BD510, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D76AA134();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    v11 = v7;
    v12 = a2;
    v25[0] = 0;
    sub_1D7669CEC();
    v13 = v6;
    sub_1D7704970();
    v14 = v26;
    v25[0] = 1;
    sub_1D76684E8();
    sub_1D7704970();
    v24 = v26;
    v25[0] = 2;
    sub_1D76AA9D0();
    sub_1D7704970();
    v15 = v26;
    v61 = 3;
    sub_1D766CDD0();
    sub_1D7704970();
    v23 = v15;
    *&v78[39] = v64;
    *&v78[55] = v65;
    *&v78[71] = v66;
    *&v78[87] = v67;
    *&v78[7] = v62;
    *&v78[23] = v63;
    v25[0] = 4;
    sub_1D7692E40();
    sub_1D7704920();
    v16 = v26;
    v22 = v27;
    v55 = 5;
    v21 = sub_1D7692D98();
    sub_1D7704970();
    v20 = v16;
    v75 = v58;
    v76 = v59;
    v77 = v60;
    v73 = v56;
    v74 = v57;
    v49 = 6;
    sub_1D7704970();
    v70 = v52;
    v71 = v53;
    v72 = v54;
    v68 = v50;
    v69 = v51;
    v47 = 7;
    sub_1D768AAE4();
    sub_1D7704920();
    (*(v11 + 8))(v9, v13);
    *&v25[49] = *&v78[32];
    *&v25[65] = *&v78[48];
    *&v25[81] = *&v78[64];
    *&v25[96] = *&v78[79];
    *&v25[17] = *v78;
    *&v25[33] = *&v78[16];
    *&v25[160] = v75;
    *&v25[176] = v76;
    *&v25[144] = v74;
    *&v25[128] = v73;
    *&v25[248] = v71;
    *&v25[232] = v70;
    *&v25[216] = v69;
    LODWORD(v21) = v48;
    v25[0] = v14;
    *&v25[1] = v79[0];
    *&v25[4] = *(v79 + 3);
    v17 = v24;
    *&v25[8] = v24;
    LOBYTE(v16) = v23;
    v25[16] = v23;
    v18 = v20;
    v19 = v22;
    *&v25[112] = v20;
    *&v25[120] = v22;
    *&v25[192] = v77;
    *&v25[264] = v72;
    *&v25[200] = v68;
    v25[272] = v48;
    memcpy(v12, v25, 0x111uLL);
    sub_1D76A99D0(v25, &v26);
    __swift_destroy_boxed_opaque_existential_1(v80);
    v31 = *&v78[32];
    v32 = *&v78[48];
    *v33 = *&v78[64];
    *&v33[15] = *&v78[79];
    v29 = *v78;
    v30 = *&v78[16];
    v38 = v75;
    v39 = v76;
    v36 = v73;
    v37 = v74;
    v44 = v71;
    v43 = v70;
    v42 = v69;
    LOBYTE(v26) = v14;
    *(&v26 + 1) = v79[0];
    HIDWORD(v26) = *(v79 + 3);
    v27 = v17;
    v28 = v16;
    v34 = v18;
    v35 = v19;
    v40 = v77;
    v45 = v72;
    v41 = v68;
    v46 = v21;
    sub_1D76A9A08(&v26);
  }
}

void sub_1D76AA96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76AA134();
    v7 = a3(a1, &type metadata for FeedBannerAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76AA9D0()
{
  result = qword_1EE0B0120;
  if (!qword_1EE0B0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0120);
  }

  return result;
}

id FeedBannerAdContext.newsSupplementalContext.getter()
{
  v1 = *(v0 + 72);
  v22 = *(v0 + 56);
  v23 = v1;
  v24 = *(v0 + 88);
  v25 = *(v0 + 104);
  v2 = *(v0 + 40);
  v20 = *(v0 + 24);
  v21 = v2;
  v9 = *(v0 + 168);
  v8 = *(v0 + 120);
  v10 = *(v0 + 240);
  v11 = *(v0 + 272);
  v7 = objc_allocWithZone(sub_1D7703D00());

  v3 = [v7 init];
  sub_1D7703CF0();
  sub_1D7703B50();

  sub_1D7703C00();

  sub_1D7703AE0();
  v4 = *(v0 + 72);
  v14 = *(v0 + 56);
  v15 = v4;
  v16 = *(v0 + 88);
  v17 = *(v0 + 104);
  v5 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = v5;
  sub_1D768FE24(&v20, v18);
  sub_1D768FE24(&v20, v18);
  sub_1D768078C(&v12);
  v18[2] = v14;
  v18[3] = v15;
  v18[4] = v16;
  v19 = v17;
  v18[0] = v12;
  v18[1] = v13;
  sub_1D7680928(v18);
  if (v8)
  {
    if ((BYTE8(v21) & 1) != 0 || v21 >= 1)
    {
    }

    sub_1D7703C10();
  }

  sub_1D768FE5C(&v20);

  sub_1D7703A60();

  sub_1D77039F0();

  sub_1D77039D0();

  sub_1D7703A00();

  sub_1D7703A30();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D7703AA0();

  sub_1D7703A70();

  sub_1D7703A10();

  sub_1D77039E0();

  sub_1D7703A20();

  sub_1D7703A40();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D7703AB0();

  if (v11 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  return v3;
}

uint64_t FeedBannerAdContext.previousPromotableContentDepiction.getter()
{
  v14 = sub_1D7702FD0();
  v1 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7702FA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 8);
  v9 = *(v0 + 160);
  sub_1D7702F90();
  v10 = sub_1D7702F70();
  v13[1] = v11;
  v13[2] = v10;
  (*(v5 + 8))(v7, v4);
  if (*(v9 + 16) || *(v8 + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v1 + 8))(v3, v14);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t FeedBannerAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = v0[3];
  if (!v0[12] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v4, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t FeedBannerAdContext.nextPromotableContentDepiction.getter()
{
  v14 = sub_1D7702FD0();
  v1 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7702FA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 8);
  v9 = *(v0 + 232);
  sub_1D7702F90();
  v10 = sub_1D7702F70();
  v13[1] = v11;
  v13[2] = v10;
  (*(v5 + 8))(v7, v4);
  if (*(v9 + 16) || *(v8 + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v1 + 8))(v3, v14);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t FeedBannerAdContext.additionalPromotableContentDepictions.getter()
{
  v46 = sub_1D7702FD0();
  v1 = *(v46 - 8);
  v2 = MEMORY[0x1EEE9AC00](v46);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v33 - v4;
  v45 = sub_1D7702FA0();
  v5 = *(v45 - 8);
  v6 = MEMORY[0x1EEE9AC00](v45);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = (&v33 - v8);
  v9 = v0[1];
  v10 = v0[24];
  v11 = v0[33];
  v12 = *(v10 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v44 = v9;
  if (v12)
  {
    v34 = v11;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D77047F0();
    v39 = sub_1D7703780();
    v14 = (v10 + 32);
    v35 = v5;
    v38 = (v5 + 8);
    v36 = v1;
    v37 = (v1 + 8);
    for (i = v12 - 1; ; --i)
    {
      v16 = *v14;
      v17 = v14[1];
      v18 = v14[2];
      *&v50[9] = *(v14 + 41);
      v49 = v17;
      *v50 = v18;
      v48 = v16;
      sub_1D76ABB5C(&v48, v47);

      v19 = v40;
      sub_1D7702F90();
      sub_1D7702F70();
      (*v38)(v19, v45);
      if (*&v50[8] || *(v9 + 16))
      {
      }

      else
      {
      }

      v20 = v41;
      sub_1D7702FC0();
      sub_1D7702FB0();
      (*v37)(v20, v46);

      sub_1D7703770();
      sub_1D76ABBB8(&v48);
      sub_1D77047C0();
      sub_1D7704800();
      sub_1D7704810();
      sub_1D77047D0();
      if (!i)
      {
        break;
      }

      v14 += 4;
      v9 = v44;
    }

    v13 = v51;
    v9 = v44;
    v1 = v36;
    v5 = v35;
    v11 = v34;
  }

  v21 = *(v11 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v38 = v13;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D77047F0();
    v41 = sub_1D7703780();
    v23 = (v11 + 32);
    v40 = (v5 + 8);
    v39 = (v1 + 8);
    for (j = v21 - 1; ; --j)
    {
      v25 = *v23;
      v26 = v23[1];
      v27 = v23[2];
      *&v50[9] = *(v23 + 41);
      v49 = v26;
      *v50 = v27;
      v48 = v25;

      sub_1D76ABB5C(&v48, v47);
      v28 = v42;
      sub_1D7702F90();
      sub_1D7702F70();
      (*v40)(v28, v45);
      if (*&v50[8] || *(v9 + 16))
      {
      }

      else
      {
      }

      v29 = v43;
      sub_1D7702FC0();
      sub_1D7702FB0();
      (*v39)(v29, v46);

      sub_1D7703770();
      sub_1D76ABBB8(&v48);
      sub_1D77047C0();
      sub_1D7704800();
      sub_1D7704810();
      sub_1D77047D0();
      if (!j)
      {
        break;
      }

      v23 += 4;
      v9 = v44;
    }

    v22 = v51;
    v13 = v38;
  }

  *&v48 = v13;
  sub_1D768AF40(v22);
  v30 = v48;
  if (v48 >> 62)
  {
    sub_1D76ABC0C();

    v31 = sub_1D7704870();
  }

  else
  {

    sub_1D7704A40();
    sub_1D76ABC0C();
    v31 = v30;
  }

  return v31;
}

unint64_t sub_1D76ABC0C()
{
  result = qword_1EC9BD518;
  if (!qword_1EC9BD518)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9BD518);
  }

  return result;
}

uint64_t sub_1D76ABC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
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

uint64_t sub_1D76ABCC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76ABD5C()
{
  result = qword_1EC9BD520;
  if (!qword_1EC9BD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD520);
  }

  return result;
}

unint64_t sub_1D76ABDB4()
{
  result = qword_1EC9BD528;
  if (!qword_1EC9BD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD528);
  }

  return result;
}

unint64_t sub_1D76ABE0C()
{
  result = qword_1EC9BD530;
  if (!qword_1EC9BD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD530);
  }

  return result;
}

uint64_t sub_1D76ABE60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697461657263 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7716420 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7716440 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

NewsAds::DebugAdCollapseBehavior_optional __swiftcall DebugAdCollapseBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugAdCollapseBehavior.rawValue.getter()
{
  v1 = 0x74736E497261656ELL;
  if (*v0 != 1)
  {
    v1 = 0x646579616C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_1D76AC1C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74736E497261656ELL;
  v4 = 0xEB00000000746E61;
  if (v2 != 1)
  {
    v3 = 0x646579616C6564;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x726576656ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x74736E497261656ELL;
  v8 = 0xEB00000000746E61;
  if (*a2 != 1)
  {
    v7 = 0x646579616C6564;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x726576656ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

unint64_t sub_1D76AC2D4()
{
  result = qword_1EE0AF6E8;
  if (!qword_1EE0AF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF6E8);
  }

  return result;
}

uint64_t sub_1D76AC328()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76AC3D0(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76AC464(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76AC514(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000746E61;
  v5 = 0x74736E497261656ELL;
  if (v2 != 1)
  {
    v5 = 0x646579616C6564;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726576656ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D76AC578(uint64_t a1)
{
  v2 = sub_1D76AC68C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76AC5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76AC68C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76AC628(uint64_t a1)
{
  v2 = sub_1D76AC68C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D76AC68C()
{
  result = qword_1EE0AF6E0;
  if (!qword_1EE0AF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF6E0);
  }

  return result;
}

uint64_t RecipeAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeAdData.language.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D76AC75C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x726F7779654B6461;
  v4 = 0x6F67657461436461;
  if (v1 != 3)
  {
    v4 = 0x65676175676E616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F69746365536461;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D76AC804@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76AD424(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76AC838(uint64_t a1)
{
  v2 = sub_1D76ACB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76AC874(uint64_t a1)
{
  v2 = sub_1D76ACB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecipeAdData.encode(to:)(void *a1)
{
  sub_1D76ACF74(0, &qword_1EC9BD538, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = v1[2];
  v16 = v1[3];
  v17 = v8;
  v9 = v1[4];
  v14[1] = v1[5];
  v14[2] = v1[6];
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76ACB28();
  sub_1D7704B10();
  LOBYTE(v20) = 0;
  v10 = v18;
  sub_1D77049C0();
  if (!v10)
  {
    v12 = v15;
    v11 = v16;
    v20 = v17;
    v19 = 1;
    sub_1D76697B0();
    sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D7704A00();
    v20 = v11;
    v19 = 2;
    sub_1D7704A00();
    v20 = v12;
    v19 = 3;
    sub_1D7704A00();
    LOBYTE(v20) = 4;
    sub_1D77049A0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76ACB28()
{
  result = qword_1EC9BD540;
  if (!qword_1EC9BD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD540);
  }

  return result;
}

void RecipeAdData.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76ACF74(0, &qword_1EC9BD548, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76ACB28();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v25) = 0;
    v22 = sub_1D7704930();
    v23 = v10;
    sub_1D76697B0();
    v24 = 1;
    sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D7704970();
    v20 = 0;
    v21 = v25;
    v24 = 2;
    sub_1D7704970();
    v19 = v25;
    v24 = 3;
    sub_1D7704970();
    v18 = v25;
    LOBYTE(v25) = 4;
    v11 = sub_1D7704910();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v14 = v23;
    *a2 = v22;
    a2[1] = v14;
    v16 = v18;
    v15 = v19;
    a2[2] = v21;
    a2[3] = v15;
    a2[4] = v16;
    a2[5] = v11;
    a2[6] = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D76ACF74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76ACB28();
    v7 = a3(a1, &type metadata for RecipeAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void RecipeAdData.init(recipe:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D7704260();
  v7 = v6;

  v8 = [a1 iAdSectionIDs];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D7704400();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = [a1 iAdKeywords];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D7704400();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = [a1 iAdCategories];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D7704400();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = [a1 language];
  v18 = sub_1D7704260();
  v20 = v19;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v13;
  a2[4] = v16;
  a2[5] = v18;
  a2[6] = v20;
}

unint64_t sub_1D76AD174(uint64_t a1)
{
  *(a1 + 8) = sub_1D76AD1A4();
  result = sub_1D76AD1F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76AD1A4()
{
  result = qword_1EC9BD550;
  if (!qword_1EC9BD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD550);
  }

  return result;
}

unint64_t sub_1D76AD1F8()
{
  result = qword_1EC9BD558;
  if (!qword_1EC9BD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD558);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D76AD268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D76AD2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76AD320()
{
  result = qword_1EC9BD560;
  if (!qword_1EC9BD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD560);
  }

  return result;
}

unint64_t sub_1D76AD378()
{
  result = qword_1EC9BD568;
  if (!qword_1EC9BD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD568);
  }

  return result;
}

unint64_t sub_1D76AD3D0()
{
  result = qword_1EC9BD570;
  if (!qword_1EC9BD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD570);
  }

  return result;
}

uint64_t sub_1D76AD424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746365536461 && a2 == 0xEA0000000000736ELL || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t RecipeBannerAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeBannerAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeBannerAdPlacement(0) + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeBannerAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeBannerAdPlacement(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t RecipeBannerAdPlacement.init(placementIdentifier:boundingSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for RecipeBannerAdPlacement(0);
  v11 = a3 + v10[5];
  sub_1D7675210(0);
  v13 = *(v12 + 48);
  *v11 = 1;
  v14 = *MEMORY[0x1E69C5F08];
  v15 = sub_1D7703810();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  v16 = *MEMORY[0x1E69C6028];
  v17 = sub_1D77038B0();
  result = (*(*(v17 - 8) + 104))(v11, v16, v17);
  *(a3 + v10[7]) = 0;
  *a3 = a1;
  a3[1] = a2;
  v19 = (a3 + v10[6]);
  *v19 = a4;
  v19[1] = a5;
  return result;
}

NewsAds::AdHostDescription __swiftcall AdHostDescription.init(name:identifier:)(Swift::String name, Swift::String_optional identifier)
{
  v2->value = name;
  v2[1] = identifier;
  result.identifier = identifier;
  result.name = name;
  return result;
}

uint64_t AdHostDescription.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](v3, v2);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    return v5;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1D76AD908()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](v3, v2);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    return v5;
  }

  else
  {
  }

  return v1;
}

uint64_t (*sub_1D76ADA90(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6FF530](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D76ADB10;
  }

  __break(1u);
  return result;
}

void (*sub_1D76ADB18(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6FF530](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D76ADB98;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D76ADBA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D76AE104(0);
    v3 = sub_1D77048B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D76AE174(v4, &v11, sub_1D7699494);
      v5 = v11;
      result = sub_1D76B8710(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D766B74C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D76ADCB0()
{
  result = qword_1EC9BD578;
  if (!qword_1EC9BD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD578);
  }

  return result;
}

unint64_t sub_1D76ADD58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D766BB6C(0, &qword_1EE0AE5B0, &type metadata for AdSegmentManager.ProviderContainer);
    v3 = sub_1D77048B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D76AE2B0(v4, &v17, &qword_1EC9BD580, &type metadata for AdSegmentManager.ProviderContainer);
      v5 = v17;
      v6 = v18;
      result = sub_1D76689AC(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 72 * result;
      *v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v10 + 64) = v23;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 88;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D76ADEA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D76ADF8C(0);
    v3 = sub_1D77048B0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1D76B88A4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D76ADF8C(uint64_t a1)
{
  if (!qword_1EE0AECD0)
  {
    sub_1D76AE078(255, &qword_1EE0B0870, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69D6AA8]);
    sub_1D76AE024();
    v1 = sub_1D77048C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AECD0);
    }
  }
}

unint64_t sub_1D76AE024()
{
  result = qword_1EE0B01B8[0];
  if (!qword_1EE0B01B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B01B8);
  }

  return result;
}

void sub_1D76AE078(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D7668958(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D76AE104(uint64_t a1)
{
  if (!qword_1EC9BD598)
  {
    type metadata accessor for Key(255);
    sub_1D76995E8();
    v1 = sub_1D77048C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9BD598);
    }
  }
}

uint64_t sub_1D76AE174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D76AE1DC(uint64_t a1)
{
  if (!qword_1EE0AECC0)
  {
    sub_1D76AE244();
    v1 = sub_1D77048C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AECC0);
    }
  }
}

unint64_t sub_1D76AE244()
{
  result = qword_1EE0AFDA8[0];
  if (!qword_1EE0AFDA8[0])
  {
    sub_1D76673E4();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0AFDA8);
  }

  return result;
}

uint64_t sub_1D76AE2B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D76AE31C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D76AE31C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D76AE374(uint64_t a1)
{
  if (!qword_1EE0AECC8)
  {
    sub_1D76AE3E0(255);
    sub_1D76AE438();
    v1 = sub_1D77048C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AECC8);
    }
  }
}

void sub_1D76AE3E0(uint64_t a1)
{
  if (!qword_1EE0AED50)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1D77044B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AED50);
    }
  }
}

unint64_t sub_1D76AE438()
{
  result = qword_1EE0AFAB0;
  if (!qword_1EE0AFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFAB0);
  }

  return result;
}

void sub_1D76AE48C(uint64_t a1)
{
  if (!qword_1EC9BD5A8)
  {
    sub_1D7665328(255, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BD5A8);
    }
  }
}

uint64_t SponsorshipAdImpressionInfo.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsorshipAdImpressionInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsorshipAdImpressionInfo(0) + 32);
  v4 = sub_1D7702F50();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SponsorshipAdImpressionInfo(uint64_t a1)
{
  result = qword_1EC9BD5B0;
  if (!qword_1EC9BD5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D76AE668(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1D7702F50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t storeEnumTagSinglePayload for AdErrors(uint64_t result, int a2, int a3)
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

uint64_t sub_1D76AE760(uint64_t a1)
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

uint64_t sub_1D76AE77C(uint64_t result, int a2)
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

NewsAds::AdInsertionType_optional __swiftcall AdInsertionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

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

uint64_t AdInsertionType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61756E616DLL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1D76AE84C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61756E616DLL;
  }

  else
  {
    v3 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v4 = 0xE900000000000063;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61756E616DLL;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();
  }

  return v8 & 1;
}

unint64_t sub_1D76AE8F8()
{
  result = qword_1EC9BD5C0;
  if (!qword_1EC9BD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD5C0);
  }

  return result;
}

uint64_t sub_1D76AE94C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D76AE9D0(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76AEA40(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76AEAC0(char *a2@<X8>)
{
  v3 = sub_1D77048E0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D76AEB20(uint64_t *a1@<X8>)
{
  v2 = 0x6974616D6F747561;
  if (*v1)
  {
    v2 = 0x6C61756E616DLL;
  }

  v3 = 0xE900000000000063;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t IssueAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D76AEBB0()
{
  v1 = 0x74666172447369;
  if (*v0 != 1)
  {
    v1 = 0x6E65727275437369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D76AEC14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76AF3FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76AEC48(uint64_t a1)
{
  v2 = sub_1D76AEE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76AEC84(uint64_t a1)
{
  v2 = sub_1D76AEE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IssueAdData.encode(to:)(void *a1)
{
  sub_1D76AF0E4(0, &qword_1EC9BD5C8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v12 = *(v1 + 16);
  v10[1] = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76AEE6C();
  sub_1D7704B10();
  v15 = 0;
  v8 = v11;
  sub_1D77049C0();
  if (!v8)
  {
    v14 = 1;
    sub_1D77049D0();
    v13 = 2;
    sub_1D77049D0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76AEE6C()
{
  result = qword_1EC9BD5D0;
  if (!qword_1EC9BD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD5D0);
  }

  return result;
}

void IssueAdData.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D76AF0E4(0, &qword_1EC9BD5D8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76AEE6C();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = 0;
    v10 = sub_1D7704930();
    v12 = v11;
    v13 = v10;
    v19 = 1;
    v17 = sub_1D7704940() & 1;
    v18 = 2;
    v14 = sub_1D7704940();
    (*(v7 + 8))(v9, v6);
    v15 = v17;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 17) = v14 & 1;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D76AF0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76AEE6C();
    v7 = a3(a1, &type metadata for IssueAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void IssueAdData.init(issue:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D7704260();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = [a1 isDraft];
  LOBYTE(v4) = [a1 isCurrent];

  *(a2 + 17) = v4;
}

unint64_t sub_1D76AF208(uint64_t a1)
{
  *(a1 + 8) = sub_1D7692DEC();
  result = sub_1D76922B4();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D76AF24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D76AF294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76AF2F8()
{
  result = qword_1EC9BD5E0;
  if (!qword_1EC9BD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD5E0);
  }

  return result;
}

unint64_t sub_1D76AF350()
{
  result = qword_1EC9BD5E8;
  if (!qword_1EC9BD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD5E8);
  }

  return result;
}

unint64_t sub_1D76AF3A8()
{
  result = qword_1EC9BD5F0;
  if (!qword_1EC9BD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD5F0);
  }

  return result;
}

uint64_t sub_1D76AF3FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74666172447369 && a2 == 0xE700000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

NewsAds::PlacementAdData::PlacementType_optional __swiftcall PlacementAdData.PlacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlacementAdData.PlacementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x416E656577746562;
  v3 = 0x416E496F65646976;
  if (v1 != 5)
  {
    v3 = 0x466E496F65646976;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x6E4965766974616ELL;
  }

  v4 = 0x6C63697472416E69;
  if (v1 != 1)
  {
    v4 = 0x646565466E69;
  }

  if (*v0)
  {
    v2 = v4;
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

double sub_1D76AF6A4(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

void sub_1D76AF7EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x416E656577746562;
  v4 = 0x416E496F65646976;
  v5 = 0xEB00000000646565;
  if (v2 == 5)
  {
    v5 = 0xEE00656C63697472;
  }

  else
  {
    v4 = 0x466E496F65646976;
  }

  v6 = 0xEF656C6369747241;
  if (v2 != 3)
  {
    v6 = 0xEC00000064656546;
  }

  if (*v1 <= 4u)
  {
    v4 = 0x6E4965766974616ELL;
    v5 = v6;
  }

  v7 = 0xE900000000000065;
  v8 = 0x6C63697472416E69;
  if (v2 != 1)
  {
    v8 = 0x646565466E69;
    v7 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0xEE00656C63697472;
  }

  if (*v1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  *a1 = v9;
  a1[1] = v10;
}

void sub_1D76AF9D0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006570795474)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D76AFA60(uint64_t a1)
{
  v2 = sub_1D76AFC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76AFA9C(uint64_t a1)
{
  v2 = sub_1D76AFC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlacementAdData.encode(to:)(void *a1)
{
  sub_1D76AFE74(0, &qword_1EC9BD5F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76AFC34();
  sub_1D7704B10();
  v11 = v8;
  sub_1D76AFC88();
  sub_1D7704A00();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76AFC34()
{
  result = qword_1EC9BD600;
  if (!qword_1EC9BD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD600);
  }

  return result;
}

unint64_t sub_1D76AFC88()
{
  result = qword_1EC9BD608;
  if (!qword_1EC9BD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD608);
  }

  return result;
}

uint64_t PlacementAdData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D76AFE74(0, &qword_1EC9BD610, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76AFC34();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76AFED8();
    sub_1D7704970();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76AFE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76AFC34();
    v7 = a3(a1, &type metadata for PlacementAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76AFED8()
{
  result = qword_1EC9BD618;
  if (!qword_1EC9BD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD618);
  }

  return result;
}

unint64_t sub_1D76AFF30()
{
  result = qword_1EC9BD620;
  if (!qword_1EC9BD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD620);
  }

  return result;
}

unint64_t sub_1D76AFFC8()
{
  result = qword_1EC9BD628;
  if (!qword_1EC9BD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD628);
  }

  return result;
}

unint64_t sub_1D76B0020()
{
  result = qword_1EC9BD630;
  if (!qword_1EC9BD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD630);
  }

  return result;
}

unint64_t sub_1D76B0078()
{
  result = qword_1EC9BD638;
  if (!qword_1EC9BD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD638);
  }

  return result;
}

unint64_t sub_1D76B00CC()
{
  result = qword_1EC9BD640;
  if (!qword_1EC9BD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD640);
  }

  return result;
}

uint64_t sub_1D76B01EC(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

id VideoAdProvider.__allocating_init(preroll:placement:journal:request:appConfiguration:presentationHandler:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1D76B6BE4(a1, a2, a3, a4, a5, a6, a7);
  v10 = *(v7 + 80);
  v11 = type metadata accessor for PrerollAdPlacement(255);
  v12 = *(v7 + 88);
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = &protocol witness table for PrerollAdPlacement;
  v13 = type metadata accessor for AdRequest(0, v15);
  (*(*(v13 - 8) + 8))(a4, v13);
  return v9;
}

id VideoAdProvider.init(preroll:placement:journal:request:appConfiguration:presentationHandler:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *v7;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = sub_1D76B68E8(a1, a2, a3, a4, a5, a6, a7);
  v12 = *((v10 & v9) + 0x50);
  v13 = type metadata accessor for PrerollAdPlacement(255);
  v14 = *((v10 & v9) + 0x58);
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = &protocol witness table for PrerollAdPlacement;
  v15 = type metadata accessor for AdRequest(0, v17);
  (*(*(v15 - 8) + 8))(a4, v15);
  return v11;
}

uint64_t sub_1D76B038C(void *a1)
{
  v1 = a1;
  v2 = sub_1D76B03C0();

  return v2;
}

uint64_t sub_1D76B03C0()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
  if (!v1)
  {
    return -1;
  }

  if (![swift_unknownObjectRetain() skipEnabled])
  {
    swift_unknownObjectRelease();
    return -1;
  }

  [v1 skipThreshold];
  v3 = v2;
  v4 = v2;
  result = swift_unknownObjectRelease();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v3 > -1.0)
  {
    if (v3 < 1.84467441e19)
    {
      return v3;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D76B0494(void *a1)
{
  v1 = a1;
  v2 = sub_1D76B04C8();

  return v2 & 1;
}

uint64_t sub_1D76B04C8()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
  if (result)
  {
    result = [result tapAction];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

id sub_1D76B0528()
{
  v0 = sub_1D76B6C68();

  return v0;
}

void *sub_1D76B055C()
{
  v0 = sub_1D76B6C68();
  v1 = v0;
  return v0;
}

id sub_1D76B0588(void *a1)
{
  v1 = a1;
  v2 = sub_1D76B05CC();

  return v2;
}

uint64_t sub_1D76B05CC()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    return sub_1D7703E80();
  }

  else
  {
    return sub_1D7703E70();
  }
}

double sub_1D76B0624(void *a1)
{
  v1 = a1;
  sub_1D76B0660();
  v3 = v2;

  return v3;
}

uint64_t sub_1D76B0694()
{
  v1 = v0;
  sub_1D76B6C94(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v46 - v5;
  v48 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for VideoAdPlaybackState(0);
  v8 = MEMORY[0x1EEE9AC00](v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v46 - v11;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v47 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7708FD0;
  v13 = *v0;
  v14 = MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40];
  v16 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v18 = *v16;
  v17 = v16[1];
  v19 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D7668854();
  *(v12 + 64) = v20;
  *(v12 + 32) = v18;
  *(v12 + 40) = v17;
  v21 = v1 + *((v15 & v13) + 0x60);
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  *(v12 + 96) = v19;
  *(v12 + 104) = v20;
  v24 = v14;
  *(v12 + 72) = v22;
  *(v12 + 80) = v23;

  v25 = sub_1D77045A0();
  sub_1D7703ED0("Requesting to display action. placement=%{public}@, contentIdentifier=%{public}@", 80, 2, &dword_1D7662000, v47, v25, v12);

  sub_1D7703E50();
  sub_1D76B7600(v21, v7, type metadata accessor for PrerollAd);
  v26 = *(v1 + *((*v14 & *v1) + 0xA8));
  if (v26)
  {
    [swift_unknownObjectRetain() time];
    *v10 = v27;
    v10[8] = 0;
    [v26 duration];
  }

  else
  {
    *v10 = 0;
    v10[8] = 1;
    v28 = 0;
  }

  *(v10 + 2) = v28;
  v29 = &v7[*(v48 + 24)];
  v30 = *(v29 + 1);
  *(v10 + 3) = *v29;
  *(v10 + 4) = v30;
  v31 = *(v7 + 2);
  *(v10 + 5) = *(v7 + 1);
  *(v10 + 6) = v31;
  if (v26)
  {

    v32 = [v26 videoURL];
    if (v32)
    {
      v33 = v46;
      v34 = v32;
      sub_1D7702ED0();
      swift_unknownObjectRelease();

      sub_1D76B6D54(v7, type metadata accessor for PrerollAd);
      v35 = 0;
    }

    else
    {
      sub_1D76B6D54(v7, type metadata accessor for PrerollAd);
      swift_unknownObjectRelease();
      v35 = 1;
      v33 = v46;
    }

    v38 = sub_1D7702EE0();
    (*(*(v38 - 8) + 56))(v33, v35, 1, v38);
    v37 = v50;
    sub_1D76B6CEC(v33, v50, sub_1D76B6C94);
  }

  else
  {

    sub_1D76B6D54(v7, type metadata accessor for PrerollAd);
    v36 = sub_1D7702EE0();
    v37 = v50;
    (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
  }

  v39 = v49;
  sub_1D76B6CEC(v37, &v10[*(v49 + 32)], sub_1D76B6C94);
  v40 = &v10[*(v39 + 36)];
  *v40 = 0;
  v40[8] = 1;
  v10[*(v39 + 40)] = 2;
  v41 = v51;
  sub_1D76B6CEC(v10, v51, type metadata accessor for VideoAdPlaybackState);
  v42 = (v1 + *((*v24 & *v1) + 0x90));
  v43 = v42[3];
  v44 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v44 + 56))(v41, v43, v44);
  return sub_1D76B6D54(v41, type metadata accessor for VideoAdPlaybackState);
}

void sub_1D76B0C04(void *a1)
{
  v1 = a1;
  sub_1D76B0694();
}

void sub_1D76B0C94(void *a1)
{
  v1 = a1;
  sub_1D76B0C4C();
}

void sub_1D76B0CF8()
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7708FD0;
  v3 = *v0;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v8 = *v6;
  v7 = v6[1];
  v9 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D7668854();
  *(v2 + 64) = v10;
  *(v2 + 32) = v8;
  *(v2 + 40) = v7;
  v11 = v0 + *((v5 & v3) + 0x60);
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  *(v2 + 96) = v9;
  *(v2 + 104) = v10;
  *(v2 + 72) = v12;
  *(v2 + 80) = v13;

  v14 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad started loading video. placement=%{public}@, contentIdentifier=%{public}@", 84, 2, &dword_1D7662000, v1, v14, v2);

  v15 = CACurrentMediaTime();
  v16 = (v0 + *((*v4 & *v0) + 0xB0));
  *v16 = v15;
  *(v16 + 8) = 0;
}

void sub_1D76B0E68(void *a1)
{
  v1 = a1;
  sub_1D76B0CF8();
}

double sub_1D76B0EB0()
{
  v1 = v0;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7709050;
  v4 = sub_1D7702E90();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D7668854();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = *MEMORY[0x1E69E7D40] & *v1;
  v10 = (v1 + *(v9 + 0x68));
  v12 = *v10;
  v11 = v10[1];
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v12;
  *(v3 + 80) = v11;
  v13 = v1 + *(v9 + 96);
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  *(v3 + 136) = v7;
  *(v3 + 144) = v8;
  *(v3 + 112) = v14;
  *(v3 + 120) = v15;

  v16 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad finished loading video with url=%{public}@. placement=%{public}@, contentIdentifier=%{public}@", 105, 2, &dword_1D7662000, v2, v16, v3);

  return result;
}

uint64_t sub_1D76B100C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D7702EE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7702ED0();
  v8 = a1;
  sub_1D76B0EB0();

  return (*(v5 + 8))(v7, v4);
}

void sub_1D76B10F4()
{
  sub_1D76B6C94(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v58 - v4;
  v58 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for VideoAdPlaybackState(0);
  v6 = MEMORY[0x1EEE9AC00](v61);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v58 - v9;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FD0;
  v12 = *v0;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  v15 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v16 = *v15;
  v17 = v15[1];
  v18 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7668854();
  *(v11 + 64) = v19;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  v20 = v0 + *((v14 & v12) + 0x60);
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  *(v11 + 96) = v18;
  *(v11 + 104) = v19;
  *(v11 + 72) = v21;
  *(v11 + 80) = v22;
  v23 = v13;

  v24 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback ready to start. placement=%{public}@, contentIdentifier=%{public}@", 86, 2, &dword_1D7662000, v10, v24, v11);

  v25 = *v13 & *v0;
  v26 = *(v0 + *(v25 + 0x98));
  if (v26)
  {
    v27 = *&v26[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
    if (v27)
    {
      v28 = v26;
      [v27 mediaLoaded];
      v29 = *&v28[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
      [v29 naturalSize];
      v31 = v30;
      [v29 naturalSize];
      *&v32 = v32;
      *&v33 = v31;
      [v27 videoChosenWithVideoWidth:v33 videoHeight:v32];

      v25 = *v13 & *v0;
    }
  }

  v34 = (v0 + *(v25 + 176));
  if ((v34[1] & 1) == 0)
  {
    v35 = *v34;
    v36 = v59;
    sub_1D76B7600(v20, v59, type metadata accessor for PrerollAd);
    v37 = *(v0 + *((*v13 & *v0) + 0xA8));
    swift_unknownObjectRetain();
    v38 = CACurrentMediaTime();
    if (v37)
    {
      [v37 time];
      *v8 = v39;
      v8[8] = 0;
      [v37 duration];
    }

    else
    {
      *v8 = 0;
      v8[8] = 1;
      v40 = 0;
    }

    v41 = v60;
    v42 = v38 - v35;
    *(v8 + 2) = v40;
    v43 = (v36 + *(v58 + 24));
    v44 = v43[1];
    *(v8 + 3) = *v43;
    *(v8 + 4) = v44;
    v45 = *(v36 + 16);
    *(v8 + 5) = *(v36 + 8);
    *(v8 + 6) = v45;

    if (v37)
    {
      v46 = [v37 videoURL];
      if (v46)
      {
        v47 = v46;
        sub_1D7702ED0();
        swift_unknownObjectRelease();

        sub_1D76B6D54(v36, type metadata accessor for PrerollAd);
        v48 = 0;
      }

      else
      {
        sub_1D76B6D54(v36, type metadata accessor for PrerollAd);
        swift_unknownObjectRelease();
        v48 = 1;
      }

      v51 = sub_1D7702EE0();
      (*(*(v51 - 8) + 56))(v41, v48, 1, v51);
      v50 = v62;
      sub_1D76B6CEC(v41, v62, sub_1D76B6C94);
    }

    else
    {
      sub_1D76B6D54(v36, type metadata accessor for PrerollAd);
      v49 = sub_1D7702EE0();
      v50 = v62;
      (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
    }

    v52 = v61;
    sub_1D76B6CEC(v50, &v8[*(v61 + 32)], sub_1D76B6C94);
    v53 = &v8[*(v52 + 36)];
    *v53 = v42;
    v53[8] = 0;
    v8[*(v52 + 40)] = 2;
    v54 = v63;
    sub_1D76B6CEC(v8, v63, type metadata accessor for VideoAdPlaybackState);
    v55 = (v0 + *((*v23 & *v0) + 0x90));
    v56 = v55[3];
    v57 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v57 + 64))(v54, v56, v57);
    sub_1D76B6D54(v54, type metadata accessor for VideoAdPlaybackState);
  }
}

void sub_1D76B1728(void *a1)
{
  v1 = a1;
  sub_1D76B10F4();
}

uint64_t sub_1D76B1770()
{
  v1 = v0;
  sub_1D76B6C94(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v50 - v5;
  v51 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for VideoAdPlaybackState(0);
  v8 = MEMORY[0x1EEE9AC00](v53);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v50 - v11;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7708FD0;
  v14 = *v1;
  v15 = *MEMORY[0x1E69E7D40];
  v16 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v18 = *v16;
  v17 = v16[1];
  v19 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D7668854();
  *(v13 + 64) = v20;
  v55 = v18;
  *(v13 + 32) = v18;
  *(v13 + 40) = v17;
  v21 = v1 + *((v15 & v14) + 0x60);
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  *(v13 + 96) = v19;
  *(v13 + 104) = v20;
  v52 = v22;
  *(v13 + 72) = v22;
  *(v13 + 80) = v23;
  v54 = v17;

  v24 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback started. placement=%{public}@, contentIdentifier=%{public}@", 79, 2, &dword_1D7662000, v12, v24, v13);
  v25 = MEMORY[0x1E69E7D40];

  v26 = *(v1 + *((*v25 & *v1) + 0x98));
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (v27)
    {
      [v27 mediaStarted];
    }
  }

  sub_1D76B7600(v21, v7, type metadata accessor for PrerollAd);
  v28 = *(v1 + *((*v25 & *v1) + 0xA8));
  if (v28)
  {
    [swift_unknownObjectRetain() time];
    *v10 = v29;
    v10[8] = 0;
    [v28 duration];
  }

  else
  {
    *v10 = 0;
    v10[8] = 1;
    v30 = 0;
  }

  *(v10 + 2) = v30;
  v31 = &v7[*(v51 + 24)];
  v32 = *(v31 + 1);
  *(v10 + 3) = *v31;
  *(v10 + 4) = v32;
  v33 = *(v7 + 2);
  *(v10 + 5) = *(v7 + 1);
  *(v10 + 6) = v33;
  if (v28)
  {

    v34 = [v28 videoURL];
    if (v34)
    {
      v35 = v50;
      v36 = v25;
      v37 = v34;
      sub_1D7702ED0();
      swift_unknownObjectRelease();

      v25 = v36;
      sub_1D76B6D54(v7, type metadata accessor for PrerollAd);
      v38 = 0;
    }

    else
    {
      sub_1D76B6D54(v7, type metadata accessor for PrerollAd);
      swift_unknownObjectRelease();
      v38 = 1;
      v35 = v50;
    }

    v41 = sub_1D7702EE0();
    (*(*(v41 - 8) + 56))(v35, v38, 1, v41);
    v40 = v56;
    sub_1D76B6CEC(v35, v56, sub_1D76B6C94);
  }

  else
  {

    sub_1D76B6D54(v7, type metadata accessor for PrerollAd);
    v39 = sub_1D7702EE0();
    v40 = v56;
    (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  }

  v42 = v53;
  sub_1D76B6CEC(v40, &v10[*(v53 + 32)], sub_1D76B6C94);
  v43 = &v10[*(v42 + 36)];
  *v43 = 0;
  v43[8] = 1;
  v10[*(v42 + 40)] = 2;
  v44 = v57;
  sub_1D76B6CEC(v10, v57, type metadata accessor for VideoAdPlaybackState);
  v45 = (v1 + *((*v25 & *v1) + 0x90));
  v46 = v45[3];
  v47 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v46);
  (*(v47 + 8))(v44, v46, v47);
  v48 = *((*v25 & *v1) + 0x78);
  memset(v58, 0, sizeof(v58));
  v59 = 1;
  Journal.addPresentedEntry(request:placementIdentifier:contentIdentifier:layout:)(v1 + v48, v55, v54, v52, v23, v58);
  return sub_1D76B6D54(v44, type metadata accessor for VideoAdPlaybackState);
}

void sub_1D76B1D84(void *a1)
{
  v1 = a1;
  sub_1D76B1770();
}

uint64_t sub_1D76B1DCC()
{
  sub_1D76B6C94(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v50 - v4;
  v51 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for VideoAdPlaybackState(0);
  v6 = MEMORY[0x1EEE9AC00](v53);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - v9;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FD0;
  v12 = *v0;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  v15 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v16 = *v15;
  v17 = v15[1];
  v18 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7668854();
  *(v11 + 64) = v19;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  v20 = v0 + *((v14 & v12) + 0x60);
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  *(v11 + 96) = v18;
  *(v11 + 104) = v19;
  *(v11 + 72) = v21;
  *(v11 + 80) = v22;
  v23 = v13;

  v24 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback paused. placement=%{public}@, contentIdentifier=%{public}@", 78, 2, &dword_1D7662000, v10, v24, v11);

  v25 = *(v0 + *((*v13 & *v0) + 0x98));
  if (v25)
  {
    v26 = *&v25[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
    if (v26)
    {
      v27 = *&v25[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
      v28 = v25;
      [v27 time];
      [v26 mediaPausedAtPosition_];

      v23 = v13;
    }
  }

  v29 = v52;
  sub_1D76B7600(v20, v52, type metadata accessor for PrerollAd);
  v30 = *(v0 + *((*v23 & *v0) + 0xA8));
  if (v30)
  {
    [swift_unknownObjectRetain() time];
    *v8 = v31;
    v8[8] = 0;
    [v30 duration];
  }

  else
  {
    *v8 = 0;
    v8[8] = 1;
    v32 = 0;
  }

  v33 = v54;
  *(v8 + 2) = v32;
  v34 = (v29 + *(v51 + 24));
  v35 = v34[1];
  *(v8 + 3) = *v34;
  *(v8 + 4) = v35;
  v36 = *(v29 + 16);
  *(v8 + 5) = *(v29 + 8);
  *(v8 + 6) = v36;
  if (v30)
  {

    v37 = [v30 videoURL];
    if (v37)
    {
      v38 = v50;
      v39 = v37;
      sub_1D7702ED0();
      swift_unknownObjectRelease();

      sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
      v40 = 0;
    }

    else
    {
      sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
      swift_unknownObjectRelease();
      v40 = 1;
      v38 = v50;
    }

    v42 = sub_1D7702EE0();
    (*(*(v42 - 8) + 56))(v38, v40, 1, v42);
    sub_1D76B6CEC(v38, v33, sub_1D76B6C94);
  }

  else
  {

    sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
    v41 = sub_1D7702EE0();
    (*(*(v41 - 8) + 56))(v33, 1, 1, v41);
  }

  v43 = v53;
  sub_1D76B6CEC(v33, &v8[*(v53 + 32)], sub_1D76B6C94);
  v44 = &v8[*(v43 + 36)];
  *v44 = 0;
  v44[8] = 1;
  v8[*(v43 + 40)] = 2;
  v45 = v55;
  sub_1D76B6CEC(v8, v55, type metadata accessor for VideoAdPlaybackState);
  v46 = (v0 + *((*v23 & *v0) + 0x90));
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v48 + 16))(v45, v47, v48);
  return sub_1D76B6D54(v45, type metadata accessor for VideoAdPlaybackState);
}

void sub_1D76B23A0(void *a1)
{
  v1 = a1;
  sub_1D76B1DCC();
}

uint64_t sub_1D76B23E8()
{
  sub_1D76B6C94(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v50 - v4;
  v51 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for VideoAdPlaybackState(0);
  v6 = MEMORY[0x1EEE9AC00](v53);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - v9;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FD0;
  v12 = *v0;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  v15 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v16 = *v15;
  v17 = v15[1];
  v18 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7668854();
  *(v11 + 64) = v19;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  v20 = v0 + *((v14 & v12) + 0x60);
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  *(v11 + 96) = v18;
  *(v11 + 104) = v19;
  *(v11 + 72) = v21;
  *(v11 + 80) = v22;
  v23 = v13;

  v24 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback resumed. placement=%{public}@, contentIdentifier=%{public}@", 79, 2, &dword_1D7662000, v10, v24, v11);

  v25 = *(v0 + *((*v13 & *v0) + 0x98));
  if (v25)
  {
    v26 = *&v25[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
    if (v26)
    {
      v27 = *&v25[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
      v28 = v25;
      [v27 time];
      [v26 mediaPlayedAtPosition_];

      v23 = v13;
    }
  }

  v29 = v52;
  sub_1D76B7600(v20, v52, type metadata accessor for PrerollAd);
  v30 = *(v0 + *((*v23 & *v0) + 0xA8));
  if (v30)
  {
    [swift_unknownObjectRetain() time];
    *v8 = v31;
    v8[8] = 0;
    [v30 duration];
  }

  else
  {
    *v8 = 0;
    v8[8] = 1;
    v32 = 0;
  }

  v33 = v54;
  *(v8 + 2) = v32;
  v34 = (v29 + *(v51 + 24));
  v35 = v34[1];
  *(v8 + 3) = *v34;
  *(v8 + 4) = v35;
  v36 = *(v29 + 16);
  *(v8 + 5) = *(v29 + 8);
  *(v8 + 6) = v36;
  if (v30)
  {

    v37 = [v30 videoURL];
    if (v37)
    {
      v38 = v50;
      v39 = v37;
      sub_1D7702ED0();
      swift_unknownObjectRelease();

      sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
      v40 = 0;
    }

    else
    {
      sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
      swift_unknownObjectRelease();
      v40 = 1;
      v38 = v50;
    }

    v42 = sub_1D7702EE0();
    (*(*(v42 - 8) + 56))(v38, v40, 1, v42);
    sub_1D76B6CEC(v38, v33, sub_1D76B6C94);
  }

  else
  {

    sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
    v41 = sub_1D7702EE0();
    (*(*(v41 - 8) + 56))(v33, 1, 1, v41);
  }

  v43 = v53;
  sub_1D76B6CEC(v33, &v8[*(v53 + 32)], sub_1D76B6C94);
  v44 = &v8[*(v43 + 36)];
  *v44 = 0;
  v44[8] = 1;
  v8[*(v43 + 40)] = 2;
  v45 = v55;
  sub_1D76B6CEC(v8, v55, type metadata accessor for VideoAdPlaybackState);
  v46 = (v0 + *((*v23 & *v0) + 0x90));
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v48 + 24))(v45, v47, v48);
  return sub_1D76B6D54(v45, type metadata accessor for VideoAdPlaybackState);
}

void sub_1D76B29BC(void *a1)
{
  v1 = a1;
  sub_1D76B23E8();
}

uint64_t sub_1D76B2A04()
{
  sub_1D76B6C94(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v47 - v4;
  v49 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for VideoAdPlaybackState(0);
  v7 = MEMORY[0x1EEE9AC00](v50);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - v10;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v48 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FD0;
  v12 = *v0;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  v15 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v17 = *v15;
  v16 = v15[1];
  v18 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7668854();
  *(v11 + 64) = v19;
  *(v11 + 32) = v17;
  *(v11 + 40) = v16;
  v20 = v0 + *((v14 & v12) + 0x60);
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  *(v11 + 96) = v18;
  *(v11 + 104) = v19;
  *(v11 + 72) = v21;
  *(v11 + 80) = v22;
  v23 = v13;

  v24 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback finished. placement=%{public}@, contentIdentifier=%{public}@", 80, 2, &dword_1D7662000, v48, v24, v11);

  v25 = *(v0 + *((*v13 & *v0) + 0x98));
  if (v25)
  {
    v26 = *(v25 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (v26)
    {
      [v26 mediaFinished];
    }
  }

  sub_1D76B7600(v20, v6, type metadata accessor for PrerollAd);
  v27 = *(v0 + *((*v13 & *v0) + 0xA8));
  if (v27)
  {
    [swift_unknownObjectRetain() time];
    *v9 = v28;
    v9[8] = 0;
    [v27 duration];
  }

  else
  {
    *v9 = 0;
    v9[8] = 1;
    v29 = 0;
  }

  v30 = v51;
  *(v9 + 2) = v29;
  v31 = &v6[*(v49 + 24)];
  v32 = *(v31 + 1);
  *(v9 + 3) = *v31;
  *(v9 + 4) = v32;
  v33 = *(v6 + 2);
  *(v9 + 5) = *(v6 + 1);
  *(v9 + 6) = v33;
  if (v27)
  {

    v34 = [v27 videoURL];
    if (v34)
    {
      v35 = v47;
      v36 = v34;
      sub_1D7702ED0();
      swift_unknownObjectRelease();

      sub_1D76B6D54(v6, type metadata accessor for PrerollAd);
      v37 = 0;
    }

    else
    {
      sub_1D76B6D54(v6, type metadata accessor for PrerollAd);
      swift_unknownObjectRelease();
      v37 = 1;
      v35 = v47;
    }

    v39 = sub_1D7702EE0();
    (*(*(v39 - 8) + 56))(v35, v37, 1, v39);
    sub_1D76B6CEC(v35, v30, sub_1D76B6C94);
  }

  else
  {

    sub_1D76B6D54(v6, type metadata accessor for PrerollAd);
    v38 = sub_1D7702EE0();
    (*(*(v38 - 8) + 56))(v30, 1, 1, v38);
  }

  v40 = v50;
  sub_1D76B6CEC(v30, &v9[*(v50 + 32)], sub_1D76B6C94);
  v41 = &v9[*(v40 + 36)];
  *v41 = 0;
  v41[8] = 1;
  v9[*(v40 + 40)] = 2;
  v42 = v52;
  sub_1D76B6CEC(v9, v52, type metadata accessor for VideoAdPlaybackState);
  v43 = (v0 + *((*v23 & *v0) + 0x90));
  v44 = v43[3];
  v45 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v44);
  (*(v45 + 32))(v42, v44, v45);
  return sub_1D76B6D54(v42, type metadata accessor for VideoAdPlaybackState);
}

void sub_1D76B2FA4(void *a1)
{
  v1 = a1;
  sub_1D76B2A04();
}

void sub_1D76B2FEC(void *a1)
{
  v2 = v1;
  sub_1D76B6C94(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v64 - v7;
  v66 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for VideoAdPlaybackState(0);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v69 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v64 - v11;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v74 = qword_1EE0AF010;
  v73 = sub_1D7704590();
  sub_1D766DF6C(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7709050;
  v13 = *v1;
  v14 = *MEMORY[0x1E69E7D40];
  v15 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v17 = *v15;
  v16 = v15[1];
  v18 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7668854();
  v20 = v19;
  *(v12 + 64) = v19;
  *(v12 + 32) = v17;
  *(v12 + 40) = v16;
  v21 = v2 + *((v14 & v13) + 0x60);
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  v65 = v21;
  *(v12 + 96) = v18;
  *(v12 + 104) = v19;
  *(v12 + 72) = v22;
  *(v12 + 80) = v23;
  if (a1)
  {
    swift_getErrorValue();

    v24 = sub_1D7704A80();
    v26 = (v12 + 112);
    *(v12 + 136) = v18;
    *(v12 + 144) = v20;
    if (v25)
    {
      *v26 = v24;
      v27 = MEMORY[0x1E69E7D40];
      goto LABEL_8;
    }
  }

  else
  {
    v26 = (v12 + 112);
    *(v12 + 136) = v18;
    *(v12 + 144) = v19;
  }

  v27 = MEMORY[0x1E69E7D40];
  *v26 = 0;
  v25 = 0xE000000000000000;
LABEL_8:
  *(v12 + 120) = v25;
  sub_1D7703ED0("Preroll ad playback failed. placement=%{public}@, contentIdentifier=%{public}@, error=%{public}@", 96, 2, &dword_1D7662000, v74, v73, v12);

  v28 = *v27 & *v2;
  v29 = *(v2 + *(v28 + 0x98));
  if (v29)
  {
    v30 = *&v29[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_diagnosticMetricsHelper];
    if (a1)
    {
      swift_getErrorValue();
      v31 = v29;
      sub_1D7704A80();
    }

    else
    {
      v32 = v29;
    }

    v33 = sub_1D7704230();

    [v30 mediaPlaybackFailedWithReason_];

    v28 = *v27 & *v2;
  }

  v34 = (v2 + *(v28 + 176));
  if ((v34[1] & 1) == 0)
  {
    if (a1)
    {
      v35 = *v34;
      v76 = a1;
      v36 = a1;
      sub_1D7665328(0, &qword_1EE0AEBD0, MEMORY[0x1E69E7280]);
      sub_1D76B6DB4();
      if (swift_dynamicCast())
      {
        v37 = v75;
        v38 = [v75 code];

        if (v38 == 5)
        {
          v39 = 3;
        }

        else
        {
          v39 = 5;
        }

        if (v38 == 2)
        {
          v40 = 4;
        }

        else
        {
          v40 = v39;
        }

        v41 = v67;
        sub_1D76B7600(v65, v67, type metadata accessor for PrerollAd);
        v42 = *(v2 + *((*v27 & *v2) + 0xA8));
        swift_unknownObjectRetain();
        v43 = CACurrentMediaTime();
        if (v42)
        {
          [v42 time];
          v44 = v69;
          *v69 = v45;
          *(v44 + 8) = 0;
          [v42 duration];
        }

        else
        {
          v44 = v69;
          *v69 = 0;
          *(v44 + 8) = 1;
          v46 = 0;
        }

        v47 = v68;
        v48 = v43 - v35;
        *(v44 + 16) = v46;
        v49 = (v41 + *(v66 + 24));
        v50 = v49[1];
        *(v44 + 24) = *v49;
        *(v44 + 32) = v50;
        v51 = *(v41 + 16);
        *(v44 + 40) = *(v41 + 8);
        *(v44 + 48) = v51;

        if (v42)
        {
          v52 = [v42 videoURL];
          if (v52)
          {
            v53 = v52;
            sub_1D7702ED0();
            swift_unknownObjectRelease();

            sub_1D76B6D54(v41, type metadata accessor for PrerollAd);
            v54 = 0;
          }

          else
          {
            sub_1D76B6D54(v41, type metadata accessor for PrerollAd);
            swift_unknownObjectRelease();
            v54 = 1;
          }

          v57 = sub_1D7702EE0();
          (*(*(v57 - 8) + 56))(v47, v54, 1, v57);
          v56 = v71;
          sub_1D76B6CEC(v47, v71, sub_1D76B6C94);
        }

        else
        {
          sub_1D76B6D54(v41, type metadata accessor for PrerollAd);
          v55 = sub_1D7702EE0();
          v56 = v71;
          (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
        }

        v58 = v70;
        sub_1D76B6CEC(v56, v44 + *(v70 + 32), sub_1D76B6C94);
        v59 = v44 + *(v58 + 36);
        *v59 = v48;
        *(v59 + 8) = 0;
        *(v44 + *(v58 + 40)) = v40;
        v60 = v72;
        sub_1D76B6CEC(v44, v72, type metadata accessor for VideoAdPlaybackState);
        v61 = (v2 + *((*v27 & *v2) + 0x90));
        v62 = v61[3];
        v63 = v61[4];
        __swift_project_boxed_opaque_existential_1(v61, v62);
        (*(v63 + 64))(v60, v62, v63);
        sub_1D76B6D54(v60, type metadata accessor for VideoAdPlaybackState);
      }
    }
  }
}

void sub_1D76B375C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_1D76B2FEC(a3);
}

void sub_1D76B37D0(void *a1)
{
  v1 = a1;
  sub_1D76B37B4();
}

void sub_1D76B3834(const char *a1, uint64_t a2, SEL *a3, char a4, ...)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7708FD0;
  v8 = *v4;
  v9 = MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40];
  v11 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68));
  v12 = *v11;
  v13 = v11[1];
  v14 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D7668854();
  *(v7 + 64) = v15;
  *(v7 + 32) = v12;
  *(v7 + 40) = v13;
  v16 = v4 + *((v10 & v8) + 0x60);
  v17 = *(v16 + 1);
  v18 = *(v16 + 2);
  *(v7 + 96) = v14;
  *(v7 + 104) = v15;
  *(v7 + 72) = v17;
  *(v7 + 80) = v18;

  v19 = sub_1D77045A0();
  sub_1D7703ED0(a1, a2, 2, &dword_1D7662000, v6, v19, v7);

  v20 = *(v4 + *((*v9 & *v4) + 0x98));
  if (v20)
  {
    v21 = *&v20[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
    if (v21)
    {
      v22 = *&v20[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
      v26 = v20;
      [v22 time];
      [v21 *a3];
    }
  }
}

void sub_1D76B3A30(void *a1)
{
  v1 = a1;
  sub_1D76B3818();
}

void sub_1D76B3A78(char a1)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7708FD0;
  v5 = *v1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  v8 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v10 = *v8;
  v9 = v8[1];
  v11 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D7668854();
  *(v4 + 64) = v12;
  *(v4 + 32) = v10;
  *(v4 + 40) = v9;
  v13 = v1 + *((v7 & v5) + 0x60);
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  *(v4 + 96) = v11;
  *(v4 + 104) = v12;
  *(v4 + 72) = v14;
  *(v4 + 80) = v15;

  v16 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback mute state changed. placement=%{public}@, contentIdentifier=%{public}@", 90, 2, &dword_1D7662000, v3, v16, v4);

  v17 = *(v1 + *((*v6 & *v1) + 0x98));
  if (v17)
  {
    v18 = v17;
    VideoAdProviderMetricsHelper.muteStateChanged(_:)(a1 & 1);
  }
}

void sub_1D76B3C38(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D76B3A78(a3);
}

uint64_t sub_1D76B3C8C()
{
  sub_1D76B6C94(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v46 - v4;
  v48 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for VideoAdPlaybackState(0);
  v7 = MEMORY[0x1EEE9AC00](v49);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v46 - v10;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7708FD0;
  v13 = *v0;
  v14 = *MEMORY[0x1E69E7D40];
  v15 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v17 = *v15;
  v16 = v15[1];
  v18 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7668854();
  *(v12 + 64) = v19;
  *(v12 + 32) = v17;
  *(v12 + 40) = v16;
  v20 = v0 + *((v14 & v13) + 0x60);
  v21 = *(v20 + 1);
  v22 = *(v20 + 2);
  *(v12 + 96) = v18;
  *(v12 + 104) = v19;
  *(v12 + 72) = v21;
  *(v12 + 80) = v22;

  v23 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback passed impression threshold. placement=%{public}@, contentIdentifier=%{public}@", 99, 2, &dword_1D7662000, v11, v23, v12);

  v24 = v20;
  v25 = MEMORY[0x1E69E7D40];
  sub_1D76B7600(v24, v6, type metadata accessor for PrerollAd);
  v26 = *(v0 + *((*v25 & *v0) + 0xA8));
  if (v26)
  {
    [swift_unknownObjectRetain() time];
    *v9 = v27;
    v9[8] = 0;
    [v26 duration];
  }

  else
  {
    *v9 = 0;
    v9[8] = 1;
    v28 = 0;
  }

  *(v9 + 2) = v28;
  v29 = &v6[*(v48 + 24)];
  v30 = *(v29 + 1);
  *(v9 + 3) = *v29;
  *(v9 + 4) = v30;
  v31 = *(v6 + 2);
  *(v9 + 5) = *(v6 + 1);
  *(v9 + 6) = v31;
  v32 = v50;
  if (v26)
  {

    v33 = [v26 videoURL];
    if (v33)
    {
      v34 = v47;
      v35 = v33;
      sub_1D7702ED0();
      swift_unknownObjectRelease();

      sub_1D76B6D54(v6, type metadata accessor for PrerollAd);
      v36 = 0;
    }

    else
    {
      sub_1D76B6D54(v6, type metadata accessor for PrerollAd);
      swift_unknownObjectRelease();
      v36 = 1;
      v34 = v47;
    }

    v38 = sub_1D7702EE0();
    (*(*(v38 - 8) + 56))(v34, v36, 1, v38);
    sub_1D76B6CEC(v34, v32, sub_1D76B6C94);
  }

  else
  {

    sub_1D76B6D54(v6, type metadata accessor for PrerollAd);
    v37 = sub_1D7702EE0();
    (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
  }

  v39 = v49;
  sub_1D76B6CEC(v32, &v9[*(v49 + 32)], sub_1D76B6C94);
  v40 = &v9[*(v39 + 36)];
  *v40 = 0;
  v40[8] = 1;
  v9[*(v39 + 40)] = 2;
  v41 = v51;
  sub_1D76B6CEC(v9, v51, type metadata accessor for VideoAdPlaybackState);
  v42 = (v0 + *((*v25 & *v0) + 0x90));
  v43 = v42[3];
  v44 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v44 + 48))(v41, v43, v44);
  return sub_1D76B6D54(v41, type metadata accessor for VideoAdPlaybackState);
}

void sub_1D76B41EC(void *a1)
{
  v1 = a1;
  sub_1D76B3C8C();
}

void sub_1D76B4234(uint64_t a1)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_1D7709050;
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        v6 = 0xE600000000000000;
        v7 = 0x646E6F636573;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v6 = 0xE500000000000000;
    v7 = 0x6472696874;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0xE500000000000000;
        v7 = 0x7473726966;
        goto LABEL_13;
      }

LABEL_10:
      v6 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E75;
      goto LABEL_13;
    }

    v6 = 0xE400000000000000;
    v7 = 1701736302;
  }

LABEL_13:
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7668854();
  v5[8] = v9;
  v5[4] = v7;
  v5[5] = v6;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40] & *v1;
  v12 = (v1 + *(v11 + 0x68));
  v14 = *v12;
  v13 = v12[1];
  v5[12] = v8;
  v5[13] = v9;
  v5[9] = v14;
  v5[10] = v13;
  v15 = v1 + *(v11 + 96);
  v16 = *(v15 + 1);
  v17 = *(v15 + 2);
  v5[17] = v8;
  v5[18] = v9;
  v5[14] = v16;
  v5[15] = v17;

  v18 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback passed quartile %{public}@. placement=%{public}@, contentIdentifier=%{public}@", 98, 2, &dword_1D7662000, v3, v18, v5);

  v19 = *(v1 + *((*v10 & *v1) + 0x98));
  if (v19)
  {
    v20 = v19;
    VideoAdProviderMetricsHelper.playbackPassed(quartile:)(a1);
  }
}

uint64_t SVVideoQuartile.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x646E6F636573;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6472696874;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7473726966;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701736302;
  }
}

void sub_1D76B44FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1D76B4234(a3);
}

void sub_1D76B4550(char a1)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7708FD0;
  v5 = *v1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  v8 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v10 = *v8;
  v9 = v8[1];
  v11 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D7668854();
  *(v4 + 64) = v12;
  *(v4 + 32) = v10;
  *(v4 + 40) = v9;
  v13 = v1 + *((v7 & v5) + 0x60);
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  *(v4 + 96) = v11;
  *(v4 + 104) = v12;
  *(v4 + 72) = v14;
  *(v4 + 80) = v15;

  v16 = sub_1D77045A0();
  sub_1D7703ED0("Preroll controls toggled. placement=%{public}@, contentIdentifier=%{public}@", 76, 2, &dword_1D7662000, v3, v16, v4);

  v17 = *(v1 + *((*v6 & *v1) + 0x98));
  if (v17)
  {
    if ((a1 & 1) == 0)
    {
      v18 = *&v17[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
      if (v18)
      {
        v19 = *&v17[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
        v20 = v17;
        [v19 time];
        [v18 mediaShowControlsAtPosition_];
      }
    }
  }
}

void sub_1D76B4740(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D76B4550(a3);
}

uint64_t sub_1D76B4794()
{
  sub_1D76B6C94(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v50 - v4;
  v51 = type metadata accessor for PrerollAd(0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for VideoAdPlaybackState(0);
  v6 = MEMORY[0x1EEE9AC00](v53);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - v9;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FD0;
  v12 = *v0;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  v15 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v16 = *v15;
  v17 = v15[1];
  v18 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7668854();
  *(v11 + 64) = v19;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  v20 = v0 + *((v14 & v12) + 0x60);
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  *(v11 + 96) = v18;
  *(v11 + 104) = v19;
  *(v11 + 72) = v21;
  *(v11 + 80) = v22;
  v23 = v13;

  v24 = sub_1D77045A0();
  sub_1D7703ED0("Preroll ad playback skipped. placement=%{public}@, contentIdentifier=%{public}@", 79, 2, &dword_1D7662000, v10, v24, v11);

  v25 = *(v0 + *((*v13 & *v0) + 0x98));
  if (v25)
  {
    v26 = *&v25[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
    if (v26)
    {
      v27 = *&v25[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
      v28 = v25;
      [v27 time];
      [v26 mediaSkippedAtPosition_];

      v23 = v13;
    }
  }

  v29 = v52;
  sub_1D76B7600(v20, v52, type metadata accessor for PrerollAd);
  v30 = *(v0 + *((*v23 & *v0) + 0xA8));
  if (v30)
  {
    [swift_unknownObjectRetain() time];
    *v8 = v31;
    v8[8] = 0;
    [v30 duration];
  }

  else
  {
    *v8 = 0;
    v8[8] = 1;
    v32 = 0;
  }

  v33 = v54;
  *(v8 + 2) = v32;
  v34 = (v29 + *(v51 + 24));
  v35 = v34[1];
  *(v8 + 3) = *v34;
  *(v8 + 4) = v35;
  v36 = *(v29 + 16);
  *(v8 + 5) = *(v29 + 8);
  *(v8 + 6) = v36;
  if (v30)
  {

    v37 = [v30 videoURL];
    if (v37)
    {
      v38 = v50;
      v39 = v37;
      sub_1D7702ED0();
      swift_unknownObjectRelease();

      sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
      v40 = 0;
    }

    else
    {
      sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
      swift_unknownObjectRelease();
      v40 = 1;
      v38 = v50;
    }

    v42 = sub_1D7702EE0();
    (*(*(v42 - 8) + 56))(v38, v40, 1, v42);
    sub_1D76B6CEC(v38, v33, sub_1D76B6C94);
  }

  else
  {

    sub_1D76B6D54(v29, type metadata accessor for PrerollAd);
    v41 = sub_1D7702EE0();
    (*(*(v41 - 8) + 56))(v33, 1, 1, v41);
  }

  v43 = v53;
  sub_1D76B6CEC(v33, &v8[*(v53 + 32)], sub_1D76B6C94);
  v44 = &v8[*(v43 + 36)];
  *v44 = 0;
  v44[8] = 1;
  v8[*(v43 + 40)] = 2;
  v45 = v55;
  sub_1D76B6CEC(v8, v55, type metadata accessor for VideoAdPlaybackState);
  v46 = (v0 + *((*v23 & *v0) + 0x90));
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v48 + 40))(v45, v47, v48);
  return sub_1D76B6D54(v45, type metadata accessor for VideoAdPlaybackState);
}

void sub_1D76B4D68(void *a1)
{
  v1 = a1;
  sub_1D76B4794();
}

double sub_1D76B4DB0()
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7708FD0;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v7 = *v5;
  v6 = v5[1];
  v8 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7668854();
  *(v2 + 64) = v9;
  *(v2 + 32) = v7;
  *(v2 + 40) = v6;
  v10 = v0 + *((v4 & v3) + 0x60);
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  *(v2 + 96) = v8;
  *(v2 + 104) = v9;
  *(v2 + 72) = v11;
  *(v2 + 80) = v12;

  v13 = sub_1D77045A0();
  sub_1D7703ED0("Video content after preroll ad started playing. placement=%{public}@, contentIdentifier=%{public}@", 98, 2, &dword_1D7662000, v1, v13, v2);

  return result;
}

void sub_1D76B4EF8(void *a1)
{
  v1 = a1;
  sub_1D76B4DB0();
}

void sub_1D76B4F40()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98));
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (v2)
    {
      [v2 mediaUserExitedArticle];
    }
  }
}

void sub_1D76B4F8C(void *a1)
{
  v1 = a1;
  sub_1D76B4F40();
}

void (*sub_1D76B4FD4(uint64_t a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = objc_opt_self();
  v9 = *(v2 + *((*v5 & *v2) + 0x80));

  [v9 prerollLoadingTimeout];
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v7;
  v26[4] = sub_1D76B6E00;
  v26[5] = v12;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1D769D7C4;
  v26[3] = &block_descriptor_5;
  v13 = _Block_copy(v26);
  v14 = v2;

  v15 = [v8 scheduledTimerWithTimeInterval:0 repeats:v13 block:v11];
  _Block_release(v13);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7708FE0;
  v18 = (v14 + *((*v5 & *v14) + 0x68));
  v20 = *v18;
  v19 = v18[1];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D7668854();
  *(v17 + 32) = v20;
  *(v17 + 40) = v19;

  v21 = sub_1D77045A0();
  sub_1D7703ED0("Loading video representation. placement=%{public}@", 50, 2, &dword_1D7662000, v16, v21, v17);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = *(v6 + 80);
  v23[3] = *(v6 + 88);
  v23[4] = v22;
  v23[5] = v7;
  v23[6] = v15;

  v24 = v15;
  sub_1D7703E90();

  return nullsub_1;
}

uint64_t sub_1D76B533C(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  sub_1D76B6C94(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v7 & v5) + 0x50);
  v12 = type metadata accessor for PrerollAdPlacement(255);
  v13 = *((v7 & v5) + 0x58);
  v43[0] = v11;
  v43[1] = v12;
  v43[2] = v13;
  v43[3] = &protocol witness table for PrerollAdPlacement;
  v14 = type metadata accessor for AdRequest(255, v43);
  v15 = sub_1D77046B0();
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE0AF010;
  v19 = sub_1D7704590();
  sub_1D766DF6C(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7708FE0;
  v21 = &a2[*((*v6 & *a2) + 0x68)];
  v22 = *v21;
  v23 = v21[1];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1D7668854();
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;

  sub_1D7703ED0("Failed to load video representation in time; timing out. placement=%{public}@", 77, 2, &dword_1D7662000, v18, v19, v20);

  result = swift_beginAccess();
  v25 = *(a3 + 16);
  if (v25)
  {
    v40 = v10;
    v26 = *(a3 + 24);
    v27 = MEMORY[0x1E69E7D40];
    v39[1] = *&a2[*((*MEMORY[0x1E69E7D40] & *a2) + 0x70)];
    sub_1D769D8F0();
    v28 = swift_allocError();
    *v29 = 1;
    *(v29 + 8) = 1;
    v30 = *((*v27 & *a2) + 0x78);
    v31 = *(v14 - 8);
    (*(v31 + 16))(v17, &a2[v30], v14);
    (*(v31 + 56))(v17, 0, 1, v14);
    v32 = &a2[*((*MEMORY[0x1E69E7D40] & *a2) + 0x60)];
    v33 = *(v32 + 1);
    v34 = *(v32 + 2);

    Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v28, v17, v22, v23, v33, v34);
    (*(v41 + 8))(v17, v42);

    v35 = sub_1D7702EE0();
    v36 = v40;
    (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
    v25(v36);
    sub_1D7679EA4(v25, v26);
    swift_unknownObjectRelease();
    sub_1D76B6D54(v36, sub_1D76B6C94);
    swift_beginAccess();
    v37 = *(a3 + 16);
    v38 = *(a3 + 24);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    return sub_1D7679EA4(v37, v38);
  }

  return result;
}

void sub_1D76B5798(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v99 = a5;
  *(&v99 + 1) = type metadata accessor for PrerollAdPlacement(255);
  *&v100 = a6;
  *(&v100 + 1) = &protocol witness table for PrerollAdPlacement;
  v10 = type metadata accessor for AdRequest(255, &v99);
  v11 = sub_1D77046B0();
  v96 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  sub_1D76B6C94(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7702EE0();
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v95 = *(a3 + 16);
    if (v95)
    {
      v22 = *(a3 + 24);

      if ([a4 isValid])
      {
        [a4 invalidate];
      }

      v23 = v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x60);
      v24 = [*v23 promotedContentInfo];
      v92 = v17;
      v93 = v22;
      v94 = v23;
      if (v24)
      {
        v91 = v24;
        if (a1)
        {
          v25 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x78);
          v26 = (v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x68));
          v27 = *v26;
          v28 = v26[1];
          v96 = v26;
          v29 = *(v23 + 1);
          v30 = *(v23 + 2);
          v99 = 0u;
          v100 = 0u;
          v101 = 1;
          swift_unknownObjectRetain();
          Journal.addFulfilledEntry(request:placementIdentifier:contentIdentifier:layout:)(v21 + v25, v27, v28, v29, v30, &v99);
          *(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0xA0)) = a1;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v31 = a1;
          if (qword_1EE0AF008 != -1)
          {
            swift_once();
          }

          v89 = qword_1EE0AF010;
          sub_1D766DF6C(0);
          v88 = v32;
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1D7709050;
          v35 = *v96;
          v34 = v96[1];
          v36 = MEMORY[0x1E69E6158];
          *(v33 + 56) = MEMORY[0x1E69E6158];
          v37 = v36;
          v38 = sub_1D7668854();
          *(v33 + 64) = v38;
          *(v33 + 32) = v35;
          *(v33 + 40) = v34;
          v39 = *(v94 + 1);
          v40 = *(v94 + 2);
          *(v33 + 96) = v37;
          *(v33 + 104) = v38;
          *(v33 + 72) = v39;
          *(v33 + 80) = v40;

          v41 = [v31 videoURL];
          sub_1D7702ED0();

          sub_1D76B7668();
          v42 = v92;
          v43 = sub_1D7704A10();
          v45 = v44;
          v46 = v97;
          (*(v97 + 8))(v19, v42);
          *(v33 + 136) = MEMORY[0x1E69E6158];
          *(v33 + 144) = v38;
          *(v33 + 112) = v43;
          *(v33 + 120) = v45;
          v47 = v89;
          v48 = sub_1D77045A0();
          sub_1D7703ED0("Loaded video representation. placement=%{public}@, contentIdentifier=%{public}@, URL=%{public}@", 95, 2, &dword_1D7662000, v47, v48, v33);

          v90 = v31;
          v49 = [v31 videoURL];
          sub_1D7702ED0();

          (*(v46 + 56))(v16, 0, 1, v42);
          v50 = v93;
          v51 = v95;
          v52 = v95(v16);
          sub_1D76B6D54(v16, sub_1D76B6C94);
          if (v52)
          {
            v53 = MEMORY[0x1E69E7D40];
            *(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0xA8)) = v52;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_1D7708FE0;
            v56 = *v96;
            v55 = v96[1];
            *(v54 + 56) = MEMORY[0x1E69E6158];
            *(v54 + 64) = v38;
            *(v54 + 32) = v56;
            *(v54 + 40) = v55;

            v57 = sub_1D77045A0();
            sub_1D7703ED0("Received metadata; creating metrics helper. placement=%{public}@", 64, 2, &dword_1D7662000, v47, v57, v54);

            v58 = v50;
            v59 = sub_1D7703DF0();
            swift_unknownObjectRetain();
            v60 = sub_1D7703E40();
            v61 = type metadata accessor for VideoAdProviderMetricsHelper();
            v62 = objc_allocWithZone(v61);
            *&v62[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_diagnosticMetricsHelper] = v59;
            *&v62[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata] = v52;
            *&v62[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper] = v60;
            v98.receiver = v62;
            v98.super_class = v61;
            v63 = objc_msgSendSuper2(&v98, sel_init);
            v64 = *((*v53 & *v21) + 0x98);
            v65 = *(v21 + v64);
            *(v21 + v64) = v63;

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            v66 = v51;
            v67 = v58;
          }

          else
          {

            swift_unknownObjectRelease();
            v66 = v51;
            v67 = v50;
          }

          sub_1D7679EA4(v66, v67);
          goto LABEL_20;
        }

        if (qword_1EE0AF008 != -1)
        {
          swift_once();
        }

        v90 = qword_1EE0AF010;
        v77 = sub_1D7704590();
        sub_1D766DF6C(0);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_1D7708FE0;
        v79 = (v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x68));
        v80 = *v79;
        v81 = v79[1];
        *(v78 + 56) = MEMORY[0x1E69E6158];
        *(v78 + 64) = sub_1D7668854();
        *(v78 + 32) = v80;
        *(v78 + 40) = v81;

        sub_1D7703ED0("Failed to load video representation. placement=%{public}@", 57, 2, &dword_1D7662000, v90, v77, v78);

        v82 = v91;
        sub_1D77037B0();
        v83 = sub_1D7703880();
        sub_1D769D8F0();
        v84 = swift_allocError();
        *v85 = v83;
        *(v85 + 8) = 0;
        (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
        Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v84, v13, *v79, v79[1], *(v94 + 1), *(v94 + 2));
        (v96[1])(v13, v11);
        (*(v97 + 56))(v16, 1, 1, v92);
        v86 = v93;
        v87 = v95;
        v95(v16);

        sub_1D7679EA4(v87, v86);
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EE0AF008 != -1)
        {
          swift_once();
        }

        v91 = qword_1EE0AF010;
        v68 = sub_1D7704590();
        sub_1D766DF6C(0);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1D7708FE0;
        v70 = (v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x68));
        v71 = *v70;
        v72 = v70[1];
        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = sub_1D7668854();
        *(v69 + 32) = v71;
        *(v69 + 40) = v72;

        sub_1D7703ED0("Failed to load promoted content info. placement=%{public}@", 58, 2, &dword_1D7662000, v91, v68, v69);

        sub_1D769D8F0();
        v73 = swift_allocError();
        *v74 = 0;
        *(v74 + 8) = 1;
        (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
        Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v73, v13, *v70, v70[1], *(v94 + 1), *(v94 + 2));
        (v96[1])(v13, v11);

        (*(v97 + 56))(v16, 1, 1, v92);
        v75 = v93;
        v76 = v95;
        v95(v16);
        sub_1D7679EA4(v76, v75);

        swift_unknownObjectRelease();
      }

      sub_1D76B6D54(v16, sub_1D76B6C94);
      return;
    }

LABEL_20:
  }
}

id sub_1D76B62AC(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_1D76B4FD4(sub_1D76B75F8, v5);

  v9[4] = nullsub_1;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7672F74;
  v9[3] = &block_descriptor_16_0;
  v7 = _Block_copy(v9);

  return v7;
}

id sub_1D76B63B4(uint64_t a1, uint64_t a2)
{
  sub_1D76B6C94(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76B7600(a1, v6, sub_1D76B6C94);
  v7 = sub_1D7702EE0();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_1D7702EB0();
    (*(v8 + 8))(v6, v7);
  }

  v10 = (*(a2 + 16))(a2, v9);

  return v10;
}

id VideoAdProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoAdProvider.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for VideoAdProvider(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D76B6618(char *a1, __n128 a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  sub_1D76B6D54(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)], type metadata accessor for PrerollAd);
  sub_1D76B6D54(&a1[*((*v4 & *a1) + 0x68)], type metadata accessor for PrerollAdPlacement);

  v6 = *((*v4 & *a1) + 0x78);
  v7 = *((v5 & v3) + 0x50);
  v8 = type metadata accessor for PrerollAdPlacement(255);
  v9 = *((v5 & v3) + 0x58);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = &protocol witness table for PrerollAdPlacement;
  v10 = type metadata accessor for AdRequest(0, v12);
  (*(*(v10 - 8) + 8))(&a1[v6], v10);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v4 & *a1) + 0x90)]);

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D76B685C()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 3)
    {
      if (v1 == 2)
      {
        return 0x646E6F636573;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6472696874;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x7473726966;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701736302;
  }
}

id sub_1D76B68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = MEMORY[0x1E69E7D40];
  v14 = *v7;
  v15 = *MEMORY[0x1E69E7D40];
  *&v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x98)] = 0;
  *&v7[*((*v13 & *v7) + 0xA0)] = 0;
  *&v7[*((*v13 & *v7) + 0xA8)] = 0;
  v16 = &v7[*((*v13 & *v7) + 0xB0)];
  *v16 = 0;
  v16[8] = 1;
  sub_1D76B7600(a1, &v7[*((*v13 & *v7) + 0x60)], type metadata accessor for PrerollAd);
  sub_1D76B7600(a2, &v7[*((*v13 & *v7) + 0x68)], type metadata accessor for PrerollAdPlacement);
  *&v7[*((*v13 & *v7) + 0x70)] = a3;
  v17 = *((*v13 & *v7) + 0x78);
  v18 = *((v15 & v14) + 0x50);
  v19 = type metadata accessor for PrerollAdPlacement(255);
  v20 = *((v15 & v14) + 0x58);
  v28[0] = v18;
  v28[1] = v19;
  v28[2] = v20;
  v28[3] = &protocol witness table for PrerollAdPlacement;
  v21 = type metadata accessor for AdRequest(0, v28);
  (*(*(v21 - 8) + 16))(&v7[v17], a4, v21);
  *&v7[*((*v13 & *v7) + 0x80)] = a5;
  *&v7[*((*v13 & *v7) + 0x88)] = a6;
  sub_1D7667C54(a7, &v7[*((*v13 & *v7) + 0x90)]);
  v27.receiver = v7;
  v27.super_class = type metadata accessor for VideoAdProvider(0, v18, v20, v22);
  v23 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_1D76B6D54(a2, type metadata accessor for PrerollAdPlacement);
  sub_1D76B6D54(a1, type metadata accessor for PrerollAd);
  return v23;
}

void sub_1D76B6C94(uint64_t a1)
{
  if (!qword_1EC9BD650)
  {
    sub_1D7702EE0();
    v1 = sub_1D77046B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9BD650);
    }
  }
}

uint64_t sub_1D76B6CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D76B6D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D76B6DB4()
{
  result = qword_1EC9BD658;
  if (!qword_1EC9BD658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9BD658);
  }

  return result;
}

uint64_t sub_1D76B6E60(uint64_t a1)
{
  result = type metadata accessor for PrerollAd(319);
  if (v3 <= 0x3F)
  {
    v8[4] = *(result - 8) + 64;
    result = type metadata accessor for PrerollAdPlacement(319);
    if (v4 <= 0x3F)
    {
      v5 = MEMORY[0x1E69E5D20] + 64;
      v8[5] = *(result - 8) + 64;
      v8[6] = MEMORY[0x1E69E5D20] + 64;
      v6 = *(a1 + 88);
      v8[0] = *(a1 + 80);
      v8[1] = result;
      v8[2] = v6;
      v8[3] = &protocol witness table for PrerollAdPlacement;
      result = type metadata accessor for AdRequest(319, v8);
      if (v7 <= 0x3F)
      {
        v8[7] = *(result - 8) + 64;
        v8[8] = "\b";
        v8[9] = v5;
        v8[10] = &unk_1D770D658;
        v8[11] = &unk_1D770D670;
        v8[12] = &unk_1D770D670;
        v8[13] = &unk_1D770D670;
        v8[14] = &unk_1D770D688;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D76B7600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D76B7668()
{
  result = qword_1EC9BD748;
  if (!qword_1EC9BD748)
  {
    sub_1D7702EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD748);
  }

  return result;
}

void sub_1D76B76C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D76970EC(0, v1, 0);
    v24 = a1 + 56;
    v3 = sub_1D77046F0();
    v4 = 0;
    v23 = v1;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(a1 + 32))
    {
      v7 = v3 >> 6;
      if ((*(v24 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_21;
      }

      v8 = *(a1 + 36);
      v9 = sub_1D77042B0();
      v12 = *(v25 + 16);
      v11 = *(v25 + 24);
      if (v12 >= v11 >> 1)
      {
        v21 = v10;
        v22 = v9;
        sub_1D76970EC((v11 > 1), v12 + 1, 1);
        v10 = v21;
        v9 = v22;
      }

      *(v25 + 16) = v12 + 1;
      v13 = v25 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v5 = 1 << *(a1 + 32);
      if (v3 >= v5)
      {
        goto LABEL_22;
      }

      v14 = *(v24 + 8 * v7);
      if ((v14 & (1 << v3)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v3 & 0x3F));
      if (v15)
      {
        v5 = __clz(__rbit64(v15)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v6 = v23;
      }

      else
      {
        v16 = v7 << 6;
        v17 = v7 + 1;
        v6 = v23;
        v18 = (a1 + 64 + 8 * v7);
        while (v17 < (v5 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_1D76B812C(v3, v8, 0);
            v5 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_1D76B812C(v3, v8, 0);
      }

LABEL_4:
      ++v4;
      v3 = v5;
      if (v4 == v6)
      {
        return;
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
  }
}