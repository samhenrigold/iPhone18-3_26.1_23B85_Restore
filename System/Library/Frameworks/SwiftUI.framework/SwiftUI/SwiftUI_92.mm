double destroy for AttributedTextStorage(unsigned __int16 *a1, uint64_t a2)
{
  v63 = type metadata accessor for AttributedString();
  v3 = *(v63 - 8);
  v4 = *(v3 + 80);
  v5 = ((v4 + 16) & ~v4) + *(v3 + 64);
  v65 = type metadata accessor for AttributedString.Index();
  v6 = *(v65 - 8);
  v56 = v6;
  v7 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v9 = *(v8 - 8);
  v50 = v9;
  v51 = v8;
  v57 = type metadata accessor for AttributeContainer();
  v10 = *(v57 - 8);
  v11 = *(v10 + 80);
  v12 = v7 | v11;
  v13 = v12 | 7;
  v52 = (v12 | 7) + v5;
  v14 = v52 & ~(v12 | 7);
  v16 = *(v9 + 64);
  v53 = *(v6 + 64);
  if (v16 <= v53)
  {
    v16 = *(v6 + 64);
  }

  v59 = v16;
  v61 = v16 + v11 + 1;
  v62 = *(v57 - 8);
  v17 = *(v62 + 64);
  v54 = *(v10 + 84);
  if (!v54)
  {
    ++v17;
  }

  v18 = v17 + (v61 & ~v11) + 1;
  v55 = v18;
  v15 = (v12 + 16) & ~v12;
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v14 + v15 + v18)
  {
    v19 = v14 + v15 + v18;
  }

  else
  {
    v19 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v20 = *(a1 + v19);
  if (v20 >= 2)
  {
    if (v19 <= 3)
    {
      v21 = v19;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a1;
        if (v19 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *a1 | (*(a1 + 2) << 16);
          if (v19 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v20 = v22 + 2;
          goto LABEL_24;
        }

        v22 = *a1;
        if (v19 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v20 = (v22 | ((v20 - 2) << (8 * v19))) + 2;
      goto LABEL_24;
    }

    if (!v21)
    {
      goto LABEL_24;
    }

    v22 = *a1;
    if (v19 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v23 = ~v13;
  v60 = ~v11;

  (*(v3 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4, v63);
  v64 = ~v12;
  if (v20 == 1)
  {

    v24 = v12 + 8;
    v26 = v56;
    v25 = v57;
    v27 = v54;
  }

  else
  {
    v28 = ((a1 + v52) & v23) + 15;

    v29 = (v12 + 8 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v12;
    v30 = *(v29 + v59);
    v31 = v30 == 1;
    v26 = v56;
    v25 = v57;
    if (v30 <= 1)
    {
      v32 = v50;
      if (v31)
      {
        v33 = v51;
      }

      else
      {
        v32 = v56;
        v33 = v65;
      }

      (*(v32 + 8))((v12 + 8 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v12, v33);
    }

    v34 = v61 + v29;
    if (!(*(v62 + 48))(v34 & v60, 1, v57))
    {
      (*(v62 + 8))(v34 & v60, v57);
    }

    v27 = v54;
    v24 = v12 + 8;
  }

  v35 = (a1 + v13 + v19 + 1) & v23;

  v36 = ~v12;
  v37 = (v24 + v35) & v64;
  if (v27)
  {
    v38 = v27 - 1;
  }

  else
  {
    v38 = 0;
  }

  if (v38 <= 0xFD)
  {
    v39 = 253;
  }

  else
  {
    v39 = v38;
  }

  if (*(v26 + 84) >= (v39 - 1))
  {
    v40 = v53 + v12;
    if ((*(v26 + 48))((v24 + v35) & v64))
    {
      goto LABEL_60;
    }

    v41 = (v40 + v37) & v64;
  }

  else
  {
    v40 = v53 + v12;
    v41 = (v40 + v37) & v64;
    if (v38 > 0xFD)
    {
      v43 = (*(v62 + 48))((v61 + v41) & v60, v27, v25);
      if (v43 < 2)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v42 = *(v41 + v59);
      if ((v42 - 255) < 0xFFFFFF03)
      {
        goto LABEL_48;
      }

      v43 = (v42 ^ 0xFF) + 1;
    }

    if (v43 >= 3)
    {
      goto LABEL_60;
    }
  }

LABEL_48:
  v44 = *(v26 + 8);
  v44(v37, v65);
  if (v38 > 0xFD)
  {
    v45 = v60;
    if ((*(v62 + 48))((v61 + v41) & v60, v27, v25) <= 1)
    {
      v48 = *(v41 + v59);
      v47 = v48 == 1;
      if (v48 > 1)
      {
        goto LABEL_57;
      }

LABEL_54:
      if (v47)
      {
        (*(v50 + 8))(v41, v51);
      }

      else
      {
        v44(v41, v65);
      }

LABEL_57:
      if (!(*(v62 + 48))((v61 + v41) & v45, 1, v25))
      {
        (*(v62 + 8))((v61 + v41) & v45, v25);
      }
    }
  }

  else
  {
    v45 = v60;
    v46 = *(v41 + v59);
    if (v46 - 255 < 0xFFFFFF03)
    {
      v47 = v46 == 1;
      if (v46 > 1)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  v36 = v64;
LABEL_60:
  (*(*(*(a2 + 16) - 8) + 8))(((v24 & v36) + (v40 & v36) + v55 + *(*(*(a2 + 16) - 8) + 80) + v35) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

void *initializeWithCopy for AttributedTextStorage(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v115 = type metadata accessor for AttributedString();
  v111 = *(v115 - 8);
  v4 = *(v111 + 80);
  v96 = ~v4;
  v5 = ((v4 + 16) & ~v4) + *(v111 + 64);
  v101 = type metadata accessor for AttributedString.Index();
  v6 = *(v101 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v89 = v10;
  v90 = v9;
  v11 = *(v10 + 80);
  v105 = type metadata accessor for AttributeContainer();
  v12 = *(v105 - 8);
  v13 = v6;
  v14 = *(v12 + 80);
  v15 = v11 | v8 | *(v12 + 80);
  v92 = (v15 | 7) + v5;
  v16 = v92 & ~(v15 | 7);
  v18 = a2;
  v19 = *(v10 + 64);
  v99 = *(v13 + 64);
  if (v19 <= v99)
  {
    v19 = *(v13 + 64);
  }

  v110 = v19;
  __n = v19 + 1;
  v104 = v19 + 1 + v14;
  v108 = *(v105 - 8);
  v109 = *(v12 + 84);
  if (v109)
  {
    v20 = *(*(v105 - 8) + 64);
  }

  else
  {
    v20 = *(*(v105 - 8) + 64) + 1;
  }

  v93 = v5;
  v95 = v20;
  v21 = v20 + (v104 & ~v14) + 1;
  v102 = v21;
  v17 = (v15 + 16) & ~v15;
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v16 + v17 + v21)
  {
    v22 = v16 + v17 + v21;
  }

  else
  {
    v22 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v23 = a2[v22];
  if (v23 < 2)
  {
    v26 = a1;
    goto LABEL_25;
  }

  if (v22 <= 3)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (v24 <= 1)
  {
    v26 = a1;
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = *a2;
    if (v22 >= 4)
    {
      goto LABEL_24;
    }

LABEL_20:
    v23 = (v25 | ((v23 - 2) << (8 * v22))) + 2;
    goto LABEL_25;
  }

  if (v24 == 2)
  {
    v25 = *a2;
  }

  else if (v24 == 3)
  {
    v25 = *a2 | (a2[2] << 16);
  }

  else
  {
    v25 = *a2;
  }

  v26 = a1;
  if (v22 < 4)
  {
    goto LABEL_20;
  }

LABEL_24:
  v23 = v25 + 2;
LABEL_25:
  v97 = v22;
  v117 = v7;
  v98 = v15 | 7;
  v106 = ~(v15 | 7);
  v27 = ~v15;
  v103 = ~v14;
  *v26 = *a2;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = v29 + v4;
  v31 = v28 + v4 + 8;
  v32 = v26;
  v33 = v30 + 8;
  v34 = *(v111 + 16);

  v34(v31 & v96, v33 & v96, v115);
  v116 = ~v15;
  if (v23 == 1)
  {
    *((v32 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v18[v93 + 7] & 0xFFFFFFFFFFFFFFF8);
    v35 = v97;
    *(v32 + v97) = 1;
    v36 = v15 + 8;

    v37 = v117;
    v38 = v15 | 7;
    v39 = ~(v15 | 7);
    v40 = v15;
  }

  else
  {
    v41 = ((v32 + v92) & v106);
    v42 = (&v18[v92] & v106);
    *v41 = *v42;
    v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
    v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v43 = *v44;
    v94 = v15;
    v45 = ((v43 + v15 + 8) & v27);
    v112 = v15 + 8;
    v46 = ((v44 + v15 + 8) & v27);
    v47 = v46[v110];

    v48 = v47 == 1;
    v37 = v117;
    v35 = v97;
    if (v47 > 1)
    {
      memcpy(v45, v46, __n);
      v49 = v105;
    }

    else
    {
      v49 = v105;
      if (v48)
      {
        (*(v89 + 16))(v45, v46, v90);
        *(v45 + v110) = 1;
      }

      else
      {
        (*(v117 + 16))(v45, v46, v101);
        *(v45 + v110) = 0;
      }
    }

    v50 = ((v45 + v104) & v103);
    v51 = (&v46[v104] & v103);
    if ((*(v108 + 48))(v51, 1, v49))
    {
      v52 = v95;
      memcpy(v50, v51, v95);
    }

    else
    {
      (*(v108 + 16))(v50, v51, v49);
      (*(v108 + 56))(v50, 0, 1, v49);
      v52 = v95;
    }

    *(v50 + v52) = *(v51 + v52);
    *(v32 + v97) = 0;
    v36 = v112;
    v38 = v98;
    v39 = v106;
    v40 = v94;
  }

  v53 = ((v32 + v38 + v35 + 1) & v39);
  v54 = (&v18[v38 + 1 + v35] & v39);
  *v53 = *v54;
  v107 = v53;
  v55 = ((v53 + v36) & v116);
  v113 = v36;
  v56 = ((v54 + v36) & v116);
  v57 = *(v37 + 84);
  if (v109)
  {
    v58 = v109 - 1;
  }

  else
  {
    v58 = 0;
  }

  if (v58 <= 0xFD)
  {
    v59 = 253;
  }

  else
  {
    v59 = v58;
  }

  v60 = v59 - 1;
  v61 = v99 + v40;
  v62 = v37;
  v63 = v102 + ((v99 + v40) & v116);

  if (v57 >= v60)
  {
    v68 = (*(v62 + 48))(v56, v57, v101);
    v65 = v108;
    if (!v68)
    {
      v64 = ((v56 + v61) & v116);
      goto LABEL_50;
    }

    goto LABEL_56;
  }

  v64 = ((v56 + v61) & v116);
  v65 = v108;
  if (v58 > 0xFD)
  {
    v67 = (*(v108 + 48))(&v64[v104] & v103, v109, v105);
    if (v67 < 2)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v66 = v64[v110];
    if ((v66 - 255) < 0xFFFFFF03)
    {
      goto LABEL_50;
    }

    v67 = (v66 ^ 0xFF) + 1;
  }

  if (v67 >= 3)
  {
LABEL_56:
    memcpy(v55, v56, v63);
    v71 = v116;
    goto LABEL_65;
  }

LABEL_50:
  v69 = *(v117 + 16);
  v69(v55, v56, v101);
  v70 = &v55[v61];
  v71 = v116;
  v72 = (v70 & v116);
  if (v58 <= 0xFD)
  {
    v73 = v64[v110];
    v74 = v105;
    if (v73 - 255 < 0xFFFFFF03)
    {
      v75 = v73 == 1;
      if (v73 <= 1)
      {
        goto LABEL_53;
      }

LABEL_59:
      memcpy(v72, v64, __n);
      goto LABEL_61;
    }

LABEL_60:
    memcpy(v72, v64, v102);
    goto LABEL_65;
  }

  v74 = v105;
  if ((*(v65 + 48))(&v64[v104] & v103, v109, v105) > 1)
  {
    goto LABEL_60;
  }

  v76 = v64[v110];
  v75 = v76 == 1;
  if (v76 > 1)
  {
    goto LABEL_59;
  }

LABEL_53:
  if (v75)
  {
    (*(v89 + 16))(v72, v64, v90);
    *(v72 + v110) = 1;
  }

  else
  {
    v69(v72, v64, v101);
    *(v72 + v110) = 0;
  }

LABEL_61:
  v77 = ((v72 + v104) & v103);
  v78 = (&v64[v104] & v103);
  if ((*(v65 + 48))(v78, 1, v74))
  {
    memcpy(v77, v78, v95);
  }

  else
  {
    (*(v65 + 16))(v77, v78, v74);
    (*(v65 + 56))(v77, 0, 1, v74);
  }

  *(v77 + v95) = *(v78 + v95);
LABEL_65:
  v79 = *(*(a3 + 16) - 8);
  v80 = v79 + 16;
  v81 = *(v79 + 80);
  v82 = v63 + (v113 & v71) + v81;
  v83 = (v107 + v82) & ~v81;
  v84 = (v54 + v82) & ~v81;
  (*(v79 + 16))(v83, v84);
  v85 = *(v80 + 48) + 7;
  v86 = (v85 + v83) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v85 + v84) & 0xFFFFFFFFFFFFFFF8;
  *v86 = *v87;
  *(v86 + 8) = *(v87 + 8);

  return a1;
}

unsigned __int16 *assignWithCopy for AttributedTextStorage(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    v21 = a1;
    goto LABEL_63;
  }

  v195 = type metadata accessor for AttributedString();
  v4 = *(*(v195 - 8) + 80);
  v190 = *(v195 - 8);
  v192 = ~v4;
  v5 = ((v4 + 16) & ~v4) + *(v190 + 64);
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(v6 - 8);
  v164 = v7;
  v166 = v6;
  v8 = *(v7 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v160 = v10;
  v162 = v9;
  v186 = type metadata accessor for AttributeContainer();
  v11 = *(v186 - 8);
  v12 = *(v11 + 80);
  v13 = v8 | v12;
  v173 = (v13 | 7) + v5;
  v14 = *(v7 + 64);
  if (*(v10 + 64) > v14)
  {
    v14 = *(v10 + 64);
  }

  v188 = v14;
  __n = v14 + 1;
  v177 = v14 + 1 + v12;
  v184 = *(v186 - 8);
  if (*(v11 + 84))
  {
    v15 = *(*(v186 - 8) + 64);
  }

  else
  {
    v15 = *(*(v186 - 8) + 64) + 1;
  }

  v175 = v5;
  v16 = ((v13 + 16) & ~v13) + v15 + (v177 & ~v12) + (v173 & ~(v13 | 7));
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v16 + 1)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(a1 + v17);
  if (v18 >= 2)
  {
    if (v17 <= 3)
    {
      v19 = v17;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v19 == 3)
        {
          v20 = *a1 | (*(a1 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_26;
          }

LABEL_24:
          v18 = v20 + 2;
          goto LABEL_27;
        }

        v20 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      v18 = (v20 | ((v18 - 2) << (8 * v17))) + 2;
      goto LABEL_27;
    }

    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = *a1;
    if (v17 < 4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_27:
  v170 = v15;
  v22 = ~v13;
  v179 = ~v12;

  v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);

  v172 = v23 + v4 + 8;
  (*(v190 + 8))(v172 & v192, v195);
  v168 = ~(v13 | 7);
  if (v18 == 1)
  {

    v24 = a2;
  }

  else
  {

    v25 = (((a1 + v173) & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8;

    v26 = (v13 + v25 + 8) & v22;
    v27 = *(v26 + v188);
    v28 = v27 == 1;
    if (v27 <= 1)
    {
      v29 = v164;
      if (v28)
      {
        v29 = v160;
        v30 = v162;
      }

      else
      {
        v30 = v166;
      }

      (*(v29 + 8))((v13 + v25 + 8) & v22, v30);
    }

    v24 = a2;
    if (!(*(v184 + 48))((v177 + v26) & v179, 1, v186))
    {
      (*(v184 + 8))((v177 + v26) & v179, v186);
    }
  }

  v31 = *(v24 + v17);
  if (v31 < 2)
  {
    goto LABEL_52;
  }

  if (v17 <= 3)
  {
    v32 = v17;
  }

  else
  {
    v32 = 4;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      goto LABEL_52;
    }

    v33 = *v24;
    if (v17 < 4)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (v32 == 2)
  {
    v33 = *v24;
    if (v17 >= 4)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v32 == 3)
    {
      v33 = *v24 | (*(v24 + 2) << 16);
      if (v17 < 4)
      {
        goto LABEL_51;
      }

LABEL_49:
      v31 = v33 + 2;
      goto LABEL_52;
    }

    v33 = *v24;
    if (v17 >= 4)
    {
      goto LABEL_49;
    }
  }

LABEL_51:
  v31 = (v33 | ((v31 - 2) << (8 * v17))) + 2;
LABEL_52:
  *a1 = *v24;
  v34 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v34;
  v35 = v34 + v4 + 8;
  v36 = *(v190 + 16);

  v36(v172 & v192, v35 & v192, v195);
  if (v31 == 1)
  {
    *((a1 + v175 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v24 + v175 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(a1 + v17) = 1;

    v21 = a1;
  }

  else
  {
    v37 = ((a1 + v173) & v168);
    v38 = ((v24 + v173) & v168);
    *v37 = *v38;
    v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
    v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v40;
    v41 = ((v39 + v13 + 8) & v22);
    v42 = ((v40 + v13 + 8) & v22);
    v43 = v42[v188];

    v44 = v43 == 1;
    if (v43 > 1)
    {
      memcpy(v41, v42, __n);
      v45 = v186;
    }

    else
    {
      v45 = v186;
      if (v44)
      {
        (*(v160 + 16))(v41, v42, v162);
        *(v41 + v188) = 1;
      }

      else
      {
        (*(v164 + 16))(v41, v42, v166);
        *(v41 + v188) = 0;
      }
    }

    v46 = ((v41 + v177) & v179);
    v47 = (&v42[v177] & v179);
    if ((*(v184 + 48))(v47, 1, v45))
    {
      v48 = v170;
      memcpy(v46, v47, v170);
    }

    else
    {
      (*(v184 + 16))(v46, v47, v45);
      (*(v184 + 56))(v46, 0, 1, v45);
      v48 = v170;
    }

    *(v46 + v48) = *(v47 + v48);
    v21 = a1;
    *(a1 + v17) = 0;
  }

LABEL_63:
  v49 = *(type metadata accessor for AttributedString() - 8);
  v50 = ((*(v49 + 80) + 16) & ~*(v49 + 80)) + *(v49 + 64);
  v193 = type metadata accessor for AttributedString.Index();
  v51 = *(v193 - 8);
  v52 = *(v51 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v54 = *(v53 - 8);
  v165 = v54;
  v167 = v53;
  v185 = type metadata accessor for AttributeContainer();
  v55 = *(v185 - 8);
  v56 = *(v55 + 80);
  v57 = v52 | v56;
  v58 = v57 | 7;
  v59 = *(v51 + 64);
  v60 = v51;
  if (*(v54 + 64) <= v59)
  {
    v61 = *(v51 + 64);
  }

  else
  {
    v61 = *(v54 + 64);
  }

  v189 = ~v56;
  v163 = v61 + 1;
  v187 = v61 + 1 + v56;
  v62 = v187 & ~v56;
  v191 = *(v185 - 8);
  v63 = *(v55 + 84);
  v64 = *(v191 + 64);
  if (!v63)
  {
    ++v64;
  }

  v171 = v64;
  v65 = v64 + v62 + 1;
  v66 = (((v57 | 7) + v50) & ~(v57 | 7)) + ((v57 + 16) & ~v57) + v65;
  if (((v50 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v66)
  {
    v66 = ((v50 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v67 = v66 + v58 + 1;
  v68 = ((v21 + v67) & ~v58);
  v69 = ((a2 + v67) & ~v58);
  *v68 = *v69;

  v178 = v68;
  v70 = (v68 + v57 + 8) & ~v57;
  v182 = v57 + 8;
  v71 = ((v69 + v57 + 8) & ~v57);
  v72 = v60;
  v73 = *(v60 + 84);
  v176 = v63;
  if (v63)
  {
    v74 = v63 - 1;
  }

  else
  {
    v74 = 0;
  }

  if (v74 <= 0xFD)
  {
    v75 = 253;
  }

  else
  {
    v75 = v74;
  }

  v76 = v59 + v57;
  v169 = v65;
  v180 = v65 + ((v59 + v57) & ~v57);
  v196 = ~v57;
  if (v73 >= v75 - 1)
  {
    __na = v59 + v57;
    v161 = v74;
    v85 = *(v72 + 48);
    v86 = (v69 + v57 + 8) & ~v57;
    v87 = v85(v70, v73, v193);
    v88 = v86;
    v89 = v85(v86, v73, v193);
    v79 = v70;
    if (!v87)
    {
      v83 = v191;
      v77 = v69;
      v71 = v88;
      v80 = v161;
      v81 = __na;
      if (v89)
      {
        goto LABEL_104;
      }

      v84 = ((v71 + __na) & v196);
      goto LABEL_94;
    }

    v83 = v191;
    v77 = v69;
    v71 = v88;
    v80 = v161;
    v81 = __na;
    if (!v89)
    {
      v84 = ((v71 + __na) & v196);
      goto LABEL_144;
    }
  }

  else
  {
    v77 = v69;
    v78 = (v76 + v70) & ~v57;
    v79 = v70;
    v80 = v74;
    v81 = v76;
    if (v74 > 0xFD)
    {
      v83 = v191;
      v92 = v71;
      v93 = (*(v191 + 48))((v187 + v78) & v189, v176, v185);
      v71 = v92;
      if (v93 <= 1)
      {
        v84 = ((v92 + v81) & v196);
        goto LABEL_92;
      }
    }

    else
    {
      v82 = *(v78 + v61);
      v83 = v191;
      if ((v82 - 255) <= 0xFFFFFF02)
      {
        v84 = ((v71 + v76) & v196);
        goto LABEL_90;
      }

      v93 = (v82 ^ 0xFF) + 1;
    }

    v84 = ((v71 + v81) & v196);
    if (v93 < 3)
    {
      if (v80 <= 0xFD)
      {
LABEL_90:
        v94 = v84[v61];
        if ((v94 - 255) >= 0xFFFFFF03)
        {
          v95 = (v94 ^ 0xFF) + 1;
          goto LABEL_93;
        }

        goto LABEL_94;
      }

LABEL_92:
      v96 = v71;
      v95 = (*(v83 + 48))(&v84[v187] & v189, v176, v185);
      v71 = v96;
      if (v95 >= 2)
      {
LABEL_93:
        if (v95 < 3)
        {
          goto LABEL_94;
        }

LABEL_104:
        __src = v71;
        v106 = *(v72 + 8);
        v106(v79, v193);
        v107 = (v79 + v81) & v196;
        if (v80 > 0xFD)
        {
          v125 = *(v83 + 48);
          v110 = v189;
          v109 = v185;
          v91 = v180;
          if (v125((v187 + v107) & v189, v176, v185) <= 1)
          {
            v126 = *(v107 + v61);
            v111 = v126 == 1;
            if (v126 > 1)
            {
              goto LABEL_160;
            }

LABEL_130:
            if (v111)
            {
              (*(v165 + 8))(v107, v167);
            }

            else
            {
              v106(v107, v193);
            }

LABEL_160:
            if (!(*(v191 + 48))((v187 + v107) & v110, 1, v109))
            {
              (*(v191 + 8))((v187 + v107) & v110, v109);
            }
          }
        }

        else
        {
          v108 = *(v107 + v61);
          v91 = v180;
          v109 = v185;
          v110 = v189;
          if (v108 - 255 < 0xFFFFFF03)
          {
            v111 = v108 == 1;
            if (v108 > 1)
            {
              goto LABEL_160;
            }

            goto LABEL_130;
          }
        }

        v90 = v79;
        v71 = __src;
        goto LABEL_163;
      }

LABEL_94:
      (*(v72 + 24))(v79, v71, v193);
      v97 = ((v79 + v81) & v196);
      if (v80 > 0xFD)
      {
        v174 = v61;
        v112 = *(v83 + 48);
        v113 = v112(&v97[v187] & v189, v176, v185);
        v100 = v185;
        v114 = v112(&v84[v187] & v189, v176, v185);
        if (v113 < 2)
        {
          v61 = v174;
          v83 = v191;
          if (v114 > 1)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        }

        v61 = v174;
        v83 = v191;
        if (v114 > 1)
        {
LABEL_141:
          v128 = v97;
LABEL_154:
          memcpy(v128, v84, v169);
LABEL_191:
          v91 = v180;
          goto LABEL_192;
        }

        v98 = v84[v174];
      }

      else
      {
        v98 = v84[v61];
        v99 = v98 - 255;
        v100 = v185;
        if (v97[v61] - 255 < 0xFFFFFF03)
        {
          if (v99 >= 0xFFFFFF03)
          {
LABEL_97:
            v101 = v97[v61];
            v102 = v101 == 1;
            if (v101 <= 1)
            {
              v103 = v165;
              if (v102)
              {
                v104 = v167;
              }

              else
              {
                v103 = v72;
                v104 = v193;
              }

              (*(v103 + 8))(v97, v104);
            }

            v105 = v97;
            if (!(*(v83 + 48))(&v97[v187] & v189, 1, v100))
            {
              (*(v83 + 8))(&v97[v187] & v189, v100);
            }

            goto LABEL_153;
          }

LABEL_110:
          v115 = v97[v61];
          v116 = v84[v61];
          if (v115 > 1)
          {
            if (v116 <= 1)
            {
              if (v116 != 1)
              {
LABEL_183:
                (*(v72 + 16))(v97, v84, v193);
                v97[v61] = 0;
LABEL_184:
                v141 = (&v97[v187] & v189);
                v142 = (&v84[v187] & v189);
                v143 = *(v83 + 48);
                v144 = v143(v141, 1, v100);
                v145 = v143(v142, 1, v100);
                if (v144)
                {
                  v146 = v171;
                  if (!v145)
                  {
                    (*(v191 + 16))(v141, v142, v100);
                    (*(v191 + 56))(v141, 0, 1, v100);
LABEL_190:
                    v141[v146] = v142[v146];
                    goto LABEL_191;
                  }
                }

                else
                {
                  v146 = v171;
                  if (!v145)
                  {
                    (*(v191 + 24))(v141, v142, v100);
                    goto LABEL_190;
                  }

                  (*(v191 + 8))(v141, v100);
                }

                memcpy(v141, v142, v146);
                goto LABEL_190;
              }

LABEL_158:
              (*(v165 + 16))(v97, v84, v167);
              v97[v61] = 1;
              goto LABEL_184;
            }
          }

          else
          {
            if (v116 <= 1)
            {
              if (v97 == v84)
              {
                goto LABEL_184;
              }

              v28 = v115 == 1;
              v117 = v165;
              if (v28)
              {
                v118 = v167;
              }

              else
              {
                v117 = v72;
                v118 = v193;
              }

              (*(v117 + 8))(v97, v118);
              v119 = v84[v61];
              v120 = v119 - 2;
              if (v119 >= 2)
              {
                if (v61 <= 3)
                {
                  v121 = v61;
                }

                else
                {
                  v121 = 4;
                }

                if (v121 <= 1)
                {
                  if (!v121)
                  {
                    goto LABEL_182;
                  }

                  v122 = *v84;
                }

                else if (v121 == 2)
                {
                  v122 = *v84;
                }

                else if (v121 == 3)
                {
                  v122 = *v84 | (v84[2] << 16);
                }

                else
                {
                  v122 = *v84;
                }

                v140 = (v122 | (v120 << (8 * v61))) + 2;
                v119 = v122 + 2;
                if (v61 < 4)
                {
                  v119 = v140;
                }
              }

LABEL_182:
              if (v119 != 1)
              {
                goto LABEL_183;
              }

              goto LABEL_158;
            }

            v28 = v115 == 1;
            v137 = v165;
            if (v28)
            {
              v138 = v167;
            }

            else
            {
              v137 = v72;
              v138 = v193;
            }

            (*(v137 + 8))(v97, v138);
          }

          memcpy(v97, v84, v163);
          goto LABEL_184;
        }

        if (v99 >= 0xFFFFFF03)
        {
          goto LABEL_141;
        }
      }

      v127 = v77;
      if (v98 > 1)
      {
        memcpy(v97, v84, v163);
      }

      else if (v98 == 1)
      {
        (*(v165 + 16))(v97, v84, v167);
        v97[v61] = 1;
      }

      else
      {
        (*(v72 + 16))(v97, v84, v193);
        v97[v61] = 0;
      }

      v135 = (&v97[v187] & v189);
      v136 = (&v84[v187] & v189);
      if ((*(v83 + 48))(v136, 1, v100))
      {
        goto LABEL_172;
      }

      (*(v83 + 16))(v135, v136, v100);
      (*(v83 + 56))(v135, 0, 1, v100);
      goto LABEL_174;
    }

    if (v80 > 0xFD)
    {
      v129 = v71;
      v124 = (*(v83 + 48))(&v84[v187] & v189, v176, v185);
      v71 = v129;
      if (v124 < 2)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v123 = v84[v61];
      if ((v123 - 255) < 0xFFFFFF03)
      {
        goto LABEL_144;
      }

      v124 = (v123 ^ 0xFF) + 1;
    }

    if (v124 < 3)
    {
LABEL_144:
      v130 = *(v72 + 16);
      v130(v79, v71, v193);
      v105 = ((v79 + v81) & v196);
      if (v80 > 0xFD)
      {
        v134 = *(v83 + 48);
        v133 = v189;
        v132 = v185;
        if (v134(&v84[v187] & v189, v176, v185) <= 1)
        {
          v131 = v84[v61];
LABEL_149:
          v127 = v77;
          if (v131 > 1)
          {
            memcpy(v105, v84, v163);
          }

          else if (v131 == 1)
          {
            (*(v165 + 16))(v105, v84, v167);
            *(v105 + v61) = 1;
          }

          else
          {
            v130(v105, v84, v193);
            *(v105 + v61) = 0;
          }

          v135 = ((v105 + v187) & v133);
          v136 = (&v84[v187] & v133);
          if ((*(v191 + 48))(v136, 1, v132))
          {
LABEL_172:
            v139 = v171;
            memcpy(v135, v136, v171);
LABEL_175:
            *(v135 + v139) = *(v136 + v139);
            v77 = v127;
            goto LABEL_191;
          }

          (*(v191 + 16))(v135, v136, v132);
          (*(v191 + 56))(v135, 0, 1, v132);
LABEL_174:
          v139 = v171;
          goto LABEL_175;
        }
      }

      else
      {
        v131 = v84[v61];
        v132 = v185;
        v133 = v189;
        if (v131 - 255 < 0xFFFFFF03)
        {
          goto LABEL_149;
        }
      }

LABEL_153:
      v128 = v105;
      goto LABEL_154;
    }
  }

  v90 = v79;
  v91 = v180;
LABEL_163:
  memcpy(v90, v71, v91);
LABEL_192:
  v147 = *(*(a3 + 16) - 8);
  v148 = v147 + 24;
  v149 = *(v147 + 80);
  v150 = v91 + (v182 & v196) + v149;
  v151 = (v178 + v150) & ~v149;
  v152 = (v77 + v150) & ~v149;
  (*(v147 + 24))(v151, v152);
  v153 = *(v148 + 40) + 7;
  v154 = (v153 + v151) & 0xFFFFFFFFFFFFFFF8;
  v155 = (v153 + v152) & 0xFFFFFFFFFFFFFFF8;
  *v154 = *v155;

  *(v154 + 8) = *(v155 + 8);
  return a1;
}

void *initializeWithTake for AttributedTextStorage(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v91 = type metadata accessor for AttributedString();
  v4 = *(v91 - 8);
  v5 = *(v4 + 80);
  v6 = ((v5 + 16) & ~v5) + *(v4 + 64);
  v89 = type metadata accessor for AttributedString.Index();
  v7 = *(v89 - 8);
  v98 = v7;
  v8 = *(v7 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v79 = v10;
  v80 = v9;
  v11 = type metadata accessor for AttributeContainer();
  v12 = a2;
  v95 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 80);
  v15 = v8 | v14;
  v16 = v15 | 7;
  v19 = *(v10 + 64);
  v85 = *(v7 + 64);
  if (v19 <= v85)
  {
    v19 = *(v7 + 64);
  }

  v97 = v19;
  __n = v19 + 1;
  v93 = v19 + 1 + v14;
  v94 = *(v11 - 8);
  v96 = *(v13 + 84);
  if (v96)
  {
    v20 = *(*(v11 - 8) + 64);
  }

  else
  {
    v20 = *(*(v11 - 8) + 64) + 1;
  }

  v83 = v6;
  v84 = v20;
  v21 = v20 + (v93 & ~v14) + 1;
  v90 = v21;
  v17 = ((v15 | 7) + v6) & ~(v15 | 7);
  v18 = (v15 + 16) & ~v15;
  if (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v17 + v18 + v21)
  {
    v22 = v17 + v18 + v21;
  }

  else
  {
    v22 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v23 = v12[v22];
  v82 = (v15 | 7) + v6;
  if (v23 < 2)
  {
    v26 = a1;
    v27 = v91;
    v28 = ~v5;
    goto LABEL_25;
  }

  if (v22 <= 3)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (v24 <= 1)
  {
    v26 = a1;
    v27 = v91;
    v28 = ~v5;
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = *v12;
    if (v22 >= 4)
    {
      goto LABEL_24;
    }

LABEL_20:
    v23 = (v25 | ((v23 - 2) << (8 * v22))) + 2;
    goto LABEL_25;
  }

  if (v24 == 2)
  {
    v25 = *v12;
  }

  else if (v24 == 3)
  {
    v25 = *v12 | (v12[2] << 16);
  }

  else
  {
    v25 = *v12;
  }

  v26 = a1;
  v27 = v91;
  v28 = ~v5;
  if (v22 < 4)
  {
    goto LABEL_20;
  }

LABEL_24:
  v23 = v25 + 2;
LABEL_25:
  v29 = ~v16;
  v30 = ~v15;
  v92 = ~v14;
  *v26 = *v12;
  v31 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = v12;
  (*(v4 + 32))((v31 + v5 + 8) & v28, (v32 + v5 + 8) & v28, v27);
  v86 = ~v15;
  if (v23 == 1)
  {
    *((v26 + v83 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v33[v83 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(v26 + v22) = 1;
    v34 = v15 + 8;
  }

  else
  {
    v35 = ((v26 + v82) & v29);
    v36 = (&v33[v82] & v29);
    *v35 = *v36;
    v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    v39 = ((v37 + v15 + 8) & v30);
    v40 = (v38 + v15 + 8) & v30;
    v41 = *(v40 + v97);
    if (v41 > 1)
    {
      memcpy(v39, ((v38 + v15 + 8) & v30), __n);
    }

    else if (v41 == 1)
    {
      (*(v79 + 32))(v39, v40, v80);
      *(v39 + v97) = 1;
    }

    else
    {
      (*(v98 + 32))(v39, v40, v89);
      *(v39 + v97) = 0;
    }

    v42 = ((v39 + v93) & v92);
    v43 = ((v93 + v40) & v92);
    if ((*(v94 + 48))(v43, 1, v95))
    {
      v44 = v84;
      memcpy(v42, v43, v84);
    }

    else
    {
      (*(v94 + 32))(v42, v43, v95);
      (*(v94 + 56))(v42, 0, 1, v95);
      v44 = v84;
    }

    *(v42 + v44) = *(v43 + v44);
    *(v26 + v22) = 0;
    v34 = v15 + 8;
  }

  v45 = v22 + 1;
  v46 = ((v26 + v16 + v22 + 1) & v29);
  v47 = (&v33[v16 + v45] & v29);
  *v46 = *v47;
  v48 = ((v46 + v34) & v86);
  v49 = ((v47 + v34) & v86);
  if (v96)
  {
    v50 = v96 - 1;
  }

  else
  {
    v50 = 0;
  }

  if (v50 <= 0xFD)
  {
    v51 = 253;
  }

  else
  {
    v51 = v50;
  }

  v52 = v85 + v15;
  if (*(v98 + 84) >= (v51 - 1))
  {
    if (!(*(v98 + 48))((v47 + v34) & v86))
    {
      v53 = ((v49 + v52) & v86);
      goto LABEL_50;
    }
  }

  else
  {
    v53 = ((v49 + v52) & v86);
    if (v50 > 0xFD)
    {
      v55 = (*(v94 + 48))(&v53[v93] & v92, v96, v95);
      if (v55 < 2)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v54 = v53[v97];
      if ((v54 - 255) < 0xFFFFFF03)
      {
        goto LABEL_50;
      }

      v55 = (v54 ^ 0xFF) + 1;
    }

    if (v55 < 3)
    {
LABEL_50:
      v88 = v34;
      v56 = *(v98 + 32);
      v56(v48, v49, v89);
      v57 = ((v48 + v52) & v86);
      if (v50 > 0xFD)
      {
        v61 = v94;
        v60 = v95;
        v59 = a1;
        if ((*(v94 + 48))(&v53[v93] & v92, v96, v95) <= 1)
        {
          v64 = v53[v97];
          v62 = v64 == 1;
          if (v64 <= 1)
          {
LABEL_53:
            if (v62)
            {
              (*(v79 + 32))(v57, v53, v80);
              v57[v97] = 1;
            }

            else
            {
              v56(v57, v53, v89);
              v57[v97] = 0;
            }

LABEL_61:
            v65 = (&v57[v93] & v92);
            v66 = (&v53[v93] & v92);
            if ((*(v61 + 48))(v66, 1, v60))
            {
              v67 = v84;
              memcpy(v65, v66, v84);
            }

            else
            {
              (*(v61 + 32))(v65, v66, v60);
              (*(v61 + 56))(v65, 0, 1, v60);
              v67 = v84;
            }

            v34 = v88;
            *(v65 + v67) = *(v66 + v67);
            v59 = a1;
            goto LABEL_65;
          }

LABEL_59:
          memcpy(v57, v53, __n);
          goto LABEL_61;
        }
      }

      else
      {
        v58 = v53[v97];
        v59 = a1;
        v61 = v94;
        v60 = v95;
        if (v58 - 255 < 0xFFFFFF03)
        {
          v62 = v58 == 1;
          if (v58 <= 1)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }
      }

      memcpy(v57, v53, v90);
      v34 = v88;
LABEL_65:
      v63 = v90 + (v52 & v86);
      goto LABEL_66;
    }
  }

  v63 = v90 + (v52 & v86);
  memcpy(v48, v49, v63);
  v59 = a1;
LABEL_66:
  v68 = v63 + (v34 & v86);
  v69 = *(*(a3 + 16) - 8);
  v70 = v69 + 32;
  v71 = *(v69 + 80);
  v72 = v68 + v71;
  v73 = (v46 + v72) & ~v71;
  v74 = (v47 + v72) & ~v71;
  (*(v69 + 32))(v73, v74);
  v75 = *(v70 + 32) + 7;
  v76 = (v75 + v73) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v75 + v74) & 0xFFFFFFFFFFFFFFF8;
  *v76 = *v77;
  *(v76 + 8) = *(v77 + 8);
  return v59;
}

unsigned __int8 *assignWithTake for AttributedTextStorage(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_62;
  }

  v203 = type metadata accessor for AttributedString();
  v192 = *(v203 - 8);
  v199 = *(v192 + 80);
  v201 = ~v199;
  v4 = ((v199 + 16) & ~v199) + *(v192 + 64);
  v5 = type metadata accessor for AttributedString.Index();
  v6 = *(v5 - 8);
  v170 = v6;
  v172 = v5;
  v7 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v9 = *(v8 - 8);
  v166 = v9;
  v168 = v8;
  v10 = *(v9 + 80);
  v190 = type metadata accessor for AttributeContainer();
  v11 = *(v190 - 8);
  v12 = v6;
  v13 = *(v11 + 80);
  v14 = v10 | v7 | *(v11 + 80);
  v15 = a1;
  v181 = (v14 | 7) + v4;
  v16 = *(v12 + 64);
  if (*(v9 + 64) > v16)
  {
    v16 = *(v9 + 64);
  }

  v197 = v16;
  __n = v16 + 1;
  v183 = v16 + 1 + v13;
  v195 = *(v190 - 8);
  if (*(v11 + 84))
  {
    v17 = *(*(v190 - 8) + 64);
  }

  else
  {
    v17 = *(*(v190 - 8) + 64) + 1;
  }

  v188 = v4;
  v18 = ((v14 + 16) & ~v14) + v17 + (v183 & ~v13) + (v181 & ~(v14 | 7));
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v20 = a1[v19];
  if (v20 < 2)
  {
    v23 = v192;
    goto LABEL_26;
  }

  if (v19 <= 3)
  {
    v21 = v19;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    v23 = v192;
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = *a1;
    if (v19 >= 4)
    {
      goto LABEL_25;
    }

LABEL_21:
    v20 = (v22 | ((v20 - 2) << (8 * v19))) + 2;
    goto LABEL_26;
  }

  if (v21 == 2)
  {
    v22 = *a1;
  }

  else if (v21 == 3)
  {
    v22 = *a1 | (a1[2] << 16);
  }

  else
  {
    v22 = *a1;
  }

  v23 = v192;
  if (v19 < 4)
  {
    goto LABEL_21;
  }

LABEL_25:
  v20 = v22 + 2;
LABEL_26:
  v176 = v17;
  v24 = ~(v14 | 7);
  v25 = ~v14;
  v193 = ~v13;

  v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);

  v178 = v26 + v199 + 8;
  (*(v23 + 8))(v178 & v201, v203);
  v174 = ~v14;
  if (v20 == 1)
  {

    v27 = v190;
    v28 = a2;
  }

  else
  {

    v29 = ((&a1[v181] & v24) + 15) & 0xFFFFFFFFFFFFFFF8;

    v30 = (v14 + v29 + 8) & v25;
    v31 = *(v30 + v197);
    v32 = v31 == 1;
    if (v31 <= 1)
    {
      v33 = v170;
      if (v32)
      {
        v33 = v166;
        v34 = v168;
      }

      else
      {
        v34 = v172;
      }

      (*(v33 + 8))((v14 + v29 + 8) & v25, v34);
    }

    v35 = v183 + v30;
    v27 = v190;
    v15 = a1;
    v24 = ~(v14 | 7);
    v28 = a2;
    if (!(*(v195 + 48))(v35 & v193, 1, v190))
    {
      (*(v195 + 8))(v35 & v193, v190);
    }
  }

  v36 = v28[v19];
  if (v36 < 2)
  {
    goto LABEL_51;
  }

  if (v19 <= 3)
  {
    v37 = v19;
  }

  else
  {
    v37 = 4;
  }

  if (v37 <= 1)
  {
    if (!v37)
    {
      goto LABEL_51;
    }

    v38 = *v28;
    if (v19 < 4)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (v37 == 2)
  {
    v38 = *v28;
    if (v19 >= 4)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v37 == 3)
    {
      v38 = *v28 | (v28[2] << 16);
      if (v19 < 4)
      {
        goto LABEL_50;
      }

LABEL_48:
      v36 = v38 + 2;
      goto LABEL_51;
    }

    v38 = *v28;
    if (v19 >= 4)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  v36 = (v38 | ((v36 - 2) << (8 * v19))) + 2;
LABEL_51:
  *v15 = *v28;
  v39 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v39;
  (*(v23 + 32))(v178 & v201, (v39 + v199 + 8) & v201, v203);
  if (v36 == 1)
  {
    *(&v15[v188 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v28[v188 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15[v19] = 1;
  }

  else
  {
    v40 = (&v15[v181] & v24);
    v41 = (&v28[v181] & v24);
    *v40 = *v41;
    v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
    v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v42 = *v43;
    v44 = ((v42 + v14 + 8) & v174);
    v45 = (v43 + v14 + 8) & v174;
    v46 = *(v45 + v197);
    if (v46 > 1)
    {
      memcpy(v44, ((v43 + v14 + 8) & v174), __n);
    }

    else if (v46 == 1)
    {
      (*(v166 + 32))(v44, v45, v168);
      *(v44 + v197) = 1;
    }

    else
    {
      (*(v170 + 32))(v44, v45, v172);
      *(v44 + v197) = 0;
    }

    v47 = ((v44 + v183) & v193);
    v48 = ((v183 + v45) & v193);
    if ((*(v195 + 48))(v48, 1, v27))
    {
      v49 = v176;
      memcpy(v47, v48, v176);
    }

    else
    {
      (*(v195 + 32))(v47, v48, v27);
      (*(v195 + 56))(v47, 0, 1, v27);
      v49 = v176;
    }

    *(v47 + v49) = *(v48 + v49);
    v15[v19] = 0;
  }

LABEL_62:
  v50 = *(type metadata accessor for AttributedString() - 8);
  v51 = ((*(v50 + 80) + 16) & ~*(v50 + 80)) + *(v50 + 64);
  v52 = type metadata accessor for AttributedString.Index();
  v53 = *(v52 - 8);
  v54 = v53;
  v55 = *(v53 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v57 = *(v56 - 8);
  v169 = v57;
  v171 = v56;
  v196 = type metadata accessor for AttributeContainer();
  v58 = *(v196 - 8);
  v59 = *(v58 + 80);
  v60 = v55 | v59;
  v61 = v60 | 7;
  v62 = ~v60;
  v63 = *(v53 + 64);
  v64 = *(v57 + 64);
  if (v64 <= v63)
  {
    v64 = *(v53 + 64);
  }

  v194 = v64;
  v202 = ~v59;
  v167 = v64 + 1;
  v198 = v64 + 1 + v59;
  v200 = *(v196 - 8);
  v65 = v198 & ~v59;
  v66 = *(v58 + 84);
  v67 = *(v200 + 64);
  if (!v66)
  {
    ++v67;
  }

  v175 = v67;
  v68 = v67 + v65 + 1;
  v69 = (((v60 | 7) + v51) & ~(v60 | 7)) + ((v60 + 16) & ~v60) + v68;
  if (((v51 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v69)
  {
    v69 = ((v51 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v70 = v69 + v61 + 1;
  v71 = (&a1[v70] & ~v61);
  v72 = (&a2[v70] & ~v61);
  *v71 = *v72;

  v182 = v71;
  v73 = (v71 + v60 + 8) & ~v60;
  v186 = v60 + 8;
  v74 = ((v72 + v60 + 8) & ~v60);
  v75 = *(v54 + 84);
  v177 = v66;
  if (v66)
  {
    v76 = v66 - 1;
  }

  else
  {
    v76 = 0;
  }

  if (v76 <= 0xFD)
  {
    v77 = 253;
  }

  else
  {
    v77 = v76;
  }

  v78 = v63 + v60;
  v173 = v68;
  v184 = v68 + ((v63 + v60) & ~v60);
  v189 = v52;
  v191 = v54;
  v204 = ~v60;
  v179 = v73;
  if (v75 >= v77 - 1)
  {
    __na = v76;
    v84 = v63 + v60;
    v85 = v72;
    v86 = *(v54 + 48);
    v87 = (v72 + v60 + 8) & ~v60;
    v88 = v86();
    v89 = (v86)(v87, v75, v52);
    if (!v88)
    {
      v79 = v85;
      v81 = v194;
      v74 = v87;
      v78 = v84;
      v76 = __na;
      if (!v89)
      {
        v83 = ((v78 + v87) & v204);
        goto LABEL_92;
      }

      goto LABEL_102;
    }

    v79 = v85;
    v74 = v87;
    v78 = v84;
    v76 = __na;
    if (!v89)
    {
      v83 = ((v78 + v87) & v204);
      goto LABEL_141;
    }
  }

  else
  {
    v79 = v72;
    v80 = (v78 + v73) & v62;
    if (v76 > 0xFD)
    {
      v92 = v78;
      v93 = v74;
      v94 = (*(v200 + 48))((v198 + v80) & v202, v177, v196);
      v74 = v93;
      v78 = v92;
      v81 = v194;
      if (v94 <= 1)
      {
        v83 = ((v74 + v92) & v204);
        goto LABEL_90;
      }
    }

    else
    {
      v81 = v194;
      v82 = *(v80 + v194);
      if ((v82 - 255) <= 0xFFFFFF02)
      {
        v83 = ((v74 + v78) & v204);
LABEL_88:
        v95 = v83[v81];
        if ((v95 - 255) < 0xFFFFFF03)
        {
          goto LABEL_92;
        }

        v96 = (v95 ^ 0xFF) + 1;
        goto LABEL_91;
      }

      v94 = (v82 ^ 0xFF) + 1;
    }

    v83 = ((v74 + v78) & v204);
    if (v94 < 3)
    {
      if (v76 <= 0xFD)
      {
        goto LABEL_88;
      }

LABEL_90:
      v97 = v78;
      v98 = v74;
      v96 = (*(v200 + 48))(&v83[v198] & v202, v177, v196);
      v74 = v98;
      v78 = v97;
      if (v96 < 2)
      {
        goto LABEL_92;
      }

LABEL_91:
      if (v96 < 3)
      {
LABEL_92:
        (*(v191 + 40))(v179, v74, v189);
        v99 = ((v179 + v78) & v204);
        if (v76 > 0xFD)
        {
          v180 = ((v179 + v78) & v204);
          v117 = *(v200 + 48);
          v102 = v196;
          v118 = v117(&v99[v198] & v202, v177, v196);
          v119 = v117(&v83[v198] & v202, v177, v196);
          if (v118 < 2)
          {
            v103 = v202;
            v99 = v180;
            v81 = v194;
            if (v119 > 1)
            {
              goto LABEL_95;
            }

            goto LABEL_108;
          }

          v131 = v202;
          v99 = v180;
          v81 = v194;
          if (v119 <= 1)
          {
            v133 = v83[v194];
            v132 = v133 == 1;
            if (v133 <= 1)
            {
LABEL_133:
              if (v132)
              {
                (*(v169 + 32))(v99, v83, v171);
                v99[v81] = 1;
              }

              else
              {
                (*(v191 + 32))(v99, v83, v189);
                v99[v81] = 0;
              }

              goto LABEL_165;
            }

LABEL_138:
            memcpy(v99, v83, v167);
LABEL_165:
            v143 = (&v99[v198] & v131);
            v144 = (&v83[v198] & v131);
            if ((*(v200 + 48))(v144, 1, v102))
            {
              goto LABEL_166;
            }

            (*(v200 + 32))(v143, v144, v102);
            (*(v200 + 56))(v143, 0, 1, v102);
            v145 = v175;
            goto LABEL_183;
          }
        }

        else
        {
          v100 = v83[v81];
          v101 = v100 - 255;
          v102 = v196;
          if (v99[v81] - 255 < 0xFFFFFF03)
          {
            v103 = v202;
            if (v101 >= 0xFFFFFF03)
            {
LABEL_95:
              v104 = v99[v81];
              v105 = v104 == 1;
              v106 = v104 > 1;
              v107 = v191;
              if (!v106)
              {
                if (v105)
                {
                  v107 = v169;
                  v108 = v171;
                }

                else
                {
                  v108 = v189;
                }

                (*(v107 + 8))(v99, v108);
              }

              if (!(*(v200 + 48))(&v99[v198] & v103, 1, v102))
              {
                (*(v200 + 8))(&v99[v198] & v103, v102);
              }

              goto LABEL_150;
            }

LABEL_108:
            v120 = v99[v81];
            v121 = v83[v81];
            if (v120 > 1)
            {
              if (v121 <= 1)
              {
                if (v121 != 1)
                {
LABEL_175:
                  (*(v191 + 32))(v99, v83, v189);
                  v99[v81] = 0;
                  goto LABEL_176;
                }

                goto LABEL_153;
              }
            }

            else
            {
              if (v121 <= 1)
              {
                if (v99 == v83)
                {
LABEL_176:
                  v143 = (&v99[v198] & v103);
                  v144 = (&v83[v198] & v103);
                  v151 = *(v200 + 48);
                  v152 = v151(v143, 1, v102);
                  v153 = v151(v144, 1, v102);
                  if (v152)
                  {
                    v145 = v175;
                    if (!v153)
                    {
                      (*(v200 + 32))(v143, v144, v102);
                      (*(v200 + 56))(v143, 0, 1, v102);
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    v145 = v175;
                    if (!v153)
                    {
                      (*(v200 + 40))(v143, v144, v102);
                      goto LABEL_183;
                    }

                    (*(v200 + 8))(v143, v102);
                  }

                  v148 = v143;
                  v149 = v144;
LABEL_182:
                  memcpy(v148, v149, v145);
                  goto LABEL_183;
                }

                v32 = v120 == 1;
                v122 = v191;
                if (v32)
                {
                  v122 = v169;
                  v123 = v171;
                }

                else
                {
                  v123 = v189;
                }

                (*(v122 + 8))(v99, v123);
                v124 = v83[v81];
                v125 = v124 - 2;
                if (v124 < 2)
                {
                  goto LABEL_174;
                }

                if (v81 <= 3)
                {
                  v126 = v81;
                }

                else
                {
                  v126 = 4;
                }

                if (v126 <= 1)
                {
                  if (!v126)
                  {
                    goto LABEL_174;
                  }

                  v127 = *v83;
                }

                else if (v126 == 2)
                {
                  v127 = *v83;
                }

                else if (v126 == 3)
                {
                  v127 = *v83 | (v83[2] << 16);
                }

                else
                {
                  v127 = *v83;
                }

                v150 = (v127 | (v125 << (8 * v81))) + 2;
                v124 = v127 + 2;
                if (v81 < 4)
                {
                  v124 = v150;
                }

LABEL_174:
                if (v124 != 1)
                {
                  goto LABEL_175;
                }

LABEL_153:
                (*(v169 + 32))(v99, v83, v171);
                v99[v81] = 1;
                goto LABEL_176;
              }

              v32 = v120 == 1;
              v146 = v191;
              if (v32)
              {
                v146 = v169;
                v147 = v171;
              }

              else
              {
                v147 = v189;
              }

              (*(v146 + 8))(v99, v147);
            }

            memcpy(v99, v83, v167);
            goto LABEL_176;
          }

          v131 = v202;
          if (v101 < 0xFFFFFF03)
          {
            v132 = v100 == 1;
            if (v100 <= 1)
            {
              goto LABEL_133;
            }

            goto LABEL_138;
          }
        }

LABEL_150:
        memcpy(v99, v83, v173);
LABEL_184:
        v91 = v184;
        goto LABEL_185;
      }

LABEL_102:
      v109 = v74;
      v110 = *(v191 + 8);
      v110(v179, v189);
      v111 = (v179 + v78) & v204;
      if (v76 > 0xFD)
      {
        v115 = v200;
        v114 = v202;
        v112 = v196;
        v91 = v184;
        if ((*(v200 + 48))((v198 + v111) & v202, v177, v196) <= 1)
        {
          v130 = *(v111 + v194);
          v116 = v130 == 1;
          if (v130 > 1)
          {
            goto LABEL_154;
          }

LABEL_128:
          if (v116)
          {
            (*(v169 + 8))(v111, v171);
          }

          else
          {
            v110(v111, v189);
          }

LABEL_154:
          if (!(*(v115 + 48))((v198 + v111) & v114, 1, v112))
          {
            (*(v115 + 8))((v198 + v111) & v114, v112);
          }
        }
      }

      else
      {
        v112 = v196;
        v113 = *(v111 + v194);
        v91 = v184;
        v115 = v200;
        v114 = v202;
        if (v113 - 255 < 0xFFFFFF03)
        {
          v116 = v113 == 1;
          if (v113 > 1)
          {
            goto LABEL_154;
          }

          goto LABEL_128;
        }
      }

      v90 = v179;
      v74 = v109;
      goto LABEL_157;
    }

    if (v76 > 0xFD)
    {
      v134 = v78;
      v135 = v74;
      v129 = (*(v200 + 48))(&v83[v198] & v202, v177, v196);
      v74 = v135;
      v78 = v134;
      if (v129 < 2)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v128 = v83[v81];
      if ((v128 - 255) < 0xFFFFFF03)
      {
        goto LABEL_141;
      }

      v129 = (v128 ^ 0xFF) + 1;
    }

    if (v129 < 3)
    {
LABEL_141:
      v136 = *(v191 + 32);
      v136(v179, v74, v189);
      v99 = ((v179 + v78) & v204);
      if (v76 > 0xFD)
      {
        v139 = v200;
        v137 = v196;
        if ((*(v200 + 48))(&v83[v198] & v202, v177, v196) > 1)
        {
          goto LABEL_150;
        }

        v142 = v83[v194];
        v140 = v142 == 1;
        if (v142 <= 1)
        {
LABEL_144:
          v141 = v202;
          if (v140)
          {
            (*(v169 + 32))(v99, v83, v171);
            v99[v194] = 1;
          }

          else
          {
            v136(v99, v83, v189);
            v99[v194] = 0;
          }

          goto LABEL_158;
        }
      }

      else
      {
        v137 = v196;
        v138 = v83[v194];
        v139 = v200;
        if (v138 - 255 >= 0xFFFFFF03)
        {
          goto LABEL_150;
        }

        v140 = v138 == 1;
        if (v138 <= 1)
        {
          goto LABEL_144;
        }
      }

      memcpy(v99, v83, v167);
      v141 = v202;
LABEL_158:
      v143 = (&v99[v198] & v141);
      v144 = (&v83[v198] & v141);
      if ((*(v139 + 48))(v144, 1, v137))
      {
LABEL_166:
        v148 = v143;
        v149 = v144;
        v145 = v175;
        goto LABEL_182;
      }

      (*(v139 + 32))(v143, v144, v137);
      (*(v139 + 56))(v143, 0, 1, v137);
      v145 = v175;
LABEL_183:
      *(v143 + v145) = *(v144 + v145);
      goto LABEL_184;
    }
  }

  v90 = v179;
  v91 = v184;
LABEL_157:
  memcpy(v90, v74, v91);
LABEL_185:
  v154 = *(*(a3 + 16) - 8);
  v155 = v154 + 40;
  v156 = *(v154 + 80);
  v157 = v91 + (v186 & v204) + v156;
  v158 = (v182 + v157) & ~v156;
  v159 = (v79 + v157) & ~v156;
  (*(v154 + 40))(v158, v159);
  v160 = *(v155 + 24) + 7;
  v161 = (v160 + v158) & 0xFFFFFFFFFFFFFFF8;
  v162 = (v160 + v159) & 0xFFFFFFFFFFFFFFF8;
  *v161 = *v162;

  *(v161 + 8) = *(v162 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedTextStorage(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(type metadata accessor for AttributedString() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v59 = type metadata accessor for AttributedString.Index();
  v7 = *(v59 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(type metadata accessor for AttributeContainer() - 8);
  v14 = v13;
  v16 = *(v13 + 80);
  v15 = *(v13 + 84);
  v17 = *(v7 + 64);
  if (*(v11 + 64) <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v11 + 64);
  }

  v19 = *(v13 + 64);
  v20 = *(v8 + 84);
  if (v15)
  {
    v21 = v15 - 1;
  }

  else
  {
    v21 = 0;
  }

  if (v21 <= 0xFD)
  {
    v22 = 253;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 - 1;
  if (v22 - 1 <= v20)
  {
    v24 = *(v8 + 84);
  }

  else
  {
    v24 = v22 - 1;
  }

  v25 = v24 - 1;
  if ((v24 - 1) <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v24 - 1;
  }

  v27 = *(*(a3 + 16) - 8);
  v28 = *(v27 + 84);
  v29 = *(v27 + 80);
  v30 = v16;
  v31 = v12 | v9 | v16;
  v32 = v31 | 7;
  v33 = ((v31 | 7) + v6) & ~(v31 | 7);
  if (v28 <= v26)
  {
    v34 = v26;
  }

  else
  {
    v34 = *(v27 + 84);
  }

  v35 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v36 = v18 + v30 + 1;
  if (!v15)
  {
    ++v19;
  }

  v37 = v19 + (v36 & ~v30) + 1;
  v38 = v33 + ((v31 + 16) & ~v31) + v37;
  if (v35 > v38)
  {
    v38 = v35;
  }

  if (!a2)
  {
    return 0;
  }

  v39 = v38 + v32 + 1;
  v40 = v17 + v31;
  v41 = ((v31 + 8) & ~v31) + ((v17 + v31) & ~v31) + v37 + v29;
  if (v34 >= a2)
  {
    goto LABEL_47;
  }

  v42 = ((*(v27 + 64) + ((v41 + (v39 & ~v32)) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v43 = (a2 - v34 + 255) >> 8;
  if (v42 <= 3)
  {
    v44 = v43 + 1;
  }

  else
  {
    v44 = 2;
  }

  if (v44 >= 0x10000)
  {
    v45 = 4;
  }

  else
  {
    v45 = 2;
  }

  if (v44 < 0x100)
  {
    v45 = 1;
  }

  if (v44 >= 2)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (v46 > 1)
  {
    if (v46 == 2)
    {
      v47 = *&a1[v42];
      if (!*&a1[v42])
      {
        goto LABEL_47;
      }
    }

    else
    {
      v47 = *&a1[v42];
      if (!v47)
      {
        goto LABEL_47;
      }
    }

LABEL_43:
    v49 = (v47 - 1) << (8 * v42);
    if (v42 <= 3)
    {
      v50 = *a1;
    }

    else
    {
      v49 = 0;
      v50 = *a1;
    }

    return v34 + (v50 | v49) + 1;
  }

  if (v46)
  {
    v47 = a1[v42];
    if (a1[v42])
    {
      goto LABEL_43;
    }
  }

LABEL_47:
  v51 = (&a1[v39] & ~v32);
  if (v26 >= v28)
  {
    if (v25 < 0)
    {
      if (v20 >= v23)
      {
        v57 = (*(v8 + 48))((v51 + v31 + 8) & ~v31, v20, v59, v27);
      }

      else
      {
        v54 = (v40 + ((v51 + v31 + 8) & ~v31)) & ~v31;
        if (v21 > 0xFD)
        {
          v56 = (*(v14 + 48))((v36 + v54) & ~v30);
        }

        else
        {
          v55 = *(v54 + v18);
          if (v55 >= 2)
          {
            v56 = (v55 ^ 0xFF) + 1;
          }

          else
          {
            v56 = 0;
          }
        }

        v58 = v56 - 1;
        if (v56 < 2)
        {
          v58 = 0;
        }

        if (v58 >= 2)
        {
          v57 = v58 - 1;
        }

        else
        {
          v57 = 0;
        }
      }

      if (v57 >= 2)
      {
        return v57 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v53 = *v51;
      if (*v51 >= 0xFFFFFFFF)
      {
        LODWORD(v53) = -1;
      }

      return (v53 + 1);
    }
  }

  else
  {
    v52 = *(v27 + 48);

    return v52((v51 + v41) & ~v29, v28);
  }
}

void storeEnumTagSinglePayload for AttributedTextStorage(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64);
  v70 = type metadata accessor for AttributedString.Index();
  v8 = *(v70 - 8);
  v73 = v8;
  v9 = *(v8 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = 0;
  v14 = *(type metadata accessor for AttributeContainer() - 8);
  v15 = v14;
  v17 = *(v14 + 80);
  v16 = *(v14 + 84);
  v18 = *(v8 + 64);
  if (*(v11 + 64) <= v18)
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v11 + 64);
  }

  v20 = *(v14 + 64);
  v21 = *(v8 + 84);
  if (v16)
  {
    v22 = v16 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= 0xFD)
  {
    v23 = 253;
  }

  else
  {
    v23 = v22;
  }

  v69 = v23;
  v24 = v23 - 1;
  if (v23 - 1 <= v21)
  {
    v25 = *(v8 + 84);
  }

  else
  {
    v25 = v23 - 1;
  }

  v71 = v25;
  v26 = v25 - 1;
  if (v25 - 1 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v25 - 1;
  }

  v28 = *(*(a4 + 16) - 8);
  v29 = *(v28 + 84);
  v30 = *(v28 + 80);
  v31 = v17;
  v32 = v12 | v9 | v17;
  v33 = v32 | 7;
  v68 = v19;
  v34 = v19 + 1;
  if (v29 <= v27)
  {
    v35 = v27;
  }

  else
  {
    v35 = *(v28 + 84);
  }

  v36 = (v34 + v17) & ~v17;
  if (v16)
  {
    v37 = v20;
  }

  else
  {
    v37 = v20 + 1;
  }

  v38 = v36 + v37;
  v39 = v36 + v37 + 1;
  v40 = (((v32 | 7) + v7) & ~(v32 | 7)) + ((v32 + 16) & ~v32) + v39;
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v40)
  {
    v40 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v41 = v40 + v33 + 1;
  v42 = v18 + v32;
  v43 = v39 + ((v18 + v32) & ~v32);
  v44 = v43 + ((v32 + 8) & ~v32);
  v45 = ((*(v28 + 64) + ((v44 + v30 + (v41 & ~v33)) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v35 < a3)
  {
    if (v45 <= 3)
    {
      v46 = ((a3 - v35 + 255) >> 8) + 1;
    }

    else
    {
      v46 = 2;
    }

    if (v46 >= 0x10000)
    {
      v47 = 4;
    }

    else
    {
      v47 = 2;
    }

    if (v46 < 0x100)
    {
      v47 = 1;
    }

    if (v46 >= 2)
    {
      v13 = v47;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v35 >= a2)
  {
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *&a1[v45] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_54;
      }

      *&a1[v45] = 0;
    }

    else if (v13)
    {
      a1[v45] = 0;
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
    v50 = ~v33;
    v51 = &a1[v41] & ~v33;
    if (v27 < v29)
    {
      v52 = *(v28 + 56);

      v52((v44 + v30 + v51) & ~v30, a2, v29);
      return;
    }

    if (v27 < a2)
    {
      if (v44 <= 3)
      {
        v53 = ~(-1 << (8 * v44));
      }

      else
      {
        v53 = -1;
      }

      if (!v44)
      {
        return;
      }

      v54 = v53 & (~v27 + a2);
      if (v44 <= 3)
      {
        v55 = v43 + ((v32 + 8) & ~v32);
      }

      else
      {
        v55 = 4;
      }

      v56 = (&a1[v41] & v50);
      v34 = v44;
      goto LABEL_99;
    }

    if ((v26 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v57 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v57 = a2 - 1;
      }

      *v51 = v57;
      return;
    }

    v51 = (v32 + 8 + v51) & ~v32;
    if (v26 >= a2)
    {
      if (a2 < v71)
      {
        v59 = a2 + 1;
        if (v21 >= v24)
        {
          v63 = *(v73 + 56);

          v63(v51, a2 + 1, v21, v70);
          return;
        }

        v51 = (v42 + v51) & ~v32;
        v60 = v38 + 1;
        if (a2 >= v24)
        {
          if (v60 <= 3)
          {
            v64 = ~(-1 << (8 * v60));
          }

          else
          {
            v64 = -1;
          }

          if (v38 == -1)
          {
            return;
          }

          v54 = v64 & (a2 - v24);
        }

        else
        {
          if (a2 + 2 <= v69)
          {
            if (v22 > 0xFD)
            {
              v51 = (v34 + v31 + v51) & ~v31;
              if (a2 + 2 <= v22)
              {
                v67 = *(v15 + 56);

                v67(v51, a2 + 3);
                return;
              }

              if (v37 <= 3)
              {
                v65 = ~(-1 << (8 * v37));
              }

              else
              {
                v65 = -1;
              }

              if (!v37)
              {
                return;
              }

              v54 = v65 & (v59 - v22);
              if (v37 <= 3)
              {
                v55 = v37;
              }

              else
              {
                v55 = 4;
              }

              v56 = v51;
              v34 = v37;
            }

            else
            {
              if (a2 <= 0xFB)
              {
                *(v51 + v68) = -3 - a2;
                return;
              }

              if (v34 <= 3)
              {
                v66 = ~(-1 << (8 * v34));
              }

              else
              {
                v66 = -1;
              }

              if (!v34)
              {
                return;
              }

              v54 = v66 & (a2 - 252);
              if (v34 <= 3)
              {
                v55 = v34;
              }

              else
              {
                v55 = 4;
              }

              v56 = v51;
            }

LABEL_99:
            bzero(v56, v34);
            if (v55 > 2)
            {
              if (v55 == 3)
              {
                *v51 = v54;
                *(v51 + 2) = BYTE2(v54);
              }

              else
              {
                *v51 = v54;
              }
            }

            else if (v55 == 1)
            {
              *v51 = v54;
            }

            else
            {
              *v51 = v54;
            }

            return;
          }

          if (v60 <= 3)
          {
            v61 = ~(-1 << (8 * v60));
          }

          else
          {
            v61 = -1;
          }

          if (v38 == -1)
          {
            return;
          }

          v54 = v61 & (v59 - v69);
        }

        if (v60 <= 3)
        {
          v55 = v38 + 1;
        }

        else
        {
          v55 = 4;
        }

        v56 = v51;
        v34 = (v38 + 1);
        goto LABEL_99;
      }

      if (v43 <= 3)
      {
        v62 = ~(-1 << (8 * v43));
      }

      else
      {
        v62 = -1;
      }

      if (!v43)
      {
        return;
      }

      v54 = v62 & (a2 - v71);
    }

    else
    {
      if (v43 <= 3)
      {
        v58 = ~(-1 << (8 * v43));
      }

      else
      {
        v58 = -1;
      }

      if (!v43)
      {
        return;
      }

      v54 = v58 & (a2 - v71);
    }

    if (v43 <= 3)
    {
      v55 = v43;
    }

    else
    {
      v55 = 4;
    }

    v56 = v51;
    v34 = v43;
    goto LABEL_99;
  }

  v48 = ~v35 + a2;
  bzero(a1, v45);
  if (v45 <= 3)
  {
    v49 = (v48 >> 8) + 1;
  }

  else
  {
    v49 = 1;
  }

  if (v45 <= 3)
  {
    *a1 = v48;
    if (v13 > 1)
    {
LABEL_42:
      if (v13 == 2)
      {
        *&a1[v45] = v49;
      }

      else
      {
        *&a1[v45] = v49;
      }

      return;
    }
  }

  else
  {
    *a1 = v48;
    if (v13 > 1)
    {
      goto LABEL_42;
    }
  }

  if (v13)
  {
    a1[v45] = v49;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedStringUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = type metadata accessor for AttributedStringUpdates.Element(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(v8, 1, v9))
    {
      type metadata accessor for AttributedStringUpdates.Element?(0);
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    else
    {
      v36 = v10;
      v13 = type metadata accessor for AttributedString.Index();
      v14 = *(*(v13 - 8) + 16);
      v14(v7, v8, v13);
      v15 = *(v9 + 20);
      v16 = &v7[v15];
      v17 = &v8[v15];
      v18 = type metadata accessor for AttributedTextSelection(0);
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v17, 1, v18))
      {
        type metadata accessor for AttributedTextSelection?(0);
        memcpy(v16, v17, *(*(v20 - 8) + 64));
      }

      else
      {
        v34 = v19;
        __dst = v16;
        v21 = type metadata accessor for AttributedTextSelection.Indices(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v17, 1, v21))
        {
          type metadata accessor for AttributedTextSelection.Indices?(0);
          memcpy(__dst, v17, *(*(v23 - 8) + 64));
        }

        else
        {
          v33 = v22;
          v24 = v21;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            v26 = __dst;
            (*(*(v25 - 8) + 16))(__dst, v17, v25);
          }

          else
          {
            v26 = __dst;
            v14(__dst, v17, v13);
          }

          swift_storeEnumTagMultiPayload();
          (*(v33 + 56))(v26, 0, 1, v24);
        }

        v27 = *(v18 + 20);
        v28 = type metadata accessor for AttributeContainer();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(&v17[v27], 1, v28))
        {
          v30 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v31 = __dst;
          memcpy(&__dst[v27], &v17[v27], *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          (*(v29 + 16))(&__dst[v27], &v17[v27], v28);
          (*(v29 + 56))(&__dst[v27], 0, 1, v28);
        }

        v31[*(v18 + 24)] = v17[*(v18 + 24)];
        (*(v34 + 56))(v31, 0, 1, v18);
      }

      (*(v36 + 56))(v7, 0, 1, v9);
    }
  }

  return v5;
}

uint64_t destroy for AttributedStringUpdates(void *a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for AttributedStringUpdates.Element(0);
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (!result)
  {
    v7 = type metadata accessor for AttributedString.Index();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v9 = &v4[*(v5 + 20)];
    v10 = type metadata accessor for AttributedTextSelection(0);
    result = (*(*(v10 - 8) + 48))(v9, 1, v10);
    if (!result)
    {
      v11 = type metadata accessor for AttributedTextSelection.Indices(0);
      if (!(*(*(v11 - 8) + 48))(v9, 1, v11))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v12 - 8) + 8))(v9, v12);
        }

        else
        {
          v8(v9, v7);
        }
      }

      v13 = *(v10 + 20);
      v14 = type metadata accessor for AttributeContainer();
      v16 = *(v14 - 8);
      result = (*(v16 + 48))(&v9[v13], 1, v14);
      if (!result)
      {
        v15 = *(v16 + 8);

        return v15(&v9[v13], v14);
      }
    }
  }

  return result;
}

uint64_t *initializeWithCopy for AttributedStringUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for AttributedStringUpdates.Element(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(v6, 1, v7))
  {
    type metadata accessor for AttributedStringUpdates.Element?(0);
    memcpy(v5, v6, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = type metadata accessor for AttributedString.Index();
    v12 = *(*(v11 - 8) + 16);
    v12(v5, v6, v11);
    v13 = *(v7 + 20);
    v40 = v5;
    v14 = &v5[v13];
    v15 = &v6[v13];
    v16 = type metadata accessor for AttributedTextSelection(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      type metadata accessor for AttributedTextSelection?(0);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
      v19 = v40;
    }

    else
    {
      v36 = v12;
      v38 = v16;
      __dst = v14;
      v37 = v17;
      v20 = type metadata accessor for AttributedTextSelection.Indices(0);
      v21 = *(v20 - 8);
      v22 = v15;
      if ((*(v21 + 48))(v15, 1, v20))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(__dst, v15, *(*(v23 - 8) + 64));
        v24 = v38;
      }

      else
      {
        v25 = v20;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v27 = __dst;
          v28 = v15;
          (*(*(v26 - 8) + 16))(__dst, v15, v26);
        }

        else
        {
          v27 = __dst;
          v28 = v15;
          v36(__dst, v15, v11);
        }

        swift_storeEnumTagMultiPayload();
        (*(v21 + 56))(v27, 0, 1, v25);
        v24 = v38;
        v22 = v28;
      }

      v29 = *(v24 + 20);
      v30 = type metadata accessor for AttributeContainer();
      v31 = *(v30 - 8);
      v32 = v22;
      if ((*(v31 + 48))(&v22[v29], 1, v30))
      {
        v33 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v34 = __dst;
        memcpy(&__dst[v29], &v32[v29], *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        (*(v31 + 16))(&__dst[v29], &v32[v29], v30);
        (*(v31 + 56))(&__dst[v29], 0, 1, v30);
      }

      v19 = v40;
      v34[*(v38 + 24)] = v32[*(v38 + 24)];
      (*(v37 + 56))(v34, 0, 1);
    }

    (*(v8 + 56))(v19, 0, 1, v7);
  }

  return a1;
}

uint64_t *assignWithCopy for AttributedStringUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for AttributedStringUpdates.Element(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (v13)
    {
      outlined destroy of AttributedTextSelection.Indices(v7, type metadata accessor for AttributedStringUpdates.Element);
      goto LABEL_7;
    }

    v26 = type metadata accessor for AttributedString.Index();
    v79 = *(v26 - 8);
    (*(v79 + 24))(v7, v8, v26);
    v27 = *(v9 + 20);
    v28 = &v7[v27];
    v29 = &v8[v27];
    v30 = type metadata accessor for AttributedTextSelection(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v32(v28, 1, v30);
    v34 = v32(v29, 1, v30);
    if (v33)
    {
      if (!v34)
      {
        v35 = type metadata accessor for AttributedTextSelection.Indices(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v29, 1, v35))
        {
          type metadata accessor for AttributedTextSelection.Indices?(0);
          memcpy(v28, v29, *(*(v37 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v60 - 8) + 16))(v28, v29, v60);
          }

          else
          {
            (*(v79 + 16))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
          (*(v36 + 56))(v28, 0, 1, v35);
        }

        v62 = *(v30 + 20);
        v63 = type metadata accessor for AttributeContainer();
        v64 = *(v63 - 8);
        if ((*(v64 + 48))(&v29[v62], 1, v63))
        {
          v65 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v28[v62], &v29[v62], *(*(v65 - 8) + 64));
        }

        else
        {
          (*(v64 + 16))(&v28[v62], &v29[v62], v63);
          (*(v64 + 56))(&v28[v62], 0, 1, v63);
        }

        v28[*(v30 + 24)] = v29[*(v30 + 24)];
        (*(v31 + 56))(v28, 0, 1, v30);
        return a1;
      }

      goto LABEL_17;
    }

    if (v34)
    {
      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection);
LABEL_17:
      type metadata accessor for AttributedTextSelection?(0);
      v23 = *(*(v43 - 8) + 64);
      v24 = v28;
      v25 = v29;
      goto LABEL_8;
    }

    v48 = type metadata accessor for AttributedTextSelection.Indices(0);
    __dsta = *(v48 - 8);
    v49 = __dsta[6];
    v50 = v49(v28, 1, v48);
    v51 = v49(v29, 1, v48);
    if (v50)
    {
      if (!v51)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v52 - 8) + 16))(v28, v29, v52);
        }

        else
        {
          (*(v79 + 16))(v28, v29, v26);
        }

        swift_storeEnumTagMultiPayload();
        (__dsta[7])(v28, 0, 1, v48);
        goto LABEL_49;
      }
    }

    else
    {
      if (!v51)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v66 - 8) + 16))(v28, v29, v66);
          }

          else
          {
            (*(v79 + 16))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_49:
        v67 = *(v30 + 20);
        v68 = type metadata accessor for AttributeContainer();
        v69 = *(v68 - 8);
        v70 = *(v69 + 48);
        v71 = v70(&v28[v67], 1, v68);
        v72 = v70(&v29[v67], 1, v68);
        if (v71)
        {
          if (!v72)
          {
            (*(v69 + 16))(&v28[v67], &v29[v67], v68);
            (*(v69 + 56))(&v28[v67], 0, 1, v68);
LABEL_55:
            v28[*(v30 + 24)] = v29[*(v30 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v72)
          {
            (*(v69 + 24))(&v28[v67], &v29[v67], v68);
            goto LABEL_55;
          }

          (*(v69 + 8))(&v28[v67], v68);
        }

        v73 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v28[v67], &v29[v67], *(*(v73 - 8) + 64));
        goto LABEL_55;
      }

      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v28, v29, *(*(v61 - 8) + 64));
    goto LABEL_49;
  }

  if (v13)
  {
LABEL_7:
    type metadata accessor for AttributedStringUpdates.Element?(0);
    v23 = *(*(v22 - 8) + 64);
    v24 = v7;
    v25 = v8;
LABEL_8:
    memcpy(v24, v25, v23);
    return a1;
  }

  v14 = type metadata accessor for AttributedString.Index();
  v15 = *(*(v14 - 8) + 16);
  v15(v7, v8, v14);
  v16 = *(v9 + 20);
  v17 = &v7[v16];
  v18 = &v8[v16];
  v19 = type metadata accessor for AttributedTextSelection(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v74 = v15;
    v76 = v19;
    __dst = v17;
    v75 = v20;
    v38 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v38 - 8);
    v40 = v18;
    if ((*(v39 + 48))(v18, 1, v38))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(__dst, v18, *(*(v41 - 8) + 64));
      v42 = v76;
    }

    else
    {
      v44 = v38;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v46 = __dst;
        v47 = v18;
        (*(*(v45 - 8) + 16))(__dst, v18, v45);
      }

      else
      {
        v46 = __dst;
        v47 = v18;
        v74(__dst, v18, v14);
      }

      swift_storeEnumTagMultiPayload();
      (*(v39 + 56))(v46, 0, 1, v44);
      v42 = v76;
      v40 = v47;
    }

    v53 = *(v42 + 20);
    v54 = type metadata accessor for AttributeContainer();
    v55 = *(v54 - 8);
    v56 = v40;
    if ((*(v55 + 48))(&v40[v53], 1, v54))
    {
      v57 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      v58 = __dst;
      memcpy(&__dst[v53], &v56[v53], *(*(v57 - 8) + 64));
    }

    else
    {
      v58 = __dst;
      (*(v55 + 16))(&__dst[v53], &v56[v53], v54);
      (*(v55 + 56))(&__dst[v53], 0, 1, v54);
    }

    v58[*(v76 + 24)] = v56[*(v76 + 24)];
    (*(v75 + 56))(v58, 0, 1);
  }

  (*(v10 + 56))(v7, 0, 1, v9);
  return a1;
}

void *initializeWithTake for AttributedStringUpdates(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for AttributedStringUpdates.Element(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    type metadata accessor for AttributedStringUpdates.Element?(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for AttributedString.Index();
    v11 = *(*(v10 - 8) + 32);
    v11(v5, v6, v10);
    v12 = *(v7 + 20);
    v38 = v5;
    v13 = &v5[v12];
    v14 = &v6[v12];
    v15 = type metadata accessor for AttributedTextSelection(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1, v15))
    {
      type metadata accessor for AttributedTextSelection?(0);
      memcpy(v13, v14, *(*(v17 - 8) + 64));
    }

    else
    {
      v34 = v11;
      v36 = v15;
      __dst = v13;
      v35 = v16;
      v18 = type metadata accessor for AttributedTextSelection.Indices(0);
      v19 = *(v18 - 8);
      v20 = v14;
      if ((*(v19 + 48))(v14, 1, v18))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(__dst, v14, *(*(v21 - 8) + 64));
        v22 = v36;
      }

      else
      {
        v23 = v18;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v25 = __dst;
          v26 = v14;
          (*(*(v24 - 8) + 32))(__dst, v14, v24);
        }

        else
        {
          v25 = __dst;
          v26 = v14;
          v34(__dst, v14, v10);
        }

        swift_storeEnumTagMultiPayload();
        (*(v19 + 56))(v25, 0, 1, v23);
        v22 = v36;
        v20 = v26;
      }

      v27 = *(v22 + 20);
      v28 = type metadata accessor for AttributeContainer();
      v29 = *(v28 - 8);
      v30 = v20;
      if ((*(v29 + 48))(&v20[v27], 1, v28))
      {
        v31 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v32 = __dst;
        memcpy(&__dst[v27], &v30[v27], *(*(v31 - 8) + 64));
      }

      else
      {
        v32 = __dst;
        (*(v29 + 32))(&__dst[v27], &v30[v27], v28);
        (*(v29 + 56))(&__dst[v27], 0, 1, v28);
      }

      v32[*(v36 + 24)] = v30[*(v36 + 24)];
      (*(v35 + 56))(v32, 0, 1);
    }

    (*(v8 + 56))(v38, 0, 1, v7);
  }

  return a1;
}

uint64_t *assignWithTake for AttributedStringUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for AttributedStringUpdates.Element(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (v13)
    {
      outlined destroy of AttributedTextSelection.Indices(v7, type metadata accessor for AttributedStringUpdates.Element);
      goto LABEL_7;
    }

    v26 = type metadata accessor for AttributedString.Index();
    v79 = *(v26 - 8);
    (*(v79 + 40))(v7, v8, v26);
    v27 = *(v9 + 20);
    v28 = &v7[v27];
    v29 = &v8[v27];
    v30 = type metadata accessor for AttributedTextSelection(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v32(v28, 1, v30);
    v34 = v32(v29, 1, v30);
    if (v33)
    {
      if (!v34)
      {
        v35 = type metadata accessor for AttributedTextSelection.Indices(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v29, 1, v35))
        {
          type metadata accessor for AttributedTextSelection.Indices?(0);
          memcpy(v28, v29, *(*(v37 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v60 - 8) + 32))(v28, v29, v60);
          }

          else
          {
            (*(v79 + 32))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
          (*(v36 + 56))(v28, 0, 1, v35);
        }

        v62 = *(v30 + 20);
        v63 = type metadata accessor for AttributeContainer();
        v64 = *(v63 - 8);
        if ((*(v64 + 48))(&v29[v62], 1, v63))
        {
          v65 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v28[v62], &v29[v62], *(*(v65 - 8) + 64));
        }

        else
        {
          (*(v64 + 32))(&v28[v62], &v29[v62], v63);
          (*(v64 + 56))(&v28[v62], 0, 1, v63);
        }

        v28[*(v30 + 24)] = v29[*(v30 + 24)];
        (*(v31 + 56))(v28, 0, 1, v30);
        return a1;
      }

      goto LABEL_17;
    }

    if (v34)
    {
      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection);
LABEL_17:
      type metadata accessor for AttributedTextSelection?(0);
      v23 = *(*(v43 - 8) + 64);
      v24 = v28;
      v25 = v29;
      goto LABEL_8;
    }

    v48 = type metadata accessor for AttributedTextSelection.Indices(0);
    __dsta = *(v48 - 8);
    v49 = __dsta[6];
    v50 = v49(v28, 1, v48);
    v51 = v49(v29, 1, v48);
    if (v50)
    {
      if (!v51)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v52 - 8) + 32))(v28, v29, v52);
        }

        else
        {
          (*(v79 + 32))(v28, v29, v26);
        }

        swift_storeEnumTagMultiPayload();
        (__dsta[7])(v28, 0, 1, v48);
        goto LABEL_49;
      }
    }

    else
    {
      if (!v51)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v66 - 8) + 32))(v28, v29, v66);
          }

          else
          {
            (*(v79 + 32))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_49:
        v67 = *(v30 + 20);
        v68 = type metadata accessor for AttributeContainer();
        v69 = *(v68 - 8);
        v70 = *(v69 + 48);
        v71 = v70(&v28[v67], 1, v68);
        v72 = v70(&v29[v67], 1, v68);
        if (v71)
        {
          if (!v72)
          {
            (*(v69 + 32))(&v28[v67], &v29[v67], v68);
            (*(v69 + 56))(&v28[v67], 0, 1, v68);
LABEL_55:
            v28[*(v30 + 24)] = v29[*(v30 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v72)
          {
            (*(v69 + 40))(&v28[v67], &v29[v67], v68);
            goto LABEL_55;
          }

          (*(v69 + 8))(&v28[v67], v68);
        }

        v73 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v28[v67], &v29[v67], *(*(v73 - 8) + 64));
        goto LABEL_55;
      }

      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v28, v29, *(*(v61 - 8) + 64));
    goto LABEL_49;
  }

  if (v13)
  {
LABEL_7:
    type metadata accessor for AttributedStringUpdates.Element?(0);
    v23 = *(*(v22 - 8) + 64);
    v24 = v7;
    v25 = v8;
LABEL_8:
    memcpy(v24, v25, v23);
    return a1;
  }

  v14 = type metadata accessor for AttributedString.Index();
  v15 = *(*(v14 - 8) + 32);
  v15(v7, v8, v14);
  v16 = *(v9 + 20);
  v17 = &v7[v16];
  v18 = &v8[v16];
  v19 = type metadata accessor for AttributedTextSelection(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v74 = v15;
    v76 = v19;
    __dst = v17;
    v75 = v20;
    v38 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v38 - 8);
    v40 = v18;
    if ((*(v39 + 48))(v18, 1, v38))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(__dst, v18, *(*(v41 - 8) + 64));
      v42 = v76;
    }

    else
    {
      v44 = v38;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v46 = __dst;
        v47 = v18;
        (*(*(v45 - 8) + 32))(__dst, v18, v45);
      }

      else
      {
        v46 = __dst;
        v47 = v18;
        v74(__dst, v18, v14);
      }

      swift_storeEnumTagMultiPayload();
      (*(v39 + 56))(v46, 0, 1, v44);
      v42 = v76;
      v40 = v47;
    }

    v53 = *(v42 + 20);
    v54 = type metadata accessor for AttributeContainer();
    v55 = *(v54 - 8);
    v56 = v40;
    if ((*(v55 + 48))(&v40[v53], 1, v54))
    {
      v57 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      v58 = __dst;
      memcpy(&__dst[v53], &v56[v53], *(*(v57 - 8) + 64));
    }

    else
    {
      v58 = __dst;
      (*(v55 + 32))(&__dst[v53], &v56[v53], v54);
      (*(v55 + 56))(&__dst[v53], 0, 1, v54);
    }

    v58[*(v76 + 24)] = v56[*(v76 + 24)];
    (*(v75 + 56))(v58, 0, 1);
  }

  (*(v10 + 56))(v7, 0, 1, v9);
  return a1;
}

void type metadata completion function for AttributedStringUpdates(uint64_t a1)
{
  type metadata accessor for AttributedStringUpdates.Element?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedStringUpdates.Element(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for AttributedString.Index();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = type metadata accessor for AttributedTextSelection(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      type metadata accessor for AttributedTextSelection?(0);
      memcpy(v10, v11, *(*(v14 - 8) + 64));
    }

    else
    {
      v16 = type metadata accessor for AttributedTextSelection.Indices(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v11, 1, v16))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v10, v11, *(*(v18 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v19 - 8) + 16))(v10, v11, v19);
        }

        else
        {
          v8(v10, v11, v7);
        }

        swift_storeEnumTagMultiPayload();
        (*(v17 + 56))(v10, 0, 1, v16);
      }

      v20 = *(v12 + 20);
      v21 = type metadata accessor for AttributeContainer();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(&v11[v20], 1, v21))
      {
        v23 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v10[v20], &v11[v20], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(v22 + 16))(&v10[v20], &v11[v20], v21);
        (*(v22 + 56))(&v10[v20], 0, 1, v21);
      }

      v10[*(v12 + 24)] = v11[*(v12 + 24)];
      (*(v13 + 56))(v10, 0, 1, v12);
    }
  }

  return a1;
}

