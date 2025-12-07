void sub_1A3F37DA4(uint64_t a1)
{
  if (!qword_1EB126200)
  {
    sub_1A3F24E98(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126200);
    }
  }
}

uint64_t sub_1A3F37E0C(uint64_t a1)
{
  sub_1A3F24E98(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F37EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v5 = *(a1 + 24);
  v43 = a4;
  v44 = v5;
  v6 = *(v5 - 8);
  v41 = a3;
  v42 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v9 = *(v8 + 32);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  v25 = *(v18 + 16);
  v37 = v26;
  v25(&v36 - v23, v26, a1, v22);
  v27 = (*(v18 + 88))(v24, a1);
  if (v27 == *off_1E7720FE8)
  {
    (*(v18 + 96))(v24, a1);
    (*(v14 + 32))(v16, v24, v13);
    v28 = sub_1A5242A84();
    (*(v14 + 8))(v16, v13);
    return v28 & 1;
  }

  if (v27 == *off_1E7720FF8)
  {
    (*(v18 + 96))(v24, a1);
    v29 = v42;
    v30 = v39;
    v31 = v44;
    (*(v42 + 32))(v39, v24, v44);
    v28 = sub_1A5242A84();
    (*(v29 + 8))(v30, v31);
    return v28 & 1;
  }

  if (v27 == *off_1E7720FF0)
  {
    (*(v18 + 96))(v24, a1);
    v32 = v38;
    v33 = v40;
    (*(v38 + 32))(v11, v24, v40);
    v28 = sub_1A5242A84();
    (*(v32 + 8))(v11, v33);
    return v28 & 1;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1A524E404();

  v46 = 0xD00000000000001ALL;
  v47 = 0x80000001A53BD470;
  (v25)(v20, v37, a1);
  v35 = sub_1A524C714();
  MEMORY[0x1A5907B60](v35);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3F3835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v53 = a2;
  v52 = a1;
  v7 = *(a3 + 24);
  v49 = a6;
  v50 = v7;
  v8 = *(v7 - 8);
  v47 = a5;
  v48 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v11 = *(v10 + 32);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v11;
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v30 = *(v22 + 16);
  v43 = v31;
  v30(&v42 - v28, v31, v27);
  v32 = (*(v22 + 88))(v29, a3);
  if (v32 == *off_1E7720FE8)
  {
    (*(v22 + 96))(v29, a3);
    (*(v17 + 32))(v20, v29, v16);
    sub_1A5243534();
    return (*(v17 + 8))(v20, v16);
  }

  else if (v32 == *off_1E7720FF8)
  {
    (*(v22 + 96))(v29, a3);
    v34 = v48;
    v35 = v45;
    v36 = v29;
    v37 = v50;
    (*(v48 + 32))(v45, v36, v50);
    sub_1A5243534();
    return (*(v34 + 8))(v35, v37);
  }

  else if (v32 == *off_1E7720FF0)
  {
    (*(v22 + 96))(v29, a3);
    v38 = v44;
    v39 = v29;
    v40 = v46;
    (*(v44 + 32))(v14, v39, v46);
    sub_1A5243534();
    return (*(v38 + 8))(v14, v40);
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1A524E404();

    v54 = 0xD00000000000001ALL;
    v55 = 0x80000001A53BD470;
    (v30)(v25, v43, a3);
    v41 = sub_1A524C714();
    MEMORY[0x1A5907B60](v41);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3F38828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41[1] = a6;
  v50 = a7;
  v51 = a5;
  v49 = a2;
  v8 = *(a1 + 24);
  v47 = a4;
  v48 = v8;
  v9 = *(v8 - 8);
  v45 = a3;
  v46 = v9;
  MEMORY[0x1EEE9AC00](a1);
  v12 = *(v11 + 32);
  v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v41 - v26;
  v28 = *(v21 + 16);
  v41[0] = v29;
  v28(v41 - v26, v29, a1, v25);
  v30 = (*(v21 + 88))(v27, a1);
  if (v30 == *off_1E7720FE8)
  {
    (*(v21 + 96))(v27, a1);
    (*(v17 + 32))(v19, v27, v16);
    v51(v16, *(v49 + 8));
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v32 = v51;
    if (v30 == *off_1E7720FF8)
    {
      (*(v21 + 96))(v27, a1);
      v33 = v46;
      v34 = v43;
      v35 = v27;
      v36 = v48;
      (*(v46 + 32))(v43, v35, v48);
      v32(v36, *(v45 + 8));
      return (*(v33 + 8))(v34, v36);
    }

    else if (v30 == *off_1E7720FF0)
    {
      (*(v21 + 96))(v27, a1);
      v37 = v42;
      v38 = v27;
      v39 = v44;
      (*(v42 + 32))(v14, v38, v44);
      v32(v39, *(v47 + 8));
      return (*(v37 + 8))(v14, v39);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1A524E404();

      v52 = 0xD00000000000001ALL;
      v53 = 0x80000001A53BD470;
      (v28)(v23, v41[0], a1);
      v40 = sub_1A524C714();
      MEMORY[0x1A5907B60](v40);

      result = sub_1A524E6E4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A3F38CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v5 = *(a1 + 24);
  v43 = a4;
  v44 = v5;
  v6 = *(v5 - 8);
  v41 = a3;
  v42 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v9 = *(v8 + 32);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  v25 = *(v18 + 16);
  v37 = v26;
  v25(&v36 - v23, v26, a1, v22);
  v27 = (*(v18 + 88))(v24, a1);
  if (v27 == *off_1E7720FE8)
  {
    (*(v18 + 96))(v24, a1);
    (*(v14 + 32))(v16, v24, v13);
    v28 = sub_1A5241E54();
    (*(v14 + 8))(v16, v13);
    return v28;
  }

  if (v27 == *off_1E7720FF8)
  {
    (*(v18 + 96))(v24, a1);
    v29 = v42;
    v30 = v39;
    v31 = v44;
    (*(v42 + 32))(v39, v24, v44);
    v28 = sub_1A5241E54();
    (*(v29 + 8))(v30, v31);
    return v28;
  }

  if (v27 == *off_1E7720FF0)
  {
    (*(v18 + 96))(v24, a1);
    v32 = v38;
    v33 = v40;
    (*(v38 + 32))(v11, v24, v40);
    v28 = sub_1A5241E54();
    (*(v32 + 8))(v11, v33);
    return v28;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1A524E404();

  v46 = 0xD00000000000001ALL;
  v47 = 0x80000001A53BD470;
  (v25)(v20, v37, a1);
  v35 = sub_1A524C714();
  MEMORY[0x1A5907B60](v35);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3F39180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void), uint64_t a6)
{
  v41 = a6;
  v49 = a2;
  v50 = a5;
  v7 = *(a1 + 24);
  v47 = a4;
  v48 = v7;
  v8 = *(v7 - 8);
  v45 = a3;
  v46 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v11 = *(v10 + 32);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v39 - v25;
  v27 = *(v20 + 16);
  v40 = v28;
  v27(&v39 - v25, v28, a1, v24);
  v29 = (*(v20 + 88))(v26, a1);
  if (v29 == *off_1E7720FE8)
  {
    (*(v20 + 96))(v26, a1);
    (*(v16 + 32))(v18, v26, v15);
    v30 = v50(v15, *(v49 + 8));
    (*(v16 + 8))(v18, v15);
    return v30;
  }

  v31 = v50;
  if (v29 == *off_1E7720FF8)
  {
    (*(v20 + 96))(v26, a1);
    v32 = v46;
    v33 = v43;
    v34 = v48;
    (*(v46 + 32))(v43, v26, v48);
    v30 = v31(v34, *(v45 + 8));
    (*(v32 + 8))(v33, v34);
    return v30;
  }

  if (v29 == *off_1E7720FF0)
  {
    (*(v20 + 96))(v26, a1);
    v35 = v42;
    v36 = v44;
    (*(v42 + 32))(v13, v26, v44);
    v30 = v31(v36, *(v47 + 8));
    (*(v35 + 8))(v13, v36);
    return v30;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1A524E404();

  v51 = 0xD00000000000001ALL;
  v52 = 0x80000001A53BD470;
  (v27)(v22, v40, a1);
  v38 = sub_1A524C714();
  MEMORY[0x1A5907B60](v38);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t LemonadeCollectionCustomizationPreviewImageStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3F3A2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3F3A30C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a1;
  v32 = a2;
  v42 = sub_1A5243994();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v29 - v7;
  v31 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v39 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[2];
  v12 = *(v11 + 16);
  if (v12)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1A3F3CC04(0, v12, 0);
    v13 = v43;
    v38 = v2[1];
    v30 = v2;
    v45 = v2[9];
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v16 = (v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
    v36 = *(v14 + 56);
    v37 = v15;
    v35 = (v14 - 8);
    v17 = v41;
    do
    {
      v18 = v40;
      v19 = v42;
      v20 = v37;
      v37(v40, v16, v42);
      v21 = v14;
      v20(v17, v18, v19);
      v22 = v45;
      v23 = v38;
      sub_1A3F3CC54(&v45, v44);
      v34 = v23;
      sub_1A45D9CC0(v23, v17, v22, v10);
      (*v35)(v18, v19);
      v43 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1A3F3CC04((v24 > 1), v25 + 1, 1);
        v13 = v43;
      }

      *(v13 + 16) = v25 + 1;
      v8 = sub_1A3F3CD08(v10, v13 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25);
      v16 += v36;
      --v12;
      v14 = v21;
    }

    while (v12);
    v3 = v30;
    v26 = v34;
  }

  else
  {
    v26 = v2[1];
  }

  (*((*MEMORY[0x1E69E7D40] & *v26) + 0x280))(v8);
  v27 = v3[4];
  v28 = v3[5];
  v42 = v3[7];
  sub_1A3F3CBF0(v27, v28);
  sub_1A3C2E1A4(&unk_1EB129380, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, &unk_1A534EAF8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F3A74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A3C2E1A4(&qword_1EB12ECB0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2728]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_1A3F3A960(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A3C2E1A4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524DC04();
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  MEMORY[0x1A590A010](v5);
  if (v5)
  {
    v6 = *(sub_1A5243994() - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_1A3C2E1A4(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
    do
    {
      sub_1A524C4B4();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  sub_1A524ECB4();
  sub_1A3F3D084();
  sub_1A524C4B4();
  sub_1A524C794();
  v9 = *(v3 + 72);
  sub_1A524ECB4();
  if (v9)
  {
    v10 = v9;
    sub_1A524DC04();
  }
}

uint64_t sub_1A3F3AB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a4;
  v31 = a3;
  v28 = a1;
  v29 = a2;
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  result = sub_1A5243984();
  v40 = *(result + 16);
  if (v40)
  {
    v15 = 0;
    v37 = v5 + 16;
    v36 = *MEMORY[0x1E69C26D8];
    v39 = v7;
    v34 = (v5 + 32);
    v35 = v5 + 104;
    v16 = MEMORY[0x1E69E7CC0];
    v32 = v5 + 8;
    v33 = v10;
    v38 = result;
    while (v15 < *(result + 16))
    {
      v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v17 = *(v5 + 72);
      (*(v5 + 16))(v13, result + v41 + v17 * v15, v4);
      (*(v5 + 104))(v10, v36, v4);
      sub_1A3C2E1A4(&qword_1EB12ECB0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2728]);
      v18 = v13;
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v10, v4);
      if (v19)
      {
        v20(v18, v4);
        v13 = v18;
      }

      else
      {
        v21 = *v34;
        (*v34)(v39, v18, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v16;
        v13 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A3F3CBA0(0, *(v16 + 16) + 1, 1);
          v13 = v18;
          v16 = v43;
        }

        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1A3F3CBA0((v23 > 1), v24 + 1, 1);
          v16 = v43;
        }

        *(v16 + 16) = v24 + 1;
        v21((v16 + v41 + v24 * v17), v39, v4);
        v10 = v33;
      }

      ++v15;
      result = v38;
      if (v40 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v42 = *sub_1A4264C50();
    result = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
    v25 = v30;
    v26 = v29;
    *v30 = v28;
    v25[1] = v26;
    v25[2] = v16;
    *(v25 + 24) = 1;
    *(v25 + 2) = xmmword_1A5301350;
    *(v25 + 48) = 0;
    v25[7] = result;
    v25[8] = v27;
    v25[9] = v31;
  }

  return result;
}

uint64_t sub_1A3F3AEC8()
{
  sub_1A524EC94();
  sub_1A3F3A960(v2, v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A3F3AF0C(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A3F3A960(v3, v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3F3AF48(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1A3F3CF60(v8, v9) & 1;
}

uint64_t sub_1A3F3B07C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A3F3B150(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C2E1A4(&qword_1EB12ECD8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel, &unk_1A5308AB4);
  sub_1A52415F4();

  v4[7] = sub_1A3F3AFB4(v4);
  return sub_1A3F3B2B0;
}

void sub_1A3F3B330(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  KeyPath = swift_getKeyPath();
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x140);
  a1;
  v6(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F3B444(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F3B508(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

double sub_1A3F3B5B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = (v4 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    if (a2)
    {
      v9 = *v7 == a1 && v8 == a2;
      if (v9 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v7 = a1;
    v7[1] = a2;

    return result;
  }

  KeyPath = swift_getKeyPath();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x148))(v12);

  return result;
}

uint64_t sub_1A3F3B710@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A3F3B7E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C2E1A4(&qword_1EB12ECD8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel, &unk_1A5308AB4);
  sub_1A52415F4();

  v4[7] = sub_1A3F3B2BC(v4);
  return sub_1A3F3B944;
}

void *sub_1A3F3BA78()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();

  v1 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A3F3BB74(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x148))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

uint64_t sub_1A3F3BD00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3F3BD5C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_1A3F3BDC4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C2E1A4(&qword_1EB12ECD8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel, &unk_1A5308AB4);
  sub_1A52415F4();

  v4[7] = sub_1A3F3B950(v4);
  return sub_1A3F3BF24;
}

uint64_t sub_1A3F3C0D4()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

double sub_1A3F3C2DC(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x148))(KeyPath, sub_1A3F3D184, &v7, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C784D4(a1, a2);

  return result;
}

uint64_t sub_1A3F3C3B4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3F3C45C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x128);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t sub_1A3F3C52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1A3C66EE8(a2, a3);
  return sub_1A3C784D4(v6, v7);
}

uint64_t (*sub_1A3F3C5A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C2E1A4(&qword_1EB12ECD8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel, &unk_1A5308AB4);
  sub_1A52415F4();

  v4[7] = sub_1A3F3BF30(v4);
  return sub_1A3F3C708;
}

id sub_1A3F3C714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = objc_allocWithZone(v8);
  v14 = &v13[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__title];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__message];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  *&v13[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults] = 0;
  v17 = &v13[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__actionHandler];
  *v17 = 0;
  v17[1] = 0;
  sub_1A5241604();

  *v14 = a1;
  *(v14 + 1) = a2;

  *v15 = a3;
  *(v15 + 1) = a4;
  v18 = sub_1A524CFC4();

  *&v13[v16] = v18;
  v19 = *v17;
  v20 = v17[1];
  sub_1A3C66EE8(a6, a7);
  sub_1A3C784D4(v19, v20);
  *v17 = a6;
  v17[1] = a7;
  v25.receiver = v13;
  v25.super_class = v8;
  v21 = objc_msgSendSuper2(&v25, sel_init);
  sub_1A3C784D4(a6, a7);
  return v21;
}

id sub_1A3F3CAB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A3F3CBA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3F3CD6C(a1, a2, a3, *v3, &unk_1EB12ED90, MEMORY[0x1E69C2718], MEMORY[0x1E69C2718]);
  *v3 = result;
  return result;
}

void sub_1A3F3CBF0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void *sub_1A3F3CC04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3F3CD6C(a1, a2, a3, *v3, &qword_1EB12ED88, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
  *v3 = result;
  return result;
}

uint64_t sub_1A3F3CC54(uint64_t a1, uint64_t a2)
{
  sub_1A3F3D4DC(0, &unk_1EB12ECB8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F3CD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1A3F3CD6C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3F3D4DC(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A3F3CF60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  if (static LemonadePhotoLibraryContext.== infix(_:_:)(*a1, *a2))
  {
    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    if (sub_1A524DBF4() & 1) != 0 && (sub_1A3F3A74C(*(a1 + 16), *(a2 + 16)) & 1) != 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && (sub_1A457F668(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a2 + 32), *(a2 + 40), *(a2 + 48)) & 1) != 0 && (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) || (sub_1A524EAB4()))
    {
      v4 = *(a1 + 72);
      v5 = *(a2 + 72);
      if (v4)
      {
        if (v5)
        {
          type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel(0);
          v6 = v5;
          v7 = v4;
          v8 = sub_1A524DBF4();

          if (v8)
          {
            return 1;
          }
        }
      }

      else if (!v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1A3F3D084()
{
  result = qword_1EB12ECC8;
  if (!qword_1EB12ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ECC8);
  }

  return result;
}

void sub_1A3F3D118()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

id sub_1A3F3D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = &v7[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__title];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v7[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__message];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  *&v7[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults] = 0;
  v16 = &v7[OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__actionHandler];
  *v16 = 0;
  v16[1] = 0;
  sub_1A5241604();

  *v13 = a1;
  *(v13 + 1) = a2;

  *v14 = a3;
  *(v14 + 1) = a4;
  v17 = sub_1A524CFC4();

  *&v7[v15] = v17;
  v18 = *v16;
  v19 = v16[1];
  sub_1A3C66EE8(a6, a7);
  sub_1A3C784D4(v18, v19);
  *v16 = a6;
  v16[1] = a7;
  v22.receiver = v7;
  v22.super_class = type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel(0);
  return objc_msgSendSuper2(&v22, sel_init);
}

unint64_t sub_1A3F3D2CC()
{
  result = qword_1EB12ED00;
  if (!qword_1EB12ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ED00);
  }

  return result;
}

uint64_t sub_1A3F3D368(uint64_t a1)
{
  result = sub_1A3C2E1A4(&unk_1EB12ED10, type metadata accessor for LemonadeSearchCollectionResultsFeature, &unk_1A5308A7C);
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore38LemonadeSectionedFeedPresentationStyleO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1A3F3D424(uint64_t a1)
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

void sub_1A3F3D4DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void static SettingsUIProvider.Section(_:rows:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = a3();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = v7;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static SettingsUIProvider.Section(_:condition:rows:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = sub_1A3F3D67C(a3);
  v10 = a4();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v9;
  a5[3] = v10;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F3D67C(uint64_t a1)
{
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A3C56214(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A52F8E10;
  v2 = sub_1A3F3D860();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1A3D710E8();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  return sub_1A524D134();
}

void static SettingsUIProvider.Section(_:condition:rows:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = a4();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = v9;
  v10 = a3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t static SettingsUIProvider.Section(rows:)@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = a1();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = result;
  return result;
}

void static SettingsUIProvider.RestoreDefaultsSection.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = &unk_1F16E8660;
}

uint64_t sub_1A3F3D860()
{
  sub_1A3C52C70(0, &qword_1EB12EDC0, 0x1E696ABC8);

  v0 = sub_1A524D174();
  v1 = [v0 keyPath];

  v2 = sub_1A524C674();
  return v2;
}

void static SettingsUIProvider.ChoiceRow<A, B>(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a7;
  v33 = a6;
  v32 = a5;
  v37 = a2;
  v36 = a1;
  v34 = a3;
  v35 = a9;
  v31 = a11;
  v30 = a10;
  v15 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v29 - v18;
  sub_1A524E414();
  v48 = a4;
  v49 = a5;
  v50 = v15;
  v51 = a6;
  v52 = v38;
  v53 = a8;
  v20 = a8;
  v21 = v30;
  v54 = v30;
  v55 = a11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = sub_1A3F3DF4C(sub_1A3F3DE98, v47, AssociatedTypeWitness, TupleTypeMetadata2, MEMORY[0x1E69E73E0], AssociatedConformanceWitness, MEMORY[0x1E69E7410], v25);
  (*(v17 + 8))(v19, AssociatedTypeWitness);
  v56 = v26;
  v27 = sub_1A524CB74();
  WitnessTable = swift_getWitnessTable();
  sub_1A3F42160(&v56, MEMORY[0x1E69E6158], v15, v27, MEMORY[0x1E69E6168], WitnessTable);

  v39 = a4;
  v40 = v32;
  v41 = v15;
  v42 = v33;
  v43 = v38;
  v44 = v23;
  v45 = v21;
  v46 = v31;
  sub_1A3F3E36C(v36, v37, v35, 0);
}

uint64_t sub_1A3F3DE98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  *a2 = sub_1A524EA44();
  *(a2 + 1) = v7;
  return (*(*(v5 - 8) + 16))(&a2[v6], a1, v5);
}

uint64_t sub_1A3F3DF4C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A524D004();
  if (!v19)
  {
    return sub_1A524CAB4();
  }

  v41 = v19;
  v45 = sub_1A524E594();
  v32 = sub_1A524E5A4();
  sub_1A524E544();
  result = sub_1A524CFD4();
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
      v22 = sub_1A524D0C4();
      v23 = v13;
      v24 = v13;
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
      sub_1A524E584();
      result = sub_1A524D044();
      ++v21;
      v13 = v24;
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

void sub_1A3F3E36C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>, void *a10)
{
  v12 = sub_1A3F3D860();
  v14 = v13;
  v15 = sub_1A52468F4();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 24) = v14;
  *(a9 + 32) = v15;
  *(a9 + 40) = v16;
  *(a9 + 48) = v17;
  *(a9 + 56) = a10;
  *(a9 + 64) = 0;
  v18 = a10;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static SettingsUIProvider.ChoiceRow<A, B>(_:_:choiceValues:titleFormatter:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a10, uint64_t a11)
{
  v11 = *a3;
  v24 = a4;
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v20 = a10;
  v21 = a11;
  v22 = a5;
  v23 = a6;
  v12 = sub_1A524CB74();
  sub_1A3F426F4(0);
  v14 = v13;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1A3F3DF4C(sub_1A3F426C0, v19, v12, v14, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);
  v18 = sub_1A3F3E71C(v17);

  sub_1A3F4276C(v18);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F3E5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a4@<X5>, void *a6@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = v13(v10);
  a6[1] = v14;
  sub_1A524C9C4();
  v15 = (*(a4 + 8))(a2, a4);
  result = (*(v9 + 8))(v12, a2);
  a6[2] = v15;
  return result;
}

uint64_t sub_1A3F3E71C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3F418C0(0, v1, 0);
    sub_1A3F426F4(0);
    sub_1A3C5D744();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A3F3E8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524C9C4();
  v10 = (*(a3 + 8))(a2, a3);
  (*(v7 + 8))(v9, a2);
  result = sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  a4[3] = result;
  *a4 = v10;
  return result;
}

void sub_1A3F3EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x1E69E7CC0];
  swift_getAssociatedTypeWitness();
  sub_1A524ED44();
  if (!sub_1A524CAF4())
  {
LABEL_12:
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    v9 = sub_1A524CA14();

    [objc_opt_self() andPredicateWithSubpredicates_];

    return;
  }

  v4 = 4;
  while (1)
  {
    v5 = v4 - 4;
    v6 = sub_1A524CAD4();
    sub_1A524CA64();
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8 * v4);

    v8 = v4 - 3;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_1A3F3D67C(v7);
    MEMORY[0x1A5907D70]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    ++v4;
    if (v8 == sub_1A524CAF4())
    {
      goto LABEL_12;
    }
  }

  v7 = sub_1A524E474();
  v8 = v4 - 3;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_5;
  }

LABEL_13:
  __break(1u);
}

void static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8)
{
  v41 = a6;
  v45 = a1;
  v46 = a2;
  v11 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = sub_1A3F3D860();
  v42 = v22;
  v43 = v21;
  v47 = *(v12 + 16);
  v47(v20, a4, v11);
  v23 = sub_1A524E094();
  v44 = v12;
  if (v23 < 65)
  {
    v26 = sub_1A524E0A4();
    v40 = v14;
    v27 = a5;
    v28 = v26;
    v29 = sub_1A524E084();
    v24 = *(v12 + 8);
    v24(v20, v11);
    v30 = (v28 & 1) == 0;
    a5 = v27;
    v14 = v40;
    if (v30)
    {
      v25 = v29;
    }

    else
    {
      v25 = v29;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v24 = *(v12 + 8);
    v24(v20, v11);
    v25 = v48;
  }

  v47(v17, a5, v11);
  if (sub_1A524E094() <= 64)
  {
    v32 = sub_1A524E0A4();
    v33 = sub_1A524E084();
    v24(v17, v11);
    if (v32)
    {
      v31 = v33;
    }

    else
    {
      v31 = v33;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v24(v17, v11);
    v31 = v48;
  }

  v47(v14, v41, v11);
  if (sub_1A524E094() <= 64)
  {
    v35 = sub_1A524E0A4();
    v36 = sub_1A524E084();
    v24(v14, v11);
    if (v35)
    {
      v34 = v36;
    }

    else
    {
      v34 = v36;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v24(v14, v11);
    v34 = v48;
  }

  v37 = v46;
  *a7 = v45;
  *(a7 + 8) = v37;
  v38 = v42;
  *(a7 + 16) = v43;
  *(a7 + 24) = v38;
  *(a7 + 32) = v25;
  *(a7 + 40) = v31;
  *(a7 + 48) = v34;
  *(a7 + 56) = 0;
  *(a7 + 64) = 1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:condition:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v45 = a2;
  v46 = a7;
  v41 = a5;
  v42 = a6;
  v44 = a1;
  v12 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = sub_1A3F3D860();
  v23 = v22;
  v48 = *(v13 + 16);
  v48(v20, a4, v12);
  if (sub_1A524E094() < 65)
  {
    v25 = sub_1A524E0A4();
    v40 = v23;
    v26 = v21;
    v27 = v25;
    v28 = sub_1A524E084();
    v47 = *(v13 + 8);
    v47(v20, v12);
    v29 = (v27 & 1) == 0;
    v21 = v26;
    v23 = v40;
    if (v29)
    {
      v24 = v28;
    }

    else
    {
      v24 = v28;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v47 = *(v13 + 8);
    v47(v20, v12);
    v24 = v49;
  }

  v48(v17, v41, v12);
  if (sub_1A524E094() <= 64)
  {
    v31 = sub_1A524E0A4();
    v32 = sub_1A524E084();
    v47(v17, v12);
    if (v31)
    {
      v30 = v32;
    }

    else
    {
      v30 = v32;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v47(v17, v12);
    v30 = v49;
  }

  v33 = v43;
  v48(v43, v42, v12);
  if (sub_1A524E094() <= 64)
  {
    v35 = sub_1A524E0A4();
    v36 = sub_1A524E084();
    v47(v33, v12);
    if (v35)
    {
      v34 = v36;
    }

    else
    {
      v34 = v36;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v47(v33, v12);
    v34 = v49;
  }

  v37 = v45;
  *a8 = v44;
  *(a8 + 8) = v37;
  *(a8 + 16) = v21;
  *(a8 + 24) = v23;
  *(a8 + 32) = v24;
  *(a8 + 40) = v30;
  *(a8 + 48) = v34;
  v38 = v46;
  *(a8 + 56) = v46;
  *(a8 + 64) = 1;
  v39 = v38;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:conditions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a8;
  v51 = a2;
  v48 = a7;
  v49 = a1;
  v45 = a6;
  v14 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v24 = sub_1A3F3D860();
  v46 = v25;
  v47 = v24;
  v52 = *(v15 + 16);
  v52(v23, a4, v14);
  v26 = sub_1A524E094();
  v53 = v15;
  if (v26 < 65)
  {
    v29 = sub_1A524E0A4();
    v44 = v17;
    v30 = a5;
    v31 = v29;
    v32 = sub_1A524E084();
    v27 = *(v15 + 8);
    v27(v23, v14);
    v33 = (v31 & 1) == 0;
    a5 = v30;
    v17 = v44;
    if (v33)
    {
      v28 = v32;
    }

    else
    {
      v28 = v32;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v27 = *(v15 + 8);
    v27(v23, v14);
    v28 = v54;
  }

  v52(v20, a5, v14);
  if (sub_1A524E094() <= 64)
  {
    v35 = sub_1A524E0A4();
    v36 = sub_1A524E084();
    v27(v20, v14);
    if (v35)
    {
      v34 = v36;
    }

    else
    {
      v34 = v36;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v27(v20, v14);
    v34 = v54;
  }

  v52(v17, v45, v14);
  if (sub_1A524E094() <= 64)
  {
    v38 = sub_1A524E0A4();
    v39 = sub_1A524E084();
    v27(v17, v14);
    if (v38)
    {
      v37 = v39;
    }

    else
    {
      v37 = v39;
    }
  }

  else
  {
    sub_1A3F185D4();
    sub_1A3F42960();
    sub_1A524C3C4();
    v27(v17, v14);
    v37 = v54;
  }

  sub_1A3F3EBCC(v48, v50, a10);
  v40 = v51;
  *a9 = v49;
  *(a9 + 8) = v40;
  v41 = v46;
  *(a9 + 16) = v47;
  *(a9 + 24) = v41;
  *(a9 + 32) = v28;
  *(a9 + 40) = v34;
  *(a9 + 48) = v37;
  *(a9 + 56) = v42;
  *(a9 + 64) = 1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static SettingsUIProvider.ButtonRow(title:condition:action:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 64) = 3;
  v6 = a3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id Int.nsNumberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInteger_];
}

id sub_1A3F40368()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInteger_];
}

id Int8.nsNumberValue.getter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithChar_];
}

id sub_1A3F403F8()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithChar_];
}

id Int16.nsNumberValue.getter(__int16 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithShort_];
}

id sub_1A3F40488()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithShort_];
}

