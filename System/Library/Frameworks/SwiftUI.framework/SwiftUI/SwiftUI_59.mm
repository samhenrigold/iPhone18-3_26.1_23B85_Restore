void *initializeWithTake for ListContentVisitor(void *a1, char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v45 = swift_getAssociatedTypeWitness();
  v8 = *(v45 - 8);
  v9 = v8;
  v50 = *(v8 + 84);
  v10 = v50 - 1;
  if (!v50)
  {
    v10 = 0;
  }

  if (v7 > v10)
  {
    v10 = v7;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v5 + 64);
  v13 = v12 + 7;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = *(v8 + 80);
  v17 = v16 + 8;
  v18 = (v16 + 8 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
  v48 = *(*(v45 - 8) + 64);
  v44 = ~v16;
  if (v7 != v11)
  {
    v47 = (v16 + 8 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    v49 = AssociatedTypeWitness;
    v23 = a2 + 7;
    v24 = &a2[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v10 & 0x80000000) != 0)
    {
      if (v50 >= 2)
      {
        v26 = v45;
        if ((*(v8 + 48))((v17 + ((v24 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v16) >= 2)
        {
          v18 = v47;
          v21 = v48;
          v22 = a1;
          memcpy(a1, a2, v48 + v47 + 3);
          AssociatedTypeWitness = v49;
          v19 = v50;
          goto LABEL_29;
        }

        goto LABEL_20;
      }

LABEL_19:
      v26 = v45;
LABEL_20:
      v46 = v12 + 7;
      (*(v6 + 32))(a1, a2, v49);
      *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v23[v12] & 0xFFFFFFFFFFFFFFF8);
      v27 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
      v28 = *(v24 + 32);
      v29 = *(v24 + 48);
      v30 = *(v24 + 80);
      v27[4] = *(v24 + 64);
      v27[5] = v30;
      v27[2] = v28;
      v27[3] = v29;
      v31 = *(v24 + 16);
      *v27 = *v24;
      v27[1] = v31;
      v32 = ((v27 + 103) & 0xFFFFFFFFFFFFFFF8);
      v33 = ((v24 + 103) & 0xFFFFFFFFFFFFFFF8);
      *v32 = *v33;
      v34 = ((v32 + v17) & v44);
      v35 = ((v33 + v17) & v44);
      if ((*(v9 + 48))(v35, 1, v26))
      {
        v19 = v50;
        v21 = v48;
        if (v50)
        {
          v36 = v48;
        }

        else
        {
          v36 = v48 + 1;
        }

        memcpy(v34, v35, v36);
      }

      else
      {
        (*(v9 + 32))(v34, v35, v26);
        (*(v9 + 56))(v34, 0, 1, v26);
        v19 = v50;
        v21 = v48;
        if (v50)
        {
          v36 = v48;
        }

        else
        {
          v36 = v48 + 1;
        }
      }

      v37 = &v34[v36];
      *v37 = *(v35 + v36);
      v37[1] = *(v35 + v36 + 1);
      v37[2] = *(v35 + v36 + 2);
      v22 = a1;
      AssociatedTypeWitness = v49;
      v13 = v46;
      v18 = v47;
      goto LABEL_29;
    }

    v25 = *(v24 + 24);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    v18 = (v16 + 8 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    if (v25 != -1)
    {
      goto LABEL_10;
    }

LABEL_17:
    v47 = v18;
    v49 = AssociatedTypeWitness;
    v23 = a2 + 7;
    v24 = &a2[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
    goto LABEL_19;
  }

  if (!(*(v6 + 48))(a2, v7, AssociatedTypeWitness))
  {
    goto LABEL_17;
  }

LABEL_10:
  v19 = v50;
  v20 = 3;
  if (!v50)
  {
    v20 = 4;
  }

  v21 = v48;
  v22 = a1;
  memcpy(a1, a2, v20 + v48 + v18);
LABEL_29:
  v38 = 3;
  if (!v19)
  {
    v38 = 4;
  }

  v39 = *(v6 + 80) & 0xF8 | 7;
  v40 = v38 + v21 + v39 + v18;
  v41 = (v22 + v40) & ~v39;
  v42 = &a2[v40] & ~v39;
  (*(v6 + 32))(v41, v42, AssociatedTypeWitness);
  *((v13 + v41) & 0xFFFFFFFFFFFFFFF8) = *((v13 + v42) & 0xFFFFFFFFFFFFFFF8);
  return v22;
}

void *assignWithTake for ListContentVisitor(void *a1, void *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v80 = swift_getAssociatedTypeWitness();
  v9 = *(v80 - 8);
  v81 = *(v9 + 84);
  v10 = v81 - 1;
  if (!v81)
  {
    v10 = 0;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v77 = *(v6 + 64);
  v12 = (v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 8;
  v79 = *(v80 - 8);
  v14 = *(v9 + 80);
  v15 = ~v14;
  v16 = v14 + 8;
  v84 = (v14 + 8 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
  v83 = *(v79 + 64);
  v78 = ~v14;
  if (v8 == v11)
  {
    v17 = v12 + 8;
    v18 = v14 + 8;
    v19 = *(v7 + 48);
    v20 = v19(a1, v8, AssociatedTypeWitness);
    v21 = v19(a2, v8, AssociatedTypeWitness);
    v16 = v18;
    v13 = v17;
    v22 = a2;
    v23 = v81;
    v24 = v7;
    if (v20)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v29 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v10 & 0x80000000) == 0)
  {
    v30 = *(v29 + 24);
    v22 = a2;
    v31 = *(((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v21 = v31 + 1;
    v23 = *(v9 + 84);
    v24 = v7;
    if (v30 <= 0xFFFFFFFE)
    {
LABEL_10:
      v25 = v83;
      if (v21)
      {
        if (v23)
        {
          v26 = v83;
        }

        else
        {
          v26 = v83 + 1;
        }

        goto LABEL_14;
      }

      goto LABEL_40;
    }

LABEL_19:
    v15 = v78;
    v32 = v79;
    if (v21)
    {
LABEL_20:
      (*(v24 + 8))(a1, AssociatedTypeWitness);
      v33 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      __swift_destroy_boxed_opaque_existential_1(v33);

      v34 = v16 + ((v33 + 103) & 0xFFFFFFFFFFFFFFF8);
      if (!(*(v32 + 48))(v34 & v15, 1, v80))
      {
        (*(v32 + 8))(v34 & v15, v80);
      }

      v35 = 3;
      if (!v23)
      {
        v35 = 4;
      }

      v25 = v83;
      v27 = v84;
      v28 = v35 + v83 + v84;
      goto LABEL_25;
    }

LABEL_27:
    (*(v24 + 40))(a1, v22, AssociatedTypeWitness);
    v82 = v22;
    *((a1 + v77 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
    v36 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v38 = *v37;
    v39 = *(v37 + 16);
    *(v36 + 32) = *(v37 + 32);
    *v36 = v38;
    *(v36 + 16) = v39;
    *(v36 + 40) = *(v37 + 40);

    *(v36 + 48) = *(v37 + 48);

    *(v36 + 56) = *(v37 + 56);
    *(v36 + 60) = *(v37 + 60);
    *(v36 + 64) = *(v37 + 64);

    *(v36 + 72) = *(v37 + 72);
    *(v36 + 80) = *(v37 + 80);
    v40 = *(v36 + 88);
    *(v36 + 88) = *(v37 + 88);

    v41 = ((v36 + 103) & 0xFFFFFFFFFFFFFFF8);
    v42 = ((v37 + 103) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v42;

    v43 = ((v41 + v16) & v15);
    v44 = ((v42 + v16) & v15);
    v45 = *(v32 + 48);
    v46 = v45(v43, 1, v80);
    v47 = v45(v44, 1, v80);
    if (v46)
    {
      v27 = v84;
      if (!v47)
      {
        (*(v79 + 32))(v43, v44, v80);
        (*(v79 + 56))(v43, 0, 1, v80);
LABEL_50:
        v22 = v82;
        v25 = v83;
LABEL_51:
        if (v23)
        {
          v66 = v25;
        }

        else
        {
          v66 = v25 + 1;
        }

        v67 = &v43[v66];
        v68 = &v44[v66];
        *v67 = *v68;
        v67[1] = v68[1];
        v67[2] = v68[2];
        goto LABEL_55;
      }
    }

    else
    {
      v27 = v84;
      if (!v47)
      {
        (*(v79 + 40))(v43, v44, v80);
        goto LABEL_50;
      }

      (*(v79 + 8))(v43, v80);
    }

    v25 = v83;
    if (v23)
    {
      v51 = v83;
    }

    else
    {
      v51 = v83 + 1;
    }

    memcpy(v43, v44, v51);
    v22 = v82;
    goto LABEL_51;
  }

  v23 = *(v9 + 84);
  v22 = a2;
  v24 = v7;
  v32 = *(v80 - 8);
  if (v81 < 2)
  {
    goto LABEL_27;
  }

  v76 = AssociatedTypeWitness;
  v48 = ~v14;
  v49 = *(v9 + 48);
  v75 = v49((v16 + ((v29 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v81, v80);
  v50 = v49((v16 + ((((v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & v48, v81, v80);
  if (v75 < 2)
  {
    v15 = v78;
    v32 = v79;
    AssociatedTypeWitness = v76;
    if (v50 >= 2)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v25 = v83;
  v26 = v83;
  AssociatedTypeWitness = v76;
  if (v50 >= 2)
  {
LABEL_14:
    v27 = v84;
    v28 = v84 + v26 + 3;
LABEL_25:
    memcpy(a1, v22, v28);
    goto LABEL_55;
  }

LABEL_40:
  (*(v24 + 32))(a1, v22, AssociatedTypeWitness);
  v52 = v16;
  v53 = v22;
  *((a1 + v77 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
  v54 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v55 = ((v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v56 = v55[2];
  v57 = v55[3];
  v58 = v55[5];
  v54[4] = v55[4];
  v54[5] = v58;
  v54[2] = v56;
  v54[3] = v57;
  v59 = v55[1];
  *v54 = *v55;
  v54[1] = v59;
  v60 = ((v54 + 103) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v55 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  v62 = ((v60 + v52) & v78);
  v63 = ((v61 + v52) & v78);
  if ((*(v79 + 48))(v63, 1, v80))
  {
    if (v23)
    {
      v64 = v25;
    }

    else
    {
      v64 = v25 + 1;
    }

    memcpy(v62, v63, v64);
  }

  else
  {
    (*(v79 + 32))(v62, v63, v80);
    (*(v79 + 56))(v62, 0, 1, v80);
    if (v23)
    {
      v64 = v25;
    }

    else
    {
      v64 = v25 + 1;
    }
  }

  v65 = &v62[v64];
  *v65 = *(v63 + v64);
  v65[1] = *(v63 + v64 + 1);
  v65[2] = *(v63 + v64 + 2);
  v22 = v53;
  v27 = v84;
LABEL_55:
  v69 = 3;
  if (!v23)
  {
    v69 = 4;
  }

  v70 = *(v24 + 80) & 0xF8 | 7;
  v71 = v69 + v25 + v70 + v27;
  v72 = (a1 + v71) & ~v70;
  v73 = (v22 + v71) & ~v70;
  (*(v24 + 40))(v72, v73, AssociatedTypeWitness);
  *((v77 + 7 + v72) & 0xFFFFFFFFFFFFFFF8) = *((v77 + 7 + v73) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListContentVisitor(int *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (v7 <= v13 - 1)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = v7;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  if (v10)
  {
    v17 = 3;
  }

  else
  {
    v17 = 4;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = (*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 8;
  v20 = v17 + v16;
  v21 = *(v6 + 80) & 0xF8 | 7;
  v22 = v20 + v21 + ((v15 + 8 + ((((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v23 = (v22 & ~v21) + v19;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v14 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= 1)
  {
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = *(a1 + v23);
    if (!v28)
    {
      goto LABEL_37;
    }

LABEL_34:
    v29 = v28 - 1;
    if (v24)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v14 + (v30 | v29) + 1;
  }

  if (v27 == 2)
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v13 - 1 < v7)
  {
    v31 = *(v6 + 48);

    return v31((a1 + v22) & ~v21, v7, AssociatedTypeWitness);
  }

  if (v7 == v13)
  {
    v33 = (*(v6 + 48))(a1, v7, AssociatedTypeWitness);
    v34 = v33 != 0;
    result = (v33 - 1);
    if (result != 0 && v34)
    {
      return result;
    }

    return 0;
  }

  v35 = (a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0x80000000) != 0)
  {
    if (v10 >= 2)
    {
      v37 = (*(v9 + 48))((v15 + 8 + ((v35 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
      if (v37 >= 2)
      {
        v38 = v37 - 1;
        v34 = v38 != 0;
        result = v38 - 1;
        if (result != 0 && v34)
        {
          return result;
        }
      }
    }

    return 0;
  }

  v36 = *(v35 + 24);
  if (v36 >= 0xFFFFFFFF)
  {
    LODWORD(v36) = -1;
  }

  result = v36;
  if (v36 == 0 || v36 == -1)
  {
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for ListContentVisitor(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v9 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 - 1;
  if (v9 <= v17 - 1)
  {
    v19 = v17 - 1;
  }

  else
  {
    v19 = v9;
  }

  v20 = (*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v20 + 8;
  v22 = (v14 + 8 + ((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
  if (!v12)
  {
    ++v15;
  }

  v23 = v22 + v15;
  v24 = *(v8 + 80) & 0xF8 | 7;
  v25 = v23 + v24 + 3;
  v26 = (v25 & ~v24) + v21;
  if (v19 < a3)
  {
    if (v26)
    {
      v27 = 2;
    }

    else
    {
      v27 = a3 - v19 + 1;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v10 = v28;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v19)
  {
    if (v26)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v19;
    }

    if (v26)
    {
      v30 = ~v19 + a2;
      bzero(a1, (v25 & ~v24) + v21);
      *a1 = v30;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *&a1[v26] = v29;
      }

      else
      {
        *&a1[v26] = v29;
      }
    }

    else if (v10)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v26] = 0;
  }

  else if (v10)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v18 < v9)
  {
    v31 = (&a1[v25] & ~v24);
    if (v9 < a2)
    {
      if (v21)
      {
        v32 = (&a1[v25] & ~v24);
        bzero(v31, v21);
        *v32 = ~v9 + a2;
      }

      return;
    }

    v37 = *(v8 + 56);
    v38 = a2;
    goto LABEL_63;
  }

  v33 = (v23 + 3);
  if (v18 < a2)
  {
    if (v33 <= 3)
    {
      v34 = ~(-1 << (8 * v33));
    }

    else
    {
      v34 = -1;
    }

    if (!v33)
    {
      return;
    }

    v35 = v34 & (a2 - v17);
    if (v33 <= 3)
    {
      v36 = v33;
    }

    else
    {
      v36 = 4;
    }

    bzero(a1, v33);
    if (v36 <= 2)
    {
      if (v36 == 1)
      {
LABEL_58:
        *a1 = v35;
        return;
      }

LABEL_78:
      *a1 = v35;
      return;
    }

    goto LABEL_79;
  }

  if (a2 >= v17)
  {
    if (v33 <= 3)
    {
      v39 = ~(-1 << (8 * v33));
    }

    else
    {
      v39 = -1;
    }

    if (!v33)
    {
      return;
    }

    v35 = v39 & (a2 - v17);
    if (v33 <= 3)
    {
      v36 = v33;
    }

    else
    {
      v36 = 4;
    }

    bzero(a1, v33);
    if (v36 <= 2)
    {
      if (v36 == 1)
      {
        goto LABEL_58;
      }

      goto LABEL_78;
    }

LABEL_79:
    if (v36 == 3)
    {
      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    else
    {
      *a1 = v35;
    }

    return;
  }

  if (v9 == v17)
  {
    v37 = *(v8 + 56);
    v31 = a1;
    v38 = (a2 + 1);
LABEL_63:

    v37(v31, v38, v9, AssociatedTypeWitness);
    return;
  }

  v40 = &a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8;
  if ((v16 & 0x80000000) != 0)
  {
    if (v12 >= 2)
    {
      v41 = *(v11 + 56);

      v41((v14 + 8 + ((v40 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v14, (a2 + 2));
    }
  }

  else if (a2 + 1 < 0)
  {
    *(v40 + 88) = 0;
    *(v40 + 72) = 0u;
    *(v40 + 56) = 0u;
    *(v40 + 40) = 0u;
    *(v40 + 24) = 0u;
    *(v40 + 8) = 0u;
    *v40 = (a2 - 0x7FFFFFFF);
  }

  else
  {
    *(v40 + 24) = a2;
  }
}

void *closure #1 in UISplitViewControllerVisibilityEngine.adoptInspectorVisibility(from:isVisible:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4 = a4 & 1;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370]);
  result = MEMORY[0x18D00ACC0](&v6);
  if (v6 != v4)
  {
    LOBYTE(v7) = v4;
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

UISplitViewControllerDisplayMode __swiftcall UISplitViewControllerVisibilityEngine.displayModeForExpanding(proposed:)(UISplitViewControllerDisplayMode proposed)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v7 = v1[6];
  v8 = *(v1 + 80);
  if (v7 >= 2)
  {
    v50 = *(v1 + 80);
    v9 = v1[7];
    v10 = objc_opt_self();

    v11 = [v10 mainScreen];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v55.origin.x = v13;
    v55.origin.y = v15;
    v55.size.width = v17;
    v55.size.height = v19;
    Width = CGRectGetWidth(v55);
    v56.origin.x = v13;
    v56.origin.y = v15;
    v56.size.width = v17;
    v56.size.height = v19;
    if (CGRectGetHeight(v56) >= Width)
    {
      v21 = 1194.0;
    }

    else
    {
      v21 = 1024.0;
    }

    v57.origin.x = v13;
    v57.origin.y = v15;
    v57.size.width = v17;
    v57.size.height = v19;
    v22 = CGRectGetWidth(v57);
    v52 = v4;
    v53 = v3;
    v54 = v5;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
    v24 = v23;
    MEMORY[0x18D00ACC0](&v51);
    v25 = v51 >> 14;
    if (v25 < 2 || v25 != 2 && v51 == 49152)
    {
      v26 = 16640;
    }

    else
    {
      v26 = -32512;
    }

    v51 = v26 | (v22 >= v21);
    if ((proposed - 2) > 4)
    {
      v27 = 0;
    }

    else
    {
      v27 = qword_18CD72128[proposed - 2];
    }

    AnyNavigationSplitVisibility.Kind.adoptingVisibleLeadingColumnCount(_:)(v27, &v52);
    v28 = v52;
    v29 = v52 >> 14;
    if (v29 == 2 || v29 == 1)
    {
      v30 = BYTE1(v52) & 1;
    }

    else
    {
      v31 = [v10 mainScreen];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v58.origin.x = v33;
      v58.origin.y = v35;
      v58.size.width = v37;
      v58.size.height = v39;
      v40 = CGRectGetWidth(v58);
      v59.origin.x = v33;
      v59.origin.y = v35;
      v59.size.width = v37;
      v59.size.height = v39;
      if (CGRectGetHeight(v59) >= v40)
      {
        v41 = 1194.0;
      }

      else
      {
        v41 = 1024.0;
      }

      v60.origin.x = v33;
      v60.origin.y = v35;
      v60.size.width = v37;
      v60.size.height = v39;
      v28 = CGRectGetWidth(v60) >= v41;
      LOBYTE(v30) = 1;
    }

    LOBYTE(v51) = v28;
    HIBYTE(v51) = v30;
    v7(&v52, &v51);
    v42 = v52;
    if ((v52 & 0xFF00) != 0x200)
    {
      v52 = v4;
      v53 = v3;
      v54 = v5;
      MEMORY[0x18D00ACC0](&v51, v24);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v9);
      v47 = v51 >> 14;
      v44 = v50;
      if (v47 < 2 || v47 != 2 && v51 == 49152)
      {
        v48 = 0x4000;
      }

      else
      {
        v48 = 0x8000;
      }

      LOWORD(v52) = v42 & 0x1FF | v48;
      v43 = proposed;
      return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(v43, 0, v44);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v9);
    v8 = v50;
  }

  if ((v6 & 0xFF00) == 0x200)
  {
    v52 = v4;
    v53 = v3;
    v54 = v5;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
    MEMORY[0x18D00ACC0](&v51);
    v43 = proposed;
    v44 = v8;
    return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(v43, 0, v44);
  }

  v52 = v4;
  v53 = v3;
  v54 = v5;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
  MEMORY[0x18D00ACC0](&v51);
  v45 = v51 >> 14;
  if (v45 < 2 || v45 != 2 && v51 == 49152)
  {
    v46 = UISplitViewControllerDisplayModeOneBesideSecondary;
  }

  else
  {
    v46 = UISplitViewControllerDisplayModeTwoBesideSecondary;
  }

  if (v6 == 1)
  {
    v46 = UISplitViewControllerDisplayModeOneBesideSecondary;
  }

  if (v6)
  {
    return v46;
  }

  else
  {
    return 1;
  }
}

SwiftUI::NavigationSplitViewVisibility_optional __swiftcall UISplitViewControllerVisibilityEngine.updateSplitViewController(_:isAnimated:)(UISplitViewController *_, Swift::Bool isAnimated)
{
  v4 = isAnimated;
  v76 = v2;
  v77 = _;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67[-v9];
  v12 = *v3;
  v11 = *(v3 + 8);
  LODWORD(v13) = *(v3 + 16);
  v14 = *(v3 + 18);
  if ((v14 & 0xFF00) == 0x200)
  {
    v73 = *v3;
    v75 = v11;
    v72 = v13;
    v74 = v4;
    v15 = *(v3 + 24);
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = *(v3 + 64);
    v20 = *(v3 + 72);
    static Log.splitViewVisibility.getter();
    v21 = type metadata accessor for Logger();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v7, 1, v21) == 1)
    {
      outlined destroy of Logger?(v7);
      v23 = v77;
      v24 = v72;
      v25 = v75;
LABEL_46:
      aBlock = v73;
      v79 = v25;
      LOWORD(v80) = v24;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
      MEMORY[0x18D00ACC0](&v84);
      LOWORD(v85) = v84;
      AnyNavigationSplitVisibility.Kind.updateSplitViewController(_:isAnimated:)(v23, v74, v76);
      return v63;
    }

    v70 = v22;
    v71 = v21;
    v29 = v73;

    outlined copy of Binding<Int>?(v15, v16);
    outlined copy of NavigationEventHandlers?(v17, v18, v19, v20);
    v69 = v7;
    v30 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    v31 = v29;

    outlined consume of Binding<NavigationSplitViewColumn>?(v15, v16);
    v32 = v20;
    v33 = v68;
    outlined consume of NavigationEventHandlers?(v17, v18, v19, v32);
    if (!os_log_type_enabled(v30, v33))
    {

      v23 = v77;
      v24 = v72;
      v25 = v75;
      v38 = v69;
LABEL_45:
      (*(v70 + 8))(v38, v71);
      goto LABEL_46;
    }

    v34 = v30;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v84 = v36;
    *v35 = 136315138;
    aBlock = v31;
    v79 = v75;
    v24 = v72;
    LOWORD(v80) = v72;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
    MEMORY[0x18D00ACC0](&v85);
    v37 = v85 >> 14;
    v23 = v77;
    if (v37 > 1)
    {
      v38 = v69;
      if (v37 != 2)
      {
        v41 = 0xE700000000000000;
        v39 = 0x646E756F626E75;
        goto LABEL_44;
      }
    }

    else
    {
      v38 = v69;
      if (!v37)
      {
        LOBYTE(aBlock) = v85;
        v39 = String.init<A>(describing:)();
        v41 = v40;
LABEL_44:
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v84);

        *(v35 + 4) = v66;
        _os_log_impl(&dword_18BD4A000, v34, v33, "updating SVC to %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x18D0110E0](v36, -1, -1);
        MEMORY[0x18D0110E0](v35, -1, -1);

        v25 = v75;
        goto LABEL_45;
      }
    }

    if (v85)
    {
      if (v85 == 1)
      {
        v39 = 0x6F43656C62756F64;
      }

      else
      {
        v39 = 7105633;
      }

      if (v85 == 1)
      {
        v41 = 0xEC0000006E6D756CLL;
      }

      else
      {
        v41 = 0xE300000000000000;
      }
    }

    else
    {
      v39 = 0x6E4F6C6961746564;
      v41 = 0xEA0000000000796CLL;
    }

    goto LABEL_44;
  }

  v26 = *(v3 + 80);
  static Log.splitViewVisibility.getter();
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v10, 1, v27) == 1)
  {
    outlined destroy of Logger?(v10);
  }

  else
  {
    LODWORD(v71) = v26;
    v74 = v4;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v73 = v12;
      v75 = v11;
      v72 = v13;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136315138;
      if (v14)
      {
        if (v14 == 1)
        {
          v46 = 0x6F43656C62756F64;
        }

        else
        {
          v46 = 7105633;
        }

        if (v14 == 1)
        {
          v47 = 0xEC0000006E6D756CLL;
        }

        else
        {
          v47 = 0xE300000000000000;
        }
      }

      else
      {
        v46 = 0x6E4F6C6961746564;
        v47 = 0xEA0000000000796CLL;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &aBlock);

      *(v44 + 4) = v13;
      _os_log_impl(&dword_18BD4A000, v42, v43, "updating SVC to %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x18D0110E0](v45, -1, -1);
      MEMORY[0x18D0110E0](v44, -1, -1);

      LOWORD(v13) = v72;
      v11 = v75;
      v12 = v73;
    }

    else
    {
    }

    (*(v28 + 8))(v10, v27);
    LOBYTE(v4) = v74;
    LOBYTE(v26) = v71;
  }

  aBlock = v12;
  v79 = v11;
  LOWORD(v80) = v13;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
  MEMORY[0x18D00ACC0](&v84);
  v48 = v84 >> 14;
  v49 = v77;
  v50 = v48 >= 2 && (v48 == 2 || v84 != 49152);
  v51 = [(UISplitViewController *)v77 preferredDisplayMode];
  v52 = objc_opt_self();
  v53 = (v14 >> 8) & 1;
  if (v4)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    *(v54 + 24) = v14;
    *(v54 + 25) = v53;
    *(v54 + 26) = v26;
    *(v54 + 27) = v50;
    v82 = partial apply for closure #1 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:);
    v83 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed () -> ();
    v81 = &block_descriptor_19;
    v55 = _Block_copy(&aBlock);
    v56 = v49;

    [v52 animateWithDuration:v55 animations:0.5];
    _Block_release(v55);
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v49;
    *(v58 + 24) = v14;
    *(v58 + 25) = v53;
    *(v58 + 26) = v26;
    *(v58 + 27) = v50;
    v59 = swift_allocObject();
    v57 = partial apply for closure #2 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:);
    *(v59 + 16) = partial apply for closure #2 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:);
    *(v59 + 24) = v58;
    v82 = partial apply for thunk for @callee_guaranteed () -> ();
    v83 = v59;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed () -> ();
    v81 = &block_descriptor_2;
    v60 = _Block_copy(&aBlock);
    v61 = v49;

    [v52 performWithoutAnimation_];
    _Block_release(v60);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return v63;
    }
  }

  v64 = [(UISplitViewController *)v49 preferredDisplayMode];
  v63 = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v57, v58);
  v65 = v14 & 0x1FF;
  if (v64 == v51)
  {
    v65 = 512;
  }

  *v76 = v65;
  return v63;
}

Swift::Bool_optional __swiftcall UISplitViewControllerVisibilityEngine.updateSplitViewControllerInspectorIfNeeded(_:isAnimated:)(UISplitViewController *_, Swift::Bool isAnimated)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(v2 + 40);
  v21 = *(v2 + 24);
  v22 = v8;
  v23 = v9 & 1;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370]);
  MEMORY[0x18D00ACC0]((&v20 + 7));
  v10 = HIBYTE(v20);
  static Log.splitViewVisibility.getter();
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Logger?(v7);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v10;
      _os_log_impl(&dword_18BD4A000, v13, v14, "updating SVC inspector is presented to %{BOOL}d", v15, 8u);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    (*(v12 + 8))(v7, v11);
  }

  v16 = [(UISplitViewController *)_ isShowingColumn:4];
  if (v10)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    LOBYTE(v10) = 2;
    return v10;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_11:
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = isAnimated;
  *(v18 + 32) = 4;

  static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

  return v10;
}

unint64_t UISplitViewControllerVisibilityEngine.description.getter()
{
  result = 0xD00000000000001DLL;
  if (v0[6] <= 1)
  {
    if ((*(v0 + 9) & 0xFF00) == 0x200)
    {
      v2 = *v0;
      v3 = v0[1];
      v4 = *(v0 + 8);
      _StringGuts.grow(_:)(32);
      v9 = 0;
      v10 = 0xE000000000000000;
      MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD3FB80);
      v6 = v2;
      v7 = v3;
      v8 = v4;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
      MEMORY[0x18D00ACC0](&v5);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v5);
      return v9;
    }

    else
    {
      _StringGuts.grow(_:)(31);
      MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD3FBA0);
      _print_unlocked<A, B>(_:_:)();
      return 0;
    }
  }

  return result;
}

void AnyNavigationSplitVisibility.Kind.updateSplitViewController(_:isAnimated:)(id a1@<X0>, char a2@<W1>, __int16 *a3@<X8>)
{
  v7 = *v3;
  v8 = v7 >> 14;
  if (v7 >> 14 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    v12 = [a1 isShowingColumn_];
    if (!v7)
    {
      if (v12)
      {
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        v15 = a2 & 1;
        *(v20 + 24) = a2 & 1;
        *(v20 + 32) = 0;

        static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

        if (([a1 isShowingColumn_] & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (![a1 isShowingColumn_])
        {
          goto LABEL_32;
        }

        v15 = a2 & 1;
      }

      goto LABEL_34;
    }

    if (v7 == 1)
    {
      if (!v12)
      {
        if ([a1 isShowingColumn_])
        {
          goto LABEL_32;
        }

        v15 = a2 & 1;
        goto LABEL_34;
      }

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v15 = a2 & 1;
      *(v14 + 24) = a2 & 1;
      *(v14 + 32) = 0;

      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

      if (([a1 isShowingColumn_] & 1) == 0)
      {
LABEL_34:
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v15;
        *(v26 + 32) = 1;

        static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

LABEL_35:
      }
    }

    else
    {
      if (v12)
      {
        if ([a1 isShowingColumn_])
        {
          goto LABEL_32;
        }

        v15 = a2 & 1;
        goto LABEL_34;
      }

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v15 = a2 & 1;
      *(v24 + 24) = a2 & 1;
      *(v24 + 32) = 0;

      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

      if (([a1 isShowingColumn_] & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v11 = v7 & 0x1FF;
    goto LABEL_37;
  }

  if (v8)
  {
    v16 = [a1 isShowingColumn_];
    if (v7 - 1 >= 2)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v16)
    {
      goto LABEL_32;
    }

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a2 & 1;
    *(v18 + 32) = 0;

    static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

    goto LABEL_35;
  }

  if (!*v3)
  {
    goto LABEL_32;
  }

  if (*v3 != 1)
  {
    if ([a1 isShowingColumn_])
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = a2 & 1;
      *(v22 + 32) = 0;

      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

      v11 = 0;
      goto LABEL_37;
    }

LABEL_32:
    v11 = 512;
    goto LABEL_37;
  }

  if ([a1 isShowingColumn_])
  {
    goto LABEL_32;
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = 0;

  static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

  v11 = 1;
LABEL_37:
  *a3 = v11;
}

uint64_t AnyNavigationSplitVisibility.Kind.adoptingVisibleLeadingColumnCount(_:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 >> 14;
  if (v3 >> 14 > 1)
  {
    if (v4 == 2)
    {
      if (result == 1)
      {
        v8 = -32767;
      }

      else
      {
        v8 = -32766;
      }

      if (!result)
      {
        v8 = 0x8000;
      }

      *a2 = v8;
    }

    else
    {
      if (v3 == 49152)
      {
        v9 = -16384;
      }

      else
      {
        v9 = -16383;
      }

      *a2 = v9;
    }
  }

  else
  {
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (result)
    {
      v6 = 16386;
    }

    else
    {
      v6 = 0x4000;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t AnyNavigationSplitVisibility.description.getter()
{
  v1 = *v0 >> 14;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      return 0x646E756F626E75;
    }
  }

  else if (!v1)
  {
    return String.init<A>(describing:)();
  }

  if (!*v0)
  {
    return 0x6E4F6C6961746564;
  }

  if (*v0 == 1)
  {
    return 0x6F43656C62756F64;
  }

  return 7105633;
}

id partial apply for closure #2 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:)()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v1 = 2;
    }

    else if (*(v0 + 27))
    {
      v1 = 4;
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  return [*(v0 + 16) setPreferredDisplayMode_];
}

uint64_t *assignWithCopy for UISplitViewControllerVisibilityEngine(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v4 = a2[4];
  if (a1[4])
  {
    if (v4)
    {
      a1[3] = a2[3];

      a1[4] = a2[4];

      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      outlined destroy of Binding<Bool>((a1 + 3));
      v5 = *(a2 + 40);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 40) = v5;
    }
  }

  else if (v4)
  {
    a1[3] = a2[3];
    a1[4] = a2[4];
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 3) = v6;
  }

  v8 = a1 + 6;
  v7 = a1[6];
  v10 = a2 + 6;
  v9 = a2[6];
  if (v7 == 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = *v10;
        *(a1 + 4) = *(a2 + 4);
LABEL_32:
        *v8 = v11;
        goto LABEL_33;
      }

      v14 = a2[7];
      a1[6] = v9;
      a1[7] = v14;
    }

    else
    {
      *v8 = *v10;
    }

    v15 = a2[8];
    if (!v15)
    {
      *(a1 + 4) = *(a2 + 4);
      goto LABEL_33;
    }

LABEL_29:
    v18 = a2[9];
    a1[8] = v15;
    a1[9] = v18;

    goto LABEL_33;
  }

  if (v9 != 1)
  {
    if (v7)
    {
      if (v9)
      {
        v13 = a2[7];
        a1[6] = v9;
        a1[7] = v13;

        goto LABEL_25;
      }
    }

    else if (v9)
    {
      v16 = a2[7];
      a1[6] = v9;
      a1[7] = v16;

      goto LABEL_25;
    }

    *v8 = *v10;
LABEL_25:
    v8 = a1 + 8;
    v15 = a2[8];
    if (a1[8])
    {
      if (v15)
      {
        v17 = a2[9];
        a1[8] = v15;
        a1[9] = v17;

        goto LABEL_33;
      }
    }

    else if (v15)
    {
      goto LABEL_29;
    }

    v11 = *(a2 + 4);
    goto LABEL_32;
  }

  outlined destroy of NavigationEventHandlers((a1 + 6));
  v12 = *(a2 + 4);
  *v8 = *v10;
  *(a1 + 4) = v12;
LABEL_33:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t outlined destroy of Binding<Bool>(uint64_t a1)
{
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *assignWithTake for UISplitViewControllerVisibilityEngine(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 4) = *(a2 + 4);
  if (a1[4])
  {
    v4 = a2[4];
    if (v4)
    {
      a1[3] = a2[3];

      a1[4] = v4;

      *(a1 + 40) = *(a2 + 40);
      goto LABEL_6;
    }

    outlined destroy of Binding<Bool>((a1 + 3));
  }

  *(a1 + 3) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
LABEL_6:
  v6 = a1 + 6;
  v5 = a1[6];
  v8 = a2 + 6;
  v7 = a2[6];
  if (v5 != 1)
  {
    if (v7 == 1)
    {
      outlined destroy of NavigationEventHandlers((a1 + 6));
      goto LABEL_9;
    }

    if (v5)
    {
      if (v7)
      {
        v11 = a2[7];
        a1[6] = v7;
        a1[7] = v11;

        goto LABEL_18;
      }
    }

    else if (v7)
    {
      v12 = a2[7];
      a1[6] = v7;
      a1[7] = v12;
      goto LABEL_18;
    }

    *v6 = *v8;
LABEL_18:
    v13 = a2[8];
    if (a1[8])
    {
      if (v13)
      {
        v14 = a2[9];
        a1[8] = v13;
        a1[9] = v14;

        goto LABEL_10;
      }
    }

    else if (v13)
    {
      v15 = a2[9];
      a1[8] = v13;
      a1[9] = v15;
      goto LABEL_10;
    }

    *(a1 + 4) = *(a2 + 4);
    goto LABEL_10;
  }

LABEL_9:
  v9 = *(a2 + 4);
  *v6 = *v8;
  *(a1 + 4) = v9;
LABEL_10:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for UISplitViewControllerVisibilityEngine(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for UISplitViewControllerVisibilityEngine(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ViewBasedUIButton.makeButton(configuration:content:showsTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = UIButton.init(configuration:primaryAction:)();
  ViewBasedUIButton.configureContentHost(_:showsTitle:)(a2, v3, v11, v12);
  return v10;
}

id static ViewBasedUIButton.makeButton(type:content:showsTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = [swift_getObjCClassFromMetadata() buttonWithType_];
  ViewBasedUIButton.configureContentHost(_:showsTitle:)(a2, v3, v6, v7);
  return v5;
}

Swift::Void __swiftcall ViewBasedUIButton.setShowsTitle(_:)(Swift::Bool a1)
{
  if (a1)
  {
    v2 = *(v1 + direct field offset for ViewBasedUIButton.contentHost);
    if (v2)
    {
      v3 = v2;
      v4 = _UIHostingView.viewGraph.getter(v3);

      swift_beginAccess();
      v5 = *(v4 + 361);
      *(v4 + 361) = v5 | 2;
      if ((v5 | 2) != v5)
      {
        GraphHost.uninstantiate(immediately:)(0);
      }
    }
  }
}

void ViewBasedUIButton.setRootView(_:transaction:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + direct field offset for ViewBasedUIButton.contentHost);
  if (v3)
  {
    v6 = v3;
    _UIHostingView.setRootView(_:transaction:)(a1, a2);
  }
}

uint64_t ViewBasedUIButton.sizeThatFits(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + direct field offset for ViewBasedUIButton.contentHost);
  if (!v5)
  {
    return 0;
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = a1[2];
  v14 = *(a1 + 24);
  v6 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x70), *((*MEMORY[0x1E69E7D40] & *v4) + 0x78), a4);
  v7 = v5;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6, v11, v12, v13, v14);
  ViewRendererHost.sizeThatFits(_:)();
  v9 = v8;

  return v9;
}

void ViewBasedUIButton.identifiedViewTree()(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = *(v2 + direct field offset for ViewBasedUIButton.contentHost);
  if (!v5)
  {
    *(a2 + 160) = 0;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v21 = 2;
    goto LABEL_11;
  }

  v6 = type metadata accessor for _UIHostingView(0, *(v4 + 112), *(v4 + 120), a1);
  v7 = v5;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6);
  ViewRendererHost.preferenceValue<A>(_:)();
  outlined init with copy of _IdentifiedViewTree(v23, v22);
  if (v22[168] != 2 || (v8 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v22[40], *&v22[104]), vorrq_s8(*&v22[72], *&v22[136])), vorrq_s8(vorrq_s8(*&v22[56], *&v22[120]), vorrq_s8(*&v22[88], *&v22[152]))), vorrq_s8(*&v22[8], *&v22[24])), *&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *v22))
  {
    outlined destroy of _IdentifiedViewTree(v22);
    outlined init with copy of _IdentifiedViewTree(v23, v22);
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
    }

    outlined destroy of _IdentifiedViewTree(v23);
    *(v9 + 2) = v11 + 1;
    v12 = &v9[176 * v11];
    v14 = *&v22[16];
    v13 = *&v22[32];
    *(v12 + 2) = *v22;
    *(v12 + 3) = v14;
    *(v12 + 4) = v13;
    v15 = *&v22[96];
    v17 = *&v22[48];
    v16 = *&v22[64];
    *(v12 + 7) = *&v22[80];
    *(v12 + 8) = v15;
    *(v12 + 5) = v17;
    *(v12 + 6) = v16;
    v19 = *&v22[128];
    v18 = *&v22[144];
    v20 = *&v22[112];
    *(v12 + 185) = *&v22[153];
    *(v12 + 10) = v19;
    *(v12 + 11) = v18;
    *(v12 + 9) = v20;
    if (*(v9 + 2))
    {
      goto LABEL_7;
    }

LABEL_10:

    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    v21 = 2;
    *(a2 + 8) = 0u;
    *a2 = 0;
    goto LABEL_11;
  }

  outlined destroy of _IdentifiedViewTree(v23);

  outlined destroy of _IdentifiedViewTree(v22);
  v9 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 1;
  *a2 = v9;
LABEL_11:
  *(a2 + 168) = v21;
}

Swift::String_optional __swiftcall ViewBasedUIButton.menuTitle()()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + direct field offset for ViewBasedUIButton.contentHost);
  if (v7)
  {
    v8 = type metadata accessor for _UIHostingView(0, *(v2 + 112), *(v2 + 120), v4);
    v9 = v7;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v8);
    v11 = ViewRendererHost.platformItemList.getter(v8, WitnessTable);
    PlatformItemList.mergedContentItem.getter(v11, v6);

    v12 = v6[112];
    if (v12 || (v12 = *v6) != 0)
    {
      v14 = [v12 string];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v15;
    }

    else
    {

      v13 = 0;
      v7 = 0;
    }

    outlined destroy of PlatformItemList.Item(v6);
  }

  else
  {
    v13 = 0;
  }

  v16 = v13;
  v17 = v7;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

double UIKitButtonBase.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

id UIKitButtonBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitButtonBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ViewBasedUIButton.configureContentHost(_:showsTitle:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x70);
  v9 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x78);
  v10 = objc_allocWithZone(type metadata accessor for UIKitButtonContentHost(0, v8, v9, a4));
  v11 = specialized UIKitButtonContentHost.init(rootView:)(a1, v10);
  v12 = v11;
  if (a2)
  {
    v13 = _UIHostingView.viewGraph.getter(v11);
    swift_beginAccess();
    v14 = *(v13 + 361);
    *(v13 + 361) = v14 | 2;
    if ((v14 | 2) != v14)
    {
      GraphHost.uninstantiate(immediately:)(0);
    }
  }

  v15 = v12;
  _UIHostingView.viewGraph.getter(v15);
  static _ProposedSize.unspecified.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = v9;
  v17[4] = v16;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
  ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
  swift_endAccess();

  v18 = *(v5 + direct field offset for ViewBasedUIButton.contentHost);
  *(v5 + direct field offset for ViewBasedUIButton.contentHost) = v15;
  v19 = v15;

  v20 = [v5 _effectiveContentView];
  v21 = v19;
  [v20 addSubview_];
  [v20 bounds];
  [v21 setFrame_];

  [v21 setAutoresizingMask_];
}

void *UIKitButtonContentHost.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized UIKitButtonContentHost.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + 1792) - 8) + 8))(a1);
  return v3;
}

void closure #1 in ViewBasedUIButton.configureContentHost(_:showsTitle:)(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong invalidateIntrinsicContentSize];
    }
  }
}

uint64_t @objc ViewBasedUIButton.isHighlighted.getter(void *a1)
{
  v1 = a1;
  v2 = ViewBasedUIButton.isHighlighted.getter();

  return v2 & 1;
}

id ViewBasedUIButton.isHighlighted.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void @objc ViewBasedUIButton.isHighlighted.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  ViewBasedUIButton.isHighlighted.setter(v3);
}

double ViewBasedUIButton.isHighlighted.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_setHighlighted_, a1 & 1);
  return ViewBasedUIButton.isHighlighted.didset();
}

double ViewBasedUIButton.isHighlighted.didset()
{
  v1 = &v0[direct field offset for ViewBasedUIButton.isPressed];
  v2 = *&v0[direct field offset for ViewBasedUIButton.isPressed + 8];
  if (v2)
  {
    v3 = v0;
    v4 = v1[16];
    v5 = *v1;

    v10.receiver = v3;
    v10.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v10, sel_isHighlighted);
    v6 = static Animation.coreAnimationDefault(duration:)();
    ObjectType = swift_getObjectType();
    v10.receiver = v3;
    v10.super_class = ObjectType;
    LOBYTE(v3) = objc_msgSendSuper2(&v10, sel_isHighlighted);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    *(v8 + 32) = v2;
    *(v8 + 40) = v4 & 1;
    *(v8 + 41) = v3;

    onNextMainRunLoop(do:)();
  }

  return result;
}

double @objc ViewBasedUIButton.intrinsicContentSize.getter(void *a1)
{
  v1 = a1;
  ViewBasedUIButton.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

id ViewBasedUIButton.intrinsicContentSize.getter()
{
  v1 = *&v0[direct field offset for ViewBasedUIButton.contentHost];
  if (v1)
  {
    return [v1 intrinsicContentSize];
  }

  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, sel_intrinsicContentSize);
}

id ViewBasedUIButton._baselineOffsets(at:)(double a1, double a2)
{
  v3 = *&v2[direct field offset for ViewBasedUIButton.contentHost];
  if (v3)
  {
    return [v3 _baselineOffsetsAtSize_];
  }

  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, sel__baselineOffsetsAtSize_, a1, a2);
}

double @objc ViewBasedUIButton._baselineOffsets(at:)(void *a1, double a2, double a3)
{
  v5 = a1;
  ViewBasedUIButton._baselineOffsets(at:)(a2, a3);
  v7 = v6;

  return v7;
}

Class @objc ViewBasedUIButton.automationElements.getter(void *a1)
{
  v1 = a1;
  v2 = ViewBasedUIButton.automationElements.getter();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

id ViewBasedUIButton.automationElements.getter()
{
  result = *(v0 + direct field offset for ViewBasedUIButton.contentHost);
  if (result)
  {
    result = [result automationElements];
    if (result)
    {
      v2 = result;
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

Swift::Void __swiftcall ViewBasedUIButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  ObjectType = swift_getObjectType();
  v6 = *MEMORY[0x1E69E7D40] & *v2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v8 = *(v2 + direct field offset for ViewBasedUIButton.contentHost);
  if (v8)
  {
    v9 = type metadata accessor for _UIHostingView(0, *(v6 + 112), *(v6 + 120), v7);
    v10 = v8;
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v9);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

void @objc ViewBasedUIButton.didUpdateFocus(in:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  ViewBasedUIButton.didUpdateFocus(in:with:)(v6, v7);
}

id ViewBasedUIButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for ViewBasedUIButton.contentHost] = 0;
  v10 = &v4[direct field offset for ViewBasedUIButton.isPressed];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id ViewBasedUIButton.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[direct field offset for ViewBasedUIButton.contentHost] = 0;
  v4 = &v1[direct field offset for ViewBasedUIButton.isPressed];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t ViewBasedUIButton.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for ViewBasedUIButton.isPressed);
  v2 = *(v0 + direct field offset for ViewBasedUIButton.isPressed + 8);

  return outlined consume of Binding<NavigationSplitViewColumn>?(v1, v2);
}

uint64_t @objc ViewBasedUIButton.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for ViewBasedUIButton.isPressed);
  v3 = *(a1 + direct field offset for ViewBasedUIButton.isPressed + 8);

  return outlined consume of Binding<NavigationSplitViewColumn>?(v2, v3);
}

double UIKitButtonContentHost.appendViewGraphFeatures()(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  lazy protocol witness table accessor for type ButtonContentViewGraph and conformance ButtonContentViewGraph();
  ViewGraph.append<A>(feature:)();

  return result;
}

id UIKitButtonContentHost.hitTest(_:with:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (!a1)
  {
    return 0;
  }

  v8 = ObjectType;
  if ([a1 type] != 11)
  {
    return 0;
  }

  v10.receiver = v3;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_hitTest_withEvent_, a1, a2, a3);
}

id @objc UIKitButtonContentHost.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = UIKitButtonContentHost.hitTest(_:with:)(a5, a2, a3);

  return v11;
}

unint64_t lazy protocol witness table accessor for type ButtonContentViewGraph and conformance ButtonContentViewGraph()
{
  result = lazy protocol witness table cache variable for type ButtonContentViewGraph and conformance ButtonContentViewGraph;
  if (!lazy protocol witness table cache variable for type ButtonContentViewGraph and conformance ButtonContentViewGraph)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonContentViewGraph, &unk_1EFF99D90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContentViewGraph and conformance ButtonContentViewGraph);
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance ButtonContentViewGraph(uint64_t *a1)
{
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.getter();
  return PropertyList.subscript.setter();
}

void *specialized UIKitButtonContentHost.init(rootView:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized _UIHostingView.init(rootView:)(a1, a2);
  _UIHostingView.safeAreaRegions.setter(0);

  return v2;
}

uint64_t SystemTabView.BodyContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  outlined init with copy of _VariadicView_Children(v3 + 88, v45);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = *&v45[16];
  *(v7 + 32) = *v45;
  *(v7 + 48) = v8;
  v9 = v47;
  *(v7 + 64) = v46;
  *(v7 + 80) = v9;
  v35 = v5;
  v36 = v6;
  v37 = partial apply for implicit closure #2 in implicit closure #1 in SystemTabView.BodyContent.body.getter;
  v38 = v7;
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  type metadata accessor for Binding<Int?>(0);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed Binding<A>) -> (@owned Binding<Int?>), v34, MEMORY[0x1E69E73E0], v10, v11, &v41);

  if (v42)
  {
    v12 = v43;
    v13 = v41;
    v14 = v44;
  }

  else
  {
    type metadata accessor for Int?(0, &lazy cache variable for type metadata for State<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    outlined init with copy of _VariadicView_Children(v3 + 88, v45);
    type metadata accessor for ChildIndexProjection();
    v15 = swift_allocObject();
    v16 = *&v45[16];
    v15[1] = *v45;
    v15[2] = v16;
    v17 = v47;
    v15[3] = v46;
    v15[4] = v17;
    specialized Binding.projecting<A>(_:)(v15);
    v13 = v18;
    v12 = v19;
    v14 = v20;

    outlined destroy of Binding<AnyHashable>(&v39, v21);
  }

  v22 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8), *(v3 + 16) | (*(v3 + 17) << 8));
  if (v23)
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    v28 = *(v3 + 80);
    LOBYTE(v39) = *(v3 + 72);
    v40 = v28;
    type metadata accessor for Int?(0, &lazy cache variable for type metadata for State<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v26 = *&v45[8];
    v25 = *v45;
    v27 = v45[16];
  }

  outlined init with copy of _VariadicView_Children(v3 + 88, a2 + 48);
  KeyPath = swift_getKeyPath();
  v39 = 0;
  BindingOperations.NilCoalescing.init(defaultValue:)();
  v33 = *v45;
  *v45 = KeyPath;
  *&v45[8] = v33;
  v41 = v12;
  LOBYTE(v42) = v14 & 1;

  swift_getAtKeyPath();
  if (v40)
  {
    v30 = v33.n128_u64[0];
  }

  else
  {
    v30 = v39;
  }

  type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>(0, v33);
  lazy protocol witness table accessor for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>(&lazy protocol witness table cache variable for type ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>> and conformance ComposedProjection<A, B>, type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>, MEMORY[0x1E697F3A8]);
  v31 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = result;
  *(a2 + 40) = 0;
  *(a2 + 112) = v13;
  *(a2 + 120) = v31;
  *(a2 + 128) = v30;
  *(a2 + 136) = v25;
  *(a2 + 144) = v26;
  *(a2 + 152) = v27;
  *(a2 + 153) = 2;
  return result;
}

