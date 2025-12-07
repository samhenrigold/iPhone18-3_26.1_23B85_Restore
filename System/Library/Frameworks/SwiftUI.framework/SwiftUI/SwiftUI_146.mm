void *assignWithTake for SearchEnvironmentWritingModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 40);
  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  *v15 = *v16;
  v15[4] = v16[4];
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);

  *(v18 + 1) = *(v19 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v13(&v18[*(v20 + 32)], &v19[*(v20 + 32)], v12);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for SearchPrimitiveModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v92 = *(a3 + 16);
  v5 = *(v92 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = *(v5 + 64);
  v93 = type metadata accessor for AttributedString();
  v94 = *(v93 - 8);
  v9 = *(v94 + 80);
  v10 = v9;
  v11 = *(v94 + 64);
  v12 = ((v10 + 9) & ~v10) + v11;
  v13 = v9 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v12 & 0xFFFFFFFFFFFFFFFCLL) + (v13 & (v9 + 16)) + 9 <= v14)
  {
    v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v15 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + (v13 & (v9 + 16)) + 9;
  }

  v16 = (v9 | v6) & 0x100000;
  v17 = (v10 | v6) <= 7 && v16 == 0;
  if (!v17 || (v18 = ((v10 + 16) & ~v10) + v11, v8 - ((-27 - v7 - (v15 & 0xFFFFFFFFFFFFFFF8)) | v7) + (((((v10 | 7) + ((v18 + ((((v7 + 40) & ~v7) + v8 + (v10 | 7)) & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & ~(v10 | 7)) + v14 + (v10 | 7 | v7)) & ~(v10 | 7 | v7)) > 0x18))
  {
    v37 = *a2;
    *a1 = *a2;
    v38 = v37 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16));

    return v38;
  }

  v83 = v10 + 9;
  v84 = (((v10 | 7) + ((v18 + ((((v7 + 40) & ~v7) + v8 + (v10 | 7)) & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & ~(v10 | 7)) + v14;
  v82 = v13;
  v86 = *(*(v93 - 8) + 64);
  v91 = v15;
  v88 = v7;
  *a1 = *a2;
  v89 = a1;
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  v85 = a2;
  v20 = a2 & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v20 + 8);
  v21 = *(v20 + 16);
  v23 = *(v20 + 24);
  outlined copy of Text.Storage(v22, v21, v23);
  *(v19 + 8) = v22;
  *(v19 + 16) = v21;
  *(v19 + 24) = v23;
  *(v19 + 32) = *(v20 + 32);
  v24 = *(v5 + 16);

  v87 = v24;
  v24(v19 + 40, v20 + 40, v92);
  v25 = v19 + v8 + 47;
  v26 = v20 + v8 + 47;
  v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v25 & 0xFFFFFFFFFFFFFFF8) = *(v26 & 0xFFFFFFFFFFFFFFF8);
  v28 = (v25 & 0xFFFFFFFFFFFFFFF8) + 15;
  v29 = (v27 & 0xFFFFFFFFFFFFFFF8) + 8;
  *(v28 & 0xFFFFFFFFFFFFFFF8) = *(v27 & 0xFFFFFFFFFFFFFFF8);
  v30 = (v28 & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = *(v94 + 16);

  v90 = v31;
  v31(v30, v29, v93);
  v32 = ((v25 | 7) + v18) & 0xFFFFFFFFFFFFFFF8;
  v33 = ((v26 | 7) + v18) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v33 + 17);
  if (v34 >= 2)
  {
    v34 = *v33 + 2;
  }

  v35 = ~v10;
  if (v34 == 1)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    *(v32 + 16) = *(v33 + 16);

    v36 = 1;
  }

  else
  {
    v36 = 0;
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
  }

  *(v32 + 17) = v36;
  v39 = ((v32 + 25) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v33 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  *(v32 + 25) = *(v33 + 25);
  *(v32 + 26) = *(v33 + 26);
  *(v32 + 27) = *(v33 + 27);
  v41 = (v32 + 31) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = (v33 + 31) & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *v42;
  *(v41 + 4) = *(v42 + 4);
  *v41 = v43;
  v44 = v10 + 5;
  v45 = (v10 + 5 + v41) & v35;
  v46 = (v10 + 5 + v42) & v35;
  v90(v45, v46, v93);
  *(v45 + v86) = *(v46 + v86);
  v47 = (v45 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v48 = (v46 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 4);
  *(v47 + 8) = *(v48 + 8);
  *(v47 + 4) = v49;
  v50 = v12 + 16;
  *(&v39[v12 + 16] & 0xFFFFFFFFFFFFFFF8) = *(&v40[v12 + 16] & 0xFFFFFFFFFFFFFFF8);
  v38 = v89;
  v51 = (v89 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = ((v85 + v84 + 7) & 0xFFFFFFFFFFFFFFF8);
  v53 = v52[v91];

  if (v53 >= 2)
  {
    if (v91 <= 3)
    {
      v54 = v91;
    }

    else
    {
      v54 = 4;
    }

    if (v54 <= 1)
    {
      if (!v54)
      {
        goto LABEL_30;
      }

      v55 = *v52;
      if (v91 < 4)
      {
LABEL_33:
        if ((v55 | ((v53 - 2) << (8 * v91))) != 0xFFFFFFFF)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }
    }

    else if (v54 == 2)
    {
      v55 = *v52;
      if (v91 < 4)
      {
        goto LABEL_33;
      }
    }

    else if (v54 == 3)
    {
      v55 = *v52 | (v52[2] << 16);
      if (v91 < 4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v55 = *v52;
      if (v91 < 4)
      {
        goto LABEL_33;
      }
    }

    v53 = v55 + 2;
  }

LABEL_30:
  if (v53 != 1)
  {
LABEL_34:
    *v51 = *v52;
    *(v51 + 1) = v52[1];
    *(v51 + 2) = v52[2];
    *(v51 + 3) = v52[3];
    v68 = *(v52 + 1);
    *(v51 + 8) = v52[8];
    *(v51 + 4) = v68;
    v69 = (v83 + v51) & v35;
    v70 = &v52[v83] & v35;
    v90(v69, v70, v93);
    *(v69 + v86) = *(v70 + v86);
    v71 = (v69 + v86) & 0xFFFFFFFFFFFFFFFCLL;
    v72 = (v70 + v86) & 0xFFFFFFFFFFFFFFFCLL;
    v73 = *(v72 + 4);
    *(v71 + 8) = *(v72 + 8);
    *(v71 + 4) = v73;
    *((v50 + v51) & 0xFFFFFFFFFFFFFFF8) = *(&v52[v50] & 0xFFFFFFFFFFFFFFF8);

    v67 = 0;
    goto LABEL_35;
  }

LABEL_31:
  *v51 = *v52;
  v56 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = ((v52 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v56 = *v57;
  v58 = ((v57 + v10 + 8) & v82);
  v59 = (v58 + 7);
  *(v56 + 8) = *v58;
  *(v56 + 9) = v58[1];
  *(v56 + 10) = v58[2];
  *(v56 + 11) = v58[3];
  v60 = (v56 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v61 = v59 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v59) = *(v59 & 0xFFFFFFFFFFFFFFFCLL);
  *(v60 + 4) = *(v61 + 4);
  *v60 = v59;
  v62 = (v44 + v60) & v35;
  v63 = (v44 + v61) & v35;

  v90(v62, v63, v93);
  *(v62 + v86) = *(v63 + v86);
  v64 = (v62 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v65 = (v63 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v66 = *(v65 + 4);
  *(v64 + 8) = *(v65 + 8);
  *(v64 + 4) = v66;
  v67 = 1;
LABEL_35:
  *(v51 + v91) = v67;
  v74 = (v91 + 8 + v51) & 0xFFFFFFFFFFFFFFF8;
  v75 = &v52[v91 + 8] & 0xFFFFFFFFFFFFFFF8;
  v76 = *(v75 + 17);
  if (v76 >= 2)
  {
    v76 = *v75 + 2;
  }

  v77 = ~v88;
  if (v76 == 1)
  {
    *v74 = *v75;
    *(v74 + 8) = *(v75 + 8);
    *(v74 + 16) = *(v75 + 16);

    v78 = 1;
  }

  else
  {
    v78 = 0;
    *v74 = *v75;
    *(v74 + 8) = *(v75 + 8);
  }

  *(v74 + 17) = v78;
  v79 = (v88 + 18 + v74) & v77;
  v80 = (v88 + 18 + v75) & v77;
  v87(v79, v80, v92);
  *(v79 + v8) = *(v80 + v8);
  return v38;
}

unint64_t initializeWithTake for SearchPrimitiveModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v3 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v3 + 8) = v4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 40 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v8;
  v83 = v8 + 40;
  v10 = (v8 + 40 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v8;
  v85 = *(v6 + 32);
  v85(v9, v10, v5);
  v11 = *(v7 + 32);
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  v14 = *(v13 + 32);
  v15 = v13 + 32;
  v16 = *(v13 + 80);
  v17 = v16 | 7;
  v92 = v11;
  v18 = (v16 | 7) + v11;
  v19 = ((v18 + v9) & ~(v16 | 7));
  v20 = ((v18 + v10) & ~(v16 | 7));
  *v19 = *v20;
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v81 = v16 + 8;
  v89 = v14;
  v90 = v12;
  (v14)((v21 + v16 + 8) & ~v16, (v22 + v16 + 8) & ~v16);
  v88 = *(v15 + 32);
  v82 = v88 + ((v16 + 16) & ~v16);
  v23 = (v19 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v20 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 17);
  if (v25 >= 2)
  {
    v25 = *v24 + 2;
  }

  v91 = ~v8;
  v26 = ~v17;
  v27 = ~v16;
  v93 = v8;
  v86 = v5;
  if (v25 == 1)
  {
    v28 = *v24;
    *(v23 + 16) = *(v24 + 16);
    *v23 = v28;
    v29 = 1;
  }

  else
  {
    v29 = 0;
    *v23 = *v24;
  }

  *(v23 + 17) = v29;
  v30 = (v17 + 18 + v23) & v26;
  v31 = (v17 + 18 + v24) & v26;
  *v30 = *v31;
  *(v30 + 1) = *(v31 + 1);
  *(v30 + 2) = *(v31 + 2);
  *(v30 + 3) = *(v31 + 3);
  v32 = *(v31 + 4);
  *(v30 + 8) = *(v31 + 8);
  *(v30 + 4) = v32;
  v33 = v16 + 9;
  v34 = (v16 + 9 + v31) & v27;
  v89((v16 + 9 + v30) & v27, v34, v90);
  v35 = ~v16;
  v36 = ((v16 + 9 + v30) & v27) + v88;
  *v36 = *(v34 + v88);
  v36 &= 0xFFFFFFFFFFFFFFFCLL;
  v37 = (v34 + v88) & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 4);
  *(v36 + 8) = *(v37 + 8);
  *(v36 + 4) = v38;
  v39 = v88 + ((v16 + 9) & v27);
  v40 = v16 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v41 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + ((v16 + 16) & v40);
  v42 = v39 + 16;
  *((v39 + 16 + v30) & 0xFFFFFFFFFFFFFFF8) = *((v39 + 16 + v31) & 0xFFFFFFFFFFFFFFF8);
  v43 = (v39 & 0xFFFFFFFFFFFFFFF8) + 24;
  v44 = ((v17 + 18 + ((v82 + (((v83 & v91) + v92 + v17) & v26) + 7) & 0xFFFFFFFFFFFFFFF8)) & v26) + v43 + (v17 | v93);
  v45 = (v44 + a1) & ~(v17 | v93);
  v46 = ((v44 + a2) & ~(v17 | v93));
  v47 = v41 + 9;
  if (v47 <= v43)
  {
    v48 = v43;
  }

  else
  {
    v48 = v47;
  }

  v49 = v46[v48];
  v50 = v49 - 2;
  if (v49 < 2)
  {
    v53 = v86;
    goto LABEL_25;
  }

  if (v48 <= 3)
  {
    v51 = v48;
  }

  else
  {
    v51 = 4;
  }

  if (v51 <= 1)
  {
    v53 = v86;
    if (!v51)
    {
      goto LABEL_25;
    }

    v52 = *v46;
  }

  else
  {
    if (v51 == 2)
    {
      v52 = *v46;
    }

    else if (v51 == 3)
    {
      v52 = *v46 | (v46[2] << 16);
    }

    else
    {
      v52 = *v46;
    }

    v53 = v86;
  }

  v54 = (v52 | (v50 << (8 * v48))) + 2;
  v49 = v52 + 2;
  if (v48 < 4)
  {
    v49 = v54;
  }

LABEL_25:
  if (v49 == 1)
  {
    *v45 = *v46;
    v55 = ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
    v56 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v55 = *v56;
    v57 = ((v55 + v81) & v40);
    v58 = ((v56 + v81) & v40);
    v59 = (v58 + 7);
    *v57 = *v58;
    v57[1] = v58[1];
    v57[2] = v58[2];
    v57[3] = v58[3];
    v60 = (v57 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v59 &= 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v57) = *v59;
    *(v60 + 4) = *(v59 + 4);
    *v60 = v57;
    v61 = (v16 + 5 + v60) & v35;
    v62 = (v16 + 5 + v59) & v35;
    v89(v61, v62, v90);
    *(v61 + v88) = *(v62 + v88);
    v63 = (v61 + v88) & 0xFFFFFFFFFFFFFFFCLL;
    v64 = (v62 + v88) & 0xFFFFFFFFFFFFFFFCLL;
    v65 = *(v64 + 4);
    *(v63 + 8) = *(v64 + 8);
    *(v63 + 4) = v65;
    v66 = 1;
  }

  else
  {
    *v45 = *v46;
    *(v45 + 1) = v46[1];
    *(v45 + 2) = v46[2];
    *(v45 + 3) = v46[3];
    v67 = *(v46 + 1);
    *(v45 + 8) = v46[8];
    *(v45 + 4) = v67;
    v68 = (v33 + v45) & v35;
    v69 = &v46[v33] & v35;
    v89(v68, v69, v90);
    v66 = 0;
    *(v68 + v88) = *(v69 + v88);
    v70 = (v68 + v88) & 0xFFFFFFFFFFFFFFFCLL;
    v71 = (v69 + v88) & 0xFFFFFFFFFFFFFFFCLL;
    v72 = *(v71 + 4);
    *(v70 + 8) = *(v71 + 8);
    *(v70 + 4) = v72;
    *((v42 + v45) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v42] & 0xFFFFFFFFFFFFFFF8);
  }

  *(v45 + v48) = v66;
  v73 = (v48 + 8 + v45) & 0xFFFFFFFFFFFFFFF8;
  v74 = &v46[v48 + 8] & 0xFFFFFFFFFFFFFFF8;
  v75 = *(v74 + 17);
  if (v75 >= 2)
  {
    v75 = *v74 + 2;
  }

  if (v75 == 1)
  {
    v76 = *v74;
    *(v73 + 16) = *(v74 + 16);
    *v73 = v76;
    v77 = 1;
  }

  else
  {
    v77 = 0;
    *v73 = *v74;
  }

  *(v73 + 17) = v77;
  v78 = (v93 + 18 + v73) & v91;
  v79 = (v93 + 18 + v74) & v91;
  v85(v78, v79, v53);
  *(v78 + v92) = *(v79 + v92);
  return a1;
}

unint64_t assignWithTake for SearchPrimitiveModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  *(v4 + 8) = *(v5 + 8);
  *(v4 + 24) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(v4 + 32) = *(v5 + 32);

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v93 = ~v13;
  v94 = v13;
  v14 = (v13 + 40 + v4) & ~v13;
  v91 = v13 + 40;
  v15 = (v13 + 40 + v5) & ~v13;
  v95 = *(v11 + 40);
  v96 = v10;
  v95(v14, v15);
  v16 = *(v12 + 24);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v19 | 7;
  v100 = v16;
  v21 = (v19 | 7) + v16;
  v90 = ~(v19 | 7);
  v22 = ((v21 + v14) & v90);
  v23 = ((v21 + v15) & v90);
  *v22 = *v23;

  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;

  v98 = ~v19;
  v84 = v19 + 8;
  v85 = v18;
  v99 = v17;
  v86 = *(v18 + 40);
  v86((v24 + v19 + 8) & ~v19, (v25 + v19 + 8) & ~v19, v17);
  v26 = *(v18 + 64);
  v89 = v26 + ((v19 + 16) & ~v19);
  v27 = (v22 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v23 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v27 != v28)
  {
    v29 = *(v27 + 17);
    if (v29 >= 2)
    {
      v29 = *v27 + 2;
    }

    if (v29 == 1)
    {
    }

    v30 = *(v28 + 17);
    if (v30 >= 2)
    {
      v30 = *v28 + 2;
    }

    if (v30 == 1)
    {
      v31 = *v28;
      *(v27 + 16) = *(v28 + 16);
      *v27 = v31;
      v32 = 1;
    }

    else
    {
      v32 = 0;
      *v27 = *v28;
    }

    *(v27 + 17) = v32;
  }

  v33 = (v20 + 18 + v27) & v90;
  v34 = (v20 + 18 + v28) & v90;
  *v33 = *v34;
  *(v33 + 1) = *(v34 + 1);
  *(v33 + 2) = *(v34 + 2);
  *(v33 + 3) = *(v34 + 3);
  v35 = *(v34 + 4);
  *(v33 + 8) = *(v34 + 8);
  *(v33 + 4) = v35;
  v36 = (v19 + 9 + v33) & v98;
  v37 = (v19 + 9 + v34) & v98;
  v86(v36, v37, v99);
  *(v36 + v26) = *(v37 + v26);
  v38 = (v36 + v26) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = (v37 + v26) & 0xFFFFFFFFFFFFFFFCLL;
  *(v38 + 4) = *(v39 + 4);
  *(v38 + 8) = *(v39 + 8);
  v87 = v19 + 9;
  v40 = v26 + ((v19 + 9) & v98);
  v41 = v19 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v42 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + ((v19 + 16) & v41);
  v88 = v40 + 16;
  *((v40 + 16 + v33) & 0xFFFFFFFFFFFFFFF8) = *((v40 + 16 + v34) & 0xFFFFFFFFFFFFFFF8);

  v43 = (v40 & 0xFFFFFFFFFFFFFFF8) + 24;
  v44 = ((v20 + 18 + ((v89 + (((v91 & v93) + v100 + (v19 | 7)) & v90) + 7) & 0xFFFFFFFFFFFFFFF8)) & v90) + v43 + (v19 | 7 | v94);
  v45 = ((v44 + a1) & ~(v19 | 7 | v94));
  v46 = ((v44 + a2) & ~(v19 | 7 | v94));
  if (v42 + 9 <= v43)
  {
    v47 = (v40 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v47 = v42 + 9;
  }

  if (v45 != v46)
  {
    v48 = v19;
    v49 = v45[v47];
    v50 = v49 - 2;
    if (v49 < 2)
    {
      v52 = v85;
      if (v49 != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (v47 <= 3)
    {
      v51 = v47;
    }

    else
    {
      v51 = 4;
    }

    v52 = v85;
    if (v51 <= 1)
    {
      if (!v51)
      {
        goto LABEL_32;
      }

      v53 = *v45;
      if (v47 < 4)
      {
LABEL_35:
        if ((v53 | (v50 << (8 * v47))) != 0xFFFFFFFF)
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      }
    }

    else if (v51 == 2)
    {
      v53 = *v45;
      if (v47 < 4)
      {
        goto LABEL_35;
      }
    }

    else if (v51 == 3)
    {
      v53 = *v45 | (v45[2] << 16);
      if (v47 < 4)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v53 = *v45;
      if (v47 < 4)
      {
        goto LABEL_35;
      }
    }

    v49 = v53 + 2;
LABEL_32:
    if (v49 != 1)
    {
LABEL_36:
      (*(v52 + 8))(&v45[v87] & v98, v99);

LABEL_37:
      v54 = v46[v47];
      v55 = v54 - 2;
      if (v54 < 2)
      {
        goto LABEL_51;
      }

      if (v47 <= 3)
      {
        v56 = v47;
      }

      else
      {
        v56 = 4;
      }

      if (v56 <= 1)
      {
        if (!v56)
        {
          goto LABEL_51;
        }

        v57 = *v46;
        if (v47 < 4)
        {
LABEL_54:
          if ((v57 | (v55 << (8 * v47))) != 0xFFFFFFFF)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }
      }

      else if (v56 == 2)
      {
        v57 = *v46;
        if (v47 < 4)
        {
          goto LABEL_54;
        }
      }

      else if (v56 == 3)
      {
        v57 = *v46 | (v46[2] << 16);
        if (v47 < 4)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v57 = *v46;
        if (v47 < 4)
        {
          goto LABEL_54;
        }
      }

      v54 = v57 + 2;
LABEL_51:
      if (v54 != 1)
      {
LABEL_55:
        *v45 = *v46;
        v45[1] = v46[1];
        v45[2] = v46[2];
        v45[3] = v46[3];
        v71 = *(v46 + 1);
        v45[8] = v46[8];
        *(v45 + 1) = v71;
        v72 = &v45[v87] & v98;
        v73 = &v46[v87] & v98;
        (*(v52 + 32))(v72, v73, v99);
        v70 = 0;
        *(v72 + v26) = *(v73 + v26);
        v74 = (v72 + v26) & 0xFFFFFFFFFFFFFFFCLL;
        v75 = (v73 + v26) & 0xFFFFFFFFFFFFFFFCLL;
        v76 = *(v75 + 4);
        *(v74 + 8) = *(v75 + 8);
        *(v74 + 4) = v76;
        *(&v45[v88] & 0xFFFFFFFFFFFFFFF8) = *(&v46[v88] & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_56;
      }

LABEL_52:
      *v45 = *v46;
      v58 = ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
      v59 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v58 = *v59;
      v60 = ((v58 + v84) & v41);
      v61 = ((v59 + v84) & v41);
      v62 = (v61 + 7);
      *v60 = *v61;
      v60[1] = v61[1];
      v60[2] = v61[2];
      v60[3] = v61[3];
      v63 = (v60 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v64 = v62 & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v62) = *(v62 & 0xFFFFFFFFFFFFFFFCLL);
      *(v63 + 4) = *(v64 + 4);
      *v63 = v62;
      v65 = (v48 + 5 + v63) & v98;
      v66 = (v48 + 5 + v64) & v98;
      (*(v52 + 32))(v65, v66, v99);
      *(v65 + v26) = *(v66 + v26);
      v67 = (v65 + v26) & 0xFFFFFFFFFFFFFFFCLL;
      v68 = (v66 + v26) & 0xFFFFFFFFFFFFFFFCLL;
      v69 = *(v68 + 4);
      *(v67 + 8) = *(v68 + 8);
      *(v67 + 4) = v69;
      v70 = 1;
LABEL_56:
      v45[v47] = v70;
      goto LABEL_57;
    }

LABEL_33:

    (*(v52 + 8))((v48 + ((((v84 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) & v41) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v98, v99);
    goto LABEL_37;
  }

LABEL_57:
  v77 = &v45[v47 + 8] & 0xFFFFFFFFFFFFFFF8;
  v78 = &v46[v47 + 8] & 0xFFFFFFFFFFFFFFF8;
  if (v77 != v78)
  {
    v79 = *(v77 + 17);
    if (v79 >= 2)
    {
      v79 = *v77 + 2;
    }

    if (v79 == 1)
    {
    }

    v80 = *(v78 + 17);
    if (v80 >= 2)
    {
      v80 = *v78 + 2;
    }

    if (v80 == 1)
    {
      v81 = *v78;
      *(v77 + 16) = *(v78 + 16);
      *v77 = v81;
      v82 = 1;
    }

    else
    {
      v82 = 0;
      *v77 = *v78;
    }

    *(v77 + 17) = v82;
  }

  (v95)((v94 + 18 + v77) & v93, (v94 + 18 + v78) & v93, v96);
  *(((v94 + 18 + v77) & v93) + v100) = *(((v94 + 18 + v78) & v93) + v100);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchPrimitiveModifier(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v39 = *(v5 - 8);
  v6 = *(v39 + 84);
  v7 = *(type metadata accessor for AttributedString() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(v39 + 80);
  v11 = *(v39 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v6 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  if (v8 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v7 + 84);
  }

  v15 = *(v7 + 80);
  v16 = ((v15 + 9) & ~v15) + v9;
  v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + 24;
  v18 = ((*(v7 + 80) & 0xFC ^ 0x1FC) & (v15 + 16)) + (v16 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v6 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v15 | 7;
  v22 = (v15 | 7) + v11;
  v23 = ((v15 + 16) & ~v15) + v9 + 7;
  if (a2 <= v20)
  {
    goto LABEL_40;
  }

  v24 = v11 + ~(((-27 - v10 - (v19 & 0xFFFFFFFFFFFFFFF8)) | v10) + ((((-19 - v21 - ((v23 + ((v22 + ((v10 + 40) & ~v10)) & ~v21)) & 0xFFFFFFFFFFFFFFF8)) | v21) - (v17 + (v21 | v10))) | v21 | v10));
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v20 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v28 < 2)
    {
LABEL_40:
      v32 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v14 & 0x80000000) != 0)
      {
        v34 = (v32 + v10 + 40) & ~v10;
        if (v6 == v14)
        {
          v35 = *(v39 + 48);

          return v35(v34, v6, v5);
        }

        else
        {
          v36 = (v22 + v34) & ~v21;
          if (v12 == v14)
          {
            v37 = v15 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
          }

          else
          {
            v37 = v15 + 9 + ((v21 + ((v23 + v36) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v21);
          }

          v38 = *(v7 + 48);

          return v38(v37 & ~v15);
        }
      }

      else
      {
        v33 = *(v32 + 32);
        if (v33 >= 0xFFFFFFFF)
        {
          LODWORD(v33) = -1;
        }

        return (v33 + 1);
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_40;
  }

LABEL_27:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v20 + (v31 | v29) + 1;
}

void storeEnumTagSinglePayload for SearchPrimitiveModifier(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v49 = *(v7 - 8);
  v8 = *(v49 + 84);
  v9 = *(type metadata accessor for AttributedString() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(v49 + 80);
  v13 = *(v49 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v8 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  if (v10 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = *(v9 + 84);
  }

  if (v15 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  v19 = *(v9 + 80);
  v20 = ((v19 + 9) & ~v19) + v11;
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v22 = (v20 & 0xFFFFFFFFFFFFFFF8) + 24;
  v23 = v19 + 16;
  if (v21 + ((*(v9 + 80) & 0xFC ^ 0x1FCu) & (v19 + 16)) <= v22)
  {
    v24 = (v20 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v24 = v21 + ((*(v9 + 80) & 0xFC ^ 0x1FC) & v23);
  }

  if (v8 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v8;
  }

  v26 = v19 | 7;
  v27 = (v19 | 7) + v13;
  v28 = (v23 & ~v19) + v11 + 7;
  v29 = (v19 | 7) + 18;
  v30 = ((v29 + ((v28 + ((v27 + ((v12 + 40) & ~v12)) & ~(v19 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~(v19 | 7)) + v22;
  v31 = v13 + ((v12 + (v24 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v12) + ((v30 + (v19 | 7 | v12)) & ~(v19 | 7 | v12)) + 1;
  if (a3 <= v25)
  {
    v32 = 0;
  }

  else if (v31 <= 3)
  {
    v35 = ((a3 - v25 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
    if (HIWORD(v35))
    {
      v32 = 4;
    }

    else
    {
      if (v35 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v35 < 2)
      {
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 1;
  }

  if (v25 < a2)
  {
    v33 = ~v25 + a2;
    if (v31 < 4)
    {
      v34 = (v33 >> (8 * v31)) + 1;
      if (v31)
      {
        v36 = v33 & ~(-1 << (8 * v31));
        bzero(a1, v31);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *a1 = v36;
            if (v32 > 1)
            {
LABEL_68:
              if (v32 == 2)
              {
                *(a1 + v31) = v34;
              }

              else
              {
                *(a1 + v31) = v34;
              }

              return;
            }
          }

          else
          {
            *a1 = v33;
            if (v32 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v36;
        *(a1 + 2) = BYTE2(v36);
      }

      if (v32 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v31);
      *a1 = v33;
      v34 = 1;
      if (v32 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v32)
    {
      *(a1 + v31) = v34;
    }

    return;
  }

  if (v32 > 1)
  {
    if (v32 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    *(a1 + v31) = 0;
  }

  else if (v32)
  {
    *(a1 + v31) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if (!a2)
  {
    return;
  }

LABEL_49:
  if (v18 < a2)
  {
    if (!v30)
    {
      return;
    }

    v37 = ~v18 + a2;
    v38 = a1;
    v22 += (v29 + ((v28 + ((v27 + ((v12 + 40) & ~v12)) & ~(v19 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~(v19 | 7);
    goto LABEL_52;
  }

  v39 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v39[3] = 0;
      v39[4] = 0;
      v39[1] = a2 & 0x7FFFFFFF;
      v39[2] = 0;
    }

    else
    {
      v39[4] = (a2 - 1);
    }

    return;
  }

  v40 = (v39 + v12 + 40) & ~v12;
  if (v8 == v18)
  {
    v41 = *(v49 + 56);

    v41(v40, a2, v8, v7);
  }

  else
  {
    v42 = ~v26;
    v43 = (v27 + v40) & ~v26;
    if (v14 == v18)
    {
      v44 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v45 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v45 = (a2 - 1);
        }

        *v44 = v45;
        return;
      }

      v47 = v44 + v19 + 8;
    }

    else
    {
      a1 = (v29 + ((v28 + v43) & 0xFFFFFFFFFFFFFFF8)) & v42;
      if (v17 < a2)
      {
        if (!v22)
        {
          return;
        }

        v37 = ~v17 + a2;
        v38 = ((v29 + ((v28 + v43) & 0xFFFFFFFFFFFFFFF8)) & v42);
LABEL_52:
        bzero(v38, v22);
        *a1 = v37;
        return;
      }

      if (v16 < a2)
      {
        v46 = ~v16 + a2;
        bzero(((v29 + ((v28 + v43) & 0xFFFFFFFFFFFFFFF8)) & v42), v21);
        if (v21 <= 3)
        {
          *a1 = v46;
        }

        else
        {
          *a1 = v46;
        }

        return;
      }

      v47 = v19 + 9 + a1;
    }

    v48 = *(v9 + 56);

    v48(v47 & ~v19, a2);
  }
}

void type metadata accessor for SearchBoundProperty<SearchFieldState>.Metadata(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchFieldState(255);
    v7 = lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(&lazy protocol witness table cache variable for type SearchFieldState and conformance SearchFieldState, type metadata accessor for SearchFieldState, protocol conformance descriptor for SearchFieldState);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for SearchBoundProperty<AttributedString>.Metadata(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchBoundProperty<AttributedString>.Metadata)
  {
    v2 = type metadata accessor for AttributedString();
    v3 = lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    v5 = type metadata accessor for SearchBoundProperty.Metadata(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>.Metadata);
    }
  }
}

void type metadata accessor for SearchBoundProperty<AttributedString>.MakeProperty(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchBoundProperty<AttributedString>.MakeProperty)
  {
    v2 = type metadata accessor for AttributedString();
    v3 = lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    Property = type metadata accessor for SearchBoundProperty.MakeProperty(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(Property, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>.MakeProperty);
    }
  }
}

void type metadata accessor for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>)
  {
    v2 = type metadata accessor for SearchStateEnvironmentTransformModifier.Transform(255);
    v4 = type metadata accessor for SearchEnvironmentTransformModifier(a1, v2, &protocol witness table for SearchStateEnvironmentTransformModifier.Transform, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchStateEnvironmentTransformModifier.TransformModifier and conformance SearchStateEnvironmentTransformModifier.TransformModifier()
{
  result = lazy protocol witness table cache variable for type SearchStateEnvironmentTransformModifier.TransformModifier and conformance SearchStateEnvironmentTransformModifier.TransformModifier;
  if (!lazy protocol witness table cache variable for type SearchStateEnvironmentTransformModifier.TransformModifier and conformance SearchStateEnvironmentTransformModifier.TransformModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchStateEnvironmentTransformModifier.TransformModifier, &unk_1EFFF03A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStateEnvironmentTransformModifier.TransformModifier and conformance SearchStateEnvironmentTransformModifier.TransformModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SearchStateEnvironmentTransformModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v8 = *(v7 + 32);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *v9 = *(a2 + v8);
    v9[1] = *(a2 + v8 + 1);
    *(v9 + 1) = *(a2 + v8 + 2);
    v9[8] = *(a2 + v8 + 8);
    *(v9 + 1) = *(a2 + v8 + 4);
    v11 = type metadata accessor for SearchFieldState(0);
    v12 = v11[9];
    v27 = type metadata accessor for AttributedString();
    v13 = *(*(v27 - 8) + 16);

    v13(&v9[v12], &v10[v12], v27);
    v14 = v13;
    v9[v11[10]] = v10[v11[10]];
    v15 = v11[11];
    v16 = &v9[v15];
    v17 = &v10[v15];
    v16[4] = v17[4];
    *v16 = *v17;
    type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
    *(a1 + *(v18 + 36)) = *(a2 + *(v18 + 36));
    *(a1 + *(v18 + 40)) = *(a2 + *(v18 + 40));
    v19 = *(a3 + 20);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
    type metadata accessor for Binding<AttributedString>(0);
    v24 = *(v23 + 32);

    v14(&v20[v24], &v21[v24], v27);
    type metadata accessor for SearchBoundProperty<AttributedString>(0);
    *&v20[*(v25 + 36)] = *&v21[*(v25 + 36)];
    *&v20[*(v25 + 40)] = *&v21[*(v25 + 40)];
  }

  return a1;
}

double destroy for SearchStateEnvironmentTransformModifier.Transform(uint64_t a1, uint64_t a2)
{

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = a1 + *(v4 + 32);
  v6 = *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);

  v9 = a1 + *(a2 + 20);

  type metadata accessor for Binding<AttributedString>(0);
  v8(v9 + *(v10 + 32), v7);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);

  return result;
}

void *initializeWithCopy for SearchStateEnvironmentTransformModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v25 = type metadata accessor for AttributedString();
  v12 = *(*(v25 - 8) + 16);

  v12(&v8[v11], &v9[v11], v25);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  v14[4] = v15[4];
  *v14 = *v15;
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  *(a1 + *(v16 + 36)) = *(a2 + *(v16 + 36));
  *(a1 + *(v16 + 40)) = *(a2 + *(v16 + 40));
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a2 + v17 + 8);
  *v18 = *(a2 + v17);
  *(v18 + 1) = v20;
  type metadata accessor for Binding<AttributedString>(0);
  v22 = *(v21 + 32);

  v12(&v18[v22], &v19[v22], v25);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  *&v18[*(v23 + 36)] = *&v19[*(v23 + 36)];
  *&v18[*(v23 + 40)] = *&v19[*(v23 + 40)];

  return a1;
}

void *assignWithCopy for SearchStateEnvironmentTransformModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 24);
  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  *v15 = *v16;
  v15[4] = v16[4];
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  v18 = v17;
  *(a1 + *(v17 + 36)) = *(a2 + *(v17 + 36));

  *(a1 + *(v18 + 40)) = *(a2 + *(v18 + 40));
  v19 = *(a3 + 20);
  v20 = a1 + v19;
  v21 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);

  *(v20 + 1) = *(v21 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v13(&v20[*(v22 + 32)], &v21[*(v22 + 32)], v12);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  v24 = v23;
  *&v20[*(v23 + 36)] = *&v21[*(v23 + 36)];

  *&v20[*(v24 + 40)] = *&v21[*(v24 + 40)];
  return a1;
}

void *initializeWithTake for SearchStateEnvironmentTransformModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *(a2 + v8);
  v9[1] = *(a2 + v8 + 1);
  *(v9 + 1) = *(a2 + v8 + 2);
  v9[8] = *(a2 + v8 + 8);
  *(v9 + 1) = *(a2 + v8 + 4);
  v11 = type metadata accessor for SearchFieldState(0);
  v12 = v11[9];
  v13 = type metadata accessor for AttributedString();
  v14 = *(*(v13 - 8) + 32);
  v14(&v9[v12], &v10[v12], v13);
  v9[v11[10]] = v10[v11[10]];
  v15 = v11[11];
  v16 = &v9[v15];
  v17 = &v10[v15];
  v16[4] = v17[4];
  *v16 = *v17;
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  *(a1 + *(v18 + 36)) = *(a2 + *(v18 + 36));
  *(a1 + *(v18 + 40)) = *(a2 + *(v18 + 40));
  v19 = *(a3 + 20);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v22;
  type metadata accessor for Binding<AttributedString>(0);
  v14(&v20[*(v23 + 32)], &v21[*(v23 + 32)], v13);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  *&v20[*(v24 + 36)] = *&v21[*(v24 + 36)];
  *&v20[*(v24 + 40)] = *&v21[*(v24 + 40)];
  return a1;
}

void *assignWithTake for SearchStateEnvironmentTransformModifier.Transform(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 40);
  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  *v15 = *v16;
  v15[4] = v16[4];
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  v18 = v17;
  *(a1 + *(v17 + 36)) = *(a2 + *(v17 + 36));

  *(a1 + *(v18 + 40)) = *(a2 + *(v18 + 40));
  v19 = *(a3 + 20);
  v20 = a1 + v19;
  v21 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);

  *(v20 + 1) = *(v21 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v13(&v20[*(v22 + 32)], &v21[*(v22 + 32)], v12);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  v24 = v23;
  *&v20[*(v23 + 36)] = *&v21[*(v23 + 36)];

  *&v20[*(v24 + 40)] = *&v21[*(v24 + 40)];
  return a1;
}

uint64_t type metadata completion function for SearchStateEnvironmentTransformModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for SearchPrimitiveModifier.BaseSearchImplementation(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v12;
  v14 = v12 | v8;
  v15 = v14 | 7;
  v16 = (v8 + 9) & ~v8;
  v17 = *(v7 + 64);
  v18 = ((v17 + v16) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v19 = v8 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v18 + (v19 & (v8 + 16)) <= ((v17 + v16) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v20 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v20 = v18 + (v19 & (v8 + 16));
  }

  v21 = *(v10 + 64);
  v22 = v14 <= 7 && ((v12 | v8) & 0x100000) == 0;
  if (!v22 || ((((v21 + ((v12 + (v20 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v12) + 1 + ((v15 + 1) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 42 > 0x18)
  {
    v30 = *a2;
    *a1 = *a2;
    v31 = v30 + ((v14 + 16) & ~v15);

    return v31;
  }

  v76 = v21 + ((v12 + (v20 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v12) + 1;
  *a1 = *a2;
  v80 = a1;
  v23 = a1 & 0xFFFFFFFFFFFFFFF8;
  v24 = a2 & 0xFFFFFFFFFFFFFFF8;
  v25 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v26 = *(v25 + v20);
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    if (v20 <= 3)
    {
      v28 = v20;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *v25;
        if (v20 < 4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v28 == 3)
        {
          v29 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8) | (*((a2 & 0xFFFFFFFFFFFFFFF8) + 10) << 16);
          if (v20 < 4)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v29 = *v25;
        if (v20 < 4)
        {
LABEL_26:
          v26 = (v29 | (v27 << (8 * v20))) + 2;
          goto LABEL_27;
        }
      }

LABEL_24:
      v26 = v29 + 2;
      goto LABEL_27;
    }

    if (v28)
    {
      v29 = *v25;
      if (v20 < 4)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

LABEL_27:
  v77 = v21;
  v78 = v11;
  v79 = v9;
  v32 = ~v8;
  v33 = v20 + 1;
  v75 = v23 + 8;
  if (v26 == 1)
  {
    *(v23 + 8) = *(v24 + 8);
    v34 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v35;
    v36 = (v19 & (v35 + v8 + 8));
    v37 = (v36 + 7);
    *(v34 + 8) = *v36;
    *(v34 + 9) = v36[1];
    *(v34 + 10) = v36[2];
    *(v34 + 11) = v36[3];
    v38 = (v34 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v37) = *(v37 & 0xFFFFFFFFFFFFFFFCLL);
    *(v38 + 4) = *(v39 + 4);
    *v38 = v37;
    v40 = (v38 + v8 + 5) & v32;
    v41 = (v8 + v39 + 5) & v32;
    v42 = *(v7 + 16);
    v43 = v12;
    v44 = v6;

    v45 = v44;
    v13 = v43;
    v42(v40, v41, v45);
    v33 = v20 + 1;
    *(v17 + v40) = *(v41 + v17);
    v46 = (v17 + v40) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = (v41 + v17) & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *(v47 + 4);
    *(v46 + 8) = *(v47 + 8);
    *(v46 + 4) = v48;
    v49 = v23 + 15;
    v50 = v24 + 15;
    v51 = 1;
  }

  else
  {
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 9) = *(v24 + 9);
    *(v23 + 10) = *(v24 + 10);
    *(v23 + 11) = *(v24 + 11);
    v49 = v23 + 15;
    v52 = v49 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = v24 + 15;
    v53 = *(v50 & 0xFFFFFFFFFFFFFFFCLL);
    *(v52 + 4) = *((v50 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    *v52 = v53;
    v54 = ((v49 & 0xFFFFFFFFFFFFFFFCLL) + v8 + 5) & v32;
    v55 = ((v50 & 0xFFFFFFFFFFFFFFFCLL) + v8 + 5) & v32;
    (*(v7 + 16))(v54, v55, v6);
    *(v17 + v54) = *(v17 + v55);
    v56 = (v17 + v54) & 0xFFFFFFFFFFFFFFFCLL;
    v57 = (v17 + v55) & 0xFFFFFFFFFFFFFFFCLL;
    v58 = *(v57 + 4);
    *(v56 + 8) = *(v57 + 8);
    *(v56 + 4) = v58;
    *((v49 + v18) & 0xFFFFFFFFFFFFFFF8) = *((v50 + v18) & 0xFFFFFFFFFFFFFFF8);

    v51 = 0;
  }

  *(v75 + v20) = v51;
  v59 = (v49 + v33) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v50 + v33) & 0xFFFFFFFFFFFFFFF8;
  v61 = *(v60 + 17);
  if (v61 >= 2)
  {
    v61 = *v60 + 2;
  }

  v62 = ~v13;
  if (v61 == 1)
  {
    *v59 = *v60;
    *(v59 + 8) = *(v60 + 8);
    *(v59 + 16) = *(v60 + 16);

    v63 = 1;
  }

  else
  {
    v63 = 0;
    *v59 = *v60;
    *(v59 + 8) = *(v60 + 8);
  }

  *(v59 + 17) = v63;
  v64 = (v13 + 18 + v60) & v62;
  (*(v78 + 16))((v13 + 18 + v59) & v62, v64, v79);
  *(((v13 + 18 + v59) & v62) + v77) = *(v64 + v77);
  v65 = (v49 + v76) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v50 + v76) & 0xFFFFFFFFFFFFFFF8;
  *v65 = *v66;
  v67 = *(v66 + 8);
  if (v67)
  {
    v68 = *(v66 + 16);
    *(v65 + 8) = v67;
    *(v65 + 16) = v68;
  }

  else
  {
    *(v65 + 8) = *(v66 + 8);
  }

  v69 = (v65 + 31) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v66 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v70 + 41))
  {
    v31 = v80;
    if (*(v70 + 40) == 1)
    {
      v71 = *(v70 + 24);
      *(v69 + 24) = v71;
      *(v69 + 32) = *(v70 + 32);
      (**(v71 - 8))(v69);
      *(v69 + 40) = 1;
    }

    else
    {
      v72 = *v70;
      v73 = *(v70 + 16);
      *(v69 + 25) = *(v70 + 25);
      *v69 = v72;
      *(v69 + 16) = v73;
    }

    *(v69 + 41) = 1;
  }

  else
  {
    *v69 = *v70;
    *(v69 + 41) = 0;

    return v80;
  }

  return v31;
}

uint64_t outlined destroy of Environment<ToolbarItemPlacement?>.Content(uint64_t a1)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(0, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement?>.Content, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement, MEMORY[0x1E697DCB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI5StateVySbGMaTm_2(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

_BYTE *initializeWithTake for SearchPrimitiveModifier.BaseSearchImplementation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v64 = *(a3 + 16);
  v9 = *(v64 - 8);
  v10 = *(v9 + 80);
  v11 = v8 | v10 | 7;
  v12 = &a1[v11 + 1] & ~v11;
  v13 = &a2[v11 + 1] & ~v11;
  v14 = v8 + 9;
  v15 = (v8 + 9) & ~v8;
  v16 = *(v7 + 64);
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v18 = *(v7 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v17 + ((v8 + 16) & v18) <= ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v19 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v19 = v17 + ((v8 + 16) & v18);
  }

  v20 = *(v13 + v19);
  v21 = v20 - 2;
  if (v20 < 2)
  {
    goto LABEL_18;
  }

  if (v19 <= 3)
  {
    v22 = v19;
  }

  else
  {
    v22 = 4;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      goto LABEL_18;
    }

    v23 = *v13;
  }

  else if (v22 == 2)
  {
    v23 = *v13;
  }

  else if (v22 == 3)
  {
    v23 = *v13 | (*(v13 + 2) << 16);
  }

  else
  {
    v23 = *v13;
  }

  v24 = (v23 | (v21 << (8 * v19))) + 2;
  v20 = v23 + 2;
  if (v19 < 4)
  {
    v20 = v24;
  }

LABEL_18:
  v25 = ~v8;
  if (v20 == 1)
  {
    *v12 = *v13;
    v26 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v26 = *v27;
    v28 = ((v26 + v8 + 8) & v18);
    v29 = ((v27 + v8 + 8) & v18);
    v30 = (v29 + 7);
    *v28 = *v29;
    v28[1] = v29[1];
    v28[2] = v29[2];
    v28[3] = v29[3];
    v31 = (v28 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v30 &= 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v28) = *v30;
    *(v31 + 4) = *(v30 + 4);
    *v31 = v28;
    v32 = v8 + 5;
    v33 = (v32 + v31) & v25;
    v34 = (v32 + v30) & v25;
    (*(v7 + 32))(v33, v34, v6);
    *(v33 + v16) = *(v34 + v16);
    v35 = (v33 + v16) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = (v34 + v16) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *(v36 + 4);
    *(v35 + 8) = *(v36 + 8);
    *(v35 + 4) = v37;
    v38 = v12 | 7;
    v39 = v13 | 7;
    v40 = 1;
  }

  else
  {
    *v12 = *v13;
    *(v12 + 1) = *(v13 + 1);
    *(v12 + 2) = *(v13 + 2);
    *(v12 + 3) = *(v13 + 3);
    v41 = *(v13 + 4);
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 4) = v41;
    v42 = (v14 + v12) & v25;
    v43 = (v14 + v13) & v25;
    (*(v7 + 32))(v42, v43, v6);
    v40 = 0;
    *(v42 + v16) = *(v43 + v16);
    v44 = (v42 + v16) & 0xFFFFFFFFFFFFFFFCLL;
    v45 = (v43 + v16) & 0xFFFFFFFFFFFFFFFCLL;
    v46 = *(v45 + 4);
    *(v44 + 8) = *(v45 + 8);
    *(v44 + 4) = v46;
    v38 = v12 | 7;
    v39 = v13 | 7;
    *(((v12 | 7) + v17) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v17) & 0xFFFFFFFFFFFFFFF8);
  }

  *(v12 + v19) = v40;
  v47 = (v38 + v19 + 1) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v39 + v19 + 1) & 0xFFFFFFFFFFFFFFF8;
  v49 = *(v48 + 17);
  if (v49 >= 2)
  {
    v49 = *v48 + 2;
  }

  if (v49 == 1)
  {
    v50 = *v48;
    *(v47 + 16) = *(v48 + 16);
    *v47 = v50;
    v51 = 1;
  }

  else
  {
    v51 = 0;
    *v47 = *v48;
  }

  *(v47 + 17) = v51;
  v52 = (v10 + 18 + v47) & ~v10;
  v53 = (v10 + 18 + v48) & ~v10;
  (*(v9 + 32))(v52, v53, v64);
  v54 = *(v9 + 64);
  *(v54 + v52) = *(v54 + v53);
  v55 = ((v10 + (v19 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v10) + v54 + 1;
  v56 = (v38 + v55) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v39 + v55) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v57 + 16);
  *v56 = *v57;
  *(v56 + 16) = v58;
  v59 = ((v56 + 31) & 0xFFFFFFFFFFFFFFF8);
  v60 = ((v57 + 31) & 0xFFFFFFFFFFFFFFF8);
  v62 = *v60;
  v61 = v60[1];
  *(v59 + 26) = *(v60 + 26);
  *v59 = v62;
  v59[1] = v61;
  return a1;
}

_BYTE *assignWithTake for SearchPrimitiveModifier.BaseSearchImplementation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | 3;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = v8 | v13 | 7;
  v85 = a1;
  v15 = &a1[v14 + 1] & ~v14;
  v16 = &a2[v14 + 1] & ~v14;
  if (v15 == v16)
  {
    v17 = *(v7 + 64) + ((v8 + 9) & ~v8);
    v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + 24;
    v20 = (v8 + 16) & ~v9;
    goto LABEL_45;
  }

  v77 = v8 + 9;
  v80 = *(v7 + 64);
  v21 = v80 + ((v8 + 9) & ~v8);
  v83 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v84 = *(a3 + 16);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v19 = (v21 & 0xFFFFFFFFFFFFFFF8) + 24;
  v82 = (v8 + 16) & ~v9;
  v79 = v22;
  if (v22 + v82 <= v19)
  {
    v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v23 = v22 + v82;
  }

  v24 = *(v15 + v23);
  v25 = v24 - 2;
  if (v24 >= 2)
  {
    if (v23 <= 3)
    {
      v26 = v23;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *v15;
        if (v23 >= 4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v26 == 3)
        {
          v27 = *v15 | (*(v15 + 2) << 16);
          if (v23 < 4)
          {
            goto LABEL_21;
          }

LABEL_19:
          v24 = v27 + 2;
          goto LABEL_22;
        }

        v27 = *v15;
        if (v23 >= 4)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v24 = (v27 | (v25 << (8 * v23))) + 2;
      goto LABEL_22;
    }

    if (!v26)
    {
      goto LABEL_22;
    }

    v27 = *v15;
    if (v23 < 4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_22:
  v28 = ~v9;
  v81 = v6;
  v78 = ~v8;
  if (v24 == 1)
  {
    v75 = v11;
    v76 = v23;
    v29 = v6;

    v12 = v75;
    v30 = v29;
    v23 = v76;
    (*(v7 + 8))((v8 + ((((v8 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v28) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v8, v30);
  }

  else
  {
    (*(v7 + 8))((v77 + v15) & ~v8, v6);
  }

  v31 = *(v16 + v23);
  v32 = v31 - 2;
  if (v31 >= 2)
  {
    if (v23 <= 3)
    {
      v33 = v23;
    }

    else
    {
      v33 = 4;
    }

    if (v33 <= 1)
    {
      if (!v33)
      {
        goto LABEL_39;
      }

      v34 = *v16;
      if (v23 < 4)
      {
LABEL_42:
        if ((v34 | (v32 << (8 * v23))) != 0xFFFFFFFF)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    else if (v33 == 2)
    {
      v34 = *v16;
      if (v23 < 4)
      {
        goto LABEL_42;
      }
    }

    else if (v33 == 3)
    {
      v34 = *v16 | (*(v16 + 2) << 16);
      if (v23 < 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v34 = *v16;
      if (v23 < 4)
      {
        goto LABEL_42;
      }
    }

    v31 = v34 + 2;
  }

LABEL_39:
  if (v31 != 1)
  {
LABEL_43:
    *v15 = *v16;
    *(v15 + 1) = *(v16 + 1);
    *(v15 + 2) = *(v16 + 2);
    *(v15 + 3) = *(v16 + 3);
    v47 = *(v16 + 4);
    *(v15 + 8) = *(v16 + 8);
    *(v15 + 4) = v47;
    v48 = (v77 + v15) & v78;
    v49 = (v77 + v16) & v78;
    (*(v7 + 32))(v48, v49, v81);
    *(v80 + v48) = *(v80 + v49);
    v50 = (v80 + v48) & 0xFFFFFFFFFFFFFFFCLL;
    v51 = (v80 + v49) & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *(v51 + 4);
    *(v50 + 8) = *(v51 + 8);
    *(v50 + 4) = v52;
    *((v79 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v79 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(v15 + v23) = 0;
    goto LABEL_44;
  }

LABEL_40:
  *v15 = *v16;
  v35 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v36;
  v37 = ((v35 + v8 + 8) & v28);
  v38 = ((v36 + v8 + 8) & v28);
  v39 = (v38 + 7);
  *v37 = *v38;
  v37[1] = v38[1];
  v37[2] = v38[2];
  v37[3] = v38[3];
  v40 = (v37 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v41 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v39) = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
  *(v40 + 4) = *(v41 + 4);
  *v40 = v39;
  v42 = (v8 + 5 + v40) & v78;
  v43 = (v8 + 5 + v41) & v78;
  (*(v7 + 32))(v42, v43, v81);
  *(v80 + v42) = *(v80 + v43);
  v44 = (v80 + v42) & 0xFFFFFFFFFFFFFFFCLL;
  v45 = (v80 + v43) & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 4);
  *(v44 + 8) = *(v45 + 8);
  *(v44 + 4) = v46;
  *(v15 + v23) = 1;
LABEL_44:
  v18 = v83;
  v10 = v84;
  v20 = v82;
LABEL_45:
  v53 = v20 + v18 + 9;
  if (v53 <= v19)
  {
    v54 = v19;
  }

  else
  {
    v54 = v53;
  }

  v55 = v15 | 7;
  v56 = ((v15 | 7) + v54 + 1) & 0xFFFFFFFFFFFFFFF8;
  v57 = ((v16 | 7) + v54 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v56 != v57)
  {
    v58 = *(v56 + 17);
    if (v58 >= 2)
    {
      v58 = *v56 + 2;
    }

    if (v58 == 1)
    {
    }

    v59 = *(v57 + 17);
    if (v59 >= 2)
    {
      v59 = *v57 + 2;
    }

    if (v59 == 1)
    {
      v60 = *v57;
      *(v56 + 16) = *(v57 + 16);
      *v56 = v60;
      v61 = 1;
    }

    else
    {
      v61 = 0;
      *v56 = *v57;
    }

    *(v56 + 17) = v61;
  }

  v62 = (v13 + 18 + v56) & ~v13;
  v63 = (v13 + 18 + v57) & ~v13;
  (*(v12 + 40))(v62, v63, v10);
  v64 = *(v12 + 64);
  *(v64 + v62) = *(v64 + v63);
  v65 = ((v13 + (v54 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v13) + v64 + 1;
  v66 = (v55 + v65) & 0xFFFFFFFFFFFFFFF8;
  v67 = ((v16 | 7) + v65) & 0xFFFFFFFFFFFFFFF8;
  *v66 = *v67;
  if (*(v66 + 8))
  {
    v68 = *(v67 + 8);
    if (v68)
    {
      v69 = *(v67 + 16);
      *(v66 + 8) = v68;
      *(v66 + 16) = v69;

      goto LABEL_64;
    }

    outlined destroy of TriggerSubmitAction(v66 + 8);
  }

  *(v66 + 8) = *(v67 + 8);
LABEL_64:
  v70 = ((v66 + 31) & 0xFFFFFFFFFFFFFFF8);
  v71 = ((v67 + 31) & 0xFFFFFFFFFFFFFFF8);
  if (v70 != v71)
  {
    outlined destroy of Environment<ToolbarItemPlacement?>.Content(v70);
    v72 = *(v71 + 26);
    v73 = v71[1];
    *v70 = *v71;
    v70[1] = v73;
    *(v70 + 26) = v72;
  }

  return v85;
}

uint64_t getEnumTagSinglePayload for SearchPrimitiveModifier.BaseSearchImplementation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = *(v6 + 80);
  v8 = ((v7 + 9) & ~v7) + *(v6 + 64);
  v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  v11 = ((*(v6 + 80) & 0xFC ^ 0x1FCu) & (v7 + 16)) + v9 + 9;
  v12 = *(*(a3 + 16) - 8);
  if (v11 > v10)
  {
    v10 = v11;
  }

  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = *(v12 + 64);
  if (v13 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v7 | v14 | 7;
  v18 = v15 + ((v14 + (v10 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v14) + 1;
  if (v16 < a2)
  {
    v19 = ((((v18 + ((v17 + 1) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 42;
    if (v19 <= 3)
    {
      v20 = ((a2 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v23 = *(a1 + v19);
        if (!v23)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_30;
      }
    }

    v25 = (v23 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v26 = *a1;
    }

    else
    {
      v25 = 0;
      v26 = *a1;
    }

    v30 = v16 + (v26 | v25);
    return (v30 + 1);
  }

LABEL_30:
  v27 = (a1 + v17 + 1) & ~v17;
  if (v13 < 0x7FFFFFFE)
  {
    v29 = *(((v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v29 >= 0xFFFFFFFF)
    {
      LODWORD(v29) = -1;
    }

    v30 = v29 - 1;
    if (v30 < 0)
    {
      v30 = -1;
    }

    return (v30 + 1);
  }

  v28 = *(*(*(a3 + 16) - 8) + 48);

  return v28((v14 + ((v10 + v27 + 8) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v14);
}

void storeEnumTagSinglePayload for SearchPrimitiveModifier.BaseSearchImplementation(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = *(v8 + 80);
  v10 = ((v9 + 9) & ~v9) + *(v8 + 64);
  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
  v13 = ((*(v8 + 80) & 0xFC ^ 0x1FCu) & (v9 + 16)) + v11 + 9;
  if (v13 > v12)
  {
    v12 = v13;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  if (v15 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v9 | v16 | 7;
  v20 = *(v14 + 64) + ((v16 + (v12 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v16) + 1;
  v21 = ((((v20 + ((v19 + 1) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 42;
  if (v18 >= a3)
  {
    v24 = 0;
    if (v18 >= a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v18 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v22 = 2;
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

    if (v18 >= a2)
    {
LABEL_22:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

LABEL_37:
        v27 = ((a1 + v19 + 1) & ~v19);
        if (v15 < 0x7FFFFFFE)
        {
          v31 = (&v27[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v31[1] = 0;
            v31[2] = 0;
            *v31 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v31[1] = a2;
          }
        }

        else if (v17 >= a2)
        {
          v32 = *(v14 + 56);

          v32((v16 + (&v27[v12 + 8] & 0xFFFFFFFFFFFFFFF8) + 18) & ~v16, a2);
        }

        else
        {
          if (v20 <= 3)
          {
            v28 = ~(-1 << (8 * v20));
          }

          else
          {
            v28 = -1;
          }

          if (v20)
          {
            v29 = v28 & (~v17 + a2);
            if (v20 <= 3)
            {
              v30 = v20;
            }

            else
            {
              v30 = 4;
            }

            bzero(v27, v20);
            if (v30 > 2)
            {
              if (v30 == 3)
              {
                *v27 = v29;
                v27[2] = BYTE2(v29);
              }

              else
              {
                *v27 = v29;
              }
            }

            else if (v30 == 1)
            {
              *v27 = v29;
            }

            else
            {
              *v27 = v29;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }
  }

  v25 = ~v18 + a2;
  bzero(a1, ((((v20 + ((v19 + 1) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 42);
  if (v21 <= 3)
  {
    v26 = HIWORD(v25) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v25;
    if (v24 > 1)
    {
LABEL_32:
      if (v24 == 2)
      {
        *(a1 + v21) = v26;
      }

      else
      {
        *(a1 + v21) = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v24 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v24)
  {
    *(a1 + v21) = v26;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SearchPrimitiveModifier.SearchConfigModifier(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v7 + 64);
  v11 = ((v9 + 9) & ~v9) + v10;
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v13 = (v11 & 0xFFFFFFFFFFFFFFF8) + 24;
  v14 = v8 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v12 + (v14 & (v8 + 16)) <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12 + (v14 & (v8 + 16));
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v16 + 80);
  v18 = *(v16 + 64);
  v19 = v17 | v8;
  v20 = (*(v16 + 80) | v8) & 0x100000;
  if ((v17 | v9) > 7 || v20 != 0 || ((((v17 + (v15 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v17) + v18 + 9) & 0xFFFFFFFFFFFFFFF8) + 24 > 0x18)
  {
    v23 = *a2;
    *a1 = *a2;
    a1 = v23 + ((v19 & 0xF8 ^ 0x1F8) & (v19 + 16));
    goto LABEL_39;
  }

  v24 = *(a2 + v15);
  v25 = v24 - 2;
  if (v24 >= 2)
  {
    if (v15 <= 3)
    {
      v26 = v15;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *a2;
        if (v15 < 4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v26 == 3)
        {
          v27 = *a2 | (*(a2 + 2) << 16);
          if (v15 < 4)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v27 = *a2;
        if (v15 < 4)
        {
LABEL_28:
          v24 = (v27 | (v25 << (8 * v15))) + 2;
          goto LABEL_29;
        }
      }

LABEL_26:
      v24 = v27 + 2;
      goto LABEL_29;
    }

    if (v26)
    {
      v27 = *a2;
      if (v15 < 4)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_29:
  v71 = ((v17 + (v15 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v17) + v18;
  v72 = *(v16 + 64);
  v73 = *(*(a3 + 16) - 8);
  v74 = *(a3 + 16);
  v28 = ~v9;
  v70 = v15 + 1;
  v75 = a2;
  if (v24 == 1)
  {
    v29 = a2 + 7;
    *a1 = *a2;
    v30 = a1 + 7;
    v31 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = (v14 & (v32 + v9 + 8));
    v34 = (v33 + 7);
    *(v31 + 8) = *v33;
    *(v31 + 9) = v33[1];
    *(v31 + 10) = v33[2];
    *(v31 + 11) = v33[3];
    v35 = (v31 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v34) = *(v34 & 0xFFFFFFFFFFFFFFFCLL);
    *(v35 + 4) = *(v36 + 4);
    *v35 = v34;
    v37 = (v35 + v9 + 5) & v28;
    v38 = (v9 + v36 + 5) & v28;
    v39 = *(v7 + 16);
    v40 = v6;

    v39(v37, v38, v40);
    *(v37 + v10) = *(v38 + v10);
    v41 = (v37 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = (v38 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *(v42 + 4);
    *(v41 + 8) = *(v42 + 8);
    *(v41 + 4) = v43;
    v44 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = *(a2 + 3);
    v30 = a1 + 7;
    v45 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = a2 + 7;
    v46 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *v46;
    *(v45 + 4) = *(v46 + 4);
    *v45 = v47;
    v48 = (v45 + v9 + 5) & v28;
    v49 = (v46 + v9 + 5) & v28;
    (*(v7 + 16))(v48, v49, v6);
    *(v48 + v10) = *(v49 + v10);
    v50 = (v48 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v51 = (v49 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *(v51 + 4);
    *(v50 + 8) = *(v51 + 8);
    *(v50 + 4) = v52;
    *((a1 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *(&v29[v12] & 0xFFFFFFFFFFFFFFF8);

    v44 = 0;
  }

  *(a1 + v15) = v44;
  v53 = (v30 + v70) & 0xFFFFFFFFFFFFFFF8;
  v54 = &v29[v70] & 0xFFFFFFFFFFFFFFF8;
  v55 = *(v54 + 17);
  if (v55 >= 2)
  {
    v55 = *v54 + 2;
  }

  v56 = ~v17;
  v57 = v71 + 1;
  if (v55 == 1)
  {
    *v53 = *v54;
    *(v53 + 8) = *(v54 + 8);
    *(v53 + 16) = *(v54 + 16);

    v58 = 1;
  }

  else
  {
    v58 = 0;
    *v53 = *v54;
    *(v53 + 8) = *(v54 + 8);
  }

  *(v53 + 17) = v58;
  v59 = (v17 + 18 + v53) & v56;
  v60 = (v17 + 18 + v54) & v56;
  (*(v73 + 16))(v59, v60, v74);
  *(v59 + v72) = *(v60 + v72);
  *(v57 + a1) = *(v75 + v57);
  v61 = (v57 + a1) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v75 + v57) & 0xFFFFFFFFFFFFFFF8;
  v63 = v62 + 8;
  *(v61 + 8) = *(v62 + 8);
  v64 = v61 + 8;
  v67 = *(v62 + 16);
  v65 = (v62 + 16);
  v66 = v67;
  if (!v67)
  {
    *(v64 + 8) = *v65;
    return a1;
  }

  v68 = *(v63 + 16);
  *(v64 + 8) = v66;
  *(v64 + 16) = v68;
LABEL_39:

  return a1;
}

uint64_t initializeWithTake for SearchPrimitiveModifier.SearchConfigModifier(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = ((v8 + 9) & ~v8) + v9;
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v12 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
  v13 = v8 | 3;
  if (v11 + ((v8 + 16) & ~(v8 | 3)) <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11 + ((v8 + 16) & ~(v8 | 3));
  }

  v15 = a2[v14];
  v16 = v15 - 2;
  if (v15 < 2)
  {
    goto LABEL_20;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = *a2;
    if (v14 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v17 == 2)
  {
    v18 = *a2;
    if (v14 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v15 = v18 + 2;
      goto LABEL_20;
    }

    v18 = *a2;
    if (v14 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v15 = (v18 | (v16 << (8 * v14))) + 2;
LABEL_20:
  v19 = ~v8;
  if (v15 == 1)
  {
    *a1 = *a2;
    v20 = ~v13;
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = v21 + v13;
    v24 = v22 + v13;
    v25 = ((v23 + 8) & v20);
    v26 = ((v24 + 8) & v20);
    v27 = (v26 + 7);
    *v25 = *v26;
    v25[1] = v26[1];
    v25[2] = v26[2];
    v25[3] = v26[3];
    v28 = (v25 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v27) = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
    *(v28 + 4) = *(v29 + 4);
    *v28 = v27;
    v30 = v8 + 5;
    v31 = (v30 + v28) & v19;
    v32 = (v30 + v29) & v19;
    (*(v7 + 32))(v31, v32, v6);
    *(v31 + v9) = *(v32 + v9);
    v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v34 = (v32 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 4);
    *(v33 + 8) = *(v34 + 8);
    *(v33 + 4) = v35;
    v36 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = a2[3];
    v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *v38;
    *(v37 + 4) = *(v38 + 4);
    *v37 = v39;
    v40 = (v37 + v8 + 5) & v19;
    v41 = (v38 + v8 + 5) & v19;
    (*(v7 + 32))(v40, v41, v6);
    v36 = 0;
    *(v40 + v9) = *(v41 + v9);
    v42 = (v40 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v41 + v9) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *(v43 + 4);
    *(v42 + 8) = *(v43 + 8);
    *(v42 + 4) = v44;
    *((a1 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
  }

  *(a1 + v14) = v36;
  v45 = (v14 + 8 + a1) & 0xFFFFFFFFFFFFFFF8;
  v46 = &a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8;
  v47 = *(v46 + 17);
  if (v47 >= 2)
  {
    v47 = *v46 + 2;
  }

  if (v47 == 1)
  {
    v48 = *v46;
    *(v45 + 16) = *(v46 + 16);
    *v45 = v48;
    v49 = 1;
  }

  else
  {
    v49 = 0;
    *v45 = *v46;
  }

  *(v45 + 17) = v49;
  v50 = *(*(a3 + 16) - 8);
  v51 = v50 + 32;
  v52 = *(v50 + 80);
  v53 = (v45 + v52 + 18) & ~v52;
  v54 = (v46 + v52 + 18) & ~v52;
  (*(v50 + 32))(v53, v54);
  v55 = *(v51 + 32);
  *(v53 + v55) = *(v54 + v55);
  v56 = v55 + (((v14 & 0xFFFFFFFFFFFFFFF8) + v52 + 26) & ~v52) + 1;
  v57 = v56 + a1;
  v58 = &a2[v56];
  *v57 = *v58;
  v57 &= 0xFFFFFFFFFFFFFFF8;
  v58 &= 0xFFFFFFFFFFFFFFF8;
  v59 = *(v58 + 24);
  *(v57 + 8) = *(v58 + 8);
  *(v57 + 24) = v59;
  return a1;
}

unsigned __int8 *assignWithTake for SearchPrimitiveModifier.SearchConfigModifier(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a1 == a2)
  {
    goto LABEL_44;
  }

  v75 = type metadata accessor for AttributedString();
  v6 = *(v75 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 9) & ~v7) + v8;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = v7 | 3;
  v73 = v10;
  if (v10 + ((v7 + 16) & ~(v7 | 3)) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10 + ((v7 + 16) & ~(v7 | 3));
  }

  v14 = a1[v13];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a1 | (a1[2] << 16);
          if (v13 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v14 = v17 + 2;
          goto LABEL_21;
        }

        v17 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v14 = (v17 | (v15 << (8 * v13))) + 2;
      goto LABEL_21;
    }

    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = *a1;
    if (v13 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  v18 = ~v7;
  v19 = ~v12;
  if (v14 == 1)
  {

    (*(v6 + 8))((v7 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & v19) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v18, v75);
  }

  else
  {
    (*(v6 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 5) & v18, v75);
  }

  v20 = a2[v13];
  v21 = v20 - 2;
  if (v20 >= 2)
  {
    if (v13 <= 3)
    {
      v22 = v13;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_38;
      }

      v23 = *a2;
      if (v13 < 4)
      {
LABEL_41:
        if ((v23 | (v21 << (8 * v13))) != 0xFFFFFFFF)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }
    }

    else if (v22 == 2)
    {
      v23 = *a2;
      if (v13 < 4)
      {
        goto LABEL_41;
      }
    }

    else if (v22 == 3)
    {
      v23 = *a2 | (a2[2] << 16);
      if (v13 < 4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v23 = *a2;
      if (v13 < 4)
      {
        goto LABEL_41;
      }
    }

    v20 = v23 + 2;
  }

LABEL_38:
  if (v20 != 1)
  {
LABEL_42:
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *v38;
    *(v37 + 4) = *(v38 + 4);
    *v37 = v39;
    v40 = v38 + v7;
    v41 = (v37 + v7 + 5) & v18;
    v42 = (v40 + 5) & v18;
    (*(v6 + 32))(v41, v42, v75);
    *(v41 + v8) = *(v42 + v8);
    v43 = (v41 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = (v42 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *(v44 + 4);
    *(v43 + 8) = *(v44 + 8);
    *(v43 + 4) = v45;
    *(&a1[v73 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v73 + 7] & 0xFFFFFFFFFFFFFFF8);
    a1[v13] = 0;
    goto LABEL_43;
  }

LABEL_39:
  *a1 = *a2;
  v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + v12 + 8) & v19);
  v27 = ((v25 + v12 + 8) & v19);
  v28 = (v27 + 7);
  *v26 = *v27;
  v26[1] = v27[1];
  v26[2] = v27[2];
  v26[3] = v27[3];
  v29 = (v26 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v28) = *(v28 & 0xFFFFFFFFFFFFFFFCLL);
  *(v29 + 4) = *(v30 + 4);
  *v29 = v28;
  v31 = v7 + 5;
  v32 = (v7 + 5 + v29) & v18;
  v33 = (v31 + v30) & v18;
  (*(v6 + 32))(v32, v33, v75);
  *(v32 + v8) = *(v33 + v8);
  v34 = (v32 + v8) & 0xFFFFFFFFFFFFFFFCLL;
  v35 = (v33 + v8) & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 4);
  *(v34 + 8) = *(v35 + 8);
  *(v34 + 4) = v36;
  a1[v13] = 1;
LABEL_43:
  v3 = a3;
LABEL_44:
  v46 = *(type metadata accessor for AttributedString() - 8);
  v47 = ((*(v46 + 80) + 9) & ~*(v46 + 80)) + *(v46 + 64);
  v48 = v47 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = (v47 & 0xFFFFFFFFFFFFFFF8) + 24;
  v50 = ((*(v46 + 80) & 0xFC ^ 0x1FCu) & (*(v46 + 80) + 16)) + v48 + 9;
  if (v50 <= v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v50;
  }

  v52 = &a1[v51 + 8] & 0xFFFFFFFFFFFFFFF8;
  v53 = &a2[v51 + 8] & 0xFFFFFFFFFFFFFFF8;
  if (v52 != v53)
  {
    v54 = *(v52 + 17);
    if (v54 >= 2)
    {
      v54 = *v52 + 2;
    }

    if (v54 == 1)
    {
    }

    v55 = *(v53 + 17);
    if (v55 >= 2)
    {
      v55 = *v53 + 2;
    }

    if (v55 == 1)
    {
      v56 = *v53;
      *(v52 + 16) = *(v53 + 16);
      *v52 = v56;
      v57 = 1;
    }

    else
    {
      v57 = 0;
      *v52 = *v53;
    }

    *(v52 + 17) = v57;
  }

  v58 = *(*(v3 + 16) - 8);
  v59 = v58 + 40;
  v60 = *(v58 + 80);
  v61 = (v52 + v60 + 18) & ~v60;
  v62 = (v53 + v60 + 18) & ~v60;
  (*(v58 + 40))(v61, v62);
  v63 = *(v59 + 24);
  *(v61 + v63) = *(v62 + v63);
  v64 = v63 + (((v51 & 0xFFFFFFFFFFFFFFF8) + v60 + 26) & ~v60) + 1;
  v65 = &a2[v64];
  a1[v64] = a2[v64];
  v66 = &a1[v64] & 0xFFFFFFFFFFFFFFF8;
  v67 = v65 & 0xFFFFFFFFFFFFFFF8;
  *(v66 + 8) = *((v65 & 0xFFFFFFFFFFFFFFF8) + 8);
  v68 = v66 + 8;
  v69 = (v68 + 8);
  if (!*(v68 + 8))
  {
    goto LABEL_62;
  }

  v70 = *(v67 + 16);
  if (!v70)
  {
    outlined destroy of TriggerSubmitAction(v68 + 8);
LABEL_62:
    *v69 = *(v67 + 16);
    return a1;
  }

  v71 = *(v67 + 24);
  *(v68 + 8) = v70;
  *(v68 + 16) = v71;

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchPrimitiveModifier.SearchConfigModifier(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = ((*(v6 + 80) + 9) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
  v10 = ((*(v6 + 80) & 0xFC ^ 0x1FCu) & (*(v6 + 80) + 16)) + v8 + 9;
  v11 = *(*(a3 + 16) - 8);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v12 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((v13 + (v10 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v13) + v14;
  if (v15 < a2)
  {
    v17 = ((v16 + 9) & 0xFFFFFFFFFFFFFFF8) + 24;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v15 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (!v21)
      {
        goto LABEL_29;
      }

      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    v28 = v15 + (v25 | v24);
    return (v28 + 1);
  }

LABEL_29:
  if (v12 < 0x7FFFFFFE)
  {
    v27 = *(((a1 + v16 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    v28 = v27 - 1;
    if (v28 < 0)
    {
      v28 = -1;
    }

    return (v28 + 1);
  }

  v26 = *(*(*(a3 + 16) - 8) + 48);

  return v26((v13 + ((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v13);
}

void storeEnumTagSinglePayload for SearchPrimitiveModifier.SearchConfigModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = ((*(v8 + 80) + 9) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = ((*(v8 + 80) & 0xFC ^ 0x1FCu) & (*(v8 + 80) + 16)) + v10 + 9;
  v13 = *(*(a4 + 16) - 8);
  if (v12 <= v11)
  {
    v12 = v11;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v13 + 84);
  v16 = *(v13 + 80);
  v17 = *(v13 + 64);
  if (v15 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v15;
  }

  v20 = ((v16 + (v12 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v16) + v17;
  v21 = ((v20 + 9) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((v20 + 9) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v22 = a3 - v19 + 1;
    }

    else
    {
      v22 = 2;
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

    v25 = a2 - v19;
    if (a2 <= v19)
    {
LABEL_22:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *&a1[v21] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v21] = 0;
      }

      else if (v24)
      {
        a1[v21] = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        v28 = v20 + 1;
        if (v15 < 0x7FFFFFFE)
        {
          v32 = (&a1[v28] & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v32[2] = 0;
            v32[3] = 0;
            v32[1] = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v32[2] = a2;
          }
        }

        else if (v18 >= a2)
        {
          v33 = *(v14 + 56);

          v33((v16 + (&a1[v12 + 8] & 0xFFFFFFFFFFFFFFF8) + 18) & ~v16, a2);
        }

        else
        {
          if (v28 <= 3)
          {
            v29 = ~(-1 << (8 * v28));
          }

          else
          {
            v29 = -1;
          }

          if (v20 != -1)
          {
            v30 = v29 & (~v18 + a2);
            if (v28 <= 3)
            {
              v31 = v20 + 1;
            }

            else
            {
              v31 = 4;
            }

            bzero(a1, v28);
            if (v31 > 2)
            {
              if (v31 == 3)
              {
                *a1 = v30;
                a1[2] = BYTE2(v30);
              }

              else
              {
                *a1 = v30;
              }
            }

            else if (v31 == 1)
            {
              *a1 = v30;
            }

            else
            {
              *a1 = v30;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if (((v20 + 9) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((v20 + 9) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v27 = ~v19 + a2;
    bzero(a1, ((v20 + 9) & 0xFFFFFFFFFFFFFFF8) + 24);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *&a1[v21] = v26;
    }

    else
    {
      *&a1[v21] = v26;
    }
  }

  else if (v24)
  {
    a1[v21] = v26;
  }
}

double destroy for SearchPrimitiveModifier.ForwardedEnvironment(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  return result;
}

uint64_t assignWithCopy for SearchPrimitiveModifier.ForwardedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  v5 = (a2 + 8);
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v4)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {
    outlined destroy of TriggerSubmitAction(a1 + 8);
    goto LABEL_7;
  }

  v6 = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;

  return a1;
}

__n128 assignWithTake for SearchPrimitiveModifier.ForwardedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a1 + 8);
  v4 = (a2 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3)
    {
      v5 = *(a2 + 16);
      *(a1 + 8) = v3;
      *(a1 + 16) = v5;

      return result;
    }

    outlined destroy of TriggerSubmitAction(a1 + 8);
  }

  result = *v4;
  *v2 = *v4;
  return result;
}

void *initializeBufferWithCopyOfBuffer for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v5 = *(a3 + 44);
    v6 = (a1 + v5);
    v7 = a2 + v5;
    v8 = type metadata accessor for SearchFieldState(0);
    v9 = *(v8 - 1);
    if ((*(v9 + 48))(v7, 1, v8))
    {
      type metadata accessor for SearchFieldState?(0);
      memcpy(v6, v7, *(*(v10 - 8) + 64));
    }

    else
    {
      *v6 = *v7;
      v6[1] = v7[1];
      *(v6 + 1) = *(v7 + 1);
      *(v6 + 1) = *(v7 + 1);
      v6[8] = v7[8];
      v12 = v8[9];
      v13 = type metadata accessor for AttributedString();
      (*(*(v13 - 8) + 16))(&v6[v12], &v7[v12], v13);
      v6[v8[10]] = v7[v8[10]];
      v14 = v8[11];
      v15 = &v6[v14];
      v16 = &v7[v14];
      v15[4] = v16[4];
      *v15 = *v16;
      (*(v9 + 56))(v6, 0, 1, v8);
    }
  }

  return v3;
}

_DWORD *assignWithCopy for SearchPrimitiveModifier.FocusStoreListFilter(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v4 = *(a3 + 44);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for SearchFieldState(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = v9(v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      *v5 = *v6;
      v5[1] = v6[1];
      v5[2] = v6[2];
      v5[3] = v6[3];
      v21 = *(v6 + 1);
      v5[8] = v6[8];
      *(v5 + 1) = v21;
      v22 = v7[9];
      v23 = type metadata accessor for AttributedString();
      (*(*(v23 - 8) + 24))(&v5[v22], &v6[v22], v23);
      v5[v7[10]] = v6[v7[10]];
      v24 = v7[11];
      v25 = &v5[v24];
      v26 = &v6[v24];
      *v25 = *v26;
      v25[4] = v26[4];
      return a1;
    }

    outlined destroy of SearchEnvironmentWritingModifier(v5, type metadata accessor for SearchFieldState);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for SearchFieldState?(0);
    memcpy(v5, v6, *(*(v19 - 8) + 64));
    return a1;
  }

  *v5 = *v6;
  v5[1] = v6[1];
  v5[2] = v6[2];
  v5[3] = v6[3];
  v12 = *(v6 + 1);
  v5[8] = v6[8];
  *(v5 + 1) = v12;
  v13 = v7[9];
  v14 = type metadata accessor for AttributedString();
  (*(*(v14 - 8) + 16))(&v5[v13], &v6[v13], v14);
  v5[v7[10]] = v6[v7[10]];
  v15 = v7[11];
  v16 = &v5[v15];
  v17 = &v6[v15];
  v18 = v17[4];
  *v16 = *v17;
  v16[4] = v18;
  (*(v8 + 56))(v5, 0, 1, v7);
  return a1;
}

uint64_t initializeWithTake for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 44);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = type metadata accessor for SearchFieldState(0);
  v8 = *(v7 - 1);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    type metadata accessor for SearchFieldState?(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    *v5 = *v6;
    v5[1] = v6[1];
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 1) = *(v6 + 1);
    v5[8] = v6[8];
    v10 = v7[9];
    v11 = type metadata accessor for AttributedString();
    (*(*(v11 - 8) + 32))(&v5[v10], &v6[v10], v11);
    v5[v7[10]] = v6[v7[10]];
    v12 = v7[11];
    v13 = &v5[v12];
    v14 = &v6[v12];
    v13[4] = v14[4];
    *v13 = *v14;
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  return a1;
}

uint64_t assignWithTake for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 44);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for SearchFieldState(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = v9(v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      *v5 = *v6;
      *(v5 + 1) = *(v6 + 1);
      *(v5 + 2) = *(v6 + 2);
      *(v5 + 4) = *(v6 + 4);
      *(v5 + 8) = *(v6 + 8);
      v19 = v7[9];
      v20 = type metadata accessor for AttributedString();
      (*(*(v20 - 8) + 40))(v5 + v19, v6 + v19, v20);
      *(v5 + v7[10]) = *(v6 + v7[10]);
      v21 = v7[11];
      v22 = v5 + v21;
      v23 = v6 + v21;
      *v22 = *v23;
      *(v22 + 4) = *(v23 + 4);
      return a1;
    }

    outlined destroy of SearchEnvironmentWritingModifier(v5, type metadata accessor for SearchFieldState);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for SearchFieldState?(0);
    memcpy(v5, v6, *(*(v17 - 8) + 64));
    return a1;
  }

  *v5 = *v6;
  *(v5 + 1) = *(v6 + 1);
  *(v5 + 2) = *(v6 + 2);
  *(v5 + 4) = *(v6 + 4);
  *(v5 + 8) = *(v6 + 8);
  v12 = v7[9];
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 32))(v5 + v12, v6 + v12, v13);
  *(v5 + v7[10]) = *(v6 + v7[10]);
  v14 = v7[11];
  v15 = v5 + v14;
  v16 = v6 + v14;
  *(v15 + 4) = *(v16 + 4);
  *v15 = *v16;
  (*(v8 + 56))(v5, 0, 1, v7);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t MenuControlGroupStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t protocol witness for ControlGroupStyle.makeBody(configuration:) in conformance MenuControlGroupStyle@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t CompactMenuControlGroupStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return result;
}

uint64_t protocol witness for ControlGroupStyle.makeBody(configuration:) in conformance CompactMenuControlGroupStyle@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type MenuControlGroupStyleBase and conformance MenuControlGroupStyleBase()
{
  result = lazy protocol witness table cache variable for type MenuControlGroupStyleBase and conformance MenuControlGroupStyleBase;
  if (!lazy protocol witness table cache variable for type MenuControlGroupStyleBase and conformance MenuControlGroupStyleBase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuControlGroupStyleBase, &unk_1EFFF08A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuControlGroupStyleBase and conformance MenuControlGroupStyleBase);
  }

  return result;
}

uint64_t initializeWithCopy for MenuControlGroupStyleBase(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for MenuControlGroupStyleBase(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for MenuControlGroupStyleBase(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MenuControlGroupSize and conformance MenuControlGroupSize()
{
  result = lazy protocol witness table cache variable for type MenuControlGroupSize and conformance MenuControlGroupSize;
  if (!lazy protocol witness table cache variable for type MenuControlGroupSize and conformance MenuControlGroupSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuControlGroupSize, &type metadata for MenuControlGroupSize, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuControlGroupSize and conformance MenuControlGroupSize);
  }

  return result;
}

uint64_t MenuControlGroupStyleBase.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v12 = static VerticalAlignment.center.getter();
  v13 = specialized Environment.wrappedValue.getter(v4, v5) == 2;
  KeyPath = swift_getKeyPath();
  Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0xE000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *a2 = v12;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = v13;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v7;
  *(a2 + 72) = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *(a2 + 80) = v9;
  *(a2 + 88) = partial apply for closure #3 in MenuControlGroupStyleBase.body.getter;
  *(a2 + 96) = v10;
  return outlined copy of Environment<Bool>.Content();
}

uint64_t EnvironmentValues.menuControlGroupSize.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.menuControlGroupSize : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.menuControlGroupSize : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuControlGroupSizeKey>, &type metadata for MenuControlGroupSizeKey, &protocol witness table for MenuControlGroupSizeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuControlGroupSizeKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t closure #3 in MenuControlGroupStyleBase.body.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    v8 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v5[2])
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
      if (*(result + 16))
      {
LABEL_4:
        v9 = 0;
        v10 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
        v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v12 = *(v10 + 72);
        v13 = (a5 & 1) == 0;
        v14 = v6 - 1;
        do
        {
          v15 = v5 + v11;
          v16 = *(v5 + v11 + 304);
          v17 = *(v5 + v11 + 336);
          v22[1] = *(v5 + v11 + 320);
          v22[2] = v17;
          v22[0] = v16;
          v18 = *(v5 + v11 + 352);
          v19 = *(v5 + v11 + 368);
          v20 = *(v5 + v11 + 384);
          v23 = *(v5 + v11 + 400);
          v22[4] = v19;
          v22[5] = v20;
          v22[3] = v18;
          *(v15 + 38) = 4;
          *(v15 + 39) = 0;
          *(v15 + 40) = 0;
          *(v15 + 41) = 0;
          *(v15 + 42) = 0xC000000000000000;
          v21 = (v5 + v11 + 344);
          *v21 = 0u;
          v21[1] = 0u;
          v21[2] = 0u;
          v21[3] = 0u;
          result = outlined destroy of PlatformItemList.Item.SystemItem?(v22);
          v15[953] = v13;
          if (v14 == v9)
          {
            goto LABEL_8;
          }

          ++v9;
          v11 += v12;
        }

        while (v9 < v5[2]);
      }
    }

    __break(1u);
LABEL_8:
    *v8 = v5;
  }

  return result;
}

uint64_t outlined destroy of PlatformItemList.Item.SystemItem?(uint64_t a1)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>(255);
    type metadata accessor for EnvironmentPropertyKey<MenuControlGroupSizeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>)
  {
    type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<MenuControlGroupSize?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>);
    }
  }
}

void type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label?>(255);
    v5[0] = v2;
    v5[1] = &type metadata for ControlGroupStyleConfiguration.Content;
    v5[2] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MenuControlGroupSize?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Label?> and conformance HStack<A>, type metadata accessor for HStack<ControlGroupStyleConfiguration.Label?>, MEMORY[0x1E69817F8]);
    v5[3] = &protocol witness table for ControlGroupStyleConfiguration.Content;
    v3 = type metadata accessor for Menu(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for HStack<ControlGroupStyleConfiguration.Label?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Label?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ControlGroupStyleConfiguration.Label?, &type metadata for ControlGroupStyleConfiguration.Label);
    lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label? and conformance <A> A?();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Label?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ControlGroupStyleConfiguration.Label?, &type metadata for ControlGroupStyleConfiguration.Label);
    v4[0] = &protocol witness table for ControlGroupStyleConfiguration.Label;
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MenuControlGroupSize?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<MenuControlGroupSize?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MenuControlGroupSize?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for MenuControlGroupSize?, &type metadata for MenuControlGroupSize);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MenuControlGroupSize?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MenuControlGroupSize?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MenuControlGroupSize?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MenuControlGroupSize?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<MenuControlGroupSize?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label?>, ControlGroupStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<MenuControlGroupSize?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationBarScrollMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for NavigationBarScrollMetrics(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for NavigationBarScrollMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NavigationBarScrollMetrics(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ScrollTargetV_Tt1g5(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t static Group<A>._makeToolbar(content:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v12[2] = a2[2];
  v13[0] = v7;
  *(v13 + 12) = *(a2 + 60);
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v11 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 32))(v10, v12, a3, a4);
}

uint64_t static Group<A>._makeContent(content:inputs:resolved:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v13[2] = a2[2];
  v12 = v8;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a5 + 40))(v11, v13, a3, a4, a5);
}

uint64_t closure #1 in static Group<A>._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for Group();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a4, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t instantiation function for generic protocol witness table for <A> Group<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> Group<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for TupleToolbarContent.Visitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for TupleToolbarContent.Visitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for TupleToolbarContent.Visitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

void *one-time initialization function for identity()
{
  result = static ContentTransition.identity.getter();
  static Text.Transition.identity = v1;
  word_1EAA31D94 = v3;
  dword_1EAA31D90 = v2;
  byte_1EAA31D96 = v4;
  return result;
}

double static Text.Transition.identity.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static Text.Transition.identity;
  v3 = word_1EAA31D94;
  v4 = dword_1EAA31D90;
  v5 = dword_1EAA31D90 | (word_1EAA31D94 << 32);
  v6 = byte_1EAA31D96;
  *a1 = static Text.Transition.identity;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1EAA31D94);
  *(a1 + 13) = HIBYTE(word_1EAA31D94);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

void *one-time initialization function for opacity()
{
  result = static ContentTransition.opacity.getter();
  static Text.Transition.opacity = v1;
  word_1EAA31DA4 = v3;
  dword_1EAA31DA0 = v2;
  byte_1EAA31DA6 = v4;
  return result;
}

double static Text.Transition.opacity.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for opacity != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static Text.Transition.opacity;
  v3 = word_1EAA31DA4;
  v4 = dword_1EAA31DA0;
  v5 = dword_1EAA31DA0 | (word_1EAA31DA4 << 32);
  v6 = byte_1EAA31DA6;
  *a1 = static Text.Transition.opacity;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1EAA31DA4);
  *(a1 + 13) = HIBYTE(word_1EAA31DA4);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

void *one-time initialization function for interpolate()
{
  result = static ContentTransition.interpolate.getter();
  static Text.Transition.interpolate = v1;
  word_1EAA31DB4 = v3;
  dword_1EAA31DB0 = v2;
  byte_1EAA31DB6 = v4;
  return result;
}

double static Text.Transition.interpolate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for interpolate != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static Text.Transition.interpolate;
  v3 = word_1EAA31DB4;
  v4 = dword_1EAA31DB0;
  v5 = dword_1EAA31DB0 | (word_1EAA31DB4 << 32);
  v6 = byte_1EAA31DB6;
  *a1 = static Text.Transition.interpolate;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1EAA31DB4);
  *(a1 + 13) = HIBYTE(word_1EAA31DB4);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

double View.textTransition(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void *EnvironmentValues.textTransition.getter@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.contentTransition.getter();
  *a1 = v3;
  *(a1 + 12) = v5;
  *(a1 + 8) = v4;
  *(a1 + 14) = v6;
  return result;
}

uint64_t (*EnvironmentValues.textTransition.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  EnvironmentValues.contentTransition.getter();
  *a1 = v4;
  *(a1 + 12) = v6;
  *(a1 + 8) = v5;
  *(a1 + 14) = v7;
  return EnvironmentValues.textTransition.modify;
}

uint64_t EnvironmentValues.textTransition.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) | (*(a1 + 12) << 32);
  v4 = *(a1 + 13);
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.contentTransition.setter();
  }

  outlined copy of ContentTransition.Storage(v2, v3, v4);
  EnvironmentValues.contentTransition.setter();

  return outlined consume of ContentTransition.Storage(v2, v3, v4);
}

uint64_t (*EnvironmentValues.textTransitionAddsDrawingGroup.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = v2;
  *(a1 + 8) = EnvironmentValues.contentTransitionAddsDrawingGroup.getter() & 1;
  return EnvironmentValues.textTransitionAddsDrawingGroup.modify;
}

uint64_t initializeBufferWithCopyOfBuffer for Text.Transition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  *a1 = v4;
  *(a1 + 12) = v5;
  *(a1 + 8) = v6;
  *(a1 + 13) = v7;
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

uint64_t assignWithCopy for Text.Transition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  v8 = *a1;
  v9 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v10 = *(a1 + 13);
  *(a1 + 13) = v7;
  outlined consume of ContentTransition.Storage(v8, v9, v10);
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

void *__swift_memcpy15_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t assignWithTake for Text.Transition(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 6);
  v6 = *(a2 + 2);
  v7 = *a1;
  v8 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  v9 = *(a1 + 13);
  *(a1 + 12) = v5;
  outlined consume of ContentTransition.Storage(v7, v8, v9);
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Transition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 15))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 14);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Transition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 15) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 15) = 0;
    }

    if (a2)
    {
      *(result + 14) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.Transition>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Transition>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Transition>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.Transition> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Transition> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Transition> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Text.Transition>();
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Transition> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

Swift::Int NSUserActivity.TypedPayloadError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

void NSUserActivity.typedPayload<A>(_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = [v3 userInfo];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DictionaryDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;
    *(inited + 32) = 2;
    *(inited + 40) = 1;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
    *(inited + 80) = 0u;
    *(inited + 96) = 0u;
    *(inited + 112) = 0;
    *(inited + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0);
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E6158];
    *(v11 + 16) = xmmword_18CD63400;
    *(v11 + 56) = v12;
    strcpy((v11 + 32), "__DICTIONARY__");
    *(v11 + 47) = -18;
    type metadata accessor for [AnyHashable : Any]();
    *(v11 + 88) = v13;
    *(v11 + 64) = v9;
    type metadata accessor for NSDictionary();
    v14 = NSDictionary.init(dictionaryLiteral:)();
    DictionaryDecoder.decode<A>(_:from:)(a1, v14, a1, a2, a3);
  }

  else
  {
    lazy protocol witness table accessor for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError()
{
  result = lazy protocol witness table cache variable for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError;
  if (!lazy protocol witness table cache variable for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NSUserActivity.TypedPayloadError, &type metadata for NSUserActivity.TypedPayloadError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError;
  if (!lazy protocol witness table cache variable for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NSUserActivity.TypedPayloadError, &type metadata for NSUserActivity.TypedPayloadError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError);
  }

  return result;
}

void NSUserActivity.setTypedPayload<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  type metadata accessor for DictionaryEncoder();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = 0;
  *(inited + 40) = 2;
  *(inited + 48) = 1;
  *(inited + 56) = 0u;
  *(inited + 72) = 0u;
  *(inited + 88) = 0u;
  *(inited + 104) = 0u;
  *(inited + 120) = 0;
  *(inited + 128) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11 = DictionaryEncoder.encode<A>(_:)(a1, a2, a4);
  if (v5)
  {

    return;
  }

  v12 = v11;
  strcpy(&v16, "__DICTIONARY__");
  HIBYTE(v16) = -18;
  v13 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    type metadata accessor for [AnyHashable : Any]();
    if (swift_dynamicCast())
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v6 setUserInfo_];

      return;
    }
  }

  else
  {
    outlined destroy of Any?(v18);
  }

  lazy protocol witness table accessor for type NSUserActivity.TypedPayloadError and conformance NSUserActivity.TypedPayloadError();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
}

void type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>)
  {
    type metadata accessor for (Any, Any)();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
    }
  }
}

unint64_t type metadata accessor for NSDictionary()
{
  result = lazy cache variable for type metadata for NSDictionary;
  if (!lazy cache variable for type metadata for NSDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDictionary);
  }

  return result;
}

void NavigationSplitView.init(columnVisibility:topColumn:sidebar:content:detail:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void NavigationSplitView.init<>(columnVisibility:topColumn:sidebar:detail:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t NavigationSplitView.init<>(columnVisibility:sidebar:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, void (*a3)(uint64_t)@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[1] = a4;
  v26 = a3;
  v29 = a6;
  v28 = a8;
  v27 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v17;
  lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns();
  v19 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v33[0] = a1;
  v33[1] = v19;
  v34 = v18;
  v35 = 1;
  v32 = 512;

  v21 = a2(v20);
  v26(v21);

  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  *(&v24 + 1) = MEMORY[0x1E6981E60];
  *&v24 = v28;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(v33, &v32, v30, v16, v22, v13, a5, MEMORY[0x1E6981E70], v29, a7, v24, v27);
}

unint64_t lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns()
{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationSplitVisibility.ToDeprecatedTwoColumns, &type metadata for AnyNavigationSplitVisibility.ToDeprecatedTwoColumns, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationSplitVisibility.ToDeprecatedTwoColumns, &type metadata for AnyNavigationSplitVisibility.ToDeprecatedTwoColumns, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationSplitVisibility.ToDeprecatedTwoColumns, &type metadata for AnyNavigationSplitVisibility.ToDeprecatedTwoColumns, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToDeprecatedTwoColumns and conformance AnyNavigationSplitVisibility.ToDeprecatedTwoColumns);
  }

  return result;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    outlined init with copy of Any(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t _s7SwiftUI14BindingStorage33_807A1E19D95AC236A4689BB7FDAF1457LLV_6editorAdA10TextEditorV0D0O010AttributedM0V_xtcAA0nD0RzlufCAA08Platformm4ViewnD0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TextEditor.Storage.AttributedText(0);
  outlined init with copy of TextEditor.Storage.AttributedText(a1 + *(v17 + 20), v11, type metadata accessor for Binding<AttributedTextSelection>?);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v11, type metadata accessor for Binding<AttributedTextSelection>?);
    type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    v19 = *(v18 + 48);
    outlined init with copy of TextEditor.Storage.AttributedText(a1, a3, type metadata accessor for Binding<AttributedString>);
    PlatformTextViewEditorStorage.selection.getter(v8);
    outlined destroy of PlatformTextViewEditorStorage(a2);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(a1, type metadata accessor for TextEditor.Storage.AttributedText);
    type metadata accessor for MutableBox<AttributedTextSelection>(0);
    v20 = swift_allocObject();
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWObTm_0(v8, v20 + *(*v20 + *MEMORY[0x1E697DAC8] + 8), type metadata accessor for AttributedTextSelection);
    *(a3 + v19) = v20;
  }

  else
  {
    outlined destroy of PlatformTextViewEditorStorage(a2);
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWObTm_0(v11, v16, type metadata accessor for Binding<AttributedTextSelection>);
    type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v22 = *(v21 + 48);
    outlined init with copy of TextEditor.Storage.AttributedText(a1, a3, type metadata accessor for Binding<AttributedString>);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(a1, type metadata accessor for TextEditor.Storage.AttributedText);
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWObTm_0(v16, a3 + v22, type metadata accessor for Binding<AttributedTextSelection>);
  }

  type metadata accessor for BindingStorage.Storage(0);
  return swift_storeEnumTagMultiPayload();
}

void specialized AttributedTextStorage.typingAttributes.getter(uint64_t a1@<X8>)
{
  v27 = a1;
  v3 = type metadata accessor for AttributeContainer();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString();
  v23 = *(v13 - 8);
  v24 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v29 = *(v2 + *(v19 + 44));
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if ((v28 & 2) != 0)
  {
    BindingStorage.selection.getter(v18);
    outlined init with copy of TextEditor.Storage.AttributedText(v2, v8, type metadata accessor for BindingStorage.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);

      _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWObTm_0(v8, v12, type metadata accessor for Binding<AttributedString>);
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v21 = *(v20 + 48);
      _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWObTm_0(v8, v12, type metadata accessor for Binding<AttributedString>);
      _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(&v8[v21], type metadata accessor for Binding<AttributedTextSelection>);
    }

    MEMORY[0x18D00ACC0](v10);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v12, type metadata accessor for Binding<AttributedString>);
    specialized AttributedTextSelection.typingAttributeContainer<A>(in:)(v15, v5);
    AttributeContainer.filter(inheritedByAddedText:)();
    (*(v25 + 8))(v5, v26);
    (*(v23 + 8))(v15, v24);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v18, type metadata accessor for AttributedTextSelection);
  }

  else
  {
    PlatformTextViewEditorStorage.typingAttributes.getter(v27);
  }
}

void specialized AttributedTextStorage.update(environment:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a1;
  v70 = a2;
  v4 = type metadata accessor for AttributedString();
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v67 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - v25;
  outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v2, &v58 - v25, v24);
  v71[0] = *&v26[*(v20 + 44)];
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v27 = v72;
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v26, v28);
  if (v27)
  {
    goto LABEL_33;
  }

  v29 = *(v20 + 48);
  if ((*(v3 + v29) & 1) == 0)
  {
    *(v3 + v29) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v31 = Strong;
    v32 = [Strong textStorage];

    if (!v32)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v32 beginEditing];
  }

  v66 = v8;
  v59 = v4;
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
    __break(1u);
    goto LABEL_25;
  }

  v34 = v33;
  v35 = v18;
  v36 = [v33 textStorage];

  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  ObjectType = swift_getObjectType();
  v38 = swift_conformsToProtocol2();
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v71[0] = v69;
  v71[1] = v70;
  v39 = (*(v38 + 56))(v71, ObjectType, v38);

  if ((v39 & 1) == 0)
  {
    return;
  }

  outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v3, v22, v40);
  v72 = *&v22[*(v20 + 44)];
  v42 = AtomicBox.wrappedValue.modify();
  if ((*v41 & 0x10) == 0)
  {
    *v41 |= 0x10u;
  }

  v43 = v42(v71, 0);
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v22, v43);
  v71[0] = *(v3 + *(v20 + 44));
  AtomicBox.wrappedValue.getter();
  v44 = v35;
  if ((v72 & 2) != 0)
  {
    BindingStorage.selection.getter(v35);
  }

  else
  {
    PlatformTextViewEditorStorage.selection.getter(v35);
  }

  v46 = v67;
  v45 = v68;
  outlined init with copy of TextEditor.Storage.AttributedText(&v35[*(v67 + 20)], v14, type metadata accessor for AttributedTextSelection.TypingAttributes);
  v47 = v66;
  if ((*(v45 + 48))(v14, 1, v66) != 1)
  {
    v55 = v65;
    (*(v45 + 32))(v65, v14, v47);
    v56 = v64;
    (*(v45 + 16))(v64, v55, v47);
    (*(v45 + 56))(v56, 0, 1, v47);
    v57 = v63;
    PlatformTextViewEditorStorage.selection.getter(v63);
    outlined assign with take of AttributedTextSelection.TypingAttributes(v56, &v57[*(v46 + 20)]);
    PlatformTextViewEditorStorage.selection.setter(v57);
    (*(v45 + 8))(v55, v47);
    goto LABEL_22;
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
    goto LABEL_30;
  }

  v49 = v48;
  v50 = [v48 textStorage];

  if (!v50)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = swift_getObjectType();
  v52 = swift_conformsToProtocol2();
  if (!v52)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v53 = v61;
  (*(v52 + 16))(v51, v52);

  v54 = v60;
  AttributedTextSelection.indices(in:)(v53, v60);
  (*(v62 + 8))(v53, v59);
  PlatformTextViewEditorStorage.invalidateTypingAttributes(indices:)(v54);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v54, type metadata accessor for AttributedTextSelection.Indices);
LABEL_22:
  _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v44, type metadata accessor for AttributedTextSelection);
}

uint64_t specialized AttributedTextStorage.update(bindings:)(uint64_t a1)
{
  v3 = type metadata accessor for AttributedTextSelection(0);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v59 - v8;
  type metadata accessor for Binding<AttributedTextSelection>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  type metadata accessor for AttributedTextSelection?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AttributedString();
  v17 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  v71 = v1;
  outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v1, &v59 - v28, v27);
  v72[0] = *&v29[*(v21 + 44)];
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  v65 = v30;
  AtomicBox.wrappedValue.getter();
  v31 = v73;
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v29, v32);
  if ((v31 & 0xC) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for Binding<AttributedString>(0);
    MEMORY[0x18D00ACC0]();
    v33 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v70 = a1;
    v64 = v33;
    outlined init with copy of TextEditor.Storage.AttributedText(a1 + v33, v13, type metadata accessor for Binding<AttributedTextSelection>?);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v35 = v34;
    v36 = *(*(v34 - 8) + 48);
    v37 = 1;
    v38 = v36(v13, 1, v34);
    v39 = type metadata accessor for Binding<AttributedTextSelection>?;
    if (v38 != 1)
    {
      MEMORY[0x18D00ACC0](v35);
      v37 = 0;
      v39 = type metadata accessor for Binding<AttributedTextSelection>;
    }

    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v13, v39);
    (*(v68 + 56))(v16, v37, 1, v69);
    v40 = v71;
    v41 = AttributedStringUpdates.isExpecting(text:selection:)(v19, v16);
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v16, type metadata accessor for AttributedTextSelection?);
    (*(v17 + 8))(v19, v67);
    if ((v41 & 1) == 0)
    {
      outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v40, v25, v42);
      v73 = *&v25[*(v21 + 44)];
      v44 = AtomicBox.wrappedValue.modify();
      if ((*v43 & 1) == 0)
      {
        *v43 |= 1u;
      }

      v45 = v44(v72, 0);
      outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v25, v45);
      v46 = v66;
      outlined init with copy of TextEditor.Storage.AttributedText(v70 + v64, v66, type metadata accessor for Binding<AttributedTextSelection>?);
      if (v36(v46, 1, v35) == 1)
      {
        _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v46, type metadata accessor for Binding<AttributedTextSelection>?);
      }

      else
      {
        v47 = v61;
        MEMORY[0x18D00ACC0](v35);
        _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v46, type metadata accessor for Binding<AttributedTextSelection>);
        v48 = v63;
        _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWObTm_0(v47, v63, type metadata accessor for AttributedTextSelection);
        v49 = v71;
        v50 = v62;
        PlatformTextViewEditorStorage.selection.getter(v62);
        v52 = specialized static AttributedTextSelection.== infix(_:_:)(v48, v50, v51);
        _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v50, type metadata accessor for AttributedTextSelection);
        if (v52)
        {
          _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v48, type metadata accessor for AttributedTextSelection);
        }

        else
        {
          v54 = v60;
          outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v49, v60, v53);
          v73 = *(v54 + *(v21 + 44));
          v56 = AtomicBox.wrappedValue.modify();
          if ((*v55 & 2) == 0)
          {
            *v55 |= 2u;
          }

          v56(v72, 0);
          _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v48, type metadata accessor for AttributedTextSelection);
          outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v54, v57);
        }
      }
    }

    return BindingStorage.update(to:)(v70);
  }

  return result;
}

void specialized AttributedTextStorage.invalidateEditorText()(double a1)
{
  v2 = v1;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-1] - v9;
  outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v1, &v18[-1] - v9, v8);
  v18[0] = *&v10[*(v4 + 44)];
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v11 = v19;
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v10, v12);
  if ((v11 & 3) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v2, v6, v13);
    v19 = *&v6[*(v4 + 44)];
    v15 = AtomicBox.wrappedValue.modify();
    if ((*v14 & 4) == 0)
    {
      *v14 |= 4u;
    }

    v16 = v15(v18, 0);
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v6, v16);
  }
}

void specialized AttributedTextStorage.updateTypingAttributes()()
{
  v1 = v0;
  v31 = type metadata accessor for AttributedString();
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v0, &v30 - v17, v16);
  v33[0] = *&v18[*(v12 + 44)];
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v19 = v34;
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v18, v20);
  if ((v19 & 3) != 0)
  {
    goto LABEL_11;
  }

  v32 = v1;
  PlatformTextViewEditorStorage.selection.getter(v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = Strong;
  v23 = [Strong textStorage];

  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v25 = swift_conformsToProtocol2();
  if (!v25)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  (*(v25 + 16))(ObjectType, v25);

  AttributedTextSelection.indices(in:)(v4, v10);
  (*(v2 + 8))(v4, v31);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v7, type metadata accessor for AttributedTextSelection);
  PlatformTextViewEditorStorage.invalidateTypingAttributes(indices:)(v10);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v10, type metadata accessor for AttributedTextSelection.Indices);
  outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v32, v14, v26);
  v34 = *&v14[*(v12 + 44)];
  v28 = AtomicBox.wrappedValue.modify();
  if ((*v27 & 8) == 0)
  {
    *v27 |= 8u;
  }

  v29 = v28(v33, 0);
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v14, v29);
}

void UIKitRichTextEditorCoordinator.storage.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, a2);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
  swift_beginAccess();
  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v2 + v8, v7, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v9);
  v10 = *(v5 + 36);
  v15 = *&v7[v10];
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981D80]);

  AtomicBox.access<A>(_:)();

  if (v16 == 1)
  {
    _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v7, a1, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v11);
    v15 = *&v7[v10];
    v16 = 1;

    AtomicBox.wrappedValue.setter();
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v7, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v12);
  }

  else
  {
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v7, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v11);
    type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

void *_s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg5(void (*a1)(uint64_t *__return_ptr, char *, __n128), uint64_t a2, double a3)
{
  v30[1] = a2;
  v31 = a1;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, a3);
  v5 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - v7;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v6);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v30 - v10;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - v15;
  v35[0] = *(v3 + *(v5 + 28));
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981D80]);
  v18 = v17;

  v32 = v18;
  AtomicBox.access<A>(_:)();

  v20 = MEMORY[0x1E69E7CC0];
  if (v34 == 1)
  {
    _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v3, v11, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v19);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      v22 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v11, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v21);
      _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v3, v8, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v22);
      v35[0] = *&v8[*(v5 + 28)];
      LOBYTE(v34) = 1;

      AtomicBox.wrappedValue.setter();
      outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v8, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v23);
    }

    else
    {
      outlined init with take of AttributedTextStorage<PlatformTextViewEditorStorage>(v11, v16, v21);
      swift_beginAccess();
      v30[0] = static Update.queue;
      static Update.queue = v20;
      (v31)(&v34, v16);
      LODWORD(v31) = 0;
      if (static Update.queue)
      {
        v20 = static Update.queue;
      }

      v25 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v3, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v24);
      outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v16, v3, v25);
      (*(v14 + 56))(v3, 0, 1, v13);
      static Update.queue = v30[0];

      outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v16, v26);
      _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v3, v8, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v27);
      v34 = *&v8[*(v5 + 28)];
      v33 = 1;

      AtomicBox.wrappedValue.setter();
      outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v8, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v28);
    }
  }

  return v20;
}

uint64_t _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  if (a2 == -1 || (a2 & 1) == 0)
  {
    return ~a2 == 0;
  }

  result = swift_willThrowTypedImpl();
  __break(1u);
  return result;
}

uint64_t static UIKitRichTextEditor._makeView(view:inputs:)(unsigned int *a1, __int128 *a2)
{
  if ((static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0)
  {
    static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  type metadata accessor for TextEditor.Storage.AttributedText(0);
  AGGraphCreateOffsetAttribute2();
  type metadata accessor for UIKitRichTextEditorAdaptor(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIKitRichTextEditor.MakeRepresentable and conformance UIKitRichTextEditor.MakeRepresentable();
  Attribute.init<A>(body:value:flags:update:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance UIKitRichTextEditor.MakeRepresentable@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIKitRichTextEditorAdaptor(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

uint64_t protocol witness for Rule.value.getter in conformance UIKitRichTextEditor.MakeRepresentable@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  type metadata accessor for TextEditor.Storage.AttributedText(0);
  Value = AGGraphGetValue();
  v5 = type metadata accessor for UIKitRichTextEditorAdaptor(0);
  outlined init with copy of TextEditor.Storage.AttributedText(Value, a1 + *(v5 + 20), type metadata accessor for TextEditor.Storage.AttributedText);
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + *(v5 + 24)) = v3;
  return result;
}

void UIKitRichTextEditorAdaptor.makeUIView(context:)(uint64_t a1, double a2)
{
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v123 = v3;
  v122 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v112 = &v112 - v4;
  v5 = type metadata accessor for TextEditor.Storage.AttributedText(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v117 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v118 = &v112 - v9;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v112 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v112 - v15;
  *&v131 = type metadata accessor for AttributedString();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  *&aBlock[0] = *a1;
  v18 = *&aBlock[0];
  *(&aBlock[0] + 1) = v19;
  *&aBlock[1] = v21;
  *(&aBlock[1] + 1) = v20;
  LOBYTE(v136) = v22;
  RepresentableContextValues.environment.getter();
  v24 = v139;
  v25 = v140;
  v133 = v23;
  v26 = (v23 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *v26 = v24;
  v26[1] = v25;
  outlined consume of EnvironmentValues?(v27, v28);
  v29 = [objc_allocWithZone(type metadata accessor for RichTextEditorTextContentStorage()) init];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v31 = [objc_allocWithZone(MEMORY[0x1E69DB800]) init];
  [v29 addTextLayoutManager_];
  v32 = v31;
  v116 = v30;
  [v30 setTextContainer_];
  v129 = v18;
  *&aBlock[0] = v18;
  *(&aBlock[0] + 1) = v19;
  v128 = v19;
  v127 = v21;
  *&aBlock[1] = v21;
  *(&aBlock[1] + 1) = v20;
  v126 = v20;
  v125 = v22;
  LOBYTE(v136) = v22;
  RepresentableContextValues.environment.getter();
  v34 = v144;
  v33 = v145;
  AttributedString.init(stringLiteral:)();
  v142 = v34;
  v143 = v33;
  EnvironmentValues.attributeScopeContext.getter();
  v139 = *&aBlock[0];
  v124 = *(aBlock + 8);
  v140 = *(aBlock + 8);
  v141 = *(&aBlock[1] + 1);
  v35 = AttributeScopeContext.scope.getter();
  v37 = v36;

  v138[0] = v34;
  v138[1] = v33;
  v38 = static AttributeScope.storage(wrapping:in:)(v17, v138, v35, v37);
  v40 = v39;
  (v130)[1](v17, v131);

  v41 = swift_allocObject();
  v41[2] = v29;
  v41[3] = v38;
  v41[4] = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for closure #1 in UIKitRichTextEditorAdaptor.makeUIView(context:);
  *(v42 + 24) = v41;
  v136 = partial apply for thunk for @callee_guaranteed () -> ();
  v137 = v42;
  *&aBlock[0] = MEMORY[0x1E69E9820];
  *(&aBlock[0] + 1) = 1107296256;
  *&aBlock[1] = thunk for @escaping @callee_guaranteed () -> ();
  *(&aBlock[1] + 1) = &block_descriptor_64;
  v43 = _Block_copy(aBlock);
  v44 = v29;
  v45 = v38;

  *&v124 = v44;
  [v44 performEditingTransactionUsingBlock_];
  _Block_release(v43);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
    goto LABEL_33;
  }

  v46 = [objc_allocWithZone(type metadata accessor for RichTextEditorTextView()) initWithFrame:v32 textContainer:{0.0, 0.0, 0.0, 0.0}];

  [v46 setContentInsetAdjustmentBehavior_];
  v47 = v46;
  v48 = v133;
  [v47 setDelegate_];
  [v47 setTextDragDelegate_];
  [v47 setTextDropDelegate_];
  [v47 setAllowsEditingTextAttributes_];
  v49 = specialized Environment.wrappedValue.getter(*v132, *(v132 + 8));
  UIView.setHoverEffectEnabled(_:)(v49 & 1);
  memset(aBlock, 0, sizeof(aBlock));
  v130 = v47;
  v50 = [v47 linkTextAttributes];
  if (!v50)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v51 = v50;
  v52 = v32;
  v53 = *MEMORY[0x1E69DB650];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v144 = v54;
  if (*(&aBlock[1] + 1))
  {
    outlined init with take of Any(aBlock, &v139);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = v54;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v139, v53, isUniquelyReferenced_nonNull_native);
    v144 = v142;
    if (v142)
    {
LABEL_5:
      v56.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of Any?(aBlock);
    specialized Dictionary._Variant.removeValue(forKey:)(&v139);
    outlined destroy of Any?(&v139);
    if (v144)
    {
      goto LABEL_5;
    }
  }

  v56.super.isa = 0;
LABEL_8:
  v57 = v130;
  [v130 setLinkTextAttributes_];

  *&aBlock[0] = v129;
  *(&aBlock[0] + 1) = v128;
  *&aBlock[1] = v127;
  *(&aBlock[1] + 1) = v126;
  LOBYTE(v136) = v125;
  RepresentableContextValues.environment.getter();
  v142 = v144;
  v143 = v145;
  EnvironmentValues.attributeScopeContext.getter();

  v139 = *&aBlock[0];
  v131 = *(aBlock + 8);
  v140 = *(aBlock + 8);
  v141 = *(&aBlock[1] + 1);
  AttributeScopeContext.scope.getter();

  static AttributeScope.typingAttributes.getter();
  v58 = [v57 _allowedTypingAttributes];
  if (!v58)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v59 = v58;
  v60 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v134 = v60;
  type metadata accessor for Set<NSAttributedStringKey>(0);
  type metadata accessor for [NSAttributedStringKey](0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance [A], type metadata accessor for [NSAttributedStringKey], MEMORY[0x1E69E6328]);
  Set.formUnion<A>(_:)();
  if (v134)
  {
    v61.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v61.super.isa = 0;
  }

  v113 = v45;
  v114 = v41;
  v115 = v52;
  v62 = v130;
  [v130 _setAllowedTypingAttributes_];

  v63 = [v62 inputAssistantItem];
  v64 = [v63 trailingBarButtonGroups];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v43 >> 62))
  {
    v65 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_33:
  v65 = __CocoaSet.count.getter();
LABEL_14:
  v66 = v132;
  if (!v65)
  {
    goto LABEL_25;
  }

  if (v65 < 1)
  {
    __break(1u);
    goto LABEL_35;
  }

  v67 = 0;
  v68 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_systemShortcutBarItems;
  v69 = v43 & 0xC000000000000001;
  v70 = &selRef_setConfiguration_;
  *&v131 = v43 & 0xC000000000000001;
  do
  {
    if (v69)
    {
      v71 = MEMORY[0x18D00E9C0](v67, v43);
    }

    else
    {
      v71 = *(v43 + 8 * v67 + 32);
    }

    v72 = v71;
    if ([v71 v70[356]])
    {
      v73 = v70;
      v74 = v133;
      swift_beginAccess();
      v75 = v72;
      MEMORY[0x18D00CC30]();
      if (*((*(v74 + v68) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v74 + v68) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v66 = v132;
      v70 = v73;
      v69 = v131;
    }

    ++v67;
  }

  while (v65 != v67);
LABEL_25:

  v76 = type metadata accessor for UIKitRichTextEditorAdaptor(0);
  v77 = v118;
  outlined init with copy of TextEditor.Storage.AttributedText(v66 + *(v76 + 20), v118, type metadata accessor for TextEditor.Storage.AttributedText);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v78 = v124;
  swift_unknownObjectWeakAssign();
  v79 = v123;
  v80 = v120;
  v81 = &v120[*(v123 + 36)];
  *v81 = *_emptyDequeStorage.unsafeMutableAddressor();
  v82 = *(type metadata accessor for AttributedStringUpdates(0) + 20);
  v83 = type metadata accessor for AttributedStringUpdates.Element(0);
  (*(*(v83 - 8) + 56))(&v81[v82], 1, 1, v83);
  *(v80 + *(v79 + 48)) = 0;
  outlined init with copy of PlatformTextViewEditorStorage(aBlock, v80 + *(v79 + 40));
  v84 = v117;
  outlined init with copy of TextEditor.Storage.AttributedText(v77, v117, type metadata accessor for TextEditor.Storage.AttributedText);
  outlined init with copy of PlatformTextViewEditorStorage(aBlock, &v139);

  _s7SwiftUI14BindingStorage33_807A1E19D95AC236A4689BB7FDAF1457LLV_6editorAdA10TextEditorV0D0O010AttributedM0V_xtcAA0nD0RzlufCAA08Platformm4ViewnD0V_Tt2g5(v84, &v139, v80);
  LOBYTE(v139) = 3;
  AtomicBox.init(wrappedValue:)();
  specialized AttributedTextStorage.commit()();
  outlined destroy of PlatformTextViewEditorStorage(aBlock);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v77, type metadata accessor for TextEditor.Storage.AttributedText);
  v85 = v122;
  v86 = (*(v122 + 56))(v80, 0, 1, v79);
  v87 = MEMORY[0x1E69E6720];
  v88 = v119;
  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v80, v119, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v86);
  v89 = v133;
  swift_beginAccess();
  specialized ExclusivelyAccessible.wrappedValue.setter(v88, v90);
  swift_endAccess();
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v80, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, v87, v91);
  swift_unknownObjectWeakAssign();
  v92 = v121;
  UIKitRichTextEditorCoordinator.storage.getter(v121, v93);
  if ((*(v85 + 48))(v92, 1, v79))
  {
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v92, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v94);
    rawValue = 0;
LABEL_31:
    *(v89 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_editorModifications) = rawValue;
    v110 = UIKitRichTextEditorCoordinator.textFormattingConfiguration()();
    v111 = v130;
    [v130 setTextFormattingConfiguration_];

    return;
  }

  v96 = v112;
  outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v92, v112, v94);
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v92, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v97);
  *&aBlock[0] = v129;
  *(&aBlock[0] + 1) = v128;
  *&aBlock[1] = v127;
  *(&aBlock[1] + 1) = v126;
  LOBYTE(v136) = v125;
  RepresentableContextValues.environment.getter();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_37;
  }

  v99 = Strong;
  v100 = [Strong textStorage];

  if (!v100)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  ObjectType = swift_getObjectType();
  v102 = swift_conformsToProtocol2();
  if (v102)
  {
    v103 = *(*(v102 + 8) + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v105 = *(AssociatedTypeWitness - 8);
    v106 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v108 = &v112 - v107;
    *&aBlock[0] = v100;
    (*(v103 + 56))(ObjectType, v103, v106);

    swift_getAssociatedConformanceWitness();
    rawValue = TextAttributeResolver.potentiallyEffectfulModifications()().rawValue;
    v109 = (*(v105 + 8))(v108, AssociatedTypeWitness);
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v96, v109);
    v89 = v133;
    v78 = v124;
    goto LABEL_31;
  }

LABEL_39:
  __break(1u);
}

id UIKitRichTextEditorCoordinator.textFormattingConfiguration()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_editorModifications);
  if (!v1)
  {
    return 0;
  }

  v2 = specialized Set<>.init(_:)(v1);
  v3 = specialized static UITextFormattingViewController.standardComponents.getter();
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v3 = v22)
  {
    v5 = 0;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v34 = v3 & 0xC000000000000001;
    v30 = v3;
    v31 = i;
    v32 = v3 + 32;
    v6 = v2 + 56;
    while (1)
    {
      if (v34)
      {
        v3 = MEMORY[0x18D00E9C0](v5, v30);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_28;
        }

        v3 = *(v32 + 8 * v5);
      }

      v7 = v3;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v9 = [v3 componentKey];
      v10 = v9;
      if (*(v2 + 16))
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        String.hash(into:)();
        v11 = Hasher._finalize()();

        v12 = -1 << *(v2 + 32);
        v13 = v11 & ~v12;
        if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v16;
            if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
            {

              goto LABEL_23;
            }

            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

LABEL_23:
          i = v31;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = specialized ContiguousArray._endMutation()();
        }

        else
        {
LABEL_20:

          i = v31;
        }
      }

      else
      {
      }

      if (v5 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v22 = v3;
    i = __CocoaSet.count.getter();
  }

LABEL_30:

  _sypSgMaTm_7(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_18CD69590;
  v24 = objc_allocWithZone(MEMORY[0x1E69DD0C0]);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITextFormattingViewControllerComponent, 0x1E69DD0B8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithComponents_];

  *(v23 + 32) = v26;
  v27 = objc_allocWithZone(MEMORY[0x1E69DD0C8]);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITextFormattingViewControllerComponentGroup, 0x1E69DD0C0);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v27 initWithGroups_];

  return v21;
}

double UIKitRichTextEditorAdaptor.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v3 = v2;
  v5 = *(a2 + 5);
  v16 = *a2;
  v17 = a2[1];
  LOBYTE(v18) = *(a2 + 32);
  RepresentableContextValues.environment.getter();
  v6 = v19;
  v7 = v20;
  v8 = (v5 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v19;
  v8[1] = v7;

  outlined consume of EnvironmentValues?(v9, v10);
  specialized UIKitTextInputTraits.updateTraits(in:)(v6, v7);
  specialized UITextInputTraits_Private.updatePrivateTraits(in:)(v6, v7);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, v11);
  if (v7)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v12 = type metadata accessor for UIKitRichTextEditorAdaptor(0);
  TextEditorTextView.updateBackground(_:inheritBackground:)(v19, v20, *(v3 + *(v12 + 24)));

  UIKitRichTextEditorCoordinator.update(_:configuration:)(a1, v3 + *(v12 + 20), v13);
  if (([a1 isWritingToolsActive] & 1) == 0)
  {
    [a1 setAllowedWritingToolsResultOptions_];
    if ((*(v5 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_disabledEditorModifications) & 0x40) == 0 && (*(v5 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_editorModifications) & 0x40) != 0)
    {
      [a1 setAllowedWritingToolsResultOptions_];
    }
  }

  v19 = v6;
  v20 = v7;
  specialized UIKitTextEditorCoordinatorBase.updateInputAccessoryGenerator(textView:env:)(a1, &v19);
  v14 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8));
  UIView.setHoverEffectEnabled(_:)(v14 & 1);

  return result;
}

