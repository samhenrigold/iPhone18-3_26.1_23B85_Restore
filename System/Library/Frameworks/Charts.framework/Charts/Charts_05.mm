__n128 sub_1AAD09930(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1AAD09998@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = v7;
  v67 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ChartModel.Scenegraph(0);
  v69 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v70 = v8;
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SgCanvasRenderer(0);
  v10 = MEMORY[0x1EEE9AC00](v64);
  v63 = (v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[1];
  v12 = a1[2];
  v72 = a1;
  v14 = a1[3];
  v68 = a2;
  v61 = v3;
  v15 = sub_1AAD0A6AC(a2, v10);
  if ((v15 - 1) >= 2)
  {
    v57[1] = v13;
    if (v15)
    {
      sub_1AACBBBA0(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AAF9E2B0;
      *(v22 + 32) = v12;
      *(v22 + 40) = v13;
      v23 = type metadata accessor for SgGroup(0);
      v13 = swift_allocBox();
      v25 = v24;
      v26 = v23[6];
      v27 = type metadata accessor for SgClipRect(0);
      (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
      *v25 = 0;
      *(v25 + 1) = v22;
      *&v25[v23[7]] = 0x3FF0000000000000;
      *&v25[v23[8]] = 0;
      *&v25[v23[9]] = MEMORY[0x1E69E7CC0];
      v25[v23[10]] = 0;
    }

    else
    {
      sub_1AACBBBA0(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AAF99670;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      *(v16 + 48) = v13;
      v17 = type metadata accessor for SgGroup(0);
      v13 = swift_allocBox();
      v19 = v18;
      v20 = v17[6];
      v21 = type metadata accessor for SgClipRect(0);
      (*(*(v21 - 8) + 56))(&v19[v20], 1, 1, v21);
      *v19 = 0;
      *(v19 + 1) = v16;
      *&v19[v17[7]] = 0x3FF0000000000000;
      *&v19[v17[8]] = 0;
      *&v19[v17[9]] = MEMORY[0x1E69E7CC0];
      v19[v17[10]] = 0;
    }
  }

  v62 = type metadata accessor for ChartModel.Scenegraph;
  sub_1AACB26B4(v72, v9, type metadata accessor for ChartModel.Scenegraph);
  v28 = *(v9 + 78);
  v29 = *(v9 + 163);
  v30 = *(v9 + 164);
  v58 = *(v9 + 1288);
  v59 = v28;
  sub_1AAD050BC((v9 + 536), v73);
  v31 = *v9;
  sub_1AACB6294(0, &qword_1ED9B28A8, sub_1AAD107BC, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1AAF92AB0;
  *(v32 + 32) = v31;
  sub_1AAD050BC(v73, v32 + 104);
  *(v32 + 40) = 0x3FF0000000000000;
  *(v32 + 48) = v13;
  v33 = v59;
  *(v32 + 72) = v58;
  *(v32 + 56) = v33;
  *(v32 + 88) = v29;
  *(v32 + 96) = v30;
  v34 = sub_1AAD10684(v32);
  v60 = v13;
  v35 = v34;
  swift_setDeallocating();

  sub_1AACDCF70(v32 + 32, sub_1AAD107BC);
  swift_deallocClassInstance();
  sub_1AAD09944(v73);
  v36 = v63;
  v37 = v64;
  *v63 = v35;
  *(v36 + 8) = v9[1280];
  v38 = *(v65 + 56);
  v39 = *(v37 + 24);
  v40 = sub_1AAF8DF14();
  (*(*(v40 - 8) + 16))(v36 + v39, &v9[v38], v40);
  sub_1AACDCF70(v9, type metadata accessor for ChartModel.Scenegraph);
  v41 = v36 + *(v37 + 28);
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 1;
  v43 = v67;
  v42 = v68;
  (*(v6 + 16))(v67, v61, v68);
  v44 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = *(v42 + 16);
  v46 = (*(v6 + 32))(v45 + v44, v43, v42);
  MEMORY[0x1EEE9AC00](v46);
  v57[-2] = sub_1AAE396D0;
  v57[-1] = v45;
  sub_1AAD0A750(0, &qword_1ED9B3748, sub_1AACCC5A8, &type metadata for SgAccessibilityRenderer, type metadata accessor for _LazyAccessibilityChildren);
  sub_1AACDCA40(&qword_1ED9B6180, type metadata accessor for SgCanvasRenderer, &unk_1AAFC3A5C);
  sub_1AACCC644();
  v47 = v71;
  sub_1AAF8EBC4();

  sub_1AACDCF70(v36, type metadata accessor for SgCanvasRenderer);
  v48 = sub_1AAF8EE54();

  v49 = v72;
  sub_1AACB26B4(v72, v9, v62);
  v50 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v51 = swift_allocObject();
  sub_1AAD10834(v9, v51 + v50, type metadata accessor for ChartModel.Scenegraph);
  sub_1AAD00B34(0, &qword_1ED9B2D88, sub_1AACCC49C, &qword_1ED9B2BC8, MEMORY[0x1E697FF68]);
  v53 = (v47 + *(v52 + 36));
  *v53 = v48;
  v53[1] = sub_1AAD0D3F0;
  v53[2] = v51;
  sub_1AAD0A7B8(0);
  *(v47 + *(v54 + 36)) = 0;
  sub_1AACCC2DC(0);
  return sub_1AAD0F924((v49 + 4), v47 + *(v55 + 36));
}

uint64_t sub_1AAD0A170()
{
  v1 = type metadata accessor for ChartModel.Scenegraph(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 451) != 1)
  {
    goto LABEL_20;
  }

  if (*(v5 + 72) != 255)
  {
    sub_1AACB634C((v5 + 32));
  }

  if (*(v5 + 120) != 255)
  {
    sub_1AACB634C((v5 + 80));
  }

  if (*(v5 + 168) != 255)
  {
    sub_1AACB634C((v5 + 128));
  }

  if (*(v5 + 216) != 255)
  {
    sub_1AACB634C((v5 + 176));
  }

  if (*(v5 + 264) != 255)
  {
    sub_1AACB634C((v5 + 224));
  }

  if (*(v5 + 312) != 255)
  {
    sub_1AACB634C((v5 + 272));
  }

  if (*(v5 + 360) != 255)
  {
    sub_1AACB634C((v5 + 320));
  }

  if (*(v5 + 408) != 255)
  {
    sub_1AACB634C((v5 + 368));
  }

  if (*(v5 + 424))
  {

LABEL_20:
  }

  if (*(v5 + 456))
  {
  }

  if (*(v5 + 472))
  {
  }

  if (*(v5 + 488))
  {
  }

  if (*(v5 + 504))
  {
  }

  if (*(v5 + 520))
  {
  }

  if (*(v5 + 640) != 255)
  {
    sub_1AACE3E8C(*(v5 + 536), *(v5 + 544), *(v5 + 552), *(v5 + 560), *(v5 + 568), *(v5 + 576), *(v5 + 584), *(v5 + 592), *(v5 + 600));
  }

  if (*(v5 + 752) != 255)
  {
    sub_1AACE3E8C(*(v5 + 648), *(v5 + 656), *(v5 + 664), *(v5 + 672), *(v5 + 680), *(v5 + 688), *(v5 + 696), *(v5 + 704), *(v5 + 712));
  }

  if (*(v5 + 856) != 255)
  {
    sub_1AAE0BF5C(*(v5 + 760), *(v5 + 768), *(v5 + 776), *(v5 + 784), *(v5 + 792), *(v5 + 800), *(v5 + 808), *(v5 + 816));
  }

  if (*(v5 + 992) != 255)
  {

    if (*(v5 + 904))
    {
      sub_1AACB634C((v5 + 880));
    }

    if (*(v5 + 920))
    {
    }

    v6 = *(v5 + 952);
    if (v6 != 255)
    {
      sub_1AACB8788(*(v5 + 944), v6 & 1, MEMORY[0x1E69E7CF8], MEMORY[0x1E69E7D48]);
    }
  }

  if (*(v5 + 1104) != 255)
  {
    sub_1AACE3E8C(*(v5 + 1000), *(v5 + 1008), *(v5 + 1016), *(v5 + 1024), *(v5 + 1032), *(v5 + 1040), *(v5 + 1048), *(v5 + 1056), *(v5 + 1064));
  }

  if (*(v5 + 1240) != 255)
  {
    sub_1AAE39548(*(v5 + 1112), *(v5 + 1120), *(v5 + 1128), *(v5 + 1136), *(v5 + 1144), *(v5 + 1152), *(v5 + 1160), *(v5 + 1168), *(v5 + 1176), *(v5 + 1184), *(v5 + 1192), *(v5 + 1200));
  }

  v7 = *(v1 + 56);
  v8 = sub_1AAF8DF14();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v5 + *(v1 + 68);
  if (*(v9 + 40) != 255)
  {
    sub_1AACB634C(v9);
  }

  if (*(v9 + 88) != 255)
  {
    sub_1AACB634C((v9 + 48));
  }

  if (*(v9 + 136) != 255)
  {
    sub_1AACB634C((v9 + 96));
  }

  if (*(v9 + 184) != 255)
  {
    sub_1AACB634C((v9 + 144));
  }

  if (*(v9 + 232) != 255)
  {
    sub_1AACB634C((v9 + 192));
  }

  if (*(v9 + 280) != 255)
  {
    sub_1AACB634C((v9 + 240));
  }

  if (*(v9 + 328) != 255)
  {
    sub_1AACB634C((v9 + 288));
  }

  if (*(v9 + 376) != 255)
  {
    sub_1AACB634C((v9 + 336));
  }

  if (*(v9 + 392))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AAD0A6AC(uint64_t a1, double a2)
{
  if (sub_1AAD00AC4(a1, a2))
  {
    return 3;
  }

  if (sub_1AAD00C3C(a1))
  {
    return 2;
  }

  v4 = sub_1AAE2F780(a1);
  v6 = v5;
  sub_1AACB4A98(v7, v8);
  if (v4 || (v9 = sub_1AAE2F780(a1), v4 = v10, v6 = v11, sub_1AACB4A98(v9, v12), v4))
  {
    sub_1AACB4A98(v4, v6);
    return 2;
  }

  result = sub_1AAE2F2F4(a1);
  if (result)
  {
    sub_1AACB4A98(result, v13);
    return 1;
  }

  return result;
}

void sub_1AAD0A750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AAD0A7B8(uint64_t a1)
{
  if (!qword_1ED9B2D40)
  {
    sub_1AAD00B34(255, &qword_1ED9B2D88, sub_1AACCC49C, &qword_1ED9B2BC8, MEMORY[0x1E697FF68]);
    sub_1AAD0A750(255, &qword_1ED9B2BF0, sub_1AACCC830, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2D40);
    }
  }
}

uint64_t sub_1AAD0A8A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1AAF8DF14();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

double sub_1AAD0A950()
{
  qword_1ED9C36D0 = swift_getKeyPath();
  word_1ED9C3873 = 256;
  result = 0.0;
  xmmword_1ED9C3878 = 0u;
  unk_1ED9C3888 = 0u;
  xmmword_1ED9C3898 = 0u;
  unk_1ED9C38A8 = 0u;
  xmmword_1ED9C38B8 = 0u;
  return result;
}

void sub_1AAD0A9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AAD0AA94(255, &qword_1ED9B2BE8, sub_1AACCFAB4, &type metadata for ChartInternalOverlayListenerModifier, MEMORY[0x1E697FDE8]);
    v9 = v8;
    v10 = a3(255);
    v11 = a4(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1AAD0AA94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AAD0AAFC()
{
  result = qword_1ED9B4520;
  if (!qword_1ED9B4520)
  {
    sub_1AAD0A9A4(255);
    sub_1AAD0ABAC();
    sub_1AAD135EC(&qword_1ED9B4508, sub_1AAD13474, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4520);
  }

  return result;
}

unint64_t sub_1AAD0ABAC()
{
  result = qword_1ED9B5548;
  if (!qword_1ED9B5548)
  {
    sub_1AAD0AA94(255, &qword_1ED9B2BE8, sub_1AACCFAB4, &type metadata for ChartInternalOverlayListenerModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5548);
  }

  return result;
}

uint64_t sub_1AAD0AC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD0ACD8(&qword_1ED9B6188, type metadata accessor for SgCanvasRenderer, &unk_1AAFC3A0C);

  return MEMORY[0x1EEDE3698](a1, a2, a3, v8, a4);
}

uint64_t sub_1AAD0ACD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AAD0AD48(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    sub_1AAD1117C(a1, v79);
    if (LOBYTE(v79[11]) == 254)
    {
      sub_1AAD200D0(v79, &qword_1EB4273C8, sub_1AAD1A1A0);
      v17 = 0;
      v18 = 0xE000000000000000;
      v19 = 0;
      v20 = 0.0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    else
    {
      memcpy(__dst, v79 + 8, 0x301uLL);
      v18 = __dst[1];
      v17 = __dst[2];
      v19 = __dst[3];
      v20 = *&__dst[4];
      v21 = __dst[5];
      v22 = __dst[6];
      v23 = __dst[7];

      sub_1AAD11338(__dst);
    }

LABEL_54:
    *v2 = v18;
    v2[1] = v17;
    v2[2] = v19;
    *(v2 + 3) = v20;
    v2[4] = v21;
    v2[5] = v22;
    v2[6] = v23;
    return;
  }

  v5 = sub_1AAD1BFE4(v3, 0);
  v6 = sub_1AAD1C0E8(v79, v5 + 32, v3, a1);
  v7 = *&v79[0];

  sub_1AACC9C00(v7);
  if (v6 == v3)
  {
    *&v79[0] = v5;
    sub_1AAD1C270(v79);
    v8 = *&v79[0];
    v9 = *(*&v79[0] + 16);
    v10 = MEMORY[0x1E69E7CC0];
    v67 = *&v79[0];
    if (v9)
    {
      v78 = MEMORY[0x1E69E7CC0];
      sub_1AAD1C7B8(0, v9, 0);
      v11 = v8 + 32;
      v12 = v78;
      v13 = v8 + 32;
      v14 = v9;
      do
      {
        sub_1AAD1C5AC(v13, v79, sub_1AAD1A1A0);
        sub_1AAD1C5AC(v79, __dst, sub_1AAD1A1A0);
        v74 = __dst[0];
        memcpy(v75, &__dst[1], sizeof(v75));
        sub_1AAD050BC(&v75[64], __src);
        sub_1AAF502C0(&v74, sub_1AAD1A1A0);
        sub_1AAF502C0(v79, sub_1AAD1A1A0);
        v78 = v12;
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1AAD1C7B8((v15 > 1), v16 + 1, 1);
          v12 = v78;
        }

        *(v12 + 16) = v16 + 1;
        memcpy((v12 + 712 * v16 + 32), __src, 0x2C1uLL);
        v13 += 784;
        --v14;
      }

      while (v14);
      __src[0] = v10;
      sub_1AACEF664(0, v9, 0);
      v10 = __src[0];
      v24 = v9;
      do
      {
        sub_1AAD1C5AC(v11, v79, sub_1AAD1A1A0);
        sub_1AAD1C5AC(v79, __dst, sub_1AAD1A1A0);
        v74 = __dst[0];
        memcpy(v75, &__dst[1], sizeof(v75));
        v25 = *v75;
        sub_1AAF502C0(&v74, sub_1AAD1A1A0);
        sub_1AAF502C0(v79, sub_1AAD1A1A0);
        __src[0] = v10;
        v27 = *(v10 + 16);
        v26 = *(v10 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1AACEF664((v26 > 1), v27 + 1, 1);
          v10 = __src[0];
        }

        *(v10 + 16) = v27 + 1;
        *(v10 + 8 * v27 + 32) = v25;
        v11 += 784;
        --v24;
      }

      while (v24);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for SgMerger.Context();
    v28 = swift_allocObject();
    *(v28 + 16) = v12;
    *(v28 + 24) = v10;
    v66 = v28;
    v29 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v9, 0);
      v29 = __src[0];
      v30 = v67;
      v31 = v67 + 32;
      v32 = v9;
      do
      {
        sub_1AAD1C5AC(v31, v79, sub_1AAD1A1A0);
        sub_1AAD1C5AC(v79, __dst, sub_1AAD1A1A0);
        v74 = __dst[0];
        memcpy(v75, &__dst[1], sizeof(v75));
        v33 = *v75;
        sub_1AAF502C0(&v74, sub_1AAD1A1A0);
        sub_1AAF502C0(v79, sub_1AAD1A1A0);
        __src[0] = v29;
        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1AACEF664((v34 > 1), v35 + 1, 1);
          v29 = __src[0];
        }

        *(v29 + 16) = v35 + 1;
        *(v29 + 8 * v35 + 32) = v33;
        v31 += 784;
        --v32;
      }

      while (v32);
    }

    else
    {
      v30 = v67;
    }

    v36 = *(v30 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (!v36)
    {
      v5 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
LABEL_27:
        __src[0] = v37;

        sub_1AAD0F6F0(0, v9, 0);
        v38 = __src[0];
        v39 = v30 + 32;
        v40 = v9;
        do
        {
          sub_1AAD1C5AC(v39, v79, sub_1AAD1A1A0);
          sub_1AAD1C5AC(v79, __dst, sub_1AAD1A1A0);
          v74 = __dst[0];
          memcpy(v75, &__dst[1], sizeof(v75));
          v41 = *&v75[8];

          sub_1AAF502C0(&v74, sub_1AAD1A1A0);
          sub_1AAF502C0(v79, sub_1AAD1A1A0);
          __src[0] = v38;
          v43 = v38[2];
          v42 = v38[3];
          if (v43 >= v42 >> 1)
          {
            sub_1AAD0F6F0((v42 > 1), v43 + 1, 1);
            v38 = __src[0];
          }

          v38[2] = v43 + 1;
          v38[v43 + 4] = v41;
          v39 += 784;
          --v40;
        }

        while (v40);
        v30 = v67;
        goto LABEL_34;
      }

LABEL_33:

      v38 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v18 = sub_1AAD1DC8C(v38, v29, v5, v66);

      v44 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        __src[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD26350(0, v9, 0);
        v45 = __src[0];
        v46 = v30 + 32;
        v47 = v9;
        do
        {
          sub_1AAD1C5AC(v46, v79, sub_1AAD1A1A0);
          sub_1AAD1C5AC(v79, __dst, sub_1AAD1A1A0);
          v74 = __dst[0];
          memcpy(v75, &__dst[1], sizeof(v75));
          v70 = *&v75[16];
          sub_1AAF502C0(&v74, sub_1AAD1A1A0);
          sub_1AAF502C0(v79, sub_1AAD1A1A0);
          __src[0] = v45;
          v49 = *(v45 + 16);
          v48 = *(v45 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_1AAD26350((v48 > 1), v49 + 1, 1);
            v45 = __src[0];
          }

          *(v45 + 16) = v49 + 1;
          *(v45 + 16 * v49 + 32) = v70;
          v46 += 784;
          --v47;
        }

        while (v47);
        v44 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      v50 = sub_1AAD26370(v45, v29);
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = (v50 + 32);
        v53 = 0uLL;
        do
        {
          v54 = *v52++;
          v53 = vaddq_f64(v53, v54);
          --v51;
        }

        while (v51);
      }

      else
      {
        v53 = 0uLL;
      }

      v71 = v53;

      swift_getKeyPath();
      v79[0] = v71;
      swift_getAtKeyPath();

      v17 = __dst[0];
      swift_getKeyPath();
      v79[0] = v71;
      swift_getAtKeyPath();

      v19 = __dst[0];
      if (v9)
      {
        __src[0] = v44;
        sub_1AAD25AB8(0, v9, 0);
        v55 = __src[0];
        v56 = v67 + 32;
        do
        {
          sub_1AAD1C5AC(v56, v79, sub_1AAD1A1A0);
          sub_1AAD1C5AC(v79, __dst, sub_1AAD1A1A0);
          v74 = __dst[0];
          memcpy(v75, &__dst[1], sizeof(v75));
          v68 = *&v75[48];
          v72 = *&v75[32];
          sub_1AAF502C0(&v74, sub_1AAD1A1A0);
          sub_1AAF502C0(v79, sub_1AAD1A1A0);
          __src[0] = v55;
          v58 = *(v55 + 16);
          v57 = *(v55 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1AAD25AB8((v57 > 1), v58 + 1, 1);
            v55 = __src[0];
          }

          *(v55 + 16) = v58 + 1;
          v59 = v55 + 32 * v58;
          *(v59 + 32) = v72;
          *(v59 + 48) = v68;
          v56 += 784;
          --v9;
        }

        while (v9);
      }

      else
      {

        v55 = MEMORY[0x1E69E7CC0];
      }

      memset(v79, 0, 32);
      LOBYTE(v79[2]) = 1;
      v60.n128_f64[0] = sub_1AAD25CF0(v55, v29, v79);
      v69 = v61;
      v73 = v60;

      v20 = sub_1AAD2656C(v73, v69);
      v21 = v62;
      v22 = v63;
      v23 = v64;

      v2 = a2;
      goto LABEL_54;
    }

    v5 = sub_1AAD1DBDC(*(v30 + 16), 0);
    if (sub_1AAD1DBF0(v79, (v5 + 32), v36, 0, v36) == v36)
    {
      if (v9)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
}

double sub_1AAD0B74C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAD0B758(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAD0B764@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_1AAD0B770(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

char *sub_1AAD0B77C(uint64_t a1)
{
  v54 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v54);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v48 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v48 - v7;
  v60 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a1 + 32;
    v52 = xmmword_1AAF92AB0;
    v49 = v8;
    v48 = a1 + 32;
    do
    {
      v11 = *(v10 + 8 * v9);
      if (v11 >> 60)
      {
        swift_beginAccess();
        v40 = v60;
        swift_retain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1AACE3508(0, *(v40 + 2) + 1, 1, v40);
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        if (v42 >= v41 >> 1)
        {
          v40 = sub_1AACE3508((v41 > 1), v42 + 1, 1, v40);
        }

        *(v40 + 2) = v42 + 1;
        *&v40[8 * v42 + 32] = v11;
        v60 = v40;
        swift_endAccess();
      }

      else
      {
        v12 = swift_projectBox();
        v13 = v55;
        sub_1AAD115C0(v12, v55, type metadata accessor for SgGroup);
        v14 = *(v13 + 8);

        v15 = sub_1AAD0B77C(v14);
        v16 = v15;
        v17 = 0;
        v18 = *(v15 + 16);
        while (v18 != v17)
        {
          v19 = v15 + 8 * v17++;
          if (*(v19 + 32) >> 60 == 2)
          {
            v50 = v11;
            v51 = v9;
            v20 = MEMORY[0x1E69E7CC0];
            v59 = MEMORY[0x1E69E7CC0];
            swift_beginAccess();
            v21 = 32;
            do
            {
              v22 = *(v16 + v21);
              if (v22 >> 60 == 2)
              {
                sub_1AAD117A0((v22 & 0xFFFFFFFFFFFFFFFLL) + 16, v58);
                if (*(v20 + 2))
                {
                  v23 = v53;
                  sub_1AAD115C0(v55, v53, type metadata accessor for SgGroup);

                  *(v23 + 8) = v20;
                  v24 = swift_allocBox();
                  sub_1AAD115C0(v23, v25, type metadata accessor for SgGroup);
                  swift_beginAccess();
                  v26 = v60;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v26 = sub_1AACE3508(0, *(v26 + 2) + 1, 1, v26);
                  }

                  v28 = *(v26 + 2);
                  v27 = *(v26 + 3);
                  if (v28 >= v27 >> 1)
                  {
                    v26 = sub_1AACE3508((v27 > 1), v28 + 1, 1, v26);
                  }

                  *(v26 + 2) = v28 + 1;
                  *&v26[8 * v28 + 32] = v24;
                  v60 = v26;
                  swift_endAccess();
                  v29 = MEMORY[0x1E69E7CC0];
                  v59 = MEMORY[0x1E69E7CC0];

                  sub_1AAD0BF4C(v53, type metadata accessor for SgGroup);
                  v20 = v29;
                }

                else
                {
                }

                sub_1AAD115C0(v55, v3, type metadata accessor for SgGroup);
                sub_1AAD117A0(v58, v56);
                v32 = v57;

                *(v3 + 1) = v32;
                sub_1AAD11570(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
                v33 = swift_allocObject();
                *(v33 + 16) = v52;
                v34 = swift_allocBox();
                sub_1AAD115C0(v3, v35, type metadata accessor for SgGroup);
                *(v33 + 32) = v34;

                v57 = v33;
                v36 = swift_allocObject();
                sub_1AAD117A0(v56, v36 + 16);
                swift_beginAccess();
                v37 = v60;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v37 = sub_1AACE3508(0, *(v37 + 2) + 1, 1, v37);
                }

                v39 = *(v37 + 2);
                v38 = *(v37 + 3);
                if (v39 >= v38 >> 1)
                {
                  v37 = sub_1AACE3508((v38 > 1), v39 + 1, 1, v37);
                }

                *(v37 + 2) = v39 + 1;
                *&v37[8 * v39 + 32] = v36 | 0x2000000000000000;
                v60 = v37;
                swift_endAccess();
                sub_1AAF14C40(v58);
                sub_1AAF14C40(v56);
                sub_1AAD0BF4C(v3, type metadata accessor for SgGroup);
              }

              else
              {
                swift_beginAccess();
                swift_retain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v20 = sub_1AACE3508(0, *(v20 + 2) + 1, 1, v20);
                }

                v31 = *(v20 + 2);
                v30 = *(v20 + 3);
                if (v31 >= v30 >> 1)
                {
                  v20 = sub_1AACE3508((v30 > 1), v31 + 1, 1, v20);
                }

                *(v20 + 2) = v31 + 1;
                *&v20[8 * v31 + 32] = v22;
                v59 = v20;
                swift_endAccess();
              }

              v21 += 8;
              --v18;
            }

            while (v18);

            v46 = v55;
            sub_1AAF2ED3C(&v59, v55, &v60);
            sub_1AAD0BF4C(v46, type metadata accessor for SgGroup);

            v8 = v49;
            v9 = v51;
            v10 = v48;
            goto LABEL_5;
          }
        }

        swift_beginAccess();
        v43 = v60;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1AACE3508(0, *(v43 + 2) + 1, 1, v43);
        }

        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1AACE3508((v44 > 1), v45 + 1, 1, v43);
        }

        *(v43 + 2) = v45 + 1;
        *&v43[8 * v45 + 32] = v11;
        v60 = v43;
        swift_endAccess();
        sub_1AAD0BF4C(v55, type metadata accessor for SgGroup);
      }

LABEL_5:
      ++v9;
    }

    while (v9 != v8);
  }

  swift_beginAccess();
  return v60;
}