uint64_t SystemTabView.BodyContent.init(clientSidebarVisibility:children:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 17) = HIBYTE(a3) & 1;
  AnyHashable.init<A>(_:)();
  *(a8 + 24) = v19;
  *(a8 + 40) = v20;
  v13 = a4[1];
  *(a8 + 88) = *a4;
  *(a8 + 104) = v13;
  v14 = a4[3];
  *(a8 + 120) = a4[2];
  *(a8 + 56) = v21;
  *(a8 + 64) = 0;
  *(a8 + 72) = 0;
  *(a8 + 80) = 0;
  *(a8 + 136) = v14;
  v16 = *(type metadata accessor for SystemTabView.BodyContent(0, a6, a7, v15) + 48);
  type metadata accessor for Binding();
  v17 = type metadata accessor for Optional();
  return (*(*(v17 - 8) + 32))(a8 + v16, a5, v17);
}

Swift::Void __swiftcall TabViewCoordinator_Phone.cacheChild(_:childID:for:)(UIViewController *_, Swift::String childID, Swift::String a3)
{
  v4 = v3;
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  v7 = childID._object;
  v39 = _;
  v40 = childID._countAndFlagsBits;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>?(v10, type metadata accessor for Logger?);
  }

  else
  {
    v38 = countAndFlagsBits;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v7, &v42);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, object, &v42);
      _os_log_impl(&dword_18BD4A000, v13, v14, "Caching child id %s in group id %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    countAndFlagsBits = v38;
  }

  v17 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
  swift_beginAccess();
  v18 = *(v4 + v17);
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v20 & 1) != 0))
  {
    v21 = (*(v18 + 56) + 32 * v19);
    v22 = *v21;
    v23 = v21[1];
    v25 = v21[2];
    v24 = v21[3];
  }

  else
  {
    _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So16UIViewControllerCSaySS_AItGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v23 = v26;
    v25 = v27;
    v24 = v28;
    v22 = 10;
  }

  v42 = v22;
  v43 = v23;
  v44 = v25;
  v45 = v24;
  swift_endAccess();
  v29 = *(v24 + 16);
  v30 = v39;
  if (v22 <= v29)
  {
    TabItemGroup.HostCache.removeOldestKey()();
  }

  specialized OrderedDictionary.subscript.setter(v30, v40, v7, v31);
  v33 = v42;
  v32 = v43;
  v34 = v44;
  v35 = v45;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v4 + v17);
  *(v4 + v17) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v32, v34, v35, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v4 + v17) = v41;
  swift_endAccess();
}