uint64_t destroy for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Index();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v6 = a1 + *(a2 + 20);
  v7 = type metadata accessor for AttributedTextSelection(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {
    v9 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        (*(*(v10 - 8) + 8))(v6, v10);
      }

      else
      {
        v5(v6, v4);
      }
    }

    v11 = *(v7 + 20);
    v12 = type metadata accessor for AttributeContainer();
    v14 = *(v12 - 8);
    result = (*(v14 + 48))(v6 + v11, 1, v12);
    if (!result)
    {
      v13 = *(v14 + 8);

      return v13(v6 + v11, v12);
    }
  }

  return result;
}

uint64_t initializeWithCopy for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for AttributedTextSelection(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for AttributedTextSelection.Indices(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v9, v10, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        (*(*(v17 - 8) + 16))(v9, v10, v17);
      }

      else
      {
        v7(v9, v10, v6);
      }

      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(v9, 0, 1, v14);
    }

    v18 = *(v11 + 20);
    v19 = type metadata accessor for AttributeContainer();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&v10[v18], 1, v19))
    {
      v21 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(&v9[v18], &v10[v18], v19);
      (*(v20 + 56))(&v9[v18], 0, 1, v19);
    }

    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithCopy for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v40 = *(v6 - 8);
  (*(v40 + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (v14)
    {
      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection);
      goto LABEL_7;
    }

    v19 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v19 - 8);
    v20 = *(v39 + 48);
    v21 = v20(v8, 1, v19);
    v22 = v20(v9, 1, v19);
    if (v21)
    {
      if (!v22)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v23 - 8) + 16))(v8, v9, v23);
        }

        else
        {
          (*(v40 + 16))(v8, v9, v6);
        }

        swift_storeEnumTagMultiPayload();
        (*(v39 + 56))(v8, 0, 1, v19);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v22)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v30 - 8) + 16))(v8, v9, v30);
          }

          else
          {
            (*(v40 + 16))(v8, v9, v6);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v31 = *(v10 + 20);
        v32 = type metadata accessor for AttributeContainer();
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        v35 = v34(&v8[v31], 1, v32);
        v36 = v34(&v9[v31], 1, v32);
        if (v35)
        {
          if (!v36)
          {
            (*(v33 + 16))(&v8[v31], &v9[v31], v32);
            (*(v33 + 56))(&v8[v31], 0, 1, v32);
LABEL_35:
            v8[*(v10 + 24)] = v9[*(v10 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v36)
          {
            (*(v33 + 24))(&v8[v31], &v9[v31], v32);
            goto LABEL_35;
          }

          (*(v33 + 8))(&v8[v31], v32);
        }

        v37 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v8[v31], &v9[v31], *(*(v37 - 8) + 64));
        goto LABEL_35;
      }

      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v25 - 8) + 64));
    goto LABEL_29;
  }

  if (v14)
  {
LABEL_7:
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v8, v9, *(*(v18 - 8) + 64));
    return a1;
  }

  v15 = type metadata accessor for AttributedTextSelection.Indices(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v17 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v24 - 8) + 16))(v8, v9, v24);
    }

    else
    {
      (*(v40 + 16))(v8, v9, v6);
    }

    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  v26 = *(v10 + 20);
  v27 = type metadata accessor for AttributeContainer();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(&v9[v26], 1, v27))
  {
    v29 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v26], &v9[v26], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 16))(&v8[v26], &v9[v26], v27);
    (*(v28 + 56))(&v8[v26], 0, 1, v27);
  }

  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
  return a1;
}

