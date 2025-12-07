void sub_1D6D60210(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*(a1 + 24))
  {
    sub_1D5B7C390(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    sub_1D5BAFB24(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v10;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    sub_1D6D88728(a1, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, a4);
    sub_1D607E0F0(a2, a3, v11);

    sub_1D6D88728(v11, &qword_1EDF43B70, v8 + 8, v9);
  }
}

void sub_1D6D602E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D6D79528(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1D6D8C4DC);

    *v3 = v15;
  }

  else
  {
    v9 = sub_1D5B69D90(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_1D6D7D9AC(sub_1D6D8C4DC);
        v13 = v16;
      }

      swift_unknownObjectRelease();
      sub_1D6713788(v9, v13, v14);
      *v4 = v13;
    }
  }
}

void sub_1D6D60400(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v20;
  }

  else
  {
    v15 = sub_1D5B69D90(a2, a3);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      a5(v15, v19);
      *v7 = v19;
    }
  }
}

void sub_1D6D60518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1D6D76D20(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v11 = sub_1D5B69D90(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v18 = *v5;
      if (!v14)
      {
        sub_1D6D7DE64();
        v15 = v18;
      }

      sub_1D6713938(v11, v15, v16);
      *v5 = v15;
    }
  }
}

void sub_1D6D60620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = sub_1D725891C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    v17 = MEMORY[0x1E6969530];
    sub_1D6D8BEB0(a1, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    sub_1D607E284(a2, a3, v10);

    sub_1D6D8BEB0(v10, &qword_1EDF45B00, v17);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1D6D77084(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }
}

void sub_1D6D60828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for FormatSourceMapContext(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1D6D8BEB0(a1, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext);
    sub_1D607E3F4(a2, a3, v10);

    sub_1D6D8BEB0(v10, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext);
  }

  else
  {
    sub_1D6D89234(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D6D775C8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D6D60A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for FormatNodeStateData.Data(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1D6D8BEB0(a1, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
    sub_1D607E448(a2, a3, v10);

    sub_1D6D8BEB0(v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
  }

  else
  {
    sub_1D6D8931C(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D6D779B8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D6D60C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 80);
    v11[4] = *(a1 + 64);
    v11[5] = v6;
    v12 = *(a1 + 96);
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    v8 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1D6D78684(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_1D6D8BEB0(a1, &qword_1EDF29600, sub_1D6D8B54C);
    sub_1D607E6CC(a2, a3, v11);

    sub_1D6D8BEB0(v11, &qword_1EDF29600, sub_1D6D8B54C);
  }
}

void sub_1D6D60D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatDerivedDataOption(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1D6D8BEB0(a1, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption);
    sub_1D607E798(a2, a3, v10);

    sub_1D6D8BEB0(v10, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption);
  }

  else
  {
    sub_1D60E27A4(a1, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1D6D79824(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }
}

void sub_1D6D60F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    sub_1D6D7CCBC(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1D6D89B84);

    *v3 = v13;
  }

  else
  {
    sub_1D5B69D90(a2, a3);
    v10 = v9;

    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v14 = *v4;
      if (!v11)
      {
        sub_1D6D7DCF8(sub_1D6D89B84);
        v12 = v14;
      }

      sub_1D6716D80();
      *v4 = v12;
    }
  }
}

void sub_1D6D6104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for FormatDerivedDataBindingSlotResult(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1D6D8BEB0(a1, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
    sub_1D607E7EC(a2, a3, v10);

    sub_1D6D8BEB0(v10, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
  }

  else
  {
    sub_1D6D89F90(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D6D79E18(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

uint64_t sub_1D6D6123C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D6D7A064(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D5CEB1A0(a2, type metadata accessor for WebEmbedDatastoreCacheKey);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1D6D6303C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_1D6D82048();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
      sub_1D5CEB1A0(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for WebEmbedDatastoreCacheKey);

      sub_1D6713FCC(v10, v12);
      result = sub_1D5CEB1A0(a2, type metadata accessor for WebEmbedDatastoreCacheKey);
      *v3 = v12;
    }

    else
    {
      return sub_1D5CEB1A0(a2, type metadata accessor for WebEmbedDatastoreCacheKey);
    }
  }

  return result;
}

uint64_t sub_1D6D6138C(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(a1 + 24))
  {
    sub_1D5B7C390(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1D6D7A220(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D5F42574(a2);
    *v3 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    sub_1D6D88728(a1, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, a3);
    sub_1D607E840(a2, v10);
    sub_1D5F42574(a2);
    return sub_1D6D88728(v10, &qword_1EDF43B70, v7 + 8, v8);
  }

  return result;
}

void sub_1D6D61448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SharedItem(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1D6D8BEB0(a1, &qword_1EDF343E0, type metadata accessor for SharedItem);
    sub_1D607EA44(a2, a3, v10);

    sub_1D6D8BEB0(v10, &qword_1EDF343E0, type metadata accessor for SharedItem);
  }

  else
  {
    sub_1D5F2676C(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D6D7AAE8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D6D61638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1 == 1)
  {
    v6 = sub_1D5B69D90(a2, a3);
    v8 = v7;

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v4;
      v22 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D6D85338();
        v10 = v22;
      }

      v11 = *(v10 + 56) + 56 * v6;
      v12 = *(v11 + 8);
      v13 = *(v11 + 48);

      sub_1D6714D1C(v6, v10, v14);
      *v4 = v10;
    }
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = *(a1 + 24);
    v22 = *a1;
    v23 = *(a1 + 8);
    v24 = v18 & 1;
    v25 = v17;
    v26 = v16 & 1;
    v27 = v15;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1D6D7B3D0(&v22, a2, a3, v20);

    *v3 = v21;
  }
}

uint64_t sub_1D6D6177C(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1D5CEB1A0(a1, sub_1D5B4D3E0);
    v16 = sub_1D6D63370(a2 & 1);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v2;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D6D854E8();
        v20 = v25;
      }

      v21.n128_f64[0] = (*(v11 + 32))(v9, *(v20 + 56) + *(v11 + 72) * v18, v10);
      sub_1D6714EE0(v18, v20, v21);
      *v3 = v20;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D5CEB1A0(v9, sub_1D5B4D3E0);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    result = sub_1D6D7B5A0(v15, a2 & 1, v22);
    *v2 = v25;
  }

  return result;
}

void sub_1D6D619CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SportsRoster(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1D6D8BEB0(a1, &qword_1EDF11F60, type metadata accessor for SportsRoster);
    sub_1D607EB40(a2, a3, v10);

    sub_1D6D8BEB0(v10, &qword_1EDF11F60, type metadata accessor for SportsRoster);
  }

  else
  {
    sub_1D6CA3814(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D6D7B720(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D6D61BE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v7 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1D6D7BFF4(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4);

    *v5 = v18;
  }

  else
  {
    v13 = sub_1D5B69D90(a2, a3);
    v15 = v14;

    if (v15)
    {
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v7;
      v19 = *v7;
      if (!v16)
      {
        sub_1D6D7D3E8(a4);
        v17 = v19;
      }

      a5(v13, v17);
      *v7 = v17;
    }
  }
}

void sub_1D6D61D20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  if (*(a1 + 24))
  {
    sub_1D5B7C390(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    sub_1D6D7C310(v13, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    sub_1D607F09C(a2, a3);
    *v5 = v12;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CA0];
    sub_1D6D88728(a1, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, a5);
    sub_1D607EC64(a2, a3, a4 & 1, v13);
    v11.n128_f64[0] = sub_1D607F09C(a2, a3);
    sub_1D6D88728(v13, &qword_1EDF43B70, v10 + 8, v11);
  }
}

void sub_1D6D61E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D5B63F14(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1D6D7C478(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_1D5CEB1A0(a1, sub_1D6D8AC78);
    sub_1D607ED14(a2, a3, v8);

    sub_1D5CEB1A0(v8, sub_1D6D8AC78);
  }
}

uint64_t sub_1D6D61ED0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D5B7C390(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1D5B7C3A0(v9, a2, isUniquelyReferenced_nonNull_native, sub_1D6D8A238, sub_1D607F124, sub_1D607F124);
    v5 = sub_1D7263FCC();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1D6D8BEB0(a1, &qword_1EC895920, sub_1D6D8A1E0);
    sub_1D607EDC0(a2, v9);
    v7 = sub_1D7263FCC();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1D6D8BEB0(v9, &qword_1EC895920, sub_1D6D8A1E0);
  }

  return result;
}

uint64_t sub_1D6D62024(uint64_t a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for FormatWebEmbed(0) + 32));
  v8 = v7[1];
  if (v8 && *(*(v1 + 104) + 16) && (sub_1D5B69D90(*v7, v8), (v9 & 1) != 0))
  {

    v10 = sub_1D725B92C();
    v11 = sub_1D725BA8C();

    return v11;
  }

  else
  {
    v13 = sub_1D72585BC();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_1D5B59654(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6D621AC(uint64_t a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for FormatWebEmbed(0) + 36));
  v8 = v7[1];
  if (v8 && *(*(v1 + 112) + 16) && (sub_1D5B69D90(*v7, v8), (v9 & 1) != 0))
  {

    v10 = sub_1D725B92C();
    v11 = sub_1D725BA8C();

    return v11;
  }

  else
  {
    v13 = sub_1D72585BC();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_1D5B59654(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t FormatContentPool.sponsoredAdBanner.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatContentPool(0) + 108);

  return sub_1D606BE74(v3, a1);
}

uint64_t sub_1D6D62430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6060664(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D8C7DC(a1, v7, sub_1D6060664);
  v8 = type metadata accessor for FormatWebArchiveResource.Resolved(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1D5CEB1A0(v7, sub_1D6060664);
    v9 = sub_1D72585BC();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    v11 = *(v8 + 24);
    v12 = sub_1D72585BC();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a2, &v7[v11], v12);
    sub_1D5CEB1A0(v7, type metadata accessor for FormatWebArchiveResource.Resolved);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_1D6D62628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D60605FC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D8C7DC(a1, v7, sub_1D60605FC);
  v8 = type metadata accessor for FormatContentResource.Resolved(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1D5CEB1A0(v7, sub_1D60605FC);
    v9 = sub_1D72585BC();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    v11 = *(v8 + 20);
    v12 = sub_1D72585BC();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a2, &v7[v11], v12);
    sub_1D5CEB1A0(v7, type metadata accessor for FormatContentResource.Resolved);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }
}

unint64_t sub_1D6D62820(uint64_t a1)
{
  v1 = a1;
  sub_1D7264A0C();
  sub_1D72621EC();

  v2 = sub_1D7264A5C();

  return sub_1D6D63644(v1, v2);
}

unint64_t sub_1D6D629A8(uint64_t a1, uint64_t a2)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  v4 = sub_1D7264A5C();
  return sub_1D5B7ADFC(a1, a2, v4);
}