id Int32.nsNumberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInt_];
}

id sub_1A3F40518()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInt_];
}

id Int64.nsNumberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithLongLong_];
}

id sub_1A3F405A8()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithLongLong_];
}

id UInt.nsNumberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInteger_];
}

id sub_1A3F40638()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInteger_];
}

id UInt8.nsNumberValue.getter(unsigned __int8 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedChar_];
}

id sub_1A3F406C8()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedChar_];
}

id UInt16.nsNumberValue.getter(unsigned __int16 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedShort_];
}

id sub_1A3F40758()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedShort_];
}

id UInt32.nsNumberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInt_];
}

id sub_1A3F407E8()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInt_];
}

id UInt64.nsNumberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedLongLong_];
}

id sub_1A3F40878()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedLongLong_];
}

id sub_1A3F408C0(void *a1)
{
  v2 = v1;
  v6 = v2;
  swift_getObjectType();
  if (a1)
  {
    v4 = a1;
    result = [v6 condition_];
    if (result)
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();

      sub_1A3C57128(&v8, &v9);
      swift_dynamicCast();
      return v7;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return v6;
  }

  return result;
}

void SettingsUIModule.prototypeToolsModule.getter()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    sub_1A3D3E490(0, v1, 0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = sub_1A524C634();
  v3 = sub_1A524CA14();

  v4 = [objc_opt_self() moduleWithTitle:v2 contents:v3];

  if (!v4)
  {
    __break(1u);
  }
}