char *TabViewCoordinator_Phone.updatePopoverPresentation(presentations:presenter:host:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (a3)
    {
      *&result[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host + 8] = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>(v7);
      swift_unknownObjectWeakAssign();
    }

    swift_unknownObjectWeakAssign();
    PreferenceValues.init()();
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_nextPopoverSeed;
    v11 = *(v3 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_nextPopoverSeed);
    *(v9 + 16) = a1;
    v15 = partial apply for closure #1 in TabViewCoordinator_Phone.updatePopoverPresentation(presentations:presenter:host:);
    v16 = v9;
    LODWORD(v17) = v11;

    PreferenceValues.modifyValue<A>(for:transform:)();

    ++*(v3 + v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v13 = Strong, v14 = [Strong parentViewController], v13, v14))
    {

      v15 = v18;
      UIKitPopoverBridge.preferencesDidChange(_:)(&v15);
    }

    else
    {
      *&v8[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_delayedPopoverPreferences] = v18;
    }
  }

  return result;
}

Swift::Void __swiftcall TabViewCoordinator_Phone.dismissPresentationIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabs);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v4 = v1 + 32;
    do
    {
      outlined init with copy of TabEntry(v4, v13);
      v5 = TabEntry.presentationCount.getter();
      outlined destroy of TabEntry(v13);
      v14 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 8 * v7 + 32) = v5;
      v4 += 288;
      --v2;
    }

    while (v2);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 32;
    do
    {
      v11 = *(v3 + v10);
      v12 = __OFADD__(v9, v11);
      v9 += v11;
      if (v12)
      {
        __break(1u);
        return;
      }

      v10 += 8;
      --v8;
    }

    while (v8);

    if (!v9)
    {
      goto LABEL_15;
    }

    if (v9 >= 2)
    {
      MEMORY[0x18D009810](0xD00000000000008FLL, 0x800000018CD3FFC0);
    }
  }

  else
  {

LABEL_15:
    TabViewCoordinator_Phone.updatePopoverPresentation(presentations:presenter:host:)(MEMORY[0x1E69E7CC0], 0, 0);
  }
}