void UIKitRichTextEditorCoordinator.update(_:configuration:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v48 = a1;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], a3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - v7;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v47 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v45 - v12;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v11);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - v14;
  v49[2] = v4;
  v49[3] = a2;
  v16 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
  swift_beginAccess();
  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v4 + v16, v15, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v17);
  v19 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg5(partial apply for closure #1 in UIKitRichTextEditorCoordinator.update(_:configuration:), v49, v18);
  v21 = v20;
  swift_beginAccess();
  v23 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v4 + v16, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v22);
  v24 = v4 + v16;
  v25 = v48;
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v15, v24, v23);
  swift_endAccess();
  _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v19, v21);

  UIKitRichTextEditorCoordinator.updateInputAssistantItems(textView:)(v25);
  UIKitRichTextEditorCoordinator.storage.getter(v8, v26);
  if ((*(v10 + 48))(v8, 1, v47) == 1)
  {
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v8, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v27);
    UIKitRichTextEditorCoordinator.disabledEditorModifications.setter(0);
    goto LABEL_5;
  }

  v28 = v8;
  v29 = v46;
  outlined init with take of AttributedTextStorage<PlatformTextViewEditorStorage>(v28, v46, v27);
  v30 = (v4 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  v31 = *v30;
  if (*v30 != 1)
  {
    v32 = v30[1];

    specialized RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)(v29, v31, v32, v33);
    outlined consume of EnvironmentValues?(v31, v32);
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v29, v34);
LABEL_5:
    v35 = (v4 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
    swift_beginAccess();
    if (*v35 == 1)
    {
      __break(1u);
    }

    else
    {
      v36 = v35[1];
      *&v52[0] = *v35;
      *(&v52[0] + 1) = v36;

      specialized UIKitTextEditorCoordinatorBase.updateFindInteraction(textView:env:)(v25, v52);

      v37 = TextEditorTextView.helper.getter();
      if (*v35 != 1)
      {
        v38 = v37;
        v39 = v35[1];
        *&v50[0] = *v35;
        *(&v50[0] + 1) = v39;

        ScrollEnvironmentProperties.init(environment:)(v50, v52);
        v40 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
        swift_beginAccess();
        outlined init with copy of ScrollEnvironmentProperties(v38 + v40, v50);
        swift_beginAccess();
        outlined assign with copy of ScrollEnvironmentProperties(v52, v38 + v40);
        swift_endAccess();
        ScrollViewHelper.didChangeProperties(from:)(v50);

        outlined destroy of ScrollEnvironmentProperties(v50);
        outlined destroy of ScrollEnvironmentProperties(v52);
        if (*v35 != 1)
        {
          v41 = v35[1];
          v42 = *&v25[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper];
          v49[8] = *v35;
          v49[9] = v41;
          v43 = v42;
          EnvironmentValues.contentMarginProxy.getter(v52);
          v44 = &v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
          v50[12] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192];
          v50[13] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208];
          v51[0] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224];
          *(v51 + 9) = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233];
          v50[8] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128];
          v50[9] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144];
          v50[10] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160];
          v50[11] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176];
          v50[4] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64];
          v50[5] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80];
          v50[6] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96];
          v50[7] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112];
          v50[0] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
          v50[1] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16];
          v50[2] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32];
          v50[3] = *&v43[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48];
          *(v44 + 12) = v52[12];
          *(v44 + 13) = v52[13];
          *(v44 + 14) = v53[0];
          *(v44 + 233) = *(v53 + 9);
          *(v44 + 8) = v52[8];
          *(v44 + 9) = v52[9];
          *(v44 + 10) = v52[10];
          *(v44 + 11) = v52[11];
          *(v44 + 4) = v52[4];
          *(v44 + 5) = v52[5];
          *(v44 + 6) = v52[6];
          *(v44 + 7) = v52[7];
          *v44 = v52[0];
          *(v44 + 1) = v52[1];
          *(v44 + 2) = v52[2];
          *(v44 + 3) = v52[3];
          ScrollViewHelper.didChangeMargins(from:)();

          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
}

