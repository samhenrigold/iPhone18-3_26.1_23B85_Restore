uint64_t static FormatAsyncImageContent.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 60;
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        if (v3 >> 60 == 5)
        {
          v25 = v2 & 0xFFFFFFFFFFFFFFFLL;
          v26 = *(v25 + 16);
          v27 = *(v25 + 24);
          v28 = v3 & 0xFFFFFFFFFFFFFFFLL;
          v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v30 = *(v28 + 24);

          sub_1D6359F0C(v26, v29);
          if (v31)
          {
            *v73 = v27;
            *v66 = v30;
            v12 = static FormatAsyncImageContent.== infix(_:_:)(v73, v66);

            return v12 & 1;
          }
        }

        goto LABEL_40;
      }

      if (v3 >> 60 != 6)
      {
        goto LABEL_40;
      }

      v61 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v62 = *(v61 + 16);
      v63 = *(v61 + 24);
      *v73 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v66 = v62;
      *&v66[8] = v63;

      if (static FormatAsyncImageContent.== infix(_:_:)(v73, v66))
      {
        v64 = static FormatAsyncImageContent.== infix(_:_:)(&v73[8], &v66[8]);

        if ((v64 & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v4 == 7)
      {
        if (v3 >> 60 != 7)
        {
          goto LABEL_40;
        }

        v42 = v2 & 0xFFFFFFFFFFFFFFFLL;
        v43 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v44 = *(v43 + 16);
        *v73 = *(v42 + 16);
        *&v73[8] = *(v42 + 24);
        *v66 = v44;
        *&v66[8] = *(v43 + 24);

        v41 = _s8NewsFeed16FormatStyleImageV2eeoiySbAC_ACtFZ_0(v73, v66);
        goto LABEL_31;
      }

      if (v4 != 8)
      {
        if (v3 == 0x9000000000000000)
        {

          v12 = 1;
          return v12 & 1;
        }

        goto LABEL_40;
      }

      if (v3 >> 60 != 8)
      {
        goto LABEL_40;
      }

      v13 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v14 = *(v13 + 24);
      v16 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *v73 = *(v13 + 16);
      *&v73[8] = v14;
      *v66 = v16;
      *&v66[8] = v15;

      if (static FormatAsyncImageContent.== infix(_:_:)(v73, v66))
      {

        v17 = sub_1D6359EF4(v14, v15);

        swift_bridgeObjectRelease_n();
        if ((v17 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_35:
        v12 = 1;
        return v12 & 1;
      }
    }

    goto LABEL_40;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 60 != 1)
      {
        goto LABEL_40;
      }

      v53 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v54 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v55 = *(v54 + 96);
      v69 = *(v54 + 80);
      v70 = v55;
      *&v71 = *(v54 + 112);
      v56 = *(v54 + 32);
      *v66 = *(v54 + 16);
      *&v66[16] = v56;
      v57 = *(v54 + 64);
      v67 = *(v54 + 48);
      v68 = v57;
      v58 = *(v53 + 96);
      v76 = *(v53 + 80);
      v77 = v58;
      *&v78 = *(v53 + 112);
      v59 = *(v53 + 32);
      *v73 = *(v53 + 16);
      *&v73[16] = v59;
      v60 = *(v53 + 64);
      v74 = *(v53 + 48);
      v75 = v60;

      v41 = _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(v73, v66);
      goto LABEL_31;
    }

    if (!(v3 >> 60))
    {
      v18 = *(v2 + 56);
      v19 = *(v2 + 48);
      v20 = *(v3 + 48);
      v21 = *(v3 + 56);
      v22 = *(v2 + 32);
      *v73 = *(v2 + 16);
      *&v73[16] = v22;
      *&v74 = v19;
      BYTE8(v74) = v18;
      v23 = *(v3 + 32);
      *v66 = *(v3 + 16);
      *&v66[16] = v23;
      *&v67 = v20;
      BYTE8(v67) = v21;

      v12 = _s8NewsFeed22FormatImageNodeBindingO2eeoiySbAC_ACtFZ_0(v73, v66, v24);

      return v12 & 1;
    }

LABEL_40:
    v12 = 0;
    return v12 & 1;
  }

  if (v4 == 2)
  {
    if (v3 >> 60 != 2)
    {
      goto LABEL_40;
    }

    v32 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v33 = *(v32 + 64);
    v34 = *(v32 + 24);
    v35 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v36 = *(v35 + 16);
    v37 = *(v35 + 24);
    v38 = *(v35 + 64);
    *v73 = *(v32 + 16);
    *&v73[8] = v34;
    v39 = *(v32 + 48);
    *&v73[16] = *(v32 + 32);
    v74 = v39;
    LOBYTE(v75) = v33;
    *v66 = v36;
    *&v66[8] = v37;
    v40 = *(v35 + 48);
    *&v66[16] = *(v35 + 32);
    v67 = v40;
    LOBYTE(v68) = v38;

    v41 = _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(v73, v66);
LABEL_31:
    v12 = v41;

    return v12 & 1;
  }

  if (v4 != 3)
  {
    if (v3 >> 60 != 4)
    {
      goto LABEL_40;
    }

    v45 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v46 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v47 = *(v46 + 96);
    v69 = *(v46 + 80);
    v70 = v47;
    v71 = *(v46 + 112);
    v72 = *(v46 + 128);
    v48 = *(v46 + 32);
    *v66 = *(v46 + 16);
    *&v66[16] = v48;
    v49 = *(v46 + 64);
    v67 = *(v46 + 48);
    v68 = v49;
    v50 = *(v45 + 96);
    v76 = *(v45 + 80);
    v77 = v50;
    v78 = *(v45 + 112);
    v79 = *(v45 + 128);
    v51 = *(v45 + 32);
    *v73 = *(v45 + 16);
    *&v73[16] = v51;
    v52 = *(v45 + 64);
    v74 = *(v45 + 48);
    v75 = v52;

    v41 = _s8NewsFeed17FormatRemoteImageV2eeoiySbAC_ACtFZ_0(v73, v66);
    goto LABEL_31;
  }

  if (v3 >> 60 != 3)
  {
    goto LABEL_40;
  }

  v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v7 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v8 = v3 & 0xFFFFFFFFFFFFFFFLL;
  v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *(v8 + 24);
  v11 = *(v8 + 32);

  v12 = sub_1D6F7F45C(v7, v6, v5, v9, v10, v11, _s8NewsFeed20FormatCommandBindingO2eeoiySbAC_ACtFZ_0, sub_1D6359F24, static FormatAsyncImageContent.== infix(_:_:));

  return v12 & 1;
}

void sub_1D6F7E838(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 32);
  v31 = *(a4 + 16);
  v32 = v10;
  v33[0] = *(a4 + 48);
  *(v33 + 15) = *(a4 + 63);
  v11 = sub_1D688DD04(a1);
  if (!v6)
  {
    v28 = v11;
    v12 = *(a5 + 16);
    if (v12)
    {
      v27 = a6;
      v29 = a2;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1D6998734(0, v12, 0);
      v13 = v34;
      v14 = (a5 + 56);
      do
      {
        v16 = *(v14 - 3);
        v15 = *(v14 - 2);
        v17 = *(v14 - 8);
        v18 = *v14;
        *&v31 = v16;
        *(&v31 + 1) = v15;
        LOBYTE(v32) = v17;
        *(&v32 + 1) = v18;
        sub_1D5D03180(v16, v15, v17);

        sub_1D5D03180(v16, v15, v17);
        v29(&v30, &v32 + 8);
        sub_1D5D07BA8(v16, v15, v17);

        v19 = v30;
        v34 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = v30;
          sub_1D6998734((v20 > 1), v21 + 1, 1);
          v19 = v23;
          v13 = v34;
        }

        v14 += 4;
        *(v13 + 16) = v21 + 1;
        v22 = v13 + 32 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v15;
        *(v22 + 48) = v17;
        *(v22 + 56) = v19;
        --v12;
      }

      while (v12);
      v24 = v13;
      a2 = v29;
      a6 = v27;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v34 = a6;

    a2(&v31, &v34);

    v25 = v31;
    sub_1D6F7F6B0(0, &unk_1EDF0D030, &type metadata for FormatAccessibilityData, type metadata accessor for FormatCommandActionValue);
    v26 = swift_allocObject();
    v26[2] = v28;
    v26[3] = v24;
    v26[4] = v25;
  }
}

void sub_1D6F7EAC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 32);
  v31 = *(a4 + 16);
  v32 = v10;
  v33[0] = *(a4 + 48);
  *(v33 + 15) = *(a4 + 63);
  v11 = sub_1D688DD04(a1);
  if (!v6)
  {
    v28 = v11;
    v12 = *(a5 + 16);
    if (v12)
    {
      v27 = a6;
      v29 = a2;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1D6999050(0, v12, 0);
      v13 = v34;
      v14 = (a5 + 56);
      do
      {
        v16 = *(v14 - 3);
        v15 = *(v14 - 2);
        v17 = *(v14 - 8);
        v18 = *v14;
        *&v31 = v16;
        *(&v31 + 1) = v15;
        LOBYTE(v32) = v17;
        *(&v32 + 1) = v18;
        sub_1D5D03180(v16, v15, v17);

        sub_1D5D03180(v16, v15, v17);
        v29(&v30, &v32 + 8);
        sub_1D5D07BA8(v16, v15, v17);

        v19 = v30;
        v34 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = v30;
          sub_1D6999050((v20 > 1), v21 + 1, 1);
          v19 = v23;
          v13 = v34;
        }

        v14 += 4;
        *(v13 + 16) = v21 + 1;
        v22 = v13 + 32 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v15;
        *(v22 + 48) = v17;
        *(v22 + 56) = v19;
        --v12;
      }

      while (v12);
      v24 = v13;
      a2 = v29;
      a6 = v27;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v34 = a6;

    a2(&v31, &v34);

    v25 = v31;
    sub_1D6F7F6B0(0, &qword_1EDF263B8, &type metadata for FormatImage, type metadata accessor for FormatCommandActionValue);
    v26 = swift_allocObject();
    v26[2] = v28;
    v26[3] = v24;
    v26[4] = v25;
  }
}

void sub_1D6F7ED58(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 32);
  v33 = *(a4 + 16);
  v34 = v10;
  v35[0] = *(a4 + 48);
  *(v35 + 15) = *(a4 + 63);
  v11 = sub_1D688DD04(a1);
  if (!v6)
  {
    v30 = v11;
    v12 = *(a5 + 16);
    if (v12)
    {
      v29 = a6;
      v31 = a2;
      v36 = MEMORY[0x1E69E7CC0];
      sub_1D69991C8(0, v12, 0);
      v13 = v36;
      v14 = (a5 + 56);
      do
      {
        v15 = v13;
        v17 = *(v14 - 3);
        v16 = *(v14 - 2);
        v18 = *(v14 - 8);
        v19 = *v14;
        *&v33 = v17;
        *(&v33 + 1) = v16;
        LOBYTE(v34) = v18;
        *(&v34 + 1) = v19;
        sub_1D5D03180(v17, v16, v18);

        sub_1D5D03180(v17, v16, v18);
        v31(v32, &v34 + 8);
        sub_1D5D07BA8(v17, v16, v18);

        v20 = v32[0];
        v21 = v32[1];
        v13 = v15;
        v36 = v15;
        v22 = *(v15 + 16);
        v23 = *(v13 + 24);
        if (v22 >= v23 >> 1)
        {
          v28 = v32[0];
          sub_1D69991C8((v23 > 1), v22 + 1, 1);
          v20 = v28;
          v13 = v36;
        }

        v14 += 4;
        *(v13 + 16) = v22 + 1;
        v24 = v13 + 40 * v22;
        *(v24 + 32) = v17;
        *(v24 + 40) = v16;
        *(v24 + 48) = v18;
        *(v24 + 56) = v20;
        *(v24 + 64) = v21;
        --v12;
      }

      while (v12);
      v25 = v13;
      a2 = v31;
      a6 = v29;
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    v32[0] = a6;

    a2(&v33, v32);

    v26 = v33;
    sub_1D6F7F6B0(0, &qword_1EDF0D028, MEMORY[0x1E69E6158], type metadata accessor for FormatCommandActionValue);
    v27 = swift_allocObject();
    *(v27 + 16) = v30;
    *(v27 + 24) = v25;
    *(v27 + 32) = v26;
  }
}

void sub_1D6F7EFF8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 32);
  v31 = *(a4 + 16);
  v32 = v10;
  v33[0] = *(a4 + 48);
  *(v33 + 15) = *(a4 + 63);
  v11 = sub_1D688DD04(a1);
  if (!v6)
  {
    v28 = v11;
    v12 = *(a5 + 16);
    if (v12)
    {
      v29 = a2;
      v27 = a6;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1D699A41C(0, v12, 0);
      v13 = v34;
      v14 = (a5 + 56);
      do
      {
        v16 = *(v14 - 3);
        v15 = *(v14 - 2);
        v17 = *(v14 - 8);
        v18 = *v14;
        *&v31 = v16;
        *(&v31 + 1) = v15;
        LOBYTE(v32) = v17;
        *(&v32 + 1) = v18;
        sub_1D5D03180(v16, v15, v17);

        sub_1D5D03180(v16, v15, v17);
        v29(&v30, &v32 + 8);
        sub_1D5D07BA8(v16, v15, v17);

        v19 = v30;
        v34 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = v30;
          sub_1D699A41C((v20 > 1), v21 + 1, 1);
          v19 = v23;
          v13 = v34;
        }

        v14 += 4;
        *(v13 + 16) = v21 + 1;
        v22 = v13 + 32 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v15;
        *(v22 + 48) = v17;
        *(v22 + 56) = v19;
        --v12;
      }

      while (v12);
      v24 = v13;
      a6 = v27;
      a2 = v29;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v34 = a6;

    a2(&v31, &v34);

    v25 = v31;
    sub_1D6F7F6B0(0, &qword_1EC898CD0, &type metadata for FormatMenuGroupableData, type metadata accessor for FormatCommandActionValue);
    v26 = swift_allocObject();
    v26[2] = v28;
    v26[3] = v24;
    v26[4] = v25;
  }
}

uint64_t sub_1D6F7F2E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *(a1 + 32);
  v16[0] = *(a1 + 16);
  v16[1] = v10;
  v17[0] = *(a1 + 48);
  *(v17 + 15) = *(a1 + 63);
  v11 = *(a4 + 32);
  v14[0] = *(a4 + 16);
  v14[1] = v11;
  v15[0] = *(a4 + 48);
  *(v15 + 15) = *(a4 + 63);
  if ((static FormatCommandBinding.== infix(_:_:)(v16, v14) & 1) == 0)
  {
    return 0;
  }

  sub_1D634B39C(a2, a5);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return sub_1D6EEB7F0(a3, a6);
}

uint64_t sub_1D6F7F45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(_OWORD *, _OWORD *), uint64_t (*a8)(uint64_t, uint64_t), uint64_t (*a9)(_OWORD *, _OWORD *))
{
  v14 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v14;
  v21[0] = *(a1 + 48);
  *(v21 + 15) = *(a1 + 63);
  v15 = *(a4 + 32);
  v18[0] = *(a4 + 16);
  v18[1] = v15;
  v19[0] = *(a4 + 48);
  *(v19 + 15) = *(a4 + 63);
  if (a7(v20, v18) & 1) != 0 && (a8(a2, a5))
  {
    *&v20[0] = a3;
    *&v18[0] = a6;
    v16 = a9(v20, v18);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_1D6F7F524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v14;
  v21[0] = *(a1 + 48);
  *(v21 + 15) = *(a1 + 63);
  v15 = *(a5 + 32);
  v18[0] = *(a5 + 16);
  v18[1] = v15;
  v19[0] = *(a5 + 48);
  *(v19 + 15) = *(a5 + 63);
  result = (static FormatCommandBinding.== infix(_:_:)(v20, v18) & 1) != 0 && (sub_1D635A604(a2, a6), (v16 & 1) != 0) && (a3 == a7 && a4 == a8 || (sub_1D72646CC() & 1) != 0);
  return result;
}

unint64_t sub_1D6F7F614(uint64_t a1)
{
  result = sub_1D5B57A00();
  *(a1 + 8) = result;
  return result;
}

void *sub_1D6F7F63C(void *result, uint64_t a2)
{
  if (a2 < 9)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 9)) | 0x9000000000000000;
  }

  return result;
}

