uint64_t sub_21B3112C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(char *, char *, uint64_t, uint64_t)@<X7>, Swift::Int *a8@<X8>, void (*a9)(char *, char *, uint64_t, uint64_t))
{
  v57 = a7;
  v56 = a6;
  v9 = a5;
  v71 = a1;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v55 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v46 - v17;
  v59 = sub_21B34B474();
  v48 = *(v59 - 8);
  v18 = MEMORY[0x28223BE20](v59);
  v70 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = *(v14 + 56);
  v58 = &v46 - v24;
  v68 = v23;
  v69 = v14 + 56;
  v23();
  v77 = a2;
  v78 = a3;
  v80 = a3;
  v76 = a4;
  v79 = a4;
  v75 = type metadata accessor for Column(0, v9, v25, v26);
  result = Column.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = a8;
    if (result)
    {
      v73 = 0;
      v28 = 0;
      v52 = a9;
      v64 = (v14 + 48);
      v65 = (v48 + 16);
      v51 = v14 + 32;
      v63 = v14 + 16;
      v50 = v14 + 8;
      v29 = (v48 + 8);
      v62 = (v48 + 32);
      v72 = 1;
      v30 = v59;
      v31 = v58;
      v66 = v22;
      v53 = a2;
      v67 = v14;
      v74 = result;
      v49 = (v48 + 8);
      do
      {
        v77 = a2;
        v78 = v80;
        v79 = v76;
        if (!Column.isNil(at:)(v28))
        {
          (*v65)(v22, v31, v30);
          if ((*v64)(v22, 1, v9) == 1)
          {
            v32 = *v29;
            (*v29)(v22, v30);
            v33 = v70;
            (*(v14 + 16))(v70, v71 + *(v14 + 72) * v28, v9);
            v32(v31, v30);
            v72 = 0;
            v73 = v28;
          }

          else
          {
            v34 = v54;
            (*(v14 + 32))(v54, v22, v9);
            v35 = *(v14 + 16);
            v60 = v71 + *(v14 + 72) * v28;
            v61 = v35;
            v36 = v9;
            v37 = v55;
            (v35)(v55);
            v38 = v56;
            v39 = v57(v37, v34, v36, v56);
            v40 = *(v67 + 8);
            v40(v37, v36);
            v41 = v73;
            if (v39)
            {
              v41 = v28;
            }

            v73 = v41;
            v72 &= v39 ^ 1;
            v61(v37, v60, v36);
            v33 = v70;
            v42 = v38;
            a2 = v53;
            v30 = v59;
            v52(v34, v37, v36, v42);
            v43 = v37;
            v9 = v36;
            v40(v43, v36);
            v44 = v34;
            v31 = v58;
            v40(v44, v36);
            v29 = v49;
            v14 = v67;
            (*v49)(v31, v30);
          }

          (v68)(v33, 0, 1, v9);
          (*v62)(v31, v33, v30);
          v22 = v66;
        }

        ++v28;
      }

      while (v74 != v28);
    }

    else
    {
      v73 = 0;
      v72 = 1;
      v30 = v59;
      v31 = v58;
    }

    result = (*(v48 + 8))(v31, v30);
    v45 = v47;
    *v47 = v73;
    *(v45 + 8) = v72 & 1;
  }

  return result;
}

uint64_t sub_21B311878@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(char *, char *, uint64_t, uint64_t)@<X5>, char *a6@<X8>)
{
  v44 = a5;
  v43 = a4;
  v59 = a1;
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v58 = v40 - v15;
  v16 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v42 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = v40 - v19;
  v56 = *(v16 + 56);
  v57 = v16 + 56;
  v56(a6, 1, 1, a3);
  v22 = sub_21B2FB104(*(a2 + 3), *(a2 + 4), *(a2 + 40));
  v23 = *(v22 + 16);
  if (v23)
  {
    v53 = v13;
    v54 = v9;
    v55 = a6;
    v24 = type metadata accessor for DiscontiguousColumnSlice(0, a3, v20, v21);
    v48 = (v16 + 48);
    v49 = (v10 + 16);
    v40[2] = v16 + 32;
    v47 = v16 + 16;
    v40[1] = v16 + 8;
    v46 = (v10 + 8);
    v45 = (v10 + 32);
    v25 = 32;
    v41 = a2;
    v51 = v22;
    v52 = v16;
    v50 = v24;
    v26 = v55;
    do
    {
      v31 = *(v22 + v25);
      v32 = a2[1];
      v60 = *a2;
      v61[0] = v32;
      *(v61 + 9) = *(a2 + 25);
      if (!DiscontiguousColumnSlice.isNil(at:)(v31))
      {
        v33 = v58;
        v34 = v54;
        (*v49)(v58, v26, v54);
        if ((*v48)(v33, 1, a3) == 1)
        {
          v27 = v33;
          v28 = *v46;
          (*v46)(v27, v34);
          v29 = v59 + *(v52 + 72) * v31;
          v30 = v53;
          (*(v52 + 16))(v53, v29, a3);
          v28(v26, v34);
        }

        else
        {
          v35 = a3;
          v36 = v52;
          (*(v52 + 32))(v62, v33, v35);
          v37 = v42;
          (*(v36 + 16))(v42, v59 + *(v36 + 72) * v31, v35);
          v30 = v53;
          v44(v62, v37, v35, v43);
          v38 = *(v36 + 8);
          a3 = v35;
          a2 = v41;
          v38(v37, a3);
          v38(v62, a3);
          (*v46)(v26, v34);
        }

        v56(v30, 0, 1, a3);
        (*v45)(v26, v30, v34);
        v22 = v51;
      }

      v25 += 8;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_21B311D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(char *, char *, uint64_t, uint64_t)@<X5>, void (*a6)(char *, char *, uint64_t, uint64_t)@<X6>, Swift::Int *a7@<X8>)
{
  v57 = a6;
  v56 = a5;
  v70 = a1;
  v71 = a4;
  v7 = a3;
  v52 = a7;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v51 - v12;
  v77 = sub_21B34B474();
  v13 = *(v77 - 8);
  v14 = MEMORY[0x28223BE20](v77);
  v68 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v73 = v9;
  v21 = 1;
  v66 = *(v9 + 56);
  v67 = v9 + 56;
  v66(&v51 - v19, 1, 1, v7);
  v22 = *(a2 + 24);
  v23 = *(a2 + 32);
  v76 = a2;
  v24 = sub_21B2FB104(v22, v23, *(a2 + 40));
  v27 = *(v24 + 16);
  v51 = v24;
  if (v27)
  {
    v28 = (v24 + 32);
    v29 = type metadata accessor for DiscontiguousColumnSlice(0, v7, v25, v26);
    v74 = 0;
    v75 = v29;
    v63 = (v13 + 16);
    v62 = (v73 + 48);
    v54 = v73 + 32;
    v72 = v73 + 16;
    v53 = v73 + 8;
    v61 = (v13 + 8);
    v60 = (v13 + 32);
    v64 = v18;
    v65 = v13;
    do
    {
      v30 = v20;
      v31 = v28 + 1;
      v32 = *v28;
      v80 = v31;
      v33 = v76[1];
      v78 = *v76;
      *v79 = v33;
      *&v79[9] = *(v76 + 25);
      if (!DiscontiguousColumnSlice.isNil(at:)(v32))
      {
        v34 = v64;
        (*v63)(v64, v20, v77);
        if ((*v62)(v34, 1, v7) == 1)
        {
          v35 = *v61;
          v36 = v34;
          v37 = v77;
          (*v61)(v36, v77);
          v38 = v68;
          (*(v73 + 16))(v68, v70 + *(v73 + 72) * v32, v7);
          v35(v20, v37);
          v21 = 0;
          v74 = v32;
          v39 = v38;
        }

        else
        {
          v40 = v73;
          v41 = v69;
          (*(v73 + 32))(v69, v34, v7);
          v58 = v70 + *(v40 + 72) * v32;
          v59 = *(v40 + 16);
          v42 = v7;
          v43 = v55;
          v59(v55);
          v44 = v56(v43, v41, v42, v71);
          v45 = *(v73 + 8);
          v45(v43, v42);
          v46 = v74;
          if (v44)
          {
            v46 = v32;
          }

          v74 = v46;
          v21 &= v44 ^ 1;
          (v59)(v43, v58, v42);
          v39 = v68;
          v47 = v69;
          v57(v69, v43, v42, v71);
          v48 = v43;
          v7 = v42;
          v20 = v30;
          v45(v48, v7);
          v45(v47, v7);
          (*v61)(v30, v77);
        }

        v66(v39, 0, 1, v7);
        (*v60)(v20, v39, v77);
        v13 = v65;
      }

      --v27;
      v28 = v80;
    }

    while (v27);
  }

  else
  {
    v74 = 0;
  }

  result = (*(v13 + 8))(v20, v77);
  v50 = v52;
  *v52 = v74;
  *(v50 + 8) = v21 & 1;
  return result;
}

uint64_t sub_21B31230C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(_BYTE *, _BYTE *, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v49 = a5;
  v48 = a4;
  v59 = a1;
  v9 = sub_21B34B474();
  v55 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v57 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v47 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v46 = &v40[-v17];
  v60 = v18;
  v19 = *(v18 + 56);
  v58 = a6;
  v56 = v18 + 56;
  v19(a6, 1, 1, a3);
  v20 = a2[1];
  v63 = *a2;
  v64 = v20;
  v65 = *(a2 + 4);
  type metadata accessor for Column(255, a3, v21, v22);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v27 = v61;
  v26 = v62;
  if (v61 == v62)
  {
    return result;
  }

  if (v62 < v61)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v61 >= v62)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v66 = type metadata accessor for ColumnSlice(0, a3, v24, v25);
  v28 = v55;
  v52 = (v60 + 48);
  v53 = (v55 + 16);
  v43 = v60 + 32;
  v51 = v60 + 16;
  v42 = v60 + 8;
  v29 = (v55 + 8);
  v50 = (v55 + 32);
  v55 = v14;
  v45 = a2;
  v44 = v19;
  v54 = v26;
  v41 = (v28 + 8);
  do
  {
    v33 = a2[1];
    v63 = *a2;
    v64 = v33;
    v65 = *(a2 + 4);
    result = ColumnSlice.isNil(at:)(v27);
    if ((result & 1) == 0)
    {
      v34 = v58;
      (*v53)(v14, v58, v9);
      if ((*v52)(v14, 1, a3) == 1)
      {
        v30 = *v29;
        (*v29)(v14, v9);
        v31 = v9;
        v32 = v57;
        (*(v60 + 16))(v57, v59 + *(v60 + 72) * v27, a3);
        v30(v34, v31);
      }

      else
      {
        v35 = v60;
        v36 = v46;
        (*(v60 + 32))(v46, v14, a3);
        v37 = v47;
        (*(v35 + 16))(v47, v59 + *(v35 + 72) * v27, a3);
        v31 = v9;
        v32 = v57;
        v49(v36, v37, a3, v48);
        v38 = *(v35 + 8);
        a2 = v45;
        v38(v37, a3);
        v39 = v36;
        v19 = v44;
        v38(v39, a3);
        v29 = v41;
        (*v41)(v34, v31);
      }

      v19(v32, 0, 1, a3);
      result = (*v50)(v34, v32, v31);
      v9 = v31;
      v26 = v54;
      v14 = v55;
    }

    ++v27;
  }

  while (v26 != v27);
  return result;
}

void *sub_21B312824@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(char *, char *, uint64_t, uint64_t)@<X5>, void (*a6)(char *, char *, uint64_t, uint64_t)@<X6>, Swift::Int *a7@<X8>)
{
  v59 = a6;
  v58 = a5;
  v57 = a4;
  v7 = a3;
  v73 = a1;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v48 - v13;
  v14 = sub_21B34B474();
  v50 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v60 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v72 = &v48 - v18;
  MEMORY[0x28223BE20](v17);
  v19 = v10;
  v20 = *(v10 + 56);
  v75 = 1;
  v22 = &v48 - v21;
  v70 = v20;
  v71 = v10 + 56;
  v20();
  v23 = a2[1];
  v79 = *a2;
  v80 = v23;
  v81 = *(a2 + 4);
  type metadata accessor for Column(255, v7, v24, v25);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v30 = v77;
  v29 = v78;
  v49 = a7;
  if (v77 == v78)
  {
    v74 = 0;
LABEL_3:
    result = (*(v50 + 8))(v22, v14);
    v31 = v49;
    *v49 = v74;
    *(v31 + 8) = v75 & 1;
    return result;
  }

  if (v78 < v77)
  {
    __break(1u);
  }

  else if (v77 < v78)
  {
    v76 = type metadata accessor for ColumnSlice(0, v7, v27, v28);
    v74 = 0;
    v67 = (v19 + 48);
    v68 = (v50 + 16);
    v52 = v19 + 32;
    v66 = v19 + 16;
    v51 = v19 + 8;
    v64 = (v50 + 32);
    v65 = (v50 + 8);
    v75 = 1;
    v32 = v60;
    v54 = a2;
    v53 = v14;
    v69 = v19;
    v82 = v29;
    v63 = v22;
    do
    {
      v35 = a2[1];
      v79 = *a2;
      v80 = v35;
      v81 = *(a2 + 4);
      if (!ColumnSlice.isNil(at:)(v30))
      {
        v36 = v72;
        (*v68)(v72, v22, v14);
        if ((*v67)(v36, 1, v7) == 1)
        {
          v33 = *v65;
          (*v65)(v36, v14);
          (*(v19 + 16))(v32, v73 + *(v19 + 72) * v30, v7);
          v34 = v63;
          v33(v63, v14);
          v75 = 0;
          v74 = v30;
          v22 = v34;
        }

        else
        {
          v37 = v36;
          v38 = v19;
          v39 = *(v19 + 32);
          v40 = v55;
          v39(v55, v37, v7);
          v61 = v73 + *(v38 + 72) * v30;
          v62 = *(v38 + 16);
          v41 = v7;
          v42 = v56;
          v62(v56);
          v43 = v57;
          v44 = v58(v42, v40, v41, v57);
          v45 = *(v69 + 8);
          v45(v42, v41);
          v46 = v74;
          if (v44)
          {
            v46 = v30;
          }

          v74 = v46;
          v75 &= v44 ^ 1;
          (v62)(v42, v61, v41);
          v32 = v60;
          a2 = v54;
          v59(v40, v42, v41, v43);
          v47 = v42;
          v7 = v41;
          v45(v47, v41);
          v45(v40, v41);
          v19 = v69;
          v14 = v53;
          v22 = v63;
          (*v65)(v63, v53);
        }

        (v70)(v32, 0, 1, v7);
        (*v64)(v22, v32, v14);
      }

      ++v30;
    }

    while (v82 != v30);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B312E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[4] = v13;
  v22 = v14;
  sub_21B34B864();
  v26 = a3;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  type metadata accessor for Column(0, a6, v15, v16);
  result = Column.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    if (result)
    {
      v19 = 0;
      v20[2] = v10 + 8;
      v20[3] = v10 + 16;
      do
      {
        v23 = v26;
        v24 = a4;
        v25 = a5;
        result = Column.isNil(at:)(v19);
        if ((result & 1) == 0)
        {
          (*(v10 + 16))(v12, v21 + *(v10 + 72) * v19, a6);
          sub_21B34B854();
          result = (*(v10 + 8))(v12, a6);
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }

  return result;
}

uint64_t sub_21B313008(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v23 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = v9;
  v24 = v10;
  sub_21B34B864();
  v11 = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v14 = *(v11 + 16);
  if (v14)
  {
    v15 = v11;
    v27 = type metadata accessor for DiscontiguousColumnSlice(0, a4, v12, v13);
    v16 = v15;
    v22[1] = v6 + 8;
    v22[2] = v6 + 16;
    v17 = 32;
    do
    {
      v18 = v16;
      v19 = *(v16 + v17);
      v20 = a3[1];
      v25 = *a3;
      v26[0] = v20;
      *(v26 + 9) = *(a3 + 25);
      if (!DiscontiguousColumnSlice.isNil(at:)(v19))
      {
        (*(v6 + 16))(v8, v23 + *(v6 + 72) * v19, a4);
        sub_21B34B854();
        (*(v6 + 8))(v8, a4);
      }

      v17 += 8;
      --v14;
      v16 = v18;
    }

    while (v14);
  }
}

uint64_t ColumnSlice<A>.sum()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[1];
  v17[0] = *v4;
  v17[1] = v6;
  v18 = *(v4 + 4);
  v7 = v4[1];
  v14 = *v4;
  v15 = v7;
  v16 = *(v4 + 4);
  v8 = *(a1 + 16);
  type metadata accessor for Column(255, v8, a3, a4);
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v13, v9);
  v10 = v13[2];

  v12[2] = v8;
  v12[3] = a2;
  v12[4] = v17;
  sub_21B328CA8(sub_21B314050, v12, v10, v8);
}

uint64_t sub_21B3132E0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v21 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[2] = v9;
  v27 = v10;
  sub_21B34B864();
  v11 = a3[1];
  v24 = *a3;
  v25 = v11;
  v26 = *(a3 + 4);
  type metadata accessor for Column(255, a4, v12, v13);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v17 = v22;
  v18 = v23;
  if (v22 == v23)
  {
    return result;
  }

  if (v23 < v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v22 >= v23)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  type metadata accessor for ColumnSlice(0, a4, v15, v16);
  v20[1] = v6 + 16;
  do
  {
    v19 = a3[1];
    v24 = *a3;
    v25 = v19;
    v26 = *(a3 + 4);
    result = ColumnSlice.isNil(at:)(v17);
    if ((result & 1) == 0)
    {
      (*(v6 + 16))(v8, v21 + *(v6 + 72) * v17, a4);
      sub_21B34B854();
      result = (*(v6 + 8))(v8, a4);
    }

    ++v17;
  }

  while (v18 != v17);
  return result;
}

uint64_t Column<A>.mean()(uint64_t a1, uint64_t a2)
{
  return sub_21B3134FC(a1, a2, sub_21B314070);
}

{
  return sub_21B314B6C(a1, a2, &qword_27CD7E110, &qword_21B351988, sub_21B314ED4);
}

uint64_t sub_21B3134FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v10 = *(a1 + 16);
  v11 = a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  sub_21B34B474();
  return sub_21B328CA8(a3, &v9, v7, v10);
}

uint64_t sub_21B313574@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = result;
    v26 = a8;
    v27 = a7;
    v25 = a6;
    if (a2)
    {
      type metadata accessor for Column(0, a6, a3, a4);
      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      v28 = a5;
      do
      {
        v29[0] = a3;
        v29[1] = a4;
        v29[2] = a5;
        result = Column.isNil(at:)(v12);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v30 = v13;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v13 + 16) + 1, 1);
            v13 = v30;
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            result = sub_21B254034((v14 > 1), v15 + 1, 1);
            v13 = v30;
          }

          *(v13 + 16) = v15 + 1;
          *(v13 + 8 * v15 + 32) = v12;
          a5 = v28;
        }

        ++v12;
      }

      while (a2 != v12);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v29[0] = v13;
    MEMORY[0x28223BE20](result);
    v16 = v27;
    v23[2] = v25;
    v23[3] = v27;
    v23[4] = v24;
    v23[5] = a2;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v18 = sub_21B26F384();
    v20 = sub_21B2FCC28(sub_21B26F44C, v23, v17, v25, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v19);

    v29[0] = v20;
    v21 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B310088(v29, v21, WitnessTable, v16, v26);
  }

  return result;
}

uint64_t Column<A>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v9 = *(a2 + 16);
  v10 = a3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = a1;
  sub_21B34B474();
  return sub_21B328CA8(sub_21B31409C, &v8, v6, v9);
}

{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v9 = *(a2 + 16);
  v10 = a3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  sub_21B328CA8(sub_21B3151DC, &v8, v6, v9);
  return v15;
}

uint64_t sub_21B313828@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    v27 = a9;
    v28 = a6;
    v29 = a8;
    v26 = a7;
    if (a2)
    {
      type metadata accessor for Column(0, a7, a3, a4);
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v30 = a5;
      do
      {
        v31[0] = a3;
        v31[1] = a4;
        v31[2] = a5;
        result = Column.isNil(at:)(v13);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v32 = v14;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v14 + 16) + 1, 1);
            v14 = v32;
          }

          v16 = *(v14 + 16);
          v15 = *(v14 + 24);
          if (v16 >= v15 >> 1)
          {
            result = sub_21B254034((v15 > 1), v16 + 1, 1);
            v14 = v32;
          }

          *(v14 + 16) = v16 + 1;
          *(v14 + 8 * v16 + 32) = v13;
          a5 = v30;
        }

        ++v13;
      }

      while (a2 != v13);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v31[0] = v14;
    MEMORY[0x28223BE20](result);
    v17 = v29;
    v24[2] = v26;
    v24[3] = v29;
    v24[4] = v25;
    v24[5] = a2;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v19 = sub_21B26F384();
    v21 = sub_21B2FCC28(sub_21B26F44C, v24, v18, v26, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

    v31[0] = v21;
    v22 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B3106A0(v31, v28, v22, WitnessTable, v17, v27);
  }

  return result;
}