uint64_t initializeWithTake for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for AttributedTextSelection(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for AttributedTextSelection.Indices(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v9, v10, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        (*(*(v17 - 8) + 32))(v9, v10, v17);
      }

      else
      {
        v7(v9, v10, v6);
      }

      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(v9, 0, 1, v14);
    }

    v18 = *(v11 + 20);
    v19 = type metadata accessor for AttributeContainer();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&v10[v18], 1, v19))
    {
      v21 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 32))(&v9[v18], &v10[v18], v19);
      (*(v20 + 56))(&v9[v18], 0, 1, v19);
    }

    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithTake for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v40 = *(v6 - 8);
  (*(v40 + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (v14)
    {
      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection);
      goto LABEL_7;
    }

    v19 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v19 - 8);
    v20 = *(v39 + 48);
    v21 = v20(v8, 1, v19);
    v22 = v20(v9, 1, v19);
    if (v21)
    {
      if (!v22)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v23 - 8) + 32))(v8, v9, v23);
        }

        else
        {
          (*(v40 + 32))(v8, v9, v6);
        }

        swift_storeEnumTagMultiPayload();
        (*(v39 + 56))(v8, 0, 1, v19);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v22)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v30 - 8) + 32))(v8, v9, v30);
          }

          else
          {
            (*(v40 + 32))(v8, v9, v6);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v31 = *(v10 + 20);
        v32 = type metadata accessor for AttributeContainer();
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        v35 = v34(&v8[v31], 1, v32);
        v36 = v34(&v9[v31], 1, v32);
        if (v35)
        {
          if (!v36)
          {
            (*(v33 + 32))(&v8[v31], &v9[v31], v32);
            (*(v33 + 56))(&v8[v31], 0, 1, v32);
LABEL_35:
            v8[*(v10 + 24)] = v9[*(v10 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v36)
          {
            (*(v33 + 40))(&v8[v31], &v9[v31], v32);
            goto LABEL_35;
          }

          (*(v33 + 8))(&v8[v31], v32);
        }

        v37 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v8[v31], &v9[v31], *(*(v37 - 8) + 64));
        goto LABEL_35;
      }

      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v25 - 8) + 64));
    goto LABEL_29;
  }

  if (v14)
  {
LABEL_7:
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v8, v9, *(*(v18 - 8) + 64));
    return a1;
  }

  v15 = type metadata accessor for AttributedTextSelection.Indices(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v17 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v24 - 8) + 32))(v8, v9, v24);
    }

    else
    {
      (*(v40 + 32))(v8, v9, v6);
    }

    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  v26 = *(v10 + 20);
  v27 = type metadata accessor for AttributeContainer();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(&v9[v26], 1, v27))
  {
    v29 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v26], &v9[v26], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 32))(&v8[v26], &v9[v26], v27);
    (*(v28 + 56))(&v8[v26], 0, 1, v27);
  }

  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
  return a1;
}