void sub_1A3F40E8C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 64);
  if (v10 <= 2)
  {
    v3 = v2[5];
    v4 = v2[6];
    v11 = v2[7];
    if (!*(v2 + 64))
    {
LABEL_12:

      sub_1A3F4167C(v9, v3, v4);

      v18 = sub_1A524C634();
      v19 = sub_1A524C634();
      v20 = [objc_opt_self() rowWithTitle:v18 valueKeyPath:v19];

      if (v20)
      {
        sub_1A3D3B558(v3);
        swift_getObjectType();
        v21 = sub_1A524CA14();
        v22 = sub_1A524CA14();
        v23 = [v20 possibleValues:v21 titles:v22];

        if (v23)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
          sub_1A3C57128(v38, &aBlock);
          swift_dynamicCast();
          v15 = v37;

          goto LABEL_15;
        }

        goto LABEL_25;
      }

      __break(1u);
      __break(1u);
      goto LABEL_22;
    }

    if (v10 != 1)
    {
      v26 = sub_1A524C634();
      v27 = sub_1A524C634();
      v28 = [objc_opt_self() rowWithTitle:v26 valueKeyPath:v27];

      if (v28)
      {
        sub_1A3F408C0(v9);

        return;
      }

      goto LABEL_23;
    }

    v12 = sub_1A524C634();
    v13 = sub_1A524C634();
    v7 = [objc_opt_self() rowWithTitle:v12 valueKeyPath:v13];

    if (!v7)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    swift_getObjectType();
    if (![v7 minValue:*&v9 maxValue:*&v3])
    {
LABEL_26:
      __break(1u);
      return;
    }

    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C57128(v38, &aBlock);
    swift_dynamicCast();
    v14 = v37;

    v15 = [v14 px:*&v4 increment:?];
    if (v15)
    {
LABEL_15:
      sub_1A3F408C0(v11);

      return;
    }

    __break(1u);
  }

  if (v10 == 3)
  {
    sub_1A3C52C70(0, &qword_1EB12EDB8, 0x1E69C65E8);
    swift_getObjCClassFromMetadata();
    sub_1A524C634();
    v24 = swift_allocObject();
    v24[2] = v6;
    v24[3] = v5;
    v24[4] = v7;
    v24[5] = v8;
    v24[6] = v9;
    v35 = sub_1A3F42CD4;
    v36 = v24;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_1A3F287DC;
    v34 = &block_descriptor_50;
    _Block_copy(&aBlock);
    v25 = v7;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v10 == 4)
  {
    v16 = sub_1A524C634();
    v17 = sub_1A524C634();
    v11 = [objc_opt_self() rowWithTitle:v16 childSettingsKeyPath:v17];

    if (!v11)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v29 = [objc_opt_self() actionWithSettingsKeyPath_];
    v30 = sub_1A524C634();
    v31 = [objc_opt_self() rowWithTitle:v30 action:v29];

    if (!v31)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }
}

double sub_1A3F41404(void *a1, uint64_t a2)
{
  sub_1A3C56214(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5 - 8];
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 72) = a1;
  sub_1A3F42D74(a2, v13);
  v10 = a1;
  sub_1A3D4D930(0, 0, v6, &unk_1A5309090, v8);

  return result;
}

uint64_t sub_1A3F41550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A3F41570, 0, 0);
}

uint64_t sub_1A3F41570()
{
  sub_1A524CC54();
  *(v0 + 32) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F41604, v2, v1);
}

void sub_1A3F41604()
{
  v1 = v0[3];

  if (v1)
  {
    (*(v0[2] + 24))(v0[3]);
    v2 = v0[1];

    v2();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A3F4167C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1A3F4200C(*(a3 + 16), 0);
  v8 = sub_1A3F42098(&v10, (v7 + 4), v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void *sub_1A3F418C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3F418E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A3F418E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3C56214(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C5D744();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A3F41A40(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  v5 = *(v4 + 16);
  if (v3 || v5 >= 0x10)
  {
    v7 = MEMORY[0x1A5901C30](v5);
    if (v3 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    v6 = sub_1A3F41AE0(v4, v8, 0, v3);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
}

uint64_t sub_1A3F41AE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1A5901C30](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1A5901C40](v8, a4);
    sub_1A3F41B60(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

void sub_1A3F41BB0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_1A524EC94();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }
}

uint64_t sub_1A3F41CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1A524EC94();
  sub_1A524C794();
  result = sub_1A524ECE4();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A5246834();
    result = sub_1A5246864();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1A524EAB4())
          {
            break;
          }

          sub_1A5246884();
          result = sub_1A5246864();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_1A3F41E2C(unint64_t a1, char a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && a1 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1A3C57108(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1A5901C30](a1);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1A5901C30](a1);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  v18 = MEMORY[0x1A5901C30](*(v7 + 16));
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1A3F41AE0(v7, v15, 0, v13);

    *v3 = v20;
    return;
  }

  if (!v10 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v21 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v21 = sub_1A52468B4();

  *v3 = v21;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_35:
  swift_beginAccess();
  if ((*(v21 + 24) & 0x3FLL) != v13)
  {
    *(v21 + 24) = *(v21 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }
}

void *sub_1A3F4200C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C4D548(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_1A3F42098(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_11:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v12 = a2;
      v13 = 0;
      v14 = a6 + 32;
      v15 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        result = sub_1A3C2F0BC(v14, v12);
        if (v15 == v13)
        {
          goto LABEL_11;
        }

        v12 += 32;
        ++v13;
        v14 += 32;
        if (v11 == v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A3F42160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  AssociatedConformanceWitness = a1;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - v18;
  v45 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v44 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v37 - v22;
  v23 = sub_1A5246814();
  v25 = v24;
  v26 = sub_1A524CAB4();
  v27 = MEMORY[0x1A59098A0](v26, a3);
  v52 = v23;
  v53 = v25;
  v54 = v27;
  v28 = AssociatedConformanceWitness;
  sub_1A524C934();
  sub_1A5246904();
  sub_1A52468E4();
  v45[2](v44, v28, a4);
  sub_1A524C914();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1A524DF64();
  v29 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 - 8);
  v31 = *(v30 + 48);
  v44 = (v30 + 48);
  v45 = v31;
  if ((v31)(v19, 1, TupleTypeMetadata2) == 1)
  {
LABEL_5:
    (*(v39 + 8))(v50, AssociatedTypeWitness);
    return v52;
  }

  else
  {
    v32 = *(v48 + 32);
    v42 = (v38 + 32);
    v43 = v32;
    v41 = (v38 + 16);
    v33 = (v38 + 8);
    v48 += 32;
    v34 = (v48 - 24);
    while (1)
    {
      v35 = *(v29 + 48);
      v43(v16, v19, a2);
      (*v42)(v12, &v19[v35], a3);
      sub_1A5246824();
      result = sub_1A5246804();
      if ((result & 1) == 0)
      {
        break;
      }

      (*v41)(v47, v12, a3);
      sub_1A524E5A4();
      sub_1A524E584();
      (*v33)(v12, a3);
      (*v34)(v16, a2);
      sub_1A524DF64();
      if ((v45)(v19, 1, v29) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1A3F426F4(uint64_t a1)
{
  if (!qword_1EB126F88)
  {
    sub_1A3C52C70(255, &qword_1EB126610, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126F88);
    }
  }
}

void sub_1A3F4276C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1A3F41E2C(v3, 0);
  v18 = v2;
  sub_1A3D3E490(0, v3, 0);
  if (v3)
  {
    sub_1A3F42DAC(a1 + 32, v16);
    v5 = v16[0];
    v4 = v16[1];
    sub_1A3C57128(&v17, &v15);
    v6 = v19;
    v7 = v20;
    v8 = *(v20 + 16);
    if (v19)
    {

      sub_1A3F41CE0(v5, v4, v7 + 32, v8, (v6 + 16), v6 + 32);
      v10 = v9;
      v12 = v11;

      if ((v10 & 1) == 0)
      {
LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v8)
      {
        v13 = (v20 + 40);
        do
        {
          v14 = *(v13 - 1) == v5 && *v13 == v4;
          if (v14 || (sub_1A524EAB4() & 1) != 0)
          {
            goto LABEL_16;
          }

          v13 += 2;
        }

        while (--v8);
      }

      v12 = 0;
    }

    sub_1A3F41748(v5, v4, v12);
  }
}

unint64_t sub_1A3F42960()
{
  result = qword_1EB12EDA0;
  if (!qword_1EB12EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EDA0);
  }

  return result;
}

uint64_t sub_1A3F429D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3F42A20(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1A3F42AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A3F42AF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore13SettingsUIRowO(uint64_t a1)
{
  if ((*(a1 + 64) & 7u) <= 4)
  {
    return *(a1 + 64) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1A3F42B7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 65))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 64);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A3F42BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3F42C1C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_1A3F42CDC()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3F41550(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_1A3F42DAC(uint64_t a1, uint64_t a2)
{
  sub_1A3C5D744();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F42EA8()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB930);
  __swift_project_value_buffer(v1, qword_1EB1EB930);
  return sub_1A5247734();
}

uint64_t sub_1A3F42F44(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_1A3F4303C()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB430);
  __swift_project_value_buffer(v1, qword_1EB1EB430);
  return sub_1A5247734();
}

uint64_t sub_1A3F430D8()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB418);
  __swift_project_value_buffer(v1, qword_1EB1EB418);
  return sub_1A5247734();
}

uint64_t sub_1A3F431C0()
{
  sub_1A3CBA0BC(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52475E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6982AC0];
  sub_1A3F46578(0, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v8, v5, v9);
  (*(v6 + 8))(v8, v5);
  v18 = v5;
  v19 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v14, v11, OpaqueTypeConformance2);
  v18 = v11;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = sub_1A5247554();
  (*(v2 + 8))(v4, v1);
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_1A3F434CC()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB948);
  __swift_project_value_buffer(v1, qword_1EB1EB948);
  return sub_1A5247734();
}

uint64_t sub_1A3F43608()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB960);
  __swift_project_value_buffer(v1, qword_1EB1EB960);
  return sub_1A5247734();
}

uint64_t sub_1A3F43748()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB400);
  __swift_project_value_buffer(v1, qword_1EB1EB400);
  return sub_1A5247734();
}

uint64_t sub_1A3F437E4()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB3E8);
  __swift_project_value_buffer(v1, qword_1EB1EB3E8);
  return sub_1A5247734();
}

uint64_t sub_1A3F43880@<X0>(uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a3;
  v36 = a2;
  v40 = a4;
  v37 = sub_1A5240A74();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB806C(0, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E6968D10]);
  v39 = v5;
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  sub_1A3CB90A8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB90EC(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB95E4(0);
  v19 = *(v18 - 8);
  v32 = v18;
  v33 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB0A78(&qword_1EB12B038, sub_1A3CB90A8, MEMORY[0x1E6968DA8]);
  sub_1A5240AB4();
  swift_getKeyPath();
  sub_1A5240A54();

  (*(v10 + 8))(v12, v9);
  swift_getKeyPath();
  v22 = MEMORY[0x1E6968D58];
  sub_1A3CB0A78(&qword_1EB12B068, sub_1A3CB90EC, MEMORY[0x1E6968D58]);
  sub_1A5240A54();

  (*(v15 + 8))(v17, v14);
  v42 = v36;
  sub_1A5240AA4();
  v23 = v37;
  v25 = v34;
  v24 = v35;
  (*(v35 + 104))(v34, *v38, v37);
  sub_1A3CB9680(0);
  v26 = v40;
  v40[3] = v27;
  v26[4] = sub_1A3CB9884();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1A3CB0A78(&qword_1EB12B050, sub_1A3CB95E4, v22);
  sub_1A3CB97A0(&qword_1EB12B078, MEMORY[0x1E6968D20]);
  v28 = v32;
  v29 = v39;
  sub_1A5240A64();
  (*(v24 + 8))(v25, v23);
  (*(v41 + 8))(v7, v29);
  return (*(v33 + 8))(v21, v28);
}

uint64_t sub_1A3F43DC4()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3F43E58()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3F43F48(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  sub_1A3CB4D08();
  v6 = v5;
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v6, a2);
  sub_1A3CB9044(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3F440D8()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB978);
  __swift_project_value_buffer(v1, qword_1EB1EB978);
  return sub_1A5247734();
}

uint64_t sub_1A3F44174()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB098);
  __swift_project_value_buffer(v1, qword_1EB1EB098);
  return sub_1A5247734();
}

uint64_t sub_1A3F44220@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v20 = a2;
  v19 = a1;
  v4 = MEMORY[0x1E69E6370];
  v5 = MEMORY[0x1E6968D10];
  sub_1A3CB806C(0, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = MEMORY[0x1E6968D98];
  sub_1A3CB806C(0, &qword_1EB12B010, v4, MEMORY[0x1E6968D98]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  sub_1A3CB7EA0(&qword_1EB12B018, &qword_1EB12B010, v11, MEMORY[0x1E6968DA8]);
  sub_1A5240AB4();
  v21 = v20;
  sub_1A5240AA4();
  sub_1A3CB7F40(0);
  a3[3] = v17;
  a3[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1A3CB7EA0(&qword_1EB12B090, &qword_1EB12B088, v5, MEMORY[0x1E6968D20]);
  sub_1A5240A44();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A3F444D8()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3F4456C()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3F44600()
{
  v0 = sub_1A5246944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A4A5AD54();
  (*(v1 + 16))(v3, v4, v0);
  return sub_1A524B5E4();
}

void sub_1A3F446F0()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A40593DC();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB194880[0] != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EB7A8);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F449B8()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB4D08();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5247704();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A40593DC();
  swift_beginAccess();
  v15 = *(v7 + 16);
  v25 = v6;
  v23 = v15;
  v15(v9, v14, v6);
  sub_1A5247724();
  v24 = sub_1A52474F4();
  v16 = *(v11 + 8);
  v16(v13, v10);
  if (qword_1EB1947A8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_1EB1EB430);
  (*(v2 + 16))(v4, v17, v1);
  sub_1A5247524();
  v18 = MEMORY[0x1E6982A40];
  sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40], MEMORY[0x1E6982A50]);
  sub_1A3CB0A78(&qword_1EB128BC0, v18, MEMORY[0x1E6982A48]);
  sub_1A5247714();
  sub_1A52474F4();
  v16(v13, v10);
  v19 = v10;
  if (qword_1EB194710[0] != -1)
  {
    swift_once();
  }

  v20 = v25;
  v21 = __swift_project_value_buffer(v25, qword_1EB1EB780);
  swift_beginAccess();
  v23(v9, v21, v20);
  sub_1A5247724();
  sub_1A52474F4();
  v16(v13, v19);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F44E48()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A40593DC();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB194998[0] != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EB7C0);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F45110()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A40593DC();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB194478 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EB700);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F453D8()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB4D08();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5247704();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A40593DC();
  swift_beginAccess();
  v15 = *(v7 + 16);
  v27 = v7 + 16;
  v28 = v6;
  v24 = v15;
  v15(v9, v14, v6);
  v26 = v9;
  sub_1A5247724();
  v25 = sub_1A52474F4();
  v16 = *(v11 + 8);
  v16(v13, v10);
  if (qword_1EB194680[0] != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_1EB1EB400);
  v18 = *(v2 + 16);
  v23[1] = v2 + 16;
  v18(v4, v17, v1);
  sub_1A5247524();
  v19 = MEMORY[0x1E6982A40];
  sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40], MEMORY[0x1E6982A50]);
  sub_1A3CB0A78(&qword_1EB128BC0, v19, MEMORY[0x1E6982A48]);
  sub_1A5247714();
  v23[2] = sub_1A52474F4();
  v16(v13, v10);
  if (qword_1EB1945E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v1, qword_1EB1EB3E8);
  v18(v4, v20, v1);
  sub_1A5247714();
  sub_1A52474F4();
  v16(v13, v10);
  if (qword_1EB1945F8[0] != -1)
  {
    swift_once();
  }

  v21 = v28;
  v22 = __swift_project_value_buffer(v28, qword_1EB1EB768);
  swift_beginAccess();
  v24(v26, v22, v21);
  sub_1A5247724();
  sub_1A52474F4();
  v16(v13, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F45944()
{
  sub_1A3CB8D98(0);
  v20 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v21 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB4D08();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5247704();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A40593DC();
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v7, v12, v4);
  sub_1A5247724();
  v19[1] = sub_1A52474F4();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (qword_1EB1942E0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1EB1EB080);
  swift_beginAccess();
  v13(v7, v15, v4);
  sub_1A5247724();
  sub_1A52474F4();
  v14(v11, v8);
  if (qword_1EB174D80 != -1)
  {
    swift_once();
  }

  v16 = v20;
  v17 = __swift_project_value_buffer(v20, qword_1EB1EB098);
  (*(v1 + 16))(v21, v17, v16);
  sub_1A5247524();
  v18 = MEMORY[0x1E6982A40];
  sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40], MEMORY[0x1E6982A50]);
  sub_1A3CB0A78(&qword_1EB128BC0, v18, MEMORY[0x1E6982A48]);
  sub_1A5247714();
  sub_1A52474F4();
  v14(v11, v8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F45DCC()
{
  sub_1A3CB99D8(0);
  v1 = *(v0 - 8);
  v41 = v0;
  v42 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CBA0BC(0);
  v38 = v3;
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F46578(0, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88]);
  v35 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = sub_1A52475E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E6982AC0];
  sub_1A3F46578(0, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
  v18 = v17;
  v34 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v15, v12, v16);
  (*(v13 + 8))(v15, v12);
  sub_1A5247594();
  v21 = MEMORY[0x1E6982A88];
  MEMORY[0x1A59028B0](v8, v5, MEMORY[0x1E6982A88]);
  (*(v6 + 8))(v8, v5);
  v43 = v12;
  v44 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v36;
  MEMORY[0x1A59028E0](v20, v18, OpaqueTypeConformance2);
  v43 = v18;
  v44 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v43 = v5;
  v44 = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v39;
  v27 = v23;
  v28 = v38;
  v29 = v35;
  sub_1A5247564();
  v43 = v28;
  v44 = v29;
  v45 = v24;
  v46 = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  v31 = sub_1A5247554();
  (*(v42 + 8))(v26, v30);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v11, v29);
  (*(v34 + 8))(v20, v18);
  return v31;
}