void UIKitRichTextEditorAdaptor._overrideSizeThatFits(_:in:uiView:)(uint64_t a1, uint64_t *a2, void *a3, __n128 a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = a2[2];
  v9 = *(a2 + 24);
  v10 = _ProposedSize.width.getter();
  if ((v11 & 1) == 0)
  {
    *a1 = v10;
  }

  LOBYTE(v17) = v7;
  LOBYTE(v18) = v9;
  v12 = _ProposedSize.height.getter();
  if (v13)
  {
    v14 = [a3 textContainer];
    v15 = [v14 heightTracksTextView];

    if (v15)
    {
      if (*a1 > 0.0)
      {
        [a3 sizeThatFits_];
        *(a1 + 8) = v16;
      }
    }
  }

  else
  {
    *(a1 + 8) = v12;
  }
}

double protocol witness for static UIViewRepresentable.dismantleUIView(_:coordinator:) in conformance UIKitRichTextEditorAdaptor(uint64_t a1, void *a2)
{
  if (*(*a2 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_formattingUIValidationTask))
  {

    MEMORY[0x18D00D010](v2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitRichTextEditorAdaptor@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UIKitRichTextEditorCoordinator(0)) init];
  *a1 = result;
  return result;
}

uint64_t protocol witness for UIViewRepresentable._overrideLayoutTraits(_:for:) in conformance UIKitRichTextEditorAdaptor(int a1, id a2)
{
  [a2 contentSize];
  if (v3 > 0.0)
  {
    [a2 contentSize];
    _LayoutTraits.Dimension.min.getter();
    _LayoutTraits.Dimension.ideal.setter();
  }

  _LayoutTraits.Dimension.min.setter();
  return _LayoutTraits.Dimension.max.setter();
}