void type metadata completion function for AttributedStringUpdates.Element(uint64_t a1)
{
  type metadata accessor for AttributedString.Index();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedTextSelection?(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for BindingStorage.Storage(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    type metadata accessor for Binding<AttributedString>(0);
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], &a2[v9], v10);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v12 + 48)] = *&a2[*(v12 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v15 = *(v14 + 48);
      v16 = &a1[v15];
      v17 = &a2[v15];
      v18 = *&a2[v15 + 8];
      *v16 = *&a2[v15];
      *(v16 + 1) = v18;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v20 = *(v19 + 32);
      v21 = &v16[v20];
      v22 = &v17[v20];
      v23 = type metadata accessor for AttributedTextSelection.Indices(0);
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);

      if (v25(v22, 1, v23))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v21, v22, *(*(v26 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v28 = v27;
        }

        else
        {
          v28 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v28 - 8) + 16))(v21, v22);
        swift_storeEnumTagMultiPayload();
        (*(v24 + 56))(v21, 0, 1, v23);
      }

      v29 = type metadata accessor for AttributedTextSelection(0);
      v30 = *(v29 + 20);
      v31 = type metadata accessor for AttributeContainer();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(&v22[v30], 1, v31))
      {
        v33 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v21[v30], &v22[v30], *(*(v33 - 8) + 64));
      }

      else
      {
        (*(v32 + 16))(&v21[v30], &v22[v30], v31);
        (*(v32 + 56))(&v21[v30], 0, 1, v31);
      }

      v21[*(v29 + 24)] = v22[*(v29 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<AttributedString>(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void destroy for BindingStorage.Storage(char *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  type metadata accessor for Binding<AttributedString>(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v8 = &a1[*(v7 + 48)];

    type metadata accessor for Binding<AttributedTextSelection>(0);
    v10 = &v8[*(v9 + 32)];
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v13 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v14 = type metadata accessor for AttributeContainer();
    v16 = *(v14 - 8);
    if (!(*(v16 + 48))(&v10[v13], 1, v14))
    {
      v15 = *(v16 + 8);

      v15(&v10[v13], v14);
    }
  }
}

char *initializeWithCopy for BindingStorage.Storage(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  type metadata accessor for Binding<AttributedString>(0);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v11 + 48)] = *&a2[*(v11 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v13 = *(v12 + 48);
    v14 = &a1[v13];
    v15 = &a2[v13];
    v16 = *&a2[v13 + 8];
    *v14 = *&a2[v13];
    *(v14 + 1) = v16;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v18 = *(v17 + 32);
    v19 = &v14[v18];
    v20 = &v15[v18];
    v21 = type metadata accessor for AttributedTextSelection.Indices(0);
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);

    if (v23(v20, 1, v21))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v19, v20, *(*(v24 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v26 = v25;
      }

      else
      {
        v26 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v26 - 8) + 16))(v19, v20);
      swift_storeEnumTagMultiPayload();
      (*(v22 + 56))(v19, 0, 1, v21);
    }

    v27 = type metadata accessor for AttributedTextSelection(0);
    v28 = *(v27 + 20);
    v29 = type metadata accessor for AttributeContainer();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(&v20[v28], 1, v29))
    {
      v31 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v19[v28], &v20[v28], *(*(v31 - 8) + 64));
    }

    else
    {
      (*(v30 + 16))(&v19[v28], &v20[v28], v29);
      (*(v30 + 56))(&v19[v28], 0, 1, v29);
    }

    v19[*(v27 + 24)] = v20[*(v27 + 24)];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for BindingStorage.Storage(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>(0);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v10 + 48)] = *&a2[*(v10 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v12 = *(v11 + 48);
      v13 = &a1[v12];
      v14 = &a2[v12];
      *v13 = *&a2[v12];
      *(v13 + 1) = *&a2[v12 + 8];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v16 = *(v15 + 32);
      v17 = &v13[v16];
      v18 = &v14[v16];
      v19 = type metadata accessor for AttributedTextSelection.Indices(0);
      v20 = *(v19 - 8);
      v21 = *(v20 + 48);

      if (v21(v18, 1, v19))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v17, v18, *(*(v22 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v24 = v23;
        }

        else
        {
          v24 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v24 - 8) + 16))(v17, v18);
        swift_storeEnumTagMultiPayload();
        (*(v20 + 56))(v17, 0, 1, v19);
      }

      v25 = type metadata accessor for AttributedTextSelection(0);
      v26 = *(v25 + 20);
      v27 = type metadata accessor for AttributeContainer();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v18[v26], 1, v27))
      {
        v29 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v17[v26], &v18[v26], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(v28 + 16))(&v17[v26], &v18[v26], v27);
        (*(v28 + 56))(&v17[v26], 0, 1, v27);
      }

      v17[*(v25 + 24)] = v18[*(v25 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for BindingStorage.Storage(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  type metadata accessor for Binding<AttributedString>(0);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v10 + 48)] = *&a2[*(v10 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v12 = *(v11 + 48);
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = *&a2[v12 + 8];
    *v13 = *&a2[v12];
    *(v13 + 1) = v15;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v17 = *(v16 + 32);
    v18 = &v13[v17];
    v19 = &v14[v17];
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
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v24 = v23;
      }

      else
      {
        v24 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v24 - 8) + 32))(v18, v19);
      swift_storeEnumTagMultiPayload();
      (*(v21 + 56))(v18, 0, 1, v20);
    }

    v25 = type metadata accessor for AttributedTextSelection(0);
    v26 = *(v25 + 20);
    v27 = type metadata accessor for AttributeContainer();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(&v19[v26], 1, v27))
    {
      v29 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v18[v26], &v19[v26], *(*(v29 - 8) + 64));
    }

    else
    {
      (*(v28 + 32))(&v18[v26], &v19[v26], v27);
      (*(v28 + 56))(&v18[v26], 0, 1, v27);
    }

    v18[*(v25 + 24)] = v19[*(v25 + 24)];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for BindingStorage.Storage(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    type metadata accessor for Binding<AttributedString>(0);
    v8 = *(v7 + 32);
    v9 = type metadata accessor for AttributedString();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v10 + 48)] = *&a2[*(v10 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v12 = *(v11 + 48);
      v13 = &a1[v12];
      v14 = &a2[v12];
      v15 = *&a2[v12 + 8];
      *v13 = *&a2[v12];
      *(v13 + 1) = v15;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v17 = *(v16 + 32);
      v18 = &v13[v17];
      v19 = &v14[v17];
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
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v24 = v23;
        }

        else
        {
          v24 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v24 - 8) + 32))(v18, v19);
        swift_storeEnumTagMultiPayload();
        (*(v21 + 56))(v18, 0, 1, v20);
      }

      v25 = type metadata accessor for AttributedTextSelection(0);
      v26 = *(v25 + 20);
      v27 = type metadata accessor for AttributeContainer();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v19[v26], 1, v27))
      {
        v29 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v18[v26], &v19[v26], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(v28 + 32))(&v18[v26], &v19[v26], v27);
        (*(v28 + 56))(&v18[v26], 0, 1, v27);
      }

      v18[*(v25 + 24)] = v19[*(v25 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata completion function for BindingStorage.Storage(uint64_t a1)
{
  type metadata accessor for Binding<AttributedString>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<AttributedTextSelection>(319);
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v5 = &v4;
      swift_getTupleTypeLayout2();
      v6 = &v3;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void *static AttributeScope.storage(wrapping:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = a2[1];
  v15 = type metadata accessor for RichTextAttributeResolver(255, a3, a4, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RichTextAttributeResolver<A>, v15);
  v18 = type metadata accessor for NSSwiftMutableAttributedString(0, v15, WitnessTable, v17);
  (*(v9 + 16))(v11, a1, v8);
  *&v21 = v12;
  *(&v21 + 1) = v13;

  RichTextAttributeResolver.init(environment:content:for:)(&v21, 0, 0xE000000000000000, a3, a4, &v23);
  v21 = v23;
  v22 = v24;
  v19 = specialized NSSwiftMutableAttributedString.__allocating_init(wrapping:resolver:)(v11, &v21);

  swift_getWitnessTable(protocol conformance descriptor for NSSwiftMutableAttributedString<A>, v18);
  return v19;
}

uint64_t BindingStorage.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  type metadata accessor for Binding<AttributedString>(0);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AttributedString();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedTextSelection.Indices(0);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v45 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v47 = v2;
  outlined init with copy of BindingStorage.Storage(v2, v21, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    v28 = *&v21[*(v27 + 48)];
    v29 = *(*v28 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();
    outlined init with copy of BindingStorage.Storage(v28 + v29, v23, type metadata accessor for AttributedTextSelection);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    outlined init with take of AttributedTextSelection(&v21[*(v30 + 48)], v15, type metadata accessor for Binding<AttributedTextSelection>);
    MEMORY[0x18D00ACC0](v13);
    outlined destroy of AttributedTextSelection.Indices(v15, type metadata accessor for Binding<AttributedTextSelection>);
  }

  outlined destroy of AttributedTextSelection.Indices(v21, type metadata accessor for Binding<AttributedString>);
  outlined init with take of AttributedTextSelection(v23, v26, type metadata accessor for AttributedTextSelection);
  outlined init with copy of BindingStorage.Storage(v26, v8, type metadata accessor for AttributedTextSelection.Indices?);
  v32 = v52;
  v31 = v53;
  if ((*(v52 + 48))(v8, 1, v53) == 1)
  {
    outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices?);
    return outlined init with take of AttributedTextSelection(v26, v54, type metadata accessor for AttributedTextSelection);
  }

  outlined init with take of AttributedTextSelection(v8, v11, type metadata accessor for AttributedTextSelection.Indices);
  outlined init with copy of BindingStorage.Storage(v47, v18, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);

    v33 = v48;
    outlined init with take of AttributedTextSelection(v18, v48, type metadata accessor for Binding<AttributedString>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v35 = *(v34 + 48);
    v33 = v48;
    outlined init with take of AttributedTextSelection(v18, v48, type metadata accessor for Binding<AttributedString>);
    outlined destroy of AttributedTextSelection.Indices(&v18[v35], type metadata accessor for Binding<AttributedTextSelection>);
  }

  v36 = v46;
  MEMORY[0x18D00ACC0](v50);
  outlined destroy of AttributedTextSelection.Indices(v33, type metadata accessor for Binding<AttributedString>);
  v37 = specialized AttributedTextSelection.Indices.areValid<A>(within:)(v36);
  (*(v49 + 8))(v36, v51);
  outlined destroy of AttributedTextSelection.Indices(v11, type metadata accessor for AttributedTextSelection.Indices);
  if (v37)
  {
    return outlined init with take of AttributedTextSelection(v26, v54, type metadata accessor for AttributedTextSelection);
  }

  outlined destroy of AttributedTextSelection.Indices(v26, type metadata accessor for AttributedTextSelection);
  v39 = *(v32 + 56);
  v40 = v54;
  v39(v54, 1, 1, v31);
  outlined destroy of AttributedTextSelection.Indices(v40, type metadata accessor for AttributedTextSelection.Indices?);
  v39(v40, 1, 1, v31);
  v41 = v45;
  v42 = *(v45 + 20);
  v43 = type metadata accessor for AttributeContainer();
  result = (*(*(v43 - 8) + 56))(v40 + v42, 1, 1, v43);
  *(v40 + *(v41 + 24)) = 0;
  return result;
}

uint64_t outlined init with take of AttributedTextSelection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in AttributedTextStorage.commit()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2, v9);
  BindingStorage.text.setter(v11);
  outlined init with copy of BindingStorage.Storage(a3, v7, type metadata accessor for AttributedTextSelection);
  return BindingStorage.selection.setter(v7);
}