uint64_t sub_1AAD0BF04()
{

  if (*(v0 + 56))
  {
    sub_1AACB634C((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD0BF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1AAD0BFAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B28F8, &type metadata for SgCompositingLayer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD0C0D0(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD0BFAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AAD0C190(uint64_t a1)
{
  if (!qword_1ED9B2ED0)
  {
    sub_1AAD110E8(255);
    sub_1AAD1FEBC(255);
    sub_1AAD0ACD8(&qword_1ED9B2F00, sub_1AAD110E8, MEMORY[0x1E697DDC8]);
    v1 = sub_1AAF8DBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2ED0);
    }
  }
}

void sub_1AAD0C23C(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SgCanvasRenderer(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 2);
  v9 = v2[3];
  v10 = v2[4];
  v11 = (v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = *(v11 + 32);
  v17 = *(v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));

  sub_1AAD0C308(a1, v8, v2 + v6, v16, v17, a2, v9, v10, v12, v13, v14, v15);
}

void sub_1AAD0C308(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>)
{
  v59 = a5;
  v56 = a4;
  v60 = a3;
  v63 = a6;
  v57 = sub_1AAF8E1A4();
  v20 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0C9E4(0);
  v55 = v22;
  v62 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v27 = type metadata accessor for RenderParams(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v54 - v32);
  v34 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v34 >= *(a2 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v35 = a2 + (v34 << 6);
  v36 = *(type metadata accessor for SgCanvasRenderer(0) + 24);
  v37 = *(v27 + 20);
  v38 = sub_1AAF8DF14();
  (*(*(v38 - 8) + 16))(v33 + v37, v60 + v36, v38);
  *v33 = a7;
  v33[1] = a8;
  sub_1AAD117A0(v35 + 32, &v66);
  sub_1AAD115C0(v33, v30, type metadata accessor for RenderParams);
  v39 = (*(v28 + 80) + 136) & ~*(v28 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = a9;
  *(v40 + 24) = a10;
  *(v40 + 32) = a11;
  *(v40 + 40) = a12;
  *(v40 + 48) = v56 & 1;
  *(v40 + 56) = a7;
  *(v40 + 64) = a8;
  v41 = v67;
  *(v40 + 72) = v66;
  *(v40 + 88) = v41;
  v42 = v69;
  *(v40 + 104) = v68;
  *(v40 + 120) = v42;
  v43 = sub_1AAD1089C(v30, v40 + v39, type metadata accessor for RenderParams);
  v44 = MEMORY[0x1EEE9AC00](v43);
  (*(v20 + 104))(v58, *MEMORY[0x1E697F3A0], v57, v44);
  sub_1AAD0CA60(0);
  sub_1AAD117FC();
  sub_1AAF8EE94();
  v45 = v55;
  sub_1AAF8EE84();
  sub_1AAF8EE74();
  sub_1AAD14CD4(v35 + 48, &v64);
  if (v65)
  {
    sub_1AACBB198(&v64, &v66);
    v46 = *(&v67 + 1);
    v47 = v68;
    v48 = sub_1AACBB42C(&v66, *(&v67 + 1));
    v49 = v62;
    v50 = v61;
    (*(v62 + 16))(v61, v26, v45);
    v51 = sub_1AAF2EF1C(v48, v50, v46, v47);
    v52 = *(v49 + 8);
    v52(v50, v45);
    v52(v26, v45);
    sub_1AAD0BF4C(v33, type metadata accessor for RenderParams);
    sub_1AACB634C(&v66);
  }

  else
  {
    sub_1AAD144E0(&v64);
    v53 = v62;
    (*(v62 + 16))(v61, v26, v45);
    sub_1AAD0ACD8(&qword_1ED9B5510, sub_1AAD0C9E4, MEMORY[0x1E69817B0]);
    v51 = sub_1AAF8EF44();
    (*(v53 + 8))(v26, v45);
    sub_1AAD0BF4C(v33, type metadata accessor for RenderParams);
  }

  *v63 = v51;
}

uint64_t sub_1AAD0C8EC()
{
  v1 = type metadata accessor for RenderParams(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  if (*(v0 + 112))
  {
    sub_1AACB634C((v0 + 88));
  }

  v4 = (v2 + 136) & ~v2;
  v5 = v0 + *(v1 + 20);
  v6 = sub_1AAF8DF14();
  (*(*(v6 - 8) + 8))(v5 + v4, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

void sub_1AAD0C9E4(uint64_t a1)
{
  if (!qword_1ED9B2B48)
  {
    sub_1AAD0CA60(255);
    sub_1AAD117FC();
    v1 = sub_1AAF8EEB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2B48);
    }
  }
}

uint64_t sub_1AAD0CA48(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAD0CA60(uint64_t a1)
{
  if (!qword_1ED9B2B28)
  {
    sub_1AAD11570(255, &qword_1ED9B2A58, &type metadata for SgNode.ViewContent, MEMORY[0x1E69E62F8]);
    sub_1AAD0D2AC();
    sub_1AAD0D230();
    v1 = sub_1AAF8EFE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2B28);
    }
  }
}

uint64_t sub_1AAD0CB1C(unint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v19 = sub_1AAD0CDE4(MEMORY[0x1E69E7CC0]);
  sub_1AAD118A4(a1, &v19, a1);
  v3 = v19;
  v4 = v19[2];
  if (v4)
  {
    v5 = sub_1AAD26C20(v19[2], 0);
    v6 = sub_1AAD26D10(&v18, v5 + 4, v4, v3);
    v7 = v18;

    sub_1AACC9C00(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = v2;
LABEL_5:
  v18 = v5;
  sub_1AAD0D03C(&v18);
  v8 = v18;
  v9 = v18[2];
  if (v9)
  {
    v18 = v2;
    sub_1AAD26F8C(0, v9, 0);
    v10 = 0;
    v2 = v18;
    v11 = v18[2];
    v12 = 16 * v11;
    do
    {
      v14 = *(v8 + v10 + 32);
      v13 = *(v8 + v10 + 40);
      v18 = v2;
      v15 = *(v2 + 24);

      if (v11 >= v15 >> 1)
      {
        sub_1AAD26F8C((v15 > 1), v11 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v11 + 1;
      v16 = v2 + v12 + v10;
      *(v16 + 32) = v14;
      *(v16 + 40) = v13;
      v10 += 16;
      ++v11;
      --v9;
    }

    while (v9);
  }

  return v2;
}

uint64_t sub_1AAD0CCDC(unint64_t a1)
{
  v9 = sub_1AAD0CB1C(a1);
  sub_1AAD11570(0, &qword_1ED9B2A58, &type metadata for SgNode.ViewContent, MEMORY[0x1E69E62F8]);
  v2 = v1;
  sub_1AAD0D2AC();
  v4 = v3;
  v5 = sub_1AAD0D230();
  v6 = sub_1AAD0ACD8(&qword_1ED9B5508, sub_1AAD0D2AC, MEMORY[0x1E6981810]);
  v7 = sub_1AAD0D1DC();
  return sub_1AAF8EFD4(&v9, sub_1AACFD8A4, 0, v2, MEMORY[0x1E69E76D8], v4, v5, v6, v7);
}

void *sub_1AAD0CDE4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AAD9ACC4();
  v3 = sub_1AAF903A4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1AACC9B78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1AACC9B78(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1AAD0CEE0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD45CC0(0, &qword_1ED9B1680, &qword_1ED9B2890, MEMORY[0x1E69E76D8], MEMORY[0x1E6981910]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD0D184(0, &qword_1ED9B2890, MEMORY[0x1E69E76D8], MEMORY[0x1E6981910], "key value ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AAD0D03C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AAD12118(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1AAF90464();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AAF67A0C();
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1AAF67280(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1AAD0D184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1AAD0D1DC()
{
  result = qword_1ED9B5890[0];
  if (!qword_1ED9B5890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B5890);
  }

  return result;
}

unint64_t sub_1AAD0D230()
{
  result = qword_1ED9B54E8;
  if (!qword_1ED9B54E8)
  {
    sub_1AAD11570(255, &qword_1ED9B2A58, &type metadata for SgNode.ViewContent, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B54E8);
  }

  return result;
}

void sub_1AAD0D2AC()
{
  if (!qword_1ED9B2B40)
  {
    v0 = sub_1AAF8EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2B40);
    }
  }
}

void sub_1AAD0D328(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAD45E1C(255, a3, a4);
    v5 = sub_1AAF90484();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AAD0D380(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AAD45E1C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AAD0D3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChartModel.Scenegraph(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1AAD1212C(a1, v6, a2);
}

void sub_1AAD0D470(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(type metadata accessor for RenderBasedChartView(0, v8, v9, a4) - 8);
  v11 = (v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)));

  sub_1AAD14D68(a1, v11, v8, v9, x8_0);
}

void sub_1AAD0D570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1AAD0A750(255, &qword_1ED9B2F18, sub_1AACCCC54, MEMORY[0x1E6980F80], MEMORY[0x1E697DDA0]);
    v4 = sub_1AAF8DF74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AAD0D65C()
{
  result = qword_1ED9B2C18;
  if (!qword_1ED9B2C18)
  {
    sub_1AAD0D614(255);
    sub_1AAD26164();
    sub_1AACDCA40(&qword_1ED9B54F0, sub_1AAD12484, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2C18);
  }

  return result;
}

uint64_t sub_1AAD0D718(uint64_t *a1, double a2, double a3)
{
  v7 = *(type metadata accessor for RenderParams(0) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  v13 = (v3 + ((*(v7 + 80) + 136) & ~*(v7 + 80)));
  v14 = *(v3 + 56);

  return sub_1AAD0D7B4(a1, v12, v3 + 72, v13, a2, a3, v8, v9, v10, v11, v14);
}

uint64_t sub_1AAD0D7B4(uint64_t *a1, char a2, uint64_t a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  sub_1AAF8DD04();
  if (a2)
  {
    sub_1AAF8DD04();
    sub_1AAF8DE84();
  }

  sub_1AAD12A5C(*(a3 + 8), &v22);
  v15 = *(v22 + 2);
  if (v15)
  {
    v16 = v23;
    v17 = v22 + 40;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v17 += 16;
      v22 = v18;
      v23 = v19;
      v16(&v21, &v22);
      sub_1AACAAE1C(a1, a4, v21);

      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1AAD0D8C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AAD0DB84(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AAF90464();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AACC9AC0(0, &unk_1ED9B29D0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6530]);
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1AAF2FB40(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1AAD0DA28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1AAD0DA8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD457D8(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AAD0DC3C(uint64_t *a1, double *a2)
{
  v35 = sub_1AAF8DE34();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(type metadata accessor for SgRectangle(0) + 44);
  v36 = v2;
  sub_1AACAAD4C(v2 + v19, v18, type metadata accessor for SgShapeStyle);
  memset(v37, 0, sizeof(v37));
  v38 = 1;
  if (v18[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v18 + *(v16 + 32), v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v22 = sub_1AAF8F154();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1AACAC4BC(v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v29 = sub_1AAF2E844();
      (*(v23 + 8))(v12, v22);
      if ((v29 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v18, v37, v9);
        sub_1AAF8DE74();
        sub_1AAD0E248(a1, v6, v36);
        v30 = *(v4 + 8);
        v31 = v35;
        v30(v6, v35);
        v30(v9, v31);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAD0E248(a1, v6, v36);
    v32 = *(v4 + 8);
    v33 = v35;
    v32(v6, v35);
    v32(v9, v33);
    goto LABEL_12;
  }

  sub_1AACAC30C(v18 + *(v16 + 32), v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v20 = sub_1AAF8F154();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_1AACAC4BC(v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
LABEL_8:
    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAD0E248(a1, v6, v36);
    v27 = *(v4 + 8);
    v28 = v35;
    v27(v6, v35);
    v27(v9, v28);
    return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
  }

  v24 = sub_1AAF2E844();
  (*(v21 + 8))(v15, v20);
  if ((v24 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_1AAF8DEA4();
  sub_1AAF8DEB4();
  sub_1AACACEAC(v18, v37, v9);
  sub_1AAF8DE74();
  sub_1AAD0E248(a1, v6, v36);
  v25 = *(v4 + 8);
  v26 = v35;
  v25(v6, v35);
  v25(v9, v26);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
}

void sub_1AAD0E248(uint64_t *a1, uint64_t a2, double *a3)
{
  v6 = type metadata accessor for SgShapeStyle(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SgRectangle(0);
  sub_1AACAAD4C(a3 + *(v10 + 44), v9, type metadata accessor for SgShapeStyle);
  if (*&v9[*(v7 + 44)])
  {
    v23 = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v24);
    sub_1AAD0E3E4(&v23, a3, a2, v17, v18, v19, v20, v21, v22);

    sub_1AACAADB4(v9, type metadata accessor for SgShapeStyle);
  }

  else
  {
    sub_1AAD0E3E4(a1, a3, a2, v11, v12, v13, v14, v15, v16);
    sub_1AACAADB4(v9, type metadata accessor for SgShapeStyle);
  }
}

double sub_1AAD0E3E4(uint64_t *a1, double *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  if (a2[5] < 2.22044605e-16 && (a2[8] < 2.22044605e-16 ? (v9 = a2[7] < 2.22044605e-16) : (v9 = 0), v9 ? (v10 = a2[6] < 2.22044605e-16) : (v10 = 0), v10))
  {
    sub_1AAF8E944();
    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AAF8E964();
    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  v15 = v11;
  v16 = v12;
  sub_1AAF8DDA4();
  return sub_1AAD0E508(v15, *(&v15 + 1), v16, *(&v16 + 1), v13);
}

double sub_1AAD0E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1AAD0E520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 504))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 424);
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

uint64_t static ChartContent._renderChartContent(_:_:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v16 - v10;
  v12 = *a1;
  v13 = *(a1 + 1);
  (*(a3 + 24))(a2, a3, v9);
  v17[0] = v12;
  v18 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v11, v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1AAD0E70C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a3;
  if ((a3 & 0x80) == 0)
  {
    *&result = COERCE_DOUBLE(sub_1AAE29640(a1, a2, a3));
    if ((v8 & 1) == 0)
    {
      if ((*(v4 + 104) & 1) == 0)
      {
        return result;
      }

      if (v6 == 2)
      {
        *&result = *&result + a4;
        return result;
      }
    }

    goto LABEL_7;
  }

  if (*(v4 + 104))
  {
LABEL_7:
    *&result = 0.0;
    return result;
  }

  v10 = *v4;
  v12 = a1;
  v10(&v13, &v12);
  v11 = v13;
  v12 = a2;
  v10(&v13, &v12);
  *&result = v11 + a4;
  return result;
}

uint64_t sub_1AAD0E818(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    return sub_1AACCA728(a1, a2, a3);
  }

  return a1;
}

unsigned __int8 *sub_1AAD0E824(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 16))
  {
    result = sub_1AACDBD1C(result);
  }

  if (*v2 > 2u)
  {
    __break(1u);
  }

  return result;
}

double sub_1AAD0E8DC(unsigned __int8 *a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (*(v6 + 16))
  {
    v10 = sub_1AACDBD1C(a1);
    v8 = 0.0;
    if (v11)
    {
      v12 = *(v6 + 56) + 16 * v10;
      v9 = *v12;
      v8 = *(v12 + 8);
    }
  }

  v13 = v3[1];
  v26 = v8;
  if (*(v13 + 16))
  {
    v14 = sub_1AACDBD1C(a1);
    v15 = 0.0;
    if (v16)
    {
      v17 = (*(v13 + 56) + 16 * v14);
      v15 = *v17;
      v7 = v17[1];
    }
  }

  else
  {
    v15 = 0.0;
  }

  v18 = 0.0;
  v19 = fmin(a2, 0.0);
  if (a2 >= 0.0)
  {
    v20 = v15 + a2;
  }

  else
  {
    v20 = v15 + 0.0;
  }

  v21 = v19 + v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v3[1];
  sub_1AACDBD88(a1, isUniquelyReferenced_nonNull_native, v20, v21);
  v3[1] = v27;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      if (a2 >= 0.0)
      {
        v23 = v15 - v26;
      }

      else
      {
        v23 = -v7;
      }

      return v23 - (v9 - v26) * 0.5;
    }
  }

  else if (*a1)
  {
    v24 = -v26;
    if (v9 > -v26)
    {
      v24 = v9;
    }

    if (a2 >= 0.0)
    {
      return fmin(v15 / v24 * 100.0, 100.0);
    }

    else
    {
      return fmax(v7 / v24 * 100.0, -100.0);
    }
  }

  else if (a2 >= 0.0)
  {
    return v15;
  }

  else
  {
    return v7;
  }

  return v18;
}

uint64_t sub_1AAD0EACC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v17 = 0uLL;
  if (result != 1)
  {
    if (result)
    {
      v35 = 1;
      v36 = 0uLL;
      v37 = 0uLL;
      goto LABEL_35;
    }

    swift_beginAccess();
    memcpy(__dst, (a2 + 80), sizeof(__dst));
    if (*&__dst[24])
    {
      v66 = a3;
      v71 = a4;
      v18 = *(a2 + 128);
      v87 = *(a2 + 112);
      v88 = v18;
      v89 = *(a2 + 144);
      v90 = *(a2 + 160);
      v19 = *(a2 + 96);
      v85 = *(a2 + 80);
      v86 = v19;
    }

    else
    {
      if (__dst[257] == 2)
      {
        goto LABEL_19;
      }

      sub_1AACBB21C(__dst, v75);
      v38 = sub_1AAF8E7A4();
      if (v38 != sub_1AAF8E7A4())
      {
        sub_1AACBB254(__dst);
        goto LABEL_19;
      }

      sub_1AACDB9A8(&__dst[176], v75, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(__dst);
      if (!*&__dst[200])
      {
LABEL_19:
        v40 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
        swift_beginAccess();
        result = type metadata accessor for ChartContentRenderContext.Environment(0);
        v41 = *(v40 + *(result + 84));
        v42 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
        goto LABEL_22;
      }

      v66 = a3;
      v71 = a4;
      v85 = *&__dst[176];
      v86 = *&__dst[192];
      v87 = *&__dst[208];
      v88 = *&__dst[224];
      v89 = *&__dst[240];
      v90 = __dst[256];
    }

    v21 = *(&v85 + 1);
    v20 = v85;
    v22 = v86;
    v23 = v87;
    v24 = *(&v89 + 1);
    v25 = v90;
    v26 = v88;
    sub_1AACDB9A8(__dst, v75, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v85, v75);
    sub_1AAE0A738(v23, *(&v23 + 1), v26, v24, v25, 3, v92);
    sub_1AAE0C014(&v85);
    sub_1AAD04750(v20, v21, v22);

    sub_1AAD0E818(v23, *(&v23 + 1), v26);
    a4 = v71;
    a3 = v66;
    goto LABEL_19;
  }

  swift_beginAccess();
  memcpy(__dst, (a2 + 80), sizeof(__dst));
  if (*&__dst[112])
  {
    v67 = a3;
    v72 = a4;
    v27 = *(a2 + 184);
    v28 = *(a2 + 216);
    v87 = *(a2 + 200);
    v88 = v28;
    v89 = *(a2 + 232);
    v90 = *(a2 + 248);
    v85 = *(a2 + 168);
    v86 = v27;
LABEL_8:
    v29 = v85;
    v30 = v86;
    v31 = v87;
    v32 = *(&v89 + 1);
    v33 = v90;
    v34 = v88;
    sub_1AACDB9A8(&__dst[88], v75, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v85, v75);
    sub_1AAE0A738(v31, *(&v31 + 1), v34, v32, v33, 4, v92);
    sub_1AAE0C014(&v85);
    sub_1AAD04750(v29, *(&v29 + 1), v30);

    sub_1AAD0E818(v31, *(&v31 + 1), v34);
    a4 = v72;
    a3 = v67;
    goto LABEL_21;
  }

  if (__dst[257] != 2)
  {
    sub_1AACBB21C(__dst, v75);
    v39 = sub_1AAF8E7A4();
    if (v39 != sub_1AAF8E7A4())
    {
      sub_1AACBB254(__dst);
      goto LABEL_21;
    }

    sub_1AACDB9A8(&__dst[176], v75, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AACBB254(__dst);
    if (*&__dst[200])
    {
      v67 = a3;
      v72 = a4;
      v85 = *&__dst[176];
      v86 = *&__dst[192];
      v87 = *&__dst[208];
      v88 = *&__dst[224];
      v89 = *&__dst[240];
      v90 = __dst[256];
      goto LABEL_8;
    }
  }

LABEL_21:
  v43 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  result = type metadata accessor for ChartContentRenderContext.Environment(0);
  v41 = *(v43 + *(result + 88));
  v42 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
LABEL_22:
  v44 = (a2 + v42);
  *&v76[9] = *(v44 + 89);
  v45 = v44[5];
  v75[4] = v44[4];
  *v76 = v45;
  v46 = v44[1];
  v75[0] = *v44;
  v75[1] = v46;
  v47 = v44[3];
  v75[2] = v44[2];
  v75[3] = v47;
  if (v76[24] == 255)
  {
    v35 = 1;
    v36 = 0uLL;
    v37 = 0uLL;
    v17 = 0uLL;
  }

  else
  {
    v73 = v41;
    if (v76[24])
    {
      v48 = v44[5];
      v83 = v44[4];
      v84[0] = v48;
      *(v84 + 9) = *(v44 + 89);
      v49 = v44[1];
      v79 = *v44;
      v80 = v49;
      v50 = v44[3];
      v81 = v44[2];
      v82 = v50;
      sub_1AACDB9A8(&v79, v78, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v51 = vdupq_n_s64(0x7FF8000000000000uLL);
      v52 = v51;
    }

    else
    {
      v53 = *&v75[0];
      v77 = a6;
      v54 = v44[5];
      v83 = v44[4];
      v84[0] = v54;
      *(v84 + 9) = *(v44 + 89);
      v55 = v44[1];
      v79 = *v44;
      v80 = v55;
      v56 = v44[3];
      v81 = v44[2];
      v82 = v56;
      sub_1AACDB9A8(&v79, v78, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v53(v78, &v77);
      v68 = *v78;
      v77 = a7;
      v53(v78, &v77);
      v57.f64[0] = v68;
      *&v57.f64[1] = v78[0];
      v69 = v57;
      v77 = a8;
      v53(v78, &v77);
      v64 = *v78;
      v77 = a9;
      v53(v78, &v77);
      v52.f64[0] = v64;
      v51 = v69;
      *&v52.f64[1] = v78[0];
    }

    v58 = vdupq_lane_s64(v73, 0);
    v70 = vaddq_f64(v58, v51);
    v74 = vaddq_f64(v58, v52);
    v59 = 40;
    if (!a3)
    {
      v59 = 24;
    }

    v60 = 48;
    if (!a3)
    {
      v60 = 32;
    }

    v63 = *(a4 + 344);
    v61.f64[0] = *(a4 + v59);
    v61.f64[1] = *(a4 + v60);
    v65 = v61;
    result = sub_1AACE337C(v75, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    if (*&v63 <= 0.0)
    {
      v17 = v70;
      v36 = v74;
      v37 = v65;
    }

    else
    {
      v62 = vdupq_lane_s64(v63, 0);
      v17 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v70, *&v63)), v62);
      v36 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v74, *&v63)), v62);
      v37 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v65, *&v63)), v62);
    }

    v35 = 0;
  }

LABEL_35:
  *a5 = v17;
  *(a5 + 16) = v36;
  *(a5 + 32) = v37;
  *(a5 + 48) = v35;
  return result;
}

uint64_t sub_1AAD0F1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD0F23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD0F2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SgShapeStyle(0);
  v5 = *(v4 + 32);
  v6 = sub_1AAF8F154();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  sub_1AACDB9A8(a1, &v23, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading, MEMORY[0x1E69E6720]);
  v7 = v27;
  if (v27 == 255)
  {
    v28 = 1;
    v8 = MEMORY[0x1E697E790];
    v7 = 1;
    v9 = MEMORY[0x1E697E788];
  }

  else
  {
    v29 = v23;
    v8 = v25;
    v30 = v24;
    v9 = v26;
  }

  *a2 = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v7;
  *(a2 + 41) = *(a1 + 41);
  if (*(a1 + 72))
  {
    v10 = *(a1 + 80);
    v11 = *(a1 + 64);
    v13 = *(a1 + 56);
    v12 = *(a1 + 60);
    v14 = *(a1 + 72);
    v15 = *(a1 + 48);
  }

  else
  {
    if (qword_1ED9B2798 != -1)
    {
      swift_once();
    }

    v15 = xmmword_1ED9C34C0;
    v13 = DWORD2(xmmword_1ED9C34C0);
    v12 = HIDWORD(xmmword_1ED9C34C0);
    v11 = qword_1ED9C34D0;
    v10 = qword_1ED9C34E0;
  }

  v16 = *(v4 + 36);
  *(a2 + 48) = v15;
  *(a2 + 56) = v13 | (v12 << 32);
  *(a2 + 64) = v11;
  v17 = a2 + v16;
  *(a2 + 72) = v14;
  *(a2 + 80) = v10;
  v18 = type metadata accessor for ChartContentRenderContext.Environment(0);
  *(a2 + 88) = *(a1 + v18[13]);
  v19 = v18[14];

  sub_1AAD0F4D8(a1 + v19, a2 + v5);
  v20 = (a1 + v18[15]);
  v21 = *v20;
  LOWORD(v18) = *(v20 + 4);

  result = sub_1AACE3448(a1, type metadata accessor for ChartContentRenderContext.Environment);
  *v17 = v21;
  *(v17 + 8) = v18;
  return result;
}

uint64_t sub_1AAD0F4D8(uint64_t a1, uint64_t a2)
{
  sub_1AACAE0E8(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD0F558(uint64_t a1, uint64_t a2)
{
  sub_1AACAE13C(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD0F5D8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1AAD0F610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAD0F670(uint64_t a1, uint64_t a2)
{
  sub_1AACAE13C(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1AAD0F6F0(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD04BF0(a1, a2, a3, *v3, &qword_1ED9B28D0, &type metadata for SgNode);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD0F720(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v13 = a1;
      v7 = 0;
      v6 = v14;
      a1 = 0xF000000000000007;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1AC598D40](v7, a3);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v5 = sub_1AAF8FFB4();
            goto LABEL_3;
          }

          if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(a3 + 8 * v7 + 32);
        }

        sub_1AACD8DD8();
        swift_beginAccess();
        v9 = *(v8 + 40);
        if ((~v9 & 0xF000000000000007) == 0)
        {
          goto LABEL_21;
        }

        v14 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AAD0F6F0((v10 > 1), v11 + 1, 1);
          v6 = v14;
        }

        ++v7;
        *(v6 + 16) = v11 + 1;
        *(v6 + 8 * v11 + 32) = v9;
        if (v5 == v7)
        {
          a1 = v13;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_21:
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
LABEL_16:
    a1(&v14, v6);

    return v14;
  }

  return result;
}

double sub_1AAD0F988(void (*a1)(double *__return_ptr, void *, __n128), uint64_t a2, uint64_t *a3)
{
  type metadata accessor for CGSize(0);

  sub_1AACD889C(v9);

  v10[0] = v9;

  sub_1AACD889C(v8);

  v10[1] = v8;

  sub_1AACD889C(&v7);

  v10[2] = &v7;

  sub_1AACD889C(&v6);

  v10[3] = &v6;

  sub_1AACD889C(&v5);

  v10[4] = &v5;
  (a1)(&v11, v10);

  return v11;
}

void sub_1AAD0FACC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 64);
  v6 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v6;
  v11 = v5;
  *a1 = sub_1AAD0F988(v3, v4, v10);
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
}

double sub_1AAD0FB18(unint64_t a1)
{
  v2 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0.0;
  switch(a1 >> 60)
  {
    case 1uLL:
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

      sub_1AAF62ADC(v35, v33, v34);
      v26 = v36;

      return v26;
    case 2uLL:
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v49);
      sub_1AAF5DFF0();
      v26 = v37;
      sub_1AAF14C40(v49);
      return v26;
    case 3uLL:
      v27 = swift_projectBox();
      sub_1AACAAD4C(v27, v22, type metadata accessor for SgPoint);
      sub_1AAF54C08();
      v26 = v28;
      v29 = type metadata accessor for SgPoint;
      v30 = v22;
      goto LABEL_21;
    case 4uLL:
      v40 = swift_projectBox();
      sub_1AACAAD4C(v40, v19, type metadata accessor for SgRectangle);
      v26 = v19[1];
      v29 = type metadata accessor for SgRectangle;
      v30 = v19;
      goto LABEL_21;
    case 5uLL:
      v41 = swift_projectBox();
      sub_1AACAAD4C(v41, v16, type metadata accessor for SgSector);
      v42 = vaddvq_f64(vmulq_f64(*(v16 + 24), xmmword_1AAFC7450));
      v26 = v42 * __sincos_stret(((*(v16 + 8) + *(v16 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0).__cosval;
      sub_1AACAADB4(v16, type metadata accessor for SgSector);
      return v26;
    case 6uLL:
      v38 = swift_projectBox();
      sub_1AACAAD4C(v38, v13, type metadata accessor for SgRule);
      if (v13[3] >= v13[1])
      {
        v26 = v13[1];
      }

      else
      {
        v26 = v13[3];
      }

      v29 = type metadata accessor for SgRule;
      v30 = v13;
      goto LABEL_21;
    case 7uLL:
      v45 = swift_projectBox();
      sub_1AACAAD4C(v45, v10, type metadata accessor for SgLine);
      sub_1AAF56CF0();
      v26 = v46;
      v29 = type metadata accessor for SgLine;
      v30 = v10;
      goto LABEL_21;
    case 8uLL:
      v31 = swift_projectBox();
      sub_1AACAAD4C(v31, v7, type metadata accessor for SgArea);
      sub_1AAF58424();
      v26 = v32;
      v29 = type metadata accessor for SgArea;
      v30 = v7;
      goto LABEL_21;
    case 9uLL:
      v43 = swift_projectBox();
      sub_1AACAAD4C(v43, v4, type metadata accessor for SgPath);
      v44 = *(v4 + 24);
      v49[0] = *(v4 + 8);
      v49[1] = v44;
      v50 = v4[40];
      if (sub_1AAF8E8E4())
      {
        v26 = *MEMORY[0x1E695F050];
      }

      else
      {
        sub_1AAF8E874();
        v26 = v47;
      }

      v29 = type metadata accessor for SgPath;
      v30 = v4;
      goto LABEL_21;
    case 0xAuLL:
      return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
    case 0xBuLL:
    case 0xCuLL:
      return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    case 0xDuLL:
      return v26;
    case 0xEuLL:
      return *MEMORY[0x1E695F050];
    default:
      v39 = swift_projectBox();
      sub_1AACAAD4C(v39, v25, type metadata accessor for SgGroup);
      v26 = sub_1AAD05240();
      v29 = type metadata accessor for SgGroup;
      v30 = v25;
LABEL_21:
      sub_1AACAADB4(v30, v29);
      return v26;
  }
}

uint64_t sub_1AAD10220(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  swift_retain_n();

  v23.origin.x = sub_1AAD0FB18(a1);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v38.origin.x = v6;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v8;
  if (!CGRectEqualToRect(v23, v38))
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    CGRectGetMinX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMaxX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    CGRectGetMinY(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    CGRectGetMaxY(v27);
  }

  v28.origin.x = sub_1AAD0FB18(a2);
  v14 = v28.origin.x;
  v15 = v28.origin.y;
  v16 = v28.size.width;
  v17 = v28.size.height;
  v39.origin.x = v6;
  v39.size.width = v9;
  v39.origin.y = v7;
  v39.size.height = v8;
  if (!CGRectEqualToRect(v28, v39))
  {
    v29.origin.x = v14;
    v29.origin.y = v15;
    v29.size.width = v16;
    v29.size.height = v17;
    CGRectGetMinX(v29);
    v30.origin.x = v14;
    v30.origin.y = v15;
    v30.size.width = v16;
    v30.size.height = v17;
    CGRectGetMaxX(v30);
    v31.origin.x = v14;
    v31.origin.y = v15;
    v31.size.width = v16;
    v31.size.height = v17;
    CGRectGetMinY(v31);
    v32.origin.x = v14;
    v32.origin.y = v15;
    v32.size.width = v16;
    v32.size.height = v17;
    CGRectGetMaxY(v32);
  }

  v33.origin.x = sub_1AAD0FB18(a3);
  v18 = v33.origin.x;
  v19 = v33.origin.y;
  v20 = v33.size.width;
  v21 = v33.size.height;
  v40.origin.x = v6;
  v40.size.width = v9;
  v40.origin.y = v7;
  v40.size.height = v8;
  if (!CGRectEqualToRect(v33, v40))
  {
    v34.origin.x = v18;
    v34.origin.y = v19;
    v34.size.width = v20;
    v34.size.height = v21;
    CGRectGetMinX(v34);
    v35.origin.x = v18;
    v35.origin.y = v19;
    v35.size.width = v20;
    v35.size.height = v21;
    CGRectGetMaxX(v35);
    v36.origin.x = v18;
    v36.origin.y = v19;
    v36.size.width = v20;
    v36.size.height = v21;
    CGRectGetMinY(v36);
    v37.origin.x = v18;
    v37.origin.y = v19;
    v37.size.width = v20;
    v37.size.height = v21;
    CGRectGetMaxY(v37);
  }

  return swift_arrayDestroy();
}

unint64_t sub_1AAD10684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B074();
    v3 = sub_1AAF903A4();
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7360];
    while (1)
    {
      sub_1AADF9C48(v4, &v12, &qword_1ED9B2898, v5, &type metadata for SgAnimatableData.Item, sub_1AACC9AC0);
      v6 = v12;
      result = sub_1AACC9B78(v12);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      result = memcpy((v3[7] + 776 * result), v13, 0x301uLL);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 784;
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

void sub_1AAD107BC()
{
  if (!qword_1ED9B2898)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2898);
    }
  }
}

double sub_1AAD1081C@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SgRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AAD10834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD1089C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD1090C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED9B6048 != -1)
  {
    swift_once();
  }

  sub_1AACCCCDC(0);
  v3 = sub_1AAD0F5D8(v2, qword_1ED9C3938);
  return sub_1AACB26B4(v3, a1, sub_1AACCCCDC);
}

uint64_t sub_1AAD109A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 456);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1AAF8DF14();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AAD10A6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 456) = a2;
  }

  else
  {
    v7 = sub_1AAF8DF14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD10B1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for SgCanvasRenderer(0);
  v4 = v3 - 8;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v5;
  sub_1AAD110E8(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgCanvasRenderer.FixedLayout(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1AAF8DF14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0AD48(*v1, &v49);
  v44 = v49;
  v16 = v50;
  v17 = v51;
  v19 = v52;
  v18 = v53;
  v20 = v54;
  v21 = v55;
  v22 = *(v4 + 32);
  (*(v13 + 104))(v15, *MEMORY[0x1E697E7D8], v12);
  v23 = sub_1AAF8DF04();
  (*(v13 + 8))(v15, v12);
  v43 = v23;
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v18;
  }

  x = -v24;
  y = -v19;
  width = v16 + v18 + v21;
  height = v17 + v19 + v20;
  v29 = v2 + *(v4 + 36);
  if ((*(v29 + 32) & 1) == 0)
  {
    v56.origin.x = -v24;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v57 = CGRectIntersection(v56, *v29);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
  }

  (*(v13 + 16))(v11 + *(v9 + 24), v2 + v22, v12);
  *v11 = x;
  v11[1] = y;
  v11[2] = width;
  v11[3] = height;
  v11[4] = v16;
  v11[5] = v17;
  v30 = v44;
  v31 = sub_1AAD1138C(v44);
  sub_1AAD115C0(v11, v8, type metadata accessor for SgCanvasRenderer.FixedLayout);
  v42 = v8;
  sub_1AAD115C0(v8, v48, sub_1AAD110E8);
  sub_1AAD0C190(0);
  v41 = *(v32 + 44);
  v33 = *(v31 + 16);
  v49 = 0;
  v50 = v33;
  swift_getKeyPath();
  v34 = v45;
  sub_1AAD115C0(v2, v45, type metadata accessor for SgCanvasRenderer);
  v35 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v36 = (v35 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v35 + v46 + 47) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v31;
  *(v38 + 24) = v16;
  *(v38 + 32) = v17;
  sub_1AAD1089C(v34, v38 + v35, type metadata accessor for SgCanvasRenderer);
  v39 = v38 + v36;
  *v39 = x;
  *(v39 + 8) = y;
  *(v39 + 16) = width;
  *(v39 + 24) = height;
  *(v39 + 32) = v43 & 1;
  *(v38 + v37) = v30;
  sub_1AAD1169C();
  sub_1AAD116F4();
  sub_1AAF8EFC4();
  sub_1AAD0BF4C(v42, sub_1AAD110E8);
  return sub_1AAD0BF4C(v11, type metadata accessor for SgCanvasRenderer.FixedLayout);
}

uint64_t sub_1AAD10FE0()
{
  v1 = (type metadata accessor for SgCanvasRenderer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 47) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[8];
  v6 = sub_1AAF8DF14();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void sub_1AAD110E8(uint64_t a1)
{
  if (!qword_1ED9B2EF8)
  {
    type metadata accessor for SgCanvasRenderer.FixedLayout(255);
    sub_1AAD0ACD8(&qword_1ED9B3DF0, type metadata accessor for SgCanvasRenderer.FixedLayout, &unk_1AAFC3B64);
    v1 = sub_1AAF8D964();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2EF8);
    }
  }
}

void sub_1AAD1117C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8FF74();
  if (v4 == 1 << *(a1 + 32))
  {
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 176) = 254;
    *a2 = 0u;

    bzero((a2 + 184), 0x251uLL);
  }

  else
  {
    *a2 = sub_1AAD112B8(v5, v4, *(a1 + 36), 0, a1);
    memcpy((a2 + 8), v5, 0x301uLL);
  }
}

uint64_t sub_1AAD112B8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    sub_1AAD1125C(*(a5 + 56) + 776 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AAD1138C(uint64_t a1)
{
  sub_1AAD11570(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = a1;

  v3 = sub_1AAD0B77C(inited);
  swift_setDeallocating();
  sub_1AAD11628(inited + 32);
  v4 = *(v3 + 2);
  if (v4)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AAD0C0D0(0, v4, 0);
    v5 = v25;
    v6 = 32;
    do
    {
      v7 = *&v3[v6];
      if (v7 >> 60 == 2)
      {
        sub_1AAD117A0((v7 & 0xFFFFFFFFFFFFFFFLL) + 16, &v17);
      }

      else
      {

        v8 = sub_1AACAB6D8(v7);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1AAF92AB0;
        *(v9 + 32) = v7;
        v18 = 0u;
        v19 = 0u;
        v20 = 0uLL;
        *&v17 = v8;
        *(&v17 + 1) = v9;
      }

      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AAD0C0D0((v10 > 1), v11 + 1, 1);
        v5 = v25;
      }

      *(v5 + 16) = v11 + 1;
      v12 = (v5 + (v11 << 6));
      v13 = v21;
      v14 = v22;
      v15 = v24;
      v12[4] = v23;
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void sub_1AAD11570(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAD115C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AAD1169C()
{
  if (!qword_1ED9B29B0)
  {
    v0 = sub_1AAF8FCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B29B0);
    }
  }
}

unint64_t sub_1AAD116F4()
{
  result = qword_1ED9B4488;
  if (!qword_1ED9B4488)
  {
    sub_1AAD26724(255, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD2000C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4488);
  }

  return result;
}

unint64_t sub_1AAD117FC()
{
  result = qword_1ED9B5500;
  if (!qword_1ED9B5500)
  {
    sub_1AAD0CA60(255);
    sub_1AAD0ACD8(&qword_1ED9B5508, sub_1AAD0D2AC, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5500);
  }

  return result;
}

void sub_1AAD118A4(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 60;
  if ((a1 >> 60) <= 2)
  {
    if (!v15)
    {
      v44 = swift_projectBox();
      sub_1AACAAD4C(v44, v14, type metadata accessor for SgGroup);
      v45 = *(v14 + 1);
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = (v45 + 32);
        do
        {
          v48 = *v47++;

          sub_1AAD118A4(v48, a2, a3);

          --v46;
        }

        while (v46);
      }

      v49 = type metadata accessor for SgGroup;
      v50 = v14;
      goto LABEL_47;
    }

    if (v15 != 1)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, &v82);
      v51 = *(*(&v82 + 1) + 16);
      if (v51)
      {
        v52 = (*(&v82 + 1) + 32);
        do
        {
          v53 = *v52++;

          sub_1AAD118A4(v53, a2, a3);

          --v51;
        }

        while (v51);
      }

      sub_1AAF14C40(&v82);
      return;
    }

    v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v40 = *(v39 + 16);
    if (v40)
    {

      v41 = 32;
      do
      {
        v42 = *(v39 + v41);

        sub_1AAD118A4(v42, a2, a3);

        v41 += 8;
        --v40;
      }

      while (v40);

      v43 = *(v38 + 16);
      if (!v43)
      {
        goto LABEL_52;
      }
    }

    else
    {

      v43 = *(v38 + 16);
      if (!v43)
      {
LABEL_52:

        return;
      }
    }

    v66 = 32;
    do
    {
      v67 = *(v38 + v66);

      sub_1AAD118A4(v67, a2, a3);

      v66 += 8;
      --v43;
    }

    while (v43);
    goto LABEL_52;
  }

  if (v15 > 0xE)
  {
LABEL_43:
    v62 = swift_projectBox();
    sub_1AACAAD4C(v62, v11, type metadata accessor for SgPoint);
    sub_1AAD9ADE4((v11 + 6), &v82);
    if ((BYTE8(v84) & 1) == 0)
    {
      sub_1AACAADB4(v11, type metadata accessor for SgPoint);
      sub_1AAF50004(&v82);
      return;
    }

    v63 = v82;
    v64 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = *a2;
    sub_1AAD26870(v63, v64, isUniquelyReferenced_nonNull_native);
    *a2 = v80[0];
    v49 = type metadata accessor for SgPoint;
    v50 = v11;
    goto LABEL_47;
  }

  if (((1 << v15) & 0x7B70) != 0)
  {
    return;
  }

  if (v15 != 7)
  {
    if (v15 == 10)
    {
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v90 = v54;
      v55 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v91 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v92 = v55;
      v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v85 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v86 = v56;
      v57 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v87 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v88 = v57;
      v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v82 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v83 = v58;
      v84 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v59 = *(&v84 + 1);
      v60 = BYTE8(v85);
      if ((*(&v85 + 1) & 0x8000000000000000) != 0)
      {
        v68 = v82;
        sub_1AAD1B82C(&v82, v80);
        sub_1AAD1B82C(&v82, v80);
        sub_1AAF8F124();
        sub_1AAF8DA24();
        v74 = v59;
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v78 = v96;
        v79 = v97;
        sub_1AAD1B82C(&v82, v80);
        sub_1AAF686A4(0, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
        sub_1AAD267CC();
        v69 = sub_1AAF8EF44();
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v80[0] = *a2;
        sub_1AAD26870(v69, v68, v70);
        sub_1AAD1C8F0(&v82);
        sub_1AAD1C8F0(&v82);
        *a2 = v80[0];
      }

      else
      {
        v61 = v85;
        sub_1AAD1B82C(&v82, v80);
        sub_1AAD1B82C(&v82, v80);
        sub_1AAD04750(v59, v61, v60 & 1);

        sub_1AAD1C8F0(&v82);
      }

      return;
    }

    goto LABEL_43;
  }

  v16 = swift_projectBox();
  sub_1AACAAD4C(v16, v8, type metadata accessor for SgLine);
  v17 = *(v8 + 1);
  swift_beginAccess();
  v18 = *(v17 + 16);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_46:
    v49 = type metadata accessor for SgLine;
    v50 = v8;
LABEL_47:
    sub_1AACAADB4(v50, v49);
    return;
  }

  v71 = v8;
  v20 = v18 + 32;

  v21 = 0;
  v72 = v19;
  v73 = v18;
  while (v21 < *(v18 + 16))
  {
    sub_1AAE5EDF4(v20, &v82);
    sub_1AACDBA18(&v83 + 8, v80, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    if (v81 == 255)
    {
      sub_1AAE5EE50(&v82);
      sub_1AAF67B3C(v80, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }

    else
    {
      if (v81)
      {
        v22 = v80[0];
        v23 = v82;

        v24 = swift_isUniquelyReferenced_nonNull_native();
        v80[0] = *a2;
        v25 = v80[0];
        v27 = sub_1AACC9B78(v23);
        v28 = *(v25 + 16);
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_58;
        }

        v31 = v26;
        if (*(v25 + 24) >= v30)
        {
          if (v24)
          {
            v34 = v80[0];
            if ((v26 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1AAD99C04();
            v34 = v80[0];
            if ((v31 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          sub_1AAD269BC(v30, v24);
          v32 = sub_1AACC9B78(v23);
          if ((v31 & 1) != (v33 & 1))
          {
            goto LABEL_60;
          }

          v27 = v32;
          v34 = v80[0];
          if ((v31 & 1) == 0)
          {
LABEL_22:
            v34[(v27 >> 6) + 8] |= 1 << v27;
            *(v34[6] + 8 * v27) = v23;
            *(v34[7] + 8 * v27) = v22;

            sub_1AAE5EE50(&v82);
            v35 = v34[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_59;
            }

            v34[2] = v37;
            goto LABEL_24;
          }
        }

        *(v34[7] + 8 * v27) = v22;

        sub_1AAE5EE50(&v82);
LABEL_24:
        *a2 = v34;
        v19 = v72;
        v18 = v73;
        goto LABEL_8;
      }

      sub_1AAE5EE50(&v82);
      sub_1AAF50004(v80);
    }

LABEL_8:
    ++v21;
    v20 += 96;
    if (v19 == v21)
    {

      v8 = v71;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1AAF905B4();
  __break(1u);
}

uint64_t sub_1AAD1212C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ChartModel.Scenegraph(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACB26B4(a2, v9, type metadata accessor for ChartModel.Scenegraph);
  v10 = *(v6 + 60);
  swift_retain_n();

  *&v9[v10] = a1;
  v11 = *(v6 + 64);

  *&v9[v11] = a1;
  sub_1AACB26B4(v9, a3, type metadata accessor for ChartModel.Scenegraph);
  (*(v7 + 56))(a3, 0, 1, v6);
  return sub_1AACDCF70(v9, type metadata accessor for ChartModel.Scenegraph);
}

__n128 sub_1AAD1228C@<Q0>(uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a3;
  v9 = type metadata accessor for ChartEnvironmentValues(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CGRect(0);
  sub_1AAF8DA84();
  v24 = v30;
  v25 = v29;
  sub_1AAF8DA84();
  v14 = type metadata accessor for RenderBasedChartView(0, a4, a5, v13);
  v22 = v28;
  v23 = v27;
  sub_1AAE2F100(v14, v12);
  v15 = *(v10 + 32);
  v16 = type metadata accessor for ChartSeparateAxesContent(0);
  v17 = v16[7];
  v18 = sub_1AAF8DF14();
  (*(*(v18 - 8) + 16))(a6 + v17, &v12[v15], v18);
  sub_1AACDCF70(v12, type metadata accessor for ChartEnvironmentValues);
  LOBYTE(v12) = sub_1AAD0A6AC(v14, v19);
  sub_1AAE2FE08(v14, (a6 + v16[9]));
  sub_1AACB26B4(v26, a6 + v16[10], type metadata accessor for ChartModel.Scenegraph);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  v20 = v25;
  *(a6 + 56) = v24;
  *(a6 + 40) = v20;
  result = v23;
  *(a6 + 88) = v22;
  *(a6 + 72) = result;
  *(a6 + v16[8]) = v12;
  return result;
}

unint64_t sub_1AAD124B8()
{
  result = qword_1ED9B4538;
  if (!qword_1ED9B4538)
  {
    sub_1AAD0D550(255);
    sub_1AACDCA40(&qword_1ED9B6180, type metadata accessor for SgCanvasRenderer, &unk_1AAFC3A5C);
    sub_1AACCFB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4538);
  }

  return result;
}

unint64_t sub_1AAD12568()
{
  result = qword_1ED9B2CC8;
  if (!qword_1ED9B2CC8)
  {
    sub_1AAD0D514(255);
    sub_1AAD124B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2CC8);
  }

  return result;
}

uint64_t sub_1AAD125E8(uint64_t a1, double a2, double a3)
{
  v5 = sub_1AAF8DB24();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD129C8(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8DF14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SgCanvasRenderer.FixedLayout(0);
  (*(v13 + 104))(v15, *MEMORY[0x1E697E7D8], v12);
  sub_1AAF8DF04();
  (*(v13 + 8))(v15, v12);
  v24 = v3;
  v16 = sub_1AAF8DC34();
  (*(*(v16 - 8) + 16))(v11, a1, v16);
  v17 = *(v9 + 36);
  sub_1AAD0ACD8(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  if (*&v11[v17] != v26[0])
  {
    v18 = (v23 + 16);
    v19 = (v23 + 8);
    do
    {
      v20 = sub_1AAF8FC84();
      (*v18)(v7);
      v20(v26, 0);
      sub_1AAF8FBB4();
      sub_1AAF8F1F4();
      LOBYTE(v26[0]) = 0;
      v25 = 0;
      sub_1AAF8DB04();
      (*v19)(v7, v5);
      sub_1AAF8FBA4();
    }

    while (*&v11[v17] != v26[0]);
  }

  return sub_1AAD0BF4C(v11, sub_1AAD129C8);
}

void sub_1AAD129C8(uint64_t a1)
{
  if (!qword_1ED9B2980)
  {
    sub_1AAF8DC34();
    sub_1AAE44070(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
    v1 = sub_1AAF90294();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2980);
    }
  }
}

uint64_t sub_1AAD12A5C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, v4, 0);
    v5 = v16;
    v6 = (a1 + 32);
    v7 = v4;
    do
    {
      v8 = *v6++;

      v9 = sub_1AACAC5B8(v8);

      v16 = v5;
      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_1AACEF664((v10 > 1), v11 + 1, 1);
        v5 = v16;
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      --v7;
    }

    while (v7);
  }

  sub_1AAD14568(v5, 0, v4);
  v16 = v12;
  sub_1AAD0D8C0(&v16);

  v13 = v16;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *a2 = v13;
  a2[1] = sub_1AAD12C08;
  a2[2] = v14;
}

uint64_t sub_1AAD12BD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1AAD12C64(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 <= 3)
  {
    if (v3 != 1 && v3 != 2 && v3 != 3)
    {
      return v4;
    }

    return sub_1AAEAF02C(result, a2, a3 & 0x1F);
  }

  if (v3 == 4)
  {
    return sub_1AAEAF02C(result, a2, a3 & 0x1F);
  }

  if (v3 != 5)
  {
    if (v3 != 6)
    {
      return v4;
    }

    return sub_1AAEAF02C(result, a2, a3 & 0x1F);
  }

  v5 = a3 & 0x1F;

  return sub_1AAEAF010(result, a2, v5);
}

void sub_1AAD12CE0(uint64_t a1)
{
  if (!qword_1ED9B1D60)
  {
    type metadata accessor for SgMeasurements(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B1D60);
    }
  }
}

uint64_t sub_1AAD12D6C()
{

  sub_1AACE0E94((v0 + 9));

  sub_1AACCA714(v0[18], v0[19], v0[20]);

  return swift_deallocClassInstance();
}

uint64_t sub_1AAD12DE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AAD12E44(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_1AACC9BB0(0, a6, a7, MEMORY[0x1E69E62F8]);
  type metadata accessor for AxisMarkLayoutContext();

  sub_1AACD889C(v13);

  v16[0] = v13;

  sub_1AACD889C(v14);

  v16[1] = v14;

  sub_1AACD889C(&v15);

  v16[2] = &v15;
  (a1)(v16);
  return sub_1AACE1350(v13, a8, a6, a7, sub_1AACE58B4);
}

BOOL sub_1AAD12F98(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 == 3)
  {
    if (a6 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (a6 == 3)
    {
      return 0;
    }

    v9 = a8;
    v10 = a4;
    v11 = a7;
    v12 = a3;
    v13 = sub_1AAF8D874();
    a3 = v12;
    a7 = v11;
    a4 = v10;
    a8 = v9;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    v14 = a8;
    v15 = a4;
    v16 = a7;
    v17 = a3;

    LOBYTE(v17) = sub_1AACD1A58(v17, v16);

    a4 = v15;
    a8 = v14;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  return (sub_1AACCFFA4(a4, a8) & 1) != 0;
}

uint64_t sub_1AAD13094()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void sub_1AAD13108(char a1@<W2>, char a2@<W3>, char *a3@<X8>)
{
  if (a2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (!a1)
  {
    v3 = 0;
  }

  *a3 = v3;
}

uint64_t storeEnumTagSinglePayload for PrimitivePlottableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1AAD131EC(char a1@<W2>, char a2@<W3>, char *a3@<X8>)
{
  if (a2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (!a1)
  {
    v3 = 1;
  }

  *a3 = v3;
}

uint64_t storeEnumTagSinglePayload for AxisValueLabelOrientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AAD13328()
{
  result = qword_1ED9B44F0;
  if (!qword_1ED9B44F0)
  {
    sub_1AAD0A9DC(255, &qword_1ED9B2CD8, sub_1AAD0A9A4, MEMORY[0x1E697F960]);
    sub_1AAD0ABAC();
    sub_1AAD0AAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44F0);
  }

  return result;
}

void sub_1AAD133D8(uint64_t a1)
{
  if (!qword_1ED9B41F0)
  {
    sub_1AAD0AA94(255, &qword_1ED9B3A18, sub_1AAD13508, &type metadata for InteractionHandlingView, type metadata accessor for EmptyInWidgetArchive);
    v3 = v2;
    v4 = sub_1AAD1355C();
    v6 = type metadata accessor for EmptyInImage(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED9B41F0);
    }
  }
}

void sub_1AAD13474(uint64_t a1)
{
  if (!qword_1ED9B2D08)
  {
    sub_1AAD133D8(255);
    sub_1AAD135EC(qword_1ED9B41F8, sub_1AAD133D8, &unk_1AAFC3708);
    v1 = sub_1AAF8E064();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2D08);
    }
  }
}

unint64_t sub_1AAD13508()
{
  result = qword_1ED9B38A8;
  if (!qword_1ED9B38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B38A8);
  }

  return result;
}

unint64_t sub_1AAD1355C()
{
  result = qword_1ED9B3A20;
  if (!qword_1ED9B3A20)
  {
    sub_1AAD0AA94(255, &qword_1ED9B3A18, sub_1AAD13508, &type metadata for InteractionHandlingView, type metadata accessor for EmptyInWidgetArchive);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B3A20);
  }

  return result;
}