uint64_t protocol witness for static UIViewRepresentable._layoutOptions(_:) in conformance UIKitRichTextEditorAdaptor@<X0>(uint64_t *a2@<X8>)
{
  static Semantics.v7.getter();
  result = isLinkedOnOrAfter(_:)();
  v4 = 4;
  if ((result & 1) == 0)
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

double specialized ExclusivelyAccessible.wrappedValue.setter(uint64_t a1, double a2)
{
  v3 = v2;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, a2);
  v6 = v5;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - v8;
  v10 = MEMORY[0x1E69E6720];
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v7);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - v12;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v31 - v18;
  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(a1, v13, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, v10, v17);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    v21 = MEMORY[0x1E69E6720];
    v22 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(a1, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v20);
    return outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v13, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, v21, v22);
  }

  else
  {
    outlined init with take of AttributedTextStorage<PlatformTextViewEditorStorage>(v13, v19, v20);
    v32 = *(v3 + *(v6 + 28));
    _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981D80]);

    AtomicBox.access<A>(_:)();

    if (v33)
    {
      v31[0] = MEMORY[0x1E69E6720];
      v25 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v3, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v24);
      outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v19, v3, v25);
      v26 = (*(v16 + 56))(v3, 0, 1, v15);
      _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v3, v9, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v26);
      v32 = *&v9[*(v6 + 28)];
      v33 = 1;

      AtomicBox.wrappedValue.setter();
      v28 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(a1, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, v31[0], v27);
      v29 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v9, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v28);
      outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v19, v29);
    }

    else
    {
      v30 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(a1, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v24);
      outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v19, v30);
    }
  }

  return result;
}