unint64_t sub_1A3F4630C()
{
  result = qword_1EB12B228;
  if (!qword_1EB12B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B228);
  }

  return result;
}

unint64_t sub_1A3F46364()
{
  result = qword_1EB12B218;
  if (!qword_1EB12B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B218);
  }

  return result;
}

unint64_t sub_1A3F463BC()
{
  result = qword_1EB12B238;
  if (!qword_1EB12B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B238);
  }

  return result;
}

unint64_t sub_1A3F46414()
{
  result = qword_1EB12B1F8;
  if (!qword_1EB12B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B1F8);
  }

  return result;
}

unint64_t sub_1A3F4646C()
{
  result = qword_1EB12B208;
  if (!qword_1EB12B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B208);
  }

  return result;
}

unint64_t sub_1A3F464C4()
{
  result = qword_1EB12AEF8;
  if (!qword_1EB12AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AEF8);
  }

  return result;
}

void sub_1A3F46578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3F46634()
{
  type metadata accessor for TimelineEngineFrame(0);
  v1 = sub_1A5240ED4();
  (*(**(v0 + 8) + 264))(v1);
}

double sub_1A3F466C0()
{
  type metadata accessor for TimelineEngineFrame(0);
  v1 = sub_1A5240ED4();
  v3 = v2 - (*(*v0[1] + 264))(v1);
  if (v3 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4 / (*(**v0 + 720))();
}

void sub_1A3F4678C()
{
  v1 = (*(**v0 + 432))();
  type metadata accessor for TimelineEngineFrame(0);
  v2 = sub_1A5240ED4();
  v4 = v3 - (*(*v0[1] + 264))(v2);
  if (v4 <= 0.0)
  {
    v4 = 0.0;
  }

  v5 = v4 / v1;
  if (v5 <= 0.0)
  {
    v5 = 0.0;
  }

  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  if (v5 >= 0.5)
  {
    pow(2.0 - (v5 + v5), 4.0);
  }

  else
  {
    pow(v5, 4.0);
  }
}

double sub_1A3F468A4()
{
  type metadata accessor for TimelineEngineFrame(0);
  v1 = sub_1A5240ED4();
  v3 = v2;
  v41 = (*(*v0[1] + 264))(v1);
  v4 = *v0;
  v40 = (*(**v0 + 720))();
  v5 = *(*v4 + 528);
  v38 = v5();
  v39 = v5();
  v6 = v5();
  v7 = v5();
  v8 = *(*v4 + 576);
  v9 = v6 / (v7 + v8());
  if (v9 >= 0.5)
  {
    v10 = pow(2.0 - (v9 + v9), 0.25) * -0.5 + 1.0;
  }

  else
  {
    v10 = pow(v9 * 0.125, 0.25);
  }

  v37 = v10;
  sub_1A3F4678C();
  v12 = v11;
  v13 = v8();
  v14 = v5();
  v15 = v5();
  v16 = v14 / (v15 + v8());
  if (v16 >= 0.5)
  {
    v17 = pow(2.0 - (v16 + v16), 0.25) * -0.5 + 1.0;
  }

  else
  {
    v17 = pow(v16 * 0.125, 0.25);
  }

  v18 = 1.0 - v17;
  v19 = 1.0 - v17 <= 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v36 = v3;
    sub_1A3F4678C();
    v22 = v21;
    v23 = v5();
    v24 = v5();
    v25 = v23 / (v24 + v8());
    if (v25 >= 0.5)
    {
      v26 = pow(2.0 - (v25 + v25), 0.25) * -0.5 + 1.0;
    }

    else
    {
      v26 = pow(v25 * 0.125, 0.25);
    }

    v27 = (v22 - v26) / v18;
    v28 = 1.0;
    if (v27 <= 1.0)
    {
      v28 = v27;
    }

    if (v27 > 0.0)
    {
      v20 = v28;
    }

    else
    {
      v20 = 0.0;
    }

    v3 = v36;
  }

  v29 = v3 - v41;
  if (v3 - v41 <= 0.0)
  {
    v29 = 0.0;
  }

  v30 = v29 / v40 + v38;
  if (v12 / v37 <= 1.0)
  {
    v31 = v12 / v37;
  }

  else
  {
    v31 = 1.0;
  }

  v32 = 1.0 - v31;
  if (v12 / v37 > 0.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 1.0;
  }

  v34 = v30 - v39 * v33;
  if (v34 <= 0.0)
  {
    v34 = 0.0;
  }

  return v34 + v13 * v20;
}

uint64_t sub_1A3F46C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for TimelineEngineFrame(0) + 24);
  v7 = sub_1A5241144();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

void sub_1A3F46CE8()
{
  v1 = (v0 + *(type metadata accessor for TimelineEngineCellFrame(0) + 20));
  type metadata accessor for TimelineEngineFrame(0);
  v2 = sub_1A5240ED4();
  (*(*v1[1] + 264))(v2);
  v3 = *v1;
  (*(**v1 + 720))();
  type metadata accessor for TimelineEngineCell(0);
  (*(**v0 + 528))();
  v4 = *(*v3 + 528);
  v5 = v4();
  v6 = v4();
  v7 = v5 / (v6 + (*(*v3 + 576))());
  if (v7 >= 0.5)
  {
    pow(2.0 - (v7 + v7), 0.25);
  }

  else
  {
    pow(v7 * 0.125, 0.25);
  }

  sub_1A3F4678C();
}

double sub_1A3F46F64()
{
  sub_1A3F46CE8();
  v2 = v1;
  v3 = (*(**v0 + 576))();
  v4 = *(v0 + *(type metadata accessor for TimelineEngineCellFrame(0) + 20));
  v5 = *(*v4 + 528);
  v6 = v5();
  v7 = v5();
  v8 = *(*v4 + 576);
  v9 = v6 / (v7 + v8());
  if (v9 >= 0.5)
  {
    v10 = pow(2.0 - (v9 + v9), 0.25) * -0.5 + 1.0;
  }

  else
  {
    v10 = pow(v9 * 0.125, 0.25);
  }

  v11 = 1.0 - v10;
  v12 = 0.0;
  if (1.0 - v10 > 0.0)
  {
    sub_1A3F4678C();
    v14 = v13;
    v15 = v5();
    v16 = v5();
    v17 = v15 / (v16 + v8());
    if (v17 >= 0.5)
    {
      v18 = pow(2.0 - (v17 + v17), 0.25) * -0.5 + 1.0;
    }

    else
    {
      v18 = pow(v17 * 0.125, 0.25);
    }

    v19 = (v14 - v18) / v11;
    if (v19 > 0.0)
    {
      if (v19 <= 1.0)
      {
        v12 = v19;
      }

      else
      {
        v12 = 1.0;
      }
    }
  }

  return floor(v2 + v3 * v12);
}

double sub_1A3F471A0()
{
  v1 = sub_1A3F46F64();
  v2 = v0 + *(type metadata accessor for TimelineEngineCellFrame(0) + 24);
  return v1 + 1.0 - *(v2 + *(type metadata accessor for TimelineEngineCell(0) + 40));
}

void sub_1A3F471F8()
{
  sub_1A3F46CE8();
  v1 = *v0;
  (*(**v0 + 576))();
  v2 = *(v0 + *(type metadata accessor for TimelineEngineCellFrame(0) + 20));
  v3 = *(*v2 + 528);
  v4 = v3();
  v5 = v3();
  v6 = *(*v2 + 576);
  v7 = v4 / (v5 + v6());
  if (v7 >= 0.5)
  {
    v8 = pow(2.0 - (v7 + v7), 0.25) * -0.5 + 1.0;
  }

  else
  {
    v8 = pow(v7 * 0.125, 0.25);
  }

  if (1.0 - v8 > 0.0)
  {
    sub_1A3F4678C();
    v9 = v3();
    v10 = v3();
    v11 = v9 / (v10 + v6());
    if (v11 >= 0.5)
    {
      pow(2.0 - (v11 + v11), 0.25);
    }

    else
    {
      pow(v11 * 0.125, 0.25);
    }
  }

  (*(*v1 + 768))();
}

BOOL sub_1A3F474D0()
{
  v1 = sub_1A3F46F64();
  v2 = type metadata accessor for TimelineEngineCellFrame(0);
  v3 = v0 + *(v2 + 24);
  v4 = *(v3 + *(type metadata accessor for TimelineEngineCell(0) + 40));
  v5 = COERCE_DOUBLE((*(**(v0 + *(v2 + 20) + 8) + 312))());
  if (v6)
  {
    v5 = INFINITY;
  }

  return v5 < v1 + 1.0 - v4;
}

uint64_t sub_1A3F47594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for TimelineEngineCellFrame(0);
  sub_1A3F4761C(a2, a4 + *(v7 + 20), type metadata accessor for TimelineEngineFrame);
  return sub_1A3F4761C(a3, a4 + *(v7 + 24), type metadata accessor for TimelineEngineCell);
}

uint64_t sub_1A3F4761C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F4772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = type metadata accessor for TimelineEngineSpec(319);
  if (v8 <= 0x3F)
  {
    result = a4(319);
    if (v9 <= 0x3F)
    {
      result = a5(319);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1A3F477E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhototypeRepository(a1, a2);
  v2 = swift_allocObject();
  v3 = PXSoftLinkedProtoLoadPhototypes();
  if (!v3 || (v4 = v3, v5 = sub_1A524CA34(), v4, v6 = sub_1A3F479D8(v5), , !v6))
  {
    if (qword_1EB15B420 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB15B428);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "Failed to load", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + 16) = v6;
  qword_1EB19B878 = v2;
}

uint64_t *sub_1A3F47924()
{
  if (qword_1EB19B870 != -1)
  {
    swift_once();
  }

  return &qword_1EB19B878;
}

double static PhototypeRepository.shared.getter()
{
  if (qword_1EB19B870 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1A3F479D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A3F47C10(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1A3C2F0BC(i, v10);
      sub_1A3F47C30();
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1A3C34460(v8, v11);
      sub_1A3C34460(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A3F47C10((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1A3C34460(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1A3F47C94(v8);
    return 0;
  }

  return v3;
}

uint64_t PhototypeRepository.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1A3F47BAC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B428);
  __swift_project_value_buffer(v0, qword_1EB15B428);
  sub_1A5246EF4();
}

void *sub_1A3F47C10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3F47D0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1A3F47C30()
{
  result = qword_1EB124FD8;
  if (!qword_1EB124FD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB124FD8);
  }

  return result;
}

uint64_t sub_1A3F47C94(uint64_t a1)
{
  sub_1A3F47E58(0, &qword_1EB12EDC8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1A3F47D0C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3F47E58(0, &qword_1EB12EDD0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3F47C30();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A3F47E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3F47C30();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3F47EB8(void *a1)
{
  v2 = sub_1A5246B54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-1] - v8;
  if ([a1 mediaType] == 1 && (v10 = sub_1A5241C44(), v16[3] = v10, v16[4] = sub_1A3F4B044(&qword_1EB1292F0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]), boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16), (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD58], v10), LOBYTE(v10) = sub_1A5241704(), __swift_destroy_boxed_opaque_existential_0(v16), (v10 & 1) != 0))
  {
    sub_1A5246B94();
    (*(v3 + 104))(v5, *MEMORY[0x1E69C1B88], v2);
    sub_1A3F4B044(&qword_1EB12EDD8, MEMORY[0x1E69C1B90], MEMORY[0x1E69C1B98]);
    v12 = sub_1A524C534();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v9, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

id sub_1A3F480F4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView] = 0;
  *&v3[OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___animator] = 0;
  *&v3[OBJC_IVAR___PXOneUpAlchemistViewController_button] = 0;
  *&v3[OBJC_IVAR___PXOneUpAlchemistViewController_asset] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1A3F481F0()
{
  v1 = OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView;
  v2 = *(v0 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_1A5246A14()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1A3F48274(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView);
  *(v1 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView) = a1;
}

void (*sub_1A3F48288(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A3F481F0();
  return sub_1A3F482D0;
}

void sub_1A3F482D0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView);
  *(v1 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView) = v2;
}

uint64_t sub_1A3F482E8()
{
  v1 = sub_1A5246A24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___animator;
  if (*(v0 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___animator))
  {
    v6 = *(v0 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___animator);
  }

  else
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);

    sub_1A524D474();
    (*(v2 + 104))(v4, *MEMORY[0x1E69C1B28], v1);
    sub_1A5246A74();
    swift_allocObject();
    v6 = sub_1A5246A64();

    *(v0 + v5) = v6;
  }

  return v6;
}

double sub_1A3F4849C(uint64_t a1, __n128 a2, __n128 a3)
{
  v3 = sub_1A5246B74();
  MEMORY[0x1EEE9AC00](v3 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x78))(Strong, v5, v6, v7);
    sub_1A52469E4();

    sub_1A5246B64();
    sub_1A5246B84();
  }

  return result;
}

double sub_1A3F485A4(uint64_t a1)
{
  *(v1 + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___animator) = a1;

  return result;
}

double (*sub_1A3F485BC(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A3F482E8();
  return sub_1A3F48604;
}

double sub_1A3F48604(uint64_t *a1)
{
  *(a1[1] + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___animator) = *a1;

  return result;
}

void *sub_1A3F4861C()
{
  v1 = OBJC_IVAR___PXOneUpAlchemistViewController_button;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A3F48668(void *a1)
{
  v3 = OBJC_IVAR___PXOneUpAlchemistViewController_button;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v1[v3];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  v8 = v6;
  v9 = [v1 viewIfLoaded];
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    [v11 sizeToFit];
    [v11 frame];
    [v11 setFrame_];

    [v10 addSubview_];
    v8 = v10;
  }

LABEL_8:
}

void (*sub_1A3F4877C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PXOneUpAlchemistViewController_button;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A3F48818;
}

void sub_1A3F48818(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1A3F48668(v3);
  }

  else
  {
    sub_1A3F48668(*(*a1 + 24));
  }

  free(v2);
}