Swift::Void __swiftcall TabViewCoordinator_Phone.tabBarController(_:didSelect:)(UITabBarController *_, UIViewController *didSelect)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;

    if (v14 == didSelect)
    {
      type metadata accessor for TabHostingController(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        v48 = _;
        v17 = didSelect;
        v49 = v16;
        v50 = v17;
        v18 = [v16 childViewControllers];
        v47[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v19 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 = v50;
        if (v20 != 1)
        {
          goto LABEL_15;
        }

        v21 = [v49 childViewControllers];

        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x18D00E9C0](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v23 = *(v22 + 32);
        }

        v21 = v23;

        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (!v24)
        {
          goto LABEL_15;
        }

        v47[0] = v24;
        v25 = [v24 viewControllers];
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v26 >> 62))
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_13;
        }

LABEL_33:
        v27 = __CocoaSet.count.getter();
LABEL_13:

        if (v27 >= 2)
        {

          goto LABEL_17;
        }

LABEL_15:

        v28 = [v49 contentScrollView];
        if (!v28)
        {
          _ = v48;
          v21 = v50;
          goto LABEL_19;
        }

        v21 = v28;
        [(UIViewController *)v28 contentOffset];
        v30 = v29;
        [(UIViewController *)v21 adjustedContentInset];
        [(UIViewController *)v21 setContentOffset:1 animated:v30, -v31];
LABEL_17:
        _ = v48;

LABEL_19:
      }
    }
  }

  if (*(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex + 8) == 1)
  {
    v32 = swift_unknownObjectWeakLoadStrong();
    if (!v32 || (v33 = v32, v32, v33 != didSelect))
    {
      v34 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
      swift_beginAccess();
      outlined init with copy of Binding<TabViewCustomization>?(v2 + v34, v7, type metadata accessor for Binding<SearchFieldState>?);
      if ((*(v10 + 48))(v7, 1, v9) == 1)
      {
        v35 = type metadata accessor for Binding<SearchFieldState>?;
        v36 = v7;
      }

      else
      {
        v37 = outlined init with take of Binding<SearchFieldState>(v7, v12);
        MEMORY[0x1EEE9AC00](v37);
        v47[-2] = v12;
        v52 = 17;
        MEMORY[0x1EEE9AC00](v38);
        v47[-2] = partial apply for closure #1 in TabViewCoordinator_Phone.tabBarController(_:didSelect:);
        v47[-1] = v39;
        static Update.dispatchImmediately<A>(reason:_:)();
        v35 = type metadata accessor for Binding<SearchFieldState>;
        v36 = v12;
      }

      outlined destroy of Binding<TabViewCustomization>?(v36, v35);
    }
  }

  v40 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
  swift_beginAccess();
  v41 = *(v2 + v40);

  v54.value._rawValue = v41;
  v53 = TabViewCoordinator_Phone.updatedSelection(didSelect:viewController:selectionCache:)(_, didSelect, v54);
  value = v53.value;
  LOBYTE(v40) = v53.is_nil;

  if ((v40 & 1) == 0)
  {
    v51 = 17;
    v43 = *(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected);
    v44 = *(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected + 8);
    v45 = *(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected + 16);
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = v44;
    v46[4] = v45;
    v46[5] = value;
    swift_retain_n();
    swift_retain_n();
    static Update.enqueueAction(reason:_:)();
  }

  swift_unknownObjectWeakAssign();
}

uint64_t closure #1 in TabViewCoordinator_Phone.tabBarController(_:didSelect:)(void *a1)
{
  v1 = type metadata accessor for SearchFieldState(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  v5 = v4[2];
  v6 = v4[3];
  outlined destroy of Binding<TabViewCustomization>?(v4, type metadata accessor for SearchFieldState);
  *v4 = 2;
  v4[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v4 + 1) = 2;
  *(v4 + 1) = 0;
  v4[8] = 1;
  AttributedString.init()();
  v4[*(v2 + 48)] = 0;
  v7 = *(v2 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v8 = &v4[v7];
  v9 = byte_1EAB095CC;
  *v8 = static SearchFocusUpdate.empty;
  v8[4] = v9;
  v4[2] = v5;
  v4[3] = v6;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of Binding<TabViewCustomization>?(v4, type metadata accessor for SearchFieldState);
}

Swift::Void __swiftcall TabViewCoordinator_Phone.tabBarControllerDidEndEditing(_:)(UITabBarController *a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>?(v6, type metadata accessor for Logger?);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_18BD4A000, v9, v10, "tabBarControllerDidEndEditing", v11, 2u);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  v12 = [(UITabBarController *)a1 viewControllers];
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = v12;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v32[0] = v13;
  if (v15 >> 62)
  {
LABEL_27:
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (v16 != v17)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x18D00E9C0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v22 = [v19 _uip_tabElement];

    ++v17;
    if (v22)
    {
      MEMORY[0x18D00CC30]();
      if (*((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v32[0];
      v17 = v21;
    }
  }

  if (v18 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab, 0x1E69DD780);

    v23 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab, 0x1E69DD780);
    v23 = v18;
  }

  v24 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  v25 = v31;
  swift_beginAccess();
  v26 = v25 + v24;
  v27 = v30;
  outlined init with copy of Binding<TabViewCustomization>?(v26, v30, type metadata accessor for Binding<TabViewCustomization>?);
  v28 = *(v25 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  TabViewCoordinator_Phone.mayHaveCustomizedTabBarVisibility(of:customization:tabCache:)(v23, v27, v28);

  outlined destroy of Binding<TabViewCustomization>?(v27, type metadata accessor for Binding<TabViewCustomization>?);
}

Class @objc TabViewCoordinator_Phone.tabBarController(_:sidebar:itemsForBeginning:tab:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *&a1[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache];

  v9 = a6;
  v10 = a1;
  TabViewCoordinator_Phone.dragSessionItems(for:tabCache:)(v9, v8);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

id @objc TabViewCoordinator_Phone.tabBarController(_:sidebar:leadingSwipeActionsConfigurationFor:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a6;
  v9 = *&a1[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache];

  v10 = a5;
  v11 = a1;
  v12 = TabViewCoordinator_Phone.swipeActionsConfiguration(for:edge:tabCache:)(v10, v6, v9);

  return v12;
}

void TabViewCoordinator_Phone.__ivar_destroyer()
{

  MEMORY[0x18D011290](v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_lastSelection);
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 32);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 40);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 48);
  outlined consume of Binding<NavigationSplitViewColumn>?(*(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 8), *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16));
  outlined consume of TabSidebarAccessoryViewConfiguration?(v1, v2, v3);
  outlined destroy of Binding<TabViewCustomization>?(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization, type metadata accessor for Binding<TabViewCustomization>?);
  MEMORY[0x18D011290](v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_popoverBridge);
  outlined destroy of Binding<TabViewCustomization>?(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState, type metadata accessor for Binding<SearchFieldState>?);
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
}

uint64_t type metadata accessor for TabViewCoordinator_Phone(uint64_t a1)
{
  result = type metadata singleton initialization cache for TabViewCoordinator_Phone;
  if (!type metadata singleton initialization cache for TabViewCoordinator_Phone)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TabViewCoordinator_Phone(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<SearchFieldState>?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double outlined consume of TabSidebarAccessoryViewConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1)
  {
  }

  return result;
}

void specialized OrderedDictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *(v9 + 16);
  if (*v4)
  {

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, v9 + 32, v10, (v8 + 16), v8 + 32);
    v13 = v12;
    v10 = v14;

    if ((v13 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v20 = v4[2];
      v18 = v4 + 2;
      v19 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v19);
        *v18 = v19;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *(v19 + 16))
      {
        v22 = v19 + 8 * v11;
        v23 = *(v22 + 32);
        *(v22 + 32) = a1;

        specialized ContiguousArray._endMutation()();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v10)
  {
    v11 = 0;
    v15 = (v9 + 40);
    while (1)
    {
      v16 = *(v15 - 1) == a2 && *v15 == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v11;
      v15 += 2;
      if (v10 == v11)
      {
        v10 = 0;
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      v10 = 0;
LABEL_26:
      specialized OrderedSet._removeExistingMember(at:in:)(v11, v10);

      v17 = specialized ContiguousArray.remove(at:)(v11);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a1)
  {
    specialized OrderedSet._appendNew(_:in:)(a2, a3, v10);

    v24 = a1;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v17 = v24;
LABEL_27:

    return;
  }
}

uint64_t specialized OrderedDictionary.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v8 = 0;
      for (i = (v6 + 40); ; i += 2)
      {
        v14 = *(i - 1) == a1 && *i == a2;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      v12 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  v8 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, v6 + 32, v7, (v5 + 16), v5 + 32);
  v10 = v9;
  v12 = v11;

  if (v10)
  {
    return 0;
  }

LABEL_14:
  specialized OrderedSet._removeExistingMember(at:in:)(v8, v12);

  return specialized ContiguousArray.remove(at:)(v8);
}

void specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x18D000D70](*(v14 + 16) & 0x3FLL) > v12)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return;
  }

  specialized OrderedSet._regenerateHashTable()();
}

void specialized OrderedSet._regenerateHashTable()()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x18D000DA0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

  v8 = MEMORY[0x18D000DA0](v6, a2);
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
    v10 = MEMORY[0x18D000DB0](v8, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
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

void specialized OrderedSet._reserveCapacity(_:persistent:)(unint64_t a1, char a2)
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

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x18D000DA0](a1);
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

  v12 = MEMORY[0x18D000DA0](a1);
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

  v18 = MEMORY[0x18D000DA0](*(v7 + 16));
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
    v20 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(v7, v15, 0, v13);

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

  v21 = _HashTable.copy()();

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

void specialized OrderedSet._removeExistingMember(at:in:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    specialized ContiguousArray.remove(at:)(a1);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x18D000D80]())
  {
LABEL_16:
    specialized ContiguousArray.remove(at:)(a1);
    specialized OrderedSet._regenerateHashTable()();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = _HashTable.copy()();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t specialized ContiguousArray.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v14)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      _HashTable.BucketIterator.currentValue.getter();
      v6 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v6) / 2)
    {
      if (MEMORY[0x18D000D70](*a4 & 0x3FLL) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (a1)
        {
          v10 = 0;
          while (1)
          {
            Hasher.init(_seed:)();

            String.hash(into:)();
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v11 = _HashTable.BucketIterator.currentValue.getter();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            _HashTable.BucketIterator.currentValue.setter();

            if (v10 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v18 = _HashTable.BucketIterator.currentValue.getter();
      if ((v19 & 1) != 0 || v18 >= a1)
      {
LABEL_33:
        _HashTable.BucketIterator.advance()();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return;
      }

      if (!__OFADD__(v18, v6))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v20 = _HashTable.BucketIterator.currentValue.getter();
      if ((v21 & 1) == 0 && v20 >= v5)
      {
        if (__OFSUB__(v20, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v9 - a2) >= MEMORY[0x18D000D70](*a4 & 0x3FLL) / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v9 != v5)
    {
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v22 = _HashTable.BucketIterator.currentValue.getter();
            if ((v23 & 1) == 0 && v22 == v5)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v5 != v9);
    }
  }
}

uint64_t specialized TabViewCoordinator_Phone.badgeValue(environment:badgeLabel:)(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v9 - 8);
  type metadata accessor for _UIHostingView<TabItem.RootView>(0, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  MEMORY[0x1EEE9AC00](v10);
  v11 = 0;
  if (a4 >> 1 != 0xFFFFFFFF)
  {
    v15 = *a1;
    if ((a4 & 0x8000000000000000) != 0)
    {
      outlined copy of Text.Storage(a2, a3, a4 & 1);
    }

    else
    {
      *&v17 = a2;
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Int and conformance Int();
      IntegerFormatStyle.init(locale:)();
      lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>();
      a2 = Text.init<A>(_:format:)();
      a3 = v12;
      LOBYTE(a4) = v13;
    }

    v17 = v15;
    v16[1] = 0;
    v16[2] = 0;
    MEMORY[0x18D009CB0](v16);
    v11 = Text.resolveString(in:with:idiom:)();
    outlined consume of Text.Storage(a2, a3, a4 & 1);
  }

  return v11;
}

void _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So16UIViewControllerCSaySS_AItGTt0g5Tf4g_n(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo16UIViewControllerC_Tt0g5(MEMORY[0x1E69E7CC0]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    while (1)
    {
      v6 = (v4 + 24 * v3);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v15 + 16);
      if (v10)
      {
        break;
      }

LABEL_12:

      v13 = v9;
      ++v3;
      specialized OrderedSet._appendNew(_:in:)(v8, v7, 0);
      v5 = v9;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();

      if (v3 == v2)
      {
        return;
      }
    }

    v11 = (v15 + 40);
    while (1)
    {
      v12 = *(v11 - 1) == v8 && *v11 == v7;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 += 2;
      if (!--v10)
      {
        goto LABEL_12;
      }
    }

    v14 = v9;
    __break(1u);
    __break(1u);
  }
}

void specialized TabViewCoordinator_Phone.didUseChild(_:childID:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 32 * v12);
    v15 = v14[1];
    v22 = *v14;
    v23 = a3;
    v16 = v14[2];
    v17 = v14[3];
    swift_endAccess();

    specialized OrderedDictionary.subscript.getter(a1, a2, v15, v16, v17);
    if (v18)
    {
      v19 = v18;

      specialized OrderedDictionary.subscript.setter(v19, a1, a2, v20);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v5 + v10);
    *(v5 + v10) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v15, v16, v17, v23, a4, isUniquelyReferenced_nonNull_native);

    *(v5 + v10) = v24;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t specialized TabViewCoordinator_Phone._uip_tabBarController(_:dropSessionDidUpdate:withDestinationTab:)(void *a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = [a1 identifier];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = (v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    if (!v8)
    {
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = (v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    if (!v8)
    {
      goto LABEL_25;
    }

    v6 = 0;
    v4 = 0;
  }

  v9 = [v8 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!v6)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  if (v4 == v10 && v6 == v12)
  {

    v2 = a1;
    goto LABEL_25;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_23:
    v2 = a1;
    goto LABEL_25;
  }

LABEL_18:
  v15 = *v7;
  if (*v7)
  {
    v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

    v17 = v15;
    TabViewCoordinator_Phone.updateTargeting(_:for:tabCache:)(0, v17, v16);
  }

  v18 = a1;
  if (a1)
  {
    v19 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

    v20 = a1;
    TabViewCoordinator_Phone.updateTargeting(_:for:tabCache:)(1, v20, v19);

    v18 = a1;
  }

  v21 = *v7;
  *v7 = v18;
  v2 = v21;
LABEL_25:

  return MEMORY[0x1EEE66BB8](v8, v2);
}

double specialized TabViewCoordinator_Phone._tabElementGroup(_:didSelect:)(void *a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
  swift_beginAccess();
  v4 = *(v1 + v3);

  specialized TabViewCoordinator_Phone.updatedSelection(didSelect:element:selectionCache:)(a1, v4);
  v6 = v5;
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v10 = v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected;
    v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected);
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v13;
    v14[5] = v6;
    swift_retain_n();
    swift_retain_n();
    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

double specialized TabViewCoordinator_Phone.tabBarController(_:sidebarVisibilityWillChange:animator:)(void *a1)
{
  v2 = v1;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.tabView.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>?(v6, type metadata accessor for Logger?);
  }

  else
  {
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = [v9 isHidden];

      _os_log_impl(&dword_18BD4A000, v10, v11, "tabBarController: sidebarVisibilityWillChange:\nisHidden:%{BOOL}d", v12, 8u);
      MEMORY[0x18D0110E0](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    (*(v8 + 8))(v6, v7);
  }

  v13 = [a1 isHidden];
  if (*(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16))
  {
    if (v13)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v16[15] = v15;

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t outlined destroy of Binding<TabViewCustomization>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for SystemTabView.BodyContent(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SystemTabView.BodyContent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-153 - v6) | v6 | 7) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = *(a2 + 17);
    v14 = *(a2 + 16);
    v37 = *(v5 + 84);
    v16.n128_f64[0] = outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v12, v14, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v14;
    *(a1 + 17) = v13;
    v17 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[3];
    v17[3] = v19;
    v17[4] = v18[4];
    (**(v19 - 8))(v17, v18, v16);
    v17[5] = v18[5];
    v20 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v18 + 55) & 0xFFFFFFFFFFFFFFF8;
    *v20 = *v21;
    *(v20 + 8) = *(v21 + 8);
    v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[3];
    v22[3] = v24;
    v22[4] = v23[4];
    v25 = **(v24 - 8);

    v25(v22, v23, v24);
    v26 = v23[5];
    v22[5] = v26;
    v22[6] = v23[6];
    v22[7] = v23[7];
    v27 = v22 + 71;
    v28 = ((v23 + 71) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v26;

    if (v37 < 0)
    {
      v33 = (*(v5 + 48))(v29 + 1);
      v32 = (v27 & 0xFFFFFFFFFFFFFFF8);
      if (v33)
      {
LABEL_13:
        memcpy(v32, ((v23 + 71) & 0xFFFFFFFFFFFFFFF8), v7);
        return a1;
      }
    }

    else
    {
      v31 = *v29;
      if (*v29 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      v32 = (v27 & 0xFFFFFFFFFFFFFFF8);
      if (v31 != -1)
      {
        goto LABEL_13;
      }
    }

    *v32 = *v28;
    v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v29;
    v35 = *(v5 + 16);

    v35(v34 + 1, v29 + 1, v4);
    return a1;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = v10 + ((v6 + 16) & ~(v6 | 7));

  return a1;
}

double outlined copy of Environment<Binding<Visibility>?>.Content(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    outlined copy of Binding<Int>?(result, a2);
  }

  else
  {
  }

  return v4;
}

uint64_t destroy for SystemTabView.BodyContent(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Binding<Visibility>?>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v4 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = (((v4 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v5);

  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + (v8 | 7) + 64) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

uint64_t initializeWithCopy for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  v10.n128_f64[0] = outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  v11 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[3];
  v11[3] = v13;
  v11[4] = v12[4];
  (**(v13 - 8))(v11, v12, v10);
  v11[5] = v12[5];
  v14 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[3];
  v16[3] = v18;
  v16[4] = v17[4];
  v19 = **(v18 - 8);

  v19(v16, v17, v18);
  v20 = v17[5];
  v16[5] = v20;
  v16[6] = v17[6];
  v16[7] = v17[7];
  v21 = *(a3 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  v24 = *(v22 + 80);
  v25 = *(v22 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v26 = ((v16 + v24 + 64) & v25);
  v27 = ((v17 + v24 + 64) & v25);
  v28 = ~v24;
  v36 = *(v22 + 64);
  v29 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = v20;

  if ((v23 & 0x80000000) == 0)
  {
    v31 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    if (v31 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v26 = *v27;
    v32 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v29;
    v33 = v32 + v24 + 8;
    v34 = *(v22 + 16);

    v34(v33 & v28, (v29 + v24 + 8) & v28, v21);
    return a1;
  }

  if (!(*(v22 + 48))((v29 + v24 + 8) & v28, v23, v21))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v26, v27, ((v24 + 16) & ~v24) + v36);
  return a1;
}

uint64_t assignWithCopy for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of Environment<Binding<Visibility>?>.Content(v10, v11, v13, v12);
  v14 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v14, v15);
  v14[5] = v15[5];

  v16 = (v14 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v18, v19);
  v20 = v19[5];
  v21 = v18[5];
  v18[5] = v20;
  v22 = v20;

  v18[6] = v19[6];

  v18[7] = v19[7];
  v23 = *(a3 + 16);
  v24 = *(v23 - 8);
  v25 = *(v24 + 84);
  v26 = *(v24 + 80);
  v27 = *(v24 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v28 = ((v18 + v26 + 64) & v27);
  v29 = ((v19 + v26 + 64) & v27);
  v30 = ~v26;
  v31 = (v26 + 16) & ~v26;
  v32 = *(v24 + 64);
  v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v25 & 0x80000000) != 0)
  {
    v48 = v29;
    v41 = *(v24 + 48);
    v47 = *(*(v23 - 8) + 64);
    v46 = v41((v33 + v26 + 8) & ~v26, v25, v23);
    v34 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = ~v26;
    v36 = v41((v34 + v26 + 8) & ~v26, v25, v23);
    v32 = v47;
    v31 = (v26 + 16) & ~v26;
    v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v29 = v48;
    if (!v46)
    {
LABEL_5:
      v37 = v33;
      if (!v36)
      {
        *v28 = *v29;

        *v37 = *v34;

        (*(v24 + 24))((v37 + v26 + 8) & v30, (v34 + v26 + 8) & v30, v23);
        return a1;
      }

      v38 = v31;
      v39 = v32;

      (*(v24 + 8))((v37 + v26 + 8) & v30, v23);
      v40 = v38 + v39;
      goto LABEL_10;
    }
  }

  else
  {
    v34 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v34;
    if (*v34 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v35) = -1;
    }

    v36 = v35 + 1;
    if (*v33 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v36)
  {
    *v28 = *v29;
    *v33 = *v34;
    v42 = v23;
    v43 = v33 + v26 + 8;
    v44 = *(v24 + 16);

    v44(v43 & v30, (v34 + v26 + 8) & v30, v42);
    return a1;
  }

  v40 = v31 + v32;
LABEL_10:
  memcpy(v28, v29, v40);
  return a1;
}

uint64_t initializeWithTake for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = v5[2];
  v4[1] = v5[1];
  v4[2] = v7;
  *v4 = v6;
  v8 = ((v4 + 55) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v5 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v10[2] = v11[2];
  v10[3] = v14;
  *v10 = v12;
  v10[1] = v13;
  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = *(v16 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v10 + v17 + 64) & v18);
  v20 = ((v11 + v17 + 64) & v18);
  v21 = ~v17;
  v22 = *(v16 + 64);
  v23 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v16 + 84) & 0x80000000) == 0)
  {
    v24 = *v23;
    if (*v23 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if (v24 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v19 = *v20;
    v25 = (v19 + 15);
    *(v25 & 0xFFFFFFFFFFFFFFF8) = *v23;
    (*(v16 + 32))((v17 + 8 + (v25 & 0xFFFFFFFFFFFFFFF8)) & v21, (v23 + v17 + 8) & v21, v15);
    return a1;
  }

  if (!(*(v16 + 48))((v23 + v17 + 8) & v21))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v19, v20, ((v17 + 16) & ~v17) + v22);
  return a1;
}