uint64_t BindingStorage.text.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BindingStorage.Storage(v2, v10, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);

    outlined init with take of AttributedTextSelection(v10, v13, type metadata accessor for Binding<AttributedString>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v15 = *(v14 + 48);
    outlined init with take of AttributedTextSelection(v10, v13, type metadata accessor for Binding<AttributedString>);
    outlined destroy of AttributedTextSelection.Indices(&v10[v15], type metadata accessor for Binding<AttributedTextSelection>);
  }

  (*(v5 + 16))(v7, a1, v4);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  v16 = *(v5 + 8);
  v16(a1, v4);
  v16(v7, v4);
  return outlined destroy of AttributedTextSelection.Indices(v13, type metadata accessor for Binding<AttributedString>);
}

uint64_t BindingStorage.selection.setter(uint64_t a1)
{
  v3 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BindingStorage.Storage(v1, v11, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    v13 = *&v11[*(v12 + 48)];
    v14 = *(*v13 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();
    outlined assign with take of AttributedTextSelection(a1, v13 + v14, type metadata accessor for AttributedTextSelection);
    swift_endAccess();
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    outlined init with take of AttributedTextSelection(&v11[*(v15 + 48)], v8, type metadata accessor for Binding<AttributedTextSelection>);
    outlined init with copy of BindingStorage.Storage(a1, v5, type metadata accessor for AttributedTextSelection);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for AttributedTextSelection);
    outlined destroy of AttributedTextSelection.Indices(v5, type metadata accessor for AttributedTextSelection);
    outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for Binding<AttributedTextSelection>);
  }

  return outlined destroy of AttributedTextSelection.Indices(v11, type metadata accessor for Binding<AttributedString>);
}