void sub_1A3F48884()
{
  sub_1A3C56278(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v30 - v2;
  v6 = type metadata accessor for OneUpAlchemistViewController(v4, v5);
  v30.receiver = v0;
  v30.super_class = v6;
  v7 = objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v9 = (v8)(v7);
  [v9 setHidden_];

  v10 = v8();
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v10 setFrame_];
    v21 = v8();
    [v21 setAutoresizingMask_];

    v22 = [v0 view];
    if (v22)
    {
      v23 = v22;
      v24 = v8();
      [v23 addSubview_];

      v25 = sub_1A524CCB4();
      (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
      sub_1A524CC54();
      v26 = v0;
      v27 = sub_1A524CC44();
      v28 = swift_allocObject();
      v29 = MEMORY[0x1E69E85E0];
      v28[2] = v27;
      v28[3] = v29;
      v28[4] = v26;
      sub_1A3D4D930(0, 0, v3, &unk_1A53095C8, v28);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A3F48B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A3C56278(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4[3] = swift_task_alloc();
  v5 = sub_1A52450C4();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_1A5245104();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_1A524CC54();
  v4[11] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v4[12] = v8;
  v4[13] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A3F48CEC, v8, v7);
}

uint64_t sub_1A3F48CEC()
{
  v1 = v0[2];
  (*(v0[5] + 104))(v0[6], *MEMORY[0x1E69C13D8], v0[4]);
  sub_1A52450E4();
  v2 = *(v1 + OBJC_IVAR___PXOneUpAlchemistViewController_asset);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1A3F48DE4;

  return MEMORY[0x1EEE2A288](v2, 0, 0, 0);
}

uint64_t sub_1A3F48DE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A3F4908C;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A3F48F0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A3F48F0C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1A5246BC4();
  swift_allocObject();
  v4 = sub_1A5246BA4();
  (*(v2 + 8))(v1, v3);
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v6;
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v4;
  sub_1A3D4D930(0, 0, v5, &unk_1A5309610, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A3F4908C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);
  if (qword_1EB1653A0 != -1)
  {
    swift_once();
  }

  v4 = v0[15];
  v5 = sub_1A5246F24();
  __swift_project_value_buffer(v5, qword_1EB1EB990);
  v6 = v4;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D244();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "Error alchemizing: %@", v11, 0xCu);
    sub_1A3CB65E4(v12);
    MEMORY[0x1A590EEC0](v12, -1, -1);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[2];
  v15 = v0[3];
  v17 = sub_1A524CCB4();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = v16;
  v19 = sub_1A524CC44();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = 0;
  sub_1A3D4D930(0, 0, v15, &unk_1A5309610, v20);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A3F4930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A524CC54();
  v5[4] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F493A4, v7, v6);
}

uint64_t sub_1A3F493A4()
{
  v1 = *(v0 + 24);

  sub_1A3F49548(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A3F49498(void *a1, double a2, uint64_t a3, uint64_t a4, const char **a5, void (*a6)(uint64_t, uint64_t))
{
  v14.receiver = a1;
  v14.super_class = type metadata accessor for OneUpAlchemistViewController(a1, a3);
  v9 = *a5;
  v10 = v14.receiver;
  v11 = objc_msgSendSuper2(&v14, v9, a4);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x90))(v11);
  a6(v12, v13);
}

void sub_1A3F49548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52450C4();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v46 - v8;
  sub_1A3C56278(0, &qword_1EB126580, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v17 = v16(v12);

  sub_1A5246A04();

  v60 = v2;
  v18 = (v16)();
  [v18 setHidden_];

  if (a1)
  {
    v19 = v5;
    v20 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    v21 = sub_1A52450B4();
    v22 = *(v21 + 16);
    if (v22)
    {
      v47 = v14;
      v48 = v20;
      v64 = MEMORY[0x1E69E7CC0];
      sub_1A524E554();
      v23 = sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
      v57 = *(v61 + 16);
      v58 = v23;
      v24 = *(v61 + 80);
      v46 = v21;
      v25 = v21 + ((v24 + 32) & ~v24);
      v55 = *(v61 + 72);
      v56 = v24;
      v54 = (v24 + 24) & ~v24;
      v52 = (v61 + 8);
      v53 = (v61 + 32);
      v50 = v6;
      v51 = v19;
      v26 = v59;
      v27 = v54;
      do
      {
        v28 = v57;
        v57(v26, v25, v4);
        v62 = 0;
        v63 = 0xE000000000000000;
        sub_1A524E624();
        v61 = v63;
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = v4;
        v31 = v50;
        v28(v50, v26, v30);
        v32 = swift_allocObject();
        *(v32 + 16) = v29;
        v33 = v31;
        v4 = v30;
        (*v53)(v32 + v27, v33, v30);

        v26 = v59;
        sub_1A524DC64();
        (*v52)(v26, v30);

        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
        v25 += v55;
        --v22;
      }

      while (v22);

      v34 = v64;
      v14 = v47;
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    sub_1A524DD44();
    v36 = sub_1A524DE34();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v14, 0, 1, v36);
    sub_1A524DE64();
    v38 = v49;
    sub_1A524DE54();
    if ((*(v37 + 48))(v38, 1, v36))
    {
      v39 = MEMORY[0x1E69DC598];
      sub_1A3F4AF98(v38, v14, &qword_1EB126580, MEMORY[0x1E69DC598]);
      sub_1A524DE64();
      sub_1A3F4AF28(v38, &qword_1EB126580, v39);
    }

    else
    {
      v40 = objc_opt_self();
      v41 = sub_1A524C634();
      v42 = [v40 __systemImageNamedSwift_];

      sub_1A524DDD4();
      sub_1A524DE64();
    }

    v43 = objc_opt_self();
    v44 = sub_1A524C634();
    v45 = [v43 __systemImageNamedSwift_];

    if (!(v34 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB126C10, 0x1E69DCC78);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v35 = *((*v15 & *v60) + 0xB0);

  v35(0);
}

void *sub_1A3F49D18(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  sub_1A3C56278(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1A52450C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5245104();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    (*(v6 + 16))(v8, v22, v5);
    sub_1A52450E4();
    v18 = sub_1A524CCB4();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    (*(v10 + 16))(v12, v15, v9);
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    (*(v10 + 32))(v20 + v19, v12, v9);
    *(v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v21 = v17;
    sub_1A3DCD53C(0, 0, v4, &unk_1A53095F8, v20);

    sub_1A3F4AF28(v4, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_1A3F4A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_1A524BEE4();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = sub_1A524BF64();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3F4A184, 0, 0);
}

uint64_t sub_1A3F4A184()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR___PXOneUpAlchemistViewController_asset);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_1A3F4A238;

  return MEMORY[0x1EEE2A288](v1, 0, 0, 0);
}

uint64_t sub_1A3F4A238(void *a1)
{
  *(*v2 + 200) = v1;

  if (v1)
  {
    v4 = sub_1A3F4A5A4;
  }

  else
  {

    v4 = sub_1A3F4A354;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A3F4A354()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v13 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v12 = sub_1A524D474();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[12] = sub_1A3F4B08C;
  v0[13] = v7;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1A3C2E0D0;
  v0[11] = &block_descriptor_32;
  v8 = _Block_copy(v0 + 8);
  v9 = v6;
  sub_1A524BF14();
  v0[15] = MEMORY[0x1E69E7CC0];
  sub_1A3F4B044(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C56278(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v1, v3, v8);
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A3F4A5A4()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v13 = sub_1A524D474();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v0[6] = sub_1A3F4B018;
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_51;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  v10 = v1;
  sub_1A524BF14();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1A3F4B044(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C56278(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v2, v3, v8);
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

void sub_1A3F4A808(char a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = sub_1A524C634();
    v5 = sub_1A524C634();
    v24 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

    v6 = sub_1A524C634();
    v7 = [objc_opt_self() actionWithTitle:v6 style:0 handler:0];

    [v24 addAction_];
    [v3 presentViewController:v24 animated:1 completion:0];
  }

  else
  {
    if (qword_1EB1653A0 != -1)
    {
      swift_once();
    }

    v9 = sub_1A5246F24();
    __swift_project_value_buffer(v9, qword_1EB1EB990);
    v10 = a2;
    v11 = sub_1A5246F04();
    v12 = sub_1A524D244();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_1A3C1C000, v11, v12, "Error alchemizing: %@", v13, 0xCu);
      sub_1A3CB65E4(v14);
      MEMORY[0x1A590EEC0](v14, -1, -1);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    v18 = a2;
    sub_1A3C56278(0, &qword_1EB139220, sub_1A3DBD9A0, MEMORY[0x1E69E6720]);
    sub_1A524C714();
    v19 = sub_1A524C634();
    v20 = sub_1A524C634();

    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = sub_1A524C634();
    v23 = [objc_opt_self() actionWithTitle:v22 style:0 handler:0];

    [v21 addAction_];
    [v3 presentViewController:v21 animated:1 completion:0];
  }
}

void sub_1A3F4ABC4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB990);
  __swift_project_value_buffer(v0, qword_1EB1EB990);
  sub_1A5246EF4();
}

id sub_1A3F4AC64(double a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for OneUpAlchemistViewController(a2, a3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A3F4AD30()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3F48B3C(v3, v4, v5, v2);
}

void *sub_1A3F4ADC4()
{
  v1 = *(sub_1A52450C4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1A3F49D18(v2, v3);
}

uint64_t sub_1A3F4AE28()
{
  v2 = *(sub_1A5245104() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A3F4A068(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_1A3F4AF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56278(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3F4AF98(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56278(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3F4B044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3F4B08C()
{
  v1 = *(v0 + 16);
  v2 = sub_1A524C634();
  v3 = sub_1A524C634();
  v6 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v4 = sub_1A524C634();
  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:0];

  [v6 addAction_];
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_1A3F4B1C4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3F4930C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A3F4B264@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A3F4B338()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

void sub_1A3F4B3A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel);
  if (a2)
  {
    v4 = v3;
    v6 = sub_1A524C634();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setText_];
}

void (*sub_1A3F4B440(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel;
  a1[2] = v1;
  a1[3] = v3;
  v4 = [*(v1 + v3) text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_1A3F4B4D0;
}

void sub_1A3F4B4D0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1[2] + a1[3]);
  v8 = v3;
  if (a2)
  {
    if (v2)
    {
      v4 = v3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v7 = v3;
    v6 = 0;
    [v8 setText_];
  }

  else
  {
    v5 = v3;
    if (v2)
    {
      v6 = sub_1A524C634();
    }

    else
    {
      v6 = 0;
    }

    [v8 setText_];
  }
}

uint64_t sub_1A3F4B5BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3F4B618(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

id sub_1A3F4B680()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel) font];

  return v1;
}

void sub_1A3F4B6C0(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel) setFont_];
}

void (*sub_1A3F4B710(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_1A3F4B774;
}

void sub_1A3F4B774(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont_];
}

id ResizableLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ResizableLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_oldLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_newLabel;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v4[v11] = v12;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ResizableLabel(v12, v13);
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setClipsToBounds_];
  v15 = *&v14[OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_oldLabel];
  [v15 setAnchorPoint_];
  [v15 setAlpha_];
  [v14 addSubview_];

  v16 = *&v14[OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_newLabel];
  [v16 setAnchorPoint_];
  [v16 setAlpha_];
  [v14 addSubview_];

  return v14;
}

id ResizableLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1A3F4BBA0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_newLabel;
  v12 = *&v6[OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_newLabel];
  v13 = *&v6[OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_oldLabel];
  *&v6[OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_oldLabel] = v12;
  *&v6[v11] = v13;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = v13;
  v15[4] = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1A3F4C100;
  *(v16 + 24) = v15;
  v34 = sub_1A3C7146C;
  v35 = v16;
  v30 = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1A3C71444;
  v33 = &block_descriptor_52;
  v17 = _Block_copy(&v30);
  v18 = v12;
  v19 = v13;
  v20 = v18;
  v21 = v19;
  v22 = v6;

  [v14 performWithoutAnimation_];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v24 = 0.0;
    if ([v14 _isInAnimationBlockWithAnimationsEnabled])
    {
      [v14 _currentAnimationDuration];
      v24 = v25;
    }

    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = a2;
    *(v26 + 32) = a3;
    *(v26 + 40) = a4;
    *(v26 + 48) = v20;
    *(v26 + 56) = v21;
    v34 = sub_1A3F4C3A4;
    v35 = v26;
    v30 = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1A3C2E0D0;
    v33 = &block_descriptor_18_0;
    v27 = _Block_copy(&v30);
    v28 = v20;
    v29 = v21;

    [v14 animateWithDuration:v27 animations:v24];
    _Block_release(v27);
  }
}

id ResizableLabel.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ResizableLabel(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _s12PhotosUICore14ResizableLabelC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_oldLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_newLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A3F4C100()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  [v1 frame];
  v3 = *(v2 + OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel);
  v4 = [v3 text];
  [v1 setText_];

  v5 = [v3 font];
  [v1 setFont_];

  [v1 sizeThatFits_];
  [v1 setBounds_];
  [v1 bounds];
  PXAffineTransformMakeFromRects();
}

void sub_1A3F4C3A4()
{
  v1 = *(v0 + 48);
  [v1 setAlpha_];
  [v1 sizeThatFits_];
  [v1 setBounds_];
  [v1 bounds];
  PXAffineTransformMakeFromRects();
}

uint64_t StoryViewMenuActionGroup.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

unint64_t sub_1A3F4C5A4()
{
  result = qword_1EB12EE18;
  if (!qword_1EB12EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EE18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadePhotosSetting.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadePhotosSetting.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A3F4C748(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryPromptEntryViewMenuBuilder_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v2 + v3, v4, v5);
  *(v2 + 16) = a1;
  return v2;
}

id sub_1A3F4C7D8(uint64_t a1, void (*a2)(void, void, void))
{
  v110 = a2;
  sub_1A3F5363C(0, &qword_1EB124A30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69DBEB0]);
  v4 = v3;
  v118 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v109 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v97 - v7;
  v100 = sub_1A5244FE4();
  v108 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v106 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v97 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1A3F5330C(0, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v97 - v13;
  v105 = sub_1A5244DF4();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5244CC4();
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v97 - v18;
  v19 = sub_1A52444C4();
  v20 = *(v19 - 8);
  v114 = v19;
  v115 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v97 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v97 - v25;
  v26 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3F5330C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v11);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v97 - v30;
  v32 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247004();
  v36 = swift_dynamicCast();
  v37 = *(v33 + 56);
  if (v36)
  {
    v37(v31, 0, 1, v32);
    sub_1A3F52D44(v31, v35, type metadata accessor for GenerativeStoryAmbiguityData);
    sub_1A3F51C64(v35, v28, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    v38 = v35;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = *v28;
      v40 = v28[1];
      v41 = objc_opt_self();
      v42 = swift_allocObject();
      v42[2] = v39;
      v42[3] = v40;
      v43 = v110;
      v42[4] = v119;
      v42[5] = v43;
      v126 = sub_1A3F5179C;
      v127 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v123 = 1107296256;
      v124 = sub_1A3D7692C;
      v125 = &block_descriptor_3_0;
      v44 = _Block_copy(&aBlock);

      v45 = v43;

      v46 = [v41 menuWithDeferredConfiguration_];
      _Block_release(v44);
LABEL_20:
      v84 = v38;
LABEL_21:
      sub_1A3F51914(v84, type metadata accessor for GenerativeStoryAmbiguityData);
      return v46;
    }

    v56 = v115;
    v57 = *(v115 + 32);
    v58 = v116;
    v59 = v114;
    v57();
    v60 = sub_1A5244454();
    v61 = *(v60 + 16);
    v97 = v38;
    if (!v61)
    {

      v71 = v101;
      (*(v56 + 16))(v101, v58, v59);
      v72 = sub_1A5246F04();
      v73 = sub_1A524D244();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v74 = 136642819;
        sub_1A3F51B28(&qword_1EB12EE30, MEMORY[0x1E69C0EC8], MEMORY[0x1E69C0ED0]);
        v75 = sub_1A524EA44();
        v76 = v56;
        v78 = v77;
        (*(v76 + 8))(v71, v59);
        sub_1A3C2EF94(v75, v78, &aBlock);
      }

      v81 = *(v56 + 8);
      v81(v71, v59);
      v82 = objc_opt_self();
      v126 = PXDisplayCollectionDetailedCountsMake;
      v127 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v123 = 1107296256;
      v124 = sub_1A3D7692C;
      v125 = &block_descriptor_15_0;
      v83 = _Block_copy(&aBlock);
      v46 = [v82 menuWithDeferredConfiguration_];
      _Block_release(v83);
      v81(v116, v59);
      v84 = v97;
      goto LABEL_21;
    }

    v62 = v111;
    v63 = *(v112 + 16);
    v117 = *(v112 + 80);
    v118 = v57;
    v110 = v63;
    v63(v111, v60 + ((v117 + 32) & ~v117), v113);

    v64 = v102;
    sub_1A5244CB4();
    v65 = v104;
    sub_1A52444A4();
    v67 = QueryTokenCategoryType.supportsDisambiguation(withDataSource:)(v65, v66);
    sub_1A3F51974(v65, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720], sub_1A3F5330C);
    (*(v103 + 8))(v64, v105);
    if (v67)
    {
      v38 = v97;
      v46 = sub_1A3F4D8EC(v97, v58, v62);
      v68 = v114;
    }

    else
    {
      sub_1A5244484();
      v79 = v100;
      (*(v108 + 104))(v106, *MEMORY[0x1E69C1300], v100);
      sub_1A3F51B28(&qword_1EB12EE28, MEMORY[0x1E69C1388], MEMORY[0x1E69C1390]);
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (aBlock == v120 && v123 == v121)
      {
        v80 = *(v108 + 8);
        v80(v106, v79);
        v80(v107, v79);

        v38 = v97;
      }

      else
      {
        LODWORD(v109) = sub_1A524EAB4();
        v85 = *(v108 + 8);
        v85(v106, v79);
        v85(v107, v79);
        v38 = v97;

        if ((v109 & 1) == 0)
        {
          v88 = v117;
          v109 = objc_opt_self();
          v89 = v113;
          v110(v99, v111, v113);
          v90 = v115 + 16;
          v91 = v98;
          v68 = v114;
          (*(v115 + 16))(v98, v116, v114);
          v92 = (v88 + 16) & ~v88;
          v93 = (v92 + v16 + *(v90 + 64)) & ~*(v90 + 64);
          v94 = swift_allocObject();
          v38 = v97;
          (*(v112 + 32))(v94 + v92, v99, v89);
          (v118)(v94 + v93, v91, v68);
          *(v94 + ((v21 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)) = v119;
          v58 = v116;
          v126 = sub_1A3F519D4;
          v127 = v94;
          aBlock = MEMORY[0x1E69E9820];
          v123 = 1107296256;
          v124 = sub_1A3D7692C;
          v125 = &block_descriptor_9_1;
          v95 = _Block_copy(&aBlock);

          v62 = v111;

          v46 = [v109 menuWithDeferredConfiguration_];
          _Block_release(v95);
          goto LABEL_19;
        }
      }

      v86 = objc_opt_self();
      v126 = sub_1A3F519EC;
      v127 = v119;
      aBlock = MEMORY[0x1E69E9820];
      v123 = 1107296256;
      v124 = sub_1A3D7692C;
      v125 = &block_descriptor_12_2;
      v87 = _Block_copy(&aBlock);

      v46 = [v86 menuWithDeferredConfiguration_];
      _Block_release(v87);
      v68 = v114;
      v58 = v116;
      v62 = v111;
    }

LABEL_19:
    (*(v112 + 8))(v62, v113);
    (*(v115 + 8))(v58, v68);
    goto LABEL_20;
  }

  v37(v31, 1, 1, v32);
  sub_1A3F51974(v31, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A3F5330C);
  v48 = v117;
  v47 = v118;
  v49 = *(v118 + 2);
  v49(v117, a1, v4);
  v50 = sub_1A5246F04();
  v51 = sub_1A524D244();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v52 = 136642819;
    v49(v109, v48, v4);
    v53 = sub_1A524C714();
    v55 = v54;
    (*(v47 + 1))(v48, v4);
    sub_1A3C2EF94(v53, v55, &aBlock);
  }

  (*(v47 + 1))(v48, v4);
  v69 = objc_opt_self();
  v126 = PXDisplayCollectionDetailedCountsMake;
  v127 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v123 = 1107296256;
  v124 = sub_1A3D7692C;
  v125 = &block_descriptor_53;
  v70 = _Block_copy(&aBlock);
  v46 = [v69 menuWithDeferredConfiguration_];
  _Block_release(v70);
  return v46;
}