uint64_t assignWithTake for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = *a2;
  v11 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v7;
  outlined consume of Environment<Binding<Visibility>?>.Content(v8, v9, v11, v10);
  v12 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v12);
  v14 = *v13;
  v15 = *(v13 + 16);
  *(v12 + 32) = *(v13 + 32);
  *v12 = v14;
  *(v12 + 16) = v15;
  *(v12 + 40) = *(v13 + 40);

  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v20 = *v19;
  v21 = *(v19 + 16);
  *(v18 + 32) = *(v19 + 32);
  *v18 = v20;
  *(v18 + 16) = v21;
  v22 = *(v18 + 40);
  *(v18 + 40) = *(v19 + 40);

  *(v18 + 48) = *(v19 + 48);

  *(v18 + 56) = *(v19 + 56);
  v23 = *(a3 + 16);
  v24 = *(v23 - 8);
  v25 = *(v24 + 84);
  v26 = *(v24 + 80);
  v27 = *(v24 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v28 = ((v26 + 64 + v18) & v27);
  v29 = ((v26 + 64 + v19) & v27);
  v30 = ~v26;
  v31 = (v26 + 16) & ~v26;
  v32 = *(v24 + 64);
  v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v25 & 0x80000000) != 0)
  {
    v44 = v29;
    v40 = *(v24 + 48);
    v43 = *(v24 + 64);
    v42 = v40((v33 + v26 + 8) & ~v26, v25, v23);
    v34 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = ~v26;
    v36 = v40((v34 + v26 + 8) & ~v26, v25, v23);
    v32 = v43;
    v31 = (v26 + 16) & ~v26;
    v29 = v44;
    if (!v42)
    {
LABEL_5:
      if (!v36)
      {
        *v28 = *v29;

        *v33 = *v34;

        (*(v24 + 40))((v33 + v26 + 8) & v30, (v34 + v26 + 8) & v30, v23);
        return a1;
      }

      v37 = v31;
      v38 = v32;

      (*(v24 + 8))((v33 + v26 + 8) & v30, v23);
      v39 = v37 + v38;
      goto LABEL_10;
    }
  }

  else
  {
    v34 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v34;
    if (*v34 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v35) = -1;
    }

    v36 = v35 + 1;
    if (*v33 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v36)
  {
    *v28 = *v29;
    *v33 = *v34;
    (*(v24 + 32))((v33 + v26 + 8) & v30, (v34 + v26 + 8) & v30, v23);
    return a1;
  }

  v39 = v31 + v32;
LABEL_10:
  memcpy(v28, v29, v39);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemTabView.BodyContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) - (((-17 - v8) | v8) + ((-153 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      v18 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        v20 = ((((((((v18 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 64) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v5 & 0x80000000) != 0)
        {
          v22 = (*(v4 + 48))((v20 + v8 + 8) & ~v8);
        }

        else
        {
          v21 = *v20;
          if (v21 >= 0xFFFFFFFF)
          {
            LODWORD(v21) = -1;
          }

          v22 = v21 + 1;
        }

        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(v18 + 24);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-17 - v8) | v8) + ((-153 - v8) | v10)) != 2)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for SystemTabView.BodyContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + ((v11 + 152) & ~(v11 | 7));
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * (v12 + ((v11 - 104) & ~(v11 | 7))))) + 1;
      if (v13)
      {
        v21 = v17 & ~(-1 << (8 * (v12 + ((v11 - 104) & ~(v11 | 7)))));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_60:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v13] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v22 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((((((v22 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 64) & ~(v11 | 7));
    if (v9 >= a2)
    {
      v27 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v28 = *(v6 + 56);
        v29 = a2 + 1;

        v28((v27 + v11 + 8) & ~v11, v29);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v27 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v27 = a2;
      }
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
        v25 = v24 & (a2 - v8);
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

  else if ((a2 & 0x80000000) != 0)
  {
    *(v22 + 40) = 0;
    *(v22 + 24) = 0u;
    *(v22 + 8) = 0u;
    *v22 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v22 + 24) = a2 - 1;
  }
}

uint64_t outlined destroy of Binding<AnyHashable>(uint64_t a1, __n128 a2)
{
  type metadata accessor for Int?(0, &lazy cache variable for type metadata for Binding<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981948]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>)
  {
    type metadata accessor for WritableKeyPath<Int?, Int?>(255, a2);
    type metadata accessor for Int?(255, &lazy cache variable for type metadata for BindingOperations.NilCoalescing<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E697ECA8]);
    lazy protocol witness table accessor for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>(&lazy protocol witness table cache variable for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<Int?, Int?>, MEMORY[0x1E6982050]);
    lazy protocol witness table accessor for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>();
    v2 = type metadata accessor for ComposedProjection();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>);
    }
  }
}

void type metadata accessor for WritableKeyPath<Int?, Int?>(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for WritableKeyPath<Int?, Int?>)
  {
    type metadata accessor for Int?(255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v2 = type metadata accessor for WritableKeyPath();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for WritableKeyPath<Int?, Int?>);
    }
  }
}

void type metadata accessor for Int?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>()
{
  result = lazy protocol witness table cache variable for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>;
  if (!lazy protocol witness table cache variable for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>)
  {
    type metadata accessor for Int?(255, &lazy cache variable for type metadata for BindingOperations.NilCoalescing<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E697ECA8]);
    result = swift_getWitnessTable(MEMORY[0x1E697ECB0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type AdaptableTabView and conformance AdaptableTabView()
{
  result = lazy protocol witness table cache variable for type AdaptableTabView and conformance AdaptableTabView;
  if (!lazy protocol witness table cache variable for type AdaptableTabView and conformance AdaptableTabView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabView, &type metadata for AdaptableTabView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptableTabView and conformance AdaptableTabView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>(double a1)
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<TabItem.RootView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView()
{
  result = lazy protocol witness table cache variable for type TabItem.RootView and conformance TabItem.RootView;
  if (!lazy protocol witness table cache variable for type TabItem.RootView and conformance TabItem.RootView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabItem.RootView, &type metadata for TabItem.RootView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabItem.RootView and conformance TabItem.RootView);
  }

  return result;
}

void type metadata accessor for _UIHostingView<TabItem.RootView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>)
  {
    type metadata accessor for _UIHostingView<TabItem.RootView>(255, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
    result = swift_getWitnessTable(MEMORY[0x1E6968908], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>);
  }

  return result;
}

void *CellHostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v6 = specialized CellHostingView.init(rootView:)(a1, v5);
  (*(*(*(v2 + 226) - 8) + 8))(a1);
  return v6;
}

void type metadata accessor for _SemanticFeature<Semantics_v4>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CellViewGraph and conformance CellViewGraph()
{
  result = lazy protocol witness table cache variable for type CellViewGraph and conformance CellViewGraph;
  if (!lazy protocol witness table cache variable for type CellViewGraph and conformance CellViewGraph)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CellViewGraph, &unk_1EFF99FB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CellViewGraph and conformance CellViewGraph);
  }

  return result;
}

void *specialized CellHostingView.init(rootView:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized UIItemHostingView.init(rootView:)(a1, a2);
  _UIHostingView.isHiddenForReuse.setter(1);

  return v2;
}

