void sub_1D7093A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v98 = a7;
  v99 = a8;
  v16 = type metadata accessor for FormatModel(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v102 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedItem(0);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v101 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C2C8(0, v21);
  v94 = v23;
  *&v103 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = a1;
  sub_1D5BE64C0(a1, v30, type metadata accessor for FormatContentSlotItemObject.Resolved);
  if (swift_getEnumCaseMultiPayload() < 9)
  {
    sub_1D5BE6754(v30, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (!a6)
    {
      goto LABEL_26;
    }

    if (FormatContentSlotItemObject.Resolved.identifier.getter() == a5 && v31 == a6)
    {
    }

    else
    {
      v58 = sub_1D72646CC();

      if ((v58 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v59 = v99;

    v60 = v98;
    if (sub_1D5BE240C(v98, v59, a9))
    {
      sub_1D5D60AB4(0, &unk_1EDF198E0, &type metadata for SlotReference, MEMORY[0x1E69E6F90]);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1D7273AE0;
      *(v61 + 32) = v60;
      *(v61 + 40) = v59;
      v62 = MEMORY[0x1E69E7CC0];
      *(v61 + 48) = MEMORY[0x1E69E7CD0];
      *(v61 + 56) = v62;
      *(v61 + 64) = 0;
      *(v61 + 72) = 0;
      return;
    }

LABEL_26:
    v63 = MEMORY[0x1E69E6F90];
    sub_1D5D60AB4(0, &unk_1EDF198E0, &type metadata for SlotReference, MEMORY[0x1E69E6F90]);
    v95 = swift_allocObject();
    *(v95 + 1) = xmmword_1D7273AE0;
    v64 = MEMORY[0x1E69E6158];
    sub_1D5D60AB4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], v63);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1D7270C10;
    *(v65 + 32) = a2;
    *(v65 + 40) = a3;

    *(v65 + 48) = FormatContentSlotItemObject.Resolved.identifier.getter();
    *(v65 + 56) = v66;
    v104 = v65;
    sub_1D5D60AB4(0, &qword_1EDF43BA0, v64, MEMORY[0x1E69E62F8]);
    sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v64, MEMORY[0x1E69E6310]);
    v67 = sub_1D7261F3C();
    v69 = v68;

    v70 = a10[5];
    v71 = FormatContentSlotItemObject.Resolved.identifier.getter();
    if (*(v70 + 16))
    {
      v73 = sub_1D5B69D90(v71, v72);
      v75 = v74;

      if (v75)
      {
        v76 = *(*(v70 + 56) + 8 * v73);

LABEL_31:
        v77 = a10[6];
        v78 = FormatContentSlotItemObject.Resolved.identifier.getter();
        if (*(v77 + 16))
        {
          v80 = sub_1D5B69D90(v78, v79);
          v82 = v81;

          if (v82)
          {
            v83 = *(*(v77 + 56) + 8 * v80);
          }

          else
          {
            v83 = MEMORY[0x1E69E7CC0];
          }
        }

        else
        {

          v83 = MEMORY[0x1E69E7CC0];
        }

        v84 = a10[7];
        v85 = FormatContentSlotItemObject.Resolved.identifier.getter();
        if (*(v84 + 16))
        {
          v87 = sub_1D5B69D90(v85, v86);
          v89 = v88;

          v90 = 0uLL;
          if (v89)
          {
            v103 = *(*(v84 + 56) + 16 * v87);

            v90 = v103;
          }
        }

        else
        {

          v90 = 0uLL;
        }

        v91 = v95;
        *(v95 + 4) = v67;
        *(v91 + 5) = v69;
        *(v91 + 6) = v76;
        *(v91 + 7) = v83;
        *(v91 + 4) = v90;
        return;
      }
    }

    else
    {
    }

    v76 = MEMORY[0x1E69E7CD0];
    goto LABEL_31;
  }

  v32 = *v30;
  v33 = v30[1];
  v34 = MEMORY[0x1E69E6158];
  sub_1D5D60AB4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7270C10;
  *(v35 + 32) = a2;
  *(v35 + 40) = a3;
  *(v35 + 48) = v32;
  *(v35 + 56) = v33;
  v104 = v35;
  sub_1D5D60AB4(0, &qword_1EDF43BA0, v34, MEMORY[0x1E69E62F8]);
  sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v34, MEMORY[0x1E69E6310]);

  v99 = sub_1D7261F3C();
  v100 = v36;

  v37 = *(a4 + 16);
  if (v37)
  {
    v38 = 0;
    v97 = v103 + 16;
    v98 = a4;
    v95 = MEMORY[0x1E69E7CC0];
    v96 = (v103 + 8);
    do
    {
      v39 = v38;
      v40 = v94;
      while (1)
      {
        if (v39 >= v37)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        (*(v103 + 16))(v26, v98 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v39, v40);
        v38 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_42;
        }

        v41 = v37;
        v42 = v102;
        sub_1D725CE7C();
        sub_1D683A158(0);
        v44 = v43;
        v45 = *(v43 + 48);
        v46 = v101;
        sub_1D5BE6684(v42, v101, type metadata accessor for FeedItem);
        sub_1D683A1C4(v42 + v45);
        FeedItem.identifier.getter();
        sub_1D5BE6754(v46, type metadata accessor for FeedItem);
        LOBYTE(v46) = sub_1D726230C();

        if (v46)
        {
          break;
        }

        (*v96)(v26, v40);
        ++v39;
        v37 = v41;
        if (v38 == v41)
        {
          goto LABEL_21;
        }
      }

      v47 = v102;
      sub_1D725CE7C();
      v48 = *(v44 + 48);
      v49 = v101;
      sub_1D5BE6684(v47, v101, type metadata accessor for FeedItem);
      sub_1D683A1C4(v47 + v48);
      v50 = FeedItem.identifier.getter();
      v93 = v51;
      sub_1D5BE6754(v49, type metadata accessor for FeedItem);
      (*v96)(v26, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1D5D6149C(0, *(v95 + 2) + 1, 1, v95);
      }

      v52 = MEMORY[0x1E69E7CC0];
      v54 = *(v95 + 2);
      v53 = *(v95 + 3);
      if (v54 >= v53 >> 1)
      {
        v95 = sub_1D5D6149C((v53 > 1), v54 + 1, 1, v95);
      }

      v55 = v95;
      *(v95 + 2) = v54 + 1;
      v56 = &v55[48 * v54];
      v57 = v93;
      *(v56 + 4) = v50;
      *(v56 + 5) = v57;
      *(v56 + 6) = MEMORY[0x1E69E7CD0];
      *(v56 + 7) = v52;
      *(v56 + 8) = 0;
      *(v56 + 9) = 0;
      v37 = v41;
    }

    while (v38 != v41);
  }

  else
  {
    v95 = MEMORY[0x1E69E7CC0];
  }

LABEL_21:
}

__n128 sub_1D70942EC@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedItem(0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C2C8(0, v10);
  sub_1D725CE7C();
  sub_1D683A158(0);
  v14 = *(v13 + 48);
  sub_1D5BE6684(v7, v12, type metadata accessor for FeedItem);
  sub_1D683A1C4(&v7[v14]);
  FeedItem.feedIssue.getter(&v28);
  sub_1D5BE6754(v12, type metadata accessor for FeedItem);
  v36[6] = v34;
  v37[0] = v35[0];
  *(v37 + 9) = *(v35 + 9);
  v36[2] = v30;
  v36[3] = v31;
  v36[4] = v32;
  v36[5] = v33;
  v36[0] = v28;
  v36[1] = v29;
  v44 = v34;
  v45[0] = v35[0];
  *(v45 + 9) = *(v35 + 9);
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v38 = v28;
  v39 = v29;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v38) == 1)
  {
    goto LABEL_2;
  }

  v15 = [v38 identifier];
  v16 = sub_1D726207C();
  v18 = v17;

  v19 = [a1 identifier];
  v20 = sub_1D726207C();
  v22 = v21;

  if (v16 == v20 && v18 == v22)
  {

LABEL_7:
    v34 = v44;
    v35[0] = v45[0];
    *(v35 + 9) = *(v45 + 9);
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v28 = v38;
    v29 = v39;
    nullsub_1();
    goto LABEL_8;
  }

  v23 = sub_1D72646CC();

  if (v23)
  {
    goto LABEL_7;
  }

  sub_1D70A34D0(v36, &qword_1EDF34E30, &type metadata for FeedIssue);
LABEL_2:
  sub_1D5D62850(&v28);
LABEL_8:
  v24 = v35[0];
  *(a2 + 96) = v34;
  *(a2 + 112) = v24;
  *(a2 + 121) = *(v35 + 9);
  v25 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v25;
  v26 = v33;
  *(a2 + 64) = v32;
  *(a2 + 80) = v26;
  result = v29;
  *a2 = v28;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D70945C4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D70A2554(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for FormatModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E2C2C8(0, v19);
  sub_1D725CE7C();
  sub_1D683A158(0);
  v23 = *(v22 + 48);
  sub_1D5BE6684(v11, v15, type metadata accessor for FeedItem);
  sub_1D683A1C4(&v11[v23]);
  FeedItem.feedHeadline.getter(v7);
  sub_1D5BE6754(v15, type metadata accessor for FeedItem);
  if ((*(v17 + 48))(v7, 1, v16) != 1)
  {
    sub_1D5BE6684(v7, v21, type metadata accessor for FeedHeadline);
    v25 = [v21[5] identifier];
    v26 = sub_1D726207C();
    v28 = v27;

    v29 = [a1 identifier];
    v30 = sub_1D726207C();
    v32 = v31;

    if (v26 == v30 && v28 == v32)
    {
    }

    else
    {
      v34 = sub_1D72646CC();

      if ((v34 & 1) == 0)
      {
        sub_1D5BE6754(v21, type metadata accessor for FeedHeadline);
        goto LABEL_3;
      }
    }

    sub_1D5BE6684(v21, a2, type metadata accessor for FeedHeadline);
    v24 = 0;
    return (*(v17 + 56))(a2, v24, 1, v16);
  }

  sub_1D5BEFFE8(v7, qword_1EDF42030, type metadata accessor for FeedHeadline);
LABEL_3:
  v24 = 1;
  return (*(v17 + 56))(a2, v24, 1, v16);
}

