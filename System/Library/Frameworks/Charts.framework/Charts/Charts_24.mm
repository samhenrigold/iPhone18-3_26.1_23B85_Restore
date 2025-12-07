uint64_t sub_1AAE775D8(_OWORD *a1, uint64_t a2)
{
  v2 = a1[7];
  v14[6] = a1[6];
  v14[7] = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v4 = a1[3];
  v14[2] = a1[2];
  v14[3] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[14];
  v8 = a1[16];
  v9 = a1[17];
  v15[6] = a1[15];
  v15[7] = v8;
  v15[8] = v9;
  v10 = a1[10];
  v11 = a1[12];
  v12 = a1[13];
  v15[2] = a1[11];
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v7;
  v15[0] = v3;
  v15[1] = v10;
  *(*a2 + 1266) = 1;
  return sub_1AACD2B20(v14, v15);
}

void *SectorMark.init<A>(angle:innerRadius:outerRadius:roundInnerVertex:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, double a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v23 = a3;
  v27 = a9;
  v15 = type metadata accessor for PlottableValue(0, a10, a11, a4);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22[-v18];
  (*(v16 + 16))(&v22[-v18], a1, v15, v17);
  v20 = a7;
  if (a8)
  {
    v20 = 0.0;
  }

  sub_1AAE75070(v19, a2, v23, v24, v25, v26, a10, a11, v28, v20);
  (*(v16 + 8))(a1, v15);
  return memcpy(v27, v28, 0x149uLL);
}

uint64_t sub_1AAE777C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgSector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE77834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 329))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE77888(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 328) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 329) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 329) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SectorPlot<A>.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t SectorPlot.init<A, B>(_:angle:innerRadius:outerRadius:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v62 = a8;
  v67 = a6;
  v66 = a5;
  v68 = a9;
  v69 = a2;
  v59 = a1;
  v63 = a11;
  v56 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a11);
  v17 = *(v58 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - v19;
  v60 = *(a7 - 8);
  v20 = v60;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v23;
  v25 = type metadata accessor for VectorizedSectorPlotContent(0, a7, a10, v24);
  v64 = *(v25 - 8);
  v65 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v61 = &v54 - v26;
  v27 = a3[5];
  v74 = a3[4];
  v75 = v27;
  v76 = a3[6];
  v77 = *(a3 + 112);
  v28 = a3[1];
  v70 = *a3;
  v71 = v28;
  v29 = a3[3];
  v72 = a3[2];
  v73 = v29;
  v30 = *a4;
  v31 = a4[1];
  v32 = a4[3];
  v80 = a4[2];
  v81 = v32;
  v78 = v30;
  v79 = v31;
  v33 = a4[4];
  v34 = a4[5];
  v35 = a4[6];
  v85 = *(a4 + 112);
  v83 = v34;
  v84 = v35;
  v82 = v33;
  (*(v20 + 16))(v23, a1, a7);
  v36 = v55;
  v37 = v58;
  (*(v17 + 16))(v55, v69, v58);
  v38 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v54 = (v38 + v18 + 127) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v41 = v62;
  v40 = v63;
  *(v39 + 2) = a7;
  *(v39 + 3) = v41;
  v42 = v56;
  *(v39 + 4) = v56;
  *(v39 + 5) = v40;
  (*(v17 + 32))(&v39[v38], v36, v37);
  v43 = &v39[(v38 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v44 = v73;
  *(v43 + 2) = v72;
  *(v43 + 3) = v44;
  v45 = v71;
  *v43 = v70;
  *(v43 + 1) = v45;
  v43[112] = v77;
  v46 = v76;
  *(v43 + 5) = v75;
  *(v43 + 6) = v46;
  *(v43 + 4) = v74;
  v47 = &v39[v54];
  v48 = v83;
  *(v47 + 4) = v82;
  *(v47 + 5) = v48;
  *(v47 + 6) = v84;
  v47[112] = v85;
  v49 = v79;
  *v47 = v78;
  *(v47 + 1) = v49;
  v50 = v81;
  *(v47 + 2) = v80;
  *(v47 + 3) = v50;
  v51 = &v39[(v38 + v18 + 247) & 0xFFFFFFFFFFFFFFF8];
  *v51 = v66;
  v51[8] = v67 & 1;
  v52 = v61;
  sub_1AAE7834C(v57, sub_1AAE7822C, v39, a7, &type metadata for SectorMark, v42, &protocol witness table for SectorMark, v61);
  (*(v17 + 8))(v69, v37);
  (*(v60 + 8))(v59, a7);
  return (*(v64 + 32))(v68, v52, v65);
}

void *sub_1AAE77E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, int a6@<W5>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v62 = a6;
  v63 = a5;
  v64 = a9;
  v61 = a4;
  v59 = a2;
  v65 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a11);
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v53 - v15;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v58 = a8;
  v60 = a11;
  v21 = type metadata accessor for PlottableValue(0, a8, a11, v20);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v53 - v23;
  v57 = &v53 - v23;
  v53 = *(v16 + 16);
  v25 = v19;
  v26 = v19;
  v27 = v65;
  v53(v25, v65, AssociatedTypeWitness, v22);
  v28 = v54;
  (*(v55 + 16))(v54, v59, v56);
  v29 = v28;
  v30 = AssociatedTypeWitness;
  sub_1AAF30D00(v26, v29, a8, AssociatedTypeWitness, a11, v24);
  v31 = v26;
  v32 = v53;
  (v53)(v26, v27, v30);
  v33 = *(a3 + 64);
  v34 = *(a3 + 96);
  v67[5] = *(a3 + 80);
  v67[6] = v34;
  v35 = *(a3 + 16);
  v67[0] = *a3;
  v36 = *(a3 + 32);
  v37 = *(a3 + 48);
  v67[1] = v35;
  v67[2] = v36;
  LOBYTE(v67[7]) = *(a3 + 112);
  v67[3] = v37;
  v67[4] = v33;
  v40 = type metadata accessor for MarkDimensions(0, v30, v38, v39);
  v41 = *(*(v40 - 8) + 16);
  (v41)(v66, a3, v40);
  v59 = sub_1AAF312D4(v31, v67, v30, v42);
  LODWORD(a3) = v43;
  v32(v31, v65, v30);
  v44 = *(v61 + 64);
  v45 = *(v61 + 96);
  v67[5] = *(v61 + 80);
  v67[6] = v45;
  v46 = *(v61 + 16);
  v67[0] = *v61;
  v47 = *(v61 + 32);
  v48 = *(v61 + 48);
  v67[1] = v46;
  v67[2] = v47;
  LOBYTE(v67[7]) = *(v61 + 112);
  v67[3] = v48;
  v67[4] = v44;
  v41(v66);
  v50 = sub_1AAF312D4(v31, v67, v30, v49);
  SectorMark.init<A>(angle:innerRadius:outerRadius:angularInset:)(v57, v59, a3, v50, v51, v63, v62 & 1, v58, v67, v60);
  return memcpy(v64, v67, 0x149uLL);
}

void *sub_1AAE7822C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  return sub_1AAE77E94(a1, v2 + v10, v2 + ((v10 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8), v2 + ((v10 + *(v9 + 64) + 127) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v10 + *(v9 + 64) + 247) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + *(v9 + 64) + 247) & 0xFFFFFFFFFFFFFFF8) + 8), v5, a2, v7, v6);
}

uint64_t sub_1AAE7834C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  v21 = sub_1AAF311A4(v19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4, v21);
}

uint64_t SectorPlot.init<A, B>(_:angle:innerRadius:outerRadius:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v54 = a8;
  v58 = a7;
  v64 = a1;
  v65 = a2;
  v62 = a5;
  v63 = a9;
  v59 = a10;
  v55 = type metadata accessor for PlottableProjection(0, *(*a5 + *MEMORY[0x1E69E77B0]), a7, a10);
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v17 = &v52 - v16;
  v56 = *(a6 - 8);
  v18 = v56;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v21;
  v23 = type metadata accessor for VectorizedSectorPlotContent(0, a6, a8, v22);
  v60 = *(v23 - 8);
  v61 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v57 = &v52 - v24;
  v25 = a3[5];
  v70 = a3[4];
  v71 = v25;
  v72 = a3[6];
  v73 = *(a3 + 112);
  v26 = a3[1];
  v66 = *a3;
  v67 = v26;
  v27 = a3[3];
  v68 = a3[2];
  v69 = v27;
  v28 = *a4;
  v29 = a4[1];
  v30 = a4[3];
  v76 = a4[2];
  v77 = v30;
  v74 = v28;
  v75 = v29;
  v31 = a4[4];
  v32 = a4[5];
  v33 = a4[6];
  v81 = *(a4 + 112);
  v79 = v32;
  v80 = v33;
  v78 = v31;
  v34 = *(v18 + 16);
  v52 = a6;
  v34(v21, v64, a6);
  v35 = v55;
  (*(v14 + 16))(v17, v65, v55);
  v36 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v37 = swift_allocObject();
  v39 = v58;
  v38 = v59;
  *(v37 + 2) = a6;
  *(v37 + 3) = v39;
  v40 = v54;
  *(v37 + 4) = v54;
  *(v37 + 5) = v38;
  (*(v14 + 32))(&v37[v36], v17, v35);
  v41 = &v37[(v36 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  v42 = v69;
  *(v41 + 2) = v68;
  *(v41 + 3) = v42;
  v43 = v67;
  *v41 = v66;
  *(v41 + 1) = v43;
  v41[112] = v73;
  v44 = v72;
  *(v41 + 5) = v71;
  *(v41 + 6) = v44;
  *(v41 + 4) = v70;
  v45 = &v37[(v36 + v15 + 127) & 0xFFFFFFFFFFFFFFF8];
  v46 = v79;
  *(v45 + 4) = v78;
  *(v45 + 5) = v46;
  *(v45 + 6) = v80;
  v45[112] = v81;
  v47 = v75;
  *v45 = v74;
  *(v45 + 1) = v47;
  v48 = v77;
  *(v45 + 2) = v76;
  *(v45 + 3) = v48;
  *&v37[(v36 + v15 + 247) & 0xFFFFFFFFFFFFFFF8] = v62;
  v49 = v57;
  v50 = v52;
  sub_1AAE7834C(v53, sub_1AAE78C20, v37, v52, &type metadata for SectorMark, v40, &protocol witness table for SectorMark, v57);
  (*(v14 + 8))(v65, v35);
  (*(v56 + 8))(v64, v50);
  return (*(v60 + 32))(v63, v49, v61);
}

void *sub_1AAE7887C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  v54 = a4;
  v55 = a5;
  v50 = a1;
  v51 = a2;
  v56 = a7;
  v10 = *(*a5 + *MEMORY[0x1E69E77B0]);
  v57 = a8;
  v11 = type metadata accessor for PlottableProjection(0, v10, a6, a8);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v45 - v12;
  v13 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v53 = a6;
  v18 = type metadata accessor for PlottableValue(0, a6, a8, v17);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v45 - v20;
  v52 = &v45 - v20;
  v22 = *(v13 + 16);
  v23 = v50;
  v22(v16, v50, v10, v19);
  v47 = v13 + 16;
  v24 = v46;
  (*(v48 + 16))(v46, v51, v49);
  sub_1AAF30D00(v16, v24, a6, v10, v57, v21);
  (v22)(v16, v23, v10);
  v25 = *(a3 + 64);
  v26 = *(a3 + 96);
  v59[5] = *(a3 + 80);
  v59[6] = v26;
  v27 = *(a3 + 16);
  v59[0] = *a3;
  v28 = *(a3 + 32);
  v29 = *(a3 + 48);
  v59[1] = v27;
  v59[2] = v28;
  LOBYTE(v59[7]) = *(a3 + 112);
  v59[3] = v29;
  v59[4] = v25;
  v32 = type metadata accessor for MarkDimensions(0, v10, v30, v31);
  v33 = *(*(v32 - 8) + 16);
  v33(v58, a3, v32);
  v51 = sub_1AAF312D4(v16, v59, v10, v34);
  LODWORD(v49) = v35;
  (v22)(v16, v23, v10);
  v36 = *(v54 + 64);
  v37 = *(v54 + 96);
  v59[5] = *(v54 + 80);
  v59[6] = v37;
  v38 = *(v54 + 16);
  v59[0] = *v54;
  v39 = *(v54 + 32);
  v40 = *(v54 + 48);
  v59[1] = v38;
  v59[2] = v39;
  LOBYTE(v59[7]) = *(v54 + 112);
  v59[3] = v40;
  v59[4] = v36;
  (v33)(v58);
  v42 = sub_1AAF312D4(v16, v59, v10, v41);
  LODWORD(v21) = v43;
  swift_getAtKeyPath();
  SectorMark.init<A>(angle:innerRadius:outerRadius:angularInset:)(v52, v51, v49, v42, v21, v58[0], 0, v53, v59, v57);
  return memcpy(v56, v59, 0x149uLL);
}

void *sub_1AAE78C20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  return sub_1AAE7887C(a1, v2 + v9, v2 + ((v9 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8), v2 + ((v9 + *(v8 + 64) + 127) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v9 + *(v8 + 64) + 247) & 0xFFFFFFFFFFFFFFF8)), v5, a2, v6);
}

