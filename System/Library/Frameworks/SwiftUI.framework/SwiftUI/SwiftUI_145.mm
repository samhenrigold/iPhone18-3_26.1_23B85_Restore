uint64_t *assignWithCopy for MapAnimator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;
  v6 = a1 + 15;

  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  v8 = v5 & 0xFFFFFFFFFFFFFFF8;
  *(v6 & 0xFFFFFFFFFFFFFFF8) = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8 + v7;
  v98 = ~v11;
  v13 = v11 + 8 + v8;
  v14 = *(v10 + 48);
  v15 = v14(v12 & ~v11, 1, v9);
  v88 = v14;
  v16 = v14(v13 & ~v11, 1, v9);
  v96 = v9;
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12 & ~v11, v13 & ~v11, v9);
      (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12 & ~v11, v13 & ~v11, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12 & ~v11, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy((v12 & ~v11), (v13 & ~v11), v19);
LABEL_12:
  v20 = *(v10 + 84);
  v92 = v10;
  v21 = *(v10 + 64);
  if (v20)
  {
    v22 = v21 + ((v11 + 16) & v98);
  }

  else
  {
    v22 = v21 + ((v11 + 16) & v98) + 1;
  }

  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = v11 | 7;
  v27 = v11 | 7 | v25;
  v97 = a1;
  v28 = ((a1 + v27 + v22) & ~v27);
  v29 = ((a2 + v27 + v22) & ~v27);
  v30 = *(v24 + 84);
  if (v20 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v20;
  }

  v32 = *(*(v23 - 8) + 64);
  v33 = ~v25;
  v34 = v32 + v25;
  v35 = ~v26;
  v36 = v32 + v26;
  v90 = ~v26;
  v91 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v93 = (v21 + 7 + ((v91 + ((v32 + v26 + ((v32 + v25) & ~v25)) & ~v26)) & v98)) & 0xFFFFFFFFFFFFFFF8;
  v95 = v21 + 7;
  v89 = v32 + v26;
  if (v30 < v31)
  {
    v37 = (v36 + (&v28[v34] & v33)) & v35;
    v38 = ~v25;
    if (v20 < 0x7FFFFFFF)
    {
      v49 = *((v95 + v37) & 0xFFFFFFFFFFFFFFF8);
      if (v49 >= 0xFFFFFFFF)
      {
        LODWORD(v49) = -1;
      }

      v43 = v49 + 1;
    }

    else
    {
      v39 = ~v26;
      v40 = v32 + v26;
      v41 = v32 + v25;
      v42 = v88(v37, v20, v96);
      v34 = v41;
      v36 = v40;
      v38 = v33;
      v35 = v39;
      v43 = v42;
    }

    v48 = v97;
    v50 = (v36 + (&v29[v34] & v38)) & v35;
    if (v43)
    {
      if (v20 < 0x7FFFFFFF)
      {
        v54 = *((v95 + v50) & 0xFFFFFFFFFFFFFFF8);
        if (v54 >= 0xFFFFFFFF)
        {
          LODWORD(v54) = -1;
        }

        v52 = v54 + 1;
      }

      else
      {
        v51 = v34;
        v52 = v88(v50, v20, v96);
        v34 = v51;
      }

      if (!v52)
      {
        goto LABEL_36;
      }

LABEL_42:
      v67 = v93 + 16;
      memcpy(v28, v29, v93 + 16);
      goto LABEL_43;
    }

    if (v20 < 0x7FFFFFFF)
    {
      v68 = *((v95 + v50) & 0xFFFFFFFFFFFFFFF8);
      if (v68 >= 0xFFFFFFFF)
      {
        LODWORD(v68) = -1;
      }

      v47 = v68 + 1;
    }

    else
    {
      v53 = v34;
      v47 = v88(v50, v20, v96);
      v34 = v53;
    }

LABEL_40:
    v69 = &v28[v34] & v38;
    if (!v47)
    {
      v77 = *(v24 + 24);
      v78 = v34;
      v77(v28, v29, v23);
      v79 = &v29[v78] & v38;
      v77(v69, v79, v23);
      v80 = (v89 + v69) & v90;
      v81 = (v89 + v79) & v90;
      v82 = v92[3];
      v82(v80, v81, v96);
      *((v95 + v80) & 0xFFFFFFFFFFFFFFF8) = *((v95 + v81) & 0xFFFFFFFFFFFFFFF8);

      v48 = v97;

      v83 = (v91 + v80) & v98;
      v84 = (v91 + v81) & v98;
      v82(v83, v84, v96);
      v85 = ((v95 + v83) & 0xFFFFFFFFFFFFFFF8);
      v86 = ((v95 + v84) & 0xFFFFFFFFFFFFFFF8);
      v87 = v86[1];
      *v85 = *v86;
      v85[1] = v87;

      v67 = v93 + 16;
      goto LABEL_43;
    }

    v70 = *(v24 + 8);
    v70(v28, v23);
    v70(v69, v23);
    v71 = v92[1];
    v71((v89 + v69) & v90, v96);

    v71((v91 + ((v89 + v69) & v90)) & v98, v96);

    goto LABEL_42;
  }

  v44 = *(v24 + 48);
  v45 = v32 + v25;
  v46 = v44(v28, v30, v23);
  v47 = v44(v29, v30, v23);
  v34 = v45;
  v48 = v97;
  v38 = v33;
  if (!v46)
  {
    goto LABEL_40;
  }

  if (v47)
  {
    goto LABEL_42;
  }

LABEL_36:
  v55 = *(v24 + 16);
  v56 = v34;
  v55(v28, v29, v23);
  v57 = &v28[v56] & v38;
  v58 = &v29[v56] & v38;
  v55(v57, v58, v23);
  v59 = (v89 + v57) & v90;
  v48 = v97;
  v60 = (v89 + v58) & v90;
  v61 = v92[2];
  v61(v59, v60, v96);
  *((v95 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v95 + v60) & 0xFFFFFFFFFFFFFFF8);
  v62 = (v91 + v59) & v98;
  v63 = (v91 + v60) & v98;

  v61(v62, v63, v96);
  v64 = ((v95 + v63) & 0xFFFFFFFFFFFFFFF8);
  v65 = v64[1];
  v66 = ((v95 + v62) & 0xFFFFFFFFFFFFFFF8);
  *v66 = *v64;
  v66[1] = v65;

  v67 = v93 + 16;
LABEL_43:
  *&v28[v67] = *&v29[v67];

  v72 = ((v93 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v73 = &v28[v72];
  v74 = &v29[v72];
  v75 = *(v74 + 1);
  *v73 = *v74;
  *(v73 + 1) = v75;

  return v48;
}

void *initializeWithTake for MapAnimator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v52 = ~v9;
  v11 = v6 + v9 + 8;
  v45 = *(v8 + 48);
  v49 = v8;
  v50 = v7;
  if (v45(v11 & ~v9, 1, v7))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = *(v8 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v14);
  }

  else
  {
    (*(v8 + 32))(v10 & ~v9, v11 & ~v9, v7);
    (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
  }

  if (v12)
  {
    v15 = v13 + ((v9 + 16) & v52);
  }

  else
  {
    v15 = v13 + ((v9 + 16) & v52) + 1;
  }

  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v9 | 7;
  v20 = v9 | 7 | v18;
  v21 = v20 + v15;
  v51 = a1;
  v22 = ((a1 + v20 + v15) & ~v20);
  v23 = ((a2 + v21) & ~v20);
  if (v12 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v12;
  }

  v25 = *(*(v16 - 8) + 64);
  v26 = v25 + v18;
  v27 = v25 + v19;
  v28 = v13 + 7;
  v47 = ~v19;
  v48 = (v28 & 0xFFFFFFFFFFFFFFF8) + v9 + 8;
  v29 = (v28 + ((v48 + ((v25 + v19 + ((v25 + v18) & ~v18)) & ~v19)) & v52)) & 0xFFFFFFFFFFFFFFF8;
  if (*(v17 + 84) >= v24)
  {
    v30 = ~v18;
    v33 = v29 + 16;
    if (!(*(v17 + 48))(v23))
    {
LABEL_22:
      v46 = v29;
      v35 = *(v17 + 32);
      v35(v22, v23, v16);
      v36 = v30;
      v37 = &v22[v26] & v30;
      v38 = &v23[v26] & v36;
      v35(v37, v38, v16);
      v39 = (v27 + v37) & v47;
      v40 = (v27 + v38) & v47;
      v41 = *(v49 + 32);
      v41(v39, v40, v50);
      *((v28 + v39) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v40) & 0xFFFFFFFFFFFFFFF8);
      v42 = (v48 + v39) & v52;
      v43 = (v48 + v40) & v52;
      v41(v42, v43, v50);
      v29 = v46;
      *((v28 + v42) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v43) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_23;
    }
  }

  else
  {
    v30 = ~v18;
    v31 = (v27 + (&v23[v26] & ~v18)) & ~v19;
    if (v12 < 0x7FFFFFFF)
    {
      v34 = *((v28 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      v33 = v29 + 16;
      if (v34 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = v45(v31, v12, v50);
      v33 = v29 + 16;
      if (!v32)
      {
        goto LABEL_22;
      }
    }
  }

  memcpy(v22, v23, v33);
LABEL_23:
  *&v22[v33] = *&v23[v33];
  *&v22[((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 8] = *&v23[((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];
  return v51;
}

void *assignWithTake for MapAnimator(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = v5 & 0xFFFFFFFFFFFFFFF8;
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v6 + v10 + 8;
  v95 = ~v10;
  v12 = v10 + 8 + v7;
  v13 = *(v9 + 48);
  LODWORD(v6) = v13(v11 & ~v10, 1, v8);
  v84 = v13;
  v14 = v13(v12 & ~v10, 1, v8);
  v93 = v8;
  if (v6)
  {
    if (!v14)
    {
      (*(v9 + 32))(v11 & ~v10, v12 & ~v10, v8);
      (*(v9 + 56))(v11 & ~v10, 0, 1, v8);
      goto LABEL_12;
    }

    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v9 + 40))(v11 & ~v10, v12 & ~v10, v8);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11 & ~v10, v8);
    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy((v11 & ~v10), (v12 & ~v10), v17);
LABEL_12:
  v18 = *(v9 + 84);
  v19 = *(v9 + 64);
  if (v18)
  {
    v20 = v19 + ((v10 + 16) & v95);
  }

  else
  {
    v20 = v19 + ((v10 + 16) & v95) + 1;
  }

  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = v10 | 7;
  v25 = v10 | 7 | v23;
  v94 = a1;
  v26 = ((a1 + v25 + v20) & ~v25);
  v27 = (a2 + v25 + v20) & ~v25;
  v28 = *(v22 + 84);
  if (v18 <= 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = v18;
  }

  v30 = *(*(v21 - 8) + 64);
  v31 = ~v23;
  v32 = v30 + v23;
  v33 = (v30 + v23) & ~v23;
  v34 = ~v24;
  v35 = v30 + v24;
  v36 = v19 + 7;
  v92 = (v36 + (((v36 & 0xFFFFFFFFFFFFFFF8) + v10 + 8 + ((v30 + v24 + v33) & ~v24)) & v95)) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v36 & 0xFFFFFFFFFFFFFFF8) + v10 + 8;
  v88 = v30 + v24;
  v89 = ~v24;
  v86 = v21;
  v87 = *(v21 - 8);
  if (v28 < v29)
  {
    v37 = v27;
    v38 = (v35 + (&v26[v32] & v31)) & v34;
    if (v18 < 0x7FFFFFFF)
    {
      v55 = *((v36 + v38) & 0xFFFFFFFFFFFFFFF8);
      if (v55 >= 0xFFFFFFFF)
      {
        LODWORD(v55) = -1;
      }

      v46 = v55 + 1;
    }

    else
    {
      v39 = ~v24;
      v40 = v30 + v24;
      v41 = v32;
      v42 = v9;
      v43 = v36;
      v44 = v31;
      v45 = v84(v38, v18, v93);
      v31 = v44;
      v36 = v43;
      v9 = v42;
      v32 = v41;
      v35 = v40;
      v34 = v39;
      v46 = v45;
    }

    v56 = (v35 + (&v37[v32] & v31)) & v34;
    if (v46)
    {
      if (v18 < 0x7FFFFFFF)
      {
        v60 = *((v36 + v56) & 0xFFFFFFFFFFFFFFF8);
        if (v60 >= 0xFFFFFFFF)
        {
          LODWORD(v60) = -1;
        }

        v58 = v60 + 1;
      }

      else
      {
        v57 = v31;
        v58 = v84(v56, v18, v93);
        v31 = v57;
      }

      v54 = v94;
      if (!v58)
      {
        goto LABEL_36;
      }

LABEL_43:
      v70 = v92 + 16;
      memcpy(v26, v37, v92 + 16);
      goto LABEL_44;
    }

    if (v18 < 0x7FFFFFFF)
    {
      v71 = *((v36 + v56) & 0xFFFFFFFFFFFFFFF8);
      if (v71 >= 0xFFFFFFFF)
      {
        LODWORD(v71) = -1;
      }

      v53 = v71 + 1;
    }

    else
    {
      v59 = v31;
      v53 = v84(v56, v18, v93);
      v31 = v59;
    }

    v54 = v94;
LABEL_41:
    v72 = &v26[v32] & v31;
    if (!v53)
    {
      v76 = v87[5];
      v77 = v31;
      v76(v26, v37, v86);
      v78 = &v37[v32] & v77;
      v76(v72, v78, v86);
      v79 = (v88 + v72) & v89;
      v54 = v94;
      v80 = (v88 + v78) & v89;
      v81 = *(v9 + 40);
      v81(v79, v80, v93);
      *((v36 + v79) & 0xFFFFFFFFFFFFFFF8) = *((v36 + v80) & 0xFFFFFFFFFFFFFFF8);

      v82 = (v90 + v79) & v95;
      v83 = (v90 + v80) & v95;
      v81(v82, v83, v93);
      *((v36 + v82) & 0xFFFFFFFFFFFFFFF8) = *((v36 + v83) & 0xFFFFFFFFFFFFFFF8);

      v70 = v92 + 16;
      goto LABEL_44;
    }

    v73 = v87[1];
    v73(v26, v86);
    v73(v72, v86);
    v74 = *(v9 + 8);
    v74((v88 + v72) & v89, v93);

    v74((v90 + ((v88 + v72) & v89)) & v95, v93);

    goto LABEL_43;
  }

  v47 = *(v22 + 48);
  v48 = v21;
  v49 = v32;
  v50 = v9;
  v51 = v36;
  v52 = v31;
  v85 = v47(v26, v28, v21);
  v53 = v47(v27, v28, v48);
  v31 = v52;
  v36 = v51;
  v9 = v50;
  v32 = v49;
  v54 = v94;
  v37 = v27;
  if (!v85)
  {
    goto LABEL_41;
  }

  if (v53)
  {
    goto LABEL_43;
  }

LABEL_36:
  v61 = v87[4];
  v62 = v31;
  v61(v26, v37, v86);
  v63 = &v26[v32] & v62;
  v64 = &v37[v32] & v62;
  v61(v63, v64, v86);
  v65 = (v88 + v63) & v89;
  v54 = v94;
  v66 = (v88 + v64) & v89;
  v67 = *(v9 + 32);
  v67(v65, v66, v93);
  *((v36 + v65) & 0xFFFFFFFFFFFFFFF8) = *((v36 + v66) & 0xFFFFFFFFFFFFFFF8);
  v68 = (v90 + v65) & v95;
  v69 = (v90 + v66) & v95;
  v67(v68, v69, v93);
  *((v36 + v68) & 0xFFFFFFFFFFFFFFF8) = *((v36 + v69) & 0xFFFFFFFFFFFFFFF8);
  v70 = v92 + 16;
LABEL_44:
  *&v26[v70] = *&v37[v70];

  *&v26[((v92 + 23) & 0xFFFFFFFFFFFFFFF8) + 8] = *&v37[((v92 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return v54;
}

uint64_t getEnumTagSinglePayload for MapAnimator(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
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

  v11 = *(type metadata accessor for Date() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= v13)
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v14;
  }

  if (v8 > v15)
  {
    v15 = v8;
  }

  if (v15 - 1 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15 - 1;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 64);
  if (v8)
  {
    v19 = *(v6 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  v22 = v17 | 7;
  v23 = v17 | 7 | v20;
  v24 = v21 + v20;
  v25 = (v17 | 7) + v21;
  v26 = v18 + 7;
  v27 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + v17 + 8;
  v28 = v19 + ((v17 + 16) & ~v17) + v23;
  if (v16 >= a2)
  {
    goto LABEL_44;
  }

  v29 = (v28 & ~v23) + ((((v26 + ((v27 + ((v25 + (v24 & ~v20)) & ~v22)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  v30 = a2 - v16;
  v18 = v29 & 0xFFFFFFF8;
  if ((v29 & 0xFFFFFFF8) != 0)
  {
    v31 = 2;
  }

  else
  {
    v31 = v30 + 1;
  }

  if (v31 >= 0x10000)
  {
    v32 = 4;
  }

  else
  {
    v32 = 2;
  }

  if (v31 < 0x100)
  {
    v32 = 1;
  }

  if (v31 >= 2)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33 <= 1)
  {
    if (!v33)
    {
      goto LABEL_44;
    }

    v34 = *(a1 + v29);
    if (!v34)
    {
      goto LABEL_44;
    }

LABEL_41:
    v36 = v34 - 1;
    if (v18)
    {
      v36 = 0;
      v37 = *a1;
    }

    else
    {
      v37 = 0;
    }

    return v16 + (v37 | v36) + 1;
  }

  if (v33 == 2)
  {
    v34 = *(a1 + v29);
    if (v34)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v34 = *(a1 + v29);
    if (v34)
    {
      goto LABEL_41;
    }
  }

LABEL_44:
  if (v10 < v15 - 1)
  {
    v38 = (a1 + v28) & ~v23;
    if (v13 == v15)
    {
      v39 = (*(v12 + 48))(v38);
      goto LABEL_57;
    }

    v42 = (v25 + ((v24 + v38) & ~v20)) & ~v22;
    if (v14 == v15)
    {
      if (v8 < 0x7FFFFFFF)
      {
        v44 = *((v26 + v42) & 0xFFFFFFFFFFFFFFF8);
        if (v44 >= 0xFFFFFFFF)
        {
          LODWORD(v44) = -1;
        }

        v39 = v44 + 1;
      }

      else
      {
        v39 = (*(v7 + 48))(v42, v8, v5);
      }

      goto LABEL_57;
    }

    v43 = v27 + v42;
LABEL_56:
    v39 = (*(v7 + 48))(v43 & ~v17, v8, v5, v25, v24, v28, v18);
LABEL_57:
    if (v39 >= 2)
    {
      return v39 - 1;
    }

    else
    {
      return 0;
    }
  }

  v40 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v43 = v40 + v17 + 8;
    goto LABEL_56;
  }

  v41 = *v40;
  if (v41 >= 0xFFFFFFFF)
  {
    LODWORD(v41) = -1;
  }

  return (v41 + 1);
}

void storeEnumTagSinglePayload for MapAnimator(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v52 = *(a4 + 16);
  v7 = *(v52 - 8);
  v53 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
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

  v11 = 0;
  v12 = *(type metadata accessor for Date() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v8;
  }

  if (v15 <= v14)
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v15;
  }

  if (v8 > v16)
  {
    v16 = v8;
  }

  v17 = v16 - 1;
  if (v16 - 1 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v16 - 1;
  }

  v19 = *(v7 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = *(v7 + 64);
  if (v8)
  {
    v22 = *(v7 + 64);
  }

  else
  {
    v22 = v21 + 1;
  }

  v23 = *(v12 + 80);
  v24 = v19 | 7 | v23;
  v25 = *(v12 + 64);
  v26 = v25 + v23;
  v27 = (v19 | 7) + v25;
  v28 = v21 + 7;
  v29 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + v19 + 8;
  v30 = (v28 + ((v29 + ((v27 + ((v25 + v23) & ~v23)) & ~(v19 | 7))) & ~v19)) & 0xFFFFFFFFFFFFFFF8;
  v31 = v20 + v22;
  v32 = v20 + v22 + v24;
  v33 = (v32 & ~v24) + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v18 < a3)
  {
    if ((v32 & ~v24) + ((v30 + 23) & 0xFFFFFFF8) == -24)
    {
      v34 = a3 - v18 + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v11 = v35;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v18)
  {
    if ((v32 & ~v24) + ((v30 + 23) & 0xFFFFFFF8) == -24)
    {
      v36 = a2 - v18;
    }

    else
    {
      v36 = 1;
    }

    if ((v32 & ~v24) + ((v30 + 23) & 0xFFFFFFF8) != -24)
    {
      bzero(a1, v33);
      *a1 = ~v18 + a2;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *&a1[v33] = v36;
      }

      else
      {
        *&a1[v33] = v36;
      }
    }

    else if (v11)
    {
      a1[v33] = v36;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    *&a1[v33] = 0;
  }

  else if (v11)
  {
    a1[v33] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (!a2)
  {
    return;
  }

LABEL_51:
  v37 = ~v19;
  if (v10 >= v17)
  {
    if (v10 >= a2)
    {
      v45 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v46 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v46 = a2 - 1;
        }

        *v45 = v46;
        return;
      }

      v47 = v45 + v19 + 8;
      a1 = (v47 & v37);
      if (v9 >= a2)
      {
        v50 = *(v53 + 56);
        v43 = a2 + 1;
        v49 = v47 & v37;
LABEL_101:

        v50(v49, v43, v8, v52);
        return;
      }

      if (v22 <= 3)
      {
        v48 = ~(-1 << (8 * v22));
      }

      else
      {
        v48 = -1;
      }

      if (!v22)
      {
        return;
      }

      v39 = v48 & (~v9 + a2);
      if (v22 <= 3)
      {
        v41 = v22;
      }

      else
      {
        v41 = 4;
      }

      bzero(a1, v22);
      if (v41 <= 2)
      {
        if (v41 == 1)
        {
          goto LABEL_65;
        }

        goto LABEL_90;
      }
    }

    else
    {
      if (v31 <= 3)
      {
        v40 = ~(-1 << (8 * v31));
      }

      else
      {
        v40 = -1;
      }

      if (!v31)
      {
        return;
      }

      v39 = v40 & (~v10 + a2);
      if (v31 <= 3)
      {
        v41 = v31;
      }

      else
      {
        v41 = 4;
      }

      bzero(a1, v31);
      if (v41 <= 2)
      {
        if (v41 == 1)
        {
LABEL_65:
          *a1 = v39;
          return;
        }

LABEL_90:
        *a1 = v39;
        return;
      }
    }

    if (v41 == 3)
    {
      *a1 = v39;
      a1[2] = BYTE2(v39);
      return;
    }

    goto LABEL_93;
  }

  a1 = (&a1[v32] & ~v24);
  if (v17 < a2)
  {
    v38 = (v30 + 23) & 0xFFFFFFF8;
    if (v38 == -8)
    {
      return;
    }

    v39 = a2 - v16;
    bzero(a1, (v38 + 8));
LABEL_93:
    *a1 = v39;
    return;
  }

  v42 = a2 - v16;
  if (a2 < v16)
  {
    v43 = a2 + 1;
    if (v14 == v16)
    {
      v44 = *(v13 + 56);

      v44(a1, v43);
      return;
    }

    v49 = (v27 + (&a1[v26] & ~v23)) & ~(v19 | 7);
    if (v15 == v16)
    {
      if (v8 < 0x7FFFFFFF)
      {
        v51 = ((v28 + v49) & 0xFFFFFFFFFFFFFFF8);
        if ((v43 & 0x80000000) != 0)
        {
          *v51 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v51 = a2;
        }

        return;
      }

      v50 = *(v53 + 56);
    }

    else
    {
      v50 = *(v53 + 56);
      v49 = (v29 + v49) & v37;
    }

    goto LABEL_101;
  }

  if (v30 != -16)
  {
    bzero(a1, (v30 + 16));
    *a1 = v42;
  }
}

uint64_t type metadata completion function for MapAnimatorProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdapterState(255, *(a1 + 16), a3, a4);
  result = type metadata accessor for Binding();
  if (v5 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Binding();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MapAnimatorProxy(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v73 = *(a3 + 16);
  v9 = *(v73 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 84);
  v74 = v9;
  v12 = v10 | 7;
  v13 = v10 | v8;
  v14 = ((v10 & 0xF8 | v8 & 0xF8) ^ 0x1F8u) & (v13 + 16);
  v15 = *(v7 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= v15)
  {
    v17 = *(v7 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v9 + 84);
  }

  v19 = *(*(v6 - 8) + 64);
  v20 = *(*(v73 - 8) + 64);
  v21 = v20 + 7;
  v22 = ((v20 + 7 + ((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 + v10 + ((v12 + v19 + ((v19 + v8) & ~v8)) & ~v12)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11)
  {
    v23 = *(*(v73 - 8) + 64);
  }

  else
  {
    v23 = v20 + 1;
  }

  v24 = *a2;
  *a1 = *a2;
  if (v13 > 7 || ((v10 | v8) & 0x100000) != 0 || ((-17 - v10) | v10) - v23 - ((v22 + v14 + v12) & ~v12) < 0xFFFFFFFFFFFFFFE7)
  {
    v27 = (v24 + v14);

    return v27;
  }

  v65 = v7;
  v66 = v19 + v8;
  __n = ((v20 + 7 + ((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 + v10 + ((v12 + v19 + (v66 & ~v8)) & ~v12)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v70 = v22 + v14;
  v63 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v64 = v23;
  v28 = ~v8;
  v71 = a2;
  v72 = a1;
  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  v67 = v6;
  __dst = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;

  if (v15 == v18)
  {
    v32 = v31;
    v33 = (*(v65 + 48))(v31, v15, v67);
    v27 = v72;
    v34 = v73;
    v35 = v74;
    v36 = __n;
    if (!v33)
    {
      goto LABEL_34;
    }

LABEL_30:
    memcpy(__dst, v32, v36);
    goto LABEL_35;
  }

  v32 = v31;
  v37 = (v19 + ((v66 + v31) & v28) + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v73;
  if (v16 == v18)
  {
    v38 = v11 >= 0x7FFFFFFF;
  }

  else
  {
    v37 += v63;
    v38 = v11 >= v17;
  }

  v27 = v72;
  v35 = v74;
  if (!v38)
  {
    v40 = *((v21 + v37) & 0xFFFFFFFFFFFFFFF8);
    if (v40 >= 0xFFFFFFFF)
    {
      LODWORD(v40) = -1;
    }

    v36 = __n;
    if (v40 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v39 = (*(v74 + 48))(v37, v11, v73);
  v36 = __n;
  if (v39)
  {
    goto LABEL_30;
  }

LABEL_34:
  v41 = *(v65 + 16);
  v41(__dst, v32, v67);
  v42 = (__dst + v66) & v28;
  v43 = &v32[v66];
  v44 = v34;
  v45 = v43 & v28;
  v35 = v74;
  v41(v42, (v43 & v28), v67);
  v46 = v19 + 7;
  v47 = (v19 + 7 + v42) & 0xFFFFFFFFFFFFFFF8;
  v48 = v46 + v45;
  v34 = v44;
  v49 = v48 & 0xFFFFFFFFFFFFFFF8;
  v50 = *(v74 + 16);
  v50(v47, v48 & 0xFFFFFFFFFFFFFFF8, v44);
  *((v21 + v47) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v49) & 0xFFFFFFFFFFFFFFF8);
  v51 = v47 + v63;
  v52 = v49 + v63;

  v50(v51, v52, v44);
  v53 = ((v21 + v52) & 0xFFFFFFFFFFFFFFF8);
  v54 = v53[1];
  v55 = ((v21 + v51) & 0xFFFFFFFFFFFFFFF8);
  *v55 = *v53;
  v55[1] = v54;

LABEL_35:
  v56 = (v71 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = *v56;
  v56 += 15;
  v58 = (v27 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v58 = v57;
  v58 += 15;
  v59 = ((v56 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v58 & 0xFFFFFFFFFFFFFFF8) = *(v56 & 0xFFFFFFFFFFFFFFF8);
  v60 = ((v58 & 0xFFFFFFFFFFFFFFF8) + 8);
  v61 = *(v35 + 48);

  if (v61(v59, 1, v34))
  {
    memcpy(v60, v59, v64);
  }

  else
  {
    (*(v35 + 16))(v60, v59, v34);
    (*(v35 + 56))(v60, 0, 1, v34);
  }

  return v27;
}

uint64_t destroy for MapAnimatorProxy(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  v4 = v3 & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(a2 + 16);
  v8 = *(v6 + 80);
  v9 = *(v7 - 8);
  v10 = *(v9 + 80);
  v39 = v10 | v8;
  v11 = v10 | v8 | 7;
  v12 = v10 | 7;
  v13 = (v4 + v11 + 8) & ~v11;
  v14 = *(v6 + 84);
  v15 = *(v9 + 84);
  v16 = *(v6 + 64);
  v17 = *(v9 + 64);
  if (v15 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(v9 + 84);
  }

  v19 = v16 + v8;
  v20 = v12 + v16;
  v36 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8;
  v37 = v5;
  v21 = v17 + 7 + ((v36 + ((v12 + v16 + ((v16 + v8) & ~v8)) & ~v12)) & ~v10);
  v43 = *(v7 - 8);
  v41 = ~v12;
  v35 = ~v8;
  if (v14 >= v18)
  {
    v23 = (*(v6 + 48))(v13, v14, v5);
  }

  else
  {
    v22 = (v20 + ((v19 + v13) & ~v8)) & ~v12;
    if (v15 < 0x7FFFFFFF)
    {
      v24 = *((v17 + 7 + v22) & 0xFFFFFFFFFFFFFFF8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      v23 = v24 + 1;
    }

    else
    {
      v23 = (*(v9 + 48))(v22);
    }
  }

  v25 = ~v11;
  v42 = ~v10;
  v26 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (!v23)
  {
    v38 = v7;
    v27 = *(v6 + 8);
    v27(v13, v37);
    v28 = (v19 + v13) & v35;
    v27(v28, v37);
    v29 = (v20 + v28) & v41;
    v30 = *(v43 + 8);
    v30(v29, v38);

    v30((v36 + v29) & v42, v38);
    v7 = v38;

    v26 = v21 & 0xFFFFFFFFFFFFFFF8;
  }

  v31 = ((a1 + v12 + ((v39 + 16) & v25) + v26 + 16) & v41) + 15;

  v32 = v10 + (v31 & 0xFFFFFFFFFFFFFFF8) + 8;
  result = (*(v43 + 48))(v32 & v42, 1, v7);
  if (!result)
  {
    v34 = *(v43 + 8);

    return v34(v32 & v42, v7);
  }

  return result;
}

uint64_t *initializeWithCopy for MapAnimatorProxy(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v65 = *(a3 + 16);
  v9 = *(v65 - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7;
  v12 = (v10 | v8) + 8;
  v61 = v10 | v8;
  v13 = (v10 | v8) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  __dst = ((v4 + v12) & v13);
  v60 = v13;
  v14 = ((v5 + v12) & v13);
  v15 = *(v7 + 84);
  v64 = v9;
  v16 = *(v9 + 84);
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v9 + 84);
  }

  v18 = *(*(v6 - 8) + 64);
  v19 = ~v8;
  v20 = v18 + v8;
  v21 = ~v11;
  v22 = v11 + v18;
  v59 = v10 | 7;
  v55 = *(*(v65 - 8) + 64);
  v53 = ((v55 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8;
  v66 = *(v9 + 80);
  v54 = v55 + 7;
  v57 = (v55 + 7 + ((v53 + ((v11 + v18 + ((v18 + v8) & ~v8)) & ~v11)) & ~v10)) & 0xFFFFFFFFFFFFFFF8;

  v56 = v16;
  v52 = v20;
  if (v15 >= v17)
  {
    v25 = (*(v7 + 48))(v14, v15, v6);
    v24 = v21;
  }

  else
  {
    v23 = (v22 + ((v14 + v20) & v19)) & v21;
    v24 = v21;
    if (v16 < 0x7FFFFFFF)
    {
      v26 = *((v54 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      v25 = v26 + 1;
    }

    else
    {
      v25 = (*(v64 + 48))(v23, v16, v65);
    }
  }

  v27 = v66;
  v28 = v57 + 16;
  v29 = ~v66;
  if (v25)
  {
    memcpy(__dst, v14, v57 + 16);
    v31 = v64;
    v30 = v65;
  }

  else
  {
    v32 = *(v7 + 16);
    v32(__dst, v14, v6);
    v33 = (__dst + v52) & v19;
    v32(v33, ((v14 + v52) & v19), v6);
    v34 = (v22 + v33) & v24;
    v35 = (v22 + ((v14 + v52) & v19)) & v24;
    v31 = v64;
    v30 = v65;
    v36 = *(v64 + 16);
    v36(v34, v35, v65);
    *((v54 + v34) & 0xFFFFFFFFFFFFFFF8) = *((v54 + v35) & 0xFFFFFFFFFFFFFFF8);
    v37 = (v53 + v34) & v29;
    v38 = (v53 + v35) & v29;

    v36(v37, v38, v65);
    v39 = v54 + v37;
    v27 = v66;
    v40 = v54 + v38;
    v28 = v57 + 16;
    v40 &= 0xFFFFFFFFFFFFFFF8;
    v41 = *(v40 + 8);
    v39 &= 0xFFFFFFFFFFFFFFF8;
    *v39 = *v40;
    *(v39 + 8) = v41;
  }

  v42 = v28 + ((v61 + 16) & v60);
  v43 = ((a1 + v59 + v42) & v24);
  v44 = ((a2 + v59 + v42) & v24);
  *v43 = *v44;
  v45 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v47 = v45 + v27 + 8;
  v48 = v46 + v27 + 8;
  v49 = *(v31 + 48);

  if (v49(v48 & v29, 1, v30))
  {
    if (v56)
    {
      v50 = v55;
    }

    else
    {
      v50 = v55 + 1;
    }

    memcpy((v47 & v29), (v48 & v29), v50);
  }

  else
  {
    (*(v31 + 16))(v47 & v29, v48 & v29, v30);
    (*(v31 + 56))(v47 & v29, 0, 1, v30);
  }

  return a1;
}

uint64_t *assignWithCopy for MapAnimatorProxy(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2 + 15;
  *a1 = *a2;
  v5 = a1 + 15;

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = v4 & 0xFFFFFFFFFFFFFFF8;
  *(v5 & 0xFFFFFFFFFFFFFFF8) = *(v4 & 0xFFFFFFFFFFFFFFF8);

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v99 = *(a3 + 16);
  v10 = *(v9 + 80);
  v11 = *(v99 - 8);
  v12 = *(v11 + 80);
  v13 = v12 | 7;
  v14 = (v12 | v10) + 8;
  v93 = v12 | v10;
  v15 = (v12 | v10) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v16 = ((v14 + v6) & v15);
  v92 = v15;
  v17 = ((v14 + v7) & v15);
  v18 = *(v9 + 84);
  v19 = *(v11 + 84);
  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = *(v11 + 84);
  }

  v21 = *(*(v8 - 8) + 64);
  v22 = ~v10;
  v23 = v21 + v10;
  v24 = (v21 + v10) & ~v10;
  v25 = ~v13;
  v26 = v13 + v21;
  v94 = v12 | 7;
  v86 = *(*(v99 - 8) + 64);
  v27 = v86 + 7;
  v85 = ((v86 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  __n = ((v86 + 7 + ((v85 + ((v13 + v21 + v24) & ~v13)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v90 = *(v11 + 80);
  v97 = *(v99 - 8);
  v96 = ~v12;
  v87 = *(v11 + 84);
  v91 = ~v13;
  v88 = v16;
  v84 = v13 + v21;
  if (v18 >= v20)
  {
    v34 = v22;
    v35 = *(v9 + 48);
    v36 = v35(v16, v18, v8);
    v37 = v35(v17, v18, v8);
    v22 = v34;
    if (v36)
    {
      if (!v37)
      {
LABEL_22:
        v45 = *(v9 + 16);
        v45(v88, v17, v8);
        v46 = v22;
        v47 = (v88 + v23) & v22;
        v48 = (v17 + v23) & v46;
        v45(v47, v48, v8);
        v41 = v91;
        v49 = (v84 + v47) & v91;
        v50 = (v84 + v48) & v91;
        v39 = v97;
        v51 = v97[2];
        v51(v49, v50, v99);
        *((v27 + v49) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v50) & 0xFFFFFFFFFFFFFFF8);
        v40 = v96;
        v52 = (v85 + v49) & v96;
        v53 = (v85 + v50) & v96;

        v51(v52, v53, v99);
        v54 = ((v27 + v53) & 0xFFFFFFFFFFFFFFF8);
        v55 = v54[1];
        v56 = ((v27 + v52) & 0xFFFFFFFFFFFFFFF8);
        *v56 = *v54;
        v56[1] = v55;

        goto LABEL_29;
      }

LABEL_9:
      v38 = __n;
      memcpy(v88, v17, __n);
      v39 = v97;
      v40 = v96;
      v41 = v91;
      goto LABEL_30;
    }
  }

  else
  {
    v28 = (v26 + ((v16 + v23) & v22)) & v25;
    if (v19 < 0x7FFFFFFF)
    {
      v42 = *((v27 + v28) & 0xFFFFFFFFFFFFFFF8);
      if (v42 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      v33 = v42 + 1;
    }

    else
    {
      v29 = v8;
      v30 = v25;
      v31 = v26;
      v32 = (*(v11 + 48))(v28, v19, v99);
      v26 = v31;
      v27 = v86 + 7;
      v25 = v30;
      v8 = v29;
      v33 = v32;
    }

    v43 = (v26 + ((v17 + v23) & v22)) & v25;
    if (v33)
    {
      if (v19 < 0x7FFFFFFF)
      {
        v44 = *((v27 + v43) & 0xFFFFFFFFFFFFFFF8);
        if (v44 >= 0xFFFFFFFF)
        {
          LODWORD(v44) = -1;
        }

        if (v44 == -1)
        {
          goto LABEL_22;
        }
      }

      else if (!(*(v11 + 48))(v43, v19, v99))
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if (v19 < 0x7FFFFFFF)
    {
      v57 = *((v27 + v43) & 0xFFFFFFFFFFFFFFF8);
      if (v57 >= 0xFFFFFFFF)
      {
        LODWORD(v57) = -1;
      }

      v37 = v57 + 1;
    }

    else
    {
      v37 = (*(v11 + 48))(v43, v19, v99);
    }
  }

  v58 = (v88 + v23) & v22;
  if (v37)
  {
    v59 = *(v9 + 8);
    v59(v88, v8);
    v59(v58, v8);
    v41 = v91;
    v60 = (v84 + v58) & v91;
    v39 = v97;
    v61 = v97[1];
    v61(v60, v99);

    v40 = v96;
    v61((v85 + v60) & v96, v99);

    v38 = __n;
    memcpy(v88, v17, __n);
    goto LABEL_30;
  }

  v62 = *(v9 + 24);
  v62(v88, v17, v8);
  v63 = (v17 + v23) & v22;
  v62(v58, v63, v8);
  v41 = v91;
  v64 = (v84 + v58) & v91;
  v65 = (v84 + v63) & v91;
  v39 = v97;
  v66 = v97[3];
  v66(v64, v65, v99);
  *((v27 + v64) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v65) & 0xFFFFFFFFFFFFFFF8);

  v40 = v96;
  v67 = (v85 + v64) & v96;
  v68 = (v85 + v65) & v96;
  v66(v67, v68, v99);
  v69 = ((v27 + v67) & 0xFFFFFFFFFFFFFFF8);
  v70 = ((v27 + v68) & 0xFFFFFFFFFFFFFFF8);
  v71 = v70[1];
  *v69 = *v70;
  v69[1] = v71;

LABEL_29:
  v38 = __n;
LABEL_30:
  v72 = v38 + ((v93 + 16) & v92);
  v73 = ((a1 + v94 + v72) & v41);
  v74 = a2 + v94 + v72;
  v75 = (v74 & v41) + 15;
  *v73 = *(v74 & v41);

  v76 = ((v73 + 15) & 0xFFFFFFFFFFFFFFF8);
  v75 &= 0xFFFFFFFFFFFFFFF8;
  *v76 = *v75;

  v77 = v76 + v90 + 8;
  v78 = v90 + 8 + v75;
  v79 = v39[6];
  v80 = v79(v77 & v40, 1, v99);
  v81 = v79(v78 & v40, 1, v99);
  if (v80)
  {
    if (!v81)
    {
      (v39[2])(v77 & v40, v78 & v40, v99);
      (v39[7])(v77 & v40, 0, 1, v99);
      return a1;
    }
  }

  else
  {
    if (!v81)
    {
      (v39[3])(v77 & v40, v78 & v40, v99);
      return a1;
    }

    (v39[1])(v77 & v40, v99);
  }

  if (v87)
  {
    v82 = v86;
  }

  else
  {
    v82 = v86 + 1;
  }

  memcpy((v77 & v40), (v78 & v40), v82);
  return a1;
}

void *initializeWithTake for MapAnimatorProxy(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v62 = *(a3 + 16);
  v9 = *(v62 - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7;
  v12 = (v10 | v8) + 8;
  v58 = v10 | v8;
  v13 = (v10 | v8) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v4 + v12) & v13);
  v15 = v5 + v12;
  v16 = v13;
  v17 = (v15 & v13);
  v18 = *(v9 + 84);
  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = *(v9 + 84);
  }

  v20 = *(*(v6 - 8) + 64);
  v21 = v20 + v8;
  v56 = v10 | 7;
  v54 = *(*(v62 - 8) + 64);
  v22 = v54 + 7;
  v52 = v11 + v20;
  v53 = ((v54 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8;
  v23 = (v54 + 7 + ((v53 + ((v11 + v20 + ((v20 + v8) & ~v8)) & ~v11)) & ~v10)) & 0xFFFFFFFFFFFFFFF8;
  v60 = *(v62 - 8);
  v55 = *(v9 + 84);
  v57 = ~v11;
  v51 = ~v8;
  if (*(v7 + 84) >= v19)
  {
    v25 = (*(v7 + 48))(v17);
  }

  else
  {
    v24 = (v11 + v20 + ((v17 + v21) & ~v8)) & ~v11;
    if (v18 < 0x7FFFFFFF)
    {
      v26 = *((v22 + v24) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      v25 = v26 + 1;
    }

    else
    {
      v25 = (*(v9 + 48))(v24, v18, v62);
    }
  }

  v27 = v23 + 16;
  v28 = ~v10;
  if (v25)
  {
    memcpy(v14, v17, v27);
    v29 = v62;
    v30 = v60;
    v31 = v57;
  }

  else
  {
    v49 = v27;
    v50 = v16;
    v32 = *(v7 + 32);
    v32(v14, v17, v6);
    v33 = (v14 + v21) & v51;
    v34 = (v17 + v21) & v51;
    v32(v33, v34, v6);
    v31 = v57;
    v35 = (v52 + v33) & v57;
    v36 = (v52 + v34) & v57;
    v30 = v60;
    v37 = *(v60 + 32);
    v29 = v62;
    v37(v35, v36, v62);
    *((v22 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v36) & 0xFFFFFFFFFFFFFFF8);
    v38 = (v53 + v35) & v28;
    v39 = (v53 + v36) & v28;
    v37(v38, v39, v62);
    v27 = v49;
    v16 = v50;
    *((v22 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v39) & 0xFFFFFFFFFFFFFFF8);
  }

  v40 = v27 + ((v58 + 16) & v16);
  v41 = ((a1 + v56 + v40) & v31);
  v42 = ((a2 + v56 + v40) & v31);
  *v41 = *v42;
  v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
  v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v43 = *v44;
  v45 = v43 + v10 + 8;
  v46 = v44 + v10 + 8;
  if ((*(v30 + 48))(v46 & v28, 1, v29))
  {
    if (v55)
    {
      v47 = v54;
    }

    else
    {
      v47 = v54 + 1;
    }

    memcpy((v45 & v28), (v46 & v28), v47);
  }

  else
  {
    (*(v30 + 32))(v45 & v28, v46 & v28, v29);
    (*(v30 + 56))(v45 & v28, 0, 1, v29);
  }

  return a1;
}

void *assignWithTake for MapAnimatorProxy(void *a1, void *a2, uint64_t a3)
{
  v4 = a2 + 15;
  *a1 = *a2;
  v5 = a1 + 15;

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  *(v5 & 0xFFFFFFFFFFFFFFF8) = *(v4 & 0xFFFFFFFFFFFFFFF8);

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v108 = *(a3 + 16);
  v9 = *(v8 + 80);
  v10 = *(v108 - 8);
  v11 = *(v10 + 80);
  v12 = v11 | 7;
  v13 = (v11 | v9) + 8;
  v102 = v11 | v9;
  v14 = (v11 | v9) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 + (v5 & 0xFFFFFFFFFFFFFFF8)) & v14);
  v101 = v14;
  v16 = ((v13 + v6) & v14);
  v17 = *(v8 + 84);
  v18 = *(v10 + 84);
  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = *(v10 + 84);
  }

  v20 = *(*(v7 - 8) + 64);
  v21 = ~v9;
  v22 = v20 + v9;
  v23 = (v20 + v9) & ~v9;
  v24 = ~v12;
  v25 = v12 + v20;
  v103 = v11 | 7;
  v95 = *(*(v108 - 8) + 64);
  v26 = v95 + 7;
  v94 = ((v95 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v97 = *(v10 + 80);
  v99 = ((v95 + 7 + ((v94 + ((v12 + v20 + v23) & ~v12)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v106 = *(v108 - 8);
  v105 = ~v11;
  v96 = *(v10 + 84);
  v100 = ~v12;
  v92 = v12 + v20;
  v93 = v7;
  v98 = v16;
  v91 = *(v7 - 8);
  if (v17 >= v19)
  {
    v33 = *(v8 + 48);
    v34 = v15;
    v35 = v15;
    v36 = v7;
    v37 = v22;
    v38 = v21;
    v39 = v33(v34, v17);
    v40 = v36;
    v15 = v35;
    v26 = v95 + 7;
    v41 = (v33)(v16, v17, v40);
    v21 = v38;
    v22 = v37;
    if (v39)
    {
      if (!v41)
      {
LABEL_22:
        v54 = v91[4];
        v55 = v22;
        v56 = v21;
        v54(v15, v16, v93);
        v57 = (v15 + v55) & v56;
        v58 = (v16 + v55) & v56;
        v54(v57, v58, v93);
        v45 = v100;
        v59 = (v92 + v57) & v100;
        v60 = (v92 + v58) & v100;
        v43 = v106;
        v61 = v106[4];
        v61(v59, v60, v108);
        *((v26 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v60) & 0xFFFFFFFFFFFFFFF8);
        v44 = v105;
        v62 = (v94 + v59) & v105;
        v63 = (v94 + v60) & v105;
        v61(v62, v63, v108);
        *((v26 + v62) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v63) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_29;
      }

LABEL_9:
      v42 = v99;
      memcpy(v15, v16, v99);
      v43 = v106;
      v44 = v105;
      v45 = v100;
      goto LABEL_30;
    }
  }

  else
  {
    v27 = (v25 + ((v15 + v22) & v21)) & v24;
    if (v18 < 0x7FFFFFFF)
    {
      v46 = *((v26 + v27) & 0xFFFFFFFFFFFFFFF8);
      if (v46 >= 0xFFFFFFFF)
      {
        LODWORD(v46) = -1;
      }

      v32 = v46 + 1;
    }

    else
    {
      v28 = v24;
      v29 = v22;
      v30 = v21;
      v31 = (*(v10 + 48))(v27, v18, v108);
      v21 = v30;
      v22 = v29;
      v24 = v28;
      v32 = v31;
    }

    v47 = (v25 + ((v16 + v22) & v21)) & v24;
    if (v32)
    {
      if (v18 < 0x7FFFFFFF)
      {
        v53 = *((v26 + v47) & 0xFFFFFFFFFFFFFFF8);
        if (v53 >= 0xFFFFFFFF)
        {
          LODWORD(v53) = -1;
        }

        if (v53 == -1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v48 = *(v10 + 48);
        v49 = v21;
        v50 = v48(v47, v18, v108);
        v21 = v49;
        if (!v50)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_9;
    }

    if (v18 < 0x7FFFFFFF)
    {
      v64 = *((v26 + v47) & 0xFFFFFFFFFFFFFFF8);
      if (v64 >= 0xFFFFFFFF)
      {
        LODWORD(v64) = -1;
      }

      v41 = v64 + 1;
    }

    else
    {
      v51 = *(v10 + 48);
      v52 = v21;
      v41 = v51(v47, v18, v108);
      v21 = v52;
    }
  }

  v65 = (v15 + v22) & v21;
  if (v41)
  {
    v66 = v91[1];
    v67 = v15;
    v66(v15, v93);
    v66(v65, v93);
    v45 = v100;
    v68 = (v92 + v65) & v100;
    v43 = v106;
    v69 = v106[1];
    v69(v68, v108);

    v44 = v105;
    v69((v94 + v68) & v105, v108);

    v42 = v99;
    memcpy(v67, v98, v99);
    goto LABEL_30;
  }

  v70 = v91[5];
  v71 = v22;
  v72 = v21;
  v70(v15, v16, v93);
  v73 = (v16 + v71) & v72;
  v70(v65, v73, v93);
  v45 = v100;
  v74 = (v92 + v65) & v100;
  v75 = (v92 + v73) & v100;
  v43 = v106;
  v76 = v106[5];
  v76(v74, v75, v108);
  *((v26 + v74) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v75) & 0xFFFFFFFFFFFFFFF8);

  v44 = v105;
  v77 = (v94 + v74) & v105;
  v78 = (v94 + v75) & v105;
  v76(v77, v78, v108);
  *((v26 + v77) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v78) & 0xFFFFFFFFFFFFFFF8);

LABEL_29:
  v42 = v99;
LABEL_30:
  v79 = v42 + ((v102 + 16) & v101);
  v80 = ((a1 + v103 + v79) & v45);
  v81 = ((a2 + v103 + v79) & v45);
  *v80 = *v81;

  v82 = ((v80 + 15) & 0xFFFFFFFFFFFFFFF8);
  v83 = ((v81 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v82 = *v83;

  v84 = v82 + v97 + 8;
  v85 = v83 + v97 + 8;
  v86 = v43[6];
  v87 = v86(v84 & v44, 1, v108);
  v88 = v86(v85 & v44, 1, v108);
  if (v87)
  {
    if (!v88)
    {
      (v43[4])(v84 & v44, v85 & v44, v108);
      (v43[7])(v84 & v44, 0, 1, v108);
      return a1;
    }
  }

  else
  {
    if (!v88)
    {
      (v43[5])(v84 & v44, v85 & v44, v108);
      return a1;
    }

    (v43[1])(v84 & v44, v108);
  }

  if (v96)
  {
    v89 = v95;
  }

  else
  {
    v89 = v95 + 1;
  }

  memcpy((v84 & v44), (v85 & v44), v89);
  return a1;
}

uint64_t getEnumTagSinglePayload for MapAnimatorProxy(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v7 + 84);
  v10 = v8;
  v11 = *(v8 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= v9)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v11 > v13)
  {
    v13 = *(v8 + 84);
  }

  if (v13 - 1 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13 - 1;
  }

  if (v11)
  {
    v15 = v11 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v7 + 80);
  v19 = *(v8 + 80);
  v20 = *(*(v6 - 8) + 64);
  v21 = *(v8 + 64);
  if (v11)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v19 | 7;
  v24 = v19 | v18 | 7;
  v25 = v20 + v18;
  v26 = (v19 | 7) + v20;
  v27 = (v26 + ((v20 + v18) & ~v18)) & ~(v19 | 7);
  v28 = v21 + 7;
  v29 = (v28 & 0xFFFFFFFFFFFFFFF8) + v19 + 8;
  v30 = (((v19 | v18) + 16) & ~v24) + (v19 | 7) + ((v28 + ((v29 + v27) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v31 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_48;
  }

  v32 = v22 + ((v19 + 16) & ~v19) + (v30 & ~v23);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_27;
  }

  v36 = ((v31 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v36))
  {
    v34 = *(a1 + v32);
    if (v34)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v36 <= 0xFF)
    {
      if (v36 < 2)
      {
        goto LABEL_48;
      }

LABEL_27:
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_48;
      }

LABEL_35:
      v37 = (v34 - 1) << v33;
      if (v32 > 3)
      {
        v37 = 0;
      }

      if (v32)
      {
        if (v32 <= 3)
        {
          v38 = v32;
        }

        else
        {
          v38 = 4;
        }

        if (v38 > 2)
        {
          if (v38 == 3)
          {
            v39 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v39 = *a1;
          }
        }

        else if (v38 == 1)
        {
          v39 = *a1;
        }

        else
        {
          v39 = *a1;
        }
      }

      else
      {
        v39 = 0;
      }

      return v17 + (v39 | v37) + 1;
    }

    v34 = *(a1 + v32);
    if (*(a1 + v32))
    {
      goto LABEL_35;
    }
  }

LABEL_48:
  v40 = ~v23;
  if (v15 > v14)
  {
    v41 = v19 + ((((a1 + v30) & v40) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    goto LABEL_50;
  }

  v43 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (((v13 - 1) & 0x80000000) != 0)
  {
    v45 = (v43 + v24 + 8) & ~v24;
    if (v9 == v13)
    {
      v42 = (*(v7 + 48))(v45, v9, v6);
LABEL_51:
      if (v42 >= 2)
      {
        return v42 - 1;
      }

      else
      {
        return 0;
      }
    }

    v46 = (v26 + ((v25 + v45) & ~v18)) & v40;
    if (v12 == v13)
    {
      if (v11 < 0x7FFFFFFF)
      {
        v47 = *((v28 + v46) & 0xFFFFFFFFFFFFFFF8);
        if (v47 >= 0xFFFFFFFF)
        {
          LODWORD(v47) = -1;
        }

        v42 = v47 + 1;
      }

      else
      {
        v42 = (*(v10 + 48))(v46);
      }

      goto LABEL_51;
    }

    v41 = v29 + v46;
LABEL_50:
    v42 = (*(v10 + 48))(v41 & ~v19);
    goto LABEL_51;
  }

  v44 = *v43;
  if (*v43 >= 0xFFFFFFFF)
  {
    LODWORD(v44) = -1;
  }

  return (v44 + 1);
}

void storeEnumTagSinglePayload for MapAnimatorProxy(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = 0;
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  v64 = v7;
  v65 = *(a4 + 16);
  v11 = *(v65 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v11 + 80);
  v15 = *(v9 + 64);
  v16 = *(v11 + 64);
  if (v12 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v11 + 84);
  }

  if (v17 <= v10)
  {
    v18 = *(v9 + 84);
  }

  else
  {
    v18 = v17;
  }

  if (v12 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(v11 + 84);
  }

  v20 = v19 - 1;
  if (v19 - 1 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v19 - 1;
  }

  if (v12)
  {
    v22 = v12 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v23;
  }

  v25 = v14 | v13 | 7;
  v26 = v15 + v13;
  v27 = (v14 | 7) + v15;
  v28 = v16 + 7;
  v29 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8;
  v30 = ((v16 + 7 + ((v29 + ((v27 + ((v15 + v13) & ~v13)) & ~(v14 | 7))) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v31 = v30 + (((v14 | v13) + 16) & ~v25);
  v32 = v31 + (v14 | 7);
  v33 = (v14 + 16) & ~v14;
  if (v12)
  {
    v34 = *(*(v65 - 8) + 64);
  }

  else
  {
    v34 = v16 + 1;
  }

  v35 = v33 + v34;
  v36 = (v32 & ~(v14 | 7)) + v33 + v34;
  v37 = a3 >= v24;
  v38 = a3 - v24;
  if (v38 == 0 || !v37)
  {
    goto LABEL_40;
  }

  if (v36 > 3)
  {
    v8 = 1;
    if (v24 < a2)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v39 = ((v38 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
  if (!HIWORD(v39))
  {
    if (v39 < 0x100)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    if (v39 >= 2)
    {
      v8 = v40;
    }

    else
    {
      v8 = 0;
    }

LABEL_40:
    if (v24 < a2)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v8 = 4;
  if (v24 < a2)
  {
LABEL_41:
    v41 = ~v24 + a2;
    if (v36 >= 4)
    {
      bzero(a1, v36);
      *a1 = v41;
      v42 = 1;
      if (v8 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_91;
    }

    v42 = (v41 >> (8 * v36)) + 1;
    if (v36)
    {
      v49 = v41 & ~(-1 << (8 * v36));
      bzero(a1, v36);
      if (v36 != 3)
      {
        if (v36 == 2)
        {
          *a1 = v49;
          if (v8 > 1)
          {
            goto LABEL_43;
          }
        }

        else
        {
          *a1 = v41;
          if (v8 > 1)
          {
LABEL_43:
            if (v8 == 2)
            {
              *&a1[v36] = v42;
            }

            else
            {
              *&a1[v36] = v42;
            }

            return;
          }
        }

LABEL_91:
        if (v8)
        {
          a1[v36] = v42;
        }

        return;
      }

      *a1 = v49;
      a1[2] = BYTE2(v49);
    }

    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_91;
  }

LABEL_29:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v36] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v36] = 0;
  }

  else if (v8)
  {
    a1[v36] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  v43 = ~(v14 | 7);
  v44 = ~v14;
  if (v22 <= v21)
  {
    if (v21 >= a2)
    {
      v55 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v20 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v56 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v56 = a2 - 1;
        }

        *v55 = v56;
        return;
      }

      v51 = ((v55 + v25 + 8) & ~v25);
      if (v20 >= a2)
      {
        v60 = a2 - v19;
        if (a2 >= v19)
        {
          if (v30)
          {
            bzero(((v55 + v25 + 8) & ~v25), v30);
            *v51 = v60;
          }

          return;
        }

        v58 = a2 + 1;
        if (v10 == v19)
        {
          v61 = *(v9 + 56);

          v61((v55 + v25 + 8) & ~v25, v58, v10, v64);
          return;
        }

        v62 = (v27 + ((v51 + v26) & ~v13)) & v43;
        if (v17 == v19)
        {
          if (v12 < 0x7FFFFFFF)
          {
            v63 = ((v28 + v62) & 0xFFFFFFFFFFFFFFF8);
            if ((v58 & 0x80000000) != 0)
            {
              *v63 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v63 = a2;
            }

            return;
          }

          v57 = *(v11 + 56);
          v59 = (v27 + ((v51 + v26) & ~v13)) & v43;
        }

        else
        {
          v57 = *(v11 + 56);
          v59 = (v29 + v62) & v44;
        }

LABEL_97:

        v57(v59, v58);
        return;
      }

      if (!v30)
      {
        return;
      }

      v50 = a2 - v19;
      v52 = ((v55 + v25 + 8) & ~v25);
    }

    else
    {
      if (!v31)
      {
        return;
      }

      v50 = ~v21 + a2;
      v51 = a1;
      v52 = a1;
      v30 += ((v14 | v13) + 16) & ~v25;
    }

    bzero(v52, v30);
    *v51 = v50;
    return;
  }

  v45 = (&a1[v32] & v43);
  if (v23 < a2)
  {
    if (v35 <= 3)
    {
      v46 = ~(-1 << (8 * v35));
    }

    else
    {
      v46 = -1;
    }

    if (v35)
    {
      v47 = v46 & (~v23 + a2);
      if (v35 <= 3)
      {
        v48 = v35;
      }

      else
      {
        v48 = 4;
      }

      bzero(v45, v35);
      if (v48 <= 2)
      {
        if (v48 == 1)
        {
LABEL_59:
          *v45 = v47;
          return;
        }

LABEL_84:
        *v45 = v47;
        return;
      }

      goto LABEL_100;
    }

    return;
  }

  v53 = v14 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v45 = (v53 & v44);
  if (v22 >= a2)
  {
    v57 = *(v11 + 56);
    v58 = a2 + 1;
    v59 = v53 & v44;
    goto LABEL_97;
  }

  if (v34 <= 3)
  {
    v54 = ~(-1 << (8 * v34));
  }

  else
  {
    v54 = -1;
  }

  if (v34)
  {
    v47 = v54 & (~v22 + a2);
    if (v34 <= 3)
    {
      v48 = v34;
    }

    else
    {
      v48 = 4;
    }

    bzero(v45, v34);
    if (v48 <= 2)
    {
      if (v48 == 1)
      {
        goto LABEL_59;
      }

      goto LABEL_84;
    }

LABEL_100:
    if (v48 == 3)
    {
      *v45 = v47;
      v45[2] = BYTE2(v47);
    }

    else
    {
      *v45 = v47;
    }
  }
}

uint64_t type metadata completion function for AdapterState.PlaybackState(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for KeyframeTimeline();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AdapterState.PlaybackState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = v14 + 7;
  if ((v13 | v9) > 7 || ((*(v12 + 80) | *(v7 + 80)) & 0x100000) != 0 || ((v14 + 7 + ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 + v13 + ((((v8 + v9) & ~v9) + v8 + (v13 | 7)) & ~(v13 | 7))) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    v27 = (v18 + (((v13 | v9) & 0xF8 ^ 0x1F8) & ((v13 | v9) + 16)));
  }

  else
  {
    v19 = ~v9;
    v20 = *(v7 + 16);
    v34 = v6;
    v35 = v11;
    v36 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20(a1, a2, v6);
    v37 = a1;
    v21 = (a1 + v10) & v19;
    v22 = (a2 + v10) & v19;
    v20(v21, v22, v34);
    v23 = v8 + 7 + v21;
    v24 = v23 & 0xFFFFFFFFFFFFFFF8;
    v25 = v8 + 7 + v22;
    v26 = *(v12 + 16);
    v26(v23 & 0xFFFFFFFFFFFFFFF8, v25 & 0xFFFFFFFFFFFFFFF8, v35);
    *(((v23 | 7) + v14) & 0xFFFFFFFFFFFFFFF8) = *(((v25 | 7) + v14) & 0xFFFFFFFFFFFFFFF8);
    v27 = v37;
    v28 = v36 + v24;
    v29 = v36 + (v25 & 0xFFFFFFFFFFFFFFF8);

    v26(v28, v29, v35);
    v30 = ((v15 + v29) & 0xFFFFFFFFFFFFFFF8);
    v31 = v30[1];
    v32 = ((v15 + v28) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v30;
    v32[1] = v31;
  }

  return v27;
}

double destroy for AdapterState.PlaybackState(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v7 = v5 + 8;
  v6(a1, v4);
  v8 = *(v7 + 56);
  v9 = (v8 + a1 + *(v7 + 72)) & ~*(v7 + 72);
  v6(v9, v4);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = v11 + 8;
  v14 = *(v11 + 80);
  v15 = (v9 + v8 + (v14 | 7)) & ~(v14 | 7);
  v12(v15, v10);
  v16 = *(v13 + 56) + 7;

  v12((v14 + (v16 & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v14, v10);

  return result;
}

uint64_t initializeWithCopy for AdapterState.PlaybackState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(a1, a2, v6);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  v12 = (v10 + v11 + a1) & ~v11;
  v13 = (v10 + v11 + a2) & ~v11;
  v8(v12, v13, v6);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = v15 + 16;
  v18 = *(v15 + 80);
  v19 = (v18 | 7) + v10;
  v20 = (v19 + v12) & ~(v18 | 7);
  v21 = (v19 + v13) & ~(v18 | 7);
  v16(v20, v21, v14);
  v22 = *(v17 + 48) + 7;
  *((v22 + v20) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v21) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  v24 = (v23 + v20) & ~v18;
  v25 = (v23 + v21) & ~v18;

  v16(v24, v25, v14);
  v26 = ((v22 + v25) & 0xFFFFFFFFFFFFFFF8);
  v27 = v26[1];
  v28 = ((v22 + v24) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v26;
  v28[1] = v27;

  return a1;
}

uint64_t assignWithCopy for AdapterState.PlaybackState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v9 = v7 + 24;
  v8(a1, a2, v6);
  v10 = *(v9 + 40);
  v11 = *(v9 + 56);
  v12 = (v10 + v11 + a1) & ~v11;
  v13 = (v10 + v11 + a2) & ~v11;
  v8(v12, v13, v6);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 24);
  v17 = v15 + 24;
  v18 = *(v15 + 80);
  v19 = (v18 | 7) + v10;
  v20 = (v19 + v12) & ~(v18 | 7);
  v21 = (v19 + v13) & ~(v18 | 7);
  v16(v20, v21, v14);
  v22 = *(v17 + 40) + 7;
  *((v22 + v20) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v21) & 0xFFFFFFFFFFFFFFF8);

  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  v24 = (v23 + v20) & ~v18;
  v25 = (v23 + v21) & ~v18;
  v16(v24, v25, v14);
  v26 = ((v22 + v24) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v22 + v25) & 0xFFFFFFFFFFFFFFF8);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;

  return a1;
}

uint64_t initializeWithTake for AdapterState.PlaybackState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v9 = v7 + 32;
  v8(a1, a2, v6);
  v10 = *(v9 + 32);
  v11 = *(v9 + 48);
  v12 = (v10 + v11 + a1) & ~v11;
  v13 = (v10 + v11 + a2) & ~v11;
  v8(v12, v13, v6);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 32);
  v17 = v15 + 32;
  v18 = *(v15 + 80);
  v19 = (v18 | 7) + v10;
  v20 = (v19 + v12) & ~(v18 | 7);
  v21 = (v19 + v13) & ~(v18 | 7);
  v16(v20, v21, v14);
  v22 = *(v17 + 32) + 7;
  *((v22 + v20) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v21) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  v24 = (v23 + v20) & ~v18;
  v25 = (v23 + v21) & ~v18;
  v16(v24, v25, v14);
  *((v22 + v24) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v25) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AdapterState.PlaybackState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v9 = v7 + 40;
  v8(a1, a2, v6);
  v10 = *(v9 + 24);
  v11 = *(v9 + 40);
  v12 = (v10 + v11 + a1) & ~v11;
  v13 = (v10 + v11 + a2) & ~v11;
  v8(v12, v13, v6);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 40);
  v17 = v15 + 40;
  v18 = *(v15 + 80);
  v19 = (v18 | 7) + v10;
  v20 = (v19 + v12) & ~(v18 | 7);
  v21 = (v19 + v13) & ~(v18 | 7);
  v16(v20, v21, v14);
  v22 = *(v17 + 24) + 7;
  *((v22 + v20) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v21) & 0xFFFFFFFFFFFFFFF8);

  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  v24 = (v23 + v20) & ~v18;
  v25 = (v23 + v21) & ~v18;
  v16(v24, v25, v14);
  *((v22 + v24) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v25) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AdapterState.PlaybackState(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v7 + 80);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= v8)
  {
    v15 = *(v7 + 84);
  }

  else
  {
    v15 = v14;
  }

  if (v10 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v11 + v12;
  v18 = v13 | 7;
  v19 = *(v9 + 64) + 7;
  v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  if (v16 < a2)
  {
    v21 = ((v19 + ((v20 + ((v18 + v11 + (v17 & ~v12)) & ~v18)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v22 = a2 - v16;
    v23 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = v22 + 1;
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
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v26)
      {
        goto LABEL_33;
      }

      v27 = *(a1 + v21);
      if (!v27)
      {
        goto LABEL_33;
      }
    }

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

LABEL_33:
  if (v8 == v16)
  {
    v31 = *(v7 + 48);

    return v31(a1, v8, v6);
  }

  v32 = (((a1 + v17) & ~v12) + v11 + v18) & ~v18;
  if (v14 == v16)
  {
    if (v10 >= 0x7FFFFFFF)
    {
LABEL_39:
      v33 = *(v9 + 48);

      return v33(v32);
    }
  }

  else
  {
    v32 = (v20 + v32) & ~v13;
    if (v10 >= v15)
    {
      goto LABEL_39;
    }
  }

  v34 = *((v19 + v32) & 0xFFFFFFFFFFFFFFF8);
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  return (v34 + 1);
}

void storeEnumTagSinglePayload for AdapterState.PlaybackState(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v9 + 80);
  v15 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= v10)
  {
    v17 = *(v9 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v12 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v11 + 84);
  }

  v19 = *(v11 + 64) + 7;
  v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  v21 = ((v19 + ((v20 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 >= a3)
  {
    v24 = 0;
    v25 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((v19 + ((v20 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1;
    }

    if (((v19 + ((v20 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v27 = ~v18 + a2;
      bzero(a1, ((v19 + ((v20 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v21) = v26;
      }

      else
      {
        *(a1 + v21) = v26;
      }
    }

    else if (v24)
    {
      *(a1 + v21) = v26;
    }

    return;
  }

  if (((v19 + ((v20 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v22 = a3 - v18 + 1;
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

  v25 = a2 - v18;
  if (a2 > v18)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
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

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == v18)
  {
    v28 = *(v9 + 56);

    v28(a1, a2, v10, v8);
    return;
  }

  v29 = (((a1 + v13 + v14) & ~v14) + v13 + (v15 | 7)) & ~(v15 | 7);
  if (v16 == v18)
  {
    if (v12 < 0x7FFFFFFF)
    {
      v30 = ((v19 + v29) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v30 = a2 & 0x7FFFFFFF;
        return;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v29 = (v20 + v29) & ~v15;
    if (v12 < v17)
    {
      v30 = ((v19 + v29) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v30 = a2 & 0x7FFFFFFF;
        v30[1] = 0;
        return;
      }

LABEL_54:
      *v30 = (a2 - 1);
      return;
    }
  }

  v31 = *(v11 + 56);

  v31(v29, a2);
}

uint64_t type metadata completion function for AdapterState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AdapterState.PlaybackState(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AdapterState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v7 + 84);
  v11 = v9;
  v12 = *(v9 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= v10)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v16 = *(*(v6 - 8) + 64);
  v17 = *(v7 + 80);
  v18 = v16 + v17;
  v19 = *(v9 + 80);
  v20 = *(v9 + 64) + 7;
  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = ((v20 + ((v21 + v19 + ((((v16 + v17) & ~v17) + v16 + (v19 | 7)) & ~(v19 | 7))) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v19 | v17) > 7 || ((*(v9 + 80) | *(v7 + 80)) & 0x100000) != 0 || v22 > 0x18)
  {
    v25 = *a2;
    *a1 = *a2;
    a1 = (v25 + (((v19 | v17) & 0xF8 ^ 0x1F8) & ((v19 | v17) + 16)));
LABEL_33:

    return a1;
  }

  v26 = ~v17;
  v40 = v26;
  v41 = v8;
  if (v10 == v15)
  {
    if (!(*(v7 + 48))(a2, v10, v6))
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v27 = (v16 + ((a2 + v18) & v26) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 == v15)
  {
    if (v12 >= 0x7FFFFFFF)
    {
      goto LABEL_24;
    }

LABEL_29:
    v29 = *((v20 + v27) & 0xFFFFFFFFFFFFFFF8);
    if (v29 >= 0xFFFFFFFF)
    {
      LODWORD(v29) = -1;
    }

    if (v29 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v27 += v21;
  if (v12 < v14)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (!(*(v9 + 48))(v27))
  {
LABEL_32:
    v30 = *(v7 + 16);
    v30(a1, a2, v6);
    v31 = (a2 + v18) & v40;
    v30(((a1 + v18) & v40), v31, v6);
    v32 = (v16 + 7 + ((a1 + v18) & v40)) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v16 + 7 + v31) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v11 + 16);
    v34(v32, v33, v41);
    *((v20 + v32) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v33) & 0xFFFFFFFFFFFFFFF8);
    v35 = v32 + v21;
    v36 = v33 + v21;

    v34(v35, v36, v41);
    v37 = ((v20 + v36) & 0xFFFFFFFFFFFFFFF8);
    v38 = v37[1];
    v39 = ((v20 + v35) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v37;
    v39[1] = v38;
    goto LABEL_33;
  }

LABEL_25:

  return memcpy(a1, a2, v22);
}

double destroy for AdapterState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v6 = *(v4 - 8);
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(v4 - 8) + 64);
  v13 = *(v6 + 80);
  v14 = *(v8 + 80);
  v15 = v14 | 7;
  v16 = *(*(v7 - 8) + 64) + 7;
  if (*(v6 + 84) >= v11)
  {
    if ((*(v6 + 48))(a1))
    {
      return result;
    }

    goto LABEL_13;
  }

  v17 = (((v12 + v13 + a1) & ~v13) + v12 + v15) & ~(v14 | 7);
  if (v10 >= 0x7FFFFFFF)
  {
    if ((*(v8 + 48))(v17, v10, v7))
    {
      return result;
    }

    goto LABEL_13;
  }

  v18 = *((v16 + v17) & 0xFFFFFFFFFFFFFFF8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  if (v18 == -1)
  {
LABEL_13:
    v23 = (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = *(v6 + 8);
    v19(a1, v4);
    v20 = (v12 + v13 + a1) & ~v13;
    v19(v20, v4);
    v21 = (v20 + v12 + v15) & ~(v14 | 7);
    v22 = *(v9 + 8);
    v22(v21, v7);

    v22((v23 + v14 + v21) & ~v14, v7);
  }

  return result;
}

void *initializeWithCopy for AdapterState(void *a1, const void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = *(*(v5 - 8) + 64);
  v16 = *(v6 + 80);
  v17 = v15 + v16;
  v18 = *(v9 + 80);
  v19 = v18 | 7;
  v20 = *(v9 + 64) + 7;
  v39 = v8;
  v40 = (v20 & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  v37 = ~(v18 | 7);
  v38 = ~v18;
  v36 = ~v16;
  if (v7 == v14)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v21 = (((a2 + v17) & ~v16) + v15 + v19) & ~(v18 | 7);
  if (v12 == v14)
  {
    if (v11 >= 0x7FFFFFFF)
    {
      goto LABEL_15;
    }

LABEL_20:
    v23 = *((v20 + v21) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    if (v23 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v21 = (v40 + v21) & ~v18;
  if (v11 < v13)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!(*(v9 + 48))(v21))
  {
LABEL_23:
    v24 = *(v6 + 16);
    v24(a1, a2, v5);
    v25 = (a1 + v17) & v36;
    v26 = (a2 + v17) & v36;
    v24(v25, v26, v5);
    v27 = v26 + v15;
    v28 = (v25 + v15 + v19) & v37;
    v29 = (v27 + v19) & v37;
    v30 = *(v10 + 16);
    v30(v28, v29, v39);
    *((v20 + v28) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v29) & 0xFFFFFFFFFFFFFFF8);
    v31 = (v40 + v28) & v38;
    v32 = (v40 + v29) & v38;

    v30(v31, v32, v39);
    v33 = ((v20 + v32) & 0xFFFFFFFFFFFFFFF8);
    v34 = v33[1];
    v35 = ((v20 + v31) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v33;
    v35[1] = v34;

    return a1;
  }

LABEL_16:

  return memcpy(a1, a2, ((v20 + ((v40 + ((v19 + v15 + (v17 & ~v16)) & ~v19)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void *assignWithCopy for AdapterState(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 84);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = *(*(v6 - 8) + 64);
  v17 = *(v8 + 80);
  v18 = ~v17;
  v19 = v16 + v17;
  v78 = *(v10 - 8);
  v20 = *(v11 + 80);
  v21 = v20 | 7;
  v22 = ~(v20 | 7);
  v23 = *(v11 + 64) + 7;
  v79 = (v23 & 0xFFFFFFFFFFFFFFF8) + v20 + 8;
  v80 = ~v20;
  v81 = v23;
  v74 = v16;
  v75 = (v23 + ((v79 + (((v20 | 7) + v16 + ((v16 + v17) & ~v17)) & v22)) & ~v20)) & 0xFFFFFFFFFFFFFFF8;
  v76 = ~v17;
  v77 = v22;
  v72 = v16 + v17;
  v73 = v20 | 7;
  if (v9 == v15)
  {
    v24 = *(v8 + 48);
    v25 = v24(a1, v9, v6);
    v26 = v24(a2, v9, v7);
    v27 = a1;
    v28 = v10;
    v29 = v78;
    v30 = v7;
    if (!v25)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v70 = v6;
  v71 = *(v6 - 8);
  v69 = a1;
  v31 = (((a1 + v19) & v18) + v16 + v21) & v22;
  if (v13 != v15)
  {
    v31 = (v79 + v31) & v80;
    if (v12 >= v14)
    {
      goto LABEL_15;
    }

LABEL_17:
    v32 = v10;
    v39 = *((v23 + v31) & 0xFFFFFFFFFFFFFFF8);
    if (v39 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    v38 = v39 + 1;
    v29 = *(v10 - 8);
    goto LABEL_20;
  }

  if (v12 < 0x7FFFFFFF)
  {
    goto LABEL_17;
  }

LABEL_15:
  v29 = *(v10 - 8);
  v32 = v10;
  v33 = v10;
  v34 = v16;
  v35 = v20 | 7;
  v36 = v16 + v17;
  v37 = (*(v11 + 48))(v31, v12, v33);
  v19 = v36;
  v18 = v76;
  v22 = v77;
  v21 = v35;
  v16 = v34;
  v38 = v37;
LABEL_20:
  v40 = (((a2 + v19) & v18) + v16 + v21) & v22;
  if (!v38)
  {
    if (v13 == v15)
    {
      v53 = v12 >= 0x7FFFFFFF;
    }

    else
    {
      v40 = (v79 + v40) & v80;
      v53 = v12 >= v14;
    }

    v27 = v69;
    v30 = v70;
    v8 = v71;
    v28 = v32;
    if (!v53)
    {
      v58 = *((v81 + v40) & 0xFFFFFFFFFFFFFFF8);
      if (v58 >= 0xFFFFFFFF)
      {
        LODWORD(v58) = -1;
      }

      if (v58 != -1)
      {
        goto LABEL_40;
      }

LABEL_47:
      v59 = *(v8 + 24);
      v59(v27, a2, v30);
      v60 = (v27 + v72) & v76;
      v59(v60, ((a2 + v72) & v76), v30);
      v61 = (v60 + v74 + v73) & v77;
      v62 = (((a2 + v72) & v76) + v74 + v73) & v77;
      v63 = *(v29 + 24);
      v63(v61, v62, v28);
      *((v81 + v61) & 0xFFFFFFFFFFFFFFF8) = *((v81 + v62) & 0xFFFFFFFFFFFFFFF8);

      v64 = (v79 + v61) & v80;
      v65 = (v79 + v62) & v80;
      v63(v64, v65, v28);
      v66 = ((v81 + v64) & 0xFFFFFFFFFFFFFFF8);
      v67 = ((v81 + v65) & 0xFFFFFFFFFFFFFFF8);
      v68 = v67[1];
      *v66 = *v67;
      v66[1] = v68;

      return v27;
    }

    v26 = (*(v29 + 48))(v40, v12, v32);
LABEL_39:
    if (v26)
    {
LABEL_40:
      v54 = *(v8 + 8);
      v54(v27, v30);
      v54(((v27 + v72) & v76), v30);
      v55 = (((v27 + v72) & v76) + v74 + v73) & v77;
      v56 = *(v29 + 8);
      v56(v55, v28);

      v56((v79 + v55) & v80, v28);

      goto LABEL_41;
    }

    goto LABEL_47;
  }

  if (v13 == v15)
  {
    v41 = v12 >= 0x7FFFFFFF;
  }

  else
  {
    v40 = (v79 + v40) & v80;
    v41 = v12 >= v14;
  }

  v27 = v69;
  v30 = v70;
  v8 = v71;
  v28 = v32;
  if (!v41)
  {
    v52 = *((v81 + v40) & 0xFFFFFFFFFFFFFFF8);
    if (v52 >= 0xFFFFFFFF)
    {
      LODWORD(v52) = -1;
    }

    if (v52 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  v26 = (*(v29 + 48))(v40, v12, v32);
LABEL_30:
  if (!v26)
  {
LABEL_31:
    v42 = *(v8 + 16);
    v42(v27, a2, v30);
    v43 = (v27 + v72) & v76;
    v42(v43, ((a2 + v72) & v76), v30);
    v44 = (v43 + v74 + v73) & v77;
    v45 = (((a2 + v72) & v76) + v74 + v73) & v77;
    v46 = *(v29 + 16);
    v46(v44, v45, v28);
    *((v81 + v44) & 0xFFFFFFFFFFFFFFF8) = *((v81 + v45) & 0xFFFFFFFFFFFFFFF8);
    v47 = (v79 + v44) & v80;
    v48 = (v79 + v45) & v80;

    v46(v47, v48, v28);
    v49 = ((v81 + v48) & 0xFFFFFFFFFFFFFFF8);
    v50 = v49[1];
    v51 = ((v81 + v47) & 0xFFFFFFFFFFFFFFF8);
    *v51 = *v49;
    v51[1] = v50;

    return v27;
  }

LABEL_41:

  return memcpy(v27, a2, v75 + 16);
}

void *initializeWithTake for AdapterState(void *a1, const void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = *(*(v5 - 8) + 64);
  v16 = *(v6 + 80);
  v17 = v15 + v16;
  v18 = *(v9 + 80);
  v19 = v18 | 7;
  v20 = *(v9 + 64) + 7;
  v36 = v8;
  v37 = (v20 & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  v34 = ~(v18 | 7);
  v35 = ~v18;
  v33 = ~v16;
  if (v7 == v14)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v21 = (((a2 + v17) & ~v16) + v15 + v19) & ~(v18 | 7);
  if (v12 == v14)
  {
    if (v11 >= 0x7FFFFFFF)
    {
      goto LABEL_15;
    }

LABEL_20:
    v23 = *((v20 + v21) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    if (v23 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v21 = (v37 + v21) & ~v18;
  if (v11 < v13)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!(*(v9 + 48))(v21))
  {
LABEL_23:
    v24 = *(v6 + 32);
    v24(a1, a2, v5);
    v25 = (a1 + v17) & v33;
    v26 = (a2 + v17) & v33;
    v24(v25, v26, v5);
    v27 = v26 + v15;
    v28 = (v25 + v15 + v19) & v34;
    v29 = (v27 + v19) & v34;
    v30 = *(v10 + 32);
    v30(v28, v29, v36);
    *((v20 + v28) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v29) & 0xFFFFFFFFFFFFFFF8);
    v31 = (v37 + v28) & v35;
    v32 = (v37 + v29) & v35;
    v30(v31, v32, v36);
    *((v20 + v31) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v32) & 0xFFFFFFFFFFFFFFF8);
    return a1;
  }

LABEL_16:

  return memcpy(a1, a2, ((v20 + ((v37 + ((v19 + v15 + (v17 & ~v16)) & ~v19)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void *assignWithTake for AdapterState(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 84);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = *(*(v6 - 8) + 64);
  v17 = *(v8 + 80);
  v18 = ~v17;
  v19 = v16 + v17;
  v74 = *(v10 - 8);
  v20 = *(v11 + 80);
  v21 = v20 | 7;
  v22 = ~(v20 | 7);
  v23 = *(v11 + 64) + 7;
  v76 = (v23 & 0xFFFFFFFFFFFFFFF8) + v20 + 8;
  v77 = ~v20;
  v78 = v23;
  v71 = v22;
  v72 = (v23 + ((v76 + (((v20 | 7) + v16 + ((v16 + v17) & ~v17)) & v22)) & ~v20)) & 0xFFFFFFFFFFFFFFF8;
  v75 = v10;
  v69 = v16;
  v70 = v20 | 7;
  v73 = ~v17;
  if (v9 != v15)
  {
    v67 = v6;
    v68 = *(v6 - 8);
    v66 = a1;
    v37 = (((a1 + v19) & v18) + v16 + v21) & v22;
    if (v13 == v15)
    {
      if (v12 >= 0x7FFFFFFF)
      {
        v29 = *(v10 - 8);
        v38 = v16 + v17;
        v39 = ~(v20 | 7);
        v40 = v16;
        v41 = v20 | 7;
        v42 = (*(v11 + 48))(v37, v12, v75);
        v19 = v38;
        v18 = v73;
        v21 = v41;
        v16 = v40;
        v22 = v39;
LABEL_22:
        v44 = v42;
LABEL_23:
        v49 = (((a2 + v19) & v18) + v16 + v21) & v22;
        v50 = v13 == v15;
        v24 = v19;
        if (v44)
        {
          if (v50)
          {
            v51 = v12 >= 0x7FFFFFFF;
          }

          else
          {
            v49 = (v76 + v49) & v77;
            v51 = v12 >= v14;
          }

          v28 = v66;
          v7 = v67;
          v8 = v68;
          if (v51)
          {
            if (!(*(v29 + 48))(v49, v12, v75))
            {
              goto LABEL_13;
            }
          }

          else
          {
            v52 = *((v78 + v49) & 0xFFFFFFFFFFFFFFF8);
            if (v52 >= 0xFFFFFFFF)
            {
              LODWORD(v52) = -1;
            }

            if (v52 == -1)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_43;
        }

        if (v50)
        {
          v53 = v12 >= 0x7FFFFFFF;
        }

        else
        {
          v49 = (v76 + v49) & v77;
          v53 = v12 >= v14;
        }

        v28 = v66;
        v7 = v67;
        v8 = v68;
        if (!v53)
        {
          v58 = *((v78 + v49) & 0xFFFFFFFFFFFFFFF8);
          if (v58 >= 0xFFFFFFFF)
          {
            LODWORD(v58) = -1;
          }

          if (v58 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_49;
        }

        v27 = (*(v29 + 48))(v49, v12, v75);
LABEL_41:
        if (v27)
        {
LABEL_42:
          v54 = *(v8 + 8);
          v54(v28, v7);
          v54(((v28 + v24) & v73), v7);
          v55 = (((v28 + v24) & v73) + v69 + v70) & v71;
          v56 = *(v29 + 8);
          v56(v55, v75);

          v56((v76 + v55) & v77, v75);

          goto LABEL_43;
        }

LABEL_49:
        v59 = *(v8 + 40);
        v59(v28, a2, v7);
        v60 = (v28 + v24) & v73;
        v59(v60, ((a2 + v24) & v73), v7);
        v61 = (v60 + v69 + v70) & v71;
        v62 = (((a2 + v24) & v73) + v69 + v70) & v71;
        v63 = *(v29 + 40);
        v63(v61, v62, v75);
        *((v78 + v61) & 0xFFFFFFFFFFFFFFF8) = *((v78 + v62) & 0xFFFFFFFFFFFFFFF8);

        v64 = (v76 + v61) & v77;
        v65 = (v76 + v62) & v77;
        v63(v64, v65, v75);
        *((v78 + v64) & 0xFFFFFFFFFFFFFFF8) = *((v78 + v65) & 0xFFFFFFFFFFFFFFF8);

        return v28;
      }
    }

    else
    {
      v37 = (v76 + v37) & v77;
      if (v12 >= v14)
      {
        v29 = *(v10 - 8);
        v45 = v16 + v17;
        v46 = ~(v20 | 7);
        v47 = v16;
        v48 = v20 | 7;
        v42 = (*(v11 + 48))(v37, v12, v75);
        v19 = v45;
        v18 = v73;
        v21 = v48;
        v16 = v47;
        v22 = v46;
        goto LABEL_22;
      }
    }

    v43 = *((v23 + v37) & 0xFFFFFFFFFFFFFFF8);
    if (v43 >= 0xFFFFFFFF)
    {
      LODWORD(v43) = -1;
    }

    v44 = v43 + 1;
    v29 = *(v10 - 8);
    goto LABEL_23;
  }

  v24 = v16 + v17;
  v25 = *(v8 + 48);
  v26 = v25(a1, v9, v6);
  v27 = v25(a2, v9, v7);
  v28 = a1;
  v29 = v74;
  if (!v26)
  {
    goto LABEL_41;
  }

  if (!v27)
  {
LABEL_13:
    v30 = *(v8 + 32);
    v30(v28, a2, v7);
    v31 = (v28 + v24) & v73;
    v30(v31, ((a2 + v24) & v73), v7);
    v32 = (v31 + v69 + v70) & v71;
    v33 = (((a2 + v24) & v73) + v69 + v70) & v71;
    v34 = *(v29 + 32);
    v34(v32, v33, v75);
    *((v78 + v32) & 0xFFFFFFFFFFFFFFF8) = *((v78 + v33) & 0xFFFFFFFFFFFFFFF8);
    v35 = (v76 + v32) & v77;
    v36 = (v76 + v33) & v77;
    v34(v35, v36, v75);
    *((v78 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v78 + v36) & 0xFFFFFFFFFFFFFFF8);
    return v28;
  }

LABEL_43:

  return memcpy(v28, a2, v72 + 16);
}

uint64_t getEnumTagSinglePayload for AdapterState(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = *(*(v6 - 8) + 64);
  v16 = *(v7 + 80);
  v17 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v18 = v15 + v16;
  v19 = v17 | 7;
  v20 = *(v9 + 64) + 7;
  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + v17 + 8;
  if (v14 - 1 >= a2)
  {
LABEL_32:
    if (v8 == v14)
    {
      v31 = (*(v7 + 48))(a1, v8, v6);
      goto LABEL_41;
    }

    v32 = (((a1 + v18) & ~v16) + v15 + v19) & ~v19;
    if (v12 == v14)
    {
      if (v11 >= 0x7FFFFFFF)
      {
LABEL_36:
        v31 = (*(v10 + 48))(v32);
LABEL_41:
        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v32 = (v21 + v32) & ~v17;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }
    }

    v33 = *((v20 + v32) & 0xFFFFFFFFFFFFFFF8);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    v31 = v33 + 1;
    goto LABEL_41;
  }

  v22 = ((v20 + ((v21 + ((v19 + v15 + (v18 & ~v16)) & ~v19)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = v22 & 0xFFFFFFF8;
  v24 = a2 - v14 + 2;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
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
        goto LABEL_32;
      }
    }

    else
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (!v26)
    {
      goto LABEL_32;
    }

    v27 = *(a1 + v22);
    if (!v27)
    {
      goto LABEL_32;
    }
  }

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

  return (v30 | v29) + v14;
}

void storeEnumTagSinglePayload for AdapterState(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v9 + 80);
  v15 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= v10)
  {
    v17 = *(v9 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v12 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v11 + 84);
  }

  v19 = v18 - 1;
  v20 = *(v11 + 64) + 7;
  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  v22 = ((v20 + ((v21 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = a3 - v18 + 2;
  if (((v20 + ((v21 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v19 < a2)
  {
    v27 = a2 - v18;
    if (((v20 + ((v21 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v28 = v27 + 1;
    }

    else
    {
      v28 = 1;
    }

    if (((v20 + ((v21 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, ((v20 + ((v21 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v27;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v22) = v28;
      }

      else
      {
        *(a1 + v22) = v28;
      }
    }

    else if (v26)
    {
      *(a1 + v22) = v28;
    }

    return;
  }

  if (v26 <= 1)
  {
    if (v26)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v26 == 2)
  {
    *(a1 + v22) = 0;
    goto LABEL_40;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  v29 = a2 - v18;
  if (a2 >= v18)
  {
    if (((v20 + ((v21 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, ((v20 + ((v21 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v29;
    }
  }

  else
  {
    v30 = a2 + 1;
    if (v10 == v18)
    {
      v31 = *(v9 + 56);

      v31(a1, v30, v10, v8);
      return;
    }

    v32 = (((a1 + v13 + v14) & ~v14) + v13 + (v15 | 7)) & ~(v15 | 7);
    if (v16 == v18)
    {
      if (v12 < 0x7FFFFFFF)
      {
        v33 = ((v20 + v32) & 0xFFFFFFFFFFFFFFF8);
        if ((v30 & 0x80000000) != 0)
        {
          *v33 = a2 - 0x7FFFFFFF;
          return;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v32 = (v21 + v32) & ~v15;
      if (v12 < v17)
      {
        v33 = ((v20 + v32) & 0xFFFFFFFFFFFFFFF8);
        if ((v30 & 0x80000000) != 0)
        {
          *v33 = a2 - 0x7FFFFFFF;
          v33[1] = 0;
          return;
        }

LABEL_57:
        *v33 = a2;
        return;
      }
    }

    v34 = *(v11 + 56);

    v34(v32, v30);
  }
}

uint64_t getEnumTag for AdapterState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a2 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v6 >= v9)
  {
    v14 = *(v5 + 48);

    return v14(a1, v6, v4);
  }

  else
  {
    v10 = *(v7 + 80) & 0xF8 | 7;
    v11 = (*(v5 + 64) + ((*(v5 + 64) + a1 + *(v5 + 80)) & ~*(v5 + 80)) + v10) & ~v10;
    if (v8 < 0x7FFFFFFF)
    {
      v15 = *((*(v7 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }

    else
    {
      v12 = *(v7 + 48);

      return v12(v11);
    }
  }
}

void destructiveInjectEnumTag for AdapterState(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v7 + 80);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v9 + 84);
  }

  if (v15 <= v8)
  {
    v16 = *(v7 + 84);
  }

  else
  {
    v16 = v15;
  }

  if (v10 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(v9 + 84);
  }

  v18 = ~v12;
  v19 = v11 + v12;
  v20 = v13 | 7;
  v21 = ~(v13 | 7);
  v22 = v14 + 7;
  v23 = ~v13;
  v24 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  if (v17 < a2)
  {
    v25 = (((v24 + ((v20 + v11 + (v19 & v18)) & v21)) & v23) + v14 + 7) & 0xFFFFFFF8;
    if (v25 != -16)
    {
      v26 = ~v17 + a2;
      bzero(a1, (v25 + 16));
      *a1 = v26;
    }

    return;
  }

  if (!a2)
  {
    return;
  }

  if (v8 == v17)
  {
    v27 = *(v7 + 56);

    v27(a1, a2, v8, v6);
    return;
  }

  v28 = (((a1 + v19) & v18) + v11 + v20) & v21;
  if (v15 == v17)
  {
    if (v10 < 0x7FFFFFFF)
    {
      v29 = ((v22 + v28) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v29 = a2 & 0x7FFFFFFF;
        return;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v28 = (v24 + v28) & v23;
    if (v10 < v16)
    {
      v29 = ((v22 + v28) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v29 = a2 & 0x7FFFFFFF;
        v29[1] = 0;
        return;
      }

LABEL_24:
      *v29 = (a2 - 1);
      return;
    }
  }

  v30 = *(v9 + 56);

  v30(v28, a2);
}

uint64_t partial apply for closure #1 in closure #1 in MapAnimator.body.getter(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for MapAnimator(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return closure #1 in closure #1 in MapAnimator.body.getter(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t partial apply for closure #2 in closure #1 in MapAnimator.body.getter(uint64_t a1, char *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v10 = v2[2];
  v4 = v10;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  type metadata accessor for MapAnimator(0, &v10);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = type metadata accessor for MapAnimator(0, &v10);
  return MapAnimator.handleChangeOfUnderlyingValue(to:)(a2, v8);
}

uint64_t partial apply for closure #1 in MapAnimator.contentBinding.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for AdapterState(0, *(v3 + 32), a1, a2);
  v6 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for Optional() - 8);
  return AdapterState.value(with:)(v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v5, v9, v10, a3);
}

uint64_t partial apply for closure #2 in MapAnimator.contentBinding.getter(uint64_t a1)
{
  v3 = v1[4];
  type metadata accessor for Optional();
  v4 = *(type metadata accessor for Binding() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  type metadata accessor for AdapterState(255, v3, v7, v8);
  v9 = *(type metadata accessor for Binding() - 8);
  return closure #2 in MapAnimator.contentBinding.getter(a1, v1[2], v1[3], v1 + v5, v1 + ((v5 + v6 + *(v9 + 80)) & ~*(v9 + 80)), v3);
}

uint64_t specialized static ResetGlassEnvironmentModifier.makeEnvironment(_:)()
{
  type metadata accessor for GlassMaterialProvider.Pocket?(0, &lazy cache variable for type metadata for GlassMaterialProvider.Pocket?, MEMORY[0x1E6999D60]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  type metadata accessor for GlassMaterialProvider.Pocket?(0, &lazy cache variable for type metadata for GlassMaterialProvider.ResolvedStyleProvider?, MEMORY[0x1E6999C68]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  type metadata accessor for GlassMaterialProvider.Pocket?(0, &lazy cache variable for type metadata for GlassMaterialProvider.ResolvedStyle?, MEMORY[0x1E6999D28]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = EnvironmentValues.glassMaterialContainerStyle.setter();
  MEMORY[0x18D00AC70](&v16, v10);
  EnvironmentValues.glassFrost.setter();
  EnvironmentValues.glassMaterialForeground.setter();
  EnvironmentValues.backgroundMaterial.getter();
  v11 = BYTE8(v16);
  if (BYTE8(v16) != 0xFF)
  {
    v12 = v16;
    v13 = type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider();
    lazy protocol witness table accessor for type GlassMaterialProvider.ResolvedStyleProvider and conformance GlassMaterialProvider.ResolvedStyleProvider();
    Material.provider<A>(ofType:)();
    if ((*(*(v13 - 8) + 48))(v5, 1, v13) == 1)
    {
      outlined consume of Material?(v12, v11);
      outlined destroy of GlassMaterialProvider.ResolvedStyleProvider?(v5);
    }

    else
    {
      outlined destroy of GlassMaterialProvider.ResolvedStyleProvider?(v5);
      v16 = xmmword_18CD6E1E0;
      EnvironmentValues.backgroundMaterial.setter();
      outlined consume of Material?(v12, v11);
    }
  }

  v14 = type metadata accessor for GlassMaterialProvider.Pocket();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  return EnvironmentValues.glassMaterialPocketContainer.setter();
}

void type metadata accessor for GlassMaterialProvider.Pocket?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassMaterialProvider.ResolvedStyleProvider and conformance GlassMaterialProvider.ResolvedStyleProvider()
{
  result = lazy protocol witness table cache variable for type GlassMaterialProvider.ResolvedStyleProvider and conformance GlassMaterialProvider.ResolvedStyleProvider;
  if (!lazy protocol witness table cache variable for type GlassMaterialProvider.ResolvedStyleProvider and conformance GlassMaterialProvider.ResolvedStyleProvider)
  {
    v3 = type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider();
    result = swift_getWitnessTable(MEMORY[0x1E6999C60], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GlassMaterialProvider.ResolvedStyleProvider and conformance GlassMaterialProvider.ResolvedStyleProvider);
  }

  return result;
}

uint64_t outlined destroy of GlassMaterialProvider.ResolvedStyleProvider?(uint64_t a1)
{
  type metadata accessor for GlassMaterialProvider.Pocket?(0, &lazy cache variable for type metadata for GlassMaterialProvider.ResolvedStyleProvider?, MEMORY[0x1E6999C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static PageBuilder.buildPartialBlock<A>(first:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  static PageBuilder.buildPartialBlock<A>(first:)();
}

void static PageBuilder.buildPartialBlock<A, B>(accumulated:next:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  static PageBuilder.buildPartialBlock<A, B>(accumulated:next:)();
}

uint64_t SecureField.init(_:prompt:onCommit:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  if (a10)
  {
    v15 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  else
  {
    v15 = 0;
  }

  if (a10)
  {
    v16 = a11;
  }

  else
  {
    v16 = 0;
  }

  a9[8] = v15;
  a9[9] = 0;
  a9[10] = a10;
  a9[11] = v16;
  type metadata accessor for SecureField(0, a14, a15, a4);
  v17 = outlined copy of AppIntentExecutor?(a10, a11);
  a12(v17);

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a10, a11);
}

void *SecureField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a1;
  v35 = a2;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_4(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v30 - v5;
  v6 = TextField.$text.getter();
  v7 = v2[8];
  v8 = v2[9];
  v9 = v2[10];
  v32 = v2[11];
  v37[0] = 1;
  *&v40 = v6;
  *(&v40 + 1) = v10;
  *&v41 = v11;
  *(&v41 + 1) = v12;
  outlined copy of TextFieldState.FormatActions?(v7, v8, v9, v32);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v38);
  v13 = v38[0];

  v40 = v13;
  v41 = 0u;
  v42 = 0u;
  *&v43 = v7;
  *(&v43 + 1) = v8;
  *v44 = v9;
  *&v44[8] = v32;
  v44[16] = 0;
  *&v44[17] = v38[0];
  v44[19] = BYTE2(v38[0]);
  *&v44[20] = 0;
  v44[24] = v37[0];
  *&v44[25] = 2;
  v44[27] = 0;
  v38[3] = v43;
  v39[0] = *v44;
  *(v39 + 12) = *&v44[12];
  v38[0] = v13;
  memset(&v38[1], 0, 32);
  v14 = v33;
  v15 = TextField.$text.getter();
  v31 = v16;
  v32 = v15;
  v18 = v17;
  v30 = v19;
  v20 = v2[4];
  v21 = v3[5];
  v22 = v3[6];
  v23 = v3[7];
  type metadata accessor for Binding<TextSelection?>(0);
  v25 = v34;
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v26 = v14;
  v27 = *(v14 + 16);
  v28 = *(v26 + 24);
  v36[2] = v27;
  v36[3] = v28;
  v36[4] = v3;
  outlined init with copy of TextFieldState(&v40, v37);
  outlined copy of Text?(v20, v21, v22, v23);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(v38, v32, v31, v18, v30, 1, v20, v21, v35, v22, v23, 0, v25, partial apply for closure #1 in SecureField.body.getter, v36, v27, v28);
  return outlined destroy of TextFieldState(&v40);
}

uint64_t closure #1 in SecureField.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecureField(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

double SecureField<>.init(_:text:prompt:)@<D0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v17 = Text.init(_:tableName:bundle:comment:)();
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  result = 0.0;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = v17;
  *(a9 + 104) = v20;
  *(a9 + 112) = v18 & 1;
  *(a9 + 120) = v21;
  return result;
}

uint64_t SecureField<>.init<A>(_:text:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&v18 = a2;
  *(&v18 + 1) = a3;
  *&v19 = a4;
  *(&v19 + 1) = a5;
  *&v20 = a6;
  *(&v20 + 1) = a7;
  *&v21 = a8;
  *(&v21 + 1) = a10;
  closure #1 in SecureField<>.init<A>(_:text:prompt:)(a1, v22);
  a9[4] = 0u;
  a9[5] = 0u;
  v14 = v22[1];
  a9[6] = v22[0];
  a9[7] = v14;
  *a9 = v18;
  a9[1] = v19;
  v15 = *(a11 - 8);
  a9[2] = v20;
  a9[3] = v21;
  v16 = *(v15 + 8);

  return v16(a1, a11);
}

double SecureField<>.init(_:text:onCommit:)@<D0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = Text.init(_:tableName:bundle:comment:)();
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  result = 0.0;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a9 + 72) = 0;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = v16;
  *(a9 + 104) = v19;
  *(a9 + 112) = v17 & 1;
  *(a9 + 120) = v20;
  return result;
}

uint64_t SecureField<>.init<A>(_:text:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  *&v17 = a2;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a5;
  *&v19 = a6;
  *(&v19 + 1) = a7;
  closure #1 in SecureField<>.init<A>(_:text:prompt:)(a1, v20);
  a9[4] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  a9[5] = v19;
  v13 = v20[1];
  a9[6] = v20[0];
  a9[7] = v13;
  *a9 = v17;
  a9[1] = v18;
  v14 = *(a8 - 8);
  a9[2] = 0u;
  a9[3] = 0u;
  v15 = *(v14 + 8);

  return v15(a1, a8);
}

uint64_t closure #1 in SecureField<>.init<A>(_:text:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t type metadata completion function for SecureField(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SecureField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 80) & 0x100000;
  v8 = ((-97 - v6) | v6) - *(v5 + 64);
  v9 = *a2;
  *a1 = *a2;
  if (v6 <= 7 && v7 == 0 && v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = a2[2];
    a1[1] = a2[1];
    a1[2] = v12;
    a1[3] = a2[3];
    v13 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
    v14 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(v14 + 24);

    if (v15 < 0xFFFFFFFF)
    {
      v19 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 16) = v19;
    }

    else
    {
      v16 = *v14;
      v17 = *(v14 + 8);
      v18 = *(v14 + 16);
      outlined copy of Text.Storage(*v14, v17, v18);
      *v13 = v16;
      *(v13 + 8) = v17;
      *(v13 + 16) = v18;
      *(v13 + 24) = *(v14 + 24);
    }

    v20 = (v13 + 39) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*v21 < 0xFFFFFFFFuLL)
    {
      v24 = *(v21 + 16);
      *v20 = *v21;
      *(v20 + 16) = v24;
    }

    else
    {
      v22 = *(v21 + 8);
      *v20 = *v21;
      *(v20 + 8) = v22;
      v23 = *(v21 + 24);
      *(v20 + 16) = *(v21 + 16);
      *(v20 + 24) = v23;
    }

    (*(v5 + 16))(v20 + 32, v21 + 32, v4);
  }

  else
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for SecureField(uint64_t a1, uint64_t a2)
{

  v4 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = ((v4 + 39) & 0xFFFFFFFFFFFFFFF8);
  if (*v5 >= 0xFFFFFFFFuLL)
  {
  }

  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v6 + 80) + 32) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t *initializeWithCopy for SecureField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);

  if (v9 < 0xFFFFFFFF)
  {
    v13 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v13;
  }

  else
  {
    v10 = *v8;
    v11 = *(v8 + 8);
    v12 = *(v8 + 16);
    outlined copy of Text.Storage(*v8, v11, v12);
    *v7 = v10;
    *(v7 + 8) = v11;
    *(v7 + 16) = v12;
    *(v7 + 24) = *(v8 + 24);
  }

  v14 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    v18 = *(v15 + 16);
    *v14 = *v15;
    *(v14 + 16) = v18;
  }

  else
  {
    v16 = *(v15 + 8);
    *v14 = *v15;
    *(v14 + 8) = v16;
    v17 = *(v15 + 24);
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 24) = v17;
  }

  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 16))((v14 + *(v19 + 80) + 32) & ~*(v19 + 80), (v15 + *(v19 + 80) + 32) & ~*(v19 + 80));
  return a1;
}

uint64_t *assignWithCopy for SecureField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v6 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 24);
  if (*(v6 + 24) < 0xFFFFFFFFuLL)
  {
    if (v8 >= 0xFFFFFFFF)
    {
      v15 = *v7;
      v16 = *(v7 + 8);
      v17 = *(v7 + 16);
      outlined copy of Text.Storage(*v7, v16, v17);
      *v6 = v15;
      *(v6 + 8) = v16;
      *(v6 + 16) = v17;
      *(v6 + 24) = *(v7 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v8 >= 0xFFFFFFFF)
    {
      v9 = *v7;
      v10 = *(v7 + 8);
      v11 = *(v7 + 16);
      outlined copy of Text.Storage(*v7, v10, v11);
      v12 = *v6;
      v13 = *(v6 + 8);
      v14 = *(v6 + 16);
      *v6 = v9;
      *(v6 + 8) = v10;
      *(v6 + 16) = v11;
      outlined consume of Text.Storage(v12, v13, v14);
      *(v6 + 24) = *(v7 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v6, *(v6 + 8), *(v6 + 16));
  }

  v18 = *(v7 + 16);
  *v6 = *v7;
  *(v6 + 16) = v18;
LABEL_8:
  v19 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v20;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    if (v21 >= 0xFFFFFFFF)
    {
      v24 = v20[1];
      *v19 = v21;
      v19[1] = v24;
      v25 = v20[3];
      v19[2] = v20[2];
      v19[3] = v25;

      goto LABEL_15;
    }

LABEL_14:
    v26 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 1) = v26;
    goto LABEL_15;
  }

  if (v21 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v22 = v20[1];
  *v19 = v21;
  v19[1] = v22;

  v23 = v20[3];
  v19[2] = v20[2];
  v19[3] = v23;

LABEL_15:
  v27 = *(*(a3 + 16) - 8);
  (*(v27 + 24))((v19 + *(v27 + 80) + 32) & ~*(v27 + 80), (v20 + *(v27 + 80) + 32) & ~*(v27 + 80));
  return a1;
}

_OWORD *initializeWithTake for SecureField(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 39) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 39) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6[1];
  *v5 = *v6;
  v5[1] = v7;
  v8 = ((v5 + 39) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 32))((v8 + *(v11 + 80) + 32) & ~*(v11 + 80), (v9 + *(v11 + 80) + 32) & ~*(v11 + 80));
  return a1;
}

void *assignWithTake for SecureField(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v7 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v8 + 24) >= 0xFFFFFFFFuLL)
    {
      v9 = *(v8 + 16);
      v10 = *v7;
      v11 = *(v7 + 8);
      v12 = *(v7 + 16);
      *v7 = *v8;
      *(v7 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(v7 + 24) = *(v8 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  v13 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v13;
LABEL_6:
  v14 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*v14 < 0xFFFFFFFFuLL)
  {
LABEL_10:
    v17 = *(v15 + 16);
    *v14 = *v15;
    *(v14 + 16) = v17;
    goto LABEL_11;
  }

  if (*v15 < 0xFFFFFFFFuLL)
  {

    goto LABEL_10;
  }

  v16 = *(v15 + 8);
  *v14 = *v15;
  *(v14 + 8) = v16;

  *(v14 + 16) = *(v15 + 16);

LABEL_11:
  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 40))((v14 + *(v18 + 80) + 32) & ~*(v18 + 80), (v15 + *(v18 + 80) + 32) & ~*(v18 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for SecureField(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 96) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v6 + 32) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void storeEnumTagSinglePayload for SecureField(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 96) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v9 + 32) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t one-time initialization function for didPerformBackButtonPress()
{
  result = MEMORY[0x18D00C850](0xD000000000000022, 0x800000018CD541B0);
  static ClarityUI.didPerformBackButtonPress = result;
  return result;
}

uint64_t specialized View.toolbarButtonLabel()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 105) = 0;
  *(a1 + 112) = swift_getKeyPath();
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = swift_getKeyPath();
  *(a1 + 160) = 0;
  *(a1 + 168) = swift_getKeyPath();
  *(a1 + 176) = 0;
  *(a1 + 184) = swift_getKeyPath();
  *(a1 + 192) = 0;
  *(a1 + 200) = swift_getKeyPath();
  *(a1 + 208) = 0;
  v3 = v1[1];
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1[2];
  *(a1 + 41) = *(v1 + 41);
  return outlined init with copy of ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>(v1, &v5);
}

{
  *a1 = swift_getKeyPath();
  *(a1 + 41) = 0;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = swift_getKeyPath();
  *(a1 + 96) = 0;
  *(a1 + 104) = swift_getKeyPath();
  *(a1 + 112) = 0;
  *(a1 + 120) = swift_getKeyPath();
  *(a1 + 128) = 0;
  result = swift_getKeyPath();
  *(a1 + 136) = result;
  *(a1 + 144) = 0;
  return result;
}

uint64_t specialized View.toolbarButtonLabel()@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 57) = 0;
  *(a3 + 64) = swift_getKeyPath();
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = swift_getKeyPath();
  *(a3 + 112) = 0;
  *(a3 + 120) = swift_getKeyPath();
  *(a3 + 128) = 0;
  *(a3 + 136) = swift_getKeyPath();
  *(a3 + 144) = 0;
  result = swift_getKeyPath();
  *(a3 + 152) = result;
  *(a3 + 160) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

double specialized View.toolbarButtonLabel()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 49) = 0;
  *(a2 + 56) = swift_getKeyPath();
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = swift_getKeyPath();
  *(a2 + 104) = 0;
  *(a2 + 112) = swift_getKeyPath();
  *(a2 + 120) = 0;
  *(a2 + 128) = swift_getKeyPath();
  *(a2 + 136) = 0;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  *a2 = a1;

  return result;
}

uint64_t BorderlessButtonMenuStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = 0;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  result = swift_getKeyPath();
  *(a1 + 56) = result;
  *(a1 + 64) = 0;
  return result;
}

uint64_t BorderlessButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = v2[3];
  v25 = v2[2];
  v26 = v8;
  v27 = *(v2 + 64);
  v9 = v2[1];
  v23 = *v2;
  v24 = v9;
  v14[0] = v4;
  v14[1] = v5;
  v13 = v4;
  v15 = 0;
  v16 = specialized Environment.wrappedValue.getter(*(&v9 + 1), v25);
  v17 = specialized Environment.wrappedValue.getter(*(&v23 + 1), v24);
  v18 = v6;
  v19 = v7;
  specialized View.toolbarButtonLabel()(0, 4, v20);
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(0);
  outlined copy of AppIntentExecutor?(v4, v5);
  outlined copy of AppIntentExecutor?(v6, v7);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, MEMORY[0x1E6980688]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v20, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>);
  KeyPath = swift_getKeyPath();
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v14, v20, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  v20[400] = 0;
  v21 = KeyPath;
  v22 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v14, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v20, a2, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  *(a2 + 424) = 1;
  *(a2 + 432) = 2;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v20, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredic, type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  static UIButton.Configuration.borderless()();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifi(0);
  return closure #2 in BorderlessButtonMenuStyle.makeBody(configuration:)(&v23, v13, v5, v6, v7, a2 + *(v11 + 44));
}

double closure #1 in closure #1 in BorderlessButtonMenuStyle.iOSMenu(_:)(uint64_t a1, uint64_t a2)
{
  specialized Environment.wrappedValue.getter(*(a2 + 56), *(a2 + 64));
  specialized Environment.wrappedValue.getter(*(a2 + 40), *(a2 + 48));
  static Text.LineStyle.Pattern.solid.getter();
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  View.underline(_:pattern:color:)();

  return result;
}

void type metadata accessor for ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>)
  {
    _s7SwiftUI25_ContentShapeKindModifierVyAA9RectangleVGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for MenuStyleConfiguration.Label;
    v5[1] = lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>)
  {
    type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>(255);
    v5[0] = v2;
    v5[1] = &type metadata for MenuStyleConfiguration.Content;
    v5[2] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance <> StaticIf<A, B, C>();
    v5[3] = &protocol witness table for MenuStyleConfiguration.Content;
    v3 = type metadata accessor for UIKitMenuButton(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>)
  {
    type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, MEMORY[0x1E6980688]);
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>)
  {
    type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(255);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>, &type metadata for ToolbarButtonContentModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifi(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifi)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06VisioncD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredic, type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesTool(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifi);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesTool(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredic)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset(255);
    _s7SwiftUI25_ContentShapeKindModifierVyAA9RectangleVGMaTm_0(255, &lazy cache variable for type metadata for UIKitButtonStyleModifier<BorderlessButtonStyleBase>, lazy protocol witness table accessor for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase, &type metadata for BorderlessButtonStyleBase, type metadata accessor for UIKitButtonStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredic);
    }
  }
}

uint64_t assignWithCopy for BorderlessButtonMenuStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  outlined copy of Environment<Color?>.Content(v12);
  v14 = *(a1 + 40);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  outlined consume of Environment<Color?>.Content(v14);
  v15 = *(v2 + 56);
  LOBYTE(v2) = *(v2 + 64);
  outlined copy of Environment<Selector?>.Content(v15, v2);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *(a1 + 56) = v15;
  *(a1 + 64) = v2;
  outlined consume of Environment<Selector?>.Content(v16, v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for BorderlessButtonMenuStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for BorderlessButtonMenuStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentMo()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonCon;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonCon)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifi(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPr();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPr();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonCon);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPr()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewI;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewI)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredic, type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<Cr,  type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset,  lazy protocol witness table accessor for type ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewI;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewI)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesTool(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<Cr,  type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset,  lazy protocol witness table accessor for type ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = &protocol witness table for UIKitButtonStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewI);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for UIKitMenuButton<A, B>;
    v5[1] = _s7SwiftUI8StaticIfVyAA28StyleContextAcceptsPredicateVyAA07ToolbareF0VGAA0I19ButtonLabelModifierVAA05EmptyL0VGACyxq_q0_GAA04ViewL0A2A0n5InputH0RzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>, &type metadata for ToolbarButtonContentModifier, lazy protocol witness table accessor for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI28StyleContextAcceptsPredicateVyAA07ToolbarcD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static ControlWidgetTemplate._controlType.getter(uint64_t a1, uint64_t a2)
{
  return static ControlWidgetTemplate._controlType.getter(a1, a2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static ControlWidgetTemplate._makeControlWidgetTemplate(control:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static ControlWidgetTemplate._makeControlWidgetTemplate(control:inputs:)(a1, a2, a3, a4, a5);
}

{
  v7 = *a1;
  v8 = a2[1];
  v46 = *a2;
  v47 = v8;
  v48[0] = a2[2];
  *(v48 + 12) = *(a2 + 44);
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v9 = v44;
    v38 = v46;
    v39 = v47;
    v40[0] = v48[0];
    *(v40 + 12) = *(v48 + 12);
    v24 = DWORD1(v44);
    v25 = v7;
    v26 = *(&v43 + 1);
    v27 = v43;
    outlined init with copy of _WidgetInputs(&v46, &v43);
    v11 = type metadata accessor for ControlWidgetTemplateBodyAccessor(0, a3, a4, v10);
    swift_getWitnessTable(protocol conformance descriptor for ControlWidgetTemplateBodyAccessor<A>, v11);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v12 = *(&v43 + 1);
    v23 = v43;
    v13 = v44;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41[0] = v38;
    v41[1] = v39;
    v42[0] = v40[0];
    *(v42 + 12) = *(v40 + 12);
    v35 = v38;
    v36 = v39;
    v37[0] = v40[0];
    *(v37 + 12) = *(v40 + 12);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = *(AssociatedConformanceWitness + 40);
    outlined init with copy of _WidgetInputs(v41, &v43);
    v16(&v29, v34, &v35, AssociatedTypeWitness, AssociatedConformanceWitness);
    v43 = v35;
    v44 = v36;
    v45[0] = v37[0];
    *(v45 + 12) = *(v37 + 12);
    outlined destroy of _WidgetInputs(&v43);
    v17 = v29;
    v18 = v30;
    if (v13)
    {
      v35 = v38;
      v36 = v39;
      v37[0] = v40[0];
      *(v37 + 12) = *(v40 + 12);
      outlined destroy of _WidgetInputs(&v35);
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v34[0] = v23;
      v34[1] = v12;
      v33 = v25;
      v29 = v27;
      v30 = v26;
      v31 = v9;
      v32 = v24;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
      v35 = v38;
      v36 = v39;
      v37[0] = v40[0];
      *(v37 + 12) = *(v40 + 12);
      outlined destroy of _WidgetInputs(&v35);
      v19 = v27;
      v20 = v26;
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout(v19, v20, v9);
    *a5 = v17;
    *(a5 + 8) = v18;
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v22 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v22);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s7SwiftUI21ControlWidgetTemplatePAAE05_makecdE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v4 = v26;
    v5 = v27;
    v6 = a2[1];
    v23 = *a2;
    v24 = v6;
    v25[0] = a2[2];
    *(v25 + 12) = *(a2 + 44);
    v20 = v26;
    LOBYTE(v21) = v27;
    DWORD1(v21) = DWORD1(v27);
    outlined init with copy of _WidgetInputs(a2, &v26);
    type metadata accessor for ControlWidgetTemplateBodyAccessor<Never>(0, v7, v8, v9);
    lazy protocol witness table accessor for type ControlWidgetTemplateBodyAccessor<Never> and conformance ControlWidgetTemplateBodyAccessor<A>(v10, v11, v12, v13);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v14 = v27;
    v26 = v23;
    v27 = v24;
    v28[0] = v25[0];
    *(v28 + 12) = *(v25 + 12);
    outlined init with copy of _WidgetInputs(&v26, &v20);
    _s7SwiftUI21ControlWidgetTemplatePAAE05_makecdE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(v19, &v26, &v20);
    outlined destroy of _WidgetInputs(&v26);
    v15 = v20;
    v16 = DWORD2(v20);
    if ((v14 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v20 = v23;
    v21 = v24;
    v22[0] = v25[0];
    *(v22 + 12) = *(v25 + 12);
    outlined destroy of _WidgetInputs(&v20);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v15;
    *(a3 + 8) = v16;
  }

  else
  {
    _StringGuts.grow(_:)(32);

    MEMORY[0x18D00C9B0](0x726576654ELL, 0xE500000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ControlWidgetTemplateBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for ControlWidgetTemplateBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for ControlWidgetTemplateBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t protocol witness for static ControlWidgetTemplate._makeControlWidgetTemplate(control:inputs:) in conformance Never@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return _s7SwiftUI21ControlWidgetTemplatePAAE05_makecdE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(v5, a3);
}

void specialized ControlWidgetTemplate.controlWidgetTemplateBodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(35);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for ControlWidgetTemplateBodyAccessor<Never>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ControlWidgetTemplateBodyAccessor<Never>)
  {
    v4 = type metadata accessor for ControlWidgetTemplateBodyAccessor(0, MEMORY[0x1E69E73E0], &protocol witness table for Never, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ControlWidgetTemplateBodyAccessor<Never>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ControlWidgetTemplateBodyAccessor<Never> and conformance ControlWidgetTemplateBodyAccessor<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ControlWidgetTemplateBodyAccessor<Never> and conformance ControlWidgetTemplateBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ControlWidgetTemplateBodyAccessor<Never> and conformance ControlWidgetTemplateBodyAccessor<A>)
  {
    type metadata accessor for ControlWidgetTemplateBodyAccessor<Never>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for ControlWidgetTemplateBodyAccessor<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlWidgetTemplateBodyAccessor<Never> and conformance ControlWidgetTemplateBodyAccessor<A>);
  }

  return result;
}

void EnvironmentValues.dialogSeverity.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

double View.dialogSeverity(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues.dialogSeverity : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.dialogSeverity : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<DialogSeverity>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DialogSeverity>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DialogSeverity>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double protocol witness for static PreferenceKey.defaultValue.getter in conformance OrnamentBillboardingAllowedRotation.Key@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 41) = 1;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance OrnamentBillboardingAllowedRotation.Key(void *result, void *(*a2)(_OWORD *__return_ptr))
{
  v2 = result;
  if (*(result + 41) == 1)
  {
    result = a2(v8);
    v3 = v8[0];
    v4 = v8[1];
    v5 = v9;
    v6 = v10;
    v7 = v11;
  }

  else
  {
    v7 = 0;
    v3 = *result;
    v4 = *(result + 1);
    v5 = result[4];
    v6 = *(result + 40);
  }

  *v2 = v3;
  *(v2 + 1) = v4;
  v2[4] = v5;
  *(v2 + 40) = v6;
  *(v2 + 41) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior()
{
  result = lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentBillboardingBehavior, &type metadata for OrnamentBillboardingBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentBillboardingBehavior, &type metadata for OrnamentBillboardingBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentBillboardingBehavior, &type metadata for OrnamentBillboardingBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrnamentBillboardingBehavior, &type metadata for OrnamentBillboardingBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentBillboardingBehavior and conformance OrnamentBillboardingBehavior);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA26_PreferenceWritingModifierVyAA28OrnamentBillboardingBehaviorV3KeyVGGAaBHPxAaBHD1__AkA0cH0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v9 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, a2, a3, a4);
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v9;
  v12[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(a5, a2, a3, a4);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

double AccessibilityNotificationAction.announcement(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v32 = a2;
  v33 = a4;
  v29 = a3;
  v30 = a5;
  v31 = a1;
  v28 = type metadata accessor for TimeZone();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Calendar();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for configuredForPlatform != -1)
  {
    swift_once();
  }

  v39 = static EnvironmentValues.configuredForPlatform;
  (*(v14 + 16))(v16, v6, v13);

  EnvironmentValues.locale.setter();
  v17 = type metadata accessor for AccessibilityNotificationAction(0);
  (*(v10 + 16))(v12, v6 + v17[5], v27);
  EnvironmentValues.calendar.setter();
  (*(v7 + 16))(v9, v6 + v17[6], v28);
  EnvironmentValues.timeZone.setter();
  v18 = v6 + v17[7];
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  v21 = *(v18 + 17);
  v23 = *(v18 + 24);
  v22 = *(v18 + 32);
  LOWORD(v34) = *v18;
  *(&v34 + 1) = v19;
  v35 = v20;
  v36 = v21;
  v37 = v23;
  v38 = v22;

  AccessibilitySpeechAttributes.applyTo(environment:)();

  v34 = v39;
  static AccessibilityNotification.Announcement.makeAnnouncement(text:in:)(v31, v32, v29 & 1, v33, &v34, v24);

  return result;
}

uint64_t type metadata accessor for AccessibilityNotificationAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for AccessibilityNotificationAction;
  if (!type metadata singleton initialization cache for AccessibilityNotificationAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AccessibilityNotification.Announcement.makeAnnouncement(text:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, __n128 a6)
{
  default argument 2 of static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
  if (!static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)())
  {
    static AccessibilityCore.TextResolutionOptions.defaultPlainText.getter();
    static _GraphInputs.defaultInterfaceIdiom.getter();
    static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();

    JUMPOUT(0x18D000810);
  }

  return MEMORY[0x1EEDB25E8]();
}

double AccessibilityNotificationAction.announcement(_:)@<D0>(uint64_t a1@<X0>, int a3@<W2>, uint64_t a5@<X8>)
{
  LODWORD(v35) = a3;
  v34 = a1;
  v37 = a5;
  v36 = type metadata accessor for TimeZone();
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for Calendar();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v16 = Text.init(_:tableName:bundle:comment:)();
  v33 = v17;
  v34 = v16;
  v31 = v18;
  v35 = v19;
  if (one-time initialization token for configuredForPlatform != -1)
  {
    swift_once();
  }

  v43[0] = static EnvironmentValues.configuredForPlatform;
  (*(v13 + 16))(v15, v5, v12);

  EnvironmentValues.locale.setter();
  v20 = type metadata accessor for AccessibilityNotificationAction(0);
  (*(v9 + 16))(v11, v5 + v20[5], v32);
  EnvironmentValues.calendar.setter();
  (*(v6 + 16))(v8, v5 + v20[6], v36);
  EnvironmentValues.timeZone.setter();
  v21 = v5 + v20[7];
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  v24 = *(v21 + 17);
  v26 = *(v21 + 24);
  v25 = *(v21 + 32);
  v38.n128_u16[0] = *v21;
  v38.n128_u64[1] = v22;
  v39 = v23;
  v40 = v24;
  v41 = v26;
  v42 = v25;

  AccessibilitySpeechAttributes.applyTo(environment:)();

  v38 = v43[0];
  LOBYTE(v20) = v31;
  v28 = v33;
  v27 = v34;
  static AccessibilityNotification.Announcement.makeAnnouncement(text:in:)(v34, v33, v31 & 1, v35, &v38, v43[0]);
  outlined consume of Text.Storage(v27, v28, v20 & 1);

  return result;
}

double AccessibilityNotificationAction.announcement<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39 = a3;
  v43 = a4;
  v8 = type metadata accessor for TimeZone();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Calendar();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v19);
  v22 = Text.init<A>(_:)();
  v37 = v23;
  v38 = v22;
  v25 = v24;
  v39 = v26;
  if (one-time initialization token for configuredForPlatform != -1)
  {
    swift_once();
  }

  v49 = static EnvironmentValues.configuredForPlatform;
  (*(v15 + 16))(v17, v5, v14);

  EnvironmentValues.locale.setter();
  v27 = type metadata accessor for AccessibilityNotificationAction(0);
  (*(v11 + 16))(v13, v5 + v27[5], v40);
  EnvironmentValues.calendar.setter();
  (*(v41 + 16))(v10, v5 + v27[6], v42);
  EnvironmentValues.timeZone.setter();
  v28 = v5 + v27[7];
  v29 = *(v28 + 8);
  v30 = *(v28 + 16);
  v31 = *(v28 + 17);
  v33 = *(v28 + 24);
  v32 = *(v28 + 32);
  v44.n128_u16[0] = *v28;
  v44.n128_u64[1] = v29;
  v45 = v30;
  v46 = v31;
  v47 = v33;
  v48 = v32;

  AccessibilitySpeechAttributes.applyTo(environment:)();

  v44 = v49;
  v35 = v37;
  v34 = v38;
  static AccessibilityNotification.Announcement.makeAnnouncement(text:in:)(v38, v37, v25 & 1, v39, &v44, v49);
  outlined consume of Text.Storage(v34, v35, v25 & 1);

  return result;
}

double static AccessibilityNotificationActionKey.value(in:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  EnvironmentValues.locale.getter();
  v5 = type metadata accessor for AccessibilityNotificationAction(0);
  EnvironmentValues.calendar.getter();
  EnvironmentValues.timeZone.getter();
  AccessibilitySpeechAttributes.init(in:)();
  v6 = a2 + *(v5 + 28);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v8;
  *(v6 + 17) = v9;
  result = *&v10;
  *(v6 + 24) = v10;
  return result;
}

BOOL specialized static AccessibilitySpeechAttributes.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  if (v4 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v11 == 2 || ((v11 ^ v4) & 1) != 0)
    {
      return v18;
    }
  }

  if (v5 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v12 == 2 || ((v12 ^ v5) & 1) != 0)
    {
      return v18;
    }
  }

  if (v7)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v13)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v8 == 3)
  {
    if (v15 != 3)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v15 == 3 || v8 != v15)
    {
      return v18;
    }
  }

  if (v10)
  {
    return v17 && (v9 == v16 && v10 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v17;
}

BOOL specialized static AccessibilityNotificationAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x18D000480]() & 1) != 0 && (v4 = type metadata accessor for AccessibilityNotificationAction(0), (MEMORY[0x18D000510](a1 + v4[5], a2 + v4[5])) && (MEMORY[0x18D000640](a1 + v4[6], a2 + v4[6]))
  {
    v5 = a1 + v4[7];
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 17);
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    LOWORD(v24[0]) = *v5;
    v24[1] = v6;
    v25 = v7;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    v11 = a2 + v4[7];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 17);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    LOWORD(v19[0]) = *v11;
    v19[1] = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v17 = specialized static AccessibilitySpeechAttributes.== infix(_:_:)(v24, v19);
  }

  else
  {
    return 0;
  }

  return v17;
}

unint64_t lazy protocol witness table accessor for type AccessibilityNotificationActionKey and conformance AccessibilityNotificationActionKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityNotificationActionKey and conformance AccessibilityNotificationActionKey;
  if (!lazy protocol witness table cache variable for type AccessibilityNotificationActionKey and conformance AccessibilityNotificationActionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityNotificationActionKey, &unk_1EFFEFE50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNotificationActionKey and conformance AccessibilityNotificationActionKey);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for AccessibilityNotificationAction(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Locale();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = type metadata accessor for Calendar();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    v10 = a3[6];
    v11 = type metadata accessor for TimeZone();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    v12 = a3[7];
    v13 = &a1[v12];
    v14 = &a2[v12];
    *v13 = *v14;
    *(v13 + 1) = *(v14 + 1);
    *(v13 + 8) = *(v14 + 8);
    v15 = *(v14 + 4);
    *(v13 + 3) = *(v14 + 3);
    *(v13 + 4) = v15;
  }

  return a1;
}

uint64_t destroy for AccessibilityNotificationAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for Calendar();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for TimeZone();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
}

uint64_t initializeWithCopy for AccessibilityNotificationAction(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for TimeZone();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = a1 + v11;
  v13 = a2 + v11;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  v14 = *(v13 + 32);
  *(v12 + 24) = *(v13 + 24);
  *(v12 + 32) = v14;

  return a1;
}

uint64_t assignWithCopy for AccessibilityNotificationAction(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for TimeZone();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = a1 + v11;
  v13 = a2 + v11;
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);
  v14 = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 8) = v14;
  *(v12 + 17) = *(v13 + 17);
  *(v12 + 24) = *(v13 + 24);
  *(v12 + 32) = *(v13 + 32);

  return a1;
}

uint64_t initializeWithTake for AccessibilityNotificationAction(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for TimeZone();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(v13 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(v13 + 32);
  return a1;
}

uint64_t assignWithTake for AccessibilityNotificationAction(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for TimeZone();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = a1 + v11;
  v13 = a2 + v11;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  v15 = *(v13 + 24);
  v14 = *(v13 + 32);
  *(v12 + 24) = v15;
  *(v12 + 32) = v14;

  return a1;
}

uint64_t type metadata completion function for AccessibilityNotificationAction(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Calendar();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TimeZone();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityNotificationAction and conformance AccessibilityNotificationAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityNotificationAction and conformance AccessibilityNotificationAction;
  if (!lazy protocol witness table cache variable for type AccessibilityNotificationAction and conformance AccessibilityNotificationAction)
  {
    v3 = type metadata accessor for AccessibilityNotificationAction(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityNotificationAction, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNotificationAction and conformance AccessibilityNotificationAction);
  }

  return result;
}

void BorderedProminentButtonStyle_PhoneToolbar.makeBody(configuration:)(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *a2 = v7;
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, v10, v11, v12);
  v14 = &a2[*(v13 + 36)];
  *v14 = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v14[1] = v9;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>(0);
  v16 = &a2[*(v15 + 36)];
  *v16 = swift_getKeyPath();
  v16[41] = 0;
  *(v16 + 6) = swift_getKeyPath();
  v16[56] = 0;
  *(v16 + 8) = swift_getKeyPath();
  v16[72] = 0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, type metadata accessor for StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>);
  v19 = &a2[*(v18 + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance BorderedProminentButtonsHaveToolbarStylingInToolbar(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7 = v2;
  v8 = a1[2];
  if (MEMORY[0x18D00B1E0](&v6))
  {
    v3 = a1[1];
    v6 = *a1;
    v7 = v3;
    v8 = a1[2];
    v4 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>)
  {
    v2 = lazy protocol witness table accessor for type ToolbarButtonStyle and conformance ToolbarButtonStyle();
    v4 = type metadata accessor for PrimitiveButtonStyleContainerModifier(a1, &type metadata for ToolbarButtonStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, type metadata accessor for StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>, StaticIf<ToolbarItemWritesTintColorPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>, type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>, protocol conformance descriptor for Button<A>);
    v5[1] = _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGACyxGAA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGACyxGAA4ViewAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

Swift::Void __swiftcall UIKitPlatformViewHost.updateHostedViewBounds()()
{
  v10 = dispatch thunk of UICorePlatformViewHost.representedView.getter();
  v1 = dispatch thunk of UICorePlatformViewHost.representedView.getter();
  [v0 bounds];
  [v1 frameForAlignmentRect_];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [v10 setFrame_];
}

id @objc UIKitPlatformViewHost._parentContainer.getter(void *a1)
{
  v1 = a1;
  v2 = UIKitPlatformViewHost._parentContainer.getter();

  return v2;
}

id UIKitPlatformViewHost._parentContainer.getter()
{
  ObjectType = swift_getObjectType();
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel__parentGestureRecognizerContainer);
  }

  if (!swift_weakLoadStrong())
  {
    if (!dispatch thunk of UICorePlatformViewHost.host.getter())
    {
      goto LABEL_6;
    }

    swift_getObjectType();
    ViewGraphRootValueUpdater.responderNode.getter();
    swift_unknownObjectRelease();
  }

LABEL_6:
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = ViewResponder.parentGestureContainer.getter();

    return v3;
  }

  return result;
}

uint64_t UIKitPlatformViewHost.__ivar_destroyer()
{

  return swift_weakDestroy();
}

void specialized UIKitPlatformViewHost.init(coder:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t instantiation function for generic protocol witness table for <> ModifiedCompositorContent<A, B>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedCompositorContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t UISplitViewControllerDisplayMode.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6974616D6F747561;
      case 1:
        return 0x7261646E6F636573;
      case 2:
        return 0xD000000000000012;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000010;
}

uint64_t NavigationSplitSidebarStateMachine.splitViewController(_:willHide:visibilityEngine:)(void *a1, uint64_t a2, __int128 *a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[2];
  v10 = a3[4];
  v37 = a3[3];
  v38 = v10;
  v39 = *(a3 + 80);
  v11 = a3[1];
  v34 = *a3;
  v35 = v11;
  v36 = v9;
  static Log.splitViewVisibility.getter();
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of Logger?(v8);
    if (a2 != 4)
    {
      return NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(a1);
    }

    goto LABEL_20;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_19;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v32[0] = v17;
  *v16 = 136315138;
  v31 = v16;
  v30 = v17;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v19 = 0xE700000000000000;
      v18 = 0x7972616D697270;
      goto LABEL_18;
    }

    if (a2 == 1)
    {
      v19 = 0xED0000797261746ELL;
      v18 = 0x656D656C70707573;
      goto LABEL_18;
    }

LABEL_17:
    v19 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v19 = 0xE900000000000079;
    v18 = 0x7261646E6F636573;
    goto LABEL_18;
  }

  if (a2 == 3)
  {
    v19 = 0xE700000000000000;
    v18 = 0x746361706D6F63;
    goto LABEL_18;
  }

  if (a2 != 4)
  {
    goto LABEL_17;
  }

  v18 = 0x6F74636570736E69;
  v19 = 0xE900000000000072;
LABEL_18:
  v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v32);

  v21 = v31;
  *(v31 + 1) = v20;
  _os_log_impl(&dword_18BD4A000, v14, v15, "willHide %s", v21, 0xCu);
  v22 = v30;
  __swift_destroy_boxed_opaque_existential_1(v30);
  MEMORY[0x18D0110E0](v22, -1, -1);
  MEMORY[0x18D0110E0](v21, -1, -1);

LABEL_19:
  (*(v13 + 8))(v8, v12);
  if (a2 == 4)
  {
LABEL_20:
    v33 = 17;
    v23 = swift_allocObject();
    v24 = v37;
    v25 = v38;
    *(v23 + 48) = v36;
    *(v23 + 64) = v24;
    *(v23 + 80) = v25;
    *(v23 + 96) = v39;
    v26 = v35;
    *(v23 + 16) = v34;
    *(v23 + 32) = v26;
    *(v23 + 104) = a1;
    outlined init with copy of UISplitViewControllerVisibilityEngine(&v34, v32);
    v27 = a1;
    static Update.enqueueAction(reason:_:)();
  }

  return NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(a1);
}

double closure #1 in NavigationSplitSidebarStateMachine.splitViewController(_:willHide:visibilityEngine:)(double a1)
{
  Transaction.subscript.setter();
  withTransaction<A>(_:_:)();

  return result;
}

double closure #1 in closure #1 in NavigationSplitSidebarStateMachine.splitViewController(_:willHide:visibilityEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v12 = v5;
  v13 = *(a1 + 40);
  v6 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    v8 = v13;
    v14 = 17;
    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    *(v9 + 24) = v6;
    *(v9 + 32) = v8 & 1;
    *(v9 + 33) = a4;
    outlined init with copy of Binding<Bool>?(&v12, v11);

    static Update.enqueueAction(reason:_:)();
  }

  return *&v5;
}

double NavigationSplitSidebarStateMachine.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 32);

  swift_deallocClassInstance();
  return result;
}

uint64_t outlined init with copy of Binding<Bool>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Bool>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_26Tm_0()
{

  return swift_deallocObject();
}

void type metadata accessor for ObjectIdentifier?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<UndoManagerKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UndoManagerKey>);
    }
  }
}

uint64_t EnvironmentValues.undoManager.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.undoManager : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.undoManager : EnvironmentValues(id *a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();

  v4 = v3;
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void EnvironmentValues._undoManager.setter(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();

  v3 = a1;
  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void (*EnvironmentValues._undoManager.modify(void *a1))(void ***a1, char a2)
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
  v3[2] = v1;
  v3[3] = *v1;
  v5 = v1[1];
  v3[4] = v5;
  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues._undoManager.modify;
}

void EnvironmentValues._undoManager.modify(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  (*a1)[1] = v4;
  v5 = v3[4];
  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UndoManagerKey> and conformance EnvironmentPropertyKey<A>();
  if (a2)
  {
    v6 = v4;

    v7 = v6;
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {

    v8 = v4;
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

unint64_t initializeBufferWithCopyOfBuffer for SearchModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  if ((v11 | v7) <= 7 && ((*(v10 + 80) | v7) & 0x100000) == 0 && ((((((((-41 - v7) | v7) - (v8 + (v11 | 7))) | v11 | 7) - (((v11 + 16) & ~v11) + v12) - 7) | 7) - (v11 | 7) - 18) | v11 | 7) - ((((v11 + 9) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) - 24 >= 0xFFFFFFFFFFFFFFE7)
  {
    v47 = *(*(v9 - 8) + 64);
    v48 = ((v11 + 9) & ~v11) + v12;
    *a1 = *a2;
    v49 = v9;
    v50 = a1;
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    v18 = a2 & 0xFFFFFFFFFFFFFFF8;
    v19 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v46 = ((v11 + 16) & ~v11) + v12;
    outlined copy of Text.Storage(v19, v20, v21);
    *(v17 + 8) = v19;
    *(v17 + 16) = v20;
    *(v17 + 24) = v21;
    *(v17 + 32) = *(v18 + 32);
    v22 = *(v6 + 16);

    v22(v17 + 40, v18 + 40, v5);
    v23 = v17 + v8 + 47;
    v24 = v18 + v8 + 47;
    v25 = (v24 & 0xFFFFFFFFFFFFFFF8) + 15;
    *(v23 & 0xFFFFFFFFFFFFFFF8) = *(v24 & 0xFFFFFFFFFFFFFFF8);
    v26 = (v23 & 0xFFFFFFFFFFFFFFF8) + 15;
    v27 = (v25 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v26 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);
    v28 = (v26 & 0xFFFFFFFFFFFFFFF8) + 8;
    v29 = *(v10 + 16);

    v29(v28, v27, v49);
    v30 = ((v23 | 7) + v46) & 0xFFFFFFFFFFFFFFF8;
    v31 = ((v24 | 7) + v46) & 0xFFFFFFFFFFFFFFF8;
    v32 = *(v31 + 17);
    if (v32 >= 2)
    {
      v32 = *v31 + 2;
    }

    v33 = ~v11;
    if (v32 == 1)
    {
      *v30 = *v31;
      *(v30 + 8) = *(v31 + 8);
      *(v30 + 16) = *(v31 + 16);

      v34 = 1;
    }

    else
    {
      v34 = 0;
      *v30 = *v31;
      *(v30 + 8) = *(v31 + 8);
    }

    *(v30 + 17) = v34;
    v35 = ((v30 + 25) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v31 + 25) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v36;
    *(v30 + 25) = *(v31 + 25);
    *(v30 + 26) = *(v31 + 26);
    *(v30 + 27) = *(v31 + 27);
    v37 = (v30 + 31) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (v31 + 31) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *v38;
    *(v37 + 4) = *(v38 + 4);
    *v37 = v39;
    v40 = (v11 + 5 + v37) & v33;
    v41 = (v11 + 5 + v38) & v33;
    v29(v40, v41, v49);
    *(v40 + v47) = *(v41 + v47);
    v42 = (v40 + v47) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v41 + v47) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *(v43 + 4);
    *(v42 + 8) = *(v43 + 8);
    *(v42 + 4) = v44;
    *(&v35[v48 + 16] & 0xFFFFFFFFFFFFFFF8) = *(&v36[v48 + 16] & 0xFFFFFFFFFFFFFFF8);
    v16 = v50;
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    v16 = v15 + (((v11 | v7) & 0xF8 ^ 0x1F8) & ((v11 | v7) + 16));
  }

  return v16;
}

unint64_t initializeWithTake for SearchModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v3 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v3 + 8) = v4;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (v7 + 40 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v9 = (v7 + 40 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32);
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v13 = *(v12 + 32);
  v14 = v12 + 32;
  v15 = *(v12 + 80);
  v16 = v15 | 7;
  v17 = (v15 | 7) + v10;
  v18 = ((v17 + v8) & ~(v15 | 7));
  v19 = ((v17 + v9) & ~(v15 | 7));
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v13((v20 + v15 + 8) & ~v15, (v21 + v15 + 8) & ~v15, v11);
  v22 = *(v14 + 32);
  v23 = v22 + ((v15 + 16) & ~v15) + 7;
  v24 = (v18 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v19 + v23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 17);
  if (v26 >= 2)
  {
    v26 = *v25 + 2;
  }

  v27 = ~v16;
  v28 = ~v15;
  if (v26 == 1)
  {
    v29 = *v25;
    *(v24 + 16) = *(v25 + 16);
    *v24 = v29;
    v30 = 1;
  }

  else
  {
    v30 = 0;
    *v24 = *v25;
  }

  *(v24 + 17) = v30;
  v31 = v16 + 18;
  v32 = (v16 + 18 + v24) & v27;
  v33 = (v31 + v25) & v27;
  *v32 = *v33;
  *(v32 + 1) = *(v33 + 1);
  *(v32 + 2) = *(v33 + 2);
  *(v32 + 3) = *(v33 + 3);
  v34 = *(v33 + 4);
  *(v32 + 8) = *(v33 + 8);
  *(v32 + 4) = v34;
  v35 = v15 + 9;
  v36 = (v35 + v32) & v28;
  v37 = (v35 + v33) & v28;
  v13(v36, v37, v11);
  *(v36 + v22) = *(v37 + v22);
  v38 = (v36 + v22) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = (v37 + v22) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 4);
  *(v38 + 8) = *(v39 + 8);
  *(v38 + 4) = v40;
  *((v22 + (v35 & v28) + 16 + v32) & 0xFFFFFFFFFFFFFFF8) = *((v22 + (v35 & v28) + 16 + v33) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unint64_t assignWithTake for SearchModifier(unint64_t a1, unint64_t a2, uint64_t a3)
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

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 40 + v4) & ~v12;
  v14 = (v12 + 40 + v5) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24);
  v16 = type metadata accessor for AttributedString();
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v18 | 7;
  v20 = (v18 | 7) + v15;
  v45 = ~(v18 | 7);
  v21 = ((v20 + v13) & v45);
  v22 = ((v20 + v14) & v45);
  *v21 = *v22;

  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;

  v25 = v23 + v18 + 8;
  v26 = ~v18;
  v27 = *(v17 + 40);
  v27(v25 & ~v18, (v24 + v18 + 8) & ~v18, v16);
  v28 = *(v17 + 64);
  v29 = v28 + ((v18 + 16) & ~v18) + 7;
  v30 = (v21 + v29) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v22 + v29) & 0xFFFFFFFFFFFFFFF8;
  if (v30 != v31)
  {
    v32 = *(v30 + 17);
    if (v32 >= 2)
    {
      v32 = *v30 + 2;
    }

    if (v32 == 1)
    {
    }

    v33 = *(v31 + 17);
    if (v33 >= 2)
    {
      v33 = *v31 + 2;
    }

    if (v33 == 1)
    {
      v34 = *v31;
      *(v30 + 16) = *(v31 + 16);
      *v30 = v34;
      v35 = 1;
    }

    else
    {
      v35 = 0;
      *v30 = *v31;
    }

    *(v30 + 17) = v35;
  }

  v36 = v19 + 18;
  v37 = (v19 + 18 + v30) & v45;
  v38 = (v36 + v31) & v45;
  *v37 = *v38;
  *(v37 + 1) = *(v38 + 1);
  *(v37 + 2) = *(v38 + 2);
  *(v37 + 3) = *(v38 + 3);
  LODWORD(v36) = *(v38 + 4);
  *(v37 + 8) = *(v38 + 8);
  *(v37 + 4) = v36;
  v39 = v18 + 9;
  v40 = (v39 + v37) & v26;
  v41 = (v39 + v38) & v26;
  v27(v40, v41, v16);
  *(v40 + v28) = *(v41 + v28);
  v42 = (v40 + v28) & 0xFFFFFFFFFFFFFFFCLL;
  v43 = (v41 + v28) & 0xFFFFFFFFFFFFFFFCLL;
  *(v42 + 4) = *(v43 + 4);
  *(v42 + 8) = *(v43 + 8);
  *((v28 + (v39 & v26) + 16 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v28 + (v39 & v26) + 16 + v38) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchModifier(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v7 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v7;
  }

  if (v9 > v15)
  {
    v15 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + v13 + 7;
  v18 = (v12 | 7) + 18;
  v19 = v12 + 9;
  if (v15 >= a2)
  {
    goto LABEL_32;
  }

  v20 = (((v19 & ~v12) + v13) & 0xFFFFFFFFFFFFFFF8) + ((v18 + ((v17 + ((v16 + v11 + ((v10 + 40) & ~v10)) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 24;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
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

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v15 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v29 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0x80000000) != 0)
  {
    v31 = (v29 + v10 + 40) & ~v10;
    if (v7 == v15)
    {
      v32 = *(v6 + 48);

      return v32(v31, v7, v5);
    }

    else
    {
      v33 = (v31 + v11 + v16) & ~v16;
      if (v14 == v15)
      {
        v34 = v12 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      else
      {
        v34 = v19 + ((v18 + ((v17 + v33) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
      }

      v35 = *(v8 + 48);

      return v35(v34 & ~v12);
    }
  }

  else
  {
    v30 = *(v29 + 32);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }
}

void storeEnumTagSinglePayload for SearchModifier(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v43 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for AttributedString() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v11 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v9 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v9;
  }

  if (v11 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v10 + 84);
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v10 + 84);
  }

  if (v17 <= v19)
  {
    v17 = v19;
  }

  v20 = v14 | 7;
  v21 = ((v14 + 16) & ~v14) + v15 + 7;
  v22 = (v14 | 7) + 18;
  v23 = ((v14 + 9) & ~v14) + v15;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + 24;
  v25 = ((v22 + ((v21 + (((v14 | 7) + v13 + ((v12 + 40) & ~v12)) & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~(v14 | 7)) + v24;
  if (v17 >= a3)
  {
    v28 = 0;
    v29 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_28;
    }

LABEL_33:
    if (v25)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    if (v25)
    {
      v31 = ~v17 + a2;
      bzero(a1, v25);
      *a1 = v31;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        *(a1 + v25) = v30;
      }

      else
      {
        *(a1 + v25) = v30;
      }
    }

    else if (v28)
    {
      *(a1 + v25) = v30;
    }

    return;
  }

  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v26 = a3 - v17 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = a2 - v17;
  if (a2 > v17)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v25) = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v28)
  {
    goto LABEL_43;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  v32 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v32[3] = 0;
      v32[4] = 0;
      v32[1] = a2 & 0x7FFFFFFF;
      v32[2] = 0;
    }

    else
    {
      v32[4] = (a2 - 1);
    }

    return;
  }

  v33 = (v32 + v12 + 40) & ~v12;
  if (v9 == v17)
  {
    v34 = *(v43 + 56);

    v34(v33, a2, v9, v7);
    return;
  }

  v35 = ~v20;
  v36 = (v33 + v13 + v20) & ~v20;
  if (v16 == v17)
  {
    v37 = v14 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
LABEL_60:
    v38 = *(v10 + 56);

    v38(v37 & ~v14, a2);
    return;
  }

  v39 = ((v22 + ((v21 + v36) & 0xFFFFFFFFFFFFFFF8)) & v35);
  if (v19 >= a2)
  {
    if (v18 < a2)
    {
      v41 = (v23 & 0xFFFFFFFC) + 9;
      v42 = ~v18 + a2;
      bzero(((v22 + ((v21 + v36) & 0xFFFFFFFFFFFFFFF8)) & v35), v41);
      if (v41 <= 3)
      {
        *v39 = v42;
      }

      else
      {
        *v39 = v42;
      }

      return;
    }

    v37 = &v39[v14 + 9];
    goto LABEL_60;
  }

  if ((v23 & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v40 = ~v19 + a2;
    bzero(((v22 + ((v21 + v36) & 0xFFFFFFFFFFFFFFF8)) & v35), v24);
    *v39 = v40;
  }
}

uint64_t SearchModifier.init(text:isPresented:prompt:placement:control:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v47 = a12;
  v48 = a11;
  v20 = type metadata accessor for SearchFieldState(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a13;
  v50 = a14;
  v25 = type metadata accessor for SearchModifier(0, a13, a14, v24);
  v26 = a9 + v25[12];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *v23 = 2;
  v23[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v23 + 1) = 2;
  *(v23 + 1) = 0;
  v23[8] = 1;
  AttributedString.init()();
  v23[*(v21 + 48)] = 0;
  v27 = &v23[*(v21 + 52)];
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v28 = byte_1EAB095CC;
  *v27 = static SearchFocusUpdate.empty;
  v27[4] = v28;
  if (a8)
  {
    outlined copy of Text.Storage(a5, a6, a7 & 1);

    MEMORY[0x18D009CE0](&v54, v29);
    Text.assertUnstyled(_:options:)();
    outlined consume of Text.Storage(a5, a6, a7 & 1);

    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8;
  }

  else
  {
    v30 = static Text.System.search.getter();
  }

  *(a9 + 8) = v30;
  *(a9 + 16) = v31;
  *(a9 + 24) = v32 & 1;
  *(a9 + 32) = v33;
  v34 = a9 + v25[11];
  v46 = a1;
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(a1, v34, type metadata accessor for Binding<AttributedString>);
  v35 = a9 + v25[13];
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v23, v35, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v35 + *(v36 + 28)) = 0;
  v37 = outlined copy of Text?(a5, a6, a7, a8);
  v38 = v48(v37);
  *a9 = a10;
  MEMORY[0x1EEE9AC00](v38);
  v39 = v50;
  *(&v45 - 4) = v49;
  *(&v45 - 3) = v39;
  *(&v45 - 2) = a9;
  v40 = a8;
  v41 = a7;
  v42 = v51;
  v43 = v52;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI7BindingVySbG_s5NeverOytTg5(partial apply for closure #1 in SearchModifier.init(text:isPresented:prompt:placement:control:), (&v45 - 6), v51, v52, v53);
  outlined consume of Binding<NavigationSplitViewColumn>?(v42, v43);
  outlined consume of Text?(a5, a6, v41, v40);
  outlined destroy of SearchEnvironmentWritingModifier(v46, type metadata accessor for Binding<AttributedString>);
  return outlined destroy of SearchEnvironmentWritingModifier(v23, type metadata accessor for SearchFieldState);
}

uint64_t SearchModifier.environmentStorageTransform.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  SearchModifier.adjustedState.getter(a1, a2);
  v5 = *(a1 + 44);
  v6 = type metadata accessor for SearchStateEnvironmentTransformModifier(0);
  return _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v2 + v5, a2 + *(v6 + 20), type metadata accessor for Binding<AttributedString>);
}

void closure #1 in SearchModifier.init(text:isPresented:prompt:placement:control:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a2 + *(type metadata accessor for SearchModifier(0, a3, a4, a4) + 48);
  v9 = *v7;
  v8 = *(v7 + 8);
  v10 = *(v7 + 17);
  *v7 = v4;
  *(v7 + 8) = v5;
  v11 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 17) = 1;

  outlined consume of StateOrBinding<Bool>(v9, v8, v11, v10);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SearchStateEnvironmentTransformModifier.TransformModifier@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance SearchStateEnvironmentTransformModifier.TransformModifier@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  Value = AGGraphGetValue();
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(Value, a1, type metadata accessor for SearchBoundProperty<SearchFieldState>);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  v3 = AGGraphGetValue();
  v4 = type metadata accessor for SearchStateEnvironmentTransformModifier.Transform(0);
  return _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v3, a1 + *(v4 + 20), type metadata accessor for SearchBoundProperty<AttributedString>);
}

uint64_t protocol witness for SearchEnvironmentTransform.update(properties:) in conformance SearchStateEnvironmentTransformModifier.Transform(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) + 20);
  outlined destroy of SearchEnvironmentWritingModifier(v4, type metadata accessor for SearchBoundProperty<SearchFieldState>?);
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v2, v4, type metadata accessor for SearchBoundProperty<SearchFieldState>);
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = *(type metadata accessor for SearchEnvironmentStorage.BoundProperties(0) + 20);
  outlined destroy of SearchEnvironmentWritingModifier(v4 + v6, type metadata accessor for SearchBoundProperty<AttributedString>?);
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v2 + *(a2 + 20), v4 + v6, type metadata accessor for SearchBoundProperty<AttributedString>);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(v4 + v6, 0, 1, v7);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SearchStateEnvironmentTransformModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchStateEnvironmentTransformModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = specialized static SearchStateEnvironmentTransformModifier._makeInputs(modifier:inputs:)(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t implicit closure #1 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1;
  IsSearchFocused = type metadata accessor for SearchPrimitiveModifier.MakeIsSearchFocused(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>.MakeIsSearchFocused, IsSearchFocused);
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Attribute.init<A>(_:)partial apply, v9, IsSearchFocused, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7;
}

uint64_t implicit closure #3 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  v0 = GraphHost.intern<A>(_:for:id:)();

  return v0;
}

uint64_t SearchPrimitiveModifier.MakeIsSearchFocused.searchField.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for SearchField(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

double protocol witness for static Rule.initialValue.getter in conformance SearchPrimitiveModifier<A>.MakeForwardEnv@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD633F0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t SearchPrimitiveModifier.MakeIsSearchFocused.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchFieldState(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchField(0, a2, a3, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  SearchPrimitiveModifier.MakeIsSearchFocused.searchField.getter(a2, a3, v14, &v17 - v12);
  SearchField.state.getter();
  (*(v11 + 8))(v13, v10);
  v15 = v8[*(v6 + 48)];
  outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchFieldState);
  return v15;
}

uint64_t SearchPrimitiveModifier.MakeModifier.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for SearchPrimitiveModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t protocol witness for Rule.value.getter in conformance SearchPrimitiveModifier<A>.MakeIsSearchFocused@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = SearchPrimitiveModifier.MakeIsSearchFocused.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result & 1;
  return result;
}

uint64_t SearchPrimitiveModifier.MakeModifier.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v8 = type metadata accessor for SearchField(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v13 = type metadata accessor for SearchPrimitiveModifier(0, a2, a3, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  SearchPrimitiveModifier.MakeModifier.modifier.getter(a2, a3, v20, &v30 - v18);
  (*(v9 + 16))(v11, &v19[*(v13 + 36)], v8);
  v21 = *(v14 + 8);
  v21(v19, v13);
  SearchPrimitiveModifier.MakeModifier.modifier.getter(a2, a3, v22, v16);
  LOBYTE(v8) = *v16;
  v21(v16, v13);
  v24 = specialized SearchPrimitiveModifier.MakeModifier.forwardEnv.getter(a1, a2, a3, v23);
  v26 = v25;
  v28 = v27;
  SearchPrimitiveModifier.SearchConfigModifier.init(searchField:placement:forwardEnv:)(v11, v8, v24 & 1, v25, v27, a2, a3, v31);
  return outlined copy of AppIntentExecutor?(v26, v28);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SearchPrimitiveModifier<A>.MakeModifier@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t a3@<X8>)
{
  v4 = a2(0, *(a1 + 16), *(a1 + 24));
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

void key path getter for EnvironmentValues.searchFieldToolbarItemPlacement : EnvironmentValues(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchPrimitiveModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchPrimitiveModifier<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchEnvironmentWritingModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsSearchAllowedInput(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t specialized static SearchStateEnvironmentTransformModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  AGGraphCreateOffsetAttribute2();
  type metadata accessor for SearchBoundProperty<SearchFieldState>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>.Metadata, type metadata accessor for SearchBoundProperty.Metadata);
  v3 = swift_allocObject();
  v4 = *(*v3 + 96);
  v5 = type metadata accessor for SearchFieldState(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + *(*v3 + 104)) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  type metadata accessor for SearchBoundProperty<SearchFieldState>.MakeProperty(0);
  lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(&lazy protocol witness table cache variable for type SearchBoundProperty<SearchFieldState>.MakeProperty and conformance SearchBoundProperty<A>.MakeProperty, type metadata accessor for SearchBoundProperty<SearchFieldState>.MakeProperty, protocol conformance descriptor for SearchBoundProperty<A>.MakeProperty);
  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for Binding<AttributedString>(0);
  if (*(*(v6 - 8) + 64))
  {
    type metadata accessor for SearchStateEnvironmentTransformModifier(0);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for SearchBoundProperty<AttributedString>.Metadata(0);
  v7 = swift_allocObject();
  v8 = *(*v7 + 96);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + *(*v7 + 104)) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  type metadata accessor for SearchBoundProperty<AttributedString>.MakeProperty(0);
  lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(&lazy protocol witness table cache variable for type SearchBoundProperty<AttributedString>.MakeProperty and conformance SearchBoundProperty<A>.MakeProperty, type metadata accessor for SearchBoundProperty<AttributedString>.MakeProperty, protocol conformance descriptor for SearchBoundProperty<A>.MakeProperty);
  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>(0);
  lazy protocol witness table accessor for type SearchStateEnvironmentTransformModifier.TransformModifier and conformance SearchStateEnvironmentTransformModifier.TransformModifier();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  return _s7SwiftUI34SearchEnvironmentTransformModifierV11_makeInputs8modifier6inputsyAA11_GraphValueVyACyxGG_AA01_kH0VztFZAA0c5StatedeF033_366134F59E114783B313E1ABD2826F8FLLV0E0V_Tt1B5(v10, a2);
}

void *initializeBufferWithCopyOfBuffer for SearchStateEnvironmentTransformModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v9 = *(v8 + 32);
    v10 = v6 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v15 = *(*(v14 - 8) + 16);

    v15(&v10[v13], &v11[v13], v14);
    v10[v12[10]] = v11[v12[10]];
    v16 = v12[11];
    v17 = &v10[v16];
    v18 = &v11[v16];
    v17[4] = v18[4];
    *v17 = *v18;
    v19 = *(a3 + 20);
    v20 = v6 + v19;
    v21 = a2 + v19;
    v22 = *(a2 + v19 + 8);
    *v20 = *(a2 + v19);
    *(v20 + 1) = v22;
    type metadata accessor for Binding<AttributedString>(0);
    v24 = *(v23 + 32);

    v15(&v20[v24], &v21[v24], v14);
  }

  return v6;
}

void *initializeWithCopy for SearchStateEnvironmentTransformModifier(void *a1, void *a2, uint64_t a3)
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
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a2 + v17 + 8);
  *v18 = *(a2 + v17);
  *(v18 + 1) = v20;
  type metadata accessor for Binding<AttributedString>(0);
  v22 = *(v21 + 32);

  v13(&v18[v22], &v19[v22], v12);
  return a1;
}

void *assignWithCopy for SearchStateEnvironmentTransformModifier(void *a1, void *a2, uint64_t a3)
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
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);

  *(v18 + 1) = *(v19 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v13(&v18[*(v20 + 32)], &v19[*(v20 + 32)], v12);
  return a1;
}

void *initializeWithTake for SearchStateEnvironmentTransformModifier(void *a1, void *a2, uint64_t a3)
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
  v18 = *(a3 + 20);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  type metadata accessor for Binding<AttributedString>(0);
  v14(&v19[*(v22 + 32)], &v20[*(v22 + 32)], v13);
  return a1;
}

void *assignWithTake for SearchStateEnvironmentTransformModifier(void *a1, void *a2, uint64_t a3)
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
  *(a1 + v17) = *v19;

  *(v18 + 1) = *(v19 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v13(&v18[*(v20 + 32)], &v19[*(v20 + 32)], v12);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for SearchEnvironmentWritingModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v9 = *(v8 + 32);
    v10 = v6 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v15 = *(*(v14 - 8) + 16);

    v15(&v10[v13], &v11[v13], v14);
    v10[v12[10]] = v11[v12[10]];
    v16 = v12[11];
    v17 = &v10[v16];
    v18 = &v11[v16];
    v17[4] = v18[4];
    *v17 = *v18;
    v19 = *(a3 + 20);
    v20 = v6 + v19;
    v21 = a2 + v19;
    v22 = *(a2 + v19 + 8);
    *v20 = *(a2 + v19);
    *(v20 + 1) = v22;
    type metadata accessor for Binding<AttributedString>(0);
    v24 = *(v23 + 32);

    v15(&v20[v24], &v21[v24], v14);
    *(v6 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v6;
}

uint64_t destroy for SearchStateEnvironmentTransformModifier(uint64_t a1, uint64_t a2)
{

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = a1 + *(v4 + 32);
  v6 = *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  v12 = *(*(v7 - 8) + 8);
  (v12)((v7 - 8), v5 + v6, v7);
  v8 = a1 + *(a2 + 20);

  type metadata accessor for Binding<AttributedString>(0);
  v10 = v8 + *(v9 + 32);

  return v12(v10, v7);
}

void *initializeWithTake for SearchEnvironmentWritingModifier(void *a1, void *a2, uint64_t a3)
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
  v18 = *(a3 + 20);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(a2 + v18 + 8);
  *v19 = *(a2 + v18);
  *(v19 + 1) = v21;
  type metadata accessor for Binding<AttributedString>(0);
  v14(&v19[*(v22 + 32)], &v20[*(v22 + 32)], v13);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}