void sub_1D6F7F6B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6F7F700(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, ValueMetadata *, unint64_t))
{
  sub_1D6F7F76C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6F7F76C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D62B64C0();
    v7 = a3(a1, &type metadata for FormatOptionsNodeStatementValue, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t Blueprint<>.adGroupData(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v47 = a3;
  v44 = a2;
  v5 = sub_1D72605EC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v40 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v39 = &v39 - v17;
  v18 = *(a1 + 40);
  v48 = v8;
  v45 = *(a1 + 24);
  v49 = v45;
  v50 = v18;
  v19 = sub_1D725D68C();
  v20 = sub_1D726393C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v39 - v23;
  v25 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v39 - v28;
  sub_1D725CE8C();
  sub_1D725CE5C();
  sub_1D725FA7C();

  if ((*(v25 + 48))(v24, 1, v19) == 1)
  {
    (*(v21 + 8))(v24, v20);
    v30 = 1;
    v31 = v47;
  }

  else
  {
    (*(v25 + 32))(v29, v24, v19);
    v32 = v39;
    sub_1D725D61C();
    v33 = v44;
    (*(v44 + 16))(v8, v44);
    v34 = *(v42 + 8);
    v34(v32, v8);
    v35 = v40;
    sub_1D725D61C();
    v46 = (*(v33 + 24))(v8, v33);
    v34(v35, v8);
    v36 = v41;
    sub_1D725D61C();
    (*(v33 + 32))(v8, v33);
    v34(v36, v8);
    v31 = v47;
    sub_1D72605FC();
    (*(v25 + 8))(v29, v19);
    v30 = 0;
  }

  v37 = sub_1D726062C();
  return (*(*(v37 - 8) + 56))(v31, v30, 1, v37);
}

uint64_t Blueprint<>.adGroupData(for:)@<X0>(uint64_t a1@<X1>, void (**a2)(void, void)@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v6 = sub_1D72605EC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v28 - v21;
  v23 = *(a1 + 40);
  v30 = v9;
  v31 = *(a1 + 24);
  v32 = v23;
  sub_1D725D68C();
  sub_1D725D61C();
  a2[2](v9, a2);
  v24 = *(v10 + 8);
  v24(v22, v9);
  sub_1D725D61C();
  a2[3](v9, a2);
  v24(v18, v9);
  sub_1D725D61C();
  a2[4](v9, a2);
  v24(v14, v9);
  v25 = v29;
  sub_1D72605FC();
  v26 = sub_1D726062C();
  return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
}

uint64_t sub_1D6F7FEF4(void *a1)
{
  v3 = v1;
  sub_1D6F82EF0(0, &qword_1EC898D88, sub_1D6F82E9C, &type metadata for A18_V12.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F82E9C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6F82F58(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
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

uint64_t sub_1D6F8013C(uint64_t a1)
{
  v2 = sub_1D6F82E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F80178(uint64_t a1)
{
  v2 = sub_1D6F82E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6F801B4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6F82BFC(a2, v6);
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

uint64_t sub_1D6F80214(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6F828B0();

  return sub_1D725A24C();
}

uint64_t sub_1D6F80290@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6F82EF0(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6F8034C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v113 = a2;
  v115 = a1;
  v99 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v116 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v111 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v128 = &v99 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v99 - v17;
  v19 = sub_1D725895C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for GroupLayoutContext(0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v24);
  v112 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v99 - v28;
  v105 = &v99 - v28;
  v110 = type metadata accessor for GroupLayoutBindingContext(0);
  v106 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v30);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v104 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v115, v32, type metadata accessor for GroupLayoutBindingContext);
  v107 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v113, v29, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v102 = sub_1D725893C();
  v101 = v35;
  (*(v20 + 8))(v23, v19);
  v126 = &type metadata for A18_V12;
  v103 = sub_1D5ECE5D4();
  v127 = v103;
  LOBYTE(v124) = v33;
  *(&v124 + 1) = v34;
  v125 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v36 = swift_allocObject();
  sub_1D5BEE8A0(v34, v5);
  v117[0] = sub_1D7264C5C();
  v117[1] = v37;
  v122 = 95;
  v123 = 0xE100000000000000;
  v120 = 45;
  v121 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v38 = sub_1D7263A6C();
  v40 = v39;

  *(v36 + 16) = v38;
  *(v36 + 24) = v40;
  v41 = (v36 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v42 = v101;
  *v41 = v102;
  v41[1] = v42;
  sub_1D5B68374(&v124, v36 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v43 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v36 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v44 = v110;
  (*(v106 + 56))(v36 + v43, 0, 1, v110);
  v45 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v105, v36 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v46 = *(v108 + 56);
  v108 = v36;
  v46(v36 + v45, 0, 1, v109);
  __swift_destroy_boxed_opaque_existential_1(&v124);
  v126 = &type metadata for A18_V12;
  v127 = v103;
  LOBYTE(v124) = v104;
  *(&v124 + 1) = v34;
  v125 = v5;
  sub_1D5BE3ED8(v113, v112, v107);
  v47 = *(v44 + 56);
  v48 = *(*(v115 + v47) + 16);
  sub_1D5BEE8A0(v34, v5);
  if (v48)
  {
    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if (v49)
    {

      v51 = sub_1D5C14D80(v50);

      if (v51)
      {
        v109 = v47;
        v52 = *(v51 + 16);
        if (v52)
        {
          v53 = 0;
          v54 = MEMORY[0x1E69E7CC0];
          v55 = v114;
          v113 = *(v51 + 16);
          while (v53 < *(v51 + 16))
          {
            v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
            v57 = *(v55 + 72);
            sub_1D5BE3ED8(v51 + v56 + v57 * v53, v18, type metadata accessor for FeedHeadline);
            if ((v18[32] & 4) != 0)
            {
              sub_1D5BDA904(v18, v128, type metadata accessor for FeedHeadline);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v117[0] = v54;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D5C0F91C(0, *(v54 + 2) + 1, 1);
                v55 = v114;
                v54 = v117[0];
              }

              v60 = *(v54 + 2);
              v59 = *(v54 + 3);
              if (v60 >= v59 >> 1)
              {
                sub_1D5C0F91C((v59 > 1), v60 + 1, 1);
                v55 = v114;
                v54 = v117[0];
              }

              *(v54 + 2) = v60 + 1;
              sub_1D5BDA904(v128, &v54[v56 + v60 * v57], type metadata accessor for FeedHeadline);
              v52 = v113;
            }

            else
            {
              sub_1D5BE792C(v18, type metadata accessor for FeedHeadline);
            }

            if (v52 == ++v53)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_60;
        }

        v54 = MEMORY[0x1E69E7CC0];
LABEL_21:
        v65 = v115;
        v66 = *(v115 + *(v110 + 72));
        v67 = *(v115 + *(v110 + 76));
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_63;
        }

        v68 = sub_1D5C0FAD4(v54, v66 - v67);
        v64 = sub_1D5C11E10(&unk_1F5113EA0, v68, v51);

        v47 = v109;
        if (v64)
        {

LABEL_25:
          strcpy(v117, "FeedHeadline");
          BYTE5(v117[1]) = 0;
          HIWORD(v117[1]) = -5120;
          v118 = 0;
          v119 = 0;

          v70 = sub_1D5C107C4(v69);

          sub_1D5BDACA8(v117, v70);

          goto LABEL_26;
        }

        v64 = sub_1D5C11E10(&unk_1F5113EA0, v54, v51);

        if (v64)
        {
          goto LABEL_25;
        }

        v117[0] = &unk_1F5113EA0;
        v4 = v100;
        sub_1D5E239F4(v117);
        if (v4)
        {
          goto LABEL_66;
        }

        v61 = v117[0];
        if (!*(v117[0] + 2))
        {
          __break(1u);
          goto LABEL_57;
        }

LABEL_18:
        v62 = *(v61 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v63, "FeedHeadline");
        *(v63 + 13) = 0;
        *(v63 + 14) = -5120;
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        *(v63 + 32) = 4;
LABEL_44:
        *(v63 + 40) = v62;
        *(v63 + 48) = 0;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        swift_willThrow();
        sub_1D5BE792C(v112, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v124);
        return;
      }
    }
  }

  if (qword_1F5113EC0)
  {
    v117[0] = &unk_1F5113EA0;
    v4 = v100;
    sub_1D5E239F4(v117);
    if (v4)
    {
      goto LABEL_66;
    }

    v61 = v117[0];
    if (!*(v117[0] + 2))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    goto LABEL_18;
  }

  v64 = MEMORY[0x1E69E7CC0];
  v65 = v115;
LABEL_26:
  if (*(*(v65 + v47) + 16))
  {
    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if (v71)
    {

      v73 = sub_1D5C14D80(v72);

      if (v73)
      {
        v128 = v64;
        v74 = *(v73 + 16);
        if (v74)
        {
          v75 = 0;
          v76 = MEMORY[0x1E69E7CC0];
          v77 = v114;
          while (v75 < *(v73 + 16))
          {
            v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
            v79 = *(v77 + 72);
            v80 = v111;
            sub_1D5BE3ED8(v73 + v78 + v79 * v75, v111, type metadata accessor for FeedHeadline);
            sub_1D5BDA904(v80, v116, type metadata accessor for FeedHeadline);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            v117[0] = v76;
            if ((v81 & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v76 + 2) + 1, 1);
              v77 = v114;
              v76 = v117[0];
            }

            v83 = *(v76 + 2);
            v82 = *(v76 + 3);
            if (v83 >= v82 >> 1)
            {
              sub_1D5C0F91C((v82 > 1), v83 + 1, 1);
              v77 = v114;
              v76 = v117[0];
            }

            ++v75;
            *(v76 + 2) = v83 + 1;
            sub_1D5BDA904(v116, &v76[v78 + v83 * v79], type metadata accessor for FeedHeadline);
            if (v74 == v75)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_61;
        }

        v76 = MEMORY[0x1E69E7CC0];
LABEL_47:
        v86 = *(v115 + *(v110 + 72));
        v87 = *(v115 + *(v110 + 76));
        if (__OFSUB__(v86, v87))
        {
          goto LABEL_65;
        }

        v88 = sub_1D5C0FAD4(v76, v86 - v87);
        v89 = sub_1D5C11E10(&unk_1F5113EC8, v88, v73);

        if (v89)
        {

          strcpy(v117, "FeedHeadline");
          BYTE5(v117[1]) = 0;
          HIWORD(v117[1]) = -5120;
          v118 = 0;
          v119 = 0;

          v91 = sub_1D5C107C4(v90);

          sub_1D5BDACA8(v117, v91);

          v85 = v89;
LABEL_52:
          v64 = v128;
          goto LABEL_53;
        }

        v64 = &unk_1F5113EC8;
        v92 = sub_1D5C11E10(&unk_1F5113EC8, v76, v73);

        if (v92)
        {
          strcpy(v117, "FeedHeadline");
          BYTE5(v117[1]) = 0;
          HIWORD(v117[1]) = -5120;
          v118 = 0;
          v119 = 0;

          v94 = sub_1D5C107C4(v93);

          sub_1D5BDACA8(v117, v94);

          v85 = v92;
          goto LABEL_52;
        }

LABEL_57:
        v117[0] = v64;
        v4 = v100;
        sub_1D5E239F4(v117);
        if (!v4)
        {

          v84 = v117[0];
          if (!*(v117[0] + 2))
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          goto LABEL_43;
        }

        goto LABEL_66;
      }
    }
  }

  if (!qword_1F5113EE8 || !qword_1F5113EF0 || !qword_1F5113EF8)
  {

    v85 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v117[0] = v64;
    sub_1D5C122E4(v85);
    v95 = v117[0];
    v96 = type metadata accessor for A18_V12.Bound(0);
    v97 = v99;
    v99[3] = v96;
    v97[4] = sub_1D6F82F58(&qword_1EC898CE8, type metadata accessor for A18_V12.Bound, &unk_1D7379168);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
    *boxed_opaque_existential_1 = v108;
    sub_1D5B63F14(&v124, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v112, boxed_opaque_existential_1 + *(v96 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v96 + 28)) = v95;
    return;
  }

  v117[0] = &unk_1F5113EC8;
  v4 = v100;
  sub_1D5E239F4(v117);
  if (!v4)
  {

    v84 = v117[0];
    if (!*(v117[0] + 2))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_43:
    v62 = *(v84 + 4);

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v63, "FeedHeadline");
    *(v63 + 13) = 0;
    *(v63 + 14) = -5120;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0;
    goto LABEL_44;
  }

LABEL_66:

  __break(1u);
}

uint64_t sub_1D6F8119C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  *&v31 = sub_1D725A36C();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for A18_V12.Bound(0);
  v8 = v1 + *(v7 + 24);
  v9 = type metadata accessor for GroupLayoutContext(0);
  v10 = *(*(v8 + *(v9 + 40)) + 16);
  v11 = *(v8 + *(v9 + 32));
  sub_1D5B68374(v10 + 16, v38);
  sub_1D5B68374(v10 + 56, v37);
  v12 = v11 * *(v10 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v38, inited + 16);
  sub_1D5B63F14(v37, inited + 56);
  *(inited + 96) = v12;
  v36[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v36, v40);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  v14 = *(v2 + *(v7 + 28));
  v35[2] = v2;
  v35[3] = v40;
  v15 = sub_1D5ECA650(sub_1D6F82834, v35, v14);
  *&v38[0] = v15;
  sub_1D5ED1CB0(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context);
  v17 = v16;
  sub_1D5ED1DBC(&qword_1EC880610, MEMORY[0x1E69E6340]);
  v32 = v17;
  v18 = sub_1D7262C1C();
  v19 = *MEMORY[0x1E69D7130];
  v20 = sub_1D7259D1C();
  (*(*(v20 - 8) + 104))(v6, v19, v20);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v31);
  v34 = v18;
  sub_1D6F82958(0, &qword_1EC898D08, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v21 = v39;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5ED1DBC(&qword_1EDF1B248, MEMORY[0x1E69E6328]);
  v22 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v30 = v38[1];
  v31 = v38[0];
  *&v38[0] = v15;
  *&v37[0] = v21;
  MEMORY[0x1EEE9AC00](v22, v23);

  v24 = sub_1D725C00C();

  v25 = v33;
  *v33 = 0;
  v26 = v31;
  *(v25 + 24) = v30;
  *(v25 + 8) = v26;
  *&v38[0] = v24;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v27 = sub_1D72623BC();

  v28 = MEMORY[0x1E69E7CC0];
  *(v25 + 5) = v27;
  *(v25 + 6) = v28;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1D6F81658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6F81730(uint64_t a1, uint64_t a2)
{
  sub_1D6F82EF0(0, &qword_1EC898D20, sub_1D6F8285C, &type metadata for A18_V12.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 18;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6F82958(0, &qword_1EC898D28, MEMORY[0x1E69D7150]);
  sub_1D6F82914(&qword_1EC898D30, &qword_1EC898D28, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D6F8191C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  sub_1D6F82EF0(0, &qword_1EC898D20, sub_1D6F8285C, &type metadata for A18_V12.Layout, MEMORY[0x1E69D74B0]);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v32 = (&v25 - v6);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v31 = *MEMORY[0x1E69D6F50];
    v30 = *MEMORY[0x1E69D73C0];
    v28 = (v5 + 8);
    v29 = (v5 + 104);
    v9 = *MEMORY[0x1E69D74A8];
    v26 = *MEMORY[0x1E69D7098];
    v27 = v9;
    v25 = xmmword_1D7273AE0;
    do
    {
      if (*(*v8 + 16) == 3)
      {
        v38 = v37;
        v10 = sub_1D725994C();
        v11 = swift_allocBox();
        (*(*(v10 - 8) + 104))(v12, v31, v10);
        v13 = v32;
        *v32 = v11;
        v14 = *v29;
        v15 = v36;
        (*v29)(v13, v30, v36);
        v16 = MEMORY[0x1E69D6F38];
        sub_1D6F82958(0, &qword_1EC898D38, MEMORY[0x1E69D6F38]);
        v34 = v17;
        v33 = sub_1D6F82914(&qword_1EC898D40, &qword_1EC898D38, v16, MEMORY[0x1E69D6F40]);

        sub_1D7259A9C();
        v35 = *v28;
        v35(v13, v15);
        v38 = v37;
        v14(v13, v27, v15);
        sub_1D6F829DC(0);
        sub_1D6F82EF0(0, &qword_1EC898D50, sub_1D6F8285C, &type metadata for A18_V12.Layout, MEMORY[0x1E69D70D8]);
        v19 = v18;
        v20 = *(v18 - 8);
        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = v25;
        v23 = (*(v20 + 104))(v22 + v21, v26, v19);
        MEMORY[0x1EEE9AC00](v23, v24);
        sub_1D72599EC();

        v35(v13, v36);
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }
}

void sub_1D6F81D48(uint64_t a1, uint64_t a2)
{
  sub_1D6F82EF0(0, &qword_1EC898D20, sub_1D6F8285C, &type metadata for A18_V12.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = *(v12 + 72);
    v24 = *MEMORY[0x1E69D7490];
    v22 = (v6 + 8);
    v23 = (v6 + 104);
    v21 = v5;
    do
    {
      sub_1D5BE3ED8(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v26 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v23)(v9, v24, v5);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D6F82958(0, &qword_1EC898D38, MEMORY[0x1E69D6F38]);
      sub_1D6F82914(&qword_1EC898D40, &qword_1EC898D38, v20, MEMORY[0x1E69D6F40]);
      sub_1D7259A2C();
      v5 = v21;
      (*v22)(v9, v21);
      sub_1D5BE792C(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v25;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1D6F82074(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = sub_1D725A36C();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v4);
  v41 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D725A19C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadlineViewLayout.Options(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F82EF0(0, &qword_1EC898D20, sub_1D6F8285C, &type metadata for A18_V12.Layout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &KeyPath - v18;
  v44 = a1;
  KeyPath = swift_getKeyPath();
  v20 = *MEMORY[0x1E69D7460];
  v21 = *(v16 + 104);
  v43 = v15;
  v21(v19, v20, v15);
  v22 = v10[7];
  v23 = *MEMORY[0x1E69D7348];
  v24 = sub_1D725A34C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(&v13[v22], v23, v24);
  (*(v25 + 56))(&v13[v22], 0, 1, v24);
  v26 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[8]] = 0;
  v27 = *v26;
  *&v13[v10[9]] = v27;
  v28 = qword_1EDF386E8;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  sub_1D725972C();

  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v39;
  *(&KeyPath - 4) = v38;
  *(&KeyPath - 3) = v13;
  v36 = v8;
  (*(v3 + 104))(v41, *MEMORY[0x1E69D7378], v33, v32);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v40 + 8))(v8, v42);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  v34 = MEMORY[0x1E69D6F38];
  sub_1D6F82958(0, &qword_1EC898D38, MEMORY[0x1E69D6F38]);
  sub_1D6F82914(&qword_1EC898D40, &qword_1EC898D38, v34, MEMORY[0x1E69D6F40]);
  v36 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v16 + 8))(v19, v43);
}

uint64_t sub_1D6F8257C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V12.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6F82690(uint64_t a1)
{
  *(a1 + 8) = sub_1D6F826C0();
  result = sub_1D6F82714();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6F826C0()
{
  result = qword_1EC898CD8;
  if (!qword_1EC898CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898CD8);
  }

  return result;
}

unint64_t sub_1D6F82714()
{
  result = qword_1EC898CE0;
  if (!qword_1EC898CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898CE0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V12.Bound(uint64_t a1)
{
  result = qword_1EC898CF0;
  if (!qword_1EC898CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6F827DC(uint64_t a1)
{
  result = sub_1D6F82F58(&qword_1EC898D00, type metadata accessor for A18_V12.Bound, &unk_1D7379140);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F8285C()
{
  result = qword_1EC898D10;
  if (!qword_1EC898D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D10);
  }

  return result;
}

unint64_t sub_1D6F828B0()
{
  result = qword_1EC898D18;
  if (!qword_1EC898D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D18);
  }

  return result;
}

uint64_t sub_1D6F82914(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6F82958(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6F82958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V12.Layout;
    v8[1] = &type metadata for A18_V12.Layout.Attributes;
    v8[2] = sub_1D6F8285C();
    v8[3] = sub_1D6F828B0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6F829DC(uint64_t a1)
{
  if (!qword_1EC898D48)
  {
    sub_1D6F82EF0(255, &qword_1EC898D50, sub_1D6F8285C, &type metadata for A18_V12.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC898D48);
    }
  }
}

unint64_t sub_1D6F82AA0()
{
  result = qword_1EC898D58;
  if (!qword_1EC898D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D58);
  }

  return result;
}

unint64_t sub_1D6F82AF8()
{
  result = qword_1EC898D60;
  if (!qword_1EC898D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D60);
  }

  return result;
}

unint64_t sub_1D6F82B50()
{
  result = qword_1EC898D68;
  if (!qword_1EC898D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D68);
  }

  return result;
}

unint64_t sub_1D6F82BA8()
{
  result = qword_1EC898D70;
  if (!qword_1EC898D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D70);
  }

  return result;
}

uint64_t sub_1D6F82BFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6F82EF0(0, &qword_1EC898D78, sub_1D6F82E9C, &type metadata for A18_V12.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F82E9C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6F82F58(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6F82E9C()
{
  result = qword_1EC898D80;
  if (!qword_1EC898D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D80);
  }

  return result;
}

void sub_1D6F82EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6F82F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6F82FB4()
{
  result = qword_1EC898D90;
  if (!qword_1EC898D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D90);
  }

  return result;
}

unint64_t sub_1D6F8300C()
{
  result = qword_1EC898D98;
  if (!qword_1EC898D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898D98);
  }

  return result;
}

unint64_t sub_1D6F83064()
{
  result = qword_1EC898DA0;
  if (!qword_1EC898DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898DA0);
  }

  return result;
}

uint64_t FormatAnimationData.deinit()
{

  return v0;
}

uint64_t FormatAnimationData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D6F83174(uint64_t a1)
{
  result = sub_1D6F8319C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F8319C()
{
  result = qword_1EC898DA8;
  if (!qword_1EC898DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898DA8);
  }

  return result;
}

unint64_t sub_1D6F831F0(void *a1)
{
  a1[1] = sub_1D66F3AF0();
  a1[2] = sub_1D66F3850();
  result = sub_1D6F83228();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F83228()
{
  result = qword_1EC898DB0;
  if (!qword_1EC898DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898DB0);
  }

  return result;
}

uint64_t FeedRecipeClusteringService.__allocating_init(clusteringService:personalizationService:recipeService:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1D5B63F14(a2, v6 + 24);
  sub_1D5B63F14(a3, v6 + 64);
  return v6;
}

uint64_t FeedRecipeClusteringService.init(clusteringService:personalizationService:recipeService:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_1D5B63F14(a2, v3 + 24);
  sub_1D5B63F14(a3, v3 + 64);
  return v3;
}

uint64_t FeedRecipeClusteringService.createClusters(request:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(type metadata accessor for FeedClusteringRequest(0) - 8);
  v3[13] = v4;
  v3[14] = *(v4 + 64);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6F8342C, 0, 0);
}

uint64_t sub_1D6F8342C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  v5 = *(v0[12] + 16);
  v6 = sub_1D701C8D4(v4);
  sub_1D6F84BC8(0);
  sub_1D725BDCC();
  sub_1D6F84D04(v4, v1);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  sub_1D6F84D68(v1, v8 + v7);
  *(v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D6F84DCC;
  *(v9 + 24) = v8;

  v10 = v6;
  v11 = sub_1D725B92C();
  v0[16] = sub_1D725BA7C();

  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1D6F83604;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D6F83604()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D6F83950;
  }

  else
  {

    v2 = sub_1D6F83720;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F83720()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 48) = v1;
  *(v0 + 168) = v3;
  *(v0 + 176) = v4;
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_1D6F837DC;
  v6 = *(v0 + 80);

  return sub_1D6F83A4C(v6, (v0 + 48));
}

uint64_t sub_1D6F837DC()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F839BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6F83950()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6F839BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6F83A4C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = a2[1];
  *(v3 + 40) = *a2;
  *(v3 + 56) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D6F83A78, 0, 0);
}

void sub_1D6F83A78()
{
  v229 = v0;
  v223 = *(v0 + 48);
  FeedChannelClusteringResult.scoredItems.getter();
  v2 = v1;
  v227[1] = *(&v223 + 1);
  FeedTopicClusteringResult.scoredItems.getter();
  v228 = v2;
  sub_1D6985340(v3);
  v201 = v0;
  *(v0 + 16) = v2;
  sub_1D6155CCC();
  sub_1D6155D1C();
  sub_1D6155D74();
  v4 = sub_1D726239C();

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v227[0] = MEMORY[0x1E69E7CC0];
  v7 = *(v4 + 16);
LABEL_2:
  v8 = 24 * v5 + 32;
  while (1)
  {
    if (v7 == v5)
    {

      if (v6 >> 62)
      {
        goto LABEL_37;
      }

      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v201;
      if (v12)
      {
        goto LABEL_11;
      }

LABEL_38:
      v15 = MEMORY[0x1E69E7CC8];
LABEL_39:
      v42 = v13[5];
      v43 = v13;

      v202 = v42;
      v44 = *(v42 + 16);
      v45 = MEMORY[0x1E69E7CC0];
      v217 = v15;
      if (v44)
      {
        v46 = v43[5];
        v197 = v43[4];
        v228 = MEMORY[0x1E69E7CC0];
        sub_1D6999698(0, v44, 0);
        v47 = 0;
        v48 = v228;
        v199 = v46 + 32;
        v195 = v44;
        while (1)
        {
          if (v47 >= *(v202 + 16))
          {
            goto LABEL_133;
          }

          v211 = v48;
          v49 = (v199 + 24 * v47);
          v50 = v49[1];
          v51 = v49[2];
          isa = v50[2].isa;
          v207 = *v49;
          swift_unknownObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v209 = v51;
          if (!isa)
          {
            v213 = v45;
            goto LABEL_64;
          }

          v53 = 0;
          v220 = -isa;
          v54 = v50 + 6;
          v213 = v45;
          v205 = v47;
          log = v50;
          v193 = v50 + 6;
          while (2)
          {
            p_isa = &v54[3 * v53++].isa;
            while (1)
            {
              if ((v53 - 1) >= v50[2].isa)
              {
                __break(1u);
LABEL_131:
                __break(1u);
                goto LABEL_132;
              }

              v56 = *(p_isa - 2);
              v57 = *(p_isa - 1);
              v58 = *p_isa;
              swift_unknownObjectRetain();
              v59 = v57;
              v60 = [v56 itemID];
              v61 = sub_1D726207C();
              v63 = v62;

              if (!*(v15 + 16))
              {

                goto LABEL_52;
              }

              v64 = sub_1D5B69D90(v61, v63);
              v66 = v65;

              if (v66)
              {
                break;
              }

LABEL_52:
              v224 = v53;
              if (qword_1EC87DC60 != -1)
              {
                swift_once();
              }

              v67 = sub_1D725C42C();
              __swift_project_value_buffer(v67, qword_1EC9BADA8);
              swift_unknownObjectRetain();
              v68 = v59;
              v69 = v58;
              v70 = sub_1D725C3FC();
              v71 = sub_1D7262EBC();
              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                v218 = v68;
                v73 = swift_slowAlloc();
                v227[0] = v73;
                *v72 = 136315138;
                v74 = [v56 itemID];
                v75 = sub_1D726207C();
                v77 = v76;

                swift_unknownObjectRelease();
                v78 = sub_1D5BC5100(v75, v77, v227);

                *(v72 + 4) = v78;
                v50 = log;
                _os_log_impl(&dword_1D5B42000, v70, v71, "Unable to find recipe with %s after clustering", v72, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v73);
                MEMORY[0x1DA6FD500](v73, -1, -1);
                MEMORY[0x1DA6FD500](v72, -1, -1);
                swift_unknownObjectRelease();

                v15 = v217;
              }

              else
              {
                swift_unknownObjectRelease_n();
              }

              v53 = v224 + 1;
              p_isa += 3;
              if (v220 + v224 + 1 == 1)
              {
                v44 = v195;
                v47 = v205;
                goto LABEL_64;
              }
            }

            v79 = *(*(v15 + 56) + 8 * v64);
            swift_unknownObjectRelease();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v81 = v50;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v213 = sub_1D698F9BC(0, v213[2] + 1, 1, v213);
            }

            v54 = v193;
            v44 = v195;
            v47 = v205;
            v83 = v213[2];
            v82 = v213[3];
            if (v83 >= v82 >> 1)
            {
              v85 = sub_1D698F9BC((v82 > 1), v83 + 1, 1, v213);
              v54 = v193;
              v213 = v85;
            }

            v213[2] = v83 + 1;
            v84 = &v213[2 * v83];
            v84[4] = v79;
            v84[5] = v59;
            v50 = v81;
            if (v220 + v53)
            {
              continue;
            }

            break;
          }

LABEL_64:

          v87 = v197[6];
          v86 = v197[7];
          __swift_project_boxed_opaque_existential_1(v197 + 3, v87);
          v88 = *(v86 + 96);
          v89 = sub_1D5B5A498(0, &unk_1EDF04660, 0x1E69B5580);
          v90 = v88(v213, v89, v87, v86);
          swift_unknownObjectRelease();

          v91 = v209;

          v48 = v211;
          v228 = v211;
          v93 = *(v211 + 16);
          v92 = *(v211 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_1D6999698((v92 > 1), v93 + 1, 1);
            v91 = v209;
            v48 = v228;
          }

          ++v47;
          *(v48 + 16) = v93 + 1;
          v94 = (v48 + 24 * v93);
          v94[4] = v207;
          v94[5] = v90;
          v94[6] = v91;
          v45 = MEMORY[0x1E69E7CC0];
          if (v47 == v44)
          {
            v212 = v48;
            goto LABEL_69;
          }
        }
      }

      v212 = MEMORY[0x1E69E7CC0];
LABEL_69:
      v95 = v201;
      v96 = v201[6];
      v97 = *(v96 + 16);
      v98 = MEMORY[0x1E69E7CC0];
      if (v97)
      {
        v194 = v201[4];
        v228 = MEMORY[0x1E69E7CC0];
        sub_1D6997C00(0, v97, 0);
        v99 = 0;
        v100 = v228;
        v200 = v96 + 32;
        v196 = v97;
        v198 = v96;
        while (v99 < *(v96 + 16))
        {
          v101 = (v200 + 24 * v99);
          v102 = v101[1];
          v206 = v101[2];
          v208 = v99;
          v103 = *(v102 + 16);
          v210 = *v101;
          swift_unknownObjectRetain_n();
          swift_bridgeObjectRetain_n();
          if (v103)
          {
            v104 = 0;
            v219 = -v103;
            v221 = v102;
            v105 = v102 + 48;
            v214 = v98;
            v203 = v100;
            v192 = v102 + 48;
LABEL_74:
            v106 = (v105 + 24 * v104++);
            while ((v104 - 1) < *(v102 + 16))
            {
              v108 = *(v106 - 2);
              v107 = *(v106 - 1);
              v109 = *v106;
              swift_unknownObjectRetain();
              v110 = v107;
              v111 = [v108 itemID];
              v112 = sub_1D726207C();
              v114 = v113;

              if (*(v15 + 16))
              {
                v115 = sub_1D5B69D90(v112, v114);
                v117 = v116;

                if (v117)
                {
                  v132 = *(*(v15 + 56) + 8 * v115);
                  swift_unknownObjectRelease();

                  v133 = swift_isUniquelyReferenced_nonNull_native();
                  if ((v133 & 1) == 0)
                  {
                    v214 = sub_1D698F9BC(0, v214[2] + 1, 1, v214);
                  }

                  v100 = v203;
                  v98 = MEMORY[0x1E69E7CC0];
                  v102 = v221;
                  v135 = v214[2];
                  v134 = v214[3];
                  v105 = v192;
                  if (v135 >= v134 >> 1)
                  {
                    v137 = sub_1D698F9BC((v134 > 1), v135 + 1, 1, v214);
                    v105 = v192;
                    v214 = v137;
                  }

                  v214[2] = v135 + 1;
                  v136 = &v214[2 * v135];
                  v136[4] = v132;
                  v136[5] = v110;
                  if (v219 + v104)
                  {
                    goto LABEL_74;
                  }

                  goto LABEL_94;
                }
              }

              else
              {
              }

              v225 = v104;
              if (qword_1EC87DC60 != -1)
              {
                swift_once();
              }

              v118 = sub_1D725C42C();
              __swift_project_value_buffer(v118, qword_1EC9BADA8);
              swift_unknownObjectRetain();
              v119 = v110;
              v120 = v109;
              v121 = sub_1D725C3FC();
              v122 = sub_1D7262EBC();
              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v227[0] = v124;
                *v123 = 136315138;
                loga = v121;
                v125 = v119;
                v126 = [v108 itemID];
                v127 = sub_1D726207C();
                v129 = v128;

                swift_unknownObjectRelease();
                v130 = v127;
                v15 = v217;
                v131 = sub_1D5BC5100(v130, v129, v227);

                *(v123 + 4) = v131;
                _os_log_impl(&dword_1D5B42000, loga, v122, "Unable to find recipe with %s after clustering", v123, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v124);
                MEMORY[0x1DA6FD500](v124, -1, -1);
                MEMORY[0x1DA6FD500](v123, -1, -1);
                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease_n();
              }

              v102 = v221;
              v104 = v225 + 1;
              v106 += 3;
              if (v219 + v225 + 1 == 1)
              {
                v100 = v203;
                v98 = MEMORY[0x1E69E7CC0];
                goto LABEL_94;
              }
            }

            goto LABEL_131;
          }

          v214 = v98;
LABEL_94:

          v139 = v194[6];
          v138 = v194[7];
          __swift_project_boxed_opaque_existential_1(v194 + 3, v139);
          v140 = *(v138 + 96);
          v141 = sub_1D5B5A498(0, &unk_1EDF04660, 0x1E69B5580);
          v142 = v140(v214, v141, v139, v138);
          v143 = v210;
          swift_unknownObjectRelease();

          v228 = v100;
          v145 = *(v100 + 16);
          v144 = *(v100 + 24);
          if (v145 >= v144 >> 1)
          {
            sub_1D6997C00((v144 > 1), v145 + 1, 1);
            v143 = v210;
            v100 = v228;
          }

          v99 = v208 + 1;
          *(v100 + 16) = v145 + 1;
          v146 = (v100 + 24 * v145);
          v146[4] = v143;
          v146[5] = v142;
          v146[6] = v206;
          v96 = v198;
          if (v208 + 1 == v196)
          {
            v95 = v201;
            goto LABEL_99;
          }
        }
      }

      else
      {
        v100 = MEMORY[0x1E69E7CC0];
LABEL_99:
        v204 = v100;
        v147 = v95[7];
        v148 = *(v147 + 16);
        if (v148)
        {
          v149 = 0;
          v226 = -v148;
          v150 = v147 + 48;
          v222 = MEMORY[0x1E69E7CC0];
LABEL_101:
          v151 = (v150 + 24 * v149++);
          while ((v149 - 1) < *(v147 + 16))
          {
            v153 = *(v151 - 2);
            v152 = *(v151 - 1);
            v154 = *v151;
            swift_unknownObjectRetain();
            v155 = v152;
            v156 = [v153 itemID];
            v157 = sub_1D726207C();
            v158 = v15;
            v160 = v159;

            if (*(v158 + 16))
            {
              v161 = sub_1D5B69D90(v157, v160);
              v163 = v162;

              if (v163)
              {
                v15 = v217;
                v164 = *(*(v217 + 56) + 8 * v161);
                swift_unknownObjectRelease();

                v165 = v222;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v165 = sub_1D698F9BC(0, v222[2] + 1, 1, v222);
                }

                v167 = v165[2];
                v166 = v165[3];
                v95 = v201;
                if (v167 >= v166 >> 1)
                {
                  v169 = sub_1D698F9BC((v166 > 1), v167 + 1, 1, v165);
                  v95 = v201;
                  v165 = v169;
                }

                v165[2] = v167 + 1;
                v222 = v165;
                v168 = &v165[2 * v167];
                v168[4] = v164;
                v168[5] = v155;
                v150 = v147 + 48;
                if (v226 + v149)
                {
                  goto LABEL_101;
                }

                goto LABEL_115;
              }
            }

            else
            {
            }

            swift_unknownObjectRelease();

            ++v149;
            v151 += 3;
            v15 = v217;
            if (v226 + v149 == 1)
            {
              v95 = v201;
              goto LABEL_115;
            }
          }
        }

        else
        {
          v222 = MEMORY[0x1E69E7CC0];
LABEL_115:
          v170 = v95[8];

          sub_1D6F84F1C();
          v171 = sub_1D72640FC();
          v172 = v171;
          v173 = 0;
          v174 = 1 << *(v170 + 32);
          v175 = -1;
          if (v174 < 64)
          {
            v175 = ~(-1 << v174);
          }

          v176 = v175 & *(v170 + 64);
          v177 = (v174 + 63) >> 6;
          v178 = v171 + 64;
          while (v176)
          {
            v179 = __clz(__rbit64(v176));
            v176 &= v176 - 1;
LABEL_124:
            v182 = v179 | (v173 << 6);
            v183 = (*(v170 + 48) + 16 * v182);
            v185 = *v183;
            v184 = v183[1];
            v186 = (v172[6] + 16 * v182);
            v187 = *(*(v170 + 56) + 16 * v182);
            *(v178 + ((v182 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v182;
            *v186 = v185;
            v186[1] = v184;
            *(v172[7] + 16 * v182) = v187;
            v188 = v172[2];
            v33 = __OFADD__(v188, 1);
            v189 = v188 + 1;
            if (v33)
            {
              goto LABEL_136;
            }

            v172[2] = v189;
          }

          v180 = v173;
          while (1)
          {
            v173 = v180 + 1;
            if (__OFADD__(v180, 1))
            {
              break;
            }

            if (v173 >= v177)
            {
              v190 = v201[3];
              *v190 = v212;
              v190[1] = v204;
              v190[2] = v222;
              v190[3] = v172;
              v191 = v201[1];

              v191();
              return;
            }

            v181 = *(v170 + 64 + 8 * v173);
            ++v180;
            if (v181)
            {
              v179 = __clz(__rbit64(v181));
              v176 = (v181 - 1) & v181;
              goto LABEL_124;
            }
          }

LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
        }

        __break(1u);
      }

      __break(1u);
LABEL_136:
      __break(1u);
      return;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = v8 + 24;
    ++v5;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v8 = v9;
    if (v10)
    {
      v11 = swift_unknownObjectRetain();
      MEMORY[0x1DA6F9CE0](v11);
      if (*((v227[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v6 = v227[0];
      goto LABEL_2;
    }
  }

  __break(1u);
  while (2)
  {
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v12 = sub_1D7263BFC();
      v13 = v201;
      if (!v12)
      {
        goto LABEL_38;
      }

LABEL_11:
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC8];
LABEL_14:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA6FB460](v14, v6);
      }

      else
      {
        if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          continue;
        }

        v19 = *(v6 + 8 * v14 + 32);
      }

      break;
    }

    v20 = v19;
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      continue;
    }

    break;
  }

  v22 = [v19 identifier];
  v23 = sub_1D726207C();
  v24 = v15;
  v26 = v25;

  v27 = v20;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v227[0] = v24;
  v29 = sub_1D5B69D90(v23, v26);
  v31 = *(v24 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    goto LABEL_35;
  }

  v35 = v30;
  if (*(v24 + 24) >= v34)
  {
    if ((v28 & 1) == 0)
    {
      v41 = v29;
      sub_1D6D87070();
      v29 = v41;
      if ((v35 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

LABEL_23:
    if ((v35 & 1) == 0)
    {
LABEL_24:
      v37 = v227[0];
      *(v227[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v38 = (*(v37 + 48) + 16 * v29);
      *v38 = v23;
      v38[1] = v26;
      v15 = v37;
      *(*(v37 + 56) + 8 * v29) = v27;

      v39 = *(v15 + 16);
      v33 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v33)
      {
        goto LABEL_36;
      }

      *(v15 + 16) = v40;
      goto LABEL_13;
    }

LABEL_12:
    v16 = v29;

    v15 = v227[0];
    v17 = *(v227[0] + 56);
    v18 = *(v17 + 8 * v16);
    *(v17 + 8 * v16) = v27;

LABEL_13:
    ++v14;
    v13 = v201;
    if (v21 == v12)
    {
      goto LABEL_39;
    }

    goto LABEL_14;
  }

  sub_1D6D75F84(v34, v28);
  v29 = sub_1D5B69D90(v23, v26);
  if ((v35 & 1) == (v36 & 1))
  {
    goto LABEL_23;
  }

  sub_1D726493C();
}

uint64_t FeedRecipeClusteringService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t FeedRecipeClusteringService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_1D6F84BC8(uint64_t a1)
{
  if (!qword_1EDF04560)
  {
    sub_1D5B5A498(255, &qword_1EDF04568, 0x1E69B55F8);
    sub_1D6F84C48(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04560);
    }
  }
}

void sub_1D6F84C48(uint64_t a1)
{
  if (!qword_1EDF044A0)
  {
    sub_1D6F84CA0();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF044A0);
    }
  }
}

unint64_t sub_1D6F84CA0()
{
  result = qword_1EDF044A8;
  if (!qword_1EDF044A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF044A8);
  }

  return result;
}