uint64_t VectorizedSectorPlotContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Vectorizer(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAE78E78(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE78ECC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1AAE78F68(void *a1)
{
  sub_1AAE842D8(319, &qword_1ED9B4438, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1AAE796C4(319);
    if (v3 <= 0x3F)
    {
      v4 = a1[2];
      sub_1AAF90774();
      if (v5 <= 0x3F)
      {
        swift_getTupleTypeMetadata2();
        if (v6 <= 0x3F)
        {
          type metadata accessor for PlottableProjection(319, v4, a1[3], a1[4]);
          if (v7 <= 0x3F)
          {
            swift_getTupleTypeMetadata2();
            if (v10 <= 0x3F)
            {
              type metadata accessor for MarkDimensions(255, v4, v8, v9);
              swift_getTupleTypeMetadata2();
              if (v11 <= 0x3F)
              {
                swift_getTupleTypeMetadata2();
                if (v12 <= 0x3F)
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

uint64_t sub_1AAE790E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = *(sub_1AAF8CB94() - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_1AAF8CBA4() - 8);
  v10 = *(v9 + 80);
  v11 = v8 | v10 | v6;
  v12 = v11 | 7;
  v13 = (v11 + 32) & ~(v11 | 7);
  v14 = *(v5 + 64);
  if (((v14 + v6) & ~v6) + v14 > v14)
  {
    v14 += (v14 + v6) & ~v6;
  }

  v15 = ((*(v7 + 64) + v10 + ((v8 + 8) & ~v8)) & ~v10) + *(v9 + 64);
  if (v14 > v15)
  {
    v15 = v14;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v16 = v15 + v13;
  if (v16 + 1 > ((v16 + 1 + v12) & ~v12) + v16 + 1)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v16 + 1 + v12) & ~v12) + v16 + 1;
  }

  v18 = (v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v17 <= v18 + 113)
  {
    v17 = v18 + 113;
  }

  v19 = v18 + 49;
  if (v17 > v19)
  {
    v19 = v17;
  }

  v20 = 25;
  if (v19 > 0x19)
  {
    v20 = v19;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_38;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v25 = ((a2 + ~(-1 << v22) - 248) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v25 < 2)
    {
LABEL_38:
      v27 = *(a1 + v20);
      if (v27 >= 8)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_38;
  }

LABEL_27:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return (v21 | v26) + 249;
}

void sub_1AAE79388(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_1AAF8CB94() - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_1AAF8CBA4() - 8);
  v12 = *(v11 + 80);
  v13 = v10 | v12 | v8;
  v14 = v13 | 7;
  v15 = (v13 + 32) & ~(v13 | 7);
  v16 = *(v7 + 64);
  if (((v16 + v8) & ~v8) + v16 > v16)
  {
    v16 += (v16 + v8) & ~v8;
  }

  v17 = ((*(v9 + 64) + v12 + ((v10 + 8) & ~v10)) & ~v12) + *(v11 + 64);
  if (v16 > v17)
  {
    v17 = v16;
  }

  if (v17 <= 0x10)
  {
    v17 = 16;
  }

  v18 = v17 + v15;
  if (v18 + 1 > ((v18 + 1 + v14) & ~v14) + v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v18 + 1 + v14) & ~v14) + v18 + 1;
  }

  v20 = (v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v19 <= v20 + 113)
  {
    v19 = v20 + 113;
  }

  v21 = v20 + 49;
  if (v19 > v21)
  {
    v21 = v19;
  }

  if (v21 <= 0x19)
  {
    v21 = 25;
  }

  v22 = v21 + 1;
  if (a3 < 0xF9)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 + ~(-1 << (8 * v22)) - 248) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (a2 > 0xF8)
  {
    v24 = a2 - 249;
    if (v22 >= 4)
    {
      bzero(a1, v21 + 1);
      *a1 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v25 = (v24 >> (8 * v22)) + 1;
    if (v21 != -1)
    {
      v28 = v24 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v28;
          if (v23 > 1)
          {
LABEL_52:
            if (v23 == 2)
            {
              *&a1[v22] = v25;
            }

            else
            {
              *&a1[v22] = v25;
            }

            return;
          }
        }

        else
        {
          *a1 = v24;
          if (v23 > 1)
          {
            goto LABEL_52;
          }
        }

LABEL_49:
        if (v23)
        {
          a1[v22] = v25;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v23 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      a1[v21] = -a2;
      return;
    }

LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (v23 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_37;
  }

  *&a1[v22] = 0;
  if (a2)
  {
    goto LABEL_38;
  }
}

void sub_1AAE796C4(uint64_t a1)
{
  if (!qword_1EB4261C8)
  {
    sub_1AAE842D8(255, &qword_1ED9B4438, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB4261C8);
    }
  }
}

uint64_t sub_1AAE79744(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAE79798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

__n128 sub_1AAE79820(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1AAE7984C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE798A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1AAE79934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v3 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v2;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v3;
  return result;
}

uint64_t sub_1AAE7998C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE799EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8CA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *a1;
  v46 = *(a1 + 8);
  v47 = v18;
  v45 = *(a1 + 16);
  v48 = *(a1 + 24);
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  sub_1AAE7B790(a1 + *(v19 + 36), v17, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage, sub_1AACD6DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AACD6E60(0);
    v21 = *(v20 + 48);
    v22 = v5[4];
    v42 = v14;
    v22(v14, v17, v4);
    v41 = v11;
    v22(v11, &v17[v21], v4);
    v23 = v5[2];
    v24 = v43;
    v23(v43, v14, v4);
    v25 = v44;
    v23(v44, v11, v4);
    v27 = v46;
    v26 = v47;
    v28 = v45;
    sub_1AACD7304(v47, v46, v45);

    sub_1AAF8C854();
    v30 = v29;
    sub_1AAF8C854();
    v32 = v31;
    sub_1AAE838F8(a1);
    v33 = v5[1];
    v33(v25, v4);
    v34 = v24;
    v35 = v26;
    v33(v34, v4);
    v33(v41, v4);
    result = (v33)(v42, v4);
    v37 = -127;
  }

  else
  {
    (v5[4])(v14, v17, v4);
    (v5[2])(v11, v14, v4);
    v27 = v46;
    v35 = v47;
    v28 = v45;
    sub_1AACD7304(v47, v46, v45);

    sub_1AAF8C854();
    v30 = v38;
    sub_1AAE838F8(a1);
    v39 = v5[1];
    v39(v11, v4);
    result = (v39)(v14, v4);
    v37 = 1;
    v32 = 0;
  }

  *a2 = v35;
  *(a2 + 8) = v27;
  *(a2 + 16) = v28;
  *(a2 + 24) = v48;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v37;
  *(a2 + 56) = v4;
  *(a2 + 64) = &protocol witness table for Date;
  return result;
}

uint64_t sub_1AAE79E0C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1AAF8FE74();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1AAF8F754();
  v63 = sub_1AAF90224();
  v58 = sub_1AAF90234();
  sub_1AAF901D4();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1AAF8F744();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1AAF8FE94();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1AAF90214();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1AAF8FE94();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1AAF90214();
      sub_1AAF8FE94();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1AAE7A500()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  if (v3 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v5, v1, v2, v3 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v5, v1, v2, v3);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAE7A58C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (v5 < 0)
  {
    MEMORY[0x1AC5992C0](1);

    return sub_1AACDC020(a1, v3, v4, v5 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);

    return sub_1AAE86E08(a1, v3, v4, v5);
  }
}

uint64_t sub_1AAE7A634(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1AAF90694();
  if (v4 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v6, v2, v3, v4 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v6, v2, v3, v4);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAE7A6D8@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v114 = a2;
  v116 = a1;
  v111 = a6;
  sub_1AACD57C4(0);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v86 - v12;
  sub_1AACD6C54(0);
  v95 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v86 - v16;
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v88 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v94 = (&v86 - v18);
  v19 = sub_1AAF8CA64();
  v109 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v86 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v97 = &v86 - v23;
  sub_1AACD6D40(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v86 - v25;
  v108 = sub_1AAF8C6F4();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v100 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1AAF8CBA4();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1AAF8CB94();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PlottableValue(0, a4, a5, v33);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = (&v86 - v35);
  v37 = type metadata accessor for PlottableProjection.Storage(0, a3, a4, a5);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v86 - v39;
  v115 = a3;
  v113 = a5;
  v41 = type metadata accessor for PlottableProjection(0, a3, a4, a5);
  (*(v38 + 16))(v40, v116 + *(v41 + 44), v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v110 = v41;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v52 = v112;
      (*(v112 + 4))(v32, v40, a4);
      v43 = v116;
      v53 = v113;
      static PlottableValue.value(_:_:)(*v116, v116[1], *(v116 + 16), v116[3], a4, v113, v36);
      sub_1AACD6F84(v36, a4, v53, &v118);
      (*(*(v115 - 8) + 8))(v114);
      (*(v52 + 1))(v32, a4);
      goto LABEL_10;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v43 = v116;
      v44 = *v116;
      v45 = v116[1];
      v46 = *(v116 + 16);
      v47 = v116[3];
      v48 = v114;
      swift_getAtKeyPath();
      v49 = v45;
      v50 = v113;
      v51 = static PlottableValue.value(_:_:)(v44, v49, v46, v47, a4, v113, v36);
      (*(v112 + 1))(v32, a4, v51);
      sub_1AACD6F84(v36, a4, v50, &v118);

      (*(*(v115 - 8) + 8))(v48);
LABEL_10:
      result = (*(*(v110 - 8) + 8))(v43);
      v80 = v122;
      v81 = v120;
      v117 = v119 & 1;
      v82 = v119 & 1;
      v83 = v111;
      *v111 = v118;
      *(v83 + 16) = v82;
      *(v83 + 3) = v81;
      v83[2] = v121;
      *(v83 + 48) = v80;
      *(v83 + 56) = v123;
      return result;
    }

    v87 = v26;
    if (EnumCaseMultiPayload != 4)
    {
      v85 = *(v38 + 8);
      a4 = v37;
      goto LABEL_15;
    }

    v54 = *v40;
    sub_1AAF90774();
    v55 = v104;
    v56 = v106;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v58 = *(TupleTypeMetadata3 + 64);
    (*(v102 + 32))(v101, &v40[*(TupleTypeMetadata3 + 48)], v55);
    (*(v105 + 32))(v103, &v40[v58], v56);
    v86 = v54;
    swift_getAtKeyPath();
    (*(v113 + 24))(a4);
    (*(v112 + 1))(v32, a4);
    v40 = v99;
    swift_dynamicCast();
    v59 = v87;
    sub_1AAF8CAD4();
    AssociatedTypeWitness = *(v109 + 8);
    AssociatedTypeWitness(v40, v19);
    v60 = v107;
    a4 = v108;
    if ((*(v107 + 48))(v59, 1, v108) != 1)
    {
      (*(v60 + 32))(v100, v59, a4);
      v61 = v116[1];
      v97 = *v116;
      v87 = v61;
      LODWORD(v113) = *(v116 + 16);
      v62 = v116[3];
      sub_1AAF8C6E4();
      v63 = v40;
      v40 = v96;
      sub_1AAF8C6D4();
      sub_1AACECB5C(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (sub_1AAF8F584())
      {
        v112 = v62;
        v64 = *(v109 + 32);
        v65 = v90;
        v64(v90, v63, v19);
        v66 = v92;
        v64((v65 + *(v92 + 48)), v40, v19);
        v67 = v91;
        sub_1AAE8432C(v65, v91, sub_1AACD57C4);
        v68 = *(v66 + 48);
        v69 = v89;
        v64(v89, v67, v19);
        v70 = AssociatedTypeWitness;
        AssociatedTypeWitness((v67 + v68), v19);
        sub_1AACD58FC(v65, v67, sub_1AACD57C4);
        v71 = v95;
        v64((v69 + *(v95 + 36)), (v67 + *(v66 + 48)), v19);
        v70(v67, v19);
        v72 = v93;
        sub_1AACD58FC(v69, v93, sub_1AACD6C54);
        v73 = v94;
        v74 = v97;
        v75 = v87;
        *v94 = v97;
        *(v73 + 8) = v75;
        *(v73 + 16) = v113;
        *(v73 + 24) = v112;
        v76 = v73 + *(v88 + 36);
        sub_1AACD6E60(0);
        v78 = *(v77 + 48);
        v64(v76, v72, v19);
        v64((v76 + v78), (v72 + *(v71 + 36)), v19);
        sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
        swift_storeEnumTagMultiPayload();
        sub_1AACD7304(v74, v75, v113);

        sub_1AAE799EC(v73, &v118);

        (*(*(v115 - 8) + 8))(v114);
        (*(v107 + 8))(v100, v108);
        (*(v105 + 8))(v103, v106);
        (*(v102 + 8))(v101, v104);
        v43 = v116;
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = *(v112 + 1);
  v85(&v40[*(TupleTypeMetadata2 + 48)], a4);
LABEL_15:
  v85(v40, a4);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE7B510()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1AAF90694();
  if (v3 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v5, v1, v2, v3 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v5, v1, v2, v3);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAE7B59C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v5 < 0)
  {
    MEMORY[0x1AC5992C0](1);

    return sub_1AACDC020(a1, v3, v4, v5 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);

    return sub_1AAE86E08(a1, v3, v4, v5);
  }
}

uint64_t sub_1AAE7B644(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1AAF90694();
  if (v4 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v6, v2, v3, v4 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v6, v2, v3, v4);
  }

  return sub_1AAF906F4();
}

unint64_t sub_1AAE7B73C()
{
  result = qword_1EB4261D0;
  if (!qword_1EB4261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4261D0);
  }

  return result;
}

uint64_t sub_1AAE7B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE7B800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v142 = a2;
  v143 = a1;
  v138 = a6;
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v124 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v117 = (&v114 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v116 = (&v114 - v14);
  v135 = sub_1AAF8CA64();
  v123 = *(v135 - 1);
  MEMORY[0x1EEE9AC00](v135);
  v122 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v119 = &v114 - v16;
  sub_1AACD6D40(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v121 = &v114 - v18;
  v19 = sub_1AAF8C6F4();
  v131 = *(v19 - 8);
  v132 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AAF8CBA4();
  v129 = *(v21 - 8);
  v130 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1AAF8CB94();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PlottableValue(0, a4, a5, v24);
  v136 = *(v25 - 8);
  v137 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v114 - v28;
  v141 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v114 - v34;
  v36 = type metadata accessor for PlottableProjection.Storage(0, a3, a4, a5);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v114 - v38);
  v139 = a5;
  v140 = a3;
  v40 = type metadata accessor for PlottableProjection(0, a3, a4, a5);
  (*(v37 + 16))(v39, v143 + *(v40 + 44), v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v95 = *(swift_getTupleTypeMetadata2() + 48);
      v118 = v40;
      v96 = *(v141 + 32);
      v96(v35, v39, a4);
      v96(v32, (v39 + v95), a4);
      v97 = *v143;
      v98 = v143[1];
      LOBYTE(v95) = *(v143 + 16);
      v99 = v143[3];
      v100 = v29;
      v101 = *v143;
      v135 = v29;
      v102 = v139;
      static PlottableValue.value(_:_:)(v101, v98, v95, v99, a4, v139, v100);
      v103 = v133;
      static PlottableValue.value(_:_:)(v97, v98, v95, v99, a4, v102, v133);
      v104 = v135;
      v105 = sub_1AAE83D50(v135, v103, a4, v102, &v144);
      v106 = v137;
      v107 = *(v136 + 8);
      v107(v103, v137, v105);
      (v107)(v104, v106);
      (*(*(v140 - 8) + 8))(v142);
      v108 = *(v141 + 8);
      v108(v32, a4);
      v108(v35, a4);
      goto LABEL_12;
    }

    v56 = v141;
    (*(v141 + 32))(v35, v39, a4);
    v57 = v143;
    v58 = v139;
    static PlottableValue.value(_:_:)(*v143, v143[1], *(v143 + 16), v143[3], a4, v139, v29);
    v60 = sub_1AAE83B9C(v29, a4, v58, v59, &v144);
    (*(v136 + 8))(v29, v137, v60);
    (*(*(v140 - 8) + 8))(v142);
    (*(v56 + 8))(v35, a4);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v135 = *v39;
    v57 = v143;
    v61 = *v143;
    v62 = v143[1];
    v63 = *(v143 + 16);
    v64 = v143[3];
    swift_getAtKeyPath();
    v65 = v61;
    v66 = v139;
    v67 = static PlottableValue.value(_:_:)(v65, v62, v63, v64, a4, v139, v29);
    (*(v141 + 8))(v35, a4, v67);
    v69 = sub_1AAE83B9C(v29, a4, v66, v68, &v144);
    (*(v136 + 8))(v29, v137, v69);

    (*(*(v140 - 8) + 8))(v142);
LABEL_8:
    result = (*(*(v40 - 8) + 8))(v57, v40);
LABEL_13:
    v109 = v138;
    v110 = v151;
    v138[6] = v150;
    v109[7] = v110;
    v109[8] = v152;
    v111 = v147;
    v109[2] = v146;
    v109[3] = v111;
    v112 = v149;
    v109[4] = v148;
    v109[5] = v112;
    v113 = v145;
    *v109 = v144;
    v109[1] = v113;
    return result;
  }

  v118 = v40;
  if (EnumCaseMultiPayload == 3)
  {
    v134 = *v39;
    v43 = v143[1];
    v132 = *v143;
    v42 = v132;
    v44 = *(v143 + 16);
    LODWORD(v131) = v44;
    v45 = v143[3];
    swift_getAtKeyPath();
    v46 = v29;
    v135 = v29;
    v47 = v139;
    v48 = static PlottableValue.value(_:_:)(v42, v43, v44, v45, a4, v139, v46);
    v49 = *(v141 + 8);
    v49(v35, a4, v48);
    swift_getAtKeyPath();
    v50 = v133;
    v51 = static PlottableValue.value(_:_:)(v132, v43, v131, v45, a4, v47, v133);
    v49(v35, a4, v51);
    v52 = v135;
    v53 = sub_1AAE83D50(v135, v50, a4, v47, &v144);
    v54 = v137;
    v55 = *(v136 + 8);
    v55(v50, v137, v53);
    (v55)(v52, v54);

    (*(*(v140 - 8) + 8))(v142);
LABEL_12:
    result = (*(*(v118 - 8) + 8))(v143, v118);
    goto LABEL_13;
  }

  v71 = *v39;
  sub_1AAF90774();
  v72 = v128;
  v73 = v130;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v75 = *(TupleTypeMetadata3 + 64);
  (*(v126 + 32))(v125, v39 + *(TupleTypeMetadata3 + 48), v72);
  (*(v129 + 32))(v127, v39 + v75, v73);
  v137 = v71;
  swift_getAtKeyPath();
  (*(v139 + 24))(a4);
  (*(v141 + 8))(v35, a4);
  v76 = v122;
  v77 = v135;
  swift_dynamicCast();
  v78 = v121;
  sub_1AAF8CAD4();
  v79 = v123;
  (*(v123 + 8))(v76, v77);
  v80 = v131;
  result = (*(v131 + 48))(v78, 1, v132);
  if (result != 1)
  {
    (*(v80 + 32))();
    v81 = *v143;
    v82 = v143[1];
    v83 = *(v143 + 16);
    v139 = v143[3];
    v84 = v139;
    sub_1AAF8C6E4();
    v85 = v116;
    *v116 = v81;
    *(v85 + 8) = v82;
    *(v85 + 16) = v83;
    *(v85 + 24) = v84;
    v86 = *(v124 + 36);
    v141 = *(v79 + 32);
    (v141)(v85 + v86, v76, v135);
    sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
    swift_storeEnumTagMultiPayload();
    v87 = v81;
    v88 = v81;
    v89 = v82;
    v90 = v82;
    LOBYTE(v82) = v83;
    sub_1AACD7304(v88, v90, v83);
    v91 = v139;

    sub_1AAF8C6D4();
    v92 = v117;
    *v117 = v87;
    *(v92 + 8) = v89;
    *(v92 + 16) = v82;
    *(v92 + 24) = v91;
    (v141)(v92 + *(v124 + 36), v76, v135);
    swift_storeEnumTagMultiPayload();
    v93 = v115;
    sub_1AAE7B790(v85, v115, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AACD7304(v87, v89, v82);

    sub_1AAE799EC(v93, &v153);
    sub_1AAE7B790(v92, v93, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AAE799EC(v93, v158);

    (*(*(v140 - 8) + 8))(v142);
    sub_1AAE838F8(v92);
    sub_1AAE838F8(v85);
    (*(v131 + 8))(v134, v132);
    (*(v129 + 8))(v127, v130);
    (*(v126 + 8))(v125, v128);
    v162 = v155;
    v163 = v156;
    v160 = v153;
    v161 = v154;
    *(&v164[2] + 8) = v158[2];
    *(&v164[3] + 8) = v158[3];
    *&v164[0] = v157;
    *(&v164[4] + 1) = v159;
    *(v164 + 8) = v158[0];
    *(&v164[1] + 8) = v158[1];
    v171 = v164[2];
    v172 = v164[3];
    v173 = v164[4];
    v167 = v155;
    v168 = v156;
    v169 = v164[0];
    v170 = v164[1];
    v165 = v153;
    v166 = v154;
    v94 = sub_1AAE52954(&v165);
    result = (*(*(v118 - 8) + 8))(v143, v94);
    v150 = v171;
    v151 = v172;
    v152 = v173;
    v146 = v167;
    v147 = v168;
    v148 = v169;
    v149 = v170;
    v144 = v165;
    v145 = v166;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE7C71C@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v100 = a3;
  v103 = a2;
  v97 = a7;
  v94 = type metadata accessor for PlottableValue(0, a5, a6, a4);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v85 - v13;
  v95 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v85 - v17;
  v18 = type metadata accessor for PlottableProjection.Storage(0, a4, a5, a6);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v85 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = TupleTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v30 = &v85 - v29;
  v96 = a4;
  v90 = a5;
  v92 = a6;
  v89 = type metadata accessor for PlottableProjection(0, a4, a5, a6);
  v31 = *(v89 + 44);
  v32 = &v30[*(v28 + 56)];
  v98 = v19;
  v33 = *(v19 + 16);
  v34 = a1;
  v33(v30, a1 + v31, v18);
  v33(v32, &v103[v31], v18);
  v102 = v30;
  v101 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v88 = a1;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33(v21, v102, v101);
      v50 = *v21;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v86 = *v32;
        v52 = *a1;
        v51 = a1[1];
        v53 = *(a1 + 16);
        v54 = a1[3];
        v55 = v87;
        swift_getAtKeyPath();
        v56 = v90;
        v85 = v50;
        v57 = v92;
        v58 = static PlottableValue.value(_:_:)(v52, v51, v53, v54, v90, v92, v99);
        v95 = *(v95 + 8);
        (v95)(v55, v56, v58);
        v43 = v103;
        v59 = *v103;
        v60 = *(v103 + 1);
        LOBYTE(v54) = v103[16];
        v61 = *(v103 + 3);
        swift_getAtKeyPath();
        v62 = v91;
        v63 = static PlottableValue.value(_:_:)(v59, v60, v54, v61, v56, v57, v91);
        (v95)(v55, v56, v63);
        v64 = v99;
        v65 = sub_1AAE83D50(v99, v62, v56, v57, v104);
        v66 = *(v93 + 8);
        v67 = v94;
        v66(v62, v94, v65);
        (v66)(v64, v67);

        (*(*(v96 - 8) + 8))(v100);
        goto LABEL_8;
      }
    }

    else if (EnumCaseMultiPayload == 3 && swift_getEnumCaseMultiPayload() == 3)
    {
      v80 = *(v98 + 8);
      v80(v32, v101);
      v80(v102, v101);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v33(v85, v102, v101);
    v76 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v77 = *(v95 + 8);
      v78 = v90;
      v77(&v32[v76], v90);
      v77(v32, v78);
      v79 = v85;
      v77(&v85[v76], v78);
      v77(v79, v78);
      (*(v98 + 8))(v102, v101);
    }

    else
    {
      v81 = *(v95 + 8);
      v82 = v85;
      v83 = &v85[v76];
      v84 = v90;
      v81(v83, v90);
      v81(v82, v84);
    }
  }

  else
  {
    v33(v26, v102, v101);
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = v95;
      v37 = *(v95 + 32);
      v38 = v87;
      v39 = v90;
      v37(v87, v26, v90);
      v40 = v86;
      v37(v86, v32, v39);
      v41 = v99;
      v42 = v92;
      static PlottableValue.value(_:_:)(*v34, v34[1], *(v34 + 16), v34[3], v39, v92, v99);
      v43 = v103;
      v44 = v91;
      static PlottableValue.value(_:_:)(*v103, *(v103 + 1), v103[16], *(v103 + 3), v39, v42, v91);
      v45 = sub_1AAE83D50(v41, v44, v39, v42, v104);
      v46 = *(v93 + 8);
      v47 = v44;
      v48 = v94;
      v46(v47, v94, v45);
      (v46)(v41, v48);
      (*(*(v96 - 8) + 8))(v100);
      v49 = *(v36 + 8);
      v49(v40, v39);
      v49(v38, v39);
LABEL_8:
      v68 = v89;
      v69 = *(*(v89 - 8) + 8);
      v69(v43, v89);
      v69(v88, v68);
      result = (*(v98 + 8))(v102, v101);
      v71 = v104[7];
      v72 = v97;
      v97[6] = v104[6];
      v72[7] = v71;
      v72[8] = v104[8];
      v73 = v104[3];
      v72[2] = v104[2];
      v72[3] = v73;
      v74 = v104[5];
      v72[4] = v104[4];
      v72[5] = v74;
      v75 = v104[1];
      *v72 = v104[0];
      v72[1] = v75;
      return result;
    }

    (*(v95 + 8))(v26, v90);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE7D160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v165 = a7;
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v147 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v140 = (&v137 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v139 = (&v137 - v18);
  v155 = sub_1AAF8CA64();
  v153 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v145 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v142 = &v137 - v20;
  sub_1AACD6D40(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v144 = &v137 - v22;
  v156 = sub_1AAF8C6F4();
  v154 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v161 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1AAF8CBA4();
  v152 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v150 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1AAF8CB94();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PlottableValue(0, a5, a6, v26);
  v163 = *(v27 - 8);
  v164 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v160 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v166 = &v137 - v30;
  v169 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v159 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v167 = &v137 - v34;
  v35 = a4;
  v36 = type metadata accessor for PlottableProjection.Storage(0, a4, a5, a6);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v137 - v38);
  v40 = *(a2 + 96);
  v202 = *(a2 + 80);
  v203 = v40;
  v41 = *(a2 + 64);
  v204 = *(a2 + 112);
  v42 = *(a2 + 16);
  v201[0] = *a2;
  v201[1] = v42;
  v43 = *(a2 + 48);
  v201[2] = *(a2 + 32);
  v201[3] = v43;
  v201[4] = v41;
  v44 = v203;
  v170 = a3;
  if (v203 == 255)
  {
    v157 = 0;
    LODWORD(v158) = 3;
  }

  else
  {
    LODWORD(v158) = LOBYTE(v201[0]);
    if (LOBYTE(v201[0]) == 3)
    {
      goto LABEL_20;
    }

    v45 = a1;
    v46 = *(&v202 + 1);
    sub_1AAE64F50(*(&v202 + 1), v203 & 1);
    v47 = sub_1AAF31474(v170, v46, v44 & 1);
    v50 = type metadata accessor for MarkDimensions.Storage(0, v35, v48, v49);
    (*(*(v50 - 8) + 8))(v201 + 8, v50);
    v157 = *&v47;
    a1 = v45;
  }

  v51 = type metadata accessor for PlottableProjection(0, v35, a5, a6);
  (*(v37 + 16))(v39, a1 + *(v51 + 44), v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v55 = v168;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v162 = v35;
      v115 = type metadata accessor for MarkDimensions(0, v35, v53, v54);
      (*(*(v115 - 8) + 8))(v201, v115);
      v116 = *(swift_getTupleTypeMetadata2() + 48);
      v117 = a6;
      v118 = *(v169 + 32);
      v119 = v167;
      v118(v167, v39, a5);
      v118(v159, (v39 + v116), a5);
      v146 = a1;
      v120 = *a1;
      v121 = a1[1];
      v122 = *(v146 + 16);
      v141 = v51;
      v123 = v146[3];
      v124 = v166;
      static PlottableValue.value(_:_:)(v120, v121, v122, v123, a5, v117, v166);
      v125 = v160;
      v126 = v122;
      v127 = v159;
      static PlottableValue.value(_:_:)(v120, v121, v126, v123, a5, v117, v160);
      v128 = sub_1AAE83D50(v124, v125, a5, v117, &v171);
      v129 = v164;
      v130 = *(v163 + 8);
      v130(v125, v164, v128);
      (v130)(v124, v129);
      (*(*(v162 - 8) + 8))(v170);
      v131 = *(v169 + 8);
      v131(v127, a5);
      v131(v119, a5);
      goto LABEL_16;
    }

    v73 = type metadata accessor for MarkDimensions(0, v35, v53, v54);
    (*(*(v73 - 8) + 8))(v201, v73);
    v74 = v169;
    v75 = v167;
    (*(v169 + 32))(v167, v39, a5);
    v76 = v166;
    static PlottableValue.value(_:_:)(*a1, a1[1], *(a1 + 16), a1[3], a5, a6, v166);
    v77 = sub_1AAE83EF8(v76, v157, v158, a5, a6, &v171);
    (*(v163 + 8))(v76, v164, v77);
    (*(*(v35 - 8) + 8))(v170, v35);
    (*(v74 + 8))(v75, a5);
    v78 = *(*(v51 - 8) + 8);
    v79 = a1;
LABEL_12:
    v89 = v51;
LABEL_17:
    result = v78(v79, v89);
    goto LABEL_18;
  }

  v162 = v35;
  if (EnumCaseMultiPayload == 2)
  {
    v80 = type metadata accessor for MarkDimensions(0, v35, v53, v54);
    (*(*(v80 - 8) + 8))(v201, v80);
    v168 = *v39;
    v81 = a1;
    v82 = *a1;
    v161 = v81[1];
    v83 = *(v81 + 16);
    v84 = v81[3];
    v85 = v167;
    swift_getAtKeyPath();
    v86 = v166;
    v87 = static PlottableValue.value(_:_:)(v82, v161, v83, v84, a5, a6, v166);
    (*(v169 + 8))(v85, a5, v87);
    v88 = sub_1AAE83EF8(v86, v157, v158, a5, a6, &v171);
    (*(v163 + 8))(v86, v164, v88);

    (*(*(v162 - 8) + 8))(v170);
    v78 = *(*(v51 - 8) + 8);
    v79 = v81;
    goto LABEL_12;
  }

  v141 = v51;
  v146 = a1;
  if (EnumCaseMultiPayload == 3)
  {
    v56 = type metadata accessor for MarkDimensions(0, v35, v53, v54);
    (*(*(v56 - 8) + 8))(v201, v56);
    v57 = v39[1];
    v168 = *v39;
    v161 = v57;
    v58 = a6;
    v60 = *a1;
    v59 = a1[1];
    v61 = *(a1 + 16);
    v62 = a1[3];
    v158 = v60;
    v159 = v62;
    v63 = v167;
    swift_getAtKeyPath();
    v64 = static PlottableValue.value(_:_:)(v60, v59, v61, v62, a5, a6, v166);
    v65 = *(v169 + 8);
    v65(v63, a5, v64);
    swift_getAtKeyPath();
    v66 = v160;
    v67 = v58;
    v68 = static PlottableValue.value(_:_:)(v158, v59, v61, v159, a5, v58, v160);
    v65(v63, a5, v68);
    v69 = v166;
    v70 = sub_1AAE83D50(v166, v66, a5, v67, &v171);
    v71 = v164;
    v72 = *(v163 + 8);
    v72(v66, v164, v70);
    (v72)(v69, v71);

    (*(*(v162 - 8) + 8))(v170);
LABEL_16:
    v89 = v141;
    v78 = *(*(v141 - 8) + 8);
    v79 = v146;
    goto LABEL_17;
  }

  v90 = *v39;
  sub_1AAF90774();
  v91 = v151;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v93 = *(TupleTypeMetadata3 + 64);
  (*(v149 + 32))(v148, v39 + *(TupleTypeMetadata3 + 48), v91);
  (*(v152 + 32))(v150, v39 + v93, v55);
  v94 = v167;
  v166 = v90;
  swift_getAtKeyPath();
  (*(a6 + 24))(a5, a6);
  (*(v169 + 8))(v94, a5);
  v95 = v145;
  v96 = v155;
  swift_dynamicCast();
  v97 = v144;
  sub_1AAF8CAD4();
  (*(v153 + 8))(v95, v96);
  v98 = v154;
  if ((*(v154 + 48))(v97, 1, v156) != 1)
  {
    v101 = type metadata accessor for MarkDimensions(0, v35, v99, v100);
    (*(*(v101 - 8) + 8))(v201, v101);
    (*(v98 + 32))();
    v102 = *v146;
    v103 = v146[1];
    v104 = *(v146 + 16);
    v105 = v146[3];
    sub_1AAF8C6E4();
    v106 = v139;
    *v139 = v102;
    *(v106 + 8) = v103;
    *(v106 + 16) = v104;
    *(v106 + 24) = v105;
    v107 = *(v147 + 36);
    v169 = *(v153 + 32);
    v108 = v155;
    (v169)(v106 + v107, v95, v155);
    sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
    v163 = v109;
    swift_storeEnumTagMultiPayload();
    v167 = v103;
    LODWORD(v164) = v104;
    sub_1AACD7304(v102, v103, v104);

    sub_1AAF8C6D4();
    v110 = v108;
    v111 = v140;
    *v140 = v102;
    *(v111 + 8) = v103;
    *(v111 + 16) = v104;
    *(v111 + 24) = v105;
    (v169)(v111 + *(v147 + 36), v95, v110);
    swift_storeEnumTagMultiPayload();
    v112 = v138;
    sub_1AAE7B790(v106, v138, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AACD7304(v102, v167, v164);

    sub_1AAE799EC(v112, &v180);
    sub_1AAE7B790(v111, v112, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AAE799EC(v112, v185);

    (*(*(v162 - 8) + 8))(v170);
    sub_1AAE838F8(v111);
    sub_1AAE838F8(v106);
    (*(v154 + 8))(v161, v156);
    (*(v152 + 8))(v150, v168);
    (*(v149 + 8))(v148, v151);
    v189 = v182;
    v190 = v183;
    v187 = v180;
    v188 = v181;
    *(&v191[2] + 8) = v185[2];
    *(&v191[3] + 8) = v185[3];
    *&v191[0] = v184;
    *(&v191[4] + 1) = v186;
    *(v191 + 8) = v185[0];
    *(&v191[1] + 8) = v185[1];
    v198 = v191[2];
    v199 = v191[3];
    v200 = v191[4];
    v194 = v182;
    v195 = v183;
    v196 = v191[0];
    v197 = v191[1];
    v192 = v180;
    v193 = v181;
    v113 = sub_1AAE52954(&v192);
    result = (*(*(v141 - 8) + 8))(v146, v113);
    v177 = v198;
    v178 = v199;
    v179 = v200;
    v173 = v194;
    v174 = v195;
    v175 = v196;
    v176 = v197;
    v171 = v192;
    v172 = v193;
LABEL_18:
    v132 = v165;
    v133 = v178;
    v165[6] = v177;
    v132[7] = v133;
    v132[8] = v179;
    v134 = v174;
    v132[2] = v173;
    v132[3] = v134;
    v135 = v176;
    v132[4] = v175;
    v132[5] = v135;
    v136 = v172;
    *v132 = v171;
    v132[1] = v136;
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

__n128 sub_1AAE7E33C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a2;
  v88 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v80 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlottableProjection(0, v12, v13, v14);
  v84 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v77 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v77 - v24;
  v81 = a4;
  v82 = a5;
  v25 = type metadata accessor for BoundingSectionSpecification(0, a3, a4, a5);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v77 - v28;
  v30 = *(v26 + 16);
  v85 = a1;
  v30(&v77 - v28, a1, v25, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v79 = v15;
      if (EnumCaseMultiPayload == 6)
      {
        type metadata accessor for MarkDimensions(255, a3, v32, v33);
        v45 = &v29[*(swift_getTupleTypeMetadata2() + 48)];
        v46 = *(v45 + 5);
        v89[4] = *(v45 + 4);
        v89[5] = v46;
        v89[6] = *(v45 + 6);
        v90 = v45[112];
        v47 = *(v45 + 1);
        v89[0] = *v45;
        v89[1] = v47;
        v48 = *(v45 + 3);
        v89[2] = *(v45 + 2);
        v89[3] = v48;
        v49 = v84;
        v50 = v87;
        (*(v84 + 32))(v87, v29, v15);
        v51 = v83;
        (*(v49 + 16))(v83, v50, v15);
        v52 = v88;
        v53 = v80;
        v54 = v86;
        (*(v88 + 16))(v80, v86, a3);
        sub_1AAE7D160(v51, v89, v53, a3, v81, v82, &v91);
        (*(v52 + 8))(v54, a3);
        (*(v26 + 8))(v85, v25);
        (*(v49 + 8))(v87, v79);
        goto LABEL_19;
      }

      v66 = &v29[*(swift_getTupleTypeMetadata2() + 48)];
      v67 = *(v66 + 4);
      v68 = *(v66 + 5);
      v69 = v66[48];
      sub_1AAD0E818(*(v66 + 1), *(v66 + 2), v66[24]);
      sub_1AADB2F88(v67, v68, v69);
      v35 = v84;
      v70 = v87;
      (*(v84 + 32))(v87, v29, v15);
      v71 = v83;
      (*(v35 + 16))(v83, v70, v15);
      v39 = v88;
      v72 = v80;
      v41 = v86;
      (*(v88 + 16))(v80, v86, a3);
      v42 = v71;
      v43 = v72;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v58 = v15;
        v77 = *(swift_getTupleTypeMetadata2() + 48);
        v78 = v26;
        v59 = *(v84 + 32);
        v59(v87, v29, v15);
        v59(v83, &v29[v77], v15);
        v60 = *(v84 + 16);
        v60(v20, v87, v58);
        v60(v17, v83, v58);
        v61 = v80;
        v62 = v86;
        (*(v88 + 16))(v80, v86, a3);
        sub_1AAE7C71C(v20, v17, v61, a3, v81, v82, &v91);
        (*(v88 + 8))(v62, a3);
        (*(v78 + 8))(v85, v25);
        v63 = *(v84 + 8);
        v63(v83, v58);
        v63(v87, v58);
        goto LABEL_19;
      }

      v35 = v84;
      v36 = *(v84 + 32);
      v37 = v87;
      v79 = v15;
      v36(v87, v29, v15);
      v38 = v83;
      (*(v35 + 16))(v83, v37, v15);
      v39 = v88;
      v40 = v80;
      v41 = v86;
      (*(v88 + 16))(v80, v86, a3);
      v42 = v38;
      v43 = v40;
    }

    sub_1AAE7B800(v42, v43, a3, v81, v82, &v91);
    (*(v39 + 8))(v41, a3);
    (*(v26 + 8))(v85, v25);
    (*(v35 + 8))(v87, v79);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = v86;
      swift_getAtKeyPath();
      *&v101 = v100;
      BYTE8(v101) = 0;
      sub_1AAD59F90(&v101);
      v97 = v107;
      v98 = v108;
      v99 = v109;
      v93 = v103;
      v94 = v104;
      v95 = v105;
      v96 = v106;
      v91 = v101;
      v92 = v102;

      (*(v88 + 8))(v44, a3);
    }

    else
    {
      v64 = v88;
      v65 = v86;
      sub_1AAE83CB0(&v91);

      (*(v64 + 8))(v65, a3);
    }

    (*(v26 + 8))(v85, v25);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v88 + 8))(v86, a3);
      (*(v26 + 8))(v85, v25);
      v55 = v29[8];
      v56 = *(v29 + 2);
      v57 = v29[24];
      *&v101 = *v29;
      BYTE8(v101) = v55;
      v102.n128_u64[0] = v56;
      v102.n128_u8[8] = v57;
      sub_1AAE52D28(&v101);
    }

    else
    {
      (*(v88 + 8))(v86, a3);
      (*(v26 + 8))(v85, v25);
      v34 = v29[8];
      *&v101 = *v29;
      BYTE8(v101) = v34;
      sub_1AAD59F90(&v101);
    }

    v97 = v107;
    v98 = v108;
    v99 = v109;
    v93 = v103;
    v94 = v104;
    v95 = v105;
    v96 = v106;
    v91 = v101;
    v92 = v102;
  }

LABEL_19:
  v73 = v98;
  *(a6 + 96) = v97;
  *(a6 + 112) = v73;
  *(a6 + 128) = v99;
  v74 = v94;
  *(a6 + 32) = v93;
  *(a6 + 48) = v74;
  v75 = v96;
  *(a6 + 64) = v95;
  *(a6 + 80) = v75;
  result = v92;
  *a6 = v91;
  *(a6 + 16) = result;
  return result;
}

uint64_t sub_1AAE7EC08(uint64_t a1, _OWORD *a2, void *a3, char *a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v589.i64[0] = a1;
  v22 = *a2;
  v635 = a2[1];
  v634 = v22;
  v23 = a2[2];
  v24 = a2[3];
  *(v639 + 9) = *(a2 + 89);
  v25 = a2[4];
  v26 = a2[5];
  v585 = a2;
  v639[0] = v26;
  v638 = v25;
  v636 = v23;
  v637 = v24;
  v28 = a3[2];
  v27 = a3[3];
  v29 = a3[4];
  v30 = type metadata accessor for PlottableProjection.Storage(255, v28, v27, v29);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v577 = v539 - v31;
  sub_1AAE8402C(255);
  v33 = v32;
  v579 = a5;
  v34 = *(*(a5 + 8) + 8);
  v35 = *(v34 + 8);
  v36 = sub_1AACECB5C(&qword_1EB4261E8, sub_1AAE8402C, MEMORY[0x1E69E6AA8]);
  *&v600[0] = a4;
  v539[5] = v36;
  v539[6] = v33;
  *(&v600[0] + 1) = v33;
  *&v600[1] = v35;
  *(&v600[1] + 1) = v36;
  v37 = sub_1AAF90104();
  v547 = *(v37 - 8);
  v548 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v544 = v539 - v38;
  sub_1AACD6D40(255, &qword_1EB4261F0, sub_1AAE8412C, MEMORY[0x1E69E62F8]);
  v40 = v39;
  v41 = sub_1AAE84188();
  *&v600[0] = a4;
  v539[3] = v41;
  v539[4] = v40;
  *(&v600[0] + 1) = v40;
  *&v600[1] = v35;
  *(&v600[1] + 1) = v41;
  v42 = sub_1AAF90104();
  v541 = *(v42 - 8);
  v542 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v540 = v539 - v43;
  v44 = sub_1AAF8CBA4();
  v565 = *(v44 - 8);
  v566 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v550 = v539 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v561 = v539 - v47;
  v48 = sub_1AAF8CB94();
  v563 = *(v48 - 8);
  v564 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v549 = v539 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v560 = v539 - v51;
  v578 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v552 = v539 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v551 = v539 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v555 = v539 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v559 = v539 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v558 = v539 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v557 = v539 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v554 = v539 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v553 = v539 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v556 = v539 - v69;
  sub_1AAE842D8(255, &qword_1ED9B2A88, MEMORY[0x1E69E62F8]);
  v71 = v70;
  v72 = sub_1AAE840B8();
  *&v600[0] = a4;
  v539[1] = v72;
  v539[2] = v71;
  *(&v600[0] + 1) = v71;
  v562 = v35;
  *&v600[1] = v35;
  *(&v600[1] + 1) = v72;
  v73 = sub_1AAF90104();
  v545 = *(v73 - 8);
  v546 = v73;
  MEMORY[0x1EEE9AC00](v73);
  v543 = v539 - v74;
  v583 = v30;
  v581 = *(v30 - 1);
  MEMORY[0x1EEE9AC00](v75);
  v575 = v539 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v539[0] = v539 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = v539 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = (v539 - v83);
  MEMORY[0x1EEE9AC00](v85);
  v572 = v539 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v89 = v539 - v88;
  v574 = v28;
  v582 = v27;
  v584 = v29;
  v90 = type metadata accessor for PlottableProjection(0, v28, v27, v29);
  v91 = *(v90 - 8);
  v586 = v90;
  v587 = v91;
  MEMORY[0x1EEE9AC00](v90);
  v568 = v539 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v570 = v539 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v571 = v539 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v573 = v539 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v569 = v539 - v100;
  v101 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v102);
  v104 = v539 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v580 = a4;
  v576 = v34;
  v105 = sub_1AAF8FB84();
  v106 = MEMORY[0x1E69E7CC0];
  if (v105)
  {
    return v106;
  }

  (*(v101 + 16))(v104, COERCE_DOUBLE(*&v588), a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v135 = *v104;
      if (EnumCaseMultiPayload == 2)
      {
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v136 = v580;
        v539[-8] = v582;
        v539[-7] = v136;
        v137 = v579;
        v539[-6] = v584;
        v539[-5] = v137;
        *&v539[-4] = v135;
        *&v539[-3] = a6;
        v537 = *&a7;
        v538 = a8;
        sub_1AAE8412C();
        v106 = sub_1AACB00E0(sub_1AAE8428C, &v539[-10], v136, v138, MEMORY[0x1E69E73E0], v576, MEMORY[0x1E69E7410], v139);
      }

      else
      {
        v190 = *(v104 + 1);
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v191 = v580;
        v539[-10] = v582;
        v539[-9] = v191;
        v192 = v579;
        v539[-8] = v584;
        v539[-7] = v192;
        *&v539[-6] = v135;
        *&v539[-5] = a6;
        *&v539[-4] = a7;
        *&v539[-3] = a8;
        v537 = v190;
        sub_1AAE8412C();
        v106 = sub_1AACB00E0(sub_1AAE84210, &v539[-12], v191, v193, MEMORY[0x1E69E73E0], v576, MEMORY[0x1E69E7410], v194);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v156 = *v104;
      if (v104[8])
      {
        v156 = a11;
      }

      v157 = v156 + a7;
      if (v104[24])
      {
        v158 = a12;
      }

      else
      {
        v158 = *(v104 + 2);
      }

      v159 = v158 + a8;
      sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1AAF92AB0;
      *(v106 + 32) = v157;
      *(v106 + 40) = v159;
    }

    else
    {
      if (v104[8])
      {
        v111 = (a11 + a12) * 0.5;
      }

      else
      {
        v111 = *v104;
      }

      v216 = v111 + a6;
      sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1AAF92AB0;
      *(v106 + 32) = v216;
      *(v106 + 40) = v216;
    }

    return v106;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v140 = v574;
      *&v141 = COERCE_DOUBLE(type metadata accessor for MarkDimensions(255, v574, v109, v110));
      v142 = v586;
      v143 = &v104[*(swift_getTupleTypeMetadata2() + 48)];
      v144 = *(v143 + 5);
      v600[4] = *(v143 + 4);
      v600[5] = v144;
      v600[6] = *(v143 + 6);
      v601 = v143[112];
      v145 = *(v143 + 1);
      v600[0] = *v143;
      v600[1] = v145;
      v146 = *(v143 + 3);
      v600[2] = *(v143 + 2);
      v600[3] = v146;
      v147 = v569;
      (*(v587 + 32))(v569, v104, v142);
      v148 = v585;
      v149 = *(v585 + 104);
      v150 = v578;
      if (v149 != 255)
      {
        v151 = v585[5];
        v608 = v585[4];
        v609 = v151;
        v610 = *(v585 + 12);
        v152 = v585[3];
        v606 = v585[2];
        v607 = v152;
        v153 = v585[1];
        v604 = *v585;
        v605 = v153;
        (v581[2])(v89, &v147[*(v142 + 44)], v583);
        v154 = swift_getEnumCaseMultiPayload();
        v588 = *&v141;
        if (v154 <= 1)
        {
          if (v154)
          {
            v348 = v582;
            v349 = *(swift_getTupleTypeMetadata2() + 48);
            v350 = *(v150 + 32);
            v350(v553, v89, v348);
            v351 = (v350)(v554, &v89[v349], v348);
            if (v149)
            {
              LODWORD(v538) = 0;
              v536 = 397;
              goto LABEL_201;
            }

            v612[3] = v608;
            v612[4] = v609;
            *&v612[5] = v610;
            v611 = v604;
            v612[0] = v605;
            v612[2] = v607;
            v612[1] = v606;
            if (LOBYTE(v600[6]) == 255)
            {
              sub_1AAE6433C(&v629);
            }

            else
            {
              v631 = *(&v600[2] + 8);
              v632 = *(&v600[3] + 8);
              v633[0] = *(&v600[4] + 8);
              *&v633[1] = *(&v600[5] + 1);
              v629 = *(v600 + 8);
              v630 = *(&v600[1] + 8);
              BYTE8(v633[1]) = v600[6];
            }

            v583 = v539;
            v592 = v631;
            v593[0] = v632;
            v593[1] = v633[0];
            *(&v593[1] + 9) = *(v633 + 9);
            v590 = v629;
            v591 = v630;
            MEMORY[0x1EEE9AC00](v351);
            v425 = v582;
            v539[-12] = v140;
            v539[-11] = v425;
            v426 = v579;
            v427 = v580;
            v428 = v584;
            v539[-10] = v580;
            v539[-9] = v428;
            v539[-8] = v426;
            v539[-7] = &v590;
            v430 = v553;
            v429 = v554;
            v539[-6] = &v611;
            v539[-5] = v430;
            v539[-4] = v429;
            *&v539[-3] = a7;
            v537 = *&a8;
            sub_1AAE8432C(v148, &v602, sub_1AACCF364);
            sub_1AAE8432C(v148, &v602, sub_1AACCF364);
            v433 = type metadata accessor for MarkDimensions.Storage(0, v140, v431, v432);
            (*(*(v433 - 8) + 16))(&v602, v600 + 8, v433);
            sub_1AAE8412C();
            v436 = sub_1AACB00E0(sub_1AAE84394, &v539[-14], v427, v434, MEMORY[0x1E69E73E0], v576, MEMORY[0x1E69E7410], v435);
            v439 = type metadata accessor for MappedCoefficients(0, v140, v437, v438);
            (*(*(v439 - 8) + 8))(&v629, v439);
            sub_1AAE52094(v148);
            sub_1AAE52094(v148);
            (*(*(*&v588 - 8) + 8))(v600);
            (*(v587 + 8))(v569, v586);
            v440 = *(v578 + 8);
            v440(v429, v425);
            v440(v430, v425);
            return v436;
          }

          else
          {
            (*(v150 + 32))(v556, v89, v582);
            if (v149)
            {
              v612[3] = v608;
              v612[4] = v609;
              *&v612[5] = v610;
              v611 = v604;
              v612[0] = v605;
              v612[2] = v607;
              v612[1] = v606;
              if (LOBYTE(v600[6]) == 255)
              {
                sub_1AAE6433C(&v595);
              }

              else
              {
                v597 = *(&v600[2] + 8);
                v598 = *(&v600[3] + 8);
                v599[0] = *(&v600[4] + 8);
                *&v599[1] = *(&v600[5] + 1);
                v595 = *(v600 + 8);
                v596 = *(&v600[1] + 8);
                BYTE8(v599[1]) = v600[6];
              }

              v631 = v597;
              v632 = v598;
              v633[0] = v599[0];
              *(v633 + 9) = *(v599 + 9);
              v629 = v595;
              v630 = v596;
              v593[1] = v612[3];
              v593[2] = v612[4];
              v594 = *&v612[5];
              v590 = v611;
              v591 = v612[0];
              v592 = v612[1];
              v593[0] = v612[2];
              sub_1AAE8432C(v148, &v602, sub_1AACCF364);
              sub_1AAE8432C(v148, &v602, sub_1AACCF364);
              v487 = type metadata accessor for MarkDimensions.Storage(0, v140, v485, v486);
              (*(*(v487 - 8) + 16))(&v602, v600 + 8, v487);
              sub_1AAE28BBC(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], v488);
              v489 = v556;
              v490 = v582;
              v491 = v584;
              sub_1AAF3C35C(v556, v492, v582);
              v583 = v539;
              v494 = MEMORY[0x1EEE9AC00](v493);
              v539[-12] = v140;
              v539[-11] = v490;
              v495 = v579;
              v496 = v580;
              v539[-10] = v580;
              v539[-9] = v491;
              v539[-8] = v495;
              v539[-7] = &v611;
              v539[-6] = &v629;
              *&v539[-5] = v494;
              *&v539[-4] = a7;
              *&v539[-3] = a9;
              v537 = *&a10;
              v538 = a8;
              sub_1AAE8412C();
              v106 = sub_1AACB00E0(sub_1AAE844E8, &v539[-14], v496, v497, MEMORY[0x1E69E73E0], v576, MEMORY[0x1E69E7410], v498);
              sub_1AAE52094(v148);
              v501 = type metadata accessor for MappedCoefficients(0, v140, v499, v500);
              (*(*(v501 - 8) + 8))(&v595, v501);
            }

            else
            {
              if (LOBYTE(v600[6]) == 255)
              {
                sub_1AAE642DC(&v629);
              }

              else
              {
                v631 = *(&v600[2] + 8);
                v632 = *(&v600[3] + 8);
                v633[0] = *(&v600[4] + 8);
                *&v633[1] = *(&v600[5] + 1);
                v629 = *(v600 + 8);
                v630 = *(&v600[1] + 8);
                BYTE8(v633[1]) = v600[6];
              }

              v592 = v631;
              v593[0] = v632;
              v593[1] = v633[0];
              *(&v593[1] + 9) = *(v633 + 9);
              v590 = v629;
              v591 = v630;
              v612[3] = v608;
              v612[4] = v609;
              *&v612[5] = v610;
              v611 = v604;
              v612[0] = v605;
              v612[2] = v607;
              v612[1] = v606;
              sub_1AAE8432C(v148, &v602, sub_1AACCF364);
              v504 = type metadata accessor for MarkDimensions.Storage(0, v140, v502, v503);
              (*(*(v504 - 8) + 16))(&v602, v600 + 8, v504);
              sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v505);
              v489 = v556;
              v490 = v582;
              v506 = v584;
              v508 = sub_1AAF3CCD4(v556, v507, v582, v584);
              v583 = v539;
              v509 = MEMORY[0x1EEE9AC00](v508);
              v539[-10] = v140;
              v539[-9] = v490;
              v510 = v579;
              v511 = v580;
              v539[-8] = v580;
              v539[-7] = v506;
              v539[-6] = v510;
              v539[-5] = &v590;
              *&v539[-4] = v509;
              *&v539[-3] = a7;
              v537 = *&a8;
              sub_1AAE8412C();
              v106 = sub_1AACB00E0(sub_1AAE8459C, &v539[-12], v511, v512, MEMORY[0x1E69E73E0], v576, MEMORY[0x1E69E7410], v513);
              v516 = type metadata accessor for MappedCoefficients(0, v140, v514, v515);
              (*(*(v516 - 8) + 8))(&v629, v516);
            }

            sub_1AAE52094(v148);
            (*(*(*&v588 - 8) + 8))(v600);
            (*(v150 + 8))(v489, v490);
            (*(v587 + 8))(v569, v142);
          }

          return v106;
        }

        if (v154 == 2)
        {
          v312 = *v89;
          v583 = *v89;
          if (v149)
          {
            v612[3] = v608;
            v612[4] = v609;
            *&v612[5] = v610;
            v611 = v604;
            v612[0] = v605;
            v612[2] = v607;
            v612[1] = v606;
            if (LOBYTE(v600[6]) == 255)
            {
              sub_1AAE6433C(&v595);
            }

            else
            {
              v597 = *(&v600[2] + 8);
              v598 = *(&v600[3] + 8);
              v599[0] = *(&v600[4] + 8);
              *&v599[1] = *(&v600[5] + 1);
              v595 = *(v600 + 8);
              v596 = *(&v600[1] + 8);
              BYTE8(v599[1]) = v600[6];
            }

            v631 = v597;
            v632 = v598;
            v633[0] = v599[0];
            *(v633 + 9) = *(v599 + 9);
            v629 = v595;
            v630 = v596;
            v593[1] = v612[3];
            v593[2] = v612[4];
            v594 = *&v612[5];
            v590 = v611;
            v591 = v612[0];
            v592 = v612[1];
            v593[0] = v612[2];
            sub_1AAE8432C(v148, &v602, sub_1AACCF364);
            sub_1AAE8432C(v148, &v602, sub_1AACCF364);
            v443 = type metadata accessor for MarkDimensions.Storage(0, v140, v441, v442);
            (*(*(v443 - 8) + 16))(&v602, v600 + 8, v443);
            sub_1AAE28BBC(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], v444);
            v445 = v580;
            v446 = v584;
            v447 = v140;
            v448 = v579;
            *&v602 = sub_1AAF3CB18(v589.i64[0], v312, v449, v580, v584, v579);
            v450 = v543;
            sub_1AAF90584();

            MEMORY[0x1EEE9AC00](v451);
            v452 = v582;
            v539[-12] = v447;
            v539[-11] = v452;
            v539[-10] = v445;
            v539[-9] = v446;
            v539[-8] = v448;
            v539[-7] = &v611;
            v539[-6] = &v629;
            *&v539[-5] = a7;
            *&v539[-4] = a9;
            *&v539[-3] = a10;
            MEMORY[0x1EEE9AC00](v453);
            v539[-8] = v447;
            v539[-7] = v454;
            v539[-6] = v445;
            v539[-5] = v446;
            v539[-4] = v448;
            v539[-3] = sub_1AAE84624;
            v537 = v455;
            sub_1AAE8412C();
            v457 = v456;
            v458 = v546;
            WitnessTable = swift_getWitnessTable();
            v106 = sub_1AAE79E0C(sub_1AAE846C0, &v539[-10], v458, v457, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v460);

            sub_1AAE52094(v148);
            v463 = type metadata accessor for MappedCoefficients(0, v447, v461, v462);
            (*(*(v463 - 8) + 8))(&v595, v463);
          }

          else
          {
            if (LOBYTE(v600[6]) == 255)
            {
              sub_1AAE642DC(&v629);
            }

            else
            {
              v631 = *(&v600[2] + 8);
              v632 = *(&v600[3] + 8);
              v633[0] = *(&v600[4] + 8);
              *&v633[1] = *(&v600[5] + 1);
              v629 = *(v600 + 8);
              v630 = *(&v600[1] + 8);
              BYTE8(v633[1]) = v600[6];
            }

            v592 = v631;
            v593[0] = v632;
            v593[1] = v633[0];
            *(&v593[1] + 9) = *(v633 + 9);
            v590 = v629;
            v591 = v630;
            v612[3] = v608;
            v612[4] = v609;
            *&v612[5] = v610;
            v611 = v604;
            v612[0] = v605;
            v612[2] = v607;
            v612[1] = v606;
            sub_1AAE8432C(v148, &v602, sub_1AACCF364);
            v466 = type metadata accessor for MarkDimensions.Storage(0, v140, v464, v465);
            (*(*(v466 - 8) + 16))(&v602, v600 + 8, v466);
            sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v467);
            v468 = v580;
            v469 = v584;
            v470 = v140;
            v471 = v579;
            *&v602 = sub_1AAF3C45C(v589.i64[0], v312, v472, v580, v584, v579);
            v450 = v543;
            sub_1AAF90584();

            MEMORY[0x1EEE9AC00](v473);
            v474 = v582;
            v539[-8] = v470;
            v539[-7] = v474;
            v539[-6] = v468;
            v539[-5] = v469;
            v539[-4] = v471;
            v539[-3] = &v590;
            v538 = a8;
            MEMORY[0x1EEE9AC00](v475);
            v539[-8] = v470;
            v539[-7] = v476;
            v539[-6] = v468;
            v539[-5] = v469;
            v539[-4] = v471;
            v539[-3] = sub_1AAE846D8;
            v537 = v477;
            sub_1AAE8412C();
            v479 = v478;
            v458 = v546;
            v480 = swift_getWitnessTable();
            v106 = sub_1AAE79E0C(sub_1AAE847D8, &v539[-10], v458, v479, MEMORY[0x1E69E73E0], v480, MEMORY[0x1E69E7410], v481);
            v484 = type metadata accessor for MappedCoefficients(0, v470, v482, v483);
            (*(*(v484 - 8) + 8))(&v629, v484);
          }

          (*(*(*&v588 - 8) + 8))(v600);
          sub_1AAE52094(v148);
          (*(v545 + 8))(v450, v458);
          (*(v587 + 8))(v147, v586);
          return v106;
        }

        if (v154 == 3)
        {
          if (v149)
          {
            LODWORD(v538) = 0;
            v536 = 383;
            goto LABEL_201;
          }

          v155 = *v89;
          v583 = *(v89 + 1);
          v612[3] = v608;
          v612[4] = v609;
          *&v612[5] = v610;
          v611 = v604;
          v612[0] = v605;
          v612[2] = v607;
          v612[1] = v606;
          if (LOBYTE(v600[6]) == 255)
          {
            sub_1AAE6433C(&v595);
          }

          else
          {
            v597 = *(&v600[2] + 8);
            v598 = *(&v600[3] + 8);
            v599[0] = *(&v600[4] + 8);
            *&v599[1] = *(&v600[5] + 1);
            v595 = *(v600 + 8);
            v596 = *(&v600[1] + 8);
            BYTE8(v599[1]) = v600[6];
          }

          v631 = v597;
          v632 = v598;
          v633[0] = v599[0];
          *(v633 + 9) = *(v599 + 9);
          v629 = v595;
          v630 = v596;
          v593[1] = v608;
          v593[2] = v609;
          v594 = v610;
          v590 = v604;
          v591 = v605;
          v592 = v606;
          v593[0] = v607;
          sub_1AAE8432C(v148, &v602, sub_1AACCF364);
          v376 = type metadata accessor for MarkDimensions.Storage(0, v140, v374, v375);
          (*(*(v376 - 8) + 16))(&v602, v600 + 8, v376);
          sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v377);
          v379 = v378;
          v380 = v589.i64[0];
          v381 = v155;
          v581 = v155;
          v383 = v579;
          v382 = v580;
          v384 = v140;
          v385 = v584;
          v386 = sub_1AAF3C45C(v589.i64[0], v381, v378, v580, v584, v579);
          v603[3] = v612[3];
          v603[4] = v612[4];
          *&v603[5] = *&v612[5];
          v602 = v611;
          v603[0] = v612[0];
          v603[1] = v612[1];
          v603[2] = v612[2];
          v387 = sub_1AAF3C45C(v380, v583, v379, v382, v385, v383);
          *&v602 = v386;
          *(&v602 + 1) = v387;
          v388 = v544;
          sub_1AAF90584();

          MEMORY[0x1EEE9AC00](v389);
          v390 = v582;
          v539[-8] = v384;
          v539[-7] = v390;
          v539[-6] = v382;
          v539[-5] = v385;
          v539[-4] = v383;
          v539[-3] = &v629;
          v538 = a8;
          MEMORY[0x1EEE9AC00](v391);
          v539[-8] = v384;
          v539[-7] = v392;
          v539[-6] = v382;
          v539[-5] = v385;
          v539[-4] = v383;
          v539[-3] = sub_1AAE847BC;
          v537 = v393;
          sub_1AAE8412C();
          v395 = v394;
          v396 = v548;
          v397 = swift_getWitnessTable();
          v106 = sub_1AAE79E0C(sub_1AAE843D8, &v539[-10], v396, v395, MEMORY[0x1E69E73E0], v397, MEMORY[0x1E69E7410], v398);
          v401 = type metadata accessor for MappedCoefficients(0, v384, v399, v400);
          (*(*(v401 - 8) + 8))(&v595, v401);

          sub_1AAE52094(v148);
          (*(*(*&v588 - 8) + 8))(v600);
          (*(v547 + 8))(v388, v396);
          (*(v587 + 8))(v569, v586);
          return v106;
        }

        v583 = *v89;
        sub_1AAF90774();
        v332 = v564;
        v333 = v566;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v335 = *(TupleTypeMetadata3 + 64);
        (*(v563 + 32))(v560, &v89[*(TupleTypeMetadata3 + 48)], v332);
        (*(v565 + 32))(v561, &v89[v335], v333);
        if ((v149 & 1) == 0)
        {
          if (LOBYTE(v600[6]) == 255)
          {
            sub_1AAE6433C(&v629);
          }

          else
          {
            v631 = *(&v600[2] + 8);
            v632 = *(&v600[3] + 8);
            v633[0] = *(&v600[4] + 8);
            *&v633[1] = *(&v600[5] + 1);
            v629 = *(v600 + 8);
            v630 = *(&v600[1] + 8);
            BYTE8(v633[1]) = v600[6];
          }

          v592 = v631;
          v593[0] = v632;
          v593[1] = v633[0];
          *(&v593[1] + 9) = *(v633 + 9);
          v590 = v629;
          v591 = v630;
          v612[3] = v608;
          v612[4] = v609;
          *&v612[5] = v610;
          v611 = v604;
          v612[0] = v605;
          v612[2] = v607;
          v612[1] = v606;
          sub_1AAE8432C(v148, &v602, sub_1AACCF364);
          v404 = type metadata accessor for MarkDimensions.Storage(0, v140, v402, v403);
          (*(*(v404 - 8) + 16))(&v602, v600 + 8, v404);
          sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v405);
          v406 = v584;
          v407 = v580;
          v408 = v140;
          v409 = v579;
          *&v602 = sub_1AAF3CD40(v589.i64[0], v583, v560, v561, v410, v580, v584, v579);
          v411 = v540;
          sub_1AAF90584();

          MEMORY[0x1EEE9AC00](v412);
          v413 = v582;
          v539[-8] = v408;
          v539[-7] = v413;
          v539[-6] = v407;
          v539[-5] = v406;
          v539[-4] = v409;
          v539[-3] = &v590;
          v538 = a8;
          MEMORY[0x1EEE9AC00](v414);
          v539[-8] = v408;
          v539[-7] = v415;
          v539[-6] = v407;
          v539[-5] = v406;
          v539[-4] = v409;
          v539[-3] = sub_1AAE843F0;
          v537 = v416;
          sub_1AAE8412C();
          v418 = v417;
          v419 = v542;
          v420 = swift_getWitnessTable();
          v106 = sub_1AAE79E0C(sub_1AAE847C0, &v539[-10], v419, v418, MEMORY[0x1E69E73E0], v420, MEMORY[0x1E69E7410], v421);
          v424 = type metadata accessor for MappedCoefficients(0, v408, v422, v423);
          (*(*(v424 - 8) + 8))(&v629, v424);

          sub_1AAE52094(v148);
          (*(*(*&v588 - 8) + 8))(v600);
          (*(v541 + 8))(v411, v419);
          (*(v565 + 8))(v561, v566);
          (*(v563 + 8))(v560, v564);
          (*(v587 + 8))(v569, v586);
          return v106;
        }

        LODWORD(v538) = 0;
        v525 = 369;
        goto LABEL_193;
      }

      LODWORD(v538) = 0;
      v517 = 308;
    }

    else
    {
      v195 = v586;
      v196 = &v104[*(swift_getTupleTypeMetadata2() + 48)];
      v197 = *(v196 + 4);
      v198 = *(v196 + 5);
      v199 = v196[48];
      sub_1AAD0E818(*(v196 + 1), *(v196 + 2), v196[24]);
      sub_1AADB2F88(v197, v198, v199);
      v200 = v573;
      (*(v587 + 32))(v573, v104, v195);
      v201 = v585;
      v202 = *(v585 + 104);
      v203 = v582;
      v204 = v578;
      if (v202 != 255)
      {
        v206 = *v585;
        v205 = *(v585 + 1);
        v207 = v585[4];
        v615 = v585[3];
        v616 = v207;
        v617 = v585[5];
        v618 = *(v585 + 12);
        v208 = v585[2];
        v613 = v585[1];
        v614 = v208;
        (v581[2])(v572, &v200[*(v195 + 44)], v583);
        v209 = swift_getEnumCaseMultiPayload();
        if (v209 > 1)
        {
          if (v209 == 2)
          {
            v248 = v573;
            if ((v202 & 1) == 0)
            {
              v249 = *v572;
              *&v611 = 0;
              v600[4] = v638;
              v600[5] = v639[0];
              *(&v600[5] + 9) = *(v639 + 9);
              v600[0] = v634;
              v600[1] = v635;
              v600[2] = v636;
              v600[3] = v637;
              sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
              v206(&v602, &v611);
              v250 = v602;
              *&v602 = v206;
              *(&v602 + 1) = v205;
              v603[2] = v615;
              v603[3] = v616;
              v603[4] = v617;
              *&v603[5] = v618;
              v603[0] = v613;
              v603[1] = v614;
              sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v251);
              v253 = sub_1AAF3C45C(v589.i64[0], v249, v252, v580, v584, v579);
              v254 = *(v253 + 16);
              if (v254)
              {
                *&v602 = MEMORY[0x1E69E7CC0];
                sub_1AAD41468(0, v254, 0);
                v106 = v602;
                v255 = *(v602 + 16);
                v256 = 16 * v255;
                v257 = 32;
                do
                {
                  v258 = *(v253 + v257);
                  *&v602 = v106;
                  v259 = *(v106 + 24);
                  v260 = v255 + 1;
                  if (v255 >= v259 >> 1)
                  {
                    sub_1AAD41468((v259 > 1), v255 + 1, 1);
                    v106 = v602;
                  }

                  *(v106 + 16) = v260;
                  v261 = v106 + v256;
                  *(v261 + 32) = v250;
                  *(v261 + 40) = v258;
                  v256 += 16;
                  v257 += 8;
                  v255 = v260;
                  --v254;
                }

                while (v254);

                sub_1AAE52094(v585);
                (*(v587 + 8))(v248, v195);
                return v106;
              }

              sub_1AAE52094(v201);
              (*(v587 + 8))(v248, v195);
              return MEMORY[0x1E69E7CC0];
            }

            LODWORD(v538) = 0;
            v525 = 409;
LABEL_193:
            v537 = v525;
            goto LABEL_194;
          }

          if (v209 == 3)
          {
            v600[4] = v638;
            v600[5] = v639[0];
            *(&v600[5] + 9) = *(v639 + 9);
            v600[0] = v634;
            v600[1] = v635;
            v600[2] = v636;
            v600[3] = v637;
            sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
            (v581[1])(v572, v583);
          }

          else
          {
            v531 = v572;
            v600[4] = v638;
            v600[5] = v639[0];
            *(&v600[5] + 9) = *(v639 + 9);
            v600[0] = v634;
            v600[1] = v635;
            v600[2] = v636;
            v600[3] = v637;
            sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);

            sub_1AAF90774();
            v532 = v564;
            v533 = v566;
            v534 = swift_getTupleTypeMetadata3();
            v535 = *(v534 + 48);
            (*(v565 + 8))(&v531[*(v534 + 64)], v533);
            (*(v563 + 8))(&v531[v535], v532);
          }
        }

        else
        {
          if (!v209)
          {
            v210 = v557;
            (*(v204 + 32))(v557, v572, v203);
            v211 = v573;
            if ((v202 & 1) == 0)
            {
              *&v611 = 0;
              v600[4] = v638;
              v600[5] = v639[0];
              *(&v600[5] + 9) = *(v639 + 9);
              v600[0] = v634;
              v600[1] = v635;
              v600[2] = v636;
              v600[3] = v637;
              sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
              v206(&v602, &v611);
              v212 = v602;
              *&v602 = v206;
              *(&v602 + 1) = v205;
              v603[2] = v615;
              v603[3] = v616;
              v603[4] = v617;
              *&v603[5] = v618;
              v603[0] = v613;
              v603[1] = v614;
              sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v213);
              sub_1AAF3CCD4(v210, v214, v203, v584);
              v215 = v611;
              sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
              v106 = swift_allocObject();
              *(v106 + 16) = xmmword_1AAF92AB0;
              *(v106 + 32) = v212;
              *(v106 + 40) = v215;
              sub_1AAE52094(v201);
              (*(v204 + 8))(v210, v203);
              (*(v587 + 8))(v211, v195);
              return v106;
            }

            LODWORD(v538) = 0;
            v525 = 418;
            goto LABEL_193;
          }

          v522 = *(swift_getTupleTypeMetadata2() + 48);
          v600[4] = v638;
          v600[5] = v639[0];
          *(&v600[5] + 9) = *(v639 + 9);
          v600[0] = v634;
          v600[1] = v635;
          v600[2] = v636;
          v600[3] = v637;
          sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
          v523 = *(v204 + 8);
          v524 = v572;
          v523(&v572[v522], v203);
          v523(v524, v203);
        }

        LODWORD(v538) = 0;
        v525 = 421;
        goto LABEL_193;
      }

      LODWORD(v538) = 0;
      v517 = 401;
    }

    v537 = v517;
    goto LABEL_194;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v160 = v586;
    v161 = *(swift_getTupleTypeMetadata2() + 48);
    v162 = *(v587 + 32);
    v163 = v571;
    v162(v571, v104, v160);
    v164 = &v104[v161];
    v165 = v570;
    v162(v570, v164, v160);
    LODWORD(v575) = *(v585 + 104);
    if (v575 == 255)
    {
      LODWORD(v538) = 0;
      v537 = 424;
      goto LABEL_194;
    }

    v588 = *(v585 + 2);
    LODWORD(v576) = *(v585 + 24);
    v623 = *v585;
    v166 = *(v585 + 57);
    *(v622 + 15) = *(v585 + 88);
    v167 = *(v585 + 73);
    v621 = v166;
    v622[0] = v167;
    v168 = *(v585 + 25);
    v620 = *(v585 + 41);
    v619 = v168;
    v169 = *(v160 + 44);
    v170 = v581[2];
    v171 = &v163[v169];
    v172 = &v577[*(TupleTypeMetadata2 + 48)];
    v173 = v583;
    v170(v577, v171, v583);
    v170(v172, &v165[v169], v173);
    v174 = swift_getEnumCaseMultiPayload();
    if (v174 <= 1)
    {
      if (!v174)
      {
        v170(v81, v577, v583);
        v175 = swift_getEnumCaseMultiPayload();
        v176 = v586;
        v177 = v582;
        v178 = v172;
        v179 = v558;
        v180 = v559;
        if (!v175)
        {
          v181 = *(v578 + 32);
          v181(v558, v81, v582);
          v181(v180, v178, v177);
          if (v575)
          {
            v629 = v623;
            v182 = v576;
            LOBYTE(v595) = v576;
            v592 = v621;
            v593[0] = v622[0];
            *(v593 + 15) = *(v622 + 15);
            v590 = v619;
            v591 = v620;
            sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
            v183 = swift_allocObject();
            *(v183 + 16) = xmmword_1AAF92AB0;
            v611 = v623;
            v184 = v588;
            *v612 = v588;
            BYTE8(v612[0]) = v182;
            *(&v612[1] + 9) = v620;
            *(&v612[2] + 9) = v621;
            *(&v612[3] + 9) = v622[0];
            *(&v612[4] + 8) = *(v622 + 15);
            *(v612 + 9) = v619;
            v600[0] = v634;
            v600[1] = v635;
            *(&v600[5] + 9) = *(v639 + 9);
            v600[4] = v638;
            v600[5] = v639[0];
            v600[2] = v636;
            v600[3] = v637;
            sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
            sub_1AAE28BBC(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], v185);
            v187 = v186;
            sub_1AAF3C35C(v179, v186, v177);
            *(v183 + 32) = *&v602 + a7 + a9;
            v602 = v629;
            *v603 = v184;
            BYTE8(v603[0]) = v595;
            *(&v603[1] + 9) = v591;
            *(&v603[2] + 9) = v592;
            *(&v603[3] + 9) = v593[0];
            *(&v603[4] + 8) = *(v593 + 15);
            *(v603 + 9) = v590;
            sub_1AAF3C35C(v180, v187, v177);
            v188 = v184;
            if (v595)
            {
              v188 = 0.0;
            }

            v189 = v183;
            *(v183 + 40) = *&v611 + v188 + a8 - a10;
          }

          else
          {
            v629 = v623;
            v592 = v621;
            v593[0] = v622[0];
            *(v593 + 15) = *(v622 + 15);
            v590 = v619;
            v591 = v620;
            sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
            v270 = swift_allocObject();
            *(v270 + 16) = xmmword_1AAF92AB0;
            v611 = v623;
            v271 = v588;
            *v612 = v588;
            v272 = v576;
            BYTE8(v612[0]) = v576;
            *(&v612[1] + 9) = v620;
            *(&v612[2] + 9) = v621;
            *(&v612[3] + 9) = v622[0];
            *(&v612[4] + 8) = *(v622 + 15);
            *(v612 + 9) = v619;
            v600[0] = v634;
            v600[1] = v635;
            *(&v600[5] + 9) = *(v639 + 9);
            v600[4] = v638;
            v600[5] = v639[0];
            v600[2] = v636;
            v600[3] = v637;
            sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
            sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v273);
            v275 = v274;
            v276 = v584;
            sub_1AAF3CCD4(v179, v274, v177, v584);
            v602 = v629;
            *v603 = v271;
            BYTE8(v603[0]) = v272;
            v176 = v586;
            *(&v603[1] + 9) = v591;
            *(&v603[2] + 9) = v592;
            *(&v603[3] + 9) = v593[0];
            *(&v603[4] + 8) = *(v593 + 15);
            *(v603 + 9) = v590;
            v189 = v270;
            sub_1AAF3CCD4(v180, v275, v177, v276);
          }

          sub_1AAE52094(v585);
          v277 = v179;
          v279 = v570;
          v278 = v571;
          v280 = *(v578 + 8);
          v280(v180, v177);
          v280(v277, v177);
          v281 = *(v587 + 8);
          v281(v279, v176);
          v282 = v278;
          v283 = v176;
          goto LABEL_142;
        }

        v600[4] = v638;
        v600[5] = v639[0];
        *(&v600[5] + 9) = *(v639 + 9);
        v600[0] = v634;
        v600[1] = v635;
        v600[2] = v636;
        v600[3] = v637;
        sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        (*(v578 + 8))(v81, v177);
        goto LABEL_190;
      }

      v170(v539[0], v577, v583);
      v518 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v600[4] = v638;
        v600[5] = v639[0];
        *(&v600[5] + 9) = *(v639 + 9);
        v600[0] = v634;
        v600[1] = v635;
        v600[2] = v636;
        v600[3] = v637;
        sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        v519 = *(v578 + 8);
        v520 = v582;
        v519(&v172[v518], v582);
        v519(v172, v520);
        v521 = v539[0];
        v519((v539[0] + v518), v520);
        v519(v521, v520);
        (v581[1])(v577, v583);