double UIImage.resolveNamedImage(in:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So7UIColorCs5NeverOTg50121_s7SwiftUI13GraphicsImageVAAE012makePlatformD024fixedSymbolConfiguration16flattenMaskColor13colorResolverSo7UIImageCSgSb_v31AA0F8ItemListV0P0V0dlN0VSgtFSo7D9CSiXEfU0_0G2UI0lyZ0V0Y0V0j5ColorR0VAL17EnvironmentValuesVAL0iJ0VTf1cn_nTf4ngnd_n(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_23;
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (a2 < v12 || (v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    for (i = 0; i < v4; ++i)
    {
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      v7 = v12 + i;

      if (ShapeStyle.fallbackColor(in:level:)())
      {
        dispatch thunk of AnyColorBox.resolve(in:)();
        v8 = Color.Resolved.cgColor.getter();

        [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      }

      else
      {

        v9 = objc_opt_self();
        if (v7)
        {
          if (v7 == 1)
          {
            v10 = [v9 secondaryLabelColor];
          }

          else
          {
            v10 = [v9 tertiaryLabelColor];
          }
        }

        else
        {
          v10 = [v9 labelColor];
        }

        v11 = v10;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v7 >= a2)
      {
        goto LABEL_22;
      }

      if (v6 == v4)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t initializeWithCopy for PlatformTextViewEditorStorage(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t assignWithCopy for PlatformTextViewEditorStorage(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for PlatformTextViewEditorStorage(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t assignWithTake for PlatformTextViewEditorStorage(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = *v6;
    (a1)(v24, &v28, a2);
    if (v3)
    {
      break;
    }

    if (v25)
    {
      v22 = v26;
      *v23 = v27[0];
      *&v23[11] = *(v27 + 11);
      v18 = v24[6];
      v19 = v24[7];
      v20 = v24[8];
      v21 = v25;
      v14 = v24[2];
      v15 = v24[3];
      v16 = v24[4];
      v17 = v24[5];
      v12 = v24[0];
      v13 = v24[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v9 = v7[2];
      v8 = v7[3];
      if (v9 >= v8 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      }

      v7[2] = v9 + 1;
      v10 = &v7[26 * v9];
      v10[2] = v12;
      v10[5] = v15;
      v10[6] = v16;
      v10[3] = v13;
      v10[4] = v14;
      v10[9] = v19;
      v10[10] = v20;
      v10[7] = v17;
      v10[8] = v18;
      *(v10 + 219) = *&v23[11];
      v10[12] = v22;
      v10[13] = *v23;
      v10[11] = v21;
    }

    else
    {
      outlined destroy of AttributedTextSelection.Indices?(v24, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?);
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 56);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v10 = *(v5 - 8);
    v11 = *v5;
    v19[0] = v8;
    v19[1] = v9;
    v20 = v10;
    v21 = v11;
    outlined copy of Text.Storage(v8, v9, v10);

    (v22)(&v17, v19);
    if (v3)
    {
      break;
    }

    outlined consume of Text.Storage(v8, v9, v10);

    v12 = v18;
    if (v18)
    {
      v13 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v7 = &v6[16 * v15];
      *(v7 + 4) = v13;
      *(v7 + 5) = v12;
    }

    v5 += 4;
    if (!--v4)
    {
      return v6;
    }
  }

  outlined consume of Text.Storage(v8, v9, v10);

  return v6;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v24 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = (a3 + 32);
  v24 = v14;
  v18 = (v14 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v25 = v11;
  v26 = a2;
  while (1)
  {
    v28 = *v17;
    a1(&v28);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v11) == 1)
    {
      outlined destroy of AttributedTextSelection.Indices?(v9, type metadata accessor for Range<AttributedString.Index>?);
    }

    else
    {
      v20 = v27;
      outlined init with take of AttributedTextSelection.TypingAttributes(v9, v27, type metadata accessor for Range<AttributedString.Index>);
      outlined init with take of AttributedTextSelection.TypingAttributes(v20, v29, type metadata accessor for Range<AttributedString.Index>);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      outlined init with take of AttributedTextSelection.TypingAttributes(v29, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for Range<AttributedString.Index>);
      v11 = v25;
    }

    ++v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2)
{
  v35 = a2;
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v2, v9, v15);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BB8]);
  dispatch thunk of Sequence.makeIterator()();
  v18 = *(v14 + 44);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.endIndex.getter();
  for (i = MEMORY[0x1E69E7CC0]; *&v17[v18] != v33; i = v28)
  {
    v32 = i;
    while (1)
    {
      v20 = dispatch thunk of Collection.subscript.read();
      outlined init with copy of AttributedTextSelection.Indices(v21, v7, type metadata accessor for Range<AttributedString.Index>);
      v20(&v33, 0);
      dispatch thunk of Collection.formIndex(after:)();
      a1(&v33, v7);
      if (v3)
      {
        outlined destroy of AttributedTextSelection.Indices?(v7, type metadata accessor for Range<AttributedString.Index>);
        outlined destroy of AttributedTextSelection.Indices?(v17, type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
        i = v32;

        return i;
      }

      outlined destroy of AttributedTextSelection.Indices?(v7, type metadata accessor for Range<AttributedString.Index>);
      if ((v34 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.endIndex.getter();
      if (*&v17[v18] == v33)
      {
        i = v32;
        goto LABEL_14;
      }
    }

    v31 = v33;
    v22 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v23 = v22;
    v24 = *(v22 + 2);
    v25 = v23;
    v26 = *(v23 + 3);
    v27 = v24 + 1;
    if (v24 >= v26 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v24 + 1, 1, v25);
      v27 = v24 + 1;
      v25 = v29;
    }

    v28 = v25;
    *(v25 + 2) = v27;
    *&v25[16 * v24 + 32] = v31;
    dispatch thunk of Collection.endIndex.getter();
  }

LABEL_14:
  outlined destroy of AttributedTextSelection.Indices?(v17, type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
  return i;
}

void PlatformTextViewEditorStorage.selection.getter(char *a1@<X8>)
{
  v3 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedTextSelection.Indices(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributeContainer();
  v11 = *(v10 - 8);
  v74 = v10;
  v75 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v66 - v18;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = Strong;
  v25 = [Strong textStorage];

  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  ObjectType = swift_getObjectType();
  v77 = &protocol descriptor for SwiftTextStorage;
  v27 = swift_conformsToProtocol2();
  if (!v27)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(v27 + 16))(ObjectType, v27);

  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
    v65 = *(v8 + 56);
    v65(a1, 1, 1, v7);
    outlined destroy of AttributedTextSelection.Indices?(a1, type metadata accessor for AttributedTextSelection.Indices?);
    v65(a1, 1, 1, v7);
    v64 = type metadata accessor for AttributedTextSelection(0);
    (*(v75 + 56))(&a1[*(v64 + 20)], 1, 1, v74);
    v63 = 0;
LABEL_18:
    a1[*(v64 + 24)] = v63;
    (*(v20 + 8))(v22, v19);
    return;
  }

  v29 = v28;
  v69 = v13;
  v79 = v8;
  v30 = UITextView.selectedRanges.getter();
  MEMORY[0x1EEE9AC00](v30);
  v72 = v31;
  *(&v66 - 2) = v31;
  v70 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in PlatformTextViewEditorStorage.selection.getter, (&v66 - 4), v30);

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 textStorage];

  if (!v34)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v66 = v20;
  v67 = v19;
  v71 = v7;
  v68 = a1;
  v35 = swift_getObjectType();
  v36 = swift_conformsToProtocol2();
  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = *(*(v36 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v66 - v41;
  v82 = v34;
  (*(v37 + 56))(v35, v37, v40);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  UITextView.typingAttributes<A>(for:)(AssociatedTypeWitness, AssociatedConformanceWitness, v78);
  (*(v39 + 8))(v42, AssociatedTypeWitness);
  AttributedTextSelection.Indices.init(_:)(v70, v81);
  specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)(v72, v16);
  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v44;
  v46 = [v44 textStorage];

  v47 = v71;
  v48 = v75;
  if (!v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = swift_getObjectType();
  v50 = swift_conformsToProtocol2();
  if (v50)
  {
    (*(v50 + 64))(v16, v49, v50);

    v51 = 1;
    v52 = v69;
    AttributeContainer.filter(inheritedByAddedText:)();
    v53 = *(v48 + 8);
    v54 = v74;
    v53(v16, v74);
    (*(v48 + 32))(v16, v52, v54);
    v55 = v76;
    outlined init with copy of AttributedTextSelection.Indices(v81, v76, type metadata accessor for AttributedTextSelection.Indices);
    v56 = *(v79 + 56);
    v57 = v55;
    v58 = v54;
    v79 += 56;
    v56(v57, 0, 1, v47);
    v59 = v78;
    if ((static AttributeContainer.== infix(_:_:)() & 1) == 0)
    {
      (*(v48 + 16))(v73, v59, v58);
      v51 = 0;
    }

    v60 = v73;
    (*(v48 + 56))(v73, v51, 1, v58);
    v61 = v58;
    v62 = [v29 selectionAffinity];

    v53(v16, v61);
    outlined destroy of AttributedTextSelection.Indices?(v81, type metadata accessor for AttributedTextSelection.Indices);
    v53(v59, v61);
    if (v62)
    {
      v63 = 2 * (v62 == 1);
    }

    else
    {
      v63 = 1;
    }

    a1 = v68;
    v56(v68, 1, 1, v71);
    outlined assign with take of AttributedTextSelection.Indices?(v76, a1);
    v64 = type metadata accessor for AttributedTextSelection(0);
    outlined init with take of AttributedTextSelection.TypingAttributes(v60, &a1[*(v64 + 20)], type metadata accessor for AttributedTextSelection.TypingAttributes);
    v20 = v66;
    v19 = v67;
    v22 = v72;
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
}

uint64_t closure #1 in PlatformTextViewEditorStorage.selection.getter(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributedString();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3, v4);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  return Range<>.init<A>(_:in:)();
}

uint64_t UITextView.typingAttributes<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AttributeContainer.init()();
  v8 = [v4 typingAttributes];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  (*(a2 + 40))(v9, a3, 1, a1, a2);
}

void PlatformTextViewEditorStorage.selection.setter(char *a1)
{
  v2 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v63 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v62 - v12;
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = type metadata accessor for AttributedTextSelection;
    v29 = a1;
LABEL_14:
    outlined destroy of AttributedTextSelection.Indices?(v29, v28);
    return;
  }

  v67 = v8;
  v65 = v7;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  v20 = [v18 textStorage];

  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  ObjectType = swift_getObjectType();
  v62[1] = &protocol descriptor for SwiftTextStorage;
  v22 = swift_conformsToProtocol2();
  if (!v22)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  (*(v22 + 16))(ObjectType, v22);

  v64 = a1;
  v23 = AttributedTextSelection.nsRanges(in:removingInvalid:)(v17, 1);
  v24 = *(v15 + 8);
  v24(v17, v14);
  v25 = v23;
  if (*(v23 + 16))
  {
    v26 = *(v23 + 32);
    v27 = *(v25 + 40);

    [Strong setSelectedRange_];
  }

  else
  {
  }

  v30 = type metadata accessor for AttributedTextSelection(0);
  outlined init with copy of AttributedTextSelection.Indices(&v64[*(v30 + 20)], v6, type metadata accessor for AttributedTextSelection.TypingAttributes);
  v31 = v67;
  v32 = v65;
  if ((*(v67 + 48))(v6, 1, v65) == 1)
  {
    outlined destroy of AttributedTextSelection.Indices?(v6, type metadata accessor for AttributedTextSelection.TypingAttributes);
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 textStorage];

      if (v35)
      {
        v36 = swift_getObjectType();
        v37 = swift_conformsToProtocol2();
        if (v37)
        {
          (*(v37 + 16))(v36, v37);

          v39 = v63;
          v38 = v64;
          AttributedTextSelection.indices(in:)(v17, v63);
          v24(v17, v14);
          PlatformTextViewEditorStorage.invalidateTypingAttributes(indices:)(v39);

          outlined destroy of AttributedTextSelection.Indices?(v38, type metadata accessor for AttributedTextSelection);
          v28 = type metadata accessor for AttributedTextSelection.Indices;
          v29 = v39;
          goto LABEL_14;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v40 = *(v31 + 32);
  v40(v13, v6, v32);
  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = v41;
  v43 = [v41 textStorage];

  if (!v43)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = swift_getObjectType();
  v45 = swift_conformsToProtocol2();
  if (!v45)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  (*(v45 + 64))(v13, v44, v45);

  AttributeContainer.filter(inheritedByAddedText:)();
  v46 = *(v67 + 8);
  v47 = v65;
  v67 += 8;
  (v46)(v13, v65);
  v40(v13, v10, v47);
  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v49 = v48;
  v50 = [v48 textStorage];

  if (!v50)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v63 = v46;
  v51 = swift_getObjectType();
  v52 = swift_conformsToProtocol2();
  if (!v52)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v53 = *(*(v52 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = v62 - v57;
  v68 = v50;
  (*(v53 + 56))(v51, v53, v56);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v55 + 8))(v58, AssociatedTypeWitness);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v61 = Strong;
  [Strong setTypingAttributes_];

  outlined destroy of AttributedTextSelection.Indices?(v64, type metadata accessor for AttributedTextSelection);
  (v63)(v13, v65);
}

void PlatformTextViewEditorStorage.invalidateTypingAttributes(indices:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v42 = v3;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v40 = a1;
      v41 = v2;
      v17 = [v15 textStorage];

      if (v17)
      {
        v36 = v7;
        v37 = v6;
        v38 = v14;
        ObjectType = swift_getObjectType();
        v39 = &protocol descriptor for SwiftTextStorage;
        v19 = swift_conformsToProtocol2();
        if (v19)
        {
          v20 = *(*(v19 + 8) + 8);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v35[1] = v35;
          v35[0] = *(AssociatedTypeWitness - 8);
          v22 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          v24 = v35 - v23;
          v43 = v17;
          (*(v20 + 56))(ObjectType, v20, v22);

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            v27 = [v25 textStorage];

            if (v27)
            {
              v28 = swift_getObjectType();
              v29 = swift_conformsToProtocol2();
              if (v29)
              {
                (*(v29 + 16))(v28, v29);

                specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)(v5, v9);
                (*(v42 + 8))(v5, v41);
                AttributeContainer.filter(inheritedByAddedText:)();
                v30 = v37;
                v31 = *(v36 + 8);
                v31(v9, v37);
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                (*(AssociatedConformanceWitness + 32))(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
                v31(v12, v30);
                (*(v35[0] + 8))(v24, AssociatedTypeWitness);
                type metadata accessor for NSAttributedStringKey(0);
                lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                v34 = v38;
                [v38 setTypingAttributes_];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void PlatformTextViewEditorStorage.typingAttributes.getter(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 textStorage];

      if (v6)
      {
        ObjectType = swift_getObjectType();
        v8 = swift_conformsToProtocol2();
        if (v8)
        {
          v9 = *(*(v8 + 8) + 8);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v11 = *(AssociatedTypeWitness - 8);
          v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          v14 = v16 - v13;
          v16[1] = v6;
          (*(v9 + 56))(ObjectType, v9, v12);

          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          UITextView.typingAttributes<A>(for:)(AssociatedTypeWitness, AssociatedConformanceWitness, a1);

          (*(v11 + 8))(v14, AssociatedTypeWitness);
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  AttributeContainer.init()();
}

uint64_t outlined assign with take of AttributedTextSelection.Indices?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributedTextSelection.Indices?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AttributedTextSelection.TypingAttributes(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall PlatformTextViewEditorStorage.commit()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = partial apply for closure #1 in PlatformTextViewEditorStorage.commit();
    *(v4 + 24) = v3;
    v6[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed () -> ();
    v6[3] = &block_descriptor_4;
    v5 = _Block_copy(v6);

    [v2 performEditingTransactionUsingBlock_];

    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void closure #1 in PlatformTextViewEditorStorage.commit()(uint64_t a1)
{
  outlined init with copy of PlatformTextViewEditorStorage(a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = Strong;
  v3 = [Strong textStorage];

  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  outlined destroy of PlatformTextViewEditorStorage(v4);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    [v3 endEditing];

    return;
  }

LABEL_7:
  __break(1u);
}

void type metadata accessor for Range<AttributedString.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>)
  {
    type metadata accessor for RangeSet<AttributedString.Index>.Ranges(255);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BC8]);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined init with copy of AttributedTextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PlatformTextViewEditorStorage(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  return a2;
}

uint64_t outlined destroy of PlatformTextViewEditorStorage(uint64_t a1)
{
  MEMORY[0x18D011290]();
  MEMORY[0x18D011290](a1 + 8);
  return a1;
}

uint64_t outlined destroy of AttributedTextSelection.Indices?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AttributedTextSelection.Indices?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>)
  {
    v2 = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    v4 = type metadata accessor for _RowVisitationContext(a1, &type metadata for TableDataSourceAdaptor, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>);
    }
  }
}

uint64_t EnvironmentValues.allowsWindowActivationEvents.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for TouchEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for TouchEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
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

uint64_t assignWithTake for TouchEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for TouchEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TouchEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent()
{
  result = lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent;
  if (!lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TouchEvent, &type metadata for TouchEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent;
  if (!lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TouchEvent, &type metadata for TouchEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent;
  if (!lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TouchEvent, &type metadata for TouchEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent);
  }

  return result;
}

double protocol witness for EventType.binding.getter in conformance TouchEvent@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void protocol witness for EventType.binding.setter in conformance TouchEvent(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

double protocol witness for EventType.init(_:) in conformance TouchEvent@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for EventType();
  if (swift_dynamicCast())
  {
    v4 = v11[4];
    *(a3 + 64) = v11[3];
    *(a3 + 80) = v4;
    *(a3 + 89) = *(&v11[4] + 9);
    v5 = v11[0];
    *a3 = v10;
    *(a3 + 16) = v5;
    v6 = v11[2];
    *(a3 + 32) = v11[1];
    *(a3 + 48) = v6;
  }

  else
  {
    v10 = 0uLL;
    *&v11[0] = 1;
    memset(v11 + 8, 0, 81);
    v8[4] = v11[3];
    v9[0] = v11[4];
    *(v9 + 9) = *(&v11[4] + 9);
    v8[2] = v11[1];
    v8[3] = v11[2];
    v8[0] = 0uLL;
    v8[1] = v11[0];
    outlined destroy of TouchEvent?(v8);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *&v6 = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0;
  }

  return *&v6;
}

uint64_t protocol witness for HitTestableEventType.hitTestLocation.getter in conformance TouchEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();

  return MEMORY[0x1EEDE1378](a1, a2, v4);
}

uint64_t protocol witness for HitTestableEventType.hitTestRadius.getter in conformance TouchEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();

  return MEMORY[0x1EEDE1370](a1, a2, v4);
}

unint64_t type metadata accessor for EventType()
{
  result = lazy cache variable for type metadata for EventType;
  if (!lazy cache variable for type metadata for EventType)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventType);
  }

  return result;
}

uint64_t outlined destroy of TouchEvent?(uint64_t a1)
{
  type metadata accessor for TouchEvent?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for TouchEvent?()
{
  if (!lazy cache variable for type metadata for TouchEvent?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TouchEvent?);
    }
  }
}

BOOL specialized static TouchEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 40);
    v6 = *(a1 + 24);
    v7 = *(a1 + 56);
    v8.f64[0] = *(a1 + 72);
    v9 = *(a1 + 80);
    v11 = *(a1 + 88);
    v10 = *(a1 + 96);
    v12 = *(a1 + 104);
    v13 = *(a2 + 16);
    v14 = *(a2 + 40);
    v15 = *(a2 + 24);
    v16 = *(a2 + 56);
    v17.f64[0] = *(a2 + 72);
    v18 = *(a2 + 96);
    if (v4)
    {
      if (v13)
      {
        result = 0;
        v8.f64[1] = v11;
        v17.f64[1] = *(a2 + 88);
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v6, v15), vceqq_f64(v5, v14)), vuzp1q_s32(vceqq_f64(v7, v16), vceqq_f64(v8, v17))))) & 1) == 0 || v10 != v18 || v4 != v13)
        {
          return result;
        }

LABEL_13:
        if (v9 == *(a2 + 80))
        {
          return v12 == *(a2 + 104);
        }

        return result;
      }

LABEL_10:

      return 0;
    }

    if (v13)
    {
      goto LABEL_10;
    }

    result = 0;
    v8.f64[1] = v11;
    v17.f64[1] = *(a2 + 88);
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v6, v15), vceqq_f64(v5, v14)), vuzp1q_s32(vceqq_f64(v7, v16), vceqq_f64(v8, v17))))) & 1) != 0 && v10 == v18)
    {
      goto LABEL_13;
    }
  }

  return result;
}

double outlined copy of ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if ((a9 & 0xC00000) == 0x400000)
  {
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, a7);
  }

  return result;
}

uint64_t destroy for ScrollViewBehavior(uint64_t a1)
{
  outlined consume of ScrollViewBehavior.Phase(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64) | (*(a1 + 66) << 16));
}

uint64_t outlined consume of ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if ((a9 & 0xC00000) == 0x400000)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a6, a7);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 66);
  v14 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v5, v6, v7, v8, v9, v10, v11, v14 | (v13 << 16));
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 66) = v13;
  *(a1 + 64) = v14;
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for ScrollViewBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v22 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v23 = *(a2 + 66);
  v11 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v4, v5, v6, v7, v8, v9, v10, v11 | (v23 << 16));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64) | (*(a1 + 66) << 16);
  *a1 = v22;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 66) = v23;
  outlined consume of ScrollViewBehavior.Phase(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithTake for ScrollViewBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 66);
  v5 = *(a2 + 64);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64) | (*(a1 + 66) << 16);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = v5;
  *(a1 + 66) = v4;
  outlined consume of ScrollViewBehavior.Phase(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _ScrollLayout.init(_:)@<D0>(_OWORD *a2@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  _ScrollLayout.init(contentOffset:size:visibleRect:)();

  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void ScrollViewBehavior.reloadContainers(node:)(uint64_t a1)
{
  LOBYTE(v2) = a1;

  v39 = v1;
  *(v1 + 72) = MEMORY[0x1E69E7CC0];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      swift_beginAccess();
      if (*(v4 + 297) != 1)
      {
        break;
      }

      swift_beginAccess();
      v6 = *(v4 + 152);
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = (v6 + 56);
        do
        {
          v9 = *(v8 - 3);
          v10 = *(v8 - 2);
          v11 = *(v8 - 1);
          v12 = *v8;
          swift_unownedRetainStrong();
          swift_beginAccess();
          v13 = *(v9 + 148);
          swift_unownedRetain();

          if (v13 == v12)
          {
            swift_unownedRetainStrong();
            v14 = *(v9 + 336);
            v15 = *(v9 + 344);
            swift_beginAccess();
            CGSize.inset(by:)();
            v17 = v14 - v16;
            CGSize.inset(by:)();
            if (v17 < 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = v17;
            }

            if (v15 - v18 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v15 - v18;
            }

            v21 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v20, *&v19));
            v2 &= 1u;
            *&v45[0] = v10;
            *(&v45[0] + 1) = v11;
            v45[1] = v21;
            v46 = v2;
            ScrollViewNode.commitScrollTransaction(_:value:)(v45, v21.x, v21.y);
          }

          v8 += 8;
          swift_unownedRelease();
          --v7;
        }

        while (v7);
      }

      else
      {
      }

      *&v44[15] = *(v4 + 143);
      v22 = *(v4 + 128);
      v43 = *(v4 + 112);
      *v44 = v22;
      v23 = *(v4 + 96);
      v42[0] = *(v4 + 80);
      v42[1] = v23;
      if (((v44[18] << 16) & 0xC00000) == 0x400000)
      {
        v24 = *(&v43 + 1);
        if (*(&v43 + 1))
        {
          v25 = *v44;
          v26 = swift_allocObject();
          *(v26 + 16) = v24;
          *(v26 + 24) = v25;
          v27 = swift_allocObject();
          *(v27 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
          *(v27 + 24) = v26;
          v28 = swift_allocObject();
          *(v28 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
          *(v28 + 24) = v27;
          v29 = swift_allocObject();
          *(v29 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
          *(v29 + 24) = v28;
          *(v29 + 32) = 0;
          outlined init with copy of ScrollViewBehavior.Phase(v42, v40);
          outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v24, v25);

          static Update.enqueueAction(reason:_:)();

          outlined destroy of ScrollViewBehavior.Phase(v42);
        }
      }

      v30 = *(v4 + 128);
      v40[2] = *(v4 + 112);
      v41[0] = v30;
      *(v41 + 15) = *(v4 + 143);
      v31 = *(v4 + 96);
      v40[0] = *(v4 + 80);
      v40[1] = v31;
      *(v4 + 80) = 0u;
      *(v4 + 96) = 0u;
      *(v4 + 112) = 0u;
      *(v4 + 128) = 0u;
      *(v4 + 146) = 0x80;
      *(v4 + 144) = 0;
      ++*(v4 + 148);
      *(v4 + 152) = MEMORY[0x1E69E7CC0];
      swift_endAccess();
      outlined destroy of ScrollViewBehavior.Phase(v40);

      swift_beginAccess();
      v32 = *(v4 + 64);
      v33 = *(v4 + 72);
      v34 = *(v4 + 148);
      swift_unownedRetain();
      swift_unownedRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v36 = *(v5 + 2);
      v35 = *(v5 + 3);
      if (v36 >= v35 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v5);
      }

      *(v5 + 2) = v36 + 1;
      v37 = &v5[32 * v36];
      *(v37 + 4) = v4;
      *(v37 + 5) = v32;
      *(v37 + 6) = v33;
      *(v37 + 14) = v34;
      *(v39 + 72) = v5;
      v38 = swift_weakLoadStrong();

      swift_unownedRelease();

      v4 = v38;
      if (!v38)
      {
        return;
      }
    }
  }
}