uint64_t sub_1D6F84D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedClusteringRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F84D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedClusteringRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F84DCC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FeedClusteringRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1D701CB24(a1, a2, v8, v2 + v6, v7);
}

void sub_1D6F84F1C()
{
  if (!qword_1EDF040C0)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF040C0);
    }
  }
}

uint64_t TagServiceType.fetchTags(for:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultCachePolicy];
  v9 = (*(a4 + 32))(a1, v8, a2, a3, a4);

  return v9;
}

uint64_t TagService.__allocating_init(tagController:subscriptionController:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TagServiceType.fetchTags(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() defaultCachePolicy];
  v7 = (*(a3 + 24))(a1, v6, a2, a3);

  return v7;
}

uint64_t TagServiceType.fetchTags(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = FCCurrentQoSOrUtilityIfMain();
  v9 = *(a4 + 32);

  return v9(a1, a2, v8, a3, a4);
}

uint64_t TagServiceType.fetchSubscribedTags()(uint64_t a1, uint64_t a2)
{
  v4 = FCCurrentQoSOrUtilityIfMain();
  v5 = *(a2 + 48);

  return v5(v4, a1, a2);
}

uint64_t TagService.init(tagController:subscriptionController:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TagService.fetchTag(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D5C3C480();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = objc_opt_self();

  v6 = [v5 defaultCachePolicy];
  v7 = FCCurrentQoSOrUtilityIfMain();
  sub_1D6F85E14(v4, v6, v7);

  v8 = sub_1D725B92C();
  sub_1D5B65AF4();
  v9 = sub_1D725BA7C();

  return v9;
}

unint64_t *sub_1D6F852FC(unint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D6F860D8();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6FB460](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    sub_1D6F85DB0(0, &qword_1EDF17930, sub_1D5B65AF4, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}

uint64_t TagService.fetchTags(for:cachePolicy:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1D6F85DB0(0, &unk_1EDF3B920, sub_1D5C44878, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D6F8549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a5 + 16);

  sub_1D5B7E810(a6);
  v18 = sub_1D726265C();

  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = sub_1D6F05050;
  v19[5] = v16;
  v19[6] = a6;
  v21[4] = sub_1D6F860C8;
  v21[5] = v19;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1D6F85830;
  v21[3] = &block_descriptor_16_4;
  v20 = _Block_copy(v21);

  [v17 fetchTagsForTagIDs:v18 cachePolicy:a7 qualityOfService:a8 completionHandler:v20];
  _Block_release(v20);
}

void sub_1D6F8562C(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v9 = a2;
    a3(a2);
    v10 = a2;
LABEL_3:

    return;
  }

  if (!a1)
  {
    sub_1D6F860D8();
    v23 = swift_allocError();
    *v24 = 0;
    (a3)();
    v10 = v23;
    goto LABEL_3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v14 = *(a7 + 16);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = 0;
  v16 = a7 + 40;
  v25 = a7 + 40;
  do
  {
    v17 = (v16 + 16 * v15);
    v18 = v15;
    while (1)
    {
      if (v18 >= v14)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (*(a1 + 16))
      {
        break;
      }

LABEL_10:
      ++v18;
      v17 += 2;
      if (v15 == v14)
      {
        goto LABEL_19;
      }
    }

    v19 = *(v17 - 1);
    v20 = *v17;

    sub_1D5B69D90(v19, v20);
    if ((v21 & 1) == 0)
    {

      goto LABEL_10;
    }

    swift_unknownObjectRetain();

    MEMORY[0x1DA6F9CE0](v22);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v16 = v25;
    v13 = v26;
  }

  while (v15 != v14);
LABEL_19:
  a5(v13);
}

double sub_1D6F85830(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B65AF4();
    v4 = sub_1D7261D3C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_1D6F858EC(SEL *a1)
{
  v2 = [*(v1 + 24) *a1];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = sub_1D726267C();

  return v4;
}

uint64_t TagService.fetchSubscribedTags(qualityOfService:)(uint64_t a1, __n128 a2)
{
  sub_1D6F85DB0(0, &qword_1EDF17920, sub_1D6F85FB8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D6F859D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 24);

  v14 = sub_1D5B6E180(a6);
  v15 = swift_allocObject();
  v15[2] = sub_1D5B7E910;
  v15[3] = v12;
  v15[4] = a3;
  v15[5] = a4;
  v17[4] = sub_1D6F860BC;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D6DC0B78;
  v17[3] = &block_descriptor_121;
  v16 = _Block_copy(v17);

  [v13 fetchAllTagsWithCallbackQueue:v14 maximumCachedAge:a6 qualityOfService:v16 completion:1.79769313e308];
  _Block_release(v16);
}

void sub_1D6F85B34(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(id))
{
  if (a1)
  {
    v10 = a1;
    a3();
    v6 = v10;

LABEL_4:

    return;
  }

  if (a2)
  {
    v9 = a2;
    a5(a2);
    v6 = a2;

    goto LABEL_4;
  }
}

uint64_t TagService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F85C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() defaultCachePolicy];
  v7 = FCCurrentQoSOrUtilityIfMain();
  v8 = (*(a3 + 32))(a1, v6, v7, a2, a3);

  return v8;
}

void sub_1D6F85DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6F85E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6F85DB0(0, &unk_1EDF3B920, sub_1D5C44878, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D6F85EB4(uint64_t a1)
{
  sub_1D6F85DB0(0, &qword_1EDF17920, sub_1D6F85FB8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D6F85F50(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 24) *a3];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1D726267C();

  return v6;
}

unint64_t sub_1D6F85FB8()
{
  result = qword_1EDF04568;
  if (!qword_1EDF04568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF04568);
  }

  return result;
}

unint64_t sub_1D6F860D8()
{
  result = qword_1EC898E28;
  if (!qword_1EC898E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E28);
  }

  return result;
}

unint64_t sub_1D6F86140()
{
  result = qword_1EC898E38;
  if (!qword_1EC898E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E38);
  }

  return result;
}

unint64_t sub_1D6F861A4()
{
  result = qword_1EDF22040;
  if (!qword_1EDF22040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22040);
  }

  return result;
}

unint64_t sub_1D6F861F8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6F86234(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D6F86234(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t SportsDataVisualization.kind.getter()
{
  v1 = *v0 >> 61;
  v2 = 0x65726F6373;
  v3 = 0x65527972756A6E69;
  if (v1 != 5)
  {
    v3 = 0x6579616C5079656BLL;
  }

  v4 = 0x65726F6353786F62;
  if (v1 != 3)
  {
    v4 = 0x726F6353656E696CLL;
  }

  if (v1 <= 4)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E617473;
  if (v1 != 1)
  {
    v5 = 0x74656B63617262;
  }

  if (v1)
  {
    v2 = v5;
  }

  if (v1 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SportsDataVisualization.umcCanonicalId.getter()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 <= 2)
  {
    if (v2)
    {
      v1 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v2 != 1)
      {

        v3 = SportsBracketGroupDataVisualization.umcCanonicalId.getter();

        return v3;
      }
    }

    v3 = *(*(v1 + 16) + 40);
  }

  else
  {
    v3 = *(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 32);
  }

  return v3;
}

uint64_t SportsDataVisualization.urlDataSources.getter(uint64_t a1)
{
  sub_1D6F88478();
}

uint64_t SportsDataVisualization.identifier.getter()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 <= 2)
  {
    if (!v2)
    {
      v4 = *(v1 + 16);
      v5 = 0x3A3A65726F6373;
      v7 = 0xE700000000000000;
      goto LABEL_15;
    }

    v6 = v1 & 0x1FFFFFFFFFFFFFFFLL;
    if (v2 != 1)
    {
      v11 = *(v6 + 16);
      strcpy(v13, "bracket::");
      WORD1(v13[1]) = 0;
      HIDWORD(v13[1]) = -385875968;
      v9 = *(v11 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_identifier);
      v10 = *(v11 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_identifier + 8);
LABEL_16:

      goto LABEL_17;
    }

    v4 = *(v6 + 16);
    v5 = 0x676E69646E617473;
LABEL_8:
    v7 = 0xEA00000000003A3ALL;
LABEL_15:
    v13[0] = v5;
    v13[1] = v7;
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    goto LABEL_16;
  }

  v3 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v2 <= 4)
  {
    if (v2 != 3)
    {
      v4 = *(v3 + 16);
      v5 = 0x726F6353656E696CLL;
      v7 = 0xEB000000003A3A65;
      goto LABEL_15;
    }

    v4 = *(v3 + 16);
    v5 = 0x65726F6353786F62;
    goto LABEL_8;
  }

  if (v2 != 5)
  {
    v4 = *(v3 + 16);
    v5 = 0x6579616C5079656BLL;
    v7 = 0xEB000000003A3A72;
    goto LABEL_15;
  }

  v8 = *(v3 + 16);

  sub_1D7263D4C();

  strcpy(v13, "injuryReport::");
  HIBYTE(v13[1]) = -18;
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
LABEL_17:

  MEMORY[0x1DA6F9910](v9, v10);

  return v13[0];
}