id sub_1A3F4D8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v3 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v4 = *(v3 - 8);
  v28 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v6;
  v7 = sub_1A52444C4();
  v23 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5244CC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_opt_self();
  (*(v12 + 16))(v14, v25, v11);
  (*(v8 + 16))(v10, v26, v7);
  sub_1A3F51C64(v27, v6, type metadata accessor for GenerativeStoryAmbiguityData);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v4 + 80) + v17 + 8) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v15, v14, v11);
  (*(v8 + 32))(v19 + v16, v10, v23);
  *(v19 + v17) = v30;
  sub_1A3F52D44(v24, v19 + v18, type metadata accessor for GenerativeStoryAmbiguityData);
  aBlock[4] = sub_1A3F51CCC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_28_0;
  v20 = _Block_copy(aBlock);

  v21 = [v29 menuWithDeferredConfiguration_];
  _Block_release(v20);
  return v21;
}

void sub_1A3F4DC78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a5;
  v29 = a4;
  v30 = a1;
  v25 = a2;
  v5 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52444C4();
  v23 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5244CC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v25, v11, v14);
  (*(v8 + 16))(v10, v26, v7);
  sub_1A3F51C64(v27, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryAmbiguityData);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v28 + 80) + v18 + 8) & ~*(v28 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v16, v15, v11);
  (*(v8 + 32))(v20 + v17, v10, v23);
  *(v20 + v18) = v29;
  sub_1A3F52D44(v24, v20 + v19, type metadata accessor for GenerativeStoryAmbiguityData);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1A3F51FB4;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1A3D78DD0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  aBlock[3] = &block_descriptor_37_0;
  v22 = _Block_copy(aBlock);

  [v30 addSectionWithConfiguration_];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }
}

void sub_1A3F4E050(void *a1, double a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v74 = a1;
  v75 = a6;
  v72 = a4;
  v73 = a5;
  sub_1A3F5330C(0, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v68 - v7;
  v8 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1A52444C4();
  v11 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = sub_1A5244DF4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5244CB4();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == *MEMORY[0x1E69C1240])
  {
    (*(v17 + 8))(v19, v16);
    v21 = sub_1A524C634();
    v22 = PXMemoryCreationLocalizedString(v21);

    sub_1A524C674();
    sub_1A3F5330C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A52F8E10;
    v24 = sub_1A5244464();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1A3D710E8();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1A524C6C4();

    v27 = sub_1A524C634();

    v28 = sub_1A524C634();
    v29 = swift_allocObject();
    swift_weakInit();
    sub_1A3F51C64(v75, &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryAmbiguityData);
    v30 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    sub_1A3F52D44(&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for GenerativeStoryAmbiguityData);
    v80 = sub_1A3F524E4;
    v81 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v78 = sub_1A3F4ECC0;
    v79 = &block_descriptor_60_1;
    v32 = _Block_copy(&aBlock);

    [v74 addItemWithTitle:v27 systemImageName:v28 handler:{v32, v68}];
LABEL_23:
    _Block_release(v32);

    return;
  }

  v68 = v15;
  v72 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v75;
  if (v20 == *MEMORY[0x1E69C1238])
  {
    v34 = (*(v17 + 96))(v19, v16);
    sub_1A3F52284(0, v34);
    v36 = MEMORY[0x1E6968278];
    v37 = MEMORY[0x1E69E6720];
    sub_1A3F51974(&v19[*(v35 + 48)], &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720], sub_1A3F5330C);
    sub_1A3F51974(v19, &qword_1EB126090, v36, v37, sub_1A3F5330C);
    v38 = v33;
    goto LABEL_5;
  }

  if (v20 != *MEMORY[0x1E69C1248])
  {
    v38 = v75;
    if (v20 != *MEMORY[0x1E69C1220])
    {
      if (v20 != *MEMORY[0x1E69C1228])
      {
        (*(v17 + 8))(v19, v16);
        return;
      }

      v39 = v11;
      v59 = (*(v17 + 96))(v19, v16);
      sub_1A3F521E0(0, v59);
      v61 = *(v60 + 48);
      v62 = sub_1A5244F14();
      (*(*(v62 - 8) + 8))(&v19[v61], v62);
      sub_1A3F51974(v19, &qword_1EB12EE48, MEMORY[0x1E69C1820], MEMORY[0x1E69E6720], sub_1A3F5330C);
LABEL_6:
      sub_1A3F51C64(v38, v10, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = v74;
      v43 = v70;
      v42 = v71;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A3F51914(v10, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      }

      else
      {
        v51 = v69;
        (*(v39 + 32))(v71, v10, v69);
        sub_1A52444A4();
        v52 = sub_1A5245604();
        v53 = *(v52 - 8);
        if ((*(v53 + 48))(v43, 1, v52) == 1)
        {
          (*(v39 + 8))(v42, v51);
          sub_1A3F51974(v43, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720], sub_1A3F5330C);
        }

        else
        {
          v54 = sub_1A52455F4();
          (*(v53 + 8))(v43, v52);
          v55 = *(v54 + 16);

          if (v55)
          {
            v56 = sub_1A524C634();
            v57 = PXMemoryCreationLocalizedString(v56);

            sub_1A524C674();
            (*(v39 + 8))(v71, v51);
            v58 = v72;
LABEL_22:
            v27 = sub_1A524C634();

            v28 = sub_1A524C634();
            v65 = swift_allocObject();
            swift_weakInit();
            sub_1A3F51C64(v38, v58, type metadata accessor for GenerativeStoryAmbiguityData);
            v66 = (*(v14 + 80) + 24) & ~*(v14 + 80);
            v67 = swift_allocObject();
            *(v67 + 16) = v65;
            sub_1A3F52D44(v58, v67 + v66, type metadata accessor for GenerativeStoryAmbiguityData);
            v80 = sub_1A3F52148;
            v81 = v67;
            aBlock = MEMORY[0x1E69E9820];
            v77 = 1107296256;
            v78 = sub_1A3F4ECC0;
            v79 = &block_descriptor_53_1;
            v32 = _Block_copy(&aBlock);

            [v41 addItemWithTitle:v27 systemImageName:v28 handler:{v32, v68}];
            goto LABEL_23;
          }

          (*(v39 + 8))(v71, v51);
        }
      }

      v58 = v72;
      v63 = sub_1A524C634();
      v64 = PXMemoryCreationLocalizedString(v63);

      sub_1A524C674();
      goto LABEL_22;
    }

    (*(v17 + 96))(v19, v16);
    sub_1A3F51974(v19, &unk_1EB12EE38, MEMORY[0x1E69C17C8], MEMORY[0x1E69E6720], sub_1A3F5330C);
LABEL_5:
    v39 = v11;
    goto LABEL_6;
  }

  (*(v17 + 8))(v19, v16);
  v44 = sub_1A524C634();
  v45 = PXMemoryCreationLocalizedString(v44);

  if (!v45)
  {
    sub_1A524C674();
    v45 = sub_1A524C634();
  }

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = v72;
  sub_1A3F51C64(v33, v72, type metadata accessor for GenerativeStoryAmbiguityData);
  v48 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  sub_1A3F52D44(v47, v49 + v48, type metadata accessor for GenerativeStoryAmbiguityData);
  v80 = sub_1A3F52128;
  v81 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = sub_1A3F4ECC0;
  v79 = &block_descriptor_46_2;
  v50 = _Block_copy(&aBlock);

  [v74 addItemWithTitle:v45 systemImageName:0 handler:{v50, v68}];
  _Block_release(v50);
}

uint64_t sub_1A3F4ECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a2;
    sub_1A3C57128(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(v9, a3);
  swift_unknownObjectRelease();

  return sub_1A3F51974(v9, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3F5363C);
}

double sub_1A3F4EDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3F5330C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    sub_1A3F51C64(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryAmbiguityData);
    sub_1A524CC54();

    v16 = sub_1A524CC44();
    v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v16;
    v18[3] = v19;
    v18[4] = v14;
    sub_1A3F52D44(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for GenerativeStoryAmbiguityData);
    sub_1A3D4D930(0, 0, v11, a4, v18);
  }

  return result;
}

uint64_t sub_1A3F4EFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F4F078, v6, v5);
}

uint64_t sub_1A3F4F078()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);

    (*(*v3 + 592))(1);
  }

  **(v0 + 40) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

double sub_1A3F4F158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, void *, __n128), double a5)
{
  sub_1A3F5330C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;

  (a4)(0, 0, v9, a3, v13);

  return result;
}

uint64_t sub_1A3F4F300(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v6 = sub_1A5244FE4();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  v5[15] = swift_task_alloc();
  v7 = sub_1A52444C4();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_1A3F52CD8(0);
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  sub_1A3F5330C(0, &qword_1EB12EE60, sub_1A3F52CD8, MEMORY[0x1E69E6720]);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_1A524CC54();
  v5[28] = sub_1A524CC44();
  v11 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F4F5B8, v11, v10);
}

void sub_1A3F4F5B8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);

    v3 = sub_1A52455B4();
    if (v3)
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
      v5 = [v4 description];

      sub_1A524C674();
      sub_1A52455C4();
    }

    (*(*v2 + 1208))(v3);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = *(v0 + 8);

  v6();
}

void sub_1A3F4FD00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v20 = a1;
  v6 = sub_1A52444C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1A5244CC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9, v12);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1A3F530B4;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1A3D7B4F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  aBlock[3] = &block_descriptor_127;
  v18 = _Block_copy(aBlock);

  [v20 addSectionWithConfiguration_];
  _Block_release(v18);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_1A3F50008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v43[1] = a3;
  v43[2] = a4;
  v44 = a1;
  v6 = sub_1A5244FE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5244DF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  v43[0] = a2;
  sub_1A5244CB4();
  LOBYTE(a2) = sub_1A47BFF2C();
  v20 = *(v11 + 8);
  v20(v19, v10);
  if (a2 & 1) != 0 || (sub_1A5244484(), v22 = sub_1A47C0E1C(v21), (*(v7 + 8))(v9, v6), (v22))
  {
    v23 = sub_1A524C634();
    v24 = PXMemoryCreationLocalizedString(v23);

    sub_1A524C674();
    v25 = 0x80000001A53BDF60;
  }

  else
  {
    sub_1A5244CB4();
    TokenCategory = QueryTokenCategoryType.isLocationAmbiguity.getter(v38);
    v20(v16, v10);
    if ((TokenCategory & 1) == 0)
    {
      sub_1A5244CB4();
      QueryTokenCategoryType.isSupportedDateOrEventAmbiguity.getter(v40);
      v20(v13, v10);
    }

    v41 = sub_1A524C634();
    v42 = PXMemoryCreationLocalizedString(v41);

    sub_1A524C674();
    v25 = 0;
  }

  v26 = sub_1A524C634();

  v27 = v44;
  if (v25)
  {
    v28 = sub_1A524C634();
  }

  else
  {
    v28 = 0;
  }

  v29 = swift_allocObject();
  swift_weakInit();
  v49 = sub_1A3F531E0;
  v50 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1A3F4ECC0;
  v48 = &block_descriptor_131_1;
  v30 = _Block_copy(&aBlock);

  [v27 addItemWithTitle:v26 systemImageName:v28 handler:v30];
  _Block_release(v30);

  sub_1A3C56110(0, v31);
  v32 = [swift_getObjCClassFromMetadata() sharedInstance];
  v33 = [v32 unresolvableAmbiguityShowsContinueButton];

  if (v33)
  {
    v34 = sub_1A524C634();
    v35 = PXMemoryCreationLocalizedString(v34);

    if (!v35)
    {
      sub_1A524C674();
      v35 = sub_1A524C634();
    }

    v36 = swift_allocObject();
    swift_weakInit();
    v49 = sub_1A3F5322C;
    v50 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1A3F4ECC0;
    v48 = &block_descriptor_135_2;
    v37 = _Block_copy(&aBlock);

    [v27 addItemWithTitle:v35 systemImageName:0 handler:v37];
    _Block_release(v37);
  }
}

uint64_t sub_1A3F505AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F536F8, v6, v5);
}

uint64_t sub_1A3F50644(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  sub_1A3F5330C(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  v5[6] = swift_task_alloc();
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F50738, v7, v6);
}