uint64_t AttributedStringUpdates.isExpecting(text:selection:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v97[-v9];
  v115 = type metadata accessor for AttributedTextSelection(0);
  v104 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v106 = &v97[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AttributedTextSelection?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v107 = &v97[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v97[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v97[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v97[-v18];
  type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?)(0);
  v112 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v97[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97[-v22];
  type metadata accessor for AttributedStringUpdates.Element?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v97[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v97[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v97[-v30];
  v32 = type metadata accessor for AttributedStringUpdates.Element(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v114 = &v97[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v97[-v36];
  v38 = *(type metadata accessor for AttributedStringUpdates(0) + 20);
  outlined init with copy of BindingStorage.Storage(v3 + v38, v31, type metadata accessor for AttributedStringUpdates.Element?);
  v39 = (*(v33 + 48))(v31, 1, v32);
  v111 = v33;
  if (v39 != 1)
  {
    outlined init with take of AttributedTextSelection(v31, v37, type metadata accessor for AttributedStringUpdates.Element);
    type metadata accessor for AttributedString();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    if ((AttributedString.Index.isValid<A>(within:)() & 1) == 0)
    {
      v40 = type metadata accessor for AttributedStringUpdates.Element;
      v41 = v37;
      goto LABEL_8;
    }

    v113 = v32;
    v42 = *(v104 + 48);
    v43 = v115;
    v44 = v42(a2, 1, v115);
    v99 = v42;
    if (v44 == 1)
    {
      goto LABEL_5;
    }

    v109 = v26;
    v79 = a1;
    v100 = v37;
    v80 = *(v113 + 20);
    v81 = *(v112 + 48);
    outlined init with copy of BindingStorage.Storage(a2, v23, type metadata accessor for AttributedTextSelection?);
    v82 = &v100[v80];
    v37 = v100;
    v43 = v115;
    outlined init with copy of BindingStorage.Storage(v82, &v23[v81], type metadata accessor for AttributedTextSelection?);
    if (v42(v23, 1, v43) == 1)
    {
      if (v42(&v23[v81], 1, v43) == 1)
      {
        outlined destroy of AttributedTextSelection.Indices(v23, type metadata accessor for AttributedTextSelection?);
        a1 = v79;
        v26 = v109;
LABEL_5:
        v101 = *(v113 + 20);
        v45 = &v37[v101];
        v46 = v37;
        v47 = v116;
        outlined init with copy of BindingStorage.Storage(v45, v116, type metadata accessor for AttributedTextSelection?);
        if (v42(v47, 1, v43) == 1)
        {
          outlined destroy of AttributedTextSelection.Indices(v47, type metadata accessor for AttributedTextSelection?);
          goto LABEL_41;
        }

        v83 = v103;
        outlined init with copy of BindingStorage.Storage(v47, v103, type metadata accessor for AttributedTextSelection.Indices?);
        outlined destroy of AttributedTextSelection.Indices(v47, type metadata accessor for AttributedTextSelection);
        v84 = type metadata accessor for AttributedTextSelection.Indices(0);
        if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
        {
          outlined destroy of AttributedTextSelection.Indices(v83, type metadata accessor for AttributedTextSelection.Indices?);
          goto LABEL_41;
        }

        v88 = specialized AttributedTextSelection.Indices.areValid<A>(within:)(a1);
        outlined destroy of AttributedTextSelection.Indices(v83, type metadata accessor for AttributedTextSelection.Indices);
        if (v88)
        {
LABEL_41:
          v89 = v46;
          v90 = v108;
          outlined init with copy of BindingStorage.Storage(v46 + v101, v108, type metadata accessor for AttributedTextSelection?);
          if (v99(v90, 1, v115) == 1)
          {
            outlined destroy of AttributedTextSelection.Indices(v46, type metadata accessor for AttributedStringUpdates.Element);
            v77 = type metadata accessor for AttributedTextSelection?;
            v78 = v90;
          }

          else
          {
            v64 = v102;
            outlined init with copy of BindingStorage.Storage(v90, v102, type metadata accessor for AttributedTextSelection.Indices?);
            outlined destroy of AttributedTextSelection.Indices(v90, type metadata accessor for AttributedTextSelection);
            v91 = type metadata accessor for AttributedTextSelection.Indices(0);
            v92 = (*(*(v91 - 8) + 48))(v64, 1, v91);
            v32 = v113;
            if (v92 != 1)
            {
              v93 = specialized AttributedTextSelection.Indices.areValid<A>(within:)(a1);
              outlined destroy of AttributedTextSelection.Indices(v89, type metadata accessor for AttributedStringUpdates.Element);
              outlined destroy of AttributedTextSelection.Indices(v64, type metadata accessor for AttributedTextSelection.Indices);
              v33 = v111;
              if ((v93 & 1) == 0)
              {
                goto LABEL_9;
              }

              return 1;
            }

            outlined destroy of AttributedTextSelection.Indices(v89, type metadata accessor for AttributedStringUpdates.Element);
            v85 = type metadata accessor for AttributedTextSelection.Indices?;
LABEL_45:
            v77 = v85;
            v78 = v64;
          }

LABEL_46:
          outlined destroy of AttributedTextSelection.Indices(v78, v77);
          return 1;
        }

        v87 = v46;
LABEL_53:
        outlined destroy of AttributedTextSelection.Indices(v87, type metadata accessor for AttributedStringUpdates.Element);
        v32 = v113;
        v33 = v111;
        goto LABEL_9;
      }
    }

    else
    {
      v86 = v101;
      outlined init with copy of BindingStorage.Storage(v23, v101, type metadata accessor for AttributedTextSelection?);
      if (v42(&v23[v81], 1, v43) != 1)
      {
        v94 = &v23[v81];
        v95 = v106;
        outlined init with take of AttributedTextSelection(v94, v106, type metadata accessor for AttributedTextSelection);
        v98 = specialized static AttributedTextSelection.== infix(_:_:)(v86, v95, v96);
        outlined destroy of AttributedTextSelection.Indices(v95, type metadata accessor for AttributedTextSelection);
        v43 = v115;
        outlined destroy of AttributedTextSelection.Indices(v86, type metadata accessor for AttributedTextSelection);
        outlined destroy of AttributedTextSelection.Indices(v23, type metadata accessor for AttributedTextSelection?);
        a1 = v79;
        v26 = v109;
        v42 = v99;
        v37 = v100;
        if (v98)
        {
          goto LABEL_5;
        }

LABEL_39:
        v87 = v37;
        goto LABEL_53;
      }

      outlined destroy of AttributedTextSelection.Indices(v86, type metadata accessor for AttributedTextSelection);
      v37 = v100;
    }

    outlined destroy of AttributedTextSelection.Indices(v23, type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?));
    a1 = v79;
    v26 = v109;
    goto LABEL_39;
  }

  v40 = type metadata accessor for AttributedStringUpdates.Element?;
  v41 = v31;
LABEL_8:
  outlined destroy of AttributedTextSelection.Indices(v41, v40);
LABEL_9:
  v48 = v105;
  AttributedString.startIndex.getter();
  outlined init with copy of BindingStorage.Storage(a2, v48 + *(v32 + 20), type metadata accessor for AttributedTextSelection?);
  v116 = *(v33 + 56);
  (v116)(v48, 0, 1, v32);
  outlined assign with take of AttributedTextSelection(v48, v3 + v38, type metadata accessor for AttributedStringUpdates.Element?);
  v49 = v114;
  if (*(*v3 + 24) < 1)
  {
LABEL_29:
    (v116)(v26, 1, 1, v32);
    outlined destroy of AttributedTextSelection.Indices(v26, type metadata accessor for AttributedStringUpdates.Element?);
    return 0;
  }

  v50 = (v104 + 48);
  v108 = (v33 + 56);
  v109 = v26;
  v113 = v32;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized Deque._Storage._makeUniqueCopy()();
    }

    v51 = *v3;
    result = outlined init with take of AttributedTextSelection(*v3 + ((*(v33 + 80) + 40) & ~*(v33 + 80)) + *(v33 + 72) * *(*v3 + 32), v26, type metadata accessor for AttributedStringUpdates.Element);
    v53 = v51[4];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      break;
    }

    v56 = v51[3];
    if (v55 >= v51[2])
    {
      v55 = 0;
    }

    v51[4] = v55;
    if (__OFSUB__(v56, 1))
    {
      goto LABEL_55;
    }

    v51[3] = v56 - 1;
    (v116)(v26, 0, 1, v32);
    outlined init with take of AttributedTextSelection(v26, v49, type metadata accessor for AttributedStringUpdates.Element);
    type metadata accessor for AttributedString();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    if (AttributedString.Index.isValid<A>(within:)())
    {
      v57 = *v50;
      if ((*v50)(a2, 1, v115) == 1)
      {
        v77 = type metadata accessor for AttributedStringUpdates.Element;
        v78 = v114;
        goto LABEL_46;
      }

      v58 = a1;
      v59 = a2;
      v60 = v3;
      v61 = *(v32 + 20);
      v62 = *(v112 + 48);
      v63 = v59;
      v64 = v110;
      outlined init with copy of BindingStorage.Storage(v59, v110, type metadata accessor for AttributedTextSelection?);
      v65 = v114;
      v66 = &v114[v61];
      v67 = v115;
      outlined init with copy of BindingStorage.Storage(v66, &v64[v62], type metadata accessor for AttributedTextSelection?);
      if (v57(v64, 1, v67) == 1)
      {
        outlined destroy of AttributedTextSelection.Indices(v65, type metadata accessor for AttributedStringUpdates.Element);
        v68 = v57(&v64[v62], 1, v67);
        v3 = v60;
        a2 = v63;
        v49 = v65;
        if (v68 == 1)
        {
          v85 = type metadata accessor for AttributedTextSelection?;
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      v69 = v107;
      outlined init with copy of BindingStorage.Storage(v64, v107, type metadata accessor for AttributedTextSelection?);
      v70 = v57(&v64[v62], 1, v67);
      v3 = v60;
      if (v70 == 1)
      {
        v49 = v114;
        outlined destroy of AttributedTextSelection.Indices(v114, type metadata accessor for AttributedStringUpdates.Element);
        outlined destroy of AttributedTextSelection.Indices(v69, type metadata accessor for AttributedTextSelection);
        a2 = v63;
LABEL_26:
        outlined destroy of AttributedTextSelection.Indices(v64, type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?));
        a1 = v58;
        v26 = v109;
        v32 = v113;
        v33 = v111;
        goto LABEL_12;
      }

      v71 = &v64[v62];
      v72 = v106;
      outlined init with take of AttributedTextSelection(v71, v106, type metadata accessor for AttributedTextSelection);
      v74 = v69;
      v75 = specialized static AttributedTextSelection.== infix(_:_:)(v69, v72, v73);
      outlined destroy of AttributedTextSelection.Indices(v72, type metadata accessor for AttributedTextSelection);
      v76 = v114;
      outlined destroy of AttributedTextSelection.Indices(v114, type metadata accessor for AttributedStringUpdates.Element);
      v49 = v76;
      outlined destroy of AttributedTextSelection.Indices(v74, type metadata accessor for AttributedTextSelection);
      outlined destroy of AttributedTextSelection.Indices(v64, type metadata accessor for AttributedTextSelection?);
      a2 = v63;
      a1 = v58;
      v26 = v109;
      v32 = v113;
      v33 = v111;
      if (v75)
      {
        return 1;
      }
    }

    else
    {
      outlined destroy of AttributedTextSelection.Indices(v49, type metadata accessor for AttributedStringUpdates.Element);
    }

LABEL_12:
    if (*(*v3 + 24) <= 0)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t BindingStorage.update(to:)(uint64_t a1)
{
  v3 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v6);
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
  outlined init with copy of BindingStorage.Storage(a1 + *(v17 + 20), v11, type metadata accessor for Binding<AttributedTextSelection>?);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    outlined destroy of AttributedTextSelection.Indices(v11, type metadata accessor for Binding<AttributedTextSelection>?);
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    v19 = *(v18 + 48);
    outlined init with copy of BindingStorage.Storage(a1, v8, type metadata accessor for Binding<AttributedString>);
    BindingStorage.selection.getter(v5);
    type metadata accessor for MutableBox<AttributedTextSelection>(0);
    v20 = swift_allocObject();
    outlined init with take of AttributedTextSelection(v5, v20 + *(*v20 + *MEMORY[0x1E697DAC8] + 8), type metadata accessor for AttributedTextSelection);
    *&v8[v19] = v20;
    swift_storeEnumTagMultiPayload();
    return outlined assign with take of AttributedTextSelection(v8, v1, type metadata accessor for BindingStorage.Storage);
  }

  else
  {
    outlined init with take of AttributedTextSelection(v11, v16, type metadata accessor for Binding<AttributedTextSelection>);
    outlined destroy of AttributedTextSelection.Indices(v1, type metadata accessor for BindingStorage.Storage);
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v23 = *(v22 + 48);
    outlined init with copy of BindingStorage.Storage(a1, v1, type metadata accessor for Binding<AttributedString>);
    outlined init with take of AttributedTextSelection(v16, v1 + v23, type metadata accessor for Binding<AttributedTextSelection>);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t specialized AttributedTextStorage.updateEditorSelection(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v30 = a2;
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for Range<AttributedString.Index>, MEMORY[0x1E69E66A8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v31 = type metadata accessor for AttributedTextSelection(0);
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, v11, v12, v13);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  outlined init with copy of BindingStorage.Storage(a1, &v30 - v19, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v33[0] = *&v20[*(v15 + 44)];
  type metadata accessor for AtomicBox<ChangedValues>();
  AtomicBox.wrappedValue.getter();
  v21 = v34;
  outlined destroy of AttributedTextSelection.Indices(v20, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  if ((v21 & 3) != 0)
  {
    goto LABEL_13;
  }

  v32 = a3;
  v22 = *(v15 + 48);
  if (*(a1 + v22) == 1)
  {
    PlatformTextViewEditorStorage.commit()();
  }

  *(a1 + v22) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = Strong;
  v25 = [Strong textStorage];

  if (!v25)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [v25 beginEditing];

  PlatformTextViewEditorStorage.selection.getter(v10);
  outlined destroy of AttributedTextSelection.Indices(v10, type metadata accessor for AttributedTextSelection);
  outlined init with copy of Range<AttributedString.Index>(v30, v7);
  AttributedTextSelection.init(range:)(v7, v10);
  PlatformTextViewEditorStorage.selection.setter(v10);
  outlined init with copy of BindingStorage.Storage(a1, v17, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v34 = *&v17[*(v15 + 44)];
  v27 = AtomicBox.wrappedValue.modify();
  if ((*v26 & 8) == 0)
  {
    *v26 |= 8u;
  }

  v27(v33, 0);
  outlined destroy of AttributedTextSelection.Indices(v17, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v28 = v32;
  PlatformTextViewEditorStorage.selection.getter(v32);
  return (*(v8 + 56))(v28, 0, 1, v31);
}

uint64_t specialized AttributedTextStorage.updateEditorSelection(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v60 = a2;
  v5 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v51 - v8;
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_0(0, &lazy cache variable for type metadata for AttributeContainer?, MEMORY[0x1E69688E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v51 - v10;
  v66 = type metadata accessor for AttributedString.Index();
  v57 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedTextSelection(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, v16, v17, v18);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  outlined init with copy of BindingStorage.Storage(a1, &v51 - v23, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v67[0] = *&v24[v20[11]];
  type metadata accessor for AtomicBox<ChangedValues>();
  v61 = v25;
  AtomicBox.wrappedValue.getter();
  v26 = v68;
  outlined destroy of AttributedTextSelection.Indices(v24, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  if ((v26 & 3) != 0)
  {
    goto LABEL_16;
  }

  v27 = v20[12];
  if (*(a1 + v27) == 1)
  {
    PlatformTextViewEditorStorage.commit()();
  }

  *(a1 + v27) = 1;
  v58 = v20;
  v28 = a1 + v20[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_14;
  }

  v30 = Strong;
  v31 = [Strong textStorage];

  if (!v31)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v53 = v14;
  v54 = v13;
  v55 = a1;
  v56 = a3;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [v31 beginEditing];

  v32 = v65;
  v64 = v28;
  PlatformTextViewEditorStorage.selection.getter(v65);
  outlined destroy of AttributedTextSelection.Indices(v32, type metadata accessor for AttributedTextSelection);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for Range<AttributedString.Index>, MEMORY[0x1E69E66A8]);
  v34 = v57;
  (*(v57 + 16))(v12, &v60[*(v33 + 36)], v66);
  v35 = type metadata accessor for AttributeContainer();
  v36 = *(v35 - 8);
  v37 = v59;
  v60 = *(v36 + 56);
  (v60)(v59, 1, 1, v35);
  v38 = type metadata accessor for AttributedTextSelection.Indices(0);
  v39 = *(*(v38 - 8) + 56);
  v39(v32, 1, 1, v38);
  outlined destroy of AttributedTextSelection.Indices(v32, type metadata accessor for AttributedTextSelection.Indices?);
  (*(v34 + 32))(v32, v12, v66);
  swift_storeEnumTagMultiPayload();
  v39(v32, 0, 1, v38);
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    v40 = v63;
    (v60)(v63, 1, 1, v35);
  }

  else
  {
    v41 = v52;
    (*(v36 + 32))(v52, v37, v35);
    (v60)(v41, 0, 1, v35);
    v40 = v63;
    outlined init with take of AttributedTextSelection(v41, v63, type metadata accessor for AttributedTextSelection.TypingAttributes);
  }

  v42 = v55;
  v43 = v56;
  v44 = v54;
  v45 = v62;
  v46 = v65;
  outlined init with take of AttributedTextSelection(v40, &v65[*(v54 + 20)], type metadata accessor for AttributedTextSelection.TypingAttributes);
  v46[*(v44 + 24)] = 0;
  PlatformTextViewEditorStorage.selection.setter(v46);
  outlined init with copy of BindingStorage.Storage(v42, v45, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v68 = *(v45 + v58[11]);
  v48 = AtomicBox.wrappedValue.modify();
  v49 = v53;
  if ((*v47 & 8) == 0)
  {
    *v47 |= 8u;
  }

  v48(v67, 0);
  outlined destroy of AttributedTextSelection.Indices(v45, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  PlatformTextViewEditorStorage.selection.getter(v43);
  return (*(v49 + 56))(v43, 0, 1, v44);
}

void type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>)
  {
    v4 = type metadata accessor for AttributedTextStorage(0, &type metadata for PlatformTextViewEditorStorage, &protocol witness table for PlatformTextViewEditorStorage, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>);
    }
  }
}

void type metadata accessor for AtomicBox<ChangedValues>()
{
  if (!lazy cache variable for type metadata for AtomicBox<ChangedValues>)
  {
    v0 = type metadata accessor for AtomicBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>);
    }
  }
}

void type metadata accessor for RangeSet<AttributedString.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for BindingStorage(char *a1, char *a2)
{
  v4 = *(*(type metadata accessor for BindingStorage.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    type metadata accessor for Binding<AttributedString>(0);
    v8 = *(v7 + 32);
    v9 = type metadata accessor for AttributedString();
    v10 = *(*(v9 - 8) + 16);

    v10(&a1[v8], &a2[v8], v9);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v11 + 48)] = *&a2[*(v11 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v14 = *(v13 + 48);
      v15 = &a1[v14];
      v16 = &a2[v14];
      v17 = *&a2[v14 + 8];
      *v15 = *&a2[v14];
      *(v15 + 1) = v17;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v19 = *(v18 + 32);
      v20 = &v15[v19];
      v21 = &v16[v19];
      v22 = type metadata accessor for AttributedTextSelection.Indices(0);
      v23 = *(v22 - 8);
      v24 = *(v23 + 48);

      if (v24(v21, 1, v22))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v20, v21, *(*(v25 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v27 = v26;
        }

        else
        {
          v27 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v27 - 8) + 16))(v20, v21);
        swift_storeEnumTagMultiPayload();
        (*(v23 + 56))(v20, 0, 1, v22);
      }

      v28 = type metadata accessor for AttributedTextSelection(0);
      v29 = *(v28 + 20);
      v30 = type metadata accessor for AttributeContainer();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(&v21[v29], 1, v30))
      {
        v32 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v20[v29], &v21[v29], *(*(v32 - 8) + 64));
      }

      else
      {
        (*(v31 + 16))(&v20[v29], &v21[v29], v30);
        (*(v31 + 56))(&v20[v29], 0, 1, v30);
      }

      v20[*(v28 + 24)] = v21[*(v28 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for BindingStorage(char *a1)
{
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  type metadata accessor for Binding<AttributedString>(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v7 = &a1[*(v6 + 48)];

    type metadata accessor for Binding<AttributedTextSelection>(0);
    v9 = &v7[*(v8 + 32)];
    v10 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
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
    if (!(*(v15 + 48))(&v9[v12], 1, v13))
    {
      v14 = *(v15 + 8);

      v14(&v9[v12], v13);
    }
  }
}

char *initializeWithCopy for BindingStorage(char *a1, char *a2)
{
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  type metadata accessor for Binding<AttributedString>(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v10 + 48)] = *&a2[*(v10 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v12 = *(v11 + 48);
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = *&a2[v12 + 8];
    *v13 = *&a2[v12];
    *(v13 + 1) = v15;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v17 = *(v16 + 32);
    v18 = &v13[v17];
    v19 = &v14[v17];
    v20 = type metadata accessor for AttributedTextSelection.Indices(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);

    if (v22(v19, 1, v20))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v25 = v24;
      }

      else
      {
        v25 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v25 - 8) + 16))(v18, v19);
      swift_storeEnumTagMultiPayload();
      (*(v21 + 56))(v18, 0, 1, v20);
    }

    v26 = type metadata accessor for AttributedTextSelection(0);
    v27 = *(v26 + 20);
    v28 = type metadata accessor for AttributeContainer();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(&v19[v27], 1, v28))
    {
      v30 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v18[v27], &v19[v27], *(*(v30 - 8) + 64));
    }

    else
    {
      (*(v29 + 16))(&v18[v27], &v19[v27], v28);
      (*(v29 + 56))(&v18[v27], 0, 1, v28);
    }

    v18[*(v26 + 24)] = v19[*(v26 + 24)];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for BindingStorage(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    type metadata accessor for BindingStorage.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>(0);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 16);

    v8(&a1[v6], &a2[v6], v7);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = &a2[v11];
      *v12 = *&a2[v11];
      *(v12 + 1) = *&a2[v11 + 8];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = *(v14 + 32);
      v16 = &v12[v15];
      v17 = &v13[v15];
      v18 = type metadata accessor for AttributedTextSelection.Indices(0);
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);

      if (v20(v17, 1, v18))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v16, v17, *(*(v21 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v23 = v22;
        }

        else
        {
          v23 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v23 - 8) + 16))(v16, v17);
        swift_storeEnumTagMultiPayload();
        (*(v19 + 56))(v16, 0, 1, v18);
      }

      v24 = type metadata accessor for AttributedTextSelection(0);
      v25 = *(v24 + 20);
      v26 = type metadata accessor for AttributeContainer();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v17[v25], 1, v26))
      {
        v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v16[v25], &v17[v25], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v27 + 16))(&v16[v25], &v17[v25], v26);
        (*(v27 + 56))(&v16[v25], 0, 1, v26);
      }

      v16[*(v24 + 24)] = v17[*(v24 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for BindingStorage(char *a1, char *a2)
{
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  type metadata accessor for Binding<AttributedString>(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v11 = *(v10 + 48);
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = *&a2[v11 + 8];
    *v12 = *&a2[v11];
    *(v12 + 1) = v14;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v16 = *(v15 + 32);
    v17 = &v12[v16];
    v18 = &v13[v16];
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
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
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
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for BindingStorage(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    type metadata accessor for BindingStorage.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    type metadata accessor for Binding<AttributedString>(0);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = *&a2[v11 + 8];
      *v12 = *&a2[v11];
      *(v12 + 1) = v14;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v16 = *(v15 + 32);
      v17 = &v12[v16];
      v18 = &v13[v16];
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
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
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
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for BindingStorage(uint64_t a1)
{
  result = type metadata accessor for BindingStorage.Storage(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ChangedValues and conformance ChangedValues()
{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangedValues, &type metadata for ChangedValues, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangedValues, &type metadata for ChangedValues, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangedValues, &type metadata for ChangedValues, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangedValues, &type metadata for ChangedValues, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

void _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined assign with take of AttributedTextSelection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AttributedTextSelection?, AttributedTextSelection?))
  {
    type metadata accessor for AttributedTextSelection?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedTextSelection?, AttributedTextSelection?));
    }
  }
}

uint64_t outlined init with copy of BindingStorage.Storage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttributedTextSelection.Indices(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LimitedAvailabilityToolbarContent.init<A>(erasing:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized LimitedAvailabilityToolbarContent.init<A>(erasing:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t static LimitedAvailabilityToolbarContent._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a2 + 60);
  v6 = a2[3];
  v28 = a2[2];
  *v29 = v6;
  *&v29[12] = v5;
  v7 = a2[1];
  v26 = *a2;
  v27 = v7;
  v8 = *&v29[16];
  *&v14 = v6;
  DWORD2(v14) = DWORD2(v6);

  PreferencesInputs.makeIndirectOutputs()();

  v9 = *&v22[0];
  v10 = DWORD2(v22[0]);
  v11 = AGSubgraphGetCurrent();
  if (!v11)
  {
    __break(1u);
  }

  *&v23[12] = *&v29[12];
  v22[3] = v28;
  *v23 = *v29;
  LODWORD(v22[0]) = v4;
  *(&v22[0] + 1) = v11;
  *&v24 = v9;
  DWORD2(v24) = v10;
  v25 = *&v29[16];
  v18 = *v29;
  v19 = *&v23[16];
  v20 = v24;
  v21 = *&v29[16];
  v22[1] = v26;
  v22[2] = v27;
  v14 = v22[0];
  v15 = v26;
  v16 = v27;
  v17 = v28;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(&v26, v13);
  lazy protocol witness table accessor for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityToolbarContent.IndirectOutputs(v22);
  *&v14 = v9;
  DWORD2(v14) = v10;

  v13[0] = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  return result;
}

void LimitedAvailabilityToolbarContent.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 120))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 120) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityToolbarContent.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityToolbarContent.IndirectOutputs.updateValue()(unsigned int *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 1);
  v27 = *(a1 + 2);
  v28 = v2;
  v29[0] = *(a1 + 4);
  *(v29 + 12) = *(a1 + 19);
  v25 = v3;
  v26 = v3;
  v4 = *(a1 + 10);
  v5 = *(a1 + 14);
  v6 = *(a1 + 18);
  v24 = a1[22];
  v22 = v5;
  v23 = v6;
  v21 = v4;
  swift_beginAccess();
  v7 = *(v27 + 48);
  v30[1] = *(v27 + 32);
  v30[2] = v7;
  v8 = *(v27 + 80);
  v30[3] = *(v27 + 64);
  v30[4] = v8;
  v30[0] = *(v27 + 16);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v9 = swift_allocObject();
  memmove((v9 + 16), (v27 + 16), 0x50uLL);
  outlined init with copy of _ToolbarInputs(&v26, &v19);
  outlined init with copy of CachedEnvironment(v30, &v19);

  v10 = *(a1 + 12);
  v11 = a1[26];

  v12 = *AGGraphGetValue();
  LODWORD(v15) = *a1;
  v31 = v25;
  *v32 = v9;
  *&v32[8] = v21;
  *&v32[24] = v22;
  *&v32[40] = v23;
  *&v32[56] = v24;
  *&v20[16] = *&v32[16];
  *&v20[32] = *&v32[32];
  *&v20[44] = *&v32[44];
  v19 = v25;
  *v20 = *v32;
  v13 = *(*v12 + 80);

  outlined init with copy of _ToolbarInputs(&v31, v33);
  v13(&v17, &v15, &v19);

  v33[2] = *&v20[16];
  v34[0] = *&v20[32];
  *(v34 + 12) = *&v20[44];
  v33[0] = v19;
  v33[1] = *v20;
  outlined destroy of _ToolbarInputs(v33);
  *&v19 = v10;
  DWORD2(v19) = v11;
  v15 = v17;
  v16 = v18;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v19 = v25;
  *v20 = v9;
  *&v20[8] = v21;
  *&v20[24] = v22;
  *&v20[40] = v23;
  *&v20[56] = v24;
  return outlined destroy of _ToolbarInputs(&v19);
}