double SportsDataVisualization.event.getter()
{
  v1 = *v0 >> 61;
  if (v1 > 3 || (v1 - 1) >= 2)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

void SportsDataVisualization.config.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 <= 2)
  {
    if (v3)
    {
      v6 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      if (v3 != 1)
      {
        sub_1D6F89DD8(0, &qword_1EDF3B8A0, sub_1D5E4CFF4, &qword_1EDF1AF80, sub_1D5E4CFF4);

        sub_1D725BE8C();

        v8 = *(v21 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
        v9 = *(v21 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
        v10 = *(v21 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
        v11 = *(v21 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
        v12 = *(v21 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
        v13 = *(v21 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
        sub_1D5F8B638(v8, v9, v10);

        *a1 = v8;
        a1[1] = v9;
        a1[2] = v10;
        a1[3] = v11;
        a1[4] = v12;
        a1[5] = v13;
        return;
      }

      v4 = *(v6 + 16);
      v5 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config;
    }

    else
    {
      v4 = *(v2 + 16);
      v5 = &OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config;
    }
  }

  else if (v3 > 4)
  {
    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v3 == 5)
    {
      v5 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config;
    }
  }

  else
  {
    if (v3 != 3)
    {
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
      return;
    }

    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config;
  }

  v14 = (v4 + *v5);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  v20 = v14[5];
  *a1 = *v14;
  a1[1] = v16;
  a1[2] = v17;
  a1[3] = v18;
  a1[4] = v19;
  a1[5] = v20;

  sub_1D5F8B638(v15, v16, v17);
}

uint64_t SportsDataVisualization.partialSelector.getter()
{
  v1 = *v0 >> 61;
  v2 = 0x65726F6373;
  v3 = 0x722D7972756A6E69;
  if (v1 != 5)
  {
    v3 = 0x79616C702D79656BLL;
  }

  v4 = 0x726F63732D786F62;
  if (v1 != 3)
  {
    v4 = 0x6F63732D656E696CLL;
  }

  if (v1 <= 4)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E617473;
  if (v1 != 1)
  {
    v5 = 0x74656B63617262;
  }

  if (v1)
  {
    v2 = v5;
  }

  if (v1 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void SportsDataVisualization.configuredEmbedUrl.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      v8 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 != 1)
      {
        sub_1D6F89DD8(0, &qword_1EDF3B8A0, sub_1D5E4CFF4, &qword_1EDF1AF80, sub_1D5E4CFF4);

        sub_1D725BE8C();

        v9 = OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl;
        v10 = sub_1D72585BC();
        (*(*(v10 - 8) + 16))(a1, v14 + v9, v10);

        return;
      }

      v6 = *(v8 + 16);
      v7 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl;
    }

    else
    {
      v6 = *(v3 + 16);
      v7 = &OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl;
    }
  }

  else
  {
    v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 > 4)
    {
      v6 = *(v5 + 16);
      if (v4 == 5)
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl;
      }

      else
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl;
      }
    }

    else
    {
      v6 = *(v5 + 16);
      if (v4 == 3)
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl;
      }

      else
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl;
      }
    }
  }

  v11 = *v7;
  v12 = sub_1D72585BC();
  v13 = *(*(v12 - 8) + 16);

  v13(a1, v6 + v11, v12);
}

void SportsDataVisualization.embedUrl.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      v8 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 != 1)
      {
        sub_1D6F89DD8(0, &qword_1EDF3B8A0, sub_1D5E4CFF4, &qword_1EDF1AF80, sub_1D5E4CFF4);

        sub_1D725BE8C();

        v9 = OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl;
        v10 = sub_1D72585BC();
        (*(*(v10 - 8) + 16))(a1, v14 + v9, v10);

        return;
      }

      v6 = *(v8 + 16);
      v7 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl;
    }

    else
    {
      v6 = *(v3 + 16);
      v7 = &OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl;
    }
  }

  else
  {
    v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 > 4)
    {
      v6 = *(v5 + 16);
      if (v4 == 5)
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl;
      }

      else
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl;
      }
    }

    else
    {
      v6 = *(v5 + 16);
      if (v4 == 3)
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl;
      }

      else
      {
        v7 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl;
      }
    }
  }

  v11 = *v7;
  v12 = sub_1D72585BC();
  v13 = *(*(v12 - 8) + 16);

  v13(a1, v6 + v11, v12);
}

void *sub_1D6F86D04()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if (*v0 >> 61 == 2)
  {
    v8 = *(*((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls);

    return v8;
  }

  v23 = v4;
  v25 = v7;
  v9 = sub_1D6F88478();
  if (v9 >> 62)
  {
    v10 = sub_1D7263BFC();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
LABEL_15:
    v25 = v11;
    sub_1D6C95024(0);
    sub_1D6F886F8(&qword_1EDF053F0, sub_1D6C95024, MEMORY[0x1E69E6328]);
    sub_1D6F886F8(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v8 = sub_1D72623CC();

    return v8;
  }

  v24 = MEMORY[0x1E69E7CC0];

  result = sub_1D69971B4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v11 = v24;
    v22 = v12 & 0xC000000000000001;
    v15 = (v2 + 16);
    v16 = v23;
    do
    {
      if (v22)
      {
        v17 = MEMORY[0x1DA6FB460](v14, v12);
        (*v15)(v6, v17 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v16);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v15)(v6, *(v12 + 8 * v14 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v16);
      }

      v24 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D69971B4((v18 > 1), v19 + 1, 1);
        v11 = v24;
      }

      ++v14;
      *(v11 + 16) = v19 + 1;
      v20 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19;
      v16 = v23;
      (*(v2 + 32))(v20, v6, v23);
    }

    while (v10 != v14);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6F87060()
{
  sub_1D72585BC();
  if (*v0 >> 61 == 2)
  {
    v1 = *(*((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_childDataSourceUrls);
  }

  else
  {
    sub_1D6C95024(0);
    sub_1D6F886F8(&qword_1EDF053F0, sub_1D6C95024, MEMORY[0x1E69E6328]);
    sub_1D6F886F8(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1D72623CC();
  }

  return v1;
}

uint64_t SportsDataVisualization.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D6F88740(0, &qword_1EDF039E8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F88650();
  sub_1D7264B0C();
  if (!v2)
  {
    v28 = 0;
    sub_1D6F886A4();
    sub_1D726431C();
    if (v27 <= 2u)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          type metadata accessor for SportsStandingDataVisualization(0);
          v28 = 1;
          sub_1D6F886F8(&qword_1EC898E48, type metadata accessor for SportsStandingDataVisualization, &protocol conformance descriptor for SportsStandingDataVisualization);
          sub_1D726431C();
          (*(v7 + 8))(v10, v6);
          v14 = v27;
          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          *a2 = v15 | 0x2000000000000000;
        }

        else
        {
          type metadata accessor for SportsBracketGroupDataVisualization(0);
          v28 = 1;
          sub_1D6F886F8(&qword_1EC898E40, type metadata accessor for SportsBracketGroupDataVisualization, &protocol conformance descriptor for SportsBracketGroupDataVisualization);
          sub_1D726431C();
          (*(v7 + 8))(v10, v6);
          v20 = v27;
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *a2 = v21 | 0x4000000000000000;
        }
      }

      else
      {
        type metadata accessor for SportsScoreDataVisualization(0);
        v28 = 1;
        sub_1D6F886F8(&qword_1EDF0A6E8, type metadata accessor for SportsScoreDataVisualization, &protocol conformance descriptor for SportsScoreDataVisualization);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v18 = v27;
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        *a2 = v19;
      }
    }

    else if (v27 > 4u)
    {
      if (v27 == 5)
      {
        type metadata accessor for SportsInjuryReportDataVisualization(0);
        v28 = 1;
        sub_1D6F886F8(&qword_1EC892B48, type metadata accessor for SportsInjuryReportDataVisualization, &protocol conformance descriptor for SportsInjuryReportDataVisualization);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v16 = v27;
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *a2 = v17 | 0xA000000000000000;
      }

      else
      {
        type metadata accessor for SportsKeyPlayerDataVisualization(0);
        v28 = 1;
        sub_1D6F886F8(&qword_1EC892B58, type metadata accessor for SportsKeyPlayerDataVisualization, &protocol conformance descriptor for SportsKeyPlayerDataVisualization);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v24 = v27;
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        *a2 = v25 | 0xC000000000000000;
      }
    }

    else if (v27 == 3)
    {
      type metadata accessor for SportsBoxScoreDataVisualization(0);
      v28 = 1;
      sub_1D6F886F8(&qword_1EC892B28, type metadata accessor for SportsBoxScoreDataVisualization, &protocol conformance descriptor for SportsBoxScoreDataVisualization);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v12 = v27;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *a2 = v13 | 0x6000000000000000;
    }

    else
    {
      type metadata accessor for SportsLineScoreDataVisualization(0);
      v28 = 1;
      sub_1D6F886F8(&qword_1EC892B38, type metadata accessor for SportsLineScoreDataVisualization, &protocol conformance descriptor for SportsLineScoreDataVisualization);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v22 = v27;
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *a2 = v23 | 0x8000000000000000;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void SportsDataVisualization.encode(to:)(void *a1)
{
  sub_1D6F88740(0, &qword_1EDF02600, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F88650();
  sub_1D7264B5C();
  v11 = v10 >> 61;
  if ((v10 >> 61) <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v16 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v23) = 1;
        v24 = 0;
        sub_1D6F887A4();

        sub_1D726443C();
        if (!v2)
        {
          v23 = v16;
          v24 = 1;
          type metadata accessor for SportsStandingDataVisualization(0);
          v13 = &unk_1EC898E58;
          v14 = type metadata accessor for SportsStandingDataVisualization;
          v15 = &protocol conformance descriptor for SportsStandingDataVisualization;
          goto LABEL_21;
        }
      }

      else
      {
        v19 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v23) = 2;
        v24 = 0;
        sub_1D6F887A4();

        sub_1D726443C();
        if (!v2)
        {
          v23 = v19;
          v24 = 1;
          type metadata accessor for SportsBracketGroupDataVisualization(0);
          v13 = &unk_1EC898E50;
          v14 = type metadata accessor for SportsBracketGroupDataVisualization;
          v15 = &protocol conformance descriptor for SportsBracketGroupDataVisualization;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v18 = *(v10 + 16);
      LOBYTE(v23) = 0;
      v24 = 0;
      sub_1D6F887A4();

      sub_1D726443C();
      if (!v2)
      {
        v23 = v18;
        v24 = 1;
        type metadata accessor for SportsScoreDataVisualization(0);
        v13 = &unk_1EDF0A6F0;
        v14 = type metadata accessor for SportsScoreDataVisualization;
        v15 = &protocol conformance descriptor for SportsScoreDataVisualization;
        goto LABEL_21;
      }
    }
  }

  else if (v11 > 4)
  {
    if (v11 == 5)
    {
      v17 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v23) = 5;
      v24 = 0;
      sub_1D6F887A4();

      sub_1D726443C();
      if (!v2)
      {
        v23 = v17;
        v24 = 1;
        type metadata accessor for SportsInjuryReportDataVisualization(0);
        v13 = &qword_1EC892AF8;
        v14 = type metadata accessor for SportsInjuryReportDataVisualization;
        v15 = &protocol conformance descriptor for SportsInjuryReportDataVisualization;
        goto LABEL_21;
      }
    }

    else
    {
      v21 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v23) = 6;
      v24 = 0;
      sub_1D6F887A4();

      sub_1D726443C();
      if (!v2)
      {
        v23 = v21;
        v24 = 1;
        type metadata accessor for SportsKeyPlayerDataVisualization(0);
        v13 = &qword_1EC892B10;
        v14 = type metadata accessor for SportsKeyPlayerDataVisualization;
        v15 = &protocol conformance descriptor for SportsKeyPlayerDataVisualization;
        goto LABEL_21;
      }
    }
  }

  else if (v11 == 3)
  {
    v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v23) = 3;
    v24 = 0;
    sub_1D6F887A4();

    sub_1D726443C();
    if (!v2)
    {
      v23 = v12;
      v24 = 1;
      type metadata accessor for SportsBoxScoreDataVisualization(0);
      v13 = &qword_1EC892AC8;
      v14 = type metadata accessor for SportsBoxScoreDataVisualization;
      v15 = &protocol conformance descriptor for SportsBoxScoreDataVisualization;
LABEL_21:
      sub_1D6F886F8(v13, v14, v15);
      sub_1D726443C();
    }
  }

  else
  {
    v20 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v23) = 4;
    v24 = 0;
    sub_1D6F887A4();

    sub_1D726443C();
    if (!v2)
    {
      v23 = v20;
      v24 = 1;
      type metadata accessor for SportsLineScoreDataVisualization(0);
      v13 = &qword_1EC892AE0;
      v14 = type metadata accessor for SportsLineScoreDataVisualization;
      v15 = &protocol conformance descriptor for SportsLineScoreDataVisualization;
      goto LABEL_21;
    }
  }

  (*(v6 + 8))(v9, v5);
}

void sub_1D6F87E00(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

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

void sub_1D6F87E60(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D6F87EC4(uint64_t a1)
{
  v2 = sub_1D6F88650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F87F00(uint64_t a1)
{
  v2 = sub_1D6F88650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6F87F54(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D6F8807C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6F89D8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6F880AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x65726F6373;
  v5 = 0xEC00000074726F70;
  v6 = 0x65527972756A6E69;
  if (v2 != 5)
  {
    v6 = 0x6579616C5079656BLL;
    v5 = 0xE900000000000072;
  }

  v7 = 0xE800000000000000;
  v8 = 0x65726F6353786F62;
  if (v2 != 3)
  {
    v8 = 0x726F6353656E696CLL;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x676E69646E617473;
  if (v2 != 1)
  {
    v10 = 0x74656B63617262;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

double SportsDataVisualization.hash(into:)(uint64_t a1)
{
  SportsDataVisualization.identifier.getter();
  sub_1D72621EC();

  return result;
}

uint64_t SportsDataVisualization.hashValue.getter()
{
  sub_1D7264A0C();
  SportsDataVisualization.identifier.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6F88348()
{
  sub_1D7264A0C();
  SportsDataVisualization.identifier.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6F883B0(uint64_t a1)
{
  SportsDataVisualization.identifier.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6F88414(uint64_t a1)
{
  sub_1D7264A0C();
  SportsDataVisualization.identifier.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6F88478()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  v3 = &OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources;
  v4 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources;
  v5 = *v0 & 0x1FFFFFFFFFFFFFFFLL;
  if (v2 != 5)
  {
    v4 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources;
  }

  v6 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources;
  if (v2 != 3)
  {
    v6 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources;
  }

  if (v2 <= 4)
  {
    v5 = *v0 & 0x1FFFFFFFFFFFFFFFLL;
    v4 = v6;
  }

  v7 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources;
  if (v2 != 1)
  {
    v7 = &OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources;
  }

  if (v2)
  {
    v1 = *v0 & 0x1FFFFFFFFFFFFFFFLL;
    v3 = v7;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v1 = v5;
    v8 = v4;
  }

  return *(*(v1 + 16) + *v8);
}

uint64_t _s8NewsFeed23SportsDataVisualizationO2eeoiySbAC_ACtFZ_0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 61;
  if (v3 <= 2)
  {
    if (!v3)
    {
      if (!(v2 >> 61))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (v3 == 1)
    {
      if (v2 >> 61 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (v2 >> 61 != 2)
    {
      goto LABEL_9;
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      if (v2 >> 61 != 5)
      {
        goto LABEL_9;
      }
    }

    else if (v2 >> 61 != 6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3 == 3)
    {
      if (v2 >> 61 == 3)
      {
        goto LABEL_14;
      }

LABEL_9:
      v4 = 0;
      return v4 & 1;
    }

    if (v2 >> 61 != 4)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  v5 = SportsDataVisualization.identifier.getter();
  v7 = v6;
  if (v5 == SportsDataVisualization.identifier.getter() && v7 == v8)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

unint64_t sub_1D6F88650()
{
  result = qword_1EDF0D178;
  if (!qword_1EDF0D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D178);
  }

  return result;
}

unint64_t sub_1D6F886A4()
{
  result = qword_1EDF0D150;
  if (!qword_1EDF0D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D150);
  }

  return result;
}

uint64_t sub_1D6F886F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6F88740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F88650();
    v7 = a3(a1, &type metadata for SportsDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6F887A4()
{
  result = qword_1EDF0D160;
  if (!qword_1EDF0D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D160);
  }

  return result;
}

unint64_t sub_1D6F887FC()
{
  result = qword_1EDF0D140;
  if (!qword_1EDF0D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D140);
  }

  return result;
}

unint64_t sub_1D6F88890()
{
  result = qword_1EC898E60;
  if (!qword_1EC898E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E60);
  }

  return result;
}

unint64_t sub_1D6F888E8()
{
  result = qword_1EC898E68;
  if (!qword_1EC898E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E68);
  }

  return result;
}

unint64_t sub_1D6F88940()
{
  result = qword_1EDF0D168;
  if (!qword_1EDF0D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D168);
  }

  return result;
}

unint64_t sub_1D6F88998()
{
  result = qword_1EDF0D170;
  if (!qword_1EDF0D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D170);
  }

  return result;
}

unint64_t sub_1D6F889EC()
{
  result = qword_1EDF0D158;
  if (!qword_1EDF0D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D158);
  }

  return result;
}

void *sub_1D6F88A40(uint64_t a1, unint64_t *a2)
{
  sub_1D6F89DD8(0, &qword_1EC898E70, sub_1D6F89E6C, &qword_1EC898E78, sub_1D6F89E6C);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v81 - v8;
  v10 = *(a1 + 112);
  v102 = *(a1 + 96);
  v103 = v10;
  v104 = *(a1 + 128);
  v105 = *(a1 + 144);
  v11 = *(a1 + 48);
  v98 = *(a1 + 32);
  v99 = v11;
  v12 = *(a1 + 80);
  v100 = *(a1 + 64);
  v101 = v12;
  v13 = *(a1 + 16);
  v96 = *a1;
  v97 = v13;
  v14 = *a2;
  if ((~*a2 & 0xF000000000000007) != 0)
  {
    v17 = v14 >> 61;
    if ((v14 >> 61) <= 2)
    {
      if (v17)
      {
        v29 = v14 & 0x1FFFFFFFFFFFFFFFLL;
        if (v17 != 1)
        {
          v54 = MEMORY[0x1E69E6F90];
          v82 = v7;
          sub_1D6F89EBC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1D7270C10;
          sub_1D6F89EBC(0, &qword_1EC880490, sub_1D5EA74B8, v54);
          sub_1D5EA74B8(0);
          v57 = (*(*(v56 - 8) + 80) + 32) & ~*(*(v56 - 8) + 80);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_1D7273AE0;

          sub_1D711F844(1701869908, 0xE400000000000000, 0x74656B63617242, 0xE700000000000000, (v58 + v57));
          v59 = type metadata accessor for FormatInspectionItem(0);
          (*(*(v59 - 8) + 56))(v58 + v57, 0, 1, v59);
          sub_1D6795150(0xD000000000000019, 0x80000001D73F1C90, 0, 0, v58, &v83);
          swift_setDeallocating();
          sub_1D6180C78(v58 + v57);
          swift_deallocClassInstance();
          *(v55 + 56) = &type metadata for FormatInspectionGroup;
          *(v55 + 64) = &off_1F518B2C0;
          v60 = swift_allocObject();
          v81[1] = v81;
          *(v55 + 32) = v60;
          v61 = v84;
          *(v60 + 16) = v83;
          *(v60 + 32) = v61;
          *(v60 + 48) = v85;
          MEMORY[0x1EEE9AC00](v60, v62);
          v81[-2] = &v96;
          sub_1D6F89DD8(0, &qword_1EDF3B8A0, sub_1D5E4CFF4, &qword_1EDF1AF80, sub_1D5E4CFF4);
          swift_retain_n();
          sub_1D725BE7C();
          v63 = v82;
          MEMORY[0x1DA6F3530](&v93, v82);
          v64 = sub_1D5F63640(v93);

          v65 = sub_1D7073500(v64);

          (*(v5 + 8))(v9, v63);

          *(v55 + 96) = &type metadata for FormatInspection;
          *(v55 + 104) = &off_1F51E3FD0;
          *(v55 + 72) = v65;
          v66 = sub_1D7073500(v55);
          swift_setDeallocating();
          sub_1D5E4F358(0);
          swift_arrayDestroy();
          swift_deallocClassInstance();

          return v66;
        }

        v30 = *(v29 + 16);
        v31 = MEMORY[0x1E69E6F90];
        sub_1D6F89EBC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1D7270C10;
        sub_1D6F89EBC(0, &qword_1EC880490, sub_1D5EA74B8, v31);
        sub_1D5EA74B8(0);
        v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1D7273AE0;

        sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E617453, 0xE800000000000000, (v34 + v33));
        v35 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v35 - 8) + 56))(v34 + v33, 0, 1, v35);
        sub_1D6795150(0xD000000000000019, 0x80000001D73F1C90, 0, 0, v34, &v93);
        swift_setDeallocating();
        sub_1D6180C78(v34 + v33);
        swift_deallocClassInstance();
        *(v21 + 56) = &type metadata for FormatInspectionGroup;
        *(v21 + 64) = &off_1F518B2C0;
        v36 = swift_allocObject();
        *(v21 + 32) = v36;
        v37 = v94;
        *(v36 + 16) = v93;
        *(v36 + 32) = v37;
        *(v36 + 48) = v95;
        v89 = v102;
        v90 = v103;
        v91 = v104;
        v92 = v105;
        v85 = v98;
        v86 = v99;
        v87 = v100;
        v88 = v101;
        v83 = v96;
        v84 = v97;

        v28 = sub_1D67AA5C4(&v83, v30);
      }

      else
      {
        v46 = *(v14 + 16);
        v47 = MEMORY[0x1E69E6F90];
        sub_1D6F89EBC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1D7270C10;
        sub_1D6F89EBC(0, &qword_1EC880490, sub_1D5EA74B8, v47);
        sub_1D5EA74B8(0);
        v49 = (*(*(v48 - 8) + 80) + 32) & ~*(*(v48 - 8) + 80);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1D7273AE0;

        sub_1D711F844(1701869908, 0xE400000000000000, 0x65726F6353, 0xE500000000000000, (v50 + v49));
        v51 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v51 - 8) + 56))(v50 + v49, 0, 1, v51);
        sub_1D6795150(0xD000000000000019, 0x80000001D73F1C90, 0, 0, v50, &v93);
        swift_setDeallocating();
        sub_1D6180C78(v50 + v49);
        swift_deallocClassInstance();
        *(v21 + 56) = &type metadata for FormatInspectionGroup;
        *(v21 + 64) = &off_1F518B2C0;
        v52 = swift_allocObject();
        *(v21 + 32) = v52;
        v53 = v94;
        *(v52 + 16) = v93;
        *(v52 + 32) = v53;
        *(v52 + 48) = v95;
        v89 = v102;
        v90 = v103;
        v91 = v104;
        v92 = v105;
        v85 = v98;
        v86 = v99;
        v87 = v100;
        v88 = v101;
        v83 = v96;
        v84 = v97;

        v28 = sub_1D70C9448(&v83, v46);
      }
    }

    else
    {
      v18 = v14 & 0x1FFFFFFFFFFFFFFFLL;
      if (v17 > 4)
      {
        v38 = *(v18 + 16);
        v39 = MEMORY[0x1E69E6F90];
        if (v17 == 5)
        {
          sub_1D6F89EBC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7270C10;
          sub_1D6F89EBC(0, &qword_1EC880490, sub_1D5EA74B8, v39);
          sub_1D5EA74B8(0);
          v41 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1D7273AE0;

          sub_1D711F844(1701869908, 0xE400000000000000, 0x52207972756A6E49, 0xED000074726F7065, (v42 + v41));
          v43 = type metadata accessor for FormatInspectionItem(0);
          (*(*(v43 - 8) + 56))(v42 + v41, 0, 1, v43);
          sub_1D6795150(0xD000000000000019, 0x80000001D73F1C90, 0, 0, v42, &v93);
          swift_setDeallocating();
          sub_1D6180C78(v42 + v41);
          swift_deallocClassInstance();
          *(v21 + 56) = &type metadata for FormatInspectionGroup;
          *(v21 + 64) = &off_1F518B2C0;
          v44 = swift_allocObject();
          *(v21 + 32) = v44;
          v45 = v94;
          *(v44 + 16) = v93;
          *(v44 + 32) = v45;
          *(v44 + 48) = v95;
          v89 = v102;
          v90 = v103;
          v91 = v104;
          v92 = v105;
          v85 = v98;
          v86 = v99;
          v87 = v100;
          v88 = v101;
          v83 = v96;
          v84 = v97;

          v28 = sub_1D684BA84(&v83, v38);
        }

        else
        {
          sub_1D6F89EBC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7270C10;
          sub_1D6F89EBC(0, &qword_1EC880490, sub_1D5EA74B8, v39);
          sub_1D5EA74B8(0);
          v74 = (*(*(v73 - 8) + 80) + 32) & ~*(*(v73 - 8) + 80);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_1D7273AE0;

          sub_1D711F844(1701869908, 0xE400000000000000, 0x79616C502079654BLL, 0xEA00000000007265, (v75 + v74));
          v76 = type metadata accessor for FormatInspectionItem(0);
          (*(*(v76 - 8) + 56))(v75 + v74, 0, 1, v76);
          sub_1D6795150(0xD000000000000019, 0x80000001D73F1C90, 0, 0, v75, &v93);
          swift_setDeallocating();
          sub_1D6180C78(v75 + v74);
          swift_deallocClassInstance();
          *(v21 + 56) = &type metadata for FormatInspectionGroup;
          *(v21 + 64) = &off_1F518B2C0;
          v77 = swift_allocObject();
          *(v21 + 32) = v77;
          v78 = v94;
          *(v77 + 16) = v93;
          *(v77 + 32) = v78;
          *(v77 + 48) = v95;
          v89 = v102;
          v90 = v103;
          v91 = v104;
          v92 = v105;
          v85 = v98;
          v86 = v99;
          v87 = v100;
          v88 = v101;
          v83 = v96;
          v84 = v97;

          v28 = sub_1D7000FE8(&v83, v38);
        }
      }

      else
      {
        v19 = *(v18 + 16);
        v20 = MEMORY[0x1E69E6F90];
        if (v17 == 3)
        {
          sub_1D6F89EBC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7270C10;
          sub_1D6F89EBC(0, &qword_1EC880490, sub_1D5EA74B8, v20);
          sub_1D5EA74B8(0);
          v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1D7273AE0;

          sub_1D711F844(1701869908, 0xE400000000000000, 0x726F635320786F42, 0xE900000000000065, (v24 + v23));
          v25 = type metadata accessor for FormatInspectionItem(0);
          (*(*(v25 - 8) + 56))(v24 + v23, 0, 1, v25);
          sub_1D6795150(0xD000000000000019, 0x80000001D73F1C90, 0, 0, v24, &v93);
          swift_setDeallocating();
          sub_1D6180C78(v24 + v23);
          swift_deallocClassInstance();
          *(v21 + 56) = &type metadata for FormatInspectionGroup;
          *(v21 + 64) = &off_1F518B2C0;
          v26 = swift_allocObject();
          *(v21 + 32) = v26;
          v27 = v94;
          *(v26 + 16) = v93;
          *(v26 + 32) = v27;
          *(v26 + 48) = v95;
          v89 = v102;
          v90 = v103;
          v91 = v104;
          v92 = v105;
          v85 = v98;
          v86 = v99;
          v87 = v100;
          v88 = v101;
          v83 = v96;
          v84 = v97;

          v28 = sub_1D67FEF4C(&v83, v19);
        }

        else
        {
          sub_1D6F89EBC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7270C10;
          sub_1D6F89EBC(0, &qword_1EC880490, sub_1D5EA74B8, v20);
          sub_1D5EA74B8(0);
          v68 = (*(*(v67 - 8) + 80) + 32) & ~*(*(v67 - 8) + 80);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_1D7273AE0;

          sub_1D711F844(1701869908, 0xE400000000000000, 0x6F635320656E694CLL, 0xEA00000000006572, (v69 + v68));
          v70 = type metadata accessor for FormatInspectionItem(0);
          (*(*(v70 - 8) + 56))(v69 + v68, 0, 1, v70);
          sub_1D6795150(0xD000000000000019, 0x80000001D73F1C90, 0, 0, v69, &v93);
          swift_setDeallocating();
          sub_1D6180C78(v69 + v68);
          swift_deallocClassInstance();
          *(v21 + 56) = &type metadata for FormatInspectionGroup;
          *(v21 + 64) = &off_1F518B2C0;
          v71 = swift_allocObject();
          *(v21 + 32) = v71;
          v72 = v94;
          *(v71 + 16) = v93;
          *(v71 + 32) = v72;
          *(v71 + 48) = v95;
          v89 = v102;
          v90 = v103;
          v91 = v104;
          v92 = v105;
          v85 = v98;
          v86 = v99;
          v87 = v100;
          v88 = v101;
          v83 = v96;
          v84 = v97;

          v28 = sub_1D5F8DAC0(&v83, v19);
        }
      }
    }

    v79 = v28;

    *(v21 + 96) = &type metadata for FormatInspection;
    *(v21 + 104) = &off_1F51E3FD0;
    *(v21 + 72) = v79;
    v80 = sub_1D7073500(v21);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return v80;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v15);
  }
}

