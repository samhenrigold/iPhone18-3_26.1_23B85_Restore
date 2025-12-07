void sub_1D630052C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedCustomItem(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedCustomItem);
      sub_1D630BA20(v22, v9, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &unk_1EDF01D58, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D63008BC(uint64_t a1)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedRecipe(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedRecipe);
      sub_1D630BA20(v22, v9, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EC885988, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D6300C4C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedPuzzleStatistic(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedPuzzleStatistic);
      sub_1D630BA20(v22, v9, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EC885980, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D6300FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (a1 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6[1];
      v25[0] = *v6;
      v25[1] = v8;
      v9 = v6[3];
      v26 = v6[2];
      v27 = v9;
      v28 = v25[0];
      v29 = v8;
      v30 = v26;
      v31 = v9;
      if (v4)
      {
        sub_1D63071F4(v25, v24);
        v2 = v7;
        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = v7[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        sub_1D630B53C(0);
        v2 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v2) - 32) / 72;
        v2[2] = v13;
        v2[3] = 2 * v14;
        v15 = v7[3] >> 1;
        v5 = &v2[9 * v15 + 4];
        v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v15;
        if (v7[2])
        {
          v17 = v2 < v7 || v2 + 4 >= &v7[9 * v15 + 4];
          if (!v17 && v2 == v7)
          {
            sub_1D63071F4(v25, v24);
          }

          else
          {
            sub_1D63071F4(v25, v24);
            memmove(v2 + 4, v7 + 4, 72 * v15);
          }

          v7[2] = 0;

          v10 = __OFSUB__(v16, 1);
          v4 = v16 - 1;
          if (v10)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return;
          }
        }

        else
        {
          sub_1D63071F4(v25, v24);

          v10 = __OFSUB__(v16, 1);
          v4 = v16 - 1;
          if (v10)
          {
            goto LABEL_30;
          }
        }
      }

      *v5 = v3;
      v18 = v28;
      v19 = v29;
      v20 = v30;
      *(v5 + 56) = v31;
      *(v5 + 40) = v20;
      *(v5 + 24) = v19;
      *(v5 + 8) = v18;
      v5 += 72;
      v6 += 4;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v10 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v10)
    {
      goto LABEL_32;
    }

    v2[2] = v23;
  }
}

void sub_1D63011FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      *&v29[0] = v3;
      sub_1D5F2DEAC(v5, v29 + 8);
      v41 = v29[10];
      v42 = v29[11];
      v43 = v29[12];
      v44 = v30;
      v37 = v29[6];
      v38 = v29[7];
      v39 = v29[8];
      v40 = v29[9];
      v33 = v29[2];
      v34 = v29[3];
      v35 = v29[4];
      v36 = v29[5];
      v31 = v29[0];
      v32 = v29[1];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D630B4CC(0);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 216;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          v14 = v2 + 4;
          if (v10 != v2 || v12 >= v14 + 216 * v13)
          {
            memmove(v10 + 4, v14, 216 * v13);
          }

          v2[2] = 0;
        }

        v6 = v12 + 216 * v13;
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v32;
      *v6 = v31;
      *(v6 + 16) = v16;
      v17 = v33;
      v18 = v34;
      v19 = v36;
      *(v6 + 64) = v35;
      *(v6 + 80) = v19;
      *(v6 + 32) = v17;
      *(v6 + 48) = v18;
      v20 = v37;
      v21 = v38;
      v22 = v40;
      *(v6 + 128) = v39;
      *(v6 + 144) = v22;
      *(v6 + 96) = v20;
      *(v6 + 112) = v21;
      v23 = v41;
      v24 = v42;
      v25 = v43;
      *(v6 + 208) = v44;
      *(v6 + 176) = v24;
      *(v6 + 192) = v25;
      *(v6 + 160) = v23;
      v6 += 216;
      v5 += 208;
      if (v1 == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = 0;
LABEL_18:
  v26 = v2[3];
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v15 = __OFSUB__(v27, v4);
    v28 = v27 - v4;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v2[2] = v28;
  }
}

void sub_1D630142C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedWebEmbed(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedWebEmbed);
      sub_1D630BA20(v22, v9, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EDF01D48, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D63017BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      *&v27[0] = v3;
      sub_1D5EE5AF8(v5, v27 + 8);
      v35 = v27[6];
      v36 = v27[7];
      v37[0] = v28[0];
      *(v37 + 9) = *(v28 + 9);
      v31 = v27[2];
      v32 = v27[3];
      v33 = v27[4];
      v34 = v27[5];
      v29 = v27[0];
      v30 = v27[1];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D630B464(0);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 160;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        v14 = 20 * v13;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[v14 + 4])
          {
            memmove(v10 + 4, v2 + 4, 160 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + v14 * 8);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        break;
      }

      ++v3;
      v17 = v30;
      *v6 = v29;
      v6[1] = v17;
      v18 = v31;
      v19 = v32;
      v20 = v34;
      v6[4] = v33;
      v6[5] = v20;
      v6[2] = v18;
      v6[3] = v19;
      v21 = v35;
      v22 = v36;
      v23 = v37[0];
      *(v6 + 137) = *(v37 + 9);
      v6[7] = v22;
      v6[8] = v23;
      v6[6] = v21;
      v6 += 10;
      v5 += 152;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v24 = v2[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v16 = __OFSUB__(v25, v4);
    v26 = v25 - v4;
    if (v16)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v26;
  }
}

void sub_1D63019AC(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_35:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_31;
        }

        if (v3 >= v10)
        {
          goto LABEL_35;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = (v9 + 24 * v11);
        v13 = v12[5];
        v27 = v12[4];
        v28 = v12[6];
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v16 = v5[3];
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_38;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          sub_1D5B7F04C(0, &qword_1EC89C800, &type metadata for DebugJournalGroupSection, MEMORY[0x1E69E6F90]);
          v14 = swift_allocObject();
          v19 = (_swift_stdlib_malloc_size(v14) - 32) / 24;
          v14[2] = v18;
          v14[3] = 2 * v19;
          v20 = v14 + 4;
          v21 = v5[3] >> 1;
          v6 = &v14[3 * v21 + 4];
          v22 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;
          if (v5[2])
          {
            if (v14 != v5 || v20 >= &v5[3 * v21 + 4])
            {
              memmove(v20, v5 + 4, 24 * v21);
            }

            v5[2] = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v22, 1);
          v2 = v22 - 1;
          if (v15)
          {
            goto LABEL_37;
          }
        }

        ++v11;
        *v6 = v27;
        v6[1] = v13;
        v6[2] = v28;
        v6 += 3;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_31:

  v24 = v5[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v15 = __OFSUB__(v25, v2);
    v26 = v25 - v2;
    if (v15)
    {
LABEL_39:
      __break(1u);
      return;
    }

    v5[2] = v26;
  }
}

void sub_1D6301C14(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1DA6FB460](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_1D7263BFC();
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1D630BA8C(0, &qword_1EC885940, &unk_1EC88EAE0, MEMORY[0x1E69D7608]);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v5);
    v25 = v24 - v5;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v3[2] = v25;
    }
  }
}

void sub_1D6301E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      __src[0] = v3;
      sub_1D5F76E40(v5, &__src[1]);
      memcpy(__dst, __src, sizeof(__dst));
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D6306F5C(0);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 296;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        v14 = 296 * v13;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[v14 / 8 + 4])
          {
            memmove(v10 + 4, v2 + 4, v14);
          }

          v2[2] = 0;
        }

        v6 = (v12 + v14);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        break;
      }

      ++v3;
      memcpy(v6, __dst, 0x122uLL);
      v6 += 296;
      v5 += 288;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v4);
    v19 = v18 - v4;
    if (v16)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v19;
  }
}

void sub_1D6301FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      *&v26[0] = v3;
      sub_1D5F76D3C(v5, v26 + 8);
      v33 = v26[6];
      v34 = v26[7];
      v35 = v26[8];
      v36 = v26[9];
      v29 = v26[2];
      v30 = v26[3];
      v31 = v26[4];
      v32 = v26[5];
      v27 = v26[0];
      v28 = v26[1];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D6306E10(0);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 160;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[20 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 160 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 160 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v28;
      *v6 = v27;
      v6[1] = v16;
      v17 = v29;
      v18 = v30;
      v19 = v32;
      v6[4] = v31;
      v6[5] = v19;
      v6[2] = v17;
      v6[3] = v18;
      v20 = v33;
      v21 = v34;
      v22 = v36;
      v6[8] = v35;
      v6[9] = v22;
      v6[6] = v20;
      v6[7] = v21;
      v6 += 10;
      v5 += 152;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v23 = v2[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v15 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (v15)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v25;
  }
}