void UIKitRichTextEditorCoordinator.disabledEditorModifications.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for [NSAttributedStringKey](0, &lazy cache variable for type metadata for UITextFormattingViewController.FormattingDescriptor?, MEMORY[0x1E69DC440], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *(v2 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_disabledEditorModifications) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UITextFormattingViewController.formattingDescriptor.getter();
    UITextFormattingViewController.formattingDescriptor.setter();
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = UIKitRichTextEditorCoordinator.textFormattingConfiguration()();
    [v8 setTextFormattingConfiguration_];
  }
}

Swift::Void __swiftcall UIKitRichTextEditorCoordinator.textViewDidChange(_:)(UITextView *a1)
{
  v32 = a1;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v2);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v31 = &v30 - v10;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v9);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
  swift_beginAccess();
  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v1 + v14, v13, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v15);
  v17 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko18CoordinatorC17textn31DidChangeyySo06UITextI0CFyAA010j2E7L27VyAA08PlatformeifN0VGzXEfU_Tf1cn_n(v13, v16);
  v19 = v18;
  swift_beginAccess();
  v21 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v1 + v14, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v20);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v13, v1 + v14, v21);
  swift_endAccess();
  _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v17, v19);

  UIKitRichTextEditorCoordinator.updateInputAssistantItems(textView:)(v32);
  UIKitRichTextEditorCoordinator.storage.getter(v5, v22);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v5, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v23);
    UIKitRichTextEditorCoordinator.disabledEditorModifications.setter(0);
  }

  else
  {
    v24 = v31;
    outlined init with take of AttributedTextStorage<PlatformTextViewEditorStorage>(v5, v31, v23);
    v25 = (v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
    swift_beginAccess();
    v26 = *v25;
    if (*v25 == 1)
    {
      __break(1u);
    }

    else
    {
      v27 = v25[1];

      specialized RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)(v24, v26, v27, v28);
      outlined consume of EnvironmentValues?(v26, v27);
      outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v24, v29);
    }
  }
}