uint64_t sub_1AAD135EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1AAD13634(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B16A8, &type metadata for AxisLayoutInformation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD13774(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD13634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD13794(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AAD13774(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v19 = a1;
      v7 = 0;
      v6 = v20;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1AC598D40](v7, a3);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v5 = sub_1AAF8FFB4();
            goto LABEL_3;
          }

          if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(a3 + 8 * v7 + 32);
        }

        sub_1AACD8DD8();
        swift_beginAccess();
        v9 = *(v8 + 72);
        if (!v9)
        {
          goto LABEL_21;
        }

        v11 = *(v8 + 80);
        v10 = *(v8 + 88);
        v13 = *(v8 + 56);
        v12 = *(v8 + 64);
        v14 = *(v8 + 48);
        a1 = *(v8 + 40);

        v20 = v6;
        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1AAD13774((v15 > 1), v16 + 1, 1);
          v6 = v20;
        }

        *(v6 + 16) = v16 + 1;
        v17 = v6 + 56 * v16;
        *(v17 + 32) = a1;
        ++v7;
        *(v17 + 40) = v14;
        *(v17 + 48) = v13;
        *(v17 + 56) = v12;
        *(v17 + 64) = v9;
        *(v17 + 72) = v11;
        *(v17 + 80) = v10;
        if (v5 == v7)
        {
          a1 = v19;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_21:
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
LABEL_16:
    a1(&v20, v6);

    return v20;
  }

  return result;
}

