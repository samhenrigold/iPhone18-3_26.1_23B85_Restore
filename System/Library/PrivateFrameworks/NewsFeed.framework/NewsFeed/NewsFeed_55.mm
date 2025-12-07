unint64_t sub_1D603134C()
{
  result = qword_1EDF153B8;
  if (!qword_1EDF153B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153B8);
  }

  return result;
}

unint64_t sub_1D60313A4()
{
  result = qword_1EDF153C8;
  if (!qword_1EDF153C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153C8);
  }

  return result;
}

unint64_t sub_1D60313FC()
{
  result = qword_1EC8828F0;
  if (!qword_1EC8828F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828F0);
  }

  return result;
}

unint64_t sub_1D6031454()
{
  result = qword_1EC8828F8;
  if (!qword_1EC8828F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828F8);
  }

  return result;
}

uint64_t SharingActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::OpaquePointer_optional __swiftcall FCPuzzlesConfiguration.leaderboardDifficultyLevels(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = [v2 puzzleTypeLeaderboards];
  sub_1D5B5A498(0, &qword_1EDF04448, 0x1E69B5538);
  v6 = sub_1D7261D3C();

  if (*(v6 + 16))
  {
    v7 = sub_1D5B69D90(countAndFlagsBits, object);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = [v9 leaderboards];
      sub_1D5B5A498(0, &qword_1EDF044E0, 0x1E69B5510);
      v11 = sub_1D726267C();

      if (v11 >> 62)
      {
LABEL_24:
        v12 = sub_1D7263BFC();
        if (v12)
        {
LABEL_5:
          v13 = 0;
          v14 = MEMORY[0x1E69E7CC0];
          do
          {
            v15 = v13;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x1DA6FB460](v15, v11);
              }

              else
              {
                if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_23;
                }

                v16 = *(v11 + 8 * v15 + 32);
              }

              v17 = v16;
              v13 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

              v18 = [v16 difficulty];
              if (v18)
              {
                break;
              }

              ++v15;
              if (v13 == v12)
              {
                goto LABEL_26;
              }
            }

            v25 = v9;
            v19 = v18;
            v20 = [v18 integerValue];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1D698BE40(0, *(v14 + 2) + 1, 1, v14);
            }

            v22 = *(v14 + 2);
            v21 = *(v14 + 3);
            if (v22 >= v21 >> 1)
            {
              v14 = sub_1D698BE40((v21 > 1), v22 + 1, 1, v14);
            }

            *(v14 + 2) = v22 + 1;
            *&v14[8 * v22 + 32] = v20;
            v9 = v25;
          }

          while (v13 != v12);
          goto LABEL_26;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_5;
        }
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_26:

      goto LABEL_27;
    }
  }

  v14 = 0;
LABEL_27:
  v24 = v14;
  result.value._rawValue = v24;
  result.is_nil = v23;
  return result;
}

void sub_1D6031858(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697461726F636564 && a2 == 0xEB00000000736E6FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D60318E4(uint64_t a1)
{
  v2 = sub_1D5C4C500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6031920(uint64_t a1)
{
  v2 = sub_1D5C4C500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D6031990(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5CF7F4C(a1, v7, *v2);
  return result;
}

unint64_t sub_1D60319FC()
{
  result = qword_1EC882900[0];
  if (!qword_1EC882900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC882900);
  }

  return result;
}

double FeedItemFilterMatcherType.wrap<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v6, v13);
  FeedItemFilterWrapperMatcher.init(matcher:translator:)(v15, a1, a2, a4, a3, a5, a6);

  return result;
}