uint64_t LimitedAvailabilityToolbarContentStorage._makeToolbar(content:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v7 = a2[3];
  v15[2] = a2[2];
  v16[0] = v7;
  *(v16 + 12) = *(a2 + 60);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v9 = *(v5 + 96);
  v10 = *(v5 + 104);
  v14 = v6;
  v11 = type metadata accessor for LimitedAvailabilityToolbarContentStorage.Child(0, v9, v10, a4);
  swift_getWitnessTable(protocol conformance descriptor for LimitedAvailabilityToolbarContentStorage<A>.Child, v11);
  _GraphValue.init<A>(_:)();
  return (*(v10 + 32))(v13, v15, v9, v10);
}

uint64_t LimitedAvailabilityToolbarContentStorage.Child.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilityToolbarContentStorage(0, a2, a3, v7);
  v8 = swift_dynamicCastClassUnconditional();
  v9 = *(*(a2 - 8) + 16);
  v10 = v8 + *(*v8 + 112);

  return v9(a4, v10, a2);
}

uint64_t specialized LimitedAvailabilityToolbarContent.init<A>(erasing:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilityToolbarContentStorage(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  return LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v6);
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitedAvailabilityToolbarContent.IndirectOutputs, &unk_1EFFBB508, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs);
  }

  return result;
}

void destroy for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1)
{

  v2 = *(a1 + 120);
}

uint64_t initializeWithCopy for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  v7 = v3;

  v8 = v6;
  return a1;
}

uint64_t assignWithCopy for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a1 + 120);
  v8 = *(a2 + 120);
  *(a1 + 120) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v4 = *(a1 + 120);
  v5 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v5;

  return a1;
}

uint64_t View.navigationBarTitle(_:displayMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a4;
  v26 = a8;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  LOBYTE(a5) = *a5;
  View.navigationTitle(_:)(a1, a2, a3 & 1, v25, a6, a7, &v24 - v17);
  v29[0] = a5;
  v28[0] = a7;
  v28[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v19 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v28);
  v21 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v27[0] = WitnessTable;
  v27[1] = v21;
  v22 = swift_getWitnessTable(v19, v15, v27);
  View.navigationBarTitleDisplayMode(_:)(v29, v15, v22, v26);
  return (*(v16 + 8))(v18, v15);
}

uint64_t View.navigationBarTitle<A>(_:displayMode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v22 = a7;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  LOBYTE(a2) = *a2;
  View.navigationTitle<A>(_:)(a1, a3, a5, &v21 - v14);
  v25 = a2;
  v24[0] = a5;
  v24[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v16 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v11, v24);
  v18 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v23[0] = WitnessTable;
  v23[1] = v18;
  v19 = swift_getWitnessTable(v16, v12, v23);
  View.navigationBarTitleDisplayMode(_:)(&v25, v12, v19, v22);
  return (*(v13 + 8))(v15, v12);
}

uint64_t View.navigationBarBanner<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a1;
  v13[7] = a2;
  v8 = type metadata accessor for ToolbarItem(255, MEMORY[0x1E69E7CA8] + 8, a4, a6);
  v11 = type metadata accessor for TupleToolbarContent(0, v8, v9, v10);
  return View.toolbar<A>(content:)(partial apply for closure #1 in View.navigationBarBanner<A>(_:), v13, a3, v11, a5, &protocol witness table for TupleToolbarContent<A>);
}

uint64_t closure #1 in View.navigationBarBanner<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ToolbarItem(0, MEMORY[0x1E69E7CA8] + 8, a4, a6);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18[-v14];
  if (one-time initialization token for principal != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.principal, v18);
  ToolbarItem<>.init(placement:content:)(v18, a1, a4, a6, v12);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v12, v9, &protocol witness table for ToolbarItem<A, B>);
  v16 = *(v10 + 8);
  v16(v12, v9);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v16)(v15, v9);
}

Swift::Int NavigationBarItem.TitleDisplayMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode()
{
  result = lazy protocol witness table cache variable for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode;
  if (!lazy protocol witness table cache variable for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationBarItem.TitleDisplayMode, &type metadata for NavigationBarItem.TitleDisplayMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey>, &type metadata for NavigationBarBackButtonHiddenKey, &protocol witness table for NavigationBarBackButtonHiddenKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

double destroy for UIKitPasteControl(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 25));
  outlined consume of Environment<Color?>.Content(*(a1 + 32));
  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));

  return result;
}

uint64_t initializeWithCopy for UIKitPasteControl(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 25);
  v8 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 25) = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  outlined copy of Environment<Color?>.Content(v9);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  v13 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v13;

  return a1;
}

uint64_t assignWithCopy for UIKitPasteControl(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 25);
  v10 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = *(a1 + 16);
  v12 = *(a1 + 25);
  *(a1 + 16) = v8;
  v13 = *(a1 + 24);
  *(a1 + 24) = v10;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v11, v13, v12);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  outlined copy of Environment<Color?>.Content(v14);
  v16 = *(a1 + 32);
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  outlined consume of Environment<Color?>.Content(v16);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  *(a1 + 64) = *(a2 + 64);

  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;

  return a1;
}

uint64_t assignWithTake for UIKitPasteControl(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = *(a1 + 16);
  v11 = *(a1 + 25);
  *(a1 + 16) = a2[2];
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v10, v12, v11);
  v13 = *(a2 + 40);
  v14 = *(a1 + 32);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v13;
  outlined consume of Environment<Color?>.Content(v14);
  v15 = *(a2 + 56);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v15;
  outlined consume of Environment<Selector?>.Content(v16, v17);

  v18 = a2[10];
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = v18;

  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitPasteControl(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitPasteControl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIKitPasteControl.makeUIView(context:)(uint64_t a1, double a2)
{
  type metadata accessor for UIButton.Configuration.CornerStyle?(0, a2);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = *(a1 + 40);
  v14 = *v2;
  v15 = *(v2 + 8);
  v31 = *(v2 + 16);
  v32 = v13;
  v16 = *(v2 + 24);
  v17 = *(v2 + 25);
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCD48]) init];
  specialized Environment.wrappedValue.getter(v14, v15, &v34);
  if (v34 != 0.0)
  {
    v33 = v34;
    v19 = EffectiveLabelStyle.displayMode.getter();
    if ((v20 & 1) == 0)
    {
      [v18 setDisplayMode_];
    }
  }

  v21 = v16 | (v17 << 8);
  v22 = v31;
  specialized Environment.wrappedValue.getter(v31, v21, &v34);
  if (v35 != 1)
  {
    v23 = MEMORY[0x1E69DC510];
    goto LABEL_9;
  }

  v23 = MEMORY[0x1E69DC508];
  if (*&v34 <= 1)
  {
    if (v34 == 0.0)
    {
      goto LABEL_11;
    }

LABEL_9:
    (*(v8 + 104))(v6, *v23, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v12, v6, v7);
    (*(v8 + 16))(v30, v12, v7);
    UIPasteControlConfiguration.cornerStyle.setter();
    (*(v8 + 8))(v12, v7);
    goto LABEL_12;
  }

  if (*&v34 != 2)
  {
    goto LABEL_9;
  }

LABEL_11:
  v24 = (*(v8 + 56))(v6, 1, 1, v7);
  outlined destroy of UIButton.Configuration.CornerStyle?(v6, v24);
LABEL_12:
  specialized Environment.wrappedValue.getter(v22, v21, &v34);
  if ((v35 & 1) == 0)
  {
    [v18 setCornerRadius_];
  }

  v25 = [objc_allocWithZone(MEMORY[0x1E69DCD40]) initWithConfiguration_];
  [v25 setTarget_];
  LODWORD(v26) = 1144750080;
  [v25 setContentHuggingPriority:0 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [v25 setContentHuggingPriority:1 forAxis:v27];

  return v25;
}

uint64_t EffectiveLabelStyle.displayMode.getter()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  outlined consume of Environment<CGFloat?>.Content(KeyPath, 0, 0);
  outlined consume of Environment<CGFloat?>.Content(v3, 0, 0);
  outlined consume of Environment<CGFloat?>.Content(v4, 0, 0);
  if (v1 == &type metadata for TitleAndIconLabelStyle)
  {
    return 0;
  }

  if (v1 == &type metadata for TitleOnlyLabelStyle)
  {
    return 2;
  }

  return v1 == &type metadata for IconOnlyLabelStyle;
}

uint64_t UIKitPasteControl.updateUIView(_:context:)(void *a1, uint64_t a2, double a3)
{
  type metadata accessor for UIButton.Configuration.CornerStyle?(0, a3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v42 - v14;
  v15 = *(a2 + 40);
  v16 = *v3;
  v17 = *(v3 + 8);
  v43 = *(v3 + 16);
  v18 = *(v3 + 24);
  v19 = *(v3 + 25);
  v45 = *(v3 + 32);
  v44 = *(v3 + 40);
  v47 = *(v3 + 48);
  v46 = *(v3 + 56);
  v48 = *(v3 + 64);
  v20 = *(v3 + 80);
  v49 = v15;
  v50 = v20;
  v51 = a1;
  v21 = [a1 configuration];
  specialized Environment.wrappedValue.getter(v16, v17, &v53);
  if (v53 != 0.0)
  {
    v52 = *&v53;
    v22 = EffectiveLabelStyle.displayMode.getter();
    if ((v23 & 1) == 0 && v22 != [v21 displayMode])
    {
      MEMORY[0x18D009810](0xD000000000000025, 0x800000018CD48050);
    }
  }

  v24 = v18 | (v19 << 8);
  v25 = v43;
  specialized Environment.wrappedValue.getter(v43, v24, &v53);
  if (v54 == 1)
  {
    v26 = MEMORY[0x1E69DC508];
    v27 = v42;
    if (*&v53 > 1)
    {
      if (*&v53 == 2)
      {
LABEL_14:
        v31 = (*(v10 + 56))(v8, 1, 1, v9);
        outlined destroy of UIButton.Configuration.CornerStyle?(v8, v31);
        goto LABEL_15;
      }
    }

    else if (v53 == 0.0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69DC510];
    v27 = v42;
  }

  (*(v10 + 104))(v8, *v26, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(v10 + 32))(v27, v8, v9);
  UIPasteControlConfiguration.cornerStyle.getter();
  lazy protocol witness table accessor for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle(v28);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v10 + 8);
  v30(v12, v9);
  if ((v29 & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000002CLL, 0x800000018CD47FF0);
  }

  v30(v27, v9);
LABEL_15:
  specialized Environment.wrappedValue.getter(v25, v24, &v53);
  if ((v54 & 1) == 0)
  {
    v32 = v53;
    [v21 cornerRadius];
    if (v32 != v33)
    {
      MEMORY[0x18D009810](0xD000000000000027, 0x800000018CD48020);
    }
  }

  v34 = specialized Environment.wrappedValue.getter(v45, v44);
  if (v34)
  {
    type metadata accessor for UIColor();
    v34 = UIColor.init(_:)(v34);
  }

  v35 = v51;
  [v51 setTintColor_];

  [v35 setEnabled_];
  v36 = v50;
  v37 = v49 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper;
  v38 = *(v49 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  v39 = *(v49 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper + 8);
  v40 = *(v49 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper + 16);
  *v37 = v48;
  *(v37 + 16) = v36;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  PasteHelper.ConfigurationSupport.pasteHelper.didset(v38);
  outlined consume of OnInsertConfiguration?(v38, v39, v40);
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitPasteControl@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for PasteHelper.ConfigurationSupport();
  v12 = *(v1 + 64);
  v5 = objc_allocWithZone(v4);

  v6 = [v5 init];
  v7 = &v6[OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper];
  v8 = *&v6[OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper];
  v9 = *&v6[OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper + 8];
  v10 = *&v6[OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper + 16];
  *v7 = v12;
  *(v7 + 2) = v3;

  PasteHelper.ConfigurationSupport.pasteHelper.didset(v8);
  outlined consume of OnInsertConfiguration?(v8, v9, v10);

  *a1 = v6;
  return result;
}

void type metadata accessor for UIButton.Configuration.CornerStyle?(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for UIButton.Configuration.CornerStyle?)
  {
    type metadata accessor for UIButton.Configuration.CornerStyle();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for UIButton.Configuration.CornerStyle?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle(double a1)
{
  result = lazy protocol witness table cache variable for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle;
  if (!lazy protocol witness table cache variable for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle)
  {
    v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
    result = swift_getWitnessTable(MEMORY[0x1E69DC520], v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle);
  }

  return result;
}

uint64_t outlined destroy of UIButton.Configuration.CornerStyle?(uint64_t a1, double a2)
{
  type metadata accessor for UIButton.Configuration.CornerStyle?(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for WindowContentShapeSizingBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for WindowContentShapeSizingBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for WindowContentShapeSizingBehavior.Value(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for WindowContentShapeSizingBehavior.Value(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t TabContent.dropDestination<A>(for:action:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v7 = MEMORY[0x18D009810](0xD00000000000003FLL, 0x800000018CD480C0, a3);
  v8 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v7, a4, v8, x8_0);
}

uint64_t TabContent.visibility(_:for:)@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6 = MEMORY[0x18D009810](0xD000000000000035, 0x800000018CD48100);
  v7 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v6, a3, v7, x8_0);
}

uint64_t TabView.init<A>(selection:sidebarVisibility:content:)@<X0>(uint64_t a1@<X0>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(a7, 1, 1, v13);
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 8))(a7, v16);
  (*(v14 + 16))(a7, a1, v13);
  v17 = (v15)(a7, 0, 1, v13);
  a4(v17);

  (*(v14 + 8))(a1, v13);
  v22 = a5;
  v23 = a6;
  v24 = a8;
  v25 = a9;
  v18 = type metadata accessor for TabContentBuilder.Content(255, &v22);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TabContentBuilder<A>.Content<A1>, v18);
  v22 = a5;
  v23 = v18;
  v24 = a8;
  v25 = WitnessTable;
  type metadata accessor for TabView(0, &v22);
  return PickerBuilder.Content.init(_:)();
}

uint64_t TabView.init<A>(sidebarVisibility:content:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  *a5 = 0;
  a5[1] = 0;
  v9(v8);

  v10 = MEMORY[0x1E69E73E0];
  v15 = MEMORY[0x1E69E73E0];
  v16 = a3;
  v11 = MEMORY[0x1E69E73F0];
  v17 = MEMORY[0x1E69E73F0];
  v18 = a4;
  v12 = type metadata accessor for TabContentBuilder.Content(255, &v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TabContentBuilder<A>.Content<A1>, v12);
  v15 = v10;
  v16 = v12;
  v17 = v11;
  v18 = WitnessTable;
  type metadata accessor for TabView(0, &v15);
  return PickerBuilder.Content.init(_:)();
}

uint64_t static AdaptiveTabViewStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v8 = a2[1];
  v20 = *a2;
  v21 = v8;
  v9 = type metadata accessor for AdaptableTabViewRoot(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v10);
  v11 = type metadata accessor for _VariadicView.Tree();
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v12 = type metadata accessor for ModifiedContent();
  v19 = v6;
  v18[0] = &type metadata for AdaptiveTabViewStyle;
  v18[1] = a3;
  v18[2] = &protocol witness table for AdaptiveTabViewStyle;
  v18[3] = a4;
  type metadata accessor for _TabViewValue(255, v18);
  type metadata accessor for _GraphValue();
  LODWORD(v18[0]) = _GraphValue.value.getter();
  v14 = type metadata accessor for AdaptiveTabViewStyle.Body(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for AdaptiveTabViewStyle.Body<A>, v14);
  _GraphValue.init<A>(_:)();
  v17[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v9);
  v17[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v11, v17);
  v16[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v12, v16);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static AdaptiveTabViewStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for AdaptableTabViewRoot(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v8);
  v9 = type metadata accessor for _VariadicView.Tree();
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v10 = type metadata accessor for ModifiedContent();
  v17 = v6;
  v16[0] = &type metadata for AdaptiveTabViewStyle;
  v16[1] = a3;
  v16[2] = &protocol witness table for AdaptiveTabViewStyle;
  v16[3] = a4;
  type metadata accessor for _TabViewValue(255, v16);
  type metadata accessor for _GraphValue();
  LODWORD(v16[0]) = _GraphValue.value.getter();
  v12 = type metadata accessor for AdaptiveTabViewStyle.Body(0, a3, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for AdaptiveTabViewStyle.Body<A>, v12);
  _GraphValue.init<A>(_:)();
  v15[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v7);
  v15[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v9, v15);
  v14[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v14);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t AdaptiveTabViewStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for AdaptiveTabViewStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for AdaptiveTabViewStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t AdaptiveTabViewStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v28 = a4;
  type metadata accessor for Binding();
  v26 = type metadata accessor for Optional();
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - v8;
  v33[0] = &type metadata for AdaptiveTabViewStyle;
  v33[1] = a2;
  v33[2] = &protocol witness table for AdaptiveTabViewStyle;
  v33[3] = a3;
  v10 = type metadata accessor for _TabViewValue(0, v33);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v14 = type metadata accessor for AdaptableTabViewRoot(0, a2, a3, v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v25 = type metadata accessor for TabViewStyleConfiguration.Content(255, a2, a3, v17);
  v18 = type metadata accessor for _VariadicView.Tree();
  v27 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  AdaptiveTabViewStyle.Body.base.getter(a2, a3, v12);
  (*(v7 + 32))(v9, v12, v26);
  v21 = default argument 0 of AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)();
  AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)(v21, v23, v22 & 0x1FF, v9, 1, a2, a3, v16);
  v29 = a2;
  v30 = a3;
  v31 = v6;
  _VariadicView.Tree.init(_:content:)();
  v32[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v14);
  v32[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable(MEMORY[0x1E697E308], v18, v32);
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  View.input<A>(_:)();
  return (*(v27 + 8))(v20, v18);
}

uint64_t closure #1 in AdaptiveTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = &type metadata for AdaptiveTabViewStyle;
  v11[1] = a2;
  v11[2] = &protocol witness table for AdaptiveTabViewStyle;
  v11[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v11);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  AdaptiveTabViewStyle.Body.base.getter(a2, a3, v11 - v7);
  (*(v6 + 8))(v8, v5);
  type metadata accessor for TabViewStyleConfiguration.Content(0, a2, a3, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance AdaptiveTabViewStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for AdaptableTabViewRoot(255, v4, v5, a2);
  type metadata accessor for TabViewStyleConfiguration.Content(255, v4, v5, v6);
  type metadata accessor for _VariadicView.Tree();
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t TabGroup<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v9;
  v10 = type metadata accessor for TabSection(0, v12);
  return TabSection<>._identifiedView.getter(v10, a2, a3, a4, a5);
}

uint64_t TabGroup<>.init<>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16(v13);
  a1(v17);
  return TabSection.init(header:content:footer:)(v15, v11, v18, a2, a3, MEMORY[0x1E6981E70], a4, a5);
}

uint64_t TabGroup<>.init<>(content:header:compact:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v27 = a2;
  v25 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20(v17);
  v22 = a1(v21);
  v27(v22);
  return TabSection.init(header:content:footer:)(v19, v15, v12, a5, a6, a7, a8, v25);
}