LABEL_183:
        LODWORD(v538) = 0;
        v537 = 444;
        goto LABEL_194;
      }

      v600[4] = v638;
      v600[5] = v639[0];
      *(&v600[5] + 9) = *(v639 + 9);
      v600[0] = v634;
      v600[1] = v635;
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      v527 = *(v578 + 8);
      v528 = v539[0];
      v529 = v539[0] + v518;
      v530 = v582;
      v527(v529, v582);
      v527(v528, v530);
      goto LABEL_190;
    }

    if (v174 != 2)
    {
      if (v174 == 3 && swift_getEnumCaseMultiPayload() == 3)
      {
        v600[4] = v638;
        v600[5] = v639[0];
        *(&v600[5] + 9) = *(v639 + 9);
        v600[0] = v634;
        v600[1] = v635;
        v600[2] = v636;
        v600[3] = v637;
        sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        v526 = v581[1];
        v526(v172, v583);
        v526(v577, v583);
        goto LABEL_183;
      }

      v600[4] = v638;
      v600[5] = v639[0];
      *(&v600[5] + 9) = *(v639 + 9);
      v600[0] = v634;
      v600[1] = v635;
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
LABEL_190:
      LODWORD(v538) = 0;
      v525 = 446;
      goto LABEL_193;
    }

    v170(v84, v577, v583);
    v217 = *v84;
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v600[4] = v638;
      v600[5] = v639[0];
      *(&v600[5] + 9) = *(v639 + 9);
      v600[0] = v634;
      v600[1] = v635;
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);

      goto LABEL_190;
    }

    v218 = *v172;
    v219 = v588;
    v582 = v217;
    if (v575)
    {
      v592 = v621;
      v593[0] = v622[0];
      *(v593 + 15) = *(v622 + 15);
      v590 = v619;
      v591 = v620;
      v629 = v623;
      v611 = v623;
      LOBYTE(v595) = v576;
      *v612 = v588;
      BYTE8(v612[0]) = v576;
      *(&v612[1] + 9) = v620;
      *(&v612[2] + 9) = v621;
      *(&v612[3] + 9) = v622[0];
      *(&v612[4] + 8) = *(v622 + 15);
      *(v612 + 9) = v619;
      v600[0] = v634;
      v600[1] = v635;
      *(&v600[5] + 9) = *(v639 + 9);
      v600[4] = v638;
      v600[5] = v639[0];
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE8432C(v585, &v602, sub_1AACCF364);
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], v220);
      v222 = v221;
      v223 = v589.i64[0];
      v224 = v217;
      v226 = v579;
      v225 = v580;
      v227 = v584;
      v228 = sub_1AAF3CB18(v589.i64[0], v224, v221, v580, v584, v579);
      v602 = v629;
      *(&v603[1] + 9) = v591;
      *(&v603[2] + 9) = v592;
      *(&v603[3] + 9) = v593[0];
      *(&v603[4] + 8) = *(v593 + 15);
      *v603 = v219;
      BYTE8(v603[0]) = v595;
      *(v603 + 9) = v590;
      v576 = v218;
      v229 = sub_1AAF3CB18(v223, v218, v222, v225, v227, v226);
      v230 = v229;
      v584 = v539;
      v231 = *(v228 + 16);
      v232 = *(v229 + 16);
      if (v232 >= v231)
      {
        v233 = *(v228 + 16);
      }

      else
      {
        v233 = *(v229 + 16);
      }

      *&v602 = MEMORY[0x1E69E7CC0];
      sub_1AAD41468(0, v233, 0);
      v234 = v602;
      v578 = v228;
      v589.i64[0] = v230;
      if (v233)
      {
        v235 = (v228 + 32);
        v236 = (v230 + 32);
        if (v595)
        {
          v237 = 0.0;
        }

        else
        {
          v237 = v588;
        }

        v238 = v233;
        v239 = v231;
        v240 = v232;
        v241 = v231;
        v242 = v232;
        while (v239)
        {
          if (!v240)
          {
            goto LABEL_165;
          }

          v243 = *v235;
          v244 = *v236;
          *&v602 = v234;
          v246 = *(v234 + 16);
          v245 = *(v234 + 24);
          if (v246 >= v245 >> 1)
          {
            v579 = v242;
            v580 = v241;
            sub_1AAD41468((v245 > 1), v246 + 1, 1);
            v242 = v579;
            v241 = v580;
            v234 = v602;
          }

          *(v234 + 16) = v246 + 1;
          v247 = v234 + 16 * v246;
          --v240;
          *(v247 + 32) = v243 + a7 + a9;
          *(v247 + 40) = v237 + v244 + a8 - a10;
          --v239;
          ++v236;
          ++v235;
          if (!--v238)
          {
            goto LABEL_130;
          }
        }

        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v241 = v231;
      v242 = v232;
LABEL_130:
      v363 = v586;
      if (v241 > v242)
      {
        v364 = v578;
        v365 = v589.i64[0] + 32;
        if (v595)
        {
          v366 = 0.0;
        }

        else
        {
          v366 = v588;
        }

        while (v233 < v241)
        {
          v367 = (v233 + 1);
          if (__OFADD__(v233, 1))
          {
            goto LABEL_168;
          }

          if (v242 != v233)
          {
            if (v233 >= v242)
            {
              goto LABEL_169;
            }

            v368 = *(v364 + 32 + 8 * v233);
            v369 = *(v365 + 8 * v233);
            *&v602 = v234;
            v371 = *(v234 + 16);
            v370 = *(v234 + 24);
            if (v371 >= v370 >> 1)
            {
              v579 = v242;
              v580 = v241;
              sub_1AAD41468((v370 > 1), v371 + 1, 1);
              v242 = v579;
              v241 = v580;
              v234 = v602;
            }

            *(v234 + 16) = v371 + 1;
            v372 = v234 + 16 * v371;
            *(v372 + 32) = v368 + a7 + a9;
            *(v372 + 40) = v369 + v366 + a8 - a10;
            ++v233;
            if (v367 != v241)
            {
              continue;
            }
          }

          goto LABEL_141;
        }

LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        LODWORD(v538) = 0;
        v537 = 449;
        goto LABEL_194;
      }

LABEL_141:
      v189 = v234;

      v373 = v585;
      sub_1AAE52094(v585);

      sub_1AAE52094(v373);
      v281 = *(v587 + 8);
      v281(v570, v363);
      v282 = v571;
      v283 = v363;
    }

    else
    {
      v592 = v621;
      v593[0] = v622[0];
      *(v593 + 15) = *(v622 + 15);
      v590 = v619;
      v591 = v620;
      v629 = v623;
      v611 = v623;
      *v612 = v588;
      BYTE8(v612[0]) = v576;
      *(&v612[1] + 9) = v620;
      *(&v612[2] + 9) = v621;
      *(&v612[3] + 9) = v622[0];
      *(&v612[4] + 8) = *(v622 + 15);
      *(v612 + 9) = v619;
      v600[0] = v634;
      v600[1] = v635;
      *(&v600[5] + 9) = *(v639 + 9);
      v600[4] = v638;
      v600[5] = v639[0];
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v284);
      v286 = v285;
      v287 = v219;
      v288 = v589.i64[0];
      v289 = v217;
      v290 = v580;
      v291 = v584;
      v292 = v218;
      v293 = v579;
      v294 = sub_1AAF3C45C(v589.i64[0], v289, v285, v580, v584, v579);
      v602 = v629;
      *(&v603[1] + 9) = v591;
      *(&v603[2] + 9) = v592;
      *(&v603[3] + 9) = v593[0];
      *(&v603[4] + 8) = *(v593 + 15);
      *v603 = v287;
      BYTE8(v603[0]) = v576;
      *(v603 + 9) = v590;
      v295 = sub_1AAF3C45C(v288, v292, v286, v290, v291, v293);
      sub_1AAF2F80C(v294, v295);
      v189 = v296;

      sub_1AAE52094(v585);
      v297 = v586;
      v281 = *(v587 + 8);
      v281(v570, v586);
      v282 = v571;
      v283 = v297;
    }