uint64_t sub_1A3F50738()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 48);
    v3 = *(Strong + 16);

    v5 = (*(*v3 + 416))(v4);
    v7 = v6;
    v8 = sub_1A5244854();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    (*(*v3 + 1896))(v5, v7, v2);

    sub_1A3F51974(v2, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720], sub_1A3F5330C);
  }

  v9 = *(v0 + 8);

  return v9();
}

double sub_1A3F50908(uint64_t a1, void *a2, double a3)
{
  sub_1A3F5330C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();
  v9 = a2;

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = v8;

  sub_1A3D4D930(0, 0, v6, &unk_1A53097C8, v11);

  return result;
}

uint64_t sub_1A3F50AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F50B5C, v7, v6);
}

uint64_t sub_1A3F50B5C()
{

  sub_1A5247124();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);

    (*(*v2 + 592))(1);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A3F50C34(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  sub_1A3F5330C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v6[4] = swift_task_alloc();
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F50D28, v8, v7);
}

uint64_t sub_1A3F50D28()
{
  v1 = v0[4];
  v2 = *(v0[2] + 16);
  sub_1A3F51C64(v0[3], v1, type metadata accessor for GenerativeStoryAmbiguityData);
  v3 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = (*(*v2 + 1240))(v1);
  v5 = *(*v2 + 1184);
  result = v5(v4);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(*result + 1032))(v0[3]);

  result = v5(v7);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;

  (*(*v8 + 544))(1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A3F50F10(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  sub_1A3F5330C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v6[4] = swift_task_alloc();
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F51004, v8, v7);
}

uint64_t sub_1A3F51004()
{
  v1 = *(v0[2] + 16);
  v12 = *(*v1 + 1184);
  result = v12();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v0[3];
  v3 = v0[4];
  v5 = (*(*result + 840))(result);

  v6 = *(*v5 + 432);
  v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
  v6(v4, v7);

  sub_1A3F51C64(v4, v3, type metadata accessor for GenerativeStoryAmbiguityData);
  v8 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = (*(*v1 + 1240))(v3);
  result = (v12)(v9);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;

  (*(*v10 + 592))(1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A3F5126C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  sub_1A3F5330C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v6[4] = swift_task_alloc();
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F51360, v8, v7);
}

uint64_t sub_1A3F51360()
{
  v1 = *(v0[2] + 16);
  result = (*(*v1 + 1184))();
  if (result)
  {
    v3 = result;
    v4 = v0[4];
    v5 = v0[3];

    (*(*v3 + 640))(1);

    sub_1A3F51C64(v5, v4, type metadata accessor for GenerativeStoryAmbiguityData);
    v6 = type metadata accessor for GenerativeStoryAmbiguityData(0);
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    (*(*v1 + 1240))(v4);

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3F514FC()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryPromptEntryViewMenuBuilder_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1A3F515A0(void *result, int64_t a2, char a3, void *a4, double a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3F5330C(0, &unk_1EB12EE68, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6F90]);
  v11 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1A3F5179C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A3F53458;
  *(v7 + 24) = v6;
  v8[4] = sub_1A3D7B4F8;
  v8[5] = v7;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3D35A90;
  v8[3] = &block_descriptor_155;
  _Block_copy(v8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F51914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F51974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A3F519EC(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A3F5295C;
  *(v3 + 24) = v1;
  v5[4] = sub_1A3D7B4F8;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3D35A90;
  v5[3] = &block_descriptor_89;
  v4 = _Block_copy(v5);

  [a1 addSectionWithConfiguration_];
  _Block_release(v4);
  LODWORD(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t sub_1A3F51B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GenerativeStoryPromptEntryViewMenuBuilder(uint64_t a1)
{
  result = qword_1EB15DB20;
  if (!qword_1EB15DB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3F51BC4(uint64_t a1)
{
  result = sub_1A5246F24();
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

uint64_t sub_1A3F51C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_24Tm(double a1)
{
  v2 = v1;
  v3 = sub_1A5244CC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_1A52444C4();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v19 = *(*(v11 - 8) + 80);
  v12 = (v10 + v19 + 8) & ~v19;
  (*(v4 + 8))(v2 + v5, v3);
  v13 = *(v8 + 8);
  v13(v2 + v9, v7);

  v14 = v2 + v12;
  type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v13(v2 + v12, v7);
  }

  v15 = *(v11 + 20);
  v16 = sub_1A5247204();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v14 + v15, 1, v16))
  {
    (*(v17 + 8))(v14 + v15, v16);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3F51FCC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t), double a3)
{
  v5 = *(sub_1A5244CC4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1A52444C4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v12 = *(v3 + v10);
  v13 = v3 + ((v10 + *(v11 + 80) + 8) & ~*(v11 + 80));

  return a2(a1, v3 + v6, v3 + v9, v12, v13);
}

void sub_1A3F521E0(uint64_t a1, double a2)
{
  if (!qword_1EB12EE40)
  {
    sub_1A3F5330C(255, &qword_1EB12EE48, MEMORY[0x1E69C1820], MEMORY[0x1E69E6720]);
    sub_1A5244F14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12EE40);
    }
  }
}

void sub_1A3F52284(uint64_t a1, double a2)
{
  if (!qword_1EB12EE50)
  {
    sub_1A3F5330C(255, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12EE50);
    }
  }
}

uint64_t objectdestroy_42Tm()
{
  v1 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_1A52444C4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = *(v1 + 20);
  v6 = sub_1A5247204();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3F52504()
{
  v2 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A3F50C34(v8, v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A3F525DC()
{
  v2 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A3F50F10(v8, v5, v6, v7, v4, v0 + v3);
}

uint64_t objectdestroy_62Tm()
{
  v1 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_1A52444C4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = *(v1 + 20);
  v6 = sub_1A5247204();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3F52884()
{
  v2 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A3F5126C(v8, v5, v6, v7, v4, v0 + v3);
}

void sub_1A3F5295C(void *a1)
{
  v2 = sub_1A524C634();
  v3 = PXMemoryCreationLocalizedString(v2);

  if (!v3)
  {
    sub_1A524C674();
    v3 = sub_1A524C634();
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v14 = sub_1A3F52BAC;
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1A3F4ECC0;
  v13 = &block_descriptor_93_0;
  v5 = _Block_copy(&v10);

  [a1 addItemWithTitle:v3 systemImageName:0 handler:v5];
  _Block_release(v5);

  v6 = sub_1A524C634();
  v7 = PXMemoryCreationLocalizedString(v6);

  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v14 = sub_1A3F52BF8;
  v15 = v8;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1A3F4ECC0;
  v13 = &block_descriptor_97_0;
  v9 = _Block_copy(&v10);

  [a1 addItemWithTitle:v7 systemImageName:0 handler:v9];
  _Block_release(v9);
}

uint64_t sub_1A3F52C44()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3F4F300(v6, v3, v4, v5, v2);
}

void sub_1A3F52CD8(uint64_t a1)
{
  if (!qword_1EB12EE58)
  {
    type metadata accessor for GenerativeStoryAmbiguityData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12EE58);
    }
  }
}

uint64_t sub_1A3F52D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F52DAC(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A3F5330C(0, &qword_1EB12EE60, sub_1A3F52CD8, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F52E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F52EB8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A3F4EFE0(a1, v5, v6, v4);
}

uint64_t objectdestroy_5Tm(double a1)
{
  v2 = sub_1A5244CC4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_1A52444C4();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1A3F530CC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t), double a3)
{
  v5 = *(sub_1A5244CC4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1A52444C4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v3 + v6, v3 + v9, v10);
}

uint64_t sub_1A3F53278()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3F50644(v6, v3, v4, v5, v2);
}

void sub_1A3F5330C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3F53370(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A3F505AC(a1, v5, v6, v4);
}

uint64_t objectdestroyTm_14()
{

  return swift_deallocObject();
}

void sub_1A3F53458(void *a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1A524C634();
  v5 = sub_1A524C634();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v10[4] = sub_1A3F5359C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3F4ECC0;
  v10[3] = &block_descriptor_162_1;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 addItemWithTitle:v4 systemImageName:v5 handler:v8];
  _Block_release(v8);
}

uint64_t sub_1A3F535A4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3F50AC4(v4, v5, v6, v2, v3);
}

void sub_1A3F5363C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3F536FC()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3F574B8(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3F56F44(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AC24(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB17F678 = result;
  return result;
}

uint64_t sub_1A3F53980()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3F574B8(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3F56F44(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AC24(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB165878 = result;
  return result;
}

id sub_1A3F53C04(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  qword_1EB17F5E8 = result;
  return result;
}

void sub_1A3F53C40(void *a1)
{
  v9 = 0;
  if (qword_1EB17F670 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB17F678;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = &v9;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A3F53DE0;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_54;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else if (v9)
  {

    return;
  }

  __break(1u);
}

double sub_1A3F53DE0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (qword_1EB17F5E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB17F5E8;
  v4 = [qword_1EB17F5E8 objectForKey_];
  if (v4)
  {
    *v2 = v4;
  }

  else
  {
    type metadata accessor for LemonadePeopleProgressStatus(0);
    v5 = swift_allocObject();
    v6 = v1;
    sub_1A3F54A44(v6);
    *v2 = v5;

    [v3 setObject:v5 forKey:v6];
  }

  return result;
}

uint64_t sub_1A3F53ED8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A3F54A44(a1);
  return v2;
}

uint64_t sub_1A3F53F18()
{
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 16);
}

void sub_1A3F53FCC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void sub_1A3F540B0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
    sub_1A52415C4();
  }
}

uint64_t sub_1A3F541D4()
{
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 17);
}

void sub_1A3F54288(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 17);
}

void sub_1A3F5436C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
    sub_1A52415C4();
  }
}

uint64_t sub_1A3F54490()
{
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  if (*(v0 + 19))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 18);
}

void sub_1A3F54558(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 19);
  *a2 = *(v3 + 18);
  a2[1] = v4;
}

double sub_1A3F5461C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415C4();

  return result;
}

uint64_t sub_1A3F546F4()
{
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 24);
}

void sub_1A3F547A8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

double sub_1A3F5488C(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
    sub_1A52415C4();
  }

  return result;
}

id sub_1A3F549A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v5 = type metadata accessor for LemonadePeopleProgressStatus.ObserverProxy(a1, a2);
    v6 = objc_allocWithZone(v5);
    swift_weakInit();
    swift_weakAssign();
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = *(v2 + 48);
    *(v2 + 48) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

uint64_t sub_1A3F54A44(uint64_t a1)
{
  sub_1A3F56E74(0);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *(v1 + 56) = v3;
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v1 + 64) = v4;
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v1 + 72) = v5;
  sub_1A52411B4();
  sub_1A5241604();
  *(v1 + 16) = 0;
  *(v1 + 24) = 4;
  *(v1 + 32) = a1;
  return v1;
}

uint64_t type metadata accessor for LemonadePeopleProgressStatus(uint64_t a1)
{
  result = qword_1EB17F5B0;
  if (!qword_1EB17F5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A3F54B78()
{
  sub_1A3F56F44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  if (!*(v0 + 40))
  {
    v5 = sub_1A524CCB4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_1A3D4D930(0, 0, v4, &unk_1A5309878, v7);
  }

  return result;
}

uint64_t sub_1A3F54CE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (!*(Strong + 40))
    {
      v3 = [objc_allocWithZone(PXPeopleProgressManager) initWithPhotoLibrary_];
      v4 = *(v2 + 40);
      *(v2 + 40) = v3;
      v5 = v3;

      [v5 setUpdateInterval_];
      [v5 setMonitoringProgress_];
      v6 = *(v2 + 32);
      v8 = sub_1A3F549A4(v6, v7);
      [v6 px:v8 registerChangeObserver:?];

      v9 = [objc_opt_self() defaultCenter];
      [v9 addObserver:v2 selector:sel_updateEverything name:@"PXPeopleProgressDidChangeNotification" object:v5];

      sub_1A3F55040(0, 0, 0);
      v10 = *(v2 + 40);
      if (v10)
      {
        v11 = swift_allocObject();
        swift_weakInit();
        v0[6] = sub_1A3F575F0;
        v0[7] = v11;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1A3E01E70;
        v0[5] = &block_descriptor_87_0;
        v12 = _Block_copy(v0 + 2);
        v13 = v10;

        [v13 shouldUseProgressFooterWithCompletion_];
        _Block_release(v12);
      }

      sub_1A3F553A8();
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A3F54F3C()
{
  sub_1A3F55040(0, 0, 0);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_1A3F57500;
    v6[5] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1A3E01E70;
    v6[3] = &block_descriptor_60_2;
    v3 = _Block_copy(v6);
    v4 = v1;

    [v4 shouldUseProgressFooterWithCompletion_];
    _Block_release(v3);
  }

  return sub_1A3F553A8();
}

double sub_1A3F55040(char a1, void *a2, void *a3)
{
  v6 = sub_1A524BEE4();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB165870 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB165878;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  aBlock[4] = sub_1A3F5737C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_47_0;
  v14 = _Block_copy(aBlock);
  v15 = a3;

  v16 = a2;
  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3F574B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A3F56F44(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AC24(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v11, v8, v14);
  _Block_release(v14);
  (*(v21 + 8))(v8, v6);
  (*(v9 + 8))(v11, v20);

  return result;
}

uint64_t sub_1A3F553A8()
{
  v0 = sub_1A524BEE4();
  v12 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v6 = sub_1A524D474();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A3F57508;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_64_0;
  v8 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3F574B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v9 = MEMORY[0x1E69E7F60];
  sub_1A3F56F44(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AC24(&qword_1EB12B1B0, &qword_1EB12B1C0, v9);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v5, v2, v8);
  _Block_release(v8);

  (*(v12 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v11);
}

uint64_t sub_1A3F556EC(char a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = sub_1A524BEE4();
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 40);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  if (([v10 hasSubstantialProcessingRemainingForThreshold_] & 1) == 0)
  {
    v44 = v10;
    v46 = v1;
    v16 = *(v1 + 56);
    os_unfair_lock_lock((v16 + 24));
    v17 = *(v16 + 16);
    v45 = v17;
    os_unfair_lock_unlock((v16 + 24));
    if (!v17 || (v19 = [v45 count], (a1 & 1) != 0) || v19 == -1)
    {
      type metadata accessor for PeopleUtilities(0, v18);
      v20 = v46;
      v21 = sub_1A3D785F8(*(v46 + 32));
      v23 = v22;
      v25 = v24;
      v42[1] = v42;
      MEMORY[0x1EEE9AC00](v21);
      v42[-2] = v26;
      v17 = v26;
      v42[0] = v23;
      v43 = v25;
      os_unfair_lock_lock((v16 + 24));
      sub_1A3F57420((v16 + 16));
      os_unfair_lock_unlock((v16 + 24));
      v27 = *(v20 + 64);
      MEMORY[0x1EEE9AC00](v28);
      v29 = v42[0];
      v42[-2] = v42[0];
      os_unfair_lock_lock((v27 + 24));
      sub_1A3F57590((v27 + 16));
      os_unfair_lock_unlock((v27 + 24));
      v30 = *(v20 + 72);
      MEMORY[0x1EEE9AC00](v31);
      v32 = v43;
      v42[-2] = v43;
      os_unfair_lock_lock((v30 + 24));
      sub_1A3F57590((v30 + 16));
      os_unfair_lock_unlock((v30 + 24));

      v33 = [v17 count];
      if (v33 >= 1)
      {
        goto LABEL_9;
      }
    }

    else if (v19 >= 1)
    {
LABEL_9:
      *aBlock = 0;
      [objc_opt_self() people:v17 hasHumans:&aBlock[1] hasPets:aBlock];

      v14 = aBlock[1];
      v13 = aBlock[0];
      v15 = 1;
      goto LABEL_12;
    }

    v34 = sub_1A524D224();
    v35 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v34, &dword_1A3C1C000, v35, "Shouldn't enable “Add People” button because there are no candidates to add.", 80, 0, MEMORY[0x1E69E7CC0]);

    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_12;
  }

LABEL_4:
  v11 = sub_1A524D224();
  v12 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Shouldn't enable “Add People” button because there's substantial processing remaining.", 90, 0, MEMORY[0x1E69E7CC0]);

  v13 = 0;
  v14 = 0;
  v15 = 0;
LABEL_12:
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v36 = sub_1A524D474();
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v15;
  *(v38 + 25) = v14;
  *(v38 + 26) = v13;
  v54 = sub_1A3F573FC;
  v55 = v38;
  *&aBlock[1] = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1A3C2E0D0;
  v53 = &block_descriptor_54;
  v39 = _Block_copy(&aBlock[1]);

  sub_1A524BF14();
  *&aBlock[1] = MEMORY[0x1E69E7CC0];
  sub_1A3F574B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v40 = MEMORY[0x1E69E7F60];
  sub_1A3F56F44(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AC24(&qword_1EB12B1B0, &qword_1EB12B1C0, v40);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v8, v5, v39);
  _Block_release(v39);

  (*(v49 + 8))(v5, v3);
  return (*(v47 + 8))(v8, v48);
}

double sub_1A3F55D38(uint64_t a1, char a2, __int16 a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = a2 & 1;
    if (*(v5 + 16) == v6)
    {
      *(v5 + 16) = v6;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
      sub_1A52415C4();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A3F55F9C(char a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v10 = sub_1A524D474();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1A3F57510;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_71;
  v12 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3F574B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1A3F56F44(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AC24(&qword_1EB12B1B0, &qword_1EB12B1C0, v13);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v12);
  _Block_release(v12);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

double sub_1A3F562AC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = a2 & 1;
    if (*(v5 + 17) == v6)
    {
      *(v5 + 17) = v6;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
      sub_1A52415C4();
    }
  }

  return result;
}

void sub_1A3F5640C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 40);
    if (!v3)
    {
LABEL_6:

      return;
    }

    v4 = v3;
    v5 = [v4 processingStatus];
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      if (*(v2 + 24) == v6)
      {

        *(v2 + 24) = v6;
        goto LABEL_6;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
      sub_1A52415C4();
    }

    else
    {
    }
  }
}