void sub_1D6031B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatObject(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_1D6032A5C(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6031BFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v55 = *(a3 + 16);
  v60 = *(v55 - 8);
  v3 = *(v60 + 84);
  v56 = sub_1D725BD1C();
  v4 = *(v56 - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v54 = v6;
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v57 = v3;
  if (v7 <= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1D725891C() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D72608BC() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 84);
  v59 = *(v12 + 64);
  v15 = *(sub_1D725B76C() - 8);
  if (v7 - 1 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v7 - 1;
  }

  v17 = *(v4 + 64);
  if (v5)
  {
    v18 = v17 + 7;
  }

  else
  {
    v18 = v17 + 8;
  }

  v19 = *(v15 + 80);
  v20 = v19 | 7;
  v21 = *(v15 + 84);
  v22 = *(v15 + 64);
  if (v14)
  {
    v23 = v59;
  }

  else
  {
    v23 = v59 + 1;
  }

  v24 = *(v4 + 80);
  v25 = ((((((((((((((((v23 + ((v13 + ((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = ((v26 + 7 + ((v17 + v19 + ((((v19 + 176) & ~(v19 | 7)) + v24 + ((v26 + 7 + ((v19 + v26 - (((-49 - v19) | v19) + ((-17 - v19) | v20)) - 2) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v24)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 > v27)
  {
    v27 = ((((((((((((((((v23 + ((v13 + ((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v28 = v25 + (((v13 | v10) & 0xF8 ^ 0x1F8) & ((v13 | v10) + 48));
  if (v27 <= v28)
  {
    v27 = v28;
  }

  if (v27 <= 0xB3)
  {
    v29 = 179;
  }

  else
  {
    v29 = v27;
  }

  if (!a2)
  {
    return 0;
  }

  v30 = v24 | 7;
  v31 = (v24 | 7) + *(v60 + 64);
  v32 = v24 + 16;
  v33 = v17 + v24;
  v34 = v20 | v13 | v10 | v24;
  v35 = (v31 & ~(v24 | 7)) + v34 + ((((((((v18 + ((v17 + v24 + ((v17 + v24 + ((v24 + 16) & ~v24)) & ~v24)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v36 = a1;
  if (a2 <= v16)
  {
    goto LABEL_52;
  }

  v37 = ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v24 + 56) & ~v30) + v34 + 8) & ~v34) + (v35 & ~v34) + (((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v38 = 8 * v37;
  if (v37 > 3)
  {
    goto LABEL_31;
  }

  v41 = ((a2 - v16 + ~(-1 << v38)) >> v38) + 1;
  if (HIWORD(v41))
  {
    v39 = *(a1 + v37);
    if (v39)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (v41 <= 0xFF)
    {
      if (v41 < 2)
      {
        goto LABEL_52;
      }

LABEL_31:
      v39 = *(a1 + v37);
      if (!*(a1 + v37))
      {
        goto LABEL_52;
      }

LABEL_39:
      v42 = (v39 - 1) << v38;
      if (v37 > 3)
      {
        v42 = 0;
      }

      if (v37)
      {
        if (v37 <= 3)
        {
          v43 = v37;
        }

        else
        {
          v43 = 4;
        }

        if (v43 > 2)
        {
          if (v43 == 3)
          {
            v44 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v44 = *a1;
          }
        }

        else if (v43 == 1)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }
      }

      else
      {
        v44 = 0;
      }

      return v16 + (v44 | v42) + 1;
    }

    v39 = *(a1 + v37);
    if (*(a1 + v37))
    {
      goto LABEL_39;
    }
  }

LABEL_52:
  v45 = ~v30;
  if (v8 < v7 - 1)
  {
    if ((v5 & 0x80000000) != 0)
    {
      v47 = (*(v4 + 48))((v24 + ((((a1 + v35) & ~v34) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & v45, v5, v56);
    }

    else
    {
      v46 = *(((a1 + v35) & ~v34) + 8);
      if (v46 >= 0xFFFFFFFF)
      {
        LODWORD(v46) = -1;
      }

      v47 = v46 + 1;
    }

    goto LABEL_67;
  }

  v48 = v57;
  if (v57 >= v7)
  {
    v51 = v55;
    v50 = *(v60 + 48);
    goto LABEL_61;
  }

  v49 = ~v24;
  v36 = ((v32 + ((a1 + v31) & v45)) & v49);
  if (v5 >= 0x7FFFFFFF)
  {
    v50 = *(v4 + 48);
    v48 = v5;
    v51 = v56;
LABEL_61:

    return v50(v36, v48, v51);
  }

  v52 = (v33 + ((v36 + v33) & v49)) & v49;
  if (v54 == v7)
  {
    v47 = (*(v4 + 48))(v52, v5, v56);
LABEL_67:
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v53 = *((v52 + v17 + (v5 == 0) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v53 >= 0xFFFFFFFF)
  {
    LODWORD(v53) = -1;
  }

  return (v53 + 1);
}

void sub_1D6032230(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v67 = *(a4 + 16);
  v72 = *(v67 - 8);
  v4 = *(v72 + 84);
  v66 = sub_1D725BD1C();
  v5 = *(v66 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v65 = v7;
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v68 = v4;
  if (v8 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1D725891C() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1D72608BC() - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 84);
  v71 = *(v13 + 64);
  v76 = 0;
  v16 = *(sub_1D725B76C() - 8);
  v69 = v8;
  v70 = v9;
  v17 = v8 - 1;
  v18 = v6;
  if (v8 - 1 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v8 - 1;
  }

  v20 = (v14 + ((((((((((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14;
  v21 = *(v5 + 64);
  if (v6)
  {
    v22 = *(v5 + 64);
  }

  else
  {
    v22 = v21 + 1;
  }

  v23 = *(v16 + 80);
  v24 = v23 | 7;
  v25 = *(v16 + 64);
  if (v15)
  {
    v26 = v71;
  }

  else
  {
    v26 = v71 + 1;
  }

  v27 = *(v16 + 84) == 0;
  v28 = *(v5 + 80);
  v29 = ((v14 | v11) & 0xF8 ^ 0x1F8) & ((v14 | v11) + 48);
  v30 = (v28 | 7) + *(v72 + 64);
  v31 = v28 + 16;
  v32 = v21 + v28;
  v33 = v22 + ((v21 + v28 + ((v21 + v28 + ((v28 + 16) & ~v28)) & ~v28)) & ~v28);
  v34 = (v30 & ~(v28 | 7)) + 8;
  v35 = v24 | v14 | v11 | v28;
  v36 = v34 + v35 + ((((((((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = (((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v28 + 56) & ~(v28 | 7)) + v35 + 8) & ~v35;
  v38 = ((((((((((((((((v26 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v27)
  {
    ++v25;
  }

  v39 = ((v25 + 7 + ((v21 + v23 + ((((v23 + 176) & ~(v23 | 7)) + v28 + ((v25 + 7 + ((v23 + v25 - (((-49 - v23) | v23) + ((-17 - v23) | v24)) - 2) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v28)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v38 > v39)
  {
    v39 = v38;
  }

  if (v39 <= v38 + v29)
  {
    v39 = v38 + v29;
  }

  if (v39 <= 0xB3)
  {
    v39 = 179;
  }

  v40 = v37 + 8 + (v36 & ~v35) + (((v39 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  if (a3 > v19)
  {
    if (v40 <= 3)
    {
      v42 = ((a3 - v19 + ~(-1 << (8 * v40))) >> (8 * v40)) + 1;
      if (HIWORD(v42))
      {
        v41 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v41 = v43;
        }

        else
        {
          v41 = 0;
        }
      }
    }

    else
    {
      v41 = 1;
    }

    v76 = v41;
  }

  if (v19 < a2)
  {
    v44 = ~v19 + a2;
    if (v40 < 4)
    {
      v45 = (v44 >> (8 * v40)) + 1;
      if (v40)
      {
        v47 = v44 & ~(-1 << (8 * v40));
        bzero(a1, v40);
        if (v40 != 3)
        {
          v48 = v76;
          if (v40 == 2)
          {
            *a1 = v47;
            if (v76 <= 1)
            {
              goto LABEL_83;
            }
          }

          else
          {
            *a1 = v44;
            if (v76 <= 1)
            {
LABEL_83:
              if (v48)
              {
                a1[v40] = v45;
              }

              return;
            }
          }

          goto LABEL_49;
        }

        *a1 = v47;
        a1[2] = BYTE2(v47);
      }
    }

    else
    {
      bzero(a1, v40);
      *a1 = v44;
      v45 = 1;
    }

    v48 = v76;
    if (v76 <= 1)
    {
      goto LABEL_83;
    }

LABEL_49:
    if (v48 == 2)
    {
      *&a1[v40] = v45;
    }

    else
    {
      *&a1[v40] = v45;
    }

    return;
  }

  v46 = a1;
  if (v76 > 1)
  {
    if (v76 != 2)
    {
      *&a1[v40] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *&a1[v40] = 0;
  }

  else if (v76)
  {
    a1[v40] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  v49 = ~(v28 | 7);
  if (v70 >= v17)
  {
    if (v70 < a2)
    {
      v50 = v34 + ((((((((v33 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8);
      if (!v50)
      {
        return;
      }

      v54 = v70;
LABEL_69:
      v52 = ~v54 + a2;
      goto LABEL_92;
    }

    if (v68 >= v69)
    {
      v58 = v67;
      v59 = *(v72 + 56);
      v60 = a1;
      v61 = a2;
      v18 = v68;
    }

    else
    {
      v46 = (&a1[v30] & v49);
      if (a2 > v69)
      {
        v56 = (((((((v33 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
        v50 = (v56 + 8);
        if (v56 == -8)
        {
          return;
        }

        v54 = v69;
        goto LABEL_69;
      }

      v62 = ~v28;
      v60 = (&v46[v31] & v62);
      if (v18 < 0x7FFFFFFF)
      {
        v60 = ((v32 + (&v60[v32] & v62)) & v62);
        if (v65 != v69)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v64 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v64 = a2 - 1;
          }

          *(&v60[v22 + 7] & 0xFFFFFFFFFFFFFFF8) = v64;
          return;
        }

        v59 = *(v5 + 56);
        v61 = a2 + 1;
      }

      else
      {
        v59 = *(v5 + 56);
        v61 = a2;
      }

      v58 = v66;
    }

    v59(v60, v61, v18, v58);
    return;
  }

  v46 = (&a1[v36] & ~v35);
  v50 = v37 + 8 + (((v39 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8);
  if (v17 >= a2)
  {
    if (a2 < v69)
    {
      v55 = a2 + 1;
      if ((v18 & 0x80000000) != 0)
      {
        v63 = *(v5 + 56);

        v63((v28 + ((v46 + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & v49, v55);
      }

      else if ((v55 & 0x80000000) != 0)
      {
        *(v46 + 1) = 0;
        *(v46 + 2) = 0;
        v46[24] = 0;
        *v46 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v46 + 1) = a2;
      }

      return;
    }

    if (!v50)
    {
      return;
    }

    if (v50 <= 3)
    {
      v57 = ~(-1 << (8 * (v37 + 8 + (((v39 & 0xF8) + 31) & 0xF8))));
    }

    else
    {
      v57 = -1;
    }

    v52 = v57 & (a2 - v69);
LABEL_92:
    bzero(v46, v50);
    goto LABEL_93;
  }

  if (v50 <= 3)
  {
    v51 = ~(-1 << (8 * (v37 + 8 + (((v39 & 0xF8) + 31) & 0xF8))));
  }

  else
  {
    v51 = -1;
  }

  if (v50)
  {
    v52 = v51 & (a2 - v69);
    if (v50 <= 3)
    {
      v53 = v37 + 8 + (((v39 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8);
    }

    else
    {
      v53 = 4;
    }

    bzero(v46, v50);
    if (v53 <= 2)
    {
      if (v53 == 1)
      {
        *v46 = v52;
      }

      else
      {
        *v46 = v52;
      }

      return;
    }

    if (v53 == 3)
    {
      *v46 = v52;
      v46[2] = BYTE2(v52);
      return;
    }

LABEL_93:
    *v46 = v52;
  }
}

void sub_1D6032A5C(uint64_t a1)
{
  if (!qword_1EC890010)
  {
    type metadata accessor for DebugFormatCacheFile(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC890010);
    }
  }
}

uint64_t sub_1D6032AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69466568636163 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D6032B84(char a1)
{
  if (a1)
  {
    return 0x6C69466568636163;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_1D6032BBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v15 = a2;
  v16 = v5;
  type metadata accessor for DebugFormatObject.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v19 = 0;
  type metadata accessor for FormatObject(0, v16, v6, v12);
  swift_getWitnessTable();
  v13 = v17;
  sub_1D726443C();
  if (!v13)
  {
    v18 = 1;
    type metadata accessor for DebugFormatCacheFile(0);
    sub_1D60333B4(qword_1EC882990, &unk_1D7305D80);
    sub_1D72643BC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6032DCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  sub_1D6032A5C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FormatObject(0, a2, a3, v10);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v11);
  v38 = &v33 - v12;
  type metadata accessor for DebugFormatObject.CodingKeys(255, a2, a3, v13);
  swift_getWitnessTable();
  v41 = sub_1D726435C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v14);
  v16 = &v33 - v15;
  v18 = type metadata accessor for DebugFormatObject(0, a2, a3, v17);
  v34 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v42;
  sub_1D7264B0C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v21;
  v42 = v18;
  v25 = v36;
  v24 = v37;
  v44 = 0;
  v26 = v40;
  swift_getWitnessTable();
  v27 = v38;
  sub_1D726431C();
  v28 = *(v25 + 32);
  v33 = v23;
  v28(v23, v27, v26);
  type metadata accessor for DebugFormatCacheFile(0);
  v43 = 1;
  sub_1D60333B4(&qword_1EC882988, &unk_1D7305DA8);
  sub_1D726427C();
  (*(v39 + 8))(v16, v41);
  v29 = v42;
  v30 = v33;
  sub_1D6033350(v24, &v33[*(v42 + 36)]);
  v31 = v34;
  (*(v34 + 16))(v35, v30, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v31 + 8))(v30, v29);
}

uint64_t sub_1D6033228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6032AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6033258(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D60332AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6033350(uint64_t a1, uint64_t a2)
{
  sub_1D6032A5C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60333B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugFormatCacheFile(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id FeedLayoutFailure.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t FeedLayoutFailure.explanation.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *sub_1D60334E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DE28, &protocol descriptor for UserActionReportProcessorType, 1);
  result = sub_1D725AACC();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x1EEE9AC00](v2, v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for UserActionObservationManager();
    v16[3] = v8;
    v16[4] = &off_1F51C5A20;
    v16[0] = v7;
    type metadata accessor for UserActionsCommandHandler();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x1EEE9AC00](v10, v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_1F51C5A20;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D60336F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EDF2D128[0])
  {
    v4 = type metadata accessor for SaveCommandContext(0, &type metadata for SaveContent, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_1EDF2D128);
    }
  }
}

uint64_t type metadata accessor for FormatJsonKeyValue(uint64_t a1)
{
  result = qword_1EDF10420;
  if (!qword_1EDF10420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D60337B4(uint64_t a1)
{
  result = type metadata accessor for FormatJson(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static FormatDateTime.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 62 != 2)
      {
        goto LABEL_25;
      }

      if (*((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
      {
        v9 = sub_1D72646CC();
        sub_1D5F33D5C(v3);
        sub_1D5F33D5C(v2);
        goto LABEL_12;
      }

      sub_1D5F33D5C(v3);
      sub_1D5F33D5C(v2);
      sub_1D5F33D8C(v2);
      v17 = v3;
    }

    else if (v2 == 0xC000000000000000)
    {
      if (v3 != 0xC000000000000000)
      {
        goto LABEL_25;
      }

      sub_1D5F33D8C(0xC000000000000000);
      v17 = 0xC000000000000000;
    }

    else if (v2 == 0xC000000000000008)
    {
      if (v3 != 0xC000000000000008)
      {
        goto LABEL_25;
      }

      sub_1D5F33D8C(0xC000000000000008);
      v17 = 0xC000000000000008;
    }

    else
    {
      if (v3 != 0xC000000000000010)
      {
        goto LABEL_25;
      }

      sub_1D5F33D8C(0xC000000000000010);
      v17 = 0xC000000000000010;
    }

    sub_1D5F33D8C(v17);
LABEL_30:
    v9 = 1;
    return v9 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_25;
    }

    v12 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
    sub_1D633A310(v12, v14);
    if ((v15 & 1) == 0)
    {
LABEL_26:
      sub_1D5F33D8C(v2);
      sub_1D5F33D8C(v3);
      goto LABEL_27;
    }

    *&v22 = v11;
    *&v19 = v13;
    sub_1D5F33D5C(v11);
    sub_1D5F33D5C(v13);
    v16 = static FormatDateTime.== infix(_:_:)(&v22, &v19);
    sub_1D5F33D8C(v13);
    sub_1D5F33D8C(v11);
    sub_1D5F33D8C(v2);
    sub_1D5F33D8C(v3);
    if ((v16 & 1) == 0)
    {
LABEL_27:
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_30;
  }

  if (v3 >> 62)
  {
LABEL_25:
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
    goto LABEL_26;
  }

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v22 = *(v2 + 16);
  v23 = v6;
  v24 = v5;
  v19 = *(v3 + 16);
  v20 = v7;
  v21 = v8;
  sub_1D5F33D5C(v3);
  sub_1D5F33D5C(v2);
  v9 = _s8NewsFeed21FormatDateTimeBindingO2eeoiySbAC_ACtFZ_0(&v22, &v19);
LABEL_12:
  sub_1D5F33D8C(v2);
  sub_1D5F33D8C(v3);
  return v9 & 1;
}

void sub_1D6033ABC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v92 = a1;
  v95 = a2;
  sub_1D5B7B374(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v88 - v6;
  v8 = sub_1D725891C();
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v88 - v26;
  sub_1D5B7B374(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v88 - v30;
  v32 = *v3;
  v33 = *v3 >> 62;
  if (v33 <= 1)
  {
    if (!v33)
    {
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);
      v36 = *(v32 + 32);
      v37 = *(v32 + 40);
      v38 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v38 - 8) + 56))(v31, 1, 1, v38);
      sub_1D5D27950(v34, v35, v36, v37);
      v39 = v96;
      sub_1D6F44504(v92, v34, v35, v36, v37, v27);
      v40 = v95;
      if (v39)
      {
        sub_1D5B879C0(v31, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
        sub_1D5D28C84(v34, v35, v36, v37);
      }

      else
      {
        sub_1D5D28C84(v34, v35, v36, v37);
        sub_1D5C8E028(0);
        v65 = v64;
        v66 = swift_allocBox();
        v68 = v67;
        (*(v93 + 32))(v67, v27, v94);
        *(v68 + *(v65 + 36)) = MEMORY[0x1E69E7CC0];
        *v40 = v66 | 0x2000000000000000;
        v40[1] = 0;
        v69 = type metadata accessor for FormatOptionsNodeStatementResult(0);
        sub_1D5EA3AFC(v31, v40 + *(v69 + 24));
        (*(*(v69 - 8) + 56))(v40, 0, 1, v69);
      }

      return;
    }

    v57 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F33D5C(v57);
    sub_1D5F33D5C(v57);
    v58 = v96;
    sub_1D6F41FBC(v92, v57, v7);
    v96 = v58;
    if (v58)
    {

      sub_1D5F33D8C(v57);
      sub_1D5F33D8C(v57);
      return;
    }

    v70 = sub_1D5F33D8C(v57);
    v72 = v93;
    v71 = v94;
    if ((*(v93 + 48))(v7, 1, v94, v70) != 1)
    {
      v79 = *(v72 + 32);
      v90 = v72 + 32;
      v91 = v79;
      v79(v23, v7, v71);
      v92 = type metadata accessor for FormatOptionsNodeStatementResult(0);
      v80 = *(v92 + 24);
      v81 = type metadata accessor for FormatVersionRequirement(0);
      v82 = v95;
      (*(*(v81 - 8) + 56))(v95 + v80, 1, 1, v81);
      sub_1D5C8E028(0);
      v89 = v83;
      v84 = swift_allocBox();
      v86 = v85;
      (*(v72 + 16))(v19, v23, v71);

      v87 = sub_1D5F33D8C(v57);
      (*(v72 + 8))(v23, v71, v87);
      v91(v86, v19, v71);
      *(v86 + *(v89 + 36)) = MEMORY[0x1E69E7CC0];
      *v82 = v84 | 0x2000000000000000;
      v82[1] = 1;
      (*(*(v92 - 8) + 56))(v82, 0, 1, v92);
      return;
    }

    sub_1D5F33D8C(v57);
    sub_1D5B879C0(v7, &qword_1EDF45B00, MEMORY[0x1E6969530]);
LABEL_18:
    v73 = type metadata accessor for FormatOptionsNodeStatementResult(0);
    (*(*(v73 - 8) + 56))(v95, 1, 1, v73);
    return;
  }

  if (v33 == 2)
  {
    v41 = qword_1EDF272B0;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = qword_1EDFFCAA0;
    v43 = sub_1D726203C();

    v44 = [v42 dateFromString_];

    if (v44)
    {
      sub_1D72588BC();

      v45 = *(v93 + 32);
      v46 = v11;
      v47 = v94;
      v45(v15, v46, v94);
      v48 = type metadata accessor for FormatOptionsNodeStatementResult(0);
      v49 = *(v48 + 24);
      v50 = type metadata accessor for FormatVersionRequirement(0);
      v51 = v95;
      (*(*(v50 - 8) + 56))(v95 + v49, 1, 1, v50);
      sub_1D5C8E028(0);
      v53 = v52;
      v54 = swift_allocBox();
      v56 = v55;
      v45(v55, v15, v47);
      *&v56[*(v53 + 36)] = MEMORY[0x1E69E7CC0];
      *v51 = v54 | 0x2000000000000000;
      v51[1] = 1;
      (*(*(v48 - 8) + 56))(v51, 0, 1, v48);
      return;
    }

    goto LABEL_18;
  }

  v59 = type metadata accessor for FormatOptionsNodeStatementResult(0);
  v60 = *(v59 + 24);
  v61 = type metadata accessor for FormatVersionRequirement(0);
  v62 = v95;
  (*(*(v61 - 8) + 56))(v95 + v60, 1, 1, v61);
  v63 = (v93 + 32);
  if (v32 == 0xC000000000000000)
  {
    sub_1D72588CC();
  }

  else if (v32 == 0xC000000000000008)
  {
    sub_1D72587DC();
  }

  else
  {
    sub_1D72587BC();
  }

  sub_1D5C8E028(0);
  v75 = v74;
  v76 = swift_allocBox();
  v78 = v77;
  (*v63)(v77, v19, v94);
  *(v78 + *(v75 + 36)) = MEMORY[0x1E69E7CC0];
  *v62 = v76 | 0x2000000000000000;
  v62[1] = 1;
  (*(*(v59 - 8) + 56))(v62, 0, 1, v59);
}

uint64_t _s8NewsFeed20FormatDateTimeOffsetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1D633A310(*a1, *a2);
  if (v4)
  {
    v7 = v3;
    v8 = v2;
    sub_1D5F33D5C(v2);
    sub_1D5F33D5C(v3);
    v5 = static FormatDateTime.== infix(_:_:)(&v8, &v7);
    sub_1D5F33D8C(v3);
    sub_1D5F33D8C(v2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D6034404(uint64_t a1)
{
  result = sub_1D603442C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D603442C()
{
  result = qword_1EC882A18;
  if (!qword_1EC882A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A18);
  }

  return result;
}

unint64_t sub_1D60344C0()
{
  result = qword_1EDF328F8;
  if (!qword_1EDF328F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF328F8);
  }

  return result;
}

unint64_t sub_1D6034514()
{
  result = qword_1EDF11BA8;
  if (!qword_1EDF11BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11BA8);
  }

  return result;
}

unint64_t sub_1D6034568()
{
  result = qword_1EC882A20;
  if (!qword_1EC882A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A20);
  }

  return result;
}

unint64_t sub_1D60345BC(uint64_t a1)
{
  result = sub_1D60345E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60345E4()
{
  result = qword_1EC882A28;
  if (!qword_1EC882A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A28);
  }

  return result;
}

uint64_t sub_1D6034678(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60346CC()
{
  result = qword_1EDF2B358;
  if (!qword_1EDF2B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B358);
  }

  return result;
}

unint64_t sub_1D6034720()
{
  result = qword_1EDF0F158;
  if (!qword_1EDF0F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F158);
  }

  return result;
}

unint64_t sub_1D6034774()
{
  result = qword_1EC882A30;
  if (!qword_1EC882A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14FormatDateTimeO(void *a1)
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

double sub_1D6034814(void *a1)
{
  sub_1D6034EE8(0, &qword_1EC882A68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6034E3C();
  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D6034F4C();
  sub_1D6034FC0();
  sub_1D6035010();

  sub_1D72647EC();
  (*(v5 + 8))(v8, v4);

  return result;
}

uint64_t sub_1D6034998@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1D6034D2C(0);
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6034EE8(0, &qword_1EC882A50, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6034E3C();
  sub_1D7264B0C();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_1D6034E90();
    sub_1D726431C();
    v16 = sub_1D725A74C();
    (*(v15 + 8))(v8, v5);
    (*(v14 + 8))(v13, v10);
    *v18 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6034BF8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6034C84(uint64_t a1)
{
  v2 = sub_1D6034E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6034CC0(uint64_t a1)
{
  v2 = sub_1D6034E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6034D2C(uint64_t a1)
{
  if (!qword_1EC882A38)
  {
    sub_1D6034D94();
    sub_1D6034DE8();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882A38);
    }
  }
}

unint64_t sub_1D6034D94()
{
  result = qword_1EC882A40;
  if (!qword_1EC882A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A40);
  }

  return result;
}

unint64_t sub_1D6034DE8()
{
  result = qword_1EC882A48;
  if (!qword_1EC882A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A48);
  }

  return result;
}

unint64_t sub_1D6034E3C()
{
  result = qword_1EC882A58;
  if (!qword_1EC882A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A58);
  }

  return result;
}

unint64_t sub_1D6034E90()
{
  result = qword_1EC882A60;
  if (!qword_1EC882A60)
  {
    sub_1D6034D2C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A60);
  }

  return result;
}

void sub_1D6034EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6034E3C();
    v7 = a3(a1, &type metadata for SportsStandingRecordEmbed.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6034F4C()
{
  result = qword_1EC882A70;
  if (!qword_1EC882A70)
  {
    sub_1D6034EE8(255, &qword_1EC882A68, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A70);
  }

  return result;
}

void sub_1D6034FC0()
{
  if (!qword_1EC882A78)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882A78);
    }
  }
}

unint64_t sub_1D6035010()
{
  result = qword_1EC882A80;
  if (!qword_1EC882A80)
  {
    sub_1D6034FC0();
    sub_1D6034DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A80);
  }

  return result;
}

unint64_t sub_1D603509C()
{
  result = qword_1EC882A88;
  if (!qword_1EC882A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A88);
  }

  return result;
}

unint64_t sub_1D60350F4()
{
  result = qword_1EC882A90;
  if (!qword_1EC882A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A90);
  }

  return result;
}

unint64_t sub_1D603514C()
{
  result = qword_1EC882A98;
  if (!qword_1EC882A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882A98);
  }

  return result;
}

uint64_t FollowingPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FollowingManager.toggleFollowing(for:autoEnableNotifications:)(void *a1, char a2)
{
  if ([*(v2 + 24) hasSubscriptionToTag_])
  {

    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {

    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1, 0);
  }
}

uint64_t FollowingManager.unfollow(tag:)(void *a1)
{
  [*(v1 + 24) removeSubscriptionToTag_];
  [a1 isSports];
  sub_1D5C3978C(0, &qword_1EC882AA0, &type metadata for FollowingNotificationContext.Result);
  swift_allocObject();
  sub_1D725BB1C();

  sub_1D5C3978C(0, &qword_1EC882AA0, &type metadata for FollowingNotificationContext.Result);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t FollowingManager.follow(tag:autoEnableNotifications:source:)(void *a1, char a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v7 = v3[3];
  v15[0] = 0;
  [v7 addSubscriptionToTag:a1 notificationsEnabled:0 error:v15];
  if (!v15[0])
  {
    return sub_1D60355F4(a1, a2 & 1, a3);
  }

  v8 = v15[0];
  if ([v8 code] == 1)
  {
    __swift_project_boxed_opaque_existential_1(v3 + 4, v3[7]);
    v9 = sub_1D725DA4C();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 rootViewController];

      if (v11)
      {
        v12 = sub_1D7262FCC();

        v15[3] = &type metadata for AlertSubscriptionLimitReached;
        v15[4] = sub_1D6035850();
        sub_1D725F60C();
        swift_allocObject();
        sub_1D725F5CC();
        sub_1D725F5DC();
      }
    }
  }

  sub_1D5C3978C(0, &qword_1EC882AA0, &type metadata for FollowingNotificationContext.Result);
  swift_allocObject();
  v13 = sub_1D725BAFC();

  return v13;
}

uint64_t FollowingManager.toggleFollowing(for:autoEnableNotifications:source:)(void *a1, char a2, uint64_t a3)
{
  if ([*(v3 + 24) hasSubscriptionToTag_])
  {

    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {

    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1, a3);
  }
}

uint64_t sub_1D60355F4(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 tagType];
  if (v5 == 1)
  {
    [a1 isSports];
  }

  else if (v5 == 2)
  {
    MEMORY[0x1EEE9AC00](2, v6);
    v7 = a2 & 1;
    sub_1D725BDCC();
    v8 = sub_1D725A95C();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v7;
    swift_unknownObjectRetain();
    sub_1D725BA9C();

    v10 = sub_1D725B92C();
    v11 = sub_1D725BACC();

    return v11;
  }

  sub_1D5C3978C(0, &qword_1EC882AA0, &type metadata for FollowingNotificationContext.Result);
  swift_allocObject();
  return sub_1D725BB1C();
}

unint64_t sub_1D6035850()
{
  result = qword_1EC882AA8;
  if (!qword_1EC882AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882AA8);
  }

  return result;
}

uint64_t sub_1D60358A4(void *a1, void *a2, char a3, uint64_t a4)
{
  if (a1[2])
  {
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    swift_unknownObjectRetain();
    v7 = sub_1D725DA4C();
    if (v7 && (v8 = v7, v9 = [v7 rootViewController], v8, v9))
    {
      v10 = sub_1D7262FCC();
    }

    else
    {
      v10 = 0;
    }

    swift_getObjectType();
    v11 = sub_1D703B1F0(a2, v10, a3 & 1, a4);
    swift_unknownObjectRelease();

    return v11;
  }

  else
  {
    sub_1D5C3978C(0, &qword_1EC8997B0, &type metadata for NotificationPromptResult);
    swift_allocObject();

    return sub_1D725BB1C();
  }
}

uint64_t sub_1D60359E0(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  if (*a1 == 1)
  {
    v6 = *(a2 + 24);
    v10[0] = 0;
    if (![v6 setNotificationsEnabled:1 forTag:a3 error:v10])
    {
      v9 = v10[0];
      sub_1D725829C();

      return swift_willThrow();
    }

    v7 = v10[0];
  }

  if (a4)
  {
    LOBYTE(v10[0]) = 0;
  }

  else
  {
    LOBYTE(v10[0]) = 0x2040103u >> (8 * v5);
  }

  sub_1D5C3978C(0, &qword_1EC882AA0, &type metadata for FollowingNotificationContext.Result);
  swift_allocObject();
  return sub_1D725BB1C();
}

double sub_1D6035AF4(uint64_t a1)
{
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDFFC828;
  v2 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D725C30C("Failed to enable notifications, error=%{public}@", 48, 2, &dword_1D5B42000, v1, v2, v3);

  return result;
}

uint64_t FollowingManager.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t FollowingManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1D6035C9C()
{
  result = qword_1EC882AB0;
  if (!qword_1EC882AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882AB0);
  }

  return result;
}

uint64_t sub_1D6035CF0(void *a1, char a2)
{
  if ([*(*v2 + 24) hasSubscriptionToTag_])
  {
    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {
    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1, 0);
  }
}

uint64_t sub_1D6035D54(void *a1, char a2, uint64_t a3)
{
  if ([*(*v3 + 24) hasSubscriptionToTag_])
  {
    return FollowingManager.unfollow(tag:)(a1);
  }

  else
  {
    return FollowingManager.follow(tag:autoEnableNotifications:source:)(a1, a2 & 1, a3);
  }
}

NewsFeed::PuzzleStatisticType_optional __swiftcall PuzzleStatisticType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PuzzleStatisticType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x53747365676E6F6CLL;
    v7 = 0x5373656C7A7A7570;
    v8 = 0x5374636566726570;
    if (v1 != 3)
    {
      v8 = 0x74615265766C6F73;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0x53746E6572727563;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 9)
    {
      v2 = 0x53646570756F7267;
    }

    if (v1 == 8)
    {
      v2 = 0xD00000000000001DLL;
    }

    v3 = 0xD00000000000001CLL;
    v4 = 0xD00000000000001CLL;
    if (v1 != 6)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (v1 != 5)
    {
      v3 = v4;
    }

    if (*v0 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D60360FC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694EF50(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D603614C(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694EF50(v4, v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D603619C@<X0>(unint64_t *a1@<X8>)
{
  result = PuzzleStatisticType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6036274@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6043B20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D603629C(uint64_t a1)
{
  v2 = sub_1D5D124C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60362D8(uint64_t a1)
{
  v2 = sub_1D5D124C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleTypeStats.debugDescription.getter()
{
  v10 = *(v0 + 56);
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73C6490);
  sub_1D5B81B04();
  v1 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73C64C0);
  v2 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73C64E0);
  v3 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73C6500);
  v4 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73C6520);
  v5 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73C6540);
  v6 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](0x736B616572747320, 0xEA0000000000203ALL);
  v7 = type metadata accessor for PuzzleStreak(0);
  v8 = MEMORY[0x1DA6F9D20](v10, v7);
  MEMORY[0x1DA6F9910](v8);

  return 0;
}

unint64_t sub_1D60365B0()
{
  result = qword_1EC882AC0;
  if (!qword_1EC882AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PuzzleStatisticType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PuzzleStatisticType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of PuzzleStatsServiceType.updateStats(verbose:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.puzzleStatistic(for:puzzleType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64680;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.puzzleStatistics(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6036AEC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D6036AEC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.hasSolvedPuzzles(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5E97EA8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.resetAccumulatedStats()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PuzzleStatsServiceType.debugStats(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D6036F6C(void *a1)
{
  v3 = v1;
  sub_1D5D12440(0, &qword_1EC882B60, sub_1D6044E4C, &type metadata for PuzzleTypeDebugStats.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6044E4C();
  sub_1D7264B5C();
  v17 = *v3;
  v16 = 0;
  sub_1D5D125C4(0);
  sub_1D5D1C3F4();
  sub_1D726443C();
  if (!v2)
  {
    v17 = v3[1];
    v16 = 1;
    sub_1D726443C();
    v17 = v3[2];
    v16 = 2;
    sub_1D5D127FC(0, &unk_1EDF055A0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6530], MEMORY[0x1E69E7370]);
    sub_1D5D12850(&qword_1EDF05598, MEMORY[0x1E69E7368], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1D726443C();
    v17 = v3[3];
    v16 = 3;
    sub_1D5D127FC(0, &qword_1EDF055F0, MEMORY[0x1E69E7360], MEMORY[0x1E69E63B0], MEMORY[0x1E69E7370]);
    v13 = v12;
    v14 = sub_1D5D128D4(&qword_1EDF055E8, MEMORY[0x1E69E7368], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    v15[2] = v13;
    sub_1D726443C();
    v15[1] = v14;
    v17 = v3[4];
    v16 = 4;
    sub_1D726443C();
    v17 = v3[5];
    v16 = 5;
    sub_1D726443C();
    v17 = v3[6];
    v16 = 6;
    sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B99580(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6037364()
{
  v1 = *v0;
  v2 = 0x4264657472617473;
  v3 = 0x5365676172657661;
  if (v1 != 5)
  {
    v3 = 0x736B6165727473;
  }

  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x5374736568676968;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D6037474@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60442A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D603749C(uint64_t a1)
{
  v2 = sub_1D6044E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60374D8(uint64_t a1)
{
  v2 = sub_1D6044E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6037514@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6044504(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D603757C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D603768C, v1, 0);
}

uint64_t sub_1D603768C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D60376F4()
{
  v13 = v0;
  v1 = v0[51];
  (*(v0[44] + 8))(v0[47], v0[43]);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1D726497C();
    v9 = sub_1D5BC5100(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: error updating stats: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D60378D0()
{
  v13 = v0;
  v1 = v0[56];
  (*(v0[44] + 8))(v0[47], v0[43]);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1D726497C();
    v9 = sub_1D5BC5100(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: error updating stats: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D6037AAC()
{
  v41 = v0;
  v1 = *(v0 + 520);

  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 520);
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315394;
    v10 = sub_1D5BC5100(v7, v6, &v40);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_1D726497C();
    v13 = sub_1D5BC5100(v11, v12, &v40);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: error updating stats for %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v0 + 520);

    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 480) + 1;
  if (v15 == *(v0 + 472))
  {

    v16 = *(v0 + 336);
    v17 = *(v0 + 272);
    v18 = *(v17 + 280);
    v19 = *(v17 + 288);
    __swift_project_boxed_opaque_existential_1((v17 + 256), v18);
    (*(v19 + 24))(v16, v18, v19);
    *(v17 + 312) = 0;
    v20 = sub_1D725C3FC();
    v21 = sub_1D7262EDC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 376);
    v24 = *(v0 + 344);
    v25 = *(v0 + 352);
    v26 = *(v0 + 336);
    if (v22)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D5B42000, v20, v21, "PuzzleStatsService: completed updating stats", v27, 2u);
      MEMORY[0x1DA6FD500](v27, -1, -1);
    }

    sub_1D5D12CE8(v26, type metadata accessor for PuzzleStatsState);
    (*(v25 + 8))(v23, v24);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    *(v0 + 480) = v15;
    v30 = *(v0 + 440);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460]();
    }

    else
    {
      v31 = *(v30 + 8 * v15 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 488) = v31;
    v32 = [v31 identifier];
    v33 = sub_1D726207C();
    v35 = v34;

    *(v0 + 496) = v33;
    *(v0 + 504) = v35;
    v36 = swift_task_alloc();
    *(v0 + 512) = v36;
    *v36 = v0;
    v36[1] = sub_1D5D1AFF4;
    v37 = *(v0 + 376);
    v38 = *(v0 + 296);
    v39 = *(v0 + 532);

    return sub_1D5D12E18(v38, v31, v37, v39);
  }
}

uint64_t sub_1D6037EF4()
{
  sub_1D726290C();
  *(v0 + 120) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6037F88, v2, v1);
}

uint64_t sub_1D6037F88()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  v3 = sub_1D725881C();
  [v1 setPuzzleStatsStartDate_];

  return MEMORY[0x1EEE6DFA0](sub_1D6038024, v2, 0);
}

uint64_t sub_1D6038024()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v5[35];
  v7 = v5[36];
  __swift_project_boxed_opaque_existential_1(v5 + 32, v6);
  (*(v7 + 16))(v6, v7);
  v1(v2, v3);
  (*(v4 + 32))(v0[2], v0[11], v0[5]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D6038134()
{
  v1 = v0[59];
  v2 = v0[55];
  v3 = v0[53];
  v4 = v0[49];
  sub_1D5D12CE8(v0[45], sub_1D5B5B2A0);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6038290(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for PuzzleStatisticCategory(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  sub_1D60441D0(0);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 120) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D603838C, v3, 0);
}

uint64_t sub_1D603838C()
{
  v63 = v0;
  v1 = *(v0 + 120);
  if (v1 <= 4)
  {
    if (*(v0 + 120) > 1u)
    {
      if (v1 == 2)
      {
        sub_1D603E964(*(v0 + 24));
        v13 = *(v0 + 64);
        v15 = *(v0 + 16);
        v14 = *(v0 + 24);
        *v13 = v25;
        type metadata accessor for PuzzleStatisticValue(0);
      }

      else
      {
        if (v1 == 3)
        {
          sub_1D603EABC(*(v0 + 24));
          v13 = *(v0 + 56);
          v15 = *(v0 + 16);
          v14 = *(v0 + 24);
          *v13 = v16;
        }

        else
        {
          sub_1D603EC14(*(v0 + 24));
          v13 = *(v0 + 48);
          v15 = *(v0 + 16);
          v14 = *(v0 + 24);
          *v13 = v46;
          *(v13 + 8) = v47 & 1;
        }

        type metadata accessor for PuzzleStatisticValue(0);
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v15 = v14;
      v48 = type metadata accessor for PuzzleStatistic(0);
      sub_1D5D12DB0(v13, v15 + *(v48 + 20), type metadata accessor for PuzzleStatisticCategory);
      goto LABEL_32;
    }

    if (!*(v0 + 120))
    {
      sub_1D603EE1C(*(v0 + 24), *(v0 + 80));
      v21 = *(v0 + 80);
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      v24 = type metadata accessor for PuzzleStatistic(0);
      sub_1D5D12DB0(v21, v23 + *(v24 + 20), sub_1D60441D0);
      type metadata accessor for PuzzleStatisticValue(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v23 = v22;
LABEL_32:
      swift_unknownObjectRetain();

      v55 = *(v0 + 8);

      return v55();
    }

    v49 = swift_task_alloc();
    *(v0 + 88) = v49;
    *v49 = v0;
    v49[1] = sub_1D6038A98;
    v50 = *(v0 + 72);
    v51 = *(v0 + 24);

    return sub_1D603F108(v50, v51);
  }

  else
  {
    if (*(v0 + 120) <= 7u)
    {
      if (v1 == 5)
      {
        sub_1D603FFA0(*(v0 + 24), &v57);
        v2 = *(v0 + 16);
        v56 = *(v0 + 24);
        v26 = v57;
        v27 = v58;
        v28 = v59;
        v29 = v60;
        v30 = v61;
        v31 = v62;
        v32 = v2 + *(type metadata accessor for PuzzleStatistic(0) + 20);
        *v32 = v26;
        v32[8] = v27;
        type metadata accessor for PuzzleStatisticValue(0);
        swift_storeEnumTagMultiPayload();
        v33 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v34 = &v32[*(v33 + 20)];
        *v34 = v28;
        v34[8] = v29;
        swift_storeEnumTagMultiPayload();
        v35 = &v32[*(v33 + 24)];
        *v35 = v30;
        v35[8] = v31;
      }

      else
      {
        if (v1 == 6)
        {
          sub_1D6040100(*(v0 + 24), &v57);
        }

        else
        {
          sub_1D6040260(*(v0 + 24), &v57);
        }

        v2 = *(v0 + 16);
        v56 = *(v0 + 24);
        v3 = v57;
        v4 = v58;
        v5 = v59;
        v6 = v60;
        v7 = v61;
        v8 = v62;
        v9 = v2 + *(type metadata accessor for PuzzleStatistic(0) + 20);
        *v9 = v3;
        v9[8] = v4;
        type metadata accessor for PuzzleStatisticValue(0);
        swift_storeEnumTagMultiPayload();
        v10 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v11 = &v9[*(v10 + 20)];
        *v11 = v5;
        v11[8] = v6;
        swift_storeEnumTagMultiPayload();
        v12 = &v9[*(v10 + 24)];
        *v12 = v7;
        v12[8] = v8;
      }

      goto LABEL_31;
    }

    if (v1 == 8)
    {
      sub_1D60403C0(*(v0 + 24), &v57);
      v2 = *(v0 + 16);
      v56 = *(v0 + 24);
      v36 = v57;
      v37 = v58;
      v38 = v59;
      v39 = v60;
      v40 = v61;
      v41 = v62;
      v42 = v2 + *(type metadata accessor for PuzzleStatistic(0) + 20);
      *v42 = v36;
      v42[8] = v37;
      type metadata accessor for PuzzleStatisticValue(0);
      swift_storeEnumTagMultiPayload();
      v43 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
      v44 = &v42[*(v43 + 20)];
      *v44 = v38;
      v44[8] = v39;
      swift_storeEnumTagMultiPayload();
      v45 = &v42[*(v43 + 24)];
      *v45 = v40;
      v45[8] = v41;
LABEL_31:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v2 = v56;
      goto LABEL_32;
    }

    if (v1 == 9)
    {
      v17 = swift_task_alloc();
      *(v0 + 112) = v17;
      *v17 = v0;
      v17[1] = sub_1D6038EFC;
      v18 = *(v0 + 24);
      v19 = *(v0 + 16);

      return sub_1D603AC80(v19, v18);
    }

    else
    {
      v52 = swift_task_alloc();
      *(v0 + 104) = v52;
      *v52 = v0;
      v52[1] = sub_1D6038D6C;
      v53 = *(v0 + 24);
      v54 = *(v0 + 16);

      return sub_1D603908C(v54, v53);
    }
  }
}

uint64_t sub_1D6038A98()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1D6038CD0;
  }

  else
  {
    v4 = sub_1D6038BC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6038BC4()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v4 = type metadata accessor for PuzzleStatistic(0);
  sub_1D5D12DB0(v1, v3 + *(v4 + 20), sub_1D60441D0);
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v3 = v2;
  swift_unknownObjectRetain();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6038CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6038D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6038EFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D603908C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D6044204(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1D6044238(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for PuzzleLeaderboardResult(0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6039228, v2, 0);
}

uint64_t sub_1D6039228()
{
  v1 = *(v0 + 32);
  *(v0 + 128) = *(v1 + 240);
  v2 = *(v1 + 248);
  *(v0 + 136) = v2;
  *(v0 + 144) = swift_getObjectType();
  if ((*(v2 + 24))())
  {
    v3 = [*(v0 + 24) identifier];
    v4 = sub_1D726207C();
    v6 = v5;

    *(v0 + 152) = v4;
    *(v0 + 160) = v6;
    ObjectType = swift_getObjectType();
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_1D6039434;

    return FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)(0, ObjectType);
  }

  else
  {
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 16);
    v13 = type metadata accessor for PuzzleStatistic(0);
    (*(v10 + 56))(v12 + *(v13 + 20), 1, 1, v11);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v0 + 16) = *(v0 + 24);
    swift_unknownObjectRetain();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D6039434(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[4];
    v4[23] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D60395E0, v7, 0);
  }
}

void sub_1D60395E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = v10;
  v12 = *(v10 + 152);
  v11 = *(v10 + 160);
  v13 = [*(v10 + 184) puzzlesConfig];
  swift_unknownObjectRelease();
  v14._countAndFlagsBits = v12;
  v14._object = v11;
  v15 = FCPuzzlesConfiguration.leaderboardDifficultyLevels(for:)(v14);

  if (v15)
  {
    v16 = *(v10 + 176);
    v30 = v15;

    sub_1D6041FC0(&v30);
    if (v16)
    {

      return;
    }

    v17 = v30;
    *(v10 + 192) = v30;
    v18 = *(v17 + 2);
    *(v10 + 200) = v18;
    if (v18)
    {
      *(v10 + 208) = 0;
      if (!*(v17 + 2))
      {
        __break(1u);
        return;
      }

      v19 = *(v17 + 4);
      *(v10 + 216) = v19;
      *(v10 + 273) = 1;
      v20 = swift_task_alloc();
      *(v10 + 224) = v20;
      *v20 = v10;
      v20[1] = sub_1D6039800;
      v21 = *(v10 + 152);
      v22 = *(v10 + 160);
      v23 = *(v10 + 136);
      v24 = *(v10 + 88);
      v33 = *(v10 + 144);
      v34 = v23;
      v25 = (v10 + 273);
      v26 = v19;
      v27 = 0;
      goto LABEL_11;
    }
  }

  *(v10 + 272) = 1;
  v28 = swift_task_alloc();
  *(v10 + 240) = v28;
  *v28 = v10;
  v28[1] = sub_1D603A08C;
  v21 = *(v10 + 152);
  v22 = *(v10 + 160);
  v29 = *(v10 + 136);
  v24 = *(v10 + 80);
  v33 = *(v10 + 144);
  v34 = v29;
  v25 = (v10 + 272);
  v26 = 0;
  v27 = 1;
LABEL_11:

  PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v24, v21, v22, v26, v27, v25, 1, 10, a9, a10);
}

uint64_t sub_1D6039800()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 32);

    v4 = sub_1D603A648;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = sub_1D6039934;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

void sub_1D6039934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 96);
  v12 = *(v10 + 88);
  if ((*(*(v10 + 104) + 48))(v12, 1, v11) == 1)
  {
    v13 = sub_1D6044238;
    v14 = v12;
    goto LABEL_8;
  }

  v15 = *(v10 + 120);
  sub_1D5D12DB0(v12, v15, type metadata accessor for PuzzleLeaderboardResult);
  if (*(v15 + *(v11 + 24)) < 2)
  {
    v14 = *(v10 + 120);
    v13 = type metadata accessor for PuzzleLeaderboardResult;
LABEL_8:
    sub_1D5D12CE8(v14, v13);
    v21 = *(v10 + 208) + 1;
    if (v21 == *(v10 + 200))
    {
      v22 = *(v10 + 56);
      v23 = *(v10 + 64);
      v24 = *(v10 + 16);

      v25 = type metadata accessor for PuzzleStatistic(0);
      (*(v23 + 56))(v24 + *(v25 + 20), 1, 1, v22);
      type metadata accessor for PuzzleStatisticCategory(0);
      swift_storeEnumTagMultiPayload();
      **(v10 + 16) = *(v10 + 24);
      swift_unknownObjectRetain();

      v26 = *(v10 + 8);

      v26();
    }

    else
    {
      *(v10 + 208) = v21;
      v27 = *(v10 + 192);
      if (v21 >= *(v27 + 16))
      {
        __break(1u);
      }

      else
      {
        v28 = *(v27 + 8 * v21 + 32);
        *(v10 + 216) = v28;
        *(v10 + 273) = 1;
        v29 = swift_task_alloc();
        *(v10 + 224) = v29;
        *v29 = v10;
        v29[1] = sub_1D6039800;
        v30 = *(v10 + 152);
        v31 = *(v10 + 160);
        v32 = *(v10 + 88);

        PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v32, v30, v31, v28, 0, (v10 + 273), 1, 10, a9, a10);
      }
    }

    return;
  }

  v16 = swift_task_alloc();
  *(v10 + 232) = v16;
  *v16 = v10;
  v16[1] = sub_1D6039C5C;
  v17 = *(v10 + 216);
  v18 = *(v10 + 120);
  v19 = *(v10 + 48);
  v20 = *(v10 + 24);

  sub_1D6040520(v19, v20, v17, 0, v18);
}

uint64_t sub_1D6039C5C()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_1D603A88C;
  }

  else
  {
    v4 = sub_1D6039D94;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1D6039D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 56);
  v12 = *(v10 + 64);
  v13 = *(v10 + 48);
  sub_1D5D12CE8(*(v10 + 120), type metadata accessor for PuzzleLeaderboardResult);
  if ((*(v12 + 48))(v13, 1, v11) != 1)
  {
    v20 = *(v10 + 64);
    v19 = *(v10 + 72);
    v22 = *(v10 + 48);
    v21 = *(v10 + 56);
    v23 = *(v10 + 16);

    sub_1D5D12DB0(v22, v19, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v24 = v23 + *(type metadata accessor for PuzzleStatistic(0) + 20);
    sub_1D5D12DB0(v19, v24, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    (*(v20 + 56))(v24, 0, 1, v21);
    goto LABEL_5;
  }

  sub_1D5D12CE8(*(v10 + 48), sub_1D6044204);
  v14 = *(v10 + 208) + 1;
  if (v14 == *(v10 + 200))
  {
    v15 = *(v10 + 56);
    v16 = *(v10 + 64);
    v17 = *(v10 + 16);

    v18 = type metadata accessor for PuzzleStatistic(0);
    (*(v16 + 56))(v17 + *(v18 + 20), 1, 1, v15);
LABEL_5:
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v10 + 16) = *(v10 + 24);
    swift_unknownObjectRetain();

    v25 = *(v10 + 8);

    v25();
    return;
  }

  *(v10 + 208) = v14;
  v26 = *(v10 + 192);
  if (v14 >= *(v26 + 16))
  {
    __break(1u);
  }

  else
  {
    v27 = *(v26 + 8 * v14 + 32);
    *(v10 + 216) = v27;
    *(v10 + 273) = 1;
    v28 = swift_task_alloc();
    *(v10 + 224) = v28;
    *v28 = v10;
    v28[1] = sub_1D6039800;
    v29 = *(v10 + 152);
    v30 = *(v10 + 160);
    v31 = *(v10 + 88);

    PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v31, v29, v30, v27, 0, (v10 + 273), 1, 10, a9, a10);
  }
}

uint64_t sub_1D603A08C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    v4 = sub_1D603AAF4;
  }

  else
  {
    v3 = *(v2 + 32);

    v4 = sub_1D603A1B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603A1B8()
{
  v1 = v0[12];
  v2 = v0[10];
  if ((*(v0[13] + 48))(v2, 1, v1) == 1)
  {
    v3 = sub_1D6044238;
    v4 = v2;
LABEL_8:
    sub_1D5D12CE8(v4, v3);
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[2];
    v14 = type metadata accessor for PuzzleStatistic(0);
    (*(v11 + 56))(v13 + *(v14 + 20), 1, 1, v12);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    *v0[2] = v0[3];
    swift_unknownObjectRetain();

    v15 = v0[1];

    return v15();
  }

  v5 = v0[14];
  sub_1D5D12DB0(v2, v5, type metadata accessor for PuzzleLeaderboardResult);
  if (*(v5 + *(v1 + 24)) < 2)
  {
    v4 = v0[14];
    v3 = type metadata accessor for PuzzleLeaderboardResult;
    goto LABEL_8;
  }

  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_1D603A3EC;
  v7 = v0[14];
  v8 = v0[5];
  v9 = v0[3];

  return sub_1D6040520(v8, v9, 0, 1, v7);
}

uint64_t sub_1D603A3EC()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1D603ABAC;
  }

  else
  {
    v4 = sub_1D603A518;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603A518()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_1D5D12CE8(v0[14], type metadata accessor for PuzzleLeaderboardResult);
  v3 = type metadata accessor for PuzzleStatistic(0);
  sub_1D5D12DB0(v1, v2 + *(v3 + 20), sub_1D6044204);
  type metadata accessor for PuzzleStatisticCategory(0);
  swift_storeEnumTagMultiPayload();
  *v0[2] = v0[3];
  swift_unknownObjectRetain();

  v4 = v0[1];

  return v4();
}

void sub_1D603A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*(v10 + 104) + 56))(*(v10 + 88), 1, 1, *(v10 + 96));
  sub_1D5D12CE8(*(v10 + 88), sub_1D6044238);
  v11 = *(v10 + 208) + 1;
  if (v11 == *(v10 + 200))
  {
    v12 = *(v10 + 56);
    v13 = *(v10 + 64);
    v14 = *(v10 + 16);

    v15 = type metadata accessor for PuzzleStatistic(0);
    (*(v13 + 56))(v14 + *(v15 + 20), 1, 1, v12);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v10 + 16) = *(v10 + 24);
    swift_unknownObjectRetain();

    v16 = *(v10 + 8);

    v16();
  }

  else
  {
    *(v10 + 208) = v11;
    v17 = *(v10 + 192);
    if (v11 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v17 + 8 * v11 + 32);
      *(v10 + 216) = v18;
      *(v10 + 273) = 1;
      v19 = swift_task_alloc();
      *(v10 + 224) = v19;
      *v19 = v10;
      v19[1] = sub_1D6039800;
      v20 = *(v10 + 152);
      v21 = *(v10 + 160);
      v22 = *(v10 + 88);

      PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v22, v20, v21, v18, 0, (v10 + 273), 1, 10, a9, a10);
    }
  }
}

void sub_1D603A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 56);
  v12 = *(v10 + 64);
  v13 = *(v10 + 48);
  sub_1D5D12CE8(*(v10 + 120), type metadata accessor for PuzzleLeaderboardResult);
  (*(v12 + 56))(v13, 1, 1, v11);
  sub_1D5D12CE8(*(v10 + 48), sub_1D6044204);
  v14 = *(v10 + 208) + 1;
  if (v14 == *(v10 + 200))
  {
    v15 = *(v10 + 56);
    v16 = *(v10 + 64);
    v17 = *(v10 + 16);

    v18 = type metadata accessor for PuzzleStatistic(0);
    (*(v16 + 56))(v17 + *(v18 + 20), 1, 1, v15);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    **(v10 + 16) = *(v10 + 24);
    swift_unknownObjectRetain();

    v19 = *(v10 + 8);

    v19();
  }

  else
  {
    *(v10 + 208) = v14;
    v20 = *(v10 + 192);
    if (v14 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = *(v20 + 8 * v14 + 32);
      *(v10 + 216) = v21;
      *(v10 + 273) = 1;
      v22 = swift_task_alloc();
      *(v10 + 224) = v22;
      *v22 = v10;
      v22[1] = sub_1D6039800;
      v23 = *(v10 + 152);
      v24 = *(v10 + 160);
      v25 = *(v10 + 88);

      PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v25, v23, v24, v21, 0, (v10 + 273), 1, 10, a9, a10);
    }
  }
}

uint64_t sub_1D603AAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D603ABAC()
{
  sub_1D5D12CE8(*(v0 + 112), type metadata accessor for PuzzleLeaderboardResult);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D603AC80(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_1D60441D0(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603AD50, v2, 0);
}

uint64_t sub_1D603AD50()
{
  sub_1D603E964(*(v0 + 40));
  *(v0 + 88) = v1;
  sub_1D603EABC(*(v0 + 40));
  *(v0 + 96) = v2;
  sub_1D603EC14(*(v0 + 40));
  *(v0 + 24) = v3;
  *(v0 + 16) = v4;
  sub_1D603EE1C(*(v0 + 40), *(v0 + 64));
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1D603AE8C;
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);

  return sub_1D603F108(v6, v7);
}

uint64_t sub_1D603AE8C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    sub_1D5D12CE8(*(v2 + 64), sub_1D60441D0);
    v4 = sub_1D603B324;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = sub_1D603AFC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D603AFC8()
{
  v75 = v0;
  v1 = *(v0 + 112);
  sub_1D603FFA0(*(v0 + 40), &v51);
  if (v1)
  {
    v18 = *(v0 + 64);
    sub_1D5D12CE8(*(v0 + 56), sub_1D60441D0);
    sub_1D5D12CE8(v18, sub_1D60441D0);

    v19 = *(v0 + 8);
  }

  else
  {
    v2 = v51;
    v3 = v52;
    v4 = v53;
    v5 = v54;
    v6 = v55;
    v7 = v56;
    sub_1D6040100(*(v0 + 40), &v57);
    v46 = v3;
    v47 = v2;
    v48 = v7;
    v49 = v6;
    v50 = v57;
    v8 = v58;
    v9 = v59;
    v10 = v60;
    v11 = v61;
    v12 = v62;
    sub_1D6040260(*(v0 + 40), &v63);
    v41 = v12;
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = v8;
    v13 = v63;
    v14 = v64;
    v15 = v65;
    v16 = v66;
    v17 = v67;
    v40 = v68;
    sub_1D60403C0(*(v0 + 40), &v69);
    v21 = *(v0 + 24);
    v22 = *(v0 + 16);
    v23 = *(v0 + 72);
    v24 = *(v0 + 80);
    v39 = *(v0 + 56);
    v37 = *(v0 + 64);
    v38 = *(v0 + 40);
    v36 = *(v0 + 32);
    v35 = v69;
    v34 = v70;
    v33 = v71;
    v32 = v72;
    v31 = v73;
    v30 = v74;
    *v24 = *(v0 + 88);
    *(v24 + 16) = v22;
    *(v24 + 24) = v21 & 1;
    sub_1D5D12DB0(v37, v24 + v23[7], sub_1D60441D0);
    sub_1D5D12DB0(v39, v24 + v23[8], sub_1D60441D0);
    v25 = v24 + v23[9];
    *v25 = v47;
    *(v25 + 8) = v46;
    *(v25 + 16) = v4;
    *(v25 + 24) = v5;
    *(v25 + 32) = v49;
    *(v25 + 40) = v48;
    v26 = v24 + v23[10];
    *v26 = v50;
    *(v26 + 8) = v45;
    *(v26 + 16) = v44;
    *(v26 + 24) = v43;
    *(v26 + 32) = v42;
    *(v26 + 40) = v41;
    v27 = v24 + v23[11];
    *v27 = v13;
    *(v27 + 8) = v14;
    *(v27 + 16) = v15;
    *(v27 + 24) = v16;
    *(v27 + 32) = v17;
    *(v27 + 40) = v40;
    v28 = v24 + v23[12];
    *v28 = v35;
    *(v28 + 8) = v34;
    *(v28 + 16) = v33;
    *(v28 + 24) = v32;
    *(v28 + 32) = v31;
    *(v28 + 40) = v30;
    v29 = type metadata accessor for PuzzleStatistic(0);
    sub_1D5D12DB0(v24, v36 + *(v29 + 20), type metadata accessor for PuzzleStatisticsGroupedValue);
    type metadata accessor for PuzzleStatisticCategory(0);
    swift_storeEnumTagMultiPayload();
    *v36 = v38;
    swift_unknownObjectRetain();

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_1D603B324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D603B3A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PuzzleStatistic(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for PuzzleStatisticCategory(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_1D60441D0(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_1D5D54424(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603B5C4, v1, 0);
}

uint64_t sub_1D603B5C4()
{
  v54 = v0;
  sub_1D603EE1C(*(v0 + 16), *(v0 + 96));
  v1 = *(v0 + 208);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_1D5D12DB0(*(v0 + 96), v1 + *(v2 + 20), sub_1D60441D0);
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v1 = v4;
  v5 = *(v3 + 56);
  v5(v1, 0, 1, v2);
  swift_unknownObjectRetain();
  *(v0 + 216) = v5;
  sub_1D603E964(*(v0 + 16));
  v6 = *(v0 + 200);
  v7 = *(v0 + 80);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  *v7 = v10;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v6 = v9;
  sub_1D5D12DB0(v7, v6 + *(v8 + 20), type metadata accessor for PuzzleStatisticCategory);
  v5(v6, 0, 1, v8);
  swift_unknownObjectRetain();
  sub_1D603EABC(*(v0 + 16));
  v11 = *(v0 + 192);
  v12 = *(v0 + 72);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  *v12 = v15;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v11 = v14;
  sub_1D5D12DB0(v12, v11 + *(v13 + 20), type metadata accessor for PuzzleStatisticCategory);
  v5(v11, 0, 1, v13);
  swift_unknownObjectRetain();
  sub_1D603EC14(*(v0 + 16));
  v16 = *(v0 + 184);
  v17 = *(v0 + 64);
  v18 = *(v0 + 32);
  v19 = *(v0 + 16);
  *v17 = v20;
  *(v17 + 8) = v21 & 1;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v16 = v19;
  sub_1D5D12DB0(v17, v16 + *(v18 + 20), type metadata accessor for PuzzleStatisticCategory);
  v5(v16, 0, 1, v18);
  swift_unknownObjectRetain();
  sub_1D603FFA0(*(v0 + 16), &v48);
  v22 = *(v0 + 176);
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);
  v25 = v49;
  v26 = v50;
  LOBYTE(v18) = v51;
  v46 = v52;
  v44 = v53;
  v27 = v22 + *(v23 + 20);
  *v27 = v48;
  v27[8] = v25;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v29 = &v27[*(v28 + 20)];
  *v29 = v26;
  v29[8] = v18;
  swift_storeEnumTagMultiPayload();
  v30 = &v27[*(v28 + 24)];
  *v30 = v46;
  v30[8] = v44;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v22 = v24;
  v5(v22, 0, 1, v23);
  swift_unknownObjectRetain();
  sub_1D6040100(*(v0 + 16), &v48);
  v31 = *(v0 + 168);
  v32 = *(v0 + 32);
  v33 = *(v0 + 16);
  v34 = v49;
  v35 = v50;
  LOBYTE(v18) = v51;
  v47 = v52;
  v45 = v53;
  v36 = v31 + *(v32 + 20);
  *v36 = v48;
  v36[8] = v34;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v38 = &v36[*(v37 + 20)];
  *v38 = v35;
  v38[8] = v18;
  swift_storeEnumTagMultiPayload();
  v39 = &v36[*(v37 + 24)];
  *v39 = v47;
  v39[8] = v45;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v31 = v33;
  v5(v31, 0, 1, v32);
  swift_unknownObjectRetain();
  v40 = swift_task_alloc();
  *(v0 + 224) = v40;
  *v40 = v0;
  v40[1] = sub_1D603BC20;
  v41 = *(v0 + 88);
  v42 = *(v0 + 16);

  return sub_1D603F108(v41, v42);
}

uint64_t sub_1D603BC20()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1D603C0E8;
  }

  else
  {
    v4 = sub_1D603BD58;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603BD58()
{
  v43 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1D5D12DB0(*(v0 + 88), v2 + *(v3 + 20), sub_1D60441D0);
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v2 = v4;
  swift_unknownObjectRetain();
  v1(v2, 0, 1, v3);
  v5 = *(v0 + 232);
  sub_1D6040260(*(v0 + 16), &v37);
  v6 = *(v0 + 216);
  v7 = *(v0 + 152);
  if (v5)
  {
    v8 = *(v0 + 32);

    v6(v7, 1, 1, v8);
  }

  else
  {
    v9 = *(v0 + 32);
    v35 = *(v0 + 16);
    v10 = v38;
    v11 = v39;
    v12 = v40;
    v13 = v41;
    v33 = v42;
    v14 = v7 + *(v9 + 20);
    *v14 = v37;
    v14[8] = v10;
    swift_storeEnumTagMultiPayload();
    v15 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
    v16 = &v14[*(v15 + 20)];
    *v16 = v11;
    v16[8] = v12;
    swift_storeEnumTagMultiPayload();
    v17 = &v14[*(v15 + 24)];
    *v17 = v13;
    v17[8] = v33;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *v7 = v35;
    v6(v7, 0, 1, v9);
    swift_unknownObjectRetain();
  }

  sub_1D60403C0(*(v0 + 16), &v37);
  v18 = *(v0 + 216);
  v19 = *(v0 + 144);
  v20 = *(v0 + 32);
  v36 = *(v0 + 16);
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v34 = v42;
  v25 = v19 + *(v20 + 20);
  *v25 = v37;
  v25[8] = v21;
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v27 = &v25[*(v26 + 20)];
  *v27 = v22;
  v27[8] = v23;
  swift_storeEnumTagMultiPayload();
  v28 = &v25[*(v26 + 24)];
  *v28 = v24;
  v28[8] = v34;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v19 = v36;
  v18(v19, 0, 1, v20);
  swift_unknownObjectRetain();
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_1D603C42C;
  v30 = *(v0 + 136);
  v31 = *(v0 + 16);

  return sub_1D603908C(v30, v31);
}

uint64_t sub_1D603C0E8()
{
  v37 = v0;
  (*(v0 + 216))(*(v0 + 160), 1, 1, *(v0 + 32));
  sub_1D6040260(*(v0 + 16), &v31);
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v29 = v35;
  v27 = v36;
  v8 = v2 + *(v3 + 20);
  *v8 = v31;
  v8[8] = v5;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v10 = &v8[*(v9 + 20)];
  *v10 = v6;
  v10[8] = v7;
  swift_storeEnumTagMultiPayload();
  v11 = &v8[*(v9 + 24)];
  *v11 = v29;
  v11[8] = v27;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v2 = v4;
  v1(v2, 0, 1, v3);
  swift_unknownObjectRetain();
  sub_1D60403C0(*(v0 + 16), &v31);
  v12 = *(v0 + 216);
  v13 = *(v0 + 144);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v30 = v35;
  v28 = v36;
  v19 = v13 + *(v14 + 20);
  *v19 = v31;
  v19[8] = v16;
  type metadata accessor for PuzzleStatisticValue(0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v21 = &v19[*(v20 + 20)];
  *v21 = v17;
  v21[8] = v18;
  swift_storeEnumTagMultiPayload();
  v22 = &v19[*(v20 + 24)];
  *v22 = v30;
  v22[8] = v28;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v13 = v15;
  v12(v13, 0, 1, v14);
  swift_unknownObjectRetain();
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_1D603C42C;
  v24 = *(v0 + 136);
  v25 = *(v0 + 16);

  return sub_1D603908C(v24, v25);
}

uint64_t sub_1D603C42C()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1D603CA68;
  }

  else
  {
    v4 = sub_1D603C564;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D603C564()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v31 = *(v0 + 192);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);
  v3 = *(v0 + 160);
  v34 = *(v0 + 168);
  v35 = *(v0 + 152);
  v36 = *(v0 + 144);
  v4 = *(v0 + 136);
  v5 = *(v0 + 40);
  v6 = *(v0 + 112);
  (*(v0 + 216))(v4, 0, 1, *(v0 + 32));
  sub_1D5BC3F04(0, &qword_1EDF02110, sub_1D5D54424, MEMORY[0x1E69E6F90]);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = 10;
  v10 = swift_allocObject() + v8;
  sub_1D5D12D48(v4, v10, sub_1D5D54424);
  sub_1D5D12D48(v3, v10 + v7, sub_1D5D54424);
  sub_1D5D12D48(v1, v10 + 2 * v7, sub_1D5D54424);
  sub_1D5D12D48(v2, v10 + 3 * v7, sub_1D5D54424);
  sub_1D5D12D48(v31, v10 + 4 * v7, sub_1D5D54424);
  sub_1D5D12D48(v32, v10 + 5 * v7, sub_1D5D54424);
  sub_1D5D12D48(v33, v10 + 6 * v7, sub_1D5D54424);
  sub_1D5D12D48(v34, v10 + 7 * v7, sub_1D5D54424);
  sub_1D5D12D48(v35, v10 + 8 * v7, sub_1D5D54424);
  sub_1D5D12D48(v36, v10 + 9 * v7, sub_1D5D54424);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 32);
    sub_1D5D12D48(v10, v12, sub_1D5D54424);
    sub_1D5D12DB0(v12, v13, sub_1D5D54424);
    v15 = (*(v5 + 48))(v13, 1, v14);
    v16 = *(v0 + 120);
    if (v15 == 1)
    {
      sub_1D5D12CE8(v16, sub_1D5D54424);
    }

    else
    {
      sub_1D5D12DB0(v16, *(v0 + 48), type metadata accessor for PuzzleStatistic);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D698C9D8(0, v11[2] + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1D698C9D8((v17 > 1), v18 + 1, 1, v11);
      }

      v19 = *(v0 + 48);
      v11[2] = v18 + 1;
      sub_1D5D12DB0(v19, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, type metadata accessor for PuzzleStatistic);
    }

    v10 += v7;
    --v9;
  }

  while (v9);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v28 = *(v0 + 168);
  v23 = *(v0 + 152);
  v24 = *(v0 + 160);
  v29 = *(v0 + 184);
  v25 = *(v0 + 144);
  v30 = *(v0 + 208);
  v37 = *(v0 + 136);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D5D12CE8(v37, sub_1D5D54424);
  sub_1D5D12CE8(v25, sub_1D5D54424);
  sub_1D5D12CE8(v23, sub_1D5D54424);
  sub_1D5D12CE8(v24, sub_1D5D54424);
  sub_1D5D12CE8(v28, sub_1D5D54424);
  sub_1D5D12CE8(v22, sub_1D5D54424);
  sub_1D5D12CE8(v29, sub_1D5D54424);
  sub_1D5D12CE8(v21, sub_1D5D54424);
  sub_1D5D12CE8(v20, sub_1D5D54424);
  sub_1D5D12CE8(v30, sub_1D5D54424);

  v26 = *(v0 + 8);

  return v26(v11);
}

uint64_t sub_1D603CA68()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v31 = *(v0 + 192);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);
  v3 = *(v0 + 160);
  v34 = *(v0 + 168);
  v35 = *(v0 + 152);
  v36 = *(v0 + 144);
  v4 = *(v0 + 136);
  v5 = *(v0 + 40);
  v6 = *(v0 + 112);
  (*(v0 + 216))(v4, 1, 1, *(v0 + 32));
  sub_1D5BC3F04(0, &qword_1EDF02110, sub_1D5D54424, MEMORY[0x1E69E6F90]);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = 10;
  v10 = swift_allocObject() + v8;
  sub_1D5D12D48(v4, v10, sub_1D5D54424);
  sub_1D5D12D48(v3, v10 + v7, sub_1D5D54424);
  sub_1D5D12D48(v1, v10 + 2 * v7, sub_1D5D54424);
  sub_1D5D12D48(v2, v10 + 3 * v7, sub_1D5D54424);
  sub_1D5D12D48(v31, v10 + 4 * v7, sub_1D5D54424);
  sub_1D5D12D48(v32, v10 + 5 * v7, sub_1D5D54424);
  sub_1D5D12D48(v33, v10 + 6 * v7, sub_1D5D54424);
  sub_1D5D12D48(v34, v10 + 7 * v7, sub_1D5D54424);
  sub_1D5D12D48(v35, v10 + 8 * v7, sub_1D5D54424);
  sub_1D5D12D48(v36, v10 + 9 * v7, sub_1D5D54424);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 32);
    sub_1D5D12D48(v10, v12, sub_1D5D54424);
    sub_1D5D12DB0(v12, v13, sub_1D5D54424);
    v15 = (*(v5 + 48))(v13, 1, v14);
    v16 = *(v0 + 120);
    if (v15 == 1)
    {
      sub_1D5D12CE8(v16, sub_1D5D54424);
    }

    else
    {
      sub_1D5D12DB0(v16, *(v0 + 48), type metadata accessor for PuzzleStatistic);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D698C9D8(0, v11[2] + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1D698C9D8((v17 > 1), v18 + 1, 1, v11);
      }

      v19 = *(v0 + 48);
      v11[2] = v18 + 1;
      sub_1D5D12DB0(v19, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, type metadata accessor for PuzzleStatistic);
    }

    v10 += v7;
    --v9;
  }

  while (v9);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v28 = *(v0 + 168);
  v23 = *(v0 + 152);
  v24 = *(v0 + 160);
  v29 = *(v0 + 184);
  v25 = *(v0 + 144);
  v30 = *(v0 + 208);
  v37 = *(v0 + 136);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D5D12CE8(v37, sub_1D5D54424);
  sub_1D5D12CE8(v25, sub_1D5D54424);
  sub_1D5D12CE8(v23, sub_1D5D54424);
  sub_1D5D12CE8(v24, sub_1D5D54424);
  sub_1D5D12CE8(v28, sub_1D5D54424);
  sub_1D5D12CE8(v22, sub_1D5D54424);
  sub_1D5D12CE8(v29, sub_1D5D54424);
  sub_1D5D12CE8(v21, sub_1D5D54424);
  sub_1D5D12CE8(v20, sub_1D5D54424);
  sub_1D5D12CE8(v30, sub_1D5D54424);

  v26 = *(v0 + 8);

  return v26(v11);
}

uint64_t sub_1D603CF6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for PuzzleStatisticValue(0);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for PuzzleStatisticCategory(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for PuzzleStatistic(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603D098, v1, 0);
}

uint64_t sub_1D603D098()
{
  sub_1D603E964(*(v0 + 16));
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  *v2 = v6;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v1 = v5;
  v7 = *(v3 + 20);
  sub_1D5D12DB0(v2, v1 + v7, type metadata accessor for PuzzleStatisticCategory);
  sub_1D5D12D48(v1 + v7, v4, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for PuzzleStatisticValue;
  v10 = type metadata accessor for PuzzleStatisticValue;
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v10 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v16 = 32;
    }

    else
    {
      v16 = 48;
    }

    v17 = *(v0 + v16);
    sub_1D5D12DB0(*(v0 + 64), v17, v10);
    swift_unknownObjectRetain();
    v13 = PuzzleStatisticValue.primaryValue.getter();
    sub_1D5D12CE8(v17, v9);
    result = sub_1D5D12CE8(*(v0 + 88), type metadata accessor for PuzzleStatistic);
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          goto LABEL_3;
        }

        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  swift_unknownObjectRetain();
  sub_1D5D12CE8(v11, type metadata accessor for PuzzleStatistic);
  sub_1D5D12CE8(v12, type metadata accessor for PuzzleStatisticCategory);
  v13 = -1.0;
LABEL_3:

  v14 = *(v0 + 8);

  return v14(v13 > 0);
}

uint64_t sub_1D603D394()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleStatsService: Will discard accumulated stats in next calculation", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *(v5 + 312) = 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D603D4B4(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_1D5BC4580(0);
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603D548, v2, 0);
}

unint64_t sub_1D603D548()
{
  v50 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_19:
    v41 = *(v0 + 200);
    sub_1D5D127FC(0, &qword_1EC882B48, MEMORY[0x1E69E6158], &type metadata for PuzzleTypeDebugStats, MEMORY[0x1E69E6168]);
    v41[3] = v42;
    v41[4] = sub_1D60440DC();
    *v41 = v4;

    v43 = *(v0 + 8);
LABEL_23:

    return v43();
  }

  v45 = *(v0 + 224);
  v46 = *(v0 + 216);
  v3 = (v1 + 40);
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v47 = v3;
    v48 = v2;
    v6 = *(v0 + 224);
    v8 = *(v3 - 1);
    v7 = *v3;
    v9 = v46[35];
    v10 = v46[36];
    __swift_project_boxed_opaque_existential_1(v46 + 32, v9);
    v11 = *(v10 + 8);

    v11(v9, v10);
    v12 = type metadata accessor for PuzzleStatsState(0);
    v13 = (*(*(v12 - 8) + 48))(v6, 1, v12);
    v14 = *(v0 + 224);
    if (v13 == 1)
    {

      sub_1D5D12CE8(v14, sub_1D5BC4580);
      goto LABEL_22;
    }

    v15 = *(v45 + 16);

    sub_1D5D12CE8(v14, type metadata accessor for PuzzleStatsState);
    if (!*(v15 + 16) || (v16 = sub_1D5B69D90(v8, v7), (v17 & 1) == 0))
    {

LABEL_22:
      sub_1D5E9E58C();
      swift_allocError();
      *v44 = 0;
      v44[1] = 0;
      swift_willThrow();

      v43 = *(v0 + 8);
      goto LABEL_23;
    }

    v18 = (*(v15 + 56) + (v16 << 6));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    *(v0 + 48) = v18[2];
    *(v0 + 64) = v21;
    *(v0 + 16) = v19;
    *(v0 + 32) = v20;
    sub_1D5D12A1C(v0 + 16, v0 + 80);

    v22 = *(v0 + 32);
    v49[0] = *(v0 + 16);
    v49[1] = v22;
    v23 = *(v0 + 64);
    v49[2] = *(v0 + 48);
    v49[3] = v23;
    sub_1D6043DD0(v49, (v0 + 144));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49[0] = v4;
    result = sub_1D5B69D90(v8, v7);
    v27 = v4[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v4[3] < v30)
    {
      sub_1D6D6BE98(v30, isUniquelyReferenced_nonNull_native);
      result = sub_1D5B69D90(v8, v7);
      if ((v31 & 1) != (v32 & 1))
      {

        return sub_1D726493C();
      }

LABEL_13:
      if (v31)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v40 = result;
    sub_1D6D813D4();
    result = v40;
    if (v31)
    {
LABEL_3:
      v5 = result;

      v4 = *&v49[0];
      sub_1D60440A4(v0 + 144, *(*&v49[0] + 56) + 56 * v5);
      goto LABEL_4;
    }

LABEL_14:
    v4 = *&v49[0];
    *(*&v49[0] + 8 * (result >> 6) + 64) |= 1 << result;
    v33 = (v4[6] + 16 * result);
    *v33 = v8;
    v33[1] = v7;
    v34 = v4[7] + 56 * result;
    v35 = *(v0 + 192);
    v37 = *(v0 + 160);
    v36 = *(v0 + 176);
    *v34 = *(v0 + 144);
    *(v34 + 16) = v37;
    *(v34 + 32) = v36;
    *(v34 + 48) = v35;
    v38 = v4[2];
    v29 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v29)
    {
      goto LABEL_30;
    }

    v4[2] = v39;
LABEL_4:
    v3 = v47 + 2;
    v2 = v48 - 1;
    if (v48 == 1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1D603D950(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1D5BC4580(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v3[35];
  v12 = v3[36];
  __swift_project_boxed_opaque_existential_1(v3 + 32, v11);
  (*(v12 + 8))(v11, v12);
  v13 = type metadata accessor for PuzzleStatsState(0);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
  {
    sub_1D5D12CE8(v10, sub_1D5BC4580);
  }

  else
  {
    v14 = *(v10 + 2);

    sub_1D5D12CE8(v10, type metadata accessor for PuzzleStatsState);
    if (*(v14 + 16))
    {
      v15 = sub_1D5B69D90(a1, a2);
      if (v16)
      {
        v17 = (*(v14 + 56) + (v15 << 6));
        v19 = v17[2];
        v18 = v17[3];
        v20 = v17[1];
        v25 = *v17;
        v26 = v20;
        v27 = v19;
        v28 = v18;
        sub_1D5D12A1C(&v25, v24);

        v21 = v26;
        *a3 = v25;
        a3[1] = v21;
        v22 = v28;
        a3[2] = v27;
        a3[3] = v22;
        return;
      }
    }
  }

  sub_1D5E9E58C();
  swift_allocError();
  *v23 = 0;
  v23[1] = 0;
  swift_willThrow();
}

uint64_t sub_1D603DB30(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {
    v6 = v4[17];

    return MEMORY[0x1EEE6DFA0](sub_1D603E130, v6, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v4[28] = v7;
    *v7 = v5;
    v7[1] = sub_1D603DCBC;

    return sub_1D603E4E0(a1);
  }
}

uint64_t sub_1D603DCBC()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D603DDCC, v1, 0);
}

void *sub_1D603DDCC()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v31 = MEMORY[0x1E69E7CC0];
  result = sub_1D69986E4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v28 = v0[20];
  v29 = v0[21];
  v5 = v0[19];
  v26 = v0[26] + 32;
  v27 = v1 & 0xC000000000000001;
  v6 = v31;
  v30 = v2;
  do
  {
    if (v27)
    {
      v7 = MEMORY[0x1DA6FB460](v4, v0[26]);
    }

    else
    {
      v7 = *(v26 + 8 * v4);
      swift_unknownObjectRetain();
    }

    v8 = v0[21];
    swift_getObjectType();
    v9 = [v7 identifier];
    v10 = sub_1D726207C();
    v12 = v11;

    *v8 = v10;
    *(v29 + 8) = v12;
    *(v29 + 16) = [v7 difficulty];
    v13 = [v7 publishDate];
    if (v13)
    {
      v14 = v13;
      sub_1D72588BC();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[18];
    v19 = sub_1D725891C();
    (*(*(v19 - 8) + 56))(v18, v15, 1, v19);
    sub_1D5D12DB0(v18, v17 + v5[6], sub_1D5B5B2A0);
    *(v17 + v5[7]) = [v7 ignoreFromStatsAndStreaks];
    v20 = FCPuzzleProviding.puzzleTypeTraits.getter();
    swift_unknownObjectRelease();
    *(v17 + v5[8]) = v20;
    sub_1D5D12DB0(v17, v16, type metadata accessor for PuzzleStatsProcessingData);
    v22 = *(v31 + 16);
    v21 = *(v31 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D69986E4((v21 > 1), v22 + 1, 1);
    }

    v23 = v0[22];
    ++v4;
    *(v31 + 16) = v22 + 1;
    sub_1D5D12DB0(v23, v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, type metadata accessor for PuzzleStatsProcessingData);
  }

  while (v30 != v4);

LABEL_17:
  sub_1D6986CC4(v6);

  v24 = v0[12];

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_1D603E130()
{
  v30 = v0;
  v1 = *(v0 + 216);

  *(v0 + 104) = v1;
  v2 = v1;
  sub_1D5BA6EF4();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232) == 5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725C42C();
    __swift_project_value_buffer(v16, qword_1EDFFCFA8);
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;

      v22 = MEMORY[0x1DA6F9D20](v21, MEMORY[0x1E69E6158]);
      v24 = v23;

      v25 = sub_1D5BC5100(v22, v24, &v29);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1D5B42000, v17, v18, "PuzzleStatsService: Skipped deprecated puzzles [%s]", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }
  }

  else
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 216);
    v5 = sub_1D725C42C();
    __swift_project_value_buffer(v5, qword_1EDFFCFA8);
    v6 = v4;
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 216);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1D726497C();
      v15 = sub_1D5BC5100(v13, v14, &v29);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D5B42000, v7, v8, "PuzzleStatsService: Error fetching puzzles [%s]", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1DA6FD500](v12, -1, -1);
      MEMORY[0x1DA6FD500](v11, -1, -1);
    }

    else
    {
    }
  }

  v26 = *(v0 + 96);

  v27 = *(v0 + 8);

  return v27(v26);
}

uint64_t sub_1D603E4E0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D603E500, v1, 0);
}

uint64_t sub_1D603E500()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);

  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (!v5)
  {

    goto LABEL_8;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    *(v1 + 4) = i;

    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: adding puzzle info to %ld history items", v1, 0xCu);
    MEMORY[0x1DA6FD500](v1, -1, -1);
LABEL_8:

    v0[9] = v6;
    v3 = v0[7];
    sub_1D5B68374(v0[8] + 112, (v0 + 2));
    if (v3 >> 62)
    {
      break;
    }

    v6 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[10] = v6;
    if (!v6)
    {
      goto LABEL_18;
    }

LABEL_10:
    v0[11] = sub_1D726290C();
    if (v6 >= 1)
    {
      v8 = v0[7];
      v0[12] = 0;
      if ((v0[9] & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6FB460](0, v8);
      }

      else
      {
        v9 = swift_unknownObjectRetain();
      }

      v0[13] = v9;

      return MEMORY[0x1EEE6DFA0](sub_1D603E748, 0, 0);
    }

    __break(1u);
LABEL_22:
    ;
  }

  v6 = sub_1D7263BFC();
  v0[10] = v6;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1D603E748()
{
  *(v0 + 112) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D603E7D4, v2, v1);
}

uint64_t sub_1D603E7D4()
{
  v1 = v0[13];
  v2 = v0[8];

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 104))(v1, v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D603E880, v2, 0);
}

uint64_t sub_1D603E880()
{
  v1 = v0[12];
  v2 = v0[10];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v3 = v0[1];

    return v3();
  }

  else
  {
    ++v0[12];
    if ((v0[9] & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460]();
    }

    else
    {
      v5 = swift_unknownObjectRetain();
    }

    v0[13] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D603E748, 0, 0);
  }
}

void sub_1D603E964(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  sub_1D603D950(v3, v5, v17);
  if (v1)
  {
  }

  else
  {

    v6 = 0;
    v7 = 0;
    v16[2] = v17[2];
    v16[3] = v17[3];
    v16[0] = v17[0];
    v16[1] = v17[1];
    v8 = 1 << *(*&v17[0] + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(*&v17[0] + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = v6;
LABEL_12:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(*(*(*&v17[0] + 56) + ((v12 << 9) | (8 * v13))) + 16);
      v15 = __OFADD__(v7, v14);
      v7 += v14;
      if (v15)
      {
        __break(1u);
LABEL_15:

        sub_1D5D12A54(v16);

        return;
      }
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_15;
      }

      v10 = *(*&v17[0] + 64 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1D603EABC(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  sub_1D603D950(v3, v5, v17);
  if (v1)
  {
  }

  else
  {

    v6 = 0;
    v7 = 0;
    v16[2] = v17[2];
    v16[3] = v17[3];
    v16[0] = v17[0];
    v16[1] = v17[1];
    v8 = 1 << *(*(&v17[0] + 1) + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(*(&v17[0] + 1) + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = v6;
LABEL_12:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(*(*(*(&v17[0] + 1) + 56) + ((v12 << 9) | (8 * v13))) + 16);
      v15 = __OFADD__(v7, v14);
      v7 += v14;
      if (v15)
      {
        __break(1u);
LABEL_15:

        sub_1D5D12A54(v16);

        return;
      }
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_15;
      }

      v10 = *(*(&v17[0] + 1) + 64 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1D603EC14(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  sub_1D603D950(v3, v5, v29);
  if (v1)
  {
  }

  else
  {

    v6 = 0;
    v7 = 0;
    v27 = v29[2];
    v28 = v29[3];
    v25 = v29[0];
    v26 = v29[1];
    v8 = 1 << *(*&v29[0] + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(*&v29[0] + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = v6;
LABEL_12:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(*(*(*&v29[0] + 56) + ((v12 << 9) | (8 * v13))) + 16);
      v15 = __OFADD__(v7, v14);
      v7 += v14;
      if (v15)
      {
        __break(1u);
LABEL_15:
        v16 = 0;
        v17 = 0;
        v18 = 1 << *(v26 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v26 + 64);
        v21 = (v18 + 63) >> 6;
        while (v20)
        {
          v22 = v16;
LABEL_24:
          v23 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
          v24 = *(*(*(v26 + 56) + ((v22 << 9) | (8 * v23))) + 16);
          v15 = __OFADD__(v17, v24);
          v17 += v24;
          if (v15)
          {
            __break(1u);
LABEL_27:
            sub_1D5D12A54(&v25);
            return;
          }
        }

        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_29;
          }

          if (v22 >= v21)
          {
            goto LABEL_27;
          }

          v20 = *(v26 + 64 + 8 * v22);
          ++v16;
          if (v20)
          {
            v16 = v22;
            goto LABEL_24;
          }
        }
      }
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_15;
      }

      v10 = *(*&v29[0] + 64 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1D603EE1C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for PuzzleStreak(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v13 = v27 - v12;
  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  sub_1D603D950(v15, v17, v31);
  if (v2)
  {
  }

  else
  {
    v18 = v29;

    v30[2] = v31[2];
    v30[3] = v32;
    v30[0] = v31[0];
    v30[1] = v31[1];
    v19 = *(&v32 + 1);
    v20 = *(*(&v32 + 1) + 16);
    if (v20)
    {
      v27[1] = 0;
      v28 = v4;
      v21 = *(&v32 + 1) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      sub_1D5D12D48(v21, v13, type metadata accessor for PuzzleStreak);
      v22 = v18;
      if (v20 == 1)
      {
LABEL_5:
        sub_1D5D12A54(v30);
        sub_1D5D12DB0(v13, v22, type metadata accessor for PuzzleStreak);
        (*(v5 + 56))(v22, 0, 1, v28);
      }

      else
      {
        v23 = 1;
        while (v23 < *(v19 + 16))
        {
          sub_1D5D12D48(v21 + *(v5 + 72) * v23, v8, type metadata accessor for PuzzleStreak);
          sub_1D7257ACC();
          v25 = v24;
          sub_1D7257ACC();
          if (v25 >= v26)
          {
            sub_1D5D12CE8(v8, type metadata accessor for PuzzleStreak);
          }

          else
          {
            sub_1D5D12CE8(v13, type metadata accessor for PuzzleStreak);
            sub_1D5D12DB0(v8, v13, type metadata accessor for PuzzleStreak);
          }

          v22 = v18;
          if (v20 == ++v23)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
      }
    }

    else
    {
      sub_1D5D12A54(v30);
      (*(v5 + 56))(v18, 1, 1, v4);
    }
  }
}

uint64_t sub_1D603F108(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D725891C();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v5 = sub_1D7258C2C();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = sub_1D7257DEC();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = type metadata accessor for PuzzleStreak(0);
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603F31C, v2, 0);
}

void sub_1D603F31C()
{
  v1 = [*(v0 + 152) identifier];
  v2 = sub_1D726207C();
  v4 = v3;

  sub_1D603D950(v2, v4, (v0 + 16));

  v5 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v5;
  v6 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v6;
  v7 = *(v0 + 136);
  v31 = *(v7 + 16);
  if (v31)
  {
    v8 = 0;
    v30 = *(v0 + 272);
    v29 = *MEMORY[0x1E6969A58];
    v27 = (*(v0 + 224) + 8);
    v28 = (*(v0 + 176) + 8);
    v26 = (*(v0 + 248) + 8);
    v25 = *(v0 + 136);
    while (1)
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v35 = *(v0 + 256);
      v37 = *(v0 + 240);
      v33 = *(v0 + 232);
      v9 = *(v0 + 208);
      v36 = *(v0 + 216);
      v10 = *(v0 + 192);
      v32 = *(v0 + 200);
      v34 = *(v0 + 184);
      v11 = *(v0 + 168);
      sub_1D5D12D48(v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v8, *(v0 + 280), type metadata accessor for PuzzleStreak);
      sub_1D7258BCC();
      sub_1D5BC3F04(0, &qword_1EDF19B90, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v12 = sub_1D7258C0C();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7273AE0;
      (*(v13 + 104))(v15 + v14, v29, v12);
      sub_1D5BFA8DC(v15);
      swift_setDeallocating();
      (*(v13 + 8))(v15 + v14, v12);
      swift_deallocClassInstance();
      sub_1D7257A7C();
      sub_1D72588DC();
      v16 = *v28;
      (*v28)(v9, v11);
      sub_1D72588CC();
      sub_1D72588DC();
      v16(v10, v11);
      sub_1D7258B2C();

      v16(v34, v11);
      v16(v32, v11);
      (*v27)(v33, v36);
      v17 = sub_1D7257D5C();
      LOBYTE(v10) = v18;
      (*v26)(v35, v37);
      if ((v10 & 1) == 0 && v17 <= 24)
      {
        break;
      }

      ++v8;
      sub_1D5D12CE8(*(v0 + 280), type metadata accessor for PuzzleStreak);
      v7 = v25;
      if (v31 == v8)
      {
        goto LABEL_10;
      }
    }

    v19 = *(v0 + 288);
    v20 = *(v0 + 296);
    v21 = *(v0 + 280);
    sub_1D5D12A54(v0 + 80);
    sub_1D5D12DB0(v21, v19, type metadata accessor for PuzzleStreak);
    sub_1D5D12DB0(v19, v20, type metadata accessor for PuzzleStreak);
    v22 = swift_task_alloc();
    *(v0 + 304) = v22;
    *v22 = v0;
    v22[1] = sub_1D603F8E0;
    v23 = *(v0 + 152);

    sub_1D603FB38(v23);
  }

  else
  {
LABEL_10:
    sub_1D5D12A54(v0 + 80);
    (*(*(v0 + 272) + 56))(*(v0 + 144), 1, 1, *(v0 + 264));

    v24 = *(v0 + 8);

    v24();
  }
}

uint64_t sub_1D603F8E0(char a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D603F9F8, v2, 0);
}

uint64_t sub_1D603F9F8()
{
  v1 = *(v0 + 296);
  if (*(v0 + 312))
  {
    sub_1D5D12CE8(v1, type metadata accessor for PuzzleStreak);
    v2 = 1;
  }

  else
  {
    sub_1D5D12DB0(v1, *(v0 + 144), type metadata accessor for PuzzleStreak);
    v2 = 0;
  }

  (*(*(v0 + 272) + 56))(*(v0 + 144), v2, 1, *(v0 + 264));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D603FB38(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D603FB58, v1, 0);
}

uint64_t sub_1D603FB58()
{
  v1 = v0[3];
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v7 = (*(v3 + 152) + **(v3 + 152));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D603FC88;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1D603FC88(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D603FDDC, v7, 0);
  }
}

uint64_t sub_1D603FDDC()
{
  result = v0[5];
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[3];
    v25 = v2 - 1;
    v5 = (result + 40);
    v26 = v0[5];
    while (v3 < *(result + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = v4[17];
      v8 = v4[18];
      __swift_project_boxed_opaque_existential_1(v4 + 14, v9);
      v10 = *(v8 + 8);
      v11 = *(v10 + 56);

      v12 = v11(v7, v6, v9, v10);
      v13 = v12;
      if (v12 && (v14 = [v12 usedReveal]) != 0)
      {
        v15 = v14;
        v16 = [v14 BOOLValue];

        v17 = v16 ^ 1;
      }

      else
      {
        v17 = 1;
      }

      v19 = v4[17];
      v18 = v4[18];
      __swift_project_boxed_opaque_existential_1(v4 + 14, v19);
      v20 = (*(*(v18 + 8) + 32))(v7, v6, v19);

      result = v26;
      if (((v20 | v17) & 1) == 0)
      {
        v5 += 2;
        if (v25 != v3++)
        {
          continue;
        }
      }

      v22 = (v20 | v17) ^ 1;
      v0 = v24;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_13:

    v23 = v0[1];

    return v23(v22 & 1);
  }

  return result;
}

void sub_1D603FFA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, &v22);
  if (v2)
  {
  }

  else
  {

    v21[2] = v24;
    v21[3] = v25;
    v21[0] = v22;
    v21[1] = v23;
    v8 = *(&v23 + 1);
    if (*(*(&v23 + 1) + 16))
    {
      v9 = sub_1D5C5E034(10);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      v16 = v10 ^ 1;
      v17 = sub_1D5C5E034(20);
      if (v18)
      {
        v13 = *(*(v8 + 56) + 8 * v17);
      }

      else
      {
        v13 = 0;
      }

      v15 = v18 ^ 1;
      v19 = sub_1D5C5E034(30);
      if (v20)
      {
        v14 = 0;
        v12 = *(*(v8 + 56) + 8 * v19);
      }

      else
      {
        v12 = 0;
        v14 = 1;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v14 = 1;
      v15 = 1;
      v16 = 1;
    }

    sub_1D5D12A54(v21);
    *a2 = v11;
    *(a2 + 8) = v16 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15 & 1;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
  }
}

void sub_1D6040100(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, v22);
  if (v2)
  {
  }

  else
  {

    v21[2] = v23;
    v21[3] = v24;
    v21[0] = v22[0];
    v21[1] = v22[1];
    v8 = v23;
    if (*(v23 + 16))
    {
      v9 = sub_1D5C5E034(10);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      v16 = v10 ^ 1;
      v17 = sub_1D5C5E034(20);
      if (v18)
      {
        v13 = *(*(v8 + 56) + 8 * v17);
      }

      else
      {
        v13 = 0;
      }

      v15 = v18 ^ 1;
      v19 = sub_1D5C5E034(30);
      if (v20)
      {
        v14 = 0;
        v12 = *(*(v8 + 56) + 8 * v19);
      }

      else
      {
        v12 = 0;
        v14 = 1;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v14 = 1;
      v15 = 1;
      v16 = 1;
    }

    sub_1D5D12A54(v21);
    *a2 = v11;
    *(a2 + 8) = v16 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15 & 1;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
  }
}

void sub_1D6040260(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, v22);
  if (v2)
  {
  }

  else
  {

    v21[2] = v23;
    v21[3] = v24;
    v21[0] = v22[0];
    v21[1] = v22[1];
    v8 = *(&v23 + 1);
    if (*(*(&v23 + 1) + 16))
    {
      v9 = sub_1D5C5E034(10);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      v16 = v10 ^ 1;
      v17 = sub_1D5C5E034(20);
      if (v18)
      {
        v13 = *(*(v8 + 56) + 8 * v17);
      }

      else
      {
        v13 = 0;
      }

      v15 = v18 ^ 1;
      v19 = sub_1D5C5E034(30);
      if (v20)
      {
        v14 = 0;
        v12 = *(*(v8 + 56) + 8 * v19);
      }

      else
      {
        v12 = 0;
        v14 = 1;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v14 = 1;
      v15 = 1;
      v16 = 1;
    }

    sub_1D5D12A54(v21);
    *a2 = v11;
    *(a2 + 8) = v16 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15 & 1;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
  }
}

void sub_1D60403C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, v22);
  if (v2)
  {
  }

  else
  {

    v21[2] = v22[2];
    v21[3] = v23;
    v21[0] = v22[0];
    v21[1] = v22[1];
    v8 = v23;
    if (*(v23 + 16))
    {
      v9 = sub_1D5C5E034(10);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      v16 = v10 ^ 1;
      v17 = sub_1D5C5E034(20);
      if (v18)
      {
        v13 = *(*(v8 + 56) + 8 * v17);
      }

      else
      {
        v13 = 0;
      }

      v15 = v18 ^ 1;
      v19 = sub_1D5C5E034(30);
      if (v20)
      {
        v14 = 0;
        v12 = *(*(v8 + 56) + 8 * v19);
      }

      else
      {
        v12 = 0;
        v14 = 1;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v14 = 1;
      v15 = 1;
      v16 = 1;
    }

    sub_1D5D12A54(v21);
    *a2 = v11;
    *(a2 + 8) = v16 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15 & 1;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
  }
}

uint64_t sub_1D6040520(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 201) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_1D6044238(0);
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for PuzzleLeaderboardResult(0);
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  sub_1D604426C(0);
  *(v6 + 112) = swift_task_alloc();
  v9 = type metadata accessor for PuzzleLeaderboardEntry(0);
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6040720, v5, 0);
}

void sub_1D6040720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = v10;
  v11 = *(v10 + 120);
  v12 = *(v10 + 128);
  v13 = *(v10 + 112);
  sub_1D5D12D48(*(v10 + 40), v13, sub_1D604426C);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = *(v10 + 88);
    v15 = *(v10 + 96);
    v16 = *(v10 + 16);
    sub_1D5D12CE8(*(v10 + 112), sub_1D604426C);
    (*(v15 + 56))(v16, 1, 1, v14);
LABEL_12:

    v41 = *(v10 + 8);

    v41();
    return;
  }

  v17 = *(v10 + 64);
  v18 = *(v10 + 40);
  sub_1D5D12DB0(*(v10 + 112), *(v10 + 160), type metadata accessor for PuzzleLeaderboardEntry);
  v60 = *(v18 + *(v17 + 20));

  sub_1D60420F4(&v60, sub_1D6044FD0, sub_1D6044FB8);
  v19 = *(v10 + 160);
  v20 = v60;
  v21 = *(v19 + *(*(v10 + 120) + 28));
  if (v21 == 1)
  {
    sub_1D5D12D48(v19, *(v10 + 152), type metadata accessor for PuzzleLeaderboardEntry);
    if (*(v20 + 16) >= 3uLL)
    {
      v22 = *(*(v10 + 128) + 80);
      sub_1D5EC2840(v20, v20 + ((v22 + 32) & ~v22), 0, 5uLL);
      v24 = v23;

      v20 = v24;
    }

    v25 = *(v10 + 152);
    v26 = *(v10 + 104);
    v27 = *(v10 + 88);
    v28 = *(v10 + 64);
    v29 = *(v10 + 40);
    sub_1D5D12CE8(*(v10 + 160), type metadata accessor for PuzzleLeaderboardEntry);
    v21 = *(v29 + *(v28 + 24));
    v30 = (v29 + *(v28 + 28));
LABEL_11:
    v36 = *v30;
    v35 = v30[1];
    sub_1D5D12DB0(v25, v26, type metadata accessor for PuzzleLeaderboardEntry);
    *(v26 + v27[5]) = v20;
    *(v26 + v27[6]) = v21;
    v37 = (v26 + v27[7]);
    *v37 = v36;
    v37[1] = v35;

    v38 = *(v10 + 96);
    v39 = *(v10 + 88);
    v40 = *(v10 + 16);
    sub_1D5D12DB0(*(v10 + 104), v40, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    (*(v38 + 56))(v40, 0, 1, v39);
    goto LABEL_12;
  }

  v31 = *(*(v10 + 40) + *(*(v10 + 64) + 24));
  *(v10 + 168) = v31;
  if (v21 == v31)
  {
    sub_1D5D12D48(v19, *(v10 + 144), type metadata accessor for PuzzleLeaderboardEntry);
    v32 = *(v20 + 16);
    if (v32 >= 3)
    {
      v55 = v32 - 2;
      v56 = (2 * v32) | 1;
      v57 = *(*(v10 + 128) + 80);
      sub_1D5EC2840(v20, v20 + ((v57 + 32) & ~v57), v55, v56);
      v59 = v58;

      v20 = v59;
    }

    v25 = *(v10 + 144);
    v26 = *(v10 + 104);
    v27 = *(v10 + 88);
    v33 = *(v10 + 64);
    v34 = *(v10 + 40);
    sub_1D5D12CE8(*(v10 + 160), type metadata accessor for PuzzleLeaderboardEntry);
    v30 = (v34 + *(v33 + 28));
    goto LABEL_11;
  }

  v42 = *(v10 + 48);
  v43 = *(v10 + 24);

  v44 = *(v42 + 248);
  ObjectType = swift_getObjectType();
  v46 = [v43 identifier];
  v47 = sub_1D726207C();
  v49 = v48;

  *(v10 + 176) = v49;
  *(v10 + 200) = 1;
  v50 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    v51 = *(v10 + 201);
    v52 = swift_task_alloc();
    *(v10 + 184) = v52;
    *v52 = v10;
    v52[1] = sub_1D6040C10;
    v53 = *(v10 + 56);
    v54 = *(v10 + 32);
    v63 = ObjectType;
    v64 = v44;

    PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v53, v47, v49, v54, v51 & 1, (v10 + 200), v50, 3, a9, a10);
  }
}

uint64_t sub_1D6040C10()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);

    v4 = sub_1D6041054;
  }

  else
  {
    v3 = *(v2 + 48);

    v4 = sub_1D6040D3C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1D6040D3C()
{
  v28 = v0;
  v1 = v0[8];
  v2 = v0[7];
  if ((*(v0[9] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[2];
    sub_1D5D12CE8(v0[20], type metadata accessor for PuzzleLeaderboardEntry);
    sub_1D5D12CE8(v2, sub_1D6044238);
    (*(v4 + 56))(v5, 1, 1, v3);
LABEL_8:

    v26 = v0[1];

    v26();
    return;
  }

  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[10];
  sub_1D5D12DB0(v2, v9, type metadata accessor for PuzzleLeaderboardResult);
  sub_1D5D12D48(v7, v8, type metadata accessor for PuzzleLeaderboardEntry);
  v27 = *(v9 + *(v1 + 20));

  sub_1D60420F4(&v27, sub_1D6044FD0, sub_1D6044FB8);
  if (!v6)
  {
    v10 = v0[20];
    v11 = v0[21];
    v12 = v0[17];
    v13 = v0[13];
    v14 = v0[11];
    v15 = v0[8];
    v16 = v0[5];
    sub_1D5D12CE8(v0[10], type metadata accessor for PuzzleLeaderboardResult);
    sub_1D5D12CE8(v10, type metadata accessor for PuzzleLeaderboardEntry);
    v17 = v27;
    v18 = (v16 + *(v15 + 28));
    v20 = *v18;
    v19 = v18[1];
    sub_1D5D12DB0(v12, v13, type metadata accessor for PuzzleLeaderboardEntry);
    *(v13 + v14[5]) = v17;
    *(v13 + v14[6]) = v11;
    v21 = (v13 + v14[7]);
    *v21 = v20;
    v21[1] = v19;
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];
    v25 = v0[2];

    sub_1D5D12DB0(v22, v25, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    (*(v23 + 56))(v25, 0, 1, v24);
    goto LABEL_8;
  }
}

uint64_t sub_1D6041054()
{
  sub_1D5D12CE8(*(v0 + 160), type metadata accessor for PuzzleLeaderboardEntry);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D604116C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D60411CC()
{
  sub_1D604116C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D60411F8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return sub_1D6038290(a1, a2, a3);
}

uint64_t sub_1D60412AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6036AEC;

  return sub_1D603B3A4(a1);
}

uint64_t sub_1D6041344(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D60413DC;

  return sub_1D603CF6C(a1);
}

uint64_t sub_1D60413DC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1D60414E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64680;

  return sub_1D603D374();
}

uint64_t sub_1D6041574(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D603D4B4(a1, a2);
}

uint64_t sub_1D6041620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64684;

  return sub_1D5BC3E40(0);
}

double sub_1D60416B4()
{
  sub_1D5BC3F04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_1D726294C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1D6BD1334(0, 0, v4, &unk_1D7291E80, v6);

  return result;
}

void sub_1D60417E0(void *a1, char a2)
{
  sub_1D5BC3F04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v30 - v7;
  v9 = sub_1D725891C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v30 - v21;
  if (a2)
  {
    v23 = [a1 puzzleStatsStartDate];
    if (v23)
    {
      v24 = v23;
      sub_1D72588BC();

      v31 = v2;
      v25 = *(v10 + 32);
      v25(v22, v17, v9);
      v26 = sub_1D726294C();
      (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
      (*(v10 + 16))(v13, v22, v9);
      v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v25((v29 + v27), v13, v9);
      *(v29 + v28) = v31;

      sub_1D6BD1334(0, 0, v8, &unk_1D7291E90, v29);

      (*(v10 + 8))(v22, v9);
    }
  }
}

uint64_t sub_1D6041AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D725891C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6041B64, 0, 0);
}

uint64_t sub_1D6041B64()
{
  v21 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1D725C42C();
  __swift_project_value_buffer(v5, qword_1EDFFCFA8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EDC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_1D5BC4174(&qword_1EDF3C3B0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v14 = sub_1D72644BC();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1D5BC5100(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D5B42000, v6, v7, "PuzzleStatsService: Received new starting date [%s]. Updating stats...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_1D6041DD8;

  return sub_1D5BC3E40(0);
}

uint64_t sub_1D6041DD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1D6041F6C()
{
  result = qword_1EC882B30;
  if (!qword_1EC882B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B30);
  }

  return result;
}

void sub_1D6041FC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9DC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1D726449C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D726276C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D6042554(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D60420F4(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PuzzleLeaderboardEntry(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D62FFAE0(v7);
  }

  v8 = v7[2];
  v9[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9[1] = v8;
  sub_1D60421B4(v9, a2, a3);
  *a1 = v7;
}

void sub_1D60421B4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = sub_1D726449C();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PuzzleLeaderboardEntry(0);
        v10 = sub_1D726276C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for PuzzleLeaderboardEntry(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

void sub_1D60422F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PuzzleLeaderboardEntry(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v32 - v18;
  v34 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v39 = -v21;
    v40 = v20;
    v23 = a1 - a3;
    v33 = v21;
    v24 = v20 + v21 * a3;
LABEL_5:
    v37 = v22;
    v38 = a3;
    v35 = v24;
    v36 = v23;
    while (1)
    {
      sub_1D5D12D48(v24, v19, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D12D48(v22, v14, type metadata accessor for PuzzleLeaderboardEntry);
      v25 = *(v8 + 28);
      v26 = v8;
      v27 = *&v19[v25];
      v28 = *&v14[v25];
      sub_1D5D12CE8(v14, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D12CE8(v19, type metadata accessor for PuzzleLeaderboardEntry);
      v29 = v27 < v28;
      v8 = v26;
      if (!v29)
      {
LABEL_4:
        a3 = v38 + 1;
        v22 = v37 + v33;
        v23 = v36 - 1;
        v24 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v30 = v41;
      sub_1D5D12DB0(v24, v41, type metadata accessor for PuzzleLeaderboardEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D5D12DB0(v30, v22, type metadata accessor for PuzzleLeaderboardEntry);
      v22 += v39;
      v24 += v39;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D6042554(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D62FF50C(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D6043400((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_1D698BA94((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_1D6043400((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

void sub_1D6042AA0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v130 = type metadata accessor for PuzzleLeaderboardEntry(0);
  v9 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v10);
  v119 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v127 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v129 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v128 = &v111 - v20;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
LABEL_99:
      v131 = v106;
      a4 = *(v106 + 2);
      if (a4 >= 2)
      {
        v107 = v9;
        while (*a3)
        {
          v108 = *&v106[16 * a4];
          v109 = v106;
          v9 = *&v106[16 * a4 + 24];
          sub_1D60435F4(*a3 + *(v107 + 72) * v108, *a3 + *(v107 + 72) * *&v106[16 * a4 + 16], *a3 + *(v107 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v108)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1D62FF50C(v109);
          }

          if (a4 - 2 >= *(v109 + 2))
          {
            goto LABEL_124;
          }

          v110 = &v109[16 * a4];
          *v110 = v108;
          *(v110 + 1) = v9;
          v131 = v109;
          sub_1D62FF480(a4 - 1);
          v106 = v131;
          a4 = *(v131 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v106 = sub_1D62FF50C(a4);
    goto LABEL_99;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v117 = a3;
  v112 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v120 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v113 = v6;
      v26 = *a3;
      v27 = *(v9 + 72);
      v5 = *a3 + v27 * v25;
      v28 = v128;
      sub_1D5D12D48(v5, v128, type metadata accessor for PuzzleLeaderboardEntry);
      v29 = v129;
      sub_1D5D12D48(v26 + v27 * v24, v129, type metadata accessor for PuzzleLeaderboardEntry);
      v30 = *(v130 + 28);
      v31 = *(v28 + v30);
      v123 = *(v29 + v30);
      v124 = v31;
      sub_1D5D12CE8(v29, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D12CE8(v28, type metadata accessor for PuzzleLeaderboardEntry);
      v114 = v24;
      v32 = v24 + 2;
      v125 = v27;
      v33 = v26 + v27 * v32;
      while (v21 != v32)
      {
        LODWORD(v126) = v124 < v123;
        v34 = v128;
        sub_1D5D12D48(v33, v128, type metadata accessor for PuzzleLeaderboardEntry);
        v35 = v129;
        sub_1D5D12D48(v5, v129, type metadata accessor for PuzzleLeaderboardEntry);
        v36 = *(v130 + 28);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_1D5D12CE8(v35, type metadata accessor for PuzzleLeaderboardEntry);
        sub_1D5D12CE8(v34, type metadata accessor for PuzzleLeaderboardEntry);
        ++v32;
        v33 += v125;
        v5 += v125;
        if (((v126 ^ (v37 >= v38)) & 1) == 0)
        {
          v21 = v32 - 1;
          break;
        }
      }

      a3 = v117;
      v9 = v112;
      v6 = v113;
      v24 = v114;
      a4 = v115;
      if (v124 < v123)
      {
        if (v21 < v114)
        {
          goto LABEL_127;
        }

        if (v114 < v21)
        {
          v39 = v125 * (v21 - 1);
          v40 = v21 * v125;
          v124 = v21;
          v41 = v21;
          v42 = v114;
          v43 = v114 * v125;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v117;
              if (!*v117)
              {
                goto LABEL_133;
              }

              v5 = v44 + v43;
              sub_1D5D12DB0(v44 + v43, v119, type metadata accessor for PuzzleLeaderboardEntry);
              if (v43 < v39 || v5 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D5D12DB0(v119, v44 + v39, type metadata accessor for PuzzleLeaderboardEntry);
            }

            ++v42;
            v39 -= v125;
            v40 -= v125;
            v43 += v125;
          }

          while (v42 < v41);
          a3 = v117;
          v9 = v112;
          v24 = v114;
          a4 = v115;
          v21 = v124;
        }
      }
    }

    v45 = a3[1];
    if (v21 >= v45)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_126;
    }

    if (v21 - v24 >= a4)
    {
LABEL_32:
      v47 = v21;
      if (v21 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_128;
    }

    if ((v24 + a4) >= v45)
    {
      v46 = a3[1];
    }

    else
    {
      v46 = v24 + a4;
    }

    if (v46 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v21 == v46)
    {
      goto LABEL_32;
    }

    v92 = *a3;
    v93 = *(v9 + 72);
    v94 = *a3 + v93 * (v21 - 1);
    v95 = v24;
    v96 = -v93;
    v113 = v6;
    v114 = v95;
    v97 = v95 - v21;
    v126 = v92;
    v118 = v93;
    v5 = v92 + v21 * v93;
    v98 = v130;
    v121 = v46;
LABEL_86:
    v123 = v97;
    v124 = v21;
    v122 = v5;
    v125 = v94;
    v99 = v94;
LABEL_87:
    a4 = v128;
    sub_1D5D12D48(v5, v128, type metadata accessor for PuzzleLeaderboardEntry);
    v100 = v129;
    sub_1D5D12D48(v99, v129, type metadata accessor for PuzzleLeaderboardEntry);
    v101 = *(v98 + 28);
    v102 = *(a4 + v101);
    v103 = *(v100 + v101);
    sub_1D5D12CE8(v100, type metadata accessor for PuzzleLeaderboardEntry);
    sub_1D5D12CE8(a4, type metadata accessor for PuzzleLeaderboardEntry);
    if (v102 < v103)
    {
      break;
    }

    v98 = v130;
LABEL_85:
    v21 = v124 + 1;
    v94 = v125 + v118;
    v97 = v123 - 1;
    v5 = v122 + v118;
    v47 = v121;
    if (v124 + 1 != v121)
    {
      goto LABEL_86;
    }

    v9 = v112;
    v6 = v113;
    a3 = v117;
    v24 = v114;
    if (v121 < v114)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v120;
    }

    else
    {
      v23 = sub_1D698BA94(0, *(v120 + 2) + 1, 1, v120);
    }

    a4 = *(v23 + 2);
    v48 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      v23 = sub_1D698BA94((v48 > 1), a4 + 1, 1, v23);
    }

    *(v23 + 2) = v5;
    v49 = &v23[16 * a4];
    *(v49 + 4) = v24;
    *(v49 + 5) = v47;
    v50 = *v116;
    if (!*v116)
    {
      goto LABEL_135;
    }

    v121 = v47;
    if (a4)
    {
      while (2)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          v56 = &v23[16 * v5 + 32];
          v57 = *(v56 - 64);
          v58 = *(v56 - 56);
          v62 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          if (v62)
          {
            goto LABEL_112;
          }

          v61 = *(v56 - 48);
          v60 = *(v56 - 40);
          v62 = __OFSUB__(v60, v61);
          v54 = v60 - v61;
          v55 = v62;
          if (v62)
          {
            goto LABEL_113;
          }

          v63 = &v23[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v62 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v62)
          {
            goto LABEL_115;
          }

          v62 = __OFADD__(v54, v66);
          v67 = v54 + v66;
          if (v62)
          {
            goto LABEL_118;
          }

          if (v67 >= v59)
          {
            v85 = &v23[16 * v51 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v62 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v62)
            {
              goto LABEL_122;
            }

            if (v54 < v88)
            {
              v51 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v55)
            {
              goto LABEL_114;
            }

            v68 = &v23[16 * v5];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_117;
            }

            v74 = &v23[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_121;
            }

            if (v72 + v77 < v54)
            {
              goto LABEL_66;
            }

            if (v54 < v77)
            {
              v51 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v52 = *(v23 + 4);
            v53 = *(v23 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
            goto LABEL_52;
          }

          v78 = &v23[16 * v5];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_66:
          if (v73)
          {
            goto LABEL_116;
          }

          v81 = &v23[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v84 < v72)
          {
            break;
          }
        }

        a4 = v51 - 1;
        if (v51 - 1 >= v5)
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v89 = v23;
        v90 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v51 + 40];
        sub_1D60435F4(*a3 + *(v9 + 72) * v90, *a3 + *(v9 + 72) * *&v23[16 * v51 + 32], *a3 + *(v9 + 72) * v5, v50);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v90)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1D62FF50C(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_111;
        }

        v91 = &v89[16 * a4];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v131 = v89;
        sub_1D62FF480(v51);
        v23 = v131;
        v5 = *(v131 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = a3[1];
    v22 = v121;
    a4 = v115;
    if (v121 >= v21)
    {
      goto LABEL_96;
    }
  }

  if (v126)
  {
    v104 = v127;
    sub_1D5D12DB0(v5, v127, type metadata accessor for PuzzleLeaderboardEntry);
    v98 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5D12DB0(v104, v99, type metadata accessor for PuzzleLeaderboardEntry);
    v99 += v96;
    v5 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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

uint64_t sub_1D6043400(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1D60435F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for PuzzleLeaderboardEntry(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v42 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v17 = (a2 - a1) / v15;
  v55 = a1;
  v54 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v19;
    if (v19 >= 1)
    {
      v28 = -v15;
      v29 = v27;
      v46 = a4;
      v47 = a1;
      v50 = v8;
      v45 = -v15;
      do
      {
        v43 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v48 = a2;
        v49 = a2 + v28;
        while (1)
        {
          if (v30 <= a1)
          {
            v55 = v30;
            v53 = v43;
            goto LABEL_60;
          }

          v33 = a3;
          v44 = v27;
          a3 += v28;
          v34 = v29 + v28;
          v35 = v51;
          sub_1D5D12D48(v29 + v28, v51, type metadata accessor for PuzzleLeaderboardEntry);
          v36 = v52;
          sub_1D5D12D48(v31, v52, type metadata accessor for PuzzleLeaderboardEntry);
          v37 = *(v8 + 28);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          sub_1D5D12CE8(v36, type metadata accessor for PuzzleLeaderboardEntry);
          sub_1D5D12CE8(v35, type metadata accessor for PuzzleLeaderboardEntry);
          if (v38 < v39)
          {
            break;
          }

          v27 = v34;
          if (v33 < v29 || a3 >= v29)
          {
            v32 = v50;
            swift_arrayInitWithTakeFrontToBack();
            v31 = v49;
            v8 = v32;
            v28 = v45;
          }

          else
          {
            v31 = v49;
            v8 = v50;
            v28 = v45;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v34;
          a1 = v47;
          v30 = v48;
          if (v34 <= v46)
          {
            a2 = v48;
            goto LABEL_59;
          }
        }

        v40 = v46;
        if (v33 < v48 || a3 >= v48)
        {
          a2 = v49;
          v8 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          v28 = v45;
        }

        else
        {
          v41 = v33 == v48;
          a2 = v49;
          v8 = v50;
          v27 = v44;
          v28 = v45;
          if (!v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v47;
      }

      while (v29 > v40);
    }

LABEL_59:
    v55 = a2;
    v53 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v53 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v48 = a3;
      v50 = v8;
      do
      {
        v21 = v51;
        sub_1D5D12D48(a2, v51, type metadata accessor for PuzzleLeaderboardEntry);
        v22 = v52;
        sub_1D5D12D48(a4, v52, type metadata accessor for PuzzleLeaderboardEntry);
        v23 = *(v8 + 28);
        v24 = *(v21 + v23);
        v25 = *(v22 + v23);
        sub_1D5D12CE8(v22, type metadata accessor for PuzzleLeaderboardEntry);
        sub_1D5D12CE8(v21, type metadata accessor for PuzzleLeaderboardEntry);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            v8 = v50;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v48;
          }

          else
          {
            v26 = v48;
            v8 = v50;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4 + v15;
          a4 += v15;
        }

        else if (a1 < a2 || a1 >= a2 + v15)
        {
          v8 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v15;
          v26 = v48;
        }

        else
        {
          v26 = v48;
          v8 = v50;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v55 = a1;
      }

      while (a4 < v49 && a2 < v26);
    }
  }

LABEL_60:
  sub_1D62FF538(&v55, &v54, &v53);
}

uint64_t sub_1D6043B20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C6650 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4274636566726570 && a2 == 0xEE006C6576654C79 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4264657472617473 && a2 == 0xEE006C6576654C79 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C6670 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C6690 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5374736568676968 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B6165727473 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1D6043DD0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PuzzleStreak(0) - 8;
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v38 = v15;
  v17 = *(v16 + 16);
  if (v17)
  {
    v31[1] = v10;
    v37 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    v18 = v6;

    v35 = v11;

    v34 = v12;

    v33 = v14;

    v32 = v13;

    sub_1D5BFC364(0, v17, 0);
    v19 = v39;
    v20 = v18;
    v21 = *(v18 + 80);
    v31[0] = v16;
    v22 = v16 + ((v21 + 32) & ~v21);
    v23 = *(v20 + 72);
    do
    {
      sub_1D5D12D48(v22, v8, type metadata accessor for PuzzleStreak);
      v24 = PuzzleStreak.debugDescription.getter();
      v26 = v25;
      sub_1D5D12CE8(v8, type metadata accessor for PuzzleStreak);
      v39 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D5BFC364((v27 > 1), v28 + 1, 1);
        v19 = v39;
      }

      *(v19 + 16) = v28 + 1;
      v29 = v19 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v22 += v23;
      --v17;
    }

    while (v17);

    v30 = v38;

    v13 = v32;

    v14 = v33;

    v12 = v34;

    v11 = v35;

    v9 = v36;

    a2 = v37;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    v30 = v38;
  }

  *a2 = v9;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;
  a2[4] = v13;
  a2[5] = v30;
  a2[6] = v19;
}

unint64_t sub_1D60440DC()
{
  result = qword_1EC882B50;
  if (!qword_1EC882B50)
  {
    sub_1D5D127FC(255, &qword_1EC882B48, MEMORY[0x1E69E6158], &type metadata for PuzzleTypeDebugStats, MEMORY[0x1E69E6168]);
    sub_1D604417C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B50);
  }

  return result;
}

unint64_t sub_1D604417C()
{
  result = qword_1EC882B58;
  if (!qword_1EC882B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B58);
  }

  return result;
}

uint64_t sub_1D60442A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C6650 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4264657472617473 && a2 == 0xEE006C6576654C79 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C6670 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C6690 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374736568676968 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736B6165727473 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_1D6044504(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5D12440(0, &unk_1EC882B70, sub_1D6044E4C, &type metadata for PuzzleTypeDebugStats.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D6044E4C();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v25 = v7;
    sub_1D5D125C4(0);
    v27 = 0;
    sub_1D5D1262C();
    sub_1D726431C();
    v24 = v28;
    v27 = 1;
    sub_1D726431C();
    v23 = v28;
    sub_1D5D127FC(0, &unk_1EDF055A0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6530], MEMORY[0x1E69E7370]);
    v27 = 2;
    sub_1D5D12850(&qword_1EDF05590, MEMORY[0x1E69E7390], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1D726431C();
    v22 = v28;
    sub_1D5D127FC(0, &qword_1EDF055F0, MEMORY[0x1E69E7360], MEMORY[0x1E69E63B0], MEMORY[0x1E69E7370]);
    v27 = 3;
    sub_1D5D128D4(&unk_1EDF055D8, MEMORY[0x1E69E7390], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
    sub_1D726431C();
    v21 = v28;
    v27 = 4;
    sub_1D726431C();
    v20 = v28;
    v27 = 5;
    sub_1D726431C();
    v12 = v25;
    v13 = v28;
    sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v27 = 6;
    sub_1D5B99580(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v12 + 8))(v10, v6);
    v14 = v28;
    v15 = v24;

    v16 = v20;
    v17 = v23;

    v18 = v22;

    v19 = v21;

    __swift_destroy_boxed_opaque_existential_1(v26);

    *a2 = v15;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v19;
    a2[4] = v16;
    a2[5] = v13;
    a2[6] = v14;
  }
}

uint64_t sub_1D6044B50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64680;

  return sub_1D6041620();
}

uint64_t sub_1D6044C04(uint64_t a1)
{
  v4 = *(sub_1D725891C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64684;

  return sub_1D6041AA4(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1D6044D24()
{
  result = qword_1EDF0F6E8[0];
  if (!qword_1EDF0F6E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0F6E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23PuzzleStatsServiceErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6044DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

void *sub_1D6044E1C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1D6044E4C()
{
  result = qword_1EC882B68;
  if (!qword_1EC882B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B68);
  }

  return result;
}

unint64_t sub_1D6044EB4()
{
  result = qword_1EC882B80;
  if (!qword_1EC882B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B80);
  }

  return result;
}

unint64_t sub_1D6044F0C()
{
  result = qword_1EC882B88;
  if (!qword_1EC882B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B88);
  }

  return result;
}

unint64_t sub_1D6044F64()
{
  result = qword_1EC882B90;
  if (!qword_1EC882B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B90);
  }

  return result;
}

id VideoDurationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *VideoDurationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setCornerRadius_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:1.0];
  [v11 setBackgroundColor_];

  v14 = OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label;
  [v11 addSubview_];
  v15 = *&v11[v14];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 whiteColor];
  [v17 setTextColor_];

  [*&v11[v14] setTextAlignment_];
  v19 = *&v11[v14];
  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69DB980];
  v22 = v19;
  v23 = [v20 systemFontOfSize:12.0 weight:v21];
  v24 = [v23 fontDescriptor];
  v25 = [v24 fontDescriptorWithDesign_];

  if (v25)
  {
    v26 = [v20 fontWithDescriptor:v25 size:12.0];

    v23 = v26;
  }

  [v22 setFont_];

  return v11;
}

Swift::Void __swiftcall VideoDurationView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label];
  [v0 bounds];
  [v1 setFrame_];
}

id VideoDurationView.intrinsicContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label);
  result = [v1 font];
  if (result)
  {
    v3 = result;
    [result capHeight];

    return [v1 intrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VideoDurationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of RecipeImageShareAttributeProviderType.shareImage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6036AEC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RecipeImageShareAttributeProviderType.shareIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6045DDC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D6045880(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6036AEC;

  return sub_1D60459A8(a1);
}

uint64_t sub_1D6045914(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6045DDC;

  return sub_1D60459A8(a1);
}

uint64_t sub_1D60459C8()
{
  v1 = [*(v0 + 48) thumbnailMedium];
  if (v1 && (v2 = v1, v3 = [v1 thumbnailAssetHandle], *(v0 + 56) = v3, v2, v3))
  {
    v4 = [v3 filePath];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D726207C();
      v8 = v7;

      *(v0 + 32) = v6;
      *(v0 + 40) = v8;
      sub_1D5F129A4();
      swift_allocObject();
      v9 = sub_1D725BB1C();
    }

    else
    {
      *(swift_task_alloc() + 16) = v3;
      sub_1D5F129A4();
      swift_allocObject();
      v9 = sub_1D725BBAC();
    }

    *(v0 + 64) = v9;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_1D6045B94;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1D6045B94()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6045D64;
  }

  else
  {

    v2 = sub_1D6045CB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6045CB0()
{
  v1 = *(v0 + 56);
  v2 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v3 = sub_1D726203C();

  v4 = [v2 initWithContentsOfFile_];

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1D6045D64()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t FormatAccessibilityNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatAccessibilityNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatAccessibilityNode.property.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  return sub_1D5D07778(v3, v4);
}

unint64_t FormatAccessibilityNode.property.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return sub_1D5D06D9C(v4, v5);
}

uint64_t FormatAccessibilityNode.invalidation.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 98);
  v10 = *(v1 + 96);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 50) = v9;
  *(a1 + 48) = v10;
  return sub_1D6046038(v3, v4, v5, v6, v7, v8, v10 | (v9 << 16));
}

uint64_t sub_1D6046038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (((a7 >> 17) & 0x7F) != 0x7F)
  {
    return sub_1D5D0A5BC(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t FormatAccessibilityNode.invalidation.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 50);
  v6 = *(a1 + 48);
  swift_beginAccess();
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96) | (*(v1 + 98) << 16);
  v14 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v14;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v6;
  *(v1 + 98) = v5;
  return sub_1D5C67600(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t FormatAccessibilityNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatAccessibilityNode.__allocating_init(identifier:property:invalidation:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v11 = *a3;
  v12 = *(a3 + 8);
  v24 = *(a4 + 40);
  v25 = *(a4 + 32);
  v26 = *(a4 + 50);
  v13 = *(a4 + 48);
  v27 = *(a5 + 5);
  v28 = *(a5 + 4);
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 98) = -2;
  swift_beginAccess();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  swift_beginAccess();
  v14 = *(v10 + 48);
  v15 = *(v10 + 56);
  v16 = *(v10 + 64);
  v17 = *(v10 + 72);
  v18 = *(v10 + 80);
  v19 = *(v10 + 88);
  v20 = *(v10 + 96) | (*(v10 + 98) << 16);
  v21 = *(a4 + 16);
  *(v10 + 48) = *a4;
  *(v10 + 64) = v21;
  *(v10 + 80) = v25;
  *(v10 + 88) = v24;
  *(v10 + 96) = v13;
  *(v10 + 98) = v26;
  sub_1D5C67600(v14, v15, v16, v17, v18, v19, v20);
  v22 = *a5;
  *(v10 + 120) = a5[1];
  *(v10 + 104) = v22;
  *(v10 + 136) = v28;
  *(v10 + 144) = v27;
  return v10;
}

uint64_t FormatAccessibilityNode.init(identifier:property:invalidation:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  v23 = *(a4 + 40);
  v24 = *(a4 + 32);
  v25 = *(a4 + 50);
  v12 = *(a4 + 48);
  v26 = *(a5 + 5);
  v27 = *(a5 + 4);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 98) = -2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  swift_beginAccess();
  v13 = *(v5 + 48);
  v14 = *(v5 + 56);
  v15 = *(v5 + 64);
  v16 = *(v5 + 72);
  v17 = *(v5 + 80);
  v18 = *(v5 + 88);
  v19 = *(v5 + 96) | (*(v5 + 98) << 16);
  v20 = *(a4 + 16);
  *(v5 + 48) = *a4;
  *(v5 + 64) = v20;
  *(v5 + 80) = v24;
  *(v5 + 88) = v23;
  *(v5 + 96) = v12;
  *(v5 + 98) = v25;
  sub_1D5C67600(v13, v14, v15, v16, v17, v18, v19);
  v21 = *a5;
  *(v5 + 120) = a5[1];
  *(v5 + 104) = v21;
  *(v5 + 136) = v27;
  *(v5 + 144) = v26;
  return v5;
}

uint64_t FormatAccessibilityNode.deinit()
{

  sub_1D5D06D9C(*(v0 + 32), *(v0 + 40));
  sub_1D5C67600(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) | (*(v0 + 98) << 16));
  sub_1D5EB2398(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  return v0;
}

uint64_t FormatAccessibilityNode.__deallocating_deinit()
{

  sub_1D5D06D9C(*(v0 + 32), *(v0 + 40));
  sub_1D5C67600(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) | (*(v0 + 98) << 16));
  sub_1D5EB2398(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6046474(uint64_t a1, uint64_t a2)
{
  result = sub_1D6047BB0(&qword_1EC882BA8, a2, type metadata accessor for FormatAccessibilityNode, &protocol conformance descriptor for FormatAccessibilityNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60464CC(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6047BB0(&qword_1EDF27850, a2, type metadata accessor for FormatAccessibilityNode, &protocol conformance descriptor for FormatAccessibilityNode);
  a1[2] = sub_1D6047BB0(&unk_1EDF0D648, v3, type metadata accessor for FormatAccessibilityNode, &protocol conformance descriptor for FormatAccessibilityNode);
  result = sub_1D6047BB0(&qword_1EC882BB0, v4, type metadata accessor for FormatAccessibilityNode, &protocol conformance descriptor for FormatAccessibilityNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60465A8(uint64_t a1, uint64_t a2)
{
  result = sub_1D6047BB0(&qword_1EC882BB8, a2, type metadata accessor for FormatAccessibilityNode, &protocol conformance descriptor for FormatAccessibilityNode);
  *(a1 + 8) = result;
  return result;
}

void sub_1D6046600(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, __n128 a9)
{
  v113 = a2;
  v112 = a8;
  sub_1D6047B58(0, a9);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v107 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v99 - v20;
  v106 = type metadata accessor for FormatNodeStateData.Data(0);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v22);
  v108 = (&v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  swift_beginAccess();
  v24 = *(a3 + 96) | (*(a3 + 98) << 16);
  v111 = a5;
  if (v24 < 0xFE0000)
  {
    v100 = a1;
    v101 = a7;
    v102 = a6;
    v26 = *(a3 + 56);
    v28 = *(a3 + 64);
    v27 = *(a3 + 72);
    v30 = *(a3 + 80);
    v29 = *(a3 + 88);
    v110 = *(a3 + 48);
    sub_1D5D0A5BC(v110, v26, v28, v27, v30, v29, v24);

    v104 = v29;
    if ((v24 & 0x800000) != 0)
    {
      v117[0] = BYTE2(v24) & 1;
      v118 = v110;
      v119 = v26;
      v120 = v28;
      v121 = v27;
      v122 = v30;
      v123 = v29;
      v124 = v24;
      v125 = BYTE2(v24) & 1;
      v36 = a4;
      v37 = v114;
      v38 = sub_1D688DD04(a4);
      v114 = v37;
      if (v37)
      {
        sub_1D5C67600(v110, v26, v28, v27, v30, v104, v24);
        return;
      }

      v40 = v38;
      v109 = v36;
      v103 = v21;
      sub_1D5C67600(v110, v26, v28, v27, v30, v104, v24);
      v25 = 1;
      a6 = v102;
      a5 = v111;
      v110 = v40;
    }

    else
    {
      v99 = v30;
      v103 = v21;
      v118 = a4;
      v31 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v32 = v31();
      v33 = v110;
      v34 = v114;
      v35 = sub_1D5E02AFC(v32, v110);
      v114 = v34;
      if (v34)
      {
        sub_1D5C67600(v33, v26, v28, v27, v99, v104, v24);

        return;
      }

      v39 = *&v35;
      v109 = a4;
      sub_1D5C67600(v33, v26, v28, v27, v99, v104, v24);

      v25 = 0;
      v110 = v39;
      a6 = v102;
      a5 = v111;
    }

    a7 = v101;
    a1 = v100;
  }

  else
  {
    v109 = a4;
    v103 = v21;

    v110 = 0;
    v25 = 255;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v41 = *(a3 + 32);
  v42 = *(a3 + 40);
  sub_1D5D07778(v41, *(a3 + 40));

  if (v42)
  {
    v43 = 4;
  }

  else
  {
    v43 = 0;
  }

  v44 = (v41 >> 60) & 3 | v43;
  if (v44 <= 2)
  {
    LODWORD(v104) = v42;
    if (!v44)
    {
      v61 = type metadata accessor for FormatAccessibilityLayoutValue();
      v62 = swift_allocObject();
      *(v62 + 16) = a5;
      *(v62 + 24) = a6;
      *(v62 + 32) = 18;
      v116 = a1;
      swift_getKeyPath();
      v121 = v61;
      v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
      v118 = v62;
      sub_1D5EB563C(0);
      v101 = v63;
      sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);
      v64 = v25;
      sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8, MEMORY[0x1E69D71A0]);

      v65 = v110;
      v66 = v64;
      sub_1D72599FC();

      __swift_destroy_boxed_opaque_existential_1(&v118);
      v115 = v41;
      v118 = v65;
      LOBYTE(v119) = v64;

      v67 = v114;
      sub_1D6EFC244(v109, v113, &v118, &v116);

      v114 = v67;
      if (!v67)
      {

        v109 = v116;
        v84 = v108;
        *v108 = v116;
        v85 = v106;
        swift_storeEnumTagMultiPayload();
        v86 = v103;
        sub_1D6047CB4(v84, v103, type metadata accessor for FormatNodeStateData.Data);
        (*(v105 + 56))(v86, 0, 1, v85);
        v87 = v107;
        sub_1D6047CB4(v86, v107, sub_1D6047B58);
        swift_beginAccess();
        v113 = v41;

        sub_1D6D60A18(v87, v111, a6);
        swift_endAccess();
        sub_1D6047C90(v65, v66);
        sub_1D5D06D9C(v113, v104);

        goto LABEL_40;
      }

      sub_1D5D06D9C(v41, v104);
      v59 = v65;
      v60 = v64;
LABEL_32:
      sub_1D6047C90(v59, v60);
      return;
    }

    LODWORD(v102) = v25;
    v101 = v41 & 0xCFFFFFFFFFFFFFFFLL;
    if (v44 == 1)
    {
      v51 = type metadata accessor for FormatAccessibilityLayoutValue();
      v52 = swift_allocObject();
      v53 = v52;
      *(v52 + 16) = a5;
      *(v52 + 24) = a6;
      v54 = 19;
    }

    else
    {
      v51 = type metadata accessor for FormatAccessibilityLayoutValue();
      v52 = swift_allocObject();
      v53 = v52;
      *(v52 + 16) = a5;
      *(v52 + 24) = a6;
      v54 = 20;
    }

    *(v52 + 32) = v54;
    v116 = a1;
    swift_getKeyPath();
    v121 = v51;
    v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
    v118 = v53;
    sub_1D5EB563C(0);
    sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);
    sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8, MEMORY[0x1E69D71A0]);

    sub_1D72599FC();

    __swift_destroy_boxed_opaque_existential_1(&v118);
    v115 = v101;
    v68 = v110;
    v118 = v110;
    v69 = v102;
    LOBYTE(v119) = v102;

    v70 = v114;
    sub_1D6EFC244(v109, v113, &v118, &v116);
    v114 = v70;
    if (v70)
    {
LABEL_31:

      sub_1D5D06D9C(v41, v104);
      v59 = v68;
      v60 = v69;
      goto LABEL_32;
    }

    v71 = v108;
    *v108 = v116;
    v72 = v106;
    swift_storeEnumTagMultiPayload();
    v73 = a6;
    v74 = v103;
    sub_1D6047CB4(v71, v103, type metadata accessor for FormatNodeStateData.Data);
    (*(v105 + 56))(v74, 0, 1, v72);
    v75 = v107;
    sub_1D6047CB4(v74, v107, sub_1D6047B58);
    swift_beginAccess();

    sub_1D6D60A18(v75, v111, v73);
    swift_endAccess();
    sub_1D6047C90(v68, v102);
    v76 = v41;
  }

  else
  {
    if (v44 <= 4)
    {
      LODWORD(v102) = v25;
      LODWORD(v104) = v42;
      if (v44 == 3)
      {
        v101 = v41 & 0xCFFFFFFFFFFFFFFFLL;
        v45 = type metadata accessor for FormatAccessibilityLayoutValue();
        v46 = swift_allocObject();
        *(v46 + 16) = a5;
        *(v46 + 24) = a6;
        *(v46 + 32) = 21;
        v116 = a1;
        swift_getKeyPath();
        v121 = v45;
        v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
        v118 = v46;
        sub_1D5EB563C(0);
        sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);
        v47 = a6;
        sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8, MEMORY[0x1E69D71A0]);

        sub_1D72599FC();

        __swift_destroy_boxed_opaque_existential_1(&v118);
        v115 = v101;
        v48 = v110;
        v118 = v110;
        v49 = v102;
        LOBYTE(v119) = v102;
        v50 = v114;
        sub_1D6EFC244(v109, v113, &v118, &v116);
        v114 = v50;
        if (v50)
        {

          sub_1D6047C90(v48, v49);
          sub_1D5D06D9C(v41, v104);
          return;
        }

        v71 = v108;
        *v108 = v116;
        v88 = v106;
        swift_storeEnumTagMultiPayload();
        v74 = v103;
        sub_1D6047CB4(v71, v103, type metadata accessor for FormatNodeStateData.Data);
        (*(v105 + 56))(v74, 0, 1, v88);
        v89 = v41;
        v90 = v107;
        sub_1D6047CB4(v74, v107, sub_1D6047B58);
        swift_beginAccess();

        sub_1D6D60A18(v90, v111, v47);
        swift_endAccess();
        sub_1D6047C90(v48, v102);
        sub_1D5D06D9C(v89, v104);

        goto LABEL_38;
      }

      v77 = type metadata accessor for FormatAccessibilityLayoutValue();
      v78 = swift_allocObject();
      *(v78 + 16) = a5;
      *(v78 + 24) = a6;
      *(v78 + 32) = 22;
      v116 = a1;
      swift_getKeyPath();
      v121 = v77;
      v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
      v118 = v78;
      sub_1D5EB563C(0);
      sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);
      sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8, MEMORY[0x1E69D71A0]);

      sub_1D72599FC();

      __swift_destroy_boxed_opaque_existential_1(&v118);
      v115 = v41;
      v68 = v110;
      v118 = v110;
      v69 = v102;
      LOBYTE(v119) = v102;

      v79 = v114;
      sub_1D6EFC244(v109, v113, &v118, &v116);
      v114 = v79;
      if (v79)
      {
        goto LABEL_31;
      }

      v109 = v116;
      v84 = v108;
      *v108 = v116;
      v96 = v106;
      swift_storeEnumTagMultiPayload();
      v97 = v69;
      v86 = v103;
      sub_1D6047CB4(v84, v103, type metadata accessor for FormatNodeStateData.Data);
      (*(v105 + 56))(v86, 0, 1, v96);
      v113 = v41;
      v98 = v107;
      sub_1D6047CB4(v86, v107, sub_1D6047B58);
      swift_beginAccess();

      sub_1D6D60A18(v98, v111, a6);
      swift_endAccess();
      sub_1D6047C90(v68, v97);
      sub_1D5D06D9C(v113, v104);

LABEL_40:

      sub_1D6047D1C(v86, sub_1D6047B58);
      v95 = v84;
      goto LABEL_41;
    }

    if (v44 != 5)
    {
      v80 = type metadata accessor for FormatAccessibilityLayoutValue();
      v81 = swift_allocObject();
      v82 = a1;
      v83 = v81;
      *(v81 + 16) = a5;
      *(v81 + 24) = a6;
      *(v81 + 32) = v41;
      v116 = v82;
      swift_getKeyPath();
      v121 = v80;
      v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
      v118 = v83;
      sub_1D5EB563C(0);
      sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);
      sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8, MEMORY[0x1E69D71A0]);

      sub_1D72599FC();
      sub_1D6047C90(v110, v25);

      __swift_destroy_boxed_opaque_existential_1(&v118);
      return;
    }

    LODWORD(v104) = v42;
    v101 = a7;
    v100 = v41 & 0xCFFFFFFFFFFFFFFFLL;
    v55 = type metadata accessor for FormatAccessibilityLayoutValue();
    v56 = swift_allocObject();
    *(v56 + 16) = a5;
    *(v56 + 24) = a6;
    *(v56 + 32) = 23;
    v116 = a1;
    swift_getKeyPath();
    v121 = v55;
    v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
    v118 = v56;
    sub_1D5EB563C(0);
    sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);
    sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8, MEMORY[0x1E69D71A0]);

    sub_1D72599FC();

    __swift_destroy_boxed_opaque_existential_1(&v118);
    v115 = v100;
    v57 = v110;
    v118 = v110;
    LOBYTE(v119) = v25;

    v58 = v114;
    sub_1D6EFC244(v109, v113, &v118, &v116);
    v114 = v58;
    if (v58)
    {

      sub_1D5D06D9C(v41, v104);
      v59 = v57;
      v60 = v25;
      goto LABEL_32;
    }

    v113 = v116;
    LODWORD(v102) = v25;
    v71 = v108;
    *v108 = v116;
    v91 = v106;
    swift_storeEnumTagMultiPayload();
    v92 = a6;
    v74 = v103;
    sub_1D6047CB4(v71, v103, type metadata accessor for FormatNodeStateData.Data);
    (*(v105 + 56))(v74, 0, 1, v91);
    v93 = v41;
    v94 = v107;
    sub_1D6047CB4(v74, v107, sub_1D6047B58);
    swift_beginAccess();

    sub_1D6D60A18(v94, v111, v92);
    swift_endAccess();
    sub_1D6047C90(v57, v102);
    v76 = v93;
  }

  sub_1D5D06D9C(v76, v104);

LABEL_38:

  sub_1D6047D1C(v74, sub_1D6047B58);
  v95 = v71;
LABEL_41:
  sub_1D6047D1C(v95, type metadata accessor for FormatNodeStateData.Data);
}