unint64_t sub_1D6F89D8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

void sub_1D6F89DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D6F886F8(a4, a5, MEMORY[0x1E69E6340]);
    v8 = sub_1D725BEAC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6F89E6C()
{
  if (!qword_1EC88EB40)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EB40);
    }
  }
}

void sub_1D6F89EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static FormatContentSubgroupFilterRequirements.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1D6F89F98(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73B7110 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D6F8A02C(uint64_t a1)
{
  v2 = sub_1D6F8A1F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F8A068(uint64_t a1)
{
  v2 = sub_1D6F8A1F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterRequirements.encode(to:)(void *a1)
{
  sub_1D6F8A3D4(0, &qword_1EDF024A8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F8A1F4();
  sub_1D7264B5C();
  sub_1D72643AC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6F8A1F4()
{
  result = qword_1EDF06588;
  if (!qword_1EDF06588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06588);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterRequirements.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6F8A3D4(0, &qword_1EDF03858, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F8A1F4();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D726425C();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    *(a2 + 8) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6F8A3D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F8A1F4();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterRequirements.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6F8A438(void *a1)
{
  a1[1] = sub_1D69CFD30();
  a1[2] = sub_1D69CFEE4();
  result = sub_1D6F8A470();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F8A470()
{
  result = qword_1EC898E80;
  if (!qword_1EC898E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E80);
  }

  return result;
}

uint64_t sub_1D6F8A4DC(void *a1)
{
  sub_1D6F8A3D4(0, &qword_1EDF024A8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F8A1F4();
  sub_1D7264B5C();
  sub_1D72643AC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D6F8A62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D6F8A684()
{
  result = qword_1EC898E88;
  if (!qword_1EC898E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E88);
  }

  return result;
}

unint64_t sub_1D6F8A6DC()
{
  result = qword_1EDF06578;
  if (!qword_1EDF06578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06578);
  }

  return result;
}

unint64_t sub_1D6F8A734()
{
  result = qword_1EDF06580;
  if (!qword_1EDF06580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06580);
  }

  return result;
}

id sub_1D6F8A788()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 > 8u)
    {
      if (v1 == 9)
      {
        return *MEMORY[0x1E69DDDC0];
      }

      else if (v1 == 10)
      {
        return *MEMORY[0x1E69DDDC8];
      }

      else
      {
        return sub_1D726203C();
      }
    }

    else if (v1 == 6)
    {
      return *MEMORY[0x1E69DDD80];
    }

    else if (v1 == 7)
    {
      return *MEMORY[0x1E69DDD58];
    }

    else
    {
      return *MEMORY[0x1E69DDDB8];
    }
  }

  else if (*v0 > 2u)
  {
    if (v1 == 3)
    {
      return *MEMORY[0x1E69DDD10];
    }

    else if (v1 == 4)
    {
      return *MEMORY[0x1E69DDD28];
    }

    else
    {
      return *MEMORY[0x1E69DDD40];
    }
  }

  else if (*v0)
  {
    if (v1 == 1)
    {
      return *MEMORY[0x1E69DDD00];
    }

    else
    {
      return *MEMORY[0x1E69DDD08];
    }
  }

  else
  {
    return *MEMORY[0x1E69DDCF8];
  }
}

uint64_t sub_1D6F8A908()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x32656C746974;
    v8 = 0x33656C746974;
    if (v1 != 10)
    {
      v8 = 0x326E6F6974636573;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6C64616568627573;
    v10 = 0x746954656772616CLL;
    if (v1 != 7)
    {
      v10 = 0x31656C746974;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 2036625250;
    v3 = 0x326E6F6974706163;
    v4 = 0x65746F6E746F6F66;
    if (v1 != 4)
    {
      v4 = 0x656E696C64616568;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x74756F6C6C6163;
    if (v1 != 1)
    {
      v5 = 0x316E6F6974706163;
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
}

uint64_t sub_1D6F8AA78()
{
  sub_1D7264A0C();
  FormatFontScalingStyle.description.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6F8AAE0(uint64_t a1)
{
  FormatFontScalingStyle.description.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6F8AB44(uint64_t a1)
{
  sub_1D7264A0C();
  FormatFontScalingStyle.description.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6F8ABA8@<X0>(uint64_t *a1@<X8>)
{
  result = FormatFontScalingStyle.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6F8ABD4()
{
  v0 = FormatFontScalingStyle.description.getter();
  v2 = v1;
  if (v0 == FormatFontScalingStyle.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

BOOL _s8NewsFeed17FormatFontScalingO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v2 & 0xFF00) == 0xC00)
  {
    return (v3 & 0xFF00) == 0xC00;
  }

  if ((v3 & 0xFF00) == 0xC00)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v3 & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  v5 = FormatFontScalingStyle.description.getter();
  v7 = v6;
  if (v5 == FormatFontScalingStyle.description.getter() && v7 == v8)
  {

    return 1;
  }

  v9 = sub_1D72646CC();

  return (v9 & 1) != 0;
}

uint64_t _s8NewsFeed21FormatFontScalingDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
LABEL_3:
      v3 = 0;
      return v3 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      goto LABEL_3;
    }
  }

  v4 = FormatFontScalingStyle.description.getter();
  v6 = v5;
  if (v4 == FormatFontScalingStyle.description.getter() && v6 == v7)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D72646CC();
  }

  return v3 & 1;
}

unint64_t sub_1D6F8AE70(uint64_t a1)
{
  result = sub_1D6F8AE98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F8AE98()
{
  result = qword_1EC898E90;
  if (!qword_1EC898E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E90);
  }

  return result;
}

unint64_t sub_1D6F8AF2C()
{
  result = qword_1EC898E98;
  if (!qword_1EC898E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898E98);
  }

  return result;
}

unint64_t sub_1D6F8AF80(uint64_t a1)
{
  result = sub_1D6F8AFA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F8AFA8()
{
  result = qword_1EC898EA0;
  if (!qword_1EC898EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EA0);
  }

  return result;
}

unint64_t sub_1D6F8B03C()
{
  result = qword_1EC898EA8;
  if (!qword_1EC898EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EA8);
  }

  return result;
}

unint64_t sub_1D6F8B094()
{
  result = qword_1EC898EB0;
  if (!qword_1EC898EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EB0);
  }

  return result;
}

unint64_t sub_1D6F8B0E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D6F8B118();
  result = sub_1D5CA9808();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6F8B118()
{
  result = qword_1EC898EB8;
  if (!qword_1EC898EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EB8);
  }

  return result;
}

unint64_t sub_1D6F8B16C(uint64_t a1)
{
  result = sub_1D6F8B194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F8B194()
{
  result = qword_1EC898EC0;
  if (!qword_1EC898EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EC0);
  }

  return result;
}

uint64_t sub_1D6F8B228(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatFontScaling(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 10))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6F8B2C0(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6F8B2D4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xF4)
  {
    *(result + 8) = 0;
    *result = a2 - 245;
  }

  else if (a2)
  {
    *(result + 9) = a2 + 11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFontScalingData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 10))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

BOOL sub_1D6F8B384(uint64_t a1)
{
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatDebuggerContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v1;
  v13 = v1[1];
  v15 = v1[2];
  v14 = v1[3];
  sub_1D6D2E328(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D6D2E4E4(v6, sub_1D6CC4A78);
    return 0;
  }

  sub_1D6D2E480(v6, v11);
  v18 = v11[2];
  v17 = v11[3];
  if (v12 == *v11 && v13 == v11[1])
  {
    sub_1D6D2E4E4(v11, type metadata accessor for FormatDebuggerContext);
    if (v15 != v18)
    {
      return 0;
    }

    return v14 == v17;
  }

  v20 = sub_1D72646CC();
  sub_1D6D2E4E4(v11, type metadata accessor for FormatDebuggerContext);
  result = 0;
  if ((v20 & 1) != 0 && v15 == v18)
  {
    return v14 == v17;
  }

  return result;
}

uint64_t sub_1D6F8B570(void *a1)
{
  sub_1D6F8BCBC(0, &qword_1EC898EE0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v12[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F8BC68();

  sub_1D7264B5C();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v12[0];
  v12[5] = v10;
  sub_1D6C4F274();
  sub_1D726443C();

  return (*(v13 + 8))(v7, v4);
}

uint64_t sub_1D6F8B6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6F8BCBC(0, &qword_1EC898ED0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F8BC68();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D61E52C4();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v11 = v14[1];
    v12 = v15;
    *a2 = v14[0];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6F8B8B8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614D656372756F73 && a2 == 0xE900000000000070)
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

uint64_t sub_1D6F8B948(uint64_t a1)
{
  v2 = sub_1D6F8BC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F8B984(uint64_t a1)
{
  v2 = sub_1D6F8BC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6F8B9F8()
{
  result = qword_1EC898EC8;
  if (!qword_1EC898EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EC8);
  }

  return result;
}

BOOL sub_1D6F8BA50(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 16);
  v6[0] = v3;
  v6[1] = v4;
  v7 = *(a2 + 1);
  return (sub_1D6F8BBAC(v6, v8) & 1) == 0;
}

BOOL sub_1D6F8BAA0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 16);
  v6[0] = v3;
  v6[1] = v4;
  v7 = *(a2 + 1);
  return (sub_1D6F8BBAC(v8, v6) & 1) == 0;
}

uint64_t sub_1D6F8BAF0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 16);
  v6[0] = v3;
  v6[1] = v4;
  v7 = *(a2 + 1);
  return sub_1D6F8BBAC(v6, v8) & 1;
}

BOOL sub_1D6F8BB3C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_1D72646CC()) && v2 == v5 && v3 == v4)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1D6F8BBAC(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {
    if (v2 == v4)
    {
      return v3 < v5;
    }

    else
    {
      return v2 < v4;
    }
  }

  else
  {

    return sub_1D72646CC();
  }
}

unint64_t sub_1D6F8BC68()
{
  result = qword_1EC898ED8;
  if (!qword_1EC898ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898ED8);
  }

  return result;
}

void sub_1D6F8BCBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F8BC68();
    v7 = a3(a1, &type metadata for FormatDebuggerBreakpoint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6F8BD34()
{
  result = qword_1EC898EE8;
  if (!qword_1EC898EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EE8);
  }

  return result;
}

unint64_t sub_1D6F8BD8C()
{
  result = qword_1EC898EF0;
  if (!qword_1EC898EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EF0);
  }

  return result;
}

unint64_t sub_1D6F8BDE4()
{
  result = qword_1EC898EF8;
  if (!qword_1EC898EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898EF8);
  }

  return result;
}

uint64_t sub_1D6F8BE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v9 = *(a4 + 40);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600CC();

  v10 = *(v9 + 16);
  v11 = *(v10 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = (v10 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  if (!v16)
  {
    v15 = 0x64656C7469746E55;
  }

  v17 = 0xE800000000000000;
  if (v16)
  {
    v17 = v16;
  }

  *&v20 = v8;
  BYTE8(v20) = v11;
  *&v21 = v12;
  *(&v21 + 1) = v13;
  *&v22 = v15;
  *(&v22 + 1) = v17;
  LOBYTE(v23) = 1;
  *(&v23 + 1) = *&v24[0];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  sub_1D68C37D4();

  sub_1D726177C();

  v24[2] = 0uLL;
  v24[3] = v22;
  v24[4] = v23;
  v24[0] = v20;
  v24[1] = v21;
  return sub_1D68C5A80(v24);
}

uint64_t sub_1D6F8C034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v67 = v39;
  v68 = v40;
  v69 = v41;
  v70 = v42;
  v63 = v35;
  v64 = v36;
  v65 = v37;
  v66 = v38;
  v59 = v31;
  v60 = v32;
  v61 = v33;
  v62 = v34;
  v57 = v29;
  v58 = v30;
  result = sub_1D5DEA380(&v57);
  if (result != 1)
  {
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v56 = v70;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v52 = v66;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v43 = v57;
    v44 = v58;
    v7 = *(a4 + 40);
    if (*(*(v7 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) == 4)
    {
      sub_1D6C57524(v7);
      v13[10] = v53;
      v13[11] = v54;
      v13[12] = v55;
      v13[6] = v49;
      v13[7] = v50;
      v13[8] = v51;
      v13[9] = v52;
      v13[2] = v45;
      v13[3] = v46;
      v13[4] = v47;
      v13[5] = v48;
      v13[0] = v43;
      v13[1] = v44;
      v25 = v53;
      v26 = v54;
      v27 = v55;
      v21 = v49;
      v22 = v50;
      v23 = v51;
      v24 = v52;
      v17 = v45;
      v18 = v46;
      v19 = v47;
      v20 = v48;
      v14 = v56;
      v28 = v56;
      v15 = v43;
      v16 = v44;
      nullsub_1();
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      v35 = v49;
      v36 = v50;
      v37 = v51;
      v38 = v52;
      v31 = v45;
      v32 = v46;
      v33 = v47;
      v34 = v48;
      v29 = v43;
      v30 = v44;
      sub_1D5F2B0D8(v13, v12);
      sub_1D6AA103C(&v29);
      v39 = v25;
      v40 = v26;
      v41 = v27;
      v42 = v28;
      v35 = v21;
      v36 = v22;
      v37 = v23;
      v38 = v24;
      v31 = v17;
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v29 = v15;
      v30 = v16;

      sub_1D725B32C();

      sub_1D6AA1610();
    }

    else
    {
      v8 = *(a2 + 24);
      if (!v8)
      {
        v39 = v67;
        v40 = v68;
        v41 = v69;
        v42 = v70;
        v35 = v63;
        v36 = v64;
        v37 = v65;
        v38 = v66;
        v31 = v59;
        v32 = v60;
        v33 = v61;
        v34 = v62;
        v10 = v57;
        v11 = v58;
        goto LABEL_7;
      }

      v9 = *(a2 + 32);

      v8(v7);
      sub_1D613694C(v8, v9);
    }

    v39 = v53;
    v40 = v54;
    v41 = v55;
    v42 = v56;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v34 = v48;
    v10 = v43;
    v11 = v44;
LABEL_7:
    v29 = v10;
    v30 = v11;
    return sub_1D5F2B134(&v29);
  }

  return result;
}

uint64_t FeedLoadingGate.whenLifted.getter()
{
  result = MEMORY[0x1DA6F2570]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedLoadingGate.__allocating_init()()
{
  v0 = swift_allocObject();
  FeedLoadingGate.init()();
  return v0;
}

uint64_t FeedLoadingGate.init()()
{
  v1 = v0;
  v2 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D5B92BEC();
  swift_allocObject();
  *(v0 + 16) = sub_1D725AEFC();
  v4 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  v5 = sub_1D725891C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth) = 0;
  v6 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_lock;
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D5B8A99C();
  sub_1D5B92C40(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D5B89968();
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + v6) = sub_1D725A7AC();
  sub_1D5B5F6D0();
  v8 = sub_1D72638FC();
  *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_log) = v8;
  v9 = v8;
  v10 = sub_1D7262EDC();
  sub_1D725C30C("Feed loading gate created", 25, 2, &dword_1D5B42000, v9, v10, v7);

  return v1;
}