LABEL_142:
    v281(v282, v283);
    (v581[1])(v577, v583);
    return v189;
  }

  v112 = v586;
  v113 = v568;
  (*(v587 + 32))(v568, v104, v586);
  v114 = v585;
  v115 = *(v585 + 104);
  if (v115 == 255)
  {
    goto LABEL_170;
  }

  v116 = *(v585 + 2);
  LODWORD(v588) = *(v585 + 24);
  v628 = *v585;
  v117 = *(v585 + 73);
  v626 = *(v585 + 57);
  v627[0] = v117;
  *(v627 + 15) = *(v585 + 88);
  v118 = *(v585 + 25);
  v625 = *(v585 + 41);
  v624 = v118;
  (v581[2])(v575, &v113[*(v112 + 44)], v583);
  v119 = swift_getEnumCaseMultiPayload();
  if (v119 <= 1)
  {
    if (v119)
    {
      v336 = v582;
      v337 = *(swift_getTupleTypeMetadata2() + 48);
      v338 = *(v578 + 32);
      v339 = v575;
      v338(v551, v575, v336);
      v338(v552, &v339[v337], v336);
      if (v115)
      {
        LODWORD(v538) = 0;
        v536 = 481;
        goto LABEL_201;
      }

      v629 = v628;
      v592 = v626;
      v593[0] = v627[0];
      *(v593 + 15) = *(v627 + 15);
      v590 = v624;
      v591 = v625;
      sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
      v340 = swift_allocObject();
      *(v340 + 16) = xmmword_1AAF92AB0;
      v611 = v628;
      *v612 = v116;
      BYTE8(v612[0]) = LOBYTE(v588);
      *(&v612[1] + 9) = v625;
      *(&v612[2] + 9) = v626;
      *(&v612[3] + 9) = v627[0];
      *(&v612[4] + 8) = *(v627 + 15);
      *(v612 + 9) = v624;
      v600[0] = v634;
      v600[1] = v635;
      *(&v600[5] + 9) = *(v639 + 9);
      v600[4] = v638;
      v600[5] = v639[0];
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v341);
      v343 = v342;
      v344 = v551;
      v345 = v584;
      sub_1AAF3CCD4(v551, v342, v336, v584);
      v602 = v629;
      *v603 = v116;
      BYTE8(v603[0]) = LOBYTE(v588);
      *(&v603[1] + 9) = v591;
      *(&v603[2] + 9) = v592;
      *(&v603[3] + 9) = v593[0];
      *(&v603[4] + 8) = *(v593 + 15);
      *(v603 + 9) = v590;
      v346 = v552;
      sub_1AAF3CCD4(v552, v343, v336, v345);
      sub_1AAE52094(v114);
      v347 = *(v578 + 8);
      v347(v346, v336);
      v347(v344, v336);
      v106 = v340;
    }

    else
    {
      v262 = v578;
      v263 = v582;
      (*(v578 + 32))(v555, v575, v582);
      if (v115)
      {
        v611 = v628;
        LOBYTE(v590) = LOBYTE(v588);
        *v612 = v116;
        BYTE8(v612[0]) = LOBYTE(v588);
        *(&v612[1] + 9) = v625;
        *(&v612[2] + 9) = v626;
        *(&v612[3] + 9) = v627[0];
        *(&v612[4] + 8) = *(v627 + 15);
        *(v612 + 9) = v624;
        v600[0] = v634;
        v600[1] = v635;
        *(&v600[5] + 9) = *(v639 + 9);
        v600[4] = v638;
        v600[5] = v639[0];
        v600[2] = v636;
        v600[3] = v637;
        sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        sub_1AAE28BBC(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], v264);
        v265 = v555;
        sub_1AAF3C35C(v555, v266, v263);
        v267 = *&v602;
        sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
        v268 = swift_allocObject();
        v106 = v268;
        *(v268 + 16) = xmmword_1AAF92AB0;
        v269 = v116;
        if (v590)
        {
          v269 = 0.0;
        }

        *(v268 + 32) = v267 + a7 + a9;
        *(v268 + 40) = v267 + v269 + a8 - a10;
      }

      else
      {
        v611 = v628;
        *v612 = v116;
        BYTE8(v612[0]) = LOBYTE(v588);
        *(&v612[1] + 9) = v625;
        *(&v612[2] + 9) = v626;
        *(&v612[3] + 9) = v627[0];
        *(&v612[4] + 8) = *(v627 + 15);
        *(v612 + 9) = v624;
        v600[0] = v634;
        v600[1] = v635;
        *(&v600[5] + 9) = *(v639 + 9);
        v600[4] = v638;
        v600[5] = v639[0];
        v600[2] = v636;
        v600[3] = v637;
        sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v360);
        v265 = v555;
        sub_1AAF3CCD4(v555, v361, v263, v584);
        v362 = v602;
        sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1AAF92AB0;
        *(v106 + 32) = v362;
        *(v106 + 40) = v362;
      }

      sub_1AAE52094(v114);
      (*(v262 + 8))(v265, v263);
    }

    (*(v587 + 8))(v113, v586);
    return v106;
  }

  if (v119 == 2)
  {
    v298 = *v575;
    if (v115)
    {
      v611 = v628;
      LOBYTE(v590) = LOBYTE(v588);
      *v612 = v116;
      BYTE8(v612[0]) = LOBYTE(v588);
      *(&v612[1] + 9) = v625;
      *(&v612[2] + 9) = v626;
      *(&v612[3] + 9) = v627[0];
      *(&v612[4] + 8) = *(v627 + 15);
      *(v612 + 9) = v624;
      v600[0] = v634;
      v600[1] = v635;
      *(&v600[5] + 9) = *(v639 + 9);
      v600[4] = v638;
      v600[5] = v639[0];
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, qword_1ED9B40B8, MEMORY[0x1E69E6158], v299);
      v301 = sub_1AAF3CB18(v589.i64[0], v298, v300, v580, v584, v579);
      v302 = *(v301 + 16);
      if (v302)
      {
        *&v602 = MEMORY[0x1E69E7CC0];
        sub_1AAD41468(0, v302, 0);
        v106 = v602;
        if (v590)
        {
          v303 = 0.0;
        }

        else
        {
          v303 = v116;
        }

        v304 = *(v602 + 16);
        v305 = 16 * v304;
        v306 = 32;
        v307 = v586;
        do
        {
          v308 = *(v301 + v306);
          *&v602 = v106;
          v309 = *(v106 + 24);
          v310 = v304 + 1;
          if (v304 >= v309 >> 1)
          {
            sub_1AAD41468((v309 > 1), v304 + 1, 1);
            v106 = v602;
          }

          *(v106 + 16) = v310;
          v311 = v106 + v305;
          *(v311 + 32) = v308 + a7 + a9;
          *(v311 + 40) = v303 + v308 + a8 - a10;
          v305 += 16;
          v306 += 8;
          v304 = v310;
          --v302;
        }

        while (v302);

LABEL_153:
        sub_1AAE52094(v585);
        (*(v587 + 8))(v568, v307);
        return v106;
      }
    }

    else
    {
      v611 = v628;
      *v612 = v116;
      BYTE8(v612[0]) = LOBYTE(v588);
      *(&v612[1] + 9) = v625;
      *(&v612[2] + 9) = v626;
      *(&v612[3] + 9) = v627[0];
      *(&v612[4] + 8) = *(v627 + 15);
      *(v612 + 9) = v624;
      v600[0] = v634;
      v600[1] = v635;
      *(&v600[5] + 9) = *(v639 + 9);
      v600[4] = v638;
      v600[5] = v639[0];
      v600[2] = v636;
      v600[3] = v637;
      sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v352);
      v354 = sub_1AAF3C45C(v589.i64[0], v298, v353, v580, v584, v579);
      v355 = *(v354 + 16);
      if (v355)
      {
        *&v602 = MEMORY[0x1E69E7CC0];
        sub_1AAD41468(0, v355, 0);
        v106 = v602;
        v357 = *(v602 + 16);
        v358 = 32;
        v307 = v586;
        do
        {
          v356.i64[0] = *(v354 + v358);
          *&v602 = v106;
          v359 = *(v106 + 24);
          if (v357 >= v359 >> 1)
          {
            v589 = v356;
            sub_1AAD41468((v359 > 1), v357 + 1, 1);
            v356.i64[0] = v589.i64[0];
            v106 = v602;
          }

          *(v106 + 16) = v357 + 1;
          v356 = vdupq_lane_s64(v356.i64[0], 0);
          *(v106 + 16 * v357 + 32) = v356;
          v358 += 8;
          ++v357;
          --v355;
        }

        while (v355);

        goto LABEL_153;
      }
    }

    sub_1AAE52094(v585);