CGFloat ScrollViewBehavior.overflowContentOffset(_:node:)(uint64_t a1, double a2, double a3)
{
  v5 = v3;
  v9 = *(a1 + 336);
  v10 = *(a1 + 344);
  swift_beginAccess();
  CGSize.inset(by:)();
  v12 = v9 - v11;
  CGSize.inset(by:)();
  v14 = v10 - v13;
  if (v12 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12;
  }

  if (v14 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v16, *&v15));
  v18 = v17.x - a2;
  v19 = v17.y - a3;
  v20 = *(v5 + 66);
  if (v20 <= 0x3F && (v20 & 1) == 0)
  {
    CGSize.inset(by:)();
    v18 = specialized static ScrollViewSupport.addRubberBandingToResidue(_:range:)(v18, v19, v21);
    v19 = v22;
  }

  if (v15 <= 0.0 && (*(a1 + 249) & 1) == 0)
  {
    v18 = 0.0;
  }

  if (v16 <= 0.0 && !*(a1 + 248))
  {
    v19 = 0.0;
  }

  v23 = *(v5 + 72);
  v24 = *(v23 + 2);
  if (v24)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_51:
      v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
    }

    v25 = 0;
    *(v5 + 72) = v23;
    v26 = v23 + 32;
    do
    {
      if (v24 == v25)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v25 >= *(v23 + 2))
      {
        goto LABEL_49;
      }

      v37 = *v26;
      v38 = *(v26 + 1);
      v39 = *(v26 + 2);
      v40 = *(v26 + 6);
      swift_unownedRetainStrong();
      swift_beginAccess();
      v41 = *(v37 + 148);
      swift_unownedRetain();

      if (v40 != v41)
      {
        v42 = *(v5 + 66);
        if (v42 > 0x3F || (v42 & 1) != 0)
        {
          swift_unownedRelease();
          return v17.x - v18;
        }

        swift_unownedRetainStrong();
        swift_beginAccess();
        v43 = *(v37 + 148);

        swift_unownedRetainStrong();
        swift_beginAccess();
        v38 = *(v37 + 64);
        v39 = *(v37 + 72);

        swift_unownedRetain();
        if (v25 >= *(v23 + 2))
        {
          goto LABEL_50;
        }

        *v26 = v37;
        *(v26 + 1) = v38;
        *(v26 + 2) = v39;
        *(v26 + 6) = v43;
        swift_unownedRelease();
        *(v5 + 72) = v23;
      }

      swift_unownedRetainStrong();

      swift_unownedRetainStrong();
      v44 = *(v37 + 336);
      v45 = *(v37 + 344);
      swift_beginAccess();
      CGSize.inset(by:)();
      v47 = v44 - v46;
      CGSize.inset(by:)();
      v49 = v48;

      if (v47 < 0.0)
      {
        v50 = 0.0;
      }

      else
      {
        v50 = v47;
      }

      if (v45 - v49 < 0.0)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = v45 - v49;
      }

      v58 = v38;
      v52 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v51, *&v50));
      swift_unownedRetainStrong();
      swift_beginAccess();
      v53 = *(v37 + 64);
      v54 = *(v37 + 72);

      if (v53 == v52.x && v54 == v52.y)
      {
        swift_unownedRelease();
      }

      else
      {
        swift_unownedRetainStrong();
        v27 = v18;
        v57 = v19;
        v29 = *(v37 + 336);
        v28 = *(v37 + 344);
        swift_beginAccess();
        CGSize.inset(by:)();
        v31 = v29 - v30;
        v18 = v27;
        CGSize.inset(by:)();
        v33 = v28 - v32;
        v19 = v57;
        if (v31 < 0.0)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v31;
        }

        if (v33 < 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = v33;
        }

        v36 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v35, *&v34));
        v4 &= 1u;
        v59[0] = v52;
        v59[1] = v36;
        v60 = v4;
        ScrollViewNode.commitScrollTransaction(_:value:)(v59, v36.x, v36.y);
        swift_unownedRelease();
      }

      ++v25;
      v18 = v18 - (v58 - v52.x);
      v19 = v19 - (v39 - v52.y);
      v26 += 32;
    }

    while (v24 != v25);
  }

  return v17.x - v18;
}

void ScrollViewBehavior.dispatchPhase(_:node:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v9 = *a1;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  if (*(a1 + 48) > 1u)
  {
    if (*(a1 + 48) != 2)
    {
LABEL_10:
      v61 = 0uLL;
      *&v62 = 0;
      *(&v62 + 1) = 0x3FFFFFFFCLL;
      v63 = 0uLL;
      goto LABEL_11;
    }

    v61 = *a1;
    *&v62 = v11;
    *(&v62 + 1) = v10;
    v63 = v12;
LABEL_11:
    ScrollViewBehavior.stopDragging(value:node:)(&v61, a2);
    return;
  }

  if (!*(a1 + 48))
  {
    if (v10 >> 2 == 0xFFFFFFFF)
    {
      v13 = *(v7 + 66);
      if (v13 > 0x3F)
      {
        return;
      }

      if (v13)
      {
        return;
      }

      swift_beginAccess();
      if (*(a2 + 296) != 1)
      {
        return;
      }

      goto LABEL_10;
    }

    v30 = *(v7 + 66);
    if (v30 >> 6)
    {
      return;
    }

    v51 = *a1;
    v54 = *(a1 + 32);
    v48 = *(v7 + 16);
    v49 = *v7;
    v31 = *(v7 + 64);
    swift_beginAccess();
    if (*(a2 + 296) != 1)
    {
      v41 = v31 & 0x1000101 | (v30 << 16) & 0x1010101;
      v42 = *(v7 + 48);
      v63 = *(v7 + 32);
      *v64 = v42;
      *&v64[15] = *(v7 + 63);
      v43 = *(v7 + 16);
      v61 = *v7;
      v62 = v43;
      outlined destroy of ScrollViewBehavior.Phase(&v61);
      v44.i64[0] = vdupq_laneq_s64(v51, 1).u64[0];
      *v7 = v49;
      *(v7 + 16) = v48;
      *&v44.i64[1] = v11;
      v45 = vdup_n_s32(v10 >= 0);
      v46.i64[0] = v45.u32[0];
      v46.i64[1] = v45.u32[1];
      v47 = vcltzq_s64(vshlq_n_s64(v46, 0x3FuLL));
      *(v7 + 32) = vbslq_s8(v47, v44, v51);
      *(v7 + 48) = vandq_s8(v54, v47);
      *(v7 + 66) = BYTE2(v41);
      *(v7 + 64) = v41;
      ++*(v7 + 68);
      return;
    }

    v61 = v51;
    *&v62 = v11;
    *(&v62 + 1) = v10;
    v63 = v54;
    goto LABEL_11;
  }

  v14 = *(v7 + 48);
  v59 = *(v7 + 32);
  *v60 = v14;
  *&v60[15] = *(v7 + 63);
  v15 = *(v7 + 16);
  v57 = *v7;
  v58 = v15;
  v16 = *(&v59 + 1);
  if (v60[18] >> 6)
  {
    v50 = v9;
    if (v60[18] >> 6 == 1 && *(&v59 + 1))
    {
      v17 = *v60;
      v18 = swift_allocObject();
      *(v18 + 16) = *(&v59 + 1);
      *(v18 + 24) = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v19 + 24) = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
      *(v20 + 24) = v19;
      LOBYTE(v55[0]) = 17;
      v21 = swift_allocObject();
      *(v21 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v21 + 24) = v20;
      *(v21 + 32) = 0;
      outlined init with copy of ScrollViewBehavior.Phase(&v57, &v61);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v16, v17);

      static Update.enqueueAction(reason:_:)();

      outlined destroy of ScrollViewBehavior.Phase(&v57);
    }

    ScrollViewBehavior.reloadContainers(node:)(a2);
    swift_beginAccess();
    v22 = ScrollViewNode.removeRubberBanding(_:)(specialized static ScrollViewSupport.removeRubberBandingFromResidue(_:range:), *(a2 + 64), *(a2 + 72));
    v24 = 0;
    if (v10 < 0)
    {
      v25 = v22 - *v50.i64;
    }

    else
    {
      v25 = v22;
    }

    if (v10 < 0)
    {
      v26 = v23 - *&v50.i64[1];
    }

    else
    {
      v26 = v23;
    }

    v53 = *(a2 + 64);
    if (v10 < 0)
    {
      v27 = *v50.i64;
    }

    else
    {
      v27 = *&v50.i64[1];
    }

    if (v10 < 0)
    {
      v28 = *&v50.i64[1];
    }

    else
    {
      v28 = v11;
    }

    v29 = 0uLL;
  }

  else
  {
    v24 = *&v60[16] | (v60[18] << 16);
    v53 = v58;
    if (v10 < 0)
    {
      v27 = *v9.i64;
    }

    else
    {
      v27 = *&v9.i64[1];
    }

    if (v10 < 0)
    {
      v28 = *&v9.i64[1];
    }

    else
    {
      v28 = v11;
    }

    v25 = *v57.i64 - (v27 - *&v59);
    v26 = *&v57.i64[1] - (v28 - *(&v59 + 1));
    v32 = vdup_n_s32(v10 >= 0);
    v33.i64[0] = v32.u32[0];
    v33.i64[1] = v32.u32[1];
    v29 = vandq_s8(v12, vcltzq_s64(vshlq_n_s64(v33, 0x3FuLL)));
  }

  v52 = v29;
  if (v27 != 0.0)
  {
    v24 |= 0x100u;
  }

  v34 = BYTE2(v24) & 1;
  v35 = v24 & 0x101 | (v28 != 0.0);
  v36 = *(v7 + 48);
  v55[2] = *(v7 + 32);
  *v56 = v36;
  *&v56[15] = *(v7 + 63);
  v37 = *(v7 + 16);
  v55[0] = *v7;
  v55[1] = v37;
  outlined destroy of ScrollViewBehavior.Phase(v55);
  *v7 = v25;
  *(v7 + 8) = v26;
  *(v7 + 16) = v53;
  *(v7 + 32) = v27;
  *(v7 + 40) = v28;
  *(v7 + 48) = v52;
  *(v7 + 66) = v34;
  *(v7 + 64) = v35;
  ++*(v7 + 68);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = ScrollViewBehavior.overflowContentOffset(_:node:)(a2, v25, v26);
    v26 = v38;
  }

  ScrollViewNode.bindingSafeOffset(_:)();
  *v61.i64 = v25;
  *&v61.i64[1] = v26;
  *&v62 = v39;
  *(&v62 + 1) = v40;
  *&v64[8] = 0;
  ScrollViewNode.commitScrollTransaction(_:value:)(&v61, v39, v40);
}

void ScrollViewBehavior.stopDragging(value:node:)(uint64_t result, uint64_t a2)
{
  if (!(*(v2 + 66) >> 6))
  {
    v4 = *(result + 24);
    v5 = *(result + 32);
    v6 = *(result + 40);
    v7 = *(v2 + 2);
    v8 = *(v2 + 3);
    v40 = *(v2 + 5);
    v41 = *(v2 + 4);
    v9 = *(v2 + 32) | (*(v2 + 66) << 16);
    v38 = *(v2 + 7);
    v39 = *(v2 + 6);
    if (v4 < 0)
    {
      v5 = 0.0;
      v6 = 0.0;
    }

    if (v4 >> 2 == 0xFFFFFFFF)
    {
      v5 = *(v2 + 6);
    }

    v37 = v5;
    if (v4 >> 2 == 0xFFFFFFFF)
    {
      v10 = *(v2 + 7);
    }

    else
    {
      v10 = v6;
    }

    v42 = *(v2 + 1);
    v43 = *v2;
    v36 = *v2;
    v11 = *(a2 + 368);
    swift_beginAccess();

    v12 = CGSize.inset(by:)();
    v11(v12, v36, v42, v7, v8, v37, v10, v13, v14);
    v16 = v15;

    if (v16)
    {
      v17 = v2[2];
      v18 = *v2;
      v51 = v2[1];
      v52 = v17;
      v19 = v2[2];
      v20 = v2[4];
      v53[0] = v2[3];
      v53[1] = v20;
      v21 = *v2;
      v47 = v19;
      v48 = v53[0];
      v49 = v2[4];
      v50 = v21;
      v45 = v18;
      v46 = v51;
      swift_beginAccess();
      ScrollViewBehavior.estimatedDeceleration(from:node:)(a2);
      v56 = v47;
      v57 = v53[0];
      v58 = v49;
      v54 = v45;
      v55 = v51;
      outlined init with copy of ScrollViewBehavior(&v50, v44);
      outlined destroy of ScrollViewBehavior(&v54);
      y = 0.0;
      x = 0.0;
    }

    else
    {
      v24 = *(a2 + 336);
      v25 = *(a2 + 344);
      CGSize.inset(by:)();
      v27 = v24 - v26;
      CGSize.inset(by:)();
      if (v27 < 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v27;
      }

      if (v25 - v28 < 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v25 - v28;
      }

      v31 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v30, *&v29));
      x = v31.x;
      y = v31.y;
    }

    v32 = v2[3];
    v52 = v2[2];
    v53[0] = v32;
    *(v53 + 15) = *(v2 + 63);
    v33 = v2[1];
    v50 = *v2;
    v51 = v33;
    outlined destroy of ScrollViewBehavior.Phase(&v50);
    *v2 = v43;
    *(v2 + 1) = v42;
    *(v2 + 2) = v7;
    *(v2 + 3) = v8;
    *(v2 + 4) = v41;
    *(v2 + 5) = v40;
    *(v2 + 6) = v39;
    *(v2 + 7) = v38;
    *(v2 + 66) = (v9 & 0x1000101 | 0x10000u) >> 16;
    *(v2 + 32) = v9 & 0x101;
    ScrollViewNode.bindingSafeOffset(_:)();
    LOBYTE(v45) = v16 & 1;
    v44[0] = 0;
    *&v54 = x;
    *(&v54 + 1) = y;
    *&v55 = v16 & 1;
    *(&v55 + 1) = v34;
    *&v56 = v35;
    *(&v56 + 1) = -v37;
    *&v57 = -v10;
    v58 = 0uLL;
    *(&v57 + 1) = 0x8000000000000000;
    ScrollViewNode.commitScrollTransaction(_:value:)(&v54, v34, v35);
  }
}

void ScrollViewBehavior.estimatedDeceleration(from:node:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (*(v1 + 66) >> 6)
  {
    if (*(v1 + 66) >> 6 != 1 || (*(v1 + 16) & 1) == 0)
    {
      return;
    }

    if (*(v2 + 16) < 2uLL)
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 48);
    v4 = *(v2 + 136);
  }

  else
  {
    *&v4 = v2 ^ 0x8000000000000000;
    v3 = -*(v1 + 48);
  }

  swift_beginAccess();
  v6 = *(a1 + 240);
  v7 = fabs(v3);
  if (v7 <= 0.00001)
  {
    v9 = fabs(v4);
    if (v9 <= 0.00001)
    {
      return;
    }

    v8 = 1.0 - v6;
  }

  else
  {
    v8 = 1.0 - v6;
    copysign((-2.5 / v7 + 1.0) * (v7 * 0.001 * v6) / (1.0 - v6), v3);
    v9 = fabs(v4);
    if (v9 <= 0.00001)
    {
      return;
    }
  }

  copysign(v6 * (v9 * 0.001) * (-2.5 / v9 + 1.0) / v8, v4);
}

uint64_t ScrollViewBehavior.updateDeceleration(node:target:velocity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v17 = a9;
  v18 = v9[4].u16[0] | (v9[4].u8[2] << 16);
  if ((v18 & 0xC00000) == 0x800000)
  {
    v19 = vorrq_s8(vorrq_s8(*v9, v9[2]), vorrq_s8(v9[1], v9[3]));
    v20 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    if (v18 == 0x800000 && *&v20 == 0)
    {
      if ((a4 & 1) != 0 || ((v10 = *&a2, v53 = a4, swift_beginAccess(), a4 = v53, *(a1 + 64) == *&a2) ? (v54 = *(a1 + 72) == *&a3) : (v54 = 0), v54))
      {
        if ((a7 & 1) != 0 || ((a5 | a6) & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          if (a8)
          {
            v55 = swift_allocObject();
            *(v55 + 16) = a8;
            *(v55 + 24) = a9;
            v56 = swift_allocObject();
            *(v56 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
            *(v56 + 24) = v55;
            v57 = swift_allocObject();
            *(v57 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
            *(v57 + 24) = v56;
            v80.i8[0] = 17;
            v58 = swift_allocObject();
            *(v58 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
            *(v58 + 24) = v57;
            *(v58 + 32) = 1;
            outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a8, a9);

            static Update.enqueueAction(reason:_:)();
          }

          return 0;
        }
      }
    }
  }

  v67 = a4;
  v22 = *&v11->i64[1];
  v23 = v11[3].i64[0];
  v24 = v11[3].i64[1];
  v25 = v11[4].u8[2];
  if (!(v25 >> 6))
  {
    v70 = a9;
    *&v35 = v23 ^ 0x8000000000000000;
    *&v36 = v24 ^ 0x8000000000000000;
    v37 = ScrollViewNode.removeRubberBanding(_:)(specialized static ScrollViewSupport.addRubberBandingToResidue(_:range:), *v11->i64, v22);
    v10 = v38;
    goto LABEL_13;
  }

  if (v25 >> 6 != 1)
  {
    v70 = a9;
    swift_beginAccess();
    v37 = *(a1 + 64);
    v10 = *(a1 + 72);
    ScrollViewBehavior.reloadContainers(node:)(a1);
    v35 = 0.0;
    v36 = 0.0;
LABEL_13:
    swift_beginAccess();
    v39 = (1.0 - pow(*(a1 + 240), 8.33333333)) / 0.00833333333;
    if (v39 > 1.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 1.0;
    }

    if (a7)
    {
      v41 = v35;
    }

    else
    {
      v41 = *&a5;
    }

    if (a7)
    {
      v42 = v36;
    }

    else
    {
      v42 = *&a6;
    }

    v80.i64[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
    v24 = v80.i64[0];
    v44 = *(v80.i64[0] + 16);
    v43 = *(v80.i64[0] + 24);
    v45 = v43 >> 1;
    v27 = v44 + 1;
    if (v43 >> 1 <= v44)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
      v24 = v80.i64[0];
      v43 = *(v80.i64[0] + 24);
      v45 = v43 >> 1;
    }

    *(v24 + 16) = v27;
    v46 = v24 + 88 * v44;
    *(v46 + 32) = 0;
    *(v46 + 40) = v37;
    *(v46 + 48) = v41;
    *(v46 + 56) = v40;
    *(v46 + 64) = -(v40 * v41);
    v47 = xmmword_18CD72950;
    *(v46 + 72) = xmmword_18CD72950;
    *(v46 + 88) = 0;
    *(v46 + 96) = 0;
    *(v46 + 104) = 0x4004000000000000;
    *(v46 + 112) = 0;
    a5 = v44 + 2;
    if (v45 <= v27)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 2, 1);
      v47 = xmmword_18CD72950;
      v24 = v80.i64[0];
    }

    v30 = 0;
    v28 = 0;
    v48 = 0;
    *(v24 + 16) = *&a5;
    v49 = v24 + 88 * v27;
    *(v49 + 32) = 0;
    *(v49 + 40) = v10;
    *(v49 + 48) = v42;
    *(v49 + 56) = v40;
    *(v49 + 64) = v42 * -v40;
    *(v49 + 72) = v47;
    *(v49 + 88) = 0;
    *(v49 + 96) = 0;
    *(v49 + 104) = 0x4004000000000000;
    *(v49 + 112) = 0;
    LOBYTE(v27) = 1;
    LOBYTE(v84[0]) = 1;
    LOBYTE(v73[0]) = 1;
    v97 = 1;
    v17 = v70;
    if (a8)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v26 = v11[4].u16[0] | (v11[4].u8[2] << 16);
  v27 = v11[2].u64[0];
  v28 = v11[2].i64[1];
  v29 = v11[1].u64[0];
  v30 = v11[1].i64[1];
  v65 = v29 >> 8;
  v66 = v27 >> 8;
  v80.i64[0] = v11->i64[0];
  *&v80.i64[1] = v22;
  v81.i64[0] = v29;
  v81.i64[1] = v30;
  v82.i64[0] = v27;
  v82.i64[1] = v28;
  v31 = v23;
  *v83 = v23;
  *&v83[8] = v24;
  v83[18] = BYTE2(v26) & 0x3F;
  *&v83[16] = v26;
  outlined init with copy of ScrollViewBehavior.DecelerationState(&v80, v84);
  if (a8)
  {
    if (v28)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      *(v32 + 24) = v31;
      v69 = v27;
      v27 = v30;
      v33 = swift_allocObject();
      *(v33 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v33 + 24) = v32;
      *&a5 = COERCE_DOUBLE(swift_allocObject());
      *(a5 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
      *(a5 + 24) = v33;
      v80.i8[0] = 17;
      v34 = swift_allocObject();
      *(v34 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v34 + 24) = *&a5;
      *(v34 + 32) = 0;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a8, a9);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v28, v31);

      static Update.enqueueAction(reason:_:)();
      v30 = v27;
      LOBYTE(v27) = v69;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v28, v31);
LABEL_28:
      v28 = a8;
      v48 = v17;
      goto LABEL_29;
    }

LABEL_27:

    goto LABEL_28;
  }

  v48 = v31;