unint64_t sub_1D6D62A1C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1D7264A0C();
  sub_1D67E0858();
  sub_1D72621EC();

  sub_1D7264A2C();
  if (a2)
  {
    sub_1D5BE251C(v6, a2);
  }

  v4 = sub_1D7264A5C();

  return sub_1D6D638A4(v3, a2, v4);
}

unint64_t sub_1D6D62AD4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D6C37E2C(v4, a1);
  v2 = sub_1D7264A5C();

  return sub_1D6D63DDC(a1, v2);
}

unint64_t sub_1D6D62B40(uint64_t a1)
{
  v2 = sub_1D7263C7C();

  return sub_1D6D63E94(a1, v2);
}

unint64_t sub_1D6D62C64(double a1, double a2)
{
  sub_1D7264A0C();
  sub_1D5BE7138(a1, a2);
  v4 = sub_1D7264A5C();

  return sub_1D6D64054(v4, a1, a2);
}

unint64_t sub_1D6D62CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1D7264A0C();
  sub_1D6BE3D70(v8, a1, a2, v3);
  v6 = sub_1D7264A5C();

  return sub_1D6D640CC(a1, a2, v3, v6);
}

unint64_t sub_1D6D62D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](a3);
  MEMORY[0x1DA6FC0B0](a4);
  v8 = sub_1D7264A5C();

  return sub_1D6D64280(a1, a2, a3, a4, v8);
}

unint64_t sub_1D6D62E0C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  v2 = sub_1D7264A5C();

  return sub_1D6D64360(a1, v2);
}

uint64_t sub_1D6D62F20(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  a2(0);
  a3();
  v6 = sub_1D7261E7C();

  return a4(a1, v6);
}

unint64_t sub_1D6D62FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v8[9] = a1;
  v8[10] = a2;
  v9 = a3;
  sub_1D7264A0C();
  FormatDerivedDataFileKey.hash(into:)(v8);
  v6 = sub_1D7264A5C();

  return sub_1D6D64624(a1, a2, v3, v6);
}

unint64_t sub_1D6D6303C(uint64_t a1)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v8 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = a1;
    v19 = v1;
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, v3);
      sub_1D6716B68();
      sub_1D7261E8C();
      (*(v10 - 8))(v7, v3);
      v13 += v14;
      --v9;
    }

    while (v9);

    a1 = v18;
  }

  else
  {
  }

  v15 = sub_1D7264A5C();
  return sub_1D6D64B24(a1, v15);
}

unint64_t sub_1D6D631FC(double a1)
{
  v2 = sub_1D72649FC();

  return sub_1D6D65184(v2, a1);
}

unint64_t sub_1D6D63248(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1D7264A0C();
  sub_1D6E23ADC(v3);
  sub_1D72621EC();

  sub_1D72621EC();

  MEMORY[0x1DA6FC0B0](a2);
  v4 = sub_1D7264A5C();

  return sub_1D6D651EC(v3 & 0x1FF, a2, v4);
}

unint64_t sub_1D6D63370(char a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  v2 = sub_1D7264A5C();

  return sub_1D6D65AD0(a1 & 1, v2);
}

unint64_t sub_1D6D6341C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1D6950BE4(*(v1 + 40), a1);

  return sub_1D6D65C18(v2, v3);
}

unint64_t sub_1D6D63460(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a3 & 1);
  sub_1D72621EC();
  v6 = sub_1D7264A5C();

  return sub_1D6D65EB4(a1, a2, a3 & 1, v6);
}

unint64_t sub_1D6D63544(uint64_t a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  v2 = sub_1D7264A5C();

  return sub_1D5B8BAC4(a1, v2);
}

unint64_t sub_1D6D635B0(double a1, double a2, double a3, double a4)
{
  sub_1D7264A0C();
  sub_1D6D88E04(a1, a2, a3, a4);
  v8 = sub_1D7264A5C();

  return sub_1D6D65F94(v8, a1, a2, a3, a4);
}

unint64_t sub_1D6D63644(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
          v8 = 0x6567616D69;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 1633905005;
          }

          else
          {
            v8 = 0x66456C6175736976;
          }

          if (v7 == 4)
          {
            v9 = 0xE400000000000000;
          }

          else
          {
            v9 = 0xEC00000074636566;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x72476C6169646172;
        }

        else
        {
          v8 = 0x65695674696C7073;
        }

        if (v7 == 1)
        {
          v9 = 0xEE00746E65696461;
        }

        else
        {
          v9 = 0xE900000000000077;
        }
      }

      else
      {
        v9 = 0xE800000000000000;
        v8 = 0x746E656964617267;
      }

      v10 = 0x66456C6175736976;
      if (v6 == 4)
      {
        v10 = 1633905005;
      }

      v11 = 0xEC00000074636566;
      if (v6 == 4)
      {
        v11 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x6567616D69;
        v11 = 0xE500000000000000;
      }

      v12 = 0x72476C6169646172;
      if (v6 != 1)
      {
        v12 = 0x65695674696C7073;
      }

      v13 = 0xEE00746E65696461;
      if (v6 != 1)
      {
        v13 = 0xE900000000000077;
      }

      if (!v6)
      {
        v12 = 0x746E656964617267;
        v13 = 0xE800000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D6D638A4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = *(v3 + 48) + 16 * v5;
      v10 = *(v9 + 8);
      v11 = 0xE400000000000000;
      v12 = 1684828002;
      switch(*v9)
      {
        case 1:
          v11 = 0xE600000000000000;
          v12 = 0x63696C617469;
          break;
        case 2:
          v12 = 0x6E696C7265646E75;
          v11 = 0xE900000000000065;
          break;
        case 3:
          v12 = 0x6874656B69727473;
          v11 = 0xED00006867756F72;
          break;
        case 4:
          v11 = 0xE900000000000074;
          v12 = 0x7069726373627573;
          break;
        case 5:
          v12 = 0x7263737265707573;
          v11 = 0xEB00000000747069;
          break;
        case 6:
          v12 = 1701080931;
          break;
        case 7:
          v12 = 1802398060;
          break;
        case 8:
          v11 = 0xE800000000000000;
          v12 = 0x31676E6964616568;
          break;
        case 9:
          v11 = 0xE800000000000000;
          v12 = 0x32676E6964616568;
          break;
        case 0xA:
          v11 = 0xE800000000000000;
          v12 = 0x33676E6964616568;
          break;
        case 0xB:
          v11 = 0xE800000000000000;
          v12 = 0x34676E6964616568;
          break;
        case 0xC:
          v11 = 0xE800000000000000;
          v12 = 0x35676E6964616568;
          break;
        case 0xD:
          v11 = 0xE800000000000000;
          v12 = 0x36676E6964616568;
          break;
        case 0xE:
          v11 = 0xE900000000000068;
          v12 = 0x7061726761726170;
          break;
        case 0xF:
          v12 = 1851879539;
          break;
        case 0x10:
          v11 = 0xE300000000000000;
          v12 = 6648432;
          break;
        case 0x11:
          v11 = 0xE500000000000000;
          v12 = 0x6567616D69;
          break;
        default:
          break;
      }

      v13 = 0xE400000000000000;
      v14 = 1684828002;
      switch(a1)
      {
        case 1:
          v13 = 0xE600000000000000;
          if (v12 == 0x63696C617469)
          {
            goto LABEL_56;
          }

          goto LABEL_59;
        case 2:
          v13 = 0xE900000000000065;
          if (v12 != 0x6E696C7265646E75)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 3:
          v13 = 0xED00006867756F72;
          if (v12 != 0x6874656B69727473)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 4:
          v13 = 0xE900000000000074;
          if (v12 != 0x7069726373627573)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 5:
          v13 = 0xEB00000000747069;
          if (v12 != 0x7263737265707573)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 6:
          if (v12 != 1701080931)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 7:
          if (v12 != 1802398060)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 8:
          v13 = 0xE800000000000000;
          if (v12 != 0x31676E6964616568)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 9:
          v13 = 0xE800000000000000;
          if (v12 != 0x32676E6964616568)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 10:
          v13 = 0xE800000000000000;
          v14 = 0x33676E6964616568;
          goto LABEL_55;
        case 11:
          v13 = 0xE800000000000000;
          if (v12 != 0x34676E6964616568)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 12:
          v13 = 0xE800000000000000;
          if (v12 != 0x35676E6964616568)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 13:
          v13 = 0xE800000000000000;
          if (v12 != 0x36676E6964616568)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 14:
          v13 = 0xE900000000000068;
          if (v12 != 0x7061726761726170)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 15:
          if (v12 != 1851879539)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 16:
          v13 = 0xE300000000000000;
          if (v12 != 6648432)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        case 17:
          v13 = 0xE500000000000000;
          if (v12 != 0x6567616D69)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        default:
LABEL_55:
          if (v12 != v14)
          {
            goto LABEL_59;
          }

LABEL_56:
          if (v11 == v13)
          {
          }

          else
          {
LABEL_59:
            v15 = sub_1D72646CC();

            if ((v15 & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v10)
          {
            if (!a2)
            {
LABEL_3:

              goto LABEL_4;
            }

            v16 = sub_1D5BFC390(v10, a2);

            if (v16)
            {
              return v5;
            }
          }

          else if (!a2)
          {
            return v5;
          }

LABEL_4:
          v5 = (v5 + 1) & v8;
          if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            return v5;
          }

          break;
      }
    }
  }

  return v5;
}