LABEL_147:
    (*(v587 + 8))(v568, v586);
    return MEMORY[0x1E69E7CC0];
  }

  if (v119 == 3)
  {
    if (v115)
    {
      while (1)
      {
        LODWORD(v538) = 0;
        v536 = 465;
LABEL_201:
        v537 = v536;
LABEL_194:
        sub_1AAF902C4();
        __break(1u);
      }
    }

    v592 = v626;
    v593[0] = v627[0];
    *(v593 + 15) = *(v627 + 15);
    v590 = v624;
    v591 = v625;
    v629 = v628;
    v611 = v628;
    v120 = *(v575 + 1);
    v582 = *v575;
    v121 = v582;
    v583 = v120;
    *v612 = v116;
    v122 = LOBYTE(v588);
    BYTE8(v612[0]) = LOBYTE(v588);
    *(&v612[1] + 9) = v625;
    *(&v612[2] + 9) = v626;
    *(&v612[3] + 9) = v627[0];
    *(&v612[4] + 8) = *(v627 + 15);
    *(v612 + 9) = v624;
    v600[0] = v634;
    v600[1] = v635;
    *(&v600[5] + 9) = *(v639 + 9);
    v600[4] = v638;
    v600[5] = v639[0];
    v600[2] = v636;
    v600[3] = v637;
    sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
    sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v123);
    v125 = v124;
    v126 = v589.i64[0];
    v127 = v121;
    v128 = v116;
    v130 = v579;
    v129 = v580;
    v131 = v584;
    v132 = sub_1AAF3C45C(v589.i64[0], v127, v124, v580, v584, v579);
    v602 = v629;
    *(&v603[1] + 9) = v591;
    *(&v603[2] + 9) = v592;
    *(&v603[3] + 9) = v593[0];
    *(&v603[4] + 8) = *(v593 + 15);
    *v603 = v128;
    BYTE8(v603[0]) = v122;
    *(v603 + 9) = v590;
    v133 = sub_1AAF3C45C(v126, v583, v125, v129, v131, v130);
    sub_1AAF2F80C(v132, v133);
    v106 = v134;

    sub_1AAE52094(v585);
    (*(v587 + 8))(v568, v586);
    return v106;
  }

  v313 = v575;
  v583 = *v575;
  sub_1AAF90774();
  v314 = v564;
  v315 = v566;
  v316 = swift_getTupleTypeMetadata3();
  v317 = *(v316 + 64);
  v318 = v549;
  (*(v563 + 32))(v549, &v313[*(v316 + 48)], v314);
  v319 = &v313[v317];
  v320 = v550;
  (*(v565 + 32))(v550, v319, v315);
  if (v115)
  {
    LODWORD(v538) = 0;
    v525 = 491;
    goto LABEL_193;
  }

  v611 = v628;
  *v612 = v116;
  BYTE8(v612[0]) = LOBYTE(v588);
  *(&v612[1] + 9) = v625;
  *(&v612[2] + 9) = v626;
  *(&v612[3] + 9) = v627[0];
  *(&v612[4] + 8) = *(v627 + 15);
  *(v612 + 9) = v624;
  v600[0] = v634;
  v600[1] = v635;
  *(&v600[5] + 9) = *(v639 + 9);
  v600[4] = v638;
  v600[5] = v639[0];
  v600[2] = v636;
  v600[3] = v637;
  sub_1AAE7B790(v600, &v602, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
  sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], v321);
  v323 = sub_1AAF3CD40(v589.i64[0], v583, v318, v320, v322, v580, v584, v579);
  v324 = *(v323 + 16);
  if (!v324)
  {

    sub_1AAE52094(v585);
    (*(v565 + 8))(v320, v566);
    (*(v563 + 8))(v318, v564);
    goto LABEL_147;
  }

  *&v602 = MEMORY[0x1E69E7CC0];
  sub_1AAD41468(0, v324, 0);
  v325 = 0;
  v106 = v602;
  v326 = (v323 + 40);
  v327 = v586;
  do
  {
    if (v325 >= *(v323 + 16))
    {
      goto LABEL_166;
    }

    v328 = *(v326 - 1);
    v329 = *v326;
    *&v602 = v106;
    v331 = *(v106 + 16);
    v330 = *(v106 + 24);
    if (v331 >= v330 >> 1)
    {
      sub_1AAD41468((v330 > 1), v331 + 1, 1);
      v106 = v602;
    }

    ++v325;
    *(v106 + 16) = v331 + 1;
    *(v106 + 16 * v331 + 32) = vdupq_lane_s64(COERCE__INT64((v328 + v329) * 0.5), 0);
    v326 += 2;
  }

  while (v324 != v325);

  sub_1AAE52094(v585);
  (*(v565 + 8))(v550, v566);
  (*(v563 + 8))(v549, v564);
  (*(v587 + 8))(v568, v327);
  return v106;
}