void closure #1 in UIKitRichTextEditorCoordinator.textViewDidChange(_:)(uint64_t a1)
{
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for AttributedTextSelection(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized AttributedTextStorage.invalidateEditorText()(v6);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v13 = *(a1 + *(v9 + 44));
  _sypSgMaTm_7(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if ((v12[7] & 2) != 0)
  {
    BindingStorage.selection.getter(v8);
  }

  else
  {
    PlatformTextViewEditorStorage.selection.getter(v8);
  }

  outlined init with copy of TextEditor.Storage.AttributedText(v8, v4, type metadata accessor for AttributedTextSelection.Indices?);
  _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v8, type metadata accessor for AttributedTextSelection);
  v10 = type metadata accessor for AttributedTextSelection.Indices(0);
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v4, type metadata accessor for AttributedTextSelection.Indices?);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v4, type metadata accessor for AttributedTextSelection.Indices);
    if (EnumCaseMultiPayload == 1)
    {
      specialized AttributedTextStorage.updateTypingAttributes()();
    }
  }

  specialized AttributedTextStorage.commit()();
}

void closure #1 in UIKitRichTextEditorCoordinator.update(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  v5 = *v4;
  if (*v4 == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v4[1];

    specialized AttributedTextStorage.update(environment:)(v7, v6);
    outlined consume of EnvironmentValues?(v5, v6);
    specialized AttributedTextStorage.update(bindings:)(a3);
    specialized AttributedTextStorage.commit()();
  }
}