uint64_t sub_21B313A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a2;
  v31 = a6;
  v32 = a5;
  v29 = a1;
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v11 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = result + 32;
    v15 = MEMORY[0x277D84F90];
    v33 = result + 32;
    v34 = a4;
    while (v13 < *(v11 + 16))
    {
      v18 = *(v14 + 8 * v13);
      v19 = a3[1];
      v35 = *a3;
      v36[0] = v19;
      *(v36 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, a4, v9, v10);
      result = DiscontiguousColumnSlice.isNil(at:)(v18);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v37 = v15;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v15 + 16) + 1, 1);
          v15 = v37;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v18;
        v14 = v33;
        a4 = v34;
      }

      if (v12 == ++v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_12:

    *&v35 = v15;
    MEMORY[0x28223BE20](v20);
    v21 = v32;
    v28[2] = a4;
    v28[3] = v32;
    v28[4] = v29;
    v28[5] = v30;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v23 = sub_21B26F384();
    v25 = sub_21B2FCC28(sub_21B26F44C, v28, v22, a4, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v24);

    *&v35 = v25;
    v26 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B310088(&v35, v26, WitnessTable, v21, v31);
  }

  return result;
}

uint64_t DiscontiguousColumnSlice<A>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v12 = *v3;
  v13[0] = v4;
  *(v13 + 9) = *(v3 + 25);
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = a3;
  v10 = &v12;
  v11 = a1;
  sub_21B34B474();
  return sub_21B328CA8(sub_21B3143A8, &v7, v5, v8);
}

{
  v4 = v3[1];
  v13 = *v3;
  v14[0] = v4;
  *(v14 + 9) = *(v3 + 25);
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = a3;
  v10 = &v13;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  sub_21B328CA8(sub_21B3158E8, &v7, v5, v8);
  return v12;
}

uint64_t sub_21B314150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a2;
  v33 = a4;
  v34 = a6;
  v30 = a1;
  v32 = a7;
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v15 = result + 32;
    v16 = MEMORY[0x277D84F90];
    v35 = result + 32;
    v36 = a5;
    while (v14 < *(v12 + 16))
    {
      v19 = *(v15 + 8 * v14);
      v20 = a3[1];
      v37 = *a3;
      v38[0] = v20;
      *(v38 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, a5, v10, v11);
      result = DiscontiguousColumnSlice.isNil(at:)(v19);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v16;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v16 + 16) + 1, 1);
          v16 = v39;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_21B254034((v17 > 1), v18 + 1, 1);
          v16 = v39;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v19;
        v15 = v35;
        a5 = v36;
      }

      if (v13 == ++v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_12:

    *&v37 = v16;
    MEMORY[0x28223BE20](v21);
    v22 = v34;
    v29[2] = a5;
    v29[3] = v34;
    v29[4] = v30;
    v29[5] = v31;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v24 = sub_21B26F384();
    v26 = sub_21B2FCC28(sub_21B26F44C, v29, v23, a5, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);

    *&v37 = v26;
    v27 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B3106A0(&v37, v33, v27, WitnessTable, v22, v32);
  }

  return result;
}

uint64_t sub_21B3143E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = v4[1];
  v18[0] = *v4;
  v18[1] = v7;
  v19 = *(v4 + 4);
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = *(v4 + 4);
  v9 = *(a1 + 16);
  type metadata accessor for Column(255, v9, a3, a4);
  swift_getWitnessTable();
  v10 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v14, v10);
  v11 = v14[2];

  v13[2] = v9;
  v13[3] = a2;
  v13[4] = v18;
  sub_21B34B474();
  sub_21B328CA8(a3, v13, v11, v9);
}

uint64_t sub_21B3144D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a1;
  v11 = a3[1];
  v33 = *a3;
  v34 = v11;
  v35 = *(a3 + 4);
  type metadata accessor for Column(255, a4, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v15 = v31;
  v16 = v32;
  v30 = a6;
  v29 = a2;
  if (v31 == v32)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_3:
    *&v36[0] = v17;
    MEMORY[0x28223BE20](result);
    v27[2] = a4;
    v27[3] = a5;
    v27[4] = v28;
    v27[5] = v29;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v19 = sub_21B26F384();
    v21 = sub_21B2FCC28(sub_21B26F44C, v27, v18, a4, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

    *&v36[0] = v21;
    v22 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B310088(v36, v22, WitnessTable, a5, v30);
  }

  else
  {
    if (v32 >= v31)
    {
      v17 = MEMORY[0x277D84F90];
      while (v16 != v15)
      {
        v26 = a3[1];
        v36[0] = *a3;
        v36[1] = v26;
        v37 = *(a3 + 4);
        type metadata accessor for ColumnSlice(0, a4, v13, v14);
        result = ColumnSlice.isNil(at:)(v15);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v38 = v17;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v17 + 16) + 1, 1);
            v17 = v38;
          }

          v25 = *(v17 + 16);
          v24 = *(v17 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_21B254034((v24 > 1), v25 + 1, 1);
            v17 = v38;
          }

          *(v17 + 16) = v25 + 1;
          *(v17 + 8 * v25 + 32) = v15;
        }

        if (v16 == ++v15)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t ColumnSlice<A>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[1];
  v18[0] = *v4;
  v18[1] = v7;
  v19 = *(v4 + 4);
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = *(v4 + 4);
  v9 = *(a2 + 16);
  type metadata accessor for Column(255, v9, a3, a4);
  swift_getWitnessTable();
  v10 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v14, v10);
  v11 = v14[2];

  v13[2] = v9;
  v13[3] = a3;
  v13[4] = v18;
  v13[5] = a1;
  sub_21B34B474();
  sub_21B328CA8(sub_21B314B24, v13, v11, v9);
}

{
  v7 = v4[1];
  v19[0] = *v4;
  v19[1] = v7;
  v20 = *(v4 + 4);
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = *(v4 + 4);
  v9 = *(a2 + 16);
  type metadata accessor for Column(255, v9, a3, a4);
  swift_getWitnessTable();
  v10 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v14, v10);
  v11 = v14[2];

  v13[2] = v9;
  v13[3] = a3;
  v13[4] = v19;
  v13[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  sub_21B328CA8(sub_21B31615C, v13, v11, v9);

  return v18;
}

uint64_t sub_21B314890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a2;
  v28 = a1;
  v30 = a7;
  v11 = a3[1];
  v34 = *a3;
  v35 = v11;
  v36 = *(a3 + 4);
  type metadata accessor for Column(255, a5, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v15 = v32;
  v16 = v33;
  v31 = a4;
  if (v32 == v33)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_3:
    *&v37[0] = v17;
    MEMORY[0x28223BE20](result);
    v27[2] = a5;
    v27[3] = a6;
    v27[4] = v28;
    v27[5] = v29;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v19 = sub_21B26F384();
    v21 = sub_21B2FCC28(sub_21B26F36C, v27, v18, a5, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

    *&v37[0] = v21;
    v22 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B3106A0(v37, v31, v22, WitnessTable, a6, v30);
  }

  else
  {
    if (v33 >= v32)
    {
      v17 = MEMORY[0x277D84F90];
      while (v16 != v15)
      {
        v26 = a3[1];
        v37[0] = *a3;
        v37[1] = v26;
        v38 = *(a3 + 4);
        type metadata accessor for ColumnSlice(0, a5, v13, v14);
        result = ColumnSlice.isNil(at:)(v15);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v39 = v17;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v17 + 16) + 1, 1);
            v17 = v39;
          }

          v25 = *(v17 + 16);
          v24 = *(v17 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_21B254034((v24 > 1), v25 + 1, 1);
            v17 = v39;
          }

          *(v17 + 16) = v25 + 1;
          *(v17 + 8 * v25 + 32) = v15;
        }

        if (v16 == ++v15)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B314B6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v12 = *(a1 + 16);
  v13 = a2;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21B328CA8(a5, &v11, v9, v12);
  return v17;
}

void *sub_21B314BE8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = a6;
    v10 = MEMORY[0x277D84F90];
    if (a2)
    {
      type metadata accessor for Column(0, a6, a3, a4);
      v14 = 0;
      v36 = a5;
      do
      {
        v39 = a3;
        v40 = a4;
        v41 = a5;
        if (!Column.isNil(at:)(v14))
        {
          v42 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21B254034(0, *(v10 + 16) + 1, 1);
            v10 = v42;
          }

          v16 = *(v10 + 16);
          v15 = *(v10 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_21B254034((v15 > 1), v16 + 1, 1);
            v10 = v42;
          }

          *(v10 + 16) = v16 + 1;
          *(v10 + 8 * v16 + 32) = v14;
          a5 = v36;
          v8 = a6;
        }

        ++v14;
      }

      while (a2 != v14);
    }

    v17 = *(v10 + 16);
    if (v17)
    {
      v39 = MEMORY[0x277D84F90];
      v18 = sub_21B2542A8(0, v17, 0);
      v19 = 0;
      v20 = v39;
      do
      {
        if (v19 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v38 = *(v10 + 8 * v19 + 32);
        v18 = sub_21B31617C(&v38, v8, &v42);
        v21 = v42;
        v39 = v20;
        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_21B2542A8((v22 > 1), v23 + 1, 1);
          v8 = a6;
          v20 = v39;
        }

        ++v19;
        *(v20 + 16) = v23 + 1;
        *(v20 + 8 * v23 + 32) = v21;
      }

      while (v17 != v19);

      v24 = *(v20 + 16);
      if (!v24)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
      v24 = *(MEMORY[0x277D84F90] + 16);
      if (!v24)
      {
LABEL_21:

        goto LABEL_28;
      }
    }

    if (v24 == 1)
    {
      v25 = 0;
      v26 = 0.0;
      v27 = 0.0;
    }

    else
    {
      v25 = v24 & 0x7FFFFFFFFFFFFFFELL;
      v28 = (v20 + 40);
      v26 = 0.0;
      v29 = v24 & 0x7FFFFFFFFFFFFFFELL;
      v27 = 0.0;
      do
      {
        v26 = v26 + 1.0 + 1.0;
        v27 = v27 + *(v28 - 1) + *v28;
        v28 += 2;
        v29 -= 2;
      }

      while (v29);
      if (v24 == v25)
      {
LABEL_27:

        if (v26 != 0.0)
        {
          v33 = 0;
          v34 = v27 / v26;
          goto LABEL_30;
        }

LABEL_28:
        v33 = 1;
        v34 = 0.0;
LABEL_30:
        *a8 = v34;
        *(a8 + 8) = v33;
        return v18;
      }
    }

    v30 = v24 - v25;
    v31 = (v20 + 8 * v25 + 32);
    do
    {
      v32 = *v31++;
      v27 = v27 + v32;
      v26 = v26 + 1.0;
      --v30;
    }

    while (v30);
    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return v18;
}

void *sub_21B314F88@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return v18;
  }

  v10 = MEMORY[0x277D84F90];
  if (a2)
  {
    type metadata accessor for Column(0, a7, a3, a4);
    v14 = 0;
    v31 = a5;
    do
    {
      v34 = a3;
      v35 = a4;
      v36 = a5;
      if (!Column.isNil(at:)(v14))
      {
        v33 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21B254034(0, *(v10 + 16) + 1, 1);
          v10 = v33;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21B254034((v15 > 1), v16 + 1, 1);
          v10 = v33;
        }

        *(v10 + 16) = v16 + 1;
        *(v10 + 8 * v16 + 32) = v14;
        a5 = v31;
      }

      ++v14;
    }

    while (a2 != v14);
  }

  v17 = *(v10 + 16);
  if (v17)
  {
    v34 = MEMORY[0x277D84F90];
    v18 = sub_21B2542A8(0, v17, 0);
    v19 = 0;
    v20 = v34;
    v21 = a7;
    while (v19 < *(v10 + 16))
    {
      v32 = *(v10 + 8 * v19 + 32);
      v18 = sub_21B31617C(&v32, v21, &v33);
      v22 = v33;
      v34 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_21B2542A8((v23 > 1), v24 + 1, 1);
        v21 = a7;
        v20 = v34;
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      *(v20 + 8 * v24 + 32) = v22;
      if (v17 == v19)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_19:
  v25 = sub_21B2F55E8(v20, a6);
  v27 = v26;

  *a9 = v25;
  *(a9 + 8) = v27 & 1;
  return v18;
}

uint64_t sub_21B315228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v7 = v5[1];
  v15 = *v5;
  v16[0] = v7;
  *(v16 + 9) = *(v5 + 25);
  v8 = v7;
  v11 = *(a1 + 16);
  v12 = a2;
  v13 = &v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21B328CA8(a5, &v10, v8, v11);
  return v14;
}

uint64_t sub_21B3152B0@<X0>(__int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v11 = result;
  v12 = *(result + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v15 = result + 32;
    v38 = result + 32;
    v39 = *(result + 16);
    while (v14 < *(v11 + 16))
    {
      v18 = *(v15 + 8 * v14);
      v19 = a3[1];
      v41 = *a3;
      v42[0] = v19;
      *(v42 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, a4, v9, v10);
      result = DiscontiguousColumnSlice.isNil(at:)(v18);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v43 = v13;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
          v13 = v43;
        }

        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
          v13 = v43;
        }

        *(v13 + 16) = v17 + 1;
        *(v13 + 8 * v17 + 32) = v18;
        v15 = v38;
        v12 = v39;
      }

      if (v12 == ++v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_11:

  v20 = *(v13 + 16);
  if (!v20)
  {

    v22 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (!v26)
    {
LABEL_21:

      goto LABEL_28;
    }

LABEL_18:
    if (v26 == 1)
    {
      v27 = 0;
      v28 = 0.0;
      v29 = 0.0;
    }

    else
    {
      v27 = v26 & 0x7FFFFFFFFFFFFFFELL;
      v30 = (v22 + 40);
      v28 = 0.0;
      v31 = v26 & 0x7FFFFFFFFFFFFFFELL;
      v29 = 0.0;
      do
      {
        v28 = v28 + 1.0 + 1.0;
        v29 = v29 + *(v30 - 1) + *v30;
        v30 += 2;
        v31 -= 2;
      }

      while (v31);
      if (v26 == v27)
      {
LABEL_27:

        if (v28 != 0.0)
        {
          v35 = 0;
          v36 = v29 / v28;
          goto LABEL_30;
        }

LABEL_28:
        v35 = 1;
        v36 = 0.0;
LABEL_30:
        *a6 = v36;
        *(a6 + 8) = v35;
        return result;
      }
    }

    v32 = v26 - v27;
    v33 = (v22 + 8 * v27 + 32);
    do
    {
      v34 = *v33++;
      v29 = v29 + v34;
      v28 = v28 + 1.0;
      --v32;
    }

    while (v32);
    goto LABEL_27;
  }

  *&v41 = MEMORY[0x277D84F90];
  result = sub_21B2542A8(0, v20, 0);
  v21 = 0;
  v22 = v41;
  while (v21 < *(v13 + 16))
  {
    v40 = *(v13 + 8 * v21 + 32);
    result = sub_21B31617C(&v40, a4, &v43);
    v23 = v43;
    *&v41 = v22;
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_21B2542A8((v24 > 1), v25 + 1, 1);
      v22 = v41;
    }

    ++v21;
    *(v22 + 16) = v25 + 1;
    *(v22 + 8 * v25 + 32) = v23;
    if (v20 == v21)
    {

      v26 = *(v22 + 16);
      if (!v26)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21B315678@<X0>(__int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v12 = result;
  v13 = *(result + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    v16 = result + 32;
    v32 = result + 32;
    v33 = *(result + 16);
    while (v15 < *(v12 + 16))
    {
      v19 = *(v16 + 8 * v15);
      v20 = a3[1];
      v36 = *a3;
      v37[0] = v20;
      *(v37 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, a5, v10, v11);
      result = DiscontiguousColumnSlice.isNil(at:)(v19);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v14;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v14 + 16) + 1, 1);
          v14 = v35;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_21B254034((v17 > 1), v18 + 1, 1);
          v14 = v35;
        }

        *(v14 + 16) = v18 + 1;
        *(v14 + 8 * v18 + 32) = v19;
        v16 = v32;
        v13 = v33;
      }

      if (v13 == ++v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_11:

  v21 = *(v14 + 16);
  if (v21)
  {
    *&v36 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v21, 0);
    v22 = 0;
    v23 = v36;
    while (v22 < *(v14 + 16))
    {
      v34 = *(v14 + 8 * v22 + 32);
      result = sub_21B31617C(&v34, a5, &v35);
      v24 = v35;
      *&v36 = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_21B2542A8((v25 > 1), v26 + 1, 1);
        v23 = v36;
      }

      ++v22;
      *(v23 + 16) = v26 + 1;
      *(v23 + 8 * v26 + 32) = v24;
      if (v21 == v22)
      {

        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_19:
  v27 = sub_21B2F55E8(v23, a4);
  v29 = v28;

  *a7 = v27;
  *(a7 + 8) = v29 & 1;
  return result;
}

uint64_t sub_21B315930(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = v5[1];
  v22[0] = *v5;
  v22[1] = v10;
  v23 = *(v5 + 4);
  v11 = v5[1];
  v18 = *v5;
  v19 = v11;
  v20 = *(v5 + 4);
  v12 = *(a1 + 16);
  type metadata accessor for Column(255, v12, a3, a4);
  swift_getWitnessTable();
  v13 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v17, v13);
  v14 = v17[2];

  v16[2] = v12;
  v16[3] = a2;
  v16[4] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21B328CA8(a5, v16, v14, v12);

  return v21;
}

uint64_t sub_21B315A38@<X0>(__int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v8 = a3[1];
  v38[0] = *a3;
  v38[1] = v8;
  v39 = *(a3 + 4);
  type metadata accessor for Column(255, a4, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v12 = v36;
  v13 = v37;
  v14 = MEMORY[0x277D84F90];
  if (v36 != v37)
  {
    if (v37 >= v36)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v26 = *(v14 + 16);
    v25 = *(v14 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_21B254034((v25 > 1), v26 + 1, 1);
      v14 = v43;
    }

    *(v14 + 16) = v26 + 1;
    *(v14 + 8 * v26 + 32) = v12;
    while (v13 != ++v12)
    {
LABEL_17:
      if (v13 == v12)
      {
LABEL_33:
        __break(1u);
        return result;
      }

      v27 = a3[1];
      v40 = *a3;
      v41 = v27;
      v42 = *(a3 + 4);
      type metadata accessor for ColumnSlice(0, a4, v10, v11);
      result = ColumnSlice.isNil(at:)(v12);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v43 = v14;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v14 + 16) + 1, 1);
          v14 = v43;
        }

        goto LABEL_13;
      }
    }
  }

  v15 = *(v14 + 16);
  if (v15)
  {
    *&v40 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v15, 0);
    v16 = 0;
    v17 = v40;
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v36 = *(v14 + 8 * v16 + 32);
      result = sub_21B31617C(&v36, a4, v38);
      v18 = *&v38[0];
      *&v40 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_21B2542A8((v19 > 1), v20 + 1, 1);
        v17 = v40;
      }

      ++v16;
      *(v17 + 16) = v20 + 1;
      *(v17 + 8 * v20 + 32) = v18;
    }

    while (v15 != v16);

    v21 = *(v17 + 16);
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (!v21)
    {
LABEL_22:

      goto LABEL_29;
    }
  }

  if (v21 == 1)
  {
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
LABEL_26:
    v30 = v21 - v22;
    v31 = (v17 + 8 * v22 + 32);
    do
    {
      v32 = *v31++;
      v24 = v24 + v32;
      v23 = v23 + 1.0;
      --v30;
    }

    while (v30);
    goto LABEL_28;
  }

  v22 = v21 & 0x7FFFFFFFFFFFFFFELL;
  v28 = (v17 + 40);
  v23 = 0.0;
  v29 = v21 & 0x7FFFFFFFFFFFFFFELL;
  v24 = 0.0;
  do
  {
    v23 = v23 + 1.0 + 1.0;
    v24 = v24 + *(v28 - 1) + *v28;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  if (v21 != v22)
  {
    goto LABEL_26;
  }

LABEL_28:

  if (v23 != 0.0)
  {
    v33 = 0;
    v34 = v24 / v23;
    goto LABEL_31;
  }

LABEL_29:
  v33 = 1;
  v34 = 0.0;
LABEL_31:
  *a6 = v34;
  *(a6 + 8) = v33;
  return result;
}