double sub_1AAE837A8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>, double a8@<D0>, double a9@<D1>, uint64_t a10)
{
  sub_1AAE28BBC(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], a3);
  v18 = v17;
  sub_1AAF3CCD4(a3, v17, a6, a10);
  sub_1AAF3CCD4(a4, v18, a6, a10);
  v21 = type metadata accessor for MappedCoefficients(0, a5, v19, v20);
  result = sub_1AAE643A8(a1, v21, v26, v25) + a8;
  *a7 = result;
  a7[1] = v23 + a9;
  return result;
}

uint64_t sub_1AAE838F8(uint64_t a1)
{
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE83970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {
    if (a6 < 0)
    {
      if (a3)
      {
        if ((a6 & 1) != 0 && *&a1 == *&a4 && *&a2 == *&a5)
        {
          return 1;
        }
      }

      else if ((a6 & 1) == 0 && *&a1 == *&a4 && *&a2 == *&a5)
      {
        return 1;
      }
    }
  }

  else if ((a6 & 0x80) == 0)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1 && *&a1 == *&a4)
        {
          return 1;
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        if (sub_1AAF904F4())
        {
          return 1;
        }
      }
    }

    else if (!a6 && *&a1 == *&a4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1AAE83A88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, char a18, uint64_t a19, double a20, double a21, char a22)
{
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

  if (a7 < 0)
  {
    if (a22 < 0)
    {
      if (a7)
      {
        if ((a22 & 1) == 0)
        {
          return 0;
        }
      }

      else if (a22)
      {
        return 0;
      }

      return *&a5 == a20 && *&a6 == a21;
    }

    return 0;
  }

  if (a22 < 0)
  {
    return 0;
  }

  if (!a7)
  {
    if (!a22)
    {
      return *&a5 == a20;
    }

    return 0;
  }

  if (a7 != 1)
  {
    return a22 == 2 && (a5 == *&a20 && a6 == *&a21 || (sub_1AAF904F4() & 1) != 0);
  }

  if (a22 != 1)
  {
    return 0;
  }

  return *&a5 == a20;
}

__n128 sub_1AAE83B9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for PlottableValue(0, a2, a3, a4);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - v11);
  (*(v13 + 16))(v18 - v11, a1, v10);
  sub_1AACD6F84(v12, a2, a3, v18);
  sub_1AAE4637C(v18);
  v14 = v18[7];
  *(a5 + 96) = v18[6];
  *(a5 + 112) = v14;
  *(a5 + 128) = v18[8];
  v15 = v18[3];
  *(a5 + 32) = v18[2];
  *(a5 + 48) = v15;
  v16 = v18[5];
  *(a5 + 64) = v18[4];
  *(a5 + 80) = v16;
  result = v18[1];
  *a5 = v18[0];
  *(a5 + 16) = result;
  return result;
}

__n128 sub_1AAE83CB0@<Q0>(uint64_t a4@<X8>)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  *&v12 = v11;
  BYTE8(v12) = 0;
  v13.n128_u64[0] = v10;
  v13.n128_u8[8] = 0;
  sub_1AAE52D28(&v12);
  v6 = v19;
  *(a4 + 96) = v18;
  *(a4 + 112) = v6;
  *(a4 + 128) = v20;
  v7 = v15;
  *(a4 + 32) = v14;
  *(a4 + 48) = v7;
  v8 = v17;
  *(a4 + 64) = v16;
  *(a4 + 80) = v8;
  result = v13;
  *a4 = v12;
  *(a4 + 16) = result;
  return result;
}

__n128 sub_1AAE83D50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a2;
  v9 = type metadata accessor for PlottableValue(0, a3, a4, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v19 - v12);
  v14 = *(v10 + 16);
  v14(&v19 - v12, a1, v9, v11);
  sub_1AACD6F84(v13, a3, a4, &v20);
  (v14)(v13, v19, v9);
  sub_1AACD6F84(v13, a3, a4, v29 + 8);
  *&v29[0] = v24;
  v27 = v22;
  v28 = v23;
  v25 = v20;
  v26 = v21;
  v36 = v29[2];
  v37 = v29[3];
  v38 = v29[4];
  v32 = v22;
  v33 = v23;
  v30 = v20;
  v31 = v21;
  v34 = v29[0];
  v35 = v29[1];
  sub_1AAE52954(&v30);
  v15 = v37;
  *(a5 + 96) = v36;
  *(a5 + 112) = v15;
  *(a5 + 128) = v38;
  v16 = v33;
  *(a5 + 32) = v32;
  *(a5 + 48) = v16;
  v17 = v35;
  *(a5 + 64) = v34;
  *(a5 + 80) = v17;
  result = v31;
  *a5 = v30;
  *(a5 + 16) = result;
  return result;
}

__n128 sub_1AAE83EF8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for PlottableValue(0, a4, a5, a4);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v21 - v14);
  (*(v16 + 16))(v21 - v14, a1, v13);
  sub_1AACD6F84(v15, a4, a5, v21);
  *(&v22 + 1) = a2;
  LOBYTE(v23) = a3;
  sub_1AACD7CA8(v21);
  v17 = v25;
  *(a6 + 96) = v24;
  *(a6 + 112) = v17;
  *(a6 + 128) = v26;
  v18 = v21[3];
  *(a6 + 32) = v21[2];
  *(a6 + 48) = v18;
  v19 = v23;
  *(a6 + 64) = v22;
  *(a6 + 80) = v19;
  result = v21[1];
  *a6 = v21[0];
  *(a6 + 16) = result;
  return result;
}

void sub_1AAE8402C(uint64_t a1)
{
  if (!qword_1EB4261D8)
  {
    sub_1AAE842D8(255, &qword_1ED9B2A88, MEMORY[0x1E69E62F8]);
    sub_1AAE840B8();
    v1 = sub_1AAF90104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4261D8);
    }
  }
}

unint64_t sub_1AAE840B8()
{
  result = qword_1EB4261E0;
  if (!qword_1EB4261E0)
  {
    sub_1AAE842D8(255, &qword_1ED9B2A88, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4261E0);
  }

  return result;
}

void sub_1AAE8412C()
{
  if (!qword_1EB423020)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423020);
    }
  }
}

unint64_t sub_1AAE84188()
{
  result = qword_1EB4261F8[0];
  if (!qword_1EB4261F8[0])
  {
    sub_1AACD6D40(255, &qword_1EB4261F0, sub_1AAE8412C, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4261F8);
  }

  return result;
}

double sub_1AAE84210@<D0>(double *a2@<X8>)
{
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  result = v6 + v8;
  *a2 = v5 + v8;
  a2[1] = v6 + v8;
  return result;
}

double sub_1AAE8428C@<D0>(double *a2@<X8>)
{
  v5 = *(v3 + 56);
  swift_getAtKeyPath();
  result = v5 + v7;
  *a2 = v5 + v7;
  a2[1] = v5 + v7;
  return result;
}

void sub_1AAE842D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAE8432C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AAE843F4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v6 + 64);
  v11 = type metadata accessor for MappedCoefficients(0, *(v6 + 16), a5, a6);
  return v10 + sub_1AAE643A8(a1, v11, a2, a3);
}

void sub_1AAE84468(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  sub_1AAE8412C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a2 = v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
  *(a2 + 8) = v7;
}

double sub_1AAE844E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v7 = *(v4 + 56);
  v8 = *(v4 + 72);
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  v11 = *(v4 + 96);
  v12 = *(v4 + 104);
  v13 = *(v7 + 16);
  if (*(v7 + 24))
  {
    v13 = 0.0;
  }

  v14 = v8 + v13;
  v15 = type metadata accessor for MappedCoefficients(0, *(v4 + 16), a2, a3);
  result = v10 + v9 + sub_1AAE643A8(a1, v15, v8, v14);
  *a4 = result;
  a4[1] = v12 + v17 - v11;
  return result;
}

double sub_1AAE8459C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v7 = *(v4 + 64);
  v8 = *(v4 + 72);
  v9 = *(v4 + 80);
  v10 = type metadata accessor for MappedCoefficients(0, *(v4 + 16), a2, a3);
  result = v8 + sub_1AAE643A8(a1, v10, v7, v7);
  *a4 = result;
  a4[1] = v9 + v12;
  return result;
}

double sub_1AAE84624(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 56);
  v9 = *(v5 + 72);
  v10 = *(v5 + 80);
  v11 = *(v8 + 16);
  if (*(v8 + 24))
  {
    v11 = 0.0;
  }

  v12 = v11 + a2;
  v13 = type metadata accessor for MappedCoefficients(0, *(v5 + 16), a4, a5);
  return v10 + v9 + sub_1AAE643A8(a1, v13, a2, v12);
}

double sub_1AAE846D8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MappedCoefficients(0, *(v5 + 16), a4, a5);
  return v8 + sub_1AAE643A8(a1, v9, a2, a2);
}

void sub_1AAE84748(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a2 = v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *(a2 + 8) = v7;
}

BOOL sub_1AAE84878(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    if (a3)
    {
      v6 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a6 == 1)
  {
    if (a3 != 1)
    {
      v6 = 1;
LABEL_15:
      v7 = v6 < a3;
      return (v7 & 1) == 0;
    }

LABEL_11:
    v7 = *&a4 != *&a1 && *&a4 < *&a1;
    return (v7 & 1) == 0;
  }

  if (a3 != 2)
  {
    v6 = 2;
    goto LABEL_15;
  }

  if (a4 == a1 && a5 == a2)
  {
    v7 = 0;
  }

  else if (sub_1AAF904F4())
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1AAF904F4();
  }

  return (v7 & 1) == 0;
}

BOOL sub_1AAE84974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!a3)
  {
    if (a6)
    {
      v6 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      v6 = 1;
LABEL_15:
      v7 = v6 < a6;
      return (v7 & 1) == 0;
    }

LABEL_11:
    v7 = *&a1 != *&a4 && *&a1 < *&a4;
    return (v7 & 1) == 0;
  }

  if (a6 != 2)
  {
    v6 = 2;
    goto LABEL_15;
  }

  if (a1 == a4 && a2 == a5)
  {
    v7 = 0;
  }

  else if (sub_1AAF904F4())
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1AAF904F4();
  }

  return (v7 & 1) == 0;
}

uint64_t sub_1AAE84A68(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    if (a3)
    {
      v6 = 0;
      return v6 < a3;
    }

    return *&a4 != *&a1 && *&a4 < *&a1;
  }

  if (a6 == 1)
  {
    if (a3 != 1)
    {
      v6 = 1;
      return v6 < a3;
    }

    return *&a4 != *&a1 && *&a4 < *&a1;
  }

  if (a3 != 2)
  {
    v6 = 2;
    return v6 < a3;
  }

  if (a4 == a1 && a5 == a2 || (sub_1AAF904F4() & 1) != 0)
  {
    return 0;
  }

  return sub_1AAF904F4();
}

uint64_t sub_1AAE84B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v17;
  if (v17 == 14)
  {
    v12 = type metadata accessor for CategoryValueBindingBox(0, a2, a3, v10);
  }

  else
  {
    v12 = type metadata accessor for NumberValueBindingBox(0, a2, a3, v10);
  }

  v13 = v11 != 14;
  *(a4 + 24) = v12;
  *(a4 + 32) = swift_getWitnessTable();
  v14 = sub_1AACB2508(a4);
  v15 = sub_1AAF8EF74();
  result = (*(*(v15 - 8) + 32))(v14, a1, v15);
  *(a4 + 40) = v13;
  return result;
}

uint64_t sub_1AAE84CD4()
{
  sub_1AAE8A0B4(v0, v10);
  if (v11)
  {
    sub_1AACBB198(v10, v7);
    v1 = v8;
    v2 = v9;
    sub_1AACBB42C(v7, v8);
    v3 = (*(v2 + 16))(v1, v2);
  }

  else
  {
    sub_1AACBB198(v10, v7);
    v4 = v8;
    v5 = v9;
    sub_1AACBB42C(v7, v8);
    v3 = (*(v5 + 16))(v4, v5);
  }

  sub_1AACB634C(v7);
  return v3;
}

double sub_1AAE84DC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1AAE89AD4(v4, v20);
  if ((v21 & 1) == 0)
  {
    sub_1AACBB198(v20, v17);
    if (a3 != 255)
    {
      if (a3 == 2)
      {
        v10 = v18;
        v11 = v19;
        sub_1AACBB42C(v17, v18);
        (*(v11 + 24))(a1, a2, v10, v11);
        return sub_1AACB634C(v17);
      }

      sub_1AAE2CC54(a1, a2, a3);
    }

    v14 = v18;
    v15 = v19;
    sub_1AACBB42C(v17, v18);
    (*(v15 + 24))(0, 0, v14, v15);
    return sub_1AACB634C(v17);
  }

  sub_1AACBB198(v20, v17);
  if (a3 == 255)
  {
LABEL_9:
    v12 = v18;
    v13 = v19;
    sub_1AACBB42C(v17, v18);
    (*(v13 + 24))(0, 1, v12, v13);
    return sub_1AACB634C(v17);
  }

  if (a3)
  {
    sub_1AAE2CC54(a1, a2, a3);
    goto LABEL_9;
  }

  v8 = v18;
  v9 = v19;
  sub_1AACBB42C(v17, v18);
  (*(v9 + 24))(a1, 0, v8, v9);
  return sub_1AACB634C(v17);
}

void sub_1AAE84F4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  sub_1AAE89C44(v7, v20);
  sub_1AACBB198(v20, v21);
  if (a3 == 255)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    sub_1AAE2CC54(a1, a2, a3);
    goto LABEL_7;
  }

  if (a6)
  {
    if (a6 == 255)
    {
LABEL_8:
      v14 = v22;
      v15 = v23;
      sub_1AACBB42C(v21, v22);
      (*(v15 + 24))(0, 0, 1, v14, v15);
LABEL_9:
      sub_1AACB634C(v21);
      return;
    }

LABEL_7:
    sub_1AAE2CC54(a4, a5, a6);
    goto LABEL_8;
  }

  v16 = v22;
  v17 = v23;
  sub_1AACBB42C(v21, v22);
  if (*&a4 >= *&a1)
  {
    v18 = a1;
  }

  else
  {
    v18 = a4;
  }

  if (*&a1 > *&a4)
  {
    v19 = a1;
  }

  else
  {
    v19 = a4;
  }

  if (*&v18 <= *&v19)
  {
    (*(v17 + 24))(v18, v19, 0, v16, v17);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1AAE85094(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1AAE8A0B4(v4, v19);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  if (v19[40])
  {
    sub_1AAE8A0B4(v19, v18);
    if (!a3)
    {
      v8 = *&a1;
      sub_1AACBB198(v18, v15);
      v9 = v16;
      v10 = v17;
      sub_1AACBB42C(v15, v16);
      (*(v10 + 24))(v9, v10, v8);
      sub_1AACB634C(v15);
      return sub_1AAE04B10(v19);
    }
  }

  else
  {
    sub_1AAE8A0B4(v19, v18);
    if (a3 == 2)
    {
      sub_1AACBB198(v18, v15);
      v11 = v16;
      v12 = v17;
      sub_1AACBB42C(v15, v16);
      v13 = *(v12 + 24);

      v13(a1, a2, v11, v12);
      sub_1AACB634C(v15);
      sub_1AACCA728(a1, a2, 2);
      return sub_1AAE04B10(v19);
    }
  }

  sub_1AACB634C(v18);
  return sub_1AAE89C7C(v19, &qword_1EB426328, &type metadata for AnyPrimitivePlottableBinding, &type metadata for AnyPrimitivePlottable);
}

uint64_t PrimitivePlottableProtocol.init(primitivePlottable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

void sub_1AAE85308(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1AAF8CA64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  if (v9 == a1)
  {
    v11 = v9;
    sub_1AAF8C844();
    if (v8 == *(*(a1 - 8) + 64))
    {
      (*(*(a1 - 8) + 16))(a2, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
      (*(v7 + 8))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      return;
    }
  }

  else
  {
    v13 = a3;
    if (*(*(a1 - 8) + 64) == 8)
    {
      (*(*(a1 - 8) + 16))(a2, &v13, a1, v10);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_1AAE854D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v37, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v37)
  {
    case 1:
      v10 = sub_1AAE8AD04();
      v11 = swift_allocObject();
      v29 = MEMORY[0x1E69E7290];
      v11[2] = a3;
      v11[3] = v29;
      v13 = &protocol witness table for Int16;
      goto LABEL_18;
    case 2:
      v10 = sub_1AAE8ACB0();
      v11 = swift_allocObject();
      v26 = MEMORY[0x1E69E72F0];
      v11[2] = a3;
      v11[3] = v26;
      v13 = &protocol witness table for Int32;
      goto LABEL_18;
    case 3:
      v10 = sub_1AAE8AC5C();
      v11 = swift_allocObject();
      v27 = MEMORY[0x1E69E7360];
      v11[2] = a3;
      v11[3] = v27;
      v13 = &protocol witness table for Int64;
      goto LABEL_18;
    case 4:
      v10 = sub_1AADF24EC();
      v11 = swift_allocObject();
      v22 = MEMORY[0x1E69E6530];
      v11[2] = a3;
      v11[3] = v22;
      v13 = &protocol witness table for Int;
      goto LABEL_18;
    case 5:
      v10 = sub_1AAE8AC08();
      v11 = swift_allocObject();
      v30 = MEMORY[0x1E69E7508];
      v11[2] = a3;
      v11[3] = v30;
      v13 = &protocol witness table for UInt8;
      goto LABEL_18;
    case 6:
      v10 = sub_1AAE8ABB4();
      v11 = swift_allocObject();
      v32 = MEMORY[0x1E69E75F8];
      v11[2] = a3;
      v11[3] = v32;
      v13 = &protocol witness table for UInt16;
      goto LABEL_18;
    case 7:
      v10 = sub_1AAE8AB60();
      v11 = swift_allocObject();
      v28 = MEMORY[0x1E69E7668];
      v11[2] = a3;
      v11[3] = v28;
      v13 = &protocol witness table for UInt32;
      goto LABEL_18;
    case 8:
      v10 = sub_1AAE8AB0C();
      v11 = swift_allocObject();
      v34 = MEMORY[0x1E69E76D8];
      v11[2] = a3;
      v11[3] = v34;
      v13 = &protocol witness table for UInt64;
      goto LABEL_18;
    case 9:
      v10 = sub_1AAE8AAB8();
      v11 = swift_allocObject();
      v25 = MEMORY[0x1E69E6810];
      v11[2] = a3;
      v11[3] = v25;
      v13 = &protocol witness table for UInt;
      goto LABEL_18;
    case 10:
      v18 = sub_1AAE8AA64();
      v19 = swift_allocObject();
      v33 = MEMORY[0x1E69E7788];
      v19[2] = a3;
      v19[3] = v33;
      v21 = &protocol witness table for Float16;
      goto LABEL_16;
    case 11:
      v18 = sub_1AAE8AA10();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E6448];
      v19[2] = a3;
      v19[3] = v20;
      v21 = &protocol witness table for Float;
LABEL_16:
      v19[4] = a4;
      v19[5] = v21;
      v19[6] = v18;
      v19[7] = a1;
      v16 = v19 + 8;
      v17 = sub_1AAE8AEC0;
      break;
    case 12:
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E63B0];
      v23[2] = a3;
      v23[3] = v24;
      v23[4] = a4;
      v23[5] = &protocol witness table for Double;
      v23[6] = a1;
      v16 = v23 + 7;
      v17 = sub_1AAE8B038;
      break;
    case 13:
      v31 = swift_allocObject();
      v31[2] = a3;
      v31[3] = a4;
      v31[4] = a1;
      v16 = v31 + 5;
      v17 = sub_1AAE8AA04;
      break;
    case 14:
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E6158];
      v14[2] = a3;
      v14[3] = v15;
      v14[4] = a4;
      v14[5] = &protocol witness table for String;
      v14[6] = a1;
      v16 = v14 + 7;
      v17 = sub_1AAE8B038;
      break;
    default:
      v10 = sub_1AAE8AD58();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E7230];
      v11[2] = a3;
      v11[3] = v12;
      v13 = &protocol witness table for Int8;
LABEL_18:
      v11[4] = a4;
      v11[5] = v13;
      v11[6] = v10;
      v11[7] = a1;
      v16 = v11 + 8;
      v17 = sub_1AAE8ADAC;
      break;
  }

  v35 = v17;
  *v16 = a2;

  return v35;
}

uint64_t sub_1AAE859A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12[1] = round(*v10);
  sub_1AAD46810();
  sub_1AAF8FF14();
  result = swift_getAssociatedTypeWitness();
  if (v9 == *(*(result - 8) + 64))
  {
    (*(*(result - 8) + 16))(a6, v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), result);
    return (*(v8 + 8))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAE85B40@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, double *a6@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, a3, v11);
  if (sub_1AAF8FEF4() < 65)
  {
    v15 = sub_1AAF8FF04();
    v16 = sub_1AAF8FEE4();
    result = (*(v9 + 8))(v11, a3);
    if (v15)
    {
      v14 = v16;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    result = (*(v9 + 8))(v11, a3);
    v14 = *&v17[1];
  }

  *a6 = v14;
  return result;
}