void UIKitRichTextEditorCoordinator.updateInputAssistantItems(textView:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  if (*v3 == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v3[1])
  {
    type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, v4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, v5);
    PropertyList.subscript.getter();
  }

  swift_endAccess();
  if ((v18 & 4) != 0)
  {
    v6 = [a1 inputAssistantItem];
    v7 = [v6 trailingBarButtonGroups];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v9)
    {
      v16 = [a1 inputAssistantItem];
      swift_beginAccess();

      v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_19;
    }
  }

  swift_beginAccess();
  if (*v3 == 1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v3[1])
  {
    type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, v10);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, v11);
    PropertyList.subscript.getter();
  }

  swift_endAccess();
  if ((v18 & 4) == 0)
  {
    v12 = [a1 inputAssistantItem];
    v13 = [v12 trailingBarButtonGroups];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = v14 >> 62 ? __CocoaSet.count.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      v16 = [a1 inputAssistantItem];
      v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_19:
      [v16 setTrailingBarButtonGroups_];
    }
  }
}

id UIKitRichTextEditorCoordinator.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage];
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v4 = (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v4);
  v6 = *(v5 + 28);
  v9 = 1;
  AtomicBox.init(wrappedValue:)();
  *&v2[v6] = v10;
  *&v0[OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment] = xmmword_18CD6A6D0;
  *&v0[OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_systemShortcutBarItems] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_editorModifications] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_disabledEditorModifications] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_formattingUIValidationTask] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

double UIKitRichTextEditorCoordinator.__ivar_destroyer(__n128 a1)
{
  outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, a1.n128_f64[0]);
  outlined consume of EnvironmentValues?(*(v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment), *(v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment + 8));

  MEMORY[0x18D011290](v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_textView);
  MEMORY[0x18D011290](v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_formattingController);

  return result;
}

void type metadata completion function for UIKitRichTextEditorCoordinator(uint64_t a1, double a2)
{
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(319, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id RichTextEditorTextView.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v28.receiver = v2;
  v28.super_class = ObjectType;
  if (!objc_msgSendSuper2(&v28, sel_delegate))
  {
LABEL_16:
    outlined init with copy of Any?(a2, v26);
    v16 = v27;
    if (v27)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v18 = *(v16 - 8);
      v19 = MEMORY[0x1EEE9AC00](v17);
      v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v21, v16);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      v22 = 0;
    }

    v25.receiver = v2;
    v25.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v25, sel_canPerformAction_withSender_, a1, v22);
    goto LABEL_20;
  }

  type metadata accessor for UIKitRichTextEditorCoordinator(0);
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v7 = v6;
  if (((static Selector.== infix(_:_:)() & 1) == 0 || (*(v7 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_editorModifications) & 1) != 0 && (*(v7 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_disabledEditorModifications) & 1) == 0) && ((static Selector.== infix(_:_:)() & 1) == 0 || (*(v7 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_editorModifications) & 2) != 0 && (*(v7 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_disabledEditorModifications) & 2) == 0) && ((static Selector.== infix(_:_:)() & 1) == 0 || (*(v7 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_editorModifications) & 4) != 0 && (*(v7 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_disabledEditorModifications) & 4) == 0))
  {
    outlined init with copy of Any?(a2, v26);
    v8 = v27;
    if (v27)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v10 = *(v8 - 8);
      v11 = MEMORY[0x1EEE9AC00](v9);
      v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v10 + 8))(v13, v8);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      v14 = 0;
    }

    v24.receiver = v2;
    v24.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v24, sel_canPerformAction_withSender_, a1, v14);
    swift_unknownObjectRelease();
LABEL_20:
    swift_unknownObjectRelease();
    return v15;
  }

  swift_unknownObjectRelease();
  return 0;
}

double RichTextEditorTextView.typingAttributes.setter()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v2);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_setTypingAttributes_, isa);

  v21.receiver = v0;
  v21.super_class = ObjectType;
  if (objc_msgSendSuper2(&v21, sel_delegate))
  {
    type metadata accessor for UIKitRichTextEditorCoordinator(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
      v10 = v8;
      swift_beginAccess();
      _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(v10 + v9, v5, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v11);
      swift_unknownObjectRetain();
      v12 = v0;
      _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko18CoordinatorC26textn40DidChangeSelectionyySo06UITextI0CFyAA010j2E7L27VyAA08PlatformeifO0VGzXEfU_AA0stkoU0CSo06UITextN0CTf1cn_nTf4ngg_n(v5, v10, v12, v13);
      v15 = v14;
      v17 = v16;
      swift_unknownObjectRelease();

      swift_beginAccess();
      v19 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v10 + v9, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, v18);
      outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v5, v10 + v9, v19);
      swift_endAccess();
      _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v15, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void RichTextEditorTextView._attributes(forApplying:withAttributes:paragraphStyle:forTypingAttributes:)(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  LODWORD(v120) = a4;
  v118 = a3;
  ObjectType = swift_getObjectType();
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  v115 = *(v9 - 8);
  v116 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v109 - v11;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v114 = &v109 - v13;
  type metadata accessor for AttributeContainer?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v119 = v20;
  v136.super_class = ObjectType;
  v137 = v20;
  v136.receiver = v4;

  v21 = objc_msgSendSuper2(&v136, sel_delegate);
  if (v21)
  {
    v22 = v21;
    type metadata accessor for UIKitRichTextEditorCoordinator(0);
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v111 = v19;
      v112 = v23;
      v134 = 0;
      if (v120)
      {
        v24 = v119;
      }

      else
      {
        v133.receiver = v4;
        v133.super_class = ObjectType;
        v27 = objc_msgSendSuper2(&v133, sel_typingAttributes);
        type metadata accessor for NSAttributedStringKey(0);
        _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
        v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v28 = *a1;
      if (*a1 <= 1)
      {
        if (v28)
        {
          if (v28 == 1)
          {
            v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

            v137 = v30;
            v31 = *MEMORY[0x1E69DB758];
            if (*(v24 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(), (v33 & 1) != 0))
            {
              outlined init with copy of Any(*(v24 + 56) + 32 * v32, &v128);

              if ((swift_dynamicCast() & 1) != 0 && v125)
              {
                v34 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
                v35 = v31;
                v36.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
                *(&v129 + 1) = v34;
                *&v128 = v36;
                outlined init with take of Any(&v128, &v125);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v123 = v137;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v125, v35, isUniquelyReferenced_nonNull_native);
                swift_unknownObjectRelease();

                v137 = v123;
                goto LABEL_63;
              }
            }

            else
            {
            }

            v68 = MEMORY[0x1E69E6530];
            v69 = v31;
            static Text.LineStyle.single.getter();
            v70 = v123;
            *(&v129 + 1) = v68;

            *&v128 = v70;
            outlined init with take of Any(&v128, &v125);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            *&v122[0] = v137;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v125, v69, v71);
            swift_unknownObjectRelease();

            v137 = *&v122[0];
            goto LABEL_63;
          }

          goto LABEL_41;
        }

        if (!*(v24 + 16) || (v40 = specialized __RawDictionaryStorage.find<A>(_:)(), (v41 & 1) == 0))
        {

          swift_unknownObjectRelease();
          goto LABEL_63;
        }

        outlined init with copy of Any(*(v24 + 56) + 32 * v40, &v128);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
        if ((swift_dynamicCast() & 1) == 0)
        {
          swift_unknownObjectRelease();
LABEL_57:

          goto LABEL_63;
        }

        v42 = v125;
        v43 = *(a1 + 8);
        if ((v43 & 0x403) == 0)
        {
          swift_unknownObjectRelease();

          goto LABEL_63;
        }

        v118 = v125;
        v44 = [v125 fontDescriptor];
        LODWORD(v119) = [v44 symbolicTraits];

        v45 = (v112 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
        swift_beginAccess();
        v46 = *v45;
        if (*v45 != 1)
        {
          v47 = v45[1];
          v48 = (v43 & ~v119) != 0;

          *&v128 = v46;
          *(&v128 + 1) = v47;
          Dictionary<>.update(_:to:in:)(v43, v48, &v128);

          v49 = static NSAttributedStringKey.kitFont.getter();
          specialized Dictionary._Variant.removeValue(forKey:)(&v128);

          outlined destroy of Any?(&v128);
          if ((v120 & 1) == 0)
          {
            swift_unknownObjectRelease();

            goto LABEL_63;
          }

          v51 = v114;
          UIKitRichTextEditorCoordinator.storage.getter(v114, v50);
          v52 = (*(v115 + 48))(v51, 1, v116);
          v109 = v17;
          v110 = v16;
          if (v52)
          {
            v54 = outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v51, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v53);
            v55 = v117;
            (*(v17 + 56))(v117, 1, 1, v16, v54);
            AttributeContainer.init()();
            if ((*(v17 + 48))(v55, 1, v16) != 1)
            {
              _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v55, type metadata accessor for AttributeContainer?);
            }
          }

          else
          {
            v79 = v113;
            outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(v51, v113, v53);
            outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(v51, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>?, MEMORY[0x1E69E6720], v80);
            v81 = v117;
            specialized AttributedTextStorage.typingAttributes.getter(v117);
            outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(v79, v82);
            (*(v17 + 56))(v81, 0, 1, v16);
            (*(v17 + 32))(v111, v81, v16);
          }

          v120 = v22;
          v83 = [v5 textStorage];
          v84 = swift_getObjectType();
          v85 = swift_conformsToProtocol2();
          if (v85)
          {
            *&v123 = v83;
            v86 = *(*(v85 + 8) + 8);
            v87 = *(v86 + 56);
            *(&v126 + 1) = swift_getAssociatedTypeWitness();
            *&v127 = swift_getAssociatedConformanceWitness();
            __swift_allocate_boxed_opaque_existential_1(&v125);
            v87(v84, v86);

            v88 = *(&v126 + 1);
            v89 = v127;
            v90 = __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
            *(&v129 + 1) = v88;
            v91 = *(v89 + 8);
            *&v130 = v91;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v128);
            (*(*(v88 - 8) + 16))(boxed_opaque_existential_1, v90, v88);
            __swift_destroy_boxed_opaque_existential_1(&v125);
            v93 = v111;
            (*(v91 + 40))(v137, v111, 0, v88, v91);
            __swift_destroy_boxed_opaque_existential_1(&v128);
            v94 = static NSAttributedStringKey.kitFont.getter();
            v95 = [v5 textStorage];
            v96 = swift_getObjectType();
            v97 = swift_conformsToProtocol2();
            if (v97)
            {
              *&v123 = v95;
              v98 = *(*(v97 + 8) + 8);
              v99 = *(v98 + 56);
              *(&v126 + 1) = swift_getAssociatedTypeWitness();
              *&v127 = swift_getAssociatedConformanceWitness();
              __swift_allocate_boxed_opaque_existential_1(&v125);
              v99(v96, v98);

              v100 = *(&v126 + 1);
              v101 = v127;
              v102 = __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
              *(&v129 + 1) = v100;
              v103 = *(v101 + 8);
              *&v130 = v103;
              v104 = __swift_allocate_boxed_opaque_existential_1(&v128);
              (*(*(v100 - 8) + 16))(v104, v102, v100);
              __swift_destroy_boxed_opaque_existential_1(&v125);
              v105 = static NSAttributedStringKey.kitFont.getter();
              (*(v103 + 24))(&v125, v105, v100, v103);

              v106 = *(&v126 + 1);
              v107 = v127;
              __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
              (*(v107 + 16))(&v123, v93, v106, v107);
              if (v124)
              {
                outlined init with take of Any(&v123, v122);
                v108 = swift_isUniquelyReferenced_nonNull_native();
                v121 = v137;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v122, v94, v108);
                swift_unknownObjectRelease();

                v137 = v121;
              }

              else
              {
                outlined destroy of Any?(&v123);
                specialized Dictionary._Variant.removeValue(forKey:)(v122);

                outlined destroy of Any?(v122);
                swift_unknownObjectRelease();
              }

              (*(v109 + 8))(v93, v110);
              __swift_destroy_boxed_opaque_existential_1(&v125);
              __swift_destroy_boxed_opaque_existential_1(&v128);
              goto LABEL_63;
            }

            goto LABEL_78;
          }

LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          return;
        }
      }

      else
      {
        if (v28 == 2)
        {
LABEL_20:

          if (a2)
          {
            type metadata accessor for NSAttributedStringKey(0);
            _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
            v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v29.super.isa = 0;
          }

          v131.receiver = v5;
          v131.super_class = ObjectType;
          v57 = objc_msgSendSuper2(&v131, sel__attributesForApplyingFormattingModification_withAttributes_paragraphStyle_forTypingAttributes_, a1, v29.super.isa, v118, v120 & 1);

          if (v57)
          {
            type metadata accessor for NSAttributedStringKey(0);
            _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
            v58 = MEMORY[0x1E69E7CA0];
            v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for [NSAttributedStringKey](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
            v60 = swift_allocObject();
            *(v60 + 16) = xmmword_18CD63400;
            v61 = *MEMORY[0x1E69DB688];
            *(v60 + 32) = *MEMORY[0x1E69DB688];
            _sypSgMaTm_7(0, &lazy cache variable for type metadata for Any?, v58 + 8, MEMORY[0x1E69E6720]);
            *(v60 + 64) = v62;
            v63 = swift_allocObject();
            v64 = v63;
            *(v60 + 40) = v63;
            if (*(v59 + 16))
            {
              v65 = v61;
              v66 = specialized __RawDictionaryStorage.find<A>(_:)();
              if (v67)
              {
                outlined init with copy of Any(*(v59 + 56) + 32 * v66, v64 + 16);
              }

              else
              {
                *(v64 + 16) = 0u;
                *(v64 + 32) = 0u;
              }
            }

            else
            {
              *(v63 + 16) = 0u;
              *(v63 + 32) = 0u;
              v75 = v61;
            }

            v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v60);
            swift_setDeallocating();
            _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v60 + 32, type metadata accessor for (NSAttributedStringKey, Any));
            swift_deallocClassInstance();
            swift_unknownObjectRelease();
            swift_beginAccess();
            v137 = v76;
            goto LABEL_57;
          }

          swift_unknownObjectRelease();
LABEL_63:
          swift_beginAccess();

          return;
        }

        if (v28 != 3)
        {
          if (v28 == 5)
          {
            goto LABEL_20;
          }

LABEL_41:

          if (a2)
          {
            type metadata accessor for NSAttributedStringKey(0);
            _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
            v56.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v56.super.isa = 0;
          }

          v132.receiver = v5;
          v132.super_class = ObjectType;
          v77 = objc_msgSendSuper2(&v132, sel__attributesForApplyingFormattingModification_withAttributes_paragraphStyle_forTypingAttributes_, a1, v56.super.isa, v118, v120 & 1);

          if (v77)
          {
            type metadata accessor for NSAttributedStringKey(0);
            _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
            v78 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            swift_unknownObjectRelease();
          }

          else
          {
            v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

            swift_unknownObjectRelease();
          }

          v137 = v78;
          goto LABEL_63;
        }

        v38 = v112;
        specialized getter of suiFont #1 in RichTextEditorTextView._attributes(forApplying:withAttributes:paragraphStyle:forTypingAttributes:)(&v134, &v137, v112);
        v39 = (v38 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
        if (*(a1 + 8))
        {
          swift_beginAccess();
          if (*v39 != 1)
          {
            goto LABEL_53;
          }

          __break(1u);
        }

        else
        {
          swift_beginAccess();
          if (*v39 != 1)
          {
LABEL_53:
            v72 = v39[1];
            *&v122[0] = *v39;
            *(&v122[0] + 1) = v72;
            swift_retain_n();
            EnvironmentValues.fontResolutionContext.getter();
            v73 = Font.resolveDescriptor(in:)();
            v128 = v125;
            v129 = v126;
            v130 = v127;
            outlined destroy of Font.Context(&v128);
            CTFontDescriptorRef.size.getter();

            v74 = Font.scaled(by:)();

            *&v128 = v74;
            swift_beginAccess();
            lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();

            Dictionary<>.subscript.setter();
            specialized Dictionary._Variant.removeValue(forKey:)(&v128);
            swift_endAccess();
            swift_unknownObjectRelease();

            outlined destroy of Any?(&v128);
            goto LABEL_63;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_77;
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  v135.receiver = v4;
  v135.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v135, sel__attributesForApplyingFormattingModification_withAttributes_paragraphStyle_forTypingAttributes_, a1, v25.super.isa, v118, v120 & 1);

  if (v26)
  {
    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }
}

void specialized getter of suiFont #1 in RichTextEditorTextView._attributes(forApplying:withAttributes:paragraphStyle:forTypingAttributes:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1)
  {
    goto LABEL_13;
  }

  v6 = static AttributeScopes.SwiftUIAttributes.FontAttribute.name.getter();
  v7 = MEMORY[0x18D00C850](v6);

  swift_beginAccess();
  v8 = *a2;
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v14);
  }

  else
  {

    v14 = 0u;
    v15 = 0u;
  }

  swift_endAccess();
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v13;
LABEL_12:
      swift_beginAccess();
      *a1 = v11;

LABEL_13:

      return;
    }
  }

  else
  {
    outlined destroy of Any?(&v14);
  }

  v12 = (a3 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  if (*v12 != 1)
  {
    v11 = EnvironmentValues.effectiveFont.getter();
    goto LABEL_12;
  }

  __break(1u);
}

double Dictionary<>.update(_:to:in:)(__int16 a1, char a2, unint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
  Dictionary<>.subscript.getter();
  v8 = v19;
  if (!v19)
  {
    v21 = v5;
    v22 = v6;
    v8 = EnvironmentValues.effectiveFont.getter();
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  Dictionary<>.subscript.getter();
  if (v22 == 1)
  {
    getter of scope #1 in Dictionary<>.update(_:to:in:)(v7, &v19);
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    v9 = AttributedString.Keys.contains(_:)();

    if ((v9 & 1) != 0 && (getter of scope #1 in Dictionary<>.update(_:to:in:)(v7, &v19), v10 = AttributedString.Keys.contains(_:)(), , (v10 & 1) == 0))
    {
      v11 = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v8;
  if ((a1 & 2) != 0)
  {
    v12 = Font.bold(_:)();

    if ((v11 & 1) == 0)
    {
      if (a2)
      {
        v13 = v21 | 2;
      }

      else
      {
        v13 = v21 & 0xFFFFFFFFFFFFFFFDLL;
      }

      v21 = v13;
    }
  }

  if (a1)
  {
    v14 = Font.italic(_:)();

    if ((v22 & 1) == 0)
    {
      if (a2)
      {
        v15 = v21 | 1;
      }

      else
      {
        v15 = v21 & 0xFFFFFFFFFFFFFFFELL;
      }

      v21 = v15;
    }
  }

  else
  {
    v14 = v12;
  }

  if ((a1 & 0x400) != 0)
  {
    v16 = Font.monospaced(_:)();

    if ((v22 & 1) == 0)
    {
      if (a2)
      {
        v17 = v21 | 4;
      }

      else
      {
        v17 = v21 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v21 = v17;
    }
  }

  else
  {
    v16 = v14;
  }

  v19 = v16;

  Dictionary<>.subscript.setter();
  v19 = v21;
  v20 = v22;
  Dictionary<>.subscript.setter();

  return result;
}

char *initializeBufferWithCopyOfBuffer for UIKitRichTextEditor(char *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TextEditor.Storage.AttributedText(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = v4;
    *(a1 + 1) = a2[1];
    type metadata accessor for Binding<AttributedString>(0);
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], a2 + v9, v10);
    v12 = *(v7 + 20);
    v13 = &a1[v12];
    v14 = (a2 + v12);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      type metadata accessor for Binding<AttributedTextSelection>?(0);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      v37 = v17;
      v38 = v13;
      v19 = v14[1];
      *v13 = *v14;
      *(v13 + 1) = v19;
      v20 = *(v16 + 32);
      v21 = &v13[v20];
      v22 = v14 + v20;
      v23 = type metadata accessor for AttributedTextSelection.Indices(0);
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);

      if (v25(v22, 1, v23))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v21, v22, *(*(v26 - 8) + 64));
        v27 = v21;
        v28 = v38;
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v30 = v29;
        }

        else
        {
          v30 = type metadata accessor for AttributedString.Index();
        }

        v27 = v21;
        v28 = v38;
        (*(*(v30 - 8) + 16))(v27, v22);
        swift_storeEnumTagMultiPayload();
        (*(v24 + 56))(v27, 0, 1, v23);
      }

      v31 = type metadata accessor for AttributedTextSelection(0);
      v32 = *(v31 + 20);
      v33 = type metadata accessor for AttributeContainer();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(&v22[v32], 1, v33))
      {
        v35 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v27[v32], &v22[v32], *(*(v35 - 8) + 64));
      }

      else
      {
        (*(v34 + 16))(&v27[v32], &v22[v32], v33);
        (*(v34 + 56))(&v27[v32], 0, 1, v33);
      }

      v27[*(v31 + 24)] = v22[*(v31 + 24)];
      (*(v37 + 56))(v28, 0, 1, v16);
    }
  }

  return a1;
}

void type metadata accessor for [NSAttributedStringKey](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t destroy for UIKitRichTextEditor(uint64_t a1)
{

  type metadata accessor for Binding<AttributedString>(0);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = a1 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v7 = v6;
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (!result)
  {

    v9 = v5 + *(v7 + 32);
    v10 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
      }

      else
      {
        v11 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v11 - 8) + 8))(v9, v11);
    }

    v12 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v13 = type metadata accessor for AttributeContainer();
    v15 = *(v13 - 8);
    result = (*(v15 + 48))(v9 + v12, 1, v13);
    if (!result)
    {
      v14 = *(v15 + 8);

      return v14(v9 + v12, v13);
    }
  }

  return result;
}