void sub_1D63021A0(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FormatSlotDefinitionItemSet(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D630BA20(v22, v9, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EC8859A0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D6302530(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = a1 + 32;
    while (1)
    {
      v20 = *(v6 + 16 * v3);
      if (v4)
      {

        v7 = __OFSUB__(v4--, 1);
        if (v7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_1D630BA8C(0, &qword_1EC8859A8, &qword_1EC8859B0, sub_1D630BAE4);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = v11 + 4;
        v14 = v2[3] >> 1;
        v5 = &v11[3 * v14 + 4];
        v15 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[3 * v14 + 4])
          {
            memmove(v13, v2 + 4, 24 * v14);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v11;
        v7 = __OFSUB__(v15, 1);
        v4 = v15 - 1;
        if (v7)
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
      *(v5 + 8) = v20;
      v5 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v7 = __OFSUB__(v18, v4);
    v19 = v18 - v4;
    if (v7)
    {
      goto LABEL_30;
    }

    v2[2] = v19;
  }
}

uint64_t sub_1D6302700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D5B63F14(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1D63027A8(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, void (*a5)(unsigned __int8 *__return_ptr, _BYTE *, _BYTE *))
{
  v6 = a2[4];
  v28 = a2[5];
  v7 = a2[5];
  v29 = a2[6];
  v8 = a2[6];
  v30[0] = a2[7];
  *(v30 + 9) = *(a2 + 121);
  v9 = a2[1];
  v10 = a2[3];
  v25 = a2[2];
  v26 = v10;
  v11 = a2[3];
  v27 = a2[4];
  v12 = a2[1];
  v24[0] = *a2;
  v24[1] = v12;
  v13 = a4[6];
  v14 = a4[4];
  v35 = a4[5];
  v36 = v13;
  v15 = a4[6];
  v37[0] = a4[7];
  *(v37 + 9) = *(a4 + 121);
  v16 = a4[1];
  v17 = a4[3];
  v32 = a4[2];
  v33 = v17;
  v18 = a4[3];
  v34 = a4[4];
  v19 = a4[1];
  v31[0] = *a4;
  v31[1] = v19;
  *&v23[88] = v7;
  *&v23[104] = v8;
  *&v23[120] = a2[7];
  *&v23[129] = *(a2 + 121);
  *&v23[24] = v9;
  *&v23[40] = v25;
  *&v23[56] = v11;
  *&v23[72] = v6;
  *&v23[8] = v24[0];
  *&v22[88] = v35;
  *&v22[104] = v15;
  *&v22[120] = a4[7];
  *&v22[129] = *(a4 + 121);
  *&v22[24] = v16;
  *&v22[40] = v32;
  *&v22[56] = v18;
  *&v22[72] = v14;
  *v23 = a1;
  *v22 = a3;
  *&v22[8] = v31[0];
  sub_1D5ECF2C4(v24, v40);
  sub_1D5ECF2C4(v31, v40);
  a5(&v21, v23, v22);
  v38[6] = *&v22[96];
  v38[7] = *&v22[112];
  v38[8] = *&v22[128];
  v39 = v22[144];
  v38[2] = *&v22[32];
  v38[3] = *&v22[48];
  v38[4] = *&v22[64];
  v38[5] = *&v22[80];
  v38[0] = *v22;
  v38[1] = *&v22[16];
  sub_1D6306DB0(v38, &unk_1EDF046E0, &type metadata for FeedIssue, sub_1D630B5A4);
  v40[6] = *&v23[96];
  v40[7] = *&v23[112];
  v40[8] = *&v23[128];
  v41 = v23[144];
  v40[2] = *&v23[32];
  v40[3] = *&v23[48];
  v40[4] = *&v23[64];
  v40[5] = *&v23[80];
  v40[0] = *v23;
  v40[1] = *&v23[16];
  sub_1D6306DB0(v40, &unk_1EDF046E0, &type metadata for FeedIssue, sub_1D630B5A4);
  return v21;
}

uint64_t sub_1D63029AC(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, void (*a5)(unsigned __int8 *__return_ptr, _BYTE *, _BYTE *))
{
  v6 = a2[1];
  v20[0] = *a2;
  v7 = *a2;
  v8 = a2[1];
  v20[1] = v6;
  v9 = a2[3];
  v20[2] = a2[2];
  v10 = a2[2];
  v20[3] = v9;
  v11 = a4[1];
  v21[0] = *a4;
  v12 = *a4;
  v13 = a4[1];
  v21[1] = v11;
  v14 = a4[3];
  v21[2] = a4[2];
  v15 = a4[2];
  v21[3] = v14;
  *&v19[8] = v7;
  *&v19[24] = v8;
  *&v19[40] = v10;
  *&v19[56] = a2[3];
  *&v18[8] = v12;
  *&v18[24] = v13;
  *v19 = a1;
  *v18 = a3;
  *&v18[40] = v15;
  *&v18[56] = a4[3];
  sub_1D63071F4(v20, v24);
  sub_1D63071F4(v21, v24);
  a5(&v17, v19, v18);
  v22[1] = *&v18[16];
  v22[2] = *&v18[32];
  v22[3] = *&v18[48];
  v23 = *&v18[64];
  v22[0] = *v18;
  sub_1D6306DB0(v22, &unk_1EDF046F0, &type metadata for FeedPuzzleType, sub_1D630B5A4);
  v24[2] = *&v19[32];
  v24[3] = *&v19[48];
  v25 = *&v19[64];
  v24[0] = *v19;
  v24[1] = *&v19[16];
  sub_1D6306DB0(v24, &unk_1EDF046F0, &type metadata for FeedPuzzleType, sub_1D630B5A4);
  return v17;
}

uint64_t sub_1D6302B18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, void *, void *, __n128))
{
  v6 = *a2;
  v7 = *a4;
  v11[0] = a1;
  v11[1] = v6;
  v10[0] = a3;
  v10[1] = v7;

  (a5)(&v9, v11, v10);

  return v9;
}

void sub_1D6302B94(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v124 = a3;
  v125 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a3[1];
  v126 = a6;
  if (v13 < 1)
  {
    swift_retain_n();
    v15 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v123 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    v106 = swift_allocObject();
    *(v106 + 16) = v125;
    *(v106 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v15 = sub_1D62FF50C(v15);
    }

    v107 = v7;
    v132 = v15;
    v108 = *(v15 + 2);
    if (v108 < 2)
    {
LABEL_102:

      return;
    }

    while (1)
    {
      v109 = *v124;
      if (!*v124)
      {
        goto LABEL_129;
      }

      v7 = v108 - 1;
      v110 = *&v15[16 * v108];
      v111 = *&v15[16 * v108 + 24];
      v112 = (v109 + 48 * v110);
      v113 = (v109 + 48 * *&v15[16 * v108 + 16]);
      v114 = (v109 + 48 * v111);

      sub_1D62FADAC(v112, v113, v114, v123, v125, v126);
      if (v107)
      {

        goto LABEL_90;
      }

      if (v111 < v110)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D62FF50C(v15);
      }

      if (v108 - 2 >= *(v15 + 2))
      {
        goto LABEL_119;
      }

      v115 = &v15[16 * v108];
      *v115 = v110;
      *(v115 + 1) = v111;
      v132 = v15;
      sub_1D62FF480(v108 - 1);
      v15 = v132;
      v108 = *(v132 + 2);
      if (v108 <= 1)
      {
        goto LABEL_102;
      }
    }
  }

  v117 = a4;
  swift_retain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v17 >= v13)
    {
      v27 = v17;
      goto LABEL_11;
    }

    v18 = (*v124 + 48 * v17);
    v19 = 48 * v16;
    v20 = (*v124 + 48 * v16);
    v22 = *v20;
    v21 = (v20 + 13);
    v130 = *v18;
    sub_1D5B68374((v18 + 1), v131);
    v128 = v22;
    sub_1D5B68374((v20 + 1), v129);
    v125(&v127, &v130, &v128);
    sub_1D5BCF630(&v128, sub_1D630B744);
    sub_1D5BCF630(&v130, sub_1D630B744);
    v23 = v16;
    v24 = v127;
    v118 = v23;
    v25 = v23 + 2;
    while (v13 != v25)
    {
      v26 = *(v21 - 56);
      v130 = *(v21 - 8);
      sub_1D5B68374(v21, v131);
      v128 = v26;
      sub_1D5B68374(v21 - 48, v129);
      v125(&v127, &v130, &v128);
      sub_1D5BCF630(&v128, sub_1D630B744);
      sub_1D5BCF630(&v130, sub_1D630B744);
      ++v25;
      v21 += 48;
      if (v24 != v127)
      {
        v27 = v25 - 1;
        if (!v24)
        {
          goto LABEL_9;
        }

LABEL_71:
        v16 = v118;
        if (v27 >= v118)
        {
          if (v118 < v27)
          {
            v81 = 48 * v27 - 48;
            v82 = v27;
            v83 = v118;
            do
            {
              if (v83 != --v82)
              {
                v91 = *v124;
                if (!*v124)
                {
                  goto LABEL_128;
                }

                v84 = (v91 + v19);
                v85 = (v91 + v81);
                v86 = *v84;
                v87 = v84[1];
                v88 = v84[2];
                v90 = v85[1];
                v89 = v85[2];
                *v84 = *v85;
                v84[1] = v90;
                v84[2] = v89;
                v85[1] = v87;
                v85[2] = v88;
                *v85 = v86;
              }

              ++v83;
              v81 -= 48;
              v19 += 48;
            }

            while (v83 < v82);
          }

          goto LABEL_11;
        }

LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    v27 = v13;
    if (v24)
    {
      goto LABEL_71;
    }

LABEL_9:
    v16 = v118;
LABEL_11:
    v28 = v124[1];
    if (v27 >= v28)
    {
      goto LABEL_20;
    }

    if (__OFSUB__(v27, v16))
    {
      goto LABEL_121;
    }

    if (v27 - v16 >= v117)
    {
      goto LABEL_20;
    }

    if (__OFADD__(v16, v117))
    {
      goto LABEL_123;
    }

    if (v16 + v117 >= v28)
    {
      v29 = v124[1];
    }

    else
    {
      v29 = v16 + v117;
    }

    if (v29 < v16)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v27 == v29)
    {
LABEL_20:
      v30 = v27;
      if (v27 < v16)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v116 = v7;
      v92 = *v124;
      v93 = *v124 + 48 * v27 + 8;
      v119 = v16;
      v94 = v16 - v27;
      v122 = v29;
      do
      {
        v123 = v27;
        v95 = v94;
        v96 = v93;
        do
        {
          v97 = (v96 - 8);
          v99 = (v96 - 56);
          v98 = *(v96 - 56);
          v100 = v96 - 48;
          v130 = *(v96 - 8);
          sub_1D5B68374(v96, v131);
          v128 = v98;
          sub_1D5B68374(v100, v129);
          v125(&v127, &v130, &v128);
          sub_1D5BCF630(&v128, sub_1D630B744);
          sub_1D5BCF630(&v130, sub_1D630B744);
          if (v127 != 1)
          {
            break;
          }

          if (!v92)
          {

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
            return;
          }

          v102 = v97[1];
          v101 = v97[2];
          v103 = *v97;
          v104 = v99[1];
          *v97 = *v99;
          v97[1] = v104;
          v97[2] = v99[2];
          *v99 = v103;
          v99[1] = v102;
          v96 = v100;
          v99[2] = v101;
        }

        while (!__CFADD__(v95++, 1));
        v30 = v122;
        v27 = (v123 + 1);
        v93 += 48;
        --v94;
      }

      while (v123 + 1 != v122);
      v7 = v116;
      v16 = v119;
      if (v122 < v119)
      {
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D698BA94(0, *(v15 + 2) + 1, 1, v15);
    }

    v32 = *(v15 + 2);
    v31 = *(v15 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v15 = sub_1D698BA94((v31 > 1), v32 + 1, 1, v15);
    }

    *(v15 + 2) = v33;
    v34 = &v15[16 * v32];
    *(v34 + 4) = v16;
    *(v34 + 5) = v30;
    v121 = v30;
    v123 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v13 = v124[1];
    v14 = v121;
    a6 = v126;
    if (v121 >= v13)
    {
      goto LABEL_92;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v15[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v15[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v15[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_117;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_40;
    }

    if (v33 == 3)
    {
      v36 = *(v15 + 4);
      v37 = *(v15 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_40:
      if (v39)
      {
        goto LABEL_109;
      }

      v52 = &v15[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v58 = &v15[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_116;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_54;
    }

    v62 = &v15[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_54:
    if (v57)
    {
      goto LABEL_111;
    }

    v65 = &v15[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_114;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_61:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
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
      goto LABEL_120;
    }

    v74 = *v124;
    if (!*v124)
    {
      goto LABEL_127;
    }

    v75 = *&v15[16 * v73 + 32];
    v76 = *&v15[16 * v35 + 40];
    v77 = (v74 + 48 * v75);
    v78 = (v74 + 48 * *&v15[16 * v35 + 32]);
    v79 = (v74 + 48 * v76);

    sub_1D62FADAC(v77, v78, v79, v123, v125, v126);
    if (v7)
    {
      break;
    }

    if (v76 < v75)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D62FF50C(v15);
    }

    if (v73 >= *(v15 + 2))
    {
      goto LABEL_106;
    }

    v80 = &v15[16 * v73];
    *(v80 + 4) = v75;
    *(v80 + 5) = v76;
    v132 = v15;
    sub_1D62FF480(v35);
    v15 = v132;
    v33 = *(v132 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_90:
}

void sub_1D630347C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D630B6C8(0);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D6302B94(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F9048(0, v7, 1, a1, a2, a3);
  }
}

void sub_1D63035F4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, &unk_1F51443F8, type metadata accessor for FeedHeadline, &unk_1F5144420, sub_1D62FB160);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F921C(0, v7, 1, a1, a2, a3);
  }
}

double sub_1D6303848(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFB58(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D63035F4(v12, a2, a3);

  *a1 = v9;

  return result;
}

void sub_1D630397C(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = a1;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v8 = *v8;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_92;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v9)
    {
      v26 = v13;
    }

    else
    {
      v112 = v9;
      v14 = *v7;
      v15 = (v14 + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = (v14 + 16 * v12);
      v19 = *v18;
      v115 = v18[1];
      v116 = v17;

      v20 = a5(v16, &v116, v19, &v115);
      if (v6)
      {
LABEL_101:

        return;
      }

      v21 = v12;
      v22 = v20;

      v23 = v21 + 2;
      v108 = v21;
      v24 = 16 * v21;
      v25 = (v14 + 16 * v21 + 40);
      while (1)
      {
        v26 = v112;
        if (v112 == v23)
        {
          break;
        }

        v27 = *(v25 - 1);
        v28 = *v25;
        v29 = *(v25 - 3);
        v115 = *(v25 - 2);
        v116 = v28;

        LODWORD(v29) = a5(v27, &v116, v29, &v115);

        ++v23;
        v25 += 2;
        if ((v22 ^ v29))
        {
          v26 = v23 - 1;
          break;
        }
      }

      v8 = a1;
      v7 = a3;
      if (v22)
      {
        v12 = v108;
        if (v26 < v108)
        {
          goto LABEL_123;
        }

        if (v108 < v26)
        {
          v30 = 0;
          v31 = 16 * v26;
          v32 = v108;
          do
          {
            if (v32 != v26 + v30 - 1)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v34 = (v33 + v24);
              v35 = v33 + v31;
              v36 = *v34;
              v37 = v34[1];
              *v34 = *(v35 - 16);
              *(v35 - 16) = v36;
              *(v35 - 8) = v37;
            }

            ++v32;
            --v30;
            v31 -= 16;
            v24 += 16;
          }

          while (v32 < v26 + v30);
        }
      }

      else
      {
        v12 = v108;
      }
    }

    v38 = v7[1];
    if (v26 >= v38)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v26, v12))
    {
      goto LABEL_119;
    }

    if (v26 - v12 >= a4)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v12 + a4 >= v38)
    {
      v39 = v7[1];
    }

    else
    {
      v39 = v12 + a4;
    }

    if (v39 < v12)
    {
      goto LABEL_122;
    }

    if (v26 == v39)
    {
LABEL_29:
      v40 = v26;
      if (v26 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v88 = *v7;
      v89 = *v7 + 16 * v26;
      v109 = v12;
      v111 = v39;
      v90 = v12 - v26;
      do
      {
        v113 = v26;
        v91 = (v88 + 16 * v26);
        v92 = *v91;
        v93 = v91[1];
        v103 = v90;
        v104 = v89;
        v94 = v89;
        do
        {
          v95 = *(v94 - 2);
          v115 = *(v94 - 1);
          v116 = v93;

          v96 = a5(v92, &v116, v95, &v115);
          if (v6)
          {
            goto LABEL_101;
          }

          v97 = v96;

          if ((v97 & 1) == 0)
          {
            break;
          }

          if (!v88)
          {
            goto LABEL_125;
          }

          v92 = *v94;
          v93 = v94[1];
          *v94 = *(v94 - 1);
          *(v94 - 1) = v93;
          *(v94 - 2) = v92;
          v94 -= 2;
        }

        while (!__CFADD__(v90++, 1));
        v40 = v111;
        v26 = v113 + 1;
        v89 = v104 + 16;
        v90 = v103 - 1;
      }

      while (v113 + 1 != v111);
      v8 = a1;
      v7 = a3;
      v12 = v109;
      if (v111 < v109)
      {
        goto LABEL_118;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D698BA94(0, *(v11 + 2) + 1, 1, v11);
    }

    v42 = *(v11 + 2);
    v41 = *(v11 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v11 = sub_1D698BA94((v41 > 1), v42 + 1, 1, v11);
    }

    *(v11 + 2) = v43;
    v44 = &v11[16 * v42];
    *(v44 + 4) = v12;
    *(v44 + 5) = v40;
    v45 = *v8;
    if (!*v8)
    {
      goto LABEL_128;
    }

    v110 = v40;
    if (v42)
    {
      break;
    }

LABEL_3:
    v9 = v7[1];
    v10 = v110;
    if (v110 >= v9)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    if (v43 >= 4)
    {
      v51 = &v11[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_105;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_106;
      }

      v58 = &v11[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_108;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_111;
      }

      if (v62 >= v54)
      {
        v80 = &v11[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_117;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v43 == 3)
    {
      v47 = *(v11 + 4);
      v48 = *(v11 + 5);
      v57 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v50 = v57;
LABEL_49:
      if (v50)
      {
        goto LABEL_107;
      }

      v63 = &v11[16 * v43];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = __OFSUB__(v64, v65);
      v67 = v64 - v65;
      v68 = v66;
      if (v66)
      {
        goto LABEL_110;
      }

      v69 = &v11[16 * v46 + 32];
      v71 = *v69;
      v70 = *(v69 + 1);
      v57 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v57)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v67, v72))
      {
        goto LABEL_114;
      }

      if (v67 + v72 >= v49)
      {
        if (v49 < v72)
        {
          v46 = v43 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v73 = &v11[16 * v43];
    v75 = *v73;
    v74 = *(v73 + 1);
    v57 = __OFSUB__(v74, v75);
    v67 = v74 - v75;
    v68 = v57;
LABEL_63:
    if (v68)
    {
      goto LABEL_109;
    }

    v76 = &v11[16 * v46];
    v78 = *(v76 + 4);
    v77 = *(v76 + 5);
    v57 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v57)
    {
      goto LABEL_112;
    }

    if (v79 < v67)
    {
      goto LABEL_3;
    }

LABEL_70:
    v84 = v46 - 1;
    if (v46 - 1 >= v43)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_124;
    }

    v85 = *&v11[16 * v84 + 32];
    v86 = *&v11[16 * v46 + 40];
    sub_1D62FE870((*v7 + 16 * v85), (*v7 + 16 * *&v11[16 * v46 + 32]), (*v7 + 16 * v86), v45, a5);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v86 < v85)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D62FF50C(v11);
    }

    if (v84 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v87 = &v11[16 * v84];
    *(v87 + 4) = v85;
    *(v87 + 5) = v86;
    v117 = v11;
    sub_1D62FF480(v46);
    v11 = v117;
    v43 = *(v117 + 2);
    if (v43 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v11 = sub_1D62FF50C(v11);
LABEL_92:
  v117 = v11;
  v99 = *(v11 + 2);
  if (v99 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v100 = *&v11[16 * v99];
      v101 = *&v11[16 * v99 + 24];
      sub_1D62FE870((*v7 + 16 * v100), (*v7 + 16 * *&v11[16 * v99 + 16]), (*v7 + 16 * v101), v8, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v101 < v100)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D62FF50C(v11);
      }

      if (v99 - 2 >= *(v11 + 2))
      {
        goto LABEL_116;
      }

      v102 = &v11[16 * v99];
      *v102 = v100;
      *(v102 + 1) = v101;
      v117 = v11;
      sub_1D62FF480(v99 - 1);
      v11 = v117;
      v99 = *(v117 + 2);
      if (v99 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_1D6304050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 16 * a3);
    v8 = a1 - a3;
LABEL_4:
    v18 = v7;
    v19 = a3;
    v9 = (v6 + 16 * a3);
    v11 = *v9;
    v10 = v9[1];
    v17 = v8;
    while (1)
    {
      v12 = *(v7 - 2);
      v13 = *(v7 - 1);
      v22 = v10;
      v21 = v13;

      v14 = a5(v11, &v22, v12, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v11 = *v7;
        v10 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v10;
        *(v7 - 2) = v11;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v19 + 1;
      v7 = v18 + 2;
      v8 = v17 - 1;
      if (v19 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1D6304168(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v4 = a1[1];
  v5 = sub_1D726449C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &unk_1EC88EAE0, MEMORY[0x1E69D7608]);
        v7 = sub_1D726276C();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1D630397C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D6304050(0, v4, 1, a1, a2);
  }
}

void sub_1D63042A0(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D62FFCC0(v4);
  }

  v5 = v4[2];
  v6[0] = (v4 + 4);
  v6[1] = v5;
  sub_1D6304168(v6, a2);
  *a1 = v4;
}

void sub_1D6304324(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *), uint64_t a6)
{
  v199 = a6;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v10 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &type metadata for FeedIssue;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      v54 = v8 + 1;
    }

    else
    {
      v149 = v7;
      v13 = *a3;
      v14 = *a3 + 152 * v12;
      v15 = *(v14 + 16);
      v178 = *v14;
      v179 = v15;
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v18 = *(v14 + 80);
      v182 = *(v14 + 64);
      v183 = v18;
      v180 = v16;
      v181 = v17;
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v21 = *(v14 + 128);
      v187 = *(v14 + 144);
      v185 = v20;
      v186 = v21;
      v184 = v19;
      v22 = (v13 + 152 * v11);
      v23 = v22[1];
      v188 = *v22;
      v189 = v23;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[5];
      v192 = v22[4];
      v193 = v26;
      v190 = v24;
      v191 = v25;
      v27 = v22[6];
      v28 = v22[7];
      v29 = v22[8];
      v197 = *(v22 + 144);
      v195 = v28;
      v196 = v29;
      v194 = v27;
      v146 = v178;
      v174 = v184;
      v175 = v185;
      v176 = v186;
      v177 = v187;
      v170 = v180;
      v171 = v181;
      v172 = v182;
      v173 = v183;
      v168 = v178;
      v169 = v179;
      v30 = v188;
      v164 = v22[6];
      v165 = v22[7];
      v166 = v22[8];
      v167 = *(v22 + 144);
      v160 = v22[2];
      v161 = v22[3];
      v162 = v22[4];
      v163 = v22[5];
      v158 = *v22;
      v159 = v22[1];
      sub_1D6306E88(&v178, v156, &unk_1EC88EAF0, &type metadata for FeedIssue);
      sub_1D6306E88(&v188, v156, &unk_1EC88EAF0, &type metadata for FeedIssue);
      v147 = a5(v146, &v168 + 8, v30, &v158 + 8);
      if (v6)
      {
LABEL_104:
        sub_1D6306DB0(&v188, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
        sub_1D6306DB0(&v178, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
LABEL_105:

        return;
      }

      sub_1D6306DB0(&v188, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      sub_1D6306DB0(&v178, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      v31 = v11 + 2;
      if (v11 + 2 >= v149)
      {
        v54 = v11 + 2;
        if (v147)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v141 = v11;
        v32 = v13 + 152 * v11 + 152;
        while (1)
        {
          v33 = v31;
          v34 = *(v32 + 168);
          v158 = *(v32 + 152);
          v159 = v34;
          v35 = *(v32 + 184);
          v36 = *(v32 + 200);
          v37 = *(v32 + 232);
          v162 = *(v32 + 216);
          v163 = v37;
          v160 = v35;
          v161 = v36;
          v38 = *(v32 + 248);
          v39 = *(v32 + 264);
          v40 = *(v32 + 280);
          v167 = *(v32 + 296);
          v165 = v39;
          v166 = v40;
          v164 = v38;
          v41 = *(v32 + 16);
          v168 = *v32;
          v169 = v41;
          v42 = *(v32 + 32);
          v43 = *(v32 + 48);
          v44 = *(v32 + 80);
          v172 = *(v32 + 64);
          v173 = v44;
          v170 = v42;
          v171 = v43;
          v45 = *(v32 + 96);
          v46 = *(v32 + 112);
          v47 = *(v32 + 128);
          v177 = *(v32 + 144);
          v175 = v46;
          v176 = v47;
          v174 = v45;
          v48 = v158;
          v156[6] = v164;
          v156[7] = v165;
          v156[8] = v166;
          v157 = v167;
          v156[2] = v160;
          v156[3] = v161;
          v156[4] = v162;
          v156[5] = v163;
          v156[0] = v158;
          v156[1] = v159;
          v49 = v168;
          v50 = *(v32 + 112);
          v154[6] = *(v32 + 96);
          v154[7] = v50;
          v154[8] = *(v32 + 128);
          v155 = *(v32 + 144);
          v51 = *(v32 + 48);
          v154[2] = *(v32 + 32);
          v154[3] = v51;
          v52 = *(v32 + 80);
          v154[4] = *(v32 + 64);
          v154[5] = v52;
          v53 = *(v32 + 16);
          v154[0] = *v32;
          v154[1] = v53;
          sub_1D6306E88(&v158, v153, &unk_1EC88EAF0, &type metadata for FeedIssue);
          sub_1D6306E88(&v168, v153, &unk_1EC88EAF0, &type metadata for FeedIssue);
          LODWORD(v48) = a5(v48, v156 + 8, v49, v154 + 8);
          v10 = sub_1D5C82990;
          sub_1D6306DB0(&v168, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          sub_1D6306DB0(&v158, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          if ((v147 ^ v48))
          {
            break;
          }

          v31 = v33 + 1;
          v32 += 152;
          v54 = v149;
          if (v149 == v33 + 1)
          {
            v12 = v33;
            goto LABEL_15;
          }
        }

        v54 = v33;
        v12 = v33 - 1;
LABEL_15:
        v11 = v141;
        if (v147)
        {
LABEL_16:
          if (v54 < v11)
          {
            goto LABEL_128;
          }

          if (v11 <= v12)
          {
            v55 = 152 * v54 - 152;
            v10 = 152 * v11;
            v56 = v54;
            v142 = v11;
            do
            {
              if (v11 != --v56)
              {
                v57 = *a3;
                if (!*a3)
                {
                  goto LABEL_132;
                }

                v58 = v57 + v55;
                v174 = *(v57 + v10 + 96);
                v175 = *(v57 + v10 + 112);
                v176 = *(v57 + v10 + 128);
                v177 = *(v57 + v10 + 144);
                v170 = *(v57 + v10 + 32);
                v171 = *(v57 + v10 + 48);
                v172 = *(v57 + v10 + 64);
                v173 = *(v57 + v10 + 80);
                v168 = *(v57 + v10);
                v169 = *(v57 + v10 + 16);
                memmove((v57 + v10), (v57 + v55), 0x98uLL);
                *(v58 + 96) = v174;
                *(v58 + 112) = v175;
                *(v58 + 128) = v176;
                *(v58 + 144) = v177;
                *(v58 + 32) = v170;
                *(v58 + 48) = v171;
                *(v58 + 64) = v172;
                *(v58 + 80) = v173;
                *v58 = v168;
                *(v58 + 16) = v169;
              }

              ++v11;
              v55 -= 152;
              v10 += 152;
            }

            while (v11 < v56);
            v11 = v142;
          }
        }
      }
    }

    v59 = a3[1];
    if (v54 >= v59)
    {
      goto LABEL_137;
    }

    if (__OFSUB__(v54, v11))
    {
      goto LABEL_124;
    }

    if (v54 - v11 >= a4)
    {
      goto LABEL_137;
    }

    v60 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v60 >= v59)
    {
      v60 = a3[1];
    }

    if (v60 < v11)
    {
      goto LABEL_127;
    }

    if (v54 == v60)
    {
LABEL_137:
      if (v54 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v148 = *a3;
      v107 = *a3 + 152 * v54 - 152;
      v143 = v11;
      v108 = v11 - v54 + 1;
      v137 = v60;
      do
      {
        v139 = v107;
        v140 = v54;
        v138 = v108;
        v150 = v108;
        for (i = v107; ; i -= 152)
        {
          v110 = (i + 152);
          v111 = *(i + 168);
          v178 = *(i + 152);
          v179 = v111;
          v112 = *(i + 184);
          v113 = *(i + 200);
          v114 = *(i + 232);
          v182 = *(i + 216);
          v183 = v114;
          v180 = v112;
          v181 = v113;
          v115 = *(i + 248);
          v116 = *(i + 264);
          v117 = *(i + 280);
          v187 = *(i + 296);
          v185 = v116;
          v186 = v117;
          v184 = v115;
          v118 = *(i + 16);
          v188 = *i;
          v189 = v118;
          v119 = *(i + 32);
          v120 = *(i + 48);
          v121 = *(i + 80);
          v192 = *(i + 64);
          v193 = v121;
          v190 = v119;
          v191 = v120;
          v122 = *(i + 96);
          v123 = *(i + 112);
          v124 = *(i + 128);
          v197 = *(i + 144);
          v195 = v123;
          v196 = v124;
          v194 = v122;
          v125 = v178;
          v174 = v184;
          v175 = v185;
          v176 = v186;
          v177 = v187;
          v170 = v180;
          v171 = v181;
          v172 = v182;
          v173 = v183;
          v168 = v178;
          v169 = v179;
          v126 = v188;
          v164 = *(i + 96);
          v165 = *(i + 112);
          v166 = *(i + 128);
          v167 = *(i + 144);
          v160 = *(i + 32);
          v161 = *(i + 48);
          v162 = *(i + 64);
          v163 = *(i + 80);
          v158 = *i;
          v159 = *(i + 16);
          sub_1D6306E88(&v178, v156, &unk_1EC88EAF0, &type metadata for FeedIssue);
          sub_1D6306E88(&v188, v156, &unk_1EC88EAF0, &type metadata for FeedIssue);
          v127 = a5(v125, &v168 + 8, v126, &v158 + 8);
          if (v6)
          {
            goto LABEL_104;
          }

          v128 = v127;
          v10 = sub_1D5C82990;
          sub_1D6306DB0(&v188, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          sub_1D6306DB0(&v178, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          if ((v128 & 1) == 0)
          {
            break;
          }

          if (!v148)
          {
            goto LABEL_130;
          }

          v174 = *(i + 248);
          v175 = *(i + 264);
          v176 = *(i + 280);
          v177 = *(i + 296);
          v170 = *(i + 184);
          v171 = *(i + 200);
          v172 = *(i + 216);
          v173 = *(i + 232);
          v168 = *v110;
          v169 = *(i + 168);
          v129 = *(i + 112);
          *(i + 248) = *(i + 96);
          *(i + 264) = v129;
          *(i + 280) = *(i + 128);
          *(i + 296) = *(i + 144);
          v130 = *(i + 48);
          *(i + 184) = *(i + 32);
          *(i + 200) = v130;
          v131 = *(i + 80);
          *(i + 216) = *(i + 64);
          *(i + 232) = v131;
          v132 = *(i + 16);
          *v110 = *i;
          *(i + 168) = v132;
          *(i + 96) = v174;
          *(i + 112) = v175;
          *(i + 128) = v176;
          *(i + 144) = v177;
          *(i + 32) = v170;
          *(i + 48) = v171;
          *(i + 64) = v172;
          *(i + 80) = v173;
          *i = v168;
          *(i + 16) = v169;
          if (!v150)
          {
            break;
          }

          ++v150;
        }

        ++v54;
        v107 = v139 + 152;
        v108 = v138 - 1;
      }

      while (v140 + 1 != v137);
      v54 = v137;
      v11 = v143;
      if (v137 < v143)
      {
        goto LABEL_123;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
    }

    v62 = *(v9 + 2);
    v61 = *(v9 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v9 = sub_1D698BA94((v61 > 1), v62 + 1, 1, v9);
    }

    *(v9 + 2) = v63;
    v64 = &v9[16 * v62];
    *(v64 + 4) = v11;
    *(v64 + 5) = v54;
    v65 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v62)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v54;
    v10 = &type metadata for FeedIssue;
    if (v54 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v10 = v63 - 1;
    if (v63 >= 4)
    {
      v70 = &v9[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_110;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_111;
      }

      v77 = &v9[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_113;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_116;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v10 + 32];
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
          v10 = v63 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v63 == 3)
    {
      v66 = *(v9 + 4);
      v67 = *(v9 + 5);
      v76 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      v69 = v76;
LABEL_52:
      if (v69)
      {
        goto LABEL_112;
      }

      v82 = &v9[16 * v63];
      v84 = *v82;
      v83 = *(v82 + 1);
      v85 = __OFSUB__(v83, v84);
      v86 = v83 - v84;
      v87 = v85;
      if (v85)
      {
        goto LABEL_115;
      }

      v88 = &v9[16 * v10 + 32];
      v90 = *v88;
      v89 = *(v88 + 1);
      v76 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v76)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v86, v91))
      {
        goto LABEL_119;
      }

      if (v86 + v91 >= v68)
      {
        if (v68 < v91)
        {
          v10 = v63 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v92 = &v9[16 * v63];
    v94 = *v92;
    v93 = *(v92 + 1);
    v76 = __OFSUB__(v93, v94);
    v86 = v93 - v94;
    v87 = v76;
LABEL_66:
    if (v87)
    {
      goto LABEL_114;
    }

    v95 = &v9[16 * v10];
    v97 = *(v95 + 4);
    v96 = *(v95 + 5);
    v76 = __OFSUB__(v96, v97);
    v98 = v96 - v97;
    if (v76)
    {
      goto LABEL_117;
    }

    if (v98 < v86)
    {
      goto LABEL_3;
    }

LABEL_73:
    v103 = v10 - 1;
    if (v10 - 1 >= v63)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_129;
    }

    v104 = *&v9[16 * v103 + 32];
    v105 = *&v9[16 * v10 + 40];
    sub_1D62FB7F4((*a3 + 152 * v104), (*a3 + 152 * *&v9[16 * v10 + 32]), (*a3 + 152 * v105), v65, a5);
    if (v6)
    {
      goto LABEL_105;
    }

    if (v105 < v104)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v103 >= *(v9 + 2))
    {
      goto LABEL_109;
    }

    v106 = &v9[16 * v103];
    *(v106 + 4) = v104;
    *(v106 + 5) = v105;
    v198 = v9;
    sub_1D62FF480(v10);
    v9 = v198;
    v63 = *(v198 + 2);
    if (v63 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v9 = sub_1D62FF50C(v9);
LABEL_95:
  v198 = v9;
  v133 = *(v9 + 2);
  if (v133 < 2)
  {
    goto LABEL_105;
  }

  while (*a3)
  {
    v134 = *&v9[16 * v133];
    v135 = *&v9[16 * v133 + 24];
    sub_1D62FB7F4((*a3 + 152 * v134), (*a3 + 152 * *&v9[16 * v133 + 16]), (*a3 + 152 * v135), v10, a5);
    if (v6)
    {
      goto LABEL_105;
    }

    if (v135 < v134)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v133 - 2 >= *(v9 + 2))
    {
      goto LABEL_121;
    }

    v136 = &v9[16 * v133];
    *v136 = v134;
    *(v136 + 1) = v135;
    v198 = v9;
    sub_1D62FF480(v133 - 1);
    v9 = v198;
    v133 = *(v198 + 2);
    if (v133 <= 1)
    {
      goto LABEL_105;
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_1D6304FFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  if (a3 != a2)
  {
    v46 = *a4;
    v6 = *a4 + 152 * a3 - 152;
    v7 = result - a3 + 1;
LABEL_5:
    v45 = a3;
    v73 = v7;
    v44 = v6;
    while (1)
    {
      v8 = (v6 + 152);
      v9 = *(v6 + 168);
      v61 = *(v6 + 152);
      v62 = v9;
      v10 = *(v6 + 184);
      v11 = *(v6 + 200);
      v12 = *(v6 + 232);
      v65 = *(v6 + 216);
      v66 = v12;
      v63 = v10;
      v64 = v11;
      v13 = *(v6 + 248);
      v14 = *(v6 + 264);
      v15 = *(v6 + 280);
      v70 = *(v6 + 296);
      v68 = v14;
      v69 = v15;
      v67 = v13;
      v16 = *(v6 + 16);
      v71[0] = *v6;
      v71[1] = v16;
      v17 = *(v6 + 32);
      v18 = *(v6 + 48);
      v19 = *(v6 + 80);
      v71[4] = *(v6 + 64);
      v71[5] = v19;
      v71[2] = v17;
      v71[3] = v18;
      v20 = *(v6 + 96);
      v21 = *(v6 + 112);
      v22 = *(v6 + 128);
      v72 = *(v6 + 144);
      v71[7] = v21;
      v71[8] = v22;
      v71[6] = v20;
      v23 = v61;
      v57 = v67;
      v58 = v68;
      v59 = v69;
      v60 = v70;
      v53 = v63;
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v51 = v61;
      v52 = v62;
      v24 = *&v71[0];
      v25 = *(v6 + 112);
      v49[6] = *(v6 + 96);
      v49[7] = v25;
      v49[8] = *(v6 + 128);
      v50 = *(v6 + 144);
      v26 = *(v6 + 48);
      v49[2] = *(v6 + 32);
      v49[3] = v26;
      v27 = *(v6 + 80);
      v49[4] = *(v6 + 64);
      v49[5] = v27;
      v28 = *(v6 + 16);
      v49[0] = *v6;
      v49[1] = v28;
      sub_1D6306E88(&v61, v48, &unk_1EC88EAF0, &type metadata for FeedIssue);
      sub_1D6306E88(v71, v48, &unk_1EC88EAF0, &type metadata for FeedIssue);
      v29 = a5(v23, &v51 + 8, v24, v49 + 8);
      sub_1D6306DB0(v71, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      result = sub_1D6306DB0(&v61, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      if (v5)
      {
        break;
      }

      v30 = v73;
      if ((v29 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v46)
      {
        __break(1u);
        return result;
      }

      v31 = *(v6 + 264);
      v57 = *(v6 + 248);
      v58 = v31;
      v59 = *(v6 + 280);
      v60 = *(v6 + 296);
      v32 = *(v6 + 200);
      v53 = *(v6 + 184);
      v54 = v32;
      v33 = *(v6 + 232);
      v55 = *(v6 + 216);
      v56 = v33;
      v34 = *(v6 + 168);
      v51 = *v8;
      v52 = v34;
      v35 = *(v6 + 112);
      *(v6 + 248) = *(v6 + 96);
      *(v6 + 264) = v35;
      *(v6 + 280) = *(v6 + 128);
      *(v6 + 296) = *(v6 + 144);
      v36 = *(v6 + 48);
      *(v6 + 184) = *(v6 + 32);
      *(v6 + 200) = v36;
      v37 = *(v6 + 80);
      *(v6 + 216) = *(v6 + 64);
      *(v6 + 232) = v37;
      v38 = *(v6 + 16);
      *v8 = *v6;
      *(v6 + 168) = v38;
      v39 = v58;
      *(v6 + 96) = v57;
      *(v6 + 112) = v39;
      *(v6 + 128) = v59;
      *(v6 + 144) = v60;
      v40 = v54;
      *(v6 + 32) = v53;
      *(v6 + 48) = v40;
      v41 = v56;
      *(v6 + 64) = v55;
      *(v6 + 80) = v41;
      v42 = v52;
      *v6 = v51;
      *(v6 + 16) = v42;
      if (!v30)
      {
LABEL_4:
        a3 = v45 + 1;
        v6 = v44 + 152;
        --v7;
        if (v45 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v6 -= 152;
      v73 = v30 + 1;
    }
  }

  return result;
}

void sub_1D63052E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void (*a6)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a1 + 8);
  v14 = sub_1D726449C();
  if (v14 < v13)
  {
    if (v13 >= -1)
    {
      v15 = v14;
      if (v13 <= 1)
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, a4, a5);
        v16 = sub_1D726276C();
        *(v16 + 16) = v13 / 2;
      }

      v18[0] = v16 + 32;
      v18[1] = v13 / 2;
      a6(v18, v19, a1, v15, a2, a3);
      *(v16 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_12;
  }

  if (v13)
  {
    a7(0, v13, 1, a1, a2, a3);
  }
}

void sub_1D6305428(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D62FFBBC(v6);
  }

  v7 = v6[2];
  v8[0] = v6 + 4;
  v8[1] = v7;
  sub_1D63052E0(v8, a2, a3, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D6304324, sub_1D6304FFC);
  *a1 = v6;
}

void sub_1D63054E4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), char *a6)
{
  v7 = v6;
  v12 = __dst;
  v13 = swift_allocObject();
  v119 = a5;
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v111 = a3;
  v14 = a3[1];
  v113 = a6;
  if (v14 < 1)
  {
    swift_retain_n();
    v16 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v92 = swift_allocObject();
    *(v92 + 16) = v119;
    *(v92 + 24) = a6;
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v93 = v7;
      v12[37] = v16;
      v94 = *(v16 + 16);
      if (v94 < 2)
      {
LABEL_103:

        return;
      }

      while (1)
      {
        v95 = *v111;
        if (!*v111)
        {
          goto LABEL_130;
        }

        v12 = v16;
        v16 = v94 - 1;
        v7 = v12[2 * v94];
        v96 = v12[2 * v94 + 3];
        v97 = (v95 + 296 * v7);
        v98 = (v95 + 296 * v12[2 * v94 + 2]);
        v99 = (v95 + 296 * v96);

        sub_1D62FEC58(v97, v98, v99, v112, v119, v113);
        if (v93)
        {

          goto LABEL_91;
        }

        if (v96 < v7)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D62FF50C(v12);
        }

        if (v94 - 2 >= v12[2])
        {
          goto LABEL_120;
        }

        v100 = &v12[2 * v94];
        *v100 = v7;
        v100[1] = v96;
        v118 = v12;
        sub_1D62FF480(v94 - 1);
        v16 = v118;
        v94 = v118[2];
        if (v94 <= 1)
        {
          goto LABEL_103;
        }
      }
    }

LABEL_126:
    v16 = sub_1D62FF50C(v16);
    goto LABEL_95;
  }

  v101 = a4;
  swift_retain_n();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v105 = v17;
    if (v18 >= v14)
    {
      v25 = v18;
    }

    else
    {
      v112 = v14;
      v102 = v16;
      v19 = (*v111 + 296 * v18);
      v16 = 296 * v17;
      v20 = v17;
      v21 = (*v111 + 296 * v17);
      v22 = *v21;
      __dst[0] = *v19;
      v12 = __dst;
      sub_1D5F76E40((v19 + 1), &__dst[1]);
      v115 = v22;
      sub_1D5F76E40((v21 + 1), v116);
      v119(&v114, __dst, &v115);
      sub_1D6306DB0(&v115, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
      sub_1D6306DB0(__dst, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
      v109 = v114;
      v23 = v20 + 2;
      v24 = (v21 + 75);
      while (1)
      {
        v25 = v14;
        if (v14 == v23)
        {
          break;
        }

        v26 = *(v24 - 304);
        __dst[0] = *(v24 - 8);
        v12 = __dst;
        sub_1D5F76E40(v24, &__dst[1]);
        v115 = v26;
        sub_1D5F76E40(v24 - 296, v116);
        v119(&v114, __dst, &v115);
        sub_1D6306DB0(&v115, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
        sub_1D6306DB0(__dst, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
        ++v23;
        v24 += 296;
        if (v109 != v114)
        {
          v25 = v23 - 1;
          break;
        }
      }

      v17 = v105;
      if (!v109)
      {
        goto LABEL_19;
      }

      if (v25 < v105)
      {
        goto LABEL_123;
      }

      if (v105 < v25)
      {
        v27 = 296 * v25 - 296;
        v28 = v25;
        do
        {
          if (v17 != --v28)
          {
            v29 = *v111;
            if (!*v111)
            {
              goto LABEL_129;
            }

            memcpy(__dst, (v29 + v16), 0x122uLL);
            memmove((v29 + v16), (v29 + v27), 0x128uLL);
            memcpy((v29 + v27), __dst, 0x122uLL);
          }

          ++v17;
          v27 -= 296;
          v16 += 296;
        }

        while (v17 < v28);
        v16 = v102;
        v17 = v105;
      }

      else
      {
LABEL_19:
        v16 = v102;
      }
    }

    v30 = v111[1];
    if (v25 >= v30)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v25, v17))
    {
      goto LABEL_122;
    }

    if (v25 - v17 >= v101)
    {
      goto LABEL_30;
    }

    if (__OFADD__(v17, v101))
    {
      goto LABEL_124;
    }

    if (v17 + v101 >= v30)
    {
      v31 = v111[1];
    }

    else
    {
      v31 = v17 + v101;
    }

    if (v31 < v17)
    {
      goto LABEL_125;
    }

    if (v25 == v31)
    {
LABEL_30:
      v32 = v25;
    }

    else
    {
      v103 = v16;
      v83 = *v111;
      v84 = *v111 + 296 * v25 + 8;
      v85 = v105 - v25;
      v107 = v31;
      do
      {
        v112 = v25;
        v108 = v85;
        v110 = v84;
        v86 = v85;
        do
        {
          v87 = (v84 - 8);
          v88 = (v84 - 304);
          v89 = *(v84 - 304);
          v90 = v84 - 296;
          __dst[0] = *(v84 - 8);
          v12 = __dst;
          sub_1D5F76E40(v84, &__dst[1]);
          v115 = v89;
          sub_1D5F76E40(v90, v116);
          v119(&v114, __dst, &v115);
          sub_1D6306DB0(&v115, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
          sub_1D6306DB0(__dst, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
          if (v114 != 1)
          {
            break;
          }

          if (!v83)
          {

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
            return;
          }

          memcpy(__dst, v87, 0x122uLL);
          memcpy(v87, v88, 0x128uLL);
          memcpy(v88, __dst, 0x122uLL);
          v84 = v90;
        }

        while (!__CFADD__(v86++, 1));
        v25 = (v112 + 1);
        v84 = v110 + 296;
        v85 = v108 - 1;
        v32 = v107;
      }

      while (v112 + 1 != v107);
      a6 = v113;
      v16 = v103;
    }

    if (v32 < v105)
    {
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
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D698BA94(0, *(v16 + 16) + 1, 1, v16);
    }

    v34 = *(v16 + 16);
    v33 = *(v16 + 24);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v16 = sub_1D698BA94((v33 > 1), v34 + 1, 1, v16);
    }

    *(v16 + 16) = v35;
    v36 = v16 + 16 * v34;
    *(v36 + 32) = v105;
    *(v36 + 40) = v32;
    v106 = v32;
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v34)
    {
      break;
    }

LABEL_3:
    v14 = v111[1];
    v15 = v106;
    if (v106 >= v14)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v37 = v35 - 1;
    if (v35 >= 4)
    {
      v42 = v16 + 32 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = (v16 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = (v16 + 32 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v37 = v35 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    if (v35 == 3)
    {
      v38 = *(v16 + 32);
      v39 = *(v16 + 40);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_51:
      if (v41)
      {
        goto LABEL_110;
      }

      v54 = (v16 + 16 * v35);
      v56 = *v54;
      v55 = v54[1];
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_113;
      }

      v60 = (v16 + 32 + 16 * v37);
      v62 = *v60;
      v61 = v60[1];
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_116;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_117;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v35 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v64 = (v16 + 16 * v35);
    v66 = *v64;
    v65 = v64[1];
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_65:
    if (v59)
    {
      goto LABEL_112;
    }

    v67 = v16 + 16 * v37;
    v69 = *(v67 + 32);
    v68 = *(v67 + 40);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_115;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_72:
    v75 = v37 - 1;
    if (v37 - 1 >= v35)
    {
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

    v76 = *v111;
    if (!*v111)
    {
      goto LABEL_128;
    }

    v12 = v16;
    v77 = *(v16 + 32 + 16 * v75);
    v78 = *(v16 + 32 + 16 * v37 + 8);
    v79 = (v76 + 296 * v77);
    v80 = (v76 + 296 * *(v16 + 32 + 16 * v37));
    v81 = (v76 + 296 * v78);
    v16 = v113;

    sub_1D62FEC58(v79, v80, v81, v112, v119, v113);
    if (v7)
    {
      break;
    }

    if (v78 < v77)
    {
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D62FF50C(v12);
    }

    if (v75 >= v12[2])
    {
      goto LABEL_107;
    }

    v82 = &v12[2 * v75];
    *(v82 + 4) = v77;
    *(v82 + 5) = v78;
    v118 = v12;
    sub_1D62FF480(v37);
    v12 = __dst;
    v16 = v118;
    v35 = v118[2];
    a6 = v113;
    if (v35 <= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_91:
}

void sub_1D6305E9C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), char *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &qword_1EC885950, &type metadata for FeedCatalogItem);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D63054E4(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA924(0, v7, 1, a1, a2, a3);
  }
}

double sub_1D6306024(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(void *, uint64_t, uint64_t, __n128))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = a5(v12);
  }

  v13 = *(v12 + 16);
  v15[0] = v12 + 32;
  v15[1] = v13;

  (a6)(v15, a2, a3);

  *a1 = v12;

  return result;
}

void sub_1D630610C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v134 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v115 = a3;
  v116 = a6;
  v13 = a3[1];
  if (v13 < 1)
  {
    swift_retain_n();
    v15 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v95 = swift_allocObject();
    *(v95 + 16) = v134;
    *(v95 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v15 = sub_1D62FF50C(v15);
    }

    v133 = v15;
    v96 = *(v15 + 16);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v115;
        if (!*v115)
        {
          goto LABEL_130;
        }

        v98 = v7;
        v99 = *(v15 + 16 * v96);
        v100 = v15;
        v101 = *(v15 + 16 * (v96 - 1) + 40);
        v102 = (v97 + 160 * v99);
        v103 = (v97 + 160 * *(v15 + 16 * (v96 - 1) + 32));
        v104 = (v97 + 160 * v101);
        v15 = v116;

        sub_1D62FF078(v102, v103, v104, v117, v134, v116);
        v7 = v98;
        if (v98)
        {

          goto LABEL_103;
        }

        if (v101 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1D62FF50C(v100);
        }

        if (v96 - 2 >= *(v100 + 2))
        {
          goto LABEL_120;
        }

        v105 = &v100[16 * v96];
        *v105 = v99;
        *(v105 + 1) = v101;
        v133 = v100;
        sub_1D62FF480(v96 - 1);
        v15 = v133;
        v96 = *(v133 + 16);
      }

      while (v96 > 1);
    }

LABEL_103:

    return;
  }

  swift_retain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v108 = a4;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v17 >= v13)
    {
      v13 = v17;
    }

    else
    {
      v117 = v15;
      v18 = (*v115 + 160 * v17);
      v15 = 160 * v16;
      v19 = (*v115 + 160 * v16);
      v20 = *v19;
      *&v123 = *v18;
      sub_1D5F76D3C((v18 + 1), &v123 + 8);
      v121 = v20;
      sub_1D5F76D3C((v19 + 1), v122);
      v134(&v120, &v123, &v121);
      sub_1D6306DB0(&v121, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
      sub_1D6306DB0(&v123, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
      v21 = v120;
      v107 = v16;
      v22 = v16 + 2;
      v23 = (v19 + 41);
      while (v13 != v22)
      {
        v24 = *(v23 - 168);
        *&v123 = *(v23 - 8);
        sub_1D5F76D3C(v23, &v123 + 8);
        v121 = v24;
        sub_1D5F76D3C(v23 - 160, v122);
        v134(&v120, &v123, &v121);
        sub_1D6306DB0(&v121, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
        sub_1D6306DB0(&v123, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
        ++v22;
        v23 += 160;
        if (v21 != v120)
        {
          v13 = v22 - 1;
          goto LABEL_9;
        }
      }

      v16 = v107;
      if (!v21)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v13 < v107)
      {
        goto LABEL_123;
      }

      if (v107 < v13)
      {
        v25 = 160 * v13 - 160;
        v26 = v13;
        do
        {
          if (v16 != --v26)
          {
            v28 = *v115;
            if (!*v115)
            {
              goto LABEL_129;
            }

            v27 = (v28 + v25);
            v129 = *(v28 + v15 + 96);
            v130 = *(v28 + v15 + 112);
            v131 = *(v28 + v15 + 128);
            v132 = *(v28 + v15 + 144);
            v125 = *(v28 + v15 + 32);
            v126 = *(v28 + v15 + 48);
            v127 = *(v28 + v15 + 64);
            v128 = *(v28 + v15 + 80);
            v123 = *(v28 + v15);
            v124 = *(v28 + v15 + 16);
            memmove((v28 + v15), (v28 + v25), 0xA0uLL);
            v27[6] = v129;
            v27[7] = v130;
            v27[8] = v131;
            v27[9] = v132;
            v27[2] = v125;
            v27[3] = v126;
            v27[4] = v127;
            v27[5] = v128;
            *v27 = v123;
            v27[1] = v124;
          }

          ++v16;
          v25 -= 160;
          v15 += 160;
        }

        while (v16 < v26);
        v15 = v117;
        v16 = v107;
        a4 = v108;
      }

      else
      {
LABEL_19:
        v15 = v117;
        a4 = v108;
      }
    }

    v29 = v115[1];
    if (v13 < v29)
    {
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_122;
      }

      if (v13 - v16 < a4)
      {
        if (__OFADD__(v16, a4))
        {
          goto LABEL_124;
        }

        if (v16 + a4 >= v29)
        {
          v30 = v115[1];
        }

        else
        {
          v30 = v16 + a4;
        }

        if (v30 < v16)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v13 != v30)
        {
          break;
        }
      }
    }

    v31 = v13;
    if (v13 < v16)
    {
      goto LABEL_121;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D698BA94(0, *(v15 + 16) + 1, 1, v15);
    }

    v32 = v15;
    v15 = *(v15 + 16);
    v117 = v32;
    v33 = *(v32 + 24);
    v34 = v15 + 1;
    if (v15 >= v33 >> 1)
    {
      v117 = sub_1D698BA94((v33 > 1), v15 + 1, 1, v117);
    }

    *(v117 + 2) = v34;
    v35 = &v117[16 * v15];
    *(v35 + 4) = v16;
    *(v35 + 5) = v31;
    v110 = v31;
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v15)
    {
      while (1)
      {
        v36 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        v37 = v117;
        if (v34 == 3)
        {
          v38 = *(v117 + 4);
          v39 = *(v117 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_50:
          if (v41)
          {
            goto LABEL_110;
          }

          v54 = &v37[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_113;
          }

          v60 = &v37[16 * v36 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_117;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v36 = v34 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v64 = &v117[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_64:
        if (v59)
        {
          goto LABEL_112;
        }

        v67 = &v37[16 * v36];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_71:
        v75 = v36 - 1;
        if (v36 - 1 >= v34)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v76 = *v115;
        if (!*v115)
        {
          goto LABEL_128;
        }

        v77 = *&v37[16 * v75 + 32];
        v78 = *&v37[16 * v36 + 40];
        v79 = (v76 + 160 * v77);
        v80 = (v76 + 160 * *&v37[16 * v36 + 32]);
        v15 = v76 + 160 * v78;

        sub_1D62FF078(v79, v80, v15, v118, v134, v116);
        if (v7)
        {

          goto LABEL_103;
        }

        if (v78 < v77)
        {
          goto LABEL_106;
        }

        v81 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1D62FF50C(v117);
        }

        if (v75 >= *(v81 + 2))
        {
          goto LABEL_107;
        }

        v82 = &v81[16 * v75];
        *(v82 + 4) = v77;
        *(v82 + 5) = v78;
        v133 = v81;
        sub_1D62FF480(v36);
        v117 = v133;
        v34 = *(v133 + 16);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v37 = v117;
      v42 = &v117[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = &v117[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = &v117[16 * v36 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v36 = v34 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    a6 = v116;
    v13 = v115[1];
    v14 = v110;
    v15 = v117;
    a4 = v108;
    if (v110 >= v13)
    {
      goto LABEL_92;
    }
  }

  v106 = v7;
  v117 = v15;
  v119 = *v115;
  v83 = *v115 + 160 * v13 + 8;
  v84 = v16 - v13;
  v111 = v30;
LABEL_82:
  v113 = v83;
  v114 = v13;
  v112 = v84;
  while (1)
  {
    v85 = (v83 - 8);
    v87 = (v83 - 168);
    v86 = *(v83 - 168);
    v88 = v83 - 160;
    *&v123 = *(v83 - 8);
    sub_1D5F76D3C(v83, &v123 + 8);
    v121 = v86;
    sub_1D5F76D3C(v88, v122);
    v134(&v120, &v123, &v121);
    sub_1D6306DB0(&v121, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
    sub_1D6306DB0(&v123, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
    if (v120 != 1)
    {
LABEL_81:
      v13 = v114 + 1;
      v83 = v113 + 160;
      v31 = v111;
      v84 = v112 - 1;
      if (v114 + 1 != v111)
      {
        goto LABEL_82;
      }

      v7 = v106;
      v15 = v117;
      if (v111 < v16)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v119)
    {
      break;
    }

    v129 = v85[6];
    v130 = v85[7];
    v131 = v85[8];
    v132 = v85[9];
    v125 = v85[2];
    v126 = v85[3];
    v127 = v85[4];
    v128 = v85[5];
    v123 = *v85;
    v124 = v85[1];
    v89 = v87[7];
    v85[6] = v87[6];
    v85[7] = v89;
    v90 = v87[9];
    v85[8] = v87[8];
    v85[9] = v90;
    v91 = v87[3];
    v85[2] = v87[2];
    v85[3] = v91;
    v92 = v87[5];
    v85[4] = v87[4];
    v85[5] = v92;
    v93 = v87[1];
    *v85 = *v87;
    v85[1] = v93;
    v87[6] = v129;
    v87[7] = v130;
    v87[8] = v131;
    v87[9] = v132;
    v87[2] = v125;
    v87[3] = v126;
    v87[4] = v127;
    v87[5] = v128;
    *v87 = v123;
    v87[1] = v124;
    v83 = v88;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

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

void sub_1D6306BB4(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &qword_1EC885930, &type metadata for FeedCategory);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D630610C(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FAB18(0, v7, 1, a1, a2, a3);
  }
}

void sub_1D6306D3C(uint64_t a1)
{
  if (!qword_1EDF01D40)
  {
    sub_1D630B814(255, &qword_1EDF046B8, MEMORY[0x1E69E66A8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF01D40);
    }
  }
}

uint64_t sub_1D6306DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6306E10(uint64_t a1)
{
  if (!qword_1EC88EAD0)
  {
    sub_1D5C82990(255, &qword_1EC885930, &type metadata for FeedCategory);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EAD0);
    }
  }
}

uint64_t sub_1D6306E88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5C82990(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6306EF4(uint64_t a1)
{
  if (!qword_1EC885948)
  {
    sub_1D5C82990(255, &unk_1EC88EAF0, &type metadata for FeedIssue);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885948);
    }
  }
}

void sub_1D6306F5C(uint64_t a1)
{
  if (!qword_1EC88EB00)
  {
    sub_1D5C82990(255, &qword_1EC885950, &type metadata for FeedCatalogItem);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EB00);
    }
  }
}

unint64_t sub_1D6306FC4()
{
  result = qword_1EDF1B480;
  if (!qword_1EDF1B480)
  {
    sub_1D5B7F04C(255, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B480);
  }

  return result;
}

unint64_t sub_1D63070F0()
{
  result = qword_1EDF39C68;
  if (!qword_1EDF39C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C68);
  }

  return result;
}

unint64_t sub_1D63071A0()
{
  result = qword_1EDF12E38;
  if (!qword_1EDF12E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12E38);
  }

  return result;
}

unint64_t sub_1D6307250()
{
  result = qword_1EDF15500;
  if (!qword_1EDF15500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15500);
  }

  return result;
}

void sub_1D63072A4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v133 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v115 = a3;
  v116 = a6;
  v13 = a3[1];
  if (v13 < 1)
  {
    swift_retain_n();
    v15 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v95 = swift_allocObject();
    *(v95 + 16) = v133;
    *(v95 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v15 = sub_1D62FF50C(v15);
    }

    v132 = v15;
    v96 = *(v15 + 16);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v115;
        if (!*v115)
        {
          goto LABEL_130;
        }

        v98 = v7;
        v99 = *(v15 + 16 * v96);
        v100 = v15;
        v101 = *(v15 + 16 * (v96 - 1) + 40);
        v102 = (v97 + 160 * v99);
        v103 = (v97 + 160 * *(v15 + 16 * (v96 - 1) + 32));
        v104 = (v97 + 160 * v101);
        v15 = v116;

        sub_1D62FE478(v102, v103, v104, v117, v133, v116);
        v7 = v98;
        if (v98)
        {

          goto LABEL_103;
        }

        if (v101 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1D62FF50C(v100);
        }

        if (v96 - 2 >= *(v100 + 2))
        {
          goto LABEL_120;
        }

        v105 = &v100[16 * v96];
        *v105 = v99;
        *(v105 + 1) = v101;
        v132 = v100;
        sub_1D62FF480(v96 - 1);
        v15 = v132;
        v96 = *(v132 + 16);
      }

      while (v96 > 1);
    }

LABEL_103:

    return;
  }

  swift_retain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v108 = a4;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v17 >= v13)
    {
      v13 = v17;
    }

    else
    {
      v117 = v15;
      v18 = (*v115 + 160 * v17);
      v15 = 160 * v16;
      v19 = (*v115 + 160 * v16);
      v20 = *v19;
      *&v123 = *v18;
      sub_1D5EE5AF8((v18 + 1), &v123 + 8);
      v121 = v20;
      sub_1D5EE5AF8((v19 + 1), v122);
      v133(&v120, &v123, &v121);
      sub_1D6306DB0(&v121, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
      sub_1D6306DB0(&v123, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
      v21 = v120;
      v107 = v16;
      v22 = v16 + 2;
      v23 = (v19 + 41);
      while (v13 != v22)
      {
        v24 = *(v23 - 168);
        *&v123 = *(v23 - 8);
        sub_1D5EE5AF8(v23, &v123 + 8);
        v121 = v24;
        sub_1D5EE5AF8(v23 - 160, v122);
        v133(&v120, &v123, &v121);
        sub_1D6306DB0(&v121, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
        sub_1D6306DB0(&v123, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
        ++v22;
        v23 += 160;
        if (v21 != v120)
        {
          v13 = v22 - 1;
          goto LABEL_9;
        }
      }

      v16 = v107;
      if (!v21)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v13 < v107)
      {
        goto LABEL_123;
      }

      if (v107 < v13)
      {
        v25 = 160 * v13 - 160;
        v26 = v13;
        do
        {
          if (v16 != --v26)
          {
            v28 = *v115;
            if (!*v115)
            {
              goto LABEL_129;
            }

            v27 = (v28 + v25);
            v129 = *(v28 + v15 + 96);
            v130 = *(v28 + v15 + 112);
            v131[0] = *(v28 + v15 + 128);
            *(v131 + 9) = *(v28 + v15 + 137);
            v125 = *(v28 + v15 + 32);
            v126 = *(v28 + v15 + 48);
            v127 = *(v28 + v15 + 64);
            v128 = *(v28 + v15 + 80);
            v123 = *(v28 + v15);
            v124 = *(v28 + v15 + 16);
            memmove((v28 + v15), (v28 + v25), 0xA0uLL);
            v27[6] = v129;
            v27[7] = v130;
            v27[8] = v131[0];
            *(v27 + 137) = *(v131 + 9);
            v27[2] = v125;
            v27[3] = v126;
            v27[4] = v127;
            v27[5] = v128;
            *v27 = v123;
            v27[1] = v124;
          }

          ++v16;
          v25 -= 160;
          v15 += 160;
        }

        while (v16 < v26);
        v15 = v117;
        v16 = v107;
        a4 = v108;
      }

      else
      {
LABEL_19:
        v15 = v117;
        a4 = v108;
      }
    }

    v29 = v115[1];
    if (v13 < v29)
    {
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_122;
      }

      if (v13 - v16 < a4)
      {
        if (__OFADD__(v16, a4))
        {
          goto LABEL_124;
        }

        if (v16 + a4 >= v29)
        {
          v30 = v115[1];
        }

        else
        {
          v30 = v16 + a4;
        }

        if (v30 < v16)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v13 != v30)
        {
          break;
        }
      }
    }

    v31 = v13;
    if (v13 < v16)
    {
      goto LABEL_121;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D698BA94(0, *(v15 + 16) + 1, 1, v15);
    }

    v32 = v15;
    v15 = *(v15 + 16);
    v117 = v32;
    v33 = *(v32 + 24);
    v34 = v15 + 1;
    if (v15 >= v33 >> 1)
    {
      v117 = sub_1D698BA94((v33 > 1), v15 + 1, 1, v117);
    }

    *(v117 + 2) = v34;
    v35 = &v117[16 * v15];
    *(v35 + 4) = v16;
    *(v35 + 5) = v31;
    v110 = v31;
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v15)
    {
      while (1)
      {
        v36 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        v37 = v117;
        if (v34 == 3)
        {
          v38 = *(v117 + 4);
          v39 = *(v117 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_50:
          if (v41)
          {
            goto LABEL_110;
          }

          v54 = &v37[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_113;
          }

          v60 = &v37[16 * v36 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_117;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v36 = v34 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v64 = &v117[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_64:
        if (v59)
        {
          goto LABEL_112;
        }

        v67 = &v37[16 * v36];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_71:
        v75 = v36 - 1;
        if (v36 - 1 >= v34)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v76 = *v115;
        if (!*v115)
        {
          goto LABEL_128;
        }

        v77 = *&v37[16 * v75 + 32];
        v78 = *&v37[16 * v36 + 40];
        v79 = (v76 + 160 * v77);
        v80 = (v76 + 160 * *&v37[16 * v36 + 32]);
        v15 = v76 + 160 * v78;

        sub_1D62FE478(v79, v80, v15, v118, v133, v116);
        if (v7)
        {

          goto LABEL_103;
        }

        if (v78 < v77)
        {
          goto LABEL_106;
        }

        v81 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1D62FF50C(v117);
        }

        if (v75 >= *(v81 + 2))
        {
          goto LABEL_107;
        }

        v82 = &v81[16 * v75];
        *(v82 + 4) = v77;
        *(v82 + 5) = v78;
        v132 = v81;
        sub_1D62FF480(v36);
        v117 = v132;
        v34 = *(v132 + 16);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v37 = v117;
      v42 = &v117[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = &v117[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = &v117[16 * v36 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v36 = v34 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    a6 = v116;
    v13 = v115[1];
    v14 = v110;
    v15 = v117;
    a4 = v108;
    if (v110 >= v13)
    {
      goto LABEL_92;
    }
  }

  v106 = v7;
  v117 = v15;
  v119 = *v115;
  v83 = *v115 + 160 * v13 + 8;
  v84 = v16 - v13;
  v111 = v30;
LABEL_82:
  v113 = v83;
  v114 = v13;
  v112 = v84;
  while (1)
  {
    v85 = (v83 - 8);
    v87 = (v83 - 168);
    v86 = *(v83 - 168);
    v88 = v83 - 160;
    *&v123 = *(v83 - 8);
    sub_1D5EE5AF8(v83, &v123 + 8);
    v121 = v86;
    sub_1D5EE5AF8(v88, v122);
    v133(&v120, &v123, &v121);
    sub_1D6306DB0(&v121, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
    sub_1D6306DB0(&v123, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
    if (v120 != 1)
    {
LABEL_81:
      v13 = v114 + 1;
      v83 = v113 + 160;
      v31 = v111;
      v84 = v112 - 1;
      if (v114 + 1 != v111)
      {
        goto LABEL_82;
      }

      v7 = v106;
      v15 = v117;
      if (v111 < v16)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v119)
    {
      break;
    }

    v129 = v85[6];
    v130 = v85[7];
    v131[0] = v85[8];
    *(v131 + 9) = *(v85 + 137);
    v125 = v85[2];
    v126 = v85[3];
    v127 = v85[4];
    v128 = v85[5];
    v123 = *v85;
    v124 = v85[1];
    v89 = v87[7];
    v85[6] = v87[6];
    v85[7] = v89;
    v90 = v87[9];
    v85[8] = v87[8];
    v85[9] = v90;
    v91 = v87[3];
    v85[2] = v87[2];
    v85[3] = v91;
    v92 = v87[5];
    v85[4] = v87[4];
    v85[5] = v92;
    v93 = v87[1];
    *v85 = *v87;
    v85[1] = v93;
    v87[6] = v129;
    v87[7] = v130;
    v87[8] = v131[0];
    *(v87 + 137) = *(v131 + 9);
    v87[2] = v125;
    v87[3] = v126;
    v87[4] = v127;
    v87[5] = v128;
    *v87 = v123;
    v87[1] = v124;
    v83 = v88;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

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

void sub_1D6307D4C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &qword_1EDF04760, &type metadata for FeedTag);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D63072A4(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA68C(0, v7, 1, a1, a2, a3);
  }
}

void sub_1D6307ED4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a6, unint64_t *a7, uint64_t (*a8)(uint64_t), unint64_t *a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t (*a12)(void), uint64_t a13, void (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, void (*)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t))
{
  v15 = v14;
  v165 = a1;
  v173 = a14;
  v182 = a7;
  v183 = a8;
  sub_1D5C17CEC(0, a7, a8);
  v190 = v20;
  v174 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v169 = v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v179 = v163 - v25;
  v188 = a9;
  v189 = a10;
  v26 = a3;
  sub_1D5C14BE8(0, a9, a10);
  v187 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v186 = (v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v185 = (v163 - v32);
  v33 = swift_allocObject();
  v191 = a5;
  *(v33 + 16) = a5;
  *(v33 + 24) = a6;
  v163[1] = v33;
  v34 = a3[1];
  v192 = a6;
  v175 = a3;
  if (v34 < 1)
  {
    swift_retain_n();
    v36 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v193 = *v165;
    if (!v193)
    {
      goto LABEL_137;
    }

    v150 = swift_allocObject();
    *(v150 + 16) = v191;
    *(v150 + 24) = a6;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = v150;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_100;
  }

  v163[0] = a4;
  v184 = a12;
  swift_retain_n();
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v190;
  while (1)
  {
    v38 = v35;
    v39 = v35 + 1;
    v167 = v36;
    if (v39 >= v34)
    {
      v56 = v39;
    }

    else
    {
      v176 = v34;
      v164 = v15;
      v40 = v37;
      v41 = *v26;
      v42 = *(v174 + 72);
      v178 = v42 * v39;
      v43 = (v41 + v42 * v39);
      v44 = v41;
      v45 = (v41 + v42 * v38);
      v46 = *v43;
      v47 = *(v40 + 48);
      v193 = *v45;
      v48 = v185;
      *v185 = v46;
      v49 = v187;
      v50 = v48 + *(v187 + 48);
      v166 = v38;
      v51 = v184;
      sub_1D5BD86D4(v43 + v47, v50, v184);
      v52 = v186;
      *v186 = v193;
      sub_1D5BD86D4(v45 + v47, v52 + *(v49 + 48), v51);
      v191((&v194 + 1), v48, v52);
      v54 = v188;
      v53 = v189;
      sub_1D630B668(v52, v188, v189, sub_1D5C14BE8);
      sub_1D630B668(v48, v54, v53, sub_1D5C14BE8);
      LODWORD(v180) = BYTE1(v194);
      v55 = v166 + 2;
      v181 = v42;
      v177 = v42 * (v166 + 2);
      while (1)
      {
        v56 = v176;
        if (v176 == v55)
        {
          break;
        }

        v57 = v44;
        v58 = v44 + v177;
        v59 = v44 + v178;
        v60 = *(v44 + v177);
        v193 = v55;
        v61 = *(v190 + 48);
        v62 = *(v44 + v178);
        v63 = v184;
        v64 = v185;
        *v185 = v60;
        v65 = v187;
        sub_1D5BD86D4(v58 + v61, v64 + *(v187 + 48), v63);
        v66 = v186;
        *v186 = v62;
        sub_1D5BD86D4(v59 + v61, v66 + *(v65 + 48), v63);
        v191(&v194, v64, v66);
        v68 = v188;
        v67 = v189;
        sub_1D630B668(v66, v188, v189, sub_1D5C14BE8);
        sub_1D630B668(v64, v68, v67, sub_1D5C14BE8);
        v55 = v193 + 1;
        v44 = v57 + v181;
        if (v180 != v194)
        {
          v56 = v193;
          break;
        }
      }

      v15 = v164;
      v26 = v175;
      v36 = v167;
      v37 = v190;
      if (v180)
      {
        v38 = v166;
        if (v56 < v166)
        {
          goto LABEL_128;
        }

        if (v166 < v56)
        {
          v69 = v181 * (v56 - 1);
          v70 = v56 * v181;
          v176 = v56;
          v71 = v56;
          v72 = v166;
          v73 = v166 * v181;
          do
          {
            if (v72 != --v71)
            {
              v74 = *v26;
              if (!*v26)
              {
                goto LABEL_134;
              }

              sub_1D630BA20(v74 + v73, v169, v182, v183);
              if (v73 < v69 || v74 + v73 >= (v74 + v70))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v73 != v69)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D630BA20(v169, v74 + v69, v182, v183);
              v26 = v175;
              v36 = v167;
            }

            ++v72;
            v69 -= v181;
            v70 -= v181;
            v73 += v181;
          }

          while (v72 < v71);
          v15 = v164;
          v37 = v190;
          v38 = v166;
          v56 = v176;
        }
      }

      else
      {
        v38 = v166;
      }
    }

    v75 = *(v26 + 8);
    if (v56 >= v75)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v56, v38))
    {
      goto LABEL_127;
    }

    if (v56 - v38 >= v163[0])
    {
      goto LABEL_34;
    }

    if (__OFADD__(v38, v163[0]))
    {
      goto LABEL_129;
    }

    if (v38 + v163[0] >= v75)
    {
      v76 = *(v26 + 8);
    }

    else
    {
      v76 = v38 + v163[0];
    }

    if (v76 < v38)
    {
      goto LABEL_130;
    }

    if (v56 == v76)
    {
LABEL_34:
      v77 = v56;
      if (v56 < v38)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v164 = v15;
      v132 = *v26;
      v133 = *(v174 + 72);
      v181 = v133 * (v56 - 1);
      v177 = -v133;
      v166 = v38;
      v134 = v38 - v56;
      v168 = v133;
      v180 = v56 * v133;
      v178 = v132;
      v170 = v76;
      do
      {
        v176 = v56;
        v172 = v134;
        v135 = v134;
        v171 = v132;
        while (1)
        {
          v193 = v135;
          v136 = v132 + v180;
          v26 = v132 + v181;
          v137 = *(v37 + 48);
          v138 = *(v132 + v181);
          v140 = v184;
          v139 = v185;
          *v185 = *(v132 + v180);
          v141 = v187;
          sub_1D5BD86D4(v136 + v137, v139 + *(v187 + 48), v140);
          v142 = v186;
          *v186 = v138;
          sub_1D5BD86D4(v26 + v137, v142 + *(v141 + 48), v140);
          v191((&v194 + 2), v139, v142);
          v143 = v188;
          v144 = v189;
          sub_1D630B668(v142, v188, v189, sub_1D5C14BE8);
          sub_1D630B668(v139, v143, v144, sub_1D5C14BE8);
          if (BYTE2(v194) != 1)
          {
            break;
          }

          v145 = v193;
          if (!v178)
          {

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
            return;
          }

          v146 = v179;
          v148 = v182;
          v147 = v183;
          sub_1D630BA20(v136, v179, v182, v183);
          v37 = v190;
          swift_arrayInitWithTakeFrontToBack();
          sub_1D630BA20(v146, v26, v148, v147);
          v132 += v177;
          v149 = __CFADD__(v145, 1);
          v135 = v145 + 1;
          if (v149)
          {
            goto LABEL_86;
          }
        }

        v37 = v190;
LABEL_86:
        v56 = v176 + 1;
        v132 = v171 + v168;
        v134 = v172 - 1;
        v77 = v170;
      }

      while (v176 + 1 != v170);
      v15 = v164;
      v36 = v167;
      v38 = v166;
      if (v170 < v166)
      {
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
        v36 = sub_1D62FF50C(v36);
LABEL_100:
        v152 = v15;
        v195 = v36;
        v153 = *(v36 + 16);
        if (v153 < 2)
        {
LABEL_108:

          return;
        }

        while (1)
        {
          v154 = *v26;
          if (!*v26)
          {
            goto LABEL_135;
          }

          v26 = v153 - 1;
          v15 = *(v36 + 16 * v153);
          v155 = v36;
          v156 = *(v36 + 16 * (v153 - 1) + 32);
          v36 = *(v36 + 16 * (v153 - 1) + 40);
          v157 = *(v174 + 72);
          v158 = v154 + v157 * v15;
          v159 = v154 + v157 * v156;
          v160 = v154 + v157 * v36;
          v161 = v192;

          v173(v158, v159, v160, v193, v191, v161);
          if (v152)
          {

            goto LABEL_96;
          }

          if (v36 < v15)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_1D62FF50C(v155);
          }

          if (v153 - 2 >= *(v155 + 2))
          {
            goto LABEL_125;
          }

          v162 = &v155[16 * v153];
          *v162 = v15;
          *(v162 + 1) = v36;
          v195 = v155;
          sub_1D62FF480(v153 - 1);
          v36 = v195;
          v153 = *(v195 + 16);
          v26 = v175;
          if (v153 <= 1)
          {
            goto LABEL_108;
          }
        }
      }
    }

    v78 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v77;
    if ((v78 & 1) == 0)
    {
      v36 = sub_1D698BA94(0, *(v36 + 16) + 1, 1, v36);
    }

    v80 = *(v36 + 16);
    v79 = *(v36 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      v36 = sub_1D698BA94((v79 > 1), v80 + 1, 1, v36);
    }

    *(v36 + 16) = v81;
    v82 = v36 + 16 * v80;
    v83 = v170;
    *(v82 + 32) = v38;
    *(v82 + 40) = v83;
    v193 = *v165;
    if (!v193)
    {
      goto LABEL_136;
    }

    if (v80)
    {
      break;
    }

LABEL_3:
    v26 = v175;
    v34 = v175[1];
    v35 = v170;
    a6 = v192;
    if (v170 >= v34)
    {
      goto LABEL_98;
    }
  }

  while (1)
  {
    v26 = v81 - 1;
    if (v81 >= 4)
    {
      v89 = v36 + 32 + 16 * v81;
      v90 = *(v89 - 64);
      v91 = *(v89 - 56);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_113;
      }

      v94 = *(v89 - 48);
      v93 = *(v89 - 40);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_114;
      }

      v84 = v36;
      v96 = (v36 + 16 * v81);
      v98 = *v96;
      v97 = v96[1];
      v95 = __OFSUB__(v97, v98);
      v99 = v97 - v98;
      if (v95)
      {
        goto LABEL_116;
      }

      v95 = __OFADD__(v87, v99);
      v100 = v87 + v99;
      if (v95)
      {
        goto LABEL_119;
      }

      if (v100 >= v92)
      {
        v118 = (v36 + 32 + 16 * v26);
        v120 = *v118;
        v119 = v118[1];
        v95 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v95)
        {
          goto LABEL_123;
        }

        if (v87 < v121)
        {
          v26 = v81 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

    v84 = v36;
    if (v81 == 3)
    {
      v85 = *(v36 + 32);
      v86 = *(v36 + 40);
      v95 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      v88 = v95;
LABEL_54:
      if (v88)
      {
        goto LABEL_115;
      }

      v101 = (v84 + 16 * v81);
      v103 = *v101;
      v102 = v101[1];
      v104 = __OFSUB__(v102, v103);
      v105 = v102 - v103;
      v106 = v104;
      if (v104)
      {
        goto LABEL_118;
      }

      v107 = (v84 + 32 + 16 * v26);
      v109 = *v107;
      v108 = v107[1];
      v95 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v95)
      {
        goto LABEL_121;
      }

      if (__OFADD__(v105, v110))
      {
        goto LABEL_122;
      }

      if (v105 + v110 >= v87)
      {
        if (v87 < v110)
        {
          v26 = v81 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    v111 = (v36 + 16 * v81);
    v113 = *v111;
    v112 = v111[1];
    v95 = __OFSUB__(v112, v113);
    v105 = v112 - v113;
    v106 = v95;
LABEL_68:
    if (v106)
    {
      goto LABEL_117;
    }

    v114 = v84 + 16 * v26;
    v116 = *(v114 + 32);
    v115 = *(v114 + 40);
    v95 = __OFSUB__(v115, v116);
    v117 = v115 - v116;
    if (v95)
    {
      goto LABEL_120;
    }

    if (v117 < v105)
    {
      goto LABEL_3;
    }

LABEL_75:
    v122 = v26 - 1;
    if (v26 - 1 >= v81)
    {
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
      goto LABEL_126;
    }

    v123 = *v175;
    if (!*v175)
    {
      goto LABEL_133;
    }

    v124 = *(v84 + 32 + 16 * v122);
    v125 = *(v84 + 32 + 16 * v26 + 8);
    v126 = *(v174 + 72);
    v127 = v123 + v126 * v124;
    v128 = v123 + v126 * *(v84 + 32 + 16 * v26);
    v129 = v123 + v126 * v125;
    v130 = v192;

    v173(v127, v128, v129, v193, v191, v130);
    if (v15)
    {
      break;
    }

    if (v125 < v124)
    {
      goto LABEL_111;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1D62FF50C(v36);
    }

    if (v122 >= *(v36 + 16))
    {
      goto LABEL_112;
    }

    v131 = v36 + 16 * v122;
    *(v131 + 32) = v124;
    *(v131 + 40) = v125;
    v195 = v36;
    sub_1D62FF480(v26);
    v36 = v195;
    v81 = *(v195 + 16);
    v37 = v190;
    if (v81 <= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_96:
}

void sub_1D6308BB0(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, &unk_1F5144768, type metadata accessor for FeedWebEmbed, &unk_1F5144790, sub_1D62FDDE4);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA30C(0, v7, 1, a1, a2, a3);
  }
}

double sub_1D6308E04(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFC5C(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D6308BB0(v12, a2, a3);

  *a1 = v9;

  return result;
}

void sub_1D6308F38(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v9 = swift_allocObject();
  v136 = a5;
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  v113 = a3;
  v10 = a3[1];
  v117 = a6;
  if (v10 < 1)
  {
    swift_retain_n();
    v12 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v94 = swift_allocObject();
    *(v94 + 16) = v136;
    *(v94 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v12 = sub_1D62FF50C(v12);
    }

    v135 = v12;
    v95 = *(v12 + 16);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v113;
        if (!*v113)
        {
          goto LABEL_130;
        }

        v97 = *(v12 + 16 * v95);
        v98 = v12;
        v99 = *(v12 + 16 * (v95 - 1) + 40);
        v100 = (v96 + 216 * v97);
        v101 = (v96 + 216 * *(v12 + 16 * (v95 - 1) + 32));
        v102 = (v96 + 216 * v99);
        v12 = v117;

        sub_1D62FD9B4(v100, v101, v102, v112, v136, v117);
        if (v116)
        {

          goto LABEL_103;
        }

        if (v99 < v97)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1D62FF50C(v98);
        }

        if (v95 - 2 >= *(v98 + 2))
        {
          goto LABEL_120;
        }

        v103 = &v98[16 * v95];
        *v103 = v97;
        *(v103 + 1) = v99;
        v135 = v98;
        sub_1D62FF480(v95 - 1);
        v12 = v135;
        v95 = *(v135 + 16);
      }

      while (v95 > 1);
    }

LABEL_103:

    return;
  }

  swift_retain_n();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 + 1 >= v10)
    {
      v19 = v11 + 1;
    }

    else
    {
      v104 = v12;
      v13 = (*v113 + 216 * (v11 + 1));
      v12 = 216 * v11;
      v14 = (*v113 + 216 * v11);
      v15 = *v14;
      *&v121 = *v13;
      sub_1D5F2DEAC((v13 + 1), &v121 + 8);
      v119 = v15;
      sub_1D5F2DEAC((v14 + 1), v120);
      v136(&v118, &v121, &v119);
      sub_1D6306DB0(&v119, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
      sub_1D6306DB0(&v121, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
      v16 = v118;
      v106 = v11;
      v17 = v11 + 2;
      v18 = (v14 + 55);
      while (1)
      {
        v19 = v10;
        if (v10 == v17)
        {
          break;
        }

        v20 = *(v18 - 224);
        *&v121 = *(v18 - 8);
        sub_1D5F2DEAC(v18, &v121 + 8);
        v119 = v20;
        sub_1D5F2DEAC(v18 - 216, v120);
        v136(&v118, &v121, &v119);
        sub_1D6306DB0(&v119, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
        sub_1D6306DB0(&v121, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
        ++v17;
        v18 += 216;
        if (v16 != v118)
        {
          v19 = v17 - 1;
          goto LABEL_9;
        }
      }

      v11 = v106;
      if (!v16)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v19 < v106)
      {
        goto LABEL_123;
      }

      if (v106 < v19)
      {
        v21 = 216 * v19 - 216;
        v22 = v19;
        do
        {
          if (v11 != --v22)
          {
            v24 = *v113;
            if (!*v113)
            {
              goto LABEL_129;
            }

            v23 = v24 + v21;
            v131 = *(v24 + v12 + 160);
            v132 = *(v24 + v12 + 176);
            v133 = *(v24 + v12 + 192);
            v134 = *(v24 + v12 + 208);
            v127 = *(v24 + v12 + 96);
            v128 = *(v24 + v12 + 112);
            v129 = *(v24 + v12 + 128);
            v130 = *(v24 + v12 + 144);
            v123 = *(v24 + v12 + 32);
            v124 = *(v24 + v12 + 48);
            v125 = *(v24 + v12 + 64);
            v126 = *(v24 + v12 + 80);
            v121 = *(v24 + v12);
            v122 = *(v24 + v12 + 16);
            memmove((v24 + v12), (v24 + v21), 0xD8uLL);
            *(v23 + 160) = v131;
            *(v23 + 176) = v132;
            *(v23 + 192) = v133;
            *(v23 + 208) = v134;
            *(v23 + 96) = v127;
            *(v23 + 112) = v128;
            *(v23 + 128) = v129;
            *(v23 + 144) = v130;
            *(v23 + 32) = v123;
            *(v23 + 48) = v124;
            *(v23 + 64) = v125;
            *(v23 + 80) = v126;
            *v23 = v121;
            *(v23 + 16) = v122;
          }

          ++v11;
          v21 -= 216;
          v12 += 216;
        }

        while (v11 < v22);
        v12 = v104;
        v11 = v106;
      }

      else
      {
LABEL_19:
        v12 = v104;
      }
    }

    v25 = v113[1];
    if (v19 < v25)
    {
      if (__OFSUB__(v19, v11))
      {
        goto LABEL_122;
      }

      if (v19 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_124;
        }

        if (v11 + a4 >= v25)
        {
          v26 = v113[1];
        }

        else
        {
          v26 = v11 + a4;
        }

        if (v26 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v26)
        {
          break;
        }
      }
    }

    v27 = v19;
    if (v19 < v11)
    {
      goto LABEL_121;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D698BA94(0, *(v12 + 16) + 1, 1, v12);
    }

    v28 = v12;
    v12 = *(v12 + 16);
    v29 = v28;
    v30 = *(v28 + 24);
    v31 = v12 + 1;
    if (v12 >= v30 >> 1)
    {
      v29 = sub_1D698BA94((v30 > 1), v12 + 1, 1, v29);
    }

    *(v29 + 2) = v31;
    v32 = &v29[16 * v12];
    *(v32 + 4) = v11;
    *(v32 + 5) = v27;
    v109 = v27;
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v12)
    {
      while (1)
      {
        v33 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        v34 = v29;
        if (v31 == 3)
        {
          v35 = *(v29 + 4);
          v36 = *(v29 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_50:
          if (v38)
          {
            goto LABEL_110;
          }

          v51 = &v34[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_113;
          }

          v57 = &v34[16 * v33 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_117;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v33 = v31 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v61 = &v29[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_64:
        if (v56)
        {
          goto LABEL_112;
        }

        v64 = &v34[16 * v33];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_71:
        v72 = v33 - 1;
        if (v33 - 1 >= v31)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v73 = *v113;
        if (!*v113)
        {
          goto LABEL_128;
        }

        v74 = *&v34[16 * v72 + 32];
        v75 = *&v34[16 * v33 + 40];
        v76 = (v73 + 216 * v74);
        v77 = (v73 + 216 * *&v34[16 * v33 + 32]);
        v12 = v73 + 216 * v75;

        sub_1D62FD9B4(v76, v77, v12, v114, v136, v117);
        if (v116)
        {

          goto LABEL_103;
        }

        if (v75 < v74)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D62FF50C(v29);
        }

        if (v72 >= *(v29 + 2))
        {
          goto LABEL_107;
        }

        v78 = &v29[16 * v72];
        *(v78 + 4) = v74;
        *(v78 + 5) = v75;
        v135 = v29;
        sub_1D62FF480(v33);
        v29 = v135;
        v31 = *(v135 + 16);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = &v29[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_108;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_109;
      }

      v34 = v29;
      v46 = &v29[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_111;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_114;
      }

      if (v50 >= v42)
      {
        v68 = &v29[16 * v33 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_118;
        }

        if (v37 < v71)
        {
          v33 = v31 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v10 = v113[1];
    v11 = v109;
    a6 = v117;
    v12 = v29;
    if (v109 >= v10)
    {
      goto LABEL_92;
    }
  }

  v105 = v12;
  v79 = v19;
  v80 = *v113;
  v81 = *v113 + 216 * v79 + 8;
  v115 = v79;
  v82 = v11 - v79;
  v110 = v26;
LABEL_82:
  v111 = v82;
  v112 = v81;
  while (1)
  {
    v83 = v81 - 8;
    v85 = v81 - 224;
    v84 = *(v81 - 224);
    v86 = v81 - 216;
    *&v121 = *(v81 - 8);
    sub_1D5F2DEAC(v81, &v121 + 8);
    v119 = v84;
    sub_1D5F2DEAC(v86, v120);
    v136(&v118, &v121, &v119);
    sub_1D6306DB0(&v119, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
    sub_1D6306DB0(&v121, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
    if (v118 != 1)
    {
LABEL_81:
      v81 = (v112 + 216);
      v82 = v111 - 1;
      v27 = v110;
      if (++v115 != v110)
      {
        goto LABEL_82;
      }

      v12 = v105;
      if (v110 < v11)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v80)
    {
      break;
    }

    v131 = *(v83 + 160);
    v132 = *(v83 + 176);
    v133 = *(v83 + 192);
    v134 = *(v83 + 208);
    v127 = *(v83 + 96);
    v128 = *(v83 + 112);
    v129 = *(v83 + 128);
    v130 = *(v83 + 144);
    v123 = *(v83 + 32);
    v124 = *(v83 + 48);
    v125 = *(v83 + 64);
    v126 = *(v83 + 80);
    v121 = *v83;
    v122 = *(v83 + 16);
    v87 = *(v85 + 176);
    *(v83 + 160) = *(v85 + 160);
    *(v83 + 176) = v87;
    *(v83 + 192) = *(v85 + 192);
    *(v83 + 208) = *(v85 + 208);
    v88 = *(v85 + 112);
    *(v83 + 96) = *(v85 + 96);
    *(v83 + 112) = v88;
    v89 = *(v85 + 144);
    *(v83 + 128) = *(v85 + 128);
    *(v83 + 144) = v89;
    v90 = *(v85 + 48);
    *(v83 + 32) = *(v85 + 32);
    *(v83 + 48) = v90;
    v91 = *(v85 + 80);
    *(v83 + 64) = *(v85 + 64);
    *(v83 + 80) = v91;
    v92 = *(v85 + 16);
    *v83 = *v85;
    *(v83 + 16) = v92;
    *(v85 + 160) = v131;
    *(v85 + 176) = v132;
    *(v85 + 192) = v133;
    *(v85 + 208) = v134;
    *(v85 + 96) = v127;
    *(v85 + 112) = v128;
    *(v85 + 128) = v129;
    *(v85 + 144) = v130;
    *(v85 + 32) = v123;
    *(v85 + 48) = v124;
    *(v85 + 64) = v125;
    *(v85 + 80) = v126;
    *v85 = v121;
    *(v85 + 16) = v122;
    v81 = v86;
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_81;
    }
  }

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

void sub_1D6309A4C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &unk_1EDF04750, &type metadata for FeedPuzzle);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D6308F38(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA01C(0, v7, 1, a1, a2, a3);
  }
}

void sub_1D6309BD4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *), uint64_t a6)
{
  v152 = a6;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v10 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EC88F4D0;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    v123 = v8;
    if (v8 + 1 >= v7)
    {
      v37 = v8 + 1;
    }

    else
    {
      v121 = v7;
      v13 = *a3;
      v14 = *a3 + 72 * v12;
      v141 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v145 = *(v14 + 64);
      v143 = v16;
      v144 = v17;
      v142 = v15;
      v18 = (v13 + 72 * v11);
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v150 = *(v18 + 8);
      v148 = v20;
      v149 = v19;
      v147 = v21;
      v146 = *v18;
      v138 = v143;
      v139 = v144;
      v118 = v141;
      v140 = v145;
      v136 = v141;
      v137 = v142;
      v22 = v11;
      v23 = v146;
      v132 = v18[1];
      v133 = v18[2];
      v134 = v18[3];
      v135 = *(v18 + 8);
      v131 = *v18;
      sub_1D6306E88(&v141, v129, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
      sub_1D6306E88(&v146, v129, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
      v119 = a5(v118, &v136 + 8, v23, &v131 + 8);
      if (v6)
      {
LABEL_104:
        sub_1D6306DB0(&v146, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
        sub_1D6306DB0(&v141, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
LABEL_105:

        return;
      }

      sub_1D6306DB0(&v146, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      sub_1D6306DB0(&v141, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      v24 = v22 + 2;
      v11 = v22;
      if (v22 + 2 >= v121)
      {
        v37 = v22 + 2;
        if (v119)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = v13 + 72 * v22 + 72;
        while (1)
        {
          v26 = v24;
          v131 = *(v25 + 72);
          v27 = *(v25 + 88);
          v28 = *(v25 + 104);
          v29 = *(v25 + 120);
          v135 = *(v25 + 136);
          v133 = v28;
          v134 = v29;
          v132 = v27;
          v31 = *(v25 + 32);
          v30 = *(v25 + 48);
          v32 = *(v25 + 16);
          v140 = *(v25 + 64);
          v138 = v31;
          v139 = v30;
          v137 = v32;
          v136 = *v25;
          v129[2] = v133;
          v129[3] = v134;
          v33 = v131;
          v130 = v135;
          v129[0] = v131;
          v129[1] = v132;
          v34 = v136;
          v35 = *(v25 + 48);
          v127[2] = *(v25 + 32);
          v127[3] = v35;
          v128 = *(v25 + 64);
          v36 = *(v25 + 16);
          v127[0] = *v25;
          v127[1] = v36;
          v10 = &type metadata for FeedPuzzleType;
          sub_1D6306E88(&v131, v126, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
          sub_1D6306E88(&v136, v126, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
          LODWORD(v33) = a5(v33, v129 + 8, v34, v127 + 8);
          sub_1D6306DB0(&v136, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          sub_1D6306DB0(&v131, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          if ((v119 ^ v33))
          {
            break;
          }

          v24 = v26 + 1;
          v25 += 72;
          v37 = v121;
          if (v121 == v26 + 1)
          {
            v12 = v26;
            goto LABEL_15;
          }
        }

        v37 = v26;
        v12 = v26 - 1;
LABEL_15:
        v11 = v123;
        if (v119)
        {
LABEL_16:
          if (v37 < v11)
          {
            goto LABEL_127;
          }

          if (v11 <= v12)
          {
            v38 = 72 * v37 - 72;
            v10 = 72 * v11;
            v39 = v37;
            v40 = v11;
            do
            {
              if (v40 != --v37)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v42 = v41 + v38;
                v137 = *(v41 + v10 + 16);
                v138 = *(v41 + v10 + 32);
                v139 = *(v41 + v10 + 48);
                v140 = *(v41 + v10 + 64);
                v136 = *(v41 + v10);
                memmove((v41 + v10), (v41 + v38), 0x48uLL);
                *(v42 + 16) = v137;
                *(v42 + 32) = v138;
                *(v42 + 48) = v139;
                *(v42 + 64) = v140;
                *v42 = v136;
                v11 = v123;
              }

              ++v40;
              v38 -= 72;
              v10 += 72;
            }

            while (v40 < v37);
            v37 = v39;
          }
        }
      }
    }

    v43 = a3[1];
    if (v37 >= v43)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v37, v11))
    {
      goto LABEL_123;
    }

    if (v37 - v11 >= a4)
    {
      goto LABEL_136;
    }

    v44 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v44 >= v43)
    {
      v44 = a3[1];
    }

    if (v44 < v11)
    {
      goto LABEL_126;
    }

    if (v37 == v44)
    {
LABEL_136:
      if (v37 < v11)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v122 = *a3;
      v91 = *a3 + 72 * v37 - 72;
      v92 = v11 - v37 + 1;
      v113 = v44;
      do
      {
        v120 = v37;
        v114 = v92;
        v115 = v91;
        for (i = v92; ; ++i)
        {
          v141 = *(v91 + 72);
          v94 = *(v91 + 88);
          v95 = *(v91 + 104);
          v96 = *(v91 + 120);
          v145 = *(v91 + 136);
          v143 = v95;
          v144 = v96;
          v142 = v94;
          v98 = *(v91 + 32);
          v97 = *(v91 + 48);
          v99 = *(v91 + 16);
          v150 = *(v91 + 64);
          v148 = v98;
          v149 = v97;
          v147 = v99;
          v146 = *v91;
          v138 = v143;
          v139 = v144;
          v100 = v141;
          v140 = v145;
          v136 = v141;
          v137 = v142;
          v101 = v146;
          v132 = *(v91 + 16);
          v133 = *(v91 + 32);
          v134 = *(v91 + 48);
          v135 = *(v91 + 64);
          v131 = *v91;
          sub_1D6306E88(&v141, v129, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
          sub_1D6306E88(&v146, v129, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
          v102 = a5(v100, &v136 + 8, v101, &v131 + 8);
          if (v6)
          {
            goto LABEL_104;
          }

          v103 = v102;
          v10 = sub_1D5C82990;
          sub_1D6306DB0(&v146, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          sub_1D6306DB0(&v141, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          if ((v103 & 1) == 0)
          {
            break;
          }

          if (!v122)
          {
            goto LABEL_129;
          }

          v137 = *(v91 + 88);
          v138 = *(v91 + 104);
          v139 = *(v91 + 120);
          v140 = *(v91 + 136);
          v136 = *(v91 + 72);
          v104 = *v91;
          *(v91 + 88) = *(v91 + 16);
          v105 = *(v91 + 48);
          *(v91 + 104) = *(v91 + 32);
          *(v91 + 120) = v105;
          *(v91 + 136) = *(v91 + 64);
          *(v91 + 72) = v104;
          *v91 = v136;
          v106 = v137;
          v107 = v138;
          v108 = v139;
          *(v91 + 64) = v140;
          *(v91 + 32) = v107;
          *(v91 + 48) = v108;
          *(v91 + 16) = v106;
          if (!i)
          {
            break;
          }

          v91 -= 72;
        }

        v37 = v120 + 1;
        v91 = v115 + 72;
        v92 = v114 - 1;
      }

      while (v120 + 1 != v113);
      v37 = v113;
      if (v113 < v123)
      {
        goto LABEL_122;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
    }

    v46 = *(v9 + 2);
    v45 = *(v9 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v9 = sub_1D698BA94((v45 > 1), v46 + 1, 1, v9);
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v46];
    *(v48 + 4) = v123;
    *(v48 + 5) = v37;
    v8 = v37;
    v49 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v46)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v10 = &unk_1EC88F4D0;
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v10 = v47 - 1;
    if (v47 >= 4)
    {
      v54 = &v9[16 * v47 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_109;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_110;
      }

      v61 = &v9[16 * v47];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_112;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_115;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v10 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v10 = v47 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v47 == 3)
    {
      v50 = *(v9 + 4);
      v51 = *(v9 + 5);
      v60 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      v53 = v60;
LABEL_52:
      if (v53)
      {
        goto LABEL_111;
      }

      v66 = &v9[16 * v47];
      v68 = *v66;
      v67 = *(v66 + 1);
      v69 = __OFSUB__(v67, v68);
      v70 = v67 - v68;
      v71 = v69;
      if (v69)
      {
        goto LABEL_114;
      }

      v72 = &v9[16 * v10 + 32];
      v74 = *v72;
      v73 = *(v72 + 1);
      v60 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v60)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v70, v75))
      {
        goto LABEL_118;
      }

      if (v70 + v75 >= v52)
      {
        if (v52 < v75)
        {
          v10 = v47 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v76 = &v9[16 * v47];
    v78 = *v76;
    v77 = *(v76 + 1);
    v60 = __OFSUB__(v77, v78);
    v70 = v77 - v78;
    v71 = v60;
LABEL_66:
    if (v71)
    {
      goto LABEL_113;
    }

    v79 = &v9[16 * v10];
    v81 = *(v79 + 4);
    v80 = *(v79 + 5);
    v60 = __OFSUB__(v80, v81);
    v82 = v80 - v81;
    if (v60)
    {
      goto LABEL_116;
    }

    if (v82 < v70)
    {
      goto LABEL_3;
    }

LABEL_73:
    v87 = v10 - 1;
    if (v10 - 1 >= v47)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v88 = *&v9[16 * v87 + 32];
    v89 = *&v9[16 * v10 + 40];
    sub_1D62FD2E4((*a3 + 72 * v88), (*a3 + 72 * *&v9[16 * v10 + 32]), (*a3 + 72 * v89), v49, a5);
    if (v6)
    {
      goto LABEL_105;
    }

    if (v89 < v88)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v87 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v90 = &v9[16 * v87];
    *(v90 + 4) = v88;
    *(v90 + 5) = v89;
    v151 = v9;
    sub_1D62FF480(v10);
    v9 = v151;
    v47 = *(v151 + 2);
    if (v47 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  v9 = sub_1D62FF50C(v9);
LABEL_95:
  v151 = v9;
  v109 = *(v9 + 2);
  if (v109 < 2)
  {
    goto LABEL_105;
  }

  while (*a3)
  {
    v110 = *&v9[16 * v109];
    v111 = *&v9[16 * v109 + 24];
    sub_1D62FD2E4((*a3 + 72 * v110), (*a3 + 72 * *&v9[16 * v109 + 16]), (*a3 + 72 * v111), v10, a5);
    if (v6)
    {
      goto LABEL_105;
    }

    if (v111 < v110)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v109 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v112 = &v9[16 * v109];
    *v112 = v110;
    *(v112 + 1) = v111;
    v151 = v9;
    sub_1D62FF480(v109 - 1);
    v9 = v151;
    v109 = *(v151 + 2);
    if (v109 <= 1)
    {
      goto LABEL_105;
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1D630A6D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  v47 = a5;
  if (a3 != a2)
  {
    v31 = *a4;
    v6 = *a4 + 72 * a3 - 72;
    v7 = result - a3 + 1;
LABEL_5:
    v29 = v6;
    v30 = a3;
    v28 = v7;
    while (1)
    {
      v40 = *(v6 + 72);
      v8 = *(v6 + 88);
      v9 = *(v6 + 104);
      v10 = *(v6 + 120);
      v44 = *(v6 + 136);
      v42 = v9;
      v43 = v10;
      v41 = v8;
      v12 = *(v6 + 32);
      v11 = *(v6 + 48);
      v13 = *(v6 + 16);
      v46 = *(v6 + 64);
      v45[2] = v12;
      v45[3] = v11;
      v45[1] = v13;
      v45[0] = *v6;
      v37 = v42;
      v38 = v43;
      v14 = v40;
      v39 = v44;
      v35 = v40;
      v36 = v41;
      v15 = *&v45[0];
      v16 = *(v6 + 48);
      v33[2] = *(v6 + 32);
      v33[3] = v16;
      v34 = *(v6 + 64);
      v17 = *(v6 + 16);
      v33[0] = *v6;
      v33[1] = v17;
      sub_1D6306E88(&v40, v32, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
      sub_1D6306E88(v45, v32, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
      v18 = v47(v14, &v35 + 8, v15, v33 + 8);
      sub_1D6306DB0(v45, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      result = sub_1D6306DB0(&v40, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
      if (v5)
      {
        break;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v31)
      {
        __break(1u);
        return result;
      }

      v19 = *(v6 + 88);
      v20 = *(v6 + 120);
      v37 = *(v6 + 104);
      v38 = v20;
      v39 = *(v6 + 136);
      v35 = *(v6 + 72);
      v36 = v19;
      v21 = *v6;
      *(v6 + 88) = *(v6 + 16);
      v22 = *(v6 + 48);
      *(v6 + 104) = *(v6 + 32);
      *(v6 + 120) = v22;
      *(v6 + 136) = *(v6 + 64);
      *(v6 + 72) = v21;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      *(v6 + 64) = v39;
      *(v6 + 32) = v25;
      *(v6 + 48) = v26;
      *v6 = v23;
      *(v6 + 16) = v24;
      if (!v7)
      {
LABEL_4:
        a3 = v30 + 1;
        v6 = v29 + 72;
        v7 = v28 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v6 -= 72;
      ++v7;
    }
  }

  return result;
}

void sub_1D630A910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D62FFC34(v6);
  }

  v7 = v6[2];
  v8[0] = v6 + 4;
  v8[1] = v7;
  sub_1D63052E0(v8, a2, a3, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D6309BD4, sub_1D630A6D0);
  *a1 = v6;
}

void sub_1D630A9CC(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, &unk_1F5144970, type metadata accessor for FeedPuzzleStatistic, &unk_1F5144998, sub_1D62FCC50);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F9C9C(0, v7, 1, a1, a2, a3);
  }
}

double sub_1D630AC20(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFC20(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D630A9CC(v12, a2, a3);

  *a1 = v9;

  return result;
}

void sub_1D630AD54(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &unk_1EDF04740, type metadata accessor for FeedRecipe, &qword_1EDF046D0, type metadata accessor for FeedRecipe, &unk_1F5144A60, type metadata accessor for FeedRecipe, &unk_1F5144A88, sub_1D62FC5BC);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F991C(0, v7, 1, a1, a2, a3);
  }
}

double sub_1D630AFA8(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFC0C(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D630AD54(v12, a2, a3);

  *a1 = v9;

  return result;
}

void sub_1D630B0DC(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  v8 = sub_1D726449C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EDF04780, type metadata accessor for FeedCustomItem, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, &unk_1F5144B50, type metadata accessor for FeedCustomItem, &unk_1F5144B78, sub_1D62FBF28);

      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F959C(0, v7, 1, a1, a2, a3);
  }
}

double sub_1D630B330(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFBF8(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D630B0DC(v12, a2, a3);

  *a1 = v9;

  return result;
}

void sub_1D630B464(uint64_t a1)
{
  if (!qword_1EDF01D50)
  {
    sub_1D5C82990(255, &qword_1EDF04760, &type metadata for FeedTag);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF01D50);
    }
  }
}

void sub_1D630B4CC(uint64_t a1)
{
  if (!qword_1EC885968)
  {
    sub_1D5C82990(255, &unk_1EDF04750, &type metadata for FeedPuzzle);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885968);
    }
  }
}

void sub_1D630B53C(uint64_t a1)
{
  if (!qword_1EC885970)
  {
    sub_1D5C82990(255, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885970);
    }
  }
}

void sub_1D630B5A4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1D630B5FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C17CEC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D630B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D630B6C8(uint64_t a1)
{
  if (!qword_1EDF1ACA8)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1ACA8);
    }
  }
}

void sub_1D630B744(uint64_t a1)
{
  if (!qword_1EDF1AC70)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1AC70);
    }
  }
}

void sub_1D630B7BC(uint64_t a1)
{
  if (!qword_1EDF19510)
  {
    sub_1D630B6C8(255);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19510);
    }
  }
}

void sub_1D630B814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D630B874()
{
  result = qword_1EC885998;
  if (!qword_1EC885998)
  {
    sub_1D630B814(255, &qword_1EC885990, MEMORY[0x1E69E6D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885998);
  }

  return result;
}

uint64_t sub_1D630B9B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D725AA4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D630BA20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C17CEC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D630BA8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5C17CEC(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D630BAE4()
{
  result = qword_1EC88F5D0;
  if (!qword_1EC88F5D0)
  {
    sub_1D630BB34(255);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC88F5D0);
  }

  return result;
}

void sub_1D630BB34(uint64_t a1)
{
  if (!qword_1EDF34AB8)
  {
    sub_1D5B49474(255, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF34AB8);
    }
  }
}

void static FormatItemNodeSwipeActionStyleDimension.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1D633A310(*a1, *a2);
  if (v4)
  {

    sub_1D633A310(v2, v3);
  }
}

unint64_t sub_1D630BC2C(uint64_t a1)
{
  result = sub_1D630BC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D630BC54()
{
  result = qword_1EC8859B8;
  if (!qword_1EC8859B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859B8);
  }

  return result;
}

unint64_t sub_1D630BCA8(void *a1)
{
  a1[1] = sub_1D630BCE0();
  a1[2] = sub_1D630BD34();
  result = sub_1D630BD88();
  a1[3] = result;
  return result;
}

unint64_t sub_1D630BCE0()
{
  result = qword_1EC8859C0;
  if (!qword_1EC8859C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859C0);
  }

  return result;
}

unint64_t sub_1D630BD34()
{
  result = qword_1EC8859C8;
  if (!qword_1EC8859C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859C8);
  }

  return result;
}

unint64_t sub_1D630BD88()
{
  result = qword_1EC8859D0;
  if (!qword_1EC8859D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859D0);
  }

  return result;
}

uint64_t sub_1D630BE2C(void *a1)
{
  v3 = v1;
  sub_1D6311538(0, &qword_1EC885A88, sub_1D63114E4, &type metadata for A18_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63114E4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D63115A0(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D630C074(uint64_t a1)
{
  v2 = sub_1D63114E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D630C0B0(uint64_t a1)
{
  v2 = sub_1D63114E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D630C0EC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6311244(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D630C14C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6310E24();

  return sub_1D725A24C();
}

uint64_t sub_1D630C1C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6311538(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D630C284(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v144 = a2;
  v148 = a1;
  v130 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v145 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v141 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v131 = &v129 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v142 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v132 = &v129 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v160 = &v129 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v146 = &v129 - v23;
  v24 = sub_1D725895C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for GroupLayoutContext(0);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v29);
  v143 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v129 - v33;
  v137 = &v129 - v33;
  v147 = type metadata accessor for GroupLayoutBindingContext(0);
  v35 = *(v147 - 1);
  MEMORY[0x1EEE9AC00](v147, v36);
  v38 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *v5;
  v136 = *v5;
  v40 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v148, v38, type metadata accessor for GroupLayoutBindingContext);
  v138 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v144, v34, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v135 = sub_1D725893C();
  v134 = v41;
  (*(v25 + 8))(v28, v24);
  v158 = &type metadata for A18_V17;
  v42 = sub_1D5ECE28C();
  v159 = v42;
  LOBYTE(v156) = v39;
  v43 = v40;
  *(&v156 + 1) = v40;
  v157 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v44 = swift_allocObject();
  sub_1D5BEE8A0(v40, v5);
  v149[0] = sub_1D7264C5C();
  v149[1] = v45;
  v154 = 95;
  v155 = 0xE100000000000000;
  v152 = 45;
  v153 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v46 = sub_1D7263A6C();
  v48 = v47;

  *(v44 + 16) = v46;
  *(v44 + 24) = v48;
  v49 = (v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v50 = v134;
  *v49 = v135;
  v49[1] = v50;
  sub_1D5B68374(&v156, v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v51 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDAA3C(v38, v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v35 + 56))(v44 + v51, 0, 1, v147);
  v52 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDAA3C(v137, v44 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v53 = *(v139 + 56);
  v139 = v44;
  v53(v44 + v52, 0, 1, v140);
  __swift_destroy_boxed_opaque_existential_1(&v156);
  v158 = &type metadata for A18_V17;
  v159 = v42;
  LOBYTE(v156) = v136;
  *(&v156 + 1) = v43;
  v157 = v5;
  sub_1D5BE3ED8(v144, v143, v138);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v138 = v54;
  v55 = swift_allocObject();
  v56 = MEMORY[0x1E69E7CC0];
  v144 = v55;
  *(v55 + 16) = MEMORY[0x1E69E7CC0];
  v57 = v55 + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v43, v5);
  v58 = sub_1D5C0F8FC(0, 1, 1, v56);
  v60 = *(v58 + 16);
  v59 = *(v58 + 24);
  v61 = v60 + 1;
  if (v60 >= v59 >> 1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v62 = 0xEC000000656E696CLL;
    *(v58 + 16) = v61;
    v63 = v58 + 16 * v60;
    *(v63 + 32) = sub_1D63106DC;
    *(v63 + 40) = 0;
    *v57 = v58;
    swift_endAccess();
    v64 = v148;
    v140 = v147[14];
    v65 = *&v148[v140];
    if (*(v65 + 16) && (v66 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v67 & 1) != 0) && (v65 = *(*(v65 + 56) + 8 * v66), v68 = , v61 = sub_1D5C14D80(v68), , v61))
    {
      v69 = *(v61 + 16);
      if (v69)
      {
        v70 = 0;
        v58 = MEMORY[0x1E69E7CC0];
        v57 = v145;
        v60 = v146;
        while (1)
        {
          v59 = *(v61 + 16);
          if (v70 >= v59)
          {
            break;
          }

          v38 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v71 = *(v57 + 72);
          sub_1D5BE3ED8(v61 + v38 + v71 * v70, v60, type metadata accessor for FeedHeadline);
          if ((*(v60 + 32) & 4) != 0)
          {
            sub_1D5BDAA3C(v60, v160, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v149[0] = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v58 + 16) + 1, 1);
              v57 = v145;
              v58 = v149[0];
            }

            v44 = *(v58 + 16);
            v73 = *(v58 + 24);
            if (v44 >= v73 >> 1)
            {
              sub_1D5C0F91C((v73 > 1), v44 + 1, 1);
              v57 = v145;
              v58 = v149[0];
            }

            *(v58 + 16) = v44 + 1;
            sub_1D5BDAA3C(v160, v58 + v38 + v44 * v71, type metadata accessor for FeedHeadline);
            v60 = v146;
          }

          else
          {
            sub_1D5BE79EC(v60, type metadata accessor for FeedHeadline);
          }

          if (v69 == ++v70)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_93;
      }

      v58 = MEMORY[0x1E69E7CC0];
LABEL_23:
      v77 = v148;
      if ((*v148 & 1) == 0)
      {

        sub_1D62F071C(v58);
        v79 = v78;

        v58 = v79;
      }

      v80 = *&v77[v147[18]];
      v81 = *&v77[v147[19]];
      if (__OFSUB__(v80, v81))
      {
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v82 = v77;
      v83 = sub_1D5C0FAD4(v58, v80 - v81);
      v44 = sub_1D5C11E10(&unk_1F51135E0, v83, v61);

      if (v44)
      {
      }

      else
      {
        v44 = sub_1D5C11E10(&unk_1F51135E0, v58, v61);

        if (!v44)
        {
          v149[0] = &unk_1F51135E0;
          v4 = v133;
          sub_1D5E239F4(v149);
          if (v4)
          {
            goto LABEL_106;
          }

          if (*(v149[0] + 2))
          {
            v114 = *(v149[0] + 4);

            sub_1D5ED8048();
            swift_allocError();
            strcpy(v115, "FeedHeadline");
            v115[13] = 0;
            *(v115 + 7) = -5120;
            *(v115 + 2) = 0;
            *(v115 + 3) = 0;
            *(v115 + 4) = 4;
            *(v115 + 5) = v114;
            *(v115 + 6) = 0;
            *(v115 + 7) = 0;
            v115[64] = 0;
            swift_willThrow();
            swift_setDeallocating();

            goto LABEL_20;
          }

          goto LABEL_103;
        }
      }

      strcpy(v149, "FeedHeadline");
      BYTE5(v149[1]) = 0;
      HIWORD(v149[1]) = -5120;
      v150 = 0;
      v151 = 0;

      v61 = sub_1D5C107C4(v84);

      sub_1D5BDACA8(v149, v61);
      v60 = v144;
      swift_setDeallocating();

      swift_deallocClassInstance();

      v62 = 0xEC000000656E696CLL;

      v64 = v82;
    }

    else
    {
      if (qword_1F5113600)
      {
        v149[0] = &unk_1F51135E0;
        v4 = v133;
        sub_1D5E239F4(v149);
        if (v4)
        {
          goto LABEL_106;
        }

        v74 = *(v149[0] + 2);
        if (!v74)
        {
          goto LABEL_96;
        }

        v75 = *(v149[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v76, "FeedHeadline");
        v76[13] = 0;
        *(v76 + 7) = -5120;
        *(v76 + 2) = 0;
        *(v76 + 3) = 0;
        *(v76 + 4) = 4;
        *(v76 + 5) = v75;
        *(v76 + 6) = 0;
        *(v76 + 7) = 0;
        v76[64] = 0;
        swift_willThrow();

        swift_setDeallocating();
LABEL_20:
        swift_deallocClassInstance();
        goto LABEL_48;
      }

      v61 = v144;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v44 = MEMORY[0x1E69E7CC0];
    }

    v58 = v140;
    v65 = *&v64[v140];
    if (!*(v65 + 16))
    {
      break;
    }

    v85 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v86 & 1) == 0)
    {
      break;
    }

    v65 = *(*(v65 + 56) + 8 * v85);

    v61 = sub_1D5C14D80(v87);

    if (!v61)
    {
      break;
    }

    v160 = v44;
    v88 = *(v61 + 16);
    if (!v88)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_51:
      v97 = v148;
      v98 = *&v148[v147[18]];
      v99 = *&v148[v147[19]];
      if (!__OFSUB__(v98, v99))
      {
        v100 = sub_1D5C0FAD4(v58, v98 - v99);
        v96 = sub_1D5C11E10(&unk_1F5113608, v100, v61);

        if (v96)
        {

LABEL_55:
          strcpy(v149, "FeedHeadline");
          BYTE5(v149[1]) = 0;
          HIWORD(v149[1]) = -5120;
          v150 = 0;
          v151 = 0;

          v102 = sub_1D5C107C4(v101);

          sub_1D5BDACA8(v149, v102);

          v64 = v97;
          v58 = v140;
          v44 = v160;
          goto LABEL_56;
        }

        v96 = sub_1D5C11E10(&unk_1F5113608, v58, v61);

        if (v96)
        {
          goto LABEL_55;
        }

        v149[0] = &unk_1F5113608;
        v4 = v133;
        sub_1D5E239F4(v149);
        if (v4)
        {
          goto LABEL_106;
        }

        v93 = v149[0];
        if (*(v149[0] + 2))
        {
          goto LABEL_47;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v44 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v57 = v145;
    v60 = v132;
    while (1)
    {
      v59 = *(v61 + 16);
      if (v44 >= v59)
      {
        break;
      }

      v38 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v89 = *(v57 + 72);
      sub_1D5BE3ED8(v61 + v38 + v89 * v44, v60, type metadata accessor for FeedHeadline);
      if ((*(v60 + 32) & 4) != 0)
      {
        sub_1D5BDAA3C(v60, v142, type metadata accessor for FeedHeadline);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v149[0] = v58;
        if ((v90 & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v58 + 16) + 1, 1);
          v57 = v145;
          v58 = v149[0];
        }

        v92 = *(v58 + 16);
        v91 = *(v58 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_1D5C0F91C((v91 > 1), v92 + 1, 1);
          v57 = v145;
          v58 = v149[0];
        }

        *(v58 + 16) = v92 + 1;
        sub_1D5BDAA3C(v142, v58 + v38 + v92 * v89, type metadata accessor for FeedHeadline);
        v60 = v132;
      }

      else
      {
        sub_1D5BE79EC(v60, type metadata accessor for FeedHeadline);
      }

      if (v88 == ++v44)
      {
        goto LABEL_51;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    v58 = sub_1D5C0F8FC((v59 > 1), v61, 1, v58);
  }

  if (!qword_1F5113628)
  {

    v96 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v149[0] = v44;
    sub_1D5C122E4(v96);
    v38 = v149[0];
    v44 = swift_allocObject();
    v103 = MEMORY[0x1E69E7CC0];
    *(v44 + 16) = MEMORY[0x1E69E7CC0];
    v65 = v44 + 16;
    swift_beginAccess();
    v62 = sub_1D5C0F8FC(0, 1, 1, v103);
    v61 = v62[2];
    v74 = v62[3];
    v60 = v61 + 1;
    if (v61 >= v74 >> 1)
    {
      goto LABEL_98;
    }

    while (1)
    {
      v62[2] = v60;
      v104 = &v62[2 * v61];
      v104[4] = sub_1D63106DC;
      v104[5] = 0;
      *v65 = v62;
      swift_endAccess();
      if (!*(*&v64[v58] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v105 & 1) == 0) || (v106 = , v60 = sub_1D5C14D80(v106), , !v60))
      {
        if (!qword_1F5113650)
        {

          swift_setDeallocating();
          swift_deallocClassInstance();
          v113 = MEMORY[0x1E69E7CC0];
LABEL_85:
          v149[0] = v38;
          sub_1D5C122E4(v113);
          v123 = v149[0];
          v124 = type metadata accessor for A18_V17.Bound(0);
          v125 = v130;
          v130[3] = v124;
          v125[4] = sub_1D63115A0(&qword_1EC8859E8, type metadata accessor for A18_V17.Bound, &unk_1D72B8120);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v125);
          *boxed_opaque_existential_1 = v139;
          sub_1D5B63F14(&v156, (boxed_opaque_existential_1 + 1));
          sub_1D5BDAA3C(v143, boxed_opaque_existential_1 + *(v124 + 24), type metadata accessor for GroupLayoutContext);
          *(boxed_opaque_existential_1 + *(v124 + 28)) = v123;
          return;
        }

        v149[0] = &unk_1F5113630;
        v4 = v133;
        sub_1D5E239F4(v149);
        if (v4)
        {
          goto LABEL_106;
        }

        if (*(v149[0] + 2))
        {
          v111 = *(v149[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v112, "FeedHeadline");
          v112[13] = 0;
          *(v112 + 7) = -5120;
          *(v112 + 2) = 0;
          *(v112 + 3) = 0;
          *(v112 + 4) = 0;
          *(v112 + 5) = v111;
          *(v112 + 6) = 0;
          *(v112 + 7) = 0;
          v112[64] = 0;
          swift_willThrow();

          swift_setDeallocating();
          goto LABEL_20;
        }

        goto LABEL_100;
      }

      v146 = v38;
      v160 = v44;
      v44 = *(v60 + 16);
      if (!v44)
      {
        break;
      }

      v38 = 0;
      v64 = MEMORY[0x1E69E7CC0];
      v65 = v145;
      while (1)
      {
        v74 = *(v60 + 16);
        if (v38 >= v74)
        {
          break;
        }

        v107 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v58 = *(v65 + 72);
        v108 = v131;
        sub_1D5BE3ED8(v60 + v107 + v58 * v38, v131, type metadata accessor for FeedHeadline);
        sub_1D5BDAA3C(v108, v141, type metadata accessor for FeedHeadline);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v149[0] = v64;
        if ((v109 & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v64 + 2) + 1, 1);
          v65 = v145;
          v64 = v149[0];
        }

        v61 = *(v64 + 2);
        v110 = *(v64 + 3);
        v62 = (v61 + 1);
        if (v61 >= v110 >> 1)
        {
          sub_1D5C0F91C((v110 > 1), v61 + 1, 1);
          v65 = v145;
          v64 = v149[0];
        }

        ++v38;
        *(v64 + 2) = v62;
        sub_1D5BDAA3C(v141, &v64[v107 + v61 * v58], type metadata accessor for FeedHeadline);
        if (v44 == v38)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      v62 = sub_1D5C0F8FC((v74 > 1), v60, 1, v62);
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_78:
    if ((*v148 & 1) == 0)
    {

      sub_1D62F071C(v64);
      v117 = v116;

      v64 = v117;
    }

    v118 = *&v148[v147[18]];
    v119 = *&v148[v147[19]];
    if (__OFSUB__(v118, v119))
    {
      goto LABEL_102;
    }

    v120 = sub_1D5C0FAD4(v64, v118 - v119);
    v113 = sub_1D5C11E10(&unk_1F5113630, v120, v60);

    if (v113)
    {

      goto LABEL_84;
    }

    v113 = sub_1D5C11E10(&unk_1F5113630, v64, v60);

    if (v113)
    {
LABEL_84:
      strcpy(v149, "FeedHeadline");
      BYTE5(v149[1]) = 0;
      HIWORD(v149[1]) = -5120;
      v150 = 0;
      v151 = 0;

      v122 = sub_1D5C107C4(v121);

      sub_1D5BDACA8(v149, v122);
      swift_setDeallocating();

      swift_deallocClassInstance();

      v38 = v146;
      goto LABEL_85;
    }

    v149[0] = &unk_1F5113630;
    v4 = v133;
    sub_1D5E239F4(v149);
    if (v4)
    {
      goto LABEL_106;
    }

    if (!*(v149[0] + 2))
    {
      goto LABEL_105;
    }

    v127 = *(v149[0] + 4);

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v128, "FeedHeadline");
    v128[13] = 0;
    *(v128 + 7) = -5120;
    *(v128 + 2) = 0;
    *(v128 + 3) = 0;
    *(v128 + 4) = 0;
    *(v128 + 5) = v127;
    *(v128 + 6) = 0;
    *(v128 + 7) = 0;
    v128[64] = 0;
    swift_willThrow();
    swift_setDeallocating();

    goto LABEL_20;
  }

  v149[0] = &unk_1F5113608;
  v4 = v133;
  sub_1D5E239F4(v149);
  if (!v4)
  {

    v93 = v149[0];
    v74 = *(v149[0] + 2);
    if (!v74)
    {
      goto LABEL_97;
    }

LABEL_47:
    v94 = *(v93 + 4);

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v95, "FeedHeadline");
    v95[13] = 0;
    *(v95 + 7) = -5120;
    *(v95 + 2) = 0;
    *(v95 + 3) = 0;
    *(v95 + 4) = 4;
    *(v95 + 5) = v94;
    *(v95 + 6) = 0;
    *(v95 + 7) = 0;
    v95[64] = 0;
    swift_willThrow();
LABEL_48:
    sub_1D5BE79EC(v143, type metadata accessor for GroupLayoutContext);
    __swift_destroy_boxed_opaque_existential_1(&v156);
    return;
  }

LABEL_106:

  __break(1u);
}