uint64_t sub_21B315EA8@<X0>(__int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v9 = a3[1];
  v33[0] = *a3;
  v33[1] = v9;
  v34 = *(a3 + 4);
  type metadata accessor for Column(255, a5, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v13 = v31;
  v14 = v32;
  v15 = MEMORY[0x277D84F90];
  if (v31 != v32)
  {
    if (v32 >= v31)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_21B254034((v22 > 1), v23 + 1, 1);
      v15 = v30;
    }

    *(v15 + 16) = v23 + 1;
    *(v15 + 8 * v23 + 32) = v13;
    while (v14 != ++v13)
    {
LABEL_15:
      if (v14 == v13)
      {
        goto LABEL_22;
      }

      v24 = a3[1];
      v35 = *a3;
      v36 = v24;
      v37 = *(a3 + 4);
      type metadata accessor for ColumnSlice(0, a5, v11, v12);
      result = ColumnSlice.isNil(at:)(v13);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v30 = v15;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v15 + 16) + 1, 1);
        }

        goto LABEL_11;
      }
    }
  }

  v16 = *(v15 + 16);
  if (v16)
  {
    *&v35 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v16, 0);
    v17 = 0;
    v18 = v35;
    while (v17 < *(v15 + 16))
    {
      v31 = *(v15 + 8 * v17 + 32);
      result = sub_21B31617C(&v31, a5, v33);
      v19 = *&v33[0];
      *&v35 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_21B2542A8((v20 > 1), v21 + 1, 1);
        v18 = v35;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      *(v18 + 8 * v21 + 32) = v19;
      if (v16 == v17)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_20:
    v25 = sub_21B2F55E8(v18, a4);
    v27 = v26;

    *a7 = v25;
    *(a7 + 8) = v27 & 1;
  }

  return result;
}

uint64_t sub_21B31617C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a4@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v11 + *(v10 + 72) * *v7, v12);
  if (sub_21B34B524() < 65)
  {
    v15 = sub_21B34B534();
    v16 = sub_21B34B514();
    result = (*(v6 + 8))(v9, a2);
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
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v6 + 8))(v9, a2);
    v14 = *&v17[1];
  }

  *a4 = v14;
  return result;
}

uint64_t sub_21B316330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a2;
  v33 = a4;
  v34 = a6;
  v30 = a1;
  v32 = a7;
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v15 = result + 32;
    v16 = MEMORY[0x277D84F90];
    v35 = result + 32;
    v36 = a5;
    while (v14 < *(v12 + 16))
    {
      v19 = *(v15 + 8 * v14);
      v20 = a3[1];
      v37 = *a3;
      v38[0] = v20;
      *(v38 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, a5, v10, v11);
      result = DiscontiguousColumnSlice.isNil(at:)(v19);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v16;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v16 + 16) + 1, 1);
          v16 = v39;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_21B254034((v17 > 1), v18 + 1, 1);
          v16 = v39;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v19;
        v15 = v35;
        a5 = v36;
      }

      if (v13 == ++v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_12:

    *&v37 = v16;
    MEMORY[0x28223BE20](v21);
    v22 = v34;
    v29[2] = a5;
    v29[3] = v34;
    v29[4] = v30;
    v29[5] = v31;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v24 = sub_21B26F384();
    v26 = sub_21B2FCC28(sub_21B26F44C, v29, v23, a5, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);

    *&v37 = v26;
    v27 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B309D08(v33, v27, WitnessTable, v22, v32);
  }

  return result;
}

uint64_t DataFrameProtocol.writeJSON(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 1);
  v10[0] = *a2;
  v10[1] = v5;
  v11 = *(a2 + 8);
  result = DataFrameProtocol.jsonRepresentation(options:)(v10, a3, a4);
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    sub_21B34A754();
    return sub_21B234324(v8, v9);
  }

  return result;
}

uint64_t DataFrameProtocol.jsonRepresentation(options:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v95 = sub_21B34A834();
  v7 = *(v95 - 8);
  v8 = MEMORY[0x28223BE20](v95);
  v93 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v94 = &v72[-v10];
  v11 = sub_21B34AD44();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = *a1;
  v74 = a1[1];
  v15 = *(a1 + 2);
  v92 = *(a1 + 1);
  v91 = v15;
  v16 = *(a3 + 24);
  v83 = a3 + 24;
  v82 = v16;
  v16(v108, a2, a3);
  v17 = v108[0];

  v18 = *(v17 + 16);

  if (v18)
  {
    (*(a3 + 32))(v108, a2, a3);
    v86 = v108[0];
    v85 = v108[1];
    v11 = v109;
    v84 = v108[2];
    LODWORD(v18) = v111;
    v19 = v109;
    v14 = v3;
    v20 = v110;
    if (!v111)
    {
      goto LABEL_11;
    }

    if (v111 == 1 && *(v109 + 16))
    {
      v19 = *(v109 + 32);
      goto LABEL_11;
    }
  }

  else
  {
    sub_21B34AD34();
    v20 = sub_21B34AC94();
    v7 = v21;
    (*(v12 + 8))(v14, v11);
    if (v7 >> 60 != 15)
    {
      return v20;
    }

    __break(1u);
  }

  sub_21B2A6400();
  if (v23)
  {
    v19 = 0;
  }

  else
  {
    v19 = v22;
  }

LABEL_11:
  v24 = v19;
  sub_21B2A6400();
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v81 = v27;
  if (v24 == v27)
  {
LABEL_15:

    sub_21B23A9F4(v11, v20, v18);
    if (v73)
    {
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }

    v29 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E308, &qword_21B351C20);
    v30 = sub_21B34AF74();

    v104[0] = 0;
    v31 = [v29 dataWithJSONObject:v30 options:v28 | v74 error:v104];

    v32 = v104[0];
    if (v31)
    {
      v20 = sub_21B34A734();
    }

    else
    {
      v70 = v32;
      v20 = sub_21B34A654();

      swift_willThrow();
    }

    return v20;
  }

  v33 = v24;
  v90 = (v7 + 32);
  v89 = (v7 + 8);
  v34 = MEMORY[0x277D84F90];
  v75 = v14;
  v80 = a3;
  v79 = a2;
  v78 = v11;
  v77 = v18;
  v76 = v20;
  while (1)
  {
    v88 = v34;
    v104[0] = v86;
    v104[1] = v85;
    v104[2] = v84;
    v105 = v11;
    v106 = v20;
    v107 = v18;
    v98 = v33;
    v87 = DataFrame.Rows.index(after:)(v33);
    v82(v104, a2, a3);
    v35 = v104[0];

    v97 = v35[2];
    if (v97)
    {
      break;
    }

    v18 = MEMORY[0x277D84F98];
LABEL_44:

    v34 = v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_21B24AE78(0, v34[2] + 1, 1, v34);
    }

    v69 = v34[2];
    v68 = v34[3];
    if (v69 >= v68 >> 1)
    {
      v34 = sub_21B24AE78((v68 > 1), v69 + 1, 1, v34);
    }

    v34[2] = v69 + 1;
    v34[v69 + 4] = v18;
    v33 = v87;
    a3 = v80;
    a2 = v79;
    v11 = v78;
    LOBYTE(v18) = v77;
    v20 = v76;
    if (v87 == v81)
    {
      goto LABEL_15;
    }
  }

  v36 = 0;
  v37 = (v35 + 4);
  v18 = MEMORY[0x277D84F98];
  v96 = v35;
  while (1)
  {
    if (v36 >= v35[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    sub_21B233A74(v37, v104);
    v38 = v105;
    v39 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v40 = (*(*(v39 + 8) + 8))(v38);
    v42 = v41;
    v43 = v105;
    v44 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(*(v44 + 8) + 128))(&v102, v98, v43);
    sub_21B2832C0(&v102, v101);
    if (v101[3])
    {
      sub_21B2832C0(v101, v100);
      v45 = v94;
      v46 = v95;
      if (swift_dynamicCast())
      {
        v47 = v93;
        (*v90)(v93, v45, v46);
        v48 = v92(v47);
        v50 = v49;
        (*v89)(v47, v46);
        sub_21B28EEB4(&v102);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        v51 = MEMORY[0x277D837D0];
        v52 = v99;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        v50 = *(&v102 + 1);
        v48 = v102;
        v51 = *(&v103 + 1);
        v52 = v103;
      }
    }

    else
    {
      sub_21B28EEB4(&v102);
      v51 = 0;
      v52 = 0;
      v50 = 0;
      v48 = 0;
    }

    sub_21B28EEB4(v101);
    *&v102 = v48;
    *(&v102 + 1) = v50;
    v99 = v52;
    *&v103 = v52;
    *(&v103 + 1) = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v18;
    v55 = sub_21B24B534(v40, v42);
    v56 = v18[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_53;
    }

    v59 = v54;
    if (v18[3] < v58)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v54)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_21B2533CC();
      if (v59)
      {
LABEL_24:

        v18 = v101[0];
        sub_21B283330(&v102, *(v101[0] + 56) + 32 * v55);
        goto LABEL_25;
      }
    }

LABEL_39:
    v18 = v101[0];
    *(v101[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
    v62 = (v18[6] + 16 * v55);
    *v62 = v40;
    v62[1] = v42;
    v63 = (v18[7] + 32 * v55);
    v64 = v103;
    *v63 = v102;
    v63[1] = v64;
    v65 = v18[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_54;
    }

    v18[2] = v67;
LABEL_25:
    ++v36;
    sub_21B233960(v104);
    v37 += 40;
    v35 = v96;
    if (v97 == v36)
    {
      goto LABEL_44;
    }
  }

  sub_21B24E148(v58, isUniquelyReferenced_nonNull_native);
  v60 = sub_21B24B534(v40, v42);
  if ((v59 & 1) == (v61 & 1))
  {
    v55 = v60;
    if (v59)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t CSVType.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

unint64_t sub_21B316FD8()
{
  result = qword_27CD7F530;
  if (!qword_27CD7F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F530);
  }

  return result;
}

uint64_t sub_21B31703C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v95 = a2;
  v96 = a3;
  v75 = a4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F538, &qword_21B357400);
  v5 = *(v85 - 8);
  v6 = MEMORY[0x28223BE20](v85);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F540, &qword_21B357408);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F548, &qword_21B357410);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v81 = &v75 - v15;
  v88 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v83 = (v5 + 8);
  v80 = v14 + 56;
  v82 = (v14 + 48);
  v78 = (v14 + 32);
  v76 = (v14 + 8);
  v94 = a1;

  v22 = 0;
  v77 = v8;
  v84 = v12;
  v89 = a1 + 56;
  v90 = v13;
  v91 = v20;
  while (1)
  {
    v23 = v22;
    if (!v19)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v24 = v8;
      v22 = v23;
LABEL_11:
      v25 = (*(v94 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v19)))));
      v27 = *v25;
      v26 = v25[1];
      v19 &= v19 - 1;
      v97 = v95;
      v98 = v96;
      MEMORY[0x28223BE20](v21);
      *(&v75 - 2) = &v97;

      v28 = v26;
      v29 = v27;
      v30 = sub_21B2E1B4C(sub_21B31781C, (&v75 - 4), v27, v28);
      if ((v31 & 1) == 0)
      {
        break;
      }

      v23 = v22;
      v8 = v24;
      if (!v19)
      {
LABEL_7:
        while (1)
        {
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v71 = v94;

            v72 = v75;
            v73 = v88;
            *v75 = v71;
            v72[1] = v73;
            v72[2] = 1;
            v74 = v96;
            v72[3] = v95;
            v72[4] = v74;
            return result;
          }

          v19 = *(v16 + 8 * v22);
          ++v23;
          if (v19)
          {
            v24 = v8;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v32 = v30;
    v33 = sub_21B34ADB4();
    v34 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v34 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v34 < v33 >> 14)
    {
      goto LABEL_32;
    }

    v86 = v32;
    v87 = v29;
    v92 = v28;
    v35 = sub_21B34AEB4();
    v36 = v85;
    v38 = v37;
    sub_21B34A904();
    sub_21B31783C();
    sub_21B34A8F4();
    if (v38 >> 14 < v35 >> 14)
    {
LABEL_33:
      __break(1u);
      break;
    }

    sub_21B34B4C4();
    v39 = v84;
    sub_21B34A914();
    v8 = v24;

    v40 = *v83;
    (*v83)(v24, v36);
    v40(v93, v36);
    v41 = v39;
    v42 = v90;
    v43 = (*v82)(v39, 1, v90);
    v16 = v89;
    v20 = v91;
    if (v43 == 1)
    {

      v21 = sub_21B3178A0(v41);
      continue;
    }

    (*v78)(v81, v41, v42);
    sub_21B34A924();
    v44 = v97;
    v45 = v98;
    v46 = v100;
    if (!((v98 ^ v97) >> 14))
    {
      break;
    }

    v47 = v99;
    v48 = sub_21B2E21E8(v97, v98, v99, v100, 10);
    if ((v49 & 0x100) != 0)
    {
      v79 = sub_21B2E1C50(v44, v45, v47, v46, 10);
      v53 = v52;

      v20 = v91;
      if (v53)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v50 = v49;
      v79 = v48;

      v20 = v91;
      if (v50)
      {
        goto LABEL_35;
      }
    }

    v54 = sub_21B34AEB4();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    v61 = MEMORY[0x21CEED540](v54, v56, v58, v60);
    v63 = v62;

    v64 = v88;
    v16 = v89;
    if (*(v88 + 16) && (v65 = sub_21B24B534(v61, v63), (v66 & 1) != 0))
    {
      v8 = v77;
      v67 = v90;
      if (*(*(v64 + 56) + 8 * v65) < v79)
      {
        v69 = v88;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v69;
        sub_21B23A60C(v79, v61, v63, isUniquelyReferenced_nonNull_native);

        v21 = (*v76)(v81, v67);
        v88 = v97;
      }

      else
      {
        (*v76)(v81, v90);
      }
    }

    else
    {
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v64;
      sub_21B23A60C(v79, v61, v63, v68);

      v21 = (*v76)(v81, v90);
      v88 = v97;
      v8 = v77;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_21B31783C()
{
  result = qword_27CD7F550;
  if (!qword_27CD7F550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F538, &qword_21B357400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F550);
  }

  return result;
}

uint64_t sub_21B3178A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F540, &qword_21B357408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B317908@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_21B2C1778(a1, v18 - v8);
  v10 = sub_21B34A834();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21B27DF7C(v9);
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    type metadata accessor for FormattingOptions(0);
    sub_21B34A784();
    sub_21B317AA0();
    sub_21B34A824();
    (*(v11 + 8))(v9, v10);
    v13 = v18[0];
    v12 = v18[1];
  }

  v14 = sub_21B2A11F8(a3, v13, v12);
  v16 = v15;

  *a4 = v14;
  a4[1] = v16;
  return result;
}

unint64_t sub_21B317AA0()
{
  result = qword_27CD7F558;
  if (!qword_27CD7F558)
  {
    sub_21B34A784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F558);
  }

  return result;
}

double sub_21B317AFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v23 = a3;
  v9 = sub_21B299F44(sub_21B326BDC, v21, a1);
  v18 = a2;
  v19 = a3;
  v20 = v4;

  v10 = sub_21B3256CC(v9, a1, sub_21B326C00);

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v17 = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0C8, &qword_21B3518B0);
  v13 = sub_21B326A74();
  sub_21B3492CC(v24, v4, sub_21B326C74, v11, sub_21B326C6C, 0, sub_21B326C54, v16, v12, &type metadata for AnyHashableBuilder, a2, v13, &off_2817203A8, a3);

  result = *v24;
  v15 = v24[1];
  *a4 = v24[0];
  *(a4 + 16) = v15;
  *(a4 + 32) = v25;
  return result;
}

uint64_t DataFrameProtocol.grouped<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v12;
  v16 = v12[1];
  (*(v17 + 16))(v14, v6, a2);

  return sub_21B2FF730(v14, v15, v16, a2, a3, a4, a6, a5);
}

double DataFrameProtocol.grouped<A, B>(by:_:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v32 = a7;
  *(&v32 + 1) = a8;
  *&v31 = a4;
  *(&v31 + 1) = a5;
  v12 = *a1;
  v11 = a1[1];
  v29 = *a1;
  v14 = *a2;
  v13 = a2[1];
  v15 = *(a6 + 24);
  v15(&v46, a3, a6);
  v30 = sub_21B23AC94(v12, v11);

  v15(&v46, a3, a6);
  v44 = v46;
  v45 = v47;
  v28 = sub_21B23AC94(v14, v13);

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = v31;
  *(v16 + 40) = a6;
  *(v16 + 48) = v32;
  *(v16 + 64) = v29;
  *(v16 + 72) = v11;
  *(v16 + 80) = v14;
  *(v16 + 88) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = v31;
  *(v17 + 40) = a6;
  *(v17 + 48) = v32;
  v36 = a3;
  v37 = v31;
  v38 = a6;
  v39 = v32;
  v40 = v30;
  v41 = v28;
  v18 = sub_21B34B474();
  v19 = sub_21B34B474();
  v43 = v32;

  WitnessTable = swift_getWitnessTable();
  v42 = *(&v32 + 1);
  v21 = swift_getWitnessTable();
  *&v46 = v18;
  *(&v46 + 1) = v19;
  *&v47 = WitnessTable;
  *(&v47 + 1) = v21;
  v22 = type metadata accessor for Tuple2(0, &v46);
  v46 = v31;
  v47 = v32;
  v23 = type metadata accessor for ColumnBuilder2(0, &v46);
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  sub_21B3492CC(&v46, v33, sub_21B3243B4, v16, sub_21B3243EC, v17, sub_21B3246FC, v35, v22, v23, a3, v24, v25, a6);
  result = *&v46;
  v27 = v47;
  *a9 = v46;
  *(a9 + 16) = v27;
  *(a9 + 32) = v48;
  return result;
}

double DataFrameProtocol.grouped<A, B, C>(by:_:_:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a1;
  v15 = a1[1];
  v39 = *a1;
  v18 = *a2;
  v17 = a2[1];
  v46 = v17;
  v35 = *a2;
  v36 = *a3;
  v37 = a3[1];
  v19 = *(a8 + 24);
  v19(&v60, a4, a8);
  v64 = v60;
  v65 = v61;
  v42 = sub_21B23AC94(v16, v15);

  v44 = v12;
  v19(&v60, a4, a8);
  v64 = v60;
  v65 = v61;
  v38 = sub_21B23AC94(v18, v17);

  v19(&v60, a4, a8);
  v64 = v60;
  v65 = v61;
  v34 = sub_21B23AC94(v36, v37);

  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a10;
  v21 = a8;
  v20[8] = a11;
  v20[9] = a12;
  v20[10] = v39;
  v20[11] = v15;
  v20[12] = v35;
  v20[13] = v46;
  v20[14] = v36;
  v20[15] = v37;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v40[6] = a8;
  v40[7] = a10;
  v40[8] = a11;
  v40[9] = a12;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v53 = a8;
  v54 = a10;
  v55 = a11;
  v56 = a12;
  v57 = v42;
  v58 = v38;
  v59 = v34;
  v22 = sub_21B34B474();
  v23 = sub_21B34B474();
  v24 = sub_21B34B474();

  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  *&v60 = v22;
  *(&v60 + 1) = v23;
  *&v61 = v24;
  *(&v61 + 1) = WitnessTable;
  v62 = v26;
  v63 = v27;
  v28 = type metadata accessor for Tuple3(0, &v60);
  *&v60 = a5;
  *(&v60 + 1) = a6;
  *&v61 = a7;
  *(&v61 + 1) = a10;
  v62 = a11;
  v63 = a12;
  v29 = type metadata accessor for ColumnBuilder3(0, &v60);
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  sub_21B3492CC(&v60, v44, sub_21B325908, v20, sub_21B325948, v40, sub_21B32597C, v48, v28, v29, v49, v30, v31, v21);
  result = *&v60;
  v33 = v61;
  *a9 = v60;
  *(a9 + 16) = v33;
  *(a9 + 32) = v62;
  return result;
}