char *initializeWithCopy for UIKitRichTextEditor(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  type metadata accessor for Binding<AttributedString>(0);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v11, 1, v12))
  {
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v10, v11, *(*(v15 - 8) + 64));
  }

  else
  {
    v34 = v14;
    v35 = v10;
    v16 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v16;
    v17 = *(v13 + 32);
    v18 = &v10[v17];
    v19 = &v11[v17];
    v20 = type metadata accessor for AttributedTextSelection.Indices(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);

    if (v22(v19, 1, v20))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
      v24 = v18;
      v25 = v35;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
        v27 = v26;
      }

      else
      {
        v27 = type metadata accessor for AttributedString.Index();
      }

      v24 = v18;
      v25 = v35;
      (*(*(v27 - 8) + 16))(v24, v19);
      swift_storeEnumTagMultiPayload();
      (*(v21 + 56))(v24, 0, 1, v20);
    }

    v28 = type metadata accessor for AttributedTextSelection(0);
    v29 = *(v28 + 20);
    v30 = type metadata accessor for AttributeContainer();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(&v19[v29], 1, v30))
    {
      v32 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v24[v29], &v19[v29], *(*(v32 - 8) + 64));
    }

    else
    {
      (*(v31 + 16))(&v24[v29], &v19[v29], v30);
      (*(v31 + 56))(&v24[v29], 0, 1, v30);
    }

    v24[*(v28 + 24)] = v19[*(v28 + 24)];
    (*(v34 + 56))(v25, 0, 1, v13);
  }

  return a1;
}

char *assignWithCopy for UIKitRichTextEditor(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v8 = &a1[v7];
  v9 = &a2[v7];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v8, 1, v10);
  v15 = v13(v9, 1, v11);
  if (!v14)
  {
    if (v15)
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v8, type metadata accessor for Binding<AttributedTextSelection>);
      goto LABEL_7;
    }

    *v8 = *v9;

    *(v8 + 1) = *(v9 + 1);

    v24 = *(v11 + 32);
    v25 = &v8[v24];
    v26 = &v9[v24];
    v27 = type metadata accessor for AttributedTextSelection.Indices(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v29(v25, 1, v27);
    v31 = v29(v26, 1, v27);
    if (v30)
    {
      if (!v31)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v33 = v32;
        }

        else
        {
          v33 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v33 - 8) + 16))(v25, v26);
        swift_storeEnumTagMultiPayload();
        (*(v28 + 56))(v25, 0, 1, v27);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v31)
      {
        if (a1 != a2)
        {
          _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v25, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
          }

          else
          {
            v42 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v42 - 8) + 16))(v25, v26, v42);
          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v43 = type metadata accessor for AttributedTextSelection(0);
        v44 = *(v43 + 20);
        v45 = type metadata accessor for AttributeContainer();
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);
        v48 = v47(&v25[v44], 1, v45);
        v49 = v47(&v26[v44], 1, v45);
        if (v48)
        {
          if (!v49)
          {
            (*(v46 + 16))(&v25[v44], &v26[v44], v45);
            (*(v46 + 56))(&v25[v44], 0, 1, v45);
LABEL_35:
            v25[*(v43 + 24)] = v26[*(v43 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v49)
          {
            (*(v46 + 24))(&v25[v44], &v26[v44], v45);
            goto LABEL_35;
          }

          (*(v46 + 8))(&v25[v44], v45);
        }

        v50 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v25[v44], &v26[v44], *(*(v50 - 8) + 64));
        goto LABEL_35;
      }

      _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v25, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v25, v26, *(*(v36 - 8) + 64));
    goto LABEL_29;
  }

  if (v15)
  {
LABEL_7:
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v8, v9, *(*(v23 - 8) + 64));
    return a1;
  }

  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  v16 = *(v11 + 32);
  __dst = &v8[v16];
  v17 = &v9[v16];
  v18 = type metadata accessor for AttributedTextSelection.Indices(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);

  if (v20(v17, 1, v18))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    v22 = __dst;
    memcpy(__dst, v17, *(*(v21 - 8) + 64));
  }

  else
  {
    v22 = __dst;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0);
      v35 = v34;
    }

    else
    {
      v35 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v35 - 8) + 16))(__dst, v17);
    swift_storeEnumTagMultiPayload();
    (*(v19 + 56))(__dst, 0, 1, v18);
  }

  v37 = type metadata accessor for AttributedTextSelection(0);
  v38 = *(v37 + 20);
  v39 = type metadata accessor for AttributeContainer();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(&v17[v38], 1, v39))
  {
    v41 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v22[v38], &v17[v38], *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v40 + 16))(&v22[v38], &v17[v38], v39);
    (*(v40 + 56))(&v22[v38], 0, 1, v39);
  }

  v22[*(v37 + 24)] = v17[*(v37 + 24)];
  (*(v12 + 56))(v8, 0, 1, v11);
  return a1;
}

uint64_t _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for UIKitRichTextEditor(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  type metadata accessor for Binding<AttributedString>(0);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v9 = &a1[v8];
  v10 = &a2[v8];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 1) = v15;
    v16 = *(v12 + 32);
    v17 = &v9[v16];
    v18 = &v10[v16];
    v19 = type metadata accessor for AttributedTextSelection.Indices(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
        v23 = v22;
      }

      else
      {
        v23 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v23 - 8) + 32))(v17, v18);
      swift_storeEnumTagMultiPayload();
      (*(v20 + 56))(v17, 0, 1, v19);
    }

    v24 = type metadata accessor for AttributedTextSelection(0);
    v25 = *(v24 + 20);
    v26 = type metadata accessor for AttributeContainer();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(&v18[v25], 1, v26))
    {
      v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v17[v25], &v18[v25], *(*(v28 - 8) + 64));
    }

    else
    {
      (*(v27 + 32))(&v17[v25], &v18[v25], v26);
      (*(v27 + 56))(&v17[v25], 0, 1, v26);
    }

    v17[*(v24 + 24)] = v18[*(v24 + 24)];
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  return a1;
}

char *assignWithTake for UIKitRichTextEditor(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  v7 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v8 = &a1[v7];
  v9 = &a2[v7];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v8, 1, v10);
  v15 = v13(v9, 1, v11);
  if (!v14)
  {
    if (v15)
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v8, type metadata accessor for Binding<AttributedTextSelection>);
      goto LABEL_7;
    }

    *v8 = *v9;

    *(v8 + 1) = *(v9 + 1);

    v24 = *(v11 + 32);
    v25 = &v8[v24];
    v26 = &v9[v24];
    v27 = type metadata accessor for AttributedTextSelection.Indices(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v29(v25, 1, v27);
    v31 = v29(v26, 1, v27);
    if (v30)
    {
      if (!v31)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v33 = v32;
        }

        else
        {
          v33 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v33 - 8) + 32))(v25, v26);
        swift_storeEnumTagMultiPayload();
        (*(v28 + 56))(v25, 0, 1, v27);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v31)
      {
        if (a1 != a2)
        {
          _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v25, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
          }

          else
          {
            v42 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v42 - 8) + 32))(v25, v26, v42);
          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v43 = type metadata accessor for AttributedTextSelection(0);
        v44 = *(v43 + 20);
        v45 = type metadata accessor for AttributeContainer();
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);
        v48 = v47(&v25[v44], 1, v45);
        v49 = v47(&v26[v44], 1, v45);
        if (v48)
        {
          if (!v49)
          {
            (*(v46 + 32))(&v25[v44], &v26[v44], v45);
            (*(v46 + 56))(&v25[v44], 0, 1, v45);
LABEL_35:
            v25[*(v43 + 24)] = v26[*(v43 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v49)
          {
            (*(v46 + 40))(&v25[v44], &v26[v44], v45);
            goto LABEL_35;
          }

          (*(v46 + 8))(&v25[v44], v45);
        }

        v50 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v25[v44], &v26[v44], *(*(v50 - 8) + 64));
        goto LABEL_35;
      }

      _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v25, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v25, v26, *(*(v36 - 8) + 64));
    goto LABEL_29;
  }

  if (v15)
  {
LABEL_7:
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v8, v9, *(*(v23 - 8) + 64));
    return a1;
  }

  v16 = *(v9 + 1);
  *v8 = *v9;
  *(v8 + 1) = v16;
  v17 = *(v11 + 32);
  v18 = &v8[v17];
  v19 = &v9[v17];
  v20 = type metadata accessor for AttributedTextSelection.Indices(0);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0);
      v35 = v34;
    }

    else
    {
      v35 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v35 - 8) + 32))(v18, v19);
    swift_storeEnumTagMultiPayload();
    (*(v21 + 56))(v18, 0, 1, v20);
  }

  v37 = type metadata accessor for AttributedTextSelection(0);
  v38 = *(v37 + 20);
  v39 = type metadata accessor for AttributeContainer();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(&v19[v38], 1, v39))
  {
    v41 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v18[v38], &v19[v38], *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v40 + 32))(&v18[v38], &v19[v38], v39);
    (*(v40 + 56))(&v18[v38], 0, 1, v39);
  }

  v18[*(v37 + 24)] = v19[*(v37 + 24)];
  (*(v12 + 56))(v8, 0, 1, v11);
  return a1;
}

uint64_t type metadata completion function for UIKitRichTextEditor(uint64_t a1)
{
  result = type metadata accessor for TextEditor.Storage.AttributedText(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double getter of scope #1 in Dictionary<>.update(_:to:in:)@<D0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    EnvironmentValues.attributeScopeContext.getter();
    AttributeScopeContext.scope.getter();

    static AttributeScope.keys.getter();
    v7 = v9;
    swift_beginAccess();
    *v6 = v9;
  }

  *a4 = v7;

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitRichTextEditor.MakeRepresentable and conformance UIKitRichTextEditor.MakeRepresentable()
{
  result = lazy protocol witness table cache variable for type UIKitRichTextEditor.MakeRepresentable and conformance UIKitRichTextEditor.MakeRepresentable;
  if (!lazy protocol witness table cache variable for type UIKitRichTextEditor.MakeRepresentable and conformance UIKitRichTextEditor.MakeRepresentable)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitRichTextEditor.MakeRepresentable, &unk_1EFFF0CC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitRichTextEditor.MakeRepresentable and conformance UIKitRichTextEditor.MakeRepresentable);
  }

  return result;
}

void type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(255, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
    v8 = a3(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of AttributedTextStorage<PlatformTextViewEditorStorage>(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>(uint64_t a1, double a2)
{
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double outlined destroy of AttributedTextStorage<PlatformTextViewEditorStorage>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), double a4)
{
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return result;
}

uint64_t _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), double a5)
{
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6968500], MEMORY[0x1E6968508], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69684F8], MEMORY[0x1E6968508], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute);
  }

  return result;
}

uint64_t outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0, &lazy cache variable for type metadata for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>, type metadata accessor for ExclusivelyAccessible, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v7);
    atomic_store(result, a1);
  }

  return result;
}

void specialized UIKitRichTextEditorCoordinator.textView(_:editMenuForTextIn:suggestedActions:)(unint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  if (*v3 == 1)
  {
    __break(1u);
  }

  else
  {
    if (v3[1])
    {
      type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, v4);

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, &type metadata for EnvironmentValues.__Key_textInputFormattingControlVisibility, &protocol witness table for EnvironmentValues.__Key_textInputFormattingControlVisibility, v5);
      PropertyList.subscript.getter();
    }

    swift_endAccess();
    if ((v24 & 2) == 0)
    {
      v25 = MEMORY[0x1E69E7CC0];
      if (a1 >> 62)
      {
        goto LABEL_28;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v7 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x18D00E9C0](v7, a1);
          }

          else
          {
            if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v8 = *(a1 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (!v11)
          {
            goto LABEL_9;
          }

          v12 = v11;
          v13 = v9;
          v14 = [v12 identifier];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          if (v15 == 0xD000000000000015 && 0x800000018CD547F0 == v17)
          {

            goto LABEL_10;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
          }

          else
          {
LABEL_9:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

LABEL_10:
          ++v7;
          if (v10 == i)
          {
            preferredElementSize = v25;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        ;
      }

      preferredElementSize = MEMORY[0x1E69E7CC0];
LABEL_30:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v26.value.super.isa = 0;
      v26.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, v21, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v23);
    }
  }
}

uint64_t outlined init with take of AttributedTextStorage<PlatformTextViewEditorStorage>(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, type metadata accessor for AttributedTextStorage);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for UIKitRichTextEditorAdaptor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v25 = *a2;
    *a1 = *a2;
    a1 = v25 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    outlined copy of Environment<Bool>.Content();
    *a1 = v7;
    *(a1 + 8) = v8;
    v47 = a3;
    v9 = *(a3 + 20);
    v10 = (a1 + v9);
    v11 = a2 + v9;
    v12 = *(a2 + v9 + 8);
    *v10 = *(a2 + v9);
    *(v10 + 1) = v12;
    type metadata accessor for Binding<AttributedString>(0);
    v14 = *(v13 + 32);
    v15 = type metadata accessor for AttributedString();
    v16 = *(*(v15 - 8) + 16);

    v16(&v10[v14], &v11[v14], v15);
    v17 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v18 = &v10[v17];
    v19 = &v11[v17];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v21 = v20;
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v19, 1, v20))
    {
      type metadata accessor for Binding<AttributedTextSelection>?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
      v24 = v47;
    }

    else
    {
      v44 = v22;
      v45 = v18;
      v26 = *(v19 + 1);
      *v18 = *v19;
      *(v18 + 1) = v26;
      v27 = *(v21 + 32);
      v46 = &v18[v27];
      v28 = &v19[v27];
      v29 = type metadata accessor for AttributedTextSelection.Indices(0);
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);

      v32 = v28;

      if (v31(v28, 1, v29))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v46, v28, *(*(v33 - 8) + 64));
        v24 = v47;
      }

      else
      {
        v24 = v47;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v35 = v34;
        }

        else
        {
          v35 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v35 - 8) + 16))(v46, v32);
        swift_storeEnumTagMultiPayload();
        (*(v30 + 56))(v46, 0, 1, v29);
      }

      v36 = v32;
      v37 = type metadata accessor for AttributedTextSelection(0);
      v38 = *(v37 + 20);
      v39 = type metadata accessor for AttributeContainer();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(&v36[v38], 1, v39))
      {
        v41 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v42 = v46;
        memcpy(&v46[v38], &v36[v38], *(*(v41 - 8) + 64));
      }

      else
      {
        v42 = v46;
        (*(v40 + 16))(&v46[v38], &v36[v38], v39);
        (*(v40 + 56))(&v46[v38], 0, 1, v39);
      }

      v42[*(v37 + 24)] = v36[*(v37 + 24)];
      (*(v44 + 56))(v45, 0, 1, v21);
    }

    *(a1 + *(v24 + 24)) = *(a2 + *(v24 + 24));
  }

  return a1;
}

uint64_t destroy for UIKitRichTextEditorAdaptor(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v4 = a1 + *(a2 + 20);

  type metadata accessor for Binding<AttributedString>(0);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v4 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v10 = v9;
  result = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (!result)
  {

    v12 = v8 + *(v10 + 32);
    v13 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
      }

      else
      {
        v14 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v14 - 8) + 8))(v12, v14);
    }

    v15 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v16 = type metadata accessor for AttributeContainer();
    v18 = *(v16 - 8);
    result = (*(v18 + 48))(v12 + v15, 1, v16);
    if (!result)
    {
      v17 = *(v18 + 8);

      return v17(v12 + v15, v16);
    }
  }

  return result;
}

uint64_t initializeWithCopy for UIKitRichTextEditorAdaptor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v6;
  *(a1 + 8) = v7;
  v42 = a3;
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = a2 + v8;
  v11 = *(a2 + v8 + 8);
  *v9 = *(a2 + v8);
  *(v9 + 1) = v11;
  type metadata accessor for Binding<AttributedString>(0);
  v13 = *(v12 + 32);
  v14 = type metadata accessor for AttributedString();
  v15 = *(*(v14 - 8) + 16);

  v15(&v9[v13], &v10[v13], v14);
  v16 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v17 = &v9[v16];
  v18 = &v10[v16];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v20 = v19;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v18, 1, v19))
  {
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v17, v18, *(*(v22 - 8) + 64));
  }

  else
  {
    v40 = v21;
    v41 = v17;
    v23 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v23;
    v24 = *(v20 + 32);
    __dst = &v17[v24];
    v25 = &v18[v24];
    v26 = type metadata accessor for AttributedTextSelection.Indices(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);

    if (v28(v25, 1, v26))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      v30 = __dst;
      memcpy(__dst, v25, *(*(v29 - 8) + 64));
    }

    else
    {
      v30 = __dst;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
        v32 = v31;
      }

      else
      {
        v32 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v32 - 8) + 16))(__dst, v25);
      swift_storeEnumTagMultiPayload();
      (*(v27 + 56))(__dst, 0, 1, v26);
    }

    v33 = type metadata accessor for AttributedTextSelection(0);
    v34 = *(v33 + 20);
    v35 = type metadata accessor for AttributeContainer();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(&v25[v34], 1, v35))
    {
      v37 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v30[v34], &v25[v34], *(*(v37 - 8) + 64));
    }

    else
    {
      (*(v36 + 16))(&v30[v34], &v25[v34], v35);
      (*(v36 + 56))(&v30[v34], 0, 1, v35);
    }

    v30[*(v33 + 24)] = v25[*(v33 + 24)];
    (*(v40 + 56))(v41, 0, 1, v20);
  }

  *(a1 + *(v42 + 24)) = *(a2 + *(v42 + 24));
  return a1;
}

uint64_t assignWithCopy for UIKitRichTextEditorAdaptor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 20);
  v11 = a1 + v10;
  v12 = v4 + v10;
  *(a1 + v10) = *(v4 + v10);

  *(v11 + 8) = *(v12 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v14 = *(v13 + 32);
  v15 = type metadata accessor for AttributedString();
  (*(*(v15 - 8) + 24))(v11 + v14, &v12[v14], v15);
  v16 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  v17 = (v11 + v16);
  v18 = &v12[v16];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v17, 1, v19);
  v24 = v22(v18, 1, v20);
  if (!v23)
  {
    if (v24)
    {
      _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v17, type metadata accessor for Binding<AttributedTextSelection>);
      goto LABEL_7;
    }

    *v17 = *v18;

    *(v17 + 1) = *(v18 + 1);

    v35 = *(v20 + 32);
    v36 = &v17[v35];
    v37 = &v18[v35];
    v38 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    __dsta = v36;
    v41 = v40(v36, 1, v38);
    v42 = v40(v37, 1, v38);
    if (v41)
    {
      if (v42)
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        v44 = *(*(v43 - 8) + 64);
        v45 = v36;
LABEL_15:
        memcpy(v45, v37, v44);
        goto LABEL_30;
      }

      v45 = v36;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
        v57 = v55;
      }

      else
      {
        v57 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v57 - 8) + 16))(v36, v37);
      swift_storeEnumTagMultiPayload();
      (*(v39 + 56))(v36, 0, 1, v38);
    }

    else
    {
      if (v42)
      {
        v45 = v36;
        _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v36, type metadata accessor for AttributedTextSelection.Indices);
        type metadata accessor for AttributedTextSelection.Indices?(0);
        v44 = *(*(v49 - 8) + 64);
        goto LABEL_15;
      }

      v45 = v36;
      if (a1 != v4)
      {
        _s7SwiftUI23AttributedTextSelectionV7IndicesOWOhTm_0(v36, type metadata accessor for AttributedTextSelection.Indices);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
        }

        else
        {
          v56 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v56 - 8) + 16))(v36, v37, v56);
        swift_storeEnumTagMultiPayload();
      }
    }

LABEL_30:
    v70 = type metadata accessor for AttributedTextSelection(0);
    v58 = *(v70 + 20);
    v59 = type metadata accessor for AttributeContainer();
    v60 = *(v59 - 8);
    v61 = v37;
    v62 = *(v60 + 48);
    v63 = v62(&v45[v58], 1, v59);
    v64 = v62(&v61[v58], 1, v59);
    if (v63)
    {
      if (!v64)
      {
        v66 = __dsta;
        (*(v60 + 16))(&__dsta[v58], &v61[v58], v59);
        (*(v60 + 56))(&__dsta[v58], 0, 1, v59);
        goto LABEL_38;
      }

      v65 = *(*(type metadata accessor for AttributedTextSelection.TypingAttributes(0) - 8) + 64);
      v66 = __dsta;
    }

    else
    {
      if (!v64)
      {
        v66 = __dsta;
        (*(v60 + 24))(&__dsta[v58], &v61[v58], v59);
        goto LABEL_38;
      }

      v66 = __dsta;
      (*(v60 + 8))(&__dsta[v58], v59);
      v65 = *(*(type metadata accessor for AttributedTextSelection.TypingAttributes(0) - 8) + 64);
    }

    memcpy(&v66[v58], &v61[v58], v65);
LABEL_38:
    v66[*(v70 + 24)] = v61[*(v70 + 24)];
    goto LABEL_39;
  }

  if (v24)
  {
LABEL_7:
    type metadata accessor for Binding<AttributedTextSelection>?(0);
    memcpy(v17, v18, *(*(v34 - 8) + 64));
    goto LABEL_39;
  }

  v68 = v4;
  v71 = a3;
  *v17 = *v18;
  *(v17 + 1) = *(v18 + 1);
  v25 = *(v20 + 32);
  __dst = &v17[v25];
  v26 = &v18[v25];
  v27 = type metadata accessor for AttributedTextSelection.Indices(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v26;
  v31 = v27;

  if (v29(v30, 1, v31))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(__dst, v30, *(*(v32 - 8) + 64));
    v4 = v68;
    v33 = v30;
  }

  else
  {
    v46 = v28;
    v33 = v30;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0);
      v48 = v47;
    }

    else
    {
      v48 = type metadata accessor for AttributedString.Index();
    }

    v4 = v68;
    (*(*(v48 - 8) + 16))(__dst, v30);
    swift_storeEnumTagMultiPayload();
    (*(v46 + 56))(__dst, 0, 1, v31);
  }

  v69 = type metadata accessor for AttributedTextSelection(0);
  v50 = *(v69 + 20);
  v51 = type metadata accessor for AttributeContainer();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(&v33[v50], 1, v51))
  {
    v53 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    v54 = __dst;
    memcpy(&__dst[v50], &v33[v50], *(*(v53 - 8) + 64));
  }

  else
  {
    v54 = __dst;
    (*(v52 + 16))(&__dst[v50], &v33[v50], v51);
    (*(v52 + 56))(&__dst[v50], 0, 1, v51);
  }

  a3 = v71;
  v54[*(v69 + 24)] = v33[*(v69 + 24)];
  (*(v21 + 56))(v17, 0, 1, v20);
LABEL_39:
  *(a1 + *(a3 + 24)) = *(v4 + *(a3 + 24));
  return a1;
}