uint64_t sub_1D7094960@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D70A2554(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for FormatModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedRecipe(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E2C2C8(0, v19);
  sub_1D725CE7C();
  sub_1D683A158(0);
  v23 = *(v22 + 48);
  sub_1D5BE6684(v11, v15, type metadata accessor for FeedItem);
  sub_1D683A1C4(&v11[v23]);
  FeedItem.feedRecipe.getter(v7);
  sub_1D5BE6754(v15, type metadata accessor for FeedItem);
  if ((*(v17 + 48))(v7, 1, v16) != 1)
  {
    sub_1D5BE6684(v7, v21, type metadata accessor for FeedRecipe);
    v25 = [v21[7] identifier];
    v26 = sub_1D726207C();
    v28 = v27;

    v29 = [a1 identifier];
    v30 = sub_1D726207C();
    v32 = v31;

    if (v26 == v30 && v28 == v32)
    {
    }

    else
    {
      v34 = sub_1D72646CC();

      if ((v34 & 1) == 0)
      {
        sub_1D5BE6754(v21, type metadata accessor for FeedRecipe);
        goto LABEL_3;
      }
    }

    sub_1D5BE6684(v21, a2, type metadata accessor for FeedRecipe);
    v24 = 0;
    return (*(v17 + 56))(a2, v24, 1, v16);
  }

  sub_1D5BEFFE8(v7, qword_1EDF34D20, type metadata accessor for FeedRecipe);
LABEL_3:
  v24 = 1;
  return (*(v17 + 56))(a2, v24, 1, v16);
}

void sub_1D7094CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatModel(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedItem(0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C2C8(0, v13);
  v34 = v16;
  v36 = a1;
  sub_1D725CE7C();
  sub_1D683A158(0);
  v33 = v17;
  v18 = *(v17 + 48);
  sub_1D5BE6684(v10, v15, type metadata accessor for FeedItem);
  v35 = v10;
  sub_1D683A1C4(&v10[v18]);
  v19 = FeedItem.identifier.getter();
  v21 = v20;
  sub_1D5BE6754(v15, type metadata accessor for FeedItem);
  LOBYTE(v19) = sub_1D5BE240C(v19, v21, a2);

  if ((v19 & 1) == 0)
  {
    v32[1] = v3;
    v32[2] = a3;
    v22 = a3 + 56;
    v23 = 1 << *(a3 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    while (v25)
    {
LABEL_10:
      v25 &= v25 - 1;

      v29 = v35;
      sub_1D725CE7C();
      v30 = *(v33 + 48);
      sub_1D5BE6684(v29, v15, type metadata accessor for FeedItem);
      sub_1D683A1C4(v29 + v30);
      FeedItem.identifier.getter();
      sub_1D5BE6754(v15, type metadata accessor for FeedItem);
      v31 = sub_1D726230C();

      if (v31)
      {
LABEL_11:

        return;
      }
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
        goto LABEL_11;
      }

      v25 = *(v22 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1D7094FD8(uint64_t a1)
{
  v3 = type metadata accessor for FeedItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 64);
  v9 = *(v8 + 16);
  if (v9)
  {
    v18[1] = a1;
    v10 = 0;
    v11 = 0;
    v12 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = 1;
    while (1)
    {
      if (v11 >= *(v8 + 16))
      {
        goto LABEL_22;
      }

      v14 = v10;
      v15 = *(v4 + 72);
      sub_1D5BE64C0(v12 + v15 * v11++, v7, type metadata accessor for FeedItem);
      FeedItem.layoutDirection.getter(&v19);
      sub_1D5BE6754(v7, type metadata accessor for FeedItem);
      v10 = v19;
      v16 = v20;
      if (((v20 | v13) & 1) == 0)
      {
        break;
      }

      if (v20)
      {
LABEL_16:
        v10 = v14;
      }

      v13 &= v16;
      if (v11 == v9)
      {
        if ((v13 & 1) == 0)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    if (v14 == v19 && v11 != v9)
    {
      v17 = v12 + v15 * v11;
      while (v11 < *(v8 + 16))
      {
        sub_1D5BE64C0(v17, v7, type metadata accessor for FeedItem);
        ++v11;
        FeedItem.layoutDirection.getter(&v19);
        sub_1D5BE6754(v7, type metadata accessor for FeedItem);
        if (v20)
        {
          v13 = 0;
          v16 = 1;
          goto LABEL_16;
        }

        if (v14 == v19)
        {
          v17 += v15;
          if (v9 != v11)
          {
            continue;
          }
        }

        return;
      }

LABEL_22:
      __break(1u);
    }
  }

  else
  {
LABEL_19:
    sub_1D7259EAC();
  }
}

uint64_t sub_1D7095200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v48 = a3;
  v46 = a2;
  v5 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v57 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v55 = &v46 - v14;
  sub_1D5E2C2C8(0, v13);
  v54 = v15;
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v50 = *(v21 + 56);
    v51 = v22;
    v49 = (v21 - 8);
    v24 = MEMORY[0x1E69E7CC0];
    v52 = v21;
    v26 = v54;
    v25 = v55;
    do
    {
      v27 = v53;
      v51(v53, v23, v26, v18);
      sub_1D725CE7C();
      v28 = v56;
      sub_1D5BE64C0(v25, v56, type metadata accessor for FormatModel);
      sub_1D683A158(0);
      v30 = *(v29 + 48);
      v31 = v57;
      sub_1D5BE6684(v28, v57, type metadata accessor for FeedItem);
      v32 = FeedItem.externalContentCacheIdentifier.getter();
      v58 = v33;
      sub_1D5BE6754(v31, type metadata accessor for FeedItem);
      sub_1D5BE6754(v25, type metadata accessor for FormatModel);
      (*v49)(v27, v26);
      sub_1D683A1C4(v28 + v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1D5B858EC(0, *(v24 + 2) + 1, 1, v24);
      }

      v35 = *(v24 + 2);
      v34 = *(v24 + 3);
      if (v35 >= v34 >> 1)
      {
        v24 = sub_1D5B858EC((v34 > 1), v35 + 1, 1, v24);
      }

      *(v24 + 2) = v35 + 1;
      v36 = &v24[16 * v35];
      v37 = v58;
      *(v36 + 4) = v32;
      *(v36 + 5) = v37;
      v23 += v50;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v60 = v24;
  v38 = MEMORY[0x1E69E6158];
  sub_1D5D60AB4(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v38, MEMORY[0x1E69E6310]);
  v39 = sub_1D7261F3C();
  v41 = v40;

  v42 = v48;
  if (v48)
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1D7263D4C();

    v60 = 0x6E6F697369766572;
    v61 = 0xE90000000000002DLL;
    v59 = v47;
    v43 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v43);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v39, v41);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v46, v42);
  }

  else
  {
    v60 = 0x6E6F697369766572;
    v61 = 0xE90000000000002DLL;
    v59 = v47;
    v44 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v44);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v39, v41);
  }

  return v60;
}

uint64_t sub_1D70956CC()
{

  sub_1D5BE6754(v0 + OBJC_IVAR____TtC8NewsFeed28FormatBlueprintLayoutBuilder_pluginData, type metadata accessor for FormatPluginData);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatBlueprintLayoutBuilder(uint64_t a1)
{
  result = qword_1EDF0AA50;
  if (!qword_1EDF0AA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D70957A0(uint64_t a1)
{
  result = type metadata accessor for FormatPluginData(319);
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

uint64_t sub_1D70958D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[174] = v4;
  v5[173] = a4;
  v5[172] = a3;
  v5[171] = a2;
  v5[170] = a1;
  v6 = sub_1D725E78C();
  v5[175] = v6;
  v5[176] = *(v6 - 8);
  v5[177] = swift_task_alloc();
  v7 = sub_1D725E23C();
  v5[178] = v7;
  v5[179] = *(v7 - 8);
  v5[180] = swift_task_alloc();
  v5[181] = type metadata accessor for FormatContent.Resolved(0);
  v5[182] = swift_task_alloc();
  v8 = sub_1D725F28C();
  v5[183] = v8;
  v5[184] = *(v8 - 8);
  v5[185] = swift_task_alloc();
  sub_1D5E2C35C(0, v9);
  v5[186] = v10;
  v5[187] = *(v10 - 8);
  v5[188] = swift_task_alloc();
  v5[189] = type metadata accessor for FormatPluginData(0);
  v5[190] = swift_task_alloc();
  v5[191] = swift_task_alloc();
  v5[192] = swift_task_alloc();
  v5[193] = swift_task_alloc();
  v11 = sub_1D725A20C();
  v5[194] = v11;
  v5[195] = *(v11 - 8);
  v5[196] = swift_task_alloc();
  v5[197] = swift_task_alloc();
  v5[198] = swift_task_alloc();
  type metadata accessor for FormatSectionDescriptor(0);
  v5[199] = swift_task_alloc();
  v5[200] = swift_task_alloc();
  v5[201] = swift_task_alloc();
  v5[202] = swift_task_alloc();
  v5[203] = swift_task_alloc();
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v5[206] = swift_task_alloc();
  sub_1D69A58BC(0);
  v5[207] = v12;
  v5[208] = *(v12 - 8);
  v5[209] = swift_task_alloc();
  v5[210] = swift_task_alloc();
  v5[211] = swift_task_alloc();
  v5[212] = swift_task_alloc();
  v5[213] = swift_task_alloc();
  v13 = MEMORY[0x1E69E6720];
  sub_1D70A2554(0, &qword_1EDF3BF98, MEMORY[0x1E69D72C0], MEMORY[0x1E69E6720]);
  v5[214] = swift_task_alloc();
  v14 = sub_1D725A1FC();
  v5[215] = v14;
  v5[216] = *(v14 - 8);
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();
  v5[219] = swift_task_alloc();
  v15 = sub_1D725A2EC();
  v5[220] = v15;
  v5[221] = *(v15 - 8);
  v5[222] = swift_task_alloc();
  v5[223] = swift_task_alloc();
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  v5[226] = swift_task_alloc();
  v5[227] = swift_task_alloc();
  sub_1D70A2640(0, &qword_1EDF17210, MEMORY[0x1E69D7980]);
  v5[228] = v16;
  v5[229] = *(v16 - 8);
  v5[230] = swift_task_alloc();
  v5[231] = swift_task_alloc();
  sub_1D70A2554(0, &qword_1EDF04788, sub_1D70A25B8, v13);
  v5[232] = swift_task_alloc();
  v5[233] = swift_task_alloc();
  v5[234] = swift_task_alloc();
  sub_1D5ECF374(0, v17);
  v5[235] = v18;
  v5[236] = *(v18 - 8);
  v5[237] = swift_task_alloc();
  sub_1D70A2734(0, v19);
  v5[238] = swift_task_alloc();
  sub_1D70A27C8(0, v20);
  v5[239] = v21;
  v5[240] = swift_task_alloc();
  v5[241] = swift_task_alloc();
  v22 = type metadata accessor for FeedContext(0);
  v5[242] = v22;
  v5[243] = *(v22 - 8);
  v5[244] = swift_task_alloc();
  v5[245] = swift_task_alloc();
  v23 = sub_1D7259CFC();
  v5[246] = v23;
  v5[247] = *(v23 - 8);
  v5[248] = swift_task_alloc();
  v5[249] = swift_task_alloc();
  v5[250] = swift_task_alloc();
  v5[251] = swift_task_alloc();
  v5[252] = type metadata accessor for FeedLayoutSolverOptions(0);
  v5[253] = swift_task_alloc();
  v5[254] = swift_task_alloc();
  v5[255] = swift_task_alloc();
  v5[256] = swift_task_alloc();
  sub_1D725A19C();
  v5[257] = swift_task_alloc();
  v24 = sub_1D7259F5C();
  v5[258] = v24;
  v5[259] = *(v24 - 8);
  v5[260] = swift_task_alloc();
  v5[261] = swift_task_alloc();
  v5[262] = swift_task_alloc();
  v5[263] = swift_task_alloc();
  v25 = sub_1D7259D1C();
  v5[264] = v25;
  v5[265] = *(v25 - 8);
  v5[266] = swift_task_alloc();
  v5[267] = swift_task_alloc();
  sub_1D70A2554(0, qword_1EDF34CA0, type metadata accessor for FeedContext, v13);
  v5[268] = swift_task_alloc();
  v5[269] = swift_task_alloc();
  v5[270] = swift_task_alloc();
  v5[271] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7096290, 0, 0);
}

uint64_t sub_1D7096290()
{
  v417 = v0;
  v1 = v0[174];
  v278 = *(v1 + 16);
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
    v1 = v0[174];
  }

  v2 = v0[267];
  v3 = v0[265];
  v279 = qword_1EDFFCEB0;
  v407 = v1 + OBJC_IVAR____TtC8NewsFeed28FormatBlueprintLayoutBuilder_pluginData;
  v328 = *(v1 + OBJC_IVAR____TtC8NewsFeed28FormatBlueprintLayoutBuilder_pluginData + *(v0[189] + 28));
  v277 = (v0[243] + 56);
  v275 = *(v0[189] + 28);
  v276 = *v277;
  (*v277)(v0[271], 1, 1, v0[242]);
  v274 = *MEMORY[0x1E69D7110];
  v273 = *(v3 + 104);
  v273(v2);
  sub_1D725E17C();
  sub_1D726331C();
  sub_1D725E17C();
  sub_1D725E1BC();
  sub_1D725E14C();
  sub_1D725E1CC();
  sub_1D725E1AC();
  sub_1D725E16C();
  sub_1D725E19C();
  sub_1D725E1DC();
  sub_1D725E18C();
  if (qword_1EDF386E8 != -1)
  {
    swift_once();
  }

  v4 = v0[256];
  v5 = v0[252];
  v6 = v0[173];

  sub_1D725972C();

  sub_1D7259E5C();
  v7 = v5[9];
  v8 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v4 + v7, 1, 1, v8);
  *(v4 + v5[11]) = v6;
  *v4 = xmmword_1D728CF30;
  *(v4 + 16) = 1;
  *(v4 + 17) = 0;
  *(v4 + 24) = 0;
  *(v4 + v5[10]) = xmmword_1D7279980;
  *(v4 + v5[13]) = 0;
  v10 = v4 + v5[12];
  *v10 = 0;
  *(v10 + 8) = 1;

  sub_1D7259D0C();
  v265 = v9;
  v266 = v8;
  v267 = v6;
  v268 = v5;
  v385 = v0[271];
  v376 = v0[270];
  v11 = v0[263];
  v362 = v0[262];
  v12 = v0[259];
  v13 = v0[258];
  v403 = v0[256];
  v370 = v0[255];
  v14 = v0[251];
  v15 = v0[250];
  v16 = v0[247];
  v17 = v0[246];
  v18 = v0[243];
  v396 = v0[242];
  v409 = v0 + 74;
  sub_1D6330700((v278 + 2), (v0 + 74));
  sub_1D5B68374((v278 + 9), (v0 + 153));
  v258 = *(v16 + 16);
  v258(v15, v14, v17);
  v257 = *(v12 + 16);
  v257(v362, v11, v13);
  sub_1D5BE64C0(v403, v370, type metadata accessor for FeedLayoutSolverOptions);
  v19 = v278[17];
  v20 = v278[18];
  __swift_project_boxed_opaque_existential_1(v278 + 14, v19);
  v404 = (*(v20 + 8))(v14, v11, v19, v20);
  sub_1D5B68374((v278 + 19), (v0 + 148));
  sub_1D70A3E54(v385, v376, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D70A2554);
  v21 = *(v18 + 48);
  v22 = v21(v376, 1, v396);
  v23 = v0[270];
  v24 = v0;
  v408 = v0;
  v259 = v21;
  if (v22 == 1)
  {
    v25 = v0[242];
    v26 = v278[30];
    ObjectType = swift_getObjectType();
    v28 = v279;
    v24 = v408;
    FeedContextFactoryType.createFeedContext()(ObjectType, v26);
    if (v21(v23, 1, v25) != 1)
    {
      sub_1D5BEFFE8(v408[270], qword_1EDF34CA0, type metadata accessor for FeedContext);
    }
  }

  else
  {
    sub_1D5BE6684(v23, v0[245], type metadata accessor for FeedContext);
    v29 = v279;
  }

  v363 = v24[271];
  v289 = v24 + 18;
  v355 = v24[267];
  v271 = v24 + 10;
  v272 = (v24 + 88);
  v270 = (v24 + 98);
  v30 = v24[265];
  v261 = (v24 + 118);
  v262 = v24 + 2;
  v263 = (v24 + 123);
  v350 = v24[264];
  v285 = (v24 + 138);
  v298 = (v24 + 143);
  v31 = v24[263];
  v386 = v24[262];
  v32 = v24[259];
  v33 = v24[258];
  v34 = v24[256];
  v35 = v24[255];
  v36 = v24[251];
  v377 = v24[250];
  v37 = v24[247];
  v38 = v408[246];
  v397 = v408[245];
  sub_1D5B68374((v278 + 24), (v408 + 133));
  sub_1D5B68374((v278 + 31), (v408 + 128));
  v371 = sub_1D5BF796C(MEMORY[0x1E69E7CC0]);
  v256 = *(v37 + 8);
  v256(v36, v38);
  sub_1D5BE6754(v34, type metadata accessor for FeedLayoutSolverOptions);
  v255 = *(v32 + 8);
  v255(v31, v33);
  v254 = *(v30 + 8);
  v254(v355, v350);
  sub_1D5BEFFE8(v363, qword_1EDF34CA0, type metadata accessor for FeedContext);
  sub_1D70A3698(0, &qword_1EDF15090, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Cursor);
  v39 = swift_allocObject();
  v40 = *(v409 + 1);
  *(v39 + 16) = *v409;
  *(v39 + 32) = v40;
  *(v39 + 48) = *(v409 + 2);
  *(v39 + 64) = v409[6];
  sub_1D5B63F14((v408 + 153), v39 + 72);
  *(v39 + *(*v39 + 200)) = MEMORY[0x1E69E7CD0];
  *(v39 + *(*v39 + 208)) = 0;
  *(v39 + *(*v39 + 216)) = 0;
  v41 = v38;
  v42 = v408;
  v253 = *(v37 + 32);
  v253(v39 + *(*v39 + 112), v377, v41);
  v252 = *(v32 + 32);
  v252(v39 + *(*v39 + 120), v386, v33);
  *(v39 + *(*v39 + 136)) = v404;
  sub_1D5BE64C0(v35, v39 + *(*v39 + 128), type metadata accessor for FeedLayoutSolverOptions);
  sub_1D5B63F14(v408 + 74, v39 + *(*v39 + 144));
  *(v39 + *(*v39 + 168)) = v279;
  *(v39 + *(*v39 + 160)) = v371;
  *(v39 + *(*v39 + 176)) = v328;
  sub_1D5BE6684(v397, v39 + *(*v39 + 184), type metadata accessor for FeedContext);
  sub_1D5B63F14((v408 + 133), v39 + *(*v39 + 192));
  sub_1D5B63F14(v408 + 64, v39 + *(*v39 + 224));
  *(v39 + *(*v39 + 232)) = 0;
  v44 = *v35;
  v43 = *(v35 + 8);
  LODWORD(v33) = *(v35 + 16);
  sub_1D5BE6754(v35, type metadata accessor for FeedLayoutSolverOptions);
  v297 = v39;
  if (v33 == 1)
  {
    v45 = v39 + *(*v39 + 152);
    *v45 = 0;
    *(v45 + 8) = 0;
    if (v44 | v43)
    {
      *(v45 + 24) = 0;
      *(v45 + 16) = 0;
    }

    else
    {
      *(v45 + 16) = 0;
      *(v45 + 24) = 1;
    }
  }

  else
  {
    v46 = v39 + *(*v39 + 152);
    *v46 = v44;
    *(v46 + 8) = v43;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
  }

  v283 = (v408 + 34);
  v260 = (v408 + 50);
  v269 = (v408 + 66);
  v264 = v408 + 81;
  v47 = v408[241];
  v48 = v408[239];
  v49 = v408[238];
  v50 = v408[237];
  v51 = v408[236];
  v52 = v408[235];
  v364 = v408[229];
  v53 = v408[221];
  v54 = v408[216];
  v55 = v408[208];
  v410 = v408[195];
  v310 = v408[189];
  v372 = v408[187];
  v405 = v408[184];
  v304 = v408[181];
  v250 = *(v51 + 16);
  v250(v49, v408[171], v52);
  v249 = *(v51 + 32);
  v249(v50, v49, v52);
  sub_1D5B85FD8(&qword_1EDF16978, sub_1D5ECF374, MEMORY[0x1E69D8808]);
  sub_1D726238C();
  v378 = 0;
  v387 = 0;
  v251 = v48;
  *(v47 + *(v48 + 36)) = 0;
  v309 = (v364 + 32);
  v303 = (v53 + 16);
  v302 = (v54 + 16);
  v301 = (v372 + 8);
  v294 = (v405 + 104);
  v281 = *MEMORY[0x1E69D72B8];
  v305 = (v410 + 8);
  v293 = *MEMORY[0x1E69D8660];
  v292 = *MEMORY[0x1E69D8668];
  v295 = (v55 + 16);
  v306 = (v54 + 8);
  v307 = (v53 + 8);
  v308 = (v364 + 8);
  v296 = v55;
  v56 = 0.0;
  v406 = 1;
  v411 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v57 = v42[234];
    v58 = v42[233];
    sub_1D71497A0(v58);
    sub_1D70A2DB0(v58, v57, &qword_1EDF04788, sub_1D70A25B8);
    sub_1D70A25B8(0);
    v60 = v59;
    v61 = *(*(v59 - 8) + 48);
    v62 = v42;
    if (v61(v57, 1, v59) == 1)
    {
      break;
    }

    v63 = v42[234];
    v64 = v42[227];
    v65 = v42[226];
    v66 = *v63;
    (*v309)(v42[231], v63 + *(v60 + 48), v42[228]);
    sub_1D709A1F8(v66, v64);
    sub_1D709A568(v66, v65);
    if (v66 >= 1 && (sub_1D7261A3C() & 1) != 0)
    {
      v67 = v42[214];
      sub_1D725E18C();
      sub_1D7262E2C();
      *v67 = v68;
      v69 = sub_1D725A1DC();
      v70 = *(v69 - 8);
      (*(v70 + 104))(v67, v281, v69);
      (*(v70 + 56))(v67, 0, 1, v69);
    }

    else
    {
      v71 = v42[214];
      v72 = sub_1D725A1DC();
      (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
    }

    sub_1D725A1EC();
    v315 = v42[227];
    v320 = v42[226];
    v73 = v42[225];
    v74 = v42[224];
    v75 = v62[220];
    v337 = v62[219];
    v76 = v62[218];
    v323 = v62[215];
    v77 = v62[206];
    v343 = v62[205];
    v351 = v62[204];
    v365 = v62[198];
    v311 = v62[193];
    v356 = v62[192];
    v333 = v62[188];
    v373 = v62[186];
    sub_1D725D61C();
    v78 = *v303;
    (*v303)(v73, v315, v75);
    v78(v74, v320, v75);
    (*v302)(v76, v337, v323);
    sub_1D725A1CC();
    sub_1D5BE64C0(v77, v343, type metadata accessor for FormatSectionDescriptor);
    sub_1D5BE6684(v343, v311, type metadata accessor for FormatPluginData);
    v344 = *(v311 + v310[9]);
    v338 = *(v407 + v310[8]);
    *v289 = 0u;
    v289[1] = 0u;
    v289[2] = 0u;
    *(v289 + 41) = 0u;
    *(v62 + 201) = 1;
    v62[168] = 0;
    *(v62 + 1352) = 1;
    sub_1D5D60AB4(0, &qword_1EDF3BEB0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v324 = sub_1D72620FC();
    v80 = v79;
    v321 = sub_1D725D62C();
    v316 = v81;
    sub_1D725D63C();
    sub_1D725D61C();
    sub_1D5BE6754(v351, type metadata accessor for FormatPluginData);
    sub_1D725D61C();
    sub_1D5BE6684(v351, v356, type metadata accessor for FormatPluginData);
    sub_1D70A2E30(v356 + v310[6], v285, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
    sub_1D5BE6754(v356, type metadata accessor for FormatPluginData);
    v82 = *(v311 + *(v304 + 36));
    v83 = swift_task_alloc();
    v84 = MEMORY[0x1E69E7CC0];
    *(v83 + 16) = MEMORY[0x1E69E7CC0];
    *(v83 + 24) = v321;
    *(v83 + 32) = v316;
    *(v83 + 40) = v285;
    *(v83 + 48) = v311;
    *(v83 + 56) = v333;
    *(v83 + 64) = 1;
    *(v83 + 72) = v338;
    *(v83 + 80) = v344;
    *(v83 + 88) = v84;
    *(v83 + 96) = v84;
    *(v83 + 104) = v289;
    *(v83 + 112) = v324;
    *(v83 + 120) = v80;
    *(v83 + 128) = 0u;
    *(v83 + 144) = 0u;
    *(v83 + 160) = 0;
    v85 = sub_1D5D4C914(sub_1D70A3EE8, v83, v82);

    swift_bridgeObjectRelease_n();

    sub_1D70A2C0C(v285, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
    (*v301)(v333, v373);
    *(v298 + 32) = 0;
    *v298 = 0u;
    *(v298 + 16) = 0u;
    v86 = swift_task_alloc();
    v86[2] = v297;
    v86[3] = v85;
    v86[4] = v298;
    v86[5] = v365;
    sub_1D709F66C(0, 0, 1, 1, sub_1D70A3ED0, v86, &v412);
    v87 = v408[206];
    v357 = v408[198];
    v352 = v408[194];
    v88 = v408[193];
    v89 = v408[185];
    v90 = v408[183];

    sub_1D70A2C0C(v298, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
    v91 = v412;
    v92 = v413;
    *v283 = v412;
    *(v408 + 18) = v92;
    v93 = v414[0];
    *(v408 + 19) = v414[0];
    v94 = *(v414 + 9);
    *(v408 + 313) = *(v414 + 9);
    v416.frame.origin = v91;
    v416.frame.size = v92;
    *&v416.feedItemLayoutAttributes._rawValue = v93;
    *(&v416.feedItemSupplementaryAttributes._rawValue + 1) = v94;
    sub_1D5BD4CD0(v283, (v408 + 26));
    FormatLayoutSectionDescriptor.LayoutData.init(layoutResult:)(&v416);
    *(v408 + 81) = v415;
    v95 = sub_1D725F27C();
    (*(*(v95 - 8) + 104))(v89, v293, v95);
    (*v294)(v89, v292, v90);
    v96 = v408[38];
    v97 = swift_task_alloc();
    *(v97 + 16) = v88;

    sub_1D5ECDA84(sub_1D70A3F04, v97, v96);
    sub_1D70A2C9C(v283);

    sub_1D691183C();
    sub_1D685234C();
    sub_1D725E27C();
    sub_1D5BE6754(v87, type metadata accessor for FormatSectionDescriptor);
    sub_1D5BE6754(v88, type metadata accessor for FormatPluginData);
    (*v305)(v357, v352);
    sub_1D725E25C();
    v99 = v98;
    if (v387)
    {
      v387 = 1;
      v100 = 1;
      v42 = v408;
      v101 = v411;
      v102 = v406;
      if (v378)
      {
LABEL_33:
        v108 = 0.0;
        if ((v102 & 1) == 0)
        {
LABEL_34:
          v108 = v56;
        }

        if (v108 > v99)
        {
          v56 = v108;
        }

        else
        {
          v56 = v99;
        }

        v378 = v100;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    v101 = v411;
    v102 = v406;
    if ((v406 & 1) == 0)
    {
      v387 = v56 != v98;
      v42 = v408;
      if (v378)
      {
        v100 = 1;
        goto LABEL_34;
      }

LABEL_32:
      v103 = v42[204];
      v104 = v42[203];
      v105 = v42[192];
      v106 = v42[182];
      sub_1D725D61C();
      sub_1D5BE64C0(v103, v104, type metadata accessor for FormatSectionDescriptor);
      sub_1D5BE6684(v104, v105, type metadata accessor for FormatPluginData);
      sub_1D5BE64C0(v105, v106, type metadata accessor for FormatContent.Resolved);
      sub_1D5BE6754(v105, type metadata accessor for FormatPluginData);
      v107 = FormatContent.Resolved.compilerOptionIdentifiers.getter();
      sub_1D5BE6754(v106, type metadata accessor for FormatContent.Resolved);
      v100 = sub_1D5BE240C(0xD000000000000018, 0x80000001D73CDA20, v107);

      sub_1D5BE6754(v103, type metadata accessor for FormatSectionDescriptor);
      goto LABEL_33;
    }

    v42 = v408;
    if ((v378 & 1) == 0)
    {
      v387 = 0;
      goto LABEL_32;
    }

    v387 = 0;
    if (v98 < 0.0)
    {
      v56 = 0.0;
    }

    else
    {
      v56 = v98;
    }

    v378 = 1;
LABEL_39:
    (*v295)(v42[212], v42[213], v42[207]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_1D6996DAC(0, v101[2] + 1, 1, v101);
    }

    v110 = v101[2];
    v109 = v101[3];
    if (v110 >= v109 >> 1)
    {
      v411 = sub_1D6996DAC((v109 > 1), v110 + 1, 1, v101);
    }

    else
    {
      v411 = v101;
    }

    v358 = v42[231];
    v111 = v42[228];
    v112 = v42[227];
    v113 = v42[226];
    v114 = v42[220];
    v115 = v42[219];
    v116 = v42[215];
    v366 = v42[212];
    v117 = v42[207];
    (*(v296 + 8))(v42[213], v117);
    (*v306)(v115, v116);
    v118 = *v307;
    (*v307)(v113, v114);
    v118(v112, v114);
    (*v308)(v358, v111);
    v411[2] = v110 + 1;
    (*(v296 + 32))(v411 + ((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * v110, v366, v117);

    v406 = 0;
  }

  sub_1D5BE6754(v42[241], sub_1D70A27C8);
  if ((v387 & v378 & 1) == 0)
  {
    sub_1D709A890();
LABEL_59:
    v157 = v62[177];
    v158 = v62[176];
    v159 = v62[175];
    (*(v62[179] + 16))(v62[180], v62[172], v62[178]);
    (*(v158 + 104))(v157, *MEMORY[0x1E69D7F70], v159);
    sub_1D691183C();
    sub_1D685234C();

    sub_1D725D33C();
    swift_setDeallocating();
    sub_1D70A2368();
    swift_deallocClassInstance();

    v160 = v62[1];

    return v160();
  }

  v119 = v42[266];
  v120 = v42[264];
  v121 = v42[254];
  v286 = *(v407 + v275);
  v276(v42[269], 1, 1, v42[242]);
  (v273)(v119, v274, v120);
  sub_1D725E17C();
  sub_1D726331C();
  sub_1D725E17C();
  sub_1D725E1BC();
  sub_1D725E14C();
  sub_1D725E1CC();
  sub_1D725E1AC();
  sub_1D725E16C();
  sub_1D725E19C();
  sub_1D725E1DC();
  sub_1D725E18C();

  sub_1D725972C();

  sub_1D7259E5C();
  v265(v121 + v268[9], 1, 1, v266);
  *(v121 + v268[11]) = v267;
  *v121 = xmmword_1D728CF30;
  *(v121 + 16) = 1;
  *(v121 + 17) = 0;
  *(v121 + 24) = 0;
  *(v121 + v268[10]) = xmmword_1D7279980;
  *(v121 + v268[13]) = 0;
  v122 = v121 + v268[12];
  *v122 = 0;
  *(v122 + 8) = 1;

  sub_1D7259D0C();
  v379 = v42[269];
  v374 = v42[268];
  v123 = v42[261];
  v124 = v42[260];
  v359 = v42[258];
  v398 = v42[254];
  v367 = v42[253];
  v125 = v42[249];
  v126 = v42[248];
  v127 = v42[246];
  v388 = v42[242];
  sub_1D6330700((v278 + 2), v264);
  sub_1D5B68374((v278 + 9), (v42 + 113));
  v258(v126, v125, v127);
  v257(v124, v123, v359);
  sub_1D5BE64C0(v398, v367, type metadata accessor for FeedLayoutSolverOptions);
  v129 = v278[17];
  v128 = v278[18];
  __swift_project_boxed_opaque_existential_1(v278 + 14, v129);
  v399 = (*(v128 + 8))(v125, v123, v129, v128);
  sub_1D5B68374((v278 + 19), (v42 + 108));
  sub_1D70A3E54(v379, v374, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D70A2554);
  v130 = v259(v374, 1, v388);
  v131 = v42[268];
  if (v130 == 1)
  {
    v132 = v42[242];
    v133 = v278[30];
    v134 = swift_getObjectType();
    v135 = v279;
    v136 = v134;
    v62 = v408;
    FeedContextFactoryType.createFeedContext()(v136, v133);
    if (v259(v131, 1, v132) != 1)
    {
      sub_1D5BEFFE8(v408[268], qword_1EDF34CA0, type metadata accessor for FeedContext);
    }
  }

  else
  {
    sub_1D5BE6684(v42[268], v42[244], type metadata accessor for FeedContext);
    v137 = v279;
  }

  v353 = v62[269];
  v345 = v62[266];
  v138 = v408[264];
  v139 = v408[261];
  v375 = v408[260];
  v140 = v408[258];
  v141 = v408[254];
  v368 = v408[253];
  v142 = v408[249];
  v360 = v408[248];
  v143 = v408[246];
  v380 = v408[244];
  sub_1D5B68374((v278 + 24), (v408 + 103));
  sub_1D5B68374((v278 + 31), (v408 + 93));
  v144 = sub_1D5BF796C(MEMORY[0x1E69E7CC0]);
  v256(v142, v143);
  sub_1D5BE6754(v141, type metadata accessor for FeedLayoutSolverOptions);
  v255(v139, v140);
  v254(v345, v138);
  sub_1D5BEFFE8(v353, qword_1EDF34CA0, type metadata accessor for FeedContext);
  v145 = swift_allocObject();
  v146 = *(v408 + 83);
  *(v145 + 16) = *v264;
  *(v145 + 32) = v146;
  *(v145 + 48) = *(v408 + 85);
  *(v145 + 64) = v408[87];
  sub_1D5B63F14((v408 + 113), v145 + 72);
  *(v145 + *(*v145 + 200)) = MEMORY[0x1E69E7CD0];
  *(v145 + *(*v145 + 208)) = 0;
  *(v145 + *(*v145 + 216)) = 0;
  v253(v145 + *(*v145 + 112), v360, v143);
  v252(v145 + *(*v145 + 120), v375, v140);
  *(v145 + *(*v145 + 136)) = v399;
  sub_1D5BE64C0(v368, v145 + *(*v145 + 128), type metadata accessor for FeedLayoutSolverOptions);
  sub_1D5B63F14(v408 + 54, v145 + *(*v145 + 144));
  *(v145 + *(*v145 + 168)) = v279;
  *(v145 + *(*v145 + 160)) = v144;
  *(v145 + *(*v145 + 176)) = v286;
  sub_1D5BE6684(v380, v145 + *(*v145 + 184), type metadata accessor for FeedContext);
  sub_1D5B63F14((v408 + 103), v145 + *(*v145 + 192));
  sub_1D5B63F14((v408 + 93), v145 + *(*v145 + 224));
  *(v145 + *(*v145 + 232)) = 0;
  v148 = *v368;
  v147 = *(v368 + 8);
  LODWORD(v144) = *(v368 + 16);
  sub_1D5BE6754(v368, type metadata accessor for FeedLayoutSolverOptions);
  v284 = v145;
  if (v144 == 1)
  {
    v149 = v145 + *(*v145 + 152);
    *v149 = 0;
    *(v149 + 8) = 0;
    if (v148 | v147)
    {
      *(v149 + 24) = 0;
      *(v149 + 16) = 0;
    }

    else
    {
      *(v149 + 16) = 0;
      *(v149 + 24) = 1;
    }
  }

  else
  {
    v150 = v145 + *(*v145 + 152);
    *v150 = v148;
    *(v150 + 8) = v147;
    *(v150 + 16) = 0;
    *(v150 + 24) = 0;
  }

  v151 = v408[240];
  v152 = v408[238];
  v153 = v408[237];
  v154 = v408[235];
  v155 = v408[233];
  v156 = v408[232];
  v250(v152, v408[171], v154);
  v249(v153, v152, v154);
  sub_1D726238C();
  *(v151 + *(v251 + 36)) = 0;
  sub_1D71497A0(v155);
  sub_1D70A2DB0(v155, v156, &qword_1EDF04788, sub_1D70A25B8);
  if (v61(v156, 1, v60) == 1)
  {
    v62 = v408;
LABEL_58:
    sub_1D5BE6754(v62[240], sub_1D70A27C8);
    sub_1D709A890();
    swift_setDeallocating();
    sub_1D70A2368();
    swift_deallocClassInstance();
    goto LABEL_59;
  }

  v280 = (v408[208] + 40);
  v282 = *v309;
  v62 = v408;
  while (2)
  {
    v165 = v62[232];
    v166 = v62[223];
    v167 = v62[222];
    v168 = *v165;
    v282(v62[230], v165 + *(v60 + 48), v62[228]);
    sub_1D709A1F8(v168, v166);
    sub_1D709A568(v168, v167);
    if (v168 >= 1 && (sub_1D7261A3C() & 1) != 0)
    {
      v169 = v62[214];
      sub_1D725E18C();
      sub_1D7262E2C();
      *v169 = v170;
      v171 = sub_1D725A1DC();
      v172 = *(v171 - 8);
      (*(v172 + 104))(v169, v281, v171);
      (*(v172 + 56))(v169, 0, 1, v171);
      result = sub_1D725A1EC();
LABEL_69:
      if (v168 >= v411[2])
      {
        goto LABEL_83;
      }

      v175 = v62[211];
      v176 = v62[207];
      v354 = (*(v296 + 80) + 32) & ~*(v296 + 80);
      v369 = v168;
      v361 = *(v296 + 72) * v168;
      (*(v296 + 16))(v175, v411 + v354 + v361, v176);
      sub_1D725E25C();
      v178 = v177;
      (*(v296 + 8))(v175, v176);
      if (v406 & 1 | (v178 != v56) && (v179 = v62[204], v180 = v62[203], v181 = v62[192], v182 = v62[182], sub_1D725D61C(), sub_1D5BE64C0(v179, v180, type metadata accessor for FormatSectionDescriptor), sub_1D5BE6684(v180, v181, type metadata accessor for FormatPluginData), sub_1D5BE64C0(v181, v182, type metadata accessor for FormatContent.Resolved), sub_1D5BE6754(v181, type metadata accessor for FormatPluginData), v183 = FormatContent.Resolved.compilerOptionIdentifiers.getter(), sub_1D5BE6754(v182, type metadata accessor for FormatContent.Resolved), LOBYTE(v180) = sub_1D5BE240C(0xD000000000000018, 0x80000001D73CDA20, v183), , sub_1D5BE6754(v179, type metadata accessor for FormatSectionDescriptor), (v180 & 1) != 0))
      {
        v184 = v62[225];
        v185 = v62[224];
        v329 = v62[223];
        v334 = v62[222];
        v186 = v62;
        v187 = v62[220];
        v188 = v186[218];
        v346 = v186[217];
        v339 = v186[215];
        v189 = v186[200];
        v389 = v186[199];
        v400 = v186[190];
        sub_1D725D61C();
        v190 = *v303;
        (*v303)(v184, v329, v187);
        v190(v185, v334, v187);
        (*v302)(v188, v346, v339);
        sub_1D725A1CC();
        sub_1D5BE64C0(v189, v389, type metadata accessor for FormatSectionDescriptor);
        sub_1D5BE6684(v389, v400, type metadata accessor for FormatPluginData);
        v401 = *(v400 + v310[9]);
        v191 = MEMORY[0x1E69E7CC0];
        v192 = MEMORY[0x1E69E7CC0];
        if ((v406 & 1) == 0)
        {
          sub_1D70A2554(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
          v193 = (type metadata accessor for FormatOption(0) - 8);
          v194 = (*(*v193 + 80) + 32) & ~*(*v193 + 80);
          v192 = swift_allocObject();
          *(v192 + 16) = xmmword_1D7273AE0;
          v195 = (v192 + v194);
          v196 = swift_allocObject();
          *(v196 + 16) = v56;
          *(v196 + 24) = v191;
          *v195 = 0xD000000000000018;
          v195[1] = 0x80000001D73CDA20;
          v195[2] = v196 | 0x3000000000000000;
          v195[3] = 1;
          v197 = v193[9];
          v198 = type metadata accessor for FormatVersionRequirement(0);
          (*(*(v198 - 8) + 56))(v192 + v194 + v197, 1, 1, v198);
        }

        v199 = v408[204];
        v390 = v408[196];
        v322 = v408[192];
        v335 = v408[190];
        v200 = v408[188];
        v381 = v408[186];
        v340 = *(v407 + v310[8]);
        *v262 = 0u;
        v262[1] = 0u;
        v262[2] = 0u;
        *(v262 + 41) = 0u;
        *(v408 + 73) = 1;
        *(v408 + 166) = v56;
        *(v408 + 1336) = v406 & 1;
        sub_1D5D60AB4(0, &qword_1EDF3BEB0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        v330 = sub_1D72620FC();
        v325 = v201;
        v317 = sub_1D725D62C();
        v312 = v202;
        v299 = v200;
        sub_1D725D63C();
        sub_1D725D61C();
        sub_1D5BE6754(v199, type metadata accessor for FormatPluginData);
        sub_1D725D61C();
        sub_1D5BE6684(v199, v322, type metadata accessor for FormatPluginData);
        sub_1D70A2E30(v322 + v310[6], v261, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
        v203 = MEMORY[0x1E69E7CC0];
        sub_1D5BE6754(v322, type metadata accessor for FormatPluginData);
        v204 = *(v335 + *(v304 + 36));
        v205 = swift_task_alloc();
        *(v205 + 16) = v203;
        *(v205 + 24) = v317;
        *(v205 + 32) = v312;
        *(v205 + 40) = v261;
        *(v205 + 48) = v335;
        *(v205 + 56) = v200;
        *(v205 + 64) = 1;
        *(v205 + 72) = v340;
        *(v205 + 80) = v401;
        *(v205 + 88) = v203;
        *(v205 + 96) = v192;
        *(v205 + 104) = v262;
        *(v205 + 112) = v330;
        *(v205 + 120) = v325;
        *(v205 + 128) = 0u;
        *(v205 + 144) = 0u;
        *(v205 + 160) = 0;
        v206 = sub_1D5D4C914(sub_1D70A3EE8, v205, v204);

        sub_1D70A2C0C(v261, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
        (*v301)(v299, v381);
        *(v263 + 32) = 0;
        *v263 = 0u;
        *(v263 + 16) = 0u;
        v207 = swift_task_alloc();
        v207[2] = v284;
        v207[3] = v206;
        v207[4] = v263;
        v207[5] = v390;
        sub_1D709F66C(0, 0, 1, 1, sub_1D70A3ED0, v207, &v412);
        v347 = v408[200];
        v391 = v408[196];
        v382 = v408[194];
        v208 = v408[190];
        v209 = v408[185];
        v210 = v408[183];

        sub_1D70A2C0C(v263, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
        v211 = v412;
        v212 = v413;
        *v260 = v412;
        *(v408 + 26) = v212;
        v213 = v414[0];
        *(v408 + 27) = v414[0];
        v214 = *(v414 + 9);
        *(v408 + 441) = *(v414 + 9);
        v416.frame.origin = v211;
        v416.frame.size = v212;
        *&v416.feedItemLayoutAttributes._rawValue = v213;
        *(&v416.feedItemSupplementaryAttributes._rawValue + 1) = v214;
        sub_1D5BD4CD0(v260, (v408 + 42));
        FormatLayoutSectionDescriptor.LayoutData.init(layoutResult:)(&v416);
        *(v408 + 80) = v415;
        v215 = sub_1D725F27C();
        (*(*(v215 - 8) + 104))(v209, v293, v215);
        (*v294)(v209, v292, v210);
        v216 = v408[54];
        v217 = swift_task_alloc();
        *(v217 + 16) = v208;

        sub_1D5ECDA84(sub_1D70A3F04, v217, v216);
        sub_1D70A2C9C(v260);

        sub_1D691183C();
        sub_1D685234C();
        sub_1D725E27C();
        sub_1D5BE6754(v347, type metadata accessor for FormatSectionDescriptor);
        sub_1D5BE6754(v208, type metadata accessor for FormatPluginData);
        (*v305)(v391, v382);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v411 = sub_1D5EC3C90(v411);
        }

        v62 = v408;
        v392 = v408[230];
        v218 = v408[228];
        v219 = v408[223];
        v220 = v408[222];
        v221 = v408[220];
        (*v306)(v408[217], v408[215]);
        v222 = *v307;
        (*v307)(v220, v221);
        v222(v219, v221);
        result = (*v308)(v392, v218);
        v223 = v411;
        if (v369 >= v411[2])
        {
          goto LABEL_85;
        }

        v162 = v408[209];
      }

      else
      {
        v224 = v62[225];
        v225 = v62[224];
        v287 = v62[223];
        v290 = v62[222];
        v226 = v62[220];
        v300 = v62[218];
        v318 = v62[217];
        v313 = v62[215];
        v336 = v62[204];
        v326 = v62[202];
        v331 = v62[201];
        v402 = v62[197];
        v341 = v62[192];
        v383 = v62[191];
        v393 = v62[188];
        v348 = v62[186];
        sub_1D725D61C();
        v227 = *v303;
        (*v303)(v224, v287, v226);
        v227(v225, v290, v226);
        (*v302)(v300, v318, v313);
        sub_1D725A1CC();
        sub_1D5BE64C0(v326, v331, type metadata accessor for FormatSectionDescriptor);
        sub_1D5BE6684(v331, v383, type metadata accessor for FormatPluginData);
        v332 = *(v383 + v310[9]);
        v327 = *(v407 + v310[8]);
        *v271 = 0u;
        v271[1] = 0u;
        v271[2] = 0u;
        *(v271 + 41) = 0u;
        *(v62 + 137) = 1;
        v62[164] = 0;
        *(v62 + 1320) = 1;
        sub_1D5D60AB4(0, &qword_1EDF3BEB0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        v319 = sub_1D72620FC();
        v314 = v228;
        v291 = sub_1D725D62C();
        v288 = v229;
        sub_1D725D63C();
        sub_1D725D61C();
        sub_1D5BE6754(v336, type metadata accessor for FormatPluginData);
        sub_1D725D61C();
        sub_1D5BE6684(v336, v341, type metadata accessor for FormatPluginData);
        sub_1D70A2E30(v341 + v310[6], v270, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
        sub_1D5BE6754(v341, type metadata accessor for FormatPluginData);
        v342 = *(v383 + *(v304 + 36));
        v230 = swift_task_alloc();
        v231 = MEMORY[0x1E69E7CC0];
        *(v230 + 16) = MEMORY[0x1E69E7CC0];
        *(v230 + 24) = v291;
        *(v230 + 32) = v288;
        *(v230 + 40) = v270;
        *(v230 + 48) = v383;
        *(v230 + 56) = v393;
        *(v230 + 64) = 1;
        *(v230 + 72) = v327;
        *(v230 + 80) = v332;
        *(v230 + 88) = v231;
        *(v230 + 96) = v231;
        *(v230 + 104) = v271;
        *(v230 + 112) = v319;
        *(v230 + 120) = v314;
        *(v230 + 128) = 0u;
        *(v230 + 144) = 0u;
        *(v230 + 160) = 0;
        v232 = sub_1D5D4C914(sub_1D70A2BDC, v230, v342);

        swift_bridgeObjectRelease_n();

        sub_1D70A2C0C(v270, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
        (*v301)(v393, v348);
        *(v272 + 32) = 0;
        *v272 = 0u;
        *(v272 + 16) = 0u;
        v233 = swift_task_alloc();
        v233[2] = v284;
        v233[3] = v232;
        v233[4] = v272;
        v233[5] = v402;
        sub_1D709F66C(0, 0, 1, 1, sub_1D70A2BF4, v233, &v412);
        v349 = v408[202];
        v394 = v408[197];
        v384 = v408[194];
        v234 = v408[191];
        v235 = v408[185];
        v236 = v408[183];

        sub_1D70A2C0C(v272, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
        v237 = v412;
        v238 = v413;
        *v269 = v412;
        *(v408 + 34) = v238;
        v239 = v414[0];
        *(v408 + 35) = v414[0];
        v240 = *(v414 + 9);
        *(v408 + 569) = *(v414 + 9);
        v416.frame.origin = v237;
        v416.frame.size = v238;
        *&v416.feedItemLayoutAttributes._rawValue = v239;
        *(&v416.feedItemSupplementaryAttributes._rawValue + 1) = v240;
        sub_1D5BD4CD0(v269, (v408 + 58));
        FormatLayoutSectionDescriptor.LayoutData.init(layoutResult:)(&v416);
        *(v408 + 79) = v415;
        v241 = sub_1D725F27C();
        (*(*(v241 - 8) + 104))(v235, v293, v241);
        (*v294)(v235, v292, v236);
        v242 = v408[70];
        v243 = swift_task_alloc();
        *(v243 + 16) = v234;

        sub_1D5ECDA84(sub_1D70A2C7C, v243, v242);
        sub_1D70A2C9C(v269);

        sub_1D691183C();
        sub_1D685234C();
        sub_1D725E27C();
        sub_1D5BE6754(v349, type metadata accessor for FormatSectionDescriptor);
        sub_1D5BE6754(v234, type metadata accessor for FormatPluginData);
        (*v305)(v394, v384);
        v62 = v408;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v411 = sub_1D5EC3C90(v411);
        }

        v395 = v408[230];
        v244 = v408[228];
        v245 = v408[223];
        v246 = v408[222];
        v247 = v408[220];
        (*v306)(v408[217], v408[215]);
        v248 = *v307;
        (*v307)(v246, v247);
        v248(v245, v247);
        result = (*v308)(v395, v244);
        v223 = v411;
        if (v369 >= v411[2])
        {
          goto LABEL_84;
        }

        v162 = v408[210];
      }

      (*v280)(&v223[v354 + v361], v162, v62[207]);

      v163 = v62[233];
      v164 = v62[232];
      sub_1D71497A0(v163);
      sub_1D70A2DB0(v163, v164, &qword_1EDF04788, sub_1D70A25B8);
      if (v61(v164, 1, v60) == 1)
      {
        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  v173 = v62[214];
  v174 = sub_1D725A1DC();
  (*(*(v174 - 8) + 56))(v173, 1, 1, v174);
  result = sub_1D725A1EC();
  if ((v168 & 0x8000000000000000) == 0)
  {
    goto LABEL_69;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_1D709A1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725A2FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v39 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35[-v10];
  sub_1D70A2554(0, &qword_1EDF3BF78, MEMORY[0x1E69D7318], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v41 = &v35[-v18];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v35[-v21];
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v5[7];
  v40 = &v35[-v27];
  v26(v25);
  if (a1 < 1)
  {
    v33 = 1;
    (v26)(v22, 1, 1, v4);
    (v26)(v41, 1, 1, v4);
  }

  else
  {
    v36 = *MEMORY[0x1E69D7310];
    v37 = v15;
    v38 = a2;
    v28 = v5[13];
    v28(v22);
    (v26)(v22, 0, 1, v4);
    (v26)(v41, 1, 1, v4);
    v29 = swift_allocObject();
    sub_1D725E16C();
    sub_1D7262E2C();
    *(v29 + 16) = v30;
    *v11 = v29;
    (v28)(v11, *MEMORY[0x1E69D7308], v4);
    v31 = v39;
    (v28)(v39, v36, v4);
    v15 = v37;
    sub_1D725A22C();
    v32 = v5[1];
    v32(v31, v4);
    v32(v11, v4);
    v33 = 0;
  }

  (v26)(v15, v33, 1, v4);
  return sub_1D725A2DC();
}

uint64_t sub_1D709A568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D70A2554(0, &qword_1EDF3BF78, MEMORY[0x1E69D7318], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v30 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v30 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v30 - v18;
  if (a1 >= 1 && (sub_1D7261A3C() & 1) != 0)
  {
    v20 = sub_1D725A2FC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v22(v19, 1, 1, v20);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *v15 = v23;
    v30[1] = a2;
    v24 = *MEMORY[0x1E69D7308];
    v25 = *(v21 + 104);
    v25(v15, v24, v20);
    v22(v15, 0, 1, v20);
    v22(v11, 1, 1, v20);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *v7 = v26;
    v25(v7, v24, v20);
    v22(v7, 0, 1, v20);
  }

  else
  {
    v27 = sub_1D725A2FC();
    v28 = *(*(v27 - 8) + 56);
    v28(v19, 1, 1, v27);
    v28(v15, 1, 1, v27);
    v28(v11, 1, 1, v27);
    v28(v7, 1, 1, v27);
  }

  return sub_1D725A2DC();
}

void sub_1D709A890()
{
  v1 = sub_1D7259F5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7259CFC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, &v0[*(*v0 + 112)], v6, v9);
  (*(v2 + 16))(v5, &v0[*(*v0 + 120)], v1);
  v12 = sub_1D7259CCC();
  sub_1D7259E6C();
  v14 = v13;
  v16 = v15;
  sub_1D7259E7C();
  v18 = v17;
  v20 = v19;
  sub_1D7259E8C();
  v22 = v21;
  v24 = v23;
  sub_1D7259E9C();
  v26 = v25;
  v28 = v27;
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v11, v6);
  v29 = *(v0 + 12);
  v30 = *(v0 + 13);
  __swift_project_boxed_opaque_existential_1(v0 + 9, v29);
  swift_beginAccess();
  v33[0] = v12;
  v33[1] = v14;
  v33[2] = v16;
  v33[3] = v18;
  v33[4] = v20;
  v33[5] = v22;
  v33[6] = v24;
  v33[7] = v26;
  v33[8] = v28;
  v31 = *(v30 + 32);

  v31(v32, v33, v29, v30);
}

uint64_t sub_1D709AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return sub_1D70958D0(a1, a2, a3, a4);
}

uint64_t sub_1D709AC08(void *a1, uint64_t *a2)
{
  sub_1D5B53E88();

  return sub_1D725DDDC();
}

uint64_t sub_1D709AC80@<X0>(double a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, CGPoint *a4@<X8>)
{
  v645 = a3;
  v592 = a2;
  v606 = a4;
  v9 = sub_1D725D52C();
  v586 = *(v9 - 8);
  v587 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v585 = (&v578 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v594 = type metadata accessor for InternalErrorViewModel(0);
  MEMORY[0x1EEE9AC00](v594, v12);
  v595 = &v578 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v599 = (&v578 - v16);
  sub_1D70A2554(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v591 = &v578 - v19;
  v588 = sub_1D7259D1C();
  v20 = *(v588 - 8);
  MEMORY[0x1EEE9AC00](v588, v21);
  v583 = &v578 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v578 - v25;
  v27 = sub_1D725A0AC();
  v612 = *(v27 - 8);
  v613 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v604 = &v578 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v616 = &v578 - v32;
  v609 = sub_1D725A3AC();
  v615 = *(v609 - 8);
  MEMORY[0x1EEE9AC00](v609, v33);
  v601 = &v578 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v602 = &v578 - v37;
  v611 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v611, v38);
  v597 = &v578 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v598 = &v578 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v607 = &v578 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v605 = &v578 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v619 = &v578 - v51;
  v608 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v608, v52);
  v593 = &v578 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v578 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v620 = &v578 - v60;
  v632 = sub_1D7259CFC();
  v628 = *(v632 - 8);
  MEMORY[0x1EEE9AC00](v632, v61);
  v582 = &v578 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v640 = (&v578 - v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  *&v649.y = &v578 - v68;
  v641 = type metadata accessor for FeedLayoutCacheKey(0);
  MEMORY[0x1EEE9AC00](v641, v69);
  v646 = (&v578 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v71, v72);
  v648 = &v578 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v630 = &v578 - v76;
  v637 = sub_1D7259F5C();
  v634 = *(v637 - 8);
  MEMORY[0x1EEE9AC00](v637, v77);
  *&v649.x = &v578 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79, v80);
  v639 = &v578 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  *v650 = &v578 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v631 = &v578 - v87;
  v88 = type metadata accessor for FeedItem(0);
  v642 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88 - 8, v89);
  v629 = &v578 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91, v92);
  v603 = &v578 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v644 = &v578 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  *&v650[8] = &v578 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  *&x = &v578 - v102;
  v104 = *v5;
  v624 = *(v5 + *(*v5 + 208));
  v105 = *(v104 + 216);
  v647 = v5;
  v618 = v105;
  v623 = *(v5 + v105);
  sub_1D5BC66DC(0);
  v106 = swift_allocObject();
  v638 = a1;
  sub_1D70A2E30(*&a1 + 168, &v673, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
  y = v674.origin.y;
  v596 = v57;
  v590 = v20;
  v584 = v26;
  if (*&v674.origin.y)
  {
    width = v674.size.width;
    __swift_project_boxed_opaque_existential_1(&v673, *&v674.origin.y);
    v106[4] = (*(*&width + 16))(COERCE_CGFLOAT(*&y), COERCE_CGFLOAT(*&width));
    v106[5] = v109;
    __swift_destroy_boxed_opaque_existential_1(&v673);
  }

  else
  {
    sub_1D70A2C0C(&v673, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
    v106[4] = 0;
    v106[5] = 0;
  }

  v110 = *(*&v638 + 128);
  v111 = *(*&v638 + 96);
  v673 = *(*&v638 + 80);
  v674.origin = v111;
  v674.size = *(*&v638 + 112);
  *&v675[0] = v110;
  v112 = 0;
  v106[6] = FeedGroupKind.identifier.getter();
  v106[7] = v113;
  v114 = (v106 + 5);
  v115 = MEMORY[0x1E69E7CC0];
  v651.origin.x = x;
LABEL_5:
  v116 = (v114 + 16 * v112);
  while (++v112 != 3)
  {
    v117 = v116 + 2;
    v118 = *v116;
    v116 += 2;
    if (v118)
    {
      v119 = *(v117 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1D5B858EC(0, *(v115 + 2) + 1, 1, v115);
      }

      v6 = *(v115 + 2);
      v120 = *(v115 + 3);
      if (*&v6 >= v120 >> 1)
      {
        v115 = sub_1D5B858EC((v120 > 1), *&v6 + 1, 1, v115);
      }

      *(v115 + 2) = *&v6 + 1;
      v121 = &v115[16 * *&v6];
      *(v121 + 4) = v119;
      *(v121 + 5) = v118;
      x = v651.origin.x;
      goto LABEL_5;
    }
  }

  swift_setDeallocating();
  v122 = MEMORY[0x1E69E6158];
  sub_1D5D60AB4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v673 = 91;
  *(&v673 + 1) = 0xE100000000000000;
  v658.origin.x = v624;
  *&v670 = sub_1D72644BC();
  *(&v670 + 1) = v123;
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  v658.origin.x = v623;
  v124 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v124);

  MEMORY[0x1DA6F9910](v670, *(&v670 + 1));

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  *&v670 = v115;
  sub_1D5D60AB4(0, &qword_1EDF43BA0, v122, MEMORY[0x1E69E62F8]);
  sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v122, MEMORY[0x1E69E6310]);
  v125 = sub_1D7261F3C();
  v127 = v126;

  MEMORY[0x1DA6F9910](v125, v127);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  v625 = *(&v673 + 1);
  v610 = v673;
  v128 = (v647 + *(*v647 + 224));
  v129 = v128[3];
  v130 = v128[4];
  __swift_project_boxed_opaque_existential_1(v128, v129);
  v131 = (*(v130 + 8))(v129, v130);
  v132 = v131;
  v133 = *(*&v638 + 64);
  v134 = *(v133 + 16);
  v643 = v133;
  v651.size.width = v134;
  if (v134 != 0.0)
  {
    v135 = 0;
    *&v652 = v131 + 56;
    v677 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v135 >= *(v133 + 16))
      {
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v136 = (*(v642 + 80) + 32) & ~*(v642 + 80);
      v127 = *(v642 + 72);
      sub_1D5BE64C0(v133 + v136 + v127 * v135, *&x, type metadata accessor for FeedItem);
      *&v137 = COERCE_DOUBLE(FeedItem.dismissingIdentifier.getter());
      if (v138)
      {
        v114 = v138;
        if (*(v132 + 16))
        {
          v6 = *&v137;
          sub_1D7264A0C();
          sub_1D72621EC();
          v139 = sub_1D7264A5C();
          v140 = -1 << *(v132 + 32);
          v141 = v139 & ~v140;
          if ((*(v652 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141))
          {
            v142 = ~v140;
            while (1)
            {
              v143 = (*(v132 + 48) + 16 * v141);
              v144 = *v143 == *&v6 && v114 == v143[1];
              if (v144 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v141 = (v141 + 1) & v142;
              if (((*(v652 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            sub_1D5BE6684(*&v651.origin.x, *&v650[8], type metadata accessor for FeedItem);
            v145 = v677;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v670 = v145;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D69992E8(0, v145[2] + 1, 1);
              v145 = v670;
            }

            v148 = v145[2];
            v147 = v145[3];
            v114 = v148 + 1;
            if (v148 >= v147 >> 1)
            {
              sub_1D69992E8((v147 > 1), v148 + 1, 1);
              v145 = v670;
            }

            v145[2] = v114;
            v677 = v145;
            sub_1D5BE6684(*&v650[8], v145 + v136 + v148 * v127, type metadata accessor for FeedItem);
            x = v651.origin.x;
            goto LABEL_17;
          }
        }

LABEL_15:

        x = v651.origin.x;
      }

      sub_1D5BE6754(*&x, type metadata accessor for FeedItem);
LABEL_17:
      ++v135;
      v133 = v643;
      if (v135 == *&v651.size.width)
      {
        goto LABEL_36;
      }
    }
  }

  v677 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v149 = v677;
  v150 = v677[2];
  v151 = MEMORY[0x1E69E7CC0];
  v636 = v150;
  if (v150)
  {
    *&v673 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v150, 0);
    v151 = v673;
    v152 = v149 + ((*(v642 + 80) + 32) & ~*(v642 + 80));
    v153 = *(v642 + 72);
    do
    {
      v154 = v644;
      sub_1D5BE64C0(v152, v644, type metadata accessor for FeedItem);
      v155 = FeedItem.identifier.getter();
      v157 = v156;
      sub_1D5BE6754(v154, type metadata accessor for FeedItem);
      *&v673 = v151;
      v159 = *(v151 + 16);
      v158 = *(v151 + 24);
      v160 = v151;
      if (v159 >= v158 >> 1)
      {
        sub_1D5BFC364((v158 > 1), v159 + 1, 1);
        v160 = v673;
      }

      *(v160 + 16) = v159 + 1;
      v161 = v160 + 16 * v159;
      *(v161 + 32) = v155;
      *(v161 + 40) = v157;
      v152 += v153;
      --v150;
      v151 = v160;
    }

    while (v150);
  }

  v162 = v647;
  v163 = *(*v647 + 120);
  sub_1D7094FD8(v647 + v163);
  v622 = (v162 + *(*v162 + 152));
  sub_1D7259F3C();
  v164 = v162[2];
  v600 = v162 + 2;
  sub_1D7259E7C();
  v166 = v165;
  v168 = v167;
  sub_1D725A76C();
  swift_beginAccess();
  v169 = *(v164 + 24);
  v170 = *(v169 + 16);
  v589 = v163;
  if (v170 && (v171 = sub_1D6D62C64(v166, v168), (v172 & 1) != 0))
  {
    v173 = *(*(v169 + 56) + 8 * v171);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v173 = sub_1D5BC9514(MEMORY[0x1E69E7CC0]);
  }

  sub_1D725A77C();
  v174 = v628 + 16;
  v175 = *(v628 + 16);
  v617 = *(*v647 + 112);
  (v175)(*&v649.y, v647 + v617, v632);
  v176 = v634;
  v177 = v634 + 16;
  *&v652 = *(v634 + 16);
  (v652)(*v650, v631, v637);

  *&v651.size.width = v173;

  v178 = sub_1D5B86020(v151);
  v626 = v151;

  sub_1D70A2F10(v179, v178, v676);

  v180 = v676[3];
  v181 = v630;
  *(v630 + 32) = v676[2];
  *(v181 + 48) = v180;
  *(v181 + 64) = v676[4];
  v182 = v676[1];
  *v181 = v676[0];
  *(v181 + 16) = v182;
  v183 = v640;
  v184 = v632;
  v645 = v174;
  v635 = v175;
  (v175)(v640, *&v649.y, v632);
  v185 = v639;
  v186 = v637;
  (v652)(v639, *v650, v637);
  *&v650[8] = sub_1D7259CCC();
  sub_1D7259E6C();
  v7 = v187;
  v189 = v188;
  sub_1D7259E7C();
  v191 = v190;
  v193 = v192;
  sub_1D7259E8C();
  v195 = v194;
  v197 = v196;
  sub_1D7259E9C();
  v199 = v198;
  v201 = v200;
  v202 = *(v176 + 8);
  v634 = v176 + 8;
  v627 = v202;
  v202(v185, v186);
  *&v203 = v628 + 8;
  v204 = v183;
  v205 = *(v628 + 8);
  v205(v204, v184);
  *(v181 + 80) = *&v650[8];
  *(v181 + 88) = v7;
  *(v181 + 96) = v189;
  *(v181 + 104) = v191;
  *(v181 + 112) = v193;
  *(v181 + 120) = v195;
  *(v181 + 128) = v197;
  *(v181 + 136) = v199;
  *(v181 + 144) = v201;
  *&v650[8] = v177;
  (v652)(*&v649.x, *v650, v186);
  v206 = (v181 + *(v641 + 24));
  sub_1D7259F2C();
  *v206 = v207;
  v206[1] = v208;
  v209 = sub_1D7259EBC();
  v210 = [v209 preferredContentSizeCategory];

  v211 = UIContentSizeCategory.description.getter(v210);
  v213 = v212;

  v206[2] = v211;
  v206[3] = v213;
  v214 = type metadata accessor for FeedLayoutCacheDynamicKey(0);
  sub_1D7259EDC();
  *(v206 + v214[7]) = UIAccessibilityIsInvertColorsEnabled();
  v215 = sub_1D7259EBC();
  v216 = [v215 legibilityWeight];

  v651.origin.x = v203;
  if (v216 == -1)
  {
    v219 = v205;
    LOBYTE(v216) = UIAccessibilityIsBoldTextEnabled();
    v218 = v651.size.width;
  }

  else if (v216)
  {
    v217 = v205;
    v218 = v651.size.width;
    v219 = v217;
    if (v216 != 1)
    {
      LOBYTE(v216) = UIAccessibilityIsBoldTextEnabled();
    }
  }

  else
  {
    v219 = v205;
    v218 = v651.size.width;
  }

  v220 = v637;
  v221 = v627;
  v627(*&v649.x, v637);
  v221(*v650, v220);
  v219(*&v649.y, v632);
  *(v206 + v214[8]) = v216;
  *(v206 + v214[9]) = v218;
  v222 = v677[2];

  if (v222)
  {
    v614 = v636 == *(v643 + 16);
  }

  else
  {
    v614 = 0;
  }

  v223 = v648;
  v224 = v646;
  v225 = v630;
  sub_1D5BE64C0(v630, v646, type metadata accessor for FeedLayoutCacheKey);
  v226 = v647;
  swift_beginAccess();
  sub_1D5BE699C(v223, v224);
  swift_endAccess();
  sub_1D5BE6754(v223, type metadata accessor for FeedLayoutCacheKey);
  v227 = v226[12];
  v228 = v226[13];
  __swift_project_boxed_opaque_existential_1(v226 + 9, v227);
  (*(v228 + 8))(&v670, v225, v227, v228);
  v673 = v670;
  v674 = v671;
  v675[0] = v672[0];
  *(v675 + 9) = *(v672 + 9);
  if (*(&v670 + 1))
  {

    sub_1D5BDBB64(v673, *(&v673 + 1));
    v229 = v622;
    v230 = v622[1];
    v231 = *(v622 + 2);
    v232 = *(v622 + 24);
    origin = v674.origin;
    size = v674.size;
    v235 = *&v675[0];
    if (v232)
    {
      v236 = *v622;
      goto LABEL_62;
    }

    Height = CGRectGetHeight(v674);
    v239 = *(v235 + 16);
    v240 = __OFADD__(v231, v239);
    v231 += v239;
    if (!v240)
    {
      v236 = 0;
      v230 = Height + v230;
LABEL_62:
      *v229 = v236;
      v229[1] = v230;
      *(v229 + 2) = v231;
      *(v229 + 24) = v232;
      sub_1D5BD4CD0(&v674, &v658);
      sub_1D70A34D0(&v670, qword_1EDF38050, &type metadata for FeedLayoutCacheItem);
      v241 = *(v675 + 1);
      v242 = *&v675[1];

      sub_1D70A2C9C(&v674);
      if (v614)
      {
        sub_1D70A3698(0, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
        sub_1D70A3560();
        v243 = swift_allocError();
        *v244 = origin;
        *(v244 + 16) = size;
        *(v244 + 32) = v235;
        *(v244 + 40) = v241;
        v235 = v243;
        *(v244 + 48) = v242;
        *(v244 + 56) = -126;
        swift_willThrow();
        sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
        result = (v627)(v631, v637);
        v246 = v647;
        v247 = v618;
        v248 = *(v647 + v618);
        v240 = __OFADD__(v248, 1);
        v249 = v248 + 1;
        if (!v240)
        {
          goto LABEL_228;
        }

        __break(1u);
      }

      sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
      result = (v627)(v631, v637);
      v250 = v606;
      *v606 = origin;
      v250[1] = size;
      *&v250[2].x = v235;
      v250[2].y = v241;
      v250[3].x = v242;
      LOBYTE(v250[3].y) = 2;
      v251 = v647;
      v252 = v618;
      v253 = *(v647 + v618);
      v240 = __OFADD__(v253, 1);
      v254 = v253 + 1;
      if (!v240)
      {
        goto LABEL_67;
      }

LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  if (v622[3])
  {
    v237 = 0;
  }

  else
  {
    v237 = *(v622 + 2);
  }

  v255 = v620;
  (v652)(v620, v631, v637);
  v114 = v608;
  v579 = *(v608 + 20);
  v127 = v255;
  v256 = v647;
  v635(v255 + v579, v647 + v617, v632);
  v132 = *(v256 + *(*v256 + 136));
  v257 = *(v114 + 24);
  v581 = *(*v256 + 128);
  sub_1D5BE64C0(v256 + v581, v255 + v257, type metadata accessor for FeedLayoutSolverOptions);

  v258 = sub_1D7259C1C();
  v259 = v638;
  v260 = *(*&v638 + 160);
  v261 = *v256;
  v580 = *(*v256 + 176);
  v262 = *(v256 + v580);
  *(v255 + *(v114 + 40)) = v132;
  *(v255 + *(v114 + 28)) = v237;
  *(v255 + *(v114 + 32)) = v263;
  *(v255 + *(v114 + 36)) = v260;
  *(v255 + *(v114 + 44)) = v262;
  *(v255 + *(v114 + 48)) = v651.size.width;
  v6 = *(*&v259 + 152);
  x = MEMORY[0x1E69E7CC8];
  v636 = *(*&v6 + 16);
  if (v636)
  {
    v264 = 0;
    v265 = *(v261 + 184);
    v640 = (v256 + *(v261 + 192));
    v641 = v265;
    v635 = (*&v6 + 32);
    v633 = v6;
LABEL_72:
    if (v264 >= *(*&v6 + 16))
    {
      __break(1u);
      goto LABEL_154;
    }

    v651.size.width = x;
    v266 = *(v635 + 8 * v264 + 5);
    v639 = v264 + 1;
    v267 = v266 + 64;
    v268 = 1 << *(v266 + 32);
    if (v268 < 64)
    {
      v269 = ~(-1 << v268);
    }

    else
    {
      v269 = -1;
    }

    *&v6 = v269 & *(v266 + 64);
    v270 = (v268 + 63) >> 6;
    v648 = v266;

    v271 = 0;
    v646 = v267;
    v645 = v270;
    while (v6 != 0.0)
    {
      v276 = v271;
LABEL_84:
      v277 = (v276 << 10) | (16 * __clz(__rbit64(*&v6)));
      v278 = *(v648 + 56);
      v279 = *(v648 + 48) + v277;
      v114 = *(v279 + 8);
      v651.origin.x = *v279;
      v280 = v651.origin.x;
      v281 = v640[3];
      v282 = v640[4];
      v652 = *(v278 + v277);
      v677 = __swift_project_boxed_opaque_existential_1(v640, v281);
      v653.origin = v652;
      *&v650[8] = *(v282 + 8);

      (*&v650[8])(&v658, &v653, v647 + v641, COERCE_CGFLOAT(*&v280), v114, v281, v282);

      v649 = v658.origin;
      *v650 = v658.size;
      *&v652 = *(&v659[0] + 1);
      v677 = *&v659[0];
      v283 = v651.size.width;
      x = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      v653.origin.x = v283;
      v132 = *&v651.origin.x;
      v127 = sub_1D5B69D90(*&v651.origin.x, v114);
      v285 = *(*&v283 + 16);
      v286 = (v284 & 1) == 0;
      v287 = v285 + v286;
      if (__OFADD__(v285, v286))
      {
        goto LABEL_147;
      }

      v237 = v284;
      if (*(*&v283 + 24) >= v287)
      {
        if ((LOBYTE(x) & 1) == 0)
        {
          sub_1D6D80330();
        }
      }

      else
      {
        sub_1D6D69AF0(v287, *&x);
        v288 = sub_1D5B69D90(v132, v114);
        if ((v237 & 1) != (v289 & 1))
        {
          goto LABEL_236;
        }

        v127 = v288;
      }

      *&v6 &= *&v6 - 1;
      if (v237)
      {

        v651.size.width = v653.origin.x;
        v272 = (*(*&v653.origin.x + 56) + 48 * v127);
        v127 = *(v272 + 2);
        v237 = *(v272 + 3);
        v273 = v649.y;
        *v272 = v649.x;
        v272[1] = v273;
        v274 = *&v650[8];
        v272[2] = *v650;
        *(v272 + 3) = v274;
        v275 = v652;
        *(v272 + 4) = v677;
        *(v272 + 5) = v275;
      }

      else
      {
        v290 = v653.origin.x;
        *(*&v653.origin.x + 8 * (v127 >> 6) + 64) |= 1 << v127;
        v291 = (*(*&v290 + 48) + 16 * v127);
        *v291 = v132;
        v291[1] = v114;
        v292 = (*(*&v290 + 56) + 48 * v127);
        v293 = v649.y;
        *v292 = v649.x;
        v292[1] = v293;
        v294 = *&v650[8];
        v292[2] = *v650;
        *(v292 + 3) = v294;
        v295 = v652;
        *(v292 + 4) = v677;
        *(v292 + 5) = v295;
        v296 = *(*&v290 + 16);
        v240 = __OFADD__(v296, 1);
        v297 = v296 + 1;
        if (v240)
        {
          __break(1u);
          goto LABEL_151;
        }

        v651.size.width = v290;
        *(*&v290 + 16) = v297;
      }

      v271 = v276;
      v267 = v646;
      v270 = v645;
    }

    while (1)
    {
      v276 = v271 + 1;
      if (__OFADD__(v271, 1))
      {
        break;
      }

      if (v276 >= v270)
      {

        v264 = v639;
        x = v651.size.width;
        v6 = v633;
        if (v639 == v636)
        {
          goto LABEL_93;
        }

        goto LABEL_72;
      }

      v6 = *(v267 + 8 * v276);
      ++v271;
      if (v6 != 0.0)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
    goto LABEL_102;
  }

LABEL_93:
  *&v650[8] = type metadata accessor for FeedGroupRegion();
  v658.size.height = *&v650[8];
  *v650 = sub_1D5B85FD8(&qword_1EDF39740, type metadata accessor for FeedGroupRegion, &protocol conformance descriptor for FeedGroupRegion);
  *&v659[0] = *v650;
  v298 = v638;
  v658.origin.x = v638;
  v299 = v647;
  v300 = *(*v647 + 160);
  swift_beginAccess();
  v301 = *(v299 + v300);
  v302 = v298;

  v303 = v602;
  sub_1D7259CAC();
  sub_1D725A37C();
  v304 = *(v615 + 8);
  v615 += 8;
  *&v652 = v304;
  v304(v303, v609);
  v305 = v611;
  v306 = v605;
  *&v605[*(v611 + 56)] = MEMORY[0x1E69E7CC8];
  *&v306[v305[15]] = MEMORY[0x1E69E7CC0];
  *&v306[v305[19]] = 0;
  sub_1D5B68374(&v658, (v306 + 8));
  *(v306 + 6) = v301;
  v653.origin.x = v6;
  sub_1D5D60AB4(0, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
  sub_1D5D56E88(&qword_1EDF1B480, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E6328]);
  sub_1D5BCAF5C();

  *(v306 + 9) = sub_1D72623BC();
  *(v306 + 10) = v6;
  v307 = *(*&v302 + 72);
  *(v306 + 7) = v307;
  swift_bridgeObjectRetain_n();

  v308 = sub_1D5BCB16C(v307);

  *(v306 + 8) = v308;
  v306[v305[16]] = 0;
  v310 = v612;
  v309 = v613;
  v311 = *(v612 + 16);
  v312 = v616;
  v311(&v306[v305[13]], v616, v613);
  *v306 = *(*&v638 + 160);
  v651.size.width = x;
  *(v306 + 12) = x;
  v270 = v306;
  v306[88] = 0;
  v313 = v604;
  v311(v604, v312, v309);
  v314 = (*(v310 + 88))(v313, v309);
  if (v314 == *MEMORY[0x1E69D7210])
  {
    v132 = *&v638;
    swift_beginAccess();
    v315 = *(v132 + 265);
    v276 = v603;
    v114 = v626;
    if (v315 & 1) != 0 || (*(v132 + 248))
    {
      v316 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_103:
      v318 = 264;
      v319 = 256;
      goto LABEL_106;
    }

LABEL_102:
    v315 = 0;
    v316 = *(v132 + 240);
    goto LABEL_103;
  }

  v276 = v603;
  v114 = v626;
  if (v314 != *MEMORY[0x1E69D7218])
  {
    goto LABEL_237;
  }

  v317 = v638;
  swift_beginAccess();
  v315 = *(*&v317 + 265);
  if (v315 & 1) != 0 || (*(*&v317 + 216))
  {
    v316 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v315 = 0;
    v316 = *(*&v317 + 208);
  }

  v318 = 232;
  v319 = 224;
LABEL_106:
  v320 = v643;
  v321 = v611;
  *(v270 + *(v611 + 72)) = v316;
  if ((v315 | *(*&v638 + v318)))
  {
    v322 = 0;
  }

  else
  {
    v322 = *(*&v638 + v319);
  }

  *(v270 + *(v321 + 68)) = v322;
  v323 = *(v320 + 16);
  if (v323)
  {
    v324 = v320 + ((*(v642 + 80) + 32) & ~*(v642 + 80));
    v325 = *(v642 + 72);

    do
    {
      sub_1D5BE64C0(v324, v276, type metadata accessor for FeedItem);
      sub_1D5BCEE08(v276);
      sub_1D5BE6754(v276, type metadata accessor for FeedItem);
      v324 += v325;
      --v323;
    }

    while (v323);
  }

  else
  {
  }

  (*(v612 + 8))(v616, v613);

  sub_1D5BE6684(v270, v619, type metadata accessor for GroupLayoutBindingContext);
  __swift_destroy_boxed_opaque_existential_1(&v658);
  sub_1D5BCFEDC(v114);

  v326 = v647;
  LODWORD(v651.origin.x) = v326[*(*v326 + 232)];
  if (LOBYTE(v651.origin.x))
  {
    v327 = v621;
    sub_1D72629AC();
    if (v327 != 0.0)
    {

      sub_1D5BE6754(v619, type metadata accessor for GroupLayoutBindingContext);
      sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
      v627(v631, v637);

      result = sub_1D5BE6754(v620, type metadata accessor for GroupLayoutContext);
      v246 = v647;
      v247 = v618;
      v328 = *(v647 + v618);
      v240 = __OFADD__(v328, 1);
      v249 = v328 + 1;
      if (!v240)
      {
        goto LABEL_228;
      }

      __break(1u);
    }

    v621 = v327;
    v326 = v647;
  }

  v329 = v601;
  sub_1D7259CAC();
  v330 = *(*&v638 + 88);
  v331 = *(*&v638 + 96);
  v332 = *(*&v638 + 104);
  v333 = *(*&v638 + 112);
  v334 = *(*&v638 + 120);
  v335 = *(*&v638 + 128);
  v658.origin.x = *(*&v638 + 80);
  v658.origin.y = v330;
  v658.size.width = v331;
  v658.size.height = v332;
  *&v659[0] = v333;
  *(&v659[0] + 1) = v334;
  *&v659[1] = v335;
  sub_1D5D64F48(*&v658.origin.x, *&v330, *&v331, *&v332, v333, v334, v335);
  v336 = GroupLayoutInventory.layouts(column:kind:)(v329, &v658);
  sub_1D5BC6C20(*&v658.origin.x, *&v658.origin.y, *&v658.size.width, *&v658.size.height, *&v659[0], *(&v659[0] + 1), *&v659[1]);
  (v652)(v329, v609);
  v7 = CACurrentMediaTime();
  v337 = v607;
  sub_1D5BE64C0(v619, v607, type metadata accessor for GroupLayoutBindingContext);
  v338 = *(v326 + 12);
  v339 = *(v326 + 13);
  __swift_project_boxed_opaque_existential_1(v326 + 9, v338);
  v653.origin.x = v624;
  v653.origin.y = v623;
  v340 = (*(v339 + 16))(v630, &v653, &v326[v581], v338, v339);
  *&v652 = v336;
  if (!v341)
  {
    v351 = v337;
LABEL_141:
    sub_1D5BE6754(v351, type metadata accessor for GroupLayoutBindingContext);
    memset(&v658, 0, sizeof(v658));
    memset(v659, 0, 24);
    goto LABEL_158;
  }

  v342 = v340;
  v343 = v341;
  v344 = *(v336 + 16);
  if (!v344)
  {
    v350 = v647;
LABEL_133:
    v352 = *(v350 + *(*v350 + 168));
    sub_1D5BD20D0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v353 = swift_allocObject();
    *(v353 + 16) = xmmword_1D7279970;
    v354 = MEMORY[0x1E69E6158];
    *(v353 + 56) = MEMORY[0x1E69E6158];
    v355 = sub_1D5B7E2C0();
    v356 = v625;
    *(v353 + 32) = v610;
    *(v353 + 40) = v356;
    *(v353 + 96) = v354;
    *(v353 + 104) = v355;
    *&v649.y = v355;
    *(v353 + 64) = v355;
    *(v353 + 72) = v342;
    v677 = v353;
    *(v353 + 80) = v343;
    v357 = *(v336 + 16);
    if (v357)
    {
      v649.x = v352;
      *&v656.origin.x = MEMORY[0x1E69E7CC0];

      sub_1D5BFC364(0, v357, 0);
      v358 = v656.origin.x;
      v359 = v336 + 32;
      do
      {
        sub_1D5B68374(v359, &v653);
        __swift_project_boxed_opaque_existential_1(&v653, *&v653.size.height);
        v360 = sub_1D725AA4C();
        v362 = v361;
        __swift_destroy_boxed_opaque_existential_1(&v653);
        v656.origin.x = v358;
        v364 = *(*&v358 + 16);
        v363 = *(*&v358 + 24);
        if (v364 >= v363 >> 1)
        {
          sub_1D5BFC364((v363 > 1), v364 + 1, 1);
          v358 = v656.origin.x;
        }

        *(*&v358 + 16) = v364 + 1;
        v365 = *&v358 + 16 * v364;
        *(v365 + 32) = v360;
        *(v365 + 40) = v362;
        v359 += 40;
        --v357;
      }

      while (v357);
      v352 = v649.x;
    }

    else
    {

      v358 = MEMORY[0x1E69E7CC0];
    }

    v366 = MEMORY[0x1E69E6158];
    v367 = MEMORY[0x1DA6F9D20](*&v358, MEMORY[0x1E69E6158]);
    v369 = v368;

    v370 = v677;
    v371 = v649.y;
    v677[17] = v366;
    v370[18] = v371;
    *(v370 + 14) = v367;
    *(v370 + 15) = v369;
    v372 = sub_1D7262EDC();
    sub_1D725C30C("%{public}@ Failed to find fast path layout, layout=%{public}@, available=%{public}@", 83, 2, &dword_1D5B42000, *&v352, v372, v370);

    v351 = v607;
    goto LABEL_141;
  }

  v345 = 0;
  v346 = v336 + 32;
  while (1)
  {
    if (v345 >= *(v336 + 16))
    {
      __break(1u);
      goto LABEL_231;
    }

    sub_1D5B68374(v346, &v663);
    __swift_project_boxed_opaque_existential_1(&v663, v665);
    if (sub_1D725AA4C() == v342 && v343 == v347)
    {
      break;
    }

    v349 = sub_1D72646CC();

    if (v349)
    {
      goto LABEL_143;
    }

    ++v345;
    __swift_destroy_boxed_opaque_existential_1(&v663);
    v346 += 40;
    v350 = v647;
    if (v344 == v345)
    {
      goto LABEL_133;
    }
  }

LABEL_143:

  sub_1D5B63F14(&v663, &v656);
  sub_1D5B63F14(&v656, &v653);
  v373 = *(v647 + *(*v647 + 168));
  sub_1D5BD20D0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v649.y = v374;
  v375 = swift_allocObject();
  *(v375 + 16) = xmmword_1D7270C10;
  v376 = MEMORY[0x1E69E6158];
  *(v375 + 56) = MEMORY[0x1E69E6158];
  x = COERCE_DOUBLE(sub_1D5B7E2C0());
  *(v375 + 64) = x;
  v377 = v625;
  *(v375 + 32) = v610;
  *(v375 + 40) = v377;
  __swift_project_boxed_opaque_existential_1(&v653, *&v653.size.height);

  v378 = sub_1D725AA4C();
  *(v375 + 96) = v376;
  *(v375 + 104) = x;
  *(v375 + 72) = v378;
  *(v375 + 80) = v379;
  v380 = sub_1D7262EDC();
  v677 = v373;
  sub_1D725C30C("%{public}@ Found layout for fast cache path, layout=%{public}@", 62, 2, &dword_1D5B42000, v373, v380, v375);

  v381 = v607;
  sub_1D5BE64C0(v607, v597, type metadata accessor for GroupLayoutBindingContext);
  v382 = v620;
  sub_1D5BE64C0(v620, v596, type metadata accessor for GroupLayoutContext);
  v383 = v653.size.height;
  v384 = *&v654[0];
  __swift_project_boxed_opaque_existential_1(&v653, *&v653.size.height);
  v132 = v591;
  v385 = v621;
  (*(v384 + 48))(v381, v382, COERCE_CGFLOAT(*&v383), v384);
  v6 = v385;
  if (v385 != 0.0)
  {
    goto LABEL_156;
  }

  v114 = v590;
  v127 = v588;
  if ((*(v590 + 48))(v132, 1, v588) == 1)
  {
    sub_1D5BEFFE8(v132, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
    v114 = v596;
    v127 = v597;
    goto LABEL_155;
  }

LABEL_148:
  v276 = v584;
  (*(v114 + 32))(v584, v132, v127);
  v386 = v583;
  sub_1D7259BFC();
  sub_1D5B85FD8(&unk_1EDF3C090, MEMORY[0x1E69D7138], MEMORY[0x1E69D7140]);
  v387 = sub_1D7261FBC();
  v388 = v386;
  v237 = *(v114 + 8);
  v237(v388, v127);
  v389 = v127;
  v297 = v114 + 8;
  v114 = v596;
  v127 = v597;
  if (v387)
  {
    v237(v276, v389);
    goto LABEL_155;
  }

LABEL_151:
  v590 = v297;
  v132 = v582;
  sub_1D7259D0C();
  v258 = v276;
  if (v6 != 0.0)
  {
    v237(v276, v588);
    goto LABEL_156;
  }

LABEL_154:
  v237(v258, v588);
  (*(v628 + 40))(v114 + *(v608 + 20), v132, v632);
LABEL_155:
  v390 = v653.size.height;
  v391 = *&v654[0];
  __swift_project_boxed_opaque_existential_1(&v653, *&v653.size.height);
  (*(v391 + 56))(&v656, v127, v114, COERCE_CGFLOAT(*&v390), v391);
  if (v6 == 0.0)
  {
    v621 = 0.0;
    sub_1D5BD20D0(0, &qword_1EDF196D0, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType, MEMORY[0x1E69E6F90]);
    v575 = swift_allocObject();
    *(v575 + 16) = xmmword_1D7273AE0;
    sub_1D5B68374(&v656, v575 + 32);
    sub_1D5BE6754(v127, type metadata accessor for GroupLayoutBindingContext);
    sub_1D5BE6754(v607, type metadata accessor for GroupLayoutBindingContext);
    sub_1D5B63F14(&v656, &v658.size);
    *&v658.origin.x = v575;
    *&v658.origin.y = MEMORY[0x1E69E7CC0];
    v399 = v114;
  }

  else
  {
LABEL_156:
    v621 = 0.0;
    v392 = swift_allocObject();
    *(v392 + 16) = xmmword_1D7279970;
    v393 = MEMORY[0x1E69E6158];
    *(v392 + 56) = MEMORY[0x1E69E6158];
    *(v392 + 64) = x;
    v394 = v625;
    *(v392 + 32) = v610;
    *(v392 + 40) = v394;
    __swift_project_boxed_opaque_existential_1(&v653, *&v653.size.height);

    v395 = sub_1D725AA4C();
    *(v392 + 96) = v393;
    *(v392 + 104) = x;
    *(v392 + 72) = v395;
    *(v392 + 80) = v396;
    v656.origin.x = 0.0;
    v656.origin.y = -2.68156159e154;
    *&v663 = v6;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v397 = v656.origin;
    *(v392 + 136) = v393;
    *(v392 + 144) = x;
    *(v392 + 112) = v397;
    v398 = sub_1D7262EDC();
    sub_1D725C30C("%{public}@ Failed to bind fast cache path layout, layout=%{public}@, error=%{public}@", 85, 2, &dword_1D5B42000, v677, v398, v392);

    sub_1D5BE6754(v597, type metadata accessor for GroupLayoutBindingContext);
    sub_1D5BE6754(v607, type metadata accessor for GroupLayoutBindingContext);
    memset(&v658, 0, sizeof(v658));
    memset(v659, 0, 24);
    v399 = v596;
  }

  sub_1D5BE6754(v399, type metadata accessor for GroupLayoutContext);
  __swift_destroy_boxed_opaque_existential_1(&v653);
LABEL_158:
  v400 = v620;
  if (*&v658.origin.x)
  {
    v667 = v658.origin;
    v668[0] = v658.size;
    v668[1] = v659[0];
    v669 = *&v659[1];
    v401 = 1;
  }

  else
  {
    sub_1D70A34D0(&v658, &qword_1EDF36CF0, &type metadata for FeedLayoutSolverResult);
    v402 = v598;
    v403 = sub_1D5BE64C0(v619, v598, type metadata accessor for GroupLayoutBindingContext);
    MEMORY[0x1EEE9AC00](v403, v404);
    v405 = v647;
    *(&v578 - 4) = v400;
    *(&v578 - 3) = v405;
    v406 = v610;
    v407 = v625;
    v576 = v610;
    v577 = v625;
    v408 = v621;
    v409 = sub_1D5BEE384(sub_1D70A3540, (&v578 - 6), v652);
    v621 = v408;
    v410 = sub_1D70A0D2C(v406, v407, v409, v402, v400);
    v412 = v411;

    sub_1D70A1C30(v410, v668);
    sub_1D5BE6754(v402, type metadata accessor for GroupLayoutBindingContext);
    v401 = 0;
    *&v667.x = v410;
    v667.y = v412;
  }

  sub_1D70A2E30(v668, &v658, &qword_1EDF22A98, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType);
  LODWORD(v677) = v401;
  if (!*&v658.size.height)
  {
    goto LABEL_170;
  }

  sub_1D5B63F14(&v658, &v663);
  v413 = *(v647 + *(*v647 + 168));
  sub_1D5BD20D0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v414 = swift_allocObject();
  *&v650[8] = xmmword_1D7274590;
  *(v414 + 16) = xmmword_1D7274590;
  v415 = MEMORY[0x1E69E6158];
  *(v414 + 56) = MEMORY[0x1E69E6158];
  v416 = sub_1D5B7E2C0();
  v417 = v625;
  *(v414 + 32) = v610;
  *(v414 + 40) = v417;
  if (v401)
  {
    v418 = 1953718630;
  }

  else
  {
    v418 = 2003790963;
  }

  *(v414 + 96) = v415;
  *(v414 + 104) = v416;
  *(v414 + 64) = v416;
  *(v414 + 72) = v418;
  *(v414 + 80) = 0xE400000000000000;

  v419 = CACurrentMediaTime();
  v420 = MEMORY[0x1E69E6438];
  *(v414 + 136) = MEMORY[0x1E69E63B0];
  *(v414 + 144) = v420;
  *(v414 + 112) = (v419 - v7) * 1000.0;
  __swift_project_boxed_opaque_existential_1(&v663, v665);
  v421 = sub_1D725AA4C();
  *(v414 + 176) = v415;
  *(v414 + 184) = v416;
  *(v414 + 152) = v421;
  *(v414 + 160) = v422;
  v423 = sub_1D7262EDC();
  sub_1D725C30C("%{public}@ Solver bind %{public}@, time=%.3fms, layout=%{public}@", 65, 2, &dword_1D5B42000, v413, v423, v414);

  x_low = LOBYTE(v651.origin.x);
  if (!LODWORD(v651.origin.x))
  {
LABEL_184:
    __swift_project_boxed_opaque_existential_1(&v663, v665);
    v477 = sub_1D725AA4C();
    sub_1D5BDBB64(v477, v478);

    v479 = CACurrentMediaTime();
    v480 = v665;
    v481 = v666;
    __swift_project_boxed_opaque_existential_1(&v663, v665);
    (*(v481 + 32))(&v658, v480, v481);
    v482 = v658.origin.y;
    v483 = v658.size;
    *&v652 = *(&v659[0] + 1);
    v484 = *v659;
    *v650 = *&v659[1];
    v485 = swift_allocObject();
    *(v485 + 16) = *&v650[8];
    v486 = MEMORY[0x1E69E6158];
    *(v485 + 56) = MEMORY[0x1E69E6158];
    *(v485 + 64) = v416;
    v487 = v625;
    *(v485 + 32) = v610;
    *(v485 + 40) = v487;
    *(v485 + 96) = v486;
    *(v485 + 104) = v416;
    *(v485 + 72) = v418;
    *(v485 + 80) = 0xE400000000000000;
    v488 = CACurrentMediaTime();
    *(v485 + 136) = MEMORY[0x1E69E63B0];
    *(v485 + 144) = MEMORY[0x1E69E6438];
    *(v485 + 112) = (v488 - v479) * 1000.0;
    __swift_project_boxed_opaque_existential_1(&v663, v665);
    v489 = sub_1D725AA4C();
    *(v485 + 176) = v486;
    *(v485 + 184) = v416;
    *(v485 + 152) = v489;
    *(v485 + 160) = v490;
    v491 = sub_1D7262EDC();
    sub_1D725C30C("%{public}@ Solver layout %{public}@, time=%.3fms, layout=%{public}@", 67, 2, &dword_1D5B42000, v413, v491, v485);

    if (x_low)
    {
      v492 = v621;
      sub_1D72629AC();
      v493 = v620;
      v621 = v492;
      v494 = MEMORY[0x1E69E7CC0];
      if (v492 == 0.0)
      {
LABEL_190:
        v496 = v652;
        v497 = *(v643 + 16);
        if (!v497)
        {

          v499 = MEMORY[0x1E69E7CC0];
LABEL_202:
          sub_1D70A2E30(v592, v660, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
          v514 = v661;
          v515 = *v650;
          if (v661)
          {
            v516 = v662;
            __swift_project_boxed_opaque_existential_1(v660, v661);
            v517 = v647;
            LOBYTE(v658.origin.x) = *(v647 + v580);
            v518 = *(*&v638 + 272);
            v519 = *(v516 + 8);

            v520 = v519(&v517[v589], &v517[v617], &v658, v518, v514, v516, v482, v483.width, v483.height, v484);
            __swift_destroy_boxed_opaque_existential_1(v660);
          }

          else
          {

            sub_1D70A2C0C(v660, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
            v520 = MEMORY[0x1E69E7CC0];
            v517 = v647;
          }

          v656.origin.x = v482;
          *&v656.origin.y = v483;
          v656.size.height = v484;
          *v657 = v499;
          *(&v657[0] + 1) = v515;
          *&v657[1] = v520;
          BYTE8(v657[1]) = v677;
          sub_1D5B68374(&v663, v655);
          __swift_project_boxed_opaque_existential_1(v655, v655[3]);
          sub_1D5BD4CD0(&v656, &v653);
          v521 = sub_1D725AA4C();
          v523 = v522;
          v653 = v656;
          v654[0] = v657[0];
          *(v654 + 9) = *(v657 + 9);
          __swift_destroy_boxed_opaque_existential_1(v655);
          *&v658.origin.x = v521;
          v658.origin.y = v523;
          v658.size = v653.origin;
          v659[0] = v653.size;
          v659[1] = v654[0];
          *(&v659[1] + 9) = *(v654 + 9);
          v524 = *(v517 + 12);
          v525 = *(v517 + 13);
          __swift_project_boxed_opaque_existential_1(v517 + 9, v524);
          v654[0] = v659[0];
          v654[1] = v659[1];
          *(&v654[1] + 9) = *(&v659[1] + 9);
          v653 = v658;
          *v655 = v624;
          *&v655[1] = v623;
          (*(v525 + 24))(v630, &v653, v655, &v517[v581], v524, v525);
          sub_1D5BDF80C(&v658);
          v526 = v622;
          v527 = v622[1];
          v528 = *(v622 + 2);
          v529 = *(v622 + 24);
          if (v529)
          {
            v530 = *v622;
            v447 = v620;
          }

          else
          {
            v531 = *&v657[0];
            v532 = CGRectGetHeight(v656);
            v533 = *(v531 + 16);
            v240 = __OFADD__(v528, v533);
            v528 += v533;
            v447 = v620;
            if (v240)
            {
              goto LABEL_235;
            }

            v530 = 0;
            v527 = v532 + v527;
            v526 = v622;
          }

          *v526 = v530;
          v526[1] = v527;
          *(v526 + 2) = v528;
          *(v526 + 24) = v529;
          if (v614)
          {
            v652 = v657[0];
            v534 = *&v657[1];
            v535 = BYTE8(v657[1]) & 3 | 0x80;
            sub_1D70A3698(0, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
            sub_1D70A3560();
            v651.origin = v656.size;
            v651.size = v656.origin;
            swift_allocError();
            v536 = v651.origin;
            *v537 = v651.size;
            *(v537 + 16) = v536;
            *(v537 + 32) = v652;
            *(v537 + 48) = v534;
            *(v537 + 56) = v535;
            swift_willThrow();
            sub_1D5BD5464(&v667);
            sub_1D5BE6754(v619, type metadata accessor for GroupLayoutBindingContext);
            sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
            v627(v631, v637);
            sub_1D5BE6754(v447, type metadata accessor for GroupLayoutContext);
            result = __swift_destroy_boxed_opaque_existential_1(&v663);
            v246 = v647;
            v247 = v618;
            v538 = *(v647 + v618);
            v240 = __OFADD__(v538, 1);
            v249 = v538 + 1;
            if (!v240)
            {
LABEL_228:
              *(v246 + v247) = v249;
              return result;
            }

            __break(1u);
          }

          sub_1D5BD5464(&v667);
          sub_1D5BE6754(v619, type metadata accessor for GroupLayoutBindingContext);
          sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
          v627(v631, v637);
          sub_1D5BE6754(v447, type metadata accessor for GroupLayoutContext);
          v539 = v656.size;
          p_x = &v606->x;
          *v606 = v656.origin;
          p_x[1] = v539;
          p_x[2] = v657[0];
          *(p_x + 41) = *(v657 + 9);
          result = __swift_destroy_boxed_opaque_existential_1(&v663);
          v251 = v647;
          v252 = v618;
          v541 = *(v647 + v618);
          v240 = __OFADD__(v541, 1);
          v254 = v541 + 1;
          if (v240)
          {
            __break(1u);
            goto LABEL_216;
          }

LABEL_67:
          *(v251 + v252) = v254;
          return result;
        }

        v658.origin.x = v494;
        v498 = v643;
        sub_1D5BDF6B0(0, v497, 0);
        v499 = v658.origin.x;
        v500 = v498 + ((*(v642 + 80) + 32) & ~*(v642 + 80));
        v501 = *(v642 + 72);
        while (1)
        {
          sub_1D5BE64C0(v500, v629, type metadata accessor for FeedItem);
          v502 = FeedItem.identifier.getter();
          if (!*(v496 + 16))
          {
            break;
          }

          v504 = sub_1D5B69D90(v502, v503);
          v506 = v505;

          if ((v506 & 1) == 0)
          {
            goto LABEL_196;
          }

          v507 = *(*(v496 + 56) + 8 * v504);

          sub_1D5BE6754(v629, type metadata accessor for FeedItem);
LABEL_197:
          v658.origin.x = v499;
          v513 = *(*&v499 + 16);
          v512 = *(*&v499 + 24);
          if (v513 >= v512 >> 1)
          {
            sub_1D5BDF6B0((v512 > 1), v513 + 1, 1);
            v499 = v658.origin.x;
          }

          *(*&v499 + 16) = v513 + 1;
          *(*&v499 + 8 * v513 + 32) = v507;
          v500 += v501;
          --v497;
          v496 = v652;
          if (!v497)
          {

            goto LABEL_202;
          }
        }

LABEL_196:
        v507 = swift_allocObject();
        v508 = v629;
        v509 = FeedItem.identifier.getter();
        v511 = v510;
        sub_1D5BE6754(v508, type metadata accessor for FeedItem);
        *(v507 + 16) = v509;
        *(v507 + 24) = v511;
        goto LABEL_197;
      }

      sub_1D5BD5464(&v667);
      sub_1D5BE6754(v619, type metadata accessor for GroupLayoutBindingContext);
      sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
      v627(v631, v637);

      sub_1D5BE6754(v493, type metadata accessor for GroupLayoutContext);
      result = __swift_destroy_boxed_opaque_existential_1(&v663);
      v251 = v647;
      v252 = v618;
      v495 = *(v647 + v618);
      v240 = __OFADD__(v495, 1);
      v254 = v495 + 1;
      if (!v240)
      {
        goto LABEL_67;
      }

      __break(1u);
    }

    v494 = MEMORY[0x1E69E7CC0];
    goto LABEL_190;
  }

  v425 = v621;
  sub_1D72629AC();
  if (v425 == 0.0)
  {
    v621 = 0.0;
    goto LABEL_184;
  }

  sub_1D5BD5464(&v667);
  sub_1D5BE6754(v619, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
  v627(v631, v637);

  sub_1D5BE6754(v620, type metadata accessor for GroupLayoutContext);
  result = __swift_destroy_boxed_opaque_existential_1(&v663);
  v246 = v647;
  v247 = v618;
  v426 = *(v647 + v618);
  v240 = __OFADD__(v426, 1);
  v249 = v426 + 1;
  if (!v240)
  {
    goto LABEL_228;
  }

  __break(1u);
LABEL_170:
  sub_1D70A2C0C(&v658, &qword_1EDF22A98, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType);
  sub_1D5BAAE44(0, v427);
  v429 = *(v428 + 80);
  v430 = *(*&v638 + 32);
  v431 = *(*&v638 + 40);
  v433 = *(*&v638 + 88);
  v649.x = *(*&v638 + 80);
  v432 = v649.x;
  v434 = *(*&v638 + 96);
  v435 = *(*&v638 + 104);
  v437 = *(*&v638 + 112);
  v648 = *(*&v638 + 120);
  v436 = v648;
  v649.y = *(*&v638 + 128);
  v438 = v649.y;
  v439 = v599;
  *v599 = v430;
  *(v439 + 1) = v431;
  v439[2] = v432;
  *(v439 + 3) = v433;
  *(v439 + 4) = v434;
  *(v439 + 5) = v435;
  *(v439 + 6) = v437;
  *(v439 + 7) = v436;
  v440 = v652;
  v439[8] = v438;
  *(v439 + 9) = v440;
  v441 = v667.y;
  v439[10] = v667.x;
  v439[11] = v441;
  *&v652 = type metadata accessor for GroupLayoutBindingContext;
  sub_1D5BE64C0(v619, v439 + v429, type metadata accessor for GroupLayoutBindingContext);
  swift_storeEnumTagMultiPayload();
  v651.origin.x = *(v647 + *(*v647 + 168));

  sub_1D5D64F48(*&v649.x, v433, v434, v435, v437, v648, *&v649.y);

  v442 = sub_1D7262EBC();
  sub_1D5BD20D0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v443 = swift_allocObject();
  *(v443 + 16) = xmmword_1D7273AE0;
  *(v443 + 56) = MEMORY[0x1E69E6158];
  *(v443 + 64) = sub_1D5B7E2C0();
  v444 = v625;
  *(v443 + 32) = v610;
  *(v443 + 40) = v444;
  sub_1D725C30C("%{public}@ Failed to bind any layouts for group", 47, 2, &dword_1D5B42000, *&v651.origin.x, v442, v443);

  v445 = v595;
  sub_1D5BE64C0(v439, v595, type metadata accessor for InternalErrorViewModel);
  v446 = v598;
  sub_1D5BE64C0(v619, v598, v652);
  v447 = v620;
  v448 = v593;
  sub_1D5BE64C0(v620, v593, type metadata accessor for GroupLayoutContext);
  _s13InternalErrorCMa(0);
  swift_allocObject();
  *&v649.y = sub_1D700F0E4(v445, v446, v448);
  sub_1D700E894(v447, &v658);
  v449 = *&v659[1];
  if (!v614)
  {
    v462 = v658.origin.y;
    v463 = v658.size;
    v464 = *v659;
    v465 = *(v643 + 16);
    if (v465)
    {
      v651.origin.x = *(v659 + 1);
      *&v652 = *&v659[1];
      *&v658.origin.x = MEMORY[0x1E69E7CC0];
      v466 = v643;
      sub_1D5BDF6B0(0, v465, 0);
      v467 = v658.origin.x;
      v468 = v466 + ((*(v642 + 80) + 32) & ~*(v642 + 80));
      v469 = *(v642 + 72);
      do
      {
        v470 = v644;
        sub_1D5BE64C0(v468, v644, type metadata accessor for FeedItem);
        v471 = swift_allocObject();
        v472 = FeedItem.identifier.getter();
        v474 = v473;
        sub_1D5BE6754(v470, type metadata accessor for FeedItem);
        *(v471 + 16) = v472;
        *(v471 + 24) = v474;
        v658.origin.x = v467;
        v476 = *(*&v467 + 16);
        v475 = *(*&v467 + 24);
        if (v476 >= v475 >> 1)
        {
          sub_1D5BDF6B0((v475 > 1), v476 + 1, 1);
          v467 = v658.origin.x;
        }

        *(*&v467 + 16) = v476 + 1;
        *(*&v467 + 8 * v476 + 32) = v471;
        v468 += v469;
        --v465;
      }

      while (v465);

      v447 = v620;
      v449 = v652;
    }

    else
    {

      v467 = MEMORY[0x1E69E7CC0];
    }

    v658.origin.x = v462;
    *&v658.origin.y = v463;
    v658.size.height = v464;
    *v659 = v467;
    *(&v659[0] + 1) = v449;
    v546 = MEMORY[0x1E69E7CC0];
    *&v659[1] = MEMORY[0x1E69E7CC0];
    v547 = v677;
    BYTE8(v659[1]) = v677;
    sub_1D70A3698(0, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
    sub_1D70A3560();
    v544 = COERCE_DOUBLE(swift_allocError());
    *v548 = v462;
    *(v548 + 8) = v463;
    *(v548 + 24) = v464;
    *(v548 + 32) = v467;
    *(v548 + 40) = v449;
    *(v548 + 48) = v546;
    *(v548 + 56) = v547;
    goto LABEL_220;
  }

  v450 = *(v643 + 16);
  if (!v450)
  {
LABEL_216:

    v452 = MEMORY[0x1E69E7CC0];
    goto LABEL_217;
  }

  *&v658.origin.x = MEMORY[0x1E69E7CC0];
  v451 = v643;
  sub_1D5BDF6B0(0, v450, 0);
  v452 = v658.origin.x;
  v453 = v451 + ((*(v642 + 80) + 32) & ~*(v642 + 80));
  v454 = *(v642 + 72);
  do
  {
    v455 = v644;
    sub_1D5BE64C0(v453, v644, type metadata accessor for FeedItem);
    v456 = swift_allocObject();
    v457 = FeedItem.identifier.getter();
    v459 = v458;
    sub_1D5BE6754(v455, type metadata accessor for FeedItem);
    *(v456 + 16) = v457;
    *(v456 + 24) = v459;
    v658.origin.x = v452;
    v461 = *(*&v452 + 16);
    v460 = *(*&v452 + 24);
    if (v461 >= v460 >> 1)
    {
      sub_1D5BDF6B0((v460 > 1), v461 + 1, 1);
      v452 = v658.origin.x;
    }

    *(*&v452 + 16) = v461 + 1;
    *(*&v452 + 8 * v461 + 32) = v456;
    v453 += v454;
    --v450;
  }

  while (v450);

  v447 = v620;
LABEL_217:
  memset(&v658, 0, sizeof(v658));
  *v659 = v452;
  v542 = MEMORY[0x1E69E7CC0];
  *(&v659[0] + 1) = MEMORY[0x1E69E7CC0];
  *&v659[1] = MEMORY[0x1E69E7CC0];
  BYTE8(v659[1]) = v677;
  v543 = v677 | 0x80;
  sub_1D70A3698(0, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
  sub_1D70A3560();
  v544 = COERCE_DOUBLE(swift_allocError());
  *v545 = 0u;
  *(v545 + 16) = 0u;
  *(v545 + 32) = v452;
  *(v545 + 40) = v542;
  *(v545 + 48) = v542;
  *(v545 + 56) = v543;
LABEL_220:
  v549 = BYTE8(v659[1]);
  v550 = *&v659[1];
  v651 = v658;
  v652 = v659[0];
  sub_1D5BD4CD0(&v658, &v653);
  v551 = v622;
  *v660 = v544;
  v621 = v544;
  v552 = *&v544;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D70A3698(0, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
  if (swift_dynamicCast())
  {
    *(v654 + 9) = *(v659 + 9);
    v653 = v658;
    v654[0] = v659[0];
    v553 = SBYTE8(v659[1]);
    sub_1D70A3448(&v653);
    if ((v553 & 0x80000000) == 0)
    {
      v554 = (v647 + *(*v647 + 144));
      v555 = v554[3];
      v556 = v554[4];
      v677 = __swift_project_boxed_opaque_existential_1(v554, v555);
      *&v657[0] = *v650;
      v656.size.height = *&v650[8];
      v656.origin.x = v638;

      v557 = v621;
      v558 = *&v621;
      v559 = v585;
      sub_1D714B174(v599, 0, v585);
      v560 = v549;
      v561 = sub_1D714BC98();
      v563 = v562;
      (*(v586 + 8))(v559, v587);
      *&v663 = v557;
      *(&v663 + 1) = v561;
      v549 = v560;
      v664 = v563;
      v551 = v622;
      v447 = v620;
      (*(v556 + 8))(&v656, &v663, v555, v556);

      __swift_destroy_boxed_opaque_existential_1(&v656);
    }
  }

  v564 = v651.origin.x;
  v565 = v651.size.width;
  v658 = v651;
  v659[0] = v652;
  *&v659[1] = v550;
  BYTE8(v659[1]) = v549;
  v566 = v551[1];
  v567 = *(v551 + 2);
  v568 = *(v551 + 24);
  if (v568)
  {
    v569 = *v551;
    sub_1D70A2C9C(&v658);
LABEL_227:
    *v551 = v569;
    v551[1] = v566;
    *(v551 + 2) = v567;
    *(v551 + 24) = v568;
    swift_willThrow();

    sub_1D5BE6754(v599, type metadata accessor for InternalErrorViewModel);
    sub_1D5BD5464(&v667);
    sub_1D5BE6754(v619, type metadata accessor for GroupLayoutBindingContext);
    sub_1D5BE6754(v630, type metadata accessor for FeedLayoutCacheKey);
    v627(v631, v637);
    result = sub_1D5BE6754(v447, type metadata accessor for GroupLayoutContext);
    v246 = v647;
    v247 = v618;
    v574 = *(v647 + v618);
    v240 = __OFADD__(v574, 1);
    v249 = v574 + 1;
    if (!v240)
    {
      goto LABEL_228;
    }

LABEL_233:
    __break(1u);
  }

  else
  {
    v570 = v651.origin.y;
    v571 = v651.size.height;
    v572 = CGRectGetHeight(*&v564);
    v573 = *(v652 + 16);
    sub_1D70A2C9C(&v658);
    v240 = __OFADD__(v567, v573);
    v567 += v573;
    if (!v240)
    {
      v569 = 0;
      v566 = v572 + v566;
      goto LABEL_227;
    }
  }

  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  sub_1D726493C();
  __break(1u);
LABEL_237:
  LODWORD(v577) = 0;
  v576 = 127;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

void sub_1D709EC6C(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, double *a5@<X8>)
{
  v107 = a3;
  v105 = a5;
  v13 = sub_1D7259CFC();
  v106 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7259F5C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D70A0288(a2, a1, a4);
  if (v5)
  {
    return;
  }

  v24 = v22;
  LODWORD(v98) = v23;
  v104 = a1;
  v99 = v21;
  v108 = a2;
  v100 = v18;
  v101 = v16;
  v102 = v17;
  v103 = v13;
  v97 = 0;
  v25 = *(v22 + 2);
  v113 = v22;
  if (!v25)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v41 = 0;
    v42 = 0;
    v43 = *(v27 + 2);
    do
    {
      if (v43 == v42)
      {
        goto LABEL_27;
      }

      if (v42 >= *(v27 + 2))
      {
        __break(1u);
        goto LABEL_71;
      }

      v44 = v42 + 1;
      v110.x = *&v27[8 * v42 + 32];

      *&v114.origin.x = FeedItemLayoutAttributes.frame.getter().n128_u64[0];
      IsEmpty = CGRectIsEmpty(v114);

      v46 = !IsEmpty;
      v42 = v44;
      v39 = __OFADD__(v41, v46);
      v41 += v46;
    }

    while (!v39);
    __break(1u);
LABEL_27:
    if ((v98 & (v41 == 0)) == 1)
    {

      v47 = sub_1D70A3148(v108);
    }

    else
    {
      v47 = v113;
    }

    v48 = v104;
    v49 = v107;
    a2 = *(v47 + 16);
    v113 = v47;
    if (a2)
    {
      v50 = 0;
      v51 = (v47 + 32);
      height = 0.0;
      v52 = (v47 + 32);
      width = 0.0;
      y = 0.0;
      x = 0.0;
      do
      {
        if (v50 >= *(v47 + 16))
        {
          goto LABEL_74;
        }

        v54 = v52[1];
        v53 = v52[2];
        v55 = *(v52 + 41);
        v110 = *v52;
        v111 = v54;
        *(v112 + 9) = v55;
        v112[0] = v53;
        v56 = v110;
        v57 = v54;
        sub_1D5BD4CD0(&v110, v109);
        v119.origin.x = 0.0;
        v119.origin.y = 0.0;
        v119.size.width = 0.0;
        v119.size.height = 0.0;
        v117.origin.x = x;
        v117.origin.y = y;
        v117.size.width = width;
        v117.size.height = height;
        if (CGRectEqualToRect(v117, v119))
        {
          y = v56.y;
          x = v56.x;
          height = v57.height;
          width = v57.width;
        }

        else
        {
          v115.origin.x = x;
          v115.origin.y = y;
          v115.size.width = width;
          v115.size.height = height;
          v118.origin = v56;
          v118.size = v57;
          v116 = CGRectUnion(v115, v118);
          x = v116.origin.x;
          y = v116.origin.y;
          width = v116.size.width;
          height = v116.size.height;
        }

        ++v50;
        sub_1D70A2C9C(&v110);
        v52 += 4;
      }

      while (a2 != v50);
      v96 = v27;
      v58 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v58 >= *(v47 + 16))
        {
          goto LABEL_75;
        }

        v60 = *v51;
        v61 = v51[1];
        v62 = v51[2];
        *(v112 + 9) = *(v51 + 41);
        v111 = v61;
        v112[0] = v62;
        v110 = v60;
        v63 = *(&v62 + 1);
        v64 = *(*(&v62 + 1) + 16);
        v65 = *(v59 + 2);
        v66 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          goto LABEL_76;
        }

        sub_1D5BD4CD0(&v110, v109);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && (v68 = *(v59 + 3) >> 1, v69 = v59, v68 >= v66))
        {
          if (!*(v63 + 16))
          {
LABEL_38:
            v27 = v69;

            v47 = v113;
            if (v64)
            {
              goto LABEL_77;
            }

            goto LABEL_39;
          }
        }

        else
        {
          if (v65 <= v66)
          {
            v70 = v65 + v64;
          }

          else
          {
            v70 = v65;
          }

          v69 = sub_1D699072C(isUniquelyReferenced_nonNull_native, v70, 1, v59);
          v68 = *(v69 + 3) >> 1;
          if (!*(v63 + 16))
          {
            goto LABEL_38;
          }
        }

        v27 = (v68 - *(v69 + 2));
        v71 = v69;
        type metadata accessor for FeedItemSupplementaryAttributes(0);
        if (v27 < v64)
        {
          goto LABEL_79;
        }

        v27 = v71;
        swift_arrayInitWithCopy();

        v47 = v113;
        if (v64)
        {
          v72 = *(v71 + 2);
          v39 = __OFADD__(v72, v64);
          v73 = v72 + v64;
          if (v39)
          {
            goto LABEL_82;
          }

          *(v71 + 2) = v73;
        }

LABEL_39:
        ++v58;
        sub_1D70A2C9C(&v110);

        v51 += 4;
        v59 = v27;
        if (a2 == v58)
        {
          v98 = v27;
          v48 = v104;
          v49 = v107;
          v27 = v96;
          goto LABEL_56;
        }

        continue;
      }
    }

    v98 = MEMORY[0x1E69E7CC0];
    height = 0.0;
    width = 0.0;
    y = 0.0;
    x = 0.0;
LABEL_56:
    sub_1D70A2E30(v49, &v110, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
    if (!*&v111.height)
    {
      goto LABEL_68;
    }

    v104 = *&v112[0];
    v107 = *&v111.height;
    v96 = __swift_project_boxed_opaque_existential_1(&v110, *&v111.height);
    (*(v100 + 16))(v99, &v48[*(*v48 + 120)], v102);
    (*(v106 + 16))(v101, &v48[*(*v48 + 112)], v103);
    v109[0] = v48[*(*v48 + 176)];
    v74 = v108;
    if (!(v108 >> 62))
    {
      v75 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
        goto LABEL_59;
      }

LABEL_84:
      v78 = MEMORY[0x1E69E7CD0];
LABEL_85:
      v84 = v99;
      v85 = v101;
      v81 = (*(v104 + 1))(v99, v101, v109, v78, v107, x, y, width, height);

      (*(v106 + 8))(v85, v103);
      (*(v100 + 8))(v84, v102);
      __swift_destroy_boxed_opaque_existential_1(&v110);
      v47 = v113;
      if (!a2)
      {
        goto LABEL_69;
      }

LABEL_86:
      v86 = *(v47 + 16);
      v87 = (v47 + 88);
      v88 = 1;
      v89 = 1;
      while (v86)
      {
        v90 = *v87;
        v87 += 64;
        sub_1D70A2EB4();
        v89 &= v90 != 0;
        v91 = v88 & (v90 != 1);
        if (v91)
        {
          v92 = 2;
        }

        else
        {
          v92 = 1;
        }

        if (v89)
        {
          v88 = v91;
        }

        else
        {
          v88 = 1;
        }

        if (v89)
        {
          v82 = v92;
        }

        else
        {
          v82 = 0;
        }

        --v86;
        if (!--a2)
        {
          goto LABEL_98;
        }
      }

      __break(1u);
      return;
    }

    goto LABEL_83;
  }

  a2 = 0;
  v26 = v22 + 32;
  v27 = MEMORY[0x1E69E7CC0];
  while (a2 < *(v24 + 2))
  {
    v28 = *v26;
    v29 = *(v26 + 41);
    v30 = v26[2];
    v111 = v26[1];
    v112[0] = v30;
    *(v112 + 9) = v29;
    v110 = v28;
    v31 = v30;
    v32 = *(v30 + 16);
    v33 = *(v27 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_72;
    }

    sub_1D5BD4CD0(&v110, v109);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && (v36 = *(v27 + 3) >> 1, v36 >= v34))
    {
      if (*(v31 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v37 = v33 + v32;
      }

      else
      {
        v37 = v33;
      }

      v27 = sub_1D6996D98(v35, v37, 1, v27);
      v36 = *(v27 + 3) >> 1;
      if (*(v31 + 16))
      {
LABEL_16:
        v24 = v113;
        if (v36 - *(v27 + 2) < v32)
        {
          goto LABEL_78;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = *(v27 + 2);
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_81;
          }

          *(v27 + 2) = v40;
        }

        goto LABEL_5;
      }
    }

    v24 = v113;
    if (v32)
    {
      goto LABEL_73;
    }

LABEL_5:
    ++a2;
    sub_1D70A2C9C(&v110);

    v26 += 4;
    if (v25 == a2)
    {
      goto LABEL_21;
    }
  }

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
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v83 = sub_1D7263BFC();
    v74 = v108;
    v75 = v83;
    if (!v83)
    {
      goto LABEL_84;
    }

LABEL_59:
    v76 = 0;
    v77 = v74 & 0xC000000000000001;
    v47 = v74 & 0xFFFFFFFFFFFFFF8;
    v78 = MEMORY[0x1E69E7CD0];
LABEL_60:
    if (v77)
    {
      MEMORY[0x1DA6FB460](v76, v74);
      v79 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_67;
      }

      goto LABEL_63;
    }

    if (v76 >= *(v47 + 16))
    {
      continue;
    }

    break;
  }

  v79 = v76 + 1;
  if (!__OFADD__(v76, 1))
  {
LABEL_63:

    v78 = sub_1D5D6021C(v80, v78);

    ++v76;
    v74 = v108;
    if (v79 == v75)
    {
      goto LABEL_85;
    }

    goto LABEL_60;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  sub_1D70A2C0C(&v110, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
  v81 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    goto LABEL_86;
  }

LABEL_69:
  v82 = 2;
LABEL_98:

  v93 = v105;
  *v105 = x;
  v93[1] = y;
  v93[2] = width;
  v93[3] = height;
  v94 = v98;
  *(v93 + 4) = v27;
  *(v93 + 5) = v94;
  *(v93 + 6) = v81;
  *(v93 + 56) = v82;
}

void sub_1D709F66C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void (*a5)(_OWORD *__return_ptr, uint64_t *)@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v117 = a5;
  v8 = v7;
  v116 = a6;
  v115 = a4;
  LODWORD(v106) = a3;
  v107 = a1;
  v108 = a2;
  v93[0] = a7;
  v113 = *v7;
  v9 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v114 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions;
  sub_1D70A2554(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v121 = (v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v123 = v93 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v103 = v93 - v20;
  v126 = type metadata accessor for FeedLayoutSolverOptions(0);
  MEMORY[0x1EEE9AC00](v126, v21);
  v23 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v93 - v26;
  v28 = sub_1D7259F5C();
  v124 = *(v28 - 8);
  v125 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D7259CFC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6330700((v7 + 16), v133);
  sub_1D5B68374((v7 + 72), v132);
  v37 = *(*v7 + 200);
  swift_beginAccess();
  v93[1] = v37;
  v122 = *&v8[v37];
  v38 = *v8;
  v94 = *(*v8 + 208);
  v105 = *&v8[v94];
  v39 = *(v38 + 112);
  v109 = v36;
  v110 = v33;
  v40 = *(v33 + 16);
  v111 = v32;
  v40(v36, &v8[v39], v32);
  v41 = *(v124 + 16);
  v42 = &v8[*(*v8 + 120)];
  v112 = v31;
  v41(v31, v42, v125);
  sub_1D5BE64C0(&v8[*(*v8 + 128)], v23, type metadata accessor for FeedLayoutSolverOptions);
  v43 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  v44 = *(v43 - 8);
  v45 = v103;
  v95 = *(v44 + 56);
  v95(v103, 1, 1, v43);
  v46 = *&v23[v126[11]];
  v47 = v23[17];
  v101 = v23[18];
  v102 = v47;
  v48 = v23[19];
  v99 = v23[20];
  v100 = v48;
  v49 = v23[21];
  v97 = v23[22];
  v98 = v49;
  v96 = v23[23];
  v50 = *(v23 + 3);
  v119 = v46;
  v120 = v50;
  v51 = v45;
  v52 = v121;
  sub_1D70A2DB0(v51, v121, &qword_1EDF42AD0, v104);
  v53 = *(v44 + 48);
  if (v53(v52, 1, v43) == 1)
  {
    sub_1D70A3E54(&v23[v126[9]], v123, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions, MEMORY[0x1E69E6720], sub_1D70A2554);
    v54 = v121;
    v55 = v53(v121, 1, v43);

    sub_1D5C07390(v120);
    if (v55 != 1)
    {
      sub_1D5BEFFE8(v54, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    }
  }

  else
  {
    v56 = v123;
    sub_1D5BE6684(v121, v123, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    v95(v56, 0, 1, v43);

    sub_1D5C07390(v120);
  }

  if (v106)
  {
    v57 = 0;
  }

  else
  {
    v57 = v107;
  }

  if (v106)
  {
    v58 = 0;
  }

  else
  {
    v58 = v108;
  }

  v59 = v126;
  v60 = &v23[v126[10]];
  v61 = *v60;
  v62 = v60[1];
  v63 = v126[12];
  v106 = *&v23[v126[13]];
  v108 = *&v23[v63];
  LODWORD(v107) = v23[v63 + 8];
  sub_1D5D64C6C(v61, v62);
  v121 = type metadata accessor for FeedLayoutSolverOptions;
  sub_1D5BE6754(v23, type metadata accessor for FeedLayoutSolverOptions);
  *&v27[v59[11]] = v119;
  *v27 = v57;
  *(v27 + 1) = v58;
  v27[16] = 0;
  v64 = v101;
  v27[17] = v102;
  v27[18] = v64;
  v65 = v99;
  v27[19] = v100;
  v27[20] = v65;
  v66 = v97;
  v27[21] = v98;
  v27[22] = v66;
  v27[23] = v96;
  *(v27 + 3) = v120;
  sub_1D70A2DB0(v123, &v27[v59[9]], &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  v67 = &v27[v59[10]];
  *v67 = v61;
  v67[1] = v62;
  *&v27[v59[13]] = v106;
  v68 = &v27[v59[12]];
  *v68 = v108;
  v68[8] = v107;
  v69 = *v8;
  v123 = *&v8[*(*v8 + 136)];
  v70 = v123;
  sub_1D5B68374(&v8[*(v69 + 144)], v131);
  v71 = *&v8[*(*v8 + 168)];
  v72 = *(*v8 + 160);
  swift_beginAccess();
  v120 = v72;
  v73 = *&v8[v72];
  v74 = *v8;
  LODWORD(v126) = v8[*(*v8 + 176)];
  v75 = v114;
  sub_1D5BE64C0(&v8[*(v74 + 184)], v114, type metadata accessor for FeedContext);
  sub_1D5B68374(&v8[*(*v8 + 192)], v130);
  sub_1D5B68374(&v8[*(*v8 + 224)], v129);
  v76 = swift_allocObject();
  v77 = v133[1];
  *(v76 + 16) = v133[0];
  *(v76 + 32) = v77;
  *(v76 + 48) = v133[2];
  *(v76 + 64) = v134;
  sub_1D5B63F14(v132, v76 + 72);
  *(v76 + *(*v76 + 200)) = v122;
  *(v76 + *(*v76 + 208)) = v105;
  *(v76 + *(*v76 + 216)) = 0;
  (*(v110 + 32))(v76 + *(*v76 + 112), v109, v111);
  (*(v124 + 32))(v76 + *(*v76 + 120), v112, v125);
  *(v76 + *(*v76 + 136)) = v70;
  sub_1D5BE64C0(v27, v76 + *(*v76 + 128), type metadata accessor for FeedLayoutSolverOptions);
  sub_1D5B63F14(v131, v76 + *(*v76 + 144));
  *(v76 + *(*v76 + 168)) = v71;
  v78 = v71;
  *(v76 + *(*v76 + 160)) = v73;
  *(v76 + *(*v76 + 176)) = v126;
  sub_1D5BE6684(v75, v76 + *(*v76 + 184), type metadata accessor for FeedContext);
  sub_1D5B63F14(v130, v76 + *(*v76 + 192));
  sub_1D5B63F14(v129, v76 + *(*v76 + 224));
  *(v76 + *(*v76 + 232)) = v115 & 1;
  v79 = *v27;
  v80 = *(v27 + 1);
  LODWORD(v75) = v27[16];

  v81 = v78;

  sub_1D5BE6754(v27, v121);
  if (v75 == 1)
  {
    v82 = v76 + *(*v76 + 152);
    *v82 = 0;
    *(v82 + 8) = 0;
    if (v79 | v80)
    {
      *(v82 + 24) = 0;
      *(v82 + 16) = 0;
    }

    else
    {
      *(v82 + 16) = 0;
      *(v82 + 24) = 1;
    }
  }

  else
  {
    v83 = v76 + *(*v76 + 152);
    *v83 = v79;
    *(v83 + 8) = v80;
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
  }

  v135 = v76;
  v84 = v118;
  v117(v127, &v135);
  v85 = v135;
  if (v84)
  {
  }

  else
  {
    v86 = *(*v135 + 160);
    swift_beginAccess();
    *&v8[v120] = *(v85 + v86);

    swift_beginAccess();
    swift_beginAccess();

    sub_1D6E465A0(v87);
    swift_endAccess();
    v88 = *&v8[v94];
    v89 = __OFADD__(v88, 1);
    v90 = v88 + 1;
    if (v89)
    {
      __break(1u);
    }

    else
    {
      *&v8[v94] = v90;

      v91 = v127[1];
      v92 = v93[0];
      *v93[0] = v127[0];
      v92[1] = v91;
      v92[2] = v128[0];
      *(v92 + 41) = *(v128 + 9);
    }
  }
}

char *sub_1D70A0288(unint64_t a1, void *a2, char *a3)
{
  v4 = v3;
  v79 = a3;
  v7 = type metadata accessor for FeedItem(0);
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D726289C();
  v11 = *(v75 - 8);
  v13 = MEMORY[0x1EEE9AC00](v75, v12);
  v74 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_76;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    v67 = 0;
    return MEMORY[0x1E69E7CC0];
  }

  v64 = v15;
  v65 = v11;
  v67 = 0;
  v15 = 0;
  LODWORD(v78) = *(a2 + *(*a2 + 232));
  v81 = a1 & 0xC000000000000001;
  v70 = a1 & 0xFFFFFFFFFFFFFF8;
  v69 = a1 + 32;
  v92 = MEMORY[0x1E69E7CC0];
  v76 = a1;
  v77 = v16;
  v71 = a2;
  while (1)
  {
    if (v81)
    {
      v22 = COERCE_DOUBLE(MEMORY[0x1DA6FB460](v15, a1, v13));
      v23 = __OFADD__(v15++, 1);
      if (v23)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v15 >= *(v70 + 16))
      {
        goto LABEL_74;
      }

      v22 = *(v69 + 8 * v15);

      v23 = __OFADD__(v15++, 1);
      if (v23)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        v16 = sub_1D7263BFC();
        goto LABEL_3;
      }
    }

    if (v78)
    {
      sub_1D72629AC();
      if (v4)
      {

        goto LABEL_47;
      }
    }

    v88 = 0;
    memset(v87, 0, sizeof(v87));
    v24 = v4;
    sub_1D709AC80(v22, v87, v79, &v89);
    if (!v4)
    {
      sub_1D70A2C0C(v87, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
      v84 = v89;
      v85 = v90;
      *v86 = *v91;
      *&v86[9] = *&v91[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_1D6996C24(0, *(v92 + 2) + 1, 1, v92);
      }

      v11 = *(v92 + 2);
      v35 = *(v92 + 3);
      if (v11 >= v35 >> 1)
      {
        v92 = sub_1D6996C24((v35 > 1), v11 + 1, 1, v92);
      }

      v18 = v92;
      *(v92 + 2) = v11 + 1;
      v19 = &v18[64 * v11];
      v13 = v84;
      v20 = v85;
      v21 = *v86;
      *(v19 + 73) = *&v86[9];
      *(v19 + 3) = v20;
      *(v19 + 4) = v21;
      *(v19 + 2) = v13;
      goto LABEL_6;
    }

    sub_1D70A2C0C(v87, &qword_1EDF354A0, &unk_1EDF354A8, &protocol descriptor for FeedGroupDecorationProviderType);
    *&v89.x = v4;
    v25 = v4;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    if (swift_dynamicCast())
    {
      (*(v65 + 8))(v74, v75);

      goto LABEL_45;
    }

    *&v87[0] = v4;
    v26 = v4;
    sub_1D70A3698(0, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_45:
      swift_willThrow();
LABEL_47:

      return v92;
    }

    v80 = v22;
    v84 = v89;
    v85 = v90;
    *v86 = *v91;
    *&v86[9] = *&v91[9];
    v27 = *v91;
    v28 = v91[24];
    if ((v91[24] & 0x80000000) != 0)
    {
      v36 = *(*v91 + 16);
      if (v36)
      {
        v68 = v4;
        v83 = v17;
        sub_1D5BDF6B0(0, v36, 0);
        v17 = v83;
        v37 = (v27 + 32);
        do
        {
          v38 = *v37++;
          v39 = swift_allocObject();
          v82 = v38;

          *(v39 + 16) = FeedItemLayoutAttributes.identifier.getter();
          *(v39 + 24) = v40;

          v83 = v17;
          v42 = v17[2];
          v41 = v17[3];
          if (v42 >= v41 >> 1)
          {
            sub_1D5BDF6B0((v41 > 1), v42 + 1, 1);
            v17 = v83;
          }

          v17[2] = v42 + 1;
          v17[v42 + 4] = v39;
          --v36;
        }

        while (v36);
        sub_1D70A3448(&v84);
        v4 = v68;
      }

      else
      {
        sub_1D70A3448(&v84);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = v76;
      a2 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v92 = sub_1D6996C24(0, *(v92 + 2) + 1, 1, v92);
      }

      v11 = *(v92 + 2);
      v44 = *(v92 + 3);
      if (v11 >= v44 >> 1)
      {
        v92 = sub_1D6996C24((v44 > 1), v11 + 1, 1, v92);
      }

      v45 = v92;
      *(v92 + 2) = v11 + 1;
      v46 = &v45[64 * v11];
      *(v46 + 2) = 0u;
      *(v46 + 3) = 0u;
      *(v46 + 8) = v17;
      v17 = MEMORY[0x1E69E7CC0];
      *(v46 + 9) = MEMORY[0x1E69E7CC0];
      *(v46 + 10) = v17;
      v46[88] = 0;

      v4 = 0;
      v67 = 1;
      goto LABEL_6;
    }

    v72 = v85;
    v73 = v84;
    v11 = *&v86[8];
    v29 = *&v86[16];
    sub_1D725A9FC();
    if ((sub_1D725A9CC() & 1) == 0)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1D6996C24(0, *(v92 + 2) + 1, 1, v92);
    }

    v31 = *(v92 + 2);
    v30 = *(v92 + 3);
    if (v31 >= v30 >> 1)
    {
      v92 = sub_1D6996C24((v30 > 1), v31 + 1, 1, v92);
    }

    v32 = v92;
    *(v92 + 2) = v31 + 1;
    v33 = &v32[64 * v31];
    v34 = v72;
    *(v33 + 2) = v73;
    *(v33 + 3) = v34;
    *(v33 + 8) = v27;
    *(v33 + 9) = v11;
    *(v33 + 10) = v29;
    v33[88] = v28;

    v4 = 0;
    a1 = v76;
    v17 = MEMORY[0x1E69E7CC0];
    a2 = v71;
LABEL_6:
    if (v15 == v77)
    {
      return v92;
    }
  }

  sub_1D70A3448(&v84);
  if (v64)
  {
    v48 = sub_1D7263BFC();
  }

  else
  {
    v48 = *(v70 + 16);
  }

  v49 = MEMORY[0x1E69E7CC0];
  if (!v48)
  {

    a2 = MEMORY[0x1E69E7CC0];
LABEL_72:

    v67 = 0;
    return a2;
  }

  v83 = MEMORY[0x1E69E7CC0];
  result = sub_1D699A630(0, v48 & ~(v48 >> 63), 0);
  if ((v48 & 0x8000000000000000) == 0)
  {
    result = 0;
    a2 = v83;
    v68 = v4;
    v75 = v48;
    while (!__OFADD__(result, 1))
    {
      v79 = result + 1;
      if (v81)
      {
        v50 = MEMORY[0x1DA6FB460]();
      }

      else
      {
        if (result >= *(v70 + 16))
        {
          __break(1u);
          goto LABEL_78;
        }
      }

      v51 = *(v50 + 64);
      v52 = *(v51 + 16);
      if (v52)
      {
        v77 = v50;
        v78 = a2;
        v82 = v49;
        sub_1D5BDF6B0(0, v52, 0);
        v53 = v82;
        v54 = v51 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
        v55 = *(v66 + 72);
        do
        {
          sub_1D5BE64C0(v54, v10, type metadata accessor for FeedItem);
          v56 = swift_allocObject();
          v57 = FeedItem.identifier.getter();
          v59 = v58;
          sub_1D5BE6754(v10, type metadata accessor for FeedItem);
          *(v56 + 16) = v57;
          *(v56 + 24) = v59;
          v82 = v53;
          v61 = *(v53 + 16);
          v60 = *(v53 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_1D5BDF6B0((v60 > 1), v61 + 1, 1);
            v53 = v82;
          }

          *(v53 + 16) = v61 + 1;
          *(v53 + 8 * v61 + 32) = v56;
          v54 += v55;
          --v52;
        }

        while (v52);

        a1 = v76;
        v49 = MEMORY[0x1E69E7CC0];
        v48 = v75;
        a2 = v78;
      }

      else
      {

        v53 = v49;
      }

      v83 = a2;
      v11 = a2[2];
      v62 = a2[3];
      v15 = v11 + 1;
      v4 = v68;
      if (v11 >= v62 >> 1)
      {
        sub_1D699A630((v62 > 1), v11 + 1, 1);
        a2 = v83;
      }

      a2[2] = v15;
      v63 = &a2[8 * v11];
      *(v63 + 2) = 0u;
      *(v63 + 3) = 0u;
      v63[8] = v53;
      v63[9] = v49;
      v63[10] = v49;
      result = v79;
      *(v63 + 88) = 0;
      if (result == v48)
      {

        goto LABEL_72;
      }
    }

    goto LABEL_75;
  }

LABEL_78:
  __break(1u);
  return result;
}

void *sub_1D70A0D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v139 = a5;
  v138 = a4;
  v137 = a2;
  v136 = a1;
  v117 = sub_1D7259CFC();
  v6 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v7);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A2554(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v116 - v11;
  v129 = sub_1D7259D1C();
  v141 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v13);
  v123 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v122 = &v116 - v17;
  v125 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v125, v18);
  v124 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = 0;
  v134 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v134, v20);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 16);
  v140 = v22;
  v142 = v6;
  if (v23)
  {
    v130 = MEMORY[0x1E69E7CC8];
    v24 = MEMORY[0x1E69E7CC0];
    v25 = a3 + 32;
    v144 = xmmword_1D7273AE0;
    while (1)
    {
      sub_1D5B68374(v25, &v146);
      v26 = *(&v147 + 1);
      v27 = v148;
      __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
      (*(v27 + 32))(&v149, v26, v27);
      v28 = v130;
      if (v130[2] && (v29 = sub_1D5BEFB80(v149), (v30 & 1) != 0))
      {
        v31 = *(v28[7] + 8 * v29);
      }

      else
      {
        v31 = v24;
      }

      v32 = *(&v147 + 1);
      v33 = v148;
      __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
      (*(v33 + 32))(&v145, v32, v33);
      v34 = v145;
      sub_1D5BD20D0(0, &qword_1EDF19760, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v144;
      sub_1D5B68374(&v146, inited + 32);
      v149 = v31;
      sub_1D5BEFB58(inited);
      v36 = v149;
      v37 = v130;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149 = v37;
      v40 = sub_1D5BEFB80(v34);
      v41 = v37[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        break;
      }

      v44 = v39;
      if (v37[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6D87284();
        }
      }

      else
      {
        sub_1D5BEFB88(v43, isUniquelyReferenced_nonNull_native);
        v45 = sub_1D5BEFB80(v34);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_51;
        }

        v40 = v45;
      }

      v22 = v140;
      v47 = v149;
      v130 = v149;
      if (v44)
      {
        *(v149[7] + 8 * v40) = v36;
      }

      else
      {
        v149[(v40 >> 6) + 8] |= 1 << v40;
        *(v47[6] + v40) = v34;
        *(v47[7] + 8 * v40) = v36;
        v48 = v47[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_50;
        }

        v47[2] = v50;
      }

      __swift_destroy_boxed_opaque_existential_1(&v146);
      v25 += 40;
      if (!--v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
    v130 = MEMORY[0x1E69E7CC8];
LABEL_19:
    v51 = *&v135[*(*v135 + 168)];
    sub_1D5BD20D0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v133 = v52;
    v53 = swift_allocObject();
    v132 = xmmword_1D7279970;
    *(v53 + 16) = xmmword_1D7279970;
    *(v53 + 56) = MEMORY[0x1E69E6158];
    v131 = sub_1D5B7E2C0();
    *(v53 + 64) = v131;
    v54 = v137;
    *(v53 + 32) = v136;
    *(v53 + 40) = v54;
    v55 = v138;
    v56 = *(*(v138 + *(v134 + 56)) + 16);
    v57 = MEMORY[0x1E69E6530];
    v58 = MEMORY[0x1E69E65A8];
    *(v53 + 96) = MEMORY[0x1E69E6530];
    *(v53 + 104) = v58;
    *(v53 + 72) = v56;
    v59 = *(*(v55 + 64) + 16);
    *(v53 + 136) = v57;
    *(v53 + 144) = v58;
    *(v53 + 112) = v59;

    v60 = sub_1D7262EDC();
    v134 = v51;
    sub_1D725C30C("%{public}@ Layout binding to layouts with %ld item bindings and %ld group bindings", 82, 2, &dword_1D5B42000, v51, v60, v53);

    v61 = 0;
    v128 = (v141 + 6);
    v121 = (v141 + 4);
    v126 = (v141 + 1);
    v116 = (v142 + 40);
    v62 = MEMORY[0x1E69E7CC0];
    v63 = v139;
    v135 = v12;
    v64 = v124;
    v65 = v130;
    do
    {
      if (v65[2])
      {
        v67 = sub_1D5BEFB80(byte_1F5119E10[v61 + 32]);
        if (v68)
        {
          v69 = *(v65[7] + 8 * v67);
          if (*(v69 + 16))
          {
            *&v144 = *(v69 + 16);
            v119 = v61;
            v70 = v69 + 32;
            v118 = v69;

            v127 = MEMORY[0x1E69E7CC0];
            do
            {
              v142 = v70;
              sub_1D5B68374(v70, &v149);
              v74 = v138;
              sub_1D5BE64C0(v138, v22, type metadata accessor for GroupLayoutBindingContext);
              sub_1D5BE64C0(v63, v64, type metadata accessor for GroupLayoutContext);
              v76 = v150;
              v75 = v151;
              __swift_project_boxed_opaque_existential_1(&v149, v150);
              v77 = v74;
              v78 = v143;
              (*(v75 + 48))(v77, v63, v76, v75);
              if (v78)
              {
                v141 = v62;
                sub_1D5BE6754(v22, type metadata accessor for GroupLayoutBindingContext);
                v143 = 0;
                v87 = v64;
                sub_1D5BE6754(v64, type metadata accessor for GroupLayoutContext);
                v88 = swift_allocObject();
                *(v88 + 16) = v132;
                v89 = MEMORY[0x1E69E6158];
                v90 = v131;
                *(v88 + 56) = MEMORY[0x1E69E6158];
                *(v88 + 64) = v90;
                v91 = v137;
                *(v88 + 32) = v136;
                *(v88 + 40) = v91;
                __swift_project_boxed_opaque_existential_1(&v149, v150);

                v92 = sub_1D725AA4C();
                *(v88 + 96) = v89;
                *(v88 + 104) = v90;
                *(v88 + 72) = v92;
                *(v88 + 80) = v93;
                *&v146 = 0;
                *(&v146 + 1) = 0xE000000000000000;
                *&v145 = v78;
                sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
                sub_1D7263F9C();
                v94 = v146;
                *(v88 + 136) = v89;
                *(v88 + 144) = v90;
                *(v88 + 112) = v94;
                v95 = sub_1D7262EDC();
                sub_1D725C30C("%{public}@ Layout failed to bind required items for %{public}@, error=%{public}@", 80, 2, &dword_1D5B42000, v134, v95, v88);

                sub_1D5B68374(&v149, &v146);
                *(&v148 + 1) = v78;
                v62 = v141;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v62 = sub_1D6996C38(0, v62[2] + 1, 1, v62);
                }

                v96 = v142;
                v98 = v62[2];
                v97 = v62[3];
                v63 = v139;
                v12 = v135;
                v22 = v140;
                v64 = v87;
                if (v98 >= v97 >> 1)
                {
                  v62 = sub_1D6996C38((v97 > 1), v98 + 1, 1, v62);
                }

                v62[2] = v98 + 1;
                v71 = &v62[6 * v98];
                v72 = v146;
                v73 = v148;
                v71[3] = v147;
                v71[4] = v73;
                v71[2] = v72;
              }

              else
              {
                v79 = v129;
                if ((*v128)(v12, 1, v129) == 1)
                {
                  sub_1D5BEFFE8(v12, &unk_1EDF3C080, MEMORY[0x1E69D7138]);
                }

                else
                {
                  v80 = v122;
                  (*v121)(v122, v12, v79);
                  v81 = v123;
                  sub_1D7259BFC();
                  sub_1D5B85FD8(&unk_1EDF3C090, MEMORY[0x1E69D7138], MEMORY[0x1E69D7140]);
                  v82 = sub_1D7261FBC();
                  v83 = *v126;
                  (*v126)(v81, v79);
                  if (v82)
                  {
                    v83(v80, v79);
                    v64 = v124;
                    v22 = v140;
                  }

                  else
                  {
                    v84 = v120;
                    sub_1D7259D0C();
                    v22 = v140;
                    v83(v80, v79);
                    v64 = v124;
                    (*v116)(&v124[*(v125 + 20)], v84, v117);
                  }
                }

                v85 = v150;
                v86 = v151;
                __swift_project_boxed_opaque_existential_1(&v149, v150);
                (*(v86 + 56))(&v146, v22, v64, v85, v86);
                sub_1D5B68374(&v146, &v145);
                v99 = v127;
                v100 = swift_isUniquelyReferenced_nonNull_native();
                v143 = 0;
                if ((v100 & 1) == 0)
                {
                  v99 = sub_1D5BDB0E4(0, v99[2] + 1, 1, v99);
                }

                v102 = v99[2];
                v101 = v99[3];
                v103 = v64;
                if (v102 >= v101 >> 1)
                {
                  v99 = sub_1D5BDB0E4((v101 > 1), v102 + 1, 1, v99);
                }

                v99[2] = v102 + 1;
                v127 = v99;
                sub_1D5B63F14(&v145, &v99[5 * v102 + 4]);
                v104 = swift_allocObject();
                *(v104 + 16) = v132;
                v105 = v131;
                *(v104 + 56) = MEMORY[0x1E69E6158];
                *(v104 + 64) = v105;
                v106 = v137;
                *(v104 + 32) = v136;
                *(v104 + 40) = v106;
                v107 = *(&v147 + 1);
                v108 = v148;
                __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
                v109 = *(v108 + 16);

                v110 = *(v109(v107, v108) + 16);

                *(v104 + 96) = MEMORY[0x1E69E6530];
                *(v104 + 104) = MEMORY[0x1E69E65A8];
                *(v104 + 72) = v110;
                __swift_project_boxed_opaque_existential_1(&v149, v150);
                v111 = sub_1D725AA4C();
                *(v104 + 136) = MEMORY[0x1E69E6158];
                *(v104 + 144) = v105;
                *(v104 + 112) = v111;
                *(v104 + 120) = v112;
                v113 = sub_1D7262EDC();
                sub_1D725C30C("%{public}@ Layout successfully bound items(%ld) for %{public}@", 62, 2, &dword_1D5B42000, v134, v113, v104);

                v22 = v140;
                sub_1D5BE6754(v140, type metadata accessor for GroupLayoutBindingContext);
                __swift_destroy_boxed_opaque_existential_1(&v146);
                v64 = v103;
                sub_1D5BE6754(v103, type metadata accessor for GroupLayoutContext);
                v63 = v139;
                v12 = v135;
                v96 = v142;
              }

              __swift_destroy_boxed_opaque_existential_1(&v149);
              v70 = v96 + 40;
              *&v144 = v144 - 1;
            }

            while (v144);

            v65 = v130;
            v61 = v119;
            v66 = v127;
            if (v127[2])
            {
LABEL_46:
              v114 = v66;
              goto LABEL_48;
            }
          }

          else
          {
            v66 = MEMORY[0x1E69E7CC0];
            if (*(MEMORY[0x1E69E7CC0] + 16))
            {
              goto LABEL_46;
            }
          }
        }
      }

      ++v61;
    }

    while (v61 != 4);
    v114 = MEMORY[0x1E69E7CC0];
LABEL_48:

    return v114;
  }

  return result;
}

void sub_1D70A1C30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    sub_1D5B68374(a1 + 32, a2);
    return;
  }

  sub_1D5B49474(0, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType);
  v2 = sub_1D72626AC();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = v2 + 32;
    do
    {
      if (v5 >= v3[2])
      {
        __break(1u);
        goto LABEL_37;
      }

      sub_1D5B68374(v7, &v36);
      v8 = v37;
      v9 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      sub_1D5C15304(v8, v9);
      v10 = v32;
      if (v3[2])
      {
        v11 = v3[7];
        v12 = v3[8];
        __swift_project_boxed_opaque_existential_1(v3 + 4, v11);
        sub_1D5C15304(v11, v12);
        if (v10 == 4)
        {
          if (v35 == 4)
          {
            goto LABEL_16;
          }
        }

        else if (v35 != 4 && v10 == v35)
        {
LABEL_16:
          sub_1D5B63F14(&v36, &v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C14860(0, *(v6 + 16) + 1, 1);
            v6 = v39;
          }

          v15 = *(v6 + 16);
          v14 = *(v6 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1D5C14860((v14 > 1), v15 + 1, 1);
            v6 = v39;
          }

          *(v6 + 16) = v15 + 1;
          sub_1D5B63F14(&v32, v6 + 40 * v15 + 32);
          goto LABEL_6;
        }
      }

      else if (v32 == 4)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(&v36);
LABEL_6:
      ++v5;
      v7 += 40;
    }

    while (v4 != v5);
  }

  v16 = sub_1D72626AC();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v16 + 32;
    while (v18 < *(v16 + 16))
    {
      sub_1D5B68374(v20, &v36);
      v21 = v37;
      v22 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      v23 = *((*(v22 + 16))(v21, v22) + 16);

      if (!*(v16 + 16))
      {
        goto LABEL_38;
      }

      sub_1D5B68374(v16 + 32, &v32);
      v24 = v33;
      v25 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v26 = *((*(v25 + 16))(v24, v25) + 16);

      __swift_destroy_boxed_opaque_existential_1(&v32);
      if (v23 == v26)
      {
        sub_1D5B63F14(&v36, &v32);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v39 = v19;
        if ((v27 & 1) == 0)
        {
          sub_1D5C14860(0, *(v19 + 16) + 1, 1);
          v19 = v39;
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D5C14860((v28 > 1), v29 + 1, 1);
          v19 = v39;
        }

        *(v19 + 16) = v29 + 1;
        sub_1D5B63F14(&v32, v19 + 40 * v29 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      ++v18;
      v20 += 40;
      if (v17 == v18)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_33:

    v30 = sub_1D72626AC();

    if (*(v30 + 16))
    {
      sub_1D5B68374(v30 + 32, a2);
    }

    else
    {

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }
}

void sub_1D70A2098(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5BEE70C(a2, v13, v14);
  if (v6)
  {
    v21 = *(a3 + *(*a3 + 168));
    sub_1D5BD20D0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7279970;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1D5B7E2C0();
    *(v15 + 64) = v16;
    *(v15 + 32) = a4;
    *(v15 + 40) = a5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    v17 = sub_1D725AA4C();
    v18 = MEMORY[0x1E69E6158];
    *(v15 + 96) = MEMORY[0x1E69E6158];
    *(v15 + 104) = v16;
    *(v15 + 72) = v17;
    *(v15 + 80) = v19;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    *(v15 + 136) = v18;
    *(v15 + 144) = v16;
    *(v15 + 112) = 0;
    *(v15 + 120) = 0xE000000000000000;
    v20 = sub_1D7262EDC();
    sub_1D725C30C("%{public}@ Layout %{public}@ not satisfied, reason=%{public}@", 61, 2, &dword_1D5B42000, v21, v20, v15);

    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    sub_1D5B68374(a1, a6);
  }
}

uint64_t sub_1D70A229C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1D725AA4C();
  v5 = v4;
  v6 = *(*a2 + 160);
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (!*(v7 + 16))
  {

    goto LABEL_5;
  }

  v8 = sub_1D5B69D90(v3, v5);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
LABEL_6:
  swift_endAccess();
  return v11;
}

char *sub_1D70A2368()
{
  sub_1D6084EA8((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v1 = *(*v0 + 112);
  v2 = sub_1D7259CFC();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 120);
  v4 = sub_1D7259F5C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  sub_1D5BE6754(&v0[*(*v0 + 128)], type metadata accessor for FeedLayoutSolverOptions);

  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 144)]);

  sub_1D5BE6754(&v0[*(*v0 + 184)], type metadata accessor for FeedContext);
  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 192)]);

  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 224)]);
  return v0;
}

void sub_1D70A2554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D70A25B8(uint64_t a1)
{
  if (!qword_1EDF04790)
  {
    sub_1D70A2640(255, &qword_1EDF17210, MEMORY[0x1E69D7980]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04790);
    }
  }
}

void sub_1D70A2640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor(255);
    v8[1] = type metadata accessor for FormatModel(255);
    v8[2] = sub_1D5B85FD8(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor, &protocol conformance descriptor for FormatSectionDescriptor);
    v8[3] = sub_1D5B85FD8(&qword_1EDF128E0, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D70A2734(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF041E0)
  {
    sub_1D5ECF374(255, a2);
    sub_1D5B85FD8(&qword_1EDF16978, sub_1D5ECF374, MEMORY[0x1E69D8808]);
    v2 = sub_1D72640AC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF041E0);
    }
  }
}

void sub_1D70A27C8(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF041F0)
  {
    sub_1D5ECF374(255, a2);
    sub_1D5B85FD8(&qword_1EDF16978, sub_1D5ECF374, MEMORY[0x1E69D8808]);
    v2 = sub_1D726409C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF041F0);
    }
  }
}

uint64_t sub_1D70A2984@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1E69E6720];
  sub_1D70A2554(0, a2, a3, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v19 - v15;
  sub_1D70A3E54(a1, &v19 - v15, a2, a3, v12, sub_1D70A2554);
  v17 = a4(0);
  result = (*(*(v17 - 8) + 48))(v16, 1, v17);
  if (result != 1)
  {
    return sub_1D5BE6684(v16, a6, a5);
  }

  __break(1u);
  return result;
}

BOOL sub_1D70A2AB4(_OWORD *a1)
{
  v1 = a1[7];
  v6[6] = a1[6];
  v7[0] = v1;
  *(v7 + 9) = *(a1 + 121);
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v6) == 0;
}

uint64_t sub_1D70A2B08@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[7];
  v24[6] = a1[6];
  v25[0] = v4;
  *(v25 + 9) = *(a1 + 121);
  v5 = a1[3];
  v24[2] = a1[2];
  v24[3] = v5;
  v6 = a1[5];
  v24[4] = a1[4];
  v24[5] = v6;
  v7 = a1[1];
  v24[0] = *a1;
  v24[1] = v7;
  result = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = a1[5];
    v11 = a1[6];
    v10 = a1[7];
    a2[6] = v11;
    a2[7] = v10;
    *(a2 + 121) = *(a1 + 121);
    v12 = a1[1];
    v14 = a1[2];
    v13 = a1[3];
    a2[2] = v14;
    a2[3] = v13;
    v15 = a1[3];
    v17 = a1[4];
    v16 = a1[5];
    a2[4] = v17;
    a2[5] = v16;
    v18 = a1[1];
    v19 = *a1;
    *a2 = *a1;
    a2[1] = v18;
    v20 = a1[7];
    v22[6] = v11;
    v23[0] = v20;
    *(v23 + 9) = *(a1 + 121);
    v22[2] = v14;
    v22[3] = v15;
    v22[4] = v17;
    v22[5] = v9;
    v22[0] = v19;
    v22[1] = v12;
    return sub_1D5ECF2C4(v22, &v21);
  }

  return result;
}

uint64_t sub_1D70A2C0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5BD20D0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D70A2CF0@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 72);
  v13 = *(v2 + 88);
  v14 = *(v2 + 104);
  v15 = *(v2 + 120);
  v16 = *(v2 + 136);
  v17 = *(v2 + 152);
  v18 = *(v2 + 160);
  v19 = a1[3];
  v22[2] = a1[2];
  v22[3] = v19;
  v22[4] = a1[4];
  v20 = a1[1];
  v22[0] = *a1;
  v22[1] = v20;
  result = sub_1D708DD2C(v22, v5, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, v18);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D70A2DB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D70A2554(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D70A2E30(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5BD20D0(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D70A2EB4()
{
  if (!qword_1EDF391A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF391A0);
    }
  }
}

uint64_t sub_1D70A2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a1 + 40);
  v44 = *(a1 + 32);
  v14 = *(a1 + 128);
  v15 = *(a1 + 96);
  v46 = *(a1 + 80);
  v47 = v15;
  v48 = *(a1 + 112);
  v49 = v14;

  v45 = v13;

  v16 = FeedGroupKind.identifier.getter();
  v18 = v16;
  v19 = *(a1 + 64);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v37 = v17;
    v38 = v16;
    v39 = v12;
    v40 = v11;
    v41 = a1;
    v42 = a3;
    v43 = a2;
    *&v46 = MEMORY[0x1E69E7CC0];
    v22 = v19;

    sub_1D5BFC364(0, v20, 0);
    v21 = v46;
    v23 = *(v7 + 80);
    v36 = v22;
    v24 = v22 + ((v23 + 32) & ~v23);
    v25 = *(v7 + 72);
    do
    {
      sub_1D5BE64C0(v24, v10, type metadata accessor for FeedItem);
      v26 = FeedItem.identifier.getter();
      v28 = v27;
      sub_1D5BE6754(v10, type metadata accessor for FeedItem);
      *&v46 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D5BFC364((v29 > 1), v30 + 1, 1);
        v21 = v46;
      }

      *(v21 + 16) = v30 + 1;
      v31 = v21 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v24 += v25;
      --v20;
    }

    while (v20);

    a3 = v42;
    a2 = v43;
    v11 = v40;
    a1 = v41;
    v18 = v38;
    v12 = v39;
    v17 = v37;
  }

  v33 = *(a1 + 136);
  v32 = *(a1 + 144);
  *a3 = v12;
  a3[1] = v11;
  v34 = v45;
  a3[2] = v44;
  a3[3] = v34;
  a3[4] = v18;
  a3[5] = v17;
  a3[6] = v21;
  a3[7] = v33;
  a3[8] = v32;
  a3[9] = a2;
}