uint64_t TabGroup<>.init<>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10(v7);
  return TabSection.init(header:content:footer:)(v11, v9, v12, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3, a4);
}

uint64_t outlined consume of Label<Text, Image>?(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t TabGroup<>.init<>(_:image:content:)@<X0>(uint64_t a1@<X0>, void (*a4)(uint64_t)@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t arg0, uint64_t arg8)
{
  v22 = a5;
  v23 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = Image.init(_:bundle:)();
  v19 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v24[0] = v11;
  v24[1] = v13;
  v24[2] = v15 & 1;
  v24[3] = v17;
  v24[4] = v18;
  v25 = 1;
  a4(v19);
  return TabSection.init(header:content:footer:)(v24, v10, v20, &type metadata for DefaultTabLabel, arg0, MEMORY[0x1E6981E70], arg8, v23);
}

uint64_t TabGroup<>.init<>(_:image:content:)@<X0>(char *a1@<X0>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a6;
  v36 = a7;
  v32[1] = a5;
  v33 = a4;
  v34 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v32 - v17;
  v19 = *(v12 + 16);
  v19(v32 - v17, a1, v11, v16);
  (v19)(v14, v18, v11);
  v20 = Text.init(_:)();
  v22 = v21;
  v24 = v23;
  LOBYTE(v37[0]) = v25 & 1;
  v26 = Image.init(_:bundle:)();
  v27 = *(v12 + 8);
  v27(v18, v11);
  v28 = LOBYTE(v37[0]);
  v29 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v37[0] = v20;
  v37[1] = v22;
  v37[2] = v28;
  v37[3] = v24;
  v37[4] = v26;
  v38 = 1;
  v33(v29);
  v27(a1, v11);
  return TabSection.init(header:content:footer:)(v37, v10, v30, &type metadata for DefaultTabLabel, v35, MEMORY[0x1E6981E70], v36, v34);
}

uint64_t TabGroup<>.init<>(_:image:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t (*a4)(uint64_t)@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[2] = a5;
  v28 = a4;
  v29 = a6;
  v30 = a11;
  v27[0] = a7;
  v27[1] = a8;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = Image.init(_:bundle:)();
  v24 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v31[0] = v16;
  v31[1] = v18;
  v31[2] = v20 & 1;
  v31[3] = v22;
  v31[4] = v23;
  v32 = 1;
  v25 = v28(v24);
  (v27[0])(v25);
  return TabSection.init(header:content:footer:)(v31, v15, v12, &type metadata for DefaultTabLabel, a9, a10, v30, v29);
}

uint64_t TabGroup<>.init<>(_:image:content:compact:)@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  v42 = a5;
  v44 = a7;
  v45 = a6;
  v43 = a4;
  v39 = a1;
  v40 = a3;
  v47 = a9;
  v48 = a10;
  v46 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  v25 = *(v18 + 16);
  v25(&v38 - v23, a1, v17, v22);
  (v25)(v20, v24, v17);
  v26 = Text.init(_:)();
  v28 = v27;
  v30 = v29;
  LOBYTE(v49[0]) = v31 & 1;
  v32 = Image.init(_:bundle:)();
  v33 = *(v18 + 8);
  v33(v24, v17);
  v34 = LOBYTE(v49[0]);
  v35 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v49[0] = v26;
  v49[1] = v28;
  v49[2] = v34;
  v49[3] = v30;
  v49[4] = v32;
  v50 = 1;
  v36 = v43(v35);
  v45(v36);
  v33(v39, v17);
  return TabSection.init(header:content:footer:)(v49, v16, v13, &type metadata for DefaultTabLabel, v41, v48, v46, v47);
}

uint64_t TabGroup<>.init<A>(_:image:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t x5_0@<X5>, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v37 = a8;
  v38 = a6;
  v35 = a5;
  v36 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v25, a1, v26, v23);
  a12(&v39, v25, a2, a3, a7, a11);
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = 1;
  v36(v32);
  (*(v21 + 8))(a1, a7);
  return TabSection.init(header:content:footer:)(&v39, v19, v33, &type metadata for DefaultTabLabel, x5_0, MEMORY[0x1E6981E70], v38, v37);
}

uint64_t TabGroup<>.init<A>(_:image:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v39 = a8;
  v40 = a5;
  v42 = a7;
  v43 = a6;
  v41 = a4;
  v45 = a9;
  v46 = a11;
  v44 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a12 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29, a1, a12, v27);
  a17(&v47, v29, a2, a3, a12, a16);
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v34 = v50;
  v33 = v51;
  v35 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v50 = v34;
  v51 = v33;
  v52 = 1;
  v36 = v41(v35);
  v43(v36);
  (*(v25 + 8))(a1, a12);
  return TabSection.init(header:content:footer:)(&v47, v24, v21, &type metadata for DefaultTabLabel, v39, v44, v46, v45);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, void (*a4)(uint64_t)@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v26 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  specialized Image.init(systemName:)(a2, a3);
  v21 = v20;
  v22 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v27[0] = v13;
  v27[1] = v15;
  v27[2] = v17 & 1;
  v27[3] = v19;
  v27[4] = v21;
  v28 = 1;
  a4(v22);
  return TabSection.init(header:content:footer:)(v27, v12, v23, &type metadata for DefaultTabLabel, a7, MEMORY[0x1E6981E70], a8, v26);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a6;
  v40 = a7;
  v36[1] = a5;
  v37 = a4;
  v38 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v36 - v19;
  v21 = *(v14 + 16);
  v21(v36 - v19, a1, v13, v18);
  (v21)(v16, v20, v13);
  v22 = Text.init(_:)();
  v24 = v23;
  v26 = v25;
  LOBYTE(v41[0]) = v27 & 1;
  v28 = specialized Image.init(systemName:)(a2, a3);
  v30 = v29;
  v31 = *(v14 + 8);
  v31(v20, v13, v28);
  v32 = LOBYTE(v41[0]);
  v33 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v41[0] = v22;
  v41[1] = v24;
  v41[2] = v32;
  v41[3] = v26;
  v41[4] = v30;
  v42 = 1;
  v37(v33);
  (v31)(a1, v13);
  return TabSection.init(header:content:footer:)(v41, v12, v34, &type metadata for DefaultTabLabel, v39, MEMORY[0x1E6981E70], v40, v38);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t (*a4)(uint64_t)@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30[2] = a5;
  v31 = a4;
  v32 = a6;
  v33 = a11;
  v30[0] = a7;
  v30[1] = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  specialized Image.init(systemName:)(a2, a3);
  v26 = v25;
  v27 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v34[0] = v18;
  v34[1] = v20;
  v34[2] = v22 & 1;
  v34[3] = v24;
  v34[4] = v26;
  v35 = 1;
  v28 = v31(v27);
  (v30[0])(v28);
  return TabSection.init(header:content:footer:)(v34, v17, v14, &type metadata for DefaultTabLabel, a9, a10, v33, v32);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v45 = a5;
  v47 = a7;
  v48 = a6;
  v46 = a4;
  v42 = a1;
  v43 = a3;
  v50 = a9;
  v51 = a10;
  v49 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocalizedStringResource();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v26 = *(v19 + 16);
  v26(&v41 - v24, a1, v18, v23);
  (v26)(v21, v25, v18);
  v27 = Text.init(_:)();
  v29 = v28;
  v31 = v30;
  LOBYTE(v52[0]) = v32 & 1;
  v33 = specialized Image.init(systemName:)(a2, v43);
  v35 = v34;
  v36 = *(v19 + 8);
  v36(v25, v18, v33);
  v37 = LOBYTE(v52[0]);
  v38 = outlined consume of Label<Text, Image>?(0, 0, 0, 0, 0);
  v52[0] = v27;
  v52[1] = v29;
  v52[2] = v37;
  v52[3] = v31;
  v52[4] = v35;
  v53 = 1;
  v39 = v46(v38);
  v48(v39);
  (v36)(v42, v18);
  return TabSection.init(header:content:footer:)(v52, v17, v14, &type metadata for DefaultTabLabel, v44, v51, v49, v50);
}

uint64_t TabContent.customizationBehavior(_:for:)@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6 = MEMORY[0x18D009810](0xD000000000000040, 0x800000018CD48140);
  v7 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v6, a3, v7, x8_0);
}

uint64_t TabContent.defaultVisibility(_:for:)@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6 = MEMORY[0x18D009810](0xD00000000000003CLL, 0x800000018CD48190);
  v7 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v6, a3, v7, x8_0);
}

void View.tabViewSidebarCustomization(_:)()
{
  MEMORY[0x18D009810](0xD000000000000042, 0x800000018CD481D0);

  JUMPOUT(0x18D00A570);
}

unint64_t TabSidebarCustomization.init()@<X0>(uint64_t a2@<X8>)
{
  UUID.init()();
  v3 = type metadata accessor for TabViewCustomization(0);
  v4 = *(v3 + 20);
  v5 = MEMORY[0x1E69E7CC0];
  *(a2 + v4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = *(v3 + 24);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(v5);
  *(a2 + v6) = result;
  return result;
}

uint64_t TabSidebarCustomization.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for TabViewCustomization(0) + 20));
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, 0), (v7 & 1) != 0))
  {
    return *(*(v5 + 56) + 2 * v6);
  }

  else
  {
    return 0;
  }
}

uint64_t key path setter for TabSidebarCustomization.subscript(visibility:) : TabSidebarCustomization(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  specialized TabViewCustomization.subscript.setter(v5, v3, v4);
}

uint64_t TabSidebarCustomization.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  specialized TabViewCustomization.subscript.setter(a1, a2, a3);
}

uint64_t (*TabSidebarCustomization.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = TabSidebarCustomization.subscript.getter(a2, a3);
  return TabSidebarCustomization.subscript.modify;
}

uint64_t TabSidebarCustomization.subscript.modify(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = *(a1 + 24);

  specialized TabViewCustomization.subscript.setter(v3, v2, v1);
}

uint64_t TabSidebarCustomization.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for TabViewCustomization(0) + 24));
  v8 = MEMORY[0x1E69E7CC0];
  if (*(v7 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, 0);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = TabSectionCustomizationEntry.clientOrder.getter(v11);

  if (v12)
  {
    v14 = *(v12 + 16);
    if (v14)
    {
      v22 = a3;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v15 = v8;
      v16 = (v12 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);

        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 24 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        *(v21 + 48) = 0;
        v16 += 2;
        --v14;
      }

      while (v14);

      a3 = v22;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  return result;
}

uint64_t key path setter for TabSidebarCustomization.subscript(groupID:) : TabSidebarCustomization(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;

  return TabSidebarCustomization.subscript.setter(&v6, v3, v4);
}

uint64_t TabSidebarCustomization.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (*(v6 + 16))
  {
    v7 = *(type metadata accessor for TabViewCustomization(0) + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + v7);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, a3, 0, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v10;
  }

  else
  {

    type metadata accessor for TabViewCustomization(0);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, 0, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }

  return result;
}

uint64_t (*TabSidebarCustomization.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  TabSidebarCustomization.subscript.getter(a2, a3, a1);
  return TabSidebarCustomization.subscript.modify;
}

uint64_t TabSidebarCustomization.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  v5 = a1[2];
  v6 = a1[3];
  if (a2)
  {
    if (v4)
    {
      v7 = *(type metadata accessor for TabViewCustomization(0) + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v6 + v7);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v2, v5, 0, isUniquelyReferenced_nonNull_native);

      *(v6 + v7) = v12;
    }

    else
    {

      type metadata accessor for TabViewCustomization(0);
      specialized Dictionary._Variant.removeValue(forKey:)(v2, v5, 0, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
    }
  }

  else
  {
    if (v4)
    {
      v9 = *(type metadata accessor for TabViewCustomization(0) + 24);

      v10 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v6 + v9);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v2, v5, 0, v10);

      *(v6 + v9) = v13;
      return result;
    }

    type metadata accessor for TabViewCustomization(0);
    specialized Dictionary._Variant.removeValue(forKey:)(v2, v5, 0, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }
}

Swift::Void __swiftcall TabSidebarCustomization.reset()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for TabViewCustomization(0);
  v4 = *(v3 + 20);

  *(v0 + v4) = v2;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(v1);
  v6 = *(v3 + 24);

  *(v0 + v6) = v5;
}

Swift::Void __swiftcall TabSidebarCustomization.resetVisibility()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = *(type metadata accessor for TabViewCustomization(0) + 20);

  *(v0 + v2) = v1;
}

Swift::Void __swiftcall TabSidebarCustomization.resetGroupOrder(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *(type metadata accessor for TabViewCustomization(0) + 24);

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object, 0);
  v8 = v7;

  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + v5);
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    outlined consume of TabCustomizationID.Base();

    specialized _NativeDictionary._delete(at:)(v6, v10);
    *(v2 + v5) = v10;
  }
}

Swift::Void __swiftcall TabSidebarCustomization.resetGroupOrder()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = *(type metadata accessor for TabViewCustomization(0) + 24);

  *(v0 + v2) = v1;
}

BOOL static TabSidebarCustomization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v4 = type metadata accessor for TabViewCustomization(0);
    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0dE5EntryVTt1g5(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0d7SectionE5EntryVTt1g5(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))))
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TabSidebarCustomization.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000018CD48310 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabSidebarCustomization.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabSidebarCustomization.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabSidebarCustomization.encode(to:)(void *a1)
{
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabSidebarCustomization.CodingKeys>, lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for TabViewCustomization(0);
  lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabViewCustomization and conformance TabViewCustomization, type metadata accessor for TabViewCustomization, protocol conformance descriptor for TabViewCustomization);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t TabSidebarCustomization.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for TabViewCustomization(0);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabSidebarCustomization.CodingKeys>, lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TabSidebarCustomization(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = *(v3 + 20);
  v13 = MEMORY[0x1E69E7CC0];
  *&v11[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = *(v3 + 24);
  *&v11[v14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();
  v15 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v21;
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabViewCustomization and conformance TabViewCustomization, type metadata accessor for TabViewCustomization, protocol conformance descriptor for TabViewCustomization);
    v17 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined assign with take of TabViewCustomization(v17, v11);
    outlined init with copy of TabSidebarCustomization(v11, v20, type metadata accessor for TabSidebarCustomization);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TabSidebarCustomization(v11, type metadata accessor for TabSidebarCustomization);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v4 = type metadata accessor for TabViewCustomization(0);
    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0dE5EntryVTt1g5(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0d7SectionE5EntryVTt1g5(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))))
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TabSidebarCustomization(void *a1)
{
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabSidebarCustomization.CodingKeys>, lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for TabViewCustomization(0);
  lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabViewCustomization and conformance TabViewCustomization, type metadata accessor for TabViewCustomization, protocol conformance descriptor for TabViewCustomization);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void TabGroupCustomizationEntry.childrenOrder.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v6 = (v1 + 48 + 24 * v3);
    while (v2 != v3)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      ++v3;
      v7 = v6 + 24;
      v8 = *v6;
      v6 += 24;
      if ((v8 & 1) == 0)
      {
        v10 = *(v7 - 5);
        v9 = *(v7 - 4);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
        }

        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        }

        *(v5 + 16) = v12 + 1;
        v13 = v5 + 24 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        *(v13 + 48) = 0;
        goto LABEL_3;
      }
    }

    v14 = *(v5 + 16);
    if (v14)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v15 = v5 + 48;
      do
      {
        v16 = *(v15 - 16);
        v17 = *(v15 - 8);
        outlined copy of TabCustomizationID.Base();
        v19 = *(v4 + 16);
        v18 = *(v4 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        }

        *(v4 + 16) = v19 + 1;
        v20 = v4 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v15 += 24;
        --v14;
      }

      while (v14);
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TabGroupCustomizationEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6572646C696863 && a2 == 0xEB00000000734449)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabGroupCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabGroupCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabGroupCustomizationEntry.encode(to:)(void *a1)
{
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabGroupCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[3] = v8;
  type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for [TabCustomizationID], &type metadata for TabCustomizationID, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [TabCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TabCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t TabGroupCustomizationEntry.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x18D00F6F0](v3);
  if (v3)
  {
    v5 = (v2 + 48);
    do
    {
      v6 = *v5;
      v5 += 24;
      MEMORY[0x18D00F6F0](v6);

      String.hash(into:)();
      result = outlined consume of TabCustomizationID.Base();
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int TabGroupCustomizationEntry.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t TabGroupCustomizationEntry.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabGroupCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v12;
    type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for [TabCustomizationID], &type metadata for TabCustomizationID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [TabCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TabCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TabGroupCustomizationEntry()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TabGroupCustomizationEntry(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t SceneStorage.init<A>(wrappedValue:_:store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for SceneStorage<TabSidebarCustomization>, type metadata accessor for TabSidebarCustomization, type metadata accessor for SceneStorage);
  v10 = v9;
  a5[2] = 0;
  a5[3] = 0;
  *(a5 + *(v9 + 36)) = 0;
  *a5 = a2;
  a5[1] = a3;
  outlined init with take of TabSidebarCustomization(a1, a5 + *(v9 + 32), type metadata accessor for TabSidebarCustomization);
  type metadata accessor for TransformBox<TabSidebarCustomizationTransform>(0, &lazy cache variable for type metadata for TransformBox<TabSidebarCustomizationTransform>, &unk_1EFFBBC20, &protocol witness table for TabSidebarCustomizationTransform, type metadata accessor for TransformBox);
  result = swift_allocObject();
  *(a5 + *(v10 + 40)) = result;
  return result;
}

{

  type metadata accessor for SceneStorage<TabViewCustomization>(0, &lazy cache variable for type metadata for SceneStorage<TabViewCustomization>, type metadata accessor for TabViewCustomization, type metadata accessor for SceneStorage);
  v10 = v9;
  a5[2] = 0;
  a5[3] = 0;
  *(a5 + *(v9 + 36)) = 0;
  *a5 = a2;
  a5[1] = a3;
  outlined init with take of TabViewCustomization(a1, a5 + *(v9 + 32), type metadata accessor for TabViewCustomization);
  type metadata accessor for TransformBox<TabViewCustomizationTransform>(0, v11, v12, v13);
  result = swift_allocObject();
  *(a5 + *(v10 + 40)) = result;
  return result;
}

double TabSidebarCustomizationTransform.readValue(from:key:read:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  *a4 = 1;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v7, v13);
    outlined destroy of AnyHashable(v12);
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      *(a5 + 24) = type metadata accessor for TabSidebarCustomization(0);
      __swift_allocate_boxed_opaque_existential_1(a5);
      lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization, protocol conformance descriptor for TabSidebarCustomization);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      outlined consume of Data._Representation(a2, a3);

      return result;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v12);
  }

  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

double static TabSidebarCustomizationTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x18D00C850](a2, a3);
  v7 = [a1 dataForKey_];

  if (v7)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    *(a4 + 24) = type metadata accessor for TabSidebarCustomization(0);
    __swift_allocate_boxed_opaque_existential_1(a4);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization, protocol conformance descriptor for TabSidebarCustomization);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v8, v10);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t TabContent.pinned(_:)@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = MEMORY[0x18D009810](0xD00000000000002DLL, 0x800000018CD48220);
  v6 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v5, a2, v6, x8_0);
}

uint64_t TabContent.sidebarOnly(_:)@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = MEMORY[0x18D009810](0xD000000000000032, 0x800000018CD48250);
  v6 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v5, a2, v6, x8_0);
}

void View.tabViewMode(content:)()
{
  MEMORY[0x18D009810](0xD000000000000038, 0x800000018CD48290);

  JUMPOUT(0x18D00A570);
}

uint64_t Tab<>.init<>(systemItem:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D009810](0xD000000000000033, 0x800000018CD482D0, v17);
  v20 = (*(v15 + 16))(v19, a2, a5);
  a3(v20);
  Tab.init<>(value:content:)(v19, v13, a5, a6, x8_0);
  return (*(v15 + 8))(a2, a5);
}

uint64_t Tab<>.init<A>(systemItem:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  MEMORY[0x18D009810](0xD000000000000033, 0x800000018CD482D0, v15);
  v18 = *(a6 - 8);
  (*(v18 + 16))(v17, a2, a6);
  v19 = (*(v18 + 56))(v17, 0, 1, a6);
  a3(v19);
  Tab.init<>(value:content:)(v17, v13, v14, a5, x8_0);
  return (*(v18 + 8))(a2, a6);
}

uint64_t Tab<>.init<>(systemItem:content:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, _BYTE *x8_0@<X8>)
{
  MEMORY[0x18D009810](0xD000000000000033, 0x800000018CD482D0);

  return Tab<>.init<>(content:)(a2, a4, x8_0);
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    outlined destroy of AnyHashable(*(v10 + 48) + 40 * v8);
    *a2 = *(*(v10 + 56) + 8 * v8);
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for CommandOperation(0);
    v18 = *(v11 - 8);
    outlined init with take of TabSidebarCustomization(v10 + *(v18 + 72) * v7, a2, type metadata accessor for CommandOperation);
    specialized _NativeDictionary._delete(at:)(v7, v9, type metadata accessor for CommandOperation);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for CommandOperation(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, a3, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of SceneID, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, a3, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v10;
    }

    outlined destroy of HashableWeakBox<UIViewController>(*(v9 + 48) + 16 * v7);
    *a2 = *(*(v9 + 56) + v7);
    result = specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v8 = v10;
    }

    outlined init with take of Any((*(v8 + 56) + 32 * v6), a1);
    specialized _NativeDictionary._delete(at:)(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), void (*a5)(void, void, void), void (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v11 = v7;
  v12 = a4(a1, a2, a3 & 1);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v7;
  v19 = *v11;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a7();
    v16 = v19;
  }

  a5(*(*(v16 + 48) + 24 * v14), *(*(v16 + 48) + 24 * v14 + 8), *(*(v16 + 48) + 24 * v14 + 16));
  v17 = *(*(v16 + 56) + 8 * v14);
  a6(v14, v16);
  *v11 = v16;
  return v17;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v8 = v10;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((*(v8 + 56) + 40 * v6), a1);
    specialized _NativeDictionary._delete(at:)(v6, v8);
    *v2 = v8;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, _OWORD *)@<X1>, void (*a3)(void, double)@<X2>, void (*a4)(_BYTE *, unint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()(a3, a4);
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = type metadata accessor for CodingUserInfoKey();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    a2(*(v15 + 56) + 32 * v13, a5);
    specialized _NativeDictionary._delete(at:)(v13, v15);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}