uint64_t sub_1AAE85D08(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *), uint64_t a10, void (*a11)(char *, char *))
{
  v47 = a1;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  sub_1AAE8C594(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v17 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1AAE8AE18();
  v47 = sub_1AACB00E0(a9, v41, v17, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a4;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v21 = sub_1AAF8F764();

  v22 = a2(v21);

  v47 = v22;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v23 = sub_1AAF8F914();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1AACB00E0(a11, v29, v23, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);

  return v26;
}

uint64_t sub_1AAE85F04@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1AAF8F374();
  result = swift_getAssociatedTypeWitness();
  if (v8 == *(*(result - 8) + 64))
  {
    (*(*(result - 8) + 16))(a5, &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), result);
    return (*(v7 + 8))(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAE86078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1, v9);
  return (*(a5 + 32))(v11, a3, a5);
}

void *sub_1AAE86190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, a3, v8);
  sub_1AAD46810();
  return sub_1AAF8F354();
}

uint64_t sub_1AAE8628C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a1;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v11 = sub_1AAF8F914();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1AACB00E0(sub_1AAE8B048, v33, v11, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a4;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v15 = sub_1AAF8F764();

  v16 = a2(v15);

  v38 = v16;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v17 = sub_1AAF8F914();
  v18 = swift_getWitnessTable();
  v20 = sub_1AACB00E0(sub_1AAE8B090, v23, v17, a5, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  return v20;
}

uint64_t sub_1AAE86490@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  result = swift_getAssociatedTypeWitness();
  if (*(*(a3 - 8) + 64) == *(*(result - 8) + 64))
  {
    return (*(*(result - 8) + 16))(a5, a1, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE8656C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v27 = a4;
  v28 = a5;
  sub_1AAE8C594(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AAE8AE18();
  v12 = MEMORY[0x1E69E73E0];
  v13 = MEMORY[0x1E69E7410];
  v29 = sub_1AACB00E0(sub_1AAE8B110, v26, v9, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v14);
  v23 = a4;
  v24 = a5;
  v25 = a4;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v15 = sub_1AAF8F764();

  v16 = a2(v15);

  v29 = v16;
  v22[2] = a4;
  v22[3] = a5;
  v17 = sub_1AAF8F914();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1AACB00E0(sub_1AAE8C63C, v22, v17, MEMORY[0x1E69E63B0], v12, WitnessTable, v13, v19);

  return v20;
}

void sub_1AAE86770(double *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AAE85308(AssociatedTypeWitness, a4, v5);
}

uint64_t sub_1AAE867D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1, v8);
  return (*(a4 + 32))(v10, a3, a4);
}

uint64_t Plottable<>.init(primitivePlottable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_1AAF8FE74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - v11;
  v16[0] = a1;
  v16[1] = a2;
  sub_1AAF8F804();
  v13 = *(a3 - 8);
  if ((*(v13 + 48))(v12, 1, a3))
  {
    (*(v10 + 8))(v12, v9);
    v14 = 1;
  }

  else
  {
    (*(v13 + 32))(a5, v12, a3);
    v14 = 0;
  }

  return (*(v13 + 56))(a5, v14, 1, a3);
}

uint64_t sub_1AAE86AAC@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v7)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(*(AssociatedTypeWitness - 8) + 56);

    return v9(a6, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_1AAD46810();
    sub_1AAF8FF14();
    v11 = swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      v12 = a6;
      v13 = 0;
    }

    else
    {
      v12 = a6;
      v13 = 1;
    }

    return (*(*(v11 - 8) + 56))(v12, v13, 1, v11);
  }
}

uint64_t sub_1AAE86C6C@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v6)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = *(*(AssociatedTypeWitness - 8) + 56);

    return v8(a5, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_1AAF8F374();
    v10 = swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      v11 = a5;
      v12 = 0;
    }

    else
    {
      v11 = a5;
      v12 = 1;
    }

    return (*(*(v10 - 8) + 56))(v11, v12, 1, v10);
  }
}

uint64_t sub_1AAE86E08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1AC5992C0](v5, a2, a3);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x1AC5992F0](v6);
  }

  MEMORY[0x1AC5992C0](2);

  return sub_1AAF8F6C4();
}

uint64_t sub_1AAE86E98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AAE86E08(v5, v1, v2, v3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE86F00(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1AAF90694();
  sub_1AAE86E08(v6, v2, v3, v4);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE86FB8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return v3 == v4;
    }

    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    if (v5 == 2)
    {
      v6 = *(a1 + 8);
      if (*&v3 != *&v4 || v6 != *(a2 + 8))
      {
        return sub_1AAF904F4();
      }

      return 1;
    }

    return 0;
  }

  if (v5 != 1)
  {
    return 0;
  }

  return v3 == v4;
}

uint64_t sub_1AAE87034()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AACDC020(v5, v1, v2, v3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE8709C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1AAF90694();
  sub_1AACDC020(v6, v2, v3, v4);
  return sub_1AAF906F4();
}

BOOL sub_1AAE870F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 0;
}

double sub_1AAE87140@<D0>(uint64_t a1@<X0>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7230], &v8);
  result = v8;
  *a4 = result;
  return result;
}

double sub_1AAE871D0@<D0>(uint64_t a1@<X0>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7290], &v9);
  v7.i16[0] = v9;
  result = vmovl_s16(v7).i32[0];
  *a4 = result;
  return result;
}

double sub_1AAE87268@<D0>(uint64_t a1@<X0>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E72F0], &v8);
  result = v8;
  *a4 = result;
  return result;
}

double sub_1AAE872FC@<D0>(uint64_t a1@<X0>, uint64_t a4@<X4>, double *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, a4, &v10);
  result = v10;
  *a5 = v10;
  return result;
}

double sub_1AAE87394@<D0>(uint64_t a1@<X0>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7508], &v9);
  LOBYTE(v7) = v9;
  result = v7;
  *a4 = result;
  return result;
}

double sub_1AAE87424@<D0>(uint64_t a1@<X0>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E75F8], &v9);
  LOWORD(v7) = v9;
  result = v7;
  *a4 = result;
  return result;
}

double sub_1AAE874B4@<D0>(uint64_t a1@<X0>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7668], &v9);
  LODWORD(v7) = v9;
  result = v7;
  *a4 = result;
  return result;
}

double sub_1AAE87544@<D0>(uint64_t a1@<X0>, uint64_t a4@<X4>, double *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, a4, &v10);
  result = v10;
  *a5 = v10;
  return result;
}

double sub_1AAE875DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E7788], &v13);
  _H0 = v13;
  __asm { FCVT            D0, H0 }

  *a4 = result;
  return result;
}

double sub_1AAE8766C@<D0>(uint64_t a1@<X0>, double *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(a1, AssociatedTypeWitness, MEMORY[0x1E69E6448], &v8);
  result = v8;
  *a4 = v8;
  return result;
}

uint64_t sub_1AAE876FC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      return sub_1AAD79E08(v4, v6);
    }

    if (v7 == 2)
    {
      return sub_1AAD79E64(v4, v6);
    }
  }

  else if (!v7)
  {
    return sub_1AAD79E08(v4, v6);
  }

  return 0;
}

uint64_t sub_1AAE87748(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8EF74();
  MEMORY[0x1AC597B70](v6);
  v7 = sub_1AACD78B0(v5, v2, *(a1 + 24));
  v9 = v8;
  v11 = v10;
  (*(v3 + 8))(v5, v2, v7);
  if (v11 >= 2)
  {
    return v9;
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE87888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1AAF8FE74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  sub_1AACFB938(a1, a2, 2u, v6, *(a3 + 24), v10);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v17, v10, v6);
  (*(v11 + 16))(v14, v17, v6);
  sub_1AAF8EF74();
  sub_1AAF8EF64();
  return (*(v11 + 8))(v17, v6);
}

uint64_t sub_1AAE87AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8EF74();
  MEMORY[0x1AC597B70](v6);
  v7 = sub_1AACD78B0(v5, v2, *(a1 + 24));
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2, v7);
  if (v13 > 1)
  {
    sub_1AACCA728(v9, v11, 2);
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAE87C44(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v5 = sub_1AAF8FE74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1AACFB938(*&a2, 0, 0, v4, *(a1 + 24), v8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v15, v8, v4);
  (*(v9 + 16))(v12, v15, v4);
  sub_1AAF8EF74();
  sub_1AAF8EF64();
  return (*(v9 + 8))(v15, v4);
}

uint64_t sub_1AAE87E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1AAF8EF74();
  v12 = a2;
  v13 = 3;
  sub_1AACBC418(a1, a5, &v10, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v8);
  return v14;
}

uint64_t sub_1AAE87F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v16 = a1;
  v17 = a2;
  v10 = *(a3 + 24);
  v14 = v6;
  v15 = v10;
  sub_1AAE8C594(0, &qword_1ED9B2A98, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE8C52C, v13, MEMORY[0x1E69E73E0], v6, v11, v9);

  sub_1AAF8EF74();
  return sub_1AAF8EF64();
}

uint64_t sub_1AAE880B0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v16 = a1;
  v17 = a2 & 1;
  v10 = *(a3 + 24);
  v14 = v6;
  v15 = v10;
  sub_1AAE8C594(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE8C4F0, v13, MEMORY[0x1E69E73E0], v6, v11, v9);
  sub_1AAF8EF74();
  return sub_1AAF8EF64();
}

uint64_t sub_1AAE881E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAF8FE74();
  v11 = sub_1AAF8EF74();
  v12 = a2;
  v13 = 3;
  sub_1AACBC418(a1, a5, &v10, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v8);
  return v14;
}

uint64_t sub_1AAE8827C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1AAF8FE74();
  v5 = sub_1AAF8EF74();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t sub_1AAE882FC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = a4[2];
  v9 = a4[4];
  v10 = sub_1AAF8F5D4();
  v11 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v21 = a1;
  v22 = a2;
  v23 = a3 & 1;
  v14 = a4[3];
  v18 = v8;
  v19 = v14;
  v20 = v9;
  sub_1AACECC70(0, &qword_1EB425A80, sub_1AAE8C498, MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE8C474, v17, MEMORY[0x1E69E73E0], v10, v15, v13);
  sub_1AAF8EF74();
  return sub_1AAF8EF64();
}

uint64_t sub_1AAE88468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a5;
  v61 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v55 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v51 - v11;
  v12 = sub_1AAF8FE74();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v51 - v27;
  v29 = *a1;
  v60 = a1[1];
  v30 = a3;
  sub_1AACFB938(v29, 0, 0, a2, a3, v17);
  v31 = *(v18 + 48);
  if (v31(v17, 1, a2) == 1)
  {
LABEL_6:
    (*(v51 + 8))(v17, v52);
    __break(1u);
    goto LABEL_7;
  }

  v62 = v18;
  v33 = *(v18 + 32);
  v32 = (v18 + 32);
  v34 = v17;
  v17 = v33;
  (v33)(v28, v34, a2);
  sub_1AACFB938(v60, 0, 0, a2, v30, v14);
  if (v31(v14, 1, a2) != 1)
  {
    (v17)(v25, v14, a2);
    v35 = v58;
    sub_1AAF90574();
    v36 = v59;
    sub_1AAF90564();
    v14 = sub_1AAF8F584();
    v37 = v25;
    v38 = v62 + 8;
    v39 = *(v62 + 8);
    v39(v37, a2);
    v62 = v38;
    v60 = v39;
    v39(v28, a2);
    if (v14)
    {
      v40 = v35;
      v41 = v53;
      (v17)(v53, v40, a2);
      v42 = v55;
      (v17)(&v41[*(v55 + 48)], v36, a2);
      v43 = v54;
      v44 = v56;
      (*(v54 + 16))(v56, v41, v42);
      v45 = *(v42 + 48);
      v46 = v57;
      (v17)(v57, v44, a2);
      v58 = v32;
      v59 = v17;
      v47 = v60;
      v60(&v44[v45], a2);
      (*(v43 + 32))(v44, v41, v42);
      v48 = *(v42 + 48);
      v49 = sub_1AAF8F5D4();
      (v59)(v46 + *(v49 + 36), &v44[v48], a2);
      v47(v44, a2);
      return (*(*(v49 - 8) + 56))(v46, 0, 1, v49);
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = (*(v51 + 8))(v14, v52);
  __break(1u);
  return result;
}

uint64_t sub_1AAE889B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v10 = sub_1AAF8EF74();
  v11 = a2;
  v12 = 3;
  sub_1AACBC418(a1, sub_1AAE8C668, &v9, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v7);
  return v13;
}

uint64_t sub_1AAE88A60@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v6 = sub_1AAF8EF74();
  v7 = *(*(v6 - 8) + 32);

  return v7(a4, a1, v6);
}

uint64_t sub_1AAE88B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v15;
  if (v15 == 14)
  {
    v12 = type metadata accessor for CategoryOptionalValueBindingBox(0, a2, a3, v10);
  }

  else
  {
    v12 = type metadata accessor for NumberOptionalValueBindingBox(0, a2, a3, v10);
  }

  *(a4 + 24) = v12;
  *(a4 + 32) = swift_getWitnessTable();
  v13 = sub_1AACB2508(a4);
  result = sub_1AAE8827C(a1, v13);
  *(a4 + 40) = v11 != 14;
  return result;
}

uint64_t sub_1AAE88C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = v15 != 13;
  *(a5 + 24) = type metadata accessor for NumberOptionalRangeBindingBox(0, a2, a3, a4);
  *(a5 + 32) = swift_getWitnessTable();
  v13 = sub_1AACB2508(a5);
  result = sub_1AAE88A60(a1, v13);
  *(a5 + 40) = v12;
  return result;
}

uint64_t (*sub_1AAE88E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{

  v9 = sub_1AAE854D4(a2, a3, a4, a5);

  return v9;
}

void *sub_1AAE890B0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

__int16 sub_1AAE890EC@<H0>(__int16 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

float sub_1AAE89110@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double NSDecimal.primitivePlottable.getter(uint64_t a1, uint64_t a2, int a3)
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

void sub_1AAE89218(void *a1@<X8>)
{
  v6 = *v1;
  LODWORD(v7) = *(v1 + 4);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v3 doubleValue];
  v5 = v4;

  *a1 = v5;
}

uint64_t sub_1AAE89290@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = MEMORY[0x1AC598A70](*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  return result;
}

Swift::Int_optional __swiftcall Int.init(primitivePlottable:)(Swift::Int primitivePlottable)
{
  v1 = 0;
  result.value = primitivePlottable;
  result.is_nil = v1;
  return result;
}

Swift::Int16_optional __swiftcall Int16.init(primitivePlottable:)(Swift::Int16 primitivePlottable)
{
  *&primitivePlottable = primitivePlottable;
  result.value = primitivePlottable;
  return result;
}

Swift::UInt8_optional __swiftcall UInt8.init(primitivePlottable:)(Swift::UInt8 primitivePlottable)
{
  *&primitivePlottable = primitivePlottable;
  result.value = primitivePlottable;
  return result;
}

uint64_t sub_1AAE894A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE8950C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1AAE8959C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1AAE896B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AAE896C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1AAE8970C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAE89760()
{
  result = qword_1ED9B1B08;
  if (!qword_1ED9B1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1B08);
  }

  return result;
}

unint64_t sub_1AAE897B8()
{
  result = qword_1EB426300;
  if (!qword_1EB426300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426300);
  }

  return result;
}

uint64_t sub_1AAE8980C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_1AAE8A0B4(a1, v10);
  sub_1AAE8A0B4(a2, v11);
  if ((v10[40] & 1) == 0)
  {
    sub_1AAE8A0B4(v10, v9);
    if ((v12 & 1) == 0)
    {
      sub_1AACBB198(v9, v8);
      sub_1AACBB198(v11, v7);
      v3 = &unk_1EB426348;
      v4 = &protocol descriptor for CategoryValueBindingProtocol;
      goto LABEL_7;
    }

LABEL_5:
    sub_1AACB634C(v9);
    sub_1AAE89C7C(v10, &qword_1EB426338, &type metadata for AnyPrimitivePlottableBinding, &type metadata for AnyPrimitivePlottableBinding);
    return 0;
  }

  sub_1AAE8A0B4(v10, v9);
  if (v12 != 1)
  {
    goto LABEL_5;
  }

  sub_1AACBB198(v9, v8);
  sub_1AACBB198(v11, v7);
  v3 = &unk_1EB426340;
  v4 = &protocol descriptor for NumberValueBindingProtocol;
LABEL_7:
  sub_1AAD45E1C(0, v3, v4);
  v6 = AGCompareValues();
  sub_1AACB634C(v7);
  sub_1AACB634C(v8);
  sub_1AAE04B10(v10);
  return v6;
}

uint64_t sub_1AAE89970(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_1AAE89AD4(a1, v10);
  sub_1AAE89AD4(a2, v11);
  if ((v10[40] & 1) == 0)
  {
    sub_1AAE89AD4(v10, v9);
    if ((v12 & 1) == 0)
    {
      sub_1AACBB198(v9, v8);
      sub_1AACBB198(v11, v7);
      v3 = &unk_1EB426310;
      v4 = &protocol descriptor for CategoryOptionalValueBindingProtocol;
      goto LABEL_7;
    }

LABEL_5:
    sub_1AACB634C(v9);
    sub_1AAE89C7C(v10, &qword_1EB426308, &type metadata for AnyPrimitivePlottableOptionalBinding, &type metadata for AnyPrimitivePlottableOptionalBinding);
    return 0;
  }

  sub_1AAE89AD4(v10, v9);
  if (v12 != 1)
  {
    goto LABEL_5;
  }

  sub_1AACBB198(v9, v8);
  sub_1AACBB198(v11, v7);
  v3 = &qword_1EB424280;
  v4 = &protocol descriptor for NumberOptionalValueBindingProtocol;
LABEL_7:
  sub_1AAD45E1C(0, v3, v4);
  v6 = AGCompareValues();
  sub_1AACB634C(v7);
  sub_1AACB634C(v8);
  sub_1AAD9E1BC(v10);
  return v6;
}

uint64_t sub_1AAE89B0C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  sub_1AAE89C44(a1, v8);
  sub_1AAE89C44(a2, v9);
  if (v8[40])
  {
    sub_1AAE89C44(v8, v7);
    if (v10 != 1)
    {
LABEL_3:
      sub_1AACB634C(v7);
      sub_1AAE89C7C(v8, &qword_1EB426318, &type metadata for AnyPrimitivePlottableRangeBinding, &type metadata for AnyPrimitivePlottableRangeBinding);
      return 0;
    }
  }

  else
  {
    sub_1AAE89C44(v8, v7);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  sub_1AACBB198(v7, v6);
  sub_1AACBB198(v9, v5);
  sub_1AAD45E1C(0, &qword_1EB426320, &protocol descriptor for NumberOptionalRangeBindingProtocol);
  v4 = AGCompareValues();
  sub_1AACB634C(v5);
  sub_1AACB634C(v6);
  sub_1AAE2CD54(v8);
  return v4;
}

uint64_t sub_1AAE89C7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AACC9AC0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAE89CD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        *(v10 + 24) = a2;
        v11 = swift_allocObject();
        *(v11 + 16) = a4;
        *(v11 + 24) = a5;
        sub_1AAE8A120(0, &qword_1ED9B0C80, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
        sub_1AADC6904(a1, a2, 1u);
        v12 = a4;
        v13 = a5;
        v14 = 1;
LABEL_9:
        sub_1AADC6904(v12, v13, v14);
        v23 = AGCompareValues();

        return v23;
      }
    }

    else if (a6 == 2)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = a2;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1AAE8A120(0, &qword_1EB426330, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
      sub_1AADC6904(a1, a2, 2u);
      v12 = a4;
      v13 = a5;
      v14 = 2;
      goto LABEL_9;
    }
  }

  else if (!a6)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_1AAE8A120(0, &qword_1ED9B0C80, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    sub_1AADC6904(a1, a2, 0);
    v12 = a4;
    v13 = a5;
    v14 = 0;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1AAE89FBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!a3)
  {
    if (a6)
    {
      v6 = 0;
      return v6 < a6;
    }

    return *&a1 != *&a4 && *&a1 < *&a4;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      v6 = 1;
      return v6 < a6;
    }

    return *&a1 != *&a4 && *&a1 < *&a4;
  }

  if (a6 != 2)
  {
    v6 = 2;
    return v6 < a6;
  }

  if (a1 == a4 && a2 == a5 || (sub_1AAF904F4() & 1) != 0)
  {
    return 0;
  }

  return sub_1AAF904F4();
}

uint64_t sub_1AAE8A0EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AAE8A120(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AAE8C594(255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1AAE8A194(uint64_t a1)
{
  sub_1AACECC70(0, &qword_1ED9B2738, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE8A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v42 = a2;
  v43 = a3;
  v7 = MEMORY[0x1E69E6720];
  sub_1AACECC70(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v39 - v9;
  v10 = sub_1AAF8C6F4();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACECC70(0, &qword_1ED9B2738, MEMORY[0x1E6969530], v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_1AAF8CA64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v39 - v22;
  v23 = *(a4 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - v28;
  (*(v47 + 24))(v48, v27);
  (*(v23 + 16))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v29, a4);
  v48 = a4;
  v30 = swift_dynamicCast();
  v31 = *(v16 + 56);
  if (v30)
  {
    v31(v14, 0, 1, v15);
    (*(v16 + 32))(v46, v14, v15);
    v32 = v41;
    sub_1AAF8CAD4();
    v34 = v44;
    v33 = v45;
    result = (*(v44 + 48))(v32, 1, v45);
    if (result != 1)
    {
      v36 = v40;
      (*(v34 + 32))(v40, v32, v33);
      sub_1AAF8C6E4();
      sub_1AAF8C854();
      v37 = *(v16 + 8);
      v37(v20, v15);
      v38 = v39;
      sub_1AAF8C6D4();
      sub_1AAF8C854();
      v37(v38, v15);
      (*(v34 + 8))(v36, v33);
      v37(v46, v15);
      return (*(v23 + 8))(v29, v48);
    }
  }

  else
  {
    v31(v14, 1, 1, v15);
    result = sub_1AAE8A194(v14);
    if (v24 == 8)
    {
      return (*(v23 + 8))(v29, v48);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AAE8A740(uint64_t a1)
{
  if (!qword_1EB4235F0)
  {
    sub_1AAD580CC();
    v1 = sub_1AAF90634();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4235F0);
    }
  }
}

unint64_t sub_1AAE8AA10()
{
  result = qword_1EB426360;
  if (!qword_1EB426360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426360);
  }

  return result;
}

unint64_t sub_1AAE8AA64()
{
  result = qword_1EB426368;
  if (!qword_1EB426368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426368);
  }

  return result;
}

unint64_t sub_1AAE8AAB8()
{
  result = qword_1EB426370;
  if (!qword_1EB426370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426370);
  }

  return result;
}

unint64_t sub_1AAE8AB0C()
{
  result = qword_1EB426378;
  if (!qword_1EB426378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426378);
  }

  return result;
}

unint64_t sub_1AAE8AB60()
{
  result = qword_1EB426380;
  if (!qword_1EB426380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426380);
  }

  return result;
}

unint64_t sub_1AAE8ABB4()
{
  result = qword_1EB426388;
  if (!qword_1EB426388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426388);
  }

  return result;
}