void *sub_21B3184C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8);
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v44 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v45 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = sub_21B25F3A4(MEMORY[0x277D84F90]);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v50 = v0;
  v51 = v12;
  LODWORD(v12) = *(v0 + 40);
  v52 = v11;
  v53 = v12;
  if (v12)
  {
    if (v53 == 1 && *(v52 + 16))
    {
      v13 = (v52 + 32);
    }

    else
    {
      swift_beginAccess();
      v14 = *(v10 + 16);
      if (!v14)
      {
        goto LABEL_44;
      }

      v13 = (v14 + 8);
    }

    v11 = *v13;
  }

  v44 = v4;
  swift_beginAccess();
  v15 = *(v10 + 16);
  if (!v15)
  {
    goto LABEL_43;
  }

  v16 = MEMORY[0x277D84F90];
  v17 = &qword_27CD7E100;
  v46 = v8;
  v47 = v10;
  while (1)
  {
    if (v11 == *(v15 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v11, v52, v51, v53) & 1) == 0)
    {
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_21B34B634();

      v57 = 0x6E6F697469736F70;
      v58 = 0xE900000000000020;
      v56 = v11;
      v43 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v43);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v11 < 0 || v11 >= *(v15 + 8))
    {
      goto LABEL_47;
    }

    sub_21B2B194C(v11, *(v10 + 16), v8);
    if (!v9[2])
    {
      break;
    }

    v18 = sub_21B24B8F0(v8);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v20 = *(v9[7] + 8 * v18);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v16 = sub_21B23A3D0(v16);
      if ((v20 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v16;
      }
    }

    if (v20 >= v16[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v11, v11 + 1);
LABEL_11:
    v11 = sub_21B2B4370();
    sub_21B261664(v8, v17, &unk_21B352A30);
    v15 = *(v10 + 16);
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  v21 = v16;
  v22 = v3;
  v23 = v55;
  v24 = v17;
  sub_21B2615FC(v8, v55, v17, &unk_21B352A30);
  v54 = v21;
  v25 = v21[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v9;
  v28 = sub_21B24B8F0(v23);
  v29 = v9[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (!__OFADD__(v29, v30))
  {
    v32 = v27;
    if (v9[3] < v31)
    {
      sub_21B24E748(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_21B24B8F0(v55);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_48;
      }

      v28 = v33;
      v9 = v57;
      if ((v32 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v9[7] + 8 * v28) = v25;
      v17 = v24;
      sub_21B261664(v55, v24, &unk_21B352A30);
LABEL_33:
      v3 = v22;
      v39 = v22 + *(v49 + 48);
      v8 = v46;
      sub_21B2615FC(v46, v22, v17, &unk_21B352A30);
      *v39 = v11;
      *(v39 + 8) = v11 + 1;
      *(v39 + 16) = 0;
      v16 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21B24AFF4(0, v16[2] + 1, 1, v16);
      }

      v41 = v16[2];
      v40 = v16[3];
      if (v41 >= v40 >> 1)
      {
        v16 = sub_21B24AFF4((v40 > 1), v41 + 1, 1, v16);
      }

      v16[2] = v41 + 1;
      sub_21B326B74(v3, v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v41, &qword_27CD7E2D0, &qword_21B351BE8);
      v10 = v47;
      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v9 = v57;
      if (v27)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B2536DC();
      v9 = v57;
      if (v32)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v9[(v28 >> 6) + 8] |= 1 << v28;
    v35 = v55;
    sub_21B2615FC(v55, v9[6] + *(v45 + 72) * v28, v24, &unk_21B352A30);
    *(v9[7] + 8 * v28) = v25;
    v17 = v24;
    sub_21B261664(v35, v24, &unk_21B352A30);
    v36 = v9[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_41;
    }

    v9[2] = v38;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B318B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = sub_21B25F3A4(MEMORY[0x277D84F90]);
  v42 = *(a1 + 16);
  if (!v42)
  {

    return MEMORY[0x277D84F90];
  }

  v39 = v5;
  v12 = 0;
  v41 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v13 = MEMORY[0x277D84F90];
  v14 = &qword_27CD7E100;
  v46 = *(v6 + 72);
  v40 = v10;
  while (1)
  {
    sub_21B2615FC(v41 + v46 * v12, v10, v14, &unk_21B352A30);
    if (v11[2])
    {
      v15 = sub_21B24B8F0(v10);
      if (v16)
      {
        v17 = *(v11[7] + 8 * v15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v13 = sub_21B23A3D0(v13);
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_26:
            __break(1u);
LABEL_27:

            return v13;
          }
        }

        if (v17 >= v13[2])
        {
          goto LABEL_32;
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B261664(v10, v14, &unk_21B352A30);
        ++v12;
        goto LABEL_4;
      }
    }

    v18 = v10;
    v19 = v47;
    v20 = v14;
    sub_21B2615FC(v18, v47, v14, &unk_21B352A30);
    v45 = v13;
    v21 = v13[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v11;
    v24 = sub_21B24B8F0(v19);
    v25 = v11[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21B2536DC();
      }
    }

    else
    {
      sub_21B24E748(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_21B24B8F0(v47);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_33;
      }

      v24 = v29;
    }

    v14 = v20;
    v11 = v48;
    if (v28)
    {
      *(v48[7] + 8 * v24) = v21;
      sub_21B261664(v47, v20, &unk_21B352A30);
    }

    else
    {
      v48[(v24 >> 6) + 8] |= 1 << v24;
      v31 = v47;
      sub_21B2615FC(v47, v11[6] + v24 * v46, v20, &unk_21B352A30);
      *(v11[7] + 8 * v24) = v21;
      sub_21B261664(v31, v20, &unk_21B352A30);
      v32 = v11[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_31;
      }

      v11[2] = v34;
    }

    v35 = &v4[*(v44 + 48)];
    v10 = v40;
    sub_21B2615FC(v40, v4, v14, &unk_21B352A30);
    *v35 = v12;
    *(v35 + 1) = v12 + 1;
    v35[16] = 0;
    v13 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_21B24AFF4(0, v13[2] + 1, 1, v13);
    }

    v37 = v13[2];
    v36 = v13[3];
    if (v37 >= v36 >> 1)
    {
      v13 = sub_21B24AFF4((v36 > 1), v37 + 1, 1, v13);
    }

    sub_21B261664(v10, v14, &unk_21B352A30);
    v13[2] = v37 + 1;
    sub_21B326B74(v4, v13 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37, &qword_27CD7E2D0, &qword_21B351BE8);
    ++v12;
LABEL_4:
    if (v12 == v42)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B318FFC()
{
  v1 = sub_21B25F580(MEMORY[0x277D84F90]);
  v2 = *(v0 + 24);
  v40 = *(v0 + 16);
  v37 = *(v0 + 32);
  v38 = v2;
  v39 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v39 == 1 && *(v2 + 16))
    {
      v3 = (v2 + 32);
    }

    else
    {
      swift_beginAccess();
      v4 = *(v40 + 16);
      if (!v4)
      {
        goto LABEL_53;
      }

      v3 = (v4 + 8);
    }

    v2 = *v3;
  }

  swift_beginAccess();
  v5 = *(v40 + 16);
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v5[1])
    {
      goto LABEL_47;
    }

    if ((sub_21B2D3BE8(v2, v38, v37, v39) & 1) == 0)
    {
      sub_21B34B634();

      v36 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v36);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_56;
    }

    if (v2 < 0 || v2 >= v5[1])
    {
      goto LABEL_56;
    }

    if ((*(v5 + (v2 >> 3) + 64) >> (v2 & 7)))
    {
      break;
    }

    v14 = 0;
    v15 = 0xF000000000000000;
    if (!v1[2])
    {
      goto LABEL_30;
    }

LABEL_25:
    v16 = sub_21B24BAEC(v14, v15);
    if ((v17 & 1) == 0)
    {
      goto LABEL_30;
    }

    v18 = *(v1[7] + 8 * v16);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v6 = sub_21B23A3E4(v6);
      if ((v18 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
LABEL_47:

        return v6;
      }
    }

    if (v18 >= v6[2])
    {
      goto LABEL_51;
    }

    sub_21B28DFBC(v2, v2 + 1);
LABEL_11:
    v2 = sub_21B2B4370();
    sub_21B260C58(v14, v15);
    v5 = *(v40 + 16);
    if (!v5)
    {
      goto LABEL_52;
    }
  }

  v8 = *v5 + 7;
  if (__OFADD__(*v5, 7))
  {
    goto LABEL_49;
  }

  if (v8 < 0)
  {
    v8 = *v5 + 14;
  }

  v9 = v8 >> 3;
  v11 = v9 - 1;
  v10 = v9 < 1;
  v12 = v9 + 62;
  if (!v10)
  {
    v12 = v11;
  }

  v13 = &v5[2 * v2 + 8] + (v12 & 0xFFFFFFFFFFFFFFC0);
  v14 = *(v13 + 64);
  v15 = *(v13 + 72);
  sub_21B260DC0(v14, v15);
  if (v1[2])
  {
    goto LABEL_25;
  }

LABEL_30:
  v19 = v6[2];
  sub_21B260DAC(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = sub_21B24BAEC(v14, v15);
  v23 = v1[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (!__OFADD__(v23, v24))
  {
    v26 = v21;
    if (v1[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_21B253904();
        if ((v26 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_21B24EC58(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_21B24BAEC(v14, v15);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_57;
      }

      v22 = v27;
      if ((v26 & 1) == 0)
      {
LABEL_39:
        v1[(v22 >> 6) + 8] |= 1 << v22;
        v29 = (v1[6] + 16 * v22);
        *v29 = v14;
        v29[1] = v15;
        *(v1[7] + 8 * v22) = v19;
        v30 = v1[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_50;
        }

        v1[2] = v32;
        goto LABEL_41;
      }
    }

    *(v1[7] + 8 * v22) = v19;
    sub_21B260C58(v14, v15);
LABEL_41:
    sub_21B260DAC(v14, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21B24B1E4(0, v6[2] + 1, 1, v6);
    }

    v34 = v6[2];
    v33 = v6[3];
    if (v34 >= v33 >> 1)
    {
      v6 = sub_21B24B1E4((v33 > 1), v34 + 1, 1, v6);
    }

    v6[2] = v34 + 1;
    v7 = &v6[5 * v34];
    v7[4] = v14;
    v7[5] = v15;
    v7[6] = v2;
    v7[7] = v2 + 1;
    *(v7 + 64) = 0;
    goto LABEL_11;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_56:
  sub_21B34B824();
  __break(1u);
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E130, &qword_21B3519A8);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B3194F4(uint64_t a1)
{
  v2 = sub_21B25F580(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v31 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = (v31 + 16 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = v2[2];
      sub_21B260DAC(*v7, v9);
      if (!v10)
      {
        break;
      }

      v11 = sub_21B24BAEC(v8, v9);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(v2[7] + 8 * v11);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A3E4(v5);
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v13 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      sub_21B260C58(v8, v9);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v14 = v5[2];
    sub_21B260DAC(v8, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2;
    v16 = sub_21B24BAEC(v8, v9);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_21B24EC58(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_21B24BAEC(v8, v9);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v24 = v16;
    sub_21B253904();
    v16 = v24;
    v2 = v32;
    if ((v22 & 1) == 0)
    {
LABEL_19:
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v25 = (v2[6] + 16 * v16);
      *v25 = v8;
      v25[1] = v9;
      *(v2[7] + 8 * v16) = v14;
      v26 = v2[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_31;
      }

      v2[2] = v27;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v16) = v14;
    sub_21B260C58(v8, v9);
LABEL_21:
    sub_21B260DAC(v8, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B1E4(0, v5[2] + 1, 1, v5);
    }

    v29 = v5[2];
    v28 = v5[3];
    if (v29 >= v28 >> 1)
    {
      v5 = sub_21B24B1E4((v28 > 1), v29 + 1, 1, v5);
    }

    sub_21B260C58(v8, v9);
    v5[2] = v29 + 1;
    v6 = &v5[5 * v29];
    v6[4] = v8;
    v6[5] = v9;
    v6[6] = v4;
    v6[7] = v4 + 1;
    *(v6 + 64) = 0;
    if (++v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E130, &qword_21B3519A8);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B3197F8()
{
  v1 = sub_21B25F680(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v32 = *(v0 + 32);
  v33 = v3;
  v34 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v34 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v33, v32, v34) & 1) == 0)
    {
      sub_21B34B634();

      v31 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v31);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = sub_21B2B18C4(v3, *(v2 + 16), v9);
    v11 = v10;
    if (!v1[2])
    {
      break;
    }

    v12 = sub_21B24BB88(v10);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v1[7] + 8 * v12);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A3F8(v7);
      if ((v14 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v14 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370();
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v15 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = sub_21B24BB88(v11);
  v19 = v1[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (!__OFADD__(v19, v20))
  {
    v22 = v17;
    if (v1[3] < v21)
    {
      sub_21B24EF28(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_21B24BB88(v11);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_48;
      }

      v18 = v23;
      if ((v22 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v18) = v15;
LABEL_33:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B208(0, v7[2] + 1, 1, v7);
      }

      v29 = v7[2];
      v28 = v7[3];
      if (v29 >= v28 >> 1)
      {
        v7 = sub_21B24B208((v28 > 1), v29 + 1, 1, v7);
      }

      v7[2] = v29 + 1;
      v8 = &v7[4 * v29];
      *(v8 + 32) = v11;
      v8[5] = v3;
      v8[6] = v3 + 1;
      *(v8 + 56) = 0;
      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253A6C();
      if (v22)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v18 >> 6) + 8] |= 1 << v18;
    *(v1[6] + v18) = v11;
    *(v1[7] + 8 * v18) = v15;
    v25 = v1[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_41;
    }

    v1[2] = v27;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E128, &qword_21B3519A0);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B319C34(uint64_t a1)
{
  v2 = sub_21B25F680(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v8 = *(v5 + v4);
      if (!v2[2])
      {
        break;
      }

      v9 = sub_21B24BB88(*(v5 + v4));
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = *(v2[7] + 8 * v9);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v6 = sub_21B23A3F8(v6);
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v6;
        }
      }

      if (v11 >= v6[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v12 = v6[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v2;
    v14 = sub_21B24BB88(v8);
    v16 = v2[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v2[3] < v19)
    {
      sub_21B24EF28(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_21B24BB88(v8);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v22 = v14;
    sub_21B253A6C();
    v14 = v22;
    v2 = v28;
    if ((v20 & 1) == 0)
    {
LABEL_19:
      v2[(v14 >> 6) + 8] |= 1 << v14;
      *(v2[6] + v14) = v8;
      *(v2[7] + 8 * v14) = v12;
      v23 = v2[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_31;
      }

      v2[2] = v24;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v14) = v12;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21B24B208(0, v6[2] + 1, 1, v6);
    }

    v26 = v6[2];
    v25 = v6[3];
    if (v26 >= v25 >> 1)
    {
      v6 = sub_21B24B208((v25 > 1), v26 + 1, 1, v6);
    }

    v6[2] = v26 + 1;
    v7 = &v6[4 * v26];
    v7[5] = v4++;
    *(v7 + 32) = v8;
    v7[6] = v4;
    *(v7 + 56) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E128, &qword_21B3519A0);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B319ECC()
{
  v1 = sub_21B25F760(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v40 = *(v0 + 32);
  v41 = v3;
  v42 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v42 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  v39 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v41, v40, v42) & 1) == 0)
    {
      sub_21B34B634();

      v38 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v38);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = sub_21B2B1790(v3, *(v2 + 16), v9);
    v12 = v10;
    v13 = v11;
    if (!v1[2])
    {
      break;
    }

    v14 = sub_21B24BC14(v10, v11 & 1);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v1[7] + 8 * v14);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A40C(v7);
      if ((v16 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v16 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370();
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v17 = v7;
  v18 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v13;
  v21 = isUniquelyReferenced_nonNull_native;
  v22 = v20;
  v24 = sub_21B24BC14(v12, v20 & 1);
  v25 = v1[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (!__OFADD__(v25, v26))
  {
    v28 = v23;
    if (v1[3] < v27)
    {
      sub_21B24F1C0(v27, v21);
      v29 = sub_21B24BC14(v12, v22 & 1);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_48;
      }

      v24 = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v24) = v18;
LABEL_33:
      v7 = v17;
      v2 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B22C(0, v17[2] + 1, 1, v17);
      }

      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        v7 = sub_21B24B22C((v35 > 1), v36 + 1, 1, v7);
      }

      v7[2] = v36 + 1;
      v8 = &v7[5 * v36];
      v8[4] = v12;
      *(v8 + 40) = v22 & 1;
      v8[6] = v3;
      v8[7] = v3 + 1;
      *(v8 + 64) = 0;
      goto LABEL_11;
    }

    if (v21)
    {
      if (v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253BB8();
      if (v28)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v24 >> 6) + 8] |= 1 << v24;
    v31 = v1[6] + 16 * v24;
    *v31 = v12;
    *(v31 + 8) = v22 & 1;
    *(v1[7] + 8 * v24) = v18;
    v32 = v1[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    v1[2] = v34;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B31A34C(uint64_t a1)
{
  v2 = sub_21B25F760(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v30 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = v30 + 16 * v4;
      v8 = *v7;
      v9 = *(v7 + 8);
      if (!v2[2])
      {
        break;
      }

      v10 = sub_21B24BC14(v8, v9);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v2[7] + 8 * v10);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A40C(v5);
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v12 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v13 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2;
    v15 = sub_21B24BC14(v8, v9);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_21B24F1C0(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_21B24BC14(v8, v9);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v15;
    sub_21B253BB8();
    v15 = v23;
    v2 = v31;
    if ((v21 & 1) == 0)
    {
LABEL_19:
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = v2[6] + 16 * v15;
      *v24 = v8;
      *(v24 + 8) = v9;
      *(v2[7] + 8 * v15) = v13;
      v25 = v2[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      v2[2] = v26;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v15) = v13;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B22C(0, v5[2] + 1, 1, v5);
    }

    v28 = v5[2];
    v27 = v5[3];
    if (v28 >= v27 >> 1)
    {
      v5 = sub_21B24B22C((v27 > 1), v28 + 1, 1, v5);
    }

    v5[2] = v28 + 1;
    v6 = &v5[5 * v28];
    v6[6] = v4++;
    v6[4] = v8;
    *(v6 + 40) = v9;
    v6[7] = v4;
    *(v6 + 64) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B31A614()
{
  v1 = sub_21B25F788(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v38 = *(v0 + 32);
  v39 = v3;
  v40 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v40 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_45;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_44;
  }

  v7 = MEMORY[0x277D84F90];
  v37 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_40;
    }

    if ((sub_21B2D3BE8(v3, v39, v38, v40) & 1) == 0)
    {
      sub_21B34B634();

      v36 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v36);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_48;
    }

    if (v3 < 0)
    {
      goto LABEL_48;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_48;
    }

    v10 = sub_21B2B1B7C(v3, *(v2 + 16), v9);
    v11 = HIDWORD(v10) & 1;
    v41 = v10;
    if (!v1[2])
    {
      break;
    }

    v12 = v10;
    v13 = sub_21B24BCA8(v10 | (v11 << 32));
    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }

    v15 = *(v1[7] + 8 * v13);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = sub_21B23A420(v7);
      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_39:
        __break(1u);
LABEL_40:

        return v7;
      }
    }

    if (v15 >= v7[2])
    {
      goto LABEL_43;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370();
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_44;
    }
  }

  v12 = v10;
LABEL_23:
  v16 = v7;
  v17 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v11;
  v21 = sub_21B24BCA8(v12 | (v11 << 32));
  v22 = v1[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (!__OFADD__(v22, v23))
  {
    v25 = v20;
    if (v1[3] < v24)
    {
      sub_21B24F478(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_21B24BCA8(v12 | (v19 << 32));
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_49;
      }

      v21 = v26;
      v28 = v41;
      if ((v25 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_30:
      *(v1[7] + 8 * v21) = v17;
LABEL_34:
      v7 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B250(0, v16[2] + 1, 1, v16);
      }

      v34 = v7[2];
      v33 = v7[3];
      if (v34 >= v33 >> 1)
      {
        v7 = sub_21B24B250((v33 > 1), v34 + 1, 1, v7);
      }

      v7[2] = v34 + 1;
      v8 = &v7[4 * v34];
      *(v8 + 8) = v28;
      *(v8 + 36) = v19;
      v8[5] = v3;
      v8[6] = v3 + 1;
      *(v8 + 56) = 0;
      v2 = v37;
      goto LABEL_11;
    }

    v28 = v41;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_21B253BCC();
      if (v25)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    v1[(v21 >> 6) + 8] |= 1 << v21;
    v29 = v1[6] + 8 * v21;
    *v29 = v28;
    *(v29 + 4) = v19;
    *(v1[7] + 8 * v21) = v17;
    v30 = v1[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_42;
    }

    v1[2] = v32;
    goto LABEL_34;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_48:
  sub_21B34B824();
  __break(1u);
LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B31AA98(uint64_t a1)
{
  v2 = sub_21B25F788(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v30 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = (v30 + 8 * v4);
      v8 = *v7;
      v9 = *(v7 + 4);
      if (!v2[2])
      {
        break;
      }

      v10 = sub_21B24BCA8(v8 | (*(v7 + 4) << 32));
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v2[7] + 8 * v10);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A420(v5);
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v12 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v13 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2;
    v15 = sub_21B24BCA8(v8 | (v9 << 32));
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_21B24F478(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_21B24BCA8(v8 | (v9 << 32));
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v15;
    sub_21B253BCC();
    v15 = v23;
    v2 = v31;
    if ((v21 & 1) == 0)
    {
LABEL_19:
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = v2[6] + 8 * v15;
      *v24 = v8;
      *(v24 + 4) = v9;
      *(v2[7] + 8 * v15) = v13;
      v25 = v2[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      v2[2] = v26;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v15) = v13;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B250(0, v5[2] + 1, 1, v5);
    }

    v28 = v5[2];
    v27 = v5[3];
    if (v28 >= v27 >> 1)
    {
      v5 = sub_21B24B250((v27 > 1), v28 + 1, 1, v5);
    }

    v5[2] = v28 + 1;
    v6 = &v5[4 * v28];
    v6[5] = v4++;
    *(v6 + 8) = v8;
    *(v6 + 36) = v9;
    v6[6] = v4;
    *(v6 + 56) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B31AD68()
{
  v1 = sub_21B25F888(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v40 = *(v0 + 32);
  v41 = v3;
  v42 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v42 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  v39 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v41, v40, v42) & 1) == 0)
    {
      sub_21B34B634();

      v38 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v38);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = sub_21B232880(v3, *(v2 + 16), v9);
    v12 = v10;
    v13 = v11;
    if (!v1[2])
    {
      break;
    }

    v14 = sub_21B24BD44(v10, v11);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v1[7] + 8 * v14);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A434(v7);
      if ((v16 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v16 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370();

    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v17 = v7;
  v18 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v12;
  v21 = isUniquelyReferenced_nonNull_native;
  v22 = v20;
  v24 = sub_21B24BD44(v20, v13);
  v25 = v1[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (!__OFADD__(v25, v26))
  {
    v28 = v23;
    if (v1[3] < v27)
    {
      sub_21B24F738(v27, v21);
      v29 = sub_21B24BD44(v22, v13);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_48;
      }

      v24 = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v24) = v18;
LABEL_33:

      v7 = v17;
      v2 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B3A8(0, v17[2] + 1, 1, v17);
      }

      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        v7 = sub_21B24B3A8((v35 > 1), v36 + 1, 1, v7);
      }

      v7[2] = v36 + 1;
      v8 = &v7[5 * v36];
      v8[4] = v22;
      v8[5] = v13;
      v8[6] = v3;
      v8[7] = v3 + 1;
      *(v8 + 64) = 0;
      goto LABEL_11;
    }

    if (v21)
    {
      if (v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253D2C();
      if (v28)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v1[6] + 16 * v24);
    *v31 = v22;
    v31[1] = v13;
    *(v1[7] + 8 * v24) = v18;
    v32 = v1[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    v1[2] = v34;

    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E120, &qword_21B351998);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B31B1F0(uint64_t a1)
{
  v2 = sub_21B25F888(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v31 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = (v31 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = v2[2];

      if (!v10)
      {
        break;
      }

      v11 = sub_21B24BD44(v9, v8);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(v2[7] + 8 * v11);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A434(v5);
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v13 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);

      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v14 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2;
    v16 = sub_21B24BD44(v9, v8);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_21B24F738(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_21B24BD44(v9, v8);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v24 = v16;
    sub_21B253D2C();
    v16 = v24;
    v2 = v32;
    if ((v22 & 1) == 0)
    {
LABEL_19:
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v25 = (v2[6] + 16 * v16);
      *v25 = v9;
      v25[1] = v8;
      *(v2[7] + 8 * v16) = v14;
      v26 = v2[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_31;
      }

      v2[2] = v27;

      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v16) = v14;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B3A8(0, v5[2] + 1, 1, v5);
    }

    v29 = v5[2];
    v28 = v5[3];
    if (v29 >= v28 >> 1)
    {
      v5 = sub_21B24B3A8((v28 > 1), v29 + 1, 1, v5);
    }

    v5[2] = v29 + 1;
    v6 = &v5[5 * v29];
    v6[5] = v8;
    v6[6] = v4++;
    v6[4] = v9;
    v6[7] = v4;
    *(v6 + 64) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E120, &qword_21B351998);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B31B4C4()
{
  v1 = sub_21B25F984(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v40 = *(v0 + 32);
  v41 = v3;
  v42 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v42 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  v39 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v41, v40, v42) & 1) == 0)
    {
      sub_21B34B634();

      v38 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v38);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = sub_21B2B1790(v3, *(v2 + 16), v9);
    v12 = v10;
    v13 = v11;
    if (!v1[2])
    {
      break;
    }

    v14 = sub_21B24BDD8(v10, v11 & 1);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v1[7] + 8 * v14);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A448(v7);
      if ((v16 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v16 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370();
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v17 = v7;
  v18 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v13;
  v21 = isUniquelyReferenced_nonNull_native;
  v22 = v20;
  v24 = sub_21B24BDD8(v12, v20 & 1);
  v25 = v1[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (!__OFADD__(v25, v26))
  {
    v28 = v23;
    if (v1[3] < v27)
    {
      sub_21B24F9F8(v27, v21);
      v29 = sub_21B24BDD8(v12, v22 & 1);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_48;
      }

      v24 = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v24) = v18;
LABEL_33:
      v7 = v17;
      v2 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B3CC(0, v17[2] + 1, 1, v17);
      }

      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        v7 = sub_21B24B3CC((v35 > 1), v36 + 1, 1, v7);
      }

      v7[2] = v36 + 1;
      v8 = &v7[5 * v36];
      v8[4] = v12;
      *(v8 + 40) = v22 & 1;
      v8[6] = v3;
      v8[7] = v3 + 1;
      *(v8 + 64) = 0;
      goto LABEL_11;
    }

    if (v21)
    {
      if (v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253E90();
      if (v28)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v24 >> 6) + 8] |= 1 << v24;
    v31 = v1[6] + 16 * v24;
    *v31 = v12;
    *(v31 + 8) = v22 & 1;
    *(v1[7] + 8 * v24) = v18;
    v32 = v1[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    v1[2] = v34;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

void *sub_21B31B944(uint64_t a1)
{
  v2 = sub_21B25F984(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v30 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = v30 + 16 * v4;
      v8 = *v7;
      v9 = *(v7 + 8);
      if (!v2[2])
      {
        break;
      }

      v10 = sub_21B24BDD8(v8, v9);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v2[7] + 8 * v10);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A448(v5);
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v12 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v13 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2;
    v15 = sub_21B24BDD8(v8, v9);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_21B24F9F8(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_21B24BDD8(v8, v9);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v15;
    sub_21B253E90();
    v15 = v23;
    v2 = v31;
    if ((v21 & 1) == 0)
    {
LABEL_19:
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = v2[6] + 16 * v15;
      *v24 = v8;
      *(v24 + 8) = v9;
      *(v2[7] + 8 * v15) = v13;
      v25 = v2[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      v2[2] = v26;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v15) = v13;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B3CC(0, v5[2] + 1, 1, v5);
    }

    v28 = v5[2];
    v27 = v5[3];
    if (v28 >= v27 >> 1)
    {
      v5 = sub_21B24B3CC((v27 > 1), v28 + 1, 1, v5);
    }

    v5[2] = v28 + 1;
    v6 = &v5[5 * v28];
    v6[6] = v4++;
    v6[4] = v8;
    *(v6 + 40) = v9;
    v6[7] = v4;
    *(v6 + 64) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v11 = &v69 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5F8, &qword_21B357460);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - v14;
  *&v85 = a1;
  *(&v85 + 1) = a2;
  *&v86 = a3;

  DataFrame.subscript.getter(a4, a5, &v92);
  v84 = a3;

  v76 = *(a1 + 16);
  if (!v76)
  {

LABEL_6:
    v20 = 0;
    v22 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(a1 + 32, v89);
  v16 = v90;
  v17 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  v18 = *(v17 + 8);
  v19 = *(v18 + 48);

  v20 = v19(v16, v18);
  result = sub_21B233960(v89);
  if (v20 < 0)
  {
    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_6;
  }

  v22 = 0;
LABEL_7:
  sub_21B254074(0, v20, v22);

  sub_21B23A9F4(0, v20, v22);
  v23 = *(&v93 + 1);
  v24 = v94;
  __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
  (*(*(v24 + 8) + 160))(v89, 0, v20, v22, v23);
  sub_21B23A9F4(0, v20, v22);
  sub_21B233960(&v92);
  v25 = v90;
  v26 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  v27 = (*(*(v26 + 8) + 80))(v25);
  v28 = sub_21B34A834();
  if (v27 == v28)
  {
    sub_21B26EE10(&v92);
    v46 = sub_21B3184C0();
    sub_21B261664(&v92, &qword_27CD7E6E0, &qword_21B352300);
  }

  else
  {
    v29 = v28;
    v30 = a2;
    v31 = v90;
    v32 = v91;
    __swift_project_boxed_opaque_existential_1(v89, v90);
    v33 = (*(*(v32 + 8) + 48))(v31);
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v35 = v33;
      v81 = v11;
      v88 = MEMORY[0x277D84F90];
      sub_21B2540A8(0, v33 & ~(v33 >> 63), 0);
      v34 = v88;
      v36 = v90;
      v37 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      result = (*(*(v37 + 8) + 32))(v36);
      if (v35 < 0)
      {
        goto LABEL_35;
      }

      v38 = result;
      v82 = v29 - 8;
      do
      {
        v39 = v90;
        v40 = v91;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        (*(*(v40 + 8) + 128))(&v92, v38, v39);
        v85 = v92;
        v86 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v41 = swift_dynamicCast();
        (*(*(v29 - 8) + 56))(v15, v41 ^ 1u, 1, v29);
        v88 = v34;
        v43 = *(v34 + 16);
        v42 = *(v34 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_21B2540A8((v42 > 1), v43 + 1, 1);
          v34 = v88;
        }

        *(v34 + 16) = v43 + 1;
        sub_21B326B74(v15, v34 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v43, &qword_27CD7E100, &unk_21B352A30);
        v44 = v90;
        v45 = v91;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        v38 = (*(*(v45 + 8) + 64))(v38, v44);
        --v35;
      }

      while (v35);
      v11 = v81;
    }

    v46 = sub_21B318B28(v34);

    a2 = v30;
  }

  v47 = v70;
  v48 = sub_21B2A6F6C(v46);

  v49 = *(v48 + 16);
  if (!v49)
  {

    v51 = MEMORY[0x277D84F90];
LABEL_31:
    sub_21B25F000(v89);
    return v51;
  }

  v88 = MEMORY[0x277D84F90];
  result = sub_21B2543A8(0, v49, 0);
  v50 = 0;
  v73 = v48 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
  v51 = v88;
  v72 = v48;
  v71 = v49;
  while (v50 < *(v48 + 16))
  {
    v83 = v51;
    sub_21B2615FC(v73 + *(v78 + 72) * v50, v11, &qword_27CD7EC48, &qword_21B354890);
    v52 = &v11[*(v77 + 48)];
    v53 = *v52;
    v82 = *(v52 + 1);
    LODWORD(v81) = v52[16];
    sub_21B2615FC(v11, v47, &qword_27CD7E100, &unk_21B352A30);
    if (!v76)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
LABEL_25:
      v60 = 0;
      v61 = 2;
      goto LABEL_26;
    }

    v79 = v50;
    v54 = v53;
    v55 = v11;
    sub_21B233A74(a1 + 32, &v85);
    v56 = a2;
    v57 = *(&v86 + 1);
    v58 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
    v59 = *(v58 + 8);
    v80 = *(v59 + 48);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v60 = v80(v57, v59);
    result = sub_21B233960(&v85);
    if (v60 < 0)
    {
      goto LABEL_33;
    }

    a2 = v56;
    v11 = v55;
    v47 = v70;
    v53 = v54;
    v50 = v79;
    if (!v60)
    {
      goto LABEL_25;
    }

    v61 = 0;
LABEL_26:
    v62 = v47 + *(v75 + 48);
    sub_21B254074(0, v60, v61);
    v63 = v84;

    sub_21B23A9F4(0, v60, v61);
    v64 = sub_21B248CCC(v53, v82, v81, 0, v60, v61);
    *v62 = a1;
    *(v62 + 8) = a2;
    *(v62 + 16) = v63;
    *(v62 + 24) = v64;
    *(v62 + 32) = v65;
    *(v62 + 40) = v66;
    sub_21B261664(v11, &qword_27CD7EC48, &qword_21B354890);
    v51 = v83;
    v88 = v83;
    v68 = *(v83 + 16);
    v67 = *(v83 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_21B2543A8((v67 > 1), v68 + 1, 1);
      v51 = v88;
    }

    ++v50;
    *(v51 + 16) = v68 + 1;
    result = sub_21B326B74(v47, v51 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v68, &qword_27CD7F5F8, &qword_21B357460);
    v48 = v72;
    if (v71 == v50)
    {

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_21B31C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = a3;

  DataFrame.subscript.getter(a4, a5, &v85);

  v76 = a3;
  v64 = *(a1 + 16);
  if (!v64)
  {

LABEL_6:
    v14 = 0;
    v16 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(a1 + 32, v82);
  v10 = v83;
  v11 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v12 = *(v11 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v10, v12);
  result = sub_21B233960(v82);
  if (v14 < 0)
  {
    goto LABEL_36;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  v16 = 0;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v86 + 1);
  v18 = v87;
  __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
  (*(*(v18 + 8) + 160))(v82, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v85);
  v19 = v83;
  v20 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v63 = a2;
  v75 = a1;
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277CC9318])
  {
    sub_21B26F088(&v85);
    v36 = sub_21B318FFC();
    sub_21B261664(&v85, &qword_27CD7E6D8, &qword_21B3522F8);
  }

  else
  {
    v21 = v83;
    v22 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v81 = MEMORY[0x277D84F90];
      sub_21B2540C8(0, v23 & ~(v23 >> 63), 0);
      v24 = v81;
      v26 = v83;
      v27 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
        goto LABEL_37;
      }

      v28 = result;
      do
      {
        v29 = v83;
        v30 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        (*(*(v30 + 8) + 128))(&v85, v28, v29);
        v77 = v85;
        v78 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v31 = v80;
        }

        else
        {
          v31 = xmmword_21B351960;
          v80 = xmmword_21B351960;
        }

        v81 = v24;
        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        if (v33 >= v32 >> 1)
        {
          v72 = v31;
          sub_21B2540C8((v32 > 1), v33 + 1, 1);
          v31 = v72;
          v24 = v81;
        }

        *(v24 + 16) = v33 + 1;
        *(v24 + 16 * v33 + 32) = v31;
        v34 = v83;
        v35 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v28 = (*(*(v35 + 8) + 64))(v28, v34);
        --v25;
      }

      while (v25);
    }

    v36 = sub_21B3194F4(v24);
  }

  v37 = sub_21B2A7194(v36);

  v38 = *(v37 + 16);
  if (!v38)
  {

    v40 = MEMORY[0x277D84F90];
LABEL_33:
    sub_21B25F000(v82);
    return v40;
  }

  *&v80 = MEMORY[0x277D84F90];
  result = sub_21B2543E8(0, v38, 0);
  v39 = 0;
  v40 = v80;
  v41 = (v37 + 64);
  v61 = v38;
  v62 = v37;
  while (v39 < *(v37 + 16))
  {
    v74 = v40;
    v42 = *(v41 - 4);
    v43 = *(v41 - 3);
    v45 = *(v41 - 2);
    v44 = *(v41 - 1);
    v46 = *v41;
    v73 = v42;
    v71 = *v41;
    if (!v64)
    {
      swift_bridgeObjectRetain_n();
      v48 = v63;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_21B260DAC(v42, v43);
      v49 = v45;
      v54 = v45;
      v51 = v44;
      sub_21B254074(v54, v44, v46);
      sub_21B260DAC(v42, v43);
LABEL_27:
      v52 = 0;
      v53 = 2;
      goto LABEL_28;
    }

    sub_21B233A74(v75 + 32, &v77);
    v47 = v79;
    v69 = *(&v78 + 1);
    __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    v65 = *(v47 + 8);
    v66 = *(v65 + 48);
    swift_bridgeObjectRetain_n();
    v48 = v63;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_21B260DAC(v42, v43);
    v49 = v45;
    v50 = v45;
    v51 = v44;
    sub_21B254074(v50, v44, v46);
    sub_21B260DAC(v42, v43);
    v52 = v66(v69, v65);
    result = sub_21B233960(&v77);
    if (v52 < 0)
    {
      goto LABEL_35;
    }

    if (!v52)
    {
      goto LABEL_27;
    }

    v53 = 0;
LABEL_28:
    sub_21B254074(0, v52, v53);

    sub_21B23A9F4(0, v52, v53);
    v55 = sub_21B248CCC(v49, v51, v71, 0, v52, v53);
    v67 = v56;
    v68 = v55;
    v70 = v57;
    sub_21B260C58(v73, v43);
    result = sub_21B23A9F4(v49, v51, v71);
    v40 = v74;
    *&v80 = v74;
    v59 = *(v74 + 16);
    v58 = *(v74 + 24);
    if (v59 >= v58 >> 1)
    {
      result = sub_21B2543E8((v58 > 1), v59 + 1, 1);
      v40 = v80;
    }

    ++v39;
    *(v40 + 16) = v59 + 1;
    v60 = v40 + (v59 << 6);
    *(v60 + 32) = v73;
    *(v60 + 40) = v43;
    *(v60 + 48) = v75;
    *(v60 + 56) = v48;
    *(v60 + 64) = v76;
    *(v60 + 72) = v68;
    *(v60 + 80) = v67;
    v41 += 40;
    *(v60 + 88) = v70;
    v37 = v62;
    if (v61 == v39)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21B31CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = a3;

  DataFrame.subscript.getter(a4, a5, &v85);

  v76 = a2;

  v10 = a1;
  v68 = *(a1 + 16);
  if (!v68)
  {

LABEL_6:
    v15 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(a1 + 32, v82);
  v11 = v83;
  v12 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v13 = *(v12 + 8);
  v14 = *(v13 + 48);

  v15 = v14(v11, v13);
  result = sub_21B233960(v82);
  if (v15 < 0)
  {
    goto LABEL_36;
  }

  if (!v15)
  {
    goto LABEL_6;
  }

  v17 = 0;
LABEL_7:
  sub_21B254074(0, v15, v17);

  sub_21B23A9F4(0, v15, v17);
  v18 = *(&v86 + 1);
  v19 = v87;
  __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
  (*(*(v19 + 8) + 160))(v82, 0, v15, v17, v18);
  sub_21B23A9F4(0, v15, v17);
  sub_21B233960(&v85);
  v20 = v83;
  v21 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  if ((*(*(v21 + 8) + 80))(v20) == MEMORY[0x277D839B0])
  {
    sub_21B26E924(&v85);
    v37 = sub_21B3197F8();
    sub_21B261664(&v85, &qword_27CD7E6F0, &qword_21B352310);
  }

  else
  {
    v22 = v83;
    v23 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v24 = (*(*(v23 + 8) + 48))(v22);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v26 = v24;
      v81 = MEMORY[0x277D84F90];
      sub_21B2540E8(0, v24 & ~(v24 >> 63), 0);
      v25 = v81;
      v27 = v83;
      v28 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      result = (*(*(v28 + 8) + 32))(v27);
      if (v26 < 0)
      {
        goto LABEL_37;
      }

      v29 = result;
      do
      {
        v30 = v83;
        v31 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        (*(*(v31 + 8) + 128))(&v85, v29, v30);
        v77 = v85;
        v78 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v32 = v80;
        }

        else
        {
          v32 = 2;
        }

        v81 = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_21B2540E8((v33 > 1), v34 + 1, 1);
          v25 = v81;
        }

        *(v25 + 16) = v34 + 1;
        *(v25 + v34 + 32) = v32;
        v35 = v83;
        v36 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v29 = (*(*(v36 + 8) + 64))(v29, v35);
        --v26;
      }

      while (v26);
    }

    v37 = sub_21B319C34(v25);
  }

  v38 = sub_21B2A72F4(v37);

  v39 = *(v38 + 16);
  if (!v39)
  {

    v41 = MEMORY[0x277D84F90];
LABEL_33:
    sub_21B25F000(v82);
    return v41;
  }

  v81 = MEMORY[0x277D84F90];
  result = sub_21B254428(0, v39, 0);
  v40 = 0;
  v41 = v81;
  v42 = (v38 + 56);
  v66 = v39;
  v67 = v38;
  while (v40 < *(v38 + 16))
  {
    v75 = v41;
    v74 = *(v42 - 24);
    v43 = *(v42 - 2);
    v44 = *(v42 - 1);
    v45 = *v42;
    v72 = v43;
    v73 = v40;
    if (!v68)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v53 = v7;
      swift_bridgeObjectRetain_n();
      v55 = v44;
      sub_21B254074(v43, v44, v45);
LABEL_27:
      v57 = 0;
      v58 = 2;
      goto LABEL_28;
    }

    v46 = v10;
    sub_21B233A74(v10 + 32, &v77);
    v70 = *(&v78 + 1);
    v47 = v45;
    v48 = v79;
    __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    v49 = *(v48 + 8);
    v50 = v7;
    v51 = *(v49 + 48);
    v52 = v46;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v53 = v50;
    swift_bridgeObjectRetain_n();
    v54 = v43;
    v55 = v44;
    v56 = v47;
    sub_21B254074(v54, v44, v47);
    v57 = v51(v70, v49);
    result = sub_21B233960(&v77);
    if (v57 < 0)
    {
      goto LABEL_35;
    }

    v10 = v52;
    v45 = v56;
    if (!v57)
    {
      goto LABEL_27;
    }

    v58 = 0;
LABEL_28:
    sub_21B254074(0, v57, v58);

    sub_21B23A9F4(0, v57, v58);
    v71 = sub_21B248CCC(v72, v55, v45, 0, v57, v58);
    v59 = v45;
    v61 = v60;
    v69 = v62;
    result = sub_21B23A9F4(v72, v55, v59);
    v41 = v75;
    v81 = v75;
    v64 = *(v75 + 16);
    v63 = *(v75 + 24);
    if (v64 >= v63 >> 1)
    {
      result = sub_21B254428((v63 > 1), v64 + 1, 1);
      v41 = v81;
    }

    *(v41 + 16) = v64 + 1;
    v65 = v41 + 56 * v64;
    *(v65 + 32) = v74;
    v40 = v73 + 1;
    *(v65 + 40) = v10;
    *(v65 + 48) = v76;
    v7 = v53;
    *(v65 + 56) = v53;
    *(v65 + 64) = v71;
    *(v65 + 72) = v61;
    *(v65 + 80) = v69;
    v42 += 32;
    v38 = v67;
    if (v66 == v73 + 1)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21B31D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  *&v81 = a1;
  *(&v81 + 1) = a2;
  *&v82 = a3;

  DataFrame.subscript.getter(a4, a5, &v90);

  v69 = v9;
  v70 = a3;
  v73 = *(v9 + 16);
  v74 = a2;
  if (v73)
  {
    sub_21B233A74(v9 + 32, v87);
    v10 = v88;
    v11 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v12 = *(v11 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    result = sub_21B233960(v87);
    if (v14 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = 0;
  v16 = 2;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v91 + 1);
  v18 = v92;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
  (*(*(v18 + 8) + 160))(v87, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v90);
  v19 = v88;
  v20 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277D839F8])
  {
    sub_21B26E6AC(&v90);
    v39 = sub_21B319ECC();
    sub_21B261664(&v90, &qword_27CD7E6F8, &qword_21B352318);
  }

  else
  {
    v21 = v88;
    v22 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v86 = MEMORY[0x277D84F90];
      sub_21B254148(0, v23 & ~(v23 >> 63), 0);
      v24 = v86;
      v26 = v88;
      v27 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      v28 = result;
      do
      {
        v29 = v88;
        v30 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        (*(*(v30 + 8) + 128))(&v90, v28, v29);
        v81 = v90;
        v82 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v31 = swift_dynamicCast();
        if (v31)
        {
          v32 = v85;
        }

        else
        {
          v32 = 0;
        }

        v86 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          v38 = v31;
          sub_21B254148((v33 > 1), v34 + 1, 1);
          LOBYTE(v31) = v38;
          v24 = v86;
        }

        *(v24 + 16) = v34 + 1;
        v35 = v24 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31 ^ 1;
        v36 = v88;
        v37 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v28 = (*(*(v37 + 8) + 64))(v28, v36);
        --v25;
      }

      while (v25);
    }

    v39 = sub_21B31A34C(v24);
  }

  v40 = sub_21B2A7448(v39);

  v41 = *(v40 + 16);
  v42 = v70;
  if (v41)
  {
    v85 = MEMORY[0x277D84F90];
    result = sub_21B254468(0, v41, 0);
    if (*(v40 + 16))
    {
      v43 = 0;
      v44 = v85;
      v45 = (v40 + 64);
      v71 = v41 - 1;
      v72 = v40;
      do
      {
        v78 = *(v45 - 4);
        v79 = v44;
        v80 = *(v45 - 24);
        v46 = *(v45 - 2);
        v47 = *(v45 - 1);
        v48 = *v45;
        if (v73)
        {
          sub_21B233A74(v9 + 32, &v81);
          v76 = v48;
          v49 = *(&v82 + 1);
          v50 = v83;
          __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          v51 = *(v50 + 8);
          v75 = *(v51 + 48);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v52 = v76;
          sub_21B254074(v46, v47, v76);
          v53 = v75(v49, v51);
          result = sub_21B233960(&v81);
          if (v53 < 0)
          {
            goto LABEL_37;
          }

          v9 = v69;
          v54 = v70;
          if (v53)
          {
            v55 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v54 = v42;
          swift_bridgeObjectRetain_n();
          sub_21B254074(v46, v47, v48);
          v52 = v48;
        }

        v53 = 0;
        v55 = 2;
LABEL_28:
        sub_21B254074(0, v53, v55);

        sub_21B23A9F4(0, v53, v55);
        v56 = sub_21B248CCC(v46, v47, v52, 0, v53, v55);
        v57 = v52;
        v58 = v9;
        v59 = v56;
        v77 = v60;
        v62 = v61;
        result = sub_21B23A9F4(v46, v47, v57);
        v63 = v80;
        v84 = v80;
        LODWORD(v81) = v86;
        *(&v81 + 3) = *(&v86 + 3);
        v44 = v79;
        v85 = v79;
        v65 = *(v79 + 16);
        v64 = *(v79 + 24);
        v66 = v58;
        if (v65 >= v64 >> 1)
        {
          result = sub_21B254468((v64 > 1), v65 + 1, 1);
          v63 = v80;
          v44 = v85;
        }

        *(v44 + 16) = v65 + 1;
        v67 = v44 + (v65 << 6);
        *(v67 + 32) = v78;
        *(v67 + 40) = v63;
        v68 = *(&v81 + 3);
        *(v67 + 41) = v81;
        *(v67 + 44) = v68;
        *(v67 + 48) = v58;
        *(v67 + 56) = v74;
        *(v67 + 64) = v54;
        *(v67 + 72) = v59;
        *(v67 + 80) = v77;
        *(v67 + 88) = v62;
        if (v71 == v43)
        {

          goto LABEL_35;
        }

        v42 = v54;
        v9 = v66;
        v45 += 40;
        ++v43;
      }

      while (v43 < *(v72 + 16));
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_35:
  sub_21B25F000(v87);
  return v44;
}

uint64_t sub_21B31DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = a3;

  DataFrame.subscript.getter(a4, a5, &v86);

  v65 = a3;
  v69 = a1;
  v70 = a2;
  v68 = *(a1 + 16);
  if (v68)
  {
    sub_21B233A74(a1 + 32, v83);
    v10 = v84;
    v11 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v12 = *(v11 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    result = sub_21B233960(v83);
    if (v14 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = 0;
  v16 = 2;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v87 + 1);
  v18 = v88;
  __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
  (*(*(v18 + 8) + 160))(v83, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v86);
  v19 = v84;
  v20 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277D83A90])
  {
    sub_21B26E434(&v86);
    v39 = sub_21B31A614();
    sub_21B261664(&v86, &qword_27CD7E700, &qword_21B352320);
  }

  else
  {
    v21 = v84;
    v22 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v82 = MEMORY[0x277D84F90];
      sub_21B254128(0, v23 & ~(v23 >> 63), 0);
      v24 = v82;
      v26 = v84;
      v27 = v85;
      __swift_project_boxed_opaque_existential_1(v83, v84);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      v28 = result;
      do
      {
        v29 = v84;
        v30 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        (*(*(v30 + 8) + 128))(&v86, v28, v29);
        v77 = v86;
        v78 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v31 = swift_dynamicCast();
        if (v31)
        {
          v32 = v81;
        }

        else
        {
          v32 = 0;
        }

        v82 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          v38 = v31;
          sub_21B254128((v33 > 1), v34 + 1, 1);
          LOBYTE(v31) = v38;
          v24 = v82;
        }

        *(v24 + 16) = v34 + 1;
        v35 = v24 + 8 * v34;
        *(v35 + 32) = v32;
        *(v35 + 36) = v31 ^ 1;
        v36 = v84;
        v37 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        v28 = (*(*(v37 + 8) + 64))(v28, v36);
        --v25;
      }

      while (v25);
    }

    v39 = sub_21B31AA98(v24);
  }

  v40 = sub_21B2A75A8(v39);

  v41 = *(v40 + 16);
  v42 = v65;
  if (v41)
  {
    v82 = MEMORY[0x277D84F90];
    result = sub_21B2544A8(0, v41, 0);
    v43 = v69;
    if (*(v40 + 16))
    {
      v44 = 0;
      v45 = 0;
      v46 = v82;
      v66 = v41 - 1;
      v67 = v40;
      do
      {
        v76 = v46;
        v71 = v44;
        v74 = *(v40 + v44 + 32);
        v75 = *(v40 + v44 + 36);
        v47 = *(v40 + v44 + 40);
        v48 = *(v40 + v44 + 48);
        v49 = *(v40 + v44 + 56);
        if (v68)
        {
          sub_21B233A74(v43 + 32, &v77);
          v50 = *(&v78 + 1);
          v51 = v79;
          __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
          v52 = *(v51 + 8);
          v53 = *(v52 + 48);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_21B254074(v47, v48, v49);
          v54 = v53(v50, v52);
          result = sub_21B233960(&v77);
          if (v54 < 0)
          {
            goto LABEL_37;
          }

          v55 = v65;
          v56 = v70;
          if (v54)
          {
            v57 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v56 = v70;
          swift_bridgeObjectRetain_n();
          v55 = v42;
          swift_bridgeObjectRetain_n();
          sub_21B254074(v47, v48, v49);
        }

        v54 = 0;
        v57 = 2;
LABEL_28:
        sub_21B254074(0, v54, v57);

        v43 = v69;

        sub_21B23A9F4(0, v54, v57);
        v73 = sub_21B248CCC(v47, v48, v49, 0, v54, v57);
        v59 = v58;
        v72 = v60;
        result = sub_21B23A9F4(v47, v48, v49);
        v80 = v75;
        LOWORD(v77) = v81;
        BYTE2(v77) = BYTE2(v81);
        v46 = v76;
        v82 = v76;
        v62 = *(v76 + 16);
        v61 = *(v76 + 24);
        if (v62 >= v61 >> 1)
        {
          result = sub_21B2544A8((v61 > 1), v62 + 1, 1);
          v46 = v82;
        }

        *(v46 + 16) = v62 + 1;
        v63 = v46 + 56 * v62;
        *(v63 + 32) = v74;
        *(v63 + 36) = v75;
        v64 = BYTE2(v77);
        *(v63 + 37) = v77;
        *(v63 + 39) = v64;
        *(v63 + 40) = v69;
        *(v63 + 48) = v56;
        *(v63 + 56) = v55;
        *(v63 + 64) = v73;
        *(v63 + 72) = v59;
        *(v63 + 80) = v72;
        v40 = v67;
        if (v66 == v45)
        {

          goto LABEL_35;
        }

        v42 = v55;
        ++v45;
        v44 = v71 + 32;
      }

      while (v45 < *(v67 + 16));
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_35:
  sub_21B25F000(v83);
  return v46;
}

uint64_t sub_21B31E13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v9 = a1;
  *&v80 = a1;
  *(&v80 + 1) = a2;
  *&v81 = a3;

  DataFrame.subscript.getter(a4, a5, &v89);

  v68 = *(v9 + 16);
  if (!v68)
  {

    v16 = a2;

LABEL_6:
    v14 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(v9 + 32, v86);
  v10 = v87;
  v11 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v12 = *(v11 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v10, v12);
  result = sub_21B233960(v86);
  if (v14 < 0)
  {
    goto LABEL_40;
  }

  v16 = a2;
  if (!v14)
  {
    goto LABEL_6;
  }

  v17 = 0;
LABEL_7:
  sub_21B254074(0, v14, v17);

  sub_21B23A9F4(0, v14, v17);
  v18 = *(&v90 + 1);
  v19 = v91;
  __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
  (*(*(v19 + 8) + 160))(v86, 0, v14, v17, v18);
  sub_21B23A9F4(0, v14, v17);
  sub_21B233960(&v89);
  v20 = v87;
  v21 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v65 = v9;
  if ((*(*(v21 + 8) + 80))(v20) == MEMORY[0x277D837D0])
  {
    sub_21B26EB98(&v89);
    v40 = sub_21B31AD68();
    sub_21B261664(&v89, &qword_27CD7E6E8, &qword_21B352308);
  }

  else
  {
    v22 = v87;
    v23 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v24 = (*(*(v23 + 8) + 48))(v22);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v26 = v24;
      v78 = v7;
      v85 = MEMORY[0x277D84F90];
      sub_21B254108(0, v24 & ~(v24 >> 63), 0);
      v25 = v85;
      v27 = v87;
      v28 = v88;
      __swift_project_boxed_opaque_existential_1(v86, v87);
      result = (*(*(v28 + 8) + 32))(v27);
      if (v26 < 0)
      {
        goto LABEL_41;
      }

      v29 = result;
      v76 = v16;
      do
      {
        v30 = v87;
        v31 = v88;
        __swift_project_boxed_opaque_existential_1(v86, v87);
        (*(*(v31 + 8) + 128))(&v89, v29, v30);
        v80 = v89;
        v81 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v32 = swift_dynamicCast();
        if (v32)
        {
          v33 = v84;
        }

        else
        {
          v33 = 0;
        }

        if (v32)
        {
          v34 = v83;
        }

        else
        {
          v34 = 0;
        }

        v85 = v25;
        v36 = *(v25 + 16);
        v35 = *(v25 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_21B254108((v35 > 1), v36 + 1, 1);
          v25 = v85;
        }

        *(v25 + 16) = v36 + 1;
        v37 = v25 + 16 * v36;
        *(v37 + 32) = v34;
        *(v37 + 40) = v33;
        v38 = v87;
        v39 = v88;
        __swift_project_boxed_opaque_existential_1(v86, v87);
        v29 = (*(*(v39 + 8) + 64))(v29, v38);
        --v26;
      }

      while (v26);
      v16 = v76;
      v7 = v78;
    }

    v40 = sub_21B31B1F0(v25);
  }

  v41 = sub_21B2A7708(v40);

  v42 = *(v41 + 16);
  if (!v42)
  {

    v45 = MEMORY[0x277D84F90];
LABEL_37:
    sub_21B25F000(v86);
    return v45;
  }

  v43 = v16;
  v83 = MEMORY[0x277D84F90];
  result = sub_21B2544E8(0, v42, 0);
  v44 = 0;
  v45 = v83;
  v46 = (v41 + 64);
  v66 = v42;
  v67 = v41;
  while (v44 < *(v41 + 16))
  {
    v79 = v45;
    v75 = v44;
    v77 = *(v46 - 4);
    v47 = *(v46 - 2);
    v48 = *(v46 - 1);
    v49 = *v46;
    v74 = *(v46 - 3);
    if (!v68)
    {
      swift_bridgeObjectRetain_n();
      v57 = v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v55 = v49;
      sub_21B254074(v47, v48, v49);
LABEL_31:
      v56 = 0;
      v58 = 2;
      goto LABEL_32;
    }

    sub_21B233A74(v9 + 32, &v80);
    v50 = v82;
    v72 = *(&v81 + 1);
    __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    v69 = *(v50 + 8);
    v51 = v43;
    v52 = v7;
    v53 = v51;
    v70 = *(v69 + 48);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v54 = v53;
    swift_bridgeObjectRetain_n();
    v7 = v52;
    swift_bridgeObjectRetain_n();
    v55 = v49;
    sub_21B254074(v47, v48, v49);
    v56 = v70(v72, v69);
    result = sub_21B233960(&v80);
    if (v56 < 0)
    {
      goto LABEL_39;
    }

    v43 = v54;
    v57 = v65;
    if (!v56)
    {
      goto LABEL_31;
    }

    v58 = 0;
LABEL_32:
    sub_21B254074(0, v56, v58);

    sub_21B23A9F4(0, v56, v58);
    v59 = sub_21B248CCC(v47, v48, v55, 0, v56, v58);
    v71 = v60;
    v73 = v61;

    result = sub_21B23A9F4(v47, v48, v55);
    v45 = v79;
    v83 = v79;
    v63 = *(v79 + 16);
    v62 = *(v79 + 24);
    if (v63 >= v62 >> 1)
    {
      result = sub_21B2544E8((v62 > 1), v63 + 1, 1);
      v45 = v83;
    }

    v44 = v75 + 1;
    *(v45 + 16) = v63 + 1;
    v64 = v45 + (v63 << 6);
    *(v64 + 32) = v77;
    *(v64 + 40) = v74;
    *(v64 + 48) = v57;
    *(v64 + 56) = v43;
    *(v64 + 64) = v7;
    *(v64 + 72) = v59;
    *(v64 + 80) = v71;
    v46 += 40;
    *(v64 + 88) = v73;
    v9 = v57;
    v41 = v67;
    if (v66 == v75 + 1)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_21B31E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  *&v81 = a1;
  *(&v81 + 1) = a2;
  *&v82 = a3;

  DataFrame.subscript.getter(a4, a5, &v90);

  v69 = v9;
  v70 = a3;
  v73 = *(v9 + 16);
  v74 = a2;
  if (v73)
  {
    sub_21B233A74(v9 + 32, v87);
    v10 = v88;
    v11 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v12 = *(v11 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    result = sub_21B233960(v87);
    if (v14 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = 0;
  v16 = 2;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v91 + 1);
  v18 = v92;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
  (*(*(v18 + 8) + 160))(v87, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v90);
  v19 = v88;
  v20 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277D83B88])
  {
    sub_21B26DF44(&v90);
    v39 = sub_21B31B4C4();
    sub_21B261664(&v90, &qword_27CD7E710, &qword_21B352330);
  }

  else
  {
    v21 = v88;
    v22 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v86 = MEMORY[0x277D84F90];
      sub_21B254168(0, v23 & ~(v23 >> 63), 0);
      v24 = v86;
      v26 = v88;
      v27 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      v28 = result;
      do
      {
        v29 = v88;
        v30 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        (*(*(v30 + 8) + 128))(&v90, v28, v29);
        v81 = v90;
        v82 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v31 = swift_dynamicCast();
        if (v31)
        {
          v32 = v85;
        }

        else
        {
          v32 = 0;
        }

        v86 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          v38 = v31;
          sub_21B254168((v33 > 1), v34 + 1, 1);
          LOBYTE(v31) = v38;
          v24 = v86;
        }

        *(v24 + 16) = v34 + 1;
        v35 = v24 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31 ^ 1;
        v36 = v88;
        v37 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v28 = (*(*(v37 + 8) + 64))(v28, v36);
        --v25;
      }

      while (v25);
    }

    v39 = sub_21B31B944(v24);
  }

  v40 = sub_21B2A7868(v39);

  v41 = *(v40 + 16);
  v42 = v70;
  if (v41)
  {
    v85 = MEMORY[0x277D84F90];
    result = sub_21B254528(0, v41, 0);
    if (*(v40 + 16))
    {
      v43 = 0;
      v44 = v85;
      v45 = (v40 + 64);
      v71 = v41 - 1;
      v72 = v40;
      do
      {
        v78 = *(v45 - 4);
        v79 = v44;
        v80 = *(v45 - 24);
        v46 = *(v45 - 2);
        v47 = *(v45 - 1);
        v48 = *v45;
        if (v73)
        {
          sub_21B233A74(v9 + 32, &v81);
          v76 = v48;
          v49 = *(&v82 + 1);
          v50 = v83;
          __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          v51 = *(v50 + 8);
          v75 = *(v51 + 48);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v52 = v76;
          sub_21B254074(v46, v47, v76);
          v53 = v75(v49, v51);
          result = sub_21B233960(&v81);
          if (v53 < 0)
          {
            goto LABEL_37;
          }

          v9 = v69;
          v54 = v70;
          if (v53)
          {
            v55 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v54 = v42;
          swift_bridgeObjectRetain_n();
          sub_21B254074(v46, v47, v48);
          v52 = v48;
        }

        v53 = 0;
        v55 = 2;
LABEL_28:
        sub_21B254074(0, v53, v55);

        sub_21B23A9F4(0, v53, v55);
        v56 = sub_21B248CCC(v46, v47, v52, 0, v53, v55);
        v57 = v52;
        v58 = v9;
        v59 = v56;
        v77 = v60;
        v62 = v61;
        result = sub_21B23A9F4(v46, v47, v57);
        v63 = v80;
        v84 = v80;
        LODWORD(v81) = v86;
        *(&v81 + 3) = *(&v86 + 3);
        v44 = v79;
        v85 = v79;
        v65 = *(v79 + 16);
        v64 = *(v79 + 24);
        v66 = v58;
        if (v65 >= v64 >> 1)
        {
          result = sub_21B254528((v64 > 1), v65 + 1, 1);
          v63 = v80;
          v44 = v85;
        }

        *(v44 + 16) = v65 + 1;
        v67 = v44 + (v65 << 6);
        *(v67 + 32) = v78;
        *(v67 + 40) = v63;
        v68 = *(&v81 + 3);
        *(v67 + 41) = v81;
        *(v67 + 44) = v68;
        *(v67 + 48) = v58;
        *(v67 + 56) = v74;
        *(v67 + 64) = v54;
        *(v67 + 72) = v59;
        *(v67 + 80) = v77;
        *(v67 + 88) = v62;
        if (v71 == v43)
        {

          goto LABEL_35;
        }

        v42 = v54;
        v9 = v66;
        v45 += 40;
        ++v43;
      }

      while (v43 < *(v72 + 16));
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_35:
  sub_21B25F000(v87);
  return v44;
}

char *sub_21B31EF1C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v7 = &v61 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5F8, &qword_21B357460);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v73 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  v84 = *a1;
  v85 = *(a1 + 2);
  v75 = *a1;
  *&v76 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3, &v86);
  v82 = *(a1 + 24);
  v13 = *(a1 + 40);
  v83 = v13;
  v14 = v82;
  sub_21B2A62E0(&v84, v79);
  sub_21B2615FC(&v82, v79, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v14, *(&v14 + 1), v13);

  sub_21B23A9F4(v14, *(&v14 + 1), v13);
  v16 = *(&v87 + 1);
  v15 = v88;
  __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
  (*(*(v15 + 8) + 160))(v79, v14, *(&v14 + 1), v13, v16);
  sub_21B23A9F4(v14, *(&v14 + 1), v13);
  sub_21B233960(&v86);
  v17 = v80;
  v18 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v19 = (*(*(v18 + 8) + 80))(v17);
  v20 = sub_21B34A834();
  v70 = v7;
  if (v19 == v20)
  {
    sub_21B26EE10(&v86);
    v38 = sub_21B3184C0();
    sub_21B261664(&v86, &qword_27CD7E6E0, &qword_21B352300);
  }

  else
  {
    v21 = v20;
    v23 = v80;
    v22 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v24 = (*(*(v22 + 8) + 48))(v23);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v26 = v24;
      v74[0] = MEMORY[0x277D84F90];
      sub_21B2540A8(0, v24 & ~(v24 >> 63), 0);
      v25 = v74[0];
      v28 = v80;
      v27 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      result = (*(*(v27 + 8) + 32))(v28);
      if (v26 < 0)
      {
        goto LABEL_28;
      }

      v30 = result;
      do
      {
        v31 = v80;
        v32 = v81;
        __swift_project_boxed_opaque_existential_1(v79, v80);
        (*(*(v32 + 8) + 128))(&v86, v30, v31);
        v75 = v86;
        v76 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v33 = swift_dynamicCast();
        (*(*(v21 - 8) + 56))(v12, v33 ^ 1u, 1, v21);
        v74[0] = v25;
        v35 = *(v25 + 16);
        v34 = *(v25 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21B2540A8((v34 > 1), v35 + 1, 1);
          v25 = v74[0];
        }

        *(v25 + 16) = v35 + 1;
        sub_21B326B74(v12, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v35, &qword_27CD7E100, &unk_21B352A30);
        v36 = v80;
        v37 = v81;
        __swift_project_boxed_opaque_existential_1(v79, v80);
        v30 = (*(*(v37 + 8) + 64))(v30, v36);
        --v26;
      }

      while (v26);
      v7 = v70;
    }

    v38 = sub_21B318B28(v25);
  }

  v39 = sub_21B2A6F6C(v38);

  v40 = *(v39 + 16);
  v41 = v73;
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_25:
    sub_21B25F000(v79);
    return v43;
  }

  v78 = MEMORY[0x277D84F90];
  result = sub_21B2543A8(0, v40, 0);
  v42 = 0;
  v66 = v39 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v43 = v78;
  v62 = v84;
  v65 = *(v84 + 16);
  v64 = v39;
  v63 = v40;
  while (v42 < *(v39 + 16))
  {
    v73 = v43;
    sub_21B2615FC(v66 + *(v71 + 72) * v42, v7, &qword_27CD7EC48, &qword_21B354890);
    v44 = &v7[*(v69 + 48)];
    v45 = *v44;
    v46 = *(v44 + 1);
    v47 = v44[16];
    sub_21B2615FC(v7, v41, &qword_27CD7E100, &unk_21B352A30);
    v72 = v47;
    if (!v65)
    {
      sub_21B2A62E0(&v84, v74);
      sub_21B2A62E0(&v84, v74);
LABEL_19:
      v52 = 0;
      v53 = 2;
      goto LABEL_20;
    }

    sub_21B233A74(v62 + 32, &v75);
    v48 = *(&v76 + 1);
    v49 = v77;
    __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    v50 = *(v49 + 8);
    v51 = *(v50 + 48);
    sub_21B2A62E0(&v84, v74);
    sub_21B2A62E0(&v84, v74);
    v52 = v51(v48, v50);
    result = sub_21B233960(&v75);
    if (v52 < 0)
    {
      goto LABEL_27;
    }

    if (!v52)
    {
      goto LABEL_19;
    }

    v53 = 0;
LABEL_20:
    v54 = v41;
    v55 = v41 + *(v68 + 48);
    sub_21B254074(0, v52, v53);

    sub_21B23A9F4(0, v52, v53);
    v56 = sub_21B248CCC(v45, v46, v72, 0, v52, v53);
    *v55 = v84;
    *(v55 + 16) = v85;
    *(v55 + 24) = v56;
    *(v55 + 32) = v57;
    *(v55 + 40) = v58;
    v7 = v70;
    sub_21B261664(v70, &qword_27CD7EC48, &qword_21B354890);
    v43 = v73;
    v78 = v73;
    v60 = *(v73 + 2);
    v59 = *(v73 + 3);
    if (v60 >= v59 >> 1)
    {
      sub_21B2543A8((v59 > 1), v60 + 1, 1);
      v43 = v78;
    }

    ++v42;
    *(v43 + 2) = v60 + 1;
    result = sub_21B326B74(v54, &v43[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v60], &qword_27CD7F5F8, &qword_21B357460);
    v41 = v54;
    v39 = v64;
    if (v63 == v42)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21B31F80C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v74 = *a1;
  v75 = *(a1 + 2);
  v65 = *a1;
  *&v66 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3, &v76);
  v72 = *(a1 + 24);
  v4 = *(a1 + 40);
  v73 = v4;
  v5 = v72;
  sub_21B2A62E0(&v74, v69);
  sub_21B2615FC(&v72, v69, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v77 + 1);
  v7 = v78;
  __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
  (*(*(v7 + 8) + 160))(v69, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v76);
  v8 = v70;
  v9 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277CC9318])
  {
    sub_21B26F088(&v76);
    v26 = sub_21B318FFC();
    sub_21B261664(&v76, &qword_27CD7E6D8, &qword_21B3522F8);
  }

  else
  {
    v10 = v70;
    v11 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v68 = MEMORY[0x277D84F90];
      sub_21B2540C8(0, v12 & ~(v12 >> 63), 0);
      v13 = v68;
      v16 = v70;
      v15 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v70;
        v20 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        (*(*(v20 + 8) + 128))(&v76, v18, v19);
        v65 = v76;
        v66 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v21 = v64[0];
        }

        else
        {
          v21 = xmmword_21B351960;
          v64[0] = xmmword_21B351960;
        }

        v68 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          v61 = v21;
          sub_21B2540C8((v22 > 1), v23 + 1, 1);
          v21 = v61;
          v13 = v68;
        }

        *(v13 + 16) = v23 + 1;
        *(v13 + 16 * v23 + 32) = v21;
        v24 = v70;
        v25 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v18 = (*(*(v25 + 8) + 64))(v18, v24);
        --v14;
      }

      while (v14);
    }

    v26 = sub_21B3194F4(v13);
  }

  v27 = sub_21B2A7194(v26);

  v28 = *(v27 + 16);
  if (v28)
  {
    v68 = MEMORY[0x277D84F90];
    result = sub_21B2543E8(0, v28, 0);
    if (*(v27 + 16))
    {
      v29 = 0;
      v54 = v74;
      v55 = v27;
      v30 = v68;
      v31 = (v27 + 64);
      v56 = v28 - 1;
      v57 = *(v74 + 16);
      do
      {
        v60 = v29;
        v62 = v30;
        v32 = *(v31 - 3);
        v63 = *(v31 - 4);
        v33 = *(v31 - 2);
        v34 = *(v31 - 1);
        v35 = *v31;
        v59 = v33;
        if (v57)
        {
          sub_21B233A74(v54 + 32, &v65);
          v36 = v67;
          v58 = *(&v66 + 1);
          __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
          v37 = *(v36 + 8);
          v38 = *(v37 + 48);
          sub_21B2A62E0(&v74, v64);
          sub_21B2A62E0(&v74, v64);
          sub_21B260DAC(v63, v32);
          v39 = v34;
          v40 = v35;
          sub_21B254074(v33, v34, v35);
          v41 = v32;
          sub_21B260DAC(v63, v32);
          v42 = v38(v58, v37);
          result = sub_21B233960(&v65);
          if (v42 < 0)
          {
            goto LABEL_31;
          }

          if (v42)
          {
            v43 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v74, v64);
          sub_21B2A62E0(&v74, v64);
          sub_21B260DAC(v63, v32);
          v39 = v34;
          v40 = v35;
          sub_21B254074(v33, v34, v35);
          v41 = v32;
          sub_21B260DAC(v63, v32);
        }

        v42 = 0;
        v43 = 2;
LABEL_22:
        sub_21B254074(0, v42, v43);

        sub_21B23A9F4(0, v42, v43);
        v44 = v39;
        v45 = sub_21B248CCC(v59, v39, v40, 0, v42, v43);
        v47 = v46;
        v49 = v48;
        sub_21B260C58(v63, v41);
        result = sub_21B23A9F4(v59, v44, v40);
        *&v66 = v75;
        v65 = v74;
        v30 = v62;
        v68 = v62;
        v51 = *(v62 + 16);
        v50 = *(v62 + 24);
        if (v51 >= v50 >> 1)
        {
          result = sub_21B2543E8((v50 > 1), v51 + 1, 1);
          v30 = v68;
        }

        *(v30 + 16) = v51 + 1;
        v52 = v30 + (v51 << 6);
        *(v52 + 32) = v63;
        *(v52 + 40) = v41;
        v53 = v66;
        *(v52 + 48) = v65;
        *(v52 + 64) = v53;
        *(v52 + 72) = v45;
        *(v52 + 80) = v47;
        *(v52 + 88) = v49;
        if (v56 == v60)
        {

          goto LABEL_29;
        }

        v31 += 40;
        v29 = v60 + 1;
      }

      while ((v60 + 1) < *(v55 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v69);
  return v30;
}

uint64_t sub_21B31FE90(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v68 = *a1;
  v69 = *(a1 + 2);
  v59 = *a1;
  *&v60 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3, &v70);
  v66 = *(a1 + 24);
  v4 = *(a1 + 40);
  v67 = v4;
  v5 = v66;
  sub_21B2A62E0(&v68, v63);
  sub_21B2615FC(&v66, v63, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v71 + 1);
  v7 = v72;
  __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
  (*(*(v7 + 8) + 160))(v63, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v70);
  v8 = v64;
  v9 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D839B0])
  {
    sub_21B26E924(&v70);
    v26 = sub_21B3197F8();
    sub_21B261664(&v70, &qword_27CD7E6F0, &qword_21B352310);
  }

  else
  {
    v10 = v64;
    v11 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v58[0] = MEMORY[0x277D84F90];
      sub_21B2540E8(0, v12 & ~(v12 >> 63), 0);
      v13 = v58[0];
      v16 = v64;
      v15 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
        goto LABEL_30;
      }

      v18 = result;
      do
      {
        v20 = v64;
        v19 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        (*(*(v19 + 8) + 128))(&v70, v18, v20);
        v59 = v70;
        v60 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v21 = v62;
        }

        else
        {
          v21 = 2;
        }

        v58[0] = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21B2540E8((v22 > 1), v23 + 1, 1);
          v13 = v58[0];
        }

        *(v13 + 16) = v23 + 1;
        *(v13 + v23 + 32) = v21;
        v25 = v64;
        v24 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        v18 = (*(*(v24 + 8) + 64))(v18, v25);
        --v14;
      }

      while (v14);
    }

    v26 = sub_21B319C34(v13);
  }

  v27 = sub_21B2A72F4(v26);

  v28 = *(v27 + 16);
  if (!v28)
  {

    v30 = MEMORY[0x277D84F90];
LABEL_27:
    sub_21B25F000(v63);
    return v30;
  }

  v62 = MEMORY[0x277D84F90];
  result = sub_21B254428(0, v28, 0);
  v29 = 0;
  v30 = v62;
  v51 = v68;
  v52 = v28;
  v53 = v27;
  v54 = *(v68 + 16);
  v31 = (v27 + 56);
  while (v29 < *(v27 + 16))
  {
    v56 = v30;
    v55 = *(v31 - 24);
    v32 = *(v31 - 2);
    v33 = *(v31 - 1);
    v34 = *v31;
    if (!v54)
    {
      sub_21B2A62E0(&v68, v58);
      sub_21B2A62E0(&v68, v58);
      sub_21B254074(v32, v33, v34);
LABEL_21:
      v39 = 0;
      v40 = 2;
      goto LABEL_22;
    }

    sub_21B233A74(v51 + 32, &v59);
    v36 = *(&v60 + 1);
    v35 = v61;
    __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
    v37 = *(v35 + 8);
    v38 = *(v37 + 48);
    sub_21B2A62E0(&v68, v58);
    sub_21B2A62E0(&v68, v58);
    sub_21B254074(v32, v33, v34);
    v39 = v38(v36, v37);
    result = sub_21B233960(&v59);
    if (v39 < 0)
    {
      goto LABEL_29;
    }

    if (!v39)
    {
      goto LABEL_21;
    }

    v40 = 0;
LABEL_22:
    sub_21B254074(0, v39, v40);

    sub_21B23A9F4(0, v39, v40);
    v41 = sub_21B248CCC(v32, v33, v34, 0, v39, v40);
    v43 = v42;
    v45 = v44;
    result = sub_21B23A9F4(v32, v33, v34);
    v46 = v68;
    v47 = v69;
    v30 = v56;
    v62 = v56;
    v49 = *(v56 + 16);
    v48 = *(v56 + 24);
    if (v49 >= v48 >> 1)
    {
      v57 = v68;
      result = sub_21B254428((v48 > 1), v49 + 1, 1);
      v46 = v57;
      v30 = v62;
    }

    *(v30 + 16) = v49 + 1;
    v50 = v30 + 56 * v49;
    *(v50 + 32) = v55;
    ++v29;
    *(v50 + 40) = v46;
    *(v50 + 56) = v47;
    *(v50 + 64) = v41;
    *(v50 + 72) = v43;
    *(v50 + 80) = v45;
    v31 += 32;
    v27 = v53;
    if (v52 == v29)
    {

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21B32047C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v71 = *a1;
  v72 = *(a1 + 2);
  *v61 = *a1;
  *&v61[16] = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3, &v73);
  v69 = *(a1 + 24);
  v4 = *(a1 + 40);
  v70 = v4;
  v5 = v69;
  sub_21B2A62E0(&v71, v66);
  sub_21B2615FC(&v69, v66, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v74 + 1);
  v7 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  (*(*(v7 + 8) + 160))(v66, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v73);
  v8 = v67;
  v9 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D839F8])
  {
    sub_21B26E6AC(&v73);
    v29 = sub_21B319ECC();
    sub_21B261664(&v73, &qword_27CD7E6F8, &qword_21B352318);
  }

  else
  {
    v10 = v67;
    v11 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v60[0] = MEMORY[0x277D84F90];
      sub_21B254148(0, v12 & ~(v12 >> 63), 0);
      v13 = v60[0];
      v16 = v67;
      v15 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v67;
        v20 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(*(v20 + 8) + 128))(&v73, v18, v19);
        *v61 = v73;
        *&v61[16] = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = *&v63[0];
        }

        else
        {
          v22 = 0;
        }

        v60[0] = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          v28 = v21;
          sub_21B254148((v23 > 1), v24 + 1, 1);
          LOBYTE(v21) = v28;
          v13 = v60[0];
        }

        *(v13 + 16) = v24 + 1;
        v25 = v13 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21 ^ 1;
        v26 = v67;
        v27 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v18 = (*(*(v27 + 8) + 64))(v18, v26);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31A34C(v13);
  }

  v30 = sub_21B2A7448(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v65 = MEMORY[0x277D84F90];
    result = sub_21B254468(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v33 = v65;
      v53 = v71;
      v55 = v30;
      v56 = *(v71 + 16);
      v34 = (v30 + 64);
      v54 = v31 - 1;
      do
      {
        v59 = v33;
        v57 = *(v34 - 4);
        v58 = *(v34 - 24);
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        if (v56)
        {
          sub_21B233A74(v53 + 32, v61);
          v38 = *&v61[24];
          v39 = v62;
          __swift_project_boxed_opaque_existential_1(v61, *&v61[24]);
          v40 = *(v39 + 8);
          v41 = *(v40 + 48);
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
          v42 = v41(v38, v40);
          result = sub_21B233960(v61);
          if (v42 < 0)
          {
            goto LABEL_31;
          }

          if (v42)
          {
            v43 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
        }

        v42 = 0;
        v43 = 2;
LABEL_22:
        sub_21B254074(0, v42, v43);

        sub_21B23A9F4(0, v42, v43);
        v44 = sub_21B248CCC(v35, v36, v37, 0, v42, v43);
        v46 = v45;
        v48 = v47;
        result = sub_21B23A9F4(v35, v36, v37);
        *(&v63[1] + 7) = v72;
        *(v63 + 7) = v71;
        v64 = v58;
        *&v61[15] = *(v63 + 15);
        *v61 = v63[0];
        v33 = v59;
        v65 = v59;
        v50 = *(v59 + 16);
        v49 = *(v59 + 24);
        if (v50 >= v49 >> 1)
        {
          result = sub_21B254468((v49 > 1), v50 + 1, 1);
          v33 = v65;
        }

        *(v33 + 16) = v50 + 1;
        v51 = v33 + (v50 << 6);
        *(v51 + 32) = v57;
        *(v51 + 40) = v58;
        v52 = *v61;
        *(v51 + 56) = *&v61[15];
        *(v51 + 41) = v52;
        *(v51 + 72) = v44;
        *(v51 + 80) = v46;
        *(v51 + 88) = v48;
        if (v54 == v32)
        {

          goto LABEL_29;
        }

        v34 += 40;
        ++v32;
      }

      while (v32 < *(v55 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v66);
  return v33;
}

uint64_t sub_21B320AB8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v72 = *a1;
  v73 = *(a1 + 2);
  *v62 = *a1;
  *&v62[16] = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3, &v74);
  v70 = *(a1 + 24);
  v4 = *(a1 + 40);
  v71 = v4;
  v5 = v70;
  sub_21B2A62E0(&v72, v67);
  sub_21B2615FC(&v70, v67, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v75 + 1);
  v7 = v76;
  __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
  (*(*(v7 + 8) + 160))(v67, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v74);
  v8 = v68;
  v9 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D83A90])
  {
    sub_21B26E434(&v74);
    v29 = sub_21B31A614();
    sub_21B261664(&v74, &qword_27CD7E700, &qword_21B352320);
  }

  else
  {
    v10 = v68;
    v11 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      *v64 = MEMORY[0x277D84F90];
      sub_21B254128(0, v12 & ~(v12 >> 63), 0);
      v13 = *v64;
      v16 = v68;
      v15 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v68;
        v20 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        (*(*(v20 + 8) + 128))(&v74, v18, v19);
        *v62 = v74;
        *&v62[16] = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = v61[0];
        }

        else
        {
          v22 = 0;
        }

        *v64 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          v28 = v21;
          sub_21B254128((v23 > 1), v24 + 1, 1);
          LOBYTE(v21) = v28;
          v13 = *v64;
        }

        *(v13 + 16) = v24 + 1;
        v25 = v13 + 8 * v24;
        *(v25 + 32) = v22;
        *(v25 + 36) = v21 ^ 1;
        v26 = v68;
        v27 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        v18 = (*(*(v27 + 8) + 64))(v18, v26);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31AA98(v13);
  }

  v30 = sub_21B2A75A8(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v66 = MEMORY[0x277D84F90];
    result = sub_21B2544A8(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v33 = 0;
      v34 = v66;
      v54 = v72;
      v56 = v30;
      v57 = *(v72 + 16);
      v55 = v31 - 1;
      do
      {
        v60 = v34;
        v35 = v30 + v32;
        v58 = *(v30 + v32 + 32);
        v59 = *(v30 + v32 + 36);
        v36 = *(v30 + v32 + 40);
        v37 = *(v30 + v32 + 48);
        v38 = *(v35 + 56);
        if (v57)
        {
          sub_21B233A74(v54 + 32, v62);
          v39 = *&v62[24];
          v40 = v63;
          __swift_project_boxed_opaque_existential_1(v62, *&v62[24]);
          v41 = *(v40 + 8);
          v42 = *(v41 + 48);
          sub_21B2A62E0(&v72, v61);
          sub_21B2A62E0(&v72, v61);
          sub_21B254074(v36, v37, v38);
          v43 = v42(v39, v41);
          result = sub_21B233960(v62);
          if (v43 < 0)
          {
            goto LABEL_31;
          }

          if (v43)
          {
            v44 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v72, v61);
          sub_21B2A62E0(&v72, v61);
          sub_21B254074(v36, v37, v38);
        }

        v43 = 0;
        v44 = 2;
LABEL_22:
        sub_21B254074(0, v43, v44);

        sub_21B23A9F4(0, v43, v44);
        v45 = sub_21B248CCC(v36, v37, v38, 0, v43, v44);
        v47 = v46;
        v49 = v48;
        result = sub_21B23A9F4(v36, v37, v38);
        *&v64[19] = v73;
        *&v64[3] = v72;
        v65 = v59;
        *&v62[11] = *&v64[11];
        *v62 = *v64;
        v34 = v60;
        v66 = v60;
        v51 = *(v60 + 16);
        v50 = *(v60 + 24);
        if (v51 >= v50 >> 1)
        {
          result = sub_21B2544A8((v50 > 1), v51 + 1, 1);
          v34 = v66;
        }

        *(v34 + 16) = v51 + 1;
        v52 = v34 + 56 * v51;
        *(v52 + 32) = v58;
        *(v52 + 36) = v59;
        v53 = *v62;
        *(v52 + 48) = *&v62[11];
        *(v52 + 37) = v53;
        *(v52 + 64) = v45;
        *(v52 + 72) = v47;
        *(v52 + 80) = v49;
        v30 = v56;
        if (v55 == v33)
        {

          goto LABEL_29;
        }

        ++v33;
        v32 += 32;
      }

      while (v33 < *(v56 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v67);
  return v34;
}

uint64_t sub_21B3210F8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v76 = *a1;
  v77 = *(a1 + 2);
  v67 = *a1;
  *&v68 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3, &v78);
  v74 = *(a1 + 24);
  v4 = *(a1 + 40);
  v75 = v4;
  v5 = v74;
  sub_21B2A62E0(&v76, v71);
  sub_21B2615FC(&v74, v71, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v79 + 1);
  v7 = v80;
  __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
  (*(*(v7 + 8) + 160))(v71, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v78);
  v8 = v72;
  v9 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D837D0])
  {
    sub_21B26EB98(&v78);
    v29 = sub_21B31AD68();
    sub_21B261664(&v78, &qword_27CD7E6E8, &qword_21B352308);
  }

  else
  {
    v10 = v72;
    v11 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v70 = MEMORY[0x277D84F90];
      sub_21B254108(0, v12 & ~(v12 >> 63), 0);
      v13 = v70;
      v16 = v72;
      v15 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v20 = v72;
        v19 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        (*(*(v19 + 8) + 128))(&v78, v18, v20);
        v67 = v78;
        v68 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = v66[1];
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v23 = v66[0];
        }

        else
        {
          v23 = 0;
        }

        v70 = v13;
        v25 = *(v13 + 16);
        v24 = *(v13 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21B254108((v24 > 1), v25 + 1, 1);
          v13 = v70;
        }

        *(v13 + 16) = v25 + 1;
        v26 = v13 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
        v28 = v72;
        v27 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        v18 = (*(*(v27 + 8) + 64))(v18, v28);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31B1F0(v13);
  }

  v30 = sub_21B2A7708(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v70 = MEMORY[0x277D84F90];
    result = sub_21B2544E8(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v58 = v76;
      v60 = v30;
      v61 = *(v76 + 16);
      v33 = v70;
      v34 = (v30 + 64);
      v59 = v31 - 1;
      do
      {
        v64 = *(v34 - 4);
        v65 = v33;
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        v63 = *(v34 - 3);
        if (v61)
        {
          sub_21B233A74(v58 + 32, &v67);
          v62 = v36;
          v38 = v35;
          v40 = *(&v68 + 1);
          v39 = v69;
          __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
          v41 = *(v39 + 8);
          v42 = *(v41 + 48);
          sub_21B2A62E0(&v76, v66);

          sub_21B2A62E0(&v76, v66);

          v43 = v38;
          v44 = v38;
          v36 = v62;
          v45 = v37;
          sub_21B254074(v44, v62, v37);
          v46 = v42(v40, v41);
          result = sub_21B233960(&v67);
          if (v46 < 0)
          {
            goto LABEL_34;
          }

          if (v46)
          {
            v47 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          sub_21B2A62E0(&v76, v66);

          sub_21B2A62E0(&v76, v66);

          v43 = v35;
          v45 = v37;
          sub_21B254074(v35, v36, v37);
        }

        v46 = 0;
        v47 = 2;
LABEL_25:
        sub_21B254074(0, v46, v47);

        sub_21B23A9F4(0, v46, v47);
        v48 = v45;
        v49 = sub_21B248CCC(v43, v36, v45, 0, v46, v47);
        v51 = v50;
        v53 = v52;

        result = sub_21B23A9F4(v43, v36, v48);
        *&v68 = v77;
        v67 = v76;
        v33 = v65;
        v70 = v65;
        v55 = *(v65 + 16);
        v54 = *(v65 + 24);
        if (v55 >= v54 >> 1)
        {
          result = sub_21B2544E8((v54 > 1), v55 + 1, 1);
          v33 = v70;
        }

        *(v33 + 16) = v55 + 1;
        v56 = v33 + (v55 << 6);
        *(v56 + 32) = v64;
        *(v56 + 40) = v63;
        v57 = v68;
        *(v56 + 48) = v67;
        *(v56 + 64) = v57;
        *(v56 + 72) = v49;
        *(v56 + 80) = v51;
        *(v56 + 88) = v53;
        if (v59 == v32)
        {

          goto LABEL_32;
        }

        v34 += 40;
        ++v32;
      }

      while (v32 < *(v60 + 16));
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_32:
  sub_21B25F000(v71);
  return v33;
}

uint64_t sub_21B321754(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v71 = *a1;
  v72 = *(a1 + 2);
  *v61 = *a1;
  *&v61[16] = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3, &v73);
  v69 = *(a1 + 24);
  v4 = *(a1 + 40);
  v70 = v4;
  v5 = v69;
  sub_21B2A62E0(&v71, v66);
  sub_21B2615FC(&v69, v66, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v74 + 1);
  v7 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  (*(*(v7 + 8) + 160))(v66, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v73);
  v8 = v67;
  v9 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D83B88])
  {
    sub_21B26DF44(&v73);
    v29 = sub_21B31B4C4();
    sub_21B261664(&v73, &qword_27CD7E710, &qword_21B352330);
  }

  else
  {
    v10 = v67;
    v11 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v60[0] = MEMORY[0x277D84F90];
      sub_21B254168(0, v12 & ~(v12 >> 63), 0);
      v13 = v60[0];
      v16 = v67;
      v15 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v67;
        v20 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(*(v20 + 8) + 128))(&v73, v18, v19);
        *v61 = v73;
        *&v61[16] = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = *&v63[0];
        }

        else
        {
          v22 = 0;
        }

        v60[0] = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          v28 = v21;
          sub_21B254168((v23 > 1), v24 + 1, 1);
          LOBYTE(v21) = v28;
          v13 = v60[0];
        }

        *(v13 + 16) = v24 + 1;
        v25 = v13 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21 ^ 1;
        v26 = v67;
        v27 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v18 = (*(*(v27 + 8) + 64))(v18, v26);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31B944(v13);
  }

  v30 = sub_21B2A7868(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v65 = MEMORY[0x277D84F90];
    result = sub_21B254528(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v33 = v65;
      v53 = v71;
      v55 = v30;
      v56 = *(v71 + 16);
      v34 = (v30 + 64);
      v54 = v31 - 1;
      do
      {
        v59 = v33;
        v57 = *(v34 - 4);
        v58 = *(v34 - 24);
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        if (v56)
        {
          sub_21B233A74(v53 + 32, v61);
          v38 = *&v61[24];
          v39 = v62;
          __swift_project_boxed_opaque_existential_1(v61, *&v61[24]);
          v40 = *(v39 + 8);
          v41 = *(v40 + 48);
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
          v42 = v41(v38, v40);
          result = sub_21B233960(v61);
          if (v42 < 0)
          {
            goto LABEL_31;
          }

          if (v42)
          {
            v43 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
        }

        v42 = 0;
        v43 = 2;
LABEL_22:
        sub_21B254074(0, v42, v43);

        sub_21B23A9F4(0, v42, v43);
        v44 = sub_21B248CCC(v35, v36, v37, 0, v42, v43);
        v46 = v45;
        v48 = v47;
        result = sub_21B23A9F4(v35, v36, v37);
        *(&v63[1] + 7) = v72;
        *(v63 + 7) = v71;
        v64 = v58;
        *&v61[15] = *(v63 + 15);
        *v61 = v63[0];
        v33 = v59;
        v65 = v59;
        v50 = *(v59 + 16);
        v49 = *(v59 + 24);
        if (v50 >= v49 >> 1)
        {
          result = sub_21B254528((v49 > 1), v50 + 1, 1);
          v33 = v65;
        }

        *(v33 + 16) = v50 + 1;
        v51 = v33 + (v50 << 6);
        *(v51 + 32) = v57;
        *(v51 + 40) = v58;
        v52 = *v61;
        *(v51 + 56) = *&v61[15];
        *(v51 + 41) = v52;
        *(v51 + 72) = v44;
        *(v51 + 80) = v46;
        *(v51 + 88) = v48;
        if (v54 == v32)
        {

          goto LABEL_29;
        }

        v34 += 40;
        ++v32;
      }

      while (v32 < *(v55 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v66);
  return v33;
}

uint64_t DataFrame.grouped(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v29 = *v3;
  v30 = v7;
  v31 = v9;
  DataFrame.subscript.getter(a1, a2, v26);
  v11 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(*(v10 + 8) + 80))(v11);
  sub_21B233960(v26);
  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5D0, &qword_21B357450);
    a3[4] = sub_21B278F78(&qword_27CD7F5D8, &qword_27CD7F5D0, &qword_21B357450, &protocol conformance descriptor for RowGrouping<A>);
    v12 = sub_21B31E820(v8, v7, v9, a1, a2);
LABEL_15:
    *a3 = v12;
    a3[1] = a1;
    a3[2] = a2;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5C0, &qword_21B357448);
    a3[4] = sub_21B278F78(&qword_27CD7F5C8, &qword_27CD7F5C0, &qword_21B357448, &protocol conformance descriptor for RowGrouping<A>);
    v12 = sub_21B31E13C(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5B0, &qword_21B357440);
    a3[4] = sub_21B278F78(&qword_27CD7F5B8, &qword_27CD7F5B0, &qword_21B357440, &protocol conformance descriptor for RowGrouping<A>);
    v12 = sub_21B31DA40(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5A0, &qword_21B357438);
    a3[4] = sub_21B278F78(&qword_27CD7F5A8, &qword_27CD7F5A0, &qword_21B357438, &protocol conformance descriptor for RowGrouping<A>);
    v12 = sub_21B31D344(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F590, &qword_21B357430);
    a3[4] = sub_21B278F78(&qword_27CD7F598, &qword_27CD7F590, &qword_21B357430, &protocol conformance descriptor for RowGrouping<A>);
    v12 = sub_21B31CC88(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F580, &qword_21B357428);
    a3[4] = sub_21B278F78(&qword_27CD7F588, &qword_27CD7F580, &qword_21B357428, &protocol conformance descriptor for RowGrouping<A>);
    v12 = sub_21B31C578(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F570, &qword_21B357420);
    a3[4] = sub_21B278F78(&qword_27CD7F578, &qword_27CD7F570, &qword_21B357420, &protocol conformance descriptor for RowGrouping<A>);
    v12 = sub_21B31BC0C(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  *&v32 = v8;
  *(&v32 + 1) = v7;
  *&v33 = v9;

  v14 = sub_21B23AC94(a1, a2);

  result = swift_allocObject();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v8 + 16))
  {
    v15 = result;
    sub_21B233A74(v8 + 40 * v14 + 32, &v32);
    v17 = *(&v33 + 1);
    v16 = v34;
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    (*(*(v16 + 8) + 88))(v17);
    sub_21B233960(&v32);
    v18 = v15;
    v25 = v15;
    v20 = *(v15 + 40);
    v19 = *(v15 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v18 + 16, v20);
    v24 = *(v19 + 16);

    v21 = v24(a1, a2, v20, v19);
    MEMORY[0x28223BE20](v21);

    sub_21B3259BC(v8, v7, v9, sub_21B326C70, v25, sub_21B326C6C, 0, sub_21B326C3C, &v32);

    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F560, &qword_21B357418);
    a3[4] = sub_21B278F78(&qword_27CD7F568, &qword_27CD7F560, &qword_21B357418, &unk_21B3584F0);
    v22 = swift_allocObject();
    *a3 = v22;

    v23 = v33;
    *(v22 + 16) = v32;
    *(v22 + 32) = v23;
    *(v22 + 48) = v34;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.Slice.grouped(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *&v44[9] = *(v3 + 25);
  v7 = *v3;
  *v44 = v3[1];
  v43 = *v3;
  v45 = *v3;
  v46 = *(v3 + 2);
  v8 = *&v44[8];
  v9 = *&v44[16];
  v10 = v44[24];
  v36 = v7;
  *&v37 = *(v3 + 2);
  sub_21B2A62E0(&v45, v40);
  v11 = sub_21B23AC94(a1, a2);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = v45;
  if (v11 >= *(v45 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = a3;
  v14 = a2;
  v15 = a1;
  sub_21B233A74(v45 + 32 + 40 * v11, &v36);
  v16 = *(&v37 + 1);
  v17 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(*(v17 + 8) + 160))(v40, v8, v9, v10, v16);
  sub_21B233960(&v36);
  v19 = v41;
  v18 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(*(v18 + 8) + 80))(v19);
  sub_21B25F000(v40);
  if (!swift_dynamicCastMetatype())
  {
    v21 = v15;
    if (swift_dynamicCastMetatype())
    {
      v20 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5C0, &qword_21B357448);
      a3[4] = sub_21B278F78(&qword_27CD7F5C8, &qword_27CD7F5C0, &qword_21B357448, &protocol conformance descriptor for RowGrouping<A>);
      *a3 = sub_21B3210F8(&v43, v15, v14);
      a3[1] = v15;
      goto LABEL_7;
    }

    v22 = v14;
    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5B0, &qword_21B357440);
      a3[4] = sub_21B278F78(&qword_27CD7F5B8, &qword_27CD7F5B0, &qword_21B357440, &protocol conformance descriptor for RowGrouping<A>);
      v24 = sub_21B320AB8(&v43, v21, v14);