LABEL_29:
  v97 = v67 & 1;
  if ((v67 & 1) == 0)
  {
    if (*(v24 + 16) >= 2uLL)
    {
      v17 = v48;
      v10 = *(v24 + 128);
      a5 = *(v24 + 136);
      if (*(v24 + 40) == *&a2 && (*(v24 + 48) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          goto LABEL_73;
        }

        v52 = *(v24 + 16);
        if (v52)
        {
          goto LABEL_55;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v52 = *(v24 + 16);
        if (!v52)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_73:
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
            v24 = result;
            v52 = *(result + 16);
            if (!v52)
            {
              goto LABEL_74;
            }

LABEL_55:
            v51 = v17;
            *(v24 + 88) = 0;
            *(v24 + 112) = 0;
LABEL_56:
            if (v10 != *&a3 || (a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              if (v52 < 2)
              {
                goto LABEL_71;
              }

              if ((*(v24 + 200) & 1) == 0)
              {
                *(v24 + 176) = 0x4059000000000000;
                *(v24 + 184) = *&a3;
                *(v24 + 144) = 0x4031000000000000;
              }

              goto LABEL_60;
            }

            if (v52 >= 2)
            {
              goto LABEL_59;
            }
          }
        }

LABEL_39:
        v51 = v17;
        if ((*(v24 + 112) & 1) == 0)
        {
          *(v24 + 88) = 0x4059000000000000;
          *(v24 + 96) = *&a2;
          *(v24 + 56) = 0x4031000000000000;
        }

        goto LABEL_56;
      }

LABEL_69:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      v52 = *(v24 + 16);
      if (!v52)
      {
        goto LABEL_70;
      }

      goto LABEL_39;
    }

    goto LABEL_67;
  }

  v17 = v48;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v50 = *(v24 + 16);
    if (v50)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

  v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  v50 = *(v24 + 16);
  if (!v50)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_32:
  *(v24 + 88) = 0;
  *(v24 + 112) = 0;
  if (v50 == 1)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v51 = v17;
LABEL_59:
  *(v24 + 176) = 0;
  *(v24 + 200) = 0;
LABEL_60:
  v73[0] = a2;
  v73[1] = a3;
  v68 = v97;
  LOBYTE(v74) = v97;
  HIBYTE(v74) = BYTE6(v65);
  *(&v74 + 5) = WORD2(v65);
  *(&v74 + 1) = v65;
  v75 = v30;
  LOBYTE(v76) = v27;
  HIBYTE(v76) = BYTE6(v66);
  *(&v76 + 5) = WORD2(v66);
  *(&v76 + 1) = v66;
  v77 = v28;
  v78 = v51;
  v79 = v24;
  v60 = v74;
  v61 = v76;
  v62 = v11[3];
  v82 = v11[2];
  *v83 = v62;
  *&v83[15] = *(&v11[3].i32[3] + 3);
  v63 = v11[1];
  v80 = *v11;
  v81 = v63;
  v64 = v51;
  outlined init with copy of ScrollViewBehavior.DecelerationState(v73, v84);
  outlined destroy of ScrollViewBehavior.Phase(&v80);
  v11->i64[0] = a2;
  v11->i64[1] = a3;
  v11[1].i64[0] = v60;
  v11[1].i64[1] = v30;
  v11[2].i64[0] = v61;
  v11[2].i64[1] = v28;
  v11[3].i64[0] = v64;
  v11[3].i64[1] = v24;
  v11[4].i8[2] = 64;
  v11[4].i16[0] = 0;
  ++v11[4].i32[1];
  v84[0] = a2;
  v84[1] = a3;
  v85 = v68;
  v88 = BYTE6(v65);
  v87 = WORD2(v65);
  v86 = v65;
  v89 = v30;
  v90 = v27;
  v93 = BYTE6(v66);
  v92 = WORD2(v66);
  v91 = v66;
  v94 = v28;
  v95 = v64;
  v96 = v24;
  outlined destroy of ScrollViewBehavior.DecelerationState(v84);
  return 1;
}

CGFloat ScrollViewNode.removeRubberBanding(_:)(double (*a1)(uint64_t, double, double, double, double), double a2, double a3)
{
  v7 = *(v3 + 336);
  v8 = *(v3 + 344);
  swift_beginAccess();
  CGSize.inset(by:)();
  v10 = v7 - v9;
  CGSize.inset(by:)();
  if (v10 < 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v10;
  }

  if (v8 - v11 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8 - v11;
  }

  v14 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v13, *&v12));
  v15 = CGSize.inset(by:)();
  return v14.x - a1(v15, v14.x - a2, v14.y - a3, v16, v17);
}

void ScrollViewBehavior.iterateDeceleration(node:time:offset:estimatedTarget:)(double *a1, double *a2, CGPoint *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v8 = *(v6 + 32) | (*(v6 + 66) << 16);
  if ((v8 & 0xC00000) != 0x400000)
  {
    return;
  }

  v10 = *a2;
  v11 = *(v7 + 1);
  v12 = *(v7 + 16);
  v75 = *(v7 + 17) | ((*(v7 + 21) | (*(v7 + 23) << 16)) << 32);
  *&v76 = *v7;
  v13 = *(v7 + 3);
  v14 = *(v7 + 4);
  v15 = *(v7 + 5);
  v17 = *(v7 + 6);
  v16 = *(v7 + 7);
  v110 = v14;
  v73 = v14;
  *(&v76 + 1) = v11;
  if (v14)
  {
    v65 = v10 + -0.0166666667;
    v110 = 0;
    v70 = 0.0166666667;
  }

  else
  {
    v70 = v10 - v13;
    v65 = v13;
  }

  v20 = a1[42];
  v67 = a1[43];
  swift_beginAccess();
  v98 = v76;
  v99 = v12;
  v102 = BYTE6(v75);
  v101 = WORD2(v75);
  v100 = v75;
  v103 = v13;
  v104 = v73;
  v105 = v15;
  v66 = v15;
  v106 = v17;
  v107 = v16;
  v109 = BYTE2(v8) & 0x3F;
  v108 = v8;
  outlined init with copy of ScrollViewBehavior.DecelerationState(&v98, &v111);
  CGSize.inset(by:)();
  v22 = v20 - v21;
  CGSize.inset(by:)();
  if (v22 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v22;
  }

  if (v67 - v23 < 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v67 - v23;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_45;
  }

  while (1)
  {
    if (*(v16 + 2))
    {
      v26 = ScalarDeceleration.iter(_:minValue:maxValue:)(0, 0, *&v24, 0, v70);
      if (*(v16 + 2) >= 2uLL)
      {
        break;
      }
    }

    __break(1u);
LABEL_45:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
  }

  if ((v26 & ScalarDeceleration.iter(_:minValue:maxValue:)(0, 0, *&v25, 0, v70) & 1) == 0)
  {
    v42 = v12;
    if ((v12 & 1) != 0 && (a6 & 1) == 0)
    {
      if (*(v16 + 2) < 2uLL)
      {
LABEL_47:
        __break(1u);
        return;
      }

      v43 = fabs(*(v16 + 6));
      v44 = fabs(*(v16 + 17));
      if (v43 < 50.0 && (v16[112] & 1) == 0)
      {
        *(v16 + 12) = a4;
        *(v16 + 11) = (v43 / -50.0 + 1.0) * 30.0;
        *(v16 + 7) = 0x4024000000000000;
      }

      if (v44 < 50.0 && (v16[200] & 1) == 0)
      {
        *(v16 + 23) = a5;
        *(v16 + 22) = (v44 / -50.0 + 1.0) * 30.0;
        *(v16 + 18) = 0x4024000000000000;
      }
    }

    v45 = v7[2];
    v46 = v7[3];
    v47 = *v7;
    v112 = v7[1];
    v113 = v45;
    *v114 = v46;
    v77 = v76;
    LOBYTE(v78) = v12;
    BYTE7(v78) = BYTE6(v75);
    *(&v78 + 5) = WORD2(v75);
    *(&v78 + 1) = v75;
    *(&v78 + 1) = v65;
    v72 = v110;
    LOBYTE(v79) = v110;
    v69 = HIBYTE(v73);
    BYTE7(v79) = HIBYTE(v73);
    v63 = v73 >> 40;
    *(&v79 + 5) = HIDWORD(v73) >> 8;
    v74 = v73 >> 8;
    *(&v79 + 1) = v74;
    *(&v79 + 1) = v15;
    *&v80[0] = v17;
    *(&v80[0] + 1) = v16;
    v48 = v78;
    v49 = v79;
    *&v114[15] = *(v7 + 63);
    v111 = v47;
    v61 = v42;
    outlined init with copy of ScrollViewBehavior.DecelerationState(&v77, &v94);
    outlined destroy of ScrollViewBehavior.Phase(&v111);
    *v7 = v76;
    *(v7 + 2) = v48;
    *(v7 + 3) = v65;
    *(v7 + 4) = v49;
    *(v7 + 5) = v15;
    *(v7 + 6) = v17;
    *(v7 + 7) = v16;
    *(v7 + 66) = 64;
    *(v7 + 32) = 0;
    ++*(v7 + 17);
    if (*(v16 + 2) >= 2uLL)
    {
      a3->x = ScrollViewBehavior.overflowContentOffset(_:node:)(a1, *(v16 + 5), *(v16 + 16));
      a3->y = v50;
      v94 = v76;
      LOBYTE(v95) = v61;
      BYTE7(v95) = BYTE6(v75);
      *(&v95 + 5) = WORD2(v75);
      *(&v95 + 1) = v75;
      *(&v95 + 1) = v65;
      LOBYTE(v96) = v72;
      BYTE7(v96) = v69;
      *(&v96 + 5) = v63;
      *(&v96 + 1) = v74;
      *(&v96 + 1) = v15;
      *v97 = v17;
      *&v97[8] = v16;
      outlined destroy of ScrollViewBehavior.DecelerationState(&v94);
      return;
    }

    __break(1u);
    goto LABEL_47;
  }

  v68 = v17;
  if ((v12 & 1) == 0)
  {
    *a3 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v25, *&v24));
  }

  v71 = *(v7 + 9);
  v27 = *(v71 + 16);
  if (v27)
  {
    v28 = (v71 + 56);
    do
    {
      v29 = *(v28 - 3);
      v30 = *(v28 - 2);
      v31 = *(v28 - 1);
      v32 = *v28;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v33 = *(v29 + 148);
      swift_unownedRetain();

      if (v33 == v32)
      {
        swift_unownedRetainStrong();
        v34 = *(v29 + 336);
        v35 = *(v29 + 344);
        swift_beginAccess();
        CGSize.inset(by:)();
        v37 = v34 - v36;
        CGSize.inset(by:)();
        if (v37 < 0.0)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = v37;
        }

        if (v35 - v38 < 0.0)
        {
          v40 = 0.0;
        }

        else
        {
          v40 = v35 - v38;
        }

        v41 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v40, *&v39));
        a5 &= 1u;
        *&v111 = v30;
        *(&v111 + 1) = v31;
        v112 = v41;
        *&v114[8] = a5;
        ScrollViewNode.commitScrollTransaction(_:value:)(&v111, v41.x, v41.y);
      }

      v28 += 8;
      swift_unownedRelease();
      --v27;
    }

    while (v27);
  }

  *&v97[15] = *(v7 + 63);
  v51 = v7[3];
  v96 = v7[2];
  *v97 = v51;
  v52 = v7[1];
  v94 = *v7;
  v95 = v52;
  if (((v97[18] << 16) & 0xC00000) == 0x400000)
  {
    v53 = *(&v96 + 1);
    if (*(&v96 + 1))
    {
      v54 = *v97;
      v55 = swift_allocObject();
      *(v55 + 16) = *(&v96 + 1);
      *(v55 + 24) = v54;
      v56 = swift_allocObject();
      *(v56 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      *(v56 + 24) = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
      *(v57 + 24) = v56;
      LOBYTE(v81) = 17;
      v58 = swift_allocObject();
      *(v58 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      *(v58 + 24) = v57;
      *(v58 + 32) = 1;
      outlined init with copy of ScrollViewBehavior.Phase(&v94, &v77);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v53, v54);

      static Update.enqueueAction(reason:_:)();

      outlined destroy of ScrollViewBehavior.Phase(&v94);
    }
  }

  v59 = v7[3];
  v79 = v7[2];
  v80[0] = v59;
  *(v80 + 15) = *(v7 + 63);
  v60 = v7[1];
  v77 = *v7;
  v78 = v60;
  outlined destroy of ScrollViewBehavior.Phase(&v77);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *(v7 + 66) = 0x80;
  *(v7 + 32) = 0;
  ++*(v7 + 17);

  *(v7 + 9) = MEMORY[0x1E69E7CC0];
  v81 = v76;
  v82 = v12;
  v85 = BYTE6(v75);
  v84 = WORD2(v75);
  v83 = v75;
  v86 = v65;
  v87 = v110;
  v90 = HIBYTE(v73);
  v89 = HIDWORD(v73) >> 8;
  v88 = v73 >> 8;
  v91 = v66;
  v92 = v68;
  v93 = v16;
  outlined destroy of ScrollViewBehavior.DecelerationState(&v81);
}

uint64_t partial apply for specialized closure #1 in ScrollViewNode.dispatchAction<A>(_:_:)()
{
  return specialized closure #1 in ScrollViewNode.dispatchAction<A>(_:_:)(*(v0 + 16), *(v0 + 24), (v0 + 32));
}

{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t destroy for ScrollViewBehavior.DecelerationState(uint64_t a1)
{
  if (*(a1 + 40))
  {
  }
}

uint64_t initializeWithCopy for ScrollViewBehavior.DecelerationState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for ScrollViewBehavior.DecelerationState(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  v5 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  v6 = (a1 + 40);
  v8 = (a2 + 40);
  v7 = *(a2 + 5);
  if (!*(a1 + 40))
  {
    if (v7)
    {
      v10 = *(a2 + 6);
      *(a1 + 40) = v7;
      *(a1 + 48) = v10;

      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v8;
    goto LABEL_8;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 6);
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;

LABEL_8:
  *(a1 + 56) = *(a2 + 7);

  return a1;
}

uint64_t assignWithTake for ScrollViewBehavior.DecelerationState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = (a1 + 40);
  v6 = (a2 + 40);
  v5 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v5)
    {
      v8 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v8;
      goto LABEL_8;
    }

LABEL_7:
    *v4 = *v6;
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v7 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;

LABEL_8:
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t initializeWithCopy for ScrollViewBehavior.ContainerInfo(uint64_t a1, uint64_t a2, __n128 a3)
{
  *a1 = swift_unownedRetain();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t *assignWithCopy for ScrollViewBehavior.ContainerInfo(uint64_t *a1, uint64_t a2, __n128 a3)
{
  *a1 = swift_unownedRetain();
  swift_unownedRelease();
  a1[1] = *(a2 + 8);
  a1[2] = *(a2 + 16);
  *(a1 + 6) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for ScrollViewBehavior.ContainerInfo(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unownedRelease();
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 6) = *(a2 + 6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollViewBehavior.ContainerInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 28))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.ContainerInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 66);
  v13 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v4, v5, v6, v7, v8, v9, v10, v13 | (v11 << 16));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 66) = v11;
  *(a1 + 64) = v13;
  return a1;
}

uint64_t assignWithCopy for ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v22 = *(a2 + 66);
  v11 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v4, v5, v6, v7, v8, v9, v10, v11 | (v22 << 16));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64) | (*(a1 + 66) << 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 66) = v22;
  outlined consume of ScrollViewBehavior.Phase(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

uint64_t assignWithTake for ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 66);
  v4 = *(a2 + 64);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64) | (*(a1 + 66) << 16);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = v4;
  *(a1 + 66) = v3;
  outlined consume of ScrollViewBehavior.Phase(v5, v7, v6, v8, v9, v10, v11, v12, v13);
  return a1;
}