char *sub_1D70A3148(unint64_t a1)
{
  v2 = type metadata accessor for FeedItem(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1D699A630(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    v10 = v36;
    v31 = a1 & 0xC000000000000001;
    v26[1] = a1 + 32;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = i;
    v29 = a1;
    while (!__OFADD__(v9, 1))
    {
      v34 = v9 + 1;
      if (v31)
      {
        v11 = MEMORY[0x1DA6FB460]();
      }

      else
      {
        if (v9 >= *(v27 + 16))
        {
          goto LABEL_25;
        }
      }

      v12 = *(v11 + 64);
      v13 = *(v12 + 16);
      if (v13)
      {
        v32 = v11;
        v33 = v10;
        v35 = v7;
        sub_1D5BDF6B0(0, v13, 0);
        v14 = v35;
        v15 = v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v16 = *(v30 + 72);
        do
        {
          sub_1D5BE64C0(v15, v5, type metadata accessor for FeedItem);
          v17 = swift_allocObject();
          v18 = FeedItem.identifier.getter();
          v20 = v19;
          sub_1D5BE6754(v5, type metadata accessor for FeedItem);
          *(v17 + 16) = v18;
          *(v17 + 24) = v20;
          v35 = v14;
          v22 = *(v14 + 16);
          v21 = *(v14 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1D5BDF6B0((v21 > 1), v22 + 1, 1);
            v14 = v35;
          }

          *(v14 + 16) = v22 + 1;
          *(v14 + 8 * v22 + 32) = v17;
          v15 += v16;
          --v13;
        }

        while (v13);

        i = v28;
        a1 = v29;
        v7 = MEMORY[0x1E69E7CC0];
        v10 = v33;
      }

      else
      {

        v14 = v7;
      }

      v36 = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D699A630((v23 > 1), v24 + 1, 1);
        v10 = v36;
      }

      *(v10 + 16) = v24 + 1;
      v25 = v10 + (v24 << 6);
      *(v25 + 32) = 0u;
      *(v25 + 48) = 0u;
      *(v25 + 64) = v14;
      *(v25 + 72) = v7;
      *(v25 + 80) = v7;
      v9 = v34;
      *(v25 + 88) = 0;
      if (v9 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D70A3448(uint64_t a1)
{
  sub_1D70A3698(0, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D70A34D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5D60AB4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D70A3560()
{
  result = qword_1EC899F48;
  if (!qword_1EC899F48)
  {
    sub_1D70A3698(255, &qword_1EC899F40, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver.Errors);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F48);
  }

  return result;
}

uint64_t sub_1D70A35E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D70A229C(a1, v2);
  *a2 = result;
  return result;
}

unint64_t sub_1D70A3610()
{
  result = qword_1EDF05320;
  if (!qword_1EDF05320)
  {
    sub_1D70A2554(255, &qword_1EDF05330, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05320);
  }

  return result;
}

void sub_1D70A3698(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D70A36EC(uint64_t a1, uint64_t a2)
{
  sub_1D70A3698(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D70A377C(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04210)
  {
    sub_1D5E2C35C(255, a2);
    sub_1D5B85FD8(&qword_1EDF17BC0, sub_1D5E2C35C, MEMORY[0x1E69D6628]);
    v2 = sub_1D7263FAC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF04210);
    }
  }
}

void sub_1D70A3810(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04230)
  {
    sub_1D70A38BC(255, a2);
    type metadata accessor for FeedRecipe(255);
    sub_1D5B85FD8(&qword_1EDF041B8, sub_1D70A38BC, MEMORY[0x1E69E6E80]);
    v2 = sub_1D7263F7C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF04230);
    }
  }
}

void sub_1D70A38BC(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF041A8)
  {
    sub_1D70A3950(255, a2);
    sub_1D5B85FD8(&qword_1EDF04270, sub_1D70A3950, MEMORY[0x1E69E6CC8]);
    v2 = sub_1D72640BC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF041A8);
    }
  }
}