LABEL_20:
      *v23 = v24;
      v23[1] = v21;
      v23[2] = v14;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5A0, &qword_21B357438);
      a3[4] = sub_21B278F78(&qword_27CD7F5A8, &qword_27CD7F5A0, &qword_21B357438, &protocol conformance descriptor for RowGrouping<A>);
      v24 = sub_21B32047C(&v43, v21, v14);
      goto LABEL_20;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F590, &qword_21B357430);
      a3[4] = sub_21B278F78(&qword_27CD7F598, &qword_27CD7F590, &qword_21B357430, &protocol conformance descriptor for RowGrouping<A>);
      v24 = sub_21B31FE90(&v43, v21, v14);
      goto LABEL_20;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F580, &qword_21B357428);
      a3[4] = sub_21B278F78(&qword_27CD7F588, &qword_27CD7F580, &qword_21B357428, &protocol conformance descriptor for RowGrouping<A>);
      v24 = sub_21B31F80C(&v43, v21, v14);
      goto LABEL_20;
    }

    sub_21B34A834();
    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F570, &qword_21B357420);
      a3[4] = sub_21B278F78(&qword_27CD7F578, &qword_27CD7F570, &qword_21B357420, &protocol conformance descriptor for RowGrouping<A>);
      v24 = sub_21B31EF1C(&v43, v21, v14);
      goto LABEL_20;
    }

    v36 = v45;
    *&v37 = v46;
    sub_21B2A62E0(&v45, v39);
    v25 = sub_21B23AC94(v21, v14);

    result = swift_allocObject();
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (v25 < *(v13 + 16))
      {
        v26 = result;
        sub_21B233A74(v13 + 32 + 40 * v25, &v36);
        v27 = *(&v37 + 1);
        v28 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(*(v28 + 8) + 88))(v27);
        sub_21B233960(&v36);
        v29 = *(v26 + 40);
        v30 = *(v26 + 48);
        __swift_mutable_project_boxed_opaque_existential_1(v26 + 16, v29);
        v31 = *(v30 + 16);

        v32 = v31(v21, v22, v29, v30);
        MEMORY[0x28223BE20](v32);
        sub_21B2A6284(&v43, &v36);

        sub_21B326224(&v43, sub_21B3261EC, v26, sub_21B326C6C, 0, sub_21B326208, &v36);
        sub_21B2A63AC(&v43);
        v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F560, &qword_21B357418);
        v35[4] = sub_21B278F78(&qword_27CD7F568, &qword_27CD7F560, &qword_21B357418, &unk_21B3584F0);
        v33 = swift_allocObject();
        *v35 = v33;

        v34 = v37;
        *(v33 + 16) = v36;
        *(v33 + 32) = v34;
        *(v33 + 48) = v38;
        return result;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v20 = a3;
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5D0, &qword_21B357450);
  a3[4] = sub_21B278F78(&qword_27CD7F5D8, &qword_27CD7F5D0, &qword_21B357450, &protocol conformance descriptor for RowGrouping<A>);
  *a3 = sub_21B321754(&v43, v15, v14);
  a3[1] = v15;
LABEL_7:
  v20[2] = v14;
}