uint64_t FeedLoadingGate.__allocating_init(log:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D5B929F8(a1);

  return v2;
}

Swift::Void __swiftcall FeedLoadingGate.push(reason:)(Swift::String reason)
{
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v4 = type metadata accessor for FeedLoadingGate.Seal(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  sub_1D725A76C();
  v12 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_log);
  sub_1D5B92C40(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7274590;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D5B7E2C0();
  *(v13 + 32) = countAndFlagsBits;
  *(v13 + 40) = object;
  v14 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  swift_beginAccess();
  sub_1D5B97D24(v1 + v14, v11);
  sub_1D5B97D88(v11, v7);
  v15 = sub_1D725891C();
  v16 = (*(*(v15 - 8) + 48))(v7, 1, v15);

  if (v16 != 1)
  {
    sub_1D5BC41C8(v7);
  }

  v17 = MEMORY[0x1E69E6370];
  v18 = MEMORY[0x1E69E63A8];
  *(v13 + 96) = MEMORY[0x1E69E6370];
  *(v13 + 104) = v18;
  *(v13 + 72) = v16 != 1;
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift);
  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  v20 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth;
  v21 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth);
  v22 = MEMORY[0x1E69E6530];
  *(v13 + 112) = v19;
  v23 = MEMORY[0x1E69E65A8];
  *(v13 + 176) = v22;
  *(v13 + 184) = v23;
  *(v13 + 152) = v21;
  v24 = sub_1D7262EDC();
  sub_1D725C30C("Feed loading gate push, reason='%{public}@' sealed=%d, waitingForLift=%d, waitingForPopDepth=%ld", 96, 2, &dword_1D5B42000, v12, v24, v13);

  v25 = *(v1 + v20);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v20) = v27;
    sub_1D5B97DEC(countAndFlagsBits, object);
    sub_1D725A77C();
  }
}

Swift::Void __swiftcall FeedLoadingGate.pop(reason:)(Swift::String reason)
{
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v4 = type metadata accessor for FeedLoadingGate.Seal(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  sub_1D725A76C();
  v12 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_log);
  sub_1D5B92C40(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7274590;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D5B7E2C0();
  *(v13 + 32) = countAndFlagsBits;
  *(v13 + 40) = object;
  v14 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  swift_beginAccess();
  sub_1D5B97D24(v1 + v14, v11);
  sub_1D5B97D88(v11, v7);
  v15 = sub_1D725891C();
  v16 = (*(*(v15 - 8) + 48))(v7, 1, v15);

  if (v16 != 1)
  {
    sub_1D5BC41C8(v7);
  }

  v17 = MEMORY[0x1E69E6370];
  v18 = MEMORY[0x1E69E63A8];
  *(v13 + 96) = MEMORY[0x1E69E6370];
  *(v13 + 104) = v18;
  *(v13 + 72) = v16 != 1;
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift);
  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  v20 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth;
  v21 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth);
  v22 = MEMORY[0x1E69E6530];
  *(v13 + 112) = v19;
  v23 = MEMORY[0x1E69E65A8];
  *(v13 + 176) = v22;
  *(v13 + 184) = v23;
  *(v13 + 152) = v21;
  v24 = sub_1D7262EDC();
  sub_1D725C30C("Feed loading gate pop, reason='%{public}@' sealed=%d, waitingForLift=%d, waitingForPopDepth=%ld", 95, 2, &dword_1D5B42000, v12, v24, v13);

  v25 = *(v1 + v20);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v20) = v27;
    sub_1D5B97DEC(countAndFlagsBits, object);
    sub_1D725A77C();
  }
}

uint64_t FeedLoadingGate.dateLifted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeedLoadingGate.Seal(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725A76C();
  v7 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  swift_beginAccess();
  sub_1D5B97D24(v1 + v7, v6);
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a1, v6, v8);
    v10 = 0;
  }

  (*(v9 + 56))(a1, v10, 1, v8);
  return sub_1D725A77C();
}

uint64_t FeedLoadingGate.deinit()
{

  sub_1D5BC41C8(v0 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal);

  return v0;
}

uint64_t FeedLoadingGate.__deallocating_deinit()
{

  sub_1D5BC41C8(v0 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal);

  return swift_deallocClassInstance();
}

void sub_1D6F8CE10(char a1)
{
  if (a1)
  {
    sub_1D6F8D92C();
  }

  else
  {
    v2 = *(v1 + 24);
  }
}

double sub_1D6F8CE20(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  *&v21[0] = sub_1D725AA4C();
  *(&v21[0] + 1) = v10;
  sub_1D725B86C();

  if (v22)
  {
    sub_1D6F8DB0C(a2 & 1);
    v12 = v11;
    a3(v11, v13);
  }

  else
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = *(v5 + 24);
    v18 = swift_allocObject();
    swift_weakInit();
    sub_1D5B68374(a1, v21);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_1D5B63F14(v21, v19 + 24);
    *(v19 + 64) = a3;
    *(v19 + 72) = a4;
    *(v19 + 80) = a2 & 1;
    v20 = *(v16 + 8);

    sub_1D70A59C8(v17, sub_1D6F8EA10, v19, v15, v20);
  }

  return result;
}

double sub_1D6F8CFC8(uint64_t a1, void (*a2)(void *), void (*a3)(void *))
{
  v7 = type metadata accessor for FeedGroupItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;

  aBlock = FeedGroupItem.debugIdentifier.getter();
  v37 = v15;
  sub_1D725B86C();

  v16 = v42;
  if (v42)
  {
    a2(v42);
  }

  else
  {
    v34 = *(v3 + 24);
    v18 = swift_allocObject();
    swift_weakInit();
    sub_1D6F8EA48(a1, v14);
    sub_1D6F8EA48(v14, v35);
    v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_1D6F8EAAC(v14, v20 + v19);
    v21 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = a2;
    v21[1] = a3;

    v22 = FeedGroupItem.debugAssetHandle.getter();
    if (v22)
    {
      v23 = v22;
      sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
      v24 = sub_1D726308C();
      v25 = swift_allocObject();
      v26 = v34;
      v25[2] = v23;
      v25[3] = v26;
      v25[4] = sub_1D6F8EB10;
      v25[5] = v20;
      v40 = sub_1D6F8EC10;
      v41 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1D5B6B06C;
      v39 = &block_descriptor_41_1;
      v27 = _Block_copy(&aBlock);
      v28 = v23;
      v29 = v26;

      v30 = [v28 downloadIfNeededWithCompletionQueue:v24 completion:v27];

      _Block_release(v27);

      swift_unknownObjectRelease();
      v31 = v35;
    }

    else
    {
      v32 = v35;
      sub_1D6F8E258(0, v18, v35, a2);

      v31 = v32;
    }

    sub_1D6F8EBB4(v31);
  }

  return result;
}

uint64_t sub_1D6F8D30C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F8D32C, 0, 0);
}

uint64_t sub_1D6F8D32C()
{
  v1 = v0[9];

  v2 = [v1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  v0[2] = v3;
  v0[3] = v5;
  sub_1D725B86C();

  if (v0[6])
  {
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[9];
    v9 = [objc_allocWithZone(type metadata accessor for TagImageShareAttributeProvider()) init];
    v0[11] = v9;
    v10 = swift_task_alloc();
    v0[12] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    __asm { FMOV            V0.2D, #22.0 }

    *(v10 + 32) = _Q0;
    *(v10 + 48) = 0x4023CCCCCCCCCCCDLL;
    v16 = swift_task_alloc();
    v0[13] = v16;
    sub_1D6F8EC2C(0, &qword_1EC893530, &qword_1EDF1A690, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
    *v16 = v0;
    v16[1] = sub_1D6F8D534;

    return MEMORY[0x1EEE6DDE0](v0 + 7, 0, 0, 0xD000000000000030, 0x80000001D73EBD50, sub_1D6F8EC1C, v10, v17);
  }
}

uint64_t sub_1D6F8D534()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6F8D64C, 0, 0);
}

uint64_t sub_1D6F8D64C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 72);
    v4 = v1;

    v5 = [v3 identifier];
    v6 = sub_1D726207C();
    v8 = v7;

    *(v0 + 64) = v1;
    *(v0 + 32) = v6;
    *(v0 + 40) = v8;
    v9 = v4;
    sub_1D725B87C();
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

void sub_1D6F8D758(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  sub_1D6BEBEC0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  (*(v14 + 16))(aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v17);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_1D6F8EC94;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5C3BF74;
  aBlock[3] = &block_descriptor_59_0;
  v20 = _Block_copy(aBlock);

  [a2 createShareSportsEventImageFor:a3 size:v20 logoWidth:a4 completion:{a5, a6}];
  _Block_release(v20);
}

void sub_1D6F8D92C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 24);
  [v2 size];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D6F8EE94;
  *(v7 + 24) = v6;
  v13[4] = sub_1D61395B0;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D62E78B0;
  v13[3] = &block_descriptor_52;
  v8 = _Block_copy(v13);
  v9 = v2;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v11 = *(v0 + 32);
    *(v0 + 32) = v10;
    v10;

    v1 = 0;
LABEL_4:
    v12 = v1;
    return;
  }

  __break(1u);
}

void sub_1D6F8DB0C(char a1)
{
  if (a1)
  {
    v10 = v1;
    [v1 size];
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v5 = swift_allocObject();
    *(v5 + 16) = v10;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1D6F8EA24;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1D61395B0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D62E78B0;
    aBlock[3] = &block_descriptor_31_3;
    v7 = _Block_copy(aBlock);
    v8 = v10;

    [v4 imageWithActions_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  else
  {

    v9 = v1;
  }
}

void sub_1D6F8DCF4()
{
  v0 = objc_opt_self();
  v1 = [v0 lightGrayColor];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DB958];
  v29 = v2;
  v4 = [v2 systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  __asm { FMOV            V0.2D, #22.0 }

  v28 = _Q0;
  *(v6 + 24) = _Q0;
  *(v6 + 40) = xmmword_1D729E1B0;
  *(v6 + 56) = v4;
  *(v6 + 64) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D6139584;
  *(v12 + 24) = v6;
  v35 = sub_1D6139588;
  v36 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D62E78B0;
  v34 = &block_descriptor_122;
  v13 = _Block_copy(&aBlock);
  v14 = v4;
  v15 = v1;

  v16 = [v5 imageWithActions_];

  _Block_release(v13);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v30[2] = v16;
    v17 = [v0 systemGrayColor];
    v18 = [v0 lightGrayColor];
    v19 = [v29 systemFontOfSize:12.0 weight:v3];
    v20 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v28;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = v19;
    *(v21 + 64) = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1D61395AC;
    *(v22 + 24) = v21;
    v35 = sub_1D61395B0;
    v36 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1D62E78B0;
    v34 = &block_descriptor_15_0;
    v23 = _Block_copy(&aBlock);
    v24 = v17;
    v25 = v19;
    v26 = v18;

    v27 = [v20 &selRef_darkStyleNavigationChromeBackgroundImage + 2];

    _Block_release(v23);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if ((v26 & 1) == 0)
    {
      v30[3] = v27;
      v30[4] = 0;
      sub_1D6F8E998(0);
      swift_allocObject();
      v30[5] = sub_1D725B83C();
      return;
    }
  }

  __break(1u);
}

void sub_1D6F8E12C(void *a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t, uint64_t), uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = *(Strong + 16);
    }

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = a1;

    sub_1D725AA4C();
    v13 = v11;
    sub_1D725B87C();

    sub_1D6F8DB0C(a6 & 1);
    v15 = v14;
    a4(v14, v16, v17);
  }
}

void sub_1D6F8E258(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(Strong + 16);
    }

    v8 = a1;

    FeedGroupItem.debugIdentifier.getter();
    v9 = v7;
    sub_1D725B87C();

    a4(v9);
  }
}

void sub_1D6F8E344(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1D726369C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v23 = a6;
    v17 = [a2 filePath];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v19)
      {
        [a5 size];
        (*(v13 + 104))(v16, *MEMORY[0x1E69D88B0], v12);
        v20 = sub_1D72635EC();
        (*(v13 + 8))(v16, v12);
        v25 = a7;
        v26 = v20;
        v24 = v23;

        v21 = v20;
        sub_1D725B87C();

        a3(v21);

        return;
      }
    }
  }

  a3(a5);
}

uint64_t sub_1D6F8E580(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  sub_1D6F8ECC0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v36 - v16;
  v18 = *(v10 + 16);
  v18(&v36 - v16, a1, v9, v15);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v10;
  (v18)(v38, v17, v9);
  v20 = a2;
  v21 = v37;
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = swift_allocObject();
  (*(v10 + 32))(v23 + v22, v17, v9);
  aBlock = a4;
  v40 = v21;

  sub_1D725B86C();

  if (v45)
  {
    aBlock = v45;
    v24 = v45;
    v25 = v38;
    sub_1D726287C();

    return (*(v10 + 8))(v25, v9);
  }

  else
  {
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v27 = sub_1D726308C();
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = *(v20 + 24);
    v30 = swift_allocObject();
    v30[2] = v28;
    v31 = v36;
    v30[3] = v36;
    v30[4] = sub_1D6F8EDC8;
    v30[5] = v23;
    v30[6] = v29;
    v30[7] = a4;
    v30[8] = v21;
    v43 = sub_1D6806904;
    v44 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1D5B6B06C;
    v42 = &block_descriptor_69_0;
    v32 = _Block_copy(&aBlock);

    v33 = v29;
    v34 = v31;

    v35 = [v34 downloadIfNeededWithCompletionQueue:v27 completion:v32];
    _Block_release(v32);

    swift_unknownObjectRelease();

    return (*(v19 + 8))(v38, v9);
  }
}

uint64_t sub_1D6F8E8D0(void *a1)
{
  sub_1D6F8ECC0(0);
  v2 = a1;
  return sub_1D726287C();
}

uint64_t sub_1D6F8E924()
{

  return swift_deallocClassInstance();
}

void sub_1D6F8E998(uint64_t a1)
{
  if (!qword_1EC898F00)
  {
    sub_1D5B5A498(255, &qword_1EDF1A690, 0x1E69DCAB8);
    v1 = sub_1D725B84C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC898F00);
    }
  }
}

uint64_t sub_1D6F8EA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F8EAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6F8EB10(void *a1)
{
  v3 = *(type metadata accessor for FeedGroupItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D6F8E258(a1, v5, v1 + v4, v6);
}

uint64_t sub_1D6F8EBB4(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6F8EC2C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5A498(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D6F8ECC0(uint64_t a1)
{
  if (!qword_1EC898F08)
  {
    sub_1D5B5A498(255, &qword_1EDF1A690, 0x1E69DCAB8);
    v1 = sub_1D726288C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC898F08);
    }
  }
}

uint64_t objectdestroy_55Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D6F8EDF4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1D6F8EEB0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D699A550(0, v2, 0);
    v3 = v20;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v18 = sub_1D72644BC();
      v19 = v8;
      MEMORY[0x1DA6F9910](0x736E6D756C6F4320, 0xE800000000000000);
      v9 = *a2;
      if (*(*a2 + 16) && (v10 = sub_1D5C5E034(v6), (v11 & 1) != 0))
      {
        v12 = *(*(v9 + 56) + 8 * v10);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D699A550((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = (v20 + 24 * v14);
      v15[4] = v18;
      v15[5] = v19;
      v15[6] = v12;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1D6F8F030()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v110 = sub_1D7259D1C();
  v3 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v4);
  v109 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6C1AC(0, &qword_1EDF3C0A0, MEMORY[0x1E69D7128], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v108 = &v90 - v8;
  v113 = sub_1D7259CFC();
  v9 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v10);
  v93 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D725A19C();
  v12 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v13);
  v106 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D7259F5C();
  v15 = *(v105 - 8);
  *&v17 = MEMORY[0x1EEE9AC00](v105, v16).n128_u64[0];
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125.receiver = v1;
  v125.super_class = ObjectType;
  objc_msgSendSuper2(&v125, sel_viewDidLoad, v17);
  v20 = &off_1E84D3000;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v22 = v21;
  v23 = [objc_opt_self() systemBackgroundColor];
  [v22 setBackgroundColor_];

  v24 = [v1 navigationItem];
  v25 = sub_1D726203C();
  [v24 setTitle_];

  v26 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView];
  [v26 setDataSource_];
  [v26 setDelegate_];
  [v26 setAlwaysBounceVertical_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v26 setTableFooterView_];

  type metadata accessor for SubtitleTableViewCell();
  sub_1D7262DAC();
  [v26 setAllowsMultipleSelection_];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_54:
    __break(1u);

    __break(1u);
    return;
  }

  v29 = v28;
  v104 = v26;
  [v28 addSubview_];

  v124 = MEMORY[0x1E69E7CC8];
  if (qword_1EC87D818 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v122 = *(qword_1EC9BA910 + 16);
    if (!v122)
    {
      v3 = 0;
      v82 = *(MEMORY[0x1E69E7CC8] + 16);
      if (!v82)
      {
        goto LABEL_43;
      }

LABEL_40:
      v122 = v1;
      v83 = sub_1D5C104B8(v82, 0);
      v84 = sub_1D5E2A8C4();
      v85 = v123;
      swift_bridgeObjectRetain_n();
      sub_1D5B87E38(v85);
      if (v84 == v82)
      {
        v1 = v122;
        goto LABEL_44;
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v103 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_editor;
    v98 = *MEMORY[0x1E69D7278];
    v97 = (v12 + 104);
    v96 = *MEMORY[0x1E69D7110];
    v95 = (v3 + 104);
    v101 = (v3 + 8);
    v100 = (v15 + 8);
    v99 = (v9 + 56);
    v92 = (v9 + 32);
    v91 = (v9 + 8);

    v31 = 0;
    v3 = 0;
    v12 = (v30 + 33);
    v94 = MEMORY[0x1E69E7CC8];
    v112 = v19;
    v9 = v30;
    v102 = v30;
LABEL_7:
    if (v31 < *(v9 + 16))
    {
      break;
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  v15 = *(v12 - 1);
  v19 = *v12;
  ++v31;
  switch(*(v12 - 1))
  {
    case '""':

      goto LABEL_6;
    default:
      v32 = sub_1D72646CC();

      if (v32)
      {
        goto LABEL_6;
      }

      v33 = [v1 v20[419]];
      if (!v33)
      {
        goto LABEL_52;
      }

      v34 = v33;
      if (v19)
      {
        v35 = 256;
      }

      else
      {
        v35 = 0;
      }

      sub_1D67F6CC8(0, 1, 0, 0, 2u, v35 | v15, v126);
      v36 = v127;
      [v34 bounds];
      v37 = sub_1D6E24328(v15, v34);
      v39 = v38;
      if (v15 < 0x1B)
      {
        v40 = &unk_1F5118C90;
LABEL_17:
        v41 = v1;
        v42 = sub_1D5E29338(v40);
        goto LABEL_18;
      }

      if ((v15 - 27) < 6)
      {
        v40 = &unk_1F5118C68;
        goto LABEL_17;
      }

      v41 = v1;
      v42 = MEMORY[0x1E69E7CD0];
LABEL_18:
      v43 = sub_1D61867BC(v36, v42);

      if (v43 & v36)
      {
        v44 = v39;
      }

      else
      {
        v44 = v37;
      }

      if ((v43 & v36 & 1) == 0)
      {
        v37 = v39;
      }

      v45 = [v34 traitCollection];
      MEMORY[0x1EEE9AC00](v45, v46);
      v47 = sub_1D72630DC();

      [v34 layoutMargins];
      sub_1D6F79CFC(v15);
      sub_1D7262E0C();
      sub_1D7262DFC();
      v121 = v48;
      v120 = v49;
      v119 = v50;
      v118 = v51;
      v52 = v104;
      [v104 safeAreaInsets];
      v56 = v55;
      v58 = v57;
      v111 = v19;
      if ((v15 - 33) >= 2u)
      {
        sub_1D7262DFC();
        sub_1D7262E0C();
        v117 = v59;
        v56 = v60;
        v116 = v61;
        v58 = v62;
      }

      else
      {
        v117 = v53;
        v116 = v54;
      }

      v115 = sub_1D6E24200(v52, v44, v37, v56, v58);
      v114 = v63;
      sub_1D725A64C();
      sub_1D726332C();
      v64 = [objc_opt_self() mainScreen];
      [v64 nativeBounds];

      v65 = [v47 preferredContentSizeCategory];
      (*v97)(v106, v98, v107);
      sub_1D7259E5C();

      v66 = v109;
      v67 = v110;
      (*v95)(v109, v96, v110);
      v68 = v108;
      sub_1D7259D0C();
      (*v101)(v66, v67);
      v69 = v113;
      (*v99)(v68, 0, 1, v113);
      (*v92)(v93, v68, v69);
      v70 = sub_1D7259CCC();
      v71 = v94;
      v1 = v41;
      if (*(v94 + 2))
      {
        v72 = sub_1D5C5E034(v70);
        v20 = &off_1E84D3000;
        v73 = v111;
        if (v74)
        {
          v75 = *(*(v71 + 7) + 8 * v72);
        }

        else
        {
          v75 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v75 = MEMORY[0x1E69E7CC0];
        v20 = &off_1E84D3000;
        v73 = v111;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_1D6991494(0, *(v75 + 2) + 1, 1, v75);
      }

      v77 = *(v75 + 2);
      v76 = *(v75 + 3);
      if (v77 >= v76 >> 1)
      {
        v75 = sub_1D6991494((v76 > 1), v77 + 1, 1, v75);
      }

      *(v75 + 2) = v77 + 1;
      v78 = &v75[2 * v77];
      v78[32] = v15;
      v78[33] = v73;
      v19 = v93;
      v79 = sub_1D7259CCC();
      v80 = v124;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v80;
      sub_1D6D7C9A8(v75, v79, isUniquelyReferenced_nonNull_native);
      v94 = v123;
      v124 = v123;
      (*v91)(v19, v113);
      (*v100)(v112, v105);
      v9 = v102;
LABEL_6:
      v12 += 2;
      if (v122 != v31)
      {
        goto LABEL_7;
      }

      v82 = *(v94 + 2);
      if (v82)
      {
        goto LABEL_40;
      }

LABEL_43:

      v83 = MEMORY[0x1E69E7CC0];
LABEL_44:
      v123 = v83;
      sub_1D5E239F4(&v123);

      v86 = sub_1D6F8EEB0(v123, &v124);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1D69967A8(0, *(v86 + 16) + 1, 1, v86);
      }

      v88 = *(v86 + 16);
      v87 = *(v86 + 24);
      if (v88 >= v87 >> 1)
      {
        v86 = sub_1D69967A8((v87 > 1), v88 + 1, 1, v86);
      }

      *(v86 + 16) = v88 + 1;
      v89 = v86 + 24 * v88;
      *(v89 + 32) = xmmword_1D72E27B0;
      *(v89 + 48) = &unk_1F5119BD0;
      *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_sections] = v86;

      return;
  }
}

void sub_1D6F90460(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1D7258DAC();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v6 = *(v3 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_sections);
  if (v5 >= *(v6 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v7 = *(v6 + 24 * v5 + 48);

  v8 = sub_1D7258D9C();
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v9 = v7 + 2 * v8;
  v10 = *(v9 + 32);
  v11 = *(v9 + 33);

  type metadata accessor for SubtitleTableViewCell();
  v12 = sub_1D7262D8C();
  v13 = [v12 textLabel];
  if (v13)
  {
    v14 = v13;
    sub_1D6E236D4(v10);
    v15 = sub_1D726203C();

    [v14 setText_];
  }

  v16 = [v12 textLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setNumberOfLines_];
  }

  v18 = [v12 textLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() systemFontOfSize_];
    [v19 setFont_];
  }

  v21 = [v12 detailTextLabel];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D726203C();

    [v22 setText_];
  }

  v24 = [v12 detailTextLabel];
  if (v24)
  {
    v25 = v24;
    [v24 setNumberOfLines_];
  }

  v26 = [v12 detailTextLabel];
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() secondaryLabelColor];
    [v27 setTextColor_];
  }

  v29 = [v12 detailTextLabel];
  if (v29)
  {
    v30 = v29;
    v31 = [objc_opt_self() systemFontOfSize_];
    [v30 setFont_];
  }

  v32 = objc_opt_self();
  v33 = v12;
  v34 = [v32 systemBlueColor];
  [v33 setTintColor_];

  v35 = [v33 imageView];
  if (!v35)
  {
LABEL_25:
    v40 = [v33 imageView];
    if (v40)
    {
      v41 = v40;
      v42 = [v32 secondaryLabelColor];
      [v41 setTintColor_];
    }

    v43 = [v33 selectedBackgroundView];
    if (!v43)
    {
      v43 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    }

    [v33 setSelectedBackgroundView_];

    v44 = [v33 selectedBackgroundView];
    if (v44)
    {
      v45 = v44;
      v46 = [v32 clearColor];
      [v45 setBackgroundColor_];
    }

    v47 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading;
    if (*(v4 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading))
    {
      v48 = 0;
    }

    else
    {
      v48 = 3;
    }

    [v33 setSelectionStyle_];
    [v33 setAccessoryType_];
    [v33 setAccessoryView_];
    v49 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_selectedDevices;
    swift_beginAccess();
    v50 = *(v4 + v49);
    if (v11)
    {
      v51 = 256;
    }

    else
    {
      v51 = 0;
    }

    v52 = sub_1D6185778(v51 | v10, v50);

    if (v52)
    {
      if (*(v4 + v47) == 1)
      {
        v53 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
        [v53 startAnimating];
        [v33 setAccessoryView_];
      }

      else
      {
        [v33 setAccessoryType_];
      }
    }

    v54 = [v33 detailTextLabel];
    v55 = v54;
    if (v11)
    {
      if (v54)
      {
        v56 = sub_1D726203C();
        [v55 setText_];

        v55 = v56;
LABEL_46:
      }
    }

    else if (v54)
    {
      [v54 setText_];
      goto LABEL_46;
    }

    return;
  }

  v36 = v35;
  if (v11)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  sub_1D67F6F20(v37 | v10);
  v38 = sub_1D726203C();

  v39 = [objc_opt_self() systemImageNamed_];

  if (v39)
  {
    [v36 setImage_];

    goto LABEL_25;
  }