unint64_t sub_1D6D63DDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_1D5E1FA08(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D6D63E94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D5F42518(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA6FB320](v9, a1);
      sub_1D5F42574(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D6D63F88(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D5B5A498(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D726370C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D6D64054(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D6D640CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    while (2)
    {
      v13 = v12 + 24 * v7;
      switch(*(v13 + 16))
      {
        case 1:
          if (a3 != 1)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        case 2:
          if (a3 == 2)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 3:
          if (a3 == 3)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 4:
          if (a3 == 4)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 5:
          if (a3 == 5)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 6:
          if (a3 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 7:
          if (a3 == 7)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 8:
          if (a3 == 8)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 9:
          if (a3 == 9)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xA:
          if (a3 == 10)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xB:
          if (a3 == 11)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xC:
          if (a3 == 12)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        default:
          if (a3)
          {
            goto LABEL_4;
          }

LABEL_29:
          v14 = *v13 == a1 && *(v13 + 8) == a2;
          if (v14 || (sub_1D72646CC() & 1) != 0)
          {
            return v7;
          }

LABEL_4:
          v7 = (v7 + 1) & v11;
          if ((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
          {
            continue;
          }

          return v7;
      }
    }
  }

  return v7;
}

unint64_t sub_1D6D64280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1D72646CC()) && v17 == a3 && v16 == a4)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1D6D64360(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = (a1 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(v2 + 48);
    do
    {
      v11 = *(v10 + 8 * v5);
      v12 = *(v11 + 16) == v9 && *(v11 + 24) == v8;
      if (v12 || (sub_1D72646CC() & 1) != 0)
      {
        v13 = *(v11 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) == *v7 && *(v11 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8) == v7[1];
        if (v13 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D6D64488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v24 = a4;
  v22[1] = a1;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v22 - v10;
  v23 = v4;
  v12 = -1 << *(v4 + 32);
  v13 = a2 & ~v12;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v19 = v15(v11, *(v23 + 48) + v18 * v13, v6, v9);
      v24(v19);
      v20 = sub_1D7261FBC();
      (*(v16 - 8))(v11, v6);
      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v22[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1D6D64624(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v10 = ~v5;
    do
    {
      v11 = *(v4 + 48) + 24 * v6;
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (v14 > 3)
      {
        if (v14 > 5)
        {
          if (v14 == 6)
          {
            if (a3 != 6)
            {
              goto LABEL_4;
            }

            if (v13 == a1 && v12 == a2)
            {
              goto LABEL_63;
            }

            v16 = sub_1D72646CC();
            sub_1D5F7D230(a1, a2, 6u);
            sub_1D5F7D230(v13, v12, 6u);
            sub_1D5F7C628(v13, v12, 6u);
            v17 = a1;
            v18 = a2;
            v19 = 6;
          }

          else
          {
            if (a3 != 7)
            {
LABEL_4:
              sub_1D5F7D230(a1, a2, a3);
              sub_1D5F7D230(v13, v12, v14);
              sub_1D5F7C628(v13, v12, v14);
              sub_1D5F7C628(a1, a2, a3);
              goto LABEL_5;
            }

            if (v13 == a1 && v12 == a2)
            {
LABEL_63:
              sub_1D5F7D230(a1, a2, v14);
              sub_1D5F7D230(a1, a2, v14);
              sub_1D5F7C628(a1, a2, v14);
              sub_1D5F7C628(a1, a2, v14);
              return v6;
            }

            v16 = sub_1D72646CC();
            sub_1D5F7D230(a1, a2, 7u);
            sub_1D5F7D230(v13, v12, 7u);
            sub_1D5F7C628(v13, v12, 7u);
            v17 = a1;
            v18 = a2;
            v19 = 7;
          }
        }

        else if (v14 == 4)
        {
          if (a3 != 4)
          {
            goto LABEL_4;
          }

          if (v13 == a1 && v12 == a2)
          {
            goto LABEL_63;
          }

          v16 = sub_1D72646CC();
          sub_1D5F7D230(a1, a2, 4u);
          sub_1D5F7D230(v13, v12, 4u);
          sub_1D5F7C628(v13, v12, 4u);
          v17 = a1;
          v18 = a2;
          v19 = 4;
        }

        else
        {
          if (a3 != 5)
          {
            goto LABEL_4;
          }

          if (v13 == a1 && v12 == a2)
          {
            goto LABEL_63;
          }

          v16 = sub_1D72646CC();
          sub_1D5F7D230(a1, a2, 5u);
          sub_1D5F7D230(v13, v12, 5u);
          sub_1D5F7C628(v13, v12, 5u);
          v17 = a1;
          v18 = a2;
          v19 = 5;
        }
      }

      else if (*(v11 + 16) > 1u)
      {
        if (v14 == 2)
        {
          if (a3 != 2)
          {
            goto LABEL_4;
          }

          if (v13 == a1 && v12 == a2)
          {
            goto LABEL_63;
          }

          v16 = sub_1D72646CC();
          sub_1D5F7D230(a1, a2, 2u);
          sub_1D5F7D230(v13, v12, 2u);
          sub_1D5F7C628(v13, v12, 2u);
          v17 = a1;
          v18 = a2;
          v19 = 2;
        }

        else
        {
          if (a3 != 3)
          {
            goto LABEL_4;
          }

          if (v13 == a1 && v12 == a2)
          {
            goto LABEL_63;
          }

          v16 = sub_1D72646CC();
          sub_1D5F7D230(a1, a2, 3u);
          sub_1D5F7D230(v13, v12, 3u);
          sub_1D5F7C628(v13, v12, 3u);
          v17 = a1;
          v18 = a2;
          v19 = 3;
        }
      }

      else if (*(v11 + 16))
      {
        if (a3 != 1)
        {
          goto LABEL_4;
        }

        if (v13 == a1 && v12 == a2)
        {
          goto LABEL_63;
        }

        v16 = sub_1D72646CC();
        sub_1D5F7D230(a1, a2, 1u);
        sub_1D5F7D230(v13, v12, 1u);
        sub_1D5F7C628(v13, v12, 1u);
        v17 = a1;
        v18 = a2;
        v19 = 1;
      }

      else
      {
        if (a3)
        {
          goto LABEL_4;
        }

        if (v13 == a1 && v12 == a2)
        {
          goto LABEL_63;
        }

        v16 = sub_1D72646CC();
        sub_1D5F7D230(a1, a2, 0);
        sub_1D5F7D230(v13, v12, 0);
        sub_1D5F7C628(v13, v12, 0);
        v17 = a1;
        v18 = a2;
        v19 = 0;
      }

      sub_1D5F7C628(v17, v18, v19);
      if (v16)
      {
        return v6;
      }

LABEL_5:
      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D6D64B24(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v68 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v60 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v51 - v21);
  v57 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  MEMORY[0x1EEE9AC00](v57, v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v27 = -1 << *(v2 + 32);
  result = a2 & ~v27;
  v58 = v2 + 64;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v52 = v5;
    v53 = ~v27;
    v59 = *(v24 + 72);
    v66 = (v5 + 8);
    v67 = v5 + 16;
    v54 = v22;
    v55 = v18;
    v56 = v15;
    v62 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v29 = *(v61 + 48);
      v63 = result;
      sub_1D6D8C7DC(v29 + v59 * result, v26, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D6D8C7DC(v26, v22, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v60;
        sub_1D6D8C85C(v22, v60, type metadata accessor for GenericDataVisualization);
        v70 = 0x3A636972656E6567;
        v71 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v30, v30[1]);
        v32 = v70;
        v31 = v71;
        sub_1D5CEB1A0(v30, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v69 = *v22;
        v70 = 0x3A3A7374726F7073;
        v71 = 0xE800000000000000;
        v33 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v33);

        v32 = v70;
        v31 = v71;
      }

      sub_1D6D8C7DC(v64, v18, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v60;
        sub_1D6D8C85C(v18, v60, type metadata accessor for GenericDataVisualization);
        v70 = 0x3A636972656E6567;
        v71 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v34, v34[1]);
        v36 = v70;
        v35 = v71;
        sub_1D5CEB1A0(v34, type metadata accessor for GenericDataVisualization);
        if (v32 != v36)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v69 = *v18;
        v70 = 0x3A3A7374726F7073;
        v71 = 0xE800000000000000;
        v37 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v37);

        v35 = v71;
        if (v32 != v70)
        {
          goto LABEL_13;
        }
      }

      if (v31 != v35)
      {
LABEL_13:
        v38 = sub_1D72646CC();

        if ((v38 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }

LABEL_14:
      v39 = *(v57 + 20);
      v40 = *&v62[v39];
      v41 = *(v64 + v39);
      v42 = *(v40 + 16);
      if (v42 == *(v41 + 16))
      {
        if (!v42 || v40 == v41)
        {
LABEL_20:
          sub_1D5CEB1A0(v62, type metadata accessor for WebEmbedDatastoreCacheKey);
          return v63;
        }

        v43 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v44 = v40 + v43;
        v45 = v41 + v43;
        v65 = *(v52 + 72);
        v46 = *(v52 + 16);
        while (1)
        {
          v46(v11, v44, v4);
          v47 = v68;
          v46(v68, v45, v4);
          sub_1D6D88460();
          v48 = sub_1D7261FBC();
          v49 = v11;
          v50 = *v66;
          (*v66)(v47, v4);
          v50(v49, v4);
          v11 = v49;
          if ((v48 & 1) == 0)
          {
            break;
          }

          v45 += v65;
          v44 += v65;
          if (!--v42)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_3:
      v26 = v62;
      sub_1D5CEB1A0(v62, type metadata accessor for WebEmbedDatastoreCacheKey);
      v22 = v54;
      result = (v63 + 1) & v53;
      v18 = v55;
    }

    while (((*(v58 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D6D65184(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D6D651EC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v28 = ~v4;
    v29 = a1;
    v6 = 0x7258656E6F685069;
    if ((a1 & 0x100) != 0)
    {
      v7 = 0x70616373646E616CLL;
    }

    else
    {
      v7 = 0x7469617274726F70;
    }

    if ((a1 & 0x100) != 0)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    while (2)
    {
      v9 = *(v3 + 48) + 16 * v5;
      v10 = *(v9 + 1);
      v11 = *(v9 + 8);
      v12 = 0xE800000000000000;
      v13 = v6;
      switch(*v9)
      {
        case 1:
          v13 = 0x7358656E6F685069;
          break;
        case 2:
          v13 = 0x7358656E6F685069;
          v12 = 0xEB0000000078614DLL;
          break;
        case 3:
          v13 = 0x4553656E6F685069;
          break;
        case 4:
          v13 = 0x3131656E6F685069;
          break;
        case 5:
          v13 = 0x3131656E6F685069;
          goto LABEL_35;
        case 6:
          v13 = 0x3131656E6F685069;
          goto LABEL_49;
        case 7:
          v13 = 0x3231656E6F685069;
          break;
        case 8:
          v13 = 0x3231656E6F685069;
          goto LABEL_40;
        case 9:
          v13 = 0x3231656E6F685069;
          goto LABEL_35;
        case 0xA:
          v13 = 0x3231656E6F685069;
          goto LABEL_49;
        case 0xB:
          v13 = 0x3331656E6F685069;
          break;
        case 0xC:
          v13 = 0x3331656E6F685069;
LABEL_40:
          v12 = 0xEC000000696E694DLL;
          break;
        case 0xD:
          v13 = 0x3331656E6F685069;
          goto LABEL_35;
        case 0xE:
          v13 = 0x3331656E6F685069;
          goto LABEL_49;
        case 0xF:
          v13 = 0x3431656E6F685069;
          break;
        case 0x10:
          v13 = 0x3431656E6F685069;
          goto LABEL_31;
        case 0x11:
          v13 = 0x3431656E6F685069;
          goto LABEL_35;
        case 0x12:
          v13 = 0x3431656E6F685069;
          goto LABEL_49;
        case 0x13:
          v13 = 0x3531656E6F685069;
          break;
        case 0x14:
          v13 = 0x3531656E6F685069;
          goto LABEL_31;
        case 0x15:
          v13 = 0x3531656E6F685069;
          goto LABEL_35;
        case 0x16:
          v13 = 0x3531656E6F685069;
          goto LABEL_49;
        case 0x17:
          v13 = 0x3631656E6F685069;
          break;
        case 0x18:
          v13 = 0x3631656E6F685069;
LABEL_31:
          v12 = 0xEC00000073756C50;
          break;
        case 0x19:
          v13 = 0x3631656E6F685069;
LABEL_35:
          v12 = 0xEB000000006F7250;
          break;
        case 0x1A:
          v13 = 0x3631656E6F685069;
LABEL_49:
          v12 = 0xEE0078614D6F7250;
          break;
        case 0x1B:
          v12 = 0xE400000000000000;
          v13 = 1684099177;
          break;
        case 0x1C:
          v12 = 0xE700000000000000;
          v13 = 0x72694164615069;
          break;
        case 0x1D:
          v13 = 0x696E694D64615069;
          break;
        case 0x1E:
          v13 = 0x5F6F725064615069;
          v12 = 0xEC000000355F3031;
          break;
        case 0x1F:
          v13 = 0x5F6F725064615069;
          v12 = 0xEA00000000003131;
          break;
        case 0x20:
          v13 = 0x5F6F725064615069;
          v12 = 0xEC000000395F3231;
          break;
        case 0x21:
          v12 = 0xE300000000000000;
          v13 = 6513005;
          break;
        case 0x22:
          v13 = 0x6465727265666E69;
          break;
        default:
          break;
      }

      v14 = 0xE800000000000000;
      v15 = v6;
      switch(v29)
      {
        case 1:
          if (v13 == 0x7358656E6F685069)
          {
            goto LABEL_105;
          }

          goto LABEL_109;
        case 2:
          v18 = 0x7358656E6F685069;
          v19 = 7889229;
          goto LABEL_85;
        case 3:
          if (v13 != 0x4553656E6F685069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 4:
          if (v13 != 0x3131656E6F685069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 5:
          v18 = 0x3131656E6F685069;
          goto LABEL_84;
        case 6:
          v17 = 0x3131656E6F685069;
          goto LABEL_108;
        case 7:
          if (v13 != 0x3231656E6F685069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 8:
          v16 = 0x3231656E6F685069;
          goto LABEL_91;
        case 9:
          v18 = 0x3231656E6F685069;
          goto LABEL_84;
        case 10:
          v17 = 0x3231656E6F685069;
          goto LABEL_108;
        case 11:
          if (v13 != 0x3331656E6F685069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 12:
          v16 = 0x3331656E6F685069;
LABEL_91:
          v20 = 1768843597;
          goto LABEL_94;
        case 13:
          v18 = 0x3331656E6F685069;
          goto LABEL_84;
        case 14:
          v17 = 0x3331656E6F685069;
          goto LABEL_108;
        case 15:
          if (v13 != 0x3431656E6F685069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 16:
          v16 = 0x3431656E6F685069;
          goto LABEL_80;
        case 17:
          v18 = 0x3431656E6F685069;
          goto LABEL_84;
        case 18:
          v17 = 0x3431656E6F685069;
          goto LABEL_108;
        case 19:
          if (v13 != 0x3531656E6F685069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 20:
          v16 = 0x3531656E6F685069;
          goto LABEL_80;
        case 21:
          v18 = 0x3531656E6F685069;
          goto LABEL_84;
        case 22:
          v17 = 0x3531656E6F685069;
          goto LABEL_108;
        case 23:
          if (v13 != 0x3631656E6F685069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 24:
          v16 = 0x3631656E6F685069;
LABEL_80:
          v20 = 1937075280;
          goto LABEL_94;
        case 25:
          v18 = 0x3631656E6F685069;
LABEL_84:
          v19 = 7303760;
LABEL_85:
          v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v13 != v18)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 26:
          v17 = 0x3631656E6F685069;
LABEL_108:
          v14 = 0xEE0078614D6F7250;
          if (v13 != v17)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 27:
          v14 = 0xE400000000000000;
          if (v13 != 1684099177)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 28:
          v14 = 0xE700000000000000;
          if (v13 != 0x72694164615069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 29:
          v6 = 0x696E694D64615069;
          goto LABEL_104;
        case 30:
          v16 = 0x5F6F725064615069;
          v20 = 895430705;
          goto LABEL_94;
        case 31:
          v14 = 0xEA00000000003131;
          if (v13 != 0x5F6F725064615069)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 32:
          v16 = 0x5F6F725064615069;
          v20 = 962540081;
LABEL_94:
          v14 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v13 != v16)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 33:
          v14 = 0xE300000000000000;
          if (v13 != 6513005)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        case 34:
          if (v13 != 0x6465727265666E69)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        default:
LABEL_104:
          if (v13 != v6)
          {
            goto LABEL_109;
          }

LABEL_105:
          if (v12 == v14)
          {
          }

          else
          {
LABEL_109:
            v21 = sub_1D72646CC();

            if ((v21 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          if (v10)
          {
            v22 = 0x70616373646E616CLL;
          }

          else
          {
            v22 = 0x7469617274726F70;
          }

          if (v10)
          {
            v23 = 0xE900000000000065;
          }

          else
          {
            v23 = 0xE800000000000000;
          }

          if (v22 == v7 && v23 == v8)
          {
          }

          else
          {
            v25 = sub_1D72646CC();

            if ((v25 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          if (v11 == a2)
          {
            return v5;
          }

LABEL_10:
          v5 = (v5 + 1) & v28;
          v6 = v15;
          if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
          {
            continue;
          }

          return v5;
      }
    }
  }

  return v5;
}

unint64_t sub_1D6D65AD0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x636170736B726F77;
    }

    else
    {
      v6 = 0x736567616B636170;
    }

    if (a1)
    {
      v7 = 0xEA00000000007365;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x636170736B726F77 : 0x736567616B636170;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000007365 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1D72646CC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D6D65C18(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xD000000000000014;
            v12 = 0x80000001D73BCEC0;
          }

          else
          {
            v11 = 0xD000000000000013;
            v12 = 0x80000001D73BCEE0;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0xD000000000000010;
          }

          else
          {
            v11 = 0xD000000000000011;
          }

          if (v6 == 4)
          {
            v12 = 0x80000001D73BCE80;
          }

          else
          {
            v12 = 0x80000001D73BCEA0;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x535F5354524F5053;
        }

        else
        {
          v7 = 0x425F5354524F5053;
        }

        if (v6 == 2)
        {
          v8 = 0xEF474E49444E4154;
        }

        else
        {
          v8 = 0xEE0054454B434152;
        }

        v9 = 0xD000000000000015;
        if (v6)
        {
          v10 = 0x80000001D73BCF90;
        }

        else
        {
          v9 = 0x535F5354524F5053;
          v10 = 0xEC00000045524F43;
        }

        if (v6 <= 1)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v6 <= 1)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0xD000000000000014;
      if (v5 != 6)
      {
        v13 = 0xD000000000000013;
      }

      v14 = 0x80000001D73BCEE0;
      if (v5 == 6)
      {
        v14 = 0x80000001D73BCEC0;
      }

      if (v5 == 4)
      {
        v15 = 0xD000000000000010;
      }

      else
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0x80000001D73BCEA0;
      if (v5 == 4)
      {
        v16 = 0x80000001D73BCE80;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x535F5354524F5053;
      }

      else
      {
        v17 = 0x425F5354524F5053;
      }

      if (v5 == 2)
      {
        v18 = 0xEF474E49444E4154;
      }

      else
      {
        v18 = 0xEE0054454B434152;
      }

      v19 = 0xD000000000000015;
      if (v5)
      {
        v20 = 0x80000001D73BCF90;
      }

      else
      {
        v19 = 0x535F5354524F5053;
        v20 = 0xEC00000045524F43;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1D72646CC();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1D6D65EB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      if (*(v13 + 16))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (a3)
      {
        goto LABEL_3;
      }

      v14 = *v13 == a1 && *(v13 + 8) == a2;
      if (v14 || (sub_1D72646CC() & 1) != 0)
      {
        return v7;
      }

LABEL_3:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1D6D65F94(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a1 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v12 = ~v6;
    do
    {
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      if (CGRectEqualToRect(*(*(v5 + 48) + 32 * v7), v14))
      {
        break;
      }

      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

void sub_1D6D66058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8CAF4();
  v35 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v25 = sub_1D7264A5C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D663A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v36 = v5;
  v7 = sub_1D726410C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v26 = sub_1D7264A5C();
      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1D6D666FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8AB3C();
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v28 = sub_1D7264A5C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D669E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8C92C();
  v45 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v44 = v6;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = (*(v5 + 56) + 40 * v23);
      v27 = *v26;
      v47 = v26[1];
      v29 = v26[2];
      v28 = v26[3];
      v30 = v26[4];
      if ((v45 & 1) == 0)
      {
      }

      v48 = v28;
      v31 = v29;
      v32 = v27;
      sub_1D7264A0C();
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v7 = v44;
      v34 = -1 << *(v44 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v48;
        v17 = v30;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v44 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = (*(v44 + 56) + 40 * v15);
      v12 = v46;
      *v19 = v32;
      v19[1] = v47;
      v19[2] = v31;
      v19[3] = v16;
      v19[4] = v17;
      ++*(v44 + 16);
      v5 = v43;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D66D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EDF1A540, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatStringSelector.Selector);
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[2];
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D671F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void, __n128))
{
  v8 = v6;
  v9 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  sub_1D5C5E4D8(0, a3, a4, a5, type metadata accessor for FormatObject);
  v48 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v50 = &v45 - v13;
  v14 = *v6;
  a6(0, v12);
  v49 = v9;
  v15 = sub_1D726410C();
  v16 = v15;
  if (*(v14 + 16))
  {
    v46 = v6;
    v47 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v15 + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 56);
      v31 = (*(v14 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v48 + 72);
      v35 = v30 + v34 * v29;
      if (v49)
      {
        sub_1D5C5E2C8(v35, v50, v51, v52, v53);
      }

      else
      {
        sub_1D6D8AF60(v35, v50, v51, v52, v53);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v36 = sub_1D7264A5C();
      v37 = -1 << *(v16 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v23 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v23 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v23 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v33;
      v25[1] = v32;
      sub_1D5C5E2C8(v50, *(v16 + 56) + v34 * v24, v51, v52, v53);
      ++*(v16 + 16);
      v14 = v47;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v8 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v14 + 32);
    v8 = v46;
    if (v44 >= 64)
    {
      bzero(v18, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v44;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v8 = v16;
}

void sub_1D6D675BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B678();
  v47 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v46 = v6;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v48 = (v12 - 1) & v12;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v50 = *v25;
      v27 = *(v5 + 56) + 40 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      v32 = *(v27 + 32);
      if ((v47 & 1) == 0)
      {

        sub_1D6D8B6D8(v28, v29, v30, v31, v32);
      }

      v49 = v30;
      v33 = v29;
      v34 = v28;
      sub_1D7264A0C();
      sub_1D72621EC();
      v35 = sub_1D7264A5C();
      v7 = v46;
      v36 = -1 << *(v46 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v16 = v49;
        v17 = v31;
        v18 = v32;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v16 = v49;
      v17 = v31;
      v18 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v46 + 48) + 16 * v15);
      *v19 = v50;
      v19[1] = v26;
      v20 = *(v46 + 56) + 40 * v15;
      *v20 = v34;
      *(v20 + 8) = v33;
      *(v20 + 16) = v16;
      *(v20 + 24) = v17;
      *(v20 + 32) = v18;
      ++*(v46 + 16);
      v5 = v45;
      v12 = v48;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v47)
    {
      v43 = 1 << *(v5 + 32);
      if (v43 >= 64)
      {
        bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v43;
      }

      *(v5 + 16) = 0;
    }

    v3 = v44;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D67924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EDF04160, sub_1D6D8B7C0, &type metadata for FormatAttributedString.StyleKey, &type metadata for FormatAttributedStringStyle);
  v44 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = (v22 + (v21 << 7));
      if (v44)
      {
        v45 = v26[3];
        v46 = *v26;
        v27 = *(v26 + 32);
        v47 = *(v26 + 1);
        v48 = *(v26 + 5);
        v49 = *(v26 + 4);
        v52 = *(v26 + 80);
        v54 = v26[11];
        v50 = *(v26 + 56);
        v51 = *(v26 + 96);
        v53 = *(v26 + 13);
        v55 = *(v26 + 120);
      }

      else
      {
        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        v30 = *v26;
        *&v57[16] = *(v26 + 1);
        *v58 = v29;
        *v57 = v30;
        v32 = *(v26 + 5);
        v31 = *(v26 + 6);
        v33 = *(v26 + 4);
        *&v61[9] = *(v26 + 105);
        v60 = v32;
        *v61 = v31;
        *&v58[16] = v28;
        v59 = v33;
        v55 = v61[24];
        v53 = *&v61[8];
        v54 = *(&v32 + 1);
        v51 = v31;
        v52 = v32;
        v50 = BYTE8(v28);
        v48 = *&v58[8];
        v49 = v33;
        v27 = v58[0];
        v47 = *&v57[8];
        v45 = *&v57[24];
        v46 = *v57;

        sub_1D61FFF18(v57, v56);
      }

      sub_1D7264A0C();
      sub_1D72621EC();

      sub_1D7264A2C();
      if (v25)
      {
        sub_1D5BE251C(v57, v25);
      }

      v34 = sub_1D7264A5C();
      v35 = -1 << *(v7 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v57[0] = v27;
      v56[0] = v50;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      v17 = *(v7 + 56) + (v15 << 7);
      *v17 = v46;
      *(v17 + 8) = v47;
      *(v17 + 24) = v45;
      *(v17 + 32) = v27;
      *(v17 + 40) = v48;
      *(v17 + 56) = v50;
      *(v17 + 64) = v49;
      *(v17 + 80) = v52;
      *(v17 + 88) = v54;
      *(v17 + 96) = v51;
      *(v17 + 104) = v53;
      *(v17 + 120) = v55;
      ++*(v7 + 16);
      v5 = v43;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

void sub_1D6D67F24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8947C();
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[2];
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D681F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &unk_1EDF1A510, sub_1D6333A84, &type metadata for FormatButtonNodeStateMask, &type metadata for FormatButtonNodeStateMaskLayoutAttributes);
  v31 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D6C37E2C(v32, v20);
      v22 = sub_1D7264A5C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D68594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, __n128))
{
  v6 = v4;
  v7 = a2;
  v51 = a3(0);
  v8 = *(v51 - 8);
  v10 = MEMORY[0x1EEE9AC00](v51, v9);
  v50 = &v43 - v11;
  v12 = *v4;
  a4(0, v10);
  v48 = v7;
  v13 = sub_1D726410C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v4;
    v45 = (v8 + 16);
    v46 = v12;
    v47 = v8;
    v49 = (v8 + 32);
    v21 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v47 + 72);
      v33 = v28 + v32 * v27;
      if (v48)
      {
        (*v49)(v50, v33, v51);
      }

      else
      {
        (*v45)(v50, v33, v51);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v34 = sub_1D7264A5C();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      (*v49)((*(v14 + 56) + v32 * v22), v50, v51);
      ++*(v14 + 16);
      v12 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v6 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v6 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v6 = v14;
}

void sub_1D6D68914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B424();
  v41 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 88 * v21;
      if (v41)
      {
        v42 = *(v25 + 8);
        v44 = *v25;
        v45 = *(v25 + 16);
        v43 = *(v25 + 24);
        v48 = *(v25 + 40);
        v46 = *(v25 + 48);
        v47 = *(v25 + 64);
        v26 = *(v25 + 80);
      }

      else
      {
        v27 = *(v25 + 80);
        v29 = *(v25 + 48);
        v28 = *(v25 + 64);
        *&v51[16] = *(v25 + 32);
        v52 = v29;
        v53 = v28;
        v54 = v27;
        v30 = *(v25 + 16);
        v50 = *v25;
        *v51 = v30;
        v48 = *&v51[24];
        v46 = v52;
        v47 = v28;
        v26 = v27;
        v43 = *&v51[8];
        v44 = v50;
        v45 = v30;
        v42 = *(&v50 + 1);

        sub_1D6B15D58(&v50, v49);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v31 = sub_1D7264A5C();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v50) = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 88 * v15;
      *v17 = v44;
      *(v17 + 8) = v42;
      *(v17 + 16) = v45;
      *(v17 + 24) = v43;
      *(v17 + 40) = v48;
      *(v17 + 48) = v46;
      *(v17 + 64) = v47;
      *(v17 + 80) = v26;
      ++*(v7 + 16);
      v5 = v40;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D68C80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8957A8, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatCustomNodeStyle.Selector);
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v40 = *v24;
      v41 = *v22;
      v39 = *(v24 + 16);
      v26 = *(v24 + 24);
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v40;
      *(v17 + 8) = v25;
      *(v17 + 16) = v39;
      *(v17 + 24) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D68F80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D896C4(0);
  v35 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v36 = v25[1];
      v37 = *v25;
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v26 = sub_1D7264A5C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v37;
      v17[1] = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D69250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BFE8(0, &qword_1EDF03E50, MEMORY[0x1E69E6EC8]);
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_1D72636FC();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D694C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D6D8851C(0);
  v43 = v4;
  v11 = sub_1D726410C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v46 = v9;
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v44 = (v6 + 32);
    v19 = v11 + 64;
    v41 = v10;
    v42 = v5;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v6 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v5);
        v27 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v39)(v46, v26, v5);
        v27 = *(*(v10 + 56) + 8 * v24);
      }

      sub_1D6716B68();
      v28 = sub_1D7261E7C();
      v29 = -1 << *(v12 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v5 = v42;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v42);
      *(*(v12 + 56) + 8 * v20) = v27;
      ++*(v12 + 16);
      v6 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v14, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1D6D69858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D88598();
  v34 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v25 = sub_1D7264A5C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D69AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D89034();
  v45 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v44 = v6;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v50 = *v24;
      v26 = (*(v5 + 56) + 48 * v23);
      v27 = v26[1];
      v48 = *v26;
      v29 = v26[2];
      v28 = v26[3];
      v30 = v26[5];
      v46 = v26[4];
      if ((v45 & 1) == 0)
      {
      }

      v49 = v28;
      v31 = v29;
      v32 = v27;
      sub_1D7264A0C();
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v7 = v44;
      v34 = -1 << *(v44 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v49;
        v17 = v30;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v49;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v44 + 48) + 16 * v15);
      *v18 = v50;
      v18[1] = v25;
      v19 = (*(v44 + 56) + 48 * v15);
      v12 = v47;
      *v19 = v48;
      v19[1] = v32;
      v19[2] = v31;
      v19[3] = v16;
      v19[4] = v46;
      v19[5] = v17;
      ++*(v44 + 16);
      v5 = v43;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D69E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B5B4(0);
  v45 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = (*(v5 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v5 + 56) + 104 * v26;
      if (v45)
      {
        v31 = *v30;
        v32 = *(v30 + 32);
        v47 = *(v30 + 16);
        v48 = v32;
        v46 = v31;
        v33 = *(v30 + 48);
        v34 = *(v30 + 64);
        v35 = *(v30 + 80);
        v52 = *(v30 + 96);
        v50 = v34;
        v51 = v35;
        v49 = v33;
      }

      else
      {
        sub_1D6D8C7DC(v30, &v46, sub_1D6D8B54C);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v36 = sub_1D7264A5C();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v28;
      v16[1] = v29;
      v17 = *(v7 + 56) + 104 * v15;
      v18 = v46;
      v19 = v48;
      *(v17 + 16) = v47;
      *(v17 + 32) = v19;
      *v17 = v18;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      *(v17 + 96) = v52;
      *(v17 + 64) = v21;
      *(v17 + 80) = v22;
      *(v17 + 48) = v20;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D6A144(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B484(0);
  v34 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v25 = sub_1D7264A5C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6A3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D5F59128(0);
  v32 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {

        v22 = v21;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      sub_1D72621EC();
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6A69C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  sub_1D6D8A99C(0, a3);
  v38 = v5;
  v7 = sub_1D726410C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v37 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = v19 | (v9 << 6);
      v23 = *(v6 + 56);
      v24 = (*(v6 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 144 * v22);
      v45 = v27[6];
      *v46 = v27[7];
      *&v46[10] = *(v27 + 122);
      v41 = v27[2];
      v42 = v27[3];
      v43 = v27[4];
      v44 = v27[5];
      v39 = *v27;
      v40 = v27[1];
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v28 = sub_1D7264A5C();
      v29 = -1 << *(v8 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 144 * v16);
      v18[6] = v45;
      v18[7] = *v46;
      *(v18 + 122) = *&v46[10];
      v18[2] = v41;
      v18[3] = v42;
      v18[4] = v43;
      v18[5] = v44;
      *v18 = v39;
      v18[1] = v40;
      ++*(v8 + 16);
      v6 = v37;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v36 = 1 << *(v6 + 32);
    v4 = v3;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1D6D6A98C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B8AC(0);
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v32 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      v21 = *&v32;
      if (*&v32 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x1DA6FC0E0](*&v21);
      v22 = *(&v32 + 1);
      if (*(&v32 + 1) == 0.0)
      {
        v22 = 0.0;
      }

      MEMORY[0x1DA6FC0E0](*&v22);
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

void sub_1D6D6AC40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B958(0);
  v34 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v25 = sub_1D7264A5C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6AEE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &unk_1EC895788, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatGroupNodeStyle.Selector);
  v44 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v43 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v54 = v21;
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      if (v44)
      {
        v29 = (v25 + 320 * v24);
        v48 = v29[1];
        v50 = v29[2];
        v51 = *v29;
        v52 = v29[3];
        v53 = v29[4];
        v49 = *(v29 + 40);
        v30 = *(v29 + 6);
        v70 = *(v29 + 5);
        v71 = v30;
        v72 = *(v29 + 7);
        v73 = *(v29 + 128);
        v31 = *(v29 + 4);
        v68 = *(v29 + 3);
        v69 = v31;
        v45 = v29[17];
        v46 = *(v29 + 144);
        v47 = *(v29 + 145);
        v66 = *(v29 + 156);
        v65 = *(v29 + 37);
        v64 = *(v29 + 35);
        v63 = *(v29 + 33);
        v62 = *(v29 + 31);
        v61 = *(v29 + 29);
        v60 = *(v29 + 27);
        v59 = *(v29 + 25);
        v58 = *(v29 + 23);
        v57 = *(v29 + 21);
        v56 = *(v29 + 19);
      }

      else
      {
        memcpy(__dst, (v25 + 320 * v24), 0x13AuLL);
        v46 = __dst[9];
        v47 = BYTE1(__dst[9]);
        v45 = *(&__dst[8] + 1);
        v49 = BYTE8(__dst[2]);
        v52 = *(&__dst[1] + 1);
        v53 = *&__dst[2];
        v50 = *&__dst[1];
        v48 = *(&__dst[0] + 1);
        v51 = *&__dst[0];

        sub_1D60101A0(__dst, &v56);
        v70 = __dst[5];
        v71 = __dst[6];
        v72 = __dst[7];
        v73 = __dst[8];
        v68 = __dst[3];
        v69 = __dst[4];
        v56 = *(&__dst[9] + 8);
        v57 = *(&__dst[10] + 8);
        v58 = *(&__dst[11] + 8);
        v61 = *(&__dst[14] + 8);
        v62 = *(&__dst[15] + 8);
        v59 = *(&__dst[12] + 8);
        v60 = *(&__dst[13] + 8);
        v66 = WORD4(__dst[19]);
        v64 = *(&__dst[17] + 8);
        v65 = *(&__dst[18] + 8);
        v63 = *(&__dst[16] + 8);
      }

      sub_1D7264A0C();
      v32 = v28;
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v5 = v43;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v5 = v43;
LABEL_7:
      *&v55[39] = v70;
      *&v55[55] = v71;
      *&v55[71] = v72;
      v55[87] = v73;
      *(&__dst[9] + 6) = v65;
      *(&__dst[8] + 6) = v64;
      *(&__dst[7] + 6) = v63;
      *(&__dst[6] + 6) = v62;
      *(&__dst[5] + 6) = v61;
      *(&__dst[4] + 6) = v60;
      *(&__dst[3] + 6) = v59;
      *(__dst + 6) = v56;
      *(&__dst[1] + 6) = v57;
      *(&__dst[2] + 6) = v58;
      v16 = v68;
      v17 = v69;
      WORD3(__dst[10]) = v66;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *&v55[7] = v16;
      *&v55[23] = v17;
      v18 = (*(v7 + 48) + 16 * v15);
      *v18 = v27;
      v18[1] = v32;
      v19 = *(v7 + 56) + 320 * v15;
      *(v19 + 73) = *&v55[32];
      *(v19 + 89) = *&v55[48];
      *(v19 + 105) = *&v55[64];
      *(v19 + 41) = *v55;
      *v19 = v51;
      *(v19 + 8) = v48;
      *(v19 + 16) = v50;
      *(v19 + 24) = v52;
      *(v19 + 32) = v53;
      *(v19 + 40) = v49;
      *(v19 + 121) = *&v55[80];
      *(v19 + 57) = *&v55[16];
      *(v19 + 136) = v45;
      *(v19 + 144) = v46;
      *(v19 + 145) = v47;
      *(v19 + 178) = __dst[2];
      *(v19 + 162) = __dst[1];
      *(v19 + 146) = __dst[0];
      *(v19 + 242) = __dst[6];
      *(v19 + 226) = __dst[5];
      *(v19 + 210) = __dst[4];
      *(v19 + 194) = __dst[3];
      *(v19 + 306) = *&__dst[10];
      *(v19 + 290) = __dst[9];
      *(v19 + 274) = __dst[8];
      *(v19 + 258) = __dst[7];
      ++*(v7 + 16);
      v12 = v54;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D6B490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D5D1B9F8();
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + (v21 << 6));
      if (v38)
      {
        v39 = *v25;
        v40 = v25[1];
        v41 = v25[2];
        v42 = v25[3];
      }

      else
      {
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[3];
        v44 = v25[2];
        v45 = v28;
        v43[0] = v26;
        v43[1] = v27;
        v41 = v44;
        v42 = v28;
        v39 = v26;
        v40 = v27;

        sub_1D5D12A1C(v43, v46);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + (v15 << 6));
      *v17 = v39;
      v17[1] = v40;
      v17[2] = v41;
      v17[3] = v42;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D6B780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D605F4D4();
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1D72649FC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D6B9D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D605F534();
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1D72649FC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D6BC30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = sub_1D726410C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v5 & 1) == 0)
      {
      }

      v23 = sub_1D72649FC();
      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v5 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1D6D6BE98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D885F8();
  v46 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v42 = v2;
    v43 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    v45 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = (*(v5 + 56) + 56 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      v31 = v26[4];
      v32 = v26[5];
      v49 = v26[6];
      v50 = *v24;
      if ((v46 & 1) == 0)
      {
      }

      v48 = v32;
      v7 = v45;
      sub_1D7264A0C();
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v34 = -1 << *(v45 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v48;
        v15 = v30;
        v17 = v31;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v15 = v30;
      v17 = v31;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v45 + 48) + 16 * v14);
      *v18 = v50;
      v18[1] = v25;
      v19 = (*(v45 + 56) + 56 * v14);
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v29;
      v19[3] = v15;
      v19[4] = v17;
      v19[5] = v16;
      v19[6] = v49;
      ++*(v45 + 16);
      v5 = v44;
      v11 = v47;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v22 = v43[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6C1E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B1B0();
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v40 = *v24;
      v41 = *v22;
      v26 = v24[3];
      v39 = v24[2];
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v40;
      v17[1] = v25;
      v17[2] = v39;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6C4CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B150();
  v40 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 112 * v21;
      if (v40)
      {
        v44 = *v25;
        v45 = *(v25 + 32);
        v43 = *(v25 + 16);
        v48 = *(v25 + 56);
        v49 = *(v25 + 72);
        v41 = *(v25 + 48);
        v42 = *(v25 + 88);
        v46 = *(v25 + 104);
        v47 = *(v25 + 96);
      }

      else
      {
        v26 = *(v25 + 48);
        v28 = *(v25 + 80);
        v27 = *(v25 + 96);
        *&v52[16] = *(v25 + 64);
        *&v52[32] = v28;
        *v52 = v26;
        v30 = *(v25 + 16);
        v29 = *(v25 + 32);
        v51[0] = *v25;
        v51[1] = v30;
        v51[2] = v29;
        v53 = v27;
        v48 = *&v52[8];
        v49 = *&v52[24];
        v46 = *(&v27 + 1);
        v47 = v27;
        v44 = v51[0];
        v45 = v29;
        v43 = v30;
        v41 = *v52;
        v42 = *(&v28 + 1);

        sub_1D6053138(v51, v50);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v31 = sub_1D7264A5C();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 112 * v15;
      *v17 = v44;
      *(v17 + 16) = v43;
      *(v17 + 32) = v45;
      *(v17 + 48) = v41;
      *(v17 + 72) = v49;
      *(v17 + 56) = v48;
      *(v17 + 88) = v42;
      *(v17 + 96) = v47;
      *(v17 + 104) = v46;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D6C8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D89EB0();
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v38)
      {
        v41 = *v25;
        v42 = *(v25 + 40);
        v43 = *(v25 + 24);
        v39 = *(v25 + 8);
        v40 = *(v25 + 56);
      }

      else
      {
        v26 = *(v25 + 64);
        v28 = *(v25 + 32);
        v27 = *(v25 + 48);
        *&v45[16] = *(v25 + 16);
        *&v45[32] = v28;
        *&v45[48] = v27;
        *&v45[64] = v26;
        *v45 = *v25;
        v42 = *&v45[40];
        v43 = *&v45[24];
        v41 = *v45;
        v39 = *&v45[8];
        v40 = *&v45[56];

        sub_1D670E798(v45, v44);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v41;
      *(v17 + 8) = v39;
      *(v17 + 24) = v43;
      *(v17 + 40) = v42;
      *(v17 + 56) = v40;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D6CC10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8958D0, sub_1D6D89AB0, &type metadata for FormatDerivedDataFileKey, &type metadata for FormatDerivedDataResult);
  v47 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v44 = (v5 + 64);
    v45 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v42 = v2;
    v43 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v46 = v6;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v48 = (v11 - 1) & v11;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v24 = *(v23 + 8);
      v50 = *v23;
      v25 = *(v23 + 16);
      v26 = (*(v5 + 56) + 48 * v22);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      v32 = v26[4];
      v31 = v26[5];
      if ((v47 & 1) == 0)
      {
        sub_1D5F7D230(v50, v24, *(v23 + 16));
      }

      v49 = v31;
      v7 = v46;
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v25);
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v34 = -1 << *(v46 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v12 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v15 = v30;
        v14 = v49;
        v16 = v32;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v12 + 8 * v36);
          if (v40 != -1)
          {
            v13 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v35) & ~*(v12 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v15 = v30;
      v14 = v49;
      v16 = v32;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = *(v46 + 48) + 24 * v13;
      *v17 = v50;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      v18 = (*(v46 + 56) + 48 * v13);
      *v18 = v27;
      v18[1] = v28;
      v18[2] = v29;
      v18[3] = v15;
      v18[4] = v16;
      v18[5] = v14;
      ++*(v46 + 16);
      v5 = v45;
      v11 = v48;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v43)
      {
        break;
      }

      v21 = v44[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v47)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero(v44, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v3 = v42;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D6D03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v74 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v89, v13);
  v82 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v81 = (&v69 - v17);
  v18 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v80 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v83 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v2;
  sub_1D605F2B8(0);
  v22 = sub_1D726410C();
  v23 = v21;
  v24 = v22;
  if (*(v21 + 16))
  {
    v70 = v3;
    v25 = 0;
    v84 = 0;
    v26 = *(v23 + 64);
    v71 = (v23 + 64);
    v27 = 1 << *(v23 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v26;
    v30 = (v27 + 63) >> 6;
    v72 = v6 + 16;
    v73 = v6;
    v31 = (v6 + 8);
    v32 = v83;
    v75 = v30;
    v85 = v4;
    v78 = v23;
    v77 = v22;
    v76 = v22 + 64;
    while (v29)
    {
      v34 = __clz(__rbit64(v29));
      v88 = (v29 - 1) & v29;
LABEL_15:
      v37 = v34 | (v25 << 6);
      v38 = *(v23 + 48);
      v87 = *(v80 + 72);
      v39 = v38 + v87 * v37;
      if (v4)
      {
        sub_1D6D8C85C(v39, v32, type metadata accessor for WebEmbedDatastoreCacheKey);
        v86 = *(*(v23 + 56) + 8 * v37);
      }

      else
      {
        sub_1D6D8C7DC(v39, v32, type metadata accessor for WebEmbedDatastoreCacheKey);
        v86 = *(*(v23 + 56) + 8 * v37);
      }

      sub_1D7264A0C();
      v40 = v81;
      sub_1D6D8C7DC(v32, v81, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = v74;
        sub_1D6D8C85C(v40, v74, type metadata accessor for GenericDataVisualization);
        v92 = 0x3A636972656E6567;
        v93 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v41, v41[1]);
        sub_1D5CEB1A0(v41, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v42 = *v40;
        v92 = 0x3A3A7374726F7073;
        v93 = 0xE800000000000000;
        v91 = v42;
        v43 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v43);
      }

      sub_1D72621EC();

      v44 = v82;
      sub_1D6D8C7DC(v32, v82, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = sub_1D6D2968C();
        v46 = sub_1D6D29D78();
        v92 = v45;
        sub_1D6985118(v46);
        v47 = MEMORY[0x1E6968FB0];
        sub_1D5B59654(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
        sub_1D6D88798(&qword_1EDF053F0, &qword_1EDF05400, v47, MEMORY[0x1E69E6328]);
        sub_1D6716B68();
        v48 = v84;
        v49 = sub_1D72623CC();
        v84 = v48;

        sub_1D5CEB1A0(v44, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        v50 = *v44;
        if (*v44 >> 61 == 2)
        {
          v49 = *(*((v50 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
        }

        else
        {
          v92 = *v44;
          v51 = sub_1D6F86D04();
          v91 = v50;
          v52 = sub_1D6F87060();
          v90 = v51;
          sub_1D6985118(v52);
          v92 = v90;
          v53 = MEMORY[0x1E6968FB0];
          sub_1D5B59654(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
          sub_1D6D88798(&qword_1EDF053F0, &qword_1EDF05400, v53, MEMORY[0x1E69E6328]);
          sub_1D6716B68();
          v54 = v84;
          v49 = sub_1D72623CC();
          v84 = v54;
        }
      }

      LOBYTE(v4) = v85;
      MEMORY[0x1DA6FC0B0](*(v49 + 16));
      v55 = *(v49 + 16);
      if (v55)
      {
        v56 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v79 = v49;
        v57 = v49 + v56;
        v58 = *(v73 + 72);
        v59 = *(v73 + 16);
        do
        {
          v59(v9, v57, v5);
          sub_1D6716B68();
          sub_1D7261E8C();
          (*v31)(v9, v5);
          v57 += v58;
          --v55;
        }

        while (v55);

        LOBYTE(v4) = v85;
      }

      else
      {
      }

      v60 = sub_1D7264A5C();
      v24 = v77;
      v61 = -1 << *(v77 + 32);
      v62 = v60 & ~v61;
      v63 = v62 >> 6;
      v32 = v83;
      if (((-1 << v62) & ~*(v76 + 8 * (v62 >> 6))) == 0)
      {
        v64 = 0;
        v65 = (63 - v61) >> 6;
        v23 = v78;
        while (++v63 != v65 || (v64 & 1) == 0)
        {
          v66 = v63 == v65;
          if (v63 == v65)
          {
            v63 = 0;
          }

          v64 |= v66;
          v67 = *(v76 + 8 * v63);
          if (v67 != -1)
          {
            v33 = __clz(__rbit64(~v67)) + (v63 << 6);
            goto LABEL_7;
          }
        }

LABEL_50:
        __break(1u);
        return;
      }

      v33 = __clz(__rbit64((-1 << v62) & ~*(v76 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
      v23 = v78;
LABEL_7:
      *(v76 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      sub_1D6D8C85C(v32, v24[6] + v87 * v33, type metadata accessor for WebEmbedDatastoreCacheKey);
      *(v24[7] + 8 * v33) = v86;
      ++v24[2];
      v30 = v75;
      v29 = v88;
    }

    v35 = v25;
    while (1)
    {
      v25 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v25 >= v30)
      {
        break;
      }

      v36 = v71[v25];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v88 = (v36 - 1) & v36;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v70;
      goto LABEL_48;
    }

    v68 = 1 << *(v23 + 32);
    v3 = v70;
    if (v68 >= 64)
    {
      bzero(v71, ((v68 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v71 = -1 << v68;
    }

    *(v23 + 16) = 0;
  }

LABEL_48:
  *v3 = v24;
}

void sub_1D6D6D9A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &unk_1EC8957C8, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatIssueCoverNodeStyle.Selector);
  v45 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 152 * v21);
      if (v45)
      {
        v49 = *v26;
        v46 = v26[1];
        v47 = *(v26 + 1);
        v48 = *(v26 + 2);
        v27 = *(v26 + 48);
        v55 = *(v26 + 11);
        v56 = *(v26 + 13);
        v57 = *(v26 + 15);
        v58 = *(v26 + 136);
        v53 = *(v26 + 7);
        v54 = *(v26 + 9);
        v50 = v27;
        v51 = *(v26 + 137);
        v52 = v26[18];
      }

      else
      {
        v28 = *(v26 + 1);
        *v59 = *v26;
        *&v59[16] = v28;
        v29 = *(v26 + 5);
        v31 = *(v26 + 2);
        v30 = *(v26 + 3);
        *&v59[64] = *(v26 + 4);
        *&v59[80] = v29;
        *&v59[32] = v31;
        *&v59[48] = v30;
        v33 = *(v26 + 7);
        v32 = *(v26 + 8);
        v34 = *(v26 + 6);
        v60 = v26[18];
        *&v59[112] = v33;
        *&v59[128] = v32;
        *&v59[96] = v34;
        v52 = v60;
        v50 = v59[48];
        v51 = BYTE9(v32);
        v47 = *&v59[16];
        v48 = v31;
        v46 = *&v59[8];
        v49 = *v59;

        sub_1D615EAA0(v59, &v53);
        v55 = *&v59[88];
        v56 = *&v59[104];
        v57 = *&v59[120];
        v58 = v59[136];
        v53 = *&v59[56];
        v54 = *&v59[72];
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v35 = sub_1D7264A5C();
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v59[7] = v53;
      *&v59[23] = v54;
      v59[87] = v58;
      *&v59[55] = v56;
      *&v59[71] = v57;
      *&v59[39] = v55;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 152 * v15;
      *v17 = v49;
      *(v17 + 8) = v46;
      *(v17 + 16) = v47;
      *(v17 + 32) = v48;
      *(v17 + 48) = v50;
      *(v17 + 65) = *&v59[16];
      *(v17 + 49) = *v59;
      *(v17 + 129) = *&v59[80];
      *(v17 + 113) = *&v59[64];
      *(v17 + 97) = *&v59[48];
      *(v17 + 81) = *&v59[32];
      *(v17 + 137) = v51;
      *(v17 + 144) = v52;
      ++*(v7 + 16);
      v5 = v44;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D6DDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC8957E0, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatProgressViewNodeStyle.Selector);
  v45 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v44 = v6;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v50 = *v24;
      v26 = *(v5 + 56) + 48 * v23;
      v27 = *(v26 + 8);
      v48 = *v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = *(v26 + 32);
      v46 = *(v26 + 40);
      if ((v45 & 1) == 0)
      {

        sub_1D5CFCFAC(v28);
        sub_1D5CFCFAC(v30);
      }

      v49 = v28;
      v31 = v29;
      v32 = v27;
      sub_1D7264A0C();
      sub_1D72621EC();
      v33 = sub_1D7264A5C();
      v7 = v44;
      v34 = -1 << *(v44 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v49;
        v17 = v30;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v49;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v44 + 48) + 16 * v15);
      *v18 = v50;
      v18[1] = v25;
      v19 = *(v44 + 56) + 48 * v15;
      v12 = v47;
      *v19 = v48;
      *(v19 + 8) = v32;
      *(v19 + 16) = v31;
      *(v19 + 24) = v16;
      *(v19 + 32) = v17;
      *(v19 + 40) = v46;
      ++*(v44 + 16);
      v5 = v43;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6E138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &unk_1EC895798, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatWebEmbedNodeStyle.Selector);
  v38 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v38)
      {
        v41 = *v25;
        v39 = *(v25 + 8);
        v43 = *(v25 + 24);
        v40 = *(v25 + 32);
        v48 = *(v25 + 40);
        v44 = *(v25 + 48);
        v45 = *(v25 + 16);
        v42 = *(v25 + 56);
        v46 = *(v25 + 57);
        v47 = *(v25 + 58);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 32);
        *&v50[11] = *(v25 + 43);
        v49[1] = v27;
        *v50 = v28;
        v49[0] = v26;
        v46 = v50[25];
        v47 = v50[26];
        v48 = *(&v28 + 1);
        v42 = v50[24];
        v44 = *&v50[16];
        v43 = *(&v27 + 1);
        v45 = v27;
        v40 = v28;
        v39 = *(&v26 + 1);
        v41 = v26;

        sub_1D619392C(v49, v51);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v29 = sub_1D7264A5C();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v41;
      *(v17 + 8) = v39;
      *(v17 + 16) = v45;
      *(v17 + 24) = v43;
      *(v17 + 32) = v40;
      *(v17 + 40) = v48;
      *(v17 + 48) = v44;
      *(v17 + 56) = v42;
      *(v17 + 57) = v46;
      *(v17 + 58) = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D6D6E4FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D605F85C();
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_1D5B7C390((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_1D5F42518(v23, &v37);
        sub_1D5B76B10(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1D7263C7C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_1D5B7C390(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D6E7A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D5BCFD1C(0, &qword_1EC895828, type metadata accessor for FormatVideoPlayerManager, sub_1D6D8994C, &type metadata for FormatVideoPlayerReuseManagerCacheKey);
  v36 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v26 = sub_1D7264A5C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6EA78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D60600F4(0);
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = sub_1D72649FC();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D6ECE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8B814(0);
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1D72649FC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D6EF54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EDF1A500, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, &type metadata for FormatAuxiliaryView);
  v34 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = *(v5 + 56) + 16 * v24;
      v27 = *v26;
      v35 = *(v26 + 8);
      if ((v34 & 1) == 0)
      {
        v28 = v27;
      }

      sub_1D7264A0C();
      sub_1D72621EC();

      v15 = sub_1D7264A5C();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v25;
      v20 = *(v7 + 56) + 16 * v19;
      *v20 = v27;
      *(v20 + 8) = v35;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D6D6F2D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BBF0(0);
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1D72649FC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D6D6F5FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D6D8BCF0(0, &qword_1EC895780, sub_1D601014C, &type metadata for FormatSelector, &type metadata for FormatGroupNodeMaskStyle.Selector);
  v57 = v4;
  v6 = sub_1D726410C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v56 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v24 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v27 = v24 | (v8 << 6);
      v28 = *(v5 + 56);
      v29 = (*(v5 + 48) + 16 * v27);
      v30 = *v29;
      v31 = v29[1];
      v32 = (v28 + 184 * v27);
      if (v57)
      {
        v33 = *v32;
        v58 = v32[1];
        v34 = *(v32 + 4);
        v76 = *(v32 + 3);
        v77 = v34;
        v78 = *(v32 + 80);
        v35 = *(v32 + 2);
        v74 = *(v32 + 1);
        v75 = v35;
        v59 = v32[11];
        v60 = v33;
        v36 = *(v32 + 7);
        v79 = *(v32 + 6);
        v80 = v36;
        v84 = *(v32 + 176);
        v37 = *(v32 + 10);
        v82 = *(v32 + 9);
        v83 = v37;
        v81 = *(v32 + 8);
      }

      else
      {
        v39 = *(v32 + 2);
        v38 = *(v32 + 3);
        v40 = *v32;
        v63 = *(v32 + 1);
        v64 = v39;
        v62 = v40;
        v41 = *(v32 + 7);
        v43 = *(v32 + 4);
        v42 = *(v32 + 5);
        v68 = *(v32 + 6);
        v69 = v41;
        v66 = v43;
        v67 = v42;
        v45 = *(v32 + 9);
        v44 = *(v32 + 10);
        v46 = *(v32 + 8);
        v73 = *(v32 + 176);
        v71 = v45;
        v72 = v44;
        v70 = v46;
        v65 = v38;
        v59 = *(&v67 + 1);
        v58 = *(&v62 + 1);
        v60 = v62;

        sub_1D62B7804(&v62, v61);
        v76 = v65;
        v77 = v66;
        v78 = v67;
        v74 = v63;
        v75 = v64;
        v81 = v70;
        v82 = v71;
        v83 = v72;
        v84 = v73;
        v79 = v68;
        v80 = v69;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v47 = sub_1D7264A5C();
      v48 = -1 << *(v7 + 32);
      v49 = v47 & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v14 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v14 + 8 * v50);
          if (v54 != -1)
          {
            v15 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v49) & ~*(v14 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v30;
      v16[1] = v31;
      v17 = *(v7 + 56) + 184 * v15;
      *v17 = v60;
      *(v17 + 8) = v58;
      v18 = v77;
      *(v17 + 48) = v76;
      *(v17 + 64) = v18;
      *(v17 + 80) = v78;
      v19 = v75;
      *(v17 + 16) = v74;
      *(v17 + 32) = v19;
      *(v17 + 88) = v59;
      v20 = v80;
      *(v17 + 96) = v79;
      *(v17 + 112) = v20;
      v21 = v81;
      v22 = v82;
      v23 = v83;
      *(v17 + 176) = v84;
      *(v17 + 144) = v22;
      *(v17 + 160) = v23;
      *(v17 + 128) = v21;
      ++*(v7 + 16);
      v5 = v56;
    }

    v25 = v8;
    while (1)
    {
      v8 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v26 = v9[v8];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v12 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v57 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v55 = 1 << *(v5 + 32);
    v3 = v2;
    if (v55 >= 64)
    {
      bzero(v9, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v55;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}