void sub_1D70A3978(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04220)
  {
    sub_1D70A3A24(255, a2);
    type metadata accessor for FeedHeadline(255);
    sub_1D5B85FD8(&unk_1EDF04198, sub_1D70A3A24, MEMORY[0x1E69E6E80]);
    v2 = sub_1D7263F7C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF04220);
    }
  }
}

void sub_1D70A3A24(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04188)
  {
    sub_1D70A3AB8(255, a2);
    sub_1D5B85FD8(&unk_1EDF04250, sub_1D70A3AB8, MEMORY[0x1E69E6CC8]);
    v2 = sub_1D72640BC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF04188);
    }
  }
}

void sub_1D70A3AE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), __n128 a5)
{
  if (!*a2)
  {
    sub_1D5E2C35C(255, a5);
    sub_1D70A2554(255, a3, a4, MEMORY[0x1E69E6720]);
    sub_1D5B85FD8(&qword_1EDF17BC8, sub_1D5E2C35C, MEMORY[0x1E69D6620]);
    v8 = sub_1D7263F7C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D70A3BB0(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF042C0)
  {
    sub_1D5E2C35C(255, a2);
    sub_1D5B85FD8(&qword_1EDF17BC8, sub_1D5E2C35C, MEMORY[0x1E69D6620]);
    v2 = sub_1D7263D7C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF042C0);
    }
  }
}