LABEL_52:
  __break(1u);
}

void sub_1D6F90CB0(char *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D5B6C1AC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v186 = v173 - v8;
  v9 = sub_1D725A19C();
  v181 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7259F5C();
  v180 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v184 = v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v185 = v173 - v18;
  v19 = type metadata accessor for DebugFormatWorkspace(0);
  v187 = *(v19 - 8);
  v20 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v183 = v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v173 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v188 = v173 - v28;
  v29 = sub_1D7258D4C();
  v189 = a1;
  [a1 deselectRowAtIndexPath:v29 animated:0];

  v30 = sub_1D7258DAC();
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_281;
  }

  v31 = *(v3 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_sections);
  if (v30 >= *(v31 + 16))
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v178 = v13;
  v182 = v3;
  v13 = *(v31 + 24 * v30 + 48);

  v32 = sub_1D7258D9C();
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  if (v32 >= *(v13 + 16))
  {
LABEL_283:
    __break(1u);
LABEL_284:
    swift_once();
    goto LABEL_132;
  }

  v177 = v9;
  v33 = v13 + 2 * v32;
  v34 = *(v33 + 32);
  v35 = *(v33 + 33);

  v13 = v182;
  v36 = v182 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_viewer;
  if ((*(v182 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_viewer + 16) & 1) == 0)
  {
    v176 = v34;
    LODWORD(v189) = v35;
    v175 = v12;
    v75 = *v36;
    v74 = *(v36 + 8);
    v76 = *(v182 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_editor);

    sub_1D6F93A0C(v75, v74, 0);
    sub_1D725B31C();

    v204[10] = v200;
    v204[11] = v201;
    v204[12] = v202;
    v204[6] = v196;
    v204[7] = v197;
    v204[8] = v198;
    v204[9] = v199;
    v204[2] = v192;
    v204[3] = v193;
    v204[4] = v194;
    v204[5] = v195;
    v204[0] = v190;
    v204[1] = v191;
    v216 = v200;
    v217 = v201;
    v218 = v202;
    v212 = v196;
    v213 = v197;
    v214 = v198;
    v215 = v199;
    v208 = v192;
    v209 = v193;
    v210 = v194;
    v211 = v195;
    v205 = v203;
    v219 = v203;
    v206 = v190;
    v207 = v191;
    if (sub_1D5DEA380(&v206) == 1)
    {

      return;
    }

    v110 = *(v76 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
    swift_beginAccess();
    v111 = *(v110 + 104);
    if (*(v111 + 16))
    {
      v112 = v207;
      v174 = v75;
      v113 = *(&v207 + 1);

      v114 = v113;
      v75 = v174;
      v115 = sub_1D5B69D90(v112, v114);
      if (v116)
      {
        sub_1D5FC998C(*(v111 + 56) + *(v187 + 72) * v115, v25);

        v117 = v188;
        sub_1D676E2D0(v25, v188);
        v118 = v189;
        if (v189)
        {
          v119 = 256;
        }

        else
        {
          v119 = 0;
        }

        if (BYTE4(v218))
        {
          v120 = 256;
        }

        else
        {
          v120 = 0;
        }

        v121 = v176;
        if (sub_1D67F7A4C(v119 | v176, v120 | BYTE3(v218)))
        {
          sub_1D6F93BFC(v117, type metadata accessor for DebugFormatWorkspace);

          sub_1D6F93C5C(v204, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49E48);
          return;
        }

        sub_1D5B49E48(0, &qword_1EC88EEB0, &type metadata for DebugFormatWorkspaceDevice, MEMORY[0x1E69E6F90]);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1D7273AE0;
        *(v123 + 32) = v121;
        *(v123 + 33) = v118;
        v124 = sub_1D62DCC68(v123);
        swift_setDeallocating();
        swift_deallocClassInstance();
        v125 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_selectedDevices;
        v126 = v182;
        swift_beginAccess();
        *(v126 + v125) = v124;

        *(v126 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading) = 1;
        v127 = *(v126 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView);
        v128 = v174;
        [v127 reloadData];
        sub_1D67F6CC8(0, 1, 0, 0, 2u, v119 | v121, &v190);
        v129 = BYTE2(v194);
        [v128 bounds];
        v130 = sub_1D6E24328(v121, v128);
        v132 = v131;
        if (v121 >= 0x1B)
        {
          v134 = v74;
          if (v121 - 27 >= 6)
          {
            v136 = MEMORY[0x1E69E7CD0];
            v135 = v175;
            goto LABEL_269;
          }

          v133 = &unk_1F5118C68;
        }

        else
        {
          v133 = &unk_1F5118C90;
          v134 = v74;
        }

        v135 = v175;
        v136 = sub_1D5E29338(v133);
LABEL_269:
        v137 = sub_1D61867BC(v129, v136);

        if (v137 & v129)
        {
          v138 = v132;
        }

        else
        {
          v138 = v130;
        }

        if ((v137 & v129 & 1) == 0)
        {
          v130 = v132;
        }

        v139 = [v128 traitCollection];
        MEMORY[0x1EEE9AC00](v139, v140);
        v141 = sub_1D72630DC();

        [v128 layoutMargins];
        sub_1D6F79CFC(v121);
        sub_1D7262E0C();
        sub_1D7262DFC();
        v143 = v142;
        v145 = v144;
        v173[4] = v147;
        v173[5] = v146;
        [v134 safeAreaInsets];
        v149 = v148;
        v151 = v150;
        v175 = v143;
        v173[6] = v145;
        if ((v121 - 33) >= 2u)
        {
          sub_1D7262DFC();
          sub_1D7262E0C();
          v149 = v152;
          v151 = v153;
        }

        v154 = v181;
        v181 = sub_1D6E24200(v134, v138, v130, v149, v151);
        v173[3] = v155;
        sub_1D725A64C();
        sub_1D726332C();
        v173[1] = v157;
        v173[2] = v156;
        v158 = [objc_opt_self() mainScreen];
        [v158 nativeBounds];

        v159 = [v141 preferredContentSizeCategory];
        (*(*&v154 + 104))(v135, *MEMORY[0x1E69D7278], v177);
        v160 = v185;
        sub_1D7259E5C();
        v161 = sub_1D726294C();
        (*(*(v161 - 8) + 56))(v186, 1, 1, v161);
        v162 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v163 = v180;
        v164 = v160;
        v165 = v178;
        (*(v180 + 16))(v184, v164, v178);
        sub_1D5FC998C(v188, v183);
        sub_1D726290C();

        v166 = sub_1D72628FC();
        v167 = (*(v163 + 80) + 40) & ~*(v163 + 80);
        v168 = v134;
        v169 = (v179 + *(v187 + 80) + v167) & ~*(v187 + 80);
        v170 = swift_allocObject();
        v171 = MEMORY[0x1E69E85E0];
        *(v170 + 2) = v166;
        *(v170 + 3) = v171;
        *(v170 + 4) = v162;
        (*(v163 + 32))(&v170[v167], v184, v165);
        sub_1D676E2D0(v183, &v170[v169]);
        v172 = &v170[v169 + v20];
        *v172 = v176;
        v172[1] = v189;

        sub_1D6736BD4(0, 0, v186, &unk_1D737A670, v170);

        sub_1D6F93C5C(v204, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49E48);
        (*(v163 + 8))(v185, v165);
        sub_1D6F93BFC(v188, type metadata accessor for DebugFormatWorkspace);
        return;
      }
    }

    else
    {
    }

    sub_1D6F93C5C(v204, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49E48);

    return;
  }

  a1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_selectedDevices;
  swift_beginAccess();
  v37 = *&a1[v13];
  if (v35)
  {
    v38 = 256;
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_1D6185778(v38 | v34, v37);

  v183 = a1;
  if (v39)
  {
    if (*(*&a1[v13] + 16) < 2uLL)
    {
      return;
    }

    swift_beginAccess();
    sub_1D62D1278(v38 | v34);
    swift_endAccess();
    sub_1D5B6C1AC(0, &qword_1EC88B958, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
    v40 = sub_1D7258DBC();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D7273AE0;
    (*(v41 + 16))(v43 + v42, a2, v40);
    v44 = sub_1D726265C();

    [v189 reloadRowsAtIndexPaths:v44 withRowAnimation:5];

    v45 = qword_1EC87D818;
    v179 = *(*(v13 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);

    if (v45 != -1)
    {
      swift_once();
    }

    v184 = *(qword_1EC9BA910 + 16);
    if (v184)
    {
      v46 = 0x7258656E6F685069;
      v180 = qword_1EC9BA910 + 32;
      v178 = qword_1EC9BA910;

      v47 = 0;
      v48 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v49 = *&a1[v13];
        if (!*(v49 + 16))
        {
          goto LABEL_17;
        }

        v185 = v47;
        v186 = v48;
        v50 = (v180 + 2 * v47);
        v51 = *v50;
        v52 = v50[1];
        sub_1D7264A0C();
        v189 = v51;
        sub_1D6E23ADC(v51);

        sub_1D72621EC();

        LODWORD(v181) = v52;
        if (v52)
        {
          v53 = 0x70616373646E616CLL;
        }

        else
        {
          v53 = 0x7469617274726F70;
        }

        if (v52)
        {
          v54 = 0xE900000000000065;
        }

        else
        {
          v54 = 0xE800000000000000;
        }

        sub_1D72621EC();

        v55 = sub_1D7264A5C();
        v56 = -1 << *(v49 + 32);
        v57 = v55 & ~v56;
        v188 = v49 + 56;
        if (((*(v49 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {

LABEL_16:
          a1 = v183;
          v47 = v185;
          v48 = v186;
          goto LABEL_17;
        }

        v187 = ~v56;
        while (1)
        {
          v58 = (*(v49 + 48) + 2 * v57);
          v59 = v58[1];
          v60 = 0xE800000000000000;
          v61 = v46;
          switch(*v58)
          {
            case 1:
              v61 = 0x7358656E6F685069;
              break;
            case 2:
              v61 = 0x7358656E6F685069;
              v60 = 0xEB0000000078614DLL;
              break;
            case 3:
              v61 = 0x4553656E6F685069;
              break;
            case 4:
              v61 = 0x3131656E6F685069;
              break;
            case 5:
              v61 = 0x3131656E6F685069;
              goto LABEL_52;
            case 6:
              v61 = 0x3131656E6F685069;
              goto LABEL_66;
            case 7:
              v61 = 0x3231656E6F685069;
              break;
            case 8:
              v61 = 0x3231656E6F685069;
              goto LABEL_57;
            case 9:
              v61 = 0x3231656E6F685069;
              goto LABEL_52;
            case 0xA:
              v61 = 0x3231656E6F685069;
              goto LABEL_66;
            case 0xB:
              v61 = 0x3331656E6F685069;
              break;
            case 0xC:
              v61 = 0x3331656E6F685069;
LABEL_57:
              v60 = 0xEC000000696E694DLL;
              break;
            case 0xD:
              v61 = 0x3331656E6F685069;
              goto LABEL_52;
            case 0xE:
              v61 = 0x3331656E6F685069;
              goto LABEL_66;
            case 0xF:
              v61 = 0x3431656E6F685069;
              break;
            case 0x10:
              v61 = 0x3431656E6F685069;
              goto LABEL_48;
            case 0x11:
              v61 = 0x3431656E6F685069;
              goto LABEL_52;
            case 0x12:
              v61 = 0x3431656E6F685069;
              goto LABEL_66;
            case 0x13:
              v61 = 0x3531656E6F685069;
              break;
            case 0x14:
              v61 = 0x3531656E6F685069;
              goto LABEL_48;
            case 0x15:
              v61 = 0x3531656E6F685069;
              goto LABEL_52;
            case 0x16:
              v61 = 0x3531656E6F685069;
              goto LABEL_66;
            case 0x17:
              v61 = 0x3631656E6F685069;
              break;
            case 0x18:
              v61 = 0x3631656E6F685069;
LABEL_48:
              v60 = 0xEC00000073756C50;
              break;
            case 0x19:
              v61 = 0x3631656E6F685069;
LABEL_52:
              v60 = 0xEB000000006F7250;
              break;
            case 0x1A:
              v61 = 0x3631656E6F685069;
LABEL_66:
              v60 = 0xEE0078614D6F7250;
              break;
            case 0x1B:
              v60 = 0xE400000000000000;
              v61 = 1684099177;
              break;
            case 0x1C:
              v60 = 0xE700000000000000;
              v61 = 0x72694164615069;
              break;
            case 0x1D:
              v61 = 0x696E694D64615069;
              break;
            case 0x1E:
              v61 = 0x5F6F725064615069;
              v60 = 0xEC000000355F3031;
              break;
            case 0x1F:
              v61 = 0x5F6F725064615069;
              v60 = 0xEA00000000003131;
              break;
            case 0x20:
              v61 = 0x5F6F725064615069;
              v60 = 0xEC000000395F3231;
              break;
            case 0x21:
              v60 = 0xE300000000000000;
              v61 = 6513005;
              break;
            case 0x22:
              v61 = 0x6465727265666E69;
              break;
            default:
              break;
          }

          v62 = 0xE800000000000000;
          v63 = v46;
          switch(v189)
          {
            case 1uLL:
              v63 = 0x7358656E6F685069;
              break;
            case 2uLL:
              v63 = 0x7358656E6F685069;
              v62 = 0xEB0000000078614DLL;
              break;
            case 3uLL:
              v63 = 0x4553656E6F685069;
              break;
            case 4uLL:
              v63 = 0x3131656E6F685069;
              break;
            case 5uLL:
              v63 = 0x3131656E6F685069;
              goto LABEL_91;
            case 6uLL:
              v63 = 0x3131656E6F685069;
              goto LABEL_105;
            case 7uLL:
              v63 = 0x3231656E6F685069;
              break;
            case 8uLL:
              v63 = 0x3231656E6F685069;
              goto LABEL_96;
            case 9uLL:
              v63 = 0x3231656E6F685069;
              goto LABEL_91;
            case 0xAuLL:
              v63 = 0x3231656E6F685069;
              goto LABEL_105;
            case 0xBuLL:
              v63 = 0x3331656E6F685069;
              break;
            case 0xCuLL:
              v63 = 0x3331656E6F685069;
LABEL_96:
              v62 = 0xEC000000696E694DLL;
              break;
            case 0xDuLL:
              v63 = 0x3331656E6F685069;
              goto LABEL_91;
            case 0xEuLL:
              v63 = 0x3331656E6F685069;
              goto LABEL_105;
            case 0xFuLL:
              v63 = 0x3431656E6F685069;
              break;
            case 0x10uLL:
              v63 = 0x3431656E6F685069;
              goto LABEL_87;
            case 0x11uLL:
              v63 = 0x3431656E6F685069;
              goto LABEL_91;
            case 0x12uLL:
              v63 = 0x3431656E6F685069;
              goto LABEL_105;
            case 0x13uLL:
              v63 = 0x3531656E6F685069;
              break;
            case 0x14uLL:
              v63 = 0x3531656E6F685069;
              goto LABEL_87;
            case 0x15uLL:
              v63 = 0x3531656E6F685069;
              goto LABEL_91;
            case 0x16uLL:
              v63 = 0x3531656E6F685069;
              goto LABEL_105;
            case 0x17uLL:
              v63 = 0x3631656E6F685069;
              break;
            case 0x18uLL:
              v63 = 0x3631656E6F685069;
LABEL_87:
              v62 = 0xEC00000073756C50;
              break;
            case 0x19uLL:
              v63 = 0x3631656E6F685069;
LABEL_91:
              v62 = 0xEB000000006F7250;
              break;
            case 0x1AuLL:
              v63 = 0x3631656E6F685069;
LABEL_105:
              v62 = 0xEE0078614D6F7250;
              break;
            case 0x1BuLL:
              v62 = 0xE400000000000000;
              v63 = 1684099177;
              break;
            case 0x1CuLL:
              v62 = 0xE700000000000000;
              v63 = 0x72694164615069;
              break;
            case 0x1DuLL:
              v63 = 0x696E694D64615069;
              break;
            case 0x1EuLL:
              v63 = 0x5F6F725064615069;
              v62 = 0xEC000000355F3031;
              break;
            case 0x1FuLL:
              v63 = 0x5F6F725064615069;
              v62 = 0xEA00000000003131;
              break;
            case 0x20uLL:
              v63 = 0x5F6F725064615069;
              v62 = 0xEC000000395F3231;
              break;
            case 0x21uLL:
              v62 = 0xE300000000000000;
              v63 = 6513005;
              break;
            case 0x22uLL:
              v63 = 0x6465727265666E69;
              break;
            default:
              break;
          }

          v64 = v46;
          if (v61 == v63 && v60 == v62)
          {
          }

          else
          {
            v65 = sub_1D72646CC();

            if ((v65 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v66 = v59 ? 0x70616373646E616CLL : 0x7469617274726F70;
          v67 = v59 ? 0xE900000000000065 : 0xE800000000000000;
          if (v66 == v53 && v67 == v54)
          {
            break;
          }

          v69 = sub_1D72646CC();

          if (v69)
          {
            goto LABEL_124;
          }

LABEL_27:
          v57 = (v57 + 1) & v187;
          v46 = v64;
          if (((*(v188 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {

            v13 = v182;
            goto LABEL_16;
          }
        }

LABEL_124:

        v48 = v186;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v190 = v48;
        v46 = v64;
        v47 = v185;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D699A530(0, *(v48 + 16) + 1, 1);
          v48 = v190;
        }

        v13 = v182;
        a1 = v183;
        v72 = *(v48 + 16);
        v71 = *(v48 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_1D699A530((v71 > 1), v72 + 1, 1);
          v48 = v190;
        }

        *(v48 + 16) = v72 + 1;
        v73 = v48 + 2 * v72;
        *(v73 + 32) = v189;
        *(v73 + 33) = LOBYTE(v181);
LABEL_17:
        if (++v47 == v184)
        {
          goto LABEL_258;
        }
      }
    }

    goto LABEL_259;
  }

  swift_beginAccess();
  sub_1D5FEEEB0(&v190, v38 | v34);
  swift_endAccess();
  sub_1D5B6C1AC(0, &qword_1EC88B958, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
  v77 = sub_1D7258DBC();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1D7273AE0;
  (*(v78 + 16))(v80 + v79, a2, v77);
  v81 = sub_1D726265C();

  [v189 reloadRowsAtIndexPaths:v81 withRowAnimation:5];

  v82 = qword_1EC87D818;
  v179 = *(*(v13 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);

  if (v82 != -1)
  {
    goto LABEL_284;
  }

LABEL_132:
  v184 = *(qword_1EC9BA910 + 16);
  if (v184)
  {
    v83 = 0x7258656E6F685069;
    v180 = qword_1EC9BA910 + 32;
    v178 = qword_1EC9BA910;

    v84 = 0;
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v85 = *&a1[v13];
      if (!*(v85 + 16))
      {
        goto LABEL_136;
      }

      v185 = v84;
      v186 = v48;
      v86 = (v180 + 2 * v84);
      v87 = *v86;
      v88 = v86[1];
      sub_1D7264A0C();
      v189 = v87;
      sub_1D6E23ADC(v87);

      sub_1D72621EC();

      LODWORD(v181) = v88;
      if (v88)
      {
        v89 = 0x70616373646E616CLL;
      }

      else
      {
        v89 = 0x7469617274726F70;
      }

      if (v88)
      {
        v90 = 0xE900000000000065;
      }

      else
      {
        v90 = 0xE800000000000000;
      }

      sub_1D72621EC();

      v91 = sub_1D7264A5C();
      v92 = -1 << *(v85 + 32);
      v93 = v91 & ~v92;
      v188 = v85 + 56;
      if (((*(v85 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
      {

LABEL_135:
        a1 = v183;
        v84 = v185;
        v48 = v186;
        goto LABEL_136;
      }

      v187 = ~v92;
      while (1)
      {
        v94 = (*(v85 + 48) + 2 * v93);
        v95 = v94[1];
        v96 = 0xE800000000000000;
        v97 = v83;
        switch(*v94)
        {
          case 1:
            v97 = 0x7358656E6F685069;
            break;
          case 2:
            v97 = 0x7358656E6F685069;
            v96 = 0xEB0000000078614DLL;
            break;
          case 3:
            v97 = 0x4553656E6F685069;
            break;
          case 4:
            v97 = 0x3131656E6F685069;
            break;
          case 5:
            v97 = 0x3131656E6F685069;
            goto LABEL_171;
          case 6:
            v97 = 0x3131656E6F685069;
            goto LABEL_185;
          case 7:
            v97 = 0x3231656E6F685069;
            break;
          case 8:
            v97 = 0x3231656E6F685069;
            goto LABEL_176;
          case 9:
            v97 = 0x3231656E6F685069;
            goto LABEL_171;
          case 0xA:
            v97 = 0x3231656E6F685069;
            goto LABEL_185;
          case 0xB:
            v97 = 0x3331656E6F685069;
            break;
          case 0xC:
            v97 = 0x3331656E6F685069;
LABEL_176:
            v96 = 0xEC000000696E694DLL;
            break;
          case 0xD:
            v97 = 0x3331656E6F685069;
            goto LABEL_171;
          case 0xE:
            v97 = 0x3331656E6F685069;
            goto LABEL_185;
          case 0xF:
            v97 = 0x3431656E6F685069;
            break;
          case 0x10:
            v97 = 0x3431656E6F685069;
            goto LABEL_167;
          case 0x11:
            v97 = 0x3431656E6F685069;
            goto LABEL_171;
          case 0x12:
            v97 = 0x3431656E6F685069;
            goto LABEL_185;
          case 0x13:
            v97 = 0x3531656E6F685069;
            break;
          case 0x14:
            v97 = 0x3531656E6F685069;
            goto LABEL_167;
          case 0x15:
            v97 = 0x3531656E6F685069;
            goto LABEL_171;
          case 0x16:
            v97 = 0x3531656E6F685069;
            goto LABEL_185;
          case 0x17:
            v97 = 0x3631656E6F685069;
            break;
          case 0x18:
            v97 = 0x3631656E6F685069;
LABEL_167:
            v96 = 0xEC00000073756C50;
            break;
          case 0x19:
            v97 = 0x3631656E6F685069;
LABEL_171:
            v96 = 0xEB000000006F7250;
            break;
          case 0x1A:
            v97 = 0x3631656E6F685069;
LABEL_185:
            v96 = 0xEE0078614D6F7250;
            break;
          case 0x1B:
            v96 = 0xE400000000000000;
            v97 = 1684099177;
            break;
          case 0x1C:
            v96 = 0xE700000000000000;
            v97 = 0x72694164615069;
            break;
          case 0x1D:
            v97 = 0x696E694D64615069;
            break;
          case 0x1E:
            v97 = 0x5F6F725064615069;
            v96 = 0xEC000000355F3031;
            break;
          case 0x1F:
            v97 = 0x5F6F725064615069;
            v96 = 0xEA00000000003131;
            break;
          case 0x20:
            v97 = 0x5F6F725064615069;
            v96 = 0xEC000000395F3231;
            break;
          case 0x21:
            v96 = 0xE300000000000000;
            v97 = 6513005;
            break;
          case 0x22:
            v97 = 0x6465727265666E69;
            break;
          default:
            break;
        }

        v98 = 0xE800000000000000;
        v99 = v83;
        switch(v189)
        {
          case 1uLL:
            v99 = 0x7358656E6F685069;
            break;
          case 2uLL:
            v99 = 0x7358656E6F685069;
            v98 = 0xEB0000000078614DLL;
            break;
          case 3uLL:
            v99 = 0x4553656E6F685069;
            break;
          case 4uLL:
            v99 = 0x3131656E6F685069;
            break;
          case 5uLL:
            v99 = 0x3131656E6F685069;
            goto LABEL_210;
          case 6uLL:
            v99 = 0x3131656E6F685069;
            goto LABEL_224;
          case 7uLL:
            v99 = 0x3231656E6F685069;
            break;
          case 8uLL:
            v99 = 0x3231656E6F685069;
            goto LABEL_215;
          case 9uLL:
            v99 = 0x3231656E6F685069;
            goto LABEL_210;
          case 0xAuLL:
            v99 = 0x3231656E6F685069;
            goto LABEL_224;
          case 0xBuLL:
            v99 = 0x3331656E6F685069;
            break;
          case 0xCuLL:
            v99 = 0x3331656E6F685069;
LABEL_215:
            v98 = 0xEC000000696E694DLL;
            break;
          case 0xDuLL:
            v99 = 0x3331656E6F685069;
            goto LABEL_210;
          case 0xEuLL:
            v99 = 0x3331656E6F685069;
            goto LABEL_224;
          case 0xFuLL:
            v99 = 0x3431656E6F685069;
            break;
          case 0x10uLL:
            v99 = 0x3431656E6F685069;
            goto LABEL_206;
          case 0x11uLL:
            v99 = 0x3431656E6F685069;
            goto LABEL_210;
          case 0x12uLL:
            v99 = 0x3431656E6F685069;
            goto LABEL_224;
          case 0x13uLL:
            v99 = 0x3531656E6F685069;
            break;
          case 0x14uLL:
            v99 = 0x3531656E6F685069;
            goto LABEL_206;
          case 0x15uLL:
            v99 = 0x3531656E6F685069;
            goto LABEL_210;
          case 0x16uLL:
            v99 = 0x3531656E6F685069;
            goto LABEL_224;
          case 0x17uLL:
            v99 = 0x3631656E6F685069;
            break;
          case 0x18uLL:
            v99 = 0x3631656E6F685069;
LABEL_206:
            v98 = 0xEC00000073756C50;
            break;
          case 0x19uLL:
            v99 = 0x3631656E6F685069;
LABEL_210:
            v98 = 0xEB000000006F7250;
            break;
          case 0x1AuLL:
            v99 = 0x3631656E6F685069;
LABEL_224:
            v98 = 0xEE0078614D6F7250;
            break;
          case 0x1BuLL:
            v98 = 0xE400000000000000;
            v99 = 1684099177;
            break;
          case 0x1CuLL:
            v98 = 0xE700000000000000;
            v99 = 0x72694164615069;
            break;
          case 0x1DuLL:
            v99 = 0x696E694D64615069;
            break;
          case 0x1EuLL:
            v99 = 0x5F6F725064615069;
            v98 = 0xEC000000355F3031;
            break;
          case 0x1FuLL:
            v99 = 0x5F6F725064615069;
            v98 = 0xEA00000000003131;
            break;
          case 0x20uLL:
            v99 = 0x5F6F725064615069;
            v98 = 0xEC000000395F3231;
            break;
          case 0x21uLL:
            v98 = 0xE300000000000000;
            v99 = 6513005;
            break;
          case 0x22uLL:
            v99 = 0x6465727265666E69;
            break;
          default:
            break;
        }

        v100 = v83;
        if (v97 == v99 && v96 == v98)
        {
        }

        else
        {
          v101 = sub_1D72646CC();

          if ((v101 & 1) == 0)
          {
            goto LABEL_146;
          }
        }

        v102 = v95 ? 0x70616373646E616CLL : 0x7469617274726F70;
        v103 = v95 ? 0xE900000000000065 : 0xE800000000000000;
        if (v102 == v89 && v103 == v90)
        {
          break;
        }

        v105 = sub_1D72646CC();

        if (v105)
        {
          goto LABEL_243;
        }

LABEL_146:
        v93 = (v93 + 1) & v187;
        v83 = v100;
        if (((*(v188 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
        {

          v13 = v182;
          goto LABEL_135;
        }
      }

LABEL_243:

      v48 = v186;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v190 = v48;
      v83 = v100;
      v84 = v185;
      if ((v106 & 1) == 0)
      {
        sub_1D699A530(0, *(v48 + 16) + 1, 1);
        v48 = v190;
      }

      v13 = v182;
      a1 = v183;
      v108 = *(v48 + 16);
      v107 = *(v48 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_1D699A530((v107 > 1), v108 + 1, 1);
        v48 = v190;
      }

      *(v48 + 16) = v108 + 1;
      v109 = v48 + 2 * v108;
      *(v109 + 32) = v189;
      *(v109 + 33) = LOBYTE(v181);
LABEL_136:
      if (++v84 == v184)
      {
LABEL_258:

        goto LABEL_260;
      }
    }
  }

LABEL_259:
  v48 = MEMORY[0x1E69E7CC0];
LABEL_260:
  swift_beginAccess();

  sub_1D725B31C();

  v122 = sub_1D6360FA8(v190, v48);

  if ((v122 & 1) == 0)
  {
    *&v190 = v48;

    sub_1D725B32C();
  }
}

uint64_t sub_1D6F93020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  *(v7 + 264) = a7;
  *(v7 + 120) = a5;
  *(v7 + 128) = a6;
  *(v7 + 112) = a4;
  *(v7 + 136) = type metadata accessor for DebugFormatEditorLayoutContext(0);
  *(v7 + 144) = swift_task_alloc();
  v8 = sub_1D7259D1C();
  *(v7 + 152) = v8;
  *(v7 + 160) = *(v8 - 8);
  *(v7 + 168) = swift_task_alloc();
  v9 = sub_1D7259CFC();
  *(v7 + 176) = v9;
  *(v7 + 184) = *(v9 - 8);
  *(v7 + 192) = swift_task_alloc();
  sub_1D726290C();
  *(v7 + 200) = sub_1D72628FC();
  v11 = sub_1D726285C();
  *(v7 + 208) = v11;
  *(v7 + 216) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D6F931A8, v11, v10);
}

uint64_t sub_1D6F931A8()
{
  (*(*(v0 + 160) + 104))(*(v0 + 168), *MEMORY[0x1E69D7110], *(v0 + 152));
  sub_1D7259D0C();
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  (*(v3 + 16))(v5, v2, v4);
  v8 = *(v6 + 20);
  v9 = sub_1D7259F5C();
  (*(*(v9 - 8) + 16))(v5 + v8, v7, v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 224) = Strong;
  if (Strong)
  {
    v11 = *(v0 + 264);
    v12 = *(Strong + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_editor);
    *(v0 + 232) = v12;
    *(v0 + 240) = *(v12 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);

    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_1D6F93534;
    v14 = *(v0 + 144);
    v15 = *(v0 + 128);

    return sub_1D60CBE4C(v12, v15, v11 & 0x1FF, v14);
  }

  else
  {

    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 176);
    sub_1D6F93BFC(*(v0 + 144), type metadata accessor for DebugFormatEditorLayoutContext);
    (*(v17 + 8))(v16, v18);
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      *(v19 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading) = 0;
      v20 = v19;
      [*(v19 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView) reloadData];
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1D6F93534()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_1D6F937C8;
  }

  else
  {
    v5 = sub_1D6F936A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D6F936A4()
{
  v1 = v0[28];

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  sub_1D6F93BFC(v0[18], type metadata accessor for DebugFormatEditorLayoutContext);
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading) = 0;
    v6 = Strong;
    [*(Strong + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView) reloadData];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D6F937C8()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[18];

  sub_1D6F93BFC(v5, type metadata accessor for DebugFormatEditorLayoutContext);
  (*(v4 + 8))(v2, v3);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading) = 0;
    v7 = Strong;
    [*(Strong + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView) reloadData];
  }

  v8 = v0[1];

  return v8();
}

id sub_1D6F93A0C(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a1;

    return a2;
  }
}

uint64_t sub_1D6F93A58(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D7259F5C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v9;
  v14 = v1 + v9 + *(v8 + 64);
  v15 = *v14;
  if (v14[1])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1D5B64684;

  return sub_1D6F93020(a1, v10, v11, v12, v1 + v6, v13, v16 | v15);
}

uint64_t sub_1D6F93BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6F93C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_1D6F93CBC(uint64_t a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_sections] = MEMORY[0x1E69E7CC0];
  v5[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_editor] = a1;
  v14 = &v5[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_viewer];
  *v14 = a2;
  *(v14 + 1) = a3;
  v14[16] = a4 & 1;
  if (a4)
  {
    *&v5[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_selectedDevices] = a2;
    sub_1D6F93A0C(a2, a3, 1);

    sub_1D6F93A0C(a2, a3, 1);
  }

  else
  {
    sub_1D5B49E48(0, &qword_1EC88EEB0, &type metadata for DebugFormatWorkspaceDevice, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;

    sub_1D6F93A0C(a2, a3, 0);
    sub_1D725B31C();

    v49[10] = v45;
    v49[11] = v46;
    v49[12] = v47;
    v50 = v48;
    v49[6] = v41;
    v49[7] = v42;
    v49[8] = v43;
    v49[9] = v44;
    v49[2] = v37;
    v49[3] = v38;
    v49[4] = v39;
    v49[5] = v40;
    v49[0] = v35;
    v49[1] = v36;
    if (sub_1D5DEA380(v49) == 1)
    {
      v31 = v45;
      v32 = v46;
      v33 = v47;
      v34 = v48;
      v27 = v41;
      v28 = v42;
      v29 = v43;
      v30 = v44;
      v23 = v37;
      v24 = v38;
      v25 = v39;
      v26 = v40;
      v21 = v35;
      v22 = v36;
      sub_1D6F93C5C(&v21, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49E48);

      sub_1D725B31C();

      if ((v20 & 0xFF00) == 0x200)
      {
        *(v15 + 32) = 25;
      }

      else
      {
        *(v15 + 32) = v20;
        *(v15 + 33) = HIBYTE(v20) & 1;
      }
    }

    else
    {
      v16 = BYTE3(v47);
      v17 = BYTE4(v47);
      v31 = v45;
      v32 = v46;
      v33 = v47;
      v34 = v48;
      v27 = v41;
      v28 = v42;
      v29 = v43;
      v30 = v44;
      v23 = v37;
      v24 = v38;
      v25 = v39;
      v26 = v40;
      v21 = v35;
      v22 = v36;
      sub_1D6F93C5C(&v21, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49E48);
      *(v15 + 32) = v16;
      *(v15 + 33) = v17;
    }

    v18 = sub_1D62DCC68(v15);
    swift_setDeallocating();
    swift_deallocClassInstance();
    *&v5[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_selectedDevices] = v18;
  }

  v51.receiver = v5;
  v51.super_class = ObjectType;
  return objc_msgSendSuper2(&v51, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D6F94094()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_tableView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_sections) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceDeviceViewController_isLoading) = 0;
  sub_1D726402C();
  __break(1u);
}

void sub_1D6F94170(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t FeedServiceDebugger.__allocating_init(blueprintProvider:cursorContainerBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  (*(*(*(*v6 + 88) - 8) + 32))(v6 + *(*v6 + 112), a1);
  v7 = (v6 + *(*v6 + 120));
  *v7 = a2;
  v7[1] = a3;
  return v6;
}

uint64_t FeedServiceDebugger.deinit()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t FeedServiceDebugger.__deallocating_deinit()
{
  FeedServiceDebugger.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedServiceDebugger.debug(groupIdentifier:debugGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v42 = a1;
  v43 = a2;
  v41 = *v4;
  v5 = v41;
  v6 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v46 = AssociatedTypeWitness;
  v47 = v11;
  v48 = AssociatedConformanceWitness;
  v49 = v13;
  v14 = sub_1D725FACC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v40 - v17;
  v19 = *(v4 + *(v5 + 120));
  sub_1D725E03C();
  v20 = v19(v18);
  (*(v15 + 8))(v18, v14);
  if ((~v20 & 0xF000000000000007) != 0)
  {
    sub_1D5B67CAC(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970]);
    v31 = *(sub_1D725D52C() - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7279970;
    v35 = v34;
    v36 = v34 + v33;
    static RadarAttachment.feedCursorContainer<A>(cursorContainer:)(v20, *(v41 + 80), *(v41 + 96), (v34 + v33), v37);
    FeedCursorContainer.feedContext.getter(v20, v9);
    static RadarAttachment.feedContext(feedContext:)(v9, (v36 + v32));
    sub_1D5BE23B0(v9);
    v38 = v45;
    v39 = v44;
    if (!v44)
    {
      v39 = v43;

      v38 = v42;
    }

    static RadarAttachment.feedGroupJournal<A>(cursorContainer:identifier:)(v20, v38, v39, (v36 + 2 * v32));

    sub_1D5BD9F54(v20);
    return v35;
  }

  else
  {
    v21 = v44;
    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDFFC828;
    v23 = sub_1D7262EBC();
    sub_1D5B67CAC(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7270C10;
    v25 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1D5B7E2C0();
    *(v24 + 64) = v26;
    v27 = v43;
    *(v24 + 32) = v42;
    *(v24 + 40) = v27;
    v46 = v45;
    v47 = v21;
    sub_1D5B58D88();

    v28 = sub_1D72620FC();
    *(v24 + 96) = v25;
    *(v24 + 104) = v26;
    *(v24 + 72) = v28;
    *(v24 + 80) = v29;
    sub_1D725C30C("Failed to lookup cursor for feed journal debugger, groupIdentifier=%@, debugGroupIdentifier=%@", 94, 2, &dword_1D5B42000, v22, v23, v24);

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D6F9488C()
{
  v0 = sub_1D725E23C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725E55C();
  swift_getObjectType();
  sub_1D725F1DC();
  swift_unknownObjectRelease();
  sub_1D725E51C();
  sub_1D69110A8(0);
  sub_1D6F9A7C8(&qword_1EDF17068, 255, sub_1D69110A8, MEMORY[0x1E69D7D50]);
  v5 = sub_1D725EA0C();

  sub_1D725E16C();
  [v5 setLayoutMargins_];

  sub_1D725E51C();
  v6 = sub_1D725EA0C();

  sub_1D725E51C();
  v7 = sub_1D725EA0C();

  [v7 contentInset];

  sub_1D725E18C();
  sub_1D725E16C();
  sub_1D7262E0C();
  [v6 setContentInset_];

  sub_1D725E51C();
  v8 = sub_1D725EA0C();

  [v8 setShowsHorizontalScrollIndicator_];

  sub_1D725E51C();
  v9 = sub_1D725EA0C();

  [v9 setShowsVerticalScrollIndicator_];

  sub_1D725E51C();
  v10 = sub_1D725EA0C();

  [v10 setContentInsetAdjustmentBehavior_];

  sub_1D725E51C();
  v11 = sub_1D725EA0C();

  [v11 setClipsToBounds_];

  sub_1D725E51C();
  v12 = sub_1D725EA0C();

  [v12 _setPocketsEnabled_];

  return (*(v1 + 8))(v4, v0);
}

void sub_1D6F94BF8(char a1, uint64_t a2, void *a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong view];

    if (v9)
    {
      if (a1)
      {
        [v9 bounds];
        [a3 setFrame_];
        [a3 setAutoresizingMask_];
        v10 = [v9 addSubview_];
      }

      else
      {
        v10 = [a3 removeFromSuperview];
      }

      a4(v10);
    }
  }
}

uint64_t FormatViewController.isBeingUsedAsPlugin.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D6F94D34(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = sub_1D725EB7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v10 + v11) = v9;
  v12 = MEMORY[0x1E69D81C8];
  if (!v9)
  {
    v12 = MEMORY[0x1E69D81C0];
  }

  (*(v5 + 104))(v8, *v12, v4);
  return sub_1D725E54C();
}

uint64_t FormatViewController.isBeingUsedAsPlugin.setter(char a1)
{
  v3 = sub_1D725EB7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v1 + v8) = a1;
  v9 = MEMORY[0x1E69D81C8];
  if ((a1 & 1) == 0)
  {
    v9 = MEMORY[0x1E69D81C0];
  }

  (*(v4 + 104))(v7, *v9, v3);
  return sub_1D725E54C();
}

uint64_t (*FormatViewController.isBeingUsedAsPlugin.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1D725EB7C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1D6F95060;
}

void sub_1D6F95060(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[6];
  }

  else
  {
    v4 = v3[6];
    if (*(v3[3] + v3[7]))
    {
      v5 = MEMORY[0x1E69D81C8];
    }

    else
    {
      v5 = MEMORY[0x1E69D81C0];
    }

    (*(v3[5] + 104))(v3[6], *v5, v3[4]);
    sub_1D725E54C();
  }

  free(v4);

  free(v3);
}

void (*FormatViewController.pluggableDelegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDA4EC;
}

uint64_t FormatViewController.pluginIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double FormatViewController.pluginIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void (*FormatViewController.selectionProvider.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_selectionProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D6F9A810;
}