double sub_1A3F5659C(uint64_t a1)
{
  sub_1A3F56F44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-v4];
  v6 = *(v1 + 64);
  v19 = a1;
  os_unfair_lock_lock((v6 + 24));
  sub_1A3F575A8((v6 + 16), &v20);
  os_unfair_lock_unlock((v6 + 24));
  v7 = v20;
  v8 = v21;
  v9 = *(v1 + 72);
  v18 = a1;
  os_unfair_lock_lock((v9 + 24));
  sub_1A3F571E0((v9 + 16), &v20);
  os_unfair_lock_unlock((v9 + 24));
  v10 = v20;
  v11 = v21;
  if ((v8 & 1) != 0 || v21)
  {
    v13 = sub_1A524CCB4();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v14;
    *(v15 + 40) = v7;
    *(v15 + 48) = v8;
    *(v15 + 56) = v10;
    *(v15 + 64) = v11;
    v16 = v7;
    sub_1A3EA52F4(0, 0, v5, &unk_1A5309A10, v15);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1A3F567A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a5;
  v7[8] = a7;
  v7[5] = a1;
  v7[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A3F567CC, 0, 0);
}

uint64_t sub_1A3F567CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A3F55040(1, *(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t LemonadePeopleProgressStatus.debugDescription.getter()
{
  v1 = v0;
  sub_1A3F5703C();
  v2 = sub_1A524C714();
  v4 = v3;
  sub_1A3F56F44(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FCA00;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1A3D710E8();
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v8 = MEMORY[0x1E69E65A8];
  *(v5 + 96) = MEMORY[0x1E69E6530];
  *(v5 + 104) = v8;
  *(v5 + 64) = v7;
  *(v5 + 72) = v1;
  swift_getKeyPath();
  sub_1A3F574B8(&qword_1EB1299C0, type metadata accessor for LemonadePeopleProgressStatus, &protocol conformance descriptor for LemonadePeopleProgressStatus);
  sub_1A52415D4();

  swift_beginAccess();
  v9 = *(v1 + 16) == 0;
  v10 = 1702195828;
  if (!*(v1 + 16))
  {
    v10 = 0x65736C6166;
  }

  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  *(v5 + 112) = v10;
  *(v5 + 120) = v11;
  swift_getKeyPath();
  sub_1A52415D4();

  swift_beginAccess();
  v12 = 0x65736C6166;
  if (*(v1 + 17))
  {
    v12 = 1702195828;
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  *(v5 + 176) = v6;
  *(v5 + 184) = v7;
  *(v5 + 152) = v12;
  *(v5 + 160) = v13;
  v14 = objc_opt_self();
  swift_getKeyPath();
  sub_1A52415D4();

  swift_beginAccess();
  v15 = [v14 statusStringForStatus_];
  v16 = sub_1A524C674();
  v18 = v17;

  *(v5 + 216) = v6;
  *(v5 + 224) = v7;
  *(v5 + 192) = v16;
  *(v5 + 200) = v18;
  return sub_1A524C6C4();
}

uint64_t sub_1A3F56B68()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = ([v2 count] == 0) << 8;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((v1 + 24));
  v4 = *(v0 + 40);
  if (v4)
  {
    LODWORD(v4) = [v4 debug:1 ignoreMockingHasSubstantialProcessingRemainingForThreshold:?];
  }

  return v3 | v4;
}

id *LemonadePeopleProgressStatus.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore28LemonadePeopleProgressStatus_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore28LemonadePeopleProgressStatus___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LemonadePeopleProgressStatus.__deallocating_deinit()
{
  LemonadePeopleProgressStatus.deinit();

  return swift_deallocClassInstance();
}

void sub_1A3F56E24()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 24) = v1;
}

void sub_1A3F56E74(uint64_t a1)
{
  if (!qword_1EB1264E8)
  {
    sub_1A3F56EDC(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1A524E4E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1264E8);
    }
  }
}

void sub_1A3F56EDC(uint64_t a1)
{
  if (!qword_1EB126C30)
  {
    sub_1A3C52C70(255, &qword_1EB126C40, 0x1E6978840);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126C30);
    }
  }
}

void sub_1A3F56F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3F56FA8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3F54CC4(v3, v4, v5, v2);
}

unint64_t sub_1A3F5703C()
{
  result = qword_1EB12EE78;
  if (!qword_1EB12EE78)
  {
    type metadata accessor for LemonadePeopleProgressStatus(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB12EE78);
  }

  return result;
}

uint64_t sub_1A3F5708C(uint64_t a1)
{
  result = sub_1A52411C4();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

id sub_1A3F571F8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 && (sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980), v5 = v3, v6 = sub_1A524DC44(), v5, v6))
  {
    v3 = [v6 fetchResultAfterChanges];

    *a1 = v3;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v7;
  return v3;
}

uint64_t sub_1A3F572C0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A3F567A8(a1, v7, v8, v4, v5, 0, v6);
}

double sub_1A3F5737C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3F556EC(v1);
  }

  return result;
}

double sub_1A3F573FC()
{
  if (*(v0 + 26))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1A3F55D38(*(v0 + 16), *(v0 + 24), v1 | *(v0 + 25));
}

id sub_1A3F57420(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

void sub_1A3F57464()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t sub_1A3F574B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3F5751C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  swift_beginAccess();
  *(v1 + 18) = v2;
  *(v1 + 19) = v3;
}

uint64_t sub_1A3F57624()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB19B9B8);
  __swift_project_value_buffer(v6, qword_1EB19B9B8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static RemoveAssetsFromAlbumIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB19B9B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB19B9B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A3F57914@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB19B9B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB19B9B8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A3F579D4(uint64_t a1, double a2)
{
  if (qword_1EB19B9B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB19B9B8);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t static RemoveAssetsFromAlbumIntent.parameterSummary.getter()
{
  sub_1A3F5CB30(0, &qword_1EB12EE88, sub_1A3F57CC4, &type metadata for RemoveAssetsFromAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3F5CB30(0, &qword_1EB12EE98, sub_1A3F57CC4, &type metadata for RemoveAssetsFromAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3F57CC4();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3F57D3C(0);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3F57E24(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A3F57CC4()
{
  result = qword_1EB12EE90;
  if (!qword_1EB12EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EE90);
  }

  return result;
}

void sub_1A3F57D3C(uint64_t a1)
{
  if (!qword_1EB12EEA0)
  {
    sub_1A3F5CB30(255, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12EEA0);
    }
  }
}

uint64_t sub_1A3F57DF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A523FF64();
  *a1 = result;
  return result;
}

void sub_1A3F57E24(uint64_t a1)
{
  if (!qword_1EB12EEA8)
  {
    sub_1A3F57E84(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12EEA8);
    }
  }
}

void sub_1A3F57E84(uint64_t a1)
{
  if (!qword_1EB12EEB0)
  {
    sub_1A3F5CC94(255, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
    sub_1A3F57F0C();
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12EEB0);
    }
  }
}

unint64_t sub_1A3F57F0C()
{
  result = qword_1EB12EEC0;
  if (!qword_1EB12EEC0)
  {
    sub_1A3F5CC94(255, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
    sub_1A3F57FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EEC0);
  }

  return result;
}

unint64_t sub_1A3F57FA8()
{
  result = qword_1EB125CC8;
  if (!qword_1EB125CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CC8);
  }

  return result;
}

uint64_t RemoveAssetsFromAlbumIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v2 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_1A5240334();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1E69E6720];
  sub_1A3F5CB98(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36[-v9];
  sub_1A3F5CB98(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v36[-v11];
  v12 = sub_1A5240BA4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1A5240BB4();
  v43 = v18;
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F5CB30(0, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
  v45 = v20;
  sub_1A524C5B4();
  sub_1A5241244();
  v22 = *(v13 + 104);
  v37 = *MEMORY[0x1E6968DF0];
  v21 = v37;
  v38 = v12;
  v22(v15, v37, v12);
  v40 = v22;
  v39 = v13 + 104;
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v22(v15, v21, v12);
  v23 = v51;
  sub_1A5240BC4();
  v24 = *(v54 + 56);
  v54 += 56;
  v44 = v24;
  v24(v23, 0, 1, v18);
  v25 = sub_1A523FDB4();
  v56 = 0u;
  v57 = 0u;
  v26 = *(*(v25 - 8) + 56);
  v26(v46, 1, 1, v25);
  v26(v47, 1, 1, v25);
  v41 = *MEMORY[0x1E695A500];
  v27 = *(v55 + 104);
  v55 += 104;
  v42 = v27;
  v28 = v48;
  v27(v48);
  sub_1A3DB3554();
  *v53 = sub_1A523FFB4();
  sub_1A3F57E84(0);
  v47 = v29;
  sub_1A524C5B4();
  sub_1A5241244();
  v30 = v37;
  v31 = v38;
  v32 = v40;
  v40(v15, v37, v38);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v32(v15, v30, v31);
  v33 = v51;
  sub_1A5240BC4();
  v44(v33, 0, 1, v43);
  *&v56 = 0;
  sub_1A5240174();
  v42(v28, v41, v52);
  sub_1A3F587A8();
  sub_1A3F58824();
  result = sub_1A5240034();
  v35 = v53;
  v53[1] = result;
  *(v35 + 16) = 0;
  return result;
}

unint64_t sub_1A3F587A8()
{
  result = qword_1EB12EEC8;
  if (!qword_1EB12EEC8)
  {
    sub_1A3F5CC94(255, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EEC8);
  }

  return result;
}

unint64_t sub_1A3F58824()
{
  result = qword_1EB125CD0;
  if (!qword_1EB125CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CD0);
  }

  return result;
}

uint64_t RemoveAssetsFromAlbumIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = *v1;
  *(v2 + 99) = *(v1 + 16);
  sub_1A524CC54();
  *(v2 + 136) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3F58920, v4, v3);
}

uint64_t sub_1A3F58920()
{
  v1 = *(v0 + 99);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  *(v0 + 80) = v3;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;
  sub_1A523FF44();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v0 + 48) = v5;
  *(v0 + 56) = v4;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  AlbumEntity.albumType.getter((v0 + 97));

  *(v0 + 98) = *(v0 + 97);
  v8 = AlbumEntity.CollectionType.rawValue.getter();
  v10 = v9;
  *(v0 + 160) = v9;
  sub_1A523FF44();
  v11 = *(*(v0 + 104) + 16);

  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *(v12 + 16) = v3;
  *(v12 + 24) = v2;
  *(v12 + 32) = v1;
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  sub_1A3F57CC4();
  *v13 = v0;
  v13[1] = sub_1A3F58AD0;
  v14 = *(v0 + 112);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v14, 0, 0, v8, v10, v11, 0, &unk_1A5309A90);
}

uint64_t sub_1A3F58AD0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1A3F58C88;
  }

  else
  {
    v5 = sub_1A3F58C24;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3F58C24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F58C88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F58D44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 65) = a4;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 80) = a1;
  sub_1A524CC54();
  *(v4 + 104) = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  *(v4 + 112) = v6;
  *(v4 + 120) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3F58DE4, v6, v5);
}

void sub_1A3F58DE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 65);
  v6 = *(v3 + 88);
  v5 = *(v3 + 96);
  PFProcessIsLaunchedToExecuteTests();
  sub_1A523FF44();
  *(v3 + 128) = *(v3 + 72);
  sub_1A523FF44();
  v7 = *(v3 + 24);
  *(v3 + 136) = *(v3 + 16);
  *(v3 + 144) = v7;
  v8 = *(v3 + 40);
  *(v3 + 152) = *(v3 + 32);
  *(v3 + 160) = v8;
  *(v3 + 48) = v6;
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;
  sub_1A3F57CC4();
  AppIntent.px_intentName.getter(&type metadata for RemoveAssetsFromAlbumIntent);
  *(v3 + 168) = v9;
  v10 = swift_task_alloc();
  *(v3 + 176) = v10;
  *v10 = v3;
  v10[1] = sub_1A3F58F50;

  JUMPOUT(0x1A3F592B4);
}

uint64_t sub_1A3F58F50()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  *(*v1 + 184) = v0;

  v4 = *(v2 + 112);
  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1A3F5919C;
  }

  else
  {
    v6 = sub_1A3F5912C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A3F5912C()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F5919C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F59200(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A3F58D44(a1, v4, v5, v6);
}

uint64_t sub_1A3F592B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 258) = v16;
  *(v8 + 104) = v14;
  *(v8 + 112) = v15;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 257) = a6;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  *(v8 + 48) = a1;
  v9 = sub_1A5246F24();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  sub_1A524CC54();
  *(v8 + 152) = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  *(v8 + 160) = v11;
  *(v8 + 168) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A3F593D8, v11, v10);
}

void sub_1A3F593D8()
{
  v1 = PXAppIntentsAssets(for:)(*(v0 + 48));
  *(v0 + 176) = v1;
  if (!(v1 >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F59A24()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  *(*v1 + 232) = v0;

  v4 = *(v2 + 168);
  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_1A3F59C04;
  }

  else
  {
    v6 = sub_1A3F59B78;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A3F59B78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F59C04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F59C84()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_1A3F59FCC;
  }

  else
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_1A3F59DA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3F59DA0()
{
  (*(v0 + 192))(*(v0 + 136), *(v0 + 184), *(v0 + 120));
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Choice: { user confirmed deletion of shared assets }", v3, 2u);
    MEMORY[0x1A590EEC0](v3, -1, -1);
  }

  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);

  v4(v5, v6);
  v7 = *(v0 + 176);
  if (v7 >> 62)
  {
    v8 = sub_1A524E2B4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = objc_allocWithZone(PXActionRecord);
  v10 = sub_1A524C634();
  v11 = [v9 initWithSourceIdentifier:v10 assetCount:v8 userConfirmation:1];

  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v12 = sub_1A524CA14();

  v13 = [objc_allocWithZone(PXDeleteAssetsAction) initWithAssets:v12 record:v11];

  *(v0 + 216) = v13;
  v14 = v13;
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  *v15 = v0;
  v15[1] = sub_1A3F59A24;
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);

  return sub_1A4899AD4(v13, v16, v17);
}