void sub_1D70A3C44(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04238)
  {
    sub_1D70A3CE0(255, a2);
    sub_1D5B85FD8(&unk_1EDF041D0, sub_1D70A3CE0, MEMORY[0x1E69E6E80]);
    v2 = sub_1D7263F7C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF04238);
    }
  }
}

void sub_1D70A3CE0(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF041C0)
  {
    sub_1D70A3D74(255, a2);
    sub_1D5B85FD8(&unk_1EDF04288, sub_1D70A3D74, MEMORY[0x1E69E6CC8]);
    v2 = sub_1D72640BC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF041C0);
    }
  }
}

void sub_1D70A3D74(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04278)
  {
    sub_1D5E2C35C(255, a2);
    sub_1D5D60AB4(255, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720]);
    sub_1D5B85FD8(&qword_1EDF17BC8, sub_1D5E2C35C, MEMORY[0x1E69D6620]);
    v2 = sub_1D7263F7C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF04278);
    }
  }
}

uint64_t sub_1D70A3E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

id *sub_1D70A3F1C(uint64_t a1)
{
  v55 = sub_1D725ABEC();
  v3 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A4E58(0, &qword_1EDF177E8, sub_1D70A4E00, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v53 = &v48 - v8;
  v52 = sub_1D725A9BC();
  v56 = *(v52 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v52, v9).n128_u64[0];
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v1 + 16) subscriptions];
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = v13;
    sub_1D70A4E00();
    v16 = sub_1D726267C();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v60 = v14;
  if (v16 >> 62)
  {
LABEL_49:
    v17 = sub_1D7263BFC();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  v51 = v16;
  if (v17)
  {
    v48 = v1;
    v49 = v3;
    v50 = v12;
    v19 = 0;
    v57 = v16 & 0xFFFFFFFFFFFFFF8;
    v58 = v16 & 0xC000000000000001;
    v16 += 32;
    v12 = (a1 + 56);
    do
    {
      if (v58)
      {
        v20 = MEMORY[0x1DA6FB460](v19, v51);
      }

      else
      {
        if (v19 >= *(v57 + 16))
        {
          goto LABEL_48;
        }

        v20 = *(v16 + 8 * v19);
      }

      v21 = v20;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      result = [v20 tagID];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v1 = result;
      v3 = sub_1D726207C();
      v25 = v24;

      if (*(a1 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v26 = sub_1D7264A5C(), v27 = -1 << *(a1 + 32), v1 = v26 & ~v27, ((*&v12[(v1 >> 3) & 0xFFFFFFFFFFFFFF8] >> v1) & 1) != 0))
      {
        v28 = ~v27;
        while (1)
        {
          v29 = (*(a1 + 48) + 16 * v1);
          v30 = *v29 == v3 && v29[1] == v25;
          if (v30 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v1 = (v1 + 1) & v28;
          if (((*&v12[(v1 >> 3) & 0xFFFFFFFFFFFFFF8] >> v1) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        v1 = &v60;
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      else
      {
LABEL_8:
      }
    }

    while (v19 != v17);
    v31 = v60;
    v3 = v49;
    v12 = v50;
    v1 = v48;
    v18 = MEMORY[0x1E69E7CC0];
    if ((v60 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
    {
LABEL_30:
      if ((v31 & 0x4000000000000000) == 0)
      {
        v32 = *(v31 + 16);
        goto LABEL_32;
      }
    }
  }

  v32 = sub_1D7263BFC();
LABEL_32:
  v33 = v51;
  if (v32 == *(a1 + 16))
  {

    if (v32)
    {
      v59 = v18;
      sub_1D5C8A65C(0, v32, 0);
      v34 = 0;
      v57 = v31 & 0xC000000000000001;
      v58 = v32;
      v35 = v59;
      v50 = (v56 + 32);
      v51 = (v3 + 16);
      do
      {
        if (v57)
        {
          v36 = MEMORY[0x1DA6FB460](v34, v31);
        }

        else
        {
          v36 = *(v31 + 8 * v34 + 32);
        }

        v60 = v36;
        v37 = qword_1EDF17DC0;
        v38 = v36;
        if (v37 != -1)
        {
          swift_once();
        }

        v39 = v55;
        v40 = __swift_project_value_buffer(v55, qword_1EDF17DC8);
        v41 = (*v51)(v54, v40, v39);
        MEMORY[0x1EEE9AC00](v41, v42);
        *(&v48 - 2) = sub_1D70A4E00();
        swift_getKeyPath();
        sub_1D725BF6C();
        sub_1D725A9AC();

        v59 = v35;
        v44 = *(v35 + 16);
        v43 = *(v35 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1D5C8A65C((v43 > 1), v44 + 1, 1);
          v35 = v59;
        }

        ++v34;
        *(v35 + 16) = v44 + 1;
        (*(v56 + 32))(v35 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v44, v12, v52);
      }

      while (v58 != v34);
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    v59 = v35;
    sub_1D70A4E58(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {

    MEMORY[0x1EEE9AC00](v45, v46);
    *(&v48 - 4) = v1;
    *(&v48 - 3) = v33;
    *(&v48 - 2) = a1;
    sub_1D70A4E58(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v47 = sub_1D725BBAC();

    return v47;
  }
}

void sub_1D70A4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = sub_1D5B7E910;
  v14[5] = v12;
  v16[4] = sub_1D70A4EBC;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D70A4D64;
  v16[3] = &block_descriptor_130;
  v15 = _Block_copy(v16);

  [v13 subscriptionsWithCompletion_];
  _Block_release(v15);
}

void sub_1D70A4760(unint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, __n128), uint64_t a5)
{
  v48 = a5;
  v49 = a4;
  v57 = sub_1D725ABEC();
  v8 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v9);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A4E58(0, &qword_1EDF177E8, sub_1D70A4E00, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v55 = &v46 - v13;
  v54 = sub_1D725A9BC();
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    a2 = a1;
  }

  else
  {
  }

  v60 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {

    v18 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v47 = v8;
    v50 = v16;
    v51 = a2;
    v19 = 0;
    v52 = a2 & 0xFFFFFFFFFFFFFF8;
    v53 = a2 & 0xC000000000000001;
    v20 = a2 + 32;
    v21 = a3 + 56;
    while (1)
    {
      if (v53)
      {
        v22 = MEMORY[0x1DA6FB460](v19, v51);
      }

      else
      {
        if (v19 >= *(v52 + 16))
        {
          goto LABEL_44;
        }

        v22 = *(v20 + 8 * v19);
      }

      v23 = v22;
      if (__OFADD__(v19++, 1))
      {
        break;
      }

      v25 = [v22 tagID];
      if (!v25)
      {
        goto LABEL_50;
      }

      a2 = v25;
      v26 = sub_1D726207C();
      v8 = v27;

      if (*(a3 + 16))
      {
        v16 = i;
        sub_1D7264A0C();
        sub_1D72621EC();
        v28 = sub_1D7264A5C();
        v29 = -1 << *(a3 + 32);
        a2 = v28 & ~v29;
        if ((*(v21 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
        {
          v30 = ~v29;
          while (1)
          {
            v31 = (*(a3 + 48) + 16 * a2);
            v32 = *v31 == v26 && v31[1] == v8;
            if (v32 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            a2 = (a2 + 1) & v30;
            if (((*(v21 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          a2 = &v60;
          sub_1D7263E9C();
          v8 = v60[2];
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          i = v16;
        }

        else
        {
LABEL_24:

          i = v16;
        }
      }

      else
      {
      }

      if (v19 == i)
      {
        v33 = v60;
        v16 = v50;
        v8 = v47;
        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_29:

  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      goto LABEL_32;
    }

LABEL_47:

    v36 = MEMORY[0x1E69E7CC0];
LABEL_48:
    (v49)(v36);

    return;
  }

  v34 = sub_1D7263BFC();
  if (!v34)
  {
    goto LABEL_47;
  }

LABEL_32:
  v59 = v18;
  sub_1D5C8A65C(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v51 = (v8 + 16);
    v52 = v33 & 0xC000000000000001;
    v36 = v59;
    v50 = (v58 + 32);
    v53 = v33;
    do
    {
      if (v52)
      {
        v37 = MEMORY[0x1DA6FB460](v35, v33);
      }

      else
      {
        v37 = *(v33 + 8 * v35 + 32);
      }

      v60 = v37;
      v38 = qword_1EDF17DC0;
      v39 = v37;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = v57;
      v41 = __swift_project_value_buffer(v57, qword_1EDF17DC8);
      v42 = (*v51)(v56, v41, v40);
      MEMORY[0x1EEE9AC00](v42, v43);
      *(&v46 - 2) = sub_1D70A4E00();
      swift_getKeyPath();
      sub_1D725BF6C();
      sub_1D725A9AC();

      v59 = v36;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D5C8A65C((v44 > 1), v45 + 1, 1);
        v36 = v59;
      }

      ++v35;
      *(v36 + 16) = v45 + 1;
      (*(v58 + 32))(v36 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v45, v16, v54);
      v33 = v53;
    }

    while (v34 != v35);

    goto LABEL_48;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

double sub_1D70A4D64(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1D70A4E00();
    v2 = sub_1D726267C();
  }

  v3(v2);

  return result;
}

unint64_t sub_1D70A4E00()
{
  result = qword_1EDF3C790;
  if (!qword_1EDF3C790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF3C790);
  }

  return result;
}

void sub_1D70A4E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D70A4F6C()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 windowScene];

    if (v3)
    {
      v4 = objc_opt_self();
      v5 = [v4 defaultCenter];
      [v5 addObserver:v0 selector:sel_didBeginLiveResizing name:*MEMORY[0x1E69DEB20] object:v3];

      v6 = [v4 defaultCenter];
      [v6 addObserver:v0 selector:sel_didEndLiveResizing name:*MEMORY[0x1E69DEB28] object:v3];
    }
  }
}

void sub_1D70A50EC(void *a1, uint64_t a2, char a3)
{
  v3 = a1;

  sub_1D725B32C();
}

void sub_1D70A52D4()
{
  if (!qword_1EC88DD30)
  {
    v0 = sub_1D725B36C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DD30);
    }
  }
}

uint64_t sub_1D70A5338()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1D70A53B4(uint64_t a1)
{
  result = sub_1D5B4AA08();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70A5404()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_1D70A54B0()
{
  v1 = *(*v0 + 160);

  return v1;
}

uint64_t sub_1D70A54E4@<X0>(uint64_t a1@<X8>)
{
  sub_1D69DAB28(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v26 - v5;
  v7 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatDerivedDataBindingRepeatResult(0);
  sub_1D69DAB7C(v1 + *(v12 + 20), v6, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D68752FC(v6);
    return (*(v8 + 56))(a1, 1, 1, v7);
  }

  result = sub_1D607483C(v6, v11);
  if (*(v1 + 45))
  {
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D5E40444();
    swift_allocError();
    *v14 = 0xD000000000000033;
    v14[1] = 0x80000001D73FC4C0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1D69DAACC(v11);
  }

  v15 = *(v1 + 44);
  v16 = *(v1 + 40);
  v18 = *(v1 + 24);
  v17 = *(v1 + 32);
  v19 = *(v1 + 16);
  if ((v19 & 0x100000000) == 0)
  {
    if ((v18 & 0x100000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (v18)
    {
      LODWORD(v18) = 0x7FFFFFFF;
      v20 = v16 | (v15 << 32);
      if ((v17 & 0x100000000) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v18) = *v11;
      v20 = v16 | (v15 << 32);
      if ((v17 & 0x100000000) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_8:
    if ((v20 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v19)
  {
    LODWORD(v19) = 0x7FFFFFFF;
    if ((v18 & 0x100000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(v19) = *v11;
    if ((v18 & 0x100000000) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_7:
  v20 = v16 | (v15 << 32);
  if ((v17 & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  if (v17)
  {
    LODWORD(v17) = 0x7FFFFFFF;
    if ((v20 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    LODWORD(v17) = *v11;
    if ((v20 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  if (v16)
  {
    LODWORD(v16) = 0x7FFFFFFF;
  }

  else
  {
    LODWORD(v16) = *v11;
  }

LABEL_25:
  if (v17 == 0x7FFFFFFF)
  {
    if (v16 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

LABEL_36:
    v24 = *(v11 + 1);
    sub_1D69DAB7C(v11 + *(v7 + 36), a1 + *(v7 + 36), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

    sub_1D69DAACC(v11);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *a1 = v21;
    *(a1 + 4) = v18;
    v25 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    sub_1D5CDE22C(0, 0);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  v22 = *v11 * v17;
  if (v22 == v22)
  {
    v23 = v11[1] * v17;
    if (v23 == v23)
    {
      if (v22 <= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v22;
      }

      if (v23 < v18)
      {
        LODWORD(v18) = v23;
      }

      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FormatDerivedDataBindingRepeatResult(uint64_t a1)
{
  result = qword_1EC899F58;
  if (!qword_1EC899F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D70A58B8(uint64_t a1)
{
  sub_1D69DAB28(319, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D70A59C8(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 32))(a4, a5);
  if (v8)
  {
    v9 = v8;
    sub_1D5B5DA7C();
    v10 = sub_1D726308C();
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = a1;
    v11[4] = a2;
    v11[5] = a3;
    v16[4] = sub_1D6F8EC10;
    v16[5] = v11;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1D5B6B06C;
    v16[3] = &block_descriptor_131;
    v12 = _Block_copy(v16);
    v13 = v9;
    v14 = a1;

    v15 = [v13 downloadIfNeededWithCompletionQueue:v10 completion:v12];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }

  else
  {
    a2();
  }
}

void sub_1D70A5B2C(void *a1, void *a2, void (*a3)(void *))
{
  v6 = sub_1D726369C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 filePath];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

    if (v14)
    {
      [a2 size];
      (*(v7 + 104))(v11, *MEMORY[0x1E69D88B0], v6);
      v15 = sub_1D72635EC();
      (*(v7 + 8))(v11, v6);
      v16 = v15;
      a3(v15);
    }
  }
}

void IssueAutomation.init(issue:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = [a1 type];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v8)
  {
    v9 = 0;
  }

  *(a2 + 16) = v9;
  *(a2 + 17) = [a1 isPaid];
  *(a2 + 18) = [a1 isBundlePaid];
  v10 = [a1 sourceChannel];
  v11 = [v10 identifier];
  v12 = sub_1D726207C();
  v14 = v13;

  v15 = [v10 asChannel];
  swift_unknownObjectRelease();

  if (v15)
  {
    swift_unknownObjectRelease();
  }

  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15 != 0;
}

uint64_t IssueAutomation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IssueAutomation.sourceChannel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

NewsFeed::IssueAutomation::IssueType_optional __swiftcall IssueAutomation.IssueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IssueAutomation.IssueType.rawValue.getter()
{
  v1 = 6710384;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6712929;
  }
}

uint64_t sub_1D70A5F24(_BYTE *a1, _BYTE *a2)
{
  v2 = 6710384;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE300000000000000;
  v6 = 0x6E776F6E6B6E75;
  if (v3 == 1)
  {
    v6 = 6710384;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 6712929;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 6712929;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70A6000()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D70A6090(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D70A610C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70A61A4(uint64_t *a1@<X8>)
{
  v2 = 6710384;
  v3 = 0xE300000000000000;
  if (*v1 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 6712929;
    v4 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_1D70A62A0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x646961507369;
  v4 = 0x656C646E75427369;
  if (v1 != 3)
  {
    v4 = 0x6843656372756F73;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7079546575737369;
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

uint64_t sub_1D70A6354@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D70A6E04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D70A637C(uint64_t a1)
{
  v2 = sub_1D70A6684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70A63B8(uint64_t a1)
{
  v2 = sub_1D70A6684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IssueAutomation.encode(to:)(void *a1)
{
  sub_1D70A6A60(0, &qword_1EC899F68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v24 = *(v1 + 16);
  v9 = *(v1 + 17);
  v18 = *(v1 + 18);
  v19 = v9;
  v10 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v10;
  HIDWORD(v15) = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70A6684();
  sub_1D7264B5C();
  LOBYTE(v21) = 0;
  v11 = v20;
  sub_1D72643FC();
  if (v11)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v16;
  v13 = v17;
  LOBYTE(v21) = v24;
  v25 = 1;
  sub_1D70A66D8();
  sub_1D726443C();
  LOBYTE(v21) = 2;
  sub_1D726440C();
  LOBYTE(v21) = 3;
  sub_1D726440C();
  v21 = v13;
  v22 = v12;
  v23 = BYTE4(v15);
  v25 = 4;
  sub_1D6BE2508();

  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D70A6684()
{
  result = qword_1EC899F70;
  if (!qword_1EC899F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F70);
  }

  return result;
}

unint64_t sub_1D70A66D8()
{
  result = qword_1EC899F78;
  if (!qword_1EC899F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F78);
  }

  return result;
}

void IssueAutomation.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D70A6A60(0, &qword_1EC899F80, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70A6684();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v29[0]) = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v26 = v11;
    LOBYTE(v27) = 1;
    sub_1D70A6AC4();
    sub_1D726431C();
    v14 = LOBYTE(v29[0]);
    LOBYTE(v29[0]) = 2;
    v15 = sub_1D72642CC();
    v24 = v14;
    LODWORD(v25) = v15;
    LOBYTE(v29[0]) = 3;
    LODWORD(v23) = sub_1D72642CC();
    v41 = 4;
    sub_1D6BE24B0();
    sub_1D726431C();
    v16 = v25 & 1;
    LOBYTE(v14) = v23 & 1;
    (*(v7 + 8))(v10, v6);
    v25 = v38;
    v23 = v39;
    v17 = v40;
    v18 = v26;
    *&v27 = v26;
    *(&v27 + 1) = v13;
    v19 = v24;
    v28[0] = v24;
    v28[1] = v16;
    v28[2] = v14;
    *&v28[3] = v42;
    v28[7] = v43;
    *&v28[8] = v38;
    *&v28[16] = v39;
    v28[24] = v40;
    v20 = v27;
    v21 = *v28;
    *(a2 + 25) = *&v28[9];
    *a2 = v20;
    a2[1] = v21;
    sub_1D70A6B18(&v27, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29[0] = v18;
    v29[1] = v13;
    v30 = v19;
    v31 = v16;
    v32 = v14;
    v33 = v42;
    v34 = v43;
    v35 = v25;
    v36 = v23;
    v37 = v17;
    sub_1D70A6B50(v29);
  }
}

void sub_1D70A6A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70A6684();
    v7 = a3(a1, &type metadata for IssueAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70A6AC4()
{
  result = qword_1EC899F88;
  if (!qword_1EC899F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F88);
  }

  return result;
}

unint64_t sub_1D70A6B84()
{
  result = qword_1EC899F90;
  if (!qword_1EC899F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F90);
  }

  return result;
}

unint64_t sub_1D70A6BDC()
{
  result = qword_1EDF11688;
  if (!qword_1EDF11688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11688);
  }

  return result;
}

unint64_t sub_1D70A6C34()
{
  result = qword_1EDF11690;
  if (!qword_1EDF11690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11690);
  }

  return result;
}

unint64_t sub_1D70A6D00()
{
  result = qword_1EC899F98;
  if (!qword_1EC899F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899F98);
  }

  return result;
}

unint64_t sub_1D70A6D58()
{
  result = qword_1EC899FA0;
  if (!qword_1EC899FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899FA0);
  }

  return result;
}

unint64_t sub_1D70A6DB0()
{
  result = qword_1EC899FA8;
  if (!qword_1EC899FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899FA8);
  }

  return result;
}

uint64_t sub_1D70A6E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546575737369 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEC00000064696150 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6843656372756F73 && a2 == 0xED00006C656E6E61)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D70A6FCC()
{
  result = qword_1EC899FB0;
  if (!qword_1EC899FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899FB0);
  }

  return result;
}

uint64_t sub_1D70A7020(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
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
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
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

void sub_1D70A7304(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_1D725891C();
  v8 = *(v7 - 8);
  v28 = v7;
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v8 + 64) + v13;
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  v17 = ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v18 = a3 - v14 + 1;
  }

  else
  {
    v18 = 2;
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

  if (v14 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v14)
  {
    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a2 - v14;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v23 = ~v14 + a2;
      bzero(a1, ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v17) = 0;
  }

  else if (v21)
  {
    *(a1 + v17) = 0;
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
  if (v9 == v14)
  {
    v24 = *(v8 + 56);

    v24(a1, a2, v9, v28);
  }

  else
  {
    v25 = (a1 + v15) & ~v13;
    if (v12 == v14)
    {
      v26 = *(v11 + 56);

      v26(v25, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v27 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v27 = (a2 - 1);
      }

      *((v16 + v25) & 0xFFFFFFFFFFFFFFF8) = v27;
    }
  }
}

uint64_t sub_1D70A7610(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1D725AA4C();
}

uint64_t sub_1D70A76E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1D72588AC() & 1) == 0)
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for FeedDeferredCursorGroup(0, a3, a4, v7);
  swift_getAssociatedConformanceWitness();
  if ((sub_1D7261FBC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedDatabaseGroup(0, a3, a4, v9);
  return static FeedDatabaseGroup.== infix(_:_:)(*(a1 + *(v8 + 40))) & 1;
}

void *FeedAdPipelineProcessor.__allocating_init(bannerAdRequester:prerollAdRequester:nativeAdManager:layoutEnvironmentProvider:rendererEnvironment:journal:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[3] = 0;
  swift_unknownObjectWeakInit();
  v12[4] = a1;
  v12[5] = a2;
  sub_1D5B63F14(a3, (v12 + 6));
  v12[11] = a4;
  sub_1D5B63F14(a5, (v12 + 12));
  v12[17] = a6;
  return v12;
}

void *FeedAdPipelineProcessor.init(bannerAdRequester:prerollAdRequester:nativeAdManager:layoutEnvironmentProvider:rendererEnvironment:journal:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[4] = a1;
  v6[5] = a2;
  sub_1D5B63F14(a3, (v6 + 6));
  v6[11] = a4;
  sub_1D5B63F14(a5, (v6 + 12));
  v6[17] = a6;
  return v6;
}

uint64_t FeedAdPipelineProcessor.deinit()
{
  sub_1D5B87E10(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return v0;
}

uint64_t FeedAdPipelineProcessor.__deallocating_deinit()
{
  sub_1D5B87E10(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1D70A7AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_1D5BF5A9C(0, &qword_1EDF3A918, sub_1D5C25550, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v53 - v5;
  v58 = sub_1D7260DDC();
  v6 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE1514(0);
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v62 = &v53 - v19;
  v20 = sub_1D726098C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D726078C();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v59 = sub_1D72605BC();
  v56 = *(v59 - 8);
  v57 = v56;
  MEMORY[0x1EEE9AC00](v59, v27);
  v54 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7260D7C();
  sub_1D726077C();
  (*(v21 + 104))(v24, *MEMORY[0x1E69B4178], v20);
  sub_1D72605AC();
  v29 = sub_1D7260D7C();
  v31 = v30;
  v32 = v55;
  v33 = a1;
  v34 = v58;
  (*(v6 + 16))(v55, v33, v58);
  *(v16 + v13[6]) = 0x2000;
  v35 = v16 + v13[7];
  *v35 = 0;
  v35[8] = 1;
  *(v16 + v13[8]) = xmmword_1D72830B0;
  *v16 = v29;
  v16[1] = v31;
  v36 = v13[5];
  v53 = v13;
  (*(v6 + 32))(v16 + v36, v32, v34);
  sub_1D5C25550(0);
  v38 = v37;
  v39 = *(v37 - 8);
  v55 = *(v39 + 56);
  v58 = v39 + 56;
  (v55)(v66, 1, 1, v37);
  v61 = sub_1D70A85CC(qword_1EDF42200, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);
  swift_retain_n();
  v40 = v60;
  sub_1D726051C();
  v41 = sub_1D72604EC();
  sub_1D70A85CC(qword_1EC893118, MEMORY[0x1E69B3F10], MEMORY[0x1E69B3F18]);
  v42 = swift_allocError();
  v44 = v43;
  sub_1D5BF5A9C(0, &qword_1EC899FB8, MEMORY[0x1E69B3F78], MEMORY[0x1E69E6F90]);
  v45 = v57;
  v46 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D7273AE0;
  v48 = v47 + v46;
  v49 = v54;
  v50 = v59;
  (*(v45 + 16))(v48, v54, v59);
  *v44 = v47;
  (*(*(v41 - 8) + 104))(v44, *MEMORY[0x1E69B3F00], v41);
  v51 = v63;
  sub_1D726053C();
  (*(v64 + 8))(v40, v51);

  (v55)(v66, 1, 1, v38);
  sub_1D726051C();
  return (*(v45 + 8))(v49, v50);
}

BOOL sub_1D70A81A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2;
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 120);
  v6 = sub_1D725CE8C();
  v16 = sub_1D726393C();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v8);
  v10 = &v15 - v9;
  v15 = *(v2 + 192);
  sub_1D7260A8C();
  *&v11 = *(v3 + 112);
  *&v12 = *(v3 + 80);
  *(&v12 + 1) = v4;
  *(&v11 + 1) = v5;
  v17 = v12;
  v18 = v11;
  sub_1D725FACC();
  sub_1D725FA3C();

  v13 = (*(*(v6 - 8) + 48))(v10, 1, v6) == 1;
  (*(v7 + 8))(v10, v16);
  return v13;
}

uint64_t sub_1D70A83EC(uint64_t a1)
{
  result = sub_1D725FACC();
  if (v2 <= 0x3F)
  {
    result = sub_1D725D34C();
    if (v3 <= 0x3F)
    {
      result = sub_1D725E9DC();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D70A8538(uint64_t a1)
{
  sub_1D5BF5A9C(0, &unk_1EDF3A930, MEMORY[0x1E69B43E0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D70A85CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FeedItemFilterIssueMatcher.createApplicator()@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DateComparison(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedItemFilterIssueMatcher(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70A9990(v2, v12, type metadata accessor for FeedItemFilterIssueMatcher);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = sub_1D70A89A8;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        result = *v12;
        v14 = sub_1D6C6B8E0;
      }

      else
      {
        result = 0;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      result = 0;
      v14 = sub_1D70A89CC;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      result = 0;
      v14 = sub_1D5C00104;
    }

    else
    {
      result = 0;
      v14 = sub_1D5DF55B8;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v20 = *v12;
    if (EnumCaseMultiPayload)
    {
      result = swift_allocObject();
      *(result + 16) = v20;
      v14 = sub_1D70A95B0;
    }

    else
    {

      result = swift_allocObject();
      *(result + 16) = v20;
      v14 = sub_1D6A8D470;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v21 = v12[16];
    result = swift_allocObject();
    *(result + 16) = *v12;
    *(result + 32) = v21;
    v14 = sub_1D6A8D8B4;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1D70A97C4(0, qword_1EDF11BC0, type metadata accessor for DateComparison, MEMORY[0x1E69E6370], " defaultResult ");
    v16 = v12[*(v15 + 48)];
    sub_1D70A94D8(v12, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v5 + 80) + 17) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_1D70A94D8(v8, v18 + v17);
    result = v18;
    v14 = sub_1D70A953C;
  }

  else
  {
    v22 = *v12;
    v23 = *(v12 + 1);
    result = swift_allocObject();
    *(result + 16) = v23;
    *(result + 24) = v22;
    v14 = sub_1D6A8D828;
  }

  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t type metadata accessor for FeedItemFilterIssueMatcher(uint64_t a1)
{
  result = qword_1EC899FC8;
  if (!qword_1EC899FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1D70A89CC(id *a1)
{
  v1 = [*a1 coverImageAssetHandle];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_1D70A8A14(id *a1, void *a2)
{
  v2 = [a2 hasSubscriptionToTag_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D70A8A74(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  if (*(a2 + 16) || *(a3 + 16))
  {
    v8 = [v7 publisherID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1D726207C();
      v12 = v11;

      if (sub_1D5BE240C(v10, v12, a3))
      {
        a4 = 0;
      }

      else if (*(a2 + 16))
      {
        a4 = sub_1D5BE240C(v10, v12, a2);
      }

      else
      {
        a4 = 1;
      }
    }
  }

  else
  {
    a4 = 1;
  }

  return a4 & 1;
}

uint64_t sub_1D70A8B40(id *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DateComparison(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725891C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32 - v17;
  *&v21 = MEMORY[0x1EEE9AC00](v19, v20).n128_u64[0];
  v23 = &v32 - v22;
  v24 = [*a1 publishDate];
  if (v24)
  {
    v25 = v24;
    sub_1D72588BC();

    v26 = *(v11 + 32);
    v26(v23, v18, v10);
    sub_1D70A9990(a3, v9, type metadata accessor for DateComparison);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26(v14, v9, v10);
    v28 = (v11 + 8);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = sub_1D725882C();
    }

    else
    {
      v29 = sub_1D725883C();
    }

    a2 = v29;
    v30 = *v28;
    (*v28)(v14, v10);
    v30(v23, v10);
  }

  return a2 & 1;
}

BOOL sub_1D70A8D74(id *a1, void *a2, id a3)
{
  v5 = [*a1 identifier];
  if (!v5)
  {
    sub_1D726207C();
    v5 = sub_1D726203C();
  }

  v6 = [a2 sourceForIssueID_];

  return v6 == a3;
}

uint64_t FeedItemFilterIssueMatcher.debugName(for:)(void *a1)
{
  v1 = [a1 title];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedItemFilterIssueMatcher.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DateComparison(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedItemFilterIssueMatcher(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70A9990(v1, v9, type metadata accessor for FeedItemFilterIssueMatcher);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v21 = *v9;
        swift_beginAccess();
        v22 = v21[2];

        return v22;
      }

      else
      {
        return 0x464E41207349;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0x65766F4320736148;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 0x737961776C41;
    }

    else
    {
      return 0x726576654ELL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1D70A94D8(v9, v5);
          v31 = 0x656873696C627550;
          v32 = 0xEA00000000002064;
          v11 = DateComparison.description.getter();
          MEMORY[0x1DA6F9910](v11);

          v12 = v31;
          sub_1D70A95B8(v5, type metadata accessor for DateComparison);
          return v12;
        }

        v29 = *v9;

        v31 = 0;
        v32 = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73FC770);
        v30 = v29;
        type metadata accessor for FCOfflineIssueSource(0);
        sub_1D7263F9C();
        return v31;
      }

      v24 = *v9;
      v23 = v9[1];
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000022, 0x80000001D73FC790);
      v25 = v24[2];

      v30 = v25;
      v26 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v26);

      MEMORY[0x1DA6F9910](0x4C20796E6544202CLL, 0xEC00000020747369);
      v27 = v23[2];

      v30 = v27;
      v28 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v28);

      v19 = 41;
      v20 = 0xE100000000000000;
LABEL_15:
      MEMORY[0x1DA6F9910](v19, v20);
      return v31;
    }

    if (!EnumCaseMultiPayload)
    {
      v14 = *v9;
      v15 = v9[1];
      v16 = v9[2];
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1D7263D4C();

      v31 = 0xD000000000000018;
      v32 = 0x80000001D73EEBE0;
      MEMORY[0x1DA6F9910](v15, v16);

      MEMORY[0x1DA6F9910](0x20666F2074655320, 0xE800000000000000);
      v17 = v14[2];

      v30 = v17;
      v18 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v18);

      v19 = 0x736D65744920;
      v20 = 0xE600000000000000;
      goto LABEL_15;
    }

    sub_1D70A95B8(v9, type metadata accessor for FeedItemFilterIssueMatcher);
    return 0xD000000000000014;
  }
}

uint64_t sub_1D70A92E0(id *a1)
{
  v1 = [*a1 title];
  v2 = sub_1D726207C();

  return v2;
}

void static FeedItemFilterIssueMatcher.olderThan(_:)(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  sub_1D70A97C4(0, qword_1EDF11BC0, type metadata accessor for DateComparison, MEMORY[0x1E69E6370], " defaultResult ");
  v13 = *(v12 + 48);
  sub_1D725890C();
  (*(v4 + 16))(v7, v11, v3);
  sub_1D72587CC();
  (*(v4 + 8))(v11, v3);
  type metadata accessor for DateComparison(0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v13) = 0;
  type metadata accessor for FeedItemFilterIssueMatcher(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D70A94D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComparison(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D70A953C(id *a1)
{
  v3 = *(type metadata accessor for DateComparison(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_1D70A8B40(a1, v4, v5);
}

uint64_t sub_1D70A95B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D70A9618(uint64_t a1)
{
  result = sub_1D70A9640();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70A9640()
{
  result = qword_1EC899FC0;
  if (!qword_1EC899FC0)
  {
    type metadata accessor for FeedItemFilterIssueMatcher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899FC0);
  }

  return result;
}

void sub_1D70A9698(uint64_t a1)
{
  sub_1D70A97C4(319, &qword_1EDF047D0, sub_1D5B81B04, MEMORY[0x1E69E6158], " label ");
  if (v1 <= 0x3F)
  {
    sub_1D5B5A498(319, &unk_1EDF1A820, 0x1E69B5610);
    if (v2 <= 0x3F)
    {
      sub_1D70A9834(319);
      if (v3 <= 0x3F)
      {
        sub_1D70A97C4(319, qword_1EDF11BC0, type metadata accessor for DateComparison, MEMORY[0x1E69E6370], " defaultResult ");
        if (v4 <= 0x3F)
        {
          sub_1D70A98A4(319);
          if (v5 <= 0x3F)
          {
            sub_1D70A9928(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D70A97C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D70A9834(uint64_t a1)
{
  if (!qword_1EC899FD8)
  {
    sub_1D5B81B04();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC899FD8);
    }
  }
}

void sub_1D70A98A4(uint64_t a1)
{
  if (!qword_1EC899FE0)
  {
    type metadata accessor for FCOfflineIssueSource(255);
    sub_1D5B5A498(255, &qword_1EC899FE8, 0x1E69B5410);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899FE0);
    }
  }
}

void sub_1D70A9928(uint64_t a1)
{
  if (!qword_1EC899FF0)
  {
    v2 = sub_1D5B5A498(255, &qword_1EDF3C6C0, 0x1E69B5348);
    v5 = type metadata accessor for FeedItemFilterCustomMatcher(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC899FF0);
    }
  }
}

uint64_t sub_1D70A9990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double Array<A>.latestFormatCompatible.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v6 = sub_1D725BD1C();
  v7 = __swift_project_value_buffer(v6, qword_1EDF3CA58);

  return Array<A>.latestFormatCompatible(with:)(v7, a1, a2, a3);
}

double Array<A>.latestFormatCompatible(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Array<A>.formatCompatible(with:)(a1, a2, a3, a4);
  sub_1D725BD1C();
  sub_1D5B854B0();
  sub_1D72626AC();

  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D7261F0C();

  return result;
}

uint64_t Array<A>.formatCompatible.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v6 = sub_1D725BD1C();
  v7 = __swift_project_value_buffer(v6, qword_1EDF3CA58);

  return Array<A>.formatCompatible(with:)(v7, a1, a2, a3);
}

uint64_t Array<A>.formatCompatible(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D72627FC();

  swift_getWitnessTable();
  return sub_1D7263E7C();
}

uint64_t sub_1D70A9C9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1D5B5C268(0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2, v8);
  v11 = sub_1D725BD1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) != 1)
  {
    return (*(v12 + 32))(a3, v10, v11);
  }

  sub_1D725BCDC();
  result = (v13)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D5F40BCC(v10);
  }

  return result;
}

uint64_t sub_1D70A9DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725BD1C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 8))(a3, a4, v13);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D5F40BCC(v9);
    v16 = 1;
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v16 = sub_1D725B9FC();
    (*(v11 + 8))(v15, v10);
  }

  return v16 & 1;
}

id sub_1D70AA054(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PuzzleProcessTerminationPolicyDecider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t FormatArrangementTemplateReference.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatArrangementTemplateReference.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D70AA10C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D72646CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D70AA18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70AA10C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D70AA1C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D70AA214(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementTemplateReference.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatArrangementTemplateReference.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_1D726446C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v12 - v9;
  v12[1] = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatArrangementTemplateReference.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18 = a5;
  type metadata accessor for FormatArrangementTemplateReference.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_1D726435C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (!v5)
  {
    v12 = v18;
    v13 = sub_1D72642BC();
    v15 = v14;
    (*(v8 + 8))(v11, v7);
    *v12 = v13;
    v12[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D70AA5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FormatAccessibilityLayoutValue.__allocating_init(identifier:value:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  return result;
}

uint64_t FormatAccessibilityLayoutValue.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatAccessibilityLayoutValue.init(identifier:value:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  return v3;
}

uint64_t FormatAccessibilityLayoutValue.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D70AA768(uint64_t a1)
{
  result = sub_1D70AA954(&qword_1EC89A070, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70AA7D0(void *a1)
{
  a1[1] = sub_1D70AA954(&qword_1EDF20A68, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
  a1[2] = sub_1D70AA954(&qword_1EDF20A70, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
  result = sub_1D70AA954(&qword_1EC89A078, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
  a1[3] = result;
  return result;
}

uint64_t sub_1D70AA85C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6670920(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D70AA954(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatAccessibilityLayoutValue();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70AA9D4(uint64_t a1, _BYTE *a2, int a3)
{
  v67 = a3;
  v62 = a1;
  v66 = type metadata accessor for DebugFormatUploadHiddenReason(0);
  MEMORY[0x1EEE9AC00](v66, v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DebugFormatUploadHiddenEntry(0);
  v7 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v8);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v60 - v12);
  v14 = *a2;
  v15 = 0xE700000000000000;
  v16 = 0x7972617262696CLL;
  if (v14 != 5)
  {
    v16 = 0x756F72676B636162;
    v15 = 0xEA0000000000646ELL;
  }

  v17 = 0xE700000000000000;
  v18 = 0x6C6C6177796170;
  if (v14 != 3)
  {
    v18 = 0x656D656874;
    v17 = 0xE500000000000000;
  }

  if (*a2 <= 4u)
  {
    v16 = v18;
    v15 = v17;
  }

  v19 = 0x726564616568;
  if (v14 != 1)
  {
    v19 = 0x7265746F6F66;
  }

  if (!*a2)
  {
    v19 = 0x74756F79616CLL;
  }

  if (*a2 <= 2u)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (*a2 <= 2u)
  {
    v21 = 0xE600000000000000;
  }

  else
  {
    v21 = v15;
  }

  v22 = sub_1D5C73AB0(v20, v21);
  if (v23)
  {
    v70 = v22;
    v71 = v23;
    sub_1D5BF4D9C();
    v63 = sub_1D7263A0C();
    v25 = v24;

    v26 = sub_1D5FD24A4(1uLL, v20, v21);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = MEMORY[0x1DA6F97E0](v26, v28, v30, v32);
    v35 = v34;

    v68 = v63;
    v69 = v25;

    MEMORY[0x1DA6F9910](v33, v35);

    v20 = v68;
    v61 = v69;
  }

  else
  {
    v61 = v21;
  }

  v60 = v20;
  v36 = *(v62 + 16);
  if (v36)
  {
    v37 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v38 = *(v7 + 72);
    v39 = MEMORY[0x1E69E7CC0];
    v63 = v37;
    v40 = v62 + v37;
    do
    {
      sub_1D70AB0C0(v40, v13, type metadata accessor for DebugFormatUploadHiddenEntry);
      v43 = *(*v13 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v43 <= 2)
      {
        v44 = 0xE600000000000000;
        if (*(*v13 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v43 == 1)
          {
            v46 = 1684104552;
          }

          else
          {
            v46 = 1953460070;
          }

          v45 = v46 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          if (v14 > 2)
          {
LABEL_47:
            v49 = 0x756F72676B636162;
            if (v14 == 5)
            {
              v49 = 0x7972617262696CLL;
            }

            v50 = 0xEA0000000000646ELL;
            if (v14 == 5)
            {
              v50 = 0xE700000000000000;
            }

            v51 = 0x6C6C6177796170;
            if (v14 != 3)
            {
              v51 = 0x656D656874;
            }

            v52 = 0xE500000000000000;
            if (v14 == 3)
            {
              v52 = 0xE700000000000000;
            }

            if (v14 <= 4)
            {
              v53 = v51;
            }

            else
            {
              v53 = v49;
            }

            if (v14 <= 4)
            {
              v48 = v52;
            }

            else
            {
              v48 = v50;
            }

            if (v45 != v53)
            {
              goto LABEL_64;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v45 = 0x74756F79616CLL;
          if (v14 > 2)
          {
            goto LABEL_47;
          }
        }
      }

      else if (*(*v13 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v43 == 5)
        {
          v44 = 0xE700000000000000;
          v45 = 0x7972617262696CLL;
          if (v14 > 2)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v45 = 0x756F72676B636162;
          v44 = 0xEA0000000000646ELL;
          if (v14 > 2)
          {
            goto LABEL_47;
          }
        }
      }

      else if (v43 == 3)
      {
        v44 = 0xE700000000000000;
        v45 = 0x6C6C6177796170;
        if (v14 > 2)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v44 = 0xE500000000000000;
        v45 = 0x656D656874;
        if (v14 > 2)
        {
          goto LABEL_47;
        }
      }

      if (v14)
      {
        if (v14 == 1)
        {
          v47 = 0x726564616568;
        }

        else
        {
          v47 = 0x7265746F6F66;
        }

        v48 = 0xE600000000000000;
        if (v45 != v47)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v48 = 0xE600000000000000;
        if (v45 != 0x74756F79616CLL)
        {
          goto LABEL_64;
        }
      }

LABEL_62:
      if (v44 == v48)
      {

        goto LABEL_65;
      }

LABEL_64:
      v54 = sub_1D72646CC();

      if ((v54 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_65:
      sub_1D70AB0C0(v13 + *(v65 + 20), v6, type metadata accessor for DebugFormatUploadHiddenReason);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload < 2)
        {
          sub_1D70AB18C(v6, type metadata accessor for DebugFormatUploadHiddenReason);
LABEL_69:
          if (v67 == 1)
          {
            goto LABEL_76;
          }

          goto LABEL_23;
        }

        if (EnumCaseMultiPayload != 2)
        {
          v41 = v67;
          v42 = sub_1D725BD1C();
          (*(*(v42 - 8) + 8))(v6, v42);
          if (!v41)
          {
            goto LABEL_76;
          }

          goto LABEL_23;
        }

LABEL_74:
        sub_1D70AB18C(v6, type metadata accessor for DebugFormatUploadHiddenReason);
        goto LABEL_75;
      }

      if ((EnumCaseMultiPayload - 6) < 2)
      {
        goto LABEL_69;
      }

      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_74;
      }

LABEL_75:
      if (v67 == 2)
      {
LABEL_76:
        sub_1D70AB128(v13, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D699A460(0, *(v39 + 16) + 1, 1);
          v39 = v70;
        }

        v58 = *(v39 + 16);
        v57 = *(v39 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1D699A460((v57 > 1), v58 + 1, 1);
          v39 = v70;
        }

        *(v39 + 16) = v58 + 1;
        sub_1D70AB128(v64, v39 + v63 + v58 * v38);
        goto LABEL_24;
      }

LABEL_23:
      sub_1D70AB18C(v13, type metadata accessor for DebugFormatUploadHiddenEntry);
LABEL_24:
      v40 += v38;
      --v36;
    }

    while (v36);
  }

  return v60;
}