void *sub_1AAD139CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1AAD13BE8(MEMORY[0x1E69E7CC0]);
  v5 = result;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_18:
    *a2 = v5;
    return result;
  }

  v7 = a1 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *(v7 + 16);
    v38[0] = *v7;
    v39 = *(v7 + 48);
    v38[2] = *(v7 + 32);
    v38[1] = v9;
    v10 = v38[0];
    if (v5[2] && (v11 = sub_1AACE1760(v38[0]), (v12 & 1) != 0))
    {
      v13 = v5[7] + 56 * v11;
      v14 = *v13;
      v15 = *(v13 + 24);
      v29 = *(v13 + 40);
      v30 = *(v13 + 8);

      v18 = v29;
      v17 = v30;
    }

    else
    {
      v16 = sub_1AAD1704C(v8);
      v17 = 0uLL;
      v15 = 0;
      v14 = v10;
      v18 = 0uLL;
    }

    v33[0] = v14;
    v34 = v17;
    v35 = v15;
    v36 = v16;
    v37 = v18;
    sub_1AAD13D74(v38, v31);
    sub_1AAD13D74(v38, v31);
    sub_1AAD13DAC(v33, v38, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = v5;
    v20 = sub_1AACE1760(v10);
    v22 = v5[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v5[3] < v25)
    {
      sub_1AAD140A8(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1AACE1760(v10);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_20;
      }

LABEL_14:
      v5 = v31[0];
      if (v26)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v28 = v20;
    sub_1AAD98228();
    v20 = v28;
    v5 = v31[0];
    if (v26)
    {
LABEL_15:
      sub_1AAD143FC(v32, v5[7] + 56 * v20);
      goto LABEL_4;
    }

LABEL_3:
    sub_1AAD1439C(v20, v10, v32, v5);
LABEL_4:
    result = sub_1AAD14078(v38);
    v7 += 56;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void *sub_1AAD13BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AADFA820(0);
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = sub_1AACE1760(v4);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = v12;
  result = v9;
  v16 = (a1 + 152);
  while (1)
  {
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v3[6] + v14) = v4;
    v17 = v3[7] + 56 * v14;
    *v17 = v5;
    *(v17 + 8) = v6;
    *(v17 + 16) = v7;
    *(v17 + 24) = v8;
    *(v17 + 32) = result;
    *(v17 + 40) = v10;
    *(v17 + 48) = v11;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v16 + 8;
    v4 = *(v16 - 56);
    v5 = *(v16 - 48);
    v6 = *(v16 - 5);
    v7 = *(v16 - 4);
    v8 = *(v16 - 3);
    v22 = *(v16 - 2);
    v10 = *(v16 - 1);
    v11 = *v16;

    v14 = sub_1AACE1760(v4);
    v16 = v21;
    result = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD13D44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD13794(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1AAD13DAC@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1AAD1704C(MEMORY[0x1E69E7CC0]);
  v39 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v42 = a1;
  v10 = a1[3];
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v40 = a2;
  sub_1AAD13D74(a2, &v43);
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v18 >= v17)
    {

      if (v10 <= v11)
      {
        v10 = v11;
      }

      if (v7 <= v9)
      {
        v7 = v9;
      }

      if (v6 <= v8)
      {
        v6 = v8;
      }

      sub_1AAD14078(v42);
      result = sub_1AAD14078(v40);
      *a3 = v39;
      *(a3 + 8) = v6;
      *(a3 + 16) = v7;
      *(a3 + 24) = v10;
      *(a3 + 32) = v5;
      *(a3 + 40) = vbslq_s8(vcgeq_f64(*(v40 + 40), *(v42 + 5)), *(v40 + 40), *(v42 + 5));
      return result;
    }

    v15 = *(v12 + 64 + 8 * v18);
    ++v16;
  }

  while (!v15);
  while (1)
  {
    v19 = (v18 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v12 + 48) + v19);
    v21 = *(*(v12 + 56) + v19);
    v22 = *(v42 + 4);
    v23 = 0.0;
    if (*(v22 + 16))
    {
      v24 = sub_1AACC9B78(v20);
      if (v25)
      {
        v23 = *(*(v22 + 56) + 8 * v24);
      }
    }

    if (v23 > v21)
    {
      v21 = v23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v5;
    v27 = sub_1AACC9B78(v20);
    v29 = v5[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v28;
    if (v5[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v27;
        sub_1AAD95064();
        v27 = v37;
      }
    }

    else
    {
      sub_1AACFD574(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_1AACC9B78(v20);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_35;
      }
    }

    v15 &= v15 - 1;
    v5 = v43;
    if (v33)
    {
      *(v43[7] + 8 * v27) = v21;
      v16 = v18;
      if (!v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v43[(v27 >> 6) + 8] |= 1 << v27;
      *(v5[6] + 8 * v27) = v20;
      *(v5[7] + 8 * v27) = v21;
      v35 = v5[2];
      v31 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v31)
      {
        goto LABEL_34;
      }

      v5[2] = v36;
      v16 = v18;
      if (!v15)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v18 = v16;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AAD140A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B16D8, sub_1AAD9B578, &type metadata for AxisMarkPosition.Storage, &type metadata for AxisLayoutInformation);
  v36 = v4;
  v6 = sub_1AAF90394();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 56 * v20;
      v23 = *v22;
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      v37 = *(v22 + 40);
      v38 = *(v22 + 8);
      if ((v36 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      v26 = sub_1AAF906F4();
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
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v23;
      *(v16 + 8) = v38;
      *(v16 + 24) = v24;
      *(v16 + 32) = v25;
      *(v16 + 40) = v37;
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

unint64_t sub_1AAD1439C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 56 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = *(a3 + 48);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

double sub_1AAD14458(void (*a1)(double *__return_ptr, uint64_t **), uint64_t a2, uint64_t a3)
{
  sub_1AACE49D8(0);

  sub_1AACD889C(&v5);

  v6 = &v5;
  a1(&v7, &v6);

  return v7;
}

uint64_t sub_1AAD144E0(uint64_t a1)
{
  sub_1AAD0D380(0, &qword_1ED9B2EE8, &qword_1ED9B2EF0, MEMORY[0x1E697DFD0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAD14568(uint64_t a1, int64_t a2, int64_t a3)
{
  v3 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v4 = a3;
  v5 = a2;
  v58 = *(a1 + 16);
  if (v3 >= v58)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = a3 - a2;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AAD14950(0, &qword_1ED9B28B8, &unk_1ED9B29D0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6530]);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 4);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = v8[3];

  if (v3 < 0)
  {
    goto LABEL_83;
  }

  v12 = v8 + 4;
  v13 = v11 >> 1;
  v14 = v58;
  if (!v7)
  {
    v33 = v5;
    if (v58 <= v3)
    {
      goto LABEL_69;
    }

LABEL_44:
    v34 = a1 + 32;
    if (v33 <= v4)
    {
      v35 = v4;
    }

    else
    {
      v35 = v33;
    }

    v36 = v33;
    v56 = v33;
    v57 = v5;
    v54 = v35;
    v55 = a1 + 32;
    while (v7 < v14)
    {
      v37 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_76;
      }

      if (v4 == v36)
      {
        goto LABEL_69;
      }

      if (v4 < v5)
      {
        goto LABEL_77;
      }

      if (v33 < v5)
      {
        goto LABEL_78;
      }

      if (v35 == v36)
      {
        goto LABEL_79;
      }

      v38 = *(v34 + 8 * v7);
      if (!v13)
      {
        v39 = v8[3];
        if (((v39 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_81;
        }

        v40 = v4;
        v41 = v39 & 0xFFFFFFFFFFFFFFFELL;
        if (v41 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41;
        }

        sub_1AAD14950(0, &qword_1ED9B28B8, &unk_1ED9B29D0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6530]);
        v43 = swift_allocObject();
        v44 = j__malloc_size(v43);
        v45 = v44 - 32;
        if (v44 < 32)
        {
          v45 = v44 - 17;
        }

        v46 = v45 >> 4;
        v43[2] = v42;
        v43[3] = 2 * (v45 >> 4);
        v47 = (v43 + 4);
        v48 = v8[3] >> 1;
        if (v8[2])
        {
          v49 = v8 + 4;
          if (v43 != v8 || v47 >= v49 + 16 * v48)
          {
            memmove(v43 + 4, v49, 16 * v48);
          }

          v8[2] = 0;
        }

        v12 = (v47 + 16 * v48);
        v13 = (v46 & 0x7FFFFFFFFFFFFFFFLL) - v48;

        v8 = v43;
        v4 = v40;
        v5 = v57;
        v14 = v58;
        v34 = v55;
        v33 = v56;
        v35 = v54;
      }

      v50 = __OFSUB__(v13--, 1);
      if (v50)
      {
        goto LABEL_80;
      }

      *v12 = v38;
      v12[1] = v36;
      v12 += 2;
      ++v7;
      ++v36;
      if (v37 == v14)
      {
        goto LABEL_69;
      }
    }

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
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v4 < v5)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v13 -= v7;
  v15 = v7 - 1;
  if (v7 - 1 >= v3)
  {
    v16 = v3;
  }

  else
  {
    v16 = v7 - 1;
  }

  if (v16 >= v58)
  {
    v16 = v58;
  }

  if (v16 <= 0xB)
  {
    goto LABEL_36;
  }

  if (v15 >= v3)
  {
    v15 = v3;
  }

  if (v15 >= v58)
  {
    v15 = v58;
  }

  if (v12 >= a1 + 8 * v15 + 40 || a1 + 32 >= &v8[2 * v15 + 6])
  {
    v18 = v16 + 1;
    v19 = v18 & 3;
    if ((v18 & 3) == 0)
    {
      v19 = 4;
    }

    v20 = v18 - v19;
    v12 += 2 * v20;
    v21 = v20 + v5;
    v22 = vaddq_s64(vdupq_n_s64(v5), xmmword_1AAFC39A0);
    v23 = (a1 + 48);
    v24 = (v8 + 8);
    v25 = vdupq_n_s64(2uLL);
    v26 = v20;
    do
    {
      v59.val[1] = vaddq_s64(v22, v25);
      v27 = v24 - 4;
      v28 = v23[-1];
      v59.val[0] = *v23;
      vst2q_f64(v27, *(&v22 - 1));
      vst2q_f64(v24, v59);
      v22 = vaddq_s64(v22, vdupq_n_s64(4uLL));
      v23 += 2;
      v24 += 8;
      v26 -= 4;
    }

    while (v26);
  }

  else
  {
LABEL_36:
    v20 = 0;
    v21 = v5;
  }

  v29 = 0;
  v30 = v7 - v20;
  v31 = a1 + 8 * v20 + 32;
  v32 = v58 - v20;
  do
  {
    if (v32 == v29)
    {
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!(v21 - v4 + v29))
    {
      goto LABEL_74;
    }

    *v12 = *(v31 + 8 * v29);
    v12[1] = v21 + v29;
    v12 += 2;
    ++v29;
  }

  while (v30 != v29);
  v33 = v21 + v29;
  if (v58 > v3)
  {
    goto LABEL_44;
  }

LABEL_69:
  v51 = v8[3];
  if (v51 < 2)
  {
    return;
  }

  v52 = v51 >> 1;
  v50 = __OFSUB__(v52, v13);
  v53 = v52 - v13;
  if (v50)
  {
LABEL_85:
    __break(1u);
    return;
  }

  v8[2] = v53;
}

void sub_1AAD14950(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AACC9AC0(255, a3, a4, a5);
    v6 = sub_1AAF90484();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t **sub_1AAD149AC@<X0>(uint64_t **result@<X0>, float64x2_t *a2@<X8>)
{
  v2 = 0;
  v3 = **result;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0uLL;
  v9 = 0.0;
  v10 = 0.0;
LABEL_4:
  v11 = v9;
  while (v6)
  {
LABEL_10:
    v13 = (*(v3 + 56) + 56 * (__clz(__rbit64(v6)) | (v2 << 6)));
    v9 = v13[3] + v13[5];
    v14 = 0uLL;
    if (*v13 > 1u)
    {
      if (*v13 == 2)
      {
        v14.f64[0] = v13[3] + v13[5];
      }

      else
      {
        v14.f64[1] = v13[3] + v13[5];
      }

      v15 = 0.0;
      goto LABEL_18;
    }

    if (!*v13)
    {
      v15 = v13[3] + v13[5];
LABEL_18:
      v9 = 0.0;
      goto LABEL_19;
    }

    v15 = 0.0;
LABEL_19:
    v6 &= v6 - 1;
    v8 = vbslq_s8(vcgtq_f64(v14, v8), v14, v8);
    if (v10 < v15)
    {
      v10 = v15;
    }

    if (v11 < v9)
    {
      goto LABEL_4;
    }
  }

  while (1)
  {
    v12 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      *a2 = v8;
      a2[1].f64[0] = v10;
      a2[1].f64[1] = v11;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v12);
    ++v2;
    if (v6)
    {
      v2 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1AAD14AB4(uint64_t a1@<X8>)
{
  *a1 = sub_1AAD14458(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t **sub_1AAD14AE8@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = **result;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0.0;
  v9 = 0.0;
  while (v6)
  {
    v10 = v2;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v3 + 56) + 56 * (v11 | (v10 << 6)));
    v13 = *v12;
    v14 = v12[6];
    if (v8 <= v14 && v13 < 2)
    {
      v8 = v12[6];
    }

    if (v9 <= v14 && (v13 & 0xFE) == 2)
    {
      v9 = v12[6];
    }
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      *a2 = v8;
      *(a2 + 8) = 0;
      *(a2 + 16) = v9;
      *(a2 + 24) = 0;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v2;
    if (v6)
    {
      v2 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD14BCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SgGroup(0);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = v4[6];
  v9 = type metadata accessor for SgClipRect(0);
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *v7 = 0;
  *(v7 + 1) = a1;
  *&v7[v4[7]] = 0x3FF0000000000000;
  *&v7[v4[8]] = 0;
  *&v7[v4[9]] = MEMORY[0x1E69E7CC0];
  v7[v4[10]] = 0;
  *a2 = v5;
}

uint64_t sub_1AAD14CA4@<X0>(void (*a1)(void *__return_ptr, void)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1AAD0F720(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1AAD14CD4(uint64_t a1, uint64_t a2)
{
  sub_1AAE13750(0, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAD14D68(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v34 = a3;
  v35 = a4;
  v36 = type metadata accessor for RenderBasedChartView(0, a3, a4, a4);
  v33 = *(v36 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v31 - v8;
  sub_1AACCCCDC(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChartModel.Scenegraph(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1AACB26B4(a1, v12, sub_1AACCCCDC);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = sub_1AACCCCDC;
    v21 = v12;
LABEL_7:
    sub_1AACDCF70(v21, v20);
    v30 = 0;
    v27 = 0;
    goto LABEL_8;
  }

  sub_1AAD10834(v12, v19, type metadata accessor for ChartModel.Scenegraph);
  v22 = *&v19[*(v13 + 60)];
  if (!v22 || !*&v19[*(v13 + 64)])
  {
    v20 = type metadata accessor for ChartModel.Scenegraph;
    v21 = v19;
    goto LABEL_7;
  }

  v23 = v33;
  v24 = *(v33 + 16);
  v31 = *&v19[*(v13 + 64)];
  v24(v9, v32, v36);
  v32 = type metadata accessor for ChartModel.Scenegraph;
  sub_1AAD10834(v19, v16, type metadata accessor for ChartModel.Scenegraph);
  v25 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v26 = (v7 + *(v14 + 80) + v25) & ~*(v14 + 80);
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 2) = v34;
  *(v27 + 3) = v28;
  v29 = v31;
  *(v27 + 4) = v22;
  *(v27 + 5) = v29;
  (*(v23 + 32))(&v27[v25], v9, v36);
  sub_1AAD10834(v16, &v27[v26], v32);

  v30 = sub_1AAD15C70;
LABEL_8:
  *a5 = v30;
  *(a5 + 8) = v27;
  *(a5 + 16) = 0;
}

uint64_t sub_1AAD150C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = type metadata accessor for RenderBasedChartView(0, v6, *(v4 + 24), a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 48) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = type metadata accessor for ChartModel.Scenegraph(0);
  v12 = *(*(v11 - 8) + 80);
  v13 = v10 + v12;
  v46 = *(*(v11 - 8) + 64);

  v14 = v4 + v9;
  (*(*(v6 - 8) + 8))(v4 + v9, v6);
  v15 = v4 + v9 + v7[9];
  sub_1AACB6294(0, qword_1ED9B5598, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1AAF8CAA4();
    (*(*(v16 - 8) + 8))(v15, v16);
    v45 = v13;
    v17 = type metadata accessor for ChartEnvironmentValues(0);
    v18 = v11;
    v19 = v12;
    v20 = v8;
    v21 = v17[5];
    v22 = sub_1AAF8CBA4();
    (*(*(v22 - 8) + 8))(v15 + v21, v22);
    v23 = v17[6];
    v24 = sub_1AAF8DF14();
    v25 = v15 + v23;
    v8 = v20;
    v12 = v19;
    v11 = v18;
    (*(*(v24 - 8) + 8))(v25, v24);
    v26 = v17[8];
    v27 = sub_1AAF8DCD4();
    v28 = v15 + v26;
    v13 = v45;
    (*(*(v27 - 8) + 8))(v28, v27);
  }

  else
  {
  }

  v29 = v9 + v13;
  sub_1AACB8774(*(v14 + v7[10]), *(v14 + v7[10] + 8), *(v14 + v7[10] + 16), sub_1AACB8784);
  sub_1AACB8774(*(v14 + v7[11]), *(v14 + v7[11] + 8), *(v14 + v7[11] + 16), sub_1AACB8784);
  sub_1AACB8788(*(v14 + v7[12]), *(v14 + v7[12] + 8), MEMORY[0x1E69E7D48], MEMORY[0x1E69E7CF8]);
  v30 = v14 + v7[13];
  sub_1AACB879C(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32));
  v31 = v14 + v7[14];
  sub_1AACB87F0(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56));
  v32 = v14 + v7[15];
  if (*(v32 + 419) != 1)
  {
    goto LABEL_23;
  }

  if (*(v32 + 40) != 255)
  {
    sub_1AACB634C((v14 + v7[15]));
  }

  if (*(v32 + 88) != 255)
  {
    sub_1AACB634C((v32 + 48));
  }

  if (*(v32 + 136) != 255)
  {
    sub_1AACB634C((v32 + 96));
  }

  if (*(v32 + 184) != 255)
  {
    sub_1AACB634C((v32 + 144));
  }

  if (*(v32 + 232) != 255)
  {
    sub_1AACB634C((v32 + 192));
  }

  if (*(v32 + 280) != 255)
  {
    sub_1AACB634C((v32 + 240));
  }

  if (*(v32 + 328) != 255)
  {
    sub_1AACB634C((v32 + 288));
  }

  if (*(v32 + 376) != 255)
  {
    sub_1AACB634C((v32 + 336));
  }

  if (*(v32 + 392))
  {

LABEL_23:
  }

  v33 = v29 & ~v12;
  sub_1AACB8788(*(v14 + v7[16]), *(v14 + v7[16] + 8), MEMORY[0x1E69E7D48], MEMORY[0x1E69E7CF8]);
  v34 = v14 + v7[17];
  if (*(v34 + 80))
  {
    if (*(v34 + 64))
    {
      sub_1AACB634C((v34 + 40));
    }
  }

  else
  {
  }

  v35 = v14 + v7[18];
  sub_1AACB6294(0, &qword_1ED9B2AF0, type metadata accessor for ChartModel, MEMORY[0x1E6981E90]);
  (*(*(v36 - 8) + 8))(v35, v36);
  sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);

  v37 = v7[19];
  v38 = sub_1AAF8E9D4();
  (*(*(v38 - 8) + 8))(v14 + v37, v38);
  v39 = v5 + v33;

  if (*(v5 + v33 + 451) != 1)
  {
    goto LABEL_47;
  }

  if (*(v39 + 72) != 255)
  {
    sub_1AACB634C((v39 + 32));
  }

  if (*(v39 + 120) != 255)
  {
    sub_1AACB634C((v39 + 80));
  }

  if (*(v39 + 168) != 255)
  {
    sub_1AACB634C((v39 + 128));
  }

  if (*(v39 + 216) != 255)
  {
    sub_1AACB634C((v39 + 176));
  }

  if (*(v39 + 264) != 255)
  {
    sub_1AACB634C((v39 + 224));
  }

  if (*(v39 + 312) != 255)
  {
    sub_1AACB634C((v39 + 272));
  }

  if (*(v39 + 360) != 255)
  {
    sub_1AACB634C((v39 + 320));
  }

  if (*(v39 + 408) != 255)
  {
    sub_1AACB634C((v39 + 368));
  }

  if (*(v39 + 424))
  {

LABEL_47:
  }

  if (*(v39 + 456))
  {
  }

  if (*(v39 + 472))
  {
  }

  if (*(v39 + 488))
  {
  }

  if (*(v39 + 504))
  {
  }

  if (*(v39 + 520))
  {
  }

  if (*(v39 + 640) != 255)
  {
    sub_1AACE3E8C(*(v39 + 536), *(v39 + 544), *(v39 + 552), *(v39 + 560), *(v39 + 568), *(v39 + 576), *(v39 + 584), *(v39 + 592), *(v39 + 600));
  }

  if (*(v39 + 752) != 255)
  {
    sub_1AACE3E8C(*(v39 + 648), *(v39 + 656), *(v39 + 664), *(v39 + 672), *(v39 + 680), *(v39 + 688), *(v39 + 696), *(v39 + 704), *(v39 + 712));
  }

  if (*(v39 + 856) != 255)
  {
    sub_1AAE0BF5C(*(v39 + 760), *(v39 + 768), *(v39 + 776), *(v39 + 784), *(v39 + 792), *(v39 + 800), *(v39 + 808), *(v39 + 816));
  }

  if (*(v39 + 992) != 255)
  {

    if (*(v39 + 904))
    {
      sub_1AACB634C((v39 + 880));
    }

    if (*(v39 + 920))
    {
    }

    v40 = *(v39 + 952);
    if (v40 != 255)
    {
      sub_1AACB8788(*(v39 + 944), v40 & 1, MEMORY[0x1E69E7CF8], MEMORY[0x1E69E7D48]);
    }
  }

  if (*(v39 + 1104) != 255)
  {
    sub_1AACE3E8C(*(v39 + 1000), *(v39 + 1008), *(v39 + 1016), *(v39 + 1024), *(v39 + 1032), *(v39 + 1040), *(v39 + 1048), *(v39 + 1056), *(v39 + 1064));
  }

  if (*(v39 + 1240) != 255)
  {
    sub_1AAE39548(*(v39 + 1112), *(v39 + 1120), *(v39 + 1128), *(v39 + 1136), *(v39 + 1144), *(v39 + 1152), *(v39 + 1160), *(v39 + 1168), *(v39 + 1176), *(v39 + 1184), *(v39 + 1192), *(v39 + 1200));
  }

  v41 = *(v11 + 56);
  v42 = sub_1AAF8DF14();
  (*(*(v42 - 8) + 8))(v39 + v41, v42);

  v43 = v39 + *(v11 + 68);
  if (*(v43 + 40) != 255)
  {
    sub_1AACB634C(v43);
  }

  if (*(v43 + 88) != 255)
  {
    sub_1AACB634C((v43 + 48));
  }

  if (*(v43 + 136) != 255)
  {
    sub_1AACB634C((v43 + 96));
  }

  if (*(v43 + 184) != 255)
  {
    sub_1AACB634C((v43 + 144));
  }

  if (*(v43 + 232) != 255)
  {
    sub_1AACB634C((v43 + 192));
  }

  if (*(v43 + 280) != 255)
  {
    sub_1AACB634C((v43 + 240));
  }

  if (*(v43 + 328) != 255)
  {
    sub_1AACB634C((v43 + 288));
  }

  if (*(v43 + 376) != 255)
  {
    sub_1AACB634C((v43 + 336));
  }

  if (*(v43 + 392))
  {
  }

  return MEMORY[0x1EEE6BDD0](v5, v33 + v46, v8 | v12 | 7);
}

uint64_t sub_1AAD15B44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1AAF8DF14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 64) = a2;
  }

  else
  {
    v13 = type metadata accessor for ChartModel.Scenegraph(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

double sub_1AAD15C70@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for RenderBasedChartView(0, v4, v5, a1) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for ChartModel.Scenegraph(0) - 8);
  v10 = v2 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  *&result = sub_1AAD1228C(v10, v4, v5, a2).n128_u64[0];
  return result;
}

uint64_t sub_1AAD15D88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AAF8DF14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[9] + 64);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for ChartModel.Scenegraph(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1AAD15EC0@<X0>(void *a1@<X8>)
{
  v90 = a1;
  sub_1AACBF990(0, &qword_1ED9B2CF8, sub_1AAD0D550, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v83 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v84 = &v76 - v3;
  sub_1AAD0D514(0);
  v89 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ChartModel.Scenegraph(0);
  MEMORY[0x1EEE9AC00](v77);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0D550(0);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAD12484(0);
  *&v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E697F948];
  sub_1AAD00D70(0, &qword_1ED9B2CE0, sub_1AAD0D614, sub_1AAD0D514, MEMORY[0x1E697F948]);
  v86 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v76 - v14;
  sub_1AAD00D70(0, &qword_1ED9B2CE8, sub_1AAD16B84, sub_1AAD12484, v12);
  v79 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  sub_1AAD0D614(0);
  v87 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD16B84(0);
  *&v80 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v76 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v76 - v31);
  v33 = type metadata accessor for ChartSeparateAxesContent(0);
  if (*(v1 + *(v33 + 32)) > 1u)
  {
    if (*(v1 + *(v33 + 32)) == 2)
    {
      v37 = sub_1AAF8E774();
      sub_1AAF8E784();
      v38 = sub_1AAF8E784() == v37;
      sub_1AAE32490(v38, v32);
      v39 = sub_1AAF8E794();
      sub_1AAF8E784();
      v40 = sub_1AAF8E784() == v39;
      sub_1AAE32F1C(v40, v29);
      sub_1AACB26B4(v32, v26, sub_1AAD16B84);
      sub_1AACB26B4(v29, v23, sub_1AAD16B84);
      v41 = v76;
      sub_1AACB26B4(v26, v76, sub_1AAD16B84);
      sub_1AAD26050(0);
      sub_1AACB26B4(v23, v41 + *(v42 + 48), sub_1AAD16B84);
      sub_1AACDCF70(v23, sub_1AAD16B84);
      sub_1AACDCF70(v26, sub_1AAD16B84);
      sub_1AACB26B4(v41, v17, sub_1AAD12484);
      swift_storeEnumTagMultiPayload();
      sub_1AAD26164();
      sub_1AACDCA40(&qword_1ED9B54F0, sub_1AAD12484, MEMORY[0x1E6981F48]);
      sub_1AAF8E374();
      sub_1AACB26B4(v20, v88, sub_1AAD0D614);
      swift_storeEnumTagMultiPayload();
      sub_1AAD0D65C();
      sub_1AAD12568();
      sub_1AAF8E374();
      sub_1AACDCF70(v20, sub_1AAD0D614);
      sub_1AACDCF70(v41, sub_1AAD12484);
      sub_1AACDCF70(v29, sub_1AAD16B84);
      v36 = v32;
      v35 = sub_1AAD16B84;
    }

    else
    {
      v73 = sub_1AAF8E794();
      sub_1AAF8E784();
      v74 = sub_1AAF8E784() == v73;
      sub_1AAE32F1C(v74, v32);
      sub_1AACB26B4(v32, v17, sub_1AAD16B84);
      swift_storeEnumTagMultiPayload();
      sub_1AAD26164();
      sub_1AACDCA40(&qword_1ED9B54F0, sub_1AAD12484, MEMORY[0x1E6981F48]);
      sub_1AAF8E374();
      sub_1AACB26B4(v20, v88, sub_1AAD0D614);
      swift_storeEnumTagMultiPayload();
      sub_1AAD0D65C();
      sub_1AAD12568();
      sub_1AAF8E374();
      sub_1AACDCF70(v20, sub_1AAD0D614);
      v35 = sub_1AAD16B84;
      v36 = v32;
    }
  }

  else if (*(v1 + *(v33 + 32)))
  {
    v43 = *(v1 + 9);
    v44 = *(v1 + 10);
    v45 = *(v1 + 11);
    v46 = *(v1 + 12);
    v93.origin.x = v43;
    v93.origin.y = v44;
    v93.size.width = v45;
    v93.size.height = v46;
    CGRectGetMinX(v93);
    v94.origin.x = v43;
    v94.origin.y = v44;
    v94.size.width = v45;
    v94.size.height = v46;
    CGRectGetMaxX(v94);
    v95.origin.x = v43;
    v95.origin.y = v44;
    v95.size.width = v45;
    v95.size.height = v46;
    CGRectGetMinY(v95);
    v96.origin.x = v43;
    v96.origin.y = v44;
    v96.size.width = v45;
    v96.size.height = v46;
    CGRectGetMaxY(v96);
    v47 = v1 + *(v33 + 40);
    sub_1AACB26B4(v47, v7, type metadata accessor for ChartModel.Scenegraph);
    sub_1AACBBBA0(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1AAF9E2B0;
    v49 = *(v47 + 24);
    *(v48 + 32) = *(v47 + 16);
    *(v48 + 40) = v49;
    v50 = type metadata accessor for SgGroup(0);
    v51 = swift_allocBox();
    v53 = v52;
    v54 = v50[6];
    v55 = type metadata accessor for SgClipRect(0);
    (*(*(v55 - 8) + 56))(&v53[v54], 1, 1, v55);
    *v53 = 0;
    *(v53 + 1) = v48;
    *&v53[v50[7]] = 0x3FF0000000000000;
    *&v53[v50[8]] = 0;
    *&v53[v50[9]] = MEMORY[0x1E69E7CC0];
    v53[v50[10]] = 0;
    v56 = *(v7 + 78);
    v57 = *(v7 + 163);
    v58 = *(v7 + 164);
    v80 = *(v7 + 1288);
    v81 = v56;
    sub_1AAD050BC((v7 + 536), v91);
    v59 = *v7;
    sub_1AACB6294(0, &qword_1ED9B28A8, sub_1AAD107BC, MEMORY[0x1E69E6F90]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1AAF92AB0;
    *(v60 + 32) = v59;
    sub_1AAD050BC(v91, v60 + 104);
    *(v60 + 40) = 0x3FF0000000000000;
    *(v60 + 48) = v51;
    v61 = v81;
    *(v60 + 72) = v80;
    *(v60 + 56) = v61;
    *(v60 + 88) = v57;
    *(v60 + 96) = v58;
    v62 = sub_1AAD10684(v60);
    swift_setDeallocating();

    sub_1AACDCF70(v60 + 32, sub_1AAD107BC);
    swift_deallocClassInstance();
    sub_1AAD09944(v91);
    v63 = v78;
    *v78 = v62;
    *(v63 + 8) = v7[1280];
    v64 = *(v77 + 56);
    v65 = type metadata accessor for SgCanvasRenderer(0);
    v66 = *(v65 + 24);
    v67 = sub_1AAF8DF14();
    (*(*(v67 - 8) + 16))(v63 + v66, &v7[v64], v67);
    sub_1AACDCF70(v7, type metadata accessor for ChartModel.Scenegraph);
    v68 = v63 + *(v65 + 28);
    *v68 = 0u;
    *(v68 + 16) = 0u;
    *(v68 + 32) = 1;
    sub_1AAF8E944();
    v69 = v92;
    v70 = v63 + *(v82 + 36);
    v71 = v91[1];
    *v70 = v91[0];
    *(v70 + 16) = v71;
    *(v70 + 32) = v69;
    *(v70 + 33) = 256;
    sub_1AACB26B4(v63, v84, sub_1AAD0D550);
    swift_storeEnumTagMultiPayload();
    sub_1AAD124B8();
    v72 = v85;
    sub_1AAF8E374();
    sub_1AACB26B4(v72, v88, sub_1AAD0D514);
    swift_storeEnumTagMultiPayload();
    sub_1AAD0D65C();
    sub_1AAD12568();
    sub_1AAF8E374();
    sub_1AACDCF70(v72, sub_1AAD0D514);
    v35 = sub_1AAD0D550;
    v36 = v63;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1AAD124B8();
    v34 = v85;
    sub_1AAF8E374();
    sub_1AACB26B4(v34, v88, sub_1AAD0D514);
    swift_storeEnumTagMultiPayload();
    sub_1AAD0D65C();
    sub_1AAD12568();
    sub_1AAF8E374();
    v35 = sub_1AAD0D514;
    v36 = v34;
  }

  return sub_1AACDCF70(v36, v35);
}

void sub_1AAD16BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    *a3 = *(a2 + 8 * v3 + 32);

    return;
  }

  __break(1u);
}

uint64_t sub_1AAD16BF0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AAD16C30(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SgMeasurements(0);

  sub_1AACD889C(&v8);

  v12[0] = &v8;

  sub_1AACD889C(v9);

  v12[1] = v9;

  sub_1AACD889C(&v10);

  v12[2] = &v10;

  sub_1AACD889C(v11);

  v12[3] = v11;
  (a1)(&v13, v12);
  sub_1AACD8D78(&v8, sub_1AAD12CE0);
  return v13;
}

uint64_t sub_1AAD16D64()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD16DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD16E04()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD16E6C@<X0>(char **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = **a1;
  v8 = *a1[1];
  v9 = *a1[2];
  sub_1AACE0A98(a1[3], v13);
  type metadata accessor for AxisMarkLayoutContext();
  v10 = swift_allocObject();
  v11 = sub_1AAD1704C(MEMORY[0x1E69E7CC0]);
  *(v10 + 184) = 0;
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 216) = v11;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 72) = 0u;
  *(v10 + 224) = 0;
  *(v10 + 232) = 0;
  *(v10 + 112) = -1;
  *(v10 + 128) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 160) = 255;
  *(v10 + 16) = a2;
  *(v10 + 24) = v7;
  *(v10 + 64) = v8;
  *(v10 + 136) = a3;
  swift_beginAccess();

  sub_1AACE13B0(v13, v10 + 72);
  swift_endAccess();
  *(v10 + 120) = v9;
  result = swift_beginAccess();
  *(v10 + 184) = v8;
  *a4 = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisTick.Length.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1AAD16FFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1AAD1704C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B5CC();
    v3 = sub_1AAF903A4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1AACC9B78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

uint64_t sub_1AAD17120()
{
  sub_1AACC785C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), sub_1AAEAEF98);
  sub_1AAD12C64(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1AAD17180(uint64_t a1)
{
  result = type metadata accessor for ChartContentRenderContext.Environment(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1AAD172C4()
{
  if (!qword_1ED9B4290[0])
  {
    v0 = type metadata accessor for NumberBins(0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0]);
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B4290);
    }
  }
}

void sub_1AAD17324(uint64_t a1)
{
  sub_1AAD172C4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateBins(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1AAD173C0(uint64_t *a1)
{
  result = type metadata accessor for NumberBins.Storage(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAD1744C(void *a1)
{
  result = type metadata accessor for NumberBins.UniformStorage(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    result = sub_1AAF8F914();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1AAD174D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AACFDCAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAD17568(uint64_t a1)
{
  result = type metadata accessor for DateBins.Storage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAD175D4(uint64_t a1)
{
  sub_1AAD1768C();
  if (v1 <= 0x3F)
  {
    sub_1AACE99D0(319);
    if (v2 <= 0x3F)
    {
      sub_1AAD17A44(319, &qword_1ED9B2A90, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1AAD1768C()
{
  if (!qword_1ED9B2A10)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B2A10);
    }
  }
}

uint64_t sub_1AAD176F4(uint64_t a1)
{
  result = sub_1AAF8CB94();
  if (v2 <= 0x3F)
  {
    result = sub_1AAF8CA64();
    if (v3 <= 0x3F)
    {
      result = sub_1AAF8CBA4();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CalendarBinningImpl(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AAD177B4(uint64_t a1)
{
  result = sub_1AAF8CB94();
  if (v2 <= 0x3F)
  {
    result = sub_1AAF8CA64();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1AAD178A8(double a1)
{
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = sub_1AAD179CC(v14, *(*(v3 + 48) + ((v10 << 9) | (8 * v11))));
    if (*(v12 + 168) != 254)
    {
      *v12 = *v12 * a1;
    }

    (v13)(v14, 0);
    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t (*sub_1AAD179CC(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AAD17AA8(v4, a2);
  return sub_1AAD184B4;
}

void sub_1AAD17A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t (*sub_1AAD17AA8(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AAD17CCC(v5);
  v5[9] = sub_1AAD17B4C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AAD18504;
}

void (*sub_1AAD17B4C(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x628uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 1560) = v3;
  *(v8 + 1552) = a2;
  v10 = *v3;
  v11 = sub_1AACC9B78(a2);
  *(v9 + 769) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1AAD17CF4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1AAD1A34C(v16, a3 & 1);
    v11 = sub_1AACC9B78(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 196) = v11;
  if (v17)
  {
    memcpy(v9, (*(*v4 + 56) + 776 * v11), 0x301uLL);
  }

  else
  {
    v9[8] = 0u;
    v9[9] = 0u;
    v9[6] = 0u;
    v9[7] = 0u;
    v9[4] = 0u;
    v9[5] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *v9 = 0u;
    v9[1] = 0u;
    *(v9 + 20) = 0;
    *(v9 + 21) = 254;
    bzero(v9 + 11, 0x251uLL);
  }

  return sub_1AAD18508;
}

uint64_t (*sub_1AAD17CCC(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AAD192C8;
}

void sub_1AAD17CF4()
{
  v1 = v0;
  sub_1AAD9B074();
  v2 = *v0;
  v3 = sub_1AAF90384();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      sub_1AAD1125C(*(v2 + 56) + 776 * v16, v18);
      *(*(v4 + 48) + 8 * v16) = v17;
      memcpy((*(v4 + 56) + 776 * v16), v18, 0x301uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t static BuilderTuple<each A>._renderAxisMark(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a3;
  v63 = a6;
  if (a3 == 1)
  {
    v10 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v13 = 0;
      v14 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v12[-v14] < 0x20)
      {
        goto LABEL_9;
      }

      v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (v14 + 16);
      v16 = v12 + 16;
      v17 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != v8)
      {
LABEL_9:
        v19 = v8 - v13;
        v20 = 8 * v13;
        v21 = &v12[8 * v13];
        v22 = (v14 + v20);
        do
        {
          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v19;
        }

        while (v19);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v61[1] = v61;
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v26 = *a2;
  v61[0] = v27;
  v28 = *(v27 + 16);
  v68 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v28(v24);
  v30 = MEMORY[0x1E69E7CC0];
  v62 = v10;
  if (v8)
  {
    v31 = 0;
    v66 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v65 = a5 & 0xFFFFFFFFFFFFFFFELL;
    v32 = (v10 + 32);
    v64 = v8;
    v67 = v26;
    while (1)
    {
      v69 = v61;
      v33 = *(v66 + 8 * v31);
      v70 = *(v65 + 8 * v31);
      v35.n128_f64[0] = MEMORY[0x1EEE9AC00](result);
      v37 = v61 - v36;
      if (v8 == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = *v32;
      }

      v71 = v34;
      (*(v34 + 16))(v37, &v68[v38], v33, v35);
      v39 = *(v26 + 16);
      v40 = *(v39 + 16);
      v41 = *(v40 + 32);
      *&v74[0] = v31;

      sub_1AAF90024();
      v76 = v41;
      swift_beginAccess();
      v42 = *(v40 + 16);
      v43 = *(v42 + 16);
      v72 = v30;
      if (v43 && (v44 = sub_1AACCAE28(&v76), (v45 & 1) != 0))
      {
        v46 = *(*(v42 + 56) + 8 * v44);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v31);
        MEMORY[0x1AC5992F0](v41);
        v79 = v74[2];
        v80 = v74[3];
        v81 = v75;
        v77 = v74[0];
        v78 = v74[1];
        v47 = sub_1AAF906E4();
        v46 = sub_1AACCB060(v47);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = *(v40 + 16);
        *(v40 + 16) = 0x8000000000000000;
        sub_1AACCB154(v46, &v76, isUniquelyReferenced_nonNull_native);
        *(v40 + 16) = v73;
      }

      swift_endAccess();
      sub_1AACCAFF0(&v76);
      v49 = *(v40 + 32);
      *(v40 + 32) = v46;
      v50 = *(v39 + 24);
      *(v39 + 24) = v46;
      v26 = v67;
      v76 = v67;
      (*(v70 + 16))(v74, v37, &v76, v33);
      *(v39 + 24) = v50;
      *(v40 + 32) = v49;

      v51 = *&v74[0];
      v30 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AACE3508(0, *(v30 + 2) + 1, 1, v30);
      }

      v53 = *(v30 + 2);
      v52 = *(v30 + 3);
      if (v53 >= v52 >> 1)
      {
        v30 = sub_1AACE3508((v52 > 1), v53 + 1, 1, v30);
      }

      *(v30 + 2) = v53 + 1;
      *&v30[8 * v53 + 32] = v51;
      result = (*(v71 + 8))(v37, v33);
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v31;
      v32 += 4;
      v8 = v64;
      if (v64 == v31)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    v54 = type metadata accessor for SgGroup(0);
    v55 = swift_allocBox();
    v57 = v56;
    v58 = *(*(v26 + 16) + 24);
    v59 = v54[6];
    v60 = type metadata accessor for SgClipRect(0);
    (*(*(v60 - 8) + 56))(&v57[v59], 1, 1, v60);
    *v57 = v58;
    *(v57 + 1) = v30;
    *&v57[v54[7]] = 0x3FF0000000000000;
    *&v57[v54[8]] = 0;
    *&v57[v54[9]] = MEMORY[0x1E69E7CC0];
    v57[v54[10]] = 0;
    *v63 = v55;
    return (*(v61[0] + 8))(v68, v62);
  }

  return result;
}

void sub_1AAD184B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1AAD18508(uint64_t *a1)
{
  v1 = *a1;
  sub_1AAD1900C(*a1, *a1 + 776, &qword_1ED9B0910, &type metadata for SgAnimatableData.Item);
  v2 = *(v1 + 769);
  if (*(v1 + 944) == 254)
  {
    sub_1AAD19258(v1 + 776, &qword_1ED9B0910, &type metadata for SgAnimatableData.Item);
    if (v2)
    {
      sub_1AAD925D0(*(v1 + 1568), **(v1 + 1560), v3);
    }
  }

  else
  {
    v4 = *(v1 + 1560);
    memcpy(v8, (v1 + 776), sizeof(v8));
    v5 = *v4;
    v6 = *(v1 + 1568);
    if (v2)
    {
      memcpy((v5[7] + 776 * v6), v8, 0x301uLL);
    }

    else
    {
      v7 = *(v1 + 1552);
      memcpy(__dst, v8, 0x301uLL);
      sub_1AADD43B8(v6, v7, __dst, v5);
    }
  }

  sub_1AAD19258(v1, &qword_1ED9B0910, &type metadata for SgAnimatableData.Item);

  free(v1);
}

uint64_t static AxisValueLabel._renderAxisMark(_:_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + 160);
  if (v6 == 255)
  {
    goto LABEL_130;
  }

  v9 = result;
  v12 = *(v5 + 144);
  v11 = *(v5 + 152);
  v100[0] = v12;
  v100[1] = v11;
  v101 = v6;
  v102 = *(v5 + 168);
  sub_1AACCAE10(v12, v11, v6);
  v14 = type metadata accessor for AxisValueLabel(0, a3, a4, v13);
  sub_1AACDEDC8(v100, v5, v14, v103);
  v97 = v103[1];
  v98 = v103[0];
  v96 = v104;
  sub_1AACCA728(v12, v11, v6);
  v15 = *(v9 + 76);
  v16 = 9u >> (v15 & 0xF);
  v95 = 0x20100u >> (8 * v15);
  v17 = *(*(v5 + 16) + 24);

  v18 = sub_1AAF8DFB4();
  v22 = v20;
  if (v16)
  {
    v20 = v18;
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (v16)
  {
    v24 = v22;
  }

  else
  {
    v24 = v18;
  }

  if (v16)
  {
    v25 = v21;
  }

  else
  {
    v25 = v19;
  }

  LOBYTE(v100[0]) = v23 & 1;
  v26 = sub_1AACDFA18(v103, v17, v20, v23 & 1, v24, v25 & 1);
  v28 = v27;

  if (v16)
  {
    v29 = v26;
  }

  else
  {
    v29 = v28;
  }

  if (v16)
  {
    v26 = v28;
  }

  v30 = *(v5 + 24);
  v31 = *(v5 + 64);
  v32 = *v9;
  v99 = a5;
  if (v32 == 2)
  {
    v33 = v30 != 2 || (v31 & 0xFE) != 2;
    LOBYTE(v32) = *(v5 + 136) >= 2u && v33;
  }

  v34 = sub_1AAD18F3C(v32 & 1, v30, v31, *(v5 + 344));
  v35 = sub_1AAD18DF8(v32 & 1, v30, *(v5 + 64), *(v5 + 344));
  result = sub_1AAD19090(v30, *(v5 + 64));
  v37 = v36;
  v38 = *(v5 + 352);
  if (v32)
  {
    v39 = *(v5 + 360);
    v40 = (v38 + *(v5 + 368)) * 0.5;
    v41 = (v39 + *(v5 + 376)) * 0.5;
  }

  else
  {
    v41 = *(v5 + 360);
    v40 = *(v5 + 352);
    v39 = v41;
  }

  v42 = *(v5 + 64);
  if (v42 > 1)
  {
    if (v35 == 2)
    {
      v46 = *(v5 + 320);
      if (*(v5 + 336) < v46)
      {
        v46 = *(v5 + 336);
      }

      if (v39 <= v46 + 1.0)
      {
        goto LABEL_51;
      }
    }

    else if (!v35)
    {
      v44 = *(v5 + 320);
      if (v44 <= *(v5 + 336))
      {
        v44 = *(v5 + 336);
      }

      if (v44 + -1.0 <= v39)
      {
        goto LABEL_51;
      }
    }
  }

  else if (v34 == 2)
  {
    v45 = *(v5 + 312);
    if (*(v5 + 328) < v45)
    {
      v45 = *(v5 + 328);
    }

    if (v38 <= v45 + 1.0)
    {
      goto LABEL_51;
    }
  }

  else if (!v34)
  {
    v43 = *(v5 + 312);
    if (v43 <= *(v5 + 328))
    {
      v43 = *(v5 + 328);
    }

    if (v43 + -1.0 <= v38)
    {
      goto LABEL_51;
    }
  }

  if ((v32 & 1) != 0 && *(v5 + 136) != 2)
  {
    if (*(v5 + 160) == 0xFF)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v47 = *(v5 + 176);
    v48 = __OFSUB__(v47, 1);
    v49 = v47 - 1;
    if (!v48)
    {
      if (*(v5 + 168) == v49)
      {
LABEL_51:
        result = sub_1AACFD7CC(v103);
        v50 = 0xE000000000000000;
        v51 = v99;
LABEL_128:
        *v51 = v50;
        return result;
      }

      goto LABEL_52;
    }

    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

LABEL_52:
  swift_beginAccess();
  v52 = 4.0;
  if ((v9[13] & 1) == 0)
  {
    v52 = v9[12];
  }

  v53 = *(v5 + 56);
  v94 = *(v5 + 48);
  if (*(v9 + 88))
  {
    v54 = 4.0;
  }

  else
  {
    v54 = v9[10];
  }

  if (v42 <= 1 && v34 == 1)
  {
    result = swift_beginAccess();
    if (*(v5 + 216))
    {
      v52 = v52 + *(v5 + 224);
LABEL_70:
      if (v35 == 2)
      {
        v53 = v53 - v52;
      }

      else if (v35 != 1)
      {
        v53 = v53 + v52;
      }

      v92 = v40;
      v93 = v26;
      v91 = v41;
      if (v37)
      {
        v56 = dbl_1AAFA1048[v34];
        v57 = dbl_1AAFA1048[v35];
        v51 = v99;
        v58 = v96;
        v59 = v95;
        if (*(v9 + 74))
        {
          goto LABEL_109;
        }

        goto LABEL_87;
      }

      result = swift_beginAccess();
      if (*(v5 + 216))
      {
        v61 = *(v5 + 192);
        v60 = *(v5 + 200);
        v62 = v61 * dbl_1AAFA1048[v34];
        v63 = dbl_1AAFA1048[v35];
        sub_1AAF8E274();
        if ((sub_1AAF8E164() & 1) == 0)
        {
          sub_1AAF8E284();
          if (sub_1AAF8E164())
          {
            v62 = v62 - (v61 - v29);
          }

          else
          {
            sub_1AAF8E264();
            sub_1AAF8E164();
            v62 = v62 + (v61 - v29) * -0.5;
          }
        }

        v51 = v99;
        v58 = v96;
        v59 = v95;
        v64 = v60 * v63;
        v56 = v62 / v29;
        sub_1AAF8E174();
        if ((sub_1AAF8E164() & 1) == 0)
        {
          sub_1AAF8E184();
          if (sub_1AAF8E164())
          {
            v65 = v60 - v93;
            v26 = v93;
            v57 = (v64 - v65) / v93;
            if ((*(v9 + 74) & 1) == 0)
            {
              goto LABEL_87;
            }
          }

          else
          {
            sub_1AAF8E194();
            sub_1AAF8E164();
            v83 = v60 - v93;
            v26 = v93;
            v57 = (v64 + v83 * -0.5) / v93;
            if ((*(v9 + 74) & 1) == 0)
            {
              goto LABEL_87;
            }
          }

LABEL_109:
          v66 = 0;
          LOBYTE(v68) = 0;
          v67 = v30 == 1;
          goto LABEL_110;
        }

        v26 = v93;
        v57 = v64 / v93;
        if (*(v9 + 74))
        {
          goto LABEL_109;
        }

LABEL_87:
        v67 = *(v9 + 7);
        v66 = *(v9 + 8);
        v68 = *(v9 + 36);
        if (((v68 >> 8) & 1) == 0)
        {
          v69 = *(v5 + 64);
          if (v69 >= 2)
          {
            *&v70 = v52;
          }

          else
          {
            *&v70 = v54;
          }

          if (v69 > 1)
          {
            v77 = v26 * 0.5 + 1.0;
            v78 = *(v5 + 256);
            v79 = *(v5 + 264);
            if (v79 >= v78)
            {
              v80 = *(v5 + 256);
            }

            else
            {
              v80 = *(v5 + 264);
            }

            v75 = v80 - v77;
            if (v78 <= v79)
            {
              v78 = *(v5 + 264);
            }

            v76 = v77 + v78;
            v73 = 0xFFF0000000000000;
            v74 = 0x7FF0000000000000;
          }

          else
          {
            v71 = *(v5 + 240);
            v72 = *(v5 + 248);
            if (v72 >= v71)
            {
              v73 = *(v5 + 240);
            }

            else
            {
              v73 = *(v5 + 248);
            }

            if (v71 > v72)
            {
              v74 = *(v5 + 240);
            }

            else
            {
              v74 = *(v5 + 248);
            }

            v75 = -INFINITY;
            v76 = INFINITY;
          }

          v81 = 0;
          if (v68)
          {
            v82 = v70;
          }

          else
          {
            v82 = v66;
          }

          goto LABEL_127;
        }

LABEL_110:
        v73 = 0;
        v81 = 2;
        v84 = v66 | v67;
        v67 = 0;
        v82 = 0;
        v75 = 0.0;
        v74 = 0;
        v76 = 0.0;
        if (!v84 && !v68)
        {
          if (*(v5 + 64) > 1u)
          {
            v67 = 0;
            v87 = v93 * 0.5 + 1.0;
            v88 = *(v5 + 256);
            v89 = *(v5 + 264);
            if (v89 >= v88)
            {
              v90 = *(v5 + 256);
            }

            else
            {
              v90 = *(v5 + 264);
            }

            v75 = v90 - v87;
            if (v88 <= v89)
            {
              v88 = *(v5 + 264);
            }

            v76 = v87 + v88;
            v82 = 0x3FF0000000000000;
            v74 = 0x7FF0000000000000;
            v73 = 0xFFF0000000000000;
          }

          else
          {
            v67 = 0;
            v85 = *(v5 + 240);
            v86 = *(v5 + 248);
            if (v86 >= v85)
            {
              v73 = *(v5 + 240);
            }

            else
            {
              v73 = *(v5 + 248);
            }

            if (v85 > v86)
            {
              v74 = *(v5 + 240);
            }

            else
            {
              v74 = *(v5 + 248);
            }

            v82 = 0x3FF0000000000000;
            v76 = INFINITY;
            v75 = -INFINITY;
          }

          v81 = 1;
        }

LABEL_127:
        result = swift_allocObject();
        *(result + 16) = *(*(v5 + 16) + 24);
        *(result + 24) = v92 + v94;
        *(result + 32) = v91 + v53;
        *(result + 40) = v56;
        *(result + 48) = v57;
        *(result + 72) = v97;
        *(result + 56) = v98;
        *(result + 88) = v58;
        *(result + 96) = v59;
        *(result + 104) = v29;
        *(result + 112) = v93;
        *(result + 120) = v81;
        *(result + 128) = v67;
        *(result + 136) = v82;
        *(result + 144) = v73;
        *(result + 152) = v75;
        *(result + 160) = v74;
        *(result + 168) = v76;
        *(result + 176) = 6;
        v50 = result | 0xA000000000000000;
        *(result + 184) = 0;
        goto LABEL_128;
      }

      goto LABEL_132;
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if ((v42 & 0xFE) != 2 || v35 != 1)
  {
LABEL_65:
    if (v34 == 2)
    {
      v55 = v94 - v54;
    }

    else
    {
      if (v34 == 1)
      {
        goto LABEL_70;
      }

      v55 = v94 + v54;
    }

    v94 = v55;
    goto LABEL_70;
  }

  result = swift_beginAccess();
  if (*(v5 + 216))
  {
    v54 = v54 + *(v5 + 224);
    goto LABEL_65;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1AAD18DB8()
{
  sub_1AACE56EC(v0[7], v0[8], v0[9], v0[10], v0[11]);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1AAD18DF8(char a1, char a2, unsigned int a3, double a4)
{
  if ((*(v4 + 24) & 1) != 0 || (result = sub_1AADDB31C(), result == 3))
  {
    if (a2)
    {
      if (a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (a4 <= 0.0);
      }

      if (a3)
      {
        v11 = 2;
      }

      else
      {
        v11 = a3;
      }

      if (a3 - 2 < 2)
      {
        v11 = v10;
      }

      if (a2 == 1)
      {
        return 0x1010002u >> (8 * a3);
      }

      else
      {
        return v11;
      }
    }

    else
    {
      if (a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2 * (a4 <= 0.0);
      }

      if (a3)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      if (a3 - 2 >= 2)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }
  }

  return result;
}

void sub_1AAD18EDC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1AAD18F3C(char a1, char a2, unsigned int a3, double a4)
{
  if ((*(v4 + 24) & 1) != 0 || (result = sub_1AADDB234(), result == 3))
  {
    if (a2)
    {
      if (a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (a4 <= 0.0);
      }

      if (a3 == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }

      if (a3 < 2u)
      {
        v11 = v10;
      }

      if (a2 == 1)
      {
        return 0x20101u >> (8 * a3);
      }

      else
      {
        return v11;
      }
    }

    else
    {
      if (a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2 * (a4 <= 0.0);
      }

      if (a3 == 2)
      {
        v13 = a3;
      }

      else
      {
        v13 = 0;
      }

      if (a3 >= 2u)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }
  }

  return result;
}

uint64_t sub_1AAD1900C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACCB990(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAD19090(char a1, unsigned __int8 a2)
{
  if (*(v2 + 48) != 1)
  {
    return *(v2 + 32);
  }

  if (a1 || a2 < 2u)
  {
    return 0;
  }

  if (a2 == 2)
  {
    return sub_1AAF8F134();
  }

  return sub_1AAF8F144();
}

uint64_t sub_1AAD190FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 769))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 168);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAD19148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 760) = 0;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 768) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 769) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 769) = 0;
    }

    if (a2)
    {
      *(result + 168) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AAD19258(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACCB990(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AAD192CC(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1AAF8E244();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAD19370(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v4;
  sub_1AAD19788(v3, sub_1AAD19DA4, 0, isUniquelyReferenced_nonNull_native, &v8);

  v6 = sub_1AAD1A804(v8);

  *a1 = v6;
  return result;
}

uint64_t static Optional<A>._renderAxisMark(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1AAF8FE74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v11 + 16))(v13, a1, v10, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v13, v10);
    *a5 = 0xE000000000000000;
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    v22 = v19;
    (*(a4 + 16))(v18, &v22, a3, a4);
    return (*(v14 + 8))(v18, a3);
  }

  return result;
}

void sub_1AAD19638(uint64_t a1)
{
  sub_1AACC7228(319, &qword_1ED9B2A50, &type metadata for SgNode, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1AAD0DA28(319, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1AAD0DA28(319, &qword_1ED9B2A48, MEMORY[0x1E697E7A0], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AAD19788(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v49 = a1;
  v50 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v51 = v8;
  v52 = 0;
  v53 = v11 & v9;
  v54 = a2;
  v55 = a3;

  sub_1AAD19A1C(&v47);
  if (v48[168] == 254)
  {
LABEL_5:
    sub_1AACC9C00(v49);

    return;
  }

  while (1)
  {
    v18 = v47;
    memcpy(__dst, v48, 0x301uLL);
    v19 = *a5;
    v20 = sub_1AACC9B78(v47);
    v22 = *(v19 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (*(v19 + 24) < v25)
    {
      sub_1AAD1A34C(v25, a4 & 1);
      v20 = sub_1AACC9B78(v18);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_21;
      }

LABEL_14:
      if (v26)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (a4)
    {
      goto LABEL_14;
    }

    v31 = v20;
    sub_1AAD17CF4();
    v20 = v31;
    if (v26)
    {
LABEL_7:
      v12 = *a5;
      v13 = 776 * v20;
      sub_1AAD1125C(*(*a5 + 56) + 776 * v20, v34);
      v14 = v34[0] + __dst[0];
      v15 = v34[1];
      v16 = v37;
      v17 = v38;
      v32 = v36;
      v33 = v35;
      sub_1AAD050BC(&v39, &v45);
      *v40 = v14;
      *&v40[1] = v15;
      v41 = v33;
      v42 = v32;
      v43 = v16;
      v44 = v17;

      sub_1AAD11338(v34);
      sub_1AAD11338(__dst);
      sub_1AAD1B7F4(v40, *(v12 + 56) + v13);
      goto LABEL_8;
    }

LABEL_15:
    v28 = *a5;
    *(*a5 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    *(v28[6] + 8 * v20) = v18;
    memcpy((v28[7] + 776 * v20), __dst, 0x301uLL);
    v29 = v28[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v28[2] = v30;
LABEL_8:
    sub_1AAD19A1C(&v47);
    a4 = 1;
    if (v48[168] == 254)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_1AAF905B4();
  __break(1u);
}

void sub_1AAD19A1C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v13 = (v7 - 1) & v7;
    v14 = __clz(__rbit64(v7)) | (v8 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    sub_1AAD1125C(*(v3 + 56) + 776 * v14, v66);
    v64 = *&v67[112];
    v65 = *&v67[96];
    v62 = *&v67[144];
    v63 = *&v67[128];
    v60 = *&v67[176];
    v61 = *&v67[160];
    v58 = *&v67[208];
    v59 = *&v67[192];
    v56 = *&v67[240];
    v57 = *&v67[224];
    v54 = *&v67[272];
    v55 = *&v67[256];
    v52 = *&v67[304];
    v53 = *&v67[288];
    v16 = *&v67[336];
    v51 = *&v67[320];
    v17 = *&v67[352];
    v18 = *&v67[368];
    v19 = *&v67[384];
    v20 = *&v67[400];
    v21 = *&v67[416];
    v22 = *&v67[432];
    v23 = *&v67[448];
    v24 = *&v67[464];
    v25 = *&v67[480];
    v26 = *&v67[496];
    v27 = *&v67[512];
    v28 = *&v67[528];
    v29 = *&v67[544];
    v30 = *&v67[560];
    v31 = *&v67[576];
    v32 = *&v66[160];
    v33 = *&v67[592];
    v34 = v68;
    v11 = v8;
    v35 = *v66;
    v36 = *&v66[16];
    v37 = *&v66[32];
    v38 = *&v66[48];
    v39 = *&v66[64];
    v40 = *&v66[80];
    v41 = *&v66[96];
    v42 = *&v66[112];
    v43 = *&v66[128];
    v44 = *&v66[144];
    v12 = *v67;
    v45 = *&v67[16];
    v46 = *&v67[32];
    v47 = *&v67[48];
    v48 = *&v67[64];
    v49 = *&v67[80];
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v13;
    if (v12 == 254)
    {
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 176) = 254;
      bzero((a1 + 184), 0x251uLL);
    }

    else
    {
      *&v66[8] = v35;
      *&v66[24] = v36;
      *&v66[40] = v37;
      *&v66[56] = v38;
      *&v66[72] = v39;
      *&v66[88] = v40;
      *&v66[104] = v41;
      *&v66[120] = v42;
      *&v66[136] = v43;
      *&v66[152] = v44;
      *&v67[8] = v12;
      *&v67[24] = v45;
      *&v67[40] = v46;
      *&v67[56] = v47;
      *&v67[72] = v48;
      *&v67[88] = v49;
      v50 = v1[5];
      *v66 = v15;
      *v67 = v32;
      *&v67[104] = v65;
      *&v67[120] = v64;
      *&v67[136] = v63;
      *&v67[152] = v62;
      *&v67[168] = v61;
      *&v67[184] = v60;
      *&v67[200] = v59;
      *&v67[216] = v58;
      *&v67[232] = v57;
      *&v67[248] = v56;
      *&v67[264] = v55;
      *&v67[280] = v54;
      *&v67[296] = v53;
      *&v67[312] = v52;
      *&v67[328] = v51;
      *&v67[344] = v16;
      *&v67[360] = v17;
      *&v67[376] = v18;
      *&v67[392] = v19;
      *&v67[408] = v20;
      *&v67[424] = v21;
      *&v67[440] = v22;
      *&v67[456] = v23;
      *&v67[472] = v24;
      *&v67[488] = v25;
      *&v67[504] = v26;
      *&v67[520] = v27;
      *&v67[536] = v28;
      *&v67[552] = v29;
      *&v67[568] = v30;
      *&v67[584] = v31;
      v68 = v33;
      v69 = v34;
      v50(v66);
      sub_1AAF502C0(v66, sub_1AAD1A1A0);
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    v12 = xmmword_1AAFC5830;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v33 = 0;
        v32 = 0;
        v15 = 0;
        v34 = 0;
        v13 = 0;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v40 = 0uLL;
        v41 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
        v44 = 0uLL;
        v45 = 0uLL;
        v46 = 0uLL;
        v47 = 0uLL;
        v48 = 0uLL;
        v49 = 0uLL;
        v16 = 0uLL;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AAD19DA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1AAD1125C((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t sub_1AAD19DD4(uint64_t a1)
{
  result = sub_1AAF8E244();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SgShapeStyle(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1AAD19E8C(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1 >> 60;
  if ((a1 >> 60) <= 0xE)
  {
    if (((1 << v14) & 0x7FB8) != 0)
    {
      return;
    }

    if (v14 == 2)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v35);
      v15 = *(v36 + 16);
      if (v15)
      {
        v16 = (v36 + 32);
        do
        {
          v17 = *v16++;

          sub_1AAD19E8C(v17, a2, a3, a4);

          --v15;
        }

        while (v15);
      }

      sub_1AAF14C40(v35);
      return;
    }

    if (v14 == 6)
    {
      v18 = swift_projectBox();
      sub_1AACE3CA8(v18, v13, type metadata accessor for SgRule);
      sub_1AAD1A5D4(v13, a2, a3, a4);
      v19 = v13;
      v20 = type metadata accessor for SgRule;
LABEL_15:
      sub_1AACE40B8(v19, v20);
      return;
    }
  }

  if (!v14)
  {
    v21 = swift_projectBox();
    sub_1AACE3CA8(v21, v10, type metadata accessor for SgGroup);
    v22 = *(v10 + 1);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 32);
      do
      {
        v25 = *v24++;

        sub_1AAD19E8C(v25, a2, a3, a4);

        --v23;
      }

      while (v23);
    }

    v20 = type metadata accessor for SgGroup;
    v19 = v10;
    goto LABEL_15;
  }

  v26 = a1 & 0xFFFFFFFFFFFFFFFLL;
  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v27 = *(v26 + 32);
  v29 = *(v28 + 16);
  if (v29)
  {

    v30 = 32;
    do
    {
      v31 = *(v28 + v30);

      sub_1AAD19E8C(v31, a2, a3, a4);

      v30 += 8;
      --v29;
    }

    while (v29);

    v32 = *(v27 + 16);
    if (!v32)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v32 = *(v27 + 16);
  if (v32)
  {
LABEL_22:
    v33 = 32;
    do
    {
      v34 = *(v27 + v33);

      sub_1AAD19E8C(v34, a2, a3, a4);

      v33 += 8;
      --v32;
    }

    while (v32);
  }

LABEL_24:
}

void sub_1AAD1A1A0()
{
  if (!qword_1ED9B0608)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B0608);
    }
  }
}

void sub_1AAD1A204(uint64_t a1)
{
  sub_1AAD1A7B4();
  if (v1 <= 0x3F)
  {
    sub_1AAD1A2F8(319, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    if (v2 <= 0x3F)
    {
      sub_1AAD1A2F8(319, &qword_1ED9B2B00, sub_1AACAE258);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AAD1A2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD1A34C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B074();
  v6 = sub_1AAF90394();
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
      v21 = (*(v5 + 56) + 776 * v19);
      if (v4)
      {
        memcpy(__src, v21, 0x301uLL);
      }

      else
      {
        sub_1AAD1125C(v21, __src);
      }

      v22 = sub_1AAF90684();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      memcpy((*(v7 + 56) + 776 * v15), __src, 0x301uLL);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

uint64_t sub_1AAD1A5D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v10 >= v8)
  {
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = *(a1 + 24);
  }

  if (v11 >= v9)
  {
    v13 = *(a1 + 16);
  }

  else
  {
    v13 = *(a1 + 32);
  }

  v14 = vabdd_f64(v10, v8);
  v15 = vabdd_f64(v11, v9);
  v31.origin.x = v12;
  v31.origin.y = v13;
  v31.size.width = v14;
  v31.size.height = v15;
  result = CGRectEqualToRect(v31, *MEMORY[0x1E695F050]);
  if ((result & 1) == 0)
  {
    v17 = *a2;

    v32.origin.x = v12;
    v32.origin.y = v13;
    v32.size.width = v14;
    v32.size.height = v15;
    v33 = CGRectInset(v32, -1.0, -1.0);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    v22 = v17 + 56;
    v23 = -*(v17 + 16);
    v24 = -1;
    while (v23 + v24 != -1)
    {
      if (++v24 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v25 = v22 + 32;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v26 = CGRectIntersectsRect(*(v22 - 24), v34);
      v22 = v25;
      if (v26)
      {

        return sub_1AACCB044(&v30, *a1);
      }
    }

    a3 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = a3;
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1AAD1DAB4(0, *(a3 + 16) + 1, 1, a3);
    a3 = result;
    *a4 = result;
LABEL_14:
    v28 = *(a3 + 16);
    v27 = *(a3 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_1AAD1DAB4((v27 > 1), v28 + 1, 1, a3);
      a3 = result;
      *a4 = result;
    }

    *(a3 + 16) = v28 + 1;
    v29 = (a3 + 32 * v28);
    v29[4] = v12;
    v29[5] = v13;
    v29[6] = v14;
    v29[7] = v15;
  }

  return result;
}

void sub_1AAD1A7B4()
{
  if (!qword_1ED9B2F20)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2F20);
    }
  }
}

unint64_t *sub_1AAD1A804(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1AAD1A964(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1AAF4F2C8(v8, v4, v2);
  result = MEMORY[0x1AC59A0D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1AAD1A964(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v19 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    sub_1AAD1125C(*(a3 + 56) + 776 * v13, v22);
    __src[0] = v14;
    sub_1AAD1125C(v22, &__src[1]);
    memcpy(__dst, __src, 0x309uLL);
    v15 = *&__dst[1];
    sub_1AAD11338(&__dst[1]);
    result = sub_1AAD11338(v22);
    if (v15 != 0.0)
    {
      *(v18 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        return sub_1AAD1B5D0(v18, a2, v19, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1AAD1B5D0(v18, a2, v19, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AAD1AAE4(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v77 = a2;
  v5 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v74 - v10;
  v12 = a1 >> 60;
  if ((a1 >> 60) <= 0xE)
  {
    if (((1 << v12) & 0x7BF8) != 0)
    {

      return a1;
    }

    if (v12 == 2)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v90);
      sub_1AAD117A0(v90, v78);
      v14 = *(&v78[0] + 1);
      v15 = *(*(&v78[0] + 1) + 16);
      if (v15)
      {
        v91 = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v15, 0);
        v16 = 32;
        v17 = v91;
        do
        {
          v18 = *(v14 + v16);

          v19 = sub_1AAD1AAE4(v18, v77, a3);

          v91 = v17;
          v21 = *(v17 + 16);
          v20 = *(v17 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1AAD0F6F0((v20 > 1), v21 + 1, 1);
            v17 = v91;
          }

          *(v17 + 16) = v21 + 1;
          *(v17 + 8 * v21 + 32) = v19;
          v16 += 8;
          --v15;
        }

        while (v15);
        sub_1AAF14C40(v90);
      }

      else
      {
        sub_1AAF14C40(v90);

        v17 = MEMORY[0x1E69E7CC0];
      }

      *(&v78[0] + 1) = v17;
      v69 = swift_allocObject();
      v70 = v78[1];
      *(v69 + 16) = v78[0];
      *(v69 + 32) = v70;
      v71 = v78[3];
      *(v69 + 48) = v78[2];
      *(v69 + 64) = v71;
      return v69 | 0x2000000000000000;
    }

    if (v12 == 10)
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v90[4] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v90[5] = v26;
      v90[2] = v24;
      v90[3] = v25;
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v90[9] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v90[10] = v30;
      v90[7] = v28;
      v90[8] = v29;
      v90[6] = v27;
      v90[0] = v22;
      v90[1] = v23;
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v87 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v88 = v31;
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v83 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v84 = v32;
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v85 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v86 = v33;
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v79 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v80 = v34;
      v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v81 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v82 = v35;
      sub_1AAD1B82C(v90, v78);
      sub_1AAD1B8B8(&v79, v77, a3);
      v36 = swift_allocObject();
      v37 = v88;
      *(v36 + 144) = v87;
      *(v36 + 160) = v37;
      *(v36 + 176) = v89;
      v38 = v84;
      *(v36 + 80) = v83;
      *(v36 + 96) = v38;
      v39 = v86;
      *(v36 + 112) = v85;
      *(v36 + 128) = v39;
      v40 = v80;
      *(v36 + 16) = v79;
      *(v36 + 32) = v40;
      v41 = v82;
      a1 = v36 | 0xA000000000000000;
      *(v36 + 48) = v81;
      *(v36 + 64) = v41;
      return a1;
    }
  }

  if (v12)
  {
    v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v55 = *(v52 + 16);
    v75 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v76 = v53;
    if (v55)
    {
      *&v90[0] = MEMORY[0x1E69E7CC0];

      sub_1AAD0F6F0(0, v55, 0);
      v56 = 32;
      v57 = *&v90[0];
      do
      {
        v58 = *(v52 + v56);

        v59 = sub_1AAD1AAE4(v58, v77, a3);

        *&v90[0] = v57;
        v61 = *(v57 + 16);
        v60 = *(v57 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1AAD0F6F0((v60 > 1), v61 + 1, 1);
          v57 = *&v90[0];
        }

        *(v57 + 16) = v61 + 1;
        *(v57 + 8 * v61 + 32) = v59;
        v56 += 8;
        --v55;
      }

      while (v55);

      v53 = v76;
      v62 = *(v76 + 16);
      if (v62)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v57 = MEMORY[0x1E69E7CC0];
      v62 = *(v53 + 16);
      if (v62)
      {
LABEL_27:
        *&v90[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v62, 0);
        v63 = 32;
        v64 = *&v90[0];
        do
        {
          v65 = *(v53 + v63);

          v66 = sub_1AAD1AAE4(v65, v77, a3);

          *&v90[0] = v64;
          v68 = *(v64 + 16);
          v67 = *(v64 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1AAD0F6F0((v67 > 1), v68 + 1, 1);
            v64 = *&v90[0];
          }

          *(v64 + 16) = v68 + 1;
          *(v64 + 8 * v68 + 32) = v66;
          v63 += 8;
          --v62;
          v53 = v76;
        }

        while (v62);

        goto LABEL_38;
      }
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v73 = swift_allocObject();
    *(v73 + 16) = v75;
    *(v73 + 24) = v57;
    *(v73 + 32) = v64;
    *(v73 + 40) = v54;
    return v73 | 0x1000000000000000;
  }

  v76 = v9;
  v42 = swift_projectBox();
  sub_1AACE3CA8(v42, v11, type metadata accessor for SgGroup);
  sub_1AACE3CA8(v11, v7, type metadata accessor for SgGroup);
  v43 = *(v7 + 1);
  v44 = *(v43 + 16);
  if (v44)
  {
    v74 = v11;
    v75 = v7;
    *&v90[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v44, 0);
    v45 = 32;
    v46 = *&v90[0];
    do
    {
      v47 = *(v43 + v45);

      v48 = a3;
      v49 = sub_1AAD1AAE4(v47, v77, a3);

      *&v90[0] = v46;
      v51 = *(v46 + 16);
      v50 = *(v46 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1AAD0F6F0((v50 > 1), v51 + 1, 1);
        v46 = *&v90[0];
      }

      *(v46 + 16) = v51 + 1;
      *(v46 + 8 * v51 + 32) = v49;
      v45 += 8;
      --v44;
      a3 = v48;
    }

    while (v44);
    sub_1AACE40B8(v74, type metadata accessor for SgGroup);

    v7 = v75;
  }

  else
  {
    sub_1AACE40B8(v11, type metadata accessor for SgGroup);

    v46 = MEMORY[0x1E69E7CC0];
  }

  *(v7 + 1) = v46;
  a1 = swift_allocBox();
  sub_1AACE3DD4(v7, v72);
  return a1;
}

uint64_t sub_1AAD1B130(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v8 = *a2;

  sub_1AAD178A8(-1.0);
  v4 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v3;
  sub_1AAD19788(v4, sub_1AAD19DA4, 0, isUniquelyReferenced_nonNull_native, &v8);

  v6 = sub_1AAD1A804(v8);

  *a1 = v6;
  return result;
}

unint64_t sub_1AAD1B218(uint64_t a1)
{
  v2 = type metadata accessor for SgGroup(0);
  v3 = swift_allocBox();
  v5 = v4;
  v6 = v2[6];
  v7 = type metadata accessor for SgClipRect(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *v5 = 0;
  *(v5 + 1) = a1;
  *&v5[v2[7]] = 0x3FF0000000000000;
  *&v5[v2[8]] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *&v5[v2[9]] = MEMORY[0x1E69E7CC0];
  v5[v2[10]] = 0;
  v50 = v8;

  sub_1AAD1D39C(v3, &v50);
  v9 = v50;
  v44 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v10 = *(v9 + 2);
    v49[0] = (v9 + 32);
    v49[1] = v10;
    sub_1AAD1D900(v49);
    v49[0] = MEMORY[0x1E69E7CD0];
    v48 = v8;
    v11 = *(v9 + 2);
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (v12 < *(v9 + 2))
    {
      v14 = &v9[96 * v12 + 32];
      v8 = *(v14 + 16);
      v15 = *(v14 + 40);
      v16 = *(v14 + 24);
      v17 = *(v14 + 72);
      v18 = *(v14 + 80);
      v19 = *(v14 + 88);
      v20 = *(v14 + 56);
      v21 = *(v14 + 64);
      v22 = *(v14 + 32);
      v45 = v15;
      v23 = *(v14 + 48);
      v46 = v16;
      v24 = v22;
      v25 = v23;
      if (CGRectGetMinX(*(&v15 - 1)) < v21 || (*&v51.size.width = v45, *&v51.origin.x = v46, v51.origin.y = v22, v51.size.height = v23, v18 < CGRectGetMaxX(v51)) || (*&v52.size.width = v45, *&v52.origin.x = v46, v52.origin.y = v22, v52.size.height = v23, CGRectGetMinY(v52) < v17) || (*&v53.size.width = v45, *&v53.origin.x = v46, v53.origin.y = v22, v53.size.height = v23, v19 < CGRectGetMaxY(v53)))
      {
LABEL_13:
        sub_1AACCB044(&v47, v8);
      }

      else
      {
        *&v54.size.width = v45;
        *&v54.origin.x = v46;
        v54.origin.y = v22;
        v54.size.height = v23;
        v55 = CGRectInset(v54, -v20, -v20);
        x = v55.origin.x;
        y = v55.origin.y;
        width = v55.size.width;
        height = v55.size.height;
        v30 = v13 + 56;
        v31 = -*(v13 + 2);
        v32 = -1;
        while (v31 + v32 != -1)
        {
          if (++v32 >= *(v13 + 2))
          {
            goto LABEL_26;
          }

          v33 = v30 + 32;
          v56.origin.x = x;
          v56.origin.y = y;
          v56.size.width = width;
          v56.size.height = height;
          v34 = CGRectIntersectsRect(*(v30 - 24), v56);
          v30 = v33;
          if (v34)
          {
            goto LABEL_13;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AAD1DAB4(0, *(v13 + 2) + 1, 1, v13);
        }

        v8 = *(v13 + 2);
        v35 = *(v13 + 3);
        v37 = v45;
        v36 = v46;
        if (v8 >= v35 >> 1)
        {
          v39 = sub_1AAD1DAB4((v35 > 1), v8 + 1, 1, v13);
          v37 = v45;
          v36 = v46;
          v13 = v39;
        }

        *(v13 + 2) = v8 + 1;
        v38 = &v13[32 * v8];
        *(v38 + 2) = v36;
        *(v38 + 3) = v37;
        v48 = v13;
      }

      if (++v12 == v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v9 = sub_1AAD1D8EC(v9);
  }

LABEL_21:
  v47 = MEMORY[0x1E69E7CC0];
  sub_1AAD19E8C(v44, &v48, v49, &v47);
  v40 = sub_1AAD1AAE4(v44, v49, &v47);
  v41 = v40;
  if (*(v49[0] + 16))
  {
    v42 = sub_1AAF69FE4(v40, v49);

    v41 = v42;
  }

  else
  {
  }

  return v41;
}