unint64_t sub_1AAE8AC08()
{
  result = qword_1EB426390;
  if (!qword_1EB426390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426390);
  }

  return result;
}

unint64_t sub_1AAE8AC5C()
{
  result = qword_1EB426398;
  if (!qword_1EB426398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426398);
  }

  return result;
}

unint64_t sub_1AAE8ACB0()
{
  result = qword_1EB4263A0;
  if (!qword_1EB4263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4263A0);
  }

  return result;
}

unint64_t sub_1AAE8AD04()
{
  result = qword_1EB4263A8;
  if (!qword_1EB4263A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4263A8);
  }

  return result;
}

unint64_t sub_1AAE8AD58()
{
  result = qword_1EB4263B0;
  if (!qword_1EB4263B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4263B0);
  }

  return result;
}

unint64_t sub_1AAE8AE18()
{
  result = qword_1EB4263B8[0];
  if (!qword_1EB4263B8[0])
  {
    sub_1AAE8C594(255, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4263B8);
  }

  return result;
}

uint64_t sub_1AAE8B090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1AACB09D0(a1, AssociatedTypeWitness, v5, a2);
}

uint64_t sub_1AAE8B180(uint64_t a1)
{
  result = sub_1AAF8EF74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE8B1F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1AAE8B37C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_1AAE8B5D4(uint64_t a1)
{
  sub_1AAF8FE74();
  result = sub_1AAF8EF74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE8B650(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1AAE8B810(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v27 = *(v7 + 56);
      v28 = a2 + 1;

      v27((v21 + v11 + 8) & ~v11, v28);
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (~v9 + a2);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
  }
}

uint64_t sub_1AAE8BB0C(uint64_t a1)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  result = sub_1AAF8EF74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE8BB98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (v6)
  {
    v11 = *(v4 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v13 = v11 + ((v10 + v9) & ~v9) + ((v9 + 16) & ~v9);
  v14 = 8 * v13;
  if (v13 > 3)
  {
    goto LABEL_13;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_31:
    v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) == 0)
    {
      v19 = *v18;
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    if (v6)
    {
      v21 = (*(v5 + 48))((v18 + v9 + 8) & ~v9);
      v22 = v21 != 0;
      result = (v21 - 1);
      if (result != 0 && v22)
      {
        return result;
      }
    }

    return 0;
  }

  if (v16 > 0xFF)
  {
    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  if (v16 < 2)
  {
    goto LABEL_31;
  }

LABEL_13:
  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_20:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v17) + 1;
}

void sub_1AAE8BD60(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = ((*(*(*(a4 + 16) - 8) + 64) + v11) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  if (v8)
  {
    v13 = ((*(*(*(a4 + 16) - 8) + 64) + v11) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = v13 + ((v11 + 16) & ~v11);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_24:
    if (v10 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_25:
    v19 = ~v10 + a2;
    if (v14 >= 4)
    {
      bzero(a1, v13 + ((v11 + 16) & ~v11));
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_27;
      }

      goto LABEL_64;
    }

    v20 = (v19 >> (8 * v14)) + 1;
    if (v14)
    {
      v23 = v19 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v23;
          if (v6 > 1)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *a1 = v19;
          if (v6 > 1)
          {
LABEL_27:
            if (v6 == 2)
            {
              *&a1[v14] = v20;
            }

            else
            {
              *&a1[v14] = v20;
            }

            return;
          }
        }

LABEL_64:
        if (v6)
        {
          a1[v14] = v20;
        }

        return;
      }

      *a1 = v23;
      a1[2] = BYTE2(v23);
    }

    if (v6 > 1)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_13:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

LABEL_32:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
    return;
  }

  v24 = ((v21 + v11 + 8) & ~v11);
  if (v9 >= a2)
  {
    if (a2 >= v8)
    {
      if (v12 <= 3)
      {
        v30 = ~(-1 << (8 * v12));
      }

      else
      {
        v30 = -1;
      }

      if (v12)
      {
        v26 = v30 & (a2 - v8);
        if (v12 <= 3)
        {
          v27 = v12;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v12);
        if (v27 <= 2)
        {
          if (v27 == 1)
          {
            goto LABEL_56;
          }

          goto LABEL_78;
        }

LABEL_79:
        if (v27 == 3)
        {
          *v24 = v26;
          v24[2] = BYTE2(v26);
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v28 = *(v7 + 56);
      v29 = a2 + 1;

      v28((v21 + v11 + 8) & ~v11, v29);
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v25 = ~(-1 << (8 * v13));
    }

    else
    {
      v25 = -1;
    }

    if (v13)
    {
      v26 = v25 & (~v9 + a2);
      if (v13 <= 3)
      {
        v27 = v13;
      }

      else
      {
        v27 = 4;
      }

      bzero(v24, v13);
      if (v27 <= 2)
      {
        if (v27 == 1)
        {
LABEL_56:
          *v24 = v26;
          return;
        }

LABEL_78:
        *v24 = v26;
        return;
      }

      goto LABEL_79;
    }
  }
}

uint64_t getEnumTagSinglePayload for PlottableHints(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlottableHints(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyPrimitivePlottableRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyPrimitivePlottableRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AAE8C2F4()
{
  result = qword_1EB4266C0;
  if (!qword_1EB4266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4266C0);
  }

  return result;
}

uint64_t sub_1AAE8C348(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C384(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C3C0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C3FC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C438(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1AAE8C498()
{
  if (!qword_1EB423600)
  {
    v0 = sub_1AAF8F5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423600);
    }
  }
}

uint64_t sub_1AAE8C52C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  v7 = a1[1];

  return sub_1AACFB938(v6, v7, 2u, v5, v4, a2);
}

void sub_1AAE8C594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAE8C6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[3];
  v10 = v3[4];
  v11 = sub_1AACBB42C(v3, v9);
  return sub_1AAE91D80(v7, v11, a1, a2, v7, v9, a3, v8, v10);
}

uint64_t sub_1AAE8C744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  v12 = a9 + *(type metadata accessor for PlottableValue(0, a6, a7, a4) + 36);
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  v14 = *(*(a6 - 8) + 32);
  v14(v12, a5, a6);
  v15 = sub_1AAF8FCA4();
  v14(v12 + v13, a5 + *(v15 + 36), a6);
  type metadata accessor for PlottableValue.Storage(0, a6, a7, v16);

  return swift_storeEnumTagMultiPayload();
}

double static PlottableValue.value<>(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>)
{
  v17 = sub_1AAF8FCA4();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23[-v19];
  (*(v21 + 16))(&v23[-v19], a5, v18);
  sub_1AAE8C744(a1, a2, a3 & 1, a4, v20, a6, a7, a9);
  sub_1AACD7304(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_1AAE8C998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for PlottableProjection(0, a2, a3, a4);
  a5[3] = v9;
  a5[4] = swift_getWitnessTable();
  v10 = sub_1AACB2508(a5);
  result = (*(*(v9 - 8) + 32))(v10, a1, v9);
  a5[5] = a3;
  a5[6] = a4;
  return result;
}

uint64_t sub_1AAE8CA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for PlottableValue.Storage(0, v6, *(a1 + 24), a2);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, v3 + *(a1 + 36), v7, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v6 - 8) + 32))(a3, v10, v6);
  }

  v12 = *(swift_getTupleTypeMetadata2() + 48);
  v13 = *(v6 - 8);
  (*(v13 + 32))(a3, v10, v6);
  return (*(v13 + 8))(&v10[v12], v6);
}

double static PlottableValue.value(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v19, v14);
  sub_1AACD6EC4(a1, a2, a3 & 1, a4, v16, a5, a6, a7);
  sub_1AACD7304(a1, a2, a3 & 1);

  return result;
}

uint64_t static PlottableValue.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
  v18 = sub_1AAF8EA64();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v11 + 16))(v13, a2, a3);
  return sub_1AACD6EC4(v18, v20, v22 & 1, v24, v13, a3, a5, a7);
}

uint64_t static PlottableValue.value<>(_:_:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>)
{
  v24 = a9;
  v25 = a7;
  v11 = sub_1AAF8FCA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;

  v15 = sub_1AAF8EA44();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v12 + 16))(v14, a5, v11);
  return sub_1AAE8C744(v15, v17, v19 & 1, v21, v14, a6, v25, v24);
}

uint64_t static PlottableValue.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>)
{
  v28 = a8;
  v29 = a5;
  v12 = sub_1AAF8FCA4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4, v17);
  v20 = sub_1AAF8EA64();
  v22 = v21;
  LOBYTE(a4) = v23;
  v25 = v24;
  (*(v13 + 16))(v15, a2, v12);
  return sub_1AAE8C744(v20, v22, a4 & 1, v25, v15, a3, v29, v28);
}

uint64_t sub_1AAE8D1FC(uint64_t a1)
{
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static PlottableValue.value<>(_:_:unit:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v72 = a6;
  v73 = a5;
  v74 = a4;
  v65 = a3;
  v67 = a1;
  v68 = a2;
  v66 = a8;
  sub_1AACD57C4(0);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v57 - v12;
  v70 = sub_1AAF8CA64();
  v60 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v57 - v15;
  sub_1AACD6C54(0);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v57 - v19;
  sub_1AACD6DA4(0, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v57 - v21;
  v23 = sub_1AAF8C6F4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v57 - v28;
  v30 = sub_1AAF8CBA4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD5668(a7, v29);
  v34 = *(v31 + 48);
  if (v34(v29, 1, v30) == 1)
  {
    sub_1AAF8CB34();
    if (v34(v29, 1, v30) != 1)
    {
      sub_1AAE8D1FC(v29);
    }
  }

  else
  {
    (*(v31 + 32))(v33, v29, v30);
  }

  sub_1AAF8CAD4();
  v35 = (*(v24 + 48))(v22, 1, v23);
  v36 = v71;
  if (v35 != 1)
  {
    (*(v24 + 32))(v26, v22, v23);
    v37 = v69;
    sub_1AAF8C6E4();
    sub_1AAF8C6D4();
    sub_1AACD6CE8();
    v38 = v70;
    v39 = sub_1AAF8F584();
    (*(v24 + 8))(v26, v23);
    (*(v31 + 8))(v33, v30);
    if (v39)
    {
      v41 = v59;
      v40 = v60;
      v42 = *(v60 + 32);
      v42(v59, v37, v38);
      v43 = v64;
      v42((v41 + *(v64 + 48)), v36, v38);
      v44 = v63;
      sub_1AACD56E8(v41, v63);
      v45 = *(v43 + 48);
      v46 = v58;
      v42(v58, v44, v38);
      v47 = *(v40 + 8);
      v47(v44 + v45, v38);
      sub_1AACD58FC(v41, v44, sub_1AACD57C4);
      v48 = v62;
      v42((v46 + *(v62 + 36)), (v44 + *(v43 + 48)), v38);
      v47(v44, v38);
      v49 = v61;
      sub_1AACD58FC(v46, v61, sub_1AACD6C54);
      v50 = v66;
      v51 = v67;
      v52 = v68;
      *v66 = v67;
      v50[1] = v52;
      LOBYTE(v45) = v65 & 1;
      *(v50 + 16) = v65 & 1;
      v50[3] = v74;
      sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
      v54 = v50 + *(v53 + 36);
      sub_1AACD6E60(0);
      v56 = *(v55 + 48);
      v42(v54, v49, v38);
      v42(&v54[v56], (v49 + *(v48 + 36)), v38);
      sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
      swift_storeEnumTagMultiPayload();
      sub_1AACD7304(v51, v52, v45);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t static PlottableValue.value<A>(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a5;
  v61 = a6;
  v65 = a3;
  v66 = a2;
  v58 = a7;
  v59 = a1;
  sub_1AACD57C4(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v50 - v12;
  v64 = sub_1AAF8CA64();
  v54 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = (&v50 - v15);
  sub_1AACD6C54(0);
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v50 - v19;
  v67 = sub_1AAF8C6F4();
  v21 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v50 - v25;
  v27 = sub_1AAF8CBA4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD5668(a4, v26);
  v31 = *(v28 + 48);
  v32 = v31(v26, 1, v27);
  v51 = v28;
  v52 = v27;
  if (v32 == 1)
  {
    sub_1AAF8CB34();
    v33 = v30;
    if (v31(v26, 1, v27) != 1)
    {
      sub_1AAE8D1FC(v26);
    }
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
    v33 = v30;
  }

  sub_1AAF8CAD4();
  v34 = v21;
  v35 = v67;
  result = (v21[6])(v20, 1, v67);
  if (result != 1)
  {
    v37 = v21[4];
    v38 = v23;
    (v37)(v23, v20, v35);
    v39 = v62;
    sub_1AAF8C6E4();
    v40 = v63;
    sub_1AAF8C6D4();
    v41 = sub_1AACD6CE8();
    v42 = v64;
    result = sub_1AAF8F584();
    if (result)
    {
      v65 = v41;
      v66 = v38;
      v43 = v54;
      v44 = v55;
      v45 = *(v54 + 32);
      v45(v55, v39, v42);
      v45((v44 + *(v9 + 48)), v40, v42);
      v46 = v56;
      sub_1AACD56E8(v44, v56);
      v62 = v34;
      v63 = v33;
      v47 = *(v9 + 48);
      v48 = v53;
      v45(v53, v46, v42);
      v49 = *(v43 + 8);
      v49(v46 + v47, v42);
      sub_1AACD58FC(v44, v46, sub_1AACD57C4);
      v45((v48 + *(v57 + 36)), (v46 + *(v9 + 48)), v42);
      v49(v46, v42);
      static PlottableValue.value<A>(_:_:)(v59, v48, v42, v60, &protocol witness table for Date, v58);
      sub_1AAE8DF20(v48);
      v62[1](v66, v67);
      return (*(v51 + 8))(v63, v52);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE8DF20(uint64_t a1)
{
  sub_1AACD6C54(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE8DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  v14 = type metadata accessor for PlottableProjection(0, a6, a7, a8);
  (*(*(a7 - 8) + 32))(a9 + *(v14 + 44), a5, a7);
  type metadata accessor for PlottableProjection.Storage(0, a6, a7, a8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a8;
  v45 = a5;
  v40 = a4;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  sub_1AACD6DA4(0, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_1AAF8C6F4();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v34 - v19;
  v21 = sub_1AAF8CBA4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a7;
  sub_1AACD5668(a7, v20);
  v25 = *(v22 + 48);
  v26 = v25(v20, 1, v21);
  v36 = v21;
  if (v26 == 1)
  {
    sub_1AAF8CB34();
    if (v25(v20, 1, v21) != 1)
    {
      sub_1AAE8D1FC(v20);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
  }

  v35 = a6;
  sub_1AAF8CAD4();
  v27 = v43;
  v28 = v44;
  result = (*(v43 + 48))(v14, 1, v44);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v27 + 32))(v17, v14, v28);
    v30 = v38;
    *a9 = v37;
    *(a9 + 8) = v30;
    *(a9 + 16) = v39 & 1;
    *(a9 + 24) = v40;
    v31 = sub_1AAF8CA64();
    v32 = v42;
    type metadata accessor for PlottableProjection(0, v42, v31, &protocol witness table for Date);
    sub_1AACD6E60(0);
    sub_1AAF8C6E4();
    sub_1AAF8C6D4();
    sub_1AAE8D1FC(v41);
    v33 = sub_1AAF8CB94();
    (*(*(v33 - 8) + 8))(v35, v33);
    (*(*(v31 - 8) + 8))(v45, v31);
    (*(v27 + 8))(v17, v28);
    (*(v22 + 8))(v24, v36);
    type metadata accessor for PlottableProjection.Storage(0, v32, v31, &protocol witness table for Date);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1AAE8E47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  v14 = a9 + *(type metadata accessor for PlottableProjection(0, a7, a8, a10) + 44);
  v15 = *(swift_getTupleTypeMetadata2() + 48);
  v16 = *(*(a8 - 8) + 32);
  v16(v14, a5, a8);
  v16(v14 + v15, a6, a8);
  type metadata accessor for PlottableProjection.Storage(0, a7, a8, a10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  v10 = MEMORY[0x1E69E77B0];
  *(a7 + 24) = a4;
  v11 = (v9 + *v10);
  v12 = *v11;
  v13 = v11[1];
  *(a7 + *(type metadata accessor for PlottableProjection(0, *v11, v13, a6) + 44)) = a5;
  type metadata accessor for PlottableProjection.Storage(0, v12, v13, a6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a6;
  v38 = a8;
  v36 = a4;
  v35 = a3;
  v33 = *a5;
  v34 = a2;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_1AAF8CBA4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD5668(a7, v15);
  v20 = *(v17 + 48);
  if (v20(v15, 1, v16) == 1)
  {
    sub_1AAF8CB34();
    sub_1AAE8D1FC(a7);
    if (v20(v15, 1, v16) != 1)
    {
      sub_1AAE8D1FC(v15);
    }
  }

  else
  {
    sub_1AAE8D1FC(a7);
    (*(v17 + 32))(v19, v15, v16);
  }

  v22 = v33;
  v21 = v34;
  *a9 = a1;
  *(a9 + 8) = v21;
  *(a9 + 16) = v35 & 1;
  *(a9 + 24) = v36;
  v23 = (v22 + *MEMORY[0x1E69E77B0]);
  v24 = *v23;
  v25 = v23[1];
  v26 = v38;
  v27 = (a9 + *(type metadata accessor for PlottableProjection(0, *v23, v25, v38) + 44));
  sub_1AAF90774();
  v28 = sub_1AAF8CB94();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 + 48);
  v31 = *(TupleTypeMetadata3 + 64);
  *v27 = a5;
  (*(*(v28 - 8) + 32))(&v27[v30], v37, v28);
  (*(v17 + 32))(&v27[v31], v19, v16);
  type metadata accessor for PlottableProjection.Storage(0, v24, v25, v26);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  v13 = MEMORY[0x1E69E77B0];
  *(a8 + 24) = a4;
  v14 = (v12 + *v13);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a8 + *(type metadata accessor for PlottableProjection(0, *v14, v16, a7) + 44));
  *v17 = a5;
  v17[1] = a6;
  type metadata accessor for PlottableProjection.Storage(0, v15, v16, a7);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8EA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v3, a1);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, a1);
}

double static PlottableProjection.value(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1AAE8E594(a1, a2, a3 & 1, a4, a5, a6, a7);
  sub_1AACD7304(a1, a2, a3 & 1);

  return result;
}

double static PlottableProjection.value<A>(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = sub_1AAF8EA64();
  sub_1AAE8E594(v12, v14, v13 & 1, v15, a2, a4, a6);

  return result;
}

double static PlottableProjection.value(_:_:)@<D0>(uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  v10 = sub_1AAF8EA44();
  sub_1AAE8E594(v10, v12, v11 & 1, v13, a5, a6, a7);

  return result;
}

double static PlottableProjection.value<>(_:_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1AAE8E960(a1, a2, a3 & 1, a4, a5, a6, a7, a8);
  sub_1AACD7304(a1, a2, a3 & 1);

  return result;
}

double static PlottableProjection.value<A>(_:_:_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v14 = sub_1AAF8EA64();
  sub_1AAE8E960(v14, v16, v15 & 1, v17, a2, a3, a5, a7);

  return result;
}

double static PlottableProjection.value<>(_:_:_:)@<D0>(uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v12 = sub_1AAF8EA44();
  sub_1AAE8E960(v12, v14, v13 & 1, v15, a5, a6, a7, a8);

  return result;
}

uint64_t static PlottableProjection<>.value(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26[0] = a8;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v26 - v18;
  v20 = sub_1AAF8CB94();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, a6, v21);
  sub_1AACD5668(a7, v19);
  sub_1AACD7304(a1, a2, a3 & 1);

  return sub_1AAE8E660(a1, a2, a3 & 1, a4, a5, v23, v19, v26[0], a9);
}

uint64_t static PlottableProjection<>.value<A>(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v31 = a8;
  v32 = a6;
  v30 = a4;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_1AAF8CB94();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  (*(v22 + 16))(&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v20);
  v23 = sub_1AAF8EA64();
  v25 = v24;
  LOBYTE(a5) = v26;
  v28 = v27;
  (*(v16 + 16))(v18, a3, v15);
  sub_1AACD5668(v30, v14);

  return sub_1AAE8E660(v23, v25, a5 & 1, v28, a2, v18, v14, v32, v31);
}

uint64_t static PlottableProjection<>.value(_:_:unit:calendar:)@<X0>(uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a9;
  v28 = a8;
  v26 = a7;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_1AAF8CB94();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = sub_1AAF8EA44();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v15 + 16))(v17, a6, v14);
  sub_1AACD5668(v26, v13);

  return sub_1AAE8E660(v18, v20, v22 & 1, v24, a5, v17, v13, v28, v27);
}

double static PlottableProjection.value(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v21, v16);
  sub_1AAE8DF7C(a1, a2, a3 & 1, a4, v18, a5, a6, a7, a8);
  sub_1AACD7304(a1, a2, a3 & 1);

  return result;
}

uint64_t static PlottableProjection.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v27[0] = a6;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = sub_1AAF8EA64();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v12 + 16))(v14, a2, a4);
  return sub_1AAE8DF7C(v19, v21, v23 & 1, v25, v14, a3, a4, v27[0], a8);
}

uint64_t static PlottableProjection.value(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a8;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_1AAF8EA44();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v13 + 16))(v15, a5, a7);
  return sub_1AAE8DF7C(v16, v18, v20 & 1, v22, v15, a6, a7, v24, a9);
}